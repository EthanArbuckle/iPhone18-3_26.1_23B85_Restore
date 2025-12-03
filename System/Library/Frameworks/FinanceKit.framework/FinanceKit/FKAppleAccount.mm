@interface FKAppleAccount
- (BOOL)isEqual:(id)equal;
- (FKAppleAccount)initWithAccountIdentifier:(id)identifier currentBalance:(id)balance totalBalance:(id)totalBalance currency:(id)currency status:(unint64_t)status type:(unint64_t)type creditLimit:(id)limit minimumDueAmount:(id)self0 nextPaymentDueDate:(id)self1 lastUpdated:(id)self2 displayName:(id)self3 openingDate:(id)self4 overduePaymentAmount:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation FKAppleAccount

- (FKAppleAccount)initWithAccountIdentifier:(id)identifier currentBalance:(id)balance totalBalance:(id)totalBalance currency:(id)currency status:(unint64_t)status type:(unint64_t)type creditLimit:(id)limit minimumDueAmount:(id)self0 nextPaymentDueDate:(id)self1 lastUpdated:(id)self2 displayName:(id)self3 openingDate:(id)self4 overduePaymentAmount:(id)self5
{
  identifierCopy = identifier;
  balanceCopy = balance;
  totalBalanceCopy = totalBalance;
  currencyCopy = currency;
  limitCopy = limit;
  amountCopy = amount;
  dateCopy = date;
  updatedCopy = updated;
  nameCopy = name;
  openingDateCopy = openingDate;
  paymentAmountCopy = paymentAmount;
  v56.receiver = self;
  v56.super_class = FKAppleAccount;
  v27 = [(FKAppleAccount *)&v56 init];
  if (v27)
  {
    v28 = [identifierCopy copy];
    accountIdentifier = v27->_accountIdentifier;
    v27->_accountIdentifier = v28;

    v30 = [balanceCopy copy];
    currentBalance = v27->_currentBalance;
    v27->_currentBalance = v30;

    v32 = [totalBalanceCopy copy];
    totalBalance = v27->_totalBalance;
    v27->_totalBalance = v32;

    v34 = [currencyCopy copy];
    currency = v27->_currency;
    v27->_currency = v34;

    v36 = [nameCopy copy];
    displayName = v27->_displayName;
    v27->_displayName = v36;

    v27->_status = status;
    v27->_type = type;
    v38 = [limitCopy copy];
    creditLimit = v27->_creditLimit;
    v27->_creditLimit = v38;

    v40 = [amountCopy copy];
    minimumDueAmount = v27->_minimumDueAmount;
    v27->_minimumDueAmount = v40;

    v42 = [dateCopy copy];
    nextPaymentDueDate = v27->_nextPaymentDueDate;
    v27->_nextPaymentDueDate = v42;

    v44 = [updatedCopy copy];
    lastUpdated = v27->_lastUpdated;
    v27->_lastUpdated = v44;

    v46 = [openingDateCopy copy];
    openingDate = v27->_openingDate;
    v27->_openingDate = v46;

    v48 = [paymentAmountCopy copy];
    overduePaymentAmount = v27->_overduePaymentAmount;
    v27->_overduePaymentAmount = v48;
  }

  return v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:zone];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(NSDecimalNumber *)self->_currentBalance copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSDecimalNumber *)self->_totalBalance copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_currency copyWithZone:zone];
  v15 = v5[4];
  v5[4] = v14;

  v5[5] = self->_status;
  v16 = [(NSDecimalNumber *)self->_minimumDueAmount copyWithZone:zone];
  v17 = v5[9];
  v5[9] = v16;

  v18 = [(NSDecimalNumber *)self->_creditLimit copyWithZone:zone];
  v19 = v5[8];
  v5[8] = v18;

  v20 = [(NSDate *)self->_nextPaymentDueDate copyWithZone:zone];
  v21 = v5[10];
  v5[10] = v20;

  v22 = [(NSDate *)self->_lastUpdated copyWithZone:zone];
  v23 = v5[11];
  v5[11] = v22;

  v24 = [(NSDate *)self->_openingDate copyWithZone:zone];
  v25 = v5[12];
  v5[12] = v24;

  v26 = [(NSDecimalNumber *)self->_overduePaymentAmount copyWithZone:zone];
  v27 = v5[13];
  v5[13] = v26;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_accountIdentifier];
  [v3 safelyAddObject:self->_displayName];
  [v3 safelyAddObject:self->_currentBalance];
  [v3 safelyAddObject:self->_totalBalance];
  [v3 safelyAddObject:self->_currency];
  [v3 safelyAddObject:self->_minimumDueAmount];
  [v3 safelyAddObject:self->_creditLimit];
  [v3 safelyAddObject:self->_nextPaymentDueDate];
  [v3 safelyAddObject:self->_lastUpdated];
  [v3 safelyAddObject:self->_openingDate];
  [v3 safelyAddObject:self->_overduePaymentAmount];
  v4 = FKCombinedHash(17, v3);
  v5 = FKIntegerHash(v4, self->_status);

  return v5;
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
    v7 = FKEqualObjects(self->_accountIdentifier, v6[1]) && FKEqualObjects(self->_displayName, v6[7]) && FKEqualObjects(self->_minimumDueAmount, v6[9]) && FKEqualObjects(self->_currentBalance, v6[2]) && FKEqualObjects(self->_totalBalance, v6[3]) && FKEqualObjects(self->_currency, v6[4]) && FKEqualObjects(self->_creditLimit, v6[8]) && FKEqualObjects(self->_nextPaymentDueDate, v6[10]) && FKEqualObjects(self->_lastUpdated, v6[11]) && FKEqualObjects(self->_openingDate, v6[12]) && FKEqualObjects(self->_overduePaymentAmount, v6[13]) && self->_status == v6[5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"accountIdentifier: '%@'; ", self->_accountIdentifier];
  [v3 appendFormat:@"displayName: '%@'; ", self->_displayName];
  [v3 appendFormat:@"minimumDueAmount: '%@'; ", self->_minimumDueAmount];
  [v3 appendFormat:@"currentBalance: '%@'; ", self->_currentBalance];
  [v3 appendFormat:@"totalBalance: '%@'; ", self->_totalBalance];
  [v3 appendFormat:@"currency: '%@'; ", self->_currency];
  [v3 appendFormat:@"creditLimit: '%@'; ", self->_creditLimit];
  [v3 appendFormat:@"nextPaymentDueDate: '%@'; ", self->_nextPaymentDueDate];
  [v3 appendFormat:@"status: '%ld'; ", self->_status];
  [v3 appendFormat:@"lastUpdated: '%@'; ", self->_lastUpdated];
  [v3 appendFormat:@"openingDate: '%@'; ", self->_openingDate];
  [v3 appendFormat:@"overduePaymentAmount: '%@'; ", self->_overduePaymentAmount];
  [v3 appendFormat:@">"];

  return v3;
}

@end