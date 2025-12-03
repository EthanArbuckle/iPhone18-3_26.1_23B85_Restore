@interface AXUIDaemonWindow
- (AXUIDaemonWindow)init;
- (UIEdgeInsets)_normalizedSafeAreaInsets;
- (void)_didUpdateOrientation:(id)orientation;
@end

@implementation AXUIDaemonWindow

- (AXUIDaemonWindow)init
{
  v6.receiver = self;
  v6.super_class = AXUIDaemonWindow;
  v2 = [(AXUIDaemonWindow *)&v6 init];
  if (v2)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(AXUIDaemonWindow *)v2 setBackgroundColor:clearColor];

    [(AXUIDaemonWindow *)v2 setClipsToBounds:1];
    [(AXUIDaemonWindow *)v2 _didUpdateOrientation:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__didUpdateOrientation_ name:@"AXUIDaemonOrientationDidUpdateNotification" object:0];
  }

  return v2;
}

- (void)_didUpdateOrientation:(id)orientation
{
  userInfo = [orientation userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"Duration"];
  [v5 doubleValue];
  [(AXUIDaemonWindow *)self _updateInterfaceOrientationFromDeviceOrientation:v6 > 0.0];

  AXPerformSafeBlock();
}

- (UIEdgeInsets)_normalizedSafeAreaInsets
{
  interfaceOrientation = [(AXUIDaemonWindow *)self interfaceOrientation];

  v3 = AXUINormalizedSafeAreaInsetsForOrientation(interfaceOrientation);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end