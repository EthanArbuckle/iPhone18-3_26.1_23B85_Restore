@interface NSURL(_HKURLSupport)
+ (id)_hk_appendQueryParameterToURL:()_HKURLSupport forHKProfileIdentifier:;
+ (id)_hk_urlForAtrialFibrillationEventType;
+ (id)_hk_urlForBloodPressureType;
+ (id)_hk_urlForElectrocardiogramType;
+ (id)_hk_urlForHKProfileIdentifier:()_HKURLSupport;
+ (id)_hk_urlForHealthRecordsProviderSearch;
+ (id)_hk_urlForHypertensionEventType;
+ (id)_hk_urlForViewHealthRecords;
- (id)_hk_extractEncodedHKProfileIdentifier;
- (void)_hk_extractEncodedHKProfileIdentifier;
@end

@implementation NSURL(_HKURLSupport)

+ (id)_hk_urlForViewHealthRecords
{
  v0 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v0 setScheme:@"x-apple-health"];
  [v0 setHost:@"ViewHealthRecords"];
  v1 = [v0 URL];

  return v1;
}

+ (id)_hk_urlForHealthRecordsProviderSearch
{
  v0 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v0 setScheme:@"x-apple-health"];
  [v0 setHost:@"ViewHealthRecords"];
  [v0 setPath:@"/ProviderSearch"];
  v1 = [v0 URL];

  return v1;
}

+ (id)_hk_urlForElectrocardiogramType
{
  v0 = +[(HKObjectType *)HKElectrocardiogramType];
  v1 = _HKCreateURLForSampleType(v0);

  return v1;
}

+ (id)_hk_urlForAtrialFibrillationEventType
{
  v0 = +[HKObjectType atrialFibrillationEventType];
  v1 = _HKCreateURLForSampleType(v0);

  return v1;
}

+ (id)_hk_urlForBloodPressureType
{
  v0 = +[HKObjectType bloodPressureType];
  v1 = _HKCreateURLForSampleType(v0);

  return v1;
}

+ (id)_hk_urlForHypertensionEventType
{
  v0 = +[HKObjectType hypertensionEventType];
  v1 = _HKCreateURLForSampleType(v0);

  return v1;
}

+ (id)_hk_urlForHKProfileIdentifier:()_HKURLSupport
{
  v3 = MEMORY[0x1E696AF20];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"x-apple-health"];
  [v5 setHost:@"sharing"];
  v6 = MEMORY[0x1E695DFF8];
  v7 = [v5 URL];
  v8 = [v6 _hk_appendQueryParameterToURL:v7 forHKProfileIdentifier:v4];

  return v8;
}

+ (id)_hk_appendQueryParameterToURL:()_HKURLSupport forHKProfileIdentifier:
{
  v5 = a4;
  v6 = MEMORY[0x1E696AF20];
  v7 = a3;
  v8 = [[v6 alloc] initWithURL:v7 resolvingAgainstBaseURL:0];

  queryItems = [v8 queryItems];
  v10 = [queryItems mutableCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v21 = 0;
  v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v21];
  v12 = v21;
  v13 = v12;
  if (v11)
  {
    v14 = [v11 base64EncodedStringWithOptions:0];
    uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v16 = [v14 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

    v17 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"pi" value:v16];
    [v10 addObject:v17];
    [v8 setQueryItems:v10];
    v18 = [v8 URL];
  }

  else
  {
    if (v12)
    {
      _HKInitializeLogging();
      v19 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        [NSURL(_HKURLSupport) _hk_appendQueryParameterToURL:v13 forHKProfileIdentifier:v19];
      }
    }

    v18 = 0;
  }

  return v18;
}

- (id)_hk_extractEncodedHKProfileIdentifier
{
  v1 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self resolvingAgainstBaseURL:0];
  queryItems = [v1 queryItems];
  v3 = [queryItems hk_firstObjectPassingTest:&__block_literal_global_83];
  value = [v3 value];
  stringByRemovingPercentEncoding = [value stringByRemovingPercentEncoding];
  if (stringByRemovingPercentEncoding)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:stringByRemovingPercentEncoding options:0];
    if (v6)
    {
      v13 = 0;
      v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v13];
      v8 = v13;
      v9 = v8;
      if (v7)
      {
        v10 = v7;
      }

      else if (v8)
      {
        _HKInitializeLogging();
        v11 = HKLogDefault;
        if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
        {
          [(NSURL(_HKURLSupport) *)v9 _hk_extractEncodedHKProfileIdentifier];
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)_hk_appendQueryParameterToURL:()_HKURLSupport forHKProfileIdentifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error decoding profile information from URL: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_hk_extractEncodedHKProfileIdentifier
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error decodeding profile information from URL: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end