@interface CNCardGroupMembershipGroup
- (id)displayItems;
- (id)editingItems;
- (id)groupItemsToDisplayForEditing;
- (id)parentGroupItems;
- (id)title;
@end

@implementation CNCardGroupMembershipGroup

- (id)groupItemsToDisplayForEditing
{
  v3 = [(CNCardGroupMembershipGroup *)self groupsToDisplayForEditing];

  if (v3)
  {
    v4 = [(CNCardGroupMembershipGroup *)self groupsToDisplayForEditing];
    v5 = [v4 _cn_map:&__block_literal_global_14_31459];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

CNCardGroupMembershipGroupItem *__59__CNCardGroupMembershipGroup_groupItemsToDisplayForEditing__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNCardGroupMembershipGroupItem alloc] initWithGroup:v2];

  return v3;
}

- (id)parentGroupItems
{
  v3 = [(CNCardGroupMembershipGroup *)self parentGroups];

  if (v3)
  {
    v4 = [(CNCardGroupMembershipGroup *)self parentGroups];
    v5 = [v4 _cn_map:&__block_literal_global_31463];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

CNCardGroupMembershipGroupItem *__46__CNCardGroupMembershipGroup_parentGroupItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNCardGroupMembershipGroupItem alloc] initWithGroup:v2];

  return v3;
}

- (id)editingItems
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CNCardGroupMembershipGroup *)self groupItemsToDisplayForEditing];
  [v3 addObjectsFromArray:v4];
  v5 = objc_alloc_init(CNCardGroupMembershipPlaceholderGroupItem);
  [v3 addObject:v5];

  return v3;
}

- (id)displayItems
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CNCardGroupMembershipGroup *)self parentGroupItems];
  [v3 addObjectsFromArray:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(CNCardGroup *)self actionItems];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)title
{
  v3 = *MEMORY[0x1E6996530];
  v4 = [(CNCardGroupMembershipGroup *)self parentGroups];
  LOBYTE(v3) = (*(v3 + 16))(v3, v4);

  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CNCardGroupMembershipGroup *)self parentGroups];
    v7 = [v6 count];

    v8 = CNContactsUIBundle();
    v9 = v8;
    if (v7 == 1)
    {
      v10 = @"GROUP_MEMBERSHIP_TABLE_SECTION_TITLE_ONE";
    }

    else
    {
      v10 = @"GROUP_MEMBERSHIP_TABLE_SECTION_TITLE_MANY";
    }

    v5 = [v8 localizedStringForKey:v10 value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v5;
}

@end