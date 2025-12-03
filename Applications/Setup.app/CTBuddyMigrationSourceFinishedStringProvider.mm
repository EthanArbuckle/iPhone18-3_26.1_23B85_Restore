@interface CTBuddyMigrationSourceFinishedStringProvider
- (CTBuddyMigrationSourceFinishedStringProvider)initWithClient:(id)client;
- (NSString)buttonText;
- (NSString)detailText;
- (void)_refreshPlanStatus;
@end

@implementation CTBuddyMigrationSourceFinishedStringProvider

- (CTBuddyMigrationSourceFinishedStringProvider)initWithClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = CTBuddyMigrationSourceFinishedStringProvider;
  v4 = [(CTBuddyMigrationSourceFinishedStringProvider *)&v9 init];
  selfCopy = v4;
  objc_storeStrong(&selfCopy, v4);
  if (v4)
  {
    objc_storeStrong(selfCopy + 2, location[0]);
    [selfCopy _refreshPlanStatus];
    v5 = +[CTCellularPlanManager sharedManager];
    v6 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v6 addObserver:selfCopy selector:"_refreshPlanStatus" name:CTCellularPlanLocalInfoDidChangeNotification object:0];
  }

  v7 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  client = self->_client;
  obj = 0;
  v3 = [(CoreTelephonyClient *)client isAnyPlanTransferableFromThisDeviceOrError:&obj];
  objc_storeStrong(location, obj);
  v5 = v3 & 1;
  if (!location[0])
  {
    selfCopy->_hasSIM = v5 & 1;
  }

  objc_storeStrong(location, 0);
}

@end