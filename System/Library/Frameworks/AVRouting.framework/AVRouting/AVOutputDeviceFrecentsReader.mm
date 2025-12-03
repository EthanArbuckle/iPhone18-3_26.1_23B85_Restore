@interface AVOutputDeviceFrecentsReader
- (AVOutputDeviceFrecentsReader)initWithFrecentsFilePath:(id)path error:(id *)error;
- (id)frecencyInfoForDeviceWithID:(id)d;
- (void)dealloc;
@end

@implementation AVOutputDeviceFrecentsReader

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputDeviceFrecentsReader;
  [(AVOutputDeviceFrecentsReader *)&v3 dealloc];
}

- (id)frecencyInfoForDeviceWithID:(id)d
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_frecents objectForKeyedSubscript:?];
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (dword_1ED6F6B68)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v3 = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (AVOutputDeviceFrecentsReader)initWithFrecentsFilePath:(id)path error:(id *)error
{
  v19[22] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AVOutputDeviceFrecentsReader;
  v19[0] = 0;
  v6 = [(AVOutputDeviceFrecentsReader *)&v18 init];
  v7 = v6;
  v8 = 0;
  if (!path || !v6)
  {
LABEL_15:
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:path options:0 error:v19];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:0 error:v19];
    if (v10)
    {
      v11 = v10;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 copy];
LABEL_14:
        v7->_frecents = v12;
        v8 = v7;
        goto LABEL_15;
      }

      if (dword_1ED6F6B68)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v15 = MEMORY[0x1E695DF20];
    }

    else
    {
      if (dword_1ED6F6B68)
      {
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v15 = MEMORY[0x1E695DF20];
    }

    v12 = objc_alloc_init(v15);
    goto LABEL_14;
  }

  v8 = 0;
  if (!error)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v8)
  {
    *error = v19[0];
  }

LABEL_18:

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

@end