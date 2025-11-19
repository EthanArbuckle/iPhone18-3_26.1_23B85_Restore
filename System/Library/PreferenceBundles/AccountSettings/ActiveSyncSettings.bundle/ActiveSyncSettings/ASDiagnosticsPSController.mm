@interface ASDiagnosticsPSController
- (id)currentPingIntervalForSpecifier:(id)a3;
- (id)specifiers;
@end

@implementation ASDiagnosticsPSController

- (id)specifiers
{
  v15.receiver = self;
  v15.super_class = ASDiagnosticsPSController;
  v3 = [(ESDiagnosticsPSController *)&v15 specifiers];
  v4 = [v3 mutableCopy];

  v5 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"PING_INTERVAL" value:&stru_30C98 table:@"Diagnostic"];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"currentPingIntervalForSpecifier:" detail:0 cell:4 edit:0];

  [v4 addObject:v5];
  [v4 addObject:v8];
  v9 = OBJC_IVAR___PSListController__specifiers;
  v10 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v4;
  v11 = v4;

  v12 = *&self->super.PSListController_opaque[v9];
  v13 = v12;

  return v12;
}

- (id)currentPingIntervalForSpecifier:(id)a3
{
  v3 = CFPreferencesCopyAppValue(@"LastGoodPingHeartBeat", @"com.apple.dataaccess.dataaccessd");
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v3 intValue]);

  return v4;
}

@end