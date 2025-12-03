@interface SRUIDSurveyNotificationUtility
+ (id)_createNotificationRequest:(id)request body:(id)body footer:(id)footer identifier:(id)identifier categoryIdentifier:(id)categoryIdentifier suppressDefaultAction:(BOOL)action expirationDate:(id)date userInfo:(id)self0;
+ (id)notificationRequestWithUserInfo:(id)info;
+ (void)postSiriInternalUIDSurveyNotification:(unint64_t)notification activationHistory:(id)history requestSource:(int64_t)source dismissalReason:(int64_t)reason;
@end

@implementation SRUIDSurveyNotificationUtility

+ (id)notificationRequestWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = +[NSDate date];
  v6 = [v5 dateByAddingTimeInterval:120.0];

  v7 = [self _createNotificationRequest:@"Did you mean to activate Siri?" body:@"(Internal-Only) Select an option below to provide input about activating Siri." footer:@"Tap here to provide feedback." identifier:@"com.apple.siri.notification.uid-internal-survey" categoryIdentifier:@"SiriUIDSurveyCategory" suppressDefaultAction:1 expirationDate:v6 userInfo:infoCopy];

  return v7;
}

+ (id)_createNotificationRequest:(id)request body:(id)body footer:(id)footer identifier:(id)identifier categoryIdentifier:(id)categoryIdentifier suppressDefaultAction:(BOOL)action expirationDate:(id)date userInfo:(id)self0
{
  actionCopy = action;
  infoCopy = info;
  dateCopy = date;
  categoryIdentifierCopy = categoryIdentifier;
  identifierCopy = identifier;
  footerCopy = footer;
  bodyCopy = body;
  requestCopy = request;
  v23 = objc_alloc_init(UNMutableNotificationContent);
  [v23 setTitle:requestCopy];

  [v23 setBody:bodyCopy];
  [v23 setShouldSuppressDefaultAction:actionCopy];
  [v23 setCategoryIdentifier:categoryIdentifierCopy];

  [v23 setUserInfo:infoCopy];
  [v23 setExpirationDate:dateCopy];

  [v23 setFooter:footerCopy];
  v24 = [UNNotificationRequest requestWithIdentifier:identifierCopy content:v23 trigger:0];

  return v24;
}

+ (void)postSiriInternalUIDSurveyNotification:(unint64_t)notification activationHistory:(id)history requestSource:(int64_t)source dismissalReason:(int64_t)reason
{
  historyCopy = history;
  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "+[SRUIDSurveyNotificationUtility postSiriInternalUIDSurveyNotification:activationHistory:requestSource:dismissalReason:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Request is eligible for survey notification", buf, 0xCu);
  }

  v34[0] = @"dismissalReason";
  v11 = SASDismissalReasonGetName();
  v35[0] = v11;
  v34[1] = @"requestSource";
  v12 = [NSNumber numberWithInteger:source];
  v35[1] = v12;
  v34[2] = @"deviceHasSideButton";
  v13 = [NSNumber numberWithBool:SiriUIDeviceHasSideButton()];
  v35[2] = v13;
  v34[3] = @"countOfTotalEvents";
  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [historyCopy countOfTotalActivations]);
  v35[3] = v14;
  v34[4] = @"countOfUnintendedEvents";
  v30 = historyCopy;
  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [historyCopy countOfUnintendedActivations]);
  v35[4] = v15;
  v34[5] = @"countOfUnintendedEventsSinceLastIntendedEvent";
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [historyCopy countOfUnintendedActivationsSinceLastIntendedActivation]);
  v35[5] = v16;
  v29 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:6];

  notificationCenter = [self notificationCenter];
  v18 = [self notificationRequestWithUserInfo:v29];
  [v18 setDestinations:notification];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10001C4E4;
  v31[3] = &unk_100166E80;
  v32 = v18;
  v28 = v18;
  [notificationCenter addNotificationRequest:v28 withCompletionHandler:v31];
  v19 = [UNNotificationAction actionWithIdentifier:@"intendedButton" title:@"Yes options:I meant to activate Siri", 0];
  v20 = [UNNotificationAction actionWithIdentifier:@"intendedFileARadarButton" title:@"Yes + File a Radar with Feedback" options:4];
  v21 = [UNNotificationAction actionWithIdentifier:@"unintendedButton" title:@"No options:I didn't mean to activate Siri", 0];
  v22 = [UNNotificationAction actionWithIdentifier:@"unintendedFileARadarButton" title:@"No + File a Radar with Feedback" options:4];
  v23 = [UNNotificationAction actionWithIdentifier:@"turnOffNotification" title:@"Turn off this notification" options:0];
  v24 = [UNNotificationAction actionWithIdentifier:@"notNow" title:@"Dismiss" options:0];
  v33[0] = v19;
  v33[1] = v20;
  v33[2] = v21;
  v33[3] = v22;
  v33[4] = v23;
  v33[5] = v24;
  v25 = [NSArray arrayWithObjects:v33 count:6];
  v26 = [UNNotificationCategory categoryWithIdentifier:@"SiriUIDSurveyCategory" actions:v25 intentIdentifiers:&__NSArray0__struct options:0];
  v27 = [NSSet setWithObject:v26];
  [notificationCenter setNotificationCategories:v27];
}

@end