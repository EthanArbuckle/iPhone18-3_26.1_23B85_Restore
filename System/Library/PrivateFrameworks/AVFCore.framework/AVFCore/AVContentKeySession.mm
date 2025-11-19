@interface AVContentKeySession
+ (AVContentKeySession)contentKeySessionWithKeySystem:(AVContentKeySystem)keySystem;
+ (AVContentKeySession)contentKeySessionWithKeySystem:(AVContentKeySystem)keySystem storageDirectoryAtURL:(NSURL *)storageURL;
+ (AVContentKeySession)contentKeySessionWithLegacyWebKitCompatibilityModeAndKeySystem:(id)a3 storageDirectoryAtURL:(id)a4;
+ (NSArray)pendingExpiredSessionReportsWithAppIdentifier:(NSData *)appIdentifier storageDirectoryAtURL:(NSURL *)storageURL;
+ (void)initialize;
+ (void)removePendingExpiredSessionReports:(NSArray *)expiredSessionReports withAppIdentifier:(NSData *)appIdentifier storageDirectoryAtURL:(NSURL *)storageURL;
- (AVContentKeySession)init;
- (AVContentKeySession)initWithKeySystem:(id)a3 storageDirectoryAtURL:(id)a4 internal:(BOOL)a5;
- (AVContentKeySession)initWithKeySystem:(id)a3 storageDirectoryAtURL:(id)a4 legacyWebKitCompatibilityMode:(BOOL)a5;
- (BOOL)_makeContentKeyGroupWithIDOut:(unint64_t *)a3 error:(id *)a4;
- (BOOL)_renewKeyWithIdentifier:(id)a3 encryptionMethod:(int)a4 initializationData:(id)a5 contentIdentifier:(id)a6 keyIDFromInitializationData:(id)a7 options:(id)a8 error:(id *)a9;
- (BOOL)isDefunct;
- (NSArray)contentKeyRecipients;
- (NSData)contentProtectionSessionIdentifier;
- (NSString)description;
- (OpaqueFigCPECryptor)copyCryptorForCryptKeyAttributes:(id)a3;
- (OpaqueFigCPECryptor)copyCryptorForInitializationData:(id)a3;
- (OpaqueFigCPECryptor)createCryptorIfNecessaryForInitializationData:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 error:(id *)a5;
- (id)_contentKeyRequestForCryptorUUID:(id)a3 cryptorKeyRequestID:(unint64_t)a4;
- (id)issueContentKeyRequestForInitializationData:(id)a3;
- (id)keyRequestByID:(unint64_t)a3;
- (id)makeContentKeyGroup;
- (int)setAppIdentifier:(id)a3;
- (unint64_t)_processContentKeyRequestWithIdentifier:(id)a3 encryptionMethod:(int)a4 supportedProtocolVersions:(id)a5 options:(id)a6 groupID:(unint64_t)a7 error:(id *)a8;
- (unint64_t)defaultGroupID;
- (void)_handleContentProtectionSessionIdentifierDidChange:(id)a3;
- (void)_handleExternalProtectionStateChangedCallbackForCryptKeyIdentifier:(id)a3;
- (void)_handleKeyResponseError:(id)a3 forCryptorUUID:(id)a4 andCryptorKeyRequestID:(unint64_t)a5;
- (void)_handleKeyResponseSuccessfullyProcessedForCryptorUUID:(id)a3 andCryptorKeyRequestID:(unint64_t)a4;
- (void)_handleSecureStopDidFinalizeRecordCallback;
- (void)_handleUpdateToPersistentKey:(id)a3 forKeyIdentifier:(id)a4;
- (void)_invokeDelegateCallbackWithBlock:(id)a3 synchronouslyWhenDelegateQueueIsNULL:(BOOL)a4;
- (void)_processContentKeyRequestWithIdentifier:(id)a3 initializationData:(id)a4 options:(id)a5 groupID:(unint64_t)a6;
- (void)_removeContentKeyRequestForCryptorUUID:(id)a3 cryptorKeyRequestID:(unint64_t)a4;
- (void)_setContentKeyRequest:(id)a3 forCryptorUUID:(id)a4 cryptorKeyRequestID:(unint64_t)a5;
- (void)_willDeallocOrFinalize;
- (void)addContentKeyRecipient:(id)recipient;
- (void)contentKeyRequestDidProduceContentKey:(id)a3;
- (void)contentKeyRequestDidSucceedWithBoss:(OpaqueFigContentKeyBoss *)a3 keySpecifier:(OpaqueFigContentKeySpecifier *)a4 requestID:(unint64_t)a5 cryptor:(OpaqueFigCPECryptor *)a6;
- (void)dealloc;
- (void)didProvideKeyRequestWithBoss:(OpaqueFigContentKeyBoss *)a3 keySpecifier:(OpaqueFigContentKeySpecifier *)a4 requestID:(unint64_t)a5 renewalRequest:(BOOL)a6 supportsOfflineKey:(BOOL)a7 originatingRecipientIdentifier:(id)a8;
- (void)expire;
- (void)externalProtectionStateChangedCallbackWithBoss:(OpaqueFigContentKeyBoss *)a3 keySpecifier:(OpaqueFigContentKeySpecifier *)a4;
- (void)invalidateAllPersistableContentKeysForApp:(NSData *)appIdentifier options:(NSDictionary *)options completionHandler:(void *)handler;
- (void)invalidatePersistableContentKey:(NSData *)persistableContentKeyData options:(NSDictionary *)options completionHandler:(void *)handler;
- (void)issueContentKeyRequest:(id)a3;
- (void)issueContentKeyRequestWithCustomURLHandler:(OpaqueFigCustomURLHandler *)a3 identifier:(id)a4 requestInfo:(__CFDictionary *)a5 requestID:(unint64_t)a6 providesPersistableKey:(BOOL)a7;
- (void)issueContentKeyRequests:(id)a3 forInitializationData:(id)a4;
- (void)issuePersistableContentKeyRequest:(id)a3;
- (void)issuePersistableContentKeyRequestForKeySpecifier:(OpaqueFigContentKeySpecifier *)a3 initializationData:(id)a4 keyIDFromInitializationData:(id)a5 contentIdentifier:(id)a6 requestID:(unint64_t)a7 preloadingRequestOptions:(id)a8 identifier:(id)a9 originatingRecipientIdentifier:(id)a10;
- (void)issueRenewableContentKeyRequest:(id)a3;
- (void)makeSecureTokenForExpirationDateOfPersistableContentKey:(NSData *)persistableContentKeyData completionHandler:(void *)handler;
- (void)processContentKeyRequestWithIdentifier:(id)identifier initializationData:(NSData *)initializationData options:(NSDictionary *)options;
- (void)removeContentKeyRecipient:(id)recipient;
- (void)removeResourcesForID:(unint64_t)a3;
- (void)renewExpiringResponseDataForContentKeyRequest:(AVContentKeyRequest *)contentKeyRequest;
- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateQueue;
- (void)trackRequest:(id)a3 byRequestID:(unint64_t)a4;
@end

@implementation AVContentKeySession

- (unint64_t)defaultGroupID
{
  v2 = [(AVContentKeySession *)self keySystem];
  if ([(NSString *)v2 isEqualToString:@"FairPlayStreaming"])
  {
    return 1;
  }

  if ([(NSString *)v2 isEqualToString:@"ClearKeySystem"])
  {
    return 2;
  }

  if ([(NSString *)v2 isEqualToString:@"AuthorizationTokenSystem"])
  {
    return 3;
  }

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p expired:%d>", NSStringFromClass(v4), self, self->_session->_isExpired];
}

- (void)_willDeallocOrFinalize
{
  session = self->_session;
  if (session)
  {
    if (session[7])
    {
      dispatch_release(session[7]);
      session = self->_session;
    }

    CFRelease(session);
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  [(AVContentKeySession *)self _willDeallocOrFinalize];
  session = self->_session;
  if (session)
  {
    if (dword_1EAEFCEB0)
    {
      v11 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      session = self->_session;
    }

    v5 = self->_session;
    delegateReadWriteQueue = v5->_delegateReadWriteQueue;
    if (delegateReadWriteQueue)
    {
      dispatch_release(delegateReadWriteQueue);
      v5 = self->_session;
    }

    delegateQueue = v5->_delegateQueue;
    if (delegateQueue)
    {
      dispatch_release(delegateQueue);
      v5 = self->_session;
    }

    contentKeyBoss = v5->_contentKeyBoss;
    if (contentKeyBoss)
    {
      CFRelease(contentKeyBoss);
      v5 = self->_session;
    }
  }

  v9.receiver = self;
  v9.super_class = AVContentKeySession;
  [(AVContentKeySession *)&v9 dealloc];
}

- (AVContentKeySession)init
{
  v4 = self;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(sel_contentKeySessionWithKeySystem_);
  v13 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Use %@ instead.", v8, v9, v10, v11, v12, v7), 0}];
  objc_exception_throw(v13);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (void)didProvideKeyRequestWithBoss:(OpaqueFigContentKeyBoss *)a3 keySpecifier:(OpaqueFigContentKeySpecifier *)a4 requestID:(unint64_t)a5 renewalRequest:(BOOL)a6 supportsOfflineKey:(BOOL)a7 originatingRecipientIdentifier:(id)a8
{
  v9 = a6;
  v46 = *MEMORY[0x1E69E9840];
  v14 = -[NSMutableDictionary objectForKeyedSubscript:](self->_session->keyRequestParamsByRequestID, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a5]);
  v15 = [v14 initializationData];
  v35 = [v14 contentIdentifier];
  v36 = [v14 keyIDFromInitializationData];
  v16 = [v14 options];
  if ([v14 identifier])
  {
    Identifier = [v14 identifier];
  }

  else
  {
    Identifier = FigContentKeySpecifierGetIdentifier();
  }

  v34 = Identifier;
  v38 = a3;
  if (v16)
  {
    v18 = [v16 mutableCopy];
  }

  else
  {
    v18 = [MEMORY[0x1E695DF90] dictionary];
  }

  v19 = v18;
  SupportedProtocolVersions = FigContentKeySpecifierGetSupportedProtocolVersions();
  v21 = [v19 objectForKeyedSubscript:@"ProtocolVersionsKey"];
  if (SupportedProtocolVersions && v21)
  {
    if (([SupportedProtocolVersions isEqualToArray:v21] & 1) == 0)
    {
      v44 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else if (SupportedProtocolVersions)
  {
    [v19 setObject:SupportedProtocolVersions forKeyedSubscript:@"ProtocolVersionsKey"];
  }

  LOBYTE(v32) = a7;
  LOBYTE(v31) = 0;
  LOBYTE(v30) = v9;
  v22 = [[AVContentKeyRequest alloc] initWithContentKeySession:self contentKeyBoss:v38 useContentKeyBoss:self->_session->_useContentKeyBoss keySpecifier:a4 initializationData:v15 keyIDFromInitializationData:v36 contentIdentifier:v35 isRenewalRequest:v30 requestID:a5 providesPersistableKey:v31 preloadingRequestOptions:v19 identifier:v34 supportsOfflineKey:v32 originatingRecipientIdentifier:a8];
  v23 = -[NSMutableDictionary objectForKeyedSubscript:](self->_session->keyRequestTrackerByRequestID, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a5]);
  if (v22)
  {
    v24 = v23;
    [(AVContentKeySession *)self trackRequest:v22 byRequestID:a5];
    if (v24)
    {
      [v24 addRequest:v22];
      if ([v24 haveAllRequestsBeenReceived])
      {
        v25 = [v24 requests];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v26 = [v25 countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v40;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v40 != v28)
              {
                objc_enumerationMutation(v25);
              }

              -[NSMutableDictionary removeObjectForKey:](self->_session->keyRequestTrackerByRequestID, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v39 + 1) + 8 * i), "_requestID")}]);
            }

            v27 = [v25 countByEnumeratingWithState:&v39 objects:v45 count:16];
          }

          while (v27);
        }

        [(AVContentKeySession *)self issueContentKeyRequests:v25 forInitializationData:v15];
      }
    }

    else if (v9)
    {
      [(AVContentKeySession *)self issueRenewableContentKeyRequest:v22];
    }

    else
    {
      [(AVContentKeySession *)self issueContentKeyRequest:v22];
    }
  }
}

- (void)removeResourcesForID:(unint64_t)a3
{
  -[NSMutableDictionary removeObjectForKey:](self->_session->keyRequestsByRequestID, "removeObjectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?]);
  keyRequestParamsByRequestID = self->_session->keyRequestParamsByRequestID;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];

  [(NSMutableDictionary *)keyRequestParamsByRequestID removeObjectForKey:v6];
}

- (void)contentKeyRequestDidSucceedWithBoss:(OpaqueFigContentKeyBoss *)a3 keySpecifier:(OpaqueFigContentKeySpecifier *)a4 requestID:(unint64_t)a5 cryptor:(OpaqueFigCPECryptor *)a6
{
  v10 = [(AVContentKeySession *)self keyRequestByID:a5];
  if (v10)
  {
    v11 = v10;
    [v10 _handleKeyResponseSuccessWithCryptor:a6];
    v12 = CFCopyDescription(a4);
    [(NSMapTable *)self->_session->contentKeyRequestByKeySpecifierMap setObject:v11 forKey:v12];
  }

  if (a6)
  {
    cryptorsByIdentifier = self->_session->cryptorsByIdentifier;
    Identifier = FigContentKeySpecifierGetIdentifier();
    CFDictionarySetValue(cryptorsByIdentifier, Identifier, a6);
  }

  [(AVContentKeySession *)self removeResourcesForID:a5];
}

- (void)externalProtectionStateChangedCallbackWithBoss:(OpaqueFigContentKeyBoss *)a3 keySpecifier:(OpaqueFigContentKeySpecifier *)a4
{
  v5 = CFCopyDescription(a4);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3052000000;
  v8[3] = __Block_byref_object_copy__41;
  v8[4] = __Block_byref_object_dispose__41;
  v8[5] = [(NSMapTable *)self->_session->contentKeyByKeySpecifierMap objectForKey:v5];
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3052000000;
  v7[3] = __Block_byref_object_copy__41;
  v7[4] = __Block_byref_object_dispose__41;
  v7[5] = [(NSMapTable *)self->_session->contentKeyRequestByKeySpecifierMap objectForKey:v5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__AVContentKeySession_externalProtectionStateChangedCallbackWithBoss_keySpecifier___block_invoke;
  v6[3] = &unk_1E7465FF8;
  v6[4] = self;
  v6[5] = v7;
  v6[6] = v8;
  [(AVContentKeySession *)self _invokeDelegateCallbackWithBlock:v6 synchronouslyWhenDelegateQueueIsNULL:1];

  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v8, 8);
}

void __83__AVContentKeySession_externalProtectionStateChangedCallbackWithBoss_keySpecifier___block_invoke(void *a1, void *a2)
{
  if (a2 && *(*(a1[5] + 8) + 40) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [a2 contentKeySession:a1[4] externalProtectionStatusDidChangeForContentKeyRequest:*(*(a1[5] + 8) + 40)];
  }

  v4 = a1[6];
  if (a2)
  {
    if (*(*(v4 + 8) + 40))
    {
      v5 = objc_opt_respondsToSelector();
      v4 = a1[6];
      if (v5)
      {
        [a2 contentKeySession:a1[4] externalProtectionStatusDidChangeForContentKey:*(*(v4 + 8) + 40)];
        v4 = a1[6];
      }
    }
  }

  v6 = *(*(a1[5] + 8) + 40);
}

- (AVContentKeySession)initWithKeySystem:(id)a3 storageDirectoryAtURL:(id)a4 legacyWebKitCompatibilityMode:(BOOL)a5
{
  v5 = a5;
  v46[30] = *MEMORY[0x1E69E9840];
  v46[0] = 1;
  v46[1] = avcks_didProvideKeyRequest;
  v46[2] = avcks_didProvideRenewalKeyRequest;
  v46[3] = avcks_didUpdatePersistableKey;
  v46[4] = avcks_contentKeyRequestDidSucceed;
  v46[5] = avcks_contentKeyRequestDidFail;
  v46[6] = avcks_externalProtectionStateChangedCallback;
  if (([a3 isEqualToString:@"FairPlayStreaming"] & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", @"ClearKeySystem") & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", @"AuthorizationTokenSystem") & 1) == 0)
  {
    v36 = self;
    v37 = MEMORY[0x1E695DF30];
    v38 = *MEMORY[0x1E695D940];
    v33 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"input keySystem is not supported", v39, v40, v41, v42, v43, v44);
    v34 = v37;
    v35 = v38;
LABEL_23:
    objc_exception_throw([v34 exceptionWithName:v35 reason:v33 userInfo:0]);
  }

  v10 = [a3 isEqualToString:@"FairPlayStreaming"];
  if (a4 && (v10 & 1) == 0)
  {
    v25 = self;
    v26 = MEMORY[0x1E695DF30];
    v27 = *MEMORY[0x1E695D940];
    v33 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"%@ does not support storage URL", v28, v29, v30, v31, v32, a3);
    v34 = v26;
    v35 = v27;
    goto LABEL_23;
  }

  v45.receiver = self;
  v45.super_class = AVContentKeySession;
  v11 = [(AVContentKeySession *)&v45 init];
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = objc_alloc_init(AVContentKeySessionInternal);
  v11->_session = v12;
  if (!v12)
  {
    goto LABEL_20;
  }

  CFRetain(v12);
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11->_session->_threadSafetyQ = dispatch_queue_create("com.apple.AVContentKeySession._threadSafetyQ", v13);
  v11->_session->_weakReference = [[AVWeakReference alloc] initWithReferencedObject:v11];
  v11->_session->_delegateStorage = objc_alloc_init(AVWeakReferencingDelegateStorage);
  v14 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  v16 = [objc_msgSend(v14 stringWithFormat:@"<%@: %p> contentkeysession delegate serialization queue", NSStringFromClass(v15), v11), "UTF8String"];
  v11->_session->_delegateReadWriteQueue = av_readwrite_dispatch_queue_create(v16);
  v11->_session->keyRequestsByRequestID = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11->_session->_storageURL = [a4 copy];
  v11->_session->_keySystem = a3;
  v11->_session->_contentKeyGroups = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11->_session->cryptorUUIDToContentKeyRequestMap = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v11->_session->keyRequestParamsByRequestID = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11->_session->keyRequestTrackerByRequestID = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11->_session->cryptorsByIdentifier = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11->_session->contentKeyRequestByKeySpecifierMap = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v11->_session->contentKeyByKeySpecifierMap = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v11->_session->_useContentKeyBoss = PKDIsContentKeyBossEnabled() != 0;
  v11->_session->recipientsByRecipientID = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  if (v5)
  {
    v11->_session->_useContentKeyBoss = 0;
  }

  if (v11->_session->_useContentKeyBoss)
  {
    if (FigContentKeyBossCreateRemote())
    {
      goto LABEL_20;
    }

    session = v11->_session;
    contentKeyBoss = session->_contentKeyBoss;
    threadSafetyQ = session->_threadSafetyQ;
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v20 || v20(contentKeyBoss, v46, v11, threadSafetyQ))
    {
      goto LABEL_20;
    }

    v21 = [(AVContentKeySession *)v11 defaultGroupID];
  }

  else
  {
    v21 = 0;
  }

  v11->_session->_defaultContentKeyGroup = [[AVContentKeyReportGroup alloc] initWithKeySystem:a3 keySession:v11 contentKeyBoss:v11->_session->_contentKeyBoss useContentKeyBoss:v11->_session->_useContentKeyBoss groupID:v21 storageDirectoryAtURL:a4];
  v22 = v11->_session;
  if (!v22->_defaultContentKeyGroup)
  {
LABEL_20:

    return 0;
  }

  [(NSMutableArray *)v22->_contentKeyGroups addObject:?];
LABEL_18:
  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v11;
}

+ (AVContentKeySession)contentKeySessionWithLegacyWebKitCompatibilityModeAndKeySystem:(id)a3 storageDirectoryAtURL:(id)a4
{
  v4 = [[AVContentKeySession alloc] initWithKeySystem:a3 storageDirectoryAtURL:a4 legacyWebKitCompatibilityMode:1];

  return v4;
}

+ (AVContentKeySession)contentKeySessionWithKeySystem:(AVContentKeySystem)keySystem
{
  v3 = [[AVContentKeySession alloc] initWithKeySystem:keySystem storageDirectoryAtURL:0 legacyWebKitCompatibilityMode:0];

  return v3;
}

+ (AVContentKeySession)contentKeySessionWithKeySystem:(AVContentKeySystem)keySystem storageDirectoryAtURL:(NSURL *)storageURL
{
  v4 = [[AVContentKeySession alloc] initWithKeySystem:keySystem storageDirectoryAtURL:storageURL legacyWebKitCompatibilityMode:0];

  return v4;
}

- (void)setDelegate:(id)delegate queue:(dispatch_queue_t)delegateQueue
{
  if (delegate && !delegateQueue)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"valid delegateQueue is required", 0, v4, v5, v6, v7, v13[0]), 0}];
    objc_exception_throw(v12);
  }

  delegateReadWriteQueue = self->_session->_delegateReadWriteQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__AVContentKeySession_setDelegate_queue___block_invoke;
  v13[3] = &unk_1E7460DF0;
  v13[4] = delegateQueue;
  v13[5] = self;
  av_readwrite_dispatch_queue_write_async(delegateReadWriteQueue, v13);
  [(AVWeakReferencingDelegateStorage *)self->_session->_delegateStorage setDelegate:delegate queue:delegateQueue];
}

void __41__AVContentKeySession_setDelegate_queue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 168);
  if (v2 != v3)
  {
    if (v3)
    {
      dispatch_release(*(*(*(a1 + 40) + 8) + 168));
      v2 = *(a1 + 32);
    }

    if (v2)
    {
      dispatch_retain(v2);
      v4 = *(a1 + 32);
    }

    else
    {
      v4 = 0;
    }

    *(*(*(a1 + 40) + 8) + 168) = v4;
  }
}

- (void)addContentKeyRecipient:(id)recipient
{
  v40 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (([recipient mayRequireContentKeysForMediaDataProcessing] & 1) == 0)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"cannot add this object as an AVContentKeyRecipient", v6, v7, v8, v9, v10, v22);
    v20 = MEMORY[0x1E695D930];
    goto LABEL_13;
  }

  threadSafetyQ = self->_session->_threadSafetyQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AVContentKeySession_addContentKeyRecipient___block_invoke;
  block[3] = &unk_1E7466020;
  block[4] = self;
  block[5] = recipient;
  block[6] = &v36;
  block[7] = &v32;
  block[8] = &v24;
  block[9] = &v28;
  dispatch_sync(threadSafetyQ, block);
  if (*(v37 + 24) == 1)
  {
    v18 = MEMORY[0x1E695DF30];
    v21 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Content key session is already expired or failed", v12, v13, v14, v15, v16, v22);
LABEL_12:
    v19 = v21;
    v20 = MEMORY[0x1E695D940];
LABEL_13:
    objc_exception_throw([v18 exceptionWithName:*v20 reason:v19 userInfo:0]);
  }

  if (*(v33 + 24) == 1)
  {
    v18 = MEMORY[0x1E695DF30];
    v21 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Can't add object as an AVContentKeyRecipient after it has established its own content protection", v12, v13, v14, v15, v16, v22);
    goto LABEL_12;
  }

  if (*(v29 + 24) == 1)
  {
    v18 = MEMORY[0x1E695DF30];
    v21 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Content key recipient cannot be associated with more than one instance of AVContentKeySession", v12, v13, v14, v15, v16, v22);
    goto LABEL_12;
  }

  if (*(v25 + 6))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
}

uint64_t __46__AVContentKeySession_addContentKeyRecipient___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 64);
  if (!v2)
  {
    *(*(*(a1 + 32) + 8) + 64) = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v2 = *(*(*(a1 + 32) + 8) + 64);
  }

  result = [v2 containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    if (*(*(*(a1 + 32) + 8) + 40) == 1)
    {
      v4 = *(a1 + 48);
LABEL_6:
      *(*(v4 + 8) + 24) = 1;
      return result;
    }

    if (objc_opt_respondsToSelector())
    {
      result = [*(a1 + 40) _attachedToExternalContentKeySession];
      if (result)
      {
        v4 = *(a1 + 56);
        goto LABEL_6;
      }
    }

    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [*(a1 + 40) _attachToContentKeySession:? contentKeyBoss:? failedSinceAlreadyAttachedToAnotherSession:?];
      *(*(*(a1 + 64) + 8) + 24) = result;
    }

    if (!*(*(*(a1 + 64) + 8) + 24))
    {
      [*(*(*(a1 + 32) + 8) + 64) addObject:*(a1 + 40)];
      result = objc_opt_respondsToSelector();
      if (result)
      {
        result = [*(*(*(a1 + 32) + 8) + 152) setObject:*(a1 + 40) forKey:{objc_msgSend(*(a1 + 40), "uniqueIdentifier")}];
      }

      if (dword_1EAEFCEB0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        return fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return result;
}

- (void)removeContentKeyRecipient:(id)recipient
{
  threadSafetyQ = self->_session->_threadSafetyQ;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__AVContentKeySession_removeContentKeyRecipient___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = recipient;
  v4[5] = self;
  dispatch_sync(threadSafetyQ, v4);
}

uint64_t __49__AVContentKeySession_removeContentKeyRecipient___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [*(a1 + 32) _attachToContentKeySession:0 contentKeyBoss:0 failedSinceAlreadyAttachedToAnotherSession:0];
  }

  if (*(a1 + 32))
  {
    result = [*(*(*(a1 + 40) + 8) + 64) removeObject:?];
  }

  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (NSArray)contentKeyRecipients
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__41;
  v10 = __Block_byref_object_dispose__41;
  v11 = 0;
  threadSafetyQ = self->_session->_threadSafetyQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVContentKeySession_contentKeyRecipients__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(threadSafetyQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__AVContentKeySession_contentKeyRecipients__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 64) allObjects];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)expire
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__41;
  v36 = __Block_byref_object_dispose__41;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = __Block_byref_object_copy__41;
  v30 = __Block_byref_object_dispose__41;
  v31 = 0;
  threadSafetyQ = self->_session->_threadSafetyQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__AVContentKeySession_expire__block_invoke;
  block[3] = &unk_1E7462B60;
  block[4] = self;
  block[5] = &v32;
  block[6] = &v26;
  dispatch_sync(threadSafetyQ, block);
  v4 = v27[5];
  if (v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v39 count:16];
    if (v5)
    {
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v21 + 1) + 8 * i) expire];
        }

        v5 = [v4 countByEnumeratingWithState:&v21 objects:v39 count:16];
      }

      while (v5);
    }
  }

  if (v33[5])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v33[5];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v38 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * j);
          if (dword_1EAEFCEB0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [v12 expire];
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v38 count:16];
      }

      while (v9);
    }
  }

  if (dword_1EAEFCEB0)
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

uint64_t __29__AVContentKeySession_expire__block_invoke(uint64_t result)
{
  v2 = *(*(result + 32) + 8);
  if ((*(v2 + 40) & 1) == 0)
  {
    v3 = result;
    *(v2 + 40) = 1;
    *(*(*(result + 40) + 8) + 40) = [*(*(*(result + 32) + 8) + 64) allObjects];
    [*(*(*(v3 + 32) + 8) + 80) removeAllObjects];
    *(*(*(v3 + 48) + 8) + 40) = [*(*(*(v3 + 32) + 8) + 88) copy];
    v4 = *(*(*(v3 + 32) + 8) + 88);

    return [v4 removeAllObjects];
  }

  return result;
}

- (NSData)contentProtectionSessionIdentifier
{
  session = self->_session;
  if (session->_contentKeyBoss)
  {
    threadSafetyQ = session->_threadSafetyQ;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__AVContentKeySession_contentProtectionSessionIdentifier__block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = self;
    dispatch_sync(threadSafetyQ, block);
    return self->_session->_protectorSessionIdentifier;
  }

  else
  {
    defaultContentKeyGroup = session->_defaultContentKeyGroup;

    return [(AVContentKeyReportGroup *)defaultContentKeyGroup contentProtectionSessionIdentifier];
  }
}

void *__57__AVContentKeySession_contentProtectionSessionIdentifier__block_invoke(void *result)
{
  v2[2] = *MEMORY[0x1E69E9840];
  if (!*(*(result[4] + 8) + 144))
  {
    v1 = result;
    v2[0] = 0;
    v2[1] = 0;
    [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    result = [MEMORY[0x1E695DEF0] dataWithBytes:v2 length:16];
    *(*(v1[4] + 8) + 144) = result;
  }

  return result;
}

- (void)_processContentKeyRequestWithIdentifier:(id)a3 initializationData:(id)a4 options:(id)a5 groupID:(unint64_t)a6
{
  session = self->_session;
  if (session->_contentKeyBoss)
  {
    threadSafetyQ = session->_threadSafetyQ;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__AVContentKeySession__processContentKeyRequestWithIdentifier_initializationData_options_groupID___block_invoke;
    block[3] = &unk_1E7466048;
    block[4] = self;
    block[5] = a3;
    block[7] = a5;
    block[8] = a6;
    block[6] = a4;
    dispatch_async(threadSafetyQ, block);
  }

  else
  {
    defaultContentKeyGroup = session->_defaultContentKeyGroup;

    [(AVContentKeyReportGroup *)defaultContentKeyGroup processContentKeyRequestWithIdentifier:a3 initializationData:a4 options:a5, a6];
  }
}

- (void)processContentKeyRequestWithIdentifier:(id)identifier initializationData:(NSData *)initializationData options:(NSDictionary *)options
{
  v9 = [(AVContentKeySession *)self defaultGroupID];

  [(AVContentKeySession *)self _processContentKeyRequestWithIdentifier:identifier initializationData:initializationData options:options groupID:v9];
}

- (void)renewExpiringResponseDataForContentKeyRequest:(AVContentKeyRequest *)contentKeyRequest
{
  v40[1] = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__41;
  v31 = __Block_byref_object_dispose__41;
  v32 = 0;
  if (!contentKeyRequest)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"valid contentKeyRequest is required", v3, v4, v5, v6, v7, v24);
    goto LABEL_24;
  }

  if (![(NSString *)[(AVContentKeySession *)self keySystem] isEqualToString:@"FairPlayStreaming"])
  {
    v16 = MEMORY[0x1E695DF30];
    v18 = [(AVContentKeySession *)self keySystem];
    v17 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"%@ does not support key renewal", v19, v20, v21, v22, v23, v18);
LABEL_24:
    objc_exception_throw([v16 exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0]);
  }

  if (![(AVContentKeySession *)self delegate])
  {
    v39 = *MEMORY[0x1E695E618];
    v40[0] = @"Cannot renew content key request since there's no delegate set on the content key session";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    goto LABEL_13;
  }

  if (self->_session->_isExpired)
  {
    v37 = *MEMORY[0x1E695E618];
    v38 = @"Cannot renew content key request using an expired content key session";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
LABEL_13:
    v14 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, v11);
    v28[5] = v14;
    goto LABEL_14;
  }

  if ([(AVContentKeyRequest *)contentKeyRequest status]>= AVContentKeyRequestStatusCancelled)
  {
    v35 = *MEMORY[0x1E695E618];
    v36 = @"Cannot renew content key request that was previously cancelled or failed";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    goto LABEL_13;
  }

  if ([(AVContentKeyRequest *)contentKeyRequest status]== AVContentKeyRequestStatusRequestingResponse)
  {
    v33 = *MEMORY[0x1E695E618];
    v34 = @"Cannot renew while content key request is waiting for a response";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    goto LABEL_13;
  }

  session = self->_session;
  if (session->_contentKeyBoss)
  {
    threadSafetyQ = session->_threadSafetyQ;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__AVContentKeySession_renewExpiringResponseDataForContentKeyRequest___block_invoke;
    block[3] = &unk_1E7460F30;
    block[4] = self;
    block[5] = contentKeyRequest;
    block[6] = &v27;
    dispatch_sync(threadSafetyQ, block);
  }

  else
  {
    if (![(AVContentKeyRequest *)contentKeyRequest _prepareForKeyRenewalReturningError:v28 + 5])
    {
      goto LABEL_14;
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69__AVContentKeySession_renewExpiringResponseDataForContentKeyRequest___block_invoke_2;
    v25[3] = &unk_1E7465FA8;
    v25[4] = self;
    v25[5] = contentKeyRequest;
    [(AVContentKeySession *)self _invokeDelegateCallbackWithBlock:v25 synchronouslyWhenDelegateQueueIsNULL:1];
  }

  [(AVContentKeyRequest *)contentKeyRequest _setStatus:2];
LABEL_14:
  if (v28[5])
  {
    [(AVContentKeyRequest *)contentKeyRequest _setError:?];
  }

  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  _Block_object_dispose(&v27, 8);
}

uint64_t __69__AVContentKeySession_renewExpiringResponseDataForContentKeyRequest___block_invoke_2(uint64_t result, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      if (dword_1EAEFCEB0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return [a2 contentKeySession:*(v3 + 32) didProvideRenewingContentKeyRequest:{*(v3 + 40), v5, v6}];
    }
  }

  return result;
}

- (void)makeSecureTokenForExpirationDateOfPersistableContentKey:(NSData *)persistableContentKeyData completionHandler:(void *)handler
{
  v30[24] = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = @"valid completion handler is required";
    goto LABEL_21;
  }

  if (!persistableContentKeyData)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = @"valid persistableContentKeyData is required";
    goto LABEL_21;
  }

  if (![(NSString *)self->_session->_keySystem isEqualToString:@"FairPlayStreaming"])
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    keySystem = self->_session->_keySystem;
    v22 = @"%@ does not support this operation";
LABEL_21:
    v23 = [v20 exceptionWithName:v21 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v22, handler, v4, v5, v6, v7, keySystem), 0}];
    objc_exception_throw(v23);
  }

  if (!self->_session->_contentKeyBoss)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __97__AVContentKeySession_makeSecureTokenForExpirationDateOfPersistableContentKey_completionHandler___block_invoke_2;
    v25[3] = &unk_1E74621B8;
    v25[4] = persistableContentKeyData;
    v25[5] = self;
    v25[6] = handler;
    v18 = v25;
    goto LABEL_17;
  }

  cf = 0;
  v30[0] = 0;
  v12 = FigContentKeySecureTokenRequestParamsCreate();
  if (!v12)
  {
    contentKeyBoss = self->_session->_contentKeyBoss;
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (!v14)
    {
      v15 = -12782;
      goto LABEL_10;
    }

    v12 = v14(contentKeyBoss, cf, v30);
  }

  v15 = v12;
LABEL_10:
  if (v15)
  {
    v16 = AVLocalizedErrorWithUnderlyingOSStatusAndUnderlyingError(v15, 0, 0, 1);
  }

  else
  {
    v16 = 0;
  }

  if (dword_1EAEFCEB0)
  {
    v28 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__AVContentKeySession_makeSecureTokenForExpirationDateOfPersistableContentKey_completionHandler___block_invoke;
  block[3] = &unk_1E7463CC8;
  block[5] = v16;
  block[6] = handler;
  block[4] = v30[0];
  v18 = block;
LABEL_17:
  dispatch_async(global_queue, v18);
}

void __97__AVContentKeySession_makeSecureTokenForExpirationDateOfPersistableContentKey_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)invalidatePersistableContentKey:(NSData *)persistableContentKeyData options:(NSDictionary *)options completionHandler:(void *)handler
{
  v35[24] = *MEMORY[0x1E69E9840];
  v9 = [(NSDictionary *)options objectForKeyedSubscript:@"ServerChallenge"];
  if (!handler)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = @"valid completion handler is required";
    goto LABEL_22;
  }

  if (!persistableContentKeyData)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = @"valid persistableContentKeyData is required";
    goto LABEL_22;
  }

  v15 = v9;
  if (![(NSString *)self->_session->_keySystem isEqualToString:@"FairPlayStreaming"])
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    keySystem = self->_session->_keySystem;
    v26 = @"%@ does not support this operation";
LABEL_22:
    v27 = [v24 exceptionWithName:v25 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v26, v10, v11, v12, v13, v14, keySystem), 0}];
    objc_exception_throw(v27);
  }

  [AVContentKeyRequest _validateServerChallenge:v15];
  if (!self->_session->_contentKeyBoss)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __81__AVContentKeySession_invalidatePersistableContentKey_options_completionHandler___block_invoke_2;
    v29[3] = &unk_1E7461108;
    v29[4] = persistableContentKeyData;
    v29[5] = self;
    v29[6] = v15;
    v29[7] = handler;
    v22 = v29;
    goto LABEL_18;
  }

  cf = 0;
  v35[0] = 0;
  v33 = 0;
  v16 = PKDPersistentKeyIsForCTRModeDecryption();
  if (!v16)
  {
    v16 = FigContentKeySecureTokenRequestParamsCreate();
    if (!v16)
    {
      contentKeyBoss = self->_session->_contentKeyBoss;
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (!v18)
      {
        v19 = -12782;
        goto LABEL_11;
      }

      v16 = v18(contentKeyBoss, cf, v35);
    }
  }

  v19 = v16;
LABEL_11:
  if (v19)
  {
    v20 = AVLocalizedErrorWithUnderlyingOSStatusAndUnderlyingError(v19, 0, 0, 1);
  }

  else
  {
    v20 = 0;
  }

  if (dword_1EAEFCEB0)
  {
    v32 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__AVContentKeySession_invalidatePersistableContentKey_options_completionHandler___block_invoke;
  block[3] = &unk_1E7463CC8;
  block[5] = v20;
  block[6] = handler;
  block[4] = v35[0];
  v22 = block;
LABEL_18:
  dispatch_async(global_queue, v22);
}

void __81__AVContentKeySession_invalidatePersistableContentKey_options_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)invalidateAllPersistableContentKeysForApp:(NSData *)appIdentifier options:(NSDictionary *)options completionHandler:(void *)handler
{
  v37[24] = *MEMORY[0x1E69E9840];
  v10 = [(NSDictionary *)options objectForKeyedSubscript:@"ProtocolVersionsKey"];
  v11 = [(NSDictionary *)options objectForKeyedSubscript:@"HLSMethodKey"];
  v12 = [(NSDictionary *)options objectForKeyedSubscript:@"ServerChallenge"];
  if (!handler)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"valid completion handler is required";
    goto LABEL_21;
  }

  if (!appIdentifier)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"valid application certificate is required";
    goto LABEL_21;
  }

  v18 = v12;
  if (![(NSString *)self->_session->_keySystem isEqualToString:@"FairPlayStreaming"])
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    keySystem = self->_session->_keySystem;
    v29 = @"%@ does not support this operation";
LABEL_21:
    v30 = [v27 exceptionWithName:v28 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v29, v13, v14, v15, v16, v17, keySystem), 0}];
    objc_exception_throw(v30);
  }

  [AVContentKeyRequest _validateProtocolVersionList:v10];
  [AVContentKeyRequest _validateHLSEncryptionMethod:v11];
  [AVContentKeyRequest _validateServerChallenge:v18];
  if (!self->_session->_contentKeyBoss)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __91__AVContentKeySession_invalidateAllPersistableContentKeysForApp_options_completionHandler___block_invoke_2;
    v32[3] = &unk_1E7466070;
    v32[4] = self;
    v32[5] = v11;
    v32[6] = v10;
    v32[7] = appIdentifier;
    v32[8] = v18;
    v32[9] = handler;
    v25 = v32;
    goto LABEL_17;
  }

  cf = 0;
  v37[0] = 0;
  v19 = FigContentKeySecureTokenRequestParamsCreate();
  if (!v19)
  {
    contentKeyBoss = self->_session->_contentKeyBoss;
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 96);
    if (!v21)
    {
      v22 = -12782;
      goto LABEL_10;
    }

    v19 = v21(contentKeyBoss, cf, v37);
  }

  v22 = v19;
LABEL_10:
  if (v22)
  {
    v23 = AVLocalizedErrorWithUnderlyingOSStatusAndUnderlyingError(v22, 0, 0, 1);
  }

  else
  {
    v23 = 0;
  }

  if (dword_1EAEFCEB0)
  {
    v35 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__AVContentKeySession_invalidateAllPersistableContentKeysForApp_options_completionHandler___block_invoke;
  block[3] = &unk_1E7463CC8;
  block[5] = v23;
  block[6] = handler;
  block[4] = v37[0];
  v25 = block;
LABEL_17:
  dispatch_async(global_queue, v25);
}

void __91__AVContentKeySession_invalidateAllPersistableContentKeysForApp_options_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

+ (NSArray)pendingExpiredSessionReportsWithAppIdentifier:(NSData *)appIdentifier storageDirectoryAtURL:(NSURL *)storageURL
{
  cf[24] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (!appIdentifier)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = @"valid appIdentifier is required";
    goto LABEL_19;
  }

  if (!storageURL)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = @"valid storageURL is required";
LABEL_19:
    v16 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, v15, storageURL, v4, v5, v6, v7, v17), 0}];
    objc_exception_throw(v16);
  }

  v8 = [AVContentKeySession copyDefaultSecureStopManagerForAppIdentifier:"copyDefaultSecureStopManagerForAppIdentifier:storageDirectoryAtURL:" storageDirectoryAtURL:?];
  if (!v8)
  {
    +[AVContentKeySession(AVContentKeySessionPendingExpiredSessionReports) pendingExpiredSessionReportsWithAppIdentifier:storageDirectoryAtURL:];
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v9 || v9(v8, cf))
  {
    goto LABEL_9;
  }

  v10 = [cf[0] allValues];
  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_10:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (!v10)
  {
    return [MEMORY[0x1E695DEC8] array];
  }

  return v10;
}

+ (void)removePendingExpiredSessionReports:(NSArray *)expiredSessionReports withAppIdentifier:(NSData *)appIdentifier storageDirectoryAtURL:(NSURL *)storageURL
{
  v21[29] = *MEMORY[0x1E69E9840];
  if (!appIdentifier)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"valid appIdentifier is required";
    goto LABEL_20;
  }

  if (!storageURL)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"valid storageURL is required";
LABEL_20:
    v19 = [v16 exceptionWithName:v17 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, v18, appIdentifier, storageURL, v5, v6, v7, v20), 0}];
    objc_exception_throw(v19);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __147__AVContentKeySession_AVContentKeySessionPendingExpiredSessionReports__removePendingExpiredSessionReports_withAppIdentifier_storageDirectoryAtURL___block_invoke;
  v21[3] = &unk_1E7466098;
  v21[4] = a1;
  v21[5] = a2;
  [(NSArray *)expiredSessionReports enumerateObjectsUsingBlock:v21];
  if (![(NSArray *)expiredSessionReports count])
  {
    if (!dword_1EAEFCEB0)
    {
      return;
    }

    v12 = 0;
LABEL_14:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (!v12)
    {
      return;
    }

    goto LABEL_15;
  }

  v11 = [AVContentKeySession copyDefaultSecureStopManagerForAppIdentifier:appIdentifier storageDirectoryAtURL:storageURL];
  if (!v11)
  {
    +[AVContentKeySession(AVContentKeySessionPendingExpiredSessionReports) removePendingExpiredSessionReports:withAppIdentifier:storageDirectoryAtURL:];
    return;
  }

  v12 = v11;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v13)
  {
    if (!v13(v12, expiredSessionReports) && dword_1EAEFCEB0 != 0)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  CFRelease(v12);
}

uint64_t __147__AVContentKeySession_AVContentKeySessionPendingExpiredSessionReports__removePendingExpiredSessionReports_withAppIdentifier_storageDirectoryAtURL___block_invoke(uint64_t a1)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(*(a1 + 32) userInfo:{*(a1 + 40), @"expiredSessionReports should be an array of NSData objects", v3, v4, v5, v6, v7, v9), 0}];
    objc_exception_throw(v8);
  }

  return result;
}

- (void)_handleSecureStopDidFinalizeRecordCallback
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __114__AVContentKeySession_AVContentKeySessionPendingExpiredSessionReports___handleSecureStopDidFinalizeRecordCallback__block_invoke;
  v2[3] = &unk_1E74660C0;
  v2[4] = self;
  [(AVContentKeySession *)self _invokeDelegateCallbackWithBlock:v2 synchronouslyWhenDelegateQueueIsNULL:0];
}

uint64_t __114__AVContentKeySession_AVContentKeySessionPendingExpiredSessionReports___handleSecureStopDidFinalizeRecordCallback__block_invoke(uint64_t result, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      if (dword_1EAEFCEB0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return [a2 contentKeySessionDidGenerateExpiredSessionReport:{*(v3 + 32), v5, v6}];
    }
  }

  return result;
}

- (void)_handleExternalProtectionStateChangedCallbackForCryptKeyIdentifier:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __139__AVContentKeySession_AVContentKeySessionPendingExpiredSessionReports___handleExternalProtectionStateChangedCallbackForCryptKeyIdentifier___block_invoke;
  v3[3] = &unk_1E7465FA8;
  v3[4] = self;
  v3[5] = a3;
  [(AVContentKeySession *)self _invokeDelegateCallbackWithBlock:v3 synchronouslyWhenDelegateQueueIsNULL:1];
}

uint64_t __139__AVContentKeySession_AVContentKeySessionPendingExpiredSessionReports___handleExternalProtectionStateChangedCallbackForCryptKeyIdentifier___block_invoke(uint64_t a1, void *a2)
{
  result = [*(*(*(a1 + 32) + 8) + 96) objectForKey:*(a1 + 40)];
  if (a2)
  {
    v5 = result;
    if (result)
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        v6 = *(a1 + 32);

        return [a2 contentKeySession:v6 externalProtectionStatusDidChangeForContentKeyRequest:v5];
      }
    }
  }

  return result;
}

- (void)_setContentKeyRequest:(id)a3 forCryptorUUID:(id)a4 cryptorKeyRequestID:(unint64_t)a5
{
  threadSafetyQ = self->_session->_threadSafetyQ;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __117__AVContentKeySession_AVContentKeySessionPrivateUtilities___setContentKeyRequest_forCryptorUUID_cryptorKeyRequestID___block_invoke;
  v6[3] = &unk_1E7462A28;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = self;
  v6[7] = a5;
  dispatch_async(threadSafetyQ, v6);
}

void *__117__AVContentKeySession_AVContentKeySessionPrivateUtilities___setContentKeyRequest_forCryptorUUID_cryptorKeyRequestID___block_invoke(void *result)
{
  if (result[4])
  {
    v1 = result;
    v2 = result[5];
    if (v2)
    {
      v3 = [AVContentKeySession _uniqueIDForCyptorUUID:v2 cryptorKeyRequestID:result[7]];
      v4 = *(*(v1[6] + 8) + 80);
      v5 = v1[4];

      return [v4 setObject:v5 forKey:v3];
    }
  }

  return result;
}

- (id)_contentKeyRequestForCryptorUUID:(id)a3 cryptorKeyRequestID:(unint64_t)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__41;
  v12 = __Block_byref_object_dispose__41;
  v13 = 0;
  threadSafetyQ = self->_session->_threadSafetyQ;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __113__AVContentKeySession_AVContentKeySessionPrivateUtilities___contentKeyRequestForCryptorUUID_cryptorKeyRequestID___block_invoke;
  v7[3] = &unk_1E74658D0;
  v7[6] = &v8;
  v7[7] = a4;
  v7[4] = a3;
  v7[5] = self;
  dispatch_sync(threadSafetyQ, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void *__113__AVContentKeySession_AVContentKeySessionPrivateUtilities___contentKeyRequestForCryptorUUID_cryptorKeyRequestID___block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = result;
    result = [*(*(result[5] + 8) + 80) objectForKey:{+[AVContentKeySession _uniqueIDForCyptorUUID:cryptorKeyRequestID:](AVContentKeySession, "_uniqueIDForCyptorUUID:cryptorKeyRequestID:", v1, result[7])}];
    *(*(v2[6] + 8) + 40) = result;
  }

  return result;
}

- (void)_removeContentKeyRequestForCryptorUUID:(id)a3 cryptorKeyRequestID:(unint64_t)a4
{
  threadSafetyQ = self->_session->_threadSafetyQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__AVContentKeySession_AVContentKeySessionPrivateUtilities___removeContentKeyRequestForCryptorUUID_cryptorKeyRequestID___block_invoke;
  block[3] = &unk_1E7460FF0;
  block[5] = self;
  block[6] = a4;
  block[4] = a3;
  dispatch_async(threadSafetyQ, block);
}

uint64_t __119__AVContentKeySession_AVContentKeySessionPrivateUtilities___removeContentKeyRequestForCryptorUUID_cryptorKeyRequestID___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = result;
    v3 = [AVContentKeySession _uniqueIDForCyptorUUID:v1 cryptorKeyRequestID:*(result + 48)];
    v4 = *(*(*(v2 + 40) + 8) + 80);

    return [v4 removeObjectForKey:v3];
  }

  return result;
}

- (void)_invokeDelegateCallbackWithBlock:(id)a3 synchronouslyWhenDelegateQueueIsNULL:(BOOL)a4
{
  v4 = a4;
  session = self->_session;
  delegateStorage = session->_delegateStorage;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__41;
  v18 = __Block_byref_object_dispose__41;
  v19 = 0;
  delegateReadWriteQueue = session->_delegateReadWriteQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__AVContentKeySession_AVContentKeySessionPrivateUtilities___invokeDelegateCallbackWithBlock_synchronouslyWhenDelegateQueueIsNULL___block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v14;
  av_readwrite_dispatch_queue_read(delegateReadWriteQueue, block);
  global_queue = v15[5];
  if (!v4)
  {
    if (!global_queue)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __130__AVContentKeySession_AVContentKeySessionPrivateUtilities___invokeDelegateCallbackWithBlock_synchronouslyWhenDelegateQueueIsNULL___block_invoke_2;
      v12[3] = &unk_1E74626C8;
      v12[4] = delegateStorage;
      v12[5] = a3;
      v10 = v12;
      goto LABEL_7;
    }

LABEL_5:
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __130__AVContentKeySession_AVContentKeySessionPrivateUtilities___invokeDelegateCallbackWithBlock_synchronouslyWhenDelegateQueueIsNULL___block_invoke_3;
    v11[3] = &unk_1E7461C50;
    v11[4] = delegateStorage;
    v11[5] = a3;
    v11[6] = &v14;
    v10 = v11;
LABEL_7:
    dispatch_async(global_queue, v10);
    goto LABEL_8;
  }

  if (global_queue)
  {
    goto LABEL_5;
  }

  [(AVWeakReferencingDelegateStorage *)delegateStorage invokeDelegateCallbackWithBlock:a3 synchronouslyIfDelegateQueueIsQueue:0];
LABEL_8:
  _Block_object_dispose(&v14, 8);
}

void __130__AVContentKeySession_AVContentKeySessionPrivateUtilities___invokeDelegateCallbackWithBlock_synchronouslyWhenDelegateQueueIsNULL___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 32) + 8) + 168);
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (v1)
  {
    dispatch_retain(v1);
  }
}

void __130__AVContentKeySession_AVContentKeySessionPrivateUtilities___invokeDelegateCallbackWithBlock_synchronouslyWhenDelegateQueueIsNULL___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) invokeDelegateCallbackWithBlock:*(a1 + 40) synchronouslyIfDelegateQueueIsQueue:*(*(*(a1 + 48) + 8) + 40)];
  v2 = *(*(*(a1 + 48) + 8) + 40);

  dispatch_release(v2);
}

- (void)_handleKeyResponseError:(id)a3 forCryptorUUID:(id)a4 andCryptorKeyRequestID:(unint64_t)a5
{
  [-[AVContentKeySession _contentKeyRequestForCryptorUUID:cryptorKeyRequestID:](self _contentKeyRequestForCryptorUUID:a4 cryptorKeyRequestID:{a5), "_handleKeyResponseError:", a3}];

  [(AVContentKeySession *)self _removeContentKeyRequestForCryptorUUID:a4 cryptorKeyRequestID:a5];
}

- (void)_handleKeyResponseSuccessfullyProcessedForCryptorUUID:(id)a3 andCryptorKeyRequestID:(unint64_t)a4
{
  [-[AVContentKeySession _contentKeyRequestForCryptorUUID:cryptorKeyRequestID:](self "_contentKeyRequestForCryptorUUID:"_handleKeyResponseSuccessWithCryptor:" cryptorKeyRequestID:0")];

  [(AVContentKeySession *)self _removeContentKeyRequestForCryptorUUID:a3 cryptorKeyRequestID:a4];
}

- (void)_handleUpdateToPersistentKey:(id)a3 forKeyIdentifier:(id)a4
{
  if (a3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __106__AVContentKeySession_AVContentKeySessionPrivateUtilities___handleUpdateToPersistentKey_forKeyIdentifier___block_invoke;
    v4[3] = &unk_1E7465FD0;
    v4[4] = self;
    v4[5] = a3;
    v4[6] = a4;
    [(AVContentKeySession *)self _invokeDelegateCallbackWithBlock:v4 synchronouslyWhenDelegateQueueIsNULL:0];
  }
}

uint64_t __106__AVContentKeySession_AVContentKeySessionPrivateUtilities___handleUpdateToPersistentKey_forKeyIdentifier___block_invoke(uint64_t result, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      if (dword_1EAEFCEB0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return [a2 contentKeySession:v3[4] didUpdatePersistableContentKey:v3[5] forContentKeyIdentifier:{v3[6], v5, v6}];
    }
  }

  return result;
}

- (void)_handleContentProtectionSessionIdentifierDidChange:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __111__AVContentKeySession_AVContentKeySessionPrivateUtilities___handleContentProtectionSessionIdentifierDidChange___block_invoke;
  v3[3] = &unk_1E7465FA8;
  v3[4] = self;
  v3[5] = a3;
  [(AVContentKeySession *)self _invokeDelegateCallbackWithBlock:v3 synchronouslyWhenDelegateQueueIsNULL:1];
}

uint64_t __111__AVContentKeySession_AVContentKeySessionPrivateUtilities___handleContentProtectionSessionIdentifierDidChange___block_invoke(uint64_t result, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (objc_opt_respondsToSelector())
    {
      if (dword_1EAEFCEB0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return [a2 contentKeySession:*(v3 + 32) contentProtectionSessionIdentifierDidChangeForReportGroup:{*(v3 + 40), v6, v7}];
    }

    else
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        if (dword_1EAEFCEB0)
        {
          v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return [a2 contentKeySessionContentProtectionSessionIdentifierDidChange:{*(v3 + 32), v6, v7}];
      }
    }
  }

  return result;
}

- (int)setAppIdentifier:(id)a3
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (!a3)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"valid appIdentifier is required", v3, v4, v5, v6, v7, v19);
    goto LABEL_6;
  }

  threadSafetyQ = self->_session->_threadSafetyQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AVContentKeySession_AVContentKeyRequestSupport__setAppIdentifier___block_invoke;
  block[3] = &unk_1E7460F30;
  block[4] = self;
  block[5] = a3;
  block[6] = &v21;
  dispatch_sync(threadSafetyQ, block);
  if (*(v22 + 24) == 1)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"appIdentifier can't change once set", v11, v12, v13, v14, v15, v19);
LABEL_6:
    objc_exception_throw([v17 exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0]);
  }

  _Block_object_dispose(&v21, 8);
  return 0;
}

uint64_t __68__AVContentKeySession_AVContentKeyRequestSupport__setAppIdentifier___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(*(a1[4] + 8) + 32);
  if (v3)
  {
    result = [v3 isEqual:v2];
    *(*(a1[6] + 8) + 24) = result ^ 1;
  }

  else
  {
    result = [v2 copy];
    *(*(a1[4] + 8) + 32) = result;
  }

  return result;
}

- (void)issueContentKeyRequests:(id)a3 forInitializationData:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__41;
  v20 = __Block_byref_object_dispose__41;
  v21 = 0;
  if (a3)
  {
    if ([(AVContentKeySession *)self delegate])
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __97__AVContentKeySession_AVContentKeyRequestSupport__issueContentKeyRequests_forInitializationData___block_invoke;
      v11[3] = &unk_1E74660E8;
      v11[4] = self;
      v11[5] = a3;
      v11[6] = a4;
      v11[7] = &v16;
      [(AVContentKeySession *)self _invokeDelegateCallbackWithBlock:v11 synchronouslyWhenDelegateQueueIsNULL:1];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v22 count:16];
      if (v7)
      {
        v8 = *v13;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(a3);
            }

            v10 = *(*(&v12 + 1) + 8 * i);
            v17[5] = v10;
            [v10 _setError:{AVLocalizedErrorWithUnderlyingOSStatus(-11835, 0)}];
          }

          v7 = [a3 countByEnumeratingWithState:&v12 objects:v22 count:16];
        }

        while (v7);
      }

      v17[5] = 0;
    }
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __97__AVContentKeySession_AVContentKeyRequestSupport__issueContentKeyRequests_forInitializationData___block_invoke(uint64_t result, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (objc_opt_respondsToSelector())
    {
      if (dword_1EAEFCEB0)
      {
        v29 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return [a2 contentKeySession:v3[4] didProvideContentKeyRequests:v3[5] forInitializationData:{v3[6], v18, v19}];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v26 = 0uLL;
        v27 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v5 = v3[5];
        result = [v5 countByEnumeratingWithState:&v24 objects:v31 count:16];
        if (result)
        {
          v6 = result;
          v7 = *v25;
          do
          {
            v8 = 0;
            do
            {
              if (*v25 != v7)
              {
                objc_enumerationMutation(v5);
              }

              *(*(v3[7] + 8) + 40) = *(*(&v24 + 1) + 8 * v8);
              if (dword_1EAEFCEB0)
              {
                v29 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v10 = v29;
                if (os_log_type_enabled(v9, type))
                {
                  v11 = v10;
                }

                else
                {
                  v11 = v10 & 0xFFFFFFFE;
                }

                if (v11)
                {
                  v12 = v3[4];
                  v13 = *(*(v3[7] + 8) + 40);
                  v32 = 136315650;
                  v33 = "[AVContentKeySession(AVContentKeyRequestSupport) issueContentKeyRequests:forInitializationData:]_block_invoke";
                  v34 = 2048;
                  v35 = v12;
                  v36 = 2048;
                  v37 = v13;
                  LODWORD(v19) = 32;
                  v18 = &v32;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [a2 contentKeySession:v3[4] didProvideContentKeyRequest:{*(*(v3[7] + 8) + 40), v18, v19}];
              ++v8;
            }

            while (v6 != v8);
            result = [v5 countByEnumeratingWithState:&v24 objects:v31 count:16];
            v6 = result;
          }

          while (result);
        }
      }

      else
      {
        v22 = 0uLL;
        v23 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v14 = v3[5];
        result = [v14 countByEnumeratingWithState:&v20 objects:v30 count:16];
        if (result)
        {
          v15 = result;
          v16 = *v21;
          do
          {
            v17 = 0;
            do
            {
              if (*v21 != v16)
              {
                objc_enumerationMutation(v14);
              }

              *(*(v3[7] + 8) + 40) = *(*(&v20 + 1) + 8 * v17);
              [*(*(v3[7] + 8) + 40) _setError:{AVLocalizedErrorWithUnderlyingOSStatus(-11835, 0)}];
              ++v17;
            }

            while (v15 != v17);
            result = [v14 countByEnumeratingWithState:&v20 objects:v30 count:16];
            v15 = result;
          }

          while (result);
        }
      }

      *(*(v3[7] + 8) + 40) = 0;
    }
  }

  return result;
}

uint64_t __105__AVContentKeySession_AVContentKeyRequestSupport__issueContentKeyRequest_toDelegateWithCallbackSelector___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    if (objc_opt_respondsToSelector())
    {
      if (sel_isEqual(*(v3 + 48), sel_contentKeySession_didProvidePersistableContentKeyRequest_))
      {
        v4 = *(v3 + 32);
        v5 = *(v3 + 40);

        return [a2 contentKeySession:v4 didProvidePersistableContentKeyRequest:v5];
      }

      else
      {
        result = sel_isEqual(*(v3 + 48), sel_contentKeySession_didProvideRenewingContentKeyRequest_);
        if (result)
        {
          v8 = *(v3 + 32);
          v9 = *(v3 + 40);

          return [a2 contentKeySession:v8 didProvideRenewingContentKeyRequest:v9];
        }
      }
    }

    else
    {
      v6 = *(v3 + 40);
      v7 = AVLocalizedErrorWithUnderlyingOSStatus(-11835, 0);

      return [v6 _setError:v7];
    }
  }

  return result;
}

- (void)issueContentKeyRequest:(id)a3
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a3;
  -[AVContentKeySession issueContentKeyRequests:forInitializationData:](self, "issueContentKeyRequests:forInitializationData:", [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1], 0);
}

- (void)issuePersistableContentKeyRequest:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVContentKeySession *)self issueContentKeyRequest:a3 toDelegateWithCallbackSelector:sel_contentKeySession_didProvidePersistableContentKeyRequest_, v6, v7];
}

- (void)issueRenewableContentKeyRequest:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVContentKeySession *)self issueContentKeyRequest:a3 toDelegateWithCallbackSelector:sel_contentKeySession_didProvideRenewingContentKeyRequest_, v6, v7];
}

- (void)issueContentKeyRequestWithCustomURLHandler:(OpaqueFigCustomURLHandler *)a3 identifier:(id)a4 requestInfo:(__CFDictionary *)a5 requestID:(unint64_t)a6 providesPersistableKey:(BOOL)a7
{
  v7 = a7;
  FigCustomURLRequestInfoGetIsRenewalRequest();
  if (v7)
  {
    LOWORD(v14) = 1;
    [(AVContentKeySession *)self issuePersistableContentKeyRequest:[(AVContentKeyRequest *)[AVPersistableContentKeyRequest alloc] initWithContentKeySession:self reportGroup:self->_session->_defaultContentKeyGroup customURLHandler:a3 identifier:a4 requestInfo:a5 requestID:a6 providesPersistableKey:v14 isRenewalRequest:?]];
  }

  else
  {
    LOWORD(v14) = 0;
    v13 = [[AVContentKeyRequest alloc] initWithContentKeySession:self reportGroup:self->_session->_defaultContentKeyGroup customURLHandler:a3 identifier:a4 requestInfo:a5 requestID:a6 providesPersistableKey:v14 isRenewalRequest:?];
    if (v13)
    {
      [(AVContentKeySession *)self issueContentKeyRequest:v13];
    }
  }
}

- (void)contentKeyRequestDidProduceContentKey:(id)a3
{
  threadSafetyQ = self->_session->_threadSafetyQ;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __89__AVContentKeySession_AVContentKeyRequestSupport__contentKeyRequestDidProduceContentKey___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(threadSafetyQ, v4);
}

uint64_t __89__AVContentKeySession_AVContentKeyRequestSupport__contentKeyRequestDidProduceContentKey___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CFCopyDescription([*(a1 + 32) _internalContentKeySpecifier]);
  [*(*(*(a1 + 40) + 8) + 136) setObject:*(a1 + 32) forKey:v2];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(*(*(a1 + 40) + 8) + 64);
  result = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        global_queue = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __89__AVContentKeySession_AVContentKeyRequestSupport__contentKeyRequestDidProduceContentKey___block_invoke_2;
        block[3] = &unk_1E7460E90;
        v10 = *(a1 + 32);
        block[4] = *(a1 + 40);
        block[5] = v8;
        block[6] = v10;
        dispatch_async(global_queue, block);
        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __89__AVContentKeySession_AVContentKeyRequestSupport__contentKeyRequestDidProduceContentKey___block_invoke_2(uint64_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  if ((*(*(*(result + 32) + 8) + 40) & 1) == 0)
  {
    v1 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      if (dword_1EAEFCEB0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return [*(v1 + 40) contentKeySession:*(v1 + 32) didProvideContentKey:{*(v1 + 48), v3, v4}];
    }
  }

  return result;
}

- (void)issuePersistableContentKeyRequestForKeySpecifier:(OpaqueFigContentKeySpecifier *)a3 initializationData:(id)a4 keyIDFromInitializationData:(id)a5 contentIdentifier:(id)a6 requestID:(unint64_t)a7 preloadingRequestOptions:(id)a8 identifier:(id)a9 originatingRecipientIdentifier:(id)a10
{
  LOBYTE(v16) = 1;
  LOBYTE(v15) = 1;
  LOBYTE(v14) = 0;
  v11 = [(AVContentKeyRequest *)[AVPersistableContentKeyRequest alloc] initWithContentKeySession:self contentKeyBoss:self->_session->_contentKeyBoss useContentKeyBoss:self->_session->_useContentKeyBoss keySpecifier:a3 initializationData:a4 keyIDFromInitializationData:a5 contentIdentifier:a6 isRenewalRequest:v14 requestID:a7 providesPersistableKey:v15 preloadingRequestOptions:a8 identifier:a9 supportsOfflineKey:v16 originatingRecipientIdentifier:a10];
  if (v11)
  {
    v12 = v11;
    threadSafetyQ = self->_session->_threadSafetyQ;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __242__AVContentKeySession_AVContentKeyRequestSupport__issuePersistableContentKeyRequestForKeySpecifier_initializationData_keyIDFromInitializationData_contentIdentifier_requestID_preloadingRequestOptions_identifier_originatingRecipientIdentifier___block_invoke;
    block[3] = &unk_1E7460DF0;
    block[4] = self;
    block[5] = v12;
    dispatch_sync(threadSafetyQ, block);
    [(AVContentKeySession *)self issuePersistableContentKeyRequest:v12];
  }
}

uint64_t __242__AVContentKeySession_AVContentKeyRequestSupport__issuePersistableContentKeyRequestForKeySpecifier_initializationData_keyIDFromInitializationData_contentIdentifier_requestID_preloadingRequestOptions_identifier_originatingRecipientIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 _requestID];

  return [v1 trackRequest:v2 byRequestID:v3];
}

- (id)keyRequestByID:(unint64_t)a3
{
  keyRequestsByRequestID = self->_session->keyRequestsByRequestID;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];

  return [(NSMutableDictionary *)keyRequestsByRequestID objectForKeyedSubscript:v4];
}

- (void)trackRequest:(id)a3 byRequestID:(unint64_t)a4
{
  keyRequestsByRequestID = self->_session->keyRequestsByRequestID;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];

  [(NSMutableDictionary *)keyRequestsByRequestID setObject:a3 forKeyedSubscript:v6];
}

- (AVContentKeySession)initWithKeySystem:(id)a3 storageDirectoryAtURL:(id)a4 internal:(BOOL)a5
{
  result = [(AVContentKeySession *)self initWithKeySystem:a3 storageDirectoryAtURL:a4 legacyWebKitCompatibilityMode:0];
  if (result)
  {
    result->_session->_internal = a5;
  }

  return result;
}

- (id)issueContentKeyRequestForInitializationData:(id)a3
{
  v20 = 0;
  v21 = 0;
  if (![(AVContentKeySession *)self delegate])
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"valid delegate is required to deliver a key request", v6, v7, v8, v9, v10, v17), 0}];
    objc_exception_throw(v16);
  }

  if (a3 && (avcks_decodeInitializationDataAndCopyInformation(a3, &v20, 0, 0, 0, 0), v20))
  {
    if (PKDCopyDefaultKeyIDFromSinfArray())
    {
      v11 = 0;
      v14 = 0;
      goto LABEL_6;
    }

    v11 = [v21 copy];
  }

  else
  {
    v11 = 0;
  }

  v12 = [AVContentKeyRequest alloc];
  LOBYTE(v18) = 0;
  v13 = [(AVContentKeyRequest *)v12 initWithContentKeySession:self reportGroup:self->_session->_defaultContentKeyGroup identifier:0 contentIdentifier:v11 keyIDFromInitializationData:v21 initializationData:a3 preloadingRequestOptions:0 providesPersistableKey:v18];
  v14 = v13;
  if (v13)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __97__AVContentKeySession_AVContentKeySession_Internal__issueContentKeyRequestForInitializationData___block_invoke;
    v19[3] = &unk_1E7465FA8;
    v19[4] = self;
    v19[5] = v13;
    [(AVContentKeySession *)self _invokeDelegateCallbackWithBlock:v19 synchronouslyWhenDelegateQueueIsNULL:1];
  }

LABEL_6:

  return v14;
}

uint64_t __97__AVContentKeySession_AVContentKeySession_Internal__issueContentKeyRequestForInitializationData___block_invoke(uint64_t result, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    if (dword_1EAEFCEB0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [a2 contentKeySession:*(v3 + 32) didProvideContentKeyRequest:{*(v3 + 40), v5, v6}];
  }

  return result;
}

- (OpaqueFigCPECryptor)copyCryptorForInitializationData:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__41;
  v20 = __Block_byref_object_dispose__41;
  v21 = 0;
  threadSafetyQ = self->_session->_threadSafetyQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__AVContentKeySession_AVContentKeySession_Internal__copyCryptorForInitializationData___block_invoke;
  block[3] = &unk_1E7460EE0;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(threadSafetyQ, block);
  v5 = v17[5];
  if (v5 && (v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, (v6 = [v5 countByEnumeratingWithState:&v11 objects:v22 count:16]) != 0))
  {
    v7 = *v12;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = [*(*(&v11 + 1) + 8 * v8) copyCryptorForIdentifier:0 initializationData:a3];
      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v22 count:16];
        v9 = 0;
        if (v6)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t __86__AVContentKeySession_AVContentKeySession_Internal__copyCryptorForInitializationData___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if ((*(v1 + 40) & 1) == 0)
  {
    v2 = result;
    result = [*(v1 + 88) copy];
    *(*(*(v2 + 40) + 8) + 40) = result;
  }

  return result;
}

- (OpaqueFigCPECryptor)createCryptorIfNecessaryForInitializationData:(id)a3 formatDescription:(opaqueCMFormatDescription *)a4 error:(id *)a5
{
  result = [(AVContentKeySession *)self copyCryptorForInitializationData:?];
  if (!result)
  {
    defaultContentKeyGroup = self->_session->_defaultContentKeyGroup;

    return [(AVContentKeyReportGroup *)defaultContentKeyGroup createCryptorIfNecessaryForIdentifier:0 initializationData:a3 formatDescription:a4 hlsMethod:0 error:a5];
  }

  return result;
}

- (OpaqueFigCPECryptor)copyCryptorForCryptKeyAttributes:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__41;
  v20 = __Block_byref_object_dispose__41;
  v21 = 0;
  threadSafetyQ = self->_session->_threadSafetyQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__AVContentKeySession_AVContentKeySession_Internal__copyCryptorForCryptKeyAttributes___block_invoke;
  block[3] = &unk_1E7460EE0;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(threadSafetyQ, block);
  v5 = v17[5];
  if (v5 && (v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, (v6 = [v5 countByEnumeratingWithState:&v11 objects:v22 count:16]) != 0))
  {
    v7 = *v12;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = [*(*(&v11 + 1) + 8 * v8) copyCryptorForCryptKeyAttributes:a3];
      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v22 count:16];
        v9 = 0;
        if (v6)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t __86__AVContentKeySession_AVContentKeySession_Internal__copyCryptorForCryptKeyAttributes___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if ((*(v1 + 40) & 1) == 0)
  {
    v2 = result;
    result = [*(v1 + 88) copy];
    *(*(*(v2 + 40) + 8) + 40) = result;
  }

  return result;
}

- (id)makeContentKeyGroup
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__41;
  v13 = __Block_byref_object_dispose__41;
  v14 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3052000000;
  v8[3] = __Block_byref_object_copy__41;
  v8[4] = __Block_byref_object_dispose__41;
  v8[5] = 0;
  threadSafetyQ = self->_session->_threadSafetyQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__AVContentKeySession_AVContentKeyGroup_Support__makeContentKeyGroup__block_invoke;
  block[3] = &unk_1E7462B60;
  block[4] = self;
  block[5] = v8;
  block[6] = &v9;
  dispatch_sync(threadSafetyQ, block);
  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = v10[5];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (unint64_t)_processContentKeyRequestWithIdentifier:(id)a3 encryptionMethod:(int)a4 supportedProtocolVersions:(id)a5 options:(id)a6 groupID:(unint64_t)a7 error:(id *)a8
{
  v28[1] = *MEMORY[0x1E69E9840];
  v24 = 0;
  cf = 0;
  v23 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a8)
      {
        return 0;
      }

      v27 = *MEMORY[0x1E695E618];
      v28[0] = @"identifier is not string or url";
      v13 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1]);
      result = 0;
      *a8 = v13;
      return result;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 absoluteString];
  }

  v15 = FigContentKeySpecifierCreate();
  if (v15)
  {
    v21 = v15;
    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    [AVContentKeySession(FigContentKeyBoss) _processContentKeyRequestWithIdentifier:? encryptionMethod:? supportedProtocolVersions:? options:? groupID:? error:?];
    v21 = v26;
    goto LABEL_16;
  }

  v17 = Mutable;
  FigCFDictionarySetBoolean();
  v18 = FigContentKeyRequestParamsCreate();
  if (v18)
  {
    v21 = v18;
    goto LABEL_28;
  }

  contentKeyBoss = self->_session->_contentKeyBoss;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v20)
  {
    v22 = 0;
    v21 = -12782;
    goto LABEL_15;
  }

  v21 = v20(contentKeyBoss, v23, a7, 0, 0, 0, 0, 0, 0, &v24, v17, &v23);
  if (v21)
  {
LABEL_28:
    v22 = 0;
    goto LABEL_15;
  }

  v22 = [[AVContentKeyRequestParams alloc] initWithInitializationData:0 contentIdentifier:0 keyIDFromInitializationData:0 options:a6 identifier:a3];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_session->keyRequestParamsByRequestID, "setObject:forKeyedSubscript:", v22, [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24]);
LABEL_15:

  CFRelease(v17);
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (a8)
  {
    if (v21)
    {
      *a8 = AVLocalizedErrorWithUnderlyingOSStatus(v21, 0);
    }
  }

  return v24;
}

- (BOOL)_renewKeyWithIdentifier:(id)a3 encryptionMethod:(int)a4 initializationData:(id)a5 contentIdentifier:(id)a6 keyIDFromInitializationData:(id)a7 options:(id)a8 error:(id *)a9
{
  v36[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v33 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a9)
      {
        return 0;
      }

      v35 = *MEMORY[0x1E695E618];
      v36[0] = @"identifier is not string or url";
      v26 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1]);
      v25 = 0;
      goto LABEL_24;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 absoluteString];
  }

  v15 = FigContentKeySpecifierCreate();
  if (v15)
  {
    goto LABEL_27;
  }

  contentKeyBoss = self->_session->_contentKeyBoss;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v17)
  {
    v25 = 0;
    v18 = 0;
    v24 = -12782;
    goto LABEL_17;
  }

  v15 = v17(contentKeyBoss, cf, 0, 0, 0, &v33);
  if (v15)
  {
LABEL_27:
    v24 = v15;
    v25 = 0;
    v18 = 0;
  }

  else
  {
    v18 = [[AVContentKeyRequestParams alloc] initWithInitializationData:a5 contentIdentifier:a6 keyIDFromInitializationData:a7 options:a8 identifier:a3];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v33;
    v20 = [v33 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(NSMutableDictionary *)self->_session->keyRequestParamsByRequestID setObject:v18 forKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v21);
    }

    v24 = 0;
    v25 = 1;
  }

LABEL_17:

  if (cf)
  {
    CFRelease(cf);
  }

  if (a9 && v24)
  {
    v26 = AVLocalizedErrorWithUnderlyingOSStatus(v24, 0);
LABEL_24:
    *a9 = v26;
  }

  return v25;
}

- (BOOL)_makeContentKeyGroupWithIDOut:(unint64_t *)a3 error:(id *)a4
{
  contentKeyBoss = self->_session->_contentKeyBoss;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v7)
  {
    v8 = v7(contentKeyBoss, a3);
    if (!a4)
    {
      return v8 == 0;
    }
  }

  else
  {
    v8 = -12782;
    if (!a4)
    {
      return v8 == 0;
    }
  }

  if (v8)
  {
    *a4 = AVLocalizedErrorWithUnderlyingOSStatus(v8, 0);
  }

  return v8 == 0;
}

- (BOOL)isDefunct
{
  v8 = 0;
  contentKeyBoss = self->_session->_contentKeyBoss;
  v3 = *(CMBaseObjectGetVTable() + 8);
  if (*v3 < 5uLL)
  {
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = v3[11];
    if (v4)
    {
      LOBYTE(v4) = v4(contentKeyBoss, &v8) == 0;
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v5)
  {
    v5 = v6;
  }

  return v5 == 1;
}

@end