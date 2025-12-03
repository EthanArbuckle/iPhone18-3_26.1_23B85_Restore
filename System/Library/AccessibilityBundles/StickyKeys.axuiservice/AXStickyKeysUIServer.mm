@interface AXStickyKeysUIServer
- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error;
- (void)_handleStickyKeysDisabled;
- (void)_playSoundForState:(int64_t)state;
- (void)_showUIIfNeeded;
@end

@implementation AXStickyKeysUIServer

- (id)processMessage:(id)message withIdentifier:(unint64_t)identifier fromClientWithIdentifier:(id)withIdentifier error:(id *)error
{
  messageCopy = message;
  withIdentifierCopy = withIdentifier;
  switch(identifier)
  {
    case 0x2712uLL:
      v11 = [messageCopy objectForKeyedSubscript:AXStickyKeysUIServerKeycodeKey];
      intValue = [v11 intValue];
      v13 = [messageCopy objectForKeyedSubscript:AXStickyKeysUIServerUsagePageKey];
      intValue2 = [v13 intValue];
      v15 = [messageCopy objectForKeyedSubscript:AXStickyKeysUIServerKeyStateKey];
      -[AXStickyKeysUIServer _handleStickyKeyUpdatedWithKeycode:usagePage:state:](self, "_handleStickyKeyUpdatedWithKeycode:usagePage:state:", intValue, intValue2, [v15 integerValue]);

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
  stickyKeysViewController = [(AXStickyKeysUIServer *)self stickyKeysViewController];

  if (!stickyKeysViewController)
  {
    v4 = objc_alloc_init(AXStickyKeysViewController);
    [(AXStickyKeysUIServer *)self setStickyKeysViewController:v4];

    v6 = +[AXUIDisplayManager sharedDisplayManager];
    stickyKeysViewController2 = [(AXStickyKeysUIServer *)self stickyKeysViewController];
    [v6 addContentViewController:stickyKeysViewController2 withUserInteractionEnabled:0 forService:self];
  }
}

- (void)_handleStickyKeysDisabled
{
  stickyKeysViewController = [(AXStickyKeysUIServer *)self stickyKeysViewController];

  if (stickyKeysViewController)
  {
    stickyKeysViewController2 = [(AXStickyKeysUIServer *)self stickyKeysViewController];
    [(AXStickyKeysUIServer *)self setStickyKeysViewController:0];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_2A68;
    v6[3] = &unk_82E0;
    v7 = stickyKeysViewController2;
    selfCopy = self;
    v5 = stickyKeysViewController2;
    [v5 resetWithCompletion:v6];
  }
}

- (void)_playSoundForState:(int64_t)state
{
  if (state)
  {
    if (state == 2)
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