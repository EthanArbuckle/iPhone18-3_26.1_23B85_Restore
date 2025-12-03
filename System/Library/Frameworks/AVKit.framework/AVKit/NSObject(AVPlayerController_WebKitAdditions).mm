@interface NSObject(AVPlayerController_WebKitAdditions)
- (AVPlayerControllerWebKitData)_avkit_playerControllerWebKitData;
- (id)avkit_webkitDelegate;
- (uint64_t)avkit_webkitIsScrubbing;
- (void)avkit_setWebKitDelegate:()AVPlayerController_WebKitAdditions;
- (void)avkit_setWebKitIsScrubbing:()AVPlayerController_WebKitAdditions;
- (void)avkit_setWebKitSeekToTime:()AVPlayerController_WebKitAdditions;
- (void)avkit_webkitSeekToTime;
@end

@implementation NSObject(AVPlayerController_WebKitAdditions)

- (AVPlayerControllerWebKitData)_avkit_playerControllerWebKitData
{
  if ([self avkit_isAVPlayerControllerOrSubclass])
  {
    v2 = _AVLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_18B49C000, v2, OS_LOG_TYPE_ERROR, "WebKit AVPlayerController data is not available for AVPlayerController subclasses.", v5, 2u);
    }
  }

  v3 = objc_getAssociatedObject(self, AVPlayerControllerWebKitDataPropertyKey);
  if (!v3)
  {
    v3 = [[AVPlayerControllerWebKitData alloc] initWithPlayerController:self];
    objc_setAssociatedObject(self, AVPlayerControllerWebKitDataPropertyKey, v3, 1);
  }

  return v3;
}

- (void)avkit_setWebKitDelegate:()AVPlayerController_WebKitAdditions
{
  v5 = a3;
  if (([self avkit_isAVPlayerControllerOrSubclass] & 1) == 0)
  {
    _avkit_playerControllerWebKitData = [self _avkit_playerControllerWebKitData];
    [_avkit_playerControllerWebKitData setDelegate:v5];
  }
}

- (id)avkit_webkitDelegate
{
  if ([self avkit_isAVPlayerControllerOrSubclass])
  {
    delegate = 0;
  }

  else
  {
    _avkit_playerControllerWebKitData = [self _avkit_playerControllerWebKitData];
    delegate = [_avkit_playerControllerWebKitData delegate];
  }

  return delegate;
}

- (void)avkit_setWebKitSeekToTime:()AVPlayerController_WebKitAdditions
{
  if (([self avkit_isAVPlayerControllerOrSubclass] & 1) == 0)
  {
    _avkit_playerControllerWebKitData = [self _avkit_playerControllerWebKitData];
    [_avkit_playerControllerWebKitData setSeekToTime:a2];
  }
}

- (void)avkit_webkitSeekToTime
{
  if (([self avkit_isAVPlayerControllerOrSubclass] & 1) == 0)
  {
    _avkit_playerControllerWebKitData = [self _avkit_playerControllerWebKitData];
    [_avkit_playerControllerWebKitData seekToTime];
  }
}

- (void)avkit_setWebKitIsScrubbing:()AVPlayerController_WebKitAdditions
{
  if (([self avkit_isAVPlayerControllerOrSubclass] & 1) == 0)
  {
    _avkit_playerControllerWebKitData = [self _avkit_playerControllerWebKitData];
    [_avkit_playerControllerWebKitData setScrubbing:a3];
  }
}

- (uint64_t)avkit_webkitIsScrubbing
{
  if ([self avkit_isAVPlayerControllerOrSubclass])
  {
    return 0;
  }

  _avkit_playerControllerWebKitData = [self _avkit_playerControllerWebKitData];
  isScrubbing = [_avkit_playerControllerWebKitData isScrubbing];

  return isScrubbing;
}

@end