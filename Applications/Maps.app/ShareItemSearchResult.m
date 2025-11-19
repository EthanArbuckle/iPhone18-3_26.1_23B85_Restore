@interface ShareItemSearchResult
- (BOOL)_supportsURLShorteningService;
- (NSArray)activityProviders;
- (NSArray)applicationActivities;
- (NSArray)excludedActivityTypes;
- (NSData)pushSubmissionData;
- (ShareItemSearchResult)initWithSearchResult:(id)a3 contact:(id)a4 includePrintActivity:(BOOL)a5 applicationActivities:(id)a6;
- (id)_airdropURLJSON;
- (id)_annotationView;
- (id)_sharingURLIncludingSensitiveParameters:(BOOL)a3;
- (id)_titleForMapActivity;
- (id)mapItem;
- (void)_setupCustomFeatureForMapItem;
- (void)_setupCustomFeatureStore;
- (void)_setupDataProvider;
@end

@implementation ShareItemSearchResult

- (id)_airdropURLJSON
{
  v3 = [(ShareItemSearchResult *)self searchResult];
  v4 = [v3 type];

  if (v4 == 4)
  {
    v5 = &off_1016EE510;
  }

  else
  {
    v6 = [(ShareItemSearchResult *)self searchResult];
    v7 = [v6 type];

    if (v7 == 3)
    {
      v5 = &off_1016EE538;
    }

    else
    {
      v10[0] = @"SFAirDropActivitySubjectMain";
      v8 = [(ShareItemSearchResult *)self _titleForMapActivity];
      v10[1] = @"SFAirDropActivitySubjectMapsLinkType";
      v11[0] = v8;
      v11[1] = &off_1016E9698;
      v5 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    }
  }

  return v5;
}

- (id)_titleForMapActivity
{
  v2 = [(ShareItemSearchResult *)self searchResult];
  v3 = [v2 type];
  v4 = [v2 title];
  v5 = v4;
  if (v3 == 4)
  {
    v6 = +[AddressBookManager sharedManager];
    v7 = [v6 meCard];

    v8 = [CNContactFormatter stringFromContact:v7 style:0];
    v9 = +[NSBundle mainBundle];
    if (v8)
    {
      v10 = [v9 localizedStringForKey:@"Person_Name_Location_Activity_Controller" value:@"localized string not found" table:0];
      v11 = [NSString stringWithFormat:v10, v8];
    }

    else
    {
      v11 = [v9 localizedStringForKey:@"Shared Location" value:@"localized string not found" table:0];
    }
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

- (id)_sharingURLIncludingSensitiveParameters:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIApplication _maps_keyMapsSceneDelegate];
  v6 = [v5 chromeViewController];

  v7 = [(ShareItemSearchResult *)self searchResult];
  if (v7)
  {
    v8 = [v6 mapView];
    v9 = [v7 mapsURLfromMapView:v8 includingSensitiveFields:v3];
    v10 = [NSURL URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_annotationView
{
  v3 = [(ShareItemSearchResult *)self searchResult];
  v4 = [v3 type];

  if (v4 == 4)
  {
    v5 = objc_alloc_init(MKUserLocation);
    v6 = [(ShareItemSearchResult *)self searchResult];
    [v6 coordinate];
    [(MapsActivityAnnotation *)v5 setCoordinate:?];

    v7 = [[_MKUserLocationView alloc] initWithAnnotation:v5 reuseIdentifier:0];
  }

  else
  {
    v8 = [MapsActivityAnnotation alloc];
    v9 = [(ShareItemSearchResult *)self searchResult];
    v5 = [(MapsActivityAnnotation *)v8 initWithSearchResult:v9];

    v7 = [[MKMarkerAnnotationView alloc] initWithAnnotation:v5 reuseIdentifier:0];
    [v7 setHidden:0];
  }

  return v7;
}

- (NSData)pushSubmissionData
{
  v2 = [(SearchResult *)self->_searchResult bookmarkRepresentation];
  v3 = [v2 data];

  return v3;
}

- (void)_setupCustomFeatureForMapItem
{
  v3 = [(ShareItemSearchResult *)self mapItem];
  v4 = [_ShareCustomFeature customFeatureForMapItem:v3];
  shareCustomFeature = self->_shareCustomFeature;
  self->_shareCustomFeature = v4;

  customFeatureStore = self->_customFeatureStore;
  v8 = self->_shareCustomFeature;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [(_MKCustomFeatureStore *)customFeatureStore addAnnotations:v7];
}

- (void)_setupCustomFeatureStore
{
  v3 = [[_MKCustomFeatureStore alloc] initWithClustering:0];
  customFeatureStore = self->_customFeatureStore;
  self->_customFeatureStore = v3;
}

- (id)mapItem
{
  v2 = [(ShareItemSearchResult *)self searchResult];
  v3 = [v2 mapItem];

  return v3;
}

- (NSArray)excludedActivityTypes
{
  v4 = UIActivityTypeAddToReadingList;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (NSArray)applicationActivities
{
  v3 = +[NSMutableArray array];
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 5)
  {
    v6 = [(ShareItemSearchResult *)self pushSubmissionData];
    if (v6)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = +[MapsPushManager defaultManager];
      v8 = [v7 devices];

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [[PushToDeviceActivity alloc] initWithDevice:*(*(&v17 + 1) + 8 * i) place:self];
            [v3 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v10);
      }
    }
  }

  if ([(ShareItemSearchResult *)self includePrintActivity])
  {
    v14 = objc_alloc_init(MapsPrintActivity);
    [v3 addObject:v14];
  }

  if ([(NSArray *)self->_extraAppActivities count])
  {
    [v3 addObjectsFromArray:self->_extraAppActivities];
  }

  v15 = [v3 copy];

  return v15;
}

- (NSArray)activityProviders
{
  activityProviders = self->_activityProviders;
  if (!activityProviders)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [MUURLActivityProvider activityProviderFromDataProvider:self->_dataProvider];
    [v4 addObject:v5];
    v6 = [MUTextActivityProvider activityProviderFromDataProvider:self->_dataProvider];
    [v4 addObject:v6];
    if (GEOConfigGetBOOL())
    {
      v7 = [[MUPlaceMapItemActivityProvider alloc] initWithDataProvider:self->_dataProvider];
      [v4 addObject:v7];
    }

    v8 = [MULinkMetadataActivityProvider activityProviderFromDataProvider:self->_dataProvider];
    [v4 addObject:v8];
    v9 = [v4 copy];
    v10 = self->_activityProviders;
    self->_activityProviders = v9;

    activityProviders = self->_activityProviders;
  }

  return activityProviders;
}

- (BOOL)_supportsURLShorteningService
{
  if ([(SearchResultRepr *)self->_searchResult type]== 12)
  {
    return 0;
  }

  v4 = [(SearchResult *)self->_searchResult address];
  v3 = v4 == 0;

  return v3;
}

- (void)_setupDataProvider
{
  v3 = [MUPlaceActivityDataProviderConfiguration alloc];
  v4 = [(SearchResult *)self->_searchResult mapItem];
  v5 = [v3 initWithMapItem:v4];

  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100CD8730;
  v14[3] = &unk_101653F38;
  objc_copyWeak(&v15, &location);
  [v5 setActivityTitleBlock:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100CD877C;
  v12[3] = &unk_1016508C8;
  objc_copyWeak(&v13, &location);
  [v5 setActivityURLBlock:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100CD87D0;
  v10[3] = &unk_1016508F0;
  objc_copyWeak(&v11, &location);
  [v5 setAirdropJSONBlock:v10];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100CD881C;
  v8[3] = &unk_101650918;
  objc_copyWeak(&v9, &location);
  [v5 setAnnotationBlock:v8];
  if (MapsFeature_IsEnabled_Maps66())
  {
    [v5 setNotesProvider:self->_noteSharingSession];
  }

  [v5 setSupportsURLShorteningService:{-[ShareItemSearchResult _supportsURLShorteningService](self, "_supportsURLShorteningService")}];
  v6 = [[MUPlaceActivityDataProvider alloc] initWithConfiguration:v5];
  dataProvider = self->_dataProvider;
  self->_dataProvider = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (ShareItemSearchResult)initWithSearchResult:(id)a3 contact:(id)a4 includePrintActivity:(BOOL)a5 applicationActivities:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = ShareItemSearchResult;
  v13 = [(ShareItemSearchResult *)&v23 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_extraAppActivities, a6);
    v15 = [v10 copy];
    searchResult = v14->_searchResult;
    v14->_searchResult = v15;

    objc_storeStrong(&v14->_contact, a4);
    v14->_includePrintActivity = a5;
    objc_storeStrong(&v14->_extraAppActivities, a6);
    v17 = [_TtC4Maps23PlaceNoteSharingSession alloc];
    v18 = [v10 mapItem];
    v19 = [(PlaceNoteSharingSession *)v17 initWithMapItem:v18];
    noteSharingSession = v14->_noteSharingSession;
    v14->_noteSharingSession = v19;

    [(ShareItemSearchResult *)v14 _setupDataProvider];
    v21 = v14;
  }

  return v14;
}

@end