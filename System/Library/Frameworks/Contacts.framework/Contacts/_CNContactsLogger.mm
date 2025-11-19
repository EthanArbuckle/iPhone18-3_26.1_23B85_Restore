@interface _CNContactsLogger
- (_CNContactsLogger)init;
- (void)SPIUsageLackingEntitlementGrantedForPID:(int)a3;
- (void)SPIUsageLackingEntitlementRejectedForPID:(int)a3;
- (void)XPCConnectionWasInterruptedForService:(id)a3;
- (void)XPCConnectionWasInvalidatedForService:(id)a3;
- (void)_commonFetchContactsMatchingPredicate:(id)a3 fetchType:(const char *)a4 unifyResults:(BOOL)a5 keysToFetch:(id)a6;
- (void)accessAuthorizationStatusWasDenied;
- (void)addingContacts:(id)a3 toContainerWithIdentifier:(id)a4;
- (void)applyContactUpdateOfKind:(const char *)a3 value:(id)a4 property:(id)a5;
- (void)changedMeContact:(id)a3;
- (void)changingMeContact:(id)a3;
- (void)clearingChangeHistory:(id)a3;
- (void)contactsAccessWasDeniedWithError:(id)a3;
- (void)contactsAccessWasGranted;
- (void)deleteImageRecentsMetadataRequestFailed:(id)a3;
- (void)deletePosterRecentsMetadataRequestFailed:(id)a3;
- (void)deletingContact:(id)a3;
- (void)didFetchContacts:(id)a3 error:(id)a4;
- (void)didFetchEncodedContacts:(id)a3 error:(id)a4;
- (void)errorWhenQueryingTetheredSyncData:(id)a3;
- (void)fetchingChangeHistory:(id)a3;
- (void)fetchingContactCount:(id)a3;
- (void)fetchingContactIdentifierWithMatchingDictionary:(id)a3;
- (void)fetchingContactSectionCounts:(id)a3;
- (void)fetchingContactWithUserActivity:(id)a3;
- (void)fetchingContacts:(id)a3;
- (void)fetchingContactsBatch:(id)a3;
- (void)fetchingContainers:(id)a3;
- (void)fetchingDefaultContainerIdentifier:(id)a3;
- (void)fetchingGroups:(id)a3;
- (void)fetchingMeContactIdentifier:(id)a3;
- (void)gettingBackgroundColor:(id)a3;
- (void)internalError:(id)a3;
- (void)postingNotification:(id)a3;
- (void)postingNotificationWithName:(id)a3;
- (void)registeringForChangeHistory:(id)a3;
- (void)removeContactImageData;
- (void)requestAuthorizationWasDenied;
- (void)requestingAccessForContacts:(id)a3;
- (void)requestingProviderDomainCommand:(id)a3;
- (void)resettingSortDataIfNeeded:(id)a3;
- (void)saveRequestFailed:(id)a3;
- (void)saveRequestInvalid:(id)a3;
- (void)saveRequestedZeroingHandleCounts:(id)a3;
- (void)saveUpdatedSharedPhotoDisplayPreferenceFrom:(id)a3 to:(id)a4;
- (void)saving:(id)a3;
- (void)sendCommLimitsQuestionForHandles:(id)a3;
- (void)serviceError:(id)a3;
- (void)servicingContactsRequest:(id)a3;
- (void)setContactImageData:(id)a3;
- (void)setContactImageData:(id)a3 format:(const char *)a4 cropRect:(CGRect)a5;
- (void)setContactImageDataZeroCropRect:(id)a3 format:(const char *)a4;
- (void)settingDefaultAccount:(id)a3;
- (void)unregisteringForChangeHistory:(id)a3;
- (void)updatingContact:(id)a3;
@end

@implementation _CNContactsLogger

- (_CNContactsLogger)init
{
  v7.receiver = self;
  v7.super_class = _CNContactsLogger;
  v2 = [(_CNContactsLogger *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts", "Contacts");
    log = v2->_log;
    v2->_log = v3;

    v5 = v2;
  }

  return v2;
}

- (void)contactsAccessWasGranted
{
  v2 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_INFO, "Contacts access was granted", v3, 2u);
  }
}

- (void)requestingAccessForContacts:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "RequestAccessForContacts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49___CNContactsLogger_requestingAccessForContacts___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___CNContactsLogger_requestingAccessForContacts___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)fetchingMeContactIdentifier:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "FetchingMeContactIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49___CNContactsLogger_fetchingMeContactIdentifier___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___CNContactsLogger_fetchingMeContactIdentifier___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)changingMeContact:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "ChangingMeContact", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39___CNContactsLogger_changingMeContact___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___CNContactsLogger_changingMeContact___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)fetchingContactCount:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "FetchingContactCount", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42___CNContactsLogger_fetchingContactCount___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___CNContactsLogger_fetchingContactCount___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)fetchingContactSectionCounts:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "FetchingContactSectionCount", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50___CNContactsLogger_fetchingContactSectionCounts___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___CNContactsLogger_fetchingContactSectionCounts___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)fetchingContacts:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "FetchingContacts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __38___CNContactsLogger_fetchingContacts___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___CNContactsLogger_fetchingContacts___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)fetchingContactWithUserActivity:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "FetchingContactWithUserActivity", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53___CNContactsLogger_fetchingContactWithUserActivity___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___CNContactsLogger_fetchingContactWithUserActivity___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)fetchingContactIdentifierWithMatchingDictionary:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "FetchingContactIdentifierWithMatchingDictionary", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69___CNContactsLogger_fetchingContactIdentifierWithMatchingDictionary___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69___CNContactsLogger_fetchingContactIdentifierWithMatchingDictionary___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)fetchingContactsBatch:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "FetchingNextContactsBatch", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43___CNContactsLogger_fetchingContactsBatch___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___CNContactsLogger_fetchingContactsBatch___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)fetchingGroups:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "FetchingGroups", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36___CNContactsLogger_fetchingGroups___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36___CNContactsLogger_fetchingGroups___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)fetchingContainers:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "FetchingContainers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40___CNContactsLogger_fetchingContainers___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40___CNContactsLogger_fetchingContainers___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)fetchingDefaultContainerIdentifier:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "FetchingDefaultContainerID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56___CNContactsLogger_fetchingDefaultContainerIdentifier___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___CNContactsLogger_fetchingDefaultContainerIdentifier___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)saving:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "Saving", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __28___CNContactsLogger_saving___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28___CNContactsLogger_saving___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)registeringForChangeHistory:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "RegisteringForChangeHistory", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49___CNContactsLogger_registeringForChangeHistory___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___CNContactsLogger_registeringForChangeHistory___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)unregisteringForChangeHistory:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "UnregisteringForChangeHistory", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51___CNContactsLogger_unregisteringForChangeHistory___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51___CNContactsLogger_unregisteringForChangeHistory___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)fetchingChangeHistory:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "FetchingChangeHistory", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43___CNContactsLogger_fetchingChangeHistory___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___CNContactsLogger_fetchingChangeHistory___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)clearingChangeHistory:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "ClearingChangeHistory", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43___CNContactsLogger_clearingChangeHistory___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___CNContactsLogger_clearingChangeHistory___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)resettingSortDataIfNeeded:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "ResettingSortDataIfNeeded", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47___CNContactsLogger_resettingSortDataIfNeeded___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47___CNContactsLogger_resettingSortDataIfNeeded___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)settingDefaultAccount:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "SettingDefaultAccount", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43___CNContactsLogger_settingDefaultAccount___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43___CNContactsLogger_settingDefaultAccount___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)servicingContactsRequest:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "ServicingContactsRequest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46___CNContactsLogger_servicingContactsRequest___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___CNContactsLogger_servicingContactsRequest___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)postingNotification:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "PostingContactsNotification", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41___CNContactsLogger_postingNotification___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___CNContactsLogger_postingNotification___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)requestingProviderDomainCommand:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "RequestingProviderDomainCommand", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53___CNContactsLogger_requestingProviderDomainCommand___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___CNContactsLogger_requestingProviderDomainCommand___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)gettingBackgroundColor:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1954A0000, "GettingBackgroundColor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44___CNContactsLogger_gettingBackgroundColor___block_invoke;
  aBlock[3] = &unk_1E7412A88;
  v13 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___CNContactsLogger_gettingBackgroundColor___block_invoke_2;
  block[3] = &unk_1E7412DD0;
  v10 = v3;
  v11 = v6;
  v7 = v6;
  v8 = v3;
  os_activity_apply(v5, block);
}

- (void)accessAuthorizationStatusWasDenied
{
  v2 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_INFO, "Contacts TCC acccess status was denied", v3, 2u);
  }
}

- (void)requestAuthorizationWasDenied
{
  v2 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(_CNContactsLogger *)v2 requestAuthorizationWasDenied];
  }
}

- (void)contactsAccessWasDeniedWithError:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Contacts access was denied, error: %@", &v6, 0xCu);
  }
}

- (void)_commonFetchContactsMatchingPredicate:(id)a3 fetchType:(const char *)a4 unifyResults:(BOOL)a5 keysToFetch:(id)a6
{
  v7 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if (os_variant_has_internal_diagnostics())
  {
    if (objc_opt_respondsToSelector())
    {
      [v10 shortDebugDescription];
    }

    else
    {
      [v10 description];
    }
    v12 = ;
    v13 = [(_CNContactsLogger *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 136316162;
      v15 = a4;
      v16 = 2112;
      ClassName = v12;
      v18 = 1024;
      v19 = v7;
      v20 = 2048;
      v21 = [v11 count];
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_1954A0000, v13, OS_LOG_TYPE_INFO, "Fetching contacts %smatching predicate %@, unifyResults: %d, keysToFetch(%ld):%@", &v14, 0x30u);
    }
  }

  else
  {
    v12 = [(_CNContactsLogger *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 136446978;
      v15 = a4;
      v16 = 2082;
      ClassName = object_getClassName(v10);
      v18 = 1024;
      v19 = v7;
      v20 = 2048;
      v21 = [v11 count];
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_INFO, "Fetching contacts %{public}smatching predicate of class %{public}s, unifyResults: %d, keysToFetch: %ld", &v14, 0x26u);
    }
  }
}

- (void)didFetchContacts:(id)a3 error:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_CNContactsLogger *)self log];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = [v6 count];
      _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_INFO, "Did fetch %ld contacts", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger didFetchContacts:error:];
  }
}

- (void)didFetchEncodedContacts:(id)a3 error:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_CNContactsLogger *)self log];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = [v6 length];
      _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_INFO, "Did fetch contacts data, length: %ld", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger didFetchEncodedContacts:error:];
  }
}

- (void)saveRequestInvalid:(id)a3
{
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger saveRequestInvalid:];
  }
}

- (void)saveRequestFailed:(id)a3
{
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger saveRequestFailed:];
  }
}

- (void)addingContacts:(id)a3 toContainerWithIdentifier:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 _cn_map:&__block_literal_global_140];
  v9 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 134218498;
    v11 = [v6 count];
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_INFO, "Adding %ld contacts to container with identifier %@: contact identifiers %@", &v10, 0x20u);
  }
}

- (void)deletingContact:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 identifier];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Deleting contact with identifier: %@", &v7, 0xCu);
  }
}

- (void)updatingContact:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 identifier];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Updating contact with identifier: %@", &v7, 0xCu);
  }
}

- (void)changedMeContact:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Changed me contact: %@", &v6, 0xCu);
  }
}

- (void)serviceError:(id)a3
{
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger serviceError:];
  }
}

- (void)SPIUsageLackingEntitlementGrantedForPID:(int)a3
{
  v4 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(_CNContactsLogger *)a3 SPIUsageLackingEntitlementGrantedForPID:v4];
  }
}

- (void)SPIUsageLackingEntitlementRejectedForPID:(int)a3
{
  v4 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(_CNContactsLogger *)a3 SPIUsageLackingEntitlementRejectedForPID:v4];
  }
}

- (void)internalError:(id)a3
{
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger internalError:];
  }
}

- (void)errorWhenQueryingTetheredSyncData:(id)a3
{
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger errorWhenQueryingTetheredSyncData:];
  }
}

- (void)XPCConnectionWasInterruptedForService:(id)a3
{
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger XPCConnectionWasInterruptedForService:];
  }
}

- (void)XPCConnectionWasInvalidatedForService:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Service connection to %@ was invalidated", &v6, 0xCu);
  }
}

- (void)postingNotificationWithName:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Posting notification %{public}@", &v6, 0xCu);
  }
}

- (void)applyContactUpdateOfKind:(const char *)a3 value:(id)a4 property:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_respondsToSelector();
  v11 = [(_CNContactsLogger *)self log];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      v14 = 136446722;
      v15 = a3;
      v16 = 2114;
      v17 = v9;
      v18 = 2048;
      ClassName = [v8 length];
      v13 = "Updating contact %{public}s, key: '%{public}@', value length %ld";
LABEL_7:
      _os_log_debug_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEBUG, v13, &v14, 0x20u);
    }
  }

  else if (v12)
  {
    v14 = 136446722;
    v15 = a3;
    v16 = 2114;
    v17 = v9;
    v18 = 2082;
    ClassName = object_getClassName(v8);
    v13 = "Updating contact %{public}s, key: '%{public}@', value class <%{public}s>";
    goto LABEL_7;
  }
}

- (void)setContactImageData:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = [v4 length];
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Setting image data: %ld bytes with no cropRect specified", &v6, 0xCu);
  }
}

- (void)removeContactImageData
{
  v2 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1954A0000, v2, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Removing image data", v3, 2u);
  }
}

- (void)setContactImageData:(id)a3 format:(const char *)a4 cropRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v25 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134219266;
    v14 = [v11 length];
    v15 = 2048;
    v16 = x;
    v17 = 2048;
    v18 = y;
    v19 = 2048;
    v20 = width;
    v21 = 2048;
    v22 = height;
    v23 = 2082;
    v24 = a4;
    _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Setting image data: %ld bytes with cropRect: {%.2f, %.2f, %.2f, %.2f}, %{public}s format", &v13, 0x3Eu);
  }
}

- (void)setContactImageDataZeroCropRect:(id)a3 format:(const char *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = [v6 length];
    v10 = 2082;
    v11 = a4;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Setting image data: %ld bytes with zero cropRect, %{public}s format", &v8, 0x16u);
  }
}

- (void)deleteImageRecentsMetadataRequestFailed:(id)a3
{
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger deleteImageRecentsMetadataRequestFailed:];
  }
}

- (void)deletePosterRecentsMetadataRequestFailed:(id)a3
{
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger deletePosterRecentsMetadataRequestFailed:];
  }
}

- (void)saveRequestedZeroingHandleCounts:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"emailAddresses"];
    v7 = [v6 longValue];

    v8 = [v5 objectForKeyedSubscript:@"phoneNumbers"];
    v9 = [v8 longValue];

    v10 = [(_CNContactsLogger *)self log];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v7 == -1 || v9 == -1)
    {
      if (v11)
      {
        v14 = 134218240;
        v15 = -v9;
        v16 = 2048;
        v17 = -v7;
        v13 = "[Unusual Clearing of Contact] saving a CNContact which updated phone(%ld) or email(%ld) or both. May not in fact be clearing data; we don't know what the previous count was.";
LABEL_11:
        _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_DEFAULT, v13, &v14, 0x16u);
      }
    }

    else if (v11)
    {
      v14 = 134218240;
      v15 = v9;
      v16 = 2048;
      v17 = v7;
      v13 = "[Unusual Clearing of Contact] saving a CNContact leaving it with zero phone numbers or emails. Previous number of phone numbers: %ld, emails: %ld";
      goto LABEL_11;
    }
  }
}

- (void)saveUpdatedSharedPhotoDisplayPreferenceFrom:(id)a3 to:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 intValue];
  v9 = [(_CNContactsLogger *)self log];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 == -1)
  {
    if (v10)
    {
      v14 = 134217984;
      v15 = [v7 integerValue];
      v11 = "[Shared Photo Display Preference] Updating a CNContact with no snapshot to have a sharedPhotoDisplayPreference of %#lo";
      v12 = v9;
      v13 = 12;
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    v14 = 134218240;
    v15 = [v6 integerValue];
    v16 = 2048;
    v17 = [v7 integerValue];
    v11 = "[Shared Photo Display Preference] Updating a CNContact with old sharedPhotoDisplayPreference: %#lo to: %#lo";
    v12 = v9;
    v13 = 22;
LABEL_6:
    _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);
  }
}

- (void)sendCommLimitsQuestionForHandles:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[_CNContactsLogger sendCommLimitsQuestionForHandles:]";
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_DEFAULT, "%s: handles: '%@'", &v6, 0x16u);
  }
}

- (void)SPIUsageLackingEntitlementGrantedForPID:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Unauthorized Contacts SPI usage! Allowing it, please file a radar for pid %d", v2, 8u);
}

- (void)SPIUsageLackingEntitlementRejectedForPID:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Unauthorized Contacts SPI usage! Rejecting it, please file a radar for pid %d", v2, 8u);
}

@end