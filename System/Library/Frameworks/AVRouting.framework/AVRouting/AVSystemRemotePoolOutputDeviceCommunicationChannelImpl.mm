@interface AVSystemRemotePoolOutputDeviceCommunicationChannelImpl
- (AVSystemRemotePoolOutputDeviceCommunicationChannelImpl)initWithDeviceID:(id)d channelUUID:(__CFString *)iD outputContext:(id)context;
- (void)close;
- (void)dealloc;
- (void)sendData:(id)data completionHandler:(id)handler;
@end

@implementation AVSystemRemotePoolOutputDeviceCommunicationChannelImpl

- (void)dealloc
{
  commChannelUUID = self->_commChannelUUID;
  if (commChannelUUID)
  {
    CFRelease(commChannelUUID);
  }

  v4.receiver = self;
  v4.super_class = AVSystemRemotePoolOutputDeviceCommunicationChannelImpl;
  [(AVSystemRemotePoolOutputDeviceCommunicationChannelImpl *)&v4 dealloc];
}

- (void)sendData:(id)data completionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [handler copy];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = [(AVOutputContext *)self->_outputContext figRoutingContext:v13];
  deviceID = self->_deviceID;
  commChannelUUID = self->_commChannelUUID;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (v11)
  {
    v11(v8, deviceID, commChannelUUID, data, AVSystemRemotePoolOutputDeviceCommunicationChannelSendDataCompletion, v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)close
{
  figRoutingContext = [(AVOutputContext *)self->_outputContext figRoutingContext];
  deviceID = self->_deviceID;
  commChannelUUID = self->_commChannelUUID;
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 16) + 168);
  if (v7)
  {
    v8 = *(VTable + 16) + 168;

    v7(figRoutingContext, deviceID, commChannelUUID);
  }
}

- (AVSystemRemotePoolOutputDeviceCommunicationChannelImpl)initWithDeviceID:(id)d channelUUID:(__CFString *)iD outputContext:(id)context
{
  v13.receiver = self;
  v13.super_class = AVSystemRemotePoolOutputDeviceCommunicationChannelImpl;
  v8 = [(AVSystemRemotePoolOutputDeviceCommunicationChannelImpl *)&v13 init];
  if (!v8)
  {
    goto LABEL_10;
  }

  contextCopy = context;
  v8->_outputContext = contextCopy;
  if (!contextCopy)
  {
    goto LABEL_10;
  }

  if (![(AVOutputContext *)contextCopy figRoutingContext])
  {
    goto LABEL_10;
  }

  v10 = [d copy];
  v8->_deviceID = v10;
  if (!v10)
  {
    goto LABEL_10;
  }

  if (!iD)
  {
    v8->_commChannelUUID = 0;
    goto LABEL_9;
  }

  v11 = CFRetain(iD);
  v8->_commChannelUUID = v11;
  if (!v11)
  {
LABEL_10:
    iD = 0;
    goto LABEL_9;
  }

  iD = v8;
LABEL_9:

  return iD;
}

@end