@interface CNAccountsAndGroupsDataSource
- (BOOL)hasChanges;
- (BOOL)isFilterShowingItem:(id)a3;
- (BOOL)isTrivial;
- (BOOL)shouldShowAccount:(id)a3;
- (CNAccountsAndGroupsDataSource)initWithStore:(id)a3;
- (NSArray)sections;
- (id)allContactsForItem:(id)a3 keysToFetch:(id)a4;
- (id)allContactsForMainItem:(id)a3 keysToFetch:(id)a4;
- (id)containerIdentifierForItem:(id)a3;
- (id)groupIdentifierForGroupItem:(id)a3;
- (id)multiSelectFilter;
- (id)sectionForIdentifier:(id)a3;
- (id)sectionIdentifierForItem:(id)a3;
- (int64_t)contactCountForItem:(id)a3;
- (int64_t)contactCountForMainItem:(id)a3;
- (void)_applyFilter;
- (void)_reloadSections;
- (void)setFilter:(id)a3;
- (void)setFilterForItem:(id)a3;
- (void)setHidesSearchableSources:(BOOL)a3;
- (void)setServerFilterForItem:(id)a3;
- (void)updateRootItemSelection;
@end

@implementation CNAccountsAndGroupsDataSource

- (BOOL)isFilterShowingItem:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 type];
  v6 = 0;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_26;
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = [v4 childItems];
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v9)
      {
LABEL_16:
        v6 = 1;
LABEL_25:

        goto LABEL_26;
      }

      v10 = v9;
      v11 = *v23;
LABEL_10:
      v12 = 0;
      while (1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = [(CNContactStoreFilter *)self->_filter containerIdentifiers];
        v15 = [v13 identifier];
        v16 = [v14 containsObject:v15];

        if (!v16)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v10)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      v8 = [(CNContactStoreFilter *)self->_filter containerIdentifiers];
      if (!v8)
      {
        v20 = [(CNContactStoreFilter *)self->_filter groupIdentifiers];
        v6 = v20 == 0;

        goto LABEL_25;
      }
    }

    v6 = 0;
    goto LABEL_25;
  }

  switch(v5)
  {
    case 2:
      filter = self->_filter;
LABEL_19:
      v7 = [(CNContactStoreFilter *)filter containerIdentifiers];
      goto LABEL_20;
    case 3:
      filter = self->_serverFilter;
      if (!filter)
      {
        v6 = 0;
        break;
      }

      goto LABEL_19;
    case 4:
      v7 = [(CNContactStoreFilter *)self->_filter groupIdentifiers];
LABEL_20:
      v18 = v7;
      v19 = [v4 identifier];
      v6 = [v18 containsObject:v19];

      break;
  }

LABEL_26:

  return v6;
}

- (int64_t)contactCountForMainItem:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 type] == 1)
  {
    v5 = MEMORY[0x1E695CE48];
    v6 = [v4 identifier];
    v7 = [v5 predicateForContainersInAccountWithIdentifier:v6];

    v8 = [(CNAccountsAndGroupsDataSource *)self store];
    v37 = 0;
    v9 = [v8 containersMatchingPredicate:v7 error:&v37];
    v10 = v37;

    if (v9)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v12)
      {
        v13 = v12;
        v28 = v9;
        v29 = v10;
        v30 = v7;
        v31 = v4;
        v14 = 0;
        v15 = *v34;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v34 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v33 + 1) + 8 * i);
            v18 = objc_alloc(MEMORY[0x1E695CD78]);
            v19 = [v18 initWithKeysToFetch:MEMORY[0x1E695E0F0]];
            v20 = MEMORY[0x1E695CD58];
            v21 = [v17 identifier];
            v22 = [v20 predicateForContactsInContainerWithIdentifier:v21];
            [v19 setPredicate:v22];

            v23 = [(CNAccountsAndGroupsDataSource *)self store];
            v32 = 0;
            v24 = [v23 contactCountForFetchRequest:v19 error:&v32];
            v25 = v32;

            if (v24)
            {
              v14 += [v24 integerValue];
            }

            else
            {
              v26 = CNUILogAccountsAndGroupsList();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v40 = v31;
                v41 = 2112;
                v42 = v25;
                _os_log_impl(&dword_199A75000, v26, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Error getting contacts for item: %@ with error: %@", buf, 0x16u);
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v13);
        v4 = v31;
        v10 = v29;
        v7 = v30;
        v9 = v28;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = CNUILogAccountsAndGroupsList();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v40 = v4;
        v41 = 2112;
        v42 = v10;
        _os_log_impl(&dword_199A75000, v11, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Error getting containers for item: %@ with error: %@", buf, 0x16u);
      }
    }

    v14 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v14 = 0;
LABEL_21:

  return v14;
}

- (int64_t)contactCountForItem:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 type])
  {
    goto LABEL_9;
  }

  if ([v4 type] == 1)
  {
    v5 = [(CNAccountsAndGroupsDataSource *)self contactCountForMainItem:v4];
    goto LABEL_16;
  }

  if ([v4 type] != 2)
  {
    if ([v4 type] == 4)
    {
      v9 = MEMORY[0x1E695CD58];
      v7 = [v4 identifier];
      v8 = [v9 predicateForContactsInGroupWithIdentifier:v7];
      goto LABEL_8;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v6 = MEMORY[0x1E695CD58];
  v7 = [v4 identifier];
  v8 = [v6 predicateForContactsInContainerWithIdentifier:v7];
LABEL_8:
  v10 = v8;

LABEL_10:
  v11 = objc_alloc(MEMORY[0x1E695CD78]);
  v12 = [v11 initWithKeysToFetch:MEMORY[0x1E695E0F0]];
  [v12 setPredicate:v10];
  v13 = [(CNAccountsAndGroupsDataSource *)self store];
  v18 = 0;
  v14 = [v13 contactCountForFetchRequest:v12 error:&v18];
  v15 = v18;

  if (v14)
  {
    v5 = [v14 integerValue];
  }

  else
  {
    v16 = CNUILogAccountsAndGroupsList();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v4;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_199A75000, v16, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Error getting contacts for item: %@ with error: %@", buf, 0x16u);
    }

    v5 = 0;
  }

LABEL_16:
  return v5;
}

- (id)allContactsForItem:(id)a3 keysToFetch:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 type])
  {
    if ([v6 type] == 1)
    {
      v8 = [(CNAccountsAndGroupsDataSource *)self allContactsForMainItem:v6 keysToFetch:v7];
      goto LABEL_20;
    }

    if ([v6 type] == 2)
    {
      v10 = MEMORY[0x1E695CD58];
      v11 = [v6 identifier];
      v12 = [v10 predicateForContactsInContainerWithIdentifier:v11];
    }

    else
    {
      if ([v6 type] != 4)
      {
        goto LABEL_13;
      }

      v13 = MEMORY[0x1E695CD58];
      v11 = [v6 identifier];
      v12 = [v13 predicateForContactsInGroupWithIdentifier:v11];
    }

    v9 = v12;

    if (v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E695CD58] predicateForAllContacts];
    if (v9)
    {
LABEL_11:
      v14 = [(CNAccountsAndGroupsDataSource *)self store];
      v20 = 0;
      v8 = [v14 unifiedContactsMatchingPredicate:v9 keysToFetch:v7 error:&v20];
      v15 = v20;

      if (v8)
      {
        v16 = v8;
      }

      else
      {
        v18 = CNUILogAccountsAndGroupsList();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v22 = v6;
          v23 = 2112;
          v24 = v15;
          _os_log_impl(&dword_199A75000, v18, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Error getting contacts for item: %@ with error: %@", buf, 0x16u);
        }
      }

      goto LABEL_20;
    }
  }

LABEL_13:
  v17 = CNUILogAccountsAndGroupsList();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&dword_199A75000, v17, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Error getting contacts for item: %@, unknown item type", buf, 0xCu);
  }

  v8 = 0;
LABEL_20:

  return v8;
}

- (id)allContactsForMainItem:(id)a3 keysToFetch:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 1)
  {
    v8 = MEMORY[0x1E695CE48];
    v9 = [v6 identifier];
    v10 = [v8 predicateForContainersInAccountWithIdentifier:v9];

    v11 = [(CNAccountsAndGroupsDataSource *)self store];
    v38 = 0;
    v12 = [v11 containersMatchingPredicate:v10 error:&v38];
    v13 = v38;

    if (v12)
    {
      v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v15)
      {
        v16 = v15;
        v28 = v12;
        v29 = v13;
        v30 = v10;
        v31 = v6;
        v17 = *v35;
        do
        {
          v18 = v14;
          for (i = 0; i != v16; ++i)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v18);
            }

            v20 = MEMORY[0x1E695CD58];
            v21 = [*(*(&v34 + 1) + 8 * i) identifier];
            v22 = [v20 predicateForContactsInContainerWithIdentifier:v21];

            v23 = [(CNAccountsAndGroupsDataSource *)self store];
            v33 = 0;
            v24 = [v23 unifiedContactsMatchingPredicate:v22 keysToFetch:v7 error:&v33];
            v25 = v33;

            if (v24)
            {
              [v32 addObjectsFromArray:v24];
            }

            else
            {
              v26 = CNUILogAccountsAndGroupsList();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v41 = v31;
                v42 = 2112;
                v43 = v25;
                _os_log_impl(&dword_199A75000, v26, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Error getting contacts for item: %@ with error: %@", buf, 0x16u);
              }
            }
          }

          v14 = v18;
          v16 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v16);
        v6 = v31;
        v13 = v29;
        v10 = v30;
        v12 = v28;
      }
    }

    else
    {
      v14 = CNUILogAccountsAndGroupsList();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v41 = v6;
        v42 = 2112;
        v43 = v13;
        _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Error getting containers for item: %@ with error: %@", buf, 0x16u);
      }

      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (id)sectionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CNAccountsAndGroupsDataSource *)self sections];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__CNAccountsAndGroupsDataSource_sectionForIdentifier___block_invoke;
  v9[3] = &unk_1E74E5A40;
  v10 = v4;
  v6 = v4;
  v7 = [v5 _cn_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __54__CNAccountsAndGroupsDataSource_sectionForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)sectionIdentifierForItem:(id)a3
{
  v4 = [(CNAccountsAndGroupsDataSource *)self containerIdentifierForItem:a3];
  if (v4)
  {
    v5 = [(CNAccountsAndGroupsDataSource *)self groupsAndContainersSaveManager];
    v6 = [v5 accountForContainerIdentifier:v4];

    if (v6)
    {
      v7 = [v6 identifier];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)containerIdentifierForItem:(id)a3
{
  v3 = a3;
  if ([v3 type] == 4 || objc_msgSend(v3, "type") == 1)
  {
    v4 = [v3 containerIdentifier];
LABEL_4:
    v5 = v4;
    goto LABEL_5;
  }

  if ([v3 type] == 2)
  {
    v4 = [v3 identifier];
    goto LABEL_4;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (id)groupIdentifierForGroupItem:(id)a3
{
  v3 = a3;
  if ([v3 type] == 4)
  {
    v4 = [v3 identifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateRootItemSelection
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CNAccountsAndGroupsItem *)self->_rootItem childItems];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v9 + 1) + 8 * v7) isSelected])
        {
          v8 = 0;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  if (v8 != [(CNAccountsAndGroupsItem *)self->_rootItem isSelected])
  {
    [(CNAccountsAndGroupsItem *)self->_rootItem setSelected:v8 affectingChildren:0];
  }
}

- (BOOL)isTrivial
{
  v2 = [(CNAccountsAndGroupsDataSource *)self store];
  v3 = [v2 hasMultipleGroupsOrAccounts];

  return v3 ^ 1;
}

- (void)setHidesSearchableSources:(BOOL)a3
{
  if (self->_hidesSearchableSources != a3)
  {
    self->_hidesSearchableSources = a3;
    [(CNAccountsAndGroupsDataSource *)self reload];
  }
}

- (NSArray)sections
{
  sections = self->_sections;
  if (!sections)
  {
    [(CNAccountsAndGroupsDataSource *)self _reloadSections];
    sections = self->_sections;
  }

  return sections;
}

- (void)setServerFilterForItem:(id)a3
{
  v4 = [a3 identifier];
  v5 = v4;
  if (v4)
  {
    serverFilter = self->_serverFilter;
    v14 = v5;
    if (!serverFilter || (-[CNContactStoreFilter containerIdentifiers](serverFilter, "containerIdentifiers"), v7 = objc_claimAutoreleasedReturnValue(), [v7 allObjects], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", v14), v9, v8, v7, v5 = v14, (v10 & 1) == 0))
    {
      v11 = objc_alloc_init(CNContactStoreFilter);
      v12 = self->_serverFilter;
      self->_serverFilter = v11;

      v13 = [MEMORY[0x1E695DFD8] setWithObject:v14];
      [(CNContactStoreFilter *)self->_serverFilter setContainerIdentifiers:v13];

      [(CNContactStoreFilter *)self->_serverFilter setGroupIdentifiers:0];
      v4 = [(CNContactStoreFilter *)self->_serverFilter setIsServerFilter:1];
      v5 = v14;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)multiSelectFilter
{
  if ([(CNAccountsAndGroupsItem *)self->_rootItem isSelected])
  {
    [(CNContactStoreFilter *)self->_filter setContainerIdentifiers:0];
    [(CNContactStoreFilter *)self->_filter setGroupIdentifiers:0];
    goto LABEL_7;
  }

  v3 = [(CNAccountsAndGroupsItem *)self->_rootItem arrayForDisplay:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__CNAccountsAndGroupsDataSource_multiSelectFilter__block_invoke;
  aBlock[3] = &unk_1E74E5C00;
  v4 = v3;
  v14 = v4;
  v5 = _Block_copy(aBlock);
  v6 = v5[2](v5, 2);
  [(CNContactStoreFilter *)self->_filter setContainerIdentifiers:v6];

  v7 = v5[2](v5, 4);
  [(CNContactStoreFilter *)self->_filter setGroupIdentifiers:v7];

  v8 = [(CNContactStoreFilter *)self->_filter containerIdentifiers];
  if (!v8)
  {
    v9 = [(CNContactStoreFilter *)self->_filter groupIdentifiers];

    if (v9)
    {
      goto LABEL_6;
    }

    v12 = [MEMORY[0x1E695DFD8] set];
    [(CNContactStoreFilter *)self->_filter setGroupIdentifiers:v12];

    v8 = [MEMORY[0x1E695DFD8] set];
    [(CNContactStoreFilter *)self->_filter setContainerIdentifiers:v8];
  }

LABEL_6:
LABEL_7:
  filter = self->_filter;

  return filter;
}

id __50__CNAccountsAndGroupsDataSource_multiSelectFilter__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__CNAccountsAndGroupsDataSource_multiSelectFilter__block_invoke_2;
  v10[3] = &__block_descriptor_40_e15_B32__0_8Q16_B24l;
  v10[4] = a2;
  v4 = [v3 indexesOfObjectsPassingTest:v10];
  v5 = [*(a1 + 32) objectsAtIndexes:v4];
  if ([v5 count])
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = [v5 valueForKeyPath:@"identifier"];
    v8 = [v6 setWithArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __50__CNAccountsAndGroupsDataSource_multiSelectFilter__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 32))
  {
    v4 = [v3 isSelected];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFilterForItem:(id)a3
{
  v14 = a3;
  v4 = objc_alloc_init(CNContactStoreFilter);
  v5 = [v14 type];
  if (v5 > 2)
  {
    if (v5 == 4)
    {
      v13 = MEMORY[0x1E695DFD8];
      v7 = [v14 identifier];
      v8 = [v13 setWithObject:v7];
      [(CNContactStoreFilter *)v4 setGroupIdentifiers:v8];
      goto LABEL_11;
    }

    if (v5 == 3)
    {
      [(CNAccountsAndGroupsDataSource *)self setServerFilterForItem:v14];
      goto LABEL_13;
    }
  }

  else if (v5 == 1)
  {
    v9 = *MEMORY[0x1E6996530];
    v10 = [v14 childItems];
    LOBYTE(v9) = (*(v9 + 16))(v9, v10);

    if ((v9 & 1) == 0)
    {
      v11 = MEMORY[0x1E695DFD8];
      v7 = [v14 childItems];
      v8 = [v7 valueForKeyPath:@"identifier"];
      v12 = [v11 setWithArray:v8];
      [(CNContactStoreFilter *)v4 setContainerIdentifiers:v12];

      goto LABEL_11;
    }
  }

  else if (v5 == 2)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = [v14 identifier];
    v8 = [v6 setWithObject:v7];
    [(CNContactStoreFilter *)v4 setContainerIdentifiers:v8];
LABEL_11:
  }

  [(CNAccountsAndGroupsDataSource *)self setFilter:v4];
LABEL_13:
}

- (void)setFilter:(id)a3
{
  v8 = a3;
  serverFilter = self->_serverFilter;
  self->_serverFilter = 0;

  v5 = v8;
  if (self->_filter != v8)
  {
    v6 = [(CNContactStoreFilter *)v8 copy];
    filter = self->_filter;
    self->_filter = v6;

    v5 = v8;
  }
}

- (void)_applyFilter
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(CNContactStoreFilter *)self->_filter groupIdentifiers];
  if (v3)
  {

LABEL_4:
    v5 = [(CNAccountsAndGroupsItem *)self->_rootItem arrayForDisplay:0];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = v6;
    v8 = *v21;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 type];
        if (v11 == 4)
        {
          v17 = [(CNContactStoreFilter *)self->_filter groupIdentifiers];
          v18 = [v10 identifier];
          [v10 setSelected:objc_msgSend(v17 affectingChildren:{"containsObject:", v18), 0}];

          goto LABEL_14;
        }

        if (v11 == 2)
        {
          v12 = [(CNContactStoreFilter *)self->_filter containerIdentifiers];
          v13 = [v10 identifier];
          v14 = [v12 containsObject:v13];

          [v10 setSelected:v14 affectingChildren:0];
          v15 = [v10 parentItem];
          v16 = [v15 type];

          if (v16 == 1)
          {
            v17 = [v10 parentItem];
            [v17 setSelected:v14 affectingChildren:0];
LABEL_14:

            continue;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v7)
      {
LABEL_17:

        return;
      }
    }
  }

  v4 = [(CNContactStoreFilter *)self->_filter containerIdentifiers];

  if (v4)
  {
    goto LABEL_4;
  }

  rootItem = self->_rootItem;

  [(CNAccountsAndGroupsItem *)rootItem setSelected:1 affectingChildren:1];
}

- (BOOL)shouldShowAccount:(id)a3
{
  v4 = a3;
  v5 = [(CNAccountsAndGroupsDataSource *)self managedConfiguration];
  v6 = [v5 deviceHasManagementRestrictions];

  v16 = 1;
  if (v6)
  {
    if (v7 = *MEMORY[0x1E6996560], -[CNAccountsAndGroupsDataSource targetAccountExternalIdentifiers](self, "targetAccountExternalIdentifiers"), v8 = objc_claimAutoreleasedReturnValue(), v9 = (*(v7 + 16))(v7, v8), v8, (v9 & 1) == 0) && (-[CNAccountsAndGroupsDataSource targetAccountExternalIdentifiers](self, "targetAccountExternalIdentifiers"), v10 = objc_claimAutoreleasedReturnValue(), v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v20[2] = __51__CNAccountsAndGroupsDataSource_shouldShowAccount___block_invoke, v20[3] = &unk_1E74E5B78, v20[4] = self, v21 = v4, v11 = [v10 _cn_any:v20], v10, v21, (v11) || (-[CNAccountsAndGroupsDataSource sourceAccountExternalIdentifiers](self, "sourceAccountExternalIdentifiers"), v12 = objc_claimAutoreleasedReturnValue(), v13 = (*(v7 + 16))(v7, v12), v12, (v13 & 1) == 0) && (-[CNAccountsAndGroupsDataSource sourceAccountExternalIdentifiers](self, "sourceAccountExternalIdentifiers"), v14 = objc_claimAutoreleasedReturnValue(), v18[0] = MEMORY[0x1E69E9820], v18[1] = 3221225472, v18[2] = __51__CNAccountsAndGroupsDataSource_shouldShowAccount___block_invoke_2, v18[3] = &unk_1E74E5B78, v18[4] = self, v19 = v4, v15 = objc_msgSend(v14, "_cn_any:", v18), v14, v19, (v15))
    {
      v16 = 0;
    }
  }

  return v16;
}

uint64_t __51__CNAccountsAndGroupsDataSource_shouldShowAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 managedConfiguration];
  v6 = [*(a1 + 40) externalIdentifierString];
  v7 = [v5 canWriteToAccountWithIdentifier:v4 fromSourceAccountIdentifier:v6];

  return v7 ^ 1u;
}

uint64_t __51__CNAccountsAndGroupsDataSource_shouldShowAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 managedConfiguration];
  v6 = [*(a1 + 40) externalIdentifierString];
  v7 = [v5 canWriteToAccountWithIdentifier:v6 fromSourceAccountIdentifier:v4];

  return v7 ^ 1u;
}

- (void)_reloadSections
{
  v94[1] = *MEMORY[0x1E69E9840];
  v2 = CNUILogAccountsAndGroupsList();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_199A75000, v2, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Reloading sections", buf, 2u);
  }

  [(CNAccountsAndGroupsDataSource *)self setCurrentlyEditingGroupItem:0];
  *buf = 0;
  v76 = buf;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__53056;
  v79 = __Block_byref_object_dispose__53057;
  v80 = [MEMORY[0x1E695DF70] array];
  [(CNAccountsAndGroupsItem *)self->_rootItem setContactCount:[(CNAccountsAndGroupsDataSource *)self contactCountForItem:self->_rootItem]];
  v53 = objc_alloc_init(CNAccountsAndGroupsSection);
  [(CNAccountsAndGroupsSection *)v53 setIsAllContactsGlobalSection:1];
  v94[0] = self->_rootItem;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
  [(CNAccountsAndGroupsSection *)v53 setItems:v3];

  [(CNAccountsAndGroupsSection *)v53 setIdentifier:@"CNAccountsAndGroupsSectionGlobal"];
  v4 = [(CNAccountsAndGroupsDataSource *)self store];
  v74 = 0;
  v52 = [v4 accountsMatchingPredicate:0 error:&v74];
  v5 = v74;

  if (!v52)
  {
    v6 = CNUILogAccountsAndGroupsList();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v89) = 138412290;
      *(&v89 + 4) = v5;
      _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Error getting accounts: %@", &v89, 0xCu);
    }
  }

  v50 = [MEMORY[0x1E695CE48] predicateForContainersWithType:1003];
  v7 = [(CNAccountsAndGroupsDataSource *)self store];
  v73 = 0;
  v56 = [v7 containersMatchingPredicate:v50 error:&v73];
  v8 = v73;

  if (!v56)
  {
    v9 = CNUILogAccountsAndGroupsList();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v89) = 138412290;
      *(&v89 + 4) = v8;
      _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Error getting provider containers: %@", &v89, 0xCu);
    }
  }

  v49 = [MEMORY[0x1E695CE48] predicateForContainersWithType:1004];
  v10 = [(CNAccountsAndGroupsDataSource *)self store];
  v72 = 0;
  v11 = [v10 containersMatchingPredicate:v49 error:&v72];
  v48 = v72;
  v51 = [v11 firstObject];

  if (!v51 || ([MEMORY[0x1E69966E8] currentEnvironment], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "featureFlags"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isFeatureEnabled:", 19), v13, v12, (v14 & 1) == 0))
  {
    v15 = CNUILogAccountsAndGroupsList();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v89) = 138412290;
      *(&v89 + 4) = v48;
      _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Error getting accepted introductions container: %@", &v89, 0xCu);
    }
  }

  if ([v52 count] || (v31 = objc_msgSend(v56, "count"), v51) || v31)
  {
    *&v89 = 0;
    *(&v89 + 1) = &v89;
    v90 = 0x3032000000;
    v91 = __Block_byref_object_copy__53056;
    v92 = __Block_byref_object_dispose__53057;
    v93 = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__CNAccountsAndGroupsDataSource__reloadSections__block_invoke;
    aBlock[3] = &unk_1E74E5B08;
    aBlock[4] = self;
    aBlock[5] = &v89;
    aBlock[6] = buf;
    v16 = _Block_copy(aBlock);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v52;
    v17 = [obj countByEnumeratingWithState:&v67 objects:v88 count:16];
    if (v17)
    {
      v54 = 0;
      v18 = *v68;
      v19 = *MEMORY[0x1E6996530];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v68 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v67 + 1) + 8 * i);
          if ([(CNAccountsAndGroupsDataSource *)self shouldShowAccount:v21])
          {
            v22 = MEMORY[0x1E695CE48];
            v23 = [v21 identifier];
            v24 = [v22 predicateForContainersInAccountWithIdentifier:v23];

            v25 = [(CNAccountsAndGroupsDataSource *)self store];
            v66 = 0;
            v26 = [v25 containersMatchingPredicate:v24 error:&v66];
            v27 = v66;

            if ((*(v19 + 16))(v19, v26))
            {
              v28 = CNUILogAccountsAndGroupsList();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *v84 = 138412546;
                v85 = v21;
                v86 = 2112;
                v87 = v27;
                _os_log_impl(&dword_199A75000, v28, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] 0 containers fetched for account: %@ with error: %@", v84, 0x16u);
              }
            }

            v65[0] = MEMORY[0x1E69E9820];
            v65[1] = 3221225472;
            v65[2] = __48__CNAccountsAndGroupsDataSource__reloadSections__block_invoke_92;
            v65[3] = &unk_1E74E5B30;
            v65[4] = v21;
            v29 = _Block_copy(v65);
            v30 = [v21 identifier];
            v16[2](v16, v30, v29, v26);
          }

          else
          {
            v54 = 1;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v67 objects:v88 count:16];
      }

      while (v17);
    }

    else
    {
      v54 = 0;
    }

    v32 = [v56 _cn_safeSortedArrayUsingComparator:&__block_literal_global_53065];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v56 = v32;
    v33 = [v56 countByEnumeratingWithState:&v61 objects:v83 count:16];
    if (v33)
    {
      v34 = *v62;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v62 != v34)
          {
            objc_enumerationMutation(v56);
          }

          v36 = *(*(&v61 + 1) + 8 * j);
          v37 = [v36 identifier];
          v38 = [@"ProviderContainer:" stringByAppendingString:v37];

          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = 3221225472;
          v60[2] = __48__CNAccountsAndGroupsDataSource__reloadSections__block_invoke_3_95;
          v60[3] = &unk_1E74E5B30;
          v60[4] = v36;
          v39 = _Block_copy(v60);
          v82 = v36;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
          v16[2](v16, v38, v39, v40);
        }

        v33 = [v56 countByEnumeratingWithState:&v61 objects:v83 count:16];
      }

      while (v33);
    }

    if (v51)
    {
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __48__CNAccountsAndGroupsDataSource__reloadSections__block_invoke_4;
      v58[3] = &unk_1E74E5B30;
      v41 = v51;
      v59 = v41;
      v42 = _Block_copy(v58);
      v43 = [v41 accountIdentifier];
      v81 = v41;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
      v16[2](v16, v43, v42, v44);
    }

    [(CNAccountsAndGroupsItem *)self->_rootItem setChildItems:*(*(&v89 + 1) + 40)];
    if (([*(*(&v89 + 1) + 40) count] != 1) | v54 & 1 && !-[CNAccountsAndGroupsDataSource onlyShowsGroupsInSections](self, "onlyShowsGroupsInSections"))
    {
      [*(v76 + 5) insertObject:v53 atIndex:0];
    }

    v45 = CNUILogAccountsAndGroupsList();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [*(v76 + 5) count];
      v47 = [*(v76 + 5) description];
      *v84 = 134218242;
      v85 = v46;
      v86 = 2112;
      v87 = v47;
      _os_log_impl(&dword_199A75000, v45, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] finished fetching %lu sections: %@", v84, 0x16u);
    }

    [(CNAccountsAndGroupsDataSource *)self setSections:*(v76 + 5)];
    _Block_object_dispose(&v89, 8);
  }

  else if (![(CNAccountsAndGroupsDataSource *)self onlyShowsGroupsInSections])
  {
    [*(v76 + 5) addObject:v53];
    [(CNAccountsAndGroupsDataSource *)self setSections:*(v76 + 5)];
  }

  _Block_object_dispose(buf, 8);
}

void __48__CNAccountsAndGroupsDataSource__reloadSections__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v154 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v141 = 0;
  v142 = &v141;
  v143 = 0x3032000000;
  v144 = __Block_byref_object_copy__53056;
  v145 = __Block_byref_object_dispose__53057;
  v146 = objc_alloc_init(CNAccountsAndGroupsSection);
  [v142[5] setIdentifier:v7];
  v10 = v142[5];
  v11 = objc_initWeak(&location, v10);
  [v10 setTitleProvider:v8];

  v12 = [MEMORY[0x1E695CE58] acceptedContactsAccountIdentifier];
  v72 = [v7 isEqualToString:v12];

  v13 = [CNAccountsAndGroupsItem alloc];
  v137[0] = MEMORY[0x1E69E9820];
  v137[1] = 3221225472;
  v137[2] = __48__CNAccountsAndGroupsDataSource__reloadSections__block_invoke_2;
  v137[3] = &unk_1E74E5A90;
  v68 = v8;
  v138 = v68;
  v139 = v72;
  v14 = [(CNAccountsAndGroupsItem *)v13 initWithType:1 nameProvider:v137];
  [(CNAccountsAndGroupsItem *)v14 setIdentifier:v7];
  -[CNAccountsAndGroupsItem setShouldHide:](v14, "setShouldHide:", [*(a1 + 32) onlyShowsGroupsInSections]);
  [(CNAccountsAndGroupsItem *)v14 setIndentationLevel:v72 ^ 1];
  v133 = 0;
  v134 = &v133;
  v135 = 0x2020000000;
  v136 = 1;
  v129 = 0;
  v130 = &v129;
  v131 = 0x2020000000;
  v132 = 0;
  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = __Block_byref_object_copy__53056;
  v127 = __Block_byref_object_dispose__53057;
  v128 = [MEMORY[0x1E695DF70] array];
  v119 = 0;
  v120 = &v119;
  v121 = 0x2020000000;
  v122 = 0;
  v76 = *MEMORY[0x1E6996530];
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v15 = [v9 firstObject];
    v16 = [v15 identifier];
    [(CNAccountsAndGroupsItem *)v14 setContainerIdentifier:v16];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__CNAccountsAndGroupsDataSource__reloadSections__block_invoke_3;
  aBlock[3] = &unk_1E74E5AB8;
  v17 = *(a1 + 32);
  v111 = &v123;
  aBlock[4] = v17;
  v112 = &v129;
  v113 = &v133;
  v18 = v7;
  v19 = *(a1 + 40);
  v71 = v18;
  v109 = v18;
  v114 = v19;
  v70 = v14;
  v110 = v70;
  v115 = &v141;
  v118 = v72;
  v20 = *(a1 + 48);
  v116 = &v119;
  v117 = v20;
  v69 = _Block_copy(aBlock);
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v9;
  v21 = [obj countByEnumeratingWithState:&v104 objects:v153 count:16];
  if (v21)
  {
    v79 = 0;
    v75 = *v105;
    v74 = *MEMORY[0x1E6996568];
    do
    {
      v83 = 0;
      v77 = v21;
      do
      {
        if (*v105 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v89 = *(*(&v104 + 1) + 8 * v83);
        v22 = [[CNAccountsAndGroupsItem alloc] initWithType:2 nameProvider:0];
        -[CNAccountsAndGroupsItem setContainerType:](v22, "setContainerType:", [v89 type]);
        [(CNAccountsAndGroupsItem *)v22 setBypassIfUnique:1];
        -[CNAccountsAndGroupsItem setShouldHide:](v22, "setShouldHide:", [*(a1 + 32) onlyShowsGroupsInSections]);
        [(CNAccountsAndGroupsItem *)v22 setIndentationLevel:1];
        v23 = [v89 identifier];
        v24 = [*(a1 + 32) currentlyEditingGroupIdentifier];
        v25 = [v23 isEqualToString:v24];
        v87 = v22;

        if (v25)
        {
          [*(a1 + 32) setCurrentlyEditingGroupItem:v22];
        }

        v26 = [v89 name];
        if ((*(v74 + 16))(v74, v26))
        {
          v27 = MEMORY[0x1E696AEC0];
          v28 = CNContactsUIBundle();
          v29 = [v28 localizedStringForKey:@"NO_NAME" value:&stru_1F0CE7398 table:@"Localized"];
          v30 = [v27 stringWithFormat:v29];

          v31 = v30;
        }

        else
        {
          v31 = v26;
        }

        v78 = v31;
        [(CNAccountsAndGroupsItem *)v22 setName:?];
        v32 = [v89 identifier];
        [(CNAccountsAndGroupsItem *)v22 setIdentifier:v32];

        v82 = [*(a1 + 32) contactCountForItem:v22];
        *(v120 + 24) |= v82 > 0;
        [(CNAccountsAndGroupsItem *)v22 setContactCount:?];
        AddAtSortedIndex_block_invoke(&__block_literal_global_99, v124[5], v22);
        v33 = [MEMORY[0x1E695DF70] array];
        v34 = MEMORY[0x1E695CEC0];
        v35 = [v89 identifier];
        v81 = [v34 predicateForGroupsInContainerWithIdentifier:v35];

        v36 = [*(a1 + 32) store];
        v103 = 0;
        v85 = [v36 groupsMatchingPredicate:v81 error:&v103];
        v80 = v103;

        if (!v85)
        {
          v37 = CNUILogAccountsAndGroupsList();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v150 = v89;
            v151 = 2112;
            v152 = v80;
            _os_log_impl(&dword_199A75000, v37, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Error getting groups for container:%@ with error: %@", buf, 0x16u);
          }
        }

        if (((*(v76 + 16))() & 1) == 0)
        {
          *(v130 + 24) = 1;
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v38 = v85;
          v39 = [v38 countByEnumeratingWithState:&v99 objects:v148 count:16];
          if (v39)
          {
            v40 = *v100;
            do
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v100 != v40)
                {
                  objc_enumerationMutation(v38);
                }

                v42 = *(*(&v99 + 1) + 8 * i);
                v43 = [[CNAccountsAndGroupsItem alloc] initWithType:4 nameProvider:0];
                v44 = [v42 name];
                [(CNAccountsAndGroupsItem *)v43 setName:v44];

                v45 = [v42 identifier];
                [(CNAccountsAndGroupsItem *)v43 setIdentifier:v45];

                v46 = [v89 identifier];
                [(CNAccountsAndGroupsItem *)v43 setContainerIdentifier:v46];

                [(CNAccountsAndGroupsItem *)v43 setGroup:v42];
                -[CNAccountsAndGroupsItem setContactCount:](v43, "setContactCount:", [*(a1 + 32) contactCountForItem:v43]);
                [(CNAccountsAndGroupsItem *)v43 setIndentationLevel:1];
                v47 = [v42 identifier];
                v48 = [*(a1 + 32) currentlyEditingGroupIdentifier];
                v49 = [v47 isEqualToString:v48];

                if (v49)
                {
                  [*(a1 + 32) setCurrentlyEditingGroupItem:v43];
                }

                AddAtSortedIndex_block_invoke(&__block_literal_global_99, v33, v43);
              }

              v39 = [v38 countByEnumeratingWithState:&v99 objects:v148 count:16];
            }

            while (v39);
          }

          [(CNAccountsAndGroupsItem *)v87 setChildItems:v33];
        }

        v79 += v82;
        ++v83;
      }

      while (v83 != v77);
      v21 = [obj countByEnumeratingWithState:&v104 objects:v153 count:16];
    }

    while (v21);
  }

  else
  {
    v79 = 0;
  }

  [(CNAccountsAndGroupsItem *)v70 setContactCount:v79];
  v50 = v69;
  if (([v71 _cn_hasPrefix:@"ProviderContainer:"] & 1) == 0 && (objc_msgSend(*(a1 + 32), "hidesSearchableSources") & 1) == 0 && (objc_msgSend(*(a1 + 32), "onlyShowsGroupsInSections") & 1) == 0)
  {
    v86 = [MEMORY[0x1E695CE48] predicateForContainersInAccountWithIdentifier:v71];
    v51 = [*(a1 + 32) store];
    v98 = 0;
    v88 = [v51 serverSearchContainersMatchingPredicate:v86 error:&v98];
    v84 = v98;

    if (!v88)
    {
      v52 = CNUILogAccountsAndGroupsList();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v150 = v84;
        _os_log_impl(&dword_199A75000, v52, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] Error getting server search containers: %@", buf, 0xCu);
      }
    }

    if (((*(v76 + 16))() & 1) == 0)
    {
      if ([obj count])
      {
        v69[2](v69);
        *(v134 + 24) = 0;
        v53 = [MEMORY[0x1E695DF70] array];
        v54 = v124[5];
        v124[5] = v53;

        v55 = objc_alloc_init(CNAccountsAndGroupsSection);
        v56 = v142[5];
        v142[5] = v55;

        v57 = [v88 firstObject];
        v58 = [v57 identifier];
        [v142[5] setIdentifier:v58];
      }

      else
      {
        *(v134 + 24) = 0;
      }

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v90 = v88;
      v59 = [v90 countByEnumeratingWithState:&v94 objects:v147 count:16];
      if (v59)
      {
        v60 = *v95;
        do
        {
          for (j = 0; j != v59; ++j)
          {
            if (*v95 != v60)
            {
              objc_enumerationMutation(v90);
            }

            v62 = *(*(&v94 + 1) + 8 * j);
            v63 = [v62 name];
            v64 = [CNAccountsAndGroupsItem alloc];
            v91[0] = MEMORY[0x1E69E9820];
            v91[1] = 3221225472;
            v91[2] = __48__CNAccountsAndGroupsDataSource__reloadSections__block_invoke_87;
            v91[3] = &unk_1E74E5AE0;
            v65 = v63;
            v92 = v65;
            objc_copyWeak(&v93, &location);
            v66 = [(CNAccountsAndGroupsItem *)v64 initWithType:3 nameProvider:v91];
            -[CNAccountsAndGroupsItem setContainerType:](v66, "setContainerType:", [v62 type]);
            [(CNAccountsAndGroupsItem *)v66 setSoloSelect:1];
            v67 = [v62 identifier];
            [(CNAccountsAndGroupsItem *)v66 setIdentifier:v67];

            AddAtSortedIndex_block_invoke(&__block_literal_global_99, v124[5], v66);
            objc_destroyWeak(&v93);
          }

          v59 = [v90 countByEnumeratingWithState:&v94 objects:v147 count:16];
        }

        while (v59);
      }
    }

    v50 = v69;
  }

  [v142[5] setIsAcceptedContactsSection:v72];
  v50[2](v50);

  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v123, 8);

  _Block_object_dispose(&v129, 8);
  _Block_object_dispose(&v133, 8);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v141, 8);
}

uint64_t __48__CNAccountsAndGroupsDataSource__reloadSections__block_invoke_2_93(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6 options:1];
  return v7;
}

id __48__CNAccountsAndGroupsDataSource__reloadSections__block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = v2;
  if (*(a1 + 40) == 1)
  {
    v4 = v2;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"ALL_CONTACTS_FOR_ACCOUNT-%@" value:&stru_1F0CE7398 table:@"Localized"];
    v4 = [v5 stringWithFormat:v7, v3];
  }

  return v4;
}

void __48__CNAccountsAndGroupsDataSource__reloadSections__block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ([*(*(*(a1 + 56) + 8) + 40) count] && (!objc_msgSend(*(a1 + 32), "onlyShowsGroupsInSections") || *(*(*(a1 + 64) + 8) + 24) == 1))
  {
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v2 = CNUILogAccountsAndGroupsList();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 40);
        v7 = 138412290;
        v8 = v3;
        _os_log_impl(&dword_199A75000, v2, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] including root item for account identifier: %@", &v7, 0xCu);
      }

      AddAtSortedIndex_block_invoke(&__block_literal_global_99, *(*(*(a1 + 80) + 8) + 40), *(a1 + 48));
      [*(a1 + 48) setChildItems:*(*(*(a1 + 56) + 8) + 40)];
      v4 = [*(a1 + 48) arrayForDisplay:1];
      [*(*(*(a1 + 88) + 8) + 40) setItems:v4];
    }

    else
    {
      [*(*(*(a1 + 88) + 8) + 40) setItems:*(*(*(a1 + 56) + 8) + 40)];
    }

    v5 = CNUILogAccountsAndGroupsList();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 88) + 8) + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEFAULT, "[CNAccountsAndGroupsDataSource] adding accountSection: %@", &v7, 0xCu);
    }

    if (*(a1 + 112) != 1 || *(*(*(a1 + 96) + 8) + 24) == 1)
    {
      [*(*(*(a1 + 104) + 8) + 40) addObject:*(*(*(a1 + 88) + 8) + 40)];
    }
  }
}

id __48__CNAccountsAndGroupsDataSource__reloadSections__block_invoke_87(uint64_t a1)
{
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = CNContactsUIBundle();
    v4 = [v3 localizedStringForKey:@"SERVER_SEARCH_TITLE_FORMAT-%@" value:&stru_1F0CE7398 table:@"Localized"];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained title];
    v7 = [v2 stringWithFormat:v4, v6];
  }

  else
  {
    v7 = *(a1 + 32);
  }

  return v7;
}

- (BOOL)hasChanges
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = [(CNAccountsAndGroupsDataSource *)self sections];
  v4 = [(CNAccountsAndGroupsDataSource *)self showAllSectionItem];
  v5 = [v4 contactCount];

  [(CNAccountsAndGroupsDataSource *)self reload];
  v6 = [(CNAccountsAndGroupsDataSource *)self sections];
  v7 = [(CNAccountsAndGroupsDataSource *)self showAllSectionItem];
  v8 = [v7 contactCount];

  if (v5 == v8 && (v9 = [v3 count], v9 == objc_msgSend(v6, "count")))
  {
    v38 = v6;
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v11 = v3;
    v12 = [v11 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v53;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v53 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v52 + 1) + 8 * i);
          v17 = [v16 identifier];
          [v10 setObject:v16 forKeyedSubscript:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v13);
    }

    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __43__CNAccountsAndGroupsDataSource_hasChanges__block_invoke;
    v50[3] = &unk_1E74E5A40;
    v18 = v10;
    v51 = v18;
    v6 = v38;
    if ([v38 _cn_any:v50])
    {
      v19 = 1;
    }

    else
    {
      v36 = v18;
      v37 = v3;
      v20 = [MEMORY[0x1E695DF90] dictionary];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = v11;
      v21 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v47;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v47 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v46 + 1) + 8 * j);
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v26 = [v25 items];
            v27 = [v26 countByEnumeratingWithState:&v42 objects:v56 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v43;
              do
              {
                for (k = 0; k != v28; ++k)
                {
                  if (*v43 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v42 + 1) + 8 * k);
                  v32 = [v31 identifier];

                  if (v32)
                  {
                    v33 = [v31 identifier];
                    [v20 setObject:v31 forKeyedSubscript:v33];
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v42 objects:v56 count:16];
              }

              while (v28);
            }
          }

          v22 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
        }

        while (v22);
      }

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __43__CNAccountsAndGroupsDataSource_hasChanges__block_invoke_2;
      v40[3] = &unk_1E74E5A40;
      v41 = v20;
      v34 = v20;
      v6 = v38;
      v19 = [v38 _cn_any:v40];

      v18 = v36;
      v3 = v37;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

BOOL __43__CNAccountsAndGroupsDataSource_hasChanges__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 items];
      v8 = [v7 count];
      v9 = [v3 items];
      v10 = v8 != [v9 count];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __43__CNAccountsAndGroupsDataSource_hasChanges__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CNAccountsAndGroupsDataSource_hasChanges__block_invoke_3;
  v6[3] = &unk_1E74E5A68;
  v7 = *(a1 + 32);
  v4 = [v3 _cn_any:v6];

  return v4;
}

BOOL __43__CNAccountsAndGroupsDataSource_hasChanges__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5 && ([v5 name], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "name"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
    {
      v10 = [v6 contactCount];
      v11 = v10 != [v3 contactCount];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CNAccountsAndGroupsDataSource)initWithStore:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CNAccountsAndGroupsDataSource;
  v5 = [(CNAccountsAndGroupsDataSource *)&v19 init];
  store = v5->_store;
  v5->_store = v4;
  v7 = v4;

  v8 = [[CNAccountsAndGroupsItem alloc] initWithType:0 nameProvider:0];
  rootItem = v5->_rootItem;
  v5->_rootItem = v8;

  v10 = [[CNUIGroupsAndContainersSaveManager alloc] initWithContactStore:v7];
  groupsAndContainersSaveManager = v5->_groupsAndContainersSaveManager;
  v5->_groupsAndContainersSaveManager = v10;

  v12 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v12 bundleIdentifier];

  v14 = objc_alloc(MEMORY[0x1E6996760]);
  v15 = [MEMORY[0x1E6996768] sharedConnection];
  v16 = [v14 initWithBundleIdentifier:v13 managedProfileConnection:v15];
  managedConfiguration = v5->_managedConfiguration;
  v5->_managedConfiguration = v16;

  return v5;
}

@end