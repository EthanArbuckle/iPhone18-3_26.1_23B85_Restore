@interface CNGroupIdentity
- (id)initGroupWithName:(id)a3 photo:(id)a4 contacts:(id)a5 identifier:(id)a6;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)numberOfContacts;
@end

@implementation CNGroupIdentity

- (int64_t)numberOfContacts
{
  v2 = [(CNGroupIdentity *)self contacts];
  v3 = [v2 count];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CNGroupIdentity alloc];
  v5 = [(CNGroupIdentity *)self groupName];
  v6 = [(CNGroupIdentity *)self groupPhoto];
  v7 = [(CNGroupIdentity *)self contacts];
  v8 = [(CNGroupIdentity *)self identifier];
  v9 = [(CNGroupIdentity *)v4 initGroupWithName:v5 photo:v6 contacts:v7 identifier:v8];

  return v9;
}

- (id)initGroupWithName:(id)a3 photo:(id)a4 contacts:(id)a5 identifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = CNGroupIdentity;
  v15 = [(CNGroupIdentity *)&v19 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_groupName, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    v17 = p_isa;
  }

  return p_isa;
}

@end