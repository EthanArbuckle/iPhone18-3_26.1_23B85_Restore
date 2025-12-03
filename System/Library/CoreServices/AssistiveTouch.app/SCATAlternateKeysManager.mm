@interface SCATAlternateKeysManager
- (BOOL)canBeActiveElementManager;
- (BOOL)handleInputAction:(id)action withElement:(id)element;
- (CGPoint)_fingerControllerPointForKeyboardKey:(id)key;
- (SCATAlternateKeysManager)init;
- (SCATAlternateKeysManagerDelegate)delegate;
- (id)_fingerController;
- (void)_cleanUpAlternateKeyOperations;
- (void)_releaseLastShownKey;
- (void)_selectAlternateKey:(id)key;
- (void)_updateAlternateKeys;
- (void)accessibilityManager:(id)manager didReceiveEvent:(int64_t)event data:(id)data;
- (void)dealloc;
- (void)didFetchElements:(id)elements foundNewElements:(BOOL)newElements currentFocusContext:(id)context didChangeActiveElementManager:(BOOL)manager;
- (void)showAlternateKeysForKey:(id)key;
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
  currentKeyForAlternates = [(SCATAlternateKeysManager *)self currentKeyForAlternates];
  v3 = currentKeyForAlternates != 0;

  return v3;
}

- (void)_updateAlternateKeys
{
  currentKeyForAlternates = [(SCATAlternateKeysManager *)self currentKeyForAlternates];
  scatAlternateKeys = [currentKeyForAlternates scatAlternateKeys];
  [(SCATAlternateKeysManager *)self setAlternateKeys:scatAlternateKeys];
}

- (id)_fingerController
{
  v2 = +[HNDHandManager sharedManager];
  fingerController = [v2 fingerController];

  return fingerController;
}

- (CGPoint)_fingerControllerPointForKeyboardKey:(id)key
{
  [key scatFrame];
  AX_CGRectGetCenter();
  v5 = v4;
  v7 = v6;
  _fingerController = [(SCATAlternateKeysManager *)self _fingerController];
  fingerContainerView = [_fingerController fingerContainerView];
  fingerContainerView2 = [_fingerController fingerContainerView];
  window = [fingerContainerView2 window];
  [window convertPoint:0 fromWindow:{v5, v7}];
  [fingerContainerView convertPoint:0 fromView:?];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)showAlternateKeysForKey:(id)key
{
  keyCopy = key;
  [(SCATAlternateKeysManager *)self _fingerControllerPointForKeyboardKey:keyCopy];
  v6 = v5;
  v8 = v7;
  _fingerController = [(SCATAlternateKeysManager *)self _fingerController];
  [_fingerController performDownAtPoint:{v6, v8}];

  [(SCATAlternateKeysManager *)self setCurrentKeyForAlternates:keyCopy];
  v10 = +[SCATScannerManager sharedManager];
  [v10 endScanning];
}

- (void)_cleanUpAlternateKeyOperations
{
  [(SCATAlternateKeysManager *)self setAlternateKeys:0];

  [(SCATAlternateKeysManager *)self setCurrentKeyForAlternates:0];
}

- (void)_selectAlternateKey:(id)key
{
  keyCopy = key;
  [(SCATAlternateKeysManager *)self _fingerControllerPointForKeyboardKey:keyCopy];
  v6 = v5;
  v8 = v7;
  _fingerController = [(SCATAlternateKeysManager *)self _fingerController];
  [_fingerController performMoveToPoint:{v6, v8}];
  [_fingerController performUpAtPoint:{v6, v8}];
  [(SCATAlternateKeysManager *)self _cleanUpAlternateKeyOperations];
  delegate = [(SCATAlternateKeysManager *)self delegate];
  [delegate alternateKeysManager:self didSelectAlternateKey:keyCopy];
}

- (void)_releaseLastShownKey
{
  currentKeyForAlternates = [(SCATAlternateKeysManager *)self currentKeyForAlternates];

  if (currentKeyForAlternates)
  {
    _fingerController = [(SCATAlternateKeysManager *)self _fingerController];
    currentKeyForAlternates2 = [(SCATAlternateKeysManager *)self currentKeyForAlternates];
    [(SCATAlternateKeysManager *)self _fingerControllerPointForKeyboardKey:currentKeyForAlternates2];
    [_fingerController performUpAtPoint:?];
  }

  [(SCATAlternateKeysManager *)self _cleanUpAlternateKeyOperations];
}

- (void)didFetchElements:(id)elements foundNewElements:(BOOL)newElements currentFocusContext:(id)context didChangeActiveElementManager:(BOOL)manager
{
  elementsCopy = elements;
  v7 = +[HNDAccessibilityManager sharedManager];
  firstKeyboardItem = [v7 firstKeyboardItem];

  if (!firstKeyboardItem)
  {
    [(SCATAlternateKeysManager *)self _releaseLastShownKey];
    [elementsCopy beginScanningWithFocusContext:0];
  }
}

- (BOOL)handleInputAction:(id)action withElement:(id)element
{
  actionCopy = action;
  elementCopy = element;
  if ([actionCopy action] == 100 || objc_msgSend(actionCopy, "action") == 103 || objc_msgSend(actionCopy, "action") == 109)
  {
    [(SCATAlternateKeysManager *)self _selectAlternateKey:elementCopy];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)accessibilityManager:(id)manager didReceiveEvent:(int64_t)event data:(id)data
{
  if (event == 9)
  {
    v6 = [(SCATAlternateKeysManager *)self currentKeyForAlternates:manager];

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