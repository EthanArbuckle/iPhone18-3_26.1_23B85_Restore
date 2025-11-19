@interface CLRegion(HomeLocation)
- (id)hm_description;
@end

@implementation CLRegion(HomeLocation)

- (id)hm_description
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    [v3 radius];
    v6 = [v4 stringWithFormat:@"(Radius:%f)", v5];
  }

  else
  {
    v6 = &stru_1F0E92498;
  }

  v7 = MEMORY[0x1E696AEC0];
  [v1 notifyOnEntry];
  v8 = HMFBooleanToString();
  [v1 notifyOnExit];
  v9 = HMFBooleanToString();
  v10 = [v1 referenceFrame];
  if (v10 >= 3)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown reference frame: %ld", v10];
  }

  else
  {
    v11 = off_1E754CA78[v10];
  }

  v12 = [v7 stringWithFormat:@"%@-(notifyOnEntry:%@)-(notifyOnExit:%@)-(Ref:%@)-%@", v1, v8, v9, v11, v6];

  return v12;
}

@end