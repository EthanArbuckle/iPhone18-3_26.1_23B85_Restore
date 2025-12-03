@interface NSURLSessionConfiguration(AppleMediaServices)
+ (id)_URLBagCache;
+ (id)ams_configurationWithClientInfo:()AppleMediaServices bag:;
+ (id)ams_configurationWithProcessInfo:()AppleMediaServices bag:;
+ (id)ams_imageConfiguration;
- (id)ams_configureWithClientInfo:()AppleMediaServices bag:;
- (void)ams_configureWithProcessInfo:()AppleMediaServices bag:;
@end

@implementation NSURLSessionConfiguration(AppleMediaServices)

+ (id)_URLBagCache
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__NSURLSessionConfiguration_AppleMediaServices___URLBagCache__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED6E3318 != -1)
  {
    dispatch_once(&qword_1ED6E3318, block);
  }

  v1 = _MergedGlobals_168;

  return v1;
}

+ (id)ams_imageConfiguration
{
  defaultSessionConfiguration = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  if (+[AMSEphemeralDefaults preferEphemeralImageLoader])
  {
    ephemeralSessionConfiguration = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];

    defaultSessionConfiguration = ephemeralSessionConfiguration;
  }

  [defaultSessionConfiguration setHTTPShouldUsePipelining:1];
  [defaultSessionConfiguration setTimeoutIntervalForRequest:30.0];

  return defaultSessionConfiguration;
}

+ (id)ams_configurationWithClientInfo:()AppleMediaServices bag:
{
  v5 = MEMORY[0x1E695AC80];
  v6 = a4;
  v7 = a3;
  defaultSessionConfiguration = [v5 defaultSessionConfiguration];
  v9 = [defaultSessionConfiguration ams_configureWithClientInfo:v7 bag:v6];

  promiseAdapter = [v9 promiseAdapter];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__NSURLSessionConfiguration_AppleMediaServices__ams_configurationWithClientInfo_bag___block_invoke;
  v14[3] = &unk_1E73B3F70;
  v15 = defaultSessionConfiguration;
  v11 = defaultSessionConfiguration;
  v12 = [promiseAdapter thenWithBlock:v14];

  return v12;
}

- (id)ams_configureWithClientInfo:()AppleMediaServices bag:
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AMSSetLogKeyIfNeeded();
  [self setHTTPShouldUsePipelining:1];
  [self set_timingDataOptions:69];
  [self set_tlsTrustPinningPolicyName:*MEMORY[0x1E697B2A8]];
  if (+[AMSEphemeralDefaults preferEphemeralURLSessions])
  {
    [self setURLCache:0];
    [self setURLCredentialStorage:0];
    [self setRequestCachePolicy:1];
  }

  else
  {
    _URLBagCache = [MEMORY[0x1E695AC80] _URLBagCache];
    [self setURLCache:_URLBagCache];
  }

  v10 = !os_variant_has_internal_content() || !+[AMSDefaults QAMode](AMSDefaults, "QAMode") && !+[AMSDefaults ignoreServerTrustEvaluation](AMSDefaults, "ignoreServerTrustEvaluation") && !+[AMSDefaults ss_ignoreServerTrustEvaluation];
  [self set_alwaysPerformDefaultTrustEvaluation:v10];
  bundleIdentifier = [v6 bundleIdentifier];

  if (bundleIdentifier)
  {
    [self set_infersDiscretionaryFromOriginatingClient:1];
  }

  auditTokenData = [v6 auditTokenData];

  if (auditTokenData)
  {
    auditTokenData2 = [v6 auditTokenData];
    [self set_sourceApplicationAuditTokenData:auditTokenData2];

    [self set_infersDiscretionaryFromOriginatingClient:1];
  }

  v14 = objc_alloc_init(AMSMutableBinaryPromise);
  v15 = [v7 doubleForKey:@"TLSSamplingPercentage"];
  v16 = [v7 doubleForKey:@"TLSSamplingSessionDuration"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __81__NSURLSessionConfiguration_AppleMediaServices__ams_configureWithClientInfo_bag___block_invoke;
  v27[3] = &unk_1E73B5650;
  v27[4] = self;
  v28 = v14;
  v17 = v14;
  [AMSDefaults shouldSampleWithPercentageValue:v15 sessionDurationValue:v16 identifier:0x1F0725798 completion:v27];
  v18 = objc_alloc_init(AMSMutableBinaryPromise);
  v19 = [v7 doubleForKey:@"TFOSamplingPercentage"];
  v20 = [v7 doubleForKey:@"TFOSamplingSessionDuration"];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __81__NSURLSessionConfiguration_AppleMediaServices__ams_configureWithClientInfo_bag___block_invoke_2;
  v25[3] = &unk_1E73B5650;
  v25[4] = self;
  v26 = v18;
  v21 = v18;
  [AMSDefaults shouldSampleWithPercentageValue:v19 sessionDurationValue:v20 identifier:0x1F0725778 completion:v25];
  v29[0] = v17;
  v29[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v23 = [AMSBinaryPromise promiseWithAll:v22];

  return v23;
}

+ (id)ams_configurationWithProcessInfo:()AppleMediaServices bag:
{
  v1 = [self ams_configurationWithClientInfo:? bag:?];
  v2 = [v1 resultWithError:0];

  return v2;
}

- (void)ams_configureWithProcessInfo:()AppleMediaServices bag:
{
  v1 = [self ams_configureWithClientInfo:? bag:?];
  [v1 resultWithError:0];
}

@end