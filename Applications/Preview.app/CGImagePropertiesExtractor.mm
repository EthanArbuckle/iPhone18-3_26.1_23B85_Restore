@interface CGImagePropertiesExtractor
+ (id)sharedMetadataHandler;
- (BOOL)_shouldSkipInfoKey:(id)a3 key:(id)a4;
- (id)formatArrayValue:(id)a3 forKey:(id)a4;
- (id)formatStringValue:(id)a3;
- (id)fractionString:(id)a3;
- (id)handleColorSpace:(id)a3 infoStr:(id)a4 key:(id)a5;
- (id)handleExifShutterSpeedValue:(id)a3;
- (id)handleGPSAltitude:(id)a3;
- (id)handleGPSKey:(id)a3 data:(id)a4 metaData:(id)a5;
- (id)handleGPSLatitude:(id)a3 metaData:(id)a4;
- (id)handleGPSLongitude:(id)a3 metaData:(id)a4;
- (id)handleGPSSatellites:(id)a3;
- (id)handleIPTCContributor:(id)a3;
- (id)handleIPTCDateTime:(id)a3 format:(id)a4 useUTC:(BOOL)a5;
- (id)handleIPTCDigitalSourceType:(id)a3;
- (id)handleIPTCKey:(id)a3 data:(id)a4 array:(id)a5 localizedKey:(id)a6;
- (id)handleISOSpeedRatings:(id)a3;
- (id)localizedArrayValues:(id)a3;
- (id)localizedDate:(id)a3 format:(id)a4;
- (id)localizedDateTime:(id)a3;
- (id)localizedTime:(id)a3 format:(id)a4 useUTC:(BOOL)a5;
- (id)localizedVersionString:(id)a3;
- (id)processMetaData:(id)a3;
- (id)processSubInfo:(id)a3 forKey:(id)a4;
- (id)stringForGPSValue:(double)a3 isLongitude:(BOOL)a4;
- (void)forInfoKey:(id)a3 addKey:(id)a4 fromDictionary:(id)a5 toArray:(id)a6;
- (void)formatDictionaryValue:(id)a3 forKey:(id)a4 localizedKey:(id)a5 toArray:(id)a6;
- (void)formatNestedDictionary:(id)a3 withIndent:(id)a4 toArray:(id)a5;
- (void)handleIPTCCaptionAbstract:(id)a3 localizedKey:(id)a4 rawKey:(id)a5 rawKeyPath:(id)a6 toArray:(id)a7;
- (void)handleIPTCCreatorContactInfo:(id)a3 toArray:(id)a4;
- (void)handleRegionsDict:(id)a3 localizedKey:(id)a4 toArray:(id)a5;
@end

@implementation CGImagePropertiesExtractor

+ (id)sharedMetadataHandler
{
  v2 = qword_100218728;
  if (!qword_100218728)
  {
    v3 = objc_alloc_init(CGImagePropertiesExtractor);
    v4 = qword_100218728;
    qword_100218728 = v3;

    v2 = qword_100218728;
  }

  return v2;
}

- (id)stringForGPSValue:(double)a3 isLongitude:(BOOL)a4
{
  v5 = -a3;
  if (a3 >= 0.0)
  {
    v5 = a3;
  }

  if (v5 > 90.0 && !a4)
  {
    v39 = &stru_1001FA0A8;
  }

  else
  {
    v7 = a4;
    v8 = round(v5 * 1.0e10) / 1.0e10;
    if (v8 - v5 <= 1.0)
    {
      v9 = v5;
    }

    else
    {
      v9 = v8;
    }

    v10 = (v5 - v9) * 60.0;
    v11 = round(v10 * 1.0e10) / 1.0e10;
    if (v11 - v10 <= 1.0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = (v10 - v12) * 60.0;
    v14 = objc_alloc_init(NSNumberFormatter);
    v15 = objc_alloc_init(NSNumberFormatter);
    v16 = objc_alloc_init(NSNumberFormatter);
    [v14 _extractor_setFormat:@"#0.##;0;#0.##"];
    [v15 _extractor_setFormat:@"#0;0;#0"];
    [v16 _extractor_setFormat:@"#0;0;#0"];
    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    v17 = [NSNumber numberWithDouble:v13];
    v18 = [v14 stringForObjectValue:v17];
    [v18 doubleValue];
    v20 = v19;

    if (v20 == 60.0)
    {
      v13 = 0.0;
      v21 = v12 + 1.0;
    }

    else
    {
      v21 = v12;
    }

    v22 = [NSNumber numberWithDouble:v21];
    v23 = [v15 stringForObjectValue:v22];
    [v23 doubleValue];
    v25 = v24;

    if (v25 == 60.0)
    {
      v21 = 0.0;
      v26 = v9 + 1.0;
    }

    else
    {
      v26 = v9;
    }

    v27 = sub_1000B7874(@"GPS_Degree_Minute_Seconds_Ref");
    v28 = [NSMutableString stringWithString:v27];

    v29 = [NSNumber numberWithDouble:v26];
    v30 = [NSNumberFormatter localizedStringFromNumber:v29 numberStyle:1];

    [v28 replaceOccurrencesOfString:@"%1" withString:v30 options:0 range:{0, objc_msgSend(v28, "length")}];
    v31 = [NSNumber numberWithDouble:v21];
    v32 = [NSNumberFormatter localizedStringFromNumber:v31 numberStyle:1];

    [v28 replaceOccurrencesOfString:@"%2" withString:v32 options:0 range:{0, objc_msgSend(v28, "length")}];
    v33 = [NSNumber numberWithDouble:v13];
    v34 = [NSNumberFormatter localizedStringFromNumber:v33 numberStyle:1];

    [v28 replaceOccurrencesOfString:@"%3" withString:v34 options:0 range:{0, objc_msgSend(v28, "length")}];
    v35 = @"GPS.LongitudeRef.E";
    if (a3 < 0.0)
    {
      v35 = @"GPS.LongitudeRef.W";
    }

    v36 = @"GPS.LatitudeRef.S";
    if (a3 >= 0.0)
    {
      v36 = @"GPS.LatitudeRef.N";
    }

    if (v7)
    {
      v37 = v35;
    }

    else
    {
      v37 = v36;
    }

    v38 = sub_1000B7874(v37);
    [v28 replaceOccurrencesOfString:@"%4" withString:v38 options:0 range:{0, objc_msgSend(v28, "length")}];
    v39 = v28;
  }

  return v39;
}

- (id)localizedDateTime:(id)a3
{
  v3 = a3;
  v4 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
  [v5 setLocale:v4];
  v6 = [v5 dateFromString:v3];

  v7 = [NSDateFormatter localizedStringFromDate:v6 dateStyle:2 timeStyle:2];

  return v7;
}

- (id)localizedDate:(id)a3 format:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  v8 = objc_alloc_init(NSDateFormatter);
  [v8 setDateFormat:v5];

  [v8 setLocale:v7];
  v9 = [v8 dateFromString:v6];

  v10 = [NSDateFormatter localizedStringFromDate:v9 dateStyle:2 timeStyle:0];

  return v10;
}

- (id)localizedTime:(id)a3 format:(id)a4 useUTC:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(NSDateFormatter);
  [v9 setDateFormat:v8];

  v10 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_GB"];
  [v9 setLocale:v10];

  v11 = [v9 dateFromString:v7];
  if (!v11)
  {
    if ([v7 length] >= 9)
    {
      v12 = [v7 substringToIndex:8];

      v7 = v12;
    }

    v11 = [v9 dateFromString:v7];
  }

  v13 = v11;
  v14 = +[NSCalendar autoupdatingCurrentCalendar];
  [v9 setDateStyle:0];
  [v9 setTimeStyle:2];
  if (v5)
  {
    v15 = objc_opt_new();

    [v15 setLocalizedDateFormatFromTemplate:@"HH:mm:ss"];
    v16 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
    [v15 setTimeZone:v16];

    v17 = [v15 dateFromString:v7];

    v13 = v17;
    v9 = v15;
  }

  [v9 setCalendar:v14];
  v18 = [v9 stringFromDate:v13];
  if (v5)
  {
    v19 = sub_1000B7874(@"kIKUTCTimeFormat");
    v20 = [NSString stringWithFormat:v19, v18];

    v18 = v20;
  }

  if (!v18)
  {
    v18 = v7;
  }

  return v18;
}

- (void)forInfoKey:(id)a3 addKey:(id)a4 fromDictionary:(id)a5 toArray:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![(CGImagePropertiesExtractor *)self _shouldSkipInfoKey:v10 key:v11])
  {
    v14 = [v12 objectForKeyedSubscript:v11];
    v46 = sub_1000B772C(v11);
    v15 = [v10 substringWithRange:{1, objc_msgSend(v10, "length") - 2}];
    if ([(__CFString *)v15 isEqualToString:@"ExifAux"])
    {

      v15 = @"Exif";
    }

    v16 = v11;
    v45 = [NSString stringWithFormat:@"%@.%@", v15, v16];
    v17 = [NSString stringWithFormat:@"%@.%@.%@", v15, v16, v14];
    v18 = sub_1000B7874(v17);
    if (![v18 isEqualToString:v17])
    {
      goto LABEL_58;
    }

    if ([v16 isEqualToString:kCGImagePropertyExifISOSpeedRatings])
    {
      v44 = v14;
      v19 = [(CGImagePropertiesExtractor *)self handleISOSpeedRatings:v12];
      if (v19)
      {
        v20 = v19;

        v21 = sub_1000B7874(@"PhotographicSensitivity");
        v18 = v46;
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if ([v16 isEqualToString:kCGImagePropertyColorModel])
    {
      v44 = v14;
      v22 = sub_1000B772C(v14);
    }

    else
    {
      if ([v16 isEqualToString:@"Regions"])
      {
        v25 = self;
        v21 = v46;
        [(CGImagePropertiesExtractor *)v25 handleRegionsDict:v14 localizedKey:v46 toArray:v13];
        goto LABEL_62;
      }

      v44 = v14;
      if (([v16 isEqualToString:kCGImagePropertyExifVersion] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", kCGImagePropertyJFIFVersion) & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", kCGImagePropertyExifFlashPixVersion) & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", kCGImagePropertyGPSVersion) & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", kCGImagePropertyDNGVersion) & 1) != 0 || objc_msgSend(v16, "isEqualToString:", kCGImagePropertyDNGBackwardVersion))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_22:
          v23 = v18;
          goto LABEL_23;
        }

        v22 = [(CGImagePropertiesExtractor *)self handleVersionStrings:v14];
      }

      else
      {
        if ([v16 isEqualToString:kCGImagePropertyExifColorSpace])
        {
          v33 = [(CGImagePropertiesExtractor *)self handleColorSpace:v14 infoStr:v15 key:v16];
          v24 = v33;
          if (v33)
          {
            v23 = v33;

            v24 = v23;
          }

          else
          {
            v23 = v18;
          }

          goto LABEL_11;
        }

        if ([v16 isEqualToString:kCGImagePropertyIPTCCaptionAbstract])
        {
          v38 = self;
          v21 = v46;
          [(CGImagePropertiesExtractor *)v38 handleIPTCCaptionAbstract:v14 localizedKey:v46 rawKey:v16 rawKeyPath:v45 toArray:v13];
          goto LABEL_62;
        }

        if (![v16 isEqualToString:kCGImagePropertyExifExposureTime])
        {
          if (![v16 isEqualToString:kCGImagePropertyExifShutterSpeedValue])
          {
            if ([v10 isEqualToString:kCGImagePropertyGPSDictionary])
            {
              v23 = [(CGImagePropertiesExtractor *)self handleGPSKey:v16 data:v14 metaData:v12];

              if ([v23 isEqualToString:@"SKIP"])
              {
                v18 = v23;
                v14 = v44;
                goto LABEL_61;
              }
            }

            else
            {
              if ([v16 isEqualToString:kCGImagePropertyIPTCCreatorContactInfo])
              {
                [(CGImagePropertiesExtractor *)self handleIPTCCreatorContactInfo:v14 toArray:v13];
                v21 = v46;
                v36 = v45;
                goto LABEL_63;
              }

              v23 = v18;
            }

LABEL_23:
            if ([v10 isEqualToString:kCGImagePropertyIPTCDictionary])
            {
              v41 = v17;
              v26 = [(CGImagePropertiesExtractor *)self handleIPTCKey:v16 data:v44 array:v13 localizedKey:v46];
              v27 = v26;
              if (v26)
              {
                if ([v26 isEqualToString:@"HANDLED"])
                {

                  v18 = v23;
                  v17 = v41;
                  v14 = v44;
LABEL_61:
                  v21 = v46;
                  goto LABEL_62;
                }

                v28 = v27;

                v23 = v28;
              }

              v18 = v23;
              v17 = v41;
            }

            else
            {
              v18 = v23;
            }

            v14 = v44;
            if (!v18 || [v18 isEqualToString:v17])
            {
              if (([v16 isEqualToString:kCGImagePropertyExifDateTimeOriginal] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", kCGImagePropertyExifDateTimeDigitized) & 1) != 0 || objc_msgSend(v16, "isEqualToString:", kCGImagePropertyTIFFDateTime))
              {
                if ([v44 isEqualToString:@"    :  :     :  :  "] & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", @"0000:00:00 00:00:00"))
                {
                  goto LABEL_61;
                }

                v29 = [(CGImagePropertiesExtractor *)self localizedDateTime:v44];
                goto LABEL_40;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = [(CGImagePropertiesExtractor *)self formatNumberValue:v44];
                goto LABEL_40;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector())
              {
                v30 = self;
                v21 = v46;
                [(CGImagePropertiesExtractor *)v30 formatDictionaryValue:v44 forKey:v16 localizedKey:v46 toArray:v13];
                goto LABEL_62;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v43 = objc_opt_respondsToSelector();
                  v20 = [v44 description];
                  if (v43)
                  {
                    v37 = [(CGImagePropertiesExtractor *)self formatStringValue:v20];

                    v18 = v20;
                    v20 = v37;
                  }

                  goto LABEL_41;
                }

                v29 = [(CGImagePropertiesExtractor *)self formatStringValue:v44];
LABEL_40:
                v20 = v29;
LABEL_41:
                v21 = v46;
LABEL_42:

                v18 = v20;
                v14 = v44;
                if (!v18)
                {
                  goto LABEL_62;
                }

LABEL_59:
                if (v21)
                {
                  v47[0] = @"data";
                  v47[1] = @"key";
                  v48[0] = v18;
                  v48[1] = v21;
                  v47[2] = @"rawKey";
                  v47[3] = @"rawKeyPath";
                  v48[2] = v16;
                  v48[3] = v45;
                  [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
                  v46 = v21;
                  v35 = v34 = v14;
                  [v13 addObject:v35];

                  v14 = v34;
                  goto LABEL_61;
                }

LABEL_62:
                v36 = v45;
LABEL_63:

                goto LABEL_64;
              }

              v20 = [(CGImagePropertiesExtractor *)self formatArrayValue:v44 forKey:v16];

              if ([v20 isEqualToString:@"UNWRAP_SINGLE_DICT"])
              {
                v18 = v44;
                if ([v18 count] == 1)
                {
                  v42 = v18;
                  v31 = [v18 objectAtIndexedSubscript:0];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    v40 = [v42 objectAtIndexedSubscript:0];
                    v32 = self;
                    v21 = v46;
                    [(CGImagePropertiesExtractor *)v32 formatDictionaryValue:v40 forKey:v16 localizedKey:v46 toArray:v13];

                    v18 = v20;
                    v14 = v44;
                    goto LABEL_62;
                  }

                  v21 = v46;
                  v18 = v42;
                  goto LABEL_42;
                }

                goto LABEL_41;
              }

              v18 = v20;
              v14 = v44;
            }

LABEL_58:
            v21 = v46;
            if (!v18)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          }

          v23 = [(CGImagePropertiesExtractor *)self handleExifShutterSpeedValue:v14];
          v24 = v18;
LABEL_11:

          goto LABEL_23;
        }

        v22 = [(CGImagePropertiesExtractor *)self handleExifExposureTime:v14];
      }
    }

    v23 = v22;
    v24 = v18;
    goto LABEL_11;
  }

LABEL_64:
}

- (id)handleGPSKey:(id)a3 data:(id)a4 metaData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CGImagePropertiesExtractor *)self _shouldSkipInfoKey:@"{GPS}" key:v8])
  {
    v11 = @"SKIP";
    goto LABEL_16;
  }

  if ([v8 isEqualToString:kCGImagePropertyGPSLatitude])
  {
    v12 = [(CGImagePropertiesExtractor *)self handleGPSLatitude:v9 metaData:v10];
LABEL_15:
    v11 = v12;
    goto LABEL_16;
  }

  if ([v8 isEqualToString:kCGImagePropertyGPSLongitude])
  {
    v12 = [(CGImagePropertiesExtractor *)self handleGPSLongitude:v9 metaData:v10];
    goto LABEL_15;
  }

  if ([v8 isEqualToString:kCGImagePropertyGPSDateStamp])
  {
    v12 = [(CGImagePropertiesExtractor *)self handleGPSDateStamp:v9];
    goto LABEL_15;
  }

  if ([v8 isEqualToString:kCGImagePropertyGPSTimeStamp])
  {
    v12 = [(CGImagePropertiesExtractor *)self handleGPSTimeStamp:v9];
    goto LABEL_15;
  }

  if ([v8 isEqualToString:kCGImagePropertyGPSAltitude])
  {
    v12 = [(CGImagePropertiesExtractor *)self handleGPSAltitude:v9];
    goto LABEL_15;
  }

  if ([v8 isEqualToString:kCGImagePropertyGPSSatellites])
  {
    v12 = [(CGImagePropertiesExtractor *)self handleGPSSatellites:v9];
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (BOOL)_shouldSkipInfoKey:(id)a3 key:(id)a4
{
  v5 = a4;
  if ([a3 isEqual:@"{GPS}"])
  {
    if ([v5 isEqualToString:kCGImagePropertyGPSLongitudeRef])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v5 isEqualToString:kCGImagePropertyGPSLatitudeRef];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)handleIPTCKey:(id)a3 data:(id)a4 array:(id)a5 localizedKey:(id)a6
{
  v8 = a3;
  v9 = a4;
  if (([v8 isEqualToString:kCGImagePropertyIPTCDateCreated] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", kCGImagePropertyIPTCDigitalCreationDate))
  {
    v10 = @"yyyyMMdd";
LABEL_4:
    v11 = [(CGImagePropertiesExtractor *)self handleIPTCDateTime:v9 format:v10 useUTC:0];
LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

  if (([v8 isEqualToString:kCGImagePropertyIPTCTimeCreated] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", kCGImagePropertyIPTCDigitalCreationTime))
  {
    v10 = @"HHmmss";
    goto LABEL_4;
  }

  if ([v8 isEqualToString:@"DigitalSourceType"])
  {
    v11 = [(CGImagePropertiesExtractor *)self handleIPTCDigitalSourceType:v9];
    goto LABEL_5;
  }

  if ([v8 isEqualToString:@"Contributor"])
  {
    v11 = [(CGImagePropertiesExtractor *)self handleIPTCContributor:v9];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (id)processSubInfo:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableArray);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 allKeys];
    v10 = [v9 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(CGImagePropertiesExtractor *)self forInfoKey:v7 addKey:*(*(&v17 + 1) + 8 * i) fromDictionary:v6 toArray:v8, v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  return v8;
}

- (id)processMetaData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v28 = objc_alloc_init(NSMutableArray);
  v5 = v3;
  v6 = [v3 allKeys];
  v7 = [v6 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    v12 = kCGImagePropertyMakerAppleDictionary;
    v13 = @"{General}";
    v27 = *v31;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        if ([v15 characterAtIndex:0] == 123)
        {
          if (([v15 isEqualToString:v12] & 1) == 0)
          {
            v16 = v5;
            [v5 objectForKeyedSubscript:v15];
            v17 = v13;
            v18 = v10;
            v19 = v12;
            v20 = v8;
            v22 = v21 = v4;
            v23 = [(CGImagePropertiesExtractor *)self processSubInfo:v22 forKey:v15];

            v4 = v21;
            v8 = v20;
            v12 = v19;
            v10 = v18;
            v13 = v17;
            [v4 setObject:v23 forKeyedSubscript:v15];

            v5 = v16;
            v11 = v27;
          }
        }

        else
        {
          [(CGImagePropertiesExtractor *)self forInfoKey:v13 addKey:v15 fromDictionary:v5 toArray:v28];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  if ([v28 count])
  {
    [v4 setObject:v28 forKeyedSubscript:@"{General}"];
  }

  v24 = [v4 objectForKeyedSubscript:kCGImagePropertyExifAuxDictionary];
  if (v24)
  {
    v25 = [v4 objectForKeyedSubscript:kCGImagePropertyExifDictionary];
    if (!v25)
    {
      v25 = objc_alloc_init(NSMutableArray);
      [v4 setObject:v25 forKeyedSubscript:kCGImagePropertyExifDictionary];
    }

    [v25 addObjectsFromArray:v24];
    [v4 removeObjectForKey:kCGImagePropertyExifAuxDictionary];
  }

  return v4;
}

- (id)formatStringValue:(id)a3
{
  v3 = a3;
  if ([v3 length] > 0xFF)
  {
    v5 = [v3 substringToIndex:256];
    v4 = [NSMutableString stringWithString:v5];
  }

  else
  {
    v4 = [NSMutableString stringWithString:v3];
  }

  v6 = [v4 replaceOccurrencesOfString:@"{\n" withString:&stru_1001FA0A8 options:0 range:{0, objc_msgSend(v4, "length")}];
  v7 = &v6[[v4 replaceOccurrencesOfString:@"  " withString:@" " options:0 range:{0, objc_msgSend(v4, "length")}]];
  if ([v4 replaceOccurrencesOfString:@"\n" withString:@" " options:0 range:{0, objc_msgSend(v4, "length")}] + v7)
  {
    v9 = 0;
    if ([v4 length])
    {
      do
      {
        if ([v4 characterAtIndex:v9] != 32)
        {
          break;
        }

        ++v9;
      }

      while ([v4 length] > v9);
    }

    v8 = [v4 substringFromIndex:v9];
  }

  else
  {
    v8 = v4;
  }

  v10 = v8;

  return v10;
}

- (id)formatArrayValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  if ([a4 isEqualToString:@"channels"])
  {
    v7 = +[NSMutableString string];
    v8 = +[NSMutableString string];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:@"name"];
          [(__CFString *)v7 appendFormat:@"%@ ", v14];

          v15 = [v13 objectForKeyedSubscript:@"channels"];
          [v8 appendFormat:@"%@ ", v15];
        }

        v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    [(__CFString *)v7 appendFormat:@" (%@)", v8];
  }

  else if ([v6 count] && (objc_msgSend(v6, "objectAtIndexedSubscript:", 0), v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, (isKindOfClass & 1) != 0))
  {
    if ([v6 count] == 1)
    {
      v7 = @"UNWRAP_SINGLE_DICT";
    }

    else
    {
      v7 = +[NSMutableString string];
      if ([v6 count])
      {
        v19 = 0;
        do
        {
          if (v19)
          {
            [(__CFString *)v7 appendString:@"; "];
          }

          [(__CFString *)v7 appendFormat:@"#%lu", v19++];
        }

        while (v19 < [v6 count]);
      }
    }
  }

  else
  {
    v7 = [(CGImagePropertiesExtractor *)self localizedArrayValues:v6];
  }

  return v7;
}

- (void)formatDictionaryValue:(id)a3 forKey:(id)a4 localizedKey:(id)a5 toArray:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v47[0] = @"data";
  v47[1] = @"key";
  v48[0] = @" ";
  v48[1] = v10;
  v12 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
  [v11 addObject:v12];

  if (objc_opt_respondsToSelector())
  {
    v34 = v10;
    v33 = [v9 allKeys];
    [v33 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v41 = 0u;
    v37 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (!v37)
    {
      goto LABEL_25;
    }

    v13 = &_ss53KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
    v36 = *v39;
    while (1)
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v39 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        v16 = v13[420];
        v17 = sub_1000B772C(v15);
        v18 = [v16 stringWithFormat:@"  %@", v17];

        v19 = [v9 objectForKey:v15];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = v19;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = [(CGImagePropertiesExtractor *)self formatNumberValue:v19];
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                v44[0] = @"data";
                v44[1] = @"key";
                v45[0] = @" ";
                v45[1] = v18;
                v31 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
                [v11 addObject:v31];

                [(CGImagePropertiesExtractor *)self formatNestedDictionary:v19 withIndent:@"    " toArray:v11];
                goto LABEL_23;
              }

              v30 = [v19 description];
            }
          }

          v20 = v30;
          goto LABEL_21;
        }

        v20 = [(CGImagePropertiesExtractor *)self formatArrayValue:v19 forKey:v15];
        if (![v20 isEqualToString:@"UNWRAP_SINGLE_DICT"])
        {
          goto LABEL_21;
        }

        v21 = v11;
        v22 = self;
        v23 = v9;
        v24 = v19;
        if ([v24 count] != 1 || (objc_msgSend(v24, "objectAtIndexedSubscript:", 0), v25 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v25, (isKindOfClass & 1) == 0))
        {

          v9 = v23;
          self = v22;
          v11 = v21;
LABEL_21:
          v42[0] = @"data";
          v42[1] = @"key";
          v43[0] = v20;
          v43[1] = v18;
          v32 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
          [v11 addObject:v32];

          goto LABEL_22;
        }

        v27 = [v24 objectAtIndexedSubscript:0];
        v28 = v22;
        v29 = v22;
        v11 = v21;
        [(CGImagePropertiesExtractor *)v29 formatNestedDictionary:v27 withIndent:@"    " toArray:v21];

        self = v28;
        v9 = v23;
LABEL_22:
        v13 = &_ss53KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
LABEL_23:
      }

      v37 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (!v37)
      {
LABEL_25:

        v10 = v34;
        break;
      }
    }
  }
}

- (void)formatNestedDictionary:(id)a3 withIndent:(id)a4 toArray:(id)a5
{
  v7 = a3;
  v26 = a4;
  v8 = a5;
  if (objc_opt_respondsToSelector())
  {
    v23 = [v7 allKeys];
    [v23 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v30 = 0u;
    v9 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = &_ss53KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
      v12 = *v28;
      v13 = v7;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = v11[420];
          v17 = sub_1000B772C(v15);
          v18 = [v16 stringWithFormat:@"%@%@", v26, v17];

          v19 = [v7 objectForKey:v15];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [(CGImagePropertiesExtractor *)self localizedArrayValues:v19];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v19;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(CGImagePropertiesExtractor *)self formatNumberValue:v19];
              }

              else
              {
                [v19 description];
              }
              v20 = ;
            }
          }

          v21 = v20;
          v31[0] = @"data";
          v31[1] = @"key";
          v32[0] = v20;
          v32[1] = v18;
          v22 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
          [v8 addObject:v22];

          v7 = v13;
          v11 = &_ss53KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v10);
    }
  }
}

- (id)handleISOSpeedRatings:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:kCGImagePropertyExifVersion];
  v6 = [NSMutableString stringWithString:&stru_1001FA0A8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 appendFormat:@"%@", *(*(&v18 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if ([v6 length] <= 2)
  {
    do
    {
      [v6 appendFormat:@"0"];
    }

    while ([v6 length] < 3);
  }

  if ([v6 integerValue] >= 230)
  {
    v12 = [v4 objectForKeyedSubscript:@"SensitivityType"];
    v13 = [v12 integerValue];

    if (v13 == 2)
    {
      v14 = [v4 objectForKeyedSubscript:@"RecommendedExposureIndex"];
      goto LABEL_16;
    }
  }

  v14 = [v4 objectForKeyedSubscript:kCGImagePropertyExifISOSpeedRatings];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [(CGImagePropertiesExtractor *)self localizedArrayValues:v14];
LABEL_17:
    v16 = v15;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_16:
    v15 = [NSNumberFormatter localizedStringFromNumber:v14 numberStyle:1];
    goto LABEL_17;
  }

  v16 = 0;
LABEL_18:

  return v16;
}

- (id)handleColorSpace:(id)a3 infoStr:(id)a4 key:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 longValue];
  if (v9 == 1)
  {
    v12 = 0;
  }

  else
  {
    if (v9 == 0xFFFF)
    {
      v10 = @"%@.%@.-1";
    }

    else
    {
      v10 = @"%@.%@.other";
    }

    v11 = [NSString stringWithFormat:v10, v7, v8];
    v12 = sub_1000B7874(v11);
  }

  return v12;
}

- (void)handleRegionsDict:(id)a3 localizedKey:(id)a4 toArray:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v7;
  v47 = [v10 objectForKeyedSubscript:@"RegionList"];
  v56 = [v47 count];
  v80[0] = @"data";
  v80[1] = @"key";
  v81[0] = @" ";
  v81[1] = v8;
  v46 = v8;
  v11 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];
  [v9 addObject:v11];

  v49 = v10;
  v12 = [v10 allKeys];
  v13 = [v12 sortedArrayUsingSelector:?];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v67 objects:v79 count:16];
  v15 = &_ss53KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
  if (v14)
  {
    v16 = v14;
    v17 = *v68;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v68 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v67 + 1) + 8 * i);
        if (([v19 isEqualToString:@"RegionList"] & 1) == 0)
        {
          v20 = [v49 objectForKeyedSubscript:v19];
          v21 = [NSString stringWithFormat:@"  %@", v19];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(CGImagePropertiesExtractor *)self formatNumberValue:v20];
          }

          else
          {
            [v20 description];
          }
          v22 = ;
          v77[0] = @"data";
          v77[1] = @"key";
          v78[0] = v22;
          v78[1] = v21;
          v23 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];
          [v9 addObject:v23];

          v15 = &_ss53KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
        }
      }

      v16 = [obj countByEnumeratingWithState:&v67 objects:v79 count:16];
    }

    while (v16);
  }

  if (v56)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v48 = v47;
    v52 = [v48 countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v52)
    {
      v24 = 0;
      v51 = *v64;
      do
      {
        v25 = 0;
        do
        {
          if (*v64 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v55 = v25;
          v26 = *(*(&v63 + 1) + 8 * v25);
          v27 = [v26 objectForKeyedSubscript:@"Type"];
          v28 = v27;
          v29 = @"Unknown";
          if (v27)
          {
            v29 = v27;
          }

          v30 = v29;

          v54 = v30;
          v57 = v24;
          v31 = [v15[420] stringWithFormat:@"  Region #%lu - %@", v24, v30];
          v74[0] = @"data";
          v74[1] = @"key";
          v75[0] = @" ";
          v75[1] = v31;
          v53 = v31;
          v32 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];
          [v9 addObject:v32];

          v33 = [v26 allKeys];
          v34 = [v33 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v35 = v34;
          v36 = [v35 countByEnumeratingWithState:&v59 objects:v73 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v60;
            do
            {
              for (j = 0; j != v37; j = j + 1)
              {
                if (*v60 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = *(*(&v59 + 1) + 8 * j);
                v41 = [v26 objectForKeyedSubscript:v40];
                v42 = [v15[420] stringWithFormat:@"    %@", v40];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v43 = [(CGImagePropertiesExtractor *)self formatNumberValue:v41];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v43 = v41;
                  }

                  else
                  {
                    v43 = [v41 description];
                  }
                }

                v44 = v43;
                v71[0] = @"data";
                v71[1] = @"key";
                v72[0] = v43;
                v72[1] = v42;
                v45 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
                [v9 addObject:v45];

                v15 = &_ss53KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
              }

              v37 = [v35 countByEnumeratingWithState:&v59 objects:v73 count:16];
            }

            while (v37);
          }

          v24 = v57 + 1;
          v25 = v55 + 1;
        }

        while ((v55 + 1) != v52);
        v52 = [v48 countByEnumeratingWithState:&v63 objects:v76 count:16];
      }

      while (v52);
    }
  }

  else
  {
    [v9 addObject:&off_1001FAEB8];
  }
}

- (id)handleGPSLatitude:(id)a3 metaData:(id)a4
{
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSLatitudeRef];
  v8 = [v7 isEqualToString:@"S"];
  [v6 doubleValue];
  v10 = v9;

  v11 = -v10;
  if (!v8)
  {
    v11 = v10;
  }

  v12 = [(CGImagePropertiesExtractor *)self stringForGPSValue:0 isLongitude:v11];

  return v12;
}

- (id)handleGPSLongitude:(id)a3 metaData:(id)a4
{
  v6 = a3;
  v7 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSLongitudeRef];
  v8 = [v7 isEqualToString:@"W"];
  [v6 doubleValue];
  v10 = v9;

  v11 = -v10;
  if (!v8)
  {
    v11 = v10;
  }

  v12 = [(CGImagePropertiesExtractor *)self stringForGPSValue:1 isLongitude:v11];

  return v12;
}

- (id)handleGPSAltitude:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4 * 100.0;
    v6 = [NSNumber numberWithDouble:round(v4 * 100.0) / 100.0];
    v7 = [NSNumberFormatter localizedStringFromNumber:v6 numberStyle:1];

    v8 = [NSNumber numberWithDouble:round(v5 * 3.2808399) / 100.0];
    v9 = [NSNumberFormatter localizedStringFromNumber:v8 numberStyle:1];

    v10 = sub_1000B7874(@"GPS.AltitudeUnit.0");
    v11 = sub_1000B7874(@"GPS.AltitudeUnit.1");
    v12 = [NSString stringWithFormat:@"%@ %@ (%@ %@)", v7, v10, v9, v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)handleGPSSatellites:(id)a3
{
  v3 = [NSMutableString stringWithString:a3];
  for (i = v3; ; v3 = i)
  {
    v5 = [v3 length];
    if (!v5)
    {
      break;
    }

    v6 = v5 - 1;
    if ([i characterAtIndex:v5 - 1] != 32 && objc_msgSend(i, "characterAtIndex:", v6) != 44)
    {
      break;
    }

    [i deleteCharactersInRange:{v6, 1}];
  }

  return i;
}

- (id)handleExifShutterSpeedValue:(id)a3
{
  [a3 doubleValue];
  v5 = v4;
  v6 = fabs(v4);
  v7 = 0.0;
  if (v6 < 100.0)
  {
    v7 = exp2(-v5);
  }

  v8 = [NSNumber numberWithDouble:v7, v5];
  v9 = [(CGImagePropertiesExtractor *)self fractionString:v8];

  return v9;
}

- (id)handleIPTCDateTime:(id)a3 format:(id)a4 useUTC:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  if ([v8 isEqualToString:@"yyyyMMdd"])
  {
    [(CGImagePropertiesExtractor *)self localizedDate:v9 format:v8];
  }

  else
  {
    [(CGImagePropertiesExtractor *)self localizedTime:v9 format:v8 useUTC:v5];
  }
  v10 = ;

  return v10;
}

- (void)handleIPTCCaptionAbstract:(id)a3 localizedKey:(id)a4 rawKey:(id)a5 rawKeyPath:(id)a6 toArray:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v14;
    v26 = v13;
    v27 = v12;
    v16 = [v11 componentsSeparatedByString:@"\n"];
    if ([v16 count] >= 2)
    {
      v32[0] = @"data";
      v17 = [v16 objectAtIndexedSubscript:0];
      v32[1] = @"key";
      v33[0] = v17;
      v33[1] = v27;
      v18 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
      [v15 addObject:v18];

      if ([v16 count] >= 2)
      {
        v19 = 1;
        v20 = 1;
        do
        {
          v21 = [v16 objectAtIndexedSubscript:v20];
          if ([v21 length])
          {
            v22 = [@" " stringByPaddingToLength:v19 withString:@" " startingAtIndex:0];
            v30[0] = @"data";
            v30[1] = @"key";
            v31[0] = v21;
            v31[1] = v22;
            v23 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
            [v15 addObject:v23];

            ++v19;
          }

          ++v20;
        }

        while (v20 < [v16 count]);
      }
    }

    v13 = v26;
    v12 = v27;
    v14 = v25;
  }

  v28[0] = @"data";
  v28[1] = @"key";
  v29[0] = v11;
  v29[1] = v12;
  v28[2] = @"rawKey";
  v28[3] = @"rawKeyPath";
  v29[2] = v13;
  v29[3] = v14;
  v24 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];
  [v15 addObject:v24];
}

- (void)handleIPTCCreatorContactInfo:(id)a3 toArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v30[0] = @"data";
  v30[1] = @"key";
  v31[0] = @" ";
  v7 = sub_1000B772C(@"CreatorContactInfo");
  v31[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  v22 = v6;
  [v6 addObject:v8];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v5;
  obj = [v5 allKeys];
  v10 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = sub_1000B772C(v14);
        v16 = [NSString stringWithFormat:@"  %@", v15];

        v17 = v14;
        v18 = [NSString stringWithFormat:@"IPTC.%@", v17];
        v27[0] = @"data";
        v19 = [v9 objectForKeyedSubscript:v17];
        v28[0] = v19;
        v28[1] = v16;
        v27[1] = @"key";
        v27[2] = @"rawKey";
        v27[3] = @"rawKeyPath";
        v28[2] = v17;
        v28[3] = v18;
        v20 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];
        [v22 addObject:v20];
      }

      v11 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v11);
  }
}

- (id)handleIPTCDigitalSourceType:(id)a3
{
  v3 = a3;
  v4 = sub_1000B772C(v3);
  if ([v4 isEqualToString:v3] && objc_msgSend(v3, "hasPrefix:", @"https://cv.iptc.org/newscodes/digitalsourcetype/"))
  {
    v5 = [v3 lastPathComponent];
    v6 = [@"http://cv.iptc.org/newscodes/digitalsourcetype/" stringByAppendingString:v5];
    v7 = sub_1000B772C(v6);

    v4 = v7;
  }

  return v4;
}

- (id)handleIPTCContributor:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableString string];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = v3;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          if ([v4 length])
          {
            [v4 appendString:@"\n"];
          }

          v10 = [v9 objectForKeyedSubscript:@"Name"];
          if (!v10)
          {
            v10 = [v9 objectForKeyedSubscript:@"ContributorName"];
          }

          v11 = [v9 objectForKeyedSubscript:@"Role"];
          if (!v11)
          {
            v11 = [v9 objectForKeyedSubscript:@"ContributorRole"];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v10 firstObject];

            v10 = v12;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v11 firstObject];

            v11 = v13;
          }

          v14 = sub_1000B772C(v11);
          [v4 appendFormat:@"%@: %@", v14, v10];
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    v15 = v4;
    v3 = v17;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)localizedArrayValues:(id)a3
{
  v3 = a3;
  v4 = sub_1000B7874(@", ");
  v5 = objc_alloc_init(NSMutableString);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [NSNumberFormatter localizedStringFromNumber:v11 numberStyle:1];
          if (v12)
          {
            goto LABEL_17;
          }

LABEL_16:
          v12 = v11;
          goto LABEL_17;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v11 length])
        {
          goto LABEL_16;
        }

        v13 = v4;
        v14 = v6;
        for (j = 0; j < [v11 length]; ++j)
        {
          v16 = +[NSCharacterSet decimalDigitCharacterSet];
          v17 = [v16 characterIsMember:{objc_msgSend(v11, "characterAtIndex:", j)}];

          if (!v17)
          {
            break;
          }
        }

        v6 = v14;
        v4 = v13;
        if (j != [v11 length])
        {
          goto LABEL_16;
        }

        v18 = [NSDecimalNumber decimalNumberWithString:v11];
        v12 = [NSNumberFormatter localizedStringFromNumber:v18 numberStyle:1];

        if (!v12)
        {
          goto LABEL_16;
        }

LABEL_17:
        if ([v5 length])
        {
          [v5 appendFormat:@"%@%@", v4, v12, v21];
        }

        else
        {
          [v5 appendFormat:@"%@", v12, v20, v21];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)localizedVersionString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableString);
  v5 = objc_alloc_init(NSNumberFormatter);
  [v5 _extractor_setFormat:@"#0;0;#0"];
  v6 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  [v5 setLocale:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v5 stringForObjectValue:*(*(&v15 + 1) + 8 * i)];
        [v4 appendFormat:@"%@.", v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ([v4 length] < 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 1}];
  }

  return v13;
}

- (id)fractionString:(id)a3
{
  v3 = a3;
  [v3 doubleValue];
  v5 = v4;
  if (v4)
  {
    v6 = [NSMutableString stringWithFormat:@"%@", v3];
  }

  else
  {
    v7 = 0;
    v8 = 1;
    v9 = v4;
    v10 = 1;
    while (1)
    {
      v11 = v5;
      v12 = v8;
      v13 = v9;
      v5 = v10 + v5 * v9;
      if (v5 >= 100001)
      {
        break;
      }

      v8 = v7 + v8 * v13;
      if (v9 != v13)
      {
        v9 = 1.0 / (v9 - v13);
        v7 = v12;
        v10 = v11;
        if (v9 <= 2147483650.0)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    v12 = v7;
    v5 = v11;
    v11 = v10;
LABEL_9:
    v14 = (100000 - v11) / v5;
    v15 = v12 + v14 * v8;
    v16 = v11 + v14 * v5;
    v17 = vabdd_f64(v4, v8 / v5);
    v18 = fabs(v15 / v16);
    if (v17 <= v18)
    {
      v19 = v5;
    }

    else
    {
      v19 = v16;
    }

    if (v17 <= v18)
    {
      v20 = v8;
    }

    else
    {
      v20 = v15;
    }

    if (v20 >= 2)
    {
      v21 = v19 / v20;
      v22 = v19;
      v23 = v20;
      if (fabs(v20 / v19 + -1.0 / v21) < 0.01)
      {
        v22 = v21;
        if (v21 <= 999)
        {
          v22 = (round(v22 / 5.0) * 5.0);
        }

        v23 = 1;
      }

      if (v22)
      {
        v19 = v22;
        v20 = v23;
      }
    }

    v24 = objc_alloc_init(NSNumberFormatter);
    v25 = objc_alloc_init(NSNumberFormatter);
    v26 = objc_alloc_init(NSNumberFormatter);
    [v24 _extractor_setFormat:@"#0;0;#0"];
    [v25 _extractor_setFormat:@"#0;0;#0"];
    [v26 _extractor_setFormat:@"#0;0;#0"];
    v27 = [NSNumber numberWithInt:0];
    v28 = [v24 stringForObjectValue:v27];

    v29 = [NSNumber numberWithInt:v20];
    v30 = [v25 stringForObjectValue:v29];

    v31 = [NSNumber numberWithInt:v19];
    v32 = [v26 stringForObjectValue:v31];

    v33 = sub_1000B7874(@"kIKLocalized_RationalFormat");
    v6 = [NSMutableString stringWithString:v33];

    [v6 replaceOccurrencesOfString:@"%1" withString:v30 options:0 range:{0, objc_msgSend(v6, "length")}];
    [v6 replaceOccurrencesOfString:@"%2" withString:v32 options:0 range:{0, objc_msgSend(v6, "length")}];
  }

  return v6;
}

@end