@interface CNUIContactPolicyValidator
@end

@implementation CNUIContactPolicyValidator

id __76__CNUIContactPolicyValidator_contactFromContact_conformingToPolicy_options___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v32 = [MEMORY[0x1E696AD60] string];
  v9 = [v6 key];
  v10 = CNUILocalizedStringForPropertyWithFormatKey(@"LOWERCASE_LABEL", v9);

  v31 = v6;
  if ([v6 isMultiValue])
  {
    v29 = v7;
    v11 = v7;
    if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@:", v10];
      [v32 appendString:v12];
    }

    v28 = v10;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v11;
    v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          v18 = [v31 key];
          v19 = [CNCardPropertyGroup groupForProperty:v18 contact:v8 store:0 policy:0 linkedPolicies:0];

          v20 = [CNPropertyGroupItem propertyGroupItemWithLabeledValue:v17 group:v19 contact:v8];
          v21 = MEMORY[0x1E696AEC0];
          v22 = [v20 displayLabel];
          v23 = [v20 displayValue];
          v24 = [v21 stringWithFormat:@"\n%@: %@", v22, v23];

          [v32 appendString:v24];
        }

        v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v14);
    }

    v10 = v28;
    v7 = v29;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v7;
      if ((*(*MEMORY[0x1E6996570] + 16))())
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@: %@", v10, v25];
        [v32 appendString:v26];
      }
    }
  }

  return v32;
}

@end