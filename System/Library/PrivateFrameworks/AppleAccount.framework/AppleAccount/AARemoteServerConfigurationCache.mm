@interface AARemoteServerConfigurationCache
+ (AARemoteServerConfigurationCache)cacheWithConfiguration:(id)configuration response:(id)response;
- (AARemoteServerConfigurationCache)init;
- (AARemoteServerConfigurationCache)initWithConfiguration:(id)configuration response:(id)response;
@end

@implementation AARemoteServerConfigurationCache

+ (AARemoteServerConfigurationCache)cacheWithConfiguration:(id)configuration response:(id)response
{
  responseCopy = response;
  configurationCopy = configuration;
  v8 = [[self alloc] initWithConfiguration:configurationCopy response:responseCopy];

  return v8;
}

- (AARemoteServerConfigurationCache)init
{
  [(AARemoteServerConfigurationCache *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (AARemoteServerConfigurationCache)initWithConfiguration:(id)configuration response:(id)response
{
  configurationCopy = configuration;
  responseCopy = response;
  v10 = responseCopy;
  if (configurationCopy)
  {
    if (responseCopy)
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
    date = [MEMORY[0x1E695DF00] date];
    creationDate = v11->_creationDate;
    v11->_creationDate = date;

    objc_storeStrong(&v11->_configuration, configuration);
    objc_storeStrong(&v11->_response, response);
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