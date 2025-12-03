@interface WCRServicePINEntryViewController
- (BOOL)requiresKeyboard;
- (NSObject)delegate;
- (WCRServicePINEntryViewController)init;
- (__CFString)blockTimeIntervalKey;
- (__CFString)blockedStateKey;
- (unint64_t)supportedInterfaceOrientations;
- (void)setDelegate:(id)delegate;
- (void)setPane:(id)pane;
- (void)viewDidLoad;
@end

@implementation WCRServicePINEntryViewController

- (WCRServicePINEntryViewController)init
{
  v11.receiver = self;
  v11.super_class = WCRServicePINEntryViewController;
  v2 = [(WCRServicePINEntryViewController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = OBJC_IVAR___DevicePINController__mode;
    *&v2->DevicePINController_opaque[OBJC_IVAR___DevicePINController__mode] = 3;
    v5 = +[PSListController appearance];
    v6 = +[UIColor labelColor];
    [v5 setTextColor:v6];

    v7 = objc_alloc_init(DevicePINPane);
    [v7 setDelegate:v3];
    v8 = +[PSSpecifier emptyGroupSpecifier];
    v9 = [NSNumber numberWithInt:*&v3->DevicePINController_opaque[v4]];
    [v8 setProperty:v9 forKey:@"mode"];

    [(WCRServicePINEntryViewController *)v3 setSpecifier:v8];
    [(WCRServicePINEntryViewController *)v3 setPane:v7];
  }

  return v3;
}

- (void)viewDidLoad
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 16;
  }

  else
  {
    v5 = 17;
  }

  [(WCRServicePINEntryViewController *)self setModalPresentationStyle:v5];
  v6.receiver = self;
  v6.super_class = WCRServicePINEntryViewController;
  [(WCRServicePINEntryViewController *)&v6 viewDidLoad];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v6 setProperty:v7 forKey:kDevicePINControllerDelegate];

    [(WCRServicePINEntryViewController *)self setSpecifier:v6];
    v5 = obj;
  }
}

- (void)setPane:(id)pane
{
  v6.receiver = self;
  v6.super_class = WCRServicePINEntryViewController;
  [(WCRServicePINEntryViewController *)&v6 setPane:pane];
  v4 = sub_100001354(@"PINCODE_TITLE_LOCKED");
  navigationItem = [(WCRServicePINEntryViewController *)self navigationItem];
  [navigationItem setTitle:v4];
}

- (BOOL)requiresKeyboard
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (__CFString)blockTimeIntervalKey
{
  v3.receiver = self;
  v3.super_class = WCRServicePINEntryViewController;
  return [(WCRServicePINEntryViewController *)&v3 blockTimeIntervalKey];
}

- (__CFString)blockedStateKey
{
  v3.receiver = self;
  v3.super_class = WCRServicePINEntryViewController;
  return [(WCRServicePINEntryViewController *)&v3 blockedStateKey];
}

- (NSObject)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end