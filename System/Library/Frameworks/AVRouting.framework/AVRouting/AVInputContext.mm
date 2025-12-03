@interface AVInputContext
+ (id)inputContextForID:(id)d;
+ (id)sharedSystemAudioInputContext;
+ (void)initialize;
- (AVInputContext)init;
- (AVInputContext)initWithCoder:(id)coder;
- (AVInputContext)initWithInputContextImpl:(id)impl;
- (AVInputDevice)inputDevice;
- (BOOL)canSetInputGain;
- (BOOL)clearUserPreferredInputDevice:(id)device error:(id *)error;
- (BOOL)getApplicationProcessID:(int *)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)setInputGain:(float)gain error:(id *)error;
- (NSString)contextID;
- (NSString)inputContextType;
- (float)inputGain;
- (id)description;
- (id)deviceName;
- (id)impl;
- (id)userPreferredInputDevice:(id)device;
- (int)applicationProcessID;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)inputContextImpl:(id)impl didChangeInputDeviceWithInitiator:(id)initiator;
- (void)inputContextImpl:(id)impl didExpireWithReplacement:(id)replacement;
- (void)inputContextImpl:(id)impl didInitiateDestinationChange:(id)change;
- (void)inputContextImplDidChangeCanSetInputGain:(id)gain;
- (void)inputContextImplDidChangeInputGain:(id)gain;
- (void)setApplicationProcessID:(int)d;
- (void)setInputDevice:(id)device options:(id)options completionHandler:(id)handler;
@end

@implementation AVInputContext

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

+ (id)sharedSystemAudioInputContext
{
  v2 = [[self alloc] initWithInputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultInputContextImplClass"), "sharedSystemAudioInputContext")}];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  contextID = [(AVInputContext *)self contextID];
  inputContextType = [(AVInputContext *)self inputContextType];
  [coder encodeObject:contextID forKey:@"AVInputContextSerializationKeyContextID"];

  [coder encodeObject:inputContextType forKey:@"AVInputContextSerializationKeyContextType"];
}

+ (id)inputContextForID:(id)d
{
  if (!d)
  {
    return 0;
  }

  v3 = [[self alloc] initWithInputContextImpl:{objc_msgSend(objc_msgSend(self, "defaultInputContextImplClass"), "inputContextImplForID:type:", d, 0)}];

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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  impl = [(AVInputContext *)self impl];
  impl2 = [equal impl];

  return [impl isEqual:impl2];
}

- (unint64_t)hash
{
  impl = [(AVInputContext *)self impl];

  return [impl hash];
}

- (NSString)contextID
{
  impl = [(AVInputContext *)self impl];

  return [impl ID];
}

- (NSString)inputContextType
{
  impl = [(AVInputContext *)self impl];

  return [impl inputContextType];
}

- (int)applicationProcessID
{
  v3 = 0;
  [(AVInputContext *)self getApplicationProcessID:&v3];
  return v3;
}

- (BOOL)getApplicationProcessID:(int *)d
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
    *d = *(v9 + 6);
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

- (void)setApplicationProcessID:(int)d
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
  dCopy = d;
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
  impl = [(AVInputContext *)self impl];

  return [impl inputDevice];
}

- (void)inputContextImpl:(id)impl didInitiateDestinationChange:(id)change
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"AVInputContextDestinationChangeKey";
  v11[0] = change;
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

- (void)inputContextImpl:(id)impl didChangeInputDeviceWithInitiator:(id)initiator
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (initiator)
  {
    v10 = @"AVInputContextDestinationChangeInitiatorKey";
    v11[0] = initiator;
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

- (void)inputContextImpl:(id)impl didExpireWithReplacement:(id)replacement
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
  block[5] = replacement;
  block[6] = &v8;
  block[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
  [v9[5] setParentInputContext:0];
  [replacement setParentInputContext:self];
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

- (void)setInputDevice:(id)device options:(id)options completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = [options objectForKeyedSubscript:@"AVInputContextSetInputDeviceInitiatorKey"];
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v11 = [device description];
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
  v17[7] = handler;
  v17[8] = UpTimeNanoseconds;
  v17[4] = self;
  v17[5] = v11;
  v17[6] = v9;
  [v13 setInputDevice:device options:options completionHandler:v17];
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

- (id)userPreferredInputDevice:(id)device
{
  impl = [(AVInputContext *)self impl];

  return [impl userPreferredInputDevice:device];
}

- (BOOL)clearUserPreferredInputDevice:(id)device error:(id *)error
{
  impl = [(AVInputContext *)self impl];

  return [impl clearUserPreferredInputDevice:device error:error];
}

- (void)inputContextImplDidChangeCanSetInputGain:(id)gain
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

- (void)inputContextImplDidChangeInputGain:(id)gain
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
  impl = [(AVInputContext *)self impl];

  return [impl canSetInputGain];
}

- (float)inputGain
{
  impl = [(AVInputContext *)self impl];

  [impl inputGain];
  return result;
}

- (BOOL)setInputGain:(float)gain error:(id *)error
{
  impl = [(AVInputContext *)self impl];
  *&v7 = gain;

  return [impl setInputGain:error error:v7];
}

- (AVInputContext)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"AVInputContextSerializationKeyContextID"];
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"AVInputContextSerializationKeyContextType"];
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

- (AVInputContext)initWithInputContextImpl:(id)impl
{
  v9.receiver = self;
  v9.super_class = AVInputContext;
  v4 = [(AVInputContext *)&v9 init];
  if (v4 && (v5 = objc_alloc_init(AVInputContextInternal), (v4->_inputContext = v5) != 0) && (v4->_inputContext->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.inputcontext.ivars"), v4->_inputContext->impl = impl, (impl = v4->_inputContext->impl) != 0))
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