@interface FKPaymentTransactionGroup
- (BOOL)isEqual:(id)a3;
- (FKPaymentTransactionGroup)initWithStartDate:(id)a3 endDate:(id)a4 transactionCount:(int64_t)a5 type:(unint64_t)a6 bankConnectSectionIdentifier:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKPaymentTransactionGroup

- (FKPaymentTransactionGroup)initWithStartDate:(id)a3 endDate:(id)a4 transactionCount:(int64_t)a5 type:(unint64_t)a6 bankConnectSectionIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = FKPaymentTransactionGroup;
  v15 = [(FKPaymentTransactionGroup *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    startDate = v15->_startDate;
    v15->_startDate = v16;

    v18 = [v13 copy];
    endDate = v15->_endDate;
    v15->_endDate = v18;

    v15->_transactionCount = a5;
    v15->_type = a6;
    v20 = [v14 copy];
    bankConnectSectionIdentifier = v15->_bankConnectSectionIdentifier;
    v15->_bankConnectSectionIdentifier = v20;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(FKPaymentTransactionGroup);
  v6 = [(NSDate *)self->_startDate copyWithZone:a3];
  startDate = v5->_startDate;
  v5->_startDate = v6;

  v8 = [(NSDate *)self->_endDate copyWithZone:a3];
  endDate = v5->_endDate;
  v5->_endDate = v8;

  v10 = [(NSString *)self->_bankConnectSectionIdentifier copyWithZone:a3];
  bankConnectSectionIdentifier = v5->_bankConnectSectionIdentifier;
  v5->_bankConnectSectionIdentifier = v10;

  v5->_transactionCount = self->_transactionCount;
  v5->_type = self->_type;
  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_endDate];
  [v3 safelyAddObject:self->_bankConnectSectionIdentifier];
  v4 = FKCombinedHash(17, v3);
  v5 = FKIntegerHash(v4, self->_transactionCount);
  v6 = FKIntegerHash(v5, self->_type);

  return v6;
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
    v7 = FKEqualObjects(self->_startDate, v6[1]) && FKEqualObjects(self->_endDate, v6[2]) && FKEqualObjects(self->_bankConnectSectionIdentifier, v6[5]) && self->_transactionCount == v6[3] && self->_type == v6[4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end