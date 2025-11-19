@interface AuthBrokerAgentXPCListenerDelegate
- (AuthBrokerAgentXPCListenerDelegate)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)dealloc;
@end

@implementation AuthBrokerAgentXPCListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  [a4 setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &OBJC_PROTOCOL___AuthBrokerQuery)}];
  if (self)
  {
    Property = objc_getProperty(self, v6, 16, 1);
  }

  else
  {
    Property = 0;
  }

  [a4 setExportedObject:Property];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = a4;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Resuming newConnection %@", &v9, 0xCu);
  }

  [a4 resume];
  return 1;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AuthBrokerAgentXPCListenerDelegate;
  [(AuthBrokerAgentXPCListenerDelegate *)&v3 dealloc];
}

- (AuthBrokerAgentXPCListenerDelegate)init
{
  v4.receiver = self;
  v4.super_class = AuthBrokerAgentXPCListenerDelegate;
  v2 = [(AuthBrokerAgentXPCListenerDelegate *)&v4 init];
  if (v2)
  {
    v2->_requestHandler = objc_opt_new();
  }

  return v2;
}

@end