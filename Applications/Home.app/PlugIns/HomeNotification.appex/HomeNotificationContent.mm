@interface HomeNotificationContent
+ (id)contentWithSnapshot:(id)a3 loadingStream:(BOOL)a4 actionResultText:(id)a5 errorContent:(id)a6;
+ (id)contentWithSpinner;
+ (id)contentWithStream:(id)a3 microphoneMuted:(BOOL)a4 actionResultText:(id)a5;
- (HomeNotificationContent)initWithMode:(unint64_t)a3;
@end

@implementation HomeNotificationContent

- (HomeNotificationContent)initWithMode:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HomeNotificationContent;
  result = [(HomeNotificationContent *)&v5 init];
  if (result)
  {
    result->_mode = a3;
  }

  return result;
}

+ (id)contentWithSpinner
{
  v2 = [[HomeNotificationContent alloc] initWithMode:0];

  return v2;
}

+ (id)contentWithSnapshot:(id)a3 loadingStream:(BOOL)a4 actionResultText:(id)a5 errorContent:(id)a6
{
  v7 = a4;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [[HomeNotificationContent alloc] initWithMode:1];
  [(HomeNotificationContent *)v12 setCameraSource:v11];

  if (v7)
  {
    v13 = HomeNotificationBundle([(HomeNotificationContent *)v12 setStatusDisplayStyle:1]);
    v14 = [v13 localizedStringForKey:@"HONStreamStatusLoading" value:&stru_100019130 table:@"HONLocalizable"];
    [(HomeNotificationContent *)v12 setStatusText:v14];
  }

  else
  {
    [(HomeNotificationContent *)v12 setStatusDisplayStyle:0];
  }

  [(HomeNotificationContent *)v12 setActionResultText:v10];

  [(HomeNotificationContent *)v12 setErrorContent:v9];

  return v12;
}

+ (id)contentWithStream:(id)a3 microphoneMuted:(BOOL)a4 actionResultText:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = a3;
  v9 = [[HomeNotificationContent alloc] initWithMode:2];
  [(HomeNotificationContent *)v9 setCameraSource:v8];

  v11 = HomeNotificationBundle(v10);
  v12 = v11;
  if (v5)
  {
    v13 = @"HONMicrophoneStatusOff";
  }

  else
  {
    v13 = @"HONMicrophoneStatusOn";
  }

  if (v5)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = [v11 localizedStringForKey:v13 value:&stru_100019130 table:@"HONLocalizable"];
  [(HomeNotificationContent *)v9 setStatusText:v15];

  [(HomeNotificationContent *)v9 setStatusDisplayStyle:v14];
  v16 = HUImageNamed();
  [(HomeNotificationContent *)v9 setStatusAccessoryImage:v16];

  [(HomeNotificationContent *)v9 setActionResultText:v7];

  return v9;
}

@end