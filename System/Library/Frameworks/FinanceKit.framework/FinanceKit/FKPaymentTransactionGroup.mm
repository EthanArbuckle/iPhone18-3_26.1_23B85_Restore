@interface FKPaymentTransactionGroup
- (BOOL)isEqual:(id)equal;
- (FKPaymentTransactionGroup)initWithStartDate:(id)date endDate:(id)endDate transactionCount:(int64_t)count type:(unint64_t)type bankConnectSectionIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKPaymentTransactionGroup

- (FKPaymentTransactionGroup)initWithStartDate:(id)date endDate:(id)endDate transactionCount:(int64_t)count type:(unint64_t)type bankConnectSectionIdentifier:(id)identifier
{
  dateCopy = date;
  endDateCopy = endDate;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = FKPaymentTransactionGroup;
  v15 = [(FKPaymentTransactionGroup *)&v23 init];
  if (v15)
  {
    v16 = [dateCopy copy];
    startDate = v15->_startDate;
    v15->_startDate = v16;

    v18 = [endDateCopy copy];
    endDate = v15->_endDate;
    v15->_endDate = v18;

    v15->_transactionCount = count;
    v15->_type = type;
    v20 = [identifierCopy copy];
    bankConnectSectionIdentifier = v15->_bankConnectSectionIdentifier;
    v15->_bankConnectSectionIdentifier = v20;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(FKPaymentTransactionGroup);
  v6 = [(NSDate *)self->_startDate copyWithZone:zone];
  startDate = v5->_startDate;
  v5->_startDate = v6;

  v8 = [(NSDate *)self->_endDate copyWithZone:zone];
  endDate = v5->_endDate;
  v5->_endDate = v8;

  v10 = [(NSString *)self->_bankConnectSectionIdentifier copyWithZone:zone];
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
    v7 = FKEqualObjects(self->_startDate, v6[1]) && FKEqualObjects(self->_endDate, v6[2]) && FKEqualObjects(self->_bankConnectSectionIdentifier, v6[5]) && self->_transactionCount == v6[3] && self->_type == v6[4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end