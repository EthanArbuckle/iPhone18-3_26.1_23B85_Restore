@interface ParmesanUpgradeOptInViewController
- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController)init;
- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
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
  selfCopy = self;
  sub_23BFECAD0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23BFECE0C(appear);
}

- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC30NTKParmesanFaceBundleCompanion34ParmesanUpgradeOptInViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end