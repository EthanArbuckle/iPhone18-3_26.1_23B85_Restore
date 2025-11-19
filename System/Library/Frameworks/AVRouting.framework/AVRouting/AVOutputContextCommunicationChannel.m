@interface AVOutputContextCommunicationChannel
- (AVOutputContextCommunicationChannel)initWithOutputContextCommunicationChannelImpl:(id)a3;
- (__CFString)commChannelUUID;
- (void)dealloc;
- (void)sendData:(id)a3 completionHandler:(id)a4;
@end

@implementation AVOutputContextCommunicationChannel

- (__CFString)commChannelUUID
{
  v2 = [(AVOutputContextCommunicationChannel *)self impl];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(AVOutputContextCommunicationChannelImpl *)v2 commChannelUUID];
}

- (void)dealloc
{
  ivars = self->_ivars;
  if (ivars)
  {

    ivars = self->_ivars;
  }

  v4.receiver = self;
  v4.super_class = AVOutputContextCommunicationChannel;
  [(AVOutputContextCommunicationChannel *)&v4 dealloc];
}

- (void)sendData:(id)a3 completionHandler:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputContextCommunicationChannelImpl *)[(AVOutputContextCommunicationChannel *)self impl:v9] sendData:a3 completionHandler:a4];
  v8 = *MEMORY[0x1E69E9840];
}

- (AVOutputContextCommunicationChannel)initWithOutputContextCommunicationChannelImpl:(id)a3
{
  v10.receiver = self;
  v10.super_class = AVOutputContextCommunicationChannel;
  v4 = [(AVOutputContextCommunicationChannel *)&v10 init];
  if (v4 && (v5 = objc_alloc_init(AVOutputContextCommunicationChannelInternal), (v4->_ivars = v5) != 0) && (OUTLINED_FUNCTION_0_3(a3), (v7 = *(v6 + 8)) != 0))
  {
    [v7 setParentCommunicationChannel:v4];
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end