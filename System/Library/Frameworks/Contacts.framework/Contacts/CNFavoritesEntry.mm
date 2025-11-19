@interface CNFavoritesEntry
+ (BOOL)areLabelsEqual:(void *)a3 other:;
+ (BOOL)arePhoneNumbersEqual:(id)a3 other:(id)a4;
+ (BOOL)favoritesEntryValueForLabeledValueValue:(void *)a3 propertyKey:(void *)a4 isEqualToValue:;
+ (CNLabeledValue)createLabeledValueForFavoritesEntryValue:(void *)a3 label:(void *)a4 propertyKey:;
+ (__CFString)convertABPropertyToCNPropertyFromDictionary:(uint64_t)a1;
+ (id)contactFormatter;
+ (id)descriptorsForRequiredKeysForPropertyKey:(id)a3;
+ (id)favoritesEntryValueForLabeledValueValue:(void *)a3 propertyKey:;
+ (id)instantMessageAddressForFavoritesEntryValue:(uint64_t)a1;
+ (id)labeledValueValueForFavoritesEntryValue:(void *)a3 propertyKey:;
+ (id)mapABPropertyToCNContactPropertyKey:(int)a3;
+ (id)socialProfileForFavoritesEntryValue:(uint64_t)a1;
+ (id)valueStringFromSocialProfile:(uint64_t)a1;
+ (int)mapCNContactPropertyKeyToABProperty:(id)a3;
+ (uint64_t)shouldRetryMatching;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)rematchWithContacts;
- (BOOL)rematchWithGeminiManager:(id)a3;
- (CNContactProperty)contactProperty;
- (CNFavoritesEntry)initWithContact:(id)a3 propertyKey:(id)a4 labeledValueIdentifier:(id)a5 actionType:(id)a6 bundleIdentifier:(id)a7 store:(id)a8;
- (CNFavoritesEntry)initWithDictionaryRepresentation:(id)a3;
- (CNFavoritesEntry)initWithDictionaryRepresentation:(id)a3 store:(id)a4;
- (CNFavoritesEntry)initWithEntryRepresentation:(id)a3 store:(id)a4;
- (NSString)name;
- (id)convertFromEntryType:(void *)a3 toActionType:(void *)a4 bundleIdentifier:;
- (id)dictionaryRepresentation;
- (id)entryRepresentation;
- (id)fetchContactMatchingIdentifier:(void *)a3 keysToFetch:;
- (id)fetchContactMatchingLegacyIdentifier:(void *)a3 keysToFetch:;
- (id)rematch;
- (uint64_t)resetContactMatch;
- (uint64_t)setContact:(uint64_t)a1;
- (unint64_t)hash;
- (void)applyChangeRecord:(id)a3;
- (void)dealloc;
- (void)name;
- (void)performMigrationWithDictionaryRepresentation:(uint64_t)a1;
- (void)resetContactMatch;
- (void)setLabel:(uint64_t)a1;
@end

@implementation CNFavoritesEntry

+ (void)initialize
{
  v2.receiver = a1;
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

  v8 = [(CNFavoritesEntry *)self contactIdentifier];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  if (p_super)
  {
    v2 = [(CNFavoritesEntry *)self contactIdentifier];
    if (self)
    {
      v10 = self->_contact;
    }

    else
    {
      v10 = 0;
    }

    v11 = [(CNContact *)v10 identifier];
    v12 = [v2 isEqualToString:v11];

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

  v14 = [(CNFavoritesEntry *)self contactIdentifier];
  v15 = [(CNFavoritesEntry *)&self->super.isa fetchContactMatchingIdentifier:v14 keysToFetch:v13];

  if (v15)
  {
    name = self->_name;
    self->_name = 0;
  }

  p_super = v15;
LABEL_13:
  v17 = [(CNFavoritesEntry *)self labeledValueIdentifier];
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
          v25 = [v24 identifier];
          if (v25 | v17)
          {
            v26 = v25;
            v27 = [v24 identifier];
            v28 = [v27 isEqual:v17];

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

  if (+[CNFavoritesEntry shouldRetryMatching]&& p_super && !v17)
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
          v34 = [v33 value];
          v35 = [(CNFavoritesEntry *)self propertyKey];
          v36 = [(CNFavoritesEntry *)self value];
          v37 = [CNFavoritesEntry favoritesEntryValueForLabeledValueValue:v34 propertyKey:v35 isEqualToValue:v36];

          if (v37)
          {
            v44 = [v33 identifier];
            v45 = MEMORY[0x1E6996658];
            v17 = [(CNFavoritesEntry *)self propertyKey];
            [v45 reportBugWithDomain:@"Contacts" type:@"Favorites" subType:@"Entry Contact Property" name:@"RetryMatching" value:v17];
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

    v17 = 0;
    v7 = v49;
    p_super = v50;
  }

  v38 = objc_alloc_init(CNMutableContact);
  v39 = [(CNFavoritesEntry *)self value];
  if (self)
  {
    label = self->_label;
  }

  else
  {
    label = 0;
  }

  v41 = label;
  v42 = [(CNFavoritesEntry *)self propertyKey];
  v18 = [CNFavoritesEntry createLabeledValueForFavoritesEntryValue:v39 label:v41 propertyKey:v42];

  if (v18)
  {
    v59 = v18;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
    [v7 setCNValue:v43 onContact:v38];

    v38 = v38;
    v44 = [(CNContact *)v18 identifier];
    p_super = &v38->super;
LABEL_42:

    v17 = v44;
  }

LABEL_43:

  if (p_super)
  {
    [(CNFavoritesEntry *)self setContact:?];
    [(CNFavoritesEntry *)self setLabeledValueIdentifier:v17];
    v48 = [(CNFavoritesEntry *)self propertyKey];
    v46 = [CNContactProperty contactPropertyWithContact:p_super propertyKey:v48 identifier:v17];
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

+ (id)descriptorsForRequiredKeysForPropertyKey:(id)a3
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = v4;
  if (v3)
  {
    [v4 addObject:v3];
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
  v8 = [v7 descriptorForRequiredKeys];
  [v5 addObject:v8];

  [v5 addObject:@"watchWallpaperImageData"];
  v9 = +[CNGeminiManager descriptorForRequiredKeys];
  [v5 addObject:v9];

  v10 = [v5 copy];

  return v10;
}

+ (id)valueStringFromSocialProfile:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = MEMORY[0x1E696AE40];
  v4 = [v2 dictionaryRepresentation];

  v5 = [v3 dataWithPropertyList:v4 format:100 options:0 error:0];

  v6 = [v5 base64EncodedStringWithOptions:0];

  return v6;
}

+ (id)favoritesEntryValueForLabeledValueValue:(void *)a3 propertyKey:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if ([v5 isEqualToString:@"phoneNumbers"])
  {
    v6 = [v4 stringValue];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"emailAddresses"])
  {
    v6 = v4;
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"socialProfiles"])
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

  if ([v5 isEqualToString:@"instantMessageAddresses"])
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

+ (id)socialProfileForFavoritesEntryValue:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v2 options:0];

  v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:0];
  v5 = [CNSocialProfile socialProfileWithDictionaryRepresentation:v4];

  return v5;
}

+ (id)instantMessageAddressForFavoritesEntryValue:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v2 options:0];

  v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:0];
  v5 = [CNInstantMessageAddress instantMessageAddressWithDictionaryRepresentation:v4];

  return v5;
}

+ (id)labeledValueValueForFavoritesEntryValue:(void *)a3 propertyKey:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if ([v5 isEqualToString:@"phoneNumbers"])
  {
    v6 = [CNPhoneNumber phoneNumberWithStringValue:v4];
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  if ([v5 isEqualToString:@"emailAddresses"])
  {
    v6 = v4;
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"socialProfiles"])
  {
    v6 = [CNFavoritesEntry socialProfileForFavoritesEntryValue:v4];
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"instantMessageAddresses"])
  {
    v6 = [CNFavoritesEntry instantMessageAddressForFavoritesEntryValue:v4];
    goto LABEL_9;
  }

  NSLog(&cfstr_AttemptingToCr_0.isa);
  v7 = 0;
LABEL_10:

  return v7;
}

+ (CNLabeledValue)createLabeledValueForFavoritesEntryValue:(void *)a3 label:(void *)a4 propertyKey:
{
  v6 = a3;
  v7 = a4;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = [(CNFavoritesEntry *)v9 labeledValueValueForFavoritesEntryValue:v8 propertyKey:v7];

  if (v10)
  {
    v11 = [[CNLabeledValue alloc] initWithLabel:v6 value:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CNFavoritesEntry)initWithContact:(id)a3 propertyKey:(id)a4 labeledValueIdentifier:(id)a5 actionType:(id)a6 bundleIdentifier:(id)a7 store:(id)a8
{
  v37[4] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v36.receiver = self;
  v36.super_class = CNFavoritesEntry;
  v20 = [(CNFavoritesEntry *)&v36 init];
  if (v20)
  {
    v34 = v17;
    v35 = v14;
    v37[0] = @"phoneNumbers";
    v37[1] = @"emailAddresses";
    v37[2] = @"socialProfiles";
    v37[3] = @"instantMessageAddresses";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
    v22 = [v21 containsObject:v15];

    if (v22)
    {
      [(CNFavoritesEntry *)v20 setPropertyKey:v15];
      v25 = [MEMORY[0x1E696AFB0] UUID];
      v26 = [v25 UUIDString];
      [(CNFavoritesEntry *)v20 setEntryIdentifier:v26];

      v27 = [CN sourceContactForValue:0 labeledValueIdentifier:v16 propertyKey:v15 inUnifiedContact:v35];
      [(CNFavoritesEntry *)v20 setContact:v27];

      v28 = [(CNContact *)v20->_contact identifier];
      [(CNFavoritesEntry *)v20 setContactIdentifier:v28];

      [(CNFavoritesEntry *)v20 setLabeledValueIdentifier:v16];
      objc_storeStrong(&v20->_contactStore, a8);
      objc_storeStrong(&v20->_actionType, a6);
      objc_storeStrong(&v20->_bundleIdentifier, a7);
      v29 = [(CNContact *)v20->_contact valueForKey:v15];
      v23 = [CNLabeledValue labeledValueWithIdentifier:v16 inArray:v29];

      if (v23)
      {
        v30 = [v23 label];
        label = v20->_label;
        v20->_label = v30;

        v32 = [v23 value];
        v33 = [CNFavoritesEntry favoritesEntryValueForLabeledValueValue:v32 propertyKey:v15];
        [(CNFavoritesEntry *)v20 setValue:v33];
      }

      else
      {
        v32 = v20;
        v20 = 0;
      }

      v17 = v34;

      v14 = v35;
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:@"CNFavoritesEntryInvalidPropertyException" format:{@"The property %@ is not supported for favorites", v15}];
      v23 = v20;
      v20 = 0;
      v17 = v34;
      v14 = v35;
    }
  }

  return v20;
}

- (id)fetchContactMatchingIdentifier:(void *)a3 keysToFetch:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v6];
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
    v10 = a1[7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__CNFavoritesEntry_fetchContactMatchingIdentifier_keysToFetch___block_invoke;
    v12[3] = &unk_1E7412670;
    v12[4] = &v13;
    [v10 enumerateContactsWithFetchRequest:v7 error:0 usingBlock:v12];

    a1 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  return a1;
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

+ (BOOL)favoritesEntryValueForLabeledValueValue:(void *)a3 propertyKey:(void *)a4 isEqualToValue:
{
  v6 = a3;
  v7 = a4;
  v8 = a2;
  objc_opt_self();
  v9 = [CNFavoritesEntry favoritesEntryValueForLabeledValueValue:v8 propertyKey:v6];

  if ([v9 isEqualToString:v7])
  {
    v10 = 1;
  }

  else if ([v6 isEqualToString:@"phoneNumbers"])
  {
    v10 = [CNFavoritesEntry arePhoneNumbersEqual:v9 other:v7];
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

- (BOOL)isEqual:(id)a3
{
  v9 = a3;
  v10 = [(CNFavoritesEntry *)self actionType];
  if (v10 || ([v9 actionType], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(CNFavoritesEntry *)self actionType];
    v5 = [v9 actionType];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      v11 = 0;
      if (!v10)
      {
        v10 = v6;
      }

      goto LABEL_7;
    }

    v43 = 1;
  }

  else
  {
    v43 = 0;
  }

  v12 = [(CNFavoritesEntry *)self bundleIdentifier];
  if (!v12)
  {
    v7 = [v9 bundleIdentifier];
    if (!v7)
    {
      v41 = 0;
      goto LABEL_19;
    }
  }

  v3 = [(CNFavoritesEntry *)self bundleIdentifier];
  v13 = [v9 bundleIdentifier];
  if ([v3 isEqual:v13])
  {
    v37 = v13;
    v41 = 1;
LABEL_19:
    v42 = [(CNFavoritesEntry *)self propertyKey];
    v38 = v3;
    if (v42 || ([v9 propertyKey], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = [(CNFavoritesEntry *)self propertyKey];
      v39 = [v9 propertyKey];
      v40 = v15;
      if (![v15 isEqual:?])
      {
        v14 = 0;
LABEL_34:

LABEL_35:
        v21 = v42;
        if (!v42)
        {

          v21 = 0;
        }

        if (v41)
        {
        }

        if (!v12)
        {
        }

        if (v43)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v36 = v7;
      v16 = 1;
    }

    else
    {
      v36 = v7;
      v33 = 0;
      v16 = 0;
    }

    v17 = [(CNFavoritesEntry *)self value];
    if (v17 || ([v9 value], (v32 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v35 = v16;
      v34 = v6;
      v18 = [(CNFavoritesEntry *)self value:v32];
      v19 = [v9 value];
      v14 = [v18 isEqual:v19];

      if (v17)
      {

        if (!v35)
        {
          v6 = v34;
          v7 = v36;
          goto LABEL_35;
        }

        v6 = v34;
        v7 = v36;
        goto LABEL_34;
      }

      v6 = v34;
      LOBYTE(v16) = v35;
      v20 = v32;
    }

    else
    {
      v20 = 0;
      v14 = 1;
    }

    v7 = v36;
    if ((v16 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v12)
  {
  }

  else
  {
  }

  v14 = 0;
  if (v43)
  {
LABEL_42:
  }

LABEL_43:
  if (v10)
  {

    if (!v14)
    {
      goto LABEL_59;
    }
  }

  else
  {

    if ((v14 & 1) == 0)
    {
LABEL_59:
      v11 = 0;
      goto LABEL_60;
    }
  }

  if (!self || (v22 = self->_label) == 0)
  {
    if (!v9)
    {
      goto LABEL_62;
    }

    v26 = v9[8];
    if (!v26)
    {
      goto LABEL_62;
    }

    v14 = v26;
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
  if (v9)
  {
LABEL_56:
    v27 = v9[8];
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

  v10 = [(CNFavoritesEntry *)self contactIdentifier];
  if (!v10)
  {
    v14 = [v9 contactIdentifier];
    if (!v14)
    {
      v11 = 1;
LABEL_69:

      goto LABEL_7;
    }
  }

  v30 = [(CNFavoritesEntry *)self contactIdentifier];
  v31 = [v9 contactIdentifier];
  v11 = [v30 isEqual:v31];

  if (!v10)
  {
    goto LABEL_69;
  }

LABEL_7:

LABEL_60:
  return v11;
}

- (CNFavoritesEntry)initWithEntryRepresentation:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNFavoritesEntry *)self init];
  if (v8)
  {
    v9 = [v6 entryIdentifier];
    entryIdentifier = v8->_entryIdentifier;
    v8->_entryIdentifier = v9;

    v11 = [v6 name];
    objc_setProperty_nonatomic_copy(v8, v12, v11, 72);

    v13 = [v6 value];
    [(CNFavoritesEntry *)v8 setValue:v13];

    v14 = [v6 label];
    label = v8->_label;
    v8->_label = v14;

    v16 = [v6 propertyKey];
    [(CNFavoritesEntry *)v8 setPropertyKey:v16];

    v17 = [v6 actionType];
    actionType = v8->_actionType;
    v8->_actionType = v17;

    v19 = [v6 bundleIdentifier];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v19;

    v21 = [v6 actionChannel];
    [(CNFavoritesEntry *)v8 setActionChannel:v21];

    v22 = [v6 contactIdentifier];
    [(CNFavoritesEntry *)v8 setContactIdentifier:v22];

    v23 = [v6 labeledValueIdentifier];
    [(CNFavoritesEntry *)v8 setLabeledValueIdentifier:v23];

    objc_storeStrong(&v8->_contactStore, a4);
    v24 = v8;
  }

  return v8;
}

- (CNFavoritesEntry)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CNFavoritesEntry;
  v5 = [(CNFavoritesEntry *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"EntryIdentifier"];
    [(CNFavoritesEntry *)v5 setEntryIdentifier:v6];

    v7 = [v4 objectForKey:@"Name"];
    objc_setProperty_nonatomic_copy(v5, v8, v7, 72);

    v9 = [v4 objectForKey:@"Value"];
    [(CNFavoritesEntry *)v5 setValue:v9];

    v10 = [v4 objectForKey:@"Label"];
    label = v5->_label;
    v5->_label = v10;

    v12 = [v4 objectForKey:@"ContactProperty"];
    [(CNFavoritesEntry *)v5 setPropertyKey:v12];

    v13 = [v4 objectForKey:@"ActionType"];
    actionType = v5->_actionType;
    v5->_actionType = v13;

    v15 = [v4 objectForKey:@"BundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v15;

    v17 = [v4 objectForKey:@"ActionChannel"];
    [(CNFavoritesEntry *)v5 setActionChannel:v17];

    v18 = [v4 objectForKey:@"ContactIdentifier"];
    [(CNFavoritesEntry *)v5 setContactIdentifier:v18];

    v19 = [v4 objectForKey:@"LabeledValueIdentifier"];
    [(CNFavoritesEntry *)v5 setLabeledValueIdentifier:v19];

    v20 = v5;
  }

  return v5;
}

+ (BOOL)arePhoneNumbersEqual:(id)a3 other:(id)a4
{
  v5 = a4;
  v6 = a3;
  +[CNPhoneNumber defaultCountryCode];
  v7 = PNPhoneNumbersEqual();

  return v7;
}

+ (BOOL)areLabelsEqual:(void *)a3 other:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (v4)
  {
    v6 = [v4 length];
    v7 = 1;
    if (v5 && v6 && [v5 length])
    {
      v7 = [v4 localizedCaseInsensitiveCompare:v5] == 0;
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
  v3 = [(CNFavoritesEntry *)self rematch];
  v4 = [v3 second];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    [(CNFavoritesEntry *)self resetContactMatch];
  }

  else
  {
    v6 = [v3 first];
    [(CNFavoritesEntry *)self applyChangeRecord:v6];
  }

  v7 = [(CNFavoritesEntry *)self dirty];

  return v7;
}

- (BOOL)rematchWithGeminiManager:(id)a3
{
  v4 = a3;
  v5 = [(CNFavoritesEntry *)self actionType];
  if ([v5 isEqualToString:@"AudioCallActionType"])
  {
    goto LABEL_6;
  }

  v6 = [(CNFavoritesEntry *)self actionType];
  if ([v6 isEqualToString:@"MessageActionType"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v7 = [(CNFavoritesEntry *)self actionType];
  if ([v7 isEqualToString:@"TTYCallActionType"])
  {

    goto LABEL_5;
  }

  v15 = [(CNFavoritesEntry *)self actionType];
  v16 = [v15 isEqualToString:@"TTYRelayCallActionType"];

  if ((v16 & 1) == 0)
  {
    v13 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v8 = [(CNFavoritesEntry *)self contactProperty];
  v9 = [v8 contact];
  v10 = [v4 bestSenderIdentityForContact:v9 error:0];

  v11 = [CNGeminiManager channelStringFromSenderIdentity:v10];
  v12 = [(CNFavoritesEntry *)self actionChannel];

  if (v12 != v11)
  {
    [(CNFavoritesEntry *)self setActionChannel:v11];
    [(CNFavoritesEntry *)self setDirty:1];
  }

  v13 = [(CNFavoritesEntry *)self dirty];

LABEL_10:
  return v13;
}

- (void)resetContactMatch
{
  if (self && (v3 = self->_label) != 0 || ([(CNFavoritesEntry *)self name], (v3 = objc_claimAutoreleasedReturnValue()) != 0) || ([(CNFavoritesEntry *)self contactIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v6 = [(CNFavoritesEntry *)self labeledValueIdentifier];

    if (!v6)
    {
      return;
    }
  }

  v4 = [(CNFavoritesEntry *)self contactIdentifier];

  if (v4)
  {
    [(CNFavoritesEntry *)self setContactIdentifier:0];
  }

  v5 = [(CNFavoritesEntry *)self labeledValueIdentifier];

  if (v5)
  {
    [(CNFavoritesEntry *)self setLabeledValueIdentifier:0];
    goto LABEL_12;
  }

  if (v4)
  {
LABEL_12:
    [(CNFavoritesEntry *)self resetContactMatch];
  }
}

- (void)applyChangeRecord:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v17 = v4;
    v5 = [v4 labeledValueIdentifier];

    if (v5)
    {
      v6 = [v17 labeledValueIdentifier];
      [(CNFavoritesEntry *)self setLabeledValueIdentifier:v6];
    }

    v7 = [v17 contactIdentifier];

    if (v7)
    {
      v8 = [(CNFavoritesEntry *)self contactIdentifier];
      [(CNFavoritesEntry *)self setOldContactIdentifier:v8];

      v9 = [v17 contactIdentifier];
      [(CNFavoritesEntry *)self setContactIdentifier:v9];
    }

    v10 = [v17 value];

    if (v10)
    {
      v11 = [v17 value];
      [(CNFavoritesEntry *)self setValue:v11];
    }

    v12 = [v17 name];

    if (v12)
    {
      v13 = [v17 name];
      name = self->_name;
      self->_name = v13;

      objc_setProperty_nonatomic_copy(self, v15, self->_name, 72);
    }

    v16 = [v17 label];

    if (v16)
    {
      [(CNFavoritesEntry *)v17 applyChangeRecord:?];
    }

    [(CNFavoritesEntry *)self setDirty:1];
    v4 = v17;
  }
}

+ (__CFString)convertABPropertyToCNPropertyFromDictionary:(uint64_t)a1
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

- (id)convertFromEntryType:(void *)a3 toActionType:(void *)a4 bundleIdentifier:
{
  if (result)
  {
    if (a2 <= 2)
    {
      v5 = off_1E74173B0[a2];
      *a3 = *off_1E7417398[a2];
      result = *v5;
      *a4 = result;
    }
  }

  return result;
}

- (id)fetchContactMatchingLegacyIdentifier:(void *)a3 keysToFetch:
{
  v5 = a3;
  if (a1)
  {
    v6 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v5];
    [(CNContactFetchRequest *)v6 setUnifyResults:0];
    v7 = [CNContact predicateForLegacyIdentifier:a2];
    [(CNContactFetchRequest *)v6 setPredicate:v7];

    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__32;
    v15 = __Block_byref_object_dispose__32;
    v16 = 0;
    v8 = a1[7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__CNFavoritesEntry_fetchContactMatchingLegacyIdentifier_keysToFetch___block_invoke;
    v10[3] = &unk_1E7412670;
    v10[4] = &v11;
    [v8 enumerateContactsWithFetchRequest:v6 error:0 usingBlock:v10];

    a1 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return a1;
}

+ (id)mapABPropertyToCNContactPropertyKey:(int)a3
{
  v3 = *&a3;
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

+ (int)mapCNContactPropertyKeyToABProperty:(id)a3
{
  v3 = a3;
  if (mapCNContactPropertyKeyToABProperty__cn_once_token_3 != -1)
  {
    +[CNFavoritesEntry mapCNContactPropertyKeyToABProperty:];
  }

  v4 = [mapCNContactPropertyKeyToABProperty__cn_once_object_3 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 intValue];
  }

  else
  {
    v6 = -1;
  }

  return v6;
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

- (uint64_t)setContact:(uint64_t)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v4 = (a1 + 80);
    if (*(a1 + 80) != v5)
    {
      v8 = v5;
      objc_storeStrong(v4, a2);
      v6 = *(a1 + 8);
      *(a1 + 8) = 0;

      v5 = v8;
    }
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setLabel:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

- (void)dealloc
{
  [(CNFavoritesEntry *)self setContact:?];
  v3.receiver = self;
  v3.super_class = CNFavoritesEntry;
  [(CNFavoritesEntry *)&v3 dealloc];
}

- (CNFavoritesEntry)initWithDictionaryRepresentation:(id)a3 store:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNFavoritesEntry *)self initWithDictionaryRepresentation:v6];
  [(CNiOSEncodedPeopleFetcher *)v8 setCursor:v7];

  v9 = [(CNFavoritesEntry *)v8 entryIdentifier];

  if (!v9)
  {
    [(CNFavoritesEntry *)v8 performMigrationWithDictionaryRepresentation:v6];
    [(CNFavoritesEntry *)v8 setDirty:1];
  }

  return v8;
}

- (void)performMigrationWithDictionaryRepresentation:(uint64_t)a1
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    v5 = [a1 entryIdentifier];

    if (!v5)
    {
      v6 = [MEMORY[0x1E696AFB0] UUID];
      [v6 UUIDString];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_6_3() setEntryIdentifier:v2];
    }

    v7 = [a1 propertyKey];

    if (!v7)
    {
      v8 = [CNFavoritesEntry convertABPropertyToCNPropertyFromDictionary:v4];
      [a1 setPropertyKey:v8];
    }

    v9 = [a1 actionType];

    if (!v9)
    {
      v10 = [v4 objectForKey:@"EntryType"];
      v11 = v10;
      v12 = &unk_1F09872B8;
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      v14 = [v13 intValue];
      v53 = 0;
      v54 = 0;
      [(CNFavoritesEntry *)a1 convertFromEntryType:v14 toActionType:&v54 bundleIdentifier:&v53];
      v15 = v54;
      v16 = v53;
      v17 = *(a1 + 32);
      *(a1 + 32) = v15;
      v18 = v15;

      v19 = *(a1 + 40);
      *(a1 + 40) = v16;
    }

    v20 = [v4 objectForKey:@"ABDatabaseUUID"];
    v21 = [*(a1 + 56) identifierWithError:0];
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
        v26 = [a1 propertyKey];
        v27 = [CNFavoritesEntry descriptorsForRequiredKeysForPropertyKey:v26];

        v28 = [(CNFavoritesEntry *)a1 fetchContactMatchingLegacyIdentifier:v25 keysToFetch:v27];
        v29 = [v28 identifier];
        [a1 setContactIdentifier:v29];

        if (v28)
        {
          v30 = [v4 objectForKey:@"ABIdentifier"];
          v31 = [v30 intValue];

          v48 = v31;
          if ((v31 & 0x80000000) == 0)
          {
            v46 = v20;
            v47 = v4;
            v32 = [a1 propertyKey];
            v45 = v28;
            v33 = [v28 valueForKey:v32];

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
                  v40 = [v39 label];
                  v41 = *(a1 + 64);
                  if (v40)
                  {
                    v42 = v40;
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
                    v44 = [v39 iOSLegacyIdentifier];

                    if (v44 == v48)
                    {
                      [v39 identifier];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_6_3() setLabeledValueIdentifier:v44];

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
  v3 = [(CNFavoritesEntry *)self entryIdentifier];
  v4 = [(CNFavoritesEntry *)self name];
  v5 = [(CNFavoritesEntry *)self value];
  if (self)
  {
    label = self->_label;
  }

  else
  {
    label = 0;
  }

  v7 = label;
  v8 = [(CNFavoritesEntry *)self propertyKey];
  v9 = [(CNFavoritesEntry *)self actionType];
  v10 = [(CNFavoritesEntry *)self bundleIdentifier];
  v11 = [(CNFavoritesEntry *)self actionChannel];
  v12 = [(CNFavoritesEntry *)self contactIdentifier];
  v13 = [(CNFavoritesEntry *)self labeledValueIdentifier];
  v16 = [(CNFavoritesEntryRepresentation *)v15 initWithIdentifier:v3 name:v4 value:v5 label:v7 propertyKey:v8 actionType:v9 bundleIdentifier:v10 actionChannel:v11 contactIdentifier:v12 labeledValueIdentifier:v13];

  return v16;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CNFavoritesEntry *)self entryIdentifier];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  v5 = [(CNFavoritesEntry *)self name];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  v6 = [(CNFavoritesEntry *)self value];
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
  v8 = [(CNFavoritesEntry *)self propertyKey];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  v9 = [(CNFavoritesEntry *)self actionType];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  v10 = [(CNFavoritesEntry *)self bundleIdentifier];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  v11 = [(CNFavoritesEntry *)self actionChannel];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  v12 = [(CNFavoritesEntry *)self contactIdentifier];
  [OUTLINED_FUNCTION_3_6() _cn_setNonNilObject:? forKey:?];

  v13 = [(CNFavoritesEntry *)self labeledValueIdentifier];
  [v3 _cn_setNonNilObject:v13 forKey:@"LabeledValueIdentifier"];

  v14 = [v3 copy];

  return v14;
}

- (id)rematch
{
  v161[6] = *MEMORY[0x1E69E9840];
  if (self && self->_contactStore)
  {
    v5 = [(CNFavoritesEntry *)self contactIdentifier];

    if (v5 && (v161[0] = @"phoneNumbers", v161[1] = @"emailAddresses", v161[2] = @"socialProfiles", v161[3] = @"instantMessageAddresses", +[CNContactFormatter descriptorForRequiredKeysForStyle:](CNContactFormatter, "descriptorForRequiredKeysForStyle:", 0), v6 = objc_claimAutoreleasedReturnValue(), v161[4] = v6, v161[5] = @"watchWallpaperImageData", [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:6], v7 = objc_claimAutoreleasedReturnValue(), v6, -[CNFavoritesEntry contactIdentifier](self, "contactIdentifier"), objc_claimAutoreleasedReturnValue(), v8 = OUTLINED_FUNCTION_6_3(), -[CNFavoritesEntry fetchContactMatchingIdentifier:keysToFetch:](v8, v2, v7), v117 = objc_claimAutoreleasedReturnValue(), v2, v7, v117))
    {
      v9 = [(CNFavoritesEntry *)self propertyKey];
      v10 = [v117 valueForKey:v9];

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
            v16 = [v15 label];
            v17 = v16;
            if (self)
            {
              label = self->_label;
            }

            else
            {
              label = 0;
            }

            v19 = [v16 localizedCaseInsensitiveCompare:label] == 0;

            if (v19)
            {
              v20 = v15;

              v21 = [v20 identifier];
              v22 = [(CNFavoritesEntry *)self labeledValueIdentifier];
              v23 = [v21 isEqualToString:v22];

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
          v54 = [v53 value];
          v55 = [(CNFavoritesEntry *)self propertyKey];
          v56 = [(CNFavoritesEntry *)self value];
          v57 = [CNFavoritesEntry favoritesEntryValueForLabeledValueValue:v54 propertyKey:v55 isEqualToValue:v56];

          if (v57)
          {
            v20 = v53;

            v58 = [v20 identifier];
            v59 = [(CNFavoritesEntry *)self labeledValueIdentifier];
            v60 = [v58 isEqualToString:v59];

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
          v75 = 0;
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
          v72 = [OUTLINED_FUNCTION_6_3() labeledValueIdentifier];
          v73 = [v11 isEqualToString:v72];

          HIDWORD(v113) = v73 ^ 1;
        }

        else
        {
          HIDWORD(v113) = 0;
        }

        v116 = [(CNFavoritesEntry *)self name];
        obja = [CNContactFormatter stringFromContact:v118 style:0];
        if ([obja isEqualToString:v116])
        {
          v74 = 0;
        }

        else
        {
          v74 = obja;
        }

        v78 = [(CNFavoritesEntry *)self propertyKey];
        v79 = [v78 isEqualToString:@"phoneNumbers"];

        if (v79)
        {
          v80 = [v20 value];
          v81 = [v80 stringValue];

          goto LABEL_86;
        }

        v82 = [(CNFavoritesEntry *)self propertyKey];
        v83 = [v82 isEqualToString:@"emailAddresses"];

        if (v83)
        {
          v81 = [v20 value];
          goto LABEL_86;
        }

        v84 = [(CNFavoritesEntry *)self propertyKey];
        v85 = [v84 isEqualToString:@"socialProfiles"];

        if (v85)
        {
          objc_opt_class();
          v86 = [v20 value];
          if (objc_opt_isKindOfClass())
          {
            v87 = v86;
          }

          else
          {
            v87 = 0;
          }
        }

        else
        {
          v88 = [(CNFavoritesEntry *)self propertyKey];
          v89 = [v88 isEqualToString:@"instantMessageAddresses"];

          if (!v89)
          {
            v81 = 0;
LABEL_86:
            v90 = [(CNFavoritesEntry *)self value];
            v91 = [v81 isEqualToString:v90];

            if (v91)
            {
              v76 = 0;
            }

            else
            {
              v76 = v81;
            }

            v92 = [v20 label];
            v93 = *MEMORY[0x1E6996568];
            v94 = (*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v92);
            if (v94 && (!self ? (v95 = 0) : (v95 = self->_label), v90 = v95, (*(v93 + 16))(v93, v90)))
            {
            }

            else
            {
              v96 = [v20 label];
              v97 = v96;
              if (self)
              {
                v98 = self->_label;
              }

              else
              {
                v98 = 0;
              }

              v99 = [v96 isEqualToString:v98];

              if (v94)
              {
              }

              if ((v99 & 1) == 0)
              {
                v75 = [v20 label];
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

                if (v74 || (v100 & 1) != 0 || v75)
                {
LABEL_102:
                  v77 = objc_alloc_init(CNFavoritesLookupChangeRecord);
                  [(CNFavoritesLookupChangeRecord *)v77 setName:v74];
                  [(CNFavoritesLookupChangeRecord *)v77 setValue:v76];
                  [(CNFavoritesLookupChangeRecord *)v77 setLabel:v75];
                  if (v114)
                  {
                    [(CNFavoritesLookupChangeRecord *)v77 setContactIdentifier:0];
                  }

                  else
                  {
                    v101 = [v118 identifier];
                    [(CNFavoritesLookupChangeRecord *)v77 setContactIdentifier:v101];
                  }

                  if (v115)
                  {
                    v102 = [v20 identifier];
                    [(CNFavoritesLookupChangeRecord *)v77 setLabeledValueIdentifier:v102];
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

            v75 = 0;
            goto LABEL_101;
          }

          objc_opt_class();
          v86 = [v20 value];
          if (objc_opt_isKindOfClass())
          {
            v87 = v86;
          }

          else
          {
            v87 = 0;
          }
        }

        v81 = [CNFavoritesEntry valueStringFromSocialProfile:v87];

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
    v28 = self;
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
    v41 = [v40 value];
    v42 = v41 == 0;

    if (v42)
    {
      v48 = 0;
      v25 = 0;
      goto LABEL_62;
    }

    v43 = [CNContactFetchRequest alloc];
    [(CNFavoritesEntry *)v28 propertyKey];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_4() descriptorsForRequiredKeysForPropertyKey:?];
    objc_claimAutoreleasedReturnValue();
    v3 = [OUTLINED_FUNCTION_2_9() initWithKeysToFetch:?];

    [v3 setUnifyResults:0];
    v44 = [(CNFavoritesEntry *)v28 propertyKey];
    v45 = [v44 isEqualToString:@"phoneNumbers"];

    if (v45)
    {
      [(CNFavoritesEntry *)v28 value];
      objc_claimAutoreleasedReturnValue();
      v46 = [OUTLINED_FUNCTION_4_4() phoneNumberWithStringValue:?];
      v47 = [CNContact predicateForContactsMatchingPhoneNumber:v46];
      [v3 setPredicate:v47];
    }

    else
    {
      v44 = [(CNFavoritesEntry *)v28 propertyKey];
      v49 = [v44 isEqualToString:@"emailAddresses"];

      if (v49)
      {
        v46 = CNContact;
        [(CNFavoritesEntry *)v28 value];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_4_4() predicateForContactsMatchingEmailAddress:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_2_9() setPredicate:?];
      }

      else
      {
        v50 = [(CNFavoritesEntry *)v28 propertyKey];
        v51 = [v50 isEqualToString:@"socialProfiles"];

        if (v51)
        {
          v46 = [(CNFavoritesEntry *)v28 value];
          v44 = [CNFavoritesEntry socialProfileForFavoritesEntryValue:v46];

          [CNContact predicateForContactsMatchingSocialProfile:v44];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_2_9() setPredicate:?];
        }

        else
        {
          v61 = [(CNFavoritesEntry *)v28 propertyKey];
          v62 = [v61 isEqualToString:@"instantMessageAddresses"];

          if (!v62)
          {
            goto LABEL_50;
          }

          v46 = [(CNFavoritesEntry *)v28 value];
          v44 = [CNFavoritesEntry instantMessageAddressForFavoritesEntryValue:v46];

          [CNContact predicateForContactsMatchingInstantMessageAddress:v44];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_2_9() setPredicate:?];
        }
      }
    }

LABEL_50:
    v63 = [v3 predicate];
    v64 = v63 == 0;

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
    v130 = v28;
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
  v3 = [a1 contactProperty];
  v2 = [v3 contact];
  [(CNFavoritesEntry *)a1 setContact:v2];
}

- (uint64_t)resetContactMatch
{
  [a1 setDirty:1];

  return [(CNFavoritesEntry *)a1 setContact:?];
}

- (void)applyChangeRecord:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 label];
  [(CNFavoritesEntry *)a2 setLabel:v3];
}

@end