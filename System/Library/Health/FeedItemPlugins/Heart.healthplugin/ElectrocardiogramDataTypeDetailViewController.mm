@interface ElectrocardiogramDataTypeDetailViewController
- (BOOL)isPinned;
- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithCoder:(id)a3;
- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5;
- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithStyle:(int64_t)a3;
- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithUsingInsetStyling:(BOOL)a3;
- (id)createDataProviderWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5;
- (void)didSelectRegulatoryRow;
- (void)setPinned:(BOOL)a3;
- (void)showAddDataVC;
- (void)viewDidLoad;
@end

@implementation ElectrocardiogramDataTypeDetailViewController

- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_consumedHealthExperienceStore;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_objectType;
  *(&self->super.super.super.super.super.super.isa + v5) = [objc_opt_self() electrocardiogramType];
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_cancellables) = MEMORY[0x29EDCA1A0];
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

- (id)createDataProviderWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = sub_29D7070AC(v8, v9, a5);

  return v11;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_29D707284();
}

- (BOOL)isPinned
{
  v2 = self;
  v3 = sub_29D70742C();

  return v3 & 1;
}

- (void)setPinned:(BOOL)a3
{
  v4 = self;
  sub_29D707630(a3);
}

- (void)showAddDataVC
{
  v2 = self;
  sub_29D7077E4();
}

- (void)didSelectRegulatoryRow
{
  v2 = self;
  sub_29D707D60();
}

- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithUsingInsetStyling:(BOOL)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end