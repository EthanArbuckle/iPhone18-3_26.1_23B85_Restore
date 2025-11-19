@interface FPXPCLogDelegate
+ (void)setupWithLog:(id)a3 forConnection:(id)a4;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
@end

@implementation FPXPCLogDelegate

+ (void)setupWithLog:(id)a3 forConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  value = objc_alloc_init(a1);
  v8 = value[1];
  value[1] = v6;
  v9 = v6;

  [v7 setDelegate:value];
  v10 = objc_opt_class();

  objc_setAssociatedObject(v7, v10, value, 0x301);
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = fpfs_adopt_log(self->_log);
  fpfs_setup_log_for_invocation(v8, v9, a5);
  [v9 invoke];
  __fp_pop_log(&v10);
}

@end