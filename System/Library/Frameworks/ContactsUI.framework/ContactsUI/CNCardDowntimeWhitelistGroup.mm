@interface CNCardDowntimeWhitelistGroup
- (id)editingItems;
- (id)policyForItem:(id)item;
@end

@implementation CNCardDowntimeWhitelistGroup

- (id)policyForItem:(id)item
{
  v3 = objc_alloc_init(CNReadonlyPolicy);

  return v3;
}

- (id)editingItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695CE70];
  contact = [(CNCardGroup *)self contact];
  LODWORD(v3) = [v3 isWhitelistedContact:contact];

  if (v3)
  {
    contact2 = [(CNCardGroup *)self contact];
    v6 = [(CNPropertyGroupItem *)CNCardDowntimeWhitelistGroupItem propertyGroupItemWithLabel:&stru_1F0CE7398 group:self contact:contact2];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end