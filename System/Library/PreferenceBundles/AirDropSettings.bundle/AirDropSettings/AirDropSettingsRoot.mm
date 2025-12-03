@interface AirDropSettingsRoot
- (_TtC15AirDropSettings19AirDropSettingsRoot)initWithCoder:(id)coder;
- (_TtC15AirDropSettings19AirDropSettingsRoot)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleURL:(NSDictionary *)l withCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation AirDropSettingsRoot

- (void)viewDidLoad
{
  selfCopy = self;
  sub_B388();
}

- (void)handleURL:(NSDictionary *)l withCompletion:(id)completion
{
  v7 = sub_284C(&qword_18A50, &qword_EAB8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = l;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_D988();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_EAC8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_EAD8;
  v15[5] = v14;
  lCopy = l;
  selfCopy = self;
  sub_C44C(0, 0, v10, &unk_EAE8, v15);
}

- (_TtC15AirDropSettings19AirDropSettingsRoot)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_D918();
    *&self->PSViewController_opaque[OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsListHighlighter] = 0;
    *&self->PSViewController_opaque[OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsState] = 0;
    bundleCopy = bundle;
    name = sub_D908();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsListHighlighter] = 0;
    *&self->PSViewController_opaque[OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsState] = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(AirDropSettingsRoot *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC15AirDropSettings19AirDropSettingsRoot)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsListHighlighter] = 0;
  *&self->PSViewController_opaque[OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsState] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(AirDropSettingsRoot *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end