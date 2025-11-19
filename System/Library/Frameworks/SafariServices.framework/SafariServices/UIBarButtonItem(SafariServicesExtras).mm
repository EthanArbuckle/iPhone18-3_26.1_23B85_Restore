@interface UIBarButtonItem(SafariServicesExtras)
- (uint64_t)_sf_longPressEnabled;
- (void)_sf_setLongPressEnabled:()SafariServicesExtras;
- (void)_sf_setTarget:()SafariServicesExtras touchDownAction:longPressAction:;
- (void)_sf_test_simulateLongPressInvocation;
@end

@implementation UIBarButtonItem(SafariServicesExtras)

- (uint64_t)_sf_longPressEnabled
{
  v1 = [a1 _gestureRecognizers];
  v2 = [v1 firstObject];

  v3 = [v2 isEnabled];
  return v3;
}

- (void)_sf_setLongPressEnabled:()SafariServicesExtras
{
  v4 = [a1 _gestureRecognizers];
  v5 = [v4 firstObject];

  [v5 setEnabled:a3];
}

- (void)_sf_setTarget:()SafariServicesExtras touchDownAction:longPressAction:
{
  v8[1] = *MEMORY[0x1E69E9840];
  v6 = [SFBarButtonItemLongPressGestureRecognizer gestureRecognizerTarget:a3 longPressAction:a5 touchDownAction:a4 attachedToBarButtonItem:a1];
  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [a1 _setGestureRecognizers:v7];
}

- (void)_sf_test_simulateLongPressInvocation
{
  v1 = [a1 _gestureRecognizers];
  v3 = [v1 firstObject];

  v2 = v3;
  if (v3)
  {
    [v3 _invokeLongPressAction];
    v2 = v3;
  }
}

@end