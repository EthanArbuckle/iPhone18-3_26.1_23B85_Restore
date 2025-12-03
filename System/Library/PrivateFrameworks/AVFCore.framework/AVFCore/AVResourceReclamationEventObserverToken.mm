@interface AVResourceReclamationEventObserverToken
- (AVResourceReclamationEventObserverToken)initWithDetails:(id)details;
- (void)dealloc;
- (void)invalidate;
@end

@implementation AVResourceReclamationEventObserverToken

- (void)dealloc
{
  [(AVResourceReclamationEventObserverToken *)self invalidate];

  v3.receiver = self;
  v3.super_class = AVResourceReclamationEventObserverToken;
  [(AVResourceReclamationEventObserverToken *)&v3 dealloc];
}

- (AVResourceReclamationEventObserverToken)initWithDetails:(id)details
{
  v6.receiver = self;
  v6.super_class = AVResourceReclamationEventObserverToken;
  v4 = [(AVResourceReclamationEventObserverToken *)&v6 init];
  if (v4)
  {
    v4->_details = [details copy];
  }

  return v4;
}

- (void)invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED5AC258)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[AVResourceReclamationController defaultController](AVResourceReclamationController defaultController];
}

@end