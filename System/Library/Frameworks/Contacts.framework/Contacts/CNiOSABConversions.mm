@interface CNiOSABConversions
+ (CFTypeRef)requiredABPropertyIDSetForKeysToFetch:(uint64_t)fetch;
+ (CNAccount)accountFromABAccount:(uint64_t)account;
+ (CNContactMatchInfo)contactMatchInfoFromABMatchMetadataDictionary:(uint64_t)dictionary;
+ (id)accountsFromABAccounts:(uint64_t)accounts;
+ (id)arrayByMappingTransform:(id)transform onCFArray:(__CFArray *)array;
+ (id)contactFromABPerson:(void *)person keysToConvert:(uint64_t)convert mutable:;
+ (id)contactFromABPerson:(void *)person uniqueKeysToConvert:(id)convert mutable:(BOOL)mutable;
+ (id)contactIdentifierFromABPerson:(uint64_t)person;
+ (id)contactPropertiesByABPropertyID;
+ (id)containerFromABSource:(int)source remote:(int)remote includeDisabledSources:;
+ (id)containersFromABSources:(char)sources remote:(char)remote includeDisabledSources:;
+ (id)dateFromABBytes:(char *)bytes length:(unint64_t)length;
+ (id)groupFromABGroup:(uint64_t)group;
+ (id)groupsFromABGroups:(uint64_t)groups;
+ (id)numberFromIntegerABBytes:(char *)bytes length:(unint64_t)length;
+ (id)os_log;
+ (id)personToContactTransformWithKeysToFetch:(char)fetch mutable:;
+ (id)stringFromABBytes:(char *)bytes length:(unint64_t)length;
+ (void)updateContact:(id)contact fromABPerson:(void *)person keysToConvert:(id)convert availableKeyDescriptor:(id *)descriptor;
@end

@implementation CNiOSABConversions

void __53__CNiOSABConversions_contactPropertiesByABPropertyID__block_invoke()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = +[CN allContactProperties];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      v5 = 0;
      do
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v14 + 1) + 8 * v5);
        v13 = 0;
        if ([v6 abPropertyID:&v13])
        {
          v7 = [MEMORY[0x1E696AD98] numberWithInt:v13];
          v8 = [v0 objectForKey:v7];

          if (v8)
          {
            v9 = [v8 arrayByAddingObject:v6];
          }

          else
          {
            v18 = v6;
            v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
          }

          v10 = [MEMORY[0x1E696AD98] numberWithInt:v13];
          [v0 setObject:v9 forKey:v10];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v3);
  }

  v11 = [v0 copy];
  v12 = contactPropertiesByABPropertyID_propertiesByABPropertyID;
  contactPropertiesByABPropertyID_propertiesByABPropertyID = v11;
}

+ (id)contactPropertiesByABPropertyID
{
  objc_opt_self();
  if (contactPropertiesByABPropertyID_onceToken != -1)
  {
    +[CNiOSABConversions contactPropertiesByABPropertyID];
  }

  v0 = contactPropertiesByABPropertyID_propertiesByABPropertyID;

  return v0;
}

+ (id)stringFromABBytes:(char *)bytes length:(unint64_t)length
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:bytes length:length encoding:4];

  return v4;
}

+ (id)dateFromABBytes:(char *)bytes length:(unint64_t)length
{
  if (length == 8)
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*bytes];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Date parameter was unexpectedly large during contact buffer decode."];
    v4 = 0;
  }

  return v4;
}

+ (id)numberFromIntegerABBytes:(char *)bytes length:(unint64_t)length
{
  if (length == 4)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:*bytes];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Integer parameter was unexpectedly large during contact buffer decode."];
    v4 = 0;
  }

  return v4;
}

+ (id)os_log
{
  if (os_log_cn_once_token_0_15 != -1)
  {
    +[CNiOSABConversions os_log];
  }

  v3 = os_log_cn_once_object_0_15;

  return v3;
}

uint64_t __28__CNiOSABConversions_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "contacts-iOSAB-conversions");
  v1 = os_log_cn_once_object_0_15;
  os_log_cn_once_object_0_15 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)contactFromABPerson:(void *)person keysToConvert:(uint64_t)convert mutable:
{
  personCopy = person;
  v7 = objc_opt_self();
  v8 = [MEMORY[0x1E695DFD8] setWithArray:personCopy];

  v9 = [v7 contactFromABPerson:a2 uniqueKeysToConvert:v8 mutable:convert];

  return v9;
}

+ (id)contactFromABPerson:(void *)person uniqueKeysToConvert:(id)convert mutable:(BOOL)mutable
{
  convertCopy = convert;
  v7 = convertCopy;
  if (person)
  {
    v10 = convertCopy;
    v8 = CNResultWithAutoreleasePool();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

CNMutableContact *__70__CNiOSABConversions_contactFromABPerson_uniqueKeysToConvert_mutable___block_invoke(uint64_t a1)
{
  v2 = [(CNiOSABConversions *)*(a1 + 40) contactIdentifierFromABPerson:?];
  v3 = [(CNContact *)[CNMutableContact alloc] initWithIdentifier:v2];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v13 = 0;
  [v4 updateContact:v3 fromABPerson:v5 keysToConvert:v6 availableKeyDescriptor:&v13];
  v7 = v13;
  [(CNMutableContact *)v3 setAvailableKeyDescriptor:v7];
  v8 = *(a1 + 56);
  RecordID = ABRecordGetRecordID(*(a1 + 48));

  if (v8)
  {
    if (RecordID != -1)
    {
      [(CNMutableContact *)v3 setSnapshot:v3];
    }

    v10 = v3;
  }

  else
  {
    if (RecordID == -1)
    {
      [(CNMutableContact *)v3 freeze];
    }

    else
    {
      [(CNMutableContact *)v3 freezeWithSelfAsSnapshot];
    }
    v10 = ;
  }

  v11 = v10;

  return v11;
}

+ (id)contactIdentifierFromABPerson:(uint64_t)person
{
  objc_opt_self();
  if (a2)
  {
    v3 = ABRecordCopyValue(a2, *MEMORY[0x1E698A438]);
    if (v3)
    {
      v3 = CFAutorelease(v3);
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)personToContactTransformWithKeysToFetch:(char)fetch mutable:
{
  v4 = a2;
  objc_opt_self();
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __70__CNiOSABConversions_personToContactTransformWithKeysToFetch_mutable___block_invoke;
  v12 = &unk_1E7416160;
  v13 = v4;
  fetchCopy = fetch;
  v5 = v4;
  v6 = _Block_copy(&v9);
  v7 = [v6 copy];

  return v7;
}

+ (void)updateContact:(id)contact fromABPerson:(void *)person keysToConvert:(id)convert availableKeyDescriptor:(id *)descriptor
{
  v47 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  convertCopy = convert;
  if (person)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__CNiOSABConversions_updateContact_fromABPerson_keysToConvert_availableKeyDescriptor___block_invoke;
    aBlock[3] = &unk_1E7416188;
    v42 = contactCopy;
    personCopy = person;
    v12 = _Block_copy(aBlock);
    if (convertCopy)
    {
      descriptorCopy = descriptor;
      v29 = contactCopy;
      v13 = objc_opt_new();
      v14 = +[CN writableAlwaysFetchedProperties];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __86__CNiOSABConversions_updateContact_fromABPerson_keysToConvert_availableKeyDescriptor___block_invoke_2;
      v38[3] = &unk_1E74161B0;
      v27 = v12;
      v15 = v12;
      v40 = v15;
      os_log2 = v13;
      v39 = os_log2;
      [v14 enumerateObjectsUsingBlock:v38];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v28 = convertCopy;
      v17 = convertCopy;
      v18 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = v18;
      v20 = *v35;
      while (1)
      {
        v21 = 0;
        do
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v34 + 1) + 8 * v21);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {

LABEL_13:
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __86__CNiOSABConversions_updateContact_fromABPerson_keysToConvert_availableKeyDescriptor___block_invoke_3;
            v30[3] = &unk_1E74161D8;
            v30[4] = v22;
            selfCopy = self;
            v32 = v15;
            v31 = os_log2;
            [v22 _cn_executeGetterForRepresentedKeys:v30];

            goto LABEL_14;
          }

          v23 = [v22 conformsToProtocol:&unk_1F0998880];

          if (v23)
          {
            goto LABEL_13;
          }

          os_log = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v45 = v22;
            _os_log_impl(&dword_1954A0000, os_log, OS_LOG_TYPE_INFO, "Found a key descriptor non conforming to the expected protocol, ignoring: %{public}@", buf, 0xCu);
          }

LABEL_14:
          ++v21;
        }

        while (v19 != v21);
        v25 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
        v19 = v25;
        if (!v25)
        {
LABEL_21:

          if (descriptorCopy)
          {
            *descriptorCopy = [os_log2 copy];
          }

          convertCopy = v28;
          contactCopy = v29;
          v12 = v27;
          goto LABEL_26;
        }
      }
    }

    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1954A0000, os_log2, OS_LOG_TYPE_INFO, "Keys to convert should have been non null, not fetching anything", buf, 2u);
    }

LABEL_26:
  }
}

__CFString *__86__CNiOSABConversions_updateContact_fromABPerson_keysToConvert_availableKeyDescriptor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && ([v5 key], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "containsKey:", v7), v7, v8))
  {
    v9 = [v5 CNValueForContact:*(a1 + 32)];
  }

  else if (v5)
  {
    v9 = [v5 CNValueFromABValue:{objc_msgSend(v5, "ABValueForABPerson:", *(a1 + 40))}];
    if (!v9)
    {
      if ([v5 isNonnull])
      {
        v10 = [v5 valueClass];
        if (v10 == objc_opt_class())
        {
          v9 = &stru_1F094DAB0;
        }

        else
        {
          v11 = [v5 valueClass];
          if (v11 == objc_opt_class())
          {
            v9 = MEMORY[0x1E695E0F0];
          }

          else
          {
            v12 = [v5 valueClass];
            if (v12 == objc_opt_class())
            {
              v9 = MEMORY[0x1E695E0F8];
            }

            else
            {
              v9 = 0;
            }
          }
        }
      }

      else
      {
        v9 = 0;
      }
    }

    [v5 setCNValue:v9 onContact:*(a1 + 32)];
    if (v6)
    {
      v13 = [v5 key];
      [v6 addKey:v13];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __86__CNiOSABConversions_updateContact_fromABPerson_keysToConvert_availableKeyDescriptor___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 32) _cn_unauthorizedKeys], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsKey:", v3), v4, v5))
  {
    v6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = v3;
      _os_log_impl(&dword_1954A0000, v6, OS_LOG_TYPE_INFO, "Found an unauthorized key, ignoring: %{public}@", &v11, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v8 = +[CN contactPropertiesByKey];
    v9 = [v8 objectForKeyedSubscript:v3];

    v7 = (*(*(a1 + 48) + 16))();
  }

  return v7;
}

+ (id)groupFromABGroup:(uint64_t)group
{
  objc_opt_self();
  if (a2)
  {
    v3 = ABRecordCopyValue(a2, *MEMORY[0x1E698A228]);
    if (v3)
    {
      v3 = CFAutorelease(v3);
    }

    v4 = *MEMORY[0x1E69964C0];
    v5 = *MEMORY[0x1E698A230];
    v6 = v3;
    v7 = ABRecordCopyValue(a2, v5);
    if (v7)
    {
      v8 = CFAutorelease(v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = (*(v4 + 16))(v4, v8);
    RecordID = ABRecordGetRecordID(a2);
    v11 = ABRecordCopyValue(a2, *MEMORY[0x1E698A208]);
    if (v11)
    {
      v11 = CFAutorelease(v11);
    }

    v12 = *MEMORY[0x1E698A218];
    v13 = v11;
    v14 = ABRecordCopyValue(a2, v12);
    if (v14)
    {
      v14 = CFAutorelease(v14);
    }

    v15 = *MEMORY[0x1E698A210];
    v16 = v14;
    v17 = ABRecordCopyValue(a2, v15);
    if (v17)
    {
      v17 = CFAutorelease(v17);
    }

    v18 = *MEMORY[0x1E698A220];
    v19 = v17;
    v20 = ABRecordCopyValue(a2, v18);
    if (v20)
    {
      v20 = CFAutorelease(v20);
    }

    v21 = v20;
    v22 = [(CNGroup *)[CNMutableGroup alloc] initWithIdentifier:v6 name:v9];

    [(CNMutableGroup *)v22 setIOSLegacyIdentifier:RecordID];
    [(CNMutableGroup *)v22 setExternalIdentifier:v13];

    [(CNMutableGroup *)v22 setExternalRepresentation:v16];
    [(CNMutableGroup *)v22 setExternalModificationTag:v19];

    [(CNMutableGroup *)v22 setExternalUUID:v21];
    a2 = [(CNMutableGroup *)v22 freezeWithSelfAsSnapshot];
  }

  return a2;
}

+ (id)groupsFromABGroups:(uint64_t)groups
{
  v3 = objc_opt_self();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CNiOSABConversions_groupsFromABGroups___block_invoke;
  v6[3] = &__block_descriptor_40_e9__16__0_v8l;
  v6[4] = v3;
  v4 = [v3 arrayByMappingTransform:v6 onCFArray:a2];

  return v4;
}

+ (id)containerFromABSource:(int)source remote:(int)remote includeDisabledSources:
{
  v23 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a2)
  {
    if (ABSourceIsRemote() != source || (!ABRecordGetIntValue() ? (v7 = remote == 0) : (v7 = 0), v7))
    {
      a2 = 0;
    }

    else
    {
      v8 = objc_alloc_init(CNMutableContainer);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = +[CN allContainerProperties];
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            v15 = [v14 ABValueForABSource:a2];
            if (![v14 isConvertibleABValue:v15])
            {

              a2 = 0;
              goto LABEL_18;
            }

            v16 = [v14 CNValueFromABValue:v15];
            [v14 setCNValue:v16 onContainer:v8];
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      a2 = [(CNMutableContainer *)v8 freezeWithSelfAsSnapshot];
LABEL_18:
    }
  }

  return a2;
}

+ (id)containersFromABSources:(char)sources remote:(char)remote includeDisabledSources:
{
  v7 = objc_opt_self();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CNiOSABConversions_containersFromABSources_remote_includeDisabledSources___block_invoke;
  v10[3] = &__block_descriptor_42_e9__16__0_v8l;
  v10[4] = v7;
  sourcesCopy = sources;
  remoteCopy = remote;
  v8 = [v7 arrayByMappingTransform:v10 onCFArray:a2];

  return v8;
}

+ (CNAccount)accountFromABAccount:(uint64_t)account
{
  objc_opt_self();
  if (a2)
  {
    v3 = ABAccountCopyIdentifier();
    if (v3)
    {
      v4 = v3;
      v5 = ABAccountCopyInternalUUID();
      a2 = [[CNAccount alloc] initWithIdentifier:v5 externalIdentifier:v4 iOSLegacyIdentifier:ABRecordGetRecordID(a2)];
      if (v5)
      {
        CFRelease(v5);
      }

      CFRelease(v4);
    }

    else
    {
      a2 = +[CNAccount localAccount];
    }
  }

  return a2;
}

+ (id)accountsFromABAccounts:(uint64_t)accounts
{
  v3 = objc_opt_self();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CNiOSABConversions_accountsFromABAccounts___block_invoke;
  v6[3] = &__block_descriptor_40_e9__16__0_v8l;
  v6[4] = v3;
  v4 = [v3 arrayByMappingTransform:v6 onCFArray:a2];

  return v4;
}

+ (CNContactMatchInfo)contactMatchInfoFromABMatchMetadataDictionary:(uint64_t)dictionary
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(CNContactMatchInfo);
  v4 = [v2 objectForKey:*MEMORY[0x1E698A0F8]];
  if (v4)
  {
    [(CNContactMatchInfo *)v3 setRelevanceScore:v4];
    -[CNContactMatchInfo setMatchedNameProperty:](v3, "setMatchedNameProperty:", [v4 integerValue] > 0);
  }

  v5 = [v2 objectForKey:*MEMORY[0x1E698A0E8]];
  if ([(NSMapTable *)v5 count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = +[CNiOSABConversions contactPropertiesByABPropertyID];
    memset(&enumerator, 0, sizeof(enumerator));
    NSEnumerateMapTable(&enumerator, v5);
    key = 0;
    value = 0;
    while (NSNextMapEnumeratorPair(&enumerator, &key, &value))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:(key - 1)];
      v9 = [v7 objectForKey:v8];
      v10 = [v9 objectAtIndexedSubscript:0];

      if (v10)
      {
        v11 = [v10 key];
        if (v11)
        {
          [dictionary setValue:value forKey:v11];
        }
      }
    }

    NSEndMapTableEnumeration(&enumerator);
    [(CNContactMatchInfo *)v3 setMatchedProperties:dictionary];
  }

  v12 = [v2 objectForKey:*MEMORY[0x1E698A0E0]];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v12];
    v14 = *MEMORY[0x1E698A0D8];
    v15 = [v13 length];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __68__CNiOSABConversions_contactMatchInfoFromABMatchMetadataDictionary___block_invoke;
    v23 = &unk_1E7416240;
    v24 = v13;
    v16 = v13;
    [v16 enumerateAttribute:v14 inRange:0 options:v15 usingBlock:{0, &v20}];
    v17 = objc_alloc_init(MEMORY[0x1E69967D0]);
    [v17 finishWithResult:{v16, v20, v21, v22, v23}];
    [(CNContactMatchInfo *)v3 setExcerpt:v17];
  }

  v18 = [v2 objectForKey:*MEMORY[0x1E698A0F0]];
  [(CNContactMatchInfo *)v3 setMatchedTerms:v18];

  return v3;
}

void __68__CNiOSABConversions_contactMatchInfoFromABMatchMetadataDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([a2 BOOLValue])
  {
    v7 = *(a1 + 32);
    v10 = @"contactExcerptEmphasized";
    v8 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v7 setAttributes:v9 range:{a3, a4}];
  }
}

+ (id)arrayByMappingTransform:(id)transform onCFArray:(__CFArray *)array
{
  transformCopy = transform;
  if (array)
  {
    Count = CFArrayGetCount(array);
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:Count];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(array, i);
        v10 = transformCopy[2](transformCopy, ValueAtIndex);
        if (v10)
        {
          [v7 addObject:v10];
        }
      }
    }

    array = [v7 copy];
  }

  return array;
}

+ (CFTypeRef)requiredABPropertyIDSetForKeysToFetch:(uint64_t)fetch
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  Mutable = CFSetCreateMutable(0, [v2 count], 0);
  v4 = +[CN contactPropertiesByKey];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v2;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        _cn_requiredKeys = [v9 _cn_requiredKeys];
        v11 = [_cn_requiredKeys mutableCopy];

        _cn_optionalKeys = [v9 _cn_optionalKeys];
        [v11 unionKeyVector:_cn_optionalKeys];

        if (objc_opt_respondsToSelector())
        {
          _cn_unauthorizedKeys = [v9 _cn_unauthorizedKeys];

          if (_cn_unauthorizedKeys)
          {
            _cn_unauthorizedKeys2 = [v9 _cn_unauthorizedKeys];
            [v11 minusKeyVector:_cn_unauthorizedKeys2];
          }
        }

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __60__CNiOSABConversions_requiredABPropertyIDSetForKeysToFetch___block_invoke;
        v18[3] = &unk_1E7416268;
        v19 = v4;
        v20 = Mutable;
        [v11 enumeratePropertiesUsingBlock:v18];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v15 = CFAutorelease(Mutable);
  return v15;
}

void __60__CNiOSABConversions_requiredABPropertyIDSetForKeysToFetch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 key];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    LODWORD(value) = 0;
    if ([v6 abPropertyID:&value])
    {
      CFSetAddValue(*(a1 + 40), value);
    }
  }
}

@end