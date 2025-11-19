@interface ARProbeFilter
+ (id)filter:(id)a3;
@end

@implementation ARProbeFilter

+ (id)filter:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_43];
  v5 = [v3 filteredArrayUsingPredicate:v4];

  return v5;
}

uint64_t __24__ARProbeFilter_filter___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end