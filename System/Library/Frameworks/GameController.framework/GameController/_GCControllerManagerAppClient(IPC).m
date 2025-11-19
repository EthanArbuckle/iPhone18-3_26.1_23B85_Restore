@interface _GCControllerManagerAppClient(IPC)
@end

@implementation _GCControllerManagerAppClient(IPC)

- (void)registerIPCObject:()IPC .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCControllerManagerApp.m" lineNumber:840 description:@"Object has nil IPCIdentifier"];
}

@end