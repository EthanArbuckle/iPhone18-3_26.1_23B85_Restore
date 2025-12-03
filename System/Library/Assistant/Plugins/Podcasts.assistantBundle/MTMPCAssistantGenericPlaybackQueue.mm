@interface MTMPCAssistantGenericPlaybackQueue
- (MTMPCAssistantGenericPlaybackQueue)initWithContextID:(id)d playbackQueueRef:(_MRSystemAppPlaybackQueue *)ref;
@end

@implementation MTMPCAssistantGenericPlaybackQueue

- (MTMPCAssistantGenericPlaybackQueue)initWithContextID:(id)d playbackQueueRef:(_MRSystemAppPlaybackQueue *)ref
{
  v6.receiver = self;
  v6.super_class = MTMPCAssistantGenericPlaybackQueue;
  result = [(MPCAssistantPlaybackQueue *)&v6 initWithContextID:d];
  if (result)
  {
    result->_playbackQueueRef = ref;
  }

  return result;
}

@end