@interface PSTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
+ (void)_setAccessibilityData:(id)data onCell:(id)cell;
- (BOOL)_accessibilityLanguageOverriddesUser;
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isAccessibilityElement;
- (CGPoint)_accessibilityMaxScrubberPosition;
- (CGPoint)_accessibilityMinScrubberPosition;
- (CGPoint)accessibilityActivationPoint;
- (PSTableCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityLoadAccessibilityInformationWithSpecifier:(id)specifier;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PSTableCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"PSTableCell" hasInstanceMethod:@"refreshCellContentsWithSpecifier:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PSControlTableCell" hasInstanceMethod:@"control" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITableViewCellAccessibility" hasInstanceMethod:@"_accessibilityPerformableActions" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PSTableCell" hasInstanceMethod:@"canPerformAction:withSender:" withFullSignature:{"B", ":", "@", 0}];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = PSTableCellAccessibility;
  [(PSTableCellAccessibility *)&v5 refreshCellContentsWithSpecifier:specifier];
  NSSelectorFromString(&cfstr_Accessibilitys.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0 || [(PSTableCellAccessibility *)self safeBoolForKey:@"_accessibilityShouldClearChildren"])
  {
    v4 = [(PSTableCellAccessibility *)self safeValueForKey:@"_accessibilityClearChildren"];
  }
}

+ (void)_setAccessibilityData:(id)data onCell:(id)cell
{
  dataCopy = data;
  cellCopy = cell;
  accessibilityLabel = [dataCopy accessibilityLabel];
  v7 = dataCopy;
  if (!accessibilityLabel)
  {
    accessibilityLabel = [dataCopy propertyForKey:@"accessibilityLabel"];
    if (accessibilityLabel)
    {
      v8 = [dataCopy propertyForKey:@"axBundle"];
      v9 = [dataCopy propertyForKey:@"axStringsFileName"];
      v10 = [v8 localizedStringForKey:accessibilityLabel value:&stru_2A22A8370 table:v9];
      if ([v10 length])
      {
        [cellCopy setAccessibilityLabel:v10];
      }
    }

    v7 = dataCopy;
  }

  v11 = [v7 propertyForKey:@"accessibilityHint"];
  if (v11)
  {
    v12 = [dataCopy propertyForKey:@"axBundle"];
    v13 = [dataCopy propertyForKey:@"axStringsFileName"];
    v14 = [v12 localizedStringForKey:v11 value:&stru_2A22A8370 table:v13];
    if ([v14 length])
    {
      [cellCopy setAccessibilityHint:v14];
    }
  }

  accessibilityIdentification = [dataCopy accessibilityIdentification];

  if (accessibilityIdentification)
  {
    accessibilityIdentification2 = [dataCopy accessibilityIdentification];
    [cellCopy accessibilitySetIdentification:accessibilityIdentification2];
  }

  accessibilityLanguage = [dataCopy accessibilityLanguage];

  if (accessibilityLanguage)
  {
    accessibilityLanguage2 = [dataCopy accessibilityLanguage];
    [cellCopy setAccessibilityLanguage:accessibilityLanguage2];
  }

  v19 = [dataCopy propertyForKey:@"accessibilityGet"];
  if (v19)
  {
    [cellCopy _accessibilitySetRetainedValue:v19 forKey:@"accessibilityStatusGetter"];
    target = [dataCopy target];
    [cellCopy _accessibilitySetRetainedValue:target forKey:@"accessibilityStatusTarget"];
  }

  v21 = [dataCopy propertyForKey:@"isAccessibilityElement"];
  v22 = v21;
  if (v21 && ([v21 BOOLValue] & 1) == 0)
  {
    [cellCopy setAccessibilityTraits:*MEMORY[0x29EDC7578]];
  }
}

- (BOOL)_accessibilityLanguageOverriddesUser
{
  accessibilityIdentification = [(PSTableCellAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"LanguageCell"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = PSTableCellAccessibility;
  return [(PSTableCellAccessibility *)&v6 _accessibilityLanguageOverriddesUser];
}

- (PSTableCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v10.receiver = self;
  v10.super_class = PSTableCellAccessibility;
  specifierCopy = specifier;
  v8 = [(PSTableCellAccessibility *)&v10 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  [(PSTableCellAccessibility *)v8 _accessibilityLoadAccessibilityInformationWithSpecifier:specifierCopy, v10.receiver, v10.super_class];

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

- (void)_accessibilityLoadAccessibilityInformationWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [objc_opt_class() _setAccessibilityData:specifierCopy onCell:self];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  type = [(PSTableCellAccessibility *)self type];
  if ([eventCopy _accessibilityAutomationHitTest] && (type - 5) <= 1)
  {
    v9 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    [v9 convertPoint:self fromView:{x, y}];
    if ([v9 pointInside:eventCopy withEvent:?])
    {
      if ([v9 isAccessibilityElement])
      {
        v10 = v9;
      }

      else
      {
        [v9 convertPoint:self fromView:{x, y}];
        v10 = [v9 _accessibilityHitTest:eventCopy withEvent:?];
      }

      v11 = v10;

      goto LABEL_10;
    }
  }

  v13.receiver = self;
  v13.super_class = PSTableCellAccessibility;
  v11 = [(PSTableCellAccessibility *)&v13 _accessibilityHitTest:eventCopy withEvent:x, y];
LABEL_10:

  return v11;
}

- (id)automationElements
{
  if (([(PSTableCellAccessibility *)self type]- 5) > 1)
  {
    v9.receiver = self;
    v9.super_class = PSTableCellAccessibility;
    automationElements = [(PSTableCellAccessibility *)&v9 automationElements];
  }

  else
  {
    v3 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    v4 = [(PSTableCellAccessibility *)self safeValueForKey:@"titleLabel"];
    v5 = [(PSTableCellAccessibility *)self safeValueForKey:@"valueLabel"];
    array = [MEMORY[0x29EDB8DE8] array];
    automationElements = array;
    if (v4)
    {
      [array addObject:v4];
    }

    if (v5)
    {
      [automationElements addObject:v5];
    }

    if (v3)
    {
      [automationElements addObject:v3];
    }
  }

  return automationElements;
}

- (BOOL)isAccessibilityElement
{
  if ([(PSTableCellAccessibility *)self type]== 5)
  {
    v3 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    isAccessibilityElement = [v3 isAccessibilityElement];

    return isAccessibilityElement;
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
  accessibilityTraits = [(PSTableCellAccessibility *)&v16 accessibilityTraits];
  if (([(PSTableCellAccessibility *)self type]- 5) <= 1)
  {
    v4 = [(PSTableCellAccessibility *)self safeUIViewForKey:@"control"];
    if (![v4 isHidden])
    {
      v13 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
      v14 = [v13 accessibilityTraits] | accessibilityTraits;

      v12 = v14 & ~*MEMORY[0x29EDC7578];
      return v12;
    }
  }

  if (([(PSTableCellAccessibility *)self safeBoolForKey:@"_checked"]& 1) != 0 || [(PSTableCellAccessibility *)self safeBoolForKey:@"isSelected"])
  {
    accessibilityTraits |= *MEMORY[0x29EDC7FC0];
  }

  v5 = [(PSTableCellAccessibility *)self safeBoolForKey:@"cellEnabled"];
  v6 = *MEMORY[0x29EDC7FA8];
  if (v5)
  {
    v6 = 0;
  }

  v7 = v6 | accessibilityTraits;
  v8 = [(PSTableCellAccessibility *)self safeValueForKey:@"tag"];
  intValue = [v8 intValue];

  v10 = *MEMORY[0x29EDC7F70] | v7;
  if (((1 << intValue) & 0x2006) == 0)
  {
    v10 = v7;
  }

  if (intValue > 0xD)
  {
    v10 = v7;
  }

  if ((*MEMORY[0x29EDC7F70] & v7) != 0 && intValue == 4)
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
  accessibilityIdentification = [(PSTableCellAccessibility *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"appleid"])
  {
    v4 = @"mail.appleid.text";
LABEL_19:
    v5 = accessibilityLocalizedString(v4);
    goto LABEL_20;
  }

  if ([accessibilityIdentification isEqualToString:@"mobileme"])
  {
    v4 = @"mail.mobileme.text";
    goto LABEL_19;
  }

  if ([accessibilityIdentification isEqualToString:@"mail-gmail"])
  {
    v4 = @"mail.gmail.text";
    goto LABEL_19;
  }

  if ([accessibilityIdentification isEqualToString:@"mail-yahoo"])
  {
    v4 = @"mail.yahoo.text";
    goto LABEL_19;
  }

  if ([accessibilityIdentification isEqualToString:@"mail-aol"])
  {
    v4 = @"mail.aol.text";
    goto LABEL_19;
  }

  if ([accessibilityIdentification isEqualToString:@"mail-hotmail"])
  {
    v4 = @"mail.outlook.text";
    goto LABEL_19;
  }

  if ([accessibilityIdentification isEqualToString:@"mail-exchange"])
  {
    v4 = @"mail.exchange.text";
    goto LABEL_19;
  }

  if ([accessibilityIdentification isEqualToString:@"KeyboardPeriodShortcut"])
  {
    v4 = @"keyboard.period.shortcut";
    goto LABEL_19;
  }

  if ([accessibilityIdentification isEqualToString:@"ShakeToShuffle"])
  {
    v4 = @"shake.to.shuffle";
    goto LABEL_19;
  }

  type = [(PSTableCellAccessibility *)self type];
  if (type == 5)
  {
    accessibilityLabel2 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
    accessibilityLabel = [accessibilityLabel2 accessibilityLabel];
    goto LABEL_25;
  }

  v10 = type;
  v11 = [(PSTableCellAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel2 = [v11 accessibilityLabel];

  if (![accessibilityLabel2 length])
  {
    specifier = [(PSTableCellAccessibility *)self specifier];
    v15 = [specifier propertyForKey:*MEMORY[0x29EDC6330]];
    v16 = [v15 isEqualToString:@"AccountPSDetailController"];

    if (v16)
    {
      v17 = [specifier propertyForKey:*MEMORY[0x29EDC6310]];
      accessibilityIdentifier = [v17 accessibilityIdentifier];

      if ([accessibilityIdentifier hasPrefix:@"126"])
      {
        v19 = @"chinese.126.mail.account";
LABEL_41:
        v5 = accessibilityLocalizedString(v19);

LABEL_47:
        goto LABEL_48;
      }

      if ([accessibilityIdentifier hasPrefix:@"163"])
      {
        v19 = @"chinese.163.mail.account";
        goto LABEL_41;
      }

      if ([accessibilityIdentifier hasPrefix:@"qq"])
      {
        v19 = @"chinese.qq.mail.account";
        goto LABEL_41;
      }
    }

    accessibilityLabel3 = [specifier accessibilityLabel];
    v22 = [accessibilityLabel3 length];

    if (v22)
    {
      accessibilityLabel4 = [specifier accessibilityLabel];
    }

    else
    {
      v25.receiver = self;
      v25.super_class = PSTableCellAccessibility;
      accessibilityLabel4 = [(PSTableCellAccessibility *)&v25 accessibilityLabel];
    }

    v5 = accessibilityLabel4;
    goto LABEL_47;
  }

  accessibilityIdentification2 = [(PSTableCellAccessibility *)self accessibilityIdentification];
  v13 = [accessibilityIdentification2 isEqualToString:@"LanguageCell"];

  if (v13)
  {
    v5 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityLabel2];
    specifier = [(PSTableCellAccessibility *)self accessibilityLanguage];
    if (!specifier)
    {
      specifier = [(PSTableCellAccessibility *)self _accessibilityValueForKey:@"axLanguage"];
    }

    [v5 setAttribute:specifier forKey:*MEMORY[0x29EDBD950]];
    goto LABEL_47;
  }

  if (v10 == 6)
  {
    v20 = [(PSTableCellAccessibility *)self safeValueForKey:@"detailTextLabel"];
    accessibilityLabel5 = [v20 accessibilityLabel];
    v5 = __UIAXStringForVariables();

    goto LABEL_48;
  }

  accessibilityLabel = accessibilityLabel2;
LABEL_25:
  v5 = accessibilityLabel;
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
      accessibilityLabel = [v8 performSelector:NSSelectorFromString(v7) withObject:0];
      if (!accessibilityLabel)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = [(PSTableCellAccessibility *)self safeValueForKey:@"detailTextLabel"];
      accessibilityLabel = [v10 accessibilityLabel];

      if (!accessibilityLabel)
      {
        goto LABEL_13;
      }
    }

    v11 = [(PSTableCellAccessibility *)self safeValueForKey:@"detailTextLabel"];
    _accessibilityViewIsVisible = [v11 _accessibilityViewIsVisible];

    if (_accessibilityViewIsVisible)
    {
LABEL_14:
      if ([accessibilityLabel length])
      {
        accessibilityValue = accessibilityLabel;
      }

      else
      {
        v17.receiver = self;
        v17.super_class = PSTableCellAccessibility;
        accessibilityValue = [(PSTableCellAccessibility *)&v17 accessibilityValue];
      }

      accessibilityValue2 = accessibilityValue;

      goto LABEL_18;
    }

LABEL_13:
    v13 = [(PSTableCellAccessibility *)self safeValueForKey:@"valueLabel"];
    accessibilityLabel2 = [v13 accessibilityLabel];

    accessibilityLabel = accessibilityLabel2;
    goto LABEL_14;
  }

  v3 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
  v4 = v3;
  if (!v3 || ([v3 _accessibilityViewIsVisible] & 1) == 0)
  {

    goto LABEL_6;
  }

  v5 = [(PSTableCellAccessibility *)self safeValueForKey:@"control"];
  accessibilityValue2 = [v5 accessibilityValue];

LABEL_18:

  return accessibilityValue2;
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
  if ((-[PSTableCellAccessibility type](self, "type") - 5) > 1 || (-[PSTableCellAccessibility safeValueForKey:](self, "safeValueForKey:", @"control"), v3 = objc_claimAutoreleasedReturnValue(), [v3 accessibilityHint], accessibilityHint = objc_claimAutoreleasedReturnValue(), v3, !accessibilityHint))
  {
    v6.receiver = self;
    v6.super_class = PSTableCellAccessibility;
    accessibilityHint = [(PSTableCellAccessibility *)&v6 accessibilityHint];
  }

  return accessibilityHint;
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v10.receiver = self;
  v10.super_class = PSTableCellAccessibility;
  if ([(PSTableCellAccessibility *)&v10 canPerformAction:action withSender:sender])
  {
    return 1;
  }

  if (![(PSTableCellAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    return 0;
  }

  v7 = [(PSTableCellAccessibility *)self safeArrayForKey:@"_accessibilityPerformableActions"];
  v8 = NSStringFromSelector(action);
  v6 = [v7 containsObject:v8];

  return v6;
}

@end