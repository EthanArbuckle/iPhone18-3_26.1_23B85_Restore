@interface FKInstitution
- (BOOL)isEqual:(id)equal;
- (FKInstitution)initWithInstitutionIdentifier:(id)identifier name:(id)name reconsentType:(unint64_t)type supportedAuthTypes:(signed __int16)types firstTransactionsRequestWindow:(id)window maxAgeTransactionsFirstRequest:(double)request maxAgeTransactionsRefreshRequest:(double)refreshRequest extensionsBundleIdentifiers:(id)self0 maximumNumberOfBackgroundRefreshes:(int64_t)self1 numberOfRemainingBackgroundRefreshes:(int64_t)self2 backgroundRefreshRetryAfterDate:(id)self3 lastBackgroundRefreshDate:(id)self4 backgroundRefreshConfirmationWindow:(id)self5 backgroundRefreshConfirmationExpiryWindow:(id)self6 multipleConsentsEnabled:(BOOL)self7 termsAndConditions:(id)self8 problemReportingEnabled:(BOOL)self9 financialLabEnabled:(BOOL)labEnabled consentSyncingEnabled:(BOOL)syncingEnabled balanceWidgetEnabled:(BOOL)widgetEnabled personalizedInsightsEnabled:(BOOL)insightsEnabled supportsTransactions:(BOOL)transactions consentSyncingOutdatedTokenWaitTimeout:(id)timeout timestampSuitableForUserDisplay:(BOOL)display piiRedactionConfigurationCountryCodes:(id)codes privacyLabels:(signed __int16)labels;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKInstitution

- (FKInstitution)initWithInstitutionIdentifier:(id)identifier name:(id)name reconsentType:(unint64_t)type supportedAuthTypes:(signed __int16)types firstTransactionsRequestWindow:(id)window maxAgeTransactionsFirstRequest:(double)request maxAgeTransactionsRefreshRequest:(double)refreshRequest extensionsBundleIdentifiers:(id)self0 maximumNumberOfBackgroundRefreshes:(int64_t)self1 numberOfRemainingBackgroundRefreshes:(int64_t)self2 backgroundRefreshRetryAfterDate:(id)self3 lastBackgroundRefreshDate:(id)self4 backgroundRefreshConfirmationWindow:(id)self5 backgroundRefreshConfirmationExpiryWindow:(id)self6 multipleConsentsEnabled:(BOOL)self7 termsAndConditions:(id)self8 problemReportingEnabled:(BOOL)self9 financialLabEnabled:(BOOL)labEnabled consentSyncingEnabled:(BOOL)syncingEnabled balanceWidgetEnabled:(BOOL)widgetEnabled personalizedInsightsEnabled:(BOOL)insightsEnabled supportsTransactions:(BOOL)transactions consentSyncingOutdatedTokenWaitTimeout:(id)timeout timestampSuitableForUserDisplay:(BOOL)display piiRedactionConfigurationCountryCodes:(id)codes privacyLabels:(signed __int16)labels
{
  identifierCopy = identifier;
  nameCopy = name;
  windowCopy = window;
  identifiersCopy = identifiers;
  dateCopy = date;
  refreshDateCopy = refreshDate;
  confirmationWindowCopy = confirmationWindow;
  expiryWindowCopy = expiryWindow;
  conditionsCopy = conditions;
  timeoutCopy = timeout;
  codesCopy = codes;
  v71.receiver = self;
  v71.super_class = FKInstitution;
  v40 = [(FKInstitution *)&v71 init];
  if (v40)
  {
    v41 = [identifierCopy copy];
    institutionIdentifier = v40->_institutionIdentifier;
    v40->_institutionIdentifier = v41;

    v43 = [nameCopy copy];
    name = v40->_name;
    v40->_name = v43;

    v40->_reconsentType = type;
    v40->_supportedAuthTypes = types;
    v45 = [windowCopy copy];
    firstTransactionsRequestWindow = v40->_firstTransactionsRequestWindow;
    v40->_firstTransactionsRequestWindow = v45;

    v40->_maxAgeTransactionsFirstRequest = request;
    v40->_maxAgeTransactionsRefreshRequest = refreshRequest;
    v47 = [identifiersCopy copy];
    extensionsBundleIdentifiers = v40->_extensionsBundleIdentifiers;
    v40->_extensionsBundleIdentifiers = v47;

    v40->_maximumNumberOfBackgroundRefreshes = refreshes;
    v40->_numberOfRemainingBackgroundRefreshes = backgroundRefreshes;
    v49 = [dateCopy copy];
    backgroundRefreshRetryAfterDate = v40->_backgroundRefreshRetryAfterDate;
    v40->_backgroundRefreshRetryAfterDate = v49;

    v51 = [refreshDateCopy copy];
    lastBackgroundRefreshDate = v40->_lastBackgroundRefreshDate;
    v40->_lastBackgroundRefreshDate = v51;

    v53 = [confirmationWindowCopy copy];
    backgroundRefreshConfirmationWindow = v40->_backgroundRefreshConfirmationWindow;
    v40->_backgroundRefreshConfirmationWindow = v53;

    v55 = [expiryWindowCopy copy];
    backgroundRefreshConfirmationExpiryWindow = v40->_backgroundRefreshConfirmationExpiryWindow;
    v40->_backgroundRefreshConfirmationExpiryWindow = v55;

    v40->_multipleConsentsEnabled = enabled;
    v57 = [conditionsCopy copy];
    termsAndConditions = v40->_termsAndConditions;
    v40->_termsAndConditions = v57;

    v40->_problemReportingEnabled = reportingEnabled;
    v40->_financialLabEnabled = labEnabled;
    v40->_consentSyncingEnabled = syncingEnabled;
    v40->_balanceWidgetEnabled = widgetEnabled;
    v40->_personalizedInsightsEnabled = insightsEnabled;
    v40->_supportsTransactions = transactions;
    v59 = [timeoutCopy copy];
    consentSyncingOutdatedTokenWaitTimeout = v40->_consentSyncingOutdatedTokenWaitTimeout;
    v40->_consentSyncingOutdatedTokenWaitTimeout = v59;

    v40->_timestampSuitableForUserDisplay = display;
    v61 = [codesCopy copy];
    piiRedactionConfigurationCountryCodes = v40->_piiRedactionConfigurationCountryCodes;
    v40->_piiRedactionConfigurationCountryCodes = v61;

    v40->_privacyLabels = labels;
  }

  return v40;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(FKInstitution);
  v6 = [(NSString *)self->_institutionIdentifier copyWithZone:zone];
  institutionIdentifier = v5->_institutionIdentifier;
  v5->_institutionIdentifier = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  name = v5->_name;
  v5->_name = v8;

  v5->_reconsentType = self->_reconsentType;
  v5->_supportedAuthTypes = self->_supportedAuthTypes;
  v10 = [(NSNumber *)self->_firstTransactionsRequestWindow copyWithZone:zone];
  firstTransactionsRequestWindow = v5->_firstTransactionsRequestWindow;
  v5->_firstTransactionsRequestWindow = v10;

  v5->_maxAgeTransactionsFirstRequest = self->_maxAgeTransactionsFirstRequest;
  v5->_maxAgeTransactionsRefreshRequest = self->_maxAgeTransactionsRefreshRequest;
  v12 = [(NSArray *)self->_extensionsBundleIdentifiers copyWithZone:zone];
  extensionsBundleIdentifiers = v5->_extensionsBundleIdentifiers;
  v5->_extensionsBundleIdentifiers = v12;

  v5->_maximumNumberOfBackgroundRefreshes = self->_maximumNumberOfBackgroundRefreshes;
  v5->_numberOfRemainingBackgroundRefreshes = self->_numberOfRemainingBackgroundRefreshes;
  v14 = [(NSDate *)self->_backgroundRefreshRetryAfterDate copyWithZone:zone];
  backgroundRefreshRetryAfterDate = v5->_backgroundRefreshRetryAfterDate;
  v5->_backgroundRefreshRetryAfterDate = v14;

  v16 = [(NSDate *)self->_lastBackgroundRefreshDate copyWithZone:zone];
  lastBackgroundRefreshDate = v5->_lastBackgroundRefreshDate;
  v5->_lastBackgroundRefreshDate = v16;

  v18 = [(NSNumber *)self->_backgroundRefreshConfirmationWindow copyWithZone:zone];
  backgroundRefreshConfirmationWindow = v5->_backgroundRefreshConfirmationWindow;
  v5->_backgroundRefreshConfirmationWindow = v18;

  v20 = [(NSNumber *)self->_backgroundRefreshConfirmationExpiryWindow copyWithZone:zone];
  backgroundRefreshConfirmationExpiryWindow = v5->_backgroundRefreshConfirmationExpiryWindow;
  v5->_backgroundRefreshConfirmationExpiryWindow = v20;

  v5->_multipleConsentsEnabled = self->_multipleConsentsEnabled;
  v22 = [(FKBankConnectTermsAndConditions *)self->_termsAndConditions copyWithZone:zone];
  termsAndConditions = v5->_termsAndConditions;
  v5->_termsAndConditions = v22;

  v5->_problemReportingEnabled = self->_problemReportingEnabled;
  v5->_financialLabEnabled = self->_financialLabEnabled;
  v5->_consentSyncingEnabled = self->_consentSyncingEnabled;
  v5->_balanceWidgetEnabled = self->_balanceWidgetEnabled;
  v5->_personalizedInsightsEnabled = self->_personalizedInsightsEnabled;
  v5->_supportsTransactions = self->_supportsTransactions;
  v24 = [(NSNumber *)self->_consentSyncingOutdatedTokenWaitTimeout copyWithZone:zone];
  consentSyncingOutdatedTokenWaitTimeout = v5->_consentSyncingOutdatedTokenWaitTimeout;
  v5->_consentSyncingOutdatedTokenWaitTimeout = v24;

  v5->_timestampSuitableForUserDisplay = self->_timestampSuitableForUserDisplay;
  v26 = [(NSSet *)self->_piiRedactionConfigurationCountryCodes copyWithZone:zone];
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
    v7 = FKEqualObjects(self->_institutionIdentifier, v6[3]) && FKEqualObjects(self->_name, v6[4]) && FKEqualObjects(self->_extensionsBundleIdentifiers, v6[9]) && FKEqualObjects(self->_firstTransactionsRequestWindow, v6[6]) && FKEqualObjects(self->_backgroundRefreshConfirmationWindow, v6[14]) && FKEqualObjects(self->_backgroundRefreshConfirmationExpiryWindow, v6[15]) && FKEqualObjects(self->_termsAndConditions, v6[16]) && FKEqualObjects(self->_piiRedactionConfigurationCountryCodes, v6[18]) && FKEqualObjects(self->_backgroundRefreshRetryAfterDate, v6[12]) && FKEqualObjects(self->_lastBackgroundRefreshDate, v6[13]) && FKEqualObjects(self->_consentSyncingOutdatedTokenWaitTimeout, v6[17]) && self->_reconsentType == v6[5] && self->_supportedAuthTypes == *(v6 + 8) && self->_maxAgeTransactionsFirstRequest == *(v6 + 7) && self->_maxAgeTransactionsRefreshRequest == *(v6 + 8) && self->_multipleConsentsEnabled == *(v6 + 8) && self->_problemReportingEnabled == *(v6 + 9) && self->_financialLabEnabled == *(v6 + 10) && self->_consentSyncingEnabled == *(v6 + 11) && self->_balanceWidgetEnabled == *(v6 + 12) && self->_personalizedInsightsEnabled == *(v6 + 13) && self->_supportsTransactions == *(v6 + 14) && self->_timestampSuitableForUserDisplay == *(v6 + 15) && self->_privacyLabels == *(v6 + 9) && self->_maximumNumberOfBackgroundRefreshes == v6[10] && self->_numberOfRemainingBackgroundRefreshes == v6[11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end