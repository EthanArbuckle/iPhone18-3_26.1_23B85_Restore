@interface AXSBMenuBarManager
+ (id)sharedInstance;
- (AXSBMenuBarManager)init;
- (BOOL)isMenuBarSupported;
- (void)toggleMenuBar;
@end

@implementation AXSBMenuBarManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[AXSBMenuBarManager sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __36__AXSBMenuBarManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXSBMenuBarManager);
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (AXSBMenuBarManager)init
{
  v6.receiver = self;
  v6.super_class = AXSBMenuBarManager;
  v2 = [(AXSBMenuBarManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D4268]);
    menuBarSystemService = v2->_menuBarSystemService;
    v2->_menuBarSystemService = v3;
  }

  return v2;
}

- (void)toggleMenuBar
{
  v2 = [(AXSBMenuBarManager *)self menuBarSystemService];
  [v2 toggleMenuBarVisibility];
}

- (BOOL)isMenuBarSupported
{
  v2 = [(AXSBMenuBarManager *)self menuBarSystemService];
  v3 = [v2 isMenuBarSupported];

  return v3;
}

@end