@interface STStorageContainerDetailController
- (id)dataSize:(id)size;
- (id)specifiers;
@end

@implementation STStorageContainerDetailController

- (id)dataSize:(id)size
{
  v3 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:STStorageAppKey];
  appSize = [v3 appSize];
  [appSize userTotal];

  v5 = STFormattedSize();

  return v5;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = STStorageAppKey;
    v6 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:STStorageAppKey];
    v7 = [NSMutableArray arrayWithCapacity:8];
    v8 = +[PSSpecifier emptyGroupSpecifier];
    [v7 addObject:v8];
    v9 = [STStorageAppHeaderCell specifierForStorageApp:v6];
    [v7 addObject:v9];

    v10 = STStorageLocStr(@"DOCUMENTS_AND_DATA");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"dataSize:" detail:0 cell:4 edit:0];

    [v11 setProperty:v6 forKey:v5];
    [v7 addObject:v11];
    v12 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v7;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

@end