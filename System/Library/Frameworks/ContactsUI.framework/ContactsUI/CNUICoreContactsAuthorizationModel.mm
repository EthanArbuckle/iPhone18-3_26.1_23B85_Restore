@interface CNUICoreContactsAuthorizationModel
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (CNUICoreContactsAuthorizationModel)init;
- (CNUICoreContactsAuthorizationModel)initWithCoder:(id)a3;
- (CNUICoreContactsAuthorizationModel)initWithItems:(id)a3;
- (NSArray)bundleIdentifiers;
- (NSArray)changedItems;
- (NSArray)remoteItems;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)itemWithMatchingBundleIdentifier:(id)a3;
- (id)modelByCopyingIconsOfRemoteItemsFromModel:(id)a3;
- (id)modelByCopyingItemsWithBundleIdentifier:(id)a3;
- (unint64_t)hash;
@end

@implementation CNUICoreContactsAuthorizationModel

- (id)modelByCopyingIconsOfRemoteItemsFromModel:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreContactsAuthorizationModel *)self items];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__CNUICoreContactsAuthorizationModel_modelByCopyingIconsOfRemoteItemsFromModel___block_invoke;
  v10[3] = &unk_1E74E1BA0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 _cn_map:v10];

  v8 = [[CNUICoreContactsAuthorizationModel alloc] initWithItems:v7];

  return v8;
}

id __80__CNUICoreContactsAuthorizationModel_modelByCopyingIconsOfRemoteItemsFromModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bundleIdentifier];
  v6 = [v4 itemWithMatchingBundleIdentifier:v5];

  if (v6)
  {
    v7 = [v6 icon];
    v8 = [v3 itemBySettingIcon:v7];
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

- (id)modelByCopyingItemsWithBundleIdentifier:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNUICoreContactsAuthorizationModel *)self itemWithMatchingBundleIdentifier:a3];
  v4 = [CNUICoreContactsAuthorizationModel alloc];
  v5 = v4;
  if (v3)
  {
    v6 = [v3 copy];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [(CNUICoreContactsAuthorizationModel *)v5 initWithItems:v7];
  }

  else
  {
    v8 = [(CNUICoreContactsAuthorizationModel *)v4 initWithItems:MEMORY[0x1E695E0F0]];
  }

  return v8;
}

- (id)itemWithMatchingBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CNUICoreContactsAuthorizationModel *)self items];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__CNUICoreContactsAuthorizationModel_itemWithMatchingBundleIdentifier___block_invoke;
  v9[3] = &unk_1E74E1780;
  v10 = v4;
  v6 = v4;
  v7 = [v5 _cn_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __71__CNUICoreContactsAuthorizationModel_itemWithMatchingBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)isEmpty
{
  v2 = *MEMORY[0x1E6996530];
  v3 = [(CNUICoreContactsAuthorizationModel *)self items];
  LOBYTE(v2) = (*(v2 + 16))(v2, v3);

  return v2;
}

- (NSArray)bundleIdentifiers
{
  v2 = [(CNUICoreContactsAuthorizationModel *)self items];
  v3 = [v2 _cn_map:&__block_literal_global_23];

  return v3;
}

- (NSArray)remoteItems
{
  v2 = [(CNUICoreContactsAuthorizationModel *)self items];
  v3 = [v2 _cn_filter:&__block_literal_global_20];

  return v3;
}

- (NSArray)changedItems
{
  v2 = [(CNUICoreContactsAuthorizationModel *)self items];
  v3 = [v2 _cn_filter:&__block_literal_global_18];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNUICoreContactsAuthorizationModel *)self items];
  v5 = [v3 appendObject:v4 withName:@"items"];

  v6 = [v3 build];

  return v6;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  v3 = [(CNUICoreContactsAuthorizationModel *)self items];
  v4 = [v2 arrayHash:v3];

  return v4 + 527;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = -[CNUICoreContactsAuthorizationModel items](self, "items"), v6 = -[CNUICoreContactsAuthorizationModel items](v4, "items"), v5 | v6) && ![v5 isEqual:v6])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(CNUICoreContactsAuthorizationModel *)self items];
  v4 = [v3 _cn_map:&__block_literal_global_376];

  v5 = [[CNUICoreContactsAuthorizationModel alloc] initWithItems:v4];
  return v5;
}

id __51__CNUICoreContactsAuthorizationModel_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

- (CNUICoreContactsAuthorizationModel)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNUICoreContactsAuthorizationModel;
  v5 = [(CNUICoreContactsAuthorizationModel *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_items"];
    v10 = [v9 copy];
    items = v5->_items;
    v5->_items = v10;

    v12 = v5;
  }

  return v5;
}

- (CNUICoreContactsAuthorizationModel)initWithItems:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘items’ must be nonnull" userInfo:0];
    objc_exception_throw(v11);
  }

  v6 = v5;
  v12.receiver = self;
  v12.super_class = CNUICoreContactsAuthorizationModel;
  v7 = [(CNUICoreContactsAuthorizationModel *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_items, a3);
    v9 = v8;
  }

  return v8;
}

- (CNUICoreContactsAuthorizationModel)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

@end