@interface FKApplePayTransactionInsight
- (BOOL)isEqual:(id)equal;
- (FKApplePayTransactionInsight)initWithPaymentHash:(id)hash transactionDate:(id)date merchantName:(id)name merchantRawName:(id)rawName industryCategory:(id)category industryCode:(id)code merchantType:(id)type merchantCountryCode:(id)self0 terminalIdentifier:(id)self1 merchantAdditionalData:(id)self2 paymentNetwork:(id)self3 isMerchantTokenTransaction:(id)self4 isCoarseLocation:(id)self5 location:(id)self6 merchantIdentifier:(id)self7 merchantRawCANL:(id)self8 merchantRawCity:(id)self9 merchantRawState:(id)state merchantRawCountry:(id)country merchantCity:(id)merchantCity merchantZip:(id)zip merchantState:(id)merchantState merchantCleanConfidenceLevel:(id)level rewardsAmount:(id)amount rewardsCurrency:(id)currency rewardsEligibilityReason:(id)reason adamIdentifier:(id)adamIdentifier webURL:(id)hash0 webMerchantIdentifier:(id)hash1 webMerchantName:(id)hash2 isIssuerInstallmentTransaction:(id)hash3 issuerInstallmentManagementURL:(id)hash4;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKApplePayTransactionInsight

- (FKApplePayTransactionInsight)initWithPaymentHash:(id)hash transactionDate:(id)date merchantName:(id)name merchantRawName:(id)rawName industryCategory:(id)category industryCode:(id)code merchantType:(id)type merchantCountryCode:(id)self0 terminalIdentifier:(id)self1 merchantAdditionalData:(id)self2 paymentNetwork:(id)self3 isMerchantTokenTransaction:(id)self4 isCoarseLocation:(id)self5 location:(id)self6 merchantIdentifier:(id)self7 merchantRawCANL:(id)self8 merchantRawCity:(id)self9 merchantRawState:(id)state merchantRawCountry:(id)country merchantCity:(id)merchantCity merchantZip:(id)zip merchantState:(id)merchantState merchantCleanConfidenceLevel:(id)level rewardsAmount:(id)amount rewardsCurrency:(id)currency rewardsEligibilityReason:(id)reason adamIdentifier:(id)adamIdentifier webURL:(id)hash0 webMerchantIdentifier:(id)hash1 webMerchantName:(id)hash2 isIssuerInstallmentTransaction:(id)hash3 issuerInstallmentManagementURL:(id)hash4
{
  hashCopy = hash;
  dateCopy = date;
  nameCopy = name;
  rawNameCopy = rawName;
  categoryCopy = category;
  codeCopy = code;
  v42 = dateCopy;
  typeCopy = type;
  countryCodeCopy = countryCode;
  identifierCopy = identifier;
  v43 = nameCopy;
  dataCopy = data;
  networkCopy = network;
  transactionCopy = transaction;
  locationCopy = location;
  v129 = a16;
  merchantIdentifierCopy = merchantIdentifier;
  lCopy = l;
  cityCopy = city;
  stateCopy = state;
  countryCopy = country;
  merchantCityCopy = merchantCity;
  zipCopy = zip;
  merchantStateCopy = merchantState;
  levelCopy = level;
  amountCopy = amount;
  currencyCopy = currency;
  reasonCopy = reason;
  adamIdentifierCopy = adamIdentifier;
  rLCopy = rL;
  webMerchantIdentifierCopy = webMerchantIdentifier;
  merchantNameCopy = merchantName;
  installmentTransactionCopy = installmentTransaction;
  uRLCopy = uRL;
  v140.receiver = self;
  v140.super_class = FKApplePayTransactionInsight;
  v50 = [(FKApplePayTransactionInsight *)&v140 init];
  if (v50)
  {
    v51 = [hashCopy copy];
    paymentHash = v50->_paymentHash;
    v50->_paymentHash = v51;

    v53 = [v42 copy];
    transactionDate = v50->_transactionDate;
    v50->_transactionDate = v53;

    v55 = [v43 copy];
    merchantName = v50->_merchantName;
    v50->_merchantName = v55;

    v57 = [rawNameCopy copy];
    merchantRawName = v50->_merchantRawName;
    v50->_merchantRawName = v57;

    v59 = [categoryCopy copy];
    industryCategory = v50->_industryCategory;
    v50->_industryCategory = v59;

    v61 = [codeCopy copy];
    industryCode = v50->_industryCode;
    v50->_industryCode = v61;

    v63 = [typeCopy copy];
    merchantType = v50->_merchantType;
    v50->_merchantType = v63;

    v65 = [countryCodeCopy copy];
    merchantCountryCode = v50->_merchantCountryCode;
    v50->_merchantCountryCode = v65;

    v67 = [identifierCopy copy];
    terminalIdentifier = v50->_terminalIdentifier;
    v50->_terminalIdentifier = v67;

    v69 = [dataCopy copy];
    merchantAdditionalData = v50->_merchantAdditionalData;
    v50->_merchantAdditionalData = v69;

    v71 = [networkCopy copy];
    paymentNetwork = v50->_paymentNetwork;
    v50->_paymentNetwork = v71;

    v73 = [transactionCopy copy];
    isMerchantTokenTransaction = v50->_isMerchantTokenTransaction;
    v50->_isMerchantTokenTransaction = v73;

    v75 = [locationCopy copy];
    isCoarseLocation = v50->_isCoarseLocation;
    v50->_isCoarseLocation = v75;

    v77 = [v129 copy];
    location = v50->_location;
    v50->_location = v77;

    v79 = [merchantIdentifierCopy copy];
    merchantIdentifier = v50->_merchantIdentifier;
    v50->_merchantIdentifier = v79;

    v81 = [lCopy copy];
    merchantRawCANL = v50->_merchantRawCANL;
    v50->_merchantRawCANL = v81;

    v83 = [cityCopy copy];
    merchantRawCity = v50->_merchantRawCity;
    v50->_merchantRawCity = v83;

    v85 = [stateCopy copy];
    merchantRawState = v50->_merchantRawState;
    v50->_merchantRawState = v85;

    v87 = [countryCopy copy];
    merchantRawCountry = v50->_merchantRawCountry;
    v50->_merchantRawCountry = v87;

    v89 = [merchantCityCopy copy];
    merchantCity = v50->_merchantCity;
    v50->_merchantCity = v89;

    v91 = [zipCopy copy];
    merchantZip = v50->_merchantZip;
    v50->_merchantZip = v91;

    v93 = [merchantStateCopy copy];
    merchantState = v50->_merchantState;
    v50->_merchantState = v93;

    v95 = [levelCopy copy];
    merchantCleanConfidenceLevel = v50->_merchantCleanConfidenceLevel;
    v50->_merchantCleanConfidenceLevel = v95;

    v97 = [amountCopy copy];
    rewardsAmount = v50->_rewardsAmount;
    v50->_rewardsAmount = v97;

    v99 = [currencyCopy copy];
    rewardsCurrency = v50->_rewardsCurrency;
    v50->_rewardsCurrency = v99;

    v101 = [reasonCopy copy];
    rewardsEligibilityReason = v50->_rewardsEligibilityReason;
    v50->_rewardsEligibilityReason = v101;

    v103 = [adamIdentifierCopy copy];
    adamIdentifier = v50->_adamIdentifier;
    v50->_adamIdentifier = v103;

    v105 = [rLCopy copy];
    webURL = v50->_webURL;
    v50->_webURL = v105;

    v107 = [webMerchantIdentifierCopy copy];
    webMerchantIdentifier = v50->_webMerchantIdentifier;
    v50->_webMerchantIdentifier = v107;

    v109 = [merchantNameCopy copy];
    webMerchantName = v50->_webMerchantName;
    v50->_webMerchantName = v109;

    v111 = [installmentTransactionCopy copy];
    isIssuerInstallmentTransaction = v50->_isIssuerInstallmentTransaction;
    v50->_isIssuerInstallmentTransaction = v111;

    v113 = [uRLCopy copy];
    issuerInstallmentManagementURL = v50->_issuerInstallmentManagementURL;
    v50->_issuerInstallmentManagementURL = v113;
  }

  return v50;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSDate *)self->_transactionDate copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_paymentHash copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_merchantName copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_merchantRawName copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_industryCategory copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSNumber *)self->_industryCode copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSString *)self->_merchantType copyWithZone:zone];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(NSString *)self->_merchantCountryCode copyWithZone:zone];
  v21 = v5[8];
  v5[8] = v20;

  v22 = [(NSString *)self->_terminalIdentifier copyWithZone:zone];
  v23 = v5[9];
  v5[9] = v22;

  v24 = [(NSString *)self->_merchantAdditionalData copyWithZone:zone];
  v25 = v5[10];
  v5[10] = v24;

  v26 = [(NSString *)self->_paymentNetwork copyWithZone:zone];
  v27 = v5[11];
  v5[11] = v26;

  v28 = [(NSNumber *)self->_isMerchantTokenTransaction copyWithZone:zone];
  v29 = v5[12];
  v5[12] = v28;

  v30 = [(NSNumber *)self->_isCoarseLocation copyWithZone:zone];
  v31 = v5[13];
  v5[13] = v30;

  v32 = [(CLLocation *)self->_location copyWithZone:zone];
  v33 = v5[14];
  v5[14] = v32;

  v34 = [(NSString *)self->_merchantIdentifier copyWithZone:zone];
  v35 = v5[15];
  v5[15] = v34;

  v36 = [(NSString *)self->_merchantRawCANL copyWithZone:zone];
  v37 = v5[16];
  v5[16] = v36;

  v38 = [(NSString *)self->_merchantRawCity copyWithZone:zone];
  v39 = v5[17];
  v5[17] = v38;

  v40 = [(NSString *)self->_merchantRawState copyWithZone:zone];
  v41 = v5[18];
  v5[18] = v40;

  v42 = [(NSString *)self->_merchantRawCountry copyWithZone:zone];
  v43 = v5[19];
  v5[19] = v42;

  v44 = [(NSString *)self->_merchantCity copyWithZone:zone];
  v45 = v5[20];
  v5[20] = v44;

  v46 = [(NSString *)self->_merchantZip copyWithZone:zone];
  v47 = v5[21];
  v5[21] = v46;

  v48 = [(NSString *)self->_merchantState copyWithZone:zone];
  v49 = v5[22];
  v5[22] = v48;

  v50 = [(NSNumber *)self->_merchantCleanConfidenceLevel copyWithZone:zone];
  v51 = v5[23];
  v5[23] = v50;

  v52 = [(NSDecimalNumber *)self->_rewardsAmount copyWithZone:zone];
  v53 = v5[24];
  v5[24] = v52;

  v54 = [(NSString *)self->_rewardsCurrency copyWithZone:zone];
  v55 = v5[25];
  v5[25] = v54;

  v56 = [(NSNumber *)self->_rewardsEligibilityReason copyWithZone:zone];
  v57 = v5[26];
  v5[26] = v56;

  v58 = [(NSNumber *)self->_adamIdentifier copyWithZone:zone];
  v59 = v5[27];
  v5[27] = v58;

  v60 = [(NSURL *)self->_webURL copyWithZone:zone];
  v61 = v5[28];
  v5[28] = v60;

  v62 = [(NSString *)self->_webMerchantIdentifier copyWithZone:zone];
  v63 = v5[29];
  v5[29] = v62;

  v64 = [(NSString *)self->_webMerchantName copyWithZone:zone];
  v65 = v5[30];
  v5[30] = v64;

  v66 = [(NSNumber *)self->_isIssuerInstallmentTransaction copyWithZone:zone];
  v67 = v5[31];
  v5[31] = v66;

  v68 = [(NSURL *)self->_issuerInstallmentManagementURL copyWithZone:zone];
  v69 = v5[32];
  v5[32] = v68;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_paymentHash];
  [v3 safelyAddObject:self->_transactionDate];
  [v3 safelyAddObject:self->_merchantName];
  [v3 safelyAddObject:self->_merchantRawName];
  [v3 safelyAddObject:self->_industryCategory];
  [v3 safelyAddObject:self->_industryCode];
  [v3 safelyAddObject:self->_merchantType];
  [v3 safelyAddObject:self->_merchantCountryCode];
  [v3 safelyAddObject:self->_terminalIdentifier];
  [v3 safelyAddObject:self->_merchantAdditionalData];
  [v3 safelyAddObject:self->_paymentNetwork];
  [v3 safelyAddObject:self->_isMerchantTokenTransaction];
  [v3 safelyAddObject:self->_isCoarseLocation];
  [v3 safelyAddObject:self->_location];
  [v3 safelyAddObject:self->_merchantIdentifier];
  [v3 safelyAddObject:self->_merchantRawCANL];
  [v3 safelyAddObject:self->_merchantRawCity];
  [v3 safelyAddObject:self->_merchantRawState];
  [v3 safelyAddObject:self->_merchantRawCountry];
  [v3 safelyAddObject:self->_merchantCity];
  [v3 safelyAddObject:self->_merchantZip];
  [v3 safelyAddObject:self->_merchantState];
  [v3 safelyAddObject:self->_merchantCleanConfidenceLevel];
  [v3 safelyAddObject:self->_rewardsAmount];
  [v3 safelyAddObject:self->_rewardsCurrency];
  [v3 safelyAddObject:self->_rewardsEligibilityReason];
  [v3 safelyAddObject:self->_adamIdentifier];
  [v3 safelyAddObject:self->_webURL];
  [v3 safelyAddObject:self->_webMerchantIdentifier];
  [v3 safelyAddObject:self->_webMerchantName];
  [v3 safelyAddObject:self->_isIssuerInstallmentTransaction];
  [v3 safelyAddObject:self->_issuerInstallmentManagementURL];
  v4 = FKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (FKEqualObjects(self->_paymentHash, v6[1]) && FKEqualObjects(self->_transactionDate, v6[2]) && FKEqualObjects(self->_merchantName, v6[3]) && FKEqualObjects(self->_merchantRawName, v6[4]) && FKEqualObjects(self->_industryCategory, v6[5]) && FKEqualObjects(self->_industryCode, v6[6]) && FKEqualObjects(self->_merchantType, v6[7]) && FKEqualObjects(self->_merchantCountryCode, v6[8]) && FKEqualObjects(self->_terminalIdentifier, v6[9]) && FKEqualObjects(self->_merchantAdditionalData, v6[10]) && FKEqualObjects(self->_paymentNetwork, v6[11]) && FKEqualObjects(self->_isMerchantTokenTransaction, v6[12]) && FKEqualObjects(self->_isCoarseLocation, v6[13]) && ([(CLLocation *)self->_location distanceFromLocation:v6[14]], v7 == 0.0))
    {
      timestamp = [(CLLocation *)self->_location timestamp];
      timestamp2 = [v6[14] timestamp];
      if (FKEqualObjects(timestamp, timestamp2) && (-[CLLocation verticalAccuracy](self->_location, "verticalAccuracy"), v11 = v10, [v6[14] verticalAccuracy], v11 == v12) && (-[CLLocation horizontalAccuracy](self->_location, "horizontalAccuracy"), v14 = v13, objc_msgSend(v6[14], "horizontalAccuracy"), v14 == v15) && FKEqualObjects(self->_merchantIdentifier, v6[15]) && FKEqualObjects(self->_merchantRawCANL, v6[16]) && FKEqualObjects(self->_merchantRawCity, v6[17]) && FKEqualObjects(self->_merchantRawState, v6[18]) && FKEqualObjects(self->_merchantRawCountry, v6[19]) && FKEqualObjects(self->_merchantCity, v6[20]) && FKEqualObjects(self->_merchantZip, v6[21]) && FKEqualObjects(self->_merchantState, v6[22]) && FKEqualObjects(self->_merchantCleanConfidenceLevel, v6[23]) && FKEqualObjects(self->_rewardsAmount, v6[24]) && FKEqualObjects(self->_rewardsCurrency, v6[25]) && FKEqualObjects(self->_rewardsEligibilityReason, v6[26]) && FKEqualObjects(self->_adamIdentifier, v6[27]) && FKEqualObjects(self->_webURL, v6[28]) && FKEqualObjects(self->_webMerchantIdentifier, v6[29]) && FKEqualObjects(self->_webMerchantName, v6[30]) && FKEqualObjects(self->_isIssuerInstallmentTransaction, v6[31]))
      {
        v16 = FKEqualObjects(self->_issuerInstallmentManagementURL, v6[32]);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end