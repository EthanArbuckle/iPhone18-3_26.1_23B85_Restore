@interface CNiOSContactFetcher
+ (id)contactsForFetchRequest:(id)a3 matchInfos:(id *)a4 inAddressBook:(void *)a5 environment:(id)a6 managedConfiguration:(id)a7 error:(id *)a8;
+ (id)linkedPeopleComparator;
- (CNiOSContactFetcher)initWithFetchRequest:(id)a3 addressBook:(void *)a4 environment:(id)a5 managedConfiguration:(id)a6;
- (id)_abMatchMetadataToCNContactMatchInfoArray:(uint64_t)a1;
- (id)_contactsFromPeople:(void *)a3 abMatchInfo:(void *)a4 keysToFetch:;
- (id)executeFetchRequestWithProgressiveResults:(id)a3 completion:(id)a4;
- (id)fetchContactsReturningMatchInfos:(id *)a3 error:(id *)a4;
- (id)unifyPeople:(void *)a3 keysToFetch:(void *)a4 abMatchInfos:(void *)a5 filteredForAccountIdentifiers:(uint64_t)a6 outCNMatchInfos:;
- (void)_batchLoadPropertiesForPeople:(void *)a3 keysToFetch:;
- (void)dealloc;
@end

@implementation CNiOSContactFetcher

+ (id)contactsForFetchRequest:(id)a3 matchInfos:(id *)a4 inAddressBook:(void *)a5 environment:(id)a6 managedConfiguration:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  v17 = [[CNiOSContactFetcher alloc] initWithFetchRequest:v13 addressBook:a5 environment:v14 managedConfiguration:v15];
  v18 = v17;
  v28 = 0;
  v29 = 0;
  if (a4)
  {
    v19 = &v29;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CNiOSContactFetcher *)v17 fetchContactsReturningMatchInfos:v19 error:&v28];
  if (a4)
  {
    v21 = v29;
  }

  else
  {
    v21 = 0;
  }

  v22 = v28;

  objc_autoreleasePoolPop(v16);
  if (a4)
  {
    v23 = v21;
    *a4 = v21;
  }

  v24 = v20;
  v25 = v24;
  if (a8 && !v24)
  {
    v26 = v22;
    *a8 = v22;
  }

  return v25;
}

- (CNiOSContactFetcher)initWithFetchRequest:(id)a3 addressBook:(void *)a4 environment:(id)a5 managedConfiguration:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = CNiOSContactFetcher;
  v14 = [(CNiOSContactFetcher *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fetchRequest, a3);
    v16 = [(CNContactFetchRequest *)v15->_fetchRequest effectiveKeysToFetch];
    v17 = +[CNiOSABConversions personToContactTransformWithKeysToFetch:mutable:](CNiOSABConversions, v16, [v11 mutableObjects]);
    v18 = [v17 copy];
    personToContact = v15->_personToContact;
    v15->_personToContact = v18;

    if (a4)
    {
      v20 = CFRetain(a4);
    }

    else
    {
      v20 = 0;
    }

    v15->_addressBook = v20;
    objc_storeStrong(&v15->_environment, a5);
    objc_storeStrong(&v15->_managedConfiguration, a6);
    v21 = v15;
  }

  return v15;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v4.receiver = self;
  v4.super_class = CNiOSContactFetcher;
  [(CNiOSContactFetcher *)&v4 dealloc];
}

void __65__CNiOSContactFetcher__abMatchMetadataToCNContactMatchInfoArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [CNiOSABConversions contactMatchInfoFromABMatchMetadataDictionary:a3];
  [v4 setObject:v6 forKey:v5];
}

void __65__CNiOSContactFetcher__batchLoadPropertiesForPeople_keysToFetch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__CNiOSContactFetcher__batchLoadPropertiesForPeople_keysToFetch___block_invoke_2;
  v6[3] = &unk_1E74136A0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __65__CNiOSContactFetcher__batchLoadPropertiesForPeople_keysToFetch___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKeyedSubscript:v3];

    if ([v5 isMultiValue])
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v6 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
    }

    else
    {
      v8 = [v6 conformsToProtocol:&unk_1F0998880];

      if (!v8)
      {
        goto LABEL_11;
      }
    }

    v7 = [v6 _cn_requiredKeys];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__CNiOSContactFetcher__batchLoadPropertiesForPeople_keysToFetch___block_invoke_3;
    v9[3] = &unk_1E7412D80;
    v10 = *(a1 + 32);
    [v7 enumeratePropertiesUsingBlock:v9];
  }

LABEL_11:
}

void __65__CNiOSContactFetcher__batchLoadPropertiesForPeople_keysToFetch___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMultiValue])
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __65__CNiOSContactFetcher__batchLoadPropertiesForPeople_keysToFetch___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = 0;
  result = [a2 abPropertyID:&v3];
  if (result)
  {
    return __65__CNiOSContactFetcher__batchLoadPropertiesForPeople_keysToFetch___block_invoke_4_cold_1();
  }

  return result;
}

- (id)executeFetchRequestWithProgressiveResults:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [CNiOSPersonFetchRequest fetchRequestFromCNFetchRequest:self->_fetchRequest managedConfiguration:self->_managedConfiguration error:0];
    if (v9)
    {
      v10 = [[CNiOSPersonFetcher alloc] initWithAddressBook:self->_addressBook fetchRequest:v9 environment:self->_environment];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __76__CNiOSContactFetcher_executeFetchRequestWithProgressiveResults_completion___block_invoke;
      v13[3] = &unk_1E7413718;
      v13[4] = self;
      v14 = v6;
      v11 = [(CNiOSPersonFetcher *)v10 executeFetchRequestWithProgressiveResults:v13 completion:v8];
    }

    else
    {
      v11 = objc_opt_new();
    }
  }

  else
  {
    v11 = objc_opt_new();
  }

  return v11;
}

void __76__CNiOSContactFetcher_executeFetchRequestWithProgressiveResults_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(a1 + 40))
  {
    __76__CNiOSContactFetcher_executeFetchRequestWithProgressiveResults_completion___block_invoke_cold_1(a1, v6, v5, a1 + 40);
  }
}

- (id)fetchContactsReturningMatchInfos:(id *)a3 error:(id *)a4
{
  if (self->_addressBook)
  {
    v7 = [CNiOSPersonFetchRequest fetchRequestFromCNFetchRequest:self->_fetchRequest managedConfiguration:self->_managedConfiguration error:a4];
    if (!v7)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_6;
    }

    v12 = [[_CNiOSPersonMainStoreFetcher alloc] initWithAddressBook:self->_environment environment:a3 != 0 shouldReturnMatchInfo:?];
    v13 = [MEMORY[0x1E69966E8] currentEnvironment];
    v14 = [v13 featureFlags];
    v15 = [v14 isFeatureEnabled:22];

    if (v15)
    {
      v16 = [_CNiOSPersonFetcherPosterDataFetchInterceptor alloc];
      v17 = [(CNContactsEnvironment *)self->_environment posterDataStore];
      v18 = [(_CNiOSPersonFetcherPosterDataFetchInterceptor *)v16 initWithMainStoreFetcher:v12 posterDataStore:v17];

      v12 = v18;
    }

    v19 = [v12 executeFetchRequest:v7 error:a4];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 people];
      v22 = [v20 matchInfos];
      v23 = [(CNContactFetchRequest *)self->_fetchRequest effectiveKeysToFetch];
      v24 = [(CNiOSContactFetcher *)self _contactsFromPeople:v21 abMatchInfo:v22 keysToFetch:v23];

      v8 = [v24 first];
      v25 = [v24 second];
      if (a3)
      {
        v26 = [v20 matchInfos];

        if (v26)
        {
          v27 = v25;
          *a3 = v25;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = [CNErrorFactory errorWithCode:2];
    v7 = v9;
    if (!a4)
    {
      goto LABEL_3;
    }

    v10 = v9;
    v8 = 0;
    *a4 = v7;
  }

LABEL_6:

  return v8;
}

uint64_t __106__CNiOSContactFetcher_unifyPeople_keysToFetch_abMatchInfos_filteredForAccountIdentifiers_outCNMatchInfos___block_invoke(uint64_t a1, ABRecordRef record)
{
  RecordID = ABRecordGetRecordID(record);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:RecordID];
  LODWORD(v4) = [v4 containsObject:v5];

  return v4 ^ 1;
}

+ (id)linkedPeopleComparator
{
  objc_opt_self();
  if (linkedPeopleComparator_cn_once_token_0 != -1)
  {
    +[CNiOSContactFetcher linkedPeopleComparator];
  }

  v0 = linkedPeopleComparator_cn_once_object_0;

  return v0;
}

void __45__CNiOSContactFetcher_linkedPeopleComparator__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = &__block_literal_global_31;
  v3[1] = &__block_literal_global_33_0;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = CNAggregateComparator();
  v2 = linkedPeopleComparator_cn_once_object_0;
  linkedPeopleComparator_cn_once_object_0 = v1;
}

- (id)_abMatchMetadataToCNContactMatchInfoArray:(uint64_t)a1
{
  if (a1)
  {
    v2 = MEMORY[0x1E695DF90];
    v3 = a2;
    [v2 dictionary];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_0();
    v8 = 3221225472;
    v9 = __65__CNiOSContactFetcher__abMatchMetadataToCNContactMatchInfoArray___block_invoke;
    v10 = &unk_1E7413678;
    v5 = v4;
    v11 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_batchLoadPropertiesForPeople:(void *)a3 keysToFetch:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__CNiOSContactFetcher__batchLoadPropertiesForPeople_keysToFetch___block_invoke;
    aBlock[3] = &unk_1E74136C8;
    v16 = v6;
    v8 = _Block_copy(aBlock);
    OUTLINED_FUNCTION_0();
    v10 = 3221225472;
    v11 = __65__CNiOSContactFetcher__batchLoadPropertiesForPeople_keysToFetch___block_invoke_4;
    v12 = &unk_1E74136F0;
    v13 = v5;
    v14 = a1;
    v8[2](v8, v9);
  }
}

- (id)_contactsFromPeople:(void *)a3 abMatchInfo:(void *)a4 keysToFetch:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 40);
    if (v10 && [v10 deviceHasManagementRestrictions])
    {
      v11 = [[CNiOSABUtilities alloc] initWithAddressBook:*(a1 + 8)];
      v12 = [(CNiOSABUtilities *)v11 allAccountIdentifiers];
      v13 = [*(a1 + 40) readableAccountIdentifiersFromIdentifiers:v12];
      v14 = [v12 count];
      if (v14 == [v13 count])
      {
        v15 = v7;
      }

      else
      {
        v15 = [(CNiOSABUtilities *)v11 filterPeople:v7 matchingAccountIdentifiers:v13];
      }

      v16 = v15;
    }

    else
    {
      v16 = v7;
      v13 = 0;
    }

    v17 = [*(a1 + 16) predicate];
    if (([v17 cn_supportsNativeBatchFetch] & 1) == 0)
    {
      [(CNiOSContactFetcher *)a1 _batchLoadPropertiesForPeople:v16 keysToFetch:v9];
    }

    if ([*(a1 + 16) unifyResults])
    {
      v23 = 0;
      v18 = [(CNiOSContactFetcher *)a1 unifyPeople:v16 keysToFetch:v9 abMatchInfos:v8 filteredForAccountIdentifiers:v13 outCNMatchInfos:&v23];
      v19 = v23;
      a1 = [MEMORY[0x1E69967A8] pairWithFirst:v18 second:v19];
    }

    else
    {
      v20 = [(CNiOSContactFetcher *)a1 _abMatchMetadataToCNContactMatchInfoArray:v8];
      v21 = [v16 _cn_map:*(a1 + 24)];
      a1 = [MEMORY[0x1E69967A8] pairWithFirst:v21 second:v20];
    }
  }

  return a1;
}

- (id)unifyPeople:(void *)a3 keysToFetch:(void *)a4 abMatchInfos:(void *)a5 filteredForAccountIdentifiers:(uint64_t)a6 outCNMatchInfos:
{
  v135 = *MEMORY[0x1E69E9840];
  v94 = a2;
  v93 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v104 = [MEMORY[0x1E695DFA8] set];
    v13 = [MEMORY[0x1E695DF70] array];
    v92 = v12;
    if (a6)
    {
      v99 = [MEMORY[0x1E695DF90] dictionary];
    }

    else
    {
      v99 = 0;
    }

    Mutable = CFArrayCreateMutable(0, [v94 count], 0);
    v15 = v94;
    v16 = 0;
    v101 = a1;
    if (Mutable)
    {
      v68 = Mutable;
      v98 = v13;
      v69 = [MEMORY[0x1E695DFA8] set];
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      v70 = v94;
      v71 = [v70 countByEnumeratingWithState:&v126 objects:v134 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v127;
        do
        {
          for (i = 0; i != v72; ++i)
          {
            if (*v127 != v73)
            {
              objc_enumerationMutation(v70);
            }

            v75 = *(*(&v126 + 1) + 8 * i);
            IntValue = ABRecordGetIntValue();
            v77 = [MEMORY[0x1E696AD98] numberWithInt:ABRecordGetRecordID(v75)];
            [v69 addObject:v77];

            if (IntValue != -1)
            {
              CFArrayAppendValue(v68, IntValue);
            }
          }

          v72 = [v70 countByEnumeratingWithState:&v126 objects:v134 count:16];
        }

        while (v72);
      }

      v78 = ABAddressBookCopyPeopleWithLinkIdentifiers();
      v79 = v78;
      if (v92)
      {
        v81 = [[CNiOSABUtilities alloc] initWithAddressBook:*(a1 + 8)];
        v80 = [(CNiOSABUtilities *)v81 filterPeople:v79 matchingAccountIdentifiers:v92];
      }

      else
      {
        v80 = v78;
      }

      v124[0] = MEMORY[0x1E69E9820];
      v124[1] = 3221225472;
      v124[2] = __106__CNiOSContactFetcher_unifyPeople_keysToFetch_abMatchInfos_filteredForAccountIdentifiers_outCNMatchInfos___block_invoke;
      v124[3] = &unk_1E7413740;
      v82 = v69;
      v125 = v82;
      v83 = [(__CFArray *)v80 _cn_filter:v124];
      [(CNiOSContactFetcher *)a1 _batchLoadPropertiesForPeople:v83 keysToFetch:v93];
      if (v79)
      {
        v107 = v83;
        v109 = v82;
        v111 = v80;
        v16 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
        Count = CFArrayGetCount(v79);
        if (Count >= 1)
        {
          v85 = Count;
          v86 = 0;
          v87 = MEMORY[0x1E695E9C0];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v79, v86);
            v89 = ABRecordGetIntValue();
            Value = CFDictionaryGetValue(v16, v89);
            if (!Value)
            {
              Value = CFArrayCreateMutable(0, 0, v87);
              CFDictionarySetValue(v16, v89, Value);
              CFRelease(Value);
            }

            CFArrayAppendValue(Value, ValueAtIndex);
            ++v86;
          }

          while (v85 != v86);
        }

        CFRelease(v79);
        a1 = v101;
        v82 = v109;
        v80 = v111;
        v83 = v107;
      }

      else
      {
        v16 = 0;
      }

      CFRelease(v68);

      v15 = v94;
      v13 = v98;
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v17 = v15;
    v103 = [v17 countByEnumeratingWithState:&v120 objects:v133 count:16];
    if (v103)
    {
      v102 = *v121;
      v96 = v16;
      v97 = v13;
      v95 = v17;
      do
      {
        v18 = 0;
        do
        {
          if (*v121 != v102)
          {
            objc_enumerationMutation(v17);
          }

          v110 = v18;
          v19 = ABRecordGetIntValue();
          v20 = v19;
          v21 = v19 == -1 || CFDictionaryContainsKey(v16, v19) == 0;
          v108 = v20;
          v22 = [MEMORY[0x1E696AD98] numberWithInt:v20];
          v23 = [v104 containsObject:v22];

          if (v21 || !v23)
          {
            if ((v21 | v23))
            {
              v24 = (*(*(a1 + 24) + 16))();
              v25 = [v24 identifier];
              v26 = [v11 objectForKey:v25];

              if (v26)
              {
                v27 = [CNiOSABConversions contactMatchInfoFromABMatchMetadataDictionary:v26];
              }

              else
              {
                v27 = 0;
              }
            }

            else
            {
              v28 = CFDictionaryGetValue(v16, v108);
              v29 = +[CNiOSContactFetcher linkedPeopleComparator];
              v30 = [v28 sortedArrayUsingComparator:v29];

              v105 = v30;
              v31 = [v30 _cn_map:*(a1 + 24)];
              v32 = [v31 firstObject];
              v33 = [v32 keyVector];
              v34 = [v33 mutableCopy];

              v118 = 0u;
              v119 = 0u;
              v116 = 0u;
              v117 = 0u;
              v35 = v31;
              v36 = [v35 countByEnumeratingWithState:&v116 objects:v132 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = 0;
                v39 = *v117;
                do
                {
                  for (j = 0; j != v37; ++j)
                  {
                    if (*v117 != v39)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v41 = *(*(&v116 + 1) + 8 * j);
                    v42 = [v35 objectAtIndexedSubscript:0];

                    if (v41 != v42)
                    {
                      v43 = [v41 keyVector];
                      if (([v43 isEqualToKeyVector:v34] & 1) == 0)
                      {
                        [v34 unionKeyVector:v43];
                        v38 = 1;
                      }
                    }
                  }

                  v37 = [v35 countByEnumeratingWithState:&v116 objects:v132 count:16];
                }

                while (v37);
              }

              else
              {
                v38 = 0;
              }

              v100 = [MEMORY[0x1E695DFD8] setWithObject:v34];
              v106 = +[CNiOSABConversions personToContactTransformWithKeysToFetch:mutable:](CNiOSABConversions, v100, [*(v101 + 16) mutableObjects]);
              v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v35, "count")}];
              if ([v35 count])
              {
                v45 = 0;
                do
                {
                  v46 = [v35 objectAtIndexedSubscript:v45];
                  v47 = [MEMORY[0x1E695DFB0] null];

                  if (v46 != v47)
                  {
                    if (v38)
                    {
                      v131 = v34;
                      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v131 count:1];
                      v49 = [v46 areKeysAvailable:v48];

                      if ((v49 & 1) == 0)
                      {
                        v50 = [v105 objectAtIndexedSubscript:v45];

                        v51 = (v106)[2](v106, v50);

                        v46 = v51;
                      }
                    }

                    [v44 addObject:v46];
                  }

                  ++v45;
                }

                while (v45 < [v35 count]);
              }

              v52 = v44;
              v53 = [MEMORY[0x1E695DF90] dictionary];
              v112 = 0u;
              v113 = 0u;
              v114 = 0u;
              v115 = 0u;
              v54 = v52;
              v55 = [v54 countByEnumeratingWithState:&v112 objects:v130 count:16];
              if (v55)
              {
                v56 = v55;
                v57 = *v113;
                do
                {
                  for (k = 0; k != v56; ++k)
                  {
                    if (*v113 != v57)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v59 = *(*(&v112 + 1) + 8 * k);
                    v60 = [v59 identifier];
                    v61 = [v11 objectForKey:v60];

                    if (v61)
                    {
                      v62 = [CNiOSABConversions contactMatchInfoFromABMatchMetadataDictionary:v61];
                      v63 = [v59 identifier];
                      [v53 setObject:v62 forKey:v63];
                    }
                  }

                  v56 = [v54 countByEnumeratingWithState:&v112 objects:v130 count:16];
                }

                while (v56);
              }

              v17 = v95;
              if ([v53 count])
              {
                v27 = [CN unifyContactMatchInfos:v53 linkedContacts:v54];
              }

              else
              {
                v27 = 0;
              }

              v13 = v97;
              v24 = [CN contactUnifyingContacts:v54 includingMainStoreContacts:1 allowMutableContactFreeze:1];
              v64 = [MEMORY[0x1E696AD98] numberWithInt:v108];
              [v104 addObject:v64];

              v16 = v96;
              v26 = v105;
            }

            if (v27)
            {
              v65 = [v24 identifier];
              [v99 setObject:v27 forKey:v65];
            }

            [v13 addObject:v24];

            a1 = v101;
          }

          v18 = v110 + 1;
        }

        while (v110 + 1 != v103);
        v103 = [v17 countByEnumeratingWithState:&v120 objects:v133 count:16];
      }

      while (v103);
    }

    if (v91)
    {
      *v91 = v99;
    }

    v66 = v94;
    v12 = v92;
    if (v16)
    {
      CFRelease(v16);
    }
  }

  else
  {
    v13 = 0;
    v66 = v94;
  }

  return v13;
}

void __76__CNiOSContactFetcher_executeFetchRequestWithProgressiveResults_completion___block_invoke_cold_1(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 16);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 effectiveKeysToFetch];
  v15 = [(CNiOSContactFetcher *)v9 _contactsFromPeople:a2 abMatchInfo:a3 keysToFetch:v12];

  objc_autoreleasePoolPop(v8);
  v13 = [v15 first];
  v14 = [v15 second];
  (*(*a4 + 16))();
}

@end