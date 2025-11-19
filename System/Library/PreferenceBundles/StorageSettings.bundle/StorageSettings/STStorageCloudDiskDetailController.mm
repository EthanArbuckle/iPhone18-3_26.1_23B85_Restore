@interface STStorageCloudDiskDetailController
- (id)specifiers;
- (id)valueForSpecifier:(id)a3;
@end

@implementation STStorageCloudDiskDetailController

- (id)valueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSValueKey];
  [v3 longLongValue];
  v4 = STFormattedSize();

  return v4;
}

- (id)specifiers
{
  v3 = [NSMutableArray arrayWithCapacity:8];
  v4 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:STStorageAppKey];
  if (v4)
  {
    v5 = [STStorageUsageAppHeaderCell specifierForStorageApp:v4];
    [v3 addObject:v5];
  }

  v6 = STStorageLocStr(@"DOCUMENTS_AND_DATA");
  v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

  v8 = [v4 appSize];
  v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 userTotal]);
  [v7 setProperty:v9 forKey:PSValueKey];

  [v3 addObject:v7];
  v10 = [PSSpecifier groupSpecifierWithID:&stru_2D2D0];

  v11 = STStorageLocStr(@"ICLOUD_DRIVE_INFO");
  [v10 setProperty:v11 forKey:PSFooterTextGroupKey];

  [v3 addObject:v10];
  v12 = OBJC_IVAR___PSListController__specifiers;
  v13 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v14 = v3;

  v15 = *&self->super.PSListController_opaque[v12];
  v16 = v15;

  return v15;
}

@end