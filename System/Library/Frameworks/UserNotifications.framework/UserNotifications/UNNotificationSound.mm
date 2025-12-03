@interface UNNotificationSound
+ (UNNotificationSound)criticalSoundNamed:(UNNotificationSoundName)name withAudioVolume:(float)volume;
+ (UNNotificationSound)defaultCriticalSoundWithAudioVolume:(float)volume;
- (BOOL)isEqual:(id)equal;
- (UNNotificationSound)init;
- (UNNotificationSound)initWithCoder:(id)coder;
- (id)_initWithAlertType:(int64_t)type alertTopic:(id)topic audioCategory:(id)category audioVolume:(id)volume critical:(BOOL)critical maximumDuration:(double)duration shouldIgnoreAccessibilityDisabledVibrationSetting:(BOOL)setting shouldIgnoreRingerSwitch:(BOOL)self0 shouldRepeat:(BOOL)self1 toneFileName:(id)self2 toneFileURL:(id)self3 toneIdentifier:(id)self4 toneMediaLibraryItemIdentifier:(unint64_t)self5 vibrationIdentifier:(id)self6 vibrationPatternFileURL:(id)self7;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNNotificationSound

+ (UNNotificationSound)defaultCriticalSoundWithAudioVolume:(float)volume
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v5 = [self _soundWithAlertType:17 audioVolume:v4 critical:1 toneFileName:0];

  return v5;
}

+ (UNNotificationSound)criticalSoundNamed:(UNNotificationSoundName)name withAudioVolume:(float)volume
{
  v6 = MEMORY[0x1E696AD98];
  v7 = name;
  *&v8 = volume;
  v9 = [v6 numberWithFloat:v8];
  v10 = [self _soundWithAlertType:17 audioVolume:v9 critical:1 toneFileName:v7];

  return v10;
}

- (id)_initWithAlertType:(int64_t)type alertTopic:(id)topic audioCategory:(id)category audioVolume:(id)volume critical:(BOOL)critical maximumDuration:(double)duration shouldIgnoreAccessibilityDisabledVibrationSetting:(BOOL)setting shouldIgnoreRingerSwitch:(BOOL)self0 shouldRepeat:(BOOL)self1 toneFileName:(id)self2 toneFileURL:(id)self3 toneIdentifier:(id)self4 toneMediaLibraryItemIdentifier:(unint64_t)self5 vibrationIdentifier:(id)self6 vibrationPatternFileURL:(id)self7
{
  topicCopy = topic;
  categoryCopy = category;
  volumeCopy = volume;
  nameCopy = name;
  lCopy = l;
  identifierCopy = identifier;
  vibrationIdentifierCopy = vibrationIdentifier;
  rLCopy = rL;
  v51.receiver = self;
  v51.super_class = UNNotificationSound;
  v29 = [(UNNotificationSound *)&v51 init];
  v30 = v29;
  if (v29)
  {
    v29->_alertType = type;
    v31 = [topicCopy copy];
    alertTopic = v30->_alertTopic;
    v30->_alertTopic = v31;

    v33 = [categoryCopy copy];
    audioCategory = v30->_audioCategory;
    v30->_audioCategory = v33;

    v35 = [volumeCopy copy];
    audioVolume = v30->_audioVolume;
    v30->_audioVolume = v35;

    v37 = [nameCopy copy];
    toneFileName = v30->_toneFileName;
    v30->_toneFileName = v37;

    v39 = [lCopy copy];
    toneFileURL = v30->_toneFileURL;
    v30->_toneFileURL = v39;

    v30->_critical = critical;
    v30->_maximumDuration = duration;
    v30->_shouldIgnoreAccessibilityDisabledVibrationSetting = setting;
    v30->_shouldIgnoreRingerSwitch = switch;
    v30->_shouldRepeat = repeat;
    v41 = [identifierCopy copy];
    toneIdentifier = v30->_toneIdentifier;
    v30->_toneIdentifier = v41;

    v30->_toneMediaLibraryItemIdentifier = itemIdentifier;
    v43 = [rLCopy copy];
    vibrationPatternFileURL = v30->_vibrationPatternFileURL;
    v30->_vibrationPatternFileURL = v43;

    v45 = [vibrationIdentifierCopy copy];
    vibrationIdentifier = v30->_vibrationIdentifier;
    v30->_vibrationIdentifier = v45;
  }

  return v30;
}

- (UNNotificationSound)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UNNotificationSound.m" lineNumber:122 description:@"use +soundWithIdentifier:"];

  return 0;
}

- (unint64_t)hash
{
  alertType = [(UNNotificationSound *)self alertType];
  alertTopic = [(UNNotificationSound *)self alertTopic];
  v4 = [alertTopic hash] ^ alertType;
  audioCategory = [(UNNotificationSound *)self audioCategory];
  v5 = [audioCategory hash];
  audioVolume = [(UNNotificationSound *)self audioVolume];
  v7 = v4 ^ v5 ^ [audioVolume hash];
  v8 = MEMORY[0x1E696AD98];
  [(UNNotificationSound *)self maximumDuration];
  v9 = [v8 numberWithDouble:?];
  v10 = [v9 hash];
  v11 = v7 ^ [(UNNotificationSound *)self isCritical];
  v12 = v11 ^ [(UNNotificationSound *)self shouldIgnoreAccessibilityDisabledVibrationSetting];
  v13 = v12 ^ [(UNNotificationSound *)self shouldIgnoreRingerSwitch]^ v10;
  shouldRepeat = [(UNNotificationSound *)self shouldRepeat];
  toneFileName = [(UNNotificationSound *)self toneFileName];
  v16 = shouldRepeat ^ [toneFileName hash];
  toneFileURL = [(UNNotificationSound *)self toneFileURL];
  v18 = v16 ^ [toneFileURL hash];
  toneIdentifier = [(UNNotificationSound *)self toneIdentifier];
  v20 = v13 ^ v18 ^ [toneIdentifier hash];
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:{-[UNNotificationSound toneMediaLibraryItemIdentifier](self, "toneMediaLibraryItemIdentifier")}];
  v22 = [v21 hash];
  vibrationIdentifier = [(UNNotificationSound *)self vibrationIdentifier];
  v24 = v20 ^ [vibrationIdentifier hash];
  vibrationPatternFileURL = [(UNNotificationSound *)self vibrationPatternFileURL];
  v26 = v24 ^ [vibrationPatternFileURL hash];

  return v26 ^ v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = UNEqualIntegers(-[UNNotificationSound alertType](self, "alertType"), [equalCopy alertType]);
    alertTopic = [(UNNotificationSound *)self alertTopic];
    alertTopic2 = [equalCopy alertTopic];
    v8 = v5 & UNEqualStrings(alertTopic, alertTopic2);

    audioCategory = [(UNNotificationSound *)self audioCategory];
    audioCategory2 = [equalCopy audioCategory];
    LODWORD(alertTopic2) = UNEqualStrings(audioCategory, audioCategory2);

    audioVolume = [(UNNotificationSound *)self audioVolume];
    audioVolume2 = [equalCopy audioVolume];
    LODWORD(alertTopic2) = v8 & alertTopic2 & UNEqualObjects(audioVolume, audioVolume2);

    [(UNNotificationSound *)self maximumDuration];
    v14 = v13;
    [equalCopy maximumDuration];
    LODWORD(audioVolume) = UNEqualDoubles(v14, v15);
    LODWORD(audioVolume2) = audioVolume & UNEqualBools(-[UNNotificationSound isCritical](self, "isCritical"), [equalCopy isCritical]);
    LODWORD(alertTopic2) = alertTopic2 & audioVolume2 & UNEqualBools(-[UNNotificationSound shouldIgnoreAccessibilityDisabledVibrationSetting](self, "shouldIgnoreAccessibilityDisabledVibrationSetting"), [equalCopy shouldIgnoreAccessibilityDisabledVibrationSetting]);
    LODWORD(audioVolume) = UNEqualBools(-[UNNotificationSound shouldIgnoreRingerSwitch](self, "shouldIgnoreRingerSwitch"), [equalCopy shouldIgnoreRingerSwitch]);
    v16 = audioVolume & UNEqualBools(-[UNNotificationSound shouldRepeat](self, "shouldRepeat"), [equalCopy shouldRepeat]);
    toneFileName = [(UNNotificationSound *)self toneFileName];
    toneFileName2 = [equalCopy toneFileName];
    v19 = v16 & UNEqualStrings(toneFileName, toneFileName2);

    toneFileURL = [(UNNotificationSound *)self toneFileURL];
    toneFileURL2 = [equalCopy toneFileURL];
    LODWORD(alertTopic2) = alertTopic2 & v19 & UNEqualObjects(toneFileURL, toneFileURL2);

    toneIdentifier = [(UNNotificationSound *)self toneIdentifier];
    toneIdentifier2 = [equalCopy toneIdentifier];
    v24 = alertTopic2 & UNEqualStrings(toneIdentifier, toneIdentifier2);

    LODWORD(toneIdentifier) = UNEqualDoubles(-[UNNotificationSound toneMediaLibraryItemIdentifier](self, "toneMediaLibraryItemIdentifier"), [equalCopy toneMediaLibraryItemIdentifier]);
    vibrationIdentifier = [(UNNotificationSound *)self vibrationIdentifier];
    vibrationIdentifier2 = [equalCopy vibrationIdentifier];
    v27 = v24 & UNEqualStrings(vibrationIdentifier, vibrationIdentifier2);

    vibrationPatternFileURL = [(UNNotificationSound *)self vibrationPatternFileURL];
    vibrationPatternFileURL2 = [equalCopy vibrationPatternFileURL];
    v30 = v27 & UNEqualObjects(vibrationPatternFileURL, vibrationPatternFileURL2) & toneIdentifier;
  }

  else
  {
    LOBYTE(v30) = 1;
  }

  return v30;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v23 = [UNMutableNotificationSound allocWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  alertTopic = [(UNNotificationSound *)self alertTopic];
  [coderCopy encodeObject:alertTopic forKey:@"alertTopic"];

  [coderCopy encodeInteger:-[UNNotificationSound alertType](self forKey:{"alertType"), @"alertType"}];
  audioCategory = [(UNNotificationSound *)self audioCategory];
  [coderCopy encodeObject:audioCategory forKey:@"audioCategory"];

  audioVolume = [(UNNotificationSound *)self audioVolume];
  [coderCopy encodeObject:audioVolume forKey:@"audioVolume"];

  [coderCopy encodeBool:-[UNNotificationSound isCritical](self forKey:{"isCritical"), @"critical"}];
  [(UNNotificationSound *)self maximumDuration];
  [coderCopy encodeDouble:@"maximumDuration" forKey:?];
  [coderCopy encodeBool:-[UNNotificationSound shouldIgnoreAccessibilityDisabledVibrationSetting](self forKey:{"shouldIgnoreAccessibilityDisabledVibrationSetting"), @"shouldIgnoreAccessibilityDisabledVibrationSetting"}];
  [coderCopy encodeBool:-[UNNotificationSound shouldIgnoreRingerSwitch](self forKey:{"shouldIgnoreRingerSwitch"), @"shouldIgnoreRingerSwitch"}];
  [coderCopy encodeBool:-[UNNotificationSound shouldRepeat](self forKey:{"shouldRepeat"), @"shouldRepeat"}];
  toneFileName = [(UNNotificationSound *)self toneFileName];
  [coderCopy encodeObject:toneFileName forKey:@"toneFileName"];

  toneFileURL = [(UNNotificationSound *)self toneFileURL];
  [coderCopy encodeObject:toneFileURL forKey:@"toneFileURL"];

  toneIdentifier = [(UNNotificationSound *)self toneIdentifier];
  [coderCopy encodeObject:toneIdentifier forKey:@"toneIdentifier"];

  [coderCopy encodeInt64:-[UNNotificationSound toneMediaLibraryItemIdentifier](self forKey:{"toneMediaLibraryItemIdentifier"), @"toneMediaLibraryItemIdentifier"}];
  vibrationIdentifier = [(UNNotificationSound *)self vibrationIdentifier];
  [coderCopy encodeObject:vibrationIdentifier forKey:@"vibrationIdentifier"];

  vibrationPatternFileURL = [(UNNotificationSound *)self vibrationPatternFileURL];
  [coderCopy encodeObject:vibrationPatternFileURL forKey:@"vibrationPatternFileURL"];
}

- (UNNotificationSound)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertTopic"];
  v21 = [coderCopy decodeIntegerForKey:@"alertType"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioCategory"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioVolume"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"toneFileName"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"toneFileURL"];
  [coderCopy decodeDoubleForKey:@"maximumDuration"];
  v7 = v6;
  v18 = [coderCopy decodeBoolForKey:@"critical"];
  v8 = [coderCopy decodeBoolForKey:@"shouldIgnoreAccessibilityDisabledVibrationSetting"];
  v9 = [coderCopy decodeBoolForKey:@"shouldIgnoreRingerSwitch"];
  v10 = [coderCopy decodeBoolForKey:@"shouldRepeat"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"toneIdentifier"];
  v12 = [coderCopy decodeInt64ForKey:@"toneMediaLibraryItemIdentifier"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vibrationIdentifier"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vibrationPatternFileURL"];

  BYTE1(v17) = v10;
  LOBYTE(v17) = v9;
  v15 = [(UNNotificationSound *)self _initWithAlertType:v21 alertTopic:v22 audioCategory:v20 audioVolume:v19 critical:v18 maximumDuration:v8 shouldIgnoreAccessibilityDisabledVibrationSetting:v7 shouldIgnoreRingerSwitch:v17 shouldRepeat:v4 toneFileName:v5 toneFileURL:v11 toneIdentifier:v12 toneMediaLibraryItemIdentifier:v13 vibrationIdentifier:v14 vibrationPatternFileURL:?];

  return v15;
}

@end