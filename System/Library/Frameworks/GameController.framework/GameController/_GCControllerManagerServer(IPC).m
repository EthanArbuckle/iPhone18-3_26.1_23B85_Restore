@interface _GCControllerManagerServer(IPC)
@end

@implementation _GCControllerManagerServer(IPC)

- (void)registerIPCObject:()IPC .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCControllerManagerServer.m" lineNumber:1015 description:@"Object has nil IPCIdentifier"];
}

@end