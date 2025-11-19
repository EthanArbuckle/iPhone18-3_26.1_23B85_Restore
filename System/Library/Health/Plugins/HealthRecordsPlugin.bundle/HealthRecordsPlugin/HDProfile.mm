@interface HDProfile
- (HDHealthRecordsProfileExtension)healthRecordsExtension;
- (NSString)formattedName;
@end

@implementation HDProfile

- (HDHealthRecordsProfileExtension)healthRecordsExtension
{
  v4 = [(HDProfile *)self profileExtensionWithIdentifier:HKHealthRecordsPluginIdentifier];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_9F174(v4, a2, self);
    }
  }

  return v4;
}

- (NSString)formattedName
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v2 = [(HDProfile *)self fetchDisplayFirstName:&v14 lastName:&v13 error:&v12];
  v3 = v14;
  v4 = v13;
  v5 = v12;
  if ((v2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9F204(v5, v6);
    }
  }

  v7 = objc_alloc_init(NSPersonNameComponents);
  [v7 setFamilyName:v4];
  [v7 setGivenName:v3];
  v8 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v7 style:1 options:0];
  if ([v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

@end