@interface ENExposureDetectionHistoryFile
- (NSString)enui_hashText;
- (id)enui_jsonSerializationWithDateFormatter:(id)a3;
@end

@implementation ENExposureDetectionHistoryFile

- (NSString)enui_hashText
{
  v2 = [(ENExposureDetectionHistoryFile *)self fileHash];
  v3 = [v2 enui_text];

  return v3;
}

- (id)enui_jsonSerializationWithDateFormatter:(id)a3
{
  v4 = a3;
  v5 = [NSMutableDictionary alloc];
  v21[0] = @"Timestamp";
  v6 = [(ENExposureDetectionHistoryFile *)self processDate];
  v7 = [v4 stringFromDate:v6];

  v22[0] = v7;
  v21[1] = @"Hash";
  v8 = [(ENExposureDetectionHistoryFile *)self enui_hashText];
  v22[1] = v8;
  v21[2] = @"KeyCount";
  v9 = [(ENExposureDetectionHistoryFile *)self keyCount];
  v22[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
  v11 = [v5 initWithDictionary:v10];

  v12 = [(ENExposureDetectionHistoryFile *)self sourceAppBundleIdentifier];

  if (v12)
  {
    v13 = [(ENExposureDetectionHistoryFile *)self sourceAppBundleIdentifier];
    [v11 setObject:v13 forKey:@"AppBundleIdentifier"];
  }

  v14 = [(ENExposureDetectionHistoryFile *)self sourceRegion];

  if (v14)
  {
    v15 = [(ENExposureDetectionHistoryFile *)self sourceRegion];
    v16 = [v15 regionCode];
    [v11 setObject:v16 forKey:@"RegionCode"];
  }

  v17 = [(ENExposureDetectionHistoryFile *)self matchCount];

  if (v17)
  {
    v18 = [(ENExposureDetectionHistoryFile *)self matchCount];
    [v11 setObject:v18 forKey:@"MatchCount"];
  }

  v19 = [v11 copy];

  return v19;
}

@end