@interface LegalAndRegulatorySettingsRoot
- (_TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot)initWithCoder:(id)a3;
- (_TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleURL:(NSDictionary *)a3 withCompletion:(id)a4;
- (void)viewDidLoad;
@end

@implementation LegalAndRegulatorySettingsRoot

- (void)viewDidLoad
{
  v2 = self;
  sub_1C90();
}

- (void)handleURL:(NSDictionary *)a3 withCompletion:(id)a4
{
  v7 = (*(*(sub_1884(&qword_C450, &qword_3630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_31BC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_3640;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_3650;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_2974(0, 0, v9, &unk_3660, v14);
}

- (_TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_315C();
    *&self->PSViewController_opaque[OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState] = 0;
    v8 = a4;
    a3 = sub_314C();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState] = 0;
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(LegalAndRegulatorySettingsRoot *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(LegalAndRegulatorySettingsRoot *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end