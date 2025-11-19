@interface FMDeviceDetailContentViewController
- (uint64_t)showPairingIncompleteLearnMore;
- (void)handleCancelErase;
- (void)handleDirections;
- (void)handleErase;
- (void)handleFind;
- (void)handleInnaccurateLocationAttentionTap;
- (void)handleLock;
- (void)handleLostMode;
- (void)handleMuteLeft;
- (void)handleMuteRight;
- (void)handleNotificationsOffAttentionTap;
- (void)handlePlaySound;
- (void)handleSeparation;
- (void)handleStopSound;
- (void)removeOrRepairDevice;
- (void)scrollViewDidScroll:(id)a3;
- (void)showMismatchLearnMore;
- (void)showSoundPending;
- (void)showSoundPendingLearnMore;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMDeviceDetailContentViewController

- (void)viewDidLoad
{
  v2 = self;
  v3 = [(FMDeviceDetailContentViewController *)v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setFrame:{0.0, 0.0, 100.0, 100.0}];

    v5.receiver = v2;
    v5.super_class = type metadata accessor for FMDeviceDetailContentViewController(0);
    [(FMBaseContentViewController *)&v5 viewDidLoad];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1001DBC88(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMDeviceDetailContentViewController(0);
  v4 = v5.receiver;
  [(FMDeviceDetailContentViewController *)&v5 viewDidAppear:v3];
  sub_1001E655C();
  if (*&v4[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_lostModeViewModel])
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    DeviceLostModeManagementViewModel.lostModePresentationBlock.setter();
  }

  else
  {
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1001DC9A0(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1001DD91C();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001E644C(v4);
}

- (void)handlePlaySound
{
  v2 = self;
  sub_1001ED070();
}

- (void)handleStopSound
{
  v2 = self;
  sub_1001EFE58();
}

- (void)handleMuteLeft
{
  v2 = self;
  sub_1001F194C();
}

- (void)handleMuteRight
{
  v2 = self;
  sub_1001F1E00();
}

- (void)showSoundPending
{
  v2 = self;
  sub_1001F973C();
}

- (void)handleDirections
{
  v2 = self;
  sub_1001FB570();
}

- (void)handleFind
{
  v2 = self;
  sub_1001FBB04();
}

- (void)handleLostMode
{
  v2 = self;
  sub_1002021D0();
}

- (void)handleLock
{
  v2 = self;
  sub_100202644();
}

- (void)showSoundPendingLearnMore
{
  v2 = self;
  sub_100202A78();
}

- (void)showMismatchLearnMore
{
  v2 = self;
  sub_100203020();
}

- (void)handleErase
{
  v2 = self;
  sub_1002037D8();
}

- (void)handleCancelErase
{
  v2 = self;
  sub_100203B10();
}

- (void)handleInnaccurateLocationAttentionTap
{
  v2 = self;
  sub_100203F0C();
}

- (void)handleSeparation
{
  v2 = self;
  sub_10020A5C4();
}

- (void)removeOrRepairDevice
{
  v2 = self;
  sub_10020BCFC();
}

- (void)handleNotificationsOffAttentionTap
{
  v2 = self;
  sub_10021E228();
}

- (uint64_t)showPairingIncompleteLearnMore
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMDeviceDetailContentViewController: Showing pairing incomplete learn more", v10, 2u);
  }

  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v12 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    sub_10015391C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_10021E650(&qword_1006AF360, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v12 openURL:v15 options:isa completionHandler:0];

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

@end