@interface FKAccount
- (BOOL)isEqual:(id)equal;
- (FKAccount)initWithIdentifier:(id)identifier fullyQualifiedAccountIdentifier:(id)accountIdentifier accountType:(unint64_t)type displayName:(id)name displayAccountNumberValue:(id)value balance:(id)balance creditLimit:(id)limit minimumPaymentAmount:(id)self0 nextPaymentDate:(id)self1 overduePaymentAmount:(id)self2 actions:(id)self3 isAccountEnabled:(BOOL)self4 isAccountMismatched:(BOOL)self5 consentUUID:(id)self6 accountRefreshFailure:(unint64_t)self7 transactionsRefreshFailure:(unint64_t)self8 loadingStatus:(unint64_t)self9 userSuppressedNotifications:(BOOL)notifications;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKAccount

- (FKAccount)initWithIdentifier:(id)identifier fullyQualifiedAccountIdentifier:(id)accountIdentifier accountType:(unint64_t)type displayName:(id)name displayAccountNumberValue:(id)value balance:(id)balance creditLimit:(id)limit minimumPaymentAmount:(id)self0 nextPaymentDate:(id)self1 overduePaymentAmount:(id)self2 actions:(id)self3 isAccountEnabled:(BOOL)self4 isAccountMismatched:(BOOL)self5 consentUUID:(id)self6 accountRefreshFailure:(unint64_t)self7 transactionsRefreshFailure:(unint64_t)self8 loadingStatus:(unint64_t)self9 userSuppressedNotifications:(BOOL)notifications
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  nameCopy = name;
  valueCopy = value;
  balanceCopy = balance;
  limitCopy = limit;
  amountCopy = amount;
  dateCopy = date;
  paymentAmountCopy = paymentAmount;
  actionsCopy = actions;
  dCopy = d;
  v61.receiver = self;
  v61.super_class = FKAccount;
  v33 = [(FKAccount *)&v61 init];
  if (v33)
  {
    v34 = [identifierCopy copy];
    identifier = v33->_identifier;
    v33->_identifier = v34;

    v36 = [accountIdentifierCopy copy];
    fullyQualifiedAccountIdentifier = v33->_fullyQualifiedAccountIdentifier;
    v33->_fullyQualifiedAccountIdentifier = v36;

    v33->_accountType = type;
    v38 = [nameCopy copy];
    displayName = v33->_displayName;
    v33->_displayName = v38;

    v40 = [valueCopy copy];
    displayAccountNumberValue = v33->_displayAccountNumberValue;
    v33->_displayAccountNumberValue = v40;

    v42 = [balanceCopy copy];
    balance = v33->_balance;
    v33->_balance = v42;

    v44 = [limitCopy copy];
    creditLimit = v33->_creditLimit;
    v33->_creditLimit = v44;

    v46 = [amountCopy copy];
    minimumPaymentAmount = v33->_minimumPaymentAmount;
    v33->_minimumPaymentAmount = v46;

    v48 = [dateCopy copy];
    nextPaymentDate = v33->_nextPaymentDate;
    v33->_nextPaymentDate = v48;

    v50 = [paymentAmountCopy copy];
    overduePaymentAmount = v33->_overduePaymentAmount;
    v33->_overduePaymentAmount = v50;

    v52 = [actionsCopy copy];
    actions = v33->_actions;
    v33->_actions = v52;

    v33->_isAccountEnabled = enabled;
    v33->_isAccountMismatched = mismatched;
    v54 = [dCopy copy];
    consentUUID = v33->_consentUUID;
    v33->_consentUUID = v54;

    v33->_accountRefreshFailure = failure;
    v33->_transactionsRefreshFailure = refreshFailure;
    v33->_loadingStatus = status;
    v33->_userSuppressedNotifications = notifications;
  }

  return v33;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(FKAccount);
  v6 = [(NSUUID *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(FKFullyQualifiedAccountIdentifier *)self->_fullyQualifiedAccountIdentifier copyWithZone:zone];
  fullyQualifiedAccountIdentifier = v5->_fullyQualifiedAccountIdentifier;
  v5->_fullyQualifiedAccountIdentifier = v8;

  v5->_accountType = self->_accountType;
  v10 = [(NSString *)self->_displayName copyWithZone:zone];
  displayName = v5->_displayName;
  v5->_displayName = v10;

  v12 = [(NSString *)self->_displayAccountNumberValue copyWithZone:zone];
  displayAccountNumberValue = v5->_displayAccountNumberValue;
  v5->_displayAccountNumberValue = v12;

  v14 = [(FKBalance *)self->_balance copyWithZone:zone];
  balance = v5->_balance;
  v5->_balance = v14;

  v16 = [(FKAmount *)self->_creditLimit copyWithZone:zone];
  creditLimit = v5->_creditLimit;
  v5->_creditLimit = v16;

  v18 = [(FKAmount *)self->_minimumPaymentAmount copyWithZone:zone];
  minimumPaymentAmount = v5->_minimumPaymentAmount;
  v5->_minimumPaymentAmount = v18;

  v20 = [(NSDate *)self->_nextPaymentDate copyWithZone:zone];
  nextPaymentDate = v5->_nextPaymentDate;
  v5->_nextPaymentDate = v20;

  v22 = [(FKAmount *)self->_overduePaymentAmount copyWithZone:zone];
  overduePaymentAmount = v5->_overduePaymentAmount;
  v5->_overduePaymentAmount = v22;

  v24 = [(FKActions *)self->_actions copyWithZone:zone];
  actions = v5->_actions;
  v5->_actions = v24;

  v5->_isAccountEnabled = self->_isAccountEnabled;
  v5->_isAccountMismatched = self->_isAccountMismatched;
  v26 = [(NSUUID *)self->_consentUUID copyWithZone:zone];
  consentUUID = v5->_consentUUID;
  v5->_consentUUID = v26;

  v5->_accountRefreshFailure = self->_accountRefreshFailure;
  v5->_transactionsRefreshFailure = self->_transactionsRefreshFailure;
  v5->_loadingStatus = self->_loadingStatus;
  v5->_userSuppressedNotifications = self->_userSuppressedNotifications;
  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_fullyQualifiedAccountIdentifier];
  [v3 safelyAddObject:self->_displayName];
  [v3 safelyAddObject:self->_displayAccountNumberValue];
  [v3 safelyAddObject:self->_balance];
  [v3 safelyAddObject:self->_creditLimit];
  [v3 safelyAddObject:self->_minimumPaymentAmount];
  [v3 safelyAddObject:self->_nextPaymentDate];
  [v3 safelyAddObject:self->_overduePaymentAmount];
  [v3 safelyAddObject:self->_actions];
  [v3 safelyAddObject:self->_consentUUID];
  v4 = FKCombinedHash(17, v3);
  v5 = FKIntegerHash(v4, self->_accountType);
  v6 = FKIntegerHash(v5, self->_isAccountEnabled);
  v7 = FKIntegerHash(v6, self->_isAccountMismatched);
  v8 = FKIntegerHash(v7, self->_accountRefreshFailure);
  v9 = FKIntegerHash(v8, self->_transactionsRefreshFailure);
  v10 = FKIntegerHash(v9, self->_loadingStatus);
  v11 = FKIntegerHash(v10, self->_userSuppressedNotifications);

  return v11;
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
    v7 = FKEqualObjects(self->_identifier, v6[2]) && FKEqualObjects(self->_fullyQualifiedAccountIdentifier, v6[3]) && self->_accountType == v6[4] && FKEqualObjects(self->_displayName, v6[5]) && FKEqualObjects(self->_displayAccountNumberValue, v6[6]) && FKEqualObjects(self->_balance, v6[7]) && FKEqualObjects(self->_creditLimit, v6[8]) && FKEqualObjects(self->_minimumPaymentAmount, v6[9]) && FKEqualObjects(self->_nextPaymentDate, v6[10]) && FKEqualObjects(self->_overduePaymentAmount, v6[11]) && FKEqualObjects(self->_actions, v6[12]) && FKEqualObjects(self->_consentUUID, v6[13]) && self->_isAccountEnabled == *(v6 + 8) && self->_isAccountMismatched == *(v6 + 9) && self->_accountRefreshFailure == v6[14] && self->_transactionsRefreshFailure == v6[15] && self->_loadingStatus == v6[16] && self->_userSuppressedNotifications == *(v6 + 10);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end