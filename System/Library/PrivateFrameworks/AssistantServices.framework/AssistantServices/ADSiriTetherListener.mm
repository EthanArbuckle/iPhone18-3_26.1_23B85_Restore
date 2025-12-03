@interface ADSiriTetherListener
- (ADSiriTetherListener)init;
- (void)_handleNewConnection:(id)connection;
- (void)listen;
@end

@implementation ADSiriTetherListener

- (void)_handleNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = kAssistantClientEntitlement;
  [kAssistantClientEntitlement UTF8String];
  v6 = xpc_connection_copy_entitlement_value();
  v7 = v6;
  if (v6 && xpc_BOOL_get_value(v6))
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[ADSiriTetherListener _handleNewConnection:]";
      v15 = 2048;
      v16 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Tether attached %p", buf, 0x16u);
    }

    xpc_connection_set_target_queue(connectionCopy, self->_queue);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1002DA260;
    handler[3] = &unk_10051A6B0;
    v9 = connectionCopy;
    v12 = v9;
    xpc_connection_set_event_handler(v9, handler);
    xpc_connection_activate(v9);
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[ADSiriTetherListener _handleNewConnection:]";
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Client missing entitlement %@", buf, 0x16u);
    }

    xpc_connection_cancel(connectionCopy);
  }
}

- (void)listen
{
  if (self->_xpcListener)
  {
    objc_initWeak(&location, self);
    xpcListener = self->_xpcListener;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1002DA518;
    v4[3] = &unk_10051A688;
    objc_copyWeak(&v5, &location);
    xpc_connection_set_event_handler(xpcListener, v4);
    xpc_connection_activate(self->_xpcListener);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (ADSiriTetherListener)init
{
  v13.receiver = self;
  v13.super_class = ADSiriTetherListener;
  v2 = [(ADSiriTetherListener *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create(0, v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = +[AFInstanceContext currentContext];
    v7 = [v6 createXPCListenerForMachService:AFSiriTetherMachService targetQueue:v2->_queue flags:0];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v7;

    if (!v2->_xpcListener)
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v11 = v9;
        v12 = +[AFInstanceContext currentContext];
        *buf = 136315394;
        v15 = "[ADSiriTetherListener init]";
        v16 = 2112;
        v17 = v12;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Unable to create XPC listener from %@.", buf, 0x16u);
      }
    }
  }

  return v2;
}

@end