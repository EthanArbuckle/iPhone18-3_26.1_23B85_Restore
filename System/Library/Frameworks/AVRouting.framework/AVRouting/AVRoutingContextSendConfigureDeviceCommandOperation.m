@interface AVRoutingContextSendConfigureDeviceCommandOperation
+ (void)initialize;
- (AVRoutingContextSendConfigureDeviceCommandOperation)initWithRoutingContext:(OpaqueFigRoutingContext *)a3 configuratorBlock:(id)a4;
- (void)dealloc;
- (void)start;
@end

@implementation AVRoutingContextSendConfigureDeviceCommandOperation

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
  routingContext = self->_routingContext;
  if (routingContext)
  {
    CFRelease(routingContext);
  }

  v4.receiver = self;
  v4.super_class = AVRoutingContextSendConfigureDeviceCommandOperation;
  [(AVRoutingOperation *)&v4 dealloc];
}

- (void)start
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(AVRoutingOperation *)self evaluateDependenciesAndMarkAsExecuting])
  {
    v3 = objc_alloc_init(AVRoutingContextCommandOutputDeviceConfigurationModification);
    (*(self->_configuratorBlock + 2))();
    v4 = [(AVRoutingContextCommandOutputDeviceConfigurationModification *)v3 routingContextCommandPayload];
    CFDictionaryGetValue(v4, *MEMORY[0x1E69617B0]);
    CFDictionaryGetValue(v4, *MEMORY[0x1E69617C8]);
    CFDictionaryGetValue(v4, *MEMORY[0x1E69617B8]);
    CFDictionaryGetValue(v4, *MEMORY[0x1E69617C0]);
    CFDictionaryGetValue(v4, *MEMORY[0x1E6961798]);
    CFDictionaryGetValue(v4, *MEMORY[0x1E69617A0]);
    if (dword_1EB46D5A8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = self;
    routingContext = self->_routingContext;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v8)
    {
      v8(routingContext, *MEMORY[0x1E69624A0], v4, AVSendCommandCompletion, v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (AVRoutingContextSendConfigureDeviceCommandOperation)initWithRoutingContext:(OpaqueFigRoutingContext *)a3 configuratorBlock:(id)a4
{
  v12.receiver = self;
  v12.super_class = AVRoutingContextSendConfigureDeviceCommandOperation;
  v6 = [(AVRoutingOperation *)&v12 init];
  v7 = v6;
  if (a3)
  {
    v8 = CFRetain(a3);
    v7->_routingContext = v8;
    if (v8 && (v9 = [a4 copy], (v7->_configuratorBlock = v9) != 0))
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v6->_routingContext = 0;
  }

  return v10;
}

@end