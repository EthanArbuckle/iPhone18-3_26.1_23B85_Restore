@interface AVContentKeyRequest
+ (id)_createKeyRequestDictionaryForApp:(id)app persistentKey:(id)key serverChallenge:(id)challenge cryptorKeyRequestID:(unint64_t)d purpose:(int)purpose;
+ (id)_ensureProtocolVersionList:(id)list;
+ (id)_mergeDictionary:(id)dictionary withItemsFrom:(id)from;
+ (id)_mergeDictionary:(id)dictionary withMissingItemsFrom:(id)from;
+ (void)_validateHLSEncryptionMethod:(id)method;
+ (void)_validateProtocolVersionList:(id)list;
+ (void)_validateServerChallenge:(id)challenge;
- (AVContentKeyRecipient)originatingRecipient;
- (AVContentKeyRequest)initWithContentKeySession:(id)session contentKeyBoss:(OpaqueFigContentKeyBoss *)boss useContentKeyBoss:(BOOL)keyBoss keySpecifier:(OpaqueFigContentKeySpecifier *)specifier initializationData:(id)data keyIDFromInitializationData:(id)initializationData contentIdentifier:(id)identifier isRenewalRequest:(BOOL)self0 requestID:(unint64_t)self1 providesPersistableKey:(BOOL)self2 preloadingRequestOptions:(id)self3 identifier:(id)self4 supportsOfflineKey:(BOOL)self5 originatingRecipientIdentifier:(id)self6;
- (AVContentKeyRequest)initWithContentKeySession:(id)session reportGroup:(id)group customURLHandler:(OpaqueFigCustomURLHandler *)handler identifier:(id)identifier requestInfo:(__CFDictionary *)info requestID:(unint64_t)d providesPersistableKey:(BOOL)key isRenewalRequest:(BOOL)self0;
- (AVContentKeyRequest)initWithContentKeySession:(id)session reportGroup:(id)group identifier:(id)identifier contentIdentifier:(id)contentIdentifier keyIDFromInitializationData:(id)data initializationData:(id)initializationData preloadingRequestOptions:(id)options providesPersistableKey:(BOOL)self0;
- (BOOL)_canRespondByRequestingPersistableContentKeyRequest;
- (BOOL)_prepareForKeyRenewalReturningError:(id *)error;
- (BOOL)_processContentKeyResponse:(id)response renewalDate:(id)date initializationVector:(id)vector error:(id *)error;
- (BOOL)disallowsLoggingURLs;
- (BOOL)processContentKeyResponseData:(id)data renewalDate:(id)date error:(id *)error;
- (BOOL)respondByRequestingPersistableContentKeyRequestAndReturnError:(NSError *)outError;
- (BOOL)setReportGroup:(id)group;
- (BOOL)willOutputBeObscuredDueToInsufficientExternalProtectionForDisplays:(id)displays;
- (NSDictionary)options;
- (OpaqueFigContentKeyBoss)_copyContentKeyBoss;
- (id)_getRetryReasonForError:(int)error;
- (id)_keySystem;
- (id)_makeStreamingContentKeyRequestDataForApp:(id)app contentIdentifier:(id)identifier options:(id)options error:(id *)error;
- (id)contentKeyRequestDataForApp:(id)app contentIdentifier:(id)identifier options:(id)options error:(id *)error;
- (id)description;
- (id)identifier;
- (id)identifierForLogging;
- (int64_t)externalContentProtectionStatus;
- (unint64_t)_requestID;
- (void)_clearContext;
- (void)_finishLoadingCustomURLRequestWithError:(id)error;
- (void)_handleKeyResponseSuccessWithCryptor:(OpaqueFigCPECryptor *)cryptor;
- (void)_processContentKeyResponseError:(id)error;
- (void)_setStatus:(int64_t)status;
- (void)dealloc;
- (void)makeStreamingContentKeyRequestDataForApp:(NSData *)appIdentifier contentIdentifier:(NSData *)contentIdentifier options:(NSDictionary *)options completionHandler:(void *)handler;
- (void)processContentKeyResponse:(AVContentKeyResponse *)keyResponse;
- (void)processContentKeyResponseError:(NSError *)error;
- (void)renewExpiringContentKeyResponseData;
@end

@implementation AVContentKeyRequest

- (AVContentKeyRequest)initWithContentKeySession:(id)session reportGroup:(id)group identifier:(id)identifier contentIdentifier:(id)contentIdentifier keyIDFromInitializationData:(id)data initializationData:(id)initializationData preloadingRequestOptions:(id)options providesPersistableKey:(BOOL)self0
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

  if (([objc_msgSend(session "keySystem")] & 1) == 0 && key)
  {
    v22 = MEMORY[0x1E695DF30];
    v23 = *MEMORY[0x1E695D940];
    keySystem = [session keySystem];
    v30 = [v22 exceptionWithName:v23 reason:AVMethodExceptionReasonWithObjectAndSelector(v17 userInfo:{a2, @"%@ does not support key persistence", v25, v26, v27, v28, v29, keySystem), 0}];
    objc_exception_throw(v30);
  }

  optionsCopy = options;
  +[AVContentKeyRequest _validateProtocolVersionList:](AVContentKeyRequest, "_validateProtocolVersionList:", [options objectForKeyedSubscript:@"ProtocolVersionsKey"]);
  +[AVContentKeyRequest _validateHLSEncryptionMethod:](AVContentKeyRequest, "_validateHLSEncryptionMethod:", [options objectForKeyedSubscript:@"HLSMethodKey"]);
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
  objc_storeWeak(&v17->_contentKeyRequest->weakSession, session);
  v17->_contentKeyRequest->reportGroup = group;
  v17->_contentKeyRequest->identifier = [identifier copy];
  v17->_contentKeyRequest->initializationData = [initializationData copy];
  v17->_contentKeyRequest->providesPersistableKey = key;
  v17->_contentKeyRequest->preloadingRequestOptions = [options copy];
  v17->_contentKeyRequest->isRenewalRequest = 0;
  v17->_contentKeyRequest->stateMutex = FigSimpleMutexCreate();
  if (!options)
  {
    optionsCopy = [MEMORY[0x1E695DF20] dictionary];
  }

  if (identifier)
  {
    v17->_contentKeyRequest->contentKeySpecifier = -[AVContentKeySpecifier initForKeySystem:identifier:initializationData:options:]([AVContentKeySpecifier alloc], "initForKeySystem:identifier:initializationData:options:", [session keySystem], identifier, initializationData, optionsCopy);
  }

  v17->_contentKeyRequest->contentKey = 0;
  v17->_contentKeyRequest->contentIdentifier = [contentIdentifier copy];
  v17->_contentKeyRequest->keyIDFromInitializationData = [data copy];
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
  originatingRecipient = [(AVContentKeyRequest *)self originatingRecipient];
  if (!IsItOKToLogURLs)
  {
    return 1;
  }

  v5 = originatingRecipient;
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

- (AVContentKeyRequest)initWithContentKeySession:(id)session reportGroup:(id)group customURLHandler:(OpaqueFigCustomURLHandler *)handler identifier:(id)identifier requestInfo:(__CFDictionary *)info requestID:(unint64_t)d providesPersistableKey:(BOOL)key isRenewalRequest:(BOOL)self0
{
  LOBYTE(v19) = key;
  v13 = [(AVContentKeyRequest *)self initWithContentKeySession:session reportGroup:group identifier:identifier contentIdentifier:0 keyIDFromInitializationData:0 initializationData:0 preloadingRequestOptions:0 providesPersistableKey:v19];
  if (!v13)
  {
    if (!FigSignalErrorAtGM())
    {
      return 0;
    }

LABEL_5:

    return 0;
  }

  if (handler)
  {
    v14 = CFRetain(handler);
  }

  else
  {
    v14 = 0;
  }

  v13->_contentKeyRequest->customURLHandler = v14;
  if (info)
  {
    v15 = CFRetain(info);
  }

  else
  {
    v15 = 0;
  }

  v13->_contentKeyRequest->requestInfo = v15;
  v13->_contentKeyRequest->customURLRequestID = d;
  v13->_contentKeyRequest->responseParamsSent = 0;
  v13->_contentKeyRequest->isRenewalRequest = request;
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

- (AVContentKeyRequest)initWithContentKeySession:(id)session contentKeyBoss:(OpaqueFigContentKeyBoss *)boss useContentKeyBoss:(BOOL)keyBoss keySpecifier:(OpaqueFigContentKeySpecifier *)specifier initializationData:(id)data keyIDFromInitializationData:(id)initializationData contentIdentifier:(id)identifier isRenewalRequest:(BOOL)self0 requestID:(unint64_t)self1 providesPersistableKey:(BOOL)self2 preloadingRequestOptions:(id)self3 identifier:(id)self4 supportsOfflineKey:(BOOL)self5 originatingRecipientIdentifier:(id)self6
{
  LOBYTE(v23) = key;
  v18 = [(AVContentKeyRequest *)self initWithContentKeySession:session reportGroup:0 identifier:a14 contentIdentifier:identifier keyIDFromInitializationData:initializationData initializationData:data preloadingRequestOptions:options providesPersistableKey:v23];
  v19 = v18;
  if (v18)
  {
    v18->_contentKeyRequest->requestID = d;
    v18->_contentKeyRequest->isRenewalRequest = request;
    if (specifier)
    {
      v20 = CFRetain(specifier);
    }

    else
    {
      v20 = 0;
    }

    v19->_contentKeyRequest->keySpecifier = v20;
    v19->_contentKeyRequest->weakContentKeyBoss = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v19->_contentKeyRequest->useContentKeyBoss = keyBoss;
    v19->_contentKeyRequest->supportsOfflineKey = offlineKey;
    v19->_contentKeyRequest->originatingRecipientUniqueIdentifier = recipientIdentifier;
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
  session = [(AVContentKeyRequest *)self session];

  return [session keySystem];
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

- (void)_setStatus:(int64_t)status
{
  _copyContentKeyBoss = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  FigSimpleMutexLock();
  contentKeyRequest = self->_contentKeyRequest;
  status = contentKeyRequest->status;
  if (status > 3 || status == status)
  {
    goto LABEL_16;
  }

  if (status <= status)
  {
    status = status;
  }

  contentKeyRequest->status = status;
  if (self->_contentKeyRequest->status == 1 && [(AVContentKeyRequest *)self figCryptor]&& [(AVContentKeyRequest *)self contentKeySpecifier]&& !self->_contentKeyRequest->contentKey)
  {
    self->_contentKeyRequest->contentKey = [[AVContentKey alloc] initWithSpecifier:[(AVContentKeyRequest *)self contentKeySpecifier] cryptor:[(AVContentKeyRequest *)self figCryptor] contentKeyBoss:_copyContentKeyBoss contentKeySpecifier:self->_contentKeyRequest->keySpecifier];
    FigSimpleMutexUnlock();
    if (_copyContentKeyBoss)
    {
      CFRelease(_copyContentKeyBoss);
    }

    session = [(AVContentKeyRequest *)self session];
    contentKey = self->_contentKeyRequest->contentKey;

    [session contentKeyRequestDidProduceContentKey:contentKey];
  }

  else
  {
LABEL_16:
    FigSimpleMutexUnlock();
    if (_copyContentKeyBoss)
    {

      CFRelease(_copyContentKeyBoss);
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

- (BOOL)_prepareForKeyRenewalReturningError:(id *)error
{
  [(AVContentKeyRequest *)self _clearContext];
  self->_contentKeyRequest->isRenewalRequest = 1;
  contentKeyRequest = self->_contentKeyRequest;
  figCryptor = contentKeyRequest->figCryptor;

  return [AVContentKeyRequest _prepareCryptor:figCryptor forRenewal:1 andReturnKeyRequestID:&contentKeyRequest->cryptorKeyRequestID isInchargeOfKeyRequest:&contentKeyRequest->isInchargeOfKeyRequest error:error];
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

- (id)_getRetryReasonForError:(int)error
{
  if (error > -42670)
  {
    if (error == -42668)
    {
      return @"ReceivedKeyResponseWithExpiredLease";
    }

    if (error == -42669)
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
    if (error != -42859)
    {
      if (error != -42800)
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

- (void)_handleKeyResponseSuccessWithCryptor:(OpaqueFigCPECryptor *)cryptor
{
  _copyContentKeyBoss = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  FigSimpleMutexLock();
  self->_contentKeyRequest->hasAnyKeyRequestSucceeded = 1;
  session = [(AVContentKeyRequest *)self session];
  v7 = session;
  v8 = 0;
  contentKeyRequest = self->_contentKeyRequest;
  if (cryptor && session)
  {
    figCryptor = contentKeyRequest->figCryptor;
    contentKeyRequest->figCryptor = cryptor;
    CFRetain(cryptor);
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
      self->_contentKeyRequest->contentKey = [[AVContentKey alloc] initWithSpecifier:[(AVContentKeyRequest *)self contentKeySpecifier] cryptor:[(AVContentKeyRequest *)self figCryptor] contentKeyBoss:_copyContentKeyBoss contentKeySpecifier:self->_contentKeyRequest->keySpecifier];
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

  if (_copyContentKeyBoss)
  {
    CFRelease(_copyContentKeyBoss);
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

+ (id)_mergeDictionary:(id)dictionary withMissingItemsFrom:(id)from
{
  v20 = *MEMORY[0x1E69E9840];
  if (dictionary)
  {
    dictionary = [dictionary mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = dictionary;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [from allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (![dictionary objectForKeyedSubscript:v13])
        {
          [v7 setObject:objc_msgSend(from forKeyedSubscript:{"objectForKeyedSubscript:", v13), v13}];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return [MEMORY[0x1E695DF20] dictionaryWithDictionary:v7];
}

+ (id)_mergeDictionary:(id)dictionary withItemsFrom:(id)from
{
  if (dictionary)
  {
    dictionary = [dictionary mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = dictionary;
  [dictionary addEntriesFromDictionary:from];
  return v6;
}

+ (void)_validateProtocolVersionList:(id)list
{
  v21 = *MEMORY[0x1E69E9840];
  if (list)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_12:
      v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"value against AVContentKeyRequestProtocolVersionsKey should be an array of NSNumber objects", v6, v7, v8, v9, v10, v16), 0}];
      objc_exception_throw(v15);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = [list countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(list);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_12;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [list countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

+ (void)_validateHLSEncryptionMethod:(id)method
{
  if (method && ([method isEqualToString:@"ISO_23001_7"] & 1) == 0 && (objc_msgSend(method, "isEqualToString:", @"SAMPLE-AES") & 1) == 0)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"value against AVContentKeyRequestHLSMethodKey is not recognized", v6, v7, v8, v9, v10, v12), 0}];
    objc_exception_throw(v11);
  }
}

+ (void)_validateServerChallenge:(id)challenge
{
  if (challenge)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([challenge length] == 8)
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

    v14 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v13, v6, v7, v8, v9, v10, v15), 0}];
    objc_exception_throw(v14);
  }
}

+ (id)_ensureProtocolVersionList:(id)list
{
  v3 = &unk_1F0AD38F8;
  if (list && [list count])
  {
    return list;
  }

  return v3;
}

+ (id)_createKeyRequestDictionaryForApp:(id)app persistentKey:(id)key serverChallenge:(id)challenge cryptorKeyRequestID:(unint64_t)d purpose:(int)purpose
{
  v7 = *&purpose;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = dictionary;
  if (app)
  {
    [dictionary setObject:app forKeyedSubscript:*MEMORY[0x1E6962AC0]];
  }

  if (key)
  {
    [v13 setObject:key forKeyedSubscript:*MEMORY[0x1E6962AF0]];
  }

  if (challenge)
  {
    [v13 setObject:challenge forKeyedSubscript:*MEMORY[0x1E6962B20]];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x1E6962AE8]];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x1E6962B08]];
  return v13;
}

- (id)contentKeyRequestDataForApp:(id)app contentIdentifier:(id)identifier options:(id)options error:(id *)error
{
  v45 = 0;
  v46 = 0;
  v11 = [objc_msgSend(options objectForKey:{@"StreamingContentKeyIsForAirPlayKey", "BOOLValue"}];
  v12 = [options objectForKey:@"CSKRO_RemoteContext"];
  v42 = *MEMORY[0x1E6962AB0];
  v13 = [options objectForKey:?];
  v14 = [options objectForKeyedSubscript:@"ServerChallenge"];
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

  errorCopy = error;
  p_contentKeyRequest = &self->_contentKeyRequest;
  v15 = [(AVContentKeyReportGroup *)self->_contentKeyRequest->reportGroup configureAppIdentifier:app];
  if (v15)
  {
    goto LABEL_33;
  }

  v43 = v13;
  v17 = v11;
  v18 = [AVContentKeyRequest _mergeDictionary:self->_contentKeyRequest->preloadingRequestOptions withMissingItemsFrom:options];

  self->_contentKeyRequest->preloadingRequestOptions = v18;
  if (!-[AVContentKeyRequest ensureCryptorWithFormatDescription:error:](self, "ensureCryptorWithFormatDescription:error:", [options objectForKey:@"CreateDecryptorUsingFormatDescription"], &v46))
  {
    goto LABEL_30;
  }

  v19 = [options objectForKey:@"RequiresValidationDataInSecureTokenKey"];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = [options objectForKey:@"RequiresExtendedValidationDataInSecureTokenKey"];
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
  if ([objc_msgSend(options objectForKey:{@"SupportsAirPlayDecryptionKey", "BOOLValue"}])
  {
    v27 = 5;
  }

  else
  {
    v27 = v26;
  }

  v28 = [AVContentKeyRequest _createKeyRequestDictionaryForApp:app persistentKey:v20 serverChallenge:v14 cryptorKeyRequestID:(*p_contentKeyRequest)->cryptorKeyRequestID purpose:v27];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(*p_contentKeyRequest)->customURLRequestID];
  [v28 setObject:v29 forKeyedSubscript:*MEMORY[0x1E6962AD0]];
  if (identifier)
  {
    [v28 setObject:identifier forKeyedSubscript:*MEMORY[0x1E6962AC8]];
  }

  if (v12)
  {
    [v28 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6962B10]];
  }

  if ([objc_msgSend(options objectForKey:{@"StreamingContentKeyRequiresiTunesProvisioningKey", "BOOLValue"}])
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
    error = errorCopy;
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
  error = errorCopy;
  if (!v46)
  {
    return v45;
  }

LABEL_35:
  if (error)
  {
    *error = v38;
  }

  return 0;
}

- (id)_makeStreamingContentKeyRequestDataForApp:(id)app contentIdentifier:(id)identifier options:(id)options error:(id *)error
{
  v25 = 0;
  cf = 0;
  v8 = [AVContentKeyRequest _mergeDictionary:self->_contentKeyRequest->preloadingRequestOptions withItemsFrom:options];
  v9 = [v8 objectForKeyedSubscript:@"HLSMethodKey"];
  [AVContentKeyRequest _validateHLSEncryptionMethod:v9];
  _copyContentKeyBoss = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  if (_copyContentKeyBoss)
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
      v16 = v18(_copyContentKeyBoss, requestID, cf, &v25);
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

  if (_copyContentKeyBoss)
  {
    CFRelease(_copyContentKeyBoss);
  }

  if (v19)
  {
    v20 = AVLocalizedErrorWithUnderlyingOSStatus(v19, 0);
  }

  if (!v20)
  {
    return v25;
  }

  if (error)
  {
    *error = v20;
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

- (BOOL)processContentKeyResponseData:(id)data renewalDate:(id)date error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  figCryptor = [(AVContentKeyRequest *)self figCryptor];
  if (!data)
  {
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"valid responseData is required", v11, v12, v13, v14, v15, v29), 0}];
    objc_exception_throw(v28);
  }

  v16 = figCryptor;
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
      [(AVContentKeyRequest *)self _finishLoadingCustomURLRequestWithResponseData:data renewalDate:date];
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
    if (date)
    {
      v31 = *MEMORY[0x1E6962B28];
      dateCopy = date;
      date = [MEMORY[0x1E695DF20] dictionaryWithObjects:&dateCopy forKeys:&v31 count:1];
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
          v20 = v22(v16, *MEMORY[0x1E69610F0], data);
          if (v20)
          {
LABEL_29:
            if (!error)
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
          if (!error)
          {
            return v20 == 0;
          }

LABEL_30:
          if (v20)
          {
            *error = AVLocalizedErrorWithUnderlyingOSStatus(v20, 0);
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
          v20 = v24(v16, data, date);
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

  if (!error)
  {
    return 0;
  }

  v35 = *MEMORY[0x1E695E618];
  v36[0] = @"content key request cancelled or already failed";
  v17 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1]);
  result = 0;
  *error = v17;
  return result;
}

- (BOOL)_processContentKeyResponse:(id)response renewalDate:(id)date initializationVector:(id)vector error:(id *)error
{
  _copyContentKeyBoss = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  if (_copyContentKeyBoss)
  {
    v9 = _copyContentKeyBoss;
    v10 = FigContentKeyResponseParamsCreate();
    if (!v10)
    {
      _requestID = [(AVContentKeyRequest *)self _requestID];
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v12)
      {
        v13 = -12782;
LABEL_7:
        CFRelease(v9);
        if (!error)
        {
          return v13 == 0;
        }

        goto LABEL_8;
      }

      v10 = v12(v9, _requestID, 0);
    }

    v13 = v10;
    goto LABEL_7;
  }

  [AVContentKeyRequest _processContentKeyResponse:? renewalDate:? initializationVector:? error:?];
  v13 = v15;
  if (!error)
  {
    return v13 == 0;
  }

LABEL_8:
  if (v13)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v13, 0);
  }

  return v13 == 0;
}

- (void)processContentKeyResponse:(AVContentKeyResponse *)keyResponse
{
  v49[1] = *MEMORY[0x1E69E9840];
  v47 = 0;
  _keySystem = [(AVContentKeyRequest *)self _keySystem];
  if (!keyResponse)
  {
    v36 = MEMORY[0x1E695DF30];
    v37 = *MEMORY[0x1E695D940];
    v38 = @"valid keyResponse is required";
    goto LABEL_60;
  }

  v12 = _keySystem;
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

          selfCopy3 = self;
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
              selfCopy3 = self;
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

            selfCopy3 = self;
LABEL_41:
            if (![AVContentKeyRequest _processContentKeyResponse:selfCopy3 renewalDate:"_processContentKeyResponse:renewalDate:initializationVector:error:" initializationVector:v45 error:v46])
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

- (void)_processContentKeyResponseError:(id)error
{
  _copyContentKeyBoss = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  if (_copyContentKeyBoss)
  {
    v6 = _copyContentKeyBoss;
    requestID = self->_contentKeyRequest->requestID;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v8)
    {
      v8(v6, requestID, error);
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
    _keySystem = [(AVContentKeyRequest *)self _keySystem];
    v13 = [v5 exceptionWithName:v6 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"%@ does not support key renewal", v8, v9, v10, v11, v12, _keySystem), 0}];
    objc_exception_throw(v13);
  }

  session = [(AVContentKeyRequest *)self session];

  [session renewExpiringResponseDataForContentKeyRequest:self];
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
    _keySystem = [(AVContentKeyRequest *)self _keySystem];
    v26 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"%@ does not support key persistence", v21, v22, v23, v24, v25, _keySystem);
    goto LABEL_19;
  }

  session = [(AVContentKeyRequest *)self session];
  if (!session)
  {
    return 1;
  }

  v7 = session;
  if (([session clientCanReceivePersistableContentKeyRequest] & 1) == 0)
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

- (void)_finishLoadingCustomURLRequestWithError:(id)error
{
  [(AVContentKeyRequest *)self _sendResponseInfoToCustomURLHandlerWithRenewalDate:0];
  contentKeyRequest = self->_contentKeyRequest;
  customURLRequestID = contentKeyRequest->customURLRequestID;
  customURLHandler = contentKeyRequest->customURLHandler;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v8)
  {

    v8(customURLHandler, customURLRequestID, error, 0);
  }
}

- (BOOL)willOutputBeObscuredDueToInsufficientExternalProtectionForDisplays:(id)displays
{
  v22 = 1;
  if (!displays)
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
      v17 = [(AVContentKeyReportGroup *)contentKeyRequest->reportGroup externalProtectionStatusForCryptor:figCryptor withDisplays:displays];
      return v17 != 2;
    }

    [AVContentKeyRequest(AVContentKeyRequest_ExternalProtectionStateSupport) willOutputBeObscuredDueToInsufficientExternalProtectionForDisplays:];
LABEL_18:
    v17 = 1;
    return v17 != 2;
  }

  _copyContentKeyBoss = [(AVContentKeyRequest *)self _copyContentKeyBoss];
  if (!_copyContentKeyBoss)
  {
    [AVContentKeyRequest(AVContentKeyRequest_ExternalProtectionStateSupport) willOutputBeObscuredDueToInsufficientExternalProtectionForDisplays:];
    goto LABEL_18;
  }

  v11 = _copyContentKeyBoss;
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
    _copyContentKeyBoss = [(AVContentKeyRequest *)self _copyContentKeyBoss];
    if (_copyContentKeyBoss)
    {
      [(AVContentKeyRequest(AVContentKeyRequest_ExternalProtectionStateSupport) *)p_contentKeyRequest externalContentProtectionStatus:_copyContentKeyBoss];
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

- (BOOL)setReportGroup:(id)group
{
  FigSimpleMutexLock();
  contentKeyRequest = self->_contentKeyRequest;
  figCryptor = contentKeyRequest->figCryptor;
  if (!figCryptor)
  {

    self->_contentKeyRequest->reportGroup = group;
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