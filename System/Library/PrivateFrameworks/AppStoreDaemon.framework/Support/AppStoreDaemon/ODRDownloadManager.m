@interface ODRDownloadManager
- (ODRDownloadManager)init;
@end

@implementation ODRDownloadManager

- (ODRDownloadManager)init
{
  v10.receiver = self;
  v10.super_class = ODRDownloadManager;
  v2 = [(ODRDownloadManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.ODRDownloadManager.callout", v3);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstored.ODRDownloadManager.dispatch", v6);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v7;
  }

  return v2;
}

@end