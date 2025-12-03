@interface AAAppState
- (AAAppState)initWithInstalled:(BOOL)installed isRestricted:(BOOL)restricted;
@end

@implementation AAAppState

- (AAAppState)initWithInstalled:(BOOL)installed isRestricted:(BOOL)restricted
{
  v7.receiver = self;
  v7.super_class = AAAppState;
  result = [(AAAppState *)&v7 init];
  if (result)
  {
    result->_isInstalled = installed;
    result->_isRestricted = restricted;
  }

  return result;
}

@end