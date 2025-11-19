@interface ACRemoteDeviceMessage(Action)
@end

@implementation ACRemoteDeviceMessage(Action)

+ (void)actionMessageWithCommand:()Action account:options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACRemoteDeviceMessage.m" lineNumber:162 description:@"No command was provided to initialize action ACRemoteDeviceMessage!"];
}

@end