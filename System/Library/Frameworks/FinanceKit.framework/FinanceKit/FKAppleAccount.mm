@interface FKAppleAccount
- (BOOL)isEqual:(id)a3;
- (FKAppleAccount)initWithAccountIdentifier:(id)a3 currentBalance:(id)a4 totalBalance:(id)a5 currency:(id)a6 status:(unint64_t)a7 type:(unint64_t)a8 creditLimit:(id)a9 minimumDueAmount:(id)a10 nextPaymentDueDate:(id)a11 lastUpdated:(id)a12 displayName:(id)a13 openingDate:(id)a14 overduePaymentAmount:(id)a15;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation FKAppleAccount

- (FKAppleAccount)initWithAccountIdentifier:(id)a3 currentBalance:(id)a4 totalBalance:(id)a5 currency:(id)a6 status:(unint64_t)a7 type:(unint64_t)a8 creditLimit:(id)a9 minimumDueAmount:(id)a10 nextPaymentDueDate:(id)a11 lastUpdated:(id)a12 displayName:(id)a13 openingDate:(id)a14 overduePaymentAmount:(id)a15
{
  v18 = a3;
  v19 = a4;
  v55 = a5;
  v54 = a6;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  v56.receiver = self;
  v56.super_class = FKAppleAccount;
  v27 = [(FKAppleAccount *)&v56 init];
  if (v27)
  {
    v28 = [v18 copy];
    accountIdentifier = v27->_accountIdentifier;
    v27->_accountIdentifier = v28;

    v30 = [v19 copy];
    currentBalance = v27->_currentBalance;
    v27->_currentBalance = v30;

    v32 = [v55 copy];
    totalBalance = v27->_totalBalance;
    v27->_totalBalance = v32;

    v34 = [v54 copy];
    currency = v27->_currency;
    v27->_currency = v34;

    v36 = [v24 copy];
    displayName = v27->_displayName;
    v27->_displayName = v36;

    v27->_status = a7;
    v27->_type = a8;
    v38 = [v20 copy];
    creditLimit = v27->_creditLimit;
    v27->_creditLimit = v38;

    v40 = [v21 copy];
    minimumDueAmount = v27->_minimumDueAmount;
    v27->_minimumDueAmount = v40;

    v42 = [v22 copy];
    nextPaymentDueDate = v27->_nextPaymentDueDate;
    v27->_nextPaymentDueDate = v42;

    v44 = [v23 copy];
    lastUpdated = v27->_lastUpdated;
    v27->_lastUpdated = v44;

    v46 = [v25 copy];
    openingDate = v27->_openingDate;
    v27->_openingDate = v46;

    v48 = [v26 copy];
    overduePaymentAmount = v27->_overduePaymentAmount;
    v27->_overduePaymentAmount = v48;
  }

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_displayName copyWithZone:a3];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(NSDecimalNumber *)self->_currentBalance copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSDecimalNumber *)self->_totalBalance copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_currency copyWithZone:a3];
  v15 = v5[4];
  v5[4] = v14;

  v5[5] = self->_status;
  v16 = [(NSDecimalNumber *)self->_minimumDueAmount copyWithZone:a3];
  v17 = v5[9];
  v5[9] = v16;

  v18 = [(NSDecimalNumber *)self->_creditLimit copyWithZone:a3];
  v19 = v5[8];
  v5[8] = v18;

  v20 = [(NSDate *)self->_nextPaymentDueDate copyWithZone:a3];
  v21 = v5[10];
  v5[10] = v20;

  v22 = [(NSDate *)self->_lastUpdated copyWithZone:a3];
  v23 = v5[11];
  v5[11] = v22;

  v24 = [(NSDate *)self->_openingDate copyWithZone:a3];
  v25 = v5[12];
  v5[12] = v24;

  v26 = [(NSDecimalNumber *)self->_overduePaymentAmount copyWithZone:a3];
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