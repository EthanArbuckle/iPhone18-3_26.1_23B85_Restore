@interface UNMutableNotificationSound
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAlertTopic:(id)a3;
- (void)setAudioCategory:(id)a3;
- (void)setToneFileName:(id)a3;
- (void)setToneFileURL:(id)a3;
- (void)setToneIdentifier:(id)a3;
- (void)setVibrationIdentifier:(id)a3;
- (void)setVibrationPatternFileURL:(id)a3;
@end

@implementation UNMutableNotificationSound

- (void)setAlertTopic:(id)a3
{
  v4 = [a3 copy];
  alertTopic = self->super._alertTopic;
  self->super._alertTopic = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAudioCategory:(id)a3
{
  v4 = [a3 copy];
  audioCategory = self->super._audioCategory;
  self->super._audioCategory = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setToneFileName:(id)a3
{
  v4 = [a3 copy];
  toneFileName = self->super._toneFileName;
  self->super._toneFileName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setToneFileURL:(id)a3
{
  v4 = [a3 copy];
  toneFileURL = self->super._toneFileURL;
  self->super._toneFileURL = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setToneIdentifier:(id)a3
{
  v4 = [a3 copy];
  toneIdentifier = self->super._toneIdentifier;
  self->super._toneIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setVibrationIdentifier:(id)a3
{
  v4 = [a3 copy];
  vibrationIdentifier = self->super._vibrationIdentifier;
  self->super._vibrationIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setVibrationPatternFileURL:(id)a3
{
  v4 = [a3 copy];
  vibrationPatternFileURL = self->super._vibrationPatternFileURL;
  self->super._vibrationPatternFileURL = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = [UNNotificationSound allocWithZone:a3];
  v21 = [(UNNotificationSound *)self alertType];
  v22 = [(UNNotificationSound *)self alertTopic];
  v20 = [(UNNotificationSound *)self audioCategory];
  v4 = [(UNNotificationSound *)self audioVolume];
  v19 = [(UNNotificationSound *)self isCritical];
  [(UNNotificationSound *)self maximumDuration];
  v6 = v5;
  v7 = [(UNNotificationSound *)self shouldIgnoreAccessibilityDisabledVibrationSetting];
  v8 = [(UNNotificationSound *)self shouldIgnoreRingerSwitch];
  v9 = [(UNNotificationSound *)self shouldRepeat];
  v10 = [(UNNotificationSound *)self toneFileName];
  v11 = [(UNNotificationSound *)self toneFileURL];
  v12 = [(UNNotificationSound *)self toneIdentifier];
  v13 = [(UNNotificationSound *)self toneMediaLibraryItemIdentifier];
  v14 = [(UNNotificationSound *)self vibrationIdentifier];
  v15 = [(UNNotificationSound *)self vibrationPatternFileURL];
  BYTE1(v18) = v9;
  LOBYTE(v18) = v8;
  v16 = [(UNNotificationSound *)v23 _initWithAlertType:v21 alertTopic:v22 audioCategory:v20 audioVolume:v4 critical:v19 maximumDuration:v7 shouldIgnoreAccessibilityDisabledVibrationSetting:v6 shouldIgnoreRingerSwitch:v18 shouldRepeat:v10 toneFileName:v11 toneFileURL:v12 toneIdentifier:v13 toneMediaLibraryItemIdentifier:v14 vibrationIdentifier:v15 vibrationPatternFileURL:?];

  return v16;
}

@end