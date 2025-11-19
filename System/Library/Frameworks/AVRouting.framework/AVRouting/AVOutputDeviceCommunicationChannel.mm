@interface AVOutputDeviceCommunicationChannel
- (AVOutputDeviceCommunicationChannel)initWithOutputDeviceCommunicationChannelImpl:(id)a3;
- (void)communicationChannelImpl:(id)a3 didReceiveData:(id)a4;
- (void)communicationChannelImplDidClose:(id)a3;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation AVOutputDeviceCommunicationChannel

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputDeviceCommunicationChannel;
  [(AVOutputDeviceCommunicationChannel *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_storeWeak(&self->_delegate, a3);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)communicationChannelImpl:(id)a3 didReceiveData:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [Weak communicationChannel:self didReceiveData:{a4, v10, v11}];
  }

  else if (dword_1ED6F6B68)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)communicationChannelImplDidClose:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [Weak communicationChannelDidClose:{self, v8, v9}];
  }

  else if (dword_1ED6F6B68)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (AVOutputDeviceCommunicationChannel)initWithOutputDeviceCommunicationChannelImpl:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVOutputDeviceCommunicationChannel;
  v4 = [(AVOutputDeviceCommunicationChannel *)&v8 init];
  if (v4 && (v5 = a3, (v4->_impl = v5) != 0))
  {
    [v5 setParentChannel:v4];
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end