@interface AVFigCommChannelUUIDOutputContextCommunicationChannelImpl
- (AVFigCommChannelUUIDOutputContextCommunicationChannelImpl)initWithRoutingContext:(OpaqueFigRoutingContext *)context commChannelUUID:(__CFString *)d;
- (void)dealloc;
- (void)sendData:(id)data completionHandler:(id)handler;
@end

@implementation AVFigCommChannelUUIDOutputContextCommunicationChannelImpl

- (void)dealloc
{
  routingContext = self->_routingContext;
  if (routingContext)
  {
    CFRelease(routingContext);
  }

  commChannelUUID = self->_commChannelUUID;
  if (commChannelUUID)
  {
    CFRelease(commChannelUUID);
  }

  v5.receiver = self;
  v5.super_class = AVFigCommChannelUUIDOutputContextCommunicationChannelImpl;
  [(AVFigCommChannelUUIDOutputContextCommunicationChannelImpl *)&v5 dealloc];
}

- (void)sendData:(id)data completionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B88)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = [handler copy];
  routingContext = self->_routingContext;
  commChannelUUID = self->_commChannelUUID;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v11)
  {
    v11(routingContext, commChannelUUID, data, AVFigRoutingContextSendDataCompletion, v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (AVFigCommChannelUUIDOutputContextCommunicationChannelImpl)initWithRoutingContext:(OpaqueFigRoutingContext *)context commChannelUUID:(__CFString *)d
{
  v11.receiver = self;
  v11.super_class = AVFigCommChannelUUIDOutputContextCommunicationChannelImpl;
  v6 = [(AVFigCommChannelUUIDOutputContextCommunicationChannelImpl *)&v11 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (!context)
  {
    d = 0;
    v6->_routingContext = 0;
    goto LABEL_9;
  }

  v8 = CFRetain(context);
  v7->_routingContext = v8;
  if (!v8)
  {
    goto LABEL_10;
  }

  if (!d)
  {
    v7->_commChannelUUID = 0;
    goto LABEL_9;
  }

  v9 = CFRetain(d);
  v7->_commChannelUUID = v9;
  if (!v9)
  {
LABEL_10:
    d = 0;
    goto LABEL_9;
  }

  d = v7;
LABEL_9:

  return d;
}

@end