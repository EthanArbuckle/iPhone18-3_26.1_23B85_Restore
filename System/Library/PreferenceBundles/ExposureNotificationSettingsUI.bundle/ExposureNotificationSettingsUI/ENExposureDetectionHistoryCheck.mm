@interface ENExposureDetectionHistoryCheck
- (id)enui_jsonSerializationWithDateFormatter:(id)formatter;
@end

@implementation ENExposureDetectionHistoryCheck

- (id)enui_jsonSerializationWithDateFormatter:(id)formatter
{
  formatterCopy = formatter;
  v5 = [NSMutableDictionary alloc];
  v29[0] = @"Timestamp";
  session = [(ENExposureDetectionHistoryCheck *)self session];
  date = [session date];
  v8 = [formatterCopy stringFromDate:date];
  v29[1] = @"Files";
  v30[0] = v8;
  files = [(ENExposureDetectionHistoryCheck *)self files];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_11984;
  v27 = &unk_2D050;
  v10 = formatterCopy;
  v28 = v10;
  v11 = [files enui_map:&v24];
  v30[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2, v24, v25, v26, v27];
  v13 = [v5 initWithDictionary:v12];

  session2 = [(ENExposureDetectionHistoryCheck *)self session];
  appBundleIdentifier = [session2 appBundleIdentifier];

  if (appBundleIdentifier)
  {
    session3 = [(ENExposureDetectionHistoryCheck *)self session];
    appBundleIdentifier2 = [session3 appBundleIdentifier];
    [v13 setObject:appBundleIdentifier2 forKey:@"AppBundleIdentifier"];
  }

  session4 = [(ENExposureDetectionHistoryCheck *)self session];
  region = [session4 region];

  if (region)
  {
    session5 = [(ENExposureDetectionHistoryCheck *)self session];
    region2 = [session5 region];
    regionCode = [region2 regionCode];
    [v13 setObject:regionCode forKey:@"RegionCode"];
  }

  return v13;
}

@end