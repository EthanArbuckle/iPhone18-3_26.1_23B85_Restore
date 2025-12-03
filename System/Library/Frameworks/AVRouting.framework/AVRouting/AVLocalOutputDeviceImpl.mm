@interface AVLocalOutputDeviceImpl
- (BOOL)setAllowsHeadTrackedSpatialAudio:(BOOL)audio error:(id *)error;
- (BOOL)setConversationDetectionEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setCurrentBluetoothListeningMode:(id)mode error:(id *)error;
- (BOOL)setHeadTrackedSpatialAudioMode:(id)mode error:(id *)error;
- (void)configureUsingBlock:(id)block options:(id)options completionHandler:(id)handler;
- (void)setCarPlayVideoActive:(BOOL)active completionHandler:(id)handler;
- (void)setSecondDisplayMode:(id)mode completionHandler:(id)handler;
@end

@implementation AVLocalOutputDeviceImpl

- (void)setCarPlayVideoActive:(BOOL)active completionHandler:(id)handler
{
  if (handler)
  {
    v5 = AVLocalizedErrorWithUnderlyingOSStatus(-16726, 0);
    v6 = *(handler + 2);

    v6(handler, v5);
  }
}

- (void)setSecondDisplayMode:(id)mode completionHandler:(id)handler
{
  v5 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, 0);
  v6 = *(handler + 2);

  v6(handler, 0, v5);
}

- (BOOL)setAllowsHeadTrackedSpatialAudio:(BOOL)audio error:(id *)error
{
  if (error)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(-11862, 0);
  }

  return 0;
}

- (BOOL)setHeadTrackedSpatialAudioMode:(id)mode error:(id *)error
{
  if (error)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(-11862, 0);
  }

  return 0;
}

- (BOOL)setConversationDetectionEnabled:(BOOL)enabled error:(id *)error
{
  if (error)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(-11862, 0);
  }

  return 0;
}

- (BOOL)setCurrentBluetoothListeningMode:(id)mode error:(id *)error
{
  if (error)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(-11862, 0);
  }

  return 0;
}

- (void)configureUsingBlock:(id)block options:(id)options completionHandler:(id)handler
{
  v6 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
  v7 = *(handler + 2);

  v7(handler, 1, 0, 0, v6);
}

@end