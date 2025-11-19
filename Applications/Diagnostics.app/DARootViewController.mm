@interface DARootViewController
- (DARootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (uint64_t)remoteViewControllerDidDisappear;
- (void)displayAlertWithHeader:(id)a3 message:(id)a4 buttonStrings:(id)a5 completion:(id)a6;
- (void)displayInstructions:(id)a3 style:(int)a4 imageLocators:(id)a5 title:(id)a6 subtitle:(id)a7 iconLocator:(id)a8 options:(id)a9 navigationBarActions:(id)a10 completion:(id)aBlock;
- (void)enableVolumeHUD:(BOOL)a3;
- (void)remoteViewControllerDidSetHostBundleIdentifier:(id)a3;
- (void)remoteViewControllerDidSetSessionToken:(id)a3;
- (void)remoteViewControllerDidSetStartingFlow:(id)a3;
- (void)setScreenToBrightness:(float)a3 animate:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation DARootViewController

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for RootViewController();
  v4 = v5.receiver;
  [(DARootViewController *)&v5 viewIsAppearing:v3];
  if (sub_1000660CC())
  {
    sub_100060EBC();
  }
}

- (void)enableVolumeHUD:(BOOL)a3
{
  v4 = self;
  sub_10006195C(a3);
}

- (void)setScreenToBrightness:(float)a3 animate:(BOOL)a4
{
  v6 = self;
  sub_100061B10(a4, a3);
}

- (void)displayAlertWithHeader:(id)a3 message:(id)a4 buttonStrings:(id)a5 completion:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  v16 = self;
  sub_100066F04(v8, v10, v11, v13, v14, sub_100068D7C, v15);
}

- (void)displayInstructions:(id)a3 style:(int)a4 imageLocators:(id)a5 title:(id)a6 subtitle:(id)a7 iconLocator:(id)a8 options:(id)a9 navigationBarActions:(id)a10 completion:(id)aBlock
{
  v24 = _Block_copy(aBlock);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (a7)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a7 = v18;
    if (!a8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = 0;
  if (a8)
  {
LABEL_3:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  sub_10003C49C(&unk_1001FDF80);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v24;
  v22 = self;
  sub_100067194(v13, a4, v14, v23, v16, v17, a7, v19, v20, sub_100068A24, v21);
}

- (DARootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000633E8(v5, v7, a4);
}

- (void)remoteViewControllerDidSetSessionToken:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_100068570(v4, v6);
}

- (void)remoteViewControllerDidSetStartingFlow:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100068758(v4);
}

- (void)remoteViewControllerDidSetHostBundleIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR___DARootViewController_hostAppBundleIdentifier);
  *v5 = v4;
  v5[1] = v6;
}

- (uint64_t)remoteViewControllerDidDisappear
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v3 = *(v9 - 8);
  __chkstk_darwin(v9);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v6 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100063D58;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C0BD8;
  v7 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100068260(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10005C71C(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v10 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v9);
}

@end