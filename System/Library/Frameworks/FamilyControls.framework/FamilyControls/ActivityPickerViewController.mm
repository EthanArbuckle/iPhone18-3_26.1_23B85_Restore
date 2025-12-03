@interface ActivityPickerViewController
- (_TtC14FamilyControls28ActivityPickerViewController)initWithCoder:(id)coder;
- (_TtC14FamilyControls28ActivityPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation ActivityPickerViewController

- (_TtC14FamilyControls28ActivityPickerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14FamilyControls28ActivityPickerViewController_remoteViewController) = 0;
  result = sub_23833EDE0();
  __break(1u);
  return result;
}

- (void)loadView
{
  v3 = objc_allocWithZone(MEMORY[0x277D75D18]);
  selfCopy = self;
  v5 = [v3 init];
  [(ActivityPickerViewController *)selfCopy setView:v5];
  type metadata accessor for ActivityPickerRemoteViewController();
  v6 = swift_allocObject();
  *(v6 + 16) = selfCopy;
  v7 = selfCopy;
  sub_238304040(sub_238327360, v6);
}

- (_TtC14FamilyControls28ActivityPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end