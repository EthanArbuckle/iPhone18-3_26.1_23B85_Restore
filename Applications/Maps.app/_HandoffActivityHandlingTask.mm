@interface _HandoffActivityHandlingTask
- (void)performTask;
- (void)taskFinished:(id)finished;
@end

@implementation _HandoffActivityHandlingTask

- (void)taskFinished:(id)finished
{
  finishedCopy = finished;
  v5 = +[GEOAPSharedStateData sharedData];
  [v5 setMapLaunchIsHandoff:1];

  v6.receiver = self;
  v6.super_class = _HandoffActivityHandlingTask;
  [(UserActivityHandlingTask *)&v6 taskFinished:finishedCopy];
}

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  userActivity = [(UserActivityHandlingTask *)self userActivity];
  userInfo = [userActivity userInfo];

  v5 = [userInfo objectForKeyedSubscript:@"bs"];
  if (v5)
  {
    v6 = [[MapsActivity alloc] initWithBzip2CompressedData:v5];
    v7 = v6;
    if (!v6)
    {
      v11 = sub_100005610();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "_HandoffActivityHandlingTask no mapsActivity from data", v15, 2u);
      }

      [(RichMapsActivityCreatingTaskImpl *)self taskFailed];
      goto LABEL_17;
    }

    if ([(MapsActivity *)v6 hasDisplayOptions])
    {
      displayOptions = [(MapsActivity *)v7 displayOptions];
      if ([displayOptions hasCamera])
      {
        v9 = 0;
      }

      else
      {
        displayOptions2 = [(MapsActivity *)v7 displayOptions];
        v9 = [displayOptions2 hasCenterSpan] ^ 1;
      }

      v12 = objc_alloc_init(RestorationAction);
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = objc_alloc_init(RestorationAction);
    }

    [(MapsAction *)v12 setUserLocationAccuracy:kCLLocationAccuracyBest];
LABEL_16:
    v14 = [[RichMapsActivity alloc] initWithMapsActivity:v7 mapsAction:v12];
    [(_HandoffActivityHandlingTask *)self taskFinished:v14];

LABEL_17:
    goto LABEL_18;
  }

  v10 = sub_100005610();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "_HandoffActivityHandlingTask no compressed data", buf, 2u);
  }

  [(RichMapsActivityCreatingTaskImpl *)self taskFailed];
LABEL_18:
}

@end