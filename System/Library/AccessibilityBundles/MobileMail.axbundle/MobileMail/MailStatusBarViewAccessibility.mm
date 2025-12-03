@interface MailStatusBarViewAccessibility
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
@end

@implementation MailStatusBarViewAccessibility

- (id)accessibilityLabel
{
  v14 = *MEMORY[0x29EDCA608];
  [(MailStatusBarViewAccessibility *)self safeArrayForKey:@"subviews"];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  accessibilityLabel = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (accessibilityLabel)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != accessibilityLabel; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 _accessibilityViewIsVisible])
        {
          accessibilityLabel = [v6 accessibilityLabel];
          goto LABEL_11;
        }
      }

      accessibilityLabel = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (accessibilityLabel)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x29EDCA608];

  return accessibilityLabel;
}

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(MailStatusBarViewAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

- (CGRect)accessibilityFrame
{
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __52__MailStatusBarViewAccessibility_accessibilityFrame__block_invoke;
  v15[3] = &unk_29F2D41E8;
  v15[4] = self;
  v2 = [(MailStatusBarViewAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:v15];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

BOOL __52__MailStatusBarViewAccessibility_accessibilityFrame__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAccessibilityElement])
  {
    v4 = *(a1 + 32) != v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end