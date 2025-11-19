@interface AVPlayerInterstitialEventController
+ (AVPlayerInterstitialEventController)interstitialEventControllerWithPrimaryPlayer:(AVPlayer *)primaryPlayer;
- (AVPlayerInterstitialEventController)initWithPrimaryPlayer:(AVPlayer *)primaryPlayer;
- (NSBundle)localizedStringsBundle;
- (NSString)localizedStringsTableName;
- (void)_resetPlaybackCoordinatorTimelineExpectations;
- (void)cancelCurrentEventWithReason:(id)a3;
- (void)cancelCurrentEventWithResumptionOffset:(CMTime *)resumptionOffset;
- (void)dealloc;
- (void)setCurrentRemoteEventSkippableState:(int64_t)a3;
- (void)setCurrentRemoteEventSkippableState:(int64_t)a3 withLabel:(id)a4;
- (void)setEvents:(NSArray *)events;
- (void)setLocalizedStringsBundle:(id)a3;
- (void)setLocalizedStringsTableName:(id)a3;
- (void)skipCurrentEvent;
@end

@implementation AVPlayerInterstitialEventController

+ (AVPlayerInterstitialEventController)interstitialEventControllerWithPrimaryPlayer:(AVPlayer *)primaryPlayer
{
  v3 = [[a1 alloc] initWithPrimaryPlayer:primaryPlayer];

  return v3;
}

- (AVPlayerInterstitialEventController)initWithPrimaryPlayer:(AVPlayer *)primaryPlayer
{
  v5 = [(AVPlayer *)primaryPlayer _copyInterstitialCoordinator];
  if (v5)
  {
    CFRelease(v5);
    v9.receiver = self;
    v9.super_class = AVPlayerInterstitialEventController;
    v6 = [(AVPlayerInterstitialEventMonitor *)&v9 initWithPrimaryPlayer:primaryPlayer];
    if (v6)
    {
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v6->_ivarQueue = dispatch_queue_create("com.apple.avplayerinterstitialeventcontroller", v7);
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  ivarQueue = self->_ivarQueue;
  if (ivarQueue)
  {
    dispatch_release(ivarQueue);
  }

  v4.receiver = self;
  v4.super_class = AVPlayerInterstitialEventController;
  [(AVPlayerInterstitialEventMonitor *)&v4 dealloc];
}

- (void)setEvents:(NSArray *)events
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NSArray *)events countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(events);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v13 = 0;
        if (([v9 validate:&v13] & 1) == 0)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"invalid event %@ (%d)", v9, v13), 0}]);
        }
      }

      v6 = [(NSArray *)events countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] _copyInterstitialCoordinator];
  v11 = [(AVPlayerInterstitialEventMonitor *)self makeCopyOf:events immutable:0];
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v12)
  {
    v12(v10, v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

- (void)cancelCurrentEventWithResumptionOffset:(CMTime *)resumptionOffset
{
  v5 = [[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] _copyInterstitialCoordinator];
  [(AVPlayerInterstitialEventController *)self _resetPlaybackCoordinatorTimelineExpectations];
  v7 = *resumptionOffset;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v6)
  {
    v8 = v7;
    v6(v5, &v8);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

- (void)skipCurrentEvent
{
  v3 = [[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] _copyInterstitialCoordinator];
  [(AVPlayerInterstitialEventController *)self _resetPlaybackCoordinatorTimelineExpectations];
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (v4)
  {
    v4(v3, *MEMORY[0x1E6972EA8]);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

- (NSBundle)localizedStringsBundle
{
  v2 = [[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] _copyInterstitialCoordinator];
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(v2, *MEMORY[0x1E6972E98], AllocatorForMedia, &cf);
    v5 = cf;
  }

  else
  {
    v5 = 0;
  }

  v6 = CFBundleCopyBundleURL(v5);
  v7 = [MEMORY[0x1E696AAE8] bundleWithURL:v6];
  if (v2)
  {
    CFRelease(v2);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

- (void)setLocalizedStringsBundle:(id)a3
{
  v4 = [[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] _copyInterstitialCoordinator];
  v5 = CFBundleCreate(*MEMORY[0x1E695E480], [a3 bundleURL]);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v6(v4, *MEMORY[0x1E6972E98], v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

- (NSString)localizedStringsTableName
{
  v2 = [[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] _copyInterstitialCoordinator];
  cf = 0;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(v2, *MEMORY[0x1E6972EA0], AllocatorForMedia, &cf);
    v5 = cf;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 copy];
  if (v2)
  {
    CFRelease(v2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

- (void)setLocalizedStringsTableName:(id)a3
{
  v4 = [[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] _copyInterstitialCoordinator];
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v5(v4, *MEMORY[0x1E6972EA0], a3);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)_resetPlaybackCoordinatorTimelineExpectations
{
  v3 = [[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] _playbackCoordinatorWithoutTriggeringFullSetup];
  if (v3)
  {
    v4 = v3;
    if ([[(AVPlayerInterstitialEventMonitor *)self currentEvent] _participatesInCoordinatedPlayback])
    {
      if ([[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] currentItem])
      {
        v5 = [(AVPlayerItem *)[[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] currentItem] _coordinationIdentifier];

        [v4 _resetGroupTimelineExpectationsForIdentifier:v5];
      }
    }
  }
}

- (void)cancelCurrentEventWithReason:(id)a3
{
  v5 = [[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] _copyInterstitialCoordinator];
  [(AVPlayerInterstitialEventController *)self _resetPlaybackCoordinatorTimelineExpectations];
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (v6)
  {
    v6(v5, a3);
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

- (void)setCurrentRemoteEventSkippableState:(int64_t)a3
{
  v3 = [[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] _copyInterstitialCoordinatorIfCreated];
  if (FigPlayerInterstitialCoordinatorIsRemote())
  {
    FigPlayerInterstitialRemoteCoordinatorSetCurrentEventSkippableStateWithLabel();
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)setCurrentRemoteEventSkippableState:(int64_t)a3 withLabel:(id)a4
{
  v4 = [[(AVPlayerInterstitialEventMonitor *)self primaryPlayer] _copyInterstitialCoordinatorIfCreated];
  if (FigPlayerInterstitialCoordinatorIsRemote())
  {
    FigPlayerInterstitialRemoteCoordinatorSetCurrentEventSkippableStateWithLabel();
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

@end