@interface AVContentKeyRequest
+ (id)_createKeyRequestDictionaryForApp:(id)a3 persistentKey:(id)a4 serverChallenge:(id)a5 cryptorKeyRequestID:(unint64_t)a6 purpose:(int)a7;
+ (id)_ensureProtocolVersionList:(id)a3;
+ (id)_mergeDictionary:(id)a3 withItemsFrom:(id)a4;
+ (id)_mergeDictionary:(id)a3 withMissingItemsFrom:(id)a4;
+ (void)_validateHLSEncryptionMethod:(id)a3;
+ (void)_validateProtocolVersionList:(id)a3;
+ (void)_validateServerChallenge:(id)a3;
- (AVContentKeyRecipient)originatingRecipient;
- (AVContentKeyRequest)initWithContentKeySession:(id)a3 contentKeyBoss:(OpaqueFigContentKeyBoss *)a4 useContentKeyBoss:(BOOL)a5 keySpecifier:(OpaqueFigContentKeySpecifier *)a6 initializationData:(id)a7 keyIDFromInitializationData:(id)a8 contentIdentifier:(id)a9 isRenewalRequest:(BOOL)a10 requestID:(unint64_t)a11 providesPersistableKey:(BOOL)a12 preloadingRequestOptions:(id)a13 identifier:(id)a14 supportsOfflineKey:(BOOL)a15 originatingRecipientIdentifier:(id)a16;
- (AVContentKeyRequest)initWithContentKeySession:(id)a3 reportGroup:(id)a4 customURLHandler:(OpaqueFigCustomURLHandler *)a5 identifier:(id)a6 requestInfo:(__CFDictionary *)a7 requestID:(unint64_t)a8 providesPersistableKey:(BOOL)a9 isRenewalRequest:(BOOL)a10;
- (AVContentKeyRequest)initWithContentKeySession:(id)a3 reportGroup:(id)a4 identifier:(id)a5 contentIdentifier:(id)a6 keyIDFromInitializationData:(id)a7 initializationData:(id)a8 preloadingRequestOptions:(id)a9 providesPersistableKey:(BOOL)a10;
- (BOOL)_canRespondByRequestingPersistableContentKeyRequest;
- (BOOL)_prepareForKeyRenewalReturningError:(id *)a3;
- (BOOL)_processContentKeyResponse:(id)a3 renewalDate:(id)a4 initializationVector:(id)a5 error:(id *)a6;
- (BOOL)disallowsLoggingURLs;
- (BOOL)processContentKeyResponseData:(id)a3 renewalDate:(id)a4 error:(id *)a5;
- (BOOL)respondByRequestingPersistableContentKeyRequestAndReturnError:(NSError *)outError;
- (BOOL)setReportGroup:(id)a3;
- (BOOL)willOutputBeObscuredDueToInsufficientExternalProtectionForDisplays:(id)a3;
- (NSDictionary)options;
- (OpaqueFigContentKeyBoss)_copyContentKeyBoss;
- (id)_getRetryReasonForError:(int)a3;
- (id)_keySystem;
- (id)_makeStreamingContentKeyRequestDataForApp:(id)a3 contentIdentifier:(id)a4 options:(id)a5 error:(id *)a6;
- (id)contentKeyRequestDataForApp:(id)a3 contentIdentifier:(id)a4 options:(id)a5 error:(id *)a6;
- (id)description;
- (id)identifier;
- (id)identifierForLogging;
- (int64_t)externalContentProtectionStatus;
- (unint64_t)_requestID;
- (void)_clearContext;
- (void)_finishLoadingCustomURLRequestWithError:(id)a3;
- (void)_handleKeyResponseSuccessWithCryptor:(OpaqueFigCPECryptor *)a3;
- (void)_processContentKeyResponseError:(id)a3;
- (void)_setStatus:(int64_t)a3;
- (void)dealloc;
- (void)makeStreamingContentKeyRequestDataForApp:(NSData *)appIdentifier contentIdentifier:(NSData *)contentIdentifier options:(NSDictionary *)options completionHandler:(void *)handler;
- (void)processContentKeyResponse:(AVContentKeyResponse *)keyResponse;
- (void)processContentKeyResponseError:(NSError *)error;
- (void)renewExpiringContentKeyResponseData;
@end

@implementation AVContentKeyRequest

- (AVContentKeyRequest)initWithContentKeySession:(id)a3 reportGroup:(id)a4 identifier:(id)a5 contentIdentifier:(id)a6 keyIDFromInitializationData:(id)a7 initializationData:(id)a8 preloadingRequestOptions:(id)a9 providesPersistableKey:(BOOL)a10
{
  v33 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = AVContentKeyRequest;
  v17 = [(AVContentKeyRequest *)&v31 init];
  if (!v17)
  {
    if (!FigSignalErrorAtGM())
    {
      return v17;
    }

LABEL_12:

    return 0;
  }

  if (([objc_msgSend(a3 "keySystem")] & 1) == 0 && a10)
  {
    v22 = MEMORY[0x1E695DF30];
    v23 = *MEMORY[0x1E695D940];
    v24 = [a3 keySystem];
    v30 = [v22 exceptionWithName:v23 reason:AVMethodExceptionReasonWithObjectAndSelector(v17 userInfo:{a2, @"%@ does not support key persistence", v25, v26, v27, v28, v29, v24), 0}];
    objc_exception_throw(v30);
  }

  v18 = a9;
  +[AVContentKeyRequest _validateProtocolVersionList:](AVContentKeyRequest, "_validateProtocolVersionList:", [a9 objectForKeyedSubscript:@"ProtocolVersionsKey"]);
  +[AVContentKeyRequest _validateHLSEncryptionMethod:](AVContentKeyRequest, "_validateHLSEncryptionMethod:", [a9 objectForKeyedSubscript:@"HLSMethodKey"]);
  v19 = objc_alloc_init(AVContentKeyRequestInternal);
  v17->_contentKeyRequest = v19;
  if (!v19)
  {
    [AVContentKeyRequest initWithContentKeySession:v32 reportGroup:? identifier:? contentIdentifier:? keyIDFromInitializationData:? initializationData:? preloadingRequestOptions:? providesPersistableKey:?];
    if (!v32[0])
    {
      return v17;
    }

    goto LABEL_12;
  }

  v19->status = 0;
  objc_storeWeak(&v17->_contentKeyRequest->weakSession, a3);
  v17->_contentKeyRequest->reportGroup = a4;
  v17->_contentKeyRequest->identifier = [a5 copy];
  v17->_contentKeyRequest->initializationData = [a8 copy];
  v17->_contentKeyRequest->providesPersistableKey = a10;
  v17->_contentKeyRequest->preloadingRequestOptions = [a9 copy];
  v17->_contentKeyRequest->isRenewalRequest = 0;
  v17->_contentKeyRequest->stateMutex = FigSimpleMutexCreate();
  if (!a9)
  {
    v18 = [MEMORY[0x1E695DF20] dictionary];
  }

  if (a5)
  {
    v17->_contentKeyRequest->contentKeySpecifier = -[AVContentKeySpecifier initForKeySystem:identifier:initializationData:options:]([AVContentKeySpecifier alloc], "initForKeySystem:identifier:initializationData:options:", [a3 keySystem], a5, a8, v18);
  }

  v17->_contentKeyRequest->contentKey = 0;
  v17->_contentKeyRequest->contentIdentifier = [a6 copy];
  v17->_contentKeyRequest->keyIDFromInitializationData = [a7 copy];
  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v17;
}

- (BOOL)disallowsLoggingURLs
{
  IsItOKToLogURLs = FigIsItOKToLogURLs();
  v4 = [(AVContentKeyRequest *)self originatingRecipient];
  if (!IsItOKToLogURLs)
  {
    return 1;
  }

  v5 = v4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(AVContentKeyRecipient *)v5 disallowsLoggingURLs];
}

- (id)identifierForLogging
{
  if ([(AVContentKeyRequest *)self disallowsLoggingURLs])
  {
    return @"<redacted>";
  }

  return [(AVContentKeyRequest *)self identifier];
}

- (AVContentKeyRequest)initWithContentKeySession:(id)a3 reportGroup:(id)a4 customURLHandler:(OpaqueFigCustomURLHandler *)a5 identifier:(id)a6 requestInfo:(__CFDictionary *)a7 requestID:(unint64_t)a8 providesPersistableKey:(BOOL)a9 isRenewalRequest:(BOOL)a10
{
  LOBYTE(v19) = a9;
  v13 = [(AVContentKeyRequest *)self initWithContentKeySession:a3 reportGroup:a4 identifier:a6 contentIdentifier:0 keyIDFromInitializationData:0 initializationData:0 preloadingRequestOptions:0 providesPersistableKey:v19];
  if (!v13)
  {
    if (!FigSignalErrorAtGM())
    {
      return 0;
    }

LABEL_5:

    return 0;
  }

  if (a5)
  {
    v14 = CFRetain(a5);
  }

  else
  {
    v14 = 0;
  }

  v13->_contentKeyRequest->customURLHandler = v14;
  if (a7)
  {
    v15 = CFRetain(a7);
  }

  else
  {
    v15 = 0;
  }

  v13->_contentKeyRequest->requestInfo = v15;
  v13->_contentKeyRequest->customURLRequestID = a8;
  v13->_contentKeyRequest->responseParamsSent = 0;
  v13->_contentKeyRequest->isRenewalRequest = a10;
  if (FigCustomURLRequestInfoCopyCryptor())
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_5;
  }

  [(AVContentKeyRequest *)v13 _copyAndStoreCryptorUUID];
  FigCustomURLRequestInfoGetCryptorKeyRequestID();
  if (dword_1EAEFCEB0)
  {
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v13;
}

- (AVContentKeyRequest)initWithContentKeySession:(id)a3 contentKeyBoss:(OpaqueFigContentKeyBoss *)a4 useContentKeyBoss:(BOOL)a5 keySpecifier:(OpaqueFigContentKeySpecifier *)a6 initializationData:(id)a7 keyIDFromInitializationData:(id)a8 contentIdentifier:(id)a9 isRenewalRequest:(BOOL)a10 requestID:(unint64_t)a11 providesPersistableKey:(BOOL)a12 preloadingRequestOptions:(id)a13 identifier:(id)a14 supportsOfflineKey:(BOOL)a15 originatingRecipientIdentifier:(id)a16
{
  LOBYTE(v23) = a12;
  v18 = [(AVContentKeyRequest *)self initWithContentKeySession:a3 reportGroup:0 identifier:a14 contentIdentifier:a9 keyIDFromInitializationData:a8 initializationData:a7 preloadingRequestOptions:a13 providesPersistableKey:v23];
  v19 = v18;
  if (v18)
  {
    v18->_contentKeyRequest->requestID = a11;
    v18->_contentKeyRequest->isRenewalRequest = a10;
    if (a6)
    {
      v20 = CFRetain(a6);
    }

    else
    {
      v20 = 0;
    }

    v19->_contentKeyRequest->keySpecifier = v20;
    v19->_contentKeyRequest->weakContentKeyBoss = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v19->_contentKeyRequest->useContentKeyBoss = a5;
    v19->_contentKeyRequest->supportsOfflineKey = a15;
    v19->_contentKeyRequest->originatingRecipientUniqueIdentifier = a16;
    if (dword_1EAEFCEB0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    FigSignalErrorAtGM();
  }

  return v19;
}

- (void)dealloc
{
  contentKeyRequest = self->_contentKeyRequest;
  figCryptor = contentKeyRequest->figCryptor;
  if (figCryptor)
  {
    CFRelease(figCryptor);
    contentKeyRequest = self->_contentKeyRequest;
  }

  customURLHandler = contentKeyRequest->customURLHandler;
  if (customURLHandler)
  {
    CFRelease(customURLHandler);
    contentKeyRequest = self->_contentKeyRequest;
  }

  requestInfo = contentKeyRequest->requestInfo;
  if (requestInfo)
  {
    CFRelease(requestInfo);
    contentKeyRequest = self->_contentKeyRequest;
  }

  weakContentKeyBoss = contentKeyRequest->weakContentKeyBoss;
  if (weakContentKeyBoss)
  {
    CFRelease(weakContentKeyBoss);
    contentKeyRequest = self->_contentKeyRequest;
  }

  keySpecifier = contentKeyRequest->keySpecifier;
  if (keySpecifier)
  {
    CFRelease(keySpecifier);
  }

  FigSimpleMutexDestroy();

  v9.receiver = self;
  v9.super_class = AVContentKeyRequest;
  [(AVContentKeyRequest *)&v9 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p status:%d>", NSStringFromClass(v4), self, self->_contentKeyRequest->status];
}

- (id)_keySystem
{
  v2 = [(AVContentKeyRequest *)self session];

  return [v2 keySystem];
}

- (unint64_t)_requestID
{
  FigSimpleMutexLock();
  requestID = self->_contentKeyRequest->requestID;
  FigSimpleMutexUnlock();
  return requestID;
}

- (OpaqueFigContentKeyBoss)_copyContentKeyBoss
{
  result = self->_contentKeyRequest->weakContentKeyBoss;
  if (result)
  {
    return MEMORY[0x1EEDBC810](result, a2);
  }

  return result;
}

- (id)identifier
{
  contentKeyRequest = self->_contentKeyRequest;
  result = contentKeyRequest->keyIDFromInitializationData;
  if (!result)
  {
    return contentKeyRequest->identifier;
  }

  return result;
}

- (NSDictionary)options
{
  result = self->_contentKeyRequest->preloadingRequestOptions;
  if (!result)
  {
    return [MEMORY[0x1E695DF20] dictionary];
  }

  return result;
}

- (void)_setStatus:(int64_t)a3
{
  v5 = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  FigSimpleMutexLock();
  contentKeyRequest = self->_contentKeyRequest;
  status = contentKeyRequest->status;
  if (status > 3 || status == a3)
  {
    goto LABEL_16;
  }

  if (status <= a3)
  {
    status = a3;
  }

  contentKeyRequest->status = status;
  if (self->_contentKeyRequest->status == 1 && [(AVContentKeyRequest *)self figCryptor]&& [(AVContentKeyRequest *)self contentKeySpecifier]&& !self->_contentKeyRequest->contentKey)
  {
    self->_contentKeyRequest->contentKey = [[AVContentKey alloc] initWithSpecifier:[(AVContentKeyRequest *)self contentKeySpecifier] cryptor:[(AVContentKeyRequest *)self figCryptor] contentKeyBoss:v5 contentKeySpecifier:self->_contentKeyRequest->keySpecifier];
    FigSimpleMutexUnlock();
    if (v5)
    {
      CFRelease(v5);
    }

    v9 = [(AVContentKeyRequest *)self session];
    contentKey = self->_contentKeyRequest->contentKey;

    [v9 contentKeyRequestDidProduceContentKey:contentKey];
  }

  else
  {
LABEL_16:
    FigSimpleMutexUnlock();
    if (v5)
    {

      CFRelease(v5);
    }
  }
}

- (void)_clearContext
{
  contentKeyRequest = self->_contentKeyRequest;
  customURLHandler = contentKeyRequest->customURLHandler;
  if (customURLHandler)
  {
    CFRelease(customURLHandler);
    self->_contentKeyRequest->customURLHandler = 0;
    contentKeyRequest = self->_contentKeyRequest;
  }

  requestInfo = contentKeyRequest->requestInfo;
  if (requestInfo)
  {
    CFRelease(requestInfo);
    self->_contentKeyRequest->requestInfo = 0;
    contentKeyRequest = self->_contentKeyRequest;
  }

  contentKeyRequest->customURLRequestID = 0;
}

- (BOOL)_prepareForKeyRenewalReturningError:(id *)a3
{
  [(AVContentKeyRequest *)self _clearContext];
  self->_contentKeyRequest->isRenewalRequest = 1;
  contentKeyRequest = self->_contentKeyRequest;
  figCryptor = contentKeyRequest->figCryptor;

  return [AVContentKeyRequest _prepareCryptor:figCryptor forRenewal:1 andReturnKeyRequestID:&contentKeyRequest->cryptorKeyRequestID isInchargeOfKeyRequest:&contentKeyRequest->isInchargeOfKeyRequest error:a3];
}

uint64_t __33__AVContentKeyRequest__setError___block_invoke(uint64_t result, void *a2)
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

      return [a2 contentKeySession:*(v3 + 32) contentKeyRequest:v5 didFailWithError:v6];
    }
  }

  return result;
}

- (AVContentKeyRecipient)originatingRecipient
{
  Weak = objc_loadWeak(&self->_contentKeyRequest->weakSession);
  originatingRecipientUniqueIdentifier = self->_contentKeyRequest->originatingRecipientUniqueIdentifier;

  return [Weak _getOriginatingRecipientForUniqueIdentifier:originatingRecipientUniqueIdentifier];
}

- (id)_getRetryReasonForError:(int)a3
{
  if (a3 > -42670)
  {
    if (a3 == -42668)
    {
      return @"ReceivedKeyResponseWithExpiredLease";
    }

    if (a3 == -42669)
    {
      return @"ReceivedKeyResponseAfterSPCTimedOut";
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a3 != -42859)
    {
      if (a3 != -42800)
      {
        return 0;
      }

      return @"ReceivedKeyResponseWithExpiredLease";
    }

    return @"ReceivedObsoleteKeyResponse";
  }
}

uint64_t __47__AVContentKeyRequest__handleKeyResponseError___block_invoke(uint64_t a1, void *a2)
{
  if (a2 && (objc_opt_respondsToSelector() & 1) != 0 && [a2 contentKeySession:*(a1 + 32) shouldRetryContentKeyRequest:*(a1 + 40) reason:*(a1 + 48)])
  {
    v4 = *(a1 + 40);

    return [v4 _setStatus:3];
  }

  else
  {
    if (dword_1EAEFCEB0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return [*(a1 + 40) _setError:{AVLocalizedErrorWithUnderlyingOSStatus(-11835, 0)}];
  }
}

- (void)_handleKeyResponseSuccessWithCryptor:(OpaqueFigCPECryptor *)a3
{
  v5 = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  FigSimpleMutexLock();
  self->_contentKeyRequest->hasAnyKeyRequestSucceeded = 1;
  v6 = [(AVContentKeyRequest *)self session];
  v7 = v6;
  v8 = 0;
  contentKeyRequest = self->_contentKeyRequest;
  if (a3 && v6)
  {
    figCryptor = contentKeyRequest->figCryptor;
    contentKeyRequest->figCryptor = a3;
    CFRetain(a3);
    if (figCryptor)
    {
      CFRelease(figCryptor);
    }

    if (self->_contentKeyRequest->contentKey)
    {
      v8 = 0;
    }

    else
    {
      self->_contentKeyRequest->contentKey = [[AVContentKey alloc] initWithSpecifier:[(AVContentKeyRequest *)self contentKeySpecifier] cryptor:[(AVContentKeyRequest *)self figCryptor] contentKeyBoss:v5 contentKeySpecifier:self->_contentKeyRequest->keySpecifier];
      v8 = 1;
    }
  }

  FigSimpleMutexUnlock();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__AVContentKeyRequest__handleKeyResponseSuccessWithCryptor___block_invoke;
  v11[3] = &unk_1E7465FA8;
  v11[4] = v7;
  v11[5] = self;
  [v7 _invokeDelegateCallbackWithBlock:v11 synchronouslyWhenDelegateQueueIsNULL:0];
  if (v8)
  {
    [v7 contentKeyRequestDidProduceContentKey:self->_contentKeyRequest->contentKey];
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t __60__AVContentKeyRequest__handleKeyResponseSuccessWithCryptor___block_invoke(uint64_t result, void *a2)
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

      return [a2 contentKeySession:*(v3 + 32) contentKeyRequestDidSucceed:{*(v3 + 40), v5, v6}];
    }
  }

  return result;
}

+ (id)_mergeDictionary:(id)a3 withMissingItemsFrom:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = [a3 mutableCopy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = v6;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [a4 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (![a3 objectForKeyedSubscript:v13])
        {
          [v7 setObject:objc_msgSend(a4 forKeyedSubscript:{"objectForKeyedSubscript:", v13), v13}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];
}

+ (id)_mergeDictionary:(id)a3 withItemsFrom:(id)a4
{
  if (a3)
  {
    v5 = [a3 mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = v5;
  [v5 addEntriesFromDictionary:a4];
  return v6;
}

+ (void)_validateProtocolVersionList:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_12:
      v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, @"value against AVContentKeyRequestProtocolVersionsKey should be an array of NSNumber objects", v6, v7, v8, v9, v10, v16), 0}];
      objc_exception_throw(v15);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(a3);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_12;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [a3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

+ (void)_validateHLSEncryptionMethod:(id)a3
{
  if (a3 && ([a3 isEqualToString:@"ISO_23001_7"] & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", @"SAMPLE-AES") & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, @"value against AVContentKeyRequestHLSMethodKey is not recognized", v6, v7, v8, v9, v10, v12), 0}];
    objc_exception_throw(v11);
  }
}

+ (void)_validateServerChallenge:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a3 length] == 8)
      {
        return;
      }

      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = @"Server challenge should be 8 bytes in length";
    }

    else
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = @"value against AVContentKeySessionServerPlaybackContextOptionServerChallenge should be a NSData instance";
    }

    v14 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, v13, v6, v7, v8, v9, v10, v15), 0}];
    objc_exception_throw(v14);
  }
}

+ (id)_ensureProtocolVersionList:(id)a3
{
  v3 = &unk_1F0AD38F8;
  if (a3 && [a3 count])
  {
    return a3;
  }

  return v3;
}

+ (id)_createKeyRequestDictionaryForApp:(id)a3 persistentKey:(id)a4 serverChallenge:(id)a5 cryptorKeyRequestID:(unint64_t)a6 purpose:(int)a7
{
  v7 = *&a7;
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = v12;
  if (a3)
  {
    [v12 setObject:a3 forKeyedSubscript:*MEMORY[0x1E6962AC0]];
  }

  if (a4)
  {
    [v13 setObject:a4 forKeyedSubscript:*MEMORY[0x1E6962AF0]];
  }

  if (a5)
  {
    [v13 setObject:a5 forKeyedSubscript:*MEMORY[0x1E6962B20]];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a6];
  [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x1E6962AE8]];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x1E6962B08]];
  return v13;
}

- (id)contentKeyRequestDataForApp:(id)a3 contentIdentifier:(id)a4 options:(id)a5 error:(id *)a6
{
  v45 = 0;
  v46 = 0;
  v11 = [objc_msgSend(a5 objectForKey:{@"StreamingContentKeyIsForAirPlayKey", "BOOLValue"}];
  v12 = [a5 objectForKey:@"CSKRO_RemoteContext"];
  v42 = *MEMORY[0x1E6962AB0];
  v13 = [a5 objectForKey:?];
  v14 = [a5 objectForKeyedSubscript:@"ServerChallenge"];
  [AVContentKeyRequest _validateServerChallenge:v14];
  v15 = [-[AVContentKeyRequest session](self "session")];
  if (v15)
  {
LABEL_34:
    v38 = AVLocalizedErrorWithUnderlyingOSStatusAndUnderlyingError(v15, 0, v46, 1);
    v46 = v38;
    if (!v38)
    {
      return v45;
    }

    goto LABEL_35;
  }

  v44 = a6;
  p_contentKeyRequest = &self->_contentKeyRequest;
  v15 = [(AVContentKeyReportGroup *)self->_contentKeyRequest->reportGroup configureAppIdentifier:a3];
  if (v15)
  {
    goto LABEL_33;
  }

  v43 = v13;
  v17 = v11;
  v18 = [AVContentKeyRequest _mergeDictionary:self->_contentKeyRequest->preloadingRequestOptions withMissingItemsFrom:a5];

  self->_contentKeyRequest->preloadingRequestOptions = v18;
  if (!-[AVContentKeyRequest ensureCryptorWithFormatDescription:error:](self, "ensureCryptorWithFormatDescription:error:", [a5 objectForKey:@"CreateDecryptorUsingFormatDescription"], &v46))
  {
    goto LABEL_30;
  }

  v19 = [a5 objectForKey:@"RequiresValidationDataInSecureTokenKey"];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = [a5 objectForKey:@"RequiresExtendedValidationDataInSecureTokenKey"];
    if (!v20)
    {
      v26 = 0;
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"AVContentKeyRequestRequiresExtendedValidationDataInSecureTokenKey value should be an object of NSData class", v21, v22, v23, v24, v25, a2), 0}];
    objc_exception_throw(v40);
  }

  v26 = 4;
LABEL_9:
  if ([objc_msgSend(a5 objectForKey:{@"SupportsAirPlayDecryptionKey", "BOOLValue"}])
  {
    v27 = 5;
  }

  else
  {
    v27 = v26;
  }

  v28 = [AVContentKeyRequest _createKeyRequestDictionaryForApp:a3 persistentKey:v20 serverChallenge:v14 cryptorKeyRequestID:(*p_contentKeyRequest)->cryptorKeyRequestID purpose:v27];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(*p_contentKeyRequest)->customURLRequestID];
  [v28 setObject:v29 forKeyedSubscript:*MEMORY[0x1E6962AD0]];
  if (a4)
  {
    [v28 setObject:a4 forKeyedSubscript:*MEMORY[0x1E6962AC8]];
  }

  if (v12)
  {
    [v28 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6962B10]];
  }

  if ([objc_msgSend(a5 objectForKey:{@"StreamingContentKeyRequiresiTunesProvisioningKey", "BOOLValue"}])
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v28 setObject:v30 forKeyedSubscript:*MEMORY[0x1E6962B18]];
  }

  if (v17)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v28 setObject:v31 forKeyedSubscript:*MEMORY[0x1E6962AE0]];
  }

  if (v43)
  {
    [v28 setObject:v43 forKeyedSubscript:v42];
  }

  v32 = *p_contentKeyRequest;
  if ((*p_contentKeyRequest)->providesPersistableKey)
  {
    figCryptor = v32->figCryptor;
    v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v34)
    {
LABEL_32:
      v15 = -12782;
      goto LABEL_33;
    }

    v15 = v34(figCryptor, *MEMORY[0x1E6961138], *MEMORY[0x1E695E4D0]);
    if (!v15)
    {
      v32 = *p_contentKeyRequest;
      goto LABEL_26;
    }

LABEL_33:
    a6 = v44;
    goto LABEL_34;
  }

LABEL_26:
  v35 = v32->figCryptor;
  v36 = *(CMBaseObjectGetVTable() + 16);
  if (*v36 < 4uLL)
  {
    goto LABEL_32;
  }

  v37 = v36[11];
  if (!v37)
  {
    goto LABEL_32;
  }

  v15 = v37(v35, v28, *MEMORY[0x1E695E480], &v45);
  if (v15)
  {
    goto LABEL_33;
  }

  [AVContentKeyRequest contentKeyRequestDataForApp:? contentIdentifier:? options:? error:?];
LABEL_30:
  v38 = v46;
  a6 = v44;
  if (!v46)
  {
    return v45;
  }

LABEL_35:
  if (a6)
  {
    *a6 = v38;
  }

  return 0;
}

- (id)_makeStreamingContentKeyRequestDataForApp:(id)a3 contentIdentifier:(id)a4 options:(id)a5 error:(id *)a6
{
  v25 = 0;
  cf = 0;
  v8 = [AVContentKeyRequest _mergeDictionary:self->_contentKeyRequest->preloadingRequestOptions withItemsFrom:a5];
  v9 = [v8 objectForKeyedSubscript:@"HLSMethodKey"];
  [AVContentKeyRequest _validateHLSEncryptionMethod:v9];
  v10 = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  if (v10)
  {
    [v8 objectForKeyedSubscript:@"ProtocolVersionsKey"];
    [v8 objectForKeyedSubscript:@"ShouldRandomizeDeviceIdentifierKey"];
    if ([v8 objectForKey:@"RandomDeviceIdentifierSeedKey"])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"AVContentKeyRequestRandomDeviceIdentifierSeedKey is not an NSData", v11, v12, v13, v14, v15, v23), 0}];
        objc_exception_throw(v22);
      }
    }

    if (![v8 objectForKey:@"RequiresValidationDataInSecureTokenKey"])
    {
      [v8 objectForKey:@"RequiresExtendedValidationDataInSecureTokenKey"];
    }

    [v8 objectForKey:@"CSKRO_RemoteContext"];
    [objc_msgSend(v8 objectForKey:{@"SupportsAirPlayDecryptionKey", "BOOLValue"}];
    if (v9)
    {
      [v9 isEqual:@"ISO_23001_7"];
    }

    v16 = FigContentKeyRequestDataParamsCreate();
    if (v16)
    {
      goto LABEL_11;
    }

    requestID = self->_contentKeyRequest->requestID;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v18)
    {
      v16 = v18(v10, requestID, cf, &v25);
LABEL_11:
      v19 = v16;
      v20 = 0;
      goto LABEL_13;
    }

    v20 = 0;
    v19 = -12782;
  }

  else
  {
    v20 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, 0);
    v19 = 0;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v19)
  {
    v20 = AVLocalizedErrorWithUnderlyingOSStatus(v19, 0);
  }

  if (!v20)
  {
    return v25;
  }

  if (a6)
  {
    *a6 = v20;
  }

  result = v25;
  if (v25)
  {
    CFRelease(v25);
    return 0;
  }

  return result;
}

- (void)makeStreamingContentKeyRequestDataForApp:(NSData *)appIdentifier contentIdentifier:(NSData *)contentIdentifier options:(NSDictionary *)options completionHandler:(void *)handler
{
  if (!handler)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = @"valid completionHandler is required";
    goto LABEL_11;
  }

  if (!appIdentifier)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = @"valid appIdentifier is required";
LABEL_11:
    v21 = [v18 exceptionWithName:v19 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v20, contentIdentifier, options, handler, v6, v7, v22[0]), 0}];
    objc_exception_throw(v21);
  }

  [AVContentKeyRequest _validateProtocolVersionList:[(NSDictionary *)options objectForKeyedSubscript:@"ProtocolVersionsKey"]];
  [AVContentKeyRequest _validateHLSEncryptionMethod:[(NSDictionary *)options objectForKeyedSubscript:@"HLSMethodKey"]];
  FigSimpleMutexLock();
  if (contentIdentifier)
  {
    v13 = [(NSData *)contentIdentifier copy];

    self->_contentKeyRequest->contentIdentifier = v13;
  }

  if (self->_contentKeyRequest->requestID)
  {
    v14 = v23;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v15 = __108__AVContentKeyRequest_makeStreamingContentKeyRequestDataForApp_contentIdentifier_options_completionHandler___block_invoke;
  }

  else
  {
    v14 = v22;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v15 = __108__AVContentKeyRequest_makeStreamingContentKeyRequestDataForApp_contentIdentifier_options_completionHandler___block_invoke_174;
  }

  v16 = v15;
  global_queue = dispatch_get_global_queue(0, 0);
  v14[2] = v16;
  v14[3] = &unk_1E7461108;
  v14[4] = self;
  v14[5] = appIdentifier;
  v14[6] = options;
  v14[7] = handler;
  dispatch_async(global_queue, v14);
  FigSimpleMutexUnlock();
}

uint64_t __108__AVContentKeyRequest_makeStreamingContentKeyRequestDataForApp_contentIdentifier_options_completionHandler___block_invoke(uint64_t a1)
{
  v5[26] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v2 = [*(a1 + 32) _makeStreamingContentKeyRequestDataForApp:*(a1 + 40) contentIdentifier:*(*(*(a1 + 32) + 8) + 176) options:*(a1 + 48) error:v5];
  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return (*(*(a1 + 56) + 16))(*(a1 + 56), v2);
}

uint64_t __108__AVContentKeyRequest_makeStreamingContentKeyRequestDataForApp_contentIdentifier_options_completionHandler___block_invoke_174(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5 = 0;
  if ([*(a1 + 32) status] >= 4)
  {
    __108__AVContentKeyRequest_makeStreamingContentKeyRequestDataForApp_contentIdentifier_options_completionHandler___block_invoke_174_cold_2(&v6, v7, &v5);
LABEL_8:
    v2 = 0;
    return (*(*(a1 + 56) + 16))(*(a1 + 56), v2);
  }

  if (([objc_msgSend(*(a1 + 32) "_keySystem")] & 1) == 0)
  {
    __108__AVContentKeyRequest_makeStreamingContentKeyRequestDataForApp_contentIdentifier_options_completionHandler___block_invoke_174_cold_1(&v5);
    goto LABEL_8;
  }

  v2 = [*(a1 + 32) contentKeyRequestDataForApp:*(a1 + 40) contentIdentifier:*(*(*(a1 + 32) + 8) + 176) options:*(a1 + 48) error:&v5];
  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return (*(*(a1 + 56) + 16))(*(a1 + 56), v2);
}

- (BOOL)processContentKeyResponseData:(id)a3 renewalDate:(id)a4 error:(id *)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  v10 = [(AVContentKeyRequest *)self figCryptor];
  if (!a3)
  {
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"valid responseData is required", v11, v12, v13, v14, v15, v29), 0}];
    objc_exception_throw(v28);
  }

  v16 = v10;
  if ([(AVContentKeyRequest *)self status]< AVContentKeyRequestStatusCancelled)
  {
    if (dword_1EAEFCEB0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [-[AVContentKeyRequest session](self session];
    if (self->_contentKeyRequest->customURLHandler)
    {
      [(AVContentKeyRequest *)self _finishLoadingCustomURLRequestWithResponseData:a3 renewalDate:a4];
LABEL_10:
      v20 = 0;
      return v20 == 0;
    }

    v20 = [-[AVContentKeyRequest _keySystem](self "_keySystem")];
    if (!v20)
    {
      return v20 == 0;
    }

    LOBYTE(v33) = 0;
    if (a4)
    {
      v31 = *MEMORY[0x1E6962B28];
      v32 = a4;
      a4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    }

    if (self->_contentKeyRequest->providesPersistableKey)
    {
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v21)
      {
        v20 = v21(v16, *MEMORY[0x1E6961138], *MEMORY[0x1E695E4D0]);
        if (v20)
        {
          goto LABEL_29;
        }

        v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v22)
        {
          v20 = v22(v16, *MEMORY[0x1E69610F0], a3);
          if (v20)
          {
LABEL_29:
            if (!a5)
            {
              return v20 == 0;
            }

            goto LABEL_30;
          }

LABEL_23:
          v25 = *(CMBaseObjectGetVTable() + 16);
          if (*v25 < 6uLL || (v26 = v25[20]) == 0 || v26(v16, 2, 3, &v33, 0))
          {
            v27 = 1769;
          }

          else
          {
            if (v33)
            {
              goto LABEL_10;
            }

            v27 = 1770;
          }

          [AVContentKeyRequest processContentKeyResponseData:v27 renewalDate:v34 error:?];
          v20 = v34[0];
          if (!a5)
          {
            return v20 == 0;
          }

LABEL_30:
          if (v20)
          {
            *a5 = AVLocalizedErrorWithUnderlyingOSStatus(v20, 0);
            v20 = 1;
          }

          return v20 == 0;
        }
      }
    }

    else
    {
      v23 = *(CMBaseObjectGetVTable() + 16);
      if (*v23 >= 4uLL)
      {
        v24 = v23[12];
        if (v24)
        {
          v20 = v24(v16, a3, a4);
          if (v20)
          {
            goto LABEL_29;
          }

          goto LABEL_23;
        }
      }
    }

    v20 = -12782;
    goto LABEL_29;
  }

  if (!a5)
  {
    return 0;
  }

  v35 = *MEMORY[0x1E695E618];
  v36[0] = @"content key request cancelled or already failed";
  v17 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1]);
  result = 0;
  *a5 = v17;
  return result;
}

- (BOOL)_processContentKeyResponse:(id)a3 renewalDate:(id)a4 initializationVector:(id)a5 error:(id *)a6
{
  v8 = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  if (v8)
  {
    v9 = v8;
    v10 = FigContentKeyResponseParamsCreate();
    if (!v10)
    {
      v11 = [(AVContentKeyRequest *)self _requestID];
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v12)
      {
        v13 = -12782;
LABEL_7:
        CFRelease(v9);
        if (!a6)
        {
          return v13 == 0;
        }

        goto LABEL_8;
      }

      v10 = v12(v9, v11, 0);
    }

    v13 = v10;
    goto LABEL_7;
  }

  [AVContentKeyRequest _processContentKeyResponse:? renewalDate:? initializationVector:? error:?];
  v13 = v15;
  if (!a6)
  {
    return v13 == 0;
  }

LABEL_8:
  if (v13)
  {
    *a6 = AVLocalizedErrorWithUnderlyingOSStatus(v13, 0);
  }

  return v13 == 0;
}

- (void)processContentKeyResponse:(AVContentKeyResponse *)keyResponse
{
  v49[1] = *MEMORY[0x1E69E9840];
  v47 = 0;
  v6 = [(AVContentKeyRequest *)self _keySystem];
  if (!keyResponse)
  {
    v36 = MEMORY[0x1E695DF30];
    v37 = *MEMORY[0x1E695D940];
    v38 = @"valid keyResponse is required";
    goto LABEL_60;
  }

  v12 = v6;
  if (![(AVContentKeyRequest *)self session])
  {
    v36 = MEMORY[0x1E695DF30];
    v37 = *MEMORY[0x1E695D940];
    v39 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Bug in client of AVContentKeySession: this AVContentKeyRequest (%p) can no longer process key responses, as its managing AVContentKeySession was released", v13, v14, v15, v16, v17, self);
LABEL_61:
    v42 = v39;
    v43 = v36;
    v44 = v37;
LABEL_62:
    objc_exception_throw([v43 exceptionWithName:v44 reason:v42 userInfo:0]);
  }

  if (([-[AVContentKeyResponse keySystem](keyResponse "keySystem")] & 1) == 0)
  {
    v36 = MEMORY[0x1E695DF30];
    v37 = *MEMORY[0x1E695D940];
    v38 = @"AVContentKeySession's keySystem is not same as that of keyResponse";
    goto LABEL_60;
  }

  if (([v12 isEqualToString:@"FairPlayStreaming"] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", @"ClearKeySystem") & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", @"AuthorizationTokenSystem") & 1) == 0)
  {
    v40 = MEMORY[0x1E695DF30];
    v41 = *MEMORY[0x1E695D930];
    v42 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"%@ does not support this operation", v18, v19, v20, v21, v22, v12);
    v43 = v40;
    v44 = v41;
    goto LABEL_62;
  }

  if ([(AVContentKeyRequest *)self status]< AVContentKeyRequestStatusCancelled)
  {
    if ([-[AVContentKeyResponse keySystem](keyResponse "keySystem")])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (keyResponse[1].super.isa)
        {
          v33 = [(AVContentKeyRequest *)self processContentKeyResponse:keyResponse];
          if (v33 == 1)
          {
            goto LABEL_43;
          }

          if (v33)
          {
            goto LABEL_42;
          }

          if (dword_1EAEFCEB0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v24 = self;
          goto LABEL_41;
        }

        v36 = MEMORY[0x1E695DF30];
        v37 = *MEMORY[0x1E695D940];
        v38 = @"valid FPS key response data is required";
      }

      else
      {
        v36 = MEMORY[0x1E695DF30];
        v37 = *MEMORY[0x1E695D940];
        v38 = @"keyResponse should be an object of AVContentKeyResponseFairPlayStreaming class";
      }
    }

    else
    {
      if ([-[AVContentKeyResponse keySystem](keyResponse "keySystem")])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (keyResponse[1].super.isa)
          {
            if (self->_contentKeyRequest->requestID)
            {
              v24 = self;
              goto LABEL_41;
            }

            if (![(AVContentKeyRequest *)self ensureCryptorWithFormatDescription:0 error:&v47])
            {
              goto LABEL_43;
            }

            figCryptor = self->_contentKeyRequest->figCryptor;
            isa = keyResponse[1].super.isa;
            v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v28)
            {
              goto LABEL_30;
            }

            v29 = v28(figCryptor, *MEMORY[0x1E69610D8], isa);
            if (v29)
            {
              goto LABEL_31;
            }

            v30 = keyResponse[1]._keyResponse;
            if (!v30)
            {
              goto LABEL_28;
            }

            v31 = self->_contentKeyRequest->figCryptor;
            v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v32)
            {
              v29 = v32(v31, *MEMORY[0x1E69610C8], v30);
              if (!v29)
              {
LABEL_28:
                if (![(AVContentKeyRequest *)self processContentKeyResponseData:keyResponse[1].super.isa renewalDate:0 error:&v47])
                {
                  goto LABEL_43;
                }

                goto LABEL_42;
              }
            }

            else
            {
LABEL_30:
              v29 = -12782;
            }

LABEL_31:
            v23 = AVLocalizedErrorWithUnderlyingOSStatusAndUnderlyingError(v29, 0, v47, 1);
            v47 = v23;
            if (!v23)
            {
              return;
            }

            goto LABEL_44;
          }

          v36 = MEMORY[0x1E695DF30];
          v37 = *MEMORY[0x1E695D940];
          v38 = @"valid ClearKey key data is required";
        }

        else
        {
          v36 = MEMORY[0x1E695DF30];
          v37 = *MEMORY[0x1E695D940];
          v38 = @"keyResponse should be an object of AVContentKeyResponseClearKey class";
        }

        goto LABEL_60;
      }

      if (![-[AVContentKeyResponse keySystem](keyResponse "keySystem")])
      {
        goto LABEL_42;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (self->_contentKeyRequest->identifier && keyResponse[1].super.isa)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (dword_1EAEFCEB0)
            {
              v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            contentKeyRequest = self->_contentKeyRequest;
            if (!contentKeyRequest->requestID)
            {
              if (![(AVContentKeyReportGroup *)contentKeyRequest->reportGroup _setAuthorizationToken:keyResponse[1].super.isa forIdentifier:contentKeyRequest->identifier error:&v47])
              {
LABEL_43:
                v23 = v47;
                if (!v47)
                {
                  return;
                }

                goto LABEL_44;
              }

LABEL_42:
              [(AVContentKeyRequest *)self _setStatus:1, v45];
              goto LABEL_43;
            }

            v24 = self;
LABEL_41:
            if (![AVContentKeyRequest _processContentKeyResponse:v24 renewalDate:"_processContentKeyResponse:renewalDate:initializationVector:error:" initializationVector:v45 error:v46])
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }

          v36 = MEMORY[0x1E695DF30];
          v37 = *MEMORY[0x1E695D940];
          v38 = @"identifier should be an object of NSString class";
        }

        else
        {
          v36 = MEMORY[0x1E695DF30];
          v37 = *MEMORY[0x1E695D940];
          v38 = @"identifier and authorizationTokenData must be valid";
        }
      }

      else
      {
        v36 = MEMORY[0x1E695DF30];
        v37 = *MEMORY[0x1E695D940];
        v38 = @"keyResponse should be an object of AVContentKeyResponseAuthorizationToken class";
      }
    }

LABEL_60:
    v39 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, v38, v7, v8, v9, v10, v11, v45);
    goto LABEL_61;
  }

  v48 = *MEMORY[0x1E695E618];
  v49[0] = @"content key request cancelled or already failed";
  v23 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1]);
LABEL_44:
  [(AVContentKeyRequest *)self _handleKeyResponseError:v23, v45];
}

- (void)_processContentKeyResponseError:(id)a3
{
  v5 = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  if (v5)
  {
    v6 = v5;
    requestID = self->_contentKeyRequest->requestID;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v8)
    {
      v8(v6, requestID, a3);
    }

    CFRelease(v6);
  }

  else
  {
    [AVContentKeyRequest _processContentKeyResponseError:];
  }
}

- (void)processContentKeyResponseError:(NSError *)error
{
  v3 = error;
  if (!error)
  {
    v3 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
  }

  if (self->_contentKeyRequest->requestID)
  {
    [(AVContentKeyRequest *)self _processContentKeyResponseError:v3];
  }

  [(AVContentKeyRequest *)self _setError:v3];
}

- (void)renewExpiringContentKeyResponseData
{
  if (([-[AVContentKeyRequest _keySystem](self "_keySystem")] & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = [(AVContentKeyRequest *)self _keySystem];
    v13 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"%@ does not support key renewal", v8, v9, v10, v11, v12, v7), 0}];
    objc_exception_throw(v13);
  }

  v4 = [(AVContentKeyRequest *)self session];

  [v4 renewExpiringResponseDataForContentKeyRequest:self];
}

- (BOOL)_canRespondByRequestingPersistableContentKeyRequest
{
  contentKeyRequest = self->_contentKeyRequest;
  if (contentKeyRequest->requestInfo)
  {
    FigCustomURLRequestInfoCopyAllowedUniversalTypeIdentifiers();
    v3 = [0 containsObject:@"com.apple.streamingkeydelivery.persistentcontentkey"];
  }

  else
  {
    v3 = !contentKeyRequest->useContentKeyBoss || contentKeyRequest->supportsOfflineKey;
  }

  return v3 & 1;
}

- (BOOL)respondByRequestingPersistableContentKeyRequestAndReturnError:(NSError *)outError
{
  v30 = *MEMORY[0x1E69E9840];
  if (([-[AVContentKeyRequest _keySystem](self "_keySystem")] & 1) == 0)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v28 = [(AVContentKeyRequest *)self _keySystem];
    v26 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"%@ does not support key persistence", v21, v22, v23, v24, v25, v28);
    goto LABEL_19;
  }

  v6 = [(AVContentKeyRequest *)self session];
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  if (([v6 clientCanReceivePersistableContentKeyRequest] & 1) == 0)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D930];
    v26 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"client's delegate should respond to contentKeySession:didProvidePersistableContentKeyRequest: method in order to be able to request persistable content key request", v8, v9, v10, v11, v12, v27);
LABEL_19:
    objc_exception_throw([v19 exceptionWithName:v20 reason:v26 userInfo:0]);
  }

  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(AVContentKeyRequest *)self _canRespondByRequestingPersistableContentKeyRequest:v27])
  {
    [(AVContentKeyRequest *)self _setStatus:4];
    contentKeyRequest = self->_contentKeyRequest;
    requestID = contentKeyRequest->requestID;
    if (requestID)
    {
      [v7 issuePersistableContentKeyRequestForKeySpecifier:contentKeyRequest->keySpecifier initializationData:contentKeyRequest->initializationData keyIDFromInitializationData:contentKeyRequest->keyIDFromInitializationData contentIdentifier:contentKeyRequest->contentIdentifier requestID:requestID preloadingRequestOptions:contentKeyRequest->preloadingRequestOptions identifier:contentKeyRequest->identifier originatingRecipientIdentifier:contentKeyRequest->originatingRecipientUniqueIdentifier];
      return 1;
    }

    customURLHandler = contentKeyRequest->customURLHandler;
    v16 = 1;
    if (customURLHandler)
    {
      [v7 issueContentKeyRequestWithCustomURLHandler:customURLHandler identifier:contentKeyRequest->identifier requestInfo:contentKeyRequest->requestInfo requestID:contentKeyRequest->customURLRequestID providesPersistableKey:1];
    }

    else
    {
      [v7 issueContentKeyRequestWithPreloadingRequestOptions:contentKeyRequest->preloadingRequestOptions identifier:contentKeyRequest->identifier initializationData:contentKeyRequest->initializationData providesPersistableKey:1];
    }
  }

  else
  {
    v16 = 0;
    if (outError)
    {
      *outError = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVFoundationErrorDomain" code:-11862 userInfo:0];
    }
  }

  return v16;
}

- (void)_finishLoadingCustomURLRequestWithError:(id)a3
{
  [(AVContentKeyRequest *)self _sendResponseInfoToCustomURLHandlerWithRenewalDate:0];
  contentKeyRequest = self->_contentKeyRequest;
  customURLRequestID = contentKeyRequest->customURLRequestID;
  customURLHandler = contentKeyRequest->customURLHandler;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v8)
  {

    v8(customURLHandler, customURLRequestID, a3, 0);
  }
}

- (BOOL)willOutputBeObscuredDueToInsufficientExternalProtectionForDisplays:(id)a3
{
  v22 = 1;
  if (!a3)
  {
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"displays is nil", v3, v4, v5, v6, v7, v21), 0}];
    objc_exception_throw(v20);
  }

  contentKeyRequest = self->_contentKeyRequest;
  if (!contentKeyRequest->hasAnyKeyRequestSucceeded)
  {
    [AVContentKeyRequest(AVContentKeyRequest_ExternalProtectionStateSupport) willOutputBeObscuredDueToInsufficientExternalProtectionForDisplays:];
    goto LABEL_18;
  }

  if (!contentKeyRequest->useContentKeyBoss)
  {
    figCryptor = contentKeyRequest->figCryptor;
    if (figCryptor)
    {
      v17 = [(AVContentKeyReportGroup *)contentKeyRequest->reportGroup externalProtectionStatusForCryptor:figCryptor withDisplays:a3];
      return v17 != 2;
    }

    [AVContentKeyRequest(AVContentKeyRequest_ExternalProtectionStateSupport) willOutputBeObscuredDueToInsufficientExternalProtectionForDisplays:];
LABEL_18:
    v17 = 1;
    return v17 != 2;
  }

  v10 = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  if (!v10)
  {
    [AVContentKeyRequest(AVContentKeyRequest_ExternalProtectionStateSupport) willOutputBeObscuredDueToInsufficientExternalProtectionForDisplays:];
    goto LABEL_18;
  }

  v11 = v10;
  keySpecifier = self->_contentKeyRequest->keySpecifier;
  v13 = *(CMBaseObjectGetVTable() + 16);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v18 = v14[14];
  if (v18 && *v14 >= 3uLL)
  {
    v18(v11, keySpecifier, &v22);
  }

  CFRelease(v11);
  v17 = v22;
  return v17 != 2;
}

- (int64_t)externalContentProtectionStatus
{
  v8 = 1;
  p_contentKeyRequest = &self->_contentKeyRequest;
  contentKeyRequest = self->_contentKeyRequest;
  if (!contentKeyRequest->hasAnyKeyRequestSucceeded)
  {
    [AVContentKeyRequest(AVContentKeyRequest_ExternalProtectionStateSupport) externalContentProtectionStatus];
    return 0;
  }

  if (contentKeyRequest->useContentKeyBoss)
  {
    v7 = [(AVContentKeyRequest *)self _copyContentKeyBoss];
    if (v7)
    {
      [(AVContentKeyRequest(AVContentKeyRequest_ExternalProtectionStateSupport) *)p_contentKeyRequest externalContentProtectionStatus:v7];
      return v9;
    }

    [AVContentKeyRequest(AVContentKeyRequest_ExternalProtectionStateSupport) externalContentProtectionStatus];
    return 0;
  }

  figCryptor = contentKeyRequest->figCryptor;
  if (!figCryptor)
  {
    [AVContentKeyRequest(AVContentKeyRequest_ExternalProtectionStateSupport) externalContentProtectionStatus];
    return 0;
  }

  v5 = [(AVContentKeyReportGroup *)contentKeyRequest->reportGroup externalProtectionStatusForCryptor:figCryptor withDisplays:MEMORY[0x1E695E0F0]];
  if (v5 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v5 == 3);
  }
}

- (BOOL)setReportGroup:(id)a3
{
  FigSimpleMutexLock();
  contentKeyRequest = self->_contentKeyRequest;
  figCryptor = contentKeyRequest->figCryptor;
  if (!figCryptor)
  {

    self->_contentKeyRequest->reportGroup = a3;
  }

  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
  return figCryptor == 0;
}

@end