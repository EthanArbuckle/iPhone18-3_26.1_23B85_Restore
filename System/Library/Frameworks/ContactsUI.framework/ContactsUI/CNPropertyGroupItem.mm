@interface CNPropertyGroupItem
+ (CNPropertyGroupItem)propertyGroupItemWithLabel:(id)label group:(id)group contact:(id)contact;
+ (CNPropertyGroupItem)propertyGroupItemWithLabel:(id)label group:(id)group contact:(id)contact environment:(id)environment;
+ (CNPropertyGroupItem)propertyGroupItemWithLabeledValue:(id)value group:(id)group contact:(id)contact;
+ (CNPropertyGroupItem)propertyGroupItemWithLabeledValue:(id)value group:(id)group contact:(id)contact environment:(id)environment;
+ (Class)classForProperty:(id)property;
+ (id)newPropertyGroupItemForProperty:(id)property;
+ (void)deleteCoreRecentsEntriesMatchingProperty:(id)property recentsManager:(id)manager;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToItem:(id)item;
- (BOOL)isEquivalentToItem:(id)item whenEditing:(BOOL)editing;
- (BOOL)isFavoriteOfActionType:(id)type bundleIdentifier:(id)identifier;
- (BOOL)isReadonly;
- (BOOL)isSuggested;
- (BOOL)isValidIdentifier:(id)identifier;
- (BOOL)isValidValue:(id)value;
- (BOOL)modified;
- (BOOL)shouldCreateNewMeContactToSaveChangesTo;
- (CNCardPropertyGroup)group;
- (CNContactProperty)contactProperty;
- (CNMutableContact)mutableContact;
- (CNPropertyGroupItem)init;
- (CNPropertyGroupItem)initWithGroup:(id)group;
- (CNPropertyGroupItem)initWithLabel:(id)label group:(id)group contact:(id)contact environment:(id)environment;
- (CNPropertyGroupItem)initWithLabeledValue:(id)value group:(id)group contact:(id)contact environment:(id)environment;
- (CNPropertyGroupItemDelegate)delegate;
- (NSArray)extendedLabels;
- (NSArray)promotedExtendedLabels;
- (NSArray)standardLabels;
- (NSString)displayLabel;
- (NSString)displayValue;
- (NSString)placeholderString;
- (id)bestLabel:(id)label;
- (id)bestValue:(id)value;
- (id)contactViewCache;
- (id)description;
- (id)labeledValueToCurateFromSuggestion;
- (id)normalizedValue;
- (id)replacementForInvalidValue:(id)value;
- (id)updateWithLabel:(id)label value:(id)value;
- (int)anyContactLegacyIdentifier;
- (int)labeledValueMultiValueIdentifierForChosenSourceContact;
- (void)_removeSuggestion;
- (void)confirmSuggestion;
- (void)mergeItem:(id)item;
- (void)saveChangesImmediately:(BOOL)immediately;
- (void)updateLabeledValueWithLabel:(id)label;
- (void)updateLabeledValueWithValue:(id)value;
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

  mutableContact = [(CNPropertyGroupItem *)self mutableContact];
  if ([mutableContact isSuggestedMe])
  {
    v4 = *MEMORY[0x1E6996530];
    mutableContact2 = [(CNPropertyGroupItem *)self mutableContact];
    linkedContacts = [mutableContact2 linkedContacts];
    v7 = (*(v4 + 16))(v4, linkedContacts);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)saveChangesImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  v78 = *MEMORY[0x1E69E9840];
  if ([(CNPropertyGroupItem *)self modified])
  {
    mutableContact = [(CNPropertyGroupItem *)self mutableContact];
    if (mutableContact)
    {
      labeledValue = [(CNPropertyGroupItem *)self labeledValue];
      identifier = [labeledValue identifier];
      contactViewCache = [(CNPropertyGroupItem *)self contactViewCache];
      v9 = [contactViewCache policyForContact:mutableContact];

      if (([v9 isReadonly] & 1) == 0)
      {
        value = [labeledValue value];
        v11 = [(CNPropertyGroupItem *)self isValidValue:value];

        property = [(CNPropertyGroupItem *)self property];
        LODWORD(value) = [CNContactView isMultiValueProperty:property];

        if (value)
        {
          v60 = v11;
          v62 = immediatelyCopy;
          v65 = v9;
          v66 = labeledValue;
          property2 = [(CNPropertyGroupItem *)self property];
          v63 = mutableContact;
          v14 = [mutableContact valueForKey:property2];

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
                identifier2 = [v21 identifier];
                if ([identifier2 isEqualToString:identifier])
                {
                  identifier3 = [v21 identifier];
                  v24 = [(CNPropertyGroupItem *)self isValidIdentifier:identifier3];

                  if (v24)
                  {
                    if (v60)
                    {
                      labeledValue = v66;
                      [v15 setObject:v66 atIndexedSubscript:v18];

                      mutableContact = v63;
                    }

                    else
                    {
                      [v15 removeObjectAtIndex:v18];

                      environment = [(CNPropertyGroupItem *)self environment];
                      recentsManager = [environment recentsManager];

                      v33 = MEMORY[0x1E695CE08];
                      contact = [(CNPropertyGroupItem *)self contact];
                      property3 = [(CNPropertyGroupItem *)self property];
                      originalLabeledValue = [(CNPropertyGroupItem *)self originalLabeledValue];
                      identifier4 = [originalLabeledValue identifier];
                      v38 = [v33 contactPropertyWithContactNoCopy:contact propertyKey:property3 identifier:identifier4];

                      [objc_opt_class() deleteCoreRecentsEntriesMatchingProperty:v38 recentsManager:recentsManager];
                      mutableContact = v63;
                      labeledValue = v66;
                    }

                    v9 = v65;
                    immediatelyCopy = v62;
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

          mutableContact = v63;
          v9 = v65;
          labeledValue = v66;
          immediatelyCopy = v62;
          if (v60)
          {
            [v15 addObject:v66];
          }

LABEL_29:
          v39 = CNUILogContactCard();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            property4 = [(CNPropertyGroupItem *)self property];
            *buf = 138543618;
            v74 = property4;
            v75 = 2050;
            v76 = mutableContact;
            _os_log_impl(&dword_199A75000, v39, OS_LOG_TYPE_DEFAULT, "[CNPropertyGroupItem] updating contact value (multivalue) for property %{public}@, contact %{public}p", buf, 0x16u);
          }

          property5 = [(CNPropertyGroupItem *)self property];
          [mutableContact setValue:v15 forKey:property5];

          value2 = v61;
        }

        else
        {
          v25 = CNUILogContactCard();
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          if (v11)
          {
            if (v26)
            {
              property6 = [(CNPropertyGroupItem *)self property];
              *buf = 138543618;
              v74 = property6;
              v75 = 2050;
              v76 = mutableContact;
              _os_log_impl(&dword_199A75000, v25, OS_LOG_TYPE_DEFAULT, "[CNPropertyGroupItem] updating contact value for property %{public}@, contact %{public}p", buf, 0x16u);
            }

            value2 = [labeledValue value];
            property7 = [(CNPropertyGroupItem *)self property];
            [mutableContact setValue:value2 forKey:property7];
          }

          else
          {
            if (v26)
            {
              property8 = [(CNPropertyGroupItem *)self property];
              *buf = 138543618;
              v74 = property8;
              v75 = 2050;
              v76 = mutableContact;
              _os_log_impl(&dword_199A75000, v25, OS_LOG_TYPE_DEFAULT, "[CNPropertyGroupItem] updating contact value for property %{public}@, contact %{public}p to nil", buf, 0x16u);
            }

            value2 = [(CNPropertyGroupItem *)self property];
            [mutableContact setValue:0 forKey:value2];
          }
        }
      }

      contactViewCache2 = [(CNPropertyGroupItem *)self contactViewCache];
      contactStore = [contactViewCache2 contactStore];

      if (immediatelyCopy && contactStore)
      {
        if ([(CNPropertyGroupItem *)self shouldCreateNewMeContactToSaveChangesTo])
        {
          v67 = labeledValue;
          contact2 = [(CNPropertyGroupItem *)self contact];
          v45 = +[CNDonatedMeCardPersistenceHelper defaultKeysForValuesToPersist];
          v46 = [CNDonatedMeCardPersistenceHelper mutableCopyOfContact:contact2 byCopyingValuesForKeysOnly:v45];

          v47 = CNUILogContactCard();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134349056;
            v74 = v46;
            _os_log_impl(&dword_199A75000, v47, OS_LOG_TYPE_DEFAULT, "[CNPropertyGroupItem] creating new me contact %{public}p", buf, 0xCu);
          }

          property9 = [(CNPropertyGroupItem *)self property];
          v49 = [property9 isEqualToString:*MEMORY[0x1E695C320]];
          labeledValue2 = [(CNPropertyGroupItem *)self labeledValue];
          v51 = labeledValue2;
          if (v49)
          {
            [labeledValue2 value];
          }

          else
          {
            v72 = labeledValue2;
            [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
          }
          v56 = ;

          contactPropertiesByKey = [MEMORY[0x1E695CD00] contactPropertiesByKey];
          property10 = [(CNPropertyGroupItem *)self property];
          v59 = [contactPropertiesByKey objectForKeyedSubscript:property10];
          [v59 setCNValue:v56 onContact:v46];

          [CNDonatedMeCardPersistenceHelper createNewMeContact:v46 inStore:contactStore];
          labeledValue = v67;
        }

        else
        {
          v52 = CNUILogContactCard();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134349056;
            v74 = mutableContact;
            _os_log_impl(&dword_199A75000, v52, OS_LOG_TYPE_DEFAULT, "[CNPropertyGroupItem] saving contact %{public}p", buf, 0xCu);
          }

          delegate = [(CNPropertyGroupItem *)self delegate];
          v54 = objc_opt_respondsToSelector();

          if (v54)
          {
            v46 = objc_alloc_init(MEMORY[0x1E695CF88]);
            delegate2 = [(CNPropertyGroupItem *)self delegate];
            [v46 setIgnoresGuardianRestrictions:{objc_msgSend(delegate2, "propertyItemCanIgnoreGuardianRestrictions")}];
          }

          else
          {
            v46 = 0;
          }

          [mutableContact saveContactInStore:contactStore group:0 container:0 request:v46];
        }
      }
    }
  }
}

- (void)confirmSuggestion
{
  labeledValueToCurateFromSuggestion = [(CNPropertyGroupItem *)self labeledValueToCurateFromSuggestion];
  [(CNPropertyGroupItem *)self _removeSuggestion];
  [(CNPropertyGroupItem *)self setLabeledValue:labeledValueToCurateFromSuggestion];
  [(CNPropertyGroupItem *)self saveChangesImmediately:1];
}

- (id)labeledValueToCurateFromSuggestion
{
  v3 = MEMORY[0x1E695CEE0];
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  label = [labeledValue label];
  labeledValue2 = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue2 value];
  v8 = [v3 labeledValueWithLabel:label value:value];

  return v8;
}

- (void)_removeSuggestion
{
  v3 = objc_opt_class();
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  label = [labeledValue label];
  v6 = [v3 emptyValueForLabel:label];
  [(CNPropertyGroupItem *)self updateLabeledValueWithValue:v6];

  [(CNPropertyGroupItem *)self saveChangesImmediately:0];
}

- (BOOL)isSuggested
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  isSuggested = [labeledValue isSuggested];

  return isSuggested;
}

- (BOOL)modified
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  if (labeledValue || ([(CNPropertyGroupItem *)self originalLabeledValue], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    labeledValue2 = [(CNPropertyGroupItem *)self labeledValue];
    originalLabeledValue = [(CNPropertyGroupItem *)self originalLabeledValue];
    stringValue2 = [labeledValue2 isEqual:originalLabeledValue];

    if (labeledValue)
    {

      if (stringValue2)
      {
        goto LABEL_5;
      }

      return 1;
    }

    if ((stringValue2 & 1) == 0)
    {
      return 1;
    }
  }

LABEL_5:
  property = [(CNPropertyGroupItem *)self property];
  v9 = [property isEqualToString:*MEMORY[0x1E695C330]];

  if (!v9)
  {
    return 0;
  }

  labeledValue3 = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue3 value];

  originalLabeledValue2 = [(CNPropertyGroupItem *)self originalLabeledValue];
  value2 = [originalLabeledValue2 value];

  stringValue = [value stringValue];
  if (!stringValue)
  {
    stringValue2 = [value2 stringValue];
    if (!stringValue2)
    {
      v17 = 1;
LABEL_14:

      goto LABEL_15;
    }
  }

  stringValue3 = [value stringValue];
  stringValue4 = [value2 stringValue];
  v17 = [stringValue3 isEqual:stringValue4];

  if (!stringValue)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v17 ^ 1;
}

- (BOOL)isValidIdentifier:(id)identifier
{
  if (identifier)
  {
    return 1;
  }

  property = [(CNPropertyGroupItem *)self property];
  v5 = [property isEqualToString:*MEMORY[0x1E695C1E0]];

  return v5;
}

- (void)updateLabeledValueWithLabel:(id)label
{
  labelCopy = label;
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  label = [labeledValue label];

  if (label != labelCopy)
  {
    labeledValue2 = [(CNPropertyGroupItem *)self labeledValue];
    value = [labeledValue2 value];
    v8 = [(CNPropertyGroupItem *)self updateWithLabel:labelCopy value:value];
    [(CNPropertyGroupItem *)self setLabeledValue:v8];
  }
}

- (void)updateLabeledValueWithValue:(id)value
{
  valueCopy = value;
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  v6 = valueCopy;
  if (value != valueCopy)
  {
    delegate = [(CNPropertyGroupItem *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(CNPropertyGroupItem *)self delegate];
      [delegate2 propertyItem:self willChangeValue:valueCopy];
    }

    labeledValue2 = [(CNPropertyGroupItem *)self labeledValue];
    label = [labeledValue2 label];
    v12 = [(CNPropertyGroupItem *)self updateWithLabel:label value:valueCopy];
    [(CNPropertyGroupItem *)self setLabeledValue:v12];

    v6 = valueCopy;
  }
}

- (id)updateWithLabel:(id)label value:(id)value
{
  labelCopy = label;
  valueCopy = value;
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];

  if (labeledValue)
  {
    labeledValue2 = [(CNPropertyGroupItem *)self labeledValue];
    v10 = [labeledValue2 labeledValueBySettingLabel:labelCopy value:valueCopy];
  }

  else
  {
    v10 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:valueCopy];
  }

  [(CNPropertyGroupItem *)self setLabeledValue:v10];

  return v10;
}

- (void)mergeItem:(id)item
{
  itemCopy = item;
  if (![CNPropertyGroupItem isEquivalentToItem:"isEquivalentToItem:whenEditing:" whenEditing:?]&& ![(CNPropertyGroupItem *)self isEquivalentToItem:itemCopy whenEditing:1])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNPropertyGroupItem.m" lineNumber:476 description:@"These two items can’t be merged"];
  }

  v5 = [(CNPropertyGroupItem *)self bestValue:itemCopy];
  v6 = [(CNPropertyGroupItem *)self bestLabel:itemCopy];
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  identifier = [labeledValue identifier];

  if (v5)
  {
    labeledValue2 = [itemCopy labeledValue];
    value = [labeledValue2 value];

    if (v5 == value)
    {
      contact = [itemCopy contact];
      [(CNPropertyGroupItem *)self setContact:contact];

      labeledValue3 = [itemCopy labeledValue];
      identifier2 = [labeledValue3 identifier];

      identifier = identifier2;
    }
  }

  v14 = [MEMORY[0x1E695CEE0] entryWithIdentifier:identifier label:v6 value:v5];
  [(CNPropertyGroupItem *)self setLabeledValue:v14];
}

- (id)bestLabel:(id)label
{
  labelCopy = label;
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  label = [labeledValue label];
  if (label)
  {
  }

  else
  {
    labeledValue2 = [(CNPropertyGroupItem *)labelCopy labeledValue];
    label2 = [labeledValue2 label];

    selfCopy = labelCopy;
    if (label2)
    {
      goto LABEL_7;
    }
  }

  v7 = *MEMORY[0x1E695CB68];
  labeledValue3 = [(CNPropertyGroupItem *)self labeledValue];
  label3 = [labeledValue3 label];
  v10 = [v7 compare:label3 options:1];

  if (v10)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = labelCopy;
  }

LABEL_7:
  labeledValue4 = [(CNPropertyGroupItem *)selfCopy labeledValue];
  label4 = [labeledValue4 label];

  return label4;
}

- (id)bestValue:(id)value
{
  valueCopy = value;
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];
  if (value)
  {
    v7 = value;
    labeledValue2 = [(CNPropertyGroupItem *)valueCopy labeledValue];
    value2 = [labeledValue2 value];

    if (!value2)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  labeledValue3 = [(CNPropertyGroupItem *)valueCopy labeledValue];
  value3 = [labeledValue3 value];
  if (!value3)
  {

    goto LABEL_9;
  }

  v12 = value3;
  labeledValue4 = [(CNPropertyGroupItem *)self labeledValue];
  value4 = [labeledValue4 value];

  selfCopy = valueCopy;
  if (value4)
  {
LABEL_9:
    selfCopy = self;
  }

  labeledValue5 = [(CNPropertyGroupItem *)selfCopy labeledValue];
  value5 = [labeledValue5 value];

  return value5;
}

- (BOOL)isEquivalentToItem:(id)item whenEditing:(BOOL)editing
{
  editingCopy = editing;
  itemCopy = item;
  v7 = (!editingCopy || !-[CNPropertyGroupItem isReadonly](self, "isReadonly") && ([itemCopy isReadonly] & 1) == 0) && -[CNPropertyGroupItem isEquivalentToItem:](self, "isEquivalentToItem:", itemCopy);

  return v7;
}

- (BOOL)isEquivalentToItem:(id)item
{
  itemCopy = item;
  contact = [(CNPropertyGroupItem *)self contact];
  contact2 = [itemCopy contact];
  if (contact == contact2)
  {
    v9 = 0;
  }

  else
  {
    normalizedValue = [(CNPropertyGroupItem *)self normalizedValue];
    normalizedValue2 = [itemCopy normalizedValue];
    v9 = [normalizedValue isEqual:normalizedValue2];
  }

  return v9;
}

- (BOOL)isFavoriteOfActionType:(id)type bundleIdentifier:(id)identifier
{
  v24[4] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  identifierCopy = identifier;
  v8 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  areFavoritesAvailable = [v8 areFavoritesAvailable];

  if (areFavoritesAvailable && (v10 = *MEMORY[0x1E695C330], v24[0] = *MEMORY[0x1E695C208], v24[1] = v10, v11 = *MEMORY[0x1E695C2B0], v24[2] = *MEMORY[0x1E695C3D0], v24[3] = v11, [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4], v12 = objc_claimAutoreleasedReturnValue(), -[CNPropertyGroupItem property](self, "property"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "containsObject:", v13), v13, v12, v14))
  {
    environment = [(CNPropertyGroupItem *)self environment];
    inProcessFavorites = [environment inProcessFavorites];

    contact = [(CNPropertyGroupItem *)self contact];
    property = [(CNPropertyGroupItem *)self property];
    labeledValue = [(CNPropertyGroupItem *)self labeledValue];
    identifier = [labeledValue identifier];
    v21 = [inProcessFavorites entriesForContact:contact propertyKey:property labeledValueIdentifier:identifier actionType:typeCopy bundleIdentifier:identifierCopy];
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
    group = [(CNPropertyGroupItem *)self group];
    v4 = [group policyForItem:self];

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
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];
  v4 = value == 0;

  return v4;
}

- (id)replacementForInvalidValue:(id)value
{
  v4 = objc_opt_class();
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  label = [labeledValue label];
  v7 = [v4 emptyValueForLabel:label];

  return v7;
}

- (BOOL)isValidValue:(id)value
{
  valueCopy = value;
  v5 = objc_opt_class();
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  label = [labeledValue label];
  v8 = [v5 emptyValueForLabel:label];

  if (valueCopy)
  {
    v9 = [(CNPropertyGroupItem *)self displayStringForValue:valueCopy];
    if ([v9 length])
    {
      v10 = [valueCopy isEqual:v8] ^ 1;
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
  group = [(CNPropertyGroupItem *)self group];
  v4 = [group labelsForItem:self options:3];

  return v4;
}

- (NSArray)extendedLabels
{
  group = [(CNPropertyGroupItem *)self group];
  v4 = [group labelsForItem:self options:1];

  return v4;
}

- (NSArray)standardLabels
{
  group = [(CNPropertyGroupItem *)self group];
  v4 = [group labelsForItem:self options:0];

  return v4;
}

- (NSString)placeholderString
{
  v2 = MEMORY[0x1E695CD58];
  property = [(CNPropertyGroupItem *)self property];
  v4 = [v2 localizedStringForKey:property];

  return v4;
}

- (NSString)displayLabel
{
  v3 = MEMORY[0x1E695CEE0];
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  label = [labeledValue label];
  property = [(CNPropertyGroupItem *)self property];
  v7 = [v3 localizedDisplayStringForLabel:label propertyName:property];

  return v7;
}

- (NSString)displayValue
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];
  v5 = [(CNPropertyGroupItem *)self displayStringForValue:value];

  return v5;
}

- (id)normalizedValue
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  return value;
}

- (id)contactViewCache
{
  delegate = [(CNPropertyGroupItem *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNPropertyGroupItem *)self delegate];
    contactViewCache = [delegate2 contactViewCache];
  }

  else
  {
    contactViewCache = 0;
  }

  return contactViewCache;
}

- (CNMutableContact)mutableContact
{
  contact = [(CNPropertyGroupItem *)self contact];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contact2 = [(CNPropertyGroupItem *)self contact];
  }

  else
  {
    contact2 = 0;
  }

  return contact2;
}

- (int)labeledValueMultiValueIdentifierForChosenSourceContact
{
  contactProperty = [(CNPropertyGroupItem *)self contactProperty];
  multiValueIdentifier = [contactProperty multiValueIdentifier];

  return multiValueIdentifier;
}

- (int)anyContactLegacyIdentifier
{
  contactProperty = [(CNPropertyGroupItem *)self contactProperty];
  sourceContact = [contactProperty sourceContact];
  iOSLegacyIdentifier = [sourceContact iOSLegacyIdentifier];

  return iOSLegacyIdentifier;
}

- (CNContactProperty)contactProperty
{
  v3 = MEMORY[0x1E695CE08];
  contact = [(CNPropertyGroupItem *)self contact];
  property = [(CNPropertyGroupItem *)self property];
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  identifier = [labeledValue identifier];
  v8 = [v3 contactPropertyWithContactNoCopy:contact propertyKey:property identifier:identifier];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  property = [(CNPropertyGroupItem *)self property];
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  label = [labeledValue label];
  labeledValue2 = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue2 value];
  isReadonly = [(CNPropertyGroupItem *)self isReadonly];
  v11 = &stru_1F0CE7398;
  if (isReadonly)
  {
    v11 = @", RO";
  }

  v12 = [v3 stringWithFormat:@"<%@ %p> [%@] %@: %@ (contact%@)", v4, self, property, label, value, v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    labeledValue = [(CNPropertyGroupItem *)self labeledValue];
    labeledValue2 = [v5 labeledValue];

    v8 = [labeledValue isEqual:labeledValue2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CNPropertyGroupItem)initWithLabeledValue:(id)value group:(id)group contact:(id)contact environment:(id)environment
{
  valueCopy = value;
  groupCopy = group;
  contactCopy = contact;
  environmentCopy = environment;
  v16 = [(CNPropertyGroupItem *)self initWithGroup:groupCopy];
  if (v16)
  {
    if (valueCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v16 file:@"CNPropertyGroupItem.m" lineNumber:124 description:0];
      }
    }

    objc_storeStrong(&v16->_labeledValue, value);
    property = [groupCopy property];
    v18 = *MEMORY[0x1E695C1C0];

    labeledValue = v16->_labeledValue;
    if (property == v18)
    {
      v20 = [(CNLabeledValue *)labeledValue copy];
    }

    else
    {
      v20 = labeledValue;
    }

    originalLabeledValue = v16->_originalLabeledValue;
    v16->_originalLabeledValue = v20;

    objc_storeStrong(&v16->_contact, contact);
    objc_storeStrong(&v16->_environment, environment);
  }

  return v16;
}

- (CNPropertyGroupItem)initWithLabel:(id)label group:(id)group contact:(id)contact environment:(id)environment
{
  labelCopy = label;
  groupCopy = group;
  environmentCopy = environment;
  contactCopy = contact;
  v14 = [objc_opt_class() initialValueForLabel:labelCopy group:groupCopy];
  property = [groupCopy property];
  v16 = [property isEqualToString:@"birthdays"];

  if (v16)
  {
    [MEMORY[0x1E695CEE0] entryWithIdentifier:labelCopy label:labelCopy value:v14];
  }

  else
  {
    [MEMORY[0x1E695CEE0] labeledValueWithLabel:labelCopy value:v14];
  }
  v17 = ;
  v18 = [(CNPropertyGroupItem *)self initWithLabeledValue:v17 group:groupCopy contact:contactCopy environment:environmentCopy];

  if (v18)
  {
    v19 = [objc_opt_class() emptyValueForLabel:labelCopy];
    originalLabeledValue = v18->_originalLabeledValue;
    v18->_originalLabeledValue = v19;
  }

  return v18;
}

- (CNPropertyGroupItem)initWithGroup:(id)group
{
  groupCopy = group;
  v10.receiver = self;
  v10.super_class = CNPropertyGroupItem;
  v5 = [(CNPropertyGroupItem *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_group, groupCopy);
    property = [groupCopy property];
    property = v6->_property;
    v6->_property = property;
  }

  return v6;
}

- (CNPropertyGroupItem)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CNPropertyGroupItem.m" lineNumber:89 description:@"Use the factory method to create instances of this class."];

  return 0;
}

+ (void)deleteCoreRecentsEntriesMatchingProperty:(id)property recentsManager:(id)manager
{
  v13[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v13[0] = property;
  v6 = MEMORY[0x1E695DEC8];
  propertyCopy = property;
  v8 = [v6 arrayWithObjects:v13 count:1];
  v9 = [managerCopy recentContactsMatchingContactProperties:v8];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__CNPropertyGroupItem_deleteCoreRecentsEntriesMatchingProperty_recentsManager___block_invoke;
  v11[3] = &unk_1E74E42C0;
  v12 = managerCopy;
  v10 = managerCopy;
  [v9 addSuccessBlock:v11];
}

+ (id)newPropertyGroupItemForProperty:(id)property
{
  v3 = [self classForProperty:property];

  return [v3 alloc];
}

+ (Class)classForProperty:(id)property
{
  propertyCopy = property;
  if (([propertyCopy isEqualToString:*MEMORY[0x1E695C330]] & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C208]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C1F0]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", @"birthdays") & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C2B0]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C360]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C3D0]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C418]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C1E0]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C3F8]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C3A8]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C320]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C370]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C200]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C1C0]) & 1) == 0)
  {
    [propertyCopy isEqualToString:*MEMORY[0x1E695C3C8]];
  }

  v4 = objc_opt_self();
  v5 = v4;

  return v4;
}

+ (CNPropertyGroupItem)propertyGroupItemWithLabel:(id)label group:(id)group contact:(id)contact environment:(id)environment
{
  environmentCopy = environment;
  contactCopy = contact;
  groupCopy = group;
  labelCopy = label;
  property = [groupCopy property];
  v15 = [objc_msgSend(self newPropertyGroupItemForProperty:{property), "initWithLabel:group:contact:environment:", labelCopy, groupCopy, contactCopy, environmentCopy}];

  return v15;
}

+ (CNPropertyGroupItem)propertyGroupItemWithLabeledValue:(id)value group:(id)group contact:(id)contact environment:(id)environment
{
  environmentCopy = environment;
  contactCopy = contact;
  groupCopy = group;
  valueCopy = value;
  property = [groupCopy property];
  v15 = [objc_msgSend(self newPropertyGroupItemForProperty:{property), "initWithLabeledValue:group:contact:environment:", valueCopy, groupCopy, contactCopy, environmentCopy}];

  return v15;
}

+ (CNPropertyGroupItem)propertyGroupItemWithLabel:(id)label group:(id)group contact:(id)contact
{
  contactCopy = contact;
  groupCopy = group;
  labelCopy = label;
  v11 = +[CNUIContactsEnvironment currentEnvironment];
  v12 = [self propertyGroupItemWithLabel:labelCopy group:groupCopy contact:contactCopy environment:v11];

  return v12;
}

+ (CNPropertyGroupItem)propertyGroupItemWithLabeledValue:(id)value group:(id)group contact:(id)contact
{
  contactCopy = contact;
  groupCopy = group;
  valueCopy = value;
  v11 = +[CNUIContactsEnvironment currentEnvironment];
  v12 = [self propertyGroupItemWithLabeledValue:valueCopy group:groupCopy contact:contactCopy environment:v11];

  return v12;
}

@end