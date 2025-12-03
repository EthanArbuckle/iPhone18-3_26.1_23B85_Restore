@interface _mkMapServiceWalletMerchantTicket
- (_mkMapServiceWalletMerchantTicket)initWithRequest:(id)request traits:(id)traits;
- (void)cancel;
- (void)submitWithCompletionQueue:(id)queue handler:(id)handler;
@end

@implementation _mkMapServiceWalletMerchantTicket

- (void)cancel
{
  [(GEOMapServiceTicket *)self->_ticket cancel];
  ticket = self->_ticket;
  self->_ticket = 0;
}

- (void)submitWithCompletionQueue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  ticket = self->_ticket;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71___mkMapServiceWalletMerchantTicket_submitWithCompletionQueue_handler___block_invoke;
  v11[3] = &unk_1E76CAA98;
  v11[4] = self;
  v12 = queueCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = queueCopy;
  [(GEOMapServiceTicket *)ticket submitWithHandler:v11 networkActivity:0];
}

- (_mkMapServiceWalletMerchantTicket)initWithRequest:(id)request traits:(id)traits
{
  requestCopy = request;
  traitsCopy = traits;
  v71.receiver = self;
  v71.super_class = _mkMapServiceWalletMerchantTicket;
  v8 = [(_mkMapServiceWalletMerchantTicket *)&v71 init];
  v9 = v8;
  if (v8)
  {
    v31 = v8;
    v70 = traitsCopy;
    bankMerchantInfo = [requestCopy bankMerchantInfo];

    if (bankMerchantInfo)
    {
      v11 = objc_alloc(MEMORY[0x1E69A2310]);
      bankMerchantInfo2 = [requestCopy bankMerchantInfo];
      v69 = [v11 initWithMKMerchantInfo:bankMerchantInfo2];
    }

    else
    {
      v69 = 0;
    }

    mEMORY[0x1E69A2208] = [MEMORY[0x1E69A2208] sharedService];
    merchantCode = [requestCopy merchantCode];
    rawMerchantCode = [requestCopy rawMerchantCode];
    relyingPartyIdentifier = [requestCopy relyingPartyIdentifier];
    industryCategory = [requestCopy industryCategory];
    industryCode = [requestCopy industryCode];
    paymentNetwork = [requestCopy paymentNetwork];
    transactionDate = [requestCopy transactionDate];
    location = [requestCopy location];
    terminalId = [requestCopy terminalId];
    transactionCurrencyCode = [requestCopy transactionCurrencyCode];
    transactionType = [requestCopy transactionType];
    transactionId = [requestCopy transactionId];
    warsawMerchantDomain = [requestCopy warsawMerchantDomain];
    warsawMerchantName = [requestCopy warsawMerchantName];
    warsawMerchantId = [requestCopy warsawMerchantId];
    adamId = [requestCopy adamId];
    merchantId = [requestCopy merchantId];
    merchantDoingBizAsName = [requestCopy merchantDoingBizAsName];
    merchantEnhancedName = [requestCopy merchantEnhancedName];
    merchantCity = [requestCopy merchantCity];
    merchantRawCity = [requestCopy merchantRawCity];
    merchantState = [requestCopy merchantState];
    merchantRawAddress = [requestCopy merchantRawAddress];
    merchantZip = [requestCopy merchantZip];
    merchantAddress = [requestCopy merchantAddress];
    merchantRawAddress2 = [requestCopy merchantRawAddress];
    merchantCountryCode = [requestCopy merchantCountryCode];
    merchantType = [requestCopy merchantType];
    merchantCleanConfidenceLevel = [requestCopy merchantCleanConfidenceLevel];
    merchantAdditionalData = [requestCopy merchantAdditionalData];
    merchantCanl = [requestCopy merchantCanl];
    fuzzyMatched = [requestCopy fuzzyMatched];
    coarseLocationUsed = [requestCopy coarseLocationUsed];
    bankTransactionType = [requestCopy bankTransactionType];
    bankMerchantStatus = [requestCopy bankMerchantStatus];
    bankAnonymisedUserId = [requestCopy bankAnonymisedUserId];
    otherBankTransactionLocations = [requestCopy otherBankTransactionLocations];
    bankTransactionDescription = [requestCopy bankTransactionDescription];
    bankTransactionTimestamp = [requestCopy bankTransactionTimestamp];
    bankRawMerchantCode = [requestCopy bankRawMerchantCode];
    bankIndustryCategory = [requestCopy bankIndustryCategory];
    bankIndustryCode = [requestCopy bankIndustryCode];
    bankTransactionCurrencyCode = [requestCopy bankTransactionCurrencyCode];
    baaCerts = [requestCopy baaCerts];
    baaSignature = [requestCopy baaSignature];
    bankEnableBrandMUIDFallback = [requestCopy bankEnableBrandMUIDFallback];
    bankIdentifier = [requestCopy bankIdentifier];
    bankTransactionDescriptionClean = [requestCopy bankTransactionDescriptionClean];
    piiRedactionOccurred = [requestCopy piiRedactionOccurred];
    rotationPeriodsSinceEpoch = [requestCopy rotationPeriodsSinceEpoch];
    LODWORD(v22) = transactionType;
    v19 = [mEMORY[0x1E69A2208] ticketForMerchantCode:merchantCode rawMerchantCode:rawMerchantCode relyingPartyIdentifier:relyingPartyIdentifier industryCategory:industryCategory industryCode:industryCode paymentNetwork:paymentNetwork transactionDate:transactionDate transactionLocation:location terminalId:terminalId transactionCurrencyCode:transactionCurrencyCode transactionType:v22 transactionId:transactionId warsawMerchantDomain:warsawMerchantDomain warsawMerchantName:warsawMerchantName warsawMerchantId:warsawMerchantId adamId:adamId merchantId:merchantId merchantDoingBizAsName:merchantDoingBizAsName merchantEnhancedName:merchantEnhancedName merchantCity:merchantCity merchantRawCity:merchantRawCity merchantState:merchantState merchantRawState:merchantRawAddress merchantZip:merchantZip merchantAddress:merchantAddress merchantRawAddress:merchantRawAddress2 merchantCountryCode:merchantCountryCode merchantType:merchantType merchantCleanConfidenceLevel:merchantCleanConfidenceLevel merchantAdditionalData:merchantAdditionalData merchantCanl:merchantCanl fuzzyMatched:fuzzyMatched coarseLocationUsed:coarseLocationUsed bankTransactionType:__PAIR64__(bankMerchantStatus bankTransactionStatus:bankTransactionType) bankAnonymisedUserId:bankAnonymisedUserId otherBankTransactionLocations:otherBankTransactionLocations bankTransactionDescription:bankTransactionDescription bankTransactionTimestamp:bankTransactionTimestamp bankRawMerchantCode:bankRawMerchantCode bankIndustryCategory:bankIndustryCategory bankIndustryCode:bankIndustryCode bankTransactionCurrencyCode:bankTransactionCurrencyCode bankMerchantInfo:v69 baaCerts:baaCerts baaSignature:baaSignature bankBrandMUIDFallbackEnabled:bankEnableBrandMUIDFallback bankIdentifier:bankIdentifier bankTransactionDescriptionClean:bankTransactionDescriptionClean bankPIIRedactionIsApplied:piiRedactionOccurred bankRotationPeriodsSinceEpoch:rotationPeriodsSinceEpoch traits:v70];
    v9 = v31;
    ticket = v31->_ticket;
    v31->_ticket = v19;

    traitsCopy = v70;
  }

  return v9;
}

@end