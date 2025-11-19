@interface CKLocationShareBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axActionForButton:(id)a3 withLabel:(id)a4;
- (id)accessibilityCustomActions;
@end

@implementation CKLocationShareBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKLocationShareBalloonView" hasInstanceMethod:@"titleString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKLocationShareBalloonView" hasInstanceMethod:@"locationString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKLocationShareBalloonView" hasInstanceMethod:@"startSharingButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKLocationShareBalloonView" hasInstanceMethod:@"ignoreButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKLocationShareBalloonView" hasInstanceMethod:@"offerState" withFullSignature:{"q", 0}];
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  if (![(CKLocationShareBalloonViewAccessibility *)self safeIntegerForKey:@"offerState"])
  {
    v4 = accessibilityLocalizedString(@"start.sharing.button");
    v5 = [(CKLocationShareBalloonViewAccessibility *)self _axActionForButton:@"startSharingButton" withLabel:v4];
    [v3 axSafelyAddObject:v5];

    v6 = accessibilityLocalizedString(@"ignore.sharing.button");
    v7 = [(CKLocationShareBalloonViewAccessibility *)self _axActionForButton:@"ignoreButton" withLabel:v6];
    [v3 axSafelyAddObject:v7];
  }

  return v3;
}

- (id)_axActionForButton:(id)a3 withLabel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v8 = [(CKLocationShareBalloonViewAccessibility *)self safeUIViewForKey:v6];
  v9 = __UIAccessibilitySafeClass();

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x29EDC78E0]);
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __72__CKLocationShareBalloonViewAccessibility__axActionForButton_withLabel___block_invoke;
    v13[3] = &unk_29F2B0770;
    v14 = v9;
    v11 = [v10 initWithName:v7 actionHandler:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end