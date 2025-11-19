@interface PSListControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHandleNavigationControllerDidEndTransition;
- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4;
- (void)highlightSpecifierWithID:(id)a3;
@end

@implementation PSListControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PSListController" hasInstanceMethod:@"highlightSpecifierWithID:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PSRootController"];
  [v3 validateClass:@"PSRootController" isKindOfClass:@"UINavigationController"];
}

- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PSListControllerAccessibility;
  v7 = [(PSListControllerAccessibility *)&v13 loadSpecifiersFromPlistName:v6 target:a4];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __68__PSListControllerAccessibility_loadSpecifiersFromPlistName_target___block_invoke;
  v10[3] = &unk_29F2ED3C0;
  v11 = v6;
  v12 = self;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v10];

  return v7;
}

void __68__PSListControllerAccessibility_loadSpecifiersFromPlistName_target___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setProperty:v3 forKey:@"axStringsFileName"];
  v5 = [*(a1 + 40) safeValueForKey:@"bundle"];
  [v4 setProperty:v5 forKey:@"axBundle"];
}

- (void)highlightSpecifierWithID:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PSListControllerAccessibility;
  [(PSListControllerAccessibility *)&v15 highlightSpecifierWithID:v4];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v8 = v4;
  AXPerformSafeBlock();
  v5 = v10[5];

  _Block_object_dispose(&v9, 8);
  v6 = [v5 propertyForKey:*MEMORY[0x29EDC6358]];

  LODWORD(v5) = *MEMORY[0x29EDC7EA8];
  v7 = [v6 accessibilityValue];
  UIAccessibilityPostNotification(v5, v7);
}

uint64_t __58__PSListControllerAccessibility_highlightSpecifierWithID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) specifierForID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityHandleNavigationControllerDidEndTransition
{
  v32[2] = *MEMORY[0x29EDCA608];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [*MEMORY[0x29EDC8008] _accessibilityValueForKey:@"applicationDidBecomeActiveDate"];
    v4 = [MEMORY[0x29EDB8DB0] date];
    v5 = v4;
    if (v3 && ([v4 timeIntervalSinceDate:v3], v6 <= 1.0))
    {
    }

    else
    {
      v7 = [MEMORY[0x29EDB9F48] mainBundle];
      v8 = [v7 bundleIdentifier];
      v9 = [v8 isEqualToString:@"com.apple.Bridge"];

      if ((v9 & 1) == 0)
      {
        NSClassFromString(&cfstr_Uisplitviewcon_1.isa);
        v10 = [(PSListControllerAccessibility *)self safeValueForKey:@"view"];
        if (v10)
        {
          v11 = v10;
          while (1)
          {
            v12 = [v11 safeValueForKey:@"_viewDelegate"];
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            v13 = [v11 superview];

            v11 = v13;
            if (!v13)
            {
              goto LABEL_11;
            }
          }

          v17 = v12;
          if ([v17 isCollapsed])
          {
            v14 = 0;
LABEL_35:

            goto LABEL_12;
          }

          objc_opt_class();
          v18 = [(PSListControllerAccessibility *)self safeValueForKey:@"parentViewController"];
          v19 = __UIAccessibilityCastAsClass();

          v20 = [v19 navigationBar];
          v21 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
          v22 = [v20 _accessibilityLeafDescendantsWithOptions:v21];
          v23 = [v22 firstObject];

          if (v23)
          {
LABEL_16:
            v24 = *MEMORY[0x29EDC7F10];
            v32[0] = *MEMORY[0x29EDBDB28];
            v32[1] = v23;
            v25 = [MEMORY[0x29EDB8D80] arrayWithObjects:v32 count:2];
            UIAccessibilityPostNotification(v24, v25);

            v14 = 1;
            v26 = v23;
LABEL_33:

            goto LABEL_34;
          }

          v26 = [(PSListControllerAccessibility *)self safeValueForKey:@"_table"];
          if ([v26 _accessibilityHasOrderedChildren])
          {
            v27 = [v26 accessibilityElementCount];
            if (v27 >= 1)
            {
              v28 = v27;
              v29 = 0;
              while (1)
              {
                v23 = [v26 accessibilityElementAtIndex:v29];
                if (v23)
                {
                  do
                  {
                    if (![v23 _accessibilityHasOrderedChildren])
                    {
                      break;
                    }

                    if ([v23 accessibilityElementCount] < 1)
                    {
                      break;
                    }

                    v30 = [v23 accessibilityElementAtIndex:0];

                    v23 = v30;
                  }

                  while (v30);
                }

                [v23 accessibilityFrame];
                if (v31 > 1.0)
                {
                  break;
                }

                if (++v29 == v28)
                {
                  goto LABEL_32;
                }
              }

LABEL_29:

              if (!v23)
              {
                v14 = 0;
LABEL_34:

                goto LABEL_35;
              }

              goto LABEL_16;
            }
          }

          else
          {
            if ([v26 isAccessibilityOpaqueElementProvider])
            {
              v23 = [v26 _accessibilityFirstOpaqueElement];
              goto LABEL_29;
            }

            _AXAssert();
          }

LABEL_32:
          v14 = 0;
          goto LABEL_33;
        }
      }
    }
  }

LABEL_11:
  v14 = 0;
LABEL_12:
  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

@end