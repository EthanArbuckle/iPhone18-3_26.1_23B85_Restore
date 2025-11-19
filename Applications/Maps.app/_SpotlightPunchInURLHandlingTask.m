@interface _SpotlightPunchInURLHandlingTask
- (_SpotlightPunchInURLHandlingTask)initWithURL:(id)a3 referringURL:(id)a4 sourceApplication:(id)a5 sceneOptions:(id)a6 mkOptions:(id)a7;
- (void)performTask;
@end

@implementation _SpotlightPunchInURLHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "_SpotlightPunchInURLHandlingTask has been started", v12, 2u);
  }

  v4 = objc_alloc_init(SearchFieldItem);
  punchInDetails = self->_punchInDetails;
  v6 = [(GEOSpotlightSearchPunchIn *)punchInDetails completedSearchQuery];
  [(SearchFieldItem *)v4 setPunchInDetails:punchInDetails searchString:v6];

  v7 = [[SearchAction alloc] initWithSearchItem:v4 alongRoute:0];
  [(MapsAction *)v7 setUserLocationAccuracy:kCLLocationAccuracyKilometer];
  v8 = objc_alloc_init(MapsActivity);
  v9 = objc_alloc_init(GEOURLOptions);
  [(MapsActivity *)v8 setDisplayOptions:v9];

  v10 = [(MapsActivity *)v8 displayOptions];
  [v10 setUserTrackingMode:1];

  v11 = [[RichMapsActivity alloc] initWithMapsActivity:v8 mapsAction:v7];
  [(RichMapsActivityCreatingTaskImpl *)self taskFinished:v11];
}

- (_SpotlightPunchInURLHandlingTask)initWithURL:(id)a3 referringURL:(id)a4 sourceApplication:(id)a5 sceneOptions:(id)a6 mkOptions:(id)a7
{
  v12 = a3;
  v33.receiver = self;
  v33.super_class = _SpotlightPunchInURLHandlingTask;
  v13 = [(URLHandlingTask *)&v33 initWithURL:v12 referringURL:a4 sourceApplication:a5 sceneOptions:a6 mkOptions:a7];
  if (v13)
  {
    v14 = [v12 absoluteString];
    v15 = [NSURLComponents componentsWithString:v14];

    v28 = v15;
    [v15 queryItems];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v32 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
LABEL_4:
      v20 = 0;
      while (1)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * v20);
        v22 = [v21 name];
        v23 = [v22 isEqualToString:@"pm"];

        if (v23)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v29 objects:v36 count:16];
          if (v18)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v24 = [v21 value];

      if (!v24)
      {
        goto LABEL_13;
      }

      v25 = [[GEOSpotlightSearchPunchIn alloc] initWithEncodedString:v24];
      punchInDetails = v13->_punchInDetails;
      v13->_punchInDetails = v25;
    }

    else
    {
LABEL_10:

LABEL_13:
      v24 = sub_100005610();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = v12;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "_SpotlightPunchInURLHandlingTask open url: %@", buf, 0xCu);
      }
    }
  }

  return v13;
}

@end