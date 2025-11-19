@interface BuddyMigrationSourceEraseController
- (BFFFlowItemDelegate)delegate;
- (BuddyMigrationSourceEraseController)init;
- (void)performExtendedInitializationWithCompletion:(id)a3;
@end

@implementation BuddyMigrationSourceEraseController

- (BuddyMigrationSourceEraseController)init
{
  v22 = a2;
  location = 0;
  v21.receiver = self;
  v21.super_class = BuddyMigrationSourceEraseController;
  location = [(BuddyMigrationSourceEraseController *)&v21 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = objc_alloc(sub_10016940C());
    v3 = [sub_100169520() setupAssistantConfiguration];
    v4 = [v2 initWithConfiguration:v3];
    v5 = *(location + 2);
    *(location + 2) = v4;

    objc_initWeak(&from, location);
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_100169634;
    v18 = &unk_10032AF58;
    objc_copyWeak(&v19, &from);
    [*(location + 2) setPresentNetworkSettings:&v14];
    v8 = _NSConcreteStackBlock;
    v9 = -1073741824;
    v10 = 0;
    v11 = sub_1001696A0;
    v12 = &unk_10032AF58;
    objc_copyWeak(&v13, &from);
    [*(location + 2) setCompletion:&v8];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&from);
  }

  v6 = location;
  objc_storeStrong(&location, 0);
  return v6;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMigrationSourceEraseController *)v12 eraseFlow];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100169818;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  [(DKEraseFlow *)v3 prepareFlow:&v4];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end