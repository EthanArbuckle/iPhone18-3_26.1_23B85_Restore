@interface CNLabeledValue
+ (BOOL)isArrayOfEntries:(id)a3 equalToArrayOfEntriesIgnoringIdentifiers:(id)a4;
+ (CNLabeledValue)labeledValueWithIdentifier:(id)a3 inArray:(id)a4;
+ (CNLabeledValue)labeledValueWithLabel:(NSString *)label value:(id)value;
+ (NSString)localizedStringForLabel:(NSString *)label;
+ (id)allValuesInArray:(id)a3;
+ (id)entriesByUnifyingEntryArrays:(id)a3 forProperty:(id)a4;
+ (id)entryForIdentifier:(id)a3 inArray:(id)a4;
+ (id)entryWithIdentifier:(id)a3 label:(id)a4 value:(id)a5;
+ (id)firstLabeledValueWithValue:(id)a3 inArray:(id)a4;
+ (id)identifierProvider;
+ (id)labelForIdentifier:(id)a3 inArray:(id)a4;
+ (id)makeIdentifier;
+ (id)propertyDescriptionLocalizationForLabel:(uint64_t)a1;
+ (id)propertyDescriptionOwnersByLabel;
+ (id)testMatchingIdentifier:(id)a3;
+ (id)valueForIdentifier:(id)a3 inArray:(id)a4;
- (BOOL)isBirthday;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualIgnoringIdentifiers:(id)a3;
- (BOOL)isSuggested;
- (CNLabeledValue)init;
- (CNLabeledValue)initWithCoder:(id)a3;
- (CNLabeledValue)initWithIdentifier:(id)a3 label:(id)a4 value:(id)a5;
- (CNLabeledValue)initWithLabel:(NSString *)label value:(id)value;
- (CNLabeledValue)labeledValueBySettingLabel:(NSString *)label;
- (CNLabeledValue)labeledValueBySettingLabel:(NSString *)label value:(id)value;
- (CNLabeledValue)labeledValueBySettingValue:(id)value;
- (CNValueOrigin)valueOrigin;
- (NSString)description;
- (NSString)localizedAppName;
- (NSString)suggestionFoundInBundleId;
- (SGRecordId)suggestionRecordId;
- (id)copyWithZone:(_NSZone *)a3;
- (id)primitiveInitWithIdentifier:(id)a3 label:(id)a4 value:(id)a5;
- (id)value;
- (unint64_t)hash;
- (void)addStoreInfo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNLabeledValue

- (id)value
{
  isValueMutable = self->_isValueMutable;
  labelValuePair = self->_labelValuePair;
  if (isValueMutable)
  {
    v4 = [(CNLabelValuePair *)labelValuePair value];
    v5 = [v4 copy];
  }

  else
  {
    v5 = labelValuePair->_value;
  }

  return v5;
}

+ (id)makeIdentifier
{
  objc_opt_self();
  v0 = +[CNLabeledValue identifierProvider];
  v1 = [v0 makeIdentifier];

  return v1;
}

+ (id)identifierProvider
{
  objc_opt_self();
  if (identifierProvider_cn_once_token_0 != -1)
  {
    +[CNLabeledValue identifierProvider];
  }

  v0 = identifierProvider_cn_once_object_0;

  return v0;
}

uint64_t __36__CNLabeledValue_identifierProvider__block_invoke()
{
  v0 = [[CNUuidIdentifierProvider alloc] initWithSuffix:0];
  v1 = identifierProvider_cn_once_object_0;
  identifierProvider_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  identifier = self->_identifier;
  v5 = [(CNLabelValuePair *)self->_labelValuePair label];
  v6 = [(CNLabelValuePair *)self->_labelValuePair value];
  v7 = [v3 appendNamesAndObjects:{@"identifier", identifier, @"label", v5, @"value", v6, 0}];

  v8 = [v3 appendName:@"iOSLegacyIdentifier" intValue:self->_iOSLegacyIdentifier];
  v9 = [v3 build];

  return v9;
}

- (BOOL)isSuggested
{
  v5 = [(CNLabeledValue *)self storeIdentifier];
  if (!v5)
  {
    v2 = +[CNSuggestedContactStore storeIdentifier];
    if (!v2)
    {
      v8 = 1;
      goto LABEL_14;
    }
  }

  v6 = [(CNLabeledValue *)self storeIdentifier];
  v7 = +[CNSuggestedContactStore storeIdentifier];
  if (([v6 isEqual:v7] & 1) == 0)
  {
    v9 = [(CNLabeledValue *)self storeIdentifier];
    if (v9 || (+[CNDonationMapper mapperIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [(CNLabeledValue *)self storeIdentifier];
      v11 = +[CNDonationMapper mapperIdentifier];
      v8 = [v10 isEqual:v11];

      if (v9)
      {

        goto LABEL_13;
      }
    }

    else
    {
      v8 = 1;
    }

LABEL_13:
    if (v5)
    {
      goto LABEL_15;
    }

LABEL_14:

    goto LABEL_15;
  }

  v8 = 1;
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v8;
}

void __50__CNLabeledValue_propertyDescriptionOwnersByLabel__block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = +[CN multiValueContactProperties];
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 managedLabels];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __50__CNLabeledValue_propertyDescriptionOwnersByLabel__block_invoke_2;
        v10[3] = &unk_1E7412BC0;
        v11 = v0;
        v12 = v6;
        [v7 _cn_each:v10];
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v8 = [v0 copy];
  v9 = propertyDescriptionOwnersByLabel_result;
  propertyDescriptionOwnersByLabel_result = v8;
}

+ (id)propertyDescriptionOwnersByLabel
{
  objc_opt_self();
  if (propertyDescriptionOwnersByLabel_onceToken != -1)
  {
    +[CNLabeledValue propertyDescriptionOwnersByLabel];
  }

  v0 = propertyDescriptionOwnersByLabel_result;

  return v0;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v4 = [(CNLabeledValue *)self identifier];
  v5 = [v3 objectHash:v4];

  v6 = MEMORY[0x1E6996730];
  v7 = [(CNLabeledValue *)self storeIdentifier];
  v8 = [v6 objectHash:v7] - v5 + 32 * v5;

  v9 = MEMORY[0x1E6996730];
  v10 = [(CNLabeledValue *)self labelValuePair];
  v11 = [v9 objectHash:v10] - v8 + 32 * v8;

  return v11 + 506447;
}

+ (id)testMatchingIdentifier:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__CNLabeledValue_testMatchingIdentifier___block_invoke;
  aBlock[3] = &unk_1E7412B98;
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v6 = [v5 copy];

  return v6;
}

uint64_t __41__CNLabeledValue_testMatchingIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)entryForIdentifier:(id)a3 inArray:(id)a4
{
  v6 = a4;
  v7 = [a1 testMatchingIdentifier:a3];
  v8 = [v6 indexOfObjectPassingTest:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 objectAtIndex:v8];
  }

  return v9;
}

+ (NSString)localizedStringForLabel:(NSString *)label
{
  v4 = label;
  v5 = [(CNLabeledValue *)a1 propertyDescriptionLocalizationForLabel:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x1E6996750] localizedStringForString:v4 class:a1 returningNilIfNotFound:0];
    if (!v5)
    {
      v5 = v4;
    }
  }

  v6 = v5;

  return v6;
}

+ (id)propertyDescriptionLocalizationForLabel:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = +[CNLabeledValue propertyDescriptionOwnersByLabel];
  v4 = [v3 objectForKeyedSubscript:v2];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 localizedStringForLabel:v2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)labelForIdentifier:(id)a3 inArray:(id)a4
{
  v4 = [a1 entryForIdentifier:a3 inArray:a4];
  v5 = [v4 label];

  return v5;
}

+ (id)valueForIdentifier:(id)a3 inArray:(id)a4
{
  v4 = [a1 entryForIdentifier:a3 inArray:a4];
  v5 = [v4 value];

  return v5;
}

+ (id)entryWithIdentifier:(id)a3 label:(id)a4 value:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithIdentifier:v10 label:v9 value:v8];

  return v11;
}

+ (CNLabeledValue)labeledValueWithLabel:(NSString *)label value:(id)value
{
  v6 = value;
  v7 = label;
  v8 = [a1 alloc];
  v9 = +[CNLabeledValue makeIdentifier];
  v10 = [v8 initWithIdentifier:v9 label:v7 value:v6];

  return v10;
}

+ (BOOL)isArrayOfEntries:(id)a3 equalToArrayOfEntriesIgnoringIdentifiers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    if (v7)
    {
      v8 = 0;
      v9 = v7 - 1;
      do
      {
        objc_opt_class();
        v10 = [v5 objectAtIndex:v8];
        if (v10)
        {
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        objc_opt_class();
        v13 = [v6 objectAtIndex:v8];
        if (v13)
        {
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = [v12 isEqualIgnoringIdentifiers:v15];
        if (!v16)
        {
          break;
        }
      }

      while (v9 != v8++);
    }

    else
    {
      LOBYTE(v16) = 1;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

+ (id)entriesByUnifyingEntryArrays:(id)a3 forProperty:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [CN unifyMultivalues:v6 forProperty:v5 options:v7];

  return v8;
}

+ (id)allValuesInArray:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) value];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (CNLabeledValue)labeledValueWithIdentifier:(id)a3 inArray:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)firstLabeledValueWithValue:(id)a3 inArray:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 value];
        v12 = [v11 isEqual:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (CNLabeledValue)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

- (CNLabeledValue)initWithLabel:(NSString *)label value:(id)value
{
  v6 = value;
  v7 = label;
  v8 = +[CNLabeledValue makeIdentifier];
  v9 = [(CNLabeledValue *)self initWithIdentifier:v8 label:v7 value:v6];

  return v9;
}

- (CNLabeledValue)initWithIdentifier:(id)a3 label:(id)a4 value:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 copy];
  v11 = [v9 copy];

  v12 = [v8 copy];
  v13 = [(CNLabeledValue *)self primitiveInitWithIdentifier:v10 label:v11 value:v12];

  return v13;
}

- (id)primitiveInitWithIdentifier:(id)a3 label:(id)a4 value:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    if (CNGuardOSLog_cn_once_token_0_2 != -1)
    {
      [CNLabeledValue primitiveInitWithIdentifier:label:value:];
    }

    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_2, OS_LOG_TYPE_FAULT))
    {
      [CNLabeledValue primitiveInitWithIdentifier:label:value:];
    }
  }

  v18.receiver = self;
  v18.super_class = CNLabeledValue;
  v12 = [(CNLabeledValue *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    v14 = [[CNLabelValuePair alloc] initWithLabel:v10 value:v11];
    labelValuePair = v13->_labelValuePair;
    v13->_labelValuePair = v14;

    v13->_iOSLegacyIdentifier = CNLabeledValueInvalidIOSIdentifier;
    objc_opt_class();
    v13->_isValueMutable = objc_opt_isKindOfClass() & 1;
    v16 = v13;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNLabeledValue alloc];
  identifier = self->_identifier;
  v6 = [(CNLabeledValue *)self label];
  v7 = [(CNLabeledValue *)self value];
  v8 = [(CNLabeledValue *)v4 initWithIdentifier:identifier label:v6 value:v7];

  v9 = [(NSString *)self->_storeIdentifier copy];
  v10 = *(v8 + 32);
  *(v8 + 32) = v9;

  v11 = [(NSDictionary *)self->_storeInfo copy];
  v12 = *(v8 + 40);
  *(v8 + 40) = v11;

  v13 = [(NSSet *)self->_linkedIdentifiers copy];
  v14 = *(v8 + 48);
  *(v8 + 48) = v13;

  *(v8 + 24) = self->_iOSLegacyIdentifier;
  return v8;
}

- (CNLabeledValue)labeledValueBySettingLabel:(NSString *)label
{
  v4 = label;
  v5 = [CNLabeledValue alloc];
  identifier = self->_identifier;
  v7 = [(CNLabelValuePair *)self->_labelValuePair value];
  v8 = [(CNLabeledValue *)v5 initWithIdentifier:identifier label:v4 value:v7];

  v9 = [(CNLabeledValue *)self linkedIdentifiers];
  v10 = [v9 copy];
  [(CNLabeledValue *)v8 setLinkedIdentifiers:v10];

  [(CNLabeledValue *)v8 setIOSLegacyIdentifier:[(CNLabeledValue *)self iOSLegacyIdentifier]];

  return v8;
}

- (CNLabeledValue)labeledValueBySettingValue:(id)value
{
  v4 = value;
  v5 = [CNLabeledValue alloc];
  identifier = self->_identifier;
  v7 = [(CNLabelValuePair *)self->_labelValuePair label];
  v8 = [(CNLabeledValue *)v5 initWithIdentifier:identifier label:v7 value:v4];

  v9 = [(CNLabeledValue *)self linkedIdentifiers];
  v10 = [v9 copy];
  [(CNLabeledValue *)v8 setLinkedIdentifiers:v10];

  [(CNLabeledValue *)v8 setIOSLegacyIdentifier:[(CNLabeledValue *)self iOSLegacyIdentifier]];

  return v8;
}

- (CNLabeledValue)labeledValueBySettingLabel:(NSString *)label value:(id)value
{
  v6 = value;
  v7 = label;
  v8 = [[CNLabeledValue alloc] initWithIdentifier:self->_identifier label:v7 value:v6];

  v9 = [(CNLabeledValue *)self linkedIdentifiers];
  v10 = [v9 copy];
  [(CNLabeledValue *)v8 setLinkedIdentifiers:v10];

  [(CNLabeledValue *)v8 setIOSLegacyIdentifier:[(CNLabeledValue *)self iOSLegacyIdentifier]];

  return v8;
}

- (void)addStoreInfo:(id)a3
{
  v8 = a3;
  v4 = *MEMORY[0x1E6996548];
  v5 = [(CNLabeledValue *)self storeInfo];
  LODWORD(v4) = (*(v4 + 16))(v4, v5);

  if (v4)
  {
    [(CNLabeledValue *)self setStoreInfo:v8];
  }

  else
  {
    v6 = [(CNLabeledValue *)self storeInfo];
    v7 = [v6 mutableCopy];

    [v7 addEntriesFromDictionary:v8];
    [(CNLabeledValue *)self setStoreInfo:v7];
  }
}

- (CNLabeledValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
  v7 = [v4 decodeObjectForKey:@"_value"];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v8 = os_log_create("com.apple.contacts", "data-access-error");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CNLabeledValue initWithCoder:];
    }
  }

  else if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = os_log_create("com.apple.contacts", "data-access-error");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CNLabeledValue initWithCoder:];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = [(CNLabeledValue *)self primitiveInitWithIdentifier:v5 label:v6 value:v7];
        v13 = MEMORY[0x1E695DFD8];
        v14 = objc_opt_class();
        v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
        v16 = [v4 decodeObjectOfClasses:v15 forKey:@"linkedIdentifiers"];
        v17 = [v16 copy];
        v18 = v12[6];
        v12[6] = v17;

        *(v12 + 6) = [v4 decodeInt32ForKey:@"iOSLegacyIdentifier"];
        v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeIdentifier"];
        v20 = [v19 copy];
        v21 = v12[4];
        v12[4] = v20;

        v22 = [CNContact storeInfoFromCoder:v4 storeIdentifier:v12[4] key:@"storeInfo"];
        v23 = [v22 copy];
        v24 = v12[5];
        v12[5] = v23;

        self = v12;
        v10 = self;
        goto LABEL_14;
      }

      v8 = os_log_create("com.apple.contacts", "data-access-error");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CNLabeledValue initWithCoder:];
      }
    }
  }

  else
  {
    v8 = os_log_create("com.apple.contacts", "data-access-error");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CNLabeledValue initWithCoder:];
    }
  }

  v9 = [CNErrorFactory errorWithCode:2 userInfo:0];
  [v4 failWithError:v9];

  v10 = 0;
LABEL_14:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v7 = a3;
  [v7 encodeObject:identifier forKey:@"_identifier"];
  v5 = [(CNLabelValuePair *)self->_labelValuePair label];
  [v7 encodeObject:v5 forKey:@"_label"];

  v6 = [(CNLabelValuePair *)self->_labelValuePair value];
  [v7 encodeObject:v6 forKey:@"_value"];

  [v7 encodeObject:self->_linkedIdentifiers forKey:@"linkedIdentifiers"];
  [v7 encodeInt32:self->_iOSLegacyIdentifier forKey:@"iOSLegacyIdentifier"];
  [v7 encodeObject:self->_storeIdentifier forKey:@"storeIdentifier"];
  [v7 encodeObject:self->_storeInfo forKey:@"storeInfo"];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v21 = v5;
    v22 = v4;
    v23 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(CNLabeledValue *)self identifier];
      v12 = [a3 identifier];
      if (!(v11 | v12) || (v13 = [v11 isEqual:v12]) != 0)
      {
        v14 = [(CNLabeledValue *)self storeIdentifier:v6];
        v15 = [a3 storeIdentifier];
        if (!(v14 | v15) || (v13 = [v14 isEqual:v15]) != 0)
        {
          v16 = [(CNLabeledValue *)self linkedIdentifiers];
          v17 = [a3 linkedIdentifiers];
          if (!(v16 | v17) || (v13 = [v16 isEqual:v17]) != 0)
          {
            v18 = [(CNLabeledValue *)self labelValuePair];
            v19 = [a3 labelValuePair];
            if (!(v18 | v19) || (v13 = [v18 isEqual:v19]) != 0)
            {
              LOBYTE(v13) = 1;
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (BOOL)isEqualIgnoringIdentifiers:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CNLabeledValue *)self labelValuePair];
      v6 = [a3 labelValuePair];
      if (!(v5 | v6) || (v7 = [v5 isEqual:v6]) != 0)
      {
        LOBYTE(v7) = 1;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (SGRecordId)suggestionRecordId
{
  v2 = [(CNLabeledValue *)self storeInfo];
  v3 = [v2 objectForKey:CNSuggestedContactRecordIdKey];

  return v3;
}

- (NSString)suggestionFoundInBundleId
{
  v2 = [(CNLabeledValue *)self storeInfo];
  v3 = [v2 objectForKey:CNSuggestedContactFoundInBundle];

  return v3;
}

- (CNValueOrigin)valueOrigin
{
  v2 = [(CNLabeledValue *)self storeInfo];
  v3 = [v2 objectForKeyedSubscript:@"valueOrigin"];

  return v3;
}

- (NSString)localizedAppName
{
  objc_opt_class();
  v3 = [(CNLabeledValue *)self value];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = *MEMORY[0x1E6996570];
  v7 = [v5 service];
  v8 = (*(v6 + 16))(v6, v7);

  v9 = 0;
  if (v8)
  {
    v9 = [v5 service];
  }

  return v9;
}

- (BOOL)isBirthday
{
  v2 = [(CNLabeledValue *)self label];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6999320]];

  return v3;
}

@end