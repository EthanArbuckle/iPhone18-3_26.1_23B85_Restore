@interface HomePhotoLookupDataProvider
- (GEOObserverHashTable)observers;
- (HomePhotoLookupDataProvider)initWithSuggestionsDataProvider:(id)provider;
- (id)_lookupKeyForEntry:(id)entry;
- (int64_t)resultForSuggestionsEntry:(id)entry;
- (void)_performLookups;
- (void)_pruneOldResults;
- (void)_setResult:(id)result forEntry:(id)entry;
- (void)_startLookupForEntry:(id)entry;
- (void)_updateResults:(id)results notifyObservers:(BOOL)observers;
- (void)setActive:(BOOL)active;
@end

@implementation HomePhotoLookupDataProvider

- (void)_performLookups
{
  if (self->_active)
  {
    suggestions = [(SuggestionsDataProvider *)self->_suggestionsDataProvider suggestions];
    v4 = +[NSMutableDictionary dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = suggestions;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [(HomePhotoLookupDataProvider *)self _lookupKeyForEntry:v10];
          if (v11)
          {
            [v4 setObject:v10 forKeyedSubscript:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    allKeys = [(NSDictionary *)self->_ratingRequestSuggestions allKeys];
    v13 = [NSSet setWithArray:allKeys];

    allKeys2 = [v4 allKeys];
    v15 = [NSSet setWithArray:allKeys2];

    if (v13 != v15 && ([v13 isEqual:v15] & 1) == 0)
    {
      objc_storeStrong(&self->_ratingRequestSuggestions, v4);
      v16 = [NSMutableSet setWithSet:v15];
      [v16 minusSet:v13];
      ratingRequestSuggestions = self->_ratingRequestSuggestions;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1008D1B8C;
      v18[3] = &unk_10162DA58;
      v18[4] = self;
      [(NSDictionary *)ratingRequestSuggestions enumerateKeysAndObjectsUsingBlock:v18];
      [(HomePhotoLookupDataProvider *)self _pruneOldResults];
    }
  }
}

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)_updateResults:(id)results notifyObservers:(BOOL)observers
{
  observersCopy = observers;
  resultsCopy = results;
  v7 = resultsCopy;
  if (self->_results != resultsCopy)
  {
    v11 = resultsCopy;
    v8 = [(NSDictionary *)resultsCopy isEqual:?];
    v7 = v11;
    if ((v8 & 1) == 0)
    {
      v9 = [(NSDictionary *)v11 copy];
      results = self->_results;
      self->_results = v9;

      v7 = v11;
      if (self->_active && observersCopy)
      {
        [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
        v7 = v11;
      }
    }
  }
}

- (void)_pruneOldResults
{
  allKeys = [(NSDictionary *)self->_results allKeys];
  v4 = [NSMutableSet setWithArray:allKeys];

  allKeys2 = [(NSDictionary *)self->_ratingRequestSuggestions allKeys];
  v6 = [NSSet setWithArray:allKeys2];
  [v4 minusSet:v6];

  if ([v4 count])
  {
    v7 = [NSMutableDictionary dictionaryWithDictionary:self->_results];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 removeObjectForKey:{*(*(&v15 + 1) + 8 * v12), v15}];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v13 = [v7 copy];
    results = self->_results;
    self->_results = v13;
  }
}

- (void)_setResult:(id)result forEntry:(id)entry
{
  resultCopy = result;
  entryCopy = entry;
  v9 = sub_1000410AC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v17 = 138413058;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = resultCopy;
    v23 = 2112;
    v24 = entryCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ %@, result = %@, entry = %@", &v17, 0x2Au);
  }

  v13 = [(HomePhotoLookupDataProvider *)self _lookupKeyForEntry:entryCopy];
  if (v13)
  {
    if ([(NSMutableSet *)self->_inProgressLookups containsObject:v13])
    {
      v14 = [(NSDictionary *)self->_results valueForKey:v13];

      if (!v14)
      {
        [(NSMutableSet *)self->_inProgressLookups removeObject:v13];
        v15 = [(NSDictionary *)self->_ratingRequestSuggestions objectForKeyedSubscript:v13];

        if (v15)
        {
          v16 = [NSMutableDictionary dictionaryWithDictionary:self->_results];
          [v16 setObject:resultCopy forKeyedSubscript:v13];
          [(HomePhotoLookupDataProvider *)self _updateResults:v16 notifyObservers:1];
        }
      }
    }
  }
}

- (void)_startLookupForEntry:(id)entry
{
  entryCopy = entry;
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = NSStringFromSelector(a2);
    *buf = 138412802;
    v28 = v7;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = entryCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@%@", buf, 0x20u);
  }

  v10 = [(HomePhotoLookupDataProvider *)self _lookupKeyForEntry:entryCopy];
  if (v10)
  {
    if (([(NSMutableSet *)self->_inProgressLookups containsObject:v10]& 1) == 0)
    {
      v11 = [(NSDictionary *)self->_results valueForKey:v10];
      v12 = v11 == 0;

      if (v12)
      {
        [(NSMutableSet *)self->_inProgressLookups addObject:v10];
        objc_initWeak(buf, self);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1008D1860;
        v24[3] = &unk_10162DA80;
        objc_copyWeak(&v26, buf);
        v13 = entryCopy;
        v25 = v13;
        v14 = objc_retainBlock(v24);
        mKMapItem = [v13 MKMapItem];
        if (mKMapItem)
        {
          v16 = MapsSuggestionsResourceDepotForMapsProcess();
          oneUser = [v16 oneUser];
          _geoMapItem = [mKMapItem _geoMapItem];
          v21[0] = _NSConcreteStackBlock;
          v21[1] = 3221225472;
          v21[2] = sub_1008D192C;
          v21[3] = &unk_10162DAA8;
          v23 = v14;
          v22 = mKMapItem;
          [oneUser hasVisitedMapItem:_geoMapItem handler:v21];

          v19 = v23;
        }

        else
        {
          v19 = [NSError errorWithDomain:@"HomePhotoLookupDataProviderErrorDomain" code:1 userInfo:0];
          v20 = [Result resultWithError:v19];
          (v14[2])(v14, v20);
        }

        objc_destroyWeak(&v26);
        objc_destroyWeak(buf);
      }
    }
  }
}

- (id)_lookupKeyForEntry:(id)entry
{
  entryCopy = entry;
  if (+[RatingRequestHomeAvailability shouldShowRatingRequestSuggestionsOnProactiveTray](RatingRequestHomeAvailability, "shouldShowRatingRequestSuggestionsOnProactiveTray") && ([entryCopy type] == 21 || GEOConfigGetBOOL()))
  {
    mKMapItem = [entryCopy MKMapItem];
    if (mKMapItem && [MKPOIEnrichmentAvailibility shouldShowPhotosCallToActionForMapItem:mKMapItem])
    {
      uniqueIdentifier = [entryCopy uniqueIdentifier];
    }

    else
    {
      uniqueIdentifier = 0;
    }
  }

  else
  {
    uniqueIdentifier = 0;
  }

  return uniqueIdentifier;
}

- (int64_t)resultForSuggestionsEntry:(id)entry
{
  entryCopy = entry;
  v5 = [(HomePhotoLookupDataProvider *)self _lookupKeyForEntry:entryCopy];
  if (v5)
  {
    if (([(NSMutableSet *)self->_inProgressLookups containsObject:v5]& 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      v7 = [(NSDictionary *)self->_results objectForKeyedSubscript:v5];
      v8 = v7;
      if (v7)
      {
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 0;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1008D1E68;
        v11[3] = &unk_10162DA30;
        v11[4] = &v12;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1008D1EA8;
        v10[3] = &unk_10165E590;
        v10[4] = &v12;
        [v7 withValue:v11 orError:v10];
        v6 = v13[3];
        _Block_object_dispose(&v12, 8);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      [(HomePhotoLookupDataProvider *)self _performLookups];
    }
  }
}

- (HomePhotoLookupDataProvider)initWithSuggestionsDataProvider:(id)provider
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = HomePhotoLookupDataProvider;
  v6 = [(HomePhotoLookupDataProvider *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestionsDataProvider, provider);
    observers = [(SuggestionsDataProvider *)v7->_suggestionsDataProvider observers];
    [observers registerObserver:v7];

    ratingRequestSuggestions = v7->_ratingRequestSuggestions;
    v7->_ratingRequestSuggestions = &__NSDictionary0__struct;

    v10 = +[NSMutableSet set];
    inProgressLookups = v7->_inProgressLookups;
    v7->_inProgressLookups = v10;

    results = v7->_results;
    v7->_results = &__NSDictionary0__struct;
  }

  return v7;
}

@end