@interface UIAccessibilityBackButtonElement
- (BOOL)_accessibilityHasNativeFocus;
- (BOOL)accessibilityActivate;
@end

@implementation UIAccessibilityBackButtonElement

- (BOOL)_accessibilityHasNativeFocus
{
  v16 = *MEMORY[0x29EDCA608];
  v13 = self;
  v12 = a2;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](v13->_associatedViews);
  v8 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v5);
      if ([v11 _accessibilityHasNativeFocus])
      {
        break;
      }

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    v14 = 1;
    v9 = 1;
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  MEMORY[0x29EDC9740](obj);
  if (!v9)
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)accessibilityActivate
{
  v5 = self;
  v4 = a2;
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  v3.receiver = v5;
  v3.super_class = UIAccessibilityBackButtonElement;
  return [(UIAccessibilityBackButtonElement *)&v3 accessibilityActivate];
}

@end