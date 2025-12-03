@interface MapRegionShareItemSource
- (MapRegionShareItemSource)initWithMapView:(id)view title:(id)title;
- (NSArray)activityProviders;
- (NSArray)applicationActivities;
@end

@implementation MapRegionShareItemSource

- (NSArray)applicationActivities
{
  v3 = +[NSMutableArray array];
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    pushSubmissionData = [(MapRegionShareItemSource *)self pushSubmissionData];
    if (pushSubmissionData)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = +[MapsPushManager defaultManager];
      devices = [v7 devices];

      v9 = [devices countByEnumeratingWithState:&v15 objects:v19 count:16];
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
              objc_enumerationMutation(devices);
            }

            v13 = [[PushToDeviceActivity alloc] initWithDevice:*(*(&v15 + 1) + 8 * i) place:self];
            [v3 addObject:v13];
          }

          v10 = [devices countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }

  return v3;
}

- (NSArray)activityProviders
{
  textActivityProvider = [(MapRegionShareItemSource *)self textActivityProvider];
  v7[0] = textActivityProvider;
  urlActivityProvider = [(MapRegionShareItemSource *)self urlActivityProvider];
  v7[1] = urlActivityProvider;
  v5 = [NSArray arrayWithObjects:v7 count:2];

  return v5;
}

- (MapRegionShareItemSource)initWithMapView:(id)view title:(id)title
{
  viewCopy = view;
  titleCopy = title;
  v22.receiver = self;
  v22.super_class = MapRegionShareItemSource;
  v8 = [(MapRegionShareItemSource *)&v22 init];
  if (v8)
  {
    [viewCopy visibleMapRect];
    v24 = MKCoordinateRegionForMapRect(v23);
    latitude = v24.center.latitude;
    longitude = v24.center.longitude;
    latitudeDelta = v24.span.latitudeDelta;
    longitudeDelta = v24.span.longitudeDelta;
    v13 = [_TtC4Maps29MapRegionActivityDataProvider alloc];
    camera = [viewCopy camera];
    v15 = -[MapRegionActivityDataProvider initWithMapRegion:camera:title:mapType:](v13, "initWithMapRegion:camera:title:mapType:", camera, titleCopy, [viewCopy mapType], latitude, longitude, latitudeDelta, longitudeDelta);
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