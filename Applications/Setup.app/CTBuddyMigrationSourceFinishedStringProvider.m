@interface CTBuddyMigrationSourceFinishedStringProvider
- (CTBuddyMigrationSourceFinishedStringProvider)initWithClient:(id)a3;
- (NSString)buttonText;
- (NSString)detailText;
- (void)_refreshPlanStatus;
@end

@implementation CTBuddyMigrationSourceFinishedStringProvider

- (CTBuddyMigrationSourceFinishedStringProvider)initWithClient:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = CTBuddyMigrationSourceFinishedStringProvider;
  v4 = [(CTBuddyMigrationSourceFinishedStringProvider *)&v9 init];
  v11 = v4;
  objc_storeStrong(&v11, v4);
  if (v4)
  {
    objc_storeStrong(v11 + 2, location[0]);
    [v11 _refreshPlanStatus];
    v5 = +[CTCellularPlanManager sharedManager];
    v6 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v6 addObserver:v11 selector:"_refreshPlanStatus" name:CTCellularPlanLocalInfoDidChangeNotification object:0];
  }

  v7 = v11;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (NSString)detailText
{
  if (self->_hasSIM)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MIGRATION_SOURCE_TRANSFER_COMPLETE_WITH_SIM_DETAIL_TEXT_DETAIL"];
  }

  else
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"MIGRATION_SOURCE_TRANSFER_COMPLETE_WITHOUT_SIM_DETAIL_TEXT"];
  }

  v5 = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Migration"];

  return v5;
}

- (NSString)buttonText
{
  if (self->_hasSIM)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [(NSBundle *)v2 localizedStringForKey:@"DONE" value:&stru_10032F900 table:@"Migration"];
  }

  else
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = [(NSBundle *)v2 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Migration"];
  }

  return v4;
}

- (void)_refreshPlanStatus
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  client = self->_client;
  obj = 0;
  v3 = [(CoreTelephonyClient *)client isAnyPlanTransferableFromThisDeviceOrError:&obj];
  objc_storeStrong(location, obj);
  v5 = v3 & 1;
  if (!location[0])
  {
    v7->_hasSIM = v5 & 1;
  }

  objc_storeStrong(location, 0);
}

@end