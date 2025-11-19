@interface CNUIFamilyMemberDowntimeContactDataSource
+ (BOOL)isErrorPossiblyRelatedToExtraStores:(id)a3;
- (CNUIFamilyMemberDowntimeContactDataSource)initWithStore:(id)a3 familyMembers:(id)a4 requiredKeys:(id)a5;
- (id)completeContactFromContact:(id)a3 fromMainStoreOnly:(BOOL)a4 keysToFetch:(id)a5;
- (id)contactItemForIndexPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)labelForFamilyMember:(id)a3;
- (id)preferredForNameMeContactIdentifier;
- (id)preferredForNameMeContactWithKeysToFetch:(id)a3;
- (id)selectedContacts;
- (id)titleForSection:(int64_t)a3;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (int64_t)sortOrder;
- (void)_loadAllContactsIfNeeded;
- (void)filterSectionsForString:(id)a3;
- (void)postProcessForFamilyMembersWithContacts:(id)a3;
- (void)setContactItemSelected:(BOOL)a3 forIndexPath:(id)a4;
- (void)setFilterString:(id)a3;
@end

@implementation CNUIFamilyMemberDowntimeContactDataSource

- (id)preferredForNameMeContactWithKeysToFetch:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (-[CNUIFamilyMemberDowntimeContactDataSource meContactNeedsUpdate](v5, "meContactNeedsUpdate") || (-[CNUIFamilyMemberDowntimeContactDataSource meContact](v5, "meContact"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (-[CNUIFamilyMemberDowntimeContactDataSource meContact](v5, "meContact"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 areKeysAvailable:v4], v7, v6, (v8 & 1) == 0))
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = v9;
    if (v4)
    {
      [v9 addObjectsFromArray:v4];
    }

    v11 = [(CNUIFamilyMemberDowntimeContactDataSource *)v5 meContact];

    if (v11)
    {
      v12 = [(CNUIFamilyMemberDowntimeContactDataSource *)v5 meContact];
      v13 = [v12 availableKeyDescriptor];
      [v10 addObject:v13];
    }

    v14 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:v10];
    v15 = [MEMORY[0x1E695CD58] predicateForMeContact];
    [v14 setPredicate:v15];

    [v14 setUnifyResults:0];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__4197;
    v31 = __Block_byref_object_dispose__4198;
    v32 = 0;
    v16 = [(CNUIFamilyMemberDowntimeContactDataSource *)v5 store];
    v25[4] = &v27;
    v26 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__CNUIFamilyMemberDowntimeContactDataSource_preferredForNameMeContactWithKeysToFetch___block_invoke;
    v25[3] = &unk_1E74E6F60;
    v17 = [v16 enumerateNonUnifiedContactsWithFetchRequest:v14 error:&v26 usingBlock:v25];
    v18 = v26;

    if (v17)
    {
      [(CNUIFamilyMemberDowntimeContactDataSource *)v5 setMeContactNeedsUpdate:0];
      [(CNUIFamilyMemberDowntimeContactDataSource *)v5 setMeContact:v28[5]];
    }

    else
    {
      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIFamilyMemberDowntimeContactDataSource.m", 335, 3, @"Error fetching the me card: %@", v19, v20, v21, v22, v18);
    }

    _Block_object_dispose(&v27, 8);
  }

  v23 = [(CNUIFamilyMemberDowntimeContactDataSource *)v5 meContact];
  objc_sync_exit(v5);

  return v23;
}

- (id)preferredForNameMeContactIdentifier
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E695C258];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [(CNUIFamilyMemberDowntimeContactDataSource *)self preferredForNameMeContactWithKeysToFetch:v3];
  v5 = [v4 identifier];

  return v5;
}

- (id)completeContactFromContact:(id)a3 fromMainStoreOnly:(BOOL)a4 keysToFetch:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if ([v8 isUnknown] && (objc_msgSend(v8, "isSuggestedMe") & 1) == 0)
  {
    v23 = v8;
  }

  else
  {
    v10 = [v8 identifier];
    v11 = [(CNUIFamilyMemberDowntimeContactDataSource *)self preferredForNameMeContactIdentifier];
    v12 = [v10 isEqual:v11];

    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__4197;
    v48 = __Block_byref_object_dispose__4198;
    v49 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__4197;
    v42 = __Block_byref_object_dispose__4198;
    v43 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __102__CNUIFamilyMemberDowntimeContactDataSource_completeContactFromContact_fromMainStoreOnly_keysToFetch___block_invoke;
    aBlock[3] = &unk_1E74E5FB0;
    v27 = v9;
    v33 = v12;
    v13 = v10;
    v28 = v13;
    v29 = self;
    v30 = &v34;
    v31 = &v38;
    v32 = &v44;
    v14 = _Block_copy(aBlock);
    v14[2](v14, v6);
    if ((v35[3] & 1) == 0)
    {
      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIFamilyMemberDowntimeContactDataSource.m", 295, 3, @"Error completing contact: %@", v15, v16, v17, v18, v39[5]);
      if ([objc_opt_class() isErrorPossiblyRelatedToExtraStores:v39[5]])
      {
        _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIFamilyMemberDowntimeContactDataSource.m", 297, 3, @"Will re-fetch from main store", v19, v20, v21, v22, v25);
        v14[2](v14, 1);
      }
    }

    v23 = v45[5];

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);

    _Block_object_dispose(&v44, 8);
  }

  return v23;
}

void __102__CNUIFamilyMemberDowntimeContactDataSource_completeContactFromContact_fromMainStoreOnly_keysToFetch___block_invoke(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:*(a1 + 32)];
  v5 = MEMORY[0x1E695CD58];
  if (*(a1 + 80))
  {
    v6 = [MEMORY[0x1E695CD58] predicateForMeContact];
    [v4 setPredicate:v6];
  }

  else
  {
    v19[0] = *(a1 + 40);
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v8 = [v5 predicateForContactsWithIdentifiers:v7];
    [v4 setPredicate:v8];
  }

  [v4 setUnifyResults:0];
  [v4 setOnlyMainStore:a2];
  v9 = [*(a1 + 48) store];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102__CNUIFamilyMemberDowntimeContactDataSource_completeContactFromContact_fromMainStoreOnly_keysToFetch___block_invoke_2;
  v17[3] = &unk_1E74E6F60;
  v17[4] = *(a1 + 72);
  obj = v11;
  v12 = [v9 enumerateContactsWithFetchRequest:v4 error:&obj usingBlock:v17];
  objc_storeStrong((v10 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v12;

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIFamilyMemberDowntimeContactDataSource.m", 289, 3, @"Error completing contact: %@", v13, v14, v15, v16, *(*(*(a1 + 64) + 8) + 40));
  }
}

void __102__CNUIFamilyMemberDowntimeContactDataSource_completeContactFromContact_fromMainStoreOnly_keysToFetch___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = a2;
  v10 = *(*(a1 + 32) + 8);
  v12 = *(v10 + 40);
  v11 = (v10 + 40);
  if (v12)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIFamilyMemberDowntimeContactDataSource.m", 282, 3, @"Error: got more than one contact instead of a unified one", v6, v7, v8, v9, v15);
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    *a3 = 1;
  }

  else
  {
    objc_storeStrong(v11, a2);
  }
}

- (id)labelForFamilyMember:(id)a3
{
  v3 = a3;
  if ([v3 isMe])
  {
    v4 = @"DOWNTIME_PICKER_CONTACT_LABEL_ME";
LABEL_5:
    v5 = CNContactsUIBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F0CE7398 table:@"Localized"];

    goto LABEL_7;
  }

  if ([v3 isParent])
  {
    v4 = @"DOWNTIME_PICKER_CONTACT_LABEL_PARENT";
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)postProcessForFamilyMembersWithContacts:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v31 = [v30 mutableCopy];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__4197;
  v45 = __Block_byref_object_dispose__4198;
  v46 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E696AD50] indexSet];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __85__CNUIFamilyMemberDowntimeContactDataSource_postProcessForFamilyMembersWithContacts___block_invoke;
  v38[3] = &unk_1E74E2000;
  v38[4] = self;
  v40 = &v41;
  v4 = v3;
  v39 = v4;
  [v30 enumerateObjectsUsingBlock:v38];
  [v31 removeObjectsAtIndexes:v4];
  v29 = v4;
  v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  if ([v42[5] count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v42[5], "count")}];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = v42[5];
    v7 = [v6 countByEnumeratingWithState:&v34 objects:v47 count:16];
    if (v7)
    {
      v8 = *v35;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          v11 = [v10 second];
          v12 = [(CNUIFamilyMemberDowntimeContactDataSource *)self labelForFamilyMember:v11];

          v13 = [CNUIFamilyMemberDowntimeContactItem alloc];
          v14 = [v10 first];
          v15 = [(CNUIFamilyMemberDowntimeContactItem *)v13 initWithContact:v14 label:v12];

          [v5 addObject:v15];
        }

        v7 = [v6 countByEnumeratingWithState:&v34 objects:v47 count:16];
      }

      while (v7);
    }

    v16 = [CNUIFamilyMemberDowntimeContactSection alloc];
    v17 = CNContactsUIBundle();
    v18 = [v17 localizedStringForKey:@"DOWNTIME_PICKER_FAMILY_SECTION_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    v19 = [(CNUIFamilyMemberDowntimeContactSection *)v16 initWithContactItems:v5 title:v18];
    [v32 addObject:v19];
  }

  v20 = [v31 _cn_map:&__block_literal_global_75];
  v21 = [(CNUIFamilyMemberDowntimeContactDataSource *)self isShowingFamilyMemberContacts];
  v22 = CNContactsUIBundle();
  v23 = v22;
  if (v21)
  {
    v24 = @"DOWNTIME_PICKER_CONTACTS_SECTION_TITLE_MEMBER";
  }

  else
  {
    v24 = @"DOWNTIME_PICKER_CONTACTS_SECTION_TITLE_THIS_DEVICE";
  }

  v25 = [v22 localizedStringForKey:v24 value:&stru_1F0CE7398 table:@"Localized"];

  v26 = [[CNUIFamilyMemberDowntimeContactSection alloc] initWithContactItems:v20 title:v25];
  [v32 addObject:v26];

  v27 = [v32 copy];
  sections = self->_sections;
  self->_sections = v27;

  [(CNUIFamilyMemberDowntimeContactDataSource *)self filterSectionsForString:self->_filterString];
  _Block_object_dispose(&v41, 8);
}

void __85__CNUIFamilyMemberDowntimeContactDataSource_postProcessForFamilyMembersWithContacts___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__CNUIFamilyMemberDowntimeContactDataSource_postProcessForFamilyMembersWithContacts___block_invoke_2;
  v10[3] = &unk_1E74E1FD8;
  v11 = v5;
  v9 = *(a1 + 40);
  v7 = v9;
  v12 = v9;
  v13 = a3;
  v8 = v5;
  [v6 enumerateObjectsUsingBlock:v10];
}

CNUIFamilyMemberDowntimeContactItem *__85__CNUIFamilyMemberDowntimeContactDataSource_postProcessForFamilyMembersWithContacts___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNUIFamilyMemberDowntimeContactItem alloc] initWithContact:v2 label:0];

  return v3;
}

void __85__CNUIFamilyMemberDowntimeContactDataSource_postProcessForFamilyMembersWithContacts___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) givenName];
  v4 = [v10 firstName];
  if ([v3 isEqualToString:v4])
  {
    v5 = [*(a1 + 32) familyName];
    v6 = [v10 lastName];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = *(*(*(a1 + 48) + 8) + 40);
      v9 = [MEMORY[0x1E69967A8] pairWithFirst:*(a1 + 32) second:v10];
      [v8 addObject:v9];

      [*(a1 + 40) addIndex:*(a1 + 56)];
    }
  }

  else
  {
  }
}

- (void)_loadAllContactsIfNeeded
{
  if (!self->_sections)
  {
    v17[7] = v2;
    v17[8] = v3;
    v5 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:self->_requiredKeys];
    [v5 setUnifyResults:0];
    [v5 setSortOrder:{-[CNUIFamilyMemberDowntimeContactDataSource sortOrder](self, "sortOrder")}];
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [(CNUIFamilyMemberDowntimeContactDataSource *)self store];
    v17[0] = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__CNUIFamilyMemberDowntimeContactDataSource__loadAllContactsIfNeeded__block_invoke;
    v15[3] = &unk_1E74E5ED0;
    v8 = v6;
    v16 = v8;
    v9 = [v7 enumerateContactsAndMatchInfoWithFetchRequest:v5 error:v17 usingBlock:v15];
    v10 = v17[0];

    if (v9)
    {
      if (v10)
      {
        _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIFamilyMemberDowntimeContactDataSource.m", 203, 4, @"Non fatal error during contacts fetching: %@", v11, v12, v13, v14, v10);
      }

      [(CNUIFamilyMemberDowntimeContactDataSource *)self postProcessForFamilyMembersWithContacts:v8];
    }

    else
    {
      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIFamilyMemberDowntimeContactDataSource.m", 207, 3, @"Error fetching contacts: %@", v11, v12, v13, v14, v10);
    }
  }
}

- (void)filterSectionsForString:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 localizedLowercaseString];
  v6 = [v5 componentsSeparatedByString:@" "];
  v7 = [v6 _cn_filter:&__block_literal_global_47];

  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) != 0 || ![v7 count])
  {
    objc_storeStrong(&self->_filteredSections, self->_sections);
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = self;
    obj = self->_sections;
    v9 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = [v13 contactItems];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __69__CNUIFamilyMemberDowntimeContactDataSource_filterSectionsForString___block_invoke_2;
          v23[3] = &unk_1E74E1FB0;
          v24 = v7;
          v15 = [v14 _cn_filter:v23];

          v16 = [CNUIFamilyMemberDowntimeContactSection alloc];
          v17 = [v13 title];
          v18 = [(CNUIFamilyMemberDowntimeContactSection *)v16 initWithContactItems:v15 title:v17];

          [v8 addObject:v18];
        }

        v10 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v19 = [v8 copy];
    filteredSections = v21->_filteredSections;
    v21->_filteredSections = v19;
  }
}

uint64_t __69__CNUIFamilyMemberDowntimeContactDataSource_filterSectionsForString___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__CNUIFamilyMemberDowntimeContactDataSource_filterSectionsForString___block_invoke_3;
  v8[3] = &unk_1E74E5A18;
  v9 = v3;
  v5 = v3;
  v6 = [v4 _cn_any:v8];

  return v6;
}

uint64_t __69__CNUIFamilyMemberDowntimeContactDataSource_filterSectionsForString___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) contact];
  v5 = [v4 givenName];
  v6 = [v5 localizedLowercaseString];
  if ([v6 hasPrefix:v3])
  {
    v7 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) contact];
    v9 = [v8 familyName];
    v10 = [v9 localizedLowercaseString];
    v7 = [v10 hasPrefix:v3];
  }

  return v7;
}

- (void)setFilterString:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_filterString isEqualToString:?])
  {
    v4 = [v6 copy];
    filterString = self->_filterString;
    self->_filterString = v4;

    [(CNUIFamilyMemberDowntimeContactDataSource *)self filterSectionsForString:v6];
  }
}

- (void)setContactItemSelected:(BOOL)a3 forIndexPath:(id)a4
{
  v4 = a3;
  v8 = [(CNUIFamilyMemberDowntimeContactDataSource *)self contactItemForIndexPath:a4];
  [v8 setSelected:v4];
  v6 = [(CNUIFamilyMemberDowntimeContactDataSource *)self selectedContactItems];
  v7 = v6;
  if (v4)
  {
    [v6 _cn_addNonNilObjectIfNotPresent:v8];
  }

  else
  {
    [v6 removeObject:v8];
  }
}

- (id)selectedContacts
{
  v2 = [(CNUIFamilyMemberDowntimeContactDataSource *)self selectedContactItems];
  v3 = [v2 _cn_map:&__block_literal_global_4239];

  return v3;
}

- (id)contactItemForIndexPath:(id)a3
{
  v4 = a3;
  [(CNUIFamilyMemberDowntimeContactDataSource *)self _loadAllContactsIfNeeded];
  v5 = -[NSArray objectAtIndexedSubscript:](self->_filteredSections, "objectAtIndexedSubscript:", [v4 section]);
  v6 = [v5 contactItems];
  v7 = [v4 row];

  v8 = [v6 objectAtIndexedSubscript:v7];

  return v8;
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  [(CNUIFamilyMemberDowntimeContactDataSource *)self _loadAllContactsIfNeeded];
  v5 = [(NSArray *)self->_filteredSections objectAtIndexedSubscript:a3];
  v6 = [v5 contactItems];
  v7 = [v6 count];

  return v7;
}

- (int64_t)numberOfSections
{
  [(CNUIFamilyMemberDowntimeContactDataSource *)self _loadAllContactsIfNeeded];
  filteredSections = self->_filteredSections;

  return [(NSArray *)filteredSections count];
}

- (id)titleForSection:(int64_t)a3
{
  v3 = [(NSArray *)self->_filteredSections objectAtIndexedSubscript:a3];
  v4 = [v3 title];

  return v4;
}

- (int64_t)sortOrder
{
  v2 = [MEMORY[0x1E695CE40] sharedDefaults];
  v3 = [v2 sortOrder];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNUIFamilyMemberDowntimeContactDataSource alloc];
  store = self->_store;
  familyMembers = self->_familyMembers;
  requiredKeys = self->_requiredKeys;

  return [(CNUIFamilyMemberDowntimeContactDataSource *)v4 initWithStore:store familyMembers:familyMembers requiredKeys:requiredKeys];
}

- (CNUIFamilyMemberDowntimeContactDataSource)initWithStore:(id)a3 familyMembers:(id)a4 requiredKeys:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = CNUIFamilyMemberDowntimeContactDataSource;
  v12 = [(CNUIFamilyMemberDowntimeContactDataSource *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, a3);
    objc_storeStrong(&v13->_familyMembers, a4);
    objc_storeStrong(&v13->_requiredKeys, a5);
    v14 = [MEMORY[0x1E695DF70] array];
    selectedContactItems = v13->_selectedContactItems;
    v13->_selectedContactItems = v14;

    v16 = v13;
  }

  return v13;
}

+ (BOOL)isErrorPossiblyRelatedToExtraStores:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E696A250];
  if ([MEMORY[0x1E6996708] isError:v3 errorWithDomain:*MEMORY[0x1E696A250] code:4099] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6996708], "isError:errorWithDomain:code:", v3, v4, 4097))
  {
    v5 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E6996708] isError:v3 errorWithDomain:v4 code:4101];
  }

  return v5;
}

@end