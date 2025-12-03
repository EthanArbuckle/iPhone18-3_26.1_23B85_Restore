@interface ImageImportExtension
- (BOOL)updateAttributes:(id)attributes forFileAtURL:(id)l error:(id *)error;
- (BOOL)updateAttributes:(id)attributes withExifAuxProperties:(id)properties forISR:(CGImageSource *)r;
- (BOOL)updateAttributes:(id)attributes withExifProperties:(id)properties forISR:(CGImageSource *)r;
- (BOOL)updateAttributes:(id)attributes withGPSProperties:(id)properties forISR:(CGImageSource *)r;
- (BOOL)updateAttributes:(id)attributes withIPTCProperties:(id)properties forISR:(CGImageSource *)r;
- (BOOL)updateAttributes:(id)attributes withPhotoshopProperties:(id)properties forISR:(CGImageSource *)r;
- (BOOL)updateAttributes:(id)attributes withProperties:(id)properties forISR:(CGImageSource *)r;
- (BOOL)updateAttributes:(id)attributes withTIFFProperties:(id)properties forISR:(CGImageSource *)r;
- (id)dateFromString:(id)string;
@end

@implementation ImageImportExtension

- (id)dateFromString:(id)string
{
  if (qword_100008498 != -1)
  {
    sub_10000205C();
    if (string)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!string)
  {
    return 0;
  }

LABEL_3:
  v4 = qword_100008490;

  return [v4 dateFromString:string];
}

- (BOOL)updateAttributes:(id)attributes withGPSProperties:(id)properties forISR:(CGImageSource *)r
{
  [attributes setEXIFGPSVersion:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", kCGImagePropertyGPSVersion), "componentsJoinedByString:", @"."}];
  v8 = [properties objectForKeyedSubscript:kCGImagePropertyGPSAltitude];
  if (v8)
  {
    [v8 doubleValue];
    v10 = v9;
    v11 = [objc_msgSend(properties objectForKeyedSubscript:{kCGImagePropertyGPSAltitudeRef), "intValue"}];
    v12 = v10 > 0.0 && v11 == 1;
    v13 = -v10;
    if (!v12)
    {
      v13 = v10;
    }

    [attributes setAltitude:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v13)}];
  }

  v14 = [properties objectForKeyedSubscript:kCGImagePropertyGPSLatitude];
  if (v14)
  {
    [v14 doubleValue];
    v16 = v15;
    v17 = [objc_msgSend(properties objectForKeyedSubscript:{kCGImagePropertyGPSLatitudeRef), "caseInsensitiveCompare:", @"S"}];
    v18 = v16 > 0.0 && v17 == 0;
    v19 = -v16;
    if (!v18)
    {
      v19 = v16;
    }

    [attributes setLatitude:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v19)}];
  }

  v20 = [properties objectForKeyedSubscript:kCGImagePropertyGPSLongitude];
  if (v20)
  {
    [v20 doubleValue];
    v22 = v21;
    v23 = [objc_msgSend(properties objectForKeyedSubscript:{kCGImagePropertyGPSLongitudeRef), "caseInsensitiveCompare:", @"W"}];
    v24 = v22 > 0.0 && v23 == 0;
    v25 = -v22;
    if (!v24)
    {
      v25 = v22;
    }

    [attributes setLongitude:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v25)}];
  }

  v26 = [properties objectForKeyedSubscript:kCGImagePropertyGPSSpeed];
  if (v26)
  {
    [v26 doubleValue];
    v28 = v27;
    v29 = [properties objectForKeyedSubscript:kCGImagePropertyGPSSpeedRef];
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

    [attributes setSpeed:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v31)}];
  }

  v32 = [properties objectForKeyedSubscript:kCGImagePropertyGPSTrack];
  if (v32)
  {
    [attributes setGPSTrack:v32];
  }

  v33 = [properties objectForKeyedSubscript:kCGImagePropertyGPSImgDirection];
  if (v33)
  {
    [attributes setImageDirection:v33];
  }

  v34 = [properties objectForKeyedSubscript:kCGImagePropertyGPSDestLatitude];
  if (v34)
  {
    [v34 doubleValue];
    v36 = v35;
    v37 = [objc_msgSend(properties objectForKeyedSubscript:{kCGImagePropertyGPSDestLatitudeRef), "caseInsensitiveCompare:", @"S"}];
    v38 = v36 > 0.0 && v37 == 0;
    v39 = -v36;
    if (!v38)
    {
      v39 = v36;
    }

    [attributes setGPSDestLatitude:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v39)}];
  }

  v40 = [properties objectForKeyedSubscript:kCGImagePropertyGPSDestLongitude];
  if (v40)
  {
    [v40 doubleValue];
    v42 = v41;
    v43 = [objc_msgSend(properties objectForKeyedSubscript:{kCGImagePropertyGPSDestLongitudeRef), "caseInsensitiveCompare:", @"W"}];
    v44 = v42 > 0.0 && v43 == 0;
    v45 = -v42;
    if (!v44)
    {
      v45 = v42;
    }

    [attributes setGPSDestLongitude:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v45)}];
  }

  v46 = [properties objectForKeyedSubscript:kCGImagePropertyGPSStatus];
  if (v46)
  {
    [attributes setGPSStatus:v46];
  }

  v47 = [properties objectForKeyedSubscript:kCGImagePropertyGPSMeasureMode];
  if (v47)
  {
    [attributes setGPSMeasureMode:v47];
  }

  v48 = [properties objectForKeyedSubscript:kCGImagePropertyGPSDOP];
  if (v48)
  {
    [attributes setGPSDOP:v48];
  }

  v49 = [properties objectForKeyedSubscript:kCGImagePropertyGPSMapDatum];
  if (v49)
  {
    [attributes setGPSMapDatum:v49];
  }

  v50 = [properties objectForKeyedSubscript:kCGImagePropertyGPSDestBearing];
  if (v50)
  {
    [attributes setGPSDestBearing:v50];
  }

  v51 = [properties objectForKeyedSubscript:kCGImagePropertyGPSDestDistance];
  if (v51)
  {
    [v51 doubleValue];
    v53 = v52;
    v54 = [properties objectForKeyedSubscript:kCGImagePropertyGPSDestDistanceRef];
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

    [attributes setGPSDestDistance:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v56)}];
  }

  v57 = [properties objectForKeyedSubscript:kCGImagePropertyGPSProcessingMethod];
  if (v57)
  {
    [attributes setGPSProcessingMethod:v57];
  }

  v58 = [properties objectForKeyedSubscript:kCGImagePropertyGPSAreaInformation];
  if (v58)
  {
    [attributes setGPSAreaInformation:v58];
  }

  v59 = -[ImageImportExtension dateFromString:](self, "dateFromString:", [properties objectForKeyedSubscript:kCGImagePropertyGPSTimeStamp]);
  if (v59)
  {
    [attributes setTimestamp:v59];
  }

  v60 = -[ImageImportExtension dateFromString:](self, "dateFromString:", [properties objectForKeyedSubscript:kCGImagePropertyGPSDateStamp]);
  if (v60)
  {
    [attributes setGPSDateStamp:v60];
  }

  v61 = [properties objectForKeyedSubscript:kCGImagePropertyGPSDifferental];
  if (v61)
  {
    [attributes setGPSDifferental:v61];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)attributes withIPTCProperties:(id)properties forISR:(CGImageSource *)r
{
  v7 = [NSMutableArray array:attributes];
  v8 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCByline];
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

  v10 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCWriterEditor];
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
    [attributes setAuthorNames:v7];
  }

  v12 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCCopyrightNotice];
  if (v12)
  {
    [attributes setCopyright:v12];
  }

  v13 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCObjectName];
  if (v13)
  {
    [attributes setTitle:v13];
  }

  v14 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCCaptionAbstract];
  if (v14)
  {
    [attributes setContentDescription:v14];
  }

  v15 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCHeadline];
  if (v15)
  {
    [attributes setHeadline:v15];
  }

  v16 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCSpecialInstructions];
  if (v16)
  {
    [attributes setInstructions:v16];
  }

  v17 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCCity];
  if (v17)
  {
    [attributes setCity:v17];
  }

  v18 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCProvinceState];
  if (v18)
  {
    [attributes setStateOrProvince:v18];
  }

  v19 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCCountryPrimaryLocationName];
  if (v19)
  {
    [attributes setCountry:v19];
  }

  v20 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCContact];
  if (v20)
  {
    v21 = v20;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      attributesCopy2 = attributes;
      v23 = v21;
    }

    else
    {
      v35 = v21;
      v23 = [NSArray arrayWithObjects:&v35 count:1];
      attributesCopy2 = attributes;
    }

    [attributesCopy2 setContactKeywords:v23];
  }

  v24 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCKeywords];
  if (v24)
  {
    v25 = v24;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      attributesCopy4 = attributes;
      v27 = v25;
    }

    else
    {
      v34 = v25;
      v27 = [NSArray arrayWithObjects:&v34 count:1];
      attributesCopy4 = attributes;
    }

    [attributesCopy4 setKeywords:v27];
  }

  v28 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCCredit];
  if (v28)
  {
    v29 = v28;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      attributesCopy6 = attributes;
      v31 = v29;
    }

    else
    {
      v33 = v29;
      v31 = [NSArray arrayWithObjects:&v33 count:1];
      attributesCopy6 = attributes;
    }

    [attributesCopy6 setContributors:v31];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)attributes withPhotoshopProperties:(id)properties forISR:(CGImageSource *)r
{
  v6 = [properties objectForKeyedSubscript:kCGImageProperty8BIMLayerNames];
  if (v6)
  {
    [attributes setLayerNames:v6];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)attributes withTIFFProperties:(id)properties forISR:(CGImageSource *)r
{
  v8 = [properties objectForKeyedSubscript:kCGImagePropertyTIFFModel];
  if (v8)
  {
    [attributes setAcquisitionModel:v8];
  }

  v9 = [properties objectForKeyedSubscript:kCGImagePropertyTIFFMake];
  if (v9)
  {
    [attributes setAcquisitionMake:v9];
  }

  if (![attributes contentCreationDate])
  {
    v10 = -[ImageImportExtension dateFromString:](self, "dateFromString:", [properties objectForKeyedSubscript:kCGImagePropertyTIFFDateTime]);
    if (v10)
    {
      [attributes setContentCreationDate:v10];
    }
  }

  v11 = [properties objectForKeyedSubscript:kCGImagePropertyTIFFSoftware];
  if (v11)
  {
    [attributes setCreator:v11];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)attributes withExifAuxProperties:(id)properties forISR:(CGImageSource *)r
{
  v7 = [properties objectForKeyedSubscript:kCGImagePropertyExifLensModel];
  if (v7)
  {
    [attributes setLensModel:v7];
  }

  v8 = [properties objectForKeyedSubscript:kCGImagePropertyExifCameraOwnerName];
  if (v8)
  {
    [attributes setCameraOwner:v8];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)attributes withExifProperties:(id)properties forISR:(CGImageSource *)r
{
  [attributes setEXIFVersion:{objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", kCGImagePropertyExifVersion), "componentsJoinedByString:", @"."}];
  v8 = -[ImageImportExtension dateFromString:](self, "dateFromString:", [properties objectForKeyedSubscript:kCGImagePropertyExifDateTimeOriginal]);
  if (v8)
  {
    [attributes setContentCreationDate:v8];
  }

  v9 = -[ImageImportExtension dateFromString:](self, "dateFromString:", [properties objectForKeyedSubscript:kCGImagePropertyExifDateTimeDigitized]);
  if (v9)
  {
    [attributes setContentModificationDate:v9];
  }

  v10 = [properties objectForKeyedSubscript:kCGImagePropertyExifApertureValue];
  if (v10)
  {
    [attributes setAperture:v10];
  }

  v11 = [properties objectForKeyedSubscript:kCGImagePropertyExifExposureTime];
  if (v11)
  {
    v12 = v11;
    [attributes setExposureTime:v11];
    [attributes setExposureTimeString:{objc_msgSend(v12, "fractionString")}];
  }

  v13 = [properties objectForKeyedSubscript:kCGImagePropertyExifFlash];
  if (v13)
  {
    intValue = [v13 intValue];
    if (intValue)
    {
      v15 = &__kCFBooleanTrue;
    }

    else
    {
      v15 = &__kCFBooleanFalse;
    }

    [attributes setFlashOn:v15];
    if ((intValue & 0x40) != 0)
    {
      v16 = &__kCFBooleanTrue;
    }

    else
    {
      v16 = &__kCFBooleanFalse;
    }

    [attributes setRedEyeOn:v16];
  }

  v17 = [properties objectForKeyedSubscript:kCGImagePropertyExifExposureMode];
  if (v17)
  {
    [attributes setExposureMode:v17];
  }

  v18 = [properties objectForKeyedSubscript:kCGImagePropertyExifWhiteBalance];
  if (v18)
  {
    [attributes setWhiteBalance:v18];
  }

  v19 = [properties objectForKeyedSubscript:kCGImagePropertyExifMeteringMode];
  if (v19)
  {
    intValue2 = [v19 intValue];
    if (intValue2 > 6)
    {
      v21 = @"other";
    }

    else
    {
      v21 = *(&off_100004370 + intValue2);
    }

    [attributes setMeteringMode:v21];
  }

  v22 = [properties objectForKeyedSubscript:kCGImagePropertyExifISOSpeedRatings];
  if (v22)
  {
    v23 = v22;
    if ([v22 count])
    {
      [attributes setISOSpeed:{objc_msgSend(v23, "objectAtIndexedSubscript:", 0)}];
    }
  }

  v24 = [properties objectForKeyedSubscript:kCGImagePropertyExifFocalLength];
  if (v24)
  {
    [attributes setFocalLength:v24];
  }

  v25 = [properties objectForKeyedSubscript:kCGImagePropertyExifFocalLenIn35mmFilm];
  if (v25)
  {
    [attributes setFocalLength35mm:v25];
  }

  v26 = [properties objectForKeyedSubscript:kCGImagePropertyExifUserComment];
  if (v26)
  {
    v27 = v26;
    [attributes setComment:v26];
    [v27 isEqualToString:@"Screenshot"];
  }

  v28 = [properties objectForKeyedSubscript:kCGImagePropertyExifFNumber];
  if (v28)
  {
    [attributes setFNumber:v28];
  }

  v29 = [properties objectForKeyedSubscript:kCGImagePropertyExifExposureProgram];
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

    [attributes setExposureProgram:v31];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)attributes withProperties:(id)properties forISR:(CGImageSource *)r
{
  v8 = [properties objectForKeyedSubscript:kCGImagePropertyPixelWidth];
  v9 = [properties objectForKeyedSubscript:kCGImagePropertyPixelHeight];
  v10 = [properties objectForKeyedSubscript:kCGImagePropertyDPIWidth];
  v11 = [properties objectForKeyedSubscript:kCGImagePropertyDPIHeight];
  longValue = [v9 longValue];
  v13 = longValue > [v8 longValue];
  if ([properties objectForKeyedSubscript:kCGImagePropertyOrientation] && objc_msgSend(objc_msgSend(properties, "objectForKeyedSubscript:", kCGImagePropertyOrientation), "intValue") >= 5)
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

  [attributes setOrientation:v14];
  [attributes setPixelWidth:v8];
  [attributes setPixelHeight:v16];
  [attributes setPixelCount:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", objc_msgSend(objc_msgSend(attributes, "pixelHeight"), "longLongValue") * objc_msgSend(objc_msgSend(attributes, "pixelWidth"), "longLongValue"))}];
  [attributes setResolutionWidthDPI:v10];
  [attributes setResolutionHeightDPI:v15];
  if ([objc_msgSend(properties objectForKeyedSubscript:{kCGImagePropertyHasAlpha), "BOOLValue"}])
  {
    v17 = &__kCFBooleanTrue;
  }

  else
  {
    v17 = &__kCFBooleanFalse;
  }

  [attributes setHasAlphaChannel:v17];
  if ([properties objectForKeyedSubscript:kCGImagePropertyProfileName])
  {
    [attributes setProfileName:{objc_msgSend(properties, "objectForKeyedSubscript:", kCGImagePropertyProfileName)}];
  }

  if ([properties objectForKeyedSubscript:kCGImagePropertyColorModel])
  {
    [attributes setColorSpace:{objc_msgSend(properties, "objectForKeyedSubscript:", kCGImagePropertyColorModel)}];
  }

  v18 = [properties objectForKeyedSubscript:kCGImagePropertyExifDictionary];
  if (v18)
  {
    [(ImageImportExtension *)self updateAttributes:attributes withExifProperties:v18 forISR:r];
  }

  v19 = [properties objectForKeyedSubscript:kCGImagePropertyExifAuxDictionary];
  if (v19)
  {
    [(ImageImportExtension *)self updateAttributes:attributes withExifAuxProperties:v19 forISR:r];
  }

  v20 = [properties objectForKeyedSubscript:kCGImagePropertyTIFFDictionary];
  if (v20)
  {
    [(ImageImportExtension *)self updateAttributes:attributes withTIFFProperties:v20 forISR:r];
  }

  v21 = [properties objectForKeyedSubscript:kCGImageProperty8BIMDictionary];
  if (v21)
  {
    [(ImageImportExtension *)self updateAttributes:attributes withPhotoshopProperties:v21 forISR:r];
  }

  v22 = [properties objectForKeyedSubscript:kCGImagePropertyIPTCDictionary];
  if (v22)
  {
    [(ImageImportExtension *)self updateAttributes:attributes withIPTCProperties:v22 forISR:r];
  }

  v23 = [properties objectForKeyedSubscript:kCGImagePropertyGPSDictionary];
  if (v23)
  {
    [(ImageImportExtension *)self updateAttributes:attributes withGPSProperties:v23 forISR:r];
  }

  return 1;
}

- (BOOL)updateAttributes:(id)attributes forFileAtURL:(id)l error:(id *)error
{
  v7 = CGImageSourceCreateWithURL(l, 0);
  if (v7)
  {
    v8 = v7;
    v10 = kCGImageSourceSkipMetadata;
    v11 = &__kCFBooleanTrue;
    [(ImageImportExtension *)self updateAttributes:attributes withProperties:CGImageSourceCopyPropertiesAtIndex(v7 forISR:0, [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1]), v7];
    CFRelease(v8);
  }

  return 0;
}

@end