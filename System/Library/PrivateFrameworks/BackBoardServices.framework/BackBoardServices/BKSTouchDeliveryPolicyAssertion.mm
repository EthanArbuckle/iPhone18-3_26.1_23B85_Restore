@interface BKSTouchDeliveryPolicyAssertion
- (BKSTouchDeliveryPolicyAssertion)init;
- (id)endpoint;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKSTouchDeliveryPolicyAssertion

- (BKSTouchDeliveryPolicyAssertion)init
{
  v6.receiver = self;
  v6.super_class = BKSTouchDeliveryPolicyAssertion;
  v2 = [(BKSTouchDeliveryPolicyAssertion *)&v6 init];
  if (v2)
  {
    v3 = xpc_connection_create(0, 0);
    listener = v2->_listener;
    v2->_listener = v3;

    xpc_connection_set_event_handler(v2->_listener, &__block_literal_global_8690);
    xpc_connection_resume(v2->_listener);
  }

  return v2;
}

- (id)endpoint
{
  listener = self->_listener;
  if (!listener)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Getting an endpoint from an invalidated BKSTouchDeliveryPolicyAssertion" userInfo:0];
    objc_exception_throw(v5);
  }

  v3 = xpc_endpoint_create(listener);

  return v3;
}

void __39__BKSTouchDeliveryPolicyAssertion_init__block_invoke(uint64_t a1, void *a2)
{
  connection = a2;
  if (MEMORY[0x186605E90]() == MEMORY[0x1E69E9E68])
  {
    xpc_connection_set_event_handler(connection, &__block_literal_global_2);
    xpc_connection_resume(connection);
  }
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_listener)
  {
    v3 = BKLogTouchDeliveryPolicy();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      listener = self->_listener;
      v7 = 134217984;
      v8 = listener;
      _os_log_impl(&dword_186345000, v3, OS_LOG_TYPE_DEFAULT, "TDPS client policy assertion invalidating <xpc_object:%p>", &v7, 0xCu);
    }

    v5 = self->_listener;
    self->_listener = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(BKSTouchDeliveryPolicyAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = BKSTouchDeliveryPolicyAssertion;
  [(BKSTouchDeliveryPolicyAssertion *)&v3 dealloc];
}

@end