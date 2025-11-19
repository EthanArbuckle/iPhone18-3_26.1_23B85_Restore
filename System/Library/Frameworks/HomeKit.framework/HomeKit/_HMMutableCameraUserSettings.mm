@interface _HMMutableCameraUserSettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _HMMutableCameraUserSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_HMCameraUserSettings alloc];
  v5 = [(_HMCameraUserSettings *)self UUID];
  v6 = [(_HMCameraUserSettings *)v4 initWithUUID:v5];

  [(_HMCameraUserSettings *)v6 setSupportedFeatures:[(_HMCameraUserSettings *)self supportedFeatures]];
  [(_HMCameraUserSettings *)v6 setAccessModeAtHome:[(_HMCameraUserSettings *)self accessModeAtHome]];
  [(_HMCameraUserSettings *)v6 setAccessModeNotAtHome:[(_HMCameraUserSettings *)self accessModeNotAtHome]];
  [(_HMCameraUserSettings *)v6 setCurrentAccessMode:[(_HMCameraUserSettings *)self currentAccessMode]];
  [(_HMCameraUserSettings *)v6 setRecordingEventTriggers:[(_HMCameraUserSettings *)self recordingEventTriggers]];
  [(_HMCameraUserSettings *)v6 setCameraManuallyDisabled:[(_HMCameraUserSettings *)self isCameraManuallyDisabled]];
  v7 = [(_HMCameraUserSettings *)self notificationSettings];
  [(_HMCameraUserSettings *)v6 setNotificationSettings:v7];

  v8 = [(_HMCameraUserSettings *)self activityZones];
  [(_HMCameraUserSettings *)v6 setActivityZones:v8];

  [(_HMCameraUserSettings *)v6 setActivityZonesIncludedForSignificantEventDetection:[(_HMCameraUserSettings *)self areActivityZonesIncludedForSignificantEventDetection]];
  return v6;
}

@end