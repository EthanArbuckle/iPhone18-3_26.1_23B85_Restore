@interface SBIconAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axIconLabel;
- (id)_axIconValue;
- (id)_axIconView;
- (id)accessibilityIdentifier;
- (void)dealloc;
@end

@implementation SBIconAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBIcon" hasInstanceVariable:@"_observers" withType:"NSHashTable"];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"displayNameForLocation:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceVariable:@"_accessoryView" withType:"UIView<SBIconAccessoryView>"];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"badgeNumberOrString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconView" hasInstanceMethod:@"behaviorDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"SBIconViewBehaviorDelegate" hasOptionalInstanceMethod:@"iconViewDisplaysBadges:"];
  [validationsCopy validateClass:@"SBHLibraryViewController" conformsToProtocol:@"SBIconViewBehaviorDelegate"];
  [validationsCopy validateProtocol:@"SBIconAccessoryView" hasRequiredInstanceMethod:@"displayingAccessory"];
}

- (id)_axIconView
{
  v25 = *MEMORY[0x29EDCA608];
  buf[0] = 0;
  objc_opt_class();
  v3 = [(SBIconAccessibility *)self safeValueForKey:@"_observers"];
  v4 = __UIAccessibilityCastAsClass();

  NSClassFromString(&cfstr_Sbiconview.isa);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          window = [v10 window];

          if (window)
          {
            v12 = [v10 safeStringForKey:@"location"];
            if (!SBAXIsIconViewIgnoreLocation(v12))
            {
              v14 = AXLogUIA();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v21 = v10;
                v22 = 2112;
                selfCopy = self;
                _os_log_impl(&dword_29C3E1000, v14, OS_LOG_TYPE_INFO, "return observer: %@ for this icon: %@", buf, 0x16u);
              }

              v13 = v10;
              goto LABEL_16;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (id)_axIconLabel
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__2;
  v8 = __Block_byref_object_dispose__2;
  v9 = 0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __35__SBIconAccessibility__axIconLabel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = getSBIconLocationNone();
  v3 = [v2 displayNameForLocation:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)accessibilityIdentifier
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__2;
  v8 = __Block_byref_object_dispose__2;
  v9 = 0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __46__SBIconAccessibility_accessibilityIdentifier__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = getSBIconLocationNone();
  v3 = [v2 displayNameForLocation:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_axIconValue
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = [(SBIconAccessibility *)self safeValueForKey:@"badgeNumberOrString"];
  _axIconView = [(SBIconAccessibility *)self _axIconView];
  buf[0] = 0;
  objc_opt_class();
  v5 = [_axIconView safeValueForKey:@"_accessoryView"];
  v6 = __UIAccessibilityCastAsClass();

  if (v6)
  {
    v7 = [v6 safeBoolForKey:@"displayingAccessory"];
  }

  else
  {
    v8 = [_axIconView safeValueForKey:@"behaviorDelegate"];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      *buf = 0;
      *v23 = buf;
      *&v23[8] = 0x2020000000;
      v23[16] = 0;
      v21 = _axIconView;
      AXPerformSafeBlock();
      v7 = *(*v23 + 24);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = AXLogAppAccessibility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    *&buf[4] = v7;
    *v23 = 2112;
    *&v23[2] = v3;
    *&v23[10] = 2112;
    *&v23[12] = v6;
    _os_log_impl(&dword_29C3E1000, v10, OS_LOG_TYPE_INFO, "Showing badge: %d[%@] -> %@", buf, 0x1Cu);
  }

  _accessibilityBundleIdentifier = [(SBIconAccessibility *)self _accessibilityBundleIdentifier];
  v12 = _accessibilityBundleIdentifier;
  if (((v3 != 0) & v7) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [v3 intValue];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_19;
      }

      intValue2 = [v3 intValue];
      if (intValue2 < 1)
      {
        goto LABEL_19;
      }

      intValue = intValue2;
    }

    if (intValue >= 1)
    {
      if ([v12 isEqualToString:*MEMORY[0x29EDBD648]])
      {
        v16 = @"mail.badge.format";
      }

      else if ([v12 isEqualToString:@"com.apple.MobileSMS"])
      {
        v16 = @"messages.badge.format";
      }

      else if ([v12 isEqualToString:@"com.apple.mobilecal"])
      {
        v16 = @"calendar.badge.format";
      }

      else if ([v12 isEqualToString:@"com.apple.mobileslideshow"])
      {
        v16 = @"photos.badge.format";
      }

      else if ([v12 isEqualToString:@"com.apple.reminders"])
      {
        v16 = @"reminders.badge.format";
      }

      else if ([v12 isEqualToString:@"com.apple.AppStore"])
      {
        v16 = @"appstore.badge.format";
      }

      else if ([v12 isEqualToString:@"com.apple.facetime"])
      {
        v16 = @"facetime.badge.format";
      }

      else
      {
        v16 = @"badge.format";
      }

      v18 = MEMORY[0x29EDBA0F8];
      v19 = accessibilityLocalizedString(v16);
      v17 = [v18 localizedStringWithFormat:v19, intValue];

      goto LABEL_38;
    }

LABEL_19:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 isEqualToString:@"!"])
    {
      v14 = accessibilityLocalizedString(@"badge.exclamation");
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if ([_accessibilityBundleIdentifier isEqualToString:*MEMORY[0x29EDBD648]])
  {
    v14 = accessibilityLocalizedString(@"mail.badge.none");
LABEL_22:
    v17 = v14;
    goto LABEL_38;
  }

LABEL_23:
  v17 = 0;
LABEL_38:

  return v17;
}

void __35__SBIconAccessibility__axIconValue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"behaviorDelegate"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 iconViewDisplaysBadges:*(a1 + 32)];
}

- (void)dealloc
{
  [(SBIconAccessibility *)self _accessibilityUnregister];
  v3.receiver = self;
  v3.super_class = SBIconAccessibility;
  [(SBIconAccessibility *)&v3 dealloc];
}

@end