@interface _PlaceBrandActivityHandlingTask
- (void)performTask;
@end

@implementation _PlaceBrandActivityHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v3, v4, objc_opt_class(), 0];
  userActivity = [(UserActivityHandlingTask *)self userActivity];
  userInfo = [userActivity userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"MKPlaceBrandUserActivityData"];
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v8 error:0];

  v10 = [v9 objectForKeyedSubscript:@"MKPlaceBrandUserActivityID"];
  longLongValue = [v10 longLongValue];

  if (longLongValue)
  {
    v12 = [BrandAction alloc];
    v13 = [v9 objectForKeyedSubscript:@"MKPlaceBrandUserActivityName"];
    v14 = [(BrandAction *)v12 initWithName:v13 muid:longLongValue];

    [(MapsAction *)v14 setUserLocationAccuracy:kCLLocationAccuracyKilometer];
    v15 = [[RichMapsActivity alloc] initWithMapsAction:v14];
    [(UserActivityHandlingTask *)self taskFinished:v15];
  }

  else
  {
    v16 = sub_100005610();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "_PlaceBrandActivityHandlingTask no branID", buf, 2u);
    }

    [(RichMapsActivityCreatingTaskImpl *)self taskFailed];
  }
}

@end