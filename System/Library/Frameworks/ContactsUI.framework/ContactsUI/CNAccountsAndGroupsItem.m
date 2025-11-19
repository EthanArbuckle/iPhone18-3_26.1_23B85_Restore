@interface CNAccountsAndGroupsItem
- (BOOL)isEditable;
- (CNAccountsAndGroupsItem)initWithType:(int64_t)a3 nameProvider:(id)a4;
- (CNAccountsAndGroupsItem)parentItem;
- (NSString)contactCountString;
- (NSString)name;
- (UIImage)groupSymbol;
- (id)arrayForDisplay:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)localizedCompare:(id)a3;
- (void)setChildItems:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelected:(BOOL)a3 affectingChildren:(BOOL)a4;
@end

@implementation CNAccountsAndGroupsItem

- (CNAccountsAndGroupsItem)parentItem
{
  WeakRetained = objc_loadWeakRetained(&self->_parentItem);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNAccountsAndGroupsItem alloc];
  v5 = [(CNAccountsAndGroupsItem *)self type];
  v6 = [(CNAccountsAndGroupsItem *)self nameProvider];
  v7 = [(CNAccountsAndGroupsItem *)v4 initWithType:v5 nameProvider:v6];

  v8 = [(CNAccountsAndGroupsItem *)self containerIdentifier];
  [(CNAccountsAndGroupsItem *)v7 setContainerIdentifier:v8];

  [(CNAccountsAndGroupsItem *)v7 setContactCount:[(CNAccountsAndGroupsItem *)self contactCount]];
  v9 = [(CNAccountsAndGroupsItem *)self childItems];
  [(CNAccountsAndGroupsItem *)v7 setChildItems:v9];

  v10 = [(CNAccountsAndGroupsItem *)self parentItem];
  [(CNAccountsAndGroupsItem *)v7 setParentItem:v10];

  [(CNAccountsAndGroupsItem *)v7 setBypassIfUnique:[(CNAccountsAndGroupsItem *)self bypassIfUnique]];
  [(CNAccountsAndGroupsItem *)v7 setSoloSelect:[(CNAccountsAndGroupsItem *)self soloSelect]];
  v11 = [(CNAccountsAndGroupsItem *)self identifier];
  [(CNAccountsAndGroupsItem *)v7 setIdentifier:v11];

  [(CNAccountsAndGroupsItem *)v7 setContainerType:[(CNAccountsAndGroupsItem *)self containerType]];
  [(CNAccountsAndGroupsItem *)v7 setSelected:[(CNAccountsAndGroupsItem *)self isSelected]];
  return v7;
}

- (UIImage)groupSymbol
{
  v2 = [(CNAccountsAndGroupsItem *)self type];
  v3 = 0;
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_15;
      }

      v4 = [MEMORY[0x1E69966E8] currentEnvironment];
      v5 = [v4 featureFlags];
      v6 = [v5 isFeatureEnabled:29];

      if ((v6 & 1) == 0)
      {
        v7 = MEMORY[0x1E69DCAB8];
LABEL_13:
        v11 = @"person.3";
        goto LABEL_14;
      }

LABEL_9:
      v3 = 0;
      goto LABEL_15;
    }

    v12 = [MEMORY[0x1E69966E8] currentEnvironment];
    v13 = [v12 featureFlags];
    v14 = [v13 isFeatureEnabled:29];

    v7 = MEMORY[0x1E69DCAB8];
    if (!v14)
    {
      goto LABEL_13;
    }

    v11 = @"person.2.fill";
LABEL_14:
    v3 = [v7 systemImageNamed:v11];
    goto LABEL_15;
  }

  if (v2 == 2 || v2 == 4)
  {
    v8 = [MEMORY[0x1E69966E8] currentEnvironment];
    v9 = [v8 featureFlags];
    v10 = [v9 isFeatureEnabled:29];

    if (v10)
    {
      goto LABEL_9;
    }

    v7 = MEMORY[0x1E69DCAB8];
    v11 = @"person.2";
    goto LABEL_14;
  }

LABEL_15:

  return v3;
}

- (NSString)contactCountString
{
  v3 = [(CNAccountsAndGroupsItem *)self identifier];
  v4 = [v3 isEqualToString:@"groupPlaceholderIdentifier"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CNAccountsAndGroupsItem *)self type];
    v5 = 0;
    if (v6 <= 4 && v6 != 3)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNAccountsAndGroupsItem contactCount](self, "contactCount")}];
      v5 = [v7 localizedStringWithFormat:@"%@", v8];
    }
  }

  return v5;
}

- (int64_t)localizedCompare:(id)a3
{
  v4 = a3;
  v5 = [(CNAccountsAndGroupsItem *)self name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (NSString)name
{
  if (!self->_name)
  {
    v3 = [(CNAccountsAndGroupsItem *)self nameProvider];

    if (v3)
    {
      v4 = [(CNAccountsAndGroupsItem *)self nameProvider];
      v5 = v4[2]();
      name = self->_name;
      self->_name = v5;
    }
  }

  v7 = self->_name;

  return v7;
}

- (id)arrayForDisplay:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  if (![(CNAccountsAndGroupsItem *)self shouldHide])
  {
    [v5 addObject:self];
  }

  v6 = [(CNAccountsAndGroupsItem *)self childItems];
  v7 = v6;
  if (v3 && [v6 count] == 1)
  {
    v8 = [v7 firstObject];
    if ([v8 bypassIfUnique])
    {
      v9 = [v8 childItems];

      v7 = v9;
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) arrayForDisplay:{v3, v17}];
        [v5 addObjectsFromArray:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected == a3)
  {
    return;
  }

  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentItem);
  if (![WeakRetained isSelected])
  {

    goto LABEL_6;
  }

  v6 = [(CNAccountsAndGroupsItem *)self soloSelect];

  if (!v6)
  {
LABEL_6:
    v8 = self;
    v9 = v3;
    v10 = 1;
    goto LABEL_7;
  }

  v7 = objc_loadWeakRetained(&self->_parentItem);
  [v7 setSelected:0 affectingChildren:1];

  v8 = self;
  v9 = 1;
  v10 = 0;
LABEL_7:

  [(CNAccountsAndGroupsItem *)v8 setSelected:v9 affectingChildren:v10];
}

- (void)setSelected:(BOOL)a3 affectingChildren:(BOOL)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_selected != a3)
  {
    v4 = a4;
    v5 = a3;
    [(CNAccountsAndGroupsItem *)self willChangeValueForKey:@"selected"];
    self->_selected = v5;
    if (!self->_type)
    {
      v7 = CNContactsUIBundle();
      v8 = v7;
      if (v5)
      {
        v9 = @"HIDE_ALL_CONTACTS";
      }

      else
      {
        v9 = @"SHOW_ALL_CONTACTS";
      }

      v10 = [v7 localizedStringForKey:v9 value:&stru_1F0CE7398 table:@"Localized"];
      [(CNAccountsAndGroupsItem *)self setName:v10];
    }

    [(CNAccountsAndGroupsItem *)self didChangeValueForKey:@"selected"];
    if (v4)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = [(CNAccountsAndGroupsItem *)self childItems];
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        do
        {
          v15 = 0;
          do
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v17 + 1) + 8 * v15++) setSelected:v5 affectingChildren:1];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v13);
      }
    }

    if (!v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_parentItem);
      [WeakRetained setSelected:0 affectingChildren:0];
    }
  }
}

- (void)setChildItems:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_childItems != v5)
  {
    objc_storeStrong(&self->_childItems, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * i) setParentItem:{self, v11}];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)isEditable
{
  if ([(CNAccountsAndGroupsItem *)self canRename])
  {
    return 1;
  }

  return [(CNAccountsAndGroupsItem *)self canDelete];
}

- (CNAccountsAndGroupsItem)initWithType:(int64_t)a3 nameProvider:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CNAccountsAndGroupsItem;
  v7 = [(CNAccountsAndGroupsItem *)&v12 init];
  v7->_type = a3;
  v8 = v6;
  if (!v6)
  {
    if (a3)
    {
      goto LABEL_4;
    }

    v8 = &__block_literal_global_31420;
  }

  v9 = [v8 copy];
  nameProvider = v7->_nameProvider;
  v7->_nameProvider = v9;

LABEL_4:
  return v7;
}

id __53__CNAccountsAndGroupsItem_initWithType_nameProvider___block_invoke()
{
  v0 = CNContactsUIBundle();
  v1 = [v0 localizedStringForKey:@"ALL_CONTACTS_FOR_ACCOUNT" value:&stru_1F0CE7398 table:@"Localized"];

  return v1;
}

@end