@interface VSKeychainEditingContext
- (BOOL)save:(id *)save;
- (VSKeychainEditingContext)init;
- (VSKeychainStore)keychainStore;
- (id)_deleteQueryForItemValues:(id)values withItemKind:(id)kind;
- (id)_findOrCreateItemForCommittedValues:(id)values withItemKind:(id)kind;
- (id)_queryForItemValues:(id)values withItemKind:(id)kind;
- (id)_subsetOfRegisteredItemsWithKeyPath:(id)path;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (void)_populateErrors:(id)errors withError:(id)error affectingItem:(id)item;
- (void)_populateQuery:(__CFDictionary *)query usingPredicate:(id)predicate withItemKind:(id)kind;
- (void)_populateResult:(id)result forRequest:(id)request fromMatch:(id)match;
- (void)deleteItem:(id)item;
- (void)fulfillFault:(id)fault;
- (void)insertItem:(id)item;
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

- (void)_populateQuery:(__CFDictionary *)query usingPredicate:(id)predicate withItemKind:(id)kind
{
  v79 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  kindCopy = kind;
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

    v14 = predicateCopy;
    if ([v14 compoundPredicateType] != 1)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported compound predicate: %@", v14}];
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    subpredicates = [v14 subpredicates];
    v16 = [subpredicates countByEnumeratingWithState:&v73 objects:v78 count:16];
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
            objc_enumerationMutation(subpredicates);
          }

          [(VSKeychainEditingContext *)self _populateQuery:query usingPredicate:*(*(&v73 + 1) + 8 * i) withItemKind:kindCopy];
        }

        v17 = [subpredicates countByEnumeratingWithState:&v73 objects:v78 count:16];
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

    v24 = predicateCopy;
    leftExpression = [v24 leftExpression];
    rightExpression = [v24 rightExpression];
    expressionType = [leftExpression expressionType];
    expressionType2 = [rightExpression expressionType];
    v66 = rightExpression;
    if ((expressionType != 3 || (v29 = rightExpression, v30 = leftExpression, expressionType2)) && (expressionType || (v29 = leftExpression, v30 = rightExpression, expressionType2 != 3)))
    {
      v33 = *MEMORY[0x277CBE660];
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported expressions in comparison predicate: %@", v24}];
      v29 = 0;
    }

    else
    {
      v31 = leftExpression;
      v32 = rightExpression;
      if (v30)
      {
        goto LABEL_28;
      }

      v33 = *MEMORY[0x277CBE660];
    }

    [MEMORY[0x277CBEAD8] raise:v33 format:@"The keyPathExpressionOrNil parameter must not be nil."];
    v30 = 0;
LABEL_28:
    v36 = leftExpression;
    v37 = v30;
    if (!v29)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The constantExpressionOrNil parameter must not be nil."];
    }

    v38 = v29;
    keyPath = [v37 keyPath];
    if (!keyPath || ([kindCopy attributesByName], v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "objectForKey:", keyPath), v41 = objc_claimAutoreleasedReturnValue(), v40, !v41))
    {
      v42 = *MEMORY[0x277CBE660];
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unknown keypath %@ for item kind %@", keyPath, kindCopy}];
      [MEMORY[0x277CBEAD8] raise:v42 format:@"The attributeOrNil parameter must not be nil."];
      v41 = 0;
    }

    v65 = keyPath;
    v43 = v41;
    constantValue = [v38 constantValue];
    v68 = v43;
    attributeValueClassName = [v43 attributeValueClassName];
    NSClassFromString(attributeValueClassName);

    predicateOperatorType = [v24 predicateOperatorType];
    if (predicateOperatorType == 10)
    {
      v46 = v36;
      v52 = v36 == v37;
      v47 = v66;
      if (v52 && v66 == v38)
      {
        v53 = constantValue;
        if (![constantValue conformsToProtocol:&unk_284E09B08])
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unable to enumerate constant value: %@", constantValue}];
          v51 = v65;
          goto LABEL_60;
        }

        v61 = v37;
        v62 = v46;
        v63 = v24;
        v64 = predicateCopy;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v54 = constantValue;
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
        predicateCopy = v64;
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
      if (predicateOperatorType == 4)
      {
        v47 = v66;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unexpected value %@ for attribute %@", constantValue, v68}];
        }

        secItemAttributeKey = [v68 secItemAttributeKey];
        v49 = constantValue;
        if (CFDictionaryContainsKey(query, secItemAttributeKey))
        {
          Value = CFDictionaryGetValue(query, secItemAttributeKey);
          v51 = v65;
          if (!CFEqual(Value, v49))
          {
            CFRelease(v49);
            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Duplicative predicate for key path %@", v65}];
          }
        }

        else
        {
          CFDictionarySetValue(query, secItemAttributeKey, v49);
          v51 = v65;
        }

        CFRelease(v49);
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported operator type (%lu) in comparison predicate: %@", predicateOperatorType, v24}];
        v51 = v65;
        v47 = v66;
      }
    }

    v53 = constantValue;
LABEL_60:

    goto LABEL_61;
  }

  v34 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v35 = [predicateCopy isEqual:v34];

  if (predicateCopy && (v35 & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported predicate: %@", predicateCopy}];
  }

LABEL_61:
}

- (id)_findOrCreateItemForCommittedValues:(id)values withItemKind:(id)kind
{
  v27 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  kindCopy = kind;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  items = [(VSKeychainEditingContext *)self items];
  v9 = [items countByEnumeratingWithState:&v22 objects:v26 count:16];
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
        objc_enumerationMutation(items);
      }

      v13 = *(*(&v22 + 1) + 8 * v12);
      committedValues = [v13 committedValues];
      v15 = [committedValues isEqual:valuesCopy];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [items countByEnumeratingWithState:&v22 objects:v26 count:16];
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

  itemClassName = [kindCopy itemClassName];
  v18 = NSClassFromString(itemClassName);

  v16 = [[v18 alloc] initWithItemKind:kindCopy insertIntoEditingContext:0];
  [v16 setEditingContext:self];
  [v16 setHasFaultForData:1];
  items2 = [(VSKeychainEditingContext *)self items];
  [items2 addObject:v16];

  [v16 _setCommittedValues:valuesCopy registeringUndo:0];
  v20 = [valuesCopy mutableCopy];
  [v16 setPrimitiveValues:v20];

  if (!v16)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The itemOrNil parameter must not be nil."];
  }

LABEL_13:

  return v16;
}

- (void)_populateResult:(id)result forRequest:(id)request fromMatch:(id)match
{
  selfCopy = self;
  v32 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  requestCopy = request;
  matchCopy = match;
  predicate = [requestCopy predicate];
  v25 = requestCopy;
  itemKind = [requestCopy itemKind];
  forceUnwrapObject = [itemKind forceUnwrapObject];

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  properties = [forceUnwrapObject properties];
  v13 = [properties countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(properties);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        name = [v17 name];
        defaultValue = [v17 defaultValue];
        v20 = [matchCopy objectForKey:{objc_msgSend(v17, "secItemAttributeKey")}];
        v21 = v20;
        if (v20 || (v21 = defaultValue) != 0)
        {
          [v11 setObject:v21 forKey:name];
        }
      }

      v14 = [properties countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  v22 = [(VSKeychainEditingContext *)selfCopy _findOrCreateItemForCommittedValues:v11 withItemKind:forceUnwrapObject];
  if ([predicate evaluateWithObject:v22])
  {
    [resultCopy addObject:v22];
  }
}

- (id)_queryForItemValues:(id)values withItemKind:(id)kind
{
  v23 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  kindCopy = kind;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  properties = [kindCopy properties];
  v9 = [properties countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(properties);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        secItemAttributeKey = [v13 secItemAttributeKey];
        name = [v13 name];
        v16 = [valuesCopy objectForKey:name];
        if (v16)
        {
          [v7 setObject:v16 forKey:secItemAttributeKey];
        }
      }

      v10 = [properties countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_deleteQueryForItemValues:(id)values withItemKind:(id)kind
{
  v26[3] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  kindCopy = kind;
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
  v20 = kindCopy;
  properties = [kindCopy properties];
  v12 = [properties countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(properties);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        name = [v16 name];
        if ([v10 containsObject:name])
        {
          v18 = [valuesCopy objectForKey:name];
          if (v18)
          {
            [v7 setObject:v18 forKey:{objc_msgSend(v16, "secItemAttributeKey")}];
          }
        }
      }

      v13 = [properties countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  [v7 setObject:*MEMORY[0x277CDC148] forKey:*MEMORY[0x277CDC140]];

  return v7;
}

- (void)_populateErrors:(id)errors withError:(id)error affectingItem:(id)item
{
  itemCopy = item;
  errorCopy = error;
  errorsCopy = errors;
  userInfo = [errorCopy userInfo];
  v15 = [userInfo mutableCopy];

  [v15 setObject:itemCopy forKey:@"VSKeychainAffectedItemsKey"];
  v11 = MEMORY[0x277CCA9B8];
  domain = [errorCopy domain];
  code = [errorCopy code];

  v14 = [v11 errorWithDomain:domain code:code userInfo:v15];
  [errorsCopy addObject:v14];
}

- (void)fulfillFault:(id)fault
{
  faultCopy = fault;
  if (([faultCopy hasFaultForData] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Item must have a fault for its data."];
  }

  itemKind = [faultCopy itemKind];
  committedValues = [faultCopy committedValues];
  v7 = [(VSKeychainEditingContext *)self _queryForItemValues:committedValues withItemKind:itemKind];

  secItemClass = [itemKind secItemClass];
  [v7 setObject:secItemClass forKey:*MEMORY[0x277CDC228]];
  [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC558]];
  keychainStore = [(VSKeychainEditingContext *)self keychainStore];
  v19 = 0;
  v10 = [keychainStore findItemsMatchingQuery:v7 error:&v19];
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
        primitiveValues = [faultCopy primitiveValues];
        v15 = [v13 copy];
        [primitiveValues setObject:v15 forKey:@"data"];

        committedValues2 = [faultCopy committedValues];
        v17 = [v13 copy];

        [committedValues2 setObject:v17 forKey:@"data"];
        [faultCopy setHasFaultForData:0];
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

- (id)executeFetchRequest:(id)request error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  itemKind = [requestCopy itemKind];
  forceUnwrapObject = [itemKind forceUnwrapObject];

  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC228], [forceUnwrapObject secItemClass]);
  predicate = [requestCopy predicate];
  [(VSKeychainEditingContext *)self _populateQuery:Mutable usingPredicate:predicate withItemKind:forceUnwrapObject];
  v11 = *MEMORY[0x277CDC140];
  if (!CFDictionaryContainsKey(Mutable, *MEMORY[0x277CDC140]))
  {
    CFDictionarySetValue(Mutable, v11, *MEMORY[0x277CDC148]);
  }

  fetchLimit = [requestCopy fetchLimit];
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28]);
  keychainStore = [(VSKeychainEditingContext *)self keychainStore];
  v65 = 0;
  v13 = [keychainStore findItemsMatchingQuery:Mutable error:&v65];
  v14 = v65;

  if (v13)
  {
    v55 = requestCopy;
    v15 = v13;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_opt_class();
    v54 = v16;
    v50 = v15;
    v51 = v14;
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      v49 = forceUnwrapObject;
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
                requestCopy = v55;
                [v32 raise:v53 format:{@"Unexpectedly, matchingValue was %@, instead of NSDictionary.", v31}];

                v16 = v54;
              }

              [(VSKeychainEditingContext *)selfCopy _populateResult:v16 forRequest:requestCopy fromMatch:v28];
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

      forceUnwrapObject = v49;
      self = selfCopy;
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

        requestCopy = v55;
        [(VSKeychainEditingContext *)self _populateResult:v16 forRequest:v55 fromMatch:v15];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unexpected match result: %@", v15}];
      }
    }

    sortDescriptors = [requestCopy sortDescriptors];
    if (sortDescriptors)
    {
      [v16 sortUsingDescriptors:sortDescriptors];
    }

    v40 = [v16 count];
    if (fetchLimit && v40 > fetchLimit)
    {
      [v16 removeObjectsInRange:{fetchLimit, v40 - fetchLimit}];
    }

    if ([requestCopy includesDataValues])
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
      requestCopy = v55;
      v13 = v41;
      v14 = v51;
    }
  }

  else if (error)
  {
    v33 = v14;
    v16 = 0;
    *error = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)insertItem:(id)item
{
  itemCopy = item;
  if ([itemCopy hasChanges])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempting to insert an item that has changes."];
  }

  undoManager = [(VSKeychainEditingContext *)self undoManager];
  editingContext = [itemCopy editingContext];
  v6 = editingContext;
  if (editingContext)
  {
    if (editingContext != self)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Item already has another context."];
    }
  }

  else
  {
    [itemCopy setEditingContext:self];
    v7 = [undoManager prepareWithInvocationTarget:itemCopy];
    [v7 setEditingContext:0];
  }

  items = [(VSKeychainEditingContext *)self items];
  [items addObject:itemCopy];
  v9 = [undoManager prepareWithInvocationTarget:items];
  [v9 removeObject:itemCopy];

  [itemCopy setInserted:1];
}

- (void)deleteItem:(id)item
{
  itemCopy = item;
  editingContext = [itemCopy editingContext];
  v5 = editingContext;
  if (editingContext)
  {
    if (editingContext != self)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Item does not belong to this context."];
    }

    [itemCopy setDeleted:1];
  }
}

- (id)_subsetOfRegisteredItemsWithKeyPath:(id)path
{
  v4 = [MEMORY[0x277CCA9C0] expressionForKeyPath:path];
  v5 = [MEMORY[0x277CCA9C0] expressionForConstantValue:MEMORY[0x277CBEC38]];
  v6 = [MEMORY[0x277CCA918] predicateWithLeftExpression:v4 rightExpression:v5 modifier:0 type:4 options:0];
  items = [(VSKeychainEditingContext *)self items];
  v8 = [items filteredSetUsingPredicate:v6];

  return v8;
}

- (VSKeychainStore)keychainStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_keychainStore;
  if (!v3)
  {
    v3 = objc_alloc_init(VSKeychainStore);
    objc_storeStrong(&selfCopy->_keychainStore, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (BOOL)save:(id *)save
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
  deletedItems = [(VSKeychainEditingContext *)self deletedItems];
  v7 = [deletedItems copy];

  updatedItems = [(VSKeychainEditingContext *)self updatedItems];
  v9 = [updatedItems copy];

  insertedItems = [(VSKeychainEditingContext *)self insertedItems];
  v11 = [insertedItems copy];

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v77 = v11;
  [v12 setObject:v11 forKey:@"VSInsertedKeychainItemsKey"];
  v71 = v9;
  [v12 setObject:v9 forKey:@"VSUpdatedKeychainItemsKey"];
  [v12 setObject:v7 forKey:@"VSDeletedKeychainItemsKey"];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v73 = v12;
  [defaultCenter postNotificationName:@"VSKeychainEditingContextWillSaveNotification" object:self userInfo:v12];
  undoManager = [(VSKeychainEditingContext *)self undoManager];
  keychainStore = [(VSKeychainEditingContext *)self keychainStore];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v7;
  v89 = [obj countByEnumeratingWithState:&v115 objects:v121 count:16];
  v92 = v5;
  selfCopy = self;
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
        itemKind = [v14 itemKind];
        committedValues = [v14 committedValues];
        v17 = [(VSKeychainEditingContext *)self _deleteQueryForItemValues:committedValues withItemKind:itemKind];
        [v17 setObject:objc_msgSend(itemKind forKey:{"secItemClass"), v84}];
        v114 = 0;
        selfCopy2 = self;
        v19 = [keychainStore deleteItemsMatchingQuery:v17 error:&v114];
        v20 = v114;
        if (v19)
        {
          undoManager2 = [(VSKeychainEditingContext *)selfCopy2 undoManager];
          v110[0] = MEMORY[0x277D85DD0];
          v110[1] = 3221225472;
          v110[2] = __33__VSKeychainEditingContext_save___block_invoke;
          v110[3] = &unk_278B753E8;
          v110[4] = selfCopy2;
          v111 = committedValues;
          v112 = itemKind;
          v113 = keychainStore;
          [undoManager2 registerUndoWithTarget:selfCopy2 handler:v110];

          [v14 setDeleted:0];
          items = [(VSKeychainEditingContext *)selfCopy2 items];
          v23 = [undoManager prepareWithInvocationTarget:items];
          [v23 addObject:v14];

          [items removeObject:v14];
          v24 = [undoManager prepareWithInvocationTarget:v14];
          [v24 setEditingContext:selfCopy2];

          v5 = v92;
          [v14 setEditingContext:0];

          self = selfCopy2;
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

          self = selfCopy;
          [(VSKeychainEditingContext *)selfCopy _populateErrors:v5 withError:v20 affectingItem:v14];
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
    v27 = keychainStore;
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
        itemKind2 = [v29 itemKind];
        primitiveValues = [v29 primitiveValues];
        v32 = [(VSKeychainEditingContext *)self _queryForItemValues:primitiveValues withItemKind:itemKind2];

        [v32 setObject:MEMORY[0x277CBEC38] forKey:v88];
        [v32 setObject:objc_msgSend(itemKind2 forKey:{"secItemClass"), v85}];
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
            primitiveValues2 = [v29 primitiveValues];
            itemKind3 = [v29 itemKind];
            attributesBySecItemAttributeKey = [itemKind3 attributesBySecItemAttributeKey];
            v39 = [attributesBySecItemAttributeKey objectForKey:v78];
            name = [v39 name];

            if (name)
            {
              v41 = name;
              v42 = [v33 objectForKey:v78];
              if (v42)
              {
                primitiveValues3 = [v29 primitiveValues];
                [primitiveValues3 setObject:v42 forKey:v41];
              }
            }

            undoManager3 = [(VSKeychainEditingContext *)selfCopy undoManager];
            v101[0] = MEMORY[0x277D85DD0];
            v101[1] = 3221225472;
            v101[2] = __33__VSKeychainEditingContext_save___block_invoke_158;
            v101[3] = &unk_278B75410;
            v102 = primitiveValues2;
            v103 = itemKind2;
            v27 = keychainStore;
            v104 = keychainStore;
            v45 = primitiveValues2;
            [undoManager3 registerUndoWithTarget:selfCopy handler:v101];

            [v29 _setCommittedValues:v45 registeringUndo:1];
            [v29 setInserted:0];

            self = selfCopy;
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
        itemKind4 = [v55 itemKind];
        committedValues2 = [v55 committedValues];
        v58 = [(VSKeychainEditingContext *)selfCopy _queryForItemValues:committedValues2 withItemKind:itemKind4];

        [v58 setObject:objc_msgSend(itemKind4 forKey:{"secItemClass"), v53}];
        changedValues = [v55 changedValues];
        v60 = [(VSKeychainEditingContext *)selfCopy _queryForItemValues:changedValues withItemKind:itemKind4];

        v96 = 0;
        LODWORD(changedValues) = [keychainStore updateAttributes:v60 ofItemsMatchingQuery:v58 error:&v96];
        v61 = v96;
        if (changedValues)
        {
          primitiveValues4 = [v55 primitiveValues];
          [v55 _setCommittedValues:primitiveValues4 registeringUndo:1];

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

          [(VSKeychainEditingContext *)selfCopy _populateErrors:v92 withError:v61 affectingItem:v55];
          v93 = 0;
        }
      }

      v51 = [v91 countByEnumeratingWithState:&v97 objects:v119 count:16];
    }

    while (v51);
  }

  if (v93)
  {
    v65 = defaultCenter;
    v64 = v73;
    [defaultCenter postNotificationName:@"VSKeychainEditingContextDidSaveNotification" object:selfCopy userInfo:v73];
    v66 = v92;
    v67 = keychainStore;
  }

  else
  {
    v66 = v92;
    v65 = defaultCenter;
    v64 = v73;
    v67 = keychainStore;
    if (save)
    {
      if ([v92 count] < 2)
      {
        *save = [v92 firstObject];
      }

      else
      {
        v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v68 setObject:v92 forKey:@"VSKeychainDetailedErrorsKey"];
        *save = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSKeychainErrorDomain" code:0 userInfo:v68];
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