@interface AVPlayerPlaybackCoordinatorStorage
- (AVPlayerPlaybackCoordinatorStorage)init;
- (void)dealloc;
@end

@implementation AVPlayerPlaybackCoordinatorStorage

- (AVPlayerPlaybackCoordinatorStorage)init
{
  v5.receiver = self;
  v5.super_class = AVPlayerPlaybackCoordinatorStorage;
  v2 = [(AVPlayerPlaybackCoordinatorStorage *)&v5 init];
  if (v2)
  {
    v2->rwQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.playerplaybackcoordinator.storage");
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  rwQueue = self->rwQueue;
  if (rwQueue)
  {
    dispatch_release(rwQueue);
  }

  v4.receiver = self;
  v4.super_class = AVPlayerPlaybackCoordinatorStorage;
  [(AVPlayerPlaybackCoordinatorStorage *)&v4 dealloc];
}

@end