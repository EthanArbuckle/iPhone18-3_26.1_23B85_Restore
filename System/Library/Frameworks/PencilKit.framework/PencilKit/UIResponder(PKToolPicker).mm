@interface UIResponder(PKToolPicker)
- (PKResponderState)pencilKitResponderState;
- (uint64_t)setPencilKitResponderState:()PKToolPicker;
@end

@implementation UIResponder(PKToolPicker)

- (uint64_t)setPencilKitResponderState:()PKToolPicker
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.pencilkit", "PKResponderState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "set pencilKit responder state for responder: %p", &v9, 0xCu);
  }

  if (!_responderPKConfigurations)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v7 = _responderPKConfigurations;
    _responderPKConfigurations = weakToStrongObjectsMapTable;
  }

  [v4 set_responder:self];
  [_responderPKConfigurations setObject:v4 forKey:self];

  result = [self isFirstResponder];
  if (result)
  {
    return [PKToolPicker _updateToolPickerVisibilityForFirstResponder:self];
  }

  return result;
}

- (PKResponderState)pencilKitResponderState
{
  v2 = _responderPKConfigurations;
  if (!_responderPKConfigurations)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v4 = _responderPKConfigurations;
    _responderPKConfigurations = weakToStrongObjectsMapTable;

    v2 = _responderPKConfigurations;
  }

  v5 = [v2 objectForKey:self];
  if (!v5)
  {
    v5 = objc_alloc_init(PKResponderState);
    [(PKResponderState *)v5 set_responder:self];
    [_responderPKConfigurations setObject:v5 forKey:self];
  }

  return v5;
}

@end