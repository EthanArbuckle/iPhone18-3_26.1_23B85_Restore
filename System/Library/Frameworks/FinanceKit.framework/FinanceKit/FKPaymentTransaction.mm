@interface FKPaymentTransaction
- (BOOL)isEqual:(id)a3;
- (FKPaymentTransaction)initWithTransactionIdentifier:(id)a3 amount:(id)a4 foreignAmount:(id)a5 foreignCurrencyExchangeRate:(id)a6 transactionDate:(id)a7 transactionStatusChangedDate:(id)a8 type:(unint64_t)a9 status:(int64_t)a10 transactionDescription:(id)a11 originalTransactionDescription:(id)a12 localizedTypeDescription:(id)a13 creditDebitIndicator:(unint64_t)a14 actions:(id)a15 isBankConnectTransaction:(BOOL)a16 bankConnectIdentifier:(id)a17 merchantCategoryCode:(int64_t)a18 hasNotificationServiceData:(BOOL)a19 paymentHash:(id)a20 altDSID:(id)a21 insights:(id)a22 serviceIdentifier:(id)a23;
- (FKPaymentTransaction)initWithTransactionIdentifier:(id)a3 amount:(id)a4 foreignAmount:(id)a5 foreignCurrencyExchangeRate:(id)a6 transactionDate:(id)a7 transactionStatusChangedDate:(id)a8 type:(unint64_t)a9 status:(int64_t)a10 transactionDescription:(id)a11 originalTransactionDescription:(id)a12 localizedTypeDescription:(id)a13 creditDebitIndicator:(unint64_t)a14 actions:(id)a15 isBankConnectTransaction:(BOOL)a16 merchantCategoryCode:(int64_t)a17 hasNotificationServiceData:(BOOL)a18 paymentHash:(id)a19 altDSID:(id)a20 insights:(id)a21 serviceIdentifier:(id)a22;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKPaymentTransaction

- (FKPaymentTransaction)initWithTransactionIdentifier:(id)a3 amount:(id)a4 foreignAmount:(id)a5 foreignCurrencyExchangeRate:(id)a6 transactionDate:(id)a7 transactionStatusChangedDate:(id)a8 type:(unint64_t)a9 status:(int64_t)a10 transactionDescription:(id)a11 originalTransactionDescription:(id)a12 localizedTypeDescription:(id)a13 creditDebitIndicator:(unint64_t)a14 actions:(id)a15 isBankConnectTransaction:(BOOL)a16 merchantCategoryCode:(int64_t)a17 hasNotificationServiceData:(BOOL)a18 paymentHash:(id)a19 altDSID:(id)a20 insights:(id)a21 serviceIdentifier:(id)a22
{
  v71 = a3;
  v70 = a4;
  v69 = a5;
  v68 = a6;
  v67 = a7;
  v66 = a8;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  v30 = a15;
  v31 = a19;
  v32 = a20;
  v33 = a21;
  v34 = a22;
  v72.receiver = self;
  v72.super_class = FKPaymentTransaction;
  v35 = [(FKPaymentTransaction *)&v72 init];
  if (v35)
  {
    v36 = [v71 copy];
    transactionId = v35->_transactionId;
    v35->_transactionId = v36;

    v38 = [v70 copy];
    amount = v35->_amount;
    v35->_amount = v38;

    v40 = [v69 copy];
    foreignAmount = v35->_foreignAmount;
    v35->_foreignAmount = v40;

    v42 = [v68 copy];
    foreignCurrencyExchangeRate = v35->_foreignCurrencyExchangeRate;
    v35->_foreignCurrencyExchangeRate = v42;

    v44 = [v67 copy];
    transactionDate = v35->_transactionDate;
    v35->_transactionDate = v44;

    v46 = [v66 copy];
    transactionStatusChangedDate = v35->_transactionStatusChangedDate;
    v35->_transactionStatusChangedDate = v46;

    v35->_type = a9;
    v35->_status = a10;
    v48 = [v27 copy];
    transactionDescription = v35->_transactionDescription;
    v35->_transactionDescription = v48;

    v50 = [v28 copy];
    originalTransactionDescription = v35->_originalTransactionDescription;
    v35->_originalTransactionDescription = v50;

    v52 = [v29 copy];
    localizedTypeDescription = v35->_localizedTypeDescription;
    v35->_localizedTypeDescription = v52;

    v35->_merchantCategoryCode = a17;
    v35->_creditDebitIndicator = a14;
    v54 = [v30 copy];
    actions = v35->_actions;
    v35->_actions = v54;

    v35->_isBankConnectTransaction = a16;
    v35->_hasNotificationServiceData = a18;
    v56 = [v31 copy];
    paymentHash = v35->_paymentHash;
    v35->_paymentHash = v56;

    v58 = [v32 copy];
    altDSID = v35->_altDSID;
    v35->_altDSID = v58;

    v60 = [v33 copy];
    insights = v35->_insights;
    v35->_insights = v60;

    v62 = [v34 copy];
    serviceIdentifier = v35->_serviceIdentifier;
    v35->_serviceIdentifier = v62;
  }

  return v35;
}

- (FKPaymentTransaction)initWithTransactionIdentifier:(id)a3 amount:(id)a4 foreignAmount:(id)a5 foreignCurrencyExchangeRate:(id)a6 transactionDate:(id)a7 transactionStatusChangedDate:(id)a8 type:(unint64_t)a9 status:(int64_t)a10 transactionDescription:(id)a11 originalTransactionDescription:(id)a12 localizedTypeDescription:(id)a13 creditDebitIndicator:(unint64_t)a14 actions:(id)a15 isBankConnectTransaction:(BOOL)a16 bankConnectIdentifier:(id)a17 merchantCategoryCode:(int64_t)a18 hasNotificationServiceData:(BOOL)a19 paymentHash:(id)a20 altDSID:(id)a21 insights:(id)a22 serviceIdentifier:(id)a23
{
  v75 = a3;
  v74 = a4;
  v73 = a5;
  v72 = a6;
  v71 = a7;
  v70 = a8;
  v28 = a11;
  v29 = a12;
  v30 = a13;
  v31 = a15;
  v32 = a17;
  v33 = a20;
  v34 = a21;
  v35 = a22;
  v36 = a23;
  v76.receiver = self;
  v76.super_class = FKPaymentTransaction;
  v37 = [(FKPaymentTransaction *)&v76 init];
  if (v37)
  {
    v38 = [v75 copy];
    transactionId = v37->_transactionId;
    v37->_transactionId = v38;

    v40 = [v74 copy];
    amount = v37->_amount;
    v37->_amount = v40;

    v42 = [v73 copy];
    foreignAmount = v37->_foreignAmount;
    v37->_foreignAmount = v42;

    v44 = [v72 copy];
    foreignCurrencyExchangeRate = v37->_foreignCurrencyExchangeRate;
    v37->_foreignCurrencyExchangeRate = v44;

    v46 = [v71 copy];
    transactionDate = v37->_transactionDate;
    v37->_transactionDate = v46;

    v48 = [v70 copy];
    transactionStatusChangedDate = v37->_transactionStatusChangedDate;
    v37->_transactionStatusChangedDate = v48;

    v37->_type = a9;
    v37->_status = a10;
    v50 = [v28 copy];
    transactionDescription = v37->_transactionDescription;
    v37->_transactionDescription = v50;

    v52 = [v29 copy];
    originalTransactionDescription = v37->_originalTransactionDescription;
    v37->_originalTransactionDescription = v52;

    v54 = [v30 copy];
    localizedTypeDescription = v37->_localizedTypeDescription;
    v37->_localizedTypeDescription = v54;

    v37->_merchantCategoryCode = a18;
    v37->_creditDebitIndicator = a14;
    v56 = [v31 copy];
    actions = v37->_actions;
    v37->_actions = v56;

    v37->_isBankConnectTransaction = a16;
    v58 = [v32 copy];
    bankConnectIdentifier = v37->_bankConnectIdentifier;
    v37->_bankConnectIdentifier = v58;

    v37->_hasNotificationServiceData = a19;
    v60 = [v33 copy];
    paymentHash = v37->_paymentHash;
    v37->_paymentHash = v60;

    v62 = [v34 copy];
    altDSID = v37->_altDSID;
    v37->_altDSID = v62;

    v64 = [v35 copy];
    insights = v37->_insights;
    v37->_insights = v64;

    v66 = [v36 copy];
    serviceIdentifier = v37->_serviceIdentifier;
    v37->_serviceIdentifier = v66;
  }

  return v37;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(FKPaymentTransaction);
  v6 = [(NSString *)self->_transactionId copyWithZone:a3];
  transactionId = v5->_transactionId;
  v5->_transactionId = v6;

  v8 = [(FKAmount *)self->_amount copyWithZone:a3];
  amount = v5->_amount;
  v5->_amount = v8;

  v10 = [(FKAmount *)self->_foreignAmount copyWithZone:a3];
  foreignAmount = v5->_foreignAmount;
  v5->_foreignAmount = v10;

  v12 = [(NSDecimalNumber *)self->_foreignCurrencyExchangeRate copyWithZone:a3];
  foreignCurrencyExchangeRate = v5->_foreignCurrencyExchangeRate;
  v5->_foreignCurrencyExchangeRate = v12;

  v14 = [(NSDate *)self->_transactionDate copyWithZone:a3];
  transactionDate = v5->_transactionDate;
  v5->_transactionDate = v14;

  v16 = [(NSDate *)self->_transactionStatusChangedDate copyWithZone:a3];
  transactionStatusChangedDate = v5->_transactionStatusChangedDate;
  v5->_transactionStatusChangedDate = v16;

  v5->_type = self->_type;
  v5->_status = self->_status;
  v18 = [(NSString *)self->_transactionDescription copyWithZone:a3];
  transactionDescription = v5->_transactionDescription;
  v5->_transactionDescription = v18;

  v20 = [(NSString *)self->_originalTransactionDescription copyWithZone:a3];
  originalTransactionDescription = v5->_originalTransactionDescription;
  v5->_originalTransactionDescription = v20;

  v22 = [(NSString *)self->_localizedTypeDescription copyWithZone:a3];
  localizedTypeDescription = v5->_localizedTypeDescription;
  v5->_localizedTypeDescription = v22;

  v5->_merchantCategoryCode = self->_merchantCategoryCode;
  v5->_creditDebitIndicator = self->_creditDebitIndicator;
  v24 = [(FKActions *)self->_actions copyWithZone:a3];
  actions = v5->_actions;
  v5->_actions = v24;

  v5->_isBankConnectTransaction = self->_isBankConnectTransaction;
  v26 = [(NSUUID *)self->_bankConnectIdentifier copyWithZone:a3];
  bankConnectIdentifier = v5->_bankConnectIdentifier;
  v5->_bankConnectIdentifier = v26;

  v5->_hasNotificationServiceData = self->_hasNotificationServiceData;
  v28 = [(NSString *)self->_altDSID copyWithZone:a3];
  altDSID = v5->_altDSID;
  v5->_altDSID = v28;

  v30 = [(NSString *)self->_paymentHash copyWithZone:a3];
  paymentHash = v5->_paymentHash;
  v5->_paymentHash = v30;

  v32 = [(FKPaymentTransactionInsights *)self->_insights copyWithZone:a3];
  insights = v5->_insights;
  v5->_insights = v32;

  v34 = [(NSString *)self->_serviceIdentifier copyWithZone:a3];
  serviceIdentifier = v5->_serviceIdentifier;
  v5->_serviceIdentifier = v34;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_transactionId];
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_foreignAmount];
  [v3 safelyAddObject:self->_foreignCurrencyExchangeRate];
  [v3 safelyAddObject:self->_transactionDate];
  [v3 safelyAddObject:self->_transactionStatusChangedDate];
  [v3 safelyAddObject:self->_transactionDescription];
  [v3 safelyAddObject:self->_originalTransactionDescription];
  [v3 safelyAddObject:self->_localizedTypeDescription];
  [v3 safelyAddObject:self->_actions];
  [v3 safelyAddObject:self->_bankConnectIdentifier];
  [v3 safelyAddObject:self->_altDSID];
  [v3 safelyAddObject:self->_paymentHash];
  [v3 safelyAddObject:self->_insights];
  [v3 safelyAddObject:self->_serviceIdentifier];
  v4 = FKCombinedHash(17, v3);
  v5 = FKIntegerHash(v4, self->_type);
  v6 = FKIntegerHash(v5, self->_status);
  v7 = FKIntegerHash(v6, self->_merchantCategoryCode);
  v8 = FKIntegerHash(v7, self->_creditDebitIndicator);
  v9 = FKIntegerHash(v8, self->_isBankConnectTransaction);
  v10 = FKIntegerHash(v9, self->_hasNotificationServiceData);

  return v10;
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
    if (FKEqualObjects(self->_transactionId, v6[2]) && FKEqualObjects(self->_amount, v6[3]) && FKEqualObjects(self->_foreignAmount, v6[4]) && FKEqualObjects(self->_foreignCurrencyExchangeRate, v6[5]) && FKEqualObjects(self->_transactionDate, v6[6]) && FKEqualObjects(self->_transactionStatusChangedDate, v6[7]) && self->_type == v6[8] && self->_status == v6[9] && FKEqualObjects(self->_transactionDescription, v6[10]) && FKEqualObjects(self->_originalTransactionDescription, v6[11]) && FKEqualObjects(self->_localizedTypeDescription, v6[12]) && self->_creditDebitIndicator == v6[14] && FKEqualObjects(self->_actions, v6[15]) && self->_isBankConnectTransaction == *(v6 + 8) && FKEqualObjects(self->_bankConnectIdentifier, v6[16]) && self->_merchantCategoryCode == v6[13] && self->_hasNotificationServiceData == *(v6 + 9) && FKEqualObjects(self->_altDSID, v6[18]) && FKEqualObjects(self->_paymentHash, v6[17]) && FKEqualObjects(self->_insights, v6[20]))
    {
      v7 = FKEqualObjects(self->_serviceIdentifier, v6[19]);
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