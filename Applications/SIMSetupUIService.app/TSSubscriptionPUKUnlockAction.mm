@interface TSSubscriptionPUKUnlockAction
- (id)copyByApplyingPIN1:(id)a3;
- (id)copyByApplyingPUK:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)actionSubtype;
@end

@implementation TSSubscriptionPUKUnlockAction

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = TSSubscriptionPUKUnlockAction;
  v5 = [(TSSubscriptionAction *)&v11 copyWithZone:?];
  v6 = [(NSString *)self->_puk copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_pin1 copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  return v5;
}

- (id)copyByApplyingPUK:(id)a3
{
  v4 = a3;
  v5 = [(TSSubscriptionPUKUnlockAction *)self copy];
  v6 = [v4 copy];

  v7 = v5[3];
  v5[3] = v6;

  return v5;
}

- (id)copyByApplyingPIN1:(id)a3
{
  v4 = a3;
  v5 = [(TSSubscriptionPUKUnlockAction *)self copy];
  v6 = [v4 copy];

  v7 = v5[4];
  v5[4] = v6;

  return v5;
}

- (int64_t)actionSubtype
{
  v3 = [(TSSubscriptionPUKUnlockAction *)self pin1];
  v4 = [v3 length];

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