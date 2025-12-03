@interface CNCardPropertyGroup
+ (id)groupForProperty:(id)property contact:(id)contact store:(id)store policy:(id)policy linkedPolicies:(id)policies;
- (BOOL)_arrayContainsMaxAllowedItems:(id)items;
- (BOOL)_shouldShowGroupWhenEditing:(BOOL)editing;
- (BOOL)addEditingItem:(id)item;
- (BOOL)allowsAdding;
- (BOOL)isFixedValue;
- (BOOL)isMultiLine;
- (BOOL)isMultiValue;
- (BOOL)isRequired;
- (BOOL)labelsAreUnique;
- (BOOL)modified;
- (BOOL)moveEditingItemFromIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (CNCardPropertyGroup)initWithProperty:(id)property contact:(id)contact store:(id)store policy:(id)policy linkedPolicies:(id)policies;
- (Class)propertyGroupItemClass;
- (NSArray)editingItems;
- (id)_availableLabelsInLabels:(id)labels forItem:(id)item withValueSelector:(SEL)selector usedLabelsCount:(int64_t *)count;
- (id)_itemToBeMergedWith:(id)with fromItems:(id)items forEditing:(BOOL)editing;
- (id)_loadPropertyItems;
- (id)_mergeItems:(id)items forEditing:(BOOL)editing;
- (id)_nextAvailableInstantMessageService;
- (id)_nextAvailableLabel;
- (id)_nextAvailableLabelInLabels:(id)labels withValueSelector:(SEL)selector;
- (id)_nextAvailableSocialService;
- (id)description;
- (id)displayItems;
- (id)itemsUsingLabel:(id)label;
- (id)labelsForItem:(id)item options:(unint64_t)options;
- (id)labelsInUseByGroup;
- (id)lastEditingItem;
- (id)nextAvailableLabel;
- (id)policyForItem:(id)item;
- (int64_t)valueEditingItemsCount;
- (void)_updateNameValuesForItems:(id)items;
- (void)reloadDataPreservingChanges:(BOOL)changes;
- (void)removeEditingItem:(id)item;
- (void)saveChanges;
- (void)saveChangesForItems:(id)items;
- (void)setEditingItems:(id)items;
@end

@implementation CNCardPropertyGroup

- (id)_nextAvailableSocialService
{
  v3 = +[CNSocialProfileServicePickerController defaultServices];
  if ([v3 count])
  {
    v4 = [(CNCardPropertyGroup *)self _nextAvailableLabelInLabels:v3 withValueSelector:sel_service];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_nextAvailableInstantMessageService
{
  policy = [(CNCardPropertyGroup *)self policy];
  v4 = [policy supportedLabelsForContactProperty:*MEMORY[0x1E695C3D0]];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = +[CNInstantMessagePickerController defaultServices];
    contact = [(CNCardGroup *)self contact];
    supportsInstantMessageService = [contact supportsInstantMessageService];

    if (supportsInstantMessageService)
    {
      v5 = [(CNCardPropertyGroup *)self _nextAvailableLabelInLabels:v6 withValueSelector:sel_service];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_nextAvailableLabel
{
  v3 = [(CNCardPropertyGroup *)self labelsForItem:0 options:0];
  if ([v3 count])
  {
    v4 = [(CNCardPropertyGroup *)self _nextAvailableLabelInLabels:v3 withValueSelector:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_nextAvailableLabelInLabels:(id)labels withValueSelector:(SEL)selector
{
  labelsCopy = labels;
  v13 = 0;
  v7 = [(CNCardPropertyGroup *)self _availableLabelsInLabels:labelsCopy forItem:0 withValueSelector:selector usedLabelsCount:&v13];
  if ([v7 count])
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    if ([labelsCopy count])
    {
      v10 = v13;
      v9 = v10 % [labelsCopy count];
    }

    else
    {
      v9 = 0;
    }

    v8 = labelsCopy;
  }

  v11 = [v8 objectAtIndexedSubscript:v9];

  return v11;
}

- (id)_availableLabelsInLabels:(id)labels forItem:(id)item withValueSelector:(SEL)selector usedLabelsCount:(int64_t *)count
{
  v46 = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  itemCopy = item;
  v9 = [MEMORY[0x1E695DFA8] set];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  selfCopy = self;
  editingItems = [(CNCardPropertyGroup *)self editingItems];
  v11 = [editingItems countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(editingItems);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          labeledValue = [v15 labeledValue];
          value = [labeledValue value];

          if (selector)
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"CNCardPropertyGroup.m" lineNumber:601 description:@"A valueSelector has been specified but the value doesn’t support it."];
            }

            labeledValue3 = ([value methodForSelector:selector])(value, selector);
            if (labeledValue3)
            {
              [v9 addObject:labeledValue3];
            }

LABEL_15:
          }

          else if (v15 != itemCopy)
          {
            labeledValue2 = [v15 labeledValue];
            label = [labeledValue2 label];

            if (label)
            {
              labeledValue3 = [v15 labeledValue];
              label2 = [labeledValue3 label];
              [v9 addObject:label2];

              goto LABEL_15;
            }
          }

          continue;
        }
      }

      v12 = [editingItems countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v12);
  }

  array = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = labelsCopy;
  v25 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v37;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v36 + 1) + 8 * j);
        if (([v9 containsObject:v29] & 1) == 0)
        {
          [array addObject:v29];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v26);
  }

  if (count)
  {
    *count = [v9 count];
  }

  return array;
}

- (id)itemsUsingLabel:(id)label
{
  v20 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  editingItems = [(CNCardPropertyGroup *)self editingItems];
  v7 = [editingItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(editingItems);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          labeledValue = [v11 labeledValue];
          label = [labeledValue label];

          if ([label isEqualToString:labelCopy])
          {
            [array addObject:v11];
          }
        }
      }

      v8 = [editingItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)labelsInUseByGroup
{
  v19 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  editingItems = [(CNCardPropertyGroup *)self editingItems];
  v5 = [editingItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x1E6996570];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(editingItems);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          labeledValue = [v10 labeledValue];
          label = [labeledValue label];

          if ((*(v8 + 16))(v8, label))
          {
            [array addObject:label];
          }
        }
      }

      v6 = [editingItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)labelsForItem:(id)item options:(unint64_t)options
{
  v32[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  property = [(CNCardPropertyGroup *)self property];
  v8 = [property isEqualToString:@"birthdays"];

  policy = [(CNCardPropertyGroup *)self policy];
  v10 = policy;
  if (v8)
  {
    v11 = [policy _cnui_maximumNumberOfValuesForProperty:@"birthdays"];

    if (v11 < 2)
    {
      v31 = @"_systemCalendar";
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    }

    else
    {
      v32[0] = @"_systemCalendar";
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      availableAlternateCalendars = [MEMORY[0x1E6996B48] availableAlternateCalendars];
      v14 = [v12 arrayByAddingObjectsFromArray:availableAlternateCalendars];
    }
  }

  else
  {
    property2 = [(CNCardPropertyGroup *)self property];
    v14 = [v10 supportedLabelsForContactProperty:property2];

    if (!v14)
    {
      v16 = MEMORY[0x1E695CE18];
      property3 = [(CNCardPropertyGroup *)self property];
      v14 = [v16 standardLabelsForPropertyWithKey:property3 options:options];
    }
  }

  v29 = 0;
  if ([(CNCardPropertyGroup *)self labelsAreUnique])
  {
    v18 = [(CNCardPropertyGroup *)self _availableLabelsInLabels:v14 forItem:itemCopy withValueSelector:0 usedLabelsCount:&v29];

    property4 = [(CNCardPropertyGroup *)self property];
    v20 = [property4 isEqualToString:@"birthdays"];

    if (v20)
    {
      if (v29 >= 1 && [v18 count] >= 2 && (objc_msgSend(v18, "objectAtIndexedSubscript:", 0), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", @"_systemCalendar"), v21, v22))
      {
        v30 = @"_systemCalendar";
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        v18 = v23 = v18;
      }

      else
      {
        v24 = MEMORY[0x1E69AAE08];
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        localeIdentifier = [currentLocale localeIdentifier];
        v23 = [v24 preferredLunarCalendarForLocaleID:localeIdentifier];

        if (v23 && [v18 containsObject:@"_systemCalendar"] && (objc_msgSend(v18, "containsObject:", @"_systemCalendar") & 1) == 0 && objc_msgSend(v18, "count") >= 2)
        {
          v27 = [v18 mutableCopy];
          [v27 removeObject:@"_systemCalendar"];
          [v27 insertObject:@"_systemCalendar" atIndex:0];

          v18 = v27;
        }
      }
    }

    v14 = v18;
  }

  return v14;
}

- (void)saveChangesForItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  [(CNCardPropertyGroup *)self _updateNameValuesForItems:itemsCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_opt_class();
        if ([v11 isSubclassOfClass:{objc_opt_class(), v13}])
        {
          v12 = v10;
          if ([v12 modified])
          {
            [v12 saveChangesImmediately:0];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)policyForItem:(id)item
{
  contactProperty = [item contactProperty];
  sourceContact = [contactProperty sourceContact];
  identifier = [sourceContact identifier];

  policy = [(CNCardPropertyGroup *)self policy];
  contact = [(CNCardGroup *)self contact];
  identifier2 = [contact identifier];
  v10 = [identifier isEqual:identifier2];

  if ((v10 & 1) == 0)
  {
    linkedPolicies = [(CNCardPropertyGroup *)self linkedPolicies];
    v12 = [linkedPolicies objectForKey:identifier];

    policy = v12;
  }

  return policy;
}

- (void)_updateNameValuesForItems:(id)items
{
  v35 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = +[CNContactView nameProperties];
  property = [(CNCardPropertyGroup *)self property];
  v7 = [v5 containsObject:property];

  if (!v7)
  {
    goto LABEL_25;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v9)
  {
LABEL_12:
    value = v8;
    goto LABEL_24;
  }

  v10 = v9;
  v11 = *v30;
LABEL_4:
  v12 = 0;
  while (1)
  {
    if (*v30 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v29 + 1) + 8 * v12);
    v14 = objc_opt_class();
    if (![v14 isSubclassOfClass:objc_opt_class()])
    {
      goto LABEL_10;
    }

    v15 = v13;
    if ([v15 modified])
    {
      break;
    }

LABEL_10:
    if (v10 == ++v12)
    {
      v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  labeledValue = [v15 labeledValue];
  value = [labeledValue value];

  if (!value)
  {
    goto LABEL_25;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        v24 = objc_opt_class();
        if ([v24 isSubclassOfClass:{objc_opt_class(), v25}])
        {
          [v23 updateLabeledValueWithValue:value];
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

LABEL_24:
LABEL_25:
}

- (BOOL)_arrayContainsMaxAllowedItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy count];
  lastObject = [itemsCopy lastObject];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = v5 - (isKindOfClass & 1);
  if ([(CNCardPropertyGroup *)self isFixedValue]|| ![(CNCardPropertyGroup *)self isMultiValue])
  {
    return v5 != (isKindOfClass & 1);
  }

  policy = [(CNCardPropertyGroup *)self policy];
  property = [(CNCardPropertyGroup *)self property];
  v11 = v8 >= [policy _cnui_maximumNumberOfValuesForProperty:property];

  return v11;
}

- (BOOL)labelsAreUnique
{
  property = [(CNCardPropertyGroup *)self property];
  v3 = [property isEqualToString:@"birthdays"];

  return v3;
}

- (BOOL)isRequired
{
  v3 = +[CNContactView requiredNameProperties];
  property = [(CNCardPropertyGroup *)self property];
  if ([v3 containsObject:property])
  {
    v5 = 1;
  }

  else
  {
    property2 = [(CNCardPropertyGroup *)self property];
    v5 = [property2 isEqualToString:*MEMORY[0x1E695C320]];
  }

  return v5;
}

- (BOOL)_shouldShowGroupWhenEditing:(BOOL)editing
{
  v43 = *MEMORY[0x1E69E9840];
  if (!editing)
  {
    property = [(CNCardPropertyGroup *)self property];
    if ([property isEqualToString:*MEMORY[0x1E695C1E0]])
    {
    }

    else
    {
      property2 = [(CNCardPropertyGroup *)self property];
      v9 = [property2 isEqualToString:*MEMORY[0x1E695C3F8]];

      if (!v9)
      {
        property3 = [(CNCardPropertyGroup *)self property];
        v22 = [property3 isEqualToString:*MEMORY[0x1E695C320]];

        if (v22)
        {
          contact = [(CNCardGroup *)self contact];
          isUnknown = [contact isUnknown];

          if (isUnknown)
          {
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            propertyItems = [(CNCardPropertyGroup *)self propertyItems];
            v26 = [propertyItems countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v34;
              while (2)
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v34 != v28)
                  {
                    objc_enumerationMutation(propertyItems);
                  }

                  labeledValue = [*(*(&v33 + 1) + 8 * i) labeledValue];
                  value = [labeledValue value];
                  v32 = [value length];

                  if (v32)
                  {

                    goto LABEL_33;
                  }
                }

                v27 = [propertyItems countByEnumeratingWithState:&v33 objects:v41 count:16];
                if (v27)
                {
                  continue;
                }

                break;
              }
            }

            LOBYTE(v11) = 0;
            return v11;
          }
        }

        goto LABEL_33;
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    propertyItems2 = [(CNCardPropertyGroup *)self propertyItems];
    v11 = [propertyItems2 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v11)
    {
      v12 = *v38;
      while (2)
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(propertyItems2);
          }

          labeledValue2 = [*(*(&v37 + 1) + 8 * j) labeledValue];
          value2 = [labeledValue2 value];

          if (value2)
          {
            LOBYTE(v11) = 1;
            goto LABEL_18;
          }
        }

        v11 = [propertyItems2 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    return v11;
  }

  contact2 = [(CNCardGroup *)self contact];
  isSuggested = [contact2 isSuggested];

  if (isSuggested)
  {
    property4 = [(CNCardPropertyGroup *)self property];
    if ([property4 isEqualToString:*MEMORY[0x1E695C1E0]])
    {

LABEL_20:
      contact3 = [(CNCardGroup *)self contact];
      isSuggestedMe = [contact3 isSuggestedMe];

      return isSuggestedMe;
    }

    property5 = [(CNCardPropertyGroup *)self property];
    v17 = [property5 isEqualToString:*MEMORY[0x1E695C3F8]];

    if (v17)
    {
      goto LABEL_20;
    }
  }

LABEL_33:
  LOBYTE(v11) = 1;
  return v11;
}

- (id)_itemToBeMergedWith:(id)with fromItems:(id)items forEditing:(BOOL)editing
{
  editingCopy = editing;
  v21 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  itemsCopy = items;
  v9 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isEquivalentToItem:withCopy whenEditing:{editingCopy, v16}])
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)_mergeItems:(id)items forEditing:(BOOL)editing
{
  editingCopy = editing;
  v28 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  array = [MEMORY[0x1E695DF70] array];
  if ([(CNCardPropertyGroup *)self _shouldShowGroupWhenEditing:editingCopy])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = itemsCopy;
    obj = itemsCopy;
    v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          if (!([MEMORY[0x1E695CD58] suggestionsShownInEditMode] | !editingCopy))
          {
            if ([v12 isSuggested])
            {
              contact = [(CNCardGroup *)self contact];
              isSuggested = [contact isSuggested];

              if (!isSuggested)
              {
                continue;
              }
            }
          }

          if (editingCopy)
          {
            if ([v12 isSuggested])
            {
              contact2 = [(CNCardGroup *)self contact];
              isSuggestedMe = [contact2 isSuggestedMe];

              if (isSuggestedMe)
              {
                continue;
              }
            }
          }

          v17 = [(CNCardPropertyGroup *)self _itemToBeMergedWith:v12 fromItems:array forEditing:editingCopy];
          v18 = v17;
          if (v17)
          {
            v19 = v17 == v12;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            [array addObject:v12];
          }

          else
          {
            [v17 mergeItem:v12];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    itemsCopy = v21;
  }

  return array;
}

- (id)_loadPropertyItems
{
  v23 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  contact = [(CNCardGroup *)self contact];
  property = [(CNCardPropertyGroup *)self property];
  v6 = [contact valueForKey:property];

  property2 = [(CNCardPropertyGroup *)self property];
  v8 = [property2 isEqualToString:*MEMORY[0x1E695C1C0]];

  if (v6 || [(CNCardPropertyGroup *)self isRequired]|| (([(CNCardPropertyGroup *)self isAdded]| v8) & 1) != 0)
  {
    propertyGroupItemClass = [(CNCardPropertyGroup *)self propertyGroupItemClass];
    if ([(CNCardPropertyGroup *)self isMultiValue])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = v6;
      v10 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v6);
            }

            v14 = [(objc_class *)propertyGroupItemClass propertyGroupItemWithLabeledValue:*(*(&v18 + 1) + 8 * i) group:self contact:contact, v18];
            [array _cn_addNonNilObject:v14];
          }

          v11 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
      }
    }

    else
    {
      if (!v6)
      {
        v6 = [(objc_class *)propertyGroupItemClass emptyValueForLabel:0];
      }

      v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v6];
      v16 = [(objc_class *)propertyGroupItemClass propertyGroupItemWithLabeledValue:v15 group:self contact:contact];
      [array addObject:v16];
    }
  }

  return array;
}

- (Class)propertyGroupItemClass
{
  property = [(CNCardPropertyGroup *)self property];
  v3 = [CNPropertyGroupItem classForProperty:property];

  return v3;
}

- (void)setEditingItems:(id)items
{
  itemsCopy = items;
  if (self->_editingItems != itemsCopy)
  {
    v6 = itemsCopy;
    objc_storeStrong(&self->_editingItems, items);
    itemsCopy = v6;
  }
}

- (NSArray)editingItems
{
  editingItems = self->_editingItems;
  if (!editingItems)
  {
    v4 = [(CNCardPropertyGroup *)self _mergeItems:self->_propertyItems forEditing:1];
    v5 = self->_editingItems;
    self->_editingItems = v4;

    if ([(CNCardPropertyGroup *)self canAddEditingItem])
    {
      v6 = [CNPropertyPlaceholderItem alloc];
      property = [(CNCardPropertyGroup *)self property];
      v8 = [(CNPropertyPlaceholderItem *)v6 initWithProperty:property];

      v9 = [(NSArray *)self->_editingItems arrayByAddingObject:v8];
      v10 = self->_editingItems;
      self->_editingItems = v9;
    }

    editingItems = self->_editingItems;
    if (!self->_originalEditingItems)
    {
      v11 = [(NSArray *)editingItems copy];
      originalEditingItems = self->_originalEditingItems;
      self->_originalEditingItems = v11;

      editingItems = self->_editingItems;
    }
  }

  return editingItems;
}

- (id)displayItems
{
  displayItems = self->_displayItems;
  if (!displayItems)
  {
    v4 = [(CNCardPropertyGroup *)self _mergeItems:self->_propertyItems forEditing:0];
    if ([v4 count] || -[CNCardPropertyGroup showActionsWhenEmpty](self, "showActionsWhenEmpty"))
    {
      actionItems = [(CNCardGroup *)self actionItems];
      v6 = [v4 arrayByAddingObjectsFromArray:actionItems];
      v7 = self->_displayItems;
      self->_displayItems = v6;
    }

    displayItems = self->_displayItems;
  }

  return displayItems;
}

- (void)saveChanges
{
  deletedItems = [(CNCardPropertyGroup *)self deletedItems];
  [(CNCardPropertyGroup *)self saveChangesForItems:deletedItems];

  editingItems = [(CNCardPropertyGroup *)self editingItems];
  [(CNCardPropertyGroup *)self saveChangesForItems:editingItems];

  [(CNCardPropertyGroup *)self setDeletedItems:0];
  originalEditingItems = self->_originalEditingItems;
  self->_originalEditingItems = 0;
}

- (void)reloadDataPreservingChanges:(BOOL)changes
{
  displayItems = self->_displayItems;
  self->_displayItems = 0;

  if (!changes)
  {
    editingItems = self->_editingItems;
    self->_editingItems = 0;

    deletedItems = self->_deletedItems;
    self->_deletedItems = 0;
  }

  self->_propertyItems = [(CNCardPropertyGroup *)self _loadPropertyItems];

  MEMORY[0x1EEE66BB8]();
}

- (int64_t)valueEditingItemsCount
{
  editingItems = [(CNCardPropertyGroup *)self editingItems];
  v4 = [editingItems count];

  editingItems2 = [(CNCardPropertyGroup *)self editingItems];
  lastObject = [editingItems2 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return v4 - (isKindOfClass & 1);
}

- (id)lastEditingItem
{
  editingItems = [(CNCardPropertyGroup *)self editingItems];
  _cn_reversed = [editingItems _cn_reversed];
  v4 = [_cn_reversed _cn_firstObjectPassingTest:&__block_literal_global_3556];

  return v4;
}

BOOL __38__CNCardPropertyGroup_lastEditingItem__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)moveEditingItemFromIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  if ([(CNCardPropertyGroup *)self valueEditingItemsCount]<= index || [(CNCardPropertyGroup *)self valueEditingItemsCount]<= toIndex)
  {
    return 0;
  }

  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  editingItems = [(CNCardPropertyGroup *)self editingItems];
  v9 = [v7 initWithArray:editingItems];

  v10 = [v9 objectAtIndex:index];
  [v9 removeObjectAtIndex:index];
  [v9 insertObject:v10 atIndex:toIndex];
  [(CNCardPropertyGroup *)self setEditingItems:v9];
  v11 = 1;
  [(CNCardPropertyGroup *)self setHasReorderedItems:1];

  return v11;
}

- (void)removeEditingItem:(id)item
{
  v38 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (itemCopy)
  {
    if ([(NSArray *)self->_editingItems containsObject:itemCopy])
    {
      v5 = [(NSArray *)self->_editingItems mutableCopy];
      [v5 removeObjectIdenticalTo:itemCopy];
      v6 = [v5 copy];
      editingItems = self->_editingItems;
      self->_editingItems = v6;

      if ([(CNCardPropertyGroup *)self canAddEditingItem])
      {
        lastObject = [v5 lastObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v10 = [CNPropertyPlaceholderItem alloc];
          property = [(CNCardPropertyGroup *)self property];
          v12 = [(CNPropertyPlaceholderItem *)v10 initWithProperty:property];

          v13 = [(NSArray *)self->_editingItems arrayByAddingObject:v12];
          v14 = self->_editingItems;
          self->_editingItems = v13;
        }
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = self->_originalEditingItems;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
LABEL_9:
      v19 = 0;
      while (1)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v33 + 1) + 8 * v19);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          labeledValue = [v20 labeledValue];
          labeledValue2 = [itemCopy labeledValue];
          v23 = [labeledValue isEqualIgnoringIdentifiers:labeledValue2];

          if (v23)
          {
            break;
          }
        }

        if (v17 == ++v19)
        {
          v17 = [(NSArray *)v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v17)
          {
            goto LABEL_9;
          }

          goto LABEL_16;
        }
      }

      v28 = objc_opt_class();
      labeledValue3 = [itemCopy labeledValue];
      label = [labeledValue3 label];
      v31 = [v28 emptyValueForLabel:label];
      [itemCopy updateLabeledValueWithValue:v31];

      deletedItems = [(CNCardPropertyGroup *)self deletedItems];

      if (deletedItems)
      {
        deletedItems2 = [(CNCardPropertyGroup *)self deletedItems];
        label2 = [deletedItems2 arrayByAddingObject:itemCopy];
        [(CNCardPropertyGroup *)self setDeletedItems:label2];
        goto LABEL_19;
      }

      deletedItems2 = [MEMORY[0x1E695DEC8] arrayWithObject:itemCopy];
      [(CNCardPropertyGroup *)self setDeletedItems:deletedItems2];
    }

    else
    {
LABEL_16:

      v24 = objc_opt_class();
      deletedItems2 = [itemCopy labeledValue];
      label2 = [deletedItems2 label];
      v27 = [v24 emptyValueForLabel:label2];
      [itemCopy updateLabeledValueWithValue:v27];

LABEL_19:
    }
  }
}

- (BOOL)addEditingItem:(id)item
{
  itemCopy = item;
  canAddEditingItem = [(CNCardPropertyGroup *)self canAddEditingItem];
  if (!canAddEditingItem)
  {
    goto LABEL_10;
  }

  editingItems = [(CNCardPropertyGroup *)self editingItems];
  v7 = [editingItems count];

  if (!v7)
  {
    [(CNCardPropertyGroup *)self setIsAdded:1];
    [(CNCardPropertyGroup *)self reloadDataPreservingChanges:0];
    goto LABEL_10;
  }

  editingItems2 = [(CNCardPropertyGroup *)self editingItems];
  array = [editingItems2 mutableCopy];

  if (array)
  {
    if (itemCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    if (itemCopy)
    {
      goto LABEL_5;
    }
  }

  propertyGroupItemClass = [(CNCardPropertyGroup *)self propertyGroupItemClass];
  nextAvailableLabel = [(CNCardPropertyGroup *)self nextAvailableLabel];
  contact = [(CNCardGroup *)self contact];
  itemCopy = [(objc_class *)propertyGroupItemClass propertyGroupItemWithLabel:nextAvailableLabel group:self contact:contact];

LABEL_5:
  editingItems3 = [(CNCardPropertyGroup *)self editingItems];
  [array insertObject:itemCopy atIndex:{objc_msgSend(editingItems3, "count") - 1}];

  if ([(CNCardPropertyGroup *)self _arrayContainsMaxAllowedItems:array])
  {
    lastObject = [array lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [array removeLastObject];
    }
  }

  [(CNCardPropertyGroup *)self setEditingItems:array];

LABEL_10:
  return canAddEditingItem;
}

- (id)nextAvailableLabel
{
  property = [(CNCardPropertyGroup *)self property];
  v4 = [property isEqualToString:*MEMORY[0x1E695C3D0]];

  if (v4)
  {
    _nextAvailableSocialService = [(CNCardPropertyGroup *)self _nextAvailableSocialService];
  }

  else
  {
    property2 = [(CNCardPropertyGroup *)self property];
    v7 = [property2 isEqualToString:*MEMORY[0x1E695C2B0]];

    if (v7)
    {
      [(CNCardPropertyGroup *)self _nextAvailableInstantMessageService];
    }

    else
    {
      [(CNCardPropertyGroup *)self _nextAvailableLabel];
    }
    _nextAvailableSocialService = ;
  }

  return _nextAvailableSocialService;
}

- (BOOL)modified
{
  v16 = *MEMORY[0x1E69E9840];
  deletedItems = [(CNCardPropertyGroup *)self deletedItems];
  v4 = [deletedItems count];

  if (v4 || [(CNCardPropertyGroup *)self hasReorderedItems])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    editingItems = [(CNCardPropertyGroup *)self editingItems];
    v5 = [editingItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(editingItems);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 modified])
          {
            LOBYTE(v5) = 1;
            goto LABEL_16;
          }
        }

        v5 = [editingItems countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  return v5;
}

- (BOOL)isMultiLine
{
  property = [(CNCardPropertyGroup *)self property];
  if ([property isEqualToString:*MEMORY[0x1E695C360]])
  {
    v4 = 1;
  }

  else
  {
    property2 = [(CNCardPropertyGroup *)self property];
    v4 = [property2 isEqualToString:*MEMORY[0x1E695C320]];
  }

  return v4;
}

- (BOOL)isFixedValue
{
  property = [(CNCardPropertyGroup *)self property];
  v3 = [CNContactView isFixedValueProperty:property];

  return v3;
}

- (BOOL)isMultiValue
{
  property = [(CNCardPropertyGroup *)self property];
  v3 = [CNContactView isMultiValueProperty:property];

  return v3;
}

- (BOOL)allowsAdding
{
  displayItems = [(CNCardPropertyGroup *)self displayItems];
  if ([displayItems count] && !-[CNCardPropertyGroup isMultiValue](self, "isMultiValue"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(CNCardPropertyGroup *)self isFixedValue];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  property = [(CNCardPropertyGroup *)self property];
  displayItems = [(CNCardPropertyGroup *)self displayItems];
  v7 = [displayItems count];
  editingItems = [(CNCardPropertyGroup *)self editingItems];
  v9 = [editingItems count];
  actions = [(CNCardGroup *)self actions];
  v11 = [v3 stringWithFormat:@"<%@ %p> [%@]: %d/%d items, %d actions", v4, self, property, v7, v9, objc_msgSend(actions, "count")];

  return v11;
}

- (CNCardPropertyGroup)initWithProperty:(id)property contact:(id)contact store:(id)store policy:(id)policy linkedPolicies:(id)policies
{
  propertyCopy = property;
  storeCopy = store;
  policyCopy = policy;
  policiesCopy = policies;
  v22.receiver = self;
  v22.super_class = CNCardPropertyGroup;
  v17 = [(CNCardGroup *)&v22 initWithContact:contact];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_property, property);
    _loadPropertyItems = [(CNCardPropertyGroup *)v18 _loadPropertyItems];
    propertyItems = v18->_propertyItems;
    v18->_propertyItems = _loadPropertyItems;

    objc_storeStrong(&v18->_policy, policy);
    objc_storeStrong(&v18->_contactStore, store);
    objc_storeStrong(&v18->_linkedPolicies, policies);
    v18->_allowsDisplayModePickerActions = 1;
    v18->_hasReorderedItems = 0;
    [(CNCardPropertyGroup *)v18 setShowActionsWhenEmpty:0];
  }

  return v18;
}

+ (id)groupForProperty:(id)property contact:(id)contact store:(id)store policy:(id)policy linkedPolicies:(id)policies
{
  policiesCopy = policies;
  policyCopy = policy;
  storeCopy = store;
  contactCopy = contact;
  propertyCopy = property;
  v17 = [[self alloc] initWithProperty:propertyCopy contact:contactCopy store:storeCopy policy:policyCopy linkedPolicies:policiesCopy];

  return v17;
}

@end