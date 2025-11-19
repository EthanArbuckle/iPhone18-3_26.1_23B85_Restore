@interface AVContentKeyReportGroup
- (AVContentKeyReportGroup)initWithKeySystem:(id)a3 keySession:(id)a4 contentKeyBoss:(OpaqueFigContentKeyBoss *)a5 useContentKeyBoss:(BOOL)a6 groupID:(unint64_t)a7 storageDirectoryAtURL:(id)a8;
- (BOOL)_associateRequestWithGroupWithRequestID:(unint64_t)a3 error:(id *)a4;
- (BOOL)_destroyContentKeyGroupWithError:(id *)a3;
- (BOOL)_setAuthorizationToken:(id)a3 forIdentifier:(id)a4 error:(id *)a5;
- (BOOL)associateContentKeyRequest:(id)a3;
- (BOOL)hasProtector;
- (NSData)contentProtectionSessionIdentifier;
- (OpaqueFigCPECryptor)copyCryptorForCryptKeyAttributes:(id)a3;
- (OpaqueFigCPECryptor)copyCryptorForIdentifier:(id)a3 initializationData:(id)a4;
- (OpaqueFigCPECryptor)createCryptorIfNecessaryForIdentifier:(id)a3 initializationData:(id)a4 formatDescription:(opaqueCMFormatDescription *)a5 hlsMethod:(id)a6 error:(id *)a7;
- (OpaqueFigContentKeyBoss)_contentKeyBoss;
- (id)_processContentKeyRequestWithIdentifier:(id)a3 contentIdentifier:(id)a4 keyIDFromInitializationData:(id)a5 initializationData:(id)a6 options:(id)a7;
- (id)_processContentKeyRequestWithKeyRequestFromPSSH:(id)a3 decryptFormatType:(id)a4 initializationData:(id)a5 options:(id)a6;
- (int)configureAppIdentifier:(id)a3;
- (int)externalProtectionStatusForCryptor:(OpaqueFigCPECryptor *)a3 withDisplays:(id)a4;
- (void)createProtectorSessionIdentifierIfNecessary;
- (void)dealloc;
- (void)expire;
- (void)failProcessingContentKeyRequestWithIdentifier:(id)a3 initializationData:(id)a4 error:(id)a5;
- (void)processContentKeyRequestWithIdentifier:(id)a3 initializationData:(id)a4 options:(id)a5;
@end

@implementation AVContentKeyReportGroup

- (void)dealloc
{
  figContentKeySession = self->_figContentKeySession;
  if (figContentKeySession)
  {
    CFRelease(figContentKeySession);
  }

  weakContentKeyBoss = self->_weakContentKeyBoss;
  if (weakContentKeyBoss)
  {
    CFRelease(weakContentKeyBoss);
  }

  v5.receiver = self;
  v5.super_class = AVContentKeyReportGroup;
  [(AVContentKeyReportGroup *)&v5 dealloc];
}

- (OpaqueFigContentKeyBoss)_contentKeyBoss
{
  result = self->_weakContentKeyBoss;
  if (result)
  {
    return MEMORY[0x1EEDBC810](result, a2);
  }

  return result;
}

- (void)failProcessingContentKeyRequestWithIdentifier:(id)a3 initializationData:(id)a4 error:(id)a5
{
  LOBYTE(v7) = 0;
  v6 = [[AVContentKeyRequest alloc] initWithContentKeySession:[(AVContentKeyReportGroup *)self _contentKeySession] reportGroup:self identifier:a3 contentIdentifier:0 keyIDFromInitializationData:0 initializationData:a4 preloadingRequestOptions:0 providesPersistableKey:v7];

  [(AVContentKeyRequest *)v6 _setError:a5];
}

- (id)_processContentKeyRequestWithIdentifier:(id)a3 contentIdentifier:(id)a4 keyIDFromInitializationData:(id)a5 initializationData:(id)a6 options:(id)a7
{
  v24[1] = *MEMORY[0x1E69E9840];
  v22 = 0;
  if (!(a3 | a6))
  {
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"identifier or initializationData must be valid", a4, a5, a6, a7, v7, v20), 0}];
    objc_exception_throw(v19);
  }

  if (self->_isExpired)
  {
    v23 = *MEMORY[0x1E695E618];
    v24[0] = @"An expired content key session cannot process content key request";
    -[AVContentKeyReportGroup failProcessingContentKeyRequestWithIdentifier:initializationData:error:](self, "failProcessingContentKeyRequestWithIdentifier:initializationData:error:", a3, a6, AVLocalizedError(@"AVFoundationErrorDomain", -11862, [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1]));
    return 0;
  }

  else
  {
    v15 = [(AVContentKeyReportGroup *)self copyCryptorForIdentifier:a3 initializationData:a6];
    if (v15 && ((v16 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0 || v16(v15, *MEMORY[0x1E69610E8], *MEMORY[0x1E695E480], &v22) || (v17 = [v22 intValue], v22, v17 != 1)))
    {
      v11 = 0;
    }

    else
    {
      LOBYTE(v21) = 0;
      v11 = [[AVContentKeyRequest alloc] initWithContentKeySession:[(AVContentKeyReportGroup *)self _contentKeySession] reportGroup:self identifier:a3 contentIdentifier:a4 keyIDFromInitializationData:a5 initializationData:a6 preloadingRequestOptions:a7 providesPersistableKey:v21];
      if (!v15)
      {
        return v11;
      }
    }

    CFRelease(v15);
  }

  return v11;
}

- (id)_processContentKeyRequestWithKeyRequestFromPSSH:(id)a3 decryptFormatType:(id)a4 initializationData:(id)a5 options:(id)a6
{
  v11 = [MEMORY[0x1E695DF90] dictionary];
  [v11 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x1E6972168]), @"ProtocolVersionsKey"}];
  [v11 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", *MEMORY[0x1E6972160]), @"CSKRO_RemoteContext"}];
  if ([a4 isEqualToString:*MEMORY[0x1E6971748]])
  {
    v12 = @"ISO_23001_7";
  }

  else
  {
    v12 = @"SAMPLE-AES";
  }

  [v11 setObject:v12 forKeyedSubscript:@"HLSMethodKey"];
  v13 = *MEMORY[0x1E6972158];
  v14 = [objc_msgSend(a3 objectForKeyedSubscript:{*MEMORY[0x1E6972158]), "base64EncodedStringWithOptions:", 0}];
  v15 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6972150]];
  v16 = [a3 objectForKeyedSubscript:v13];
  v17 = [AVContentKeyRequest _mergeDictionary:v11 withMissingItemsFrom:a6];

  return [(AVContentKeyReportGroup *)self _processContentKeyRequestWithIdentifier:v14 contentIdentifier:v15 keyIDFromInitializationData:v16 initializationData:a5 options:v17];
}

- (void)processContentKeyRequestWithIdentifier:(id)a3 initializationData:(id)a4 options:(id)a5
{
  v30[42] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30[0] = 0;
  v28 = 0;
  v10 = [MEMORY[0x1E695DF70] array];
  v27 = [(AVContentKeyReportGroup *)self _contentKeySession];
  if (!v27)
  {
    v22 = MEMORY[0x1E695DF30];
    v23 = *MEMORY[0x1E695D940];
    v24 = @"AVContentKeySession is nil";
    goto LABEL_22;
  }

  if (!(a3 | a4))
  {
    v22 = MEMORY[0x1E695DF30];
    v23 = *MEMORY[0x1E695D940];
    v24 = @"identifier or initializationData must be valid";
LABEL_22:
    v25 = [v22 exceptionWithName:v23 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v24, v11, v12, v13, v14, v15, v26), 0}];
    objc_exception_throw(v25);
  }

  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_useContentKeyBoss)
  {
    [v27 _processContentKeyRequestWithIdentifier:a3 initializationData:a4 options:a5 groupID:self->_groupID];
    v17 = 0;
    goto LABEL_14;
  }

  if (!a4)
  {
    goto LABEL_8;
  }

  avcks_decodeInitializationDataAndCopyInformation(a4, &v28, 0, 0, 0, v30);
  if (v30[0])
  {
    v21 = FigPKDParsePSSHAndCopyContentKeyInfo();
    if (v21)
    {
      v18 = v21;
      v17 = 0;
LABEL_12:
      v20 = AVLocalizedErrorWithUnderlyingOSStatusAndUnderlyingError(v18, 0, 0, 1);
      if (v20)
      {
        [(AVContentKeyReportGroup *)self failProcessingContentKeyRequestWithIdentifier:a3 initializationData:a4 error:v20];
      }

      goto LABEL_14;
    }
  }

  if (v28)
  {
    v18 = PKDCopyDefaultKeyIDFromSinfArray();
    v17 = [v29 copy];
  }

  else
  {
LABEL_8:
    v17 = 0;
    v18 = 0;
  }

  v19 = [(AVContentKeyReportGroup *)self _processContentKeyRequestWithIdentifier:a3 contentIdentifier:v17 keyIDFromInitializationData:v29 initializationData:a4 options:a5];
  if (v19)
  {
    [v10 addObject:v19];
  }

  [v27 issueContentKeyRequests:v10 forInitializationData:{a4, v26}];
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_14:
}

- (BOOL)_associateRequestWithGroupWithRequestID:(unint64_t)a3 error:(id *)a4
{
  v7 = [(AVContentKeyReportGroup *)self _contentKeyBoss];
  if (!v7)
  {
    [AVContentKeyReportGroup _associateRequestWithGroupWithRequestID:? error:?];
    v11 = v13;
    if (!a4)
    {
      return v11 == 0;
    }

    goto LABEL_6;
  }

  v8 = v7;
  groupID = self->_groupID;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v10)
  {
    v11 = v10(v8, a3, groupID);
  }

  else
  {
    v11 = -12782;
  }

  CFRelease(v8);
  if (a4)
  {
LABEL_6:
    if (v11)
    {
      *a4 = AVLocalizedErrorWithUnderlyingOSStatus(v11, 0);
    }
  }

  return v11 == 0;
}

- (BOOL)associateContentKeyRequest:(id)a3
{
  if (dword_1EAEFCEB0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_useContentKeyBoss)
  {
    return -[AVContentKeyReportGroup _associateRequestWithGroupWithRequestID:error:](self, "_associateRequestWithGroupWithRequestID:error:", [a3 _requestID], 0);
  }

  else
  {
    return [a3 setReportGroup:self];
  }
}

- (BOOL)_destroyContentKeyGroupWithError:(id *)a3
{
  v5 = [(AVContentKeyReportGroup *)self _contentKeyBoss];
  if (!v5)
  {
    [AVContentKeyReportGroup _destroyContentKeyGroupWithError:?];
    v9 = v11;
    if (!a3)
    {
      return v9 == 0;
    }

    goto LABEL_6;
  }

  v6 = v5;
  groupID = self->_groupID;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v8)
  {
    v9 = v8(v6, groupID);
  }

  else
  {
    v9 = -12782;
  }

  CFRelease(v6);
  if (a3)
  {
LABEL_6:
    if (v9)
    {
      *a3 = AVLocalizedErrorWithUnderlyingOSStatus(v9, 0);
    }
  }

  return v9 == 0;
}

- (void)expire
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EAEFCEB0)
  {
    v7 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AVContentKeyReportGroup_expire__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __33__AVContentKeyReportGroup_expire__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 64) & 1) == 0)
  {
    v2 = result;
    *(v1 + 64) = 1;
    v3 = *(result + 32);
    if (*(v3 + 80) == 1)
    {

      return [v3 _destroyContentKeyGroupWithError:0];
    }

    else
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v5)
        {
          v5(v4);
        }
      }

      v6 = *(*(v2 + 32) + 32);

      return [v6 removeAllObjects];
    }
  }

  return result;
}

- (NSData)contentProtectionSessionIdentifier
{
  v2 = [(NSData *)self->_protectorSessionIdentifier copy];

  return v2;
}

- (OpaqueFigCPECryptor)createCryptorIfNecessaryForIdentifier:(id)a3 initializationData:(id)a4 formatDescription:(opaqueCMFormatDescription *)a5 hlsMethod:(id)a6 error:(id *)a7
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (![(NSString *)self->_keySystem isEqualToString:@"AuthorizationTokenSystem"])
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __152__AVContentKeyReportGroup_AVContentKeyReportGroup_Internal__createCryptorIfNecessaryForIdentifier_initializationData_formatDescription_hlsMethod_error___block_invoke;
    block[3] = &unk_1E7466138;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    block[7] = a6;
    block[8] = &v23;
    block[9] = &v19;
    block[10] = a5;
    dispatch_sync(serialQueue, block);
    v14 = *(v24 + 6);
    if (v14)
    {
      if (a7)
      {
        *a7 = AVLocalizedErrorWithUnderlyingOSStatus(v14, 0);
      }

      v15 = v20[3];
      if (v15)
      {
        CFRelease(v15);
        v20[3] = 0;
      }
    }
  }

  v16 = v20[3];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v16;
}

- (OpaqueFigCPECryptor)copyCryptorForIdentifier:(id)a3 initializationData:(id)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if ([(NSString *)self->_keySystem isEqualToString:@"AuthorizationTokenSystem"])
  {
    v8 = v14;
  }

  else
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __105__AVContentKeyReportGroup_AVContentKeyReportGroup_Internal__copyCryptorForIdentifier_initializationData___block_invoke;
    block[3] = &unk_1E7466160;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    block[7] = &v17;
    block[8] = &v13;
    dispatch_sync(serialQueue, block);
    v8 = v14;
    if (*(v18 + 6))
    {
      v9 = v14[3];
      if (v9)
      {
        CFRelease(v9);
        v8 = v14;
        v14[3] = 0;
      }
    }
  }

  v10 = v8[3];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v10;
}

- (AVContentKeyReportGroup)initWithKeySystem:(id)a3 keySession:(id)a4 contentKeyBoss:(OpaqueFigContentKeyBoss *)a5 useContentKeyBoss:(BOOL)a6 groupID:(unint64_t)a7 storageDirectoryAtURL:(id)a8
{
  v21[1] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AVContentKeyReportGroup;
  v13 = [(AVContentKeyReportGroup *)&v19 init];
  if (v13)
  {
    v13->_contentKeySessionWeakReference = [[AVWeakReference alloc] initWithReferencedObject:a4];
    v13->_cryptorsList = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13->_serialQueue = dispatch_queue_create("com.apple.avfoundation.avcontentkeyreportgroup", v14);
    v13->_keySystem = a3;
    v13->_weakContentKeyBoss = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v13->_useContentKeyBoss = a6;
    if (a8)
    {
      v20 = *MEMORY[0x1E6960F18];
      v21[0] = a8;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    }

    v13->_groupID = a7;
    Session = FigContentKeySessionRemoteCreateSession();
    if (Session)
    {
      v16 = 1;
    }

    else
    {
      v16 = dword_1EAEFCEB0 == 0;
    }

    if (v16)
    {
      if (Session)
      {

        return 0;
      }
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v13;
}

- (void)createProtectorSessionIdentifierIfNecessary
{
  if (!self->_useContentKeyBoss)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__AVContentKeyReportGroup_AVContentKeyReportGroupPrivateUtilities__createProtectorSessionIdentifierIfNecessary__block_invoke;
    block[3] = &unk_1E7462B60;
    block[4] = self;
    block[5] = &v9;
    block[6] = &v5;
    dispatch_sync(serialQueue, block);
    if (!*(v10 + 6) && *(v6 + 24) == 1)
    {
      [-[AVContentKeyReportGroup _contentKeySession](self "_contentKeySession")];
    }

    _Block_object_dispose(&v5, 8);
    _Block_object_dispose(&v9, 8);
  }
}

uint64_t __111__AVContentKeyReportGroup_AVContentKeyReportGroupPrivateUtilities__createProtectorSessionIdentifierIfNecessary__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v3 = *(v1 + 24);
  v2 = v1 + 24;
  if (!v3)
  {
    v4 = result;
    v5 = *(*(result + 32) + 16);
    if (v5)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v6)
      {
        result = v6(v5, *MEMORY[0x1E6960F90], *MEMORY[0x1E695E480], v2);
      }

      else
      {
        result = 4294954514;
      }

      *(*(*(v4 + 40) + 8) + 24) = result;
      if (!*(*(*(v4 + 40) + 8) + 24))
      {
        *(*(*(v4 + 48) + 8) + 24) = 1;
      }
    }

    else
    {
      return __111__AVContentKeyReportGroup_AVContentKeyReportGroupPrivateUtilities__createProtectorSessionIdentifierIfNecessary__block_invoke_cold_1(result);
    }
  }

  return result;
}

- (int)configureAppIdentifier:(id)a3
{
  if (self->_useContentKeyBoss)
  {
    return 0;
  }

  figContentKeySession = self->_figContentKeySession;
  if (figContentKeySession)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v7 = *MEMORY[0x1E6960F78];

      return v6(figContentKeySession, v7, a3);
    }

    else
    {
      return -12782;
    }
  }

  else
  {
    [AVContentKeyReportGroup(AVContentKeyReportGroupPrivateUtilities) configureAppIdentifier:?];
    return v8;
  }
}

- (BOOL)_setAuthorizationToken:(id)a3 forIdentifier:(id)a4 error:(id *)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __111__AVContentKeyReportGroup_AVContentKeyReportGroupPrivateUtilities___setAuthorizationToken_forIdentifier_error___block_invoke;
  v10[3] = &unk_1E7466188;
  v10[4] = self;
  v10[5] = a4;
  v10[6] = a3;
  v10[7] = &v11;
  dispatch_sync(serialQueue, v10);
  v7 = *(v12 + 6);
  if (a5 && v7)
  {
    *a5 = AVLocalizedErrorWithUnderlyingOSStatus(v7, 0);
    v7 = *(v12 + 6);
  }

  v8 = v7 == 0;
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __111__AVContentKeyReportGroup_AVContentKeyReportGroupPrivateUtilities___setAuthorizationToken_forIdentifier_error___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v5)
    {
      result = v5(v2, v3, v4);
    }

    else
    {
      result = 4294954514;
    }
  }

  else
  {
    __111__AVContentKeyReportGroup_AVContentKeyReportGroupPrivateUtilities___setAuthorizationToken_forIdentifier_error___block_invoke_cold_1(&v7);
    result = v7;
  }

  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (BOOL)hasProtector
{
  v7 = 0;
  figContentKeySession = self->_figContentKeySession;
  if (figContentKeySession)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v4 = v3(figContentKeySession, *MEMORY[0x1E6960F88], *MEMORY[0x1E695E480], &v7);
      v3 = v7;
    }

    else
    {
      v4 = -12782;
    }
  }

  else
  {
    [(AVContentKeyReportGroup(AVContentKeyReportGroupPrivateUtilities) *)&v8 hasProtector];
    v3 = 0;
    v4 = v8;
  }

  return !v4 && v3 == *MEMORY[0x1E695E4D0];
}

- (OpaqueFigCPECryptor)copyCryptorForCryptKeyAttributes:(id)a3
{
  v7 = 0;
  figContentKeySession = self->_figContentKeySession;
  if (figContentKeySession)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v5)
    {
      v5(figContentKeySession, *MEMORY[0x1E695E480], a3, 0, &v7);
      return v7;
    }
  }

  else
  {
    [AVContentKeyReportGroup(AVContentKeyReportGroupPrivateUtilities) copyCryptorForCryptKeyAttributes:];
  }

  return 0;
}

- (int)externalProtectionStatusForCryptor:(OpaqueFigCPECryptor *)a3 withDisplays:(id)a4
{
  v9 = 1;
  figContentKeySession = self->_figContentKeySession;
  if (figContentKeySession)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v7)
    {
      v7(figContentKeySession, a3, a4, &v9);
      return v9;
    }
  }

  else
  {
    [AVContentKeyReportGroup(AVContentKeyReportGroupPrivateUtilities) externalProtectionStatusForCryptor:withDisplays:];
  }

  return 1;
}

@end