@interface IMBJITAppKitViewController
- (id)newErrorViewController:(id)a3;
- (void)applicationControllerError:(id)a3;
- (void)composeResponseWithNotification:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation IMBJITAppKitViewController

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000679C0(a3);
}

- (void)composeResponseWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100069170(v4);
}

- (id)newErrorViewController:(id)a3
{
  type metadata accessor for IMBJITAppKitErrorViewController();
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = self;
  v6 = [v4 init];
  *&v6[OBJC_IVAR____TtC8Business31IMBJITAppKitErrorViewController_delegate + 8] = &off_1000DD1E0;
  swift_unknownObjectWeakAssign();

  return v6;
}

- (void)applicationControllerError:(id)a3
{
  v3 = self;
  sub_100069ED8();
}

@end