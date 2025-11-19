@interface VSKeychainEditingContext
- (BOOL)save:(id *)a3;
- (VSKeychainEditingContext)init;
- (VSKeychainStore)keychainStore;
- (id)_deleteQueryForItemValues:(id)a3 withItemKind:(id)a4;
- (id)_findOrCreateItemForCommittedValues:(id)a3 withItemKind:(id)a4;
- (id)_queryForItemValues:(id)a3 withItemKind:(id)a4;
- (id)_subsetOfRegisteredItemsWithKeyPath:(id)a3;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (void)_populateErrors:(id)a3 withError:(id)a4 affectingItem:(id)a5;
- (void)_populateQuery:(__CFDictionary *)a3 usingPredicate:(id)a4 withItemKind:(id)a5;
- (void)_populateResult:(id)a3 forRequest:(id)a4 fromMatch:(id)a5;
- (void)deleteItem:(id)a3;
- (void)fulfillFault:(id)a3;
- (void)insertItem:(id)a3;
@end

@implementation VSKeychainEditingContext

- (VSKeychainEditingContext)init
{
  v6.receiver = self;
  v6.super_class = VSKeychainEditingContext;
  v2 = [(VSKeychainEditingContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    items = v2->_items;
    v2->_items = v3;
  }

  return v2;
}

- (void)_populateQuery:(__CFDictionary *)a3 usingPredicate:(id)a4 withItemKind:(id)a5
{
  v79 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = MEMORY[0x277CBEAD8];
      v11 = *MEMORY[0x277CBE660];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [v10 raise:v11 format:{@"Unexpectedly, predicate was %@, instead of NSCompoundPredicate.", v13}];
    }

    v14 = v8;
    if ([v14 compoundPredicateType] != 1)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported compound predicate: %@", v14}];
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v15 = [v14 subpredicates];
    v16 = [v15 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v74;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v74 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(VSKeychainEditingContext *)self _populateQuery:a3 usingPredicate:*(*(&v73 + 1) + 8 * i) withItemKind:v9];
        }

        v17 = [v15 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v17);
    }

    goto LABEL_61;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = MEMORY[0x277CBEAD8];
      v21 = *MEMORY[0x277CBE660];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      [v20 raise:v21 format:{@"Unexpectedly, predicate was %@, instead of NSComparisonPredicate.", v23}];
    }

    v24 = v8;
    v25 = [v24 leftExpression];
    v26 = [v24 rightExpression];
    v27 = [v25 expressionType];
    v28 = [v26 expressionType];
    v66 = v26;
    if ((v27 != 3 || (v29 = v26, v30 = v25, v28)) && (v27 || (v29 = v25, v30 = v26, v28 != 3)))
    {
      v33 = *MEMORY[0x277CBE660];
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported expressions in comparison predicate: %@", v24}];
      v29 = 0;
    }

    else
    {
      v31 = v25;
      v32 = v26;
      if (v30)
      {
        goto LABEL_28;
      }

      v33 = *MEMORY[0x277CBE660];
    }

    [MEMORY[0x277CBEAD8] raise:v33 format:@"The keyPathExpressionOrNil parameter must not be nil."];
    v30 = 0;
LABEL_28:
    v36 = v25;
    v37 = v30;
    if (!v29)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The constantExpressionOrNil parameter must not be nil."];
    }

    v38 = v29;
    v39 = [v37 keyPath];
    if (!v39 || ([v9 attributesByName], v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "objectForKey:", v39), v41 = objc_claimAutoreleasedReturnValue(), v40, !v41))
    {
      v42 = *MEMORY[0x277CBE660];
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unknown keypath %@ for item kind %@", v39, v9}];
      [MEMORY[0x277CBEAD8] raise:v42 format:@"The attributeOrNil parameter must not be nil."];
      v41 = 0;
    }

    v65 = v39;
    v43 = v41;
    v67 = [v38 constantValue];
    v68 = v43;
    v44 = [v43 attributeValueClassName];
    NSClassFromString(v44);

    v45 = [v24 predicateOperatorType];
    if (v45 == 10)
    {
      v46 = v36;
      v52 = v36 == v37;
      v47 = v66;
      if (v52 && v66 == v38)
      {
        v53 = v67;
        if (![v67 conformsToProtocol:&unk_284E09B08])
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unable to enumerate constant value: %@", v67}];
          v51 = v65;
          goto LABEL_60;
        }

        v61 = v37;
        v62 = v46;
        v63 = v24;
        v64 = v8;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v54 = v67;
        v55 = [v54 countByEnumeratingWithState:&v69 objects:v77 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v70;
          v58 = *MEMORY[0x277CBE660];
          do
          {
            for (j = 0; j != v56; ++j)
            {
              if (*v70 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v60 = *(*(&v69 + 1) + 8 * j);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [MEMORY[0x277CBEAD8] raise:v58 format:{@"Unexpected value %@ for attribute %@", v60, v68}];
              }
            }

            v56 = [v54 countByEnumeratingWithState:&v69 objects:v77 count:16];
          }

          while (v56);
        }

        v24 = v63;
        v8 = v64;
        v37 = v61;
        v46 = v62;
        v47 = v66;
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported left (%@) and right (%@) expressions for IN operator.", v46, v66}];
      }

      v51 = v65;
    }

    else
    {
      v46 = v36;
      if (v45 == 4)
      {
        v47 = v66;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unexpected value %@ for attribute %@", v67, v68}];
        }

        v48 = [v68 secItemAttributeKey];
        v49 = v67;
        if (CFDictionaryContainsKey(a3, v48))
        {
          Value = CFDictionaryGetValue(a3, v48);
          v51 = v65;
          if (!CFEqual(Value, v49))
          {
            CFRelease(v49);
            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Duplicative predicate for key path %@", v65}];
          }
        }

        else
        {
          CFDictionarySetValue(a3, v48, v49);
          v51 = v65;
        }

        CFRelease(v49);
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported operator type (%lu) in comparison predicate: %@", v45, v24}];
        v51 = v65;
        v47 = v66;
      }
    }

    v53 = v67;
LABEL_60:

    goto LABEL_61;
  }

  v34 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v35 = [v8 isEqual:v34];

  if (v8 && (v35 & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported predicate: %@", v8}];
  }

LABEL_61:
}

- (id)_findOrCreateItemForCommittedValues:(id)a3 withItemKind:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(VSKeychainEditingContext *)self items];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v22 + 1) + 8 * v12);
      v14 = [v13 committedValues];
      v15 = [v14 isEqual:v6];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = v13;

    if (v16)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:
  }

  v17 = [v7 itemClassName];
  v18 = NSClassFromString(v17);

  v16 = [[v18 alloc] initWithItemKind:v7 insertIntoEditingContext:0];
  [v16 setEditingContext:self];
  [v16 setHasFaultForData:1];
  v19 = [(VSKeychainEditingContext *)self items];
  [v19 addObject:v16];

  [v16 _setCommittedValues:v6 registeringUndo:0];
  v20 = [v6 mutableCopy];
  [v16 setPrimitiveValues:v20];

  if (!v16)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The itemOrNil parameter must not be nil."];
  }

LABEL_13:

  return v16;
}

- (void)_populateResult:(id)a3 forRequest:(id)a4 fromMatch:(id)a5
{
  v23 = self;
  v32 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v7 = a4;
  v8 = a5;
  v24 = [v7 predicate];
  v25 = v7;
  v9 = [v7 itemKind];
  v10 = [v9 forceUnwrapObject];

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = [v10 properties];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [v17 name];
        v19 = [v17 defaultValue];
        v20 = [v8 objectForKey:{objc_msgSend(v17, "secItemAttributeKey")}];
        v21 = v20;
        if (v20 || (v21 = v19) != 0)
        {
          [v11 setObject:v21 forKey:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  v22 = [(VSKeychainEditingContext *)v23 _findOrCreateItemForCommittedValues:v11 withItemKind:v10];
  if ([v24 evaluateWithObject:v22])
  {
    [v26 addObject:v22];
  }
}

- (id)_queryForItemValues:(id)a3 withItemKind:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v6 properties];
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
        v14 = [v13 secItemAttributeKey];
        v15 = [v13 name];
        v16 = [v5 objectForKey:v15];
        if (v16)
        {
          [v7 setObject:v16 forKey:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_deleteQueryForItemValues:(id)a3 withItemKind:(id)a4
{
  v26[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v26[0] = @"accessGroup";
  v26[1] = @"creatorCode";
  v26[2] = @"creationDate";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v10 = [v8 initWithArray:v9];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = v6;
  v11 = [v6 properties];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [v16 name];
        if ([v10 containsObject:v17])
        {
          v18 = [v5 objectForKey:v17];
          if (v18)
          {
            [v7 setObject:v18 forKey:{objc_msgSend(v16, "secItemAttributeKey")}];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  [v7 setObject:*MEMORY[0x277CDC148] forKey:*MEMORY[0x277CDC140]];

  return v7;
}

- (void)_populateErrors:(id)a3 withError:(id)a4 affectingItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v8 userInfo];
  v15 = [v10 mutableCopy];

  [v15 setObject:v7 forKey:@"VSKeychainAffectedItemsKey"];
  v11 = MEMORY[0x277CCA9B8];
  v12 = [v8 domain];
  v13 = [v8 code];

  v14 = [v11 errorWithDomain:v12 code:v13 userInfo:v15];
  [v9 addObject:v14];
}

- (void)fulfillFault:(id)a3
{
  v4 = a3;
  if (([v4 hasFaultForData] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Item must have a fault for its data."];
  }

  v5 = [v4 itemKind];
  v6 = [v4 committedValues];
  v7 = [(VSKeychainEditingContext *)self _queryForItemValues:v6 withItemKind:v5];

  v8 = [v5 secItemClass];
  [v7 setObject:v8 forKey:*MEMORY[0x277CDC228]];
  [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC558]];
  v9 = [(VSKeychainEditingContext *)self keychainStore];
  v19 = 0;
  v10 = [v9 findItemsMatchingQuery:v7 error:&v19];
  v11 = v19;

  if (v10)
  {
    v12 = v10;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![v12 count])
    {
      v18 = VSErrorLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [VSKeychainEditingContext fulfillFault:];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        v14 = [v4 primitiveValues];
        v15 = [v13 copy];
        [v14 setObject:v15 forKey:@"data"];

        v16 = [v4 committedValues];
        v17 = [v13 copy];

        [v16 setObject:v17 forKey:@"data"];
        [v4 setHasFaultForData:0];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected result type."];
      }
    }
  }

  else
  {
    v12 = VSErrorLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [VSKeychainEditingContext fulfillFault:];
    }
  }
}

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = a3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  v8 = [v6 itemKind];
  v9 = [v8 forceUnwrapObject];

  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC228], [v9 secItemClass]);
  v10 = [v6 predicate];
  [(VSKeychainEditingContext *)self _populateQuery:Mutable usingPredicate:v10 withItemKind:v9];
  v11 = *MEMORY[0x277CDC140];
  if (!CFDictionaryContainsKey(Mutable, *MEMORY[0x277CDC140]))
  {
    CFDictionarySetValue(Mutable, v11, *MEMORY[0x277CDC148]);
  }

  v52 = [v6 fetchLimit];
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28]);
  v12 = [(VSKeychainEditingContext *)self keychainStore];
  v65 = 0;
  v13 = [v12 findItemsMatchingQuery:Mutable error:&v65];
  v14 = v65;

  if (v13)
  {
    v55 = v6;
    v15 = v13;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_opt_class();
    v54 = v16;
    v50 = v15;
    v51 = v14;
    if (objc_opt_isKindOfClass())
    {
      v56 = self;
      v49 = v9;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = MEMORY[0x277CBEAD8];
        v18 = *MEMORY[0x277CBE660];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = v17;
        v16 = v54;
        [v21 raise:v18 format:{@"Unexpectedly, result was %@, instead of NSArray.", v20}];
      }

      v22 = v15;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v62;
        v26 = *MEMORY[0x277CBE658];
        v53 = *MEMORY[0x277CBE660];
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v62 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v61 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v29 = MEMORY[0x277CBEAD8];
                v30 = objc_opt_class();
                v31 = NSStringFromClass(v30);
                v32 = v29;
                v6 = v55;
                [v32 raise:v53 format:{@"Unexpectedly, matchingValue was %@, instead of NSDictionary.", v31}];

                v16 = v54;
              }

              [(VSKeychainEditingContext *)v56 _populateResult:v16 forRequest:v6 fromMatch:v28];
            }

            else
            {
              [MEMORY[0x277CBEAD8] raise:v26 format:{@"Unexpected matching value: %@", v28}];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v61 objects:v67 count:16];
        }

        while (v24);
      }

      v9 = v49;
      self = v56;
      v14 = v51;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v34 = MEMORY[0x277CBEAD8];
          v35 = *MEMORY[0x277CBE660];
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = v35;
          v16 = v54;
          [v34 raise:v38 format:{@"Unexpectedly, result was %@, instead of NSDictionary.", v37}];
        }

        v6 = v55;
        [(VSKeychainEditingContext *)self _populateResult:v16 forRequest:v55 fromMatch:v15];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unexpected match result: %@", v15}];
      }
    }

    v39 = [v6 sortDescriptors];
    if (v39)
    {
      [v16 sortUsingDescriptors:v39];
    }

    v40 = [v16 count];
    if (v52 && v40 > v52)
    {
      [v16 removeObjectsInRange:{v52, v40 - v52}];
    }

    if ([v6 includesDataValues])
    {
      v41 = v13;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v42 = v16;
      v43 = [v42 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v58;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v58 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v57 + 1) + 8 * j);
            if ([v47 hasFaultForData])
            {
              [(VSKeychainEditingContext *)self fulfillFault:v47];
            }
          }

          v44 = [v42 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v44);
      }

      v16 = v54;
      v6 = v55;
      v13 = v41;
      v14 = v51;
    }
  }

  else if (a4)
  {
    v33 = v14;
    v16 = 0;
    *a4 = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)insertItem:(id)a3
{
  v10 = a3;
  if ([v10 hasChanges])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempting to insert an item that has changes."];
  }

  v4 = [(VSKeychainEditingContext *)self undoManager];
  v5 = [v10 editingContext];
  v6 = v5;
  if (v5)
  {
    if (v5 != self)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Item already has another context."];
    }
  }

  else
  {
    [v10 setEditingContext:self];
    v7 = [v4 prepareWithInvocationTarget:v10];
    [v7 setEditingContext:0];
  }

  v8 = [(VSKeychainEditingContext *)self items];
  [v8 addObject:v10];
  v9 = [v4 prepareWithInvocationTarget:v8];
  [v9 removeObject:v10];

  [v10 setInserted:1];
}

- (void)deleteItem:(id)a3
{
  v6 = a3;
  v4 = [v6 editingContext];
  v5 = v4;
  if (v4)
  {
    if (v4 != self)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Item does not belong to this context."];
    }

    [v6 setDeleted:1];
  }
}

- (id)_subsetOfRegisteredItemsWithKeyPath:(id)a3
{
  v4 = [MEMORY[0x277CCA9C0] expressionForKeyPath:a3];
  v5 = [MEMORY[0x277CCA9C0] expressionForConstantValue:MEMORY[0x277CBEC38]];
  v6 = [MEMORY[0x277CCA918] predicateWithLeftExpression:v4 rightExpression:v5 modifier:0 type:4 options:0];
  v7 = [(VSKeychainEditingContext *)self items];
  v8 = [v7 filteredSetUsingPredicate:v6];

  return v8;
}

- (VSKeychainStore)keychainStore
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_keychainStore;
  if (!v3)
  {
    v3 = objc_alloc_init(VSKeychainStore);
    objc_storeStrong(&v2->_keychainStore, v3);
  }

  objc_sync_exit(v2);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (BOOL)save:(id *)a3
{
  v124 = *MEMORY[0x277D85DE8];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v123 = "[VSKeychainEditingContext save:]";
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(VSKeychainEditingContext *)self deletedItems];
  v7 = [v6 copy];

  v8 = [(VSKeychainEditingContext *)self updatedItems];
  v9 = [v8 copy];

  v10 = [(VSKeychainEditingContext *)self insertedItems];
  v11 = [v10 copy];

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v77 = v11;
  [v12 setObject:v11 forKey:@"VSInsertedKeychainItemsKey"];
  v71 = v9;
  [v12 setObject:v9 forKey:@"VSUpdatedKeychainItemsKey"];
  [v12 setObject:v7 forKey:@"VSDeletedKeychainItemsKey"];
  v72 = [MEMORY[0x277CCAB98] defaultCenter];
  v73 = v12;
  [v72 postNotificationName:@"VSKeychainEditingContextWillSaveNotification" object:self userInfo:v12];
  v76 = [(VSKeychainEditingContext *)self undoManager];
  v95 = [(VSKeychainEditingContext *)self keychainStore];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v7;
  v89 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
  v92 = v5;
  v94 = self;
  if (v89)
  {
    v87 = *v116;
    v84 = *MEMORY[0x277CDC228];
    v79 = *MEMORY[0x277CBE660];
    v93 = 1;
    do
    {
      for (i = 0; i != v89; i = i + 1)
      {
        if (*v116 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v115 + 1) + 8 * i);
        v15 = [v14 itemKind];
        v16 = [v14 committedValues];
        v17 = [(VSKeychainEditingContext *)self _deleteQueryForItemValues:v16 withItemKind:v15];
        [v17 setObject:objc_msgSend(v15 forKey:{"secItemClass"), v84}];
        v114 = 0;
        v18 = self;
        v19 = [v95 deleteItemsMatchingQuery:v17 error:&v114];
        v20 = v114;
        if (v19)
        {
          v21 = [(VSKeychainEditingContext *)v18 undoManager];
          v110[0] = MEMORY[0x277D85DD0];
          v110[1] = 3221225472;
          v110[2] = __33__VSKeychainEditingContext_save___block_invoke;
          v110[3] = &unk_278B753E8;
          v110[4] = v18;
          v111 = v16;
          v112 = v15;
          v113 = v95;
          [v21 registerUndoWithTarget:v18 handler:v110];

          [v14 setDeleted:0];
          v22 = [(VSKeychainEditingContext *)v18 items];
          v23 = [v76 prepareWithInvocationTarget:v22];
          [v23 addObject:v14];

          [v22 removeObject:v14];
          v24 = [v76 prepareWithInvocationTarget:v14];
          [v24 setEditingContext:v18];

          v5 = v92;
          [v14 setEditingContext:0];

          self = v18;
        }

        else
        {
          v25 = VSDefaultLogObject();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v123 = v20;
            _os_log_impl(&dword_23AB8E000, v25, OS_LOG_TYPE_DEFAULT, "VSKeychainEditingContext: Deletion error %@", buf, 0xCu);
          }

          if (!v20)
          {
            [MEMORY[0x277CBEAD8] raise:v79 format:@"The deletionError parameter must not be nil."];
          }

          self = v94;
          [(VSKeychainEditingContext *)v94 _populateErrors:v5 withError:v20 affectingItem:v14];
          v93 = 0;
        }
      }

      v89 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
    }

    while (v89);
  }

  else
  {
    v93 = 1;
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v80 = v77;
  v90 = [v80 countByEnumeratingWithState:&v106 objects:v120 count:16];
  if (v90)
  {
    v26 = *v107;
    v88 = *MEMORY[0x277CDC550];
    v85 = *MEMORY[0x277CDC228];
    v75 = *MEMORY[0x277CBE658];
    v78 = *MEMORY[0x277CDBF90];
    v74 = *MEMORY[0x277CBE660];
    v27 = v95;
    v83 = *v107;
    do
    {
      for (j = 0; j != v90; j = j + 1)
      {
        if (*v107 != v26)
        {
          objc_enumerationMutation(v80);
        }

        v29 = *(*(&v106 + 1) + 8 * j);
        v30 = [v29 itemKind];
        v31 = [v29 primitiveValues];
        v32 = [(VSKeychainEditingContext *)self _queryForItemValues:v31 withItemKind:v30];

        [v32 setObject:MEMORY[0x277CBEC38] forKey:v88];
        [v32 setObject:objc_msgSend(v30 forKey:{"secItemClass"), v85}];
        v105 = 0;
        v33 = [v27 addItem:v32 error:&v105];
        v34 = v105;
        v35 = v34;
        if (v33)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v82 = v35;
            v36 = [v29 primitiveValues];
            v37 = [v29 itemKind];
            v38 = [v37 attributesBySecItemAttributeKey];
            v39 = [v38 objectForKey:v78];
            v40 = [v39 name];

            if (v40)
            {
              v41 = v40;
              v42 = [v33 objectForKey:v78];
              if (v42)
              {
                v43 = [v29 primitiveValues];
                [v43 setObject:v42 forKey:v41];
              }
            }

            v44 = [(VSKeychainEditingContext *)v94 undoManager];
            v101[0] = MEMORY[0x277D85DD0];
            v101[1] = 3221225472;
            v101[2] = __33__VSKeychainEditingContext_save___block_invoke_158;
            v101[3] = &unk_278B75410;
            v102 = v36;
            v103 = v30;
            v27 = v95;
            v104 = v95;
            v45 = v36;
            [v44 registerUndoWithTarget:v94 handler:v101];

            [v29 _setCommittedValues:v45 registeringUndo:1];
            [v29 setInserted:0];

            self = v94;
            v5 = v92;
            v26 = v83;
            v35 = v82;
          }

          else
          {
            [MEMORY[0x277CBEAD8] raise:v75 format:{@"Unexpected add result: %@", v33}];
          }
        }

        else
        {
          v46 = v27;
          v47 = v5;
          v48 = v34;
          v49 = VSDefaultLogObject();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v123 = v48;
            _os_log_impl(&dword_23AB8E000, v49, OS_LOG_TYPE_DEFAULT, "VSKeychainEditingContext: Insertion error %@", buf, 0xCu);
          }

          v35 = v48;
          if (!v48)
          {
            [MEMORY[0x277CBEAD8] raise:v74 format:@"The additionError parameter must not be nil."];
          }

          v5 = v47;
          [(VSKeychainEditingContext *)self _populateErrors:v47 withError:v35 affectingItem:v29];
          v93 = 0;
          v27 = v46;
          v26 = v83;
        }
      }

      v90 = [v80 countByEnumeratingWithState:&v106 objects:v120 count:16];
    }

    while (v90);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v91 = v71;
  v50 = [v91 countByEnumeratingWithState:&v97 objects:v119 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v98;
    v53 = *MEMORY[0x277CDC228];
    v86 = *MEMORY[0x277CBE660];
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v98 != v52)
        {
          objc_enumerationMutation(v91);
        }

        v55 = *(*(&v97 + 1) + 8 * k);
        v56 = [v55 itemKind];
        v57 = [v55 committedValues];
        v58 = [(VSKeychainEditingContext *)v94 _queryForItemValues:v57 withItemKind:v56];

        [v58 setObject:objc_msgSend(v56 forKey:{"secItemClass"), v53}];
        v59 = [v55 changedValues];
        v60 = [(VSKeychainEditingContext *)v94 _queryForItemValues:v59 withItemKind:v56];

        v96 = 0;
        LODWORD(v59) = [v95 updateAttributes:v60 ofItemsMatchingQuery:v58 error:&v96];
        v61 = v96;
        if (v59)
        {
          v62 = [v55 primitiveValues];
          [v55 _setCommittedValues:v62 registeringUndo:1];

          [v55 setUpdated:0];
        }

        else
        {
          v63 = VSDefaultLogObject();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v123 = v61;
            _os_log_impl(&dword_23AB8E000, v63, OS_LOG_TYPE_DEFAULT, "VSKeychainEditingContext: Update error %@", buf, 0xCu);
          }

          if (!v61)
          {
            [MEMORY[0x277CBEAD8] raise:v86 format:@"The updateError parameter must not be nil."];
          }

          [(VSKeychainEditingContext *)v94 _populateErrors:v92 withError:v61 affectingItem:v55];
          v93 = 0;
        }
      }

      v51 = [v91 countByEnumeratingWithState:&v97 objects:v119 count:16];
    }

    while (v51);
  }

  if (v93)
  {
    v65 = v72;
    v64 = v73;
    [v72 postNotificationName:@"VSKeychainEditingContextDidSaveNotification" object:v94 userInfo:v73];
    v66 = v92;
    v67 = v95;
  }

  else
  {
    v66 = v92;
    v65 = v72;
    v64 = v73;
    v67 = v95;
    if (a3)
    {
      if ([v92 count] < 2)
      {
        *a3 = [v92 firstObject];
      }

      else
      {
        v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v68 setObject:v92 forKey:@"VSKeychainDetailedErrorsKey"];
        *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSKeychainErrorDomain" code:0 userInfo:v68];
      }
    }
  }

  return v93 & 1;
}

void __33__VSKeychainEditingContext_save___block_invoke(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Will undo deletion.", buf, 2u);
  }

  v3 = [*(a1 + 32) _queryForItemValues:*(a1 + 40) withItemKind:*(a1 + 48)];
  [v3 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC550]];
  v4 = [*(a1 + 48) secItemClass];
  [v3 setObject:v4 forKey:*MEMORY[0x277CDC228]];
  v5 = *(a1 + 56);
  v10 = 0;
  v6 = [v5 addItem:v3 error:&v10];
  v7 = v10;

  if (v6)
  {
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Undid deletion.", v9, 2u);
    }
  }

  else
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __33__VSKeychainEditingContext_save___block_invoke_cold_1();
    }
  }
}

void __33__VSKeychainEditingContext_save___block_invoke_158(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Will undo insertion.", buf, 2u);
  }

  v5 = [v3 _queryForItemValues:*(a1 + 32) withItemKind:*(a1 + 40)];

  v6 = [*(a1 + 40) secItemClass];
  [v5 setObject:v6 forKey:*MEMORY[0x277CDC228]];
  v7 = *(a1 + 48);
  v12 = 0;
  v8 = [v7 deleteItemsMatchingQuery:v5 error:&v12];
  v9 = v12;
  v10 = VSErrorLogObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v11)
    {
      __33__VSKeychainEditingContext_save___block_invoke_158_cold_2();
    }
  }

  else if (v11)
  {
    __33__VSKeychainEditingContext_save___block_invoke_158_cold_1();
  }
}

@end