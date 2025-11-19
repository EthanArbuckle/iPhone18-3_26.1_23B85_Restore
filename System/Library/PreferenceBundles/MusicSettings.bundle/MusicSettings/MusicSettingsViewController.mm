@interface MusicSettingsViewController
- (_TtC13MusicSettings27MusicSettingsViewController)init;
- (_TtC13MusicSettings27MusicSettingsViewController)initWithCoder:(id)a3;
- (_TtC13MusicSettings27MusicSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setParentController:(id)a3;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)setRootController:(id)a3;
- (void)setSpecifier:(id)a3;
@end

@implementation MusicSettingsViewController

- (void)setParentController:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__parentController);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__parentController) = a3;
  v3 = a3;
}

- (void)setRootController:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__root);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__root) = a3;
  v3 = a3;
}

- (void)setSpecifier:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__specifier);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__specifier) = a3;
  v8 = self;
  v5 = a3;

  if (v5)
  {
    v6 = v5;
    v7 = [v6 name];
    [(MusicSettingsViewController *)v8 setTitle:v7];
  }

  else
  {
    __break(1u);
  }
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_16E04();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_103CC(v4);
}

- (_TtC13MusicSettings27MusicSettingsViewController)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__parentController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__root) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__specifier) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for MusicSettingsViewController();
  return [(MusicSettingsViewController *)&v3 initWithNibName:0 bundle:0];
}

- (_TtC13MusicSettings27MusicSettingsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__parentController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__root) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__specifier) = 0;
  result = sub_16E24();
  __break(1u);
  return result;
}

- (_TtC13MusicSettings27MusicSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end