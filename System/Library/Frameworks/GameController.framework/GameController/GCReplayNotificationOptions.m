@interface GCReplayNotificationOptions
- (id)initRecordingStart;
@end

@implementation GCReplayNotificationOptions

- (id)initRecordingStart
{
  v6.receiver = self;
  v6.super_class = GCReplayNotificationOptions;
  v2 = [(GCReplayNotificationOptions *)&v6 init];
  if (v2)
  {
    v3 = _GCFConvertStringToLocalizedString();
    [(GCNotificationOptions *)v2 setTitle:v3];

    v4 = _GCFConvertStringToLocalizedString();
    [(GCNotificationOptions *)v2 setBody:v4];

    [(GCNotificationOptions *)v2 setCategoryID:@"videoStartRecordID"];
    [(GCNotificationOptions *)v2 setThreadID:@"videoStartRecordID"];
  }

  return v2;
}

@end