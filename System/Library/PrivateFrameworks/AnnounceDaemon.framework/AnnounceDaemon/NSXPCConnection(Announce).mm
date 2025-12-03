@interface NSXPCConnection(Announce)
- (uint64_t)an_isRemotePlaybackSession;
@end

@implementation NSXPCConnection(Announce)

- (uint64_t)an_isRemotePlaybackSession
{
  serviceName = [self serviceName];
  v2 = [serviceName isEqualToString:*MEMORY[0x277CEAA50]];

  return v2;
}

@end