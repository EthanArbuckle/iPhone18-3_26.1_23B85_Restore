@interface AAUIDataclassOptionCache
@end

@implementation AAUIDataclassOptionCache

uint64_t __48___AAUIDataclassOptionCache_filteredDataclasses__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = a2;
  v7 = [v4 bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:v6 value:&stru_1F447F790 table:@"Localizable"];

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:v5 value:&stru_1F447F790 table:@"Localizable"];

  v11 = [v8 localizedCaseInsensitiveCompare:v10];
  return v11;
}

@end