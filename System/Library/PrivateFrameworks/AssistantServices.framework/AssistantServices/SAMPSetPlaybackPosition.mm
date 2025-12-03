@interface SAMPSetPlaybackPosition
- (void)_ad_performPreviousItemWithTargetQueue:(id)queue completion:(id)completion;
- (void)_ad_performSeekToBeginningWithTargetQueue:(id)queue completion:(id)completion;
- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler;
@end

@implementation SAMPSetPlaybackPosition

- (void)_ad_performPreviousItemWithTargetQueue:(id)queue completion:(id)completion
{
  v9 = kMRMediaRemoteOptionRequestDefermentToPlaybackQueuePosition;
  v10 = &__kCFBooleanTrue;
  completionCopy = completion;
  queueCopy = queue;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  sub_1001B7630(5, self, v8, queueCopy, completionCopy);
}

- (void)_ad_performSeekToBeginningWithTargetQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v7 = dispatch_get_global_queue(0, 0);
  v10 = completionCopy;
  v8 = queueCopy;
  v9 = completionCopy;
  AFGetNowPlayingInfoDictionary();
}

- (void)_ad_performWithMediaRemoteService:(id)service replyHandler:(id)handler
{
  handlerCopy = handler;
  serviceCopy = service;
  position = [(SAMPSetPlaybackPosition *)self position];
  targetQueue = [serviceCopy targetQueue];

  switch(position)
  {
    case 3u:
      [(SAMPSetPlaybackPosition *)self _ad_performSeekToBeginningWithTargetQueue:targetQueue completion:handlerCopy];
      break;
    case 2u:
      [(SAMPSetPlaybackPosition *)self _ad_performPreviousItemWithTargetQueue:targetQueue completion:handlerCopy];
      break;
    case 1u:
      [(SAMPSetPlaybackPosition *)self _ad_performNextItemWithTargetQueue:targetQueue completion:handlerCopy];
      break;
    default:
      if (handlerCopy)
      {
        v9 = [[SACommandFailed alloc] initWithReason:@"Unsupported playback position request"];
        handlerCopy[2](handlerCopy, v9, 0);
      }

      break;
  }
}

@end