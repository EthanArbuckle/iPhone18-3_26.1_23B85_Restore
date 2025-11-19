@interface CNCardPropertyGroup
+ (id)groupForProperty:(id)a3 contact:(id)a4 store:(id)a5 policy:(id)a6 linkedPolicies:(id)a7;
- (BOOL)_arrayContainsMaxAllowedItems:(id)a3;
- (BOOL)_shouldShowGroupWhenEditing:(BOOL)a3;
- (BOOL)addEditingItem:(id)a3;
- (BOOL)allowsAdding;
- (BOOL)isFixedValue;
- (BOOL)isMultiLine;
- (BOOL)isMultiValue;
- (BOOL)isRequired;
- (BOOL)labelsAreUnique;
- (BOOL)modified;
- (BOOL)moveEditingItemFromIndex:(int64_t)a3 toIndex:(int64_t)a4;
- (CNCardPropertyGroup)initWithProperty:(id)a3 contact:(id)a4 store:(id)a5 policy:(id)a6 linkedPolicies:(id)a7;
- (Class)propertyGroupItemClass;
- (NSArray)editingItems;
- (id)_availableLabelsInLabels:(id)a3 forItem:(id)a4 withValueSelector:(SEL)a5 usedLabelsCount:(int64_t *)a6;
- (id)_itemToBeMergedWith:(id)a3 fromItems:(id)a4 forEditing:(BOOL)a5;
- (id)_loadPropertyItems;
- (id)_mergeItems:(id)a3 forEditing:(BOOL)a4;
- (id)_nextAvailableInstantMessageService;
- (id)_nextAvailableLabel;
- (id)_nextAvailableLabelInLabels:(id)a3 withValueSelector:(SEL)a4;
- (id)_nextAvailableSocialService;
- (id)description;
- (id)displayItems;
- (id)itemsUsingLabel:(id)a3;
- (id)labelsForItem:(id)a3 options:(unint64_t)a4;
- (id)labelsInUseByGroup;
- (id)lastEditingItem;
- (id)nextAvailableLabel;
- (id)policyForItem:(id)a3;
- (int64_t)valueEditingItemsCount;
- (void)_updateNameValuesForItems:(id)a3;
- (void)reloadDataPreservingChanges:(BOOL)a3;
- (void)removeEditingItem:(id)a3;
- (void)saveChanges;
- (void)saveChangesForItems:(id)a3;
- (void)setEditingItems:(id)a3;
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
  v3 = [(CNCardPropertyGroup *)self policy];
  v4 = [v3 supportedLabelsForContactProperty:*MEMORY[0x1E695C3D0]];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = +[CNInstantMessagePickerController defaultServices];
    v7 = [(CNCardGroup *)self contact];
    v8 = [v7 supportsInstantMessageService];

    if (v8)
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

- (id)_nextAvailableLabelInLabels:(id)a3 withValueSelector:(SEL)a4
{
  v6 = a3;
  v13 = 0;
  v7 = [(CNCardPropertyGroup *)self _availableLabelsInLabels:v6 forItem:0 withValueSelector:a4 usedLabelsCount:&v13];
  if ([v7 count])
  {
    v8 = v7;
    v9 = 0;
  }

  else
  {
    if ([v6 count])
    {
      v10 = v13;
      v9 = v10 % [v6 count];
    }

    else
    {
      v9 = 0;
    }

    v8 = v6;
  }

  v11 = [v8 objectAtIndexedSubscript:v9];

  return v11;
}

- (id)_availableLabelsInLabels:(id)a3 forItem:(id)a4 withValueSelector:(SEL)a5 usedLabelsCount:(int64_t *)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v35 = a4;
  v9 = [MEMORY[0x1E695DFA8] set];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v31 = self;
  v10 = [(CNCardPropertyGroup *)self editingItems];
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 labeledValue];
          v17 = [v16 value];

          if (a5)
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v22 = [MEMORY[0x1E696AAA8] currentHandler];
              [v22 handleFailureInMethod:a2 object:v31 file:@"CNCardPropertyGroup.m" lineNumber:601 description:@"A valueSelector has been specified but the value doesn’t support it."];
            }

            v18 = ([v17 methodForSelector:a5])(v17, a5);
            if (v18)
            {
              [v9 addObject:v18];
            }

LABEL_15:
          }

          else if (v15 != v35)
          {
            v19 = [v15 labeledValue];
            v20 = [v19 label];

            if (v20)
            {
              v18 = [v15 labeledValue];
              v21 = [v18 label];
              [v9 addObject:v21];

              goto LABEL_15;
            }
          }

          continue;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v12);
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v24 = v33;
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
          [v23 addObject:v29];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v26);
  }

  if (a6)
  {
    *a6 = [v9 count];
  }

  return v23;
}

- (id)itemsUsingLabel:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(CNCardPropertyGroup *)self editingItems];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 labeledValue];
          v13 = [v12 label];

          if ([v13 isEqualToString:v4])
          {
            [v5 addObject:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)labelsInUseByGroup
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CNCardPropertyGroup *)self editingItems];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 labeledValue];
          v12 = [v11 label];

          if ((*(v8 + 16))(v8, v12))
          {
            [v3 addObject:v12];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)labelsForItem:(id)a3 options:(unint64_t)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CNCardPropertyGroup *)self property];
  v8 = [v7 isEqualToString:@"birthdays"];

  v9 = [(CNCardPropertyGroup *)self policy];
  v10 = v9;
  if (v8)
  {
    v11 = [v9 _cnui_maximumNumberOfValuesForProperty:@"birthdays"];

    if (v11 < 2)
    {
      v31 = @"_systemCalendar";
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    }

    else
    {
      v32[0] = @"_systemCalendar";
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      v13 = [MEMORY[0x1E6996B48] availableAlternateCalendars];
      v14 = [v12 arrayByAddingObjectsFromArray:v13];
    }
  }

  else
  {
    v15 = [(CNCardPropertyGroup *)self property];
    v14 = [v10 supportedLabelsForContactProperty:v15];

    if (!v14)
    {
      v16 = MEMORY[0x1E695CE18];
      v17 = [(CNCardPropertyGroup *)self property];
      v14 = [v16 standardLabelsForPropertyWithKey:v17 options:a4];
    }
  }

  v29 = 0;
  if ([(CNCardPropertyGroup *)self labelsAreUnique])
  {
    v18 = [(CNCardPropertyGroup *)self _availableLabelsInLabels:v14 forItem:v6 withValueSelector:0 usedLabelsCount:&v29];

    v19 = [(CNCardPropertyGroup *)self property];
    v20 = [v19 isEqualToString:@"birthdays"];

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
        v25 = [MEMORY[0x1E695DF58] currentLocale];
        v26 = [v25 localeIdentifier];
        v23 = [v24 preferredLunarCalendarForLocaleID:v26];

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

- (void)saveChangesForItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CNCardPropertyGroup *)self _updateNameValuesForItems:v4];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
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

- (id)policyForItem:(id)a3
{
  v4 = [a3 contactProperty];
  v5 = [v4 sourceContact];
  v6 = [v5 identifier];

  v7 = [(CNCardPropertyGroup *)self policy];
  v8 = [(CNCardGroup *)self contact];
  v9 = [v8 identifier];
  v10 = [v6 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [(CNCardPropertyGroup *)self linkedPolicies];
    v12 = [v11 objectForKey:v6];

    v7 = v12;
  }

  return v7;
}

- (void)_updateNameValuesForItems:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CNContactView nameProperties];
  v6 = [(CNCardPropertyGroup *)self property];
  v7 = [v5 containsObject:v6];

  if (!v7)
  {
    goto LABEL_25;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v9)
  {
LABEL_12:
    v16 = v8;
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

  v17 = [v15 labeledValue];
  v16 = [v17 value];

  if (!v16)
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
          [v23 updateLabeledValueWithValue:v16];
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

- (BOOL)_arrayContainsMaxAllowedItems:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = [v4 lastObject];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = v5 - (isKindOfClass & 1);
  if ([(CNCardPropertyGroup *)self isFixedValue]|| ![(CNCardPropertyGroup *)self isMultiValue])
  {
    return v5 != (isKindOfClass & 1);
  }

  v9 = [(CNCardPropertyGroup *)self policy];
  v10 = [(CNCardPropertyGroup *)self property];
  v11 = v8 >= [v9 _cnui_maximumNumberOfValuesForProperty:v10];

  return v11;
}

- (BOOL)labelsAreUnique
{
  v2 = [(CNCardPropertyGroup *)self property];
  v3 = [v2 isEqualToString:@"birthdays"];

  return v3;
}

- (BOOL)isRequired
{
  v3 = +[CNContactView requiredNameProperties];
  v4 = [(CNCardPropertyGroup *)self property];
  if ([v3 containsObject:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(CNCardPropertyGroup *)self property];
    v5 = [v6 isEqualToString:*MEMORY[0x1E695C320]];
  }

  return v5;
}

- (BOOL)_shouldShowGroupWhenEditing:(BOOL)a3
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v7 = [(CNCardPropertyGroup *)self property];
    if ([v7 isEqualToString:*MEMORY[0x1E695C1E0]])
    {
    }

    else
    {
      v8 = [(CNCardPropertyGroup *)self property];
      v9 = [v8 isEqualToString:*MEMORY[0x1E695C3F8]];

      if (!v9)
      {
        v21 = [(CNCardPropertyGroup *)self property];
        v22 = [v21 isEqualToString:*MEMORY[0x1E695C320]];

        if (v22)
        {
          v23 = [(CNCardGroup *)self contact];
          v24 = [v23 isUnknown];

          if (v24)
          {
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v25 = [(CNCardPropertyGroup *)self propertyItems];
            v26 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
                    objc_enumerationMutation(v25);
                  }

                  v30 = [*(*(&v33 + 1) + 8 * i) labeledValue];
                  v31 = [v30 value];
                  v32 = [v31 length];

                  if (v32)
                  {

                    goto LABEL_33;
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
    v10 = [(CNCardPropertyGroup *)self propertyItems];
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v11)
    {
      v12 = *v38;
      while (2)
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v37 + 1) + 8 * j) labeledValue];
          v15 = [v14 value];

          if (v15)
          {
            LOBYTE(v11) = 1;
            goto LABEL_18;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v37 objects:v42 count:16];
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

  v4 = [(CNCardGroup *)self contact];
  v5 = [v4 isSuggested];

  if (v5)
  {
    v6 = [(CNCardPropertyGroup *)self property];
    if ([v6 isEqualToString:*MEMORY[0x1E695C1E0]])
    {

LABEL_20:
      v18 = [(CNCardGroup *)self contact];
      v19 = [v18 isSuggestedMe];

      return v19;
    }

    v16 = [(CNCardPropertyGroup *)self property];
    v17 = [v16 isEqualToString:*MEMORY[0x1E695C3F8]];

    if (v17)
    {
      goto LABEL_20;
    }
  }

LABEL_33:
  LOBYTE(v11) = 1;
  return v11;
}

- (id)_itemToBeMergedWith:(id)a3 fromItems:(id)a4 forEditing:(BOOL)a5
{
  v5 = a5;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = a4;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isEquivalentToItem:v7 whenEditing:{v5, v16}])
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)_mergeItems:(id)a3 forEditing:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  if ([(CNCardPropertyGroup *)self _shouldShowGroupWhenEditing:v4])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = v6;
    obj = v6;
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
          if (!([MEMORY[0x1E695CD58] suggestionsShownInEditMode] | !v4))
          {
            if ([v12 isSuggested])
            {
              v13 = [(CNCardGroup *)self contact];
              v14 = [v13 isSuggested];

              if (!v14)
              {
                continue;
              }
            }
          }

          if (v4)
          {
            if ([v12 isSuggested])
            {
              v15 = [(CNCardGroup *)self contact];
              v16 = [v15 isSuggestedMe];

              if (v16)
              {
                continue;
              }
            }
          }

          v17 = [(CNCardPropertyGroup *)self _itemToBeMergedWith:v12 fromItems:v7 forEditing:v4];
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
            [v7 addObject:v12];
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

    v6 = v21;
  }

  return v7;
}

- (id)_loadPropertyItems
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CNCardGroup *)self contact];
  v5 = [(CNCardPropertyGroup *)self property];
  v6 = [v4 valueForKey:v5];

  v7 = [(CNCardPropertyGroup *)self property];
  v8 = [v7 isEqualToString:*MEMORY[0x1E695C1C0]];

  if (v6 || [(CNCardPropertyGroup *)self isRequired]|| (([(CNCardPropertyGroup *)self isAdded]| v8) & 1) != 0)
  {
    v9 = [(CNCardPropertyGroup *)self propertyGroupItemClass];
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

            v14 = [(objc_class *)v9 propertyGroupItemWithLabeledValue:*(*(&v18 + 1) + 8 * i) group:self contact:v4, v18];
            [v3 _cn_addNonNilObject:v14];
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
        v6 = [(objc_class *)v9 emptyValueForLabel:0];
      }

      v15 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v6];
      v16 = [(objc_class *)v9 propertyGroupItemWithLabeledValue:v15 group:self contact:v4];
      [v3 addObject:v16];
    }
  }

  return v3;
}

- (Class)propertyGroupItemClass
{
  v2 = [(CNCardPropertyGroup *)self property];
  v3 = [CNPropertyGroupItem classForProperty:v2];

  return v3;
}

- (void)setEditingItems:(id)a3
{
  v5 = a3;
  if (self->_editingItems != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_editingItems, a3);
    v5 = v6;
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
      v7 = [(CNCardPropertyGroup *)self property];
      v8 = [(CNPropertyPlaceholderItem *)v6 initWithProperty:v7];

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
      v5 = [(CNCardGroup *)self actionItems];
      v6 = [v4 arrayByAddingObjectsFromArray:v5];
      v7 = self->_displayItems;
      self->_displayItems = v6;
    }

    displayItems = self->_displayItems;
  }

  return displayItems;
}

- (void)saveChanges
{
  v3 = [(CNCardPropertyGroup *)self deletedItems];
  [(CNCardPropertyGroup *)self saveChangesForItems:v3];

  v4 = [(CNCardPropertyGroup *)self editingItems];
  [(CNCardPropertyGroup *)self saveChangesForItems:v4];

  [(CNCardPropertyGroup *)self setDeletedItems:0];
  originalEditingItems = self->_originalEditingItems;
  self->_originalEditingItems = 0;
}

- (void)reloadDataPreservingChanges:(BOOL)a3
{
  displayItems = self->_displayItems;
  self->_displayItems = 0;

  if (!a3)
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
  v3 = [(CNCardPropertyGroup *)self editingItems];
  v4 = [v3 count];

  v5 = [(CNCardPropertyGroup *)self editingItems];
  v6 = [v5 lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return v4 - (isKindOfClass & 1);
}

- (id)lastEditingItem
{
  v2 = [(CNCardPropertyGroup *)self editingItems];
  v3 = [v2 _cn_reversed];
  v4 = [v3 _cn_firstObjectPassingTest:&__block_literal_global_3556];

  return v4;
}

BOOL __38__CNCardPropertyGroup_lastEditingItem__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)moveEditingItemFromIndex:(int64_t)a3 toIndex:(int64_t)a4
{
  if ([(CNCardPropertyGroup *)self valueEditingItemsCount]<= a3 || [(CNCardPropertyGroup *)self valueEditingItemsCount]<= a4)
  {
    return 0;
  }

  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = [(CNCardPropertyGroup *)self editingItems];
  v9 = [v7 initWithArray:v8];

  v10 = [v9 objectAtIndex:a3];
  [v9 removeObjectAtIndex:a3];
  [v9 insertObject:v10 atIndex:a4];
  [(CNCardPropertyGroup *)self setEditingItems:v9];
  v11 = 1;
  [(CNCardPropertyGroup *)self setHasReorderedItems:1];

  return v11;
}

- (void)removeEditingItem:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if ([(NSArray *)self->_editingItems containsObject:v4])
    {
      v5 = [(NSArray *)self->_editingItems mutableCopy];
      [v5 removeObjectIdenticalTo:v4];
      v6 = [v5 copy];
      editingItems = self->_editingItems;
      self->_editingItems = v6;

      if ([(CNCardPropertyGroup *)self canAddEditingItem])
      {
        v8 = [v5 lastObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v10 = [CNPropertyPlaceholderItem alloc];
          v11 = [(CNCardPropertyGroup *)self property];
          v12 = [(CNPropertyPlaceholderItem *)v10 initWithProperty:v11];

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
          v21 = [v20 labeledValue];
          v22 = [v4 labeledValue];
          v23 = [v21 isEqualIgnoringIdentifiers:v22];

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
      v29 = [v4 labeledValue];
      v30 = [v29 label];
      v31 = [v28 emptyValueForLabel:v30];
      [v4 updateLabeledValueWithValue:v31];

      v32 = [(CNCardPropertyGroup *)self deletedItems];

      if (v32)
      {
        v25 = [(CNCardPropertyGroup *)self deletedItems];
        v26 = [v25 arrayByAddingObject:v4];
        [(CNCardPropertyGroup *)self setDeletedItems:v26];
        goto LABEL_19;
      }

      v25 = [MEMORY[0x1E695DEC8] arrayWithObject:v4];
      [(CNCardPropertyGroup *)self setDeletedItems:v25];
    }

    else
    {
LABEL_16:

      v24 = objc_opt_class();
      v25 = [v4 labeledValue];
      v26 = [v25 label];
      v27 = [v24 emptyValueForLabel:v26];
      [v4 updateLabeledValueWithValue:v27];

LABEL_19:
    }
  }
}

- (BOOL)addEditingItem:(id)a3
{
  v4 = a3;
  v5 = [(CNCardPropertyGroup *)self canAddEditingItem];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNCardPropertyGroup *)self editingItems];
  v7 = [v6 count];

  if (!v7)
  {
    [(CNCardPropertyGroup *)self setIsAdded:1];
    [(CNCardPropertyGroup *)self reloadDataPreservingChanges:0];
    goto LABEL_10;
  }

  v8 = [(CNCardPropertyGroup *)self editingItems];
  v9 = [v8 mutableCopy];

  if (v9)
  {
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E695DF70] array];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v14 = [(CNCardPropertyGroup *)self propertyGroupItemClass];
  v15 = [(CNCardPropertyGroup *)self nextAvailableLabel];
  v16 = [(CNCardGroup *)self contact];
  v4 = [(objc_class *)v14 propertyGroupItemWithLabel:v15 group:self contact:v16];

LABEL_5:
  v10 = [(CNCardPropertyGroup *)self editingItems];
  [v9 insertObject:v4 atIndex:{objc_msgSend(v10, "count") - 1}];

  if ([(CNCardPropertyGroup *)self _arrayContainsMaxAllowedItems:v9])
  {
    v11 = [v9 lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [v9 removeLastObject];
    }
  }

  [(CNCardPropertyGroup *)self setEditingItems:v9];

LABEL_10:
  return v5;
}

- (id)nextAvailableLabel
{
  v3 = [(CNCardPropertyGroup *)self property];
  v4 = [v3 isEqualToString:*MEMORY[0x1E695C3D0]];

  if (v4)
  {
    v5 = [(CNCardPropertyGroup *)self _nextAvailableSocialService];
  }

  else
  {
    v6 = [(CNCardPropertyGroup *)self property];
    v7 = [v6 isEqualToString:*MEMORY[0x1E695C2B0]];

    if (v7)
    {
      [(CNCardPropertyGroup *)self _nextAvailableInstantMessageService];
    }

    else
    {
      [(CNCardPropertyGroup *)self _nextAvailableLabel];
    }
    v5 = ;
  }

  return v5;
}

- (BOOL)modified
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CNCardPropertyGroup *)self deletedItems];
  v4 = [v3 count];

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
    v7 = [(CNCardPropertyGroup *)self editingItems];
    v5 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([v10 modified])
          {
            LOBYTE(v5) = 1;
            goto LABEL_16;
          }
        }

        v5 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(CNCardPropertyGroup *)self property];
  if ([v3 isEqualToString:*MEMORY[0x1E695C360]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CNCardPropertyGroup *)self property];
    v4 = [v5 isEqualToString:*MEMORY[0x1E695C320]];
  }

  return v4;
}

- (BOOL)isFixedValue
{
  v2 = [(CNCardPropertyGroup *)self property];
  v3 = [CNContactView isFixedValueProperty:v2];

  return v3;
}

- (BOOL)isMultiValue
{
  v2 = [(CNCardPropertyGroup *)self property];
  v3 = [CNContactView isMultiValueProperty:v2];

  return v3;
}

- (BOOL)allowsAdding
{
  v3 = [(CNCardPropertyGroup *)self displayItems];
  if ([v3 count] && !-[CNCardPropertyGroup isMultiValue](self, "isMultiValue"))
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
  v5 = [(CNCardPropertyGroup *)self property];
  v6 = [(CNCardPropertyGroup *)self displayItems];
  v7 = [v6 count];
  v8 = [(CNCardPropertyGroup *)self editingItems];
  v9 = [v8 count];
  v10 = [(CNCardGroup *)self actions];
  v11 = [v3 stringWithFormat:@"<%@ %p> [%@]: %d/%d items, %d actions", v4, self, v5, v7, v9, objc_msgSend(v10, "count")];

  return v11;
}

- (CNCardPropertyGroup)initWithProperty:(id)a3 contact:(id)a4 store:(id)a5 policy:(id)a6 linkedPolicies:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = CNCardPropertyGroup;
  v17 = [(CNCardGroup *)&v22 initWithContact:a4];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_property, a3);
    v19 = [(CNCardPropertyGroup *)v18 _loadPropertyItems];
    propertyItems = v18->_propertyItems;
    v18->_propertyItems = v19;

    objc_storeStrong(&v18->_policy, a6);
    objc_storeStrong(&v18->_contactStore, a5);
    objc_storeStrong(&v18->_linkedPolicies, a7);
    v18->_allowsDisplayModePickerActions = 1;
    v18->_hasReorderedItems = 0;
    [(CNCardPropertyGroup *)v18 setShowActionsWhenEmpty:0];
  }

  return v18;
}

+ (id)groupForProperty:(id)a3 contact:(id)a4 store:(id)a5 policy:(id)a6 linkedPolicies:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithProperty:v16 contact:v15 store:v14 policy:v13 linkedPolicies:v12];

  return v17;
}

@end