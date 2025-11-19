@interface SUICAutoDismissalStrategy
+ (SUICAutoDismissalStrategy)strategyWithMode:(unint64_t)a3 supportedAttentionAwarenessEvents:(unint64_t)a4 deviceSupportsRaiseGestureDetection:(BOOL)a5 isWiredMicOrBTHeadsetOrWx:(BOOL)a6 isAttending:(BOOL)a7;
+ (SUICAutoDismissalStrategy)strategyWithSupportedAttentionAwarenessEvents:(unint64_t)a3 deviceSupportsRaiseGestureDetection:(BOOL)a4;
@end

@implementation SUICAutoDismissalStrategy

+ (SUICAutoDismissalStrategy)strategyWithSupportedAttentionAwarenessEvents:(unint64_t)a3 deviceSupportsRaiseGestureDetection:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[AFPreferences sharedPreferences];
  [v6 autoDismissalIdleTimeout];
  v8 = v7;

  v9 = +[AFPreferences sharedPreferences];
  [v9 autoDismissalExtendedIdleTimeout];
  v11 = v10;

  v12 = v5 & 0x80;
  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136316162;
    v17 = "+[SUICAutoDismissalStrategy(ClassCluster) strategyWithSupportedAttentionAwarenessEvents:deviceSupportsRaiseGestureDetection:]";
    v18 = 2048;
    v19 = v8;
    v20 = 2048;
    v21 = v11;
    v22 = 1024;
    v23 = v12 >> 7;
    v24 = 1024;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #autodismiss created default autodismissal strategy with idleTimeout: %.1f, extendedIdleTimeout: %.1f, deviceSupportsFaceDetection: %i, deviceSupportsRaiseGestureDetection: %i", &v16, 0x2Cu);
  }

  v14 = [[SUICHandsOffAutoDismissalStrategy alloc] initWithIdleTimeout:v12 != 0 extendedIdleTimeout:v4 deviceSupportsFaceDetection:v8 deviceSupportsRaiseGestureDetection:v11];

  return v14;
}

+ (SUICAutoDismissalStrategy)strategyWithMode:(unint64_t)a3 supportedAttentionAwarenessEvents:(unint64_t)a4 deviceSupportsRaiseGestureDetection:(BOOL)a5 isWiredMicOrBTHeadsetOrWx:(BOOL)a6 isAttending:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = +[AFPreferences sharedPreferences];
  [v12 autoDismissalIdleTimeout];
  v14 = v13;

  if (v8 && v7)
  {
    v14 = 2.0;
  }

  v15 = +[AFPreferences sharedPreferences];
  [v15 autoDismissalExtendedIdleTimeout];
  v17 = v16;

  if (a3 - 1 < 2)
  {
    _os_feature_enabled_impl();
  }

  else if (a3 && a3 != 3)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v18 = objc_opt_class();
LABEL_9:
  v19 = v10 & 0x80;
  v20 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = MDModeGetName();
    v25 = 136316418;
    v26 = "+[SUICAutoDismissalStrategy(ClassCluster) strategyWithMode:supportedAttentionAwarenessEvents:deviceSupportsRaiseGestureDetection:isWiredMicOrBTHeadsetOrWx:isAttending:]";
    v27 = 2112;
    v28 = v22;
    v29 = 2048;
    v30 = v14;
    v31 = 2048;
    v32 = v17;
    v33 = 1024;
    v34 = v19 >> 7;
    v35 = 1024;
    v36 = v9;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s #autodismiss created autodismissal strategy for mode: %@, idleTimeout: %.1f, extendedIdleTimeout: %.1f, deviceSupportsFaceDetection: %i, deviceSupportsRaiseGestureDetection: %i", &v25, 0x36u);
  }

  v23 = [[v18 alloc] initWithIdleTimeout:v19 != 0 extendedIdleTimeout:v9 deviceSupportsFaceDetection:v14 deviceSupportsRaiseGestureDetection:v17];

  return v23;
}

@end