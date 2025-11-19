@interface NSError
@end

@implementation NSError

uint64_t __50__NSError_FPAdditions__fp_initLocalizationStrings__block_invoke()
{
  [MEMORY[0x1E696ABC0] setUserInfoValueProviderForDomain:@"NSFileProviderErrorDomain" provider:&__block_literal_global_127];
  v0 = MEMORY[0x1E696ABC0];

  return [v0 setUserInfoValueProviderForDomain:@"NSFileProviderInternalErrorDomain" provider:&__block_literal_global_129];
}

void __40__NSError_FPAdditions__fp_strippedError__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 fp_strippedError];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
      }
    }
  }
}

uint64_t __59__NSError_FPAdditions__fp_annotatedErrorWithItems_variant___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 itemIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end