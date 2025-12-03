@interface CNiOSABPolicy
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPolicy:(id)policy;
- (BOOL)shouldAddContact:(id)contact;
- (BOOL)shouldRemoveContact:(id)contact;
- (BOOL)shouldSetValue:(id)value property:(id)property contact:(id)contact replacementValue:(id *)replacementValue;
- (CNiOSABPolicy)initWithAddressBookPolicy:(void *)policy readOnly:(BOOL)only;
- (CNiOSABPolicy)initWithCoder:(id)coder;
- (id)_orderedLabels:(id)labels withOrder:(id)order;
- (id)supportedLabelsForContactProperty:(id)property;
- (unint64_t)maximumCountOfValuesForContactProperty:(id)property;
- (unint64_t)maximumCountOfValuesForContactProperty:(id)property label:(id)label;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABPolicy

- (CNiOSABPolicy)initWithAddressBookPolicy:(void *)policy readOnly:(BOOL)only
{
  v9.receiver = self;
  v9.super_class = CNiOSABPolicy;
  v6 = [(CNiOSABPolicy *)&v9 init];
  v7 = v6;
  if (policy && v6)
  {
    v6->_iOSABPolicy = policy;
    CFRetain(policy);
    v7->_abSourceIsContentReadonly = only;
    v7->_fakePerson = ABPersonCreate();
  }

  return v7;
}

- (void)dealloc
{
  CFRelease(self->_fakePerson);
  CFRelease(self->_iOSABPolicy);
  v3.receiver = self;
  v3.super_class = CNiOSABPolicy;
  [(CNiOSABPolicy *)&v3 dealloc];
}

- (unint64_t)maximumCountOfValuesForContactProperty:(id)property
{
  propertyCopy = property;
  v4 = +[CN contactPropertiesByKey];
  v5 = [v4 objectForKey:propertyCopy];

  if (v5 && (v10 = 0, [v5 abPropertyID:&v10]))
  {
    v6 = ABPolicyMaximumNumberOfValuesForProperty();
    if (v6 >= 2 && [v5 isSingleValue])
    {
      v7 = 1;
    }

    else
    {
      if (v6 == 0x7FFFFFFF)
      {
        v8 = -1;
      }

      else
      {
        v8 = v6;
      }

      v7 = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)supportedLabelsForContactProperty:(id)property
{
  v26 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  v5 = +[CN contactPropertiesByKey];
  v6 = [v5 objectForKey:propertyCopy];

  if (v6 && (v24 = 0, [v6 abPropertyID:&v24]))
  {
    v7 = ABPolicyCopySupportedLabelsForProperty();
    if (v7)
    {
      array = [MEMORY[0x1E695DF70] array];
      v9 = +[CNiOSABConstantsMapping ABToCNLabelConstantsMapping];
      v10 = ABPolicyCopyPreferredLabelsForProperty();
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      allKeys = [v7 allKeys];
      v19 = v10;
      v12 = [(CNiOSABPolicy *)self _orderedLabels:allKeys withOrder:v10];

      v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [v9 mappedConstant:*(*(&v20 + 1) + 8 * i)];
            [array addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v14);
      }
    }

    else if ([v6 isSingleValue])
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)_orderedLabels:(id)labels withOrder:(id)order
{
  labelsCopy = labels;
  v6 = labelsCopy;
  if (order)
  {
    v7 = MEMORY[0x1E695DFA0];
    orderCopy = order;
    v9 = [[v7 alloc] initWithArray:orderCopy];

    v10 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    [v9 intersectSet:v10];
    [v9 addObjectsFromArray:v6];
    array = [v9 array];
  }

  else
  {
    array = labelsCopy;
  }

  return array;
}

- (unint64_t)maximumCountOfValuesForContactProperty:(id)property label:(id)label
{
  labelCopy = label;
  propertyCopy = property;
  v7 = +[CNiOSABConstantsMapping CNToABLabelConstantsMapping];
  v8 = [v7 mappedConstant:labelCopy];

  v9 = +[CN contactPropertiesByKey];
  v10 = [v9 objectForKey:propertyCopy];

  if (v10 && (v15 = 0, [v10 abPropertyID:&v15]) && (v11 = ABPolicyCopySupportedLabelsForProperty()) != 0)
  {
    v12 = v11;
    if (CFDictionaryContainsKey(v11, v8))
    {
      Value = CFDictionaryGetValue(v12, v8);
    }

    else
    {
      Value = 0;
    }

    CFRelease(v12);
  }

  else
  {
    Value = -1;
  }

  return Value;
}

- (BOOL)shouldSetValue:(id)value property:(id)property contact:(id)contact replacementValue:(id *)replacementValue
{
  valueCopy = value;
  if (self->_abSourceIsContentReadonly)
  {
    ShouldSetValue = 0;
  }

  else
  {
    propertyCopy = property;
    v11 = +[CN contactPropertiesByKey];
    v12 = [v11 objectForKey:propertyCopy];

    if (v12)
    {
      v14 = 0;
      ShouldSetValue = 0;
      if ([v12 abPropertyID:&v14])
      {
        [v12 ABValueFromCNValue:valueCopy];
        ShouldSetValue = ABPolicyShouldSetValue();
      }
    }

    else
    {
      ShouldSetValue = 0;
    }
  }

  return ShouldSetValue;
}

- (BOOL)shouldAddContact:(id)contact
{
  if (self->_abSourceIsContentReadonly)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEDEB350](self->_iOSABPolicy, 0, self->_fakePerson, 0);
  }
}

- (BOOL)shouldRemoveContact:(id)contact
{
  if (self->_abSourceIsContentReadonly)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEDEB358](self->_iOSABPolicy, 0, self->_fakePerson, 0);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CNiOSABPolicy *)self isEqualToPolicy:equalCopy];

  return v5;
}

- (BOOL)isEqualToPolicy:(id)policy
{
  if (self->_abSourceIsContentReadonly == *(policy + 24))
  {
    return MEMORY[0x1EEDEB340](self->_iOSABPolicy, *(policy + 1));
  }

  else
  {
    return 0;
  }
}

- (CNiOSABPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = ABPolicyCreateWithCoder();
  v6 = [coderCopy decodeBoolForKey:@"read-only"];

  v7 = [(CNiOSABPolicy *)self initWithAddressBookPolicy:v5 readOnly:v6];
  CFRelease(v5);
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ABPolicyEncodeWithCoder();
  [coderCopy encodeBool:self->_abSourceIsContentReadonly forKey:@"read-only"];
}

@end