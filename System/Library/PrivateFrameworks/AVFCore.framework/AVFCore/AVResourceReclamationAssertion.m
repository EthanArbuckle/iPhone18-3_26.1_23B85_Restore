@interface AVResourceReclamationAssertion
- (AVResourceReclamationAssertion)initWithDetails:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation AVResourceReclamationAssertion

- (AVResourceReclamationAssertion)initWithDetails:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVResourceReclamationAssertion;
  v4 = [(AVResourceReclamationAssertion *)&v6 init];
  if (v4)
  {
    v4->_details = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  [(AVResourceReclamationAssertion *)self invalidate];

  v3.receiver = self;
  v3.super_class = AVResourceReclamationAssertion;
  [(AVResourceReclamationAssertion *)&v3 dealloc];
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