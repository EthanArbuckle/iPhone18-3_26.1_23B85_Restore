@interface SHMatchResultNotificationScheduler
- (BOOL)canSendNotificationForMatch:(id)match;
- (BOOL)canSendNotificationForNoMatchSignatureID:(id)d;
- (SHMatchResultNotificationScheduler)initWithAttribution:(id)attribution;
- (void)sendAnalyticsEventForMatch:(id)match;
- (void)sendMatchNotification:(id)notification completionHandler:(id)handler;
- (void)sendNotificationForMatch:(id)match completionHandler:(id)handler;
- (void)sendNotificationForNoMatchWithCompletionHandler:(id)handler;
- (void)sendNotificationForResponse:(id)response completionHandler:(id)handler;
@end

@implementation SHMatchResultNotificationScheduler

- (SHMatchResultNotificationScheduler)initWithAttribution:(id)attribution
{
  attributionCopy = attribution;
  v12.receiver = self;
  v12.super_class = SHMatchResultNotificationScheduler;
  v6 = [(SHMatchResultNotificationScheduler *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attribution, attribution);
    v8 = [[SHMatchResultUserNotificationContentProvider alloc] initWithAttribution:attributionCopy];
    v9 = [[SHMatchResultUserNotificationContentDeliverer alloc] initWithContentProvider:v8];
    contentDeliverer = v7->_contentDeliverer;
    v7->_contentDeliverer = v9;
  }

  return v7;
}

- (BOOL)canSendNotificationForMatch:(id)match
{
  matchCopy = match;
  if (matchCopy)
  {
    currentMediaItem = [(SHMatchResultNotificationScheduler *)self currentMediaItem];
    if ([matchCopy containsMediaItemWithFuzzyTolerance:currentMediaItem])
    {
      currentSignatureID = [(SHMatchResultNotificationScheduler *)self currentSignatureID];
      querySignature = [matchCopy querySignature];
      v8 = [querySignature _ID];
      v9 = [currentSignatureID isEqual:v8] ^ 1;
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

- (void)sendNotificationForMatch:(id)match completionHandler:(id)handler
{
  handlerCopy = handler;
  matchCopy = match;
  mediaItems = [matchCopy mediaItems];
  firstObject = [mediaItems firstObject];
  [(SHMatchResultNotificationScheduler *)self setCurrentMediaItem:firstObject];

  querySignature = [matchCopy querySignature];
  v11 = [querySignature _ID];
  [(SHMatchResultNotificationScheduler *)self setCurrentSignatureID:v11];

  [(SHMatchResultNotificationScheduler *)self sendAnalyticsEventForMatch:matchCopy];
  currentMediaItem = [(SHMatchResultNotificationScheduler *)self currentMediaItem];
  [(SHMatchResultNotificationScheduler *)self sendMatchNotification:currentMediaItem completionHandler:handlerCopy];
}

- (BOOL)canSendNotificationForNoMatchSignatureID:(id)d
{
  dCopy = d;
  currentSignatureID = [(SHMatchResultNotificationScheduler *)self currentSignatureID];
  v6 = [currentSignatureID isEqual:dCopy];

  return v6 ^ 1;
}

- (void)sendNotificationForNoMatchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sh_log_object();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Sending no match notification", v7, 2u);
  }

  [(SHMatchResultNotificationScheduler *)self sendAnalyticsEventForMatch:0];
  contentDeliverer = [(SHMatchResultNotificationScheduler *)self contentDeliverer];
  [contentDeliverer deliverContentForNoMatchWithCompletion:handlerCopy];
}

- (void)sendAnalyticsEventForMatch:(id)match
{
  v10 = +[NSMutableDictionary dictionary];
  attribution = [(SHMatchResultNotificationScheduler *)self attribution];
  bundleIdentifier = [attribution bundleIdentifier];
  [v10 setValue:bundleIdentifier forKey:SHAnalyticsPayloadSourceKey];

  v7 = [NSNumber numberWithBool:match != 0];
  [v10 setObject:v7 forKey:SHAnalyticsPayloadMatchKey];

  v8 = SHAnalyticsEventMusicRecognitionResult;
  v9 = [v10 copy];
  [SHAnalytics sendEvent:v8 withPayload:v9];
}

- (void)sendNotificationForResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  result = [responseCopy result];
  if (result == 1)
  {
    match = [responseCopy match];
    v12 = [(SHMatchResultNotificationScheduler *)self canSendNotificationForMatch:match];

    if (v12)
    {
      match2 = [responseCopy match];
      [(SHMatchResultNotificationScheduler *)self sendNotificationForMatch:match2 completionHandler:handlerCopy];

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (result == 2 || result == 3)
  {
    signature = [responseCopy signature];
    v9 = [signature _ID];
    v10 = [(SHMatchResultNotificationScheduler *)self canSendNotificationForNoMatchSignatureID:v9];

    if (v10)
    {
      [(SHMatchResultNotificationScheduler *)self sendNotificationForNoMatchWithCompletionHandler:handlerCopy];
      goto LABEL_9;
    }

LABEL_8:
    handlerCopy[2](handlerCopy);
  }

LABEL_9:
}

- (void)sendMatchNotification:(id)notification completionHandler:(id)handler
{
  handlerCopy = handler;
  notificationCopy = notification;
  v8 = sh_log_object();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Sending match notification", v10, 2u);
  }

  contentDeliverer = [(SHMatchResultNotificationScheduler *)self contentDeliverer];
  [contentDeliverer deliverContentForMatchedMediaItem:notificationCopy completion:handlerCopy];
}

@end