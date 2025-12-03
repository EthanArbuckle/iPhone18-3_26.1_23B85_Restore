@interface AVAudioSession(AVPlaybackRouteSelecting_Private)
- (AVExternalPlaybackController)_externalPlaybackController;
- (void)prepareRouteSelectionForPlaybackFromBundleID:()AVPlaybackRouteSelecting_Private withCompletionHandler:;
@end

@implementation AVAudioSession(AVPlaybackRouteSelecting_Private)

- (AVExternalPlaybackController)_externalPlaybackController
{
  v2 = objc_getAssociatedObject(self, @"externalPlaybackController");
  if (!v2)
  {
    v2 = objc_alloc_init(AVExternalPlaybackController);
    objc_setAssociatedObject(self, @"externalPlaybackController", v2, 0x301);
  }

  return v2;
}

- (void)prepareRouteSelectionForPlaybackFromBundleID:()AVPlaybackRouteSelecting_Private withCompletionHandler:
{
  v6 = a4;
  v7 = a3;
  _externalPlaybackController = [self _externalPlaybackController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __119__AVAudioSession_AVPlaybackRouteSelecting_Private__prepareRouteSelectionForPlaybackFromBundleID_withCompletionHandler___block_invoke;
  v10[3] = &unk_1E7209280;
  v11 = v6;
  v9 = v6;
  [_externalPlaybackController willBeginPlaybackFromAppWithBundleID:v7 completionHandler:v10];
}

@end