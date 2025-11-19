@interface MPEmptyPlaybackQueue
- (MPEmptyPlaybackQueue)init;
@end

@implementation MPEmptyPlaybackQueue

- (MPEmptyPlaybackQueue)init
{
  v3 = MRSystemAppPlaybackQueueCreate();

  return [(MPRemotePlaybackQueue *)self initWithMediaRemotePlaybackQueue:v3 options:0];
}

@end