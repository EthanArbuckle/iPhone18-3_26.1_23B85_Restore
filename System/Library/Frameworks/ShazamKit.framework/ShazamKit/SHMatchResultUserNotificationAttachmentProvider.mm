@interface SHMatchResultUserNotificationAttachmentProvider
+ (void)notificationAttachmentForMediaItem:(id)item completionHandler:(id)handler;
@end

@implementation SHMatchResultUserNotificationAttachmentProvider

+ (void)notificationAttachmentForMediaItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  artworkURL = [itemCopy artworkURL];

  if (artworkURL)
  {
    artworkURL2 = [itemCopy artworkURL];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004AF30;
    v9[3] = &unk_10007E410;
    v11 = handlerCopy;
    v10 = itemCopy;
    [SHMatchResultNotificationAttachmentProviderUtilities downloadImageURL:artworkURL2 completionHandler:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

@end