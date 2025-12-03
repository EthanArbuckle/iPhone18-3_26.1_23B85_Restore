@interface InCallControlsParticipantCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityActivateActionButton;
- (BOOL)_accessibilityActivateKickMemberButton;
- (BOOL)_accessibilityActivateLmiApproveButton;
- (BOOL)_accessibilityActivateLmiRejectButton;
- (InCallControlsParticipantCellAccessibility)initWithFrame:(CGRect)frame;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation InCallControlsParticipantCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.InCallControlsParticipantCell" isKindOfClass:@"UICollectionViewListCell"];
  [validationsCopy validateClass:@"UICollectionViewListCell" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsParticipantCell" hasInstanceMethod:@"actionButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsParticipantCell" hasInstanceMethod:@"lmiApproveButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsParticipantCell" hasInstanceMethod:@"lmiRejectButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsParticipantCell" hasInstanceMethod:@"kickMemberButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsParticipantCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.InCallControlsParticipantCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = InCallControlsParticipantCellAccessibility;
  [(InCallControlsParticipantCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(InCallControlsParticipantCellAccessibility *)self safeValueForKey:@"actionButton"];
  [v3 accessibilitySetIdentification:@"AXRingButtonIdentification"];
}

- (id)accessibilityLabel
{
  v3 = [(InCallControlsParticipantCellAccessibility *)self safeValueForKey:@"nameLabel"];
  v4 = [(InCallControlsParticipantCellAccessibility *)self safeValueForKey:@"subtitleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  accessibilityLabel2 = [v4 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityCustomActions
{
  v3 = objc_opt_new();
  v4 = [(InCallControlsParticipantCellAccessibility *)self safeUIViewForKey:@"actionButton"];
  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    accessibilityLabel = [v4 accessibilityLabel];
    v7 = [v5 initWithName:accessibilityLabel target:self selector:sel__accessibilityActivateActionButton];
    [v3 addObject:v7];
  }

  v8 = [(InCallControlsParticipantCellAccessibility *)self safeUIViewForKey:@"lmiApproveButton"];
  if ([v8 _accessibilityViewIsVisible])
  {
    v9 = objc_alloc(MEMORY[0x29EDC78E0]);
    accessibilityLabel2 = [v8 accessibilityLabel];
    v11 = [v9 initWithName:accessibilityLabel2 target:self selector:sel__accessibilityActivateLmiApproveButton];
    [v3 addObject:v11];
  }

  v12 = [(InCallControlsParticipantCellAccessibility *)self safeUIViewForKey:@"lmiRejectButton"];
  if ([v12 _accessibilityViewIsVisible])
  {
    v13 = objc_alloc(MEMORY[0x29EDC78E0]);
    accessibilityLabel3 = [v12 accessibilityLabel];
    v15 = [v13 initWithName:accessibilityLabel3 target:self selector:sel__accessibilityActivateLmiRejectButton];
    [v3 addObject:v15];
  }

  v16 = [(InCallControlsParticipantCellAccessibility *)self safeUIViewForKey:@"kickMemberButton"];
  if ([v16 _accessibilityViewIsVisible])
  {
    v17 = objc_alloc(MEMORY[0x29EDC78E0]);
    accessibilityLabel4 = [v16 accessibilityLabel];
    v19 = [v17 initWithName:accessibilityLabel4 target:self selector:sel__accessibilityActivateKickMemberButton];
    [v3 addObject:v19];
  }

  return v3;
}

- (InCallControlsParticipantCellAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = InCallControlsParticipantCellAccessibility;
  v3 = [(InCallControlsParticipantCellAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(InCallControlsParticipantCellAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (BOOL)_accessibilityActivateActionButton
{
  v2 = [(InCallControlsParticipantCellAccessibility *)self safeValueForKey:@"actionButton"];
  v3 = __UIAccessibilitySafeClass();

  [v3 sendActionsForControlEvents:64];
  return v3 != 0;
}

- (BOOL)_accessibilityActivateLmiApproveButton
{
  v2 = [(InCallControlsParticipantCellAccessibility *)self safeValueForKey:@"lmiApproveButton"];
  v3 = __UIAccessibilitySafeClass();

  [v3 sendActionsForControlEvents:64];
  return v3 != 0;
}

- (BOOL)_accessibilityActivateLmiRejectButton
{
  v2 = [(InCallControlsParticipantCellAccessibility *)self safeValueForKey:@"lmiRejectButton"];
  v3 = __UIAccessibilitySafeClass();

  [v3 sendActionsForControlEvents:64];
  return v3 != 0;
}

- (BOOL)_accessibilityActivateKickMemberButton
{
  v2 = [(InCallControlsParticipantCellAccessibility *)self safeValueForKey:@"kickMemberButton"];
  v3 = __UIAccessibilitySafeClass();

  [v3 sendActionsForControlEvents:64];
  return v3 != 0;
}

@end