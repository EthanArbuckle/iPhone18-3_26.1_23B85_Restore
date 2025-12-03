@interface AEAnnotation
+ (id)predicateForAnnotationsWithAssetID:(id)d ordinal:(int)ordinal;
- (BKLocation)location;
- (BOOL)isLocationSame:(id)same;
- (int64_t)ordinal;
- (void)setLocation:(id)location;
- (void)setOrdinal:(int64_t)ordinal;
@end

@implementation AEAnnotation

+ (id)predicateForAnnotationsWithAssetID:(id)d ordinal:(int)ordinal
{
  v4 = *&ordinal;
  dCopy = d;
  v6 = +[AEAnnotation userAnnotationTypeValues];
  v7 = [NSPredicate predicateWithFormat:@"annotationAssetID ==[n] %@ AND plLocationRangeStart == %d AND (annotationType IN %@) AND annotationDeleted == 0", dCopy, v4, v6, 0];

  return v7;
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cfiString = [locationCopy cfiString];
    [(AEAnnotation *)self setAnnotationLocation:cfiString];

    [(AEAnnotation *)self setPlUserData:0];
  }

  else
  {
    if (locationCopy)
    {
      serializeLocationToData = [locationCopy serializeLocationToData];
    }

    else
    {
      serializeLocationToData = 0;
    }

    [(AEAnnotation *)self setPlUserData:serializeLocationToData];
    [(AEAnnotation *)self setAnnotationLocation:0];
  }

  v6 = [[NSNumber alloc] initWithInteger:{objc_msgSend(locationCopy, "ordinal")}];
  [(AEAnnotation *)self setPlLocationRangeStart:v6];
}

- (BKLocation)location
{
  annotationLocation = [(AEAnnotation *)self annotationLocation];
  if ([annotationLocation length])
  {
    v13 = 0;
    v4 = [BKEpubCFILocation locationForCFI:annotationLocation error:&v13];
    plUserData = v13;
    if (v4)
    {
      goto LABEL_23;
    }

    v6 = BCIMLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v15 = "[AEAnnotation(BKBookmark) location]";
      v16 = 2080;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/AlderModels/AEAnnotation+BKBookmark.m";
      v18 = 1024;
      v19 = 89;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v7 = BCIMLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v15 = annotationLocation;
      v16 = 2112;
      v17 = plUserData;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "@Failed to create BKLocation from CFI {%@} error {%@}", buf, 0x16u);
    }
  }

  plUserData = [(AEAnnotation *)self plUserData];
  if (!plUserData)
  {
    v4 = 0;
    goto LABEL_23;
  }

  v8 = [NSPropertyListSerialization propertyListWithData:plUserData options:0 format:0 error:0];
  v9 = [v8 objectForKey:@"class"];
  if ([v9 isEqualToString:@"BKEpubLocation"])
  {
    v4 = [BKEpubLocation deserializeLocationFromDictionary:v8];
    v10 = [(AEAnnotation *)self annotationType]== 1 || [(AEAnnotation *)self annotationType]== 3;
    [v4 setSinglePage:v10];
    goto LABEL_22;
  }

  if ([v9 isEqualToString:@"BKPageLocation"])
  {
    v11 = BKPageLocation;
  }

  else if ([v9 isEqualToString:@"BKLocation"])
  {
    v11 = BKLocation;
  }

  else
  {
    if (![v9 isEqualToString:@"BKEpubCFILocation"])
    {
      NSLog(@"Unknown Location Type: %@", v9);
      v4 = 0;
      goto LABEL_22;
    }

    v11 = BKEpubCFILocation;
  }

  v4 = [(__objc2_class *)v11 deserializeLocationFromDictionary:v8];
LABEL_22:

LABEL_23:

  return v4;
}

- (BOOL)isLocationSame:(id)same
{
  sameCopy = same;
  plUserData = [(AEAnnotation *)self plUserData];

  if (!plUserData)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      cfiString = [sameCopy cfiString];
      annotationLocation = [(AEAnnotation *)self annotationLocation];
      goto LABEL_6;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  ordinal = [(AEAnnotation *)self ordinal];
  if (ordinal != [sameCopy ordinal])
  {
    goto LABEL_7;
  }

  cfiString = [sameCopy serializeLocationToData];
  annotationLocation = [(AEAnnotation *)self plUserData];
LABEL_6:
  v9 = annotationLocation;
  v10 = [cfiString isEqual:annotationLocation];

LABEL_8:
  return v10;
}

- (void)setOrdinal:(int64_t)ordinal
{
  v4 = [NSNumber numberWithInteger:ordinal];
  [(AEAnnotation *)self setPlLocationRangeStart:v4];
}

- (int64_t)ordinal
{
  plLocationRangeStart = [(AEAnnotation *)self plLocationRangeStart];
  integerValue = [plLocationRangeStart integerValue];

  return integerValue;
}

@end