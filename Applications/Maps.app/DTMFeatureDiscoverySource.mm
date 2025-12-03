@interface DTMFeatureDiscoverySource
+ (void)resetAllPreviousDismissals;
- (BOOL)_userPreviouslyDismissedTransportType:(int64_t)type;
- (BOOL)isAvailable;
- (DTMFeatureDiscoverySource)initWithPriority:(int64_t)priority delegate:(id)delegate;
- (FeatureDiscoveryModel)model;
- (FeatureDiscoverySourceDelegate)delegate;
- (id)_bestModelForCurrentState;
- (int)_targetForTransportType:(int64_t)type;
- (int64_t)_fetchRepeatedRecentTransportType;
- (int64_t)_performRemovalForTransportType;
- (void)_didDisplayModelForPreference:(int64_t)preference;
- (void)_dismiss;
- (void)_performDTMActionWithPreference:(int64_t)preference;
- (void)_recordDismissalForTransportType:(int64_t)type;
- (void)_reloadAvailability;
- (void)setTransportType:(int64_t)type routeCollection:(id)collection;
@end

@implementation DTMFeatureDiscoverySource

- (FeatureDiscoverySourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int)_targetForTransportType:(int64_t)type
{
  if ((type - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return type + 300;
  }
}

- (void)_recordDismissalForTransportType:(int64_t)type
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"PreferDTMDismissedTransportTypes"];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  v7 = [v6 mutableCopy];
  v8 = type - 1;
  if ((type - 1) >= 5)
  {
    v13 = sub_10006250C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v15 = @"Bicycle";
      if (!type)
      {
        v15 = @"Undefined";
      }

      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Will not record dimissal, transport type resolved to UNKNOWN (%@)", &v16, 0xCu);
    }
  }

  else
  {
    v9 = dword_101216100[v8];
    v10 = sub_10006250C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(&off_101629F78 + v8);
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Recording user dismissal for DTM switch (%@)", &v16, 0xCu);
    }

    v12 = [NSNumber numberWithInt:v9];
    [v7 addObject:v12];

    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [v7 copy];
    [v13 setObject:v14 forKey:@"PreferDTMDismissedTransportTypes"];
  }
}

- (BOOL)_userPreviouslyDismissedTransportType:(int64_t)type
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 objectForKey:@"PreferDTMDismissedTransportTypes"];

  if ((type - 1) > 4)
  {
    v6 = 4;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v6 = dword_101216100[type - 1];
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = [NSNumber numberWithInt:v6];
  v8 = [v5 containsObject:v7];

LABEL_6:
  return v8;
}

- (int64_t)_performRemovalForTransportType
{
  os_unfair_lock_lock(&self->_lock);
  self->_dismissed = 1;
  transportType = self->_transportType;
  os_unfair_lock_unlock(&self->_lock);
  [(DTMFeatureDiscoverySource *)self _reloadAvailability];
  return transportType;
}

- (void)_dismiss
{
  v3 = sub_10006250C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "User dismissed suggestion to change DTM", v4, 2u);
  }

  [(DTMFeatureDiscoverySource *)self _recordDismissalForTransportType:[(DTMFeatureDiscoverySource *)self _performRemovalForTransportType]];
}

- (void)_performDTMActionWithPreference:(int64_t)preference
{
  v5 = sub_10006250C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    preferenceCopy = preference;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "User accepted suggestion, changing DTM to %ld", &v8, 0xCu);
  }

  if (preference <= 4)
  {
    v6 = dword_101213558[preference];
    v7 = +[MKMapService sharedService];
    [v7 captureUserAction:v6 onTarget:-[DTMFeatureDiscoverySource _targetForTransportType:](self eventValue:{"_targetForTransportType:", self->_transportType), 0}];
  }

  GEOSetUserTransportTypePreference();
  [(DTMFeatureDiscoverySource *)self _performRemovalForTransportType];
}

- (void)_didDisplayModelForPreference:(int64_t)preference
{
  v5 = sub_10006250C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Suggestion was displayed to change DTM", v8, 2u);
  }

  if (preference <= 4)
  {
    v6 = dword_101213544[preference];
    v7 = +[MKMapService sharedService];
    [v7 captureUserAction:v6 onTarget:-[DTMFeatureDiscoverySource _targetForTransportType:](self eventValue:{"_targetForTransportType:", self->_transportType), 0}];
  }
}

- (void)_reloadAvailability
{
  _bestModelForCurrentState = [(DTMFeatureDiscoverySource *)self _bestModelForCurrentState];
  os_unfair_lock_lock(&self->_lock);
  model = self->_model;
  v5 = _bestModelForCurrentState;
  v6 = v5;
  if (v5 | model)
  {
    v7 = [v5 isEqual:model];
  }

  else
  {
    v7 = 1;
  }

  v8 = self->_model;
  self->_model = v6;

  os_unfair_lock_unlock(&self->_lock);
  if ((v6 != 0) == (model == 0) || (v7 & 1) == 0)
  {
    v9 = sub_10006250C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = v10;
      if (v7)
      {
        v12 = @"NO";
      }

      else
      {
        v12 = @"YES";
      }

      v13 = v12;
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Did update availability of DTM source to: %@, new model: %@", &v15, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained source:self didUpdateAvailability:v6 != 0];
  }
}

- (id)_bestModelForCurrentState
{
  os_unfair_lock_lock(&self->_lock);
  dismissed = self->_dismissed;
  transportType = self->_transportType;
  repeatedTransportType = self->_repeatedTransportType;
  os_unfair_lock_unlock(&self->_lock);
  if ((transportType - 1) >= 5)
  {
    v6 = sub_10006250C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    *buf = 134217984;
    v45 = transportType;
    v7 = "Will not suggest DTM change: current transport type %lu is not applicable.";
LABEL_7:
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 12;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v8, v9, v7, buf, v10);
    goto LABEL_14;
  }

  if (dismissed)
  {
    v6 = sub_10006250C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "Will not suggest DTM change: it was dismissed by user since app launch.";
LABEL_11:
      v8 = v6;
      v9 = OS_LOG_TYPE_INFO;
LABEL_12:
      v10 = 2;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v11 = off_101629ED8[transportType - 1];
  if (GEOConfigGetBOOL())
  {
    v6 = sub_10006250C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "Will force hide DTM change suggestion.";
      goto LABEL_11;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v14 = +[NSUserDefaults standardUserDefaults];
  v15 = [v14 BOOLForKey:@"DTMFeatureDiscoveryAllowForTests"];

  if ((v15 & 1) == 0 && +[MapsAppDelegate mapsIsLaunchedForTesting])
  {
    v6 = sub_10006250C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v7 = "Will force hide DTM change suggestion: app was launched for testing.";
    goto LABEL_11;
  }

  integerValue = [v11 integerValue];
  if (!GEOConfigGetBOOL())
  {
    if ([(DTMFeatureDiscoverySource *)self _userPreviouslyDismissedTransportType:transportType])
    {
      v6 = sub_10006250C();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v7 = "Will not suggest DTM change: it was previously dismissed by user for this transport type.";
    }

    else if (repeatedTransportType)
    {
      if (repeatedTransportType == transportType)
      {
        if (integerValue != GEOGetUserTransportTypePreference())
        {
          goto LABEL_26;
        }

        v6 = sub_10006250C();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_14;
        }

        *buf = 0;
        v7 = "Will not suggest DTM change: current matches preferred.";
      }

      else
      {
        v6 = sub_10006250C();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_14;
        }

        *buf = 0;
        v7 = "Will not suggest DTM change: pattern does not match current transport type.";
      }
    }

    else
    {
      v6 = sub_10006250C();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v7 = "Will not suggest DTM change: no pattern in recents.";
    }

    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    goto LABEL_12;
  }

  v17 = sub_10006250C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Will force show DTM change suggestion.", buf, 2u);
  }

LABEL_26:
  v18 = [(DTMFeatureDiscoverySource *)self transportType]- 1;
  if (v18 >= 5)
  {
    v6 = sub_10006250C();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    transportType = [(DTMFeatureDiscoverySource *)self transportType];
    if ((transportType - 1) > 4)
    {
      v35 = @"Undefined";
    }

    else
    {
      v35 = *(&off_101629F78 + transportType - 1);
    }

    *buf = 138412290;
    v45 = v35;
    v7 = "Will not suggest DTM change: unknown transport type %@";
    goto LABEL_7;
  }

  v19 = *(&off_101629F00 + v18);
  v20 = *(&off_101629F28 + v18);
  v21 = *(&off_101629F50 + v18);
  v22 = +[NSBundle mainBundle];
  v6 = [v22 localizedStringForKey:v19 value:@"localized string not found" table:0];

  v23 = +[NSBundle mainBundle];
  v24 = [v23 localizedStringForKey:v20 value:@"localized string not found" table:0];

  v25 = +[NSBundle mainBundle];
  v26 = [v25 localizedStringForKey:v21 value:@"localized string not found" table:0];

  v27 = +[UIDevice currentDevice];
  v28 = [v27 userInterfaceIdiom] == 5;

  if (v28)
  {
    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"Change [Action value:Route Planning table:{Feature Discovery, DTM", @"localized string not found", 0}];

    v26 = v30;
  }

  v31 = sub_10006250C();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    transportType2 = [(DTMFeatureDiscoverySource *)self transportType];
    if ((transportType2 - 1) > 4)
    {
      v33 = @"Undefined";
    }

    else
    {
      v33 = *(&off_101629F78 + transportType2 - 1);
    }

    *buf = 138412290;
    v45 = v33;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Will suggest DTM change to %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v36 = [FeatureDiscoveryModel alloc];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1007AD50C;
  v42[3] = &unk_10165FBC0;
  objc_copyWeak(v43, buf);
  v43[1] = integerValue;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1007AD55C;
  v40[3] = &unk_10165FBC0;
  objc_copyWeak(v41, buf);
  v41[1] = integerValue;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1007AD5AC;
  v38[3] = &unk_101661B98;
  objc_copyWeak(&v39, buf);
  LOBYTE(v37) = 0;
  v12 = [(FeatureDiscoveryModel *)v36 initWithImage:0 title:v6 subtitle:v24 actionTitle:v26 actionHandler:v42 bodyTapHandler:0 displayedHandler:v40 dismissHandler:v38 disableAffordanceAfterAction:v37];
  objc_destroyWeak(&v39);
  objc_destroyWeak(v41);
  objc_destroyWeak(v43);
  objc_destroyWeak(buf);

LABEL_15:

  return v12;
}

- (FeatureDiscoveryModel)model
{
  os_unfair_lock_lock(&self->_lock);
  _bestModelForCurrentState = self->_model;
  os_unfair_lock_unlock(&self->_lock);
  if (!_bestModelForCurrentState)
  {
    v4 = sub_10006250C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Will create model on demand", v6, 2u);
    }

    _bestModelForCurrentState = [(DTMFeatureDiscoverySource *)self _bestModelForCurrentState];
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_model, _bestModelForCurrentState);
    os_unfair_lock_unlock(&self->_lock);
  }

  return _bestModelForCurrentState;
}

- (int64_t)_fetchRepeatedRecentTransportType
{
  v3 = +[Recents sharedRecents];
  orderedRecents = [v3 orderedRecents];

  UInteger = GEOConfigGetUInteger();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = orderedRecents;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    obj = v5;
    v32 = *v34;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = &OBJC_PROTOCOL___MSPHistoryEntryRoute;
        objc_opt_class();
        v13 = v11;
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          selfCopy = self;
          historyEntry = [v15 historyEntry];
          v18 = [historyEntry conformsToProtocol:v12];

          if (v18)
          {
            v19 = v13;
          }

          else
          {
            v19 = 0;
          }

          self = selfCopy;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          if (!self->_recentsCutoffDate || ([v19 historyEntry], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "usageDate"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "timeIntervalSinceDate:", self->_recentsCutoffDate), v23 = v22, v21, v20, v23 < 0.0))
          {
            historyEntry2 = [v19 historyEntry];
            transportType = [historyEntry2 transportType];

            if (v9)
            {
              if (v9 != transportType)
              {

                v9 = 0;
                v5 = obj;
                goto LABEL_30;
              }
            }

            else
            {
              v9 = transportType;
            }

            if (++v8 == UInteger)
            {
              v26 = sub_10006250C();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 134218240;
                v38 = UInteger;
                v39 = 2048;
                v40 = v9;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "User has consistently (x%lu) requested routes of type: %ld", buf, 0x16u);
              }

              v5 = obj;
              v27 = obj;
              goto LABEL_33;
            }
          }
        }
      }

      v5 = obj;
      v7 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

LABEL_30:

  v27 = sub_10006250C();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [v5 count];
    *buf = 134218496;
    v38 = v8;
    v39 = 2048;
    v40 = v9;
    v41 = 2048;
    v42 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "No clear pattern. hits: %lu repeatedTransportType: %ld numberOfRecents: %lu", buf, 0x20u);
  }

  v9 = 0;
LABEL_33:

  return v9;
}

- (void)setTransportType:(int64_t)type routeCollection:(id)collection
{
  os_unfair_lock_lock(&self->_lock);
  transportType = self->_transportType;
  if (transportType == type)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    if (transportType)
    {
      if (!type)
      {
        recentsCutoffDate = self->_recentsCutoffDate;
        self->_recentsCutoffDate = 0;

        self->_repeatedTransportType = 0;
      }
    }

    else
    {
      v8 = +[NSDate date];
      v9 = self->_recentsCutoffDate;
      self->_recentsCutoffDate = v8;

      self->_repeatedTransportType = [(DTMFeatureDiscoverySource *)self _fetchRepeatedRecentTransportType];
      v10 = sub_10006250C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = self->_repeatedTransportType - 1;
        if (v11 > 4)
        {
          v12 = @"Undefined";
        }

        else
        {
          v12 = *(&off_101629F78 + v11);
        }

        v13 = self->_recentsCutoffDate;
        v15 = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Fetched repeated type %@ given cut-off date %@", &v15, 0x16u);
      }

      if (GEOConfigGetBOOL())
      {
        v14 = sub_10006250C();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Will allow DTM suggestion to reappear for next route planning session", &v15, 2u);
        }

        self->_dismissed = 0;
      }
    }

    self->_transportType = type;
    os_unfair_lock_unlock(&self->_lock);
    [(DTMFeatureDiscoverySource *)self _reloadAvailability];
  }
}

- (BOOL)isAvailable
{
  model = [(DTMFeatureDiscoverySource *)self model];
  v3 = model != 0;

  return v3;
}

- (DTMFeatureDiscoverySource)initWithPriority:(int64_t)priority delegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = DTMFeatureDiscoverySource;
  v7 = [(DTMFeatureDiscoverySource *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_priority = priority;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v9 = +[NSDate date];
    recentsCutoffDate = v8->_recentsCutoffDate;
    v8->_recentsCutoffDate = v9;

    v8->_repeatedTransportType = [(DTMFeatureDiscoverySource *)v8 _fetchRepeatedRecentTransportType];
  }

  return v8;
}

+ (void)resetAllPreviousDismissals
{
  v2 = sub_10006250C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Resetting user dismissals for DTM switch", v4, 2u);
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObjectForKey:@"PreferDTMDismissedTransportTypes"];
}

@end