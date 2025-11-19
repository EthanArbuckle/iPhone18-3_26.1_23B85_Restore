@interface AAAppState
- (AAAppState)initWithInstalled:(BOOL)a3 isRestricted:(BOOL)a4;
@end

@implementation AAAppState

- (AAAppState)initWithInstalled:(BOOL)a3 isRestricted:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = AAAppState;
  result = [(AAAppState *)&v7 init];
  if (result)
  {
    result->_isInstalled = a3;
    result->_isRestricted = a4;
  }

  return result;
}

@end