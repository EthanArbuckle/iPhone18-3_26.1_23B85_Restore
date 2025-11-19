@interface FKAccount
- (BOOL)isEqual:(id)a3;
- (FKAccount)initWithIdentifier:(id)a3 fullyQualifiedAccountIdentifier:(id)a4 accountType:(unint64_t)a5 displayName:(id)a6 displayAccountNumberValue:(id)a7 balance:(id)a8 creditLimit:(id)a9 minimumPaymentAmount:(id)a10 nextPaymentDate:(id)a11 overduePaymentAmount:(id)a12 actions:(id)a13 isAccountEnabled:(BOOL)a14 isAccountMismatched:(BOOL)a15 consentUUID:(id)a16 accountRefreshFailure:(unint64_t)a17 transactionsRefreshFailure:(unint64_t)a18 loadingStatus:(unint64_t)a19 userSuppressedNotifications:(BOOL)a20;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKAccount

- (FKAccount)initWithIdentifier:(id)a3 fullyQualifiedAccountIdentifier:(id)a4 accountType:(unint64_t)a5 displayName:(id)a6 displayAccountNumberValue:(id)a7 balance:(id)a8 creditLimit:(id)a9 minimumPaymentAmount:(id)a10 nextPaymentDate:(id)a11 overduePaymentAmount:(id)a12 actions:(id)a13 isAccountEnabled:(BOOL)a14 isAccountMismatched:(BOOL)a15 consentUUID:(id)a16 accountRefreshFailure:(unint64_t)a17 transactionsRefreshFailure:(unint64_t)a18 loadingStatus:(unint64_t)a19 userSuppressedNotifications:(BOOL)a20
{
  v24 = a3;
  v25 = a4;
  v60 = a6;
  v59 = a7;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  v32 = a16;
  v61.receiver = self;
  v61.super_class = FKAccount;
  v33 = [(FKAccount *)&v61 init];
  if (v33)
  {
    v34 = [v24 copy];
    identifier = v33->_identifier;
    v33->_identifier = v34;

    v36 = [v25 copy];
    fullyQualifiedAccountIdentifier = v33->_fullyQualifiedAccountIdentifier;
    v33->_fullyQualifiedAccountIdentifier = v36;

    v33->_accountType = a5;
    v38 = [v60 copy];
    displayName = v33->_displayName;
    v33->_displayName = v38;

    v40 = [v59 copy];
    displayAccountNumberValue = v33->_displayAccountNumberValue;
    v33->_displayAccountNumberValue = v40;

    v42 = [v26 copy];
    balance = v33->_balance;
    v33->_balance = v42;

    v44 = [v27 copy];
    creditLimit = v33->_creditLimit;
    v33->_creditLimit = v44;

    v46 = [v28 copy];
    minimumPaymentAmount = v33->_minimumPaymentAmount;
    v33->_minimumPaymentAmount = v46;

    v48 = [v29 copy];
    nextPaymentDate = v33->_nextPaymentDate;
    v33->_nextPaymentDate = v48;

    v50 = [v30 copy];
    overduePaymentAmount = v33->_overduePaymentAmount;
    v33->_overduePaymentAmount = v50;

    v52 = [v31 copy];
    actions = v33->_actions;
    v33->_actions = v52;

    v33->_isAccountEnabled = a14;
    v33->_isAccountMismatched = a15;
    v54 = [v32 copy];
    consentUUID = v33->_consentUUID;
    v33->_consentUUID = v54;

    v33->_accountRefreshFailure = a17;
    v33->_transactionsRefreshFailure = a18;
    v33->_loadingStatus = a19;
    v33->_userSuppressedNotifications = a20;
  }

  return v33;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(FKAccount);
  v6 = [(NSUUID *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(FKFullyQualifiedAccountIdentifier *)self->_fullyQualifiedAccountIdentifier copyWithZone:a3];
  fullyQualifiedAccountIdentifier = v5->_fullyQualifiedAccountIdentifier;
  v5->_fullyQualifiedAccountIdentifier = v8;

  v5->_accountType = self->_accountType;
  v10 = [(NSString *)self->_displayName copyWithZone:a3];
  displayName = v5->_displayName;
  v5->_displayName = v10;

  v12 = [(NSString *)self->_displayAccountNumberValue copyWithZone:a3];
  displayAccountNumberValue = v5->_displayAccountNumberValue;
  v5->_displayAccountNumberValue = v12;

  v14 = [(FKBalance *)self->_balance copyWithZone:a3];
  balance = v5->_balance;
  v5->_balance = v14;

  v16 = [(FKAmount *)self->_creditLimit copyWithZone:a3];
  creditLimit = v5->_creditLimit;
  v5->_creditLimit = v16;

  v18 = [(FKAmount *)self->_minimumPaymentAmount copyWithZone:a3];
  minimumPaymentAmount = v5->_minimumPaymentAmount;
  v5->_minimumPaymentAmount = v18;

  v20 = [(NSDate *)self->_nextPaymentDate copyWithZone:a3];
  nextPaymentDate = v5->_nextPaymentDate;
  v5->_nextPaymentDate = v20;

  v22 = [(FKAmount *)self->_overduePaymentAmount copyWithZone:a3];
  overduePaymentAmount = v5->_overduePaymentAmount;
  v5->_overduePaymentAmount = v22;

  v24 = [(FKActions *)self->_actions copyWithZone:a3];
  actions = v5->_actions;
  v5->_actions = v24;

  v5->_isAccountEnabled = self->_isAccountEnabled;
  v5->_isAccountMismatched = self->_isAccountMismatched;
  v26 = [(NSUUID *)self->_consentUUID copyWithZone:a3];
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
    v7 = FKEqualObjects(self->_identifier, v6[2]) && FKEqualObjects(self->_fullyQualifiedAccountIdentifier, v6[3]) && self->_accountType == v6[4] && FKEqualObjects(self->_displayName, v6[5]) && FKEqualObjects(self->_displayAccountNumberValue, v6[6]) && FKEqualObjects(self->_balance, v6[7]) && FKEqualObjects(self->_creditLimit, v6[8]) && FKEqualObjects(self->_minimumPaymentAmount, v6[9]) && FKEqualObjects(self->_nextPaymentDate, v6[10]) && FKEqualObjects(self->_overduePaymentAmount, v6[11]) && FKEqualObjects(self->_actions, v6[12]) && FKEqualObjects(self->_consentUUID, v6[13]) && self->_isAccountEnabled == *(v6 + 8) && self->_isAccountMismatched == *(v6 + 9) && self->_accountRefreshFailure == v6[14] && self->_transactionsRefreshFailure == v6[15] && self->_loadingStatus == v6[16] && self->_userSuppressedNotifications == *(v6 + 10);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end