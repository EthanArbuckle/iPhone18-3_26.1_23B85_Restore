@interface MusicDarwinNotificationObserver
- (MusicDarwinNotificationObserver)initWithNotificationName:(id)name handler:(id)handler;
- (void)dealloc;
@end

@implementation MusicDarwinNotificationObserver

- (MusicDarwinNotificationObserver)initWithNotificationName:(id)name handler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = MusicDarwinNotificationObserver;
  v8 = [(MusicDarwinNotificationObserver *)&v15 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    v11 = objc_retainBlock(handlerCopy);
    v12 = *(v8 + 2);
    *(v8 + 2) = v11;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, __Music_darwinNotificationReceived, *(v8 + 1), v8, CFNotificationSuspensionBehaviorDrop);
  }

  return v8;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, self->_notificationName, 0);
  v4.receiver = self;
  v4.super_class = MusicDarwinNotificationObserver;
  [(MusicDarwinNotificationObserver *)&v4 dealloc];
}

@end