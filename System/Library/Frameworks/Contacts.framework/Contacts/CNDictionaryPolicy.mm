@interface CNDictionaryPolicy
- (BOOL)isContactPropertySupported:(id)a3;
- (CNDictionaryPolicy)initWithCoder:(id)a3;
- (CNDictionaryPolicy)initWithDictionary:(id)a3;
- (id)contactRestrictionsForLabeledProperty:(id)a3;
- (id)supportedLabelsForContactProperty:(id)a3;
- (id)unsupportedAttributesForLabeledContactProperty:(id)a3;
- (unint64_t)maximumCountOfValuesForContactProperty:(id)a3;
- (unint64_t)maximumCountOfValuesForContactProperty:(id)a3 label:(id)a4;
@end

@implementation CNDictionaryPolicy

- (CNDictionaryPolicy)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNDictionaryPolicy;
  v5 = [(CNDictionaryPolicy *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    policyDictionary = v5->_policyDictionary;
    v5->_policyDictionary = v6;

    v8 = v5;
  }

  return v5;
}

- (id)contactRestrictionsForLabeledProperty:(id)a3
{
  policyDictionary = self->_policyDictionary;
  v4 = a3;
  v5 = [(NSDictionary *)policyDictionary objectForKey:@"CNContact"];
  v6 = [v5 objectForKey:@"LabeledValueRestrictions"];
  v7 = [v6 objectForKey:v4];

  return v7;
}

- (id)unsupportedAttributesForLabeledContactProperty:(id)a3
{
  v3 = [(CNDictionaryPolicy *)self contactRestrictionsForLabeledProperty:a3];
  v4 = [v3 objectForKey:@"UnsupportedValueKeys"];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DEC8] array];
  }

  return v4;
}

- (unint64_t)maximumCountOfValuesForContactProperty:(id)a3
{
  v4 = a3;
  v5 = [(CNDictionaryPolicy *)self contactRestrictionsForLabeledProperty:v4];
  v6 = [v5 objectForKey:@"MaximumNumber"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntegerValue];
  }

  else
  {
    if (![(CNDictionaryPolicy *)self isContactPropertySupported:v4])
    {
      v9 = 0;
      goto LABEL_6;
    }

    v11.receiver = self;
    v11.super_class = CNDictionaryPolicy;
    v8 = [(CNPermissivePolicy *)&v11 maximumCountOfValuesForContactProperty:v4];
  }

  v9 = v8;
LABEL_6:

  return v9;
}

- (id)supportedLabelsForContactProperty:(id)a3
{
  v3 = [(CNDictionaryPolicy *)self contactRestrictionsForLabeledProperty:a3];
  v4 = [v3 objectForKey:@"SupportedLabels"];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 allKeys];
  }

  return v5;
}

- (unint64_t)maximumCountOfValuesForContactProperty:(id)a3 label:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNDictionaryPolicy *)self contactRestrictionsForLabeledProperty:v6];
  v9 = [v8 objectForKey:@"SupportedLabels"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 objectForKey:v7];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 unsignedIntegerValue];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = CNDictionaryPolicy;
      v12 = [(CNPermissivePolicy *)&v16 maximumCountOfValuesForContactProperty:v6 label:v7];
    }

    v13 = v12;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CNDictionaryPolicy;
    v13 = [(CNPermissivePolicy *)&v15 maximumCountOfValuesForContactProperty:v6 label:v7];
  }

  return v13;
}

- (BOOL)isContactPropertySupported:(id)a3
{
  policyDictionary = self->_policyDictionary;
  v4 = a3;
  v5 = [(NSDictionary *)policyDictionary objectForKey:@"CNContact"];
  v6 = [v5 objectForKey:@"UnsupportedAttributes"];
  v7 = [v6 containsObject:v4];

  return v7 ^ 1;
}

- (CNDictionaryPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CNDictionaryPolicy *)self initWithDictionary:0];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_policyDictionary"];
    v12 = [v11 copy];
    policyDictionary = v5->_policyDictionary;
    v5->_policyDictionary = v12;

    v14 = v5;
  }

  return v5;
}

@end