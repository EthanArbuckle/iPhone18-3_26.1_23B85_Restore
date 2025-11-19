@interface AARemoteServerConfigurationCache
+ (AARemoteServerConfigurationCache)cacheWithConfiguration:(id)a3 response:(id)a4;
- (AARemoteServerConfigurationCache)init;
- (AARemoteServerConfigurationCache)initWithConfiguration:(id)a3 response:(id)a4;
@end

@implementation AARemoteServerConfigurationCache

+ (AARemoteServerConfigurationCache)cacheWithConfiguration:(id)a3 response:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithConfiguration:v7 response:v6];

  return v8;
}

- (AARemoteServerConfigurationCache)init
{
  [(AARemoteServerConfigurationCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (AARemoteServerConfigurationCache)initWithConfiguration:(id)a3 response:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AARemoteServerConfigurationCache initWithConfiguration:a2 response:self];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [AARemoteServerConfigurationCache initWithConfiguration:a2 response:self];
LABEL_3:
  v15.receiver = self;
  v15.super_class = AARemoteServerConfigurationCache;
  v11 = [(AARemoteServerConfigurationCache *)&v15 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E695DF00] date];
    creationDate = v11->_creationDate;
    v11->_creationDate = v12;

    objc_storeStrong(&v11->_configuration, a3);
    objc_storeStrong(&v11->_response, a4);
  }

  return v11;
}

- (void)initWithConfiguration:(uint64_t)a1 response:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AARemoteServerConfigurationCache.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
}

- (void)initWithConfiguration:(uint64_t)a1 response:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AARemoteServerConfigurationCache.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"response"}];
}

@end