@interface CNUIFamilyMemberDowntimeContactDataSource
+ (BOOL)isErrorPossiblyRelatedToExtraStores:(id)stores;
- (CNUIFamilyMemberDowntimeContactDataSource)initWithStore:(id)store familyMembers:(id)members requiredKeys:(id)keys;
- (id)completeContactFromContact:(id)contact fromMainStoreOnly:(BOOL)only keysToFetch:(id)fetch;
- (id)contactItemForIndexPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)labelForFamilyMember:(id)member;
- (id)preferredForNameMeContactIdentifier;
- (id)preferredForNameMeContactWithKeysToFetch:(id)fetch;
- (id)selectedContacts;
- (id)titleForSection:(int64_t)section;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (int64_t)sortOrder;
- (void)_loadAllContactsIfNeeded;
- (void)filterSectionsForString:(id)string;
- (void)postProcessForFamilyMembersWithContacts:(id)contacts;
- (void)setContactItemSelected:(BOOL)selected forIndexPath:(id)path;
- (void)setFilterString:(id)string;
@end

@implementation CNUIFamilyMemberDowntimeContactDataSource

- (id)preferredForNameMeContactWithKeysToFetch:(id)fetch
{
  fetchCopy = fetch;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (-[CNUIFamilyMemberDowntimeContactDataSource meContactNeedsUpdate](selfCopy, "meContactNeedsUpdate") || (-[CNUIFamilyMemberDowntimeContactDataSource meContact](selfCopy, "meContact"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (-[CNUIFamilyMemberDowntimeContactDataSource meContact](selfCopy, "meContact"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 areKeysAvailable:fetchCopy], v7, v6, (v8 & 1) == 0))
  {
    array = [MEMORY[0x1E695DF70] array];
    v10 = array;
    if (fetchCopy)
    {
      [array addObjectsFromArray:fetchCopy];
    }

    meContact = [(CNUIFamilyMemberDowntimeContactDataSource *)selfCopy meContact];

    if (meContact)
    {
      meContact2 = [(CNUIFamilyMemberDowntimeContactDataSource *)selfCopy meContact];
      availableKeyDescriptor = [meContact2 availableKeyDescriptor];
      [v10 addObject:availableKeyDescriptor];
    }

    v14 = [objc_alloc(MEMORY[0x1E695CD78]) initWithKeysToFetch:v10];
    predicateForMeContact = [MEMORY[0x1E695CD58] predicateForMeContact];
    [v14 setPredicate:predicateForMeContact];

    [v14 setUnifyResults:0];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__4197;
    v31 = __Block_byref_object_dispose__4198;
    v32 = 0;
    store = [(CNUIFamilyMemberDowntimeContactDataSource *)selfCopy store];
    v25[4] = &v27;
    v26 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__CNUIFamilyMemberDowntimeContactDataSource_preferredForNameMeContactWithKeysToFetch___block_invoke;
    v25[3] = &unk_1E74E6F60;
    v17 = [store enumerateNonUnifiedContactsWithFetchRequest:v14 error:&v26 usingBlock:v25];
    v18 = v26;

    if (v17)
    {
      [(CNUIFamilyMemberDowntimeContactDataSource *)selfCopy setMeContactNeedsUpdate:0];
      [(CNUIFamilyMemberDowntimeContactDataSource *)selfCopy setMeContact:v28[5]];
    }

    else
    {
      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIFamilyMemberDowntimeContactDataSource.m", 335, 3, @"Error fetching the me card: %@", v19, v20, v21, v22, v18);
    }

    _Block_object_dispose(&v27, 8);
  }

  meContact3 = [(CNUIFamilyMemberDowntimeContactDataSource *)selfCopy meContact];
  objc_sync_exit(selfCopy);

  return meContact3;
}

- (id)preferredForNameMeContactIdentifier
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E695C258];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [(CNUIFamilyMemberDowntimeContactDataSource *)self preferredForNameMeContactWithKeysToFetch:v3];
  identifier = [v4 identifier];

  return identifier;
}

- (id)completeContactFromContact:(id)contact fromMainStoreOnly:(BOOL)only keysToFetch:(id)fetch
{
  onlyCopy = only;
  contactCopy = contact;
  fetchCopy = fetch;
  if ([contactCopy isUnknown] && (objc_msgSend(contactCopy, "isSuggestedMe") & 1) == 0)
  {
    v23 = contactCopy;
  }

  else
  {
    identifier = [contactCopy identifier];
    preferredForNameMeContactIdentifier = [(CNUIFamilyMemberDowntimeContactDataSource *)self preferredForNameMeContactIdentifier];
    v12 = [identifier isEqual:preferredForNameMeContactIdentifier];

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
    v27 = fetchCopy;
    v33 = v12;
    v13 = identifier;
    v28 = v13;
    selfCopy = self;
    v30 = &v34;
    v31 = &v38;
    v32 = &v44;
    v14 = _Block_copy(aBlock);
    v14[2](v14, onlyCopy);
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

- (id)labelForFamilyMember:(id)member
{
  memberCopy = member;
  if ([memberCopy isMe])
  {
    v4 = @"DOWNTIME_PICKER_CONTACT_LABEL_ME";
LABEL_5:
    v5 = CNContactsUIBundle();
    v6 = [v5 localizedStringForKey:v4 value:&stru_1F0CE7398 table:@"Localized"];

    goto LABEL_7;
  }

  if ([memberCopy isParent])
  {
    v4 = @"DOWNTIME_PICKER_CONTACT_LABEL_PARENT";
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)postProcessForFamilyMembersWithContacts:(id)contacts
{
  v48 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v31 = [contactsCopy mutableCopy];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__4197;
  v45 = __Block_byref_object_dispose__4198;
  array = [MEMORY[0x1E695DF70] array];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __85__CNUIFamilyMemberDowntimeContactDataSource_postProcessForFamilyMembersWithContacts___block_invoke;
  v38[3] = &unk_1E74E2000;
  v38[4] = self;
  v40 = &v41;
  v4 = indexSet;
  v39 = v4;
  [contactsCopy enumerateObjectsUsingBlock:v38];
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
          second = [v10 second];
          v12 = [(CNUIFamilyMemberDowntimeContactDataSource *)self labelForFamilyMember:second];

          v13 = [CNUIFamilyMemberDowntimeContactItem alloc];
          first = [v10 first];
          v15 = [(CNUIFamilyMemberDowntimeContactItem *)v13 initWithContact:first label:v12];

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
  isShowingFamilyMemberContacts = [(CNUIFamilyMemberDowntimeContactDataSource *)self isShowingFamilyMemberContacts];
  v22 = CNContactsUIBundle();
  v23 = v22;
  if (isShowingFamilyMemberContacts)
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
    array = [MEMORY[0x1E695DF70] array];
    store = [(CNUIFamilyMemberDowntimeContactDataSource *)self store];
    v17[0] = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__CNUIFamilyMemberDowntimeContactDataSource__loadAllContactsIfNeeded__block_invoke;
    v15[3] = &unk_1E74E5ED0;
    v8 = array;
    v16 = v8;
    v9 = [store enumerateContactsAndMatchInfoWithFetchRequest:v5 error:v17 usingBlock:v15];
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

- (void)filterSectionsForString:(id)string
{
  v30 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  localizedLowercaseString = [stringCopy localizedLowercaseString];
  v6 = [localizedLowercaseString componentsSeparatedByString:@" "];
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
    selfCopy = self;
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
          contactItems = [v13 contactItems];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __69__CNUIFamilyMemberDowntimeContactDataSource_filterSectionsForString___block_invoke_2;
          v23[3] = &unk_1E74E1FB0;
          v24 = v7;
          v15 = [contactItems _cn_filter:v23];

          v16 = [CNUIFamilyMemberDowntimeContactSection alloc];
          title = [v13 title];
          v18 = [(CNUIFamilyMemberDowntimeContactSection *)v16 initWithContactItems:v15 title:title];

          [v8 addObject:v18];
        }

        v10 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    v19 = [v8 copy];
    filteredSections = selfCopy->_filteredSections;
    selfCopy->_filteredSections = v19;
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

- (void)setFilterString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_filterString isEqualToString:?])
  {
    v4 = [stringCopy copy];
    filterString = self->_filterString;
    self->_filterString = v4;

    [(CNUIFamilyMemberDowntimeContactDataSource *)self filterSectionsForString:stringCopy];
  }
}

- (void)setContactItemSelected:(BOOL)selected forIndexPath:(id)path
{
  selectedCopy = selected;
  v8 = [(CNUIFamilyMemberDowntimeContactDataSource *)self contactItemForIndexPath:path];
  [v8 setSelected:selectedCopy];
  selectedContactItems = [(CNUIFamilyMemberDowntimeContactDataSource *)self selectedContactItems];
  v7 = selectedContactItems;
  if (selectedCopy)
  {
    [selectedContactItems _cn_addNonNilObjectIfNotPresent:v8];
  }

  else
  {
    [selectedContactItems removeObject:v8];
  }
}

- (id)selectedContacts
{
  selectedContactItems = [(CNUIFamilyMemberDowntimeContactDataSource *)self selectedContactItems];
  v3 = [selectedContactItems _cn_map:&__block_literal_global_4239];

  return v3;
}

- (id)contactItemForIndexPath:(id)path
{
  pathCopy = path;
  [(CNUIFamilyMemberDowntimeContactDataSource *)self _loadAllContactsIfNeeded];
  v5 = -[NSArray objectAtIndexedSubscript:](self->_filteredSections, "objectAtIndexedSubscript:", [pathCopy section]);
  contactItems = [v5 contactItems];
  v7 = [pathCopy row];

  v8 = [contactItems objectAtIndexedSubscript:v7];

  return v8;
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  [(CNUIFamilyMemberDowntimeContactDataSource *)self _loadAllContactsIfNeeded];
  v5 = [(NSArray *)self->_filteredSections objectAtIndexedSubscript:section];
  contactItems = [v5 contactItems];
  v7 = [contactItems count];

  return v7;
}

- (int64_t)numberOfSections
{
  [(CNUIFamilyMemberDowntimeContactDataSource *)self _loadAllContactsIfNeeded];
  filteredSections = self->_filteredSections;

  return [(NSArray *)filteredSections count];
}

- (id)titleForSection:(int64_t)section
{
  v3 = [(NSArray *)self->_filteredSections objectAtIndexedSubscript:section];
  title = [v3 title];

  return title;
}

- (int64_t)sortOrder
{
  mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
  sortOrder = [mEMORY[0x1E695CE40] sortOrder];

  return sortOrder;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNUIFamilyMemberDowntimeContactDataSource alloc];
  store = self->_store;
  familyMembers = self->_familyMembers;
  requiredKeys = self->_requiredKeys;

  return [(CNUIFamilyMemberDowntimeContactDataSource *)v4 initWithStore:store familyMembers:familyMembers requiredKeys:requiredKeys];
}

- (CNUIFamilyMemberDowntimeContactDataSource)initWithStore:(id)store familyMembers:(id)members requiredKeys:(id)keys
{
  storeCopy = store;
  membersCopy = members;
  keysCopy = keys;
  v18.receiver = self;
  v18.super_class = CNUIFamilyMemberDowntimeContactDataSource;
  v12 = [(CNUIFamilyMemberDowntimeContactDataSource *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, store);
    objc_storeStrong(&v13->_familyMembers, members);
    objc_storeStrong(&v13->_requiredKeys, keys);
    array = [MEMORY[0x1E695DF70] array];
    selectedContactItems = v13->_selectedContactItems;
    v13->_selectedContactItems = array;

    v16 = v13;
  }

  return v13;
}

+ (BOOL)isErrorPossiblyRelatedToExtraStores:(id)stores
{
  storesCopy = stores;
  v4 = *MEMORY[0x1E696A250];
  if ([MEMORY[0x1E6996708] isError:storesCopy errorWithDomain:*MEMORY[0x1E696A250] code:4099] & 1) != 0 || (objc_msgSend(MEMORY[0x1E6996708], "isError:errorWithDomain:code:", storesCopy, v4, 4097))
  {
    v5 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E6996708] isError:storesCopy errorWithDomain:v4 code:4101];
  }

  return v5;
}

@end