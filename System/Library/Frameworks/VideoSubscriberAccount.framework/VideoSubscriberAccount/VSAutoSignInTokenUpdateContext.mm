@interface VSAutoSignInTokenUpdateContext
- (VSAutoSignInTokenUpdateContext)initWithAuthorization:(int64_t)authorization;
@end

@implementation VSAutoSignInTokenUpdateContext

- (VSAutoSignInTokenUpdateContext)initWithAuthorization:(int64_t)authorization
{
  v5.receiver = self;
  v5.super_class = VSAutoSignInTokenUpdateContext;
  result = [(VSAutoSignInTokenUpdateContext *)&v5 init];
  if (result)
  {
    result->_authorization = authorization;
  }

  return result;
}

@end