@interface SOAuthorizationPoolItem
- (SOAuthorizationPoolItem)initWithAuthorization:(id)authorization delegate:(id)delegate;
@end

@implementation SOAuthorizationPoolItem

- (SOAuthorizationPoolItem)initWithAuthorization:(id)authorization delegate:(id)delegate
{
  authorizationCopy = authorization;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SOAuthorizationPoolItem;
  v9 = [(SOAuthorizationPoolItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authorization, authorization);
    objc_storeStrong(&v10->_delegate, delegate);
  }

  return v10;
}

@end