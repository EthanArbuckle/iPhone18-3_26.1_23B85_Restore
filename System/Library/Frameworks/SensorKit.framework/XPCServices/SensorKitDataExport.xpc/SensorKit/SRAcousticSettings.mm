@interface SRAcousticSettings
- (id)sr_dictionaryRepresentation;
@end

@implementation SRAcousticSettings

- (id)sr_dictionaryRepresentation
{
  v24[0] = @"environmentalSoundMeasurementsEnabled";
  if ([(SRAcousticSettings *)self isEnvironmentalSoundMeasurementsEnabled])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v25[0] = v3;
  v24[1] = @"audioExposureSampleLifetime";
  v25[1] = [NSNumber numberWithInteger:[(SRAcousticSettings *)self audioExposureSampleLifetime]];
  v24[2] = @"headphoneSafetyAudioLevel";
  headphoneSafetyAudioLevel = [(SRAcousticSettings *)self headphoneSafetyAudioLevel];
  if (headphoneSafetyAudioLevel)
  {
    [headphoneSafetyAudioLevel doubleValue];
    if (fabs(v5) == INFINITY)
    {
      v6 = @"INF";
    }

    else
    {
      v6 = [NSString stringWithFormat:@"%f", *&v5];
    }
  }

  else
  {
    v6 = @"(null)";
  }

  v25[2] = v6;
  v24[3] = @"soundCheckEnabled";
  if ([-[SRAcousticSettings musicEQSettings](self "musicEQSettings")])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v25[3] = v7;
  v24[4] = @"lateNightModeEnabled";
  if ([-[SRAcousticSettings musicEQSettings](self "musicEQSettings")])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v25[4] = v8;
  v24[5] = @"leftRightBalance";
  [-[SRAcousticSettings accessibilitySettings](self "accessibilitySettings")];
  v9 = [NSNumber numberWithDouble:?];
  if (v9)
  {
    [(NSNumber *)v9 doubleValue];
    if (fabs(v10) == INFINITY)
    {
      v11 = @"INF";
    }

    else
    {
      v11 = [NSString stringWithFormat:@"%f", *&v10];
    }
  }

  else
  {
    v11 = @"(null)";
  }

  v25[5] = v11;
  v24[6] = @"monoAudioEnabled";
  if ([-[SRAcousticSettings accessibilitySettings](self "accessibilitySettings")])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v25[6] = v12;
  v24[7] = @"accessibilityBackgroundSoundsEnabled";
  if ([objc_msgSend(-[SRAcousticSettings accessibilitySettings](self "accessibilitySettings")])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v25[7] = v13;
  v24[8] = @"accessibilityBackgroundSoundsName";
  v25[8] = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_msgSend(-[SRAcousticSettings accessibilitySettings](self "accessibilitySettings")]);
  v24[9] = @"accessibilityBackgroundSoundsPlayWithMediaEnabled";
  if ([objc_msgSend(-[SRAcousticSettings accessibilitySettings](self "accessibilitySettings")])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v25[9] = v14;
  v24[10] = @"accessibilityBackgroundSoundsRelativeVolume";
  [objc_msgSend(-[SRAcousticSettings accessibilitySettings](self "accessibilitySettings")];
  v15 = [NSNumber numberWithDouble:?];
  if (v15)
  {
    [(NSNumber *)v15 doubleValue];
    if (fabs(v16) == INFINITY)
    {
      v17 = @"INF";
    }

    else
    {
      v17 = [NSString stringWithFormat:@"%f", *&v16];
    }
  }

  else
  {
    v17 = @"(null)";
  }

  v25[10] = v17;
  v24[11] = @"accessibilityBackgroundSoundsRelativeVolumeWithMedia";
  [objc_msgSend(-[SRAcousticSettings accessibilitySettings](self "accessibilitySettings")];
  v18 = [NSNumber numberWithDouble:?];
  if (v18)
  {
    [(NSNumber *)v18 doubleValue];
    if (fabs(v19) == INFINITY)
    {
      v20 = @"INF";
    }

    else
    {
      v20 = [NSString stringWithFormat:@"%f", *&v19];
    }
  }

  else
  {
    v20 = @"(null)";
  }

  v25[11] = v20;
  v24[12] = @"accessibilityBackgroundSoundsStopOnLockEnabled";
  if ([objc_msgSend(-[SRAcousticSettings accessibilitySettings](self "accessibilitySettings")])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v25[12] = v21;
  v24[13] = @"headphoneAccommodationsEnabled";
  if ([objc_msgSend(-[SRAcousticSettings accessibilitySettings](self "accessibilitySettings")])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  v25[13] = v22;
  v24[14] = @"headphoneAccommodationsMediaEnhanceTuning";
  v25[14] = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_msgSend(-[SRAcousticSettings accessibilitySettings](self "accessibilitySettings")]);
  v24[15] = @"headphoneAccommodationsMediaEnhanceBoosting";
  v25[15] = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_msgSend(-[SRAcousticSettings accessibilitySettings](self "accessibilitySettings")]);
  v24[16] = @"headphoneAccommodationsMediaEnhanceApplication";
  v25[16] = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_msgSend(-[SRAcousticSettings accessibilitySettings](self "accessibilitySettings")]);
  return [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:17];
}

@end