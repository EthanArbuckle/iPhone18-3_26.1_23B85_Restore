@interface HMExecuteRequest
+ (id)executeRequestWithActionSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (HMExecuteRequest)initWithActionSet:(id)set;
- (unint64_t)hash;
@end

@implementation HMExecuteRequest

- (unint64_t)hash
{
  actionSet = [(HMExecuteRequest *)self actionSet];
  v3 = [actionSet hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      actionSet = [(HMExecuteRequest *)self actionSet];
      actionSet2 = [(HMExecuteRequest *)v6 actionSet];
      v9 = [actionSet isEqual:actionSet2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMExecuteRequest)initWithActionSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = HMExecuteRequest;
  _init = [(HMRequestBase *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, set);
  }

  return v7;
}

+ (id)executeRequestWithActionSet:(id)set
{
  setCopy = set;
  v4 = [[HMExecuteRequest alloc] initWithActionSet:setCopy];

  return v4;
}

@end