@interface CompassSettingsController
- (id)specifiers;
@end

@implementation CompassSettingsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.compass"];
    v7 = [v6 specifiersForPolicyOptions:8486912 force:0];
    [v5 addObjectsFromArray:v7];
    v8 = [(CompassSettingsController *)self loadSpecifiersFromPlistName:@"CompassSettings" target:self];
    [v5 addObjectsFromArray:v8];
    v9 = [v5 copy];
    v10 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v9;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

@end