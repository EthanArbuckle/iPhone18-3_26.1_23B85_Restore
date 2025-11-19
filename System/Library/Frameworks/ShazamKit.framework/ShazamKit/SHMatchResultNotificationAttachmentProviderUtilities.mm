@interface SHMatchResultNotificationAttachmentProviderUtilities
+ (void)downloadImageURL:(id)a3 completionHandler:(id)a4;
@end

@implementation SHMatchResultNotificationAttachmentProviderUtilities

+ (void)downloadImageURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSURLSession sharedSession];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100012BC8;
  v10[3] = &unk_10007D330;
  v11 = v5;
  v8 = v5;
  v9 = [v7 downloadTaskWithURL:v6 completionHandler:v10];

  [v9 resume];
}

@end