@interface MSQuickActionController
+ (id)sharedInstance;
+ (void)processShortcutItem:(id)item applicationController:(id)controller completionHandler:(id)handler;
+ (void)updateShortcutItems;
- (MSQuickActionController)init;
- (id)_shortcutItems;
- (void)_accountStoreDidChange:(id)change;
- (void)dealloc;
- (void)processShortcutItem:(id)item applicationController:(id)controller completionHandler:(id)handler;
@end

@implementation MSQuickActionController

+ (void)updateShortcutItems
{
  sharedInstance = [objc_opt_class() sharedInstance];
  _shortcutItems = [sharedInstance _shortcutItems];

  v3 = +[UIApplication sharedApplication];
  [v3 setShortcutItems:_shortcutItems];
}

+ (id)sharedInstance
{
  if (qword_100015708 != -1)
  {
    sub_1000015B4();
  }

  v3 = qword_100015700;

  return v3;
}

- (MSQuickActionController)init
{
  v7.receiver = self;
  v7.super_class = MSQuickActionController;
  v2 = [(MSQuickActionController *)&v7 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = SSAccountStoreChangedNotification;
    v5 = +[SSAccountStore defaultStore];
    [v3 addObserver:v2 selector:"_accountStoreDidChange:" name:v4 object:v5];
  }

  return v2;
}

- (id)_shortcutItems
{
  v2 = +[NSMutableArray array];
  v3 = [UIApplicationShortcutIcon iconWithType:5];
  v4 = [UIApplicationShortcutItem alloc];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"QUICK_ACTION_SEARCH" value:&stru_1000107F8 table:0];
  v27 = v3;
  v7 = [v4 initWithType:@"com.apple.MobileStore.search" localizedTitle:v6 localizedSubtitle:0 icon:v3 userInfo:0];

  [v2 addObject:v7];
  v8 = +[SSAccountStore defaultStore];
  activeAccount = [v8 activeAccount];

  if (([activeAccount isManagedAppleID] & 1) == 0)
  {
    v10 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"RedeemMusicCodeQuickAction"];
    v11 = [UIApplicationShortcutItem alloc];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"QUICK_ACTION_REDEEM" value:&stru_1000107F8 table:0];
    v14 = [v11 initWithType:@"com.apple.MobileStore.redeem" localizedTitle:v13 localizedSubtitle:0 icon:v10 userInfo:0];

    [v2 addObject:v14];
  }

  v15 = [UIApplicationShortcutIcon iconWithType:28];
  v16 = [UIApplicationShortcutItem alloc];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"QUICK_ACTION_VIEW_DOWNLOADS" value:&stru_1000107F8 table:0];
  v19 = [v16 initWithType:@"com.apple.MobileStore.viewdownloads" localizedTitle:v18 localizedSubtitle:0 icon:v15 userInfo:0];

  [v2 addObject:v19];
  v20 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"QuickActionPurchased"];
  v21 = [UIApplicationShortcutItem alloc];
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"QUICK_ACTION_PURCHASED" value:&stru_1000107F8 table:0];
  v24 = [v21 initWithType:@"com.apple.MobileStore.purchased" localizedTitle:v23 localizedSubtitle:0 icon:v20 userInfo:0];

  [v2 addObject:v24];
  v25 = [v2 copy];

  return v25;
}

+ (void)processShortcutItem:(id)item applicationController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  itemCopy = item;
  sharedInstance = [objc_opt_class() sharedInstance];
  [sharedInstance processShortcutItem:itemCopy applicationController:controllerCopy completionHandler:handlerCopy];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = SSAccountStoreChangedNotification;
  v5 = +[SSAccountStore defaultStore];
  [v3 removeObserver:self name:v4 object:v5];

  v6.receiver = self;
  v6.super_class = MSQuickActionController;
  [(MSQuickActionController *)&v6 dealloc];
}

- (void)processShortcutItem:(id)item applicationController:(id)controller completionHandler:(id)handler
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001FBC;
  block[3] = &unk_1000104E8;
  itemCopy = item;
  controllerCopy = controller;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = controllerCopy;
  v9 = itemCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_accountStoreDidChange:(id)change
{
  v3 = objc_opt_class();

  [v3 updateShortcutItems];
}

@end