@interface AVLocalOutputDeviceImpl
- (BOOL)setAllowsHeadTrackedSpatialAudio:(BOOL)a3 error:(id *)a4;
- (BOOL)setConversationDetectionEnabled:(BOOL)a3 error:(id *)a4;
- (BOOL)setCurrentBluetoothListeningMode:(id)a3 error:(id *)a4;
- (BOOL)setHeadTrackedSpatialAudioMode:(id)a3 error:(id *)a4;
- (void)configureUsingBlock:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)setCarPlayVideoActive:(BOOL)a3 completionHandler:(id)a4;
- (void)setSecondDisplayMode:(id)a3 completionHandler:(id)a4;
@end

@implementation AVLocalOutputDeviceImpl

- (void)setCarPlayVideoActive:(BOOL)a3 completionHandler:(id)a4
{
  if (a4)
  {
    v5 = AVLocalizedErrorWithUnderlyingOSStatus(-16726, 0);
    v6 = *(a4 + 2);

    v6(a4, v5);
  }
}

- (void)setSecondDisplayMode:(id)a3 completionHandler:(id)a4
{
  v5 = AVLocalizedError(@"AVFoundationErrorDomain", -11862, 0);
  v6 = *(a4 + 2);

  v6(a4, 0, v5);
}

- (BOOL)setAllowsHeadTrackedSpatialAudio:(BOOL)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = AVLocalizedErrorWithUnderlyingOSStatus(-11862, 0);
  }

  return 0;
}

- (BOOL)setHeadTrackedSpatialAudioMode:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = AVLocalizedErrorWithUnderlyingOSStatus(-11862, 0);
  }

  return 0;
}

- (BOOL)setConversationDetectionEnabled:(BOOL)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = AVLocalizedErrorWithUnderlyingOSStatus(-11862, 0);
  }

  return 0;
}

- (BOOL)setCurrentBluetoothListeningMode:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = AVLocalizedErrorWithUnderlyingOSStatus(-11862, 0);
  }

  return 0;
}

- (void)configureUsingBlock:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v6 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
  v7 = *(a5 + 2);

  v7(a5, 1, 0, 0, v6);
}

@end