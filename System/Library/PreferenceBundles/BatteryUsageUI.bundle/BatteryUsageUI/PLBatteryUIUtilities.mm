@interface PLBatteryUIUtilities
+ (BOOL)hasBatteryLevelDataAtTapIndex:(int)a3 fromGraphData:(id)a4 queryRange:(int)a5;
+ (BOOL)inDemoMode;
+ (BOOL)is24HourClock;
+ (BOOL)isDateMidnight:(id)a3;
+ (BOOL)isDateStartOfWeek:(id)a3;
+ (BOOL)isDeviceLayoutRTL;
+ (BOOL)isInUnitTest;
+ (BOOL)isTappedIntervalCurrentBucket:(int)a3 withQueryRange:(int)a4 andEndTime:(id)a5;
+ (double)getOneLineWidthOfText:(id)a3 withFont:(id)a4;
+ (double)millisecondsFromMachTime:(unint64_t)a3;
+ (id)accessibilityDescriptionForChargingTime:(double)a3;
+ (id)accessibilityDescriptionForDate:(double)a3;
+ (id)accessibilityDescriptionForDateTime:(double)a3;
+ (id)accessibilityDescriptionForHour:(double)a3 duration:(double)a4;
+ (id)accessibilityDescriptionForTimeInterval:(double)a3;
+ (id)clipWithRoundedCorner:(double)a3 toImage:(id)a4;
+ (id)containerPath;
+ (id)convertImage:(id)a3 toColor:(id)a4;
+ (id)convertImageToGrayScale:(id)a3;
+ (id)getDefaultValueForKey:(id)a3;
+ (id)getLocalizedStringFromNumber:(id)a3;
+ (id)getLocalizedTimeStringFromFutureDate:(id)a3;
+ (id)getRelativeDateStringForDate:(id)a3;
+ (id)getScreenOnOffSecsAtTapIndex:(int)a3 fromGraphData:(id)a4 queryRange:(int)a5;
+ (id)iconUTTypeIdentifierForNonApp:(id)a3;
+ (id)iconUTTypeIdentifierForSuggestion:(int)a3;
+ (id)loadDataFromJSONResource:(id)a3;
+ (id)localizedLPMFooterString;
+ (id)localizedStringForDateComponents:(id)a3;
+ (id)localizedStringWithHour:(int)a3;
+ (id)localizedStringWithMin:(int)a3;
+ (id)localizedStringWithPercentage:(double)a3;
+ (id)percentFormatter;
+ (id)scaledScreenOn:(double)a3 screenOff:(double)a4 andMaxTotalTime:(double)a5;
+ (id)screenOffColor;
+ (id)specFromDictionary:(id)a3;
+ (int)getNumOfBreakdownEntriesAtTapIndex:(int)a3 fromBreakdownData:(id)a4 queryRange:(int)a5;
+ (int64_t)localizedDateComponentsUnitsStyle;
+ (int64_t)localizedLeftTextAlignment;
+ (int64_t)localizedRightTextAlignment;
+ (void)setDefaultValue:(id)a3 forKey:(id)a4;
@end

@implementation PLBatteryUIUtilities

+ (int64_t)localizedDateComponentsUnitsStyle
{
  v2 = +[NSLocale preferredLanguages];
  v3 = [v2 firstObject];
  v4 = [v3 hasPrefix:@"en"];

  if (v4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (id)localizedStringWithHour:(int)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3C10C;
  block[3] = &unk_164FE8;
  block[4] = a1;
  if (qword_187C38 != -1)
  {
    dispatch_once(&qword_187C38, block);
  }

  v4 = [qword_187C40 stringFromTimeInterval:(3600 * a3)];

  return v4;
}

+ (id)localizedStringWithMin:(int)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3C250;
  block[3] = &unk_164FE8;
  block[4] = a1;
  if (qword_187C48 != -1)
  {
    dispatch_once(&qword_187C48, block);
  }

  v4 = [qword_187C50 stringFromTimeInterval:(60 * a3)];

  return v4;
}

+ (double)getOneLineWidthOfText:(id)a3 withFont:(id)a4
{
  v11 = NSFontAttributeName;
  v12 = a4;
  v5 = a4;
  v6 = a3;
  v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  [v6 boundingRectWithSize:3 options:v7 attributes:0 context:{3.40282347e38, 3.40282347e38}];
  v9 = v8;

  return v9;
}

+ (BOOL)isDateStartOfWeek:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:512 fromDate:v3];

  v6 = [v5 weekday];
  LOBYTE(v6) = v6 == (CalWeekStartForDisplay() + 1);

  return v6;
}

+ (int)getNumOfBreakdownEntriesAtTapIndex:(int)a3 fromBreakdownData:(id)a4 queryRange:(int)a5
{
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (a5)
    {
      v9 = [v7 objectForKeyedSubscript:@"PLBatteryUIQueryRangeWeekTapKey"];
      v10 = v9;
      if (v9 && [v9 count] > a3)
      {
LABEL_9:
        v13 = [v10 objectAtIndexedSubscript:a3];
        v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
        v11 = [v14 count];

LABEL_11:
        goto LABEL_12;
      }
    }

    else
    {
      v12 = [v7 objectForKeyedSubscript:@"PLBatteryUIQueryRangeDayTapKey"];
      v10 = v12;
      if (v12 && [v12 count] > a3)
      {
        goto LABEL_9;
      }
    }

    v11 = 0;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (id)getScreenOnOffSecsAtTapIndex:(int)a3 fromGraphData:(id)a4 queryRange:(int)a5
{
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v22 = 0;
    goto LABEL_17;
  }

  if (!a5)
  {
    v23 = [v7 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
    v24 = [v23 objectForKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
    v10 = [v24 objectForKeyedSubscript:@"PLBatteryUIGraphHourly"];

    v25 = [v8 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
    v26 = [v25 objectForKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
    v18 = [v26 objectForKeyedSubscript:@"PLBatteryUIGraphHourly"];

    v11 = 0.0;
    if (!v10 || !v18 || [v10 count] <= a3 || objc_msgSend(v18, "count") <= a3)
    {
      v17 = 0.0;
      goto LABEL_15;
    }

    v27 = [v10 objectAtIndexedSubscript:a3];
    [v27 doubleValue];
    v17 = v28;

    v19 = [v18 objectAtIndexedSubscript:a3];
    [v19 doubleValue];
    v11 = v29;
LABEL_6:

LABEL_15:
    goto LABEL_16;
  }

  v9 = [v7 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
  v10 = v9;
  v11 = 0.0;
  if (v9 && [v9 count] > a3)
  {
    v12 = a3;
    v13 = [v10 objectAtIndexedSubscript:a3];
    v14 = [v13 objectForKeyedSubscript:@"PLBatteryUIScreenOnTimeKey"];
    v15 = [v14 objectForKeyedSubscript:@"PLBatteryUIGraphTotal"];
    [v15 doubleValue];
    v17 = v16;

    v18 = [v10 objectAtIndexedSubscript:v12];
    v19 = [v18 objectForKeyedSubscript:@"PLBatteryUIScreenOffTimeKey"];
    v20 = [v19 objectForKeyedSubscript:@"PLBatteryUIGraphTotal"];
    [v20 doubleValue];
    v11 = v21;

    goto LABEL_6;
  }

  v17 = 0.0;
LABEL_16:

  v30 = [NSNumber numberWithDouble:v17];
  v33[0] = v30;
  v31 = [NSNumber numberWithDouble:v11];
  v33[1] = v31;
  v22 = [NSArray arrayWithObjects:v33 count:2];

LABEL_17:

  return v22;
}

+ (BOOL)hasBatteryLevelDataAtTapIndex:(int)a3 fromGraphData:(id)a4 queryRange:(int)a5
{
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_16;
  }

  if (!a5)
  {
    v15 = [v7 objectForKeyedSubscript:@"PLBatteryUIGraph24hrs"];
    v10 = [v15 objectForKeyedSubscript:@"PLBatteryUIBatteryLevelsKey"];

    if (v10)
    {
      v16 = 4 * a3;
      v17 = 4;
      while ([v10 count] > v16)
      {
        v18 = [v10 objectAtIndexedSubscript:v16];
        v19 = v18;
        if (v18)
        {
          if ([v18 count] == &dword_0 + 2)
          {
            v20 = [v19 objectAtIndexedSubscript:1];
            v21 = [v20 intValue];

            v22 = [v19 objectAtIndexedSubscript:0];
            v23 = [v22 intValue];

            if ((v21 & 1) == 0 && v23 >= 1)
            {

              v14 = 1;
              goto LABEL_15;
            }
          }
        }

        ++v16;
        if (!--v17)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_14;
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v9 = [v7 objectForKeyedSubscript:@"PLBatteryUIGraphDays"];
  v10 = v9;
  if (!v9 || [v9 count] <= a3)
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v11 = [v10 objectAtIndexedSubscript:a3];
  v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIEnergyKey"];
  v13 = [v12 intValue];

  v14 = v13 > 0;
LABEL_15:

LABEL_17:
  return v14;
}

+ (BOOL)isDateMidnight:(id)a3
{
  v3 = a3;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 startOfDayForDate:v3];
  v6 = [v5 isEqual:v3];

  return v6;
}

+ (id)convertImageToGrayScale:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = v4;
  [v3 size];
  v7 = v6;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v9 = CGBitmapContextCreate(0, v5, v7, 8uLL, 0, DeviceGray, 1u);
  v10 = [v3 CGImage];

  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v5;
  v15.size.height = v7;
  CGContextDrawImage(v9, v15, v10);
  Image = CGBitmapContextCreateImage(v9);
  v12 = [UIImage imageWithCGImage:Image];
  CGImageRelease(Image);
  CGContextRelease(v9);
  CGColorSpaceRelease(DeviceGray);

  return v12;
}

+ (id)convertImage:(id)a3 toColor:(id)a4
{
  v5 = a4;
  v6 = [a3 imageWithRenderingMode:2];
  [v6 size];
  v8 = v7;
  v10 = v9;
  [v6 scale];
  v12 = v11;
  v19.width = v8;
  v19.height = v10;
  UIGraphicsBeginImageContextWithOptions(v19, 0, v12);
  [v5 set];

  [v6 size];
  v14 = v13;
  [v6 size];
  [v6 drawInRect:{0.0, 0.0, v14, v15}];
  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v16;
}

+ (id)clipWithRoundedCorner:(double)a3 toImage:(id)a4
{
  v5 = a4;
  [v5 size];
  v7 = v6;
  v9 = v8;
  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = v11;
  v25.width = v7;
  v25.height = v9;
  UIGraphicsBeginImageContextWithOptions(v25, 0, v12);

  [v5 size];
  v14 = v13;
  [v5 size];
  v16 = v15;
  [v5 size];
  v18 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, v14, v16, v17 * a3];
  [v18 addClip];

  [v5 size];
  v20 = v19;
  [v5 size];
  [v5 drawInRect:{0.0, 0.0, v20, v21}];

  v22 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v22;
}

+ (id)screenOffColor
{
  v2 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v3 = +[UIColor systemCyanColor];
  v4 = [v3 resolvedColorWithTraitCollection:v2];

  return v4;
}

+ (BOOL)isTappedIntervalCurrentBucket:(int)a3 withQueryRange:(int)a4 andEndTime:(id)a5
{
  if (a4)
  {
    return a3 == 9;
  }

  v6 = [a5 dateByAddingTimeInterval:(23 - a3) * -3600.0];
  v7 = [v6 dateByAddingTimeInterval:-3600.0];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:v7];
  if (v9 >= 0.0)
  {
    [v8 timeIntervalSinceDate:v6];
    v5 = v10 <= 0.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)scaledScreenOn:(double)a3 screenOff:(double)a4 andMaxTotalTime:(double)a5
{
  v5 = a4;
  v6 = a3 + a4;
  if (v6 > a5)
  {
    a3 = a3 * a5 / v6;
    v5 = v5 * a5 / v6;
  }

  v7 = [NSNumber numberWithDouble:a3];
  v11[0] = v7;
  v8 = [NSNumber numberWithDouble:v5];
  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  return v9;
}

+ (BOOL)isInUnitTest
{
  if (qword_187C60 != -1)
  {
    sub_11496C();
  }

  return byte_187C58;
}

+ (id)iconUTTypeIdentifierForSuggestion:(int)a3
{
  v4 = +[PLModelingUtilities isiPhone];
  v5 = @"ipad";
  if (v4)
  {
    v5 = @"iphone";
  }

  v6 = v5;
  v7 = @"com.apple.graphic-icon.auto-brightness";
  if (a3 > 7)
  {
    switch(a3)
    {
      case 8:
        v7 = @"com.apple.graphic-icon.recent-usage";
        break;
      case 9:
        goto LABEL_5;
      case 10:
        v7 = [NSString stringWithFormat:@"com.apple.graphic-icon.%@.battery-ongoing-restore", v6];
        break;
    }
  }

  else
  {
    if ((a3 - 3) < 5)
    {
LABEL_5:
      v8 = BUILogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_114980(a3, v8);
      }

      v7 = 0;
      goto LABEL_18;
    }

    v9 = @"com.apple.graphic-icon.display";
    if (a3 != 2)
    {
      v9 = @"com.apple.graphic-icon.auto-brightness";
    }

    if (a3 == 1)
    {
      v7 = @"com.apple.graphic-icon.auto-lock";
    }

    else
    {
      v7 = v9;
    }
  }

LABEL_18:

  return v7;
}

+ (id)iconUTTypeIdentifierForNonApp:(id)a3
{
  v3 = a3;
  v4 = +[PLModelingUtilities isiPhone];
  v5 = @"ipad";
  if (v4)
  {
    v5 = @"iphone";
  }

  v6 = v5;
  if ([v3 isEqualToString:@"DeviceSetup"])
  {
    [NSString stringWithFormat:@"com.apple.graphic-icon.%@.battery-ongoing-restore", v6];
    v7 = LABEL_5:;
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"EN"])
  {
    v7 = @"com.apple.graphic-icon.exposure-notifications";
  }

  else if ([v3 isEqualToString:@"Flashlight"])
  {
    v7 = @"com.apple.graphic-icon.flashlight";
  }

  else
  {
    if ([v3 isEqualToString:@"HLS"])
    {
      [NSString stringWithFormat:@"com.apple.graphic-icon.apps-on-%@", v6];
      goto LABEL_5;
    }

    if ([v3 isEqualToString:@"PoorCellCondition"])
    {
      v7 = @"com.apple.graphic-icon.cellular-settings";
    }

    else if ([v3 isEqualToString:@"PowerOutAccessories"])
    {
      v7 = @"com.apple.graphic-icon.usb";
    }

    else if ([v3 isEqualToString:@"SoundRecognition"])
    {
      v7 = @"com.apple.graphic-icon.sound-recognition";
    }

    else if ([v3 isEqualToString:@"Hotspot"])
    {
      v7 = @"com.apple.graphic-icon.personal-hotspot";
    }

    else if ([v3 isEqualToString:@"DeletedApp"])
    {
      v7 = @"com.apple.graphic-icon.uninstalled-apps";
    }

    else
    {
      v9 = BUILogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_1149F8(v3, v9);
      }

      v7 = 0;
    }
  }

LABEL_10:

  return v7;
}

+ (id)localizedLPMFooterString
{
  v2 = +[PLGestaltUtilities has5G];
  v3 = +[PLGestaltUtilities hasPerseus];
  v4 = v3 ^ 1;
  if ((v2 ^ 1) & 1) != 0 || (v4)
  {
    if ((v2 ^ 1 | v3))
    {
      if ((v2 | v4))
      {
        v5 = @"FOOTNOTE_BATTERYSAVERMODE_NO_5G_PROMOTION";
      }

      else
      {
        v5 = @"FOOTNOTE_BATTERYSAVERMODE_PROMOTION";
      }
    }

    else
    {
      v5 = @"FOOTNOTE_BATTERYSAVERMODE_5G";
    }
  }

  else
  {
    v5 = @"FOOTNOTE_BATTERYSAVERMODE";
  }

  v6 = [UIDevice modelSpecificLocalizedStringKeyForKey:v5];
  v7 = BatteryUILocalization(v6);

  return v7;
}

+ (id)specFromDictionary:(id)a3
{
  v14 = 0;
  v3 = [NSJSONSerialization dataWithJSONObject:a3 options:0 error:&v14];
  if (v14)
  {
    v4 = BUILogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_115100(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = 0;
  }

  else
  {
    v12 = [[NSString alloc] initWithData:v3 encoding:4];
  }

  return v12;
}

+ (id)loadDataFromJSONResource:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:v3 ofType:0];

  if (v5)
  {
    v6 = [NSData dataWithContentsOfFile:v5];
    if (v6)
    {
      v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:0];
      goto LABEL_10;
    }

    v15 = BUILogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_11514C(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  else
  {
    v6 = BUILogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_115184(v6, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (double)millisecondsFromMachTime:(unint64_t)a3
{
  if (qword_187CE8 != -1)
  {
    sub_1151BC();
  }

  return *&qword_187CF0 * a3 / 1000000.0;
}

+ (BOOL)is24HourClock
{
  v2 = +[NSLocale currentLocale];
  v3 = PSLocaleUses24HourClock();
  CFRelease(v2);

  return v3;
}

+ (id)getLocalizedStringFromNumber:(id)a3
{
  v3 = a3;
  v4 = +[PLBatteryUIUtilities percentFormatter];
  v5 = [v4 stringFromNumber:v3];

  return v5;
}

+ (id)percentFormatter
{
  if (qword_187D00 != -1)
  {
    sub_1151D0();
  }

  v3 = qword_187CF8;

  return v3;
}

+ (id)containerPath
{
  if (qword_187D10 != -1)
  {
    sub_1151E4();
  }

  v3 = qword_187D08;

  return v3;
}

+ (BOOL)inDemoMode
{
  if (qword_187D18 != -1)
  {
    sub_115288();
  }

  return byte_187D20;
}

+ (id)getDefaultValueForKey:(id)a3
{
  v3 = a3;
  +[PLBatteryUIUtilities containerPath];
  v4 = _CFPreferencesCopyAppValueWithContainer();

  return v4;
}

+ (void)setDefaultValue:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  +[PLBatteryUIUtilities containerPath];
  _CFPreferencesSetAppValueWithContainer();
}

+ (BOOL)isDeviceLayoutRTL
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] == &dword_0 + 1;

  return v3;
}

+ (int64_t)localizedLeftTextAlignment
{
  if (+[PLBatteryUIUtilities isDeviceLayoutRTL])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)localizedRightTextAlignment
{
  if (+[PLBatteryUIUtilities isDeviceLayoutRTL])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

+ (id)localizedStringWithPercentage:(double)a3
{
  v3 = [NSNumber numberWithDouble:a3 / 100.0];
  v4 = [NSNumberFormatter localizedStringFromNumber:v3 numberStyle:3];

  return v4;
}

+ (id)localizedStringForDateComponents:(id)a3
{
  v3 = qword_187D38;
  v4 = a3;
  if (v3 != -1)
  {
    sub_11529C();
  }

  v5 = [qword_187D30 dateFromComponents:v4];

  v6 = [qword_187D28 stringFromDate:v5];

  return v6;
}

+ (id)getRelativeDateStringForDate:(id)a3
{
  v3 = a3;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:v3];
  if (v5 < 0.0)
  {
    v6 = &stru_16CDB8;
    goto LABEL_13;
  }

  v7 = v5;
  v8 = +[NSCalendar currentCalendar];
  v9 = objc_alloc_init(NSDateFormatter);
  v10 = +[NSLocale currentLocale];
  [v9 setLocale:v10];

  [v9 setDoesRelativeDateFormatting:1];
  if (![v8 isDate:v3 inSameDayAsDate:v4])
  {
    if (v7 >= 604800.0)
    {
      v12 = @"M/d/yyyy";
    }

    else
    {
      v12 = @"EEE j:mm a";
    }

    [v9 setLocalizedDateFormatFromTemplate:v12];
    goto LABEL_11;
  }

  if (v7 >= 10800.0)
  {
    [v9 setDateStyle:0];
    [v9 setTimeStyle:1];
LABEL_11:
    v13 = [v9 stringFromDate:v3];
    goto LABEL_12;
  }

  v11 = objc_alloc_init(BSUIRelativeDateLabel);
  [v11 timerFiredWithValue:? forResolution:? comparedToNow:?];
  v13 = [v11 text];

LABEL_12:
  v6 = v13;

LABEL_13:

  return v6;
}

+ (id)getLocalizedTimeStringFromFutureDate:(id)a3
{
  v3 = a3;
  v4 = +[NSDate date];
  [v3 timeIntervalSinceDate:v4];
  if (v5 >= 0.0)
  {
    v7 = v5;
    v8 = +[NSCalendar currentCalendar];
    v9 = objc_alloc_init(NSDateFormatter);
    v10 = +[NSLocale currentLocale];
    [v9 setLocale:v10];

    [v9 setDoesRelativeDateFormatting:1];
    if ([v8 isDate:v3 inSameDayAsDate:v4])
    {
      [v9 setDateStyle:0];
      [v9 setTimeStyle:1];
      v11 = BUILogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1152B0(v3, v11);
      }

      v12 = [v9 stringFromDate:v3];
      v13 = BUILogCommon();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_115328(v12, v13);
      }
    }

    else
    {
      if (v7 >= 604800.0)
      {
        v14 = @"M/d/yyyy";
      }

      else
      {
        v14 = @"EEE j:mm a";
      }

      [v9 setLocalizedDateFormatFromTemplate:v14];
      v12 = [v9 stringFromDate:v3];
    }

    v6 = v12;
  }

  else
  {
    v6 = &stru_16CDB8;
  }

  return v6;
}

+ (id)accessibilityDescriptionForHour:(double)a3 duration:(double)a4
{
  if (qword_187D78 != -1)
  {
    sub_1153C8();
  }

  v6 = BatteryUILocalization(@"AX_BUIGRAPH_TO");
  v7 = qword_187D70;
  v8 = [NSDate dateWithTimeIntervalSince1970:a3];
  v9 = [v7 stringFromDate:v8];
  v10 = qword_187D70;
  v11 = [NSDate dateWithTimeIntervalSince1970:a3 + a4];
  v12 = [v10 stringFromDate:v11];
  v13 = [NSString localizedStringWithFormat:v6, v9, v12];

  return v13;
}

+ (id)accessibilityDescriptionForChargingTime:(double)a3
{
  if (qword_187D88 != -1)
  {
    sub_1153DC();
  }

  v4 = qword_187D80;
  v5 = [NSDate dateWithTimeIntervalSince1970:a3];
  v6 = [v4 stringFromDate:v5];

  return v6;
}

+ (id)accessibilityDescriptionForDate:(double)a3
{
  if (qword_187D98 != -1)
  {
    sub_1153F0();
  }

  v4 = qword_187D90;
  v5 = [NSDate dateWithTimeIntervalSince1970:a3];
  v6 = [v4 stringFromDate:v5];

  return v6;
}

+ (id)accessibilityDescriptionForDateTime:(double)a3
{
  if (qword_187DA8 != -1)
  {
    sub_115404();
  }

  v4 = qword_187DA0;
  v5 = [NSDate dateWithTimeIntervalSince1970:a3];
  v6 = [v4 stringFromDate:v5];

  return v6;
}

+ (id)accessibilityDescriptionForTimeInterval:(double)a3
{
  if (qword_187DB8 != -1)
  {
    sub_115418();
  }

  if (a3 >= 60.0)
  {
    [qword_187DB0 stringFromTimeInterval:a3];
  }

  else
  {
    BatteryUILocalization(@"AX_BUIGRAPH_LESS_THAN_A_MINUTE");
  }
  v4 = ;

  return v4;
}

@end