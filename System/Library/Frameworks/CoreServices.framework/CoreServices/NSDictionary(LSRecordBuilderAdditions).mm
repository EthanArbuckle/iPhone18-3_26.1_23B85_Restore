@interface NSDictionary(LSRecordBuilderAdditions)
- (uint64_t)_LS_BoolForKey:()LSRecordBuilderAdditions;
- (uint64_t)_LS_integerForKey:()LSRecordBuilderAdditions;
@end

@implementation NSDictionary(LSRecordBuilderAdditions)

- (uint64_t)_LS_BoolForKey:()LSRecordBuilderAdditions
{
  v1 = [a1 objectForKey:?];
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_LS_integerForKey:()LSRecordBuilderAdditions
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [a1 objectForKey:v4];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  v8 = [v6 integerValue];

  return v8;
}

@end