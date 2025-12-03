@interface _ReportIncidentIntentHandlingTask
- (void)performTask;
@end

@implementation _ReportIncidentIntentHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  userActivity = [(UserActivityHandlingTask *)self userActivity];
  interaction = [userActivity interaction];
  intent = [interaction intent];

  if (intent)
  {
    v6 = [[ReportIncidentAction alloc] initWithIncidentIntent:intent];
    [(MapsAction *)v6 setUserLocationAccuracy:kCLLocationAccuracyBest];
    v7 = objc_alloc_init(MapsActivity);
    v8 = objc_alloc_init(GEOURLOptions);
    [(MapsActivity *)v7 setDisplayOptions:v8];

    displayOptions = [(MapsActivity *)v7 displayOptions];
    [displayOptions setUserTrackingMode:1];

    v10 = [[RichMapsActivity alloc] initWithMapsActivity:v7 mapsAction:v6];
    [(UserActivityHandlingTask *)self taskFinished:v10];
  }

  else
  {
    v11 = sub_100005610();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "_ReportIncidentIntentHandlingTask missing intent", v12, 2u);
    }

    [(RichMapsActivityCreatingTaskImpl *)self taskFailed];
  }
}

@end