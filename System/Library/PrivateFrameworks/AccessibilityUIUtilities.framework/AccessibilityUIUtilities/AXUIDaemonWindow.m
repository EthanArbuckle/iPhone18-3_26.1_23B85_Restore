@interface AXUIDaemonWindow
- (AXUIDaemonWindow)init;
- (UIEdgeInsets)_normalizedSafeAreaInsets;
- (void)_didUpdateOrientation:(id)a3;
@end

@implementation AXUIDaemonWindow

- (AXUIDaemonWindow)init
{
  v6.receiver = self;
  v6.super_class = AXUIDaemonWindow;
  v2 = [(AXUIDaemonWindow *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [(AXUIDaemonWindow *)v2 setBackgroundColor:v3];

    [(AXUIDaemonWindow *)v2 setClipsToBounds:1];
    [(AXUIDaemonWindow *)v2 _didUpdateOrientation:0];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel__didUpdateOrientation_ name:@"AXUIDaemonOrientationDidUpdateNotification" object:0];
  }

  return v2;
}

- (void)_didUpdateOrientation:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"Duration"];
  [v5 doubleValue];
  [(AXUIDaemonWindow *)self _updateInterfaceOrientationFromDeviceOrientation:v6 > 0.0];

  AXPerformSafeBlock();
}

- (UIEdgeInsets)_normalizedSafeAreaInsets
{
  v2 = [(AXUIDaemonWindow *)self interfaceOrientation];

  v3 = AXUINormalizedSafeAreaInsetsForOrientation(v2);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end