@interface ActivityPickerViewController
- (_TtC14FamilyControls28ActivityPickerViewController)initWithCoder:(id)a3;
- (_TtC14FamilyControls28ActivityPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation ActivityPickerViewController

- (_TtC14FamilyControls28ActivityPickerViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14FamilyControls28ActivityPickerViewController_remoteViewController) = 0;
  result = sub_23833EDE0();
  __break(1u);
  return result;
}

- (void)loadView
{
  v3 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v4 = self;
  v5 = [v3 init];
  [(ActivityPickerViewController *)v4 setView:v5];
  type metadata accessor for ActivityPickerRemoteViewController();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = v4;
  sub_238304040(sub_238327360, v6);
}

- (_TtC14FamilyControls28ActivityPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end