@interface SUICAutoDismissalStrategy
+ (SUICAutoDismissalStrategy)strategyWithMode:(unint64_t)mode supportedAttentionAwarenessEvents:(unint64_t)events deviceSupportsRaiseGestureDetection:(BOOL)detection isWiredMicOrBTHeadsetOrWx:(BOOL)wx isAttending:(BOOL)attending;
+ (SUICAutoDismissalStrategy)strategyWithSupportedAttentionAwarenessEvents:(unint64_t)events deviceSupportsRaiseGestureDetection:(BOOL)detection;
@end

@implementation SUICAutoDismissalStrategy

+ (SUICAutoDismissalStrategy)strategyWithSupportedAttentionAwarenessEvents:(unint64_t)events deviceSupportsRaiseGestureDetection:(BOOL)detection
{
  detectionCopy = detection;
  eventsCopy = events;
  v6 = +[AFPreferences sharedPreferences];
  [v6 autoDismissalIdleTimeout];
  v8 = v7;

  v9 = +[AFPreferences sharedPreferences];
  [v9 autoDismissalExtendedIdleTimeout];
  v11 = v10;

  v12 = eventsCopy & 0x80;
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
    v25 = detectionCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #autodismiss created default autodismissal strategy with idleTimeout: %.1f, extendedIdleTimeout: %.1f, deviceSupportsFaceDetection: %i, deviceSupportsRaiseGestureDetection: %i", &v16, 0x2Cu);
  }

  v14 = [[SUICHandsOffAutoDismissalStrategy alloc] initWithIdleTimeout:v12 != 0 extendedIdleTimeout:detectionCopy deviceSupportsFaceDetection:v8 deviceSupportsRaiseGestureDetection:v11];

  return v14;
}

+ (SUICAutoDismissalStrategy)strategyWithMode:(unint64_t)mode supportedAttentionAwarenessEvents:(unint64_t)events deviceSupportsRaiseGestureDetection:(BOOL)detection isWiredMicOrBTHeadsetOrWx:(BOOL)wx isAttending:(BOOL)attending
{
  attendingCopy = attending;
  wxCopy = wx;
  detectionCopy = detection;
  eventsCopy = events;
  v12 = +[AFPreferences sharedPreferences];
  [v12 autoDismissalIdleTimeout];
  v14 = v13;

  if (wxCopy && attendingCopy)
  {
    v14 = 2.0;
  }

  v15 = +[AFPreferences sharedPreferences];
  [v15 autoDismissalExtendedIdleTimeout];
  v17 = v16;

  if (mode - 1 < 2)
  {
    _os_feature_enabled_impl();
  }

  else if (mode && mode != 3)
  {
    v18 = 0;
    goto LABEL_9;
  }

  v18 = objc_opt_class();
LABEL_9:
  v19 = eventsCopy & 0x80;
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
    v36 = detectionCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s #autodismiss created autodismissal strategy for mode: %@, idleTimeout: %.1f, extendedIdleTimeout: %.1f, deviceSupportsFaceDetection: %i, deviceSupportsRaiseGestureDetection: %i", &v25, 0x36u);
  }

  v23 = [[v18 alloc] initWithIdleTimeout:v19 != 0 extendedIdleTimeout:detectionCopy deviceSupportsFaceDetection:v14 deviceSupportsRaiseGestureDetection:v17];

  return v23;
}

@end