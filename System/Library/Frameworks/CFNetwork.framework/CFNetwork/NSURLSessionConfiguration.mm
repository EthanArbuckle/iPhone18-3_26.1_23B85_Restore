@interface NSURLSessionConfiguration
+ (NSURLSessionConfiguration)defaultSessionConfiguration;
+ (NSURLSessionConfiguration)ephemeralSessionConfiguration;
+ (id)_defaultProtocolClasses;
+ (void)initialize;
- (BOOL)proxiesRequireNWLoader;
- (_NSHSTSStorage)_hstsStorage;
- (id).cxx_construct;
@end

@implementation NSURLSessionConfiguration

+ (NSURLSessionConfiguration)ephemeralSessionConfiguration
{
  v2 = [[NSURLSessionConfiguration alloc] initWithDisposition:?];
  if (newCookieStorageEnabled(void)::onceToken != -1)
  {
    dispatch_once(&newCookieStorageEnabled(void)::onceToken, &__block_literal_global_1108);
  }

  if (newCookieStorageEnabled(void)::enabled == 1)
  {
    initMemoryCookieStore = [[NSHTTPCookieStorageToCookie2Storage alloc] initMemoryCookieStore];
  }

  else
  {
    initMemoryCookieStore = objc_opt_new();
  }

  [v2 setHTTPCookieStorage:initMemoryCookieStore];
  if (dyld_program_sdk_at_least())
  {
    v4 = 512000;
  }

  else
  {
    v4 = 0;
  }

  [v2 setURLCache:{-[NSURLCache initWithMemoryCapacity:diskCapacity:diskPath:]([NSURLCache alloc], "initWithMemoryCapacity:diskCapacity:diskPath:", v4, 0, 0)}];
  [v2 setURLCredentialStorage:objc_opt_new()];

  return v2;
}

- (BOOL)proxiesRequireNWLoader
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  proxyConfigurations = self->_proxyConfigurations;
  v3 = [(NSArray *)proxyConfigurations countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(proxyConfigurations);
        }

        if (nw_proxy_config_stack_requires_http_protocols())
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSArray *)proxyConfigurations countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 8) = xmmword_197EE16D0;
  *(self + 24) = xmmword_197EE16E0;
  *(self + 5) = 0x7800000078;
  return self;
}

+ (id)_defaultProtocolClasses
{
  gotLoadHelper_x8__SOErrorDomain(v2);
  v4 = MEMORY[0x1E695DEC8];
  if (!*(v3 + 328) || (AppSSO::AppSSODisabled & 1) != 0)
  {
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    return [v4 arrayWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0, v15}];
  }

  else
  {
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    return [v4 arrayWithObjects:{v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  }
}

+ (void)initialize
{
  if (objc_opt_self() == self)
  {
    [MEMORY[0x1E696ACD0] setClass:objc_opt_class() forClassName:@"__NSCFURLSessionConfiguration"];
    [MEMORY[0x1E696ACD0] setClass:objc_opt_class() forClassName:@"__NSCFURLSessionConfiguration_Mutable"];
    v2 = MEMORY[0x1E696ACD0];
    v3 = objc_opt_class();

    [v2 setClass:v3 forClassName:@"__NSCFURLSessionConfiguration_Immutable"];
  }
}

char *__56__NSURLSessionConfiguration_defaultSessionConfiguration__block_invoke()
{
  result = [[NSURLSessionConfiguration alloc] initWithDisposition:?];
  +[NSURLSessionConfiguration defaultSessionConfiguration]::sDefaultConfiguration = result;
  return result;
}

+ (NSURLSessionConfiguration)defaultSessionConfiguration
{
  if (+[NSURLSessionConfiguration defaultSessionConfiguration]::sOnce != -1)
  {
    dispatch_once(&+[NSURLSessionConfiguration defaultSessionConfiguration]::sOnce, &__block_literal_global_22864);
  }

  v2 = [+[NSURLSessionConfiguration defaultSessionConfiguration]::sDefaultConfiguration copy];

  return v2;
}

- (_NSHSTSStorage)_hstsStorage
{
  if (!self->_phskip_hstsStorageSet)
  {
    if (self->_disposition == qword_1EE5B0CA8)
    {
      initInMemoryStore = [[_NSHSTSStorage alloc] initInMemoryStore];
    }

    else
    {
      initInMemoryStore = +[_NSHSTSStorage sharedPersistentStore];
    }

    [(NSURLSessionConfiguration *)self set_hstsStorage:initInMemoryStore];
  }

  return [(NSURLSessionConfiguration *)self _phskip_hstsStorage];
}

@end