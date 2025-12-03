@interface _FileURLHandlingTask
- (void)performTask;
@end

@implementation _FileURLHandlingTask

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  v3 = [(URLHandlingTask *)self url];
  pathExtension = [v3 pathExtension];
  v5 = [pathExtension isEqual:@"navtrace"];

  if (!v5)
  {
    v12 = sub_100005610();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 0;
      v13 = "_FileURLHandlingTask can not play file (not a navtrace extension)";
      v14 = &v16;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
    }

LABEL_11:

    [(RichMapsActivityCreatingTaskImpl *)self taskFailed];
    return;
  }

  v6 = +[UIApplication sharedMapsDelegate];
  canPlayTrace = [v6 canPlayTrace];

  if (!canPlayTrace)
  {
    v12 = sub_100005610();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v13 = "_FileURLHandlingTask can not play traces";
      v14 = buf;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v8 = [OpenTraceAction alloc];
  v9 = [(URLHandlingTask *)self url];
  path = [v9 path];
  v15 = [(OpenTraceAction *)v8 initWithFilePath:path];

  v11 = [[RichMapsActivity alloc] initWithMapsAction:v15];
  [(RichMapsActivityCreatingTaskImpl *)self taskFinished:v11];
}

@end