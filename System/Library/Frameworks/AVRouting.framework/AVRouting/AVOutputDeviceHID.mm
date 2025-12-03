@interface AVOutputDeviceHID
- (AVOutputDeviceHID)initWithUUID:(id)d screenUUID:(id)iD endpoint:(OpaqueFigEndpoint *)endpoint;
- (void)dealloc;
- (void)setInputMode:(int64_t)mode;
@end

@implementation AVOutputDeviceHID

- (void)dealloc
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    CFRelease(endpoint);
  }

  v4.receiver = self;
  v4.super_class = AVOutputDeviceHID;
  [(AVOutputDeviceHID *)&v4 dealloc];
}

- (AVOutputDeviceHID)initWithUUID:(id)d screenUUID:(id)iD endpoint:(OpaqueFigEndpoint *)endpoint
{
  v16.receiver = self;
  v16.super_class = AVOutputDeviceHID;
  v8 = [(AVOutputDeviceHID *)&v16 init];
  if (v8)
  {
    *(v8 + 1) = [d copy];
    *(v8 + 2) = [iD copy];
    if (endpoint)
    {
      v9 = CFRetain(endpoint);
      *(v8 + 4) = v9;
      cf = 0;
      if (v9)
      {
        v10 = v9;
        FigEndpointExtendedGetClassID();
        if (CMBaseObjectIsMemberOfClass())
        {
          v11 = *(v8 + 1);
          v12 = *(*(CMBaseObjectGetVTable() + 24) + 64);
          if (v12)
          {
            v12(v10, v11, *MEMORY[0x1E695E480], &cf);
          }
        }
      }
    }

    else
    {
      *(v8 + 4) = 0;
      cf = 0;
    }

    *(v8 + 3) = [*(v8 + 3) integerValue];
    if (cf)
    {
      CFRelease(cf);
    }

    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setInputMode:(int64_t)mode
{
  v11 = *MEMORY[0x1E69E9840];
  endpoint = self->_endpoint;
  if (endpoint)
  {
    FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass())
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:mode];
      if (dword_1ED6F6B68)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      UUID = self->_UUID;
      v9 = *(*(CMBaseObjectGetVTable() + 24) + 56);
      if (v9 && !v9(endpoint, UUID, v6))
      {
        self->_inputMode = mode;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end