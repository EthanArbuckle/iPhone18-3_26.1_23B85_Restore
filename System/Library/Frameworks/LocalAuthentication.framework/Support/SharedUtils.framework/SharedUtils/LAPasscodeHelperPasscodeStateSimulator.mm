@interface LAPasscodeHelperPasscodeStateSimulator
- (int64_t)passcodeType;
@end

@implementation LAPasscodeHelperPasscodeStateSimulator

- (int64_t)passcodeType
{
  v2 = __54__LAPasscodeHelperPasscodeStateSimulator_passcodeType__block_invoke(self, @"LA.simulator.passcodeType", &unk_1F5A79338);
  integerValue = [v2 integerValue];

  return integerValue;
}

id __54__LAPasscodeHelperPasscodeStateSimulator_passcodeType__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = *MEMORY[0x1E69AD150];
  if (os_variant_allows_internal_security_policies())
  {
    v7 = [MEMORY[0x1E696AE30] processInfo];
    v8 = [v7 environment];
    v9 = [v8 objectForKeyedSubscript:v4];

    if (!v9)
    {
      goto LABEL_4;
    }

    v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v11 = [MEMORY[0x1E696AE30] processInfo];
    v12 = [v11 environment];
    v13 = [v12 objectForKeyedSubscript:v4];
    v14 = [v10 numberFromString:v13];

    if (!v14)
    {
LABEL_4:
      v15 = [MEMORY[0x1E695E000] standardUserDefaults];
      v16 = [v15 persistentDomainForName:*MEMORY[0x1E696A400]];

      v17 = [v16 objectForKeyedSubscript:v4];
      if (v17 && (v18 = v17, [v16 objectForKeyedSubscript:v4], v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v19, v18, (isKindOfClass & 1) != 0))
      {
        v21 = [v16 objectForKeyedSubscript:v4];
      }

      else
      {
        v21 = v5;
      }

      v14 = v21;
    }
  }

  else
  {
    v14 = v5;
  }

  return v14;
}

@end