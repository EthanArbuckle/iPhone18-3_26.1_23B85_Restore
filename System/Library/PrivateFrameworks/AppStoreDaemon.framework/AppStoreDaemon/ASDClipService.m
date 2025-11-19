@interface ASDClipService
+ (id)interface;
@end

@implementation ASDClipService

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3049F38];
  objc_opt_self();
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30432F0];
  [v2 setInterface:v3 forSelector:sel_boostSessionUsingChannel_forRequest_withReplyHandler_ argumentIndex:0 ofReply:0];

  return v2;
}

@end