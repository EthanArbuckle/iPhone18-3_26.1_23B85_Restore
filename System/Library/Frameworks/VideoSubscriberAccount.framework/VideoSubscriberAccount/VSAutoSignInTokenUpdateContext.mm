@interface VSAutoSignInTokenUpdateContext
- (VSAutoSignInTokenUpdateContext)initWithAuthorization:(int64_t)a3;
@end

@implementation VSAutoSignInTokenUpdateContext

- (VSAutoSignInTokenUpdateContext)initWithAuthorization:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = VSAutoSignInTokenUpdateContext;
  result = [(VSAutoSignInTokenUpdateContext *)&v5 init];
  if (result)
  {
    result->_authorization = a3;
  }

  return result;
}

@end