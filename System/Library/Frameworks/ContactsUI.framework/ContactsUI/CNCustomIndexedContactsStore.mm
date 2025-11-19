@interface CNCustomIndexedContactsStore
+ (id)log;
- (CNCustomIndexedContactsStore)initWithContactIdentifiers:(id)a3;
- (id)contactAt:(int64_t)a3 section:(int64_t)a4;
- (id)fetchAndSortContactsByUserPreferredSortOrderForIdentifiers:(id)a3;
- (id)getNameFromContactAccordingToUserPrefferedSortOrder:(id)a3;
- (id)sectionIndexTitles;
- (id)titleForSection:(int64_t)a3;
- (int64_t)numberOFItemsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)createIndexedContacts:(id)a3;
- (void)filterContactsForString:(id)a3;
- (void)setFilterString:(id)a3;
- (void)updateStoreWithContactIdentifiers:(id)a3;
@end

@implementation CNCustomIndexedContactsStore

- (void)filterContactsForString:(id)a3
{
  v4 = a3;
  v5 = [v4 localizedLowercaseString];
  v6 = [v5 componentsSeparatedByString:@" "];
  v7 = [v6 _cn_filter:&__block_literal_global_127_52719];

  LOBYTE(v5) = (*(*MEMORY[0x1E6996568] + 16))();
  if ((v5 & 1) != 0 || ![v7 count])
  {
    objc_storeStrong(&self->_filteredSortedContacts, self->_sortedContacts);
    objc_storeStrong(&self->_filteredIndexTitles, self->_indexTitles);
  }

  else
  {
    sortedContacts = self->_sortedContacts;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__CNCustomIndexedContactsStore_filterContactsForString___block_invoke_2;
    v12[3] = &unk_1E74E7880;
    v13 = v7;
    v9 = [(NSArray *)sortedContacts _cn_filter:v12];
    v10 = [v9 copy];
    filteredSortedContacts = self->_filteredSortedContacts;
    self->_filteredSortedContacts = v10;
  }
}

uint64_t __56__CNCustomIndexedContactsStore_filterContactsForString___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__CNCustomIndexedContactsStore_filterContactsForString___block_invoke_3;
  v8[3] = &unk_1E74E5A18;
  v9 = v3;
  v5 = v3;
  v6 = [v4 _cn_any:v8];

  return v6;
}

uint64_t __56__CNCustomIndexedContactsStore_filterContactsForString___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) givenName];
  v5 = [v4 localizedLowercaseString];
  if ([v5 hasPrefix:v3])
  {
    v6 = 1;
  }

  else
  {
    v7 = [*(a1 + 32) familyName];
    v8 = [v7 localizedLowercaseString];
    v6 = [v8 hasPrefix:v3];
  }

  return v6;
}

- (void)setFilterString:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_filterString isEqualToString:?])
  {
    if ([v7 length])
    {
      self->_isFilterActive = 1;
      v4 = [v7 copy];
      filterString = self->_filterString;
      self->_filterString = v4;

      [(CNCustomIndexedContactsStore *)self filterContactsForString:v7];
    }

    else
    {
      self->_isFilterActive = 0;
      v6 = self->_filterString;
      self->_filterString = 0;
    }
  }
}

- (void)createIndexedContacts:(id)a3
{
  v15 = a3;
  v4 = self->_indexedContactsAndItsSegments;
  if ([v15 count])
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [v15 objectAtIndexedSubscript:v7];
      v9 = [(CNCustomIndexedContactsStore *)self getNameFromContactAccordingToUserPrefferedSortOrder:v8];
      v10 = [v9 substringToIndex:1];
      v11 = v10;
      if (v10 && [(__CFString *)v10 length])
      {
        if (v5)
        {
          goto LABEL_6;
        }
      }

      else
      {

        v11 = @"#";
        if (v5)
        {
LABEL_6:
          if (([(__CFString *)v11 isEqualToString:v5]& 1) == 0)
          {
            v12 = [[CNSegment alloc] initWithStart:v6 end:v7 - 1];
            [(NSMutableDictionary *)v4 setObject:v12 forKeyedSubscript:v5];
            v13 = v11;

            v6 = v7;
            v5 = v13;
          }

          goto LABEL_10;
        }
      }

      v5 = v11;
LABEL_10:

      if (++v7 >= [v15 count])
      {
        v14 = -[CNSegment initWithStart:end:]([CNSegment alloc], "initWithStart:end:", v6, [v15 count] - 1);
        [(NSMutableDictionary *)v4 setObject:v14 forKeyedSubscript:v5];

        break;
      }
    }
  }
}

- (id)sectionIndexTitles
{
  if ([(CNCustomIndexedContactsStore *)self isFilterActive])
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v3 = [(CNCustomIndexedContactsStore *)self indexTitles];
  }

  return v3;
}

- (id)titleForSection:(int64_t)a3
{
  if ([(CNCustomIndexedContactsStore *)self isFilterActive])
  {
    v5 = [(CNCustomIndexedContactsStore *)self filteredIndexTitles];
  }

  else
  {
    v5 = self->_indexTitles;
  }

  v6 = v5;
  if ([(CNCustomIndexedContactsStore *)self isFilterActive])
  {
    v7 = @"MATCHES";
  }

  else if ([(NSArray *)v6 count]<= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSArray *)v6 objectAtIndexedSubscript:a3];
  }

  return v7;
}

- (id)contactAt:(int64_t)a3 section:(int64_t)a4
{
  if ([(CNCustomIndexedContactsStore *)self isFilterActive])
  {
    v7 = [(CNCustomIndexedContactsStore *)self filteredIndexTitles];
  }

  else
  {
    v7 = self->_indexTitles;
  }

  v8 = v7;
  v9 = [(NSArray *)v7 objectAtIndexedSubscript:a4];
  if ([(CNCustomIndexedContactsStore *)self isFilterActive])
  {
    v10 = [(CNCustomIndexedContactsStore *)self filteredSortedContacts];
    v11 = [v10 objectAtIndexedSubscript:a3];
  }

  else
  {
    v12 = [(CNCustomIndexedContactsStore *)self indexedContactsAndItsSegments];
    v10 = [v12 objectForKeyedSubscript:v9];

    if ([v10 isValid])
    {
      v13 = [v10 indexOffsetFrom:a3];
      v14 = [(CNCustomIndexedContactsStore *)self sortedContacts];
      v11 = [v14 objectAtIndexedSubscript:v13];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (int64_t)numberOFItemsInSection:(int64_t)a3
{
  if ([(CNCustomIndexedContactsStore *)self isFilterActive])
  {
    v5 = [(CNCustomIndexedContactsStore *)self filteredSortedContacts];
    v6 = [(NSArray *)v5 count];
  }

  else
  {
    v5 = self->_indexTitles;
    if ([(NSArray *)v5 count]<= a3)
    {
      v6 = 0;
    }

    else
    {
      v7 = [(NSArray *)v5 objectAtIndex:a3];
      v8 = [(CNCustomIndexedContactsStore *)self indexedContactsAndItsSegments];
      v9 = [v8 objectForKeyedSubscript:v7];

      if (v9 && [v9 isValid])
      {
        v6 = [v9 count];
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (int64_t)numberOfSections
{
  if ([(CNCustomIndexedContactsStore *)self isFilterActive])
  {
    return 1;
  }

  v4 = [(CNCustomIndexedContactsStore *)self indexTitles];
  v5 = [v4 count];

  return v5;
}

- (id)getNameFromContactAccordingToUserPrefferedSortOrder:(id)a3
{
  v4 = a3;
  if ([(CNCustomIndexedContactsStore *)self preferredSortOrder]== 2)
  {
    v5 = [v4 firstName];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 firstName];
      v8 = [v7 length];

      if (v8)
      {
        v9 = [v4 firstName];
        v10 = [v4 lastName];
        if (v10)
        {
          v11 = v10;
          v12 = [v4 lastName];
          v13 = [v12 length];

          if (v13)
          {
            v14 = MEMORY[0x1E696AEC0];
            v15 = [v4 lastName];
LABEL_12:
            v24 = v15;
            v25 = [v14 stringWithFormat:@"%@%@", v9, v15];

            v9 = v25;
            goto LABEL_16;
          }
        }

        goto LABEL_16;
      }
    }

    v26 = [v4 lastName];
LABEL_15:
    v9 = v26;
    goto LABEL_16;
  }

  v16 = [v4 lastName];
  if (!v16 || (v17 = v16, [v4 lastName], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, v17, !v19))
  {
    v26 = [v4 firstName];
    goto LABEL_15;
  }

  v9 = [v4 lastName];
  v20 = [v4 firstName];
  if (v20)
  {
    v21 = v20;
    v22 = [v4 firstName];
    v23 = [v22 length];

    if (v23)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = [v4 firstName];
      goto LABEL_12;
    }
  }

LABEL_16:

  return v9;
}

- (id)fetchAndSortContactsByUserPreferredSortOrderForIdentifiers:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CNContactViewController descriptorForRequiredKeys];
  v20[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];

  v7 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:v4];

  contactStore = self->_contactStore;
  v17 = 0;
  v9 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v7 keysToFetch:v6 error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v9 count];
      *buf = 134349056;
      v19 = v13;
      _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_INFO, "Fetched %{public}ld contacts", buf, 0xCu);
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_8;
    }

    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v11;
      _os_log_error_impl(&dword_199A75000, v12, OS_LOG_TYPE_ERROR, "Encountered Error while fetching Error: %{public}@", buf, 0xCu);
    }
  }

LABEL_8:
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __91__CNCustomIndexedContactsStore_fetchAndSortContactsByUserPreferredSortOrderForIdentifiers___block_invoke;
  v16[3] = &unk_1E74E59D0;
  v16[4] = self;
  v14 = [v9 sortedArrayUsingComparator:v16];

  return v14;
}

uint64_t __91__CNCustomIndexedContactsStore_fetchAndSortContactsByUserPreferredSortOrderForIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  objc_opt_class();
  v10 = v6;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [*(a1 + 32) getNameFromContactAccordingToUserPrefferedSortOrder:v9];
  v14 = [*(a1 + 32) getNameFromContactAccordingToUserPrefferedSortOrder:v12];
  v15 = v14;
  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (v13)
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }
  }

  else
  {
    v17 = [v13 localizedCaseInsensitiveCompare:v14];
  }

  return v17;
}

- (void)updateStoreWithContactIdentifiers:(id)a3
{
  v4 = [(CNCustomIndexedContactsStore *)self fetchAndSortContactsByUserPreferredSortOrderForIdentifiers:a3];
  [(CNCustomIndexedContactsStore *)self setSortedContacts:v4];

  sortedContacts = self->_sortedContacts;

  [(CNCustomIndexedContactsStore *)self createIndexedContacts:sortedContacts];
}

- (CNCustomIndexedContactsStore)initWithContactIdentifiers:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = CNCustomIndexedContactsStore;
  v5 = [(CNCustomIndexedContactsStore *)&v31 init];
  if (v5)
  {
    v26 = +[CNUIContactsEnvironment currentEnvironment];
    v6 = [v26 contactStore];
    contactStore = v5->_contactStore;
    v5->_contactStore = v6;

    v8 = [MEMORY[0x1E695CE40] sharedDefaults];
    v9 = [v8 sortOrder];

    v10 = 2;
    if (v9 == 3)
    {
      v10 = 3;
    }

    v5->_preferredSortOrder = v10;
    v11 = [(CNCustomIndexedContactsStore *)v5 fetchAndSortContactsByUserPreferredSortOrderForIdentifiers:v4];
    sortedContacts = v5->_sortedContacts;
    v5->_sortedContacts = v11;

    indexTitles = v5->_indexTitles;
    v5->_indexTitles = &unk_1F0D4BA18;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    indexedContactsAndItsSegments = v5->_indexedContactsAndItsSegments;
    v5->_indexedContactsAndItsSegments = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v5->_indexTitles;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        v21 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * v21);
          v23 = [[CNSegment alloc] initWithStart:-1 end:-1];
          [(NSMutableDictionary *)v5->_indexedContactsAndItsSegments setObject:v23 forKeyedSubscript:v22];

          ++v21;
        }

        while (v19 != v21);
        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v19);
    }

    [(CNCustomIndexedContactsStore *)v5 createIndexedContacts:v5->_sortedContacts];
    v24 = v5;
  }

  return v5;
}

+ (id)log
{
  if (log_cn_once_token_1_52827 != -1)
  {
    dispatch_once(&log_cn_once_token_1_52827, &__block_literal_global_52828);
  }

  v3 = log_cn_once_object_1_52829;

  return v3;
}

uint64_t __35__CNCustomIndexedContactsStore_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNCustomIndexedContactsStore");
  v1 = log_cn_once_object_1_52829;
  log_cn_once_object_1_52829 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end