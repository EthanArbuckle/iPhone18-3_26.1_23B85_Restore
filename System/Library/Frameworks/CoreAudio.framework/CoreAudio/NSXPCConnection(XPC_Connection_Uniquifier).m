@interface NSXPCConnection(XPC_Connection_Uniquifier)
- (void)uniquify;
@end

@implementation NSXPCConnection(XPC_Connection_Uniquifier)

- (void)uniquify
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  MEMORY[0x1E12C2910](v4);
  v2 = [a1 _xpcConnection];
  xpc_connection_set_oneshot_instance();

  v3 = *MEMORY[0x1E69E9840];
}

@end