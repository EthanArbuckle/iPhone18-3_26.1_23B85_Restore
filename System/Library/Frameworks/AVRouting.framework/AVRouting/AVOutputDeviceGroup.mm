@interface AVOutputDeviceGroup
+ (void)initialize;
- (AVOutputDeviceGroup)initWithOutputDeviceGroupImpl:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)addOutputDevice:(id)a3 withOptions:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)outputDeviceGroupImpl:(id)a3 didChangeOutputDevicesWithInitiator:(id)a4;
- (void)outputDeviceGroupImplDidChangeVolume:(id)a3;
- (void)outputDeviceGroupImplDidChangeVolumeControlType:(id)a3;
- (void)removeOutputDevice:(id)a3 withOptions:(id)a4 completionHandler:(id)a5;
@end

@implementation AVOutputDeviceGroup

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputDeviceGroup;
  [(AVOutputDeviceGroup *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVOutputDeviceGroup *)self impl];
  v6 = [a3 impl];

  return [v5 isEqual:v6];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p>", NSStringFromClass(v4), self];
}

- (void)outputDeviceGroupImpl:(id)a3 didChangeOutputDevicesWithInitiator:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v10 = @"AVOutputDeviceGroupMembershipChangeInitiator";
    v11[0] = a4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v5 = 0;
  }

  if (dword_1EB46D608)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)addOutputDevice:(id)a3 withOptions:(id)a4 completionHandler:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  [a4 objectForKeyedSubscript:@"AVOutputDeviceGroupAddOutputDeviceOptionAuthorizationToken"];
  [a4 objectForKeyedSubscript:@"AVOutputDeviceGroupAddOutputDeviceOptionCancelIfAuthRequiredKey"];
  [a4 objectForKeyedSubscript:@"AVOutputDeviceGroupAddOutputDeviceOptionInitiator"];
  if (dword_1EB46D608)
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  impl = self->_impl;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__AVOutputDeviceGroup_addOutputDevice_withOptions_completionHandler___block_invoke;
  v14[3] = &unk_1E794F678;
  v14[4] = a5;
  [(AVOutputDeviceGroupImpl *)impl addOutputDevice:a3 withOptions:a4 completionHandler:v14, v12, v13];
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __69__AVOutputDeviceGroup_addOutputDevice_withOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D608)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeOutputDevice:(id)a3 withOptions:(id)a4 completionHandler:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D608)
  {
    v16 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  impl = self->_impl;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__AVOutputDeviceGroup_removeOutputDevice_withOptions_completionHandler___block_invoke;
  v14[3] = &unk_1E794F678;
  v14[4] = a5;
  [(AVOutputDeviceGroupImpl *)impl removeOutputDevice:a3 withOptions:a4 completionhandler:v14, v12, v13];
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __72__AVOutputDeviceGroup_removeOutputDevice_withOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D608)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)outputDeviceGroupImplDidChangeVolume:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D608)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)outputDeviceGroupImplDidChangeVolumeControlType:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EB46D608)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
  v5 = *MEMORY[0x1E69E9840];
}

- (AVOutputDeviceGroup)initWithOutputDeviceGroupImpl:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVOutputDeviceGroup;
  v4 = [(AVOutputDeviceGroup *)&v8 init];
  if (v4 && (v5 = a3, (v4->_impl = v5) != 0))
  {
    [v5 setParentOutputDeviceGroup:v4];
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end