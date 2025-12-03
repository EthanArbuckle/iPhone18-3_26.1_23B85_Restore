@interface HNDRepostedButtonEventInfo
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation HNDRepostedButtonEventInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    timestamp = [(HNDRepostedButtonEventInfo *)self timestamp];
    if (timestamp == [v5 timestamp])
    {
      buttonMask = [(HNDRepostedButtonEventInfo *)self buttonMask];
      v8 = buttonMask == [v5 buttonMask];
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