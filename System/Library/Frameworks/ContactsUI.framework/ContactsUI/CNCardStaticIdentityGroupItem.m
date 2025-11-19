@interface CNCardStaticIdentityGroupItem
- (CNCardStaticIdentityGroupItem)initWithIdentity:(id)a3;
@end

@implementation CNCardStaticIdentityGroupItem

- (CNCardStaticIdentityGroupItem)initWithIdentity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNCardStaticIdentityGroupItem;
  v6 = [(CNCardStaticIdentityGroupItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identity, a3);
  }

  return v7;
}

@end