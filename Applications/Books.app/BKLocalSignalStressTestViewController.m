@interface BKLocalSignalStressTestViewController
- (BKLocalSignalStressTestViewController)init;
- (BKLocalSignalStressTestViewController)initWithCoder:(id)a3;
- (BKLocalSignalStressTestViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BKLocalSignalStressTestViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)enableRandomAssetIDsCell:(id)a3;
- (void)fetchBookHistories:(id)a3;
- (void)generateFakeLocalSignals:(id)a3;
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

- (BKLocalSignalStressTestViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKLocalSignalStressTestViewController_cellDatas) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKLocalSignalStressTestViewController_operationInProgress) = 0;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10052BEAC();
}

- (void)generateFakeLocalSignals:(id)a3
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v9 = self;
  }

  v10 = sub_1007A2744();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1007A26F4();
  v11 = self;
  v12 = sub_1007A26E4();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_1003457A0(0, 0, v7, &unk_10082EE88, v13);

  sub_100007840(v14, &unk_100AD5B40);
}

- (void)fetchBookHistories:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100532B28();

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)enableRandomAssetIDsCell:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1005315C4();

  sub_100007840(v6, &unk_100AD5B40);
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = sub_1007A2214();

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  v10 = a3;
  v11 = self;
  v12 = sub_1005318C8(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (BKLocalSignalStressTestViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKLocalSignalStressTestViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end