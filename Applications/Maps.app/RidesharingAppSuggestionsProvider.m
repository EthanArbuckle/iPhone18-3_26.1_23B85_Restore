@interface RidesharingAppSuggestionsProvider
+ (id)sharedProvider;
- (id)_applicationsAfterFilteringOutInstalledApplicationsFromApplications:(id)a3;
- (id)partitionedApplicationSuggestionsFromSuggestions:(id)a3;
- (void)_fetchAppDataForAppIDs:(id)a3 withCompletion:(id)a4;
- (void)_fetchAppIDsForSource:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4 withCompletion:(id)a5;
- (void)fetchSuggestedAppsForSource:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4 withCompletion:(id)a5;
@end

@implementation RidesharingAppSuggestionsProvider

+ (id)sharedProvider
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DEDDB0;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195F228 != -1)
  {
    dispatch_once(&qword_10195F228, block);
  }

  v2 = qword_10195F220;

  return v2;
}

- (id)partitionedApplicationSuggestionsFromSuggestions:(id)a3
{
  v4 = a3;
  v5 = [(RidesharingAppSuggestionsProvider *)self _applicationsAfterFilteringOutInstalledApplicationsFromApplications:v4];
  v6 = [v4 mutableCopy];

  [v6 removeObjectsInArray:v5];
  v7 = [[RidesharingPartitionedAppSuggestions alloc] initWithInstalledSuggestions:v6 notInstalledSuggestions:v5];

  return v7;
}

- (id)_applicationsAfterFilteringOutInstalledApplicationsFromApplications:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 isAppInstalled] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (void)_fetchAppDataForAppIDs:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MKAppleMediaServices sharedInstance];
  v8 = +[UIScreen mainScreen];
  [v8 scale];
  v10 = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100DEE0FC;
  v12[3] = &unk_10165EB78;
  v13 = v5;
  v11 = v5;
  [v7 appleMediaServicesResultsWithIdentifiers:v6 artworkSize:1 screenScale:5 type:v12 source:62.0 completion:{62.0, v10}];
}

- (void)_fetchAppIDsForSource:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4 withCompletion:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3.longitude;
  v8 = a3.latitude;
  v10 = a5;
  v11 = [NSString stringWithFormat:@"%f, %f", *&v8, *&v7];
  v12 = [NSString stringWithFormat:@"%f, %f", *&latitude, *&longitude];
  v13 = objc_alloc_init(SSMutableURLRequestProperties);
  [v13 setTimeoutInterval:15.0];
  [v13 setAllowedRetryCount:0];
  [v13 setURLBagKey:@"map-apps-search"];
  [v13 setValue:@"ridesharing" forRequestParameter:@"term"];
  [v13 setValue:@"INRequestRideIntent forRequestParameter:{INListRideOptionsIntent, INGetRideStatusIntent", @"intent"}];
  [v13 setValue:v11 forRequestParameter:@"loc1"];
  [v13 setValue:v12 forRequestParameter:@"loc2"];
  [v13 setValue:@"com.apple.Maps" forRequestParameter:@"caller"];
  [v13 setValue:@"1" forRequestParameter:@"version"];
  v14 = [[SSURLConnectionRequest alloc] initWithRequestProperties:v13];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100DEE2FC;
  v16[3] = &unk_101655228;
  v16[4] = self;
  v17 = v10;
  v15 = v10;
  [v14 startWithConnectionResponseBlock:v16];
}

- (void)fetchSuggestedAppsForSource:(CLLocationCoordinate2D)a3 destination:(CLLocationCoordinate2D)a4 withCompletion:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3.longitude;
  v8 = a3.latitude;
  v10 = a5;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100DEE7C4;
  v12[3] = &unk_10165E308;
  v11 = v10;
  v13 = v11;
  objc_copyWeak(&v14, &location);
  [(RidesharingAppSuggestionsProvider *)self _fetchAppIDsForSource:v12 destination:v8 withCompletion:v7, latitude, longitude];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

@end