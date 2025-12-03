@interface UIBarButtonItem(SafariServicesExtras)
- (uint64_t)_sf_longPressEnabled;
- (void)_sf_setLongPressEnabled:()SafariServicesExtras;
- (void)_sf_setTarget:()SafariServicesExtras touchDownAction:longPressAction:;
- (void)_sf_test_simulateLongPressInvocation;
@end

@implementation UIBarButtonItem(SafariServicesExtras)

- (uint64_t)_sf_longPressEnabled
{
  _gestureRecognizers = [self _gestureRecognizers];
  firstObject = [_gestureRecognizers firstObject];

  isEnabled = [firstObject isEnabled];
  return isEnabled;
}

- (void)_sf_setLongPressEnabled:()SafariServicesExtras
{
  _gestureRecognizers = [self _gestureRecognizers];
  firstObject = [_gestureRecognizers firstObject];

  [firstObject setEnabled:a3];
}

- (void)_sf_setTarget:()SafariServicesExtras touchDownAction:longPressAction:
{
  v8[1] = *MEMORY[0x1E69E9840];
  v6 = [SFBarButtonItemLongPressGestureRecognizer gestureRecognizerTarget:a3 longPressAction:a5 touchDownAction:a4 attachedToBarButtonItem:self];
  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [self _setGestureRecognizers:v7];
}

- (void)_sf_test_simulateLongPressInvocation
{
  _gestureRecognizers = [self _gestureRecognizers];
  firstObject = [_gestureRecognizers firstObject];

  v2 = firstObject;
  if (firstObject)
  {
    [firstObject _invokeLongPressAction];
    v2 = firstObject;
  }
}

@end