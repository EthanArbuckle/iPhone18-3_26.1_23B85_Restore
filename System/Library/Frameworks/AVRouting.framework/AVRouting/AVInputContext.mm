@interface AVInputContext
+ (id)inputContextForID:(id)a3;
+ (id)sharedSystemAudioInputContext;
+ (void)initialize;
- (AVInputContext)init;
- (AVInputContext)initWithCoder:(id)a3;
- (AVInputContext)initWithInputContextImpl:(id)a3;
- (AVInputDevice)inputDevice;
- (BOOL)canSetInputGain;
- (BOOL)clearUserPreferredInputDevice:(id)a3 error:(id *)a4;
- (BOOL)getApplicationProcessID:(int *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)setInputGain:(float)a3 error:(id *)a4;
- (NSString)contextID;
- (NSString)inputContextType;
- (float)inputGain;
- (id)description;
- (id)deviceName;
- (id)impl;
- (id)userPreferredInputDevice:(id)a3;
- (int)applicationProcessID;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)inputContextImpl:(id)a3 didChangeInputDeviceWithInitiator:(id)a4;
- (void)inputContextImpl:(id)a3 didExpireWithReplacement:(id)a4;
- (void)inputContextImpl:(id)a3 didInitiateDestinationChange:(id)a4;
- (void)inputContextImplDidChangeCanSetInputGain:(id)a3;
- (void)inputContextImplDidChangeInputGain:(id)a3;
- (void)setApplicationProcessID:(int)a3;
- (void)setInputDevice:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation AVInputContext

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

+ (id)sharedSystemAudioInputContext
{
  v2 = [[a1 alloc] initWithInputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultInputContextImplClass"), "sharedSystemAudioInputContext")}];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(AVInputContext *)self contextID];
  v6 = [(AVInputContext *)self inputContextType];
  [a3 encodeObject:v5 forKey:@"AVInputContextSerializationKeyContextID"];

  [a3 encodeObject:v6 forKey:@"AVInputContextSerializationKeyContextType"];
}

+ (id)inputContextForID:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [[a1 alloc] initWithInputContextImpl:{objc_msgSend(objc_msgSend(a1, "defaultInputContextImplClass"), "inputContextImplForID:type:", a3, 0)}];

  return v3;
}

- (AVInputContext)init
{
  v3 = [objc_msgSend(objc_opt_class() "defaultInputContextImplClass")];

  return [(AVInputContext *)self initWithInputContextImpl:v3];
}

- (void)dealloc
{
  inputContext = self->_inputContext;
  if (inputContext)
  {

    inputContext = self->_inputContext;
    ivarAccessQueue = inputContext->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      inputContext = self->_inputContext;
    }
  }

  v5.receiver = self;
  v5.super_class = AVInputContext;
  [(AVInputContext *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, ID=%@, type=%@>", NSStringFromClass(v4), self, -[AVInputContext contextID](self, "contextID"), -[AVInputContext inputContextType](self, "inputContextType")];
}

- (id)impl
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = 0;
  ivarAccessQueue = self->_inputContext->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__AVInputContext_impl__block_invoke;
  v5[3] = &unk_1E794ED00;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __22__AVInputContext_impl__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVInputContext *)self impl];
  v6 = [a3 impl];

  return [v5 isEqual:v6];
}

- (unint64_t)hash
{
  v2 = [(AVInputContext *)self impl];

  return [v2 hash];
}

- (NSString)contextID
{
  v2 = [(AVInputContext *)self impl];

  return [v2 ID];
}

- (NSString)inputContextType
{
  v2 = [(AVInputContext *)self impl];

  return [v2 inputContextType];
}

- (int)applicationProcessID
{
  v3 = 0;
  [(AVInputContext *)self getApplicationProcessID:&v3];
  return v3;
}

- (BOOL)getApplicationProcessID:(int *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  ivarAccessQueue = self->_inputContext->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVInputContext_getApplicationProcessID___block_invoke;
  block[3] = &unk_1E794F000;
  block[4] = self;
  block[5] = &v8;
  block[6] = &v12;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v5 = *(v13 + 24);
  if (v5 == 1)
  {
    *a3 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void *__42__AVInputContext_getApplicationProcessID___block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(*(result[4] + 8) + 32);
  *(*(result[6] + 8) + 24) = *(*(result[4] + 8) + 36);
  return result;
}

- (void)setApplicationProcessID:(int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B28)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ivarAccessQueue = self->_inputContext->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVInputContext_setApplicationProcessID___block_invoke;
  block[3] = &unk_1E794F028;
  block[4] = self;
  v9 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [-[AVInputContext impl](self "impl")];
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __42__AVInputContext_setApplicationProcessID___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 32) = *(result + 40);
  *(*(*(result + 32) + 8) + 36) = 1;
  return result;
}

- (id)deviceName
{
  result = [(AVInputContext *)self inputDevice];
  if (result)
  {

    return [result deviceName];
  }

  return result;
}

- (AVInputDevice)inputDevice
{
  v2 = [(AVInputContext *)self impl];

  return [v2 inputDevice];
}

- (void)inputContextImpl:(id)a3 didInitiateDestinationChange:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"AVInputContextDestinationChangeKey";
  v11[0] = a4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  if (dword_1ED6F6B28)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)inputContextImpl:(id)a3 didChangeInputDeviceWithInitiator:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v10 = @"AVInputContextDestinationChangeInitiatorKey";
    v11[0] = a4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v5 = 0;
  }

  if (dword_1ED6F6B28)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)inputContextImpl:(id)a3 didExpireWithReplacement:(id)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__9;
  v12 = __Block_byref_object_dispose__9;
  v13 = 0;
  ivarAccessQueue = self->_inputContext->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AVInputContext_inputContextImpl_didExpireWithReplacement___block_invoke;
  block[3] = &unk_1E794EE90;
  block[5] = a4;
  block[6] = &v8;
  block[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [v9[5] setParentInputContext:0];
  [a4 setParentInputContext:self];
  [(AVInputContext *)self inputContextImpl:[(AVInputContext *)self impl] didChangeInputDeviceWithInitiator:@"server death"];
  [(AVInputContext *)self inputContextImpl:[(AVInputContext *)self impl] didChangeInputDeviceWithInitiator:@"server death"];

  _Block_object_dispose(&v8, 8);
}

id __60__AVInputContext_inputContextImpl_didExpireWithReplacement___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = *(*(*(a1 + 32) + 8) + 16);

  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 16) = result;
  return result;
}

- (void)setInputDevice:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = [a4 objectForKeyedSubscript:@"AVInputContextSetInputDeviceInitiatorKey"];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v11 = [a3 description];
  if (dword_1ED6F6B28)
  {
    v19 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = [(AVInputContext *)self impl:v15];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__AVInputContext_setInputDevice_options_completionHandler___block_invoke;
  v17[3] = &unk_1E794F050;
  v17[7] = a5;
  v17[8] = UpTimeNanoseconds;
  v17[4] = self;
  v17[5] = v11;
  v17[6] = v9;
  [v13 setInputDevice:a3 options:a4 completionHandler:v17];
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __59__AVInputContext_setInputDevice_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  FigGetUpTimeNanoseconds();
  if (dword_1ED6F6B28)
  {
    v4 = *(a1 + 64);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)userPreferredInputDevice:(id)a3
{
  v4 = [(AVInputContext *)self impl];

  return [v4 userPreferredInputDevice:a3];
}

- (BOOL)clearUserPreferredInputDevice:(id)a3 error:(id *)a4
{
  v6 = [(AVInputContext *)self impl];

  return [v6 clearUserPreferredInputDevice:a3 error:a4];
}

- (void)inputContextImplDidChangeCanSetInputGain:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B28)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)inputContextImplDidChangeInputGain:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B28)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)canSetInputGain
{
  v2 = [(AVInputContext *)self impl];

  return [v2 canSetInputGain];
}

- (float)inputGain
{
  v2 = [(AVInputContext *)self impl];

  [v2 inputGain];
  return result;
}

- (BOOL)setInputGain:(float)a3 error:(id *)a4
{
  v6 = [(AVInputContext *)self impl];
  *&v7 = a3;

  return [v6 setInputGain:a4 error:v7];
}

- (AVInputContext)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AVInputContextSerializationKeyContextID"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AVInputContextSerializationKeyContextType"];
  if (v5)
  {
    v7 = [objc_msgSend(objc_opt_class() "defaultInputContextImplClass")];
    if (v7 && (v8 = [(AVInputContext *)self initWithInputContextImpl:v7], (self = v8) != 0))
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (AVInputContext)initWithInputContextImpl:(id)a3
{
  v9.receiver = self;
  v9.super_class = AVInputContext;
  v4 = [(AVInputContext *)&v9 init];
  if (v4 && (v5 = objc_alloc_init(AVInputContextInternal), (v4->_inputContext = v5) != 0) && (v4->_inputContext->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.inputcontext.ivars"), v4->_inputContext->impl = a3, (impl = v4->_inputContext->impl) != 0))
  {
    [(AVInputContextImpl *)impl setParentInputContext:v4];
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end