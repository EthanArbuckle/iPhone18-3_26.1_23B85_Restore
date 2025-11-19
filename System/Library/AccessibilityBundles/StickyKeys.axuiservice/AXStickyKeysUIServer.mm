@interface AXStickyKeysUIServer
- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6;
- (void)_handleStickyKeysDisabled;
- (void)_playSoundForState:(int64_t)a3;
- (void)_showUIIfNeeded;
@end

@implementation AXStickyKeysUIServer

- (id)processMessage:(id)a3 withIdentifier:(unint64_t)a4 fromClientWithIdentifier:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  switch(a4)
  {
    case 0x2712uLL:
      v11 = [v9 objectForKeyedSubscript:AXStickyKeysUIServerKeycodeKey];
      v12 = [v11 intValue];
      v13 = [v9 objectForKeyedSubscript:AXStickyKeysUIServerUsagePageKey];
      v14 = [v13 intValue];
      v15 = [v9 objectForKeyedSubscript:AXStickyKeysUIServerKeyStateKey];
      -[AXStickyKeysUIServer _handleStickyKeyUpdatedWithKeycode:usagePage:state:](self, "_handleStickyKeyUpdatedWithKeycode:usagePage:state:", v12, v14, [v15 integerValue]);

      break;
    case 0x2711uLL:
      [(AXStickyKeysUIServer *)self _handleStickyKeysDisabled];
      break;
    case 0x2710uLL:
      [(AXStickyKeysUIServer *)self _handleStickyKeysToggledViaShift];
      break;
    default:
      _AXLogWithFacility();
      break;
  }

  return 0;
}

- (void)_showUIIfNeeded
{
  v3 = [(AXStickyKeysUIServer *)self stickyKeysViewController];

  if (!v3)
  {
    v4 = objc_alloc_init(AXStickyKeysViewController);
    [(AXStickyKeysUIServer *)self setStickyKeysViewController:v4];

    v6 = +[AXUIDisplayManager sharedDisplayManager];
    v5 = [(AXStickyKeysUIServer *)self stickyKeysViewController];
    [v6 addContentViewController:v5 withUserInteractionEnabled:0 forService:self];
  }
}

- (void)_handleStickyKeysDisabled
{
  v3 = [(AXStickyKeysUIServer *)self stickyKeysViewController];

  if (v3)
  {
    v4 = [(AXStickyKeysUIServer *)self stickyKeysViewController];
    [(AXStickyKeysUIServer *)self setStickyKeysViewController:0];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_2A68;
    v6[3] = &unk_82E0;
    v7 = v4;
    v8 = self;
    v5 = v4;
    [v5 resetWithCompletion:v6];
  }
}

- (void)_playSoundForState:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 2)
    {
      AudioServicesPlaySystemSound(0x44Fu);
    }
  }

  else
  {
    AudioServicesPlaySystemSound(0x450u);
  }
}

@end