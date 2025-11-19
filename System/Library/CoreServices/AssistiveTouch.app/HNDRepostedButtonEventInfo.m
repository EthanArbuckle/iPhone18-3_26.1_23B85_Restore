@interface HNDRepostedButtonEventInfo
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation HNDRepostedButtonEventInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(HNDRepostedButtonEventInfo *)self timestamp];
    if (v6 == [v5 timestamp])
    {
      v7 = [(HNDRepostedButtonEventInfo *)self buttonMask];
      v8 = v7 == [v5 buttonMask];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = HNDRepostedButtonEventInfo;
  v3 = [(HNDRepostedButtonEventInfo *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" - timestamp: %llu, buttonMask: %u", -[HNDRepostedButtonEventInfo timestamp](self, "timestamp"), -[HNDRepostedButtonEventInfo buttonMask](self, "buttonMask")];

  return v4;
}

@end