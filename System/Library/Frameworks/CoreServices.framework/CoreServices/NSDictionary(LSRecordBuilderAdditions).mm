@interface NSDictionary(LSRecordBuilderAdditions)
- (uint64_t)_LS_BoolForKey:()LSRecordBuilderAdditions;
- (uint64_t)_LS_integerForKey:()LSRecordBuilderAdditions;
@end

@implementation NSDictionary(LSRecordBuilderAdditions)

- (uint64_t)_LS_BoolForKey:()LSRecordBuilderAdditions
{
  v1 = [self objectForKey:?];
  if (v1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)_LS_integerForKey:()LSRecordBuilderAdditions
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [self objectForKey:v4];

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

  integerValue = [v6 integerValue];

  return integerValue;
}

@end