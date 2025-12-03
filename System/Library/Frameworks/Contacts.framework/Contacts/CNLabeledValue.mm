@interface CNLabeledValue
+ (BOOL)isArrayOfEntries:(id)entries equalToArrayOfEntriesIgnoringIdentifiers:(id)identifiers;
+ (CNLabeledValue)labeledValueWithIdentifier:(id)identifier inArray:(id)array;
+ (CNLabeledValue)labeledValueWithLabel:(NSString *)label value:(id)value;
+ (NSString)localizedStringForLabel:(NSString *)label;
+ (id)allValuesInArray:(id)array;
+ (id)entriesByUnifyingEntryArrays:(id)arrays forProperty:(id)property;
+ (id)entryForIdentifier:(id)identifier inArray:(id)array;
+ (id)entryWithIdentifier:(id)identifier label:(id)label value:(id)value;
+ (id)firstLabeledValueWithValue:(id)value inArray:(id)array;
+ (id)identifierProvider;
+ (id)labelForIdentifier:(id)identifier inArray:(id)array;
+ (id)makeIdentifier;
+ (id)propertyDescriptionLocalizationForLabel:(uint64_t)label;
+ (id)propertyDescriptionOwnersByLabel;
+ (id)testMatchingIdentifier:(id)identifier;
+ (id)valueForIdentifier:(id)identifier inArray:(id)array;
- (BOOL)isBirthday;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualIgnoringIdentifiers:(id)identifiers;
- (BOOL)isSuggested;
- (CNLabeledValue)init;
- (CNLabeledValue)initWithCoder:(id)coder;
- (CNLabeledValue)initWithIdentifier:(id)identifier label:(id)label value:(id)value;
- (CNLabeledValue)initWithLabel:(NSString *)label value:(id)value;
- (CNLabeledValue)labeledValueBySettingLabel:(NSString *)label;
- (CNLabeledValue)labeledValueBySettingLabel:(NSString *)label value:(id)value;
- (CNLabeledValue)labeledValueBySettingValue:(id)value;
- (CNValueOrigin)valueOrigin;
- (NSString)description;
- (NSString)localizedAppName;
- (NSString)suggestionFoundInBundleId;
- (SGRecordId)suggestionRecordId;
- (id)copyWithZone:(_NSZone *)zone;
- (id)primitiveInitWithIdentifier:(id)identifier label:(id)label value:(id)value;
- (id)value;
- (unint64_t)hash;
- (void)addStoreInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNLabeledValue

- (id)value
{
  isValueMutable = self->_isValueMutable;
  labelValuePair = self->_labelValuePair;
  if (isValueMutable)
  {
    value = [(CNLabelValuePair *)labelValuePair value];
    v5 = [value copy];
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
  makeIdentifier = [v0 makeIdentifier];

  return makeIdentifier;
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
  label = [(CNLabelValuePair *)self->_labelValuePair label];
  value = [(CNLabelValuePair *)self->_labelValuePair value];
  v7 = [v3 appendNamesAndObjects:{@"identifier", identifier, @"label", label, @"value", value, 0}];

  v8 = [v3 appendName:@"iOSLegacyIdentifier" intValue:self->_iOSLegacyIdentifier];
  build = [v3 build];

  return build;
}

- (BOOL)isSuggested
{
  storeIdentifier = [(CNLabeledValue *)self storeIdentifier];
  if (!storeIdentifier)
  {
    v2 = +[CNSuggestedContactStore storeIdentifier];
    if (!v2)
    {
      v8 = 1;
      goto LABEL_14;
    }
  }

  storeIdentifier2 = [(CNLabeledValue *)self storeIdentifier];
  v7 = +[CNSuggestedContactStore storeIdentifier];
  if (([storeIdentifier2 isEqual:v7] & 1) == 0)
  {
    storeIdentifier3 = [(CNLabeledValue *)self storeIdentifier];
    if (storeIdentifier3 || (+[CNDonationMapper mapperIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      storeIdentifier4 = [(CNLabeledValue *)self storeIdentifier];
      v11 = +[CNDonationMapper mapperIdentifier];
      v8 = [storeIdentifier4 isEqual:v11];

      if (storeIdentifier3)
      {

        goto LABEL_13;
      }
    }

    else
    {
      v8 = 1;
    }

LABEL_13:
    if (storeIdentifier)
    {
      goto LABEL_15;
    }

LABEL_14:

    goto LABEL_15;
  }

  v8 = 1;
  if (!storeIdentifier)
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
  identifier = [(CNLabeledValue *)self identifier];
  v5 = [v3 objectHash:identifier];

  v6 = MEMORY[0x1E6996730];
  storeIdentifier = [(CNLabeledValue *)self storeIdentifier];
  v8 = [v6 objectHash:storeIdentifier] - v5 + 32 * v5;

  v9 = MEMORY[0x1E6996730];
  labelValuePair = [(CNLabeledValue *)self labelValuePair];
  v11 = [v9 objectHash:labelValuePair] - v8 + 32 * v8;

  return v11 + 506447;
}

+ (id)testMatchingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__CNLabeledValue_testMatchingIdentifier___block_invoke;
  aBlock[3] = &unk_1E7412B98;
  v9 = identifierCopy;
  v4 = identifierCopy;
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

+ (id)entryForIdentifier:(id)identifier inArray:(id)array
{
  arrayCopy = array;
  v7 = [self testMatchingIdentifier:identifier];
  v8 = [arrayCopy indexOfObjectPassingTest:v7];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [arrayCopy objectAtIndex:v8];
  }

  return v9;
}

+ (NSString)localizedStringForLabel:(NSString *)label
{
  v4 = label;
  v5 = [(CNLabeledValue *)self propertyDescriptionLocalizationForLabel:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x1E6996750] localizedStringForString:v4 class:self returningNilIfNotFound:0];
    if (!v5)
    {
      v5 = v4;
    }
  }

  v6 = v5;

  return v6;
}

+ (id)propertyDescriptionLocalizationForLabel:(uint64_t)label
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

+ (id)labelForIdentifier:(id)identifier inArray:(id)array
{
  v4 = [self entryForIdentifier:identifier inArray:array];
  label = [v4 label];

  return label;
}

+ (id)valueForIdentifier:(id)identifier inArray:(id)array
{
  v4 = [self entryForIdentifier:identifier inArray:array];
  value = [v4 value];

  return value;
}

+ (id)entryWithIdentifier:(id)identifier label:(id)label value:(id)value
{
  valueCopy = value;
  labelCopy = label;
  identifierCopy = identifier;
  v11 = [[self alloc] initWithIdentifier:identifierCopy label:labelCopy value:valueCopy];

  return v11;
}

+ (CNLabeledValue)labeledValueWithLabel:(NSString *)label value:(id)value
{
  v6 = value;
  v7 = label;
  v8 = [self alloc];
  v9 = +[CNLabeledValue makeIdentifier];
  v10 = [v8 initWithIdentifier:v9 label:v7 value:v6];

  return v10;
}

+ (BOOL)isArrayOfEntries:(id)entries equalToArrayOfEntriesIgnoringIdentifiers:(id)identifiers
{
  entriesCopy = entries;
  identifiersCopy = identifiers;
  v7 = [entriesCopy count];
  if (v7 == [identifiersCopy count])
  {
    if (v7)
    {
      v8 = 0;
      v9 = v7 - 1;
      do
      {
        objc_opt_class();
        v10 = [entriesCopy objectAtIndex:v8];
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
        v13 = [identifiersCopy objectAtIndex:v8];
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

+ (id)entriesByUnifyingEntryArrays:(id)arrays forProperty:(id)property
{
  propertyCopy = property;
  arraysCopy = arrays;
  v7 = objc_opt_new();
  v8 = [CN unifyMultivalues:arraysCopy forProperty:propertyCopy options:v7];

  return v8;
}

+ (id)allValuesInArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = arrayCopy;
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

        value = [*(*(&v12 + 1) + 8 * i) value];
        if (value)
        {
          [array addObject:value];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

+ (CNLabeledValue)labeledValueWithIdentifier:(id)identifier inArray:(id)array
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:identifierCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [arrayCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (id)firstLabeledValueWithValue:(id)value inArray:(id)array
{
  v19 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        value = [v10 value];
        v12 = [value isEqual:valueCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [arrayCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  selfCopy = self;
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

- (CNLabeledValue)initWithIdentifier:(id)identifier label:(id)label value:(id)value
{
  valueCopy = value;
  labelCopy = label;
  v10 = [identifier copy];
  v11 = [labelCopy copy];

  v12 = [valueCopy copy];
  v13 = [(CNLabeledValue *)self primitiveInitWithIdentifier:v10 label:v11 value:v12];

  return v13;
}

- (id)primitiveInitWithIdentifier:(id)identifier label:(id)label value:(id)value
{
  identifierCopy = identifier;
  labelCopy = label;
  valueCopy = value;
  if (!valueCopy)
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
    objc_storeStrong(&v12->_identifier, identifier);
    v14 = [[CNLabelValuePair alloc] initWithLabel:labelCopy value:valueCopy];
    labelValuePair = v13->_labelValuePair;
    v13->_labelValuePair = v14;

    v13->_iOSLegacyIdentifier = CNLabeledValueInvalidIOSIdentifier;
    objc_opt_class();
    v13->_isValueMutable = objc_opt_isKindOfClass() & 1;
    v16 = v13;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNLabeledValue alloc];
  identifier = self->_identifier;
  label = [(CNLabeledValue *)self label];
  value = [(CNLabeledValue *)self value];
  v8 = [(CNLabeledValue *)v4 initWithIdentifier:identifier label:label value:value];

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
  value = [(CNLabelValuePair *)self->_labelValuePair value];
  v8 = [(CNLabeledValue *)v5 initWithIdentifier:identifier label:v4 value:value];

  linkedIdentifiers = [(CNLabeledValue *)self linkedIdentifiers];
  v10 = [linkedIdentifiers copy];
  [(CNLabeledValue *)v8 setLinkedIdentifiers:v10];

  [(CNLabeledValue *)v8 setIOSLegacyIdentifier:[(CNLabeledValue *)self iOSLegacyIdentifier]];

  return v8;
}

- (CNLabeledValue)labeledValueBySettingValue:(id)value
{
  v4 = value;
  v5 = [CNLabeledValue alloc];
  identifier = self->_identifier;
  label = [(CNLabelValuePair *)self->_labelValuePair label];
  v8 = [(CNLabeledValue *)v5 initWithIdentifier:identifier label:label value:v4];

  linkedIdentifiers = [(CNLabeledValue *)self linkedIdentifiers];
  v10 = [linkedIdentifiers copy];
  [(CNLabeledValue *)v8 setLinkedIdentifiers:v10];

  [(CNLabeledValue *)v8 setIOSLegacyIdentifier:[(CNLabeledValue *)self iOSLegacyIdentifier]];

  return v8;
}

- (CNLabeledValue)labeledValueBySettingLabel:(NSString *)label value:(id)value
{
  v6 = value;
  v7 = label;
  v8 = [[CNLabeledValue alloc] initWithIdentifier:self->_identifier label:v7 value:v6];

  linkedIdentifiers = [(CNLabeledValue *)self linkedIdentifiers];
  v10 = [linkedIdentifiers copy];
  [(CNLabeledValue *)v8 setLinkedIdentifiers:v10];

  [(CNLabeledValue *)v8 setIOSLegacyIdentifier:[(CNLabeledValue *)self iOSLegacyIdentifier]];

  return v8;
}

- (void)addStoreInfo:(id)info
{
  infoCopy = info;
  v4 = *MEMORY[0x1E6996548];
  storeInfo = [(CNLabeledValue *)self storeInfo];
  LODWORD(v4) = (*(v4 + 16))(v4, storeInfo);

  if (v4)
  {
    [(CNLabeledValue *)self setStoreInfo:infoCopy];
  }

  else
  {
    storeInfo2 = [(CNLabeledValue *)self storeInfo];
    v7 = [storeInfo2 mutableCopy];

    [v7 addEntriesFromDictionary:infoCopy];
    [(CNLabeledValue *)self setStoreInfo:v7];
  }
}

- (CNLabeledValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
  v7 = [coderCopy decodeObjectForKey:@"_value"];
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
        v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"linkedIdentifiers"];
        v17 = [v16 copy];
        v18 = v12[6];
        v12[6] = v17;

        *(v12 + 6) = [coderCopy decodeInt32ForKey:@"iOSLegacyIdentifier"];
        v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeIdentifier"];
        v20 = [v19 copy];
        v21 = v12[4];
        v12[4] = v20;

        v22 = [CNContact storeInfoFromCoder:coderCopy storeIdentifier:v12[4] key:@"storeInfo"];
        v23 = [v22 copy];
        v24 = v12[5];
        v12[5] = v23;

        self = v12;
        selfCopy = self;
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
  [coderCopy failWithError:v9];

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  label = [(CNLabelValuePair *)self->_labelValuePair label];
  [coderCopy encodeObject:label forKey:@"_label"];

  value = [(CNLabelValuePair *)self->_labelValuePair value];
  [coderCopy encodeObject:value forKey:@"_value"];

  [coderCopy encodeObject:self->_linkedIdentifiers forKey:@"linkedIdentifiers"];
  [coderCopy encodeInt32:self->_iOSLegacyIdentifier forKey:@"iOSLegacyIdentifier"];
  [coderCopy encodeObject:self->_storeIdentifier forKey:@"storeIdentifier"];
  [coderCopy encodeObject:self->_storeInfo forKey:@"storeInfo"];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
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
      identifier = [(CNLabeledValue *)self identifier];
      identifier2 = [equal identifier];
      if (!(identifier | identifier2) || (v13 = [identifier isEqual:identifier2]) != 0)
      {
        v14 = [(CNLabeledValue *)self storeIdentifier:v6];
        storeIdentifier = [equal storeIdentifier];
        if (!(v14 | storeIdentifier) || (v13 = [v14 isEqual:storeIdentifier]) != 0)
        {
          linkedIdentifiers = [(CNLabeledValue *)self linkedIdentifiers];
          linkedIdentifiers2 = [equal linkedIdentifiers];
          if (!(linkedIdentifiers | linkedIdentifiers2) || (v13 = [linkedIdentifiers isEqual:linkedIdentifiers2]) != 0)
          {
            labelValuePair = [(CNLabeledValue *)self labelValuePair];
            labelValuePair2 = [equal labelValuePair];
            if (!(labelValuePair | labelValuePair2) || (v13 = [labelValuePair isEqual:labelValuePair2]) != 0)
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

- (BOOL)isEqualIgnoringIdentifiers:(id)identifiers
{
  if (self == identifiers)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      labelValuePair = [(CNLabeledValue *)self labelValuePair];
      labelValuePair2 = [identifiers labelValuePair];
      if (!(labelValuePair | labelValuePair2) || (v7 = [labelValuePair isEqual:labelValuePair2]) != 0)
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
  storeInfo = [(CNLabeledValue *)self storeInfo];
  v3 = [storeInfo objectForKey:CNSuggestedContactRecordIdKey];

  return v3;
}

- (NSString)suggestionFoundInBundleId
{
  storeInfo = [(CNLabeledValue *)self storeInfo];
  v3 = [storeInfo objectForKey:CNSuggestedContactFoundInBundle];

  return v3;
}

- (CNValueOrigin)valueOrigin
{
  storeInfo = [(CNLabeledValue *)self storeInfo];
  v3 = [storeInfo objectForKeyedSubscript:@"valueOrigin"];

  return v3;
}

- (NSString)localizedAppName
{
  objc_opt_class();
  value = [(CNLabeledValue *)self value];
  if (objc_opt_isKindOfClass())
  {
    v4 = value;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = *MEMORY[0x1E6996570];
  service = [v5 service];
  v8 = (*(v6 + 16))(v6, service);

  service2 = 0;
  if (v8)
  {
    service2 = [v5 service];
  }

  return service2;
}

- (BOOL)isBirthday
{
  label = [(CNLabeledValue *)self label];
  v3 = [label isEqualToString:*MEMORY[0x1E6999320]];

  return v3;
}

@end