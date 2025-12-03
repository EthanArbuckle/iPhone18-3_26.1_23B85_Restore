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
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMItemDetailContentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100386534();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100386764(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMItemDetailContentViewController(0);
  v4 = v5.receiver;
  [(FMItemDetailContentViewController *)&v5 viewDidAppear:appearCopy];
  sub_1003987F8();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100386934(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1003877DC();
}

- (void)scrollViewDidScroll:(id)scroll
{
  v5 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  scrollCopy = scroll;
  selfCopy = self;
  sub_10027C124(scrollCopy);
  v10 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v11 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v10 + v11, v7, type metadata accessor for FMItemDetailViewModel);
  sub_10038AFA0(v7);

  sub_1003ABABC(v7, type metadata accessor for FMItemDetailViewModel);
}

- (void)handleLowBattery
{
  selfCopy = self;
  sub_1003944B0();
}

- (void)handleDirections
{
  selfCopy = self;
  sub_1003954E0();
}

- (void)handleSerialNumberTap
{
  selfCopy = self;
  sub_100395F8C();
}

- (void)handleFind
{
  selfCopy = self;
  sub_1003961C0();
}

- (void)handlePlaySound
{
  selfCopy = self;
  sub_10039FAAC();
}

- (void)handleNotifyMe
{
  selfCopy = self;
  sub_1003A032C();
}

- (void)handleRemoveItem
{
  selfCopy = self;
  sub_1003A05F8();
}

- (void)handleSeparation
{
  selfCopy = self;
  sub_1003A0668();
}

- (void)handleRename
{
  selfCopy = self;
  sub_1003A1DFC();
}

- (void)handleLostMode
{
  selfCopy = self;
  sub_1003A4004();
}

- (void)handleOldShareAttentionTap
{
  selfCopy = self;
  sub_1003AE090();
}

- (void)handleNotificationsOffAttentionTap
{
  selfCopy = self;
  sub_1003AE090();
}

- (void)handleInnaccurateLocationAttentionTap
{
  selfCopy = self;
  sub_1003A4498();
}

- (void)handleLocationServicesOffTap
{
  selfCopy = self;
  sub_1003AE090();
}

@end