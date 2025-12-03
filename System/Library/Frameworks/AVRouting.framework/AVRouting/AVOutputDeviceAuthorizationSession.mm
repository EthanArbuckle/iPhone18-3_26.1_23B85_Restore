@interface AVOutputDeviceAuthorizationSession
+ (AVOutputDeviceAuthorizationSession)outputDeviceAuthorizationSessionWithEndpointUIAgent:(OpaqueFigEndpointUIAgent *)agent;
+ (id)sharedAuthorizationSession;
+ (void)initialize;
- (AVOutputDeviceAuthorizationSession)initWithOutputDeviceAuthorizationSessionImpl:(id)impl;
- (BOOL)outputDeviceAuthorizationSessionImpl:(id)impl shouldRetryAuthorizationRequest:(id)request reason:(id)reason;
- (id)impl;
- (void)dealloc;
- (void)outputDeviceAuthorizationSessionImpl:(id)impl didProvideAuthorizationRequest:(id)request;
- (void)outputDeviceAuthorizationSessionImplDidExpireWithReplacementImpl:(id)impl;
@end

@implementation AVOutputDeviceAuthorizationSession

+ (AVOutputDeviceAuthorizationSession)outputDeviceAuthorizationSessionWithEndpointUIAgent:(OpaqueFigEndpointUIAgent *)agent
{
  v3 = [[AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl alloc] initWithFigEndpointUIAgent:agent];
  v4 = [[AVOutputDeviceAuthorizationSession alloc] initWithOutputDeviceAuthorizationSessionImpl:v3];

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

+ (id)sharedAuthorizationSession
{
  if (sharedAuthorizationSession_onceToken != -1)
  {
    +[AVOutputDeviceAuthorizationSession sharedAuthorizationSession];
  }

  return sharedAuthorizationSession_session;
}

void __64__AVOutputDeviceAuthorizationSession_sharedAuthorizationSession__block_invoke()
{
  v0 = +[AVFigEndpointUIAgentOutputContextManagerImpl copySharedEndpointUIAgent];
  v1 = [[AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl alloc] initWithFigEndpointUIAgent:v0];
  sharedAuthorizationSession_session = [[AVOutputDeviceAuthorizationSession alloc] initWithOutputDeviceAuthorizationSessionImpl:v1];
  AVOutputDeviceAuthorizationTokenTypePIN_block_invoke_notificationToken = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  if (v0)
  {

    CFRelease(v0);
  }
}

void __64__AVOutputDeviceAuthorizationSession_sharedAuthorizationSession__block_invoke_2()
{
  v0 = +[AVFigEndpointUIAgentOutputContextManagerImpl copySharedEndpointUIAgent];
  v1 = [[AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl alloc] initWithFigEndpointUIAgent:v0];
  [sharedAuthorizationSession_session outputDeviceAuthorizationSessionImplDidExpireWithReplacementImpl:v1];

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
  v5.super_class = AVOutputDeviceAuthorizationSession;
  [(AVOutputDeviceAuthorizationSession *)&v5 dealloc];
}

- (id)impl
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__5;
  v10 = __Block_byref_object_dispose__5;
  v11 = 0;
  ivarAccessQueue = self->_ivars->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVOutputDeviceAuthorizationSession_impl__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __42__AVOutputDeviceAuthorizationSession_impl__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)outputDeviceAuthorizationSessionImpl:(id)impl didProvideAuthorizationRequest:(id)request
{
  v12 = *MEMORY[0x1E69E9840];
  delegate = [(AVOutputDeviceAuthorizationSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (dword_1EB46D568)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(AVOutputDeviceAuthorizationSessionDelegate *)delegate outputDeviceAuthorizationSession:self didProvideAuthorizationRequest:request, v10, v11];
  }

  else if (dword_1EB46D568)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)outputDeviceAuthorizationSessionImpl:(id)impl shouldRetryAuthorizationRequest:(id)request reason:(id)reason
{
  v15 = *MEMORY[0x1E69E9840];
  delegate = [(AVOutputDeviceAuthorizationSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (dword_1EB46D568)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = [(AVOutputDeviceAuthorizationSessionDelegate *)delegate outputDeviceAuthorizationSession:self shouldRetryAuthorizationRequest:request reason:reason, v13, v14];
  }

  else
  {
    if (dword_1EB46D568)
    {
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)outputDeviceAuthorizationSessionImplDidExpireWithReplacementImpl:(id)impl
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  ivarAccessQueue = self->_ivars->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__AVOutputDeviceAuthorizationSession_outputDeviceAuthorizationSessionImplDidExpireWithReplacementImpl___block_invoke;
  block[3] = &unk_1E794EE90;
  block[5] = impl;
  block[6] = &v7;
  block[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [v8[5] setParentAuthorizationSession:0];
  [impl setParentAuthorizationSession:self];

  _Block_object_dispose(&v7, 8);
}

id __103__AVOutputDeviceAuthorizationSession_outputDeviceAuthorizationSessionImplDidExpireWithReplacementImpl___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 32) + 8) + 24);

  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (AVOutputDeviceAuthorizationSession)initWithOutputDeviceAuthorizationSessionImpl:(id)impl
{
  v8.receiver = self;
  v8.super_class = AVOutputDeviceAuthorizationSession;
  v4 = [(AVOutputDeviceAuthorizationSession *)&v8 init];
  if (v4 && (v5 = objc_alloc_init(AVOutputDeviceAuthorizationSessionInternal), (v4->_ivars = v5) != 0) && (v4->_ivars->impl = impl) != 0)
  {
    v4->_ivars->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.outputdeviceauthorizationsession.ivars");
    [(AVOutputDeviceAuthorizationSessionImpl *)v4->_ivars->impl setParentAuthorizationSession:v4];
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end