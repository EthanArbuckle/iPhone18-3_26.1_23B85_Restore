@interface AutocompleteMutableSection
- (AutocompleteMutableSection)initWithRules:(id)rules excludingRules:(id)excludingRules title:(id)title isQuerySuggestionsSection:(BOOL)section isSectionForClientOnlyResults:(BOOL)results;
- (BOOL)containsItem:(id)item;
- (BOOL)excludingRulesAllowItem:(id)item;
- (BOOL)itemIsAllowed:(id)allowed indexInCompletionSections:(id)sections;
- (void)addItem:(id)item poiRelevanceScore:(double)score;
- (void)prioritizePoiRelevantItems;
- (void)removeItem:(id)item poiRelevanceScore:(double)score;
- (void)resortItemsToEnforceServerResultsOrderIfNeeded;
@end

@implementation AutocompleteMutableSection

- (void)prioritizePoiRelevantItems
{
  items = [(AutocompleteMutableSection *)self items];
  if ([items count] >= 2)
  {
    v3 = [(NSMutableArray *)self->_poiRelevantItems count];

    if (v3)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v4 = self->_poiRelevantItems;
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v19;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v19 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v18 + 1) + 8 * i);
            items2 = [(AutocompleteMutableSection *)self items];
            [items2 removeObject:v9];
          }

          v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v6);
      }

      [(NSMutableArray *)self->_poiRelevantItems sortWithOptions:16 usingComparator:&stru_101638398];
      items3 = [(AutocompleteMutableSection *)self items];
      poiRelevantItems = self->_poiRelevantItems;
      v13 = [NSMutableIndexSet indexSetWithIndexesInRange:0, [(NSMutableArray *)poiRelevantItems count]];
      [items3 insertObjects:poiRelevantItems atIndexes:v13];

      v14 = sub_100067540();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        title = [(AutocompleteMutableSection *)self title];
        v16 = [(NSMutableArray *)self->_poiRelevantItems count];
        *buf = 138412546;
        v23 = title;
        v24 = 2048;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Enforcing AC server result reorder for section title=%@: moved %lu item(s) to prioritize maps suggestions poi relevant items", buf, 0x16u);
      }
    }
  }

  else
  {
  }
}

- (void)resortItemsToEnforceServerResultsOrderIfNeeded
{
  if ([(AutocompleteMutableSection *)self enforceServerResultsOrder])
  {
    items = [(AutocompleteMutableSection *)self items];
    v4 = [items count];

    if (v4 < 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 1;
      do
      {
        items2 = [(AutocompleteMutableSection *)self items];
        v8 = [items2 objectAtIndexedSubscript:v6];

        if ([v8 hasServerItemIndex])
        {
          serverSectionIndex = [v8 serverSectionIndex];
          serverItemIndexInSection = [v8 serverItemIndexInSection];
          v11 = 0;
          do
          {
            items3 = [(AutocompleteMutableSection *)self items];
            v13 = [items3 objectAtIndexedSubscript:v11];

            if ([v13 hasServerItemIndex] && (serverSectionIndex < objc_msgSend(v13, "serverSectionIndex") || serverSectionIndex == objc_msgSend(v13, "serverSectionIndex") && serverItemIndexInSection < objc_msgSend(v13, "serverItemIndexInSection")))
            {
              items4 = [(AutocompleteMutableSection *)self items];
              [items4 removeObjectAtIndex:v6];

              items5 = [(AutocompleteMutableSection *)self items];
              [items5 insertObject:v8 atIndex:v11];

              ++v5;
              v11 = v6;
            }

            ++v11;
          }

          while (v11 < v6);
        }

        ++v6;
        items6 = [(AutocompleteMutableSection *)self items];
        v17 = [items6 count];
      }

      while (v6 < v17);
    }

    if ([(AutocompleteMutableSection *)self enableMapsSuggestServerReranking])
    {
      [(AutocompleteMutableSection *)self prioritizePoiRelevantItems];
    }

    v18 = sub_100067540();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      title = [(AutocompleteMutableSection *)self title];
      v20 = 138412546;
      v21 = title;
      v22 = 2048;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Enforcing AC server order for section title=%@: moved %lu item(s) to match server order", &v20, 0x16u);
    }
  }
}

- (BOOL)containsItem:(id)item
{
  itemCopy = item;
  items = [(AutocompleteMutableSection *)self items];
  v6 = [items containsObject:itemCopy];

  return v6;
}

- (void)removeItem:(id)item poiRelevanceScore:(double)score
{
  itemCopy = item;
  items = [(AutocompleteMutableSection *)self items];
  [items removeObject:itemCopy];

  if (score == 1.0)
  {
    [(NSMutableArray *)self->_poiRelevantItems removeObject:itemCopy];
  }
}

- (void)addItem:(id)item poiRelevanceScore:(double)score
{
  itemCopy = item;
  items = [(AutocompleteMutableSection *)self items];
  [items addObject:itemCopy];

  if (score == 1.0)
  {
    [(NSMutableArray *)self->_poiRelevantItems addObject:itemCopy];
  }
}

- (BOOL)excludingRulesAllowItem:(id)item
{
  itemCopy = item;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  excludingRules = [(AutocompleteMutableSection *)self excludingRules];
  v18 = [excludingRules countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v18)
  {
    v6 = *v25;
    v19 = itemCopy;
    v17 = *v25;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(excludingRules);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        items = [itemCopy items];
        v10 = [items countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(items);
              }

              v14 = *(*(&v20 + 1) + 8 * j);
              if ([v14 conformsToProtocol:&OBJC_PROTOCOL___PersonalizedAutocompleteItem] && (objc_msgSend(v8, "matchesItemWithSourceType:sourceSubtype:indexInCompletionSections:", objc_msgSend(v14, "sourceType"), objc_msgSend(v14, "sourceSubtype"), 0) & 1) != 0)
              {

                v15 = 0;
                itemCopy = v19;
                goto LABEL_20;
              }
            }

            v11 = [items countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        itemCopy = v19;
        v6 = v17;
      }

      v15 = 1;
      v18 = [excludingRules countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  else
  {
    v15 = 1;
  }

LABEL_20:

  return v15;
}

- (BOOL)itemIsAllowed:(id)allowed indexInCompletionSections:(id)sections
{
  allowedCopy = allowed;
  sectionsCopy = sections;
  if ([(AutocompleteMutableSection *)self excludingRulesAllowItem:allowedCopy])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    rules = [(AutocompleteMutableSection *)self rules];
    v21 = [rules countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v21)
    {
      v9 = *v29;
      v23 = rules;
      v20 = *v29;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(rules);
          }

          v22 = v10;
          v11 = *(*(&v28 + 1) + 8 * v10);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          items = [allowedCopy items];
          v13 = [items countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v25;
            while (2)
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v25 != v15)
                {
                  objc_enumerationMutation(items);
                }

                v17 = *(*(&v24 + 1) + 8 * i);
                if ([v17 conformsToProtocol:&OBJC_PROTOCOL___PersonalizedAutocompleteItem] && (objc_msgSend(v11, "matchesItemWithSourceType:sourceSubtype:indexInCompletionSections:", objc_msgSend(v17, "sourceType"), objc_msgSend(v17, "sourceSubtype"), sectionsCopy) & 1) != 0)
                {

                  goto LABEL_22;
                }
              }

              v14 = [items countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          if ([v11 matchesItemWithSourceType:objc_msgSend(allowedCopy sourceSubtype:"sourceType") indexInCompletionSections:{objc_msgSend(allowedCopy, "sourceSubtype"), sectionsCopy}])
          {
LABEL_22:
            v18 = 1;
            rules = v23;
            goto LABEL_24;
          }

          v10 = v22 + 1;
          rules = v23;
          v9 = v20;
        }

        while ((v22 + 1) != v21);
        v18 = 0;
        v21 = [v23 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_24:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (AutocompleteMutableSection)initWithRules:(id)rules excludingRules:(id)excludingRules title:(id)title isQuerySuggestionsSection:(BOOL)section isSectionForClientOnlyResults:(BOOL)results
{
  rulesCopy = rules;
  excludingRulesCopy = excludingRules;
  titleCopy = title;
  v27.receiver = self;
  v27.super_class = AutocompleteMutableSection;
  v15 = [(AutocompleteMutableSection *)&v27 init];
  if (v15)
  {
    v16 = [rulesCopy copy];
    rules = v15->_rules;
    v15->_rules = v16;

    v18 = [excludingRulesCopy copy];
    excludingRules = v15->_excludingRules;
    v15->_excludingRules = v18;

    v20 = [titleCopy copy];
    title = v15->_title;
    v15->_title = v20;

    v22 = objc_alloc_init(NSMutableArray);
    items = v15->_items;
    v15->_items = v22;

    v24 = objc_alloc_init(NSMutableArray);
    poiRelevantItems = v15->_poiRelevantItems;
    v15->_poiRelevantItems = v24;

    v15->_isQuerySuggestionsSection = section;
    v15->_isSectionForClientOnlyResults = results;
  }

  return v15;
}

@end