@interface AVOutputDeviceAuthorizationRequest
- (AVOutputDevice)outputDevice;
- (AVOutputDeviceAuthorizationRequest)initWithOutputDeviceAuthorizationRequestImpl:(id)a3;
- (NSError)error;
- (NSString)ID;
- (NSString)authorizationTokenType;
- (id)description;
- (int64_t)status;
- (void)cancel;
- (void)dealloc;
- (void)respondWithAuthorizationToken:(id)a3 completionHandler:(id)a4;
@end

@implementation AVOutputDeviceAuthorizationRequest

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
  v5.super_class = AVOutputDeviceAuthorizationRequest;
  [(AVOutputDeviceAuthorizationRequest *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, ID=%@, outputDevice=%@, tokenType=%@>", NSStringFromClass(v4), self, -[AVOutputDeviceAuthorizationRequest ID](self, "ID"), -[AVOutputDeviceAuthorizationRequest outputDevice](self, "outputDevice"), -[AVOutputDeviceAuthorizationRequest authorizationTokenType](self, "authorizationTokenType")];
}

- (int64_t)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_ivars->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AVOutputDeviceAuthorizationRequest_status__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSError)error
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
  v5[2] = __43__AVOutputDeviceAuthorizationRequest_error__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__AVOutputDeviceAuthorizationRequest_error__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 32) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)ID
{
  v2 = [(AVOutputDeviceAuthorizationRequest *)self impl];

  return [v2 ID];
}

- (AVOutputDevice)outputDevice
{
  v2 = [(AVOutputDeviceAuthorizationRequest *)self impl];

  return [v2 outputDevice];
}

- (NSString)authorizationTokenType
{
  v2 = [(AVOutputDeviceAuthorizationRequest *)self impl];

  return [v2 authorizationTokenType];
}

- (void)respondWithAuthorizationToken:(id)a3 completionHandler:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D568)
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = [(AVOutputDeviceAuthorizationRequest *)self impl:v10];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__AVOutputDeviceAuthorizationRequest_respondWithAuthorizationToken_completionHandler___block_invoke;
  v12[3] = &unk_1E794EEB8;
  v12[4] = self;
  v12[5] = a4;
  [v8 respondWithAuthorizationToken:a3 completionHandler:v12];
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __86__AVOutputDeviceAuthorizationRequest_respondWithAuthorizationToken_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[28] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = *(*(v5 + 8) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__AVOutputDeviceAuthorizationRequest_respondWithAuthorizationToken_completionHandler___block_invoke_2;
  block[3] = &unk_1E794E908;
  block[5] = a3;
  block[6] = a2;
  block[4] = v5;
  av_readwrite_dispatch_queue_write(v6, block);
  if (dword_1EB46D568)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = (*(*(a1 + 40) + 16))(*(a1 + 40), a2 == 3);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __86__AVOutputDeviceAuthorizationRequest_respondWithAuthorizationToken_completionHandler___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = *(a1 + 48);
  result = [*(a1 + 40) copy];
  *(*(*(a1 + 32) + 8) + 32) = result;
  return result;
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D568)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [-[AVOutputDeviceAuthorizationRequest impl](self impl];
  v4 = *MEMORY[0x1E69E9840];
}

- (AVOutputDeviceAuthorizationRequest)initWithOutputDeviceAuthorizationRequestImpl:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVOutputDeviceAuthorizationRequest;
  v4 = [(AVOutputDeviceAuthorizationRequest *)&v8 init];
  if (v4 && (v5 = objc_alloc_init(AVOutputDeviceAuthorizationRequestInternal), (v4->_ivars = v5) != 0) && (v4->_ivars->impl = a3) != 0)
  {
    v4->_ivars->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.output-device-auth-session.ivars");
    v4->_ivars->status = 0;
    v4->_ivars->error = 0;
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end