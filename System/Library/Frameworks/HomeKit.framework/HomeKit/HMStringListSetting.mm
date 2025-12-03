@interface HMStringListSetting
- (BOOL)isEqual:(id)equal;
- (id)attributeDescriptions;
- (id)payloadCopy;
@end

@implementation HMStringListSetting

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (v15.receiver = self, v15.super_class = HMStringListSetting, [(HMImmutableSetting *)&v15 isEqual:v6]))
    {
      stringListValue = [(HMStringListSetting *)self stringListValue];
      v8 = [stringListValue count];
      stringListValue2 = [(HMStringListSetting *)v6 stringListValue];
      if (v8 == [stringListValue2 count])
      {
        stringListValue3 = [(HMStringListSetting *)self stringListValue];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __31__HMStringListSetting_isEqual___block_invoke;
        v13[3] = &unk_1E7548550;
        v14 = v6;
        v11 = [stringListValue3 na_allObjectsPassTest:v13];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

uint64_t __31__HMStringListSetting_isEqual___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 stringListValue];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = HMStringListSetting;
  attributeDescriptions = [(HMImmutableSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  stringListValue = [(HMStringListSetting *)self stringListValue];
  v6 = [v4 initWithName:@"stringListValue" value:stringListValue];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)payloadCopy
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HMStringListSetting;
  payloadCopy = [(HMImmutableSetting *)&v10 payloadCopy];
  v4 = [payloadCopy mutableCopy];

  v11[0] = @"HMImmutableSettingTypePayloadKey";
  v11[1] = @"HMImmutableSettingValuePayloadKey";
  v12[0] = &unk_1F0EFCC08;
  stringListValue = [(HMStringListSetting *)self stringListValue];
  v12[1] = stringListValue;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v4 addEntriesFromDictionary:v6];

  v7 = [v4 copy];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end