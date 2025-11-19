@interface JSAFoundation
- (JSAFoundation)init;
- (void)_jsTimerFired:(id)a3;
@end

@implementation JSAFoundation

- (JSAFoundation)init
{
  v10.receiver = self;
  v10.super_class = JSAFoundation;
  v2 = [(JSAFoundation *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    jsTimers = v2->_jsTimers;
    v2->_jsTimers = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("com.apple.iBooks.JSAFoundation", v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)_jsTimerFired:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%p", v4];
  v6 = self->_jsTimers;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)self->_jsTimers objectForKey:v5];
  v8 = v7;
  if (v7 && ([v7 isRepeating] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_jsTimers removeObjectForKey:v5];
  }

  objc_sync_exit(v6);

  v9 = JSALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Timer fired: %@: %@", buf, 0x16u);
  }

  if (v8)
  {
    v10 = +[JSABridge sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_DBA0;
    v11[3] = &unk_B27E8;
    v12 = v8;
    [v10 enqueueBlock:v11 file:@"JSAFoundation.m" line:186];
  }
}

@end