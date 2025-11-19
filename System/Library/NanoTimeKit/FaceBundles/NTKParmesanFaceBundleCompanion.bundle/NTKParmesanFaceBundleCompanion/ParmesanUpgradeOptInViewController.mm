@interface ParmesanUpgradeOptInViewController
- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController)init;
- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ParmesanUpgradeOptInViewController

- (id)titleString
{
  sub_23BF4BDF0(0, &qword_27E1E0930);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_23BFFA2C0();
  v4 = sub_23BFFA2C0();
  v5 = [ObjCClassFromMetadata localizedStringForKey:v3 comment:v4];

  sub_23BFFA300();
  v6 = sub_23BFFA2C0();

  return v6;
}

- (id)detailString
{
  sub_23BF4BDF0(0, &qword_27E1E0930);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_23BFFA2C0();
  v4 = sub_23BFFA2C0();
  v5 = [ObjCClassFromMetadata localizedStringForKey:v3 comment:v4];

  sub_23BFFA300();
  v6 = sub_23BFFA2C0();

  return v6;
}

- (id)suggestedButtonTitle
{
  sub_23BF4BDF0(0, &qword_27E1E0930);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_23BFFA2C0();
  v4 = sub_23BFFA2C0();
  v5 = [ObjCClassFromMetadata localizedStringForKey:v3 comment:v4];

  sub_23BFFA300();
  v6 = sub_23BFFA2C0();

  return v6;
}

- (void)loadView
{
  v2 = self;
  sub_23BFECAD0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_23BFECE0C(a3);
}

- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end