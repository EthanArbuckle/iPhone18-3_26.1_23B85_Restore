@interface FPPreflightUserInteraction
+ (id)evaluationObjectsForAction:(id)action sourceItems:(id)items destinationItem:(id)item domainUserInfo:(id)info sourceItemKeysAllowList:(id)list destinationItemKeysAllowList:(id)allowList;
+ (id)gatherErrorsForInteractions:(id)interactions evaluationObjects:(id)objects suppressionDelegate:(id)delegate;
+ (id)interactionFromDictionary:(id)dictionary localizationLookup:(id)lookup providerIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier;
+ (id)interactionsForArray:(id)array localizationLookup:(id)lookup providerIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier;
+ (id)interactionsForBundle:(id)bundle providerIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier;
+ (id)interactionsForProviderItem:(id)item error:(id *)error;
+ (id)userInteractionErrorsInInfoPlistDict:(id)dict forAction:(id)action bundleID:(id)d hierarchyServicer:(id)servicer sourceNSFPItems:(id)items destinationNSFPItem:(id)item localizationLookup:(id)lookup provider:(id)self0 domain:(id)self1 extensionCapabilities:(unint64_t)self2 useFPFS:(BOOL)self3;
+ (void)propagateConfigurationKeysDownInteractionTreeWithObject:(id)object key:(id)key value:(id)value;
- (id)_evaluateWithObjectsByName:(id)name sourceItems:(id)items suppressionDelegate:(id)delegate errorIndex:(unint64_t *)index;
- (id)description;
- (id)evaluateWithObjectsByName:(id)name suppressionDelegate:(id)delegate;
@end

@implementation FPPreflightUserInteraction

+ (id)interactionFromDictionary:(id)dictionary localizationLookup:(id)lookup providerIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier
{
  dictionaryCopy = dictionary;
  lookupCopy = lookup;
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
    goto LABEL_34;
  }

  v13 = [dictionaryCopy objectForKey:@"ActivationRule"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [dictionaryCopy objectForKey:@"SuppressionIdentifier"];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = fp_current_or_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          +[FPPreflightUserInteraction interactionFromDictionary:localizationLookup:providerIdentifier:domainIdentifier:];
        }

        v16 = 0;
        goto LABEL_32;
      }

      v15 = [v14 length] != 0;
    }

    else
    {
      v15 = 0;
    }

    v17 = [dictionaryCopy objectForKey:@"HelpURL"];
    if (v17)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = fp_current_or_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          +[FPPreflightUserInteraction interactionFromDictionary:localizationLookup:providerIdentifier:domainIdentifier:];
        }

        v16 = 0;
        goto LABEL_31;
      }

      v18 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v17 encodingInvalidCharacters:0];
      if (!v18)
      {

        v17 = 0;
      }
    }

    v19 = [dictionaryCopy objectForKey:@"Alert"];
    v28 = [FPPreflightUserInteractionAlert alertFromDictionary:v19 localizationLookup:lookupCopy];
    v20 = [dictionaryCopy objectForKey:@"SubInteractions"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v20 = 0;
    }

    v27 = v19;
    if (v28 | v20)
    {
      if (![v13 containsString:@"%"])
      {
        v23 = objc_opt_new();
        [v23 setProviderIdentifier:identifierCopy];
        [v23 setDomainIdentifier:domainIdentifierCopy];
        [v23 setAlert:v28];
        [v23 setHasSuppressionIdentifier:v15];
        [v23 setHelpURL:v17];
        [v23 setUserInteractionIdentifier:v14];
        v26 = [MEMORY[0x1E696AE18] predicateWithFormat:v13 argumentArray:0];
        [v23 setPredicate:v26];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __111__FPPreflightUserInteraction_interactionFromDictionary_localizationLookup_providerIdentifier_domainIdentifier___block_invoke;
        v29[3] = &unk_1E793BE20;
        v30 = v14;
        v31 = v17;
        v32 = lookupCopy;
        v33 = identifierCopy;
        v34 = domainIdentifierCopy;
        v24 = [v20 fp_map:v29];
        [v23 setSubInteractions:v24];

        v21 = v23;
        v16 = v21;
        goto LABEL_30;
      }

      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[FPPreflightUserInteraction interactionFromDictionary:localizationLookup:providerIdentifier:domainIdentifier:];
      }
    }

    else
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        +[FPPreflightUserInteraction interactionFromDictionary:localizationLookup:providerIdentifier:domainIdentifier:];
      }
    }

    v16 = 0;
LABEL_30:

    v22 = v27;
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  v16 = 0;
LABEL_33:

LABEL_34:

  return v16;
}

id __111__FPPreflightUserInteraction_interactionFromDictionary_localizationLookup_providerIdentifier_domainIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[4] || a1[5])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v3];
    [FPPreflightUserInteraction propagateConfigurationKeysDownInteractionTreeWithObject:v5 key:@"SuppressionIdentifier" value:a1[4]];
    [FPPreflightUserInteraction propagateConfigurationKeysDownInteractionTreeWithObject:v5 key:@"HelpURL" value:a1[5]];
  }

  else
  {
    v5 = v3;
  }

  v6 = [FPPreflightUserInteraction interactionFromDictionary:v5 localizationLookup:a1[6] providerIdentifier:a1[7] domainIdentifier:a1[8]];

  return v6;
}

+ (void)propagateConfigurationKeysDownInteractionTreeWithObject:(id)object key:(id)key value:(id)value
{
  objectCopy = object;
  keyCopy = key;
  valueCopy = value;
  v9 = [objectCopy objectForKey:keyCopy];

  if (!v9)
  {
    [objectCopy setValue:valueCopy forKey:keyCopy];
  }
}

+ (id)interactionsForBundle:(id)bundle providerIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier
{
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  bundleCopy = bundle;
  v11 = [bundleCopy objectForInfoDictionaryKey:@"NSExtension"];
  v12 = objc_opt_new();
  [v12 setTableNames:&unk_1F1FC9BC0];
  [v12 setBundle:bundleCopy];

  v13 = [v11 objectForKeyedSubscript:@"NSFileProviderUserInteractions"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [self interactionsForArray:v13 localizationLookup:v12 providerIdentifier:identifierCopy domainIdentifier:domainIdentifierCopy];
  }

  else
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[FPPreflightUserInteraction interactionsForBundle:providerIdentifier:domainIdentifier:];
    }

    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

+ (id)interactionsForArray:(id)array localizationLookup:(id)lookup providerIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier
{
  lookupCopy = lookup;
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __106__FPPreflightUserInteraction_interactionsForArray_localizationLookup_providerIdentifier_domainIdentifier___block_invoke;
  v17[3] = &unk_1E793BE48;
  v18 = lookupCopy;
  v19 = identifierCopy;
  v20 = domainIdentifierCopy;
  v12 = domainIdentifierCopy;
  v13 = identifierCopy;
  v14 = lookupCopy;
  v15 = [array fp_map:v17];

  return v15;
}

id __106__FPPreflightUserInteraction_interactionsForArray_localizationLookup_providerIdentifier_domainIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [FPPreflightUserInteraction interactionFromDictionary:v3 localizationLookup:a1[4] providerIdentifier:a1[5] domainIdentifier:a1[6]];
  }

  else
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __106__FPPreflightUserInteraction_interactionsForArray_localizationLookup_providerIdentifier_domainIdentifier___block_invoke_cold_1();
    }

    v4 = 0;
  }

  return v4;
}

- (id)evaluateWithObjectsByName:(id)name suppressionDelegate:(id)delegate
{
  v11 = 0;
  delegateCopy = delegate;
  v7 = [name mutableCopy];
  v8 = [v7 objectForKey:@"sourceItems"];
  [v7 removeObjectForKey:@"sourceItems"];
  v9 = [(FPPreflightUserInteraction *)self _evaluateWithObjectsByName:v7 sourceItems:v8 suppressionDelegate:delegateCopy errorIndex:&v11];

  return v9;
}

- (id)_evaluateWithObjectsByName:(id)name sourceItems:(id)items suppressionDelegate:(id)delegate errorIndex:(unint64_t *)index
{
  v102 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  itemsCopy = items;
  delegateCopy = delegate;
  indexCopy = index;
  ++*index;
  v83 = objc_opt_new();
  v80 = nameCopy;
  v10 = [nameCopy mutableCopy];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
  [v10 setObject:v11 forKeyedSubscript:@"sourceItemsCount"];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v12 = itemsCopy;
  v13 = 0;
  v14 = [v12 countByEnumeratingWithState:&v95 objects:v101 count:16];
  if (v14)
  {
    v15 = *v96;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v96 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v95 + 1) + 8 * i);
        [v10 setObject:v17 forKeyedSubscript:@"sourceItem"];
        predicate = [(FPPreflightUserInteraction *)self predicate];
        v19 = [predicate evaluateWithObject:v10];

        if (v19)
        {
          [v83 addObject:v17];
          v13 = 1;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v95 objects:v101 count:16];
    }

    while (v14);
  }

  if ([v12 count])
  {

    if (v13)
    {
LABEL_12:
      v20 = objc_opt_new();
      subInteractions = [(FPPreflightUserInteraction *)self subInteractions];
      v22 = [subInteractions count];

      if (v22)
      {
        subInteractions2 = [(FPPreflightUserInteraction *)self subInteractions];
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __100__FPPreflightUserInteraction__evaluateWithObjectsByName_sourceItems_suppressionDelegate_errorIndex___block_invoke;
        v89[3] = &unk_1E793BE70;
        v90 = v80;
        v91 = v83;
        v92 = delegateCopy;
        v94 = indexCopy;
        v93 = v20;
        [subInteractions2 enumerateObjectsUsingBlock:v89];
      }

      alert = [(FPPreflightUserInteraction *)self alert];
      if (alert)
      {
        v79 = [v80 mutableCopy];
        if ([v83 count])
        {
          firstObject = [v83 firstObject];
          [v79 setObject:firstObject forKeyedSubscript:@"firstMatchingItem"];

          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v83, "count")}];
          [v79 setObject:v26 forKeyedSubscript:@"matchingItemsCount"];

          if ([v83 count] >= 2)
          {
            v27 = [v83 objectAtIndex:1];
            [v79 setObject:v27 forKeyedSubscript:@"secondMatchingItem"];

            v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v83, "count") - 1}];
            [v79 setObject:v28 forKeyedSubscript:@"matchingItemsCountMinusOne"];

            if ([v83 count] >= 3)
            {
              v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v83, "count") - 2}];
              [v79 setObject:v29 forKeyedSubscript:@"matchingItemsCountMinusTwo"];
            }
          }
        }

        cancelCaptionFormat = [alert cancelCaptionFormat];
        v88 = 0;
        v77 = [cancelCaptionFormat evaluateWithValuesByName:v79 error:&v88];
        v31 = v88;

        if (!v77)
        {
          if (v31)
          {
            v32 = fp_current_or_default_log();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              [FPPreflightUserInteraction _evaluateWithObjectsByName:v31 sourceItems:? suppressionDelegate:? errorIndex:?];
            }
          }

          v77 = FPLocalizedErrorStringForKey(@"Preflight-Cancel");
        }

        alert2 = [(FPPreflightUserInteraction *)self alert];
        enableContinue = [alert2 enableContinue];

        if (enableContinue)
        {

          continueCaptionFormat = [alert continueCaptionFormat];
          v87 = 0;
          v36 = [continueCaptionFormat evaluateWithValuesByName:v79 error:&v87];
          v31 = v87;

          if (!v36)
          {
            if (v31)
            {
              v37 = fp_current_or_default_log();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                [FPPreflightUserInteraction _evaluateWithObjectsByName:v31 sourceItems:? suppressionDelegate:? errorIndex:?];
              }
            }

            v36 = FPLocalizedErrorStringForKey(@"Preflight-Continue");
          }

          v100[0] = v77;
          v100[1] = v36;
          v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
        }

        else
        {
          v99 = v77;
          v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
        }

        hasSuppressionIdentifier = [(FPPreflightUserInteraction *)self hasSuppressionIdentifier];
        if (delegateCopy)
        {
          v43 = hasSuppressionIdentifier;
        }

        else
        {
          v43 = 0;
        }

        v44 = ![(FPPreflightUserInteraction *)self hasSuppressionIdentifier];
        if (delegateCopy)
        {
          LOBYTE(v44) = 1;
        }

        if ((v44 & 1) == 0)
        {
          v45 = fp_current_or_default_log();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            [FPPreflightUserInteraction _evaluateWithObjectsByName:sourceItems:suppressionDelegate:errorIndex:];
          }
        }

        v46 = objc_opt_new();

        titleFormat = [alert titleFormat];
        v86 = 0;
        v48 = [titleFormat evaluateWithValuesByName:v79 error:&v86];
        v49 = v86;
        v50 = *MEMORY[0x1E696A578];
        [v46 setObject:v48 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v51 = [v46 objectForKeyedSubscript:v50];
        if (v51)
        {
          v52 = 1;
        }

        else
        {
          v52 = v49 == 0;
        }

        v53 = !v52;

        if (v53)
        {
          v54 = fp_current_or_default_log();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            [FPPreflightUserInteraction _evaluateWithObjectsByName:v49 sourceItems:? suppressionDelegate:? errorIndex:?];
          }
        }

        subtitleFormat = [alert subtitleFormat];
        v85 = 0;
        v56 = [subtitleFormat evaluateWithValuesByName:v79 error:&v85];
        v57 = v85;
        v58 = *MEMORY[0x1E696A598];
        [v46 setObject:v56 forKeyedSubscript:*MEMORY[0x1E696A598]];

        v59 = [v46 objectForKeyedSubscript:v58];
        if (v59)
        {
          v60 = 1;
        }

        else
        {
          v60 = v57 == 0;
        }

        v61 = !v60;

        if (v61)
        {
          v62 = fp_current_or_default_log();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            [FPPreflightUserInteraction _evaluateWithObjectsByName:v57 sourceItems:? suppressionDelegate:? errorIndex:?];
          }
        }

        [v46 setObject:v38 forKeyedSubscript:*MEMORY[0x1E696A590]];
        v63 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(alert, "continueIsDestructive")}];
        [v46 setObject:v63 forKeyedSubscript:@"NSFileProviderDestructiveRecoveryKey"];

        providerIdentifier = [(FPPreflightUserInteraction *)self providerIdentifier];
        [v46 setObject:providerIdentifier forKeyedSubscript:@"ProviderIdentifier"];

        v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*indexCopy];
        [v46 setObject:v65 forKeyedSubscript:@"PreflightIndex"];

        v66 = [MEMORY[0x1E696AD98] numberWithBool:v43];
        [v46 setObject:v66 forKeyedSubscript:@"FPCanBeSuppressed"];

        helpURL = [(FPPreflightUserInteraction *)self helpURL];
        [v46 setObject:helpURL forKeyedSubscript:@"FPHelpURL"];

        if ([(FPPreflightUserInteraction *)self hasSuppressionIdentifier])
        {
          v68 = MEMORY[0x1E696AD98];
          userInteractionIdentifier = [(FPPreflightUserInteraction *)self userInteractionIdentifier];
          v70 = [v68 numberWithBool:{objc_msgSend(delegateCopy, "isInteractionSuppressedForIdentifier:", userInteractionIdentifier)}];
          [v46 setObject:v70 forKeyedSubscript:@"FPIsSuppressed"];

          userInteractionIdentifier2 = [(FPPreflightUserInteraction *)self userInteractionIdentifier];
          [v46 setObject:userInteractionIdentifier2 forKeyedSubscript:@"FPUserInteractionIdentifier"];
        }

        domainIdentifier = [(FPPreflightUserInteraction *)self domainIdentifier];
        [v46 setObject:domainIdentifier forKeyedSubscript:@"DomainIdentifier"];

        v73 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderInternalErrorDomain" code:13 userInfo:v46];
        [v20 addObject:v73];
        v74 = v20;
      }

      goto LABEL_71;
    }
  }

  else
  {
    predicate2 = [(FPPreflightUserInteraction *)self predicate];
    v40 = [predicate2 evaluateWithObject:v10];

    if (v40)
    {
      goto LABEL_12;
    }
  }

  v41 = fp_current_or_default_log();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    [FPPreflightUserInteraction _evaluateWithObjectsByName:v41 sourceItems:? suppressionDelegate:? errorIndex:?];
  }

  v20 = MEMORY[0x1E695E0F0];
LABEL_71:

  v75 = *MEMORY[0x1E69E9840];

  return v20;
}

void __100__FPPreflightUserInteraction__evaluateWithObjectsByName_sourceItems_suppressionDelegate_errorIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _evaluateWithObjectsByName:*(a1 + 32) sourceItems:*(a1 + 40) suppressionDelegate:*(a1 + 48) errorIndex:*(a1 + 64)];
  [*(a1 + 56) addObjectsFromArray:v3];
}

+ (id)evaluationObjectsForAction:(id)action sourceItems:(id)items destinationItem:(id)item domainUserInfo:(id)info sourceItemKeysAllowList:(id)list destinationItemKeysAllowList:(id)allowList
{
  itemsCopy = items;
  itemCopy = item;
  listCopy = list;
  allowListCopy = allowList;
  v17 = MEMORY[0x1E695DF90];
  infoCopy = info;
  actionCopy = action;
  dictionary = [v17 dictionary];
  [dictionary setObject:actionCopy forKeyedSubscript:@"action"];

  if (itemsCopy)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __153__FPPreflightUserInteraction_evaluationObjectsForAction_sourceItems_destinationItem_domainUserInfo_sourceItemKeysAllowList_destinationItemKeysAllowList___block_invoke;
    v24[3] = &unk_1E793BE98;
    v17 = &v25;
    v25 = listCopy;
    v21 = [itemsCopy fp_map:v24];
    [dictionary setObject:v21 forKeyedSubscript:@"sourceItems"];

    if (itemCopy)
    {
LABEL_3:
      v22 = FPExtensionMatchingDictionaryForItem(itemCopy, allowListCopy);
      [dictionary setObject:v22 forKeyedSubscript:@"destinationItem"];

      goto LABEL_6;
    }
  }

  else
  {
    [dictionary setObject:0 forKeyedSubscript:@"sourceItems"];
    if (itemCopy)
    {
      goto LABEL_3;
    }
  }

  [dictionary setObject:0 forKeyedSubscript:@"destinationItem"];
LABEL_6:
  [dictionary setObject:infoCopy forKeyedSubscript:@"domainUserInfo"];

  if (itemsCopy)
  {
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  predicate = [(FPPreflightUserInteraction *)self predicate];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, predicate];

  return v6;
}

+ (id)interactionsForProviderItem:(id)item error:(id *)error
{
  itemCopy = item;
  providerID = [itemCopy providerID];
  v7 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:providerID error:error];
  v8 = v7;
  if (v7)
  {
    infoDictionary = [v7 infoDictionary];
    v10 = [infoDictionary objectForKey:@"NSExtension" ofClass:objc_opt_class()];

    v11 = [v10 objectForKey:@"NSFileProviderUserInteractions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_opt_new();
      v13 = [v8 URL];
      v14 = CFBundleCreate(0, v13);
      [v12 setCfBundle:v14];

      [v12 setTableNames:&unk_1F1FC9BD8];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __77__FPPreflightUserInteraction_Convenience__interactionsForProviderItem_error___block_invoke;
      v18[3] = &unk_1E793BE48;
      v19 = v12;
      v20 = providerID;
      v21 = itemCopy;
      v15 = v12;
      v16 = [v11 fp_map:v18];
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id __77__FPPreflightUserInteraction_Convenience__interactionsForProviderItem_error___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  v6 = [v4 providerDomainID];
  v7 = [FPPreflightUserInteraction interactionFromDictionary:v5 localizationLookup:v2 providerIdentifier:v3 domainIdentifier:v6];

  return v7;
}

+ (id)gatherErrorsForInteractions:(id)interactions evaluationObjects:(id)objects suppressionDelegate:(id)delegate
{
  v24 = *MEMORY[0x1E69E9840];
  interactionsCopy = interactions;
  objectsCopy = objects;
  delegateCopy = delegate;
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = interactionsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) evaluateWithObjectsByName:objectsCopy suppressionDelegate:{delegateCopy, v19}];
        [array addObjectsFromArray:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)userInteractionErrorsInInfoPlistDict:(id)dict forAction:(id)action bundleID:(id)d hierarchyServicer:(id)servicer sourceNSFPItems:(id)items destinationNSFPItem:(id)item localizationLookup:(id)lookup provider:(id)self0 domain:(id)self1 extensionCapabilities:(unint64_t)self2 useFPFS:(BOOL)self3
{
  v58 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  actionCopy = action;
  dCopy = d;
  itemsCopy = items;
  itemCopy = item;
  lookupCopy = lookup;
  providerCopy = provider;
  domainCopy = domain;
  v18 = objc_opt_new();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v19 = itemsCopy;
  v20 = [(FPItem *)v19 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v53;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v53 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [[FPItem alloc] initWithVendorItem:*(*(&v52 + 1) + 8 * i) provider:providerCopy domain:domainCopy spotlightDomainIdentifier:0 extensionCapabilities:capabilities useFPFS:s];
        if (!v24)
        {
          v27 = fp_current_or_default_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            +[FPPreflightUserInteraction(CloudDocs) userInteractionErrorsInInfoPlistDict:forAction:bundleID:hierarchyServicer:sourceNSFPItems:destinationNSFPItem:localizationLookup:provider:domain:extensionCapabilities:useFPFS:];
          }

          array = MEMORY[0x1E695E0F0];
          v26 = v19;
          goto LABEL_23;
        }

        v25 = v24;
        [v18 addObject:v24];
      }

      v21 = [(FPItem *)v19 countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  if (itemCopy)
  {
    v26 = [[FPItem alloc] initWithVendorItem:itemCopy provider:providerCopy domain:domainCopy spotlightDomainIdentifier:0 extensionCapabilities:capabilities useFPFS:s];
  }

  else
  {
    v26 = 0;
  }

  v29 = [dictCopy objectForKeyedSubscript:{@"NSFileProviderUserInteractions", self}];
  v30 = [v40 interactionsForArray:v29 localizationLookup:lookupCopy providerIdentifier:dCopy domainIdentifier:0];

  v31 = [FPPreflightUserInteraction evaluationObjectsForAction:actionCopy sourceItems:v18 destinationItem:v26 domainUserInfo:0 sourceItemKeysAllowList:0 destinationItemKeysAllowList:0];
  array = [MEMORY[0x1E695DF70] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v27 = v30;
  v32 = [v27 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(v27);
        }

        v36 = [*(*(&v48 + 1) + 8 * j) evaluateWithObjectsByName:v31 suppressionDelegate:0];
        [array addObjectsFromArray:v36];
      }

      v33 = [v27 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v33);
  }

LABEL_23:
  v37 = *MEMORY[0x1E69E9840];

  return array;
}

+ (void)interactionFromDictionary:localizationLookup:providerIdentifier:domainIdentifier:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)interactionFromDictionary:localizationLookup:providerIdentifier:domainIdentifier:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1AAAE1000, v1, OS_LOG_TYPE_ERROR, "[ERROR] Can't parse activation rule: %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)interactionFromDictionary:localizationLookup:providerIdentifier:domainIdentifier:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)interactionsForBundle:providerIdentifier:domainIdentifier:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __106__FPPreflightUserInteraction_interactionsForArray_localizationLookup_providerIdentifier_domainIdentifier___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_evaluateWithObjectsByName:(void *)a1 sourceItems:(uint64_t)a2 suppressionDelegate:(uint8_t *)buf errorIndex:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] Can't evaluate activation rule: %@: %@", buf, 0x16u);
}

- (void)_evaluateWithObjectsByName:(void *)a1 sourceItems:(NSObject *)a2 suppressionDelegate:errorIndex:.cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 predicate];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] No match for predicate %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_evaluateWithObjectsByName:(void *)a1 sourceItems:suppressionDelegate:errorIndex:.cold.3(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] Failed to evaluate alert cancel caption format. Error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_evaluateWithObjectsByName:(void *)a1 sourceItems:suppressionDelegate:errorIndex:.cold.4(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] Failed to evaluate alert continue caption format. Error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_evaluateWithObjectsByName:(void *)a1 sourceItems:suppressionDelegate:errorIndex:.cold.6(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] Failed to evaluate alert title format. Error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_evaluateWithObjectsByName:(void *)a1 sourceItems:suppressionDelegate:errorIndex:.cold.7(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1AAAE1000, v2, v3, "[ERROR] Failed to evaluate alert subtitle format. Error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end