@interface FPXPCLogDelegate
+ (void)setupWithLog:(id)log forConnection:(id)connection;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
@end

@implementation FPXPCLogDelegate

+ (void)setupWithLog:(id)log forConnection:(id)connection
{
  logCopy = log;
  connectionCopy = connection;
  value = objc_alloc_init(self);
  v8 = value[1];
  value[1] = logCopy;
  v9 = logCopy;

  [connectionCopy setDelegate:value];
  v10 = objc_opt_class();

  objc_setAssociatedObject(connectionCopy, v10, value, 0x301);
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  connectionCopy = connection;
  invocationCopy = invocation;
  v10 = fpfs_adopt_log(self->_log);
  fpfs_setup_log_for_invocation(connectionCopy, invocationCopy, reply);
  [invocationCopy invoke];
  __fp_pop_log(&v10);
}

@end