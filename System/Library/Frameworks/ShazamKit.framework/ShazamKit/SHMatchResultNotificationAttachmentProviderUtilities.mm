@interface SHMatchResultNotificationAttachmentProviderUtilities
+ (void)downloadImageURL:(id)l completionHandler:(id)handler;
@end

@implementation SHMatchResultNotificationAttachmentProviderUtilities

+ (void)downloadImageURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  v7 = +[NSURLSession sharedSession];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100012BC8;
  v10[3] = &unk_10007D330;
  v11 = handlerCopy;
  v8 = handlerCopy;
  v9 = [v7 downloadTaskWithURL:lCopy completionHandler:v10];

  [v9 resume];
}

@end