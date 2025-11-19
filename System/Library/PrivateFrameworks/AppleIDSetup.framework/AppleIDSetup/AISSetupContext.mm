@interface AISSetupContext
- (AISSetupContext)init;
@end

@implementation AISSetupContext

- (AISSetupContext)init
{
  v3.receiver = self;
  v3.super_class = AISSetupContext;
  result = [(AISSetupContext *)&v3 init];
  if (result)
  {
    result->_isPreEstablishedClient = 0;
    result->_forceReplacePrimaryUser = 0;
  }

  return result;
}

@end