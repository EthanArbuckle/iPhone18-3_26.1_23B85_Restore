@interface PSTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
+ (void)_setAccessibilityData:(id)a3 onCell:(id)a4;
- (BOOL)_accessibilityLanguageOverriddesUser;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isAccessibilityElement;
- (CGPoint)_accessibilityMaxScrubberPosition;
- (CGPoint)_accessibilityMinScrubberPosition;
- (CGPoint)accessibilityActivationPoint;
- (PSTableCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityLoadAccessibilityInformationWithSpecifier:(id)a3;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PSTableCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"PSTableCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PSControlTableCell" hasInstanceMethod:@"control" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UITableViewCellAccessibility" hasInstanceMethod:@"_accessibilityPerformableActions" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PSTableCell" hasInstanceMethod:@"canPerformAction:withSender:" withFullSignature:{"B", ":", "@", 0}];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = PSTableCellAccessibility;
  [(PSTableCellAccessibility *)&v5 refreshCellContentsWithSpecifier:a3];
  NSSelectorFromString(&cfstr_Accessibilitys.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0 || [(PSTableCellAccessibility *)self safeBoolForKey:@"_accessibilityShouldClearChildren"])
  {
    v4 = [(PSTableCellAccessibility *)self safeValueForKey:@"_accessibilityClearChildren"];
  }
}

+ (void)_setAccessibilityData:(id)a3 onCell:(id)a4
{
  v23 = a3;
  v5 = a4;
  v6 = [v23 accessibilityLabel];
  v7 = v23;
  if (!v6)
  {
    v6 = [v23 propertyForKey:@"accessibilityLabel"];
    if (v6)
    {
      v8 = [v23 propertyForKey:@"axBundle"];
      v9 = [v23 propertyForKey:@"axStringsFileName"];
      v10 = [v8 localizedStringForKey:v6 value:&stru_2A22A8370 table:v9];
      if ([v10 length])
      {
        [v5 setAccessibilityLabel:v10];
      }
    }

    v7 = v23;
  }

  v11 = [v7 propertyForKey:@"accessibilityHint"];
  if (v11)
  {
    v12 = [v23 propertyForKey:@"axBundle"];
    v13 = [v23 propertyForKey:@"axStringsFileName"];
    v14 = [v12 localizedStringForKey:v11 value:&stru_2A22A8370 table:v13];
    if ([v14 length])
    {
      [v5 setAccessibilityHint:v14];
    }
  }

  v15 = [v23 accessibilityIdentification];

  if (v15)
  {
    v16 = [v23 accessibilityIdentification];
    [v5 accessibilitySetIdentification:v16];
  }

  v17 = [v23 accessibilityLanguage];

  if (v17)
  {
    v18 = [v23 accessibilityLanguage];
    [v5 setAccessibilityLanguage:v18];
  }

  v19 = [v23 propertyForKey:@"accessibilityGet"];
  if (v19)
  {
    [v5 _accessibilitySetRetainedValue:v19 forKey:@"accessibilityStatusGetter"];
    v20 = [v23 target];
    [v5 _accessibilitySetRetainedValue:v20 forKey:@"accessibilityStatusTarget"];
  }

  v21 = [v23 propertyForKey:@"isAccessibilityElement"];
  v22 = v21;
  if (v21 && ([v21 BOOLValue] & 1) == 0)
  {
    [v5 setAccessibilityTraits:*MEMORY[0x29EDC7578]];
  }
}

- (BOOL)_accessibilityLanguageOverriddesUser
{
  v3 = [(PSTableCellAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"LanguageCell"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = PSTableCellAccessibility;
  return [(PSTableCellAccessibility *)&v6 _accessibilityLanguageOverriddesUser];
}

- (PSTableCellAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v10.receiver = self;
  v10.super_class = PSTableCellAccessibility;
  v7 = a5;
  v8 = [(PSTableCellAccessibility *)&v10 initWithStyle:a3 reuseIdentifier:a4 specifier:v7];
  [(PSTableCellAccessibility *)v8 _accessibilityLoadAccessibilityInformationWithSpecifier:v7, v10.receiver, v10.super_class];

  return v8;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PSTableCellAccessibility;
  [(PSTableCellAccessibility *)&v3 prepareForReuse];
  [(PSTableCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PSTableCellAccessibility;
  [(PSTableCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PSTableCellAccessibility *)self safeValueForKey:@"specifier"];
  [(PSTableCellAccessibility *)self _accessibilityLoadAccessibilityInformationWithSpecifier:v3];
}

- (void)_accessibilityLoadAccessibilityInformationWithSpecifier:(id)a3
{
  v4 = a3;
  [objc_opt_class() _setAccessibilityData:v4 onCell:self];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PSTableCellAccessibility *)self type];
  if ([v7 _accessibilityAutomationHitTest] && (v8 - 5) <= 1)
  {
    v9 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    [v9 convertPoint:self fromView:{x, y}];
    if ([v9 pointInside:v7 withEvent:?])
    {
      if ([v9 isAccessibilityElement])
      {
        v10 = v9;
      }

      else
      {
        [v9 convertPoint:self fromView:{x, y}];
        v10 = [v9 _accessibilityHitTest:v7 withEvent:?];
      }

      v11 = v10;

      goto LABEL_10;
    }
  }

  v13.receiver = self;
  v13.super_class = PSTableCellAccessibility;
  v11 = [(PSTableCellAccessibility *)&v13 _accessibilityHitTest:v7 withEvent:x, y];
LABEL_10:

  return v11;
}

- (id)automationElements
{
  if (([(PSTableCellAccessibility *)self type]- 5) > 1)
  {
    v9.receiver = self;
    v9.super_class = PSTableCellAccessibility;
    v7 = [(PSTableCellAccessibility *)&v9 automationElements];
  }

  else
  {
    v3 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    v4 = [(PSTableCellAccessibility *)self safeValueForKey:@"titleLabel"];
    v5 = [(PSTableCellAccessibility *)self safeValueForKey:@"valueLabel"];
    v6 = [MEMORY[0x29EDB8DE8] array];
    v7 = v6;
    if (v4)
    {
      [v6 addObject:v4];
    }

    if (v5)
    {
      [v7 addObject:v5];
    }

    if (v3)
    {
      [v7 addObject:v3];
    }
  }

  return v7;
}

- (BOOL)isAccessibilityElement
{
  if ([(PSTableCellAccessibility *)self type]== 5)
  {
    v3 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    v4 = [v3 isAccessibilityElement];

    return v4;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PSTableCellAccessibility;
    return [(PSTableCellAccessibility *)&v6 isAccessibilityElement];
  }
}

- (unint64_t)accessibilityTraits
{
  v16.receiver = self;
  v16.super_class = PSTableCellAccessibility;
  v3 = [(PSTableCellAccessibility *)&v16 accessibilityTraits];
  if (([(PSTableCellAccessibility *)self type]- 5) <= 1)
  {
    v4 = [(PSTableCellAccessibility *)self safeUIViewForKey:@"control"];
    if (![v4 isHidden])
    {
      v13 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
      v14 = [v13 accessibilityTraits] | v3;

      v12 = v14 & ~*MEMORY[0x29EDC7578];
      return v12;
    }
  }

  if (([(PSTableCellAccessibility *)self safeBoolForKey:@"_checked"]& 1) != 0 || [(PSTableCellAccessibility *)self safeBoolForKey:@"isSelected"])
  {
    v3 |= *MEMORY[0x29EDC7FC0];
  }

  v5 = [(PSTableCellAccessibility *)self safeBoolForKey:@"cellEnabled"];
  v6 = *MEMORY[0x29EDC7FA8];
  if (v5)
  {
    v6 = 0;
  }

  v7 = v6 | v3;
  v8 = [(PSTableCellAccessibility *)self safeValueForKey:@"tag"];
  v9 = [v8 intValue];

  v10 = *MEMORY[0x29EDC7F70] | v7;
  if (((1 << v9) & 0x2006) == 0)
  {
    v10 = v7;
  }

  if (v9 > 0xD)
  {
    v10 = v7;
  }

  if ((*MEMORY[0x29EDC7F70] & v7) != 0 && v9 == 4)
  {
    return *MEMORY[0x29EDC7F70] ^ v7;
  }

  else
  {
    return v10;
  }
}

- (id)accessibilityLabel
{
  v3 = [(PSTableCellAccessibility *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"appleid"])
  {
    v4 = @"mail.appleid.text";
LABEL_19:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_20;
  }

  if ([v3 isEqualToString:@"mobileme"])
  {
    v4 = @"mail.mobileme.text";
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"mail-gmail"])
  {
    v4 = @"mail.gmail.text";
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"mail-yahoo"])
  {
    v4 = @"mail.yahoo.text";
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"mail-aol"])
  {
    v4 = @"mail.aol.text";
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"mail-hotmail"])
  {
    v4 = @"mail.outlook.text";
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"mail-exchange"])
  {
    v4 = @"mail.exchange.text";
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"KeyboardPeriodShortcut"])
  {
    v4 = @"keyboard.period.shortcut";
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"ShakeToShuffle"])
  {
    v4 = @"shake.to.shuffle";
    goto LABEL_19;
  }

  v7 = [(PSTableCellAccessibility *)self type];
  if (v7 == 5)
  {
    v8 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    v9 = [v8 accessibilityLabel];
    goto LABEL_25;
  }

  v10 = v7;
  v11 = [(PSTableCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v8 = [v11 accessibilityLabel];

  if (![v8 length])
  {
    v14 = [(PSTableCellAccessibility *)self specifier];
    v15 = [v14 propertyForKey:*MEMORY[0x29EDC6330]];
    v16 = [v15 isEqualToString:@"AccountPSDetailController"];

    if (v16)
    {
      v17 = [v14 propertyForKey:*MEMORY[0x29EDC6310]];
      v18 = [v17 accessibilityIdentifier];

      if ([v18 hasPrefix:@"126"])
      {
        v19 = @"chinese.126.mail.account";
LABEL_41:
        v5 = accessibilityLocalizedString(v19);

LABEL_47:
        goto LABEL_48;
      }

      if ([v18 hasPrefix:@"163"])
      {
        v19 = @"chinese.163.mail.account";
        goto LABEL_41;
      }

      if ([v18 hasPrefix:@"qq"])
      {
        v19 = @"chinese.qq.mail.account";
        goto LABEL_41;
      }
    }

    v21 = [v14 accessibilityLabel];
    v22 = [v21 length];

    if (v22)
    {
      v23 = [v14 accessibilityLabel];
    }

    else
    {
      v25.receiver = self;
      v25.super_class = PSTableCellAccessibility;
      v23 = [(PSTableCellAccessibility *)&v25 accessibilityLabel];
    }

    v5 = v23;
    goto LABEL_47;
  }

  v12 = [(PSTableCellAccessibility *)self accessibilityIdentification];
  v13 = [v12 isEqualToString:@"LanguageCell"];

  if (v13)
  {
    v5 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v8];
    v14 = [(PSTableCellAccessibility *)self accessibilityLanguage];
    if (!v14)
    {
      v14 = [(PSTableCellAccessibility *)self _accessibilityValueForKey:@"axLanguage"];
    }

    [v5 setAttribute:v14 forKey:*MEMORY[0x29EDBD950]];
    goto LABEL_47;
  }

  if (v10 == 6)
  {
    v20 = [(PSTableCellAccessibility *)self safeValueForKey:@"detailTextLabel"];
    v24 = [v20 accessibilityLabel];
    v5 = __UIAXStringForVariables();

    goto LABEL_48;
  }

  v9 = v8;
LABEL_25:
  v5 = v9;
LABEL_48:

LABEL_20:

  return v5;
}

- (CGPoint)accessibilityActivationPoint
{
  if (([(PSTableCellAccessibility *)self type]- 5) > 1)
  {
    v10.receiver = self;
    v10.super_class = PSTableCellAccessibility;
    [(PSTableCellAccessibility *)&v10 accessibilityActivationPoint];
  }

  else
  {
    v3 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    [v3 accessibilityActivationPoint];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (id)accessibilityValue
{
  if (([(PSTableCellAccessibility *)self type]- 5) > 1)
  {
LABEL_6:
    v7 = [(PSTableCellAccessibility *)self _accessibilityValueForKey:@"accessibilityStatusGetter"];
    v8 = [(PSTableCellAccessibility *)self _accessibilityValueForKey:@"accessibilityStatusTarget"];
    if (v8 && v7 && (NSSelectorFromString(v7), (objc_opt_respondsToSelector() & 1) != 0))
    {
      v9 = [v8 performSelector:NSSelectorFromString(v7) withObject:0];
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = [(PSTableCellAccessibility *)self safeValueForKey:@"detailTextLabel"];
      v9 = [v10 accessibilityLabel];

      if (!v9)
      {
        goto LABEL_13;
      }
    }

    v11 = [(PSTableCellAccessibility *)self safeValueForKey:@"detailTextLabel"];
    v12 = [v11 _accessibilityViewIsVisible];

    if (v12)
    {
LABEL_14:
      if ([v9 length])
      {
        v15 = v9;
      }

      else
      {
        v17.receiver = self;
        v17.super_class = PSTableCellAccessibility;
        v15 = [(PSTableCellAccessibility *)&v17 accessibilityValue];
      }

      v6 = v15;

      goto LABEL_18;
    }

LABEL_13:
    v13 = [(PSTableCellAccessibility *)self safeValueForKey:@"valueLabel"];
    v14 = [v13 accessibilityLabel];

    v9 = v14;
    goto LABEL_14;
  }

  v3 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
  v4 = v3;
  if (!v3 || ([v3 _accessibilityViewIsVisible] & 1) == 0)
  {

    goto LABEL_6;
  }

  v5 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
  v6 = [v5 accessibilityValue];

LABEL_18:

  return v6;
}

- (void)accessibilityIncrement
{
  if ([(PSTableCellAccessibility *)self type]== 5)
  {
    v3 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    [v3 accessibilityTraits];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = PSTableCellAccessibility;
    [(PSTableCellAccessibility *)&v4 accessibilityIncrement];
  }
}

- (void)accessibilityDecrement
{
  if ([(PSTableCellAccessibility *)self type]== 5)
  {
    v3 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    [v3 accessibilityTraits];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = PSTableCellAccessibility;
    [(PSTableCellAccessibility *)&v4 accessibilityDecrement];
  }
}

- (id)accessibilityHint
{
  if ((-[PSTableCellAccessibility type](self, "type") - 5) > 1 || (-[PSTableCellAccessibility safeValueForKey:](self, "safeValueForKey:", @"control"), v3 = objc_claimAutoreleasedReturnValue(), [v3 accessibilityHint], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v6.receiver = self;
    v6.super_class = PSTableCellAccessibility;
    v4 = [(PSTableCellAccessibility *)&v6 accessibilityHint];
  }

  return v4;
}

- (CGPoint)_accessibilityMinScrubberPosition
{
  if ([(PSTableCellAccessibility *)self type]== 5)
  {
    v3 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    [v3 _accessibilityMinScrubberPosition];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PSTableCellAccessibility;
    [(PSTableCellAccessibility *)&v10 _accessibilityMinScrubberPosition];
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_accessibilityMaxScrubberPosition
{
  if ([(PSTableCellAccessibility *)self type]== 5)
  {
    v3 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    [v3 _accessibilityMaxScrubberPosition];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PSTableCellAccessibility;
    [(PSTableCellAccessibility *)&v10 _accessibilityMaxScrubberPosition];
  }

  result.y = v9;
  result.x = v8;
  return result;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  v6.receiver = self;
  v6.super_class = PSTableCellAccessibility;
  if ([(PSTableCellAccessibility *)&v6 accessibilityRespondsToUserInteraction])
  {
    return 1;
  }

  v4 = [(PSTableCellAccessibility *)self safeValueForKey:@"cellTarget"];
  v3 = v4 != 0;

  return v3;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v10.receiver = self;
  v10.super_class = PSTableCellAccessibility;
  if ([(PSTableCellAccessibility *)&v10 canPerformAction:a3 withSender:a4])
  {
    return 1;
  }

  if (![(PSTableCellAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    return 0;
  }

  v7 = [(PSTableCellAccessibility *)self safeArrayForKey:@"_accessibilityPerformableActions"];
  v8 = NSStringFromSelector(a3);
  v6 = [v7 containsObject:v8];

  return v6;
}

@end