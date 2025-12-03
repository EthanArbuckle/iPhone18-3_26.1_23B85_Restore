@interface IMBJITAppKitViewController
- (id)newErrorViewController:(id)controller;
- (void)applicationControllerError:(id)error;
- (void)composeResponseWithNotification:(id)notification;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation IMBJITAppKitViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000679C0(disappear);
}

- (void)composeResponseWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_100069170(notificationCopy);
}

- (id)newErrorViewController:(id)controller
{
  type metadata accessor for IMBJITAppKitErrorViewController();
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v6 = [v4 init];
  *&v6[OBJC_IVAR____TtC8Business31IMBJITAppKitErrorViewController_delegate + 8] = &off_1000DD1E0;
  swift_unknownObjectWeakAssign();

  return v6;
}

- (void)applicationControllerError:(id)error
{
  selfCopy = self;
  sub_100069ED8();
}

@end