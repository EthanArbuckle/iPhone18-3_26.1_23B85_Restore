@interface TSSubscriptionPUKUnlockAction
- (id)copyByApplyingPIN1:(id)n1;
- (id)copyByApplyingPUK:(id)k;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)actionSubtype;
@end

@implementation TSSubscriptionPUKUnlockAction

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TSSubscriptionPUKUnlockAction;
  v5 = [(TSSubscriptionAction *)&v11 copyWithZone:?];
  v6 = [(NSString *)self->_puk copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_pin1 copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  return v5;
}

- (id)copyByApplyingPUK:(id)k
{
  kCopy = k;
  v5 = [(TSSubscriptionPUKUnlockAction *)self copy];
  v6 = [kCopy copy];

  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

- (id)copyByApplyingPIN1:(id)n1
{
  n1Copy = n1;
  v5 = [(TSSubscriptionPUKUnlockAction *)self copy];
  v6 = [n1Copy copy];

  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

- (int64_t)actionSubtype
{
  pin1 = [(TSSubscriptionPUKUnlockAction *)self pin1];
  v4 = [pin1 length];

  if (v4)
  {
    return 3;
  }

  v6 = [(TSSubscriptionPUKUnlockAction *)self puk];
  v7 = [v6 length];

  if (v7)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end