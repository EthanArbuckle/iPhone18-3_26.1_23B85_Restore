@interface STStorageSystemDetailController
- (id)specifiers;
- (id)valueForSpecifier:(id)a3;
@end

@implementation STStorageSystemDetailController

- (id)valueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSValueKey];
  [v3 longLongValue];
  v4 = STFormattedSize();

  return v4;
}

- (id)specifiers
{
  v3 = [NSMutableArray arrayWithCapacity:10];
  v4 = objc_alloc_init(STStorageSystemFakeApp);
  v5 = [STStorageAppHeaderCell specifierForStorageApp:v4];
  [v3 addObject:v5];

  v6 = STSizeOfSystemVolume();
  v7 = STStorageLocStr(@"SYSTEM_FILES");
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

  v9 = [NSNumber numberWithLongLong:v6];
  [v8 setProperty:v9 forKey:PSValueKey];

  [v3 addObject:v8];
  v10 = OBJC_IVAR___PSListController__specifiers;
  v11 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v12 = v3;

  v13 = *&self->super.PSListController_opaque[v10];
  v14 = v13;

  return v13;
}

@end