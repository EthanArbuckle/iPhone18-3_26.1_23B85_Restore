@interface BuddyWelcomeController
+ (id)cloudConfigSkipKey;
- (BFFFlowItemDelegate)delegate;
- (BuddyWelcomeController)init;
- (id)createLinkButtonWithTitle:(id)title action:(SEL)action;
- (void)addBoldButton:(id)button action:(SEL)action;
- (void)addLinkButton:(id)button action:(SEL)action;
@end

@implementation BuddyWelcomeController

- (BuddyWelcomeController)init
{
  location[0] = self;
  objc_storeStrong(location, 0);
  return location[1];
}

- (id)createLinkButtonWithTitle:(id)title action:(SEL)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v7[1] = action;
  v7[0] = +[OBLinkTrayButton linkButton];
  [v7[0] setTitle:location[0] forState:0];
  [v7[0] addTarget:selfCopy action:action forControlEvents:64];
  v5 = v7[0];
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)addLinkButton:(id)button action:(SEL)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v6[1] = action;
  v6[0] = [(BuddyWelcomeController *)selfCopy createLinkButtonWithTitle:location[0] action:action];
  buttonTray = [(BuddyWelcomeController *)selfCopy buttonTray];
  [buttonTray addButton:v6[0]];

  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

- (void)addBoldButton:(id)button action:(SEL)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v6[1] = action;
  v6[0] = +[OBBoldTrayButton boldButton];
  [v6[0] setTitle:location[0] forState:0];
  [v6[0] addTarget:selfCopy action:action forControlEvents:64];
  buttonTray = [(BuddyWelcomeController *)selfCopy buttonTray];
  [buttonTray addButton:v6[0]];

  objc_storeStrong(v6, 0);
  objc_storeStrong(location, 0);
}

+ (id)cloudConfigSkipKey
{
  selfCopy = self;
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