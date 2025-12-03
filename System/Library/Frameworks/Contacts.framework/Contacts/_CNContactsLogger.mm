@interface _CNContactsLogger
- (_CNContactsLogger)init;
- (void)SPIUsageLackingEntitlementGrantedForPID:(int)d;
- (void)SPIUsageLackingEntitlementRejectedForPID:(int)d;
- (void)XPCConnectionWasInterruptedForService:(id)service;
- (void)XPCConnectionWasInvalidatedForService:(id)service;
- (void)_commonFetchContactsMatchingPredicate:(id)predicate fetchType:(const char *)type unifyResults:(BOOL)results keysToFetch:(id)fetch;
- (void)accessAuthorizationStatusWasDenied;
- (void)addingContacts:(id)contacts toContainerWithIdentifier:(id)identifier;
- (void)applyContactUpdateOfKind:(const char *)kind value:(id)value property:(id)property;
- (void)changedMeContact:(id)contact;
- (void)changingMeContact:(id)contact;
- (void)clearingChangeHistory:(id)history;
- (void)contactsAccessWasDeniedWithError:(id)error;
- (void)contactsAccessWasGranted;
- (void)deleteImageRecentsMetadataRequestFailed:(id)failed;
- (void)deletePosterRecentsMetadataRequestFailed:(id)failed;
- (void)deletingContact:(id)contact;
- (void)didFetchContacts:(id)contacts error:(id)error;
- (void)didFetchEncodedContacts:(id)contacts error:(id)error;
- (void)errorWhenQueryingTetheredSyncData:(id)data;
- (void)fetchingChangeHistory:(id)history;
- (void)fetchingContactCount:(id)count;
- (void)fetchingContactIdentifierWithMatchingDictionary:(id)dictionary;
- (void)fetchingContactSectionCounts:(id)counts;
- (void)fetchingContactWithUserActivity:(id)activity;
- (void)fetchingContacts:(id)contacts;
- (void)fetchingContactsBatch:(id)batch;
- (void)fetchingContainers:(id)containers;
- (void)fetchingDefaultContainerIdentifier:(id)identifier;
- (void)fetchingGroups:(id)groups;
- (void)fetchingMeContactIdentifier:(id)identifier;
- (void)gettingBackgroundColor:(id)color;
- (void)internalError:(id)error;
- (void)postingNotification:(id)notification;
- (void)postingNotificationWithName:(id)name;
- (void)registeringForChangeHistory:(id)history;
- (void)removeContactImageData;
- (void)requestAuthorizationWasDenied;
- (void)requestingAccessForContacts:(id)contacts;
- (void)requestingProviderDomainCommand:(id)command;
- (void)resettingSortDataIfNeeded:(id)needed;
- (void)saveRequestFailed:(id)failed;
- (void)saveRequestInvalid:(id)invalid;
- (void)saveRequestedZeroingHandleCounts:(id)counts;
- (void)saveUpdatedSharedPhotoDisplayPreferenceFrom:(id)from to:(id)to;
- (void)saving:(id)saving;
- (void)sendCommLimitsQuestionForHandles:(id)handles;
- (void)serviceError:(id)error;
- (void)servicingContactsRequest:(id)request;
- (void)setContactImageData:(id)data;
- (void)setContactImageData:(id)data format:(const char *)format cropRect:(CGRect)rect;
- (void)setContactImageDataZeroCropRect:(id)rect format:(const char *)format;
- (void)settingDefaultAccount:(id)account;
- (void)unregisteringForChangeHistory:(id)history;
- (void)updatingContact:(id)contact;
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

- (void)requestingAccessForContacts:(id)contacts
{
  contactsCopy = contacts;
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
  v10 = contactsCopy;
  v11 = v6;
  v7 = v6;
  v8 = contactsCopy;
  os_activity_apply(v5, block);
}

- (void)fetchingMeContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v10 = identifierCopy;
  v11 = v6;
  v7 = v6;
  v8 = identifierCopy;
  os_activity_apply(v5, block);
}

- (void)changingMeContact:(id)contact
{
  contactCopy = contact;
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
  v10 = contactCopy;
  v11 = v6;
  v7 = v6;
  v8 = contactCopy;
  os_activity_apply(v5, block);
}

- (void)fetchingContactCount:(id)count
{
  countCopy = count;
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
  v10 = countCopy;
  v11 = v6;
  v7 = v6;
  v8 = countCopy;
  os_activity_apply(v5, block);
}

- (void)fetchingContactSectionCounts:(id)counts
{
  countsCopy = counts;
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
  v10 = countsCopy;
  v11 = v6;
  v7 = v6;
  v8 = countsCopy;
  os_activity_apply(v5, block);
}

- (void)fetchingContacts:(id)contacts
{
  contactsCopy = contacts;
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
  v10 = contactsCopy;
  v11 = v6;
  v7 = v6;
  v8 = contactsCopy;
  os_activity_apply(v5, block);
}

- (void)fetchingContactWithUserActivity:(id)activity
{
  activityCopy = activity;
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
  v10 = activityCopy;
  v11 = v6;
  v7 = v6;
  v8 = activityCopy;
  os_activity_apply(v5, block);
}

- (void)fetchingContactIdentifierWithMatchingDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
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
  v10 = dictionaryCopy;
  v11 = v6;
  v7 = v6;
  v8 = dictionaryCopy;
  os_activity_apply(v5, block);
}

- (void)fetchingContactsBatch:(id)batch
{
  batchCopy = batch;
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
  v10 = batchCopy;
  v11 = v6;
  v7 = v6;
  v8 = batchCopy;
  os_activity_apply(v5, block);
}

- (void)fetchingGroups:(id)groups
{
  groupsCopy = groups;
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
  v10 = groupsCopy;
  v11 = v6;
  v7 = v6;
  v8 = groupsCopy;
  os_activity_apply(v5, block);
}

- (void)fetchingContainers:(id)containers
{
  containersCopy = containers;
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
  v10 = containersCopy;
  v11 = v6;
  v7 = v6;
  v8 = containersCopy;
  os_activity_apply(v5, block);
}

- (void)fetchingDefaultContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  v10 = identifierCopy;
  v11 = v6;
  v7 = v6;
  v8 = identifierCopy;
  os_activity_apply(v5, block);
}

- (void)saving:(id)saving
{
  savingCopy = saving;
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
  v10 = savingCopy;
  v11 = v6;
  v7 = v6;
  v8 = savingCopy;
  os_activity_apply(v5, block);
}

- (void)registeringForChangeHistory:(id)history
{
  historyCopy = history;
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
  v10 = historyCopy;
  v11 = v6;
  v7 = v6;
  v8 = historyCopy;
  os_activity_apply(v5, block);
}

- (void)unregisteringForChangeHistory:(id)history
{
  historyCopy = history;
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
  v10 = historyCopy;
  v11 = v6;
  v7 = v6;
  v8 = historyCopy;
  os_activity_apply(v5, block);
}

- (void)fetchingChangeHistory:(id)history
{
  historyCopy = history;
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
  v10 = historyCopy;
  v11 = v6;
  v7 = v6;
  v8 = historyCopy;
  os_activity_apply(v5, block);
}

- (void)clearingChangeHistory:(id)history
{
  historyCopy = history;
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
  v10 = historyCopy;
  v11 = v6;
  v7 = v6;
  v8 = historyCopy;
  os_activity_apply(v5, block);
}

- (void)resettingSortDataIfNeeded:(id)needed
{
  neededCopy = needed;
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
  v10 = neededCopy;
  v11 = v6;
  v7 = v6;
  v8 = neededCopy;
  os_activity_apply(v5, block);
}

- (void)settingDefaultAccount:(id)account
{
  accountCopy = account;
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
  v10 = accountCopy;
  v11 = v6;
  v7 = v6;
  v8 = accountCopy;
  os_activity_apply(v5, block);
}

- (void)servicingContactsRequest:(id)request
{
  requestCopy = request;
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
  v10 = requestCopy;
  v11 = v6;
  v7 = v6;
  v8 = requestCopy;
  os_activity_apply(v5, block);
}

- (void)postingNotification:(id)notification
{
  notificationCopy = notification;
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
  v10 = notificationCopy;
  v11 = v6;
  v7 = v6;
  v8 = notificationCopy;
  os_activity_apply(v5, block);
}

- (void)requestingProviderDomainCommand:(id)command
{
  commandCopy = command;
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
  v10 = commandCopy;
  v11 = v6;
  v7 = v6;
  v8 = commandCopy;
  os_activity_apply(v5, block);
}

- (void)gettingBackgroundColor:(id)color
{
  colorCopy = color;
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
  v10 = colorCopy;
  v11 = v6;
  v7 = v6;
  v8 = colorCopy;
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

- (void)contactsAccessWasDeniedWithError:(id)error
{
  v8 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = errorCopy;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Contacts access was denied, error: %@", &v6, 0xCu);
  }
}

- (void)_commonFetchContactsMatchingPredicate:(id)predicate fetchType:(const char *)type unifyResults:(BOOL)results keysToFetch:(id)fetch
{
  resultsCopy = results;
  v24 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  fetchCopy = fetch;
  if (os_variant_has_internal_diagnostics())
  {
    if (objc_opt_respondsToSelector())
    {
      [predicateCopy shortDebugDescription];
    }

    else
    {
      [predicateCopy description];
    }
    v12 = ;
    v13 = [(_CNContactsLogger *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 136316162;
      typeCopy2 = type;
      v16 = 2112;
      ClassName = v12;
      v18 = 1024;
      v19 = resultsCopy;
      v20 = 2048;
      v21 = [fetchCopy count];
      v22 = 2112;
      v23 = fetchCopy;
      _os_log_impl(&dword_1954A0000, v13, OS_LOG_TYPE_INFO, "Fetching contacts %smatching predicate %@, unifyResults: %d, keysToFetch(%ld):%@", &v14, 0x30u);
    }
  }

  else
  {
    v12 = [(_CNContactsLogger *)self log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 136446978;
      typeCopy2 = type;
      v16 = 2082;
      ClassName = object_getClassName(predicateCopy);
      v18 = 1024;
      v19 = resultsCopy;
      v20 = 2048;
      v21 = [fetchCopy count];
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_INFO, "Fetching contacts %{public}smatching predicate of class %{public}s, unifyResults: %d, keysToFetch: %ld", &v14, 0x26u);
    }
  }
}

- (void)didFetchContacts:(id)contacts error:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  errorCopy = error;
  v8 = [(_CNContactsLogger *)self log];
  v9 = v8;
  if (contactsCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = [contactsCopy count];
      _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_INFO, "Did fetch %ld contacts", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger didFetchContacts:error:];
  }
}

- (void)didFetchEncodedContacts:(id)contacts error:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  errorCopy = error;
  v8 = [(_CNContactsLogger *)self log];
  v9 = v8;
  if (contactsCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      v11 = [contactsCopy length];
      _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_INFO, "Did fetch contacts data, length: %ld", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger didFetchEncodedContacts:error:];
  }
}

- (void)saveRequestInvalid:(id)invalid
{
  invalidCopy = invalid;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger saveRequestInvalid:];
  }
}

- (void)saveRequestFailed:(id)failed
{
  failedCopy = failed;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger saveRequestFailed:];
  }
}

- (void)addingContacts:(id)contacts toContainerWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  identifierCopy = identifier;
  v8 = [contactsCopy _cn_map:&__block_literal_global_140];
  v9 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 134218498;
    v11 = [contactsCopy count];
    v12 = 2112;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_INFO, "Adding %ld contacts to container with identifier %@: contact identifiers %@", &v10, 0x20u);
  }
}

- (void)deletingContact:(id)contact
{
  v9 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [contactCopy identifier];
    v7 = 138412290;
    v8 = identifier;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Deleting contact with identifier: %@", &v7, 0xCu);
  }
}

- (void)updatingContact:(id)contact
{
  v9 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [contactCopy identifier];
    v7 = 138412290;
    v8 = identifier;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Updating contact with identifier: %@", &v7, 0xCu);
  }
}

- (void)changedMeContact:(id)contact
{
  v8 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = contactCopy;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Changed me contact: %@", &v6, 0xCu);
  }
}

- (void)serviceError:(id)error
{
  errorCopy = error;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger serviceError:];
  }
}

- (void)SPIUsageLackingEntitlementGrantedForPID:(int)d
{
  v4 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(_CNContactsLogger *)d SPIUsageLackingEntitlementGrantedForPID:v4];
  }
}

- (void)SPIUsageLackingEntitlementRejectedForPID:(int)d
{
  v4 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(_CNContactsLogger *)d SPIUsageLackingEntitlementRejectedForPID:v4];
  }
}

- (void)internalError:(id)error
{
  errorCopy = error;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger internalError:];
  }
}

- (void)errorWhenQueryingTetheredSyncData:(id)data
{
  dataCopy = data;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger errorWhenQueryingTetheredSyncData:];
  }
}

- (void)XPCConnectionWasInterruptedForService:(id)service
{
  serviceCopy = service;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger XPCConnectionWasInterruptedForService:];
  }
}

- (void)XPCConnectionWasInvalidatedForService:(id)service
{
  v8 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = serviceCopy;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Service connection to %@ was invalidated", &v6, 0xCu);
  }
}

- (void)postingNotificationWithName:(id)name
{
  v8 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = nameCopy;
    _os_log_impl(&dword_1954A0000, v5, OS_LOG_TYPE_INFO, "Posting notification %{public}@", &v6, 0xCu);
  }
}

- (void)applyContactUpdateOfKind:(const char *)kind value:(id)value property:(id)property
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  propertyCopy = property;
  v10 = objc_opt_respondsToSelector();
  v11 = [(_CNContactsLogger *)self log];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      v14 = 136446722;
      kindCopy2 = kind;
      v16 = 2114;
      v17 = propertyCopy;
      v18 = 2048;
      ClassName = [valueCopy length];
      v13 = "Updating contact %{public}s, key: '%{public}@', value length %ld";
LABEL_7:
      _os_log_debug_impl(&dword_1954A0000, v11, OS_LOG_TYPE_DEBUG, v13, &v14, 0x20u);
    }
  }

  else if (v12)
  {
    v14 = 136446722;
    kindCopy2 = kind;
    v16 = 2114;
    v17 = propertyCopy;
    v18 = 2082;
    ClassName = object_getClassName(valueCopy);
    v13 = "Updating contact %{public}s, key: '%{public}@', value class <%{public}s>";
    goto LABEL_7;
  }
}

- (void)setContactImageData:(id)data
{
  v8 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = [dataCopy length];
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

- (void)setContactImageData:(id)data format:(const char *)format cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v12 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134219266;
    v14 = [dataCopy length];
    v15 = 2048;
    v16 = x;
    v17 = 2048;
    v18 = y;
    v19 = 2048;
    v20 = width;
    v21 = 2048;
    v22 = height;
    v23 = 2082;
    formatCopy = format;
    _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Setting image data: %ld bytes with cropRect: {%.2f, %.2f, %.2f, %.2f}, %{public}s format", &v13, 0x3Eu);
  }
}

- (void)setContactImageDataZeroCropRect:(id)rect format:(const char *)format
{
  v12 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  v7 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = [rectCopy length];
    v10 = 2082;
    formatCopy = format;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "[Likeness Update] Setting image data: %ld bytes with zero cropRect, %{public}s format", &v8, 0x16u);
  }
}

- (void)deleteImageRecentsMetadataRequestFailed:(id)failed
{
  failedCopy = failed;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger deleteImageRecentsMetadataRequestFailed:];
  }
}

- (void)deletePosterRecentsMetadataRequestFailed:(id)failed
{
  failedCopy = failed;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNContactsLogger deletePosterRecentsMetadataRequestFailed:];
  }
}

- (void)saveRequestedZeroingHandleCounts:(id)counts
{
  v18 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  v5 = countsCopy;
  if (countsCopy)
  {
    v6 = [countsCopy objectForKeyedSubscript:@"emailAddresses"];
    longValue = [v6 longValue];

    v8 = [v5 objectForKeyedSubscript:@"phoneNumbers"];
    longValue2 = [v8 longValue];

    v10 = [(_CNContactsLogger *)self log];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (longValue == -1 || longValue2 == -1)
    {
      if (v11)
      {
        v14 = 134218240;
        v15 = -longValue2;
        v16 = 2048;
        v17 = -longValue;
        v13 = "[Unusual Clearing of Contact] saving a CNContact which updated phone(%ld) or email(%ld) or both. May not in fact be clearing data; we don't know what the previous count was.";
LABEL_11:
        _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_DEFAULT, v13, &v14, 0x16u);
      }
    }

    else if (v11)
    {
      v14 = 134218240;
      v15 = longValue2;
      v16 = 2048;
      v17 = longValue;
      v13 = "[Unusual Clearing of Contact] saving a CNContact leaving it with zero phone numbers or emails. Previous number of phone numbers: %ld, emails: %ld";
      goto LABEL_11;
    }
  }
}

- (void)saveUpdatedSharedPhotoDisplayPreferenceFrom:(id)from to:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  intValue = [fromCopy intValue];
  v9 = [(_CNContactsLogger *)self log];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (intValue == -1)
  {
    if (v10)
    {
      v14 = 134217984;
      integerValue = [toCopy integerValue];
      v11 = "[Shared Photo Display Preference] Updating a CNContact with no snapshot to have a sharedPhotoDisplayPreference of %#lo";
      v12 = v9;
      v13 = 12;
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    v14 = 134218240;
    integerValue = [fromCopy integerValue];
    v16 = 2048;
    integerValue2 = [toCopy integerValue];
    v11 = "[Shared Photo Display Preference] Updating a CNContact with old sharedPhotoDisplayPreference: %#lo to: %#lo";
    v12 = v9;
    v13 = 22;
LABEL_6:
    _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);
  }
}

- (void)sendCommLimitsQuestionForHandles:(id)handles
{
  v10 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  v5 = [(_CNContactsLogger *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[_CNContactsLogger sendCommLimitsQuestionForHandles:]";
    v8 = 2112;
    v9 = handlesCopy;
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