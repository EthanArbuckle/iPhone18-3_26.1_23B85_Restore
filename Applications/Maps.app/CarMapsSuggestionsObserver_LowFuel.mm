@interface CarMapsSuggestionsObserver_LowFuel
- (BOOL)hasLowFuelSuggestion;
- (BOOL)updateShownFuelAlerts:(id)a3;
- (CarMapsSuggestionsController)controller;
- (CarMapsSuggestionsObserver_LowFuel)init;
- (id)lowFuelSuggestions;
- (id)unshownFuelAlerts:(id)a3;
- (void)addShownFuelAlert:(id)a3;
- (void)carMapsSuggestionControllerDidRefresh:(id)a3;
- (void)removeAllShownFuelAlerts;
- (void)setActive:(BOOL)a3;
@end

@implementation CarMapsSuggestionsObserver_LowFuel

- (void)carMapsSuggestionControllerDidRefresh:(id)a3
{
  v4 = a3;
  if ([(CarMapsSuggestionsObserver_LowFuel *)self hasLowFuelSuggestion])
  {
    v5 = [(CarMapsSuggestionsObserver_LowFuel *)self controller];
    v6 = [v5 allowLowFuelAlert];

    if (v6)
    {
      v7 = [(CarMapsSuggestionsObserver_LowFuel *)self lowFuelSuggestions];
      if ([(CarMapsSuggestionsObserver_LowFuel *)self updateShownFuelAlerts:v7])
      {
        v8 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
        [v8 clearLowFuelAlertBulletin];
      }

      v9 = [(CarMapsSuggestionsObserver_LowFuel *)self unshownFuelAlerts:v7];
      if ([v9 count])
      {
        v10 = [v9 firstObject];
        v11 = [[MSPLowFuelDetails alloc] initWithMapsSuggestionsEntry:v10];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = v9;
        v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v22;
          do
          {
            v16 = 0;
            do
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [(CarMapsSuggestionsObserver_LowFuel *)self addShownFuelAlert:*(*(&v21 + 1) + 8 * v16), v21];
              v16 = v16 + 1;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v14);
        }

        v17 = sub_100006E1C();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v12;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Sending low fuel details to MSPMapsPushDaemon. Unshown Fuel Alert Details: %@", buf, 0xCu);
        }

        v18 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
        [v18 showLowFuelAlertBulletinForLowFuelDetails:v11];
      }

      else
      {
        v10 = sub_100006E1C();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "There are no unshown fuel alerts to display", buf, 2u);
        }
      }

      [v4 setHoldProcessAssertion:0];
    }

    else
    {
      v7 = sub_100006E1C();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
LABEL_23:

        goto LABEL_24;
      }

      v9 = [(CarMapsSuggestionsObserver_LowFuel *)self controller];
      *buf = 134217984;
      v27 = [v9 allowLowFuelAlert];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CarMapsSuggestionController Did Refresh with allowLowFuelAlert as :%ld", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v19 = +[MSPMapsPushDaemonRemoteProxy sharedInstance];
  [v19 clearLowFuelAlertBulletin];

  v20 = [(CarMapsSuggestionsObserver_LowFuel *)self controller];
  [v20 setAllowLowFuelAlert:1];

  [(CarMapsSuggestionsObserver_LowFuel *)self removeAllShownFuelAlerts];
LABEL_24:
}

- (id)lowFuelSuggestions
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CarMapsSuggestionsObserver_LowFuel *)self controller];
  v5 = [v4 suggestions];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 type] == 10)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (BOOL)hasLowFuelSuggestion
{
  v2 = [(CarMapsSuggestionsObserver_LowFuel *)self lowFuelSuggestions];
  v3 = [v2 count] != 0;

  return v3;
}

- (CarMapsSuggestionsController)controller
{
  v2 = +[CarDisplayController sharedInstance];
  v3 = [v2 mapsSuggestionsController];

  return v3;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    v5 = sub_100006E1C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (self->_active)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v6;
      if (v3)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[CarMapsSuggestionsController] LowFuel monitor _active=%{public}@ active=%{public}@", buf, 0x16u);
    }

    self->_active = v3;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100C7DD38;
    v10[3] = &unk_101661AE0;
    v11 = v3;
    v10[4] = self;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

- (id)unshownFuelAlerts:(id)a3
{
  v4 = a3;
  obj = [(CarMapsSuggestionsObserver_LowFuel *)self shownFuelAlerts];
  objc_sync_enter(obj);
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(CarMapsSuggestionsObserver_LowFuel *)self shownFuelAlerts];
        v12 = [v10 uniqueIdentifier];
        v13 = [v11 objectForKeyedSubscript:v12];
        v14 = v13 == 0;

        if (v14)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);

  return v5;
}

- (BOOL)updateShownFuelAlerts:(id)a3
{
  v4 = a3;
  obj = [(CarMapsSuggestionsObserver_LowFuel *)self shownFuelAlerts];
  objc_sync_enter(obj);
  v5 = [(CarMapsSuggestionsObserver_LowFuel *)self shownFuelAlerts];
  v6 = [v5 allKeys];
  v7 = [NSMutableSet setWithArray:v6];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v28 + 1) + 8 * v11) uniqueIdentifier];
        [v7 removeObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v7;
  v14 = 0;
  v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * v17);
        v19 = [(CarMapsSuggestionsObserver_LowFuel *)self shownFuelAlerts];
        v20 = [v19 objectForKeyedSubscript:v18];

        if (v20)
        {
          v21 = [(CarMapsSuggestionsObserver_LowFuel *)self shownFuelAlerts];
          [v21 removeObjectForKey:v18];

          v14 = 1;
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  objc_sync_exit(obj);
  return v14 & 1;
}

- (void)addShownFuelAlert:(id)a3
{
  v7 = a3;
  v4 = [(CarMapsSuggestionsObserver_LowFuel *)self shownFuelAlerts];
  objc_sync_enter(v4);
  v5 = [(CarMapsSuggestionsObserver_LowFuel *)self shownFuelAlerts];
  v6 = [v7 uniqueIdentifier];
  [v5 setObject:v7 forKeyedSubscript:v6];

  objc_sync_exit(v4);
}

- (void)removeAllShownFuelAlerts
{
  obj = [(CarMapsSuggestionsObserver_LowFuel *)self shownFuelAlerts];
  objc_sync_enter(obj);
  v3 = [(CarMapsSuggestionsObserver_LowFuel *)self shownFuelAlerts];
  [v3 removeAllObjects];

  objc_sync_exit(obj);
}

- (CarMapsSuggestionsObserver_LowFuel)init
{
  v6.receiver = self;
  v6.super_class = CarMapsSuggestionsObserver_LowFuel;
  v2 = [(CarMapsSuggestionsObserver_LowFuel *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    shownFuelAlerts = v2->_shownFuelAlerts;
    v2->_shownFuelAlerts = v3;
  }

  return v2;
}

@end