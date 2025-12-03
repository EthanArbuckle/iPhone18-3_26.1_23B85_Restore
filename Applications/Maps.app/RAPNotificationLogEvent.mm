@interface RAPNotificationLogEvent
+ (id)_buildRequestParamsWithRapId:(id)id responseId:(id)responseId;
+ (void)reportNotificationWasShownWithRapId:(id)id responseId:(id)responseId notificationType:(id)type completion:(id)completion;
+ (void)reportUserTappedNotificationWithRapId:(id)id responseId:(id)responseId notificationType:(id)type completion:(id)completion;
@end

@implementation RAPNotificationLogEvent

+ (id)_buildRequestParamsWithRapId:(id)id responseId:(id)responseId
{
  responseIdCopy = responseId;
  idCopy = id;
  v7 = objc_alloc_init(GEORPRapNotificationLogEvent);
  [v7 setOriginalRapId:idCopy];

  [v7 setResponseId:responseIdCopy];
  v8 = objc_alloc_init(GEORPFeedbackLogEventDetails);
  [v8 setRapNotificationLogEvent:v7];
  v9 = objc_alloc_init(GEORPFeedbackLogEventParameters);
  v10 = +[NSUUID UUID];
  uUIDString = [v10 UUIDString];
  [v9 setClientEventUuid:uUIDString];

  v12 = objc_alloc_init(GEORPTimestamp);
  v13 = +[NSDate date];
  [v13 timeIntervalSince1970];
  v15 = v14;

  [v12 setSeconds:v15];
  [v9 setCreatedAt:v12];
  [v9 setType:1];
  [v9 setDetails:v8];
  v16 = objc_alloc_init(GEORPFeedbackRequestParameters);
  [v16 setLogEventParameters:v9];

  return v16;
}

+ (void)reportUserTappedNotificationWithRapId:(id)id responseId:(id)responseId notificationType:(id)type completion:(id)completion
{
  completionCopy = completion;
  typeCopy = type;
  v11 = [RAPNotificationLogEvent _buildRequestParamsWithRapId:id responseId:responseId];
  logEventParameters = [v11 logEventParameters];
  details = [logEventParameters details];
  rapNotificationLogEvent = [details rapNotificationLogEvent];
  [rapNotificationLogEvent setUserInteractedWithNotification:1];

  v15 = +[GEOMapService sharedService];
  defaultTraits = [v15 defaultTraits];

  v17 = [[GEORPFeedbackRequest alloc] initWithFeedbackRequestParameters:v11 traits:defaultTraits];
  [v17 setFeedbackRequestType:7];
  v18 = +[GEOMapService sharedService];
  v19 = [v18 ticketForFeedbackRequest:v17 traits:defaultTraits];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100D5FD30;
  v21[3] = &unk_101652BF8;
  v22 = completionCopy;
  v20 = completionCopy;
  [v19 submitWithHandler:v21 networkActivity:0];
  [GEOAPPortal captureUserAction:9003 target:713 value:typeCopy];
}

+ (void)reportNotificationWasShownWithRapId:(id)id responseId:(id)responseId notificationType:(id)type completion:(id)completion
{
  completionCopy = completion;
  typeCopy = type;
  v11 = [RAPNotificationLogEvent _buildRequestParamsWithRapId:id responseId:responseId];
  logEventParameters = [v11 logEventParameters];
  details = [logEventParameters details];
  rapNotificationLogEvent = [details rapNotificationLogEvent];
  [rapNotificationLogEvent setUserShownNotification:1];

  v15 = +[GEOMapService sharedService];
  defaultTraits = [v15 defaultTraits];

  v17 = [[GEORPFeedbackRequest alloc] initWithFeedbackRequestParameters:v11 traits:defaultTraits];
  [v17 setFeedbackRequestType:7];
  v18 = +[GEOMapService sharedService];
  v19 = [v18 ticketForFeedbackRequest:v17 traits:defaultTraits];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100D5FEFC;
  v21[3] = &unk_101652BF8;
  v22 = completionCopy;
  v20 = completionCopy;
  [v19 submitWithHandler:v21 networkActivity:0];
  [GEOAPPortal captureUserAction:9002 target:713 value:typeCopy];
}

@end