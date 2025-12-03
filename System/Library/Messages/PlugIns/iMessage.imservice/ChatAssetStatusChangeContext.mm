@interface ChatAssetStatusChangeContext
- (int64_t)resolvedGroupActionType;
@end

@implementation ChatAssetStatusChangeContext

- (int64_t)resolvedGroupActionType
{
  isHidden = [(ChatAssetStatusChangeContext *)self isHidden];
  type = [(ChatAssetStatusChangeContext *)self type];
  if (isHidden)
  {
    if (type)
    {
      return 7;
    }

    else
    {
      return 3;
    }
  }

  else if (type == 1)
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