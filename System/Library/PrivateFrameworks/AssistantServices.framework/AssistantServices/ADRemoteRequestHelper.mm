@interface ADRemoteRequestHelper
+ (id)requestWithActivityInfo:(id)info;
+ (void)getInfoForHandoffPayload:(id)payload userInfo:(id *)info wepageURL:(id *)l;
- (ADRemoteRequestHelper)initWithQueue:(id)queue;
- (id)userNotificationRequestForRemoteRequest;
- (void)setRemoteRequestInfo:(id)info;
@end

@implementation ADRemoteRequestHelper

- (id)userNotificationRequestForRemoteRequest
{
  if (self->_remoteRequestInfo)
  {
    v3 = objc_alloc_init(UNMutableNotificationContent);
    [v3 setShouldBackgroundDefaultAction:1];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    if ([(AFRequestInfo *)self->_remoteRequestInfo isATVHandoff])
    {
      v5 = @"ASSISTANT_SERVICES_ATV_REQUEST_HANDOFF_NOTIFICATION_TITLE";
    }

    else
    {
      v5 = @"ASSISTANT_SERVICES_HOMEPOD_REQUEST_HANDOFF_NOTIFICATION_TITLE";
    }

    if (sub_10021619C())
    {
      localizations = [v4 localizations];
      v7 = +[NSUserDefaults standardUserDefaults];
      v8 = [v7 objectForKey:@"AppleLanguages"];
      v9 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v8];
      firstObject = [v9 firstObject];

      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:v5 value:0 table:0 localization:firstObject];
    }

    else
    {
      v12 = [v4 localizedStringForKey:v5 value:0 table:0];
    }

    handoffOriginDeviceName = [(AFRequestInfo *)self->_remoteRequestInfo handoffOriginDeviceName];
    v15 = [NSString stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, handoffOriginDeviceName];

    [v3 setTitle:v15];
    handoffNotification = [(AFRequestInfo *)self->_remoteRequestInfo handoffNotification];
    [v3 setBody:handoffNotification];

    v13 = [UNNotificationRequest requestWithIdentifier:self->_handoffNotificationID content:v3 trigger:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setRemoteRequestInfo:(id)info
{
  infoCopy = info;
  objc_storeStrong(&self->_remoteRequestInfo, info);
  if (self->_handoffNotificationID)
  {
    v5 = +[ADUserNotificationServiceProvider personalDomainNotificationProvider];
    [v5 withdrawNotificationRequestWithIdentifier:self->_handoffNotificationID];
  }

  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];
  handoffNotificationID = self->_handoffNotificationID;
  self->_handoffNotificationID = uUIDString;
}

- (ADRemoteRequestHelper)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = ADRemoteRequestHelper;
  v6 = [(ADRemoteRequestHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

+ (void)getInfoForHandoffPayload:(id)payload userInfo:(id *)info wepageURL:(id *)l
{
  handoffPayload = [payload handoffPayload];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sessionHandoffData = [handoffPayload sessionHandoffData];
    v9 = [sessionHandoffData copy];

    if (v9)
    {
      v15 = @"Data";
      v16 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    if (!info)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  link = [handoffPayload link];
  v12 = [link copy];

  if (info)
  {
LABEL_11:
    v13 = v10;
    *info = v10;
  }

LABEL_12:
  if (l)
  {
    v14 = v12;
    *l = v12;
  }
}

+ (id)requestWithActivityInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(SAStartHandoffRequest);
  v5 = [infoCopy objectForKey:@"Data"];

  [v4 setHandoffData:v5];

  return v4;
}

@end