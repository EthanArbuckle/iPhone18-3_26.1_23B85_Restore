@interface ImageImportExtension
- (BOOL)updateAttributes:(id)a3 forFileAtURL:(id)a4 error:(id *)a5;
- (BOOL)updateAttributes:(id)a3 withExifAuxProperties:(id)a4 forISR:(CGImageSource *)a5;
- (BOOL)updateAttributes:(id)a3 withExifProperties:(id)a4 forISR:(CGImageSource *)a5;
- (BOOL)updateAttributes:(id)a3 withGPSProperties:(id)a4 forISR:(CGImageSource *)a5;
- (BOOL)updateAttributes:(id)a3 withIPTCProperties:(id)a4 forISR:(CGImageSource *)a5;
- (BOOL)updateAttributes:(id)a3 withPhotoshopProperties:(id)a4 forISR:(CGImageSource *)a5;
- (BOOL)updateAttributes:(id)a3 withProperties:(id)a4 forISR:(CGImageSource *)a5;
- (BOOL)updateAttributes:(id)a3 withTIFFProperties:(id)a4 forISR:(CGImageSource *)a5;
- (id)dateFromString:(id)a3;
@end

@implementation ImageImportExtension

- (id)dateFromString:(id)a3
{
  if (qword_100008498 != -1)
  {
    sub_10000205C();
    if (a3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

LABEL_3:
  v4 = qword_100008490;

  return [v4 dateFromString:a3];
}

- (BOOL)updateAttributes:(id)a3 withGPSProperties:(id)a4 forISR:(CGImageSource *)a5
{
  [a3 setEXIFGPSVersion:{objc_msgSend(objc_msgSend(a4, "objectForKeyedSubscript:", kCGImagePropertyGPSVersion), "componentsJoinedByString:", @"."}];
  v8 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSAltitude];
  if (v8)
  {
    [v8 doubleValue];
    v10 = v9;
    v11 = [objc_msgSend(a4 objectForKeyedSubscript:{kCGImagePropertyGPSAltitudeRef), "intValue"}];
    v12 = v10 > 0.0 && v11 == 1;
    v13 = -v10;
    if (!v12)
    {
      v13 = v10;
    }

    [a3 setAltitude:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v13)}];
  }

  v14 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSLatitude];
  if (v14)
  {
    [v14 doubleValue];
    v16 = v15;
    v17 = [objc_msgSend(a4 objectForKeyedSubscript:{kCGImagePropertyGPSLatitudeRef), "caseInsensitiveCompare:", @"S"}];
    v18 = v16 > 0.0 && v17 == 0;
    v19 = -v16;
    if (!v18)
    {
      v19 = v16;
    }

    [a3 setLatitude:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v19)}];
  }

  v20 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSLongitude];
  if (v20)
  {
    [v20 doubleValue];
    v22 = v21;
    v23 = [objc_msgSend(a4 objectForKeyedSubscript:{kCGImagePropertyGPSLongitudeRef), "caseInsensitiveCompare:", @"W"}];
    v24 = v22 > 0.0 && v23 == 0;
    v25 = -v22;
    if (!v24)
    {
      v25 = v22;
    }

    [a3 setLongitude:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v25)}];
  }

  v26 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSSpeed];
  if (v26)
  {
    [v26 doubleValue];
    v28 = v27;
    v29 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSSpeedRef];
    if ([v29 caseInsensitiveCompare:@"M"])
    {
      v30 = [v29 caseInsensitiveCompare:@"N"];
      v31 = v28 * 1.852;
      if (v30)
      {
        v31 = v28;
      }
    }

    else
    {
      v31 = v28 * 1.609344;
    }

    [a3 setSpeed:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v31)}];
  }

  v32 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSTrack];
  if (v32)
  {
    [a3 setGPSTrack:v32];
  }

  v33 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSImgDirection];
  if (v33)
  {
    [a3 setImageDirection:v33];
  }

  v34 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSDestLatitude];
  if (v34)
  {
    [v34 doubleValue];
    v36 = v35;
    v37 = [objc_msgSend(a4 objectForKeyedSubscript:{kCGImagePropertyGPSDestLatitudeRef), "caseInsensitiveCompare:", @"S"}];
    v38 = v36 > 0.0 && v37 == 0;
    v39 = -v36;
    if (!v38)
    {
      v39 = v36;
    }

    [a3 setGPSDestLatitude:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v39)}];
  }

  v40 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSDestLongitude];
  if (v40)
  {
    [v40 doubleValue];
    v42 = v41;
    v43 = [objc_msgSend(a4 objectForKeyedSubscript:{kCGImagePropertyGPSDestLongitudeRef), "caseInsensitiveCompare:", @"W"}];
    v44 = v42 > 0.0 && v43 == 0;
    v45 = -v42;
    if (!v44)
    {
      v45 = v42;
    }

    [a3 setGPSDestLongitude:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v45)}];
  }

  v46 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSStatus];
  if (v46)
  {
    [a3 setGPSStatus:v46];
  }

  v47 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSMeasureMode];
  if (v47)
  {
    [a3 setGPSMeasureMode:v47];
  }

  v48 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSDOP];
  if (v48)
  {
    [a3 setGPSDOP:v48];
  }

  v49 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSMapDatum];
  if (v49)
  {
    [a3 setGPSMapDatum:v49];
  }

  v50 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSDestBearing];
  if (v50)
  {
    [a3 setGPSDestBearing:v50];
  }

  v51 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSDestDistance];
  if (v51)
  {
    [v51 doubleValue];
    v53 = v52;
    v54 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSDestDistanceRef];
    if ([v54 caseInsensitiveCompare:@"M"])
    {
      v55 = [v54 caseInsensitiveCompare:@"N"];
      v56 = v53 * 1.852;
      if (v55)
      {
        v56 = v53;
      }
    }

    else
    {
      v56 = v53 * 1.609344;
    }

    [a3 setGPSDestDistance:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v56)}];
  }

  v57 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSProcessingMethod];
  if (v57)
  {
    [a3 setGPSProcessingMethod:v57];
  }

  v58 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSAreaInformation];
  if (v58)
  {
    [a3 setGPSAreaInformation:v58];
  }

  v59 = -[ImageImportExtension dateFromString:](self, "dateFromString:", [a4 objectForKeyedSubscript:kCGImagePropertyGPSTimeStamp]);
  if (v59)
  {
    [a3 setTimestamp:v59];
  }

  v60 = -[ImageImportExtension dateFromString:](self, "dateFromString:", [a4 objectForKeyedSubscript:kCGImagePropertyGPSDateStamp]);
  if (v60)
  {
    [a3 setGPSDateStamp:v60];
  }

  v61 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSDifferental];
  if (v61)
  {
    [a3 setGPSDifferental:v61];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)a3 withIPTCProperties:(id)a4 forISR:(CGImageSource *)a5
{
  v7 = [NSMutableArray array:a3];
  v8 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCByline];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 addObjectsFromArray:v9];
    }

    else
    {
      [v7 addObject:v9];
    }
  }

  v10 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCWriterEditor];
  if (v10)
  {
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 addObjectsFromArray:v11];
    }

    else
    {
      [v7 addObject:v11];
    }
  }

  if ([v7 count])
  {
    [a3 setAuthorNames:v7];
  }

  v12 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCCopyrightNotice];
  if (v12)
  {
    [a3 setCopyright:v12];
  }

  v13 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCObjectName];
  if (v13)
  {
    [a3 setTitle:v13];
  }

  v14 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCCaptionAbstract];
  if (v14)
  {
    [a3 setContentDescription:v14];
  }

  v15 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCHeadline];
  if (v15)
  {
    [a3 setHeadline:v15];
  }

  v16 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCSpecialInstructions];
  if (v16)
  {
    [a3 setInstructions:v16];
  }

  v17 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCCity];
  if (v17)
  {
    [a3 setCity:v17];
  }

  v18 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCProvinceState];
  if (v18)
  {
    [a3 setStateOrProvince:v18];
  }

  v19 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCCountryPrimaryLocationName];
  if (v19)
  {
    [a3 setCountry:v19];
  }

  v20 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCContact];
  if (v20)
  {
    v21 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = a3;
      v23 = v21;
    }

    else
    {
      v35 = v21;
      v23 = [NSArray arrayWithObjects:&v35 count:1];
      v22 = a3;
    }

    [v22 setContactKeywords:v23];
  }

  v24 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCKeywords];
  if (v24)
  {
    v25 = v24;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = a3;
      v27 = v25;
    }

    else
    {
      v34 = v25;
      v27 = [NSArray arrayWithObjects:&v34 count:1];
      v26 = a3;
    }

    [v26 setKeywords:v27];
  }

  v28 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCCredit];
  if (v28)
  {
    v29 = v28;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = a3;
      v31 = v29;
    }

    else
    {
      v33 = v29;
      v31 = [NSArray arrayWithObjects:&v33 count:1];
      v30 = a3;
    }

    [v30 setContributors:v31];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)a3 withPhotoshopProperties:(id)a4 forISR:(CGImageSource *)a5
{
  v6 = [a4 objectForKeyedSubscript:kCGImageProperty8BIMLayerNames];
  if (v6)
  {
    [a3 setLayerNames:v6];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)a3 withTIFFProperties:(id)a4 forISR:(CGImageSource *)a5
{
  v8 = [a4 objectForKeyedSubscript:kCGImagePropertyTIFFModel];
  if (v8)
  {
    [a3 setAcquisitionModel:v8];
  }

  v9 = [a4 objectForKeyedSubscript:kCGImagePropertyTIFFMake];
  if (v9)
  {
    [a3 setAcquisitionMake:v9];
  }

  if (![a3 contentCreationDate])
  {
    v10 = -[ImageImportExtension dateFromString:](self, "dateFromString:", [a4 objectForKeyedSubscript:kCGImagePropertyTIFFDateTime]);
    if (v10)
    {
      [a3 setContentCreationDate:v10];
    }
  }

  v11 = [a4 objectForKeyedSubscript:kCGImagePropertyTIFFSoftware];
  if (v11)
  {
    [a3 setCreator:v11];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)a3 withExifAuxProperties:(id)a4 forISR:(CGImageSource *)a5
{
  v7 = [a4 objectForKeyedSubscript:kCGImagePropertyExifLensModel];
  if (v7)
  {
    [a3 setLensModel:v7];
  }

  v8 = [a4 objectForKeyedSubscript:kCGImagePropertyExifCameraOwnerName];
  if (v8)
  {
    [a3 setCameraOwner:v8];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)a3 withExifProperties:(id)a4 forISR:(CGImageSource *)a5
{
  [a3 setEXIFVersion:{objc_msgSend(objc_msgSend(a4, "objectForKeyedSubscript:", kCGImagePropertyExifVersion), "componentsJoinedByString:", @"."}];
  v8 = -[ImageImportExtension dateFromString:](self, "dateFromString:", [a4 objectForKeyedSubscript:kCGImagePropertyExifDateTimeOriginal]);
  if (v8)
  {
    [a3 setContentCreationDate:v8];
  }

  v9 = -[ImageImportExtension dateFromString:](self, "dateFromString:", [a4 objectForKeyedSubscript:kCGImagePropertyExifDateTimeDigitized]);
  if (v9)
  {
    [a3 setContentModificationDate:v9];
  }

  v10 = [a4 objectForKeyedSubscript:kCGImagePropertyExifApertureValue];
  if (v10)
  {
    [a3 setAperture:v10];
  }

  v11 = [a4 objectForKeyedSubscript:kCGImagePropertyExifExposureTime];
  if (v11)
  {
    v12 = v11;
    [a3 setExposureTime:v11];
    [a3 setExposureTimeString:{objc_msgSend(v12, "fractionString")}];
  }

  v13 = [a4 objectForKeyedSubscript:kCGImagePropertyExifFlash];
  if (v13)
  {
    v14 = [v13 intValue];
    if (v14)
    {
      v15 = &__kCFBooleanTrue;
    }

    else
    {
      v15 = &__kCFBooleanFalse;
    }

    [a3 setFlashOn:v15];
    if ((v14 & 0x40) != 0)
    {
      v16 = &__kCFBooleanTrue;
    }

    else
    {
      v16 = &__kCFBooleanFalse;
    }

    [a3 setRedEyeOn:v16];
  }

  v17 = [a4 objectForKeyedSubscript:kCGImagePropertyExifExposureMode];
  if (v17)
  {
    [a3 setExposureMode:v17];
  }

  v18 = [a4 objectForKeyedSubscript:kCGImagePropertyExifWhiteBalance];
  if (v18)
  {
    [a3 setWhiteBalance:v18];
  }

  v19 = [a4 objectForKeyedSubscript:kCGImagePropertyExifMeteringMode];
  if (v19)
  {
    v20 = [v19 intValue];
    if (v20 > 6)
    {
      v21 = @"other";
    }

    else
    {
      v21 = *(&off_100004370 + v20);
    }

    [a3 setMeteringMode:v21];
  }

  v22 = [a4 objectForKeyedSubscript:kCGImagePropertyExifISOSpeedRatings];
  if (v22)
  {
    v23 = v22;
    if ([v22 count])
    {
      [a3 setISOSpeed:{objc_msgSend(v23, "objectAtIndexedSubscript:", 0)}];
    }
  }

  v24 = [a4 objectForKeyedSubscript:kCGImagePropertyExifFocalLength];
  if (v24)
  {
    [a3 setFocalLength:v24];
  }

  v25 = [a4 objectForKeyedSubscript:kCGImagePropertyExifFocalLenIn35mmFilm];
  if (v25)
  {
    [a3 setFocalLength35mm:v25];
  }

  v26 = [a4 objectForKeyedSubscript:kCGImagePropertyExifUserComment];
  if (v26)
  {
    v27 = v26;
    [a3 setComment:v26];
    [v27 isEqualToString:@"Screenshot"];
  }

  v28 = [a4 objectForKeyedSubscript:kCGImagePropertyExifFNumber];
  if (v28)
  {
    [a3 setFNumber:v28];
  }

  v29 = [a4 objectForKeyedSubscript:kCGImagePropertyExifExposureProgram];
  if (v29)
  {
    v30 = [v29 intValue] - 1;
    if (v30 > 7)
    {
      v31 = @"Not defined";
    }

    else
    {
      v31 = *(&off_1000043A8 + v30);
    }

    [a3 setExposureProgram:v31];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)a3 withProperties:(id)a4 forISR:(CGImageSource *)a5
{
  v8 = [a4 objectForKeyedSubscript:kCGImagePropertyPixelWidth];
  v9 = [a4 objectForKeyedSubscript:kCGImagePropertyPixelHeight];
  v10 = [a4 objectForKeyedSubscript:kCGImagePropertyDPIWidth];
  v11 = [a4 objectForKeyedSubscript:kCGImagePropertyDPIHeight];
  v12 = [v9 longValue];
  v13 = v12 > [v8 longValue];
  if ([a4 objectForKeyedSubscript:kCGImagePropertyOrientation] && objc_msgSend(objc_msgSend(a4, "objectForKeyedSubscript:", kCGImagePropertyOrientation), "intValue") >= 5)
  {
    v14 = [NSNumber numberWithInt:v13 ^ 1];
    v15 = v10;
    v10 = v11;
    v16 = v8;
    v8 = v9;
  }

  else
  {
    v14 = [NSNumber numberWithShort:v13];
    v15 = v11;
    v16 = v9;
  }

  [a3 setOrientation:v14];
  [a3 setPixelWidth:v8];
  [a3 setPixelHeight:v16];
  [a3 setPixelCount:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", objc_msgSend(objc_msgSend(a3, "pixelHeight"), "longLongValue") * objc_msgSend(objc_msgSend(a3, "pixelWidth"), "longLongValue"))}];
  [a3 setResolutionWidthDPI:v10];
  [a3 setResolutionHeightDPI:v15];
  if ([objc_msgSend(a4 objectForKeyedSubscript:{kCGImagePropertyHasAlpha), "BOOLValue"}])
  {
    v17 = &__kCFBooleanTrue;
  }

  else
  {
    v17 = &__kCFBooleanFalse;
  }

  [a3 setHasAlphaChannel:v17];
  if ([a4 objectForKeyedSubscript:kCGImagePropertyProfileName])
  {
    [a3 setProfileName:{objc_msgSend(a4, "objectForKeyedSubscript:", kCGImagePropertyProfileName)}];
  }

  if ([a4 objectForKeyedSubscript:kCGImagePropertyColorModel])
  {
    [a3 setColorSpace:{objc_msgSend(a4, "objectForKeyedSubscript:", kCGImagePropertyColorModel)}];
  }

  v18 = [a4 objectForKeyedSubscript:kCGImagePropertyExifDictionary];
  if (v18)
  {
    [(ImageImportExtension *)self updateAttributes:a3 withExifProperties:v18 forISR:a5];
  }

  v19 = [a4 objectForKeyedSubscript:kCGImagePropertyExifAuxDictionary];
  if (v19)
  {
    [(ImageImportExtension *)self updateAttributes:a3 withExifAuxProperties:v19 forISR:a5];
  }

  v20 = [a4 objectForKeyedSubscript:kCGImagePropertyTIFFDictionary];
  if (v20)
  {
    [(ImageImportExtension *)self updateAttributes:a3 withTIFFProperties:v20 forISR:a5];
  }

  v21 = [a4 objectForKeyedSubscript:kCGImageProperty8BIMDictionary];
  if (v21)
  {
    [(ImageImportExtension *)self updateAttributes:a3 withPhotoshopProperties:v21 forISR:a5];
  }

  v22 = [a4 objectForKeyedSubscript:kCGImagePropertyIPTCDictionary];
  if (v22)
  {
    [(ImageImportExtension *)self updateAttributes:a3 withIPTCProperties:v22 forISR:a5];
  }

  v23 = [a4 objectForKeyedSubscript:kCGImagePropertyGPSDictionary];
  if (v23)
  {
    [(ImageImportExtension *)self updateAttributes:a3 withGPSProperties:v23 forISR:a5];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)a3 forFileAtURL:(id)a4 error:(id *)a5
{
  v7 = CGImageSourceCreateWithURL(a4, 0);
  if (v7)
  {
    v8 = v7;
    v10 = kCGImageSourceSkipMetadata;
    v11 = &__kCFBooleanTrue;
    [(ImageImportExtension *)self updateAttributes:a3 withProperties:CGImageSourceCopyPropertiesAtIndex(v7 forISR:0, [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1]), v7];
    CFRelease(v8);
  }

  return 0;
}

@end