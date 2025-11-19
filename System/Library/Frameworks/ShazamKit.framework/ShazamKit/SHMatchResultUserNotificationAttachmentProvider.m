@interface SHMatchResultUserNotificationAttachmentProvider
+ (void)notificationAttachmentForMediaItem:(id)a3 completionHandler:(id)a4;
@end

@implementation SHMatchResultUserNotificationAttachmentProvider

+ (void)notificationAttachmentForMediaItem:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 artworkURL];

  if (v7)
  {
    v8 = [v5 artworkURL];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004AF30;
    v9[3] = &unk_10007E410;
    v11 = v6;
    v10 = v5;
    [SHMatchResultNotificationAttachmentProviderUtilities downloadImageURL:v8 completionHandler:v9];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

@end