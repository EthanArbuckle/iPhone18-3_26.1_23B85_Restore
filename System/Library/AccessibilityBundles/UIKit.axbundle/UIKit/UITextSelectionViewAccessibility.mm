@interface UITextSelectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)automationElements;
- (void)showCommandsWithReplacements:(id)replacements;
@end

@implementation UITextSelectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UITextSelectionView";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  v5 = "@";
  [location[0] validateClass:@"UITextSelectionView" hasInstanceMethod:@"showCommandsWithReplacements:" withFullSignature:{"v", "@", 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"menuInteraction" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"UITextContextMenuInteraction" hasInstanceMethod:@"editMenuInteraction" withFullSignature:{v5, 0}];
  v4 = @"UIEditMenuInteraction";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"activeEditMenuPresentation" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"_UIEditMenuContentPresentation" hasInstanceMethod:@"currentListView" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, v6);
}

- (id)automationElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(UITextSelectionViewAccessibility *)self safeValueForKey:@"m_rangeView"];
  v5 = [v3 axArrayByIgnoringNilElementsWithCount:{1, v4}];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (void)showCommandsWithReplacements:(id)replacements
{
  v25 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, replacements);
  v21.receiver = selfCopy;
  v21.super_class = UITextSelectionViewAccessibility;
  [(UITextSelectionViewAccessibility *)&v21 showCommandsWithReplacements:location[0]];
  v20 = [(UITextSelectionViewAccessibility *)selfCopy safeValueForKeyPath:@"menuInteraction.editMenuInteraction"];
  if ([v20 safeBoolForKey:@"isDisplayingMenu"])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], 0);
    _accessibilitySoftwareKeyboardActive = [*MEMORY[0x29EDC8008] _accessibilitySoftwareKeyboardActive];
    v17 = 0;
    v15 = 0;
    v10 = 0;
    if ((_accessibilitySoftwareKeyboardActive & 1) == 0)
    {
      activeInstance = [MEMORY[0x29EDC7B08] activeInstance];
      v17 = 1;
      inputDelegate = [activeInstance inputDelegate];
      v15 = 1;
      v10 = inputDelegate != 0;
    }

    if (v15)
    {
      MEMORY[0x29EDC9740](inputDelegate);
    }

    if (v17)
    {
      MEMORY[0x29EDC9740](activeInstance);
    }

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        memset(__b, 0, sizeof(__b));
        obj = MEMORY[0x29EDC9748](location[0]);
        v9 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
        if (v9)
        {
          v5 = *__b[2];
          v6 = 0;
          v7 = v9;
          while (1)
          {
            v4 = v6;
            if (*__b[2] != v5)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(__b[1] + 8 * v6);
            v12 = [location[0] objectForKey:v14];
            NSClassFromString(&cfstr_Uitextreplacem.isa);
            if (objc_opt_isKindOfClass())
            {
              argument = [v20 safeValueForKeyPath:@"activeEditMenuPresentation.currentListView"];
              if (argument)
              {
                UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], argument);
              }

              v19 = 2;
              objc_storeStrong(&argument, 0);
            }

            else
            {
              v19 = 0;
            }

            objc_storeStrong(&v12, 0);
            if (v19)
            {
              break;
            }

            ++v6;
            if (v4 + 1 >= v7)
            {
              v6 = 0;
              v7 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
              if (!v7)
              {
                goto LABEL_23;
              }
            }
          }
        }

        else
        {
LABEL_23:
          v19 = 0;
        }

        MEMORY[0x29EDC9740](obj);
      }
    }

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

@end