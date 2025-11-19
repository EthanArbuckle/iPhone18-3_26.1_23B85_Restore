@interface MapRegionShareItemSource
- (MapRegionShareItemSource)initWithMapView:(id)a3 title:(id)a4;
- (NSArray)activityProviders;
- (NSArray)applicationActivities;
@end

@implementation MapRegionShareItemSource

- (NSArray)applicationActivities
{
  v3 = +[NSMutableArray array];
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 5)
  {
    v6 = [(MapRegionShareItemSource *)self pushSubmissionData];
    if (v6)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = +[MapsPushManager defaultManager];
      v8 = [v7 devices];

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [[PushToDeviceActivity alloc] initWithDevice:*(*(&v15 + 1) + 8 * i) place:self];
            [v3 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }

  return v3;
}

- (NSArray)activityProviders
{
  v3 = [(MapRegionShareItemSource *)self textActivityProvider];
  v7[0] = v3;
  v4 = [(MapRegionShareItemSource *)self urlActivityProvider];
  v7[1] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (MapRegionShareItemSource)initWithMapView:(id)a3 title:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = MapRegionShareItemSource;
  v8 = [(MapRegionShareItemSource *)&v22 init];
  if (v8)
  {
    [v6 visibleMapRect];
    v24 = MKCoordinateRegionForMapRect(v23);
    latitude = v24.center.latitude;
    longitude = v24.center.longitude;
    latitudeDelta = v24.span.latitudeDelta;
    longitudeDelta = v24.span.longitudeDelta;
    v13 = [_TtC4Maps29MapRegionActivityDataProvider alloc];
    v14 = [v6 camera];
    v15 = -[MapRegionActivityDataProvider initWithMapRegion:camera:title:mapType:](v13, "initWithMapRegion:camera:title:mapType:", v14, v7, [v6 mapType], latitude, longitude, latitudeDelta, longitudeDelta);
    dataProvider = v8->_dataProvider;
    v8->_dataProvider = v15;

    v17 = [MUURLActivityProvider activityProviderFromDataProvider:v8->_dataProvider];
    urlActivityProvider = v8->_urlActivityProvider;
    v8->_urlActivityProvider = v17;

    v19 = [MUTextActivityProvider activityProviderFromDataProvider:v8->_dataProvider];
    textActivityProvider = v8->_textActivityProvider;
    v8->_textActivityProvider = v19;
  }

  return v8;
}

@end