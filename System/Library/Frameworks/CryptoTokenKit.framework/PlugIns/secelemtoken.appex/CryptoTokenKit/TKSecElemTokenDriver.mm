@interface TKSecElemTokenDriver
- (id)tokenDriver:(id)driver tokenForConfiguration:(id)configuration error:(id *)error;
@end

@implementation TKSecElemTokenDriver

- (id)tokenDriver:(id)driver tokenForConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v8 = [TKSecElemToken alloc];
  instanceID = [configurationCopy instanceID];

  v10 = [(TKSecElemToken *)v8 initWithTokenDriver:self instanceID:instanceID error:error];

  return v10;
}

@end