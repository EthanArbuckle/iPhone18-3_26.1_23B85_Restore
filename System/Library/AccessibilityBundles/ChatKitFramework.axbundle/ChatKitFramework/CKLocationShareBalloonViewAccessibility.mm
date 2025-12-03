@interface CKLocationShareBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axActionForButton:(id)button withLabel:(id)label;
- (id)accessibilityCustomActions;
@end

@implementation CKLocationShareBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKLocationShareBalloonView" hasInstanceMethod:@"titleString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKLocationShareBalloonView" hasInstanceMethod:@"locationString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKLocationShareBalloonView" hasInstanceMethod:@"startSharingButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKLocationShareBalloonView" hasInstanceMethod:@"ignoreButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKLocationShareBalloonView" hasInstanceMethod:@"offerState" withFullSignature:{"q", 0}];
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  if (![(CKLocationShareBalloonViewAccessibility *)self safeIntegerForKey:@"offerState"])
  {
    v4 = accessibilityLocalizedString(@"start.sharing.button");
    v5 = [(CKLocationShareBalloonViewAccessibility *)self _axActionForButton:@"startSharingButton" withLabel:v4];
    [array axSafelyAddObject:v5];

    v6 = accessibilityLocalizedString(@"ignore.sharing.button");
    v7 = [(CKLocationShareBalloonViewAccessibility *)self _axActionForButton:@"ignoreButton" withLabel:v6];
    [array axSafelyAddObject:v7];
  }

  return array;
}

- (id)_axActionForButton:(id)button withLabel:(id)label
{
  buttonCopy = button;
  labelCopy = label;
  v15 = 0;
  v8 = [(CKLocationShareBalloonViewAccessibility *)self safeUIViewForKey:buttonCopy];
  v9 = __UIAccessibilitySafeClass();

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x29EDC78E0]);
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __72__CKLocationShareBalloonViewAccessibility__axActionForButton_withLabel___block_invoke;
    v13[3] = &unk_29F2B0770;
    v14 = v9;
    v11 = [v10 initWithName:labelCopy actionHandler:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end