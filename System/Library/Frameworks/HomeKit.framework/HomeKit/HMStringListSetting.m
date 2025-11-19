@interface HMStringListSetting
- (BOOL)isEqual:(id)a3;
- (id)attributeDescriptions;
- (id)payloadCopy;
@end

@implementation HMStringListSetting

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (v15.receiver = self, v15.super_class = HMStringListSetting, [(HMImmutableSetting *)&v15 isEqual:v6]))
    {
      v7 = [(HMStringListSetting *)self stringListValue];
      v8 = [v7 count];
      v9 = [(HMStringListSetting *)v6 stringListValue];
      if (v8 == [v9 count])
      {
        v10 = [(HMStringListSetting *)self stringListValue];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __31__HMStringListSetting_isEqual___block_invoke;
        v13[3] = &unk_1E7548550;
        v14 = v6;
        v11 = [v10 na_allObjectsPassTest:v13];
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
  v3 = [(HMImmutableSetting *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMStringListSetting *)self stringListValue];
  v6 = [v4 initWithName:@"stringListValue" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)payloadCopy
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HMStringListSetting;
  v3 = [(HMImmutableSetting *)&v10 payloadCopy];
  v4 = [v3 mutableCopy];

  v11[0] = @"HMImmutableSettingTypePayloadKey";
  v11[1] = @"HMImmutableSettingValuePayloadKey";
  v12[0] = &unk_1F0EFCC08;
  v5 = [(HMStringListSetting *)self stringListValue];
  v12[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v4 addEntriesFromDictionary:v6];

  v7 = [v4 copy];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end