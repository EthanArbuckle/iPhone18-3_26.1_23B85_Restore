@interface HMDCoreDataTransformerHMDAccountHandle
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation HMDCoreDataTransformerHMDAccountHandle

- (id)reverseTransformedValue:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = +[HMDAccountHandleFormatter defaultFormatter];
    v7 = [v6 accountHandleFromString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)transformedValue:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[HMDAccountHandleFormatter defaultFormatter];
    v5 = [v4 stringForObjectValue:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end