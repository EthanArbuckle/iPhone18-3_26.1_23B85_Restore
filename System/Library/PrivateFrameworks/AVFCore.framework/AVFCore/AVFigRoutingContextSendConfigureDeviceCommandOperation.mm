@interface AVFigRoutingContextSendConfigureDeviceCommandOperation
+ (void)initialize;
- (void)dealloc;
- (void)start;
@end

@implementation AVFigRoutingContextSendConfigureDeviceCommandOperation

+ (void)initialize
{
  if (objc_opt_class() == self)
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
  v4.super_class = AVFigRoutingContextSendConfigureDeviceCommandOperation;
  [(AVOperation *)&v4 dealloc];
}

- (void)start
{
  if ([(AVOperation *)self evaluateDependenciesAndMarkAsExecuting])
  {
    v3 = objc_alloc_init(AVFigRoutingContextCommandOutputDeviceConfigurationModification);
    (*(self->_configuratorBlock + 2))();
    routingContextCommandPayload = [(AVFigRoutingContextCommandOutputDeviceConfigurationModification *)v3 routingContextCommandPayload];
    CFDictionaryGetValue(routingContextCommandPayload, *MEMORY[0x1E69617B0]);
    CFDictionaryGetValue(routingContextCommandPayload, *MEMORY[0x1E69617C8]);
    CFDictionaryGetValue(routingContextCommandPayload, *MEMORY[0x1E69617B8]);
    CFDictionaryGetValue(routingContextCommandPayload, *MEMORY[0x1E69617C0]);
    CFDictionaryGetValue(routingContextCommandPayload, *MEMORY[0x1E6961798]);
    CFDictionaryGetValue(routingContextCommandPayload, *MEMORY[0x1E69617A0]);
    if (dword_1EAEFCDF0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    selfCopy = self;
    routingContext = self->_routingContext;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v8)
    {
      v8(routingContext, *MEMORY[0x1E69624A0], routingContextCommandPayload, AVSendCommandCompletion, selfCopy);
    }
  }
}

@end