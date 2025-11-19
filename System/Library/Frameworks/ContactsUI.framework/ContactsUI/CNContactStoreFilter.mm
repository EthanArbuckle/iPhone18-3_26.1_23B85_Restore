@interface CNContactStoreFilter
+ (BOOL)getContainerIdentifiers:(id *)a3 groupIdentifiers:(id *)a4 serverFilter:(BOOL *)a5 fromLegacyDictionary:(id)a6 contactStore:(id)a7;
+ (BOOL)getContainerIdentifiers:(id *)a3 groupIdentifiers:(id *)a4 serverFilter:(BOOL *)a5 fromPreSundanceDictionary:(id)a6 contactStore:(id)a7;
+ (BOOL)getContainerIdentifiers:(id *)a3 groupIdentifiers:(id *)a4 serverFilter:(BOOL *)a5 fromSundanceToOkemoAndAddressBookUIDictionary:(id)a6 contactStore:(id)a7;
+ (id)contactStoreFilterFromPreferencesWithContactStore:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)showsEverything;
- (BOOL)supportsSections;
- (CNContactStoreFilter)initWithDictionaryRepresentation:(id)a3;
- (CNContactStoreFilter)initWithDictionaryRepresentation:(id)a3 contactStore:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithContactStore:(id)a3;
- (id)predicate;
- (void)addAddressBookUIKeysToDictionaryRepresentation:(id)a3 withAllContainers:(id)a4 excludedContainers:(id)a5 excludedGroups:(id)a6;
- (void)saveToPreferencesWithContactStore:(id)a3;
@end

@implementation CNContactStoreFilter

- (BOOL)showsEverything
{
  v3 = [(CNContactStoreFilter *)self predicate];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CNContactStoreFilter *)self limitedAccessIdentifiers];
    v4 = v5 == 0;
  }

  return v4;
}

- (id)predicate
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CNContactFilter *)self fullTextString];
  v5 = [(CNContactStoreFilter *)self containerIdentifiers];
  v6 = [(CNContactStoreFilter *)self groupIdentifiers];
  if ([v4 length])
  {
    v7 = MEMORY[0x1E695CD58];
    v8 = [v5 allObjects];
    v9 = [v6 allObjects];
    v10 = [v7 predicateForContactsMatchingFullTextSearch:v4 containerIdentifiers:v8 groupIdentifiers:v9];
LABEL_3:
    v11 = v10;

    [v3 addObject:v11];
    goto LABEL_6;
  }

  if (v5 | v6 && ![(CNContactStoreFilter *)self isServerFilter])
  {
    v14 = MEMORY[0x1E695CD58];
    v8 = [v5 allObjects];
    v9 = [v6 allObjects];
    v10 = [v14 predicateForPreferredNameInContainersWithIdentifiers:v8 groupsWithIdentifiers:v9];
    goto LABEL_3;
  }

LABEL_6:
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      [v3 firstObject];
    }

    else
    {
      [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v3];
    }
    v12 = ;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)supportsSections
{
  v2 = [(CNContactFilter *)self fullTextString];
  v3 = v2 == 0;

  return v3;
}

- (void)saveToPreferencesWithContactStore:(id)a3
{
  v6 = [(CNContactStoreFilter *)self dictionaryRepresentationWithContactStore:a3];
  v3 = [v6 objectForKeyedSubscript:@"CNContactFilterDictionaryKeyFullTextString"];

  if (v3)
  {
    v4 = [v6 _cn_filter:&__block_literal_global_84];

    v6 = v4;
  }

  v5 = [MEMORY[0x1E695CE40] sharedDefaults];
  [v5 setFilteredGroupAndContainerIDs:v6];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CNContactStoreFilter;
  v4 = [(CNContactFilter *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ containerIdentifiers: %@, groupIdentifiers: %@", v4, self->_containerIdentifiers, self->_groupIdentifiers];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v20.receiver = self, v20.super_class = CNContactStoreFilter, ![(CNContactFilter *)&v20 isEqual:v5]))
  {
    LOBYTE(v12) = 0;
    goto LABEL_26;
  }

  v6 = v5;
  v7 = v6;
  containerIdentifiers = self->_containerIdentifiers;
  v9 = containerIdentifiers;
  if (!containerIdentifiers)
  {
    v10 = [v6 containerIdentifiers];
    if (!v10)
    {
      v19 = 0;
      v11 = 0;
      goto LABEL_11;
    }

    v19 = v10;
    v9 = self->_containerIdentifiers;
  }

  v3 = [v7 containerIdentifiers];
  if (![v9 isEqual:v3])
  {
    LOBYTE(v12) = 0;
    goto LABEL_22;
  }

  v11 = 1;
LABEL_11:
  v13 = 32;
  groupIdentifiers = self->_groupIdentifiers;
  v15 = groupIdentifiers;
  if (!groupIdentifiers)
  {
    v9 = [v7 groupIdentifiers];
    if (!v9)
    {
      v16 = 0;
LABEL_18:
      v17 = [(CNContactStoreFilter *)self isServerFilter];
      v12 = v17 ^ [v7 isServerFilter] ^ 1;
      if (!v16)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v15 = self->_groupIdentifiers;
  }

  v13 = [v7 groupIdentifiers];
  if ([(NSSet *)v15 isEqual:v13])
  {
    v16 = 1;
    goto LABEL_18;
  }

  LOBYTE(v12) = 0;
LABEL_19:

LABEL_20:
  if (!groupIdentifiers)
  {

    if ((v11 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v11)
  {
LABEL_22:
  }

LABEL_23:
  if (!containerIdentifiers)
  {
  }

LABEL_26:
  return v12;
}

- (void)addAddressBookUIKeysToDictionaryRepresentation:(id)a3 withAllContainers:(id)a4 excludedContainers:(id)a5 excludedGroups:(id)a6
{
  v17 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(CNContactStoreFilter *)self isServerFilter])
  {
    v13 = [v10 firstObject];
    v14 = v13;
    if (!v13)
    {
      goto LABEL_6;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v13, "iOSLegacyIdentifier")}];
    v16 = @"kABContactsFilter_DirectorySourceID";
  }

  else
  {
    v14 = [v11 _cn_map:&__block_literal_global_63];
    [v17 setObject:v14 forKeyedSubscript:@"kABContactsFilter_ExcludedSourceIDs"];
    v15 = [v12 _cn_map:&__block_literal_global_66];
    v16 = @"kABContactsFilter_ExcludedGroupIDs";
  }

  [v17 setObject:v15 forKeyedSubscript:v16];

LABEL_6:
}

uint64_t __123__CNContactStoreFilter_addAddressBookUIKeysToDictionaryRepresentation_withAllContainers_excludedContainers_excludedGroups___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 iOSLegacyIdentifier];

  return [v2 numberWithInt:v3];
}

uint64_t __123__CNContactStoreFilter_addAddressBookUIKeysToDictionaryRepresentation_withAllContainers_excludedContainers_excludedGroups___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 iOSLegacyIdentifier];

  return [v2 numberWithInt:v3];
}

- (id)dictionaryRepresentationWithContactStore:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CNContactStoreFilter;
  v5 = [(CNContactFilter *)&v21 dictionaryRepresentation];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = v8;

  if (![(CNContactStoreFilter *)self showsEverything])
  {
    if ([(CNContactStoreFilter *)self isServerFilter])
    {
      [v4 serverSearchContainersMatchingPredicate:0 error:0];
    }

    else
    {
      [v4 containersMatchingPredicate:0 error:0];
    }
    v10 = ;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__CNContactStoreFilter_dictionaryRepresentationWithContactStore___block_invoke;
    v20[3] = &unk_1E74E75E0;
    v20[4] = self;
    v11 = [v10 _cn_filter:v20];
    v12 = [v4 groupsMatchingPredicate:0 error:0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__CNContactStoreFilter_dictionaryRepresentationWithContactStore___block_invoke_2;
    v19[3] = &unk_1E74E49C0;
    v19[4] = self;
    v13 = [v12 _cn_filter:v19];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNContactStoreFilter isServerFilter](self, "isServerFilter")}];
    [v9 setObject:v14 forKeyedSubscript:@"CNContactStoreFilterDictionaryKeyIsServerFilter"];

    v15 = [v11 _cn_map:&__block_literal_global_58];
    [v9 setObject:v15 forKeyedSubscript:@"CNContactStoreFilterDictionaryKeyExcludedContainerIdentifiers"];
    v16 = [v13 _cn_map:&__block_literal_global_60];
    [v9 setObject:v16 forKeyedSubscript:@"CNContactStoreFilterDictionaryKeyExcludedGroupIdentifiers"];
    [(CNContactStoreFilter *)self addAddressBookUIKeysToDictionaryRepresentation:v9 withAllContainers:v10 excludedContainers:v11 excludedGroups:v13];
  }

  v17 = [v9 copy];

  return v17;
}

uint64_t __65__CNContactStoreFilter_dictionaryRepresentationWithContactStore___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 containerIdentifiers];
  v5 = [v3 identifier];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

uint64_t __65__CNContactStoreFilter_dictionaryRepresentationWithContactStore___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 groupIdentifiers];
  v5 = [v3 identifier];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v4 = [(CNContactStoreFilter *)self dictionaryRepresentationWithContactStore:v3];

  return v4;
}

- (CNContactStoreFilter)initWithDictionaryRepresentation:(id)a3 contactStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = CNContactStoreFilter;
  v8 = [(CNContactFilter *)&v36 initWithDictionaryRepresentation:v6];
  if (v8)
  {
    v35 = 0;
    v33 = 0;
    v34 = 0;
    v9 = [objc_opt_class() getContainerIdentifiers:&v34 groupIdentifiers:&v33 serverFilter:&v35 fromLegacyDictionary:v6 contactStore:v7];
    v10 = v34;
    v11 = v33;
    if ((v9 & 1) == 0)
    {
      v12 = [v6 objectForKeyedSubscript:@"CNContactStoreFilterDictionaryKeyIsServerFilter"];
      v35 = [v12 BOOLValue];

      v13 = [v6 objectForKeyedSubscript:@"CNContactStoreFilterDictionaryKeyExcludedContainerIdentifiers"];
      v14 = [v6 objectForKeyedSubscript:@"CNContactStoreFilterDictionaryKeyExcludedGroupIdentifiers"];
      if ([v13 count] || objc_msgSend(v14, "count"))
      {
        if (v35)
        {
          [v7 serverSearchContainersMatchingPredicate:0 error:0];
        }

        else
        {
          [v7 containersMatchingPredicate:0 error:0];
        }
        v15 = ;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __70__CNContactStoreFilter_initWithDictionaryRepresentation_contactStore___block_invoke;
        v31[3] = &unk_1E74E75E0;
        v32 = v13;
        v16 = [v15 _cn_filter:v31];
        v25 = [v16 _cn_map:&__block_literal_global_51];

        v17 = [v7 groupsMatchingPredicate:0 error:0];
        v26 = MEMORY[0x1E69E9820];
        v27 = 3221225472;
        v28 = __70__CNContactStoreFilter_initWithDictionaryRepresentation_contactStore___block_invoke_3;
        v29 = &unk_1E74E49C0;
        v30 = v14;
        v18 = [v17 _cn_filter:&v26];
        v19 = [v18 _cn_map:&__block_literal_global_53];

        v11 = v19;
        v10 = v25;
      }
    }

    if (![v10 count])
    {

      v10 = 0;
    }

    if (![v11 count])
    {

      v11 = 0;
    }

    if (v10)
    {
      v20 = [MEMORY[0x1E695DFD8] setWithArray:v10];
      containerIdentifiers = v8->_containerIdentifiers;
      v8->_containerIdentifiers = v20;
    }

    if (v11)
    {
      v22 = [MEMORY[0x1E695DFD8] setWithArray:v11];
      groupIdentifiers = v8->_groupIdentifiers;
      v8->_groupIdentifiers = v22;
    }

    v8->_isServerFilter = v35;
  }

  return v8;
}

uint64_t __70__CNContactStoreFilter_initWithDictionaryRepresentation_contactStore___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

uint64_t __70__CNContactStoreFilter_initWithDictionaryRepresentation_contactStore___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (CNContactStoreFilter)initWithDictionaryRepresentation:(id)a3
{
  v4 = MEMORY[0x1E695CE18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(CNContactStoreFilter *)self initWithDictionaryRepresentation:v5 contactStore:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = CNContactStoreFilter;
  v4 = [(CNContactFilter *)&v10 copyWithZone:a3];
  v5 = [(CNContactStoreFilter *)self containerIdentifiers];
  [v4 setContainerIdentifiers:v5];

  v6 = [(CNContactStoreFilter *)self groupIdentifiers];
  [v4 setGroupIdentifiers:v6];

  [v4 setIsServerFilter:self->_isServerFilter];
  v7 = [(CNContactStoreFilter *)self limitedAccessIdentifiers];
  [v4 setLimitedAccessIdentifiers:v7];

  v8 = [(CNContactStoreFilter *)self customDisplayName];
  [v4 setCustomDisplayName:v8];

  [v4 setLimitedAccessFilterMode:{-[CNContactStoreFilter limitedAccessFilterMode](self, "limitedAccessFilterMode")}];
  return v4;
}

+ (id)contactStoreFilterFromPreferencesWithContactStore:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695CE40] sharedDefaults];
  v6 = [v5 filteredGroupAndContainerIDs];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"CNContactFilterDictionaryKeyFullTextString"];

    if (v7)
    {
      v8 = [v6 _cn_filter:&__block_literal_global_82];

      v6 = v8;
    }

    v9 = [[a1 alloc] initWithDictionaryRepresentation:v6 contactStore:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)getContainerIdentifiers:(id *)a3 groupIdentifiers:(id *)a4 serverFilter:(BOOL *)a5 fromPreSundanceDictionary:(id)a6 contactStore:(id)a7
{
  v51[1] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a7;
  if (getContainerIdentifiers_groupIdentifiers_serverFilter_fromPreSundanceDictionary_contactStore__cn_once_token_2 != -1)
  {
    dispatch_once(&getContainerIdentifiers_groupIdentifiers_serverFilter_fromPreSundanceDictionary_contactStore__cn_once_token_2, &__block_literal_global_31_28563);
  }

  v13 = getContainerIdentifiers_groupIdentifiers_serverFilter_fromPreSundanceDictionary_contactStore__cn_once_object_2;
  v16 = MEMORY[0x1E695DFD8];
  v14 = [v11 allKeys];
  v15 = [v16 setWithArray:v14];
  LODWORD(v16) = [v15 intersectsSet:v13];

  if (v16)
  {
    v48 = a3;
    v17 = [v11 objectForKey:@"GroupID"];
    v18 = v17;
    v47 = a5;
    if (v17)
    {
      v19 = [MEMORY[0x1E695CEC0] predicateForiOSLegacyIdentifier:{objc_msgSend(v17, "intValue")}];
      v20 = [v12 groupsMatchingPredicate:v19 error:0];

      v21 = 0;
      if ([v20 count] == 1)
      {
        v21 = [v20 firstObject];
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = [v11 objectForKey:@"StoreID"];
    v23 = [v11 objectForKey:@"Global"];
    v24 = [v23 BOOLValue];

    if (!v22)
    {
      goto LABEL_12;
    }

    if (![v22 intValue])
    {
      v25 = [v12 containersMatchingPredicate:0 error:0];
      v45 = v16;
      v16 = v13;
      v26 = v22;
      v27 = v12;
      v28 = v21;
      v29 = v18;
      v30 = a4;
      v31 = [v25 count] > 1;

      v32 = v31 & v24;
      a4 = v30;
      v18 = v29;
      v21 = v28;
      v12 = v27;
      v22 = v26;
      v13 = v16;
      LOBYTE(v16) = v45;
      if (v32)
      {
        goto LABEL_12;
      }
    }

    v46 = a4;
    v34 = [MEMORY[0x1E695CE48] predicateForiOSLegacyIdentifier:{objc_msgSend(v22, "intValue")}];
    v35 = [v12 containersMatchingPredicate:v34 error:0];

    if ([v35 count] == 1)
    {
      v33 = [v35 firstObject];
    }

    else if ([v35 count])
    {
      v33 = 0;
    }

    else
    {
      v36 = [MEMORY[0x1E695CE48] predicateForiOSLegacyIdentifier:{objc_msgSend(v22, "intValue")}];
      v37 = [v12 serverSearchContainersMatchingPredicate:v36 error:0];

      if ([v37 count] == 1)
      {
        v33 = [v37 firstObject];

        a4 = v46;
        if (v33)
        {
          v38 = [v33 identifier];
          v51[0] = v38;
          *v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];

          *v47 = 1;
LABEL_31:

          goto LABEL_32;
        }

LABEL_12:
        if (v21)
        {
          v33 = 0;
LABEL_23:
          v39 = [v21 identifier];
          v50 = v39;
          *a4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];

          goto LABEL_31;
        }

LABEL_26:
        v41 = [v11 objectForKey:@"AccountIdentifier"];
        if (v41)
        {
          v42 = [MEMORY[0x1E695CE48] predicateForContainersInAccountWithExternalIdentifier:v41];
          v43 = [v12 containersMatchingPredicate:v42 error:0];

          if ([v43 count])
          {
            *v48 = [v43 _cn_map:&__block_literal_global_46];
          }
        }

        v33 = 0;
        goto LABEL_31;
      }

      v33 = 0;
      v35 = v37;
    }

    a4 = v46;

    if (v21)
    {
      goto LABEL_23;
    }

    if (v33)
    {
      v40 = [v33 identifier];
      v49 = v40;
      *v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];

      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_32:

  return v16;
}

void __117__CNContactStoreFilter_getContainerIdentifiers_groupIdentifiers_serverFilter_fromPreSundanceDictionary_contactStore___block_invoke()
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Global", @"GroupID", @"StoreID", @"AccountIdentifier", 0}];
  v0 = [v2 copy];
  v1 = getContainerIdentifiers_groupIdentifiers_serverFilter_fromPreSundanceDictionary_contactStore__cn_once_object_2;
  getContainerIdentifiers_groupIdentifiers_serverFilter_fromPreSundanceDictionary_contactStore__cn_once_object_2 = v0;
}

+ (BOOL)getContainerIdentifiers:(id *)a3 groupIdentifiers:(id *)a4 serverFilter:(BOOL *)a5 fromSundanceToOkemoAndAddressBookUIDictionary:(id)a6 contactStore:(id)a7
{
  v45[1] = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a7;
  if (getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore__cn_once_token_1 != -1)
  {
    dispatch_once(&getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore__cn_once_token_1, &__block_literal_global_9);
  }

  v13 = getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore__cn_once_object_1;
  v14 = MEMORY[0x1E695DFD8];
  v15 = [v11 allKeys];
  v16 = [v14 setWithArray:v15];
  v17 = [v16 intersectsSet:v13];

  if (v17)
  {
    v18 = [v11 objectForKey:@"kABContactsFilter_DirectorySourceID"];
    v19 = v18;
    if (v18)
    {
      v20 = [MEMORY[0x1E695CE48] predicateForiOSLegacyIdentifier:{objc_msgSend(v18, "intValue")}];
      v21 = [v12 serverSearchContainersMatchingPredicate:v20 error:0];

      if ([v21 count] == 1)
      {
        v22 = [v21 firstObject];
        v23 = [v22 identifier];
        v45[0] = v23;
        *a3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];

        *a5 = 1;
LABEL_15:

        goto LABEL_16;
      }
    }

    v21 = [v11 objectForKey:@"kABContactsFilter_ExcludedSourceIDs"];
    v24 = [v11 objectForKey:@"kABContactsFilter_ExcludedGroupIDs"];
    if ([v24 count] || objc_msgSend(v21, "count"))
    {
      v35 = a4;
      v36 = a3;
      v38 = v19;
      v25 = [v12 containersMatchingPredicate:0 error:0];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __137__CNContactStoreFilter_getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore___block_invoke_2;
      v43[3] = &unk_1E74E75E0;
      v26 = v21;
      v44 = v26;
      v37 = v25;
      v27 = [v25 _cn_filter:v43];
      v28 = [v27 _cn_map:&__block_literal_global_25];

      v29 = [v12 groupsMatchingPredicate:0 error:0];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __137__CNContactStoreFilter_getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore___block_invoke_4;
      v39[3] = &unk_1E74E3B68;
      v40 = v24;
      v41 = v12;
      v42 = v26;
      v30 = [v29 _cn_filter:v39];
      v31 = [v30 _cn_map:&__block_literal_global_29_28580];

      if ([v28 count] || objc_msgSend(v31, "count"))
      {
        v32 = v28;
        *v36 = v28;
        v33 = v31;
        *v35 = v31;
      }

      v19 = v38;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v17;
}

uint64_t __137__CNContactStoreFilter_getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "iOSLegacyIdentifier")}];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

uint64_t __137__CNContactStoreFilter_getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "iOSLegacyIdentifier")}];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = a1[5];
    v7 = MEMORY[0x1E695CE48];
    v8 = [v3 identifier];
    v9 = [v7 predicateForContainerOfGroupWithIdentifier:v8];
    v10 = [v6 containersMatchingPredicate:v9 error:0];
    v11 = [v10 firstObject];

    v12 = a1[6];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "iOSLegacyIdentifier")}];
    v14 = [v12 containsObject:v13] ^ 1;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

void __137__CNContactStoreFilter_getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore___block_invoke()
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"kABContactsFilter_ExcludedSourceIDs", @"kABContactsFilter_ExcludedGroupIDs", @"kABContactsFilter_DirectorySourceID", 0}];
  v0 = [v2 copy];
  v1 = getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore__cn_once_object_1;
  getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore__cn_once_object_1 = v0;
}

+ (BOOL)getContainerIdentifiers:(id *)a3 groupIdentifiers:(id *)a4 serverFilter:(BOOL *)a5 fromLegacyDictionary:(id)a6 contactStore:(id)a7
{
  v12 = a6;
  v13 = a7;
  if (getContainerIdentifiers_groupIdentifiers_serverFilter_fromLegacyDictionary_contactStore__cn_once_token_0 != -1)
  {
    dispatch_once(&getContainerIdentifiers_groupIdentifiers_serverFilter_fromLegacyDictionary_contactStore__cn_once_token_0, &__block_literal_global_28582);
  }

  v14 = MEMORY[0x1E695DFD8];
  v15 = getContainerIdentifiers_groupIdentifiers_serverFilter_fromLegacyDictionary_contactStore__cn_once_object_0;
  v16 = [v12 allKeys];
  v17 = [v14 setWithArray:v16];
  v18 = [v17 intersectsSet:v15];

  if (v18)
  {
    v19 = 0;
  }

  else if ([a1 getContainerIdentifiers:a3 groupIdentifiers:a4 serverFilter:a5 fromSundanceToOkemoAndAddressBookUIDictionary:v12 contactStore:v13])
  {
    v19 = 1;
  }

  else
  {
    v19 = [a1 getContainerIdentifiers:a3 groupIdentifiers:a4 serverFilter:a5 fromPreSundanceDictionary:v12 contactStore:v13];
  }

  return v19;
}

void __112__CNContactStoreFilter_getContainerIdentifiers_groupIdentifiers_serverFilter_fromLegacyDictionary_contactStore___block_invoke()
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"CNContactStoreFilterDictionaryKeyExcludedContainerIdentifiers", @"CNContactStoreFilterDictionaryKeyExcludedGroupIdentifiers", @"CNContactStoreFilterDictionaryKeyIsServerFilter", 0}];
  v0 = [v2 copy];
  v1 = getContainerIdentifiers_groupIdentifiers_serverFilter_fromLegacyDictionary_contactStore__cn_once_object_0;
  getContainerIdentifiers_groupIdentifiers_serverFilter_fromLegacyDictionary_contactStore__cn_once_object_0 = v0;
}

@end