@interface ElectrocardiogramDataTypeDetailViewController
- (BOOL)isPinned;
- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithCoder:(id)coder;
- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode;
- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithStyle:(int64_t)style;
- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithUsingInsetStyling:(BOOL)styling;
- (id)createDataProviderWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode;
- (void)didSelectRegulatoryRow;
- (void)setPinned:(BOOL)pinned;
- (void)showAddDataVC;
- (void)viewDidLoad;
@end

@implementation ElectrocardiogramDataTypeDetailViewController

- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithCoder:(id)coder
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

- (id)createDataProviderWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode
{
  typeCopy = type;
  profileCopy = profile;
  selfCopy = self;
  v11 = sub_29D7070AC(typeCopy, profileCopy, mode);

  return v11;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29D707284();
}

- (BOOL)isPinned
{
  selfCopy = self;
  v3 = sub_29D70742C();

  return v3 & 1;
}

- (void)setPinned:(BOOL)pinned
{
  selfCopy = self;
  sub_29D707630(pinned);
}

- (void)showAddDataVC
{
  selfCopy = self;
  sub_29D7077E4();
}

- (void)didSelectRegulatoryRow
{
  selfCopy = self;
  sub_29D707D60();
}

- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithUsingInsetStyling:(BOOL)styling
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart45ElectrocardiogramDataTypeDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end