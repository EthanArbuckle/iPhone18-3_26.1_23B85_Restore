@interface WebBrowsingSettingsController
- (WebBrowsingSettingsController)initWithCoder:(id)coder;
- (WebBrowsingSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
@end

@implementation WebBrowsingSettingsController

- (id)specifiers
{
  selfCopy = self;
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

- (WebBrowsingSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_55854();
    v8 = &self->super.super.PSListController_opaque[OBJC_IVAR___WebBrowsingSettingsController_webBrowsingTitle];
    *v8 = 0;
    *(v8 + 1) = 0xE000000000000000;
    bundleCopy = bundle;
    name = sub_55844();
  }

  else
  {
    v10 = &self->super.super.PSListController_opaque[OBJC_IVAR___WebBrowsingSettingsController_webBrowsingTitle];
    *v10 = 0;
    *(v10 + 1) = 0xE000000000000000;
    bundleCopy2 = bundle;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(WebBrowsingSettingsController *)&v14 initWithNibName:name bundle:bundle];

  return v12;
}

- (WebBrowsingSettingsController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = &self->super.super.PSListController_opaque[OBJC_IVAR___WebBrowsingSettingsController_webBrowsingTitle];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(WebBrowsingSettingsController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end