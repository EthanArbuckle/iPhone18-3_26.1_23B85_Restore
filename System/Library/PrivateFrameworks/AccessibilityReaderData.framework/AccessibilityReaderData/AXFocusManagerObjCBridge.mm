@interface AXFocusManagerObjCBridge
- (AXElement)currentApplication;
- (AXFocusManagerObjCBridge)init;
@end

@implementation AXFocusManagerObjCBridge

- (AXFocusManagerObjCBridge)init
{
  v6.receiver = self;
  v6.super_class = AXFocusManagerObjCBridge;
  v2 = [(AXFocusManagerObjCBridge *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    focusManager = v2->_focusManager;
    v2->_focusManager = v3;
  }

  return v2;
}

- (AXElement)currentApplication
{
  AXOverrideRequestingClientType();
  focusManager = [(AXFocusManagerObjCBridge *)self focusManager];
  currentApplication = [focusManager currentApplication];

  AXOverrideRequestingClientType();

  return currentApplication;
}

@end