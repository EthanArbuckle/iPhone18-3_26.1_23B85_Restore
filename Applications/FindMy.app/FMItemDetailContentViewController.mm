@interface FMItemDetailContentViewController
- (void)handleDirections;
- (void)handleFind;
- (void)handleInnaccurateLocationAttentionTap;
- (void)handleLocationServicesOffTap;
- (void)handleLostMode;
- (void)handleLowBattery;
- (void)handleNotificationsOffAttentionTap;
- (void)handleNotifyMe;
- (void)handleOldShareAttentionTap;
- (void)handlePlaySound;
- (void)handleRemoveItem;
- (void)handleRename;
- (void)handleSeparation;
- (void)handleSerialNumberTap;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMItemDetailContentViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100386534();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100386764(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMItemDetailContentViewController(0);
  v4 = v5.receiver;
  [(FMItemDetailContentViewController *)&v5 viewDidAppear:v3];
  sub_1003987F8();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100386934(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1003877DC();
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  v9 = self;
  sub_10027C124(v8);
  v10 = *(&v9->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v11 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v10 + v11, v7, type metadata accessor for FMItemDetailViewModel);
  sub_10038AFA0(v7);

  sub_1003ABABC(v7, type metadata accessor for FMItemDetailViewModel);
}

- (void)handleLowBattery
{
  v2 = self;
  sub_1003944B0();
}

- (void)handleDirections
{
  v2 = self;
  sub_1003954E0();
}

- (void)handleSerialNumberTap
{
  v2 = self;
  sub_100395F8C();
}

- (void)handleFind
{
  v2 = self;
  sub_1003961C0();
}

- (void)handlePlaySound
{
  v2 = self;
  sub_10039FAAC();
}

- (void)handleNotifyMe
{
  v2 = self;
  sub_1003A032C();
}

- (void)handleRemoveItem
{
  v2 = self;
  sub_1003A05F8();
}

- (void)handleSeparation
{
  v2 = self;
  sub_1003A0668();
}

- (void)handleRename
{
  v2 = self;
  sub_1003A1DFC();
}

- (void)handleLostMode
{
  v2 = self;
  sub_1003A4004();
}

- (void)handleOldShareAttentionTap
{
  v2 = self;
  sub_1003AE090();
}

- (void)handleNotificationsOffAttentionTap
{
  v2 = self;
  sub_1003AE090();
}

- (void)handleInnaccurateLocationAttentionTap
{
  v2 = self;
  sub_1003A4498();
}

- (void)handleLocationServicesOffTap
{
  v2 = self;
  sub_1003AE090();
}

@end