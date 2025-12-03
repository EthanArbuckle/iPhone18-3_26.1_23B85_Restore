@interface LegalAndRegulatorySettingsRoot
- (_TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot)initWithCoder:(id)coder;
- (_TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleURL:(NSDictionary *)l withCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation LegalAndRegulatorySettingsRoot

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1C90();
}

- (void)handleURL:(NSDictionary *)l withCompletion:(id)completion
{
  v7 = (*(*(sub_1884(&qword_C450, &qword_3630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = l;
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
  lCopy = l;
  selfCopy = self;
  sub_2974(0, 0, v9, &unk_3660, v14);
}

- (_TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_315C();
    *&self->PSViewController_opaque[OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState] = 0;
    bundleCopy = bundle;
    name = sub_314C();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState] = 0;
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(LegalAndRegulatorySettingsRoot *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC26LegalAndRegulatorySettings30LegalAndRegulatorySettingsRoot____lazy_storage___legalAndRegulatorySettingsListState] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(LegalAndRegulatorySettingsRoot *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end