@interface TSKChangeNotificationInfo
- (TSKChangeNotificationInfo)initWithCountedObserver:(id)a3 changeEntry:(id)a4;
@end

@implementation TSKChangeNotificationInfo

- (TSKChangeNotificationInfo)initWithCountedObserver:(id)a3 changeEntry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSKChangeNotificationInfo;
  v9 = [(TSKChangeNotificationInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countedObserver, a3);
    objc_storeStrong(&v10->_entry, a4);
  }

  return v10;
}

@end