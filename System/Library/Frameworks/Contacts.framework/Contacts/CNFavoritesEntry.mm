@interface CNFavoritesEntry
+ (BOOL)areLabelsEqual:(void *)equal other:;
+ (BOOL)arePhoneNumbersEqual:(id)equal other:(id)other;
+ (BOOL)favoritesEntryValueForLabeledValueValue:(void *)value propertyKey:(void *)key isEqualToValue:;
+ (CNLabeledValue)createLabeledValueForFavoritesEntryValue:(void *)value label:(void *)label propertyKey:;
+ (__CFString)convertABPropertyToCNPropertyFromDictionary:(uint64_t)dictionary;
+ (id)contactFormatter;
+ (id)descriptorsForRequiredKeysForPropertyKey:(id)key;
+ (id)favoritesEntryValueForLabeledValueValue:(void *)value propertyKey:;
+ (id)instantMessageAddressForFavoritesEntryValue:(uint64_t)value;
+ (id)labeledValueValueForFavoritesEntryValue:(void *)value propertyKey:;
+ (id)mapABPropertyToCNContactPropertyKey:(int)key;
+ (id)socialProfileForFavoritesEntryValue:(uint64_t)value;
+ (id)valueStringFromSocialProfile:(uint64_t)profile;
+ (int)mapCNContactPropertyKeyToABProperty:(id)property;
+ (uint64_t)shouldRetryMatching;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)rematchWithContacts;
- (BOOL)rematchWithGeminiManager:(id)manager;
- (CNContactProperty)contactProperty;
- (CNFavoritesEntry)initWithContact:(id)contact propertyKey:(id)key labeledValueIdentifier:(id)identifier actionType:(id)type bundleIdentifier:(id)bundleIdentifier store:(id)store;
- (CNFavoritesEntry)initWithDictionaryRepresentation:(id)representation;
- (CNFavoritesEntry)initWithDictionaryRepresentation:(id)representation store:(id)store;
- (CNFavoritesEntry)initWithEntryRepresentation:(id)representation store:(id)store;
- (NSString)name;
- (id)convertFromEntryType:(void *)type toActionType:(void *)actionType bundleIdentifier:;
- (id)dictionaryRepresentation;
- (id)entryRepresentation;
- (id)fetchContactMatchingIdentifier:(void *)identifier keysToFetch:;
- (id)fetchContactMatchingLegacyIdentifier:(void *)identifier keysToFetch:;
- (id)rematch;
- (uint64_t)resetContactMatch;
- (uint64_t)setContact:(uint64_t)contact;
- (unint64_t)hash;
- (void)applyChangeRecord:(id)record;
- (void)dealloc;
- (void)name;
- (void)performMigrationWithDictionaryRepresentation:(uint64_t)representation;
- (void)resetContactMatch;
- (void)setLabel:(uint64_t)label;
@end

@implementation CNFavoritesEntry

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CNFavoritesEntry;
  objc_msgSendSuper2(&v2, sel_initialize);
  ABInitialize();
}

- (CNContactProperty)contactProperty
{
  v62 = *MEMORY[0x1E69E9840];
  if (self)
  {
    contact = self->_contact;
  }

  else
  {
    contact = 0;
  }

  p_super = contact;
  v6 = +[CN contactPropertiesByKey];
  [(CNFavoritesEntry *)self propertyKey];
  objc_claimAutoreleasedReturnValue();
  v7 = [OUTLINED_FUNCTION_5_3() objectForKeyedSubscript:?];

  contactIdentifier = [(CNFavoritesEntry *)self contactIdentifier];
  if (!contactIdentifier)
  {
    goto LABEL_13;
  }

  v9 = contactIdentifier;
  if (p_super)
  {
    contactIdentifier2 = [(CNFavoritesEntry *)self contactIdentifier];
    if (self)
    {
      v10 = self->_contact;
    }

    else
    {
      v10 = 0;
    }

    identifier = [(CNContact *)v10 identifier];
    v12 = [contactIdentifier2 isEqualToString:identifier];

    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  [(CNFavoritesEntry *)self propertyKey];
  objc_claimAutoreleasedReturnValue();
  v13 = [OUTLINED_FUNCTION_5_3() descriptorsForRequiredKeysForPropertyKey:?];

  contactIdentifier3 = [(CNFavoritesEntry *)self contactIdentifier];
  v15 = [(CNFavoritesEntry *)&self->super.isa fetchContactMatchingIdentifier:contactIdentifier3 keysToFetch:v13];

  if (v15)
  {
    name = self->_name;
    self->_name = 0;
  }

  p_super = v15;
LABEL_13:
  labeledValueIdentifier = [(CNFavoritesEntry *)self labeledValueIdentifier];
  v50 = p_super;
  if (p_super)
  {
    [v7 CNValueForContact:p_super];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v18 = v58 = 0u;
    v19 = [(CNMutableContact *)v18 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v56;
      while (2)
      {
        v22 = v7;
        for (i = 0; i != v20; ++i)
        {
          if (*v56 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v55 + 1) + 8 * i);
          identifier2 = [v24 identifier];
          if (identifier2 | labeledValueIdentifier)
          {
            v26 = identifier2;
            identifier3 = [v24 identifier];
            v28 = [identifier3 isEqual:labeledValueIdentifier];

            if ((v28 & 1) == 0)
            {
              continue;
            }
          }

          v38 = v18;
          v7 = v22;
          p_super = v50;
          goto LABEL_43;
        }

        v20 = [(CNMutableContact *)v18 countByEnumeratingWithState:&v55 objects:v61 count:16];
        v7 = v22;
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    p_super = v50;
  }

  if (+[CNFavoritesEntry shouldRetryMatching]&& p_super && !labeledValueIdentifier)
  {
    v49 = v7;
    [v7 CNValueForContact:p_super];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v18 = v54 = 0u;
    v29 = [(CNMutableContact *)v18 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v52;
      while (2)
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v52 != v31)
          {
            objc_enumerationMutation(v18);
          }

          v33 = *(*(&v51 + 1) + 8 * j);
          value = [v33 value];
          propertyKey = [(CNFavoritesEntry *)self propertyKey];
          value2 = [(CNFavoritesEntry *)self value];
          v37 = [CNFavoritesEntry favoritesEntryValueForLabeledValueValue:value propertyKey:propertyKey isEqualToValue:value2];

          if (v37)
          {
            identifier4 = [v33 identifier];
            v45 = MEMORY[0x1E6996658];
            labeledValueIdentifier = [(CNFavoritesEntry *)self propertyKey];
            [v45 reportBugWithDomain:@"Contacts" type:@"Favorites" subType:@"Entry Contact Property" name:@"RetryMatching" value:labeledValueIdentifier];
            v38 = v18;
            v7 = v49;
            p_super = v50;
            goto LABEL_42;
          }
        }

        v30 = [(CNMutableContact *)v18 countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    labeledValueIdentifier = 0;
    v7 = v49;
    p_super = v50;
  }

  v38 = objc_alloc_init(CNMutableContact);
  value3 = [(CNFavoritesEntry *)self value];
  if (self)
  {
    label = self->_label;
  }

  else
  {
    label = 0;
  }

  v41 = label;
  propertyKey2 = [(CNFavoritesEntry *)self propertyKey];
  v18 = [CNFavoritesEntry createLabeledValueForFavoritesEntryValue:value3 label:v41 propertyKey:propertyKey2];

  if (v18)
  {
    v59 = v18;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
    [v7 setCNValue:v43 onContact:v38];

    v38 = v38;
    identifier4 = [(CNContact *)v18 identifier];
    p_super = &v38->super;
LABEL_42:

    labeledValueIdentifier = identifier4;
  }

LABEL_43:

  if (p_super)
  {
    [(CNFavoritesEntry *)self setContact:?];
    [(CNFavoritesEntry *)self setLabeledValueIdentifier:labeledValueIdentifier];
    propertyKey3 = [(CNFavoritesEntry *)self propertyKey];
    v46 = [CNContactProperty contactPropertyWithContact:p_super propertyKey:propertyKey3 identifier:labeledValueIdentifier];
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

+ (id)contactFormatter
{
  objc_opt_self();
  if (contactFormatter_onceToken != -1)
  {
    +[CNFavoritesEntry contactFormatter];
  }

  v0 = contactFormatter___contactFormatter;

  return v0;
}

uint64_t __36__CNFavoritesEntry_contactFormatter__block_invoke()
{
  v0 = objc_alloc_init(CNContactFormatter);
  v1 = contactFormatter___contactFormatter;
  contactFormatter___contactFormatter = v0;

  [contactFormatter___contactFormatter setStyle:0];
  v2 = contactFormatter___contactFormatter;

  return [v2 setFallbackStyle:-1];
}

- (unint64_t)hash
{
  v14 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __24__CNFavoritesEntry_hash__block_invoke;
  v24[3] = &unk_1E7412250;
  v24[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __24__CNFavoritesEntry_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __24__CNFavoritesEntry_hash__block_invoke_3;
  v22[3] = &unk_1E7412250;
  v22[4] = self;
  v4 = _Block_copy(v22);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __24__CNFavoritesEntry_hash__block_invoke_4;
  v21[3] = &unk_1E7412250;
  v21[4] = self;
  v5 = _Block_copy(v21);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __24__CNFavoritesEntry_hash__block_invoke_5;
  v20[3] = &unk_1E7412250;
  v20[4] = self;
  v6 = _Block_copy(v20);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __24__CNFavoritesEntry_hash__block_invoke_6;
  v19[3] = &unk_1E7412250;
  v19[4] = self;
  v7 = _Block_copy(v19);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __24__CNFavoritesEntry_hash__block_invoke_7;
  v18[3] = &unk_1E7412250;
  v18[4] = self;
  v8 = _Block_copy(v18);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __24__CNFavoritesEntry_hash__block_invoke_8;
  v17[3] = &unk_1E7412250;
  v17[4] = self;
  v9 = _Block_copy(v17);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __24__CNFavoritesEntry_hash__block_invoke_9;
  v16[3] = &unk_1E7412250;
  v16[4] = self;
  v10 = _Block_copy(v16);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __24__CNFavoritesEntry_hash__block_invoke_10;
  v15[3] = &unk_1E7412250;
  v15[4] = self;
  v11 = _Block_copy(v15);
  v12 = [v14 hashWithBlocks:{v24, v3, v4, v5, v6, v7, v8, v9, v10, v11, 0}];

  return v12;
}

- (NSString)name
{
  name = self->_name;
  if (name)
  {
    goto LABEL_6;
  }

  if (!self->_contact)
  {
    [(CNFavoritesEntry *)self name];
  }

  if (self->_contact)
  {
    v4 = +[CNFavoritesEntry contactFormatter];
    v5 = self->_contact;
    v6 = [v4 stringFromContact:v5];
    v7 = self->_name;
    self->_name = v6;

    objc_setProperty_nonatomic_copy(self, v8, self->_name, 72);
    name = self->_name;
LABEL_6:
    v9 = name;
    goto LABEL_7;
  }

  v9 = &stru_1F094DAB0;
LABEL_7:

  return v9;
}

uint64_t __24__CNFavoritesEntry_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) entryIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __24__CNFavoritesEntry_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) name];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __24__CNFavoritesEntry_hash__block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) value];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __24__CNFavoritesEntry_hash__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 64);
  }

  else
  {
    v2 = 0;
  }

  return [MEMORY[0x1E6996730] objectHash:v2];
}

uint64_t __24__CNFavoritesEntry_hash__block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) propertyKey];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __24__CNFavoritesEntry_hash__block_invoke_6(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) actionType];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __24__CNFavoritesEntry_hash__block_invoke_7(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __24__CNFavoritesEntry_hash__block_invoke_8(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) contactIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __24__CNFavoritesEntry_hash__block_invoke_9(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) actionChannel];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __24__CNFavoritesEntry_hash__block_invoke_10(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) labeledValueIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

+ (id)descriptorsForRequiredKeysForPropertyKey:(id)key
{
  v12[4] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  array = [MEMORY[0x1E695DF70] array];
  v5 = array;
  if (keyCopy)
  {
    [array addObject:keyCopy];
  }

  else
  {
    v12[0] = @"emailAddresses";
    v12[1] = @"phoneNumbers";
    v12[2] = @"instantMessageAddresses";
    v12[3] = @"socialProfiles";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];
    [v5 addObjectsFromArray:v6];
  }

  v7 = +[CNFavoritesEntry contactFormatter];
  descriptorForRequiredKeys = [v7 descriptorForRequiredKeys];
  [v5 addObject:descriptorForRequiredKeys];

  [v5 addObject:@"watchWallpaperImageData"];
  v9 = +[CNGeminiManager descriptorForRequiredKeys];
  [v5 addObject:v9];

  v10 = [v5 copy];

  return v10;
}

+ (id)valueStringFromSocialProfile:(uint64_t)profile
{
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x1E696AE40];
  dictionaryRepresentation = [v2 dictionaryRepresentation];

  v5 = [v3 dataWithPropertyList:dictionaryRepresentation format:100 options:0 error:0];

  v6 = [v5 base64EncodedStringWithOptions:0];

  return v6;
}

+ (id)favoritesEntryValueForLabeledValueValue:(void *)value propertyKey:
{
  v4 = a2;
  valueCopy = value;
  objc_opt_self();
  if ([valueCopy isEqualToString:@"phoneNumbers"])
  {
    stringValue = [v4 stringValue];
LABEL_5:
    v7 = stringValue;
    goto LABEL_6;
  }

  if ([valueCopy isEqualToString:@"emailAddresses"])
  {
    stringValue = v4;
    goto LABEL_5;
  }

  if ([valueCopy isEqualToString:@"socialProfiles"])
  {
    objc_opt_class();
    v9 = v4;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

LABEL_17:
    v11 = v10;

    v7 = [CNFavoritesEntry valueStringFromSocialProfile:v11];

    goto LABEL_6;
  }

  if ([valueCopy isEqualToString:@"instantMessageAddresses"])
  {
    objc_opt_class();
    v9 = v4;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_17;
  }

  NSLog(&cfstr_AttemptingToCr.isa);
  v7 = 0;
LABEL_6:

  return v7;
}

+ (id)socialProfileForFavoritesEntryValue:(uint64_t)value
{
  v2 = a2;
  objc_opt_self();
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v2 options:0];

  v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:0];
  v5 = [CNSocialProfile socialProfileWithDictionaryRepresentation:v4];

  return v5;
}

+ (id)instantMessageAddressForFavoritesEntryValue:(uint64_t)value
{
  v2 = a2;
  objc_opt_self();
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v2 options:0];

  v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:0];
  v5 = [CNInstantMessageAddress instantMessageAddressWithDictionaryRepresentation:v4];

  return v5;
}

+ (id)labeledValueValueForFavoritesEntryValue:(void *)value propertyKey:
{
  v4 = a2;
  valueCopy = value;
  objc_opt_self();
  if ([valueCopy isEqualToString:@"phoneNumbers"])
  {
    v6 = [CNPhoneNumber phoneNumberWithStringValue:v4];
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  if ([valueCopy isEqualToString:@"emailAddresses"])
  {
    v6 = v4;
    goto LABEL_9;
  }

  if ([valueCopy isEqualToString:@"socialProfiles"])
  {
    v6 = [CNFavoritesEntry socialProfileForFavoritesEntryValue:v4];
    goto LABEL_9;
  }

  if ([valueCopy isEqualToString:@"instantMessageAddresses"])
  {
    v6 = [CNFavoritesEntry instantMessageAddressForFavoritesEntryValue:v4];
    goto LABEL_9;
  }

  NSLog(&cfstr_AttemptingToCr_0.isa);
  v7 = 0;
LABEL_10:

  return v7;
}

+ (CNLabeledValue)createLabeledValueForFavoritesEntryValue:(void *)value label:(void *)label propertyKey:
{
  valueCopy = value;
  labelCopy = label;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = [(CNFavoritesEntry *)v9 labeledValueValueForFavoritesEntryValue:v8 propertyKey:labelCopy];

  if (v10)
  {
    v11 = [[CNLabeledValue alloc] initWithLabel:valueCopy value:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CNFavoritesEntry)initWithContact:(id)contact propertyKey:(id)key labeledValueIdentifier:(id)identifier actionType:(id)type bundleIdentifier:(id)bundleIdentifier store:(id)store
{
  v37[4] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  keyCopy = key;
  identifierCopy = identifier;
  typeCopy = type;
  bundleIdentifierCopy = bundleIdentifier;
  storeCopy = store;
  v36.receiver = self;
  v36.super_class = CNFavoritesEntry;
  v20 = [(CNFavoritesEntry *)&v36 init];
  if (v20)
  {
    v34 = typeCopy;
    v35 = contactCopy;
    v37[0] = @"phoneNumbers";
    v37[1] = @"emailAddresses";
    v37[2] = @"socialProfiles";
    v37[3] = @"instantMessageAddresses";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    v22 = [v21 containsObject:keyCopy];

    if (v22)
    {
      [(CNFavoritesEntry *)v20 setPropertyKey:keyCopy];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      [(CNFavoritesEntry *)v20 setEntryIdentifier:uUIDString];

      v27 = [CN sourceContactForValue:0 labeledValueIdentifier:identifierCopy propertyKey:keyCopy inUnifiedContact:v35];
      [(CNFavoritesEntry *)v20 setContact:v27];

      identifier = [(CNContact *)v20->_contact identifier];
      [(CNFavoritesEntry *)v20 setContactIdentifier:identifier];

      [(CNFavoritesEntry *)v20 setLabeledValueIdentifier:identifierCopy];
      objc_storeStrong(&v20->_contactStore, store);
      objc_storeStrong(&v20->_actionType, type);
      objc_storeStrong(&v20->_bundleIdentifier, bundleIdentifier);
      v29 = [(CNContact *)v20->_contact valueForKey:keyCopy];
      v23 = [CNLabeledValue labeledValueWithIdentifier:identifierCopy inArray:v29];

      if (v23)
      {
        label = [v23 label];
        label = v20->_label;
        v20->_label = label;

        value = [v23 value];
        v33 = [CNFavoritesEntry favoritesEntryValueForLabeledValueValue:value propertyKey:keyCopy];
        [(CNFavoritesEntry *)v20 setValue:v33];
      }

      else
      {
        value = v20;
        v20 = 0;
      }

      typeCopy = v34;

      contactCopy = v35;
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:@"CNFavoritesEntryInvalidPropertyException" format:{@"The property %@ is not supported for favorites", keyCopy}];
      v23 = v20;
      v20 = 0;
      typeCopy = v34;
      contactCopy = v35;
    }
  }

  return v20;
}

- (id)fetchContactMatchingIdentifier:(void *)identifier keysToFetch:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v7 = [[CNContactFetchRequest alloc] initWithKeysToFetch:identifierCopy];
    [(CNContactFetchRequest *)v7 setUnifyResults:0];
    v19[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v9 = [CNContact predicateForContactsWithIdentifiers:v8];
    [(CNContactFetchRequest *)v7 setPredicate:v9];

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__32;
    v17 = __Block_byref_object_dispose__32;
    v18 = 0;
    v10 = self[7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__CNFavoritesEntry_fetchContactMatchingIdentifier_keysToFetch___block_invoke;
    v12[3] = &unk_1E7412670;
    v12[4] = &v13;
    [v10 enumerateContactsWithFetchRequest:v7 error:0 usingBlock:v12];

    self = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  return self;
}

+ (uint64_t)shouldRetryMatching
{
  objc_opt_self();
  if (shouldRetryMatching_cn_once_token_1 != -1)
  {
    +[CNFavoritesEntry shouldRetryMatching];
  }

  v0 = shouldRetryMatching_cn_once_object_1;

  return [v0 BOOLValue];
}

+ (BOOL)favoritesEntryValueForLabeledValueValue:(void *)value propertyKey:(void *)key isEqualToValue:
{
  valueCopy = value;
  keyCopy = key;
  v8 = a2;
  objc_opt_self();
  v9 = [CNFavoritesEntry favoritesEntryValueForLabeledValueValue:v8 propertyKey:valueCopy];

  if ([v9 isEqualToString:keyCopy])
  {
    v10 = 1;
  }

  else if ([valueCopy isEqualToString:@"phoneNumbers"])
  {
    v10 = [CNFavoritesEntry arePhoneNumbersEqual:v9 other:keyCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __39__CNFavoritesEntry_shouldRetryMatching__block_invoke()
{
  v0 = MEMORY[0x1E696AD98];
  v4 = [MEMORY[0x1E6996888] standardPreferences];
  v1 = [v0 numberWithInt:{objc_msgSend(v4, "userHasOptedOutOfPreference:", @"CNFavoritesEntryShouldRetryMatching"}];
  v2 = [v1 copy];
  v3 = shouldRetryMatching_cn_once_object_1;
  shouldRetryMatching_cn_once_object_1 = v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  actionType = [(CNFavoritesEntry *)self actionType];
  if (actionType || ([equalCopy actionType], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    actionType2 = [(CNFavoritesEntry *)self actionType];
    actionType3 = [equalCopy actionType];
    if (([actionType2 isEqual:actionType3] & 1) == 0)
    {

      v11 = 0;
      if (!actionType)
      {
        actionType = v6;
      }

      goto LABEL_7;
    }

    v43 = 1;
  }

  else
  {
    v43 = 0;
  }

  bundleIdentifier = [(CNFavoritesEntry *)self bundleIdentifier];
  if (!bundleIdentifier)
  {
    bundleIdentifier2 = [equalCopy bundleIdentifier];
    if (!bundleIdentifier2)
    {
      v41 = 0;
      goto LABEL_19;
    }
  }

  bundleIdentifier3 = [(CNFavoritesEntry *)self bundleIdentifier];
  bundleIdentifier4 = [equalCopy bundleIdentifier];
  if ([bundleIdentifier3 isEqual:bundleIdentifier4])
  {
    v37 = bundleIdentifier4;
    v41 = 1;
LABEL_19:
    propertyKey = [(CNFavoritesEntry *)self propertyKey];
    v38 = bundleIdentifier3;
    if (propertyKey || ([equalCopy propertyKey], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      propertyKey2 = [(CNFavoritesEntry *)self propertyKey];
      propertyKey3 = [equalCopy propertyKey];
      v40 = propertyKey2;
      if (![propertyKey2 isEqual:?])
      {
        contactIdentifier = 0;
LABEL_34:

LABEL_35:
        v21 = propertyKey;
        if (!propertyKey)
        {

          v21 = 0;
        }

        if (v41)
        {
        }

        if (!bundleIdentifier)
        {
        }

        if (v43)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v36 = bundleIdentifier2;
      v16 = 1;
    }

    else
    {
      v36 = bundleIdentifier2;
      v33 = 0;
      v16 = 0;
    }

    value = [(CNFavoritesEntry *)self value];
    if (value || ([equalCopy value], (v32 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v35 = v16;
      v34 = v6;
      v18 = [(CNFavoritesEntry *)self value:v32];
      value2 = [equalCopy value];
      contactIdentifier = [v18 isEqual:value2];

      if (value)
      {

        if (!v35)
        {
          v6 = v34;
          bundleIdentifier2 = v36;
          goto LABEL_35;
        }

        v6 = v34;
        bundleIdentifier2 = v36;
        goto LABEL_34;
      }

      v6 = v34;
      LOBYTE(v16) = v35;
      v20 = v32;
    }

    else
    {
      v20 = 0;
      contactIdentifier = 1;
    }

    bundleIdentifier2 = v36;
    if ((v16 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (bundleIdentifier)
  {
  }

  else
  {
  }

  contactIdentifier = 0;
  if (v43)
  {
LABEL_42:
  }

LABEL_43:
  if (actionType)
  {

    if (!contactIdentifier)
    {
      goto LABEL_59;
    }
  }

  else
  {

    if ((contactIdentifier & 1) == 0)
    {
LABEL_59:
      v11 = 0;
      goto LABEL_60;
    }
  }

  if (!self || (v22 = self->_label) == 0)
  {
    if (!equalCopy)
    {
      goto LABEL_62;
    }

    v26 = equalCopy[8];
    if (!v26)
    {
      goto LABEL_62;
    }

    contactIdentifier = v26;
    if (self)
    {
      v24 = self->_label;
    }

    else
    {
      v24 = 0;
    }

    v23 = 0;
    v25 = 1;
    goto LABEL_56;
  }

  v23 = v22;
  v24 = self->_label;
  v25 = 0;
  if (equalCopy)
  {
LABEL_56:
    v27 = equalCopy[8];
    goto LABEL_57;
  }

  v27 = 0;
LABEL_57:
  v28 = [(NSString *)v24 isEqual:v27, v32];

  if (v25)
  {

    if ((v28 & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else
  {

    if (!v28)
    {
      goto LABEL_59;
    }
  }

LABEL_62:
  if (!self || !self->_label)
  {
    v11 = 1;
    goto LABEL_60;
  }

  actionType = [(CNFavoritesEntry *)self contactIdentifier];
  if (!actionType)
  {
    contactIdentifier = [equalCopy contactIdentifier];
    if (!contactIdentifier)
    {
      v11 = 1;
LABEL_69:

      goto LABEL_7;
    }
  }

  contactIdentifier2 = [(CNFavoritesEntry *)self contactIdentifier];
  contactIdentifier3 = [equalCopy contactIdentifier];
  v11 = [contactIdentifier2 isEqual:contactIdentifier3];

  if (!actionType)
  {
    goto LABEL_69;
  }

LABEL_7:

LABEL_60:
  return v11;
}

- (CNFavoritesEntry)initWithEntryRepresentation:(id)representation store:(id)store
{
  representationCopy = representation;
  storeCopy = store;
  v8 = [(CNFavoritesEntry *)self init];
  if (v8)
  {
    entryIdentifier = [representationCopy entryIdentifier];
    entryIdentifier = v8->_entryIdentifier;
    v8->_entryIdentifier = entryIdentifier;

    name = [representationCopy name];
    objc_setProperty_nonatomic_copy(v8, v12, name, 72);

    value = [representationCopy value];
    [(CNFavoritesEntry *)v8 setValue:value];

    label = [representationCopy label];
    label = v8->_label;
    v8->_label = label;

    propertyKey = [representationCopy propertyKey];
    [(CNFavoritesEntry *)v8 setPropertyKey:propertyKey];

    actionType = [representationCopy actionType];
    actionType = v8->_actionType;
    v8->_actionType = actionType;

    bundleIdentifier = [representationCopy bundleIdentifier];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = bundleIdentifier;

    actionChannel = [representationCopy actionChannel];
    [(CNFavoritesEntry *)v8 setActionChannel:actionChannel];

    contactIdentifier = [representationCopy contactIdentifier];
    [(CNFavoritesEntry *)v8 setContactIdentifier:contactIdentifier];

    labeledValueIdentifier = [representationCopy labeledValueIdentifier];
    [(CNFavoritesEntry *)v8 setLabeledValueIdentifier:labeledValueIdentifier];

    objc_storeStrong(&v8->_contactStore, store);
    v24 = v8;
  }

  return v8;
}

- (CNFavoritesEntry)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v22.receiver = self;
  v22.super_class = CNFavoritesEntry;
  v5 = [(CNFavoritesEntry *)&v22 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"EntryIdentifier"];
    [(CNFavoritesEntry *)v5 setEntryIdentifier:v6];

    v7 = [representationCopy objectForKey:@"Name"];
    objc_setProperty_nonatomic_copy(v5, v8, v7, 72);

    v9 = [representationCopy objectForKey:@"Value"];
    [(CNFavoritesEntry *)v5 setValue:v9];

    v10 = [representationCopy objectForKey:@"Label"];
    label = v5->_label;
    v5->_label = v10;

    v12 = [representationCopy objectForKey:@"ContactProperty"];
    [(CNFavoritesEntry *)v5 setPropertyKey:v12];

    v13 = [representationCopy objectForKey:@"ActionType"];
    actionType = v5->_actionType;
    v5->_actionType = v13;

    v15 = [representationCopy objectForKey:@"BundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v15;

    v17 = [representationCopy objectForKey:@"ActionChannel"];
    [(CNFavoritesEntry *)v5 setActionChannel:v17];

    v18 = [representationCopy objectForKey:@"ContactIdentifier"];
    [(CNFavoritesEntry *)v5 setContactIdentifier:v18];

    v19 = [representationCopy objectForKey:@"LabeledValueIdentifier"];
    [(CNFavoritesEntry *)v5 setLabeledValueIdentifier:v19];

    v20 = v5;
  }

  return v5;
}

+ (BOOL)arePhoneNumbersEqual:(id)equal other:(id)other
{
  otherCopy = other;
  equalCopy = equal;
  +[CNPhoneNumber defaultCountryCode];
  v7 = PNPhoneNumbersEqual();

  return v7;
}

+ (BOOL)areLabelsEqual:(void *)equal other:
{
  v4 = a2;
  equalCopy = equal;
  objc_opt_self();
  if (v4)
  {
    v6 = [v4 length];
    v7 = 1;
    if (equalCopy && v6 && [equalCopy length])
    {
      v7 = [v4 localizedCaseInsensitiveCompare:equalCopy] == 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)rematchWithContacts
{
  rematch = [(CNFavoritesEntry *)self rematch];
  second = [rematch second];
  bOOLValue = [second BOOLValue];

  if (bOOLValue)
  {
    [(CNFavoritesEntry *)self resetContactMatch];
  }

  else
  {
    first = [rematch first];
    [(CNFavoritesEntry *)self applyChangeRecord:first];
  }

  dirty = [(CNFavoritesEntry *)self dirty];

  return dirty;
}

- (BOOL)rematchWithGeminiManager:(id)manager
{
  managerCopy = manager;
  actionType = [(CNFavoritesEntry *)self actionType];
  if ([actionType isEqualToString:@"AudioCallActionType"])
  {
    goto LABEL_6;
  }

  actionType2 = [(CNFavoritesEntry *)self actionType];
  if ([actionType2 isEqualToString:@"MessageActionType"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  actionType3 = [(CNFavoritesEntry *)self actionType];
  if ([actionType3 isEqualToString:@"TTYCallActionType"])
  {

    goto LABEL_5;
  }

  actionType4 = [(CNFavoritesEntry *)self actionType];
  v16 = [actionType4 isEqualToString:@"TTYRelayCallActionType"];

  if ((v16 & 1) == 0)
  {
    dirty = 0;
    goto LABEL_10;
  }

LABEL_7:
  contactProperty = [(CNFavoritesEntry *)self contactProperty];
  contact = [contactProperty contact];
  v10 = [managerCopy bestSenderIdentityForContact:contact error:0];

  v11 = [CNGeminiManager channelStringFromSenderIdentity:v10];
  actionChannel = [(CNFavoritesEntry *)self actionChannel];

  if (actionChannel != v11)
  {
    [(CNFavoritesEntry *)self setActionChannel:v11];
    [(CNFavoritesEntry *)self setDirty:1];
  }

  dirty = [(CNFavoritesEntry *)self dirty];

LABEL_10:
  return dirty;
}

- (void)resetContactMatch
{
  if (self && (v3 = self->_label) != 0 || ([(CNFavoritesEntry *)self name], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || ([(CNFavoritesEntry *)self contactIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    labeledValueIdentifier = [(CNFavoritesEntry *)self labeledValueIdentifier];

    if (!labeledValueIdentifier)
    {
      return;
    }
  }

  contactIdentifier = [(CNFavoritesEntry *)self contactIdentifier];

  if (contactIdentifier)
  {
    [(CNFavoritesEntry *)self setContactIdentifier:0];
  }

  labeledValueIdentifier2 = [(CNFavoritesEntry *)self labeledValueIdentifier];

  if (labeledValueIdentifier2)
  {
    [(CNFavoritesEntry *)self setLabeledValueIdentifier:0];
    goto LABEL_12;
  }

  if (contactIdentifier)
  {
LABEL_12:
    [(CNFavoritesEntry *)self resetContactMatch];
  }
}

- (void)applyChangeRecord:(id)record
{
  recordCopy = record;
  if (recordCopy)
  {
    v17 = recordCopy;
    labeledValueIdentifier = [recordCopy labeledValueIdentifier];

    if (labeledValueIdentifier)
    {
      labeledValueIdentifier2 = [v17 labeledValueIdentifier];
      [(CNFavoritesEntry *)self setLabeledValueIdentifier:labeledValueIdentifier2];
    }

    contactIdentifier = [v17 contactIdentifier];

    if (contactIdentifier)
    {
      contactIdentifier2 = [(CNFavoritesEntry *)self contactIdentifier];
      [(CNFavoritesEntry *)self setOldContactIdentifier:contactIdentifier2];

      contactIdentifier3 = [v17 contactIdentifier];
      [(CNFavoritesEntry *)self setContactIdentifier:contactIdentifier3];
    }

    value = [v17 value];

    if (value)
    {
      value2 = [v17 value];
      [(CNFavoritesEntry *)self setValue:value2];
    }

    name = [v17 name];

    if (name)
    {
      name2 = [v17 name];
      name = self->_name;
      self->_name = name2;

      objc_setProperty_nonatomic_copy(self, v15, self->_name, 72);
    }

    label = [v17 label];

    if (label)
    {
      [(CNFavoritesEntry *)v17 applyChangeRecord:?];
    }

    [(CNFavoritesEntry *)self setDirty:1];
    recordCopy = v17;
  }
}

+ (__CFString)convertABPropertyToCNPropertyFromDictionary:(uint64_t)dictionary
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 objectForKey:@"Property"];

  if (v4)
  {
    v5 = [v3 mapABPropertyToCNContactPropertyKey:{objc_msgSend(v4, "intValue")}];
    if (v5)
    {
      goto LABEL_5;
    }

    NSLog(&cfstr_Cnfavoritesent_2.isa, [v4 intValue]);
  }

  v5 = @"emailAddresses";
LABEL_5:

  return v5;
}

- (id)convertFromEntryType:(void *)type toActionType:(void *)actionType bundleIdentifier:
{
  if (result)
  {
    if (a2 <= 2)
    {
      v5 = off_1E74173B0[a2];
      *type = *off_1E7417398[a2];
      result = *v5;
      *actionType = result;
    }
  }

  return result;
}

- (id)fetchContactMatchingLegacyIdentifier:(void *)identifier keysToFetch:
{
  identifierCopy = identifier;
  if (self)
  {
    v6 = [[CNContactFetchRequest alloc] initWithKeysToFetch:identifierCopy];
    [(CNContactFetchRequest *)v6 setUnifyResults:0];
    v7 = [CNContact predicateForLegacyIdentifier:a2];
    [(CNContactFetchRequest *)v6 setPredicate:v7];

    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__32;
    v15 = __Block_byref_object_dispose__32;
    v16 = 0;
    v8 = self[7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__CNFavoritesEntry_fetchContactMatchingLegacyIdentifier_keysToFetch___block_invoke;
    v10[3] = &unk_1E7412670;
    v10[4] = &v11;
    [v8 enumerateContactsWithFetchRequest:v6 error:0 usingBlock:v10];

    self = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return self;
}

+ (id)mapABPropertyToCNContactPropertyKey:(int)key
{
  v3 = *&key;
  if (mapABPropertyToCNContactPropertyKey__cn_once_token_2 != -1)
  {
    +[CNFavoritesEntry mapABPropertyToCNContactPropertyKey:];
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = mapABPropertyToCNContactPropertyKey__cn_once_object_2;
  v6 = [v4 numberWithInt:v3];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

void __56__CNFavoritesEntry_mapABPropertyToCNContactPropertyKey___block_invoke()
{
  v8[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E698A548]];
  v7[0] = v0;
  v8[0] = @"phoneNumbers";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E698A340]];
  v7[1] = v1;
  v8[1] = @"emailAddresses";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E698A3C8]];
  v7[2] = v2;
  v8[2] = @"instantMessageAddresses";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E698A5B0]];
  v7[3] = v3;
  v8[3] = @"socialProfiles";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = [v4 copy];
  v6 = mapABPropertyToCNContactPropertyKey__cn_once_object_2;
  mapABPropertyToCNContactPropertyKey__cn_once_object_2 = v5;
}

+ (int)mapCNContactPropertyKeyToABProperty:(id)property
{
  propertyCopy = property;
  if (mapCNContactPropertyKeyToABProperty__cn_once_token_3 != -1)
  {
    +[CNFavoritesEntry mapCNContactPropertyKeyToABProperty:];
  }

  v4 = [mapCNContactPropertyKeyToABProperty__cn_once_object_3 objectForKeyedSubscript:propertyCopy];
  v5 = v4;
  if (v4)
  {
    intValue = [v4 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

void __56__CNFavoritesEntry_mapCNContactPropertyKeyToABProperty___block_invoke()
{
  v8[4] = *MEMORY[0x1E69E9840];
  v7[0] = @"phoneNumbers";
  v0 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E698A548]];
  v8[0] = v0;
  v7[1] = @"emailAddresses";
  v1 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E698A340]];
  v8[1] = v1;
  v7[2] = @"instantMessageAddresses";
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E698A3C8]];
  v8[2] = v2;
  v7[3] = @"socialProfiles";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E698A5B0]];
  v8[3] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v5 = [v4 copy];
  v6 = mapCNContactPropertyKeyToABProperty__cn_once_object_3;
  mapCNContactPropertyKeyToABProperty__cn_once_object_3 = v5;
}

- (uint64_t)setContact:(uint64_t)contact
{
  v4 = a2;
  v5 = v4;
  if (contact)
  {
    v4 = (contact + 80);
    if (*(contact + 80) != v5)
    {
      v8 = v5;
      objc_storeStrong(v4, a2);
      v6 = *(contact + 8);
      *(contact + 8) = 0;

      v5 = v8;
    }
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setLabel:(uint64_t)label
{
  if (label)
  {
    objc_storeStrong((label + 64), a2);
  }
}

- (void)dealloc
{
  [(CNFavoritesEntry *)self setContact:?];
  v3.receiver = self;
  v3.super_class = CNFavoritesEntry;
  [(CNFavoritesEntry *)&v3 dealloc];
}

- (CNFavoritesEntry)initWithDictionaryRepresentation:(id)representation store:(id)store
{
  representationCopy = representation;
  storeCopy = store;
  v8 = [(CNFavoritesEntry *)self initWithDictionaryRepresentation:representationCopy];
  [(CNiOSEncodedPeopleFetcher *)v8 setCursor:storeCopy];

  entryIdentifier = [(CNFavoritesEntry *)v8 entryIdentifier];

  if (!entryIdentifier)
  {
    [(CNFavoritesEntry *)v8 performMigrationWithDictionaryRepresentation:representationCopy];
    [(CNFavoritesEntry *)v8 setDirty:1];
  }

  return v8;
}

- (void)performMigrationWithDictionaryRepresentation:(uint64_t)representation
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (representation)
  {
    entryIdentifier = [representation entryIdentifier];

    if (!entryIdentifier)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      [uUID UUIDString];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_6_3() setEntryIdentifier:v2];
    }

    propertyKey = [representation propertyKey];

    if (!propertyKey)
    {
      v8 = [CNFavoritesEntry convertABPropertyToCNPropertyFromDictionary:v4];
      [representation setPropertyKey:v8];
    }

    actionType = [representation actionType];

    if (!actionType)
    {
      v10 = [v4 objectForKey:@"EntryType"];
      v11 = v10;
      v12 = &unk_1F09872B8;
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      intValue = [v13 intValue];
      v53 = 0;
      v54 = 0;
      [(CNFavoritesEntry *)representation convertFromEntryType:intValue toActionType:&v54 bundleIdentifier:&v53];
      v15 = v54;
      v16 = v53;
      v17 = *(representation + 32);
      *(representation + 32) = v15;
      v18 = v15;

      v19 = *(representation + 40);
      *(representation + 40) = v16;
    }

    v20 = [v4 objectForKey:@"ABDatabaseUUID"];
    v21 = [*(representation + 56) identifierWithError:0];
    v22 = v21;
    if (!v20 || !v21 || [OUTLINED_FUNCTION_3_6() isEqualToString:?])
    {
      v23 = [v4 objectForKey:@"ABUid"];

      if (!v23 || ([v4 objectForKey:@"ABUid"], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "intValue"), v24, (v25 & 0x80000000) != 0))
      {
        v28 = 0;
      }

      else
      {
        propertyKey2 = [representation propertyKey];
        v27 = [CNFavoritesEntry descriptorsForRequiredKeysForPropertyKey:propertyKey2];

        v28 = [(CNFavoritesEntry *)representation fetchContactMatchingLegacyIdentifier:v25 keysToFetch:v27];
        identifier = [v28 identifier];
        [representation setContactIdentifier:identifier];

        if (v28)
        {
          v30 = [v4 objectForKey:@"ABIdentifier"];
          intValue2 = [v30 intValue];

          v48 = intValue2;
          if ((intValue2 & 0x80000000) == 0)
          {
            v46 = v20;
            v47 = v4;
            propertyKey3 = [representation propertyKey];
            v45 = v28;
            v33 = [v28 valueForKey:propertyKey3];

            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v34 = v33;
            v35 = [v34 countByEnumeratingWithState:&v49 objects:v55 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v50;
              while (2)
              {
                for (i = 0; i != v36; ++i)
                {
                  if (*v50 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v49 + 1) + 8 * i);
                  label = [v39 label];
                  v41 = *(representation + 64);
                  if (label)
                  {
                    v42 = label;
                  }

                  else
                  {
                    v42 = &stru_1F094DAB0;
                  }

                  if (v41)
                  {
                    v43 = v41;
                  }

                  else
                  {
                    v43 = &stru_1F094DAB0;
                  }

                  if ([(__CFString *)v42 localizedCaseInsensitiveCompare:v43])
                  {
                  }

                  else
                  {
                    iOSLegacyIdentifier = [v39 iOSLegacyIdentifier];

                    if (iOSLegacyIdentifier == v48)
                    {
                      [v39 identifier];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_6_3() setLabeledValueIdentifier:iOSLegacyIdentifier];

                      goto LABEL_36;
                    }
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v49 objects:v55 count:16];
                if (v36)
                {
                  continue;
                }

                break;
              }
            }

LABEL_36:

            v20 = v46;
            v4 = v47;
            v28 = v45;
          }
        }
      }
    }
  }
}

- (id)entryRepresentation
{
  v15 = [CNFavoritesEntryRepresentation alloc];
  entryIdentifier = [(CNFavoritesEntry *)self entryIdentifier];
  name = [(CNFavoritesEntry *)self name];
  value = [(CNFavoritesEntry *)self value];
  if (self)
  {
    label = self->_label;
  }

  else
  {
    label = 0;
  }

  v7 = label;
  propertyKey = [(CNFavoritesEntry *)self propertyKey];
  actionType = [(CNFavoritesEntry *)self actionType];
  bundleIdentifier = [(CNFavoritesEntry *)self bundleIdentifier];
  actionChannel = [(CNFavoritesEntry *)self actionChannel];
  contactIdentifier = [(CNFavoritesEntry *)self contactIdentifier];
  labeledValueIdentifier = [(CNFavoritesEntry *)self labeledValueIdentifier];
  v16 = [(CNFavoritesEntryRepresentation *)v15 initWithIdentifier:entryIdentifier name:name value:value label:v7 propertyKey:propertyKey actionType:actionType bundleIdentifier:bundleIdentifier actionChannel:actionChannel contactIdentifier:contactIdentifier labeledValueIdentifier:labeledValueIdentifier];

  return v16;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  entryIdentifier = [(CNFavoritesEntry *)self entryIdentifier];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  name = [(CNFavoritesEntry *)self name];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  value = [(CNFavoritesEntry *)self value];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  if (self)
  {
    label = self->_label;
  }

  else
  {
    label = 0;
  }

  [v3 _cn_setNonNilObject:label forKey:@"Label"];
  propertyKey = [(CNFavoritesEntry *)self propertyKey];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  actionType = [(CNFavoritesEntry *)self actionType];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  bundleIdentifier = [(CNFavoritesEntry *)self bundleIdentifier];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  actionChannel = [(CNFavoritesEntry *)self actionChannel];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  contactIdentifier = [(CNFavoritesEntry *)self contactIdentifier];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  labeledValueIdentifier = [(CNFavoritesEntry *)self labeledValueIdentifier];
  [v3 _cn_setNonNilObject:labeledValueIdentifier forKey:@"LabeledValueIdentifier"];

  v14 = [v3 copy];

  return v14;
}

- (id)rematch
{
  v161[6] = *MEMORY[0x1E69E9840];
  if (self && self->_contactStore)
  {
    contactIdentifier = [(CNFavoritesEntry *)self contactIdentifier];

    if (contactIdentifier && (v161[0] = @"phoneNumbers", v161[1] = @"emailAddresses", v161[2] = @"socialProfiles", v161[3] = @"instantMessageAddresses", +[CNContactFormatter descriptorForRequiredKeysForStyle:](CNContactFormatter, "descriptorForRequiredKeysForStyle:", 0), v6 = objc_claimAutoreleasedReturnValue(), v161[4] = v6, v161[5] = @"watchWallpaperImageData", [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:6], v7 = objc_claimAutoreleasedReturnValue(), v6, -[CNFavoritesEntry contactIdentifier](self, "contactIdentifier"), objc_claimAutoreleasedReturnValue(), v8 = OUTLINED_FUNCTION_6_3(), -[CNFavoritesEntry fetchContactMatchingIdentifier:keysToFetch:](v8, v2, v7), v117 = objc_claimAutoreleasedReturnValue(), v2, v7, v117))
    {
      propertyKey = [(CNFavoritesEntry *)self propertyKey];
      v10 = [v117 valueForKey:propertyKey];

      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v11 = v10;
      v12 = 0;
      v3 = [v11 countByEnumeratingWithState:&v125 objects:v160 count:16];
      if (v3)
      {
        v13 = *v126;
        while (2)
        {
          v14 = 0;
          do
          {
            if (*v126 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v125 + 1) + 8 * v14);
            label = [v15 label];
            v17 = label;
            if (self)
            {
              label = self->_label;
            }

            else
            {
              label = 0;
            }

            v19 = [label localizedCaseInsensitiveCompare:label] == 0;

            if (v19)
            {
              v20 = v15;

              identifier = [v20 identifier];
              labeledValueIdentifier = [(CNFavoritesEntry *)self labeledValueIdentifier];
              v23 = [identifier isEqualToString:labeledValueIdentifier];

              if (v23)
              {

                if (v20)
                {
                  v25 = v117;
                  goto LABEL_63;
                }

                v12 = 0;
                goto LABEL_34;
              }

              v12 = v20;
            }

            v14 = v14 + 1;
          }

          while (v3 != v14);
          v24 = [v11 countByEnumeratingWithState:&v125 objects:v160 count:16];
          v3 = v24;
          if (v24)
          {
            continue;
          }

          break;
        }
      }

LABEL_34:
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      obj = v11;
      v3 = [obj countByEnumeratingWithState:&v121 objects:v159 count:16];
      if (v3)
      {
        v52 = *v122;
LABEL_36:
        v11 = 0;
        while (1)
        {
          if (*v122 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(*(&v121 + 1) + 8 * v11);
          value = [v53 value];
          propertyKey2 = [(CNFavoritesEntry *)self propertyKey];
          value2 = [(CNFavoritesEntry *)self value];
          v57 = [CNFavoritesEntry favoritesEntryValueForLabeledValueValue:value propertyKey:propertyKey2 isEqualToValue:value2];

          if (v57)
          {
            v20 = v53;

            identifier2 = [v20 identifier];
            labeledValueIdentifier2 = [(CNFavoritesEntry *)self labeledValueIdentifier];
            v60 = [identifier2 isEqualToString:labeledValueIdentifier2];

            v12 = v20;
            if (v60)
            {
              break;
            }
          }

          v11 = v11 + 1;
          if (v3 == v11)
          {
            v3 = [obj countByEnumeratingWithState:&v121 objects:v159 count:16];
            v20 = v12;
            if (v3)
            {
              goto LABEL_36;
            }

            break;
          }
        }
      }

      else
      {
        v20 = v12;
      }

      v25 = v117;
      if (v20)
      {
LABEL_64:
        if (!v25)
        {
          v74 = 0;
          label4 = 0;
          v76 = 0;
          v77 = 0;
LABEL_115:
          v103 = v25;
          v104 = v25 == 0;
          v105 = MEMORY[0x1E69967A8];
          v106 = MEMORY[0x1E696AD98];
          v107 = v77;
          v108 = [v106 numberWithBool:v104];
          v109 = [v105 pairWithFirst:v107 second:v108];

          goto LABEL_118;
        }

        v118 = v25;
        [v25 identifier];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_6_3() contactIdentifier];
        objc_claimAutoreleasedReturnValue();
        LODWORD(v113) = [OUTLINED_FUNCTION_5_3() isEqualToString:?];

        if (v20)
        {
          [v20 identifier];
          objc_claimAutoreleasedReturnValue();
          labeledValueIdentifier3 = [OUTLINED_FUNCTION_6_3() labeledValueIdentifier];
          v73 = [v11 isEqualToString:labeledValueIdentifier3];

          HIDWORD(v113) = v73 ^ 1;
        }

        else
        {
          HIDWORD(v113) = 0;
        }

        name = [(CNFavoritesEntry *)self name];
        obja = [CNContactFormatter stringFromContact:v118 style:0];
        if ([obja isEqualToString:name])
        {
          v74 = 0;
        }

        else
        {
          v74 = obja;
        }

        propertyKey3 = [(CNFavoritesEntry *)self propertyKey];
        v79 = [propertyKey3 isEqualToString:@"phoneNumbers"];

        if (v79)
        {
          value3 = [v20 value];
          stringValue = [value3 stringValue];

          goto LABEL_86;
        }

        propertyKey4 = [(CNFavoritesEntry *)self propertyKey];
        v83 = [propertyKey4 isEqualToString:@"emailAddresses"];

        if (v83)
        {
          stringValue = [v20 value];
          goto LABEL_86;
        }

        propertyKey5 = [(CNFavoritesEntry *)self propertyKey];
        v85 = [propertyKey5 isEqualToString:@"socialProfiles"];

        if (v85)
        {
          objc_opt_class();
          value4 = [v20 value];
          if (objc_opt_isKindOfClass())
          {
            v87 = value4;
          }

          else
          {
            v87 = 0;
          }
        }

        else
        {
          propertyKey6 = [(CNFavoritesEntry *)self propertyKey];
          v89 = [propertyKey6 isEqualToString:@"instantMessageAddresses"];

          if (!v89)
          {
            stringValue = 0;
LABEL_86:
            value5 = [(CNFavoritesEntry *)self value];
            v91 = [stringValue isEqualToString:value5];

            if (v91)
            {
              v76 = 0;
            }

            else
            {
              v76 = stringValue;
            }

            label2 = [v20 label];
            v93 = *MEMORY[0x1E6996568];
            v94 = (*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], label2);
            if (v94 && (!self ? (v95 = 0) : (v95 = self->_label), value5 = v95, (*(v93 + 16))(v93, value5)))
            {
            }

            else
            {
              label3 = [v20 label];
              v97 = label3;
              if (self)
              {
                v98 = self->_label;
              }

              else
              {
                v98 = 0;
              }

              v99 = [label3 isEqualToString:v98];

              if (v94)
              {
              }

              if ((v99 & 1) == 0)
              {
                label4 = [v20 label];
LABEL_101:
                if (v115)
                {
                  goto LABEL_102;
                }

                v100 = v114 ^ 1;
                if (v76)
                {
                  v100 = 1;
                }

                if (v74 || (v100 & 1) != 0 || label4)
                {
LABEL_102:
                  v77 = objc_alloc_init(CNFavoritesLookupChangeRecord);
                  [(CNFavoritesLookupChangeRecord *)v77 setName:v74];
                  [(CNFavoritesLookupChangeRecord *)v77 setValue:v76];
                  [(CNFavoritesLookupChangeRecord *)v77 setLabel:label4];
                  if (v114)
                  {
                    [(CNFavoritesLookupChangeRecord *)v77 setContactIdentifier:0];
                  }

                  else
                  {
                    identifier3 = [v118 identifier];
                    [(CNFavoritesLookupChangeRecord *)v77 setContactIdentifier:identifier3];
                  }

                  if (v115)
                  {
                    identifier4 = [v20 identifier];
                    [(CNFavoritesLookupChangeRecord *)v77 setLabeledValueIdentifier:identifier4];
                  }

                  else
                  {
                    [(CNFavoritesLookupChangeRecord *)v77 setLabeledValueIdentifier:0];
                  }
                }

                else
                {
                  v77 = 0;
                }

                v25 = v118;
                goto LABEL_115;
              }
            }

            label4 = 0;
            goto LABEL_101;
          }

          objc_opt_class();
          value4 = [v20 value];
          if (objc_opt_isKindOfClass())
          {
            v87 = value4;
          }

          else
          {
            v87 = 0;
          }
        }

        stringValue = [CNFavoritesEntry valueStringFromSocialProfile:v87];

        goto LABEL_86;
      }
    }

    else
    {
      v25 = 0;
    }

    if (self)
    {
      contactStore = self->_contactStore;
    }

    else
    {
      contactStore = 0;
    }

    v27 = v25;
    v11 = contactStore;
    selfCopy = self;
    v153 = 0;
    v154 = &v153;
    v155 = 0x3032000000;
    OUTLINED_FUNCTION_1_6();
    v156 = v29;
    OUTLINED_FUNCTION_0_12();
    v157 = v30;
    v158 = 0;
    v147 = 0;
    v148 = &v147;
    v149 = v31;
    OUTLINED_FUNCTION_1_6();
    v150 = v32;
    OUTLINED_FUNCTION_0_12();
    v151 = v33;
    v152 = 0;
    v141 = 0;
    v142 = &v141;
    v143 = v34;
    OUTLINED_FUNCTION_1_6();
    v144 = v35;
    OUTLINED_FUNCTION_0_12();
    v145 = v36;
    v146 = 0;
    v135 = 0;
    v136 = &v135;
    v137 = v37;
    OUTLINED_FUNCTION_1_6();
    v138 = v38;
    OUTLINED_FUNCTION_0_12();
    v139 = v39;
    v140 = 0;
    value6 = [v40 value];
    v42 = value6 == 0;

    if (v42)
    {
      v48 = 0;
      v25 = 0;
      goto LABEL_62;
    }

    v43 = [CNContactFetchRequest alloc];
    [(CNFavoritesEntry *)selfCopy propertyKey];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_4() descriptorsForRequiredKeysForPropertyKey:?];
    objc_claimAutoreleasedReturnValue();
    v3 = [OUTLINED_FUNCTION_2_9() initWithKeysToFetch:?];

    [v3 setUnifyResults:0];
    propertyKey7 = [(CNFavoritesEntry *)selfCopy propertyKey];
    v45 = [propertyKey7 isEqualToString:@"phoneNumbers"];

    if (v45)
    {
      [(CNFavoritesEntry *)selfCopy value];
      objc_claimAutoreleasedReturnValue();
      value7 = [OUTLINED_FUNCTION_4_4() phoneNumberWithStringValue:?];
      v47 = [CNContact predicateForContactsMatchingPhoneNumber:value7];
      [v3 setPredicate:v47];
    }

    else
    {
      propertyKey7 = [(CNFavoritesEntry *)selfCopy propertyKey];
      v49 = [propertyKey7 isEqualToString:@"emailAddresses"];

      if (v49)
      {
        value7 = CNContact;
        [(CNFavoritesEntry *)selfCopy value];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_4_4() predicateForContactsMatchingEmailAddress:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_2_9() setPredicate:?];
      }

      else
      {
        propertyKey8 = [(CNFavoritesEntry *)selfCopy propertyKey];
        v51 = [propertyKey8 isEqualToString:@"socialProfiles"];

        if (v51)
        {
          value7 = [(CNFavoritesEntry *)selfCopy value];
          propertyKey7 = [CNFavoritesEntry socialProfileForFavoritesEntryValue:value7];

          [CNContact predicateForContactsMatchingSocialProfile:propertyKey7];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_2_9() setPredicate:?];
        }

        else
        {
          propertyKey9 = [(CNFavoritesEntry *)selfCopy propertyKey];
          v62 = [propertyKey9 isEqualToString:@"instantMessageAddresses"];

          if (!v62)
          {
            goto LABEL_50;
          }

          value7 = [(CNFavoritesEntry *)selfCopy value];
          propertyKey7 = [CNFavoritesEntry instantMessageAddressForFavoritesEntryValue:value7];

          [CNContact predicateForContactsMatchingInstantMessageAddress:propertyKey7];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_2_9() setPredicate:?];
        }
      }
    }

LABEL_50:
    predicate = [v3 predicate];
    v64 = predicate == 0;

    if (v64)
    {
      v48 = 0;
      v25 = 0;
LABEL_61:

LABEL_62:
      _Block_object_dispose(&v135, 8);

      _Block_object_dispose(&v141, 8);
      _Block_object_dispose(&v147, 8);

      _Block_object_dispose(&v153, 8);
      v20 = v48;

LABEL_63:
      goto LABEL_64;
    }

    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 3221225472;
    v129[2] = ___findBestCandidateForFavorite_block_invoke;
    v129[3] = &unk_1E7411F38;
    v131 = &v141;
    v130 = selfCopy;
    v132 = &v135;
    v133 = &v153;
    v134 = &v147;
    [v11 enumerateNonUnifiedContactsWithFetchRequest:v3 error:0 usingBlock:v129];
    v65 = v136[5];
    v66 = v154[5];
    if (v65)
    {
      if (v65 == v66)
      {
        v67 = v148[5];
      }

      else
      {
        v67 = 0;
      }

      v48 = v67;
      v69 = v136;
    }

    else
    {
      if (v66)
      {
        v25 = v66;
        v68 = v148[5];
        v48 = v68;
LABEL_60:
        v70 = v68;
        v71 = v48;

        goto LABEL_61;
      }

      v48 = 0;
      v69 = v142;
    }

    v68 = v69[5];
    v25 = v68;
    goto LABEL_60;
  }

  [MEMORY[0x1E695DF30] raise:@"CNFavoritesEntryCannotRematchException" format:@"Need a contact store to perform rematch"];
  v110 = MEMORY[0x1E69967A8];
  v111 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v109 = [v110 pairWithFirst:0 second:v111];

LABEL_118:

  return v109;
}

- (void)name
{
  contactProperty = [self contactProperty];
  contact = [contactProperty contact];
  [(CNFavoritesEntry *)self setContact:contact];
}

- (uint64_t)resetContactMatch
{
  [self setDirty:1];

  return [(CNFavoritesEntry *)self setContact:?];
}

- (void)applyChangeRecord:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 label];
  [(CNFavoritesEntry *)a2 setLabel:v3];
}

@end