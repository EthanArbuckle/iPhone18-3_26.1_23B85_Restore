@interface CNAccountsAndGroupsItem
- (BOOL)isEditable;
- (CNAccountsAndGroupsItem)initWithType:(int64_t)type nameProvider:(id)provider;
- (CNAccountsAndGroupsItem)parentItem;
- (NSString)contactCountString;
- (NSString)name;
- (UIImage)groupSymbol;
- (id)arrayForDisplay:(BOOL)display;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)localizedCompare:(id)compare;
- (void)setChildItems:(id)items;
- (void)setSelected:(BOOL)selected;
- (void)setSelected:(BOOL)selected affectingChildren:(BOOL)children;
@end

@implementation CNAccountsAndGroupsItem

- (CNAccountsAndGroupsItem)parentItem
{
  WeakRetained = objc_loadWeakRetained(&self->_parentItem);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNAccountsAndGroupsItem alloc];
  type = [(CNAccountsAndGroupsItem *)self type];
  nameProvider = [(CNAccountsAndGroupsItem *)self nameProvider];
  v7 = [(CNAccountsAndGroupsItem *)v4 initWithType:type nameProvider:nameProvider];

  containerIdentifier = [(CNAccountsAndGroupsItem *)self containerIdentifier];
  [(CNAccountsAndGroupsItem *)v7 setContainerIdentifier:containerIdentifier];

  [(CNAccountsAndGroupsItem *)v7 setContactCount:[(CNAccountsAndGroupsItem *)self contactCount]];
  childItems = [(CNAccountsAndGroupsItem *)self childItems];
  [(CNAccountsAndGroupsItem *)v7 setChildItems:childItems];

  parentItem = [(CNAccountsAndGroupsItem *)self parentItem];
  [(CNAccountsAndGroupsItem *)v7 setParentItem:parentItem];

  [(CNAccountsAndGroupsItem *)v7 setBypassIfUnique:[(CNAccountsAndGroupsItem *)self bypassIfUnique]];
  [(CNAccountsAndGroupsItem *)v7 setSoloSelect:[(CNAccountsAndGroupsItem *)self soloSelect]];
  identifier = [(CNAccountsAndGroupsItem *)self identifier];
  [(CNAccountsAndGroupsItem *)v7 setIdentifier:identifier];

  [(CNAccountsAndGroupsItem *)v7 setContainerType:[(CNAccountsAndGroupsItem *)self containerType]];
  [(CNAccountsAndGroupsItem *)v7 setSelected:[(CNAccountsAndGroupsItem *)self isSelected]];
  return v7;
}

- (UIImage)groupSymbol
{
  type = [(CNAccountsAndGroupsItem *)self type];
  v3 = 0;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_15;
      }

      currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
      featureFlags = [currentEnvironment featureFlags];
      v6 = [featureFlags isFeatureEnabled:29];

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

    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags2 = [currentEnvironment2 featureFlags];
    v14 = [featureFlags2 isFeatureEnabled:29];

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

  if (type == 2 || type == 4)
  {
    currentEnvironment3 = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags3 = [currentEnvironment3 featureFlags];
    v10 = [featureFlags3 isFeatureEnabled:29];

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
  identifier = [(CNAccountsAndGroupsItem *)self identifier];
  v4 = [identifier isEqualToString:@"groupPlaceholderIdentifier"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    type = [(CNAccountsAndGroupsItem *)self type];
    v5 = 0;
    if (type <= 4 && type != 3)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNAccountsAndGroupsItem contactCount](self, "contactCount")}];
      v5 = [v7 localizedStringWithFormat:@"%@", v8];
    }
  }

  return v5;
}

- (int64_t)localizedCompare:(id)compare
{
  compareCopy = compare;
  name = [(CNAccountsAndGroupsItem *)self name];
  name2 = [compareCopy name];

  v7 = [name localizedStandardCompare:name2];
  return v7;
}

- (NSString)name
{
  if (!self->_name)
  {
    nameProvider = [(CNAccountsAndGroupsItem *)self nameProvider];

    if (nameProvider)
    {
      nameProvider2 = [(CNAccountsAndGroupsItem *)self nameProvider];
      v5 = nameProvider2[2]();
      name = self->_name;
      self->_name = v5;
    }
  }

  v7 = self->_name;

  return v7;
}

- (id)arrayForDisplay:(BOOL)display
{
  displayCopy = display;
  v22 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (![(CNAccountsAndGroupsItem *)self shouldHide])
  {
    [array addObject:self];
  }

  childItems = [(CNAccountsAndGroupsItem *)self childItems];
  v7 = childItems;
  if (displayCopy && [childItems count] == 1)
  {
    firstObject = [v7 firstObject];
    if ([firstObject bypassIfUnique])
    {
      childItems2 = [firstObject childItems];

      v7 = childItems2;
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

        v15 = [*(*(&v17 + 1) + 8 * i) arrayForDisplay:{displayCopy, v17}];
        [array addObjectsFromArray:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return array;
}

- (void)setSelected:(BOOL)selected
{
  if (self->_selected == selected)
  {
    return;
  }

  selectedCopy = selected;
  WeakRetained = objc_loadWeakRetained(&self->_parentItem);
  if (![WeakRetained isSelected])
  {

    goto LABEL_6;
  }

  soloSelect = [(CNAccountsAndGroupsItem *)self soloSelect];

  if (!soloSelect)
  {
LABEL_6:
    selfCopy2 = self;
    v9 = selectedCopy;
    v10 = 1;
    goto LABEL_7;
  }

  v7 = objc_loadWeakRetained(&self->_parentItem);
  [v7 setSelected:0 affectingChildren:1];

  selfCopy2 = self;
  v9 = 1;
  v10 = 0;
LABEL_7:

  [(CNAccountsAndGroupsItem *)selfCopy2 setSelected:v9 affectingChildren:v10];
}

- (void)setSelected:(BOOL)selected affectingChildren:(BOOL)children
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_selected != selected)
  {
    childrenCopy = children;
    selectedCopy = selected;
    [(CNAccountsAndGroupsItem *)self willChangeValueForKey:@"selected"];
    self->_selected = selectedCopy;
    if (!self->_type)
    {
      v7 = CNContactsUIBundle();
      v8 = v7;
      if (selectedCopy)
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
    if (childrenCopy)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      childItems = [(CNAccountsAndGroupsItem *)self childItems];
      v12 = [childItems countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(childItems);
            }

            [*(*(&v17 + 1) + 8 * v15++) setSelected:selectedCopy affectingChildren:1];
          }

          while (v13 != v15);
          v13 = [childItems countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v13);
      }
    }

    if (!selectedCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_parentItem);
      [WeakRetained setSelected:0 affectingChildren:0];
    }
  }
}

- (void)setChildItems:(id)items
{
  v16 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (self->_childItems != itemsCopy)
  {
    objc_storeStrong(&self->_childItems, items);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = itemsCopy;
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

- (CNAccountsAndGroupsItem)initWithType:(int64_t)type nameProvider:(id)provider
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CNAccountsAndGroupsItem;
  v7 = [(CNAccountsAndGroupsItem *)&v12 init];
  v7->_type = type;
  v8 = providerCopy;
  if (!providerCopy)
  {
    if (type)
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