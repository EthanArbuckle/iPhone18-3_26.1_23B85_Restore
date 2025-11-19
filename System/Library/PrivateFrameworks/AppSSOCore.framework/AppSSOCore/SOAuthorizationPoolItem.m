@interface SOAuthorizationPoolItem
- (SOAuthorizationPoolItem)initWithAuthorization:(id)a3 delegate:(id)a4;
@end

@implementation SOAuthorizationPoolItem

- (SOAuthorizationPoolItem)initWithAuthorization:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SOAuthorizationPoolItem;
  v9 = [(SOAuthorizationPoolItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authorization, a3);
    objc_storeStrong(&v10->_delegate, a4);
  }

  return v10;
}

@end