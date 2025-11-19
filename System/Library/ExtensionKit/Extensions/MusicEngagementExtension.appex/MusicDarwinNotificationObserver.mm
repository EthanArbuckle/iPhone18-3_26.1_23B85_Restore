@interface MusicDarwinNotificationObserver
- (MusicDarwinNotificationObserver)initWithNotificationName:(id)a3 handler:(id)a4;
- (void)dealloc;
@end

@implementation MusicDarwinNotificationObserver

- (MusicDarwinNotificationObserver)initWithNotificationName:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MusicDarwinNotificationObserver;
  v8 = [(MusicDarwinNotificationObserver *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = *(v8 + 1);
    *(v8 + 1) = v9;

    v11 = objc_retainBlock(v7);
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