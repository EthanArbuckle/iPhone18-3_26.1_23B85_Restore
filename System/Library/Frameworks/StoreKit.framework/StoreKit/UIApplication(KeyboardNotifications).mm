@interface UIApplication(KeyboardNotifications)
- (uint64_t)resignFirstResponderInScene:()KeyboardNotifications;
- (void)restoreFirstResponder;
@end

@implementation UIApplication(KeyboardNotifications)

- (uint64_t)resignFirstResponderInScene:()KeyboardNotifications
{
  keyWindow = [a3 keyWindow];
  if (keyWindow)
  {
    [self setActiveFirstResponder:keyWindow];
    v5 = [keyWindow endEditing:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)restoreFirstResponder
{
  activeFirstResponder = [self activeFirstResponder];

  if (activeFirstResponder)
  {
    activeFirstResponder2 = [self activeFirstResponder];
    [activeFirstResponder2 becomeFirstResponder];
  }
}

@end