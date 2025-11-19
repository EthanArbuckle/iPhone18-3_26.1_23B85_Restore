@interface ADSiriAnalyticsOnDeviceDigestProvider
+ (id)createOnDeviceDigestEvent;
+ (unsigned)_fetchLatestDaysWithTwoAssistantSpeechRequestsPerWeek;
+ (unsigned)_fetchLatestDaysWithTwoAssistantTurnsPerWeek;
@end

@implementation ADSiriAnalyticsOnDeviceDigestProvider

+ (unsigned)_fetchLatestDaysWithTwoAssistantTurnsPerWeek
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = BiomeLibrary();
  v3 = [v2 Siri];
  v4 = [v3 Metrics];
  v5 = [v4 OnDeviceDigestSegmentsCohorts];

  v6 = [[BMPublisherOptions alloc] initWithStartDate:0 endDate:0 maxEvents:1 lastN:0 reversed:1];
  v7 = [v5 publisherWithOptions:v6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A115C;
  v10[3] = &unk_100516CD8;
  v10[4] = &v11;
  v8 = [v7 sinkWithCompletion:&stru_100514928 receiveInput:v10];
  LODWORD(v4) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v4;
}

+ (unsigned)_fetchLatestDaysWithTwoAssistantSpeechRequestsPerWeek
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = BiomeLibrary();
  v3 = [v2 Siri];
  v4 = [v3 Metrics];
  v5 = [v4 OnDeviceDigestSegmentsCohorts];

  v6 = [[BMPublisherOptions alloc] initWithStartDate:0 endDate:0 maxEvents:1 lastN:0 reversed:1];
  v7 = [v5 publisherWithOptions:v6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001A1614;
  v10[3] = &unk_100516CD8;
  v10[4] = &v11;
  v8 = [v7 sinkWithCompletion:&stru_100514908 receiveInput:v10];
  LODWORD(v4) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v4;
}

+ (id)createOnDeviceDigestEvent
{
  v3 = objc_alloc_init(DIMSchemaDIMOnDeviceDigest);
  [v3 setDaysWithTwoAssistantSpeechRequestsPerWeek:{objc_msgSend(a1, "_fetchLatestDaysWithTwoAssistantSpeechRequestsPerWeek")}];
  [v3 setDaysWithTwoValidAssistantTurnsPerWeek:{objc_msgSend(a1, "_fetchLatestDaysWithTwoAssistantTurnsPerWeek")}];
  v4 = objc_alloc_init(DIMSchemaDIMClientEvent);
  [v4 setOnDeviceDigest:v3];

  return v4;
}

@end