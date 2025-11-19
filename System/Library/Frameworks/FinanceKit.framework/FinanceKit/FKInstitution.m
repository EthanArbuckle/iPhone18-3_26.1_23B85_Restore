@interface FKInstitution
- (BOOL)isEqual:(id)a3;
- (FKInstitution)initWithInstitutionIdentifier:(id)a3 name:(id)a4 reconsentType:(unint64_t)a5 supportedAuthTypes:(signed __int16)a6 firstTransactionsRequestWindow:(id)a7 maxAgeTransactionsFirstRequest:(double)a8 maxAgeTransactionsRefreshRequest:(double)a9 extensionsBundleIdentifiers:(id)a10 maximumNumberOfBackgroundRefreshes:(int64_t)a11 numberOfRemainingBackgroundRefreshes:(int64_t)a12 backgroundRefreshRetryAfterDate:(id)a13 lastBackgroundRefreshDate:(id)a14 backgroundRefreshConfirmationWindow:(id)a15 backgroundRefreshConfirmationExpiryWindow:(id)a16 multipleConsentsEnabled:(BOOL)a17 termsAndConditions:(id)a18 problemReportingEnabled:(BOOL)a19 financialLabEnabled:(BOOL)a20 consentSyncingEnabled:(BOOL)a21 balanceWidgetEnabled:(BOOL)a22 personalizedInsightsEnabled:(BOOL)a23 supportsTransactions:(BOOL)a24 consentSyncingOutdatedTokenWaitTimeout:(id)a25 timestampSuitableForUserDisplay:(BOOL)a26 piiRedactionConfigurationCountryCodes:(id)a27 privacyLabels:(signed __int16)a28;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FKInstitution

- (FKInstitution)initWithInstitutionIdentifier:(id)a3 name:(id)a4 reconsentType:(unint64_t)a5 supportedAuthTypes:(signed __int16)a6 firstTransactionsRequestWindow:(id)a7 maxAgeTransactionsFirstRequest:(double)a8 maxAgeTransactionsRefreshRequest:(double)a9 extensionsBundleIdentifiers:(id)a10 maximumNumberOfBackgroundRefreshes:(int64_t)a11 numberOfRemainingBackgroundRefreshes:(int64_t)a12 backgroundRefreshRetryAfterDate:(id)a13 lastBackgroundRefreshDate:(id)a14 backgroundRefreshConfirmationWindow:(id)a15 backgroundRefreshConfirmationExpiryWindow:(id)a16 multipleConsentsEnabled:(BOOL)a17 termsAndConditions:(id)a18 problemReportingEnabled:(BOOL)a19 financialLabEnabled:(BOOL)a20 consentSyncingEnabled:(BOOL)a21 balanceWidgetEnabled:(BOOL)a22 personalizedInsightsEnabled:(BOOL)a23 supportsTransactions:(BOOL)a24 consentSyncingOutdatedTokenWaitTimeout:(id)a25 timestampSuitableForUserDisplay:(BOOL)a26 piiRedactionConfigurationCountryCodes:(id)a27 privacyLabels:(signed __int16)a28
{
  v70 = a3;
  v69 = a4;
  v68 = a7;
  v67 = a10;
  v33 = a13;
  v34 = a14;
  v35 = a15;
  v36 = a16;
  v37 = a18;
  v38 = a25;
  v39 = a27;
  v71.receiver = self;
  v71.super_class = FKInstitution;
  v40 = [(FKInstitution *)&v71 init];
  if (v40)
  {
    v41 = [v70 copy];
    institutionIdentifier = v40->_institutionIdentifier;
    v40->_institutionIdentifier = v41;

    v43 = [v69 copy];
    name = v40->_name;
    v40->_name = v43;

    v40->_reconsentType = a5;
    v40->_supportedAuthTypes = a6;
    v45 = [v68 copy];
    firstTransactionsRequestWindow = v40->_firstTransactionsRequestWindow;
    v40->_firstTransactionsRequestWindow = v45;

    v40->_maxAgeTransactionsFirstRequest = a8;
    v40->_maxAgeTransactionsRefreshRequest = a9;
    v47 = [v67 copy];
    extensionsBundleIdentifiers = v40->_extensionsBundleIdentifiers;
    v40->_extensionsBundleIdentifiers = v47;

    v40->_maximumNumberOfBackgroundRefreshes = a11;
    v40->_numberOfRemainingBackgroundRefreshes = a12;
    v49 = [v33 copy];
    backgroundRefreshRetryAfterDate = v40->_backgroundRefreshRetryAfterDate;
    v40->_backgroundRefreshRetryAfterDate = v49;

    v51 = [v34 copy];
    lastBackgroundRefreshDate = v40->_lastBackgroundRefreshDate;
    v40->_lastBackgroundRefreshDate = v51;

    v53 = [v35 copy];
    backgroundRefreshConfirmationWindow = v40->_backgroundRefreshConfirmationWindow;
    v40->_backgroundRefreshConfirmationWindow = v53;

    v55 = [v36 copy];
    backgroundRefreshConfirmationExpiryWindow = v40->_backgroundRefreshConfirmationExpiryWindow;
    v40->_backgroundRefreshConfirmationExpiryWindow = v55;

    v40->_multipleConsentsEnabled = a17;
    v57 = [v37 copy];
    termsAndConditions = v40->_termsAndConditions;
    v40->_termsAndConditions = v57;

    v40->_problemReportingEnabled = a19;
    v40->_financialLabEnabled = a20;
    v40->_consentSyncingEnabled = a21;
    v40->_balanceWidgetEnabled = a22;
    v40->_personalizedInsightsEnabled = a23;
    v40->_supportsTransactions = a24;
    v59 = [v38 copy];
    consentSyncingOutdatedTokenWaitTimeout = v40->_consentSyncingOutdatedTokenWaitTimeout;
    v40->_consentSyncingOutdatedTokenWaitTimeout = v59;

    v40->_timestampSuitableForUserDisplay = a26;
    v61 = [v39 copy];
    piiRedactionConfigurationCountryCodes = v40->_piiRedactionConfigurationCountryCodes;
    v40->_piiRedactionConfigurationCountryCodes = v61;

    v40->_privacyLabels = a28;
  }

  return v40;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(FKInstitution);
  v6 = [(NSString *)self->_institutionIdentifier copyWithZone:a3];
  institutionIdentifier = v5->_institutionIdentifier;
  v5->_institutionIdentifier = v6;

  v8 = [(NSString *)self->_name copyWithZone:a3];
  name = v5->_name;
  v5->_name = v8;

  v5->_reconsentType = self->_reconsentType;
  v5->_supportedAuthTypes = self->_supportedAuthTypes;
  v10 = [(NSNumber *)self->_firstTransactionsRequestWindow copyWithZone:a3];
  firstTransactionsRequestWindow = v5->_firstTransactionsRequestWindow;
  v5->_firstTransactionsRequestWindow = v10;

  v5->_maxAgeTransactionsFirstRequest = self->_maxAgeTransactionsFirstRequest;
  v5->_maxAgeTransactionsRefreshRequest = self->_maxAgeTransactionsRefreshRequest;
  v12 = [(NSArray *)self->_extensionsBundleIdentifiers copyWithZone:a3];
  extensionsBundleIdentifiers = v5->_extensionsBundleIdentifiers;
  v5->_extensionsBundleIdentifiers = v12;

  v5->_maximumNumberOfBackgroundRefreshes = self->_maximumNumberOfBackgroundRefreshes;
  v5->_numberOfRemainingBackgroundRefreshes = self->_numberOfRemainingBackgroundRefreshes;
  v14 = [(NSDate *)self->_backgroundRefreshRetryAfterDate copyWithZone:a3];
  backgroundRefreshRetryAfterDate = v5->_backgroundRefreshRetryAfterDate;
  v5->_backgroundRefreshRetryAfterDate = v14;

  v16 = [(NSDate *)self->_lastBackgroundRefreshDate copyWithZone:a3];
  lastBackgroundRefreshDate = v5->_lastBackgroundRefreshDate;
  v5->_lastBackgroundRefreshDate = v16;

  v18 = [(NSNumber *)self->_backgroundRefreshConfirmationWindow copyWithZone:a3];
  backgroundRefreshConfirmationWindow = v5->_backgroundRefreshConfirmationWindow;
  v5->_backgroundRefreshConfirmationWindow = v18;

  v20 = [(NSNumber *)self->_backgroundRefreshConfirmationExpiryWindow copyWithZone:a3];
  backgroundRefreshConfirmationExpiryWindow = v5->_backgroundRefreshConfirmationExpiryWindow;
  v5->_backgroundRefreshConfirmationExpiryWindow = v20;

  v5->_multipleConsentsEnabled = self->_multipleConsentsEnabled;
  v22 = [(FKBankConnectTermsAndConditions *)self->_termsAndConditions copyWithZone:a3];
  termsAndConditions = v5->_termsAndConditions;
  v5->_termsAndConditions = v22;

  v5->_problemReportingEnabled = self->_problemReportingEnabled;
  v5->_financialLabEnabled = self->_financialLabEnabled;
  v5->_consentSyncingEnabled = self->_consentSyncingEnabled;
  v5->_balanceWidgetEnabled = self->_balanceWidgetEnabled;
  v5->_personalizedInsightsEnabled = self->_personalizedInsightsEnabled;
  v5->_supportsTransactions = self->_supportsTransactions;
  v24 = [(NSNumber *)self->_consentSyncingOutdatedTokenWaitTimeout copyWithZone:a3];
  consentSyncingOutdatedTokenWaitTimeout = v5->_consentSyncingOutdatedTokenWaitTimeout;
  v5->_consentSyncingOutdatedTokenWaitTimeout = v24;

  v5->_timestampSuitableForUserDisplay = self->_timestampSuitableForUserDisplay;
  v26 = [(NSSet *)self->_piiRedactionConfigurationCountryCodes copyWithZone:a3];
  piiRedactionConfigurationCountryCodes = v5->_piiRedactionConfigurationCountryCodes;
  v5->_piiRedactionConfigurationCountryCodes = v26;

  v5->_privacyLabels = self->_privacyLabels;
  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_institutionIdentifier];
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_extensionsBundleIdentifiers];
  [v3 safelyAddObject:self->_firstTransactionsRequestWindow];
  [v3 safelyAddObject:self->_backgroundRefreshConfirmationWindow];
  [v3 safelyAddObject:self->_backgroundRefreshConfirmationExpiryWindow];
  [v3 safelyAddObject:self->_termsAndConditions];
  [v3 safelyAddObject:self->_piiRedactionConfigurationCountryCodes];
  [v3 safelyAddObject:self->_backgroundRefreshRetryAfterDate];
  [v3 safelyAddObject:self->_lastBackgroundRefreshDate];
  [v3 safelyAddObject:self->_consentSyncingOutdatedTokenWaitTimeout];
  v4 = FKCombinedHash(17, v3);
  v5 = FKIntegerHash(v4, self->_reconsentType);
  v6 = FKIntegerHash(v5, self->_supportedAuthTypes);
  v7 = FKIntegerHash(v6, self->_maxAgeTransactionsFirstRequest);
  v8 = FKIntegerHash(v7, self->_maxAgeTransactionsRefreshRequest);
  v9 = FKIntegerHash(v8, self->_multipleConsentsEnabled);
  v10 = FKIntegerHash(v9, self->_problemReportingEnabled);
  v11 = FKIntegerHash(v10, self->_financialLabEnabled);
  v12 = FKIntegerHash(v11, self->_consentSyncingEnabled);
  v13 = FKIntegerHash(v12, self->_balanceWidgetEnabled);
  v14 = FKIntegerHash(v13, self->_personalizedInsightsEnabled);
  v15 = FKIntegerHash(v14, self->_supportsTransactions);
  v16 = FKIntegerHash(v15, self->_timestampSuitableForUserDisplay);
  v17 = FKIntegerHash(v16, self->_privacyLabels);
  v18 = FKIntegerHash(v17, self->_maximumNumberOfBackgroundRefreshes);
  v19 = FKIntegerHash(v18, self->_numberOfRemainingBackgroundRefreshes);

  return v19;
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
    v7 = FKEqualObjects(self->_institutionIdentifier, v6[3]) && FKEqualObjects(self->_name, v6[4]) && FKEqualObjects(self->_extensionsBundleIdentifiers, v6[9]) && FKEqualObjects(self->_firstTransactionsRequestWindow, v6[6]) && FKEqualObjects(self->_backgroundRefreshConfirmationWindow, v6[14]) && FKEqualObjects(self->_backgroundRefreshConfirmationExpiryWindow, v6[15]) && FKEqualObjects(self->_termsAndConditions, v6[16]) && FKEqualObjects(self->_piiRedactionConfigurationCountryCodes, v6[18]) && FKEqualObjects(self->_backgroundRefreshRetryAfterDate, v6[12]) && FKEqualObjects(self->_lastBackgroundRefreshDate, v6[13]) && FKEqualObjects(self->_consentSyncingOutdatedTokenWaitTimeout, v6[17]) && self->_reconsentType == v6[5] && self->_supportedAuthTypes == *(v6 + 8) && self->_maxAgeTransactionsFirstRequest == *(v6 + 7) && self->_maxAgeTransactionsRefreshRequest == *(v6 + 8) && self->_multipleConsentsEnabled == *(v6 + 8) && self->_problemReportingEnabled == *(v6 + 9) && self->_financialLabEnabled == *(v6 + 10) && self->_consentSyncingEnabled == *(v6 + 11) && self->_balanceWidgetEnabled == *(v6 + 12) && self->_personalizedInsightsEnabled == *(v6 + 13) && self->_supportsTransactions == *(v6 + 14) && self->_timestampSuitableForUserDisplay == *(v6 + 15) && self->_privacyLabels == *(v6 + 9) && self->_maximumNumberOfBackgroundRefreshes == v6[10] && self->_numberOfRemainingBackgroundRefreshes == v6[11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end