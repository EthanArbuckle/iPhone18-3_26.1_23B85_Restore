@interface AEAnnotation
+ (id)predicateForAnnotationsWithAssetID:(id)a3 ordinal:(int)a4;
- (BKLocation)location;
- (BOOL)isLocationSame:(id)a3;
- (int64_t)ordinal;
- (void)setLocation:(id)a3;
- (void)setOrdinal:(int64_t)a3;
@end

@implementation AEAnnotation

+ (id)predicateForAnnotationsWithAssetID:(id)a3 ordinal:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = +[AEAnnotation userAnnotationTypeValues];
  v7 = [NSPredicate predicateWithFormat:@"annotationAssetID ==[n] %@ AND plLocationRangeStart == %d AND (annotationType IN %@) AND annotationDeleted == 0", v5, v4, v6, 0];

  return v7;
}

- (void)setLocation:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v7 cfiString];
    [(AEAnnotation *)self setAnnotationLocation:v4];

    [(AEAnnotation *)self setPlUserData:0];
  }

  else
  {
    if (v7)
    {
      v5 = [v7 serializeLocationToData];
    }

    else
    {
      v5 = 0;
    }

    [(AEAnnotation *)self setPlUserData:v5];
    [(AEAnnotation *)self setAnnotationLocation:0];
  }

  v6 = [[NSNumber alloc] initWithInteger:{objc_msgSend(v7, "ordinal")}];
  [(AEAnnotation *)self setPlLocationRangeStart:v6];
}

- (BKLocation)location
{
  v3 = [(AEAnnotation *)self annotationLocation];
  if ([v3 length])
  {
    v13 = 0;
    v4 = [BKEpubCFILocation locationForCFI:v3 error:&v13];
    v5 = v13;
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
      v15 = v3;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "@Failed to create BKLocation from CFI {%@} error {%@}", buf, 0x16u);
    }
  }

  v5 = [(AEAnnotation *)self plUserData];
  if (!v5)
  {
    v4 = 0;
    goto LABEL_23;
  }

  v8 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:0];
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

- (BOOL)isLocationSame:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotation *)self plUserData];

  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v4 cfiString];
      v8 = [(AEAnnotation *)self annotationLocation];
      goto LABEL_6;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v6 = [(AEAnnotation *)self ordinal];
  if (v6 != [v4 ordinal])
  {
    goto LABEL_7;
  }

  v7 = [v4 serializeLocationToData];
  v8 = [(AEAnnotation *)self plUserData];
LABEL_6:
  v9 = v8;
  v10 = [v7 isEqual:v8];

LABEL_8:
  return v10;
}

- (void)setOrdinal:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  [(AEAnnotation *)self setPlLocationRangeStart:v4];
}

- (int64_t)ordinal
{
  v2 = [(AEAnnotation *)self plLocationRangeStart];
  v3 = [v2 integerValue];

  return v3;
}

@end