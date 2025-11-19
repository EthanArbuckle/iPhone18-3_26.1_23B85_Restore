@interface HMExecuteRequest
+ (id)executeRequestWithActionSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMExecuteRequest)initWithActionSet:(id)a3;
- (unint64_t)hash;
@end

@implementation HMExecuteRequest

- (unint64_t)hash
{
  v2 = [(HMExecuteRequest *)self actionSet];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMExecuteRequest *)self actionSet];
      v8 = [(HMExecuteRequest *)v6 actionSet];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HMExecuteRequest)initWithActionSet:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMExecuteRequest;
  v6 = [(HMRequestBase *)&v9 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

+ (id)executeRequestWithActionSet:(id)a3
{
  v3 = a3;
  v4 = [[HMExecuteRequest alloc] initWithActionSet:v3];

  return v4;
}

@end