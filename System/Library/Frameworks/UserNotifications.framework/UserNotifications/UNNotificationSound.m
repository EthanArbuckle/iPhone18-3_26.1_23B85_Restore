@interface UNNotificationSound
+ (UNNotificationSound)criticalSoundNamed:(UNNotificationSoundName)name withAudioVolume:(float)volume;
+ (UNNotificationSound)defaultCriticalSoundWithAudioVolume:(float)volume;
- (BOOL)isEqual:(id)a3;
- (UNNotificationSound)init;
- (UNNotificationSound)initWithCoder:(id)a3;
- (id)_initWithAlertType:(int64_t)a3 alertTopic:(id)a4 audioCategory:(id)a5 audioVolume:(id)a6 critical:(BOOL)a7 maximumDuration:(double)a8 shouldIgnoreAccessibilityDisabledVibrationSetting:(BOOL)a9 shouldIgnoreRingerSwitch:(BOOL)a10 shouldRepeat:(BOOL)a11 toneFileName:(id)a12 toneFileURL:(id)a13 toneIdentifier:(id)a14 toneMediaLibraryItemIdentifier:(unint64_t)a15 vibrationIdentifier:(id)a16 vibrationPatternFileURL:(id)a17;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNNotificationSound

+ (UNNotificationSound)defaultCriticalSoundWithAudioVolume:(float)volume
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v5 = [a1 _soundWithAlertType:17 audioVolume:v4 critical:1 toneFileName:0];

  return v5;
}

+ (UNNotificationSound)criticalSoundNamed:(UNNotificationSoundName)name withAudioVolume:(float)volume
{
  v6 = MEMORY[0x1E696AD98];
  v7 = name;
  *&v8 = volume;
  v9 = [v6 numberWithFloat:v8];
  v10 = [a1 _soundWithAlertType:17 audioVolume:v9 critical:1 toneFileName:v7];

  return v10;
}

- (id)_initWithAlertType:(int64_t)a3 alertTopic:(id)a4 audioCategory:(id)a5 audioVolume:(id)a6 critical:(BOOL)a7 maximumDuration:(double)a8 shouldIgnoreAccessibilityDisabledVibrationSetting:(BOOL)a9 shouldIgnoreRingerSwitch:(BOOL)a10 shouldRepeat:(BOOL)a11 toneFileName:(id)a12 toneFileURL:(id)a13 toneIdentifier:(id)a14 toneMediaLibraryItemIdentifier:(unint64_t)a15 vibrationIdentifier:(id)a16 vibrationPatternFileURL:(id)a17
{
  v50 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = a16;
  v28 = a17;
  v51.receiver = self;
  v51.super_class = UNNotificationSound;
  v29 = [(UNNotificationSound *)&v51 init];
  v30 = v29;
  if (v29)
  {
    v29->_alertType = a3;
    v31 = [v50 copy];
    alertTopic = v30->_alertTopic;
    v30->_alertTopic = v31;

    v33 = [v22 copy];
    audioCategory = v30->_audioCategory;
    v30->_audioCategory = v33;

    v35 = [v23 copy];
    audioVolume = v30->_audioVolume;
    v30->_audioVolume = v35;

    v37 = [v24 copy];
    toneFileName = v30->_toneFileName;
    v30->_toneFileName = v37;

    v39 = [v25 copy];
    toneFileURL = v30->_toneFileURL;
    v30->_toneFileURL = v39;

    v30->_critical = a7;
    v30->_maximumDuration = a8;
    v30->_shouldIgnoreAccessibilityDisabledVibrationSetting = a9;
    v30->_shouldIgnoreRingerSwitch = a10;
    v30->_shouldRepeat = a11;
    v41 = [v26 copy];
    toneIdentifier = v30->_toneIdentifier;
    v30->_toneIdentifier = v41;

    v30->_toneMediaLibraryItemIdentifier = a15;
    v43 = [v28 copy];
    vibrationPatternFileURL = v30->_vibrationPatternFileURL;
    v30->_vibrationPatternFileURL = v43;

    v45 = [v27 copy];
    vibrationIdentifier = v30->_vibrationIdentifier;
    v30->_vibrationIdentifier = v45;
  }

  return v30;
}

- (UNNotificationSound)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UNNotificationSound.m" lineNumber:122 description:@"use +soundWithIdentifier:"];

  return 0;
}

- (unint64_t)hash
{
  v3 = [(UNNotificationSound *)self alertType];
  v29 = [(UNNotificationSound *)self alertTopic];
  v4 = [v29 hash] ^ v3;
  v28 = [(UNNotificationSound *)self audioCategory];
  v5 = [v28 hash];
  v6 = [(UNNotificationSound *)self audioVolume];
  v7 = v4 ^ v5 ^ [v6 hash];
  v8 = MEMORY[0x1E696AD98];
  [(UNNotificationSound *)self maximumDuration];
  v9 = [v8 numberWithDouble:?];
  v10 = [v9 hash];
  v11 = v7 ^ [(UNNotificationSound *)self isCritical];
  v12 = v11 ^ [(UNNotificationSound *)self shouldIgnoreAccessibilityDisabledVibrationSetting];
  v13 = v12 ^ [(UNNotificationSound *)self shouldIgnoreRingerSwitch]^ v10;
  v14 = [(UNNotificationSound *)self shouldRepeat];
  v15 = [(UNNotificationSound *)self toneFileName];
  v16 = v14 ^ [v15 hash];
  v17 = [(UNNotificationSound *)self toneFileURL];
  v18 = v16 ^ [v17 hash];
  v19 = [(UNNotificationSound *)self toneIdentifier];
  v20 = v13 ^ v18 ^ [v19 hash];
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:{-[UNNotificationSound toneMediaLibraryItemIdentifier](self, "toneMediaLibraryItemIdentifier")}];
  v22 = [v21 hash];
  v23 = [(UNNotificationSound *)self vibrationIdentifier];
  v24 = v20 ^ [v23 hash];
  v25 = [(UNNotificationSound *)self vibrationPatternFileURL];
  v26 = v24 ^ [v25 hash];

  return v26 ^ v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = UNEqualIntegers(-[UNNotificationSound alertType](self, "alertType"), [v4 alertType]);
    v6 = [(UNNotificationSound *)self alertTopic];
    v7 = [v4 alertTopic];
    v8 = v5 & UNEqualStrings(v6, v7);

    v9 = [(UNNotificationSound *)self audioCategory];
    v10 = [v4 audioCategory];
    LODWORD(v7) = UNEqualStrings(v9, v10);

    v11 = [(UNNotificationSound *)self audioVolume];
    v12 = [v4 audioVolume];
    LODWORD(v7) = v8 & v7 & UNEqualObjects(v11, v12);

    [(UNNotificationSound *)self maximumDuration];
    v14 = v13;
    [v4 maximumDuration];
    LODWORD(v11) = UNEqualDoubles(v14, v15);
    LODWORD(v12) = v11 & UNEqualBools(-[UNNotificationSound isCritical](self, "isCritical"), [v4 isCritical]);
    LODWORD(v7) = v7 & v12 & UNEqualBools(-[UNNotificationSound shouldIgnoreAccessibilityDisabledVibrationSetting](self, "shouldIgnoreAccessibilityDisabledVibrationSetting"), [v4 shouldIgnoreAccessibilityDisabledVibrationSetting]);
    LODWORD(v11) = UNEqualBools(-[UNNotificationSound shouldIgnoreRingerSwitch](self, "shouldIgnoreRingerSwitch"), [v4 shouldIgnoreRingerSwitch]);
    v16 = v11 & UNEqualBools(-[UNNotificationSound shouldRepeat](self, "shouldRepeat"), [v4 shouldRepeat]);
    v17 = [(UNNotificationSound *)self toneFileName];
    v18 = [v4 toneFileName];
    v19 = v16 & UNEqualStrings(v17, v18);

    v20 = [(UNNotificationSound *)self toneFileURL];
    v21 = [v4 toneFileURL];
    LODWORD(v7) = v7 & v19 & UNEqualObjects(v20, v21);

    v22 = [(UNNotificationSound *)self toneIdentifier];
    v23 = [v4 toneIdentifier];
    v24 = v7 & UNEqualStrings(v22, v23);

    LODWORD(v22) = UNEqualDoubles(-[UNNotificationSound toneMediaLibraryItemIdentifier](self, "toneMediaLibraryItemIdentifier"), [v4 toneMediaLibraryItemIdentifier]);
    v25 = [(UNNotificationSound *)self vibrationIdentifier];
    v26 = [v4 vibrationIdentifier];
    v27 = v24 & UNEqualStrings(v25, v26);

    v28 = [(UNNotificationSound *)self vibrationPatternFileURL];
    v29 = [v4 vibrationPatternFileURL];
    v30 = v27 & UNEqualObjects(v28, v29) & v22;
  }

  else
  {
    LOBYTE(v30) = 1;
  }

  return v30;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v23 = [UNMutableNotificationSound allocWithZone:a3];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNNotificationSound *)self alertTopic];
  [v4 encodeObject:v5 forKey:@"alertTopic"];

  [v4 encodeInteger:-[UNNotificationSound alertType](self forKey:{"alertType"), @"alertType"}];
  v6 = [(UNNotificationSound *)self audioCategory];
  [v4 encodeObject:v6 forKey:@"audioCategory"];

  v7 = [(UNNotificationSound *)self audioVolume];
  [v4 encodeObject:v7 forKey:@"audioVolume"];

  [v4 encodeBool:-[UNNotificationSound isCritical](self forKey:{"isCritical"), @"critical"}];
  [(UNNotificationSound *)self maximumDuration];
  [v4 encodeDouble:@"maximumDuration" forKey:?];
  [v4 encodeBool:-[UNNotificationSound shouldIgnoreAccessibilityDisabledVibrationSetting](self forKey:{"shouldIgnoreAccessibilityDisabledVibrationSetting"), @"shouldIgnoreAccessibilityDisabledVibrationSetting"}];
  [v4 encodeBool:-[UNNotificationSound shouldIgnoreRingerSwitch](self forKey:{"shouldIgnoreRingerSwitch"), @"shouldIgnoreRingerSwitch"}];
  [v4 encodeBool:-[UNNotificationSound shouldRepeat](self forKey:{"shouldRepeat"), @"shouldRepeat"}];
  v8 = [(UNNotificationSound *)self toneFileName];
  [v4 encodeObject:v8 forKey:@"toneFileName"];

  v9 = [(UNNotificationSound *)self toneFileURL];
  [v4 encodeObject:v9 forKey:@"toneFileURL"];

  v10 = [(UNNotificationSound *)self toneIdentifier];
  [v4 encodeObject:v10 forKey:@"toneIdentifier"];

  [v4 encodeInt64:-[UNNotificationSound toneMediaLibraryItemIdentifier](self forKey:{"toneMediaLibraryItemIdentifier"), @"toneMediaLibraryItemIdentifier"}];
  v11 = [(UNNotificationSound *)self vibrationIdentifier];
  [v4 encodeObject:v11 forKey:@"vibrationIdentifier"];

  v12 = [(UNNotificationSound *)self vibrationPatternFileURL];
  [v4 encodeObject:v12 forKey:@"vibrationPatternFileURL"];
}

- (UNNotificationSound)initWithCoder:(id)a3
{
  v3 = a3;
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"alertTopic"];
  v21 = [v3 decodeIntegerForKey:@"alertType"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"audioCategory"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"audioVolume"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"toneFileName"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"toneFileURL"];
  [v3 decodeDoubleForKey:@"maximumDuration"];
  v7 = v6;
  v18 = [v3 decodeBoolForKey:@"critical"];
  v8 = [v3 decodeBoolForKey:@"shouldIgnoreAccessibilityDisabledVibrationSetting"];
  v9 = [v3 decodeBoolForKey:@"shouldIgnoreRingerSwitch"];
  v10 = [v3 decodeBoolForKey:@"shouldRepeat"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"toneIdentifier"];
  v12 = [v3 decodeInt64ForKey:@"toneMediaLibraryItemIdentifier"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"vibrationIdentifier"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"vibrationPatternFileURL"];

  BYTE1(v17) = v10;
  LOBYTE(v17) = v9;
  v15 = [(UNNotificationSound *)self _initWithAlertType:v21 alertTopic:v22 audioCategory:v20 audioVolume:v19 critical:v18 maximumDuration:v8 shouldIgnoreAccessibilityDisabledVibrationSetting:v7 shouldIgnoreRingerSwitch:v17 shouldRepeat:v4 toneFileName:v5 toneFileURL:v11 toneIdentifier:v12 toneMediaLibraryItemIdentifier:v13 vibrationIdentifier:v14 vibrationPatternFileURL:?];

  return v15;
}

@end