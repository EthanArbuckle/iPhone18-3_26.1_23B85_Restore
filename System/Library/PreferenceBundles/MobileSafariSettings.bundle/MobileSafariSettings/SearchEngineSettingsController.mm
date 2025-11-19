@interface SearchEngineSettingsController
- (SearchEngineSettingsController)initWithCoder:(id)a3;
- (SearchEngineSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SearchEngineSettingsController

- (SearchEngineSettingsController)initWithCoder:(id)a3
{
  *&self->super.super.PSListController_opaque[OBJC_IVAR___SearchEngineSettingsController_searchEnginePickerGroupSpecifier] = 0;
  result = sub_55974();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_51780(a3);
}

- (id)specifiers
{
  v2 = self;
  v3 = sub_522D4();

  if (v3)
  {
    v4.super.isa = sub_55894().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_55734();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_55724();
  v11 = a3;
  v12 = self;
  sub_52A50(v11);

  (*(v7 + 8))(v10, v6);
}

- (SearchEngineSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end