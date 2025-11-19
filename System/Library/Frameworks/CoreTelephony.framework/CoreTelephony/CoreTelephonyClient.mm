@interface CoreTelephonyClient
+ (id)sharedMultiplexer;
- ($0AC6E346AE4835514AAA8AC86D8F4844)checkCellularDiagnosticsStatusDetails:(id *)a3;
- (BOOL)acknowledgeIncomingMessages:(id)a3 withMessageIDList:(id)a4 withError:(id *)a5;
- (BOOL)addParticipants:(id)a3 toGroupChat:(id)a4 withParticipantsToAdd:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 withError:(id *)a8;
- (BOOL)changeIcon:(id)a3 forGroupChat:(id)a4 withNewIcon:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 withError:(id *)a8;
- (BOOL)changeSubject:(id)a3 forGroupChat:(id)a4 withNewSubject:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 withError:(id *)a8;
- (BOOL)context:(id)a3 isMandatoryDisabledVoLTE:(id *)a4;
- (BOOL)context:(id)a3 isProtectedIdentitySupported:(id)a4 error:(id *)a5;
- (BOOL)create:(id)a3 groupChat:(id)a4 withOperationID:(id)a5 withError:(id *)a6;
- (BOOL)deleteChat:(id)a3 chat:(id)a4 withError:(id *)a5;
- (BOOL)disableBusinessMessaging:(id)a3 withError:(id *)a4;
- (BOOL)disableLazuli:(id)a3 withError:(id *)a4;
- (BOOL)enableBusinessMessaging:(id)a3 withError:(id *)a4;
- (BOOL)enableLazuli:(id)a3 withError:(id *)a4;
- (BOOL)exit:(id)a3 groupChat:(id)a4 withOperationID:(id)a5 withError:(id *)a6;
- (BOOL)fetchRemoteCapabilities:(id)a3 forDestination:(id)a4 withOptions:(id)a5 withOperationID:(id)a6 withError:(id *)a7;
- (BOOL)fetchRenderInformation:(id)a3 forChatBot:(id)a4 withOperationID:(id)a5 withError:(id *)a6;
- (BOOL)get2GSwitchEnabledSync:(id *)a3;
- (BOOL)get2GUserPreferenceSync:(id *)a3;
- (BOOL)getInternationalDataAccessStatusSync:(id *)a3;
- (BOOL)getInternationalDataAccessSync:(id)a3 error:(id *)a4;
- (BOOL)getRegulatedRatsSwitchEnabledSync:(id)a3 error:(id *)a4;
- (BOOL)getRegulatedRatsUserPreferenceSync:(id)a3 error:(id *)a4;
- (BOOL)getSupportDynamicDataSimSwitchSync:(id *)a3;
- (BOOL)hasDedicatedBearerSupport;
- (BOOL)isAnyPlanTransferableFromThisDeviceForFlow:(unint64_t)a3 OrError:(id *)a4;
- (BOOL)isAttachApnSettingAllowed:(id)a3 error:(id *)a4;
- (BOOL)isDedicatedBearerPresent:(id)a3 error:(id *)a4;
- (BOOL)isEmergencyNumber:(id)a3 number:(id)a4 error:(id *)a5;
- (BOOL)isEmergencyNumberWithWhitelistIncluded:(id)a3 number:(id)a4 error:(id *)a5;
- (BOOL)isPNRSupported:(id)a3 outError:(id *)a4;
- (BOOL)isPhoneNumberCredentialValid:(id)a3 outError:(id *)a4;
- (BOOL)isPrivateNetworkEvaluationNeeded:(id *)a3;
- (BOOL)isPrivateNetworkSIM:(id)a3 error:(id *)a4;
- (BOOL)isTetheringEditingSupported:(id)a3 error:(id *)a4;
- (BOOL)removeGeofenceProfile;
- (BOOL)removeParticipants:(id)a3 fromGroupChat:(id)a4 withParticipantsToRemove:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 withError:(id *)a8;
- (BOOL)reportChatbotSpam:(id)a3 forChatbot:(id)a4 withSpamReportInfo:(id)a5 andOperationID:(id)a6 withError:(id *)a7;
- (BOOL)reportLazuliSpamWithContext:(id)a3 destination:(id)a4 spamReportInfo:(id)a5 operationID:(id)a6 error:(id *)a7;
- (BOOL)restoreToSystemBundles:(id *)a3;
- (BOOL)revokeMessage:(id)a3 withRevokeData:(id)a4 withMessageID:(id)a5 withError:(id *)a6;
- (BOOL)sendComposingIndicator:(id)a3 to:(id)a4 messageID:(id)a5 indication:(id)a6 withSecurity:(id)a7 error:(id *)a8;
- (BOOL)sendComposingIndicator:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withIndication:(id)a6 withSecurity:(id)a7 withError:(id *)a8;
- (BOOL)sendDeviceAction:(id)a3 to:(id)a4 withMessageID:(id)a5 withAction:(id)a6 withError:(id *)a7;
- (BOOL)sendDeviceSettings:(id)a3 to:(id)a4 withMessageID:(id)a5 withSetting:(id)a6 withError:(id *)a7;
- (BOOL)sendDispositionNotificationMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withDisposition:(int64_t)a6 forMessageID:(id)a7 withSecurity:(id)a8 withError:(id *)a9;
- (BOOL)sendFileTransferMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withFileInformation:(id)a6 withSecurity:(id)a7 withError:(id *)a8;
- (BOOL)sendFileTransferMessage:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withFileInformation:(id)a6 withSecurity:(id)a7 withError:(id *)a8;
- (BOOL)sendGeolocationMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withGeoPush:(id)a6 withSecurity:(id)a7 withError:(id *)a8;
- (BOOL)sendGeolocationMessage:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withGeoPush:(id)a6 withSecurity:(id)a7 withError:(id *)a8;
- (BOOL)sendGroupDispositionNotificationMessage:(id)a3 toGroup:(id)a4 to:(id)a5 withMessageID:(id)a6 withDisposition:(int64_t)a7 forMessageID:(id)a8 withSecurity:(id)a9 withError:(id *)a10;
- (BOOL)sendOneToManyFileTransferMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withDescriptor:(id)a6 withError:(id *)a7;
- (BOOL)sendOneToManyGeolocationMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withGeoPush:(id)a6 withError:(id *)a7;
- (BOOL)sendOneToManyTextMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withMessage:(id)a6 withError:(id *)a7;
- (BOOL)sendResponseForSuggestedAction:(id)a3 to:(id)a4 withMessageID:(id)a5 response:(id)a6 withError:(id *)a7;
- (BOOL)sendResponseForSuggestedReply:(id)a3 to:(id)a4 withMessageID:(id)a5 response:(id)a6 withError:(id *)a7;
- (BOOL)sendTextMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withMessage:(id)a6 withSecurity:(id)a7 withError:(id *)a8;
- (BOOL)sendTextMessage:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withMessage:(id)a6 withSecurity:(id)a7 withError:(id *)a8;
- (BOOL)shouldShowUserWarningWhenDialingCallOnContext:(id)a3 error:(id *)a4;
- (BOOL)supportsEmbeddedSIM;
- (BOOL)supportsRequestWithSelector:(SEL)a3;
- (BOOL)supportsSelector:(SEL)a3 withContext:(id)a4 error:(id *)a5;
- (BOOL)updateGeofenceProfile:(id)a3;
- (CoreTelephonyClient)initWithQueue:(dispatch_queue_s *)a3;
- (CoreTelephonyClient)initWithQueue:(dispatch_queue_s *)a3 multiplexer:(id)a4;
- (CoreTelephonyClient)initWithQueue:(dispatch_queue_s *)a3 multiplexer:(id)a4 gestaltHelper:(id)a5;
- (id)addDedicatedBearer:(id)a3 error:(id *)a4;
- (id)billingCycleEndDatesForLastPeriods:(unint64_t)a3 error:(id *)a4;
- (id)bootstrapPlanTransferForEndpoint:(unint64_t)a3 usingMessageSession:(id)a4;
- (id)cancelSIMToolkitUSSDSession:(id)a3;
- (id)checkBasebandConfigUpdateInfo:(id *)a3;
- (id)checkEmbeddedSimHealthWithError:(id *)a3;
- (id)context:(id)a3 addPhoneServicesDevice:(id)a4;
- (id)context:(id)a3 canSetCapability:(id)a4 allowed:(BOOL *)a5 with:(id *)a6;
- (id)context:(id)a3 evaluateMobileSubscriberIdentity:(id)a4;
- (id)context:(id)a3 getAttachApnSettings:(id *)a4;
- (id)context:(id)a3 getCapability:(id)a4 status:(BOOL *)a5 with:(id *)a6;
- (id)context:(id)a3 getCarrierBundleValue:(id)a4 error:(id *)a5;
- (id)context:(id)a3 getEncryptedIdentity:(id)a4 error:(id *)a5;
- (id)context:(id)a3 getPhoneNumberSignature:(id *)a4;
- (id)context:(id)a3 getPseudoIdentityFor:(id)a4 error:(id *)a5;
- (id)context:(id)a3 getSystemCapabilities:(id *)a4;
- (id)context:(id)a3 modifyAttachApnSettings:(id)a4;
- (id)context:(id)a3 recheckPhoneServicesAccountStatus:(id)a4;
- (id)context:(id)a3 removePhoneServicesDevice:(id)a4;
- (id)copyBundleIdentifier:(id)a3 bundleType:(id)a4 error:(id *)a5;
- (id)copyBundleLocation:(id)a3 bundleType:(id)a4 error:(id *)a5;
- (id)copyBundleVersion:(id)a3 bundleType:(id)a4 error:(id *)a5;
- (id)copyCarrierBundleLocation:(id)a3 error:(id *)a4;
- (id)copyCarrierBundleValue:(id)a3 key:(id)a4 bundleType:(id)a5 error:(id *)a6;
- (id)copyCarrierBundleValue:(id)a3 keyHierarchy:(id)a4 bundleType:(id)a5 error:(id *)a6;
- (id)copyCarrierBundleValueWithCountryBundleLookup:(id)a3 keyHierarchy:(id)a4 matchingInfo:(id)a5 error:(id *)a6;
- (id)copyCarrierBundleValueWithDefault:(id)a3 key:(id)a4 bundleType:(id)a5 error:(id *)a6;
- (id)copyCarrierBundleValueWithDefault:(id)a3 keyHierarchy:(id)a4 bundleType:(id)a5 error:(id *)a6;
- (id)copyCarrierBundleVersion:(id)a3 error:(id *)a4;
- (id)copyEmergencyModeWithError:(id *)a3;
- (id)copyGid1:(id)a3 error:(id *)a4;
- (id)copyGid2:(id)a3 error:(id *)a4;
- (id)copyIsInHomeCountry:(id)a3 error:(id *)a4;
- (id)copyLabel:(id)a3 error:(id *)a4;
- (id)copyLastKnownMobileCountryCode:(id)a3 error:(id *)a4;
- (id)copyLastKnownMobileSubscriberCountryCode:(id)a3 error:(id *)a4;
- (id)copyMccOrPlmnsListForIso3CountryCode:(id)a3 error:(id *)a4;
- (id)copyMobileCountryCode:(id)a3 error:(id *)a4;
- (id)copyMobileNetworkCode:(id)a3 error:(id *)a4;
- (id)copyMobileSubscriberCountryCode:(id)a3 error:(id *)a4;
- (id)copyMobileSubscriberIdentity:(id)a3 error:(id *)a4;
- (id)copyMobileSubscriberIso3CountryCode:(id)a3 MNC:(id)a4 error:(id *)a5;
- (id)copyMobileSubscriberIsoCountryCode:(id)a3 error:(id *)a4;
- (id)copyMobileSubscriberIsoSubregionCode:(id)a3 MNC:(id)a4 error:(id *)a5;
- (id)copyMobileSubscriberNetworkCode:(id)a3 error:(id *)a4;
- (id)copyNetworkSelectionInfo:(id)a3 error:(id *)a4;
- (id)copyPublicCellId:(id)a3 error:(id *)a4;
- (id)copyRadioAccessTechnology:(id)a3 error:(id *)a4;
- (id)copyRegistrationDisplayStatus:(id)a3 error:(id *)a4;
- (id)copyRegistrationStatus:(id)a3 error:(id *)a4;
- (id)copyRequiresResiliency:(id)a3 outError:(id *)a4;
- (id)copySIMIdentity:(id)a3 error:(id *)a4;
- (id)copyServingPlmn:(id)a3 error:(id *)a4;
- (id)decodeSuggestionsBase64:(id)a3 withBase64String:(id)a4 withError:(id *)a5;
- (id)delegate;
- (id)deletePersonalWallet:(id)a3;
- (id)dispatchBlockToClientAsync:(dispatch_queue_s *);
- (id)endPlanTransferForEndPoint:(unint64_t)a3;
- (id)enterLoopBackMode;
- (id)fetchRoadsideProvidersWithContext:(id)a3 error:(id *)a4;
- (id)fetchSIMLockValue:(id)a3 error:(id *)a4;
- (id)forceRollAllTransportKeys;
- (id)getActiveConnections:(id)a3 error:(id *)a4;
- (id)getActiveContexts:(id *)a3;
- (id)getAllEmergencyNumbersWithError:(id *)a3;
- (id)getAllowDevSignedCarrierBundlesFlag;
- (id)getBandInfo:(id)a3 error:(id *)a4;
- (id)getBasebandRadioFrequencyFrontEndScanData:(id *)a3;
- (id)getCallCapabilities:(id)a3 error:(id *)a4;
- (id)getCellularUsageWorkspaceInfo:(id *)a3;
- (id)getConfiguredApns:(id)a3 error:(id *)a4;
- (id)getConnectionAssistantConfigWithError:(id *)a3;
- (id)getConnectionAssistantServicePlotWithError:(id *)a3;
- (id)getConnectionAssistantStateWithError:(id *)a3;
- (id)getCountryBundleIdentifierForCountryCode:(id)a3 error:(id *)a4;
- (id)getCountryBundleLocationForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)getCountryBundleLocationForMatchingInfo:(id)a3 error:(id *)a4;
- (id)getCurrentDataServiceDescriptorSync:(id *)a3;
- (id)getCurrentDataSubscriptionContextSync:(id *)a3;
- (id)getCurrentRat:(id)a3 error:(id *)a4;
- (id)getDataStatus:(id)a3 error:(id *)a4;
- (id)getDataStatusBasic:(id)a3 error:(id *)a4;
- (id)getDescriptorsForDomain:(int64_t)a3 error:(id *)a4;
- (id)getEmergencyTextNumbers:(id)a3 error:(id *)a4;
- (id)getEncryptionStatus:(id)a3 error:(id *)a4;
- (id)getEnglishCarrierNameFor:(id)a3 error:(id *)a4;
- (id)getEvolvedSubscriptionLabelID:(id)a3 error:(id *)a4;
- (id)getIMSRegistrationStatus:(id)a3 error:(id *)a4;
- (id)getInternetConnectionAvailabilitySync:(id *)a3;
- (id)getInternetConnectionStateSync:(id *)a3;
- (id)getInternetDataStatusBasicSync:(id *)a3;
- (id)getInternetDataStatusSync:(id *)a3;
- (id)getLastKnownSimDeactivationInfoFor:(id)a3 error:(id *)a4;
- (id)getListOfPresentDedicatedBearers;
- (id)getLocalDeviceIdentifierForSIMTransfer:(id *)a3;
- (id)getLocalPolicies:(id)a3 error:(id *)a4;
- (id)getLocalizedOperatorName:(id)a3 error:(id *)a4;
- (id)getMobileEquipmentInfo:(id *)a3;
- (id)getMobileEquipmentInfoFor:(id)a3 error:(id *)a4;
- (id)getMobileSubscriberHomeCountryList:(id)a3 error:(id *)a4;
- (id)getNRStatus:(id)a3 error:(id *)a4;
- (id)getOperatorMultiPartyCallCountMaximum:(id)a3 error:(id *)a4;
- (id)getOperatorName:(id)a3 error:(id *)a4;
- (id)getPNRContext:(id)a3 outError:(id *)a4;
- (id)getPNRPriorityRegistrationListWithError:(id *)a3;
- (id)getPNRSupportStatus:(id)a3 outError:(id *)a4;
- (id)getPacketContextCount:(unsigned int *)a3;
- (id)getPhoneServicesDeviceInfo:(id *)a3;
- (id)getPhoneServicesDeviceList:(id *)a3;
- (id)getPreferredDataServiceDescriptorSync:(id *)a3;
- (id)getPreferredDataSubscriptionContextSync:(id *)a3;
- (id)getPrivateNetworkCapabilitiesForContext:(id)a3 error:(id *)a4;
- (id)getPrivateNetworkSimInfoForContext:(id)a3 error:(id *)a4;
- (id)getProvisioningServerURL:(id)a3 outError:(id *)a4;
- (id)getPublicSignalStrength:(id)a3 error:(id *)a4;
- (id)getQoSLinkCharacteristics:(id *)a3;
- (id)getRatSelectionMask:(id)a3 error:(id *)a4;
- (id)getRejectCauseCode:(id)a3 error:(id *)a4;
- (id)getReleaseCandidateFlag;
- (id)getRemainingPINAttemptCount:(id)a3 error:(id *)a4;
- (id)getRemainingPUKAttemptCount:(id)a3 error:(id *)a4;
- (id)getRemoteDeviceForTransferWithEID:(id)a3 error:(id *)a4;
- (id)getRemoteDeviceOfType:(unint64_t)a3 withEID:(id)a4 error:(id *)a5;
- (id)getRemoteDevicesForTransferOrError:(id *)a3;
- (id)getResumableRoadsideProvider:(id *)a3;
- (id)getRoamingStatus:(id)a3 error:(id *)a4;
- (id)getSIMStatus:(id)a3 error:(id *)a4;
- (id)getSIMToolkitListItems:(id)a3 items:(id *)a4;
- (id)getSIMToolkitMenu:(id)a3 menu:(id *)a4;
- (id)getSIMToolkitUSSDString:(id)a3 ussdString:(id *)a4 needRsp:(BOOL *)a5;
- (id)getSIMTrayStatusOrError:(id *)a3;
- (id)getSatelliteMsgCfgToUpdate:(id *)a3;
- (id)getShortLabel:(id)a3 error:(id *)a4;
- (id)getSignalStrengthInfo:(id)a3 error:(id *)a4;
- (id)getSignalStrengthMeasurements:(id)a3 error:(id *)a4;
- (id)getSimHardwareInfo:(id)a3 error:(id *)a4;
- (id)getSimLabel:(id)a3 error:(id *)a4;
- (id)getSliceTrafficDescriptors:(id *)a3;
- (id)getSmsReadyState:(id)a3 error:(id *)a4;
- (id)getSmscAddress:(id)a3 error:(id *)a4;
- (id)getStewieSupport:(id *)a3;
- (id)getSubscriptionInfoWithError:(id *)a3;
- (id)getSubscriptionUserFacingName:(id)a3 error:(id *)a4;
- (id)getSupportedDataRates:(id)a3 error:(id *)a4;
- (id)getSupports5G:(id)a3 error:(id *)a4;
- (id)getSupports5GStandalone:(id)a3 error:(id *)a4;
- (id)getSupportsTARandomization:(id)a3 error:(id *)a4;
- (id)getSystemConfiguration:(id)a3 withError:(id *)a4;
- (id)getTARandomizationSetting:(id)a3 error:(id *)a4;
- (id)getTetheringStatusSync:(id *)a3;
- (id)getTransportKeysToUpdate:(id *)a3;
- (id)getTypeAllocationCode:(id)a3 error:(id *)a4;
- (id)getUIConfiguredApns:(id)a3 error:(id *)a4;
- (id)getUserAuthToken:(id)a3 error:(id *)a4;
- (id)getUserDefaultVoiceSubscriptionContext:(id *)a3;
- (id)getWiFiCallingSettingPreferences:(id)a3 key:(id)a4 error:(id *)a5;
- (id)installPrivateNetworkProfile:(id)a3;
- (id)isAnySimReadyWithError:(id *)a3;
- (id)isEmbeddedSIMOnlyConfig:(id *)a3;
- (id)isNetworkSelectionMenuAvailable:(id)a3 error:(id *)a4;
- (id)isPrivateNetworkContext:(id)a3 error:(id *)a4;
- (id)isSimMatching:(id)a3 carrierDescriptors:(id)a4 error:(id *)a5;
- (id)listPersonalWallets:(id *)a3;
- (id)loadCarrierStoreVisitStatusForCarrier:(id)a3 error:(id *)a4;
- (id)loadSimSetupInfo:(id)a3 error:(id *)a4;
- (id)private_getActiveConnections:(id)a3 error:(id *)a4;
- (id)private_getDataStatus:(id)a3 error:(id *)a4;
- (id)private_getSliceTrafficDescriptors:(id *)a3;
- (id)proxyWithErrorHandler:(id)a3;
- (id)readCachedCapabilities:(id)a3 forDestination:(id)a4 withError:(id *)a5;
- (id)readCachedChatBotRenderInformation:(id)a3 forChatBot:(id)a4 withError:(id *)a5;
- (id)removeAllDedicatedBearers;
- (id)removeDedicatedBearer:(id)a3;
- (id)removePrivateNetworkProfile:(id)a3;
- (id)renamePersonalWallet:(id)a3 to:(id)a4;
- (id)reportStewieConnectionAssistantEvent:(id)a3;
- (id)reportStewieDeviceOrientation:(id)a3;
- (id)requestQoSLinkCharacteristics;
- (id)resetAPNSettings;
- (id)retrieveAllIncomingMessageIDs:(id)a3 withError:(id *)a4;
- (id)retrieveMessage:(id)a3 withMessageID:(id)a4 withError:(id *)a5;
- (id)selectRoadsideProviderWithContext:(id)a3 error:(id *)a4;
- (id)selectSIMToolkitListItem:(id)a3 session:(id)a4 response:(id)a5 index:(id)a6;
- (id)selectSIMToolkitMenuItem:(id)a3 index:(id)a4;
- (id)sendDeadPeerDetection;
- (id)sendSIMToolkitDisplayReady:(id)a3;
- (id)sendSIMToolkitResponse:(id)a3 session:(id)a4 response:(id)a5;
- (id)sendSIMToolkitStringResponse:(id)a3 session:(id)a4 response:(id)a5 string:(id)a6;
- (id)sendSIMToolkitUSSDResponse:(id)a3 response:(id)a4;
- (id)sendSIMToolkitUserActivity:(id)a3;
- (id)setApplicationCategory:(id)a3;
- (id)setLocalPolicies:(id)a3;
- (id)setMaxDataRate:(id)a3 rate:(int64_t)a4;
- (id)setProvisioningServerURL:(id)a3 url:(id)a4;
- (id)setSatelliteMsgCfgUpdated:(id)a3;
- (id)setWiFiCallingSettingPreferences:(id)a3 key:(id)a4 value:(id)a5;
- (id)shouldAllowSimLockFor:(id)a3;
- (id)shouldAllowSimLockFor:(id)a3 error:(id *)a4;
- (id)shouldShowBrandedCallingInfo:(id *)a3;
- (id)supportsLimitedUseSIMsWithError:(id *)a3;
- (id)synchronousProxyWithErrorHandler:(id)a3;
- (id)synchronousRequestWithArrayResult:(id)a3 error:(id *)a4;
- (id)synchronousRequestWithNumberResult:(id)a3 error:(id *)a4;
- (id)synchronousRequestWithStringResult:(id)a3 error:(id *)a4;
- (id)transferPersonalWallet:(id)a3 to:(id)a4;
- (id)usageCollectionEnabledSync:(id *)a3;
- (id)userEnteredBillingEndDayOfMont:(id)a3 error:(id *)a4;
- (id)userEnteredMonthlyBudget:(id)a3 error:(id *)a4;
- (id)userEnteredMonthlyRoamingBudget:(id)a3 error:(id *)a4;
- (id)wifiCallingCTFollowUpComplete:(id)a3;
- (int64_t)checkCellularDiagnosticsStatus:(id *)a3;
- (int64_t)context:(id)a3 supportedIdentityProtectionFor:(id)a4 error:(id *)a5;
- (int64_t)getDualSimCapability:(id *)a3;
- (int64_t)getMaxDataRate:(id)a3 error:(id *)a4;
- (int64_t)isEsimFor:(id)a3 error:(id *)a4;
- (unint64_t)getGSMAUIControlSetting:(id)a3 error:(id *)a4;
- (unsigned)getNATTKeepAliveOverCell:(id *)a3;
- (unsigned)getNATTKeepAliveOverCell:(id)a3 error:(id *)a4;
- (unsigned)getNATTKeepAliveOverCellForPreferredDataContext:(id *)a3;
- (unsigned)private_getNATTKeepAliveOverCell:(id)a3 error:(id *)a4;
- (void)SIMUnlockProcedureDidComplete;
- (void)activateProximityTransfer:(unint64_t)a3 completion:(id)a4;
- (void)activateStewieEmergencyTryOutWithCompletion:(id)a3;
- (void)activateTurboMode:(id)a3;
- (void)asynchronousRequest:(id)a3 completion:(id)a4;
- (void)asynchronousRequest:(id)a3 completionWithArray:(id)a4;
- (void)asynchronousRequest:(id)a3 completionWithNumber:(id)a4;
- (void)asynchronousRequest:(id)a3 completionWithString:(id)a4;
- (void)authenticate:(id)a3 request:(id)a4 completion:(id)a5;
- (void)automaticallySelectNetwork:(id)a3 completion:(id)a4;
- (void)bootstrapPlanTransferForEndpoint:(unint64_t)a3 flowType:(unint64_t)a4 usingMessageSession:(id)a5 completion:(id)a6;
- (void)carrierOneTimeCodeSendersWithCompletion:(id)a3;
- (void)changePIN:(id)a3 oldPin:(id)a4 newPin:(id)a5 completion:(id)a6;
- (void)changePIN:(id)a3 oldPin:(id)a4 newPin:(id)a5 error:(id *)a6;
- (void)checkRadioBootHealth:(id)a3;
- (void)checkRadioBootHealthDetails:(id)a3;
- (void)clearReconnectionCredentials:(id)a3;
- (void)clearUserEnteredBillingEndDayOfMonth:(id)a3 completion:(id)a4;
- (void)clearUserEnteredBillingEndDayOfMonth:(id)a3 error:(id *)a4;
- (void)clearUserEnteredMonthlyBudget:(id)a3 completion:(id)a4;
- (void)clearUserEnteredMonthlyBudget:(id)a3 error:(id *)a4;
- (void)clearUserEnteredMonthlyRoamingBudget:(id)a3 completion:(id)a4;
- (void)clearUserEnteredMonthlyRoamingBudget:(id)a3 error:(id *)a4;
- (void)compressWithStewieCodec:(id)a3 completion:(id)a4;
- (void)context:(id)a3 addPhoneServicesDevice:(id)a4 withCompletion:(id)a5;
- (void)context:(id)a3 canSetCapability:(id)a4 completion:(id)a5;
- (void)context:(id)a3 getCapability:(id)a4 completion:(id)a5;
- (void)context:(id)a3 getCarrierBundleValue:(id)a4 completion:(id)a5;
- (void)context:(id)a3 getPhoneNumberSignatureWithCompletion:(id)a4;
- (void)context:(id)a3 getPseudoIdentityFor:(id)a4 completion:(id)a5;
- (void)context:(id)a3 getSystemCapabilitiesWithCompletion:(id)a4;
- (void)context:(id)a3 isProtectedIdentitySupported:(id)a4 completion:(id)a5;
- (void)context:(id)a3 modifyAttachApnSettings:(id)a4 completion:(id)a5;
- (void)context:(id)a3 removePhoneServicesDevice:(id)a4 withCompletion:(id)a5;
- (void)context:(id)a3 resetPhoneNumber:(id)a4;
- (void)context:(id)a3 supportedIdentityProtectionFor:(id)a4 completion:(id)a5;
- (void)copyAbbreviatedOperatorName:(id)a3 completion:(id)a4;
- (void)copyBandInfo:(id)a3 completion:(id)a4;
- (void)copyBundleIdentifier:(id)a3 bundleType:(id)a4 completion:(id)a5;
- (void)copyBundleLocation:(id)a3 bundleType:(id)a4 completion:(id)a5;
- (void)copyBundleVersion:(id)a3 bundleType:(id)a4 completion:(id)a5;
- (void)copyCarrierBookmarks:(id)a3 completion:(id)a4;
- (void)copyCarrierBundleLocation:(id)a3 completion:(id)a4;
- (void)copyCarrierBundleValue:(id)a3 key:(id)a4 bundleType:(id)a5 completion:(id)a6;
- (void)copyCarrierBundleValue:(id)a3 keyHierarchy:(id)a4 bundleType:(id)a5 completion:(id)a6;
- (void)copyCarrierBundleValueWithDefault:(id)a3 key:(id)a4 bundleType:(id)a5 completion:(id)a6;
- (void)copyCarrierBundleValueWithDefault:(id)a3 keyHierarchy:(id)a4 bundleType:(id)a5 completion:(id)a6;
- (void)copyCarrierBundleVersion:(id)a3 completion:(id)a4;
- (void)copyCellId:(id)a3 completion:(id)a4;
- (void)copyCellInfo:(id)a3 completion:(id)a4;
- (void)copyEmergencyMode:(id)a3;
- (void)copyFirmwareUpdateInfo:(id)a3;
- (void)copyGid1:(id)a3 completion:(id)a4;
- (void)copyGid2:(id)a3 completion:(id)a4;
- (void)copyIsDataAttached:(id)a3 completion:(id)a4;
- (void)copyIsInHomeCountry:(id)a3 completion:(id)a4;
- (void)copyLabel:(id)a3 completion:(id)a4;
- (void)copyLastKnownMobileCountryCode:(id)a3 completion:(id)a4;
- (void)copyLastKnownMobileSubscriberCountryCode:(id)a3 completion:(id)a4;
- (void)copyLocalizedOperatorName:(id)a3 completion:(id)a4;
- (void)copyLocationAreaCode:(id)a3 completion:(id)a4;
- (void)copyMobileCountryCode:(id)a3 completion:(id)a4;
- (void)copyMobileEquipmentInfo:(id)a3;
- (void)copyMobileNetworkCode:(id)a3 completion:(id)a4;
- (void)copyMobileSubscriberCountryCode:(id)a3 completion:(id)a4;
- (void)copyMobileSubscriberIdentity:(id)a3 completion:(id)a4;
- (void)copyMobileSubscriberNetworkCode:(id)a3 completion:(id)a4;
- (void)copyNetworkList:(id)a3 completion:(id)a4;
- (void)copyNetworkSelection:(id)a3 completion:(id)a4;
- (void)copyNetworkSelectionInfo:(id)a3 completion:(id)a4;
- (void)copyNetworkSelectionMode:(id)a3 completion:(id)a4;
- (void)copyOperatorName:(id)a3 completion:(id)a4;
- (void)copyRadioAccessTechnology:(id)a3 completion:(id)a4;
- (void)copyRegistrationAgentStatus:(id)a3 completion:(id)a4;
- (void)copyRegistrationDisplayStatus:(id)a3 completion:(id)a4;
- (void)copyRegistrationIMSTransportInfo:(id)a3 completion:(id)a4;
- (void)copyRegistrationStatus:(id)a3 completion:(id)a4;
- (void)copyRejectCauseCode:(id)a3 completion:(id)a4;
- (void)copySIMIdentity:(id)a3 completion:(id)a4;
- (void)copyServingPlmn:(id)a3 completion:(id)a4;
- (void)copyWirelessTechnology:(id)a3 completion:(id)a4;
- (void)createEncryptedIdentity:(id)a3 identity:(id)a4 completion:(id)a5;
- (void)dataUsageForLastPeriods:(unint64_t)a3 completion:(id)a4;
- (void)dataUsageForLastPeriodsOnActivePairedDevice:(unint64_t)a3 completion:(id)a4;
- (void)dealloc;
- (void)deleteHiddenSims:(id)a3;
- (void)deletePersonalWallet:(id)a3 completion:(id)a4;
- (void)dispatchBlockToClientAsync:(id)a3;
- (void)establishReconnectionCredentialsUsingMessageSession:(id)a3 completion:(id)a4;
- (void)evaluateMobileSubscriberIdentity:(id)a3 identity:(id)a4 completion:(id)a5;
- (void)exitStewieWithContext:(id)a3 completion:(id)a4;
- (void)fetchNetworkList:(id)a3 completion:(id)a4;
- (void)fetchRoadsideProvidersWithContext:(id)a3 completion:(id)a4;
- (void)fetchSIMLockValue:(id)a3 completion:(id)a4;
- (void)generateAuthenticationInfoUsingSim:(id)a3 authParams:(id)a4 completion:(id)a5;
- (void)get2GSwitchEnabled:(id)a3;
- (void)get2GUserPreference:(id)a3;
- (void)getActiveConnections:(id)a3 completion:(id)a4;
- (void)getActiveContextsWithCallback:(id)a3;
- (void)getAllEmergencyNumbers:(id)a3;
- (void)getAnbrActivationState:(id)a3 completion:(id)a4;
- (void)getCallCapabilities:(id)a3 completion:(id)a4;
- (void)getConfiguredApns:(id)a3 completion:(id)a4;
- (void)getConnectionAssistantConfig:(id)a3;
- (void)getConnectionAssistantServicePlot:(id)a3;
- (void)getConnectionAssistantState:(id)a3;
- (void)getCurrentDataServiceDescriptor:(id)a3;
- (void)getCurrentDataSubscriptionContext:(id)a3;
- (void)getDataStatus:(id)a3 completion:(id)a4;
- (void)getDataStatusBasic:(id)a3 completion:(id)a4;
- (void)getDescriptorsForDomain:(int64_t)a3 completion:(id)a4;
- (void)getEmergencyTextNumbers:(id)a3 completion:(id)a4;
- (void)getEnhancedVoiceLinkQualityMetric:(id)a3 completion:(id)a4;
- (void)getEvolvedSubscriptionLabelID:(id)a3 withCallback:(id)a4;
- (void)getIMSRegistrationStatus:(id)a3 completion:(id)a4;
- (void)getInternationalDataAccess:(id)a3 completion:(id)a4;
- (void)getInternationalDataAccessStatus:(id)a3;
- (void)getInternetConnectionAvailability:(id)a3;
- (void)getInternetConnectionState:(id)a3;
- (void)getInternetDataStatus:(id)a3;
- (void)getInternetDataStatusBasic:(id)a3;
- (void)getLocalPolicies:(id)a3 completion:(id)a4;
- (void)getMaxDataRate:(id)a3 completion:(id)a4;
- (void)getMobileSubscriberHomeCountryList:(id)a3 completion:(id)a4;
- (void)getNATTKeepAliveOverCell:(id)a3 completion:(id)a4;
- (void)getOperatorMultiPartyCallCountMaximum:(id)a3 completion:(id)a4;
- (void)getPNRContext:(id)a3 completion:(id)a4;
- (void)getPNRPriorityRegistrationListWithCompletion:(id)a3;
- (void)getPNRSupportStatus:(id)a3 completion:(id)a4;
- (void)getPhoneServicesDeviceInfoWithCompletion:(id)a3;
- (void)getPhoneServicesDeviceListWithCompletion:(id)a3;
- (void)getPreferredDataServiceDescriptor:(id)a3;
- (void)getPreferredDataSubscriptionContext:(id)a3;
- (void)getPrivateNetworkCapabilitiesForContext:(id)a3 completion:(id)a4;
- (void)getRatSelection:(id)a3 completion:(id)a4;
- (void)getRegulatedRatsSwitchEnabled:(id)a3 completion:(id)a4;
- (void)getRegulatedRatsUserPreference:(id)a3 completion:(id)a4;
- (void)getRemainingPINAttemptCount:(id)a3 completion:(id)a4;
- (void)getRemainingPUKAttemptCount:(id)a3 completion:(id)a4;
- (void)getRemotePlanManageAccountInfoFor:(id)a3 completion:(id)a4;
- (void)getRemotePolicies:(id)a3 completion:(id)a4;
- (void)getResumableRoadsideProviderWithCompletion:(id)a3;
- (void)getRoamingStatus:(id)a3 completion:(id)a4;
- (void)getSIMStatus:(id)a3 completion:(id)a4;
- (void)getSIMTrayStatus:(id)a3;
- (void)getSatelliteMsgCfgToUpdateWithCompletion:(id)a3;
- (void)getShortLabel:(id)a3 completion:(id)a4;
- (void)getSignalStrengthInfo:(id)a3 completion:(id)a4;
- (void)getSignalStrengthMeasurements:(id)a3 completion:(id)a4;
- (void)getSimLabel:(id)a3 completion:(id)a4;
- (void)getSmsReadyState:(id)a3 completion:(id)a4;
- (void)getSmscAddress:(id)a3 completion:(id)a4;
- (void)getStewieSupportWithCompletion:(id)a3;
- (void)getSubscriptionInfo:(id)a3;
- (void)getSubscriptionUserFacingName:(id)a3 completion:(id)a4;
- (void)getSupportDynamicDataSimSwitch:(id)a3;
- (void)getSupportedDataRates:(id)a3 completion:(id)a4;
- (void)getSweetgumApps:(id)a3 completion:(id)a4;
- (void)getSweetgumCapabilities:(id)a3 completion:(id)a4;
- (void)getSweetgumDataPlanMetrics:(id)a3 completion:(id)a4;
- (void)getSweetgumPlans:(id)a3 completion:(id)a4;
- (void)getSweetgumUsage:(id)a3 completion:(id)a4;
- (void)getSweetgumUserConsentInfo:(id)a3 completion:(id)a4;
- (void)getTetheringStatus:(id)a3;
- (void)getTransportKeysToUpdateWithCompletion:(id)a3;
- (void)getUIConfiguredApns:(id)a3 completion:(id)a4;
- (void)getVoiceLinkQualityMetric:(id)a3 completion:(id)a4;
- (void)getWiFiCallingSettingPreferences:(id)a3 key:(id)a4 completion:(id)a5;
- (void)invalidateCrossPlatformPlanTransfer:(id)a3;
- (void)isAnyPlanOfTransferCapability:(unint64_t)a3 availableForThisDeviceWithCompletion:(id)a4;
- (void)isAttachApnSettingAllowed:(id)a3 completion:(id)a4;
- (void)isEmergencyNumber:(id)a3 number:(id)a4 completion:(id)a5;
- (void)isEmergencyNumberWithWhitelistIncluded:(id)a3 number:(id)a4 completion:(id)a5;
- (void)isNetworkReselectionNeeded:(id)a3 completion:(id)a4;
- (void)isNetworkSelectionMenuAvailable:(id)a3 completion:(id)a4;
- (void)isPNRSupported:(id)a3 completion:(id)a4;
- (void)isPreSharedKeyForReconnectionPresent:(id)a3 completion:(id)a4;
- (void)isPrivateNetworkContext:(id)a3 completion:(id)a4;
- (void)isPrivateNetworkPreferredOverWifi:(id)a3 completion:(id)a4;
- (void)isPrivateNetworkSIM:(id)a3 completion:(id)a4;
- (void)isTetheringEditingSupported:(id)a3 completion:(id)a4;
- (void)issuePNRRequest:(id)a3 pnrReqType:(id)a4 completion:(id)a5;
- (void)ping:(id)a3;
- (void)prepareCrossPlatformCellularPlanLabel:(id)a3 completion:(id)a4;
- (void)prepareCrossPlatformPlanTransfer:(id)a3 completion:(id)a4;
- (void)promptForSIMUnlock:(id)a3 completion:(id)a4;
- (void)purchaseSweetgumPlan:(id)a3 completion:(id)a4;
- (void)refreshCellMonitor:(id)a3 completion:(id)a4;
- (void)refreshSweetgumAll:(id)a3 completion:(id)a4;
- (void)refreshSweetgumApps:(id)a3 completion:(id)a4;
- (void)refreshSweetgumPlans:(id)a3 completion:(id)a4;
- (void)refreshSweetgumUsage:(id)a3 completion:(id)a4;
- (void)refreshUserAuthToken:(id)a3 error:(id *)a4;
- (void)remotePlanSignupInfoFor:(id)a3 userConsent:(int64_t)a4 completion:(id)a5;
- (void)removePoliciesFromLocalDevice:(id)a3 completion:(id)a4;
- (void)reportStewieConnectionAssistantEvent:(id)a3 completion:(id)a4;
- (void)reportStewieDeviceOrientation:(id)a3 completion:(id)a4;
- (void)requestSliceByUUID:(id)a3 completion:(id)a4;
- (void)requestSliceDeactivation:(id)a3;
- (void)requestStewieWithContext:(id)a3 completion:(id)a4;
- (void)resetAPNSettings:(id)a3;
- (void)resetProximityTransportExtension:(id)a3;
- (void)resetUIConfiguredApns:(id)a3 completion:(id)a4;
- (void)saveSimSetupInfo:(id)a3 info:(id)a4 completion:(id)a5;
- (void)selectNetwork:(id)a3 network:(id)a4 completion:(id)a5;
- (void)selectRoadsideProviderWithContext:(id)a3 completion:(id)a4;
- (void)sendDeadPeerDetection:(id)a3;
- (void)sendTaggedInfo:(id)a3 type:(unint64_t)a4 payload:(id)a5 completion:(id)a6;
- (void)setActiveBandInfo:(id)a3 bands:(id)a4 error:(id *)a5;
- (void)setActiveUserDataSelection:(id)a3 completion:(id)a4;
- (void)setActiveUserDataSelection:(id)a3 error:(id *)a4;
- (void)setBandInfo:(id)a3 bands:(id)a4 completion:(id)a5;
- (void)setDefaultVoice:(id)a3 completion:(id)a4;
- (void)setDefaultVoice:(id)a3 error:(id *)a4;
- (void)setDelegate:(id)a3;
- (void)setInternationalDataAccessStatus:(BOOL)a3 completion:(id)a4;
- (void)setLabel:(id)a3 label:(id)a4 completion:(id)a5;
- (void)setLabel:(id)a3 label:(id)a4 error:(id *)a5;
- (void)setLocalPolicies:(id)a3 completion:(id)a4;
- (void)setMaxDataRate:(id)a3 rate:(int64_t)a4 completion:(id)a5;
- (void)setRatSelection:(id)a3 selection:(id)a4 preferred:(id)a5 completion:(id)a6;
- (void)setRemotePolicies:(id)a3 completion:(id)a4;
- (void)setSatelliteAppCategories:(id)a3 appCategories:(id)a4 completion:(id)a5;
- (void)setUIConfiguredApns:(id)a3 apns:(id)a4 completion:(id)a5;
- (void)setUserEntered:(id)a3 monthlyBudget:(id)a4 completion:(id)a5;
- (void)setUserEntered:(id)a3 monthlyBudget:(id)a4 error:(id *)a5;
- (void)setUserEntered:(id)a3 monthlyRoamingBudget:(id)a4 completion:(id)a5;
- (void)setUserEntered:(id)a3 monthlyRoamingBudget:(id)a4 error:(id *)a5;
- (void)setUserEnteredBillingEnd:(id)a3 dayOfMonth:(id)a4 completion:(id)a5;
- (void)setUserEnteredBillingEnd:(id)a3 dayOfMonth:(id)a4 error:(id *)a5;
- (void)setVoLTEAudioCodec:(id)a3 codecInfo:(id)a4 completion:(id)a5;
- (void)setWiFiCallingSettingPreferences:(id)a3 key:(id)a4 value:(id)a5 completion:(id)a6;
- (void)shouldShowUserWarningWhenDialingCallOnContext:(id)a3 completion:(id)a4;
- (void)synchronousRequest:(id)a3 error:(id *)a4;
- (void)transferRemotePlan:(id)a3 completion:(id)a4;
- (void)transferRemotePlan:(id)a3 fromDevice:(id)a4 completion:(id)a5;
- (void)unlockPIN:(id)a3 pin:(id)a4 completion:(id)a5;
- (void)unlockPIN:(id)a3 pin:(id)a4 error:(id *)a5;
- (void)unlockPUK:(id)a3 puk:(id)a4 newPin:(id)a5 completion:(id)a6;
- (void)unlockPUK:(id)a3 puk:(id)a4 newPin:(id)a5 error:(id *)a6;
- (void)usageCollectionEnabled:(id)a3;
- (void)userEnteredBillingEndDayOfMont:(id)a3 completion:(id)a4;
- (void)userEnteredMonthlyBudget:(id)a3 completion:(id)a4;
- (void)userEnteredMonthlyRoamingBudget:(id)a3 completion:(id)a4;
- (void)validateProximityTransfer:(unint64_t)a3 pin:(id)a4 completion:(id)a5;
@end

@implementation CoreTelephonyClient

+ (id)sharedMultiplexer
{
  WeakRetained = objc_loadWeakRetained(&+[CoreTelephonyClient sharedMultiplexer]::sharedMux);
  if (!WeakRetained)
  {
    os_unfair_lock_lock(&+[CoreTelephonyClient sharedMultiplexer]::lock);
    WeakRetained = objc_loadWeakRetained(&+[CoreTelephonyClient sharedMultiplexer]::sharedMux);
    if (!WeakRetained)
    {
      WeakRetained = objc_opt_new();
      objc_storeWeak(&+[CoreTelephonyClient sharedMultiplexer]::sharedMux, WeakRetained);
    }

    os_unfair_lock_unlock(&+[CoreTelephonyClient sharedMultiplexer]::lock);
  }

  v3 = WeakRetained;

  return v3;
}

- (void)dealloc
{
  mux = self->_mux;
  if (mux)
  {
    [(CoreTelephonyClientMux *)mux removeDelegate:self->fDelegateAddr];
  }

  fOsStateHandle = self->fOsStateHandle;
  os_state_remove_handler();
  self->fOsStateHandle = 0;
  v5.receiver = self;
  v5.super_class = CoreTelephonyClient;
  [(CoreTelephonyClient *)&v5 dealloc];
}

void __101__CoreTelephonyClient_hiddenData__private_setPacketContextActiveByServiceType_connectionType_active___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __101__CoreTelephonyClient_hiddenData__private_setPacketContextActiveByServiceType_connectionType_active___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __90__CoreTelephonyClient_hiddenData__private_getConnectionAvailability_connectionType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)private_getActiveConnections:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__CoreTelephonyClient_hiddenData__private_getActiveConnections_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__CoreTelephonyClient_hiddenData__private_getActiveConnections_error___block_invoke_2;
  v11[3] = &unk_1E6A43C00;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 getActiveConnections:v6 completion:v11];
  if (a4)
  {
    v8 = v20[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __70__CoreTelephonyClient_hiddenData__private_getActiveConnections_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __83__CoreTelephonyClient_hiddenData__private_getConnectionState_connectionType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __95__CoreTelephonyClient_hiddenData__private_getSliceTrafficDescriptorsInfo_connectionType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)private_getSliceTrafficDescriptors:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    if (a3)
    {
      *a3 = 0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__CoreTelephonyClient_hiddenData__private_getSliceTrafficDescriptors___block_invoke;
    v16[3] = &unk_1E6A43BB0;
    v16[4] = &v17;
    v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v16];
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__CoreTelephonyClient_hiddenData__private_getSliceTrafficDescriptors___block_invoke_2;
    v9[3] = &unk_1E6A43C50;
    v9[4] = &v17;
    v9[5] = &v10;
    [v5 getSliceTrafficDescriptors:v9];
    if (a3)
    {
      v6 = v18[5];
      if (v6)
      {
        *a3 = v6;
      }
    }

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v17, 8);
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a3 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __70__CoreTelephonyClient_hiddenData__private_getSliceTrafficDescriptors___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)private_getDataStatus:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    if (a4)
    {
      *a4 = 0;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__CoreTelephonyClient_hiddenData__private_getDataStatus_error___block_invoke;
    v19[3] = &unk_1E6A43BB0;
    v19[4] = &v20;
    v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v19];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__CoreTelephonyClient_hiddenData__private_getDataStatus_error___block_invoke_2;
    v12[3] = &unk_1E6A43C78;
    v12[4] = &v20;
    v12[5] = &v13;
    [v8 getDataStatus:v7 completion:v12];
    if (a4)
    {
      v9 = v21[5];
      if (v9)
      {
        *a4 = v9;
      }
    }

    v10 = v14[5];
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v20, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __63__CoreTelephonyClient_hiddenData__private_getDataStatus_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (unsigned)private_getNATTKeepAliveOverCell:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = 0;
    if (a4)
    {
      *a4 = 0;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__CoreTelephonyClient_hiddenData__private_getNATTKeepAliveOverCell_error___block_invoke;
    v17[3] = &unk_1E6A43BB0;
    v17[4] = &v18;
    v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__CoreTelephonyClient_hiddenData__private_getNATTKeepAliveOverCell_error___block_invoke_2;
    v12[3] = &unk_1E6A43CA0;
    v12[4] = &v18;
    v12[5] = &v13;
    [v8 getNATTKeepAliveOverCell:v7 completion:v12];
    if (a4)
    {
      v9 = v19[5];
      if (v9)
      {
        *a4 = v9;
      }
    }

    v10 = *(v14 + 6);
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v18, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __74__CoreTelephonyClient_hiddenData__private_getNATTKeepAliveOverCell_error___block_invoke_2(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)requestSliceByUUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CoreTelephonyClient_Data__requestSliceByUUID_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 requestSliceByUUID:v6 completion:v8];
}

- (void)requestSliceDeactivation:(id)a3
{
  v5 = a3;
  v4 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&__block_literal_global];
  [v4 requestSliceDeactivation:v5 completion:&__block_literal_global_19];
}

void __58__CoreTelephonyClient_Data__setInternetActive_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1);
}

void __59__CoreTelephonyClient_Data__setTetheringActive_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1);
}

- (void)resetAPNSettings:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CoreTelephonyClient_Data__resetAPNSettings___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = v4;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 resetAPNSettings:v5];
}

- (id)resetAPNSettings
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CoreTelephonyClient_Data__resetAPNSettings__block_invoke;
  v6[3] = &unk_1E6A43BB0;
  v6[4] = &v7;
  v2 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__CoreTelephonyClient_Data__resetAPNSettings__block_invoke_2;
  v5[3] = &unk_1E6A43BB0;
  v5[4] = &v7;
  [v2 resetAPNSettings:v5];
  v3 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v3;
}

void __45__CoreTelephonyClient_Data__resetAPNSettings__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __45__CoreTelephonyClient_Data__resetAPNSettings__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __82__CoreTelephonyClient_Data__addLowLatencyFilter_pdp_queueSetId_uplink_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1);
}

void __72__CoreTelephonyClient_Data__getLowLatencyFilters_queueSetId_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void __85__CoreTelephonyClient_Data__deleteLowLatencyFilter_pdp_queueSetId_uplink_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1);
}

- (void)sendDeadPeerDetection:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__CoreTelephonyClient_Data__sendDeadPeerDetection___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = v4;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 sendDeadPeerDetection:v5];
}

- (id)sendDeadPeerDetection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CoreTelephonyClient_Data__sendDeadPeerDetection__block_invoke;
  v6[3] = &unk_1E6A43BB0;
  v6[4] = &v7;
  v2 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__CoreTelephonyClient_Data__sendDeadPeerDetection__block_invoke_2;
  v5[3] = &unk_1E6A43BB0;
  v5[4] = &v7;
  [v2 sendDeadPeerDetection:v5];
  v3 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v3;
}

void __50__CoreTelephonyClient_Data__sendDeadPeerDetection__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __50__CoreTelephonyClient_Data__sendDeadPeerDetection__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)setInternationalDataAccessStatus:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__CoreTelephonyClient_Data__setInternationalDataAccessStatus_completion___block_invoke;
  aBlock[3] = &unk_1E6A43D38;
  v11 = a3;
  aBlock[4] = self;
  v10 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  [(CoreTelephonyClient *)self getCurrentDataServiceDescriptor:v8];
}

void __73__CoreTelephonyClient_Data__setInternationalDataAccessStatus_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v8;
  v7 = v5;
  if (!v8)
  {
    v6 = [[CTServiceDescriptor alloc] initWithDomain:1 instance:&unk_1EF062110];
  }

  v9 = v6;
  [*(a1 + 32) setInternationalDataAccess:v6 status:*(a1 + 48) completion:*(a1 + 40)];
}

void __67__CoreTelephonyClient_Data__setInternationalDataAccessSync_status___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __67__CoreTelephonyClient_Data__setInternationalDataAccessSync_status___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)getInternationalDataAccessStatus:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __62__CoreTelephonyClient_Data__getInternationalDataAccessStatus___block_invoke;
  v10 = &unk_1E6A43D60;
  v11 = self;
  v12 = v4;
  v5 = v4;
  v6 = _Block_copy(&v7);
  [(CoreTelephonyClient *)self getCurrentDataServiceDescriptor:v6, v7, v8, v9, v10, v11];
}

void __62__CoreTelephonyClient_Data__getInternationalDataAccessStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v8;
  v7 = v5;
  if (!v8)
  {
    v6 = [[CTServiceDescriptor alloc] initWithDomain:1 instance:&unk_1EF062110];
  }

  v9 = v6;
  [*(a1 + 32) getInternationalDataAccess:v6 completion:*(a1 + 40)];
}

- (BOOL)getInternationalDataAccessStatusSync:(id *)a3
{
  v9 = 0;
  v5 = [(CoreTelephonyClient *)self getCurrentDataServiceDescriptorSync:&v9];
  v6 = v9;
  if (!v5)
  {
    v5 = [[CTServiceDescriptor alloc] initWithDomain:1 instance:&unk_1EF062110];
  }

  v7 = [(CoreTelephonyClient *)self getInternationalDataAccessSync:v5 error:a3];

  return v7;
}

- (void)getInternationalDataAccess:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CoreTelephonyClient_Data__getInternationalDataAccess_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getInternationalDataAccess:v6 completion:v8];
}

- (BOOL)getInternationalDataAccessSync:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__CoreTelephonyClient_Data__getInternationalDataAccessSync_error___block_invoke;
  v16[3] = &unk_1E6A43BB0;
  v16[4] = &v17;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v16];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CoreTelephonyClient_Data__getInternationalDataAccessSync_error___block_invoke_2;
  v11[3] = &unk_1E6A43D88;
  v11[4] = &v17;
  v11[5] = &v12;
  [v7 getInternationalDataAccess:v6 completion:v11];
  if (a4)
  {
    v8 = v18[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v17, 8);
  return v9;
}

void __66__CoreTelephonyClient_Data__getInternationalDataAccessSync_error___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __60__CoreTelephonyClient_Data__setSupportDynamicDataSimSwitch___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __60__CoreTelephonyClient_Data__setSupportDynamicDataSimSwitch___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)getSupportDynamicDataSimSwitch:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CoreTelephonyClient_Data__getSupportDynamicDataSimSwitch___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = v4;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getSupportDynamicDataSimSwitch:v5];
}

- (BOOL)getSupportDynamicDataSimSwitchSync:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__CoreTelephonyClient_Data__getSupportDynamicDataSimSwitchSync___block_invoke;
  v13[3] = &unk_1E6A43BB0;
  v13[4] = &v14;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v13];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CoreTelephonyClient_Data__getSupportDynamicDataSimSwitchSync___block_invoke_2;
  v8[3] = &unk_1E6A43D88;
  v8[4] = &v14;
  v8[5] = &v9;
  [v4 getSupportDynamicDataSimSwitch:v8];
  if (a3)
  {
    v5 = v15[5];
    if (v5)
    {
      *a3 = v5;
    }
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v14, 8);
  return v6;
}

void __64__CoreTelephonyClient_Data__getSupportDynamicDataSimSwitchSync___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (id)getPacketContextCount:(unsigned int *)a3
{
  if (a3)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy_;
    v18 = __Block_byref_object_dispose_;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__CoreTelephonyClient_Data__getPacketContextCount___block_invoke;
    v13[3] = &unk_1E6A43BB0;
    v13[4] = &v14;
    v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v13];
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__CoreTelephonyClient_Data__getPacketContextCount___block_invoke_2;
    v8[3] = &unk_1E6A43DB0;
    v8[4] = &v9;
    [v4 getPacketContextCount:v8];
    *a3 = *(v10 + 6);
    v5 = v15[5];
    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v5 = [v6 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

  return v5;
}

- (void)getInternetConnectionAvailability:(id)a3
{
  v5 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __63__CoreTelephonyClient_Data__getInternetConnectionAvailability___block_invoke_2;
    v12 = &unk_1E6A43CC8;
    v6 = v5;
    v13 = v6;
    v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v9];
    [v7 getConnectionAvailability:0 connectionType:0 completion:{v6, v9, v10, v11, v12}];
    v8 = &v13;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__CoreTelephonyClient_Data__getInternetConnectionAvailability___block_invoke;
    v14[3] = &unk_1E6A43D10;
    v15 = v5;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v14];
    v8 = &v15;
  }
}

void __63__CoreTelephonyClient_Data__getInternetConnectionAvailability___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (id)getInternetConnectionAvailabilitySync:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v5 = [(CoreTelephonyClient *)self private_getConnectionAvailability:0 connectionType:0 error:a3];
  }

  else if (a3)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    v7 = v6;
    v5 = 0;
    *a3 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)getActiveConnections:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__CoreTelephonyClient_Data__getActiveConnections_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getActiveConnections:v6 completion:v8];
}

- (id)getActiveConnections:(id)a3 error:(id *)a4
{
  v4 = [(CoreTelephonyClient *)self private_getActiveConnections:a3 error:a4];

  return v4;
}

void __74__CoreTelephonyClient_Data__getConnectionState_connectionType_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (id)getSliceTrafficDescriptors:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v5 = [(CoreTelephonyClient *)self private_getSliceTrafficDescriptors:a3];
  }

  else if (a3)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    v7 = v6;
    v5 = 0;
    *a3 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)getInternetConnectionState:(id)a3
{
  v5 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __56__CoreTelephonyClient_Data__getInternetConnectionState___block_invoke_2;
    v12 = &unk_1E6A43CC8;
    v6 = v5;
    v13 = v6;
    v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v9];
    [v7 getConnectionState:0 connectionType:0 completion:{v6, v9, v10, v11, v12}];
    v8 = &v13;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__CoreTelephonyClient_Data__getInternetConnectionState___block_invoke;
    v14[3] = &unk_1E6A43D10;
    v15 = v5;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v14];
    v8 = &v15;
  }
}

void __56__CoreTelephonyClient_Data__getInternetConnectionState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (id)getInternetConnectionStateSync:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v5 = [(CoreTelephonyClient *)self private_getConnectionState:0 connectionType:0 error:a3];
  }

  else if (a3)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    v7 = v6;
    v5 = 0;
    *a3 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)getDataStatus:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __54__CoreTelephonyClient_Data__getDataStatus_completion___block_invoke_2;
    v15 = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v12];
    [v10 getDataStatus:v7 completion:{v9, v12, v13, v14, v15}];
    v11 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__CoreTelephonyClient_Data__getDataStatus_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = v8;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v17];
    v11 = &v18;
  }
}

void __54__CoreTelephonyClient_Data__getDataStatus_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (id)getDataStatus:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v8 = [(CoreTelephonyClient *)self private_getDataStatus:v7 error:a4];
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)getDataStatusBasic:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__CoreTelephonyClient_Data__getDataStatusBasic_completion___block_invoke_2;
    v10[3] = &unk_1E6A43DD8;
    v10[4] = v8;
    [(CoreTelephonyClient *)self getDataStatus:v7 completion:v10];
  }

  else
  {
    v9 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__CoreTelephonyClient_Data__getDataStatusBasic_completion___block_invoke;
    v11[3] = &unk_1E6A43D10;
    v11[4] = v8;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v11];
  }
}

void __59__CoreTelephonyClient_Data__getDataStatusBasic_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void __59__CoreTelephonyClient_Data__getDataStatusBasic_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [v7 copyBasic];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getDataStatusBasic:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v8 = [(CoreTelephonyClient *)self getDataStatus:v7 error:a4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 copyBasic];
    }

    else
    {
      v10 = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)getInternetDataStatus:(id)a3
{
  v5 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __51__CoreTelephonyClient_Data__getInternetDataStatus___block_invoke_2;
    v12 = &unk_1E6A43CC8;
    v6 = v5;
    v13 = v6;
    v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v9];
    [v7 getDataStatus:0 completion:{v6, v9, v10, v11, v12}];
    v8 = &v13;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__CoreTelephonyClient_Data__getInternetDataStatus___block_invoke;
    v14[3] = &unk_1E6A43D10;
    v15 = v5;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v14];
    v8 = &v15;
  }
}

void __51__CoreTelephonyClient_Data__getInternetDataStatus___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (id)getInternetDataStatusSync:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v5 = [(CoreTelephonyClient *)self private_getDataStatus:0 error:a3];
  }

  else if (a3)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    v7 = v6;
    v5 = 0;
    *a3 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)getInternetDataStatusBasic:(id)a3
{
  v5 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v6 = v7;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__CoreTelephonyClient_Data__getInternetDataStatusBasic___block_invoke_2;
    v7[3] = &unk_1E6A43DD8;
    v7[4] = v5;
    [(CoreTelephonyClient *)self getInternetDataStatus:v7];
  }

  else
  {
    v6 = v8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__CoreTelephonyClient_Data__getInternetDataStatusBasic___block_invoke;
    v8[3] = &unk_1E6A43D10;
    v8[4] = v5;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v8];
  }
}

void __56__CoreTelephonyClient_Data__getInternetDataStatusBasic___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void __56__CoreTelephonyClient_Data__getInternetDataStatusBasic___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [v7 copyBasic];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getInternetDataStatusBasicSync:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v5 = [(CoreTelephonyClient *)self getInternetDataStatusSync:a3];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 copyBasic];
    }

    else
    {
      v7 = 0;
    }
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a3 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)getNATTKeepAliveOverCell:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __65__CoreTelephonyClient_Data__getNATTKeepAliveOverCell_completion___block_invoke_2;
    v15 = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v12];
    [v10 getNATTKeepAliveOverCell:v7 completion:{v9, v12, v13, v14, v15}];
    v11 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__CoreTelephonyClient_Data__getNATTKeepAliveOverCell_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = v8;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v17];
    v11 = &v18;
  }
}

void __65__CoreTelephonyClient_Data__getNATTKeepAliveOverCell_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (unsigned)getNATTKeepAliveOverCell:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v8 = [(CoreTelephonyClient *)self private_getNATTKeepAliveOverCell:v7 error:a4];
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unsigned)getNATTKeepAliveOverCell:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {

    return [(CoreTelephonyClient *)self private_getNATTKeepAliveOverCell:0 error:a3];
  }

  else
  {
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    }

    return 0;
  }
}

- (unsigned)getNATTKeepAliveOverCellForPreferredDataContext:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {

    return [(CoreTelephonyClient *)self private_getNATTKeepAliveOverCell:0 error:a3];
  }

  else
  {
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    }

    return 0;
  }
}

- (BOOL)isTetheringEditingSupported:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__CoreTelephonyClient_Data__isTetheringEditingSupported_error___block_invoke;
  v15[3] = &unk_1E6A43BB0;
  v15[4] = &v16;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CoreTelephonyClient_Data__isTetheringEditingSupported_error___block_invoke_2;
  v10[3] = &unk_1E6A43D88;
  v10[4] = &v16;
  v10[5] = &v11;
  [v7 isTetheringEditingSupported:v6 completion:v10];
  if (a4)
  {
    *a4 = v17[5];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __63__CoreTelephonyClient_Data__isTetheringEditingSupported_error___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)isTetheringEditingSupported:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CoreTelephonyClient_Data__isTetheringEditingSupported_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isTetheringEditingSupported:v6 completion:v8];
}

- (void)getAnbrActivationState:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __63__CoreTelephonyClient_Data__getAnbrActivationState_completion___block_invoke_2;
    v15 = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v12];
    [v10 getAnbrActivationState:v7 completion:{v9, v12, v13, v14, v15}];
    v11 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__CoreTelephonyClient_Data__getAnbrActivationState_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = v8;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v17];
    v11 = &v18;
  }
}

void __63__CoreTelephonyClient_Data__getAnbrActivationState_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void __75__CoreTelephonyClient_Data__queryAnbrBitrate_bitrate_direction_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1);
}

void __58__CoreTelephonyClient_Data__setCoalescing_udp_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1);
}

void __62__CoreTelephonyClient_Data__simulateDataStall_pdp_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1);
}

- (void)getCurrentDataSubscriptionContext:(id)a3
{
  v5 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __63__CoreTelephonyClient_Data__getCurrentDataSubscriptionContext___block_invoke_2;
    v12 = &unk_1E6A43CC8;
    v6 = v5;
    v13 = v6;
    v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v9];
    [v7 getCurrentDataSubscriptionContext:{v6, v9, v10, v11, v12}];
    v8 = &v13;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__CoreTelephonyClient_Data__getCurrentDataSubscriptionContext___block_invoke;
    v14[3] = &unk_1E6A43D10;
    v15 = v5;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v14];
    v8 = &v15;
  }
}

void __63__CoreTelephonyClient_Data__getCurrentDataSubscriptionContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (void)getCurrentDataServiceDescriptor:(id)a3
{
  v5 = a3;
  if (![(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__CoreTelephonyClient_Data__getCurrentDataServiceDescriptor___block_invoke;
    v15[3] = &unk_1E6A43D10;
    v16 = v5;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v15];
    v7 = v16;
LABEL_9:

    goto LABEL_10;
  }

  if (!v5)
  {
LABEL_8:
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__CoreTelephonyClient_Data__getCurrentDataServiceDescriptor___block_invoke_2;
    v13[3] = &unk_1E6A43CC8;
    v8 = v5;
    v14 = v8;
    v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__CoreTelephonyClient_Data__getCurrentDataServiceDescriptor___block_invoke_3;
    v10[3] = &unk_1E6A43E00;
    v10[4] = self;
    v12 = sel_getCurrentDataServiceDescriptor_;
    v11 = v8;
    [v9 getCurrentDataServiceDescriptor:v10];

    v7 = v14;
    goto LABEL_9;
  }

  v6 = [(CoreTelephonyClient *)self cachedValueForSelector:sel_getCurrentDataServiceDescriptor_];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_8;
  }

  (*(v5 + 2))(v5, v6, 0);

LABEL_10:
}

void __61__CoreTelephonyClient_Data__getCurrentDataServiceDescriptor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void __61__CoreTelephonyClient_Data__getCurrentDataServiceDescriptor___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) cacheValue:v6 forSelector:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

- (id)getCurrentDataSubscriptionContextSync:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    if (a3)
    {
      *a3 = 0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__CoreTelephonyClient_Data__getCurrentDataSubscriptionContextSync___block_invoke;
    v16[3] = &unk_1E6A43BB0;
    v16[4] = &v17;
    v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v16];
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__CoreTelephonyClient_Data__getCurrentDataSubscriptionContextSync___block_invoke_2;
    v9[3] = &unk_1E6A43E28;
    v9[4] = &v17;
    v9[5] = &v10;
    [v5 getCurrentDataSubscriptionContext:v9];
    if (a3)
    {
      v6 = v18[5];
      if (v6)
      {
        *a3 = v6;
      }
    }

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v17, 8);
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a3 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __67__CoreTelephonyClient_Data__getCurrentDataSubscriptionContextSync___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getCurrentDataServiceDescriptorSync:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    if (a3)
    {
      *a3 = 0;
    }

    v5 = [(CoreTelephonyClient *)self cachedValueForSelector:sel_getCurrentDataServiceDescriptor_];
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy_;
      v21 = __Block_byref_object_dispose_;
      v22 = 0;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__CoreTelephonyClient_Data__getCurrentDataServiceDescriptorSync___block_invoke;
      v16[3] = &unk_1E6A43BB0;
      v16[4] = &v17;
      v6 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v16];
      v10 = 0;
      v11 = &v10;
      v12 = 0x3032000000;
      v13 = __Block_byref_object_copy_;
      v14 = __Block_byref_object_dispose_;
      v15 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __65__CoreTelephonyClient_Data__getCurrentDataServiceDescriptorSync___block_invoke_2;
      v9[3] = &unk_1E6A43E50;
      v9[4] = &v17;
      v9[5] = &v10;
      [v6 getCurrentDataServiceDescriptor:v9];
      if (a3)
      {
        v7 = v18[5];
        if (v7)
        {
          *a3 = v7;
        }
      }

      [(CoreTelephonyClient *)self cacheValue:v11[5] forSelector:sel_getCurrentDataServiceDescriptor_];
      v5 = v11[5];
      _Block_object_dispose(&v10, 8);

      _Block_object_dispose(&v17, 8);
    }
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a3 = v5 = 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __65__CoreTelephonyClient_Data__getCurrentDataServiceDescriptorSync___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getPreferredDataSubscriptionContext:(id)a3
{
  v5 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __65__CoreTelephonyClient_Data__getPreferredDataSubscriptionContext___block_invoke_2;
    v12 = &unk_1E6A43CC8;
    v6 = v5;
    v13 = v6;
    v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v9];
    [v7 getPreferredDataSubscriptionContext:{v6, v9, v10, v11, v12}];
    v8 = &v13;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__CoreTelephonyClient_Data__getPreferredDataSubscriptionContext___block_invoke;
    v14[3] = &unk_1E6A43D10;
    v15 = v5;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v14];
    v8 = &v15;
  }
}

void __65__CoreTelephonyClient_Data__getPreferredDataSubscriptionContext___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (void)getPreferredDataServiceDescriptor:(id)a3
{
  v5 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __63__CoreTelephonyClient_Data__getPreferredDataServiceDescriptor___block_invoke_2;
    v12 = &unk_1E6A43CC8;
    v6 = v5;
    v13 = v6;
    v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v9];
    [v7 getPreferredDataServiceDescriptor:{v6, v9, v10, v11, v12}];
    v8 = &v13;
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__CoreTelephonyClient_Data__getPreferredDataServiceDescriptor___block_invoke;
    v14[3] = &unk_1E6A43D10;
    v15 = v5;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v14];
    v8 = &v15;
  }
}

void __63__CoreTelephonyClient_Data__getPreferredDataServiceDescriptor___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (id)getPreferredDataSubscriptionContextSync:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    if (a3)
    {
      *a3 = 0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__CoreTelephonyClient_Data__getPreferredDataSubscriptionContextSync___block_invoke;
    v16[3] = &unk_1E6A43BB0;
    v16[4] = &v17;
    v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v16];
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__CoreTelephonyClient_Data__getPreferredDataSubscriptionContextSync___block_invoke_2;
    v9[3] = &unk_1E6A43E28;
    v9[4] = &v17;
    v9[5] = &v10;
    [v5 getPreferredDataSubscriptionContext:v9];
    if (a3)
    {
      v6 = v18[5];
      if (v6)
      {
        *a3 = v6;
      }
    }

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v17, 8);
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a3 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __69__CoreTelephonyClient_Data__getPreferredDataSubscriptionContextSync___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getPreferredDataServiceDescriptorSync:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    if (a3)
    {
      *a3 = 0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__CoreTelephonyClient_Data__getPreferredDataServiceDescriptorSync___block_invoke;
    v16[3] = &unk_1E6A43BB0;
    v16[4] = &v17;
    v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v16];
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__CoreTelephonyClient_Data__getPreferredDataServiceDescriptorSync___block_invoke_2;
    v9[3] = &unk_1E6A43E50;
    v9[4] = &v17;
    v9[5] = &v10;
    [v5 getPreferredDataServiceDescriptor:v9];
    if (a3)
    {
      v6 = v18[5];
      if (v6)
      {
        *a3 = v6;
      }
    }

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v17, 8);
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a3 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __67__CoreTelephonyClient_Data__getPreferredDataServiceDescriptorSync___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getTetheringStatus:(id)a3
{
  v5 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    [(CoreTelephonyClient *)self getTetheringStatus:v5 connectionType:4];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__CoreTelephonyClient_Data__getTetheringStatus___block_invoke;
    v6[3] = &unk_1E6A43D10;
    v7 = v5;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v6];
  }
}

void __48__CoreTelephonyClient_Data__getTetheringStatus___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void __63__CoreTelephonyClient_Data__getTetheringStatus_connectionType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (id)getTetheringStatusSync:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v5 = [(CoreTelephonyClient *)self getTetheringStatusSync:a3 connectionType:4];
  }

  else if (a3)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    v7 = v6;
    v5 = 0;
    *a3 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __67__CoreTelephonyClient_Data__getTetheringStatusSync_connectionType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)enterLoopBackMode
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__CoreTelephonyClient_Data__enterLoopBackMode__block_invoke;
    v7[3] = &unk_1E6A43BB0;
    v7[4] = &v8;
    v3 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v7];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__CoreTelephonyClient_Data__enterLoopBackMode__block_invoke_2;
    v6[3] = &unk_1E6A43BB0;
    v6[4] = &v8;
    [v3 enterLoopBackMode:v6];
    v4 = v9[5];

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  }

  return v4;
}

void __46__CoreTelephonyClient_Data__enterLoopBackMode__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __46__CoreTelephonyClient_Data__enterLoopBackMode__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __94__CoreTelephonyClient_Data__createAssertionForConnectionType_allocator_error_onReAssertError___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __94__CoreTelephonyClient_Data__createAssertionForConnectionType_allocator_error_onReAssertError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        (*(v6 + 16))(v6, v3);
      }
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy_;
      v16 = __Block_byref_object_dispose_;
      v17 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __94__CoreTelephonyClient_Data__createAssertionForConnectionType_allocator_error_onReAssertError___block_invoke_4;
      v11[3] = &unk_1E6A43BB0;
      v11[4] = &v12;
      v7 = [WeakRetained synchronousProxyWithErrorHandler:v11];
      v8 = *(a1 + 48);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __94__CoreTelephonyClient_Data__createAssertionForConnectionType_allocator_error_onReAssertError___block_invoke_5;
      v10[3] = &unk_1E6A43BB0;
      v10[4] = &v12;
      [v7 setAssertionForConnectionType:v8 enable:1 completion:v10];
      if (v13[5])
      {
        v9 = *(a1 + 32);
        if (v9)
        {
          (*(v9 + 16))();
        }
      }

      _Block_object_dispose(&v12, 8);
    }
  }
}

- (id)setApplicationCategory:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__CoreTelephonyClient_Data__setApplicationCategory___block_invoke;
  v11[3] = &unk_1E6A43BB0;
  v11[4] = &v12;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v11];
  v6 = v5;
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__CoreTelephonyClient_Data__setApplicationCategory___block_invoke_2;
    v10[3] = &unk_1E6A43BB0;
    v10[4] = &v12;
    [v5 setApplicationCategory:v4 completion:v10];
    v7 = v13[5];
    if (!v7)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = v13[5];
  }

  v8 = v7;
LABEL_6:

  _Block_object_dispose(&v12, 8);

  return v8;
}

void __52__CoreTelephonyClient_Data__setApplicationCategory___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)setWiFiCallingSettingPreferences:(id)a3 key:(id)a4 value:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__CoreTelephonyClient_Settings__setWiFiCallingSettingPreferences_key_value_completion___block_invoke;
  v16[3] = &unk_1E6A43CC8;
  v14 = v13;
  v17 = v14;
  v15 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v16];
  [v15 setWiFiCallingSettingPreferences:v10 key:v11 value:v12 completion:v14];
}

- (void)getWiFiCallingSettingPreferences:(id)a3 key:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CoreTelephonyClient_Settings__getWiFiCallingSettingPreferences_key_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = v10;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 getWiFiCallingSettingPreferences:v8 key:v9 completion:v11];
}

- (id)getWiFiCallingSettingPreferences:(id)a3 key:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __76__CoreTelephonyClient_Settings__getWiFiCallingSettingPreferences_key_error___block_invoke;
  v20[3] = &unk_1E6A43BB0;
  v20[4] = &v21;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v20];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CoreTelephonyClient_Settings__getWiFiCallingSettingPreferences_key_error___block_invoke_2;
  v13[3] = &unk_1E6A43F88;
  v13[4] = &v21;
  v13[5] = &v14;
  [v10 getWiFiCallingSettingPreferences:v8 key:v9 completion:v13];
  if (a5)
  {
    *a5 = v22[5];
  }

  v11 = v15[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __76__CoreTelephonyClient_Settings__getWiFiCallingSettingPreferences_key_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)setWiFiCallingSettingPreferences:(id)a3 key:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__CoreTelephonyClient_Settings__setWiFiCallingSettingPreferences_key_value___block_invoke;
  v15[3] = &unk_1E6A43BB0;
  v15[4] = &v16;
  v11 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__CoreTelephonyClient_Settings__setWiFiCallingSettingPreferences_key_value___block_invoke_2;
  v14[3] = &unk_1E6A43BB0;
  v14[4] = &v16;
  [v11 setWiFiCallingSettingPreferences:v8 key:v9 value:v10 completion:v14];
  v12 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v12;
}

void __76__CoreTelephonyClient_Settings__setWiFiCallingSettingPreferences_key_value___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __76__CoreTelephonyClient_Settings__setWiFiCallingSettingPreferences_key_value___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)copyEmergencyMode:(id)a3
{
  v5 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __52__CoreTelephonyClient_Emergency__copyEmergencyMode___block_invoke_2;
    v13 = &unk_1E6A441C8;
    v6 = &v14;
    v14 = v5;
    v7 = v5;
    v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v10];
    [v8 copyEmergencyMode:{v7, v10, v11, v12, v13}];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__CoreTelephonyClient_Emergency__copyEmergencyMode___block_invoke;
    v15[3] = &unk_1E6A441A0;
    v6 = &v16;
    v16 = v5;
    v9 = v5;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v15];
  }
}

void __52__CoreTelephonyClient_Emergency__copyEmergencyMode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, v2);
}

- (id)copyEmergencyModeWithError:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__CoreTelephonyClient_Emergency__copyEmergencyModeWithError___block_invoke;
    v15[3] = &unk_1E6A441F0;
    v15[4] = &v16;
    v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__1;
    v13 = __Block_byref_object_dispose__1;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__CoreTelephonyClient_Emergency__copyEmergencyModeWithError___block_invoke_2;
    v8[3] = &unk_1E6A44218;
    v8[4] = &v16;
    v8[5] = &v9;
    [v5 copyEmergencyMode:v8];
    if (a3)
    {
      *a3 = v17[5];
    }

    v6 = v10[5];
    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v16, 8);
    return v6;
  }

  else
  {
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    }

    return 0;
  }
}

void __61__CoreTelephonyClient_Emergency__copyEmergencyModeWithError___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v9 = [[CTEmergencyModeResult alloc] initWithMode:v7 andContext:v12];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (void)getAllEmergencyNumbers:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CoreTelephonyClient_Emergency__getAllEmergencyNumbers___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = v4;
  v5 = v4;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getAllEmergencyNumbers:v5];
}

- (id)getAllEmergencyNumbersWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__CoreTelephonyClient_Emergency__getAllEmergencyNumbersWithError___block_invoke;
  v14[3] = &unk_1E6A441F0;
  v14[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v14];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__CoreTelephonyClient_Emergency__getAllEmergencyNumbersWithError___block_invoke_2;
  v7[3] = &unk_1E6A44240;
  v7[4] = &v15;
  v7[5] = &v8;
  [v4 getAllEmergencyNumbers:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __66__CoreTelephonyClient_Emergency__getAllEmergencyNumbersWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)refreshCellMonitor:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __66__CoreTelephonyClient_CellMonitor__refreshCellMonitor_completion___block_invoke_2;
    v15 = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v12];
    [v10 refreshCellMonitor:v7 completion:{v9, v12, v13, v14, v15}];
    v11 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__CoreTelephonyClient_CellMonitor__refreshCellMonitor_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = v8;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v17];
    v11 = &v18;
  }
}

void __66__CoreTelephonyClient_CellMonitor__refreshCellMonitor_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1);
}

- (void)copyCellInfo:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __60__CoreTelephonyClient_CellMonitor__copyCellInfo_completion___block_invoke_2;
    v15 = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v12];
    [v10 copyCellInfo:v7 completion:{v9, v12, v13, v14, v15}];
    v11 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__CoreTelephonyClient_CellMonitor__copyCellInfo_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = v8;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v17];
    v11 = &v18;
  }
}

void __60__CoreTelephonyClient_CellMonitor__copyCellInfo_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (void)copyCellId:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __58__CoreTelephonyClient_CellMonitor__copyCellId_completion___block_invoke_2;
    v15 = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v12];
    [v10 copyCellId:v7 completion:{v9, v12, v13, v14, v15}];
    v11 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__CoreTelephonyClient_CellMonitor__copyCellId_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = v8;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v17];
    v11 = &v18;
  }
}

void __58__CoreTelephonyClient_CellMonitor__copyCellId_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (id)copyPublicCellId:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__2;
    v23 = __Block_byref_object_dispose__2;
    v24 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__CoreTelephonyClient_CellMonitor__copyPublicCellId_error___block_invoke;
    v18[3] = &unk_1E6A43BB0;
    v18[4] = &v19;
    v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__2;
    v16 = __Block_byref_object_dispose__2;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__CoreTelephonyClient_CellMonitor__copyPublicCellId_error___block_invoke_2;
    v11[3] = &unk_1E6A44268;
    v11[4] = &v19;
    v11[5] = &v12;
    [v8 copyPublicCellId:v7 completion:v11];
    if (a4)
    {
      *a4 = v20[5];
    }

    v9 = v13[5];
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v19, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __59__CoreTelephonyClient_CellMonitor__copyPublicCellId_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)copyLocationAreaCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CoreTelephonyClient_CellMonitor__copyLocationAreaCode_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 copyLocationAreaCode:v6 completion:v8];
}

- (void)isEmergencyNumber:(id)a3 number:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__CoreTelephonyClient_Call__isEmergencyNumber_number_completion___block_invoke;
  v13[3] = &unk_1E6A441C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 isEmergencyNumber:v11 number:v10 completion:v9];
}

- (BOOL)isEmergencyNumber:(id)a3 number:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4;
  v23 = __Block_byref_object_dispose__4;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__CoreTelephonyClient_Call__isEmergencyNumber_number_error___block_invoke;
  v18[3] = &unk_1E6A441F0;
  v18[4] = &v19;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__CoreTelephonyClient_Call__isEmergencyNumber_number_error___block_invoke_2;
  v13[3] = &unk_1E6A44A90;
  v13[4] = &v19;
  v13[5] = &v14;
  [v10 isEmergencyNumber:v8 number:v9 completion:v13];
  if (a5)
  {
    *a5 = v20[5];
  }

  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v19, 8);
  return v11;
}

void __60__CoreTelephonyClient_Call__isEmergencyNumber_number_error___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)isEmergencyNumberWithWhitelistIncluded:(id)a3 number:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__CoreTelephonyClient_Call__isEmergencyNumberWithWhitelistIncluded_number_completion___block_invoke;
  v13[3] = &unk_1E6A441C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 isEmergencyNumberWithWhitelistIncluded:v11 number:v10 completion:v9];
}

- (BOOL)isEmergencyNumberWithWhitelistIncluded:(id)a3 number:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4;
  v23 = __Block_byref_object_dispose__4;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__CoreTelephonyClient_Call__isEmergencyNumberWithWhitelistIncluded_number_error___block_invoke;
  v18[3] = &unk_1E6A441F0;
  v18[4] = &v19;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CoreTelephonyClient_Call__isEmergencyNumberWithWhitelistIncluded_number_error___block_invoke_2;
  v13[3] = &unk_1E6A44A90;
  v13[4] = &v19;
  v13[5] = &v14;
  [v10 isEmergencyNumberWithWhitelistIncluded:v8 number:v9 completion:v13];
  if (a5)
  {
    *a5 = v20[5];
  }

  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v19, 8);
  return v11;
}

void __81__CoreTelephonyClient_Call__isEmergencyNumberWithWhitelistIncluded_number_error___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)shouldShowUserWarningWhenDialingCallOnContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__CoreTelephonyClient_Call__shouldShowUserWarningWhenDialingCallOnContext_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 shouldShowUserWarningWhenDialingCallOnContext:v8 completion:v7];
}

- (BOOL)shouldShowUserWarningWhenDialingCallOnContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__CoreTelephonyClient_Call__shouldShowUserWarningWhenDialingCallOnContext_error___block_invoke;
  v15[3] = &unk_1E6A441F0;
  v15[4] = &v16;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__CoreTelephonyClient_Call__shouldShowUserWarningWhenDialingCallOnContext_error___block_invoke_2;
  v10[3] = &unk_1E6A44A90;
  v10[4] = &v16;
  v10[5] = &v11;
  [v7 shouldShowUserWarningWhenDialingCallOnContext:v6 completion:v10];
  if (a4)
  {
    *a4 = v17[5];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __81__CoreTelephonyClient_Call__shouldShowUserWarningWhenDialingCallOnContext_error___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (id)shouldShowBrandedCallingInfo:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__CoreTelephonyClient_Call__shouldShowBrandedCallingInfo___block_invoke;
  v14[3] = &unk_1E6A441F0;
  v14[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v14];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__CoreTelephonyClient_Call__shouldShowBrandedCallingInfo___block_invoke_2;
  v7[3] = &unk_1E6A44A90;
  v7[4] = &v15;
  v7[5] = &v8;
  [v4 shouldShowBrandedCallingInfo:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __58__CoreTelephonyClient_Call__shouldShowBrandedCallingInfo___block_invoke_2(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v9 = obj;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)getCallCapabilities:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__CoreTelephonyClient_Call__getCallCapabilities_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getCallCapabilities:v8 completion:v7];
}

- (id)getCallCapabilities:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__CoreTelephonyClient_Call__getCallCapabilities_error___block_invoke;
  v17[3] = &unk_1E6A441F0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CoreTelephonyClient_Call__getCallCapabilities_error___block_invoke_2;
  v10[3] = &unk_1E6A44AB8;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getCallCapabilities:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __55__CoreTelephonyClient_Call__getCallCapabilities_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getOperatorMultiPartyCallCountMaximum:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__CoreTelephonyClient_Call__getOperatorMultiPartyCallCountMaximum_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getOperatorMultiPartyCallCountMaximum:v8 completion:v7];
}

void __78__CoreTelephonyClient_Call__getOperatorMultiPartyCallCountMaximum_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = a2;
  v5 = [v3 numberWithInt:0];
  (*(v2 + 16))(v2, v5, v4);
}

- (id)getOperatorMultiPartyCallCountMaximum:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__CoreTelephonyClient_Call__getOperatorMultiPartyCallCountMaximum_error___block_invoke;
  v17[3] = &unk_1E6A441F0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4;
  v15 = __Block_byref_object_dispose__4;
  v16 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__CoreTelephonyClient_Call__getOperatorMultiPartyCallCountMaximum_error___block_invoke_2;
  v10[3] = &unk_1E6A44AE0;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getOperatorMultiPartyCallCountMaximum:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __73__CoreTelephonyClient_Call__getOperatorMultiPartyCallCountMaximum_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)enableLazuli:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__CoreTelephonyClient_Lazuli__enableLazuli_withError___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v8 = [[CTXPCSetLazuliStateRequest alloc] initWithContext:v6 shouldEnable:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__CoreTelephonyClient_Lazuli__enableLazuli_withError___block_invoke_2;
  v11[3] = &unk_1E6A44B08;
  v11[4] = &v13;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v14[5];
  }

  v9 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v9;
}

- (BOOL)disableLazuli:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__CoreTelephonyClient_Lazuli__disableLazuli_withError___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v8 = [[CTXPCSetLazuliStateRequest alloc] initWithContext:v6 shouldEnable:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CoreTelephonyClient_Lazuli__disableLazuli_withError___block_invoke_2;
  v11[3] = &unk_1E6A44B08;
  v11[4] = &v13;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v14[5];
  }

  v9 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v9;
}

- (id)retrieveMessage:(id)a3 withMessageID:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__5;
    v26 = __Block_byref_object_dispose__5;
    v27 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__CoreTelephonyClient_Lazuli__retrieveMessage_withMessageID_withError___block_invoke;
    v21[3] = &unk_1E6A43BB0;
    v21[4] = &v22;
    v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v21];
    v11 = [[CTXPCRetrieveMessageRequest alloc] initWithContext:v8 messageID:v9];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__5;
    v19 = __Block_byref_object_dispose__5;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__CoreTelephonyClient_Lazuli__retrieveMessage_withMessageID_withError___block_invoke_2;
    v14[3] = &unk_1E6A44B30;
    v14[4] = &v22;
    v14[5] = &v15;
    [v10 sendRequest:v11 completionHandler:v14];
    v12 = v23[5];
    if (v12)
    {
      *a5 = v12;
    }

    a5 = [v16[5] messageEnvelope];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v22, 8);
  }

  return a5;
}

void __71__CoreTelephonyClient_Lazuli__retrieveMessage_withMessageID_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)retrieveAllIncomingMessageIDs:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__CoreTelephonyClient_Lazuli__retrieveAllIncomingMessageIDs_withError___block_invoke;
  v19[3] = &unk_1E6A43BB0;
  v19[4] = &v20;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v19];
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCRetrieveAllMessagesRequest alloc] initWithContext:v6];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CoreTelephonyClient_Lazuli__retrieveAllIncomingMessageIDs_withError___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v20;
  v12[5] = &v13;
  [v7 sendRequest:v8 completionHandler:v12];
  if (a4)
  {
    v9 = v21[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = [v14[5] messageIDList];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __71__CoreTelephonyClient_Lazuli__retrieveAllIncomingMessageIDs_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (BOOL)revokeMessage:(id)a3 withRevokeData:(id)a4 withMessageID:(id)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__CoreTelephonyClient_Lazuli__revokeMessage_withRevokeData_withMessageID_withError___block_invoke;
  v20[3] = &unk_1E6A43BB0;
  v20[4] = &v21;
  v13 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v20];
  v14 = [[CTXPCMessageRevokeRequest alloc] initWithContext:v10 revokeData:v11 messageID:v12];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__CoreTelephonyClient_Lazuli__revokeMessage_withRevokeData_withMessageID_withError___block_invoke_2;
  v19[3] = &unk_1E6A44B08;
  v19[4] = &v21;
  [v13 sendRequest:v14 completionHandler:v19];
  v15 = v22;
  if (a6)
  {
    v16 = v22[5];
    if (v16)
    {
      *a6 = v16;
      v15 = v22;
    }
  }

  v17 = v15[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v17;
}

- (BOOL)acknowledgeIncomingMessages:(id)a3 withMessageIDList:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__CoreTelephonyClient_Lazuli__acknowledgeIncomingMessages_withMessageIDList_withError___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = [[CTXPCAcknowledgeIncomingMessagesRequest alloc] initWithContext:v8 messageIDList:v9];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__CoreTelephonyClient_Lazuli__acknowledgeIncomingMessages_withMessageIDList_withError___block_invoke_2;
  v16[3] = &unk_1E6A44B08;
  v16[4] = &v18;
  [v10 sendRequest:v11 completionHandler:v16];
  v12 = v19;
  if (a5)
  {
    v13 = v19[5];
    if (v13)
    {
      *a5 = v13;
      v12 = v19;
    }
  }

  v14 = v12[5] == 0;

  _Block_object_dispose(&v18, 8);
  return v14;
}

- (id)getSystemConfiguration:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__CoreTelephonyClient_Lazuli__getSystemConfiguration_withError___block_invoke;
  v19[3] = &unk_1E6A43BB0;
  v19[4] = &v20;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v19];
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSystemConfigRequest alloc] initWithContext:v6];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__CoreTelephonyClient_Lazuli__getSystemConfiguration_withError___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v13;
  v12[5] = &v20;
  [v7 sendRequest:v8 completionHandler:v12];
  if (a4 && (v9 = v21[5]) != 0)
  {
    v10 = 0;
    *a4 = v9;
  }

  else
  {
    v10 = [v14[5] config];
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __64__CoreTelephonyClient_Lazuli__getSystemConfiguration_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (BOOL)fetchRemoteCapabilities:(id)a3 forDestination:(id)a4 withOptions:(id)a5 withOperationID:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __108__CoreTelephonyClient_Lazuli__fetchRemoteCapabilities_forDestination_withOptions_withOperationID_withError___block_invoke;
  v23[3] = &unk_1E6A43BB0;
  v23[4] = &v24;
  v16 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v23];
  v17 = [[CTXPCFetchRemoteCapabilitiesRequest alloc] initWithContext:v12 destination:v13 options:v14 operationID:v15];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __108__CoreTelephonyClient_Lazuli__fetchRemoteCapabilities_forDestination_withOptions_withOperationID_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (a7)
  {
    v19 = v25[5];
    if (v19)
    {
      *a7 = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendComposingIndicator:(id)a3 to:(id)a4 messageID:(id)a5 indication:(id)a6 withSecurity:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5;
  v29 = __Block_byref_object_dispose__5;
  v30 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __97__CoreTelephonyClient_Lazuli__sendComposingIndicator_to_messageID_indication_withSecurity_error___block_invoke;
  v24[3] = &unk_1E6A43BB0;
  v24[4] = &v25;
  v19 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v24];
  v20 = [[CTXPCSendComposingIndicatorRequest alloc] initWithContext:v14 destination:v15 messageID:v16 indication:v17 security:v18];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __97__CoreTelephonyClient_Lazuli__sendComposingIndicator_to_messageID_indication_withSecurity_error___block_invoke_2;
  v23[3] = &unk_1E6A44B08;
  v23[4] = &v25;
  [v19 sendRequest:v20 completionHandler:v23];
  if (a8)
  {
    *a8 = v26[5];
  }

  v21 = v26[5] == 0;

  _Block_object_dispose(&v25, 8);
  return v21;
}

- (id)readCachedChatBotRenderInformation:(id)a3 forChatBot:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __87__CoreTelephonyClient_Lazuli__readCachedChatBotRenderInformation_forChatBot_withError___block_invoke;
  v22[3] = &unk_1E6A43BB0;
  v22[4] = &v23;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v22];
  v11 = [[CTXPCReadCachedChatBotRenderInfoRequest alloc] initWithContext:v8 destination:v9];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__CoreTelephonyClient_Lazuli__readCachedChatBotRenderInformation_forChatBot_withError___block_invoke_2;
  v15[3] = &unk_1E6A44B30;
  v15[4] = &v23;
  v15[5] = &v16;
  [v10 sendRequest:v11 completionHandler:v15];
  if (a5)
  {
    v12 = v24[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = [v17[5] info];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v23, 8);

  return v13;
}

void __87__CoreTelephonyClient_Lazuli__readCachedChatBotRenderInformation_forChatBot_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (BOOL)fetchRenderInformation:(id)a3 forChatBot:(id)a4 withOperationID:(id)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __91__CoreTelephonyClient_Lazuli__fetchRenderInformation_forChatBot_withOperationID_withError___block_invoke;
  v20[3] = &unk_1E6A43BB0;
  v20[4] = &v21;
  v13 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v20];
  v14 = [[CTXPCFetchRenderInformationRequest alloc] initWithContext:v10 destination:v11 operationID:v12];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__CoreTelephonyClient_Lazuli__fetchRenderInformation_forChatBot_withOperationID_withError___block_invoke_2;
  v19[3] = &unk_1E6A44B08;
  v19[4] = &v21;
  [v13 sendRequest:v14 completionHandler:v19];
  v15 = v22;
  if (a6)
  {
    v16 = v22[5];
    if (v16)
    {
      *a6 = v16;
      v15 = v22;
    }
  }

  v17 = v15[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v17;
}

- (BOOL)sendFileTransferMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withFileInformation:(id)a6 withSecurity:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __115__CoreTelephonyClient_Lazuli__sendFileTransferMessage_to_withMessageID_withFileInformation_withSecurity_withError___block_invoke;
  v26[3] = &unk_1E6A43BB0;
  v26[4] = &v27;
  v19 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v26];
  v20 = [[CTXPCSendFileTransferMessageRequest alloc] initWithContext:v14 destination:v15 messageID:v16 descriptor:v17 security:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __115__CoreTelephonyClient_Lazuli__sendFileTransferMessage_to_withMessageID_withFileInformation_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (a8)
  {
    v22 = v28[5];
    if (v22)
    {
      *a8 = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)sendTextMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withMessage:(id)a6 withSecurity:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __99__CoreTelephonyClient_Lazuli__sendTextMessage_to_withMessageID_withMessage_withSecurity_withError___block_invoke;
  v26[3] = &unk_1E6A43BB0;
  v26[4] = &v27;
  v19 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v26];
  v20 = [[CTXPCSendTextMessageRequest alloc] initWithContext:v14 destination:v15 messageID:v16 message:v17 security:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __99__CoreTelephonyClient_Lazuli__sendTextMessage_to_withMessageID_withMessage_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (a8)
  {
    v22 = v28[5];
    if (v22)
    {
      *a8 = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)sendGeolocationMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withGeoPush:(id)a6 withSecurity:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __106__CoreTelephonyClient_Lazuli__sendGeolocationMessage_to_withMessageID_withGeoPush_withSecurity_withError___block_invoke;
  v26[3] = &unk_1E6A43BB0;
  v26[4] = &v27;
  v19 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v26];
  v20 = [[CTXPCSendGeolocationMessageRequest alloc] initWithContext:v14 destination:v15 messageID:v16 geoLocationPush:v17 security:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __106__CoreTelephonyClient_Lazuli__sendGeolocationMessage_to_withMessageID_withGeoPush_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (a8)
  {
    v22 = v28[5];
    if (v22)
    {
      *a8 = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)sendDispositionNotificationMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withDisposition:(int64_t)a6 forMessageID:(id)a7 withSecurity:(id)a8 withError:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__5;
  v32 = __Block_byref_object_dispose__5;
  v33 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __135__CoreTelephonyClient_Lazuli__sendDispositionNotificationMessage_to_withMessageID_withDisposition_forMessageID_withSecurity_withError___block_invoke;
  v27[3] = &unk_1E6A43BB0;
  v27[4] = &v28;
  v20 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v27];
  v21 = [[CTXPCSendDispositionNotificationMessageRequest alloc] initWithContext:v15 destination:v16 messageID:v17 notificationType:a6 notificationMessageID:v18 security:v19];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __135__CoreTelephonyClient_Lazuli__sendDispositionNotificationMessage_to_withMessageID_withDisposition_forMessageID_withSecurity_withError___block_invoke_2;
  v26[3] = &unk_1E6A44B08;
  v26[4] = &v28;
  [v20 sendRequest:v21 completionHandler:v26];
  v22 = v29;
  if (a9)
  {
    v23 = v29[5];
    if (v23)
    {
      *a9 = v23;
      v22 = v29;
    }
  }

  v24 = v22[5] == 0;

  _Block_object_dispose(&v28, 8);
  return v24;
}

- (BOOL)sendResponseForSuggestedAction:(id)a3 to:(id)a4 withMessageID:(id)a5 response:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __98__CoreTelephonyClient_Lazuli__sendResponseForSuggestedAction_to_withMessageID_response_withError___block_invoke;
  v23[3] = &unk_1E6A43BB0;
  v23[4] = &v24;
  v16 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v23];
  v17 = [[CTXPCSendResponseForSuggestedActionRequest alloc] initWithContext:v12 destination:v13 messageID:v14 response:v15];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __98__CoreTelephonyClient_Lazuli__sendResponseForSuggestedAction_to_withMessageID_response_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (a7)
  {
    v19 = v25[5];
    if (v19)
    {
      *a7 = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendResponseForSuggestedReply:(id)a3 to:(id)a4 withMessageID:(id)a5 response:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __97__CoreTelephonyClient_Lazuli__sendResponseForSuggestedReply_to_withMessageID_response_withError___block_invoke;
  v23[3] = &unk_1E6A43BB0;
  v23[4] = &v24;
  v16 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v23];
  v17 = [[CTXPCSendResponseForSuggestedReplyRequest alloc] initWithContext:v12 destination:v13 messageID:v14 response:v15];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __97__CoreTelephonyClient_Lazuli__sendResponseForSuggestedReply_to_withMessageID_response_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (a7)
  {
    v19 = v25[5];
    if (v19)
    {
      *a7 = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)reportChatbotSpam:(id)a3 forChatbot:(id)a4 withSpamReportInfo:(id)a5 andOperationID:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __104__CoreTelephonyClient_Lazuli__reportChatbotSpam_forChatbot_withSpamReportInfo_andOperationID_withError___block_invoke;
  v23[3] = &unk_1E6A43BB0;
  v23[4] = &v24;
  v16 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v23];
  v17 = [[CTXPCReportChatBotSpamRequest alloc] initWithContext:v12 destination:v13 spamReportInfo:v14 operationID:v15];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __104__CoreTelephonyClient_Lazuli__reportChatbotSpam_forChatbot_withSpamReportInfo_andOperationID_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (a7)
  {
    v19 = v25[5];
    if (v19)
    {
      *a7 = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)reportLazuliSpamWithContext:(id)a3 destination:(id)a4 spamReportInfo:(id)a5 operationID:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __104__CoreTelephonyClient_Lazuli__reportLazuliSpamWithContext_destination_spamReportInfo_operationID_error___block_invoke;
  v23[3] = &unk_1E6A43BB0;
  v23[4] = &v24;
  v16 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v23];
  v17 = [[CTXPCReportSpamRequest alloc] initWithContext:v12 destination:v13 spamReportInfo:v14 operationID:v15];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __104__CoreTelephonyClient_Lazuli__reportLazuliSpamWithContext_destination_spamReportInfo_operationID_error___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (a7)
  {
    v19 = v25[5];
    if (v19)
    {
      *a7 = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendDeviceAction:(id)a3 to:(id)a4 withMessageID:(id)a5 withAction:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__CoreTelephonyClient_Lazuli__sendDeviceAction_to_withMessageID_withAction_withError___block_invoke;
  v23[3] = &unk_1E6A43BB0;
  v23[4] = &v24;
  v16 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v23];
  v17 = [[CTXPCSendDeviceActionRequest alloc] initWithContext:v12 destination:v13 messageID:v14 action:v15];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__CoreTelephonyClient_Lazuli__sendDeviceAction_to_withMessageID_withAction_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (a7)
  {
    v19 = v25[5];
    if (v19)
    {
      *a7 = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendDeviceSettings:(id)a3 to:(id)a4 withMessageID:(id)a5 withSetting:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __89__CoreTelephonyClient_Lazuli__sendDeviceSettings_to_withMessageID_withSetting_withError___block_invoke;
  v23[3] = &unk_1E6A43BB0;
  v23[4] = &v24;
  v16 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v23];
  v17 = [[CTXPCSendDeviceSettingsRequest alloc] initWithContext:v12 destination:v13 messageID:v14 settings:v15];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__CoreTelephonyClient_Lazuli__sendDeviceSettings_to_withMessageID_withSetting_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (a7)
  {
    v19 = v25[5];
    if (v19)
    {
      *a7 = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendTextMessage:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withMessage:(id)a6 withSecurity:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __115__CoreTelephonyClient_Lazuli__sendTextMessage_toGroupDestination_withMessageID_withMessage_withSecurity_withError___block_invoke;
  v26[3] = &unk_1E6A43BB0;
  v26[4] = &v27;
  v19 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v26];
  v20 = [[CTXPCSendTextMessageRequest alloc] initWithContext:v14 groupChatURI:v15 messageID:v16 message:v17 security:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __115__CoreTelephonyClient_Lazuli__sendTextMessage_toGroupDestination_withMessageID_withMessage_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (a8)
  {
    v22 = v28[5];
    if (v22)
    {
      *a8 = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)sendGeolocationMessage:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withGeoPush:(id)a6 withSecurity:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __122__CoreTelephonyClient_Lazuli__sendGeolocationMessage_toGroupDestination_withMessageID_withGeoPush_withSecurity_withError___block_invoke;
  v26[3] = &unk_1E6A43BB0;
  v26[4] = &v27;
  v19 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v26];
  v20 = [[CTXPCSendGeolocationMessageRequest alloc] initWithContext:v14 groupChatURI:v15 messageID:v16 geoLocationPush:v17 security:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __122__CoreTelephonyClient_Lazuli__sendGeolocationMessage_toGroupDestination_withMessageID_withGeoPush_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (a8)
  {
    v22 = v28[5];
    if (v22)
    {
      *a8 = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)sendFileTransferMessage:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withFileInformation:(id)a6 withSecurity:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __131__CoreTelephonyClient_Lazuli__sendFileTransferMessage_toGroupDestination_withMessageID_withFileInformation_withSecurity_withError___block_invoke;
  v26[3] = &unk_1E6A43BB0;
  v26[4] = &v27;
  v19 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v26];
  v20 = [[CTXPCSendFileTransferMessageRequest alloc] initWithContext:v14 groupChatURI:v15 messageID:v16 descriptor:v17 security:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __131__CoreTelephonyClient_Lazuli__sendFileTransferMessage_toGroupDestination_withMessageID_withFileInformation_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (a8)
  {
    v22 = v28[5];
    if (v22)
    {
      *a8 = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)sendComposingIndicator:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withIndication:(id)a6 withSecurity:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __125__CoreTelephonyClient_Lazuli__sendComposingIndicator_toGroupDestination_withMessageID_withIndication_withSecurity_withError___block_invoke;
  v26[3] = &unk_1E6A43BB0;
  v26[4] = &v27;
  v19 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v26];
  v20 = [[CTXPCSendComposingIndicatorRequest alloc] initWithContext:v14 groupChatURI:v15 messageID:v16 indication:v17 security:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __125__CoreTelephonyClient_Lazuli__sendComposingIndicator_toGroupDestination_withMessageID_withIndication_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (a8)
  {
    v22 = v28[5];
    if (v22)
    {
      *a8 = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)removeParticipants:(id)a3 fromGroupChat:(id)a4 withParticipantsToRemove:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __128__CoreTelephonyClient_Lazuli__removeParticipants_fromGroupChat_withParticipantsToRemove_withOperationID_withSecurity_withError___block_invoke;
  v26[3] = &unk_1E6A43BB0;
  v26[4] = &v27;
  v19 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v26];
  v20 = [[CTXPCRemoveParticipantsRequest alloc] initWithContext:v14 groupChatURI:v15 participants:v16 operationID:v17 security:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __128__CoreTelephonyClient_Lazuli__removeParticipants_fromGroupChat_withParticipantsToRemove_withOperationID_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (a8)
  {
    v22 = v28[5];
    if (v22)
    {
      *a8 = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)exit:(id)a3 groupChat:(id)a4 withOperationID:(id)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__CoreTelephonyClient_Lazuli__exit_groupChat_withOperationID_withError___block_invoke;
  v20[3] = &unk_1E6A43BB0;
  v20[4] = &v21;
  v13 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v20];
  v14 = [[CTXPCExitGroupChatRequest alloc] initWithContext:v10 groupChatURI:v11 operationID:v12];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__CoreTelephonyClient_Lazuli__exit_groupChat_withOperationID_withError___block_invoke_2;
  v19[3] = &unk_1E6A44B08;
  v19[4] = &v21;
  [v13 sendRequest:v14 completionHandler:v19];
  v15 = v22;
  if (a6)
  {
    v16 = v22[5];
    if (v16)
    {
      *a6 = v16;
      v15 = v22;
    }
  }

  v17 = v15[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v17;
}

- (BOOL)create:(id)a3 groupChat:(id)a4 withOperationID:(id)a5 withError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__CoreTelephonyClient_Lazuli__create_groupChat_withOperationID_withError___block_invoke;
  v20[3] = &unk_1E6A43BB0;
  v20[4] = &v21;
  v13 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v20];
  v14 = [[CTXPCCreateGroupChatRequest alloc] initWithContext:v10 groupChatInfo:v11 operationID:v12];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__CoreTelephonyClient_Lazuli__create_groupChat_withOperationID_withError___block_invoke_2;
  v19[3] = &unk_1E6A44B08;
  v19[4] = &v21;
  [v13 sendRequest:v14 completionHandler:v19];
  v15 = v22;
  if (a6)
  {
    v16 = v22[5];
    if (v16)
    {
      *a6 = v16;
      v15 = v22;
    }
  }

  v17 = v15[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v17;
}

- (BOOL)changeSubject:(id)a3 forGroupChat:(id)a4 withNewSubject:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __112__CoreTelephonyClient_Lazuli__changeSubject_forGroupChat_withNewSubject_withOperationID_withSecurity_withError___block_invoke;
  v26[3] = &unk_1E6A43BB0;
  v26[4] = &v27;
  v19 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v26];
  v20 = [[CTXPCChangeSubjectRequest alloc] initWithContext:v14 groupChatURI:v15 subject:v16 operationID:v17 security:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __112__CoreTelephonyClient_Lazuli__changeSubject_forGroupChat_withNewSubject_withOperationID_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (a8)
  {
    v22 = v28[5];
    if (v22)
    {
      *a8 = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)changeIcon:(id)a3 forGroupChat:(id)a4 withNewIcon:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __106__CoreTelephonyClient_Lazuli__changeIcon_forGroupChat_withNewIcon_withOperationID_withSecurity_withError___block_invoke;
  v26[3] = &unk_1E6A43BB0;
  v26[4] = &v27;
  v19 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v26];
  v20 = [[CTXPCChangeIconRequest alloc] initWithContext:v14 groupChatURI:v15 icon:v16 operationID:v17 security:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __106__CoreTelephonyClient_Lazuli__changeIcon_forGroupChat_withNewIcon_withOperationID_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (a8)
  {
    v22 = v28[5];
    if (v22)
    {
      *a8 = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)addParticipants:(id)a3 toGroupChat:(id)a4 withParticipantsToAdd:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __120__CoreTelephonyClient_Lazuli__addParticipants_toGroupChat_withParticipantsToAdd_withOperationID_withSecurity_withError___block_invoke;
  v26[3] = &unk_1E6A43BB0;
  v26[4] = &v27;
  v19 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v26];
  v20 = [[CTXPCAddParticipantsRequest alloc] initWithContext:v14 groupChatURI:v15 participants:v16 operationID:v17 security:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __120__CoreTelephonyClient_Lazuli__addParticipants_toGroupChat_withParticipantsToAdd_withOperationID_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (a8)
  {
    v22 = v28[5];
    if (v22)
    {
      *a8 = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (id)decodeSuggestionsBase64:(id)a3 withBase64String:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__CoreTelephonyClient_Lazuli__decodeSuggestionsBase64_withBase64String_withError___block_invoke;
  v22[3] = &unk_1E6A43BB0;
  v22[4] = &v23;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v22];
  v11 = [[CTXPCDecodeSuggestionsBase64Request alloc] initWithContext:v8 base64String:v9];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__CoreTelephonyClient_Lazuli__decodeSuggestionsBase64_withBase64String_withError___block_invoke_2;
  v15[3] = &unk_1E6A44B30;
  v15[4] = &v16;
  v15[5] = &v23;
  [v10 sendRequest:v11 completionHandler:v15];
  if (a5)
  {
    v12 = v24[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = [v17[5] decodedPayload];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v23, 8);

  return v13;
}

void __82__CoreTelephonyClient_Lazuli__decodeSuggestionsBase64_withBase64String_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (BOOL)deleteChat:(id)a3 chat:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__CoreTelephonyClient_Lazuli__deleteChat_chat_withError___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = [[CTXPCDeleteChatRequest alloc] initWithContext:v8 chat:v9];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__CoreTelephonyClient_Lazuli__deleteChat_chat_withError___block_invoke_2;
  v16[3] = &unk_1E6A44B08;
  v16[4] = &v18;
  [v10 sendRequest:v11 completionHandler:v16];
  v12 = v19;
  if (a5)
  {
    v13 = v19[5];
    if (v13)
    {
      *a5 = v13;
      v12 = v19;
    }
  }

  v14 = v12[5] == 0;

  _Block_object_dispose(&v18, 8);
  return v14;
}

- (BOOL)sendGroupDispositionNotificationMessage:(id)a3 toGroup:(id)a4 to:(id)a5 withMessageID:(id)a6 withDisposition:(int64_t)a7 forMessageID:(id)a8 withSecurity:(id)a9 withError:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__5;
  v34 = __Block_byref_object_dispose__5;
  v35 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __148__CoreTelephonyClient_Lazuli__sendGroupDispositionNotificationMessage_toGroup_to_withMessageID_withDisposition_forMessageID_withSecurity_withError___block_invoke;
  v29[3] = &unk_1E6A43BB0;
  v29[4] = &v30;
  v22 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v29];
  v23 = [[CTXPCSendDispositionNotificationMessageRequest alloc] initWithContext:v16 groupChatURI:v17 destination:v18 messageID:v19 notificationType:a7 notificationMessageID:v20 security:v21];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __148__CoreTelephonyClient_Lazuli__sendGroupDispositionNotificationMessage_toGroup_to_withMessageID_withDisposition_forMessageID_withSecurity_withError___block_invoke_2;
  v28[3] = &unk_1E6A44B08;
  v28[4] = &v30;
  [v22 sendRequest:v23 completionHandler:v28];
  v24 = v31;
  if (a10)
  {
    v25 = v31[5];
    if (v25)
    {
      *a10 = v25;
      v24 = v31;
    }
  }

  v26 = v24[5] == 0;

  _Block_object_dispose(&v30, 8);
  return v26;
}

- (id)setProvisioningServerURL:(id)a3 url:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__CoreTelephonyClient_Lazuli__setProvisioningServerURL_url___block_invoke;
  v13[3] = &unk_1E6A43BB0;
  v13[4] = &v14;
  v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v13];
  v9 = [[CTXPCSetProvisioningServerURLRequest alloc] initWithContext:v6 url:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__CoreTelephonyClient_Lazuli__setProvisioningServerURL_url___block_invoke_2;
  v12[3] = &unk_1E6A44B08;
  v12[4] = &v14;
  [v8 sendRequest:v9 completionHandler:v12];
  v10 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v10;
}

void __60__CoreTelephonyClient_Lazuli__setProvisioningServerURL_url___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (id)getProvisioningServerURL:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__CoreTelephonyClient_Lazuli__getProvisioningServerURL_outError___block_invoke;
  v19[3] = &unk_1E6A43BB0;
  v19[4] = &v20;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v19];
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetProvisioningServerURLRequest alloc] initWithContext:v6];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CoreTelephonyClient_Lazuli__getProvisioningServerURL_outError___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v13;
  v12[5] = &v20;
  [v7 sendRequest:v8 completionHandler:v12];
  if (a4)
  {
    v9 = v21[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = [v14[5] url];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __65__CoreTelephonyClient_Lazuli__getProvisioningServerURL_outError___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __65__CoreTelephonyClient_Lazuli__getProvisioningServerURL_outError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

- (id)readCachedCapabilities:(id)a3 forDestination:(id)a4 withError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5;
  v27 = __Block_byref_object_dispose__5;
  v28 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __79__CoreTelephonyClient_Lazuli__readCachedCapabilities_forDestination_withError___block_invoke;
  v22[3] = &unk_1E6A43BB0;
  v22[4] = &v23;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v22];
  v11 = [[CTXPCReadCachedCapabilitiesRequest alloc] initWithContext:v8 destination:v9];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__5;
  v20 = __Block_byref_object_dispose__5;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__CoreTelephonyClient_Lazuli__readCachedCapabilities_forDestination_withError___block_invoke_2;
  v15[3] = &unk_1E6A44B30;
  v15[4] = &v23;
  v15[5] = &v16;
  [v10 sendRequest:v11 completionHandler:v15];
  if (a5)
  {
    v12 = v24[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = [v17[5] capabilitiesInfo];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v23, 8);

  return v13;
}

void __79__CoreTelephonyClient_Lazuli__readCachedCapabilities_forDestination_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (BOOL)sendOneToManyTextMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withMessage:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __95__CoreTelephonyClient_Lazuli__sendOneToManyTextMessage_to_withMessageID_withMessage_withError___block_invoke;
  v23[3] = &unk_1E6A43BB0;
  v23[4] = &v24;
  v16 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v23];
  v17 = [[CTXPCSendOneToManyTextMessageRequest alloc] initWithContext:v12 to:v13 withMessageID:v14 withMessage:v15];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__CoreTelephonyClient_Lazuli__sendOneToManyTextMessage_to_withMessageID_withMessage_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (a7)
  {
    v19 = v25[5];
    if (v19)
    {
      *a7 = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendOneToManyGeolocationMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withGeoPush:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __102__CoreTelephonyClient_Lazuli__sendOneToManyGeolocationMessage_to_withMessageID_withGeoPush_withError___block_invoke;
  v23[3] = &unk_1E6A43BB0;
  v23[4] = &v24;
  v16 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v23];
  v17 = [[CTXPCSendOneToManyGeoLocationRequest alloc] initWithContext:v12 to:v13 withMessageID:v14 withGeoPush:v15];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __102__CoreTelephonyClient_Lazuli__sendOneToManyGeolocationMessage_to_withMessageID_withGeoPush_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (a7)
  {
    v19 = v25[5];
    if (v19)
    {
      *a7 = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendOneToManyFileTransferMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withDescriptor:(id)a6 withError:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __106__CoreTelephonyClient_Lazuli__sendOneToManyFileTransferMessage_to_withMessageID_withDescriptor_withError___block_invoke;
  v23[3] = &unk_1E6A43BB0;
  v23[4] = &v24;
  v16 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v23];
  v17 = [[CTXPCSendOneToManyFileTransferRequest alloc] initWithContext:v12 to:v13 withMessageID:v14 withDescriptor:v15];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __106__CoreTelephonyClient_Lazuli__sendOneToManyFileTransferMessage_to_withMessageID_withDescriptor_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (a7)
  {
    v19 = v25[5];
    if (v19)
    {
      *a7 = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)enableBusinessMessaging:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CoreTelephonyClient_Lazuli__enableBusinessMessaging_withError___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v8 = [[CTXPCSetBusinessMessagingStateRequest alloc] initWithContext:v6 shouldEnable:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CoreTelephonyClient_Lazuli__enableBusinessMessaging_withError___block_invoke_2;
  v11[3] = &unk_1E6A44B08;
  v11[4] = &v13;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v14[5];
  }

  v9 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v9;
}

- (BOOL)disableBusinessMessaging:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__CoreTelephonyClient_Lazuli__disableBusinessMessaging_withError___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v8 = [[CTXPCSetBusinessMessagingStateRequest alloc] initWithContext:v6 shouldEnable:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CoreTelephonyClient_Lazuli__disableBusinessMessaging_withError___block_invoke_2;
  v11[3] = &unk_1E6A44B08;
  v11[4] = &v13;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v14[5];
  }

  v9 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v9;
}

- (void)getSmsReadyState:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__CoreTelephonyClient_SMS__getSmsReadyState_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSmsReadyState:v6 completion:v8];
}

- (id)getSmsReadyState:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__CoreTelephonyClient_SMS__getSmsReadyState_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CoreTelephonyClient_SMS__getSmsReadyState_error___block_invoke_2;
  v10[3] = &unk_1E6A43D88;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getSmsReadyState:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __51__CoreTelephonyClient_SMS__getSmsReadyState_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v6 = v10;
  if (!v10)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = 0;
  }
}

- (void)getSmscAddress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CoreTelephonyClient_SMS__getSmscAddress_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSmscAddress:v6 completion:v8];
}

- (id)getSmscAddress:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__CoreTelephonyClient_SMS__getSmscAddress_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__CoreTelephonyClient_SMS__getSmscAddress_error___block_invoke_2;
  v10[3] = &unk_1E6A44B78;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getSmscAddress:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __49__CoreTelephonyClient_SMS__getSmscAddress_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v9 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)getEmergencyTextNumbers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CoreTelephonyClient_SMS__getEmergencyTextNumbers_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getEmergencyTextNumbers:v6 completion:v8];
}

- (id)getEmergencyTextNumbers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__CoreTelephonyClient_SMS__getEmergencyTextNumbers_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__6;
  v15 = __Block_byref_object_dispose__6;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CoreTelephonyClient_SMS__getEmergencyTextNumbers_error___block_invoke_2;
  v10[3] = &unk_1E6A43C00;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getEmergencyTextNumbers:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __58__CoreTelephonyClient_SMS__getEmergencyTextNumbers_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!v5)
  {
    v6 = [v9 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)dataUsageForLastPeriods:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__CoreTelephonyClient_DataUsage__dataUsageForLastPeriods_completion___block_invoke;
  v9[3] = &unk_1E6A43CC8;
  v7 = v6;
  v10 = v7;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v9];
  [v8 dataUsageForLastPeriods:a3 completion:v7];
}

- (void)dataUsageForLastPeriodsOnActivePairedDevice:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__CoreTelephonyClient_DataUsage__dataUsageForLastPeriodsOnActivePairedDevice_completion___block_invoke;
  v9[3] = &unk_1E6A43CC8;
  v7 = v6;
  v10 = v7;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v9];
  [v8 dataUsageForLastPeriodsOnActivePairedDevice:a3 completion:v7];
}

- (id)billingCycleEndDatesForLastPeriods:(unint64_t)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__CoreTelephonyClient_DataUsage__billingCycleEndDatesForLastPeriods_error___block_invoke;
  v16[3] = &unk_1E6A43BB0;
  v16[4] = &v17;
  v6 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v16];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__CoreTelephonyClient_DataUsage__billingCycleEndDatesForLastPeriods_error___block_invoke_2;
  v9[3] = &unk_1E6A43C00;
  v9[4] = &v17;
  v9[5] = &v10;
  [v6 billingCycleEndDatesForLastPeriods:a3 completion:v9];
  if (a4)
  {
    *a4 = v18[5];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __75__CoreTelephonyClient_DataUsage__billingCycleEndDatesForLastPeriods_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)usageCollectionEnabled:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CoreTelephonyClient_DataUsage__usageCollectionEnabled___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = v4;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 usageCollectionEnabled:v5];
}

- (id)usageCollectionEnabledSync:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__CoreTelephonyClient_DataUsage__usageCollectionEnabledSync___block_invoke;
  v14[3] = &unk_1E6A43BB0;
  v14[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v14];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CoreTelephonyClient_DataUsage__usageCollectionEnabledSync___block_invoke_2;
  v7[3] = &unk_1E6A45228;
  v7[4] = &v15;
  v7[5] = &v8;
  [v4 usageCollectionEnabled:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __61__CoreTelephonyClient_DataUsage__usageCollectionEnabledSync___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)userEnteredMonthlyBudget:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CoreTelephonyClient_DataUsage__userEnteredMonthlyBudget_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 userEnteredMonthlyBudget:v6 completion:v8];
}

- (id)userEnteredMonthlyBudget:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__7;
  v22 = __Block_byref_object_dispose__7;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__CoreTelephonyClient_DataUsage__userEnteredMonthlyBudget_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__CoreTelephonyClient_DataUsage__userEnteredMonthlyBudget_error___block_invoke_2;
  v10[3] = &unk_1E6A45228;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 userEnteredMonthlyBudget:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __65__CoreTelephonyClient_DataUsage__userEnteredMonthlyBudget_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)setUserEntered:(id)a3 monthlyBudget:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__CoreTelephonyClient_DataUsage__setUserEntered_monthlyBudget_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = v10;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 setUserEntered:v8 monthlyBudget:v9 completion:v11];
}

- (void)setUserEntered:(id)a3 monthlyBudget:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__CoreTelephonyClient_DataUsage__setUserEntered_monthlyBudget_error___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CoreTelephonyClient_DataUsage__setUserEntered_monthlyBudget_error___block_invoke_2;
  v11[3] = &unk_1E6A43BB0;
  v11[4] = &v13;
  [v10 setUserEntered:v8 monthlyBudget:v9 completion:v11];
  if (a5)
  {
    *a5 = v14[5];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)clearUserEnteredMonthlyBudget:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CoreTelephonyClient_DataUsage__clearUserEnteredMonthlyBudget_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 clearUserEnteredMonthlyBudget:v6 completion:v8];
}

- (void)clearUserEnteredMonthlyBudget:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__CoreTelephonyClient_DataUsage__clearUserEnteredMonthlyBudget_error___block_invoke;
  v9[3] = &unk_1E6A43BB0;
  v9[4] = &v10;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__CoreTelephonyClient_DataUsage__clearUserEnteredMonthlyBudget_error___block_invoke_2;
  v8[3] = &unk_1E6A43BB0;
  v8[4] = &v10;
  [v7 clearUserEnteredMonthlyBudget:v6 completion:v8];
  if (a4)
  {
    *a4 = v11[5];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)userEnteredMonthlyRoamingBudget:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__CoreTelephonyClient_DataUsage__userEnteredMonthlyRoamingBudget_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 userEnteredMonthlyRoamingBudget:v6 completion:v8];
}

- (id)userEnteredMonthlyRoamingBudget:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__7;
  v22 = __Block_byref_object_dispose__7;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__CoreTelephonyClient_DataUsage__userEnteredMonthlyRoamingBudget_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__CoreTelephonyClient_DataUsage__userEnteredMonthlyRoamingBudget_error___block_invoke_2;
  v10[3] = &unk_1E6A45228;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 userEnteredMonthlyRoamingBudget:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __72__CoreTelephonyClient_DataUsage__userEnteredMonthlyRoamingBudget_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)setUserEntered:(id)a3 monthlyRoamingBudget:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CoreTelephonyClient_DataUsage__setUserEntered_monthlyRoamingBudget_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = v10;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 setUserEntered:v8 monthlyRoamingBudget:v9 completion:v11];
}

- (void)setUserEntered:(id)a3 monthlyRoamingBudget:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__CoreTelephonyClient_DataUsage__setUserEntered_monthlyRoamingBudget_error___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CoreTelephonyClient_DataUsage__setUserEntered_monthlyRoamingBudget_error___block_invoke_2;
  v11[3] = &unk_1E6A43BB0;
  v11[4] = &v13;
  [v10 setUserEntered:v8 monthlyRoamingBudget:v9 completion:v11];
  if (a5)
  {
    *a5 = v14[5];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)clearUserEnteredMonthlyRoamingBudget:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__CoreTelephonyClient_DataUsage__clearUserEnteredMonthlyRoamingBudget_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 clearUserEnteredMonthlyRoamingBudget:v6 completion:v8];
}

- (void)clearUserEnteredMonthlyRoamingBudget:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__CoreTelephonyClient_DataUsage__clearUserEnteredMonthlyRoamingBudget_error___block_invoke;
  v9[3] = &unk_1E6A43BB0;
  v9[4] = &v10;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__CoreTelephonyClient_DataUsage__clearUserEnteredMonthlyRoamingBudget_error___block_invoke_2;
  v8[3] = &unk_1E6A43BB0;
  v8[4] = &v10;
  [v7 clearUserEnteredMonthlyRoamingBudget:v6 completion:v8];
  if (a4)
  {
    *a4 = v11[5];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)userEnteredBillingEndDayOfMont:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CoreTelephonyClient_DataUsage__userEnteredBillingEndDayOfMont_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 userEnteredBillingEndDayOfMont:v6 completion:v8];
}

- (id)userEnteredBillingEndDayOfMont:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__7;
  v22 = __Block_byref_object_dispose__7;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__CoreTelephonyClient_DataUsage__userEnteredBillingEndDayOfMont_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CoreTelephonyClient_DataUsage__userEnteredBillingEndDayOfMont_error___block_invoke_2;
  v10[3] = &unk_1E6A45228;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 userEnteredBillingEndDayOfMont:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __71__CoreTelephonyClient_DataUsage__userEnteredBillingEndDayOfMont_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)setUserEnteredBillingEnd:(id)a3 dayOfMonth:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CoreTelephonyClient_DataUsage__setUserEnteredBillingEnd_dayOfMonth_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = v10;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 setUserEnteredBillingEnd:v8 dayOfMonth:v9 completion:v11];
}

- (void)setUserEnteredBillingEnd:(id)a3 dayOfMonth:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__CoreTelephonyClient_DataUsage__setUserEnteredBillingEnd_dayOfMonth_error___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CoreTelephonyClient_DataUsage__setUserEnteredBillingEnd_dayOfMonth_error___block_invoke_2;
  v11[3] = &unk_1E6A43BB0;
  v11[4] = &v13;
  [v10 setUserEnteredBillingEnd:v8 dayOfMonth:v9 completion:v11];
  if (a5)
  {
    *a5 = v14[5];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)clearUserEnteredBillingEndDayOfMonth:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__CoreTelephonyClient_DataUsage__clearUserEnteredBillingEndDayOfMonth_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 clearUserEnteredBillingEndDayOfMonth:v6 completion:v8];
}

- (void)clearUserEnteredBillingEndDayOfMonth:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__CoreTelephonyClient_DataUsage__clearUserEnteredBillingEndDayOfMonth_error___block_invoke;
  v9[3] = &unk_1E6A43BB0;
  v9[4] = &v10;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__CoreTelephonyClient_DataUsage__clearUserEnteredBillingEndDayOfMonth_error___block_invoke_2;
  v8[3] = &unk_1E6A43BB0;
  v8[4] = &v10;
  [v7 clearUserEnteredBillingEndDayOfMonth:v6 completion:v8];
  if (a4)
  {
    *a4 = v11[5];
  }

  _Block_object_dispose(&v10, 8);
}

- (id)getCellularUsageWorkspaceInfo:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__CoreTelephonyClient_DataUsage__getCellularUsageWorkspaceInfo___block_invoke;
  v14[3] = &unk_1E6A43BB0;
  v14[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v14];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__7;
  v12 = __Block_byref_object_dispose__7;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__CoreTelephonyClient_DataUsage__getCellularUsageWorkspaceInfo___block_invoke_2;
  v7[3] = &unk_1E6A45250;
  v7[4] = &v15;
  v7[5] = &v8;
  [v4 getCellularUsageWorkspaceInfo:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __64__CoreTelephonyClient_DataUsage__getCellularUsageWorkspaceInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)supportsSelector:(SEL)a3 withContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (!v8)
  {
    if (a5)
    {
      v10 = 22;
LABEL_8:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v10 userInfo:0];
      *a5 = v9 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (![(CoreTelephonyClient *)self supportsRequestWithSelector:a3])
  {
    if (a5)
    {
      v10 = 19;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v9 = 1;
LABEL_10:

  return v9;
}

- (void)copyCarrierBundleValue:(id)a3 key:(id)a4 bundleType:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28 = 0;
  v15 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:v11 error:&v28];
  v16 = v28;
  if (v15)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __87__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_key_bundleType_completion___block_invoke_2;
    v23 = &unk_1E6A43CC8;
    v17 = v14;
    v24 = v17;
    v18 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v20];
    [v18 copyCarrierBundleValue:v11 key:v12 bundleType:v13 completion:{v17, v20, v21, v22, v23}];
    v19 = &v24;
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __87__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_key_bundleType_completion___block_invoke;
    v25[3] = &unk_1E6A459B0;
    v27 = v14;
    v26 = v16;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v25];
    v19 = &v27;
    v18 = v26;
  }
}

- (id)copyCarrierBundleValue:(id)a3 key:(id)a4 bundleType:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:v11 error:a6])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__8;
    v29 = __Block_byref_object_dispose__8;
    v30 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __82__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_key_bundleType_error___block_invoke;
    v24[3] = &unk_1E6A43BB0;
    v24[4] = &v25;
    v14 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v24];
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__8;
    v22 = __Block_byref_object_dispose__8;
    v23 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_key_bundleType_error___block_invoke_2;
    v17[3] = &unk_1E6A43F88;
    v17[4] = &v25;
    v17[5] = &v18;
    [v14 copyCarrierBundleValue:v11 key:v12 bundleType:v13 completion:v17];
    if (a6)
    {
      *a6 = v26[5];
    }

    v15 = v19[5];
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __82__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_key_bundleType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)copyCarrierBundleValue:(id)a3 keyHierarchy:(id)a4 bundleType:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28 = 0;
  v15 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:v11 error:&v28];
  v16 = v28;
  if (v15)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __96__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_keyHierarchy_bundleType_completion___block_invoke_2;
    v23 = &unk_1E6A43CC8;
    v17 = v14;
    v24 = v17;
    v18 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v20];
    [v18 copyCarrierBundleValue:v11 keyHierarchy:v12 bundleType:v13 completion:{v17, v20, v21, v22, v23}];
    v19 = &v24;
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __96__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_keyHierarchy_bundleType_completion___block_invoke;
    v25[3] = &unk_1E6A459B0;
    v27 = v14;
    v26 = v16;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v25];
    v19 = &v27;
    v18 = v26;
  }
}

- (id)copyCarrierBundleValue:(id)a3 keyHierarchy:(id)a4 bundleType:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:v11 error:a6])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__8;
    v29 = __Block_byref_object_dispose__8;
    v30 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __91__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_keyHierarchy_bundleType_error___block_invoke;
    v24[3] = &unk_1E6A43BB0;
    v24[4] = &v25;
    v14 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v24];
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__8;
    v22 = __Block_byref_object_dispose__8;
    v23 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __91__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_keyHierarchy_bundleType_error___block_invoke_2;
    v17[3] = &unk_1E6A43F88;
    v17[4] = &v25;
    v17[5] = &v18;
    [v14 copyCarrierBundleValue:v11 keyHierarchy:v12 bundleType:v13 completion:v17];
    if (a6)
    {
      *a6 = v26[5];
    }

    v15 = v19[5];
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __91__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_keyHierarchy_bundleType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __122__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValues_keys_defaultValues_bundleType_withFallbackBundleCheck_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __132__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValues_keyHierarchies_defaultValues_bundleType_withFallbackBundleCheck_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)copyCarrierBundleValueWithDefault:(id)a3 key:(id)a4 bundleType:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28 = 0;
  v15 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:v11 error:&v28];
  v16 = v28;
  if (v15)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __98__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_key_bundleType_completion___block_invoke_2;
    v23 = &unk_1E6A43CC8;
    v17 = v14;
    v24 = v17;
    v18 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v20];
    [v18 copyCarrierBundleValueWithDefault:v11 key:v12 bundleType:v13 completion:{v17, v20, v21, v22, v23}];
    v19 = &v24;
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __98__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_key_bundleType_completion___block_invoke;
    v25[3] = &unk_1E6A459B0;
    v27 = v14;
    v26 = v16;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v25];
    v19 = &v27;
    v18 = v26;
  }
}

- (id)copyCarrierBundleValueWithDefault:(id)a3 key:(id)a4 bundleType:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:v11 error:a6])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__8;
    v29 = __Block_byref_object_dispose__8;
    v30 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __93__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_key_bundleType_error___block_invoke;
    v24[3] = &unk_1E6A43BB0;
    v24[4] = &v25;
    v14 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v24];
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__8;
    v22 = __Block_byref_object_dispose__8;
    v23 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_key_bundleType_error___block_invoke_2;
    v17[3] = &unk_1E6A43F88;
    v17[4] = &v25;
    v17[5] = &v18;
    [v14 copyCarrierBundleValueWithDefault:v11 key:v12 bundleType:v13 completion:v17];
    if (a6)
    {
      *a6 = v26[5];
    }

    v15 = v19[5];
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __93__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_key_bundleType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)copyCarrierBundleValueWithDefault:(id)a3 keyHierarchy:(id)a4 bundleType:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28 = 0;
  v15 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:v11 error:&v28];
  v16 = v28;
  if (v15)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __107__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_keyHierarchy_bundleType_completion___block_invoke_2;
    v23 = &unk_1E6A43CC8;
    v17 = v14;
    v24 = v17;
    v18 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v20];
    [v18 copyCarrierBundleValueWithDefault:v11 keyHierarchy:v12 bundleType:v13 completion:{v17, v20, v21, v22, v23}];
    v19 = &v24;
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __107__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_keyHierarchy_bundleType_completion___block_invoke;
    v25[3] = &unk_1E6A459B0;
    v27 = v14;
    v26 = v16;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v25];
    v19 = &v27;
    v18 = v26;
  }
}

- (id)copyCarrierBundleValueWithDefault:(id)a3 keyHierarchy:(id)a4 bundleType:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:v11 error:a6])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__8;
    v29 = __Block_byref_object_dispose__8;
    v30 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __102__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_keyHierarchy_bundleType_error___block_invoke;
    v24[3] = &unk_1E6A43BB0;
    v24[4] = &v25;
    v14 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v24];
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__8;
    v22 = __Block_byref_object_dispose__8;
    v23 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __102__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_keyHierarchy_bundleType_error___block_invoke_2;
    v17[3] = &unk_1E6A43F88;
    v17[4] = &v25;
    v17[5] = &v18;
    [v14 copyCarrierBundleValueWithDefault:v11 keyHierarchy:v12 bundleType:v13 completion:v17];
    if (a6)
    {
      *a6 = v26[5];
    }

    v15 = v19[5];
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __102__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_keyHierarchy_bundleType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)copyCarrierBundleValueWithCountryBundleLookup:(id)a3 keyHierarchy:(id)a4 matchingInfo:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:v11 error:a6])
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__8;
    v29 = __Block_byref_object_dispose__8;
    v30 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __116__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithCountryBundleLookup_keyHierarchy_matchingInfo_error___block_invoke;
    v24[3] = &unk_1E6A43BB0;
    v24[4] = &v25;
    v14 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v24];
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__8;
    v22 = __Block_byref_object_dispose__8;
    v23 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __116__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithCountryBundleLookup_keyHierarchy_matchingInfo_error___block_invoke_2;
    v17[3] = &unk_1E6A43F88;
    v17[4] = &v25;
    v17[5] = &v18;
    [v14 copyCarrierBundleValueWithCountryBundleLookup:v11 keyHierarchy:v12 matchingInfo:v13 completion:v17];
    if (a6)
    {
      *a6 = v26[5];
    }

    v15 = v19[5];
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __116__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithCountryBundleLookup_keyHierarchy_matchingInfo_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)context:(id)a3 getCarrierBundleValue:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[CTBundle alloc] initWithBundleType:1];
  v11 = [(CoreTelephonyClient *)self copyCarrierBundleValueWithDefault:v8 keyHierarchy:v9 bundleType:v10 error:a5];

  return v11;
}

- (void)context:(id)a3 getCarrierBundleValue:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[CTBundle alloc] initWithBundleType:1];
  [(CoreTelephonyClient *)self copyCarrierBundleValueWithDefault:v11 keyHierarchy:v8 bundleType:v10 completion:v9];
}

- (void)copyCarrierBundleLocation:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v9 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:v7 error:&v22];
  v10 = v22;
  if (v9)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __75__CoreTelephonyClient_CarrierBundle__copyCarrierBundleLocation_completion___block_invoke_2;
    v17 = &unk_1E6A43CC8;
    v11 = v8;
    v18 = v11;
    v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v14];
    [v12 copyCarrierBundleLocation:v7 completion:{v11, v14, v15, v16, v17}];
    v13 = &v18;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__CoreTelephonyClient_CarrierBundle__copyCarrierBundleLocation_completion___block_invoke;
    v19[3] = &unk_1E6A459B0;
    v21 = v8;
    v20 = v10;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v19];
    v13 = &v21;
    v12 = v20;
  }
}

- (id)copyCarrierBundleLocation:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:v7 error:a4])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__8;
    v23 = __Block_byref_object_dispose__8;
    v24 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__CoreTelephonyClient_CarrierBundle__copyCarrierBundleLocation_error___block_invoke;
    v18[3] = &unk_1E6A43BB0;
    v18[4] = &v19;
    v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__8;
    v16 = __Block_byref_object_dispose__8;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__CoreTelephonyClient_CarrierBundle__copyCarrierBundleLocation_error___block_invoke_2;
    v11[3] = &unk_1E6A44B78;
    v11[4] = &v19;
    v11[5] = &v12;
    [v8 copyCarrierBundleLocation:v7 completion:v11];
    if (a4)
    {
      *a4 = v20[5];
    }

    v9 = v13[5];
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __70__CoreTelephonyClient_CarrierBundle__copyCarrierBundleLocation_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)copyCarrierBookmarks:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v9 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:v7 error:&v22];
  v10 = v22;
  if (v9)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __70__CoreTelephonyClient_CarrierBundle__copyCarrierBookmarks_completion___block_invoke_2;
    v17 = &unk_1E6A43CC8;
    v11 = v8;
    v18 = v11;
    v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v14];
    [v12 copyCarrierBookmarks:v7 completion:{v11, v14, v15, v16, v17}];
    v13 = &v18;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__CoreTelephonyClient_CarrierBundle__copyCarrierBookmarks_completion___block_invoke;
    v19[3] = &unk_1E6A459B0;
    v21 = v8;
    v20 = v10;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v19];
    v13 = &v21;
    v12 = v20;
  }
}

- (void)copyCarrierBundleVersion:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v9 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:v7 error:&v22];
  v10 = v22;
  if (v9)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __74__CoreTelephonyClient_CarrierBundle__copyCarrierBundleVersion_completion___block_invoke_2;
    v17 = &unk_1E6A43CC8;
    v11 = v8;
    v18 = v11;
    v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v14];
    [v12 copyCarrierBundleVersion:v7 completion:{v11, v14, v15, v16, v17}];
    v13 = &v18;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __74__CoreTelephonyClient_CarrierBundle__copyCarrierBundleVersion_completion___block_invoke;
    v19[3] = &unk_1E6A459B0;
    v21 = v8;
    v20 = v10;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v19];
    v13 = &v21;
    v12 = v20;
  }
}

- (id)copyCarrierBundleVersion:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:v7 error:a4])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__8;
    v23 = __Block_byref_object_dispose__8;
    v24 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__CoreTelephonyClient_CarrierBundle__copyCarrierBundleVersion_error___block_invoke;
    v18[3] = &unk_1E6A43BB0;
    v18[4] = &v19;
    v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__8;
    v16 = __Block_byref_object_dispose__8;
    v17 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__CoreTelephonyClient_CarrierBundle__copyCarrierBundleVersion_error___block_invoke_2;
    v11[3] = &unk_1E6A44B78;
    v11[4] = &v19;
    v11[5] = &v12;
    [v8 copyCarrierBundleVersion:v7 completion:v11];
    if (a4)
    {
      *a4 = v20[5];
    }

    v9 = v13[5];
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __69__CoreTelephonyClient_CarrierBundle__copyCarrierBundleVersion_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)isAttachApnSettingAllowed:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CoreTelephonyClient_CarrierBundle__isAttachApnSettingAllowed_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isAttachApnSettingAllowed:v6 completion:v8];
}

- (BOOL)isAttachApnSettingAllowed:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__8;
  v20 = __Block_byref_object_dispose__8;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__CoreTelephonyClient_CarrierBundle__isAttachApnSettingAllowed_error___block_invoke;
  v15[3] = &unk_1E6A43BB0;
  v15[4] = &v16;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CoreTelephonyClient_CarrierBundle__isAttachApnSettingAllowed_error___block_invoke_2;
  v10[3] = &unk_1E6A43D88;
  v10[4] = &v16;
  v10[5] = &v11;
  [v7 isAttachApnSettingAllowed:v6 completion:v10];
  if (a4)
  {
    *a4 = v17[5];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __70__CoreTelephonyClient_CarrierBundle__isAttachApnSettingAllowed_error___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (id)context:(id)a3 modifyAttachApnSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__CoreTelephonyClient_CarrierBundle__context_modifyAttachApnSettings___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__CoreTelephonyClient_CarrierBundle__context_modifyAttachApnSettings___block_invoke_2;
  v11[3] = &unk_1E6A43BB0;
  v11[4] = &v13;
  [v8 context:v6 modifyAttachApnSettings:v7 completion:v11];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (void)context:(id)a3 modifyAttachApnSettings:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CoreTelephonyClient_CarrierBundle__context_modifyAttachApnSettings_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = v10;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 context:v8 modifyAttachApnSettings:v9 completion:v11];
}

- (id)context:(id)a3 getAttachApnSettings:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__CoreTelephonyClient_CarrierBundle__context_getAttachApnSettings___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CoreTelephonyClient_CarrierBundle__context_getAttachApnSettings___block_invoke_2;
  v10[3] = &unk_1E6A459D8;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 context:v6 getAttachApnSettingsWithCompletion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __67__CoreTelephonyClient_CarrierBundle__context_getAttachApnSettings___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)copyBundleVersion:(id)a3 bundleType:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25 = 0;
  v12 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:v9 error:&v25];
  v13 = v25;
  if (v12)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __78__CoreTelephonyClient_CarrierBundle__copyBundleVersion_bundleType_completion___block_invoke_2;
    v20 = &unk_1E6A43CC8;
    v14 = v11;
    v21 = v14;
    v15 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v17];
    [v15 copyBundleVersion:v9 bundleType:v10 completion:{v14, v17, v18, v19, v20}];
    v16 = &v21;
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __78__CoreTelephonyClient_CarrierBundle__copyBundleVersion_bundleType_completion___block_invoke;
    v22[3] = &unk_1E6A459B0;
    v24 = v11;
    v23 = v13;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v22];
    v16 = &v24;
    v15 = v23;
  }
}

- (id)copyBundleVersion:(id)a3 bundleType:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:v9 error:a5])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__8;
    v26 = __Block_byref_object_dispose__8;
    v27 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __73__CoreTelephonyClient_CarrierBundle__copyBundleVersion_bundleType_error___block_invoke;
    v21[3] = &unk_1E6A43BB0;
    v21[4] = &v22;
    v11 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v21];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__8;
    v19 = __Block_byref_object_dispose__8;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__CoreTelephonyClient_CarrierBundle__copyBundleVersion_bundleType_error___block_invoke_2;
    v14[3] = &unk_1E6A44B78;
    v14[4] = &v22;
    v14[5] = &v15;
    [v11 copyBundleVersion:v9 bundleType:v10 completion:v14];
    if (a5)
    {
      *a5 = v23[5];
    }

    v12 = v16[5];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __73__CoreTelephonyClient_CarrierBundle__copyBundleVersion_bundleType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)copyBundleIdentifier:(id)a3 bundleType:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25 = 0;
  v12 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:v9 error:&v25];
  v13 = v25;
  if (v12)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __81__CoreTelephonyClient_CarrierBundle__copyBundleIdentifier_bundleType_completion___block_invoke_2;
    v20 = &unk_1E6A43CC8;
    v14 = v11;
    v21 = v14;
    v15 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v17];
    [v15 copyBundleIdentifier:v9 bundleType:v10 completion:{v14, v17, v18, v19, v20}];
    v16 = &v21;
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__CoreTelephonyClient_CarrierBundle__copyBundleIdentifier_bundleType_completion___block_invoke;
    v22[3] = &unk_1E6A459B0;
    v24 = v11;
    v23 = v13;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v22];
    v16 = &v24;
    v15 = v23;
  }
}

- (id)copyBundleIdentifier:(id)a3 bundleType:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:v9 error:a5])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__8;
    v26 = __Block_byref_object_dispose__8;
    v27 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __76__CoreTelephonyClient_CarrierBundle__copyBundleIdentifier_bundleType_error___block_invoke;
    v21[3] = &unk_1E6A43BB0;
    v21[4] = &v22;
    v11 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v21];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__8;
    v19 = __Block_byref_object_dispose__8;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__CoreTelephonyClient_CarrierBundle__copyBundleIdentifier_bundleType_error___block_invoke_2;
    v14[3] = &unk_1E6A44B78;
    v14[4] = &v22;
    v14[5] = &v15;
    [v11 copyBundleIdentifier:v9 bundleType:v10 completion:v14];
    if (a5)
    {
      *a5 = v23[5];
    }

    v12 = v16[5];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __76__CoreTelephonyClient_CarrierBundle__copyBundleIdentifier_bundleType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)restoreToSystemBundles:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__CoreTelephonyClient_CarrierBundle__restoreToSystemBundles___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CoreTelephonyClient_CarrierBundle__restoreToSystemBundles___block_invoke_2;
  v7[3] = &unk_1E6A43D88;
  v7[4] = &v13;
  v7[5] = &v8;
  [v4 restoreToSystemBundles:v7];
  if (a3)
  {
    *a3 = v14[5];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v13, 8);
  return v5;
}

void __61__CoreTelephonyClient_CarrierBundle__restoreToSystemBundles___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (id)getCountryBundleLocationForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__CoreTelephonyClient_CarrierBundle__getCountryBundleLocationForBundleIdentifier_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__CoreTelephonyClient_CarrierBundle__getCountryBundleLocationForBundleIdentifier_error___block_invoke_2;
  v10[3] = &unk_1E6A44B78;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getCountryBundleLocationForBundleIdentifier:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __88__CoreTelephonyClient_CarrierBundle__getCountryBundleLocationForBundleIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getCountryBundleIdentifierForCountryCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__CoreTelephonyClient_CarrierBundle__getCountryBundleIdentifierForCountryCode_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__CoreTelephonyClient_CarrierBundle__getCountryBundleIdentifierForCountryCode_error___block_invoke_2;
  v10[3] = &unk_1E6A44B78;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getCountryBundleIdentifierForCountryCode:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __85__CoreTelephonyClient_CarrierBundle__getCountryBundleIdentifierForCountryCode_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getEnglishCarrierNameFor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__CoreTelephonyClient_CarrierBundle__getEnglishCarrierNameFor_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__CoreTelephonyClient_CarrierBundle__getEnglishCarrierNameFor_error___block_invoke_2;
  v10[3] = &unk_1E6A44B78;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getEnglishCarrierNameFor:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __69__CoreTelephonyClient_CarrierBundle__getEnglishCarrierNameFor_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)copyBundleLocation:(id)a3 bundleType:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25 = 0;
  v12 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:v9 error:&v25];
  v13 = v25;
  if (v12)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __79__CoreTelephonyClient_CarrierBundle__copyBundleLocation_bundleType_completion___block_invoke_2;
    v20 = &unk_1E6A43CC8;
    v14 = v11;
    v21 = v14;
    v15 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v17];
    [v15 copyBundleLocation:v9 bundleType:v10 completion:{v14, v17, v18, v19, v20}];
    v16 = &v21;
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __79__CoreTelephonyClient_CarrierBundle__copyBundleLocation_bundleType_completion___block_invoke;
    v22[3] = &unk_1E6A459B0;
    v24 = v11;
    v23 = v13;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v22];
    v16 = &v24;
    v15 = v23;
  }
}

- (id)copyBundleLocation:(id)a3 bundleType:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:v9 error:a5])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__8;
    v26 = __Block_byref_object_dispose__8;
    v27 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __74__CoreTelephonyClient_CarrierBundle__copyBundleLocation_bundleType_error___block_invoke;
    v21[3] = &unk_1E6A43BB0;
    v21[4] = &v22;
    v11 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v21];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__8;
    v19 = __Block_byref_object_dispose__8;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__CoreTelephonyClient_CarrierBundle__copyBundleLocation_bundleType_error___block_invoke_2;
    v14[3] = &unk_1E6A44B78;
    v14[4] = &v22;
    v14[5] = &v15;
    [v11 copyBundleLocation:v9 bundleType:v10 completion:v14];
    if (a5)
    {
      *a5 = v23[5];
    }

    v12 = v16[5];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __74__CoreTelephonyClient_CarrierBundle__copyBundleLocation_bundleType_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getCountryBundleLocationForMatchingInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__CoreTelephonyClient_CarrierBundle__getCountryBundleLocationForMatchingInfo_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__CoreTelephonyClient_CarrierBundle__getCountryBundleLocationForMatchingInfo_error___block_invoke_2;
  v10[3] = &unk_1E6A44B78;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getCountryBundleLocationForMatchingInfo:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __84__CoreTelephonyClient_CarrierBundle__getCountryBundleLocationForMatchingInfo_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (int64_t)checkCellularDiagnosticsStatus:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__9;
  v14 = __Block_byref_object_dispose__9;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CoreTelephonyClient_Radio__checkCellularDiagnosticsStatus___block_invoke;
  v9[3] = &unk_1E6A43BB0;
  v9[4] = &v10;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__CoreTelephonyClient_Radio__checkCellularDiagnosticsStatus___block_invoke_2;
  v8[3] = &unk_1E6A45A98;
  v8[4] = &v16;
  [v4 checkCellularDiagnosticsStatus:v8];
  if (a3)
  {
    v5 = v11[5];
    if (v5)
    {
      *a3 = v5;
    }
  }

  v6 = v17[3];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)checkCellularDiagnosticsStatusDetails:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x4012000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__3;
  v23 = &unk_18309F936;
  v24 = 0;
  v25 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_Radio__checkCellularDiagnosticsStatusDetails___block_invoke;
  v11[3] = &unk_1E6A43BB0;
  v11[4] = &v12;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CoreTelephonyClient_Radio__checkCellularDiagnosticsStatusDetails___block_invoke_2;
  v10[3] = &unk_1E6A45A98;
  v10[4] = &v18;
  [v4 checkCellularDiagnosticsStatus:v10];
  if (a3)
  {
    v5 = v13[5];
    if (v5)
    {
      *a3 = v5;
    }
  }

  v6 = v19[6];
  v7 = v19[7];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  v8 = v6;
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

uint64_t __68__CoreTelephonyClient_Radio__checkCellularDiagnosticsStatusDetails___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 48) = a2;
  *(*(*(result + 32) + 8) + 56) = a3;
  return result;
}

- (void)checkRadioBootHealth:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__CoreTelephonyClient_Radio__checkRadioBootHealth___block_invoke;
    v8[3] = &unk_1E6A43CC8;
    v6 = v4;
    v9 = v6;
    v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v8];
    [v7 checkRadioBootHealth:v6];
  }
}

- (void)checkRadioBootHealthDetails:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__CoreTelephonyClient_Radio__checkRadioBootHealthDetails___block_invoke;
    v8[3] = &unk_1E6A43CC8;
    v6 = v4;
    v9 = v6;
    v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v8];
    [v7 checkRadioBootHealthDetails:v6];
  }
}

- (id)getBasebandRadioFrequencyFrontEndScanData:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__CoreTelephonyClient_Radio__getBasebandRadioFrequencyFrontEndScanData___block_invoke;
  v14[3] = &unk_1E6A43BB0;
  v14[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v14];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__9;
  v12 = __Block_byref_object_dispose__9;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CoreTelephonyClient_Radio__getBasebandRadioFrequencyFrontEndScanData___block_invoke_2;
  v7[3] = &unk_1E6A45AC0;
  v7[4] = &v15;
  v7[5] = &v8;
  [v4 getBasebandRadioFrequencyFrontEndScanData:v7];
  *a3 = v9[5];
  v5 = v16[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __72__CoreTelephonyClient_Radio__getBasebandRadioFrequencyFrontEndScanData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)activateTurboMode:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CoreTelephonyClient_Radio__activateTurboMode___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = v4;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 activateTurboMode:v5];
}

- (id)checkBasebandConfigUpdateInfo:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__CoreTelephonyClient_Radio__checkBasebandConfigUpdateInfo___block_invoke;
  v15[3] = &unk_1E6A43BB0;
  v15[4] = &v16;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__CoreTelephonyClient_Radio__checkBasebandConfigUpdateInfo___block_invoke_2;
  v8[3] = &unk_1E6A45AE8;
  v8[4] = &v16;
  v8[5] = &v9;
  [v4 checkBasebandConfigUpdateInfo:v8];
  v5 = v17[5];
  if (!v5)
  {
    *a3 = v10[5];
    v5 = v17[5];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __60__CoreTelephonyClient_Radio__checkBasebandConfigUpdateInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getSupportsTARandomization:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__CoreTelephonyClient_Radio__getSupportsTARandomization_error___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__CoreTelephonyClient_Radio__getSupportsTARandomization_error___block_invoke_2;
  v11[3] = &unk_1E6A45228;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 getSupportsTARandomization:v6 completion:v11];
  if (a4)
  {
    v8 = v14[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  v9 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __63__CoreTelephonyClient_Radio__getSupportsTARandomization_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)getTARandomizationSetting:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__CoreTelephonyClient_Radio__getTARandomizationSetting_error___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CoreTelephonyClient_Radio__getTARandomizationSetting_error___block_invoke_2;
  v11[3] = &unk_1E6A45228;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 getTARandomizationSetting:v6 completion:v11];
  if (a4)
  {
    v8 = v14[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  v9 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __62__CoreTelephonyClient_Radio__getTARandomizationSetting_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)setVoLTEAudioCodec:(id)a3 codecInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__CoreTelephonyClient_FaceTime__setVoLTEAudioCodec_codecInfo_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = v10;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 setVoLTEAudioCodec:v8 codecInfo:v9 completion:v11];
}

- (id)getSIMToolkitMenu:(id)a3 menu:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__CoreTelephonyClient_SIMToolkit__getSIMToolkitMenu_menu___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CoreTelephonyClient_SIMToolkit__getSIMToolkitMenu_menu___block_invoke_2;
  v10[3] = &unk_1E6A462C0;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getSIMToolkitMenuForContext:v6 completion:v10];
  *a4 = v12[5];
  v8 = v19[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __58__CoreTelephonyClient_SIMToolkit__getSIMToolkitMenu_menu___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)selectSIMToolkitMenuItem:(id)a3 index:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__CoreTelephonyClient_SIMToolkit__selectSIMToolkitMenuItem_index___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CoreTelephonyClient_SIMToolkit__selectSIMToolkitMenuItem_index___block_invoke_2;
  v11[3] = &unk_1E6A43BB0;
  v11[4] = &v13;
  [v8 selectSIMToolkitMenuItemForContext:v6 index:v7 completion:v11];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)getSIMToolkitListItems:(id)a3 items:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__CoreTelephonyClient_SIMToolkit__getSIMToolkitListItems_items___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CoreTelephonyClient_SIMToolkit__getSIMToolkitListItems_items___block_invoke_2;
  v10[3] = &unk_1E6A462E8;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getSIMToolkitListItemsForContext:v6 completion:v10];
  *a4 = v12[5];
  v8 = v19[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __64__CoreTelephonyClient_SIMToolkit__getSIMToolkitListItems_items___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)selectSIMToolkitListItem:(id)a3 session:(id)a4 response:(id)a5 index:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__CoreTelephonyClient_SIMToolkit__selectSIMToolkitListItem_session_response_index___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v14 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__CoreTelephonyClient_SIMToolkit__selectSIMToolkitListItem_session_response_index___block_invoke_2;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v19;
  [v14 selectSIMToolkitListItemForContext:v10 session:v11 response:v12 index:v13 completion:v17];
  v15 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v15;
}

- (id)sendSIMToolkitResponse:(id)a3 session:(id)a4 response:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__10;
  v20 = __Block_byref_object_dispose__10;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__CoreTelephonyClient_SIMToolkit__sendSIMToolkitResponse_session_response___block_invoke;
  v15[3] = &unk_1E6A43BB0;
  v15[4] = &v16;
  v11 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__CoreTelephonyClient_SIMToolkit__sendSIMToolkitResponse_session_response___block_invoke_2;
  v14[3] = &unk_1E6A43BB0;
  v14[4] = &v16;
  [v11 sendSIMToolkitResponseForContext:v8 session:v9 response:v10 completion:v14];
  v12 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v12;
}

- (id)sendSIMToolkitStringResponse:(id)a3 session:(id)a4 response:(id)a5 string:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__CoreTelephonyClient_SIMToolkit__sendSIMToolkitStringResponse_session_response_string___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v14 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__CoreTelephonyClient_SIMToolkit__sendSIMToolkitStringResponse_session_response_string___block_invoke_2;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v19;
  [v14 sendSIMToolkitStringResponseForContext:v10 session:v11 response:v12 string:v13 completion:v17];
  v15 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v15;
}

- (id)sendSIMToolkitUserActivity:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__CoreTelephonyClient_SIMToolkit__sendSIMToolkitUserActivity___block_invoke;
  v9[3] = &unk_1E6A43BB0;
  v9[4] = &v10;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__CoreTelephonyClient_SIMToolkit__sendSIMToolkitUserActivity___block_invoke_2;
  v8[3] = &unk_1E6A43BB0;
  v8[4] = &v10;
  [v5 sendSIMToolkitUserActivityForContext:v4 completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)sendSIMToolkitDisplayReady:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__CoreTelephonyClient_SIMToolkit__sendSIMToolkitDisplayReady___block_invoke;
  v9[3] = &unk_1E6A43BB0;
  v9[4] = &v10;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__CoreTelephonyClient_SIMToolkit__sendSIMToolkitDisplayReady___block_invoke_2;
  v8[3] = &unk_1E6A43BB0;
  v8[4] = &v10;
  [v5 sendSIMToolkitDisplayReadyForContext:v4 completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)getSIMToolkitUSSDString:(id)a3 ussdString:(id *)a4 needRsp:(BOOL *)a5
{
  v8 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __78__CoreTelephonyClient_SIMToolkit__getSIMToolkitUSSDString_ussdString_needRsp___block_invoke;
  v23[3] = &unk_1E6A43BB0;
  v23[4] = &v24;
  v9 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v23];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__10;
  v21 = __Block_byref_object_dispose__10;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__CoreTelephonyClient_SIMToolkit__getSIMToolkitUSSDString_ussdString_needRsp___block_invoke_2;
  v12[3] = &unk_1E6A46310;
  v12[4] = &v24;
  v12[5] = &v17;
  v12[6] = &v13;
  [v9 getSIMToolkitUSSDStringForContext:v8 completion:v12];
  *a4 = v18[5];
  *a5 = *(v14 + 24);
  v10 = v25[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v24, 8);

  return v10;
}

void __78__CoreTelephonyClient_SIMToolkit__getSIMToolkitUSSDString_ussdString_needRsp___block_invoke_2(void *a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  objc_storeStrong((*(a1[4] + 8) + 40), a4);
  v11 = a4;
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  *(*(a1[6] + 8) + 24) = a3;
}

- (id)sendSIMToolkitUSSDResponse:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CoreTelephonyClient_SIMToolkit__sendSIMToolkitUSSDResponse_response___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__CoreTelephonyClient_SIMToolkit__sendSIMToolkitUSSDResponse_response___block_invoke_2;
  v11[3] = &unk_1E6A43BB0;
  v11[4] = &v13;
  [v8 sendSIMToolkitUSSDResponseForContext:v6 response:v7 completion:v11];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)cancelSIMToolkitUSSDSession:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__CoreTelephonyClient_SIMToolkit__cancelSIMToolkitUSSDSession___block_invoke;
  v9[3] = &unk_1E6A43BB0;
  v9[4] = &v10;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CoreTelephonyClient_SIMToolkit__cancelSIMToolkitUSSDSession___block_invoke_2;
  v8[3] = &unk_1E6A43BB0;
  v8[4] = &v10;
  [v5 cancelSIMToolkitUSSDSessionForContext:v4 completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)getSIMStatus:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimStatusRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:v6];
}

- (id)getSIMStatus:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimStatusRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

  return v8;
}

- (void)getSIMTrayStatus:(id)a3
{
  v5 = a3;
  v4 = objc_alloc_init(CTXPCSimTrayStatusRequest);
  [(CoreTelephonyClient *)self asynchronousRequest:v4 completionWithString:v5];
}

- (id)getSIMTrayStatusOrError:(id *)a3
{
  v5 = objc_alloc_init(CTXPCSimTrayStatusRequest);
  v6 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v5 error:a3];

  return v6;
}

- (id)isEmbeddedSIMOnlyConfig:(id *)a3
{
  v5 = objc_alloc_init(CTXPCEmbeddedSIMOnlyConfigRequest);
  v6 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v5 error:a3];

  return v6;
}

- (void)copyMobileEquipmentInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(CTXPCMobileEquipmentInfoRequest);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__CoreTelephonyClient_Subscriber__copyMobileEquipmentInfo___block_invoke;
    v10[3] = &unk_1E6A43CC8;
    v6 = v4;
    v11 = v6;
    v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__CoreTelephonyClient_Subscriber__copyMobileEquipmentInfo___block_invoke_2;
    v8[3] = &unk_1E6A463D0;
    v9 = v6;
    [v7 sendRequest:v5 completionHandler:v8];
  }
}

void __59__CoreTelephonyClient_Subscriber__copyMobileEquipmentInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 infoList];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)getMobileEquipmentInfo:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__CoreTelephonyClient_Subscriber__getMobileEquipmentInfo___block_invoke;
  v10[3] = &unk_1E6A43BB0;
  v10[4] = &v11;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v10];
  v5 = objc_alloc_init(CTXPCMobileEquipmentInfoRequest);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CoreTelephonyClient_Subscriber__getMobileEquipmentInfo___block_invoke_2;
  v9[3] = &unk_1E6A44B30;
  v9[4] = &v17;
  v9[5] = &v11;
  [v4 sendRequest:v5 completionHandler:v9];
  if (a3)
  {
    v6 = v12[5];
    if (v6)
    {
      *a3 = v6;
    }
  }

  v7 = v18[5];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __58__CoreTelephonyClient_Subscriber__getMobileEquipmentInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v15;
    v8 = v15;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v15;
  }

  v10 = [v9 infoList];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (id)getMobileEquipmentInfoFor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__11;
  v28 = __Block_byref_object_dispose__11;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__11;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__CoreTelephonyClient_Subscriber__getMobileEquipmentInfoFor_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v8 = objc_alloc_init(CTXPCMobileEquipmentInfoRequest);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__CoreTelephonyClient_Subscriber__getMobileEquipmentInfoFor_error___block_invoke_2;
  v13[3] = &unk_1E6A463F8;
  v15 = &v18;
  v9 = v6;
  v14 = v9;
  v16 = &v24;
  [v7 sendRequest:v8 completionHandler:v13];
  if (a4)
  {
    v10 = v19[5];
    if (v10)
    {
      *a4 = v10;
    }
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __67__CoreTelephonyClient_Subscriber__getMobileEquipmentInfoFor_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v19;
    v8 = v19;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v19;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v10 = [v9 infoList];
  v11 = v10;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (!v12)
  {
    v13 = [v10 meInfoList];
    v14 = [*(a1 + 32) slotID];
    for (i = 0; i < [v13 count]; ++i)
    {
      v16 = [v13 objectAtIndex:i];
      if (v14 == [v16 slotId])
      {
        v17 = *(*(a1 + 48) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        break;
      }
    }
  }
}

- (id)getTypeAllocationCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCTACRequest alloc] initWithDescriptor:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

  return v8;
}

- (void)copyFirmwareUpdateInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(CTXPCFirmwareUpdateInfoRequest);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__CoreTelephonyClient_Subscriber__copyFirmwareUpdateInfo___block_invoke;
    v10[3] = &unk_1E6A43CC8;
    v6 = v4;
    v11 = v6;
    v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__CoreTelephonyClient_Subscriber__copyFirmwareUpdateInfo___block_invoke_2;
    v8[3] = &unk_1E6A463D0;
    v9 = v6;
    [v7 sendRequest:v5 completionHandler:v8];
  }
}

void __58__CoreTelephonyClient_Subscriber__copyFirmwareUpdateInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 firmwareInfo];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)copySIMIdentity:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimIdentityRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:v6];
}

- (id)copySIMIdentity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimIdentityRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

  return v8;
}

- (void)copyMobileSubscriberIdentity:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberIdentityRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:v6];
}

- (id)copyMobileSubscriberIdentity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberIdentityRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

  return v8;
}

- (BOOL)context:(id)a3 isProtectedIdentitySupported:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v11 = CTLogClientXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) context:isProtectedIdentitySupported:error:];
      if (a5)
      {
        goto LABEL_5;
      }
    }

    else if (a5)
    {
LABEL_5:
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v10 = 0;
      *a5 = [v12 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      goto LABEL_8;
    }

    v10 = 0;
    goto LABEL_8;
  }

  v10 = [(CoreTelephonyClient *)self context:v8 supportedIdentityProtectionFor:v9 error:a5]!= 0;
LABEL_8:

  return v10;
}

- (void)context:(id)a3 isProtectedIdentitySupported:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __83__CoreTelephonyClient_Subscriber__context_isProtectedIdentitySupported_completion___block_invoke;
    v15[3] = &unk_1E6A46420;
    v16 = v10;
    [(CoreTelephonyClient *)self context:v8 supportedIdentityProtectionFor:v9 completion:v15];
    v12 = v16;
  }

  else
  {
    v13 = CTLogClientXPC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) context:isProtectedIdentitySupported:error:];
    }

    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = [v14 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (v11)[2](v11, 0, v12);
  }
}

- (void)context:(id)a3 supportedIdentityProtectionFor:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [[CTXPCSubscriberSupportsEncryptedIdentityRequest alloc] initWithContext:v8 service:v9];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__CoreTelephonyClient_Subscriber__context_supportedIdentityProtectionFor_completion___block_invoke;
    v18[3] = &unk_1E6A43CC8;
    v12 = v10;
    v19 = v12;
    v13 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __85__CoreTelephonyClient_Subscriber__context_supportedIdentityProtectionFor_completion___block_invoke_2;
    v16[3] = &unk_1E6A463D0;
    v17 = v12;
    [v13 sendRequest:v11 completionHandler:v16];
  }

  else
  {
    v14 = CTLogClientXPC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) context:isProtectedIdentitySupported:error:];
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = [v15 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v10 + 2))(v10, 0, v11);
  }
}

void __85__CoreTelephonyClient_Subscriber__context_supportedIdentityProtectionFor_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v11;
    v8 = v11;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v11;
  }

  v10 = [v9 result];
  [v10 integerValue];

  (*(*(a1 + 32) + 16))();
}

- (int64_t)context:(id)a3 supportedIdentityProtectionFor:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (!v9)
  {
    v14 = CTLogClientXPC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) context:isProtectedIdentitySupported:error:];
      if (!a5)
      {
        goto LABEL_9;
      }
    }

    else if (!a5)
    {
LABEL_9:
      v13 = v26[3];
      goto LABEL_10;
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    *a5 = [v15 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    goto LABEL_9;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__CoreTelephonyClient_Subscriber__context_supportedIdentityProtectionFor_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v11 = [[CTXPCSubscriberSupportsEncryptedIdentityRequest alloc] initWithContext:v8 service:v9];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__CoreTelephonyClient_Subscriber__context_supportedIdentityProtectionFor_error___block_invoke_2;
  v17[3] = &unk_1E6A44B30;
  v17[4] = &v25;
  v17[5] = &v19;
  [v10 sendRequest:v11 completionHandler:v17];
  if (a5)
  {
    v12 = v20[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = v26[3];

  _Block_object_dispose(&v19, 8);
LABEL_10:
  _Block_object_dispose(&v25, 8);

  return v13;
}

void __80__CoreTelephonyClient_Subscriber__context_supportedIdentityProtectionFor_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  v10 = [v9 result];
  *(*(*(a1 + 32) + 8) + 24) = [v10 integerValue];

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;
}

- (void)createEncryptedIdentity:(id)a3 identity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79__CoreTelephonyClient_Subscriber__createEncryptedIdentity_identity_completion___block_invoke;
    v20[3] = &unk_1E6A43CC8;
    v12 = v10;
    v21 = v12;
    v13 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v20];
    v14 = [[CTXPCCreateEncryptedIdentityRequest alloc] initWithContext:v8 identity:v9];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__CoreTelephonyClient_Subscriber__createEncryptedIdentity_identity_completion___block_invoke_2;
    v18[3] = &unk_1E6A463D0;
    v19 = v12;
    [v13 sendRequest:v14 completionHandler:v18];

    v15 = v21;
  }

  else
  {
    v16 = CTLogClientXPC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) createEncryptedIdentity:identity:completion:];
    }

    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = [v17 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (v11)[2](v11, 0, v15);
  }
}

void __79__CoreTelephonyClient_Subscriber__createEncryptedIdentity_identity_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 identities];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)context:(id)a3 getPseudoIdentityFor:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [[CTXPCSubscriberGetPseudoIdentityRequest alloc] initWithContext:v8 service:v9];
    [(CoreTelephonyClient *)self asynchronousRequest:v11 completionWithString:v10];
  }

  else
  {
    v12 = CTLogClientXPC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) context:isProtectedIdentitySupported:error:];
    }

    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = [v13 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    v10[2](v10, 0, v14);
  }
}

- (id)context:(id)a3 getPseudoIdentityFor:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [[CTXPCSubscriberGetPseudoIdentityRequest alloc] initWithContext:v8 service:v9];
    v11 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v10 error:a5];

    goto LABEL_8;
  }

  v12 = CTLogClientXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [CoreTelephonyClient(Subscriber) context:isProtectedIdentitySupported:error:];
    if (a5)
    {
      goto LABEL_5;
    }
  }

  else if (a5)
  {
LABEL_5:
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = 0;
    *a5 = [v13 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)context:(id)a3 getEncryptedIdentity:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__11;
  v29 = __Block_byref_object_dispose__11;
  v30 = 0;
  if (!v9)
  {
    v14 = CTLogClientXPC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) createEncryptedIdentity:identity:completion:];
      if (!a5)
      {
        goto LABEL_9;
      }
    }

    else if (!a5)
    {
LABEL_9:
      v13 = v26[5];
      goto LABEL_10;
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    *a5 = [v15 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    goto LABEL_9;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__CoreTelephonyClient_Subscriber__context_getEncryptedIdentity_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v11 = [[CTXPCCreateEncryptedIdentityRequest alloc] initWithContext:v8 identity:v9];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__CoreTelephonyClient_Subscriber__context_getEncryptedIdentity_error___block_invoke_2;
  v17[3] = &unk_1E6A44B30;
  v17[4] = &v25;
  v17[5] = &v19;
  [v10 sendRequest:v11 completionHandler:v17];
  if (a5)
  {
    v12 = v20[5];
    if (v12)
    {
      *a5 = v12;
    }
  }

  v13 = v26[5];

  _Block_object_dispose(&v19, 8);
LABEL_10:
  _Block_object_dispose(&v25, 8);

  return v13;
}

void __70__CoreTelephonyClient_Subscriber__context_getEncryptedIdentity_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v15;
    v8 = v15;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v15;
  }

  v10 = [v9 identities];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (void)evaluateMobileSubscriberIdentity:(id)a3 identity:(id)a4 completion:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [CTXPCSubscriberEvaluateIdentityDataRequest alloc];
    v11 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v15 = [(CTXPCSubscriberEvaluateIdentityDataRequest *)v10 initWithContext:v18 identityData:v12];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    v13 = [CTXPCSubscriberEvaluateIdentityStringRequest alloc];
    v14 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    v15 = [(CTXPCSubscriberEvaluateIdentityStringRequest *)v13 initWithContext:v18 identityString:v12];
  }

  v16 = v15;

  if (v16)
  {
    [(CoreTelephonyClient *)self asynchronousRequest:v16 completion:v9];
    goto LABEL_14;
  }

LABEL_13:
  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  v9[2](v9, v17);

  v16 = 0;
LABEL_14:
}

- (id)context:(id)a3 evaluateMobileSubscriberIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [CTXPCSubscriberEvaluateIdentityDataRequest alloc];
    v9 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v13 = [(CTXPCSubscriberEvaluateIdentityDataRequest *)v8 initWithContext:v6 identityData:v10];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    v11 = [CTXPCSubscriberEvaluateIdentityStringRequest alloc];
    v12 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }

    v13 = [(CTXPCSubscriberEvaluateIdentityStringRequest *)v11 initWithContext:v6 identityString:v10];
  }

  v14 = v13;

  if (v14)
  {
    v17 = 0;
    [(CoreTelephonyClient *)self synchronousRequest:v14 error:&v17];
    v15 = v17;

    goto LABEL_14;
  }

LABEL_13:
  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
LABEL_14:

  return v15;
}

- (void)copyMobileSubscriberCountryCode:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberCountryCodeRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:v6];
}

- (id)copyMobileSubscriberCountryCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberCountryCodeRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

  return v8;
}

- (id)copyMobileSubscriberIsoCountryCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v9 = CTLogClientXPC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) copyMobileSubscriberIsoCountryCode:error:];
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else if (a4)
    {
LABEL_5:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *a4 = v8 = 0;
      goto LABEL_8;
    }

    v8 = 0;
    goto LABEL_8;
  }

  v7 = [[CTXPCConvertCountryCodeToISORequest alloc] initWithMcc:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

LABEL_8:
  return v8;
}

- (id)copyMobileSubscriberIsoSubregionCode:(id)a3 MNC:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || !v9)
  {
    v13 = CTLogClientXPC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) copyMobileSubscriberIsoSubregionCode:MNC:error:];
      if (a5)
      {
        goto LABEL_6;
      }
    }

    else if (a5)
    {
LABEL_6:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *a5 = v12 = 0;
      goto LABEL_9;
    }

    v12 = 0;
    goto LABEL_9;
  }

  v11 = [[CTXPCMobileSubscriberISOSubregionCodeRequest alloc] initWithMcc:v8 mnc:v9];
  v12 = [(CoreTelephonyClient *)self synchronousRequestWithArrayResult:v11 error:a5];

LABEL_9:
  return v12;
}

- (id)getSimHardwareInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__11;
  v24 = __Block_byref_object_dispose__11;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__CoreTelephonyClient_Subscriber__getSimHardwareInfo_error___block_invoke;
  v13[3] = &unk_1E6A43BB0;
  v13[4] = &v14;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v13];
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimHardwareInfoRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__CoreTelephonyClient_Subscriber__getSimHardwareInfo_error___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v20;
  v12[5] = &v14;
  [v7 sendRequest:v8 completionHandler:v12];
  if (a4)
  {
    v9 = v15[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __60__CoreTelephonyClient_Subscriber__getSimHardwareInfo_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v15;
    v8 = v15;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v15;
  }

  v10 = [v9 hardwareInfo];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (int64_t)isEsimFor:(id)a3 error:(id *)a4
{
  v4 = [(CoreTelephonyClient *)self getSimHardwareInfo:a3 error:a4];
  if ([v4 hardwareType] == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = [v4 hardwareType] != 0;
  }

  return v5;
}

- (void)getMobileSubscriberHomeCountryList:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberHomeCountryListRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithArray:v6];
}

- (id)getMobileSubscriberHomeCountryList:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberHomeCountryListRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithArrayResult:v7 error:a4];

  return v8;
}

- (void)copyLastKnownMobileSubscriberCountryCode:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCLastKnownMobileSubscriberCountryCodeRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:v6];
}

- (id)copyLastKnownMobileSubscriberCountryCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCLastKnownMobileSubscriberCountryCodeRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

  return v8;
}

- (void)copyMobileSubscriberNetworkCode:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberNetworkCodeRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:v6];
}

- (id)copyMobileSubscriberNetworkCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberNetworkCodeRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

  return v8;
}

- (void)copyGid1:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberGID1Request alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:v6];
}

- (id)copyGid1:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberGID1Request alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

  return v8;
}

- (void)copyGid2:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberGID2Request alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:v6];
}

- (id)copyGid2:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberGID2Request alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

  return v8;
}

- (id)shouldAllowSimLockFor:(id)a3
{
  v4 = a3;
  v5 = [(CTXPCSubscriptionContextRequest *)[CTXPCAllowSimLockRequest alloc] initWithContext:v4];
  v6 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v5 error:0];

  return v6;
}

- (id)shouldAllowSimLockFor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCAllowSimLockRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v7 error:a4];

  return v8;
}

- (void)fetchSIMLockValue:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimLockStateRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithNumber:v6];
}

- (id)fetchSIMLockValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimLockStateRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v7 error:a4];

  return v8;
}

- (void)unlockPIN:(id)a3 pin:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [[CTXPCUnlockPINRequest alloc] initWithContext:v8 pin:v9];
    [(CoreTelephonyClient *)self asynchronousRequest:v11 completion:v10];
  }

  else
  {
    v12 = CTLogClientXPC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) saveSIMLockValue:enabled:pin:completion:];
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    v10[2](v10, v13);
  }
}

- (void)unlockPIN:(id)a3 pin:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v11 = CTLogClientXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) saveSIMLockValue:enabled:pin:completion:];
      if (!a5)
      {
        goto LABEL_6;
      }
    }

    else if (!a5)
    {
      goto LABEL_6;
    }

    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    goto LABEL_6;
  }

  v10 = [[CTXPCUnlockPINRequest alloc] initWithContext:v8 pin:v9];
  [(CoreTelephonyClient *)self synchronousRequest:v10 error:a5];

LABEL_6:
}

- (void)unlockPUK:(id)a3 puk:(id)a4 newPin:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11 && v12)
  {
    v14 = [[CTXPCUnblockPUKRequest alloc] initWithContext:v10 puk:v11 pin:v12];
    [(CoreTelephonyClient *)self asynchronousRequest:v14 completion:v13];
  }

  else
  {
    v15 = CTLogClientXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) unlockPUK:puk:newPin:completion:];
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    v13[2](v13, v16);
  }
}

- (void)unlockPUK:(id)a3 puk:(id)a4 newPin:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v11 || !v12)
  {
    v15 = CTLogClientXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) unlockPUK:puk:newPin:completion:];
      if (!a6)
      {
        goto LABEL_7;
      }
    }

    else if (!a6)
    {
      goto LABEL_7;
    }

    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    goto LABEL_7;
  }

  v14 = [[CTXPCUnblockPUKRequest alloc] initWithContext:v10 puk:v11 pin:v12];
  [(CoreTelephonyClient *)self synchronousRequest:v14 error:a6];

LABEL_7:
}

- (void)changePIN:(id)a3 oldPin:(id)a4 newPin:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11 && v12)
  {
    v14 = [[CTXPCChangePINRequest alloc] initWithContext:v10 currentPin:v11 updatedPin:v12];
    [(CoreTelephonyClient *)self asynchronousRequest:v14 completion:v13];
  }

  else
  {
    v15 = CTLogClientXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) saveSIMLockValue:enabled:pin:completion:];
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    v13[2](v13, v16);
  }
}

- (void)changePIN:(id)a3 oldPin:(id)a4 newPin:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v11 || !v12)
  {
    v15 = CTLogClientXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) saveSIMLockValue:enabled:pin:completion:];
      if (!a6)
      {
        goto LABEL_7;
      }
    }

    else if (!a6)
    {
      goto LABEL_7;
    }

    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    goto LABEL_7;
  }

  v14 = [[CTXPCChangePINRequest alloc] initWithContext:v10 currentPin:v11 updatedPin:v12];
  [(CoreTelephonyClient *)self synchronousRequest:v14 error:a6];

LABEL_7:
}

- (void)getRemainingPINAttemptCount:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCRemainingPINRetriesRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithNumber:v6];
}

- (id)getRemainingPINAttemptCount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCRemainingPINRetriesRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v7 error:a4];

  return v8;
}

- (void)getRemainingPUKAttemptCount:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCRemainingPUKRetriesRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithNumber:v6];
}

- (id)getRemainingPUKAttemptCount:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCRemainingPUKRetriesRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v7 error:a4];

  return v8;
}

- (void)promptForSIMUnlock:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCPromptForSIMUnlockRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completion:v6];
}

- (void)SIMUnlockProcedureDidComplete
{
  v3 = objc_alloc_init(CTXPCPINOperationCompletedRequest);
  [CoreTelephonyClient asynchronousRequest:"asynchronousRequest:completion:" completion:?];
}

- (void)getSimLabel:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__CoreTelephonyClient_Subscriber__getSimLabel_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSimLabelRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__CoreTelephonyClient_Subscriber__getSimLabel_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __58__CoreTelephonyClient_Subscriber__getSimLabel_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 simLabel];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)getSimLabel:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__11;
  v24 = __Block_byref_object_dispose__11;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__CoreTelephonyClient_Subscriber__getSimLabel_error___block_invoke;
  v13[3] = &unk_1E6A43BB0;
  v13[4] = &v14;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v13];
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSimLabelRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__CoreTelephonyClient_Subscriber__getSimLabel_error___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v20;
  v12[5] = &v14;
  [v7 sendRequest:v8 completionHandler:v12];
  if (a4)
  {
    v9 = v15[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __53__CoreTelephonyClient_Subscriber__getSimLabel_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v15;
    v8 = v15;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v15;
  }

  v10 = [v9 simLabel];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (void)getShortLabel:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCShortLabelRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:v6];
}

- (id)getShortLabel:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCShortLabelRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

  return v8;
}

- (void)getSubscriptionUserFacingName:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSubscriptionNameRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:v6];
}

- (id)getSubscriptionUserFacingName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSubscriptionNameRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

  return v8;
}

- (void)copyLabel:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSubscriptionNameRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:v6];
}

- (id)copyLabel:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSubscriptionNameRequest alloc] initWithContext:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:a4];

  return v8;
}

- (void)setLabel:(id)a3 label:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = [[CTXPCSetSimLabelRequest alloc] initWithContext:v8 label:v9];
    [(CoreTelephonyClient *)self asynchronousRequest:v11 completion:v10];
  }

  else
  {
    v12 = CTLogClientXPC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) setLabel:label:completion:];
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    v10[2](v10, v13);
  }
}

- (void)setLabel:(id)a3 label:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v11 = CTLogClientXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) setLabel:label:completion:];
      if (!a5)
      {
        goto LABEL_6;
      }
    }

    else if (!a5)
    {
      goto LABEL_6;
    }

    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    goto LABEL_6;
  }

  v10 = [[CTXPCSetSimLabelRequest alloc] initWithContext:v8 label:v9];
  [(CoreTelephonyClient *)self synchronousRequest:v10 error:a5];

LABEL_6:
}

- (void)setDefaultVoice:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSetDefaultVoiceRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completion:v6];
}

- (void)setDefaultVoice:(id)a3 error:(id *)a4
{
  v7 = a3;
  v6 = [(CTXPCSubscriptionContextRequest *)[CTXPCSetDefaultVoiceRequest alloc] initWithContext:v7];
  [(CoreTelephonyClient *)self synchronousRequest:v6 error:a4];
}

- (void)setActiveUserDataSelection:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSetDefaultDataRequest alloc] initWithContext:v8];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completion:v6];
}

- (void)setActiveUserDataSelection:(id)a3 error:(id *)a4
{
  v7 = a3;
  v6 = [(CTXPCSubscriptionContextRequest *)[CTXPCSetDefaultDataRequest alloc] initWithContext:v7];
  [(CoreTelephonyClient *)self synchronousRequest:v6 error:a4];
}

- (void)generateAuthenticationInfoUsingSim:(id)a3 authParams:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __92__CoreTelephonyClient_Subscriber__generateAuthenticationInfoUsingSim_authParams_completion___block_invoke;
    v19[3] = &unk_1E6A43CC8;
    v12 = v10;
    v20 = v12;
    v13 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v19];
    v14 = [[CTXPCSubscriberAuthenticateRequest alloc] initWithContext:v8 authInfo:v9];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __92__CoreTelephonyClient_Subscriber__generateAuthenticationInfoUsingSim_authParams_completion___block_invoke_2;
    v17[3] = &unk_1E6A463D0;
    v18 = v12;
    [v13 sendRequest:v14 completionHandler:v17];

    v15 = v20;
  }

  else
  {
    v16 = CTLogClientXPC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) generateAuthenticationInfoUsingSim:authParams:completion:];
    }

    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (v11)[2](v11, 0, v15);
  }
}

void __92__CoreTelephonyClient_Subscriber__generateAuthenticationInfoUsingSim_authParams_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 authInfo];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)authenticate:(id)a3 request:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__CoreTelephonyClient_Subscriber__authenticate_request_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = v10;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 authenticate:v8 request:v9 completion:v11];
}

- (id)getUserAuthToken:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__11;
  v24 = __Block_byref_object_dispose__11;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __58__CoreTelephonyClient_Subscriber__getUserAuthToken_error___block_invoke;
  v19[3] = &unk_1E6A43BB0;
  v19[4] = &v20;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v19];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCUserAuthTokenRequest alloc] initWithDescriptor:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__CoreTelephonyClient_Subscriber__getUserAuthToken_error___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v13;
  v12[5] = &v20;
  [v7 sendRequest:v8 completionHandler:v12];
  if (a4)
  {
    v9 = v21[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = v14[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __58__CoreTelephonyClient_Subscriber__getUserAuthToken_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v15;
    v8 = v15;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v15;
  }

  v10 = [v9 token];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (void)refreshUserAuthToken:(id)a3 error:(id *)a4
{
  v7 = a3;
  v6 = [(CTXPCSubscriptionContextRequest *)[CTXPCRefreshCarrierTokenRequest alloc] initWithDescriptor:v7];
  [(CoreTelephonyClient *)self synchronousRequest:v6 error:a4];
}

- (id)getUserDefaultVoiceSubscriptionContext:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__CoreTelephonyClient_Subscriber__getUserDefaultVoiceSubscriptionContext___block_invoke;
  v10[3] = &unk_1E6A43BB0;
  v10[4] = &v11;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v10];
  v5 = objc_alloc_init(CTXPCGetDefaultVoiceRequest);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__CoreTelephonyClient_Subscriber__getUserDefaultVoiceSubscriptionContext___block_invoke_2;
  v9[3] = &unk_1E6A44B30;
  v9[4] = &v17;
  v9[5] = &v11;
  [v4 sendRequest:v5 completionHandler:v9];
  if (a3)
  {
    v6 = v12[5];
    if (v6)
    {
      *a3 = v6;
    }
  }

  v7 = v18[5];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __74__CoreTelephonyClient_Subscriber__getUserDefaultVoiceSubscriptionContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v15;
    v8 = v15;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v15;
  }

  v10 = [v9 context];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (id)getLastKnownSimDeactivationInfoFor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__11;
  v24 = __Block_byref_object_dispose__11;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CoreTelephonyClient_Subscriber__getLastKnownSimDeactivationInfoFor_error___block_invoke;
  v13[3] = &unk_1E6A43BB0;
  v13[4] = &v14;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v13];
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSimDeactivationInfoRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__CoreTelephonyClient_Subscriber__getLastKnownSimDeactivationInfoFor_error___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v20;
  v12[5] = &v14;
  [v7 sendRequest:v8 completionHandler:v12];
  if (a4)
  {
    v9 = v15[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __76__CoreTelephonyClient_Subscriber__getLastKnownSimDeactivationInfoFor_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v15;
    v8 = v15;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v15;
  }

  v10 = [v9 info];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (id)copyMobileSubscriberIso3CountryCode:(id)a3 MNC:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 || !v9)
  {
    v13 = CTLogClientXPC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) copyMobileSubscriberIsoSubregionCode:MNC:error:];
      if (a5)
      {
        goto LABEL_6;
      }
    }

    else if (a5)
    {
LABEL_6:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *a5 = v12 = 0;
      goto LABEL_9;
    }

    v12 = 0;
    goto LABEL_9;
  }

  v11 = [[CTXPCConvertMCCMNCToISORequest alloc] initWithMcc:v8 mnc:v9];
  v12 = [(CoreTelephonyClient *)self synchronousRequestWithArrayResult:v11 error:a5];

LABEL_9:
  return v12;
}

- (id)checkEmbeddedSimHealthWithError:(id *)a3
{
  v5 = objc_alloc_init(CTXPCEmbeddedSIMHealthRequest);
  v6 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v5 error:a3];

  return v6;
}

- (BOOL)supportsEmbeddedSIM
{
  v3 = objc_alloc_init(CTXPCSupportEmbeddedSimRequest);
  v4 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v3 error:0];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)supportsLimitedUseSIMsWithError:(id *)a3
{
  v5 = objc_alloc_init(CTXPCSupportsLimitedUseSIMsRequest);
  v6 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v5 error:a3];

  return v6;
}

- (id)copyMccOrPlmnsListForIso3CountryCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v9 = CTLogClientXPC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) copyMccOrPlmnsListForIso3CountryCode:error:];
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else if (a4)
    {
LABEL_5:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *a4 = v8 = 0;
      goto LABEL_8;
    }

    v8 = 0;
    goto LABEL_8;
  }

  v7 = [[CTXPCConvertISOToMCCMNCRequest alloc] initWithIso:v6];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithArrayResult:v7 error:a4];

LABEL_8:
  return v8;
}

- (id)isAnySimReadyWithError:(id *)a3
{
  v5 = objc_alloc_init(CTXPCIsAnySimReadyRequest);
  v6 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v5 error:a3];

  return v6;
}

- (id)isSimMatching:(id)a3 carrierDescriptors:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [[CTXPCIsSimMatchingRequest alloc] initWithDescriptor:v8 carrierDescriptors:v9];
    v12 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v11 error:a5];

    goto LABEL_8;
  }

  v13 = CTLogClientXPC();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [CoreTelephonyClient(Subscriber) isSimMatching:carrierDescriptors:error:];
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a5)
  {
LABEL_6:
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_7:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:0];
LABEL_8:

  return v12;
}

- (void)synchronousRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__CoreTelephonyClient_Subscriber__synchronousRequest_error___block_invoke;
  v10[3] = &unk_1E6A43BB0;
  v10[4] = &v11;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__CoreTelephonyClient_Subscriber__synchronousRequest_error___block_invoke_2;
  v9[3] = &unk_1E6A44B08;
  v9[4] = &v11;
  [v7 sendRequest:v6 completionHandler:v9];
  if (a4)
  {
    v8 = v12[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (id)synchronousRequestWithStringResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__CoreTelephonyClient_Subscriber__synchronousRequestWithStringResult_error___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CoreTelephonyClient_Subscriber__synchronousRequestWithStringResult_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 sendRequest:v6 completionHandler:v11];
  if (a4)
  {
    v8 = v14[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  v9 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __76__CoreTelephonyClient_Subscriber__synchronousRequestWithStringResult_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v15;
    v8 = v15;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v15;
  }

  v10 = [v9 result];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (id)synchronousRequestWithArrayResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__CoreTelephonyClient_Subscriber__synchronousRequestWithArrayResult_error___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CoreTelephonyClient_Subscriber__synchronousRequestWithArrayResult_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 sendRequest:v6 completionHandler:v11];
  if (a4)
  {
    v8 = v14[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  v9 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __75__CoreTelephonyClient_Subscriber__synchronousRequestWithArrayResult_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v15;
    v8 = v15;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v15;
  }

  v10 = [v9 result];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (id)synchronousRequestWithNumberResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__11;
  v23 = __Block_byref_object_dispose__11;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__CoreTelephonyClient_Subscriber__synchronousRequestWithNumberResult_error___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CoreTelephonyClient_Subscriber__synchronousRequestWithNumberResult_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 sendRequest:v6 completionHandler:v11];
  if (a4)
  {
    v8 = v14[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  v9 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __76__CoreTelephonyClient_Subscriber__synchronousRequestWithNumberResult_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v15;
    v8 = v15;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v15;
  }

  v10 = [v9 result];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (void)asynchronousRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__CoreTelephonyClient_Subscriber__asynchronousRequest_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v8 = v7;
  v14 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CoreTelephonyClient_Subscriber__asynchronousRequest_completion___block_invoke_2;
  v11[3] = &unk_1E6A463D0;
  v10 = v8;
  v12 = v10;
  [v9 sendRequest:v6 completionHandler:v11];
}

void __66__CoreTelephonyClient_Subscriber__asynchronousRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __66__CoreTelephonyClient_Subscriber__asynchronousRequest_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (void)asynchronousRequest:(id)a3 completionWithString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithString___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v8 = v7;
  v14 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithString___block_invoke_2;
  v11[3] = &unk_1E6A463D0;
  v10 = v8;
  v12 = v10;
  [v9 sendRequest:v6 completionHandler:v11];
}

void __76__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithString___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 result];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)asynchronousRequest:(id)a3 completionWithNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithNumber___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v8 = v7;
  v14 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithNumber___block_invoke_2;
  v11[3] = &unk_1E6A463D0;
  v10 = v8;
  v12 = v10;
  [v9 sendRequest:v6 completionHandler:v11];
}

void __76__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithNumber___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 result];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)asynchronousRequest:(id)a3 completionWithArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithArray___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v8 = v7;
  v14 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithArray___block_invoke_2;
  v11[3] = &unk_1E6A463D0;
  v10 = v8;
  v12 = v10;
  [v9 sendRequest:v6 completionHandler:v11];
}

void __75__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithArray___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 result];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)getSweetgumCapabilities:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CoreTelephonyClient_CarrierServices__getSweetgumCapabilities_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSweetgumCapabilities:v6 completion:v8];
}

- (void)getSweetgumUserConsentInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__CoreTelephonyClient_CarrierServices__getSweetgumUserConsentInfo_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSweetgumUserConsentInfo:v6 completion:v8];
}

- (void)getSweetgumUsage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CoreTelephonyClient_CarrierServices__getSweetgumUsage_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSweetgumUsage:v6 completion:v8];
}

- (void)refreshSweetgumUsage:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v6];
  [v7 refreshSweetgumUsage:v8 completion:v6];
}

- (void)getSweetgumPlans:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CoreTelephonyClient_CarrierServices__getSweetgumPlans_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSweetgumPlans:v6 completion:v8];
}

- (void)refreshSweetgumPlans:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v6];
  [v7 refreshSweetgumPlans:v8 completion:v6];
}

- (void)getSweetgumApps:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CoreTelephonyClient_CarrierServices__getSweetgumApps_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSweetgumApps:v6 completion:v8];
}

- (void)refreshSweetgumApps:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v6];
  [v7 refreshSweetgumApps:v8 completion:v6];
}

- (void)refreshSweetgumAll:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v6];
  [v7 refreshSweetgumAll:v8 completion:v6];
}

- (void)getSweetgumDataPlanMetrics:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__CoreTelephonyClient_CarrierServices__getSweetgumDataPlanMetrics_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSweetgumDataPlanMetrics:v6 completion:v8];
}

- (void)purchaseSweetgumPlan:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v6];
  [v7 purchaseSweetgumPlan:v8 completion:v6];
}

- (void)isPrivateNetworkContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkContext_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isPrivateNetworkContext:v6 completion:v8];
}

- (id)isPrivateNetworkContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkContext_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__12;
  v15 = __Block_byref_object_dispose__12;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkContext_error___block_invoke_2;
  v10[3] = &unk_1E6A45228;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 isPrivateNetworkContext:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __69__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getPrivateNetworkCapabilitiesForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__CoreTelephonyClient_PrivateNetwork__getPrivateNetworkCapabilitiesForContext_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getPrivateNetworkCapabilitiesForContext:v6 completion:v8];
}

- (id)getPrivateNetworkCapabilitiesForContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__CoreTelephonyClient_PrivateNetwork__getPrivateNetworkCapabilitiesForContext_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__12;
  v15 = __Block_byref_object_dispose__12;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__CoreTelephonyClient_PrivateNetwork__getPrivateNetworkCapabilitiesForContext_error___block_invoke_2;
  v10[3] = &unk_1E6A464A0;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getPrivateNetworkCapabilitiesForContext:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __85__CoreTelephonyClient_PrivateNetwork__getPrivateNetworkCapabilitiesForContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)isPrivateNetworkSIM:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkSIM_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isPrivateNetworkSIM:v6 completion:v8];
}

- (BOOL)isPrivateNetworkSIM:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__12;
  v20 = __Block_byref_object_dispose__12;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkSIM_error___block_invoke;
  v15[3] = &unk_1E6A43BB0;
  v15[4] = &v16;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkSIM_error___block_invoke_2;
  v10[3] = &unk_1E6A43D88;
  v10[4] = &v16;
  v10[5] = &v11;
  [v7 isPrivateNetworkSIM:v6 completion:v10];
  if (a4)
  {
    *a4 = v17[5];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __65__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkSIM_error___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)isPrivateNetworkEvaluationNeeded:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__12;
  v17 = __Block_byref_object_dispose__12;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkEvaluationNeeded___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkEvaluationNeeded___block_invoke_2;
  v7[3] = &unk_1E6A43D88;
  v7[4] = &v13;
  v7[5] = &v8;
  [v4 isPrivateNetworkEvaluationNeeded:v7];
  if (a3)
  {
    *a3 = v14[5];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v13, 8);
  return v5;
}

void __72__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkEvaluationNeeded___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)isPrivateNetworkPreferredOverWifi:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkPreferredOverWifi_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isPrivateNetworkPreferredOverWifi:v6 completion:v8];
}

- (BOOL)updateGeofenceProfile:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CoreTelephonyClient_PrivateNetwork__updateGeofenceProfile___block_invoke;
  v9[3] = &unk_1E6A43BB0;
  v9[4] = &v10;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__CoreTelephonyClient_PrivateNetwork__updateGeofenceProfile___block_invoke_2;
  v8[3] = &unk_1E6A464C8;
  v8[4] = &v10;
  [v5 updateGeofenceProfile:v4 completion:v8];
  v6 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __61__CoreTelephonyClient_PrivateNetwork__updateGeofenceProfile___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)removeGeofenceProfile
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CoreTelephonyClient_PrivateNetwork__removeGeofenceProfile__block_invoke;
  v6[3] = &unk_1E6A43BB0;
  v6[4] = &v7;
  v2 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__CoreTelephonyClient_PrivateNetwork__removeGeofenceProfile__block_invoke_2;
  v5[3] = &unk_1E6A464C8;
  v5[4] = &v7;
  [v2 removeGeofenceProfile:v5];
  v3 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __60__CoreTelephonyClient_PrivateNetwork__removeGeofenceProfile__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

- (void)deleteHiddenSims:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CoreTelephonyClient_PrivateNetwork__deleteHiddenSims___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = v4;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 deleteHiddenSims:v5];
}

- (id)installPrivateNetworkProfile:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__12;
  v14 = __Block_byref_object_dispose__12;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__CoreTelephonyClient_PrivateNetwork__installPrivateNetworkProfile___block_invoke;
  v9[3] = &unk_1E6A43BB0;
  v9[4] = &v10;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__CoreTelephonyClient_PrivateNetwork__installPrivateNetworkProfile___block_invoke_2;
  v8[3] = &unk_1E6A43BB0;
  v8[4] = &v10;
  [v5 installPrivateNetworkProfile:v4 completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

void __68__CoreTelephonyClient_PrivateNetwork__installPrivateNetworkProfile___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (id)removePrivateNetworkProfile:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__12;
  v14 = __Block_byref_object_dispose__12;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CoreTelephonyClient_PrivateNetwork__removePrivateNetworkProfile___block_invoke;
  v9[3] = &unk_1E6A43BB0;
  v9[4] = &v10;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__CoreTelephonyClient_PrivateNetwork__removePrivateNetworkProfile___block_invoke_2;
  v8[3] = &unk_1E6A43BB0;
  v8[4] = &v10;
  [v5 removePrivateNetworkProfile:v4 completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

void __67__CoreTelephonyClient_PrivateNetwork__removePrivateNetworkProfile___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __83__CoreTelephonyClient_PrivateNetwork__updatePrivateNetworkProfile_setProfileAside___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (id)getPrivateNetworkSimInfoForContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__CoreTelephonyClient_PrivateNetwork__getPrivateNetworkSimInfoForContext_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__12;
  v15 = __Block_byref_object_dispose__12;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__CoreTelephonyClient_PrivateNetwork__getPrivateNetworkSimInfoForContext_error___block_invoke_2;
  v10[3] = &unk_1E6A464F0;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getPrivateNetworkSimInfoForContext:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __80__CoreTelephonyClient_PrivateNetwork__getPrivateNetworkSimInfoForContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getRemoteDevicesForTransferOrError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__CoreTelephonyClient_RemotePlan__getRemoteDevicesForTransferOrError___block_invoke;
  v15[3] = &unk_1E6A43BB0;
  v15[4] = &v16;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__13;
  v13 = __Block_byref_object_dispose__13;
  v14 = 0;
  v5 = objc_alloc_init(CTXPCGetRemoteDevicesForTransferRequest);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__CoreTelephonyClient_RemotePlan__getRemoteDevicesForTransferOrError___block_invoke_2;
  v8[3] = &unk_1E6A44B30;
  v8[4] = &v16;
  v8[5] = &v9;
  [v4 sendRequest:v5 completionHandler:v8];

  if (a3)
  {
    *a3 = v17[5];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __70__CoreTelephonyClient_RemotePlan__getRemoteDevicesForTransferOrError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  v10 = [v9 devices];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)getRemoteDeviceOfType:(unint64_t)a3 withEID:(id)a4 error:(id *)a5
{
  v5 = [(CoreTelephonyClient *)self getRemoteDeviceForTransferWithEID:a4 error:a5];

  return v5;
}

- (id)getRemoteDeviceForTransferWithEID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__13;
    v23 = __Block_byref_object_dispose__13;
    v24 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__CoreTelephonyClient_RemotePlan__getRemoteDeviceForTransferWithEID_error___block_invoke;
    v18[3] = &unk_1E6A43BB0;
    v18[4] = &v19;
    v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__13;
    v16 = __Block_byref_object_dispose__13;
    v17 = 0;
    v8 = [[CTXPCGetRemoteDeviceForTransferRequest alloc] initWithEID:v6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__CoreTelephonyClient_RemotePlan__getRemoteDeviceForTransferWithEID_error___block_invoke_2;
    v11[3] = &unk_1E6A44B30;
    v11[4] = &v19;
    v11[5] = &v12;
    [v7 sendRequest:v8 completionHandler:v11];

    if (a4)
    {
      *a4 = v20[5];
    }

    v9 = v13[5];
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v19, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __75__CoreTelephonyClient_RemotePlan__getRemoteDeviceForTransferWithEID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  v10 = [v9 device];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)transferRemotePlan:(id)a3 fromDevice:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__CoreTelephonyClient_RemotePlan__transferRemotePlan_fromDevice_completion___block_invoke;
    v18[3] = &unk_1E6A43CC8;
    v12 = v10;
    v19 = v12;
    v13 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v18];
    v14 = [[CTXPCTransferRemotePlanFromDeviceRequest alloc] initWithPlanID:v8 fromDevice:v9];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__CoreTelephonyClient_RemotePlan__transferRemotePlan_fromDevice_completion___block_invoke_2;
    v16[3] = &unk_1E6A463D0;
    v17 = v12;
    [v13 sendRequest:v14 completionHandler:v16];
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (v11)[2](v11, 0, v15);
  }
}

void __76__CoreTelephonyClient_RemotePlan__transferRemotePlan_fromDevice_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v11;
    v9 = v11;
    v10 = v8;
  }

  else
  {
    v10 = 0;
    v9 = v11;
  }

  (*(v7 + 16))(v7, [v10 result], v6);
}

- (void)transferRemotePlan:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__CoreTelephonyClient_RemotePlan__transferRemotePlan_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetWebsheetInfoForTransferRemotePlanRequest alloc] initWithPlan:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CoreTelephonyClient_RemotePlan__transferRemotePlan_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __65__CoreTelephonyClient_RemotePlan__transferRemotePlan_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  v10 = *(a1 + 32);
  v11 = [v9 urlString];
  v12 = [v9 postdata];
  (*(v10 + 16))(v10, v11, v12, v6);
}

- (void)getRemotePlanManageAccountInfoFor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__block_literal_global_4;
  }

  if (v6)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__CoreTelephonyClient_RemotePlan__getRemotePlanManageAccountInfoFor_completion___block_invoke_2;
    v15[3] = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v15];
    v11 = [[CTXPCGetRemotePlanManageAccountInfoRequest alloc] initWithIccid:v6];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__CoreTelephonyClient_RemotePlan__getRemotePlanManageAccountInfoFor_completion___block_invoke_3;
    v13[3] = &unk_1E6A463D0;
    v14 = v9;
    [v10 sendRequest:v11 completionHandler:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v8 + 2))(v8, 0, 0, v12);
  }
}

void __80__CoreTelephonyClient_RemotePlan__getRemotePlanManageAccountInfoFor_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  v10 = *(a1 + 32);
  v11 = [v9 url];
  v12 = [v9 postdata];
  (*(v10 + 16))(v10, v11, v12, v6);
}

- (void)remotePlanSignupInfoFor:(id)a3 userConsent:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &__block_literal_global_9_0;
  }

  if (v8)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__CoreTelephonyClient_RemotePlan__remotePlanSignupInfoFor_userConsent_completion___block_invoke_2;
    v17[3] = &unk_1E6A43CC8;
    v11 = v10;
    v18 = v11;
    v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v17];
    v13 = [[CTXPCGetRemotePlanSignupInfoRequest alloc] initWithContext:v8 userConsent:a4];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__CoreTelephonyClient_RemotePlan__remotePlanSignupInfoFor_userConsent_completion___block_invoke_3;
    v15[3] = &unk_1E6A463D0;
    v16 = v11;
    [v12 sendRequest:v13 completionHandler:v15];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v10 + 2))(v10, 0, 0, v14);
  }
}

void __82__CoreTelephonyClient_RemotePlan__remotePlanSignupInfoFor_userConsent_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  v10 = *(a1 + 32);
  v11 = [v9 url];
  v12 = [v9 postdata];
  (*(v10 + 16))(v10, v11, v12, v6);
}

- (id)getTransportKeysToUpdate:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__CoreTelephonyClient_Provisioning__getTransportKeysToUpdate___block_invoke;
  v8[3] = &unk_1E6A441F0;
  v8[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CoreTelephonyClient_Provisioning__getTransportKeysToUpdate___block_invoke_2;
  v7[3] = &unk_1E6A46EC8;
  v7[4] = &v9;
  v7[5] = &v15;
  [v4 getTransportKeysToUpdate:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v10[5];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

void __62__CoreTelephonyClient_Provisioning__getTransportKeysToUpdate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)getTransportKeysToUpdateWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__CoreTelephonyClient_Provisioning__getTransportKeysToUpdateWithCompletion___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = v4;
  v5 = v4;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getTransportKeysToUpdate:v5];
}

- (id)forceRollAllTransportKeys
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__14;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__CoreTelephonyClient_Provisioning__forceRollAllTransportKeys__block_invoke;
  v6[3] = &unk_1E6A441F0;
  v6[4] = &v7;
  v2 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__CoreTelephonyClient_Provisioning__forceRollAllTransportKeys__block_invoke_2;
  v5[3] = &unk_1E6A441F0;
  v5[4] = &v7;
  [v2 forceRollAllTransportKeys:v5];
  v3 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v3;
}

- (id)getSatelliteMsgCfgToUpdate:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CoreTelephonyClient_Provisioning__getSatelliteMsgCfgToUpdate___block_invoke;
  v8[3] = &unk_1E6A441F0;
  v8[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__CoreTelephonyClient_Provisioning__getSatelliteMsgCfgToUpdate___block_invoke_2;
  v7[3] = &unk_1E6A46EF0;
  v7[4] = &v9;
  v7[5] = &v15;
  [v4 getSatelliteMsgCfgToUpdate:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v10[5];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

void __64__CoreTelephonyClient_Provisioning__getSatelliteMsgCfgToUpdate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)getSatelliteMsgCfgToUpdateWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__CoreTelephonyClient_Provisioning__getSatelliteMsgCfgToUpdateWithCompletion___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = v4;
  v5 = v4;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getSatelliteMsgCfgToUpdate:v5];
}

- (id)setSatelliteMsgCfgUpdated:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__CoreTelephonyClient_Provisioning__setSatelliteMsgCfgUpdated___block_invoke;
  v9[3] = &unk_1E6A441F0;
  v9[4] = &v10;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CoreTelephonyClient_Provisioning__setSatelliteMsgCfgUpdated___block_invoke_2;
  v8[3] = &unk_1E6A441F0;
  v8[4] = &v10;
  [v5 setSatelliteMsgCfgUpdated:v4 completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (BOOL)hasDedicatedBearerSupport
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:&__block_literal_global_5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__CoreTelephonyClient_Provisioning__hasDedicatedBearerSupport__block_invoke_2;
  v5[3] = &unk_1E6A46F18;
  v5[4] = &v6;
  [v2 hasDedicatedBearerSupport:v5];
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)addDedicatedBearer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14;
  v22 = __Block_byref_object_dispose__14;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CoreTelephonyClient_Provisioning__addDedicatedBearer_error___block_invoke;
  v11[3] = &unk_1E6A441F0;
  v11[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__CoreTelephonyClient_Provisioning__addDedicatedBearer_error___block_invoke_2;
  v10[3] = &unk_1E6A46F40;
  v10[4] = &v12;
  v10[5] = &v18;
  [v7 addDedicatedBearer:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __62__CoreTelephonyClient_Provisioning__addDedicatedBearer_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)removeDedicatedBearer:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14;
  v14 = __Block_byref_object_dispose__14;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__CoreTelephonyClient_Provisioning__removeDedicatedBearer___block_invoke;
  v9[3] = &unk_1E6A441F0;
  v9[4] = &v10;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__CoreTelephonyClient_Provisioning__removeDedicatedBearer___block_invoke_2;
  v8[3] = &unk_1E6A441F0;
  v8[4] = &v10;
  [v5 removeDedicatedBearer:v4 completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)removeAllDedicatedBearers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__14;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__CoreTelephonyClient_Provisioning__removeAllDedicatedBearers__block_invoke;
  v6[3] = &unk_1E6A441F0;
  v6[4] = &v7;
  v2 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__CoreTelephonyClient_Provisioning__removeAllDedicatedBearers__block_invoke_2;
  v5[3] = &unk_1E6A441F0;
  v5[4] = &v7;
  [v2 removeAllDedicatedBearers:v5];
  v3 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v3;
}

- (BOOL)isDedicatedBearerPresent:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__14;
  v20 = __Block_byref_object_dispose__14;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_Provisioning__isDedicatedBearerPresent_error___block_invoke;
  v11[3] = &unk_1E6A441F0;
  v11[4] = &v16;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CoreTelephonyClient_Provisioning__isDedicatedBearerPresent_error___block_invoke_2;
  v10[3] = &unk_1E6A44A90;
  v10[4] = &v12;
  v10[5] = &v16;
  [v7 isDedicatedBearerPresent:v6 completion:v10];
  if (a4)
  {
    *a4 = v17[5];
  }

  v8 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (id)getListOfPresentDedicatedBearers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  v2 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:&__block_literal_global_7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__CoreTelephonyClient_Provisioning__getListOfPresentDedicatedBearers__block_invoke_2;
  v5[3] = &unk_1E6A46F68;
  v5[4] = &v6;
  [v2 getListOfPresentDedicatedBearers:v5];
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)getQoSLinkCharacteristics:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14;
  v13 = __Block_byref_object_dispose__14;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CoreTelephonyClient_Provisioning__getQoSLinkCharacteristics___block_invoke;
  v8[3] = &unk_1E6A441F0;
  v8[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CoreTelephonyClient_Provisioning__getQoSLinkCharacteristics___block_invoke_2;
  v7[3] = &unk_1E6A46F90;
  v7[4] = &v9;
  v7[5] = &v15;
  [v4 getQoSLinkCharacteristics:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v10[5];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

void __63__CoreTelephonyClient_Provisioning__getQoSLinkCharacteristics___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)requestQoSLinkCharacteristics
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__14;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__CoreTelephonyClient_Provisioning__requestQoSLinkCharacteristics__block_invoke;
  v6[3] = &unk_1E6A441F0;
  v6[4] = &v7;
  v2 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__CoreTelephonyClient_Provisioning__requestQoSLinkCharacteristics__block_invoke_2;
  v5[3] = &unk_1E6A441F0;
  v5[4] = &v7;
  [v2 requestQoSLinkCharacteristics:v5];
  v3 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v3;
}

- (void)sendTaggedInfo:(id)a3 type:(unint64_t)a4 payload:(id)a5 completion:(id)a6
{
  v13 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v11];
  [v12 sendTaggedInfo:v13 type:a4 payload:v10 completion:v11];
}

- (void)isPNRSupported:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CoreTelephonyClient_PNR__isPNRSupported_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isPNRSupported:v6 completion:v8];
}

- (BOOL)isPNRSupported:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__15;
  v20 = __Block_byref_object_dispose__15;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__CoreTelephonyClient_PNR__isPNRSupported_outError___block_invoke;
  v15[3] = &unk_1E6A43BB0;
  v15[4] = &v16;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__CoreTelephonyClient_PNR__isPNRSupported_outError___block_invoke_2;
  v10[3] = &unk_1E6A43D88;
  v10[4] = &v16;
  v10[5] = &v11;
  [v7 isPNRSupported:v6 completion:v10];
  if (a4)
  {
    *a4 = v17[5];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __52__CoreTelephonyClient_PNR__isPNRSupported_outError___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)getPNRSupportStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CoreTelephonyClient_PNR__getPNRSupportStatus_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getPNRSupportStatus:v6 completion:v8];
}

- (id)getPNRSupportStatus:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__15;
  v22 = __Block_byref_object_dispose__15;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__CoreTelephonyClient_PNR__getPNRSupportStatus_outError___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__15;
  v15 = __Block_byref_object_dispose__15;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CoreTelephonyClient_PNR__getPNRSupportStatus_outError___block_invoke_2;
  v10[3] = &unk_1E6A47298;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getPNRSupportStatus:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __57__CoreTelephonyClient_PNR__getPNRSupportStatus_outError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)issuePNRRequest:(id)a3 pnrReqType:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__CoreTelephonyClient_PNR__issuePNRRequest_pnrReqType_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = v10;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 issuePNRRequest:v8 pnrReqType:v9 completion:v11];
}

- (void)getPNRContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__CoreTelephonyClient_PNR__getPNRContext_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getPNRContext:v6 completion:v8];
}

- (id)getPNRContext:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__15;
  v22 = __Block_byref_object_dispose__15;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__CoreTelephonyClient_PNR__getPNRContext_outError___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__15;
  v15 = __Block_byref_object_dispose__15;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__CoreTelephonyClient_PNR__getPNRContext_outError___block_invoke_2;
  v10[3] = &unk_1E6A472C0;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getPNRContext:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __51__CoreTelephonyClient_PNR__getPNRContext_outError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)isPhoneNumberCredentialValid:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__15;
  v20 = __Block_byref_object_dispose__15;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__CoreTelephonyClient_PNR__isPhoneNumberCredentialValid_outError___block_invoke;
  v15[3] = &unk_1E6A43BB0;
  v15[4] = &v16;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__CoreTelephonyClient_PNR__isPhoneNumberCredentialValid_outError___block_invoke_2;
  v10[3] = &unk_1E6A43D88;
  v10[4] = &v11;
  v10[5] = &v16;
  [v7 isPhoneNumberCredentialValid:v6 completion:v10];
  if (a4)
  {
    *a4 = v17[5];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

- (void)context:(id)a3 getPhoneNumberSignatureWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__CoreTelephonyClient_PNR__context_getPhoneNumberSignatureWithCompletion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 context:v6 getPhoneNumberSignatureWithCompletion:v8];
}

- (id)context:(id)a3 getPhoneNumberSignature:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__15;
  v22 = __Block_byref_object_dispose__15;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__CoreTelephonyClient_PNR__context_getPhoneNumberSignature___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__15;
  v15 = __Block_byref_object_dispose__15;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__CoreTelephonyClient_PNR__context_getPhoneNumberSignature___block_invoke_2;
  v10[3] = &unk_1E6A459D8;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 context:v6 getPhoneNumberSignatureWithCompletion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __60__CoreTelephonyClient_PNR__context_getPhoneNumberSignature___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)context:(id)a3 resetPhoneNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__CoreTelephonyClient_PNR__context_resetPhoneNumber___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 context:v6 resetPhoneNumber:v8];
}

- (void)getPNRPriorityRegistrationListWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__CoreTelephonyClient_PNR__getPNRPriorityRegistrationListWithCompletion___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = v4;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getPNRPriorityRegistrationListWithCompletion:v5];
}

- (id)getPNRPriorityRegistrationListWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__15;
  v19 = __Block_byref_object_dispose__15;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CoreTelephonyClient_PNR__getPNRPriorityRegistrationListWithError___block_invoke;
  v14[3] = &unk_1E6A43BB0;
  v14[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v14];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__15;
  v12 = __Block_byref_object_dispose__15;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__CoreTelephonyClient_PNR__getPNRPriorityRegistrationListWithError___block_invoke_2;
  v7[3] = &unk_1E6A43C00;
  v7[4] = &v15;
  v7[5] = &v8;
  [v4 getPNRPriorityRegistrationListWithCompletion:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __68__CoreTelephonyClient_PNR__getPNRPriorityRegistrationListWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)context:(id)a3 canSetCapability:(id)a4 completion:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__CoreTelephonyClient_Capabilities__context_canSetCapability_completion___block_invoke;
  v5[3] = &unk_1E6A477F8;
  v5[4] = a5;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v5), "context:canSetCapability:completion:", a3, a4, a5}];
}

- (id)context:(id)a3 canSetCapability:(id)a4 allowed:(BOOL *)a5 with:(id *)a6
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__16;
  v22 = __Block_byref_object_dispose__16;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__CoreTelephonyClient_Capabilities__context_canSetCapability_allowed_with___block_invoke;
  v17[3] = &unk_1E6A441F0;
  v17[4] = &v18;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__CoreTelephonyClient_Capabilities__context_canSetCapability_allowed_with___block_invoke_2;
  v16[3] = &unk_1E6A47820;
  v16[5] = a5;
  v16[6] = a6;
  v16[4] = &v18;
  [v10 context:a3 canSetCapability:a4 completion:v16];
  if (a6)
  {
    v11 = *a6;
  }

  v12 = v19[5];
  if (v12)
  {
    v13 = v12;
    v14 = v19[5];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v14;
}

void *__75__CoreTelephonyClient_Capabilities__context_canSetCapability_allowed_with___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void *__75__CoreTelephonyClient_Capabilities__context_canSetCapability_allowed_with___block_invoke_2(void *result, char a2, void *a3, void *a4)
{
  v5 = result;
  v6 = result[5];
  if (v6)
  {
    *v6 = a2;
  }

  if (result[6])
  {
    result = a3;
    *v5[6] = result;
  }

  if (a4)
  {
    result = a4;
    *(*(v5[4] + 8) + 40) = result;
  }

  return result;
}

- (void)context:(id)a3 getCapability:(id)a4 completion:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__CoreTelephonyClient_Capabilities__context_getCapability_completion___block_invoke;
  v5[3] = &unk_1E6A477F8;
  v5[4] = a5;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v5), "context:getCapability:completion:", a3, a4, a5}];
}

- (id)context:(id)a3 getCapability:(id)a4 status:(BOOL *)a5 with:(id *)a6
{
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__16;
  v22 = __Block_byref_object_dispose__16;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__CoreTelephonyClient_Capabilities__context_getCapability_status_with___block_invoke;
  v17[3] = &unk_1E6A441F0;
  v17[4] = &v18;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__CoreTelephonyClient_Capabilities__context_getCapability_status_with___block_invoke_2;
  v16[3] = &unk_1E6A47820;
  v16[5] = a5;
  v16[6] = a6;
  v16[4] = &v18;
  [v10 context:a3 getCapability:a4 completion:v16];
  if (a6)
  {
    v11 = *a6;
  }

  v12 = v19[5];
  if (v12)
  {
    v13 = v12;
    v14 = v19[5];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v18, 8);
  return v14;
}

void *__71__CoreTelephonyClient_Capabilities__context_getCapability_status_with___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void *__71__CoreTelephonyClient_Capabilities__context_getCapability_status_with___block_invoke_2(void *result, char a2, void *a3, void *a4)
{
  v5 = result;
  v6 = result[5];
  if (v6)
  {
    *v6 = a2;
  }

  if (result[6])
  {
    result = a3;
    *v5[6] = result;
  }

  if (a4)
  {
    result = a4;
    *(*(v5[4] + 8) + 40) = result;
  }

  return result;
}

void *__72__CoreTelephonyClient_Capabilities__context_setCapability_enabled_with___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void *__72__CoreTelephonyClient_Capabilities__context_setCapability_enabled_with___block_invoke_2(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

- (void)context:(id)a3 getSystemCapabilitiesWithCompletion:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__CoreTelephonyClient_Capabilities__context_getSystemCapabilitiesWithCompletion___block_invoke;
  v4[3] = &unk_1E6A477F8;
  v4[4] = a4;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v4), "context:getSystemCapabilities:", a3, a4}];
}

- (id)context:(id)a3 getSystemCapabilities:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__16;
  v18 = __Block_byref_object_dispose__16;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__CoreTelephonyClient_Capabilities__context_getSystemCapabilities___block_invoke;
  v13[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v13[4] = a4;
  v6 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CoreTelephonyClient_Capabilities__context_getSystemCapabilities___block_invoke_2;
  v12[3] = &unk_1E6A47868;
  v12[4] = &v14;
  v12[5] = a4;
  [v6 context:a3 getSystemCapabilities:v12];
  v7 = v15[5];
  if (v7)
  {
    v8 = v7;
  }

  if (a4 && *a4)
  {
    v9 = *a4;
  }

  v10 = v15[5];
  _Block_object_dispose(&v14, 8);
  return v10;
}

void *__67__CoreTelephonyClient_Capabilities__context_getSystemCapabilities___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    if (result[4])
    {
      result = a2;
      *v2[4] = result;
    }
  }

  return result;
}

void *__67__CoreTelephonyClient_Capabilities__context_getSystemCapabilities___block_invoke_2(void *result, void *a2, void *a3)
{
  v4 = result;
  if (a2)
  {
    result = a2;
    *(*(v4[4] + 8) + 40) = result;
  }

  if (v4[5])
  {
    result = a3;
    *v4[5] = result;
  }

  return result;
}

- (id)getSupports5G:(id)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__16;
  v21 = __Block_byref_object_dispose__16;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__CoreTelephonyClient_Capabilities__getSupports5G_error___block_invoke;
  v16[3] = &unk_1E6A441F0;
  v16[4] = &v17;
  v6 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v16];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__16;
  v14 = __Block_byref_object_dispose__16;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CoreTelephonyClient_Capabilities__getSupports5G_error___block_invoke_2;
  v9[3] = &unk_1E6A44AE0;
  v9[4] = &v17;
  v9[5] = &v10;
  [v6 getSupports5G:a3 completion:v9];
  if (a4)
  {
    *a4 = v18[5];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v17, 8);
  return v7;
}

void *__57__CoreTelephonyClient_Capabilities__getSupports5G_error___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void *__57__CoreTelephonyClient_Capabilities__getSupports5G_error___block_invoke_2(void *result, void *a2, void *a3)
{
  v4 = result;
  if (a3)
  {
    result = a3;
    *(*(v4[4] + 8) + 40) = result;
  }

  if (a2)
  {
    result = a2;
    *(*(v4[5] + 8) + 40) = result;
  }

  return result;
}

- (id)context:(id)a3 recheckPhoneServicesAccountStatus:(id)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__16;
  v17 = __Block_byref_object_dispose__16;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__CoreTelephonyClient_Capabilities__context_recheckPhoneServicesAccountStatus___block_invoke;
  v12[3] = &unk_1E6A441F0;
  v12[4] = &v13;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__CoreTelephonyClient_Capabilities__context_recheckPhoneServicesAccountStatus___block_invoke_2;
  v11[3] = &unk_1E6A441F0;
  v11[4] = &v13;
  [v6 context:a3 recheckPhoneServicesAccountStatus:a4 completion:v11];
  v7 = v14[5];
  if (v7)
  {
    v8 = v7;
    v9 = v14[5];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v9;
}

void *__79__CoreTelephonyClient_Capabilities__context_recheckPhoneServicesAccountStatus___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void *__79__CoreTelephonyClient_Capabilities__context_recheckPhoneServicesAccountStatus___block_invoke_2(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

- (void)getPhoneServicesDeviceListWithCompletion:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceListWithCompletion___block_invoke;
  v3[3] = &unk_1E6A477F8;
  v3[4] = a3;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v3), "getPhoneServicesDeviceList:", a3}];
}

- (id)getPhoneServicesDeviceList:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceList___block_invoke;
  v11[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v11[4] = a3;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceList___block_invoke_2;
  v10[3] = &unk_1E6A47868;
  v10[4] = &v12;
  v10[5] = a3;
  [v4 getPhoneServicesDeviceList:v10];
  v5 = v13[5];
  if (v5)
  {
    v6 = v5;
  }

  if (a3 && *a3)
  {
    v7 = *a3;
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v8;
}

void *__64__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceList___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    if (result[4])
    {
      result = a2;
      *v2[4] = result;
    }
  }

  return result;
}

void *__64__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceList___block_invoke_2(void *result, void *a2, void *a3)
{
  v4 = result;
  if (a2)
  {
    result = a2;
    *(*(v4[4] + 8) + 40) = result;
  }

  if (v4[5])
  {
    result = a3;
    *v4[5] = result;
  }

  return result;
}

- (void)getPhoneServicesDeviceInfoWithCompletion:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceInfoWithCompletion___block_invoke;
  v3[3] = &unk_1E6A477F8;
  v3[4] = a3;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v3), "getPhoneServicesDeviceInfo:", a3}];
}

- (id)getPhoneServicesDeviceInfo:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__16;
  v16 = __Block_byref_object_dispose__16;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceInfo___block_invoke;
  v11[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v11[4] = a3;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceInfo___block_invoke_2;
  v10[3] = &unk_1E6A47868;
  v10[4] = &v12;
  v10[5] = a3;
  [v4 getPhoneServicesDeviceInfo:v10];
  v5 = v13[5];
  if (v5)
  {
    v6 = v5;
  }

  if (a3 && *a3)
  {
    v7 = *a3;
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v8;
}

void *__64__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceInfo___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    if (result[4])
    {
      result = a2;
      *v2[4] = result;
    }
  }

  return result;
}

void *__64__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceInfo___block_invoke_2(void *result, void *a2, void *a3)
{
  v4 = result;
  if (a2)
  {
    result = a2;
    *(*(v4[4] + 8) + 40) = result;
  }

  if (v4[5])
  {
    result = a3;
    *v4[5] = result;
  }

  return result;
}

- (void)context:(id)a3 addPhoneServicesDevice:(id)a4 withCompletion:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__CoreTelephonyClient_Capabilities__context_addPhoneServicesDevice_withCompletion___block_invoke;
  v5[3] = &unk_1E6A477F8;
  v5[4] = a5;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v5), "context:addPhoneServicesDevice:withCompletion:", a3, a4, a5}];
}

- (id)context:(id)a3 addPhoneServicesDevice:(id)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__16;
  v17 = __Block_byref_object_dispose__16;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__CoreTelephonyClient_Capabilities__context_addPhoneServicesDevice___block_invoke;
  v12[3] = &unk_1E6A441F0;
  v12[4] = &v13;
  v6 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_Capabilities__context_addPhoneServicesDevice___block_invoke_2;
  v11[3] = &unk_1E6A441F0;
  v11[4] = &v13;
  [v6 context:a3 addPhoneServicesDevice:a4 withCompletion:v11];
  v7 = v14[5];
  if (v7)
  {
    v8 = v7;
    v9 = v14[5];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v9;
}

void *__68__CoreTelephonyClient_Capabilities__context_addPhoneServicesDevice___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void *__68__CoreTelephonyClient_Capabilities__context_addPhoneServicesDevice___block_invoke_2(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

- (void)context:(id)a3 removePhoneServicesDevice:(id)a4 withCompletion:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__CoreTelephonyClient_Capabilities__context_removePhoneServicesDevice_withCompletion___block_invoke;
  v5[3] = &unk_1E6A477F8;
  v5[4] = a5;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v5), "context:removePhoneServicesDevice:withCompletion:", a3, a4, a5}];
}

- (id)context:(id)a3 removePhoneServicesDevice:(id)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__16;
  v17 = __Block_byref_object_dispose__16;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CoreTelephonyClient_Capabilities__context_removePhoneServicesDevice___block_invoke;
  v12[3] = &unk_1E6A441F0;
  v12[4] = &v13;
  v6 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__CoreTelephonyClient_Capabilities__context_removePhoneServicesDevice___block_invoke_2;
  v11[3] = &unk_1E6A441F0;
  v11[4] = &v13;
  [v6 context:a3 removePhoneServicesDevice:a4 withCompletion:v11];
  v7 = v14[5];
  if (v7)
  {
    v8 = v7;
    v9 = v14[5];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v9;
}

void *__71__CoreTelephonyClient_Capabilities__context_removePhoneServicesDevice___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void *__71__CoreTelephonyClient_Capabilities__context_removePhoneServicesDevice___block_invoke_2(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

- (id)wifiCallingCTFollowUpComplete:(id)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__16;
  v15 = __Block_byref_object_dispose__16;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CoreTelephonyClient_Capabilities__wifiCallingCTFollowUpComplete___block_invoke;
  v10[3] = &unk_1E6A441F0;
  v10[4] = &v11;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__CoreTelephonyClient_Capabilities__wifiCallingCTFollowUpComplete___block_invoke_2;
  v9[3] = &unk_1E6A441F0;
  v9[4] = &v11;
  [v4 wifiCallingCTFollowUpComplete:a3 withCompletion:v9];
  v5 = v12[5];
  if (v5)
  {
    v6 = v5;
    v7 = v12[5];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

void *__67__CoreTelephonyClient_Capabilities__wifiCallingCTFollowUpComplete___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void *__67__CoreTelephonyClient_Capabilities__wifiCallingCTFollowUpComplete___block_invoke_2(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void *__67__CoreTelephonyClient_Capabilities__context_mandatoryDisableVoLTE___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

void *__67__CoreTelephonyClient_Capabilities__context_mandatoryDisableVoLTE___block_invoke_2(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    result = a2;
    *(*(v2[4] + 8) + 40) = result;
  }

  return result;
}

- (BOOL)context:(id)a3 isMandatoryDisabledVoLTE:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__CoreTelephonyClient_Capabilities__context_isMandatoryDisabledVoLTE___block_invoke;
  v11[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v11[4] = a4;
  v6 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CoreTelephonyClient_Capabilities__context_isMandatoryDisabledVoLTE___block_invoke_2;
  v10[3] = &unk_1E6A47890;
  v10[4] = &v12;
  v10[5] = a4;
  [v6 context:a3 isMandatoryDisabledVoLTE:v10];
  if (a4 && *a4)
  {
    v7 = *a4;
  }

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v8;
}

void *__70__CoreTelephonyClient_Capabilities__context_isMandatoryDisabledVoLTE___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    if (result[4])
    {
      result = a2;
      *v2[4] = result;
    }
  }

  return result;
}

void *__70__CoreTelephonyClient_Capabilities__context_isMandatoryDisabledVoLTE___block_invoke_2(void *result, char a2, void *a3)
{
  v3 = result[5];
  *(*(result[4] + 8) + 24) = a2;
  if (v3)
  {
    v4 = result;
    result = a3;
    *v4[5] = result;
  }

  return result;
}

- (CoreTelephonyClient)initWithQueue:(dispatch_queue_s *)a3
{
  v5 = [objc_opt_class() sharedMultiplexer];
  v6 = [(CoreTelephonyClient *)self initWithQueue:a3 multiplexer:v5];

  return v6;
}

- (CoreTelephonyClient)initWithQueue:(dispatch_queue_s *)a3 multiplexer:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [(CoreTelephonyClient *)self initWithQueue:a3 multiplexer:v6 gestaltHelper:v7];

  return v8;
}

- (CoreTelephonyClient)initWithQueue:(dispatch_queue_s *)a3 multiplexer:(id)a4 gestaltHelper:(id)a5
{
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = CoreTelephonyClient;
  v11 = [(CoreTelephonyClient *)&v21 init];
  if (v11)
  {
    if (a3)
    {
      dispatch_retain(a3);
    }

    fObj = v11->_userQueue.fObj.fObj;
    v11->_userQueue.fObj.fObj = a3;
    v13 = a3;
    if (fObj)
    {
      dispatch_release(fObj);
      v13 = v11->_userQueue.fObj.fObj;
    }

    if (!v13)
    {
      global_queue = dispatch_get_global_queue(21, 0);
      v17 = global_queue;
      if (global_queue)
      {
        dispatch_retain(global_queue);
        v18 = v11->_userQueue.fObj.fObj;
        v11->_userQueue.fObj.fObj = v17;
        if (v18)
        {
          dispatch_release(v18);
        }
      }

      else
      {
        v11->_userQueue.fObj.fObj = 0;
      }
    }

    objc_storeStrong(&v11->_mux, a4);
    objc_storeStrong(&v11->_gestaltHelper, a5);
    objc_initWeak(&location, v11);
    v14 = v11->_userQueue.fObj.fObj;
    objc_copyWeak(v19, &location);
    v19[1] = a3;
    v11->fOsStateHandle = os_state_add_handler();
    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }

  return v11;
}

char *__63__CoreTelephonyClient_initWithQueue_multiplexer_gestaltHelper___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_16;
  }

  v6 = *(a2 + 16);
  v5 = (a2 + 16);
  if (v6 != 3)
  {
    v16 = CTLogClient();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __63__CoreTelephonyClient_initWithQueue_multiplexer_gestaltHelper___block_invoke_cold_1(v5, v16);
    }

    goto LABEL_11;
  }

  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(WeakRetained, "supportsCellular")}];
  [v7 setObject:v8 forKeyedSubscript:@"hasCellular"];

  v20 = 0;
  v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:200 options:0 error:&v20];
  v10 = v20;
  if (v9)
  {
    v11 = CTLogClient();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __63__CoreTelephonyClient_initWithQueue_multiplexer_gestaltHelper___block_invoke_cold_2(buf, [v9 length], v11);
    }

    v12 = malloc_type_calloc(1uLL, [v9 length] + 200, 0x1000040BEF03554uLL);
    *v12 = 1;
    *(v12 + 1) = [v9 length];
    label = dispatch_queue_get_label(*(a1 + 40));
    v14 = "unknown";
    if (label)
    {
      v14 = label;
    }

    snprintf(v12 + 136, 0x40uLL, "CoreTelephonyClient: %s", v14);
    v15 = v9;
    memcpy(v12 + 200, [v9 bytes], objc_msgSend(v9, "length"));
  }

  else
  {
    v17 = CTLogClient();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __63__CoreTelephonyClient_initWithQueue_multiplexer_gestaltHelper___block_invoke_cold_3(v10, v17);
    }

    v12 = 0;
  }

LABEL_16:
  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  if (obj)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    v5 = obj;
    if (WeakRetained != obj)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);

      if (v6)
      {
        mux = self->_mux;
        v8 = objc_loadWeakRetained(&self->_delegate);
        [(CoreTelephonyClientMux *)mux removeDelegate:v8];
      }

      objc_storeWeak(&self->_delegate, obj);
      self->fDelegateAddr = obj;
      fObj = self->_userQueue.fObj.fObj;
      [CoreTelephonyClientMux addDelegate:"addDelegate:queue:" queue:?];
      v5 = obj;
    }
  }

  else
  {
    v10 = self->_mux;
    v11 = objc_loadWeakRetained(&self->_delegate);
    [(CoreTelephonyClientMux *)v10 removeDelegate:v11];

    objc_storeWeak(&self->_delegate, 0);
    self->fDelegateAddr = 0;
    v5 = 0;
  }
}

- (void)getSubscriptionInfo:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CoreTelephonyClient_getSubscriptionInfo___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = v4;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getSubscriptionInfo:v5];
}

- (id)getSubscriptionInfoWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__17;
  v20 = __Block_byref_object_dispose__17;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__CoreTelephonyClient_getSubscriptionInfoWithError___block_invoke;
  v15[3] = &unk_1E6A43BB0;
  v15[4] = &v16;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__17;
  v13 = __Block_byref_object_dispose__17;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CoreTelephonyClient_getSubscriptionInfoWithError___block_invoke_2;
  v8[3] = &unk_1E6A47A80;
  v8[4] = &v16;
  v8[5] = &v9;
  [v4 getSubscriptionInfo:v8];
  if (a3)
  {
    v5 = v17[5];
    if (v5)
    {
      *a3 = v5;
    }
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __52__CoreTelephonyClient_getSubscriptionInfoWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (int64_t)getDualSimCapability:(id *)a3
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__17;
    v18 = __Block_byref_object_dispose__17;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __44__CoreTelephonyClient_getDualSimCapability___block_invoke;
    v13[3] = &unk_1E6A43BB0;
    v13[4] = &v14;
    v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v13];
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__CoreTelephonyClient_getDualSimCapability___block_invoke_2;
    v8[3] = &unk_1E6A47AA8;
    v8[4] = &v14;
    v8[5] = &v9;
    [v5 getDualSimCapability:v8];
    if (a3)
    {
      *a3 = v15[5];
    }

    v6 = v10[3];
    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v14, 8);
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a3 = v6 = 0;
  }

  else
  {
    return 0;
  }

  return v6;
}

void __44__CoreTelephonyClient_getDualSimCapability___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)getDescriptorsForDomain:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CoreTelephonyClient_getDescriptorsForDomain_completion___block_invoke;
  v9[3] = &unk_1E6A43CC8;
  v7 = v6;
  v10 = v7;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v9];
  [v8 getDescriptorsForDomain:a3 completion:v7];
}

- (id)getDescriptorsForDomain:(int64_t)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__17;
  v21 = __Block_byref_object_dispose__17;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__CoreTelephonyClient_getDescriptorsForDomain_error___block_invoke;
  v16[3] = &unk_1E6A43BB0;
  v16[4] = &v17;
  v6 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v16];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__17;
  v14 = __Block_byref_object_dispose__17;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__CoreTelephonyClient_getDescriptorsForDomain_error___block_invoke_2;
  v9[3] = &unk_1E6A47AD0;
  v9[4] = &v17;
  v9[5] = &v10;
  [v6 getDescriptorsForDomain:a3 completion:v9];
  if (a4)
  {
    *a4 = v18[5];
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v17, 8);

  return v7;
}

void __53__CoreTelephonyClient_getDescriptorsForDomain_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getReleaseCandidateFlag
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:0];

  return v2;
}

- (id)getAllowDevSignedCarrierBundlesFlag
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:0];

  return v2;
}

- (void)getActiveContextsWithCallback:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CoreTelephonyClient_getActiveContextsWithCallback___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = v4;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getActiveContexts:v5];
}

- (id)getActiveContexts:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17;
  v19 = __Block_byref_object_dispose__17;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41__CoreTelephonyClient_getActiveContexts___block_invoke;
  v14[3] = &unk_1E6A43BB0;
  v14[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v14];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__17;
  v12 = __Block_byref_object_dispose__17;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CoreTelephonyClient_getActiveContexts___block_invoke_2;
  v7[3] = &unk_1E6A47AF8;
  v7[4] = &v15;
  v7[5] = &v8;
  [v4 getActiveContexts:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __41__CoreTelephonyClient_getActiveContexts___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getEvolvedSubscriptionLabelID:(id)a3 withCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__CoreTelephonyClient_getEvolvedSubscriptionLabelID_withCallback___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getEvolvedSubscriptionLabelID:v6 withCallback:v8];
}

- (id)getEvolvedSubscriptionLabelID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__17;
  v22 = __Block_byref_object_dispose__17;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__CoreTelephonyClient_getEvolvedSubscriptionLabelID_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__17;
  v15 = __Block_byref_object_dispose__17;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CoreTelephonyClient_getEvolvedSubscriptionLabelID_error___block_invoke_2;
  v10[3] = &unk_1E6A44B78;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getEvolvedSubscriptionLabelID:v6 withCallback:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __59__CoreTelephonyClient_getEvolvedSubscriptionLabelID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)proxyWithErrorHandler:(id)a3
{
  v3 = [(CoreTelephonyClientMux *)self->_mux proxyWithQueue:self->_userQueue.fObj.fObj errorHandler:a3];

  return v3;
}

- (id)synchronousProxyWithErrorHandler:(id)a3
{
  v3 = [(CoreTelephonyClientMux *)self->_mux synchronousProxyWithErrorHandler:a3];

  return v3;
}

- (void)ping:(id)a3
{
  v5 = a3;
  v4 = [(CoreTelephonyClient *)self proxyWithErrorHandler:?];
  [v4 ping:v5];
}

- (BOOL)supportsRequestWithSelector:(SEL)a3
{
  v4 = [(CoreTelephonyClient *)self supportsCellular];
  if (!v4)
  {
    v5 = NSStringFromSelector(a3);
    handleUnsupportedRequestForCurrentBundle([v5 UTF8String]);
  }

  return v4;
}

- (void)dispatchBlockToClientAsync:(id)a3
{
  _Block_copy(a3);
  fObj = self->_userQueue.fObj.fObj;
  operator new();
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)dispatchBlockToClientAsync:(dispatch_queue_s *)
{
  v2 = a1;
  (*(*a1 + 2))();
  return std::unique_ptr<-[CoreTelephonyClientMux dealloc]::$_0>::~unique_ptr[abi:nn200100](&v2);
}

- (void)copyRegistrationStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__CoreTelephonyClient_Registration__copyRegistrationStatus_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegistrationStatusRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CoreTelephonyClient_Registration__copyRegistrationStatus_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __71__CoreTelephonyClient_Registration__copyRegistrationStatus_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 status];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)copyRegistrationStatus:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__CoreTelephonyClient_Registration__copyRegistrationStatus_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegistrationStatusRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CoreTelephonyClient_Registration__copyRegistrationStatus_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __66__CoreTelephonyClient_Registration__copyRegistrationStatus_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 status];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)copyRegistrationDisplayStatus:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__CoreTelephonyClient_Registration__copyRegistrationDisplayStatus_completion___block_invoke_2;
    v15[3] = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v15];
    v11 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegistrationDisplayStatusRequest alloc] initWithContext:v7];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__CoreTelephonyClient_Registration__copyRegistrationDisplayStatus_completion___block_invoke_3;
    v13[3] = &unk_1E6A463D0;
    v14 = v9;
    [v10 sendRequest:v11 completionHandler:v13];
    v12 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__CoreTelephonyClient_Registration__copyRegistrationDisplayStatus_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = v8;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v17];
    v12 = &v18;
  }
}

void __78__CoreTelephonyClient_Registration__copyRegistrationDisplayStatus_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void __78__CoreTelephonyClient_Registration__copyRegistrationDisplayStatus_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 status];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)copyRegistrationDisplayStatus:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__18;
    v24 = __Block_byref_object_dispose__18;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__CoreTelephonyClient_Registration__copyRegistrationDisplayStatus_error___block_invoke;
    v19[3] = &unk_1E6A43BB0;
    v19[4] = &v20;
    v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v19];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__18;
    v17 = __Block_byref_object_dispose__18;
    v18 = 0;
    v9 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegistrationDisplayStatusRequest alloc] initWithContext:v7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __73__CoreTelephonyClient_Registration__copyRegistrationDisplayStatus_error___block_invoke_2;
    v12[3] = &unk_1E6A44B30;
    v12[4] = &v20;
    v12[5] = &v13;
    [v8 sendRequest:v9 completionHandler:v12];
    if (a4)
    {
      *a4 = v21[5];
    }

    v10 = v14[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v20, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __73__CoreTelephonyClient_Registration__copyRegistrationDisplayStatus_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 status];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)copyServingPlmn:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__CoreTelephonyClient_Registration__copyServingPlmn_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetServingPlmnRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__CoreTelephonyClient_Registration__copyServingPlmn_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __64__CoreTelephonyClient_Registration__copyServingPlmn_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 plmn];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)copyServingPlmn:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__CoreTelephonyClient_Registration__copyServingPlmn_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetServingPlmnRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__CoreTelephonyClient_Registration__copyServingPlmn_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __59__CoreTelephonyClient_Registration__copyServingPlmn_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 plmn];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)copyMobileCountryCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__CoreTelephonyClient_Registration__copyMobileCountryCode_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetMobileCountryCodeRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__CoreTelephonyClient_Registration__copyMobileCountryCode_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __70__CoreTelephonyClient_Registration__copyMobileCountryCode_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 mcc];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)copyMobileCountryCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__CoreTelephonyClient_Registration__copyMobileCountryCode_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetMobileCountryCodeRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CoreTelephonyClient_Registration__copyMobileCountryCode_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __65__CoreTelephonyClient_Registration__copyMobileCountryCode_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 mcc];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)copyLastKnownMobileCountryCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__CoreTelephonyClient_Registration__copyLastKnownMobileCountryCode_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetLastKnownMobileCountryCodeRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__CoreTelephonyClient_Registration__copyLastKnownMobileCountryCode_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __79__CoreTelephonyClient_Registration__copyLastKnownMobileCountryCode_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 mcc];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)copyLastKnownMobileCountryCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__CoreTelephonyClient_Registration__copyLastKnownMobileCountryCode_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetLastKnownMobileCountryCodeRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__CoreTelephonyClient_Registration__copyLastKnownMobileCountryCode_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __74__CoreTelephonyClient_Registration__copyLastKnownMobileCountryCode_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 mcc];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)copyMobileNetworkCode:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__CoreTelephonyClient_Registration__copyMobileNetworkCode_completion___block_invoke_2;
    v15[3] = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v15];
    v11 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetMobileNetworkCodeRequest alloc] initWithContext:v7];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__CoreTelephonyClient_Registration__copyMobileNetworkCode_completion___block_invoke_3;
    v13[3] = &unk_1E6A463D0;
    v14 = v9;
    [v10 sendRequest:v11 completionHandler:v13];
    v12 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__CoreTelephonyClient_Registration__copyMobileNetworkCode_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = v8;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v17];
    v12 = &v18;
  }
}

void __70__CoreTelephonyClient_Registration__copyMobileNetworkCode_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void __70__CoreTelephonyClient_Registration__copyMobileNetworkCode_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 mnc];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)copyMobileNetworkCode:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__18;
    v24 = __Block_byref_object_dispose__18;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__CoreTelephonyClient_Registration__copyMobileNetworkCode_error___block_invoke;
    v19[3] = &unk_1E6A43BB0;
    v19[4] = &v20;
    v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v19];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__18;
    v17 = __Block_byref_object_dispose__18;
    v18 = 0;
    v9 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetMobileNetworkCodeRequest alloc] initWithContext:v7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__CoreTelephonyClient_Registration__copyMobileNetworkCode_error___block_invoke_2;
    v12[3] = &unk_1E6A44B30;
    v12[4] = &v20;
    v12[5] = &v13;
    [v8 sendRequest:v9 completionHandler:v12];
    if (a4)
    {
      *a4 = v21[5];
    }

    v10 = v14[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v20, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __65__CoreTelephonyClient_Registration__copyMobileNetworkCode_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 mnc];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)copyIsInHomeCountry:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__CoreTelephonyClient_Registration__copyIsInHomeCountry_completion___block_invoke_2;
    v15[3] = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v15];
    v11 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIsInHomeCountryRequest alloc] initWithContext:v7];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__CoreTelephonyClient_Registration__copyIsInHomeCountry_completion___block_invoke_3;
    v13[3] = &unk_1E6A463D0;
    v14 = v9;
    [v10 sendRequest:v11 completionHandler:v13];
    v12 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__CoreTelephonyClient_Registration__copyIsInHomeCountry_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = v8;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v17];
    v12 = &v18;
  }
}

void __68__CoreTelephonyClient_Registration__copyIsInHomeCountry_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void __68__CoreTelephonyClient_Registration__copyIsInHomeCountry_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 isHome], v6);
}

- (id)copyIsInHomeCountry:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__18;
    v24 = __Block_byref_object_dispose__18;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__CoreTelephonyClient_Registration__copyIsInHomeCountry_error___block_invoke;
    v19[3] = &unk_1E6A43BB0;
    v19[4] = &v20;
    v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v19];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__18;
    v17 = __Block_byref_object_dispose__18;
    v18 = 0;
    v9 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIsInHomeCountryRequest alloc] initWithContext:v7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__CoreTelephonyClient_Registration__copyIsInHomeCountry_error___block_invoke_2;
    v12[3] = &unk_1E6A44B30;
    v12[4] = &v20;
    v12[5] = &v13;
    [v8 sendRequest:v9 completionHandler:v12];
    if (a4)
    {
      *a4 = v21[5];
    }

    v10 = v14[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v20, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __63__CoreTelephonyClient_Registration__copyIsInHomeCountry_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isHome")}];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (void)getRoamingStatus:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__CoreTelephonyClient_Registration__getRoamingStatus_completion___block_invoke_2;
    v15[3] = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v15];
    v11 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRoamingStatusRequest alloc] initWithContext:v7];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__CoreTelephonyClient_Registration__getRoamingStatus_completion___block_invoke_3;
    v13[3] = &unk_1E6A463D0;
    v14 = v9;
    [v10 sendRequest:v11 completionHandler:v13];
    v12 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__CoreTelephonyClient_Registration__getRoamingStatus_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = v8;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v17];
    v12 = &v18;
  }
}

void __65__CoreTelephonyClient_Registration__getRoamingStatus_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void __65__CoreTelephonyClient_Registration__getRoamingStatus_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 status];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)getRoamingStatus:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__18;
    v24 = __Block_byref_object_dispose__18;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__CoreTelephonyClient_Registration__getRoamingStatus_error___block_invoke;
    v19[3] = &unk_1E6A43BB0;
    v19[4] = &v20;
    v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v19];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__18;
    v17 = __Block_byref_object_dispose__18;
    v18 = 0;
    v9 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRoamingStatusRequest alloc] initWithContext:v7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__CoreTelephonyClient_Registration__getRoamingStatus_error___block_invoke_2;
    v12[3] = &unk_1E6A44B30;
    v12[4] = &v20;
    v12[5] = &v13;
    [v8 sendRequest:v9 completionHandler:v12];
    if (a4)
    {
      *a4 = v21[5];
    }

    v10 = v14[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v20, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __60__CoreTelephonyClient_Registration__getRoamingStatus_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 status];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)copyIsDataAttached:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__CoreTelephonyClient_Registration__copyIsDataAttached_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIsDataAttachedRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CoreTelephonyClient_Registration__copyIsDataAttached_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __67__CoreTelephonyClient_Registration__copyIsDataAttached_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 isDataAttached], v6);
}

- (void)copyOperatorName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__CoreTelephonyClient_Registration__copyOperatorName_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetOperatorNameRequest alloc] initWithContext:v6 type:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CoreTelephonyClient_Registration__copyOperatorName_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __65__CoreTelephonyClient_Registration__copyOperatorName_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 operatorName];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)getOperatorName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__CoreTelephonyClient_Registration__getOperatorName_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [[CTXPCGetOperatorNameRequest alloc] initWithContext:v6 type:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__CoreTelephonyClient_Registration__getOperatorName_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __59__CoreTelephonyClient_Registration__getOperatorName_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 operatorName];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)copyLocalizedOperatorName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CoreTelephonyClient_Registration__copyLocalizedOperatorName_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetOperatorNameRequest alloc] initWithContext:v6 type:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CoreTelephonyClient_Registration__copyLocalizedOperatorName_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __74__CoreTelephonyClient_Registration__copyLocalizedOperatorName_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 operatorName];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)getLocalizedOperatorName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__CoreTelephonyClient_Registration__getLocalizedOperatorName_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [[CTXPCGetOperatorNameRequest alloc] initWithContext:v6 type:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_Registration__getLocalizedOperatorName_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __68__CoreTelephonyClient_Registration__getLocalizedOperatorName_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 operatorName];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)getNRStatus:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__CoreTelephonyClient_Registration__getNRStatus_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetNRStatusRequest alloc] initWithDescriptor:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CoreTelephonyClient_Registration__getNRStatus_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __55__CoreTelephonyClient_Registration__getNRStatus_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 nrStatus];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)getSupports5GStandalone:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__CoreTelephonyClient_Registration__getSupports5GStandalone_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSupports5GStandaloneRequest alloc] initWithDescriptor:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CoreTelephonyClient_Registration__getSupports5GStandalone_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __67__CoreTelephonyClient_Registration__getSupports5GStandalone_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "support")}];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (void)copyRadioAccessTechnology:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CoreTelephonyClient_Registration__copyRadioAccessTechnology_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRadioAccessTechnologyRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CoreTelephonyClient_Registration__copyRadioAccessTechnology_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __74__CoreTelephonyClient_Registration__copyRadioAccessTechnology_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 rat];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)copyRadioAccessTechnology:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__CoreTelephonyClient_Registration__copyRadioAccessTechnology_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRadioAccessTechnologyRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CoreTelephonyClient_Registration__copyRadioAccessTechnology_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __69__CoreTelephonyClient_Registration__copyRadioAccessTechnology_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 rat];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)copyWirelessTechnology:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__CoreTelephonyClient_Registration__copyWirelessTechnology_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetWirelessTechnologyRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CoreTelephonyClient_Registration__copyWirelessTechnology_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __71__CoreTelephonyClient_Registration__copyWirelessTechnology_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 technology];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)copyAbbreviatedOperatorName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__CoreTelephonyClient_Registration__copyAbbreviatedOperatorName_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetOperatorNameRequest alloc] initWithContext:v6 type:2];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__CoreTelephonyClient_Registration__copyAbbreviatedOperatorName_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __76__CoreTelephonyClient_Registration__copyAbbreviatedOperatorName_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 operatorName];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)getRatSelection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__CoreTelephonyClient_Registration__getRatSelection_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRatSelectionRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__CoreTelephonyClient_Registration__getRatSelection_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __64__CoreTelephonyClient_Registration__getRatSelection_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v14;
    v8 = v14;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v14;
  }

  if (v6)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = [v9 selection];
    v10 = [v12 selection];

    v13 = [v9 selection];
    v11 = [v13 preferred];
  }

  (*(*(a1 + 32) + 16))();
}

- (id)getRatSelectionMask:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__CoreTelephonyClient_Registration__getRatSelectionMask_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRatSelectionRequest alloc] initWithDescriptor:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__CoreTelephonyClient_Registration__getRatSelectionMask_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __63__CoreTelephonyClient_Registration__getRatSelectionMask_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 selection];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)setRatSelection:(id)a3 selection:(id)a4 preferred:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v11)
  {
    v15 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
    v16 = [[CTXPCSetRatSelectionRequest alloc] initWithContext:v10 selection:v11 preferred:v12];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__CoreTelephonyClient_Registration__setRatSelection_selection_preferred_completion___block_invoke_2;
    v17[3] = &unk_1E6A463D0;
    v18 = v14;
    [v15 sendRequest:v16 completionHandler:v17];
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__CoreTelephonyClient_Registration__setRatSelection_selection_preferred_completion___block_invoke;
    v19[3] = &unk_1E6A43D10;
    v20 = v13;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v19];
    v15 = v20;
  }
}

void __84__CoreTelephonyClient_Registration__setRatSelection_selection_preferred_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  (*(v1 + 16))(v1);
}

- (void)copyBandInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__CoreTelephonyClient_Registration__copyBandInfo_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetBandInfoRequest alloc] initWithContext:v6 type:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__CoreTelephonyClient_Registration__copyBandInfo_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __61__CoreTelephonyClient_Registration__copyBandInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 bandMasks];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)setBandInfo:(id)a3 bands:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  v12 = [[CTXPCSetActiveBandInfoRequest alloc] initWithContext:v8 type:0 bands:v9];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__CoreTelephonyClient_Registration__setBandInfo_bands_completion___block_invoke;
  v14[3] = &unk_1E6A463D0;
  v13 = v10;
  v15 = v13;
  [v11 sendRequest:v12 completionHandler:v14];
}

- (id)getBandInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__CoreTelephonyClient_Registration__getBandInfo_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [[CTXPCGetBandInfoRequest alloc] initWithContext:v6 type:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CoreTelephonyClient_Registration__getBandInfo_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __55__CoreTelephonyClient_Registration__getBandInfo_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 bandInfo];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)setActiveBandInfo:(id)a3 bands:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__18;
  v18 = __Block_byref_object_dispose__18;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__CoreTelephonyClient_Registration__setActiveBandInfo_bands_error___block_invoke;
  v13[3] = &unk_1E6A43BB0;
  v13[4] = &v14;
  v10 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v13];
  v11 = [[CTXPCSetActiveBandInfoRequest alloc] initWithContext:v8 type:1 bandInfo:v9];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CoreTelephonyClient_Registration__setActiveBandInfo_bands_error___block_invoke_2;
  v12[3] = &unk_1E6A44B08;
  v12[4] = &v14;
  [v10 sendRequest:v11 completionHandler:v12];
  if (a5)
  {
    *a5 = v15[5];
  }

  _Block_object_dispose(&v14, 8);
}

- (void)getSignalStrengthInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__CoreTelephonyClient_Registration__getSignalStrengthInfo_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetSignalStrengthInfoRequest alloc] initWithContext:v6 forPublic:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__CoreTelephonyClient_Registration__getSignalStrengthInfo_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __70__CoreTelephonyClient_Registration__getSignalStrengthInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 signalInfo];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)getSignalStrengthInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__18;
  v24 = __Block_byref_object_dispose__18;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__CoreTelephonyClient_Registration__getSignalStrengthInfo_error___block_invoke;
  v19[3] = &unk_1E6A43BB0;
  v19[4] = &v20;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v19];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__18;
  v17 = __Block_byref_object_dispose__18;
  v18 = 0;
  v8 = [[CTXPCGetSignalStrengthInfoRequest alloc] initWithContext:v6 forPublic:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CoreTelephonyClient_Registration__getSignalStrengthInfo_error___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v20;
  v12[5] = &v13;
  [v7 sendRequest:v8 completionHandler:v12];
  if (a4)
  {
    v9 = v21[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = v14[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __65__CoreTelephonyClient_Registration__getSignalStrengthInfo_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 signalInfo];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)getVoiceLinkQualityMetric:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CoreTelephonyClient_Registration__getVoiceLinkQualityMetric_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetVoiceLinkQualityMetricRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__CoreTelephonyClient_Registration__getVoiceLinkQualityMetric_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __74__CoreTelephonyClient_Registration__getVoiceLinkQualityMetric_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 linkQuality];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)getEnhancedVoiceLinkQualityMetric:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__CoreTelephonyClient_Registration__getEnhancedVoiceLinkQualityMetric_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetEnhancedVoiceLinkQualityMetricRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__CoreTelephonyClient_Registration__getEnhancedVoiceLinkQualityMetric_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __82__CoreTelephonyClient_Registration__getEnhancedVoiceLinkQualityMetric_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 linkQuality];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)copyRejectCauseCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CoreTelephonyClient_Registration__copyRejectCauseCode_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRejectCauseCodeRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__CoreTelephonyClient_Registration__copyRejectCauseCode_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __68__CoreTelephonyClient_Registration__copyRejectCauseCode_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 causeCode];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)getRejectCauseCode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__CoreTelephonyClient_Registration__getRejectCauseCode_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRejectCauseCodeRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CoreTelephonyClient_Registration__getRejectCauseCode_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __62__CoreTelephonyClient_Registration__getRejectCauseCode_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 causeCode];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)copyRegistrationAgentStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__CoreTelephonyClient_Registration__copyRegistrationAgentStatus_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIMSRegistrationStatusRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__CoreTelephonyClient_Registration__copyRegistrationAgentStatus_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __76__CoreTelephonyClient_Registration__copyRegistrationAgentStatus_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v14;
    v8 = v14;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v14;
  }

  v10 = *(a1 + 32);
  v11 = [v9 status];
  v12 = [v11 isRegisteredForVoice];
  v13 = [v9 status];
  (*(v10 + 16))(v10, v12, [v13 isRegisteredForSMS], v6);
}

- (void)getIMSRegistrationStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__CoreTelephonyClient_Registration__getIMSRegistrationStatus_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIMSRegistrationStatusRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__CoreTelephonyClient_Registration__getIMSRegistrationStatus_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __73__CoreTelephonyClient_Registration__getIMSRegistrationStatus_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 status];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)getIMSRegistrationStatus:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__CoreTelephonyClient_Registration__getIMSRegistrationStatus_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIMSRegistrationStatusRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_Registration__getIMSRegistrationStatus_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __68__CoreTelephonyClient_Registration__getIMSRegistrationStatus_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 status];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)copyRegistrationIMSTransportInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__CoreTelephonyClient_Registration__copyRegistrationIMSTransportInfo_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegistrationIMSTransportInfoRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__CoreTelephonyClient_Registration__copyRegistrationIMSTransportInfo_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __81__CoreTelephonyClient_Registration__copyRegistrationIMSTransportInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 info];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)setMaxDataRate:(id)a3 rate:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v9];
  v11 = [[CTXPCSetMaxDataRateRequest alloc] initWithContext:v8 rate:a4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__CoreTelephonyClient_Registration__setMaxDataRate_rate_completion___block_invoke;
  v13[3] = &unk_1E6A463D0;
  v12 = v9;
  v14 = v12;
  [v10 sendRequest:v11 completionHandler:v13];
}

- (id)setMaxDataRate:(id)a3 rate:(int64_t)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__18;
  v17 = __Block_byref_object_dispose__18;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__CoreTelephonyClient_Registration__setMaxDataRate_rate___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v8 = [[CTXPCSetMaxDataRateRequest alloc] initWithContext:v6 rate:a4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__CoreTelephonyClient_Registration__setMaxDataRate_rate___block_invoke_2;
  v11[3] = &unk_1E6A44B08;
  v11[4] = &v13;
  [v7 sendRequest:v8 completionHandler:v11];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (void)getMaxDataRate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CoreTelephonyClient_Registration__getMaxDataRate_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetMaxDataRateRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__CoreTelephonyClient_Registration__getMaxDataRate_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __63__CoreTelephonyClient_Registration__getMaxDataRate_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 rate], v6);
}

- (int64_t)getMaxDataRate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__18;
  v21 = __Block_byref_object_dispose__18;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__CoreTelephonyClient_Registration__getMaxDataRate_error___block_invoke;
  v16[3] = &unk_1E6A43BB0;
  v16[4] = &v17;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v16];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetMaxDataRateRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__CoreTelephonyClient_Registration__getMaxDataRate_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v17;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v18[5];
  }

  v9 = v13[3];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v17, 8);

  return v9;
}

void __58__CoreTelephonyClient_Registration__getMaxDataRate_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v9 rate];
  }
}

- (void)getSupportedDataRates:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__CoreTelephonyClient_Registration__getSupportedDataRates_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSupportedDataRatesRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__CoreTelephonyClient_Registration__getSupportedDataRates_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __70__CoreTelephonyClient_Registration__getSupportedDataRates_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 rates];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)getSupportedDataRates:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__CoreTelephonyClient_Registration__getSupportedDataRates_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSupportedDataRatesRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CoreTelephonyClient_Registration__getSupportedDataRates_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __65__CoreTelephonyClient_Registration__getSupportedDataRates_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 rates];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)get2GSwitchEnabled:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__CoreTelephonyClient_Registration__get2GSwitchEnabled___block_invoke;
  v12[3] = &unk_1E6A43CC8;
  v5 = v4;
  v13 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v12];
  v7 = [CTXPCGet2GSwitchEnabledRequest alloc];
  v8 = [(CTXPCMessage *)v7 initWithNamedArguments:MEMORY[0x1E695E0F8]];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__CoreTelephonyClient_Registration__get2GSwitchEnabled___block_invoke_2;
  v10[3] = &unk_1E6A463D0;
  v9 = v5;
  v11 = v9;
  [v6 sendRequest:v8 completionHandler:v10];
}

void __56__CoreTelephonyClient_Registration__get2GSwitchEnabled___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 enabled], v6);
}

- (BOOL)get2GSwitchEnabledSync:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__18;
  v19 = __Block_byref_object_dispose__18;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__CoreTelephonyClient_Registration__get2GSwitchEnabledSync___block_invoke;
  v14[3] = &unk_1E6A43BB0;
  v14[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v14];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [CTXPCGet2GSwitchEnabledRequest alloc];
  v6 = [(CTXPCMessage *)v5 initWithNamedArguments:MEMORY[0x1E695E0F8]];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__CoreTelephonyClient_Registration__get2GSwitchEnabledSync___block_invoke_2;
  v9[3] = &unk_1E6A44B30;
  v9[4] = &v15;
  v9[5] = &v10;
  [v4 sendRequest:v6 completionHandler:v9];
  if (a3)
  {
    *a3 = v16[5];
  }

  v7 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v15, 8);

  return v7;
}

void __60__CoreTelephonyClient_Registration__get2GSwitchEnabledSync___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  *(*(*(a1 + 40) + 8) + 24) = [v9 enabled];
}

- (void)get2GUserPreference:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__CoreTelephonyClient_Registration__get2GUserPreference___block_invoke;
  v12[3] = &unk_1E6A43CC8;
  v5 = v4;
  v13 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v12];
  v7 = [CTXPCGet2GUserPreferenceRequest alloc];
  v8 = [(CTXPCMessage *)v7 initWithNamedArguments:MEMORY[0x1E695E0F8]];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CoreTelephonyClient_Registration__get2GUserPreference___block_invoke_2;
  v10[3] = &unk_1E6A463D0;
  v9 = v5;
  v11 = v9;
  [v6 sendRequest:v8 completionHandler:v10];
}

void __57__CoreTelephonyClient_Registration__get2GUserPreference___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 enabled], v6);
}

- (BOOL)get2GUserPreferenceSync:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__18;
  v19 = __Block_byref_object_dispose__18;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__CoreTelephonyClient_Registration__get2GUserPreferenceSync___block_invoke;
  v14[3] = &unk_1E6A43BB0;
  v14[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v14];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [CTXPCGet2GUserPreferenceRequest alloc];
  v6 = [(CTXPCMessage *)v5 initWithNamedArguments:MEMORY[0x1E695E0F8]];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CoreTelephonyClient_Registration__get2GUserPreferenceSync___block_invoke_2;
  v9[3] = &unk_1E6A44B30;
  v9[4] = &v15;
  v9[5] = &v10;
  [v4 sendRequest:v6 completionHandler:v9];
  if (a3)
  {
    *a3 = v16[5];
  }

  v7 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v15, 8);

  return v7;
}

void __61__CoreTelephonyClient_Registration__get2GUserPreferenceSync___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  *(*(*(a1 + 40) + 8) + 24) = [v9 enabled];
}

- (void)getRegulatedRatsSwitchEnabled:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__CoreTelephonyClient_Registration__getRegulatedRatsSwitchEnabled_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegulatedRATsSwitchEnabledRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__CoreTelephonyClient_Registration__getRegulatedRatsSwitchEnabled_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __78__CoreTelephonyClient_Registration__getRegulatedRatsSwitchEnabled_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 enabled], v6);
}

- (BOOL)getRegulatedRatsSwitchEnabledSync:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__18;
  v21 = __Block_byref_object_dispose__18;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__CoreTelephonyClient_Registration__getRegulatedRatsSwitchEnabledSync_error___block_invoke;
  v16[3] = &unk_1E6A43BB0;
  v16[4] = &v17;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v16];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegulatedRATsSwitchEnabledRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__CoreTelephonyClient_Registration__getRegulatedRatsSwitchEnabledSync_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v17;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v18[5];
  }

  v9 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v17, 8);

  return v9;
}

void __77__CoreTelephonyClient_Registration__getRegulatedRatsSwitchEnabledSync_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  *(*(*(a1 + 40) + 8) + 24) = [v9 enabled];
}

- (void)getRegulatedRatsUserPreference:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__CoreTelephonyClient_Registration__getRegulatedRatsUserPreference_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegulatedRATsUserPreferenceRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__CoreTelephonyClient_Registration__getRegulatedRatsUserPreference_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __79__CoreTelephonyClient_Registration__getRegulatedRatsUserPreference_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 enabled], v6);
}

- (BOOL)getRegulatedRatsUserPreferenceSync:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__18;
  v21 = __Block_byref_object_dispose__18;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__CoreTelephonyClient_Registration__getRegulatedRatsUserPreferenceSync_error___block_invoke;
  v16[3] = &unk_1E6A43BB0;
  v16[4] = &v17;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v16];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegulatedRATsUserPreferenceRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__CoreTelephonyClient_Registration__getRegulatedRatsUserPreferenceSync_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v17;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v18[5];
  }

  v9 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v17, 8);

  return v9;
}

void __78__CoreTelephonyClient_Registration__getRegulatedRatsUserPreferenceSync_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  *(*(*(a1 + 40) + 8) + 24) = [v9 enabled];
}

- (void)fetchNetworkList:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  v9 = [(CTXPCSubscriptionContextRequest *)[CTXPCFetchNetworkListRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CoreTelephonyClient_Registration__fetchNetworkList_completion___block_invoke;
  v11[3] = &unk_1E6A463D0;
  v10 = v7;
  v12 = v10;
  [v8 sendRequest:v9 completionHandler:v11];
}

- (void)copyNetworkList:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__CoreTelephonyClient_Registration__copyNetworkList_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetNetworkListRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__CoreTelephonyClient_Registration__copyNetworkList_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __64__CoreTelephonyClient_Registration__copyNetworkList_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 networks];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)automaticallySelectNetwork:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  v9 = [(CTXPCSubscriptionContextRequest *)[CTXPCSelectNetworkRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CoreTelephonyClient_Registration__automaticallySelectNetwork_completion___block_invoke;
  v11[3] = &unk_1E6A463D0;
  v10 = v7;
  v12 = v10;
  [v8 sendRequest:v9 completionHandler:v11];
}

- (void)selectNetwork:(id)a3 network:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  v12 = [[CTXPCSelectNetworkRequest alloc] initWithContext:v8 network:v9];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__CoreTelephonyClient_Registration__selectNetwork_network_completion___block_invoke;
  v14[3] = &unk_1E6A463D0;
  v13 = v10;
  v15 = v13;
  [v11 sendRequest:v12 completionHandler:v14];
}

- (void)copyNetworkSelection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__CoreTelephonyClient_Registration__copyNetworkSelection_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetNetworkSelectionRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__CoreTelephonyClient_Registration__copyNetworkSelection_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __69__CoreTelephonyClient_Registration__copyNetworkSelection_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 network];
  (*(v10 + 16))(v10, v11, v6);
}

- (void)isNetworkSelectionMenuAvailable:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__CoreTelephonyClient_Registration__isNetworkSelectionMenuAvailable_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIsNetworkSelectionMenuAvailableRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__CoreTelephonyClient_Registration__isNetworkSelectionMenuAvailable_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __80__CoreTelephonyClient_Registration__isNetworkSelectionMenuAvailable_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 available], v6);
}

- (id)isNetworkSelectionMenuAvailable:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__CoreTelephonyClient_Registration__isNetworkSelectionMenuAvailable_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIsNetworkSelectionMenuAvailableRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CoreTelephonyClient_Registration__isNetworkSelectionMenuAvailable_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __75__CoreTelephonyClient_Registration__isNetworkSelectionMenuAvailable_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!v5)
  {
    v6 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "available")}];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)copyNetworkSelectionMode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__CoreTelephonyClient_Registration__copyNetworkSelectionMode_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetNetworkSelectionInfoRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__CoreTelephonyClient_Registration__copyNetworkSelectionMode_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __73__CoreTelephonyClient_Registration__copyNetworkSelectionMode_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  v10 = *(a1 + 32);
  v11 = [v9 info];
  v12 = CTNetworkSelectionModeToNetworkSelectionModeString([v11 selectionMode]);
  (*(v10 + 16))(v10, v12, v6);
}

- (void)copyNetworkSelectionInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__CoreTelephonyClient_Registration__copyNetworkSelectionInfo_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetNetworkSelectionInfoRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__CoreTelephonyClient_Registration__copyNetworkSelectionInfo_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __73__CoreTelephonyClient_Registration__copyNetworkSelectionInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 info];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)copyNetworkSelectionInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__CoreTelephonyClient_Registration__copyNetworkSelectionInfo_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetNetworkSelectionInfoRequest alloc] initWithContext:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_Registration__copyNetworkSelectionInfo_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __68__CoreTelephonyClient_Registration__copyNetworkSelectionInfo_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 info];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)isNetworkReselectionNeeded:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__CoreTelephonyClient_Registration__isNetworkReselectionNeeded_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIsNetworkReselectionNeededRequest alloc] initWithContext:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__CoreTelephonyClient_Registration__isNetworkReselectionNeeded_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __75__CoreTelephonyClient_Registration__isNetworkReselectionNeeded_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;
    v8 = v10;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v10;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), [v9 needsReselection], v6);
}

- (id)getEncryptionStatus:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__CoreTelephonyClient_Registration__getEncryptionStatus_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetEncryptionStatusRequest alloc] initWithDescriptor:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__CoreTelephonyClient_Registration__getEncryptionStatus_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __63__CoreTelephonyClient_Registration__getEncryptionStatus_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 info];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)getSignalStrengthMeasurements:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__CoreTelephonyClient_Registration__getSignalStrengthMeasurements_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [[CTXPCGetSignalStrengthMeasurementsRequest alloc] initWithDescriptor:v6 synchronous:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__CoreTelephonyClient_Registration__getSignalStrengthMeasurements_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __73__CoreTelephonyClient_Registration__getSignalStrengthMeasurements_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 measurements];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (void)getSignalStrengthMeasurements:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__CoreTelephonyClient_Registration__getSignalStrengthMeasurements_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetSignalStrengthMeasurementsRequest alloc] initWithDescriptor:v6 synchronous:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__CoreTelephonyClient_Registration__getSignalStrengthMeasurements_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __78__CoreTelephonyClient_Registration__getSignalStrengthMeasurements_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v12;
  }

  v10 = *(a1 + 32);
  v11 = [v9 measurements];
  (*(v10 + 16))(v10, v11, v6);
}

- (id)getPublicSignalStrength:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__CoreTelephonyClient_Registration__getPublicSignalStrength_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [[CTXPCGetSignalStrengthInfoRequest alloc] initWithDescriptor:v6 forPublic:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CoreTelephonyClient_Registration__getPublicSignalStrength_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __67__CoreTelephonyClient_Registration__getPublicSignalStrength_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 signalInfo];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)getCurrentRat:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__18;
  v23 = __Block_byref_object_dispose__18;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__CoreTelephonyClient_Registration__getCurrentRat_error___block_invoke;
  v18[3] = &unk_1E6A43BB0;
  v18[4] = &v19;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__18;
  v16 = __Block_byref_object_dispose__18;
  v17 = 0;
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetCurrentRatRequest alloc] initWithDescriptor:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__CoreTelephonyClient_Registration__getCurrentRat_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (a4)
  {
    *a4 = v20[5];
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void __57__CoreTelephonyClient_Registration__getCurrentRat_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v13;
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v13;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v10 = [v9 rat];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)copyRequiresResiliency:(id)a3 outError:(id *)a4
{
  v7 = a3;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__20;
    v22 = __Block_byref_object_dispose__20;
    v23 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__CoreTelephonyClient_Satellite__copyRequiresResiliency_outError___block_invoke;
    v17[3] = &unk_1E6A43BB0;
    v17[4] = &v18;
    v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__CoreTelephonyClient_Satellite__copyRequiresResiliency_outError___block_invoke_2;
    v12[3] = &unk_1E6A43D88;
    v12[4] = &v18;
    v12[5] = &v13;
    [v8 getRequiresResiliency:v7 completion:v12];
    v9 = v19[5];
    if (v9)
    {
      v10 = 0;
      if (a4)
      {
        *a4 = v9;
      }
    }

    else
    {
      v10 = [MEMORY[0x1E696AD98] numberWithBool:*(v14 + 24)];
    }

    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v18, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __66__CoreTelephonyClient_Satellite__copyRequiresResiliency_outError___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)getLocalPolicies:(id)a3 completion:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__CoreTelephonyClient_DataUsagePolicy__getLocalPolicies_completion___block_invoke;
  v13[3] = &unk_1E6A441C8;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_DataUsagePolicy__getLocalPolicies_completion___block_invoke_2;
  v11[3] = &unk_1E6A48580;
  v12 = v7;
  v10 = v7;
  [v9 getLocalPolicies:v8 completion:v11];
}

void __68__CoreTelephonyClient_DataUsagePolicy__getLocalPolicies_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 policies];
  (*(v4 + 16))(v4, v6, v5);
}

- (id)getLocalPolicies:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__21;
  v22 = __Block_byref_object_dispose__21;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__CoreTelephonyClient_DataUsagePolicy__getLocalPolicies_error___block_invoke;
  v17[3] = &unk_1E6A441F0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__21;
  v15 = __Block_byref_object_dispose__21;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CoreTelephonyClient_DataUsagePolicy__getLocalPolicies_error___block_invoke_2;
  v10[3] = &unk_1E6A485A8;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getLocalPolicies:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __63__CoreTelephonyClient_DataUsagePolicy__getLocalPolicies_error___block_invoke_2(uint64_t a1, void *a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v10 = obj;
  v6 = a2;
  v7 = [v6 policies];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)getRemotePolicies:(id)a3 completion:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__CoreTelephonyClient_DataUsagePolicy__getRemotePolicies_completion___block_invoke;
  v13[3] = &unk_1E6A441C8;
  v7 = v6;
  v14 = v7;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CoreTelephonyClient_DataUsagePolicy__getRemotePolicies_completion___block_invoke_2;
  v11[3] = &unk_1E6A48580;
  v12 = v7;
  v10 = v7;
  [v9 getRemotePolicies:v8 completion:v11];
}

void __69__CoreTelephonyClient_DataUsagePolicy__getRemotePolicies_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 policies];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)setLocalPolicies:(id)a3 completion:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_DataUsagePolicy__setLocalPolicies_completion___block_invoke;
  v11[3] = &unk_1E6A441C8;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v11];
  v10 = [[CTDataUsagePoliciesWrapper alloc] initWithPolicies:v8];

  [v9 setLocalPolicies:v10 completion:v7];
}

- (id)setLocalPolicies:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__21;
  v15 = __Block_byref_object_dispose__21;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__CoreTelephonyClient_DataUsagePolicy__setLocalPolicies___block_invoke;
  v10[3] = &unk_1E6A441F0;
  v10[4] = &v11;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v10];
  v6 = [[CTDataUsagePoliciesWrapper alloc] initWithPolicies:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__CoreTelephonyClient_DataUsagePolicy__setLocalPolicies___block_invoke_2;
  v9[3] = &unk_1E6A441F0;
  v9[4] = &v11;
  [v5 setLocalPolicies:v6 completion:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (void)setRemotePolicies:(id)a3 completion:(id)a4
{
  v6 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CoreTelephonyClient_DataUsagePolicy__setRemotePolicies_completion___block_invoke;
  v11[3] = &unk_1E6A441C8;
  v12 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v11];
  v10 = [[CTDataUsagePoliciesWrapper alloc] initWithPolicies:v8];

  [v9 setRemotePolicies:v10 completion:v7];
}

- (void)removePoliciesFromLocalDevice:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__CoreTelephonyClient_DataUsagePolicy__removePoliciesFromLocalDevice_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 removePoliciesFromLocalDevice:v8 completion:v7];
}

- (void)setSatelliteAppCategories:(id)a3 appCategories:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__CoreTelephonyClient_DataUsagePolicy__setSatelliteAppCategories_appCategories_completion___block_invoke;
  v13[3] = &unk_1E6A441C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 setSatelliteAppCategories:v11 appCategories:v10 completion:v9];
}

- (void)setUIConfiguredApns:(id)a3 apns:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CoreTelephonyClient_DeviceManagement__setUIConfiguredApns_apns_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = v10;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 setUIConfiguredApns:v8 apns:v9 completion:v11];
}

- (void)getUIConfiguredApns:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__CoreTelephonyClient_DeviceManagement__getUIConfiguredApns_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getUIConfiguredApns:v6 completion:v8];
}

- (id)getUIConfiguredApns:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__22;
  v22 = __Block_byref_object_dispose__22;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__CoreTelephonyClient_DeviceManagement__getUIConfiguredApns_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__22;
  v15 = __Block_byref_object_dispose__22;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CoreTelephonyClient_DeviceManagement__getUIConfiguredApns_error___block_invoke_2;
  v10[3] = &unk_1E6A459D8;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getUIConfiguredApns:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __67__CoreTelephonyClient_DeviceManagement__getUIConfiguredApns_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)resetUIConfiguredApns:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__CoreTelephonyClient_DeviceManagement__resetUIConfiguredApns_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 resetUIConfiguredApns:v6 completion:v8];
}

- (void)getConfiguredApns:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CoreTelephonyClient_DeviceManagement__getConfiguredApns_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getConfiguredApns:v6 completion:v8];
}

- (id)getConfiguredApns:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__22;
  v22 = __Block_byref_object_dispose__22;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__CoreTelephonyClient_DeviceManagement__getConfiguredApns_error___block_invoke;
  v17[3] = &unk_1E6A43BB0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__22;
  v15 = __Block_byref_object_dispose__22;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__CoreTelephonyClient_DeviceManagement__getConfiguredApns_error___block_invoke_2;
  v10[3] = &unk_1E6A43C00;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 getConfiguredApns:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __65__CoreTelephonyClient_DeviceManagement__getConfiguredApns_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (unint64_t)getGSMAUIControlSetting:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__22;
  v20 = __Block_byref_object_dispose__22;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__CoreTelephonyClient_DeviceManagement__getGSMAUIControlSetting_error___block_invoke;
  v15[3] = &unk_1E6A43BB0;
  v15[4] = &v16;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CoreTelephonyClient_DeviceManagement__getGSMAUIControlSetting_error___block_invoke_2;
  v10[3] = &unk_1E6A485D0;
  v10[4] = &v16;
  v10[5] = &v11;
  [v7 getGSMAUIControlSetting:v6 completion:v10];
  if (a4)
  {
    *a4 = v17[5];
  }

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __71__CoreTelephonyClient_DeviceManagement__getGSMAUIControlSetting_error___block_invoke_2(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)deletePersonalWallet:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__CoreTelephonyClient_DeviceManagement__deletePersonalWallet_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 deletePersonalWallet:v6 completion:v8];
}

- (id)deletePersonalWallet:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__22;
  v14 = __Block_byref_object_dispose__22;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__CoreTelephonyClient_DeviceManagement__deletePersonalWallet___block_invoke;
  v9[3] = &unk_1E6A43BB0;
  v9[4] = &v10;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__CoreTelephonyClient_DeviceManagement__deletePersonalWallet___block_invoke_2;
  v8[3] = &unk_1E6A43BB0;
  v8[4] = &v10;
  [v5 deletePersonalWallet:v4 completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)listPersonalWallets:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__22;
  v19 = __Block_byref_object_dispose__22;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__CoreTelephonyClient_DeviceManagement__listPersonalWallets___block_invoke;
  v14[3] = &unk_1E6A43BB0;
  v14[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v14];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__22;
  v12 = __Block_byref_object_dispose__22;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CoreTelephonyClient_DeviceManagement__listPersonalWallets___block_invoke_2;
  v7[3] = &unk_1E6A43C00;
  v7[4] = &v15;
  v7[5] = &v8;
  [v4 listPersonalWallets:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __61__CoreTelephonyClient_DeviceManagement__listPersonalWallets___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)renamePersonalWallet:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__22;
  v17 = __Block_byref_object_dispose__22;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CoreTelephonyClient_DeviceManagement__renamePersonalWallet_to___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CoreTelephonyClient_DeviceManagement__renamePersonalWallet_to___block_invoke_2;
  v11[3] = &unk_1E6A43BB0;
  v11[4] = &v13;
  [v8 renamePersonalWallet:v6 to:v7 completion:v11];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)transferPersonalWallet:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__22;
  v17 = __Block_byref_object_dispose__22;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CoreTelephonyClient_DeviceManagement__transferPersonalWallet_to___block_invoke;
  v12[3] = &unk_1E6A43BB0;
  v12[4] = &v13;
  v8 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CoreTelephonyClient_DeviceManagement__transferPersonalWallet_to___block_invoke_2;
  v11[3] = &unk_1E6A43BB0;
  v11[4] = &v13;
  [v8 transferPersonalWallet:v6 to:v7 completion:v11];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)getStewieSupport:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__23;
  v13 = __Block_byref_object_dispose__23;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__CoreTelephonyClient_Stewie__getStewieSupport___block_invoke;
  v8[3] = &unk_1E6A441F0;
  v8[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CoreTelephonyClient_Stewie__getStewieSupport___block_invoke_2;
  v7[3] = &unk_1E6A48AA8;
  v7[4] = &v9;
  v7[5] = &v15;
  [v4 getStewieSupport:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v10[5];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

void __48__CoreTelephonyClient_Stewie__getStewieSupport___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)getStewieSupportWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CoreTelephonyClient_Stewie__getStewieSupportWithCompletion___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = v4;
  v5 = v4;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getStewieSupport:v5];
}

- (void)requestStewieWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CoreTelephonyClient_Stewie__requestStewieWithContext_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 requestStewieWithContext:v8 completion:v7];
}

- (void)exitStewieWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CoreTelephonyClient_Stewie__exitStewieWithContext_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 exitStewieWithContext:v8 completion:v7];
}

- (void)getConnectionAssistantConfig:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CoreTelephonyClient_Stewie__getConnectionAssistantConfig___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = v4;
  v5 = v4;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getConnectionAssistantConfig:v5];
}

- (id)getConnectionAssistantConfigWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__23;
  v13 = __Block_byref_object_dispose__23;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__CoreTelephonyClient_Stewie__getConnectionAssistantConfigWithError___block_invoke;
  v8[3] = &unk_1E6A441F0;
  v8[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__CoreTelephonyClient_Stewie__getConnectionAssistantConfigWithError___block_invoke_2;
  v7[3] = &unk_1E6A48AD0;
  v7[4] = &v15;
  v7[5] = &v9;
  [v4 getConnectionAssistantConfig:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v10[5];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

void __69__CoreTelephonyClient_Stewie__getConnectionAssistantConfigWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)getConnectionAssistantState:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CoreTelephonyClient_Stewie__getConnectionAssistantState___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = v4;
  v5 = v4;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getConnectionAssistantState:v5];
}

- (id)getConnectionAssistantStateWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__23;
  v13 = __Block_byref_object_dispose__23;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__CoreTelephonyClient_Stewie__getConnectionAssistantStateWithError___block_invoke;
  v8[3] = &unk_1E6A441F0;
  v8[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__CoreTelephonyClient_Stewie__getConnectionAssistantStateWithError___block_invoke_2;
  v7[3] = &unk_1E6A48AF8;
  v7[4] = &v15;
  v7[5] = &v9;
  [v4 getConnectionAssistantState:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v10[5];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

void __68__CoreTelephonyClient_Stewie__getConnectionAssistantStateWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)getConnectionAssistantServicePlot:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CoreTelephonyClient_Stewie__getConnectionAssistantServicePlot___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = v4;
  v5 = v4;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getConnectionAssistantServicePlot:v5];
}

- (id)getConnectionAssistantServicePlotWithError:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__23;
  v13 = __Block_byref_object_dispose__23;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CoreTelephonyClient_Stewie__getConnectionAssistantServicePlotWithError___block_invoke;
  v8[3] = &unk_1E6A441F0;
  v8[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__CoreTelephonyClient_Stewie__getConnectionAssistantServicePlotWithError___block_invoke_2;
  v7[3] = &unk_1E6A48B20;
  v7[4] = &v15;
  v7[5] = &v9;
  [v4 getConnectionAssistantServicePlot:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v10[5];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

void __74__CoreTelephonyClient_Stewie__getConnectionAssistantServicePlotWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)reportStewieDeviceOrientation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__CoreTelephonyClient_Stewie__reportStewieDeviceOrientation_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 reportStewieDeviceOrientation:v8 completion:v7];
}

- (id)reportStewieDeviceOrientation:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__23;
  v14 = __Block_byref_object_dispose__23;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CoreTelephonyClient_Stewie__reportStewieDeviceOrientation___block_invoke;
  v9[3] = &unk_1E6A441F0;
  v9[4] = &v10;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__CoreTelephonyClient_Stewie__reportStewieDeviceOrientation___block_invoke_2;
  v8[3] = &unk_1E6A441F0;
  v8[4] = &v10;
  [v5 reportStewieDeviceOrientation:v4 completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)compressWithStewieCodec:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__CoreTelephonyClient_Stewie__compressWithStewieCodec_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 compressWithStewieCodec:v8 completion:v7];
}

- (void)activateStewieEmergencyTryOutWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__CoreTelephonyClient_Stewie__activateStewieEmergencyTryOutWithCompletion___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = v4;
  v5 = v4;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 activateStewieEmergencyTryOutWithCompletion:v5];
}

- (void)reportStewieConnectionAssistantEvent:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__CoreTelephonyClient_Stewie__reportStewieConnectionAssistantEvent_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 reportStewieConnectionAssistantEvent:v8 completion:v7];
}

- (id)reportStewieConnectionAssistantEvent:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__23;
  v14 = __Block_byref_object_dispose__23;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__CoreTelephonyClient_Stewie__reportStewieConnectionAssistantEvent___block_invoke;
  v9[3] = &unk_1E6A441F0;
  v9[4] = &v10;
  v5 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__CoreTelephonyClient_Stewie__reportStewieConnectionAssistantEvent___block_invoke_2;
  v8[3] = &unk_1E6A441F0;
  v8[4] = &v10;
  [v5 reportStewieConnectionAssistantEvent:v4 completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)fetchRoadsideProvidersWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__23;
  v22 = __Block_byref_object_dispose__23;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__CoreTelephonyClient_Stewie__fetchRoadsideProvidersWithContext_error___block_invoke;
  v17[3] = &unk_1E6A441F0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__23;
  v15 = __Block_byref_object_dispose__23;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CoreTelephonyClient_Stewie__fetchRoadsideProvidersWithContext_error___block_invoke_2;
  v10[3] = &unk_1E6A48B48;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 fetchRoadsideProvidersWithContext:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __71__CoreTelephonyClient_Stewie__fetchRoadsideProvidersWithContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)fetchRoadsideProvidersWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CoreTelephonyClient_Stewie__fetchRoadsideProvidersWithContext_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 fetchRoadsideProvidersWithContext:v8 completion:v7];
}

- (id)selectRoadsideProviderWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__23;
  v22 = __Block_byref_object_dispose__23;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__CoreTelephonyClient_Stewie__selectRoadsideProviderWithContext_error___block_invoke;
  v17[3] = &unk_1E6A441F0;
  v17[4] = &v18;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v17];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__23;
  v15 = __Block_byref_object_dispose__23;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CoreTelephonyClient_Stewie__selectRoadsideProviderWithContext_error___block_invoke_2;
  v10[3] = &unk_1E6A48B70;
  v10[4] = &v18;
  v10[5] = &v11;
  [v7 selectRoadsideProviderWithContext:v6 completion:v10];
  if (a4)
  {
    *a4 = v19[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __71__CoreTelephonyClient_Stewie__selectRoadsideProviderWithContext_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)selectRoadsideProviderWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CoreTelephonyClient_Stewie__selectRoadsideProviderWithContext_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 selectRoadsideProviderWithContext:v8 completion:v7];
}

- (id)getResumableRoadsideProvider:(id *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__CoreTelephonyClient_Stewie__getResumableRoadsideProvider___block_invoke;
  v14[3] = &unk_1E6A441F0;
  v14[4] = &v15;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v14];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__23;
  v12 = __Block_byref_object_dispose__23;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CoreTelephonyClient_Stewie__getResumableRoadsideProvider___block_invoke_2;
  v7[3] = &unk_1E6A48B98;
  v7[4] = &v15;
  v7[5] = &v8;
  [v4 getResumableRoadsideProvider:v7];
  if (a3)
  {
    *a3 = v16[5];
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v15, 8);

  return v5;
}

void __60__CoreTelephonyClient_Stewie__getResumableRoadsideProvider___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)getResumableRoadsideProviderWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__CoreTelephonyClient_Stewie__getResumableRoadsideProviderWithCompletion___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = v4;
  v5 = v4;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getResumableRoadsideProvider:v5];
}

- (BOOL)isAnyPlanTransferableFromThisDeviceForFlow:(unint64_t)a3 OrError:(id *)a4
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__24;
  v20 = __Block_byref_object_dispose__24;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__CoreTelephonyClient_PlanTransfer__isAnyPlanTransferableFromThisDeviceForFlow_OrError___block_invoke;
  v15[3] = &unk_1E6A43BB0;
  v15[4] = &v16;
  v6 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v15];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [[CTXPCIsAnyPlanTransferableFromThisDeviceForFlowRequest alloc] initWithFlowType:a3];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__CoreTelephonyClient_PlanTransfer__isAnyPlanTransferableFromThisDeviceForFlow_OrError___block_invoke_2;
  v10[3] = &unk_1E6A44B30;
  v10[4] = &v16;
  v10[5] = &v11;
  [v6 sendRequest:v7 completionHandler:v10];

  if (a4)
  {
    *a4 = v17[5];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

void __88__CoreTelephonyClient_PlanTransfer__isAnyPlanTransferableFromThisDeviceForFlow_OrError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v10;
    }

    else
    {
      v9 = 0;
    }

    *(*(*(a1 + 40) + 8) + 24) = [v9 result];
  }
}

- (id)bootstrapPlanTransferForEndpoint:(unint64_t)a3 usingMessageSession:(id)a4
{
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__24;
  v16 = __Block_byref_object_dispose__24;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__CoreTelephonyClient_PlanTransfer__bootstrapPlanTransferForEndpoint_usingMessageSession___block_invoke;
  v11[3] = &unk_1E6A43BB0;
  v11[4] = &v12;
  v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__CoreTelephonyClient_PlanTransfer__bootstrapPlanTransferForEndpoint_usingMessageSession___block_invoke_2;
  v10[3] = &unk_1E6A43BB0;
  v10[4] = &v12;
  [v7 bootstrapPlanTransferForEndpoint:a3 flowType:2 usingMessageSession:v6 completion:v10];
  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

- (void)bootstrapPlanTransferForEndpoint:(unint64_t)a3 flowType:(unint64_t)a4 usingMessageSession:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __110__CoreTelephonyClient_PlanTransfer__bootstrapPlanTransferForEndpoint_flowType_usingMessageSession_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v12 = v11;
  v15 = v12;
  v13 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  [v13 bootstrapPlanTransferForEndpoint:a3 flowType:a4 usingMessageSession:v10 completion:v12];
}

- (void)isAnyPlanOfTransferCapability:(unint64_t)a3 availableForThisDeviceWithCompletion:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__CoreTelephonyClient_PlanTransfer__isAnyPlanOfTransferCapability_availableForThisDeviceWithCompletion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v7 = v6;
  v14 = v7;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v9 = [[CTXPCIsAnyPlanOfTransferCapabilityAvailableForThisDeviceRequest alloc] initWithCapability:a3];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __104__CoreTelephonyClient_PlanTransfer__isAnyPlanOfTransferCapability_availableForThisDeviceWithCompletion___block_invoke_2;
  v11[3] = &unk_1E6A463D0;
  v10 = v7;
  v12 = v10;
  [v8 sendRequest:v9 completionHandler:v11];
}

void __104__CoreTelephonyClient_PlanTransfer__isAnyPlanOfTransferCapability_availableForThisDeviceWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v11;
    v9 = v11;
    v10 = v8;
  }

  else
  {
    v10 = 0;
    v9 = v11;
  }

  (*(v7 + 16))(v7, [v10 result], v6);
}

- (id)endPlanTransferForEndPoint:(unint64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__24;
  v14 = __Block_byref_object_dispose__24;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__CoreTelephonyClient_PlanTransfer__endPlanTransferForEndPoint___block_invoke;
  v9[3] = &unk_1E6A43BB0;
  v9[4] = &v10;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v9];
  v5 = [[CTXPCEndPlanTransferRequest alloc] initWithEndpoint:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CoreTelephonyClient_PlanTransfer__endPlanTransferForEndPoint___block_invoke_2;
  v8[3] = &unk_1E6A44B08;
  v8[4] = &v10;
  [v4 sendRequest:v5 completionHandler:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)isPreSharedKeyForReconnectionPresent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__CoreTelephonyClient_PlanTransfer__isPreSharedKeyForReconnectionPresent_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isPreSharedKeyForReconnectionPresent:v6 completion:v8];
}

- (void)establishReconnectionCredentialsUsingMessageSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__CoreTelephonyClient_PlanTransfer__establishReconnectionCredentialsUsingMessageSession_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = v7;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 establishReconnectionCredentialsUsingMessageSession:v6 completion:v8];
}

- (void)clearReconnectionCredentials:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__CoreTelephonyClient_PlanTransfer__clearReconnectionCredentials___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = v4;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 clearReconnectionCredentials:v5];
}

- (void)activateProximityTransfer:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__CoreTelephonyClient_PlanTransfer__activateProximityTransfer_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v7 = v6;
  v14 = v7;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v9 = [[CTXPCActivateProximityTransferRequest alloc] initWithEndpoint:a3];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__CoreTelephonyClient_PlanTransfer__activateProximityTransfer_completion___block_invoke_2;
  v11[3] = &unk_1E6A463D0;
  v10 = v7;
  v12 = v10;
  [v8 sendRequest:v9 completionHandler:v11];
}

- (void)validateProximityTransfer:(unint64_t)a3 pin:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &__block_literal_global_13;
  }

  if (v8)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__CoreTelephonyClient_PlanTransfer__validateProximityTransfer_pin_completion___block_invoke_2;
    v17[3] = &unk_1E6A43CC8;
    v11 = v10;
    v18 = v11;
    v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v17];
    v13 = [[CTXPCValidateProximityTransferRequest alloc] initWithEndpoint:a3 pin:v8];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__CoreTelephonyClient_PlanTransfer__validateProximityTransfer_pin_completion___block_invoke_3;
    v15[3] = &unk_1E6A463D0;
    v16 = v11;
    [v12 sendRequest:v13 completionHandler:v15];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v10 + 2))(v10, v14);
  }
}

- (void)resetProximityTransportExtension:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__CoreTelephonyClient_PlanTransfer__resetProximityTransportExtension___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v5 = v4;
  v12 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v11];
  v7 = objc_alloc_init(CTXPCResetProximityTransportExtensionRequest);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__CoreTelephonyClient_PlanTransfer__resetProximityTransportExtension___block_invoke_2;
  v9[3] = &unk_1E6A463D0;
  v8 = v5;
  v10 = v8;
  [v6 sendRequest:v7 completionHandler:v9];
}

- (void)prepareCrossPlatformPlanTransfer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__block_literal_global_17;
  }

  if (v6)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__CoreTelephonyClient_PlanTransfer__prepareCrossPlatformPlanTransfer_completion___block_invoke_2;
    v15[3] = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v15];
    v11 = [[CTXPCPrepareCrossPlatformPlanTransferRequest alloc] initWithRequest:v6];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __81__CoreTelephonyClient_PlanTransfer__prepareCrossPlatformPlanTransfer_completion___block_invoke_3;
    v13[3] = &unk_1E6A463D0;
    v14 = v9;
    [v10 sendRequest:v11 completionHandler:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v8 + 2))(v8, v12);
  }
}

- (void)invalidateCrossPlatformPlanTransfer:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__CoreTelephonyClient_PlanTransfer__invalidateCrossPlatformPlanTransfer___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v5 = v4;
  v12 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v11];
  v7 = objc_alloc_init(CTXPCInvalidateCrossPlatformPlanTransferRequest);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__CoreTelephonyClient_PlanTransfer__invalidateCrossPlatformPlanTransfer___block_invoke_2;
  v9[3] = &unk_1E6A463D0;
  v8 = v5;
  v10 = v8;
  [v6 sendRequest:v7 completionHandler:v9];
}

- (id)getLocalDeviceIdentifierForSIMTransfer:(id *)a3
{
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__24;
    v23 = __Block_byref_object_dispose__24;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__24;
    v17 = __Block_byref_object_dispose__24;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__CoreTelephonyClient_PlanTransfer__getLocalDeviceIdentifierForSIMTransfer___block_invoke;
    v12[3] = &unk_1E6A43BB0;
    v12[4] = &v19;
    v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v12];
    v8 = [[CTXPCGetLocalDeviceIdentifierRequest alloc] initWithType:3 clientBundleIdentifier:v6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__CoreTelephonyClient_PlanTransfer__getLocalDeviceIdentifierForSIMTransfer___block_invoke_2;
    v11[3] = &unk_1E6A44B30;
    v11[4] = &v13;
    v11[5] = &v19;
    [v7 sendRequest:v8 completionHandler:v11];

    if (a3)
    {
      *a3 = v20[5];
    }

    v9 = v14[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }

  else if (a3)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
    *a3 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __76__CoreTelephonyClient_PlanTransfer__getLocalDeviceIdentifierForSIMTransfer___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v15;
    v8 = v15;
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = v15;
  }

  v10 = [v9 deviceID];
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
}

- (void)prepareCrossPlatformCellularPlanLabel:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__CoreTelephonyClient_PlanTransfer__prepareCrossPlatformCellularPlanLabel_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = v7;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCPrepareCrossPlatformCellularPlanLabelRequest alloc] initWithPlanLabels:v6];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__CoreTelephonyClient_PlanTransfer__prepareCrossPlatformCellularPlanLabel_completion___block_invoke_2;
  v12[3] = &unk_1E6A463D0;
  v11 = v8;
  v13 = v11;
  [v9 sendRequest:v10 completionHandler:v12];
}

void __86__CoreTelephonyClient_PlanTransfer__prepareCrossPlatformCellularPlanLabel_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v12;
    v9 = v12;
    v10 = v8;
  }

  else
  {
    v10 = 0;
    v9 = v12;
  }

  v11 = [v10 info];
  (*(v7 + 16))(v7, v11, v6);
}

- (void)carrierOneTimeCodeSendersWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__CoreTelephonyClient_PlanTransfer__carrierOneTimeCodeSendersWithCompletion___block_invoke;
    v5[3] = &unk_1E6A48BC0;
    objc_copyWeak(&v7, &location);
    v5[4] = self;
    v6 = v4;
    [(CoreTelephonyClient *)self getSubscriptionInfo:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [CoreTelephonyClient(PlanTransfer) carrierOneTimeCodeSendersWithCompletion:];
  }
}

void __77__CoreTelephonyClient_PlanTransfer__carrierOneTimeCodeSendersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v21 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __77__CoreTelephonyClient_PlanTransfer__carrierOneTimeCodeSendersWithCompletion___block_invoke_cold_1();
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    (*(*(a1 + 40) + 16))(*(a1 + 40));
    v6 = v5;
    goto LABEL_25;
  }

  v24 = [[CTBundle alloc] initWithBundleType:1, WeakRetained];
  v35[0] = @"PhoneAccountTransfer";
  v35[1] = @"OneTimeCodeSenders";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v21 subscriptions];
  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v9)
  {
    v22 = 0;
    v6 = 0;
    v10 = *v27;
    do
    {
      v11 = 0;
      v12 = v6;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * v11);
        v14 = *(a1 + 32);
        v15 = [v13 context];
        v25 = v12;
        v16 = [v14 copyCarrierBundleValue:v15 keyHierarchy:v7 bundleType:v24 error:&v25];
        v6 = v25;

        if (v6)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v17 = CTSubscriptionSlotAsString([v13 slotID]);
            *buf = 136315394;
            v31 = v17;
            v32 = 2112;
            v33 = v6;
            _os_log_error_impl(&dword_182E9B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "query CB for %s failed with error : %@", buf, 0x16u);
          }
        }

        else if (v16)
        {
          if (v22)
          {
            [v22 addObjectsFromArray:v16];
          }

          else
          {
            v22 = [MEMORY[0x1E695DF70] arrayWithArray:v16];
          }
        }

        ++v11;
        v12 = v6;
      }

      while (v9 != v11);
      v8 = obj;
      v18 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      v9 = v18;
    }

    while (v18);
  }

  else
  {
    v22 = 0;
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
LABEL_25:

  v19 = *MEMORY[0x1E69E9840];
}

- (id)loadCarrierStoreVisitStatusForCarrier:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__24;
    v19[4] = __Block_byref_object_dispose__24;
    v20 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __81__CoreTelephonyClient_PlanTransfer__loadCarrierStoreVisitStatusForCarrier_error___block_invoke;
    v18[3] = &unk_1E6A43BB0;
    v18[4] = v19;
    v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__24;
    v16 = __Block_byref_object_dispose__24;
    v17 = 0;
    v8 = [[CTXPCLoadCarrierStoreVisitStatusRequest alloc] initWithCarrier:v6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__CoreTelephonyClient_PlanTransfer__loadCarrierStoreVisitStatusForCarrier_error___block_invoke_2;
    v11[3] = &unk_1E6A44B30;
    v11[4] = v19;
    v11[5] = &v12;
    [v7 sendRequest:v8 completionHandler:v11];

    v9 = v13[5];
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(v19, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __81__CoreTelephonyClient_PlanTransfer__loadCarrierStoreVisitStatusForCarrier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = v5;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else
  {
    v10 = v14;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v10;
    }

    else
    {
      v9 = 0;
    }

    v11 = [v9 visited];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (void)saveSimSetupInfo:(id)a3 info:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &__block_literal_global_32_0;
  }

  if ([v8 length])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__CoreTelephonyClient_PlanTransfer__saveSimSetupInfo_info_completion___block_invoke_2;
    v18[3] = &unk_1E6A43CC8;
    v12 = v11;
    v19 = v12;
    v13 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v18];
    v14 = [[CTXPCSaveSimSetupInfoRequest alloc] initWithInfo:v8 info:v9];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__CoreTelephonyClient_PlanTransfer__saveSimSetupInfo_info_completion___block_invoke_3;
    v16[3] = &unk_1E6A463D0;
    v17 = v12;
    [v13 sendRequest:v14 completionHandler:v16];
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v11 + 2))(v11, v15);
  }
}

- (id)loadSimSetupInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__24;
    v19[4] = __Block_byref_object_dispose__24;
    v20 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__CoreTelephonyClient_PlanTransfer__loadSimSetupInfo_error___block_invoke;
    v18[3] = &unk_1E6A43BB0;
    v18[4] = v19;
    v7 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v18];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__24;
    v16 = __Block_byref_object_dispose__24;
    v17 = 0;
    v8 = [[CTXPCLoadSimSetupInfoRequest alloc] initWithInfo:v6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__CoreTelephonyClient_PlanTransfer__loadSimSetupInfo_error___block_invoke_2;
    v11[3] = &unk_1E6A44B30;
    v11[4] = v19;
    v11[5] = &v12;
    [v7 sendRequest:v8 completionHandler:v11];

    v9 = v13[5];
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(v19, 8);
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __60__CoreTelephonyClient_PlanTransfer__loadSimSetupInfo_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __60__CoreTelephonyClient_PlanTransfer__loadSimSetupInfo_error___block_invoke_2_cold_1(v6);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    v7 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 info];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

@end