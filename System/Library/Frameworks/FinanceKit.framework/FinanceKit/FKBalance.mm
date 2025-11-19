@interface FKBalance
- (BOOL)isEqual:(id)a3;
- (FKBalance)initWithUUID:(id)a3 availableBalance:(id)a4 bookedBalance:(id)a5 lastUpdatedAt:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKBalance

- (FKBalance)initWithUUID:(id)a3 availableBalance:(id)a4 bookedBalance:(id)a5 lastUpdatedAt:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = FKBalance;
  v14 = [(FKBalance *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v17 = [v11 copy];
    availableBalance = v14->_availableBalance;
    v14->_availableBalance = v17;

    v19 = [v12 copy];
    bookedBalance = v14->_bookedBalance;
    v14->_bookedBalance = v19;

    v21 = [v13 copy];
    lastUpdatedAt = v14->_lastUpdatedAt;
    v14->_lastUpdatedAt = v21;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(FKBalance);
  v6 = [(NSUUID *)self->_uuid copyWithZone:a3];
  uuid = v5->_uuid;
  v5->_uuid = v6;

  v8 = [(FKBalanceCalculation *)self->_availableBalance copyWithZone:a3];
  availableBalance = v5->_availableBalance;
  v5->_availableBalance = v8;

  v10 = [(FKBalanceCalculation *)self->_bookedBalance copyWithZone:a3];
  bookedBalance = v5->_bookedBalance;
  v5->_bookedBalance = v10;

  v12 = [(NSDate *)self->_lastUpdatedAt copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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