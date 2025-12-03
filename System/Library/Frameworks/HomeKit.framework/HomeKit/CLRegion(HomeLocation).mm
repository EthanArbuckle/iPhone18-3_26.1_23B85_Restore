@interface CLRegion(HomeLocation)
- (id)hm_description;
@end

@implementation CLRegion(HomeLocation)

- (id)hm_description
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = selfCopy;
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
  [selfCopy notifyOnEntry];
  v8 = HMFBooleanToString();
  [selfCopy notifyOnExit];
  v9 = HMFBooleanToString();
  referenceFrame = [selfCopy referenceFrame];
  if (referenceFrame >= 3)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown reference frame: %ld", referenceFrame];
  }

  else
  {
    v11 = off_1E754CA78[referenceFrame];
  }

  v12 = [v7 stringWithFormat:@"%@-(notifyOnEntry:%@)-(notifyOnExit:%@)-(Ref:%@)-%@", selfCopy, v8, v9, v11, v6];

  return v12;
}

@end