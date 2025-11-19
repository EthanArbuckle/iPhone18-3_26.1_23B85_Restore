@interface JobManagerClient
- (JobManagerClient)initWithConnection:(id)a3;
@end

@implementation JobManagerClient

- (JobManagerClient)initWithConnection:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = JobManagerClient;
  v6 = [(XPCClient *)&v14 initWithConnection:v5];
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = [(XPCClient *)v6 clientID];
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%@]: Client connected: %@", buf, 0x16u);
    }

    objc_storeStrong(&v6->_connection, a3);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.appstored.JobManagerClient", v10);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v11;
  }

  return v6;
}

@end