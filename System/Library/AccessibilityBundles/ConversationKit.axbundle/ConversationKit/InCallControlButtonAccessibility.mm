@interface InCallControlButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_axGetLabelSubview;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation InCallControlButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ConversationKit.InCallControlButton" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"ConversationKit.InCallControlButton" hasSwiftField:@"cnkContentAlpha" withSwiftType:"CGFloat"];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(InCallControlButtonAccessibility *)self isAccessibilityUserDefinedElement];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
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
        v5 = v8 > 0.0;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(InCallControlButtonAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"viewAppButton"])
  {
    v4 = @"view.app";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"openAppButton"])
  {
    v4 = @"open.app";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"tvRemoteButton"])
  {
    v4 = @"tv.remote";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"reviewButton"])
  {
    v4 = @"review.join.request";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"approveRequestButton"])
  {
LABEL_10:
    v4 = @"approve.join.request";
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"dismissRequestButton"])
  {
    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"lmiApproveButton"])
  {
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"lmiRejectButton"])
  {
LABEL_12:
    v4 = @"reject.join.request";
    goto LABEL_13;
  }

  if (![v3 isEqualToString:@"kickMemberButton"])
  {
    v9.receiver = self;
    v9.super_class = InCallControlButtonAccessibility;
    v7 = [(InCallControlButtonAccessibility *)&v9 accessibilityLabel];
    if ([v7 length])
    {
      v5 = v7;
    }

    else
    {
      v8 = [(InCallControlButtonAccessibility *)self _axGetLabelSubview];
      v5 = [v8 text];
    }

    goto LABEL_14;
  }

  v4 = @"kick.member";
LABEL_13:
  v5 = accessibilityLocalizedString(v4);
LABEL_14:

  return v5;
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