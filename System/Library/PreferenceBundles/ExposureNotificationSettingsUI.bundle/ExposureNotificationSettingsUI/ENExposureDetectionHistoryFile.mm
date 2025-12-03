@interface ENExposureDetectionHistoryFile
- (NSString)enui_hashText;
- (id)enui_jsonSerializationWithDateFormatter:(id)formatter;
@end

@implementation ENExposureDetectionHistoryFile

- (NSString)enui_hashText
{
  fileHash = [(ENExposureDetectionHistoryFile *)self fileHash];
  enui_text = [fileHash enui_text];

  return enui_text;
}

- (id)enui_jsonSerializationWithDateFormatter:(id)formatter
{
  formatterCopy = formatter;
  v5 = [NSMutableDictionary alloc];
  v21[0] = @"Timestamp";
  processDate = [(ENExposureDetectionHistoryFile *)self processDate];
  v7 = [formatterCopy stringFromDate:processDate];

  v22[0] = v7;
  v21[1] = @"Hash";
  enui_hashText = [(ENExposureDetectionHistoryFile *)self enui_hashText];
  v22[1] = enui_hashText;
  v21[2] = @"KeyCount";
  keyCount = [(ENExposureDetectionHistoryFile *)self keyCount];
  v22[2] = keyCount;
  v10 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v11 = [v5 initWithDictionary:v10];

  sourceAppBundleIdentifier = [(ENExposureDetectionHistoryFile *)self sourceAppBundleIdentifier];

  if (sourceAppBundleIdentifier)
  {
    sourceAppBundleIdentifier2 = [(ENExposureDetectionHistoryFile *)self sourceAppBundleIdentifier];
    [v11 setObject:sourceAppBundleIdentifier2 forKey:@"AppBundleIdentifier"];
  }

  sourceRegion = [(ENExposureDetectionHistoryFile *)self sourceRegion];

  if (sourceRegion)
  {
    sourceRegion2 = [(ENExposureDetectionHistoryFile *)self sourceRegion];
    regionCode = [sourceRegion2 regionCode];
    [v11 setObject:regionCode forKey:@"RegionCode"];
  }

  matchCount = [(ENExposureDetectionHistoryFile *)self matchCount];

  if (matchCount)
  {
    matchCount2 = [(ENExposureDetectionHistoryFile *)self matchCount];
    [v11 setObject:matchCount2 forKey:@"MatchCount"];
  }

  v19 = [v11 copy];

  return v19;
}

@end