@interface RoutingAppSuggestionProvider
- (RoutingAppSuggestionProviderDelegate)delegate;
- (id)sortedAppsWithIds:(id)a3 appStoreApps:(id)a4;
- (void)_removeInstalledAppsFromStoreSuggestions;
- (void)_requestAppDataForIds:(id)a3;
- (void)_suggestFilteredStoreAppsIfReady;
- (void)dealloc;
- (void)requestSuggestionsForSource:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4;
- (void)reset;
- (void)showNetworkActivityIndicator:(BOOL)a3;
- (void)urlConnectionRequest:(id)a3 didReceiveResponse:(id)a4;
@end

@implementation RoutingAppSuggestionProvider

- (RoutingAppSuggestionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)urlConnectionRequest:(id)a3 didReceiveResponse:(id)a4
{
  v5 = a4;
  [(RoutingAppSuggestionProvider *)self showNetworkActivityIndicator:0];
  v6 = [v5 bodyData];
  if (v6)
  {
    v34 = 0;
    v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v34];
    v8 = v34;
    v16 = v8;
    if (v8)
    {
      v38[0] = NSLocalizedDescriptionKey;
      v38[1] = NSUnderlyingErrorKey;
      v39[0] = @"Failed to parse response.";
      v39[1] = v8;
      v17 = v39;
      v18 = v38;
      v19 = 2;
    }

    else
    {
      sub_100DA10F8(@"Store search response received: %@.", v9, v10, v11, v12, v13, v14, v15, v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v7 objectForKeyedSubscript:@"results"];
        if (!v21)
        {
LABEL_18:

          goto LABEL_19;
        }

        v29 = v7;
        v22 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v21, "count")}];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v21 = v21;
        v23 = [v21 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v31;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v31 != v25)
              {
                objc_enumerationMutation(v21);
              }

              v27 = [*(*(&v30 + 1) + 8 * i) objectForKeyedSubscript:@"adamId"];
              [v22 addObject:v27];
            }

            v24 = [v21 countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v24);
        }

        [(RoutingAppSuggestionProvider *)self _requestAppDataForIds:v22];
        v7 = v29;
LABEL_17:

        goto LABEL_18;
      }

      v36 = NSLocalizedDescriptionKey;
      v37 = @"Expected dictionary as root JSON object and didn't get one.";
      v17 = &v37;
      v18 = &v36;
      v19 = 1;
    }

    v28 = [NSDictionary dictionaryWithObjects:v17 forKeys:v18 count:v19];
    v21 = [NSError searchErrorWithUserInfo:v28];

    v22 = [(RoutingAppSuggestionProvider *)self delegate];
    [v22 routingAppSuggestionProvider:self didFailToSuggestStoreApps:v21];
    goto LABEL_17;
  }

  v40 = NSLocalizedDescriptionKey;
  v41 = @"SSURLConnectionRequest response was nil.";
  v20 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v16 = [NSError searchErrorWithUserInfo:v20];

  v7 = [(RoutingAppSuggestionProvider *)self delegate];
  [v7 routingAppSuggestionProvider:self didFailToSuggestStoreApps:v16];
LABEL_19:
}

- (void)_suggestFilteredStoreAppsIfReady
{
  if (self->_loadedStoreSuggestions && !self->_suggestedStoreApps && self->_suggestedLocalApps)
  {
    self->_suggestedStoreApps = 1;
    [(RoutingAppSuggestionProvider *)self _removeInstalledAppsFromStoreSuggestions];
    sub_100DA10F8(@"Done loading store suggestions", v3, v4, v5, v6, v7, v8, v9, v10);
    v11 = [(RoutingAppSuggestionProvider *)self delegate];
    [v11 routingAppSuggestionProvider:self didSuggestStoreApps:self->_appStoreApps];
  }
}

- (void)_removeInstalledAppsFromStoreSuggestions
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_allRoutingApps, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_allRoutingApps;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v20 + 1) + 8 * v8) bundleIdentifier];
        [v3 addObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  sub_100DA10F8(@"Filtering the following installed apps from store suggestions: %@", v10, v11, v12, v13, v14, v15, v16, v3);
  v17 = [(NSArray *)self->_appStoreApps indexesOfObjectsPassingTest:&stru_101638610];
  v18 = [(NSArray *)self->_appStoreApps objectsAtIndexes:v17];
  appStoreApps = self->_appStoreApps;
  self->_appStoreApps = v18;
}

- (id)sortedAppsWithIds:(id)a3 appStoreApps:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableDictionary);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 identifier];
        v15 = [v5 indexOfObject:v14];

        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [NSNumber numberWithUnsignedInteger:v15];
          [v7 setObject:v13 forKey:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v17 = [v7 allKeys];
  v18 = [v17 sortedArrayUsingComparator:&stru_1016385D0];

  v19 = +[NSNull null];
  v20 = [v7 objectsForKeys:v18 notFoundMarker:v19];

  return v20;
}

- (void)_requestAppDataForIds:(id)a3
{
  v4 = a3;
  [(RoutingAppSuggestionProvider *)self showNetworkActivityIndicator:1];
  v5 = +[MKAppleMediaServices sharedInstance];
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  v8 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B23FEC;
  v10[3] = &unk_10165FE18;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v5 appleMediaServicesResultsWithIdentifiers:v9 artworkSize:2 screenScale:7 type:v10 source:62.0 completion:{62.0, v8}];
}

- (void)reset
{
  [(RoutingAppSuggestionProvider *)self setAllRoutingApps:0];
  self->_suggestedStoreApps = 0;
  *&self->_loadedStoreSuggestions = 0;
  v3 = +[MCProfileConnection sharedConnection];
  if (![v3 isOnDeviceAppInstallationAllowed] || objc_msgSend(v3, "userMode") == 1 || (objc_msgSend(v3, "isEphemeralMultiUser") & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[ACAccountStore ams_sharedAccountStore];
    v6 = [v5 ams_activeiTunesAccount];
    v4 = [v6 ams_isManagedAppleID];
  }

  self->_appInstallationDisallowed = v4;
}

- (void)showNetworkActivityIndicator:(BOOL)a3
{
  if (a3)
  {
    v7 = +[LoadingIndicatorController sharedController];
    v4 = [(LoadingToken *)v7 beginShowingLoadingIndicator];
    networkActivity = self->_networkActivity;
    self->_networkActivity = v4;

    v6 = v7;
  }

  else
  {
    v6 = self->_networkActivity;
    self->_networkActivity = 0;
  }
}

- (void)requestSuggestionsForSource:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v6 = a3.longitude;
  v7 = a3.latitude;
  [(RoutingAppSuggestionProvider *)self reset];
  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = [v9 BOOLForKey:@"__internal__FakeTransitResponse"];

  if (v10)
  {
    v11 = [CFSTR(""375380948 304231811];
    [(RoutingAppSuggestionProvider *)self _requestAppDataForIds:v11];
LABEL_5:

    goto LABEL_6;
  }

  if (!self->_appInstallationDisallowed)
  {
    v11 = [NSString stringWithFormat:@"%f, %f", *&v7, *&v6];
    v12 = [NSString stringWithFormat:@"%f, %f", *&latitude, *&longitude];
    v13 = objc_alloc_init(SSMutableURLRequestProperties);
    [v13 setURLBagKey:@"transit-apps-url"];
    [v13 setValue:v11 forRequestParameter:@"loc1"];
    [v13 setValue:v12 forRequestParameter:@"loc2"];
    v14 = [[SSURLConnectionRequest alloc] initWithRequestProperties:v13];
    [v14 setDelegate:self];
    [(RoutingAppSuggestionProvider *)self showNetworkActivityIndicator:1];
    [v14 start];

    goto LABEL_5;
  }

LABEL_6:
  v15 = +[RoutingAppsManager defaultManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100B24484;
  v16[3] = &unk_101638590;
  v16[4] = self;
  [v15 loadRelevantRoutingAppsForSource:v16 destination:v7 completion:{v6, latitude, longitude}];
}

- (void)dealloc
{
  [(RoutingAppSuggestionProvider *)self reset];
  v3.receiver = self;
  v3.super_class = RoutingAppSuggestionProvider;
  [(RoutingAppSuggestionProvider *)&v3 dealloc];
}

@end