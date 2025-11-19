@interface FKApplePayTransactionInsight
- (BOOL)isEqual:(id)a3;
- (FKApplePayTransactionInsight)initWithPaymentHash:(id)a3 transactionDate:(id)a4 merchantName:(id)a5 merchantRawName:(id)a6 industryCategory:(id)a7 industryCode:(id)a8 merchantType:(id)a9 merchantCountryCode:(id)a10 terminalIdentifier:(id)a11 merchantAdditionalData:(id)a12 paymentNetwork:(id)a13 isMerchantTokenTransaction:(id)a14 isCoarseLocation:(id)a15 location:(id)a16 merchantIdentifier:(id)a17 merchantRawCANL:(id)a18 merchantRawCity:(id)a19 merchantRawState:(id)a20 merchantRawCountry:(id)a21 merchantCity:(id)a22 merchantZip:(id)a23 merchantState:(id)a24 merchantCleanConfidenceLevel:(id)a25 rewardsAmount:(id)a26 rewardsCurrency:(id)a27 rewardsEligibilityReason:(id)a28 adamIdentifier:(id)a29 webURL:(id)a30 webMerchantIdentifier:(id)a31 webMerchantName:(id)a32 isIssuerInstallmentTransaction:(id)a33 issuerInstallmentManagementURL:(id)a34;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKApplePayTransactionInsight

- (FKApplePayTransactionInsight)initWithPaymentHash:(id)a3 transactionDate:(id)a4 merchantName:(id)a5 merchantRawName:(id)a6 industryCategory:(id)a7 industryCode:(id)a8 merchantType:(id)a9 merchantCountryCode:(id)a10 terminalIdentifier:(id)a11 merchantAdditionalData:(id)a12 paymentNetwork:(id)a13 isMerchantTokenTransaction:(id)a14 isCoarseLocation:(id)a15 location:(id)a16 merchantIdentifier:(id)a17 merchantRawCANL:(id)a18 merchantRawCity:(id)a19 merchantRawState:(id)a20 merchantRawCountry:(id)a21 merchantCity:(id)a22 merchantZip:(id)a23 merchantState:(id)a24 merchantCleanConfidenceLevel:(id)a25 rewardsAmount:(id)a26 rewardsCurrency:(id)a27 rewardsEligibilityReason:(id)a28 adamIdentifier:(id)a29 webURL:(id)a30 webMerchantIdentifier:(id)a31 webMerchantName:(id)a32 isIssuerInstallmentTransaction:(id)a33 issuerInstallmentManagementURL:(id)a34
{
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v139 = a6;
  v138 = a7;
  v137 = a8;
  v42 = v40;
  v136 = a9;
  v135 = a10;
  v134 = a11;
  v43 = v41;
  v133 = a12;
  v132 = a13;
  v131 = a14;
  v130 = a15;
  v129 = a16;
  v128 = a17;
  v127 = a18;
  v126 = a19;
  v125 = a20;
  v124 = a21;
  v123 = a22;
  v122 = a23;
  v121 = a24;
  v120 = a25;
  v119 = a26;
  v118 = a27;
  v117 = a28;
  v44 = a29;
  v45 = a30;
  v46 = a31;
  v47 = a32;
  v48 = a33;
  v49 = a34;
  v140.receiver = self;
  v140.super_class = FKApplePayTransactionInsight;
  v50 = [(FKApplePayTransactionInsight *)&v140 init];
  if (v50)
  {
    v51 = [v39 copy];
    paymentHash = v50->_paymentHash;
    v50->_paymentHash = v51;

    v53 = [v42 copy];
    transactionDate = v50->_transactionDate;
    v50->_transactionDate = v53;

    v55 = [v43 copy];
    merchantName = v50->_merchantName;
    v50->_merchantName = v55;

    v57 = [v139 copy];
    merchantRawName = v50->_merchantRawName;
    v50->_merchantRawName = v57;

    v59 = [v138 copy];
    industryCategory = v50->_industryCategory;
    v50->_industryCategory = v59;

    v61 = [v137 copy];
    industryCode = v50->_industryCode;
    v50->_industryCode = v61;

    v63 = [v136 copy];
    merchantType = v50->_merchantType;
    v50->_merchantType = v63;

    v65 = [v135 copy];
    merchantCountryCode = v50->_merchantCountryCode;
    v50->_merchantCountryCode = v65;

    v67 = [v134 copy];
    terminalIdentifier = v50->_terminalIdentifier;
    v50->_terminalIdentifier = v67;

    v69 = [v133 copy];
    merchantAdditionalData = v50->_merchantAdditionalData;
    v50->_merchantAdditionalData = v69;

    v71 = [v132 copy];
    paymentNetwork = v50->_paymentNetwork;
    v50->_paymentNetwork = v71;

    v73 = [v131 copy];
    isMerchantTokenTransaction = v50->_isMerchantTokenTransaction;
    v50->_isMerchantTokenTransaction = v73;

    v75 = [v130 copy];
    isCoarseLocation = v50->_isCoarseLocation;
    v50->_isCoarseLocation = v75;

    v77 = [v129 copy];
    location = v50->_location;
    v50->_location = v77;

    v79 = [v128 copy];
    merchantIdentifier = v50->_merchantIdentifier;
    v50->_merchantIdentifier = v79;

    v81 = [v127 copy];
    merchantRawCANL = v50->_merchantRawCANL;
    v50->_merchantRawCANL = v81;

    v83 = [v126 copy];
    merchantRawCity = v50->_merchantRawCity;
    v50->_merchantRawCity = v83;

    v85 = [v125 copy];
    merchantRawState = v50->_merchantRawState;
    v50->_merchantRawState = v85;

    v87 = [v124 copy];
    merchantRawCountry = v50->_merchantRawCountry;
    v50->_merchantRawCountry = v87;

    v89 = [v123 copy];
    merchantCity = v50->_merchantCity;
    v50->_merchantCity = v89;

    v91 = [v122 copy];
    merchantZip = v50->_merchantZip;
    v50->_merchantZip = v91;

    v93 = [v121 copy];
    merchantState = v50->_merchantState;
    v50->_merchantState = v93;

    v95 = [v120 copy];
    merchantCleanConfidenceLevel = v50->_merchantCleanConfidenceLevel;
    v50->_merchantCleanConfidenceLevel = v95;

    v97 = [v119 copy];
    rewardsAmount = v50->_rewardsAmount;
    v50->_rewardsAmount = v97;

    v99 = [v118 copy];
    rewardsCurrency = v50->_rewardsCurrency;
    v50->_rewardsCurrency = v99;

    v101 = [v117 copy];
    rewardsEligibilityReason = v50->_rewardsEligibilityReason;
    v50->_rewardsEligibilityReason = v101;

    v103 = [v44 copy];
    adamIdentifier = v50->_adamIdentifier;
    v50->_adamIdentifier = v103;

    v105 = [v45 copy];
    webURL = v50->_webURL;
    v50->_webURL = v105;

    v107 = [v46 copy];
    webMerchantIdentifier = v50->_webMerchantIdentifier;
    v50->_webMerchantIdentifier = v107;

    v109 = [v47 copy];
    webMerchantName = v50->_webMerchantName;
    v50->_webMerchantName = v109;

    v111 = [v48 copy];
    isIssuerInstallmentTransaction = v50->_isIssuerInstallmentTransaction;
    v50->_isIssuerInstallmentTransaction = v111;

    v113 = [v49 copy];
    issuerInstallmentManagementURL = v50->_issuerInstallmentManagementURL;
    v50->_issuerInstallmentManagementURL = v113;
  }

  return v50;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSDate *)self->_transactionDate copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_paymentHash copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_merchantName copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_merchantRawName copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_industryCategory copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSNumber *)self->_industryCode copyWithZone:a3];
  v17 = v5[6];
  v5[6] = v16;

  v18 = [(NSString *)self->_merchantType copyWithZone:a3];
  v19 = v5[7];
  v5[7] = v18;

  v20 = [(NSString *)self->_merchantCountryCode copyWithZone:a3];
  v21 = v5[8];
  v5[8] = v20;

  v22 = [(NSString *)self->_terminalIdentifier copyWithZone:a3];
  v23 = v5[9];
  v5[9] = v22;

  v24 = [(NSString *)self->_merchantAdditionalData copyWithZone:a3];
  v25 = v5[10];
  v5[10] = v24;

  v26 = [(NSString *)self->_paymentNetwork copyWithZone:a3];
  v27 = v5[11];
  v5[11] = v26;

  v28 = [(NSNumber *)self->_isMerchantTokenTransaction copyWithZone:a3];
  v29 = v5[12];
  v5[12] = v28;

  v30 = [(NSNumber *)self->_isCoarseLocation copyWithZone:a3];
  v31 = v5[13];
  v5[13] = v30;

  v32 = [(CLLocation *)self->_location copyWithZone:a3];
  v33 = v5[14];
  v5[14] = v32;

  v34 = [(NSString *)self->_merchantIdentifier copyWithZone:a3];
  v35 = v5[15];
  v5[15] = v34;

  v36 = [(NSString *)self->_merchantRawCANL copyWithZone:a3];
  v37 = v5[16];
  v5[16] = v36;

  v38 = [(NSString *)self->_merchantRawCity copyWithZone:a3];
  v39 = v5[17];
  v5[17] = v38;

  v40 = [(NSString *)self->_merchantRawState copyWithZone:a3];
  v41 = v5[18];
  v5[18] = v40;

  v42 = [(NSString *)self->_merchantRawCountry copyWithZone:a3];
  v43 = v5[19];
  v5[19] = v42;

  v44 = [(NSString *)self->_merchantCity copyWithZone:a3];
  v45 = v5[20];
  v5[20] = v44;

  v46 = [(NSString *)self->_merchantZip copyWithZone:a3];
  v47 = v5[21];
  v5[21] = v46;

  v48 = [(NSString *)self->_merchantState copyWithZone:a3];
  v49 = v5[22];
  v5[22] = v48;

  v50 = [(NSNumber *)self->_merchantCleanConfidenceLevel copyWithZone:a3];
  v51 = v5[23];
  v5[23] = v50;

  v52 = [(NSDecimalNumber *)self->_rewardsAmount copyWithZone:a3];
  v53 = v5[24];
  v5[24] = v52;

  v54 = [(NSString *)self->_rewardsCurrency copyWithZone:a3];
  v55 = v5[25];
  v5[25] = v54;

  v56 = [(NSNumber *)self->_rewardsEligibilityReason copyWithZone:a3];
  v57 = v5[26];
  v5[26] = v56;

  v58 = [(NSNumber *)self->_adamIdentifier copyWithZone:a3];
  v59 = v5[27];
  v5[27] = v58;

  v60 = [(NSURL *)self->_webURL copyWithZone:a3];
  v61 = v5[28];
  v5[28] = v60;

  v62 = [(NSString *)self->_webMerchantIdentifier copyWithZone:a3];
  v63 = v5[29];
  v5[29] = v62;

  v64 = [(NSString *)self->_webMerchantName copyWithZone:a3];
  v65 = v5[30];
  v5[30] = v64;

  v66 = [(NSNumber *)self->_isIssuerInstallmentTransaction copyWithZone:a3];
  v67 = v5[31];
  v5[31] = v66;

  v68 = [(NSURL *)self->_issuerInstallmentManagementURL copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v16 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (FKEqualObjects(self->_paymentHash, v6[1]) && FKEqualObjects(self->_transactionDate, v6[2]) && FKEqualObjects(self->_merchantName, v6[3]) && FKEqualObjects(self->_merchantRawName, v6[4]) && FKEqualObjects(self->_industryCategory, v6[5]) && FKEqualObjects(self->_industryCode, v6[6]) && FKEqualObjects(self->_merchantType, v6[7]) && FKEqualObjects(self->_merchantCountryCode, v6[8]) && FKEqualObjects(self->_terminalIdentifier, v6[9]) && FKEqualObjects(self->_merchantAdditionalData, v6[10]) && FKEqualObjects(self->_paymentNetwork, v6[11]) && FKEqualObjects(self->_isMerchantTokenTransaction, v6[12]) && FKEqualObjects(self->_isCoarseLocation, v6[13]) && ([(CLLocation *)self->_location distanceFromLocation:v6[14]], v7 == 0.0))
    {
      v8 = [(CLLocation *)self->_location timestamp];
      v9 = [v6[14] timestamp];
      if (FKEqualObjects(v8, v9) && (-[CLLocation verticalAccuracy](self->_location, "verticalAccuracy"), v11 = v10, [v6[14] verticalAccuracy], v11 == v12) && (-[CLLocation horizontalAccuracy](self->_location, "horizontalAccuracy"), v14 = v13, objc_msgSend(v6[14], "horizontalAccuracy"), v14 == v15) && FKEqualObjects(self->_merchantIdentifier, v6[15]) && FKEqualObjects(self->_merchantRawCANL, v6[16]) && FKEqualObjects(self->_merchantRawCity, v6[17]) && FKEqualObjects(self->_merchantRawState, v6[18]) && FKEqualObjects(self->_merchantRawCountry, v6[19]) && FKEqualObjects(self->_merchantCity, v6[20]) && FKEqualObjects(self->_merchantZip, v6[21]) && FKEqualObjects(self->_merchantState, v6[22]) && FKEqualObjects(self->_merchantCleanConfidenceLevel, v6[23]) && FKEqualObjects(self->_rewardsAmount, v6[24]) && FKEqualObjects(self->_rewardsCurrency, v6[25]) && FKEqualObjects(self->_rewardsEligibilityReason, v6[26]) && FKEqualObjects(self->_adamIdentifier, v6[27]) && FKEqualObjects(self->_webURL, v6[28]) && FKEqualObjects(self->_webMerchantIdentifier, v6[29]) && FKEqualObjects(self->_webMerchantName, v6[30]) && FKEqualObjects(self->_isIssuerInstallmentTransaction, v6[31]))
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