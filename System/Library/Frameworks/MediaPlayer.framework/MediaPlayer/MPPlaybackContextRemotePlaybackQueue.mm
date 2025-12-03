@interface MPPlaybackContextRemotePlaybackQueue
- (MPPlaybackContextRemotePlaybackQueue)initWithPlaybackContext:(id)context;
@end

@implementation MPPlaybackContextRemotePlaybackQueue

- (MPPlaybackContextRemotePlaybackQueue)initWithPlaybackContext:(id)context
{
  contextCopy = context;
  v6 = [(MPRemotePlaybackQueue *)self initWithMediaRemotePlaybackQueue:0 options:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playbackContext, context);
  }

  return v7;
}

@end