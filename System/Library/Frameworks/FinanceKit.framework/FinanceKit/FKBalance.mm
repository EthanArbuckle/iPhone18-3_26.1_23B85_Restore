@interface FKBalance
- (BOOL)isEqual:(id)equal;
- (FKBalance)initWithUUID:(id)d availableBalance:(id)balance bookedBalance:(id)bookedBalance lastUpdatedAt:(id)at;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKBalance

- (FKBalance)initWithUUID:(id)d availableBalance:(id)balance bookedBalance:(id)bookedBalance lastUpdatedAt:(id)at
{
  dCopy = d;
  balanceCopy = balance;
  bookedBalanceCopy = bookedBalance;
  atCopy = at;
  v24.receiver = self;
  v24.super_class = FKBalance;
  v14 = [(FKBalance *)&v24 init];
  if (v14)
  {
    v15 = [dCopy copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v17 = [balanceCopy copy];
    availableBalance = v14->_availableBalance;
    v14->_availableBalance = v17;

    v19 = [bookedBalanceCopy copy];
    bookedBalance = v14->_bookedBalance;
    v14->_bookedBalance = v19;

    v21 = [atCopy copy];
    lastUpdatedAt = v14->_lastUpdatedAt;
    v14->_lastUpdatedAt = v21;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(FKBalance);
  v6 = [(NSUUID *)self->_uuid copyWithZone:zone];
  uuid = v5->_uuid;
  v5->_uuid = v6;

  v8 = [(FKBalanceCalculation *)self->_availableBalance copyWithZone:zone];
  availableBalance = v5->_availableBalance;
  v5->_availableBalance = v8;

  v10 = [(FKBalanceCalculation *)self->_bookedBalance copyWithZone:zone];
  bookedBalance = v5->_bookedBalance;
  v5->_bookedBalance = v10;

  v12 = [(NSDate *)self->_lastUpdatedAt copyWithZone:zone];
  lastUpdatedAt = v5->_lastUpdatedAt;
  v5->_lastUpdatedAt = v12;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_uuid];
  [v3 safelyAddObject:self->_availableBalance];
  [v3 safelyAddObject:self->_bookedBalance];
  [v3 safelyAddObject:self->_lastUpdatedAt];
  v4 = FKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (FKEqualObjects(self->_uuid, v6[1]) && FKEqualObjects(self->_availableBalance, v6[2]) && FKEqualObjects(self->_bookedBalance, v6[3]))
    {
      v7 = FKEqualObjects(self->_lastUpdatedAt, v6[4]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end