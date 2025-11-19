@interface ACRemoteDeviceMessage(Reply)
@end

@implementation ACRemoteDeviceMessage(Reply)

+ (void)replyForMessage:()Reply withSuccess:result:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACRemoteDeviceMessage.m" lineNumber:204 description:@"No message was provided to initalize reply ACRemoteDeviceMessage!"];
}

@end