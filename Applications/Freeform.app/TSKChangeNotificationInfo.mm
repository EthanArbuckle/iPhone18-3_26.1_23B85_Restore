@interface TSKChangeNotificationInfo
- (TSKChangeNotificationInfo)initWithCountedObserver:(id)observer changeEntry:(id)entry;
@end

@implementation TSKChangeNotificationInfo

- (TSKChangeNotificationInfo)initWithCountedObserver:(id)observer changeEntry:(id)entry
{
  observerCopy = observer;
  entryCopy = entry;
  v12.receiver = self;
  v12.super_class = TSKChangeNotificationInfo;
  v9 = [(TSKChangeNotificationInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countedObserver, observer);
    objc_storeStrong(&v10->_entry, entry);
  }

  return v10;
}

@end