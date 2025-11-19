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
  if ([a1 avkit_isAVPlayerControllerOrSubclass])
  {
    v2 = _AVLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_18B49C000, v2, OS_LOG_TYPE_ERROR, "WebKit AVPlayerController data is not available for AVPlayerController subclasses.", v5, 2u);
    }
  }

  v3 = objc_getAssociatedObject(a1, AVPlayerControllerWebKitDataPropertyKey);
  if (!v3)
  {
    v3 = [[AVPlayerControllerWebKitData alloc] initWithPlayerController:a1];
    objc_setAssociatedObject(a1, AVPlayerControllerWebKitDataPropertyKey, v3, 1);
  }

  return v3;
}

- (void)avkit_setWebKitDelegate:()AVPlayerController_WebKitAdditions
{
  v5 = a3;
  if (([a1 avkit_isAVPlayerControllerOrSubclass] & 1) == 0)
  {
    v4 = [a1 _avkit_playerControllerWebKitData];
    [v4 setDelegate:v5];
  }
}

- (id)avkit_webkitDelegate
{
  if ([a1 avkit_isAVPlayerControllerOrSubclass])
  {
    v2 = 0;
  }

  else
  {
    v3 = [a1 _avkit_playerControllerWebKitData];
    v2 = [v3 delegate];
  }

  return v2;
}

- (void)avkit_setWebKitSeekToTime:()AVPlayerController_WebKitAdditions
{
  if (([a1 avkit_isAVPlayerControllerOrSubclass] & 1) == 0)
  {
    v4 = [a1 _avkit_playerControllerWebKitData];
    [v4 setSeekToTime:a2];
  }
}

- (void)avkit_webkitSeekToTime
{
  if (([a1 avkit_isAVPlayerControllerOrSubclass] & 1) == 0)
  {
    v2 = [a1 _avkit_playerControllerWebKitData];
    [v2 seekToTime];
  }
}

- (void)avkit_setWebKitIsScrubbing:()AVPlayerController_WebKitAdditions
{
  if (([a1 avkit_isAVPlayerControllerOrSubclass] & 1) == 0)
  {
    v5 = [a1 _avkit_playerControllerWebKitData];
    [v5 setScrubbing:a3];
  }
}

- (uint64_t)avkit_webkitIsScrubbing
{
  if ([a1 avkit_isAVPlayerControllerOrSubclass])
  {
    return 0;
  }

  v3 = [a1 _avkit_playerControllerWebKitData];
  v4 = [v3 isScrubbing];

  return v4;
}

@end