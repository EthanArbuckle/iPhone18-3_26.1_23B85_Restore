@interface CNPropertyGroupItem
+ (CNPropertyGroupItem)propertyGroupItemWithLabel:(id)a3 group:(id)a4 contact:(id)a5;
+ (CNPropertyGroupItem)propertyGroupItemWithLabel:(id)a3 group:(id)a4 contact:(id)a5 environment:(id)a6;
+ (CNPropertyGroupItem)propertyGroupItemWithLabeledValue:(id)a3 group:(id)a4 contact:(id)a5;
+ (CNPropertyGroupItem)propertyGroupItemWithLabeledValue:(id)a3 group:(id)a4 contact:(id)a5 environment:(id)a6;
+ (Class)classForProperty:(id)a3;
+ (id)newPropertyGroupItemForProperty:(id)a3;
+ (void)deleteCoreRecentsEntriesMatchingProperty:(id)a3 recentsManager:(id)a4;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToItem:(id)a3;
- (BOOL)isEquivalentToItem:(id)a3 whenEditing:(BOOL)a4;
- (BOOL)isFavoriteOfActionType:(id)a3 bundleIdentifier:(id)a4;
- (BOOL)isReadonly;
- (BOOL)isSuggested;
- (BOOL)isValidIdentifier:(id)a3;
- (BOOL)isValidValue:(id)a3;
- (BOOL)modified;
- (BOOL)shouldCreateNewMeContactToSaveChangesTo;
- (CNCardPropertyGroup)group;
- (CNContactProperty)contactProperty;
- (CNMutableContact)mutableContact;
- (CNPropertyGroupItem)init;
- (CNPropertyGroupItem)initWithGroup:(id)a3;
- (CNPropertyGroupItem)initWithLabel:(id)a3 group:(id)a4 contact:(id)a5 environment:(id)a6;
- (CNPropertyGroupItem)initWithLabeledValue:(id)a3 group:(id)a4 contact:(id)a5 environment:(id)a6;
- (CNPropertyGroupItemDelegate)delegate;
- (NSArray)extendedLabels;
- (NSArray)promotedExtendedLabels;
- (NSArray)standardLabels;
- (NSString)displayLabel;
- (NSString)displayValue;
- (NSString)placeholderString;
- (id)bestLabel:(id)a3;
- (id)bestValue:(id)a3;
- (id)contactViewCache;
- (id)description;
- (id)labeledValueToCurateFromSuggestion;
- (id)normalizedValue;
- (id)replacementForInvalidValue:(id)a3;
- (id)updateWithLabel:(id)a3 value:(id)a4;
- (int)anyContactLegacyIdentifier;
- (int)labeledValueMultiValueIdentifierForChosenSourceContact;
- (void)_removeSuggestion;
- (void)confirmSuggestion;
- (void)mergeItem:(id)a3;
- (void)saveChangesImmediately:(BOOL)a3;
- (void)updateLabeledValueWithLabel:(id)a3;
- (void)updateLabeledValueWithValue:(id)a3;
@end

@implementation CNPropertyGroupItem

- (CNPropertyGroupItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNCardPropertyGroup)group
{
  WeakRetained = objc_loadWeakRetained(&self->_group);

  return WeakRetained;
}

- (BOOL)shouldCreateNewMeContactToSaveChangesTo
{
  if (![(CNPropertyGroupItem *)self modified])
  {
    return 0;
  }

  v3 = [(CNPropertyGroupItem *)self mutableContact];
  if ([v3 isSuggestedMe])
  {
    v4 = *MEMORY[0x1E6996530];
    v5 = [(CNPropertyGroupItem *)self mutableContact];
    v6 = [v5 linkedContacts];
    v7 = (*(v4 + 16))(v4, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)saveChangesImmediately:(BOOL)a3
{
  v3 = a3;
  v78 = *MEMORY[0x1E69E9840];
  if ([(CNPropertyGroupItem *)self modified])
  {
    v5 = [(CNPropertyGroupItem *)self mutableContact];
    if (v5)
    {
      v6 = [(CNPropertyGroupItem *)self labeledValue];
      v7 = [v6 identifier];
      v8 = [(CNPropertyGroupItem *)self contactViewCache];
      v9 = [v8 policyForContact:v5];

      if (([v9 isReadonly] & 1) == 0)
      {
        v10 = [v6 value];
        v11 = [(CNPropertyGroupItem *)self isValidValue:v10];

        v12 = [(CNPropertyGroupItem *)self property];
        LODWORD(v10) = [CNContactView isMultiValueProperty:v12];

        if (v10)
        {
          v60 = v11;
          v62 = v3;
          v65 = v9;
          v66 = v6;
          v13 = [(CNPropertyGroupItem *)self property];
          v63 = v5;
          v14 = [v5 valueForKey:v13];

          v61 = v14;
          [MEMORY[0x1E695DF70] arrayWithArray:v14];
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v15 = v71 = 0u;
          v16 = [v15 countByEnumeratingWithState:&v68 objects:v77 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = 0;
            v19 = *v69;
            while (2)
            {
              v20 = 0;
              v64 = v18 + v17;
              do
              {
                if (*v69 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v68 + 1) + 8 * v20);
                v22 = [v21 identifier];
                if ([v22 isEqualToString:v7])
                {
                  v23 = [v21 identifier];
                  v24 = [(CNPropertyGroupItem *)self isValidIdentifier:v23];

                  if (v24)
                  {
                    if (v60)
                    {
                      v6 = v66;
                      [v15 setObject:v66 atIndexedSubscript:v18];

                      v5 = v63;
                    }

                    else
                    {
                      [v15 removeObjectAtIndex:v18];

                      v31 = [(CNPropertyGroupItem *)self environment];
                      v32 = [v31 recentsManager];

                      v33 = MEMORY[0x1E695CE08];
                      v34 = [(CNPropertyGroupItem *)self contact];
                      v35 = [(CNPropertyGroupItem *)self property];
                      v36 = [(CNPropertyGroupItem *)self originalLabeledValue];
                      v37 = [v36 identifier];
                      v38 = [v33 contactPropertyWithContactNoCopy:v34 propertyKey:v35 identifier:v37];

                      [objc_opt_class() deleteCoreRecentsEntriesMatchingProperty:v38 recentsManager:v32];
                      v5 = v63;
                      v6 = v66;
                    }

                    v9 = v65;
                    v3 = v62;
                    goto LABEL_29;
                  }
                }

                else
                {
                }

                ++v18;
                ++v20;
              }

              while (v17 != v20);
              v17 = [v15 countByEnumeratingWithState:&v68 objects:v77 count:16];
              v18 = v64;
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v5 = v63;
          v9 = v65;
          v6 = v66;
          v3 = v62;
          if (v60)
          {
            [v15 addObject:v66];
          }

LABEL_29:
          v39 = CNUILogContactCard();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [(CNPropertyGroupItem *)self property];
            *buf = 138543618;
            v74 = v40;
            v75 = 2050;
            v76 = v5;
            _os_log_impl(&dword_199A75000, v39, OS_LOG_TYPE_DEFAULT, "[CNPropertyGroupItem] updating contact value (multivalue) for property %{public}@, contact %{public}p", buf, 0x16u);
          }

          v41 = [(CNPropertyGroupItem *)self property];
          [v5 setValue:v15 forKey:v41];

          v28 = v61;
        }

        else
        {
          v25 = CNUILogContactCard();
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          if (v11)
          {
            if (v26)
            {
              v27 = [(CNPropertyGroupItem *)self property];
              *buf = 138543618;
              v74 = v27;
              v75 = 2050;
              v76 = v5;
              _os_log_impl(&dword_199A75000, v25, OS_LOG_TYPE_DEFAULT, "[CNPropertyGroupItem] updating contact value for property %{public}@, contact %{public}p", buf, 0x16u);
            }

            v28 = [v6 value];
            v29 = [(CNPropertyGroupItem *)self property];
            [v5 setValue:v28 forKey:v29];
          }

          else
          {
            if (v26)
            {
              v30 = [(CNPropertyGroupItem *)self property];
              *buf = 138543618;
              v74 = v30;
              v75 = 2050;
              v76 = v5;
              _os_log_impl(&dword_199A75000, v25, OS_LOG_TYPE_DEFAULT, "[CNPropertyGroupItem] updating contact value for property %{public}@, contact %{public}p to nil", buf, 0x16u);
            }

            v28 = [(CNPropertyGroupItem *)self property];
            [v5 setValue:0 forKey:v28];
          }
        }
      }

      v42 = [(CNPropertyGroupItem *)self contactViewCache];
      v43 = [v42 contactStore];

      if (v3 && v43)
      {
        if ([(CNPropertyGroupItem *)self shouldCreateNewMeContactToSaveChangesTo])
        {
          v67 = v6;
          v44 = [(CNPropertyGroupItem *)self contact];
          v45 = +[CNDonatedMeCardPersistenceHelper defaultKeysForValuesToPersist];
          v46 = [CNDonatedMeCardPersistenceHelper mutableCopyOfContact:v44 byCopyingValuesForKeysOnly:v45];

          v47 = CNUILogContactCard();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134349056;
            v74 = v46;
            _os_log_impl(&dword_199A75000, v47, OS_LOG_TYPE_DEFAULT, "[CNPropertyGroupItem] creating new me contact %{public}p", buf, 0xCu);
          }

          v48 = [(CNPropertyGroupItem *)self property];
          v49 = [v48 isEqualToString:*MEMORY[0x1E695C320]];
          v50 = [(CNPropertyGroupItem *)self labeledValue];
          v51 = v50;
          if (v49)
          {
            [v50 value];
          }

          else
          {
            v72 = v50;
            [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
          }
          v56 = ;

          v57 = [MEMORY[0x1E695CD00] contactPropertiesByKey];
          v58 = [(CNPropertyGroupItem *)self property];
          v59 = [v57 objectForKeyedSubscript:v58];
          [v59 setCNValue:v56 onContact:v46];

          [CNDonatedMeCardPersistenceHelper createNewMeContact:v46 inStore:v43];
          v6 = v67;
        }

        else
        {
          v52 = CNUILogContactCard();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134349056;
            v74 = v5;
            _os_log_impl(&dword_199A75000, v52, OS_LOG_TYPE_DEFAULT, "[CNPropertyGroupItem] saving contact %{public}p", buf, 0xCu);
          }

          v53 = [(CNPropertyGroupItem *)self delegate];
          v54 = objc_opt_respondsToSelector();

          if (v54)
          {
            v46 = objc_alloc_init(MEMORY[0x1E695CF88]);
            v55 = [(CNPropertyGroupItem *)self delegate];
            [v46 setIgnoresGuardianRestrictions:{objc_msgSend(v55, "propertyItemCanIgnoreGuardianRestrictions")}];
          }

          else
          {
            v46 = 0;
          }

          [v5 saveContactInStore:v43 group:0 container:0 request:v46];
        }
      }
    }
  }
}

- (void)confirmSuggestion
{
  v3 = [(CNPropertyGroupItem *)self labeledValueToCurateFromSuggestion];
  [(CNPropertyGroupItem *)self _removeSuggestion];
  [(CNPropertyGroupItem *)self setLabeledValue:v3];
  [(CNPropertyGroupItem *)self saveChangesImmediately:1];
}

- (id)labeledValueToCurateFromSuggestion
{
  v3 = MEMORY[0x1E695CEE0];
  v4 = [(CNPropertyGroupItem *)self labeledValue];
  v5 = [v4 label];
  v6 = [(CNPropertyGroupItem *)self labeledValue];
  v7 = [v6 value];
  v8 = [v3 labeledValueWithLabel:v5 value:v7];

  return v8;
}

- (void)_removeSuggestion
{
  v3 = objc_opt_class();
  v4 = [(CNPropertyGroupItem *)self labeledValue];
  v5 = [v4 label];
  v6 = [v3 emptyValueForLabel:v5];
  [(CNPropertyGroupItem *)self updateLabeledValueWithValue:v6];

  [(CNPropertyGroupItem *)self saveChangesImmediately:0];
}

- (BOOL)isSuggested
{
  v2 = [(CNPropertyGroupItem *)self labeledValue];
  v3 = [v2 isSuggested];

  return v3;
}

- (BOOL)modified
{
  v5 = [(CNPropertyGroupItem *)self labeledValue];
  if (v5 || ([(CNPropertyGroupItem *)self originalLabeledValue], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(CNPropertyGroupItem *)self labeledValue];
    v7 = [(CNPropertyGroupItem *)self originalLabeledValue];
    v3 = [v6 isEqual:v7];

    if (v5)
    {

      if (v3)
      {
        goto LABEL_5;
      }

      return 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

LABEL_5:
  v8 = [(CNPropertyGroupItem *)self property];
  v9 = [v8 isEqualToString:*MEMORY[0x1E695C330]];

  if (!v9)
  {
    return 0;
  }

  v10 = [(CNPropertyGroupItem *)self labeledValue];
  v11 = [v10 value];

  v12 = [(CNPropertyGroupItem *)self originalLabeledValue];
  v13 = [v12 value];

  v14 = [v11 stringValue];
  if (!v14)
  {
    v3 = [v13 stringValue];
    if (!v3)
    {
      v17 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  v15 = [v11 stringValue];
  v16 = [v13 stringValue];
  v17 = [v15 isEqual:v16];

  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v17 ^ 1;
}

- (BOOL)isValidIdentifier:(id)a3
{
  if (a3)
  {
    return 1;
  }

  v4 = [(CNPropertyGroupItem *)self property];
  v5 = [v4 isEqualToString:*MEMORY[0x1E695C1E0]];

  return v5;
}

- (void)updateLabeledValueWithLabel:(id)a3
{
  v9 = a3;
  v4 = [(CNPropertyGroupItem *)self labeledValue];
  v5 = [v4 label];

  if (v5 != v9)
  {
    v6 = [(CNPropertyGroupItem *)self labeledValue];
    v7 = [v6 value];
    v8 = [(CNPropertyGroupItem *)self updateWithLabel:v9 value:v7];
    [(CNPropertyGroupItem *)self setLabeledValue:v8];
  }
}

- (void)updateLabeledValueWithValue:(id)a3
{
  v13 = a3;
  v4 = [(CNPropertyGroupItem *)self labeledValue];
  v5 = [v4 value];

  v6 = v13;
  if (v5 != v13)
  {
    v7 = [(CNPropertyGroupItem *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(CNPropertyGroupItem *)self delegate];
      [v9 propertyItem:self willChangeValue:v13];
    }

    v10 = [(CNPropertyGroupItem *)self labeledValue];
    v11 = [v10 label];
    v12 = [(CNPropertyGroupItem *)self updateWithLabel:v11 value:v13];
    [(CNPropertyGroupItem *)self setLabeledValue:v12];

    v6 = v13;
  }
}

- (id)updateWithLabel:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNPropertyGroupItem *)self labeledValue];

  if (v8)
  {
    v9 = [(CNPropertyGroupItem *)self labeledValue];
    v10 = [v9 labeledValueBySettingLabel:v6 value:v7];
  }

  else
  {
    v10 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v6 value:v7];
  }

  [(CNPropertyGroupItem *)self setLabeledValue:v10];

  return v10;
}

- (void)mergeItem:(id)a3
{
  v16 = a3;
  if (![CNPropertyGroupItem isEquivalentToItem:"isEquivalentToItem:whenEditing:" whenEditing:?]&& ![(CNPropertyGroupItem *)self isEquivalentToItem:v16 whenEditing:1])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"CNPropertyGroupItem.m" lineNumber:476 description:@"These two items can’t be merged"];
  }

  v5 = [(CNPropertyGroupItem *)self bestValue:v16];
  v6 = [(CNPropertyGroupItem *)self bestLabel:v16];
  v7 = [(CNPropertyGroupItem *)self labeledValue];
  v8 = [v7 identifier];

  if (v5)
  {
    v9 = [v16 labeledValue];
    v10 = [v9 value];

    if (v5 == v10)
    {
      v11 = [v16 contact];
      [(CNPropertyGroupItem *)self setContact:v11];

      v12 = [v16 labeledValue];
      v13 = [v12 identifier];

      v8 = v13;
    }
  }

  v14 = [MEMORY[0x1E695CEE0] entryWithIdentifier:v8 label:v6 value:v5];
  [(CNPropertyGroupItem *)self setLabeledValue:v14];
}

- (id)bestLabel:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyGroupItem *)self labeledValue];
  v6 = [v5 label];
  if (v6)
  {
  }

  else
  {
    v12 = [(CNPropertyGroupItem *)v4 labeledValue];
    v13 = [v12 label];

    v11 = v4;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  v7 = *MEMORY[0x1E695CB68];
  v8 = [(CNPropertyGroupItem *)self labeledValue];
  v9 = [v8 label];
  v10 = [v7 compare:v9 options:1];

  if (v10)
  {
    v11 = self;
  }

  else
  {
    v11 = v4;
  }

LABEL_7:
  v14 = [(CNPropertyGroupItem *)v11 labeledValue];
  v15 = [v14 label];

  return v15;
}

- (id)bestValue:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyGroupItem *)self labeledValue];
  v6 = [v5 value];
  if (v6)
  {
    v7 = v6;
    v8 = [(CNPropertyGroupItem *)v4 labeledValue];
    v9 = [v8 value];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = [(CNPropertyGroupItem *)v4 labeledValue];
  v11 = [v10 value];
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v11;
  v13 = [(CNPropertyGroupItem *)self labeledValue];
  v14 = [v13 value];

  v15 = v4;
  if (v14)
  {
LABEL_9:
    v15 = self;
  }

  v16 = [(CNPropertyGroupItem *)v15 labeledValue];
  v17 = [v16 value];

  return v17;
}

- (BOOL)isEquivalentToItem:(id)a3 whenEditing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = (!v4 || !-[CNPropertyGroupItem isReadonly](self, "isReadonly") && ([v6 isReadonly] & 1) == 0) && -[CNPropertyGroupItem isEquivalentToItem:](self, "isEquivalentToItem:", v6);

  return v7;
}

- (BOOL)isEquivalentToItem:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyGroupItem *)self contact];
  v6 = [v4 contact];
  if (v5 == v6)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(CNPropertyGroupItem *)self normalizedValue];
    v8 = [v4 normalizedValue];
    v9 = [v7 isEqual:v8];
  }

  return v9;
}

- (BOOL)isFavoriteOfActionType:(id)a3 bundleIdentifier:(id)a4
{
  v24[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  v9 = [v8 areFavoritesAvailable];

  if (v9 && (v10 = *MEMORY[0x1E695C330], v24[0] = *MEMORY[0x1E695C208], v24[1] = v10, v11 = *MEMORY[0x1E695C2B0], v24[2] = *MEMORY[0x1E695C3D0], v24[3] = v11, [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4], v12 = objc_claimAutoreleasedReturnValue(), -[CNPropertyGroupItem property](self, "property"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "containsObject:", v13), v13, v12, v14))
  {
    v15 = [(CNPropertyGroupItem *)self environment];
    v16 = [v15 inProcessFavorites];

    v17 = [(CNPropertyGroupItem *)self contact];
    v18 = [(CNPropertyGroupItem *)self property];
    v19 = [(CNPropertyGroupItem *)self labeledValue];
    v20 = [v19 identifier];
    v21 = [v16 entriesForContact:v17 propertyKey:v18 labeledValueIdentifier:v20 actionType:v6 bundleIdentifier:v7];
    v22 = [v21 count] != 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)isReadonly
{
  if (![(CNPropertyGroupItem *)self policyFlags])
  {
    v3 = [(CNPropertyGroupItem *)self group];
    v4 = [v3 policyForItem:self];

    if ([v4 isReadonly])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [(CNPropertyGroupItem *)self setPolicyFlags:v5];
  }

  return ([(CNPropertyGroupItem *)self policyFlags]>> 1) & 1;
}

- (BOOL)isEmpty
{
  v2 = [(CNPropertyGroupItem *)self labeledValue];
  v3 = [v2 value];
  v4 = v3 == 0;

  return v4;
}

- (id)replacementForInvalidValue:(id)a3
{
  v4 = objc_opt_class();
  v5 = [(CNPropertyGroupItem *)self labeledValue];
  v6 = [v5 label];
  v7 = [v4 emptyValueForLabel:v6];

  return v7;
}

- (BOOL)isValidValue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CNPropertyGroupItem *)self labeledValue];
  v7 = [v6 label];
  v8 = [v5 emptyValueForLabel:v7];

  if (v4)
  {
    v9 = [(CNPropertyGroupItem *)self displayStringForValue:v4];
    if ([v9 length])
    {
      v10 = [v4 isEqual:v8] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (NSArray)promotedExtendedLabels
{
  v3 = [(CNPropertyGroupItem *)self group];
  v4 = [v3 labelsForItem:self options:3];

  return v4;
}

- (NSArray)extendedLabels
{
  v3 = [(CNPropertyGroupItem *)self group];
  v4 = [v3 labelsForItem:self options:1];

  return v4;
}

- (NSArray)standardLabels
{
  v3 = [(CNPropertyGroupItem *)self group];
  v4 = [v3 labelsForItem:self options:0];

  return v4;
}

- (NSString)placeholderString
{
  v2 = MEMORY[0x1E695CD58];
  v3 = [(CNPropertyGroupItem *)self property];
  v4 = [v2 localizedStringForKey:v3];

  return v4;
}

- (NSString)displayLabel
{
  v3 = MEMORY[0x1E695CEE0];
  v4 = [(CNPropertyGroupItem *)self labeledValue];
  v5 = [v4 label];
  v6 = [(CNPropertyGroupItem *)self property];
  v7 = [v3 localizedDisplayStringForLabel:v5 propertyName:v6];

  return v7;
}

- (NSString)displayValue
{
  v3 = [(CNPropertyGroupItem *)self labeledValue];
  v4 = [v3 value];
  v5 = [(CNPropertyGroupItem *)self displayStringForValue:v4];

  return v5;
}

- (id)normalizedValue
{
  v2 = [(CNPropertyGroupItem *)self labeledValue];
  v3 = [v2 value];

  return v3;
}

- (id)contactViewCache
{
  v3 = [(CNPropertyGroupItem *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNPropertyGroupItem *)self delegate];
    v6 = [v5 contactViewCache];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CNMutableContact)mutableContact
{
  v3 = [(CNPropertyGroupItem *)self contact];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CNPropertyGroupItem *)self contact];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)labeledValueMultiValueIdentifierForChosenSourceContact
{
  v2 = [(CNPropertyGroupItem *)self contactProperty];
  v3 = [v2 multiValueIdentifier];

  return v3;
}

- (int)anyContactLegacyIdentifier
{
  v2 = [(CNPropertyGroupItem *)self contactProperty];
  v3 = [v2 sourceContact];
  v4 = [v3 iOSLegacyIdentifier];

  return v4;
}

- (CNContactProperty)contactProperty
{
  v3 = MEMORY[0x1E695CE08];
  v4 = [(CNPropertyGroupItem *)self contact];
  v5 = [(CNPropertyGroupItem *)self property];
  v6 = [(CNPropertyGroupItem *)self labeledValue];
  v7 = [v6 identifier];
  v8 = [v3 contactPropertyWithContactNoCopy:v4 propertyKey:v5 identifier:v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CNPropertyGroupItem *)self property];
  v6 = [(CNPropertyGroupItem *)self labeledValue];
  v7 = [v6 label];
  v8 = [(CNPropertyGroupItem *)self labeledValue];
  v9 = [v8 value];
  v10 = [(CNPropertyGroupItem *)self isReadonly];
  v11 = &stru_1F0CE7398;
  if (v10)
  {
    v11 = @", RO";
  }

  v12 = [v3 stringWithFormat:@"<%@ %p> [%@] %@: %@ (contact%@)", v4, self, v5, v7, v9, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CNPropertyGroupItem *)self labeledValue];
    v7 = [v5 labeledValue];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CNPropertyGroupItem)initWithLabeledValue:(id)a3 group:(id)a4 contact:(id)a5 environment:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(CNPropertyGroupItem *)self initWithGroup:v13];
  if (v16)
  {
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        [v23 handleFailureInMethod:a2 object:v16 file:@"CNPropertyGroupItem.m" lineNumber:124 description:0];
      }
    }

    objc_storeStrong(&v16->_labeledValue, a3);
    v17 = [v13 property];
    v18 = *MEMORY[0x1E695C1C0];

    labeledValue = v16->_labeledValue;
    if (v17 == v18)
    {
      v20 = [(CNLabeledValue *)labeledValue copy];
    }

    else
    {
      v20 = labeledValue;
    }

    originalLabeledValue = v16->_originalLabeledValue;
    v16->_originalLabeledValue = v20;

    objc_storeStrong(&v16->_contact, a5);
    objc_storeStrong(&v16->_environment, a6);
  }

  return v16;
}

- (CNPropertyGroupItem)initWithLabel:(id)a3 group:(id)a4 contact:(id)a5 environment:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [objc_opt_class() initialValueForLabel:v10 group:v11];
  v15 = [v11 property];
  v16 = [v15 isEqualToString:@"birthdays"];

  if (v16)
  {
    [MEMORY[0x1E695CEE0] entryWithIdentifier:v10 label:v10 value:v14];
  }

  else
  {
    [MEMORY[0x1E695CEE0] labeledValueWithLabel:v10 value:v14];
  }
  v17 = ;
  v18 = [(CNPropertyGroupItem *)self initWithLabeledValue:v17 group:v11 contact:v13 environment:v12];

  if (v18)
  {
    v19 = [objc_opt_class() emptyValueForLabel:v10];
    originalLabeledValue = v18->_originalLabeledValue;
    v18->_originalLabeledValue = v19;
  }

  return v18;
}

- (CNPropertyGroupItem)initWithGroup:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNPropertyGroupItem;
  v5 = [(CNPropertyGroupItem *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_group, v4);
    v7 = [v4 property];
    property = v6->_property;
    v6->_property = v7;
  }

  return v6;
}

- (CNPropertyGroupItem)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CNPropertyGroupItem.m" lineNumber:89 description:@"Use the factory method to create instances of this class."];

  return 0;
}

+ (void)deleteCoreRecentsEntriesMatchingProperty:(id)a3 recentsManager:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v13[0] = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:v13 count:1];
  v9 = [v5 recentContactsMatchingContactProperties:v8];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__CNPropertyGroupItem_deleteCoreRecentsEntriesMatchingProperty_recentsManager___block_invoke;
  v11[3] = &unk_1E74E42C0;
  v12 = v5;
  v10 = v5;
  [v9 addSuccessBlock:v11];
}

+ (id)newPropertyGroupItemForProperty:(id)a3
{
  v3 = [a1 classForProperty:a3];

  return [v3 alloc];
}

+ (Class)classForProperty:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:*MEMORY[0x1E695C330]] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C208]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C1F0]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"birthdays") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C2B0]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C360]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C3D0]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C418]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C1E0]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C3F8]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C3A8]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C320]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C370]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C200]) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695C1C0]) & 1) == 0)
  {
    [v3 isEqualToString:*MEMORY[0x1E695C3C8]];
  }

  v4 = objc_opt_self();
  v5 = v4;

  return v4;
}

+ (CNPropertyGroupItem)propertyGroupItemWithLabel:(id)a3 group:(id)a4 contact:(id)a5 environment:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 property];
  v15 = [objc_msgSend(a1 newPropertyGroupItemForProperty:{v14), "initWithLabel:group:contact:environment:", v13, v12, v11, v10}];

  return v15;
}

+ (CNPropertyGroupItem)propertyGroupItemWithLabeledValue:(id)a3 group:(id)a4 contact:(id)a5 environment:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v12 property];
  v15 = [objc_msgSend(a1 newPropertyGroupItemForProperty:{v14), "initWithLabeledValue:group:contact:environment:", v13, v12, v11, v10}];

  return v15;
}

+ (CNPropertyGroupItem)propertyGroupItemWithLabel:(id)a3 group:(id)a4 contact:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[CNUIContactsEnvironment currentEnvironment];
  v12 = [a1 propertyGroupItemWithLabel:v10 group:v9 contact:v8 environment:v11];

  return v12;
}

+ (CNPropertyGroupItem)propertyGroupItemWithLabeledValue:(id)a3 group:(id)a4 contact:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[CNUIContactsEnvironment currentEnvironment];
  v12 = [a1 propertyGroupItemWithLabeledValue:v10 group:v9 contact:v8 environment:v11];

  return v12;
}

@end