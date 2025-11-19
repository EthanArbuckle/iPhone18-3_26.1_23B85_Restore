@interface ChatAssetStatusChangeContext
- (int64_t)resolvedGroupActionType;
@end

@implementation ChatAssetStatusChangeContext

- (int64_t)resolvedGroupActionType
{
  v3 = [(ChatAssetStatusChangeContext *)self isHidden];
  v4 = [(ChatAssetStatusChangeContext *)self type];
  if (v3)
  {
    if (v4)
    {
      return 7;
    }

    else
    {
      return 3;
    }
  }

  else if (v4 == 1)
  {
    if ([(ChatAssetStatusChangeContext *)self hasSensitiveContent])
    {
      return 5;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    return 1;
  }
}

@end