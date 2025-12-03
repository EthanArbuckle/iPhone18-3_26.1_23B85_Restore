@interface HomeNotificationContent
+ (id)contentWithSnapshot:(id)snapshot loadingStream:(BOOL)stream actionResultText:(id)text errorContent:(id)content;
+ (id)contentWithSpinner;
+ (id)contentWithStream:(id)stream microphoneMuted:(BOOL)muted actionResultText:(id)text;
- (HomeNotificationContent)initWithMode:(unint64_t)mode;
@end

@implementation HomeNotificationContent

- (HomeNotificationContent)initWithMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = HomeNotificationContent;
  result = [(HomeNotificationContent *)&v5 init];
  if (result)
  {
    result->_mode = mode;
  }

  return result;
}

+ (id)contentWithSpinner
{
  v2 = [[HomeNotificationContent alloc] initWithMode:0];

  return v2;
}

+ (id)contentWithSnapshot:(id)snapshot loadingStream:(BOOL)stream actionResultText:(id)text errorContent:(id)content
{
  streamCopy = stream;
  contentCopy = content;
  textCopy = text;
  snapshotCopy = snapshot;
  v12 = [[HomeNotificationContent alloc] initWithMode:1];
  [(HomeNotificationContent *)v12 setCameraSource:snapshotCopy];

  if (streamCopy)
  {
    v13 = HomeNotificationBundle([(HomeNotificationContent *)v12 setStatusDisplayStyle:1]);
    v14 = [v13 localizedStringForKey:@"HONStreamStatusLoading" value:&stru_100019130 table:@"HONLocalizable"];
    [(HomeNotificationContent *)v12 setStatusText:v14];
  }

  else
  {
    [(HomeNotificationContent *)v12 setStatusDisplayStyle:0];
  }

  [(HomeNotificationContent *)v12 setActionResultText:textCopy];

  [(HomeNotificationContent *)v12 setErrorContent:contentCopy];

  return v12;
}

+ (id)contentWithStream:(id)stream microphoneMuted:(BOOL)muted actionResultText:(id)text
{
  mutedCopy = muted;
  textCopy = text;
  streamCopy = stream;
  v9 = [[HomeNotificationContent alloc] initWithMode:2];
  [(HomeNotificationContent *)v9 setCameraSource:streamCopy];

  v11 = HomeNotificationBundle(v10);
  v12 = v11;
  if (mutedCopy)
  {
    v13 = @"HONMicrophoneStatusOff";
  }

  else
  {
    v13 = @"HONMicrophoneStatusOn";
  }

  if (mutedCopy)
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

  [(HomeNotificationContent *)v9 setActionResultText:textCopy];

  return v9;
}

@end