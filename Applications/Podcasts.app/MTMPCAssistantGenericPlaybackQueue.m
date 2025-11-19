@interface MTMPCAssistantGenericPlaybackQueue
- (MTMPCAssistantGenericPlaybackQueue)initWithContextID:(id)a3 playbackQueueRef:(_MRSystemAppPlaybackQueue *)a4;
@end

@implementation MTMPCAssistantGenericPlaybackQueue

- (MTMPCAssistantGenericPlaybackQueue)initWithContextID:(id)a3 playbackQueueRef:(_MRSystemAppPlaybackQueue *)a4
{
  v6.receiver = self;
  v6.super_class = MTMPCAssistantGenericPlaybackQueue;
  result = [(MTMPCAssistantGenericPlaybackQueue *)&v6 initWithContextID:a3];
  if (result)
  {
    result->_playbackQueueRef = a4;
  }

  return result;
}

@end