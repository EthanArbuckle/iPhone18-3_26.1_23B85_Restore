@interface CNGroupIdentity
- (id)initGroupWithName:(id)name photo:(id)photo contacts:(id)contacts identifier:(id)identifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)numberOfContacts;
@end

@implementation CNGroupIdentity

- (int64_t)numberOfContacts
{
  contacts = [(CNGroupIdentity *)self contacts];
  v3 = [contacts count];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CNGroupIdentity alloc];
  groupName = [(CNGroupIdentity *)self groupName];
  groupPhoto = [(CNGroupIdentity *)self groupPhoto];
  contacts = [(CNGroupIdentity *)self contacts];
  identifier = [(CNGroupIdentity *)self identifier];
  v9 = [(CNGroupIdentity *)v4 initGroupWithName:groupName photo:groupPhoto contacts:contacts identifier:identifier];

  return v9;
}

- (id)initGroupWithName:(id)name photo:(id)photo contacts:(id)contacts identifier:(id)identifier
{
  nameCopy = name;
  photoCopy = photo;
  contactsCopy = contacts;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = CNGroupIdentity;
  v15 = [(CNGroupIdentity *)&v19 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_groupName, name);
    objc_storeStrong(p_isa + 2, photo);
    objc_storeStrong(p_isa + 3, contacts);
    objc_storeStrong(p_isa + 4, identifier);
    v17 = p_isa;
  }

  return p_isa;
}

@end