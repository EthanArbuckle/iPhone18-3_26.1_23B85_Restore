@interface CNContactStoreFilter
+ (BOOL)getContainerIdentifiers:(id *)identifiers groupIdentifiers:(id *)groupIdentifiers serverFilter:(BOOL *)filter fromLegacyDictionary:(id)dictionary contactStore:(id)store;
+ (BOOL)getContainerIdentifiers:(id *)identifiers groupIdentifiers:(id *)groupIdentifiers serverFilter:(BOOL *)filter fromPreSundanceDictionary:(id)dictionary contactStore:(id)store;
+ (BOOL)getContainerIdentifiers:(id *)identifiers groupIdentifiers:(id *)groupIdentifiers serverFilter:(BOOL *)filter fromSundanceToOkemoAndAddressBookUIDictionary:(id)dictionary contactStore:(id)store;
+ (id)contactStoreFilterFromPreferencesWithContactStore:(id)store;
- (BOOL)isEqual:(id)equal;
- (BOOL)showsEverything;
- (BOOL)supportsSections;
- (CNContactStoreFilter)initWithDictionaryRepresentation:(id)representation;
- (CNContactStoreFilter)initWithDictionaryRepresentation:(id)representation contactStore:(id)store;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithContactStore:(id)store;
- (id)predicate;
- (void)addAddressBookUIKeysToDictionaryRepresentation:(id)representation withAllContainers:(id)containers excludedContainers:(id)excludedContainers excludedGroups:(id)groups;
- (void)saveToPreferencesWithContactStore:(id)store;
@end

@implementation CNContactStoreFilter

- (BOOL)showsEverything
{
  predicate = [(CNContactStoreFilter *)self predicate];
  if (predicate)
  {
    v4 = 0;
  }

  else
  {
    limitedAccessIdentifiers = [(CNContactStoreFilter *)self limitedAccessIdentifiers];
    v4 = limitedAccessIdentifiers == 0;
  }

  return v4;
}

- (id)predicate
{
  array = [MEMORY[0x1E695DF70] array];
  fullTextString = [(CNContactFilter *)self fullTextString];
  containerIdentifiers = [(CNContactStoreFilter *)self containerIdentifiers];
  groupIdentifiers = [(CNContactStoreFilter *)self groupIdentifiers];
  if ([fullTextString length])
  {
    v7 = MEMORY[0x1E695CD58];
    allObjects = [containerIdentifiers allObjects];
    allObjects2 = [groupIdentifiers allObjects];
    v10 = [v7 predicateForContactsMatchingFullTextSearch:fullTextString containerIdentifiers:allObjects groupIdentifiers:allObjects2];
LABEL_3:
    v11 = v10;

    [array addObject:v11];
    goto LABEL_6;
  }

  if (containerIdentifiers | groupIdentifiers && ![(CNContactStoreFilter *)self isServerFilter])
  {
    v14 = MEMORY[0x1E695CD58];
    allObjects = [containerIdentifiers allObjects];
    allObjects2 = [groupIdentifiers allObjects];
    v10 = [v14 predicateForPreferredNameInContainersWithIdentifiers:allObjects groupsWithIdentifiers:allObjects2];
    goto LABEL_3;
  }

LABEL_6:
  if ([array count])
  {
    if ([array count] == 1)
    {
      [array firstObject];
    }

    else
    {
      [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
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
  fullTextString = [(CNContactFilter *)self fullTextString];
  v3 = fullTextString == 0;

  return v3;
}

- (void)saveToPreferencesWithContactStore:(id)store
{
  v6 = [(CNContactStoreFilter *)self dictionaryRepresentationWithContactStore:store];
  v3 = [v6 objectForKeyedSubscript:@"CNContactFilterDictionaryKeyFullTextString"];

  if (v3)
  {
    v4 = [v6 _cn_filter:&__block_literal_global_84];

    v6 = v4;
  }

  mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
  [mEMORY[0x1E695CE40] setFilteredGroupAndContainerIDs:v6];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v20.receiver = self, v20.super_class = CNContactStoreFilter, ![(CNContactFilter *)&v20 isEqual:equalCopy]))
  {
    LOBYTE(v12) = 0;
    goto LABEL_26;
  }

  v6 = equalCopy;
  v7 = v6;
  containerIdentifiers = self->_containerIdentifiers;
  groupIdentifiers = containerIdentifiers;
  if (!containerIdentifiers)
  {
    containerIdentifiers = [v6 containerIdentifiers];
    if (!containerIdentifiers)
    {
      v19 = 0;
      v11 = 0;
      goto LABEL_11;
    }

    v19 = containerIdentifiers;
    groupIdentifiers = self->_containerIdentifiers;
  }

  containerIdentifiers2 = [v7 containerIdentifiers];
  if (![groupIdentifiers isEqual:containerIdentifiers2])
  {
    LOBYTE(v12) = 0;
    goto LABEL_22;
  }

  v11 = 1;
LABEL_11:
  groupIdentifiers2 = 32;
  groupIdentifiers = self->_groupIdentifiers;
  v15 = groupIdentifiers;
  if (!groupIdentifiers)
  {
    groupIdentifiers = [v7 groupIdentifiers];
    if (!groupIdentifiers)
    {
      v16 = 0;
LABEL_18:
      isServerFilter = [(CNContactStoreFilter *)self isServerFilter];
      v12 = isServerFilter ^ [v7 isServerFilter] ^ 1;
      if (!v16)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v15 = self->_groupIdentifiers;
  }

  groupIdentifiers2 = [v7 groupIdentifiers];
  if ([(NSSet *)v15 isEqual:groupIdentifiers2])
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

- (void)addAddressBookUIKeysToDictionaryRepresentation:(id)representation withAllContainers:(id)containers excludedContainers:(id)excludedContainers excludedGroups:(id)groups
{
  representationCopy = representation;
  containersCopy = containers;
  excludedContainersCopy = excludedContainers;
  groupsCopy = groups;
  if ([(CNContactStoreFilter *)self isServerFilter])
  {
    firstObject = [containersCopy firstObject];
    v14 = firstObject;
    if (!firstObject)
    {
      goto LABEL_6;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(firstObject, "iOSLegacyIdentifier")}];
    v16 = @"kABContactsFilter_DirectorySourceID";
  }

  else
  {
    v14 = [excludedContainersCopy _cn_map:&__block_literal_global_63];
    [representationCopy setObject:v14 forKeyedSubscript:@"kABContactsFilter_ExcludedSourceIDs"];
    v15 = [groupsCopy _cn_map:&__block_literal_global_66];
    v16 = @"kABContactsFilter_ExcludedGroupIDs";
  }

  [representationCopy setObject:v15 forKeyedSubscript:v16];

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

- (id)dictionaryRepresentationWithContactStore:(id)store
{
  storeCopy = store;
  v21.receiver = self;
  v21.super_class = CNContactStoreFilter;
  dictionaryRepresentation = [(CNContactFilter *)&v21 dictionaryRepresentation];
  v6 = [dictionaryRepresentation mutableCopy];
  v7 = v6;
  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v9 = dictionary;

  if (![(CNContactStoreFilter *)self showsEverything])
  {
    if ([(CNContactStoreFilter *)self isServerFilter])
    {
      [storeCopy serverSearchContainersMatchingPredicate:0 error:0];
    }

    else
    {
      [storeCopy containersMatchingPredicate:0 error:0];
    }
    v10 = ;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__CNContactStoreFilter_dictionaryRepresentationWithContactStore___block_invoke;
    v20[3] = &unk_1E74E75E0;
    v20[4] = self;
    v11 = [v10 _cn_filter:v20];
    v12 = [storeCopy groupsMatchingPredicate:0 error:0];
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

- (CNContactStoreFilter)initWithDictionaryRepresentation:(id)representation contactStore:(id)store
{
  representationCopy = representation;
  storeCopy = store;
  v36.receiver = self;
  v36.super_class = CNContactStoreFilter;
  v8 = [(CNContactFilter *)&v36 initWithDictionaryRepresentation:representationCopy];
  if (v8)
  {
    bOOLValue = 0;
    v33 = 0;
    v34 = 0;
    v9 = [objc_opt_class() getContainerIdentifiers:&v34 groupIdentifiers:&v33 serverFilter:&bOOLValue fromLegacyDictionary:representationCopy contactStore:storeCopy];
    v10 = v34;
    v11 = v33;
    if ((v9 & 1) == 0)
    {
      v12 = [representationCopy objectForKeyedSubscript:@"CNContactStoreFilterDictionaryKeyIsServerFilter"];
      bOOLValue = [v12 BOOLValue];

      v13 = [representationCopy objectForKeyedSubscript:@"CNContactStoreFilterDictionaryKeyExcludedContainerIdentifiers"];
      v14 = [representationCopy objectForKeyedSubscript:@"CNContactStoreFilterDictionaryKeyExcludedGroupIdentifiers"];
      if ([v13 count] || objc_msgSend(v14, "count"))
      {
        if (bOOLValue)
        {
          [storeCopy serverSearchContainersMatchingPredicate:0 error:0];
        }

        else
        {
          [storeCopy containersMatchingPredicate:0 error:0];
        }
        v15 = ;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __70__CNContactStoreFilter_initWithDictionaryRepresentation_contactStore___block_invoke;
        v31[3] = &unk_1E74E75E0;
        v32 = v13;
        v16 = [v15 _cn_filter:v31];
        v25 = [v16 _cn_map:&__block_literal_global_51];

        v17 = [storeCopy groupsMatchingPredicate:0 error:0];
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

    v8->_isServerFilter = bOOLValue;
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

- (CNContactStoreFilter)initWithDictionaryRepresentation:(id)representation
{
  v4 = MEMORY[0x1E695CE18];
  representationCopy = representation;
  v6 = objc_alloc_init(v4);
  v7 = [(CNContactStoreFilter *)self initWithDictionaryRepresentation:representationCopy contactStore:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = CNContactStoreFilter;
  v4 = [(CNContactFilter *)&v10 copyWithZone:zone];
  containerIdentifiers = [(CNContactStoreFilter *)self containerIdentifiers];
  [v4 setContainerIdentifiers:containerIdentifiers];

  groupIdentifiers = [(CNContactStoreFilter *)self groupIdentifiers];
  [v4 setGroupIdentifiers:groupIdentifiers];

  [v4 setIsServerFilter:self->_isServerFilter];
  limitedAccessIdentifiers = [(CNContactStoreFilter *)self limitedAccessIdentifiers];
  [v4 setLimitedAccessIdentifiers:limitedAccessIdentifiers];

  customDisplayName = [(CNContactStoreFilter *)self customDisplayName];
  [v4 setCustomDisplayName:customDisplayName];

  [v4 setLimitedAccessFilterMode:{-[CNContactStoreFilter limitedAccessFilterMode](self, "limitedAccessFilterMode")}];
  return v4;
}

+ (id)contactStoreFilterFromPreferencesWithContactStore:(id)store
{
  storeCopy = store;
  mEMORY[0x1E695CE40] = [MEMORY[0x1E695CE40] sharedDefaults];
  filteredGroupAndContainerIDs = [mEMORY[0x1E695CE40] filteredGroupAndContainerIDs];

  if (filteredGroupAndContainerIDs)
  {
    v7 = [filteredGroupAndContainerIDs objectForKeyedSubscript:@"CNContactFilterDictionaryKeyFullTextString"];

    if (v7)
    {
      v8 = [filteredGroupAndContainerIDs _cn_filter:&__block_literal_global_82];

      filteredGroupAndContainerIDs = v8;
    }

    v9 = [[self alloc] initWithDictionaryRepresentation:filteredGroupAndContainerIDs contactStore:storeCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)getContainerIdentifiers:(id *)identifiers groupIdentifiers:(id *)groupIdentifiers serverFilter:(BOOL *)filter fromPreSundanceDictionary:(id)dictionary contactStore:(id)store
{
  v51[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  storeCopy = store;
  if (getContainerIdentifiers_groupIdentifiers_serverFilter_fromPreSundanceDictionary_contactStore__cn_once_token_2 != -1)
  {
    dispatch_once(&getContainerIdentifiers_groupIdentifiers_serverFilter_fromPreSundanceDictionary_contactStore__cn_once_token_2, &__block_literal_global_31_28563);
  }

  v13 = getContainerIdentifiers_groupIdentifiers_serverFilter_fromPreSundanceDictionary_contactStore__cn_once_object_2;
  v16 = MEMORY[0x1E695DFD8];
  allKeys = [dictionaryCopy allKeys];
  v15 = [v16 setWithArray:allKeys];
  LODWORD(v16) = [v15 intersectsSet:v13];

  if (v16)
  {
    identifiersCopy = identifiers;
    v17 = [dictionaryCopy objectForKey:@"GroupID"];
    v18 = v17;
    filterCopy = filter;
    if (v17)
    {
      v19 = [MEMORY[0x1E695CEC0] predicateForiOSLegacyIdentifier:{objc_msgSend(v17, "intValue")}];
      v20 = [storeCopy groupsMatchingPredicate:v19 error:0];

      firstObject = 0;
      if ([v20 count] == 1)
      {
        firstObject = [v20 firstObject];
      }
    }

    else
    {
      firstObject = 0;
    }

    v22 = [dictionaryCopy objectForKey:@"StoreID"];
    v23 = [dictionaryCopy objectForKey:@"Global"];
    bOOLValue = [v23 BOOLValue];

    if (!v22)
    {
      goto LABEL_12;
    }

    if (![v22 intValue])
    {
      v25 = [storeCopy containersMatchingPredicate:0 error:0];
      v45 = v16;
      v16 = v13;
      v26 = v22;
      v27 = storeCopy;
      v28 = firstObject;
      v29 = v18;
      groupIdentifiersCopy = groupIdentifiers;
      v31 = [v25 count] > 1;

      v32 = v31 & bOOLValue;
      groupIdentifiers = groupIdentifiersCopy;
      v18 = v29;
      firstObject = v28;
      storeCopy = v27;
      v22 = v26;
      v13 = v16;
      LOBYTE(v16) = v45;
      if (v32)
      {
        goto LABEL_12;
      }
    }

    groupIdentifiersCopy2 = groupIdentifiers;
    v34 = [MEMORY[0x1E695CE48] predicateForiOSLegacyIdentifier:{objc_msgSend(v22, "intValue")}];
    v35 = [storeCopy containersMatchingPredicate:v34 error:0];

    if ([v35 count] == 1)
    {
      firstObject2 = [v35 firstObject];
    }

    else if ([v35 count])
    {
      firstObject2 = 0;
    }

    else
    {
      v36 = [MEMORY[0x1E695CE48] predicateForiOSLegacyIdentifier:{objc_msgSend(v22, "intValue")}];
      v37 = [storeCopy serverSearchContainersMatchingPredicate:v36 error:0];

      if ([v37 count] == 1)
      {
        firstObject2 = [v37 firstObject];

        groupIdentifiers = groupIdentifiersCopy2;
        if (firstObject2)
        {
          identifier = [firstObject2 identifier];
          v51[0] = identifier;
          *identifiersCopy = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];

          *filterCopy = 1;
LABEL_31:

          goto LABEL_32;
        }

LABEL_12:
        if (firstObject)
        {
          firstObject2 = 0;
LABEL_23:
          identifier2 = [firstObject identifier];
          v50 = identifier2;
          *groupIdentifiers = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];

          goto LABEL_31;
        }

LABEL_26:
        v41 = [dictionaryCopy objectForKey:@"AccountIdentifier"];
        if (v41)
        {
          v42 = [MEMORY[0x1E695CE48] predicateForContainersInAccountWithExternalIdentifier:v41];
          v43 = [storeCopy containersMatchingPredicate:v42 error:0];

          if ([v43 count])
          {
            *identifiersCopy = [v43 _cn_map:&__block_literal_global_46];
          }
        }

        firstObject2 = 0;
        goto LABEL_31;
      }

      firstObject2 = 0;
      v35 = v37;
    }

    groupIdentifiers = groupIdentifiersCopy2;

    if (firstObject)
    {
      goto LABEL_23;
    }

    if (firstObject2)
    {
      identifier3 = [firstObject2 identifier];
      v49 = identifier3;
      *identifiersCopy = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];

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

+ (BOOL)getContainerIdentifiers:(id *)identifiers groupIdentifiers:(id *)groupIdentifiers serverFilter:(BOOL *)filter fromSundanceToOkemoAndAddressBookUIDictionary:(id)dictionary contactStore:(id)store
{
  v45[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  storeCopy = store;
  if (getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore__cn_once_token_1 != -1)
  {
    dispatch_once(&getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore__cn_once_token_1, &__block_literal_global_9);
  }

  v13 = getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore__cn_once_object_1;
  v14 = MEMORY[0x1E695DFD8];
  allKeys = [dictionaryCopy allKeys];
  v16 = [v14 setWithArray:allKeys];
  v17 = [v16 intersectsSet:v13];

  if (v17)
  {
    v18 = [dictionaryCopy objectForKey:@"kABContactsFilter_DirectorySourceID"];
    v19 = v18;
    if (v18)
    {
      v20 = [MEMORY[0x1E695CE48] predicateForiOSLegacyIdentifier:{objc_msgSend(v18, "intValue")}];
      v21 = [storeCopy serverSearchContainersMatchingPredicate:v20 error:0];

      if ([v21 count] == 1)
      {
        firstObject = [v21 firstObject];
        identifier = [firstObject identifier];
        v45[0] = identifier;
        *identifiers = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];

        *filter = 1;
LABEL_15:

        goto LABEL_16;
      }
    }

    v21 = [dictionaryCopy objectForKey:@"kABContactsFilter_ExcludedSourceIDs"];
    v24 = [dictionaryCopy objectForKey:@"kABContactsFilter_ExcludedGroupIDs"];
    if ([v24 count] || objc_msgSend(v21, "count"))
    {
      groupIdentifiersCopy = groupIdentifiers;
      identifiersCopy = identifiers;
      v38 = v19;
      v25 = [storeCopy containersMatchingPredicate:0 error:0];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __137__CNContactStoreFilter_getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore___block_invoke_2;
      v43[3] = &unk_1E74E75E0;
      v26 = v21;
      v44 = v26;
      v37 = v25;
      v27 = [v25 _cn_filter:v43];
      v28 = [v27 _cn_map:&__block_literal_global_25];

      v29 = [storeCopy groupsMatchingPredicate:0 error:0];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __137__CNContactStoreFilter_getContainerIdentifiers_groupIdentifiers_serverFilter_fromSundanceToOkemoAndAddressBookUIDictionary_contactStore___block_invoke_4;
      v39[3] = &unk_1E74E3B68;
      v40 = v24;
      v41 = storeCopy;
      v42 = v26;
      v30 = [v29 _cn_filter:v39];
      v31 = [v30 _cn_map:&__block_literal_global_29_28580];

      if ([v28 count] || objc_msgSend(v31, "count"))
      {
        v32 = v28;
        *identifiersCopy = v28;
        v33 = v31;
        *groupIdentifiersCopy = v31;
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

+ (BOOL)getContainerIdentifiers:(id *)identifiers groupIdentifiers:(id *)groupIdentifiers serverFilter:(BOOL *)filter fromLegacyDictionary:(id)dictionary contactStore:(id)store
{
  dictionaryCopy = dictionary;
  storeCopy = store;
  if (getContainerIdentifiers_groupIdentifiers_serverFilter_fromLegacyDictionary_contactStore__cn_once_token_0 != -1)
  {
    dispatch_once(&getContainerIdentifiers_groupIdentifiers_serverFilter_fromLegacyDictionary_contactStore__cn_once_token_0, &__block_literal_global_28582);
  }

  v14 = MEMORY[0x1E695DFD8];
  v15 = getContainerIdentifiers_groupIdentifiers_serverFilter_fromLegacyDictionary_contactStore__cn_once_object_0;
  allKeys = [dictionaryCopy allKeys];
  v17 = [v14 setWithArray:allKeys];
  v18 = [v17 intersectsSet:v15];

  if (v18)
  {
    v19 = 0;
  }

  else if ([self getContainerIdentifiers:identifiers groupIdentifiers:groupIdentifiers serverFilter:filter fromSundanceToOkemoAndAddressBookUIDictionary:dictionaryCopy contactStore:storeCopy])
  {
    v19 = 1;
  }

  else
  {
    v19 = [self getContainerIdentifiers:identifiers groupIdentifiers:groupIdentifiers serverFilter:filter fromPreSundanceDictionary:dictionaryCopy contactStore:storeCopy];
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