@interface MSPresentationState
@end

@implementation MSPresentationState

void __48___MSPresentationState_isRunningInCameraContext__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v0 bundleIdentifier];

  if ([v2 isEqualToString:@"com.apple.InCallService"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x1E69A69A0]) & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x1E69A69C0]) & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.iMessageAppsBrowserTest"))
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 isEqualToString:@"com.apple.CameraEffectsDemo"];
  }

  isRunningInCameraContext_isRunningInCameraContext = v1;
}

@end