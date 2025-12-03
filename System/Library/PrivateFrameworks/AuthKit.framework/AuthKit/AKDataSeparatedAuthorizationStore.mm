@interface AKDataSeparatedAuthorizationStore
- (AKDataSeparatedAuthorizationStore)initWithContainerPath:(id)path withSandboxToken:(char *)token;
- (void)perform:(id)perform;
- (void)prepare;
@end

@implementation AKDataSeparatedAuthorizationStore

- (AKDataSeparatedAuthorizationStore)initWithContainerPath:(id)path withSandboxToken:(char *)token
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  tokenCopy = token;
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKDataSeparatedAuthorizationStore;
  selfCopy = [(AKAuthorizationStore *)&v8 initWithPath:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AKDataSeparatedAuthorizationStore *)selfCopy setContainerPath:location[0]];
    [(AKDataSeparatedAuthorizationStore *)selfCopy setToken:tokenCopy];
  }

  v6 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)prepare
{
  selfCopy = self;
  oslog[1] = a2;
  if ([(AKDataSeparatedAuthorizationStore *)self token])
  {
    [(AKDataSeparatedAuthorizationStore *)selfCopy token];
    v2 = sandbox_extension_consume();
  }

  else
  {
    v2 = -1;
  }

  selfCopy->handle = v2;
  if (selfCopy->handle <= 0)
  {
    oslog[0] = _AKLogSiwa();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100036FE8(v5, selfCopy->handle);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "DS:Problem getting access to data container, sandbox consume handle returned %lld, show error", v5, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }
}

- (void)perform:(id)perform
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, perform);
  [(AKDataSeparatedAuthorizationStore *)selfCopy prepare];
  v3.receiver = selfCopy;
  v3.super_class = AKDataSeparatedAuthorizationStore;
  [(AKAuthorizationStore *)&v3 perform:location[0]];
  [(AKDataSeparatedAuthorizationStore *)selfCopy cleanup];
  objc_storeStrong(location, 0);
}

@end