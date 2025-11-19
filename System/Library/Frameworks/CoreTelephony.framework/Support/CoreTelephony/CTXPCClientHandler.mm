@interface CTXPCClientHandler
- (CTXPCClientHandlerDelegate)delegate;
- (CTXPCDataProviderInterface)dataProviderDelegate;
- (NSXPCConnection)connection;
- (id).cxx_construct;
- (optional<BOOL>)restrictedPublicCarrierInfoKeys;
- (optional<PhoneServicesType>)serviceFromCFName:(id)a3;
- (shared_ptr<const)registry;
- (void)SIMUnlockProcedureDidComplete;
- (void)acknowledgeIncomingMessages:(id)a3 withMessageIDList:(id)a4 completion:(id)a5;
- (void)activateTurboMode:(id)a3;
- (void)addDedicatedBearer:(id)a3 completion:(id)a4;
- (void)addParticipants:(id)a3 toGroupChat:(id)a4 withParticipantsToAdd:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 completion:(id)a8;
- (void)authenticate:(id)a3 request:(id)a4 completion:(id)a5;
- (void)billingCycleEndDatesForLastPeriods:(unint64_t)a3 completion:(id)a4;
- (void)cancelSIMToolkitUSSDSessionForContext:(id)a3 completion:(id)a4;
- (void)changeIcon:(id)a3 forGroupChat:(id)a4 withNewIcon:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 completion:(id)a8;
- (void)changePIN:(id)a3 oldPin:(id)a4 newPin:(id)a5 completion:(id)a6;
- (void)changeSubject:(id)a3 forGroupChat:(id)a4 withNewSubject:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 completion:(id)a8;
- (void)checkBasebandConfigUpdateInfo:(id)a3;
- (void)checkCellularDiagnosticsStatus:(id)a3;
- (void)checkEmbeddedSimHealthWithCompletion:(id)a3;
- (void)checkRadioBootHealth:(id)a3;
- (void)checkRadioBootHealthDetails:(id)a3;
- (void)clearUserEnteredBillingEndDayOfMonth:(id)a3 completion:(id)a4;
- (void)clearUserEnteredMonthlyBudget:(id)a3 completion:(id)a4;
- (void)clearUserEnteredMonthlyRoamingBudget:(id)a3 completion:(id)a4;
- (void)context:(id)a3 addPhoneServicesDevice:(id)a4 withCompletion:(id)a5;
- (void)context:(id)a3 canSetCapability:(id)a4 completion:(id)a5;
- (void)context:(id)a3 getCapability:(id)a4 completion:(id)a5;
- (void)context:(id)a3 getPseudoIdentityFor:(id)a4 completion:(id)a5;
- (void)context:(id)a3 getSystemCapabilities:(id)a4;
- (void)context:(id)a3 isMandatoryDisabledVoLTE:(id)a4;
- (void)context:(id)a3 isProtectedIdentitySupported:(id)a4 completion:(id)a5;
- (void)context:(id)a3 mandatoryDisableVoLTE:(BOOL)a4 withCompletion:(id)a5;
- (void)context:(id)a3 recheckPhoneServicesAccountStatus:(id)a4 completion:(id)a5;
- (void)context:(id)a3 removePhoneServicesDevice:(id)a4 withCompletion:(id)a5;
- (void)context:(id)a3 setCapability:(id)a4 enabled:(BOOL)a5 info:(id)a6 completion:(id)a7;
- (void)context:(id)a3 supportedIdentityProtectionFor:(id)a4 completion:(id)a5;
- (void)copyCellId:(id)a3 completion:(id)a4;
- (void)copyCellInfo:(id)a3 completion:(id)a4;
- (void)copyFirmwareUpdateInfo:(id)a3;
- (void)copyGid1:(id)a3 completion:(id)a4;
- (void)copyGid2:(id)a3 completion:(id)a4;
- (void)copyLabel:(id)a3 completion:(id)a4;
- (void)copyLastKnownMobileSubscriberCountryCode:(id)a3 completion:(id)a4;
- (void)copyLocationAreaCode:(id)a3 completion:(id)a4;
- (void)copyMccOrPlmnsListForIso3CountryCode:(id)a3 completion:(id)a4;
- (void)copyMobileEquipmentInfo:(id)a3;
- (void)copyMobileSubscriberCountryCode:(id)a3 completion:(id)a4;
- (void)copyMobileSubscriberIdentity:(id)a3 completion:(id)a4;
- (void)copyMobileSubscriberIso3CountryCode:(id)a3 MNC:(id)a4 completion:(id)a5;
- (void)copyMobileSubscriberIsoCountryCode:(id)a3 completion:(id)a4;
- (void)copyMobileSubscriberIsoSubregionCode:(id)a3 MNC:(id)a4 completion:(id)a5;
- (void)copyMobileSubscriberNetworkCode:(id)a3 completion:(id)a4;
- (void)copyPriVersion:(id)a3 completion:(id)a4;
- (void)copyPublicCellId:(id)a3 completion:(id)a4;
- (void)copySIMIdentity:(id)a3 completion:(id)a4;
- (void)create:(id)a3 groupChat:(id)a4 withOperationID:(id)a5 completion:(id)a6;
- (void)createEncryptedIdentity:(id)a3 identity:(id)a4 completion:(id)a5;
- (void)dataUsageForLastPeriods:(unint64_t)a3 completion:(id)a4;
- (void)dataUsageForLastPeriodsOnActivePairedDevice:(unint64_t)a3 completion:(id)a4;
- (void)decodeSuggestionsBase64:(id)a3 withBase64String:(id)a4 completion:(id)a5;
- (void)deleteChat:(id)a3 chat:(id)a4 completion:(id)a5;
- (void)deleteHiddenSims:(id)a3;
- (void)disableBusinessMessaging:(id)a3 completion:(id)a4;
- (void)disableLazuli:(id)a3 completion:(id)a4;
- (void)discoverCapabilities:(id)a3 forDestination:(id)a4 completion:(id)a5;
- (void)discoverRemoteCapabilities:(id)a3 forDestination:(id)a4 withOperationID:(id)a5 completion:(id)a6;
- (void)enableBusinessMessaging:(id)a3 completion:(id)a4;
- (void)enableLazuli:(id)a3 completion:(id)a4;
- (void)evaluateMobileSubscriberIdentity:(id)a3 identity:(id)a4 completion:(id)a5;
- (void)exit:(id)a3 groupChat:(id)a4 withOperationID:(id)a5 completion:(id)a6;
- (void)fetchBasebandTicket:(BOOL)a3 withCompletion:(id)a4;
- (void)fetchChatBotRenderInformation:(id)a3 forDestination:(id)a4 completion:(id)a5;
- (void)fetchPhonebook:(id)a3 completion:(id)a4;
- (void)fetchRemoteCapabilities:(id)a3 forDestination:(id)a4 withOptions:(id)a5 withOperationID:(id)a6 completion:(id)a7;
- (void)fetchRenderInformation:(id)a3 forChatBot:(id)a4 withOperationID:(id)a5 completion:(id)a6;
- (void)fetchSIMLockValue:(id)a3 completion:(id)a4;
- (void)forceRollAllTransportKeys:(id)a3;
- (void)generateAuthenticationInfoUsingSim:(id)a3 authParams:(id)a4 completion:(id)a5;
- (void)getActivationPolicyState:(id)a3;
- (void)getBasebandRadioFrequencyFrontEndScanData:(id)a3;
- (void)getCellularUsageWorkspaceInfo:(id)a3;
- (void)getEOSFirmwareUpdateInfo:(id)a3;
- (void)getEosStatus:(id)a3;
- (void)getLastKnownSimDeactivationInfoFor:(id)a3 completion:(id)a4;
- (void)getListOfPresentDedicatedBearers:(id)a3;
- (void)getMobileSubscriberHomeCountryList:(id)a3 completion:(id)a4;
- (void)getPhoneNumberWithCompletion:(id)a3 completion:(id)a4;
- (void)getPhoneServicesDeviceInfo:(id)a3;
- (void)getPhoneServicesDeviceList:(id)a3;
- (void)getPhonebookEntryCountWithCompletion:(id)a3 completion:(id)a4;
- (void)getPhonebookEntryWithCompletion:(id)a3 atIndex:(int)a4 completion:(id)a5;
- (void)getPrivateNetworkCapabilitiesForContext:(id)a3 completion:(id)a4;
- (void)getPrivateNetworkSimInfoForContext:(id)a3 completion:(id)a4;
- (void)getProvisioningServerURL:(id)a3 completion:(id)a4;
- (void)getQoSLinkCharacteristics:(id)a3;
- (void)getRemainingPINAttemptCount:(id)a3 completion:(id)a4;
- (void)getRemainingPUKAttemptCount:(id)a3 completion:(id)a4;
- (void)getSIMStatus:(id)a3 completion:(id)a4;
- (void)getSIMToolkitListItemsForContext:(id)a3 completion:(id)a4;
- (void)getSIMToolkitMenuForContext:(id)a3 completion:(id)a4;
- (void)getSIMToolkitUSSDStringForContext:(id)a3 completion:(id)a4;
- (void)getSIMTrayStatus:(id)a3;
- (void)getSatelliteMsgCfgToUpdate:(id)a3;
- (void)getShortLabel:(id)a3 completion:(id)a4;
- (void)getSimHardwareInfo:(id)a3 completion:(id)a4;
- (void)getSimLabel:(id)a3 completion:(id)a4;
- (void)getSubscriptionUserFacingName:(id)a3 completion:(id)a4;
- (void)getSupports5G:(id)a3 completion:(id)a4;
- (void)getSupportsTARandomization:(id)a3 completion:(id)a4;
- (void)getSweetgumApps:(id)a3 completion:(id)a4;
- (void)getSweetgumCapabilities:(id)a3 completion:(id)a4;
- (void)getSweetgumDataPlanMetrics:(id)a3 completion:(id)a4;
- (void)getSweetgumPlans:(id)a3 completion:(id)a4;
- (void)getSweetgumUsage:(id)a3 completion:(id)a4;
- (void)getSweetgumUserConsentInfo:(id)a3 completion:(id)a4;
- (void)getSystemConfiguration:(id)a3 completion:(id)a4;
- (void)getTARandomizationSetting:(id)a3 completion:(id)a4;
- (void)getTransportKeysToUpdate:(id)a3;
- (void)getTypeAllocationCode:(id)a3 completion:(id)a4;
- (void)getUserAuthToken:(id)a3 completion:(id)a4;
- (void)getUserDefaultVoiceSubscriptionContext:(id)a3;
- (void)hasDedicatedBearerSupport:(id)a3;
- (void)installPrivateNetworkProfile:(id)a3 completion:(id)a4;
- (void)interfaceCostExpensive:(id)a3 completion:(id)a4;
- (void)isAnySimReadyWithCompletion:(id)a3;
- (void)isDedicatedBearerPresent:(id)a3 completion:(id)a4;
- (void)isEmbeddedSIMOnlyConfig:(id)a3;
- (void)isFactoryDebugEnabled:(id)a3;
- (void)isHighDataModeSupported:(id)a3 completion:(id)a4;
- (void)isPrivateNetworkContext:(id)a3 completion:(id)a4;
- (void)isPrivateNetworkEvaluationNeeded:(id)a3;
- (void)isPrivateNetworkPreferredOverWifi:(id)a3 completion:(id)a4;
- (void)isPrivateNetworkSIM:(id)a3 completion:(id)a4;
- (void)isSimMatching:(id)a3 carrierDescriptors:(id)a4 completion:(id)a5;
- (void)isSmartDataModeSupportedWithCompletion:(id)a3;
- (void)lowDataMode:(id)a3 completion:(id)a4;
- (void)overriddenInterfaceCostInexpensiveWithCompletion:(id)a3;
- (void)privacyProxy:(id)a3 completion:(id)a4;
- (void)promptForSIMUnlock:(id)a3 completion:(id)a4;
- (void)purchaseSweetgumPlan:(id)a3 completion:(id)a4;
- (void)readCachedCapabilities:(id)a3 forDestination:(id)a4 completion:(id)a5;
- (void)readCachedChatBotRenderInformation:(id)a3 forChatBot:(id)a4 completion:(id)a5;
- (void)refreshCellMonitor:(id)a3 completion:(id)a4;
- (void)refreshSweetgumAll:(id)a3 completion:(id)a4;
- (void)refreshSweetgumApps:(id)a3 completion:(id)a4;
- (void)refreshSweetgumPlans:(id)a3 completion:(id)a4;
- (void)refreshSweetgumUsage:(id)a3 completion:(id)a4;
- (void)refreshUserAuthToken:(id)a3 completion:(id)a4;
- (void)reliableNetworkFallback:(id)a3 completion:(id)a4;
- (void)removeAllDedicatedBearers:(id)a3;
- (void)removeDedicatedBearer:(id)a3 completion:(id)a4;
- (void)removeGeofenceProfile:(id)a3;
- (void)removeParticipants:(id)a3 fromGroupChat:(id)a4 withParticipantsToRemove:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 completion:(id)a8;
- (void)removePrivateNetworkProfile:(id)a3 completion:(id)a4;
- (void)reportChatbotSpam:(id)a3 forChatbot:(id)a4 withSpamReportInfo:(id)a5 andOperationID:(id)a6 completion:(id)a7;
- (void)reportLazuliSpamWithContext:(id)a3 destination:(id)a4 spamReportInfo:(id)a5 operationID:(id)a6 completion:(id)a7;
- (void)reprovisionSatelliteMsg:(BOOL)a3 completion:(id)a4;
- (void)requestQoSLinkCharacteristics:(id)a3;
- (void)retrieveAllIncomingMessageIDs:(id)a3 completion:(id)a4;
- (void)retrieveMessage:(id)a3 withMessageID:(id)a4 completion:(id)a5;
- (void)revokeMessage:(id)a3 withRevokeData:(id)a4 withMessageID:(id)a5 completion:(id)a6;
- (void)savePhonebookEntry:(id)a3 atIndex:(int)a4 withContactName:(id)a5 contactNumber:(id)a6 completion:(id)a7;
- (void)saveSIMLockValue:(id)a3 enabled:(BOOL)a4 pin:(id)a5 completion:(id)a6;
- (void)selectPhonebook:(id)a3 forPhonebookName:(int)a4 withPassword:(id)a5 completion:(id)a6;
- (void)selectSIMToolkitListItemForContext:(id)a3 session:(id)a4 response:(id)a5 index:(id)a6 completion:(id)a7;
- (void)selectSIMToolkitMenuItemForContext:(id)a3 index:(id)a4 completion:(id)a5;
- (void)sendComposingIndicator:(id)a3 to:(id)a4 withMessageID:(id)a5 withIndication:(id)a6 withSecurity:(id)a7 withError:(id *)a8;
- (void)sendDeviceAction:(id)a3 to:(id)a4 withMessageID:(id)a5 withAction:(id)a6 completion:(id)a7;
- (void)sendDeviceSettings:(id)a3 to:(id)a4 withMessageID:(id)a5 withSetting:(id)a6 completion:(id)a7;
- (void)sendDispositionNotificationMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withDisposition:(int64_t)a6 forMessageID:(id)a7 withSecurity:(id)a8 completion:(id)a9;
- (void)sendFileTransferMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withFileInformation:(id)a6 withSecurity:(id)a7 completion:(id)a8;
- (void)sendFileTransferMessage:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withFileInformation:(id)a6 withSecurity:(id)a7 completion:(id)a8;
- (void)sendGeolocationMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withGeoPush:(id)a6 withSecurity:(id)a7 completion:(id)a8;
- (void)sendGeolocationMessage:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withGeoPush:(id)a6 withSecurity:(id)a7 completion:(id)a8;
- (void)sendGroupComposingIndicator:(id)a3 toGroup:(id)a4 withMessageID:(id)a5 withIndication:(id)a6 completion:(id)a7;
- (void)sendGroupComposingIndicator:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withIndication:(id)a6 withSecurity:(id)a7 completion:(id)a8;
- (void)sendGroupDispositionNotificationMessage:(id)a3 toGroup:(id)a4 to:(id)a5 withMessageID:(id)a6 withDisposition:(int64_t)a7 forMessageID:(id)a8 withSecurity:(id)a9 completion:(id)a10;
- (void)sendOneToManyFileTransferMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withDescriptor:(id)a6 completion:(id)a7;
- (void)sendOneToManyGeolocationMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withGeoPush:(id)a6 completion:(id)a7;
- (void)sendOneToManyTextMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withMessage:(id)a6 completion:(id)a7;
- (void)sendResponseForSuggestedAction:(id)a3 to:(id)a4 withMessageID:(id)a5 response:(id)a6 completion:(id)a7;
- (void)sendResponseForSuggestedReply:(id)a3 to:(id)a4 withMessageID:(id)a5 response:(id)a6 completion:(id)a7;
- (void)sendSIMToolkitBooleanResponseForContext:(id)a3 session:(id)a4 response:(id)a5 yesNo:(BOOL)a6 completion:(id)a7;
- (void)sendSIMToolkitDisplayReadyForContext:(id)a3 completion:(id)a4;
- (void)sendSIMToolkitResponseForContext:(id)a3 session:(id)a4 response:(id)a5 completion:(id)a6;
- (void)sendSIMToolkitStringResponseForContext:(id)a3 session:(id)a4 response:(id)a5 string:(id)a6 completion:(id)a7;
- (void)sendSIMToolkitUSSDResponseForContext:(id)a3 response:(id)a4 completion:(id)a5;
- (void)sendSIMToolkitUserActivityForContext:(id)a3 completion:(id)a4;
- (void)sendTextMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withMessage:(id)a6 withSecurity:(id)a7 completion:(id)a8;
- (void)sendTextMessage:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withMessage:(id)a6 withSecurity:(id)a7 completion:(id)a8;
- (void)setActiveUserDataSelection:(id)a3 completion:(id)a4;
- (void)setDefaultVoice:(id)a3 completion:(id)a4;
- (void)setEosStatus:(id)a3 assertionState:(id)a4 completion:(id)a5;
- (void)setInterfaceCost:(id)a3 expensive:(BOOL)a4 completion:(id)a5;
- (void)setLabel:(id)a3 label:(id)a4 completion:(id)a5;
- (void)setLowDataMode:(id)a3 enable:(BOOL)a4 completion:(id)a5;
- (void)setOverriddenInterfaceCostInexpensive:(BOOL)a3 completion:(id)a4;
- (void)setPrivacyProxy:(id)a3 enabled:(BOOL)a4 completion:(id)a5;
- (void)setProvisioningServerURL:(id)a3 url:(id)a4 completion:(id)a5;
- (void)setReliableNetworkFallback:(id)a3 enable:(BOOL)a4 completion:(id)a5;
- (void)setSatelliteMsgCfgUpdated:(id)a3 completion:(id)a4;
- (void)setSmartDataMode:(id)a3 enable:(BOOL)a4 completion:(id)a5;
- (void)setSweetgumUserConsent:(id)a3 userConsent:(BOOL)a4 completion:(id)a5;
- (void)setTARandomizationUserSetting:(id)a3 enabled:(BOOL)a4 completion:(id)a5;
- (void)setTransportKeysUpdated:(BOOL)a3 with:(id)a4 completion:(id)a5;
- (void)setUsageCollectionEnabled:(BOOL)a3 completion:(id)a4;
- (void)setUserEntered:(id)a3 monthlyBudget:(id)a4 completion:(id)a5;
- (void)setUserEntered:(id)a3 monthlyRoamingBudget:(id)a4 completion:(id)a5;
- (void)setUserEnteredBillingEnd:(id)a3 dayOfMonth:(id)a4 completion:(id)a5;
- (void)setVoLTEAudioCodec:(id)a3 codecInfo:(id)a4 completion:(id)a5;
- (void)shouldAllowSimLockFor:(id)a3 completion:(id)a4;
- (void)smartDataMode:(id)a3 completion:(id)a4;
- (void)supportsEmbeddedSIMWithCompletion:(id)a3;
- (void)supportsLimitedUseSIMsWithCompletion:(id)a3;
- (void)unlockPIN:(id)a3 pin:(id)a4 completion:(id)a5;
- (void)unlockPUK:(id)a3 puk:(id)a4 newPin:(id)a5 completion:(id)a6;
- (void)updateGeofenceProfile:(id)a3 completion:(id)a4;
- (void)updatePrivateNetworkProfile:(id)a3 setProfileAside:(BOOL)a4 completion:(id)a5;
- (void)usageCollectionEnabled:(id)a3;
- (void)userEnteredBillingEndDayOfMont:(id)a3 completion:(id)a4;
- (void)userEnteredMonthlyBudget:(id)a3 completion:(id)a4;
- (void)userEnteredMonthlyRoamingBudget:(id)a3 completion:(id)a4;
- (void)wifiCallingCTFollowUpComplete:(id)a3 withCompletion:(id)a4;
@end

@implementation CTXPCClientHandler

- (shared_ptr<const)registry
{
  cntrl = self->_registry.__cntrl_;
  *v2 = self->_registry.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (CTXPCDataProviderInterface)dataProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProviderDelegate);

  return WeakRetained;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (CTXPCClientHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (optional<BOOL>)restrictedPublicCarrierInfoKeys
{
  if ([(CTXPCClientHandler *)self hasEntitlement:3])
  {
    [(CTXPCClientHandler *)self getLogContext];
    v3 = v12;
    ctu::OsLogContext::~OsLogContext(v11);
    v4 = 1;
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
LABEL_5:
      v6 = 0;
      return (v6 | (v4 << 8));
    }

    *v11 = 0;
    v5 = "Allow all bundle info (Entitlement)";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v5, v11, 2u);
    goto LABEL_5;
  }

  v7 = [(CTXPCClientHandler *)self isLinkedOnOrAfterVersion:@"16.4"];
  if ((v7 & 0x100) != 0)
  {
    if ((v7 & 1) == 0)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v3 = v12;
      ctu::OsLogContext::~OsLogContext(v11);
      v4 = 1;
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      *v11 = 0;
      v5 = "Allow all bundle info (SDK version)";
      goto LABEL_4;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v9 = v12;
    ctu::OsLogContext::~OsLogContext(v11);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *v11 = 0;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Restricting carrier info", v11, 2u);
    }

    v6 = 1;
    v4 = 1;
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = v12;
    ctu::OsLogContext::~OsLogContext(v11);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Unknown (SDK version)", v11, 2u);
    }

    v6 = 0;
    v4 = 0;
  }

  return (v6 | (v4 << 8));
}

- (void)disableLazuli:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [v6 slotID];
        v9 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] disableLazuli: %s", buf, 0xCu);
      }

      *buf = 0uLL;
      sub_1006E5EC0(self, buf);
      v10 = *buf;
      if (*buf)
      {
        v11 = sub_100018A64([v6 slotID]);
        if ((*(*v10 + 40))(v10, v11))
        {
          v7[2](v7, 0);
          goto LABEL_19;
        }

        [(CTXPCClientHandler *)self getLogContext];
        v16 = v20;
        ctu::OsLogContext::~OsLogContext(&v18);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10177AB64();
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v15 = v20;
        ctu::OsLogContext::~OsLogContext(&v18);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10177AB98();
        }
      }

      v18 = 5;
      v19 = 1;
      v17 = sub_100A99330(&v18);
      (v7)[2](v7, v17);

LABEL_19:
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      goto LABEL_21;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v13 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v14 = sub_100A99330(buf);
    (v7)[2](v7, v14);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v12 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10177AC00();
    }
  }

LABEL_21:
}

- (void)disableBusinessMessaging:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [v6 slotID];
        v9 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] disableBusinessMessaging: %s", buf, 0xCu);
      }

      *buf = 0uLL;
      sub_1006E5EC0(self, buf);
      v10 = *buf;
      if (*buf)
      {
        v11 = sub_100018A64([v6 slotID]);
        if ((*(*v10 + 56))(v10, v11))
        {
          v7[2](v7, 0);
          goto LABEL_19;
        }

        [(CTXPCClientHandler *)self getLogContext];
        v16 = v20;
        ctu::OsLogContext::~OsLogContext(&v18);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10177AC34();
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v15 = v20;
        ctu::OsLogContext::~OsLogContext(&v18);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10177AC68();
        }
      }

      v18 = 5;
      v19 = 1;
      v17 = sub_100A99330(&v18);
      (v7)[2](v7, v17);

LABEL_19:
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      goto LABEL_21;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v13 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v14 = sub_100A99330(buf);
    (v7)[2](v7, v14);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v12 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10177AC9C();
    }
  }

LABEL_21:
}

- (void)enableLazuli:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [v6 slotID];
        v9 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] enableLazuli: %s", buf, 0xCu);
      }

      *buf = 0uLL;
      sub_1006E5EC0(self, buf);
      v10 = *buf;
      if (*buf)
      {
        v11 = sub_100018A64([v6 slotID]);
        if ((*(*v10 + 32))(v10, v11))
        {
          v7[2](v7, 0);
          goto LABEL_19;
        }

        [(CTXPCClientHandler *)self getLogContext];
        v16 = v20;
        ctu::OsLogContext::~OsLogContext(&v18);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10177ACD0();
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v15 = v20;
        ctu::OsLogContext::~OsLogContext(&v18);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10177AD04();
        }
      }

      v18 = 5;
      v19 = 1;
      v17 = sub_100A99330(&v18);
      (v7)[2](v7, v17);

LABEL_19:
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      goto LABEL_21;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v13 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v14 = sub_100A99330(buf);
    (v7)[2](v7, v14);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v12 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10177AD38();
    }
  }

LABEL_21:
}

- (void)enableBusinessMessaging:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [v6 slotID];
        v9 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] enableBusinessMessaging: %s", buf, 0xCu);
      }

      *buf = 0uLL;
      sub_1006E5EC0(self, buf);
      v10 = *buf;
      if (*buf)
      {
        v11 = sub_100018A64([v6 slotID]);
        if ((*(*v10 + 48))(v10, v11))
        {
          v7[2](v7, 0);
          goto LABEL_19;
        }

        [(CTXPCClientHandler *)self getLogContext];
        v16 = v20;
        ctu::OsLogContext::~OsLogContext(&v18);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10177AD6C();
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v15 = v20;
        ctu::OsLogContext::~OsLogContext(&v18);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10177ADA0();
        }
      }

      v18 = 5;
      v19 = 1;
      v17 = sub_100A99330(&v18);
      (v7)[2](v7, v17);

LABEL_19:
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      goto LABEL_21;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v13 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v14 = sub_100A99330(buf);
    (v7)[2](v7, v14);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v12 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10177ADD4();
    }
  }

LABEL_21:
}

- (void)fetchChatBotRenderInformation:(id)a3 forDestination:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v9)
    {
      v11 = [v9 uri];

      if (v8)
      {
        if (v11)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v12 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            [v8 slotID];
            v13 = CTSubscriptionSlotAsString();
            v14 = [v9 uri];
            *buf = 136315395;
            *&buf[4] = v13;
            *&buf[12] = 2113;
            *&buf[14] = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] fetchChatBotRenderInformation: [slot: %s, destination: %{private}@]", buf, 0x16u);
          }

          v15 = sub_100018A64([v8 slotID]);
          v29 = 0;
          v30 = 0;
          sub_1006E5E0C(self, &v29);
          if (!v29)
          {
            [(CTXPCClientHandler *)self getLogContext];
            v20 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_10177AD04();
            }

            *buf = 5;
            buf[4] = 1;
            v21 = sub_100A99330(buf);
            v10[2](v10, v21);

            goto LABEL_34;
          }

          v27[0] = 0;
          v27[1] = 0;
          v28 = 0;
          sub_100A972E8(v27);
          v26 = 0;
          v16 = v29;
          sub_1006E72AC(v9, buf);
          if (SHIBYTE(v28) < 0)
          {
            sub_100005F2C(__p, v27[0], v27[1]);
          }

          else
          {
            *__p = *v27;
            v25 = v28;
          }

          v22 = (*(*v16 + 96))(v16, v15, buf, __p);
          LODWORD(v26) = v22;
          BYTE4(v26) = BYTE4(v22);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(__p[0]);
          }

          if (v37 < 0)
          {
            operator delete(v36);
          }

          if (v35[24] == 1)
          {
            __p[0] = v35;
            sub_1000087B4(__p);
          }

          if (v34 < 0)
          {
            operator delete(v33);
          }

          if (v32 < 0)
          {
            operator delete(*buf);
            if ((v22 & 0x100000000) == 0)
            {
              goto LABEL_29;
            }
          }

          else if ((v22 & 0x100000000) == 0)
          {
LABEL_29:
            v10[2](v10, 0);
            goto LABEL_32;
          }

          v23 = sub_100A99330(&v26);
          v10[2](v10, v23);

LABEL_32:
          if (SHIBYTE(v28) < 0)
          {
            operator delete(v27[0]);
          }

LABEL_34:
          if (v30)
          {
            sub_100004A34(v30);
          }

          goto LABEL_36;
        }
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v17 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v18 = sub_100A99330(buf);
    v10[2](v10, v18);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v19 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Invalid completion block while fetching chatbot render information", buf, 2u);
    }
  }

LABEL_36:
}

- (void)readCachedChatBotRenderInformation:(id)a3 forChatBot:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8 && v9 && ([v9 uri], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      [(CTXPCClientHandler *)self getLogContext];
      v12 = *&v36[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [v8 slotID];
        v13 = CTSubscriptionSlotAsString();
        v14 = [v9 uri];
        *buf = 136315395;
        *v36 = v13;
        *&v36[8] = 2113;
        *&v36[10] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] readCachedChatBotRenderInformation [slot: %s, destination: %{private}@]", buf, 0x16u);
      }

      v15 = sub_100018A64([v8 slotID]);
      v32 = 0;
      v33 = 0;
      sub_1006E5FC4(self, &v32);
      v16 = v32;
      if (v32)
      {
        bzero(buf, 0x2C0uLL);
        memset(v30, 0, sizeof(v30));
        v31 = 1;
        sub_1006E72AC(v9, v23);
        (*(*v16 + 288))(buf, v16, v30, v15, v23);
        if (v29 < 0)
        {
          operator delete(__p);
        }

        if (v27[24] == 1)
        {
          v34 = v27;
          sub_1000087B4(&v34);
        }

        if (v26 < 0)
        {
          operator delete(v25);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }

        TMClientInfo::~TMClientInfo(v30);
        v17 = [[CTLazuliChatBotRenderInformationData alloc] initWithReflection:buf];
        v10[2](v10, v17, 0);

        if (v45 == 1)
        {
          if (v44 == 1 && v43 < 0)
          {
            operator delete(v42);
          }

          if (v41 < 0)
          {
            operator delete(v40);
          }

          if (v39 < 0)
          {
            operator delete(v38);
          }

          if (v37[24] == 1)
          {
            v23[0] = v37;
            sub_100191E28(v23);
          }

          sub_1006FA044(buf);
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v21 = *&v36[4];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10177AE08();
        }

        *buf = 5;
        v36[0] = 1;
        v22 = sub_100A99330(buf);
        (v10)[2](v10, 0, v22);
      }

      if (v33)
      {
        sub_100004A34(v33);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v18 = *&v36[4];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      v36[0] = 1;
      v19 = sub_100A99330(buf);
      (v10)[2](v10, 0, v19);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v20 = *&v36[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Invalid completion block while fetching chatbot render information from cache", buf, 2u);
    }
  }
}

- (void)fetchRenderInformation:(id)a3 forChatBot:(id)a4 withOperationID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if (v10 && v11)
    {
      v14 = [v11 uri];
      v15 = v14;
      if (v12 && v14)
      {
        v16 = [v12 uuid];

        if (v16)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v17 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            [v10 slotID];
            v18 = CTSubscriptionSlotAsString();
            v19 = [v11 uri];
            v20 = [v12 uuid];
            *buf = 136315651;
            *&buf[4] = v18;
            *&buf[12] = 2113;
            *&buf[14] = v19;
            v40 = 2113;
            v41 = v20;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] fetchRenderInformation [slot: %s, destination: %{private}@, operationID: %{private}@]", buf, 0x20u);
          }

          v21 = sub_100018A64([v10 slotID]);
          v37 = 0;
          v38 = 0;
          sub_1006E5FC4(self, &v37);
          v22 = v37;
          if (v37)
          {
            v36 = 0;
            memset(v34, 0, sizeof(v34));
            v35 = 1;
            sub_1006E72AC(v11, buf);
            v23 = [v12 uuid];
            v24 = v23;
            sub_10000501C(__p, [v23 UTF8String]);
            v25 = (*(*v22 + 280))(v22, v34, v21, buf, __p);
            LODWORD(v36) = v25;
            BYTE4(v36) = BYTE4(v25);
            if (v33 < 0)
            {
              operator delete(__p[0]);
            }

            if (v45 < 0)
            {
              operator delete(v44);
            }

            if (v43[24] == 1)
            {
              __p[0] = v43;
              sub_1000087B4(__p);
            }

            if (v42 < 0)
            {
              operator delete(v41);
            }

            if (SHIBYTE(v40) < 0)
            {
              operator delete(*buf);
            }

            TMClientInfo::~TMClientInfo(v34);
            if ((v25 & 0x100000000) != 0)
            {
              v31 = sub_100A99330(&v36);
              v13[2](v13, v31);
            }

            else
            {
              v13[2](v13, 0);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v29 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_10177AE3C();
            }

            *buf = 5;
            buf[4] = 1;
            v30 = sub_100A99330(buf);
            v13[2](v13, v30);
          }

          if (v38)
          {
            sub_100004A34(v38);
          }

          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v27 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v28 = sub_100A99330(buf);
    v13[2](v13, v28);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v26 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Invalid completion block while fetching chatbot render information", buf, 2u);
    }
  }

LABEL_28:
}

- (void)getSystemConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v8 = *(v21 + 4);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [v6 slotID];
        v9 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        v21[0] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] getSystemConfiguration: [slot %s]", buf, 0xCu);
      }

      v17 = 0;
      v18 = 0;
      sub_1006E5EC0(self, &v17);
      v10 = v17;
      if (v17)
      {
        v11 = sub_100018A64([v6 slotID]);
        bzero(buf, 0x208uLL);
        (*(*v10 + 64))(buf, v10, v11);
        v12 = [[CTLazuliSystemConfiguration alloc] initWithReflection:buf];
        v7[2](v7, v12, 0);

        if (v45 < 0)
        {
          operator delete(__p);
        }

        if (v43[24] == 1)
        {
          v19 = v43;
          sub_1000087B4(&v19);
          if (v42 < 0)
          {
            operator delete(v41);
          }
        }

        if (v40 == 1)
        {
          if (v39 == 1 && v38 < 0)
          {
            operator delete(v37);
          }

          if (v36 == 1 && v35 < 0)
          {
            operator delete(v34);
          }

          if (v33 == 1 && v32 < 0)
          {
            operator delete(v31);
          }

          if (v30 == 1 && v29 < 0)
          {
            operator delete(v28);
          }

          if (v27 == 1 && v26 < 0)
          {
            operator delete(v25);
          }
        }

        if (v24 == 1 && v23 == 1 && v22 < 0)
        {
          operator delete(*(&v21[6] + 4));
        }
      }

      else
      {
        v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        (v7)[2](v7, 0, v16);
      }

      if (v18)
      {
        sub_100004A34(v18);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v14 = *(v21 + 4);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      LOBYTE(v21[0]) = 1;
      v15 = sub_100A99330(buf);
      (v7)[2](v7, 0, v15);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v13 = *(v21 + 4);
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Invalid completion block while getting system configuration information", buf, 2u);
    }
  }
}

- (void)retrieveMessage:(id)a3 withMessageID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8 && v9 && ([v9 uuid], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      [(CTXPCClientHandler *)self getLogContext];
      v12 = *(v34 + 4);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v9 uuid];
        *buf = 138543362;
        v34[0] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] retrieveMessage [identifier: %{public}@]", buf, 0xCu);
      }

      v14 = sub_100018A64([v8 slotID]);
      v31 = 0;
      v32 = 0;
      sub_1006E5FC4(self, &v31);
      v15 = v31;
      if (v31)
      {
        bzero(buf, 0x468uLL);
        memset(v29, 0, sizeof(v29));
        v30 = 1;
        sub_1006E8724(v9, v24);
        (*(*v15 + 168))(buf, v15, v29, v14, v24);
        if (v28 == 1 && v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        TMClientInfo::~TMClientInfo(v29);
        if (v47)
        {
          v16 = [CTLazuliMessageEnvelope alloc];
          if ((v47 & 1) == 0)
          {
            sub_1000D1644();
          }

          v17 = [v16 initWithReflection:buf];
          v10[2](v10, v17, 0);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = v24[1];
          ctu::OsLogContext::~OsLogContext(v24);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_10177AE70();
          }

          v10[2](v10, 0, 0);
        }

        if (v47 == 1)
        {
          sub_1006A9CB8(&v46);
          if (v45 == 1 && v44 < 0)
          {
            operator delete(v43);
          }

          if (v42 < 0)
          {
            operator delete(v41);
          }

          if (v40 < 0)
          {
            operator delete(v39);
          }

          if (v38[24] == 1)
          {
            v24[0] = v38;
            sub_1000087B4(v24);
          }

          if (v37 < 0)
          {
            operator delete(v36);
          }

          if (v35 < 0)
          {
            operator delete(*(v34 + 4));
          }
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v21 = *(v34 + 4);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_10177AEA4();
        }

        *buf = 5;
        LOBYTE(v34[0]) = 1;
        v22 = sub_100A99330(buf);
        (v10)[2](v10, 0, v22);
      }

      if (v32)
      {
        sub_100004A34(v32);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v18 = *(v34 + 4);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      LOBYTE(v34[0]) = 1;
      v19 = sub_100A99330(buf);
      (v10)[2](v10, 0, v19);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v20 = *(v34 + 4);
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Invalid completion block while retrieving message", buf, 2u);
    }
  }
}

- (void)retrieveAllIncomingMessageIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [v6 slotID];
        v9 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] retrieveAllIncomingMessageIDs: [slot: %s]", buf, 0xCu);
      }

      sub_100018A64([v6 slotID]);
      v17 = 0;
      v18 = 0;
      sub_1006E5E0C(self, &v17);
      if (v17)
      {
        *buf = 0u;
        v21 = 0u;
        (*(*v17 + 200))(buf);
        if (BYTE8(v21))
        {
          v10 = [CTLazuliMessageIDList alloc];
          if ((BYTE8(v21) & 1) == 0)
          {
            sub_1000D1644();
          }

          v11 = [v10 initWithReflection:buf];
          v7[2](v7, v11, 0);
        }

        else
        {
          v7[2](v7, 0, 0);
        }

        if (BYTE8(v21) == 1)
        {
          v19 = buf;
          sub_1006ACCB8(&v19);
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v15 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10177AED8();
        }

        *buf = 5;
        buf[4] = 1;
        v16 = sub_100A99330(buf);
        (v7)[2](v7, 0, v16);
      }

      if (v18)
      {
        sub_100004A34(v18);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v13 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v14 = sub_100A99330(buf);
      (v7)[2](v7, 0, v14);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v12 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10177AF0C();
    }
  }
}

- (void)acknowledgeIncomingMessages:(id)a3 withMessageIDList:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8 && v9)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v11 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        [v8 slotID];
        v12 = CTSubscriptionSlotAsString();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] acknowledgeIncomingMessages: [slot: %s]", &buf, 0xCu);
      }

      v13 = sub_100018A64([v8 slotID]);
      v30 = 0;
      v31 = 0;
      sub_1006E5E0C(self, &v30);
      if (v30)
      {
        memset(v29, 0, sizeof(v29));
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v14 = [v9 list];
        v15 = [v14 countByEnumeratingWithState:&v25 objects:v37 count:16];
        if (v15)
        {
          v16 = *v26;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v14);
              }

              sub_1006E8724(*(*(&v25 + 1) + 8 * i), &buf);
              sub_1006E9190(v29, &buf);
              if (v36 == 1 && v35 < 0)
              {
                operator delete(__p);
              }

              if (v33 < 0)
              {
                operator delete(buf);
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v25 objects:v37 count:16];
          }

          while (v15);
        }

        *&buf = 0;
        v18 = (*(*v30 + 208))(v30, v13, v29);
        LODWORD(buf) = v18;
        BYTE4(buf) = BYTE4(v18);
        if ((v18 & 0x100000000) != 0)
        {
          v24 = sub_100A99330(&buf);
          v10[2](v10, v24);
        }

        else
        {
          v10[2](v10, 0);
        }

        *&buf = v29;
        sub_1006ACCB8(&buf);
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v22 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10177AF40();
        }

        LODWORD(buf) = 5;
        BYTE4(buf) = 1;
        v23 = sub_100A99330(&buf);
        v10[2](v10, v23);
      }

      if (v31)
      {
        sub_100004A34(v31);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v20 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      LODWORD(buf) = 4;
      BYTE4(buf) = 1;
      v21 = sub_100A99330(&buf);
      v10[2](v10, v21);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v19 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10177AF74();
    }
  }
}

- (void)discoverCapabilities:(id)a3 forDestination:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
        v11 = [v9 uri];

        if (v11)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v12 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            [v8 slotID];
            v13 = CTSubscriptionSlotAsString();
            v14 = [v9 uri];
            *buf = 136315395;
            *&buf[4] = v13;
            *&buf[12] = 2113;
            *&buf[14] = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] discoverCapabilities [slot: %s, destination: %{private}@]", buf, 0x16u);
          }

          v15 = sub_100018A64([v8 slotID]);
          v29 = 0;
          v30 = 0;
          sub_1006E5E0C(self, &v29);
          if (!v29)
          {
            [(CTXPCClientHandler *)self getLogContext];
            v20 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_10177AFA8();
            }

            *buf = 5;
            buf[4] = 1;
            v21 = sub_100A99330(buf);
            v10[2](v10, v21);

            goto LABEL_34;
          }

          v27[0] = 0;
          v27[1] = 0;
          v28 = 0;
          sub_100A972E8(v27);
          v26 = 0;
          v16 = v29;
          sub_1006E72AC(v9, buf);
          if (SHIBYTE(v28) < 0)
          {
            sub_100005F2C(__p, v27[0], v27[1]);
          }

          else
          {
            *__p = *v27;
            v25 = v28;
          }

          v22 = (*(*v16 + 128))(v16, v15, buf, __p);
          LODWORD(v26) = v22;
          BYTE4(v26) = BYTE4(v22);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(__p[0]);
          }

          if (v37 < 0)
          {
            operator delete(v36);
          }

          if (v35[24] == 1)
          {
            __p[0] = v35;
            sub_1000087B4(__p);
          }

          if (v34 < 0)
          {
            operator delete(v33);
          }

          if (v32 < 0)
          {
            operator delete(*buf);
            if ((v22 & 0x100000000) == 0)
            {
              goto LABEL_29;
            }
          }

          else if ((v22 & 0x100000000) == 0)
          {
LABEL_29:
            v10[2](v10, 0);
            goto LABEL_32;
          }

          v23 = sub_100A99330(&v26);
          v10[2](v10, v23);

LABEL_32:
          if (SHIBYTE(v28) < 0)
          {
            operator delete(v27[0]);
          }

LABEL_34:
          if (v30)
          {
            sub_100004A34(v30);
          }

          goto LABEL_36;
        }
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v17 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v18 = sub_100A99330(buf);
    v10[2](v10, v18);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v19 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10177AFDC();
    }
  }

LABEL_36:
}

- (void)fetchRemoteCapabilities:(id)a3 forDestination:(id)a4 withOptions:(id)a5 withOperationID:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v16)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v27 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10177B078();
    }

    goto LABEL_19;
  }

  if (!v12 || !v13)
  {
    goto LABEL_16;
  }

  v17 = [v13 uri];
  v18 = v17;
  if (!v15 || !v14 || !v17)
  {

    goto LABEL_16;
  }

  v19 = [v15 uuid];

  if (!v19)
  {
LABEL_16:
    [(CTXPCClientHandler *)self getLogContext];
    v28 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v29 = sub_100A99330(buf);
    v16[2](v16, v29);

    goto LABEL_19;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v20 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    [v12 slotID];
    v39 = CTSubscriptionSlotAsString();
    v21 = [v13 uri];
    v22 = [v14 type];
    v23 = [v15 uuid];
    *buf = 136315907;
    *&buf[4] = v39;
    *&buf[12] = 2113;
    *&buf[14] = v21;
    v50 = 2048;
    v51 = v22;
    v52 = 2113;
    v53 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] fetchRemoteCapabilities [slot: %s, destination: %{private}@, options: %ld, operationID: %{private}@]", buf, 0x2Au);
  }

  v24 = sub_100018A64([v12 slotID]);
  v25 = [v14 type];
  if (!v25)
  {
    v26 = 0;
    goto LABEL_21;
  }

  if (v25 == 2)
  {
    v26 = 2;
LABEL_21:
    v46 = 0;
    v47 = 0;
    sub_1006E5FC4(self, &v46);
    v30 = v46;
    if (v46)
    {
      v45 = v26;
      v43[0] = 0;
      v43[1] = 0;
      v44 = 0;
      v31 = [v15 uuid];
      v32 = v31;
      sub_10000501C(v43, [v31 UTF8String]);

      v42 = 0;
      memset(v40, 0, sizeof(v40));
      v41 = 1;
      sub_1006E72AC(v13, buf);
      v33 = (*(*v30 + 224))(v30, v40, v24, buf, v43, &v45);
      LODWORD(v42) = v33;
      BYTE4(v42) = BYTE4(v33);
      if (v57 < 0)
      {
        operator delete(__p);
      }

      if (v55[24] == 1)
      {
        v48 = v55;
        sub_1000087B4(&v48);
      }

      if (v54 < 0)
      {
        operator delete(v51);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(*buf);
      }

      TMClientInfo::~TMClientInfo(v40);
      if ((v33 & 0x100000000) != 0)
      {
        v38 = sub_100A99330(&v42);
        v16[2](v16, v38);
      }

      else
      {
        v16[2](v16, 0);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(v43[0]);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v36 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10177B010();
      }

      *buf = 5;
      buf[4] = 1;
      v37 = sub_100A99330(buf);
      v16[2](v16, v37);
    }

    if (v47)
    {
      sub_100004A34(v47);
    }

    goto LABEL_19;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v34 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    sub_10177B044();
  }

  *buf = -1;
  buf[4] = 1;
  v35 = sub_100A99330(buf);
  v16[2](v16, v35);

LABEL_19:
}

- (void)discoverRemoteCapabilities:(id)a3 forDestination:(id)a4 withOperationID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if (v10 && v11)
    {
      v14 = [v11 uri];
      v15 = v14;
      if (v12 && v14)
      {
        v16 = [v12 uuid];

        if (v16)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v17 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            [v10 slotID];
            v18 = CTSubscriptionSlotAsString();
            v19 = [v11 uri];
            v20 = [v12 uuid];
            *buf = 136315651;
            *&buf[4] = v18;
            *&buf[12] = 2113;
            *&buf[14] = v19;
            v39 = 2113;
            v40 = v20;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] discoverRemoteCapabilities [slot: %s, destination: %{private}@, operationID: %{private}@]", buf, 0x20u);
          }

          v21 = sub_100018A64([v10 slotID]);
          v35 = 0;
          v36 = 0;
          sub_1006E5E0C(self, &v35);
          if (v35)
          {
            v33[0] = 0;
            v33[1] = 0;
            v34 = 0;
            v22 = [v12 uuid];
            v23 = v22;
            sub_10000501C(v33, [v22 UTF8String]);

            v32 = 0;
            v24 = v35;
            sub_1006E72AC(v11, buf);
            v25 = (*(*v24 + 128))(v24, v21, buf, v33);
            LODWORD(v32) = v25;
            BYTE4(v32) = BYTE4(v25);
            if (v44 < 0)
            {
              operator delete(__p);
            }

            if (v42[24] == 1)
            {
              v37 = v42;
              sub_1000087B4(&v37);
            }

            if (v41 < 0)
            {
              operator delete(v40);
            }

            if (SHIBYTE(v39) < 0)
            {
              operator delete(*buf);
            }

            if ((v25 & 0x100000000) != 0)
            {
              v31 = sub_100A99330(&v32);
              v13[2](v13, v31);
            }

            else
            {
              v13[2](v13, 0);
            }

            if (SHIBYTE(v34) < 0)
            {
              operator delete(v33[0]);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v29 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_10177AFA8();
            }

            *buf = 5;
            buf[4] = 1;
            v30 = sub_100A99330(buf);
            v13[2](v13, v30);
          }

          if (v36)
          {
            sub_100004A34(v36);
          }

          goto LABEL_26;
        }
      }

      else
      {
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v27 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v28 = sub_100A99330(buf);
    v13[2](v13, v28);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v26 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10177AFDC();
    }
  }

LABEL_26:
}

- (void)readCachedCapabilities:(id)a3 forDestination:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8 && v9 && ([v9 uri], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      [(CTXPCClientHandler *)self getLogContext];
      v12 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [v8 slotID];
        v13 = CTSubscriptionSlotAsString();
        v14 = [v9 uri];
        *buf = 136315395;
        *&buf[4] = v13;
        *&buf[12] = 2113;
        *&buf[14] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] readCachedCapabilities [slot: %s, destination: %{private}@]", buf, 0x16u);
      }

      v15 = sub_100018A64([v8 slotID]);
      v32 = 0;
      v33 = 0;
      sub_1006E5E0C(self, &v32);
      v16 = v32;
      if (v32)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        v36 = 0u;
        memset(v37, 0, sizeof(v37));
        memset(buf, 0, sizeof(buf));
        sub_1006E72AC(v9, v25);
        (*(*v16 + 144))(buf, v16, v15, v25);
        if (v31 < 0)
        {
          operator delete(__p);
        }

        if (v29[24] == 1)
        {
          v34 = v29;
          sub_1000087B4(&v34);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        if (BYTE8(v48))
        {
          v17 = [CTLazuliCapabilitiesInformation alloc];
          if ((BYTE8(v48) & 1) == 0)
          {
            sub_1000D1644();
          }

          v18 = [v17 initWithReflection:buf];
          v10[2](v10, v18, 0);
        }

        else
        {
          v10[2](v10, 0, 0);
        }

        if (BYTE8(v48) == 1)
        {
          if (v48 == 1 && SHIBYTE(v47) < 0)
          {
            operator delete(*(&v46 + 1));
          }

          if (BYTE8(v44) == 1)
          {
            v25[0] = &v43;
            sub_1000087B4(v25);
          }

          if (v42 == 1 && SHIBYTE(v41) < 0)
          {
            operator delete(*(&v40 + 1));
          }

          if (SHIBYTE(v39) < 0)
          {
            operator delete(*(&v38 + 1));
          }

          if (v38 == 1)
          {
            v25[0] = &v37[8];
            sub_1000087B4(v25);
          }

          if (SHIBYTE(v36) < 0)
          {
            operator delete(*&buf[24]);
          }

          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v23 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10177AFA8();
        }

        *buf = 0;
        buf[4] = 1;
        v24 = sub_100A99330(buf);
        (v10)[2](v10, 0, v24);
      }

      if (v33)
      {
        sub_100004A34(v33);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v19 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v20 = sub_100A99330(buf);
      (v10)[2](v10, 0, v20);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v21 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10177B0AC();
    }

    *buf = 5;
    buf[4] = 1;
    v22 = sub_100A99330(buf);
    MEMORY[0x10](0, 0, v22);
  }
}

- (void)sendDispositionNotificationMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withDisposition:(int64_t)a6 forMessageID:(id)a7 withSecurity:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v42 = a8;
  v19 = a9;
  if (v19)
  {
    if (v15 && v16)
    {
      v20 = [v16 uri];
      v21 = v20;
      if (v17 && v20)
      {
        v22 = [v17 uuid];
        v23 = v22;
        if (v18 && v22)
        {
          v24 = [v18 uuid];

          if (v24)
          {
            [(CTXPCClientHandler *)self getLogContext];
            v25 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              [v15 slotID];
              v40 = CTSubscriptionSlotAsString();
              v26 = "true";
              if (!v42)
              {
                v26 = "false";
              }

              v41 = [v16 uri];
              v39 = [v17 uuid];
              v27 = [v18 uuid];
              *buf = 136316419;
              *&buf[4] = v40;
              *&buf[12] = 2080;
              *&buf[14] = v38;
              v68 = 2113;
              v69 = v41;
              v70 = 2114;
              v71 = v39;
              v72 = 2048;
              v73 = a6;
              v74 = 2114;
              v75 = v27;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendDispositionNotificationMessage [slot: %s, security: %s, to: %{private}@, identifier: %{public}@, type: %ld, forMessageID: %{public}@]", buf, 0x3Eu);
            }

            v28 = sub_100018A64([v15 slotID]);
            v65 = 0;
            v66 = 0;
            sub_1006E5FC4(self, &v65);
            v29 = v65;
            if (v65)
            {
              v64 = 0;
              if (a6 == 2)
              {
                v30 = 2;
              }

              else
              {
                v30 = -1;
              }

              v62 = 0u;
              v63 = 0u;
              if (!a6)
              {
                v30 = 0;
              }

              v60 = 0uLL;
              v61 = 0uLL;
              v58 = 0uLL;
              v59 = 0uLL;
              LODWORD(v58) = v30;
              sub_1006E8724(v18, &v58 + 8);
              v57 = 0;
              memset(v55, 0, sizeof(v55));
              v56 = 1;
              sub_1006E72AC(v16, v48);
              sub_1006E8724(v17, v43);
              buf[0] = v42 != 0;
              buf[8] = 0;
              v76 = 0;
              v31 = (*(*v29 + 72))(v29, v55, v28, v48, v43, &v58, buf);
              LODWORD(v57) = v31;
              BYTE4(v57) = BYTE4(v31);
              if (v76 == 1)
              {
                sub_1002AF7A0(&buf[16]);
              }

              if (v47 == 1 && v46 < 0)
              {
                operator delete(__p);
              }

              if (v44 < 0)
              {
                operator delete(v43[0]);
              }

              if (v54 < 0)
              {
                operator delete(v53);
              }

              if (v52[24] == 1)
              {
                *buf = v52;
                sub_1000087B4(buf);
              }

              if (v51 < 0)
              {
                operator delete(v50);
              }

              if (v49 < 0)
              {
                operator delete(v48[0]);
              }

              TMClientInfo::~TMClientInfo(v55);
              if ((v31 & 0x100000000) != 0)
              {
                v37 = sub_100A99330(&v57);
                v19[2](v19, v37);
              }

              else
              {
                v19[2](v19, 0);
              }

              if (v64 == 1 && SHIBYTE(v62) < 0)
              {
                operator delete(*(&v61 + 1));
              }

              if (SHIBYTE(v59) < 0)
              {
                operator delete(*(&v58 + 1));
              }
            }

            else
            {
              [(CTXPCClientHandler *)self getLogContext];
              v35 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                sub_10177B0E0();
              }

              *buf = 5;
              buf[4] = 1;
              v36 = sub_100A99330(buf);
              v19[2](v19, v36);
            }

            if (v66)
            {
              sub_100004A34(v66);
            }

            goto LABEL_43;
          }

          goto LABEL_40;
        }
      }
    }

LABEL_40:
    [(CTXPCClientHandler *)self getLogContext];
    v33 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v34 = sub_100A99330(buf);
    v19[2](v19, v34);

    goto LABEL_43;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v32 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_10177B114();
  }

LABEL_43:
}

- (void)sendFileTransferMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withFileInformation:(id)a6 withSecurity:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v19)
  {
    if (v14 && v15)
    {
      v20 = [v15 uri];
      v21 = v20;
      if (v16 && v20)
      {
        v22 = [v16 uuid];

        if (v17 && v22)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            [v14 slotID];
            v37 = CTSubscriptionSlotAsString();
            if (v18)
            {
              v24 = "true";
            }

            else
            {
              v24 = "false";
            }

            v38 = [v15 uri];
            v25 = [v16 uuid];
            *buf = 136315907;
            *&buf[4] = v37;
            *&buf[12] = 2080;
            *&buf[14] = v24;
            v85 = 2113;
            v86 = v38;
            LOWORD(v87[0]) = 2114;
            *(v87 + 2) = v25;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendFileTransferMessage [slot: %s, security: %s, to: %{private}@, identifier: %{public}@]", buf, 0x2Au);
          }

          v26 = sub_100018A64([v14 slotID]);
          v79 = 0;
          v78 = 0;
          sub_1006E5E0C(self, &v78);
          if (v78)
          {
            v77 = 0;
            v76 = 0;
            sub_1006E5FC4(self, &v76);
            v27 = v76;
            if (v76)
            {
              bzero(v55, 0x208uLL);
              sub_1006EB6AC(v17, v55);
              v54 = 0;
              memset(v52, 0, sizeof(v52));
              v53 = 1;
              sub_1006E72AC(v15, v45);
              sub_1006E8724(v16, v40);
              sub_1001907C0(buf, v55);
              sub_100190C40(v103, v74);
              sub_100190324(v104, v75);
              v105 = 0;
              v106 = 0;
              v39 = [v17 metaData];
              sub_1006EBDBC(v39, v107);
              LOBYTE(v80) = v18 != 0;
              v81 = 0;
              v83 = 0;
              v28 = (*(*v27 + 40))(v27, v52, v26, v45, v40, buf, &v80);
              LODWORD(v54) = v28;
              BYTE4(v54) = BYTE4(v28);
              if (v83 == 1)
              {
                sub_1002AF7A0(&v82);
              }

              if (v107[24] == 1)
              {
                v80 = v107;
                sub_100190608(&v80);
              }

              if (v106 == 1)
              {
                v80 = &v105;
                sub_10019029C(&v80);
              }

              if (v104[24] == 1)
              {
                v80 = v104;
                sub_100190608(&v80);
              }

              sub_100190D9C(v103);
              if (v102 == 1)
              {
                if (v101 == 1)
                {
                  if (__p)
                  {
                    v100 = __p;
                    operator delete(__p);
                  }

                  if (v98 == 1 && v96)
                  {
                    v97 = v96;
                    operator delete(v96);
                  }

                  if (v95 == 1 && v93)
                  {
                    v94 = v93;
                    operator delete(v93);
                  }

                  if (v91)
                  {
                    v92 = v91;
                    operator delete(v91);
                  }
                }

                if (v90 < 0)
                {
                  operator delete(v89);
                }

                if (v88 < 0)
                {
                  operator delete(v87[0]);
                }

                if (SHIBYTE(v86) < 0)
                {
                  operator delete(*&buf[8]);
                }
              }

              if (v44 == 1 && v43 < 0)
              {
                operator delete(v42);
              }

              if (v41 < 0)
              {
                operator delete(v40[0]);
              }

              if (v51 < 0)
              {
                operator delete(v50);
              }

              if (v49[24] == 1)
              {
                *buf = v49;
                sub_1000087B4(buf);
              }

              if (v48 < 0)
              {
                operator delete(v47);
              }

              if (v46 < 0)
              {
                operator delete(v45[0]);
              }

              TMClientInfo::~TMClientInfo(v52);
              if (BYTE4(v54) == 1)
              {
                v29 = sub_100A99330(&v54);
                v19[2](v19, v29);
              }

              else
              {
                v19[2](v19, 0);
              }

              if (v75[24] == 1)
              {
                *buf = v75;
                sub_100190608(buf);
              }

              sub_100190D9C(v74);
              if (v73 == 1)
              {
                if (v72 == 1)
                {
                  if (v70)
                  {
                    v71 = v70;
                    operator delete(v70);
                  }

                  if (v69 == 1 && v67)
                  {
                    v68 = v67;
                    operator delete(v67);
                  }

                  if (v66 == 1 && v64)
                  {
                    v65 = v64;
                    operator delete(v64);
                  }

                  if (v62)
                  {
                    v63 = v62;
                    operator delete(v62);
                  }
                }

                if (v61 < 0)
                {
                  operator delete(v60);
                }

                if (v59 < 0)
                {
                  operator delete(v58);
                }

                if (v57 < 0)
                {
                  operator delete(v56);
                }
              }
            }

            else
            {
              [(CTXPCClientHandler *)self getLogContext];
              v35 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                sub_10177B148();
              }

              *buf = 5;
              buf[4] = 1;
              v36 = sub_100A99330(buf);
              v19[2](v19, v36);
            }

            if (v77)
            {
              sub_100004A34(v77);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v33 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_10177B17C();
            }

            *buf = 5;
            buf[4] = 1;
            v34 = sub_100A99330(buf);
            v19[2](v19, v34);
          }

          if (v79)
          {
            sub_100004A34(v79);
          }

          goto LABEL_62;
        }
      }

      else
      {
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v31 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v32 = sub_100A99330(buf);
    v19[2](v19, v32);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v30 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10177B1B0();
    }
  }

LABEL_62:
}

- (void)sendTextMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withMessage:(id)a6 withSecurity:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v19)
  {
    if (v14 && v15)
    {
      v20 = [v15 uri];
      v21 = v20;
      if (v16 && v20)
      {
        v22 = [v16 uuid];
        v23 = v22;
        if (v17 && v22)
        {
          v24 = [v17 content];

          if (v24)
          {
            v25 = sub_100018A64([v14 slotID]);
            v68 = 0;
            v69 = 0;
            sub_1006E5E0C(self, &v68);
            if (v68)
            {
              v66 = 0;
              v67 = 0;
              sub_1006E5FC4(self, &v66);
              v26 = v66;
              if (v66)
              {
                v46 = v25;
                [(CTXPCClientHandler *)self getLogContext];
                v27 = *&buf[8];
                ctu::OsLogContext::~OsLogContext(buf);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  [v14 slotID];
                  v44 = CTSubscriptionSlotAsString();
                  v28 = "true";
                  if (!v18)
                  {
                    v28 = "false";
                  }

                  v43 = v28;
                  v45 = [v15 uri];
                  v29 = [v16 uuid];
                  v30 = [v17 content];
                  *buf = 136316419;
                  *&buf[4] = v44;
                  *&buf[12] = 2080;
                  *&buf[14] = v43;
                  v71 = 2113;
                  v72 = v45;
                  v73 = 2114;
                  v74 = v29;
                  v75 = 2160;
                  v76 = 1752392040;
                  v77 = 2117;
                  v78 = v30;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendTextMessage [slot: %s, security: %s, to: %{private}@, identifier: %{public}@, content: %{sensitive, mask.hash}@]", buf, 0x3Eu);
                }

                memset(v64, 0, sizeof(v64));
                v65 = 1;
                sub_1006E72AC(v15, v57);
                sub_1006E8724(v16, v52);
                v31 = [v17 content];
                v32 = v31;
                sub_10000501C(__p, [v31 UTF8String]);
                v49 = 0;
                v50 = 0;
                v33 = [v17 metaData];
                sub_1006EBDBC(v33, v51);
                buf[0] = v18 != 0;
                buf[8] = 0;
                v79 = 0;
                v34 = (*(*v26 + 24))(v26, v64, v46, v57, v52, __p, buf);
                if (v79 == 1)
                {
                  sub_1002AF7A0(&buf[16]);
                }

                if (v51[24] == 1)
                {
                  *buf = v51;
                  sub_100190608(buf);
                }

                if (v50 == 1)
                {
                  *buf = &v49;
                  sub_10019029C(buf);
                }

                if (v48 < 0)
                {
                  operator delete(__p[0]);
                }

                if (v56 == 1 && v55 < 0)
                {
                  operator delete(v54);
                }

                if (v53 < 0)
                {
                  operator delete(v52[0]);
                }

                if (v63 < 0)
                {
                  operator delete(v62);
                }

                if (v61[24] == 1)
                {
                  *buf = v61;
                  sub_1000087B4(buf);
                }

                if (v60 < 0)
                {
                  operator delete(v59);
                }

                if (v58 < 0)
                {
                  operator delete(v57[0]);
                }

                TMClientInfo::~TMClientInfo(v64);
                if ((v34 & 0x100000000) != 0)
                {
                  *buf = v34;
                  buf[4] = 1;
                  v42 = sub_100A99330(buf);
                  v19[2](v19, v42);
                }

                else
                {
                  v19[2](v19, 0);
                }
              }

              else
              {
                [(CTXPCClientHandler *)self getLogContext];
                v40 = *&buf[8];
                ctu::OsLogContext::~OsLogContext(buf);
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  sub_10177B1E4();
                }

                *buf = 5;
                buf[4] = 1;
                v41 = sub_100A99330(buf);
                v19[2](v19, v41);
              }

              if (v67)
              {
                sub_100004A34(v67);
              }
            }

            else
            {
              [(CTXPCClientHandler *)self getLogContext];
              v38 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                sub_10177B218();
              }

              *buf = 5;
              buf[4] = 1;
              v39 = sub_100A99330(buf);
              v19[2](v19, v39);
            }

            if (v69)
            {
              sub_100004A34(v69);
            }

            goto LABEL_45;
          }

          goto LABEL_42;
        }
      }
    }

LABEL_42:
    [(CTXPCClientHandler *)self getLogContext];
    v36 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v37 = sub_100A99330(buf);
    v19[2](v19, v37);

    goto LABEL_45;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v35 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_10177B24C();
  }

LABEL_45:
}

- (void)sendComposingIndicator:(id)a3 to:(id)a4 withMessageID:(id)a5 withIndication:(id)a6 withSecurity:(id)a7 withError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v70 = 0;
  v71 = 0;
  sub_1006E5FC4(self, &v70);
  v19 = v70;
  if (v70)
  {
    if (v14 && v15)
    {
      v20 = [v15 uri];
      v21 = v20;
      if (v16 && v20)
      {
        v22 = [v16 uuid];

        if (v17 && v22)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          log = v23;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            [v14 slotID];
            v49 = CTSubscriptionSlotAsString();
            v24 = "true";
            if (!v18)
            {
              v24 = "false";
            }

            v48 = v24;
            v52 = [v15 uri];
            v51 = [v16 uuid];
            v25 = [v17 refreshTime];
            if (v25)
            {
              v45 = [v17 refreshTime];
              v47 = [v45 longValue];
            }

            else
            {
              v47 = -1;
            }

            v46 = [v17 active];
            v50 = [v17 lastActive];
            if (v50)
            {
              v44 = [v17 lastActive];
              v29 = [v44 UTF8String];
            }

            else
            {
              v29 = "";
            }

            *buf = 136316675;
            *&buf[4] = v49;
            *&buf[12] = 2080;
            *&buf[14] = v48;
            *&buf[22] = 2113;
            *&buf[24] = v52;
            *&buf[32] = 2114;
            *&buf[34] = v51;
            *&buf[42] = 2048;
            *&buf[44] = v47;
            *&buf[52] = 1024;
            *&buf[54] = v46;
            *&buf[58] = 2080;
            *&buf[60] = v29;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendComposingIndicator [slot: %s, security: %s, to: %{private}@, identifier: %{public}@, ind.refreshTime: %ld, ind.active: %d, ind.lastActive: %s]", buf, 0x44u);
            if (v50)
            {
            }

            if (v25)
            {
            }
          }

          v54 = sub_100018A64([v14 slotID]);
          v79 = 0;
          memset(v78, 0, sizeof(v78));
          v77 = 0u;
          memset(buf, 0, sizeof(buf));
          v30 = [v17 refreshTime];
          v31 = v30 == 0;

          if (!v31)
          {
            v32 = [v17 refreshTime];
            v33 = [v32 longValue];
            if ((buf[8] & 1) == 0)
            {
              buf[8] = 1;
            }

            *buf = v33;
          }

          buf[16] = [v17 active];
          v34 = [v17 lastActive];
          v35 = v34 == 0;

          if (!v35)
          {
            v36 = [v17 lastActive];
            v37 = v36;
            v72 = [v36 UTF8String];
            sub_100184AD0(&buf[24], &v72);
          }

          v38 = [v17 contentType];
          v39 = v38 == 0;

          if (!v39)
          {
            v40 = [v17 contentType];
            v41 = v40;
            v72 = [v40 UTF8String];
            sub_100184AD0(&buf[56], &v72);
          }

          v69 = 0;
          memset(v67, 0, sizeof(v67));
          v68 = 1;
          sub_1006E72AC(v15, v60);
          sub_1006E8724(v16, v55);
          LOBYTE(v72) = v18 != 0;
          LOBYTE(v73) = 0;
          v75 = 0;
          v42 = (*(*v19 + 88))(v19, v67, v54, v60, v55, buf, &v72);
          LODWORD(v69) = v42;
          BYTE4(v69) = BYTE4(v42);
          if (v75 == 1)
          {
            sub_1002AF7A0(&v74);
          }

          if (v59 == 1 && v58 < 0)
          {
            operator delete(__p);
          }

          if (v56 < 0)
          {
            operator delete(v55[0]);
          }

          if (v66 < 0)
          {
            operator delete(v65);
          }

          if (v64[24] == 1)
          {
            v72 = v64;
            sub_1000087B4(&v72);
          }

          if (v63 < 0)
          {
            operator delete(v62);
          }

          if (v61 < 0)
          {
            operator delete(v60[0]);
          }

          TMClientInfo::~TMClientInfo(v67);
          if ((v42 & 0x100000000) != 0)
          {
            [(CTXPCClientHandler *)self getLogContext];
            v43 = v73;
            ctu::OsLogContext::~OsLogContext(&v72);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              sub_10177B280();
            }

            if (a8)
            {
              *a8 = sub_100A99330(&v69);
            }
          }

          if (v79 == 1)
          {
            sub_1002AF7A0(&v78[8]);
          }

          if (v77 == 1 && buf[79] < 0)
          {
            operator delete(*&buf[56]);
          }

          if (buf[48] == 1 && buf[47] < 0)
          {
            operator delete(*&buf[24]);
          }

          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v28 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    if (a8)
    {
      *buf = 4;
      buf[4] = 1;
      v27 = sub_100A99330(buf);
      goto LABEL_22;
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v26 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10177B2B4();
    }

    if (a8)
    {
      *buf = 3;
      buf[4] = 1;
      v27 = sub_100A99330(buf);
LABEL_22:
      *a8 = v27;
    }
  }

LABEL_23:
  if (v71)
  {
    sub_100004A34(v71);
  }
}

- (void)revokeMessage:(id)a3 withRevokeData:(id)a4 withMessageID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if (v11)
    {
      if (v12)
      {
        v14 = [v12 uuid];
        if (v14)
        {
          v15 = [v11 destination];
          if (v15)
          {
            v16 = [v11 messageID];
            if (v16)
            {
              v17 = [v11 messageID];
              v18 = [v17 uuid];

              if (v18)
              {
                [(CTXPCClientHandler *)self getLogContext];
                v19 = *&buf[8];
                ctu::OsLogContext::~OsLogContext(buf);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  [v10 slotID];
                  v20 = CTSubscriptionSlotAsString();
                  v36 = [v12 uuid];
                  v37 = [v11 destination];
                  v21 = [v11 messageID];
                  v22 = [v21 uuid];
                  *buf = 136315907;
                  *&buf[4] = v20;
                  *&buf[12] = 2114;
                  *&buf[14] = v36;
                  *&buf[22] = 2113;
                  *&buf[24] = v37;
                  LOWORD(v51) = 2114;
                  *(&v51 + 2) = v22;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] revokeMessage [slot: %s, identifier: %{public}@, revoke.dst = %{private}@, revoke.messageID: %{public}@]", buf, 0x2Au);
                }

                v23 = sub_100018A64([v10 slotID]);
                v48 = 0;
                v49 = 0;
                sub_1006E5FC4(self, &v48);
                v24 = v48;
                if (v48)
                {
                  v59 = 0u;
                  v60 = 0u;
                  v57 = 0u;
                  v58 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  v53 = 0u;
                  v54 = 0u;
                  memset(v52, 0, sizeof(v52));
                  v51 = 0u;
                  memset(buf, 0, sizeof(buf));
                  v25 = [v11 destination];
                  v26 = [v25 uri];
                  v27 = v26;
                  sub_10000501C(buf, [v26 UTF8String]);
                  v52[8] = 0;
                  LOBYTE(v53) = 0;
                  v54 = 0uLL;
                  *(&v53 + 1) = 0;
                  v51 = 0uLL;
                  *&buf[24] = 0;
                  v52[0] = 0;
                  v28 = [v11 messageID];
                  sub_1006E8724(v28, &v55);

                  v46 = 0u;
                  v47 = 0u;
                  v44 = 0u;
                  *__p = 0u;
                  *v42 = 0u;
                  v43 = 0u;
                  sub_1006E8724(v12, v42);
                  memset(v40, 0, sizeof(v40));
                  v41 = 1;
                  v29 = (*(*v24 + 272))(v24, v40, v23, buf, v42);
                  TMClientInfo::~TMClientInfo(v40);
                  if ((v29 & 0x100000000) != 0)
                  {
                    v38 = v29;
                    v39 = 1;
                    v35 = sub_100A99330(&v38);
                    v13[2](v13, v35);
                  }

                  else
                  {
                    v13[2](v13, 0);
                  }

                  if (BYTE8(v47) == 1 && SBYTE7(v46) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (SBYTE7(v43) < 0)
                  {
                    operator delete(v42[0]);
                  }

                  if (BYTE8(v60) == 1 && SBYTE7(v59) < 0)
                  {
                    operator delete(v58);
                  }

                  if (SBYTE7(v56) < 0)
                  {
                    operator delete(v55);
                  }

                  if (SHIBYTE(v54) < 0)
                  {
                    operator delete(*(&v53 + 1));
                  }

                  if (v53 == 1)
                  {
                    v42[0] = &v52[8];
                    sub_1000087B4(v42);
                  }

                  if (SHIBYTE(v51) < 0)
                  {
                    operator delete(*&buf[24]);
                  }

                  if (buf[23] < 0)
                  {
                    operator delete(*buf);
                  }
                }

                else
                {
                  [(CTXPCClientHandler *)self getLogContext];
                  v33 = *&buf[8];
                  ctu::OsLogContext::~OsLogContext(buf);
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                  {
                    sub_10177B1E4();
                  }

                  *buf = 5;
                  buf[4] = 1;
                  v34 = sub_100A99330(buf);
                  v13[2](v13, v34);
                }

                if (v49)
                {
                  sub_100004A34(v49);
                }

                goto LABEL_20;
              }

              goto LABEL_17;
            }
          }
        }
      }
    }

LABEL_17:
    [(CTXPCClientHandler *)self getLogContext];
    v31 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v32 = sub_100A99330(buf);
    v13[2](v13, v32);

    goto LABEL_20;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v30 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_10177B24C();
  }

LABEL_20:
}

- (void)sendGeolocationMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withGeoPush:(id)a6 withSecurity:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v19)
  {
    if (v14 && v15)
    {
      v20 = [v15 uri];
      v21 = v20;
      if (v16 && v20)
      {
        v22 = [v16 uuid];

        if (v17 && v22)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            [v14 slotID];
            v24 = CTSubscriptionSlotAsString();
            if (v18)
            {
              v25 = "true";
            }

            else
            {
              v25 = "false";
            }

            v57 = [v15 uri];
            v55 = [v16 uuid];
            v51 = v25;
            v52 = v24;
            [v17 coordinates];
            v53 = v26 = "3$_5EEvRNS2_10RestModuleEOT_NS_17integral_constantIbLb0EEEEUlRKN3xpc6objectEE_NS8_ISS_EEFvSP_EEE";
            if (v53)
            {
              v49 = [v17 coordinates];
              v50 = [v49 latitude];
              [v50 doubleValue];
              v28 = v27;
            }

            else
            {
              v28 = 0x406FE00000000000;
            }

            v32 = [v17 coordinates];
            if (v32)
            {
              v48 = [v17 coordinates];
              v26 = [v48 longitude];
              [v26 doubleValue];
            }

            else
            {
              v33 = 0x406FE00000000000;
            }

            *buf = 136316419;
            *&buf[4] = v52;
            *&buf[12] = 2080;
            *&buf[14] = v51;
            v85 = 2113;
            v86 = v57;
            v87 = 2114;
            v88 = v55;
            v89 = 2048;
            v90 = v28;
            v91 = 2048;
            v92 = v33;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendGeolocationMessage [slot: %s, security: %s, to: %{private}@, messageIdentifier: %{public}@, push.latitude: %{senstive}f, push.longitude: %{senstive}f]", buf, 0x3Eu);
            if (v32)
            {
            }

            if (v53)
            {
            }
          }

          v58 = sub_100018A64([v14 slotID]);
          v82 = 0;
          v83 = 0;
          sub_1006E5FC4(self, &v82);
          v34 = v82;
          if (v82)
          {
            *v80 = 0u;
            v81 = 0u;
            v35 = [v17 additionalDescription];
            v36 = v35 == 0;

            if (!v36)
            {
              v37 = [v17 additionalDescription];
              v38 = v37;
              *buf = [v37 UTF8String];
              sub_100184AD0(v80, buf);
            }

            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            *v74 = 0u;
            v75 = 0u;
            v54 = [v17 coordinates];
            v56 = [v54 longitude];
            [v56 doubleValue];
            v73[0] = v39;
            v40 = [v17 coordinates];
            v41 = [v40 latitude];
            [v41 doubleValue];
            v73[1] = v42;
            sub_10006F264(v74, v80);
            LOBYTE(v76) = 0;
            BYTE8(v77) = 0;
            v43 = [v17 metaData];
            sub_1006EBDBC(v43, &v78);

            memset(v71, 0, sizeof(v71));
            v72 = 1;
            sub_1006E72AC(v15, v64);
            sub_1006E8724(v16, v59);
            buf[0] = v18 != 0;
            buf[8] = 0;
            v93 = 0;
            v44 = (*(*v34 + 56))(v34, v71, v58, v64, v59, v73, buf);
            if (v93 == 1)
            {
              sub_1002AF7A0(&buf[16]);
            }

            if (v63 == 1 && v62 < 0)
            {
              operator delete(__p);
            }

            if (v60 < 0)
            {
              operator delete(v59[0]);
            }

            if (v70 < 0)
            {
              operator delete(v69);
            }

            if (v68[24] == 1)
            {
              *buf = v68;
              sub_1000087B4(buf);
            }

            if (v67 < 0)
            {
              operator delete(v66);
            }

            if (v65 < 0)
            {
              operator delete(v64[0]);
            }

            TMClientInfo::~TMClientInfo(v71);
            if ((v44 & 0x100000000) != 0)
            {
              *buf = v44;
              buf[4] = 1;
              v47 = sub_100A99330(buf);
              v19[2](v19, v47);
            }

            else
            {
              v19[2](v19, 0);
            }

            if (BYTE8(v79) == 1)
            {
              *buf = &v78;
              sub_100190608(buf);
            }

            if (BYTE8(v77) == 1)
            {
              *buf = &v76;
              sub_10019029C(buf);
            }

            if (BYTE8(v75) == 1 && SBYTE7(v75) < 0)
            {
              operator delete(v74[0]);
            }

            if (BYTE8(v81) == 1 && SBYTE7(v81) < 0)
            {
              operator delete(v80[0]);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v45 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              sub_10177B2E8();
            }

            *buf = 5;
            buf[4] = 1;
            v46 = sub_100A99330(buf);
            v19[2](v19, v46);
          }

          if (v83)
          {
            sub_100004A34(v83);
          }

          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v30 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v31 = sub_100A99330(buf);
    v19[2](v19, v31);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v29 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10177B31C();
    }
  }

LABEL_20:
}

- (void)sendDeviceAction:(id)a3 to:(id)a4 withMessageID:(id)a5 withAction:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    if (v13)
    {
      v17 = [v13 uri];
      v18 = v17;
      if (v14 && v17)
      {
        v19 = [v14 uuid];

        if (v15 && v19)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [v12 slotID];
            v21 = CTSubscriptionSlotAsString();
            v22 = [v13 uri];
            v23 = [v14 uuid];
            v24 = [v15 type];
            *buf = 136315906;
            *&buf[4] = v21;
            *&buf[12] = 2112;
            *&buf[14] = v22;
            v47 = 2114;
            v48 = v23;
            v49 = 2048;
            v50 = v24;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendDeviceAction [slot: %s, to: %@, messageIdentifier: %{public}@, type: %ld]", buf, 0x2Au);
          }

          v25 = sub_100018A64([v12 slotID]);
          v44 = 0;
          v45 = 0;
          sub_1006E5FC4(self, &v44);
          v26 = v44;
          if (v44)
          {
            if ([v15 type])
            {
              v27 = -1;
            }

            else
            {
              v27 = 0;
            }

            v43 = v27;
            v42 = 0;
            memset(v40, 0, sizeof(v40));
            v41 = 1;
            sub_1006E72AC(v13, buf);
            sub_1006E8724(v14, v35);
            v28 = (*(*v26 + 160))(v26, v40, v25, buf, v35, &v43);
            LODWORD(v42) = v28;
            BYTE4(v42) = BYTE4(v28);
            if (v39 == 1 && v38 < 0)
            {
              operator delete(__p);
            }

            if (v36 < 0)
            {
              operator delete(v35[0]);
            }

            if (v54 < 0)
            {
              operator delete(v53);
            }

            if (v52[24] == 1)
            {
              v35[0] = v52;
              sub_1000087B4(v35);
            }

            if (v51 < 0)
            {
              operator delete(v48);
            }

            if (SHIBYTE(v47) < 0)
            {
              operator delete(*buf);
            }

            TMClientInfo::~TMClientInfo(v40);
            if ((v28 & 0x100000000) != 0)
            {
              v34 = sub_100A99330(&v42);
              v16[2](v16, v34);
            }

            else
            {
              v16[2](v16, 0);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v32 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              sub_10177B350();
            }

            *buf = 5;
            buf[4] = 1;
            v33 = sub_100A99330(buf);
            v16[2](v16, v33);
          }

          if (v45)
          {
            sub_100004A34(v45);
          }

          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v30 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v31 = sub_100A99330(buf);
    v16[2](v16, v31);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v29 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10177B384();
    }
  }

LABEL_34:
}

- (void)sendDeviceSettings:(id)a3 to:(id)a4 withMessageID:(id)a5 withSetting:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    if (v13)
    {
      v17 = [v13 uri];
      v18 = v17;
      if (v14 && v17)
      {
        v19 = [v14 uuid];

        if (v15 && v19)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [v12 slotID];
            v21 = CTSubscriptionSlotAsString();
            v36 = [v13 uri];
            v22 = [v14 uuid];
            v23 = [v15 type];
            *buf = 136315906;
            *&buf[4] = v21;
            *&buf[12] = 2112;
            *&buf[14] = v36;
            v47 = 2112;
            v48 = v22;
            v49 = 2048;
            v50 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendDeviceSettings [slot: %s, to: %@, identifier: %@, type: %ld]", buf, 0x2Au);
          }

          v24 = sub_100018A64([v12 slotID]);
          v44 = 0;
          v45 = 0;
          sub_1006E5E0C(self, &v44);
          if (v44)
          {
            v25 = [v15 type];
            if (v25)
            {
              v26 = -1;
            }

            else
            {
              v26 = 0;
            }

            if (v25 == 1)
            {
              v27 = 1;
            }

            else
            {
              v27 = v26;
            }

            v43 = 0;
            v28 = v44;
            sub_1006E72AC(v13, buf);
            sub_1006E8724(v14, v38);
            v37 = v27;
            v29 = (*(*v28 + 264))(v28, v24, buf, v38, &v37);
            LODWORD(v43) = v29;
            BYTE4(v43) = BYTE4(v29);
            if (v42 == 1 && v41 < 0)
            {
              operator delete(__p);
            }

            if (v39 < 0)
            {
              operator delete(v38[0]);
            }

            if (v54 < 0)
            {
              operator delete(v53);
            }

            if (v52[24] == 1)
            {
              v38[0] = v52;
              sub_1000087B4(v38);
            }

            if (v51 < 0)
            {
              operator delete(v48);
            }

            if (SHIBYTE(v47) < 0)
            {
              operator delete(*buf);
            }

            if ((v29 & 0x100000000) != 0)
            {
              v35 = sub_100A99330(&v43);
              v16[2](v16, v35);
            }

            else
            {
              v16[2](v16, 0);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v33 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_10177B3B8();
            }

            *buf = 5;
            buf[4] = 1;
            v34 = sub_100A99330(buf);
            v16[2](v16, v34);
          }

          if (v45)
          {
            sub_100004A34(v45);
          }

          goto LABEL_37;
        }
      }

      else
      {
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v31 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v32 = sub_100A99330(buf);
    v16[2](v16, v32);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v30 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10177B3EC();
    }
  }

LABEL_37:
}

- (void)sendResponseForSuggestedReply:(id)a3 to:(id)a4 withMessageID:(id)a5 response:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    if (v13)
    {
      v17 = [v13 uri];
      v18 = v17;
      if (v14 && v17)
      {
        v19 = [v14 uuid];

        if (v15 && v19)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [v12 slotID];
            v21 = CTSubscriptionSlotAsString();
            v45 = [v13 uri];
            v43 = [v14 uuid];
            v41 = [v15 displayText];
            if (v41)
            {
              v42 = [v15 displayText];
            }

            else
            {
              v42 = &stru_101F6AFB8;
            }

            v40 = [v15 inReplyToID];
            if (v40)
            {
              v39 = [v15 inReplyToID];
              v25 = [v39 uuid];
              if (v25)
              {
                v38 = v25;
                v37 = [v15 inReplyToID];
                v26 = [v37 uuid];
                LODWORD(v25) = 1;
              }

              else
              {
                v38 = 0;
                v26 = &stru_101F6AFB8;
              }
            }

            else
            {
              LODWORD(v25) = 0;
              v26 = &stru_101F6AFB8;
            }

            *buf = 136316163;
            *&buf[4] = v21;
            *&buf[12] = 2113;
            *&buf[14] = v45;
            v64 = 2114;
            v65 = v43;
            v66 = 2113;
            v67 = v42;
            v68 = 2114;
            *v69 = v26;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendResponseForSuggestedReply [slot: %s, to: %{private}@, identifier: %{public}@, response.displayText: %{private}@, response.inReplyToID: %{public}@]", buf, 0x34u);
            if (v25)
            {
            }

            if (v40)
            {
            }

            if (v41)
            {
            }
          }

          v27 = sub_100018A64([v12 slotID]);
          v61 = 0;
          v62 = 0;
          sub_1006E5FC4(self, &v61);
          v28 = v61;
          if (v61)
          {
            memset(v59, 0, sizeof(v59));
            v60 = 1;
            sub_1006E72AC(v13, v52);
            sub_1006E8724(v14, v47);
            v46 = [v15 displayText];
            v29 = v46;
            sub_10000501C(buf, [v46 UTF8String]);
            v44 = [v15 postBackData];
            v30 = [v44 data];
            v31 = v30;
            sub_10000501C(&v65, [v30 UTF8String]);
            v32 = [v15 inReplyToID];
            sub_1006E8724(v32, &v69[4]);
            v33 = (*(*v28 + 144))(v28, v59, v27, v52, v47, buf);
            if (v73 == 1 && v72 < 0)
            {
              operator delete(v71);
            }

            if (v70 < 0)
            {
              operator delete(*&v69[4]);
            }

            if ((v69[3] & 0x80000000) != 0)
            {
              operator delete(v65);
            }

            if (SHIBYTE(v64) < 0)
            {
              operator delete(*buf);
            }

            if (v51 == 1 && v50 < 0)
            {
              operator delete(__p);
            }

            if (v48 < 0)
            {
              operator delete(v47[0]);
            }

            if (v58 < 0)
            {
              operator delete(v57);
            }

            if (v56[24] == 1)
            {
              *buf = v56;
              sub_1000087B4(buf);
            }

            if (v55 < 0)
            {
              operator delete(v54);
            }

            if (v53 < 0)
            {
              operator delete(v52[0]);
            }

            TMClientInfo::~TMClientInfo(v59);
            if ((v33 & 0x100000000) != 0)
            {
              *buf = v33;
              buf[4] = 1;
              v36 = sub_100A99330(buf);
              v16[2](v16, v36);
            }

            else
            {
              v16[2](v16, 0);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v34 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_10177B420();
            }

            *buf = 5;
            buf[4] = 1;
            v35 = sub_100A99330(buf);
            v16[2](v16, v35);
          }

          if (v62)
          {
            sub_100004A34(v62);
          }

          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v23 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v24 = sub_100A99330(buf);
    v16[2](v16, v24);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10177B454();
    }
  }

LABEL_16:
}

- (void)sendResponseForSuggestedAction:(id)a3 to:(id)a4 withMessageID:(id)a5 response:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    if (v13)
    {
      v17 = [v13 uri];
      v18 = v17;
      if (v14 && v17)
      {
        v19 = [v14 uuid];

        if (v15 && v19)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            [v12 slotID];
            v21 = CTSubscriptionSlotAsString();
            v45 = [v13 uri];
            v43 = [v14 uuid];
            v41 = [v15 displayText];
            if (v41)
            {
              v42 = [v15 displayText];
            }

            else
            {
              v42 = &stru_101F6AFB8;
            }

            v40 = [v15 inReplyToID];
            if (v40)
            {
              v39 = [v15 inReplyToID];
              v25 = [v39 uuid];
              if (v25)
              {
                v38 = v25;
                v37 = [v15 inReplyToID];
                v26 = [v37 uuid];
                LODWORD(v25) = 1;
              }

              else
              {
                v38 = 0;
                v26 = &stru_101F6AFB8;
              }
            }

            else
            {
              LODWORD(v25) = 0;
              v26 = &stru_101F6AFB8;
            }

            *buf = 136316163;
            *&buf[4] = v21;
            *&buf[12] = 2113;
            *&buf[14] = v45;
            v64 = 2114;
            v65 = v43;
            v66 = 2113;
            v67 = v42;
            v68 = 2114;
            *v69 = v26;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendResponseForSuggestedAction [slot: %s, to: %{private}@, identifier: %{public}@, response.displayText: %{private}@, response.inReplyToID: %{public}@]", buf, 0x34u);
            if (v25)
            {
            }

            if (v40)
            {
            }

            if (v41)
            {
            }
          }

          v27 = sub_100018A64([v12 slotID]);
          v61 = 0;
          v62 = 0;
          sub_1006E5FC4(self, &v61);
          v28 = v61;
          if (v61)
          {
            memset(v59, 0, sizeof(v59));
            v60 = 1;
            sub_1006E72AC(v13, v52);
            sub_1006E8724(v14, v47);
            v46 = [v15 displayText];
            v29 = v46;
            sub_10000501C(buf, [v46 UTF8String]);
            v44 = [v15 postBackData];
            v30 = [v44 data];
            v31 = v30;
            sub_10000501C(&v65, [v30 UTF8String]);
            v32 = [v15 inReplyToID];
            sub_1006E8724(v32, &v69[4]);
            v33 = (*(*v28 + 152))(v28, v59, v27, v52, v47, buf);
            if (v73 == 1 && v72 < 0)
            {
              operator delete(v71);
            }

            if (v70 < 0)
            {
              operator delete(*&v69[4]);
            }

            if ((v69[3] & 0x80000000) != 0)
            {
              operator delete(v65);
            }

            if (SHIBYTE(v64) < 0)
            {
              operator delete(*buf);
            }

            if (v51 == 1 && v50 < 0)
            {
              operator delete(__p);
            }

            if (v48 < 0)
            {
              operator delete(v47[0]);
            }

            if (v58 < 0)
            {
              operator delete(v57);
            }

            if (v56[24] == 1)
            {
              *buf = v56;
              sub_1000087B4(buf);
            }

            if (v55 < 0)
            {
              operator delete(v54);
            }

            if (v53 < 0)
            {
              operator delete(v52[0]);
            }

            TMClientInfo::~TMClientInfo(v59);
            if ((v33 & 0x100000000) != 0)
            {
              *buf = v33;
              buf[4] = 1;
              v36 = sub_100A99330(buf);
              v16[2](v16, v36);
            }

            else
            {
              v16[2](v16, 0);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v34 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_10177B488();
            }

            *buf = 5;
            buf[4] = 1;
            v35 = sub_100A99330(buf);
            v16[2](v16, v35);
          }

          if (v62)
          {
            sub_100004A34(v62);
          }

          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v23 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v24 = sub_100A99330(buf);
    v16[2](v16, v24);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10177B4BC();
    }
  }

LABEL_16:
}

- (void)reportChatbotSpam:(id)a3 forChatbot:(id)a4 withSpamReportInfo:(id)a5 andOperationID:(id)a6 completion:(id)a7
{
  v62 = a3;
  v12 = a4;
  v13 = a5;
  v63 = a6;
  v14 = a7;
  if (v14)
  {
    if (v12)
    {
      v15 = [v12 uri];
      v16 = v15;
      if (v63)
      {
        if (v13)
        {
          if (v15)
          {
            v17 = [v63 uuid];
            if (v17)
            {
              v18 = [v13 chatbotUri];
              if (v18)
              {
                v19 = [v13 messageIDList];
                if (v19)
                {
                  v20 = [v13 messageIDList];
                  v21 = [v20 list];

                  if (v21)
                  {
                    [(CTXPCClientHandler *)self getLogContext];
                    v22 = *&buf[8];
                    ctu::OsLogContext::~OsLogContext(buf);
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      [v62 slotID];
                      v60 = CTSubscriptionSlotAsString();
                      v23 = [v12 uri];
                      v61 = [v13 chatbotUri];
                      v24 = [v13 messageIDList];
                      v25 = [v24 list];
                      v26 = [v25 count];
                      v27 = [v13 spamType];
                      *buf = 136316163;
                      *&buf[4] = v60;
                      *&buf[12] = 2113;
                      *&buf[14] = v23;
                      *&buf[22] = 2113;
                      *&buf[24] = v61;
                      *&buf[32] = 2048;
                      *&buf[34] = v26;
                      *&buf[42] = 2048;
                      *&buf[44] = v27;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] reportChatbotSpam: [slot: %s, to: %{private}@ spamReportInfo.uri: %{private}@, spamReportInfo.messageIDList.length: %ld, spamReportInfo.spamType: %ld]", buf, 0x34u);
                    }

                    v28 = sub_100018A64([v62 slotID]);
                    v77 = 0;
                    v78 = 0;
                    sub_1006E5E0C(self, &v77);
                    if (!v77)
                    {
                      [(CTXPCClientHandler *)self getLogContext];
                      v50 = *&buf[8];
                      ctu::OsLogContext::~OsLogContext(buf);
                      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                      {
                        sub_10177B58C();
                      }

                      *buf = 5;
                      buf[4] = 1;
                      v51 = sub_100A99330(buf);
                      v14[2](v14, v51);

                      goto LABEL_74;
                    }

                    v29 = [v12 uri];
                    v30 = v29 == 0;

                    if (v30)
                    {
                      [(CTXPCClientHandler *)self getLogContext];
                      v52 = *&buf[8];
                      ctu::OsLogContext::~OsLogContext(buf);
                      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                      {
                        sub_10177B558();
                      }
                    }

                    else
                    {
                      v31 = [v13 messageIDList];
                      v32 = [v31 list];
                      v33 = [v32 count] == 0;

                      if (!v33)
                      {
                        v74 = 0;
                        v75 = 0;
                        v76 = 0;
                        v70 = 0u;
                        v71 = 0u;
                        v72 = 0u;
                        v73 = 0u;
                        v34 = [v13 messageIDList];
                        v35 = [v34 list];

                        v36 = [v35 countByEnumeratingWithState:&v70 objects:v86 count:16];
                        if (v36)
                        {
                          v37 = *v71;
                          do
                          {
                            for (i = 0; i != v36; i = i + 1)
                            {
                              if (*v71 != v37)
                              {
                                objc_enumerationMutation(v35);
                              }

                              sub_1006E8724(*(*(&v70 + 1) + 8 * i), buf);
                              sub_1006E9190(&v74, buf);
                              if (BYTE8(v81) == 1 && SBYTE7(v80) < 0)
                              {
                                operator delete(*&buf[48]);
                              }

                              if (buf[23] < 0)
                              {
                                operator delete(*buf);
                              }
                            }

                            v36 = [v35 countByEnumeratingWithState:&v70 objects:v86 count:16];
                          }

                          while (v36);
                        }

                        memset(&v69, 0, sizeof(v69));
                        sub_10000501C(&v69, "");
                        v39 = [v13 freeBodyText];
                        v40 = v39 == 0;

                        if (!v40)
                        {
                          v41 = [v13 freeBodyText];
                          v42 = v41;
                          sub_100016890(&v69, [v41 UTF8String]);
                        }

                        v43 = [v13 spamType];
                        v84 = 0u;
                        v85 = 0u;
                        if (v43 + 1 >= 4)
                        {
                          v44 = 3;
                        }

                        else
                        {
                          v44 = v43;
                        }

                        v82 = 0uLL;
                        v83 = 0uLL;
                        v80 = 0uLL;
                        v81 = 0uLL;
                        memset(buf, 0, sizeof(buf));
                        buf[0] = 1;
                        v45 = [v12 uri];
                        v46 = v45;
                        sub_10000501C(&buf[8], [v45 UTF8String]);
                        buf[32] = 0;
                        buf[56] = 0;
                        *&v81 = 0;
                        v80 = 0uLL;
                        sub_1006FB07C(&v80, v74, v75, 0xAAAAAAAAAAAAAAABLL * ((v75 - v74) >> 5));
                        BYTE8(v81) = 0;
                        LOBYTE(v83) = 0;
                        DWORD2(v83) = v44;
                        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_100005F2C(&v84, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          v84 = *&v69.__r_.__value_.__l.__data_;
                          *&v85 = *(&v69.__r_.__value_.__l + 2);
                        }

                        BYTE8(v85) = 1;

                        v67[0] = 0;
                        v67[1] = 0;
                        v68 = 0;
                        v55 = [v63 uuid];
                        v56 = v55;
                        sub_10000501C(v67, [v55 UTF8String]);

                        v66 = 0;
                        v57 = (*(*v77 + 112))(v77, v28, buf, v67);
                        LODWORD(v66) = v57;
                        BYTE4(v66) = BYTE4(v57);
                        if ((v57 & 0x100000000) != 0)
                        {
                          [(CTXPCClientHandler *)self getLogContext];
                          v58 = v65;
                          ctu::OsLogContext::~OsLogContext(v64);
                          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                          {
                            sub_10177B4F0();
                          }

                          v59 = sub_100A99330(&v66);
                          v14[2](v14, v59);
                        }

                        else
                        {
                          v14[2](v14, 0);
                        }

                        if (SHIBYTE(v68) < 0)
                        {
                          operator delete(v67[0]);
                        }

                        if (BYTE8(v85) == 1 && SBYTE7(v85) < 0)
                        {
                          operator delete(v84);
                        }

                        if (v83 == 1 && SHIBYTE(v82) < 0)
                        {
                          operator delete(*(&v81 + 1));
                        }

                        v67[0] = &v80;
                        sub_1006ACCB8(v67);
                        if (buf[56] == 1 && buf[55] < 0)
                        {
                          operator delete(*&buf[32]);
                        }

                        if (buf[31] < 0)
                        {
                          operator delete(*&buf[8]);
                        }

                        if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v69.__r_.__value_.__l.__data_);
                        }

                        *buf = &v74;
                        sub_1006ACCB8(buf);
                        goto LABEL_74;
                      }

                      [(CTXPCClientHandler *)self getLogContext];
                      v54 = *&buf[8];
                      ctu::OsLogContext::~OsLogContext(buf);
                      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                      {
                        sub_10177B524();
                      }
                    }

                    *buf = -1;
                    buf[4] = 1;
                    v53 = sub_100A99330(buf);
                    v14[2](v14, v53);

LABEL_74:
                    if (v78)
                    {
                      sub_100004A34(v78);
                    }

                    goto LABEL_42;
                  }

                  goto LABEL_39;
                }
              }
            }
          }
        }
      }
    }

LABEL_39:
    [(CTXPCClientHandler *)self getLogContext];
    v48 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v49 = sub_100A99330(buf);
    v14[2](v14, v49);

    goto LABEL_42;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v47 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Invalid completion block while reporting chatbot spam", buf, 2u);
  }

LABEL_42:
}

- (void)reportLazuliSpamWithContext:(id)a3 destination:(id)a4 spamReportInfo:(id)a5 operationID:(id)a6 completion:(id)a7
{
  v67 = a3;
  v12 = a4;
  v13 = a5;
  v68 = a6;
  v14 = a7;
  if (v14)
  {
    if (v12)
    {
      v15 = [v12 uri];
      v16 = v15;
      if (v68)
      {
        if (v13)
        {
          if (v15)
          {
            v17 = [v68 uuid];
            if (v17)
            {
              v18 = [v13 destinationUri];
              if (v18)
              {
                v19 = [v13 messageIDList];
                if (v19)
                {
                  v20 = [v13 messageIDList];
                  v21 = [v20 list];

                  if (v21)
                  {
                    [(CTXPCClientHandler *)self getLogContext];
                    v22 = *&buf[8];
                    ctu::OsLogContext::~OsLogContext(buf);
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      [v67 slotID];
                      v66 = CTSubscriptionSlotAsString();
                      v23 = [v12 uri];
                      v24 = [v13 destinationUri];
                      v25 = [v13 messageIDList];
                      v26 = [v25 list];
                      v27 = [v26 count];
                      v28 = [v13 spamType];
                      *buf = 136316163;
                      *&buf[4] = v66;
                      *&buf[12] = 2113;
                      *&buf[14] = v23;
                      *&buf[22] = 2113;
                      *&buf[24] = v24;
                      *&buf[32] = 2048;
                      *&buf[34] = v27;
                      *&buf[42] = 2048;
                      *&buf[44] = v28;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] reportSpam: [slot: %s, to: %{private}@ spamReportInfo.uri: %{private}@, spamReportInfo.messageIDList.length: %ld, spamReportInfo.spamType: %ld]", buf, 0x34u);
                    }

                    v29 = sub_100018A64([v67 slotID]);
                    v85 = 0;
                    v86 = 0;
                    sub_1006E5FC4(self, &v85);
                    v30 = v85;
                    if (!v85)
                    {
                      [(CTXPCClientHandler *)self getLogContext];
                      v56 = *&buf[8];
                      ctu::OsLogContext::~OsLogContext(buf);
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                      {
                        sub_10177B5F4();
                      }

                      *buf = 5;
                      buf[4] = 1;
                      v57 = sub_100A99330(buf);
                      v14[2](v14, v57);

                      goto LABEL_81;
                    }

                    v31 = [v12 uri];
                    v32 = v31 == 0;

                    if (v32)
                    {
                      [(CTXPCClientHandler *)self getLogContext];
                      v58 = *&buf[8];
                      ctu::OsLogContext::~OsLogContext(buf);
                      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                      {
                        sub_10177B5C0();
                      }
                    }

                    else
                    {
                      v33 = [v13 messageIDList];
                      v34 = [v33 list];
                      v35 = [v34 count] == 0;

                      if (!v35)
                      {
                        v82 = 0;
                        v83 = 0;
                        v84 = 0;
                        v78 = 0u;
                        v79 = 0u;
                        v80 = 0u;
                        v81 = 0u;
                        v36 = [v13 messageIDList];
                        v37 = [v36 list];

                        v38 = [v37 countByEnumeratingWithState:&v78 objects:v92 count:16];
                        if (v38)
                        {
                          v39 = *v79;
                          do
                          {
                            for (i = 0; i != v38; i = i + 1)
                            {
                              if (*v79 != v39)
                              {
                                objc_enumerationMutation(v37);
                              }

                              sub_1006E8724(*(*(&v78 + 1) + 8 * i), buf);
                              sub_1006E9190(&v82, buf);
                              if (v88[1].__r_.__value_.__s.__data_[0] == 1 && v88[0].__r_.__value_.__s.__data_[7] < 0)
                              {
                                operator delete(*&buf[48]);
                              }

                              if (buf[23] < 0)
                              {
                                operator delete(*buf);
                              }
                            }

                            v38 = [v37 countByEnumeratingWithState:&v78 objects:v92 count:16];
                          }

                          while (v38);
                        }

                        memset(&v77, 0, sizeof(v77));
                        sub_10000501C(&v77, "");
                        v41 = [v13 content];
                        v42 = v41 == 0;

                        if (!v42)
                        {
                          v43 = [v13 content];
                          v44 = v43;
                          sub_100016890(&v77, [v43 UTF8String]);
                        }

                        memset(&v76, 0, sizeof(v76));
                        sub_10000501C(&v76, "");
                        v45 = [v13 freeBodyText];
                        v46 = v45 == 0;

                        if (!v46)
                        {
                          v47 = [v13 freeBodyText];
                          v48 = v47;
                          sub_100016890(&v76, [v47 UTF8String]);
                        }

                        v49 = [v13 spamType];
                        *v90 = 0u;
                        v91 = 0u;
                        if (v49 + 1 >= 4)
                        {
                          v50 = 3;
                        }

                        else
                        {
                          v50 = v49;
                        }

                        v89 = 0uLL;
                        memset(v88, 0, sizeof(v88));
                        memset(buf, 0, sizeof(buf));
                        buf[0] = [v13 isChatbot];
                        v51 = [v12 uri];
                        v52 = v51;
                        sub_10000501C(&buf[8], [v51 UTF8String]);
                        buf[32] = 0;
                        buf[56] = 0;
                        memset(v88, 0, 24);
                        sub_1006FB07C(v88, v82, v83, 0xAAAAAAAAAAAAAAABLL * ((v83 - v82) >> 5));
                        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_100005F2C(&v88[1], v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          v88[1] = v77;
                        }

                        LOBYTE(v89) = 1;
                        DWORD2(v89) = v50;
                        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_100005F2C(v90, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          *v90 = *&v76.__r_.__value_.__l.__data_;
                          *&v91 = *(&v76.__r_.__value_.__l + 2);
                        }

                        BYTE8(v91) = 1;

                        v74[0] = 0;
                        v74[1] = 0;
                        v75 = 0;
                        v61 = [v68 uuid];
                        v62 = v61;
                        sub_10000501C(v74, [v61 UTF8String]);

                        v73 = 0;
                        memset(v71, 0, sizeof(v71));
                        v72 = 1;
                        v63 = (*(*v30 + 264))(v30, v71, v29, buf, v74);
                        LODWORD(v73) = v63;
                        BYTE4(v73) = BYTE4(v63);
                        TMClientInfo::~TMClientInfo(v71);
                        if (BYTE4(v73) == 1)
                        {
                          [(CTXPCClientHandler *)self getLogContext];
                          v64 = v70;
                          ctu::OsLogContext::~OsLogContext(v69);
                          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                          {
                            sub_10177B4F0();
                          }

                          v65 = sub_100A99330(&v73);
                          v14[2](v14, v65);
                        }

                        else
                        {
                          v14[2](v14, 0);
                        }

                        if (SHIBYTE(v75) < 0)
                        {
                          operator delete(v74[0]);
                        }

                        if (BYTE8(v91) == 1 && SBYTE7(v91) < 0)
                        {
                          operator delete(v90[0]);
                        }

                        if (v89 == 1 && SHIBYTE(v88[1].__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v88[1].__r_.__value_.__l.__data_);
                        }

                        v74[0] = v88;
                        sub_1006ACCB8(v74);
                        if (buf[56] == 1 && buf[55] < 0)
                        {
                          operator delete(*&buf[32]);
                        }

                        if (buf[31] < 0)
                        {
                          operator delete(*&buf[8]);
                        }

                        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v76.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v77.__r_.__value_.__l.__data_);
                        }

                        *buf = &v82;
                        sub_1006ACCB8(buf);
                        goto LABEL_81;
                      }

                      [(CTXPCClientHandler *)self getLogContext];
                      v60 = *&buf[8];
                      ctu::OsLogContext::~OsLogContext(buf);
                      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                      {
                        sub_10177B524();
                      }
                    }

                    *buf = -1;
                    buf[4] = 1;
                    v59 = sub_100A99330(buf);
                    v14[2](v14, v59);

LABEL_81:
                    if (v86)
                    {
                      sub_100004A34(v86);
                    }

                    goto LABEL_44;
                  }

                  goto LABEL_41;
                }
              }
            }
          }
        }
      }
    }

LABEL_41:
    [(CTXPCClientHandler *)self getLogContext];
    v54 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v55 = sub_100A99330(buf);
    v14[2](v14, v55);

    goto LABEL_44;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v53 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Invalid completion block while reporting chatbot spam", buf, 2u);
  }

LABEL_44:
}

- (void)decodeSuggestionsBase64:(id)a3 withBase64String:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8 && v9 && ([v9 base64String], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      [(CTXPCClientHandler *)self getLogContext];
      v12 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        [v8 slotID];
        v13 = CTSubscriptionSlotAsString();
        v14 = [v9 base64String];
        *buf = 136315651;
        *&buf[4] = v13;
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2117;
        *&buf[24] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] decodeSuggestionsBase64: [slot: %s, link: %{sensitive, mask.hash}@]", buf, 0x20u);
      }

      v15 = sub_100018A64([v8 slotID]);
      v29 = 0;
      v30 = 0;
      sub_1006E5E0C(self, &v29);
      v16 = v29;
      if (v29)
      {
        v32 = 0;
        memset(buf, 0, sizeof(buf));
        v17 = [v9 base64String];
        v18 = v17;
        sub_10000501C(__p, [v17 UTF8String]);
        (*(*v16 + 152))(buf, v16, v15, __p);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        if (v32)
        {
          v19 = [CTLazuliDeepLinkBase64StringDecoded alloc];
          if ((v32 & 1) == 0)
          {
            sub_1000D1644();
          }

          v20 = [v19 initWithReflection:buf];
          v10[2](v10, 0, v20);
        }

        else
        {
          LODWORD(__p[0]) = 6;
          BYTE4(__p[0]) = 1;
          v26 = sub_100A99330(__p);
          (v10)[2](v10, v26, 0);
        }

        if (v32 == 1 && buf[24] == 1)
        {
          __p[0] = buf;
          sub_10019029C(__p);
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v24 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_10177B17C();
        }

        *buf = 5;
        buf[4] = 1;
        v25 = sub_100A99330(buf);
        (v10)[2](v10, v25, 0);
      }

      if (v30)
      {
        sub_100004A34(v30);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v21 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v22 = sub_100A99330(buf);
      (v10)[2](v10, v22, 0);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v23 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10177B628();
    }
  }
}

- (void)sendTextMessage:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withMessage:(id)a6 withSecurity:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v19)
  {
    if (v14 && v15 && v16)
    {
      v20 = [v16 uuid];
      v21 = v20;
      if (v17 && v20)
      {
        v22 = [v17 content];

        if (v22)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            [v14 slotID];
            v38 = CTSubscriptionSlotAsString();
            v24 = "true";
            if (!v18)
            {
              v24 = "false";
            }

            v40 = [v15 focus];
            v39 = [v15 conversationID];
            v25 = [v16 uuid];
            v26 = [v17 content];
            *buf = 136316675;
            *&buf[4] = v38;
            *&buf[12] = 2080;
            *&buf[14] = v37;
            v63 = 2113;
            v64 = v40;
            v65 = 2114;
            v66 = v39;
            v67 = 2114;
            v68 = v25;
            v69 = 2160;
            v70 = 1752392040;
            v71 = 2117;
            v72 = v26;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendTextMessage: [slot: %s, security: %s, to.focus: %{private}@, to.conversationID: %{public}@, messageIdentifier: %{public}@, message: %{sensitive, mask.hash}@]", buf, 0x48u);
          }

          v27 = sub_100018A64([v14 slotID]);
          v60 = 0;
          v61 = 0;
          sub_1006E5FC4(self, &v60);
          v28 = v60;
          if (v60)
          {
            memset(v58, 0, sizeof(v58));
            v59 = 1;
            sub_1006F2118(v15, v52);
            sub_1006E8724(v16, v47);
            v41 = [v17 content];
            sub_10000501C(__p, [v41 UTF8String]);
            v44 = 0;
            v45 = 0;
            v29 = [v17 metaData];
            sub_1006EBDBC(v29, v46);
            buf[0] = v18 != 0;
            buf[8] = 0;
            v73 = 0;
            v30 = (*(*v28 + 32))(v28, v58, v27, v52, v47, __p, buf);
            if (v73 == 1)
            {
              sub_1002AF7A0(&buf[16]);
            }

            if (v46[24] == 1)
            {
              *buf = v46;
              sub_100190608(buf);
            }

            if (v45 == 1)
            {
              *buf = &v44;
              sub_10019029C(buf);
            }

            if (v43 < 0)
            {
              operator delete(__p[0]);
            }

            if (v51 == 1 && v50 < 0)
            {
              operator delete(v49);
            }

            if (v48 < 0)
            {
              operator delete(v47[0]);
            }

            if (v57 < 0)
            {
              operator delete(v56);
            }

            if (v55 < 0)
            {
              operator delete(v54);
            }

            if (v53 < 0)
            {
              operator delete(v52[0]);
            }

            TMClientInfo::~TMClientInfo(v58);
            if ((v30 & 0x100000000) != 0)
            {
              *buf = v30;
              buf[4] = 1;
              v36 = sub_100A99330(buf);
              v19[2](v19, v36);
            }

            else
            {
              v19[2](v19, 0);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v34 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_10177B65C();
            }

            *buf = 5;
            buf[4] = 1;
            v35 = sub_100A99330(buf);
            v19[2](v19, v35);
          }

          if (v61)
          {
            sub_100004A34(v61);
          }

          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v32 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v33 = sub_100A99330(buf);
    v19[2](v19, v33);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v31 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10177B690();
    }
  }

LABEL_40:
}

- (void)sendGroupComposingIndicator:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withIndication:(id)a6 withSecurity:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v55 = a7;
  v18 = a8;
  if (v18)
  {
    if (v14 && v15 && v16 && ([v16 uuid], v19 = objc_claimAutoreleasedReturnValue(), v19, v17) && v19)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v20 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      log = v20;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [v14 slotID];
        v45 = CTSubscriptionSlotAsString();
        v21 = "true";
        if (!v55)
        {
          v21 = "false";
        }

        v44 = v21;
        v48 = [v15 focus];
        if (v48)
        {
          v47 = [v15 focus];
        }

        else
        {
          v47 = &stru_101F6AFB8;
        }

        v49 = [v15 conversationID];
        if (v49)
        {
          v46 = [v15 conversationID];
        }

        else
        {
          v46 = &stru_101F6AFB8;
        }

        v50 = [v16 uuid];
        v51 = [v17 refreshTime];
        if (v51)
        {
          v42 = [v17 refreshTime];
          v43 = [v42 longValue];
        }

        else
        {
          v43 = -1;
        }

        v25 = [v17 active];
        v26 = [v17 lastActive];
        if (v26)
        {
          v20 = [v17 lastActive];
          v27 = v20;
          v28 = [v20 UTF8String];
        }

        else
        {
          v28 = "";
        }

        *buf = 136316931;
        *&buf[4] = v45;
        *&buf[12] = 2080;
        *&buf[14] = v44;
        *&buf[22] = 2114;
        *&buf[24] = v47;
        *&buf[32] = 2114;
        *&buf[34] = v46;
        *&buf[42] = 2113;
        *&buf[44] = v50;
        *&buf[52] = 2048;
        *&buf[54] = v43;
        *&buf[62] = 1024;
        LODWORD(v77) = v25;
        WORD2(v77) = 2081;
        *(&v77 + 6) = v28;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendGroupComposingIndicator: [slot: %s, security: %s, to.focus: %{public}@, to.conversationID: %{public}@, messageIdentifier: %{private}@, ind.refreshTime: %ld, ind.active: %d, ind.lastActive: %{private}s]", buf, 0x4Eu);
        if (v26)
        {
        }

        if (v51)
        {
        }

        if (v49)
        {
        }

        v20 = v48 == 0;

        if (v48)
        {
        }
      }

      v69 = 0;
      v70 = 0;
      sub_1006E5FC4(self, &v69);
      v29 = v69;
      if (v69)
      {
        v52 = sub_100018A64([v14 slotID]);
        v80 = 0;
        memset(v79, 0, sizeof(v79));
        v77 = 0u;
        v78 = 0u;
        memset(buf, 0, sizeof(buf));
        loga = [v17 refreshTime];
        if (loga)
        {
          v49 = [v17 refreshTime];
          v30 = [v49 longValue];
        }

        else
        {
          v30 = -1;
        }

        *buf = v30;
        buf[8] = 1;
        buf[16] = [v17 active];
        v33 = [v17 lastActive];
        if (v33)
        {
          v50 = [v17 lastActive];
          v34 = v50;
          v35 = [v50 UTF8String];
        }

        else
        {
          v35 = "";
        }

        sub_10000501C(&buf[24], v35);
        buf[48] = 1;
        v36 = [v17 contentType];
        if (v36)
        {
          v20 = [v17 contentType];
          v37 = v20;
          v38 = [v20 UTF8String];
        }

        else
        {
          v38 = "";
        }

        sub_10000501C(&buf[56], v38);
        LOBYTE(v78) = 1;
        BYTE8(v78) = 0;
        v79[0] = 0;
        LOBYTE(v80) = 0;
        if (v36)
        {
        }

        if (v33)
        {
        }

        if (loga)
        {
        }

        memset(v67, 0, sizeof(v67));
        v68 = 1;
        sub_1006F2118(v15, v61);
        sub_1006E8724(v16, v56);
        LOBYTE(v71) = v55 != 0;
        LOBYTE(v73) = 0;
        v75 = 0;
        v39 = (*(*v29 + 96))(v29, v67, v52, v61, v56, buf, &v71);
        if (v75 == 1)
        {
          sub_1002AF7A0(&v74);
        }

        if (v60 == 1 && v59 < 0)
        {
          operator delete(__p);
        }

        if (v57 < 0)
        {
          operator delete(v56[0]);
        }

        if (v66 < 0)
        {
          operator delete(v65);
        }

        if (v64 < 0)
        {
          operator delete(v63);
        }

        if (v62 < 0)
        {
          operator delete(v61[0]);
        }

        TMClientInfo::~TMClientInfo(v67);
        if ((v39 & 0x100000000) != 0)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v40 = v73;
          ctu::OsLogContext::~OsLogContext(&v71);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            sub_10177B280();
          }

          v71 = v39;
          v72 = 1;
          v41 = sub_100A99330(&v71);
          v18[2](v18, v41);
        }

        else
        {
          v18[2](v18, 0);
        }

        if (v80 == 1)
        {
          sub_1002AF7A0(&v79[8]);
        }

        if (v78 == 1 && SHIBYTE(v77) < 0)
        {
          operator delete(*&buf[56]);
        }

        if (buf[48] == 1 && buf[47] < 0)
        {
          operator delete(*&buf[24]);
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v31 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10177B6C4();
        }

        *buf = 5;
        buf[4] = 1;
        v32 = sub_100A99330(buf);
        v18[2](v18, v32);
      }

      if (v70)
      {
        sub_100004A34(v70);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v22 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v23 = sub_100A99330(buf);
      v18[2](v18, v23);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v24 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10177B6F8();
    }
  }
}

- (void)sendGroupComposingIndicator:(id)a3 toGroup:(id)a4 withMessageID:(id)a5 withIndication:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = v23;
    ctu::OsLogContext::~OsLogContext(&v21);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendGroupComposingIndicator", &v21, 2u);
    }

    [(CTXPCClientHandler *)self getLogContext];
    v18 = v23;
    ctu::OsLogContext::~OsLogContext(&v21);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10177B72C();
    }

    v21 = 5;
    v22 = 1;
    v19 = sub_100A99330(&v21);
    v16[2](v16, v19);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v20 = v23;
    ctu::OsLogContext::~OsLogContext(&v21);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10177B760();
    }
  }
}

- (void)sendGeolocationMessage:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withGeoPush:(id)a6 withSecurity:(id)a7 completion:(id)a8
{
  v14 = a3;
  v66 = a4;
  v15 = a5;
  v16 = a6;
  v65 = a7;
  v17 = a8;
  if (v17)
  {
    if (v14 && v66 && v15 && ([v15 uuid], v18 = objc_claimAutoreleasedReturnValue(), v18, v16) && v18)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v19 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        [v14 slotID];
        v20 = CTSubscriptionSlotAsString();
        v21 = "true";
        if (!v65)
        {
          v21 = "false";
        }

        v55 = v21;
        v56 = [v66 focus];
        if (v56)
        {
          v58 = [v66 focus];
        }

        else
        {
          v58 = &stru_101F6AFB8;
        }

        v59 = [v66 conversationID];
        if (v59)
        {
          v57 = [v66 conversationID];
        }

        else
        {
          v57 = &stru_101F6AFB8;
        }

        v63 = [v15 uuid];
        v54 = v20;
        [v16 coordinates];
        v61 = v26 = 0x406FE00000000000;
        if (v61)
        {
          v50 = [v16 coordinates];
          v52 = [v50 latitude];
          if (v52)
          {
            v47 = [v16 coordinates];
            v51 = [v47 latitude];
            [v51 doubleValue];
            v26 = v27;
            v53 = 1;
          }

          else
          {
            v52 = 0;
            v53 = 0;
          }
        }

        else
        {
          v53 = 0;
        }

        v28 = [v16 coordinates];
        v29 = 0x406FE00000000000;
        if (v28)
        {
          v49 = [v16 coordinates];
          v30 = [v49 longitude];
          if (v30)
          {
            v48 = v30;
            v46 = [v16 coordinates];
            v45 = [v46 longitude];
            [v45 doubleValue];
            v29 = v31;
            v32 = v14;
            v33 = 1;
          }

          else
          {
            v32 = v14;
            v48 = 0;
            v33 = 0;
          }
        }

        else
        {
          v32 = v14;
          v33 = 0;
        }

        *buf = 136316674;
        *&buf[4] = v54;
        *&buf[12] = 2080;
        *&buf[14] = v55;
        v90 = 2114;
        v91 = v58;
        v92 = 2114;
        v93 = v57;
        v94 = 2114;
        v95 = v63;
        v96 = 2048;
        v97 = v26;
        v98 = 2048;
        v99 = v29;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendGeolocationMessage: [slot: %s, security: %s, to.focus: %{public}@, to.conversationID: %{public}@, messageIdentifier: %{public}@, .latitude: %{senstive}f, .longitude: %{senstive}f]", buf, 0x48u);
        if (v33)
        {
        }

        if (v28)
        {
        }

        if (v53)
        {
        }

        if (v61)
        {
        }

        if (v59)
        {
        }

        if (v56)
        {
        }

        v14 = v32;
      }

      v87 = 0;
      v88 = 0;
      sub_1006E5FC4(self, &v87);
      v34 = v87;
      if (v87)
      {
        v60 = sub_100018A64([v14 slotID]);
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v62 = [v16 coordinates];
        v64 = [v62 longitude];
        [v64 doubleValue];
        v80[0] = v35;
        v36 = [v16 coordinates];
        v37 = [v36 latitude];
        v22 = v14;
        [v37 doubleValue];
        v80[1] = v38;
        BYTE8(v82) = 0;
        BYTE8(v84) = 0;
        v39 = [v16 metaData];
        sub_1006EBDBC(v39, &v85);

        memset(v78, 0, sizeof(v78));
        v79 = 1;
        sub_1006F2118(v66, v72);
        sub_1006E8724(v15, v67);
        buf[0] = v65 != 0;
        buf[8] = 0;
        v100 = 0;
        v40 = (*(*v34 + 64))(v34, v78, v60, v72, v67, v80, buf);
        if (v100 == 1)
        {
          sub_1002AF7A0(&buf[16]);
        }

        if (v71 == 1 && v70 < 0)
        {
          operator delete(__p);
        }

        if (v68 < 0)
        {
          operator delete(v67[0]);
        }

        if (v77 < 0)
        {
          operator delete(v76);
        }

        if (v75 < 0)
        {
          operator delete(v74);
        }

        if (v73 < 0)
        {
          operator delete(v72[0]);
        }

        TMClientInfo::~TMClientInfo(v78);
        if ((v40 & 0x100000000) != 0)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v43 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_10177B794();
          }

          *buf = v40;
          buf[4] = 1;
          v44 = sub_100A99330(buf);
          v17[2](v17, v44);
        }

        else
        {
          v17[2](v17, 0);
        }

        if (BYTE8(v86) == 1)
        {
          *buf = &v85;
          sub_100190608(buf);
        }

        if (BYTE8(v84) == 1)
        {
          *buf = &v83;
          sub_10019029C(buf);
        }

        if (BYTE8(v82) == 1 && SBYTE7(v82) < 0)
        {
          operator delete(v81);
        }
      }

      else
      {
        v22 = v14;
        [(CTXPCClientHandler *)self getLogContext];
        v41 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_10177B7C8();
        }

        *buf = 5;
        buf[4] = 1;
        v42 = sub_100A99330(buf);
        v17[2](v17, v42);
      }

      if (v88)
      {
        sub_100004A34(v88);
      }
    }

    else
    {
      v22 = v14;
      [(CTXPCClientHandler *)self getLogContext];
      v23 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v24 = sub_100A99330(buf);
      v17[2](v17, v24);
    }
  }

  else
  {
    v22 = v14;
    [(CTXPCClientHandler *)self getLogContext];
    v25 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10177B7FC();
    }
  }
}

- (void)sendFileTransferMessage:(id)a3 toGroupDestination:(id)a4 withMessageID:(id)a5 withFileInformation:(id)a6 withSecurity:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v41 = a7;
  v18 = a8;
  if (v18)
  {
    if (v14 && v15 && v16 && ([v16 uuid], v19 = objc_claimAutoreleasedReturnValue(), v19, v17) && v19)
    {
      v40 = v14;
      [(CTXPCClientHandler *)self getLogContext];
      v20 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        [v14 slotID];
        v37 = CTSubscriptionSlotAsString();
        v21 = "true";
        if (!v41)
        {
          v21 = "false";
        }

        v38 = [v15 focus];
        if (v38)
        {
          v39 = [v15 focus];
        }

        else
        {
          v39 = &stru_101F6AFB8;
        }

        v25 = [v15 conversationID];
        if (v25)
        {
          v26 = [v15 conversationID];
        }

        else
        {
          v26 = &stru_101F6AFB8;
        }

        v27 = [v16 uuid];
        *buf = 136316162;
        *&buf[4] = v37;
        *&buf[12] = 2080;
        *&buf[14] = v36;
        v83 = 2114;
        v84 = v39;
        *v85 = 2114;
        *&v85[2] = v26;
        v86 = 2114;
        v87 = v27;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendFileTransferMessage: [slot: %s, security: %s, to.focus: %{public}@, to.conversationID: %{public}@, identifier: %{public}@]", buf, 0x34u);

        if (v25)
        {
        }

        if (v38)
        {
        }
      }

      v77 = 0;
      v76 = 0;
      sub_1006E5FC4(self, &v76);
      v28 = v76;
      v14 = v40;
      if (v76)
      {
        v29 = sub_100018A64([v40 slotID]);
        bzero(v55, 0x208uLL);
        sub_1006EB6AC(v17, v55);
        memset(v53, 0, sizeof(v53));
        v54 = 1;
        sub_1006F2118(v15, v47);
        sub_1006E8724(v16, v42);
        sub_1001907C0(buf, v55);
        sub_100190C40(v103, v74);
        sub_100190324(v104, v75);
        v105 = 0;
        v106 = 0;
        v30 = [v17 metaData];
        sub_1006EBDBC(v30, v107);
        LOBYTE(v78) = v41 != 0;
        v79 = 0;
        v81 = 0;
        v31 = (*(*v28 + 48))(v28, v53, v29, v47, v42, buf, &v78);
        if (v81 == 1)
        {
          sub_1002AF7A0(&v80);
        }

        if (v107[24] == 1)
        {
          v78 = v107;
          sub_100190608(&v78);
        }

        if (v106 == 1)
        {
          v78 = &v105;
          sub_10019029C(&v78);
        }

        if (v104[24] == 1)
        {
          v78 = v104;
          sub_100190608(&v78);
        }

        sub_100190D9C(v103);
        v14 = v40;
        if (v102 == 1)
        {
          if (v101 == 1)
          {
            if (__p)
            {
              v100 = __p;
              operator delete(__p);
            }

            if (v98 == 1 && v96)
            {
              v97 = v96;
              operator delete(v96);
            }

            if (v95 == 1 && v93)
            {
              v94 = v93;
              operator delete(v93);
            }

            if (v91)
            {
              v92 = v91;
              operator delete(v91);
            }
          }

          if (v90 < 0)
          {
            operator delete(v89);
          }

          if (v88 < 0)
          {
            operator delete(*v85);
          }

          if (SHIBYTE(v84) < 0)
          {
            operator delete(*&buf[8]);
          }
        }

        if (v46 == 1 && v45 < 0)
        {
          operator delete(v44);
        }

        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        if (v52 < 0)
        {
          operator delete(v51);
        }

        if (v50 < 0)
        {
          operator delete(v49);
        }

        if (v48 < 0)
        {
          operator delete(v47[0]);
        }

        TMClientInfo::~TMClientInfo(v53);
        if ((v31 & 0x100000000) != 0)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v34 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_10177B830();
          }

          *buf = v31;
          buf[4] = 1;
          v35 = sub_100A99330(buf);
          v18[2](v18, v35);
        }

        else
        {
          v18[2](v18, 0);
        }

        if (v75[24] == 1)
        {
          *buf = v75;
          sub_100190608(buf);
        }

        sub_100190D9C(v74);
        if (v73 == 1)
        {
          if (v72 == 1)
          {
            if (v70)
            {
              v71 = v70;
              operator delete(v70);
            }

            if (v69 == 1 && v67)
            {
              v68 = v67;
              operator delete(v67);
            }

            if (v66 == 1 && v64)
            {
              v65 = v64;
              operator delete(v64);
            }

            if (v62)
            {
              v63 = v62;
              operator delete(v62);
            }
          }

          if (v61 < 0)
          {
            operator delete(v60);
          }

          if (v59 < 0)
          {
            operator delete(v58);
          }

          if (v57 < 0)
          {
            operator delete(v56);
          }
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v32 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10177B864();
        }

        *buf = 5;
        buf[4] = 1;
        v33 = sub_100A99330(buf);
        v18[2](v18, v33);
      }

      if (v77)
      {
        sub_100004A34(v77);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v22 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v23 = sub_100A99330(buf);
      v18[2](v18, v23);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v24 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10177B898();
    }
  }
}

- (void)sendGroupDispositionNotificationMessage:(id)a3 toGroup:(id)a4 to:(id)a5 withMessageID:(id)a6 withDisposition:(int64_t)a7 forMessageID:(id)a8 withSecurity:(id)a9 completion:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v49 = a8;
  v48 = a9;
  v20 = a10;
  if (v20)
  {
    if (v16 && v17 && v18)
    {
      v21 = [v18 uri];
      v22 = v21;
      if (v19 && v21)
      {
        v23 = [v19 uuid];
        v24 = v23;
        if (v49 && v23)
        {
          v25 = [v49 uuid];

          if (v25)
          {
            [(CTXPCClientHandler *)self getLogContext];
            v26 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              [v16 slotID];
              v42 = CTSubscriptionSlotAsString();
              v27 = "true";
              if (!v48)
              {
                v27 = "false";
              }

              v41 = v27;
              v45 = [v17 focus];
              if (v45)
              {
                v44 = [v17 focus];
              }

              else
              {
                v44 = &stru_101F6AFB8;
              }

              v47 = [v17 conversationID];
              if (v47)
              {
                v43 = [v17 conversationID];
              }

              else
              {
                v43 = &stru_101F6AFB8;
              }

              v46 = [v18 uri];
              v31 = [v19 uuid];
              v32 = [v49 uuid];
              *buf = 136316930;
              *&buf[4] = v42;
              *&buf[12] = 2080;
              *&buf[14] = v41;
              v80 = 2114;
              v81 = v44;
              v82 = 2114;
              v83 = v43;
              v84 = 2112;
              v85 = v46;
              v86 = 2114;
              v87 = v31;
              v88 = 2048;
              v89 = a7;
              v90 = 2114;
              v91 = v32;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendGroupDispositionNotificationMessage: [slot: %s, security: %s, group.focus: %{public}@, group.conversationID: %{public}@, to: %@, identifier: %{public}@, type: %ld, forMessageID: %{public}@]", buf, 0x52u);

              if (v47)
              {
              }

              if (v45)
              {
              }
            }

            v78 = 0;
            v77 = 0;
            sub_1006E5FC4(self, &v77);
            v33 = v77;
            if (v77)
            {
              v34 = sub_100018A64([v16 slotID]);
              v76 = 0;
              if (a7 == 2)
              {
                v35 = 2;
              }

              else
              {
                v35 = -1;
              }

              v74 = 0u;
              v75 = 0u;
              if (!a7)
              {
                v35 = 0;
              }

              v72 = 0uLL;
              v73 = 0uLL;
              v70 = 0uLL;
              v71 = 0uLL;
              LODWORD(v70) = v35;
              sub_1006E8724(v49, &v70 + 8);
              memset(v68, 0, sizeof(v68));
              v69 = 1;
              sub_1006F2118(v17, v62);
              sub_1006E72AC(v18, v55);
              sub_1006E8724(v19, v50);
              buf[0] = v48 != 0;
              buf[8] = 0;
              v92 = 0;
              v36 = (*(*v33 + 80))(v33, v68, v34, v62, v55, v50, &v70, buf);
              if (v92 == 1)
              {
                sub_1002AF7A0(&buf[16]);
              }

              if (v54 == 1 && v53 < 0)
              {
                operator delete(__p);
              }

              if (v51 < 0)
              {
                operator delete(v50[0]);
              }

              if (v61 < 0)
              {
                operator delete(v60);
              }

              if (v59[24] == 1)
              {
                *buf = v59;
                sub_1000087B4(buf);
              }

              if (v58 < 0)
              {
                operator delete(v57);
              }

              if (v56 < 0)
              {
                operator delete(v55[0]);
              }

              if (v67 < 0)
              {
                operator delete(v66);
              }

              if (v65 < 0)
              {
                operator delete(v64);
              }

              if (v63 < 0)
              {
                operator delete(v62[0]);
              }

              TMClientInfo::~TMClientInfo(v68);
              if ((v36 & 0x100000000) != 0)
              {
                [(CTXPCClientHandler *)self getLogContext];
                v39 = *&buf[8];
                ctu::OsLogContext::~OsLogContext(buf);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  sub_10177B830();
                }

                *buf = v36;
                buf[4] = 1;
                v40 = sub_100A99330(buf);
                v20[2](v20, v40);
              }

              else
              {
                v20[2](v20, 0);
              }

              if (v76 == 1 && SHIBYTE(v74) < 0)
              {
                operator delete(*(&v73 + 1));
              }

              if (SHIBYTE(v71) < 0)
              {
                operator delete(*(&v70 + 1));
              }
            }

            else
            {
              [(CTXPCClientHandler *)self getLogContext];
              v37 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                sub_10177B8CC();
              }

              *buf = 5;
              buf[4] = 1;
              v38 = sub_100A99330(buf);
              v20[2](v20, v38);
            }

            if (v78)
            {
              sub_100004A34(v78);
            }

            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }
    }

LABEL_19:
    [(CTXPCClientHandler *)self getLogContext];
    v29 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v30 = sub_100A99330(buf);
    v20[2](v20, v30);

    goto LABEL_22;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v28 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_10177B898();
  }

LABEL_22:
}

- (void)addParticipants:(id)a3 toGroupChat:(id)a4 withParticipantsToAdd:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v19)
  {
    if (v14 && v15 && v16)
    {
      v20 = [v16 memberList];
      v21 = v20;
      if (v17 && v20)
      {
        v22 = [v17 uuid];

        if (v22)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            [v14 slotID];
            v24 = CTSubscriptionSlotAsString();
            v25 = "true";
            if (!v18)
            {
              v25 = "false";
            }

            v44 = v25;
            v45 = [v15 focus];
            if (v45)
            {
              v47 = [v15 focus];
            }

            else
            {
              v47 = &stru_101F6AFB8;
            }

            v29 = [v15 conversationID];
            if (v29)
            {
              v46 = [v15 conversationID];
            }

            else
            {
              v46 = &stru_101F6AFB8;
            }

            v42 = v24;
            v43 = v23;
            v41 = [v16 memberList];
            v30 = [v41 count];
            v31 = [v17 uuid];
            *buf = 136316418;
            *&buf[4] = v42;
            *&buf[12] = 2080;
            *&buf[14] = v44;
            v63 = 2114;
            v64 = v47;
            v65 = 2114;
            v66 = v46;
            v67 = 2048;
            v68 = v30;
            v69 = 2112;
            v70 = v31;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] addParticipants: [slot: %s, security: %s, to.focus: %{public}@, to.conversationID: %{public}@, list.memberList.size: %ld,  operationID: %@]", buf, 0x3Eu);

            if (v29)
            {
            }

            if (v45)
            {
            }
          }

          v60 = 0;
          v61 = 0;
          sub_1006E5FC4(self, &v60);
          v32 = v60;
          if (v60)
          {
            v33 = sub_100018A64([v14 slotID]);
            memset(v58, 0, sizeof(v58));
            v59 = 1;
            sub_1006F2118(v15, v52);
            sub_1006F51D4(v16, v50);
            v34 = [v17 uuid];
            v35 = v34;
            sub_10000501C(__p, [v34 UTF8String]);
            buf[0] = v18 != 0;
            buf[8] = 0;
            v71 = 0;
            v36 = (*(*v32 + 104))(v32, v58, v33, v52, v50, __p, buf);
            if (v71 == 1)
            {
              sub_1002AF7A0(&buf[16]);
            }

            if (v49 < 0)
            {
              operator delete(__p[0]);
            }

            *buf = &v51;
            sub_1000D48DC(buf);
            *buf = v50;
            sub_1000087B4(buf);
            if (v57 < 0)
            {
              operator delete(v56);
            }

            if (v55 < 0)
            {
              operator delete(v54);
            }

            if (v53 < 0)
            {
              operator delete(v52[0]);
            }

            TMClientInfo::~TMClientInfo(v58);
            if ((v36 & 0x100000000) != 0)
            {
              [(CTXPCClientHandler *)self getLogContext];
              v39 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                sub_10177B900();
              }

              *buf = v36;
              buf[4] = 1;
              v40 = sub_100A99330(buf);
              v19[2](v19, v40);
            }

            else
            {
              v19[2](v19, 0);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v37 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_10177B934();
            }

            *buf = 5;
            buf[4] = 1;
            v38 = sub_100A99330(buf);
            v19[2](v19, v38);
          }

          if (v61)
          {
            sub_100004A34(v61);
          }

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v27 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v28 = sub_100A99330(buf);
    v19[2](v19, v28);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v26 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10177B968();
    }
  }

LABEL_19:
}

- (void)removeParticipants:(id)a3 fromGroupChat:(id)a4 withParticipantsToRemove:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v19)
  {
    if (v14 && v15 && v16)
    {
      v20 = [v16 memberList];
      v21 = v20;
      if (v17 && v20)
      {
        v22 = [v17 uuid];

        if (v22)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            [v14 slotID];
            v24 = CTSubscriptionSlotAsString();
            v25 = "true";
            if (!v18)
            {
              v25 = "false";
            }

            v45 = v25;
            v46 = [v15 focus];
            if (v46)
            {
              v48 = [v15 focus];
            }

            else
            {
              v48 = &stru_101F6AFB8;
            }

            v29 = [v15 conversationID];
            if (v29)
            {
              v47 = [v15 conversationID];
            }

            else
            {
              v47 = &stru_101F6AFB8;
            }

            v43 = v24;
            v44 = v23;
            v42 = [v16 memberList];
            v30 = [v42 count];
            v31 = [v17 uuid];
            v41 = v29;
            *buf = 136316418;
            *&buf[4] = v43;
            *&buf[12] = 2080;
            *&buf[14] = v45;
            v64 = 2114;
            v65 = v48;
            v66 = 2114;
            v67 = v47;
            v68 = 2048;
            v69 = v30;
            v70 = 2114;
            v71 = v31;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] removeParticipants: [slot: %s, security: %s, from.focus: %{public}@, from.conversationID: %{public}@, list.memberList.size: %lu, operationID: %{public}@]", buf, 0x3Eu);

            if (v29)
            {
            }

            if (v46)
            {
            }
          }

          v32 = sub_100018A64([v14 slotID]);
          v61 = 0;
          v62 = 0;
          sub_1006E5FC4(self, &v61);
          v33 = v61;
          if (v61)
          {
            memset(v59, 0, sizeof(v59));
            v60 = 1;
            sub_1006F2118(v15, v53);
            sub_1006F51D4(v16, v51);
            v34 = [v17 uuid];
            v35 = v34;
            sub_10000501C(__p, [v34 UTF8String]);
            buf[0] = v18 != 0;
            buf[8] = 0;
            v72 = 0;
            v36 = (*(*v33 + 112))(v33, v59, v32, v53, v51, __p, buf);
            if (v72 == 1)
            {
              sub_1002AF7A0(&buf[16]);
            }

            if (v50 < 0)
            {
              operator delete(__p[0]);
            }

            *buf = &v52;
            sub_1000D48DC(buf);
            *buf = v51;
            sub_1000087B4(buf);
            if (v58 < 0)
            {
              operator delete(v57);
            }

            if (v56 < 0)
            {
              operator delete(v55);
            }

            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            TMClientInfo::~TMClientInfo(v59);
            if ((v36 & 0x100000000) != 0)
            {
              [(CTXPCClientHandler *)self getLogContext];
              v39 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                sub_10177B99C();
              }

              *buf = v36;
              buf[4] = 1;
              v40 = sub_100A99330(buf);
              v19[2](v19, v40);
            }

            else
            {
              v19[2](v19, 0);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v37 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_10177B934();
            }

            *buf = 5;
            buf[4] = 1;
            v38 = sub_100A99330(buf);
            v19[2](v19, v38);
          }

          if (v62)
          {
            sub_100004A34(v62);
          }

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v27 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v28 = sub_100A99330(buf);
    v19[2](v19, v28);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v26 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10177B9D0();
    }
  }

LABEL_19:
}

- (void)changeIcon:(id)a3 forGroupChat:(id)a4 withNewIcon:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v52 = a5;
  v16 = a6;
  v51 = a7;
  v17 = a8;
  if (v17)
  {
    if (v14)
    {
      if (v15)
      {
        if (v16)
        {
          v18 = [v16 uuid];

          if (v18)
          {
            [(CTXPCClientHandler *)self getLogContext];
            v19 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              [v14 slotID];
              v48 = CTSubscriptionSlotAsString();
              v20 = "true";
              if (!v51)
              {
                v20 = "false";
              }

              v50 = [v15 focus];
              if (v50)
              {
                v49 = [v15 focus];
              }

              else
              {
                v49 = &stru_101F6AFB8;
              }

              v24 = [v15 conversationID];
              if (v24)
              {
                v25 = [v15 conversationID];
              }

              else
              {
                v25 = &stru_101F6AFB8;
              }

              v26 = [v16 uuid];
              *buf = 136316163;
              *&buf[4] = v48;
              *&buf[12] = 2080;
              *&buf[14] = v47;
              *&buf[22] = 2113;
              *v69 = v49;
              *&v69[8] = 2114;
              *&v69[10] = v25;
              *&v69[18] = 2114;
              *&v69[20] = v26;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] changeIcon: [slot: %s, security: %s, chat.focus: %{private}@, chat.conversationID: %{public}@, operationID: %{public}@]", buf, 0x34u);

              if (v24)
              {
              }

              if (v50)
              {
              }
            }

            v66 = 0;
            v67 = 0;
            sub_1006E5E0C(self, &v66);
            if (!v66)
            {
              [(CTXPCClientHandler *)self getLogContext];
              v39 = *&buf[8];
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                sub_10177AD04();
              }

              *buf = 5;
              buf[4] = 1;
              v40 = sub_100A99330(buf);
              v17[2](v17, v40);

              goto LABEL_64;
            }

            v27 = sub_100018A64([v14 slotID]);
            v65 = 0;
            *v64 = 0u;
            *__p = 0u;
            memset(v63, 0, sizeof(v63));
            if (v52)
            {
              v28 = [v52 data];
              v29 = v28 == 0;

              if (!v29)
              {
                v30 = [v52 data];
                v31 = [v30 length];

                v32 = [v52 data];
                v33 = v32;
                v34 = [v32 bytes];

                v55 = 0;
                v56 = 0;
                v57 = 0;
                sub_1000DCF88(&v55, v34, v31 + v34, v31);
                v35 = [v52 name];
                v36 = v35;
                sub_10000501C(buf, [v35 UTF8String]);
                memset(v69, 0, 24);
                sub_100034C50(v69, v55, v56, v56 - v55);
                v37 = [v52 type];
                v38 = v37;
                sub_10000501C(&v69[24], [v37 UTF8String]);
                if (SHIBYTE(v63[0]) < 0)
                {
                  operator delete(__p[0]);
                }

                *__p = *buf;
                v63[0] = *&buf[16];
                buf[23] = 0;
                buf[0] = 0;
                if (v63[1])
                {
                  v63[2] = v63[1];
                  operator delete(v63[1]);
                }

                *&v63[1] = *v69;
                v63[3] = *&v69[16];
                memset(v69, 0, 24);
                if (SHIBYTE(v65) < 0)
                {
                  operator delete(v64[0]);
                  *v64 = *&v69[24];
                  v65 = v70;
                  HIBYTE(v70) = 0;
                  v69[24] = 0;
                  if (*v69)
                  {
                    *&v69[8] = *v69;
                    operator delete(*v69);
                  }
                }

                else
                {
                  *v64 = *&v69[24];
                  v65 = v70;
                  HIBYTE(v70) = 0;
                  v69[24] = 0;
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }

                if (v55)
                {
                  v56 = v55;
                  operator delete(v55);
                }
              }
            }

            v41 = v66;
            sub_1006F2118(v15, &v55);
            v42 = [v16 uuid];
            v43 = v42;
            sub_10000501C(v53, [v42 UTF8String]);
            buf[0] = v51 != 0;
            buf[8] = 0;
            v71 = 0;
            v44 = (*(*v41 + 352))(v41, v27, &v55, __p, v53, buf);
            if (v71 == 1)
            {
              sub_1002AF7A0(&buf[16]);
            }

            if (v54 < 0)
            {
              operator delete(v53[0]);
            }

            if (v61 < 0)
            {
              operator delete(v60);
            }

            if (v59 < 0)
            {
              operator delete(v58);
            }

            if (SHIBYTE(v57) < 0)
            {
              operator delete(v55);
              if ((v44 & 0x100000000) == 0)
              {
                goto LABEL_53;
              }
            }

            else if ((v44 & 0x100000000) == 0)
            {
LABEL_53:
              v17[2](v17, 0);
LABEL_58:
              if (SHIBYTE(v65) < 0)
              {
                operator delete(v64[0]);
              }

              if (v63[1])
              {
                v63[2] = v63[1];
                operator delete(v63[1]);
              }

              if (SHIBYTE(v63[0]) < 0)
              {
                operator delete(__p[0]);
              }

LABEL_64:
              if (v67)
              {
                sub_100004A34(v67);
              }

              goto LABEL_66;
            }

            [(CTXPCClientHandler *)self getLogContext];
            v45 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              sub_10177BA04();
            }

            *buf = v44;
            buf[4] = 1;
            v46 = sub_100A99330(buf);
            v17[2](v17, v46);

            goto LABEL_58;
          }
        }
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v21 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v22 = sub_100A99330(buf);
    v17[2](v17, v22);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v23 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10177BA38();
    }
  }

LABEL_66:
}

- (void)changeSubject:(id)a3 forGroupChat:(id)a4 withNewSubject:(id)a5 withOperationID:(id)a6 withSecurity:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v19)
  {
    if (v14)
    {
      if (v15)
      {
        if (v17)
        {
          v20 = [v17 uuid];

          if (v20)
          {
            [(CTXPCClientHandler *)self getLogContext];
            v21 = *&v61[4];
            ctu::OsLogContext::~OsLogContext(buf);
            if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
LABEL_33:
              memset(&v59, 0, sizeof(v59));
              if (v16)
              {
                v28 = [v16 displayString];
                v29 = v28;
                sub_100016890(&v59, [v28 UTF8String]);
              }

              v30 = sub_100018A64([v14 slotID]);
              v57 = 0;
              v58 = 0;
              sub_1006E5FC4(self, &v57);
              v31 = v57;
              if (v57)
              {
                memset(v55, 0, sizeof(v55));
                v56 = 1;
                sub_1006F2118(v15, v49);
                v32 = [v17 uuid];
                v33 = v32;
                sub_10000501C(__p, [v32 UTF8String]);
                buf[0] = v18 != 0;
                v61[4] = 0;
                v70 = 0;
                v34 = (*(*v31 + 120))(v31, v55, v30, v49, &v59, __p, buf);
                if (v70 == 1)
                {
                  sub_1002AF7A0(&v61[12]);
                }

                if (v48 < 0)
                {
                  operator delete(__p[0]);
                }

                if (v54 < 0)
                {
                  operator delete(v53);
                }

                if (v52 < 0)
                {
                  operator delete(v51);
                }

                if (v50 < 0)
                {
                  operator delete(v49[0]);
                }

                TMClientInfo::~TMClientInfo(v55);
                if ((v34 & 0x100000000) != 0)
                {
                  [(CTXPCClientHandler *)self getLogContext];
                  v37 = *&v61[4];
                  ctu::OsLogContext::~OsLogContext(buf);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    sub_10177BA04();
                  }

                  *buf = v34;
                  v61[0] = 1;
                  v38 = sub_100A99330(buf);
                  v19[2](v19, v38);
                }

                else
                {
                  v19[2](v19, 0);
                }
              }

              else
              {
                [(CTXPCClientHandler *)self getLogContext];
                v35 = *&v61[4];
                ctu::OsLogContext::~OsLogContext(buf);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  sub_10177B934();
                }

                *buf = 5;
                v61[0] = 1;
                v36 = sub_100A99330(buf);
                v19[2](v19, v36);
              }

              if (v58)
              {
                sub_100004A34(v58);
              }

              if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v59.__r_.__value_.__l.__data_);
              }

              goto LABEL_58;
            }

            [v14 slotID];
            v42 = CTSubscriptionSlotAsString();
            v22 = "true";
            if (!v18)
            {
              v22 = "false";
            }

            v41 = v22;
            v46 = [v15 focus];
            if (v46)
            {
              v44 = [v15 focus];
            }

            else
            {
              v44 = &stru_101F6AFB8;
            }

            v45 = [v15 conversationID];
            if (v45)
            {
              v43 = [v15 conversationID];
              if (v16)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v43 = &stru_101F6AFB8;
              if (v16)
              {
LABEL_19:
                v39 = [v16 displayString];
                if (v39)
                {
                  v26 = [v16 displayString];
                  v40 = 1;
                }

                else
                {
                  v39 = 0;
                  v40 = 0;
                  v26 = &stru_101F6AFB8;
                }

                goto LABEL_24;
              }
            }

            v40 = 0;
            v26 = &stru_101F6AFB8;
LABEL_24:
            v27 = [v17 uuid];
            *buf = 136316418;
            *v61 = v42;
            *&v61[8] = 2080;
            *&v61[10] = v41;
            v62 = 2114;
            v63 = v44;
            v64 = 2114;
            v65 = v43;
            v66 = 2112;
            v67 = v26;
            v68 = 2114;
            v69 = v27;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] changeSubject: [slot: %s, security: %s, chat.focus: %{public}@, chat.conversationID: %{public}@, subject: %{senstive}@, operationID: %{public}@]", buf, 0x3Eu);

            if (v40)
            {
            }

            if (v16)
            {
            }

            if (v45)
            {
            }

            if (v46)
            {
            }

            goto LABEL_33;
          }
        }
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v23 = *&v61[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    v61[0] = 1;
    v24 = sub_100A99330(buf);
    v19[2](v19, v24);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v25 = *&v61[4];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10177BA6C();
    }
  }

LABEL_58:
}

- (void)create:(id)a3 groupChat:(id)a4 withOperationID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v84 = a5;
  v12 = a6;
  v83 = v10;
  if (v12)
  {
    if (v10)
    {
      if (v11)
      {
        if (v84)
        {
          v13 = [v84 uuid];
          if (v13)
          {
            v14 = [v11 participants];
            if (v14)
            {
              v15 = [v11 participants];
              v16 = [v15 memberList];

              if (v16)
              {
                [(CTXPCClientHandler *)self getLogContext];
                v17 = *&buf[8];
                ctu::OsLogContext::~OsLogContext(buf);
                v81 = self;
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  [v10 slotID];
                  v82 = CTSubscriptionSlotAsString();
                  v18 = [v11 participants];
                  v19 = [v18 memberList];
                  v20 = [v19 count];
                  v21 = [v11 subject];
                  if (v21)
                  {
                    v78 = [v11 subject];
                    v79 = [v78 displayString];
                    if (v79)
                    {
                      v77 = [v11 subject];
                      v22 = [v77 displayString];
                      v23 = 1;
                    }

                    else
                    {
                      v79 = 0;
                      v23 = 0;
                      v22 = &stru_101F6AFB8;
                    }
                  }

                  else
                  {
                    v23 = 0;
                    v22 = &stru_101F6AFB8;
                  }

                  v27 = [v84 uuid];
                  *buf = 136316163;
                  *&buf[4] = v82;
                  *&buf[12] = 2048;
                  *&buf[14] = v20;
                  *&buf[22] = 2160;
                  *&buf[24] = 1752392040;
                  *&buf[32] = 2117;
                  *&buf[34] = v22;
                  *&buf[42] = 2114;
                  *&buf[44] = v27;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] create: [slot: %s, chat.participants.size: %ld, chat.subject: %{sensitive, mask.hash}@, operationID: %{public}@]", buf, 0x34u);

                  if (v23)
                  {
                  }

                  if (v21)
                  {
                  }
                }

                v80 = sub_100018A64([v83 slotID]);
                v100 = 0u;
                v101 = 0u;
                v99 = 0u;
                v28 = [v11 participants];
                v29 = [v28 memberList];
                v30 = [v29 count];

                if (v30)
                {
                  for (i = 0; i != v30; ++i)
                  {
                    v32 = [v11 participants];
                    v33 = [v32 memberList];
                    v34 = [v33 objectAtIndexedSubscript:i];

                    v35 = [v34 member];
                    v36 = v35;
                    sub_10000501C(buf, [v35 UTF8String]);
                    *&buf[24] = -1;
                    buf[28] = 0;
                    v37 = v101;
                    if (v101 >= *(&v101 + 1))
                    {
                      *&v101 = sub_1006AD550(&v100 + 8, buf);
                      if (buf[23] < 0)
                      {
                        operator delete(*buf);
                      }
                    }

                    else
                    {
                      v38 = *buf;
                      *(v101 + 16) = *&buf[16];
                      *v37 = v38;
                      memset(buf, 0, 24);
                      v39 = buf[28];
                      *(v37 + 24) = *&buf[24];
                      *(v37 + 28) = v39;
                      *&v101 = v37 + 32;
                    }
                  }
                }

                __p = 0u;
                v98 = 0u;
                v40 = [v11 subject];
                if (v40)
                {
                  v41 = [v11 subject];
                  v42 = [v41 displayString];
                  if (v42)
                  {
                    v43 = [v11 subject];
                    v44 = [v43 displayString];
                    v45 = [v44 length] == 0;

                    if (!v45)
                    {
                      v46 = [v11 subject];
                      v47 = [v46 displayString];
                      v48 = v47;
                      sub_10000501C(buf, [v47 UTF8String]);
                      if (BYTE8(v98) == 1)
                      {
                        if (SBYTE7(v98) < 0)
                        {
                          operator delete(__p);
                        }

                        __p = *buf;
                        *&v98 = *&buf[16];
                        buf[23] = 0;
                        buf[0] = 0;
                      }

                      else
                      {
                        __p = *buf;
                        *&v98 = *&buf[16];
                        memset(buf, 0, 24);
                        BYTE8(v98) = 1;
                      }
                    }
                  }

                  else
                  {
                  }
                }

                v96 = 0u;
                v94 = 0u;
                *v95 = 0u;
                *v92 = 0u;
                *v93 = 0u;
                v49 = [v11 icon];
                v50 = v49 == 0;

                if (!v50)
                {
                  v51 = [v11 icon];
                  v52 = [v51 data];
                  v53 = v52 == 0;

                  if (v53)
                  {
                    v61 = 0;
                    v62 = 0;
                  }

                  else
                  {
                    v54 = [v11 icon];
                    v55 = [v54 data];
                    v56 = [v55 length];

                    v57 = [v11 icon];
                    v58 = [v57 data];
                    v59 = v58;
                    v60 = [v58 bytes];

                    memset(buf, 0, 24);
                    sub_1000DCF88(buf, v60, v56 + v60, v56);
                    v62 = *buf;
                    v61 = *&buf[8];
                  }

                  v63 = [v11 icon];
                  v64 = [v63 name];
                  v65 = v64;
                  sub_10000501C(buf, [v64 UTF8String]);
                  memset(&buf[24], 0, 24);
                  sub_100034C50(&buf[24], v62, v61, v61 - v62);
                  v66 = [v11 icon];
                  v67 = [v66 type];
                  v68 = v67;
                  sub_10000501C(&buf[48], [v67 UTF8String]);
                  sub_1006F79E0(v92, buf);
                  if (SBYTE7(v103) < 0)
                  {
                    operator delete(*&buf[48]);
                  }

                  if (*&buf[24])
                  {
                    *&buf[32] = *&buf[24];
                    operator delete(*&buf[24]);
                  }

                  if (buf[23] < 0)
                  {
                    operator delete(*buf);
                  }

                  if (v62)
                  {
                    operator delete(v62);
                  }
                }

                v114 = 0;
                v112 = 0u;
                v113 = 0u;
                memset(v111, 0, sizeof(v111));
                v109 = 0u;
                memset(v110, 0, sizeof(v110));
                v107 = 0u;
                v108 = 0u;
                v105 = 0u;
                v106 = 0u;
                v103 = 0u;
                v104 = 0u;
                memset(buf, 0, sizeof(buf));
                sub_10004EFD0(buf, v99, *(&v99 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v99 + 1) - v99) >> 3));
                memset(&buf[24], 0, 24);
                sub_1000D4704(&buf[24], *(&v100 + 1), v101, (v101 - *(&v100 + 1)) >> 5);
                BYTE8(v109) = 0;
                *&buf[48] = 0u;
                v103 = 0u;
                v104 = 0u;
                LOBYTE(v105) = 0;
                sub_1000D43F8(v110, &__p);
                sub_1000D4448(v111, v92);
                v112 = 0uLL;
                *&v113 = 0;
                DWORD2(v113) = -1;
                BYTE12(v113) = 0;
                LOBYTE(v114) = [v11 secure];
                v90 = 0;
                v91 = 0;
                sub_1006E5FC4(v81, &v90);
                v69 = v90;
                if (v90)
                {
                  memset(v88, 0, sizeof(v88));
                  v89 = 1;
                  v70 = [v84 uuid];
                  v71 = v70;
                  sub_10000501C(&v85, [v70 UTF8String]);
                  v72 = (*(*v69 + 128))(v69, v88, v80, buf, &v85);
                  if (v87 < 0)
                  {
                    operator delete(v85);
                  }

                  TMClientInfo::~TMClientInfo(v88);
                  if ((v72 & 0x100000000) != 0)
                  {
                    [(CTXPCClientHandler *)v81 getLogContext];
                    v75 = v86;
                    ctu::OsLogContext::~OsLogContext(&v85);
                    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                    {
                      sub_10177BAA0();
                    }

                    LODWORD(v85) = v72;
                    BYTE4(v85) = 1;
                    v76 = sub_100A99330(&v85);
                    v12[2](v12, v76);
                  }

                  else
                  {
                    v12[2](v12, 0);
                  }
                }

                else
                {
                  [(CTXPCClientHandler *)v81 getLogContext];
                  v73 = v86;
                  ctu::OsLogContext::~OsLogContext(&v85);
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                  {
                    sub_10177B934();
                  }

                  LODWORD(v85) = 5;
                  BYTE4(v85) = 1;
                  v74 = sub_100A99330(&v85);
                  v12[2](v12, v74);
                }

                if (v91)
                {
                  sub_100004A34(v91);
                }

                sub_1000D45B0(buf);
                if (BYTE8(v96) == 1)
                {
                  if (SBYTE7(v96) < 0)
                  {
                    operator delete(v95[0]);
                  }

                  if (v93[1])
                  {
                    *&v94 = v93[1];
                    operator delete(v93[1]);
                  }

                  if (SHIBYTE(v93[0]) < 0)
                  {
                    operator delete(v92[0]);
                  }
                }

                if (BYTE8(v98) == 1 && SBYTE7(v98) < 0)
                {
                  operator delete(__p);
                }

                *buf = &v100 + 8;
                sub_1000D48DC(buf);
                *buf = &v99;
                sub_1000087B4(buf);
                goto LABEL_18;
              }
            }

            else
            {
            }
          }
        }
      }
    }

    [(CTXPCClientHandler *)self getLogContext];
    v25 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v26 = sub_100A99330(buf);
    v12[2](v12, v26);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v24 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10177BAD4();
    }
  }

LABEL_18:
}

- (void)exit:(id)a3 groupChat:(id)a4 withOperationID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if (v10 && v11 && v12 && ([v12 uuid], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
    {
      [(CTXPCClientHandler *)self getLogContext];
      v15 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        [v10 slotID];
        v16 = CTSubscriptionSlotAsString();
        v34 = [v11 focus];
        if (v34)
        {
          v33 = [v11 focus];
        }

        else
        {
          v33 = &stru_101F6AFB8;
        }

        v20 = [v11 conversationID];
        if (v20)
        {
          v21 = [v11 conversationID];
        }

        else
        {
          v21 = &stru_101F6AFB8;
        }

        v22 = [v12 uuid];
        v32 = v20;
        *buf = 136315906;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v33;
        v42 = 2114;
        v43 = v21;
        v44 = 2114;
        v45 = v22;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] exit: [slot: %s, chat.focus: %{public}@, chat.conversationID: %{public}@, operationID: %{public}@]", buf, 0x2Au);

        if (v20)
        {
        }

        if (v34)
        {
        }
      }

      v23 = sub_100018A64([v10 slotID]);
      v39 = 0;
      v40 = 0;
      sub_1006E5FC4(self, &v39);
      v24 = v39;
      if (v39)
      {
        memset(v37, 0, sizeof(v37));
        v38 = 1;
        sub_1006F2118(v11, buf);
        v25 = [v12 uuid];
        v26 = v25;
        sub_10000501C(__p, [v25 UTF8String]);
        v27 = (*(*v24 + 136))(v24, v37, v23, buf, __p);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }

        if (v48 < 0)
        {
          operator delete(v47);
        }

        if (v46 < 0)
        {
          operator delete(v43);
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(*buf);
        }

        TMClientInfo::~TMClientInfo(v37);
        if ((v27 & 0x100000000) != 0)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v30 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_10177BB08();
          }

          *buf = v27;
          buf[4] = 1;
          v31 = sub_100A99330(buf);
          v13[2](v13, v31);
        }

        else
        {
          v13[2](v13, 0);
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v28 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10177B934();
        }

        *buf = 5;
        buf[4] = 1;
        v29 = sub_100A99330(buf);
        v13[2](v13, v29);
      }

      if (v40)
      {
        sub_100004A34(v40);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v17 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v18 = sub_100A99330(buf);
      v13[2](v13, v18);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v19 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10177BB3C();
    }
  }
}

- (void)deleteChat:(id)a3 chat:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8 && v9)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v11 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        [v8 slotID];
        v12 = CTSubscriptionSlotAsString();
        *buf = 136315395;
        *&buf[4] = v12;
        *&buf[12] = 2113;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] deleteChat: [slot: %s, chat: %{private}@]", buf, 0x16u);
      }

      v23 = 0;
      v24 = 0;
      sub_1006E5E0C(self, &v23);
      if (!v23)
      {
        [(CTXPCClientHandler *)self getLogContext];
        v20 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10177BB70();
        }

        *buf = 5;
        buf[4] = 1;
        v21 = sub_100A99330(buf);
        v10[2](v10, v21);

        goto LABEL_20;
      }

      v13 = sub_100018A64([v8 slotID]);
      v14 = v23;
      v15 = v9;
      sub_10000501C(buf, [v9 UTF8String]);
      v16 = (*(*v14 + 368))(v14, v13, buf);
      if (v26 < 0)
      {
        operator delete(*buf);
        if ((v16 & 0x100000000) == 0)
        {
          goto LABEL_9;
        }
      }

      else if ((v16 & 0x100000000) == 0)
      {
LABEL_9:
        v10[2](v10, 0);
        goto LABEL_20;
      }

      *buf = v16;
      buf[4] = 1;
      v22 = sub_100A99330(buf);
      v10[2](v10, v22);

LABEL_20:
      if (v24)
      {
        sub_100004A34(v24);
      }

      goto LABEL_22;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v18 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10177ABCC();
    }

    *buf = 4;
    buf[4] = 1;
    v19 = sub_100A99330(buf);
    v10[2](v10, v19);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10177BBA4();
    }
  }

LABEL_22:
}

- (void)setProvisioningServerURL:(id)a3 url:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8 && v9)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v11 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        [v8 slotID];
        v12 = CTSubscriptionSlotAsString();
        *buf = 136315395;
        *&buf[4] = v12;
        *&buf[12] = 2113;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] setProvisioningServerURL: [slot: %s, url: %{private}@]", buf, 0x16u);
      }

      *buf = 0;
      *&buf[8] = 0;
      sub_1006E5E0C(self, buf);
      if (*buf)
      {
        v13 = sub_100018A64([v8 slotID]);
        v14 = *buf;
        v15 = v9;
        sub_10000501C(__p, [v9 UTF8String]);
        (*(*v14 + 160))(v14, v13, __p);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        v10[2](v10, 0);
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v19 = v25;
        ctu::OsLogContext::~OsLogContext(&v23);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10177BBD8();
        }

        v23 = 5;
        v24 = 1;
        v20 = sub_100A99330(&v23);
        (v10)[2](v10, v20);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v17 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v18 = sub_100A99330(buf);
      (v10)[2](v10, v18);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v16 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10177BC0C();
    }
  }
}

- (void)getProvisioningServerURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v8 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        [v6 slotID];
        v9 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] getProvisioningServerURL: [slot: %s]", buf, 0xCu);
      }

      v22 = 0;
      v23 = 0;
      sub_1006E5E0C(self, &v22);
      if (v22)
      {
        sub_100018A64([v6 slotID]);
        *buf = 0u;
        v25 = 0u;
        (*(*v22 + 168))(buf);
        if (BYTE8(v25))
        {
          if ((SBYTE7(v25) & 0x80u) == 0)
          {
            v10 = buf;
          }

          else
          {
            v10 = *buf;
          }

          v11 = [NSString stringWithUTF8String:v10];
          v7[2](v7, v11, 0);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v17 = v21;
          ctu::OsLogContext::~OsLogContext(&v19);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_10177BC40();
          }

          v19 = 5;
          v20 = 1;
          v18 = sub_100A99330(&v19);
          (v7)[2](v7, 0, v18);
        }

        if (BYTE8(v25) == 1 && SBYTE7(v25) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v15 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10177BC74();
        }

        *buf = 5;
        buf[4] = 1;
        v16 = sub_100A99330(buf);
        (v7)[2](v7, 0, v16);
      }

      if (v23)
      {
        sub_100004A34(v23);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v13 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v14 = sub_100A99330(buf);
      (v7)[2](v7, 0, v14);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v12 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10177BCA8();
    }
  }
}

- (void)sendOneToManyTextMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withMessage:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    if (v12 && v13 && v14 && v15)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v17 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        [v12 slotID];
        v18 = CTSubscriptionSlotAsString();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendOneToManyTextMessage: [slot: %s]", &buf, 0xCu);
      }

      v38 = 0;
      v39 = 0;
      sub_1006E5E0C(self, &v38);
      if (v38)
      {
        v19 = sub_100018A64([v12 slotID]);
        v37 = 0;
        v20 = v38;
        sub_1006F907C(v13, v36);
        sub_1006E8724(v14, &buf);
        v21 = [v15 content];
        v22 = v21;
        sub_10000501C(__p, [v21 UTF8String]);
        v33 = 0;
        v34 = 0;
        v23 = [v15 metaData];
        sub_1006EBDBC(v23, v35);
        v24 = (*(*v20 + 384))(v20, v19, v36, &buf, __p);
        LODWORD(v37) = v24;
        BYTE4(v37) = BYTE4(v24);
        if (v35[24] == 1)
        {
          v40 = v35;
          sub_100190608(&v40);
        }

        if (v34 == 1)
        {
          v40 = &v33;
          sub_10019029C(&v40);
        }

        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        if (v45 == 1 && v44 < 0)
        {
          operator delete(v43);
        }

        if (v42 < 0)
        {
          operator delete(buf);
        }

        *&buf = v36;
        sub_1006FB6F8(&buf);
        if ((v24 & 0x100000000) != 0)
        {
          v30 = sub_100A99330(&v37);
          v16[2](v16, v30);
        }

        else
        {
          v16[2](v16, 0);
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v28 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_10177BC74();
        }

        LODWORD(buf) = 5;
        BYTE4(buf) = 1;
        v29 = sub_100A99330(&buf);
        v16[2](v16, v29);
      }

      if (v39)
      {
        sub_100004A34(v39);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v26 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      LODWORD(buf) = 4;
      BYTE4(buf) = 1;
      v27 = sub_100A99330(&buf);
      v16[2](v16, v27);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v25 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10177BCDC();
    }
  }
}

- (void)sendOneToManyGeolocationMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withGeoPush:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    if (v12 && v13 && v14 && v15)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v17 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        [v12 slotID];
        v18 = CTSubscriptionSlotAsString();
        *buf = 136315138;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendOneToManyTextMessage: [slot: %s]", buf, 0xCu);
      }

      v48 = 0;
      v49 = 0;
      sub_1006E5E0C(self, &v48);
      if (v48)
      {
        v38 = sub_100018A64([v12 slotID]);
        *v46 = 0u;
        v47 = 0u;
        v19 = [v15 additionalDescription];
        v20 = v19 == 0;

        if (!v20)
        {
          v21 = [v15 additionalDescription];
          v22 = v21;
          *buf = [v21 UTF8String];
          sub_100184AD0(v46, buf);
        }

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        *v51 = 0u;
        v52 = 0u;
        *buf = 0u;
        v37 = [v15 coordinates];
        v23 = [v37 longitude];
        [v23 doubleValue];
        *buf = v24;
        v25 = [v15 coordinates];
        v26 = [v25 latitude];
        [v26 doubleValue];
        *&buf[8] = v27;
        sub_10006F264(v51, v46);
        LOBYTE(v53) = 0;
        BYTE8(v54) = 0;
        v28 = [v15 metaData];
        sub_1006EBDBC(v28, &v55);

        v45 = 0;
        v29 = v48;
        sub_1006F907C(v13, v44);
        sub_1006E8724(v14, v39);
        v30 = (*(*v29 + 392))(v29, v38, v44, v39, buf);
        LODWORD(v45) = v30;
        BYTE4(v45) = BYTE4(v30);
        if (v43 == 1 && v42 < 0)
        {
          operator delete(__p);
        }

        if (v40 < 0)
        {
          operator delete(v39[0]);
        }

        v39[0] = v44;
        sub_1006FB6F8(v39);
        if ((v30 & 0x100000000) != 0)
        {
          v36 = sub_100A99330(&v45);
          v16[2](v16, v36);
        }

        else
        {
          v16[2](v16, 0);
        }

        if (BYTE8(v56) == 1)
        {
          v39[0] = &v55;
          sub_100190608(v39);
        }

        if (BYTE8(v54) == 1)
        {
          v39[0] = &v53;
          sub_10019029C(v39);
        }

        if (BYTE8(v52) == 1 && SBYTE7(v52) < 0)
        {
          operator delete(v51[0]);
        }

        if (BYTE8(v47) == 1 && SBYTE7(v47) < 0)
        {
          operator delete(v46[0]);
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v34 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_10177BC74();
        }

        *buf = 5;
        buf[4] = 1;
        v35 = sub_100A99330(buf);
        v16[2](v16, v35);
      }

      if (v49)
      {
        sub_100004A34(v49);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v32 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      *buf = 4;
      buf[4] = 1;
      v33 = sub_100A99330(buf);
      v16[2](v16, v33);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v31 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10177BCDC();
    }
  }
}

- (void)sendOneToManyFileTransferMessage:(id)a3 to:(id)a4 withMessageID:(id)a5 withDescriptor:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    if (v12 && v13 && v14 && v15)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v17 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        [v12 slotID];
        v18 = CTSubscriptionSlotAsString();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MSG] ==>> laz ==>> [CT] sendOneToManyTextMessage: [slot: %s]", &buf, 0xCu);
      }

      v58 = 0;
      v57 = 0;
      sub_1006E5E0C(self, &v57);
      if (v57)
      {
        v19 = sub_100018A64([v12 slotID]);
        bzero(v36, 0x208uLL);
        sub_1006EB6AC(v15, v36);
        v35 = 0;
        v20 = v57;
        sub_1006F907C(v13, v34);
        sub_1006E8724(v14, v29);
        sub_1001907C0(&buf, v36);
        sub_100190C40(v78, v55);
        sub_100190324(v79, v56);
        v80 = 0;
        v81 = 0;
        v21 = [v15 metaData];
        sub_1006EBDBC(v21, v82);
        v22 = (*(*v20 + 400))(v20, v19, v34, v29, &buf);
        LODWORD(v35) = v22;
        BYTE4(v35) = BYTE4(v22);
        if (v82[24] == 1)
        {
          v59 = v82;
          sub_100190608(&v59);
        }

        if (v81 == 1)
        {
          v59 = &v80;
          sub_10019029C(&v59);
        }

        if (v79[24] == 1)
        {
          v59 = v79;
          sub_100190608(&v59);
        }

        sub_100190D9C(v78);
        if (v77 == 1)
        {
          if (v76 == 1)
          {
            if (__p)
            {
              v75 = __p;
              operator delete(__p);
            }

            if (v73 == 1 && v71)
            {
              v72 = v71;
              operator delete(v71);
            }

            if (v70 == 1 && v68)
            {
              v69 = v68;
              operator delete(v68);
            }

            if (v66)
            {
              v67 = v66;
              operator delete(v66);
            }
          }

          if (v65 < 0)
          {
            operator delete(v64);
          }

          if (v63 < 0)
          {
            operator delete(v62);
          }

          if (v61 < 0)
          {
            operator delete(*(&buf + 1));
          }
        }

        if (v33 == 1 && v32 < 0)
        {
          operator delete(v31);
        }

        if (v30 < 0)
        {
          operator delete(v29[0]);
        }

        *&buf = v34;
        sub_1006FB6F8(&buf);
        if (BYTE4(v35) == 1)
        {
          v23 = sub_100A99330(&v35);
          v16[2](v16, v23);
        }

        else
        {
          v16[2](v16, 0);
        }

        if (v56[24] == 1)
        {
          *&buf = v56;
          sub_100190608(&buf);
        }

        sub_100190D9C(v55);
        if (v54 == 1)
        {
          if (v53 == 1)
          {
            if (v51)
            {
              v52 = v51;
              operator delete(v51);
            }

            if (v50 == 1 && v48)
            {
              v49 = v48;
              operator delete(v48);
            }

            if (v47 == 1 && v45)
            {
              v46 = v45;
              operator delete(v45);
            }

            if (v43)
            {
              v44 = v43;
              operator delete(v43);
            }
          }

          if (v42 < 0)
          {
            operator delete(v41);
          }

          if (v40 < 0)
          {
            operator delete(v39);
          }

          if (v38 < 0)
          {
            operator delete(v37);
          }
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v27 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_10177BC74();
        }

        LODWORD(buf) = 5;
        BYTE4(buf) = 1;
        v28 = sub_100A99330(&buf);
        v16[2](v16, v28);
      }

      if (v58)
      {
        sub_100004A34(v58);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v25 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10177ABCC();
      }

      LODWORD(buf) = 4;
      BYTE4(buf) = 1;
      v26 = sub_100A99330(&buf);
      v16[2](v16, v26);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v24 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10177BCDC();
    }
  }
}

- (void)copyPriVersion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v21 = objc_retainBlock(v7);
          v27[0] = off_101F11378;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 136))(v16, v20, v27);
          sub_10114B538(v27);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find ActivationInterface for getting PRI version", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for PRI version query", &v24, 2u);
  }

LABEL_23:
}

- (void)getActivationPolicyState:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v20);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_12:
    if (v21)
    {
      sub_100004A34(v21);
    }

    if (!v13)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v19 = v21;
      ctu::OsLogContext::~OsLogContext(&v20);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not find ActivationInterface for activation policy status query", &v20, 2u);
      }

      v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      v4[2](v4, 0, v16);
      goto LABEL_24;
    }

    v16 = objc_opt_new();
    [v16 setCarrierLock:0];
    v17 = (*(*v13 + 152))(v13);
    if (v17 == 1)
    {
      v18 = 1;
    }

    else
    {
      if (v17 != 2)
      {
LABEL_23:
        (v4)[2](v4, v16, 0);
LABEL_24:

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_26;
      }

      v18 = 2;
    }

    [v16 setCarrierLock:v18];
    goto LABEL_23;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v21;
  ctu::OsLogContext::~OsLogContext(&v20);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for activation policy status query", &v20, 2u);
  }

LABEL_26:
}

- (void)isFactoryDebugEnabled:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v18);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (v13)
        {
          v16 = [NSNumber numberWithBool:(*(*v13 + 96))(v13)];
          v4[2](v4, v16, 0);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v17 = v19;
          ctu::OsLogContext::~OsLogContext(&v18);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v18) = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find activation handler to query the factory debug state", &v18, 2u);
          }

          v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (v4)[2](v4, 0, v16);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v19;
  ctu::OsLogContext::~OsLogContext(&v18);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for factory debug state query", &v18, 2u);
  }

LABEL_21:
}

- (void)fetchBasebandTicket:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v6)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v21);
    v8 = ServiceMap;
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    v23 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v23);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
LABEL_12:
        if (v22)
        {
          sub_100004A34(v22);
        }

        if (v15)
        {
          v18 = objc_retainBlock(v6);
          v24[0] = off_101F11408;
          v24[1] = v18;
          v24[3] = v24;
          (*(*v15 + 104))(v15, v4, v24);
          sub_10000FF50(v24);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v19 = v22;
          ctu::OsLogContext::~OsLogContext(&v21);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v21) = 0;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not find activation handler to fetch baseband ticket", &v21, 2u);
          }

          v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(v6 + 2))(v6, 0, v20);
        }

        if ((v16 & 1) == 0)
        {
          sub_100004A34(v14);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v17 = v22;
  ctu::OsLogContext::~OsLogContext(&v21);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21) = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler to fetch baseband ticket", &v21, 2u);
  }

LABEL_21:
}

- (void)setVoLTEAudioCodec:(id)a3 codecInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
        [(CTXPCClientHandler *)self registry];
        ServiceMap = Registry::getServiceMap(*buf);
        v12 = ServiceMap;
        if ((v13 & 0x8000000000000000) != 0)
        {
          v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
          v15 = 5381;
          do
          {
            v13 = v15;
            v16 = *v14++;
            v15 = (33 * v15) ^ v16;
          }

          while (v16);
        }

        std::mutex::lock(ServiceMap);
        v33 = v13;
        v17 = sub_100009510(&v12[1].__m_.__sig, &v33);
        if (v17)
        {
          v18 = v17[3];
          v19 = v17[4];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v12);
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            v28 = v19;
            sub_100004A34(v19);
            v29 = 0;
LABEL_20:
            if (v31)
            {
              sub_100004A34(v31);
            }

            if (v18)
            {
              v27 = sub_100018A64([v8 slotID]);
              *buf = 0;
              v31 = 0;
              v32 = 0;
              [v9 callId];
              [v9 codec];
              [v9 amrMode];
              [v9 evsBandwidth];
              [v9 evsBitrate];
              [v9 sampleRate];
              [v9 i2SClockRate];
              AudioCodecInfo::AudioCodecInfo();
              v24 = objc_retainBlock(v10);
              v34[0] = off_101F11D78;
              v34[1] = v24;
              v34[3] = v34;
              (*(*v18 + 440))(v18, v27, buf, v34);
              sub_100014380(v34);
            }

            else
            {
              [(CTXPCClientHandler *)self getLogContext];
              v25 = v31;
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not find DataServiceInterface for setting VoLTE codec", buf, 2u);
              }

              v26 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:6 userInfo:0];
              (*(v10 + 2))(v10, v26);
            }

            if ((v29 & 1) == 0)
            {
              sub_100004A34(v28);
            }

            goto LABEL_29;
          }
        }

        else
        {
          v18 = 0;
        }

        std::mutex::unlock(v12);
        v28 = 0;
        v29 = 1;
        goto LABEL_20;
      }

      [(CTXPCClientHandler *)self getLogContext];
      v23 = v31;
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid codec info for setting VoLTE codec", buf, 2u);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v21 = v31;
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid context for setting VoLTE codec", buf, 2u);
      }
    }

    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(v10 + 2))(v10, v22);

    goto LABEL_29;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v20 = v31;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting VoLTE codec", buf, 2u);
  }

LABEL_29:
}

- (void)getSIMToolkitMenuForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v16)
        {
          v19 = sub_100018A64([v6 slotID]);
          v39 = 0;
          v37 = 0u;
          v38 = 0u;
          *buf = 0u;
          (*(*v16 + 24))(buf, v16, v19);
          if (v39)
          {
            v30 = v6;
            v20 = [CTSIMToolkitMenu alloc];
            if ((SBYTE7(v37) & 0x80u) == 0)
            {
              v21 = buf;
            }

            else
            {
              v21 = *buf;
            }

            v22 = [NSString stringWithUTF8String:v21];
            [v20 setTitle:v22];

            v23 = objc_alloc_init(NSMutableArray);
            if (*(&v38 + 1))
            {
              v24 = 1;
              do
              {
                __p[0] = 0;
                __p[1] = 0;
                v35 = 0;
                v33 = 0;
                v31 = 0;
                v32 = 0;
                if ((*(*v16 + 32))(v16, v19, v24 - 1, __p, &v33 + 1, &v32, &v33, &v31))
                {
                  if (v35 >= 0)
                  {
                    v25 = __p;
                  }

                  else
                  {
                    v25 = __p[0];
                  }

                  v26 = [NSString stringWithUTF8String:v25];
                  [v23 addObject:v26];
                }

                if (SHIBYTE(v35) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              while (*(&v38 + 1) > v24++);
            }

            [v20 setSubTitles:v23];
            v7[2](v7, v20, 0);

            v6 = v30;
          }

          else
          {
            v7[2](v7, 0, 0);
          }

          if (v39 == 1 && SBYTE7(v37) < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v28 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Could not find STK Controller", buf, 2u);
          }

          v29 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (v7)[2](v7, 0, v29);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for SIMToolkit main menu", buf, 2u);
  }

LABEL_39:
}

- (void)selectSIMToolkitMenuItemForContext:(id)a3 index:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v24);
  v12 = ServiceMap;
  if ((v13 & 0x8000000000000000) != 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v26 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v26);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_9:
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v19)
  {
    v21 = sub_100018A64([v8 slotID]);
    (*(*v19 + 112))(v19, v21, [v9 unsignedIntValue], 0);
    if (v10)
    {
      v10[2](v10, 0);
    }

    if ((v20 & 1) == 0)
    {
LABEL_15:
      sub_100004A34(v18);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find STK Controller", &v24, 2u);
    }

    v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    if (v10)
    {
      (v10)[2](v10, v23);
    }

    if ((v20 & 1) == 0)
    {
      goto LABEL_15;
    }
  }
}

- (void)getSIMToolkitListItemsForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v35;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for SIMToolkit items selection", buf, 2u);
    }

    goto LABEL_24;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(*buf);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v37 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v37);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_12:
  if (v35)
  {
    sub_100004A34(v35);
  }

  if (v16)
  {
    v29 = v7;
    v30 = v6;
    v19 = sub_100018A64([v6 slotID]);
    *buf = 0;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    LODWORD(v37) = 0;
    v32 = 0;
    v31 = 0;
    v20 = objc_alloc_init(NSMutableArray);
    v21 = 0;
    while ((*(*v16 + 56))(v16, v19, v21, buf, &v33 + 1, &v37, &v33, &v32, &v31))
    {
      v22 = [CTSIMToolkitItem alloc];
      if (v36 >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      v24 = [NSString stringWithUTF8String:v23];
      v25 = [v22 initWithText:v24 selected:v31];

      [v20 addObject:v25];
      v21 = (v21 + 1);
    }

    v26 = objc_alloc_init(CTSIMToolkitItemList);
    v7 = v29;
    v6 = v30;
    [v26 setItemList:v20];
    v7[2](v7, v26, 0);

    if (SHIBYTE(v36) < 0)
    {
      operator delete(*buf);
      if (v17)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if ((v17 & 1) == 0)
    {
LABEL_23:
      sub_100004A34(v15);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v27 = v35;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not find STK Controller", buf, 2u);
    }

    v28 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v7)[2](v7, 0, v28);

    if ((v17 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
}

- (void)selectSIMToolkitListItemForContext:(id)a3 session:(id)a4 response:(id)a5 index:(id)a6 completion:(id)a7
{
  v32 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(*buf);
  v17 = ServiceMap;
  if ((v18 & 0x8000000000000000) != 0)
  {
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(ServiceMap);
  v35 = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, &v35);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v17);
  v23 = 0;
  v25 = 1;
LABEL_9:
  if (v34)
  {
    sub_100004A34(v34);
  }

  if (v24)
  {
    v26 = [v12 unsignedIntValue];
    v27 = sub_101164C98(v13);
    v28 = [v14 unsignedIntValue];
    v29 = sub_100018A64([v32 slotID]);
    (*(*v24 + 88))(v24, v29, v26, v27, v28);
    if (v15)
    {
      v15[2](v15, 0);
    }

    if ((v25 & 1) == 0)
    {
LABEL_15:
      sub_100004A34(v23);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v30 = v34;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not find STK Controller", buf, 2u);
    }

    v31 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    if (v15)
    {
      (v15)[2](v15, v31);
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }
  }
}

- (void)sendSIMToolkitResponseForContext:(id)a3 session:(id)a4 response:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v31);
  v15 = ServiceMap;
  if ((v16 & 0x8000000000000000) != 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(ServiceMap);
  v33 = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &v33);
  if (v20)
  {
    v22 = v20[3];
    v21 = v20[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v23 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v23 = 1;
LABEL_9:
  if (v32)
  {
    sub_100004A34(v32);
  }

  if (v22)
  {
    v24 = [v11 unsignedIntValue];
    v25 = sub_101164C98(v12);
    v26 = sub_100018A64([v10 slotID]);
    v27 = *v22;
    if (v25 == 6)
    {
      v28 = 1;
    }

    else
    {
      if (v25 != 7)
      {
        (*(v27 + 72))(v22, v26, v24, v25);
LABEL_23:
        if (v13)
        {
          v13[2](v13, 0);
        }

        goto LABEL_25;
      }

      v28 = 0;
    }

    (*(v27 + 80))(v22, v26, v24, v25, v28);
    goto LABEL_23;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v29 = v32;
  ctu::OsLogContext::~OsLogContext(&v31);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v31) = 0;
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Could not find STK Controller", &v31, 2u);
  }

  v30 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  if (v13)
  {
    (v13)[2](v13, v30);
  }

LABEL_25:
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }
}

- (void)sendSIMToolkitStringResponseForContext:(id)a3 session:(id)a4 response:(id)a5 string:(id)a6 completion:(id)a7
{
  v32 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(__p[0]);
  v17 = ServiceMap;
  if ((v18 & 0x8000000000000000) != 0)
  {
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(ServiceMap);
  v37 = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, &v37);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v17);
  v23 = 0;
  v25 = 1;
LABEL_9:
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (!v24)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v30 = __p[1];
    ctu::OsLogContext::~OsLogContext(__p);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not find STK Controller", __p, 2u);
    }

    v31 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    if (v15)
    {
      v15[2](v15, v31);
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  v26 = [v12 unsignedIntValue];
  v27 = sub_101164C98(v13);
  __p[0] = 0;
  __p[1] = 0;
  v36 = 0;
  sub_10000501C(__p, [v14 UTF8String]);
  v28 = sub_100018A64([v32 slotID]);
  if (v27 >= 2)
  {
    if (v27 == 6)
    {
      v29 = 1;
      goto LABEL_25;
    }

    if (v27 == 7)
    {
      v29 = 0;
LABEL_25:
      (*(*v24 + 80))(v24, v28, v26, v27, v29);
      goto LABEL_29;
    }

    (*(*v24 + 72))(v24, v28, v26, v27);
LABEL_29:
    if (!v15)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (SHIBYTE(v36) < 0)
  {
    sub_100005F2C(__dst, __p[0], __p[1]);
  }

  else
  {
    *__dst = *__p;
    v34 = v36;
  }

  (*(*v24 + 96))(v24, v28, v26, v27, __dst);
  if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(__dst[0]);
  if (v15)
  {
LABEL_30:
    v15[2](v15, 0);
  }

LABEL_31:
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    if (v25)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if ((v25 & 1) == 0)
  {
LABEL_33:
    sub_100004A34(v23);
  }

LABEL_34:
}

- (void)sendSIMToolkitBooleanResponseForContext:(id)a3 session:(id)a4 response:(id)a5 yesNo:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v32);
  v17 = ServiceMap;
  if ((v18 & 0x8000000000000000) != 0)
  {
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(ServiceMap);
  v34 = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, &v34);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v17);
  v23 = 0;
  v25 = 1;
LABEL_9:
  if (v33)
  {
    sub_100004A34(v33);
  }

  if (v24)
  {
    v26 = [v13 unsignedIntValue];
    v27 = sub_101164C98(v14);
    v28 = sub_100018A64([v12 slotID]);
    if (v27 < 2)
    {
      v29 = (*v24 + 104);
    }

    else if (v27 == 6)
    {
      v29 = (*v24 + 80);
      v8 = 1;
    }

    else
    {
      if (v27 != 7)
      {
        (*(*v24 + 72))(v24, v28, v26, v27);
LABEL_24:
        if (v15)
        {
          v15[2](v15, 0);
        }

        goto LABEL_26;
      }

      v8 = 0;
      v29 = (*v24 + 80);
    }

    (*v29)(v24, v28, v26, v27, v8);
    goto LABEL_24;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v30 = v33;
  ctu::OsLogContext::~OsLogContext(&v32);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v32) = 0;
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not find STK Controller", &v32, 2u);
  }

  v31 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  if (v15)
  {
    (v15)[2](v15, v31);
  }

LABEL_26:
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }
}

- (void)sendSIMToolkitUserActivityForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v20);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v22 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v22);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v16)
  {
    (*(*v16 + 128))(v16);
    if (v7)
    {
      v7[2](v7, 0);
    }

    if ((v17 & 1) == 0)
    {
LABEL_15:
      sub_100004A34(v15);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v21;
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not find STK Controller", &v20, 2u);
    }

    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    if (v7)
    {
      (v7)[2](v7, v19);
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }
  }
}

- (void)sendSIMToolkitDisplayReadyForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v20);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v22 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v22);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v16)
  {
    (*(*v16 + 144))(v16);
    if (v7)
    {
      v7[2](v7, 0);
    }

    if ((v17 & 1) == 0)
    {
LABEL_15:
      sub_100004A34(v15);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v21;
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not find STK Controller", &v20, 2u);
    }

    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    if (v7)
    {
      (v7)[2](v7, v19);
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }
  }
}

- (void)getSIMToolkitUSSDStringForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(__p);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v27 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          if ((sub_100B051A4() & 2) != 0)
          {
            v7[2](v7, @"Please add a description for this capture:", 1, 0);
          }

          else
          {
            __p = 0;
            v25 = 0;
            v26 = 0;
            (*(*v16 + 88))(&__p, v16);
            v19 = (*(*v16 + 96))(v16);
            if (v26 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            v21 = [NSString stringWithUTF8String:p_p];
            v7[2](v7, v21, v19, 0);

            if (SHIBYTE(v26) < 0)
            {
              operator delete(__p);
            }
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&__p);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(__p) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find Call Controller", &__p, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (v7)[2](v7, &stru_101F6AFB8, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&__p);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for SIMToolkit get USSD string", &__p, 2u);
  }

LABEL_27:
}

- (void)sendSIMToolkitUSSDResponseForContext:(id)a3 response:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v42[0]);
  v12 = ServiceMap;
  if ((v13 & 0x8000000000000000) != 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v38 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v38);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_9:
  if (v42[1])
  {
    sub_100004A34(v42[1]);
  }

  if (v19 && (sub_100B051A4() & 8) != 0)
  {
    sub_100B051E4(-1);
    v42[0] = 0;
    v42[1] = 0;
    v43 = 0;
    v21 = v42;
    sub_10000501C(v42, [v9 UTF8String]);
    v22 = HIBYTE(v43);
    v23 = v42[0];
    if (v43 >= 0)
    {
      v24 = (v42 + HIBYTE(v43));
    }

    else
    {
      v24 = (v42[0] + v42[1]);
    }

    if (v43 < 0)
    {
      v21 = v42[0];
    }

    if (v21 != v24)
    {
      do
      {
        *v21 = __tolower(*v21);
        v21 = (v21 + 1);
      }

      while (v21 != v24);
      v22 = HIBYTE(v43);
      v23 = v42[0];
    }

    if (v22 >= 0)
    {
      v25 = v42;
    }

    else
    {
      v25 = v23;
    }

    sub_10000501C(__p, v25);
    (*(*v19 + 120))(v19, __p);
    if (v41 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10097D7AC();
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42[0]);
    }
  }

  v42[0] = 6144;
  if (IsTelephonyRunningExtended(v42))
  {
    if ((sub_100B051A4() & 2) == 0)
    {
      [(CTXPCClientHandler *)self registry];
      v26 = Registry::getServiceMap(v42[0]);
      v27 = v26;
      if ((v28 & 0x8000000000000000) != 0)
      {
        v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
        v30 = 5381;
        do
        {
          v28 = v30;
          v31 = *v29++;
          v30 = (33 * v30) ^ v31;
        }

        while (v31);
      }

      std::mutex::lock(v26);
      v38 = v28;
      v32 = sub_100009510(&v27[1].__m_.__sig, &v38);
      if (v32)
      {
        v33 = v32[3];
        v34 = v32[4];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v27);
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v34);
          v35 = 0;
LABEL_42:
          if (v42[1])
          {
            sub_100004A34(v42[1]);
          }

          if (v33)
          {
            v42[0] = 0;
            v42[1] = 0;
            v43 = 0;
            sub_10000501C(v42, [v9 UTF8String]);
            if (SHIBYTE(v43) < 0)
            {
              sub_100005F2C(v36, v42[0], v42[1]);
            }

            else
            {
              *v36 = *v42;
              v37 = v43;
            }

            (*(*v33 + 112))(v33, v36);
            if (SHIBYTE(v37) < 0)
            {
              operator delete(v36[0]);
            }

            if (SHIBYTE(v43) < 0)
            {
              operator delete(v42[0]);
            }
          }

          if ((v35 & 1) == 0)
          {
            sub_100004A34(v34);
          }

          goto LABEL_54;
        }
      }

      else
      {
        v33 = 0;
      }

      std::mutex::unlock(v27);
      v34 = 0;
      v35 = 1;
      goto LABEL_42;
    }

    sub_100B051E4(-1);
    v42[0] = 0;
    v42[1] = 0;
    v43 = 0;
    sub_10000501C(v42, [v9 UTF8String]);
    sub_10005B8C8(&v38);
    (*(*v38 + 216))(v38, v42);
    if (v39)
    {
      sub_100004A34(v39);
    }

    sub_10097D7AC();
    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42[0]);
    }
  }

LABEL_54:
  if (v10)
  {
    v10[2](v10, 0);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }
}

- (void)cancelSIMToolkitUSSDSessionForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (sub_100B051A4())
  {
    sub_100B051E4(-1);
    sub_10097D7AC();
    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v18);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v20 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v20);
  if (!v14)
  {
    v16 = 0;
    goto LABEL_10;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
LABEL_10:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
LABEL_11:
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v16)
  {
    (*(*v16 + 120))(v16);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

LABEL_17:
  if (v7)
  {
    v7[2](v7, 0);
  }
}

- (void)reliableNetworkFallback:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v23);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v25 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v24)
        {
          sub_100004A34(v24);
        }

        if (v16)
        {
          v19 = sub_10002A8E0(v6);
          v20 = objc_retainBlock(v7);
          v26[0] = off_101F1AB10;
          v26[1] = v20;
          v26[3] = v26;
          (*(*v16 + 120))(v16, v19, v26);
          sub_100D5ED24(v26);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v21 = v24;
          ctu::OsLogContext::~OsLogContext(&v23);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v23) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find cellular usage policy controller for getting current setting", &v23, 2u);
          }

          v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(v7 + 2))(v7, 0, 0, v22);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for rnf query", &v23, 2u);
  }

LABEL_21:
}

- (void)setReliableNetworkFallback:(id)a3 enable:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v20 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting rnf", &v24, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v24);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v26 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v26);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_12:
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v18)
  {
    v21 = sub_10002A8E0(v8);
    (*(*v18 + 128))(v18, v21, v6);
    v9[2](v9, 0);
    if ((v19 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v17);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find cellular usage policy controller for setting current setting", &v24, 2u);
    }

    v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v9)[2](v9, v23);

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)lowDataMode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v23);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v25 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v24)
        {
          sub_100004A34(v24);
        }

        if (v16)
        {
          v19 = sub_10002A8E0(v6);
          v20 = objc_retainBlock(v7);
          v26[0] = off_101F1ABA0;
          v26[1] = v20;
          v26[3] = v26;
          (*(*v16 + 16))(v16, v19, v26);
          sub_10000FF50(v26);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v21 = v24;
          ctu::OsLogContext::~OsLogContext(&v23);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v23) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for getting current setting", &v23, 2u);
          }

          v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(v7 + 2))(v7, 0, v22);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for low data mode query", &v23, 2u);
  }

LABEL_21:
}

- (void)setLowDataMode:(id)a3 enable:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v20 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting low data mode", &v24, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v24);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v26 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v26);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_12:
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v18)
  {
    v21 = sub_10002A8E0(v8);
    (*(*v18 + 24))(v18, v21, v6);
    v9[2](v9, 0);
    if ((v19 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v17);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for setting current setting", &v24, 2u);
    }

    v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v9)[2](v9, v23);

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)isSmartDataModeSupportedWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v18);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (v13)
        {
          v16 = (*(*v13 + 32))(v13);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v17 = v19;
          ctu::OsLogContext::~OsLogContext(&v18);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v18) = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for getting current support", &v18, 2u);
          }

          v16 = 0;
        }

        v4[2](v4, v16);
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v19;
  ctu::OsLogContext::~OsLogContext(&v18);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for smart data mode support query", &v18, 2u);
  }

LABEL_21:
}

- (void)smartDataMode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for smart data mode query", &v23, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v23);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v25 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_12:
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v16)
  {
    v19 = sub_10002A8E0(v6);
    v20 = (*(*v16 + 40))(v16, v19);
    v7[2](v7, v20, 0);
    if ((v17 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v15);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v21 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for getting current setting", &v23, 2u);
    }

    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v7)[2](v7, 0, v22);

    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)setSmartDataMode:(id)a3 enable:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v20 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting smart data mode", &v24, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v24);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v26 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v26);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_12:
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v18)
  {
    v21 = sub_10002A8E0(v8);
    (*(*v18 + 48))(v18, v21, v6);
    v9[2](v9, 0);
    if ((v19 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v17);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for setting current setting", &v24, 2u);
    }

    v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v9)[2](v9, v23);

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)isHighDataModeSupported:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v22);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v24 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v24);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v23)
        {
          sub_100004A34(v23);
        }

        if (v16)
        {
          v19 = sub_10002A8E0(v6);
          v20 = (*(*v16 + 56))(v16, v19);
          v7[2](v7, v20);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v21 = v23;
          ctu::OsLogContext::~OsLogContext(&v22);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v22) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for getting current support", &v22, 2u);
          }

          v7[2](v7, 0);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v23;
  ctu::OsLogContext::~OsLogContext(&v22);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v22) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for high data mode support query", &v22, 2u);
  }

LABEL_21:
}

- (void)interfaceCostExpensive:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for interface cost query", &v23, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v23);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v25 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_12:
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v16)
  {
    v19 = sub_10002A8E0(v6);
    v20 = (*(*v16 + 64))(v16, v19);
    v7[2](v7, v20, 0);
    if ((v17 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v15);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v21 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for getting current setting", &v23, 2u);
    }

    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v7)[2](v7, 1, v22);

    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)setInterfaceCost:(id)a3 expensive:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v20 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting interface cost", &v24, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v24);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v26 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v26);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_12:
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v18)
  {
    v21 = sub_10002A8E0(v8);
    (*(*v18 + 72))(v18, v21, v6);
    v9[2](v9, 0);
    if ((v19 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v17);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for setting current setting", &v24, 2u);
    }

    v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v9)[2](v9, v23);

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)overriddenInterfaceCostInexpensiveWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v15 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for overridden interface cost query", &v19, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v19);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v21 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v21);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_12:
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v13)
  {
    v16 = (*(*v13 + 80))(v13);
    v4[2](v4, v16, 0);
    if ((v14 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v12);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for getting current setting", &v19, 2u);
    }

    v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v4)[2](v4, 1, v18);

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)setOverriddenInterfaceCostInexpensive:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!v6)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = v21;
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting overridden interface cost", &v20, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v20);
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  v22 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v22);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_12:
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v15)
  {
    (*(*v15 + 88))(v15, v4);
    v6[2](v6, 0);
    if ((v16 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v14);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v21;
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not find SaveDataMode interface for setting current setting", &v20, 2u);
    }

    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v6)[2](v6, v19);

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)privacyProxy:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for privacy proxy query", &v23, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v23);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v25 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_12:
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v16)
  {
    v19 = sub_10002A8E0(v6);
    v20 = (*(*v16 + 16))(v16, v19);
    (*(v7 + 2))(v7, v20 & 1, (v20 >> 8) & 1, 0);
    if ((v17 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v15);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v21 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find privacy proxy interface for getting current setting", &v23, 2u);
    }

    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v22);

    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)setPrivacyProxy:(id)a3 enabled:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v20 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting the privacy proxy.", &v24, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v24);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v26 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v26);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_12:
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v18)
  {
    v21 = sub_10002A8E0(v8);
    (*(*v18 + 24))(v18, v21, v6);
    v9[2](v9, 0);
    if ((v19 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v17);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = v25;
    ctu::OsLogContext::~OsLogContext(&v24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find privacy proxy interface for setting privacy proxy", &v24, 2u);
    }

    v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v9)[2](v9, v23);

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)checkRadioBootHealth:(id)a3
{
  v4 = a3;
  if (v4)
  {
    *buf = 0;
    v11 = 0;
    sub_10005B8C8(buf);
    if (*buf && (v9 = 2048, IsTelephonyRunningExtended(&v9)))
    {
      v5 = *buf;
      v6 = objc_retainBlock(v4);
      v12[0] = off_101F249C8;
      v12[1] = v6;
      v12[3] = v12;
      (*(*v5 + 88))(v5, v12);
      sub_10000FF50(v12);
    }

    else
    {
      v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      (*(v4 + 2))(v4, 0, v7);
    }

    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = v11;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for checking radio boot health", buf, 2u);
    }
  }
}

- (void)checkRadioBootHealthDetails:(id)a3
{
  v4 = a3;
  if (v4)
  {
    *buf = 0;
    v11 = 0;
    sub_10005B8C8(buf);
    if (*buf && (v9 = 2048, IsTelephonyRunningExtended(&v9)))
    {
      v5 = *buf;
      v6 = objc_retainBlock(v4);
      v12[0] = off_101F24A48;
      v12[1] = v6;
      v12[3] = v12;
      (*(*v5 + 96))(v5, v12);
      sub_1006647E4(v12);
    }

    else
    {
      v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      (*(v4 + 2))(v4, 0, 0, v7);
    }

    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = v11;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for checking radio boot health", buf, 2u);
    }
  }
}

- (void)getBasebandRadioFrequencyFrontEndScanData:(id)a3
{
  v4 = a3;
  if (v4)
  {
    *buf = 0;
    v11 = 0;
    sub_10005B8C8(buf);
    if (*buf && (v9 = 2048, IsTelephonyRunningExtended(&v9)))
    {
      v5 = *buf;
      object[0] = objc_retainBlock(v4);
      [(CTXPCClientHandler *)self getQueue];
      v12 = off_101F24AD8;
      v13 = *object;
      v14 = &v12;
      (*(*v5 + 104))(v5, &v12);
      sub_1006648E4(&v12);
      v6 = 0;
    }

    else
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      (*(v4 + 2))(v4, 0, v6);
    }

    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v7 = v11;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid completion handler for getting RFFE scan data", buf, 2u);
    }
  }
}

- (void)checkCellularDiagnosticsStatus:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(buf);
    v6 = ServiceMap;
    v7 = "18DiagnosticsService";
    if (("18DiagnosticsService" & 0x8000000000000000) != 0)
    {
      v8 = ("18DiagnosticsService" & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v21 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v21);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_12:
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (!v13)
    {
      v20 = 0;
      v19 = -3;
      goto LABEL_30;
    }

    v16 = sub_10109DCB0(v13);
    [(CTXPCClientHandler *)self getLogContext];
    v17 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = cellularDiagnosticsStateAsString();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Cellular Diagnostics status: %s", &buf, 0xCu);
    }

    v19 = v16;
    if (v16 <= 0)
    {
      if ((v16 + 3) < 2)
      {
        v20 = 0;
        goto LABEL_30;
      }

      if (!v16)
      {
        v20 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      if ((v16 - 1) < 2)
      {
        v20 = 2;
        goto LABEL_30;
      }

      if (v16 == 3)
      {
        v20 = 3;
LABEL_30:
        v4[2](v4, v20, v19);
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_32;
      }

      if (v16 == 4)
      {
        v19 = ((v16 >> 24) & 0xFF00) + 4;
      }
    }

    v20 = 4;
    goto LABEL_30;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for getting diagnostics status", &buf, 2u);
  }

LABEL_32:
}

- (void)activateTurboMode:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v5 = v19;
    ctu::OsLogContext::~OsLogContext(&v18);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No completion handler for activating turbo mode. Activation can still proceed but clients will not be notified of success or failure.", &v18, 2u);
    }
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v18);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v20 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v20);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_12:
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v14)
  {
    v16 = objc_retainBlock(v4);
    v21[0] = off_101F24B68;
    v21[1] = v16;
    v21[3] = v21;
    (*(*v14 + 224))(v14, v21);
    sub_10000FF50(v21);
    goto LABEL_19;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v17 = v19;
  ctu::OsLogContext::~OsLogContext(&v18);
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    if (!v4)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  LOWORD(v18) = 0;
  _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find BasebandSettingsInterface for activating turbo mode.", &v18, 2u);
  if (v4)
  {
LABEL_18:
    (*(v4 + 2))(v4, 0);
  }

LABEL_19:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

- (void)checkBasebandConfigUpdateInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    *buf = 0;
    v11 = 0;
    sub_10005B8C8(buf);
    if (*buf && (v9 = 2048, IsTelephonyRunningExtended(&v9)))
    {
      v5 = *buf;
      v6 = objc_retainBlock(v4);
      v12[0] = off_101F24BE8;
      v12[1] = v6;
      v12[3] = v12;
      (*(*v5 + 112))(v5, v12);
      sub_100664864(v12);
    }

    else
    {
      v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      (*(v4 + 2))(v4, 0, v7);
    }

    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = v11;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for checking baseband config update info", buf, 2u);
    }
  }
}

- (void)getSupportsTARandomization:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v23);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v25 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v24)
        {
          sub_100004A34(v24);
        }

        if (v16)
        {
          v19 = sub_10002A8E0(v6);
          v20 = objc_retainBlock(v7);
          v26[0] = off_101F24C78;
          v26[1] = v20;
          v26[3] = v26;
          (*(*v16 + 232))(v16, v19, v26);
          sub_10070C94C(v26);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v21 = v24;
          ctu::OsLogContext::~OsLogContext(&v23);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v23) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find baseband settings interface for getting TA randomization support", &v23, 2u);
          }

          v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(v7 + 2))(v7, 0, v22);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getting TA randomization support", &v23, 2u);
  }

LABEL_21:
}

- (void)getTARandomizationSetting:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v23);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v25 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_12:
    if (v24)
    {
      sub_100004A34(v24);
    }

    if (v16)
    {
      v19 = sub_10002A8E0(v6);
      v20 = (*(*v16 + 240))(v16, v19);
      if ((v20 & 0x100) != 0)
      {
        v21 = [NSNumber numberWithBool:v20 & 1];
        v7[2](v7, v21, 0);
LABEL_21:

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v22 = v24;
      ctu::OsLogContext::~OsLogContext(&v23);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v23) = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find baseband settings interface for getting TA randomization preference", &v23, 2u);
      }
    }

    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v7)[2](v7, 0, v21);
    goto LABEL_21;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getting TA randomization setting", &v23, 2u);
  }

LABEL_23:
}

- (void)setTARandomizationUserSetting:(id)a3 enabled:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v25);
    v11 = ServiceMap;
    if ((v12 & 0x8000000000000000) != 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    v27 = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, &v27);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
LABEL_12:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v18)
        {
          v21 = sub_10002A8E0(v8);
          v22 = objc_retainBlock(v9);
          v28[0] = off_101F24CF8;
          v28[1] = v22;
          v28[3] = v28;
          (*(*v18 + 248))(v18, v21, v6, v28);
          sub_100014380(v28);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find baseband settings interface for setting TA randomization preference", &v25, 2u);
          }

          v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(v9 + 2))(v9, v24);
        }

        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v20 = v26;
  ctu::OsLogContext::~OsLogContext(&v25);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting TA randomization preference", &v25, 2u);
  }

LABEL_21:
}

- (void)getTransportKeysToUpdate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v20);
    v7 = ServiceMap;
    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v10 = 5381;
      do
      {
        v8 = v10;
        v11 = *v9++;
        v10 = (33 * v10) ^ v11;
      }

      while (v11);
    }

    std::mutex::lock(ServiceMap);
    v22 = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, &v22);
    if (v12)
    {
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_13:
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v14)
        {
          v17 = self;
          v23[0] = off_101F24D78;
          v23[1] = v17;
          v23[2] = v5;
          v23[3] = v23;
          (**v14)(v14, v23);
          sub_1012A003C(v23);
          v5 = 0;
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v18 = v21;
          ctu::OsLogContext::~OsLogContext(&v20);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v20) = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Stewie is not available", &v20, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (v5)[2](v5, 0, v19);
        }

        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_13;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v16 = v21;
  ctu::OsLogContext::~OsLogContext(&v20);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid completion handler for getTransportKeysToUpdate", &v20, 2u);
  }

  v5 = 0;
LABEL_22:
}

- (void)setTransportKeysUpdated:(BOOL)a3 with:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v53 = v8;
  v51 = a5;
  if (v51)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(buf);
    v10 = ServiceMap;
    if (v11 < 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    v60 = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &v60);
    v49 = v6;
    if (v15)
    {
      v16 = v15[3];
      v17 = v15[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v50 = 0;
LABEL_12:
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if (v16)
        {
          v47 = v16;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          if (v8)
          {
            v19 = [v8 stks];
            if (v19)
            {
              v20 = v17;
              v21 = [v8 stks];
              v22 = [v21 count] == 0;

              if (!v22)
              {
                v23 = [v8 stks];
                v24 = [v23 count];
                if (0xAAAAAAAAAAAAAAABLL * ((v62 - v60) >> 3) < v24)
                {
                  if (v24 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    v67 = &v60;
                    sub_10129FA90(v24);
                  }

                  sub_1000CE3D4();
                }

                v58 = 0u;
                v59 = 0u;
                v56 = 0u;
                v57 = 0u;
                v25 = [v8 stks];
                v26 = [v25 countByEnumeratingWithState:&v56 objects:v63 count:16];
                if (v26)
                {
                  v27 = *v57;
                  obj = v25;
                  do
                  {
                    for (i = 0; i != v26; i = i + 1)
                    {
                      if (*v57 != v27)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v29 = *(*(&v56 + 1) + 8 * i);
                      v54 = [v29 index];
                      v30 = [v29 key_epki];
                      v31 = v30;
                      *&v55 = v30;
                      if (v30)
                      {
                        CFRetain(v30);
                      }

                      v32 = [v29 stk];
                      v33 = v32;
                      *(&v55 + 1) = v32;
                      if (v32)
                      {
                        CFRetain(v32);
                      }

                      v34 = v61;
                      if (v61 >= v62)
                      {
                        v36 = 0xAAAAAAAAAAAAAAABLL * (v61 - v60);
                        v37 = v36 + 1;
                        if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
                        {
                          sub_1000CE3D4();
                        }

                        if (0x5555555555555556 * ((v62 - v60) >> 3) > v37)
                        {
                          v37 = 0x5555555555555556 * ((v62 - v60) >> 3);
                        }

                        if (0xAAAAAAAAAAAAAAABLL * ((v62 - v60) >> 3) >= 0x555555555555555)
                        {
                          v38 = 0xAAAAAAAAAAAAAAALL;
                        }

                        else
                        {
                          v38 = v37;
                        }

                        v67 = &v60;
                        if (v38)
                        {
                          sub_10129FA90(v38);
                        }

                        v39 = 8 * (v61 - v60);
                        *v39 = v54;
                        *(v39 + 8) = 0;
                        *(v39 + 8) = v55;
                        *&v55 = 0;
                        *(v39 + 16) = 0;
                        *(v39 + 16) = *(&v55 + 1);
                        *(&v55 + 1) = 0;
                        v35 = (24 * v36 + 24);
                        v40 = (24 * v36 + v60 - v61);
                        sub_10129FAE8(v60, v61, v39 + v60 - v61);
                        v41 = v60;
                        v42 = v62;
                        v60 = v40;
                        v61 = v35;
                        v62 = 0;
                        v65 = v41;
                        v66 = v42;
                        *&buf = v41;
                        *(&buf + 1) = v41;
                        sub_10129FB70(&buf);
                        v8 = v53;
                      }

                      else
                      {
                        *v61 = v54;
                        *(v34 + 1) = 0u;
                        *(v34 + 1) = v55;
                        v55 = 0u;
                        v35 = v34 + 3;
                      }

                      v61 = v35;
                      sub_10002D760(&v55 + 1);
                      sub_10002D760(&v55);

                      v17 = v20;
                    }

                    v25 = obj;
                    v26 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
                  }

                  while (v26);
                }
              }
            }
          }

          v43 = [v8 sps_environment];
          (*(*v48 + 8))(v48, v49, &v60, v43);
          [(CTXPCClientHandler *)self getLogContext];
          v44 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v8;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "processed setTransportKeysUpdated: %@", &buf, 0xCu);
          }

          v51[2](v51, 0);
          *&buf = &v60;
          sub_10129FBD4(&buf);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v45 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Stewie is not available", &buf, 2u);
          }

          v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (v51)[2](v51, v46);
        }

        if ((v50 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        goto LABEL_52;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v10);
    v17 = 0;
    v50 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for setTransportKeysUpdated", &buf, 2u);
  }

LABEL_52:
}

- (void)forceRollAllTransportKeys:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v15 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for forceRollAllTransportKeys", &v19, 2u);
    }

    goto LABEL_19;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v19);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v21 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v21);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_12:
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v13)
  {
    (*(*v13 + 16))(v13);
    [(CTXPCClientHandler *)self getLogContext];
    v16 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "processed forceRollAllTransportKeys", &v19, 2u);
    }

    v4[2](v4, 0);
    if ((v14 & 1) == 0)
    {
LABEL_18:
      sub_100004A34(v12);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Stewie is not available", &v19, 2u);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v4)[2](v4, v18);

    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
}

- (void)getSatelliteMsgCfgToUpdate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v20);
    v7 = ServiceMap;
    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v10 = 5381;
      do
      {
        v8 = v10;
        v11 = *v9++;
        v10 = (33 * v10) ^ v11;
      }

      while (v11);
    }

    std::mutex::lock(ServiceMap);
    v22 = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, &v22);
    if (v12)
    {
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_13:
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v14)
        {
          v23[1] = self;
          v23[2] = v5;
          v23[3] = v23;
          v17 = *(v14 + 8);
          v23[0] = off_101F24E08;
          (*v17)(v14 + 8, v23);
          sub_1012A03F8(v23);
          v5 = 0;
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v18 = v21;
          ctu::OsLogContext::~OsLogContext(&v20);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v20) = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Stewie is not available", &v20, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (v5)[2](v5, 0, v19);
        }

        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_13;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v16 = v21;
  ctu::OsLogContext::~OsLogContext(&v20);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid completion handler for getSatelliteMsgCfgToUpdate", &v20, 2u);
  }

  v5 = 0;
LABEL_22:
}

- (void)setSatelliteMsgCfgUpdated:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(buf);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v24 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v24);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if (v16)
        {
          v19 = [v6 result];
          v20 = [v6 cfg_id];
          sub_100047544(v20, &buf);
          (*(*(v16 + 8) + 8))(v16 + 8, v19, buf, [v6 sps_environment]);
          sub_1000475BC(&buf);

          [(CTXPCClientHandler *)self getLogContext];
          v21 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v6;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "processed setSatelliteMsgCfgUpdated: %@", &buf, 0xCu);
          }

          v7[2](v7, 0);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Stewie is not available", &buf, 2u);
          }

          v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (v7)[2](v7, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for setSatelliteMsgCfgUpdated", &buf, 2u);
  }

LABEL_23:
}

- (void)reprovisionSatelliteMsg:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v7 = ServiceMap;
    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v10 = 5381;
      do
      {
        v8 = v10;
        v11 = *v9++;
        v10 = (33 * v10) ^ v11;
      }

      while (v11);
    }

    std::mutex::lock(ServiceMap);
    v20 = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, &v20);
    if (v12)
    {
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_12:
        if (v22)
        {
          sub_100004A34(v22);
        }

        if (v14)
        {
          v17 = self;
          objc_retainBlock(v5);
          operator new();
        }

        [(CTXPCClientHandler *)self getLogContext];
        v18 = v22;
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Stewie is not available", buf, 2u);
        }

        v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        (*(v5 + 2))(v5, v19);

        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v16 = v22;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid completion handler for reprovisionSatelliteMsg", buf, 2u);
  }

LABEL_20:
}

- (void)hasDedicatedBearerSupport:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v23)
        {
          sub_100004A34(v23);
        }

        if (v13)
        {
          v20 = 0;
          v21 = 0;
          (*(*v13 + 32))(&v20, v13);
          v16 = v20;
          if (v20)
          {
            v17 = objc_retainBlock(v4);
            *buf = off_101F24F18;
            v23 = v17;
            v24 = buf;
            (**v16)(v16, buf);
            sub_10000FF50(buf);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v19 = v23;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
            }

            (*(v4 + 2))(v4, 0);
          }

          if (v21)
          {
            sub_100004A34(v21);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v18 = v23;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
          }

          (*(v4 + 2))(v4, 0);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v23;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for hasDedicatedBearerSupport", buf, 2u);
  }

LABEL_27:
}

- (void)addDedicatedBearer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v29 = v6;
  v30 = a4;
  if (v30)
  {
    if (v6)
    {
      [(CTXPCClientHandler *)self registry];
      ServiceMap = Registry::getServiceMap(*buf);
      v8 = ServiceMap;
      if (v9 < 0)
      {
        v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
        v11 = 5381;
        do
        {
          v9 = v11;
          v12 = *v10++;
          v11 = (33 * v11) ^ v12;
        }

        while (v12);
      }

      std::mutex::lock(ServiceMap);
      __src[0] = v9;
      v13 = sub_100009510(&v8[1].__m_.__sig, __src);
      if (v13)
      {
        v15 = v13[3];
        v14 = v13[4];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v8);
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          v26 = v14;
          sub_100004A34(v14);
          v28 = 0;
LABEL_16:
          if (v36)
          {
            sub_100004A34(v36);
          }

          if (v15)
          {
            v33 = 0;
            v34 = 0;
            (*(*v15 + 32))(&v33, v15);
            if (v33)
            {
              memset(__src, 0, sizeof(__src));
              memset(v31, 0, sizeof(v31));
              v19 = [v29 details];
              if ([v19 countByEnumeratingWithState:v31 objects:v38 count:16])
              {
                operator new();
              }

              v20 = v33;
              v21 = objc_retainBlock(v30);
              *buf = off_101F24FE8;
              v36 = v21;
              v37 = buf;
              (*(*v20 + 8))(v20, __src, buf);
              sub_10036EC1C(buf);
              *buf = __src;
              sub_1000212F4(buf);
            }

            else
            {
              [(CTXPCClientHandler *)self getLogContext];
              v24 = v36;
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
              }

              v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
              (*(v30 + 2))(v30, 0, v25);
            }

            if (v34)
            {
              sub_100004A34(v34);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v22 = v36;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
            }

            v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            (*(v30 + 2))(v30, 0, v23);
          }

          if ((v28 & 1) == 0)
          {
            sub_100004A34(v27);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v15 = 0;
      }

      std::mutex::unlock(v8);
      v26 = 0;
      v28 = 1;
      goto LABEL_16;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v17 = v36;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid arguments for hasDedicatedBearerSupport", buf, 2u);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(v30 + 2))(v30, 0, v18);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v16 = v36;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid completion handler for hasDedicatedBearerSupport", buf, 2u);
    }
  }

LABEL_33:
}

- (void)removeDedicatedBearer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [(CTXPCClientHandler *)self registry];
      ServiceMap = Registry::getServiceMap(*buf);
      v9 = ServiceMap;
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
        v12 = 5381;
        do
        {
          v10 = v12;
          v13 = *v11++;
          v12 = (33 * v12) ^ v13;
        }

        while (v13);
      }

      std::mutex::lock(ServiceMap);
      v27 = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
      if (v14)
      {
        v16 = v14[3];
        v15 = v14[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
          v17 = 0;
LABEL_16:
          if (v30)
          {
            sub_100004A34(v30);
          }

          if (v16)
          {
            v27 = 0;
            v28 = 0;
            (*(*v16 + 32))(&v27, v16);
            v21 = v27;
            if (v27)
            {
              v22 = objc_retainBlock(v7);
              *buf = off_101F25078;
              v30 = v22;
              v31 = buf;
              (*(*v21 + 16))(v21, v6, buf);
              sub_10036EC9C(buf);
            }

            else
            {
              [(CTXPCClientHandler *)self getLogContext];
              v25 = v30;
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
              }

              v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
              (*(v7 + 2))(v7, v26);
            }

            if (v28)
            {
              sub_100004A34(v28);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v23 = v30;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
            }

            v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            (*(v7 + 2))(v7, v24);
          }

          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          goto LABEL_31;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v17 = 1;
      goto LABEL_16;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v19 = v30;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Missing bearer_id for removeDedicatedBearer", buf, 2u);
    }

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(v7 + 2))(v7, v20);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v30;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for removeDedicatedBearer", buf, 2u);
    }
  }

LABEL_31:
}

- (void)removeAllDedicatedBearers:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v13)
        {
          v22 = 0;
          v23 = 0;
          (*(*v13 + 32))(&v22, v13);
          v16 = v22;
          if (v22)
          {
            v17 = objc_retainBlock(v4);
            *buf = off_101F250F8;
            v25 = v17;
            v26 = buf;
            (*(*v16 + 24))(v16, buf);
            sub_10036EC9C(buf);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v20 = v25;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
            }

            v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            (*(v4 + 2))(v4, v21);
          }

          if (v23)
          {
            sub_100004A34(v23);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v18 = v25;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(v4 + 2))(v4, v19);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for removeAllDedicatedBearers", buf, 2u);
  }

LABEL_27:
}

- (void)isDedicatedBearerPresent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      [(CTXPCClientHandler *)self registry];
      ServiceMap = Registry::getServiceMap(*buf);
      v9 = ServiceMap;
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
        v12 = 5381;
        do
        {
          v10 = v12;
          v13 = *v11++;
          v12 = (33 * v12) ^ v13;
        }

        while (v13);
      }

      std::mutex::lock(ServiceMap);
      v27 = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
      if (v14)
      {
        v16 = v14[3];
        v15 = v14[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
          v17 = 0;
LABEL_16:
          if (v30)
          {
            sub_100004A34(v30);
          }

          if (v16)
          {
            v27 = 0;
            v28 = 0;
            (*(*v16 + 32))(&v27, v16);
            v21 = v27;
            if (v27)
            {
              v22 = objc_retainBlock(v7);
              *buf = off_101F25178;
              v30 = v22;
              v31 = buf;
              (*(*v21 + 32))(v21, v6, buf);
              sub_10036ED1C(buf);
            }

            else
            {
              [(CTXPCClientHandler *)self getLogContext];
              v25 = v30;
              ctu::OsLogContext::~OsLogContext(buf);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
              }

              v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
              (*(v7 + 2))(v7, 0, v26);
            }

            if (v28)
            {
              sub_100004A34(v28);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v23 = v30;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
            }

            v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            (*(v7 + 2))(v7, 0, v24);
          }

          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          goto LABEL_31;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v17 = 1;
      goto LABEL_16;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v19 = v30;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Missing bearer_id for isDedicatedBearerPresent", buf, 2u);
    }

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(v7 + 2))(v7, 0, v20);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v30;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for isDedicatedBearerPresent", buf, 2u);
    }
  }

LABEL_31:
}

- (void)getListOfPresentDedicatedBearers:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v23)
        {
          sub_100004A34(v23);
        }

        if (v13)
        {
          v20 = 0;
          v21 = 0;
          (*(*v13 + 32))(&v20, v13);
          v16 = v20;
          if (v20)
          {
            v17 = objc_retainBlock(v4);
            *buf = off_101F25208;
            v23 = v17;
            v24 = buf;
            (*(*v16 + 40))(v16, buf);
            sub_10036ED9C(buf);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v19 = v23;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
            }

            (*(v4 + 2))(v4, 0);
          }

          if (v21)
          {
            sub_100004A34(v21);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v18 = v23;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
          }

          (*(v4 + 2))(v4, 0);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v23;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for getListOfPresentDedicatedBearers", buf, 2u);
  }

LABEL_27:
}

- (void)getQoSLinkCharacteristics:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v13)
        {
          v22 = 0;
          v23 = 0;
          (*(*v13 + 32))(&v22, v13);
          v16 = v22;
          if (v22)
          {
            v17 = objc_retainBlock(v4);
            *buf = off_101F25298;
            v25 = v17;
            v26 = buf;
            (*(*v16 + 48))(v16, buf);
            sub_10036EE1C(buf);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v20 = v25;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
            }

            v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            (*(v4 + 2))(v4, 0, v21);
          }

          if (v23)
          {
            sub_100004A34(v23);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v18 = v25;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(v4 + 2))(v4, 0, v19);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for getQoSLinkCharacteristics", buf, 2u);
  }

LABEL_27:
}

- (void)requestQoSLinkCharacteristics:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v13)
        {
          v22 = 0;
          v23 = 0;
          (*(*v13 + 32))(&v22, v13);
          v16 = v22;
          if (v22)
          {
            v17 = objc_retainBlock(v4);
            *buf = off_101F25328;
            v25 = v17;
            v26 = buf;
            (*(*v16 + 56))(v16, buf);
            sub_10036EC9C(buf);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v20 = v25;
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Dedicated Bearer management is not available", buf, 2u);
            }

            v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            (*(v4 + 2))(v4, v21);
          }

          if (v23)
          {
            sub_100004A34(v23);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v18 = v25;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Carrier Entitlement service is not available", buf, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (*(v4 + 2))(v4, v19);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for CTQoSLinkCharacteristics", buf, 2u);
  }

LABEL_27:
}

- (void)selectPhonebook:(id)a3 forPhonebookName:(int)a4 withPassword:(id)a5 completion:(id)a6
{
  LODWORD(v8) = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    if (!v10)
    {
      v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v12[2](v12, v24);

      goto LABEL_30;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v14 = ServiceMap;
    if (v15 < 0)
    {
      v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
      v17 = 5381;
      do
      {
        v15 = v17;
        v18 = *v16++;
        v17 = (33 * v17) ^ v18;
      }

      while (v18);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v15;
    v19 = sub_100009510(&v14[1].__m_.__sig, __p);
    if (v19)
    {
      v21 = v19[3];
      v20 = v19[4];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v14);
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v20);
        v22 = 0;
LABEL_14:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v21)
        {
          v25 = sub_100018A64([v10 slotID]);
          memset(buf, 0, sizeof(buf));
          v33 = 0;
          ctu::cf::assign();
          if ((v8 - 1) >= 3)
          {
            v8 = 0;
          }

          else
          {
            v8 = v8;
          }

          *__p = *buf;
          v31 = v33;
          if (v33 >= 0)
          {
            v26 = __p;
          }

          else
          {
            v26 = *buf;
          }

          v27 = objc_retainBlock(v12);
          v34[0] = off_101F2CE38;
          v34[1] = v27;
          v34[3] = v34;
          (*(*v21 + 24))(v21, v25, v8, v26, v34);
          sub_10000FF50(v34);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v28 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Could not find PhonebookInterface for selecting the phone book", buf, 2u);
          }

          v29 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v12[2](v12, v29);
        }

        if ((v22 & 1) == 0)
        {
          sub_100004A34(v20);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v21 = 0;
    }

    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v23 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid completion handler for selecting the phone book", buf, 2u);
  }

LABEL_30:
}

- (void)savePhonebookEntry:(id)a3 atIndex:(int)a4 withContactName:(id)a5 contactNumber:(id)a6 completion:(id)a7
{
  v10 = *&a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    if (!v12)
    {
      v27 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v15[2](v15, v27);

      goto LABEL_39;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v17 = ServiceMap;
    if (v18 < 0)
    {
      v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(ServiceMap);
    *&v48 = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, &v48);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
LABEL_14:
        if (v38)
        {
          sub_100004A34(v38);
        }

        if (v24)
        {
          v28 = sub_100018A64([v12 slotID]);
          v48 = 0uLL;
          v49 = 0;
          ctu::cf::assign();
          *v35 = v48;
          v36 = v49;
          CSIPhoneNumber::CSIPhoneNumber();
          v48 = 0uLL;
          v49 = 0;
          ctu::cf::assign();
          *__p = v48;
          v34 = v49;
          if (v49 >= 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = __p[0];
          }

          v30 = objc_retainBlock(v15);
          v50[0] = off_101F2CEB8;
          v50[1] = v30;
          v50[3] = v50;
          (*(*v24 + 40))(v24, v28, v10, buf, v29, v50);
          sub_10000FF50(v50);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(__p[0]);
          }

          if (v47 < 0)
          {
            operator delete(v46);
          }

          if (v45 < 0)
          {
            operator delete(v44);
          }

          if (v43 < 0)
          {
            operator delete(v42);
          }

          if (v41 < 0)
          {
            operator delete(v40);
          }

          if (v39 < 0)
          {
            operator delete(v38);
          }

          if (SHIBYTE(v36) < 0)
          {
            operator delete(v35[0]);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v31 = v38;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Could not find PhonebookInterface for saving the phone book entry", buf, 2u);
          }

          v32 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v15[2](v15, v32);
        }

        if ((v25 & 1) == 0)
        {
          sub_100004A34(v23);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v26 = v38;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Invalid completion handler for saving the phone book entry", buf, 2u);
  }

LABEL_39:
}

- (void)fetchPhonebook:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v21 = objc_retainBlock(v7);
          v27[0] = off_101F2CF38;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 56))(v16, v20, v27);
          sub_10000FF50(v27);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find PhonebookInterface for fetching the phone book", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for fetching the phone book", &v24, 2u);
  }

LABEL_23:
}

- (void)getPhonebookEntryCountWithCompletion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v21 = objc_retainBlock(v7);
          v27[0] = off_101F2CFB8;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 64))(v16, v20, v27);
          sub_100BDCA88(v27);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find PhonebookInterface for counting phone book entries", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for counting phone book entries", &v24, 2u);
  }

LABEL_23:
}

- (void)getPhonebookEntryWithCompletion:(id)a3 atIndex:(int)a4 completion:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if (!v8)
    {
      v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v9[2](v9, 0, v21);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v26);
    v11 = ServiceMap;
    if ((v12 & 0x8000000000000000) != 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    v28 = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, &v28);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
LABEL_14:
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (v18)
        {
          v22 = sub_100018A64([v8 slotID]);
          v23 = objc_retainBlock(v9);
          v29[0] = off_101F2D038;
          v29[1] = v23;
          v29[3] = v29;
          (*(*v18 + 72))(v18, v22, v6, v29);
          sub_100E3FDD8(v29);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v24 = v27;
          ctu::OsLogContext::~OsLogContext(&v26);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v26) = 0;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find PhonebookInterface for copying the phone book entry", &v26, 2u);
          }

          v25 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v9[2](v9, 0, v25);
        }

        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v20 = v27;
  ctu::OsLogContext::~OsLogContext(&v26);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for copying the phone book entry", &v26, 2u);
  }

LABEL_23:
}

- (void)getPhoneNumberWithCompletion:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v25);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v27 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v21 = self;
          v22 = objc_retainBlock(v7);
          v28[0] = off_101F2D0B8;
          v28[1] = v21;
          v28[2] = v22;
          v28[3] = v28;
          (*(*v16 + 264))(v16, v20, v28);
          sub_10006AE0C(v28);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find PhonebookInterface for copying own phone number", &v25, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v24);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(&v25);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for copying own phone number", &v25, 2u);
  }

LABEL_23:
}

- (void)getSIMStatus:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      *buf = 0;
      v15 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for getSIMStatus", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v7[2](v7, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for getSIMStatus", buf, 2u);
    }
  }
}

- (void)getSIMTrayStatus:(id)a3
{
  v4 = a3;
  if (v4)
  {
    *buf = 0;
    v11 = 0;
    [(CTXPCClientHandler *)self registry];
    sGetSubscriberSimInterface();
    if (v9)
    {
      sub_100004A34(v9);
    }

    [(CTXPCClientHandler *)self getLogContext];
    v6 = v9;
    ctu::OsLogContext::~OsLogContext(v8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for getSIMTrayStatus", v8, 2u);
    }

    v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    v4[2](v4, 0, v7);

    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v5 = v11;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid completion handler for getSIMTrayStatus", buf, 2u);
    }
  }
}

- (void)isEmbeddedSIMOnlyConfig:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = 0;
  [(CTXPCClientHandler *)self registry];
  sGetSubscriberSimInterface();
  if (v8)
  {
    sub_100004A34(v8);
  }

  [(CTXPCClientHandler *)self getLogContext];
  v5 = v8;
  ctu::OsLogContext::~OsLogContext(v7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface", v7, 2u);
  }

  v6 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
  v4[2](v4, 0, v6);

  if (v10)
  {
    sub_100004A34(v10);
  }
}

- (void)copyMobileEquipmentInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    *buf = 0;
    v11 = 0;
    [(CTXPCClientHandler *)self registry];
    sGetSubscriberSimInterface();
    if (v9)
    {
      sub_100004A34(v9);
    }

    [(CTXPCClientHandler *)self getLogContext];
    v6 = v9;
    ctu::OsLogContext::~OsLogContext(v8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for copyMobileEquipmentInfo", v8, 2u);
    }

    v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    v4[2](v4, 0, v7);

    if (v11)
    {
      sub_100004A34(v11);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v5 = v11;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileEquipmentInfo", buf, 2u);
    }
  }
}

- (void)getTypeAllocationCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v14 = 0;
      v15 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(&__p);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p) = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberController for getTypeAllocationCode", &__p, 2u);
      }

      v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      v7[2](v7, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = v13;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for refresh user auth token", &__p, 2u);
    }
  }
}

- (void)copyFirmwareUpdateInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v35 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v35);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_12:
    v16 = v34;
    if (v34)
    {
      sub_100004A34(v34);
    }

    v17 = capabilities::ct::supportsVinylFirmwareUpdate(v16);
    if (!v17 || (capabilities::euicc::supportsEOS(v17) & 1) != 0)
    {
      if (v13)
      {
        v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      }

      else
      {
        v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      }

      v4[2](v4, 0, v18);

LABEL_20:
      if ((v14 & 1) == 0)
      {
        sub_100004A34(v12);
      }

      goto LABEL_22;
    }

    [(CTXPCClientHandler *)self registry];
    v19 = Registry::getServiceMap(*buf);
    v20 = v19;
    if ((v21 & 0x8000000000000000) != 0)
    {
      v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
      v23 = 5381;
      do
      {
        v21 = v23;
        v24 = *v22++;
        v23 = (33 * v23) ^ v24;
      }

      while (v24);
    }

    std::mutex::lock(v19);
    v35 = v21;
    v25 = sub_100009510(&v20[1].__m_.__sig, &v35);
    if (v25)
    {
      v27 = v25[3];
      v26 = v25[4];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v20);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
        v28 = 0;
LABEL_31:
        if (v34)
        {
          sub_100004A34(v34);
        }

        if (v27)
        {
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_1014342FC;
          v31[3] = &unk_101F3B988;
          v31[4] = self;
          v32 = v4;
          (*(*v27 + 144))(v27, 1, v31, 0);
          v29 = v32;
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v30 = v34;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not find VinylController for copyFirmwareUpdateInfo", buf, 2u);
          }

          v29 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          v4[2](v4, 0, v29);
        }

        if ((v28 & 1) == 0)
        {
          sub_100004A34(v26);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v20);
    v26 = 0;
    v28 = 1;
    goto LABEL_31;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v34;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyFirmwareUpdateInfo", buf, 2u);
  }

LABEL_22:
}

- (void)copySIMIdentity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      *buf = 0;
      v15 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for copySIMIdentity", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v7[2](v7, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for copySIMIdentity", buf, 2u);
    }
  }
}

- (void)copyMobileSubscriberIdentity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v13 = 0;
      v14 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v10 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for copyMobileSubscriberIdentity", buf, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v7[2](v7, 0, v11);

      if (v14)
      {
        sub_100004A34(v14);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileSubscriberIdentity", buf, 2u);
    }
  }
}

- (void)context:(id)a3 isProtectedIdentitySupported:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8 && v9)
    {
      v11 = [(CTXPCClientHandler *)self dataProviderDelegate];
      v12 = [v11 resolveContext:v8];

      if (v12)
      {
        v13 = sub_100018A64([v12 slotID]);
        if (!v13)
        {
          [(CTXPCClientHandler *)self getLogContext];
          v27 = v33;
          ctu::OsLogContext::~OsLogContext(&v32);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v32) = 0;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "no slot in context", &v32, 2u);
          }

          v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
          v10[2](v10, 0, v28);

          goto LABEL_28;
        }

        [(CTXPCClientHandler *)self registry];
        ServiceMap = Registry::getServiceMap(v32);
        v15 = ServiceMap;
        if ((v16 & 0x8000000000000000) != 0)
        {
          v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
          v18 = 5381;
          do
          {
            v16 = v18;
            v19 = *v17++;
            v18 = (33 * v18) ^ v19;
          }

          while (v19);
        }

        std::mutex::lock(ServiceMap);
        v34 = v16;
        v20 = sub_100009510(&v15[1].__m_.__sig, &v34);
        if (v20)
        {
          v22 = v20[3];
          v21 = v20[4];
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v15);
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v21);
            v23 = 0;
LABEL_21:
            if (v33)
            {
              sub_100004A34(v33);
            }

            if (v22)
            {
              v29 = [v9 isEqualToString:kCTEncryptedIdentityWiFiCalling];
              v30 = objc_retainBlock(v10);
              v35[0] = off_101F3BC60;
              v35[1] = v30;
              v35[3] = v35;
              (*(*v22 + 24))(v22, v13, v29 ^ 1, v35);
              sub_1009F1554(v35);
            }

            else
            {
              v31 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
              v10[2](v10, 0, v31);
            }

            if ((v23 & 1) == 0)
            {
              sub_100004A34(v21);
            }

LABEL_28:
            v8 = v12;
            goto LABEL_29;
          }
        }

        else
        {
          v22 = 0;
        }

        std::mutex::unlock(v15);
        v21 = 0;
        v23 = 1;
        goto LABEL_21;
      }

      v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      v10[2](v10, 0, v26);

      v8 = 0;
    }

    else
    {
      v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v10[2](v10, 0, v25);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v24 = v33;
    ctu::OsLogContext::~OsLogContext(&v32);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Invalid completion handler for isEncryptedIdentitySupportedForService", &v32, 2u);
    }
  }

LABEL_29:
}

- (void)context:(id)a3 supportedIdentityProtectionFor:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (!v8)
    {
      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v10[2](v10, 0, v23);

      goto LABEL_25;
    }

    v11 = sub_100018A64([v8 slotID]);
    if (v11)
    {
      [(CTXPCClientHandler *)self registry];
      ServiceMap = Registry::getServiceMap(v29);
      v13 = ServiceMap;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
        v16 = 5381;
        do
        {
          v14 = v16;
          v17 = *v15++;
          v16 = (33 * v16) ^ v17;
        }

        while (v17);
      }

      std::mutex::lock(ServiceMap);
      v31 = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, &v31);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v21 = 0;
LABEL_18:
          if (v30)
          {
            sub_100004A34(v30);
          }

          if (v20)
          {
            v26 = [v9 isEqualToString:kCTEncryptedIdentityWiFiCalling];
            v27 = objc_retainBlock(v10);
            v32[0] = off_101F3BCF0;
            v32[1] = v27;
            v32[3] = v32;
            (*(*v20 + 24))(v20, v11, v26 ^ 1, v32);
            sub_1009F1554(v32);
          }

          else
          {
            v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            v10[2](v10, 0, v28);
          }

          if ((v21 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          goto LABEL_25;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v21 = 1;
      goto LABEL_18;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v24 = v30;
    ctu::OsLogContext::~OsLogContext(&v29);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "no slot in context", &v29, 2u);
    }

    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    v10[2](v10, 0, v25);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = v30;
    ctu::OsLogContext::~OsLogContext(&v29);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid completion handler for supportedIdentityProtection", &v29, 2u);
    }
  }

LABEL_25:
}

- (void)createEncryptedIdentity:(id)a3 identity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (!v8)
    {
      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v10[2](v10, 0, v23);

      goto LABEL_25;
    }

    v11 = sub_100018A64([v8 slotID]);
    if (v11)
    {
      [(CTXPCClientHandler *)self registry];
      ServiceMap = Registry::getServiceMap(v28);
      v13 = ServiceMap;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
        v16 = 5381;
        do
        {
          v14 = v16;
          v17 = *v15++;
          v16 = (33 * v16) ^ v17;
        }

        while (v17);
      }

      std::mutex::lock(ServiceMap);
      v30 = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, &v30);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v21 = 0;
LABEL_18:
          if (v29)
          {
            sub_100004A34(v29);
          }

          if (v20)
          {
            v26 = objc_retainBlock(v10);
            v31[0] = off_101F3BD70;
            v31[1] = v26;
            v31[3] = v31;
            (*(*v20 + 40))(v20, v11, 1, v9, v31);
            sub_1009F15D4(v31);
          }

          else
          {
            v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            v10[2](v10, 0, v27);
          }

          if ((v21 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          goto LABEL_25;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v21 = 1;
      goto LABEL_18;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v24 = v29;
    ctu::OsLogContext::~OsLogContext(&v28);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "no slot in context", &v28, 2u);
    }

    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    v10[2](v10, 0, v25);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = v29;
    ctu::OsLogContext::~OsLogContext(&v28);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid completion handler for createEncryptedIdentity", &v28, 2u);
    }
  }

LABEL_25:
}

- (void)context:(id)a3 getPseudoIdentityFor:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (!v8)
    {
      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v10[2](v10, 0, v23);

      goto LABEL_25;
    }

    v11 = sub_100018A64([v8 slotID]);
    if (v11)
    {
      [(CTXPCClientHandler *)self registry];
      ServiceMap = Registry::getServiceMap(v29);
      v13 = ServiceMap;
      if ((v14 & 0x8000000000000000) != 0)
      {
        v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
        v16 = 5381;
        do
        {
          v14 = v16;
          v17 = *v15++;
          v16 = (33 * v16) ^ v17;
        }

        while (v17);
      }

      std::mutex::lock(ServiceMap);
      v31 = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, &v31);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v21 = 0;
LABEL_18:
          if (v30)
          {
            sub_100004A34(v30);
          }

          if (v20)
          {
            v26 = [v9 isEqualToString:kCTEncryptedIdentityWiFiCalling];
            v27 = objc_retainBlock(v10);
            v32[0] = off_101F3BE00;
            v32[1] = v27;
            v32[3] = v32;
            (*(*v20 + 80))(v20, v11, v26 ^ 1, v32);
            sub_1009F1654(v32);
          }

          else
          {
            v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            v10[2](v10, 0, v28);
          }

          if ((v21 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          goto LABEL_25;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v21 = 1;
      goto LABEL_18;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v24 = v30;
    ctu::OsLogContext::~OsLogContext(&v29);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "no slot in context", &v29, 2u);
    }

    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    v10[2](v10, 0, v25);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = v30;
    ctu::OsLogContext::~OsLogContext(&v29);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid completion handler for getPseudoIdentity", &v29, 2u);
    }
  }

LABEL_25:
}

- (void)evaluateMobileSubscriberIdentity:(id)a3 identity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      v11 = sub_100018A64([v8 slotID]);
      if (v11)
      {
        [(CTXPCClientHandler *)self registry];
        ServiceMap = Registry::getServiceMap(v26);
        v13 = ServiceMap;
        if ((v14 & 0x8000000000000000) != 0)
        {
          v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
          v16 = 5381;
          do
          {
            v14 = v16;
            v17 = *v15++;
            v16 = (33 * v16) ^ v17;
          }

          while (v17);
        }

        std::mutex::lock(ServiceMap);
        v28 = v14;
        v18 = sub_100009510(&v13[1].__m_.__sig, &v28);
        if (v18)
        {
          v20 = v18[3];
          v19 = v18[4];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v13);
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v19);
            v21 = 0;
LABEL_19:
            if (v27)
            {
              sub_100004A34(v27);
            }

            if (v20)
            {
              v25 = 0;
              (*(*v20 + 56))(v20, v11, 1, v9);
            }

            else
            {
              v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
            }

            v10[2](v10, v25);
            if ((v21 & 1) == 0)
            {
              sub_100004A34(v19);
            }

            goto LABEL_27;
          }
        }

        else
        {
          v20 = 0;
        }

        std::mutex::unlock(v13);
        v19 = 0;
        v21 = 1;
        goto LABEL_19;
      }

      [(CTXPCClientHandler *)self getLogContext];
      v24 = v27;
      ctu::OsLogContext::~OsLogContext(&v26);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "no slot in context", &v26, 2u);
      }

      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      v10[2](v10, v23);
    }

    else
    {
      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v10[2](v10, v23);
    }

    goto LABEL_27;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v22 = v27;
  ctu::OsLogContext::~OsLogContext(&v26);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid completion handler for evaluateMobileSubscriberIdentity", &v26, 2u);
  }

LABEL_27:
}

- (void)copyMobileSubscriberCountryCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);
LABEL_15:

      goto LABEL_30;
    }

    if ([(CTXPCClientHandler *)self hasEntitlement:3])
    {
      goto LABEL_4;
    }

    v20 = [(CTXPCClientHandler *)self isLinkedOnOrAfterVersion:@"16.4"];
    if ((v20 & 0x100) == 0)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      v7[2](v7, 0, v19);
      goto LABEL_15;
    }

    if ((v20 & 1) == 0)
    {
LABEL_4:
      [(CTXPCClientHandler *)self registry];
      ServiceMap = Registry::getServiceMap(v25);
      v9 = ServiceMap;
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
        v12 = 5381;
        do
        {
          v10 = v12;
          v13 = *v11++;
          v12 = (33 * v12) ^ v13;
        }

        while (v13);
      }

      std::mutex::lock(ServiceMap);
      v27[0] = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, v27);
      if (v14)
      {
        v16 = v14[3];
        v15 = v14[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
          v17 = 0;
LABEL_22:
          if (v26)
          {
            sub_100004A34(v26);
          }

          if (v16)
          {
            sub_100018A64([v6 slotID]);
            v22 = self;
            objc_retainBlock(v7);
            v27[4] = 0;
            operator new();
          }

          [(CTXPCClientHandler *)self getLogContext];
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find SubscriberUtilityInterface for copyMobileSubscriberCountryCode", &v25, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          v7[2](v7, 0, v24);

          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          goto LABEL_30;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v17 = 1;
      goto LABEL_22;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v21 = v26;
    ctu::OsLogContext::~OsLogContext(&v25);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Returning default value for copyMobileSubscriberCountryCode", &v25, 2u);
    }

    (v7)[2](v7, @"65535", 0);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v26;
    ctu::OsLogContext::~OsLogContext(&v25);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileSubscriberCountryCode", &v25, 2u);
    }
  }

LABEL_30:
}

- (void)copyMobileSubscriberIsoCountryCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);
LABEL_15:

      goto LABEL_40;
    }

    if ([(CTXPCClientHandler *)self hasEntitlement:3])
    {
      memset(buf, 0, sizeof(buf));
      v30 = 0;
      [(CTXPCClientHandler *)self registry];
      ServiceMap = Registry::getServiceMap(*v27);
      v9 = ServiceMap;
      if (v10 < 0)
      {
        v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
        v12 = 5381;
        do
        {
          v10 = v12;
          v13 = *v11++;
          v12 = (33 * v12) ^ v13;
        }

        while (v13);
      }

      std::mutex::lock(ServiceMap);
      __p[0] = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, __p);
      if (v14)
      {
        v16 = v14[3];
        v15 = v14[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
          v17 = 0;
          goto LABEL_21;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v17 = 1;
LABEL_21:
      if (*&v27[8])
      {
        sub_100004A34(*&v27[8]);
      }

      if (v16)
      {
        sub_10000501C(__p, [v6 UTF8String]);
        (*(*v16 + 24))(v27, v16, __p);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(*buf);
        }

        *buf = *v27;
        v30 = v28;
        HIBYTE(v28) = 0;
        v27[0] = 0;
        if ((v26 & 0x80000000) == 0)
        {
          if (v17)
          {
            goto LABEL_28;
          }

LABEL_33:
          sub_100004A34(v15);
          if (!v16)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }

        operator delete(__p[0]);
        if ((v17 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v21 = *&v27[8];
        ctu::OsLogContext::~OsLogContext(v27);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v27 = 0;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find isoCacheInterface for copyMobileSubscriberIsoCountryCode", v27, 2u);
        }

        v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
        v7[2](v7, 0, v22);

        if ((v17 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_28:
      if (!v16)
      {
LABEL_38:
        if (SHIBYTE(v30) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_40;
      }

LABEL_34:
      if (v30 >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      v24 = [NSString stringWithUTF8String:v23];
      (v7)[2](v7, v24, 0);

      goto LABEL_38;
    }

    if (([(CTXPCClientHandler *)self isLinkedOnOrAfterVersion:@"16.4"]& 0x100) == 0)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      v7[2](v7, 0, v19);
      goto LABEL_15;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v20 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Returning default value for copyMobileSubscriberIsoCountryCode", buf, 2u);
    }

    (v7)[2](v7, @"--", 0);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileSubscriberIsoCountryCode", buf, 2u);
    }
  }

LABEL_40:
}

- (void)copyMobileSubscriberIsoSubregionCode:(id)a3 MNC:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v21 = v35;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileSubscriberIsoSubregionCode", buf, 2u);
    }

    goto LABEL_27;
  }

  if (!v8 || !v9)
  {
    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v10[2](v10, 0, v22);

    goto LABEL_27;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(*buf);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v32[0] = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, v32);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_15:
  if (v35)
  {
    sub_100004A34(v35);
  }

  if (v19)
  {
    *buf = 0;
    v35 = 0;
    v36 = 0;
    v29 = v20;
    sub_10000501C(v32, [v8 UTF8String]);
    sub_10000501C(__p, [v9 UTF8String]);
    (*(*v19 + 80))(buf, v19, v32, __p);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    v23 = [NSMutableArray arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v35 - *buf) >> 3)];
    if (v35 != *buf)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = [NSString stringWithUTF8String:?];
        [v23 setObject:v26 atIndexedSubscript:v25];

        ++v25;
        v24 += 24;
      }

      while (v25 < 0xAAAAAAAAAAAAAAABLL * ((v35 - *buf) >> 3));
    }

    (v10)[2](v10, v23, 0);

    v32[0] = buf;
    sub_1000087B4(v32);
    if ((v29 & 1) == 0)
    {
LABEL_26:
      sub_100004A34(v18);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v27 = v35;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not find isoCacheInterface for copyMobileSubscriberIsoSubregionCode", buf, 2u);
    }

    v28 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    v10[2](v10, 0, v28);

    if ((v20 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
}

- (void)getSimHardwareInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_30;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v25);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v27 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v25 = 0;
          v25 = (*(*v16 + 24))(v16, v20);
          if (subscriber::isEsimCapable())
          {
            v21 = 3;
            v22 = 2;
          }

          else if (HIDWORD(v25) == 1)
          {
            if (v25 == 1)
            {
              v22 = 1;
              v21 = 1;
            }

            else
            {
              v21 = 2 * (v25 == 2);
              v22 = 1;
            }
          }

          else
          {
            v22 = 0;
            v21 = 0;
          }

          v24 = [[CTSimHardwareInfo alloc] initWithHardwareInfo:v22 simLocation:v21];
          (v7)[2](v7, v24, 0);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for getSimHardwareInfo", &v25, 2u);
          }

          v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          v7[2](v7, 0, v24);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(&v25);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getSimType", &v25, 2u);
  }

LABEL_30:
}

- (void)getMobileSubscriberHomeCountryList:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v21 = objc_retainBlock(v7);
          v27[0] = off_101F3BF00;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 48))(v16, v20, v27);
          sub_10002AA0C(v27);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find SubscriberUtilityInterface for getMobileSubscriberHomeCountryList", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          v7[2](v7, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getMobileSubscriberHomeCountryList", &v24, 2u);
  }

LABEL_23:
}

- (void)copyLastKnownMobileSubscriberCountryCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v21 = objc_retainBlock(v7);
          v27[0] = off_101F3BF80;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 40))(v16, v20, v27);
          sub_10001C200(v27);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find SubscriberUtilityInterface for copyLastKnownMobileSubscriberCountryCode", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          v7[2](v7, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyLastKnownMobileSubscriberCountryCode", &v24, 2u);
  }

LABEL_23:
}

- (void)copyMobileSubscriberNetworkCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v11);

      goto LABEL_60;
    }

    if ([(CTXPCClientHandler *)self hasEntitlement:3])
    {
      goto LABEL_13;
    }

    v8 = [(CTXPCClientHandler *)self isLinkedOnOrAfterVersion:@"16.4"];
    if ((v8 & 0x100) == 0)
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      v7[2](v7, 0, v9);

      goto LABEL_13;
    }

    if ((v8 & 1) == 0)
    {
LABEL_13:
      [(CTXPCClientHandler *)self registry];
      ServiceMap = Registry::getServiceMap(v41);
      v14 = ServiceMap;
      if (v15 < 0)
      {
        v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
        v17 = 5381;
        do
        {
          v15 = v17;
          v18 = *v16++;
          v17 = (33 * v17) ^ v18;
        }

        while (v18);
      }

      std::mutex::lock(ServiceMap);
      __p[0] = v15;
      v19 = sub_100009510(&v14[1].__m_.__sig, __p);
      if (v19)
      {
        v21 = v19[3];
        v20 = v19[4];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v14);
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v20);
          v22 = 0;
          goto LABEL_21;
        }
      }

      else
      {
        v21 = 0;
      }

      std::mutex::unlock(v14);
      v20 = 0;
      v22 = 1;
LABEL_21:
      if (v42)
      {
        sub_100004A34(v42);
      }

      if (!v21)
      {
        [(CTXPCClientHandler *)self getLogContext];
        v35 = v42;
        ctu::OsLogContext::~OsLogContext(&v41);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v41) = 0;
          _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Could not find SubscriberUtilityInterface for copyMobileSubscriberNetworkCode", &v41, 2u);
        }

        v36 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
        v7[2](v7, 0, v36);

        goto LABEL_58;
      }

      v23 = sub_100018A64([v6 slotID]);
      __p[0] = 0;
      __p[1] = 0;
      v50 = 0;
      (*(*v21 + 32))(__p, v21, v23);
      v24 = HIBYTE(v50);
      if (v50 < 0)
      {
        v24 = __p[1];
      }

      if (v24)
      {
LABEL_53:
        if (v50 >= 0)
        {
          v39 = __p;
        }

        else
        {
          v39 = __p[0];
        }

        v40 = [NSString stringWithUTF8String:v39];
        (v7)[2](v7, v40, 0);

        if (SHIBYTE(v50) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_58:
        if ((v22 & 1) == 0)
        {
          sub_100004A34(v20);
        }

        goto LABEL_60;
      }

      [(CTXPCClientHandler *)self registry];
      v25 = Registry::getServiceMap(v41);
      v26 = v25;
      if (v27 < 0)
      {
        v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
        v29 = 5381;
        do
        {
          v27 = v29;
          v30 = *v28++;
          v29 = (33 * v29) ^ v30;
        }

        while (v30);
      }

      std::mutex::lock(v25);
      v46 = v27;
      v31 = sub_100009510(&v26[1].__m_.__sig, &v46);
      if (v31)
      {
        v33 = v31[3];
        v32 = v31[4];
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v26);
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v32);
          v34 = 0;
LABEL_38:
          if (v42)
          {
            sub_100004A34(v42);
          }

          if (v33)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            (*(*v33 + 24))(&v46, v33, v23);
            v37 = HIBYTE(v48);
            v38 = HIBYTE(v48);
            if (v48 < 0)
            {
              v37 = v47;
            }

            if (v37)
            {
              sub_100A34BC8(&v41);
              if (SHIBYTE(v50) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = v44;
              v50 = v45;
              HIBYTE(v45) = 0;
              LOBYTE(v44) = 0;
              if (v43 < 0)
              {
                operator delete(v41);
              }

              v38 = HIBYTE(v48);
            }

            if (v38 < 0)
            {
              operator delete(v46);
            }
          }

          if ((v34 & 1) == 0)
          {
            sub_100004A34(v32);
          }

          goto LABEL_53;
        }
      }

      else
      {
        v33 = 0;
      }

      std::mutex::unlock(v26);
      v32 = 0;
      v34 = 1;
      goto LABEL_38;
    }

    [(CTXPCClientHandler *)self getLogContext];
    v12 = v42;
    ctu::OsLogContext::~OsLogContext(&v41);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Returning default value for copyMobileSubscriberCountryCode", &v41, 2u);
    }

    (v7)[2](v7, @"65535", 0);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v10 = v42;
    ctu::OsLogContext::~OsLogContext(&v41);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v41) = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileSubscriberNetworkCode", &v41, 2u);
    }
  }

LABEL_60:
}

- (void)copyGid1:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      *buf = 0;
      v15 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for copyGid1", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v7[2](v7, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyGid1", buf, 2u);
    }
  }
}

- (void)copyGid2:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      *buf = 0;
      v15 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for copyGid2", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v7[2](v7, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyGid2", buf, 2u);
    }
  }
}

- (void)copyLabel:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_101438788;
  v7[3] = &unk_101F3B9B0;
  v8 = a4;
  v6 = v8;
  [(CTXPCClientHandler *)self getSimLabel:a3 completion:v7];
}

- (void)getSimLabel:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_51;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v33 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v33);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v16)
        {
          v33 = 0;
          v34 = 0;
          v20 = sub_100018A64([v6 slotID]);
          (*(*v16 + 8))(&v33, v16, v20);
          if (v33)
          {
            v44 = 0;
            v42 = 0u;
            *__p = 0u;
            *v40 = 0u;
            *v41 = 0u;
            *v38 = 0u;
            v39 = 0u;
            *v36 = 0u;
            v37 = 0u;
            *buf = 0u;
            (*(*v16 + 184))(buf, v16, v33 + 24);
            v21 = BYTE7(v39);
            if (SBYTE7(v39) < 0)
            {
              v21 = v38[1];
            }

            if (v21)
            {
              v22 = [CTSimLabel alloc];
              if ((SBYTE7(v39) & 0x80u) == 0)
              {
                v23 = v38;
              }

              else
              {
                v23 = v38[0];
              }

              v24 = [NSString stringWithUTF8String:v23];
              if (SHIBYTE(v36[0]) >= 0)
              {
                v25 = buf;
              }

              else
              {
                v25 = *buf;
              }

              v26 = [NSString stringWithUTF8String:v25];
              v27 = [v22 initWithId:v24 andText:v26 andDidSetup:BYTE8(v39)];

              (v7)[2](v7, v27, 0);
            }

            else
            {
              v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
              v7[2](v7, 0, v27);
            }

            if (SHIBYTE(v44) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v42) < 0)
            {
              operator delete(v41[1]);
            }

            if (SHIBYTE(v41[0]) < 0)
            {
              operator delete(v40[0]);
            }

            if (SBYTE7(v39) < 0)
            {
              operator delete(v38[0]);
            }

            if (SHIBYTE(v37) < 0)
            {
              operator delete(v36[1]);
            }

            if (SHIBYTE(v36[0]) < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v30 = *&buf[8];
            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v32 = asString([v6 slotID] != 0);
              *buf = 136315138;
              *&buf[4] = v32;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "getSimLabel, no personality for slot %s", buf, 0xCu);
            }

            v31 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            v7[2](v7, 0, v31);
          }

          if (v34)
          {
            sub_100004A34(v34);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v28 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Could not find PersonalityShop for getSimLabel", buf, 2u);
          }

          v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          v7[2](v7, 0, v29);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_51;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getSimLabel", buf, 2u);
  }

LABEL_51:
}

- (void)getShortLabel:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v27[0];
    ctu::OsLogContext::~OsLogContext(&v26);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getShortLabel", &v26, 2u);
    }

    goto LABEL_27;
  }

  if (!v6)
  {
    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v7[2](v7, 0, v19);

    goto LABEL_27;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v26);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v28 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v28);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_14:
  if (v27[0])
  {
    sub_100004A34(v27[0]);
  }

  if (v16)
  {
    v26 = 0;
    v27[0] = 0;
    v27[1] = 0;
    (*(*v16 + 336))(&v26, v16);
    v20 = sub_100018A64([v6 slotID]);
    v21 = v27[0];
    if (!v27[0])
    {
      goto LABEL_24;
    }

    v22 = v27;
    do
    {
      if (*(v21 + 8) >= v20)
      {
        v22 = v21;
      }

      v21 = v21[*(v21 + 8) < v20];
    }

    while (v21);
    if (v22 != v27 && v20 >= *(v22 + 8))
    {
      (v7)[2](v7, v22[5], 0);
    }

    else
    {
LABEL_24:
      v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      v7[2](v7, 0, v23);
    }

    sub_1001B1588(&v26, v27[0]);
    if ((v17 & 1) == 0)
    {
LABEL_26:
      sub_100004A34(v15);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v24 = v27[0];
    ctu::OsLogContext::~OsLogContext(&v26);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find PersonalityShop for getSimLabel", &v26, 2u);
    }

    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    v7[2](v7, 0, v25);

    if ((v17 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
}

- (void)getSubscriptionUserFacingName:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_32;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v27);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    *&buf = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &buf);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v28)
        {
          sub_100004A34(v28);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v27 = 0;
          v28 = 0;
          (*(*v16 + 8))(&v27, v16, v20);
          if (v27)
          {
            *&buf = 0;
            (*(*v16 + 216))(&buf, v16, v27 + 24);
            if (buf)
            {
              v7[2](v7, buf, 0);
            }

            else
            {
              v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
              v7[2](v7, 0, v25);
            }

            sub_100005978(&buf);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v23 = *(&buf + 1);
            ctu::OsLogContext::~OsLogContext(&buf);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v26 = subscriber::asString();
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v26;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "getSubscriptionUserFacingName, no personality for slot %s", &buf, 0xCu);
            }

            v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            v7[2](v7, 0, v24);
          }

          if (v28)
          {
            sub_100004A34(v28);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v21 = v28;
          ctu::OsLogContext::~OsLogContext(&v27);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v27) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find PersonalityShop for getSubscriptionUserFacingName", &v27, 2u);
          }

          v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          v7[2](v7, 0, v22);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_32;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v28;
  ctu::OsLogContext::~OsLogContext(&v27);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v27) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getSubscriptionUserFacingName", &v27, 2u);
  }

LABEL_32:
}

- (void)generateAuthenticationInfoUsingSim:(id)a3 authParams:(id)a4 completion:(id)a5
{
  v8 = a3;
  v48 = a4;
  v9 = a5;
  v10 = v9;
  v47 = v8;
  if (v9)
  {
    if (v8)
    {
      v11 = v48;
      v46 = v9;
      if (!v48)
      {
        [(CTXPCClientHandler *)self getLogContext];
        v24 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "No auth params given", buf, 2u);
        }

        goto LABEL_22;
      }

      v12 = [v48 data];

      if (!v12)
      {
        [(CTXPCClientHandler *)self getLogContext];
        v26 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "No auth params dictionary given", buf, 2u);
        }

        goto LABEL_22;
      }

      [(CTXPCClientHandler *)self getLogContext];
      v13 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v48 data];
        *buf = 136315395;
        *&buf[4] = "[CTXPCClientHandler(Subscriber) generateAuthenticationInfoUsingSim:authParams:completion:]";
        *&buf[12] = 2117;
        *&buf[14] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: input auth params: %{sensitive}@", buf, 0x16u);

        v10 = v46;
      }

      v15 = [v48 data];
      v16 = kCTSimSupportUICCAuthenticationTypeKey;
      Value = CFDictionaryGetValue(v15, kCTSimSupportUICCAuthenticationTypeKey);
      v18 = Value;
      if (!Value || (v19 = CFGetTypeID(Value), v19 != CFStringGetTypeID()))
      {
        [(CTXPCClientHandler *)self getLogContext];
        v25 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "No authentication type specified", buf, 2u);
        }

        goto LABEL_22;
      }

      AuthTypeFromClientKey = subscriber::getAuthTypeFromClientKey(v18, v20);
      if ((AuthTypeFromClientKey & 0x100000000) == 0)
      {
LABEL_22:
        v27 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        (v10)[2](v10, 0, v27);

        v10 = v46;
        goto LABEL_23;
      }

      v59[0] = 0;
      v59[1] = 0;
      v58 = v59;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v28 = [v48 data];
      v45 = AuthTypeFromClientKey;
      v29 = [v28 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v29)
      {
        v30 = *v55;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v55 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v54 + 1) + 8 * i);
            if (([(subscriber *)v32 isEqualToString:v16]& 1) == 0)
            {
              v52 = 0;
              AuthInfoTypeFromClientKey = subscriber::getAuthInfoTypeFromClientKey(v32, v33);
              LODWORD(v52) = AuthInfoTypeFromClientKey;
              BYTE4(v52) = BYTE4(AuthInfoTypeFromClientKey);
              if ((AuthInfoTypeFromClientKey & 0x100000000) != 0)
              {
                v36 = [v11 data];
                [v36 objectForKey:v32];
                memset(buf, 0, 24);
                ctu::cf::assign();
                v49 = *buf;
                v37 = *&buf[16];
                *buf = &v52;
                v38 = sub_1004FCB34(&v58, &v52);
                v39 = v38[5];
                if (v39)
                {
                  v38[6] = v39;
                  operator delete(v39);
                  v38[5] = 0;
                  v38[6] = 0;
                  v38[7] = 0;
                }

                *(v38 + 5) = v49;
                v38[7] = v37;

                v11 = v48;
              }

              else
              {
                [(CTXPCClientHandler *)self getLogContext];
                v35 = *&buf[8];
                ctu::OsLogContext::~OsLogContext(buf);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  *&buf[4] = v32;
                  _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Unable to convert auth info type (%@)", buf, 0xCu);
                }
              }
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v29);
      }

      v52 = 0;
      v53 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v52)
      {
        *buf = 0;
        *&buf[16] = 0u;
        *&buf[8] = &buf[16];
        *buf = sub_100018A64([v47 slotID]);
        *&buf[4] = v45;
        sub_100BE09D8(&buf[8], v58, v59);
        v40 = v52;
        v50 = *buf;
        sub_1004F1F78(v51, &buf[8]);
        v41 = self;
        v42 = objc_retainBlock(v46);
        v60[0] = off_101F3C100;
        v60[1] = v41;
        v60[2] = v42;
        v60[3] = v60;
        (*(*v40 + 256))(v40, &v50, v60);
        sub_1004F26B0(v60);
        sub_10004EC58(v51, v51[1]);
        sub_10004EC58(&buf[8], *&buf[16]);
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v43 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for generateAuthenticationInfoUsingSim", buf, 2u);
        }

        v44 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
        (*(v46 + 2))(v46, 0, v44);
      }

      v10 = v46;
      if (v53)
      {
        sub_100004A34(v53);
      }

      sub_10004EC58(&v58, v59[0]);
    }

    else
    {
      v11 = v48;
      v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      (v10)[2](v10, 0, v23);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    v11 = v48;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyLabel", buf, 2u);
    }
  }

LABEL_23:
}

- (void)setLabel:(id)a3 label:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    v10[2](v10, v11);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v12 = v14;
    ctu::OsLogContext::~OsLogContext(v13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid completion handler for setLabel", v13, 2u);
    }
  }
}

- (void)setDefaultVoice:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v21 = objc_retainBlock(v7);
          v27[0] = off_101F3C180;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 776))(v16, v20, v27);
          sub_10000FF50(v27);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for setDefaultVoice", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for setDefaultVoice", &v24, 2u);
  }

LABEL_23:
}

- (void)setActiveUserDataSelection:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v21 = objc_retainBlock(v7);
          v27[0] = off_101F3C200;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 784))(v16, v20, v27);
          sub_10000FF50(v27);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for setActiveUserDataSelection", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for setActiveUserDataSelection", &v24, 2u);
  }

LABEL_23:
}

- (void)shouldAllowSimLockFor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v23);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v25 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v24)
        {
          sub_100004A34(v24);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v21 = [NSNumber numberWithBool:(*(*v16 + 72))(v16, v20)];
          (v7)[2](v7, v21, 0);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v24;
          ctu::OsLogContext::~OsLogContext(&v23);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v23) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for shouldAllowSimLockFor", &v23, 2u);
          }

          v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          v7[2](v7, 0, v21);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for shouldAllowSimLockFor", &v23, 2u);
  }

LABEL_23:
}

- (void)fetchSIMLockValue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      *buf = 0;
      v15 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for fetchSIMLockValue", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v7[2](v7, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for fetchSIMLockValue", buf, 2u);
    }
  }
}

- (void)saveSIMLockValue:(id)a3 enabled:(BOOL)a4 pin:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (v11)
  {
    if (v9)
    {
      *buf = 0;
      v19 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (v17)
      {
        sub_100004A34(v17);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v14 = v17;
      ctu::OsLogContext::~OsLogContext(v16);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for saveSIMLockValue", v16, 2u);
      }

      v15 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v11[2](v11, v15);

      if (v19)
      {
        sub_100004A34(v19);
      }
    }

    else
    {
      v13 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v11[2](v11, v13);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v12 = v19;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid completion handler for saveSIMLockValue", buf, 2u);
    }
  }
}

- (void)unlockPIN:(id)a3 pin:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8 && v9)
    {
      *buf = 0;
      v18 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (v16)
      {
        sub_100004A34(v16);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v13 = v16;
      ctu::OsLogContext::~OsLogContext(v15);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for unlockPIN", v15, 2u);
      }

      v14 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v10[2](v10, v14);

      if (v18)
      {
        sub_100004A34(v18);
      }
    }

    else
    {
      v12 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v10[2](v10, v12);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v11 = v18;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid completion handler for unlockPIN", buf, 2u);
    }
  }
}

- (void)unlockPUK:(id)a3 puk:(id)a4 newPin:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if (v10 && v11 && v12)
    {
      *buf = 0;
      v21 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (v19)
      {
        sub_100004A34(v19);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v16 = v19;
      ctu::OsLogContext::~OsLogContext(v18);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for unlockPUK", v18, 2u);
      }

      v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v13[2](v13, v17);

      if (v21)
      {
        sub_100004A34(v21);
      }
    }

    else
    {
      v15 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v13[2](v13, v15);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v14 = v21;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid completion handler for unlockPUK", buf, 2u);
    }
  }
}

- (void)changePIN:(id)a3 oldPin:(id)a4 newPin:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if (v10 && v11 && v12)
    {
      *buf = 0;
      v21 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (v19)
      {
        sub_100004A34(v19);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v16 = v19;
      ctu::OsLogContext::~OsLogContext(v18);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for changePIN", v18, 2u);
      }

      v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v13[2](v13, v17);

      if (v21)
      {
        sub_100004A34(v21);
      }
    }

    else
    {
      v15 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v13[2](v13, v15);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v14 = v21;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid completion handler for unlockPUK", buf, 2u);
    }
  }
}

- (void)getRemainingPINAttemptCount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      *buf = 0;
      v15 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for getRemainingPINAttemptCount", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v7[2](v7, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for getRemainingPINAttemptCount", buf, 2u);
    }
  }
}

- (void)getRemainingPUKAttemptCount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      *buf = 0;
      v15 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (v13)
      {
        sub_100004A34(v13);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v10 = v13;
      ctu::OsLogContext::~OsLogContext(v12);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find SubscriberSimInterface for getRemainingPUKAttemptCount", v12, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v7[2](v7, 0, v11);

      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    else
    {
      v9 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v9);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = v15;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for getRemainingPUKAttemptCount", buf, 2u);
    }
  }
}

- (void)promptForSIMUnlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for promptForSIMUnlock", &v23, 2u);
    }

    goto LABEL_19;
  }

  if (!v6)
  {
    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v7[2](v7, v19);

    goto LABEL_19;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v23);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v25 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_14:
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v16)
  {
    v20 = sub_100018A64([v6 slotID]);
    (*(*v16 + 24))(v16, v20);
    v7[2](v7, 0);
    if ((v17 & 1) == 0)
    {
LABEL_18:
      sub_100004A34(v15);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v21 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find SubscriberUserAlertManagerInterface for promptForSIMUnlock", &v23, 2u);
    }

    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    v7[2](v7, v22);

    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
}

- (void)SIMUnlockProcedureDidComplete
{
  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v14);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v16 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v16);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v11)
  {
    (*(*v11 + 48))(v11);
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v13 = v15;
  ctu::OsLogContext::~OsLogContext(&v14);
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    if (v12)
    {
      return;
    }

    goto LABEL_15;
  }

  LOWORD(v14) = 0;
  _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find SubscriberUserAlertManagerInterface for SIMUnlockProcedureDidComplete", &v14, 2u);
  if (v12)
  {
    return;
  }

LABEL_15:
  sub_100004A34(v10);
}

- (void)authenticate:(id)a3 request:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      v16 = 0;
      v17 = 0;
      [(CTXPCClientHandler *)self registry];
      sGetSubscriberSimInterface();
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      [(CTXPCClientHandler *)self getLogContext];
      v13 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find SubscriberController for SIM authentication", buf, 2u);
      }

      v14 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      v10[2](v10, 0, v14);

      if (v17)
      {
        sub_100004A34(v17);
      }
    }

    else
    {
      v12 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v10[2](v10, 0, v12);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v11 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid completion handler when performing SIM authentication", buf, 2u);
    }
  }
}

- (void)getUserAuthToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v20 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v20);

      goto LABEL_25;
    }

    v8 = sub_10002A8E0(v6);
    *buf = 0;
    v28 = 0;
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v25);
    v10 = ServiceMap;
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    v29 = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &v29);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
LABEL_14:
        (*(*v17 + 8))(buf, v17, v8);
        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        if (v26)
        {
          sub_100004A34(v26);
        }

        v21 = *buf;
        if (*buf)
        {
          v22 = objc_retainBlock(v7);
          v30[0] = off_101F3C480;
          v30[1] = v22;
          v30[3] = v30;
          (*(*v21 + 248))(v21, v30);
          sub_1003EDCF8(v30);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find CarrierEntitlementsController for getting user auth token", &v25, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v24);
        }

        if (v28)
        {
          sub_100004A34(v28);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v19 = v28;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Invalid completion handler for getting user auth token", buf, 2u);
  }

LABEL_25:
}

- (void)refreshUserAuthToken:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v20 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v20);

      goto LABEL_25;
    }

    v8 = sub_10002A8E0(v6);
    *buf = 0;
    v28 = 0;
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v25);
    v10 = ServiceMap;
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    v29 = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &v29);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
LABEL_14:
        (*(*v17 + 8))(buf, v17, v8);
        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        if (v26)
        {
          sub_100004A34(v26);
        }

        v21 = *buf;
        if (*buf)
        {
          v22 = objc_retainBlock(v7);
          v30[0] = off_101F3C500;
          v30[1] = v22;
          v30[3] = v30;
          (*(*v21 + 256))(v21, v30);
          sub_10000FF50(v30);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find CarrierEntitlementsController for refresh user auth token", &v25, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, v24);
        }

        if (v28)
        {
          sub_100004A34(v28);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v19 = v28;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Invalid completion handler for refresh user auth token", buf, 2u);
  }

LABEL_25:
}

- (void)getUserDefaultVoiceSubscriptionContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    buf = 0uLL;
    v5 = sub_10006C5D0(&buf);
    if (buf)
    {
      v6 = (*(*buf + 32))(buf, v5);
      if (v6)
      {
        v7 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:sub_10000FD54(v6)];
        if (v7)
        {
          v4[2](v4, v7, 0);
        }

        else
        {
          v10 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
          (v4)[2](v4, 0, v10);

          v7 = 0;
        }
      }

      else
      {
        v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
        (v4)[2](v4, 0, v7);
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v9 = v12;
      ctu::OsLogContext::~OsLogContext(&v11);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "CommCenter uninitialized", &v11, 2u);
      }

      v7 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      (v4)[2](v4, 0, v7);
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v8 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid completion handler for getUserDefaultVoiceSubscriptionContext", &buf, 2u);
    }
  }
}

- (void)getLastKnownSimDeactivationInfoFor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100018A64([v6 slotID]);
  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(__p[0]);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  v24 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v24);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_9:
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (!v17)
  {
    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    v7[2](v7, 0, v19);
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  *__p = 0u;
  (*(*v17 + 8))(__p, v17, v8);
  if (v23)
  {
    v20 = sub_100185E04(__p);
    (v7)[2](v7, v20, 0);
  }

  else
  {
    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:6 userInfo:0];
    v7[2](v7, 0, v20);
  }

  if (v23 == 1)
  {
    v24 = v22 + 1;
    sub_10143F388(&v24);
    if (SBYTE7(v22[0]) < 0)
    {
      operator delete(__p[0]);
      if (v18)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  if ((v18 & 1) == 0)
  {
LABEL_19:
    sub_100004A34(v16);
  }

LABEL_20:
}

- (void)copyMobileSubscriberIso3CountryCode:(id)a3 MNC:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v21 = v35;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMobileSubscriberIso3CountryCode", buf, 2u);
    }

    goto LABEL_27;
  }

  if (!v8 || !v9)
  {
    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v10[2](v10, 0, v22);

    goto LABEL_27;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(*buf);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v32[0] = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, v32);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
      v20 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
  }

  std::mutex::unlock(v12);
  v18 = 0;
  v20 = 1;
LABEL_15:
  if (v35)
  {
    sub_100004A34(v35);
  }

  if (v19)
  {
    *buf = 0;
    v35 = 0;
    v36 = 0;
    v29 = v20;
    sub_10000501C(v32, [v8 UTF8String]);
    sub_10000501C(__p, [v9 UTF8String]);
    (*(*v19 + 88))(buf, v19, v32, __p);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    if (v33 < 0)
    {
      operator delete(v32[0]);
    }

    v23 = [NSMutableArray arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v35 - *buf) >> 3)];
    if (v35 != *buf)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        v26 = [NSString stringWithUTF8String:?];
        [v23 setObject:v26 atIndexedSubscript:v25];

        ++v25;
        v24 += 24;
      }

      while (v25 < 0xAAAAAAAAAAAAAAABLL * ((v35 - *buf) >> 3));
    }

    (v10)[2](v10, v23, 0);

    v32[0] = buf;
    sub_1000087B4(v32);
    if ((v29 & 1) == 0)
    {
LABEL_26:
      sub_100004A34(v18);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v27 = v35;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not find isoCacheInterface for copyMobileSubscriberIso3CountryCode", buf, 2u);
    }

    v28 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    v10[2](v10, 0, v28);

    if ((v20 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
}

- (void)checkEmbeddedSimHealthWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v19);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v21 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v21);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_12:
    if (v20)
    {
      sub_100004A34(v20);
    }

    if (v13)
    {
      v16 = (*(*v13 + 288))(v13);
      if ((v16 & 0x100) != 0)
      {
        (*(v4 + 2))(v4, v16 & 1, 0);
LABEL_22:
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_24;
      }

      v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      (*(v4 + 2))(v4, 0, v17);
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v18 = v20;
      ctu::OsLogContext::~OsLogContext(&v19);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "SubscriberSimInterface not available", &v19, 2u);
      }

      v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      (*(v4 + 2))(v4, 0, v17);
    }

    goto LABEL_22;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v20;
  ctu::OsLogContext::~OsLogContext(&v19);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v19) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler", &v19, 2u);
  }

LABEL_24:
}

- (void)supportsEmbeddedSIMWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v18);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (v13)
        {
          v16 = objc_retainBlock(v4);
          v21[0] = off_101F3C580;
          v21[1] = v16;
          v21[3] = v21;
          (*(*v13 + 296))(v13, v21);
          sub_10000FF50(v21);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v17 = v19;
          ctu::OsLogContext::~OsLogContext(&v18);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v18) = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "SubscriberSimInterface not available", &v18, 2u);
          }

          (*(v4 + 2))(v4, 0);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v19;
  ctu::OsLogContext::~OsLogContext(&v18);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion", &v18, 2u);
  }

LABEL_21:
}

- (void)supportsLimitedUseSIMsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (capabilities::ct::supportsVoiceCall(v4))
    {
      v6 = _os_feature_enabled_impl();
    }

    else
    {
      v6 = 0;
    }

    (*(v5 + 2))(v5, v6);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v7 = v9;
    ctu::OsLogContext::~OsLogContext(&v8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid completion", &v8, 2u);
    }
  }
}

- (void)copyMccOrPlmnsListForIso3CountryCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_32;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v28 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v28);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v32)
        {
          sub_100004A34(v32);
        }

        if (v16)
        {
          *buf = 0;
          v32 = 0;
          v33 = 0;
          sub_10000501C(buf, [v6 UTF8String]);
          v20 = HIBYTE(v33);
          if (v33 < 0)
          {
            v20 = v32;
          }

          if (v20)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            (*(*v16 + 96))(&v28, v16, buf);
            v21 = [NSMutableArray arrayWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3)];
            if (v29 != v28)
            {
              v22 = 0;
              v23 = 0;
              do
              {
                v24 = [NSString stringWithUTF8String:?];
                [v21 setObject:v24 atIndexedSubscript:v23];

                ++v23;
                v22 += 24;
              }

              while (v23 < 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3));
            }

            (v7)[2](v7, v21, 0);

            v34 = &v28;
            sub_1000087B4(&v34);
          }

          else
          {
            v27 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            v7[2](v7, 0, v27);
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v25 = v32;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not find isoCacheInterface for copyMobileSubscriberIso3CountryCode", buf, 2u);
          }

          v26 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          v7[2](v7, 0, v26);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_32;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v32;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for copyMccOrPlmnsListForIso3CountryCode", buf, 2u);
  }

LABEL_32:
}

- (void)isAnySimReadyWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v15 = v19;
    ctu::OsLogContext::~OsLogContext(&v18);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion", &v18, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v18);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v20 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
LABEL_11:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
LABEL_12:
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (!v13)
  {
    v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v4[2](v4, 0, v17);

    if (v14)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v16 = (*(*v13 + 304))(v13);
  v4[2](v4, v16, 0);
  if ((v14 & 1) == 0)
  {
LABEL_16:
    sub_100004A34(v12);
  }

LABEL_17:
}

- (void)isSimMatching:(id)a3 carrierDescriptors:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v23 = v41;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid completion", buf, 2u);
    }

    goto LABEL_15;
  }

  if (!v9 || ![v9 count] || (v11 = sub_10002A8E0(v8), !v11))
  {
    v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v10[2](v10, 0, v22);

    goto LABEL_15;
  }

  if ([(CTXPCClientHandler *)self hasEntitlement:33])
  {
LABEL_6:
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v13 = ServiceMap;
    if ((v14 & 0x8000000000000000) != 0)
    {
      v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    std::mutex::lock(ServiceMap);
    v42 = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, &v42);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
LABEL_25:
    if (v41)
    {
      sub_100004A34(v41);
    }

    if (v20)
    {
      v39 = v9;
      CFRetain(v9);
      v33 = (*(*v20 + 312))(v20, v11, &v39);
      v10[2](v10, v33, 0);
      sub_100010250(&v39);
      if ((v21 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v34 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
      v10[2](v10, 0, v34);

      if ((v21 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_15;
  }

  [(CTXPCClientHandler *)self registry];
  v24 = Registry::getServiceMap(*buf);
  v25 = v24;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(v24);
  v42 = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, &v42);
  if (v30)
  {
    v31 = v30[3];
    v19 = v30[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v19);
      v32 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v31 = 0;
  }

  std::mutex::unlock(v25);
  v19 = 0;
  v32 = 1;
LABEL_34:
  if (v41)
  {
    sub_100004A34(v41);
  }

  if (v31)
  {
    v35 = [(CTXPCClientHandler *)self isLinkedOnOrAfterVersion:@"18.0"];
    v36 = v35;
    if ((v35 & 0x100) != 0)
    {
      if (((GestaltUtilityInterface::isIPhone(v31) & 1) != 0 || GestaltUtilityInterface::isIPad(v31)) && (v36 & 1) == 0 && [(CTXPCClientHandler *)self hasEntitlement:16])
      {
        if ((v32 & 1) == 0)
        {
          sub_100004A34(v19);
        }

        goto LABEL_6;
      }

      v37 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:13 userInfo:0];
      v10[2](v10, 0, v37);
    }

    else
    {
      v37 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      v10[2](v10, 0, v37);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v38 = v41;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Missing gestalt", buf, 2u);
    }

    v37 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v10[2](v10, 0, v37);
  }

  if ((v32 & 1) == 0)
  {
LABEL_51:
    sub_100004A34(v19);
  }

LABEL_15:
}

- (void)dataUsageForLastPeriods:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    if (!a3)
    {
      v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v6[2](v6, 0, v18);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v23);
    v8 = ServiceMap;
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    v25 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v25);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
LABEL_14:
        if (v24)
        {
          sub_100004A34(v24);
        }

        if (v15)
        {
          v19 = objc_retainBlock(v6);
          v20 = self;
          v26[0] = off_101F40540;
          v26[1] = v19;
          v26[2] = v20;
          v26[3] = v26;
          (*(*v15 + 176))(v15, a3, v26);
          sub_1010CE1B8(v26);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v21 = v24;
          ctu::OsLogContext::~OsLogContext(&v23);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v23) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for getting app data usage.", &v23, 2u);
          }

          v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v6[2](v6, 0, v22);
        }

        if ((v16 & 1) == 0)
        {
          sub_100004A34(v14);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v17 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for data usage query", &v23, 2u);
  }

LABEL_23:
}

- (void)dataUsageForLastPeriodsOnActivePairedDevice:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = v31;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for data usage query on active paired device", buf, 2u);
    }

    goto LABEL_31;
  }

  if (!a3)
  {
    v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v6[2](v6, 0, v18);

    goto LABEL_31;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(*buf);
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *&v28 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v28);
  if (!v13)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
LABEL_13:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
LABEL_14:
  if (v31)
  {
    sub_100004A34(v31);
  }

  if (v15)
  {
    v27 = 0;
    v19 = xpc_dictionary_create(0, 0, 0);
    v20 = v19;
    if (v19)
    {
      v27 = v19;
    }

    else
    {
      v20 = xpc_null_create();
      v27 = v20;
      if (!v20)
      {
        v22 = xpc_null_create();
        v20 = 0;
        goto LABEL_25;
      }
    }

    if (xpc_get_type(v20) == &_xpc_type_dictionary)
    {
      xpc_retain(v20);
      goto LABEL_26;
    }

    v22 = xpc_null_create();
LABEL_25:
    v27 = v22;
LABEL_26:
    xpc_release(v20);
    v25 = xpc_int64_create(a3);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    *buf = &v27;
    v31 = "kPeriods";
    sub_10000F688(buf, &v25, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v25);
    v25 = 0;
    v23 = self;
    v24 = objc_retainBlock(v6);
    v29[0] = off_101F405C0;
    v29[1] = v23;
    v29[2] = v24;
    v29[3] = v29;
    v28 = 0uLL;
    operator new();
  }

  v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  v6[2](v6, 0, v21);

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

LABEL_31:
}

- (void)billingCycleEndDatesForLastPeriods:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    if (!a3)
    {
      v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v6[2](v6, 0, v18);

      goto LABEL_26;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v22);
    v8 = ServiceMap;
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    v24 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v24);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
LABEL_14:
        if (v23)
        {
          sub_100004A34(v23);
        }

        if (v15)
        {
          v19 = (*(*v15 + 184))(v15, a3);
          if (v19)
          {
            v20 = 0;
          }

          else
          {
            v20 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          }

          (v6)[2](v6, v19, v20);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v21 = v23;
          ctu::OsLogContext::~OsLogContext(&v22);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v22) = 0;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for billing cycle end dates query.", &v22, 2u);
          }

          v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v6[2](v6, 0, v19);
        }

        if ((v16 & 1) == 0)
        {
          sub_100004A34(v14);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v17 = v23;
  ctu::OsLogContext::~OsLogContext(&v22);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v22) = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for billing cycle end dates query", &v22, 2u);
  }

LABEL_26:
}

- (void)usageCollectionEnabled:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v18);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (v13)
        {
          v16 = [NSNumber numberWithBool:(*(*v13 + 16))(v13)];
          v4[2](v4, v16, 0);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v17 = v19;
          ctu::OsLogContext::~OsLogContext(&v18);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v18) = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for getting if usage collection is enabled.", &v18, 2u);
          }

          v16 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (v4)[2](v4, 0, v16);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v19;
  ctu::OsLogContext::~OsLogContext(&v18);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for billing cycle end dates query", &v18, 2u);
  }

LABEL_21:
}

- (void)setUsageCollectionEnabled:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (!v6)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = v21;
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting usage collection", &v20, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v20);
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  v22 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v22);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_12:
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v15)
  {
    (*(*v15 + 24))(v15, v4);
    v6[2](v6, 0);
    if ((v16 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v14);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v21;
    ctu::OsLogContext::~OsLogContext(&v20);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for setting usage collection.", &v20, 2u);
    }

    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (v6)[2](v6, v19);

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)userEnteredMonthlyBudget:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_33;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v16)
        {
          memset(buf, 0, sizeof(buf));
          v29 = 0;
          [(CTXPCClientHandler *)self registry];
          sub_100018A64([v6 slotID]);
          PersonalityIdFromSlotId();
          if (SHIBYTE(v27) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
            if (SHIBYTE(v27) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = *__p;
            v29 = v27;
          }

          if (v25)
          {
            sub_100004A34(v25);
          }

          v22 = (*(*v16 + 192))(v16, buf);
          if (v23)
          {
            v24 = [NSNumber numberWithUnsignedLongLong:v22];
            (v7)[2](v7, v24, 0);
          }

          else
          {
            v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            v7[2](v7, 0, v24);
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for user entered monthly budget query.", buf, 2u);
          }

          v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v21);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for user entered monthly budget query", buf, 2u);
  }

LABEL_33:
}

- (void)setUserEntered:(id)a3 monthlyBudget:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (!v8)
    {
      v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v10[2](v10, v22);

      goto LABEL_37;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v12 = ServiceMap;
    if (v13 < 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, __p);
    if (v17)
    {
      v19 = v17[3];
      v18 = v17[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        v20 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
LABEL_14:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v19)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v23 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for setting user entered monthly budget.", buf, 2u);
      }

      v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      v10[2](v10, v24);
      goto LABEL_35;
    }

    memset(buf, 0, sizeof(buf));
    v29 = 0;
    [(CTXPCClientHandler *)self registry];
    sub_100018A64([v8 slotID]);
    PersonalityIdFromSlotId();
    if (SHIBYTE(v27) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = *__p;
      v29 = v27;
    }

    if (v25)
    {
      sub_100004A34(v25);
    }

    if (SHIBYTE(v29) < 0)
    {
      if (!*&buf[8])
      {
        goto LABEL_32;
      }
    }

    else if (!HIBYTE(v29))
    {
      goto LABEL_32;
    }

    if ((*(*v19 + 200))(v19, buf, [v9 unsignedLongLongValue]))
    {
      v24 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_33:
    v10[2](v10, v24);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }

LABEL_35:

    if ((v20 & 1) == 0)
    {
      sub_100004A34(v18);
    }

    goto LABEL_37;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v21 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting user entered monthly budget", buf, 2u);
  }

LABEL_37:
}

- (void)clearUserEnteredMonthlyBudget:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v19);

      goto LABEL_37;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_14:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v16)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v20 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for clearing user entered monthly budget.", buf, 2u);
      }

      v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      v7[2](v7, v21);
      goto LABEL_35;
    }

    memset(buf, 0, sizeof(buf));
    v26 = 0;
    [(CTXPCClientHandler *)self registry];
    sub_100018A64([v6 slotID]);
    PersonalityIdFromSlotId();
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = *__p;
      v26 = v24;
    }

    if (v22)
    {
      sub_100004A34(v22);
    }

    if (SHIBYTE(v26) < 0)
    {
      if (!*&buf[8])
      {
        goto LABEL_32;
      }
    }

    else if (!HIBYTE(v26))
    {
      goto LABEL_32;
    }

    if ((*(*v16 + 208))(v16, buf))
    {
      v21 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_33:
    v7[2](v7, v21);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*buf);
    }

LABEL_35:

    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    goto LABEL_37;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for clearing user entered monthly budget", buf, 2u);
  }

LABEL_37:
}

- (void)userEnteredMonthlyRoamingBudget:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_33;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v16)
        {
          memset(buf, 0, sizeof(buf));
          v29 = 0;
          [(CTXPCClientHandler *)self registry];
          sub_100018A64([v6 slotID]);
          PersonalityIdFromSlotId();
          if (SHIBYTE(v27) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
            if (SHIBYTE(v27) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = *__p;
            v29 = v27;
          }

          if (v25)
          {
            sub_100004A34(v25);
          }

          v22 = (*(*v16 + 216))(v16, buf);
          if (v23)
          {
            v24 = [NSNumber numberWithUnsignedLongLong:v22];
            (v7)[2](v7, v24, 0);
          }

          else
          {
            v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            v7[2](v7, 0, v24);
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for user entered monthly budget query.", buf, 2u);
          }

          v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v21);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for user entered monthly budget query", buf, 2u);
  }

LABEL_33:
}

- (void)setUserEntered:(id)a3 monthlyRoamingBudget:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (!v8)
    {
      v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v10[2](v10, v22);

      goto LABEL_37;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v12 = ServiceMap;
    if (v13 < 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, __p);
    if (v17)
    {
      v19 = v17[3];
      v18 = v17[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        v20 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
LABEL_14:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v19)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v23 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for setting user entered monthly budget.", buf, 2u);
      }

      v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      v10[2](v10, v24);
      goto LABEL_35;
    }

    memset(buf, 0, sizeof(buf));
    v29 = 0;
    [(CTXPCClientHandler *)self registry];
    sub_100018A64([v8 slotID]);
    PersonalityIdFromSlotId();
    if (SHIBYTE(v27) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = *__p;
      v29 = v27;
    }

    if (v25)
    {
      sub_100004A34(v25);
    }

    if (SHIBYTE(v29) < 0)
    {
      if (!*&buf[8])
      {
        goto LABEL_32;
      }
    }

    else if (!HIBYTE(v29))
    {
      goto LABEL_32;
    }

    if ((*(*v19 + 224))(v19, buf, [v9 unsignedLongLongValue]))
    {
      v24 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_33:
    v10[2](v10, v24);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }

LABEL_35:

    if ((v20 & 1) == 0)
    {
      sub_100004A34(v18);
    }

    goto LABEL_37;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v21 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting user entered monthly budget", buf, 2u);
  }

LABEL_37:
}

- (void)clearUserEnteredMonthlyRoamingBudget:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v19);

      goto LABEL_37;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_14:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v16)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v20 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for clearing user entered monthly budget.", buf, 2u);
      }

      v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      v7[2](v7, v21);
      goto LABEL_35;
    }

    memset(buf, 0, sizeof(buf));
    v26 = 0;
    [(CTXPCClientHandler *)self registry];
    sub_100018A64([v6 slotID]);
    PersonalityIdFromSlotId();
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = *__p;
      v26 = v24;
    }

    if (v22)
    {
      sub_100004A34(v22);
    }

    if (SHIBYTE(v26) < 0)
    {
      if (!*&buf[8])
      {
        goto LABEL_32;
      }
    }

    else if (!HIBYTE(v26))
    {
      goto LABEL_32;
    }

    if ((*(*v16 + 232))(v16, buf))
    {
      v21 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_33:
    v7[2](v7, v21);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*buf);
    }

LABEL_35:

    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    goto LABEL_37;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for clearing user entered monthly budget", buf, 2u);
  }

LABEL_37:
}

- (void)userEnteredBillingEndDayOfMont:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_33;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v16)
        {
          memset(buf, 0, sizeof(buf));
          v28 = 0;
          [(CTXPCClientHandler *)self registry];
          sub_100018A64([v6 slotID]);
          PersonalityIdFromSlotId();
          if (SHIBYTE(v26) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
            if (SHIBYTE(v26) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = *__p;
            v28 = v26;
          }

          if (v24)
          {
            sub_100004A34(v24);
          }

          v22 = (*(*v16 + 240))(v16, buf);
          if ((v22 & 0x100000000) != 0)
          {
            v23 = [NSNumber numberWithInt:v22];
            (v7)[2](v7, v23, 0);
          }

          else
          {
            v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            v7[2](v7, 0, v23);
          }

          if (SHIBYTE(v28) < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v20 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for getting user entered billing end day of the month.", buf, 2u);
          }

          v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v21);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for user entered billing end day of month query", buf, 2u);
  }

LABEL_33:
}

- (void)setUserEnteredBillingEnd:(id)a3 dayOfMonth:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (!v8)
    {
      v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v10[2](v10, v22);

      goto LABEL_37;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v12 = ServiceMap;
    if (v13 < 0)
    {
      v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v15 = 5381;
      do
      {
        v13 = v15;
        v16 = *v14++;
        v15 = (33 * v15) ^ v16;
      }

      while (v16);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v13;
    v17 = sub_100009510(&v12[1].__m_.__sig, __p);
    if (v17)
    {
      v19 = v17[3];
      v18 = v17[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v12);
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        v20 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
LABEL_14:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v19)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v23 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for setting user entered billing end day of the month.", buf, 2u);
      }

      v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      v10[2](v10, v24);
      goto LABEL_35;
    }

    memset(buf, 0, sizeof(buf));
    v29 = 0;
    [(CTXPCClientHandler *)self registry];
    sub_100018A64([v8 slotID]);
    PersonalityIdFromSlotId();
    if (SHIBYTE(v27) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = *__p;
      v29 = v27;
    }

    if (v25)
    {
      sub_100004A34(v25);
    }

    if (SHIBYTE(v29) < 0)
    {
      if (!*&buf[8])
      {
        goto LABEL_32;
      }
    }

    else if (!HIBYTE(v29))
    {
      goto LABEL_32;
    }

    if ((*(*v19 + 248))(v19, buf, [v9 intValue]))
    {
      v24 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_33:
    v10[2](v10, v24);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }

LABEL_35:

    if ((v20 & 1) == 0)
    {
      sub_100004A34(v18);
    }

    goto LABEL_37;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v21 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Invalid completion handler for setting user entered billing end day of the month", buf, 2u);
  }

LABEL_37:
}

- (void)clearUserEnteredBillingEndDayOfMonth:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v19);

      goto LABEL_37;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, __p);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_14:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v16)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v20 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find DataUsageController for clearing user entered billing end day of the month.", buf, 2u);
      }

      v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
      v7[2](v7, v21);
      goto LABEL_35;
    }

    memset(buf, 0, sizeof(buf));
    v26 = 0;
    [(CTXPCClientHandler *)self registry];
    sub_100018A64([v6 slotID]);
    PersonalityIdFromSlotId();
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = *__p;
      v26 = v24;
    }

    if (v22)
    {
      sub_100004A34(v22);
    }

    if (SHIBYTE(v26) < 0)
    {
      if (!*&buf[8])
      {
        goto LABEL_32;
      }
    }

    else if (!HIBYTE(v26))
    {
      goto LABEL_32;
    }

    if ((*(*v16 + 256))(v16, buf))
    {
      v21 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_33:
    v7[2](v7, v21);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*buf);
    }

LABEL_35:

    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    goto LABEL_37;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for clearing user entered billing end day of the month", buf, 2u);
  }

LABEL_37:
}

- (void)getCellularUsageWorkspaceInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v35 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v35);
    if (v11)
    {
      v12 = v11[3];
      v13 = v11[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v14 = 0;
LABEL_12:
        if (v34)
        {
          sub_100004A34(v34);
        }

        if (v12)
        {
          (*(*v12 + 8))(buf, v12);
          v16 = *buf;
          sub_10001021C(buf);
          v17 = [CTCellularUsageWorkspaceInfo alloc];
          v18 = [v16 objectForKey:@"kCTCellularUsageSubscriberTag"];
          v19 = [v16 objectForKey:@"kCTCellularUsageMetaDataForHomeCountry"];
          [v16 objectForKey:@"kCTCellularUsageMetaDataForRoaming"];
          v29 = v14;
          v31 = v19;
          v30 = v32 = v18;
          v28 = [v16 objectForKey:@"kCTCellularUsageBillingCycleEndDate"];
          v27 = [v16 objectForKey:@"kCTCellularUsagePreviousBillingCycleDate"];
          v26 = [v16 objectForKey:@"kCTCellularUsageBillingCycleSupported"];
          v20 = [v16 objectForKey:@"kCTCellularUsageCarrierSpaceSupported"];
          v21 = [v16 objectForKey:@"kCTCellularUsageWorkspaceName"];
          v22 = [v16 objectForKey:@"kCTCellularUsageWorkspacePath"];
          v23 = [v17 initWithSubscriberTag:v32 metaDataForHomeCountry:v31 metaDataForRoaming:v30 billingCycleEndDate:v28 previousBillingCycleDate:v27 billingCycleSupported:v26 carrierSpaceSupported:v20 workspaceName:v21 workspacePath:v22];

          v4[2](v4, v23, 0);
          v14 = v29;
          v24 = v16;
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v25 = v34;
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not find data usage controller", buf, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          (v4)[2](v4, 0, v24);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v6);
    v13 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v34;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Missing completion handler", buf, 2u);
  }

LABEL_21:
}

- (void)isPrivateNetworkContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v26);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v28 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v28);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (v16)
        {
          if (v6 && (v19 = sub_100018A64([v6 slotID]), v19))
          {
            v20 = self;
            v21 = objc_retainBlock(v7);
            v29[0] = off_101F42088;
            v29[1] = v20;
            v29[2] = v21;
            v29[3] = v29;
            (*(*v16 + 880))(v16, v19, v29);
            sub_100627050(v29);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v22 = v27;
            ctu::OsLogContext::~OsLogContext(&v26);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v26) = 0;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No slot in context", &v26, 2u);
            }

            v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            (*(v7 + 2))(v7, 0, v23);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v24 = v27;
          ctu::OsLogContext::~OsLogContext(&v26);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v26) = 0;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for isPrivateNetworkContext", &v26, 2u);
          }

          v25 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          (*(v7 + 2))(v7, 0, v25);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v27;
  ctu::OsLogContext::~OsLogContext(&v26);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for isPrivateNetworkContext", &v26, 2u);
  }

LABEL_26:
}

- (void)getPrivateNetworkCapabilitiesForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v26);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v28 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v28);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (v16)
        {
          if (v6 && (v19 = sub_100018A64([v6 slotID]), v19))
          {
            v20 = self;
            v21 = objc_retainBlock(v7);
            v29[0] = off_101F42108;
            v29[1] = v20;
            v29[2] = v21;
            v29[3] = v29;
            (*(*v16 + 888))(v16, v19, v29);
            sub_1008A1248(v29);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v22 = v27;
            ctu::OsLogContext::~OsLogContext(&v26);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v26) = 0;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No slot in context", &v26, 2u);
            }

            v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            (*(v7 + 2))(v7, 0, v23);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v24 = v27;
          ctu::OsLogContext::~OsLogContext(&v26);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v26) = 0;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for getPrivateNetworkCapabilitiesForContext", &v26, 2u);
          }

          v25 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          (*(v7 + 2))(v7, 0, v25);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v27;
  ctu::OsLogContext::~OsLogContext(&v26);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getPrivateNetworkCapabilitiesForContext", &v26, 2u);
  }

LABEL_26:
}

- (void)isPrivateNetworkSIM:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v25);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v27 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          if (v6 && (v19 = sub_100018A64([v6 slotID]), v19))
          {
            v20 = objc_retainBlock(v7);
            v28[0] = off_101F42198;
            v28[1] = v20;
            v28[3] = v28;
            (*(*v16 + 912))(v16, v19, v28);
            sub_10000FF50(v28);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v21 = v26;
            ctu::OsLogContext::~OsLogContext(&v25);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v25) = 0;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No slot in context", &v25, 2u);
            }

            v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
            (*(v7 + 2))(v7, 0, v22);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for isPrivateNetworkSIM", &v25, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          (*(v7 + 2))(v7, 0, v24);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(&v25);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for isPrivateNetworkSIM", &v25, 2u);
  }

LABEL_26:
}

- (void)isPrivateNetworkEvaluationNeeded:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v15 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for isPrivateNetworkEvaluationNeeded", &v19, 2u);
    }

    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v19);
  v6 = ServiceMap;
  v7 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v8 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v21 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v21);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_12:
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v13)
  {
    v16 = (*(*v13 + 920))(v13);
    v4[2](v4, v16, 0);
    if ((v14 & 1) == 0)
    {
LABEL_16:
      sub_100004A34(v12);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for isPrivateNetworkEvaluationNeeded", &v19, 2u);
    }

    v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    (v4)[2](v4, 0, v18);

    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

- (void)isPrivateNetworkPreferredOverWifi:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v25);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v27 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          if (v6 && (v19 = sub_100018A64([v6 slotID]), v19))
          {
            v20 = objc_retainBlock(v7);
            v28[0] = off_101F42218;
            v28[1] = v20;
            v28[3] = v28;
            (*(*v16 + 904))(v16, v19, v28);
            sub_10000FF50(v28);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v21 = v26;
            ctu::OsLogContext::~OsLogContext(&v25);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v25) = 0;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "No slot in context", &v25, 2u);
            }

            v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
            (*(v7 + 2))(v7, 0, v22);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for isPrivateNetworkPreferredOverWifi", &v25, 2u);
          }

          v24 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          (*(v7 + 2))(v7, 0, v24);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(&v25);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for isPrivateNetworkPreferredOverWifi", &v25, 2u);
  }

LABEL_26:
}

- (void)updateGeofenceProfile:(id)a3 completion:(id)a4
{
  v47 = a3;
  v6 = a4;
  if (v6)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(buf);
    v8 = ServiceMap;
    v9 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v10 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    *&v58 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v58);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v16 = v14;
        sub_100004A34(v14);
        v46 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v16 = 0;
    v46 = 1;
LABEL_12:
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    v45 = v16;
    if (v15)
    {
      if (v47)
      {
        v18 = [v47 geofenceList];
        if (v18)
        {
          v44 = v15;
          v19 = [v47 dataSetName];
          v20 = v19 == 0;

          if (!v20)
          {
            v75 = 0;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            buf = 0u;
            v68 = 0u;
            sub_10000501C(&v70 + 8, "");
            sub_10000501C(&v72, "");
            WORD4(v73) = 0;
            HIDWORD(v73) = 0;
            *(&v74 + 1) = 0;
            v75 = 0;
            *&v74 = &v74 + 8;
            LODWORD(buf) = 1;
            v21 = [v47 dataSetName];
            if (v21)
            {
              v8 = [v47 dataSetName];
              v22 = v8;
              v23 = [(std::mutex *)v8 UTF8String];
            }

            else
            {
              v23 = "";
            }

            sub_100016890((&buf + 8), v23);
            if (v21)
            {
            }

            v25 = [v47 versionNumber];
            if (v25)
            {
              v8 = [v47 versionNumber];
              v26 = v8;
              v27 = [(std::mutex *)v8 UTF8String];
            }

            else
            {
              v27 = "";
            }

            sub_100016890(&v69, v27);
            if (v25)
            {
            }

            BYTE9(v73) = [v47 cellularDataPreferred];
            v28 = [v47 NRStandaloneMode];
            if (v28 < 3)
            {
              HIDWORD(v73) = dword_10197B278[v28];
            }

            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v29 = [v47 geofenceList];
            v30 = [v29 countByEnumeratingWithState:&v63 objects:v77 count:16];
            if (v30)
            {
              v31 = 0;
              v32 = *v64;
              for (i = *v64; ; i = *v64)
              {
                if (i != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v63 + 1) + 8 * v31);
                v62 = 0;
                v60 = 0u;
                __p = 0u;
                v58 = 0u;
                v59 = 0u;
                v35 = [v34 radius];
                [v35 doubleValue];
                *&v58 = v36;

                v37 = [v34 longitude];
                [v37 doubleValue];
                *(&v58 + 1) = v38;

                v39 = [v34 latitude];
                [v39 doubleValue];
                *&v59 = v40;

                v41 = [v34 geofenceId];
                v42 = v41;
                sub_100016890((&v59 + 8), [v41 UTF8String]);

                sub_1004604CC(&v74, &v59 + 1);
                if (SHIBYTE(v62) < 0)
                {
                  operator delete(__p);
                }

                if (SHIBYTE(v60) < 0)
                {
                  operator delete(*(&v59 + 1));
                }

                if (++v31 >= v30)
                {
                  v30 = [v29 countByEnumeratingWithState:&v63 objects:v77 count:16];
                  if (!v30)
                  {
                    break;
                  }

                  v31 = 0;
                }
              }
            }

            sub_100134E64(v48, &buf);
            v43 = objc_retainBlock(v6);
            v76[0] = off_101F42298;
            v76[1] = v43;
            v76[3] = v76;
            (*(*v44 + 928))(v44, v48, v76);
            sub_10000FF50(v76);
            sub_1001349A0(v57, v57[1]);
            if (v56 < 0)
            {
              operator delete(v55);
            }

            if (v54 < 0)
            {
              operator delete(v53);
            }

            if (v52 < 0)
            {
              operator delete(v51);
            }

            if (v50 < 0)
            {
              operator delete(v49);
            }

            sub_1001349A0(&v74, *(&v74 + 1));
            if (SBYTE7(v73) < 0)
            {
              operator delete(v72);
            }

            if (SHIBYTE(v71) < 0)
            {
              operator delete(*(&v70 + 1));
            }

            if (SBYTE7(v70) < 0)
            {
              operator delete(v69);
            }

            if (SHIBYTE(v68) < 0)
            {
              operator delete(*(&buf + 1));
            }

            goto LABEL_23;
          }
        }
      }
    }

    else
    {
      [(CTXPCClientHandler *)self getLogContext];
      v24 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for updateGeofenceProfile", &buf, 2u);
      }
    }

    (*(v6 + 2))(v6, 0);
LABEL_23:
    if ((v46 & 1) == 0)
    {
      sub_100004A34(v45);
    }

    goto LABEL_25;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v17 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for updateGeofenceProfile", &buf, 2u);
  }

LABEL_25:
}

- (void)removeGeofenceProfile:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(buf);
    v6 = ServiceMap;
    v7 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v8 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v37 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v37);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if (v13)
        {
          v36 = 0;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          buf = 0u;
          v29 = 0u;
          sub_10000501C(&v31 + 8, "");
          sub_10000501C(&v33, "");
          WORD4(v34) = 0;
          HIDWORD(v34) = 0;
          *(&v35 + 1) = 0;
          v36 = 0;
          *&v35 = &v35 + 8;
          LODWORD(buf) = 1;
          sub_100134E64(v18, &buf);
          v16 = objc_retainBlock(v4);
          v38[0] = off_101F42318;
          v38[1] = v16;
          v38[3] = v38;
          (*(*v13 + 928))(v13, v18, v38);
          sub_10000FF50(v38);
          sub_1001349A0(v27, v27[1]);
          if (v26 < 0)
          {
            operator delete(__p);
          }

          if (v24 < 0)
          {
            operator delete(v23);
          }

          if (v22 < 0)
          {
            operator delete(v21);
          }

          if (v20 < 0)
          {
            operator delete(v19);
          }

          sub_1001349A0(&v35, *(&v35 + 1));
          if (SBYTE7(v34) < 0)
          {
            operator delete(v33);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(*(&v31 + 1));
          }

          if (SBYTE7(v31) < 0)
          {
            operator delete(v30);
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(*(&buf + 1));
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v17 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for removeGeofenceProfile", &buf, 2u);
          }

          (*(v4 + 2))(v4, 0);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_36;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid completion handler for removeGeofenceProfile", &buf, 2u);
  }

LABEL_36:
}

- (void)deleteHiddenSims:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v5 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid completion handler for deleteHiddenSims", &v19, 2u);
    }

    v4 = &stru_101F42058;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v19);
  v7 = ServiceMap;
  v8 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v9 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  v21 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v21);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_13:
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v14)
  {
    v16 = objc_retainBlock(v4);
    v22[0] = off_101F42398;
    v22[1] = v16;
    v22[3] = v22;
    (*(*v14 + 944))(v14, v22);
    sub_10028ED7C(v22);
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = v20;
    ctu::OsLogContext::~OsLogContext(&v19);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for deleteHiddenSims", &v19, 2u);
    }

    v18 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    v4->invoke(v4, v18);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

- (void)installPrivateNetworkProfile:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v55 = v6;
  if (!v7)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid completion handler for installPrivateNetworkProfile", &buf, 2u);
    }

    goto LABEL_74;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(buf);
  v9 = ServiceMap;
  v10 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *&v66 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v66);
  if (!v14)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
LABEL_11:
    std::mutex::unlock(v9);
    v53 = 0;
    v54 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v53 = v15;
  sub_100004A34(v15);
  v54 = 0;
LABEL_12:
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (v16)
  {
    if (v6 && ([v6 versionNumber], (v18 = objc_claimAutoreleasedReturnValue()) != 0) && (v52 = v16, objc_msgSend(v6, "dataSetName"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 == 0, v19, v18, !v20))
    {
      v83 = 0;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      buf = 0u;
      v76 = 0u;
      sub_10000501C(&v78 + 8, "");
      sub_10000501C(&v80, "");
      WORD4(v81) = 0;
      HIDWORD(v81) = 0;
      *(&v82 + 1) = 0;
      v83 = 0;
      *&v82 = &v82 + 8;
      LODWORD(buf) = 1;
      v21 = [v6 dataSetName];
      if (v21)
      {
        v9 = [v6 dataSetName];
        v22 = v9;
        v23 = [(std::mutex *)v9 UTF8String];
      }

      else
      {
        v23 = "";
      }

      sub_100016890((&buf + 8), v23);
      if (v21)
      {
      }

      v27 = [v6 versionNumber];
      if (v27)
      {
        v9 = [v6 versionNumber];
        v28 = v9;
        v29 = [(std::mutex *)v9 UTF8String];
      }

      else
      {
        v29 = "";
      }

      sub_100016890(&v77, v29);
      if (v27)
      {
      }

      v30 = [v6 csgNetworkIdentifier];
      if (v30)
      {
        v9 = [v6 csgNetworkIdentifier];
        v31 = v9;
        v32 = [(std::mutex *)v9 UTF8String];
      }

      else
      {
        v32 = "";
      }

      sub_100016890((&v78 + 8), v32);
      if (v30)
      {
      }

      v33 = [v6 networkIdentifier];
      if (v33)
      {
        v9 = [v6 networkIdentifier];
        v34 = v9;
        v35 = [(std::mutex *)v9 UTF8String];
      }

      else
      {
        v35 = "";
      }

      sub_100016890(&v80, v35);
      if (v33)
      {
      }

      BYTE9(v81) = [v6 cellularDataPreferred];
      v36 = [v6 NRStandaloneMode];
      if (v36 < 3)
      {
        HIDWORD(v81) = dword_10197B278[v36];
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v37 = [v6 geofenceList];
      v38 = [v37 countByEnumeratingWithState:&v71 objects:v85 count:16];
      if (v38)
      {
        v39 = 0;
        v40 = *v72;
        for (i = *v72; ; i = *v72)
        {
          if (i != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v71 + 1) + 8 * v39);
          v70 = 0;
          v68 = 0u;
          __p = 0u;
          v66 = 0u;
          v67 = 0u;
          v43 = [v42 radius];
          [v43 doubleValue];
          *&v66 = v44;

          v45 = [v42 longitude];
          [v45 doubleValue];
          *(&v66 + 1) = v46;

          v47 = [v42 latitude];
          [v47 doubleValue];
          *&v67 = v48;

          v49 = [v42 geofenceId];
          v50 = v49;
          sub_100016890((&v67 + 8), [v49 UTF8String]);

          sub_1004604CC(&v82, &v67 + 1);
          if (SHIBYTE(v70) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(*(&v67 + 1));
          }

          if (++v39 >= v38)
          {
            v38 = [v37 countByEnumeratingWithState:&v71 objects:v85 count:16];
            if (!v38)
            {
              break;
            }

            v39 = 0;
          }
        }
      }

      sub_100134E64(v56, &buf);
      v51 = objc_retainBlock(v7);
      v84[0] = off_101F42418;
      v84[1] = v51;
      v84[3] = v84;
      (*(*v52 + 952))(v52, v56, 1, v84);
      sub_1008A1348(v84);
      sub_1001349A0(v65, v65[1]);
      if (v64 < 0)
      {
        operator delete(v63);
      }

      if (v62 < 0)
      {
        operator delete(v61);
      }

      if (v60 < 0)
      {
        operator delete(v59);
      }

      if (v58 < 0)
      {
        operator delete(v57);
      }

      sub_1001349A0(&v82, *(&v82 + 1));
      if (SBYTE7(v81) < 0)
      {
        operator delete(v80);
      }

      if (SHIBYTE(v79) < 0)
      {
        operator delete(*(&v78 + 1));
      }

      if (SBYTE7(v78) < 0)
      {
        operator delete(v77);
      }

      if (SHIBYTE(v76) < 0)
      {
        operator delete(*(&buf + 1));
      }
    }

    else
    {
      v26 = [NSError errorWithDomain:&stru_101F6AFB8 code:4 userInfo:0];
      (*(v7 + 2))(v7, v26);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v24 = *(&buf + 1);
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for installPrivateNetworkProfile", &buf, 2u);
    }

    v25 = [NSError errorWithDomain:&stru_101F6AFB8 code:0 userInfo:0];
    (*(v7 + 2))(v7, v25);
  }

  if ((v54 & 1) == 0)
  {
    sub_100004A34(v53);
  }

LABEL_74:
}

- (void)removePrivateNetworkProfile:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(buf);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v54 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v54);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if (v16)
        {
          if (v6)
          {
            v53 = 0;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            buf = 0u;
            v46 = 0u;
            sub_10000501C(&v48 + 8, "");
            sub_10000501C(&v50, "");
            WORD4(v51) = 0;
            HIDWORD(v51) = 0;
            *(&v52 + 1) = 0;
            v53 = 0;
            *&v52 = &v52 + 8;
            v19 = [v6 dataSetName];
            if (v19)
            {
              v9 = [v6 dataSetName];
              v20 = v9;
              v21 = [(std::mutex *)v9 UTF8String];
            }

            else
            {
              v21 = "";
            }

            sub_100016890((&buf + 8), v21);
            if (v19)
            {
            }

            v25 = [v6 versionNumber];
            if (v25)
            {
              v9 = [v6 versionNumber];
              v26 = v9;
              v27 = [(std::mutex *)v9 UTF8String];
            }

            else
            {
              v27 = "";
            }

            sub_100016890(&v47, v27);
            if (v25)
            {
            }

            v28 = [v6 csgNetworkIdentifier];
            if (v28)
            {
              v9 = [v6 csgNetworkIdentifier];
              v29 = v9;
              v30 = [(std::mutex *)v9 UTF8String];
            }

            else
            {
              v30 = "";
            }

            sub_100016890((&v48 + 8), v30);
            if (v28)
            {
            }

            v31 = [v6 networkIdentifier];
            if (v31)
            {
              v9 = [v6 networkIdentifier];
              v32 = v9;
              v33 = [(std::mutex *)v9 UTF8String];
            }

            else
            {
              v33 = "";
            }

            sub_100016890(&v50, v33);
            if (v31)
            {
            }

            sub_100134E64(v35, &buf);
            v34 = objc_retainBlock(v7);
            v55[0] = off_101F42498;
            v55[1] = v34;
            v55[3] = v55;
            (*(*v16 + 952))(v16, v35, 0, v55);
            sub_1008A1348(v55);
            sub_1001349A0(v44, v44[1]);
            if (v43 < 0)
            {
              operator delete(__p);
            }

            if (v41 < 0)
            {
              operator delete(v40);
            }

            if (v39 < 0)
            {
              operator delete(v38);
            }

            if (v37 < 0)
            {
              operator delete(v36);
            }

            sub_1001349A0(&v52, *(&v52 + 1));
            if (SBYTE7(v51) < 0)
            {
              operator delete(v50);
            }

            if (SHIBYTE(v49) < 0)
            {
              operator delete(*(&v48 + 1));
            }

            if (SBYTE7(v48) < 0)
            {
              operator delete(v47);
            }

            if (SHIBYTE(v46) < 0)
            {
              operator delete(*(&buf + 1));
            }
          }

          else
          {
            v24 = [NSError errorWithDomain:&stru_101F6AFB8 code:4 userInfo:0];
            (*(v7 + 2))(v7, v24);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for installPrivateNetworkProfile", &buf, 2u);
          }

          v23 = [NSError errorWithDomain:&stru_101F6AFB8 code:0 userInfo:0];
          (*(v7 + 2))(v7, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_58;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for installPrivateNetworkProfile", &buf, 2u);
  }

LABEL_58:
}

- (void)updatePrivateNetworkProfile:(id)a3 setProfileAside:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(buf);
    v11 = ServiceMap;
    v12 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v13 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    v56 = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, &v56);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
LABEL_12:
        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }

        if (v18)
        {
          if (v8)
          {
            v55 = 0;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            buf = 0u;
            v48 = 0u;
            sub_10000501C(&v50 + 8, "");
            sub_10000501C(&v52, "");
            WORD4(v53) = 0;
            HIDWORD(v53) = 0;
            *(&v54 + 1) = 0;
            v55 = 0;
            *&v54 = &v54 + 8;
            v21 = [v8 dataSetName];
            if (v21)
            {
              v11 = [v8 dataSetName];
              v22 = v11;
              v23 = [(std::mutex *)v11 UTF8String];
            }

            else
            {
              v23 = "";
            }

            sub_100016890((&buf + 8), v23);
            if (v21)
            {
            }

            v27 = [v8 versionNumber];
            if (v27)
            {
              v11 = [v8 versionNumber];
              v28 = v11;
              v29 = [(std::mutex *)v11 UTF8String];
            }

            else
            {
              v29 = "";
            }

            sub_100016890(&v49, v29);
            if (v27)
            {
            }

            v30 = [v8 csgNetworkIdentifier];
            if (v30)
            {
              v11 = [v8 csgNetworkIdentifier];
              v31 = v11;
              v32 = [(std::mutex *)v11 UTF8String];
            }

            else
            {
              v32 = "";
            }

            sub_100016890((&v50 + 8), v32);
            if (v30)
            {
            }

            v33 = [v8 networkIdentifier];
            if (v33)
            {
              v11 = [v8 networkIdentifier];
              v34 = v11;
              v35 = [(std::mutex *)v11 UTF8String];
            }

            else
            {
              v35 = "";
            }

            sub_100016890(&v52, v35);
            if (v33)
            {
            }

            sub_100134E64(v37, &buf);
            v36 = objc_retainBlock(v9);
            v57[0] = off_101F42518;
            v57[1] = v36;
            v57[3] = v57;
            (*(*v18 + 960))(v18, v37, v6, v57);
            sub_1008A1348(v57);
            sub_1001349A0(v46, v46[1]);
            if (v45 < 0)
            {
              operator delete(__p);
            }

            if (v43 < 0)
            {
              operator delete(v42);
            }

            if (v41 < 0)
            {
              operator delete(v40);
            }

            if (v39 < 0)
            {
              operator delete(v38);
            }

            sub_1001349A0(&v54, *(&v54 + 1));
            if (SBYTE7(v53) < 0)
            {
              operator delete(v52);
            }

            if (SHIBYTE(v51) < 0)
            {
              operator delete(*(&v50 + 1));
            }

            if (SBYTE7(v50) < 0)
            {
              operator delete(v49);
            }

            if (SHIBYTE(v48) < 0)
            {
              operator delete(*(&buf + 1));
            }
          }

          else
          {
            v26 = [NSError errorWithDomain:&stru_101F6AFB8 code:4 userInfo:0];
            (*(v9 + 2))(v9, v26);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v24 = *(&buf + 1);
          ctu::OsLogContext::~OsLogContext(&buf);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for installPrivateNetworkProfile", &buf, 2u);
          }

          v25 = [NSError errorWithDomain:&stru_101F6AFB8 code:0 userInfo:0];
          (*(v9 + 2))(v9, v25);
        }

        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        goto LABEL_58;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v20 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler for installPrivateNetworkProfile", &buf, 2u);
  }

LABEL_58:
}

- (void)getPrivateNetworkSimInfoForContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v26);
    v9 = ServiceMap;
    v10 = "22CellularPlanController";
    if (("22CellularPlanController" & 0x8000000000000000) != 0)
    {
      v11 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v28 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v28);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_12:
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (v16)
        {
          if (v6 && (v19 = sub_100018A64([v6 slotID]), v19))
          {
            v20 = self;
            v21 = objc_retainBlock(v7);
            v29[0] = off_101F42598;
            v29[1] = v20;
            v29[2] = v21;
            v29[3] = v29;
            (*(*v16 + 896))(v16, v19, v29);
            sub_1008A12C8(v29);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v22 = v27;
            ctu::OsLogContext::~OsLogContext(&v26);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v26) = 0;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No slot in context", &v26, 2u);
            }

            v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            (*(v7 + 2))(v7, 0, v23);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v24 = v27;
          ctu::OsLogContext::~OsLogContext(&v26);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v26) = 0;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find CellularPlanController for getPrivateNetworkSimInfoForContext", &v26, 2u);
          }

          v25 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
          (*(v7 + 2))(v7, 0, v25);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v27;
  ctu::OsLogContext::~OsLogContext(&v26);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getPrivateNetworkSimInfoForContext", &v26, 2u);
  }

LABEL_26:
}

- (void)getEosStatus:(id)a3
{
  v4 = a3;
  if (v4)
  {
    *buf = 0;
    v13 = 0;
    v11 = 0;
    [(CTXPCClientHandler *)self registry];
    sub_10152E04C(buf, &v11, &v9);
    v5 = v11;
    if (v10)
    {
      sub_100004A34(v10);
    }

    if (v5)
    {
      v4[2](v4, 0, v5);
    }

    else
    {
      v7 = *buf;
      v8 = objc_retainBlock(v4);
      v14[0] = off_101F492C8;
      v14[1] = v8;
      v14[3] = v14;
      (*(*v7 + 80))(v7, v14);
      sub_100EE25BC(v14);
    }

    if (v13)
    {
      sub_100004A34(v13);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v6 = v13;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid completion handler", buf, 2u);
    }
  }
}

- (void)setEosStatus:(id)a3 assertionState:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    *buf = 0;
    v25 = 0;
    v23 = 0;
    [(CTXPCClientHandler *)self registry];
    sub_10152E04C(buf, &v23, &v21);
    v11 = v23;
    if (v22)
    {
      sub_100004A34(v22);
    }

    if (v11)
    {
      v10[2](v10, 0, v11);
    }

    else
    {
      v13 = *buf;
      v14 = v8;
      sub_10000501C(v19, [v8 UTF8String]);
      v15 = v9;
      sub_10000501C(__p, [v9 UTF8String]);
      v16 = objc_retainBlock(v10);
      v26[0] = off_101F49358;
      v26[1] = v16;
      v26[3] = v26;
      (*(*v13 + 88))(v13, v19, __p, v26);
      sub_100E6421C(v26);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }
    }

    if (v25)
    {
      sub_100004A34(v25);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v12 = v25;
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid completion handler", buf, 2u);
    }
  }
}

- (void)getEOSFirmwareUpdateInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    *buf = 0;
    v26 = 0;
    v24 = 0;
    [(CTXPCClientHandler *)self registry];
    sub_10152E04C(buf, &v24, &v22);
    v5 = v24;
    if (v23)
    {
      sub_100004A34(v23);
    }

    if (v5)
    {
      v4[2](v4, 0, v5);
LABEL_23:
      if (v26)
      {
        sub_100004A34(v26);
      }

      goto LABEL_26;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v20);
    v8 = ServiceMap;
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    v27 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v27);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
LABEL_16:
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v15)
        {
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_10152E8D8;
          v18[3] = &unk_101F3B988;
          v18[4] = self;
          v19 = v4;
          (*(*v15 + 144))(v15, 0, v18, 1);
          v17 = v19;
        }

        else
        {
          v17 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v4[2](v4, 0, v17);
        }

        if ((v16 & 1) == 0)
        {
          sub_100004A34(v14);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_16;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v6 = v26;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid completion handler for getEOSFirmwareUpdateInfo", buf, 2u);
  }

LABEL_26:
}

- (optional<PhoneServicesType>)serviceFromCFName:(id)a3
{
  v3 = a3;
  if (CFStringCompare(v3, kCTCapabilityAgent, 0))
  {
    if (CFStringCompare(v3, kCTCapabilityAgent2, 0))
    {
      if (CFStringCompare(v3, kCTCapabilityPhoneServices, 0))
      {
        if (CFStringCompare(v3, kCTCapabilityAgent3, 0))
        {
          if (CFStringCompare(v3, kCTCapabilityNetworkSlicing, 0))
          {
            v4 = CFStringCompare(v3, kCTCapabilitySatellite, 0);
            v5 = (v4 == kCFCompareEqualTo) << 32;
            if (v4)
            {
              v6 = 0;
            }

            else
            {
              v6 = 5;
            }
          }

          else
          {
            v5 = &_mh_execute_header;
            v6 = 4;
          }
        }

        else
        {
          v5 = &_mh_execute_header;
          v6 = 3;
        }
      }

      else
      {
        v5 = &_mh_execute_header;
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
      v5 = &_mh_execute_header;
    }
  }

  else
  {
    v5 = &_mh_execute_header;
    v6 = 2;
  }

  return (v6 | v5);
}

- (void)context:(id)a3 canSetCapability:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8 || !v9 || !v10)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v26 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "not enough arguments", buf, 2u);
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else if (!v11)
    {
LABEL_19:
      v13 = v8;
      goto LABEL_41;
    }

    v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, 0, 0, v27);

    goto LABEL_19;
  }

  v12 = [(CTXPCClientHandler *)self dataProviderDelegate];
  v13 = [v12 resolveContext:v8];

  if (v13)
  {
    __p = 0;
    v68 = 0;
    v69 = 0;
    [(CTXPCClientHandler *)self registry];
    v14 = [v13 uuid];
    sub_100047544(v14, &v64);
    PersonalityIdFromUuid();
    sub_1000475BC(&v64);

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v15 = HIBYTE(v69);
    if (v69 < 0)
    {
      v15 = v68;
    }

    if (!v15)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v30 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v53 = [v13 uuid];
        v54 = [v53 UUIDString];
        v55 = v54;
        v56 = [v54 UTF8String];
        *buf = 136315138;
        *&buf[4] = v56;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "no personality for UUID '%s'", buf, 0xCu);
      }

      v31 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      (v11)[2](v11, 0, 0, v31);

      goto LABEL_39;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v17 = ServiceMap;
    if (v18 < 0)
    {
      v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(ServiceMap);
    v64 = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, &v64);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
LABEL_28:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v24)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v32 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", buf, 2u);
      }

      v33 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      (v11)[2](v11, 0, 0, v33);

      if (v25)
      {
        goto LABEL_39;
      }

LABEL_38:
      sub_100004A34(v23);
LABEL_39:
      if (SHIBYTE(v69) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_41;
    }

    v66 = 0;
    if (CFStringCompare(v9, kCTCapabilityBrandedCallingInfo, 0))
    {
      if (CFStringCompare(v9, kCTCapabilityTurnOffCellular, 0))
      {
        if (([(CTXPCClientHandler *)self serviceFromCFName:v9]& 0x100000000) == 0)
        {
LABEL_71:
          v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v45 = 0;
          goto LABEL_81;
        }

        (**v24)(&v64, v24, &__p);
        (*(*v64 + 48))(buf);
        v45 = buf[0];
        v70 = v66;
        v66 = *&buf[8];
        *&buf[8] = 0;
        sub_10001021C(&v70);
        v47 = buf[16];
        sub_10001021C(&buf[8]);
        if (v65)
        {
          sub_100004A34(v65);
        }

        if (v47)
        {
          v46 = 0;
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v50 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v60 = asString();
            v61 = HIBYTE(v69);
            if (v69 < 0)
            {
              v61 = v68;
            }

            p_p = &__p;
            if (v69 < 0)
            {
              p_p = __p;
            }

            if (v61)
            {
              v63 = p_p;
            }

            else
            {
              v63 = "<invalid>";
            }

            *buf = 136315394;
            *&buf[4] = v60;
            *&buf[12] = 2080;
            *&buf[14] = v63;
            _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%s CanSet IS NOT READY for '%s'", buf, 0x16u);
          }

          v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
        }

        goto LABEL_81;
      }

      v44 = sub_100018A64([v13 slotID]);
      if (!v44)
      {
        [(CTXPCClientHandler *)self getLogContext];
        v51 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Shouldn't call kCTCapabilityTurnOffCellular for non-slot context", buf, 2u);
        }

        goto LABEL_71;
      }

      *buf = 0;
      *&buf[8] = 0;
      [(CTXPCClientHandler *)self registry];
      sub_1015DB584(buf, v64);
      if (v65)
      {
        sub_100004A34(v65);
      }

      if (*buf)
      {
        v45 = (*(**buf + 208))(*buf, v44);
        v46 = 0;
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v57 = v65;
        ctu::OsLogContext::~OsLogContext(&v64);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v64) = 0;
          _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Could not find BasebandSettingsInterface for CanSet kCTCapabilityTurnOffCellular", &v64, 2u);
        }

        v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v45 = 0;
      }

      v52 = *&buf[8];
      if (!*&buf[8])
      {
LABEL_81:
        [(CTXPCClientHandler *)self getLogContext];
        v58 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v59 = asStringBool(v45);
          *buf = 138412802;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v59;
          v72 = 2112;
          v73 = v66;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%@ CanSet = %s with [%@]", buf, 0x20u);
        }

        (v11)[2](v11, v45, v66, v46);

        sub_10001021C(&v66);
        if (v25)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_80:
      sub_100004A34(v52);
      goto LABEL_81;
    }

    [(CTXPCClientHandler *)self registry];
    v34 = Registry::getServiceMap(*buf);
    v35 = v34;
    if (v36 < 0)
    {
      v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    std::mutex::lock(v34);
    v64 = v36;
    v40 = sub_100009510(&v35[1].__m_.__sig, &v64);
    if (v40)
    {
      v41 = v40[3];
      v42 = v40[4];
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v42);
        v43 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      v41 = 0;
    }

    std::mutex::unlock(v35);
    v42 = 0;
    v43 = 1;
LABEL_61:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v41)
    {
      if ([v13 slotID])
      {
        v48 = sub_100018A64([v13 slotID]);
        v45 = (*(*v41 + 56))(v41, v48);
        v46 = 0;
LABEL_74:
        if (v43)
        {
          goto LABEL_81;
        }

        v52 = v42;
        goto LABEL_80;
      }

      v49 = 2;
    }

    else
    {
      v49 = 35;
    }

    v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v49 userInfo:0];
    v45 = 0;
    goto LABEL_74;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v28 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "no valid context found", buf, 2u);
  }

  v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  (v11)[2](v11, 0, 0, v29);

  v13 = 0;
LABEL_41:
}

- (void)context:(id)a3 getCapability:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8 || !v9 || !v10)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v26 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "not enough arguments", buf, 2u);
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else if (!v11)
    {
LABEL_19:
      v13 = v8;
      goto LABEL_41;
    }

    v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, 0, 0, v27);

    goto LABEL_19;
  }

  v12 = [(CTXPCClientHandler *)self dataProviderDelegate];
  v13 = [v12 resolveContext:v8];

  if (v13)
  {
    __p = 0;
    v68 = 0;
    v69 = 0;
    [(CTXPCClientHandler *)self registry];
    v14 = [v13 uuid];
    sub_100047544(v14, &v64);
    PersonalityIdFromUuid();
    sub_1000475BC(&v64);

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v15 = HIBYTE(v69);
    if (v69 < 0)
    {
      v15 = v68;
    }

    if (!v15)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v30 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v53 = [v13 uuid];
        v54 = [v53 UUIDString];
        v55 = v54;
        v56 = [v54 UTF8String];
        *buf = 136315138;
        *&buf[4] = v56;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "no personality for UUID '%s'", buf, 0xCu);
      }

      v31 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      (v11)[2](v11, 0, 0, v31);

      goto LABEL_39;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v17 = ServiceMap;
    if (v18 < 0)
    {
      v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v20 = 5381;
      do
      {
        v18 = v20;
        v21 = *v19++;
        v20 = (33 * v20) ^ v21;
      }

      while (v21);
    }

    std::mutex::lock(ServiceMap);
    v64 = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, &v64);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
LABEL_28:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v24)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v32 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", buf, 2u);
      }

      v33 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      (v11)[2](v11, 0, 0, v33);

      if (v25)
      {
        goto LABEL_39;
      }

LABEL_38:
      sub_100004A34(v23);
LABEL_39:
      if (SHIBYTE(v69) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_41;
    }

    v66 = 0;
    if (CFStringCompare(v9, kCTCapabilityBrandedCallingInfo, 0))
    {
      if (CFStringCompare(v9, kCTCapabilityTurnOffCellular, 0))
      {
        if (([(CTXPCClientHandler *)self serviceFromCFName:v9]& 0x100000000) == 0)
        {
LABEL_71:
          v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v45 = 0;
          goto LABEL_81;
        }

        (**v24)(&v64, v24, &__p);
        (*(*v64 + 40))(buf);
        v45 = buf[0];
        v70 = v66;
        v66 = *&buf[8];
        *&buf[8] = 0;
        sub_10001021C(&v70);
        v47 = buf[16];
        sub_10001021C(&buf[8]);
        if (v65)
        {
          sub_100004A34(v65);
        }

        if (v47)
        {
          v46 = 0;
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v50 = *&buf[8];
          ctu::OsLogContext::~OsLogContext(buf);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v60 = asString();
            v61 = HIBYTE(v69);
            if (v69 < 0)
            {
              v61 = v68;
            }

            p_p = &__p;
            if (v69 < 0)
            {
              p_p = __p;
            }

            if (v61)
            {
              v63 = p_p;
            }

            else
            {
              v63 = "<invalid>";
            }

            *buf = 136315394;
            *&buf[4] = v60;
            *&buf[12] = 2080;
            *&buf[14] = v63;
            _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%s Get IS NOT READY for '%s'", buf, 0x16u);
          }

          v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
        }

        goto LABEL_81;
      }

      v44 = sub_100018A64([v13 slotID]);
      if (!v44)
      {
        [(CTXPCClientHandler *)self getLogContext];
        v51 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Shouldn't call kCTCapabilityTurnOffCellular for non-slot context", buf, 2u);
        }

        goto LABEL_71;
      }

      *buf = 0;
      *&buf[8] = 0;
      [(CTXPCClientHandler *)self registry];
      sub_1015DB584(buf, v64);
      if (v65)
      {
        sub_100004A34(v65);
      }

      if (*buf)
      {
        v45 = (*(**buf + 200))(*buf, v44);
        v46 = 0;
      }

      else
      {
        [(CTXPCClientHandler *)self getLogContext];
        v57 = v65;
        ctu::OsLogContext::~OsLogContext(&v64);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v64) = 0;
          _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Could not find BasebandSettingsInterface for Get kCTCapabilityTurnOffCellular", &v64, 2u);
        }

        v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v45 = 0;
      }

      v52 = *&buf[8];
      if (!*&buf[8])
      {
LABEL_81:
        [(CTXPCClientHandler *)self getLogContext];
        v58 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v59 = asStringBool(v45);
          *buf = 138412802;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v59;
          v72 = 2112;
          v73 = v66;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%@ Get = %s with [%@]", buf, 0x20u);
        }

        (v11)[2](v11, v45, v66, v46);

        sub_10001021C(&v66);
        if (v25)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_80:
      sub_100004A34(v52);
      goto LABEL_81;
    }

    [(CTXPCClientHandler *)self registry];
    v34 = Registry::getServiceMap(*buf);
    v35 = v34;
    if (v36 < 0)
    {
      v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    std::mutex::lock(v34);
    v64 = v36;
    v40 = sub_100009510(&v35[1].__m_.__sig, &v64);
    if (v40)
    {
      v41 = v40[3];
      v42 = v40[4];
      if (v42)
      {
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v42);
        v43 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      v41 = 0;
    }

    std::mutex::unlock(v35);
    v42 = 0;
    v43 = 1;
LABEL_61:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v41)
    {
      if ([v13 slotID])
      {
        v48 = sub_100018A64([v13 slotID]);
        v45 = (*(*v41 + 40))(v41, v48);
        v46 = 0;
LABEL_74:
        if (v43)
        {
          goto LABEL_81;
        }

        v52 = v42;
        goto LABEL_80;
      }

      v49 = 2;
    }

    else
    {
      v49 = 35;
    }

    v46 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v49 userInfo:0];
    v45 = 0;
    goto LABEL_74;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v28 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "no valid context found", buf, 2u);
  }

  v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  (v11)[2](v11, 0, 0, v29);

  v13 = 0;
LABEL_41:
}

- (void)context:(id)a3 setCapability:(id)a4 enabled:(BOOL)a5 info:(id)a6 completion:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (!v12 || !v13 || !v15)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v31 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "not enough arguments", buf, 2u);
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    else if (!v16)
    {
LABEL_19:
      v18 = v12;
      goto LABEL_84;
    }

    v32 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v16)[2](v16, v32);

    goto LABEL_19;
  }

  v17 = [(CTXPCClientHandler *)self dataProviderDelegate];
  v18 = [v17 resolveContext:v12];

  if (v18)
  {
    __p = 0;
    v73 = 0;
    v74 = 0;
    [(CTXPCClientHandler *)self registry];
    v19 = [v18 uuid];
    sub_100047544(v19, v70);
    PersonalityIdFromUuid();
    sub_1000475BC(v70);

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v20 = HIBYTE(v74);
    if (v74 < 0)
    {
      v20 = v73;
    }

    if (!v20)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v35 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v61 = [v18 uuid];
        v62 = [v61 UUIDString];
        v63 = v62;
        v64 = [v62 UTF8String];
        *buf = 136315138;
        *&buf[4] = v64;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "no personality for UUID '%s'", buf, 0xCu);
      }

      v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      (v16)[2](v16, v36);

      goto LABEL_82;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v22 = ServiceMap;
    if (v23 < 0)
    {
      v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
      v25 = 5381;
      do
      {
        v23 = v25;
        v26 = *v24++;
        v25 = (33 * v25) ^ v26;
      }

      while (v26);
    }

    std::mutex::lock(ServiceMap);
    *v70 = v23;
    v27 = sub_100009510(&v22[1].__m_.__sig, v70);
    v67 = v9;
    if (v27)
    {
      v29 = v27[3];
      v28 = v27[4];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v22);
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v28);
        v30 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v29 = 0;
    }

    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
LABEL_28:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (!v29)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v39 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", buf, 2u);
      }

      v40 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      (v16)[2](v16, v40);
      goto LABEL_80;
    }

    if (CFStringCompare(v13, kCTCapabilityBrandedCallingInfo, 0))
    {
      if (CFStringCompare(v13, kCTCapabilityTurnOffCellular, 0))
      {
        v37 = [(CTXPCClientHandler *)self serviceFromCFName:v13];
        v38 = v37;
        if ((*&v37 & 0x100000000) != 0)
        {
          if (v37.var0.var1 == 1)
          {
            v52 = sub_1000B1374();
            if (v14)
            {
              if (v52)
              {
                v53 = v30;
                (**v29)(buf, v29, &__p);
                v54 = *buf;
                v69 = v14;
                CFRetain(v14);
                (*(*v54 + 192))(v54, &v69);
                sub_10001021C(&v69);
                v30 = v53;
                if (*&buf[8])
                {
                  sub_100004A34(*&buf[8]);
                }
              }
            }
          }

          (**v29)(buf, v29, &__p);
          v55 = *buf;
          v68 = v14;
          if (v14)
          {
            CFRetain(v14);
          }

          (*(*v55 + 32))(v55, v38, v67, &v68);
          sub_10001021C(&v68);
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v40 = 0;
          goto LABEL_77;
        }
      }

      else
      {
        v51 = sub_100018A64([v18 slotID]);
        if (v51)
        {
          *buf = 0;
          *&buf[8] = 0;
          [(CTXPCClientHandler *)self registry];
          sub_1015DB584(buf, *v70);
          if (v71)
          {
            sub_100004A34(v71);
          }

          if (*buf)
          {
            (*(**buf + 192))(*buf, v51, v9);
            v40 = 0;
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v65 = v71;
            ctu::OsLogContext::~OsLogContext(v70);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              *v70 = 0;
              _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Could not find BasebandSettingsInterface for Set kCTCapabilityTurnOffCellular", v70, 2u);
            }

            v40 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          goto LABEL_77;
        }

        [(CTXPCClientHandler *)self getLogContext];
        v58 = *&buf[8];
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "Shouldn't call kCTCapabilityTurnOffCellular for non-slot context", buf, 2u);
        }
      }

      v40 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
LABEL_77:
      [(CTXPCClientHandler *)self getLogContext];
      v59 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = asStringBool(v67);
        *buf = 138412802;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = v60;
        v76 = 2112;
        v77 = v14;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%@ Set = %s with [%@]", buf, 0x20u);
      }

      (v16)[2](v16, v40);
LABEL_80:

      if ((v30 & 1) == 0)
      {
        sub_100004A34(v28);
      }

LABEL_82:
      if (SHIBYTE(v74) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_84;
    }

    v66 = v30;
    [(CTXPCClientHandler *)self registry];
    v41 = Registry::getServiceMap(*buf);
    v42 = v41;
    if (v43 < 0)
    {
      v44 = (v43 & 0x7FFFFFFFFFFFFFFFLL);
      v45 = 5381;
      do
      {
        v43 = v45;
        v46 = *v44++;
        v45 = (33 * v45) ^ v46;
      }

      while (v46);
    }

    std::mutex::lock(v41);
    *v70 = v43;
    v47 = sub_100009510(&v42[1].__m_.__sig, v70);
    if (v47)
    {
      v49 = v47[3];
      v48 = v47[4];
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v42);
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v48);
        v50 = 0;
        goto LABEL_63;
      }
    }

    else
    {
      v49 = 0;
    }

    std::mutex::unlock(v42);
    v48 = 0;
    v50 = 1;
LABEL_63:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v49)
    {
      if ([v18 slotID])
      {
        v56 = sub_100018A64([v18 slotID]);
        (*(*v49 + 48))(v49, v9, v56);
        v40 = 0;
LABEL_74:
        if ((v50 & 1) == 0)
        {
          sub_100004A34(v48);
        }

        v30 = v66;
        goto LABEL_77;
      }

      v57 = 2;
    }

    else
    {
      v57 = 35;
    }

    v40 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v57 userInfo:0];
    goto LABEL_74;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v33 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "no valid context found", buf, 2u);
  }

  v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  (v16)[2](v16, v34);

  v18 = 0;
LABEL_84:
}

- (void)context:(id)a3 getSystemCapabilities:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v22 = v31;
    ctu::OsLogContext::~OsLogContext(&v30);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v30) = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "not enough arguments", &v30, 2u);
      if (!v8)
      {
        goto LABEL_30;
      }
    }

    else if (!v8)
    {
      goto LABEL_30;
    }

    v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v8)[2](v8, 0, v23);

    goto LABEL_30;
  }

  v9 = [(CTXPCClientHandler *)self dataProviderDelegate];
  v10 = [v9 resolveContext:v6];

  if (v10)
  {
    v11 = sub_100018A64([v10 slotID]);
    if (!v11)
    {
      v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
      (v8)[2](v8, 0, v26);

LABEL_29:
      v6 = v10;
      goto LABEL_30;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v30);
    v13 = ServiceMap;
    if ((v14 & 0x8000000000000000) != 0)
    {
      v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    std::mutex::lock(ServiceMap);
    v32 = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, &v32);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
LABEL_20:
        if (v31)
        {
          sub_100004A34(v31);
        }

        if (v20)
        {
          v27 = objc_retainBlock(v8);
          v33[0] = off_101F54610;
          v33[1] = v27;
          v33[3] = v33;
          (*(*v20 + 56))(v20, v11, v33);
          sub_101482B68(v33);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v28 = v31;
          ctu::OsLogContext::~OsLogContext(&v30);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v30) = 0;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", &v30, 2u);
          }

          v29 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
          (v8)[2](v8, 0, v29);
        }

        if ((v21 & 1) == 0)
        {
          sub_100004A34(v19);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    goto LABEL_20;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v24 = v31;
  ctu::OsLogContext::~OsLogContext(&v30);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v30) = 0;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "no valid context found", &v30, 2u);
  }

  v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  (v8)[2](v8, 0, v25);

  v6 = 0;
LABEL_30:
}

- (void)getSupports5G:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_29;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v25);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v27 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v26)
        {
          sub_100004A34(v26);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          [(CTXPCClientHandler *)self registry];
          isValidSimSlot = subscriber::isValidSimSlot();
          if (v26)
          {
            sub_100004A34(v26);
          }

          if (isValidSimSlot)
          {
            v22 = [NSNumber numberWithBool:(*(*v16 + 24))(v16, v20)];
            (v7)[2](v7, v22, 0);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v24 = v26;
            ctu::OsLogContext::~OsLogContext(&v25);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v25) = 0;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Invalid slot passed when getting supports 5G", &v25, 2u);
            }

            v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
            v7[2](v7, 0, v22);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v23 = v26;
          ctu::OsLogContext::~OsLogContext(&v25);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v25) = 0;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find CapabilitiesHandler for getting 5G support", &v25, 2u);
          }

          v22 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v22);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_29;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v26;
  ctu::OsLogContext::~OsLogContext(&v25);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v25) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for getting 5G support query", &v25, 2u);
  }

LABEL_29:
}

- (void)context:(id)a3 recheckPhoneServicesAccountStatus:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8 || !v9 || !v10)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v15 = v26;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "not enough arguments", &__p, 2u);
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else if (!v11)
    {
LABEL_11:
      v13 = v8;
      goto LABEL_22;
    }

    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, v16);

    goto LABEL_11;
  }

  v12 = [(CTXPCClientHandler *)self dataProviderDelegate];
  v13 = [v12 resolveContext:v8];

  if (v13)
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    [(CTXPCClientHandler *)self registry];
    v14 = [v13 uuid];
    sub_100047544(v14, &v28);
    PersonalityIdFromUuid();
    sub_1000475BC(&v28);

    if (*&buf_4[4])
    {
      sub_100004A34(*&buf_4[4]);
    }

    [(CTXPCClientHandler *)self getLogContext];
    v19 = *&buf_4[4];
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = [v13 uuid];
      v22 = [v21 UUIDString];
      v23 = v22;
      v24 = [v22 UTF8String];
      buf = 136315138;
      *buf_4 = v24;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "no personality for UUID '%s'", &buf, 0xCu);
    }

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (v11)[2](v11, v20);

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = v26;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no valid context found", &__p, 2u);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, v18);

    v13 = 0;
  }

LABEL_22:
}

- (void)getPhoneServicesDeviceList:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v20);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v13)
        {
          v16 = self;
          v17 = objc_retainBlock(v4);
          v23[0] = off_101F546A0;
          v23[1] = v16;
          v23[2] = v17;
          v23[3] = v23;
          (*(*v13 + 72))(v13, v23);
          sub_10024725C(v23);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v18 = v21;
          ctu::OsLogContext::~OsLogContext(&v20);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v20) = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", &v20, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
          (*(v4 + 2))(v4, 0, v19);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v21;
  ctu::OsLogContext::~OsLogContext(&v20);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "not enough arguments", &v20, 2u);
  }

LABEL_21:
}

- (void)getPhoneServicesDeviceInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v20);
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v13)
        {
          v16 = self;
          v17 = objc_retainBlock(v4);
          v23[0] = off_101F54720;
          v23[1] = v16;
          v23[2] = v17;
          v23[3] = v23;
          (*(*v13 + 64))(v13, v23);
          sub_10024725C(v23);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v18 = v21;
          ctu::OsLogContext::~OsLogContext(&v20);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v20) = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", &v20, 2u);
          }

          v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
          (*(v4 + 2))(v4, 0, v19);
        }

        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v15 = v21;
  ctu::OsLogContext::~OsLogContext(&v20);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "not enough arguments", &v20, 2u);
  }

LABEL_21:
}

- (void)context:(id)a3 addPhoneServicesDevice:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8 || !v10)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v15 = v26;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "not enough arguments", &__p, 2u);
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else if (!v11)
    {
LABEL_10:
      v13 = v8;
      goto LABEL_18;
    }

    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, v16);

    goto LABEL_10;
  }

  v12 = [(CTXPCClientHandler *)self dataProviderDelegate];
  v13 = [v12 resolveContext:v8];

  if (v13)
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    [(CTXPCClientHandler *)self registry];
    v14 = [v13 uuid];
    sub_100047544(v14, &v28);
    PersonalityIdFromUuid();
    sub_1000475BC(&v28);

    if (*&buf_4[4])
    {
      sub_100004A34(*&buf_4[4]);
    }

    [(CTXPCClientHandler *)self getLogContext];
    v19 = *&buf_4[4];
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = [v13 uuid];
      v22 = [v21 UUIDString];
      v23 = v22;
      v24 = [v22 UTF8String];
      buf = 136315138;
      *buf_4 = v24;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "no personality for UUID '%s'", &buf, 0xCu);
    }

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (v11)[2](v11, v20);

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = v26;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no valid context found", &__p, 2u);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, v18);

    v13 = 0;
  }

LABEL_18:
}

- (void)context:(id)a3 removePhoneServicesDevice:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8 || !v10)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v15 = v26;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "not enough arguments", &__p, 2u);
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else if (!v11)
    {
LABEL_10:
      v13 = v8;
      goto LABEL_18;
    }

    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, v16);

    goto LABEL_10;
  }

  v12 = [(CTXPCClientHandler *)self dataProviderDelegate];
  v13 = [v12 resolveContext:v8];

  if (v13)
  {
    __p = 0;
    v26 = 0;
    v27 = 0;
    [(CTXPCClientHandler *)self registry];
    v14 = [v13 uuid];
    sub_100047544(v14, &v28);
    PersonalityIdFromUuid();
    sub_1000475BC(&v28);

    if (*&buf_4[4])
    {
      sub_100004A34(*&buf_4[4]);
    }

    [(CTXPCClientHandler *)self getLogContext];
    v19 = *&buf_4[4];
    ctu::OsLogContext::~OsLogContext(&buf);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = [v13 uuid];
      v22 = [v21 UUIDString];
      v23 = v22;
      v24 = [v22 UTF8String];
      buf = 136315138;
      *buf_4 = v24;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "no personality for UUID '%s'", &buf, 0xCu);
    }

    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (v11)[2](v11, v20);

    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = v26;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no valid context found", &__p, 2u);
    }

    v18 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v11)[2](v11, v18);

    v13 = 0;
  }

LABEL_18:
}

- (void)wifiCallingCTFollowUpComplete:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 objectForKey:@"SlotID"];
    if (!v8)
    {
      [(CTXPCClientHandler *)self getLogContext];
      v20 = v27;
      ctu::OsLogContext::~OsLogContext(&v26);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v26) = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "FollowUp do not specify target slot", &v26, 2u);
      }

      v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v21);

      goto LABEL_31;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v26);
    v10 = ServiceMap;
    if (v11 < 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    *&buf = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &buf);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
LABEL_16:
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (v17)
        {
          v26 = 0;
          v27 = 0;
          (*(*v17 + 8))(&v26, v17, [v8 intValue]);
          if (v26)
          {
            (*(*v26 + 88))(v26, v6);
            v7[2](v7, 0);
          }

          else
          {
            [(CTXPCClientHandler *)self getLogContext];
            v24 = *(&buf + 1);
            ctu::OsLogContext::~OsLogContext(&buf);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v8;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "No PhoneServices instance for target %@", &buf, 0xCu);
            }

            v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
            v7[2](v7, v25);
          }

          if (v27)
          {
            sub_100004A34(v27);
          }
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v27;
          ctu::OsLogContext::~OsLogContext(&v26);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v26) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "CT is not ready to process the request", &v26, 2u);
          }

          v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
          v7[2](v7, v23);
        }

        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_16;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v19 = v27;
  ctu::OsLogContext::~OsLogContext(&v26);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "no completion provided", &v26, 2u);
  }

LABEL_32:
}

- (void)context:(id)a3 mandatoryDisableVoLTE:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (!v8 || !v9)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v14 = v19;
    ctu::OsLogContext::~OsLogContext(&v18);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "not enough arguments", &v18, 2u);
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    else if (!v10)
    {
      goto LABEL_18;
    }

    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v10)[2](v10, v15);
LABEL_17:

    goto LABEL_18;
  }

  v11 = [(CTXPCClientHandler *)self dataProviderDelegate];
  v12 = [v11 resolveContext:v8];

  if (!v12)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v16 = v19;
    ctu::OsLogContext::~OsLogContext(&v18);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "no valid context found", &v18, 2u);
    }

    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v10)[2](v10, v15);
    v8 = 0;
    goto LABEL_17;
  }

  v13 = sub_100018A64([v12 slotID]);
  if (!v13)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v17 = v19;
    ctu::OsLogContext::~OsLogContext(&v18);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "no slot in context", &v18, 2u);
    }

    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (v10)[2](v10, v15);
    v8 = v12;
    goto LABEL_17;
  }

  [(CTXPCClientHandler *)self registry];
  mandatoryDisableVoLTE(&v18, v13, v6);
  if (v19)
  {
    sub_100004A34(v19);
  }

  v10[2](v10, 0);
  v8 = v12;
LABEL_18:
}

- (void)context:(id)a3 isMandatoryDisabledVoLTE:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v13 = v18;
    ctu::OsLogContext::~OsLogContext(v17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "not enough arguments", v17, 2u);
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else if (!v8)
    {
      goto LABEL_16;
    }

    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v8)[2](v8, 0, v14);
LABEL_15:

    goto LABEL_16;
  }

  v9 = [(CTXPCClientHandler *)self dataProviderDelegate];
  v10 = [v9 resolveContext:v6];

  if (!v10)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v15 = v18;
    ctu::OsLogContext::~OsLogContext(v17);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "no valid context found", v17, 2u);
    }

    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (v8)[2](v8, 0, v14);
    v6 = 0;
    goto LABEL_15;
  }

  v11 = sub_100018A64([v10 slotID]);
  if (!v11)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v16 = v18;
    ctu::OsLogContext::~OsLogContext(v17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "no slot in context", v17, 2u);
    }

    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (v8)[2](v8, 0, v14);
    v6 = v10;
    goto LABEL_15;
  }

  v12 = isMandatoryDisabledVoLTE(v11);
  v8[2](v8, v12, 0);
  v6 = v10;
LABEL_16:
}

- (void)refreshCellMonitor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v18 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for cell monitor refresh", &v23, 2u);
    }

    goto LABEL_21;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v23);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v25 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v25);
  if (!v14)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
LABEL_11:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
LABEL_12:
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v16)
  {
    if (v6)
    {
      v19 = sub_100018A64([v6 slotID]);
    }

    else
    {
      v19 = 3;
    }

    v22 = objc_retainBlock(v7);
    v26[0] = off_101F58480;
    v26[1] = v22;
    v26[3] = v26;
    (*(*v16 + 24))(v16, v19, v26);
    sub_100014380(v26);
    if (v17)
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_100004A34(v15);
    goto LABEL_21;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v20 = v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find CellMonitorInterface for cell monitor refresh", &v23, 2u);
  }

  v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(v7 + 2))(v7, v21);

  if ((v17 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
}

- (void)copyCellInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v21 = objc_retainBlock(v7);
          v27[0] = off_101F58500;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 48))(v16, v20, v27);
          sub_10002AA0C(v27);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellMonitorInterface for getting cell info", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for cell info query", &v24, 2u);
  }

LABEL_23:
}

- (void)copyCellId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v21 = objc_retainBlock(v7);
          v27[0] = off_101F58580;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 64))(v16, v20, v27);
          sub_100E902CC(v27);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellMonitorInterface for getting cell ID", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for cell ID query", &v24, 2u);
  }

LABEL_23:
}

- (void)copyPublicCellId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_10002A8E0(v6);
          v21 = objc_retainBlock(v7);
          v27[0] = off_101F58610;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 96))(v16, v20, v27);
          sub_100E9034C(v27);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellMonitorInterface for getting public cell ID", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for public cell ID query", &v24, 2u);
  }

LABEL_23:
}

- (void)copyLocationAreaCode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_23;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(v24);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v26 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v26);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v20 = sub_100018A64([v6 slotID]);
          v21 = objc_retainBlock(v7);
          v27[0] = off_101F586A0;
          v27[1] = v21;
          v27[3] = v27;
          (*(*v16 + 56))(v16, v20, v27);
          sub_100E902CC(v27);
        }

        else
        {
          [(CTXPCClientHandler *)self getLogContext];
          v22 = v25;
          ctu::OsLogContext::~OsLogContext(&v24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v24) = 0;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find CellMonitorInterface for getting location area code", &v24, 2u);
          }

          v23 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
          v7[2](v7, 0, v23);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(&v24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v24) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for location area code query", &v24, 2u);
  }

LABEL_23:
}

- (void)getSweetgumCapabilities:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_20;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          [(CTXPCClientHandler *)self getQueue];
          v20 = objc_retainBlock(v7);
          object = v22;
          *buf = off_101F5D6F0;
          v25 = v20;
          v26 = buf;
          sub_100D1A888();
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v7[2](v7, 0, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for Sweetgum capabilities query", buf, 2u);
  }

LABEL_20:
}

- (void)getSweetgumUserConsentInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_20;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          [(CTXPCClientHandler *)self getQueue];
          v20 = objc_retainBlock(v7);
          object = v22;
          *buf = off_101F5D770;
          v25 = v20;
          v26 = buf;
          sub_100D1AD6C();
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v7[2](v7, 0, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for Sweetgum user consent query", buf, 2u);
  }

LABEL_20:
}

- (void)setSweetgumUserConsent:(id)a3 userConsent:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    [(CTXPCClientHandler *)self getLogContext];
    v20 = v24;
    ctu::OsLogContext::~OsLogContext(&v23);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Invalid completion handler when setting Sweetgum user consent", &v23, 2u);
    }

    goto LABEL_19;
  }

  if (!v8)
  {
    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v9[2](v9, v21);

    goto LABEL_19;
  }

  [(CTXPCClientHandler *)self registry];
  ServiceMap = Registry::getServiceMap(v23);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v25 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v25);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
LABEL_13:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
LABEL_14:
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (!v18)
  {
    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    v9[2](v9, v22);

    if (v19)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  (*(*v18 + 32))(v18, v6);
  v9[2](v9, 0);
  if ((v19 & 1) == 0)
  {
LABEL_18:
    sub_100004A34(v17);
  }

LABEL_19:
}

- (void)getSweetgumUsage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_20;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v23[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, v23);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v23[0] = 0;
          v23[1] = 0;
          [(CTXPCClientHandler *)self getQueue];
          v20 = objc_retainBlock(v7);
          v23[2] = v22;
          *buf = off_101F5D7F0;
          v25 = v20;
          v26 = buf;
          sub_100D1B250();
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v7[2](v7, 0, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for Sweetgum usage query", buf, 2u);
  }

LABEL_20:
}

- (void)refreshSweetgumUsage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v19);

      goto LABEL_20;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          [(CTXPCClientHandler *)self getQueue];
          v20 = objc_retainBlock(v7);
          object = v22;
          *buf = off_101F5D870;
          v25 = v20;
          v26 = buf;
          sub_100D1C0FC();
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v7[2](v7, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for refresh Sweetgum usage", buf, 2u);
  }

LABEL_20:
}

- (void)getSweetgumPlans:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_20;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v23[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, v23);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v23[0] = 0;
          v23[1] = 0;
          [(CTXPCClientHandler *)self getQueue];
          v20 = objc_retainBlock(v7);
          v23[2] = v22;
          *buf = off_101F5D8F0;
          v25 = v20;
          v26 = buf;
          sub_100D1B734();
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v7[2](v7, 0, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for Sweetgum plans query", buf, 2u);
  }

LABEL_20:
}

- (void)refreshSweetgumPlans:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v19);

      goto LABEL_20;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          [(CTXPCClientHandler *)self getQueue];
          v20 = objc_retainBlock(v7);
          object = v22;
          *buf = off_101F5D970;
          v25 = v20;
          v26 = buf;
          sub_100D1C0FC();
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v7[2](v7, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for refresh Sweetgum plans", buf, 2u);
  }

LABEL_20:
}

- (void)getSweetgumApps:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_20;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v23[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, v23);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          v23[0] = 0;
          v23[1] = 0;
          [(CTXPCClientHandler *)self getQueue];
          v20 = objc_retainBlock(v7);
          v23[2] = v22;
          *buf = off_101F5D9F0;
          v25 = v20;
          v26 = buf;
          sub_100D1BC18();
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v7[2](v7, 0, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for Sweetgum apps query", buf, 2u);
  }

LABEL_20:
}

- (void)refreshSweetgumApps:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v19);

      goto LABEL_20;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          [(CTXPCClientHandler *)self getQueue];
          v20 = objc_retainBlock(v7);
          object = v22;
          *buf = off_101F5DA70;
          v25 = v20;
          v26 = buf;
          sub_100D1C0FC();
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v7[2](v7, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for refresh Sweetgum apps", buf, 2u);
  }

LABEL_20:
}

- (void)refreshSweetgumAll:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v19);

      goto LABEL_20;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          [(CTXPCClientHandler *)self getQueue];
          v20 = objc_retainBlock(v7);
          object = v22;
          *buf = off_101F5DAF0;
          v25 = v20;
          v26 = buf;
          sub_100D1C0FC();
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v7[2](v7, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for refresh all Sweetgum info", buf, 2u);
  }

LABEL_20:
}

- (void)getSweetgumDataPlanMetrics:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (!v6)
    {
      v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, 0, v19);

      goto LABEL_20;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    object = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &object);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        if (v25)
        {
          sub_100004A34(v25);
        }

        if (v16)
        {
          [(CTXPCClientHandler *)self getQueue];
          v20 = objc_retainBlock(v7);
          object = v22;
          *buf = off_101F5DB70;
          v25 = v20;
          v26 = buf;
          sub_100D1C8D4();
        }

        v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v7[2](v7, 0, v21);

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v18 = v25;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Invalid completion handler for Sweetgum data plan metrics query", buf, 2u);
  }

LABEL_20:
}

- (void)purchaseSweetgumPlan:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 planId];

    if (!v8)
    {
      v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v7[2](v7, v20);

      goto LABEL_25;
    }

    [(CTXPCClientHandler *)self registry];
    ServiceMap = Registry::getServiceMap(*buf);
    v10 = ServiceMap;
    if (v11 < 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    v39[0] = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, v39);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
LABEL_14:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v17)
        {
          v37 = 0;
          memset(v36, 0, sizeof(v36));
          *buf = 0u;
          memset(v35, 0, sizeof(v35));
          v21 = [v6 planId];
          v22 = v21;
          sub_100016890(v35, [v21 UTF8String]);

          v23 = [v6 planLabel];
          LOBYTE(v21) = v23 == 0;

          if ((v21 & 1) == 0)
          {
            v24 = [v6 planLabel];
            v25 = v24;
            sub_100016890(&v35[1], [v24 UTF8String]);
          }

          v26 = [v6 planTermsURL];
          if (v26)
          {
            v27 = [v6 planTermsURL];
            v28 = [v27 length] == 0;

            if (!v28)
            {
              v29 = [v6 planTermsURL];
              v30 = v29;
              v39[0] = [v29 UTF8String];
              sub_100184AD0(v36, v39);
            }
          }

          [(CTXPCClientHandler *)self getQueue];
          v31 = objc_retainBlock(v7);
          v38 = object;
          v39[0] = off_101F5DBF0;
          v39[1] = v31;
          v39[3] = v39;
          sub_100D1C0FC();
        }

        v32 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
        v7[2](v7, v32);

        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_14;
  }

  [(CTXPCClientHandler *)self getLogContext];
  v19 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Invalid completion handler for purchase Sweetgum plan", buf, 2u);
  }

LABEL_25:
}

@end