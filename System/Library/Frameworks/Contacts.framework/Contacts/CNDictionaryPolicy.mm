@interface CNDictionaryPolicy
- (BOOL)isContactPropertySupported:(id)supported;
- (CNDictionaryPolicy)initWithCoder:(id)coder;
- (CNDictionaryPolicy)initWithDictionary:(id)dictionary;
- (id)contactRestrictionsForLabeledProperty:(id)property;
- (id)supportedLabelsForContactProperty:(id)property;
- (id)unsupportedAttributesForLabeledContactProperty:(id)property;
- (unint64_t)maximumCountOfValuesForContactProperty:(id)property;
- (unint64_t)maximumCountOfValuesForContactProperty:(id)property label:(id)label;
@end

@implementation CNDictionaryPolicy

- (CNDictionaryPolicy)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = CNDictionaryPolicy;
  v5 = [(CNDictionaryPolicy *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    policyDictionary = v5->_policyDictionary;
    v5->_policyDictionary = v6;

    v8 = v5;
  }

  return v5;
}

- (id)contactRestrictionsForLabeledProperty:(id)property
{
  policyDictionary = self->_policyDictionary;
  propertyCopy = property;
  v5 = [(NSDictionary *)policyDictionary objectForKey:@"CNContact"];
  v6 = [v5 objectForKey:@"LabeledValueRestrictions"];
  v7 = [v6 objectForKey:propertyCopy];

  return v7;
}

- (id)unsupportedAttributesForLabeledContactProperty:(id)property
{
  v3 = [(CNDictionaryPolicy *)self contactRestrictionsForLabeledProperty:property];
  array = [v3 objectForKey:@"UnsupportedValueKeys"];
  if (!array)
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

- (unint64_t)maximumCountOfValuesForContactProperty:(id)property
{
  propertyCopy = property;
  v5 = [(CNDictionaryPolicy *)self contactRestrictionsForLabeledProperty:propertyCopy];
  v6 = [v5 objectForKey:@"MaximumNumber"];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    if (![(CNDictionaryPolicy *)self isContactPropertySupported:propertyCopy])
    {
      v9 = 0;
      goto LABEL_6;
    }

    v11.receiver = self;
    v11.super_class = CNDictionaryPolicy;
    unsignedIntegerValue = [(CNPermissivePolicy *)&v11 maximumCountOfValuesForContactProperty:propertyCopy];
  }

  v9 = unsignedIntegerValue;
LABEL_6:

  return v9;
}

- (id)supportedLabelsForContactProperty:(id)property
{
  v3 = [(CNDictionaryPolicy *)self contactRestrictionsForLabeledProperty:property];
  v4 = [v3 objectForKey:@"SupportedLabels"];
  objc_opt_class();
  allKeys = v4;
  if (objc_opt_isKindOfClass())
  {
    allKeys = [v4 allKeys];
  }

  return allKeys;
}

- (unint64_t)maximumCountOfValuesForContactProperty:(id)property label:(id)label
{
  propertyCopy = property;
  labelCopy = label;
  v8 = [(CNDictionaryPolicy *)self contactRestrictionsForLabeledProperty:propertyCopy];
  v9 = [v8 objectForKey:@"SupportedLabels"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 objectForKey:labelCopy];
    v11 = v10;
    if (v10)
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = CNDictionaryPolicy;
      unsignedIntegerValue = [(CNPermissivePolicy *)&v16 maximumCountOfValuesForContactProperty:propertyCopy label:labelCopy];
    }

    v13 = unsignedIntegerValue;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CNDictionaryPolicy;
    v13 = [(CNPermissivePolicy *)&v15 maximumCountOfValuesForContactProperty:propertyCopy label:labelCopy];
  }

  return v13;
}

- (BOOL)isContactPropertySupported:(id)supported
{
  policyDictionary = self->_policyDictionary;
  supportedCopy = supported;
  v5 = [(NSDictionary *)policyDictionary objectForKey:@"CNContact"];
  v6 = [v5 objectForKey:@"UnsupportedAttributes"];
  v7 = [v6 containsObject:supportedCopy];

  return v7 ^ 1;
}

- (CNDictionaryPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CNDictionaryPolicy *)self initWithDictionary:0];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_policyDictionary"];
    v12 = [v11 copy];
    policyDictionary = v5->_policyDictionary;
    v5->_policyDictionary = v12;

    v14 = v5;
  }

  return v5;
}

@end