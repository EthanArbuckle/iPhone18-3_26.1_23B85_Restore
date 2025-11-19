@interface CNCardDowntimeWhitelistGroup
- (id)editingItems;
- (id)policyForItem:(id)a3;
@end

@implementation CNCardDowntimeWhitelistGroup

- (id)policyForItem:(id)a3
{
  v3 = objc_alloc_init(CNReadonlyPolicy);

  return v3;
}

- (id)editingItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695CE70];
  v4 = [(CNCardGroup *)self contact];
  LODWORD(v3) = [v3 isWhitelistedContact:v4];

  if (v3)
  {
    v5 = [(CNCardGroup *)self contact];
    v6 = [(CNPropertyGroupItem *)CNCardDowntimeWhitelistGroupItem propertyGroupItemWithLabel:&stru_1F0CE7398 group:self contact:v5];
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