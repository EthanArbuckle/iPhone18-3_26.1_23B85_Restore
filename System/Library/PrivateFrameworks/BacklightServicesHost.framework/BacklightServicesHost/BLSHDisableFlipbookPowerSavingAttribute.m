@interface BLSHDisableFlipbookPowerSavingAttribute
+ (id)disablePowerSavingForReason:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLSHDisableFlipbookPowerSavingAttribute

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:self->_reason withName:@"reasonCode"];
  v5 = [v3 build];

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendUnsignedInteger:self->_reason];
  v5 = [v3 hash];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      reason = self->_reason;
      v6 = reason == [(BLSHDisableFlipbookPowerSavingAttribute *)v4 reason];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)disablePowerSavingForReason:(unint64_t)a3
{
  v4 = [a1 alloc];
  if (v4)
  {
    v6.receiver = v4;
    v6.super_class = BLSHDisableFlipbookPowerSavingAttribute;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    if (v4)
    {
      v4[1] = a3;
    }
  }

  return v4;
}

@end