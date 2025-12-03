@interface NSEntityDescription(VSSubscriptionAdditions)
+ (id)vs_subscriptionEntityForVersion:()VSSubscriptionAdditions;
- (id)vs_referenceValueAttribute;
- (void)vs_setReferenceValueAttribute:()VSSubscriptionAdditions;
- (void)vs_setUserInfoValue:()VSSubscriptionAdditions forKey:;
@end

@implementation NSEntityDescription(VSSubscriptionAdditions)

- (void)vs_setUserInfoValue:()VSSubscriptionAdditions forKey:
{
  v10 = a3;
  v6 = a4;
  userInfo = [self userInfo];
  v8 = [userInfo mutableCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  if (v10)
  {
    [v8 setObject:v10 forKey:v6];
  }

  else
  {
    v9 = [v8 objectForKey:v6];

    if (v9)
    {
      [v8 removeObjectForKey:v6];
    }
  }

  [self setUserInfo:v8];
}

- (id)vs_referenceValueAttribute
{
  userInfo = [self userInfo];
  v3 = [userInfo objectForKey:@"VSReferenceValueAttributeUserInfoKey"];

  if (v3)
  {
    v4 = v3;
    attributesByName = [self attributesByName];
    v6 = [attributesByName objectForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)vs_setReferenceValueAttribute:()VSSubscriptionAdditions
{
  name = [a3 name];
  attributesByName = [self attributesByName];
  allKeys = [attributesByName allKeys];
  v6 = [allKeys containsObject:name];

  if (v6)
  {
    [self vs_setUserInfoValue:name forKey:@"VSReferenceValueAttributeUserInfoKey"];
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The attribute must belong to the receiver."];
  }
}

+ (id)vs_subscriptionEntityForVersion:()VSSubscriptionAdditions
{
  v122[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBE408]);
  [v4 setName:@"Subscription"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setManagedObjectClassName:v6];

  v7 = 0x277CBE000uLL;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v8 addObject:v10];
  [v10 setName:@"expirationDate"];
  [v10 vs_setSubscriptionKeyPath:@"expirationDate"];
  [v10 vs_setPropertyListKey:@"PSSSExpirationDate"];
  [v10 setAttributeType:900];
  [v10 setOptional:0];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [v10 setDefaultValue:distantFuture];

  v83 = v10;
  [v9 addObject:v10];
  v12 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v8 addObject:v12];
  [v12 setName:@"creationDate"];
  [v12 vs_setSubscriptionKeyPath:@"creationDate"];
  [v12 vs_setSuitablePurposes:5];
  [v12 vs_setPropertyListKey:@"PSSSDateCreated"];
  [v12 setAttributeType:900];
  [v12 setOptional:0];
  v82 = v12;
  [v9 addObject:v12];
  v13 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v8 addObject:v13];
  [v13 setName:@"mostRecentSaveDate"];
  [v13 vs_setSubscriptionKeyPath:@"modificationDate"];
  [v13 vs_setSuitablePurposes:5];
  [v13 vs_setPropertyListKey:@"PSSSDateModified"];
  [v13 setAttributeType:900];
  [v13 setOptional:0];
  v80 = v13;
  [v9 addObject:v13];
  v14 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v14 vs_setPropertyListKey:@"PSSSSubscriptionInfo"];
  [v14 setAttributeType:700];
  [v14 setOptional:a3 < 1];
  [v14 setDefaultValue:&stru_284DD5B48];
  v15 = [v14 copy];
  [v15 vs_setSubscriptionKeyPath:@"providedSubscriptionInfo"];
  [v8 addObject:v15];
  [v15 setName:@"providedSubscriptionInfo"];
  v81 = v15;
  [v9 addObject:v15];
  v79 = v14;
  v16 = [v14 copy];
  [v16 vs_setSubscriptionKeyPath:@"derivedSubscriptionInfo"];
  [v8 addObject:v16];
  [v16 setTransient:1];
  [v16 setName:@"derivedSubscriptionInfo"];
  v78 = v16;
  [v16 vs_setSuitablePurposes:4];
  v17 = objc_alloc_init(MEMORY[0x277CBE358]);
  [v8 addObject:v17];
  [v17 setName:@"sourceIdentifier"];
  [v17 vs_setSubscriptionKeyPath:@"source.identifier"];
  [v17 vs_setPropertyListKey:@"PSSSIdentifier"];
  [v17 setAttributeType:700];
  [v17 setOptional:0];
  [v9 addObject:v17];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= 1", @"length"];
  [v18 addObject:v20];

  [v19 addObject:&unk_284DF3400];
  v76 = v19;
  v77 = v18;
  [v17 setValidationPredicates:v18 withValidationWarnings:v19];
  v84 = v17;
  v89 = v9;
  if (a3 < 1)
  {
    v113 = v17;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v113 count:1];
    v114 = v21;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
    [v4 setUniquenessConstraints:v44];
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x277CBE358]);
    [v8 addObject:v21];
    [v21 setName:@"sourceKind"];
    [v21 vs_setSubscriptionKeyPath:@"source.kind"];
    [v21 vs_setPropertyListKey:@"PSSSIdentifierType"];
    [v21 vs_setPropertyListValueTransformerName:@"VSSubscriptionSourceKindPropertyListValueTransformer"];
    [v21 setAttributeType:100];
    [v21 setOptional:0];
    [v9 addObject:v21];
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self >= %@", &unk_284DF3418];
    [v22 addObject:v24];

    [v23 addObject:&unk_284DF3430];
    v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self <= %@", &unk_284DF3448];
    [v22 addObject:v25];

    [v23 addObject:&unk_284DF3460];
    v87 = v22;
    [v21 setValidationPredicates:v22 withValidationWarnings:v23];
    [v21 setDefaultValue:&unk_284DF3418];
    if (a3 != 1)
    {
      v26 = objc_alloc_init(MEMORY[0x277CBE358]);
      [v8 addObject:v26];
      [v26 setName:@"subscriberIdentifierHash"];
      [v26 vs_setSubscriptionKeyPath:@"subscriberIdentifierHash"];
      [v26 vs_setJSONKey:@"account"];
      [v26 vs_setJSONValueTransformerName:@"VSSubscriptionAccountHashValueTransformer"];
      [v26 setAttributeType:700];
      [v26 setOptional:0];
      [v26 setDefaultValue:&stru_284DD5B48];

      if (a3 >= 3)
      {
        v27 = objc_alloc_init(MEMORY[0x277CBE358]);
        [v8 addObject:v27];
        [v27 setName:@"billingIdentifier"];
        [v27 vs_setSubscriptionKeyPath:@"billingIdentifier"];
        [v27 vs_setJSONKey:@"billingIdentifier"];
        [v27 setAttributeType:700];
        [v27 setOptional:0];
        [v27 setDefaultValue:&stru_284DD5B48];
      }
    }

    v28 = objc_alloc_init(MEMORY[0x277CBE358]);
    [v8 addObject:v28];
    [v28 setName:@"accessLevel"];
    [v28 vs_setSubscriptionKeyPath:@"accessLevel"];
    [v28 vs_setJSONKey:@"availabilityType"];
    [v28 vs_setRequiredJSONValue:1];
    v122[0] = objc_opt_class();
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:1];
    [v28 vs_setExpectedJSONValueClasses:v29];

    [v28 vs_setJSONValueTransformerName:@"VSSubscriptionAvailabilityTypeJSONValueTransformer"];
    [v28 setAttributeType:100];
    [v28 setOptional:0];
    [v28 setDefaultValue:&unk_284DF3418];
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self >= %@", &unk_284DF3418];
    [v30 addObject:v32];

    [v31 addObject:&unk_284DF3430];
    v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self <= %@", &unk_284DF3478];
    [v30 addObject:v33];

    [v31 addObject:&unk_284DF3460];
    [v28 setValidationPredicates:v30 withValidationWarnings:v31];
    v34 = objc_alloc_init(MEMORY[0x277CBE358]);
    [v8 addObject:v34];
    [v34 setName:@"tierIdentifiers"];
    [v34 vs_setSubscriptionKeyPath:@"tierIdentifiers"];
    [v34 vs_setJSONKey:@"tiers"];
    v121[0] = objc_opt_class();
    v121[1] = objc_opt_class();
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:2];
    [v34 vs_setExpectedJSONValueClasses:v35];

    [v34 setAttributeType:1800];
    [v34 setValueTransformerName:*MEMORY[0x277CCA668]];
    [v34 setOptional:0];
    [v34 setDefaultValue:MEMORY[0x277CBEBF8]];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    [v34 setAttributeValueClassName:v37];

    v119[0] = v21;
    v119[1] = v84;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:2];
    v120 = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];
    [v4 setUniquenessConstraints:v39];

    v118[0] = v21;
    v118[1] = v84;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:2];
    [v91 addObject:v40];

    v117[0] = v21;
    v117[1] = v84;
    v117[2] = v83;
    v117[3] = v82;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:4];
    [v91 addObject:v41];

    v116[0] = v81;
    v116[1] = v21;
    v116[2] = v84;
    v116[3] = v83;
    v116[4] = v82;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:5];
    [v91 addObject:v42];

    v115[0] = v21;
    v115[1] = v82;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:2];
    [v91 addObject:v43];

    v7 = 0x277CBE000;
    v44 = v87;
  }

  [v4 setProperties:v8];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v45 = v8;
  v46 = [v45 countByEnumeratingWithState:&v105 objects:v112 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v106;
    v49 = *MEMORY[0x277CCA668];
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v106 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [*(*(&v105 + 1) + 8 * i) setValueTransformerName:v49];
      }

      v47 = [v45 countByEnumeratingWithState:&v105 objects:v112 count:16];
    }

    while (v47);
  }

  v75 = v45;

  [v4 vs_setReferenceValueAttribute:v84];
  v51 = objc_alloc_init(*(v7 + 2840));
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v89;
  v52 = [obj countByEnumeratingWithState:&v101 objects:v111 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v102;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v102 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v56 = *(*(&v101 + 1) + 8 * j);
        name = [v56 name];
        v58 = objc_alloc_init(*(v7 + 2840));
        v59 = [objc_alloc(MEMORY[0x277CBE420]) initWithProperty:v56 collationType:0];
        [v58 addObject:v59];

        v60 = [objc_alloc(MEMORY[0x277CBE418]) initWithName:name elements:v58];
        [v51 addObject:v60];
      }

      v53 = [obj countByEnumeratingWithState:&v101 objects:v111 count:16];
    }

    while (v53);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v85 = v91;
  v92 = [v85 countByEnumeratingWithState:&v97 objects:v110 count:16];
  if (v92)
  {
    v88 = v51;
    v90 = *v98;
    do
    {
      for (k = 0; k != v92; ++k)
      {
        if (*v98 != v90)
        {
          objc_enumerationMutation(v85);
        }

        v62 = *(*(&v97 + 1) + 8 * k);
        v63 = [v62 valueForKeyPath:@"name"];
        v64 = v63;
        if (v63)
        {
          v65 = [v63 componentsJoinedByString:@"_"];
          v66 = objc_alloc_init(*(v7 + 2840));
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v67 = v62;
          v68 = [v67 countByEnumeratingWithState:&v93 objects:v109 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v94;
            do
            {
              for (m = 0; m != v69; ++m)
              {
                if (*v94 != v70)
                {
                  objc_enumerationMutation(v67);
                }

                v72 = [objc_alloc(MEMORY[0x277CBE420]) initWithProperty:*(*(&v93 + 1) + 8 * m) collationType:0];
                [v66 addObject:v72];
              }

              v69 = [v67 countByEnumeratingWithState:&v93 objects:v109 count:16];
            }

            while (v69);
          }

          v73 = [objc_alloc(MEMORY[0x277CBE418]) initWithName:v65 elements:v66];
          v51 = v88;
          [v88 addObject:v73];

          v7 = 0x277CBE000;
        }
      }

      v92 = [v85 countByEnumeratingWithState:&v97 objects:v110 count:16];
    }

    while (v92);
  }

  [v4 setIndexes:v51];

  return v4;
}

@end