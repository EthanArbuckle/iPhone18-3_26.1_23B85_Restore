@interface FigCPEFPAirPlaySession
- (FigCPEFPAirPlaySession)initWithFairPlayContext:(unsigned int)a3 contentInfo:(id)a4 routeInfo:(id)a5 playbackSession:(OpaqueFigEndpointPlaybackSession *)a6 mediaControlUUID:(id)a7;
- (FigCPEFPAirPlaySession)initWithFairPlayContext:(unsigned int)a3 protectionInfo:(id)a4 routeInfo:(id)a5 playbackSession:(OpaqueFigEndpointPlaybackSession *)a6 mediaControlUUID:(id)a7;
- (FigCPEFPAirPlaySession)initWithFairPlayContext:(unsigned int)a3 routeInfo:(id)a4 playbackSession:(OpaqueFigEndpointPlaybackSession *)a5 mediaControlUUID:(id)a6;
- (id)createPicRequestWithError:(id *)a3;
- (id)legacySinfs;
- (id)mediaControlParamsWithStoreResponse:(id)a3;
- (id)sicWithPic:(id)a3;
- (void)authorizeItemCompletionHandler_objc:(id *)a3 picData:(__CFData *)a4 playerGUID:(__CFString *)a5 error:(int)a6;
- (void)beginSessionWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)endSession;
@end

@implementation FigCPEFPAirPlaySession

- (FigCPEFPAirPlaySession)initWithFairPlayContext:(unsigned int)a3 protectionInfo:(id)a4 routeInfo:(id)a5 playbackSession:(OpaqueFigEndpointPlaybackSession *)a6 mediaControlUUID:(id)a7
{
  v8 = [(FigCPEFPAirPlaySession *)self initWithFairPlayContext:*&a3 routeInfo:a5 playbackSession:a6 mediaControlUUID:a7];
  if (v8)
  {
    v8->_protectionInfo = a4;
  }

  return v8;
}

- (FigCPEFPAirPlaySession)initWithFairPlayContext:(unsigned int)a3 contentInfo:(id)a4 routeInfo:(id)a5 playbackSession:(OpaqueFigEndpointPlaybackSession *)a6 mediaControlUUID:(id)a7
{
  v8 = [(FigCPEFPAirPlaySession *)self initWithFairPlayContext:*&a3 routeInfo:a5 playbackSession:a6 mediaControlUUID:a7];
  if (v8)
  {
    v8->_contentInfo = a4;
  }

  return v8;
}

- (FigCPEFPAirPlaySession)initWithFairPlayContext:(unsigned int)a3 routeInfo:(id)a4 playbackSession:(OpaqueFigEndpointPlaybackSession *)a5 mediaControlUUID:(id)a6
{
  v14.receiver = self;
  v14.super_class = FigCPEFPAirPlaySession;
  v10 = [(FigCPEFPAirPlaySession *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_invalid = 0;
    v10->_fairPlayContext = a3;
    v10->_protectionInfo = 0;
    v10->_contentInfo = 0;
    v10->_playbackSession = CFRetain(a5);
    v11->_mediaControlUUID = a6;
    v11->_fairPlayDeallocator = FigFairPlayCopyDisposeStorageAllocator();
    v11->_vodkaVersion = 0;
    if (a4)
    {
      v12 = [a4 objectForKey:@"AirPlayVodkaVersion"];
      if (v12)
      {
        v11->_vodkaVersion = [v12 unsignedIntValue];
      }
    }

    v11->_fairPlaySession = 0;
    v11->_serializationQueue = dispatch_queue_create("com.apple.coremedia.cpefpairplay", 0);
    if (sSSOnceToken != -1)
    {
      [FigCPEFPAirPlaySession initWithFairPlayContext:routeInfo:playbackSession:mediaControlUUID:];
    }
  }

  return v11;
}

void *__93__FigCPEFPAirPlaySession_initWithFairPlayContext_routeInfo_playbackSession_mediaControlUUID___block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/StoreServices.framework/StoreServices", 1);
  if (result)
  {
    sSSPlayInfoRequestContext = objc_getClass("SSPlayInfoRequestContext");
    sSSAccountStore = objc_getClass("SSAccountStore");
    result = objc_getClass("SSPlayInfoRequest");
    sSSPlayInfoRequest = result;
  }

  return result;
}

- (void)dealloc
{
  CFRelease(self->_playbackSession);

  CFRelease(self->_fairPlayDeallocator);
  if (self->_fairPlaySession)
  {
    TsbHVdUOnzCHizuzrAdwYFpb();
    FAIRPLAY_CALL_LOG(v3);
  }

  dispatch_release(self->_serializationQueue);
  v4.receiver = self;
  v4.super_class = FigCPEFPAirPlaySession;
  [(FigCPEFPAirPlaySession *)&v4 dealloc];
}

- (id)legacySinfs
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSDictionary count](self->_protectionInfo, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  protectionInfo = self->_protectionInfo;
  v5 = [(NSDictionary *)protectionInfo countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(protectionInfo);
        }

        [v3 addObject:{FigFairPlayGetLegacySinfFromSinfExtensions(-[NSDictionary objectForKey:](self->_protectionInfo, "objectForKey:", *(*(&v10 + 1) + 8 * i)))}];
      }

      v6 = [(NSDictionary *)protectionInfo countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)authorizeItemCompletionHandler_objc:(id *)a3 picData:(__CFData *)a4 playerGUID:(__CFString *)a5 error:(int)a6
{
  var2 = a3->var2;
  var3 = a3->var3;
  if (self->_invalid)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_8;
    v16[3] = &unk_1E7492498;
    v16[4] = var3;
    v8 = v16;
LABEL_14:
    dispatch_async(var2, v8);
    return;
  }

  if (a6)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke;
    v21[3] = &unk_1E74998D0;
    v22 = a6;
    v21[4] = var3;
    v8 = v21;
    goto LABEL_14;
  }

  if (![(__CFString *)a5 length]|| ![(__CFData *)a4 length])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_7;
    block[3] = &unk_1E7492498;
    block[4] = var3;
    v8 = block;
    goto LABEL_14;
  }

  v12 = [(FigCPEFPAirPlaySession *)self sicWithPic:a4];
  if (!v12)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_6;
    v18[3] = &unk_1E7492498;
    v18[4] = var3;
    v8 = v18;
    goto LABEL_14;
  }

  if (!sSSPlayInfoRequest || !sSSAccountStore || (v13 = v12, !sSSPlayInfoRequestContext))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_5;
    v19[3] = &unk_1E7492498;
    v19[4] = var3;
    v8 = v19;
    goto LABEL_14;
  }

  v14 = objc_alloc_init(sSSPlayInfoRequestContext);
  [v14 setPlayerGUID:a5];
  [v14 setSICData:v13];
  if (self->_protectionInfo)
  {
    [v14 setSinfs:{-[FigCPEFPAirPlaySession legacySinfs](self, "legacySinfs")}];
  }

  else
  {
    [v14 setAccountIdentifier:{objc_msgSend(objc_msgSend(objc_msgSend(sSSAccountStore, "defaultStore"), "activeAccount"), "uniqueIdentifier")}];
    [v14 setContentIdentifier:{-[NSDictionary objectForKey:](self->_contentInfo, "objectForKey:", 0x1F0B529D8)}];
  }

  v15 = [[sSSPlayInfoRequest alloc] initWithPlayInfoContext:v14];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_2;
  v20[3] = &unk_1E7499948;
  v20[4] = self;
  v20[5] = var2;
  v20[6] = var3;
  [v15 startWithPlayInfoResponseBlock:v20];
}

void __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x1E696ABC0]);
  v4 = [v3 initWithDomain:*MEMORY[0x1E696A768] code:*(a1 + 40) userInfo:0];
  [MEMORY[0x1E695DF20] dictionaryWithObject:v4 forKey:@"Error"];
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_3;
  block[3] = &unk_1E7499920;
  block[4] = v3;
  block[5] = a2;
  block[6] = a3;
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

void __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[8] & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (!v3 || (v4 = [v1 mediaControlParamsWithStoreResponse:{objc_msgSend(v3, "playInfoData")}]) == 0)
    {
      v4 = [MEMORY[0x1E695DF20] dictionary];
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      if ([v5 code] != 110 && objc_msgSend(*(a1 + 48), "code") != 3)
      {
        v9 = *(a1 + 48);
        goto LABEL_11;
      }

      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E696A768];
      v8 = -16222;
    }

    else
    {
      v6 = MEMORY[0x1E696ABC0];
      v7 = *MEMORY[0x1E696A768];
      v8 = 0;
    }

    v9 = [v6 errorWithDomain:v7 code:v8 userInfo:0];
LABEL_11:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_4;
    block[3] = &unk_1E74998F8;
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    block[5] = v9;
    block[6] = v11;
    block[4] = v4;
    dispatch_async(v10, block);
  }
}

uint64_t __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_4(void *a1)
{
  v1 = a1[6];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a1[4], @"AirPlayParams", a1[5], @"Error", 0}];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696ABC0] forKey:{"errorWithDomain:code:userInfo:", *MEMORY[0x1E696A768], -12162, 0), @"Error"}];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696ABC0] forKey:{"errorWithDomain:code:userInfo:", *MEMORY[0x1E696A768], -12162, 0), @"Error"}];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E695DF20];
  v3 = [MEMORY[0x1E695DEF0] data];
  v4 = [v2 dictionaryWithObject:objc_msgSend(v2 forKey:{"dictionaryWithObject:forKey:", v3, *MEMORY[0x1E6961A40]), @"AirPlayParams"}];
  v5 = *(v1 + 16);

  return v5(v1, v4);
}

uint64_t __87__FigCPEFPAirPlaySession_authorizeItemCompletionHandler_objc_picData_playerGUID_error___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696ABC0] forKey:{"errorWithDomain:code:userInfo:", *MEMORY[0x1E696A768], -12162, 0), @"Error"}];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)beginSessionWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  serializationQueue = self->_serializationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__FigCPEFPAirPlaySession_beginSessionWithCompletionQueue_completionHandler___block_invoke;
  block[3] = &unk_1E7499998;
  block[5] = a3;
  block[6] = a4;
  block[4] = self;
  dispatch_async(serializationQueue, block);
}

void __76__FigCPEFPAirPlaySession_beginSessionWithCompletionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__FigCPEFPAirPlaySession_beginSessionWithCompletionQueue_completionHandler___block_invoke_4;
    v15[3] = &unk_1E7492498;
    v3 = *(a1 + 40);
    v15[4] = *(a1 + 48);
    v4 = v15;
LABEL_11:
    dispatch_async(v3, v4);
    return;
  }

  v18 = 0;
  v5 = [v2 createPicRequestWithError:&v18];
  if (!v5)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__FigCPEFPAirPlaySession_beginSessionWithCompletionQueue_completionHandler___block_invoke_3;
    v16[3] = &unk_1E7499970;
    v3 = *(a1 + 40);
    v14 = *(a1 + 48);
    v16[4] = v18;
    v16[5] = v14;
    v4 = v16;
    goto LABEL_11;
  }

  if (!*(*(a1 + 32) + 48))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__FigCPEFPAirPlaySession_beginSessionWithCompletionQueue_completionHandler___block_invoke_2;
    block[3] = &unk_1E7492498;
    v3 = *(a1 + 40);
    block[4] = *(a1 + 48);
    v4 = block;
    goto LABEL_11;
  }

  v6 = v5;
  v7 = malloc_type_malloc(0x20uLL, 0xE00409EA085F3uLL);
  *v7 = *(a1 + 32);
  v8 = [*(*(a1 + 32) + 24) objectForKey:0x1F0B529F8];
  v7[1] = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v7[3] = *(a1 + 48);
  v9 = *(a1 + 40);
  v7[2] = v9;
  dispatch_retain(v9);
  v10 = *(a1 + 32);
  v12 = *(v10 + 40);
  v11 = *(v10 + 48);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v13)
  {
    v13(v12, v6, v11, authorizeItemCompletionHandler, v7);
  }
}

uint64_t __76__FigCPEFPAirPlaySession_beginSessionWithCompletionQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696ABC0] forKey:{"errorWithDomain:code:userInfo:", *MEMORY[0x1E696A768], -12150, 0), @"Error"}];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t __76__FigCPEFPAirPlaySession_beginSessionWithCompletionQueue_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E695DF20];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!v2)
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-12162 userInfo:0];
  }

  v4 = [v1 dictionaryWithObject:v2 forKey:@"Error"];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

uint64_t __76__FigCPEFPAirPlaySession_beginSessionWithCompletionQueue_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696ABC0] forKey:{"errorWithDomain:code:userInfo:", *MEMORY[0x1E696A768], -12162, 0), @"Error"}];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (void)endSession
{
  serializationQueue = self->_serializationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FigCPEFPAirPlaySession_endSession__block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = self;
  dispatch_sync(serializationQueue, block);
}

- (id)createPicRequestWithError:(id *)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = 0;
  v41 = 0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_18_7();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_18_7();
  fig_note_initialize_category_with_default_work_cf();
  if (!self->_fairPlayContext || self->_fairPlaySession || (protectionInfo = self->_protectionInfo, contentInfo = self->_contentInfo, (protectionInfo != 0) ^ (contentInfo == 0)) || !self->_fairPlayDeallocator)
  {
    v34 = 0;
    v35 = 4294955138;
    goto LABEL_30;
  }

  v38 = a3;
  if (protectionInfo)
  {
    LODWORD(v39) = 1;
    LODWORD(v41) = [(NSDictionary *)protectionInfo count];
    v7 = malloc_type_calloc(v41, 0x20uLL, 0x1050040E8CD93FDuLL);
    v40 = v7;
    v8 = self->_protectionInfo;
    v14 = OUTLINED_FUNCTION_1_202(v7, v9, v10, v11, v12, v13);
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = MEMORY[0];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (MEMORY[0] != v17)
          {
            objc_enumerationMutation(v8);
          }

          v19 = [(NSDictionary *)self->_protectionInfo objectForKey:*(8 * i)];
          LegacySinfFromSinfExtensions = FigFairPlayGetLegacySinfFromSinfExtensions(v19);
          ExtendedSinfFromSinfExtensions = FigFairPlayGetExtendedSinfFromSinfExtensions(v19);
          v27 = ExtendedSinfFromSinfExtensions;
          if (LegacySinfFromSinfExtensions)
          {
            *(v7 + 8 * v16) = [LegacySinfFromSinfExtensions length];
            ExtendedSinfFromSinfExtensions = [LegacySinfFromSinfExtensions bytes];
            v7 = v40;
            *(v40 + 4 * v16 + 1) = ExtendedSinfFromSinfExtensions;
          }

          if (v27)
          {
            *(v7 + 8 * v16 + 4) = [v27 length];
            ExtendedSinfFromSinfExtensions = [v27 bytes];
            v7 = v40;
            *(v40 + 4 * v16 + 3) = ExtendedSinfFromSinfExtensions;
          }

          ++v16;
        }

        v15 = OUTLINED_FUNCTION_1_202(ExtendedSinfFromSinfExtensions, v22, v23, v24, v25, v26);
      }

      while (v15);
    }

    goto LABEL_27;
  }

  LODWORD(v39) = 2;
  v28 = [(NSDictionary *)contentInfo objectForKey:0x1F0B529D8];
  if (v28)
  {
    v40 = [v28 unsignedLongValue];
  }

  v29 = [(NSDictionary *)self->_contentInfo objectForKey:0x1F0B52A18];
  if (!v29)
  {
    goto LABEL_27;
  }

  v30 = v29;
  if ([v29 isEqualToString:0x1F0B3D918])
  {
    v31 = 1;
LABEL_25:
    HIDWORD(v39) = v31;
    goto LABEL_27;
  }

  if ([v30 isEqualToString:0x1F0B3D8F8])
  {
    v31 = 2;
    goto LABEL_25;
  }

  HIDWORD(v39) = 0;
LABEL_27:
  J3NocDTIn(self->_vodkaVersion, self->_fairPlayContext, &v39);
  v33 = FAIRPLAY_CALL_LOG(v32);
  if (v33)
  {
    v35 = v33;
    v34 = 0;
    a3 = v38;
  }

  else
  {
    v34 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], 0, 0, self->_fairPlayDeallocator);
    a3 = v38;
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = 4294955145;
    }
  }

LABEL_30:
  if (v39 == 1)
  {
    free(v40);
  }

  if (a3 && v35)
  {
    if (dword_1EAF176B0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:FigFairPlayMapFairPlayErrorToCPEError(v35) userInfo:0];
  }

  return v34;
}

- (id)sicWithPic:(id)a3
{
  *&length[1] = 0;
  if (!a3 || (fairPlaySession = self->_fairPlaySession) == 0 || !self->_fairPlayDeallocator)
  {
LABEL_11:
    v8 = 0;
    return v8;
  }

  OflR7BMjGok3A7mYQFt9(fairPlaySession, [a3 bytes], objc_msgSend(a3, "length"), 0, 0, &length[1]);
  v6 = FAIRPLAY_CALL_LOG(v5);
  v7 = *&length[1];
  if (v6)
  {
LABEL_9:
    if (v7)
    {
      v10 = jEHf8Xzsv8K(v7);
      FAIRPLAY_CALL_LOG(v10);
    }

    goto LABEL_11;
  }

  v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *&length[1], 0, self->_fairPlayDeallocator);
  if (!v8)
  {
    v7 = *&length[1];
    goto LABEL_9;
  }

  *&length[1] = 0;
  return v8;
}

- (id)mediaControlParamsWithStoreResponse:(id)a3
{
  v3 = a3;
  *&length[1] = 0;
  if (!a3)
  {
    v6 = 0;
    fairPlaySession = 0;
    goto LABEL_12;
  }

  fairPlaySession = self->_fairPlaySession;
  if (fairPlaySession)
  {
    if (!self->_fairPlayDeallocator)
    {
      goto LABEL_13;
    }

    if (self->_protectionInfo)
    {
      fairPlaySession = *MEMORY[0x1E6961A40];
      v6 = a3;
LABEL_9:
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObject:v6 forKey:fairPlaySession];
      goto LABEL_10;
    }

    length[0] = 0;
    TBGzuU3p5n1n(fairPlaySession, [a3 bytes], objc_msgSend(a3, "length"), &length[1], length);
    if (FAIRPLAY_CALL_LOG(v7))
    {
LABEL_13:
      fairPlaySession = 0;
    }

    else
    {
      fairPlaySession = *MEMORY[0x1E6961A38];
      v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *&length[1], length[0], self->_fairPlayDeallocator);
      if (v8)
      {
        v6 = v8;
        *&length[1] = 0;
        goto LABEL_9;
      }
    }
  }

  v6 = 0;
  v3 = 0;
LABEL_10:
  if (*&length[1])
  {
    v9 = jEHf8Xzsv8K(*&length[1]);
    FAIRPLAY_CALL_LOG(v9);
  }

LABEL_12:

  return v3;
}

@end