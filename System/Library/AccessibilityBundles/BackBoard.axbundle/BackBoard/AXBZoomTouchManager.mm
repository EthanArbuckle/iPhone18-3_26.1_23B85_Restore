@interface AXBZoomTouchManager
+ (Class)getZoomBundlePrincipalClassForcingLoad:(BOOL)load;
+ (void)initializeZoomMonitor;
- (void)updateSettings;
@end

@implementation AXBZoomTouchManager

+ (void)initializeZoomMonitor
{
  if (initializeZoomMonitor_onceToken != -1)
  {
    +[AXBZoomTouchManager initializeZoomMonitor];
  }
}

void __44__AXBZoomTouchManager_initializeZoomMonitor__block_invoke()
{
  v0 = objc_alloc_init(AXBZoomTouchManager);
  v1 = SharedManager_4;
  SharedManager_4 = v0;

  v2 = [MEMORY[0x29EDC8318] sharedInstance];
  [SharedManager_4 updateSettings];
  v6 = [MEMORY[0x29EDBA068] defaultCenter];
  v3 = *MEMORY[0x29EDC8558];
  v4 = [MEMORY[0x29EDBA088] mainQueue];
  v5 = [v6 addObserverForName:v3 object:0 queue:v4 usingBlock:&__block_literal_global_286_1];
}

+ (Class)getZoomBundlePrincipalClassForcingLoad:(BOOL)load
{
  loadCopy = load;
  v4 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/SpringBoardPlugins/ZoomTouch.bundle"];
  v5 = v4;
  if (v4)
  {
    if ([v4 isLoaded])
    {
LABEL_7:
      principalClass = [v5 principalClass];
      goto LABEL_9;
    }

    if (loadCopy)
    {
      v14 = 0;
      v6 = [v5 loadAndReturnError:&v14];
      v7 = v14;
      v8 = v7;
      if ((v6 & 1) == 0)
      {
        v12 = @"**** Accessibility: Could not load ZoomTouch bundle: %@";
        v13 = v7;
        LOBYTE(v11) = 1;
        _AXLogWithFacility();
      }

      goto LABEL_7;
    }
  }

  principalClass = 0;
LABEL_9:

  return principalClass;
}

- (void)updateSettings
{
  v2 = _AXSZoomTouchEnabled() != 0;
  v3 = SharedManager_4;

  [v3 setZoomTouchEnabled:v2];
}

@end