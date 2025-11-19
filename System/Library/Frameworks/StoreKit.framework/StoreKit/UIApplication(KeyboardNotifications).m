@interface UIApplication(KeyboardNotifications)
- (uint64_t)resignFirstResponderInScene:()KeyboardNotifications;
- (void)restoreFirstResponder;
@end

@implementation UIApplication(KeyboardNotifications)

- (uint64_t)resignFirstResponderInScene:()KeyboardNotifications
{
  v4 = [a3 keyWindow];
  if (v4)
  {
    [a1 setActiveFirstResponder:v4];
    v5 = [v4 endEditing:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)restoreFirstResponder
{
  v2 = [a1 activeFirstResponder];

  if (v2)
  {
    v3 = [a1 activeFirstResponder];
    [v3 becomeFirstResponder];
  }
}

@end