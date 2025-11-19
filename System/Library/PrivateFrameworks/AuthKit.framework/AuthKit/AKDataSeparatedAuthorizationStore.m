@interface AKDataSeparatedAuthorizationStore
- (AKDataSeparatedAuthorizationStore)initWithContainerPath:(id)a3 withSandboxToken:(char *)a4;
- (void)perform:(id)a3;
- (void)prepare;
@end

@implementation AKDataSeparatedAuthorizationStore

- (AKDataSeparatedAuthorizationStore)initWithContainerPath:(id)a3 withSandboxToken:(char *)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AKDataSeparatedAuthorizationStore;
  v11 = [(AKAuthorizationStore *)&v8 initWithPath:location[0]];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    [(AKDataSeparatedAuthorizationStore *)v11 setContainerPath:location[0]];
    [(AKDataSeparatedAuthorizationStore *)v11 setToken:v9];
  }

  v6 = _objc_retain(v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (void)prepare
{
  v4 = self;
  oslog[1] = a2;
  if ([(AKDataSeparatedAuthorizationStore *)self token])
  {
    [(AKDataSeparatedAuthorizationStore *)v4 token];
    v2 = sandbox_extension_consume();
  }

  else
  {
    v2 = -1;
  }

  v4->handle = v2;
  if (v4->handle <= 0)
  {
    oslog[0] = _AKLogSiwa();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100036FE8(v5, v4->handle);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "DS:Problem getting access to data container, sandbox consume handle returned %lld, show error", v5, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }
}

- (void)perform:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKDataSeparatedAuthorizationStore *)v5 prepare];
  v3.receiver = v5;
  v3.super_class = AKDataSeparatedAuthorizationStore;
  [(AKAuthorizationStore *)&v3 perform:location[0]];
  [(AKDataSeparatedAuthorizationStore *)v5 cleanup];
  objc_storeStrong(location, 0);
}

@end