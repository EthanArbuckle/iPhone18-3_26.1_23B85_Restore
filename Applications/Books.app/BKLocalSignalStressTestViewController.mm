@interface BKLocalSignalStressTestViewController
- (BKLocalSignalStressTestViewController)init;
- (BKLocalSignalStressTestViewController)initWithCoder:(id)coder;
- (BKLocalSignalStressTestViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BKLocalSignalStressTestViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)enableRandomAssetIDsCell:(id)cell;
- (void)fetchBookHistories:(id)histories;
- (void)generateFakeLocalSignals:(id)signals;
- (void)viewDidLoad;
@end

@implementation BKLocalSignalStressTestViewController

- (BKLocalSignalStressTestViewController)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKLocalSignalStressTestViewController_cellDatas) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKLocalSignalStressTestViewController_operationInProgress) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocalSignalStressTestViewController();
  return [(BKLocalSignalStressTestViewController *)&v3 initWithStyle:2];
}

- (BKLocalSignalStressTestViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKLocalSignalStressTestViewController_cellDatas) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKLocalSignalStressTestViewController_operationInProgress) = 0;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10052BEAC();
}

- (void)generateFakeLocalSignals:(id)signals
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  if (signals)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    selfCopy2 = self;
  }

  v10 = sub_1007A2744();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1007A26F4();
  selfCopy3 = self;
  v12 = sub_1007A26E4();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = selfCopy3;
  sub_1003457A0(0, 0, v7, &unk_10082EE88, v13);

  sub_100007840(v14, &unk_100AD5B40);
}

- (void)fetchBookHistories:(id)histories
{
  if (histories)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100532B28();

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)enableRandomAssetIDsCell:(id)cell
{
  if (cell)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1005315C4();

  sub_100007840(v6, &unk_100AD5B40);
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = sub_1007A2214();

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1005318C8(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BKLocalSignalStressTestViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKLocalSignalStressTestViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end