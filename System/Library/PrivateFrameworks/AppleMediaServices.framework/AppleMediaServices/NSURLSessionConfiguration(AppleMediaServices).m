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
  block[4] = a1;
  if (qword_1ED6E3318 != -1)
  {
    dispatch_once(&qword_1ED6E3318, block);
  }

  v1 = _MergedGlobals_168;

  return v1;
}

+ (id)ams_imageConfiguration
{
  v0 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
  if (+[AMSEphemeralDefaults preferEphemeralImageLoader])
  {
    v1 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];

    v0 = v1;
  }

  [v0 setHTTPShouldUsePipelining:1];
  [v0 setTimeoutIntervalForRequest:30.0];

  return v0;
}

+ (id)ams_configurationWithClientInfo:()AppleMediaServices bag:
{
  v5 = MEMORY[0x1E695AC80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 defaultSessionConfiguration];
  v9 = [v8 ams_configureWithClientInfo:v7 bag:v6];

  v10 = [v9 promiseAdapter];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__NSURLSessionConfiguration_AppleMediaServices__ams_configurationWithClientInfo_bag___block_invoke;
  v14[3] = &unk_1E73B3F70;
  v15 = v8;
  v11 = v8;
  v12 = [v10 thenWithBlock:v14];

  return v12;
}

- (id)ams_configureWithClientInfo:()AppleMediaServices bag:
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AMSSetLogKeyIfNeeded();
  [a1 setHTTPShouldUsePipelining:1];
  [a1 set_timingDataOptions:69];
  [a1 set_tlsTrustPinningPolicyName:*MEMORY[0x1E697B2A8]];
  if (+[AMSEphemeralDefaults preferEphemeralURLSessions])
  {
    [a1 setURLCache:0];
    [a1 setURLCredentialStorage:0];
    [a1 setRequestCachePolicy:1];
  }

  else
  {
    v9 = [MEMORY[0x1E695AC80] _URLBagCache];
    [a1 setURLCache:v9];
  }

  v10 = !os_variant_has_internal_content() || !+[AMSDefaults QAMode](AMSDefaults, "QAMode") && !+[AMSDefaults ignoreServerTrustEvaluation](AMSDefaults, "ignoreServerTrustEvaluation") && !+[AMSDefaults ss_ignoreServerTrustEvaluation];
  [a1 set_alwaysPerformDefaultTrustEvaluation:v10];
  v11 = [v6 bundleIdentifier];

  if (v11)
  {
    [a1 set_infersDiscretionaryFromOriginatingClient:1];
  }

  v12 = [v6 auditTokenData];

  if (v12)
  {
    v13 = [v6 auditTokenData];
    [a1 set_sourceApplicationAuditTokenData:v13];

    [a1 set_infersDiscretionaryFromOriginatingClient:1];
  }

  v14 = objc_alloc_init(AMSMutableBinaryPromise);
  v15 = [v7 doubleForKey:@"TLSSamplingPercentage"];
  v16 = [v7 doubleForKey:@"TLSSamplingSessionDuration"];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __81__NSURLSessionConfiguration_AppleMediaServices__ams_configureWithClientInfo_bag___block_invoke;
  v27[3] = &unk_1E73B5650;
  v27[4] = a1;
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
  v25[4] = a1;
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
  v1 = [a1 ams_configurationWithClientInfo:? bag:?];
  v2 = [v1 resultWithError:0];

  return v2;
}

- (void)ams_configureWithProcessInfo:()AppleMediaServices bag:
{
  v1 = [a1 ams_configureWithClientInfo:? bag:?];
  [v1 resultWithError:0];
}

@end