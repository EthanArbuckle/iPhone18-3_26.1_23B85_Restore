@interface AutocompleteItemManager
- (AutocompleteItemManager)init;
- (BOOL)canMoveItem:(id)item toSection:(id)section withSortedSections:(id)sections wrappedItems:(id)items;
- (BOOL)useClientRankingScore;
- (BOOL)usePriority;
- (double)clientRankingScoreForItem:(id)item withSuggestionEntry:(id)entry hasContributionsFromDiscreteFeaturesResult:(BOOL *)result;
- (double)clientRankingScoreOfFirstItemInSection:(id)section wrappedItems:(id)items;
- (id)defaultSectionsWithCompletionSections:(id)sections;
- (id)excludingRuleWithClientOnlyAutocompleteType:(int)type;
- (id)excludingRulesWithTypes:(id)types;
- (id)filterDuplicateContactsFromServerResultUsingItems:(id)items;
- (id)includingRulesWithTypes:(id)types;
- (id)indexOfSectionWithItem:(id)item;
- (id)ruleWithClientOnlyAutocompleteType:(int)type;
- (id)sectionsWithWrappedItems:(id)items;
- (id)wrappedItems:(id)items;
- (void)_gatherItemsWithShouldCancel:(id)cancel completion:(id)completion;
- (void)computeClientRankingScoresForResolvedItemsIfNeeded:(id)needed completion:(id)completion;
- (void)logClientRankingScore:(double)score forItem:(id)item withSignalPack:(id)pack serverScore:(id)serverScore;
- (void)logSortedItemsWithSections:(id)sections;
- (void)setCompletionSections:(id)sections;
- (void)setPriorityFunction:(id)function;
- (void)sortWrappedItems:(id)items;
@end

@implementation AutocompleteItemManager

- (id)excludingRuleWithClientOnlyAutocompleteType:(int)type
{
  v3 = 0;
  if (type <= 5)
  {
    if (type > 2)
    {
      if (type == 3)
      {
        v4 = 5;
        v5 = 5;
      }

      else if (type == 4)
      {
        v4 = 7;
        v5 = 12;
      }

      else
      {
        v4 = 7;
        v5 = 10;
      }

      goto LABEL_23;
    }

    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_24;
      }

      v4 = 5;
      v5 = 6;
      goto LABEL_23;
    }

    v6 = 6;
LABEL_17:
    v3 = [AutocompleteSectionRule ruleExcludingSourceType:v6];
    goto LABEL_24;
  }

  if (type > 7)
  {
    switch(type)
    {
      case 8:
        v4 = 9;
        v5 = 19;
        break;
      case 12:
        v4 = 9;
        v5 = 20;
        break;
      case 13:
        v4 = 3;
        v5 = 2;
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (type != 6)
  {
    v6 = 4;
    goto LABEL_17;
  }

  v4 = 7;
  v5 = 11;
LABEL_23:
  v3 = [AutocompleteSectionRule ruleExcludingSourceType:v4 sourceSubtype:v5];
LABEL_24:

  return v3;
}

- (id)ruleWithClientOnlyAutocompleteType:(int)type
{
  v3 = 0;
  if (type <= 5)
  {
    if (type > 2)
    {
      if (type == 3)
      {
        v4 = 5;
        v5 = 5;
      }

      else if (type == 4)
      {
        v4 = 7;
        v5 = 12;
      }

      else
      {
        v4 = 7;
        v5 = 10;
      }

      goto LABEL_23;
    }

    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_24;
      }

      v4 = 5;
      v5 = 6;
      goto LABEL_23;
    }

    v6 = 6;
LABEL_17:
    v3 = [AutocompleteSectionRule ruleWithSourceType:v6];
    goto LABEL_24;
  }

  if (type > 7)
  {
    switch(type)
    {
      case 8:
        v4 = 9;
        v5 = 19;
        break;
      case 12:
        v4 = 9;
        v5 = 20;
        break;
      case 13:
        v4 = 3;
        v5 = 2;
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (type != 6)
  {
    v6 = 4;
    goto LABEL_17;
  }

  v4 = 7;
  v5 = 11;
LABEL_23:
  v3 = [AutocompleteSectionRule ruleWithSourceType:v4 sourceSubtype:v5];
LABEL_24:

  return v3;
}

- (id)excludingRulesWithTypes:(id)types
{
  typesCopy = types;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1008DF034;
  v11 = &unk_10162DD18;
  selfCopy = self;
  v5 = objc_alloc_init(NSMutableArray);
  v13 = v5;
  [typesCopy enumerateObjectsUsingBlock:&v8];

  if ([v5 count])
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)includingRulesWithTypes:(id)types
{
  typesCopy = types;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1008DF18C;
  v11 = &unk_10162DD18;
  selfCopy = self;
  v5 = objc_alloc_init(NSMutableArray);
  v13 = v5;
  [typesCopy enumerateObjectsUsingBlock:&v8];

  if ([v5 count])
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)defaultSectionsWithCompletionSections:(id)sections
{
  sectionsCopy = sections;
  v44 = +[NSMutableArray array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = sectionsCopy;
  v5 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (!v5)
  {
    v45 = 0;
    v8 = v44;
    goto LABEL_27;
  }

  v6 = v5;
  v45 = 0;
  v7 = 0;
  v47 = *v49;
  v8 = v44;
  do
  {
    v9 = 0;
    do
    {
      if (*v49 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v48 + 1) + 8 * v9);
      if ([v10 shouldInterleaveClientResults])
      {
        v11 = [NSMutableArray alloc];
        includedClientResultTypes = [v10 includedClientResultTypes];
        v13 = [v11 initWithCapacity:{objc_msgSend(includedClientResultTypes, "count")}];

        includedClientResultTypes2 = [v10 includedClientResultTypes];
        v15 = [includedClientResultTypes2 count];

        if (v15)
        {
          includedClientResultTypes3 = [v10 includedClientResultTypes];
          v17 = [(AutocompleteItemManager *)self includingRulesWithTypes:includedClientResultTypes3];

          if ([v17 count])
          {
            [v13 addObjectsFromArray:v17];
          }
        }

        else
        {
          v17 = [NSNumber numberWithUnsignedInteger:v7];
          v34 = [AutocompleteSectionRule ruleMatchingAnySourceTypeWithIndexInCompletionSections:v17];
          [v13 addObject:v34];
        }

        excludedClientResultTypes = [v10 excludedClientResultTypes];
        v23 = [(AutocompleteItemManager *)self excludingRulesWithTypes:excludedClientResultTypes];

        v36 = [AutocompleteMutableSection alloc];
        title = [v10 title];
        v28 = [(AutocompleteMutableSection *)v36 initWithRules:v13 excludingRules:v23 title:title isQuerySuggestionsSection:0 isSectionForClientOnlyResults:0];
        v45 = 1;
        goto LABEL_20;
      }

      if (![v10 isSectionForClientOnlyResults] || (objc_msgSend(v10, "includedClientResultTypes"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, !v19))
      {
        v29 = [NSNumber numberWithUnsignedInteger:v7];
        v13 = [AutocompleteSectionRule ruleWithSourceType:1 indexInCompletionSections:v29];

        topSectionIsQuerySuggestions = [(AutocompleteItemManager *)self topSectionIsQuerySuggestions];
        if (v7)
        {
          v31 = 0;
        }

        else
        {
          v31 = topSectionIsQuerySuggestions;
        }

        v32 = [AutocompleteMutableSection alloc];
        v53 = v13;
        v23 = [NSArray arrayWithObjects:&v53 count:1];
        title = [v10 title];
        v33 = v31;
        v8 = v44;
        v28 = [(AutocompleteMutableSection *)v32 initWithRules:v23 excludingRules:0 title:title isQuerySuggestionsSection:v33 isSectionForClientOnlyResults:0];
        goto LABEL_20;
      }

      v20 = [NSMutableArray alloc];
      includedClientResultTypes4 = [v10 includedClientResultTypes];
      v13 = [v20 initWithCapacity:{objc_msgSend(includedClientResultTypes4, "count")}];

      includedClientResultTypes5 = [v10 includedClientResultTypes];
      v23 = [(AutocompleteItemManager *)self includingRulesWithTypes:includedClientResultTypes5];

      if ([v23 count])
      {
        [v13 addObjectsFromArray:v23];
        excludedClientResultTypes2 = [v10 excludedClientResultTypes];
        title = [(AutocompleteItemManager *)self excludingRulesWithTypes:excludedClientResultTypes2];

        v26 = [AutocompleteMutableSection alloc];
        title2 = [v10 title];
        v28 = [(AutocompleteMutableSection *)v26 initWithRules:v13 excludingRules:title title:title2 isQuerySuggestionsSection:0 isSectionForClientOnlyResults:1];

        v8 = v44;
LABEL_20:

        -[AutocompleteMutableSection setEnforceServerResultsOrder:](v28, "setEnforceServerResultsOrder:", [v10 enforceServerResultsOrder]);
        -[AutocompleteMutableSection setEnableMapsSuggestServerReranking:](v28, "setEnableMapsSuggestServerReranking:", [v10 enableMapsSuggestServerReranking]);
        [v8 addObject:v28];
        ++v7;
        v13 = v28;
        goto LABEL_21;
      }

LABEL_21:
      v9 = v9 + 1;
    }

    while (v6 != v9);
    v37 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    v6 = v37;
  }

  while (v37);
LABEL_27:

  if (![v8 count] || (v45 & 1) == 0)
  {
    v38 = [AutocompleteMutableSection alloc];
    v39 = +[AutocompleteSectionRule ruleMatchingAnySourceType];
    v52 = v39;
    v40 = [NSArray arrayWithObjects:&v52 count:1];
    v41 = [(AutocompleteMutableSection *)v38 initWithRules:v40 excludingRules:0 title:0 isQuerySuggestionsSection:0 isSectionForClientOnlyResults:0];
    [v44 addObject:v41];

    v8 = v44;
  }

  v42 = [v8 copy];

  return v42;
}

- (void)setCompletionSections:(id)sections
{
  sectionsCopy = sections;
  v5 = [sectionsCopy copy];
  completionSections = self->_completionSections;
  self->_completionSections = v5;

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1008DF8AC;
  v13 = sub_1008DF8BC;
  v14 = 0;
  completionSections = [(AutocompleteItemManager *)self completionSections];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1008DF8C4;
  v8[3] = &unk_10162DCF0;
  v8[4] = &v9;
  [completionSections enumerateObjectsUsingBlock:v8];

  objc_storeStrong(&self->_interleavedSectionIndex, v10[5]);
  _Block_object_dispose(&v9, 8);
}

- (id)indexOfSectionWithItem:(id)item
{
  itemCopy = item;
  compoundItem = [itemCopy compoundItem];
  v6 = [compoundItem containsPossiblePersonalizedItemSourceType:1];

  if ((v6 & 1) == 0)
  {
    interleavedSectionIndex = [(AutocompleteItemManager *)self interleavedSectionIndex];
    goto LABEL_29;
  }

  item = [itemCopy item];
  autocompleteObject = [item autocompleteObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = autocompleteObject;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    if (!autocompleteObject)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    compoundItem2 = [itemCopy compoundItem];
    items = [compoundItem2 items];

    v14 = [items countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
LABEL_11:
      v17 = 0;
      while (1)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(items);
        }

        v18 = *(*(&v31 + 1) + 8 * v17);
        if ([v18 conformsToProtocol:&OBJC_PROTOCOL___PersonalizedAutocompleteItem])
        {
          autocompleteObject = [v18 autocompleteObject];
          objc_opt_class();
          v19 = (objc_opt_isKindOfClass() & 1) != 0 ? autocompleteObject : 0;
          v20 = v19;

          if (v20)
          {
            break;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [items countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v15)
          {
            goto LABEL_11;
          }

          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      autocompleteObject = 0;
    }

    if (!autocompleteObject)
    {
      goto LABEL_27;
    }
  }

  completionSections = [(AutocompleteItemManager *)self completionSections];
  v22 = [completionSections count];

  if (v22)
  {
    v23 = 0;
    while (1)
    {
      completionSections2 = [(AutocompleteItemManager *)self completionSections];
      v25 = [completionSections2 objectAtIndex:v23];

      results = [v25 results];
      v27 = [results containsObject:autocompleteObject];

      if (v27)
      {
        break;
      }

      ++v23;
      completionSections3 = [(AutocompleteItemManager *)self completionSections];
      v29 = [completionSections3 count];

      if (v23 >= v29)
      {
        goto LABEL_27;
      }
    }

    interleavedSectionIndex = [NSNumber numberWithUnsignedInteger:v23];

    goto LABEL_28;
  }

LABEL_27:
  interleavedSectionIndex = 0;
LABEL_28:

LABEL_29:

  return interleavedSectionIndex;
}

- (void)sortWrappedItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count] >= 2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1008DFCA8;
    v5[3] = &unk_10162DCC8;
    useClientRankingScore = [(AutocompleteItemManager *)self useClientRankingScore];
    [itemsCopy sortWithOptions:16 usingComparator:v5];
  }
}

- (void)logSortedItemsWithSections:(id)sections
{
  sectionsCopy = sections;
  v4 = sub_100067540();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5 && [sectionsCopy count])
  {
    v7 = 0;
    *&v6 = 138412546;
    v27 = v6;
    v28 = sectionsCopy;
    do
    {
      v8 = [sectionsCopy objectAtIndexedSubscript:{v7, v27}];
      v9 = sub_100067540();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        title = [v8 title];
        items = [v8 items];
        v12 = [items count];
        *buf = v27;
        v30 = title;
        v31 = 2048;
        v32 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Displaying AC section title=%@, items.count=%lu", buf, 0x16u);
      }

      items2 = [v8 items];
      v14 = [items2 count];

      if (v14)
      {
        v15 = 0;
        do
        {
          items3 = [v8 items];
          v17 = [items3 objectAtIndexedSubscript:v15];

          if ([v17 conformsToProtocol:&OBJC_PROTOCOL___PersonalizedItem])
          {
            if ([v17 sourceType] == 4)
            {
              value = @"REDACTED - Contact name";
              value2 = @"REDACTED - Contact address";
            }

            else
            {
              title2 = [v17 title];
              value = [title2 value];

              subtitle = [v17 subtitle];
              value2 = [subtitle value];
            }
          }

          else
          {
            value = 0;
            value2 = 0;
          }

          v22 = @"NO";
          if ([v17 isCompoundPersonalizedAutocompleteItem])
          {
            leafPersonalizedAutocompleteItems = [v17 leafPersonalizedAutocompleteItems];
            if ([leafPersonalizedAutocompleteItems count] <= 1)
            {
              v22 = @"NO";
            }

            else
            {
              v22 = @"YES";
            }
          }

          v24 = sub_100067540();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 134219011;
            v30 = v7;
            v31 = 2048;
            v32 = v15;
            v33 = 2113;
            v34 = value;
            v35 = 2113;
            v36 = value2;
            v37 = 2112;
            v38 = v22;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "AC item at DisplayedSection,Index=%lu,%lu: title=%{private}@; subtitle=%{private}@; deduped=%@", buf, 0x34u);
          }

          ++v15;
          items4 = [v8 items];
          v26 = [items4 count];
        }

        while (v15 < v26);
      }

      ++v7;
      sectionsCopy = v28;
    }

    while (v7 < [v28 count]);
  }
}

- (void)logClientRankingScore:(double)score forItem:(id)item withSignalPack:(id)pack serverScore:(id)serverScore
{
  itemCopy = item;
  packCopy = pack;
  serverScoreCopy = serverScore;
  v12 = sub_100067540();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);

  if (v13)
  {
    if ([itemCopy conformsToProtocol:&OBJC_PROTOCOL___PersonalizedItem])
    {
      title = [itemCopy title];
      value = [title value];

      subtitle = [itemCopy subtitle];
      value2 = [subtitle value];
    }

    else
    {
      value2 = 0;
      value = 0;
    }

    v17 = +[NSMutableString string];
    if ([itemCopy hasServerItemIndex])
    {
      [v17 appendFormat:@"ServerSection, Index=%lu, %lu; ", objc_msgSend(itemCopy, "serverSectionIndex"), objc_msgSend(itemCopy, "serverItemIndexInSection")];
    }

    if (serverScoreCopy)
    {
      [serverScoreCopy normalizedScore];
      [v17 appendFormat:@"ServerScore=%f; ", v18];
    }

    v19 = value;
    v20 = [itemCopy sourceType] - 1;
    if (v20 > 9)
    {
      v21 = @"Unknown";
    }

    else
    {
      v21 = *(&off_10162DD38 + v20);
    }

    sourceSubtype = [itemCopy sourceSubtype];
    if ((sourceSubtype - 1) > 0x25)
    {
      v23 = @"Unknown";
    }

    else
    {
      v23 = *(&off_10162DD88 + (sourceSubtype - 1));
    }

    [v17 appendFormat:@"SourceType, Subtype=%@, %@; ", v21, v23];
    itemSuggestionTypeSource = [packCopy itemSuggestionTypeSource];
    if (itemSuggestionTypeSource >= 0xF)
    {
      v25 = [NSString stringWithFormat:@"(unknown: %i)", itemSuggestionTypeSource];
    }

    else
    {
      v25 = *(&off_10162DEB8 + itemSuggestionTypeSource);
    }

    [v17 appendFormat:@"SuggestionType=%@; ", v25];

    itemServerEntryTypeSource = [packCopy itemServerEntryTypeSource];
    if (itemServerEntryTypeSource >= 4)
    {
      v27 = [NSString stringWithFormat:@"(unknown: %i)", itemServerEntryTypeSource];
    }

    else
    {
      v27 = *(&off_10162DF30 + itemServerEntryTypeSource);
    }

    [v17 appendFormat:@"ServerEntryType=%@; ", v27];

    autocompleteObject = [itemCopy autocompleteObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && autocompleteObject)
    {
      autocompleteObject2 = [itemCopy autocompleteObject];
      v31 = [autocompleteObject2 description];
      [v17 appendFormat:@"\nAutcompletePerson=<<%@>>;\n", v31];
    }

    [v17 appendString:@"Features { "];
    v32 = 0;
    v33 = 1;
    do
    {
      if ([packCopy hasValueForFeatureType:v32])
      {
        if ((v33 & 1) == 0)
        {
          [v17 appendString:@"; "];
        }

        v34 = *(&off_10162DF50 + v32);
        [packCopy valueForFeatureType:v32];
        [v17 appendFormat:@"%@=%f", v34, v35];
        v33 = 0;
      }

      ++v32;
    }

    while (v32 != 42);
    [v17 appendString:@" }"];
    v36 = sub_100067540();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 138478595;
      v39 = v19;
      v40 = 2113;
      v41 = value2;
      v42 = 2048;
      scoreCopy = score;
      v44 = 2112;
      v45 = v17;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "AC item title=%{private}@; subtitle=%{private}@: ranking score = %f; %@", buf, 0x2Au);
    }
  }
}

- (double)clientRankingScoreOfFirstItemInSection:(id)section wrappedItems:(id)items
{
  itemsCopy = items;
  items = [section items];
  firstObject = [items firstObject];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v10 = 0.0;
  if (v9)
  {
    v11 = v9;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        item = [v14 item];

        if (firstObject == item)
        {
          [v14 clientRankingScore];
          v10 = v16;
          goto LABEL_11;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (BOOL)canMoveItem:(id)item toSection:(id)section withSortedSections:(id)sections wrappedItems:(id)items
{
  itemCopy = item;
  sectionCopy = section;
  sectionsCopy = sections;
  itemsCopy = items;
  compoundItem = [itemCopy compoundItem];
  if (([sectionCopy itemIsAllowed:compoundItem indexInCompletionSections:0] & 1) == 0)
  {

    goto LABEL_8;
  }

  section = [itemCopy section];

  if (section == sectionCopy)
  {
LABEL_8:
    v22 = 0;
    goto LABEL_9;
  }

  [itemCopy clientRankingScore];
  v17 = v16;
  v18 = [sectionsCopy indexOfObject:sectionCopy];
  section2 = [itemCopy section];
  v20 = [sectionsCopy indexOfObject:section2];

  v21 = v18 + 1;
  while (1)
  {
    v22 = v21 >= v20;
    if (v21 >= v20)
    {
      break;
    }

    v23 = [sectionsCopy objectAtIndexedSubscript:v21];
    [(AutocompleteItemManager *)self clientRankingScoreOfFirstItemInSection:v23 wrappedItems:itemsCopy];
    v25 = v24;

    ++v21;
    if (v25 > v17)
    {
      goto LABEL_8;
    }
  }

LABEL_9:

  return v22;
}

- (id)filterDuplicateContactsFromServerResultUsingItems:(id)items
{
  v3 = [items mutableCopy];
  v35 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v59;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v59 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v58 + 1) + 8 * i);
        if ([v10 containsPossiblePersonalizedItemSourceType:4])
        {
          [v35 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v7);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v5;
  v11 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v55;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v55 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v54 + 1) + 8 * j);
        if ([v15 containsPossiblePersonalizedItemSourceType:1])
        {
          [v4 addObject:v15];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v12);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v32 = v4;
  v34 = [v32 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v34)
  {
    v33 = *v51;
    do
    {
      v16 = 0;
      do
      {
        if (*v51 != v33)
        {
          objc_enumerationMutation(v32);
        }

        v36 = v16;
        v17 = *(*(&v50 + 1) + 8 * v16);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v37 = v35;
        v39 = [v37 countByEnumeratingWithState:&v46 objects:v65 count:16];
        if (v39)
        {
          v38 = *v47;
          do
          {
            v18 = 0;
            do
            {
              if (*v47 != v38)
              {
                objc_enumerationMutation(v37);
              }

              v40 = v18;
              v19 = *(*(&v46 + 1) + 8 * v18);
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              keys = [v19 keys];
              v21 = [keys countByEnumeratingWithState:&v42 objects:v64 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v43;
                do
                {
                  for (k = 0; k != v22; k = k + 1)
                  {
                    if (*v43 != v23)
                    {
                      objc_enumerationMutation(keys);
                    }

                    v25 = *(*(&v42 + 1) + 8 * k);
                    keys2 = [v17 keys];
                    allObjects = [keys2 allObjects];
                    firstObject = [allObjects firstObject];

                    if (firstObject && [v25 isEqual:firstObject])
                    {
                      v29 = sub_100067540();
                      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v63 = v19;
                        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "AutocompleteItemManager - Found a duplicate contact:%@ with server address", buf, 0xCu);
                      }

                      [obj removeObject:v19];
                    }
                  }

                  v22 = [keys countByEnumeratingWithState:&v42 objects:v64 count:16];
                }

                while (v22);
              }

              v18 = v40 + 1;
            }

            while ((v40 + 1) != v39);
            v39 = [v37 countByEnumeratingWithState:&v46 objects:v65 count:16];
          }

          while (v39);
        }

        v16 = v36 + 1;
      }

      while ((v36 + 1) != v34);
      v34 = [v32 countByEnumeratingWithState:&v50 objects:v66 count:16];
    }

    while (v34);
  }

  v30 = [obj copy];

  return v30;
}

- (double)clientRankingScoreForItem:(id)item withSuggestionEntry:(id)entry hasContributionsFromDiscreteFeaturesResult:(BOOL *)result
{
  itemCopy = item;
  entryCopy = entry;
  v10 = 0.0;
  if ([(AutocompleteItemManager *)self useClientRankingScore])
  {
    v11 = [[PersonalizedItemSignalPack alloc] initWithItem:itemCopy suggestionEntry:entryCopy];
    _clientRankingFunction = [(PersonalizedItemManager *)self _clientRankingFunction];
    serverResultScoreMetadata = [itemCopy serverResultScoreMetadata];
    [_clientRankingFunction clientRankingScoreForPersonalizedItemSignalPack:v11 withServerScore:serverResultScoreMetadata hasContributionsFromDiscreteFeaturesResult:result];
    v10 = v14;

    serverResultScoreMetadata2 = [itemCopy serverResultScoreMetadata];
    [(AutocompleteItemManager *)self logClientRankingScore:itemCopy forItem:v11 withSignalPack:serverResultScoreMetadata2 serverScore:v10];
  }

  return v10;
}

- (void)computeClientRankingScoresForResolvedItemsIfNeeded:(id)needed completion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  if (![(AutocompleteItemManager *)self useClientRankingScore])
  {
    goto LABEL_67;
  }

  if ([neededCopy count] <= 1)
  {
    v8 = [neededCopy count];
    v9 = sub_100067540();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v10)
      {
        *buf = 0;
        v11 = "Skipping computing AC ranking scores because we only have 1 item";
LABEL_65:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v11, buf, 2u);
      }
    }

    else if (v10)
    {
      *buf = 0;
      v11 = "Skipping computing AC ranking scores because we have no items";
      goto LABEL_65;
    }

LABEL_67:
    completionCopy[2](completionCopy);
    goto LABEL_68;
  }

  selfCopy = self;
  v101 = completionCopy;
  v104 = +[NSMutableArray array];
  v106 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v103 = neededCopy;
  v13 = 0;
  if ([neededCopy count])
  {
    v14 = 0;
    do
    {
      v15 = [neededCopy objectAtIndexedSubscript:v14];
      [v15 setClientRankingScore:-3.40282347e38];
      item = [v15 item];
      isCompoundPersonalizedAutocompleteItem = [item isCompoundPersonalizedAutocompleteItem];
      item2 = [v15 item];
      v19 = item2;
      if (isCompoundPersonalizedAutocompleteItem)
      {
        [item2 leafPersonalizedAutocompleteItems];
      }

      else
      {
        v126 = item2;
        [NSArray arrayWithObjects:&v126 count:1];
      }
      v20 = ;

      [v104 addObjectsFromArray:v20];
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v115 objects:v125 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v116;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v116 != v24)
            {
              objc_enumerationMutation(v21);
            }

            autocompleteObject = [*(*(&v115 + 1) + 8 * i) autocompleteObject];

            if (autocompleteObject)
            {
              compoundItem = [v15 compoundItem];
              [v106 addObject:compoundItem];

              v28 = [NSNumber numberWithUnsignedInteger:v14];
              [v12 addObject:v28];

              ++v13;
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v115 objects:v125 count:16];
        }

        while (v23);
      }

      ++v14;
      neededCopy = v103;
    }

    while (v14 < [v103 count]);
  }

  autocompleteContext = [(AutocompleteItemManager *)self autocompleteContext];
  v30 = MapsSuggestionsResourceDepotForMapsProcess();
  oneInsights = [v30 oneInsights];
  traits = [(AutocompleteItemManager *)self traits];
  BYTE1(v100) = [(AutocompleteItemManager *)self shouldUseDistanceFeatureServerResults];
  LOBYTE(v100) = 0;
  v33 = [MapsAnalyticsHelper acSuggestionEntriesFromAutoCompleteObjects:v106 personalizedItems:v104 context:autocompleteContext mapsSuggestionsInsights:oneInsights skipReportASearchItems:0 traits:traits usedForLogging:v100 shouldUseDistanceFeatureServerResults:?];

  selfCopy3 = self;
  if (![(AutocompleteItemManager *)self mapsSuggestionsIsTouristHereScoreValid])
  {
    [(AutocompleteItemManager *)self setMapsSuggestionsIsTouristHereScoreValid:1];
    traits2 = [(AutocompleteItemManager *)self traits];
    [traits2 isTourist];
    [(AutocompleteItemManager *)self setMapsSuggestionsIsTouristHereScore:?];

    selfCopy3 = self;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v36 = v33;
  v37 = [v36 countByEnumeratingWithState:&v111 objects:v124 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v112;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v112 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v111 + 1) + 8 * j);
        [(AutocompleteItemManager *)selfCopy3 mapsSuggestionsIsTouristHereScore];
        [v41 setMapsSuggestionsIsTouristScore:?];
      }

      v38 = [v36 countByEnumeratingWithState:&v111 objects:v124 count:16];
    }

    while (v38);
  }

  v42 = [v36 count];
  v43 = sub_100067540();
  v44 = v43;
  if (v42 == v13)
  {
    v45 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);

    if (v45)
    {
      v46 = sub_100067540();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        v47 = [neededCopy count];
        v48 = [v104 count];
        *buf = 134218240;
        v121 = v47;
        v122 = 2048;
        v123 = v48;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Computing AC ranking scores for %lu items (%lu leaf items)", buf, 0x16u);
      }

      _clientRankingFunction = [(PersonalizedItemManager *)selfCopy3 _clientRankingFunction];
      v50 = sub_100067540();
      [_clientRankingFunction describeInLog:v50 withType:2];
    }

    v102 = v36;
    if ([v36 count])
    {
      v51 = 0;
      do
      {
        v52 = [v12 objectAtIndexedSubscript:v51];
        unsignedIntegerValue = [v52 unsignedIntegerValue];

        v54 = [neededCopy objectAtIndexedSubscript:unsignedIntegerValue];
        buf[0] = 0;
        v55 = [v104 objectAtIndexedSubscript:v51];
        v56 = [v36 objectAtIndexedSubscript:v51];
        [(AutocompleteItemManager *)selfCopy3 clientRankingScoreForItem:v55 withSuggestionEntry:v56 hasContributionsFromDiscreteFeaturesResult:buf];
        v58 = v57;

        v36 = v102;
        v59 = [v102 objectAtIndexedSubscript:v51];
        [v59 mapsSuggestionsPoiRevelanceScore];
        v61 = v60;

        [v54 clientRankingScore];
        if (v58 > v62)
        {
          [v54 clientRankingScore];
          if (v63 > v58)
          {
            [v54 clientRankingScore];
            v58 = v64;
          }

          [v54 setClientRankingScore:v58];
          compoundItem2 = [v54 compoundItem];
          autocompleteAnalytics = [compoundItem2 autocompleteAnalytics];

          if (!autocompleteAnalytics)
          {
            v67 = objc_alloc_init(PersonalizedCompoundItemAutocompleteAnalytics);
            compoundItem3 = [v54 compoundItem];
            [compoundItem3 setAutocompleteAnalytics:v67];
          }

          v69 = buf[0];
          compoundItem4 = [v54 compoundItem];
          autocompleteAnalytics2 = [compoundItem4 autocompleteAnalytics];
          [autocompleteAnalytics2 setDiscreteFeatureValuesContributedToLatestClientRankingScore:v69];

          v36 = v102;
        }

        v72 = [v36 objectAtIndexedSubscript:v51];
        suggestionType = [v72 suggestionType];

        if (suggestionType == 9)
        {
          [v54 poiRelevanceScore];
          if (v74 > v61)
          {
            [v54 poiRelevanceScore];
            v61 = v75;
          }

          [v54 setPoiRelevanceScore:v61];
        }

        ++v51;
      }

      while (v51 < [v36 count]);
    }

    v76 = +[NSUserDefaults standardUserDefaults];
    v77 = [v76 BOOLForKey:@"EnableSearchDebug"];

    if ((v77 & 1) == 0)
    {
      goto LABEL_62;
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v44 = neededCopy;
    v78 = [v44 countByEnumeratingWithState:&v107 objects:v119 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v108;
      do
      {
        for (k = 0; k != v79; k = k + 1)
        {
          if (*v108 != v80)
          {
            objc_enumerationMutation(v44);
          }

          v82 = *(*(&v107 + 1) + 8 * k);
          item3 = [v82 item];
          v84 = [item3 conformsToProtocol:&OBJC_PROTOCOL___AutocompleteItemWithMatchInfo];

          if (v84)
          {
            [v82 clientRankingScore];
            v86 = v85;
            item4 = [v82 item];
            matchInfo = [item4 matchInfo];
            [matchInfo setClientRankingDebug:v86];
          }

          [v82 clientRankingScore];
          v90 = v89;
          autocompleteContext2 = [(AutocompleteItemManager *)selfCopy autocompleteContext];
          item5 = [v82 item];
          autocompleteObject2 = [item5 autocompleteObject];
          v94 = [autocompleteContext2 matchInfoForObject:autocompleteObject2];
          [v94 setClientRankingDebug:v90];

          [v82 clientRankingScore];
          v96 = v95;
          compoundItem5 = [v82 compoundItem];
          matchInfo2 = [compoundItem5 matchInfo];
          [matchInfo2 setClientRankingDebug:v96];
        }

        v79 = [v44 countByEnumeratingWithState:&v107 objects:v119 count:16];
      }

      while (v79);
      v36 = v102;
      neededCopy = v103;
    }
  }

  else if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    v99 = [v36 count];
    *buf = 134218240;
    v121 = v13;
    v122 = 2048;
    v123 = v99;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Skipping computing AC ranking scores because the number of items (%lu) does not match the number of suggestionEntries produced (%lu)", buf, 0x16u);
  }

LABEL_62:
  completionCopy = v101;
  v101[2](v101);

LABEL_68:
}

- (id)sectionsWithWrappedItems:(id)items
{
  itemsCopy = items;
  completionSections = [(AutocompleteItemManager *)self completionSections];
  v42 = [(AutocompleteItemManager *)self defaultSectionsWithCompletionSections:completionSections];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = itemsCopy;
  v44 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v44)
  {
    v41 = *v66;
    do
    {
      v6 = 0;
      do
      {
        if (*v66 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v6;
        v7 = *(*(&v65 + 1) + 8 * v6);
        v8 = [(AutocompleteItemManager *)self indexOfSectionWithItem:v7];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v9 = v42;
        v10 = [v9 countByEnumeratingWithState:&v61 objects:v72 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v62;
          while (2)
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v62 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v61 + 1) + 8 * i);
              compoundItem = [v7 compoundItem];
              v16 = [v14 itemIsAllowed:compoundItem indexInCompletionSections:v8];

              if (v16)
              {
                item = [v7 item];
                [v7 poiRelevanceScore];
                [v14 addItem:item poiRelevanceScore:?];

                [v7 setSection:v14];
                goto LABEL_16;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v61 objects:v72 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        v6 = v47 + 1;
      }

      while ((v47 + 1) != v44);
      v44 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v44);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v18 = v42;
  v19 = [v18 countByEnumeratingWithState:&v57 objects:v71 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v58;
    v43 = *v58;
    do
    {
      v22 = 0;
      v45 = v20;
      do
      {
        if (*v58 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v57 + 1) + 8 * v22);
        if ([v23 isSectionForClientOnlyResults])
        {
          v48 = v22;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v24 = obj;
          v25 = [v24 countByEnumeratingWithState:&v53 objects:v70 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v54;
            do
            {
              for (j = 0; j != v26; j = j + 1)
              {
                if (*v54 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v53 + 1) + 8 * j);
                if ([(AutocompleteItemManager *)self canMoveItem:v29 toSection:v23 withSortedSections:v18 wrappedItems:v24])
                {
                  section = [v29 section];
                  item2 = [v29 item];
                  [v29 poiRelevanceScore];
                  [section removeItem:item2 poiRelevanceScore:?];

                  item3 = [v29 item];
                  [v29 poiRelevanceScore];
                  [v23 addItem:item3 poiRelevanceScore:?];
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v53 objects:v70 count:16];
            }

            while (v26);
          }

          v21 = v43;
          v20 = v45;
          v22 = v48;
        }

        v22 = v22 + 1;
      }

      while (v22 != v20);
      v20 = [v18 countByEnumeratingWithState:&v57 objects:v71 count:16];
    }

    while (v20);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v33 = v18;
  v34 = [v33 countByEnumeratingWithState:&v49 objects:v69 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v50;
    do
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [*(*(&v49 + 1) + 8 * k) resortItemsToEnforceServerResultsOrderIfNeeded];
      }

      v35 = [v33 countByEnumeratingWithState:&v49 objects:v69 count:16];
    }

    while (v35);
  }

  v38 = [NSPredicate predicateWithBlock:&stru_10162DCA8];
  v39 = [v33 filteredArrayUsingPredicate:v38];

  return v39;
}

- (id)wrappedItems:(id)items
{
  itemsCopy = items;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [AutocompleteItemManagerItemWrapper alloc];
        v13 = [(AutocompleteItemManagerItemWrapper *)v12 initWithItem:v11 compoundItem:v11, v16];
        if ([(AutocompleteItemManager *)self usePriority])
        {
          _priorityFunction = [(PersonalizedItemManager *)self _priorityFunction];
          -[AutocompleteItemManagerItemWrapper setPriority:](v13, "setPriority:", [_priorityFunction priorityForPersonalizedAutocompleteItem:v11]);
        }

        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)usePriority
{
  _clientRankingFunction = [(PersonalizedItemManager *)self _clientRankingFunction];
  if (_clientRankingFunction)
  {
    v4 = 0;
  }

  else
  {
    _priorityFunction = [(PersonalizedItemManager *)self _priorityFunction];
    v4 = _priorityFunction != 0;
  }

  return v4;
}

- (BOOL)useClientRankingScore
{
  _clientRankingFunction = [(PersonalizedItemManager *)self _clientRankingFunction];
  v3 = _clientRankingFunction != 0;

  return v3;
}

- (void)_gatherItemsWithShouldCancel:(id)cancel completion:(id)completion
{
  cancelCopy = cancel;
  completionCopy = completion;
  v8 = sub_100067540();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AutocompleteItemManager - collecting results", buf, 2u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1008E1F20;
  v12[3] = &unk_10162DC68;
  v12[4] = self;
  v13 = cancelCopy;
  v14 = completionCopy;
  v11.receiver = self;
  v11.super_class = AutocompleteItemManager;
  v9 = completionCopy;
  v10 = cancelCopy;
  [(PersonalizedItemManager *)&v11 _gatherItemsWithShouldCancel:v10 completion:v12];
}

- (void)setPriorityFunction:(id)function
{
  functionCopy = function;
  v5 = functionCopy;
  if (!functionCopy)
  {
    v5 = +[PersonalizedItemPriorityFunction defaultPriorityFunctionForAutocomplete];
  }

  v6.receiver = self;
  v6.super_class = AutocompleteItemManager;
  [(PersonalizedItemManager *)&v6 setPriorityFunction:v5];
  if (!functionCopy)
  {
  }
}

- (AutocompleteItemManager)init
{
  v6.receiver = self;
  v6.super_class = AutocompleteItemManager;
  v2 = [(PersonalizedItemManager *)&v6 init];
  if (v2)
  {
    v3 = +[PersonalizedItemPriorityFunction defaultPriorityFunctionForAutocomplete];
    v5.receiver = v2;
    v5.super_class = AutocompleteItemManager;
    [(PersonalizedItemManager *)&v5 setPriorityFunction:v3];
  }

  return v2;
}

@end