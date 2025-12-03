@interface CNGeminiManager
+ (BOOL)deviceSupportsGemini;
+ (id)channelStringFromSenderIdentity:(id)identity;
+ (id)descriptorForRequiredKeys;
- (BOOL)isReferencedByContactsForSenderLabelIdentifier:(id)identifier store:(id)store;
- (BOOL)remapChannelIdentifier:(id)identifier toIdentifier:(id)toIdentifier error:(id *)error;
- (BOOL)remapContactsHavingPreferredChannelIdentifier:(id)identifier toPreferredChannelIdentifier:(id)channelIdentifier contactStore:(id)store error:(id *)error;
- (BOOL)remapMessagesHavingChannelIdentifier:(uint64_t)identifier toChannelIdentifier:(void *)channelIdentifier error:(void *)error;
- (BOOL)remapRecentCallsHavingChannelIdentifier:(uint64_t)identifier toChannelIdentifier:(void *)channelIdentifier error:(void *)error;
- (CNGeminiManager)initWithEnvironment:(id)environment coreTelephonyClient:(id)client callProviderManager:(id)manager;
- (CNGeminiResult)geminiResultForChannel:(uint64_t)channel usage:(void *)usage availableChannels:(int)channels isUnknownNumber:;
- (CNGeminiResult)geminiResultForHandle:(void *)handle contactStore:(uint64_t)store substituteDefaultForDangling:(uint64_t)dangling error:;
- (id)badgeLabelForSenderIdentity:(id)identity error:(id *)error;
- (id)badgeLabelForSubscription:(id)subscription error:(id *)error;
- (id)bestChannelIdentifierForPhoneNumbers:(void *)numbers fromChannelIdentifiers:(void *)identifiers defaultChannelIdentifier:;
- (id)bestSenderIdentityForContact:(id)contact error:(id *)error;
- (id)bestSenderIdentityForFavoritesEntry:(id)entry error:(id *)error;
- (id)bestSenderIdentityForHandle:(id)handle contactStore:(id)store error:(id *)error;
- (id)bestSubscriptionForContact:(id)contact error:(id *)error;
- (id)bestSubscriptionForHandle:(id)handle contactStore:(id)store error:(id *)error;
- (id)callProviderManager;
- (id)channelForContact:(id)contact error:(id *)error;
- (id)channelForFavoritesEntry:(void *)entry includeDanglingChannels:(void *)channels error:(int)error;
- (id)channelForPreferredChannelString:(void *)string fromChannels:(int)channels synthesizeMissingChannels:;
- (id)channelIdentifierForMostRecentCallFromPhoneNumbers:(void *)numbers fromChannelIdentifiers:;
- (id)channelIdentifierForMostRecentSMSFromPhoneNumbers:(void *)numbers fromChannelIdentifiers:;
- (id)channelsByIdentifierIncludingDanglingPlans:(void *)plans defaultChannel:(void *)channel availableChannels:;
- (id)contactForPhoneString:(void *)string contactStore:;
- (id)coreTelephonyClient;
- (id)fakeSenderIdentities;
- (id)fetchedSenderIdentitiesWithError:(id *)error;
- (id)fetchedSubscriptionForSenderIdentity:(id)identity;
- (id)fetchedSubscriptionsWithError:(id)error;
- (id)geminiResultForContact:(id)contact substituteDefaultForDangling:(BOOL)dangling error:(id *)error;
- (id)mostRecentChannelIdentifierForPhoneNumbers:(void *)numbers fromChannelIdentifiers:;
- (id)remoteBestSenderIdentityForHandle:(id)handle contactStore:(id)store error:(id *)error;
- (id)remoteGeminiResultForContact:(id)contact substituteDefaultForDangling:(BOOL)dangling error:(id *)error;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)notifyDelegateOfChannelUpdates;
- (void)removeDelegate:(id)delegate;
@end

@implementation CNGeminiManager

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_5 != -1)
  {
    +[CNGeminiManager descriptorForRequiredKeys];
  }

  v3 = descriptorForRequiredKeys_cn_once_object_5;

  return v3;
}

void __44__CNGeminiManager_descriptorForRequiredKeys__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"phoneNumbers";
  v5[1] = @"preferredChannel";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Gemini"];
  v2 = [CNAggregateKeyDescriptor keyDescriptorWithKeyDescriptors:v0 description:v1];
  v3 = [v2 copy];
  v4 = descriptorForRequiredKeys_cn_once_object_5;
  descriptorForRequiredKeys_cn_once_object_5 = v3;
}

+ (BOOL)deviceSupportsGemini
{
  v13 = *MEMORY[0x1E69E9840];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:15];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (deviceSupportsGemini_haveValidGeminiStatus == 1)
  {
    v7 = deviceSupportsGemini_supportsGemini | v5;
    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_opt_self();
    if (CFPreferencesGetAppBooleanValue(@"CNEnableGemini", *MEMORY[0x1E695E890], 0))
    {
      v8 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v8 = MGCopyAnswerWithError();
    }

    if (v8)
    {
      deviceSupportsGemini_haveValidGeminiStatus = 1;
      deviceSupportsGemini_supportsGemini = CFBooleanGetValue(v8) != 0;
      CFRelease(v8);
    }

    v9 = +[CNGeminiChannel os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = (deviceSupportsGemini_supportsGemini | v5) & 1;
      _os_log_impl(&dword_1954A0000, v9, OS_LOG_TYPE_DEFAULT, "Supports Gemini: %i", buf, 8u);
    }

    objc_sync_exit(selfCopy);
    v7 = deviceSupportsGemini_supportsGemini | v5;
  }

  return v7 & 1;
}

- (id)callProviderManager
{
  if (self)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_9_0();
    self = cn_objectResultWithObjectLock();
    v1 = vars8;
  }

  return self;
}

id __38__CNGeminiManager_callProviderManager__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    v3 = objc_alloc_init(getTUCallProviderManagerClass());
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    [*(*(a1 + 32) + 24) addDelegate:*(a1 + 32) queue:0];
    v2 = *(*(a1 + 32) + 24);
  }

  return v2;
}

- (void)notifyDelegateOfChannelUpdates
{
  if (self)
  {
    OUTLINED_FUNCTION_9_0();
    dispatch_async(v2, v1);
  }
}

void __49__CNGeminiManager_notifyDelegateOfChannelUpdates__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[5];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = *(a1 + 32);
        if (v9)
        {
          v10 = *(v9 + 40);
        }

        else
        {
          v10 = 0;
        }

        v11 = [v10 objectForKey:*(*(&v15 + 1) + 8 * v7)];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __49__CNGeminiManager_notifyDelegateOfChannelUpdates__block_invoke_2;
        v14[3] = &unk_1E74121B8;
        v12 = *(a1 + 32);
        v14[4] = v8;
        v14[5] = v12;
        dispatch_async(v11, v14);

        ++v7;
      }

      while (v5 != v7);
      v13 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v5 = v13;
    }

    while (v13);
  }
}

- (id)coreTelephonyClient
{
  if (self)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_9_0();
    self = cn_objectResultWithObjectLock();
    v1 = vars8;
  }

  return self;
}

id __38__CNGeminiManager_coreTelephonyClient__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(getCoreTelephonyClientClass());
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    [*(*(a1 + 32) + 16) setDelegate:?];
    v2 = *(*(a1 + 32) + 16);
  }

  return v2;
}

+ (id)channelStringFromSenderIdentity:(id)identity
{
  identityCopy = identity;
  v4 = identityCopy;
  if (identityCopy)
  {
    accountUUID = [identityCopy accountUUID];

    if (accountUUID)
    {
      v6 = MEMORY[0x1E696AEC0];
      accountUUID2 = [v4 accountUUID];
      uUIDString = [accountUUID2 UUIDString];
      accountUUID = [v6 stringWithFormat:@"uuid:%@", uUIDString];
    }
  }

  else
  {
    accountUUID = 0;
  }

  return accountUUID;
}

- (CNGeminiManager)initWithEnvironment:(id)environment coreTelephonyClient:(id)client callProviderManager:(id)manager
{
  environmentCopy = environment;
  clientCopy = client;
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = CNGeminiManager;
  v12 = [(CNGeminiManager *)&v22 init];
  if (v12)
  {
    v13 = dispatch_queue_create("com.apple.contacts.geminimanager.queue", 0);
    queue = v12->_queue;
    v12->_queue = v13;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateToQueue = v12->_delegateToQueue;
    v12->_delegateToQueue = weakToStrongObjectsMapTable;

    objc_storeStrong(&v12->_environment, environment);
    objc_storeStrong(&v12->_callProviderManager, manager);
    objc_storeStrong(&v12->_coreTelephonyClient, client);
    [(CoreTelephonyClient *)v12->_coreTelephonyClient setDelegate:v12];
    [(TUCallProviderManager *)v12->_callProviderManager addDelegate:v12 queue:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = *MEMORY[0x1E6993BD8];
    objc_opt_self();
    mEMORY[0x1E6993BE0] = [MEMORY[0x1E6993BE0] sharedManager];
    [defaultCenter addObserver:v12 selector:sel_danglingPlansDidUpdate_ name:v18 object:mEMORY[0x1E6993BE0]];

    v20 = v12;
  }

  return v12;
}

- (id)fetchedSenderIdentitiesWithError:(id *)error
{
  objc_opt_self();
  if (CFPreferencesGetAppBooleanValue(@"CNEnableGemini", *MEMORY[0x1E695E890], 0))
  {
    fakeSenderIdentities = [(CNGeminiManager *)self fakeSenderIdentities];
  }

  else
  {
    [(CNGeminiManager *)self fetchedSenderIdentitiesWithError:?];
    fakeSenderIdentities = v6;
  }

  return fakeSenderIdentities;
}

- (id)channelForContact:(id)contact error:(id *)error
{
  v4 = [(CNGeminiManager *)self geminiResultForContact:contact substituteDefaultForDangling:0 error:error];
  channel = [v4 channel];

  return channel;
}

- (id)bestSenderIdentityForContact:(id)contact error:(id *)error
{
  v4 = [(CNGeminiManager *)self geminiResultForContact:contact substituteDefaultForDangling:1 error:error];
  channel = [v4 channel];
  senderIdentity = [channel senderIdentity];

  return senderIdentity;
}

- (id)remoteGeminiResultForContact:(id)contact substituteDefaultForDangling:(BOOL)dangling error:(id *)error
{
  danglingCopy = dangling;
  contactCopy = contact;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  entitlementVerifier = [currentEnvironment entitlementVerifier];
  v11 = [entitlementVerifier currentProcessHasBooleanEntitlement:*MEMORY[0x1E6996500] error:0];

  if (v11)
  {
    v12 = [(CNGeminiManager *)self geminiResultForContact:contactCopy substituteDefaultForDangling:danglingCopy error:error];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.contactsd" options:0];
    v14 = +[CNXPCDataMapper serviceProtocolInterface];
    [v13 setRemoteObjectInterface:v14];

    [v13 resume];
    v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_173];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__3;
    v28 = __Block_byref_object_dispose__3;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__3;
    v22 = __Block_byref_object_dispose__3;
    v23 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __83__CNGeminiManager_remoteGeminiResultForContact_substituteDefaultForDangling_error___block_invoke_174;
    v17[3] = &unk_1E74129A8;
    v17[4] = &v18;
    v17[5] = &v24;
    [v15 geminiResultForContact:contactCopy substituteDefaultForDangling:danglingCopy withReply:v17];
    [v13 invalidate];
    if (error)
    {
      *error = v25[5];
    }

    v12 = v19[5];
    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v24, 8);
  }

  return v12;
}

void __83__CNGeminiManager_remoteGeminiResultForContact_substituteDefaultForDangling_error___block_invoke()
{
  v0 = +[CNGeminiChannel os_log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __83__CNGeminiManager_remoteGeminiResultForContact_substituteDefaultForDangling_error___block_invoke_cold_1();
  }
}

void __83__CNGeminiManager_remoteGeminiResultForContact_substituteDefaultForDangling_error___block_invoke_174(uint64_t a1, void *a2, void *a3)
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

- (id)remoteBestSenderIdentityForHandle:(id)handle contactStore:(id)store error:(id *)error
{
  handleCopy = handle;
  storeCopy = store;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  entitlementVerifier = [currentEnvironment entitlementVerifier];
  v12 = [entitlementVerifier currentProcessHasBooleanEntitlement:*MEMORY[0x1E6996500] error:0];

  if (v12)
  {
    senderIdentity = [(CNGeminiManager *)self bestSenderIdentityForHandle:handleCopy contactStore:storeCopy error:error];
    goto LABEL_11;
  }

  if ([handleCopy handleType])
  {
    handleType = [handleCopy handleType];
    if (!storeCopy || handleType != -1)
    {
      goto LABEL_8;
    }
  }

  else if (!storeCopy)
  {
    goto LABEL_8;
  }

  stringValue = [handleCopy stringValue];
  v20 = [(CNGeminiManager *)self contactForPhoneString:stringValue contactStore:storeCopy];

  if (v20)
  {
    v21 = [(CNGeminiManager *)self remoteGeminiResultForContact:v20 substituteDefaultForDangling:1 error:error];
    channel = [v21 channel];
    senderIdentity = [channel senderIdentity];

    goto LABEL_11;
  }

LABEL_8:
  v15 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.contactsd" options:0];
  v16 = +[CNXPCDataMapper serviceProtocolInterface];
  [v15 setRemoteObjectInterface:v16];

  [v15 resume];
  v17 = [v15 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_177];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3;
  v34 = __Block_byref_object_dispose__3;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__CNGeminiManager_remoteBestSenderIdentityForHandle_contactStore_error___block_invoke_178;
  v23[3] = &unk_1E74129D0;
  v23[4] = &v24;
  v23[5] = &v30;
  [v17 bestSenderIdentityForHandle:handleCopy withReply:v23];
  [v15 invalidate];
  if (error)
  {
    *error = v31[5];
  }

  senderIdentity = v25[5];
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
LABEL_11:

  return senderIdentity;
}

void __72__CNGeminiManager_remoteBestSenderIdentityForHandle_contactStore_error___block_invoke()
{
  v0 = +[CNGeminiChannel os_log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __83__CNGeminiManager_remoteGeminiResultForContact_substituteDefaultForDangling_error___block_invoke_cold_1();
  }
}

void __72__CNGeminiManager_remoteBestSenderIdentityForHandle_contactStore_error___block_invoke_178(uint64_t a1, void *a2, void *a3)
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

- (id)geminiResultForContact:(id)contact substituteDefaultForDangling:(BOOL)dangling error:(id *)error
{
  danglingCopy = dangling;
  v39[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (!contactCopy)
  {
    v8 = 0;
    goto LABEL_3;
  }

  descriptorForRequiredKeys = [objc_opt_class() descriptorForRequiredKeys];
  v39[0] = descriptorForRequiredKeys;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  [contactCopy assertKeysAreAvailable:v11];

  v36 = 0;
  v37 = 0;
  v12 = [(CNGeminiManager *)self channelsByIdentifierIncludingDanglingPlans:&v37 defaultChannel:&v36 availableChannels:?];
  v13 = v37;
  v14 = v36;
  if ([v12 count])
  {
    v15 = *MEMORY[0x1E6996568];
    preferredChannel = [contactCopy preferredChannel];
    v17 = (*(v15 + 16))(v15, preferredChannel);

    if ((v17 & 1) != 0 || ([contactCopy preferredChannel], v19 = objc_claimAutoreleasedReturnValue(), -[CNGeminiManager channelForPreferredChannelString:fromChannels:synthesizeMissingChannels:](self, v19, v12, 1), v20 = objc_claimAutoreleasedReturnValue(), v19, v21 = v20, -[CNGeminiManager geminiResultForChannel:usage:availableChannels:isUnknownNumber:](self, v20, 1, v14, objc_msgSend(contactCopy, "hasBeenPersisted") ^ 1), v8 = objc_claimAutoreleasedReturnValue(), v21, !v8))
    {
      if (![objc_opt_class() deviceSupportsGemini])
      {
        v8 = 0;
        goto LABEL_10;
      }

      phoneNumbers = [contactCopy phoneNumbers];
      v25 = [phoneNumbers _cn_map:&__block_literal_global_182];
      v35 = [v25 _cn_filter:*MEMORY[0x1E6996550]];

      allKeys = [v12 allKeys];
      channelIdentifier = [v13 channelIdentifier];
      v27 = [(CNGeminiManager *)self bestChannelIdentifierForPhoneNumbers:v35 fromChannelIdentifiers:allKeys defaultChannelIdentifier:channelIdentifier];

      v34 = v27;
      first = [v27 first];
      v29 = (*(v15 + 16))(v15, first);

      if (v29)
      {

        v8 = 0;
        v23 = 1;
        channel = v35;
LABEL_18:

        if (!v23)
        {
          goto LABEL_13;
        }

LABEL_10:
        if (v13)
        {
          v18 = -[CNGeminiManager geminiResultForChannel:usage:availableChannels:isUnknownNumber:](self, v13, 3, v14, [contactCopy hasBeenPersisted] ^ 1);

          v8 = v18;
        }

        goto LABEL_13;
      }

      first2 = [v27 first];
      v31 = [v12 objectForKey:first2];

      if (!v31)
      {
        [CNGeminiManager geminiResultForContact:v27 substituteDefaultForDangling:&v38 error:?];
        v31 = v38;
      }

      second = [v27 second];
      v8 = -[CNGeminiManager geminiResultForChannel:usage:availableChannels:isUnknownNumber:](self, v31, [second unsignedIntegerValue], v14, objc_msgSend(contactCopy, "hasBeenPersisted") ^ 1);

      if (!v8)
      {
        goto LABEL_10;
      }
    }

    channel = [v8 channel];
    v23 = danglingCopy & ~[channel isAvailable];
    goto LABEL_18;
  }

  v8 = 0;
LABEL_13:

LABEL_3:

  return v8;
}

id __77__CNGeminiManager_geminiResultForContact_substituteDefaultForDangling_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 unformattedInternationalStringValue];

  return v3;
}

- (id)bestSenderIdentityForHandle:(id)handle contactStore:(id)store error:(id *)error
{
  v5 = [(CNGeminiManager *)self geminiResultForHandle:handle contactStore:store substituteDefaultForDangling:1 error:error];
  channel = [v5 channel];
  senderIdentity = [channel senderIdentity];

  return senderIdentity;
}

- (id)channelIdentifierForMostRecentCallFromPhoneNumbers:(void *)numbers fromChannelIdentifiers:
{
  v5 = a2;
  numbersCopy = numbers;
  if (self)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v7 = getCHManagerClass_softClass;
    v22 = getCHManagerClass_softClass;
    if (!getCHManagerClass_softClass)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __getCHManagerClass_block_invoke;
      v18[3] = &unk_1E7412110;
      v18[4] = &v19;
      __getCHManagerClass_block_invoke(v18);
      v7 = v20[3];
    }

    v8 = v7;
    _Block_object_dispose(&v19, 8);
    v9 = objc_alloc_init(v7);
    v10 = [v9 latestCallMatchingNormalizedRemoteParticipantHandleValues:v5];
    v11 = v10;
    if (v10)
    {
      outgoingLocalParticipantUUID = [v10 outgoingLocalParticipantUUID];
      uUIDString = [outgoingLocalParticipantUUID UUIDString];

      date = [v11 date];
      v15 = date;
      v16 = 0;
      if (uUIDString && date)
      {
        v16 = [MEMORY[0x1E69967A8] pairWithFirst:uUIDString second:date];
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

- (id)channelIdentifierForMostRecentSMSFromPhoneNumbers:(void *)numbers fromChannelIdentifiers:
{
  v5 = a2;
  numbersCopy = numbers;
  if (self)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    if (!IMCoreLibraryCore() || !getIMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDsSymbolLoc())
    {
      v8 = 0;
LABEL_5:

      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E695DFD8] setWithArray:numbersCopy];
    v11 = v7;
    v12 = v10;
    IMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDsSymbolLoc = getIMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDsSymbolLoc();
    if (IMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDsSymbolLoc)
    {
      [(CNGeminiManager *)v11 channelIdentifierForMostRecentSMSFromPhoneNumbers:v12 fromChannelIdentifiers:IMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDsSymbolLoc, &v14];
      v8 = v14;
      goto LABEL_5;
    }

    getMDItemUniqueIdentifier_cold_1();
  }

  v8 = 0;
LABEL_6:

  return v8;
}

uint64_t __85__CNGeminiManager_mostRecentChannelIdentifierForPhoneNumbers_fromChannelIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 second];
  v6 = [v4 second];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)badgeLabelForSenderIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  localizedShortName = [identityCopy localizedShortName];
  v7 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], localizedShortName))
  {

    v9 = [(CNGeminiManager *)self fetchedSubscriptionForSenderIdentity:identityCopy];
    coreTelephonyClient = [(CNGeminiManager *)self coreTelephonyClient];
    v11 = [coreTelephonyClient getSimLabel:v9 error:0];

    text = [v11 text];
    localizedShortName = [text _cn_take:1];

    if ((*(v7 + 16))(v7, localizedShortName))
    {

      localizedShortName = @"?";
    }
  }

  return localizedShortName;
}

- (BOOL)remapChannelIdentifier:(id)identifier toIdentifier:(id)toIdentifier error:(id *)error
{
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  v10 = *MEMORY[0x1E6996568];
  if (((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], identifierCopy) & 1) != 0 || (*(v10 + 16))(v10, toIdentifierCopy))
  {
    v11 = [CNErrorFactory errorWithCode:205 userInfo:0];
    if (error)
    {
      v11 = v11;
      *error = v11;
    }

    v12 = 0;
  }

  else
  {
    v14 = objc_opt_new();
    v23 = 0;
    v15 = [(CNGeminiManager *)self remapContactsHavingPreferredChannelIdentifier:identifierCopy toPreferredChannelIdentifier:toIdentifierCopy contactStore:v14 error:&v23];
    v16 = v23;
    v17 = v16;
    v18 = 0;
    if (!v15)
    {
      v18 = v16;
    }

    v19 = [CNGeminiManager remapRecentCallsHavingChannelIdentifier:identifierCopy toChannelIdentifier:toIdentifierCopy error:?];
    v20 = v19 && v15;
    if (!v19 && v15)
    {

      v20 = 0;
      v18 = 0;
    }

    v21 = [CNGeminiManager remapMessagesHavingChannelIdentifier:identifierCopy toChannelIdentifier:toIdentifierCopy error:?];
    v12 = v21 & v20;
    if (!v21 && v20)
    {

      v12 = 0;
      v18 = 0;
    }

    if (error && !v12)
    {
      v22 = v18;
      *error = v18;
    }
  }

  return v12;
}

- (BOOL)remapMessagesHavingChannelIdentifier:(uint64_t)identifier toChannelIdentifier:(void *)channelIdentifier error:(void *)error
{
  channelIdentifierCopy = channelIdentifier;
  errorCopy = error;
  if (!identifier)
  {
    goto LABEL_8;
  }

  if (!IMCoreLibraryCore())
  {
    goto LABEL_8;
  }

  if (!getIMSPIRemapChatsWithLastAddressedLabelIDToNewLabelIDSymbolLoc())
  {
    goto LABEL_8;
  }

  v7 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], errorCopy) & 1) != 0 || ((*(v7 + 16))(v7, channelIdentifierCopy))
  {
    goto LABEL_8;
  }

  v8 = channelIdentifierCopy;
  v9 = errorCopy;
  IMSPIRemapChatsWithLastAddressedLabelIDToNewLabelIDSymbolLoc = getIMSPIRemapChatsWithLastAddressedLabelIDToNewLabelIDSymbolLoc();
  if (IMSPIRemapChatsWithLastAddressedLabelIDToNewLabelIDSymbolLoc)
  {
    IMSPIRemapChatsWithLastAddressedLabelIDToNewLabelIDSymbolLoc(v8, v9);

LABEL_8:
    return identifier != 0;
  }

  MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
  return [(CNGeminiManager *)MDItemUniqueIdentifier_cold_1 remapContactsHavingPreferredChannelIdentifier:v13 toPreferredChannelIdentifier:v14 contactStore:v15 error:v16, v17];
}

- (BOOL)remapContactsHavingPreferredChannelIdentifier:(id)identifier toPreferredChannelIdentifier:(id)channelIdentifier contactStore:(id)store error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  channelIdentifierCopy = channelIdentifier;
  v11 = [@"uuid:" stringByAppendingString:identifier];
  v12 = [@"uuid:" stringByAppendingString:channelIdentifierCopy];

  v13 = [CNContact predicateForContactsMatchingPreferredChannel:v11 limitOne:0];
  v14 = [CNContactFetchRequest alloc];
  v32[0] = @"preferredChannel";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v16 = [(CNContactFetchRequest *)v14 initWithKeysToFetch:v15];

  [(CNContactFetchRequest *)v16 setUnifyResults:0];
  [(CNContactFetchRequest *)v16 setMutableObjects:1];
  [(CNContactFetchRequest *)v16 setPredicate:v13];
  v17 = objc_opt_new();
  v31 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __113__CNGeminiManager_remapContactsHavingPreferredChannelIdentifier_toPreferredChannelIdentifier_contactStore_error___block_invoke;
  v28[3] = &unk_1E7412A38;
  v18 = v12;
  v29 = v18;
  v19 = v17;
  v30 = v19;
  v20 = [storeCopy enumerateContactsWithFetchRequest:v16 error:&v31 usingBlock:v28];
  v21 = v31;
  v22 = v21;
  if (v20)
  {
    v27 = v21;
    v23 = [storeCopy executeSaveRequest:v19 error:&v27];
    v24 = v27;

    v22 = v24;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v23 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if ((v23 & 1) == 0)
  {
    v25 = v22;
    *error = v22;
  }

LABEL_7:

  return v23;
}

void __113__CNGeminiManager_remapContactsHavingPreferredChannelIdentifier_toPreferredChannelIdentifier_contactStore_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPreferredChannel:v3];
  [*(a1 + 40) updateContact:v4];
}

- (BOOL)isReferencedByContactsForSenderLabelIdentifier:(id)identifier store:(id)store
{
  v18[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  storeCopy = store;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = [CNContact predicateForContactsMatchingPreferredChannel:identifierCopy limitOne:1];
  v8 = [CNContactFetchRequest alloc];
  v18[0] = @"preferredChannel";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v10 = [(CNContactFetchRequest *)v8 initWithKeysToFetch:v9];

  [(CNContactFetchRequest *)v10 setUnifyResults:0];
  [(CNContactFetchRequest *)v10 setPredicate:v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__CNGeminiManager_isReferencedByContactsForSenderLabelIdentifier_store___block_invoke;
  v13[3] = &unk_1E7412670;
  v13[4] = &v14;
  if ([storeCopy enumerateContactsWithFetchRequest:v10 error:0 usingBlock:v13])
  {
    v11 = *(v15 + 24);
  }

  else
  {
    v11 = 1;
    *(v15 + 24) = 1;
  }

  _Block_object_dispose(&v14, 8);
  return v11 & 1;
}

uint64_t __72__CNGeminiManager_isReferencedByContactsForSenderLabelIdentifier_store___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- (id)bestSubscriptionForContact:(id)contact error:(id *)error
{
  v5 = [(CNGeminiManager *)self bestSenderIdentityForContact:contact error:error];
  if (v5)
  {
    v6 = [(CNGeminiManager *)self fetchedSubscriptionForSenderIdentity:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)bestSubscriptionForHandle:(id)handle contactStore:(id)store error:(id *)error
{
  v6 = [(CNGeminiManager *)self bestSenderIdentityForHandle:handle contactStore:store error:error];
  if (v6)
  {
    v7 = [(CNGeminiManager *)self fetchedSubscriptionForSenderIdentity:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __49__CNGeminiManager_fetchedSubscriptionsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSimHidden] & 1) != 0 || (objc_msgSend(v3, "isSimDataOnly"))
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) getPhoneNumber:v3 error:0];
    v6 = *MEMORY[0x1E6996568];
    v7 = [v5 number];
    v4 = (*(v6 + 16))(v6, v7) ^ 1;
  }

  return v4;
}

uint64_t __56__CNGeminiManager_fetchedSubscriptionForSenderIdentity___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) getPhoneNumber:a2 error:0];
  v4 = [v3 number];

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 isEqualToString:*(a1 + 40)];
  }

  return v5;
}

- (id)badgeLabelForSubscription:(id)subscription error:(id *)error
{
  subscriptionCopy = subscription;
  v5 = *MEMORY[0x1E6996568];
  label = [subscriptionCopy label];
  LOBYTE(v5) = (*(v5 + 16))(v5, label);

  if (v5)
  {
    v7 = @"?";
  }

  else
  {
    label2 = [subscriptionCopy label];
    label3 = [subscriptionCopy label];
    v10 = [label3 rangeOfComposedCharacterSequenceAtIndex:0];
    v7 = [label2 substringToIndex:v10 + v11];
  }

  return v7;
}

- (id)channelsByIdentifierIncludingDanglingPlans:(void *)plans defaultChannel:(void *)channel availableChannels:
{
  v93 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v7 = [self fetchedSenderIdentitiesWithError:0];
    plansCopy = plans;
    channelCopy = channel;
    if (a2 && [objc_opt_class() deviceSupportsGemini])
    {
      channel = 0x1E7410000;
      objc_opt_self();
      mEMORY[0x1E6993BE0] = [MEMORY[0x1E6993BE0] sharedManager];
      v9 = [mEMORY[0x1E6993BE0] danglingPlanItemsShouldUpdate:1];

      objc_opt_self();
      mEMORY[0x1E6993BE0]2 = [MEMORY[0x1E6993BE0] sharedManager];
      v70 = [mEMORY[0x1E6993BE0]2 planItemsShouldUpdate:1];
    }

    else
    {
      v70 = 0;
      v9 = 0;
    }

    array = [MEMORY[0x1E695DF70] array];
    v77 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v7, "count") + objc_msgSend(v9, "count")}];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = v7;
    v11 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v87;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v87 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [[CNGeminiChannel alloc] initWithSenderIdentity:?];
          [v15 channelIdentifier];
          objc_claimAutoreleasedReturnValue();
          v16 = OUTLINED_FUNCTION_3_1();
          v18 = v17(v16);

          if ((v18 & 1) == 0)
          {
            channelIdentifier = [v15 channelIdentifier];
            OUTLINED_FUNCTION_6_0(channelIdentifier, v20, v21, v22, v23, v24, v25, v26, v69, v70, v71, plansCopy, channelCopy, array, obj, v77);

            [array addObject:v15];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
      }

      while (v12);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v27 = v9;
    v28 = [v27 countByEnumeratingWithState:&v82 objects:v91 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v83;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v83 != v30)
          {
            objc_enumerationMutation(v27);
          }

          channel = *(*(&v82 + 1) + 8 * j);
          v32 = [[CNGeminiChannel alloc] initWithDanglingPlanItem:channel];
          [v32 channelIdentifier];
          objc_claimAutoreleasedReturnValue();
          v33 = OUTLINED_FUNCTION_3_1();
          v35 = v34(v33);

          if ((v35 & 1) == 0)
          {
            channelIdentifier2 = [v32 channelIdentifier];
            OUTLINED_FUNCTION_6_0(channelIdentifier2, v37, v38, v39, v40, v41, v42, v43, v69, v70, v71, plansCopy, channelCopy, array, obj, v77);
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v82 objects:v91 count:16];
      }

      while (v29);
    }

    v72 = v27;

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v44 = v70;
    v45 = [v44 countByEnumeratingWithState:&v78 objects:v90 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v79;
      do
      {
        v48 = 0;
        do
        {
          if (*v79 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v78 + 1) + 8 * v48);
          if (([v49 isSelected] & 1) == 0)
          {
            v50 = [[CNGeminiChannel alloc] initWithDisabledCellularPlanItem:v49];
            [v50 channelIdentifier];
            objc_claimAutoreleasedReturnValue();
            v51 = OUTLINED_FUNCTION_3_1();
            v53 = v52(v51);

            if ((v53 & 1) == 0)
            {
              channelIdentifier3 = [v50 channelIdentifier];
              OUTLINED_FUNCTION_6_0(channelIdentifier3, v55, v56, v57, v58, v59, v60, v61, v69, v70, v72, plansCopy, channelCopy, array, obj, v77);
            }
          }

          ++v48;
        }

        while (v46 != v48);
        v62 = [v44 countByEnumeratingWithState:&v78 objects:v90 count:16];
        v46 = v62;
      }

      while (v62);
    }

    if (plansCopy)
    {
      firstObject = [obj firstObject];
      accountUUID = [firstObject accountUUID];
      uUIDString = [accountUUID UUIDString];
      *plansCopy = [v77 objectForKey:uUIDString];
    }

    if (channelCopy)
    {
      v66 = array;
      *channelCopy = array;
    }

    v67 = [v77 copy];
  }

  else
  {
    v67 = 0;
  }

  return v67;
}

- (id)fakeSenderIdentities
{
  v33[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v1 = [standardUserDefaults persistentDomainForName:*MEMORY[0x1E696A400]];
    v31 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"5E4B060A-7996-47D2-804E-0833378D1311"];
    v2 = [v1 objectForKey:@"CNGeminiFakeSubscription1Label"];
    v3 = OUTLINED_FUNCTION_7_0(v2, @"Home");

    v4 = [v1 objectForKey:@"CNGeminiFakeSubscription1Number"];
    v5 = OUTLINED_FUNCTION_7_0(v4, @"+14104844321");

    v6 = [v1 objectForKey:@"CNGeminiFakeSubscription2Service"];
    v7 = OUTLINED_FUNCTION_7_0(v6, @"Subspace Relay");

    v8 = [v3 rangeOfComposedCharacterSequenceAtIndex:0];
    v30 = [v3 substringToIndex:v8 + v9];
    v29 = [objc_alloc(off_1ED5E70D0[0]()) initWithType:2 value:v5];

    v10 = objc_alloc(_MergedGlobals[0]());
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v10 initWithUUID:uUID accountUUID:v31 localizedName:v3 localizedShortName:v30 localizedServiceName:v7 handle:v29];

    v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"ACE7E1F1-744F-41A5-856F-D8822258B2E1"];
    v14 = [v1 objectForKey:@"CNGeminiFakeSubscription2Label"];
    v15 = OUTLINED_FUNCTION_7_0(v14, @"Work");

    v16 = [v1 objectForKey:@"CNGeminiFakeSubscription2Number"];
    v17 = OUTLINED_FUNCTION_7_0(v16, @"+14089740000");

    v18 = [v1 objectForKey:@"CNGeminiFakeSubscription2Service"];
    v19 = OUTLINED_FUNCTION_7_0(v18, @"Quantum Entanglement");

    v20 = [v15 rangeOfComposedCharacterSequenceAtIndex:0];
    v22 = [v15 substringToIndex:v20 + v21];
    v23 = [objc_alloc(off_1ED5E70D0[0]()) initWithType:2 value:v17];

    v24 = objc_alloc(_MergedGlobals[0]());
    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    v26 = [v24 initWithUUID:uUID2 accountUUID:v13 localizedName:v15 localizedShortName:v22 localizedServiceName:v19 handle:v23];

    v33[0] = v12;
    v33[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)contactForPhoneString:(void *)string contactStore:
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    stringCopy = string;
    v5 = a2;
    v6 = [[CNPhoneNumber alloc] initWithStringValue:v5];

    v7 = [CNContact predicateForContactsMatchingPhoneNumber:v6];

    descriptorForRequiredKeys = [objc_opt_class() descriptorForRequiredKeys];
    v13[0] = descriptorForRequiredKeys;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [stringCopy unifiedContactsMatchingPredicate:v7 keysToFetch:v9 error:0];

    lastObject = 0;
    if ([v10 count] == 1)
    {
      lastObject = [v10 lastObject];
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)channelForPreferredChannelString:(void *)string fromChannels:(int)channels synthesizeMissingChannels:
{
  v7 = a2;
  stringCopy = string;
  if (self)
  {
    if ([v7 hasPrefix:@"uuid:"])
    {
      v9 = [v7 substringFromIndex:5];
      self = [stringCopy objectForKey:v9];

      if (self)
      {
        goto LABEL_9;
      }
    }

    else
    {
      self = 0;
    }

    if (channels)
    {
      if ([CNGeminiChannel alloc])
      {
        OUTLINED_FUNCTION_4_0();
        self = [(CNGeminiChannel *)v10 initWithChannelIdentifier:v11 localizedLabel:v12 localizedBadgeLabel:v13 handle:v14 senderIdentity:v15 available:v16];
      }

      else
      {
        self = 0;
      }
    }
  }

LABEL_9:

  return self;
}

- (CNGeminiResult)geminiResultForChannel:(uint64_t)channel usage:(void *)usage availableChannels:(int)channels isUnknownNumber:
{
  v9 = a2;
  usageCopy = usage;
  if (self)
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v13 = [featureFlags isFeatureEnabled:14];

    v14 = [CNGeminiResult alloc];
    if ((v13 & channels) != 0)
    {
      channelCopy = 4;
    }

    else
    {
      channelCopy = channel;
    }

    v16 = [(CNGeminiResult *)v14 initWithChannel:v9 usage:channelCopy availableChannels:usageCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)bestChannelIdentifierForPhoneNumbers:(void *)numbers fromChannelIdentifiers:(void *)identifiers defaultChannelIdentifier:
{
  v7 = a2;
  numbersCopy = numbers;
  identifiersCopy = identifiers;
  if (self)
  {
    if ([v7 count] && (-[CNGeminiManager mostRecentChannelIdentifierForPhoneNumbers:fromChannelIdentifiers:](self, v7, numbersCopy), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v12;
      self = [MEMORY[0x1E69967A8] pairWithFirst:v12 second:&unk_1F0986FB8];
    }

    else if ((*(*MEMORY[0x1E6996568] + 16))())
    {
      v10 = 0;
      self = 0;
    }

    else
    {
      self = [MEMORY[0x1E69967A8] pairWithFirst:identifiersCopy second:&unk_1F0986FD0];
      v10 = 0;
    }
  }

  return self;
}

- (CNGeminiResult)geminiResultForHandle:(void *)handle contactStore:(uint64_t)store substituteDefaultForDangling:(uint64_t)dangling error:
{
  v39[1] = *MEMORY[0x1E69E9840];
  v9 = a2;
  handleCopy = handle;
  if (!self || (v11 = *MEMORY[0x1E6996568], [v9 stringValue], v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(v11) = (*(v11 + 16))(v11, v12), v12, (v11 & 1) != 0))
  {
    v13 = 0;
    goto LABEL_4;
  }

  if ([v9 handleType] && objc_msgSend(v9, "handleType") != -1)
  {
    v16 = 0;
  }

  else
  {
    if (handleCopy)
    {
      stringValue = [v9 stringValue];
      v18 = [(CNGeminiManager *)self contactForPhoneString:stringValue contactStore:handleCopy];

      if (v18)
      {
        v13 = [self geminiResultForContact:v18 substituteDefaultForDangling:store error:dangling];

        goto LABEL_4;
      }
    }

    stringValue2 = [v9 stringValue];
    v39[0] = stringValue2;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  }

  v37 = 0;
  v38 = 0;
  v19 = [(CNGeminiManager *)self channelsByIdentifierIncludingDanglingPlans:&v38 defaultChannel:&v37 availableChannels:?];
  v20 = v38;
  v21 = v37;
  allKeys = [v19 allKeys];
  channelIdentifier = [v20 channelIdentifier];
  v24 = [(CNGeminiManager *)self bestChannelIdentifierForPhoneNumbers:v16 fromChannelIdentifiers:allKeys defaultChannelIdentifier:channelIdentifier];

  first = [v24 first];
  v26 = [v19 objectForKey:first];

  if (!v26)
  {
    v26 = [CNGeminiChannel alloc];
    first2 = [v24 first];
    if (v26)
    {
      OUTLINED_FUNCTION_4_0();
      v26 = [(CNGeminiChannel *)v28 initWithChannelIdentifier:v29 localizedLabel:v30 localizedBadgeLabel:v31 handle:v32 senderIdentity:v33 available:v34];
    }
  }

  v35 = [CNGeminiResult alloc];
  second = [v24 second];
  v13 = -[CNGeminiResult initWithChannel:usage:availableChannels:](v35, "initWithChannel:usage:availableChannels:", v26, [second unsignedIntegerValue], v21);

LABEL_4:

  return v13;
}

- (id)mostRecentChannelIdentifierForPhoneNumbers:(void *)numbers fromChannelIdentifiers:
{
  v5 = a2;
  numbersCopy = numbers;
  if (self && [objc_opt_class() deviceSupportsGemini])
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    v8 = [(CNGeminiManager *)self channelIdentifierForMostRecentCallFromPhoneNumbers:v5 fromChannelIdentifiers:numbersCopy];
    if ([self dataSourceExclusions])
    {
      v9 = 0;
    }

    else
    {
      v9 = [(CNGeminiManager *)self channelIdentifierForMostRecentSMSFromPhoneNumbers:v5 fromChannelIdentifiers:numbersCopy];
    }

    [v7 _cn_addNonNilObject:v8];
    [v7 _cn_addNonNilObject:v9];
    [v7 sortUsingComparator:&__block_literal_global_195];
    firstObject = [v7 firstObject];
    first = [firstObject first];
  }

  else
  {
    first = 0;
  }

  return first;
}

- (id)channelForFavoritesEntry:(void *)entry includeDanglingChannels:(void *)channels error:(int)error
{
  channelsCopy = channels;
  v6 = channelsCopy;
  if (entry && (v7 = *MEMORY[0x1E6996568], [channelsCopy actionChannel], v8 = objc_claimAutoreleasedReturnValue(), LOBYTE(v7) = (*(v7 + 16))(v7, v8), v8, (v7 & 1) == 0))
  {
    v11 = [(CNGeminiManager *)entry channelsByIdentifierIncludingDanglingPlans:error defaultChannel:0 availableChannels:0];
    actionChannel = [v6 actionChannel];
    v9 = [(CNGeminiManager *)entry channelForPreferredChannelString:actionChannel fromChannels:v11 synthesizeMissingChannels:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)bestSenderIdentityForFavoritesEntry:(id)entry error:(id *)error
{
  v4 = [CNGeminiManager channelForFavoritesEntry:entry includeDanglingChannels:0 error:?];
  senderIdentity = [v4 senderIdentity];

  return senderIdentity;
}

- (id)fetchedSubscriptionForSenderIdentity:(id)identity
{
  identityCopy = identity;
  if (identity)
  {
    v3 = a2;
    v4 = [(CNGeminiManager *)identityCopy fetchedSubscriptionsWithError:?];
    identityCopy = [(CNGeminiManager *)identityCopy coreTelephonyClient];
    handle = [v3 handle];

    value = [handle value];

    OUTLINED_FUNCTION_2();
    v19 = 3221225472;
    v20 = __56__CNGeminiManager_fetchedSubscriptionForSenderIdentity___block_invoke;
    v21 = &unk_1E7412AD8;
    v22 = identityCopy;
    v23 = value;
    v7 = value;
    v8 = identityCopy;
    v9 = [v4 _cn_firstObjectPassingTest:&v18];
    OUTLINED_FUNCTION_10_0(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20, v21, v22, v23);
  }

  return identityCopy;
}

- (BOOL)remapRecentCallsHavingChannelIdentifier:(uint64_t)identifier toChannelIdentifier:(void *)channelIdentifier error:(void *)error
{
  if (identifier)
  {
    v5 = getTUCallHistoryManagerClass[0];
    errorCopy = error;
    channelIdentifierCopy = channelIdentifier;
    v8 = objc_alloc_init(v5());
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:channelIdentifierCopy];

    v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:errorCopy];
    [v8 updateOutgoingLocalParticipantUUID:v10 forCallsWithOutgoingLocalParticipantUUID:v9];
  }

  return identifier != 0;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  v12 = __37__CNGeminiManager_addDelegate_queue___block_invoke;
  v13 = &unk_1E7412A60;
  selfCopy = self;
  v15 = queueCopy;
  v16 = delegateCopy;
  v9 = delegateCopy;
  v10 = queueCopy;
  dispatch_async(queue, block);
}

uint64_t __37__CNGeminiManager_addDelegate_queue___block_invoke(uint64_t a1)
{
  v2 = [(CNGeminiManager *)*(a1 + 32) callProviderManager];
  v3 = [(CNGeminiManager *)*(a1 + 32) coreTelephonyClient];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 40);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 48);
  if (*(a1 + 40))
  {
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = MEMORY[0x1E69E96A0];
  }

  return [v5 setObject:v7 forKey:v6];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  OUTLINED_FUNCTION_2();
  v8[1] = 3221225472;
  v8[2] = __34__CNGeminiManager_removeDelegate___block_invoke;
  v8[3] = &unk_1E74121B8;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_sync(queue, v8);
}

uint64_t __34__CNGeminiManager_removeDelegate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[5];
  }

  return [v1 removeObjectForKey:*(a1 + 40)];
}

- (id)fetchedSubscriptionsWithError:(id)error
{
  errorCopy = error;
  if (error)
  {
    coreTelephonyClient = [(CNGeminiManager *)error coreTelephonyClient];
    v5 = [coreTelephonyClient getSubscriptionInfoWithError:a2];

    errorCopy = [(CNGeminiManager *)errorCopy coreTelephonyClient];
    subscriptionsInUse = [v5 subscriptionsInUse];
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_12();
    v19 = __49__CNGeminiManager_fetchedSubscriptionsWithError___block_invoke;
    v20 = &unk_1E7412AB0;
    v21 = errorCopy;
    v7 = errorCopy;
    v8 = [subscriptionsInUse _cn_filter:v18];
    OUTLINED_FUNCTION_10_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18[0], v18[1], v19, v20, v21);
  }

  return errorCopy;
}

- (void)fetchedSenderIdentitiesWithError:(void *)a1 .cold.1(void *a1, uint64_t *a2)
{
  v5 = [(CNGeminiManager *)a1 callProviderManager];
  v3 = [v5 telephonyProvider];
  v4 = [v3 prioritizedSenderIdentities];
  *a2 = [v4 array];
}

- (void)geminiResultForContact:(void *)a1 substituteDefaultForDangling:(id *)a2 error:.cold.1(void *a1, id **a2)
{
  v4 = [CNGeminiChannel alloc];
  v5 = [a1 first];
  if (v4)
  {
    OUTLINED_FUNCTION_4_0();
    v13 = [(CNGeminiChannel *)v6 initWithChannelIdentifier:v7 localizedLabel:v8 localizedBadgeLabel:v9 handle:v10 senderIdentity:v11 available:v12];
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
}

- (void)channelIdentifierForMostRecentSMSFromPhoneNumbers:(void *)(a3 fromChannelIdentifiers:.cold.2(void *a1, void *a2, void (*a3)(void), uint64_t *a4)
{
  v6 = a3();

  if (v6)
  {
    v7 = [v6 labelID];
    if (v7)
    {
      v8 = MEMORY[0x1E69967A8];
      v9 = [v6 date];
      v10 = [v8 pairWithFirst:v7 second:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
}

@end