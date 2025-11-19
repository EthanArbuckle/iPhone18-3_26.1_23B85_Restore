@interface BuddyWelcomeController
+ (id)cloudConfigSkipKey;
- (BFFFlowItemDelegate)delegate;
- (BuddyWelcomeController)init;
- (id)createLinkButtonWithTitle:(id)a3 action:(SEL)a4;
- (void)addBoldButton:(id)a3 action:(SEL)a4;
- (void)addLinkButton:(id)a3 action:(SEL)a4;
@end

@implementation BuddyWelcomeController

- (BuddyWelcomeController)init
{
  location[0] = self;
  objc_storeStrong(location, 0);
  return location[1];
}

- (id)createLinkButtonWithTitle:(id)a3 action:(SEL)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7[1] = a4;
  v7[0] = +[OBLinkTrayButton linkButton];
  [v7[0] setTitle:location[0] forState:0];
  [v7[0] addTarget:v9 action:a4 forControlEvents:64];
  v5 = v7[0];
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)addLinkButton:(id)a3 action:(SEL)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6[1] = a4;
  v6[0] = [(BuddyWelcomeController *)v8 createLinkButtonWithTitle:location[0] action:a4];
  v5 = [(BuddyWelcomeController *)v8 buttonTray];
  [v5 addButton:v6[0]];

  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

- (void)addBoldButton:(id)a3 action:(SEL)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6[1] = a4;
  v6[0] = +[OBBoldTrayButton boldButton];
  [v6[0] setTitle:location[0] forState:0];
  [v6[0] addTarget:v8 action:a4 forControlEvents:64];
  v5 = [(BuddyWelcomeController *)v8 buttonTray];
  [v5 addButton:v6[0]];

  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

+ (id)cloudConfigSkipKey
{
  v7 = a1;
  aSelector = a2;
  oslog = _BYLoggingFacility();
  v4 = OS_LOG_TYPE_FAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
  {
    location = NSStringFromSelector(aSelector);
    sub_10006AE18(buf, location);
    _os_log_fault_impl(&_mh_execute_header, oslog, v4, "Subclasses must implement %@", buf, 0xCu);

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  return 0;
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end