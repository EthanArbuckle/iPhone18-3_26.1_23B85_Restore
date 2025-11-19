@interface SCATAlternateKeysManager
- (BOOL)canBeActiveElementManager;
- (BOOL)handleInputAction:(id)a3 withElement:(id)a4;
- (CGPoint)_fingerControllerPointForKeyboardKey:(id)a3;
- (SCATAlternateKeysManager)init;
- (SCATAlternateKeysManagerDelegate)delegate;
- (id)_fingerController;
- (void)_cleanUpAlternateKeyOperations;
- (void)_releaseLastShownKey;
- (void)_selectAlternateKey:(id)a3;
- (void)_updateAlternateKeys;
- (void)accessibilityManager:(id)a3 didReceiveEvent:(int64_t)a4 data:(id)a5;
- (void)dealloc;
- (void)didFetchElements:(id)a3 foundNewElements:(BOOL)a4 currentFocusContext:(id)a5 didChangeActiveElementManager:(BOOL)a6;
- (void)showAlternateKeysForKey:(id)a3;
@end

@implementation SCATAlternateKeysManager

- (SCATAlternateKeysManager)init
{
  v5.receiver = self;
  v5.super_class = SCATAlternateKeysManager;
  v2 = [(SCATAlternateKeysManager *)&v5 init];
  if (v2)
  {
    v3 = +[HNDAccessibilityManager sharedManager];
    [v3 addObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[HNDAccessibilityManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SCATAlternateKeysManager;
  [(SCATAlternateKeysManager *)&v4 dealloc];
}

- (BOOL)canBeActiveElementManager
{
  v2 = [(SCATAlternateKeysManager *)self currentKeyForAlternates];
  v3 = v2 != 0;

  return v3;
}

- (void)_updateAlternateKeys
{
  v4 = [(SCATAlternateKeysManager *)self currentKeyForAlternates];
  v3 = [v4 scatAlternateKeys];
  [(SCATAlternateKeysManager *)self setAlternateKeys:v3];
}

- (id)_fingerController
{
  v2 = +[HNDHandManager sharedManager];
  v3 = [v2 fingerController];

  return v3;
}

- (CGPoint)_fingerControllerPointForKeyboardKey:(id)a3
{
  [a3 scatFrame];
  AX_CGRectGetCenter();
  v5 = v4;
  v7 = v6;
  v8 = [(SCATAlternateKeysManager *)self _fingerController];
  v9 = [v8 fingerContainerView];
  v10 = [v8 fingerContainerView];
  v11 = [v10 window];
  [v11 convertPoint:0 fromWindow:{v5, v7}];
  [v9 convertPoint:0 fromView:?];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)showAlternateKeysForKey:(id)a3
{
  v4 = a3;
  [(SCATAlternateKeysManager *)self _fingerControllerPointForKeyboardKey:v4];
  v6 = v5;
  v8 = v7;
  v9 = [(SCATAlternateKeysManager *)self _fingerController];
  [v9 performDownAtPoint:{v6, v8}];

  [(SCATAlternateKeysManager *)self setCurrentKeyForAlternates:v4];
  v10 = +[SCATScannerManager sharedManager];
  [v10 endScanning];
}

- (void)_cleanUpAlternateKeyOperations
{
  [(SCATAlternateKeysManager *)self setAlternateKeys:0];

  [(SCATAlternateKeysManager *)self setCurrentKeyForAlternates:0];
}

- (void)_selectAlternateKey:(id)a3
{
  v4 = a3;
  [(SCATAlternateKeysManager *)self _fingerControllerPointForKeyboardKey:v4];
  v6 = v5;
  v8 = v7;
  v10 = [(SCATAlternateKeysManager *)self _fingerController];
  [v10 performMoveToPoint:{v6, v8}];
  [v10 performUpAtPoint:{v6, v8}];
  [(SCATAlternateKeysManager *)self _cleanUpAlternateKeyOperations];
  v9 = [(SCATAlternateKeysManager *)self delegate];
  [v9 alternateKeysManager:self didSelectAlternateKey:v4];
}

- (void)_releaseLastShownKey
{
  v3 = [(SCATAlternateKeysManager *)self currentKeyForAlternates];

  if (v3)
  {
    v4 = [(SCATAlternateKeysManager *)self _fingerController];
    v5 = [(SCATAlternateKeysManager *)self currentKeyForAlternates];
    [(SCATAlternateKeysManager *)self _fingerControllerPointForKeyboardKey:v5];
    [v4 performUpAtPoint:?];
  }

  [(SCATAlternateKeysManager *)self _cleanUpAlternateKeyOperations];
}

- (void)didFetchElements:(id)a3 foundNewElements:(BOOL)a4 currentFocusContext:(id)a5 didChangeActiveElementManager:(BOOL)a6
{
  v9 = a3;
  v7 = +[HNDAccessibilityManager sharedManager];
  v8 = [v7 firstKeyboardItem];

  if (!v8)
  {
    [(SCATAlternateKeysManager *)self _releaseLastShownKey];
    [v9 beginScanningWithFocusContext:0];
  }
}

- (BOOL)handleInputAction:(id)a3 withElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 action] == 100 || objc_msgSend(v6, "action") == 103 || objc_msgSend(v6, "action") == 109)
  {
    [(SCATAlternateKeysManager *)self _selectAlternateKey:v7];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)accessibilityManager:(id)a3 didReceiveEvent:(int64_t)a4 data:(id)a5
{
  if (a4 == 9)
  {
    v6 = [(SCATAlternateKeysManager *)self currentKeyForAlternates:a3];

    if (v6)
    {
      [(SCATAlternateKeysManager *)self _updateAlternateKeys];
      v7 = +[SCATScannerManager sharedManager];
      [v7 beginScanningWithFocusContext:0];
    }
  }
}

- (SCATAlternateKeysManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end