@interface ADFMIPListener
+ (id)sharedListener;
- (ADFMIPListener)init;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)startListening;
@end

@implementation ADFMIPListener

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v12 = "[ADFMIPListener connection:didReceiveIncomingMessage:]";
    v13 = 2112;
    v14 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
  }

  v8 = [v6 topic];
  v9 = [v8 isEqualToString:@"com.apple.icloud.fmip.voiceassistantsync"];

  if (v9)
  {
    v10 = [[NSString alloc] initWithFormat:@"%@%s", @"com.apple.icloud.fmip", ".siri_data_changed"];
    notify_post([v10 UTF8String]);
  }
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "[ADFMIPListener connection:didReceivePublicToken:]";
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s ", &v5, 0xCu);
  }
}

- (void)startListening
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002F3080;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (ADFMIPListener)init
{
  v10.receiver = self;
  v10.super_class = ADFMIPListener;
  v2 = [(ADFMIPListener *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ADFMIPListener", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [APSConnection alloc];
    v7 = [v6 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.aps.assistantd.fmip" queue:v2->_queue];
    connection = v2->_connection;
    v2->_connection = v7;
  }

  return v2;
}

+ (id)sharedListener
{
  if (qword_100590908 != -1)
  {
    dispatch_once(&qword_100590908, &stru_10051B050);
  }

  v3 = qword_100590910;

  return v3;
}

@end