@interface BLSHDisableFlipbookPowerSavingAttribute
+ (id)disablePowerSavingForReason:(unint64_t)reason;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLSHDisableFlipbookPowerSavingAttribute

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:self->_reason withName:@"reasonCode"];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendUnsignedInteger:self->_reason];
  v5 = [builder hash];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      reason = self->_reason;
      v6 = reason == [(BLSHDisableFlipbookPowerSavingAttribute *)equalCopy reason];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)disablePowerSavingForReason:(unint64_t)reason
{
  v4 = [self alloc];
  if (v4)
  {
    v6.receiver = v4;
    v6.super_class = BLSHDisableFlipbookPowerSavingAttribute;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    if (v4)
    {
      v4[1] = reason;
    }
  }

  return v4;
}

@end