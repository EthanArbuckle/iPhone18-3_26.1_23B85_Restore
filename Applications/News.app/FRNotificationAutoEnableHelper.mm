@interface FRNotificationAutoEnableHelper
- (FRNotificationAutoEnableHelper)initWithFeldsparContext:(id)context;
- (void)_fetchPreSubscribedChannelsWithCompletion:(id)completion;
- (void)autoEnableNotificationsForPreSubscribedChannels;
@end

@implementation FRNotificationAutoEnableHelper

- (FRNotificationAutoEnableHelper)initWithFeldsparContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = FRNotificationAutoEnableHelper;
  v6 = [(FRNotificationAutoEnableHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_feldsparContext, context);
  }

  return v7;
}

- (void)autoEnableNotificationsForPreSubscribedChannels
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100020758;
  v2[3] = &unk_1000C25E0;
  v2[4] = self;
  [(FRNotificationAutoEnableHelper *)self _fetchPreSubscribedChannelsWithCompletion:v2];
}

- (void)_fetchPreSubscribedChannelsWithCompletion:(id)completion
{
  completionCopy = completion;
  feldsparContext = [(FRNotificationAutoEnableHelper *)self feldsparContext];
  cloudContext = [feldsparContext cloudContext];
  networkReachability = [cloudContext networkReachability];

  if ([networkReachability isCloudKitReachable])
  {
    feldsparContext2 = [(FRNotificationAutoEnableHelper *)self feldsparContext];
    cloudContext2 = [feldsparContext2 cloudContext];
    appConfigurationManager = [cloudContext2 appConfigurationManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100020A18;
    v12[3] = &unk_1000C2630;
    v12[4] = self;
    v13 = completionCopy;
    [appConfigurationManager fetchAppConfigurationIfNeededWithCompletion:v12];
  }

  else
  {
    v11 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      sub_10006C018(v11);
    }
  }
}

@end