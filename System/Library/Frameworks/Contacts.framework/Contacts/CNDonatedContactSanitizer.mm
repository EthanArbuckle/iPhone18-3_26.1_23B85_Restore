@interface CNDonatedContactSanitizer
+ (id)mutableCopyOfDonatedContact:(id)contact withCustomIdentifier:(id)identifier;
+ (id)sanitizeDonatedContact:(id)contact matchingPredicate:(id)predicate;
+ (id)storeInfoByMergingStoreInfos:(id)infos;
+ (id)storeInfoFromPredicate:(id)predicate;
+ (void)markContactAndMultiValuesAsDonated:(id)donated usingStoreInfo:(id)info andStoreIdentifier:(id)identifier;
@end

@implementation CNDonatedContactSanitizer

+ (id)sanitizeDonatedContact:(id)contact matchingPredicate:(id)predicate
{
  v23[2] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  predicateCopy = predicate;
  if (contactCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_6 != -1)
  {
    +[CNDonatedContactSanitizer sanitizeDonatedContact:matchingPredicate:];
  }

  v8 = CNGuardOSLog_cn_once_object_0_6;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_6, OS_LOG_TYPE_FAULT))
  {
    [CNDonatedContactSanitizer sanitizeDonatedContact:v8 matchingPredicate:?];
    if (predicateCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (predicateCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_6 != -1)
  {
    +[CNDonatedContactSanitizer sanitizeDonatedContact:matchingPredicate:];
  }

  v9 = CNGuardOSLog_cn_once_object_0_6;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_6, OS_LOG_TYPE_FAULT))
  {
    [CNDonatedContactSanitizer sanitizeDonatedContact:v9 matchingPredicate:?];
  }

LABEL_10:
  v10 = [self mutableCopyOfDonatedContact:contactCopy withCustomIdentifier:@"2D0447ED-BB88-45F9-909B-EB36C6920675"];
  storeInfo = [contactCopy storeInfo];
  v12 = storeInfo;
  v13 = MEMORY[0x1E695E0F8];
  if (storeInfo)
  {
    v13 = storeInfo;
  }

  v23[0] = v13;
  objc_opt_class();
  v14 = predicateCopy;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [self storeInfoFromPredicate:v16];
  v23[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v19 = [self storeInfoByMergingStoreInfos:v18];

  v20 = +[CNDonationMapper mapperIdentifier];
  [self markContactAndMultiValuesAsDonated:v10 usingStoreInfo:v19 andStoreIdentifier:v20];
  [v10 setPreferredForName:0];
  [v10 setFrozenSelfAsSnapshot];
  v21 = [v10 copy];

  return v21;
}

+ (id)mutableCopyOfDonatedContact:(id)contact withCustomIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  identifierCopy = identifier;
  v7 = [(CNContact *)[CNMutableContact alloc] initWithIdentifier:identifierCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = +[CN writableContactProperties];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 key];
        v15 = [contactCopy isKeyAvailable:v14];

        if (v15)
        {
          v16 = [v13 CNValueForContact:contactCopy];
          [v13 setCNValue:v16 onContact:v7];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (void)markContactAndMultiValuesAsDonated:(id)donated usingStoreInfo:(id)info andStoreIdentifier:(id)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  donatedCopy = donated;
  infoCopy = info;
  identifierCopy = identifier;
  [donatedCopy setStoreIdentifier:identifierCopy];
  [donatedCopy setStoreInfo:infoCopy];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = +[CN writableMultiValueContactProperties];
  v10 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      v13 = 0;
      v24 = v11;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        v15 = [v14 key];
        v16 = [donatedCopy isKeyAvailable:v15];

        if (v16)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v17 = donatedCopy;
          v18 = [v14 CNValueForContact:donatedCopy];
          v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v27;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v27 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v26 + 1) + 8 * i);
                [v23 setStoreIdentifier:identifierCopy];
                [v23 addStoreInfo:infoCopy];
              }

              v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v20);
          }

          donatedCopy = v17;
          v11 = v24;
        }

        ++v13;
      }

      while (v13 != v11);
      v11 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }
}

+ (id)storeInfoByMergingStoreInfos:(id)infos
{
  v3 = MEMORY[0x1E695DF90];
  infosCopy = infos;
  dictionary = [v3 dictionary];
  v6 = [infosCopy _cn_reduce:&__block_literal_global_93 initialValue:dictionary];

  return v6;
}

id __58__CNDonatedContactSanitizer_storeInfoByMergingStoreInfos___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  [v4 addEntriesFromDictionary:a3];

  return v4;
}

+ (id)storeInfoFromPredicate:(id)predicate
{
  v11[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v4 = *MEMORY[0x1E6996530];
  mainStoreContactIdentifiers = [predicateCopy mainStoreContactIdentifiers];
  LOBYTE(v4) = (*(v4 + 16))(v4, mainStoreContactIdentifiers);

  if (v4)
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v10 = @"CNContactMainStoreLinkedIdentifier";
    mainStoreContactIdentifiers2 = [predicateCopy mainStoreContactIdentifiers];
    firstObject = [mainStoreContactIdentifiers2 firstObject];
    v11[0] = firstObject;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  return v6;
}

@end