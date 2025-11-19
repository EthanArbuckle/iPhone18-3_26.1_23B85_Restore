@interface _mkMapServiceWalletMerchantTicket
- (_mkMapServiceWalletMerchantTicket)initWithRequest:(id)a3 traits:(id)a4;
- (void)cancel;
- (void)submitWithCompletionQueue:(id)a3 handler:(id)a4;
@end

@implementation _mkMapServiceWalletMerchantTicket

- (void)cancel
{
  [(GEOMapServiceTicket *)self->_ticket cancel];
  ticket = self->_ticket;
  self->_ticket = 0;
}

- (void)submitWithCompletionQueue:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  ticket = self->_ticket;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71___mkMapServiceWalletMerchantTicket_submitWithCompletionQueue_handler___block_invoke;
  v11[3] = &unk_1E76CAA98;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(GEOMapServiceTicket *)ticket submitWithHandler:v11 networkActivity:0];
}

- (_mkMapServiceWalletMerchantTicket)initWithRequest:(id)a3 traits:(id)a4
{
  v6 = a3;
  v7 = a4;
  v71.receiver = self;
  v71.super_class = _mkMapServiceWalletMerchantTicket;
  v8 = [(_mkMapServiceWalletMerchantTicket *)&v71 init];
  v9 = v8;
  if (v8)
  {
    v31 = v8;
    v70 = v7;
    v10 = [v6 bankMerchantInfo];

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E69A2310]);
      v12 = [v6 bankMerchantInfo];
      v69 = [v11 initWithMKMerchantInfo:v12];
    }

    else
    {
      v69 = 0;
    }

    v66 = [MEMORY[0x1E69A2208] sharedService];
    v68 = [v6 merchantCode];
    v67 = [v6 rawMerchantCode];
    v63 = [v6 relyingPartyIdentifier];
    v65 = [v6 industryCategory];
    v64 = [v6 industryCode];
    v62 = [v6 paymentNetwork];
    v60 = [v6 transactionDate];
    v61 = [v6 location];
    v58 = [v6 terminalId];
    v59 = [v6 transactionCurrencyCode];
    v30 = [v6 transactionType];
    v56 = [v6 transactionId];
    v57 = [v6 warsawMerchantDomain];
    v54 = [v6 warsawMerchantName];
    v55 = [v6 warsawMerchantId];
    v52 = [v6 adamId];
    v53 = [v6 merchantId];
    v50 = [v6 merchantDoingBizAsName];
    v51 = [v6 merchantEnhancedName];
    v48 = [v6 merchantCity];
    v49 = [v6 merchantRawCity];
    v46 = [v6 merchantState];
    v47 = [v6 merchantRawAddress];
    v44 = [v6 merchantZip];
    v45 = [v6 merchantAddress];
    v43 = [v6 merchantRawAddress];
    v42 = [v6 merchantCountryCode];
    v41 = [v6 merchantType];
    v29 = [v6 merchantCleanConfidenceLevel];
    v40 = [v6 merchantAdditionalData];
    v39 = [v6 merchantCanl];
    v38 = [v6 fuzzyMatched];
    v37 = [v6 coarseLocationUsed];
    v28 = [v6 bankTransactionType];
    v27 = [v6 bankMerchantStatus];
    v36 = [v6 bankAnonymisedUserId];
    v35 = [v6 otherBankTransactionLocations];
    v34 = [v6 bankTransactionDescription];
    v33 = [v6 bankTransactionTimestamp];
    v32 = [v6 bankRawMerchantCode];
    v26 = [v6 bankIndustryCategory];
    v13 = [v6 bankIndustryCode];
    v25 = [v6 bankTransactionCurrencyCode];
    v14 = [v6 baaCerts];
    v15 = [v6 baaSignature];
    v24 = [v6 bankEnableBrandMUIDFallback];
    v16 = [v6 bankIdentifier];
    v17 = [v6 bankTransactionDescriptionClean];
    v18 = [v6 piiRedactionOccurred];
    v23 = [v6 rotationPeriodsSinceEpoch];
    LODWORD(v22) = v30;
    v19 = [v66 ticketForMerchantCode:v68 rawMerchantCode:v67 relyingPartyIdentifier:v63 industryCategory:v65 industryCode:v64 paymentNetwork:v62 transactionDate:v60 transactionLocation:v61 terminalId:v58 transactionCurrencyCode:v59 transactionType:v22 transactionId:v56 warsawMerchantDomain:v57 warsawMerchantName:v54 warsawMerchantId:v55 adamId:v52 merchantId:v53 merchantDoingBizAsName:v50 merchantEnhancedName:v51 merchantCity:v48 merchantRawCity:v49 merchantState:v46 merchantRawState:v47 merchantZip:v44 merchantAddress:v45 merchantRawAddress:v43 merchantCountryCode:v42 merchantType:v41 merchantCleanConfidenceLevel:v29 merchantAdditionalData:v40 merchantCanl:v39 fuzzyMatched:v38 coarseLocationUsed:v37 bankTransactionType:__PAIR64__(v27 bankTransactionStatus:v28) bankAnonymisedUserId:v36 otherBankTransactionLocations:v35 bankTransactionDescription:v34 bankTransactionTimestamp:v33 bankRawMerchantCode:v32 bankIndustryCategory:v26 bankIndustryCode:v13 bankTransactionCurrencyCode:v25 bankMerchantInfo:v69 baaCerts:v14 baaSignature:v15 bankBrandMUIDFallbackEnabled:v24 bankIdentifier:v16 bankTransactionDescriptionClean:v17 bankPIIRedactionIsApplied:v18 bankRotationPeriodsSinceEpoch:v23 traits:v70];
    v9 = v31;
    ticket = v31->_ticket;
    v31->_ticket = v19;

    v7 = v70;
  }

  return v9;
}

@end