@interface AtrialFibrillationDataTypeDetailViewController
- (BOOL)isPinned;
- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5;
- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithStyle:(int64_t)a3;
- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithUsingInsetStyling:(BOOL)a3;
- (id)featureStatusCells;
- (id)featureStatusFooterView;
- (id)makeInternalSettingsControllerWithHealthStore:(id)a3;
- (void)didSelectRegulatoryRow;
- (void)featureStatusCellTappedAtIndexPath:(id)a3;
- (void)recomputeTotalSampleCount;
- (void)setPinned:(BOOL)a3;
- (void)showAddDataVC;
- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5;
- (void)viewDidLoad;
@end

@implementation AtrialFibrillationDataTypeDetailViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29D77F640();
}

- (BOOL)isPinned
{
  v2 = self;
  v3 = sub_29D77FA40();

  return v3 & 1;
}

- (void)setPinned:(BOOL)a3
{
  v4 = self;
  sub_29D77FC44(a3);
}

- (void)recomputeTotalSampleCount
{
  v2 = self;
  sub_29D77FDF8();
}

- (void)showAddDataVC
{
  v2 = self;
  sub_29D780008();
}

- (void)didSelectRegulatoryRow
{
  v2 = self;
  sub_29D7804E4();
}

- (id)featureStatusCells
{
  v2 = self;
  sub_29D78112C();

  sub_29D69567C(0, &qword_2A17B4380, 0x29EDC7D10);
  v3 = sub_29D939F18();

  return v3;
}

- (id)featureStatusFooterView
{
  v2 = self;
  v3 = sub_29D7813A8();

  return v3;
}

- (void)featureStatusCellTappedAtIndexPath:(id)a3
{
  v4 = sub_29D933DB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933D58();
  v10 = self;
  sub_29D781D8C();

  (*(v5 + 8))(v9, v4);
}

- (id)makeInternalSettingsControllerWithHealthStore:(id)a3
{
  v3 = [objc_allocWithZone(type metadata accessor for IRNInternalSettingsViewController()) initWithHealthStore_];

  return v3;
}

- (void)snapshotDidChangeWithDataSourceID:(id)a3 snapshot:(id)a4 animated:(BOOL)a5
{
  sub_29D75DD24();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D939D68();
  v15 = v14;
  sub_29D937BA8();
  v16 = self;
  sub_29D7831E0(v13, v15);

  (*(v8 + 8))(v12, v7);
}

- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithUsingInsetStyling:(BOOL)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart46AtrialFibrillationDataTypeDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end