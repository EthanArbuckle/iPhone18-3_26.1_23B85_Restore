@interface WebBrowsingSettingsController
- (WebBrowsingSettingsController)initWithCoder:(id)a3;
- (WebBrowsingSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
@end

@implementation WebBrowsingSettingsController

- (id)specifiers
{
  v2 = self;
  sub_53194();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_55894().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (WebBrowsingSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_55854();
    v8 = &self->super.super.PSListController_opaque[OBJC_IVAR___WebBrowsingSettingsController_webBrowsingTitle];
    *v8 = 0;
    *(v8 + 1) = 0xE000000000000000;
    v9 = a4;
    a3 = sub_55844();
  }

  else
  {
    v10 = &self->super.super.PSListController_opaque[OBJC_IVAR___WebBrowsingSettingsController_webBrowsingTitle];
    *v10 = 0;
    *(v10 + 1) = 0xE000000000000000;
    v11 = a4;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(WebBrowsingSettingsController *)&v14 initWithNibName:a3 bundle:a4];

  return v12;
}

- (WebBrowsingSettingsController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = &self->super.super.PSListController_opaque[OBJC_IVAR___WebBrowsingSettingsController_webBrowsingTitle];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = [(WebBrowsingSettingsController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end