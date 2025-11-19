@interface AirDropSettingsRoot
- (_TtC15AirDropSettings19AirDropSettingsRoot)initWithCoder:(id)a3;
- (_TtC15AirDropSettings19AirDropSettingsRoot)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleURL:(NSDictionary *)a3 withCompletion:(id)a4;
- (void)viewDidLoad;
@end

@implementation AirDropSettingsRoot

- (void)viewDidLoad
{
  v2 = self;
  sub_B388();
}

- (void)handleURL:(NSDictionary *)a3 withCompletion:(id)a4
{
  v7 = sub_284C(&qword_18A50, &qword_EAB8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_C44C(0, 0, v10, &unk_EAE8, v15);
}

- (_TtC15AirDropSettings19AirDropSettingsRoot)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_D918();
    *&self->PSViewController_opaque[OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsListHighlighter] = 0;
    *&self->PSViewController_opaque[OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsState] = 0;
    v8 = a4;
    a3 = sub_D908();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsListHighlighter] = 0;
    *&self->PSViewController_opaque[OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsState] = 0;
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(AirDropSettingsRoot *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC15AirDropSettings19AirDropSettingsRoot)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsListHighlighter] = 0;
  *&self->PSViewController_opaque[OBJC_IVAR____TtC15AirDropSettings19AirDropSettingsRoot____lazy_storage___airDropSettingsState] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(AirDropSettingsRoot *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end