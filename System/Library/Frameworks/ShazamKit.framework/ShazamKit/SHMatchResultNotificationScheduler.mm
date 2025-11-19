@interface SHMatchResultNotificationScheduler
- (BOOL)canSendNotificationForMatch:(id)a3;
- (BOOL)canSendNotificationForNoMatchSignatureID:(id)a3;
- (SHMatchResultNotificationScheduler)initWithAttribution:(id)a3;
- (void)sendAnalyticsEventForMatch:(id)a3;
- (void)sendMatchNotification:(id)a3 completionHandler:(id)a4;
- (void)sendNotificationForMatch:(id)a3 completionHandler:(id)a4;
- (void)sendNotificationForNoMatchWithCompletionHandler:(id)a3;
- (void)sendNotificationForResponse:(id)a3 completionHandler:(id)a4;
@end

@implementation SHMatchResultNotificationScheduler

- (SHMatchResultNotificationScheduler)initWithAttribution:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SHMatchResultNotificationScheduler;
  v6 = [(SHMatchResultNotificationScheduler *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attribution, a3);
    v8 = [[SHMatchResultUserNotificationContentProvider alloc] initWithAttribution:v5];
    v9 = [[SHMatchResultUserNotificationContentDeliverer alloc] initWithContentProvider:v8];
    contentDeliverer = v7->_contentDeliverer;
    v7->_contentDeliverer = v9;
  }

  return v7;
}

- (BOOL)canSendNotificationForMatch:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SHMatchResultNotificationScheduler *)self currentMediaItem];
    if ([v4 containsMediaItemWithFuzzyTolerance:v5])
    {
      v6 = [(SHMatchResultNotificationScheduler *)self currentSignatureID];
      v7 = [v4 querySignature];
      v8 = [v7 _ID];
      v9 = [v6 isEqual:v8] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)sendNotificationForMatch:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 mediaItems];
  v9 = [v8 firstObject];
  [(SHMatchResultNotificationScheduler *)self setCurrentMediaItem:v9];

  v10 = [v7 querySignature];
  v11 = [v10 _ID];
  [(SHMatchResultNotificationScheduler *)self setCurrentSignatureID:v11];

  [(SHMatchResultNotificationScheduler *)self sendAnalyticsEventForMatch:v7];
  v12 = [(SHMatchResultNotificationScheduler *)self currentMediaItem];
  [(SHMatchResultNotificationScheduler *)self sendMatchNotification:v12 completionHandler:v6];
}

- (BOOL)canSendNotificationForNoMatchSignatureID:(id)a3
{
  v4 = a3;
  v5 = [(SHMatchResultNotificationScheduler *)self currentSignatureID];
  v6 = [v5 isEqual:v4];

  return v6 ^ 1;
}

- (void)sendNotificationForNoMatchWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = sh_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Sending no match notification", v7, 2u);
  }

  [(SHMatchResultNotificationScheduler *)self sendAnalyticsEventForMatch:0];
  v6 = [(SHMatchResultNotificationScheduler *)self contentDeliverer];
  [v6 deliverContentForNoMatchWithCompletion:v4];
}

- (void)sendAnalyticsEventForMatch:(id)a3
{
  v10 = +[NSMutableDictionary dictionary];
  v5 = [(SHMatchResultNotificationScheduler *)self attribution];
  v6 = [v5 bundleIdentifier];
  [v10 setValue:v6 forKey:SHAnalyticsPayloadSourceKey];

  v7 = [NSNumber numberWithBool:a3 != 0];
  [v10 setObject:v7 forKey:SHAnalyticsPayloadMatchKey];

  v8 = SHAnalyticsEventMusicRecognitionResult;
  v9 = [v10 copy];
  [SHAnalytics sendEvent:v8 withPayload:v9];
}

- (void)sendNotificationForResponse:(id)a3 completionHandler:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v14 result];
  if (v7 == 1)
  {
    v11 = [v14 match];
    v12 = [(SHMatchResultNotificationScheduler *)self canSendNotificationForMatch:v11];

    if (v12)
    {
      v13 = [v14 match];
      [(SHMatchResultNotificationScheduler *)self sendNotificationForMatch:v13 completionHandler:v6];

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v7 == 2 || v7 == 3)
  {
    v8 = [v14 signature];
    v9 = [v8 _ID];
    v10 = [(SHMatchResultNotificationScheduler *)self canSendNotificationForNoMatchSignatureID:v9];

    if (v10)
    {
      [(SHMatchResultNotificationScheduler *)self sendNotificationForNoMatchWithCompletionHandler:v6];
      goto LABEL_9;
    }

LABEL_8:
    v6[2](v6);
  }

LABEL_9:
}

- (void)sendMatchNotification:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sh_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Sending match notification", v10, 2u);
  }

  v9 = [(SHMatchResultNotificationScheduler *)self contentDeliverer];
  [v9 deliverContentForMatchedMediaItem:v7 completion:v6];
}

@end