@interface AVSystemRemotePoolOutputDeviceCommunicationChannelImpl
- (AVSystemRemotePoolOutputDeviceCommunicationChannelImpl)initWithDeviceID:(id)a3 channelUUID:(__CFString *)a4 outputContext:(id)a5;
- (void)close;
- (void)dealloc;
- (void)sendData:(id)a3 completionHandler:(id)a4;
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

- (void)sendData:(id)a3 completionHandler:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [a4 copy];
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
    v11(v8, deviceID, commChannelUUID, a3, AVSystemRemotePoolOutputDeviceCommunicationChannelSendDataCompletion, v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)close
{
  v3 = [(AVOutputContext *)self->_outputContext figRoutingContext];
  deviceID = self->_deviceID;
  commChannelUUID = self->_commChannelUUID;
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 16) + 168);
  if (v7)
  {
    v8 = *(VTable + 16) + 168;

    v7(v3, deviceID, commChannelUUID);
  }
}

- (AVSystemRemotePoolOutputDeviceCommunicationChannelImpl)initWithDeviceID:(id)a3 channelUUID:(__CFString *)a4 outputContext:(id)a5
{
  v13.receiver = self;
  v13.super_class = AVSystemRemotePoolOutputDeviceCommunicationChannelImpl;
  v8 = [(AVSystemRemotePoolOutputDeviceCommunicationChannelImpl *)&v13 init];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = a5;
  v8->_outputContext = v9;
  if (!v9)
  {
    goto LABEL_10;
  }

  if (![(AVOutputContext *)v9 figRoutingContext])
  {
    goto LABEL_10;
  }

  v10 = [a3 copy];
  v8->_deviceID = v10;
  if (!v10)
  {
    goto LABEL_10;
  }

  if (!a4)
  {
    v8->_commChannelUUID = 0;
    goto LABEL_9;
  }

  v11 = CFRetain(a4);
  v8->_commChannelUUID = v11;
  if (!v11)
  {
LABEL_10:
    a4 = 0;
    goto LABEL_9;
  }

  a4 = v8;
LABEL_9:

  return a4;
}

@end