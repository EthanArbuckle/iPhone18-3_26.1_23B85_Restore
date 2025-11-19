@interface NSXPCConnection(Announce)
- (uint64_t)an_isRemotePlaybackSession;
@end

@implementation NSXPCConnection(Announce)

- (uint64_t)an_isRemotePlaybackSession
{
  v1 = [a1 serviceName];
  v2 = [v1 isEqualToString:*MEMORY[0x277CEAA50]];

  return v2;
}

@end