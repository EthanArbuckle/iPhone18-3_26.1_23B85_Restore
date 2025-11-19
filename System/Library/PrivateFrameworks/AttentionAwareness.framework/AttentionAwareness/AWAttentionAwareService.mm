@interface AWAttentionAwareService
+ (id)sharedAttentionService;
- (AWAttentionAwareService)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)LockScreenStateChanging:(BOOL)a3;
- (void)MotionStateChanging:(BOOL)a3;
- (void)_createUnitTestScheduler;
- (void)addClient:(id)a3 clientConfig:(id)a4 clientIndex:(int)a5 clientId:(id)a6 unitTestMode:(BOOL)a7 reply:(id)a8 subscribeForStreamingEvents:(BOOL)a9;
- (void)carPlayStateChanging:(BOOL)a3;
- (void)clientCountChangedFrom:(unint64_t)a3 to:(unint64_t)a4 forScheduler:(id)a5;
- (void)crashWithReply:(id)a3;
- (void)dealloc;
- (void)getDebugPreferences:(id)a3;
- (void)getSupportedEventsWithReply:(id)a3;
- (void)getUnitTestSamplerWithReply:(id)a3;
- (void)outputPowerLogWithReply:(id)a3;
- (void)processHIDEvent:(__IOHIDEvent *)a3 mask:(unint64_t)a4 timestamp:(unint64_t)a5 senderID:(__IOHIDService *)a6;
- (void)screenStateChanging:(BOOL)a3;
- (void)setDebugPreference:(id)a3 reply:(id)a4;
- (void)setSmartCoverClosed:(BOOL)a3;
@end

@implementation AWAttentionAwareService

- (void)LockScreenStateChanging:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (currentLogLevel == 5)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = absTimeNS();
      if (v6 == -1)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v6 / 1000000000.0;
      }

      v12 = "IS NOT";
      if (v3)
      {
        v12 = "IS";
      }

      *buf = 134218242;
      v22 = v7;
      v23 = 2080;
      *v24 = v12;
      v13 = "%13.5f: Device %s on lock screen";
      v14 = v5;
      v15 = 22;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (currentLogLevel >= 6)
  {
    v5 = _AALog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/AttentionAwareService.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/AttentionAwareService.m"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v8 = i;
      }

      else if (!*(i - 1))
      {
        v10 = absTimeNS();
        if (v10 == -1)
        {
          v11 = INFINITY;
        }

        else
        {
          v11 = v10 / 1000000000.0;
        }

        v16 = "IS NOT";
        *buf = 136315906;
        v22 = *&v8;
        v23 = 1024;
        if (v3)
        {
          v16 = "IS";
        }

        *v24 = 539;
        *&v24[4] = 2048;
        *&v24[6] = v11;
        v25 = 2080;
        v26 = v16;
        v13 = "%30s:%-4d: %13.5f: Device %s on lock screen";
        v14 = v5;
        v15 = 38;
LABEL_23:
        _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_24:

        break;
      }
    }
  }

  schedulers = self->_schedulers;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__AWAttentionAwareService_LockScreenStateChanging___block_invoke;
  v19[3] = &__block_descriptor_33_e38_v32__0__NSString_8__AWScheduler_16_B24l;
  v20 = v3;
  [(NSMutableDictionary *)schedulers enumerateKeysAndObjectsUsingBlock:v19];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)MotionStateChanging:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (currentLogLevel == 5)
  {
    v5 = _AALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = absTimeNS();
      if (v6 == -1)
      {
        v7 = INFINITY;
      }

      else
      {
        v7 = v6 / 1000000000.0;
      }

      v12 = "IS NOT";
      if (v3)
      {
        v12 = "IS";
      }

      *buf = 134218242;
      v22 = v7;
      v23 = 2080;
      *v24 = v12;
      v13 = "%13.5f: Device %s stationary";
      v14 = v5;
      v15 = 22;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (currentLogLevel >= 6)
  {
    v5 = _AALog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v8 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/AttentionAwareService.m";
    for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/AttentionAwareService.m"; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v8 = i;
      }

      else if (!*(i - 1))
      {
        v10 = absTimeNS();
        if (v10 == -1)
        {
          v11 = INFINITY;
        }

        else
        {
          v11 = v10 / 1000000000.0;
        }

        v16 = "IS NOT";
        *buf = 136315906;
        v22 = *&v8;
        v23 = 1024;
        if (v3)
        {
          v16 = "IS";
        }

        *v24 = 531;
        *&v24[4] = 2048;
        *&v24[6] = v11;
        v25 = 2080;
        v26 = v16;
        v13 = "%30s:%-4d: %13.5f: Device %s stationary";
        v14 = v5;
        v15 = 38;
LABEL_23:
        _os_log_impl(&dword_1BB2EF000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_24:

        break;
      }
    }
  }

  schedulers = self->_schedulers;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47__AWAttentionAwareService_MotionStateChanging___block_invoke;
  v19[3] = &__block_descriptor_33_e38_v32__0__NSString_8__AWScheduler_16_B24l;
  v20 = v3;
  [(NSMutableDictionary *)schedulers enumerateKeysAndObjectsUsingBlock:v19];
  v18 = *MEMORY[0x1E69E9840];
}

- (void)carPlayStateChanging:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_queue);
  schedulers = self->_schedulers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AWAttentionAwareService_carPlayStateChanging___block_invoke;
  v6[3] = &__block_descriptor_33_e38_v32__0__NSString_8__AWScheduler_16_B24l;
  v7 = a3;
  [(NSMutableDictionary *)schedulers enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)screenStateChanging:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_queue);
  schedulers = self->_schedulers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AWAttentionAwareService_screenStateChanging___block_invoke;
  v6[3] = &__block_descriptor_33_e38_v32__0__NSString_8__AWScheduler_16_B24l;
  v7 = a3;
  [(NSMutableDictionary *)schedulers enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)crashWithReply:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696B0B8] currentConnection];
  HasEntitlement = connectionHasEntitlement(v4, @"com.apple.private.attentionawareness.unittest");

  if (HasEntitlement)
  {
    if (MGGetBoolAnswer())
    {
      abort();
    }

    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A798];
    v26 = *MEMORY[0x1E696A578];
    v27[0] = @" Client not allowed to crash the process";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v9 = v6;
    v10 = v7;
    v11 = 22;
  }

  else
  {
    if (currentLogLevel >= 3)
    {
      v12 = _AALog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = absTimeNS();
        if (v17 == -1)
        {
          v18 = INFINITY;
        }

        else
        {
          v18 = v17 / 1000000000.0;
        }

        v19 = [MEMORY[0x1E696B0B8] currentConnection];
        *buf = 134218240;
        v23 = v18;
        v24 = 1024;
        v25 = [v19 processIdentifier];
        _os_log_error_impl(&dword_1BB2EF000, v12, OS_LOG_TYPE_ERROR, "%13.5f: process %d not entitled to use unit test sampling", buf, 0x12u);
      }
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A798];
    v20 = *MEMORY[0x1E696A578];
    v21 = @" Client not entitled to use crash the process";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v9 = v13;
    v10 = v14;
    v11 = 1;
  }

  v15 = [v9 errorWithDomain:v10 code:v11 userInfo:v8];

  v3[2](v3, v15);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)getUnitTestSamplerWithReply:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v5 = [MEMORY[0x1E696B0B8] currentConnection];
  HasEntitlement = connectionHasEntitlement(v5, @"com.apple.private.attentionawareness.unittest");

  if (HasEntitlement)
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__AWAttentionAwareService_getUnitTestSamplerWithReply___block_invoke;
    v14[3] = &unk_1E7F37F00;
    v14[4] = self;
    v14[5] = &v15;
    dispatch_sync(queue, v14);
  }

  else if (currentLogLevel >= 3)
  {
    v8 = _AALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = absTimeNS();
      if (v10 == -1)
      {
        v11 = INFINITY;
      }

      else
      {
        v11 = v10 / 1000000000.0;
      }

      v12 = [MEMORY[0x1E696B0B8] currentConnection];
      v13 = [v12 processIdentifier];
      *buf = 134218240;
      v22 = v11;
      v23 = 1024;
      v24 = v13;
      _os_log_error_impl(&dword_1BB2EF000, v8, OS_LOG_TYPE_ERROR, "%13.5f: process %d not entitled to use unit test sampling", buf, 0x12u);
    }
  }

  v4[2](v4, v16[5]);
  _Block_object_dispose(&v15, 8);

  v9 = *MEMORY[0x1E69E9840];
}

void __55__AWAttentionAwareService_getUnitTestSamplerWithReply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createUnitTestScheduler];
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:@"Unit test scheduler"];
  v6 = [v2 attentionSampler];

  v3 = [v6 unitTestSampler];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_createUnitTestScheduler
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(NSMutableDictionary *)self->_schedulers valueForKey:@"Unit test scheduler"];

  if (!v3)
  {
    schedulers = self->_schedulers;
    v5 = +[AWScheduler sharedUnitTestScheduler];
    [(NSMutableDictionary *)schedulers setObject:v5 forKey:@"Unit test scheduler"];

    v6 = [(NSMutableDictionary *)self->_schedulers objectForKeyedSubscript:@"Unit test scheduler"];
    [v6 setObserver:self];
  }
}

- (void)outputPowerLogWithReply:(id)a3
{
  v7 = a3;
  v3 = [MEMORY[0x1E696B0B8] currentConnection];
  HasEntitlement = connectionHasEntitlement(v3, @"com.apple.private.attentionawareness.configuration");

  if (HasEntitlement)
  {
    v5 = +[AWSampleLogger sharedLogger];
    [v5 outputPowerLog];

    v6 = @"success";
  }

  else
  {
    v6 = @"Not entitled";
  }

  v7[2](v7, v6);
}

- (void)setDebugPreference:(id)a3 reply:(id)a4
{
  v17 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E696B0B8] currentConnection];
  HasEntitlement = connectionHasEntitlement(v6, @"com.apple.private.attentionawareness.configuration");

  if (!HasEntitlement)
  {
    v9 = @"Not entitled";
    goto LABEL_19;
  }

  v8 = [v17 rangeOfString:@"="];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no value specified for key %@", v17];
    goto LABEL_19;
  }

  v10 = v8;
  v11 = [v17 substringToIndex:v8];
  v12 = [v17 substringFromIndex:v10 + 1];
  if (![(__CFString *)v11 isEqualToString:@"LogLevel"])
  {
    if (![(__CFString *)v11 isEqualToString:@"PearlDisabled"])
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid key %@", v11];
      goto LABEL_18;
    }

    if ([v12 BOOLValue])
    {
      v15 = [MEMORY[0x1E696AD98] numberWithBool:1];
      goto LABEL_14;
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v13 = [v12 intValue];
  if ((v13 & ~(v13 >> 31)) >= 7)
  {
    v14 = 7;
  }

  else
  {
    v14 = v13 & ~(v13 >> 31);
  }

  currentLogLevel = v14;
  if (v13 == 5)
  {
    goto LABEL_15;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInt:?];
LABEL_14:
  v16 = v15;
LABEL_16:
  CFPreferencesSetAppValue(v11, v16, @"com.apple.AttentionAwareness");
  CFPreferencesAppSynchronize(@"com.apple.AttentionAwareness");
  notify_post("com.apple.AttentionAwareness.PreferencesChanged");
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"set %@ to %@", v11, v16];

LABEL_18:
LABEL_19:
  v5[2](v5, v9);
}

- (void)getDebugPreferences:(id)a3
{
  v3 = a3;
  CFPreferencesAppSynchronize(@"com.apple.AttentionAwareness");
  v4 = CFPreferencesCopyMultiple(0, @"com.apple.AttentionAwareness", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v3[2](v3, v4);
}

- (void)getSupportedEventsWithReply:(id)a3
{
  v6 = a3;
  if (deviceSupportsPearl())
  {
    v4 = 207;
  }

  else
  {
    v4 = 79;
  }

  if (MGGetBoolAnswer())
  {
    v5 = v4 | 0x200;
  }

  else
  {
    v5 = v4;
  }

  (*(a3 + 2))(v6, v5);
}

- (void)setSmartCoverClosed:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__AWAttentionAwareService_setSmartCoverClosed___block_invoke;
  v4[3] = &unk_1E7F37FC8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

uint64_t __47__AWAttentionAwareService_setSmartCoverClosed___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__AWAttentionAwareService_setSmartCoverClosed___block_invoke_2;
  v3[3] = &__block_descriptor_33_e38_v32__0__NSString_8__AWScheduler_16_B24l;
  v4 = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)processHIDEvent:(__IOHIDEvent *)a3 mask:(unint64_t)a4 timestamp:(unint64_t)a5 senderID:(__IOHIDService *)a6
{
  v7 = a5;
  if (!a5)
  {
    v7 = absTimeNS();
  }

  CFRetain(a3);
  if (a6)
  {
    CFRetain(a6);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AWAttentionAwareService_processHIDEvent_mask_timestamp_senderID___block_invoke;
  block[3] = &unk_1E7F37598;
  block[6] = a4;
  block[7] = a6;
  block[4] = self;
  block[5] = v7;
  block[8] = a3;
  dispatch_async(queue, block);
}

void __67__AWAttentionAwareService_processHIDEvent_mask_timestamp_senderID___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (currentLogLevel < 7)
  {
    goto LABEL_17;
  }

  v2 = _AALog();
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_16;
  }

  v3 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/AttentionAwareService.m";
  for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/AttentionAwareService.m"; *(i - 1) == 47; ++i)
  {
    v3 = i;
LABEL_8:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_8;
  }

  v5 = absTimeNS();
  if (v5 == -1)
  {
    v6 = INFINITY;
  }

  else
  {
    v6 = v5 / 1000000000.0;
  }

  v7 = *(a1 + 40);
  if (v7 == -1)
  {
    v8 = INFINITY;
  }

  else
  {
    v8 = v7 / 1000000000.0;
  }

  v9 = getEventMaskDescription(*(a1 + 48));
  *buf = 136316162;
  v31 = v3;
  v32 = 1024;
  v33 = 307;
  v34 = 2048;
  v35 = v6;
  v36 = 2048;
  v37 = v8;
  v38 = 2112;
  v39 = v9;
  _os_log_impl(&dword_1BB2EF000, v2, OS_LOG_TYPE_DEFAULT, "%30s:%-4d: %13.5f: received event %13.5f: %@", buf, 0x30u);

LABEL_16:
LABEL_17:
  v10 = *(a1 + 48);
  v11 = v10 > 8;
  v12 = (1 << v10) & 0x114;
  if (v11 || v12 == 0)
  {
    goto LABEL_31;
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    v15 = CFGetTypeID(*(a1 + 56));
  }

  else
  {
    v15 = -1;
  }

  if (v15 != IOHIDServiceGetTypeID())
  {
    if (v15 == IOHIDServiceClientGetTypeID())
    {
      Property = IOHIDServiceClientCopyProperty(v14, @"displayUUID");
      if (!Property)
      {
        goto LABEL_32;
      }

LABEL_29:
      v17 = Property;
      v18 = CFGetTypeID(Property);
      if (v18 == CFStringGetTypeID())
      {
        Property = v17;
        goto LABEL_32;
      }
    }

LABEL_31:
    Property = 0;
    goto LABEL_32;
  }

  Property = IOHIDServiceGetProperty();
  if (Property)
  {
    goto LABEL_29;
  }

LABEL_32:
  v19 = *(*(a1 + 32) + 16);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __67__AWAttentionAwareService_processHIDEvent_mask_timestamp_senderID___block_invoke_69;
  v25[3] = &unk_1E7F37570;
  v20 = *(a1 + 56);
  v27 = *(a1 + 64);
  v28 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v29 = v20;
  v21 = Property;
  v26 = v21;
  [v19 enumerateKeysAndObjectsUsingBlock:v25];
  CFRelease(*(a1 + 64));
  v22 = *(a1 + 56);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = +[AWEventStatistics sharedStatistics];
  [v23 logEvent:*(a1 + 48)];

  v24 = *MEMORY[0x1E69E9840];
}

void __67__AWAttentionAwareService_processHIDEvent_mask_timestamp_senderID___block_invoke_69(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 allowHIDEvents])
  {
    [v4 processHIDEvent:a1[5] mask:a1[6] timestamp:a1[7] senderID:a1[8] displayUUID:a1[4]];
  }
}

- (void)addClient:(id)a3 clientConfig:(id)a4 clientIndex:(int)a5 clientId:(id)a6 unitTestMode:(BOOL)a7 reply:(id)a8 subscribeForStreamingEvents:(BOOL)a9
{
  v10 = a7;
  v45 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  if (v10 && ([MEMORY[0x1E696B0B8] currentConnection], v19 = objc_claimAutoreleasedReturnValue(), HasEntitlement = connectionHasEntitlement(v19, @"com.apple.private.attentionawareness.unittest"), v19, (HasEntitlement & 1) == 0))
  {
    if (currentLogLevel >= 3)
    {
      v22 = _AALog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v28 = absTimeNS();
        if (v28 == -1)
        {
          v29 = INFINITY;
        }

        else
        {
          v29 = v28 / 1000000000.0;
        }

        v30 = [v16 identifier];
        *buf = 134218242;
        v42 = v29;
        v43 = 2112;
        v44 = v30;
        _os_log_error_impl(&dword_1BB2EF000, v22, OS_LOG_TYPE_ERROR, "%13.5f: client %@ not entitled for unit test access", buf, 0x16u);
      }
    }

    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A798];
    v39 = *MEMORY[0x1E696A578];
    v40 = @" Client not entitled to unit test access";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v26 = [v23 errorWithDomain:v24 code:1 userInfo:v25];

    v18[2](v18, 0, 0xFFFFFFFFLL, v26);
  }

  else
  {
    queue = self->_queue;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __118__AWAttentionAwareService_addClient_clientConfig_clientIndex_clientId_unitTestMode_reply_subscribeForStreamingEvents___block_invoke;
    v31[3] = &unk_1E7F37548;
    v37 = v10;
    v31[4] = self;
    v32 = v16;
    v35 = v18;
    v38 = a9;
    v33 = v17;
    v34 = v15;
    v36 = a5;
    dispatch_sync(queue, v31);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __118__AWAttentionAwareService_addClient_clientConfig_clientIndex_clientId_unitTestMode_reply_subscribeForStreamingEvents___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 76) == 1)
  {
    [*(a1 + 32) _createUnitTestScheduler];
    v2 = [*(*(a1 + 32) + 16) valueForKey:@"Unit test scheduler"];
  }

  else
  {
    v3 = [*(a1 + 40) activateMotionDetect];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 getMotionDetectScheduler];
    }

    else
    {
      [v4 getFaceDetectScheduler];
    }
    v2 = ;
  }

  v5 = v2;
  if (([*(a1 + 40) eventMask] & 0x80) != 0 && (block[0] = MEMORY[0x1E69E9820], block[1] = 3221225472, block[2] = __118__AWAttentionAwareService_addClient_clientConfig_clientIndex_clientId_unitTestMode_reply_subscribeForStreamingEvents___block_invoke_2, block[3] = &unk_1E7F38038, block[4] = *(a1 + 32), CARColorFilterIntensityBlueYellowKey_block_invoke_onceToken != -1))
  {
    dispatch_once(&CARColorFilterIntensityBlueYellowKey_block_invoke_onceToken, block);
    if (v5)
    {
      goto LABEL_10;
    }
  }

  else if (v5)
  {
LABEL_10:
    if (*(a1 + 77) == 1 && ([v5 resetInterruptedStreamingClientWithIdentifier:*(a1 + 48)], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      if ([(AWRemoteClient *)v6 invalid])
      {
        __assert_rtn("[AWAttentionAwareService addClient:clientConfig:clientIndex:clientId:unitTestMode:reply:subscribeForStreamingEvents:]_block_invoke", "AttentionAwareService.m", 258, "!client.invalid");
      }

      v8 = 0;
    }

    else
    {
      v9 = [AWRemoteClient alloc];
      v10 = *(a1 + 56);
      v11 = [MEMORY[0x1E696B0B8] currentConnection];
      v12 = *(a1 + 72);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v30 = 0;
      v7 = [(AWRemoteClient *)v9 initWithProxy:v10 connection:v11 clientConfig:v13 clientIndex:v12 clientId:v14 scheduler:v5 error:&v30];
      v8 = v30;

      if (!v7)
      {
        if (currentLogLevel >= 3)
        {
          v17 = _AALog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v20 = absTimeNS();
            if (v20 == -1)
            {
              v21 = INFINITY;
            }

            else
            {
              v21 = v20 / 1000000000.0;
            }

            *buf = 134218242;
            v35 = v21;
            v36 = 2112;
            v37 = v8;
            _os_log_error_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_ERROR, "%13.5f: addClient failed: %@", buf, 0x16u);
          }
        }

        v7 = 0;
        v18 = *(a1 + 64);
        v19 = 0xFFFFFFFFLL;
        goto LABEL_23;
      }

      if (*(a1 + 77) == 1)
      {
        v15 = [(AWRemoteClient *)v7 clientId];
        v16 = [v5 addStreamingClient:v7 withIdentifier:v15];

        v8 = v16;
      }

      else
      {
        [v5 addClient:v7];
      }
    }

    v18 = *(a1 + 64);
    v19 = [(AWRemoteClient *)v7 clientIndex];
LABEL_23:
    (*(v18 + 16))(v18, v7, v19, v8);

    goto LABEL_33;
  }

  if (currentLogLevel >= 3)
  {
    v22 = _AALog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = absTimeNS();
      if (v27 == -1)
      {
        v28 = INFINITY;
      }

      else
      {
        v28 = v27 / 1000000000.0;
      }

      v29 = *(a1 + 40);
      *buf = 134218242;
      v35 = v28;
      v36 = 2112;
      v37 = v29;
      _os_log_error_impl(&dword_1BB2EF000, v22, OS_LOG_TYPE_ERROR, "%13.5f: Unable to get a scheduler for client %@", buf, 0x16u);
    }
  }

  v23 = MEMORY[0x1E696ABC0];
  v24 = *MEMORY[0x1E696A798];
  v32 = *MEMORY[0x1E696A578];
  v33 = @" Unable to get a suitable scheduler for client";
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v8 = [v23 errorWithDomain:v24 code:42 userInfo:v25];

  (*(*(a1 + 64) + 16))();
LABEL_33:

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __118__AWAttentionAwareService_addClient_clientConfig_clientIndex_clientId_unitTestMode_reply_subscribeForStreamingEvents___block_invoke_2(uint64_t a1)
{
  v2 = [[LockScreenStateObserver alloc] initWithCallbackQueue:*(*(a1 + 32) + 8) observer:?];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)clientCountChangedFrom:(unint64_t)a3 to:(unint64_t)a4 forScheduler:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  [(AWAttentionAwareService *)self setClientCount:a4 - a3 + [(AWAttentionAwareService *)self clientCount]];
  if (currentLogLevel == 5)
  {
    v9 = _AALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = absTimeNS();
      if (v10 == -1)
      {
        v11 = INFINITY;
      }

      else
      {
        v11 = v10 / 1000000000.0;
      }

      v24 = 134218240;
      v25 = v11;
      v26 = 2048;
      *v27 = [(AWAttentionAwareService *)self clientCount];
      v16 = "%13.5f: %lu total attention aware service clients";
      v17 = v9;
      v18 = 22;
LABEL_19:
      _os_log_impl(&dword_1BB2EF000, v17, OS_LOG_TYPE_DEFAULT, v16, &v24, v18);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (currentLogLevel >= 6)
  {
    v9 = _AALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "/Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/AttentionAwareService.m";
      for (i = "Library/Caches/com.apple.xbs/Sources/AttentionAwareness/Framework/XPCService/CoreService/AttentionAwareService.m"; ; ++i)
      {
        if (*(i - 1) == 47)
        {
          v12 = i;
        }

        else if (!*(i - 1))
        {
          v14 = absTimeNS();
          if (v14 == -1)
          {
            v15 = INFINITY;
          }

          else
          {
            v15 = v14 / 1000000000.0;
          }

          v24 = 136315906;
          v25 = *&v12;
          v26 = 1024;
          *v27 = 171;
          *&v27[4] = 2048;
          *&v27[6] = v15;
          v28 = 2048;
          v29 = [(AWAttentionAwareService *)self clientCount];
          v16 = "%30s:%-4d: %13.5f: %lu total attention aware service clients";
          v17 = v9;
          v18 = 38;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  if (!a4)
  {
    v20 = [(NSMutableDictionary *)self->_schedulers valueForKey:@"Unit test scheduler"];
    if (v20)
    {
      v21 = v20;
      v22 = [(NSMutableDictionary *)self->_schedulers objectForKeyedSubscript:@"Unit test scheduler"];

      if (v22 == v8)
      {
        v23 = [(NSMutableDictionary *)self->_schedulers objectForKeyedSubscript:@"Unit test scheduler"];
        [v23 setObserver:0];

        [(NSMutableDictionary *)self->_schedulers removeObjectForKey:@"Unit test scheduler"];
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  HasEntitlement = connectionHasEntitlement(v7, @"com.apple.private.attentionawareness");
  if (HasEntitlement)
  {
    v9 = xpcInterfaceForScheduler();
    [v7 setExportedInterface:v9];

    [v7 setExportedObject:self];
    objc_initWeak(&location, v7);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__AWAttentionAwareService_listener_shouldAcceptNewConnection___block_invoke;
    v11[3] = &unk_1E7F37910;
    v11[4] = self;
    objc_copyWeak(&v12, &location);
    [v7 setInvalidationHandler:v11];
    [v7 resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return HasEntitlement;
}

void __62__AWAttentionAwareService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__AWAttentionAwareService_listener_shouldAcceptNewConnection___block_invoke_2;
  v3[3] = &unk_1E7F37910;
  v3[4] = v1;
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(v2, v3);
  objc_destroyWeak(&v4);
}

void __62__AWAttentionAwareService_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__AWAttentionAwareService_listener_shouldAcceptNewConnection___block_invoke_3;
  v2[3] = &unk_1E7F37520;
  objc_copyWeak(&v3, (a1 + 40));
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
  objc_destroyWeak(&v3);
}

void __62__AWAttentionAwareService_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v4 removeInvalidClientsWithConnection:WeakRetained];
}

- (void)dealloc
{
  supportedEventsNotify = self->_supportedEventsNotify;
  if (supportedEventsNotify != -1)
  {
    notify_cancel(supportedEventsNotify);
  }

  v4.receiver = self;
  v4.super_class = AWAttentionAwareService;
  [(AWAttentionAwareService *)&v4 dealloc];
}

- (AWAttentionAwareService)init
{
  v29.receiver = self;
  v29.super_class = AWAttentionAwareService;
  v2 = [(AWAttentionAwareService *)&v29 init];
  if (v2)
  {
    v3 = awQueue(1);
    queue = v2->_queue;
    v2->_queue = v3;

    if (deviceSupportsPearl())
    {
      v5 = 207;
    }

    else
    {
      v5 = 79;
    }

    v6 = MGGetBoolAnswer();
    v7 = v5 | 0x200;
    if (!v6)
    {
      v7 = v5;
    }

    v2->_supportedEvents = v7;
    v8 = v2;
    v9 = v2->_queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __31__AWAttentionAwareService_init__block_invoke;
    handler[3] = &unk_1E7F37BC0;
    v28 = v8;
    notify_register_dispatch("com.apple.AttentionAwareness.SupportedEventsChanged", &v8->_supportedEventsNotify, v9, handler);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    schedulers = v8->_schedulers;
    v8->_schedulers = v10;

    v12 = v8->_schedulers;
    v13 = +[AWScheduler sharedScheduler];
    [(NSMutableDictionary *)v12 setObject:v13 forKey:@"Face detect scheduler"];

    v14 = [(NSMutableDictionary *)v8->_schedulers objectForKeyedSubscript:@"Face detect scheduler"];
    [v14 setObserver:v8];

    if (MGGetBoolAnswer())
    {
      v15 = v8->_schedulers;
      v16 = +[AWScheduler sharedMotionDetectScheduler];
      [(NSMutableDictionary *)v15 setObject:v16 forKey:@"Motion detect scheduler"];

      v17 = [(NSMutableDictionary *)v8->_schedulers objectForKeyedSubscript:@"Motion detect scheduler"];
      [v17 setObserver:v8];
    }

    v18 = [[ScreenStateObserver alloc] initWithCallbackQueue:v2->_queue observer:v8];
    screenStateObserver = v8->_screenStateObserver;
    v8->_screenStateObserver = v18;

    v20 = [[CarPlayStateObserver alloc] initWithCallbackQueue:v2->_queue observer:v8];
    carPlayStateObserver = v8->_carPlayStateObserver;
    v8->_carPlayStateObserver = v20;

    v22 = [[MotionActivityObserver alloc] initWithCallbackQueue:v2->_queue observer:v8];
    motionActivityObserver = v8->_motionActivityObserver;
    v8->_motionActivityObserver = v22;

    v24 = +[AWPersistentDataManager sharedManager];
    [v24 loadPersistentData];

    v25 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.AttentionAwareness"];
    [v25 setDelegate:v8];
    [v25 resume];
  }

  return v2;
}

uint64_t __31__AWAttentionAwareService_init__block_invoke(uint64_t a1)
{
  if (deviceSupportsPearl())
  {
    v2 = 207;
  }

  else
  {
    v2 = 79;
  }

  result = MGGetBoolAnswer();
  v4 = v2 | 0x200;
  if (!result)
  {
    v4 = v2;
  }

  v5 = *(a1 + 32);
  if (*(v5 + 32) != v4)
  {
    *(v5 + 32) = v4;
    v6 = *(*(a1 + 32) + 16);

    return [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_23];
  }

  return result;
}

+ (id)sharedAttentionService
{
  if (sharedAttentionService_onceToken != -1)
  {
    dispatch_once(&sharedAttentionService_onceToken, &__block_literal_global_454);
  }

  v3 = sharedAttentionService_attentionService;

  return v3;
}

uint64_t __49__AWAttentionAwareService_sharedAttentionService__block_invoke()
{
  sharedAttentionService_attentionService = objc_alloc_init(AWAttentionAwareService);

  return MEMORY[0x1EEE66BB8]();
}

@end