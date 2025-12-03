@interface InCallControlButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_axGetLabelSubview;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation InCallControlButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.InCallControlButton" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlButton" hasSwiftField:@"cnkContentAlpha" withSwiftType:"CGFloat"];
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(InCallControlButtonAccessibility *)self isAccessibilityUserDefinedElement];
  v4 = isAccessibilityUserDefinedElement;
  if (isAccessibilityUserDefinedElement)
  {
    bOOLValue = [isAccessibilityUserDefinedElement BOOLValue];
  }

  else
  {
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    if ([v6 isUserInteractionEnabled])
    {
      objc_opt_class();
      v7 = __UIAccessibilityCastAsClass();
      if ([v7 _accessibilityViewIsVisible])
      {
        [(InCallControlButtonAccessibility *)self safeSwiftCGFloatForKey:@"cnkContentAlpha"];
        bOOLValue = v8 > 0.0;
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(InCallControlButtonAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"viewAppButton"])
  {
    v4 = @"view.app";
    goto LABEL_13;
  }

  if ([accessibilityIdentifier isEqualToString:@"openAppButton"])
  {
    v4 = @"open.app";
    goto LABEL_13;
  }

  if ([accessibilityIdentifier isEqualToString:@"tvRemoteButton"])
  {
    v4 = @"tv.remote";
    goto LABEL_13;
  }

  if ([accessibilityIdentifier isEqualToString:@"reviewButton"])
  {
    v4 = @"review.join.request";
    goto LABEL_13;
  }

  if ([accessibilityIdentifier isEqualToString:@"approveRequestButton"])
  {
LABEL_10:
    v4 = @"approve.join.request";
    goto LABEL_13;
  }

  if ([accessibilityIdentifier isEqualToString:@"dismissRequestButton"])
  {
    goto LABEL_12;
  }

  if ([accessibilityIdentifier isEqualToString:@"lmiApproveButton"])
  {
    goto LABEL_10;
  }

  if ([accessibilityIdentifier isEqualToString:@"lmiRejectButton"])
  {
LABEL_12:
    v4 = @"reject.join.request";
    goto LABEL_13;
  }

  if (![accessibilityIdentifier isEqualToString:@"kickMemberButton"])
  {
    v9.receiver = self;
    v9.super_class = InCallControlButtonAccessibility;
    accessibilityLabel = [(InCallControlButtonAccessibility *)&v9 accessibilityLabel];
    if ([accessibilityLabel length])
    {
      text = accessibilityLabel;
    }

    else
    {
      _axGetLabelSubview = [(InCallControlButtonAccessibility *)self _axGetLabelSubview];
      text = [_axGetLabelSubview text];
    }

    goto LABEL_14;
  }

  v4 = @"kick.member";
LABEL_13:
  text = accessibilityLocalizedString(v4);
LABEL_14:

  return text;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = InCallControlButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(InCallControlButtonAccessibility *)&v3 accessibilityTraits];
}

- (id)_axGetLabelSubview
{
  v3 = objc_opt_class();

  return [(InCallControlButtonAccessibility *)self _accessibilityDescendantOfType:v3];
}

@end