@interface UNMutableNotificationSound
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAlertTopic:(id)topic;
- (void)setAudioCategory:(id)category;
- (void)setToneFileName:(id)name;
- (void)setToneFileURL:(id)l;
- (void)setToneIdentifier:(id)identifier;
- (void)setVibrationIdentifier:(id)identifier;
- (void)setVibrationPatternFileURL:(id)l;
@end

@implementation UNMutableNotificationSound

- (void)setAlertTopic:(id)topic
{
  v4 = [topic copy];
  alertTopic = self->super._alertTopic;
  self->super._alertTopic = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAudioCategory:(id)category
{
  v4 = [category copy];
  audioCategory = self->super._audioCategory;
  self->super._audioCategory = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setToneFileName:(id)name
{
  v4 = [name copy];
  toneFileName = self->super._toneFileName;
  self->super._toneFileName = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setToneFileURL:(id)l
{
  v4 = [l copy];
  toneFileURL = self->super._toneFileURL;
  self->super._toneFileURL = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setToneIdentifier:(id)identifier
{
  v4 = [identifier copy];
  toneIdentifier = self->super._toneIdentifier;
  self->super._toneIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setVibrationIdentifier:(id)identifier
{
  v4 = [identifier copy];
  vibrationIdentifier = self->super._vibrationIdentifier;
  self->super._vibrationIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setVibrationPatternFileURL:(id)l
{
  v4 = [l copy];
  vibrationPatternFileURL = self->super._vibrationPatternFileURL;
  self->super._vibrationPatternFileURL = v4;

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = [UNNotificationSound allocWithZone:zone];
  alertType = [(UNNotificationSound *)self alertType];
  alertTopic = [(UNNotificationSound *)self alertTopic];
  audioCategory = [(UNNotificationSound *)self audioCategory];
  audioVolume = [(UNNotificationSound *)self audioVolume];
  isCritical = [(UNNotificationSound *)self isCritical];
  [(UNNotificationSound *)self maximumDuration];
  v6 = v5;
  shouldIgnoreAccessibilityDisabledVibrationSetting = [(UNNotificationSound *)self shouldIgnoreAccessibilityDisabledVibrationSetting];
  shouldIgnoreRingerSwitch = [(UNNotificationSound *)self shouldIgnoreRingerSwitch];
  shouldRepeat = [(UNNotificationSound *)self shouldRepeat];
  toneFileName = [(UNNotificationSound *)self toneFileName];
  toneFileURL = [(UNNotificationSound *)self toneFileURL];
  toneIdentifier = [(UNNotificationSound *)self toneIdentifier];
  toneMediaLibraryItemIdentifier = [(UNNotificationSound *)self toneMediaLibraryItemIdentifier];
  vibrationIdentifier = [(UNNotificationSound *)self vibrationIdentifier];
  vibrationPatternFileURL = [(UNNotificationSound *)self vibrationPatternFileURL];
  BYTE1(v18) = shouldRepeat;
  LOBYTE(v18) = shouldIgnoreRingerSwitch;
  v16 = [(UNNotificationSound *)v23 _initWithAlertType:alertType alertTopic:alertTopic audioCategory:audioCategory audioVolume:audioVolume critical:isCritical maximumDuration:shouldIgnoreAccessibilityDisabledVibrationSetting shouldIgnoreAccessibilityDisabledVibrationSetting:v6 shouldIgnoreRingerSwitch:v18 shouldRepeat:toneFileName toneFileName:toneFileURL toneFileURL:toneIdentifier toneIdentifier:toneMediaLibraryItemIdentifier toneMediaLibraryItemIdentifier:vibrationIdentifier vibrationIdentifier:vibrationPatternFileURL vibrationPatternFileURL:?];

  return v16;
}

@end