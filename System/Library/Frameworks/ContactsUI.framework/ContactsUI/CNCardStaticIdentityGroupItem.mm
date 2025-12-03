@interface CNCardStaticIdentityGroupItem
- (CNCardStaticIdentityGroupItem)initWithIdentity:(id)identity;
@end

@implementation CNCardStaticIdentityGroupItem

- (CNCardStaticIdentityGroupItem)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = CNCardStaticIdentityGroupItem;
  v6 = [(CNCardStaticIdentityGroupItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identity, identity);
  }

  return v7;
}

@end