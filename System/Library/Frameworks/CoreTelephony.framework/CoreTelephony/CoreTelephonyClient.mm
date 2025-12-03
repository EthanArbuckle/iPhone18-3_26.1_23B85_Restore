@interface CoreTelephonyClient
+ (id)sharedMultiplexer;
- ($0AC6E346AE4835514AAA8AC86D8F4844)checkCellularDiagnosticsStatusDetails:(id *)details;
- (BOOL)acknowledgeIncomingMessages:(id)messages withMessageIDList:(id)list withError:(id *)error;
- (BOOL)addParticipants:(id)participants toGroupChat:(id)chat withParticipantsToAdd:(id)add withOperationID:(id)d withSecurity:(id)security withError:(id *)error;
- (BOOL)changeIcon:(id)icon forGroupChat:(id)chat withNewIcon:(id)newIcon withOperationID:(id)d withSecurity:(id)security withError:(id *)error;
- (BOOL)changeSubject:(id)subject forGroupChat:(id)chat withNewSubject:(id)newSubject withOperationID:(id)d withSecurity:(id)security withError:(id *)error;
- (BOOL)context:(id)context isMandatoryDisabledVoLTE:(id *)e;
- (BOOL)context:(id)context isProtectedIdentitySupported:(id)supported error:(id *)error;
- (BOOL)create:(id)create groupChat:(id)chat withOperationID:(id)d withError:(id *)error;
- (BOOL)deleteChat:(id)chat chat:(id)a4 withError:(id *)error;
- (BOOL)disableBusinessMessaging:(id)messaging withError:(id *)error;
- (BOOL)disableLazuli:(id)lazuli withError:(id *)error;
- (BOOL)enableBusinessMessaging:(id)messaging withError:(id *)error;
- (BOOL)enableLazuli:(id)lazuli withError:(id *)error;
- (BOOL)exit:(id)exit groupChat:(id)chat withOperationID:(id)d withError:(id *)error;
- (BOOL)fetchRemoteCapabilities:(id)capabilities forDestination:(id)destination withOptions:(id)options withOperationID:(id)d withError:(id *)error;
- (BOOL)fetchRenderInformation:(id)information forChatBot:(id)bot withOperationID:(id)d withError:(id *)error;
- (BOOL)get2GSwitchEnabledSync:(id *)sync;
- (BOOL)get2GUserPreferenceSync:(id *)sync;
- (BOOL)getInternationalDataAccessStatusSync:(id *)sync;
- (BOOL)getInternationalDataAccessSync:(id)sync error:(id *)error;
- (BOOL)getRegulatedRatsSwitchEnabledSync:(id)sync error:(id *)error;
- (BOOL)getRegulatedRatsUserPreferenceSync:(id)sync error:(id *)error;
- (BOOL)getSupportDynamicDataSimSwitchSync:(id *)sync;
- (BOOL)hasDedicatedBearerSupport;
- (BOOL)isAnyPlanTransferableFromThisDeviceForFlow:(unint64_t)flow OrError:(id *)error;
- (BOOL)isAttachApnSettingAllowed:(id)allowed error:(id *)error;
- (BOOL)isDedicatedBearerPresent:(id)present error:(id *)error;
- (BOOL)isEmergencyNumber:(id)number number:(id)a4 error:(id *)error;
- (BOOL)isEmergencyNumberWithWhitelistIncluded:(id)included number:(id)number error:(id *)error;
- (BOOL)isPNRSupported:(id)supported outError:(id *)error;
- (BOOL)isPhoneNumberCredentialValid:(id)valid outError:(id *)error;
- (BOOL)isPrivateNetworkEvaluationNeeded:(id *)needed;
- (BOOL)isPrivateNetworkSIM:(id)m error:(id *)error;
- (BOOL)isTetheringEditingSupported:(id)supported error:(id *)error;
- (BOOL)removeGeofenceProfile;
- (BOOL)removeParticipants:(id)participants fromGroupChat:(id)chat withParticipantsToRemove:(id)remove withOperationID:(id)d withSecurity:(id)security withError:(id *)error;
- (BOOL)reportChatbotSpam:(id)spam forChatbot:(id)chatbot withSpamReportInfo:(id)info andOperationID:(id)d withError:(id *)error;
- (BOOL)reportLazuliSpamWithContext:(id)context destination:(id)destination spamReportInfo:(id)info operationID:(id)d error:(id *)error;
- (BOOL)restoreToSystemBundles:(id *)bundles;
- (BOOL)revokeMessage:(id)message withRevokeData:(id)data withMessageID:(id)d withError:(id *)error;
- (BOOL)sendComposingIndicator:(id)indicator to:(id)to messageID:(id)d indication:(id)indication withSecurity:(id)security error:(id *)error;
- (BOOL)sendComposingIndicator:(id)indicator toGroupDestination:(id)destination withMessageID:(id)d withIndication:(id)indication withSecurity:(id)security withError:(id *)error;
- (BOOL)sendDeviceAction:(id)action to:(id)to withMessageID:(id)d withAction:(id)withAction withError:(id *)error;
- (BOOL)sendDeviceSettings:(id)settings to:(id)to withMessageID:(id)d withSetting:(id)setting withError:(id *)error;
- (BOOL)sendDispositionNotificationMessage:(id)message to:(id)to withMessageID:(id)d withDisposition:(int64_t)disposition forMessageID:(id)iD withSecurity:(id)security withError:(id *)error;
- (BOOL)sendFileTransferMessage:(id)message to:(id)to withMessageID:(id)d withFileInformation:(id)information withSecurity:(id)security withError:(id *)error;
- (BOOL)sendFileTransferMessage:(id)message toGroupDestination:(id)destination withMessageID:(id)d withFileInformation:(id)information withSecurity:(id)security withError:(id *)error;
- (BOOL)sendGeolocationMessage:(id)message to:(id)to withMessageID:(id)d withGeoPush:(id)push withSecurity:(id)security withError:(id *)error;
- (BOOL)sendGeolocationMessage:(id)message toGroupDestination:(id)destination withMessageID:(id)d withGeoPush:(id)push withSecurity:(id)security withError:(id *)error;
- (BOOL)sendGroupDispositionNotificationMessage:(id)message toGroup:(id)group to:(id)to withMessageID:(id)d withDisposition:(int64_t)disposition forMessageID:(id)iD withSecurity:(id)security withError:(id *)self0;
- (BOOL)sendOneToManyFileTransferMessage:(id)message to:(id)to withMessageID:(id)d withDescriptor:(id)descriptor withError:(id *)error;
- (BOOL)sendOneToManyGeolocationMessage:(id)message to:(id)to withMessageID:(id)d withGeoPush:(id)push withError:(id *)error;
- (BOOL)sendOneToManyTextMessage:(id)message to:(id)to withMessageID:(id)d withMessage:(id)withMessage withError:(id *)error;
- (BOOL)sendResponseForSuggestedAction:(id)action to:(id)to withMessageID:(id)d response:(id)response withError:(id *)error;
- (BOOL)sendResponseForSuggestedReply:(id)reply to:(id)to withMessageID:(id)d response:(id)response withError:(id *)error;
- (BOOL)sendTextMessage:(id)message to:(id)to withMessageID:(id)d withMessage:(id)withMessage withSecurity:(id)security withError:(id *)error;
- (BOOL)sendTextMessage:(id)message toGroupDestination:(id)destination withMessageID:(id)d withMessage:(id)withMessage withSecurity:(id)security withError:(id *)error;
- (BOOL)shouldShowUserWarningWhenDialingCallOnContext:(id)context error:(id *)error;
- (BOOL)supportsEmbeddedSIM;
- (BOOL)supportsRequestWithSelector:(SEL)selector;
- (BOOL)supportsSelector:(SEL)selector withContext:(id)context error:(id *)error;
- (BOOL)updateGeofenceProfile:(id)profile;
- (CoreTelephonyClient)initWithQueue:(dispatch_queue_s *)queue;
- (CoreTelephonyClient)initWithQueue:(dispatch_queue_s *)queue multiplexer:(id)multiplexer;
- (CoreTelephonyClient)initWithQueue:(dispatch_queue_s *)queue multiplexer:(id)multiplexer gestaltHelper:(id)helper;
- (id)addDedicatedBearer:(id)bearer error:(id *)error;
- (id)billingCycleEndDatesForLastPeriods:(unint64_t)periods error:(id *)error;
- (id)bootstrapPlanTransferForEndpoint:(unint64_t)endpoint usingMessageSession:(id)session;
- (id)cancelSIMToolkitUSSDSession:(id)session;
- (id)checkBasebandConfigUpdateInfo:(id *)info;
- (id)checkEmbeddedSimHealthWithError:(id *)error;
- (id)context:(id)context addPhoneServicesDevice:(id)device;
- (id)context:(id)context canSetCapability:(id)capability allowed:(BOOL *)allowed with:(id *)with;
- (id)context:(id)context evaluateMobileSubscriberIdentity:(id)identity;
- (id)context:(id)context getAttachApnSettings:(id *)settings;
- (id)context:(id)context getCapability:(id)capability status:(BOOL *)status with:(id *)with;
- (id)context:(id)context getCarrierBundleValue:(id)value error:(id *)error;
- (id)context:(id)context getEncryptedIdentity:(id)identity error:(id *)error;
- (id)context:(id)context getPhoneNumberSignature:(id *)signature;
- (id)context:(id)context getPseudoIdentityFor:(id)for error:(id *)error;
- (id)context:(id)context getSystemCapabilities:(id *)capabilities;
- (id)context:(id)context modifyAttachApnSettings:(id)settings;
- (id)context:(id)context recheckPhoneServicesAccountStatus:(id)status;
- (id)context:(id)context removePhoneServicesDevice:(id)device;
- (id)copyBundleIdentifier:(id)identifier bundleType:(id)type error:(id *)error;
- (id)copyBundleLocation:(id)location bundleType:(id)type error:(id *)error;
- (id)copyBundleVersion:(id)version bundleType:(id)type error:(id *)error;
- (id)copyCarrierBundleLocation:(id)location error:(id *)error;
- (id)copyCarrierBundleValue:(id)value key:(id)key bundleType:(id)type error:(id *)error;
- (id)copyCarrierBundleValue:(id)value keyHierarchy:(id)hierarchy bundleType:(id)type error:(id *)error;
- (id)copyCarrierBundleValueWithCountryBundleLookup:(id)lookup keyHierarchy:(id)hierarchy matchingInfo:(id)info error:(id *)error;
- (id)copyCarrierBundleValueWithDefault:(id)default key:(id)key bundleType:(id)type error:(id *)error;
- (id)copyCarrierBundleValueWithDefault:(id)default keyHierarchy:(id)hierarchy bundleType:(id)type error:(id *)error;
- (id)copyCarrierBundleVersion:(id)version error:(id *)error;
- (id)copyEmergencyModeWithError:(id *)error;
- (id)copyGid1:(id)gid1 error:(id *)error;
- (id)copyGid2:(id)gid2 error:(id *)error;
- (id)copyIsInHomeCountry:(id)country error:(id *)error;
- (id)copyLabel:(id)label error:(id *)error;
- (id)copyLastKnownMobileCountryCode:(id)code error:(id *)error;
- (id)copyLastKnownMobileSubscriberCountryCode:(id)code error:(id *)error;
- (id)copyMccOrPlmnsListForIso3CountryCode:(id)code error:(id *)error;
- (id)copyMobileCountryCode:(id)code error:(id *)error;
- (id)copyMobileNetworkCode:(id)code error:(id *)error;
- (id)copyMobileSubscriberCountryCode:(id)code error:(id *)error;
- (id)copyMobileSubscriberIdentity:(id)identity error:(id *)error;
- (id)copyMobileSubscriberIso3CountryCode:(id)code MNC:(id)c error:(id *)error;
- (id)copyMobileSubscriberIsoCountryCode:(id)code error:(id *)error;
- (id)copyMobileSubscriberIsoSubregionCode:(id)code MNC:(id)c error:(id *)error;
- (id)copyMobileSubscriberNetworkCode:(id)code error:(id *)error;
- (id)copyNetworkSelectionInfo:(id)info error:(id *)error;
- (id)copyPublicCellId:(id)id error:(id *)error;
- (id)copyRadioAccessTechnology:(id)technology error:(id *)error;
- (id)copyRegistrationDisplayStatus:(id)status error:(id *)error;
- (id)copyRegistrationStatus:(id)status error:(id *)error;
- (id)copyRequiresResiliency:(id)resiliency outError:(id *)error;
- (id)copySIMIdentity:(id)identity error:(id *)error;
- (id)copyServingPlmn:(id)plmn error:(id *)error;
- (id)decodeSuggestionsBase64:(id)base64 withBase64String:(id)string withError:(id *)error;
- (id)delegate;
- (id)deletePersonalWallet:(id)wallet;
- (id)dispatchBlockToClientAsync:(dispatch_queue_s *);
- (id)endPlanTransferForEndPoint:(unint64_t)point;
- (id)enterLoopBackMode;
- (id)fetchRoadsideProvidersWithContext:(id)context error:(id *)error;
- (id)fetchSIMLockValue:(id)value error:(id *)error;
- (id)forceRollAllTransportKeys;
- (id)getActiveConnections:(id)connections error:(id *)error;
- (id)getActiveContexts:(id *)contexts;
- (id)getAllEmergencyNumbersWithError:(id *)error;
- (id)getAllowDevSignedCarrierBundlesFlag;
- (id)getBandInfo:(id)info error:(id *)error;
- (id)getBasebandRadioFrequencyFrontEndScanData:(id *)data;
- (id)getCallCapabilities:(id)capabilities error:(id *)error;
- (id)getCellularUsageWorkspaceInfo:(id *)info;
- (id)getConfiguredApns:(id)apns error:(id *)error;
- (id)getConnectionAssistantConfigWithError:(id *)error;
- (id)getConnectionAssistantServicePlotWithError:(id *)error;
- (id)getConnectionAssistantStateWithError:(id *)error;
- (id)getCountryBundleIdentifierForCountryCode:(id)code error:(id *)error;
- (id)getCountryBundleLocationForBundleIdentifier:(id)identifier error:(id *)error;
- (id)getCountryBundleLocationForMatchingInfo:(id)info error:(id *)error;
- (id)getCurrentDataServiceDescriptorSync:(id *)sync;
- (id)getCurrentDataSubscriptionContextSync:(id *)sync;
- (id)getCurrentRat:(id)rat error:(id *)error;
- (id)getDataStatus:(id)status error:(id *)error;
- (id)getDataStatusBasic:(id)basic error:(id *)error;
- (id)getDescriptorsForDomain:(int64_t)domain error:(id *)error;
- (id)getEmergencyTextNumbers:(id)numbers error:(id *)error;
- (id)getEncryptionStatus:(id)status error:(id *)error;
- (id)getEnglishCarrierNameFor:(id)for error:(id *)error;
- (id)getEvolvedSubscriptionLabelID:(id)d error:(id *)error;
- (id)getIMSRegistrationStatus:(id)status error:(id *)error;
- (id)getInternetConnectionAvailabilitySync:(id *)sync;
- (id)getInternetConnectionStateSync:(id *)sync;
- (id)getInternetDataStatusBasicSync:(id *)sync;
- (id)getInternetDataStatusSync:(id *)sync;
- (id)getLastKnownSimDeactivationInfoFor:(id)for error:(id *)error;
- (id)getListOfPresentDedicatedBearers;
- (id)getLocalDeviceIdentifierForSIMTransfer:(id *)transfer;
- (id)getLocalPolicies:(id)policies error:(id *)error;
- (id)getLocalizedOperatorName:(id)name error:(id *)error;
- (id)getMobileEquipmentInfo:(id *)info;
- (id)getMobileEquipmentInfoFor:(id)for error:(id *)error;
- (id)getMobileSubscriberHomeCountryList:(id)list error:(id *)error;
- (id)getNRStatus:(id)status error:(id *)error;
- (id)getOperatorMultiPartyCallCountMaximum:(id)maximum error:(id *)error;
- (id)getOperatorName:(id)name error:(id *)error;
- (id)getPNRContext:(id)context outError:(id *)error;
- (id)getPNRPriorityRegistrationListWithError:(id *)error;
- (id)getPNRSupportStatus:(id)status outError:(id *)error;
- (id)getPacketContextCount:(unsigned int *)count;
- (id)getPhoneServicesDeviceInfo:(id *)info;
- (id)getPhoneServicesDeviceList:(id *)list;
- (id)getPreferredDataServiceDescriptorSync:(id *)sync;
- (id)getPreferredDataSubscriptionContextSync:(id *)sync;
- (id)getPrivateNetworkCapabilitiesForContext:(id)context error:(id *)error;
- (id)getPrivateNetworkSimInfoForContext:(id)context error:(id *)error;
- (id)getProvisioningServerURL:(id)l outError:(id *)error;
- (id)getPublicSignalStrength:(id)strength error:(id *)error;
- (id)getQoSLinkCharacteristics:(id *)characteristics;
- (id)getRatSelectionMask:(id)mask error:(id *)error;
- (id)getRejectCauseCode:(id)code error:(id *)error;
- (id)getReleaseCandidateFlag;
- (id)getRemainingPINAttemptCount:(id)count error:(id *)error;
- (id)getRemainingPUKAttemptCount:(id)count error:(id *)error;
- (id)getRemoteDeviceForTransferWithEID:(id)d error:(id *)error;
- (id)getRemoteDeviceOfType:(unint64_t)type withEID:(id)d error:(id *)error;
- (id)getRemoteDevicesForTransferOrError:(id *)error;
- (id)getResumableRoadsideProvider:(id *)provider;
- (id)getRoamingStatus:(id)status error:(id *)error;
- (id)getSIMStatus:(id)status error:(id *)error;
- (id)getSIMToolkitListItems:(id)items items:(id *)a4;
- (id)getSIMToolkitMenu:(id)menu menu:(id *)a4;
- (id)getSIMToolkitUSSDString:(id)string ussdString:(id *)ussdString needRsp:(BOOL *)rsp;
- (id)getSIMTrayStatusOrError:(id *)error;
- (id)getSatelliteMsgCfgToUpdate:(id *)update;
- (id)getShortLabel:(id)label error:(id *)error;
- (id)getSignalStrengthInfo:(id)info error:(id *)error;
- (id)getSignalStrengthMeasurements:(id)measurements error:(id *)error;
- (id)getSimHardwareInfo:(id)info error:(id *)error;
- (id)getSimLabel:(id)label error:(id *)error;
- (id)getSliceTrafficDescriptors:(id *)descriptors;
- (id)getSmsReadyState:(id)state error:(id *)error;
- (id)getSmscAddress:(id)address error:(id *)error;
- (id)getStewieSupport:(id *)support;
- (id)getSubscriptionInfoWithError:(id *)error;
- (id)getSubscriptionUserFacingName:(id)name error:(id *)error;
- (id)getSupportedDataRates:(id)rates error:(id *)error;
- (id)getSupports5G:(id)g error:(id *)error;
- (id)getSupports5GStandalone:(id)standalone error:(id *)error;
- (id)getSupportsTARandomization:(id)randomization error:(id *)error;
- (id)getSystemConfiguration:(id)configuration withError:(id *)error;
- (id)getTARandomizationSetting:(id)setting error:(id *)error;
- (id)getTetheringStatusSync:(id *)sync;
- (id)getTransportKeysToUpdate:(id *)update;
- (id)getTypeAllocationCode:(id)code error:(id *)error;
- (id)getUIConfiguredApns:(id)apns error:(id *)error;
- (id)getUserAuthToken:(id)token error:(id *)error;
- (id)getUserDefaultVoiceSubscriptionContext:(id *)context;
- (id)getWiFiCallingSettingPreferences:(id)preferences key:(id)key error:(id *)error;
- (id)installPrivateNetworkProfile:(id)profile;
- (id)isAnySimReadyWithError:(id *)error;
- (id)isEmbeddedSIMOnlyConfig:(id *)config;
- (id)isNetworkSelectionMenuAvailable:(id)available error:(id *)error;
- (id)isPrivateNetworkContext:(id)context error:(id *)error;
- (id)isSimMatching:(id)matching carrierDescriptors:(id)descriptors error:(id *)error;
- (id)listPersonalWallets:(id *)wallets;
- (id)loadCarrierStoreVisitStatusForCarrier:(id)carrier error:(id *)error;
- (id)loadSimSetupInfo:(id)info error:(id *)error;
- (id)private_getActiveConnections:(id)connections error:(id *)error;
- (id)private_getDataStatus:(id)status error:(id *)error;
- (id)private_getSliceTrafficDescriptors:(id *)descriptors;
- (id)proxyWithErrorHandler:(id)handler;
- (id)readCachedCapabilities:(id)capabilities forDestination:(id)destination withError:(id *)error;
- (id)readCachedChatBotRenderInformation:(id)information forChatBot:(id)bot withError:(id *)error;
- (id)removeAllDedicatedBearers;
- (id)removeDedicatedBearer:(id)bearer;
- (id)removePrivateNetworkProfile:(id)profile;
- (id)renamePersonalWallet:(id)wallet to:(id)to;
- (id)reportStewieConnectionAssistantEvent:(id)event;
- (id)reportStewieDeviceOrientation:(id)orientation;
- (id)requestQoSLinkCharacteristics;
- (id)resetAPNSettings;
- (id)retrieveAllIncomingMessageIDs:(id)ds withError:(id *)error;
- (id)retrieveMessage:(id)message withMessageID:(id)d withError:(id *)error;
- (id)selectRoadsideProviderWithContext:(id)context error:(id *)error;
- (id)selectSIMToolkitListItem:(id)item session:(id)session response:(id)response index:(id)index;
- (id)selectSIMToolkitMenuItem:(id)item index:(id)index;
- (id)sendDeadPeerDetection;
- (id)sendSIMToolkitDisplayReady:(id)ready;
- (id)sendSIMToolkitResponse:(id)response session:(id)session response:(id)a5;
- (id)sendSIMToolkitStringResponse:(id)response session:(id)session response:(id)a5 string:(id)string;
- (id)sendSIMToolkitUSSDResponse:(id)response response:(id)a4;
- (id)sendSIMToolkitUserActivity:(id)activity;
- (id)setApplicationCategory:(id)category;
- (id)setLocalPolicies:(id)policies;
- (id)setMaxDataRate:(id)rate rate:(int64_t)a4;
- (id)setProvisioningServerURL:(id)l url:(id)url;
- (id)setSatelliteMsgCfgUpdated:(id)updated;
- (id)setWiFiCallingSettingPreferences:(id)preferences key:(id)key value:(id)value;
- (id)shouldAllowSimLockFor:(id)for;
- (id)shouldAllowSimLockFor:(id)for error:(id *)error;
- (id)shouldShowBrandedCallingInfo:(id *)info;
- (id)supportsLimitedUseSIMsWithError:(id *)error;
- (id)synchronousProxyWithErrorHandler:(id)handler;
- (id)synchronousRequestWithArrayResult:(id)result error:(id *)error;
- (id)synchronousRequestWithNumberResult:(id)result error:(id *)error;
- (id)synchronousRequestWithStringResult:(id)result error:(id *)error;
- (id)transferPersonalWallet:(id)wallet to:(id)to;
- (id)usageCollectionEnabledSync:(id *)sync;
- (id)userEnteredBillingEndDayOfMont:(id)mont error:(id *)error;
- (id)userEnteredMonthlyBudget:(id)budget error:(id *)error;
- (id)userEnteredMonthlyRoamingBudget:(id)budget error:(id *)error;
- (id)wifiCallingCTFollowUpComplete:(id)complete;
- (int64_t)checkCellularDiagnosticsStatus:(id *)status;
- (int64_t)context:(id)context supportedIdentityProtectionFor:(id)for error:(id *)error;
- (int64_t)getDualSimCapability:(id *)capability;
- (int64_t)getMaxDataRate:(id)rate error:(id *)error;
- (int64_t)isEsimFor:(id)for error:(id *)error;
- (unint64_t)getGSMAUIControlSetting:(id)setting error:(id *)error;
- (unsigned)getNATTKeepAliveOverCell:(id *)cell;
- (unsigned)getNATTKeepAliveOverCell:(id)cell error:(id *)error;
- (unsigned)getNATTKeepAliveOverCellForPreferredDataContext:(id *)context;
- (unsigned)private_getNATTKeepAliveOverCell:(id)cell error:(id *)error;
- (void)SIMUnlockProcedureDidComplete;
- (void)activateProximityTransfer:(unint64_t)transfer completion:(id)completion;
- (void)activateStewieEmergencyTryOutWithCompletion:(id)completion;
- (void)activateTurboMode:(id)mode;
- (void)asynchronousRequest:(id)request completion:(id)completion;
- (void)asynchronousRequest:(id)request completionWithArray:(id)array;
- (void)asynchronousRequest:(id)request completionWithNumber:(id)number;
- (void)asynchronousRequest:(id)request completionWithString:(id)string;
- (void)authenticate:(id)authenticate request:(id)request completion:(id)completion;
- (void)automaticallySelectNetwork:(id)network completion:(id)completion;
- (void)bootstrapPlanTransferForEndpoint:(unint64_t)endpoint flowType:(unint64_t)type usingMessageSession:(id)session completion:(id)completion;
- (void)carrierOneTimeCodeSendersWithCompletion:(id)completion;
- (void)changePIN:(id)n oldPin:(id)pin newPin:(id)newPin completion:(id)completion;
- (void)changePIN:(id)n oldPin:(id)pin newPin:(id)newPin error:(id *)error;
- (void)checkRadioBootHealth:(id)health;
- (void)checkRadioBootHealthDetails:(id)details;
- (void)clearReconnectionCredentials:(id)credentials;
- (void)clearUserEnteredBillingEndDayOfMonth:(id)month completion:(id)completion;
- (void)clearUserEnteredBillingEndDayOfMonth:(id)month error:(id *)error;
- (void)clearUserEnteredMonthlyBudget:(id)budget completion:(id)completion;
- (void)clearUserEnteredMonthlyBudget:(id)budget error:(id *)error;
- (void)clearUserEnteredMonthlyRoamingBudget:(id)budget completion:(id)completion;
- (void)clearUserEnteredMonthlyRoamingBudget:(id)budget error:(id *)error;
- (void)compressWithStewieCodec:(id)codec completion:(id)completion;
- (void)context:(id)context addPhoneServicesDevice:(id)device withCompletion:(id)completion;
- (void)context:(id)context canSetCapability:(id)capability completion:(id)completion;
- (void)context:(id)context getCapability:(id)capability completion:(id)completion;
- (void)context:(id)context getCarrierBundleValue:(id)value completion:(id)completion;
- (void)context:(id)context getPhoneNumberSignatureWithCompletion:(id)completion;
- (void)context:(id)context getPseudoIdentityFor:(id)for completion:(id)completion;
- (void)context:(id)context getSystemCapabilitiesWithCompletion:(id)completion;
- (void)context:(id)context isProtectedIdentitySupported:(id)supported completion:(id)completion;
- (void)context:(id)context modifyAttachApnSettings:(id)settings completion:(id)completion;
- (void)context:(id)context removePhoneServicesDevice:(id)device withCompletion:(id)completion;
- (void)context:(id)context resetPhoneNumber:(id)number;
- (void)context:(id)context supportedIdentityProtectionFor:(id)for completion:(id)completion;
- (void)copyAbbreviatedOperatorName:(id)name completion:(id)completion;
- (void)copyBandInfo:(id)info completion:(id)completion;
- (void)copyBundleIdentifier:(id)identifier bundleType:(id)type completion:(id)completion;
- (void)copyBundleLocation:(id)location bundleType:(id)type completion:(id)completion;
- (void)copyBundleVersion:(id)version bundleType:(id)type completion:(id)completion;
- (void)copyCarrierBookmarks:(id)bookmarks completion:(id)completion;
- (void)copyCarrierBundleLocation:(id)location completion:(id)completion;
- (void)copyCarrierBundleValue:(id)value key:(id)key bundleType:(id)type completion:(id)completion;
- (void)copyCarrierBundleValue:(id)value keyHierarchy:(id)hierarchy bundleType:(id)type completion:(id)completion;
- (void)copyCarrierBundleValueWithDefault:(id)default key:(id)key bundleType:(id)type completion:(id)completion;
- (void)copyCarrierBundleValueWithDefault:(id)default keyHierarchy:(id)hierarchy bundleType:(id)type completion:(id)completion;
- (void)copyCarrierBundleVersion:(id)version completion:(id)completion;
- (void)copyCellId:(id)id completion:(id)completion;
- (void)copyCellInfo:(id)info completion:(id)completion;
- (void)copyEmergencyMode:(id)mode;
- (void)copyFirmwareUpdateInfo:(id)info;
- (void)copyGid1:(id)gid1 completion:(id)completion;
- (void)copyGid2:(id)gid2 completion:(id)completion;
- (void)copyIsDataAttached:(id)attached completion:(id)completion;
- (void)copyIsInHomeCountry:(id)country completion:(id)completion;
- (void)copyLabel:(id)label completion:(id)completion;
- (void)copyLastKnownMobileCountryCode:(id)code completion:(id)completion;
- (void)copyLastKnownMobileSubscriberCountryCode:(id)code completion:(id)completion;
- (void)copyLocalizedOperatorName:(id)name completion:(id)completion;
- (void)copyLocationAreaCode:(id)code completion:(id)completion;
- (void)copyMobileCountryCode:(id)code completion:(id)completion;
- (void)copyMobileEquipmentInfo:(id)info;
- (void)copyMobileNetworkCode:(id)code completion:(id)completion;
- (void)copyMobileSubscriberCountryCode:(id)code completion:(id)completion;
- (void)copyMobileSubscriberIdentity:(id)identity completion:(id)completion;
- (void)copyMobileSubscriberNetworkCode:(id)code completion:(id)completion;
- (void)copyNetworkList:(id)list completion:(id)completion;
- (void)copyNetworkSelection:(id)selection completion:(id)completion;
- (void)copyNetworkSelectionInfo:(id)info completion:(id)completion;
- (void)copyNetworkSelectionMode:(id)mode completion:(id)completion;
- (void)copyOperatorName:(id)name completion:(id)completion;
- (void)copyRadioAccessTechnology:(id)technology completion:(id)completion;
- (void)copyRegistrationAgentStatus:(id)status completion:(id)completion;
- (void)copyRegistrationDisplayStatus:(id)status completion:(id)completion;
- (void)copyRegistrationIMSTransportInfo:(id)info completion:(id)completion;
- (void)copyRegistrationStatus:(id)status completion:(id)completion;
- (void)copyRejectCauseCode:(id)code completion:(id)completion;
- (void)copySIMIdentity:(id)identity completion:(id)completion;
- (void)copyServingPlmn:(id)plmn completion:(id)completion;
- (void)copyWirelessTechnology:(id)technology completion:(id)completion;
- (void)createEncryptedIdentity:(id)identity identity:(id)a4 completion:(id)completion;
- (void)dataUsageForLastPeriods:(unint64_t)periods completion:(id)completion;
- (void)dataUsageForLastPeriodsOnActivePairedDevice:(unint64_t)device completion:(id)completion;
- (void)dealloc;
- (void)deleteHiddenSims:(id)sims;
- (void)deletePersonalWallet:(id)wallet completion:(id)completion;
- (void)dispatchBlockToClientAsync:(id)async;
- (void)establishReconnectionCredentialsUsingMessageSession:(id)session completion:(id)completion;
- (void)evaluateMobileSubscriberIdentity:(id)identity identity:(id)a4 completion:(id)completion;
- (void)exitStewieWithContext:(id)context completion:(id)completion;
- (void)fetchNetworkList:(id)list completion:(id)completion;
- (void)fetchRoadsideProvidersWithContext:(id)context completion:(id)completion;
- (void)fetchSIMLockValue:(id)value completion:(id)completion;
- (void)generateAuthenticationInfoUsingSim:(id)sim authParams:(id)params completion:(id)completion;
- (void)get2GSwitchEnabled:(id)enabled;
- (void)get2GUserPreference:(id)preference;
- (void)getActiveConnections:(id)connections completion:(id)completion;
- (void)getActiveContextsWithCallback:(id)callback;
- (void)getAllEmergencyNumbers:(id)numbers;
- (void)getAnbrActivationState:(id)state completion:(id)completion;
- (void)getCallCapabilities:(id)capabilities completion:(id)completion;
- (void)getConfiguredApns:(id)apns completion:(id)completion;
- (void)getConnectionAssistantConfig:(id)config;
- (void)getConnectionAssistantServicePlot:(id)plot;
- (void)getConnectionAssistantState:(id)state;
- (void)getCurrentDataServiceDescriptor:(id)descriptor;
- (void)getCurrentDataSubscriptionContext:(id)context;
- (void)getDataStatus:(id)status completion:(id)completion;
- (void)getDataStatusBasic:(id)basic completion:(id)completion;
- (void)getDescriptorsForDomain:(int64_t)domain completion:(id)completion;
- (void)getEmergencyTextNumbers:(id)numbers completion:(id)completion;
- (void)getEnhancedVoiceLinkQualityMetric:(id)metric completion:(id)completion;
- (void)getEvolvedSubscriptionLabelID:(id)d withCallback:(id)callback;
- (void)getIMSRegistrationStatus:(id)status completion:(id)completion;
- (void)getInternationalDataAccess:(id)access completion:(id)completion;
- (void)getInternationalDataAccessStatus:(id)status;
- (void)getInternetConnectionAvailability:(id)availability;
- (void)getInternetConnectionState:(id)state;
- (void)getInternetDataStatus:(id)status;
- (void)getInternetDataStatusBasic:(id)basic;
- (void)getLocalPolicies:(id)policies completion:(id)completion;
- (void)getMaxDataRate:(id)rate completion:(id)completion;
- (void)getMobileSubscriberHomeCountryList:(id)list completion:(id)completion;
- (void)getNATTKeepAliveOverCell:(id)cell completion:(id)completion;
- (void)getOperatorMultiPartyCallCountMaximum:(id)maximum completion:(id)completion;
- (void)getPNRContext:(id)context completion:(id)completion;
- (void)getPNRPriorityRegistrationListWithCompletion:(id)completion;
- (void)getPNRSupportStatus:(id)status completion:(id)completion;
- (void)getPhoneServicesDeviceInfoWithCompletion:(id)completion;
- (void)getPhoneServicesDeviceListWithCompletion:(id)completion;
- (void)getPreferredDataServiceDescriptor:(id)descriptor;
- (void)getPreferredDataSubscriptionContext:(id)context;
- (void)getPrivateNetworkCapabilitiesForContext:(id)context completion:(id)completion;
- (void)getRatSelection:(id)selection completion:(id)completion;
- (void)getRegulatedRatsSwitchEnabled:(id)enabled completion:(id)completion;
- (void)getRegulatedRatsUserPreference:(id)preference completion:(id)completion;
- (void)getRemainingPINAttemptCount:(id)count completion:(id)completion;
- (void)getRemainingPUKAttemptCount:(id)count completion:(id)completion;
- (void)getRemotePlanManageAccountInfoFor:(id)for completion:(id)completion;
- (void)getRemotePolicies:(id)policies completion:(id)completion;
- (void)getResumableRoadsideProviderWithCompletion:(id)completion;
- (void)getRoamingStatus:(id)status completion:(id)completion;
- (void)getSIMStatus:(id)status completion:(id)completion;
- (void)getSIMTrayStatus:(id)status;
- (void)getSatelliteMsgCfgToUpdateWithCompletion:(id)completion;
- (void)getShortLabel:(id)label completion:(id)completion;
- (void)getSignalStrengthInfo:(id)info completion:(id)completion;
- (void)getSignalStrengthMeasurements:(id)measurements completion:(id)completion;
- (void)getSimLabel:(id)label completion:(id)completion;
- (void)getSmsReadyState:(id)state completion:(id)completion;
- (void)getSmscAddress:(id)address completion:(id)completion;
- (void)getStewieSupportWithCompletion:(id)completion;
- (void)getSubscriptionInfo:(id)info;
- (void)getSubscriptionUserFacingName:(id)name completion:(id)completion;
- (void)getSupportDynamicDataSimSwitch:(id)switch;
- (void)getSupportedDataRates:(id)rates completion:(id)completion;
- (void)getSweetgumApps:(id)apps completion:(id)completion;
- (void)getSweetgumCapabilities:(id)capabilities completion:(id)completion;
- (void)getSweetgumDataPlanMetrics:(id)metrics completion:(id)completion;
- (void)getSweetgumPlans:(id)plans completion:(id)completion;
- (void)getSweetgumUsage:(id)usage completion:(id)completion;
- (void)getSweetgumUserConsentInfo:(id)info completion:(id)completion;
- (void)getTetheringStatus:(id)status;
- (void)getTransportKeysToUpdateWithCompletion:(id)completion;
- (void)getUIConfiguredApns:(id)apns completion:(id)completion;
- (void)getVoiceLinkQualityMetric:(id)metric completion:(id)completion;
- (void)getWiFiCallingSettingPreferences:(id)preferences key:(id)key completion:(id)completion;
- (void)invalidateCrossPlatformPlanTransfer:(id)transfer;
- (void)isAnyPlanOfTransferCapability:(unint64_t)capability availableForThisDeviceWithCompletion:(id)completion;
- (void)isAttachApnSettingAllowed:(id)allowed completion:(id)completion;
- (void)isEmergencyNumber:(id)number number:(id)a4 completion:(id)completion;
- (void)isEmergencyNumberWithWhitelistIncluded:(id)included number:(id)number completion:(id)completion;
- (void)isNetworkReselectionNeeded:(id)needed completion:(id)completion;
- (void)isNetworkSelectionMenuAvailable:(id)available completion:(id)completion;
- (void)isPNRSupported:(id)supported completion:(id)completion;
- (void)isPreSharedKeyForReconnectionPresent:(id)present completion:(id)completion;
- (void)isPrivateNetworkContext:(id)context completion:(id)completion;
- (void)isPrivateNetworkPreferredOverWifi:(id)wifi completion:(id)completion;
- (void)isPrivateNetworkSIM:(id)m completion:(id)completion;
- (void)isTetheringEditingSupported:(id)supported completion:(id)completion;
- (void)issuePNRRequest:(id)request pnrReqType:(id)type completion:(id)completion;
- (void)ping:(id)ping;
- (void)prepareCrossPlatformCellularPlanLabel:(id)label completion:(id)completion;
- (void)prepareCrossPlatformPlanTransfer:(id)transfer completion:(id)completion;
- (void)promptForSIMUnlock:(id)unlock completion:(id)completion;
- (void)purchaseSweetgumPlan:(id)plan completion:(id)completion;
- (void)refreshCellMonitor:(id)monitor completion:(id)completion;
- (void)refreshSweetgumAll:(id)all completion:(id)completion;
- (void)refreshSweetgumApps:(id)apps completion:(id)completion;
- (void)refreshSweetgumPlans:(id)plans completion:(id)completion;
- (void)refreshSweetgumUsage:(id)usage completion:(id)completion;
- (void)refreshUserAuthToken:(id)token error:(id *)error;
- (void)remotePlanSignupInfoFor:(id)for userConsent:(int64_t)consent completion:(id)completion;
- (void)removePoliciesFromLocalDevice:(id)device completion:(id)completion;
- (void)reportStewieConnectionAssistantEvent:(id)event completion:(id)completion;
- (void)reportStewieDeviceOrientation:(id)orientation completion:(id)completion;
- (void)requestSliceByUUID:(id)d completion:(id)completion;
- (void)requestSliceDeactivation:(id)deactivation;
- (void)requestStewieWithContext:(id)context completion:(id)completion;
- (void)resetAPNSettings:(id)settings;
- (void)resetProximityTransportExtension:(id)extension;
- (void)resetUIConfiguredApns:(id)apns completion:(id)completion;
- (void)saveSimSetupInfo:(id)info info:(id)a4 completion:(id)completion;
- (void)selectNetwork:(id)network network:(id)a4 completion:(id)completion;
- (void)selectRoadsideProviderWithContext:(id)context completion:(id)completion;
- (void)sendDeadPeerDetection:(id)detection;
- (void)sendTaggedInfo:(id)info type:(unint64_t)type payload:(id)payload completion:(id)completion;
- (void)setActiveBandInfo:(id)info bands:(id)bands error:(id *)error;
- (void)setActiveUserDataSelection:(id)selection completion:(id)completion;
- (void)setActiveUserDataSelection:(id)selection error:(id *)error;
- (void)setBandInfo:(id)info bands:(id)bands completion:(id)completion;
- (void)setDefaultVoice:(id)voice completion:(id)completion;
- (void)setDefaultVoice:(id)voice error:(id *)error;
- (void)setDelegate:(id)delegate;
- (void)setInternationalDataAccessStatus:(BOOL)status completion:(id)completion;
- (void)setLabel:(id)label label:(id)a4 completion:(id)completion;
- (void)setLabel:(id)label label:(id)a4 error:(id *)error;
- (void)setLocalPolicies:(id)policies completion:(id)completion;
- (void)setMaxDataRate:(id)rate rate:(int64_t)a4 completion:(id)completion;
- (void)setRatSelection:(id)selection selection:(id)a4 preferred:(id)preferred completion:(id)completion;
- (void)setRemotePolicies:(id)policies completion:(id)completion;
- (void)setSatelliteAppCategories:(id)categories appCategories:(id)appCategories completion:(id)completion;
- (void)setUIConfiguredApns:(id)apns apns:(id)a4 completion:(id)completion;
- (void)setUserEntered:(id)entered monthlyBudget:(id)budget completion:(id)completion;
- (void)setUserEntered:(id)entered monthlyBudget:(id)budget error:(id *)error;
- (void)setUserEntered:(id)entered monthlyRoamingBudget:(id)budget completion:(id)completion;
- (void)setUserEntered:(id)entered monthlyRoamingBudget:(id)budget error:(id *)error;
- (void)setUserEnteredBillingEnd:(id)end dayOfMonth:(id)month completion:(id)completion;
- (void)setUserEnteredBillingEnd:(id)end dayOfMonth:(id)month error:(id *)error;
- (void)setVoLTEAudioCodec:(id)codec codecInfo:(id)info completion:(id)completion;
- (void)setWiFiCallingSettingPreferences:(id)preferences key:(id)key value:(id)value completion:(id)completion;
- (void)shouldShowUserWarningWhenDialingCallOnContext:(id)context completion:(id)completion;
- (void)synchronousRequest:(id)request error:(id *)error;
- (void)transferRemotePlan:(id)plan completion:(id)completion;
- (void)transferRemotePlan:(id)plan fromDevice:(id)device completion:(id)completion;
- (void)unlockPIN:(id)n pin:(id)pin completion:(id)completion;
- (void)unlockPIN:(id)n pin:(id)pin error:(id *)error;
- (void)unlockPUK:(id)k puk:(id)puk newPin:(id)pin completion:(id)completion;
- (void)unlockPUK:(id)k puk:(id)puk newPin:(id)pin error:(id *)error;
- (void)usageCollectionEnabled:(id)enabled;
- (void)userEnteredBillingEndDayOfMont:(id)mont completion:(id)completion;
- (void)userEnteredMonthlyBudget:(id)budget completion:(id)completion;
- (void)userEnteredMonthlyRoamingBudget:(id)budget completion:(id)completion;
- (void)validateProximityTransfer:(unint64_t)transfer pin:(id)pin completion:(id)completion;
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

- (id)private_getActiveConnections:(id)connections error:(id *)error
{
  connectionsCopy = connections;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  if (error)
  {
    *error = 0;
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
  [v7 getActiveConnections:connectionsCopy completion:v11];
  if (error)
  {
    v8 = v20[5];
    if (v8)
    {
      *error = v8;
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

- (id)private_getSliceTrafficDescriptors:(id *)descriptors
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    if (descriptors)
    {
      *descriptors = 0;
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
    if (descriptors)
    {
      v6 = v18[5];
      if (v6)
      {
        *descriptors = v6;
      }
    }

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v17, 8);
  }

  else if (descriptors)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *descriptors = v7 = 0;
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

- (id)private_getDataStatus:(id)status error:(id *)error
{
  statusCopy = status;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    if (error)
    {
      *error = 0;
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
    [v8 getDataStatus:statusCopy completion:v12];
    if (error)
    {
      v9 = v21[5];
      if (v9)
      {
        *error = v9;
      }
    }

    v10 = v14[5];
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v20, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *error = v10 = 0;
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

- (unsigned)private_getNATTKeepAliveOverCell:(id)cell error:(id *)error
{
  cellCopy = cell;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy_;
    v22 = __Block_byref_object_dispose_;
    v23 = 0;
    if (error)
    {
      *error = 0;
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
    [v8 getNATTKeepAliveOverCell:cellCopy completion:v12];
    if (error)
    {
      v9 = v19[5];
      if (v9)
      {
        *error = v9;
      }
    }

    v10 = *(v14 + 6);
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v18, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *error = v10 = 0;
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

- (void)requestSliceByUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CoreTelephonyClient_Data__requestSliceByUUID_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 requestSliceByUUID:dCopy completion:v8];
}

- (void)requestSliceDeactivation:(id)deactivation
{
  deactivationCopy = deactivation;
  v4 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&__block_literal_global];
  [v4 requestSliceDeactivation:deactivationCopy completion:&__block_literal_global_19];
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

- (void)resetAPNSettings:(id)settings
{
  settingsCopy = settings;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CoreTelephonyClient_Data__resetAPNSettings___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = settingsCopy;
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

- (void)sendDeadPeerDetection:(id)detection
{
  detectionCopy = detection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__CoreTelephonyClient_Data__sendDeadPeerDetection___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = detectionCopy;
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

- (void)setInternationalDataAccessStatus:(BOOL)status completion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__CoreTelephonyClient_Data__setInternationalDataAccessStatus_completion___block_invoke;
  aBlock[3] = &unk_1E6A43D38;
  statusCopy = status;
  aBlock[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
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

- (void)getInternationalDataAccessStatus:(id)status
{
  statusCopy = status;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __62__CoreTelephonyClient_Data__getInternationalDataAccessStatus___block_invoke;
  v10 = &unk_1E6A43D60;
  selfCopy = self;
  v12 = statusCopy;
  v5 = statusCopy;
  v6 = _Block_copy(&v7);
  [(CoreTelephonyClient *)self getCurrentDataServiceDescriptor:v6, v7, v8, v9, v10, selfCopy];
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

- (BOOL)getInternationalDataAccessStatusSync:(id *)sync
{
  v9 = 0;
  v5 = [(CoreTelephonyClient *)self getCurrentDataServiceDescriptorSync:&v9];
  v6 = v9;
  if (!v5)
  {
    v5 = [[CTServiceDescriptor alloc] initWithDomain:1 instance:&unk_1EF062110];
  }

  v7 = [(CoreTelephonyClient *)self getInternationalDataAccessSync:v5 error:sync];

  return v7;
}

- (void)getInternationalDataAccess:(id)access completion:(id)completion
{
  accessCopy = access;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CoreTelephonyClient_Data__getInternationalDataAccess_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getInternationalDataAccess:accessCopy completion:v8];
}

- (BOOL)getInternationalDataAccessSync:(id)sync error:(id *)error
{
  syncCopy = sync;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  if (error)
  {
    *error = 0;
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
  [v7 getInternationalDataAccess:syncCopy completion:v11];
  if (error)
  {
    v8 = v18[5];
    if (v8)
    {
      *error = v8;
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

- (void)getSupportDynamicDataSimSwitch:(id)switch
{
  switchCopy = switch;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CoreTelephonyClient_Data__getSupportDynamicDataSimSwitch___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = switchCopy;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getSupportDynamicDataSimSwitch:v5];
}

- (BOOL)getSupportDynamicDataSimSwitchSync:(id *)sync
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  if (sync)
  {
    *sync = 0;
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
  if (sync)
  {
    v5 = v15[5];
    if (v5)
    {
      *sync = v5;
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

- (id)getPacketContextCount:(unsigned int *)count
{
  if (count)
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
    *count = *(v10 + 6);
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

- (void)getInternetConnectionAvailability:(id)availability
{
  availabilityCopy = availability;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __63__CoreTelephonyClient_Data__getInternetConnectionAvailability___block_invoke_2;
    v12 = &unk_1E6A43CC8;
    v6 = availabilityCopy;
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
    v15 = availabilityCopy;
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

- (id)getInternetConnectionAvailabilitySync:(id *)sync
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v5 = [(CoreTelephonyClient *)self private_getConnectionAvailability:0 connectionType:0 error:sync];
  }

  else if (sync)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    v7 = v6;
    v5 = 0;
    *sync = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)getActiveConnections:(id)connections completion:(id)completion
{
  connectionsCopy = connections;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__CoreTelephonyClient_Data__getActiveConnections_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getActiveConnections:connectionsCopy completion:v8];
}

- (id)getActiveConnections:(id)connections error:(id *)error
{
  v4 = [(CoreTelephonyClient *)self private_getActiveConnections:connections error:error];

  return v4;
}

void __74__CoreTelephonyClient_Data__getConnectionState_connectionType_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

- (id)getSliceTrafficDescriptors:(id *)descriptors
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v5 = [(CoreTelephonyClient *)self private_getSliceTrafficDescriptors:descriptors];
  }

  else if (descriptors)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    v7 = v6;
    v5 = 0;
    *descriptors = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)getInternetConnectionState:(id)state
{
  stateCopy = state;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __56__CoreTelephonyClient_Data__getInternetConnectionState___block_invoke_2;
    v12 = &unk_1E6A43CC8;
    v6 = stateCopy;
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
    v15 = stateCopy;
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

- (id)getInternetConnectionStateSync:(id *)sync
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v5 = [(CoreTelephonyClient *)self private_getConnectionState:0 connectionType:0 error:sync];
  }

  else if (sync)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    v7 = v6;
    v5 = 0;
    *sync = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)getDataStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __54__CoreTelephonyClient_Data__getDataStatus_completion___block_invoke_2;
    v15 = &unk_1E6A43CC8;
    v9 = completionCopy;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v12];
    [v10 getDataStatus:statusCopy completion:{v9, v12, v13, v14, v15}];
    v11 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__CoreTelephonyClient_Data__getDataStatus_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = completionCopy;
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

- (id)getDataStatus:(id)status error:(id *)error
{
  statusCopy = status;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v8 = [(CoreTelephonyClient *)self private_getDataStatus:statusCopy error:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)getDataStatusBasic:(id)basic completion:(id)completion
{
  basicCopy = basic;
  completionCopy = completion;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__CoreTelephonyClient_Data__getDataStatusBasic_completion___block_invoke_2;
    v10[3] = &unk_1E6A43DD8;
    v10[4] = completionCopy;
    [(CoreTelephonyClient *)self getDataStatus:basicCopy completion:v10];
  }

  else
  {
    v9 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__CoreTelephonyClient_Data__getDataStatusBasic_completion___block_invoke;
    v11[3] = &unk_1E6A43D10;
    v11[4] = completionCopy;
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

- (id)getDataStatusBasic:(id)basic error:(id *)error
{
  basicCopy = basic;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v8 = [(CoreTelephonyClient *)self getDataStatus:basicCopy error:error];
    v9 = v8;
    if (v8)
    {
      copyBasic = [v8 copyBasic];
    }

    else
    {
      copyBasic = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *error = copyBasic = 0;
  }

  else
  {
    copyBasic = 0;
  }

  return copyBasic;
}

- (void)getInternetDataStatus:(id)status
{
  statusCopy = status;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __51__CoreTelephonyClient_Data__getInternetDataStatus___block_invoke_2;
    v12 = &unk_1E6A43CC8;
    v6 = statusCopy;
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
    v15 = statusCopy;
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

- (id)getInternetDataStatusSync:(id *)sync
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v5 = [(CoreTelephonyClient *)self private_getDataStatus:0 error:sync];
  }

  else if (sync)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    v7 = v6;
    v5 = 0;
    *sync = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)getInternetDataStatusBasic:(id)basic
{
  basicCopy = basic;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v6 = v7;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__CoreTelephonyClient_Data__getInternetDataStatusBasic___block_invoke_2;
    v7[3] = &unk_1E6A43DD8;
    v7[4] = basicCopy;
    [(CoreTelephonyClient *)self getInternetDataStatus:v7];
  }

  else
  {
    v6 = v8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__CoreTelephonyClient_Data__getInternetDataStatusBasic___block_invoke;
    v8[3] = &unk_1E6A43D10;
    v8[4] = basicCopy;
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

- (id)getInternetDataStatusBasicSync:(id *)sync
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v5 = [(CoreTelephonyClient *)self getInternetDataStatusSync:sync];
    v6 = v5;
    if (v5)
    {
      copyBasic = [v5 copyBasic];
    }

    else
    {
      copyBasic = 0;
    }
  }

  else if (sync)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *sync = copyBasic = 0;
  }

  else
  {
    copyBasic = 0;
  }

  return copyBasic;
}

- (void)getNATTKeepAliveOverCell:(id)cell completion:(id)completion
{
  cellCopy = cell;
  completionCopy = completion;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __65__CoreTelephonyClient_Data__getNATTKeepAliveOverCell_completion___block_invoke_2;
    v15 = &unk_1E6A43CC8;
    v9 = completionCopy;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v12];
    [v10 getNATTKeepAliveOverCell:cellCopy completion:{v9, v12, v13, v14, v15}];
    v11 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__CoreTelephonyClient_Data__getNATTKeepAliveOverCell_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = completionCopy;
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

- (unsigned)getNATTKeepAliveOverCell:(id)cell error:(id *)error
{
  cellCopy = cell;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v8 = [(CoreTelephonyClient *)self private_getNATTKeepAliveOverCell:cellCopy error:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unsigned)getNATTKeepAliveOverCell:(id *)cell
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {

    return [(CoreTelephonyClient *)self private_getNATTKeepAliveOverCell:0 error:cell];
  }

  else
  {
    if (cell)
    {
      *cell = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    }

    return 0;
  }
}

- (unsigned)getNATTKeepAliveOverCellForPreferredDataContext:(id *)context
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {

    return [(CoreTelephonyClient *)self private_getNATTKeepAliveOverCell:0 error:context];
  }

  else
  {
    if (context)
    {
      *context = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    }

    return 0;
  }
}

- (BOOL)isTetheringEditingSupported:(id)supported error:(id *)error
{
  supportedCopy = supported;
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
  [v7 isTetheringEditingSupported:supportedCopy completion:v10];
  if (error)
  {
    *error = v17[5];
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

- (void)isTetheringEditingSupported:(id)supported completion:(id)completion
{
  supportedCopy = supported;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CoreTelephonyClient_Data__isTetheringEditingSupported_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isTetheringEditingSupported:supportedCopy completion:v8];
}

- (void)getAnbrActivationState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __63__CoreTelephonyClient_Data__getAnbrActivationState_completion___block_invoke_2;
    v15 = &unk_1E6A43CC8;
    v9 = completionCopy;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v12];
    [v10 getAnbrActivationState:stateCopy completion:{v9, v12, v13, v14, v15}];
    v11 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__CoreTelephonyClient_Data__getAnbrActivationState_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = completionCopy;
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

- (void)getCurrentDataSubscriptionContext:(id)context
{
  contextCopy = context;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __63__CoreTelephonyClient_Data__getCurrentDataSubscriptionContext___block_invoke_2;
    v12 = &unk_1E6A43CC8;
    v6 = contextCopy;
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
    v15 = contextCopy;
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

- (void)getCurrentDataServiceDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (![(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__CoreTelephonyClient_Data__getCurrentDataServiceDescriptor___block_invoke;
    v15[3] = &unk_1E6A43D10;
    v16 = descriptorCopy;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v15];
    v7 = v16;
LABEL_9:

    goto LABEL_10;
  }

  if (!descriptorCopy)
  {
LABEL_8:
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__CoreTelephonyClient_Data__getCurrentDataServiceDescriptor___block_invoke_2;
    v13[3] = &unk_1E6A43CC8;
    v8 = descriptorCopy;
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

  (*(descriptorCopy + 2))(descriptorCopy, v6, 0);

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

- (id)getCurrentDataSubscriptionContextSync:(id *)sync
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    if (sync)
    {
      *sync = 0;
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
    if (sync)
    {
      v6 = v18[5];
      if (v6)
      {
        *sync = v6;
      }
    }

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v17, 8);
  }

  else if (sync)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *sync = v7 = 0;
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

- (id)getCurrentDataServiceDescriptorSync:(id *)sync
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    if (sync)
    {
      *sync = 0;
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
      if (sync)
      {
        v7 = v18[5];
        if (v7)
        {
          *sync = v7;
        }
      }

      [(CoreTelephonyClient *)self cacheValue:v11[5] forSelector:sel_getCurrentDataServiceDescriptor_];
      v5 = v11[5];
      _Block_object_dispose(&v10, 8);

      _Block_object_dispose(&v17, 8);
    }
  }

  else if (sync)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *sync = v5 = 0;
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

- (void)getPreferredDataSubscriptionContext:(id)context
{
  contextCopy = context;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __65__CoreTelephonyClient_Data__getPreferredDataSubscriptionContext___block_invoke_2;
    v12 = &unk_1E6A43CC8;
    v6 = contextCopy;
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
    v15 = contextCopy;
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

- (void)getPreferredDataServiceDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __63__CoreTelephonyClient_Data__getPreferredDataServiceDescriptor___block_invoke_2;
    v12 = &unk_1E6A43CC8;
    v6 = descriptorCopy;
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
    v15 = descriptorCopy;
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

- (id)getPreferredDataSubscriptionContextSync:(id *)sync
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    if (sync)
    {
      *sync = 0;
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
    if (sync)
    {
      v6 = v18[5];
      if (v6)
      {
        *sync = v6;
      }
    }

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v17, 8);
  }

  else if (sync)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *sync = v7 = 0;
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

- (id)getPreferredDataServiceDescriptorSync:(id *)sync
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    if (sync)
    {
      *sync = 0;
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
    if (sync)
    {
      v6 = v18[5];
      if (v6)
      {
        *sync = v6;
      }
    }

    v7 = v11[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v17, 8);
  }

  else if (sync)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *sync = v7 = 0;
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

- (void)getTetheringStatus:(id)status
{
  statusCopy = status;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    [(CoreTelephonyClient *)self getTetheringStatus:statusCopy connectionType:4];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__CoreTelephonyClient_Data__getTetheringStatus___block_invoke;
    v6[3] = &unk_1E6A43D10;
    v7 = statusCopy;
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

- (id)getTetheringStatusSync:(id *)sync
{
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v5 = [(CoreTelephonyClient *)self getTetheringStatusSync:sync connectionType:4];
  }

  else if (sync)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    v7 = v6;
    v5 = 0;
    *sync = v6;
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

- (id)setApplicationCategory:(id)category
{
  categoryCopy = category;
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
    [v5 setApplicationCategory:categoryCopy completion:v10];
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

- (void)setWiFiCallingSettingPreferences:(id)preferences key:(id)key value:(id)value completion:(id)completion
{
  preferencesCopy = preferences;
  keyCopy = key;
  valueCopy = value;
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__CoreTelephonyClient_Settings__setWiFiCallingSettingPreferences_key_value_completion___block_invoke;
  v16[3] = &unk_1E6A43CC8;
  v14 = completionCopy;
  v17 = v14;
  v15 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v16];
  [v15 setWiFiCallingSettingPreferences:preferencesCopy key:keyCopy value:valueCopy completion:v14];
}

- (void)getWiFiCallingSettingPreferences:(id)preferences key:(id)key completion:(id)completion
{
  preferencesCopy = preferences;
  keyCopy = key;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CoreTelephonyClient_Settings__getWiFiCallingSettingPreferences_key_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = completionCopy;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 getWiFiCallingSettingPreferences:preferencesCopy key:keyCopy completion:v11];
}

- (id)getWiFiCallingSettingPreferences:(id)preferences key:(id)key error:(id *)error
{
  preferencesCopy = preferences;
  keyCopy = key;
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
  [v10 getWiFiCallingSettingPreferences:preferencesCopy key:keyCopy completion:v13];
  if (error)
  {
    *error = v22[5];
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

- (id)setWiFiCallingSettingPreferences:(id)preferences key:(id)key value:(id)value
{
  preferencesCopy = preferences;
  keyCopy = key;
  valueCopy = value;
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
  [v11 setWiFiCallingSettingPreferences:preferencesCopy key:keyCopy value:valueCopy completion:v14];
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

- (void)copyEmergencyMode:(id)mode
{
  modeCopy = mode;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __52__CoreTelephonyClient_Emergency__copyEmergencyMode___block_invoke_2;
    v13 = &unk_1E6A441C8;
    v6 = &v14;
    v14 = modeCopy;
    v7 = modeCopy;
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
    v16 = modeCopy;
    v9 = modeCopy;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v15];
  }
}

void __52__CoreTelephonyClient_Emergency__copyEmergencyMode___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, v2);
}

- (id)copyEmergencyModeWithError:(id *)error
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
    if (error)
    {
      *error = v17[5];
    }

    v6 = v10[5];
    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v16, 8);
    return v6;
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
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

- (void)getAllEmergencyNumbers:(id)numbers
{
  numbersCopy = numbers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CoreTelephonyClient_Emergency__getAllEmergencyNumbers___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = numbersCopy;
  v5 = numbersCopy;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getAllEmergencyNumbers:v5];
}

- (id)getAllEmergencyNumbersWithError:(id *)error
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
  if (error)
  {
    *error = v16[5];
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

- (void)refreshCellMonitor:(id)monitor completion:(id)completion
{
  monitorCopy = monitor;
  completionCopy = completion;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __66__CoreTelephonyClient_CellMonitor__refreshCellMonitor_completion___block_invoke_2;
    v15 = &unk_1E6A43CC8;
    v9 = completionCopy;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v12];
    [v10 refreshCellMonitor:monitorCopy completion:{v9, v12, v13, v14, v15}];
    v11 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__CoreTelephonyClient_CellMonitor__refreshCellMonitor_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = completionCopy;
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

- (void)copyCellInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __60__CoreTelephonyClient_CellMonitor__copyCellInfo_completion___block_invoke_2;
    v15 = &unk_1E6A43CC8;
    v9 = completionCopy;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v12];
    [v10 copyCellInfo:infoCopy completion:{v9, v12, v13, v14, v15}];
    v11 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__CoreTelephonyClient_CellMonitor__copyCellInfo_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = completionCopy;
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

- (void)copyCellId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __58__CoreTelephonyClient_CellMonitor__copyCellId_completion___block_invoke_2;
    v15 = &unk_1E6A43CC8;
    v9 = completionCopy;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v12];
    [v10 copyCellId:idCopy completion:{v9, v12, v13, v14, v15}];
    v11 = &v16;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__CoreTelephonyClient_CellMonitor__copyCellId_completion___block_invoke;
    v17[3] = &unk_1E6A43D10;
    v18 = completionCopy;
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

- (id)copyPublicCellId:(id)id error:(id *)error
{
  idCopy = id;
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
    [v8 copyPublicCellId:idCopy completion:v11];
    if (error)
    {
      *error = v20[5];
    }

    v9 = v13[5];
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v19, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *error = v9 = 0;
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

- (void)copyLocationAreaCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CoreTelephonyClient_CellMonitor__copyLocationAreaCode_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 copyLocationAreaCode:codeCopy completion:v8];
}

- (void)isEmergencyNumber:(id)number number:(id)a4 completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__CoreTelephonyClient_Call__isEmergencyNumber_number_completion___block_invoke;
  v13[3] = &unk_1E6A441C8;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = a4;
  numberCopy = number;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 isEmergencyNumber:numberCopy number:v10 completion:v9];
}

- (BOOL)isEmergencyNumber:(id)number number:(id)a4 error:(id *)error
{
  numberCopy = number;
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
  [v10 isEmergencyNumber:numberCopy number:v9 completion:v13];
  if (error)
  {
    *error = v20[5];
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

- (void)isEmergencyNumberWithWhitelistIncluded:(id)included number:(id)number completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__CoreTelephonyClient_Call__isEmergencyNumberWithWhitelistIncluded_number_completion___block_invoke;
  v13[3] = &unk_1E6A441C8;
  v14 = completionCopy;
  v9 = completionCopy;
  numberCopy = number;
  includedCopy = included;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 isEmergencyNumberWithWhitelistIncluded:includedCopy number:numberCopy completion:v9];
}

- (BOOL)isEmergencyNumberWithWhitelistIncluded:(id)included number:(id)number error:(id *)error
{
  includedCopy = included;
  numberCopy = number;
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
  [v10 isEmergencyNumberWithWhitelistIncluded:includedCopy number:numberCopy completion:v13];
  if (error)
  {
    *error = v20[5];
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

- (void)shouldShowUserWarningWhenDialingCallOnContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__CoreTelephonyClient_Call__shouldShowUserWarningWhenDialingCallOnContext_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = completionCopy;
  v7 = completionCopy;
  contextCopy = context;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 shouldShowUserWarningWhenDialingCallOnContext:contextCopy completion:v7];
}

- (BOOL)shouldShowUserWarningWhenDialingCallOnContext:(id)context error:(id *)error
{
  contextCopy = context;
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
  [v7 shouldShowUserWarningWhenDialingCallOnContext:contextCopy completion:v10];
  if (error)
  {
    *error = v17[5];
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

- (id)shouldShowBrandedCallingInfo:(id *)info
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
  if (info)
  {
    *info = v16[5];
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

- (void)getCallCapabilities:(id)capabilities completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__CoreTelephonyClient_Call__getCallCapabilities_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = completionCopy;
  v7 = completionCopy;
  capabilitiesCopy = capabilities;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getCallCapabilities:capabilitiesCopy completion:v7];
}

- (id)getCallCapabilities:(id)capabilities error:(id *)error
{
  capabilitiesCopy = capabilities;
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
  [v7 getCallCapabilities:capabilitiesCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)getOperatorMultiPartyCallCountMaximum:(id)maximum completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__CoreTelephonyClient_Call__getOperatorMultiPartyCallCountMaximum_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = completionCopy;
  v7 = completionCopy;
  maximumCopy = maximum;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getOperatorMultiPartyCallCountMaximum:maximumCopy completion:v7];
}

void __78__CoreTelephonyClient_Call__getOperatorMultiPartyCallCountMaximum_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = a2;
  v5 = [v3 numberWithInt:0];
  (*(v2 + 16))(v2, v5, v4);
}

- (id)getOperatorMultiPartyCallCountMaximum:(id)maximum error:(id *)error
{
  maximumCopy = maximum;
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
  [v7 getOperatorMultiPartyCallCountMaximum:maximumCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (BOOL)enableLazuli:(id)lazuli withError:(id *)error
{
  lazuliCopy = lazuli;
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
  v8 = [[CTXPCSetLazuliStateRequest alloc] initWithContext:lazuliCopy shouldEnable:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__CoreTelephonyClient_Lazuli__enableLazuli_withError___block_invoke_2;
  v11[3] = &unk_1E6A44B08;
  v11[4] = &v13;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v14[5];
  }

  v9 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v9;
}

- (BOOL)disableLazuli:(id)lazuli withError:(id *)error
{
  lazuliCopy = lazuli;
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
  v8 = [[CTXPCSetLazuliStateRequest alloc] initWithContext:lazuliCopy shouldEnable:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CoreTelephonyClient_Lazuli__disableLazuli_withError___block_invoke_2;
  v11[3] = &unk_1E6A44B08;
  v11[4] = &v13;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v14[5];
  }

  v9 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v9;
}

- (id)retrieveMessage:(id)message withMessageID:(id)d withError:(id *)error
{
  messageCopy = message;
  dCopy = d;
  if (error)
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
    v11 = [[CTXPCRetrieveMessageRequest alloc] initWithContext:messageCopy messageID:dCopy];
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
      *error = v12;
    }

    error = [v16[5] messageEnvelope];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v22, 8);
  }

  return error;
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

- (id)retrieveAllIncomingMessageIDs:(id)ds withError:(id *)error
{
  dsCopy = ds;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCRetrieveAllMessagesRequest alloc] initWithContext:dsCopy];
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
  if (error)
  {
    v9 = v21[5];
    if (v9)
    {
      *error = v9;
    }
  }

  messageIDList = [v14[5] messageIDList];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v20, 8);

  return messageIDList;
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

- (BOOL)revokeMessage:(id)message withRevokeData:(id)data withMessageID:(id)d withError:(id *)error
{
  messageCopy = message;
  dataCopy = data;
  dCopy = d;
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
  v14 = [[CTXPCMessageRevokeRequest alloc] initWithContext:messageCopy revokeData:dataCopy messageID:dCopy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__CoreTelephonyClient_Lazuli__revokeMessage_withRevokeData_withMessageID_withError___block_invoke_2;
  v19[3] = &unk_1E6A44B08;
  v19[4] = &v21;
  [v13 sendRequest:v14 completionHandler:v19];
  v15 = v22;
  if (error)
  {
    v16 = v22[5];
    if (v16)
    {
      *error = v16;
      v15 = v22;
    }
  }

  v17 = v15[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v17;
}

- (BOOL)acknowledgeIncomingMessages:(id)messages withMessageIDList:(id)list withError:(id *)error
{
  messagesCopy = messages;
  listCopy = list;
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
  v11 = [[CTXPCAcknowledgeIncomingMessagesRequest alloc] initWithContext:messagesCopy messageIDList:listCopy];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__CoreTelephonyClient_Lazuli__acknowledgeIncomingMessages_withMessageIDList_withError___block_invoke_2;
  v16[3] = &unk_1E6A44B08;
  v16[4] = &v18;
  [v10 sendRequest:v11 completionHandler:v16];
  v12 = v19;
  if (error)
  {
    v13 = v19[5];
    if (v13)
    {
      *error = v13;
      v12 = v19;
    }
  }

  v14 = v12[5] == 0;

  _Block_object_dispose(&v18, 8);
  return v14;
}

- (id)getSystemConfiguration:(id)configuration withError:(id *)error
{
  configurationCopy = configuration;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSystemConfigRequest alloc] initWithContext:configurationCopy];
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
  if (error && (v9 = v21[5]) != 0)
  {
    config = 0;
    *error = v9;
  }

  else
  {
    config = [v14[5] config];
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v20, 8);

  return config;
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

- (BOOL)fetchRemoteCapabilities:(id)capabilities forDestination:(id)destination withOptions:(id)options withOperationID:(id)d withError:(id *)error
{
  capabilitiesCopy = capabilities;
  destinationCopy = destination;
  optionsCopy = options;
  dCopy = d;
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
  v17 = [[CTXPCFetchRemoteCapabilitiesRequest alloc] initWithContext:capabilitiesCopy destination:destinationCopy options:optionsCopy operationID:dCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __108__CoreTelephonyClient_Lazuli__fetchRemoteCapabilities_forDestination_withOptions_withOperationID_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (error)
  {
    v19 = v25[5];
    if (v19)
    {
      *error = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendComposingIndicator:(id)indicator to:(id)to messageID:(id)d indication:(id)indication withSecurity:(id)security error:(id *)error
{
  indicatorCopy = indicator;
  toCopy = to;
  dCopy = d;
  indicationCopy = indication;
  securityCopy = security;
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
  v20 = [[CTXPCSendComposingIndicatorRequest alloc] initWithContext:indicatorCopy destination:toCopy messageID:dCopy indication:indicationCopy security:securityCopy];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __97__CoreTelephonyClient_Lazuli__sendComposingIndicator_to_messageID_indication_withSecurity_error___block_invoke_2;
  v23[3] = &unk_1E6A44B08;
  v23[4] = &v25;
  [v19 sendRequest:v20 completionHandler:v23];
  if (error)
  {
    *error = v26[5];
  }

  v21 = v26[5] == 0;

  _Block_object_dispose(&v25, 8);
  return v21;
}

- (id)readCachedChatBotRenderInformation:(id)information forChatBot:(id)bot withError:(id *)error
{
  informationCopy = information;
  botCopy = bot;
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
  v11 = [[CTXPCReadCachedChatBotRenderInfoRequest alloc] initWithContext:informationCopy destination:botCopy];
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
  if (error)
  {
    v12 = v24[5];
    if (v12)
    {
      *error = v12;
    }
  }

  info = [v17[5] info];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v23, 8);

  return info;
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

- (BOOL)fetchRenderInformation:(id)information forChatBot:(id)bot withOperationID:(id)d withError:(id *)error
{
  informationCopy = information;
  botCopy = bot;
  dCopy = d;
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
  v14 = [[CTXPCFetchRenderInformationRequest alloc] initWithContext:informationCopy destination:botCopy operationID:dCopy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__CoreTelephonyClient_Lazuli__fetchRenderInformation_forChatBot_withOperationID_withError___block_invoke_2;
  v19[3] = &unk_1E6A44B08;
  v19[4] = &v21;
  [v13 sendRequest:v14 completionHandler:v19];
  v15 = v22;
  if (error)
  {
    v16 = v22[5];
    if (v16)
    {
      *error = v16;
      v15 = v22;
    }
  }

  v17 = v15[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v17;
}

- (BOOL)sendFileTransferMessage:(id)message to:(id)to withMessageID:(id)d withFileInformation:(id)information withSecurity:(id)security withError:(id *)error
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  informationCopy = information;
  securityCopy = security;
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
  v20 = [[CTXPCSendFileTransferMessageRequest alloc] initWithContext:messageCopy destination:toCopy messageID:dCopy descriptor:informationCopy security:securityCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __115__CoreTelephonyClient_Lazuli__sendFileTransferMessage_to_withMessageID_withFileInformation_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (error)
  {
    v22 = v28[5];
    if (v22)
    {
      *error = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)sendTextMessage:(id)message to:(id)to withMessageID:(id)d withMessage:(id)withMessage withSecurity:(id)security withError:(id *)error
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  withMessageCopy = withMessage;
  securityCopy = security;
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
  v20 = [[CTXPCSendTextMessageRequest alloc] initWithContext:messageCopy destination:toCopy messageID:dCopy message:withMessageCopy security:securityCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __99__CoreTelephonyClient_Lazuli__sendTextMessage_to_withMessageID_withMessage_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (error)
  {
    v22 = v28[5];
    if (v22)
    {
      *error = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)sendGeolocationMessage:(id)message to:(id)to withMessageID:(id)d withGeoPush:(id)push withSecurity:(id)security withError:(id *)error
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  pushCopy = push;
  securityCopy = security;
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
  v20 = [[CTXPCSendGeolocationMessageRequest alloc] initWithContext:messageCopy destination:toCopy messageID:dCopy geoLocationPush:pushCopy security:securityCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __106__CoreTelephonyClient_Lazuli__sendGeolocationMessage_to_withMessageID_withGeoPush_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (error)
  {
    v22 = v28[5];
    if (v22)
    {
      *error = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)sendDispositionNotificationMessage:(id)message to:(id)to withMessageID:(id)d withDisposition:(int64_t)disposition forMessageID:(id)iD withSecurity:(id)security withError:(id *)error
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  iDCopy = iD;
  securityCopy = security;
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
  v21 = [[CTXPCSendDispositionNotificationMessageRequest alloc] initWithContext:messageCopy destination:toCopy messageID:dCopy notificationType:disposition notificationMessageID:iDCopy security:securityCopy];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __135__CoreTelephonyClient_Lazuli__sendDispositionNotificationMessage_to_withMessageID_withDisposition_forMessageID_withSecurity_withError___block_invoke_2;
  v26[3] = &unk_1E6A44B08;
  v26[4] = &v28;
  [v20 sendRequest:v21 completionHandler:v26];
  v22 = v29;
  if (error)
  {
    v23 = v29[5];
    if (v23)
    {
      *error = v23;
      v22 = v29;
    }
  }

  v24 = v22[5] == 0;

  _Block_object_dispose(&v28, 8);
  return v24;
}

- (BOOL)sendResponseForSuggestedAction:(id)action to:(id)to withMessageID:(id)d response:(id)response withError:(id *)error
{
  actionCopy = action;
  toCopy = to;
  dCopy = d;
  responseCopy = response;
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
  v17 = [[CTXPCSendResponseForSuggestedActionRequest alloc] initWithContext:actionCopy destination:toCopy messageID:dCopy response:responseCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __98__CoreTelephonyClient_Lazuli__sendResponseForSuggestedAction_to_withMessageID_response_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (error)
  {
    v19 = v25[5];
    if (v19)
    {
      *error = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendResponseForSuggestedReply:(id)reply to:(id)to withMessageID:(id)d response:(id)response withError:(id *)error
{
  replyCopy = reply;
  toCopy = to;
  dCopy = d;
  responseCopy = response;
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
  v17 = [[CTXPCSendResponseForSuggestedReplyRequest alloc] initWithContext:replyCopy destination:toCopy messageID:dCopy response:responseCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __97__CoreTelephonyClient_Lazuli__sendResponseForSuggestedReply_to_withMessageID_response_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (error)
  {
    v19 = v25[5];
    if (v19)
    {
      *error = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)reportChatbotSpam:(id)spam forChatbot:(id)chatbot withSpamReportInfo:(id)info andOperationID:(id)d withError:(id *)error
{
  spamCopy = spam;
  chatbotCopy = chatbot;
  infoCopy = info;
  dCopy = d;
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
  v17 = [[CTXPCReportChatBotSpamRequest alloc] initWithContext:spamCopy destination:chatbotCopy spamReportInfo:infoCopy operationID:dCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __104__CoreTelephonyClient_Lazuli__reportChatbotSpam_forChatbot_withSpamReportInfo_andOperationID_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (error)
  {
    v19 = v25[5];
    if (v19)
    {
      *error = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)reportLazuliSpamWithContext:(id)context destination:(id)destination spamReportInfo:(id)info operationID:(id)d error:(id *)error
{
  contextCopy = context;
  destinationCopy = destination;
  infoCopy = info;
  dCopy = d;
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
  v17 = [[CTXPCReportSpamRequest alloc] initWithContext:contextCopy destination:destinationCopy spamReportInfo:infoCopy operationID:dCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __104__CoreTelephonyClient_Lazuli__reportLazuliSpamWithContext_destination_spamReportInfo_operationID_error___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (error)
  {
    v19 = v25[5];
    if (v19)
    {
      *error = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendDeviceAction:(id)action to:(id)to withMessageID:(id)d withAction:(id)withAction withError:(id *)error
{
  actionCopy = action;
  toCopy = to;
  dCopy = d;
  withActionCopy = withAction;
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
  v17 = [[CTXPCSendDeviceActionRequest alloc] initWithContext:actionCopy destination:toCopy messageID:dCopy action:withActionCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__CoreTelephonyClient_Lazuli__sendDeviceAction_to_withMessageID_withAction_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (error)
  {
    v19 = v25[5];
    if (v19)
    {
      *error = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendDeviceSettings:(id)settings to:(id)to withMessageID:(id)d withSetting:(id)setting withError:(id *)error
{
  settingsCopy = settings;
  toCopy = to;
  dCopy = d;
  settingCopy = setting;
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
  v17 = [[CTXPCSendDeviceSettingsRequest alloc] initWithContext:settingsCopy destination:toCopy messageID:dCopy settings:settingCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__CoreTelephonyClient_Lazuli__sendDeviceSettings_to_withMessageID_withSetting_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (error)
  {
    v19 = v25[5];
    if (v19)
    {
      *error = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendTextMessage:(id)message toGroupDestination:(id)destination withMessageID:(id)d withMessage:(id)withMessage withSecurity:(id)security withError:(id *)error
{
  messageCopy = message;
  destinationCopy = destination;
  dCopy = d;
  withMessageCopy = withMessage;
  securityCopy = security;
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
  v20 = [[CTXPCSendTextMessageRequest alloc] initWithContext:messageCopy groupChatURI:destinationCopy messageID:dCopy message:withMessageCopy security:securityCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __115__CoreTelephonyClient_Lazuli__sendTextMessage_toGroupDestination_withMessageID_withMessage_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (error)
  {
    v22 = v28[5];
    if (v22)
    {
      *error = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)sendGeolocationMessage:(id)message toGroupDestination:(id)destination withMessageID:(id)d withGeoPush:(id)push withSecurity:(id)security withError:(id *)error
{
  messageCopy = message;
  destinationCopy = destination;
  dCopy = d;
  pushCopy = push;
  securityCopy = security;
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
  v20 = [[CTXPCSendGeolocationMessageRequest alloc] initWithContext:messageCopy groupChatURI:destinationCopy messageID:dCopy geoLocationPush:pushCopy security:securityCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __122__CoreTelephonyClient_Lazuli__sendGeolocationMessage_toGroupDestination_withMessageID_withGeoPush_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (error)
  {
    v22 = v28[5];
    if (v22)
    {
      *error = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)sendFileTransferMessage:(id)message toGroupDestination:(id)destination withMessageID:(id)d withFileInformation:(id)information withSecurity:(id)security withError:(id *)error
{
  messageCopy = message;
  destinationCopy = destination;
  dCopy = d;
  informationCopy = information;
  securityCopy = security;
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
  v20 = [[CTXPCSendFileTransferMessageRequest alloc] initWithContext:messageCopy groupChatURI:destinationCopy messageID:dCopy descriptor:informationCopy security:securityCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __131__CoreTelephonyClient_Lazuli__sendFileTransferMessage_toGroupDestination_withMessageID_withFileInformation_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (error)
  {
    v22 = v28[5];
    if (v22)
    {
      *error = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)sendComposingIndicator:(id)indicator toGroupDestination:(id)destination withMessageID:(id)d withIndication:(id)indication withSecurity:(id)security withError:(id *)error
{
  indicatorCopy = indicator;
  destinationCopy = destination;
  dCopy = d;
  indicationCopy = indication;
  securityCopy = security;
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
  v20 = [[CTXPCSendComposingIndicatorRequest alloc] initWithContext:indicatorCopy groupChatURI:destinationCopy messageID:dCopy indication:indicationCopy security:securityCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __125__CoreTelephonyClient_Lazuli__sendComposingIndicator_toGroupDestination_withMessageID_withIndication_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (error)
  {
    v22 = v28[5];
    if (v22)
    {
      *error = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)removeParticipants:(id)participants fromGroupChat:(id)chat withParticipantsToRemove:(id)remove withOperationID:(id)d withSecurity:(id)security withError:(id *)error
{
  participantsCopy = participants;
  chatCopy = chat;
  removeCopy = remove;
  dCopy = d;
  securityCopy = security;
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
  v20 = [[CTXPCRemoveParticipantsRequest alloc] initWithContext:participantsCopy groupChatURI:chatCopy participants:removeCopy operationID:dCopy security:securityCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __128__CoreTelephonyClient_Lazuli__removeParticipants_fromGroupChat_withParticipantsToRemove_withOperationID_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (error)
  {
    v22 = v28[5];
    if (v22)
    {
      *error = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)exit:(id)exit groupChat:(id)chat withOperationID:(id)d withError:(id *)error
{
  exitCopy = exit;
  chatCopy = chat;
  dCopy = d;
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
  v14 = [[CTXPCExitGroupChatRequest alloc] initWithContext:exitCopy groupChatURI:chatCopy operationID:dCopy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__CoreTelephonyClient_Lazuli__exit_groupChat_withOperationID_withError___block_invoke_2;
  v19[3] = &unk_1E6A44B08;
  v19[4] = &v21;
  [v13 sendRequest:v14 completionHandler:v19];
  v15 = v22;
  if (error)
  {
    v16 = v22[5];
    if (v16)
    {
      *error = v16;
      v15 = v22;
    }
  }

  v17 = v15[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v17;
}

- (BOOL)create:(id)create groupChat:(id)chat withOperationID:(id)d withError:(id *)error
{
  createCopy = create;
  chatCopy = chat;
  dCopy = d;
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
  v14 = [[CTXPCCreateGroupChatRequest alloc] initWithContext:createCopy groupChatInfo:chatCopy operationID:dCopy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__CoreTelephonyClient_Lazuli__create_groupChat_withOperationID_withError___block_invoke_2;
  v19[3] = &unk_1E6A44B08;
  v19[4] = &v21;
  [v13 sendRequest:v14 completionHandler:v19];
  v15 = v22;
  if (error)
  {
    v16 = v22[5];
    if (v16)
    {
      *error = v16;
      v15 = v22;
    }
  }

  v17 = v15[5] == 0;

  _Block_object_dispose(&v21, 8);
  return v17;
}

- (BOOL)changeSubject:(id)subject forGroupChat:(id)chat withNewSubject:(id)newSubject withOperationID:(id)d withSecurity:(id)security withError:(id *)error
{
  subjectCopy = subject;
  chatCopy = chat;
  newSubjectCopy = newSubject;
  dCopy = d;
  securityCopy = security;
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
  v20 = [[CTXPCChangeSubjectRequest alloc] initWithContext:subjectCopy groupChatURI:chatCopy subject:newSubjectCopy operationID:dCopy security:securityCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __112__CoreTelephonyClient_Lazuli__changeSubject_forGroupChat_withNewSubject_withOperationID_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (error)
  {
    v22 = v28[5];
    if (v22)
    {
      *error = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)changeIcon:(id)icon forGroupChat:(id)chat withNewIcon:(id)newIcon withOperationID:(id)d withSecurity:(id)security withError:(id *)error
{
  iconCopy = icon;
  chatCopy = chat;
  newIconCopy = newIcon;
  dCopy = d;
  securityCopy = security;
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
  v20 = [[CTXPCChangeIconRequest alloc] initWithContext:iconCopy groupChatURI:chatCopy icon:newIconCopy operationID:dCopy security:securityCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __106__CoreTelephonyClient_Lazuli__changeIcon_forGroupChat_withNewIcon_withOperationID_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (error)
  {
    v22 = v28[5];
    if (v22)
    {
      *error = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (BOOL)addParticipants:(id)participants toGroupChat:(id)chat withParticipantsToAdd:(id)add withOperationID:(id)d withSecurity:(id)security withError:(id *)error
{
  participantsCopy = participants;
  chatCopy = chat;
  addCopy = add;
  dCopy = d;
  securityCopy = security;
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
  v20 = [[CTXPCAddParticipantsRequest alloc] initWithContext:participantsCopy groupChatURI:chatCopy participants:addCopy operationID:dCopy security:securityCopy];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __120__CoreTelephonyClient_Lazuli__addParticipants_toGroupChat_withParticipantsToAdd_withOperationID_withSecurity_withError___block_invoke_2;
  v25[3] = &unk_1E6A44B08;
  v25[4] = &v27;
  [v19 sendRequest:v20 completionHandler:v25];
  v21 = v28;
  if (error)
  {
    v22 = v28[5];
    if (v22)
    {
      *error = v22;
      v21 = v28;
    }
  }

  v23 = v21[5] == 0;

  _Block_object_dispose(&v27, 8);
  return v23;
}

- (id)decodeSuggestionsBase64:(id)base64 withBase64String:(id)string withError:(id *)error
{
  base64Copy = base64;
  stringCopy = string;
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
  v11 = [[CTXPCDecodeSuggestionsBase64Request alloc] initWithContext:base64Copy base64String:stringCopy];
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
  if (error)
  {
    v12 = v24[5];
    if (v12)
    {
      *error = v12;
    }
  }

  decodedPayload = [v17[5] decodedPayload];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v23, 8);

  return decodedPayload;
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

- (BOOL)deleteChat:(id)chat chat:(id)a4 withError:(id *)error
{
  chatCopy = chat;
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
  v11 = [[CTXPCDeleteChatRequest alloc] initWithContext:chatCopy chat:v9];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__CoreTelephonyClient_Lazuli__deleteChat_chat_withError___block_invoke_2;
  v16[3] = &unk_1E6A44B08;
  v16[4] = &v18;
  [v10 sendRequest:v11 completionHandler:v16];
  v12 = v19;
  if (error)
  {
    v13 = v19[5];
    if (v13)
    {
      *error = v13;
      v12 = v19;
    }
  }

  v14 = v12[5] == 0;

  _Block_object_dispose(&v18, 8);
  return v14;
}

- (BOOL)sendGroupDispositionNotificationMessage:(id)message toGroup:(id)group to:(id)to withMessageID:(id)d withDisposition:(int64_t)disposition forMessageID:(id)iD withSecurity:(id)security withError:(id *)self0
{
  messageCopy = message;
  groupCopy = group;
  toCopy = to;
  dCopy = d;
  iDCopy = iD;
  securityCopy = security;
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
  v23 = [[CTXPCSendDispositionNotificationMessageRequest alloc] initWithContext:messageCopy groupChatURI:groupCopy destination:toCopy messageID:dCopy notificationType:disposition notificationMessageID:iDCopy security:securityCopy];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __148__CoreTelephonyClient_Lazuli__sendGroupDispositionNotificationMessage_toGroup_to_withMessageID_withDisposition_forMessageID_withSecurity_withError___block_invoke_2;
  v28[3] = &unk_1E6A44B08;
  v28[4] = &v30;
  [v22 sendRequest:v23 completionHandler:v28];
  v24 = v31;
  if (error)
  {
    v25 = v31[5];
    if (v25)
    {
      *error = v25;
      v24 = v31;
    }
  }

  v26 = v24[5] == 0;

  _Block_object_dispose(&v30, 8);
  return v26;
}

- (id)setProvisioningServerURL:(id)l url:(id)url
{
  lCopy = l;
  urlCopy = url;
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
  v9 = [[CTXPCSetProvisioningServerURLRequest alloc] initWithContext:lCopy url:urlCopy];
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

- (id)getProvisioningServerURL:(id)l outError:(id *)error
{
  lCopy = l;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetProvisioningServerURLRequest alloc] initWithContext:lCopy];
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
  if (error)
  {
    v9 = v21[5];
    if (v9)
    {
      *error = v9;
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

- (id)readCachedCapabilities:(id)capabilities forDestination:(id)destination withError:(id *)error
{
  capabilitiesCopy = capabilities;
  destinationCopy = destination;
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
  v11 = [[CTXPCReadCachedCapabilitiesRequest alloc] initWithContext:capabilitiesCopy destination:destinationCopy];
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
  if (error)
  {
    v12 = v24[5];
    if (v12)
    {
      *error = v12;
    }
  }

  capabilitiesInfo = [v17[5] capabilitiesInfo];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v23, 8);

  return capabilitiesInfo;
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

- (BOOL)sendOneToManyTextMessage:(id)message to:(id)to withMessageID:(id)d withMessage:(id)withMessage withError:(id *)error
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  withMessageCopy = withMessage;
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
  v17 = [[CTXPCSendOneToManyTextMessageRequest alloc] initWithContext:messageCopy to:toCopy withMessageID:dCopy withMessage:withMessageCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __95__CoreTelephonyClient_Lazuli__sendOneToManyTextMessage_to_withMessageID_withMessage_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (error)
  {
    v19 = v25[5];
    if (v19)
    {
      *error = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendOneToManyGeolocationMessage:(id)message to:(id)to withMessageID:(id)d withGeoPush:(id)push withError:(id *)error
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  pushCopy = push;
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
  v17 = [[CTXPCSendOneToManyGeoLocationRequest alloc] initWithContext:messageCopy to:toCopy withMessageID:dCopy withGeoPush:pushCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __102__CoreTelephonyClient_Lazuli__sendOneToManyGeolocationMessage_to_withMessageID_withGeoPush_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (error)
  {
    v19 = v25[5];
    if (v19)
    {
      *error = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)sendOneToManyFileTransferMessage:(id)message to:(id)to withMessageID:(id)d withDescriptor:(id)descriptor withError:(id *)error
{
  messageCopy = message;
  toCopy = to;
  dCopy = d;
  descriptorCopy = descriptor;
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
  v17 = [[CTXPCSendOneToManyFileTransferRequest alloc] initWithContext:messageCopy to:toCopy withMessageID:dCopy withDescriptor:descriptorCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __106__CoreTelephonyClient_Lazuli__sendOneToManyFileTransferMessage_to_withMessageID_withDescriptor_withError___block_invoke_2;
  v22[3] = &unk_1E6A44B08;
  v22[4] = &v24;
  [v16 sendRequest:v17 completionHandler:v22];
  v18 = v25;
  if (error)
  {
    v19 = v25[5];
    if (v19)
    {
      *error = v19;
      v18 = v25;
    }
  }

  v20 = v18[5] == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

- (BOOL)enableBusinessMessaging:(id)messaging withError:(id *)error
{
  messagingCopy = messaging;
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
  v8 = [[CTXPCSetBusinessMessagingStateRequest alloc] initWithContext:messagingCopy shouldEnable:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CoreTelephonyClient_Lazuli__enableBusinessMessaging_withError___block_invoke_2;
  v11[3] = &unk_1E6A44B08;
  v11[4] = &v13;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v14[5];
  }

  v9 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v9;
}

- (BOOL)disableBusinessMessaging:(id)messaging withError:(id *)error
{
  messagingCopy = messaging;
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
  v8 = [[CTXPCSetBusinessMessagingStateRequest alloc] initWithContext:messagingCopy shouldEnable:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CoreTelephonyClient_Lazuli__disableBusinessMessaging_withError___block_invoke_2;
  v11[3] = &unk_1E6A44B08;
  v11[4] = &v13;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v14[5];
  }

  v9 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v9;
}

- (void)getSmsReadyState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__CoreTelephonyClient_SMS__getSmsReadyState_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSmsReadyState:stateCopy completion:v8];
}

- (id)getSmsReadyState:(id)state error:(id *)error
{
  stateCopy = state;
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
  [v7 getSmsReadyState:stateCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)getSmscAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CoreTelephonyClient_SMS__getSmscAddress_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSmscAddress:addressCopy completion:v8];
}

- (id)getSmscAddress:(id)address error:(id *)error
{
  addressCopy = address;
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
  [v7 getSmscAddress:addressCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)getEmergencyTextNumbers:(id)numbers completion:(id)completion
{
  numbersCopy = numbers;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__CoreTelephonyClient_SMS__getEmergencyTextNumbers_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getEmergencyTextNumbers:numbersCopy completion:v8];
}

- (id)getEmergencyTextNumbers:(id)numbers error:(id *)error
{
  numbersCopy = numbers;
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
  [v7 getEmergencyTextNumbers:numbersCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)dataUsageForLastPeriods:(unint64_t)periods completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__CoreTelephonyClient_DataUsage__dataUsageForLastPeriods_completion___block_invoke;
  v9[3] = &unk_1E6A43CC8;
  v7 = completionCopy;
  v10 = v7;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v9];
  [v8 dataUsageForLastPeriods:periods completion:v7];
}

- (void)dataUsageForLastPeriodsOnActivePairedDevice:(unint64_t)device completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__CoreTelephonyClient_DataUsage__dataUsageForLastPeriodsOnActivePairedDevice_completion___block_invoke;
  v9[3] = &unk_1E6A43CC8;
  v7 = completionCopy;
  v10 = v7;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v9];
  [v8 dataUsageForLastPeriodsOnActivePairedDevice:device completion:v7];
}

- (id)billingCycleEndDatesForLastPeriods:(unint64_t)periods error:(id *)error
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
  [v6 billingCycleEndDatesForLastPeriods:periods completion:v9];
  if (error)
  {
    *error = v18[5];
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

- (void)usageCollectionEnabled:(id)enabled
{
  enabledCopy = enabled;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CoreTelephonyClient_DataUsage__usageCollectionEnabled___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = enabledCopy;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 usageCollectionEnabled:v5];
}

- (id)usageCollectionEnabledSync:(id *)sync
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
  if (sync)
  {
    *sync = v16[5];
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

- (void)userEnteredMonthlyBudget:(id)budget completion:(id)completion
{
  budgetCopy = budget;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CoreTelephonyClient_DataUsage__userEnteredMonthlyBudget_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 userEnteredMonthlyBudget:budgetCopy completion:v8];
}

- (id)userEnteredMonthlyBudget:(id)budget error:(id *)error
{
  budgetCopy = budget;
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
  [v7 userEnteredMonthlyBudget:budgetCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)setUserEntered:(id)entered monthlyBudget:(id)budget completion:(id)completion
{
  enteredCopy = entered;
  budgetCopy = budget;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__CoreTelephonyClient_DataUsage__setUserEntered_monthlyBudget_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = completionCopy;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 setUserEntered:enteredCopy monthlyBudget:budgetCopy completion:v11];
}

- (void)setUserEntered:(id)entered monthlyBudget:(id)budget error:(id *)error
{
  enteredCopy = entered;
  budgetCopy = budget;
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
  [v10 setUserEntered:enteredCopy monthlyBudget:budgetCopy completion:v11];
  if (error)
  {
    *error = v14[5];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)clearUserEnteredMonthlyBudget:(id)budget completion:(id)completion
{
  budgetCopy = budget;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CoreTelephonyClient_DataUsage__clearUserEnteredMonthlyBudget_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 clearUserEnteredMonthlyBudget:budgetCopy completion:v8];
}

- (void)clearUserEnteredMonthlyBudget:(id)budget error:(id *)error
{
  budgetCopy = budget;
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
  [v7 clearUserEnteredMonthlyBudget:budgetCopy completion:v8];
  if (error)
  {
    *error = v11[5];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)userEnteredMonthlyRoamingBudget:(id)budget completion:(id)completion
{
  budgetCopy = budget;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__CoreTelephonyClient_DataUsage__userEnteredMonthlyRoamingBudget_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 userEnteredMonthlyRoamingBudget:budgetCopy completion:v8];
}

- (id)userEnteredMonthlyRoamingBudget:(id)budget error:(id *)error
{
  budgetCopy = budget;
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
  [v7 userEnteredMonthlyRoamingBudget:budgetCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)setUserEntered:(id)entered monthlyRoamingBudget:(id)budget completion:(id)completion
{
  enteredCopy = entered;
  budgetCopy = budget;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CoreTelephonyClient_DataUsage__setUserEntered_monthlyRoamingBudget_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = completionCopy;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 setUserEntered:enteredCopy monthlyRoamingBudget:budgetCopy completion:v11];
}

- (void)setUserEntered:(id)entered monthlyRoamingBudget:(id)budget error:(id *)error
{
  enteredCopy = entered;
  budgetCopy = budget;
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
  [v10 setUserEntered:enteredCopy monthlyRoamingBudget:budgetCopy completion:v11];
  if (error)
  {
    *error = v14[5];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)clearUserEnteredMonthlyRoamingBudget:(id)budget completion:(id)completion
{
  budgetCopy = budget;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__CoreTelephonyClient_DataUsage__clearUserEnteredMonthlyRoamingBudget_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 clearUserEnteredMonthlyRoamingBudget:budgetCopy completion:v8];
}

- (void)clearUserEnteredMonthlyRoamingBudget:(id)budget error:(id *)error
{
  budgetCopy = budget;
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
  [v7 clearUserEnteredMonthlyRoamingBudget:budgetCopy completion:v8];
  if (error)
  {
    *error = v11[5];
  }

  _Block_object_dispose(&v10, 8);
}

- (void)userEnteredBillingEndDayOfMont:(id)mont completion:(id)completion
{
  montCopy = mont;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CoreTelephonyClient_DataUsage__userEnteredBillingEndDayOfMont_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 userEnteredBillingEndDayOfMont:montCopy completion:v8];
}

- (id)userEnteredBillingEndDayOfMont:(id)mont error:(id *)error
{
  montCopy = mont;
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
  [v7 userEnteredBillingEndDayOfMont:montCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)setUserEnteredBillingEnd:(id)end dayOfMonth:(id)month completion:(id)completion
{
  endCopy = end;
  monthCopy = month;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CoreTelephonyClient_DataUsage__setUserEnteredBillingEnd_dayOfMonth_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = completionCopy;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 setUserEnteredBillingEnd:endCopy dayOfMonth:monthCopy completion:v11];
}

- (void)setUserEnteredBillingEnd:(id)end dayOfMonth:(id)month error:(id *)error
{
  endCopy = end;
  monthCopy = month;
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
  [v10 setUserEnteredBillingEnd:endCopy dayOfMonth:monthCopy completion:v11];
  if (error)
  {
    *error = v14[5];
  }

  _Block_object_dispose(&v13, 8);
}

- (void)clearUserEnteredBillingEndDayOfMonth:(id)month completion:(id)completion
{
  monthCopy = month;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__CoreTelephonyClient_DataUsage__clearUserEnteredBillingEndDayOfMonth_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 clearUserEnteredBillingEndDayOfMonth:monthCopy completion:v8];
}

- (void)clearUserEnteredBillingEndDayOfMonth:(id)month error:(id *)error
{
  monthCopy = month;
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
  [v7 clearUserEnteredBillingEndDayOfMonth:monthCopy completion:v8];
  if (error)
  {
    *error = v11[5];
  }

  _Block_object_dispose(&v10, 8);
}

- (id)getCellularUsageWorkspaceInfo:(id *)info
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
  if (info)
  {
    *info = v16[5];
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

- (BOOL)supportsSelector:(SEL)selector withContext:(id)context error:(id *)error
{
  contextCopy = context;
  if (!contextCopy)
  {
    if (error)
    {
      v10 = 22;
LABEL_8:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v10 userInfo:0];
      *error = v9 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (![(CoreTelephonyClient *)self supportsRequestWithSelector:selector])
  {
    if (error)
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

- (void)copyCarrierBundleValue:(id)value key:(id)key bundleType:(id)type completion:(id)completion
{
  valueCopy = value;
  keyCopy = key;
  typeCopy = type;
  completionCopy = completion;
  v28 = 0;
  v15 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:valueCopy error:&v28];
  v16 = v28;
  if (v15)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __87__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_key_bundleType_completion___block_invoke_2;
    v23 = &unk_1E6A43CC8;
    v17 = completionCopy;
    v24 = v17;
    v18 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v20];
    [v18 copyCarrierBundleValue:valueCopy key:keyCopy bundleType:typeCopy completion:{v17, v20, v21, v22, v23}];
    v19 = &v24;
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __87__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_key_bundleType_completion___block_invoke;
    v25[3] = &unk_1E6A459B0;
    v27 = completionCopy;
    v26 = v16;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v25];
    v19 = &v27;
    v18 = v26;
  }
}

- (id)copyCarrierBundleValue:(id)value key:(id)key bundleType:(id)type error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  typeCopy = type;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:valueCopy error:error])
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
    [v14 copyCarrierBundleValue:valueCopy key:keyCopy bundleType:typeCopy completion:v17];
    if (error)
    {
      *error = v26[5];
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

- (void)copyCarrierBundleValue:(id)value keyHierarchy:(id)hierarchy bundleType:(id)type completion:(id)completion
{
  valueCopy = value;
  hierarchyCopy = hierarchy;
  typeCopy = type;
  completionCopy = completion;
  v28 = 0;
  v15 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:valueCopy error:&v28];
  v16 = v28;
  if (v15)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __96__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_keyHierarchy_bundleType_completion___block_invoke_2;
    v23 = &unk_1E6A43CC8;
    v17 = completionCopy;
    v24 = v17;
    v18 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v20];
    [v18 copyCarrierBundleValue:valueCopy keyHierarchy:hierarchyCopy bundleType:typeCopy completion:{v17, v20, v21, v22, v23}];
    v19 = &v24;
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __96__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValue_keyHierarchy_bundleType_completion___block_invoke;
    v25[3] = &unk_1E6A459B0;
    v27 = completionCopy;
    v26 = v16;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v25];
    v19 = &v27;
    v18 = v26;
  }
}

- (id)copyCarrierBundleValue:(id)value keyHierarchy:(id)hierarchy bundleType:(id)type error:(id *)error
{
  valueCopy = value;
  hierarchyCopy = hierarchy;
  typeCopy = type;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:valueCopy error:error])
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
    [v14 copyCarrierBundleValue:valueCopy keyHierarchy:hierarchyCopy bundleType:typeCopy completion:v17];
    if (error)
    {
      *error = v26[5];
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

- (void)copyCarrierBundleValueWithDefault:(id)default key:(id)key bundleType:(id)type completion:(id)completion
{
  defaultCopy = default;
  keyCopy = key;
  typeCopy = type;
  completionCopy = completion;
  v28 = 0;
  v15 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:defaultCopy error:&v28];
  v16 = v28;
  if (v15)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __98__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_key_bundleType_completion___block_invoke_2;
    v23 = &unk_1E6A43CC8;
    v17 = completionCopy;
    v24 = v17;
    v18 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v20];
    [v18 copyCarrierBundleValueWithDefault:defaultCopy key:keyCopy bundleType:typeCopy completion:{v17, v20, v21, v22, v23}];
    v19 = &v24;
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __98__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_key_bundleType_completion___block_invoke;
    v25[3] = &unk_1E6A459B0;
    v27 = completionCopy;
    v26 = v16;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v25];
    v19 = &v27;
    v18 = v26;
  }
}

- (id)copyCarrierBundleValueWithDefault:(id)default key:(id)key bundleType:(id)type error:(id *)error
{
  defaultCopy = default;
  keyCopy = key;
  typeCopy = type;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:defaultCopy error:error])
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
    [v14 copyCarrierBundleValueWithDefault:defaultCopy key:keyCopy bundleType:typeCopy completion:v17];
    if (error)
    {
      *error = v26[5];
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

- (void)copyCarrierBundleValueWithDefault:(id)default keyHierarchy:(id)hierarchy bundleType:(id)type completion:(id)completion
{
  defaultCopy = default;
  hierarchyCopy = hierarchy;
  typeCopy = type;
  completionCopy = completion;
  v28 = 0;
  v15 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:defaultCopy error:&v28];
  v16 = v28;
  if (v15)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __107__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_keyHierarchy_bundleType_completion___block_invoke_2;
    v23 = &unk_1E6A43CC8;
    v17 = completionCopy;
    v24 = v17;
    v18 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v20];
    [v18 copyCarrierBundleValueWithDefault:defaultCopy keyHierarchy:hierarchyCopy bundleType:typeCopy completion:{v17, v20, v21, v22, v23}];
    v19 = &v24;
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __107__CoreTelephonyClient_CarrierBundle__copyCarrierBundleValueWithDefault_keyHierarchy_bundleType_completion___block_invoke;
    v25[3] = &unk_1E6A459B0;
    v27 = completionCopy;
    v26 = v16;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v25];
    v19 = &v27;
    v18 = v26;
  }
}

- (id)copyCarrierBundleValueWithDefault:(id)default keyHierarchy:(id)hierarchy bundleType:(id)type error:(id *)error
{
  defaultCopy = default;
  hierarchyCopy = hierarchy;
  typeCopy = type;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:defaultCopy error:error])
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
    [v14 copyCarrierBundleValueWithDefault:defaultCopy keyHierarchy:hierarchyCopy bundleType:typeCopy completion:v17];
    if (error)
    {
      *error = v26[5];
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

- (id)copyCarrierBundleValueWithCountryBundleLookup:(id)lookup keyHierarchy:(id)hierarchy matchingInfo:(id)info error:(id *)error
{
  lookupCopy = lookup;
  hierarchyCopy = hierarchy;
  infoCopy = info;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:lookupCopy error:error])
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
    [v14 copyCarrierBundleValueWithCountryBundleLookup:lookupCopy keyHierarchy:hierarchyCopy matchingInfo:infoCopy completion:v17];
    if (error)
    {
      *error = v26[5];
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

- (id)context:(id)context getCarrierBundleValue:(id)value error:(id *)error
{
  contextCopy = context;
  valueCopy = value;
  v10 = [[CTBundle alloc] initWithBundleType:1];
  v11 = [(CoreTelephonyClient *)self copyCarrierBundleValueWithDefault:contextCopy keyHierarchy:valueCopy bundleType:v10 error:error];

  return v11;
}

- (void)context:(id)context getCarrierBundleValue:(id)value completion:(id)completion
{
  contextCopy = context;
  valueCopy = value;
  completionCopy = completion;
  v10 = [[CTBundle alloc] initWithBundleType:1];
  [(CoreTelephonyClient *)self copyCarrierBundleValueWithDefault:contextCopy keyHierarchy:valueCopy bundleType:v10 completion:completionCopy];
}

- (void)copyCarrierBundleLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  v22 = 0;
  v9 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:locationCopy error:&v22];
  v10 = v22;
  if (v9)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __75__CoreTelephonyClient_CarrierBundle__copyCarrierBundleLocation_completion___block_invoke_2;
    v17 = &unk_1E6A43CC8;
    v11 = completionCopy;
    v18 = v11;
    v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v14];
    [v12 copyCarrierBundleLocation:locationCopy completion:{v11, v14, v15, v16, v17}];
    v13 = &v18;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__CoreTelephonyClient_CarrierBundle__copyCarrierBundleLocation_completion___block_invoke;
    v19[3] = &unk_1E6A459B0;
    v21 = completionCopy;
    v20 = v10;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v19];
    v13 = &v21;
    v12 = v20;
  }
}

- (id)copyCarrierBundleLocation:(id)location error:(id *)error
{
  locationCopy = location;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:locationCopy error:error])
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
    [v8 copyCarrierBundleLocation:locationCopy completion:v11];
    if (error)
    {
      *error = v20[5];
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

- (void)copyCarrierBookmarks:(id)bookmarks completion:(id)completion
{
  bookmarksCopy = bookmarks;
  completionCopy = completion;
  v22 = 0;
  v9 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:bookmarksCopy error:&v22];
  v10 = v22;
  if (v9)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __70__CoreTelephonyClient_CarrierBundle__copyCarrierBookmarks_completion___block_invoke_2;
    v17 = &unk_1E6A43CC8;
    v11 = completionCopy;
    v18 = v11;
    v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v14];
    [v12 copyCarrierBookmarks:bookmarksCopy completion:{v11, v14, v15, v16, v17}];
    v13 = &v18;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__CoreTelephonyClient_CarrierBundle__copyCarrierBookmarks_completion___block_invoke;
    v19[3] = &unk_1E6A459B0;
    v21 = completionCopy;
    v20 = v10;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v19];
    v13 = &v21;
    v12 = v20;
  }
}

- (void)copyCarrierBundleVersion:(id)version completion:(id)completion
{
  versionCopy = version;
  completionCopy = completion;
  v22 = 0;
  v9 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:versionCopy error:&v22];
  v10 = v22;
  if (v9)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __74__CoreTelephonyClient_CarrierBundle__copyCarrierBundleVersion_completion___block_invoke_2;
    v17 = &unk_1E6A43CC8;
    v11 = completionCopy;
    v18 = v11;
    v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v14];
    [v12 copyCarrierBundleVersion:versionCopy completion:{v11, v14, v15, v16, v17}];
    v13 = &v18;
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __74__CoreTelephonyClient_CarrierBundle__copyCarrierBundleVersion_completion___block_invoke;
    v19[3] = &unk_1E6A459B0;
    v21 = completionCopy;
    v20 = v10;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v19];
    v13 = &v21;
    v12 = v20;
  }
}

- (id)copyCarrierBundleVersion:(id)version error:(id *)error
{
  versionCopy = version;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:versionCopy error:error])
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
    [v8 copyCarrierBundleVersion:versionCopy completion:v11];
    if (error)
    {
      *error = v20[5];
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

- (void)isAttachApnSettingAllowed:(id)allowed completion:(id)completion
{
  allowedCopy = allowed;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CoreTelephonyClient_CarrierBundle__isAttachApnSettingAllowed_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isAttachApnSettingAllowed:allowedCopy completion:v8];
}

- (BOOL)isAttachApnSettingAllowed:(id)allowed error:(id *)error
{
  allowedCopy = allowed;
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
  [v7 isAttachApnSettingAllowed:allowedCopy completion:v10];
  if (error)
  {
    *error = v17[5];
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

- (id)context:(id)context modifyAttachApnSettings:(id)settings
{
  contextCopy = context;
  settingsCopy = settings;
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
  [v8 context:contextCopy modifyAttachApnSettings:settingsCopy completion:v11];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (void)context:(id)context modifyAttachApnSettings:(id)settings completion:(id)completion
{
  contextCopy = context;
  settingsCopy = settings;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__CoreTelephonyClient_CarrierBundle__context_modifyAttachApnSettings_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = completionCopy;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 context:contextCopy modifyAttachApnSettings:settingsCopy completion:v11];
}

- (id)context:(id)context getAttachApnSettings:(id *)settings
{
  contextCopy = context;
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
  [v7 context:contextCopy getAttachApnSettingsWithCompletion:v10];
  if (settings)
  {
    *settings = v19[5];
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

- (void)copyBundleVersion:(id)version bundleType:(id)type completion:(id)completion
{
  versionCopy = version;
  typeCopy = type;
  completionCopy = completion;
  v25 = 0;
  v12 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:versionCopy error:&v25];
  v13 = v25;
  if (v12)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __78__CoreTelephonyClient_CarrierBundle__copyBundleVersion_bundleType_completion___block_invoke_2;
    v20 = &unk_1E6A43CC8;
    v14 = completionCopy;
    v21 = v14;
    v15 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v17];
    [v15 copyBundleVersion:versionCopy bundleType:typeCopy completion:{v14, v17, v18, v19, v20}];
    v16 = &v21;
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __78__CoreTelephonyClient_CarrierBundle__copyBundleVersion_bundleType_completion___block_invoke;
    v22[3] = &unk_1E6A459B0;
    v24 = completionCopy;
    v23 = v13;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v22];
    v16 = &v24;
    v15 = v23;
  }
}

- (id)copyBundleVersion:(id)version bundleType:(id)type error:(id *)error
{
  versionCopy = version;
  typeCopy = type;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:versionCopy error:error])
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
    [v11 copyBundleVersion:versionCopy bundleType:typeCopy completion:v14];
    if (error)
    {
      *error = v23[5];
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

- (void)copyBundleIdentifier:(id)identifier bundleType:(id)type completion:(id)completion
{
  identifierCopy = identifier;
  typeCopy = type;
  completionCopy = completion;
  v25 = 0;
  v12 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:identifierCopy error:&v25];
  v13 = v25;
  if (v12)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __81__CoreTelephonyClient_CarrierBundle__copyBundleIdentifier_bundleType_completion___block_invoke_2;
    v20 = &unk_1E6A43CC8;
    v14 = completionCopy;
    v21 = v14;
    v15 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v17];
    [v15 copyBundleIdentifier:identifierCopy bundleType:typeCopy completion:{v14, v17, v18, v19, v20}];
    v16 = &v21;
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__CoreTelephonyClient_CarrierBundle__copyBundleIdentifier_bundleType_completion___block_invoke;
    v22[3] = &unk_1E6A459B0;
    v24 = completionCopy;
    v23 = v13;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v22];
    v16 = &v24;
    v15 = v23;
  }
}

- (id)copyBundleIdentifier:(id)identifier bundleType:(id)type error:(id *)error
{
  identifierCopy = identifier;
  typeCopy = type;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:identifierCopy error:error])
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
    [v11 copyBundleIdentifier:identifierCopy bundleType:typeCopy completion:v14];
    if (error)
    {
      *error = v23[5];
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

- (BOOL)restoreToSystemBundles:(id *)bundles
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
  if (bundles)
  {
    *bundles = v14[5];
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

- (id)getCountryBundleLocationForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  [v7 getCountryBundleLocationForBundleIdentifier:identifierCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (id)getCountryBundleIdentifierForCountryCode:(id)code error:(id *)error
{
  codeCopy = code;
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
  [v7 getCountryBundleIdentifierForCountryCode:codeCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (id)getEnglishCarrierNameFor:(id)for error:(id *)error
{
  forCopy = for;
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
  [v7 getEnglishCarrierNameFor:forCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)copyBundleLocation:(id)location bundleType:(id)type completion:(id)completion
{
  locationCopy = location;
  typeCopy = type;
  completionCopy = completion;
  v25 = 0;
  v12 = [(CoreTelephonyClient *)self supportsSelector:a2 withContext:locationCopy error:&v25];
  v13 = v25;
  if (v12)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __79__CoreTelephonyClient_CarrierBundle__copyBundleLocation_bundleType_completion___block_invoke_2;
    v20 = &unk_1E6A43CC8;
    v14 = completionCopy;
    v21 = v14;
    v15 = [(CoreTelephonyClient *)self proxyWithErrorHandler:&v17];
    [v15 copyBundleLocation:locationCopy bundleType:typeCopy completion:{v14, v17, v18, v19, v20}];
    v16 = &v21;
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __79__CoreTelephonyClient_CarrierBundle__copyBundleLocation_bundleType_completion___block_invoke;
    v22[3] = &unk_1E6A459B0;
    v24 = completionCopy;
    v23 = v13;
    [(CoreTelephonyClient *)self dispatchBlockToClientAsync:v22];
    v16 = &v24;
    v15 = v23;
  }
}

- (id)copyBundleLocation:(id)location bundleType:(id)type error:(id *)error
{
  locationCopy = location;
  typeCopy = type;
  if ([(CoreTelephonyClient *)self supportsSelector:a2 withContext:locationCopy error:error])
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
    [v11 copyBundleLocation:locationCopy bundleType:typeCopy completion:v14];
    if (error)
    {
      *error = v23[5];
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

- (id)getCountryBundleLocationForMatchingInfo:(id)info error:(id *)error
{
  infoCopy = info;
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
  [v7 getCountryBundleLocationForMatchingInfo:infoCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (int64_t)checkCellularDiagnosticsStatus:(id *)status
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
  if (status)
  {
    v5 = v11[5];
    if (v5)
    {
      *status = v5;
    }
  }

  v6 = v17[3];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)checkCellularDiagnosticsStatusDetails:(id *)details
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
  if (details)
  {
    v5 = v13[5];
    if (v5)
    {
      *details = v5;
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

- (void)checkRadioBootHealth:(id)health
{
  healthCopy = health;
  v5 = healthCopy;
  if (healthCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__CoreTelephonyClient_Radio__checkRadioBootHealth___block_invoke;
    v8[3] = &unk_1E6A43CC8;
    v6 = healthCopy;
    v9 = v6;
    v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v8];
    [v7 checkRadioBootHealth:v6];
  }
}

- (void)checkRadioBootHealthDetails:(id)details
{
  detailsCopy = details;
  v5 = detailsCopy;
  if (detailsCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__CoreTelephonyClient_Radio__checkRadioBootHealthDetails___block_invoke;
    v8[3] = &unk_1E6A43CC8;
    v6 = detailsCopy;
    v9 = v6;
    v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v8];
    [v7 checkRadioBootHealthDetails:v6];
  }
}

- (id)getBasebandRadioFrequencyFrontEndScanData:(id *)data
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
  *data = v9[5];
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

- (void)activateTurboMode:(id)mode
{
  modeCopy = mode;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CoreTelephonyClient_Radio__activateTurboMode___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = modeCopy;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 activateTurboMode:v5];
}

- (id)checkBasebandConfigUpdateInfo:(id *)info
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
    *info = v10[5];
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

- (id)getSupportsTARandomization:(id)randomization error:(id *)error
{
  randomizationCopy = randomization;
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
  [v7 getSupportsTARandomization:randomizationCopy completion:v11];
  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
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

- (id)getTARandomizationSetting:(id)setting error:(id *)error
{
  settingCopy = setting;
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
  [v7 getTARandomizationSetting:settingCopy completion:v11];
  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
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

- (void)setVoLTEAudioCodec:(id)codec codecInfo:(id)info completion:(id)completion
{
  codecCopy = codec;
  infoCopy = info;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__CoreTelephonyClient_FaceTime__setVoLTEAudioCodec_codecInfo_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = completionCopy;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 setVoLTEAudioCodec:codecCopy codecInfo:infoCopy completion:v11];
}

- (id)getSIMToolkitMenu:(id)menu menu:(id *)a4
{
  menuCopy = menu;
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
  [v7 getSIMToolkitMenuForContext:menuCopy completion:v10];
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

- (id)selectSIMToolkitMenuItem:(id)item index:(id)index
{
  itemCopy = item;
  indexCopy = index;
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
  [v8 selectSIMToolkitMenuItemForContext:itemCopy index:indexCopy completion:v11];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)getSIMToolkitListItems:(id)items items:(id *)a4
{
  itemsCopy = items;
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
  [v7 getSIMToolkitListItemsForContext:itemsCopy completion:v10];
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

- (id)selectSIMToolkitListItem:(id)item session:(id)session response:(id)response index:(id)index
{
  itemCopy = item;
  sessionCopy = session;
  responseCopy = response;
  indexCopy = index;
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
  [v14 selectSIMToolkitListItemForContext:itemCopy session:sessionCopy response:responseCopy index:indexCopy completion:v17];
  v15 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v15;
}

- (id)sendSIMToolkitResponse:(id)response session:(id)session response:(id)a5
{
  responseCopy = response;
  sessionCopy = session;
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
  [v11 sendSIMToolkitResponseForContext:responseCopy session:sessionCopy response:v10 completion:v14];
  v12 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v12;
}

- (id)sendSIMToolkitStringResponse:(id)response session:(id)session response:(id)a5 string:(id)string
{
  responseCopy = response;
  sessionCopy = session;
  v12 = a5;
  stringCopy = string;
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
  [v14 sendSIMToolkitStringResponseForContext:responseCopy session:sessionCopy response:v12 string:stringCopy completion:v17];
  v15 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v15;
}

- (id)sendSIMToolkitUserActivity:(id)activity
{
  activityCopy = activity;
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
  [v5 sendSIMToolkitUserActivityForContext:activityCopy completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)sendSIMToolkitDisplayReady:(id)ready
{
  readyCopy = ready;
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
  [v5 sendSIMToolkitDisplayReadyForContext:readyCopy completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)getSIMToolkitUSSDString:(id)string ussdString:(id *)ussdString needRsp:(BOOL *)rsp
{
  stringCopy = string;
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
  [v9 getSIMToolkitUSSDStringForContext:stringCopy completion:v12];
  *ussdString = v18[5];
  *rsp = *(v14 + 24);
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

- (id)sendSIMToolkitUSSDResponse:(id)response response:(id)a4
{
  responseCopy = response;
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
  [v8 sendSIMToolkitUSSDResponseForContext:responseCopy response:v7 completion:v11];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)cancelSIMToolkitUSSDSession:(id)session
{
  sessionCopy = session;
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
  [v5 cancelSIMToolkitUSSDSessionForContext:sessionCopy completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)getSIMStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimStatusRequest alloc] initWithContext:statusCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:completionCopy];
}

- (id)getSIMStatus:(id)status error:(id *)error
{
  statusCopy = status;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimStatusRequest alloc] initWithContext:statusCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

  return v8;
}

- (void)getSIMTrayStatus:(id)status
{
  statusCopy = status;
  v4 = objc_alloc_init(CTXPCSimTrayStatusRequest);
  [(CoreTelephonyClient *)self asynchronousRequest:v4 completionWithString:statusCopy];
}

- (id)getSIMTrayStatusOrError:(id *)error
{
  v5 = objc_alloc_init(CTXPCSimTrayStatusRequest);
  v6 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v5 error:error];

  return v6;
}

- (id)isEmbeddedSIMOnlyConfig:(id *)config
{
  v5 = objc_alloc_init(CTXPCEmbeddedSIMOnlyConfigRequest);
  v6 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v5 error:config];

  return v6;
}

- (void)copyMobileEquipmentInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v5 = objc_alloc_init(CTXPCMobileEquipmentInfoRequest);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59__CoreTelephonyClient_Subscriber__copyMobileEquipmentInfo___block_invoke;
    v10[3] = &unk_1E6A43CC8;
    v6 = infoCopy;
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

- (id)getMobileEquipmentInfo:(id *)info
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
  if (info)
  {
    v6 = v12[5];
    if (v6)
    {
      *info = v6;
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

- (id)getMobileEquipmentInfoFor:(id)for error:(id *)error
{
  forCopy = for;
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
  v9 = forCopy;
  v14 = v9;
  v16 = &v24;
  [v7 sendRequest:v8 completionHandler:v13];
  if (error)
  {
    v10 = v19[5];
    if (v10)
    {
      *error = v10;
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

- (id)getTypeAllocationCode:(id)code error:(id *)error
{
  codeCopy = code;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCTACRequest alloc] initWithDescriptor:codeCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

  return v8;
}

- (void)copyFirmwareUpdateInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v5 = objc_alloc_init(CTXPCFirmwareUpdateInfoRequest);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__CoreTelephonyClient_Subscriber__copyFirmwareUpdateInfo___block_invoke;
    v10[3] = &unk_1E6A43CC8;
    v6 = infoCopy;
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

- (void)copySIMIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimIdentityRequest alloc] initWithContext:identityCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:completionCopy];
}

- (id)copySIMIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimIdentityRequest alloc] initWithContext:identityCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

  return v8;
}

- (void)copyMobileSubscriberIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberIdentityRequest alloc] initWithContext:identityCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:completionCopy];
}

- (id)copyMobileSubscriberIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberIdentityRequest alloc] initWithContext:identityCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

  return v8;
}

- (BOOL)context:(id)context isProtectedIdentitySupported:(id)supported error:(id *)error
{
  contextCopy = context;
  supportedCopy = supported;
  if (!supportedCopy)
  {
    v11 = CTLogClientXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) context:isProtectedIdentitySupported:error:];
      if (error)
      {
        goto LABEL_5;
      }
    }

    else if (error)
    {
LABEL_5:
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v10 = 0;
      *error = [v12 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      goto LABEL_8;
    }

    v10 = 0;
    goto LABEL_8;
  }

  v10 = [(CoreTelephonyClient *)self context:contextCopy supportedIdentityProtectionFor:supportedCopy error:error]!= 0;
LABEL_8:

  return v10;
}

- (void)context:(id)context isProtectedIdentitySupported:(id)supported completion:(id)completion
{
  contextCopy = context;
  supportedCopy = supported;
  completionCopy = completion;
  v11 = completionCopy;
  if (supportedCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __83__CoreTelephonyClient_Subscriber__context_isProtectedIdentitySupported_completion___block_invoke;
    v15[3] = &unk_1E6A46420;
    v16 = completionCopy;
    [(CoreTelephonyClient *)self context:contextCopy supportedIdentityProtectionFor:supportedCopy completion:v15];
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

- (void)context:(id)context supportedIdentityProtectionFor:(id)for completion:(id)completion
{
  contextCopy = context;
  forCopy = for;
  completionCopy = completion;
  if (forCopy)
  {
    v11 = [[CTXPCSubscriberSupportsEncryptedIdentityRequest alloc] initWithContext:contextCopy service:forCopy];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__CoreTelephonyClient_Subscriber__context_supportedIdentityProtectionFor_completion___block_invoke;
    v18[3] = &unk_1E6A43CC8;
    v12 = completionCopy;
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
    (*(completionCopy + 2))(completionCopy, 0, v11);
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

- (int64_t)context:(id)context supportedIdentityProtectionFor:(id)for error:(id *)error
{
  contextCopy = context;
  forCopy = for;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (!forCopy)
  {
    v14 = CTLogClientXPC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) context:isProtectedIdentitySupported:error:];
      if (!error)
      {
        goto LABEL_9;
      }
    }

    else if (!error)
    {
LABEL_9:
      v13 = v26[3];
      goto LABEL_10;
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    *error = [v15 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
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
  v11 = [[CTXPCSubscriberSupportsEncryptedIdentityRequest alloc] initWithContext:contextCopy service:forCopy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__CoreTelephonyClient_Subscriber__context_supportedIdentityProtectionFor_error___block_invoke_2;
  v17[3] = &unk_1E6A44B30;
  v17[4] = &v25;
  v17[5] = &v19;
  [v10 sendRequest:v11 completionHandler:v17];
  if (error)
  {
    v12 = v20[5];
    if (v12)
    {
      *error = v12;
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

- (void)createEncryptedIdentity:(id)identity identity:(id)a4 completion:(id)completion
{
  identityCopy = identity;
  v9 = a4;
  completionCopy = completion;
  v11 = completionCopy;
  if (v9)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __79__CoreTelephonyClient_Subscriber__createEncryptedIdentity_identity_completion___block_invoke;
    v20[3] = &unk_1E6A43CC8;
    v12 = completionCopy;
    v21 = v12;
    v13 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v20];
    v14 = [[CTXPCCreateEncryptedIdentityRequest alloc] initWithContext:identityCopy identity:v9];
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

- (void)context:(id)context getPseudoIdentityFor:(id)for completion:(id)completion
{
  contextCopy = context;
  forCopy = for;
  completionCopy = completion;
  if (forCopy)
  {
    v11 = [[CTXPCSubscriberGetPseudoIdentityRequest alloc] initWithContext:contextCopy service:forCopy];
    [(CoreTelephonyClient *)self asynchronousRequest:v11 completionWithString:completionCopy];
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
    completionCopy[2](completionCopy, 0, v14);
  }
}

- (id)context:(id)context getPseudoIdentityFor:(id)for error:(id *)error
{
  contextCopy = context;
  forCopy = for;
  if (forCopy)
  {
    v10 = [[CTXPCSubscriberGetPseudoIdentityRequest alloc] initWithContext:contextCopy service:forCopy];
    v11 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v10 error:error];

    goto LABEL_8;
  }

  v12 = CTLogClientXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [CoreTelephonyClient(Subscriber) context:isProtectedIdentitySupported:error:];
    if (error)
    {
      goto LABEL_5;
    }
  }

  else if (error)
  {
LABEL_5:
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = 0;
    *error = [v13 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)context:(id)context getEncryptedIdentity:(id)identity error:(id *)error
{
  contextCopy = context;
  identityCopy = identity;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__11;
  v29 = __Block_byref_object_dispose__11;
  v30 = 0;
  if (!identityCopy)
  {
    v14 = CTLogClientXPC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) createEncryptedIdentity:identity:completion:];
      if (!error)
      {
        goto LABEL_9;
      }
    }

    else if (!error)
    {
LABEL_9:
      v13 = v26[5];
      goto LABEL_10;
    }

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    *error = [v15 initWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
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
  v11 = [[CTXPCCreateEncryptedIdentityRequest alloc] initWithContext:contextCopy identity:identityCopy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__CoreTelephonyClient_Subscriber__context_getEncryptedIdentity_error___block_invoke_2;
  v17[3] = &unk_1E6A44B30;
  v17[4] = &v25;
  v17[5] = &v19;
  [v10 sendRequest:v11 completionHandler:v17];
  if (error)
  {
    v12 = v20[5];
    if (v12)
    {
      *error = v12;
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

- (void)evaluateMobileSubscriberIdentity:(id)identity identity:(id)a4 completion:(id)completion
{
  identityCopy = identity;
  v8 = a4;
  completionCopy = completion;
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

    v15 = [(CTXPCSubscriberEvaluateIdentityDataRequest *)v10 initWithContext:identityCopy identityData:v12];
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

    v15 = [(CTXPCSubscriberEvaluateIdentityStringRequest *)v13 initWithContext:identityCopy identityString:v12];
  }

  v16 = v15;

  if (v16)
  {
    [(CoreTelephonyClient *)self asynchronousRequest:v16 completion:completionCopy];
    goto LABEL_14;
  }

LABEL_13:
  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  completionCopy[2](completionCopy, v17);

  v16 = 0;
LABEL_14:
}

- (id)context:(id)context evaluateMobileSubscriberIdentity:(id)identity
{
  contextCopy = context;
  identityCopy = identity;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [CTXPCSubscriberEvaluateIdentityDataRequest alloc];
    v9 = identityCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v13 = [(CTXPCSubscriberEvaluateIdentityDataRequest *)v8 initWithContext:contextCopy identityData:v10];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_13;
    }

    v11 = [CTXPCSubscriberEvaluateIdentityStringRequest alloc];
    v12 = identityCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }

    v13 = [(CTXPCSubscriberEvaluateIdentityStringRequest *)v11 initWithContext:contextCopy identityString:v10];
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

- (void)copyMobileSubscriberCountryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberCountryCodeRequest alloc] initWithContext:codeCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:completionCopy];
}

- (id)copyMobileSubscriberCountryCode:(id)code error:(id *)error
{
  codeCopy = code;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberCountryCodeRequest alloc] initWithContext:codeCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

  return v8;
}

- (id)copyMobileSubscriberIsoCountryCode:(id)code error:(id *)error
{
  codeCopy = code;
  if (!codeCopy)
  {
    v9 = CTLogClientXPC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) copyMobileSubscriberIsoCountryCode:error:];
      if (error)
      {
        goto LABEL_5;
      }
    }

    else if (error)
    {
LABEL_5:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *error = v8 = 0;
      goto LABEL_8;
    }

    v8 = 0;
    goto LABEL_8;
  }

  v7 = [[CTXPCConvertCountryCodeToISORequest alloc] initWithMcc:codeCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

LABEL_8:
  return v8;
}

- (id)copyMobileSubscriberIsoSubregionCode:(id)code MNC:(id)c error:(id *)error
{
  codeCopy = code;
  cCopy = c;
  v10 = cCopy;
  if (!codeCopy || !cCopy)
  {
    v13 = CTLogClientXPC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) copyMobileSubscriberIsoSubregionCode:MNC:error:];
      if (error)
      {
        goto LABEL_6;
      }
    }

    else if (error)
    {
LABEL_6:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *error = v12 = 0;
      goto LABEL_9;
    }

    v12 = 0;
    goto LABEL_9;
  }

  v11 = [[CTXPCMobileSubscriberISOSubregionCodeRequest alloc] initWithMcc:codeCopy mnc:cCopy];
  v12 = [(CoreTelephonyClient *)self synchronousRequestWithArrayResult:v11 error:error];

LABEL_9:
  return v12;
}

- (id)getSimHardwareInfo:(id)info error:(id *)error
{
  infoCopy = info;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimHardwareInfoRequest alloc] initWithContext:infoCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__CoreTelephonyClient_Subscriber__getSimHardwareInfo_error___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v20;
  v12[5] = &v14;
  [v7 sendRequest:v8 completionHandler:v12];
  if (error)
  {
    v9 = v15[5];
    if (v9)
    {
      *error = v9;
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

- (int64_t)isEsimFor:(id)for error:(id *)error
{
  v4 = [(CoreTelephonyClient *)self getSimHardwareInfo:for error:error];
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

- (void)getMobileSubscriberHomeCountryList:(id)list completion:(id)completion
{
  listCopy = list;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberHomeCountryListRequest alloc] initWithContext:listCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithArray:completionCopy];
}

- (id)getMobileSubscriberHomeCountryList:(id)list error:(id *)error
{
  listCopy = list;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberHomeCountryListRequest alloc] initWithContext:listCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithArrayResult:v7 error:error];

  return v8;
}

- (void)copyLastKnownMobileSubscriberCountryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCLastKnownMobileSubscriberCountryCodeRequest alloc] initWithContext:codeCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:completionCopy];
}

- (id)copyLastKnownMobileSubscriberCountryCode:(id)code error:(id *)error
{
  codeCopy = code;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCLastKnownMobileSubscriberCountryCodeRequest alloc] initWithContext:codeCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

  return v8;
}

- (void)copyMobileSubscriberNetworkCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberNetworkCodeRequest alloc] initWithContext:codeCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:completionCopy];
}

- (id)copyMobileSubscriberNetworkCode:(id)code error:(id *)error
{
  codeCopy = code;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberNetworkCodeRequest alloc] initWithContext:codeCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

  return v8;
}

- (void)copyGid1:(id)gid1 completion:(id)completion
{
  gid1Copy = gid1;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberGID1Request alloc] initWithContext:gid1Copy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:completionCopy];
}

- (id)copyGid1:(id)gid1 error:(id *)error
{
  gid1Copy = gid1;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberGID1Request alloc] initWithContext:gid1Copy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

  return v8;
}

- (void)copyGid2:(id)gid2 completion:(id)completion
{
  gid2Copy = gid2;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberGID2Request alloc] initWithContext:gid2Copy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:completionCopy];
}

- (id)copyGid2:(id)gid2 error:(id *)error
{
  gid2Copy = gid2;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCMobileSubscriberGID2Request alloc] initWithContext:gid2Copy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

  return v8;
}

- (id)shouldAllowSimLockFor:(id)for
{
  forCopy = for;
  v5 = [(CTXPCSubscriptionContextRequest *)[CTXPCAllowSimLockRequest alloc] initWithContext:forCopy];
  v6 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v5 error:0];

  return v6;
}

- (id)shouldAllowSimLockFor:(id)for error:(id *)error
{
  forCopy = for;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCAllowSimLockRequest alloc] initWithContext:forCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v7 error:error];

  return v8;
}

- (void)fetchSIMLockValue:(id)value completion:(id)completion
{
  valueCopy = value;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimLockStateRequest alloc] initWithContext:valueCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithNumber:completionCopy];
}

- (id)fetchSIMLockValue:(id)value error:(id *)error
{
  valueCopy = value;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSimLockStateRequest alloc] initWithContext:valueCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v7 error:error];

  return v8;
}

- (void)unlockPIN:(id)n pin:(id)pin completion:(id)completion
{
  nCopy = n;
  pinCopy = pin;
  completionCopy = completion;
  if (pinCopy)
  {
    v11 = [[CTXPCUnlockPINRequest alloc] initWithContext:nCopy pin:pinCopy];
    [(CoreTelephonyClient *)self asynchronousRequest:v11 completion:completionCopy];
  }

  else
  {
    v12 = CTLogClientXPC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) saveSIMLockValue:enabled:pin:completion:];
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    completionCopy[2](completionCopy, v13);
  }
}

- (void)unlockPIN:(id)n pin:(id)pin error:(id *)error
{
  nCopy = n;
  pinCopy = pin;
  if (!pinCopy)
  {
    v11 = CTLogClientXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) saveSIMLockValue:enabled:pin:completion:];
      if (!error)
      {
        goto LABEL_6;
      }
    }

    else if (!error)
    {
      goto LABEL_6;
    }

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    goto LABEL_6;
  }

  v10 = [[CTXPCUnlockPINRequest alloc] initWithContext:nCopy pin:pinCopy];
  [(CoreTelephonyClient *)self synchronousRequest:v10 error:error];

LABEL_6:
}

- (void)unlockPUK:(id)k puk:(id)puk newPin:(id)pin completion:(id)completion
{
  kCopy = k;
  pukCopy = puk;
  pinCopy = pin;
  completionCopy = completion;
  if (pukCopy && pinCopy)
  {
    v14 = [[CTXPCUnblockPUKRequest alloc] initWithContext:kCopy puk:pukCopy pin:pinCopy];
    [(CoreTelephonyClient *)self asynchronousRequest:v14 completion:completionCopy];
  }

  else
  {
    v15 = CTLogClientXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) unlockPUK:puk:newPin:completion:];
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    completionCopy[2](completionCopy, v16);
  }
}

- (void)unlockPUK:(id)k puk:(id)puk newPin:(id)pin error:(id *)error
{
  kCopy = k;
  pukCopy = puk;
  pinCopy = pin;
  v13 = pinCopy;
  if (!pukCopy || !pinCopy)
  {
    v15 = CTLogClientXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) unlockPUK:puk:newPin:completion:];
      if (!error)
      {
        goto LABEL_7;
      }
    }

    else if (!error)
    {
      goto LABEL_7;
    }

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    goto LABEL_7;
  }

  v14 = [[CTXPCUnblockPUKRequest alloc] initWithContext:kCopy puk:pukCopy pin:pinCopy];
  [(CoreTelephonyClient *)self synchronousRequest:v14 error:error];

LABEL_7:
}

- (void)changePIN:(id)n oldPin:(id)pin newPin:(id)newPin completion:(id)completion
{
  nCopy = n;
  pinCopy = pin;
  newPinCopy = newPin;
  completionCopy = completion;
  if (pinCopy && newPinCopy)
  {
    v14 = [[CTXPCChangePINRequest alloc] initWithContext:nCopy currentPin:pinCopy updatedPin:newPinCopy];
    [(CoreTelephonyClient *)self asynchronousRequest:v14 completion:completionCopy];
  }

  else
  {
    v15 = CTLogClientXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) saveSIMLockValue:enabled:pin:completion:];
    }

    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    completionCopy[2](completionCopy, v16);
  }
}

- (void)changePIN:(id)n oldPin:(id)pin newPin:(id)newPin error:(id *)error
{
  nCopy = n;
  pinCopy = pin;
  newPinCopy = newPin;
  v13 = newPinCopy;
  if (!pinCopy || !newPinCopy)
  {
    v15 = CTLogClientXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) saveSIMLockValue:enabled:pin:completion:];
      if (!error)
      {
        goto LABEL_7;
      }
    }

    else if (!error)
    {
      goto LABEL_7;
    }

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    goto LABEL_7;
  }

  v14 = [[CTXPCChangePINRequest alloc] initWithContext:nCopy currentPin:pinCopy updatedPin:newPinCopy];
  [(CoreTelephonyClient *)self synchronousRequest:v14 error:error];

LABEL_7:
}

- (void)getRemainingPINAttemptCount:(id)count completion:(id)completion
{
  countCopy = count;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCRemainingPINRetriesRequest alloc] initWithContext:countCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithNumber:completionCopy];
}

- (id)getRemainingPINAttemptCount:(id)count error:(id *)error
{
  countCopy = count;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCRemainingPINRetriesRequest alloc] initWithContext:countCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v7 error:error];

  return v8;
}

- (void)getRemainingPUKAttemptCount:(id)count completion:(id)completion
{
  countCopy = count;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCRemainingPUKRetriesRequest alloc] initWithContext:countCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithNumber:completionCopy];
}

- (id)getRemainingPUKAttemptCount:(id)count error:(id *)error
{
  countCopy = count;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCRemainingPUKRetriesRequest alloc] initWithContext:countCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v7 error:error];

  return v8;
}

- (void)promptForSIMUnlock:(id)unlock completion:(id)completion
{
  unlockCopy = unlock;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCPromptForSIMUnlockRequest alloc] initWithContext:unlockCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completion:completionCopy];
}

- (void)SIMUnlockProcedureDidComplete
{
  v3 = objc_alloc_init(CTXPCPINOperationCompletedRequest);
  [CoreTelephonyClient asynchronousRequest:"asynchronousRequest:completion:" completion:?];
}

- (void)getSimLabel:(id)label completion:(id)completion
{
  labelCopy = label;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__CoreTelephonyClient_Subscriber__getSimLabel_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSimLabelRequest alloc] initWithContext:labelCopy];
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

- (id)getSimLabel:(id)label error:(id *)error
{
  labelCopy = label;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSimLabelRequest alloc] initWithContext:labelCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__CoreTelephonyClient_Subscriber__getSimLabel_error___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v20;
  v12[5] = &v14;
  [v7 sendRequest:v8 completionHandler:v12];
  if (error)
  {
    v9 = v15[5];
    if (v9)
    {
      *error = v9;
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

- (void)getShortLabel:(id)label completion:(id)completion
{
  labelCopy = label;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCShortLabelRequest alloc] initWithContext:labelCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:completionCopy];
}

- (id)getShortLabel:(id)label error:(id *)error
{
  labelCopy = label;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCShortLabelRequest alloc] initWithContext:labelCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

  return v8;
}

- (void)getSubscriptionUserFacingName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSubscriptionNameRequest alloc] initWithContext:nameCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:completionCopy];
}

- (id)getSubscriptionUserFacingName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSubscriptionNameRequest alloc] initWithContext:nameCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

  return v8;
}

- (void)copyLabel:(id)label completion:(id)completion
{
  labelCopy = label;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSubscriptionNameRequest alloc] initWithContext:labelCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completionWithString:completionCopy];
}

- (id)copyLabel:(id)label error:(id *)error
{
  labelCopy = label;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSubscriptionNameRequest alloc] initWithContext:labelCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithStringResult:v7 error:error];

  return v8;
}

- (void)setLabel:(id)label label:(id)a4 completion:(id)completion
{
  labelCopy = label;
  v9 = a4;
  completionCopy = completion;
  if (v9)
  {
    v11 = [[CTXPCSetSimLabelRequest alloc] initWithContext:labelCopy label:v9];
    [(CoreTelephonyClient *)self asynchronousRequest:v11 completion:completionCopy];
  }

  else
  {
    v12 = CTLogClientXPC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) setLabel:label:completion:];
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    completionCopy[2](completionCopy, v13);
  }
}

- (void)setLabel:(id)label label:(id)a4 error:(id *)error
{
  labelCopy = label;
  v9 = a4;
  if (!v9)
  {
    v11 = CTLogClientXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) setLabel:label:completion:];
      if (!error)
      {
        goto LABEL_6;
      }
    }

    else if (!error)
    {
      goto LABEL_6;
    }

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    goto LABEL_6;
  }

  v10 = [[CTXPCSetSimLabelRequest alloc] initWithContext:labelCopy label:v9];
  [(CoreTelephonyClient *)self synchronousRequest:v10 error:error];

LABEL_6:
}

- (void)setDefaultVoice:(id)voice completion:(id)completion
{
  voiceCopy = voice;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSetDefaultVoiceRequest alloc] initWithContext:voiceCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completion:completionCopy];
}

- (void)setDefaultVoice:(id)voice error:(id *)error
{
  voiceCopy = voice;
  v6 = [(CTXPCSubscriptionContextRequest *)[CTXPCSetDefaultVoiceRequest alloc] initWithContext:voiceCopy];
  [(CoreTelephonyClient *)self synchronousRequest:v6 error:error];
}

- (void)setActiveUserDataSelection:(id)selection completion:(id)completion
{
  selectionCopy = selection;
  completionCopy = completion;
  v7 = [(CTXPCSubscriptionContextRequest *)[CTXPCSetDefaultDataRequest alloc] initWithContext:selectionCopy];
  [(CoreTelephonyClient *)self asynchronousRequest:v7 completion:completionCopy];
}

- (void)setActiveUserDataSelection:(id)selection error:(id *)error
{
  selectionCopy = selection;
  v6 = [(CTXPCSubscriptionContextRequest *)[CTXPCSetDefaultDataRequest alloc] initWithContext:selectionCopy];
  [(CoreTelephonyClient *)self synchronousRequest:v6 error:error];
}

- (void)generateAuthenticationInfoUsingSim:(id)sim authParams:(id)params completion:(id)completion
{
  simCopy = sim;
  paramsCopy = params;
  completionCopy = completion;
  v11 = completionCopy;
  if (paramsCopy)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __92__CoreTelephonyClient_Subscriber__generateAuthenticationInfoUsingSim_authParams_completion___block_invoke;
    v19[3] = &unk_1E6A43CC8;
    v12 = completionCopy;
    v20 = v12;
    v13 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v19];
    v14 = [[CTXPCSubscriberAuthenticateRequest alloc] initWithContext:simCopy authInfo:paramsCopy];
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

- (void)authenticate:(id)authenticate request:(id)request completion:(id)completion
{
  authenticateCopy = authenticate;
  requestCopy = request;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__CoreTelephonyClient_Subscriber__authenticate_request_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = completionCopy;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 authenticate:authenticateCopy request:requestCopy completion:v11];
}

- (id)getUserAuthToken:(id)token error:(id *)error
{
  tokenCopy = token;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCUserAuthTokenRequest alloc] initWithDescriptor:tokenCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__CoreTelephonyClient_Subscriber__getUserAuthToken_error___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v13;
  v12[5] = &v20;
  [v7 sendRequest:v8 completionHandler:v12];
  if (error)
  {
    v9 = v21[5];
    if (v9)
    {
      *error = v9;
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

- (void)refreshUserAuthToken:(id)token error:(id *)error
{
  tokenCopy = token;
  v6 = [(CTXPCSubscriptionContextRequest *)[CTXPCRefreshCarrierTokenRequest alloc] initWithDescriptor:tokenCopy];
  [(CoreTelephonyClient *)self synchronousRequest:v6 error:error];
}

- (id)getUserDefaultVoiceSubscriptionContext:(id *)context
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
  if (context)
  {
    v6 = v12[5];
    if (v6)
    {
      *context = v6;
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

- (id)getLastKnownSimDeactivationInfoFor:(id)for error:(id *)error
{
  forCopy = for;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSimDeactivationInfoRequest alloc] initWithContext:forCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__CoreTelephonyClient_Subscriber__getLastKnownSimDeactivationInfoFor_error___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v20;
  v12[5] = &v14;
  [v7 sendRequest:v8 completionHandler:v12];
  if (error)
  {
    v9 = v15[5];
    if (v9)
    {
      *error = v9;
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

- (id)copyMobileSubscriberIso3CountryCode:(id)code MNC:(id)c error:(id *)error
{
  codeCopy = code;
  cCopy = c;
  v10 = cCopy;
  if (!codeCopy || !cCopy)
  {
    v13 = CTLogClientXPC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) copyMobileSubscriberIsoSubregionCode:MNC:error:];
      if (error)
      {
        goto LABEL_6;
      }
    }

    else if (error)
    {
LABEL_6:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *error = v12 = 0;
      goto LABEL_9;
    }

    v12 = 0;
    goto LABEL_9;
  }

  v11 = [[CTXPCConvertMCCMNCToISORequest alloc] initWithMcc:codeCopy mnc:cCopy];
  v12 = [(CoreTelephonyClient *)self synchronousRequestWithArrayResult:v11 error:error];

LABEL_9:
  return v12;
}

- (id)checkEmbeddedSimHealthWithError:(id *)error
{
  v5 = objc_alloc_init(CTXPCEmbeddedSIMHealthRequest);
  v6 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v5 error:error];

  return v6;
}

- (BOOL)supportsEmbeddedSIM
{
  v3 = objc_alloc_init(CTXPCSupportEmbeddedSimRequest);
  v4 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v3 error:0];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)supportsLimitedUseSIMsWithError:(id *)error
{
  v5 = objc_alloc_init(CTXPCSupportsLimitedUseSIMsRequest);
  v6 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v5 error:error];

  return v6;
}

- (id)copyMccOrPlmnsListForIso3CountryCode:(id)code error:(id *)error
{
  codeCopy = code;
  if (!codeCopy)
  {
    v9 = CTLogClientXPC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [CoreTelephonyClient(Subscriber) copyMccOrPlmnsListForIso3CountryCode:error:];
      if (error)
      {
        goto LABEL_5;
      }
    }

    else if (error)
    {
LABEL_5:
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *error = v8 = 0;
      goto LABEL_8;
    }

    v8 = 0;
    goto LABEL_8;
  }

  v7 = [[CTXPCConvertISOToMCCMNCRequest alloc] initWithIso:codeCopy];
  v8 = [(CoreTelephonyClient *)self synchronousRequestWithArrayResult:v7 error:error];

LABEL_8:
  return v8;
}

- (id)isAnySimReadyWithError:(id *)error
{
  v5 = objc_alloc_init(CTXPCIsAnySimReadyRequest);
  v6 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v5 error:error];

  return v6;
}

- (id)isSimMatching:(id)matching carrierDescriptors:(id)descriptors error:(id *)error
{
  matchingCopy = matching;
  descriptorsCopy = descriptors;
  v10 = descriptorsCopy;
  if (matchingCopy && descriptorsCopy)
  {
    v11 = [[CTXPCIsSimMatchingRequest alloc] initWithDescriptor:matchingCopy carrierDescriptors:descriptorsCopy];
    v12 = [(CoreTelephonyClient *)self synchronousRequestWithNumberResult:v11 error:error];

    goto LABEL_8;
  }

  v13 = CTLogClientXPC();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [CoreTelephonyClient(Subscriber) isSimMatching:carrierDescriptors:error:];
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (error)
  {
LABEL_6:
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

LABEL_7:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:0];
LABEL_8:

  return v12;
}

- (void)synchronousRequest:(id)request error:(id *)error
{
  requestCopy = request;
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
  [v7 sendRequest:requestCopy completionHandler:v9];
  if (error)
  {
    v8 = v12[5];
    if (v8)
    {
      *error = v8;
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (id)synchronousRequestWithStringResult:(id)result error:(id *)error
{
  resultCopy = result;
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
  [v7 sendRequest:resultCopy completionHandler:v11];
  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
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

- (id)synchronousRequestWithArrayResult:(id)result error:(id *)error
{
  resultCopy = result;
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
  [v7 sendRequest:resultCopy completionHandler:v11];
  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
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

- (id)synchronousRequestWithNumberResult:(id)result error:(id *)error
{
  resultCopy = result;
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
  [v7 sendRequest:resultCopy completionHandler:v11];
  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
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

- (void)asynchronousRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__CoreTelephonyClient_Subscriber__asynchronousRequest_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v14 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CoreTelephonyClient_Subscriber__asynchronousRequest_completion___block_invoke_2;
  v11[3] = &unk_1E6A463D0;
  v10 = v8;
  v12 = v10;
  [v9 sendRequest:requestCopy completionHandler:v11];
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

- (void)asynchronousRequest:(id)request completionWithString:(id)string
{
  requestCopy = request;
  stringCopy = string;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithString___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v8 = stringCopy;
  v14 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithString___block_invoke_2;
  v11[3] = &unk_1E6A463D0;
  v10 = v8;
  v12 = v10;
  [v9 sendRequest:requestCopy completionHandler:v11];
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

- (void)asynchronousRequest:(id)request completionWithNumber:(id)number
{
  requestCopy = request;
  numberCopy = number;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithNumber___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v8 = numberCopy;
  v14 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithNumber___block_invoke_2;
  v11[3] = &unk_1E6A463D0;
  v10 = v8;
  v12 = v10;
  [v9 sendRequest:requestCopy completionHandler:v11];
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

- (void)asynchronousRequest:(id)request completionWithArray:(id)array
{
  requestCopy = request;
  arrayCopy = array;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithArray___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v8 = arrayCopy;
  v14 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CoreTelephonyClient_Subscriber__asynchronousRequest_completionWithArray___block_invoke_2;
  v11[3] = &unk_1E6A463D0;
  v10 = v8;
  v12 = v10;
  [v9 sendRequest:requestCopy completionHandler:v11];
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

- (void)getSweetgumCapabilities:(id)capabilities completion:(id)completion
{
  capabilitiesCopy = capabilities;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CoreTelephonyClient_CarrierServices__getSweetgumCapabilities_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSweetgumCapabilities:capabilitiesCopy completion:v8];
}

- (void)getSweetgumUserConsentInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__CoreTelephonyClient_CarrierServices__getSweetgumUserConsentInfo_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSweetgumUserConsentInfo:infoCopy completion:v8];
}

- (void)getSweetgumUsage:(id)usage completion:(id)completion
{
  usageCopy = usage;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CoreTelephonyClient_CarrierServices__getSweetgumUsage_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSweetgumUsage:usageCopy completion:v8];
}

- (void)refreshSweetgumUsage:(id)usage completion:(id)completion
{
  usageCopy = usage;
  completionCopy = completion;
  v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:completionCopy];
  [v7 refreshSweetgumUsage:usageCopy completion:completionCopy];
}

- (void)getSweetgumPlans:(id)plans completion:(id)completion
{
  plansCopy = plans;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CoreTelephonyClient_CarrierServices__getSweetgumPlans_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSweetgumPlans:plansCopy completion:v8];
}

- (void)refreshSweetgumPlans:(id)plans completion:(id)completion
{
  plansCopy = plans;
  completionCopy = completion;
  v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:completionCopy];
  [v7 refreshSweetgumPlans:plansCopy completion:completionCopy];
}

- (void)getSweetgumApps:(id)apps completion:(id)completion
{
  appsCopy = apps;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CoreTelephonyClient_CarrierServices__getSweetgumApps_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSweetgumApps:appsCopy completion:v8];
}

- (void)refreshSweetgumApps:(id)apps completion:(id)completion
{
  appsCopy = apps;
  completionCopy = completion;
  v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:completionCopy];
  [v7 refreshSweetgumApps:appsCopy completion:completionCopy];
}

- (void)refreshSweetgumAll:(id)all completion:(id)completion
{
  allCopy = all;
  completionCopy = completion;
  v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:completionCopy];
  [v7 refreshSweetgumAll:allCopy completion:completionCopy];
}

- (void)getSweetgumDataPlanMetrics:(id)metrics completion:(id)completion
{
  metricsCopy = metrics;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__CoreTelephonyClient_CarrierServices__getSweetgumDataPlanMetrics_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getSweetgumDataPlanMetrics:metricsCopy completion:v8];
}

- (void)purchaseSweetgumPlan:(id)plan completion:(id)completion
{
  planCopy = plan;
  completionCopy = completion;
  v7 = [(CoreTelephonyClient *)self proxyWithErrorHandler:completionCopy];
  [v7 purchaseSweetgumPlan:planCopy completion:completionCopy];
}

- (void)isPrivateNetworkContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkContext_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isPrivateNetworkContext:contextCopy completion:v8];
}

- (id)isPrivateNetworkContext:(id)context error:(id *)error
{
  contextCopy = context;
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
  [v7 isPrivateNetworkContext:contextCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)getPrivateNetworkCapabilitiesForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__CoreTelephonyClient_PrivateNetwork__getPrivateNetworkCapabilitiesForContext_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getPrivateNetworkCapabilitiesForContext:contextCopy completion:v8];
}

- (id)getPrivateNetworkCapabilitiesForContext:(id)context error:(id *)error
{
  contextCopy = context;
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
  [v7 getPrivateNetworkCapabilitiesForContext:contextCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)isPrivateNetworkSIM:(id)m completion:(id)completion
{
  mCopy = m;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkSIM_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isPrivateNetworkSIM:mCopy completion:v8];
}

- (BOOL)isPrivateNetworkSIM:(id)m error:(id *)error
{
  mCopy = m;
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
  [v7 isPrivateNetworkSIM:mCopy completion:v10];
  if (error)
  {
    *error = v17[5];
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

- (BOOL)isPrivateNetworkEvaluationNeeded:(id *)needed
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
  if (needed)
  {
    *needed = v14[5];
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

- (void)isPrivateNetworkPreferredOverWifi:(id)wifi completion:(id)completion
{
  wifiCopy = wifi;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__CoreTelephonyClient_PrivateNetwork__isPrivateNetworkPreferredOverWifi_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isPrivateNetworkPreferredOverWifi:wifiCopy completion:v8];
}

- (BOOL)updateGeofenceProfile:(id)profile
{
  profileCopy = profile;
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
  [v5 updateGeofenceProfile:profileCopy completion:v8];
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

- (void)deleteHiddenSims:(id)sims
{
  simsCopy = sims;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CoreTelephonyClient_PrivateNetwork__deleteHiddenSims___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = simsCopy;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 deleteHiddenSims:v5];
}

- (id)installPrivateNetworkProfile:(id)profile
{
  profileCopy = profile;
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
  [v5 installPrivateNetworkProfile:profileCopy completion:v8];
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

- (id)removePrivateNetworkProfile:(id)profile
{
  profileCopy = profile;
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
  [v5 removePrivateNetworkProfile:profileCopy completion:v8];
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

- (id)getPrivateNetworkSimInfoForContext:(id)context error:(id *)error
{
  contextCopy = context;
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
  [v7 getPrivateNetworkSimInfoForContext:contextCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (id)getRemoteDevicesForTransferOrError:(id *)error
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

  if (error)
  {
    *error = v17[5];
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

- (id)getRemoteDeviceOfType:(unint64_t)type withEID:(id)d error:(id *)error
{
  v5 = [(CoreTelephonyClient *)self getRemoteDeviceForTransferWithEID:d error:error];

  return v5;
}

- (id)getRemoteDeviceForTransferWithEID:(id)d error:(id *)error
{
  dCopy = d;
  if (dCopy)
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
    v8 = [[CTXPCGetRemoteDeviceForTransferRequest alloc] initWithEID:dCopy];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__CoreTelephonyClient_RemotePlan__getRemoteDeviceForTransferWithEID_error___block_invoke_2;
    v11[3] = &unk_1E6A44B30;
    v11[4] = &v19;
    v11[5] = &v12;
    [v7 sendRequest:v8 completionHandler:v11];

    if (error)
    {
      *error = v20[5];
    }

    v9 = v13[5];
    _Block_object_dispose(&v12, 8);

    _Block_object_dispose(&v19, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    *error = v9 = 0;
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

- (void)transferRemotePlan:(id)plan fromDevice:(id)device completion:(id)completion
{
  planCopy = plan;
  deviceCopy = device;
  completionCopy = completion;
  v11 = completionCopy;
  if (planCopy)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__CoreTelephonyClient_RemotePlan__transferRemotePlan_fromDevice_completion___block_invoke;
    v18[3] = &unk_1E6A43CC8;
    v12 = completionCopy;
    v19 = v12;
    v13 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v18];
    v14 = [[CTXPCTransferRemotePlanFromDeviceRequest alloc] initWithPlanID:planCopy fromDevice:deviceCopy];
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

- (void)transferRemotePlan:(id)plan completion:(id)completion
{
  planCopy = plan;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__CoreTelephonyClient_RemotePlan__transferRemotePlan_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetWebsheetInfoForTransferRemotePlanRequest alloc] initWithPlan:planCopy];
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

- (void)getRemotePlanManageAccountInfoFor:(id)for completion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
  }

  else
  {
    v8 = &__block_literal_global_4;
  }

  if (forCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__CoreTelephonyClient_RemotePlan__getRemotePlanManageAccountInfoFor_completion___block_invoke_2;
    v15[3] = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v15];
    v11 = [[CTXPCGetRemotePlanManageAccountInfoRequest alloc] initWithIccid:forCopy];
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

- (void)remotePlanSignupInfoFor:(id)for userConsent:(int64_t)consent completion:(id)completion
{
  forCopy = for;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = completionCopy;
  }

  else
  {
    v10 = &__block_literal_global_9_0;
  }

  if (forCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__CoreTelephonyClient_RemotePlan__remotePlanSignupInfoFor_userConsent_completion___block_invoke_2;
    v17[3] = &unk_1E6A43CC8;
    v11 = v10;
    v18 = v11;
    v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v17];
    v13 = [[CTXPCGetRemotePlanSignupInfoRequest alloc] initWithContext:forCopy userConsent:consent];
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

- (id)getTransportKeysToUpdate:(id *)update
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
  if (update)
  {
    *update = v16[5];
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

- (void)getTransportKeysToUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__CoreTelephonyClient_Provisioning__getTransportKeysToUpdateWithCompletion___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = completionCopy;
  v5 = completionCopy;
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

- (id)getSatelliteMsgCfgToUpdate:(id *)update
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
  if (update)
  {
    *update = v16[5];
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

- (void)getSatelliteMsgCfgToUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__CoreTelephonyClient_Provisioning__getSatelliteMsgCfgToUpdateWithCompletion___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getSatelliteMsgCfgToUpdate:v5];
}

- (id)setSatelliteMsgCfgUpdated:(id)updated
{
  updatedCopy = updated;
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
  [v5 setSatelliteMsgCfgUpdated:updatedCopy completion:v8];
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

- (id)addDedicatedBearer:(id)bearer error:(id *)error
{
  bearerCopy = bearer;
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
  [v7 addDedicatedBearer:bearerCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (id)removeDedicatedBearer:(id)bearer
{
  bearerCopy = bearer;
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
  [v5 removeDedicatedBearer:bearerCopy completion:v8];
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

- (BOOL)isDedicatedBearerPresent:(id)present error:(id *)error
{
  presentCopy = present;
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
  [v7 isDedicatedBearerPresent:presentCopy completion:v10];
  if (error)
  {
    *error = v17[5];
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

- (id)getQoSLinkCharacteristics:(id *)characteristics
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
  if (characteristics)
  {
    *characteristics = v16[5];
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

- (void)sendTaggedInfo:(id)info type:(unint64_t)type payload:(id)payload completion:(id)completion
{
  infoCopy = info;
  payloadCopy = payload;
  completionCopy = completion;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:completionCopy];
  [v12 sendTaggedInfo:infoCopy type:type payload:payloadCopy completion:completionCopy];
}

- (void)isPNRSupported:(id)supported completion:(id)completion
{
  supportedCopy = supported;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CoreTelephonyClient_PNR__isPNRSupported_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isPNRSupported:supportedCopy completion:v8];
}

- (BOOL)isPNRSupported:(id)supported outError:(id *)error
{
  supportedCopy = supported;
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
  [v7 isPNRSupported:supportedCopy completion:v10];
  if (error)
  {
    *error = v17[5];
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

- (void)getPNRSupportStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__CoreTelephonyClient_PNR__getPNRSupportStatus_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getPNRSupportStatus:statusCopy completion:v8];
}

- (id)getPNRSupportStatus:(id)status outError:(id *)error
{
  statusCopy = status;
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
  [v7 getPNRSupportStatus:statusCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)issuePNRRequest:(id)request pnrReqType:(id)type completion:(id)completion
{
  requestCopy = request;
  typeCopy = type;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__CoreTelephonyClient_PNR__issuePNRRequest_pnrReqType_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = completionCopy;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 issuePNRRequest:requestCopy pnrReqType:typeCopy completion:v11];
}

- (void)getPNRContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__CoreTelephonyClient_PNR__getPNRContext_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getPNRContext:contextCopy completion:v8];
}

- (id)getPNRContext:(id)context outError:(id *)error
{
  contextCopy = context;
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
  [v7 getPNRContext:contextCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (BOOL)isPhoneNumberCredentialValid:(id)valid outError:(id *)error
{
  validCopy = valid;
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
  [v7 isPhoneNumberCredentialValid:validCopy completion:v10];
  if (error)
  {
    *error = v17[5];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v16, 8);
  return v8;
}

- (void)context:(id)context getPhoneNumberSignatureWithCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__CoreTelephonyClient_PNR__context_getPhoneNumberSignatureWithCompletion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 context:contextCopy getPhoneNumberSignatureWithCompletion:v8];
}

- (id)context:(id)context getPhoneNumberSignature:(id *)signature
{
  contextCopy = context;
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
  [v7 context:contextCopy getPhoneNumberSignatureWithCompletion:v10];
  if (signature)
  {
    *signature = v19[5];
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

- (void)context:(id)context resetPhoneNumber:(id)number
{
  contextCopy = context;
  numberCopy = number;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__CoreTelephonyClient_PNR__context_resetPhoneNumber___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = numberCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 context:contextCopy resetPhoneNumber:v8];
}

- (void)getPNRPriorityRegistrationListWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__CoreTelephonyClient_PNR__getPNRPriorityRegistrationListWithCompletion___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = completionCopy;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getPNRPriorityRegistrationListWithCompletion:v5];
}

- (id)getPNRPriorityRegistrationListWithError:(id *)error
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
  if (error)
  {
    *error = v16[5];
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

- (void)context:(id)context canSetCapability:(id)capability completion:(id)completion
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__CoreTelephonyClient_Capabilities__context_canSetCapability_completion___block_invoke;
  v5[3] = &unk_1E6A477F8;
  v5[4] = completion;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v5), "context:canSetCapability:completion:", context, capability, completion}];
}

- (id)context:(id)context canSetCapability:(id)capability allowed:(BOOL *)allowed with:(id *)with
{
  if (allowed)
  {
    *allowed = 0;
  }

  if (with)
  {
    *with = 0;
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
  v16[5] = allowed;
  v16[6] = with;
  v16[4] = &v18;
  [v10 context:context canSetCapability:capability completion:v16];
  if (with)
  {
    v11 = *with;
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

- (void)context:(id)context getCapability:(id)capability completion:(id)completion
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__CoreTelephonyClient_Capabilities__context_getCapability_completion___block_invoke;
  v5[3] = &unk_1E6A477F8;
  v5[4] = completion;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v5), "context:getCapability:completion:", context, capability, completion}];
}

- (id)context:(id)context getCapability:(id)capability status:(BOOL *)status with:(id *)with
{
  if (status)
  {
    *status = 0;
  }

  if (with)
  {
    *with = 0;
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
  v16[5] = status;
  v16[6] = with;
  v16[4] = &v18;
  [v10 context:context getCapability:capability completion:v16];
  if (with)
  {
    v11 = *with;
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

- (void)context:(id)context getSystemCapabilitiesWithCompletion:(id)completion
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__CoreTelephonyClient_Capabilities__context_getSystemCapabilitiesWithCompletion___block_invoke;
  v4[3] = &unk_1E6A477F8;
  v4[4] = completion;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v4), "context:getSystemCapabilities:", context, completion}];
}

- (id)context:(id)context getSystemCapabilities:(id *)capabilities
{
  if (capabilities)
  {
    *capabilities = 0;
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
  v13[4] = capabilities;
  v6 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CoreTelephonyClient_Capabilities__context_getSystemCapabilities___block_invoke_2;
  v12[3] = &unk_1E6A47868;
  v12[4] = &v14;
  v12[5] = capabilities;
  [v6 context:context getSystemCapabilities:v12];
  v7 = v15[5];
  if (v7)
  {
    v8 = v7;
  }

  if (capabilities && *capabilities)
  {
    v9 = *capabilities;
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

- (id)getSupports5G:(id)g error:(id *)error
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
  [v6 getSupports5G:g completion:v9];
  if (error)
  {
    *error = v18[5];
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

- (id)context:(id)context recheckPhoneServicesAccountStatus:(id)status
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
  [v6 context:context recheckPhoneServicesAccountStatus:status completion:v11];
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

- (void)getPhoneServicesDeviceListWithCompletion:(id)completion
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceListWithCompletion___block_invoke;
  v3[3] = &unk_1E6A477F8;
  v3[4] = completion;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v3), "getPhoneServicesDeviceList:", completion}];
}

- (id)getPhoneServicesDeviceList:(id *)list
{
  if (list)
  {
    *list = 0;
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
  v11[4] = list;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceList___block_invoke_2;
  v10[3] = &unk_1E6A47868;
  v10[4] = &v12;
  v10[5] = list;
  [v4 getPhoneServicesDeviceList:v10];
  v5 = v13[5];
  if (v5)
  {
    v6 = v5;
  }

  if (list && *list)
  {
    v7 = *list;
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

- (void)getPhoneServicesDeviceInfoWithCompletion:(id)completion
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceInfoWithCompletion___block_invoke;
  v3[3] = &unk_1E6A477F8;
  v3[4] = completion;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v3), "getPhoneServicesDeviceInfo:", completion}];
}

- (id)getPhoneServicesDeviceInfo:(id *)info
{
  if (info)
  {
    *info = 0;
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
  v11[4] = info;
  v4 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CoreTelephonyClient_Capabilities__getPhoneServicesDeviceInfo___block_invoke_2;
  v10[3] = &unk_1E6A47868;
  v10[4] = &v12;
  v10[5] = info;
  [v4 getPhoneServicesDeviceInfo:v10];
  v5 = v13[5];
  if (v5)
  {
    v6 = v5;
  }

  if (info && *info)
  {
    v7 = *info;
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

- (void)context:(id)context addPhoneServicesDevice:(id)device withCompletion:(id)completion
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__CoreTelephonyClient_Capabilities__context_addPhoneServicesDevice_withCompletion___block_invoke;
  v5[3] = &unk_1E6A477F8;
  v5[4] = completion;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v5), "context:addPhoneServicesDevice:withCompletion:", context, device, completion}];
}

- (id)context:(id)context addPhoneServicesDevice:(id)device
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
  [v6 context:context addPhoneServicesDevice:device withCompletion:v11];
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

- (void)context:(id)context removePhoneServicesDevice:(id)device withCompletion:(id)completion
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__CoreTelephonyClient_Capabilities__context_removePhoneServicesDevice_withCompletion___block_invoke;
  v5[3] = &unk_1E6A477F8;
  v5[4] = completion;
  [-[CoreTelephonyClient proxyWithErrorHandler:](self proxyWithErrorHandler:{v5), "context:removePhoneServicesDevice:withCompletion:", context, device, completion}];
}

- (id)context:(id)context removePhoneServicesDevice:(id)device
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
  [v6 context:context removePhoneServicesDevice:device withCompletion:v11];
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

- (id)wifiCallingCTFollowUpComplete:(id)complete
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
  [v4 wifiCallingCTFollowUpComplete:complete withCompletion:v9];
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

- (BOOL)context:(id)context isMandatoryDisabledVoLTE:(id *)e
{
  if (e)
  {
    *e = 0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__CoreTelephonyClient_Capabilities__context_isMandatoryDisabledVoLTE___block_invoke;
  v11[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v11[4] = e;
  v6 = [(CoreTelephonyClient *)self synchronousProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CoreTelephonyClient_Capabilities__context_isMandatoryDisabledVoLTE___block_invoke_2;
  v10[3] = &unk_1E6A47890;
  v10[4] = &v12;
  v10[5] = e;
  [v6 context:context isMandatoryDisabledVoLTE:v10];
  if (e && *e)
  {
    v7 = *e;
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

- (CoreTelephonyClient)initWithQueue:(dispatch_queue_s *)queue
{
  sharedMultiplexer = [objc_opt_class() sharedMultiplexer];
  v6 = [(CoreTelephonyClient *)self initWithQueue:queue multiplexer:sharedMultiplexer];

  return v6;
}

- (CoreTelephonyClient)initWithQueue:(dispatch_queue_s *)queue multiplexer:(id)multiplexer
{
  multiplexerCopy = multiplexer;
  v7 = objc_opt_new();
  v8 = [(CoreTelephonyClient *)self initWithQueue:queue multiplexer:multiplexerCopy gestaltHelper:v7];

  return v8;
}

- (CoreTelephonyClient)initWithQueue:(dispatch_queue_s *)queue multiplexer:(id)multiplexer gestaltHelper:(id)helper
{
  multiplexerCopy = multiplexer;
  helperCopy = helper;
  v21.receiver = self;
  v21.super_class = CoreTelephonyClient;
  v11 = [(CoreTelephonyClient *)&v21 init];
  if (v11)
  {
    if (queue)
    {
      dispatch_retain(queue);
    }

    fObj = v11->_userQueue.fObj.fObj;
    v11->_userQueue.fObj.fObj = queue;
    queueCopy = queue;
    if (fObj)
    {
      dispatch_release(fObj);
      queueCopy = v11->_userQueue.fObj.fObj;
    }

    if (!queueCopy)
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

    objc_storeStrong(&v11->_mux, multiplexer);
    objc_storeStrong(&v11->_gestaltHelper, helper);
    objc_initWeak(&location, v11);
    v14 = v11->_userQueue.fObj.fObj;
    objc_copyWeak(v19, &location);
    v19[1] = queue;
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)getSubscriptionInfo:(id)info
{
  infoCopy = info;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CoreTelephonyClient_getSubscriptionInfo___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = infoCopy;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getSubscriptionInfo:v5];
}

- (id)getSubscriptionInfoWithError:(id *)error
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
  if (error)
  {
    v5 = v17[5];
    if (v5)
    {
      *error = v5;
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

- (int64_t)getDualSimCapability:(id *)capability
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
    if (capability)
    {
      *capability = v15[5];
    }

    v6 = v10[3];
    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v14, 8);
  }

  else if (capability)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *capability = v6 = 0;
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

- (void)getDescriptorsForDomain:(int64_t)domain completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CoreTelephonyClient_getDescriptorsForDomain_completion___block_invoke;
  v9[3] = &unk_1E6A43CC8;
  v7 = completionCopy;
  v10 = v7;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v9];
  [v8 getDescriptorsForDomain:domain completion:v7];
}

- (id)getDescriptorsForDomain:(int64_t)domain error:(id *)error
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
  [v6 getDescriptorsForDomain:domain completion:v9];
  if (error)
  {
    *error = v18[5];
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

- (void)getActiveContextsWithCallback:(id)callback
{
  callbackCopy = callback;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CoreTelephonyClient_getActiveContextsWithCallback___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = callbackCopy;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getActiveContexts:v5];
}

- (id)getActiveContexts:(id *)contexts
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
  if (contexts)
  {
    *contexts = v16[5];
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

- (void)getEvolvedSubscriptionLabelID:(id)d withCallback:(id)callback
{
  dCopy = d;
  callbackCopy = callback;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__CoreTelephonyClient_getEvolvedSubscriptionLabelID_withCallback___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = callbackCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getEvolvedSubscriptionLabelID:dCopy withCallback:v8];
}

- (id)getEvolvedSubscriptionLabelID:(id)d error:(id *)error
{
  dCopy = d;
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
  [v7 getEvolvedSubscriptionLabelID:dCopy withCallback:v10];
  if (error)
  {
    *error = v19[5];
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

- (id)proxyWithErrorHandler:(id)handler
{
  v3 = [(CoreTelephonyClientMux *)self->_mux proxyWithQueue:self->_userQueue.fObj.fObj errorHandler:handler];

  return v3;
}

- (id)synchronousProxyWithErrorHandler:(id)handler
{
  v3 = [(CoreTelephonyClientMux *)self->_mux synchronousProxyWithErrorHandler:handler];

  return v3;
}

- (void)ping:(id)ping
{
  pingCopy = ping;
  v4 = [(CoreTelephonyClient *)self proxyWithErrorHandler:?];
  [v4 ping:pingCopy];
}

- (BOOL)supportsRequestWithSelector:(SEL)selector
{
  supportsCellular = [(CoreTelephonyClient *)self supportsCellular];
  if (!supportsCellular)
  {
    v5 = NSStringFromSelector(selector);
    handleUnsupportedRequestForCurrentBundle([v5 UTF8String]);
  }

  return supportsCellular;
}

- (void)dispatchBlockToClientAsync:(id)async
{
  _Block_copy(async);
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
  selfCopy = self;
  (*(*self + 2))();
  return std::unique_ptr<-[CoreTelephonyClientMux dealloc]::$_0>::~unique_ptr[abi:nn200100](&selfCopy);
}

- (void)copyRegistrationStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__CoreTelephonyClient_Registration__copyRegistrationStatus_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegistrationStatusRequest alloc] initWithContext:statusCopy];
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

- (id)copyRegistrationStatus:(id)status error:(id *)error
{
  statusCopy = status;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegistrationStatusRequest alloc] initWithContext:statusCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__CoreTelephonyClient_Registration__copyRegistrationStatus_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)copyRegistrationDisplayStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __78__CoreTelephonyClient_Registration__copyRegistrationDisplayStatus_completion___block_invoke_2;
    v15[3] = &unk_1E6A43CC8;
    v9 = completionCopy;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v15];
    v11 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegistrationDisplayStatusRequest alloc] initWithContext:statusCopy];
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
    v18 = completionCopy;
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

- (id)copyRegistrationDisplayStatus:(id)status error:(id *)error
{
  statusCopy = status;
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
    v9 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegistrationDisplayStatusRequest alloc] initWithContext:statusCopy];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __73__CoreTelephonyClient_Registration__copyRegistrationDisplayStatus_error___block_invoke_2;
    v12[3] = &unk_1E6A44B30;
    v12[4] = &v20;
    v12[5] = &v13;
    [v8 sendRequest:v9 completionHandler:v12];
    if (error)
    {
      *error = v21[5];
    }

    v10 = v14[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v20, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *error = v10 = 0;
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

- (void)copyServingPlmn:(id)plmn completion:(id)completion
{
  plmnCopy = plmn;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__CoreTelephonyClient_Registration__copyServingPlmn_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetServingPlmnRequest alloc] initWithContext:plmnCopy];
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

- (id)copyServingPlmn:(id)plmn error:(id *)error
{
  plmnCopy = plmn;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetServingPlmnRequest alloc] initWithContext:plmnCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__CoreTelephonyClient_Registration__copyServingPlmn_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)copyMobileCountryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__CoreTelephonyClient_Registration__copyMobileCountryCode_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetMobileCountryCodeRequest alloc] initWithContext:codeCopy];
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

- (id)copyMobileCountryCode:(id)code error:(id *)error
{
  codeCopy = code;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetMobileCountryCodeRequest alloc] initWithContext:codeCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CoreTelephonyClient_Registration__copyMobileCountryCode_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)copyLastKnownMobileCountryCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__CoreTelephonyClient_Registration__copyLastKnownMobileCountryCode_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetLastKnownMobileCountryCodeRequest alloc] initWithContext:codeCopy];
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

- (id)copyLastKnownMobileCountryCode:(id)code error:(id *)error
{
  codeCopy = code;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetLastKnownMobileCountryCodeRequest alloc] initWithContext:codeCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__CoreTelephonyClient_Registration__copyLastKnownMobileCountryCode_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)copyMobileNetworkCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__CoreTelephonyClient_Registration__copyMobileNetworkCode_completion___block_invoke_2;
    v15[3] = &unk_1E6A43CC8;
    v9 = completionCopy;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v15];
    v11 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetMobileNetworkCodeRequest alloc] initWithContext:codeCopy];
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
    v18 = completionCopy;
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

- (id)copyMobileNetworkCode:(id)code error:(id *)error
{
  codeCopy = code;
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
    v9 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetMobileNetworkCodeRequest alloc] initWithContext:codeCopy];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__CoreTelephonyClient_Registration__copyMobileNetworkCode_error___block_invoke_2;
    v12[3] = &unk_1E6A44B30;
    v12[4] = &v20;
    v12[5] = &v13;
    [v8 sendRequest:v9 completionHandler:v12];
    if (error)
    {
      *error = v21[5];
    }

    v10 = v14[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v20, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *error = v10 = 0;
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

- (void)copyIsInHomeCountry:(id)country completion:(id)completion
{
  countryCopy = country;
  completionCopy = completion;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__CoreTelephonyClient_Registration__copyIsInHomeCountry_completion___block_invoke_2;
    v15[3] = &unk_1E6A43CC8;
    v9 = completionCopy;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v15];
    v11 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIsInHomeCountryRequest alloc] initWithContext:countryCopy];
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
    v18 = completionCopy;
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

- (id)copyIsInHomeCountry:(id)country error:(id *)error
{
  countryCopy = country;
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
    v9 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIsInHomeCountryRequest alloc] initWithContext:countryCopy];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__CoreTelephonyClient_Registration__copyIsInHomeCountry_error___block_invoke_2;
    v12[3] = &unk_1E6A44B30;
    v12[4] = &v20;
    v12[5] = &v13;
    [v8 sendRequest:v9 completionHandler:v12];
    if (error)
    {
      *error = v21[5];
    }

    v10 = v14[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v20, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *error = v10 = 0;
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

- (void)getRoamingStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  if ([(CoreTelephonyClient *)self supportsRequestWithSelector:a2])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__CoreTelephonyClient_Registration__getRoamingStatus_completion___block_invoke_2;
    v15[3] = &unk_1E6A43CC8;
    v9 = completionCopy;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v15];
    v11 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRoamingStatusRequest alloc] initWithContext:statusCopy];
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
    v18 = completionCopy;
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

- (id)getRoamingStatus:(id)status error:(id *)error
{
  statusCopy = status;
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
    v9 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRoamingStatusRequest alloc] initWithContext:statusCopy];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__CoreTelephonyClient_Registration__getRoamingStatus_error___block_invoke_2;
    v12[3] = &unk_1E6A44B30;
    v12[4] = &v20;
    v12[5] = &v13;
    [v8 sendRequest:v9 completionHandler:v12];
    if (error)
    {
      *error = v21[5];
    }

    v10 = v14[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v20, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *error = v10 = 0;
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

- (void)copyIsDataAttached:(id)attached completion:(id)completion
{
  attachedCopy = attached;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__CoreTelephonyClient_Registration__copyIsDataAttached_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIsDataAttachedRequest alloc] initWithContext:attachedCopy];
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

- (void)copyOperatorName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__CoreTelephonyClient_Registration__copyOperatorName_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetOperatorNameRequest alloc] initWithContext:nameCopy type:0];
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

- (id)getOperatorName:(id)name error:(id *)error
{
  nameCopy = name;
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
  v8 = [[CTXPCGetOperatorNameRequest alloc] initWithContext:nameCopy type:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__CoreTelephonyClient_Registration__getOperatorName_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)copyLocalizedOperatorName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CoreTelephonyClient_Registration__copyLocalizedOperatorName_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetOperatorNameRequest alloc] initWithContext:nameCopy type:1];
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

- (id)getLocalizedOperatorName:(id)name error:(id *)error
{
  nameCopy = name;
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
  v8 = [[CTXPCGetOperatorNameRequest alloc] initWithContext:nameCopy type:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_Registration__getLocalizedOperatorName_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (id)getNRStatus:(id)status error:(id *)error
{
  statusCopy = status;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetNRStatusRequest alloc] initWithDescriptor:statusCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CoreTelephonyClient_Registration__getNRStatus_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (id)getSupports5GStandalone:(id)standalone error:(id *)error
{
  standaloneCopy = standalone;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSupports5GStandaloneRequest alloc] initWithDescriptor:standaloneCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CoreTelephonyClient_Registration__getSupports5GStandalone_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)copyRadioAccessTechnology:(id)technology completion:(id)completion
{
  technologyCopy = technology;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CoreTelephonyClient_Registration__copyRadioAccessTechnology_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRadioAccessTechnologyRequest alloc] initWithContext:technologyCopy];
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

- (id)copyRadioAccessTechnology:(id)technology error:(id *)error
{
  technologyCopy = technology;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRadioAccessTechnologyRequest alloc] initWithContext:technologyCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CoreTelephonyClient_Registration__copyRadioAccessTechnology_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)copyWirelessTechnology:(id)technology completion:(id)completion
{
  technologyCopy = technology;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__CoreTelephonyClient_Registration__copyWirelessTechnology_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetWirelessTechnologyRequest alloc] initWithContext:technologyCopy];
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

- (void)copyAbbreviatedOperatorName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__CoreTelephonyClient_Registration__copyAbbreviatedOperatorName_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetOperatorNameRequest alloc] initWithContext:nameCopy type:2];
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

- (void)getRatSelection:(id)selection completion:(id)completion
{
  selectionCopy = selection;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__CoreTelephonyClient_Registration__getRatSelection_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRatSelectionRequest alloc] initWithContext:selectionCopy];
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

- (id)getRatSelectionMask:(id)mask error:(id *)error
{
  maskCopy = mask;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRatSelectionRequest alloc] initWithDescriptor:maskCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__CoreTelephonyClient_Registration__getRatSelectionMask_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)setRatSelection:(id)selection selection:(id)a4 preferred:(id)preferred completion:(id)completion
{
  selectionCopy = selection;
  v11 = a4;
  preferredCopy = preferred;
  completionCopy = completion;
  v14 = completionCopy;
  if (v11)
  {
    v15 = [(CoreTelephonyClient *)self proxyWithErrorHandler:completionCopy];
    v16 = [[CTXPCSetRatSelectionRequest alloc] initWithContext:selectionCopy selection:v11 preferred:preferredCopy];
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
    v20 = completionCopy;
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

- (void)copyBandInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__CoreTelephonyClient_Registration__copyBandInfo_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetBandInfoRequest alloc] initWithContext:infoCopy type:0];
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

- (void)setBandInfo:(id)info bands:(id)bands completion:(id)completion
{
  infoCopy = info;
  bandsCopy = bands;
  completionCopy = completion;
  v11 = [(CoreTelephonyClient *)self proxyWithErrorHandler:completionCopy];
  v12 = [[CTXPCSetActiveBandInfoRequest alloc] initWithContext:infoCopy type:0 bands:bandsCopy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__CoreTelephonyClient_Registration__setBandInfo_bands_completion___block_invoke;
  v14[3] = &unk_1E6A463D0;
  v13 = completionCopy;
  v15 = v13;
  [v11 sendRequest:v12 completionHandler:v14];
}

- (id)getBandInfo:(id)info error:(id *)error
{
  infoCopy = info;
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
  v8 = [[CTXPCGetBandInfoRequest alloc] initWithContext:infoCopy type:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CoreTelephonyClient_Registration__getBandInfo_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)setActiveBandInfo:(id)info bands:(id)bands error:(id *)error
{
  infoCopy = info;
  bandsCopy = bands;
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
  v11 = [[CTXPCSetActiveBandInfoRequest alloc] initWithContext:infoCopy type:1 bandInfo:bandsCopy];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__CoreTelephonyClient_Registration__setActiveBandInfo_bands_error___block_invoke_2;
  v12[3] = &unk_1E6A44B08;
  v12[4] = &v14;
  [v10 sendRequest:v11 completionHandler:v12];
  if (error)
  {
    *error = v15[5];
  }

  _Block_object_dispose(&v14, 8);
}

- (void)getSignalStrengthInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__CoreTelephonyClient_Registration__getSignalStrengthInfo_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetSignalStrengthInfoRequest alloc] initWithContext:infoCopy forPublic:0];
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

- (id)getSignalStrengthInfo:(id)info error:(id *)error
{
  infoCopy = info;
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
  v8 = [[CTXPCGetSignalStrengthInfoRequest alloc] initWithContext:infoCopy forPublic:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CoreTelephonyClient_Registration__getSignalStrengthInfo_error___block_invoke_2;
  v12[3] = &unk_1E6A44B30;
  v12[4] = &v20;
  v12[5] = &v13;
  [v7 sendRequest:v8 completionHandler:v12];
  if (error)
  {
    v9 = v21[5];
    if (v9)
    {
      *error = v9;
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

- (void)getVoiceLinkQualityMetric:(id)metric completion:(id)completion
{
  metricCopy = metric;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CoreTelephonyClient_Registration__getVoiceLinkQualityMetric_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetVoiceLinkQualityMetricRequest alloc] initWithContext:metricCopy];
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

- (void)getEnhancedVoiceLinkQualityMetric:(id)metric completion:(id)completion
{
  metricCopy = metric;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__CoreTelephonyClient_Registration__getEnhancedVoiceLinkQualityMetric_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetEnhancedVoiceLinkQualityMetricRequest alloc] initWithContext:metricCopy];
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

- (void)copyRejectCauseCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CoreTelephonyClient_Registration__copyRejectCauseCode_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRejectCauseCodeRequest alloc] initWithContext:codeCopy];
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

- (id)getRejectCauseCode:(id)code error:(id *)error
{
  codeCopy = code;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRejectCauseCodeRequest alloc] initWithContext:codeCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__CoreTelephonyClient_Registration__getRejectCauseCode_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)copyRegistrationAgentStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__CoreTelephonyClient_Registration__copyRegistrationAgentStatus_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIMSRegistrationStatusRequest alloc] initWithContext:statusCopy];
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

- (void)getIMSRegistrationStatus:(id)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__CoreTelephonyClient_Registration__getIMSRegistrationStatus_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIMSRegistrationStatusRequest alloc] initWithContext:statusCopy];
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

- (id)getIMSRegistrationStatus:(id)status error:(id *)error
{
  statusCopy = status;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIMSRegistrationStatusRequest alloc] initWithContext:statusCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_Registration__getIMSRegistrationStatus_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)copyRegistrationIMSTransportInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__CoreTelephonyClient_Registration__copyRegistrationIMSTransportInfo_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegistrationIMSTransportInfoRequest alloc] initWithContext:infoCopy];
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

- (void)setMaxDataRate:(id)rate rate:(int64_t)a4 completion:(id)completion
{
  rateCopy = rate;
  completionCopy = completion;
  v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:completionCopy];
  v11 = [[CTXPCSetMaxDataRateRequest alloc] initWithContext:rateCopy rate:a4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__CoreTelephonyClient_Registration__setMaxDataRate_rate_completion___block_invoke;
  v13[3] = &unk_1E6A463D0;
  v12 = completionCopy;
  v14 = v12;
  [v10 sendRequest:v11 completionHandler:v13];
}

- (id)setMaxDataRate:(id)rate rate:(int64_t)a4
{
  rateCopy = rate;
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
  v8 = [[CTXPCSetMaxDataRateRequest alloc] initWithContext:rateCopy rate:a4];
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

- (void)getMaxDataRate:(id)rate completion:(id)completion
{
  rateCopy = rate;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CoreTelephonyClient_Registration__getMaxDataRate_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetMaxDataRateRequest alloc] initWithContext:rateCopy];
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

- (int64_t)getMaxDataRate:(id)rate error:(id *)error
{
  rateCopy = rate;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetMaxDataRateRequest alloc] initWithContext:rateCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__CoreTelephonyClient_Registration__getMaxDataRate_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v17;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v18[5];
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

- (void)getSupportedDataRates:(id)rates completion:(id)completion
{
  ratesCopy = rates;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__CoreTelephonyClient_Registration__getSupportedDataRates_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSupportedDataRatesRequest alloc] initWithContext:ratesCopy];
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

- (id)getSupportedDataRates:(id)rates error:(id *)error
{
  ratesCopy = rates;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetSupportedDataRatesRequest alloc] initWithContext:ratesCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CoreTelephonyClient_Registration__getSupportedDataRates_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)get2GSwitchEnabled:(id)enabled
{
  enabledCopy = enabled;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__CoreTelephonyClient_Registration__get2GSwitchEnabled___block_invoke;
  v12[3] = &unk_1E6A43CC8;
  v5 = enabledCopy;
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

- (BOOL)get2GSwitchEnabledSync:(id *)sync
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
  if (sync)
  {
    *sync = v16[5];
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

- (void)get2GUserPreference:(id)preference
{
  preferenceCopy = preference;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__CoreTelephonyClient_Registration__get2GUserPreference___block_invoke;
  v12[3] = &unk_1E6A43CC8;
  v5 = preferenceCopy;
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

- (BOOL)get2GUserPreferenceSync:(id *)sync
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
  if (sync)
  {
    *sync = v16[5];
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

- (void)getRegulatedRatsSwitchEnabled:(id)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__CoreTelephonyClient_Registration__getRegulatedRatsSwitchEnabled_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegulatedRATsSwitchEnabledRequest alloc] initWithContext:enabledCopy];
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

- (BOOL)getRegulatedRatsSwitchEnabledSync:(id)sync error:(id *)error
{
  syncCopy = sync;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegulatedRATsSwitchEnabledRequest alloc] initWithContext:syncCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__CoreTelephonyClient_Registration__getRegulatedRatsSwitchEnabledSync_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v17;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v18[5];
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

- (void)getRegulatedRatsUserPreference:(id)preference completion:(id)completion
{
  preferenceCopy = preference;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__CoreTelephonyClient_Registration__getRegulatedRatsUserPreference_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegulatedRATsUserPreferenceRequest alloc] initWithContext:preferenceCopy];
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

- (BOOL)getRegulatedRatsUserPreferenceSync:(id)sync error:(id *)error
{
  syncCopy = sync;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetRegulatedRATsUserPreferenceRequest alloc] initWithContext:syncCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__CoreTelephonyClient_Registration__getRegulatedRatsUserPreferenceSync_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v17;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v18[5];
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

- (void)fetchNetworkList:(id)list completion:(id)completion
{
  listCopy = list;
  completionCopy = completion;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:completionCopy];
  v9 = [(CTXPCSubscriptionContextRequest *)[CTXPCFetchNetworkListRequest alloc] initWithContext:listCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CoreTelephonyClient_Registration__fetchNetworkList_completion___block_invoke;
  v11[3] = &unk_1E6A463D0;
  v10 = completionCopy;
  v12 = v10;
  [v8 sendRequest:v9 completionHandler:v11];
}

- (void)copyNetworkList:(id)list completion:(id)completion
{
  listCopy = list;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__CoreTelephonyClient_Registration__copyNetworkList_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetNetworkListRequest alloc] initWithContext:listCopy];
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

- (void)automaticallySelectNetwork:(id)network completion:(id)completion
{
  networkCopy = network;
  completionCopy = completion;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:completionCopy];
  v9 = [(CTXPCSubscriptionContextRequest *)[CTXPCSelectNetworkRequest alloc] initWithContext:networkCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CoreTelephonyClient_Registration__automaticallySelectNetwork_completion___block_invoke;
  v11[3] = &unk_1E6A463D0;
  v10 = completionCopy;
  v12 = v10;
  [v8 sendRequest:v9 completionHandler:v11];
}

- (void)selectNetwork:(id)network network:(id)a4 completion:(id)completion
{
  networkCopy = network;
  v9 = a4;
  completionCopy = completion;
  v11 = [(CoreTelephonyClient *)self proxyWithErrorHandler:completionCopy];
  v12 = [[CTXPCSelectNetworkRequest alloc] initWithContext:networkCopy network:v9];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__CoreTelephonyClient_Registration__selectNetwork_network_completion___block_invoke;
  v14[3] = &unk_1E6A463D0;
  v13 = completionCopy;
  v15 = v13;
  [v11 sendRequest:v12 completionHandler:v14];
}

- (void)copyNetworkSelection:(id)selection completion:(id)completion
{
  selectionCopy = selection;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__CoreTelephonyClient_Registration__copyNetworkSelection_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetNetworkSelectionRequest alloc] initWithContext:selectionCopy];
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

- (void)isNetworkSelectionMenuAvailable:(id)available completion:(id)completion
{
  availableCopy = available;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__CoreTelephonyClient_Registration__isNetworkSelectionMenuAvailable_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIsNetworkSelectionMenuAvailableRequest alloc] initWithContext:availableCopy];
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

- (id)isNetworkSelectionMenuAvailable:(id)available error:(id *)error
{
  availableCopy = available;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIsNetworkSelectionMenuAvailableRequest alloc] initWithContext:availableCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CoreTelephonyClient_Registration__isNetworkSelectionMenuAvailable_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)copyNetworkSelectionMode:(id)mode completion:(id)completion
{
  modeCopy = mode;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__CoreTelephonyClient_Registration__copyNetworkSelectionMode_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetNetworkSelectionInfoRequest alloc] initWithContext:modeCopy];
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

- (void)copyNetworkSelectionInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__CoreTelephonyClient_Registration__copyNetworkSelectionInfo_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetNetworkSelectionInfoRequest alloc] initWithContext:infoCopy];
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

- (id)copyNetworkSelectionInfo:(id)info error:(id *)error
{
  infoCopy = info;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetNetworkSelectionInfoRequest alloc] initWithContext:infoCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_Registration__copyNetworkSelectionInfo_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)isNetworkReselectionNeeded:(id)needed completion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__CoreTelephonyClient_Registration__isNetworkReselectionNeeded_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetIsNetworkReselectionNeededRequest alloc] initWithContext:neededCopy];
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

- (id)getEncryptionStatus:(id)status error:(id *)error
{
  statusCopy = status;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetEncryptionStatusRequest alloc] initWithDescriptor:statusCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__CoreTelephonyClient_Registration__getEncryptionStatus_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (id)getSignalStrengthMeasurements:(id)measurements error:(id *)error
{
  measurementsCopy = measurements;
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
  v8 = [[CTXPCGetSignalStrengthMeasurementsRequest alloc] initWithDescriptor:measurementsCopy synchronous:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__CoreTelephonyClient_Registration__getSignalStrengthMeasurements_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (void)getSignalStrengthMeasurements:(id)measurements completion:(id)completion
{
  measurementsCopy = measurements;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__CoreTelephonyClient_Registration__getSignalStrengthMeasurements_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCGetSignalStrengthMeasurementsRequest alloc] initWithDescriptor:measurementsCopy synchronous:0];
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

- (id)getPublicSignalStrength:(id)strength error:(id *)error
{
  strengthCopy = strength;
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
  v8 = [[CTXPCGetSignalStrengthInfoRequest alloc] initWithDescriptor:strengthCopy forPublic:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__CoreTelephonyClient_Registration__getPublicSignalStrength_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (id)getCurrentRat:(id)rat error:(id *)error
{
  ratCopy = rat;
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
  v8 = [(CTXPCSubscriptionContextRequest *)[CTXPCGetCurrentRatRequest alloc] initWithDescriptor:ratCopy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__CoreTelephonyClient_Registration__getCurrentRat_error___block_invoke_2;
  v11[3] = &unk_1E6A44B30;
  v11[4] = &v19;
  v11[5] = &v12;
  [v7 sendRequest:v8 completionHandler:v11];
  if (error)
  {
    *error = v20[5];
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

- (id)copyRequiresResiliency:(id)resiliency outError:(id *)error
{
  resiliencyCopy = resiliency;
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
    [v8 getRequiresResiliency:resiliencyCopy completion:v12];
    v9 = v19[5];
    if (v9)
    {
      v10 = 0;
      if (error)
      {
        *error = v9;
      }
    }

    else
    {
      v10 = [MEMORY[0x1E696AD98] numberWithBool:*(v14 + 24)];
    }

    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v18, 8);
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:19 userInfo:0];
    *error = v10 = 0;
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

- (void)getLocalPolicies:(id)policies completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__CoreTelephonyClient_DataUsagePolicy__getLocalPolicies_completion___block_invoke;
  v13[3] = &unk_1E6A441C8;
  v7 = completionCopy;
  v14 = v7;
  policiesCopy = policies;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_DataUsagePolicy__getLocalPolicies_completion___block_invoke_2;
  v11[3] = &unk_1E6A48580;
  v12 = v7;
  v10 = v7;
  [v9 getLocalPolicies:policiesCopy completion:v11];
}

void __68__CoreTelephonyClient_DataUsagePolicy__getLocalPolicies_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 policies];
  (*(v4 + 16))(v4, v6, v5);
}

- (id)getLocalPolicies:(id)policies error:(id *)error
{
  policiesCopy = policies;
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
  [v7 getLocalPolicies:policiesCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)getRemotePolicies:(id)policies completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__CoreTelephonyClient_DataUsagePolicy__getRemotePolicies_completion___block_invoke;
  v13[3] = &unk_1E6A441C8;
  v7 = completionCopy;
  v14 = v7;
  policiesCopy = policies;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CoreTelephonyClient_DataUsagePolicy__getRemotePolicies_completion___block_invoke_2;
  v11[3] = &unk_1E6A48580;
  v12 = v7;
  v10 = v7;
  [v9 getRemotePolicies:policiesCopy completion:v11];
}

void __69__CoreTelephonyClient_DataUsagePolicy__getRemotePolicies_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 policies];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)setLocalPolicies:(id)policies completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__CoreTelephonyClient_DataUsagePolicy__setLocalPolicies_completion___block_invoke;
  v11[3] = &unk_1E6A441C8;
  v12 = completionCopy;
  v7 = completionCopy;
  policiesCopy = policies;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v11];
  v10 = [[CTDataUsagePoliciesWrapper alloc] initWithPolicies:policiesCopy];

  [v9 setLocalPolicies:v10 completion:v7];
}

- (id)setLocalPolicies:(id)policies
{
  policiesCopy = policies;
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
  v6 = [[CTDataUsagePoliciesWrapper alloc] initWithPolicies:policiesCopy];
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

- (void)setRemotePolicies:(id)policies completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CoreTelephonyClient_DataUsagePolicy__setRemotePolicies_completion___block_invoke;
  v11[3] = &unk_1E6A441C8;
  v12 = completionCopy;
  v7 = completionCopy;
  policiesCopy = policies;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v11];
  v10 = [[CTDataUsagePoliciesWrapper alloc] initWithPolicies:policiesCopy];

  [v9 setRemotePolicies:v10 completion:v7];
}

- (void)removePoliciesFromLocalDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__CoreTelephonyClient_DataUsagePolicy__removePoliciesFromLocalDevice_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = completionCopy;
  v7 = completionCopy;
  deviceCopy = device;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 removePoliciesFromLocalDevice:deviceCopy completion:v7];
}

- (void)setSatelliteAppCategories:(id)categories appCategories:(id)appCategories completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__CoreTelephonyClient_DataUsagePolicy__setSatelliteAppCategories_appCategories_completion___block_invoke;
  v13[3] = &unk_1E6A441C8;
  v14 = completionCopy;
  v9 = completionCopy;
  appCategoriesCopy = appCategories;
  categoriesCopy = categories;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 setSatelliteAppCategories:categoriesCopy appCategories:appCategoriesCopy completion:v9];
}

- (void)setUIConfiguredApns:(id)apns apns:(id)a4 completion:(id)completion
{
  apnsCopy = apns;
  v9 = a4;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CoreTelephonyClient_DeviceManagement__setUIConfiguredApns_apns_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v11 = completionCopy;
  v14 = v11;
  v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  [v12 setUIConfiguredApns:apnsCopy apns:v9 completion:v11];
}

- (void)getUIConfiguredApns:(id)apns completion:(id)completion
{
  apnsCopy = apns;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__CoreTelephonyClient_DeviceManagement__getUIConfiguredApns_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getUIConfiguredApns:apnsCopy completion:v8];
}

- (id)getUIConfiguredApns:(id)apns error:(id *)error
{
  apnsCopy = apns;
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
  [v7 getUIConfiguredApns:apnsCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)resetUIConfiguredApns:(id)apns completion:(id)completion
{
  apnsCopy = apns;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__CoreTelephonyClient_DeviceManagement__resetUIConfiguredApns_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 resetUIConfiguredApns:apnsCopy completion:v8];
}

- (void)getConfiguredApns:(id)apns completion:(id)completion
{
  apnsCopy = apns;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__CoreTelephonyClient_DeviceManagement__getConfiguredApns_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 getConfiguredApns:apnsCopy completion:v8];
}

- (id)getConfiguredApns:(id)apns error:(id *)error
{
  apnsCopy = apns;
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
  [v7 getConfiguredApns:apnsCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (unint64_t)getGSMAUIControlSetting:(id)setting error:(id *)error
{
  settingCopy = setting;
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
  [v7 getGSMAUIControlSetting:settingCopy completion:v10];
  if (error)
  {
    *error = v17[5];
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

- (void)deletePersonalWallet:(id)wallet completion:(id)completion
{
  walletCopy = wallet;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__CoreTelephonyClient_DeviceManagement__deletePersonalWallet_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 deletePersonalWallet:walletCopy completion:v8];
}

- (id)deletePersonalWallet:(id)wallet
{
  walletCopy = wallet;
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
  [v5 deletePersonalWallet:walletCopy completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)listPersonalWallets:(id *)wallets
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
  if (wallets)
  {
    *wallets = v16[5];
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

- (id)renamePersonalWallet:(id)wallet to:(id)to
{
  walletCopy = wallet;
  toCopy = to;
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
  [v8 renamePersonalWallet:walletCopy to:toCopy completion:v11];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)transferPersonalWallet:(id)wallet to:(id)to
{
  walletCopy = wallet;
  toCopy = to;
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
  [v8 transferPersonalWallet:walletCopy to:toCopy completion:v11];
  v9 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v9;
}

- (id)getStewieSupport:(id *)support
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
  if (support)
  {
    *support = v16[5];
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

- (void)getStewieSupportWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CoreTelephonyClient_Stewie__getStewieSupportWithCompletion___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getStewieSupport:v5];
}

- (void)requestStewieWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__CoreTelephonyClient_Stewie__requestStewieWithContext_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = completionCopy;
  v7 = completionCopy;
  contextCopy = context;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 requestStewieWithContext:contextCopy completion:v7];
}

- (void)exitStewieWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__CoreTelephonyClient_Stewie__exitStewieWithContext_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = completionCopy;
  v7 = completionCopy;
  contextCopy = context;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 exitStewieWithContext:contextCopy completion:v7];
}

- (void)getConnectionAssistantConfig:(id)config
{
  configCopy = config;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__CoreTelephonyClient_Stewie__getConnectionAssistantConfig___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = configCopy;
  v5 = configCopy;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getConnectionAssistantConfig:v5];
}

- (id)getConnectionAssistantConfigWithError:(id *)error
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
  if (error)
  {
    *error = v16[5];
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

- (void)getConnectionAssistantState:(id)state
{
  stateCopy = state;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CoreTelephonyClient_Stewie__getConnectionAssistantState___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = stateCopy;
  v5 = stateCopy;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getConnectionAssistantState:v5];
}

- (id)getConnectionAssistantStateWithError:(id *)error
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
  if (error)
  {
    *error = v16[5];
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

- (void)getConnectionAssistantServicePlot:(id)plot
{
  plotCopy = plot;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CoreTelephonyClient_Stewie__getConnectionAssistantServicePlot___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = plotCopy;
  v5 = plotCopy;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getConnectionAssistantServicePlot:v5];
}

- (id)getConnectionAssistantServicePlotWithError:(id *)error
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
  if (error)
  {
    *error = v16[5];
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

- (void)reportStewieDeviceOrientation:(id)orientation completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__CoreTelephonyClient_Stewie__reportStewieDeviceOrientation_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = completionCopy;
  v7 = completionCopy;
  orientationCopy = orientation;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 reportStewieDeviceOrientation:orientationCopy completion:v7];
}

- (id)reportStewieDeviceOrientation:(id)orientation
{
  orientationCopy = orientation;
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
  [v5 reportStewieDeviceOrientation:orientationCopy completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)compressWithStewieCodec:(id)codec completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__CoreTelephonyClient_Stewie__compressWithStewieCodec_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = completionCopy;
  v7 = completionCopy;
  codecCopy = codec;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 compressWithStewieCodec:codecCopy completion:v7];
}

- (void)activateStewieEmergencyTryOutWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__CoreTelephonyClient_Stewie__activateStewieEmergencyTryOutWithCompletion___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 activateStewieEmergencyTryOutWithCompletion:v5];
}

- (void)reportStewieConnectionAssistantEvent:(id)event completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__CoreTelephonyClient_Stewie__reportStewieConnectionAssistantEvent_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = completionCopy;
  v7 = completionCopy;
  eventCopy = event;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 reportStewieConnectionAssistantEvent:eventCopy completion:v7];
}

- (id)reportStewieConnectionAssistantEvent:(id)event
{
  eventCopy = event;
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
  [v5 reportStewieConnectionAssistantEvent:eventCopy completion:v8];
  v6 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)fetchRoadsideProvidersWithContext:(id)context error:(id *)error
{
  contextCopy = context;
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
  [v7 fetchRoadsideProvidersWithContext:contextCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)fetchRoadsideProvidersWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CoreTelephonyClient_Stewie__fetchRoadsideProvidersWithContext_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = completionCopy;
  v7 = completionCopy;
  contextCopy = context;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 fetchRoadsideProvidersWithContext:contextCopy completion:v7];
}

- (id)selectRoadsideProviderWithContext:(id)context error:(id *)error
{
  contextCopy = context;
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
  [v7 selectRoadsideProviderWithContext:contextCopy completion:v10];
  if (error)
  {
    *error = v19[5];
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

- (void)selectRoadsideProviderWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__CoreTelephonyClient_Stewie__selectRoadsideProviderWithContext_completion___block_invoke;
  v10[3] = &unk_1E6A441C8;
  v11 = completionCopy;
  v7 = completionCopy;
  contextCopy = context;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 selectRoadsideProviderWithContext:contextCopy completion:v7];
}

- (id)getResumableRoadsideProvider:(id *)provider
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
  if (provider)
  {
    *provider = v16[5];
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

- (void)getResumableRoadsideProviderWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__CoreTelephonyClient_Stewie__getResumableRoadsideProviderWithCompletion___block_invoke;
  v7[3] = &unk_1E6A441C8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 getResumableRoadsideProvider:v5];
}

- (BOOL)isAnyPlanTransferableFromThisDeviceForFlow:(unint64_t)flow OrError:(id *)error
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
  v7 = [[CTXPCIsAnyPlanTransferableFromThisDeviceForFlowRequest alloc] initWithFlowType:flow];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__CoreTelephonyClient_PlanTransfer__isAnyPlanTransferableFromThisDeviceForFlow_OrError___block_invoke_2;
  v10[3] = &unk_1E6A44B30;
  v10[4] = &v16;
  v10[5] = &v11;
  [v6 sendRequest:v7 completionHandler:v10];

  if (error)
  {
    *error = v17[5];
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

- (id)bootstrapPlanTransferForEndpoint:(unint64_t)endpoint usingMessageSession:(id)session
{
  sessionCopy = session;
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
  [v7 bootstrapPlanTransferForEndpoint:endpoint flowType:2 usingMessageSession:sessionCopy completion:v10];
  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

- (void)bootstrapPlanTransferForEndpoint:(unint64_t)endpoint flowType:(unint64_t)type usingMessageSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __110__CoreTelephonyClient_PlanTransfer__bootstrapPlanTransferForEndpoint_flowType_usingMessageSession_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v12 = completionCopy;
  v15 = v12;
  v13 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  [v13 bootstrapPlanTransferForEndpoint:endpoint flowType:type usingMessageSession:sessionCopy completion:v12];
}

- (void)isAnyPlanOfTransferCapability:(unint64_t)capability availableForThisDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __104__CoreTelephonyClient_PlanTransfer__isAnyPlanOfTransferCapability_availableForThisDeviceWithCompletion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v7 = completionCopy;
  v14 = v7;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v9 = [[CTXPCIsAnyPlanOfTransferCapabilityAvailableForThisDeviceRequest alloc] initWithCapability:capability];
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

- (id)endPlanTransferForEndPoint:(unint64_t)point
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
  v5 = [[CTXPCEndPlanTransferRequest alloc] initWithEndpoint:point];
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

- (void)isPreSharedKeyForReconnectionPresent:(id)present completion:(id)completion
{
  presentCopy = present;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__CoreTelephonyClient_PlanTransfer__isPreSharedKeyForReconnectionPresent_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 isPreSharedKeyForReconnectionPresent:presentCopy completion:v8];
}

- (void)establishReconnectionCredentialsUsingMessageSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__CoreTelephonyClient_PlanTransfer__establishReconnectionCredentialsUsingMessageSession_completion___block_invoke;
  v10[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v10];
  [v9 establishReconnectionCredentialsUsingMessageSession:sessionCopy completion:v8];
}

- (void)clearReconnectionCredentials:(id)credentials
{
  credentialsCopy = credentials;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__CoreTelephonyClient_PlanTransfer__clearReconnectionCredentials___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v5 = credentialsCopy;
  v8 = v5;
  v6 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v7];
  [v6 clearReconnectionCredentials:v5];
}

- (void)activateProximityTransfer:(unint64_t)transfer completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__CoreTelephonyClient_PlanTransfer__activateProximityTransfer_completion___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v7 = completionCopy;
  v14 = v7;
  v8 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v13];
  v9 = [[CTXPCActivateProximityTransferRequest alloc] initWithEndpoint:transfer];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__CoreTelephonyClient_PlanTransfer__activateProximityTransfer_completion___block_invoke_2;
  v11[3] = &unk_1E6A463D0;
  v10 = v7;
  v12 = v10;
  [v8 sendRequest:v9 completionHandler:v11];
}

- (void)validateProximityTransfer:(unint64_t)transfer pin:(id)pin completion:(id)completion
{
  pinCopy = pin;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = completionCopy;
  }

  else
  {
    v10 = &__block_literal_global_13;
  }

  if (pinCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__CoreTelephonyClient_PlanTransfer__validateProximityTransfer_pin_completion___block_invoke_2;
    v17[3] = &unk_1E6A43CC8;
    v11 = v10;
    v18 = v11;
    v12 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v17];
    v13 = [[CTXPCValidateProximityTransferRequest alloc] initWithEndpoint:transfer pin:pinCopy];
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

- (void)resetProximityTransportExtension:(id)extension
{
  extensionCopy = extension;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__CoreTelephonyClient_PlanTransfer__resetProximityTransportExtension___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v5 = extensionCopy;
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

- (void)prepareCrossPlatformPlanTransfer:(id)transfer completion:(id)completion
{
  transferCopy = transfer;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = completionCopy;
  }

  else
  {
    v8 = &__block_literal_global_17;
  }

  if (transferCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__CoreTelephonyClient_PlanTransfer__prepareCrossPlatformPlanTransfer_completion___block_invoke_2;
    v15[3] = &unk_1E6A43CC8;
    v9 = v8;
    v16 = v9;
    v10 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v15];
    v11 = [[CTXPCPrepareCrossPlatformPlanTransferRequest alloc] initWithRequest:transferCopy];
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

- (void)invalidateCrossPlatformPlanTransfer:(id)transfer
{
  transferCopy = transfer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__CoreTelephonyClient_PlanTransfer__invalidateCrossPlatformPlanTransfer___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v5 = transferCopy;
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

- (id)getLocalDeviceIdentifierForSIMTransfer:(id *)transfer
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (bundleIdentifier)
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
    v8 = [[CTXPCGetLocalDeviceIdentifierRequest alloc] initWithType:3 clientBundleIdentifier:bundleIdentifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__CoreTelephonyClient_PlanTransfer__getLocalDeviceIdentifierForSIMTransfer___block_invoke_2;
    v11[3] = &unk_1E6A44B30;
    v11[4] = &v13;
    v11[5] = &v19;
    [v7 sendRequest:v8 completionHandler:v11];

    if (transfer)
    {
      *transfer = v20[5];
    }

    v9 = v14[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }

  else if (transfer)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:14 userInfo:0];
    *transfer = v9 = 0;
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

- (void)prepareCrossPlatformCellularPlanLabel:(id)label completion:(id)completion
{
  labelCopy = label;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__CoreTelephonyClient_PlanTransfer__prepareCrossPlatformCellularPlanLabel_completion___block_invoke;
  v14[3] = &unk_1E6A43CC8;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v14];
  v10 = [[CTXPCPrepareCrossPlatformCellularPlanLabelRequest alloc] initWithPlanLabels:labelCopy];
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

- (void)carrierOneTimeCodeSendersWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__CoreTelephonyClient_PlanTransfer__carrierOneTimeCodeSendersWithCompletion___block_invoke;
    v5[3] = &unk_1E6A48BC0;
    objc_copyWeak(&v7, &location);
    v5[4] = self;
    v6 = completionCopy;
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

- (id)loadCarrierStoreVisitStatusForCarrier:(id)carrier error:(id *)error
{
  carrierCopy = carrier;
  if ([carrierCopy length])
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
    v8 = [[CTXPCLoadCarrierStoreVisitStatusRequest alloc] initWithCarrier:carrierCopy];
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

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    *error = v9 = 0;
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

- (void)saveSimSetupInfo:(id)info info:(id)a4 completion:(id)completion
{
  infoCopy = info;
  v9 = a4;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = completionCopy;
  }

  else
  {
    v11 = &__block_literal_global_32_0;
  }

  if ([infoCopy length])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70__CoreTelephonyClient_PlanTransfer__saveSimSetupInfo_info_completion___block_invoke_2;
    v18[3] = &unk_1E6A43CC8;
    v12 = v11;
    v19 = v12;
    v13 = [(CoreTelephonyClient *)self proxyWithErrorHandler:v18];
    v14 = [[CTXPCSaveSimSetupInfoRequest alloc] initWithInfo:infoCopy info:v9];
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

- (id)loadSimSetupInfo:(id)info error:(id *)error
{
  infoCopy = info;
  if ([infoCopy length])
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
    v8 = [[CTXPCLoadSimSetupInfoRequest alloc] initWithInfo:infoCopy];
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

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    *error = v9 = 0;
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