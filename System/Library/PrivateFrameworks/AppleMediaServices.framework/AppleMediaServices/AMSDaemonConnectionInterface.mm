@interface AMSDaemonConnectionInterface
+ (id)_accountCachedServerDataInterface;
+ (id)_accountManagementInterface;
+ (id)_accountPostSignInInterface;
+ (id)_accountSignOutInterface;
+ (id)_autoBugCaptureServiceInterface;
+ (id)_cookieServiceInterface;
+ (id)_deviceMessengerClientInterface;
+ (id)_deviceMessengerServiceInterface;
+ (id)_dismissQRDialogServiceInterface;
+ (id)_fraudReportServiceInterface;
+ (id)_keychainServiceInterface;
+ (id)_onDeviceDataInterface;
+ (id)_paymentValidationServiceInterface;
+ (id)_purchaseServiceInterface;
+ (id)_securityClientInterface;
+ (id)_securityServiceInterface;
+ (id)interface;
+ (void)_configureURLPresentationDelegateClasses:(id)classes;
+ (void)_setUpSecurityInterfaceApplePayClassic:(id)classic;
+ (void)_setUpSecurityInterfaceBiometricSelectors:(id)selectors;
+ (void)_setUpSecurityInterfaceDeviceIdentitySelectors:(id)selectors;
+ (void)_setUpSecurityInterfaceHandleResponseSelector:(id)selector;
+ (void)_setUpSecurityInterfaceSignedHeadersSelector:(id)selector;
+ (void)_setUpSecurityInterfaceSilentEnrollmentSelector:(id)selector;
@end

@implementation AMSDaemonConnectionInterface

+ (id)interface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AMSDaemonConnectionInterface_interface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED6E2858 != -1)
  {
    dispatch_once(&qword_1ED6E2858, block);
  }

  v2 = _MergedGlobals_97;

  return v2;
}

void __41__AMSDaemonConnectionInterface_interface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDAA8];
  v3 = _MergedGlobals_97;
  _MergedGlobals_97 = v2;

  v4 = _MergedGlobals_97;
  v5 = [*(a1 + 32) _accountCachedServerDataInterface];
  [v4 setInterface:v5 forSelector:sel_getAccountCachedServerDataServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v6 = _MergedGlobals_97;
  v7 = [*(a1 + 32) _accountManagementInterface];
  [v6 setInterface:v7 forSelector:sel_getAccountManagementServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v8 = _MergedGlobals_97;
  v9 = [*(a1 + 32) _accountPostSignInInterface];
  [v8 setInterface:v9 forSelector:sel_getAccountPostSignInServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v10 = _MergedGlobals_97;
  v11 = [*(a1 + 32) _accountSignOutInterface];
  [v10 setInterface:v11 forSelector:sel_getAccountSignOutServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v12 = _MergedGlobals_97;
  v13 = [*(a1 + 32) _autoBugCaptureServiceInterface];
  [v12 setInterface:v13 forSelector:sel_getAutoBugCaptureServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v14 = _MergedGlobals_97;
  v15 = [*(a1 + 32) _onDeviceDataInterface];
  [v14 setInterface:v15 forSelector:sel_getOnDeviceDataServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v16 = _MergedGlobals_97;
  v17 = [*(a1 + 32) _cookieServiceInterface];
  [v16 setInterface:v17 forSelector:sel_getCookieServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v18 = _MergedGlobals_97;
  v19 = [*(a1 + 32) _deviceMessengerClientInterface];
  [v18 setInterface:v19 forSelector:sel_getDeviceMessengerServiceProxyWithDelegate_replyHandler_ argumentIndex:0 ofReply:0];

  v20 = _MergedGlobals_97;
  v21 = [*(a1 + 32) _deviceMessengerServiceInterface];
  [v20 setInterface:v21 forSelector:sel_getDeviceMessengerServiceProxyWithDelegate_replyHandler_ argumentIndex:0 ofReply:1];

  v22 = _MergedGlobals_97;
  v23 = [*(a1 + 32) _dismissQRDialogServiceInterface];
  [v22 setInterface:v23 forSelector:sel_getDismissQRDialogServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v24 = _MergedGlobals_97;
  v25 = [*(a1 + 32) _fraudReportServiceInterface];
  [v24 setInterface:v25 forSelector:sel_getFraudReportServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v26 = _MergedGlobals_97;
  v27 = [*(a1 + 32) _keychainServiceInterface];
  [v26 setInterface:v27 forSelector:sel_getKeychainServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v28 = _MergedGlobals_97;
  v29 = [*(a1 + 32) _paymentConfirmationInterface];
  [v28 setInterface:v29 forSelector:sel_getPaymentConfirmationServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v30 = _MergedGlobals_97;
  v31 = [*(a1 + 32) _paymentValidationServiceInterface];
  [v30 setInterface:v31 forSelector:sel_getPaymentValidationServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v32 = _MergedGlobals_97;
  v33 = [*(a1 + 32) _purchaseServiceInterface];
  [v32 setInterface:v33 forSelector:sel_getPurchaseServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v34 = _MergedGlobals_97;
  v35 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDB08];
  [v34 setInterface:v35 forSelector:sel_getPushNotificationServiceProxyWithReplyHandler_ argumentIndex:0 ofReply:1];

  v36 = _MergedGlobals_97;
  v37 = [*(a1 + 32) _securityClientInterface];
  [v36 setInterface:v37 forSelector:sel_getSecurityServiceProxyWithDelegate_replyHandler_ argumentIndex:0 ofReply:0];

  v38 = _MergedGlobals_97;
  v39 = [*(a1 + 32) _securityServiceInterface];
  [v38 setInterface:v39 forSelector:sel_getSecurityServiceProxyWithDelegate_replyHandler_ argumentIndex:0 ofReply:1];
}

+ (id)_accountCachedServerDataInterface
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CD928];
  v3 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_getDataForAccountIDs_reply_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_getDataForAccountIDs_reply_ argumentIndex:0 ofReply:0];

  [v2 setClass:objc_opt_class() forSelector:sel_setAutoPlayState_forAccountID_reply_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_setAutoPlayState_forAccountID_reply_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_setPersonalizationState_forAccountID_reply_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_setPersonalizationState_forAccountID_reply_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_queueMetricsEventNotingExpiry_appID_reply_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_queueMetricsEventNotingExpiry_appID_reply_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_queueMetricsEventNotingExpiry_appID_reply_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_manualSyncForAccountID_reply_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_manualSyncForAccountID_reply_ argumentIndex:1 ofReply:1];
  v9 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v11 = [v9 setWithArray:{v10, v13[0]}];
  [v2 setClasses:v11 forSelector:sel_lazySyncForAccounts_reply_ argumentIndex:0 ofReply:0];

  [v2 setClass:objc_opt_class() forSelector:sel_lazySyncForAccounts_reply_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (id)_accountManagementInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDB68];
  [v2 setClass:objc_opt_class() forSelector:sel_performCreateLocalAccountWithIdentifier_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_performCreateLocalAccountWithIdentifier_completion_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (id)_accountPostSignInInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDBC8];
  [v2 setClass:objc_opt_class() forSelector:sel_performAccountPostSignInTasksForAccountWithID_credentialSource_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)_accountSignOutInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDC28];
  [v2 setClass:objc_opt_class() forSelector:sel_performAccountSignOutTasksForAccountWithID_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)_autoBugCaptureServiceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07996D0];
  ams_JSONClasses = [MEMORY[0x1E695DFD8] ams_JSONClasses];
  [v2 setClasses:ams_JSONClasses forSelector:sel_captureSnapshotWithSignature_delay_events_payload_actions_completion_ argumentIndex:0 ofReply:0];

  ams_JSONClasses2 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
  [v2 setClasses:ams_JSONClasses2 forSelector:sel_captureSnapshotWithSignature_delay_events_payload_actions_completion_ argumentIndex:2 ofReply:0];

  ams_JSONClasses3 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
  [v2 setClasses:ams_JSONClasses3 forSelector:sel_captureSnapshotWithSignature_delay_events_payload_actions_completion_ argumentIndex:3 ofReply:0];

  ams_JSONClasses4 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
  [v2 setClasses:ams_JSONClasses4 forSelector:sel_captureSnapshotWithSignature_delay_events_payload_actions_completion_ argumentIndex:4 ofReply:0];

  [v2 setClass:objc_opt_class() forSelector:sel_captureSnapshotWithSignature_delay_events_payload_actions_completion_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (id)_onDeviceDataInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDC88];
  [v2 setClass:objc_opt_class() forSelector:sel_askToSync_reply_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_askToSync_reply_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (id)_cookieServiceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F078AD58];
  [v2 setClass:objc_opt_class() forSelector:sel_clearDanglingCookieDatabasesWithCompletion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_getCookieDatabasePathForAccount_withCompletion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_getCookieDatabasePathForAccount_withCompletion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_getCookieDatabasePathForAccount_withCompletion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_getCookiePropertiesForAccount_withCompletion_ argumentIndex:0 ofReply:0];
  ams_propertyXPCClasses = [MEMORY[0x1E695ABF8] ams_propertyXPCClasses];
  [v2 setClasses:ams_propertyXPCClasses forSelector:sel_getCookiePropertiesForAccount_withCompletion_ argumentIndex:0 ofReply:1];

  [v2 setClass:objc_opt_class() forSelector:sel_getCookiePropertiesForAccount_withCompletion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_getCookiePropertiesForAccount_cookieDatabaseOnly_withCompletion_ argumentIndex:0 ofReply:0];
  ams_propertyXPCClasses2 = [MEMORY[0x1E695ABF8] ams_propertyXPCClasses];
  [v2 setClasses:ams_propertyXPCClasses2 forSelector:sel_getCookiePropertiesForAccount_cookieDatabaseOnly_withCompletion_ argumentIndex:0 ofReply:1];

  [v2 setClass:objc_opt_class() forSelector:sel_getCookiePropertiesForAccount_cookieDatabaseOnly_withCompletion_ argumentIndex:1 ofReply:1];
  ams_propertyXPCClasses3 = [MEMORY[0x1E695ABF8] ams_propertyXPCClasses];
  [v2 setClasses:ams_propertyXPCClasses3 forSelector:sel_updateCookiesWithCookiePropertiesToAdd_cookiePropertiesToRemove_forAccount_withCompletion_ argumentIndex:0 ofReply:0];

  ams_propertyXPCClasses4 = [MEMORY[0x1E695ABF8] ams_propertyXPCClasses];
  [v2 setClasses:ams_propertyXPCClasses4 forSelector:sel_updateCookiesWithCookiePropertiesToAdd_cookiePropertiesToRemove_forAccount_withCompletion_ argumentIndex:1 ofReply:0];

  [v2 setClass:objc_opt_class() forSelector:sel_updateCookiesWithCookiePropertiesToAdd_cookiePropertiesToRemove_forAccount_withCompletion_ argumentIndex:2 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_updateCookiesWithCookiePropertiesToAdd_cookiePropertiesToRemove_forAccount_withCompletion_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (id)_deviceMessengerClientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0792060];
  [v2 setClass:objc_opt_class() forSelector:sel_deviceMessengerDidClearMessage_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_deviceMessengerDidReceiveReply_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_deviceMessengerDidReceiveMessage_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)_deviceMessengerServiceInterface
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDCE8];
  v3 = MEMORY[0x1E695DFD8];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_getMessagesWithPurpose_completion_ argumentIndex:0 ofReply:1];

  [v2 setClass:objc_opt_class() forSelector:sel_getMessagesWithPurpose_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_sendMessage_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_sendMessage_completion_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (id)_dismissQRDialogServiceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDD48];
  [v2 setClass:objc_opt_class() forSelector:sel_observeQRDialogDismissalNotificationForIdentifier_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_removeQRDialogDismissalObserverForIdentifier_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)_fraudReportServiceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDDA8];
  [v2 setClass:objc_opt_class() forSelector:sel_performFraudReportRefreshWithOptions_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_performFraudReportRefreshWithOptions_completion_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (id)_keychainServiceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDE08];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClass:objc_opt_class() forSelector:sel_getPublicKeyHeaderWithAccount_options_signatureResult_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_getPublicKeyHeaderWithAccount_options_signatureResult_completion_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_getPublicKeyHeaderWithAccount_options_signatureResult_completion_ argumentIndex:2 ofReply:0];
  [v2 setClasses:v6 forSelector:sel_getPublicKeyHeaderWithAccount_options_signatureResult_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_getPublicKeyHeaderWithAccount_options_signatureResult_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_testKeychainWithCompletion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_testKeychainWithCompletion_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (id)_paymentValidationServiceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDEC8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_paymentHardwareStatusHeaderWithCompletion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_paymentHardwareStatusHeaderWithCompletion_ argumentIndex:1 ofReply:1];

  return v2;
}

+ (id)_purchaseServiceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDF28];
  [v2 setClass:objc_opt_class() forSelector:sel_cachedFDSForPurchaseIdentifier_logKey_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_cachedFDSForPurchaseIdentifier_logKey_completion_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_cachedFDSForPurchaseIdentifier_logKey_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_cachedFDSForPurchaseIdentifier_logKey_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_cacheFDS_forPurchaseIdentifier_logKey_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_cacheFDS_forPurchaseIdentifier_logKey_completion_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_cacheFDS_forPurchaseIdentifier_logKey_completion_ argumentIndex:2 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_cacheFDS_forPurchaseIdentifier_logKey_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_generateFDSWithRequest_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_generateFDSWithRequest_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_generateFDSWithRequest_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_partialFDSAssessmentForRequest_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_partialFDSAssessmentForRequest_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_partialFDSAssessmentForRequest_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_createODISessionWithSessionIdentifier_cacheIdentifier_accountType_bundleIdentifier_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_createODISessionWithSessionIdentifier_cacheIdentifier_accountType_bundleIdentifier_completion_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_createODISessionWithSessionIdentifier_cacheIdentifier_accountType_bundleIdentifier_completion_ argumentIndex:3 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_createODISessionWithSessionIdentifier_cacheIdentifier_accountType_bundleIdentifier_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_createODISessionWithSessionIdentifier_cacheIdentifier_accountType_bundleIdentifier_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_getODIAssessmentForCacheIdentifier_clearCache_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_getODIAssessmentForCacheIdentifier_clearCache_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_getODIAssessmentForCacheIdentifier_clearCache_completion_ argumentIndex:1 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_provideFeedbackOnPayloadOutcome_cacheIdentifier_clearCache_completion_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_provideFeedbackOnPayloadOutcome_cacheIdentifier_clearCache_completion_ argumentIndex:0 ofReply:1];
  [v2 setClass:objc_opt_class() forSelector:sel_updateODIWithAttributes_forCacheIdentifier_completion_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_updateODIWithAttributes_forCacheIdentifier_completion_ argumentIndex:1 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_updateODIWithAttributes_forCacheIdentifier_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)_securityClientInterface
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CDF88];
  [self _configureURLPresentationDelegateClasses:v3];

  return v3;
}

+ (id)_securityServiceInterface
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07CD988];
  [v3 setClass:objc_opt_class() forSelector:sel_performBiometricTokenUpdateWithAccount_clientInfo_additionalDialogMetrics_shouldGenerateKeysOnly_shouldRequestConfirmation_userInitiated_completion_ argumentIndex:0 ofReply:0];
  [v3 setClass:objc_opt_class() forSelector:sel_performBiometricTokenUpdateWithAccount_clientInfo_additionalDialogMetrics_shouldGenerateKeysOnly_shouldRequestConfirmation_userInitiated_completion_ argumentIndex:1 ofReply:0];
  ams_PLISTClasses = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
  [v3 setClasses:ams_PLISTClasses forSelector:sel_performBiometricTokenUpdateWithAccount_clientInfo_additionalDialogMetrics_shouldGenerateKeysOnly_shouldRequestConfirmation_userInitiated_completion_ argumentIndex:2 ofReply:0];

  [v3 setClass:objc_opt_class() forSelector:sel_performBiometricTokenUpdateWithAccount_clientInfo_additionalDialogMetrics_shouldGenerateKeysOnly_shouldRequestConfirmation_userInitiated_completion_ argumentIndex:1 ofReply:1];
  [v3 setClass:objc_opt_class() forSelector:sel_performDevicePasscodeVerificationWithCompletion_ argumentIndex:1 ofReply:1];
  ams_PLISTClasses2 = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
  [v3 setClasses:ams_PLISTClasses2 forSelector:sel_performRemoteSignInWithAuthenticationResults_signInContext_serviceTypes_clientInfo_completion_ argumentIndex:0 ofReply:0];

  [v3 setClass:objc_opt_class() forSelector:sel_performRemoteSignInWithAuthenticationResults_signInContext_serviceTypes_clientInfo_completion_ argumentIndex:1 ofReply:0];
  ams_PLISTClasses3 = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
  [v3 setClasses:ams_PLISTClasses3 forSelector:sel_performRemoteSignInWithAuthenticationResults_signInContext_serviceTypes_clientInfo_completion_ argumentIndex:2 ofReply:0];

  [v3 setClass:objc_opt_class() forSelector:sel_performRemoteSignInWithAuthenticationResults_signInContext_serviceTypes_clientInfo_completion_ argumentIndex:3 ofReply:0];
  ams_PLISTClasses4 = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
  [v3 setClasses:ams_PLISTClasses4 forSelector:sel_performRemoteSignInWithAuthenticationResults_signInContext_serviceTypes_clientInfo_completion_ argumentIndex:0 ofReply:1];

  [v3 setClass:objc_opt_class() forSelector:sel_performRemoteSignInWithAuthenticationResults_signInContext_serviceTypes_clientInfo_completion_ argumentIndex:1 ofReply:1];
  [v3 setClass:objc_opt_class() forSelector:sel_signChallengeForRequest_completion_ argumentIndex:0 ofReply:0];
  [v3 setClass:objc_opt_class() forSelector:sel_signChallengeForRequest_completion_ argumentIndex:0 ofReply:1];
  [self _setUpSecurityInterfaceApplePayClassic:v3];
  [self _setUpSecurityInterfaceBiometricSelectors:v3];
  [self _setUpSecurityInterfaceDeviceIdentitySelectors:v3];
  [self _setUpSecurityInterfaceHandleResponseSelector:v3];
  [self _setUpSecurityInterfaceSignedHeadersSelector:v3];
  [self _setUpSecurityInterfaceSilentEnrollmentSelector:v3];

  return v3;
}

+ (void)_configureURLPresentationDelegateClasses:(id)classes
{
  classesCopy = classes;
  [classesCopy setClass:objc_opt_class() forSelector:sel_handleAuthenticateRequest_completion_ argumentIndex:0 ofReply:0];
  [classesCopy setClass:objc_opt_class() forSelector:sel_handleAuthenticateRequest_completion_ argumentIndex:0 ofReply:1];
  [classesCopy setClass:objc_opt_class() forSelector:sel_handleAuthenticateRequest_completion_ argumentIndex:1 ofReply:1];
  [classesCopy setClass:objc_opt_class() forSelector:sel_handleDialogRequest_completion_ argumentIndex:0 ofReply:0];
  [classesCopy setClass:objc_opt_class() forSelector:sel_handleDialogRequest_completion_ argumentIndex:0 ofReply:1];
  [classesCopy setClass:objc_opt_class() forSelector:sel_handleDialogRequest_completion_ argumentIndex:1 ofReply:1];
}

+ (void)_setUpSecurityInterfaceApplePayClassic:(id)classic
{
  classicCopy = classic;
  [classicCopy setClass:objc_opt_class() forSelector:sel_shouldAttemptApplePayWithCountryCode_paymentNetworks_completion_ argumentIndex:0 ofReply:0];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [classicCopy setClasses:v5 forSelector:sel_shouldAttemptApplePayWithCountryCode_paymentNetworks_completion_ argumentIndex:1 ofReply:0];

  [classicCopy setClass:objc_opt_class() forSelector:sel_shouldAttemptApplePayWithCountryCode_paymentNetworks_completion_ argumentIndex:1 ofReply:1];
  [classicCopy setClass:objc_opt_class() forSelector:sel_shouldAttemptApplePayWithAccount_options_countryCode_paymentNetworks_completion_ argumentIndex:0 ofReply:0];
  [classicCopy setClass:objc_opt_class() forSelector:sel_shouldAttemptApplePayWithAccount_options_countryCode_paymentNetworks_completion_ argumentIndex:1 ofReply:0];
  [classicCopy setClass:objc_opt_class() forSelector:sel_shouldAttemptApplePayWithAccount_options_countryCode_paymentNetworks_completion_ argumentIndex:2 ofReply:0];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [classicCopy setClasses:v8 forSelector:sel_shouldAttemptApplePayWithAccount_options_countryCode_paymentNetworks_completion_ argumentIndex:3 ofReply:0];

  [classicCopy setClass:objc_opt_class() forSelector:sel_shouldAttemptApplePayWithAccount_options_countryCode_paymentNetworks_completion_ argumentIndex:1 ofReply:1];
  [classicCopy setClass:objc_opt_class() forSelector:sel_paymentServicesMerchantURLWithCompletion_ argumentIndex:0 ofReply:1];
  [classicCopy setClass:objc_opt_class() forSelector:sel_paymentServicesMerchantURLWithCompletion_ argumentIndex:1 ofReply:1];
}

+ (void)_setUpSecurityInterfaceBiometricSelectors:(id)selectors
{
  selectorsCopy = selectors;
  [selectorsCopy setClass:objc_opt_class() forSelector:sel_deleteAllKeysWithCompletion_ argumentIndex:1 ofReply:1];
  [selectorsCopy setClass:objc_opt_class() forSelector:sel_isActionSupportedForType_account_options_completion_ argumentIndex:1 ofReply:0];
  [selectorsCopy setClass:objc_opt_class() forSelector:sel_isActionSupportedForType_account_options_completion_ argumentIndex:2 ofReply:0];
  [selectorsCopy setClass:objc_opt_class() forSelector:sel_isActionSupportedForType_account_options_completion_ argumentIndex:1 ofReply:1];
  [selectorsCopy setClass:objc_opt_class() forSelector:sel_isBiometricsAvailableForAccount_completion_ argumentIndex:0 ofReply:0];
  [selectorsCopy setClass:objc_opt_class() forSelector:sel_isBiometricsAvailableForAccount_completion_ argumentIndex:1 ofReply:1];
  [selectorsCopy setClass:objc_opt_class() forSelector:sel_isIdentityMapValidWithCompletion_ argumentIndex:1 ofReply:1];
  [selectorsCopy setClass:objc_opt_class() forSelector:sel_saveIdentityMapWithCompletion_ argumentIndex:0 ofReply:1];
}

+ (void)_setUpSecurityInterfaceDeviceIdentitySelectors:(id)selectors
{
  selectorsCopy = selectors;
  [selectorsCopy setClass:objc_opt_class() forSelector:sel_performClientCertChainRequestWithAccount_options_completion_ argumentIndex:0 ofReply:0];
  [selectorsCopy setClass:objc_opt_class() forSelector:sel_performClientCertChainRequestWithAccount_options_completion_ argumentIndex:1 ofReply:0];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [selectorsCopy setClasses:v5 forSelector:sel_performClientCertChainRequestWithAccount_options_completion_ argumentIndex:0 ofReply:1];

  [selectorsCopy setClass:objc_opt_class() forSelector:sel_performClientCertChainRequestWithAccount_options_completion_ argumentIndex:1 ofReply:1];
}

+ (void)_setUpSecurityInterfaceHandleResponseSelector:(id)selector
{
  selectorCopy = selector;
  [selectorCopy setClass:objc_opt_class() forSelector:sel_handleResponse_completion_ argumentIndex:0 ofReply:0];
  [selectorCopy setClass:objc_opt_class() forSelector:sel_handleResponse_completion_ argumentIndex:0 ofReply:1];
}

+ (void)_setUpSecurityInterfaceSignedHeadersSelector:(id)selector
{
  selectorCopy = selector;
  [selectorCopy setClass:objc_opt_class() forSelector:sel_signedHeadersForRequest_buyParams_completion_ argumentIndex:0 ofReply:0];
  [selectorCopy setClass:objc_opt_class() forSelector:sel_signedHeadersForRequest_buyParams_completion_ argumentIndex:1 ofReply:0];
  ams_PLISTClasses = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
  [selectorCopy setClasses:ams_PLISTClasses forSelector:sel_signedHeadersForRequest_buyParams_completion_ argumentIndex:0 ofReply:1];

  [selectorCopy setClass:objc_opt_class() forSelector:sel_signedHeadersForRequest_buyParams_completion_ argumentIndex:1 ofReply:1];
}

+ (void)_setUpSecurityInterfaceSilentEnrollmentSelector:(id)selector
{
  selectorCopy = selector;
  [selectorCopy setClass:objc_opt_class() forSelector:sel_performSilentEnrollmentWithRequest_logKey_completion_ argumentIndex:0 ofReply:0];
  [selectorCopy setClass:objc_opt_class() forSelector:sel_performSilentEnrollmentWithRequest_logKey_completion_ argumentIndex:1 ofReply:0];
  [selectorCopy setClass:objc_opt_class() forSelector:sel_performSilentEnrollmentWithRequest_logKey_completion_ argumentIndex:0 ofReply:1];
  [selectorCopy setClass:objc_opt_class() forSelector:sel_performSilentEnrollmentWithRequest_logKey_completion_ argumentIndex:1 ofReply:1];
}

@end