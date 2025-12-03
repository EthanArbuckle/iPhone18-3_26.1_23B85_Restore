@interface GKMultiplayerParticipantCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
@end

@implementation GKMultiplayerParticipantCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GameCenterUI.GKMultiplayerParticipantCollectionViewCell" hasInstanceMethod:@"accessibilityNameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.GKMultiplayerParticipantCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.GKMultiplayerParticipantCollectionViewCell" hasInstanceMethod:@"accessibilityStatusAccessoryView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.DynamicTypeButton"];
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v17.receiver = self;
  v17.super_class = GKMultiplayerParticipantCollectionViewCellAccessibility;
  accessibilityCustomActions = [(GKMultiplayerParticipantCollectionViewCellAccessibility *)&v17 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

  v16 = 0;
  objc_opt_class();
  v5 = [(GKMultiplayerParticipantCollectionViewCellAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29C2D7090](@"GameCenterUI.DynamicTypeButton")];
  v6 = __UIAccessibilityCastAsClass();

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = AXGameCenterUIFrameworkLocString(@"REMOVE_PLAYERS");
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 3221225472;
    v13 = __85__GKMultiplayerParticipantCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke;
    v14 = &unk_29F2C0890;
    v15 = v6;
    v9 = [v7 initWithName:v8 actionHandler:&v11];

    [array axSafelyAddObject:{v9, v11, v12, v13, v14}];
  }

  return array;
}

@end