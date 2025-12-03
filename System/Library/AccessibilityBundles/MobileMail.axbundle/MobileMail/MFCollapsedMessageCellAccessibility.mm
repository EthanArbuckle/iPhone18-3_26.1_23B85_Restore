@interface MFCollapsedMessageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)prepareForReuse;
@end

@implementation MFCollapsedMessageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFCollapsedMessageCell" hasInstanceMethod:@"verticalStatusIndicatorManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFCollapsedMessageCell" hasInstanceMethod:@"horizontalStatusIndicatorManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MessageViewStatusIndicatorManager" hasInstanceMethod:@"statusIndicatorImageViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFCollapsedMessageCell" hasInstanceMethod:@"senderOrSubjectLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFCollapsedMessageCell" hasInstanceMethod:@"timestampLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFCollapsedMessageCell" hasInstanceMethod:@"summaryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailActionViewHeader"];
  [validationsCopy validateClass:@"MailActionViewHeader" isKindOfClass:@"MFCollapsedMessageCell"];
  [validationsCopy validateClass:@"MFCollapsedMessageCell" isKindOfClass:@"UICollectionViewCell"];
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = MFCollapsedMessageCellAccessibility;
  accessibilityTraits = [(MFCollapsedMessageCellAccessibility *)&v6 accessibilityTraits];
  NSClassFromString(&cfstr_Mailactionview.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *MEMORY[0x29EDC7F80];
  if ((isKindOfClass & 1) == 0)
  {
    v4 = 0;
  }

  return v4 | accessibilityTraits;
}

- (id)accessibilityLabel
{
  NSClassFromString(&cfstr_Mailactionview.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [(MFCollapsedMessageCellAccessibility *)self safeValueForKey:@"senderOrSubjectLabel"];
    accessibilityLabel = [v3 accessibilityLabel];
    objc_opt_class();
    v5 = [(MFCollapsedMessageCellAccessibility *)self safeValueForKey:@"summaryLabel"];
    _accessibilityMessageIndexDescription = __UIAccessibilityCastAsClass();

    v7 = accessibilityApproximateVisibleSummaryText(self, _accessibilityMessageIndexDescription);
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
    accessibilityLabel = __UIAccessibilityCastAsSafeCategory();
    _accessibilityMessageIndexDescription = [accessibilityLabel _accessibilityMessageIndexDescription];
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
    accessibilityHint = [(MFCollapsedMessageCellAccessibility *)&v5 accessibilityHint];
  }

  else
  {
    accessibilityHint = accessibilityLocalizedString(@"conversation.cell.collapsed.hint");
  }

  return accessibilityHint;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MFCollapsedMessageCellAccessibility;
  [(MFCollapsedMessageCellAccessibility *)&v3 prepareForReuse];
  [(MFCollapsedMessageCellAccessibility *)self _accessibilitySetRetainedValue:0 forKey:@"ApproximateVisibleSummary"];
}

@end