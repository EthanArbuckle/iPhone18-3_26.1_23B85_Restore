@interface ADSiriCapabilitiesService
+ (id)sharedService;
- (ADSiriCapabilitiesService)initWithSiriConfiguration:(id)a3;
- (void)shouldDownloadAssetsForSiriSystemAssistantExperience:(id)a3;
- (void)siriSystemAssistantExperienceEnabled:(id)a3;
- (void)siriWithAppIntentsEnabled:(id)a3;
@end

@implementation ADSiriCapabilitiesService

- (void)siriWithAppIntentsEnabled:(id)a3
{
  v7 = 0u;
  v4 = a3;
  v5 = [(ADSiriCapabilitiesService *)self siriCapabilitiesStore:0];
  v6 = v5;
  if (v5)
  {
    [v5 currentState];
  }

  else
  {
    v7 = 0u;
  }

  v4[2](v4, (~DWORD2(v7) & 0x3FLL) == 0);
}

- (void)siriSystemAssistantExperienceEnabled:(id)a3
{
  v12 = 0u;
  v4 = a3;
  v5 = [(ADSiriCapabilitiesService *)self siriCapabilitiesStore:0];
  v6 = v5;
  if (v5)
  {
    [v5 currentState];
  }

  else
  {
    v12 = 0u;
  }

  v7 = BYTE8(v12) & 0x3F;
  v8 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [NSNumber numberWithBool:v7 == 63];
    v11 = [NSNumber numberWithUnsignedInteger:*(&v12 + 1)];
    *buf = 136315650;
    v14 = "[ADSiriCapabilitiesService siriSystemAssistantExperienceEnabled:]";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Should download assets is %@, capabilities: %@", buf, 0x20u);
  }

  v4[2](v4, v7 == 63);
}

- (void)shouldDownloadAssetsForSiriSystemAssistantExperience:(id)a3
{
  v12 = 0u;
  v4 = a3;
  v5 = [(ADSiriCapabilitiesService *)self siriCapabilitiesStore:0];
  v6 = v5;
  if (v5)
  {
    [v5 currentState];
  }

  else
  {
    v12 = 0u;
  }

  v7 = BYTE8(v12) & 7;
  v8 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [NSNumber numberWithBool:v7 == 7];
    v11 = [NSNumber numberWithUnsignedInteger:*(&v12 + 1)];
    *buf = 136315650;
    v14 = "[ADSiriCapabilitiesService shouldDownloadAssetsForSiriSystemAssistantExperience:]";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Should download assets is %@, capabilities: %@", buf, 0x20u);
  }

  v4[2](v4, v7 == 7);
}

- (ADSiriCapabilitiesService)initWithSiriConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ADSiriCapabilitiesService;
  v6 = [(ADSiriCapabilitiesService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_siriCapabilitiesStore, a3);
  }

  return v7;
}

+ (id)sharedService
{
  if (qword_10058FE78 != -1)
  {
    dispatch_once(&qword_10058FE78, &stru_10050FD30);
  }

  v3 = qword_10058FE80;

  return v3;
}

@end