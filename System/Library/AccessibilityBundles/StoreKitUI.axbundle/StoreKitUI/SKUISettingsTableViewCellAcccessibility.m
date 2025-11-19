@interface SKUISettingsTableViewCellAcccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)_axLockupView;
- (id)_axViewContainsSwitch;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUISettingsTableViewCellAcccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUISettingsTableViewCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"SKUISettingsTableViewCell" hasInstanceVariable:@"_settingDescriptionView" withType:"SKUISettingDescriptionView"];
  [v3 validateClass:@"SKUIDefaultSettingDescriptionView" hasInstanceVariable:@"_viewReuseView" withType:"SKUIViewReuseView"];
  [v3 validateClass:@"SKUICheckboxFieldSettingDescriptionView"];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(SKUISettingsTableViewCellAcccessibility *)self safeValueForKey:@"_settingDescriptionView"];
  NSClassFromString(&cfstr_Skuieditprofil_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)_axLockupView
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = [(SKUISettingsTableViewCellAcccessibility *)self safeValueForKey:@"_settingDescriptionView"];
  NSClassFromString(&cfstr_Skuidefaultset.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"_viewReuseView"];
    [v3 subviews];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v16 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          NSClassFromString(&cfstr_Skuihorizontal_2.isa);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            NSClassFromString(&cfstr_Skuitabularloc_0.isa);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }

          v10 = v9;
          goto LABEL_15;
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v10 = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_15:
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (id)_axViewContainsSwitch
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = [(SKUISettingsTableViewCellAcccessibility *)self safeValueForKey:@"_settingDescriptionView"];
  NSClassFromString(&cfstr_Skuicheckboxfi.isa);
  if (objc_opt_isKindOfClass())
  {
    [v2 subviews];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v15 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          NSClassFromString(&cfstr_Uiswitch.isa);
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
            goto LABEL_13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

- (id)accessibilityLabel
{
  v3 = [(SKUISettingsTableViewCellAcccessibility *)self _axLockupView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityLabel];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SKUISettingsTableViewCellAcccessibility;
    v5 = [(SKUISettingsTableViewCellAcccessibility *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

- (id)accessibilityCustomActions
{
  v3 = [(SKUISettingsTableViewCellAcccessibility *)self _axLockupView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 accessibilityCustomActions];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SKUISettingsTableViewCellAcccessibility;
    v5 = [(SKUISettingsTableViewCellAcccessibility *)&v8 accessibilityCustomActions];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(SKUISettingsTableViewCellAcccessibility *)self _axViewContainsSwitch];

  if (v3)
  {
    v4 = [(SKUISettingsTableViewCellAcccessibility *)self _axViewContainsSwitch];
    v5 = [v4 accessibilityTraits];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SKUISettingsTableViewCellAcccessibility;
    return *MEMORY[0x29EDC7F70] | [(SKUISettingsTableViewCellAcccessibility *)&v7 accessibilityTraits];
  }
}

- (id)accessibilityValue
{
  v3 = [(SKUISettingsTableViewCellAcccessibility *)self _axViewContainsSwitch];

  if (v3)
  {
    v4 = [(SKUISettingsTableViewCellAcccessibility *)self _axViewContainsSwitch];
    v5 = [v4 accessibilityValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SKUISettingsTableViewCellAcccessibility;
    v5 = [(SKUISettingsTableViewCellAcccessibility *)&v7 accessibilityValue];
  }

  return v5;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(SKUISettingsTableViewCellAcccessibility *)self _axViewContainsSwitch];

  if (v3)
  {
    v4 = [(SKUISettingsTableViewCellAcccessibility *)self _axViewContainsSwitch];
    [v4 accessibilityActivationPoint];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SKUISettingsTableViewCellAcccessibility;
    [(SKUISettingsTableViewCellAcccessibility *)&v11 accessibilityActivationPoint];
  }

  result.y = v10;
  result.x = v9;
  return result;
}

@end