@interface ATXUnreadMessagesDataSource
- (ATXUnreadMessagesDataSource)initWithDevice:(id)device;
@end

@implementation ATXUnreadMessagesDataSource

- (ATXUnreadMessagesDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = ATXUnreadMessagesDataSource;
  v6 = [(ATXUnreadMessagesDataSource *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("ATXUnreadMessagesDataSource.resultsQueue", v8);
    resultsQueue = v7->_resultsQueue;
    v7->_resultsQueue = v9;

    v11 = v7;
  }

  return v7;
}

@end