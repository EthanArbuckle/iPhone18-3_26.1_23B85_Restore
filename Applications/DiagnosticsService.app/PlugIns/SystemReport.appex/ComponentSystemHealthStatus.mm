@interface ComponentSystemHealthStatus
- (ComponentSystemHealthStatus)init;
- (id)systemHealthInfo;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentSystemHealthStatus

- (ComponentSystemHealthStatus)init
{
  v6.receiver = self;
  v6.super_class = ComponentSystemHealthStatus;
  v2 = [(ComponentSystemHealthStatus *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    systemHealthStatus = v2->_systemHealthStatus;
    v2->_systemHealthStatus = v3;
  }

  return v2;
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  systemHealthInfo = [(ComponentSystemHealthStatus *)self systemHealthInfo];
  if (systemHealthInfo)
  {
    [attributesCopy setObject:systemHealthInfo forKeyedSubscript:@"systemHealthInfo"];
  }
}

- (id)systemHealthInfo
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Making system health status async call.", buf, 2u);
  }

  v4 = dispatch_queue_create("systemHealthDiagnosticsQueue", &_dispatch_queue_attr_concurrent);
  v5 = dispatch_semaphore_create(0);
  *buf = 0;
  v17 = buf;
  v18 = 0x3032000000;
  v19 = sub_10002C52C;
  v20 = sub_10002C53C;
  v21 = 0;
  objc_initWeak(&location, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002C544;
  v11[3] = &unk_100090B80;
  objc_copyWeak(&v14, &location);
  v13 = buf;
  v6 = v5;
  v12 = v6;
  dispatch_async(v4, v11);
  v7 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 134217984;
      v23 = 0x4008000000000000;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "System health status retrieval timed out after %f seconds", v22, 0xCu);
    }
  }

  v9 = *(v17 + 5);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  return v9;
}

@end