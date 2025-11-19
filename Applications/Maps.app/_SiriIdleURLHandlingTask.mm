@interface _SiriIdleURLHandlingTask
- (void)performTask;
@end

@implementation _SiriIdleURLHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "_SiriIdleURLHandlingTask has been run", v4, 2u);
  }

  [(RichMapsActivityCreatingTaskImpl *)self taskFailed];
}

@end