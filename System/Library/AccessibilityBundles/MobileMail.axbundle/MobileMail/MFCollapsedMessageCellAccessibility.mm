@interface MFCollapsedMessageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)prepareForReuse;
@end

@implementation MFCollapsedMessageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFCollapsedMessageCell" hasInstanceMethod:@"verticalStatusIndicatorManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFCollapsedMessageCell" hasInstanceMethod:@"horizontalStatusIndicatorManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageViewStatusIndicatorManager" hasInstanceMethod:@"statusIndicatorImageViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFCollapsedMessageCell" hasInstanceMethod:@"senderOrSubjectLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFCollapsedMessageCell" hasInstanceMethod:@"timestampLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFCollapsedMessageCell" hasInstanceMethod:@"summaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailActionViewHeader"];
  [v3 validateClass:@"MailActionViewHeader" isKindOfClass:@"MFCollapsedMessageCell"];
  [v3 validateClass:@"MFCollapsedMessageCell" isKindOfClass:@"UICollectionViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = MFCollapsedMessageCellAccessibility;
  v2 = [(MFCollapsedMessageCellAccessibility *)&v6 accessibilityTraits];
  NSClassFromString(&cfstr_Mailactionview.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *MEMORY[0x29EDC7F80];
  if ((isKindOfClass & 1) == 0)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityLabel
{
  NSClassFromString(&cfstr_Mailactionview.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [(MFCollapsedMessageCellAccessibility *)self safeValueForKey:@"senderOrSubjectLabel"];
    v4 = [v3 accessibilityLabel];
    objc_opt_class();
    v5 = [(MFCollapsedMessageCellAccessibility *)self safeValueForKey:@"summaryLabel"];
    v6 = __UIAccessibilityCastAsClass();

    v7 = accessibilityApproximateVisibleSummaryText(self, v6);
    v8 = __UIAXStringForVariables();
  }

  else
  {
    objc_opt_class();
    v9 = [(MFCollapsedMessageCellAccessibility *)self safeValueForKey:@"verticalStatusIndicatorManager"];
    v10 = [v9 safeValueForKey:@"statusIndicatorImageViews"];
    v11 = __UIAccessibilityCastAsClass();

    v12 = MEMORY[0x29C2DF8D0](v11);

    objc_opt_class();
    v13 = [(MFCollapsedMessageCellAccessibility *)self safeValueForKey:@"horizontalStatusIndicatorManager"];
    v14 = [v13 safeValueForKey:@"statusIndicatorImageViews"];
    v15 = __UIAccessibilityCastAsClass();

    v19 = MEMORY[0x29C2DF8D0](v15);
    v3 = __UIAXStringForVariables();

    objc_opt_class();
    v4 = __UIAccessibilityCastAsSafeCategory();
    v6 = [v4 _accessibilityMessageIndexDescription];
    v7 = accessibilityLocalizedString(@"conversation.cell.collapsed");
    v16 = [(MFCollapsedMessageCellAccessibility *)self safeValueForKey:@"senderOrSubjectLabel"];
    v17 = [(MFCollapsedMessageCellAccessibility *)self safeValueForKey:@"timestampLabel"];
    v20 = [(MFCollapsedMessageCellAccessibility *)self safeValueForKey:@"summaryLabel"];
    v8 = __AXStringForVariables();
  }

  return v8;
}

- (id)accessibilityHint
{
  NSClassFromString(&cfstr_Mailactionview.isa);
  if (objc_opt_isKindOfClass())
  {
    v5.receiver = self;
    v5.super_class = MFCollapsedMessageCellAccessibility;
    v3 = [(MFCollapsedMessageCellAccessibility *)&v5 accessibilityHint];
  }

  else
  {
    v3 = accessibilityLocalizedString(@"conversation.cell.collapsed.hint");
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MFCollapsedMessageCellAccessibility;
  [(MFCollapsedMessageCellAccessibility *)&v3 prepareForReuse];
  [(MFCollapsedMessageCellAccessibility *)self _accessibilitySetRetainedValue:0 forKey:@"ApproximateVisibleSummary"];
}

@end