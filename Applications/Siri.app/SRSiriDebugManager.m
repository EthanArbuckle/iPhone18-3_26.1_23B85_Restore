@interface SRSiriDebugManager
+ (void)_notifySiriDebugAppWithMessage:(id)a3 completionHandler:(id)a4;
+ (void)invokeSiriDebugFeedbackBannerFor:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation SRSiriDebugManager

+ (void)invokeSiriDebugFeedbackBannerFor:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = SASRequestSourceGetName();
    *buf = 136315394;
    v13 = "+[SRSiriDebugManager invokeSiriDebugFeedbackBannerFor:completionHandler:]";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s SiriDebug: RequestSource to invoke Siri Banner: %@", buf, 0x16u);
  }

  if ((a3 | 4) == 0xC)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002CACC;
    v10[3] = &unk_1001674E0;
    v11 = v6;
    [a1 _notifySiriDebugAppWithMessage:@"com.apple.siri.SiriDebug.FeedbackBanner.VoiceTrigger.Notify" completionHandler:v10];
  }
}

+ (void)_notifySiriDebugAppWithMessage:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (AFIsInternalInstall())
  {
    v7 = [[AFUIApplicationSiriTaskDeliverer alloc] initWithAppBundleIdentifier:@"com.apple.siri.SiriDebug"];
    v8 = [[AFSiriTaskmaster alloc] initWithTaskDeliverer:v7];
    v9 = [[AFSiriDebugUIRequest alloc] initWithMessage:v5 makeAppFrontmost:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002CC64;
    v13[3] = &unk_100167010;
    v14 = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002CD20;
    v10[3] = &unk_100167508;
    v11 = v14;
    v12 = v6;
    [v8 handleSiriRequest:v9 deliveryHandler:v13 completionHandler:v10];
  }
}

@end