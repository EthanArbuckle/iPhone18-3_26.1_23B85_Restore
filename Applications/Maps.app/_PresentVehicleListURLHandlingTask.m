@interface _PresentVehicleListURLHandlingTask
- (void)performTask;
@end

@implementation _PresentVehicleListURLHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "_SiriIdleURLHandlingTask has been run", v6, 2u);
  }

  v4 = objc_alloc_init(PresentVehicleListAction);
  v5 = [[RichMapsActivity alloc] initWithMapsAction:v4];
  [(RichMapsActivityCreatingTaskImpl *)self taskFinished:v5];
}

@end