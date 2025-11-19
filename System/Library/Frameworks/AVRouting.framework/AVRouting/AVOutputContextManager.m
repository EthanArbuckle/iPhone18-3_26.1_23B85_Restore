@interface AVOutputContextManager
+ (id)outputContextManagerForAllOutputContexts;
- (AVOutputContextManager)initWithOutputContextManagerImpl:(id)a3;
- (void)dealloc;
- (void)outputContextManagerImpl:(id)a3 observedFailureToConnectToOutputDevice:(id)a4 reason:(id)a5 didFailToConnectToOutputDeviceDictionary:(id)a6;
- (void)outputContextManagerImplDidExpireWithReplacementImpl:(id)a3;
@end

@implementation AVOutputContextManager

+ (id)outputContextManagerForAllOutputContexts
{
  if (outputContextManagerForAllOutputContexts_onceToken != -1)
  {
    +[AVOutputContextManager outputContextManagerForAllOutputContexts];
  }

  return outputContextManagerForAllOutputContexts_sSharedManager;
}

void __66__AVOutputContextManager_outputContextManagerForAllOutputContexts__block_invoke()
{
  v0 = +[AVFigEndpointUIAgentOutputContextManagerImpl copySharedEndpointUIAgent];
  v1 = [[AVFigEndpointUIAgentOutputContextManagerImpl alloc] initWithEndpointUIAgent:v0];
  outputContextManagerForAllOutputContexts_sSharedManager = [[AVOutputContextManager alloc] initWithOutputContextManagerImpl:v1];
  AVOutputContextDestinationChangeCancellationReasonAuthorizationSkipped_block_invoke_notificationToken = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  if (v0)
  {
    CFRelease(v0);
  }
}

void __66__AVOutputContextManager_outputContextManagerForAllOutputContexts__block_invoke_2()
{
  v0 = +[AVFigEndpointUIAgentOutputContextManagerImpl copySharedEndpointUIAgent];
  v1 = [[AVFigEndpointUIAgentOutputContextManagerImpl alloc] initWithEndpointUIAgent:v0];
  [outputContextManagerForAllOutputContexts_sSharedManager outputContextManagerImplDidExpireWithReplacementImpl:v1];

  if (v0)
  {

    CFRelease(v0);
  }
}

- (void)dealloc
{
  ivars = self->_ivars;
  if (ivars)
  {

    ivars = self->_ivars;
    ivarAccessQueue = ivars->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      ivars = self->_ivars;
    }
  }

  v5.receiver = self;
  v5.super_class = AVOutputContextManager;
  [(AVOutputContextManager *)&v5 dealloc];
}

- (void)outputContextManagerImpl:(id)a3 observedFailureToConnectToOutputDevice:(id)a4 reason:(id)a5 didFailToConnectToOutputDeviceDictionary:(id)a6
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = v10;
  if (a5)
  {
    [v10 setObject:a5 forKeyedSubscript:@"AVOutputContextManagerFailureReasonKey"];
  }

  if (a4)
  {
    [v11 setObject:a4 forKeyedSubscript:@"AVOutputContextManagerOutputDeviceKey"];
  }

  if (a6)
  {
    [v11 setObject:a6 forKeyedSubscript:@"AVOutputContextManagerDidFailToConnectToOutputDeviceUserInfoKey"];
  }

  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)outputContextManagerImplDidExpireWithReplacementImpl:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  ivarAccessQueue = self->_ivars->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AVOutputContextManager_outputContextManagerImplDidExpireWithReplacementImpl___block_invoke;
  block[3] = &unk_1E794EE90;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [v8[5] setParentOutputContextManager:0];
  [a3 setParentOutputContextManager:self];

  _Block_object_dispose(&v7, 8);
}

id __79__AVOutputContextManager_outputContextManagerImplDidExpireWithReplacementImpl___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 32) + 8) + 16);

  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 16) = result;
  return result;
}

- (AVOutputContextManager)initWithOutputContextManagerImpl:(id)a3
{
  v10.receiver = self;
  v10.super_class = AVOutputContextManager;
  v4 = [(AVOutputContextManager *)&v10 init];
  if (v4 && (v5 = objc_alloc_init(AVOutputContextManagerInternal), (v4->_ivars = v5) != 0) && (v4->_ivars->impl = a3) != 0)
  {
    v6 = av_readwrite_dispatch_queue_create("com.apple.avfoundation.outputcontextmanager.ivars");
    OUTLINED_FUNCTION_0_3(v6);
    [*(v7 + 16) setParentOutputContextManager:v4];
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end