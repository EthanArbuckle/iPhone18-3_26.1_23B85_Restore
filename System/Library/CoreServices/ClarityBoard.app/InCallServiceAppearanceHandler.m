@interface InCallServiceAppearanceHandler
- (void)dealloc;
@end

@implementation InCallServiceAppearanceHandler

- (void)dealloc
{
  v2 = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v3, v2, *(&v2->super.isa + OBJC_IVAR____TtC12ClarityBoardP33_05D61AEEC536D81D4E64D6EE76DB593F30InCallServiceAppearanceHandler_notificationName), 0);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for InCallServiceAppearanceHandler();
  [(InCallServiceAppearanceHandler *)&v4 dealloc];
}

@end