@interface FKPaymentTransaction
- (BOOL)isEqual:(id)equal;
- (FKPaymentTransaction)initWithTransactionIdentifier:(id)identifier amount:(id)amount foreignAmount:(id)foreignAmount foreignCurrencyExchangeRate:(id)rate transactionDate:(id)date transactionStatusChangedDate:(id)changedDate type:(unint64_t)type status:(int64_t)self0 transactionDescription:(id)self1 originalTransactionDescription:(id)self2 localizedTypeDescription:(id)self3 creditDebitIndicator:(unint64_t)self4 actions:(id)self5 isBankConnectTransaction:(BOOL)self6 bankConnectIdentifier:(id)self7 merchantCategoryCode:(int64_t)self8 hasNotificationServiceData:(BOOL)self9 paymentHash:(id)hash altDSID:(id)d insights:(id)insights serviceIdentifier:(id)serviceIdentifier;
- (FKPaymentTransaction)initWithTransactionIdentifier:(id)identifier amount:(id)amount foreignAmount:(id)foreignAmount foreignCurrencyExchangeRate:(id)rate transactionDate:(id)date transactionStatusChangedDate:(id)changedDate type:(unint64_t)type status:(int64_t)self0 transactionDescription:(id)self1 originalTransactionDescription:(id)self2 localizedTypeDescription:(id)self3 creditDebitIndicator:(unint64_t)self4 actions:(id)self5 isBankConnectTransaction:(BOOL)self6 merchantCategoryCode:(int64_t)self7 hasNotificationServiceData:(BOOL)self8 paymentHash:(id)self9 altDSID:(id)d insights:(id)insights serviceIdentifier:(id)serviceIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKPaymentTransaction

- (FKPaymentTransaction)initWithTransactionIdentifier:(id)identifier amount:(id)amount foreignAmount:(id)foreignAmount foreignCurrencyExchangeRate:(id)rate transactionDate:(id)date transactionStatusChangedDate:(id)changedDate type:(unint64_t)type status:(int64_t)self0 transactionDescription:(id)self1 originalTransactionDescription:(id)self2 localizedTypeDescription:(id)self3 creditDebitIndicator:(unint64_t)self4 actions:(id)self5 isBankConnectTransaction:(BOOL)self6 merchantCategoryCode:(int64_t)self7 hasNotificationServiceData:(BOOL)self8 paymentHash:(id)self9 altDSID:(id)d insights:(id)insights serviceIdentifier:(id)serviceIdentifier
{
  identifierCopy = identifier;
  amountCopy = amount;
  foreignAmountCopy = foreignAmount;
  rateCopy = rate;
  dateCopy = date;
  changedDateCopy = changedDate;
  descriptionCopy = description;
  transactionDescriptionCopy = transactionDescription;
  typeDescriptionCopy = typeDescription;
  actionsCopy = actions;
  hashCopy = hash;
  dCopy = d;
  insightsCopy = insights;
  serviceIdentifierCopy = serviceIdentifier;
  v72.receiver = self;
  v72.super_class = FKPaymentTransaction;
  v35 = [(FKPaymentTransaction *)&v72 init];
  if (v35)
  {
    v36 = [identifierCopy copy];
    transactionId = v35->_transactionId;
    v35->_transactionId = v36;

    v38 = [amountCopy copy];
    amount = v35->_amount;
    v35->_amount = v38;

    v40 = [foreignAmountCopy copy];
    foreignAmount = v35->_foreignAmount;
    v35->_foreignAmount = v40;

    v42 = [rateCopy copy];
    foreignCurrencyExchangeRate = v35->_foreignCurrencyExchangeRate;
    v35->_foreignCurrencyExchangeRate = v42;

    v44 = [dateCopy copy];
    transactionDate = v35->_transactionDate;
    v35->_transactionDate = v44;

    v46 = [changedDateCopy copy];
    transactionStatusChangedDate = v35->_transactionStatusChangedDate;
    v35->_transactionStatusChangedDate = v46;

    v35->_type = type;
    v35->_status = status;
    v48 = [descriptionCopy copy];
    transactionDescription = v35->_transactionDescription;
    v35->_transactionDescription = v48;

    v50 = [transactionDescriptionCopy copy];
    originalTransactionDescription = v35->_originalTransactionDescription;
    v35->_originalTransactionDescription = v50;

    v52 = [typeDescriptionCopy copy];
    localizedTypeDescription = v35->_localizedTypeDescription;
    v35->_localizedTypeDescription = v52;

    v35->_merchantCategoryCode = code;
    v35->_creditDebitIndicator = indicator;
    v54 = [actionsCopy copy];
    actions = v35->_actions;
    v35->_actions = v54;

    v35->_isBankConnectTransaction = transaction;
    v35->_hasNotificationServiceData = data;
    v56 = [hashCopy copy];
    paymentHash = v35->_paymentHash;
    v35->_paymentHash = v56;

    v58 = [dCopy copy];
    altDSID = v35->_altDSID;
    v35->_altDSID = v58;

    v60 = [insightsCopy copy];
    insights = v35->_insights;
    v35->_insights = v60;

    v62 = [serviceIdentifierCopy copy];
    serviceIdentifier = v35->_serviceIdentifier;
    v35->_serviceIdentifier = v62;
  }

  return v35;
}

- (FKPaymentTransaction)initWithTransactionIdentifier:(id)identifier amount:(id)amount foreignAmount:(id)foreignAmount foreignCurrencyExchangeRate:(id)rate transactionDate:(id)date transactionStatusChangedDate:(id)changedDate type:(unint64_t)type status:(int64_t)self0 transactionDescription:(id)self1 originalTransactionDescription:(id)self2 localizedTypeDescription:(id)self3 creditDebitIndicator:(unint64_t)self4 actions:(id)self5 isBankConnectTransaction:(BOOL)self6 bankConnectIdentifier:(id)self7 merchantCategoryCode:(int64_t)self8 hasNotificationServiceData:(BOOL)self9 paymentHash:(id)hash altDSID:(id)d insights:(id)insights serviceIdentifier:(id)serviceIdentifier
{
  identifierCopy = identifier;
  amountCopy = amount;
  foreignAmountCopy = foreignAmount;
  rateCopy = rate;
  dateCopy = date;
  changedDateCopy = changedDate;
  descriptionCopy = description;
  transactionDescriptionCopy = transactionDescription;
  typeDescriptionCopy = typeDescription;
  actionsCopy = actions;
  connectIdentifierCopy = connectIdentifier;
  hashCopy = hash;
  dCopy = d;
  insightsCopy = insights;
  serviceIdentifierCopy = serviceIdentifier;
  v76.receiver = self;
  v76.super_class = FKPaymentTransaction;
  v37 = [(FKPaymentTransaction *)&v76 init];
  if (v37)
  {
    v38 = [identifierCopy copy];
    transactionId = v37->_transactionId;
    v37->_transactionId = v38;

    v40 = [amountCopy copy];
    amount = v37->_amount;
    v37->_amount = v40;

    v42 = [foreignAmountCopy copy];
    foreignAmount = v37->_foreignAmount;
    v37->_foreignAmount = v42;

    v44 = [rateCopy copy];
    foreignCurrencyExchangeRate = v37->_foreignCurrencyExchangeRate;
    v37->_foreignCurrencyExchangeRate = v44;

    v46 = [dateCopy copy];
    transactionDate = v37->_transactionDate;
    v37->_transactionDate = v46;

    v48 = [changedDateCopy copy];
    transactionStatusChangedDate = v37->_transactionStatusChangedDate;
    v37->_transactionStatusChangedDate = v48;

    v37->_type = type;
    v37->_status = status;
    v50 = [descriptionCopy copy];
    transactionDescription = v37->_transactionDescription;
    v37->_transactionDescription = v50;

    v52 = [transactionDescriptionCopy copy];
    originalTransactionDescription = v37->_originalTransactionDescription;
    v37->_originalTransactionDescription = v52;

    v54 = [typeDescriptionCopy copy];
    localizedTypeDescription = v37->_localizedTypeDescription;
    v37->_localizedTypeDescription = v54;

    v37->_merchantCategoryCode = code;
    v37->_creditDebitIndicator = indicator;
    v56 = [actionsCopy copy];
    actions = v37->_actions;
    v37->_actions = v56;

    v37->_isBankConnectTransaction = transaction;
    v58 = [connectIdentifierCopy copy];
    bankConnectIdentifier = v37->_bankConnectIdentifier;
    v37->_bankConnectIdentifier = v58;

    v37->_hasNotificationServiceData = data;
    v60 = [hashCopy copy];
    paymentHash = v37->_paymentHash;
    v37->_paymentHash = v60;

    v62 = [dCopy copy];
    altDSID = v37->_altDSID;
    v37->_altDSID = v62;

    v64 = [insightsCopy copy];
    insights = v37->_insights;
    v37->_insights = v64;

    v66 = [serviceIdentifierCopy copy];
    serviceIdentifier = v37->_serviceIdentifier;
    v37->_serviceIdentifier = v66;
  }

  return v37;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(FKPaymentTransaction);
  v6 = [(NSString *)self->_transactionId copyWithZone:zone];
  transactionId = v5->_transactionId;
  v5->_transactionId = v6;

  v8 = [(FKAmount *)self->_amount copyWithZone:zone];
  amount = v5->_amount;
  v5->_amount = v8;

  v10 = [(FKAmount *)self->_foreignAmount copyWithZone:zone];
  foreignAmount = v5->_foreignAmount;
  v5->_foreignAmount = v10;

  v12 = [(NSDecimalNumber *)self->_foreignCurrencyExchangeRate copyWithZone:zone];
  foreignCurrencyExchangeRate = v5->_foreignCurrencyExchangeRate;
  v5->_foreignCurrencyExchangeRate = v12;

  v14 = [(NSDate *)self->_transactionDate copyWithZone:zone];
  transactionDate = v5->_transactionDate;
  v5->_transactionDate = v14;

  v16 = [(NSDate *)self->_transactionStatusChangedDate copyWithZone:zone];
  transactionStatusChangedDate = v5->_transactionStatusChangedDate;
  v5->_transactionStatusChangedDate = v16;

  v5->_type = self->_type;
  v5->_status = self->_status;
  v18 = [(NSString *)self->_transactionDescription copyWithZone:zone];
  transactionDescription = v5->_transactionDescription;
  v5->_transactionDescription = v18;

  v20 = [(NSString *)self->_originalTransactionDescription copyWithZone:zone];
  originalTransactionDescription = v5->_originalTransactionDescription;
  v5->_originalTransactionDescription = v20;

  v22 = [(NSString *)self->_localizedTypeDescription copyWithZone:zone];
  localizedTypeDescription = v5->_localizedTypeDescription;
  v5->_localizedTypeDescription = v22;

  v5->_merchantCategoryCode = self->_merchantCategoryCode;
  v5->_creditDebitIndicator = self->_creditDebitIndicator;
  v24 = [(FKActions *)self->_actions copyWithZone:zone];
  actions = v5->_actions;
  v5->_actions = v24;

  v5->_isBankConnectTransaction = self->_isBankConnectTransaction;
  v26 = [(NSUUID *)self->_bankConnectIdentifier copyWithZone:zone];
  bankConnectIdentifier = v5->_bankConnectIdentifier;
  v5->_bankConnectIdentifier = v26;

  v5->_hasNotificationServiceData = self->_hasNotificationServiceData;
  v28 = [(NSString *)self->_altDSID copyWithZone:zone];
  altDSID = v5->_altDSID;
  v5->_altDSID = v28;

  v30 = [(NSString *)self->_paymentHash copyWithZone:zone];
  paymentHash = v5->_paymentHash;
  v5->_paymentHash = v30;

  v32 = [(FKPaymentTransactionInsights *)self->_insights copyWithZone:zone];
  insights = v5->_insights;
  v5->_insights = v32;

  v34 = [(NSString *)self->_serviceIdentifier copyWithZone:zone];
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