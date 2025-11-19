@interface UIKeyboardEmojiSectionHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityElementsHidden;
- (unint64_t)accessibilityTraits;
@end

@implementation UIKeyboardEmojiSectionHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIKeyboardEmojiSectionHeader" hasInstanceMethod:@"headerName" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)accessibilityElementsHidden
{
  v24 = *MEMORY[0x29EDCA608];
  v21 = self;
  v20 = a2;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v19 = [(UIKeyboardEmojiSectionHeaderAccessibility *)v21 _accessibilityIntegerValueForKey:@"emojiCategory"];
    v18 = [(UIKeyboardEmojiSectionHeaderAccessibility *)v21 _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uikeyboardemoj_11.isa)];
    v9 = [v18 superview];
    v17 = [v9 subviews];
    MEMORY[0x29EDC9740](v9);
    location = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v17);
    v11 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
    if (v11)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v11;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(__b[1] + 8 * v7);
        NSClassFromString(&cfstr_Uikeyboardemoj_1.isa);
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
          if (!v8)
          {
            goto LABEL_10;
          }
        }
      }

      objc_storeStrong(&location, v15);
      v13 = 2;
    }

    else
    {
LABEL_10:
      v13 = 0;
    }

    *&v2 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    v3 = [location safeIntegerForKey:{@"selectedIndex", v2}];
    v22 = v3 != v19;
    v13 = 1;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v12.receiver = v21;
    v12.super_class = UIKeyboardEmojiSectionHeaderAccessibility;
    v22 = [(UIKeyboardEmojiSectionHeaderAccessibility *)&v12 accessibilityElementsHidden];
  }

  return v22 & 1;
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIKeyboardEmojiSectionHeaderAccessibility;
  return [(UIKeyboardEmojiSectionHeaderAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F80];
}

@end