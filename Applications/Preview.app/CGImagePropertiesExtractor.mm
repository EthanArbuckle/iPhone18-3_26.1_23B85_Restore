@interface CGImagePropertiesExtractor
+ (id)sharedMetadataHandler;
- (BOOL)_shouldSkipInfoKey:(id)key key:(id)a4;
- (id)formatArrayValue:(id)value forKey:(id)key;
- (id)formatStringValue:(id)value;
- (id)fractionString:(id)string;
- (id)handleColorSpace:(id)space infoStr:(id)str key:(id)key;
- (id)handleExifShutterSpeedValue:(id)value;
- (id)handleGPSAltitude:(id)altitude;
- (id)handleGPSKey:(id)key data:(id)data metaData:(id)metaData;
- (id)handleGPSLatitude:(id)latitude metaData:(id)data;
- (id)handleGPSLongitude:(id)longitude metaData:(id)data;
- (id)handleGPSSatellites:(id)satellites;
- (id)handleIPTCContributor:(id)contributor;
- (id)handleIPTCDateTime:(id)time format:(id)format useUTC:(BOOL)c;
- (id)handleIPTCDigitalSourceType:(id)type;
- (id)handleIPTCKey:(id)key data:(id)data array:(id)array localizedKey:(id)localizedKey;
- (id)handleISOSpeedRatings:(id)ratings;
- (id)localizedArrayValues:(id)values;
- (id)localizedDate:(id)date format:(id)format;
- (id)localizedDateTime:(id)time;
- (id)localizedTime:(id)time format:(id)format useUTC:(BOOL)c;
- (id)localizedVersionString:(id)string;
- (id)processMetaData:(id)data;
- (id)processSubInfo:(id)info forKey:(id)key;
- (id)stringForGPSValue:(double)value isLongitude:(BOOL)longitude;
- (void)forInfoKey:(id)key addKey:(id)addKey fromDictionary:(id)dictionary toArray:(id)array;
- (void)formatDictionaryValue:(id)value forKey:(id)key localizedKey:(id)localizedKey toArray:(id)array;
- (void)formatNestedDictionary:(id)dictionary withIndent:(id)indent toArray:(id)array;
- (void)handleIPTCCaptionAbstract:(id)abstract localizedKey:(id)key rawKey:(id)rawKey rawKeyPath:(id)path toArray:(id)array;
- (void)handleIPTCCreatorContactInfo:(id)info toArray:(id)array;
- (void)handleRegionsDict:(id)dict localizedKey:(id)key toArray:(id)array;
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

- (id)stringForGPSValue:(double)value isLongitude:(BOOL)longitude
{
  valueCopy = -value;
  if (value >= 0.0)
  {
    valueCopy = value;
  }

  if (valueCopy > 90.0 && !longitude)
  {
    v39 = &stru_1001FA0A8;
  }

  else
  {
    longitudeCopy = longitude;
    v8 = round(valueCopy * 1.0e10) / 1.0e10;
    if (v8 - valueCopy <= 1.0)
    {
      v9 = valueCopy;
    }

    else
    {
      v9 = v8;
    }

    v10 = (valueCopy - v9) * 60.0;
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
    if (value < 0.0)
    {
      v35 = @"GPS.LongitudeRef.W";
    }

    v36 = @"GPS.LatitudeRef.S";
    if (value >= 0.0)
    {
      v36 = @"GPS.LatitudeRef.N";
    }

    if (longitudeCopy)
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

- (id)localizedDateTime:(id)time
{
  timeCopy = time;
  v4 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
  [v5 setLocale:v4];
  v6 = [v5 dateFromString:timeCopy];

  v7 = [NSDateFormatter localizedStringFromDate:v6 dateStyle:2 timeStyle:2];

  return v7;
}

- (id)localizedDate:(id)date format:(id)format
{
  formatCopy = format;
  dateCopy = date;
  v7 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  v8 = objc_alloc_init(NSDateFormatter);
  [v8 setDateFormat:formatCopy];

  [v8 setLocale:v7];
  v9 = [v8 dateFromString:dateCopy];

  v10 = [NSDateFormatter localizedStringFromDate:v9 dateStyle:2 timeStyle:0];

  return v10;
}

- (id)localizedTime:(id)time format:(id)format useUTC:(BOOL)c
{
  cCopy = c;
  timeCopy = time;
  formatCopy = format;
  v9 = objc_alloc_init(NSDateFormatter);
  [v9 setDateFormat:formatCopy];

  v10 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_GB"];
  [v9 setLocale:v10];

  v11 = [v9 dateFromString:timeCopy];
  if (!v11)
  {
    if ([timeCopy length] >= 9)
    {
      v12 = [timeCopy substringToIndex:8];

      timeCopy = v12;
    }

    v11 = [v9 dateFromString:timeCopy];
  }

  v13 = v11;
  v14 = +[NSCalendar autoupdatingCurrentCalendar];
  [v9 setDateStyle:0];
  [v9 setTimeStyle:2];
  if (cCopy)
  {
    v15 = objc_opt_new();

    [v15 setLocalizedDateFormatFromTemplate:@"HH:mm:ss"];
    v16 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
    [v15 setTimeZone:v16];

    v17 = [v15 dateFromString:timeCopy];

    v13 = v17;
    v9 = v15;
  }

  [v9 setCalendar:v14];
  v18 = [v9 stringFromDate:v13];
  if (cCopy)
  {
    v19 = sub_1000B7874(@"kIKUTCTimeFormat");
    v20 = [NSString stringWithFormat:v19, v18];

    v18 = v20;
  }

  if (!v18)
  {
    v18 = timeCopy;
  }

  return v18;
}

- (void)forInfoKey:(id)key addKey:(id)addKey fromDictionary:(id)dictionary toArray:(id)array
{
  keyCopy = key;
  addKeyCopy = addKey;
  dictionaryCopy = dictionary;
  arrayCopy = array;
  if (![(CGImagePropertiesExtractor *)self _shouldSkipInfoKey:keyCopy key:addKeyCopy])
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:addKeyCopy];
    v46 = sub_1000B772C(addKeyCopy);
    v15 = [keyCopy substringWithRange:{1, objc_msgSend(keyCopy, "length") - 2}];
    if ([(__CFString *)v15 isEqualToString:@"ExifAux"])
    {

      v15 = @"Exif";
    }

    v16 = addKeyCopy;
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
      v19 = [(CGImagePropertiesExtractor *)self handleISOSpeedRatings:dictionaryCopy];
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
        selfCopy = self;
        v21 = v46;
        [(CGImagePropertiesExtractor *)selfCopy handleRegionsDict:v14 localizedKey:v46 toArray:arrayCopy];
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
          selfCopy2 = self;
          v21 = v46;
          [(CGImagePropertiesExtractor *)selfCopy2 handleIPTCCaptionAbstract:v14 localizedKey:v46 rawKey:v16 rawKeyPath:v45 toArray:arrayCopy];
          goto LABEL_62;
        }

        if (![v16 isEqualToString:kCGImagePropertyExifExposureTime])
        {
          if (![v16 isEqualToString:kCGImagePropertyExifShutterSpeedValue])
          {
            if ([keyCopy isEqualToString:kCGImagePropertyGPSDictionary])
            {
              v23 = [(CGImagePropertiesExtractor *)self handleGPSKey:v16 data:v14 metaData:dictionaryCopy];

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
                [(CGImagePropertiesExtractor *)self handleIPTCCreatorContactInfo:v14 toArray:arrayCopy];
                v21 = v46;
                v36 = v45;
                goto LABEL_63;
              }

              v23 = v18;
            }

LABEL_23:
            if ([keyCopy isEqualToString:kCGImagePropertyIPTCDictionary])
            {
              v41 = v17;
              v26 = [(CGImagePropertiesExtractor *)self handleIPTCKey:v16 data:v44 array:arrayCopy localizedKey:v46];
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
                selfCopy3 = self;
                v21 = v46;
                [(CGImagePropertiesExtractor *)selfCopy3 formatDictionaryValue:v44 forKey:v16 localizedKey:v46 toArray:arrayCopy];
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
                  [arrayCopy addObject:v35];

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
                    selfCopy4 = self;
                    v21 = v46;
                    [(CGImagePropertiesExtractor *)selfCopy4 formatDictionaryValue:v40 forKey:v16 localizedKey:v46 toArray:arrayCopy];

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

- (id)handleGPSKey:(id)key data:(id)data metaData:(id)metaData
{
  keyCopy = key;
  dataCopy = data;
  metaDataCopy = metaData;
  if ([(CGImagePropertiesExtractor *)self _shouldSkipInfoKey:@"{GPS}" key:keyCopy])
  {
    v11 = @"SKIP";
    goto LABEL_16;
  }

  if ([keyCopy isEqualToString:kCGImagePropertyGPSLatitude])
  {
    v12 = [(CGImagePropertiesExtractor *)self handleGPSLatitude:dataCopy metaData:metaDataCopy];
LABEL_15:
    v11 = v12;
    goto LABEL_16;
  }

  if ([keyCopy isEqualToString:kCGImagePropertyGPSLongitude])
  {
    v12 = [(CGImagePropertiesExtractor *)self handleGPSLongitude:dataCopy metaData:metaDataCopy];
    goto LABEL_15;
  }

  if ([keyCopy isEqualToString:kCGImagePropertyGPSDateStamp])
  {
    v12 = [(CGImagePropertiesExtractor *)self handleGPSDateStamp:dataCopy];
    goto LABEL_15;
  }

  if ([keyCopy isEqualToString:kCGImagePropertyGPSTimeStamp])
  {
    v12 = [(CGImagePropertiesExtractor *)self handleGPSTimeStamp:dataCopy];
    goto LABEL_15;
  }

  if ([keyCopy isEqualToString:kCGImagePropertyGPSAltitude])
  {
    v12 = [(CGImagePropertiesExtractor *)self handleGPSAltitude:dataCopy];
    goto LABEL_15;
  }

  if ([keyCopy isEqualToString:kCGImagePropertyGPSSatellites])
  {
    v12 = [(CGImagePropertiesExtractor *)self handleGPSSatellites:dataCopy];
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (BOOL)_shouldSkipInfoKey:(id)key key:(id)a4
{
  v5 = a4;
  if ([key isEqual:@"{GPS}"])
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

- (id)handleIPTCKey:(id)key data:(id)data array:(id)array localizedKey:(id)localizedKey
{
  keyCopy = key;
  dataCopy = data;
  if (([keyCopy isEqualToString:kCGImagePropertyIPTCDateCreated] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", kCGImagePropertyIPTCDigitalCreationDate))
  {
    v10 = @"yyyyMMdd";
LABEL_4:
    v11 = [(CGImagePropertiesExtractor *)self handleIPTCDateTime:dataCopy format:v10 useUTC:0];
LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

  if (([keyCopy isEqualToString:kCGImagePropertyIPTCTimeCreated] & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", kCGImagePropertyIPTCDigitalCreationTime))
  {
    v10 = @"HHmmss";
    goto LABEL_4;
  }

  if ([keyCopy isEqualToString:@"DigitalSourceType"])
  {
    v11 = [(CGImagePropertiesExtractor *)self handleIPTCDigitalSourceType:dataCopy];
    goto LABEL_5;
  }

  if ([keyCopy isEqualToString:@"Contributor"])
  {
    v11 = [(CGImagePropertiesExtractor *)self handleIPTCContributor:dataCopy];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (id)processSubInfo:(id)info forKey:(id)key
{
  infoCopy = info;
  keyCopy = key;
  v8 = objc_alloc_init(NSMutableArray);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allKeys = [infoCopy allKeys];
    v10 = [allKeys sortedArrayUsingSelector:"caseInsensitiveCompare:"];

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

          [(CGImagePropertiesExtractor *)self forInfoKey:keyCopy addKey:*(*(&v17 + 1) + 8 * i) fromDictionary:infoCopy toArray:v8, v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }

  return v8;
}

- (id)processMetaData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc_init(NSMutableDictionary);
  v28 = objc_alloc_init(NSMutableArray);
  v5 = dataCopy;
  allKeys = [dataCopy allKeys];
  v7 = [allKeys sortedArrayUsingSelector:"caseInsensitiveCompare:"];

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

- (id)formatStringValue:(id)value
{
  valueCopy = value;
  if ([valueCopy length] > 0xFF)
  {
    v5 = [valueCopy substringToIndex:256];
    v4 = [NSMutableString stringWithString:v5];
  }

  else
  {
    v4 = [NSMutableString stringWithString:valueCopy];
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

- (id)formatArrayValue:(id)value forKey:(id)key
{
  valueCopy = value;
  if ([key isEqualToString:@"channels"])
  {
    v7 = +[NSMutableString string];
    v8 = +[NSMutableString string];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = valueCopy;
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

  else if ([valueCopy count] && (objc_msgSend(valueCopy, "objectAtIndexedSubscript:", 0), v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, (isKindOfClass & 1) != 0))
  {
    if ([valueCopy count] == 1)
    {
      v7 = @"UNWRAP_SINGLE_DICT";
    }

    else
    {
      v7 = +[NSMutableString string];
      if ([valueCopy count])
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

        while (v19 < [valueCopy count]);
      }
    }
  }

  else
  {
    v7 = [(CGImagePropertiesExtractor *)self localizedArrayValues:valueCopy];
  }

  return v7;
}

- (void)formatDictionaryValue:(id)value forKey:(id)key localizedKey:(id)localizedKey toArray:(id)array
{
  valueCopy = value;
  localizedKeyCopy = localizedKey;
  arrayCopy = array;
  v47[0] = @"data";
  v47[1] = @"key";
  v48[0] = @" ";
  v48[1] = localizedKeyCopy;
  v12 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
  [arrayCopy addObject:v12];

  if (objc_opt_respondsToSelector())
  {
    v34 = localizedKeyCopy;
    allKeys = [valueCopy allKeys];
    [allKeys sortedArrayUsingSelector:"caseInsensitiveCompare:"];
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

        v19 = [valueCopy objectForKey:v15];
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
                [arrayCopy addObject:v31];

                [(CGImagePropertiesExtractor *)self formatNestedDictionary:v19 withIndent:@"    " toArray:arrayCopy];
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

        v21 = arrayCopy;
        selfCopy = self;
        v23 = valueCopy;
        v24 = v19;
        if ([v24 count] != 1 || (objc_msgSend(v24, "objectAtIndexedSubscript:", 0), v25 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v25, (isKindOfClass & 1) == 0))
        {

          valueCopy = v23;
          self = selfCopy;
          arrayCopy = v21;
LABEL_21:
          v42[0] = @"data";
          v42[1] = @"key";
          v43[0] = v20;
          v43[1] = v18;
          v32 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
          [arrayCopy addObject:v32];

          goto LABEL_22;
        }

        v27 = [v24 objectAtIndexedSubscript:0];
        v28 = selfCopy;
        v29 = selfCopy;
        arrayCopy = v21;
        [(CGImagePropertiesExtractor *)v29 formatNestedDictionary:v27 withIndent:@"    " toArray:v21];

        self = v28;
        valueCopy = v23;
LABEL_22:
        v13 = &_ss53KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
LABEL_23:
      }

      v37 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (!v37)
      {
LABEL_25:

        localizedKeyCopy = v34;
        break;
      }
    }
  }
}

- (void)formatNestedDictionary:(id)dictionary withIndent:(id)indent toArray:(id)array
{
  dictionaryCopy = dictionary;
  indentCopy = indent;
  arrayCopy = array;
  if (objc_opt_respondsToSelector())
  {
    allKeys = [dictionaryCopy allKeys];
    [allKeys sortedArrayUsingSelector:"caseInsensitiveCompare:"];
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
      v13 = dictionaryCopy;
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
          v18 = [v16 stringWithFormat:@"%@%@", indentCopy, v17];

          v19 = [dictionaryCopy objectForKey:v15];
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
          [arrayCopy addObject:v22];

          dictionaryCopy = v13;
          v11 = &_ss53KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTSys5NeverOypXpF_ptr;
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v10);
    }
  }
}

- (id)handleISOSpeedRatings:(id)ratings
{
  ratingsCopy = ratings;
  v5 = [ratingsCopy objectForKeyedSubscript:kCGImagePropertyExifVersion];
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
    v12 = [ratingsCopy objectForKeyedSubscript:@"SensitivityType"];
    integerValue = [v12 integerValue];

    if (integerValue == 2)
    {
      v14 = [ratingsCopy objectForKeyedSubscript:@"RecommendedExposureIndex"];
      goto LABEL_16;
    }
  }

  v14 = [ratingsCopy objectForKeyedSubscript:kCGImagePropertyExifISOSpeedRatings];
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

- (id)handleColorSpace:(id)space infoStr:(id)str key:(id)key
{
  strCopy = str;
  keyCopy = key;
  longValue = [space longValue];
  if (longValue == 1)
  {
    v12 = 0;
  }

  else
  {
    if (longValue == 0xFFFF)
    {
      v10 = @"%@.%@.-1";
    }

    else
    {
      v10 = @"%@.%@.other";
    }

    keyCopy = [NSString stringWithFormat:v10, strCopy, keyCopy];
    v12 = sub_1000B7874(keyCopy);
  }

  return v12;
}

- (void)handleRegionsDict:(id)dict localizedKey:(id)key toArray:(id)array
{
  dictCopy = dict;
  keyCopy = key;
  arrayCopy = array;
  v10 = dictCopy;
  v47 = [v10 objectForKeyedSubscript:@"RegionList"];
  v56 = [v47 count];
  v80[0] = @"data";
  v80[1] = @"key";
  v81[0] = @" ";
  v81[1] = keyCopy;
  v46 = keyCopy;
  v11 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];
  [arrayCopy addObject:v11];

  v49 = v10;
  allKeys = [v10 allKeys];
  v13 = [allKeys sortedArrayUsingSelector:?];

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
          [arrayCopy addObject:v23];

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
          [arrayCopy addObject:v32];

          allKeys2 = [v26 allKeys];
          v34 = [allKeys2 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

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
                [arrayCopy addObject:v45];

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
    [arrayCopy addObject:&off_1001FAEB8];
  }
}

- (id)handleGPSLatitude:(id)latitude metaData:(id)data
{
  latitudeCopy = latitude;
  v7 = [data objectForKeyedSubscript:kCGImagePropertyGPSLatitudeRef];
  v8 = [v7 isEqualToString:@"S"];
  [latitudeCopy doubleValue];
  v10 = v9;

  v11 = -v10;
  if (!v8)
  {
    v11 = v10;
  }

  v12 = [(CGImagePropertiesExtractor *)self stringForGPSValue:0 isLongitude:v11];

  return v12;
}

- (id)handleGPSLongitude:(id)longitude metaData:(id)data
{
  longitudeCopy = longitude;
  v7 = [data objectForKeyedSubscript:kCGImagePropertyGPSLongitudeRef];
  v8 = [v7 isEqualToString:@"W"];
  [longitudeCopy doubleValue];
  v10 = v9;

  v11 = -v10;
  if (!v8)
  {
    v11 = v10;
  }

  v12 = [(CGImagePropertiesExtractor *)self stringForGPSValue:1 isLongitude:v11];

  return v12;
}

- (id)handleGPSAltitude:(id)altitude
{
  altitudeCopy = altitude;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [altitudeCopy doubleValue];
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

- (id)handleGPSSatellites:(id)satellites
{
  v3 = [NSMutableString stringWithString:satellites];
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

- (id)handleExifShutterSpeedValue:(id)value
{
  [value doubleValue];
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

- (id)handleIPTCDateTime:(id)time format:(id)format useUTC:(BOOL)c
{
  cCopy = c;
  formatCopy = format;
  timeCopy = time;
  if ([formatCopy isEqualToString:@"yyyyMMdd"])
  {
    [(CGImagePropertiesExtractor *)self localizedDate:timeCopy format:formatCopy];
  }

  else
  {
    [(CGImagePropertiesExtractor *)self localizedTime:timeCopy format:formatCopy useUTC:cCopy];
  }
  v10 = ;

  return v10;
}

- (void)handleIPTCCaptionAbstract:(id)abstract localizedKey:(id)key rawKey:(id)rawKey rawKeyPath:(id)path toArray:(id)array
{
  abstractCopy = abstract;
  keyCopy = key;
  rawKeyCopy = rawKey;
  pathCopy = path;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = pathCopy;
    v26 = rawKeyCopy;
    v27 = keyCopy;
    v16 = [abstractCopy componentsSeparatedByString:@"\n"];
    if ([v16 count] >= 2)
    {
      v32[0] = @"data";
      v17 = [v16 objectAtIndexedSubscript:0];
      v32[1] = @"key";
      v33[0] = v17;
      v33[1] = v27;
      v18 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
      [arrayCopy addObject:v18];

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
            [arrayCopy addObject:v23];

            ++v19;
          }

          ++v20;
        }

        while (v20 < [v16 count]);
      }
    }

    rawKeyCopy = v26;
    keyCopy = v27;
    pathCopy = v25;
  }

  v28[0] = @"data";
  v28[1] = @"key";
  v29[0] = abstractCopy;
  v29[1] = keyCopy;
  v28[2] = @"rawKey";
  v28[3] = @"rawKeyPath";
  v29[2] = rawKeyCopy;
  v29[3] = pathCopy;
  v24 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];
  [arrayCopy addObject:v24];
}

- (void)handleIPTCCreatorContactInfo:(id)info toArray:(id)array
{
  infoCopy = info;
  arrayCopy = array;
  v30[0] = @"data";
  v30[1] = @"key";
  v31[0] = @" ";
  v7 = sub_1000B772C(@"CreatorContactInfo");
  v31[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  v22 = arrayCopy;
  [arrayCopy addObject:v8];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = infoCopy;
  obj = [infoCopy allKeys];
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

- (id)handleIPTCDigitalSourceType:(id)type
{
  typeCopy = type;
  v4 = sub_1000B772C(typeCopy);
  if ([v4 isEqualToString:typeCopy] && objc_msgSend(typeCopy, "hasPrefix:", @"https://cv.iptc.org/newscodes/digitalsourcetype/"))
  {
    lastPathComponent = [typeCopy lastPathComponent];
    v6 = [@"http://cv.iptc.org/newscodes/digitalsourcetype/" stringByAppendingString:lastPathComponent];
    v7 = sub_1000B772C(v6);

    v4 = v7;
  }

  return v4;
}

- (id)handleIPTCContributor:(id)contributor
{
  contributorCopy = contributor;
  v4 = +[NSMutableString string];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = contributorCopy;
    obj = contributorCopy;
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
            firstObject = [v10 firstObject];

            v10 = firstObject;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            firstObject2 = [v11 firstObject];

            v11 = firstObject2;
          }

          v14 = sub_1000B772C(v11);
          [v4 appendFormat:@"%@: %@", v14, v10];
        }

        v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }

    v15 = v4;
    contributorCopy = v17;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)localizedArrayValues:(id)values
{
  valuesCopy = values;
  v4 = sub_1000B7874(@", ");
  v5 = objc_alloc_init(NSMutableString);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = valuesCopy;
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

- (id)localizedVersionString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(NSMutableString);
  v5 = objc_alloc_init(NSNumberFormatter);
  [v5 _extractor_setFormat:@"#0;0;#0"];
  v6 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  [v5 setLocale:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = stringCopy;
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

- (id)fractionString:(id)string
{
  stringCopy = string;
  [stringCopy doubleValue];
  v5 = v4;
  if (v4)
  {
    stringCopy = [NSMutableString stringWithFormat:@"%@", stringCopy];
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
    stringCopy = [NSMutableString stringWithString:v33];

    [stringCopy replaceOccurrencesOfString:@"%1" withString:v30 options:0 range:{0, objc_msgSend(stringCopy, "length")}];
    [stringCopy replaceOccurrencesOfString:@"%2" withString:v32 options:0 range:{0, objc_msgSend(stringCopy, "length")}];
  }

  return stringCopy;
}

@end