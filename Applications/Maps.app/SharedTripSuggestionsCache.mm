@interface SharedTripSuggestionsCache
+ (id)sharedInstance;
- (BOOL)isRefreshing;
- (NSArray)suggestedContacts;
- (NSDictionary)recipientsByHandle;
- (SharedTripSuggestionsCache)init;
- (id)suggestions;
- (void)_prepareForSuggestionsIfNeeded;
- (void)_provideAbandonmentFeedback;
- (void)_provideFeedbackForContact:(id)contact;
- (void)_refreshFreshSuggestions:(id)suggestions;
- (void)addObserver:(id)observer;
- (void)provideAbandonmentFeedback;
- (void)provideFeedbackForContact:(id)contact;
- (void)removeObserver:(id)observer;
- (void)requestFreshSuggestionsWithSeedContacts:(id)contacts;
@end

@implementation SharedTripSuggestionsCache

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FF1A38;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195FA18 != -1)
  {
    dispatch_once(&qword_10195FA18, block);
  }

  v2 = qword_10195FA10;

  return v2;
}

- (NSArray)suggestedContacts
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_suggestedContacts;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_prepareForSuggestionsIfNeeded
{
  dispatch_assert_queue_V2(self->_requestQueue);
  if (!self->_suggester || !self->_predictionContext)
  {
    v3 = sub_1000946AC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsCache instantiating suggester and context", v8, 2u);
    }

    v4 = objc_alloc_init(_PSMapsSuggester);
    suggester = self->_suggester;
    self->_suggester = v4;

    v6 = objc_alloc_init(_PSMapsPredictionContext);
    predictionContext = self->_predictionContext;
    self->_predictionContext = v6;

    [(_PSMapsPredictionContext *)self->_predictionContext setBundleID:MapsAppBundleId];
  }
}

- (BOOL)isRefreshing
{
  os_unfair_lock_lock(&self->_lock);
  requestInProgress = self->_requestInProgress;
  os_unfair_lock_unlock(&self->_lock);
  return requestInProgress;
}

- (void)_provideAbandonmentFeedback
{
  dispatch_assert_queue_V2(self->_requestQueue);
  v3 = sub_1000946AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsCache providing feedback: abandonment", v6, 2u);
  }

  v4 = +[_PSMapsFeedbackAction abandonment];
  v5 = [[_PSMapsFeedback alloc] initWithFeedbackAction:v4 predictionContext:self->_predictionContext suggestions:self->_suggestions];
  [(_PSMapsSuggester *)self->_suggester provideMapsFeedback:v5];
}

- (void)provideAbandonmentFeedback
{
  dispatch_assert_queue_not_V2(self->_requestQueue);
  objc_initWeak(&location, self);
  requestQueue = self->_requestQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100FF0844;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(requestQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_provideFeedbackForContact:(id)contact
{
  contactCopy = contact;
  dispatch_assert_queue_V2(self->_requestQueue);
  recipientsByHandle = self->_recipientsByHandle;
  handleForIDS = [contactCopy handleForIDS];
  v7 = [(NSDictionary *)recipientsByHandle objectForKeyedSubscript:handleForIDS];

  v8 = sub_1000946AC();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsCache providing feedback: engagement with suggestion %@", &v16, 0xCu);
    }

    contact = [v7 contact];
    identifier = [contact identifier];
    handle = [v7 handle];
    v13 = [_PSMapsFeedbackAction engagementWithSuggestionWithContactIdentifier:identifier handle:handle];
  }

  else
  {
    if (v9)
    {
      v16 = 138412290;
      v17 = contactCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsCache providing feedback: engagement with non suggestion %@", &v16, 0xCu);
    }

    contact = [contactCopy contact];
    identifier = [contact identifier];
    handle = [contactCopy stringValue];
    v13 = [_PSMapsFeedbackAction engagementWithNonSuggestionWithContactIdentifier:identifier handle:handle];
  }

  v14 = v13;

  v15 = [[_PSMapsFeedback alloc] initWithFeedbackAction:v14 predictionContext:self->_predictionContext suggestions:self->_suggestions];
  [(_PSMapsSuggester *)self->_suggester provideMapsFeedback:v15];
}

- (void)provideFeedbackForContact:(id)contact
{
  contactCopy = contact;
  dispatch_assert_queue_not_V2(self->_requestQueue);
  objc_initWeak(&location, self);
  requestQueue = self->_requestQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FF0B70;
  block[3] = &unk_101661340;
  objc_copyWeak(&v9, &location);
  v8 = contactCopy;
  v6 = contactCopy;
  dispatch_async(requestQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_refreshFreshSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  dispatch_assert_queue_V2(self->_requestQueue);
  [(GEOObserverHashTable *)self->_observers suggestionsWillUpdateInCache:self];
  [(SharedTripSuggestionsCache *)self _prepareForSuggestionsIfNeeded];
  v5 = +[NSDate date];
  [(_PSMapsPredictionContext *)self->_predictionContext setSuggestionDate:v5];

  v6 = sub_100021DB0(suggestionsCopy, &stru_101661210);
  v56 = suggestionsCopy;
  if (suggestionsCopy)
  {
    [(_PSMapsPredictionContext *)self->_predictionContext setSeedContactIdentifiers:v6];
  }

  v57 = v6;
  v59 = objc_alloc_init(NSMutableDictionary);
  v58 = objc_alloc_init(NSMutableArray);
  UInteger = GEOConfigGetUInteger();
  v8 = sub_1000946AC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    seedContactIdentifiers = [(_PSMapsPredictionContext *)self->_predictionContext seedContactIdentifiers];
    *buf = 134218242;
    v68 = UInteger;
    v69 = 2112;
    v70 = seedContactIdentifiers;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "SharedTripSuggestionsCache starting to fetch max %lu suggestions with seed contacts: %@", buf, 0x16u);
  }

  selfCopy = self;
  v10 = [(_PSMapsSuggester *)self->_suggester suggestionsFromContext:self->_predictionContext maxSuggestions:UInteger];
  v11 = sub_1000946AC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 count];
    *buf = 134218242;
    v68 = v12;
    v69 = 2112;
    v70 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "SharedTripSuggestionsCache %lu fetched suggestions: %@", buf, 0x16u);
  }

  v13 = +[MSPSharedTripService sharedInstance];
  sharingIdentity = [v13 sharingIdentity];
  aliases = [sharingIdentity aliases];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v10;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v63;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v63 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v62 + 1) + 8 * i);
        groupName = [v21 groupName];

        if (!groupName)
        {
          recipients = [v21 recipients];
          firstObject = [recipients firstObject];

          handle = [firstObject handle];
          v26 = [aliases containsObject:handle];

          if ((v26 & 1) == 0)
          {
            handle2 = [firstObject handle];

            if (handle2)
            {
              v28 = [MSPSharedTripContact alloc];
              contact = [firstObject contact];
              handle3 = [firstObject handle];
              firstObject2 = [v28 initWithContact:contact handle:handle3];

              goto LABEL_23;
            }

            v60[0] = _NSConcreteStackBlock;
            v60[1] = 3221225472;
            v60[2] = sub_100FF12E4;
            v60[3] = &unk_101661238;
            v32 = firstObject;
            v61 = v32;
            v33 = [v57 indexOfObjectWithOptions:2 passingTest:v60];
            if (v33 == 0x7FFFFFFFFFFFFFFFLL)
            {
              contact2 = [v32 contact];
              v35 = [MSPSharedTripContact contactsFromCNContact:contact2];
              firstObject2 = [v35 firstObject];

              v36 = sub_1000946AC();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v68 = firstObject2;
                v37 = v36;
                v38 = "Recipient suggestion did not come with a handle; using first handle in contact page: %@";
                goto LABEL_21;
              }
            }

            else
            {
              firstObject2 = [v56 objectAtIndex:v33];
              v36 = sub_1000946AC();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v68 = firstObject2;
                v37 = v36;
                v38 = "Recipient suggestion did not come with a handle; using last seeded contact: %@";
LABEL_21:
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, v38, buf, 0xCu);
              }
            }

            contact = v61;
LABEL_23:

            if (firstObject2)
            {
              [v58 addObject:firstObject2];
              handleForIDS = [firstObject2 handleForIDS];
              [v59 setObject:firstObject forKeyedSubscript:handleForIDS];
            }
          }

          continue;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v18);
  }

  v40 = sub_1000946AC();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v68 = v58;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "SharedTripSuggestionsCache resolved suggested contacts: %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  v41 = +[NSDate date];
  lastFreshRequestDate = selfCopy->_lastFreshRequestDate;
  selfCopy->_lastFreshRequestDate = v41;

  objc_storeStrong(&selfCopy->_suggestions, obj);
  v43 = [v58 copy];
  suggestedContacts = selfCopy->_suggestedContacts;
  selfCopy->_suggestedContacts = v43;

  v45 = [v59 copy];
  recipientsByHandle = selfCopy->_recipientsByHandle;
  selfCopy->_recipientsByHandle = v45;

  selfCopy->_requestInProgress = 0;
  os_unfair_lock_unlock(&selfCopy->_lock);
  v47 = v58;
  v48 = GEOConfigGetUInteger();
  v49 = v47;
  if ([v47 count] > v48)
  {
    v49 = [v47 subarrayWithRange:{0, v48}];
  }

  v50 = sub_1000946AC();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    v51 = [v49 count];
    v52 = [v47 count];
    *buf = 134218240;
    v68 = v51;
    v69 = 2048;
    v70 = v52;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "SharedTripSuggestionsCache will request capabilities for %lu/%lu fetched suggestions", buf, 0x16u);
  }

  v53 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
  [v53 requestCapabilityLevelsForContacts:v49];

  [(GEOObserverHashTable *)selfCopy->_observers suggestionsDidUpdateInCache:selfCopy];
}

- (void)requestFreshSuggestionsWithSeedContacts:(id)contacts
{
  contactsCopy = contacts;
  os_unfair_lock_lock(&self->_lock);
  requestInProgress = self->_requestInProgress;
  v6 = self->_lastFreshRequestDate;
  os_unfair_lock_unlock(&self->_lock);
  if (!requestInProgress)
  {
    if (v6 && ([(NSDate *)v6 timeIntervalSinceNow], v8 = fabs(v7), GEOConfigGetDouble(), v8 < v9))
    {
      v11 = v9;
      v12 = sub_1000946AC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        location = 134217984;
        location_4 = v11 - v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsCache ignoring request for fresh suggestions, %fs until permitted", &location, 0xCu);
      }
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      self->_requestInProgress = 1;
      os_unfair_lock_unlock(&self->_lock);
      objc_initWeak(&location, self);
      requestQueue = self->_requestQueue;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100FF1560;
      v13[3] = &unk_101661340;
      objc_copyWeak(&v15, &location);
      v14 = contactsCopy;
      dispatch_async(requestQueue, v13);

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = sub_1000946AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = observerCopy;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsCache remove observer: %@", buf, 0xCu);
  }

  [(GEOObserverHashTable *)self->_observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = sub_1000946AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = observerCopy;
    if (!v6)
    {
      v11 = @"<nil>";
      goto LABEL_10;
    }

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 performSelector:"accessibilityIdentifier"];
      v10 = v9;
      if (v9 && ![v9 isEqualToString:v8])
      {
        v11 = [NSString stringWithFormat:@"%@<%p, %@>", v8, v6, v10];

        goto LABEL_8;
      }
    }

    v11 = [NSString stringWithFormat:@"%@<%p>", v8, v6];
LABEL_8:

LABEL_10:
    *buf = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsCache add observer: %@", buf, 0xCu);
  }

  [(GEOObserverHashTable *)self->_observers registerObserver:observerCopy];
}

- (NSDictionary)recipientsByHandle
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_recipientsByHandle;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)suggestions
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_suggestions;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (SharedTripSuggestionsCache)init
{
  v10.receiver = self;
  v10.super_class = SharedTripSuggestionsCache;
  v2 = [(SharedTripSuggestionsCache *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.Maps.SharedTrip.SuggestionsCache.Requests", v4);
    requestQueue = v3->_requestQueue;
    v3->_requestQueue = v5;

    v7 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___SharedTripSuggestionsCacheObserver queue:&_dispatch_main_q];
    observers = v3->_observers;
    v3->_observers = v7;
  }

  return v3;
}

@end