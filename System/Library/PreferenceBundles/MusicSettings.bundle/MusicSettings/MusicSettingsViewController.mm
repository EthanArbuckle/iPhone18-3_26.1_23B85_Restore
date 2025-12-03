@interface MusicSettingsViewController
- (_TtC13MusicSettings27MusicSettingsViewController)init;
- (_TtC13MusicSettings27MusicSettingsViewController)initWithCoder:(id)coder;
- (_TtC13MusicSettings27MusicSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setParentController:(id)controller;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)setRootController:(id)controller;
- (void)setSpecifier:(id)specifier;
@end

@implementation MusicSettingsViewController

- (void)setParentController:(id)controller
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__parentController);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__parentController) = controller;
  controllerCopy = controller;
}

- (void)setRootController:(id)controller
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__root);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__root) = controller;
  controllerCopy = controller;
}

- (void)setSpecifier:(id)specifier
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__specifier);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__specifier) = specifier;
  selfCopy = self;
  specifierCopy = specifier;

  if (specifierCopy)
  {
    v6 = specifierCopy;
    name = [v6 name];
    [(MusicSettingsViewController *)selfCopy setTitle:name];
  }

  else
  {
    __break(1u);
  }
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  if (value)
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

- (_TtC13MusicSettings27MusicSettingsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__parentController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__root) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MusicSettings27MusicSettingsViewController__specifier) = 0;
  result = sub_16E24();
  __break(1u);
  return result;
}

- (_TtC13MusicSettings27MusicSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end