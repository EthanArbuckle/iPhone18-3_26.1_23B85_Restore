@interface CNiOSABPolicy
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPolicy:(id)a3;
- (BOOL)shouldAddContact:(id)a3;
- (BOOL)shouldRemoveContact:(id)a3;
- (BOOL)shouldSetValue:(id)a3 property:(id)a4 contact:(id)a5 replacementValue:(id *)a6;
- (CNiOSABPolicy)initWithAddressBookPolicy:(void *)a3 readOnly:(BOOL)a4;
- (CNiOSABPolicy)initWithCoder:(id)a3;
- (id)_orderedLabels:(id)a3 withOrder:(id)a4;
- (id)supportedLabelsForContactProperty:(id)a3;
- (unint64_t)maximumCountOfValuesForContactProperty:(id)a3;
- (unint64_t)maximumCountOfValuesForContactProperty:(id)a3 label:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABPolicy

- (CNiOSABPolicy)initWithAddressBookPolicy:(void *)a3 readOnly:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = CNiOSABPolicy;
  v6 = [(CNiOSABPolicy *)&v9 init];
  v7 = v6;
  if (a3 && v6)
  {
    v6->_iOSABPolicy = a3;
    CFRetain(a3);
    v7->_abSourceIsContentReadonly = a4;
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

- (unint64_t)maximumCountOfValuesForContactProperty:(id)a3
{
  v3 = a3;
  v4 = +[CN contactPropertiesByKey];
  v5 = [v4 objectForKey:v3];

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

- (id)supportedLabelsForContactProperty:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CN contactPropertiesByKey];
  v6 = [v5 objectForKey:v4];

  if (v6 && (v24 = 0, [v6 abPropertyID:&v24]))
  {
    v7 = ABPolicyCopySupportedLabelsForProperty();
    if (v7)
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v9 = +[CNiOSABConstantsMapping ABToCNLabelConstantsMapping];
      v10 = ABPolicyCopyPreferredLabelsForProperty();
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = [v7 allKeys];
      v19 = v10;
      v12 = [(CNiOSABPolicy *)self _orderedLabels:v11 withOrder:v10];

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
            [v8 addObject:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v14);
      }
    }

    else if ([v6 isSingleValue])
    {
      v8 = [MEMORY[0x1E695DF70] array];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_orderedLabels:(id)a3 withOrder:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = MEMORY[0x1E695DFA0];
    v8 = a4;
    v9 = [[v7 alloc] initWithArray:v8];

    v10 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    [v9 intersectSet:v10];
    [v9 addObjectsFromArray:v6];
    v11 = [v9 array];
  }

  else
  {
    v11 = v5;
  }

  return v11;
}

- (unint64_t)maximumCountOfValuesForContactProperty:(id)a3 label:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[CNiOSABConstantsMapping CNToABLabelConstantsMapping];
  v8 = [v7 mappedConstant:v5];

  v9 = +[CN contactPropertiesByKey];
  v10 = [v9 objectForKey:v6];

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

- (BOOL)shouldSetValue:(id)a3 property:(id)a4 contact:(id)a5 replacementValue:(id *)a6
{
  v8 = a3;
  if (self->_abSourceIsContentReadonly)
  {
    ShouldSetValue = 0;
  }

  else
  {
    v10 = a4;
    v11 = +[CN contactPropertiesByKey];
    v12 = [v11 objectForKey:v10];

    if (v12)
    {
      v14 = 0;
      ShouldSetValue = 0;
      if ([v12 abPropertyID:&v14])
      {
        [v12 ABValueFromCNValue:v8];
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

- (BOOL)shouldAddContact:(id)a3
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

- (BOOL)shouldRemoveContact:(id)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CNiOSABPolicy *)self isEqualToPolicy:v4];

  return v5;
}

- (BOOL)isEqualToPolicy:(id)a3
{
  if (self->_abSourceIsContentReadonly == *(a3 + 24))
  {
    return MEMORY[0x1EEDEB340](self->_iOSABPolicy, *(a3 + 1));
  }

  else
  {
    return 0;
  }
}

- (CNiOSABPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = ABPolicyCreateWithCoder();
  v6 = [v4 decodeBoolForKey:@"read-only"];

  v7 = [(CNiOSABPolicy *)self initWithAddressBookPolicy:v5 readOnly:v6];
  CFRelease(v5);
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  ABPolicyEncodeWithCoder();
  [v4 encodeBool:self->_abSourceIsContentReadonly forKey:@"read-only"];
}

@end