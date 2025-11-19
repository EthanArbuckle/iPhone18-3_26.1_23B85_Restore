@interface RAPWebBundleDownloadManager
+ (id)sharedInstance;
- (RAPWebBundleDownloadManager)initWithConfiguration:(id)a3;
@end

@implementation RAPWebBundleDownloadManager

+ (id)sharedInstance
{
  if (qword_10195F290 != -1)
  {
    dispatch_once(&qword_10195F290, &stru_1016556A8);
  }

  v3 = qword_10195F298;

  return v3;
}

- (RAPWebBundleDownloadManager)initWithConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = RAPWebBundleDownloadManager;
  v3 = [(WebBundleDownloadManager *)&v6 initWithConfiguration:a3];
  v4 = v3;
  if (v3)
  {
    [(WebBundleDownloadManager *)v3 downloadWebBundle];
  }

  return v4;
}

@end