@interface SBReusableSnapshotItemContainerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_accessibilitySceneIdentifier;
- (unint64_t)accessibilityTraits;
@end

@implementation SBReusableSnapshotItemContainerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBReusableSnapshotItemContainer" isKindOfClass:@"SBFluidSwitcherItemContainer"];
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainer" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherItemContainer" hasInstanceMethod:@"appLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppLayout" hasInstanceMethod:@"allItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBDisplayItem" hasInstanceMethod:@"uniqueIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFluidSwitcherViewController" hasInstanceMethod:@"didSelectContainer:modifierFlags:" withFullSignature:{"v", "@", "q", 0}];
}

- (BOOL)isAccessibilityElement
{
  _accessibilitySceneIdentifier = [(SBReusableSnapshotItemContainerAccessibility *)self _accessibilitySceneIdentifier];
  server = [MEMORY[0x29EDBDFA8] server];
  focusedOccludedAppScenes = [server focusedOccludedAppScenes];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __70__SBReusableSnapshotItemContainerAccessibility_isAccessibilityElement__block_invoke;
  v7[3] = &unk_29F2FBA18;
  v5 = _accessibilitySceneIdentifier;
  v8 = v5;
  v9 = &v10;
  [focusedOccludedAppScenes enumerateObjectsUsingBlock:v7];
  LOBYTE(server) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return server;
}

void __70__SBReusableSnapshotItemContainerAccessibility_isAccessibilityElement__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 fbSceneIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __69__SBReusableSnapshotItemContainerAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v2 didSelectContainer:*(a1 + 32) modifierFlags:0x20000];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SBReusableSnapshotItemContainerAccessibility;
  return *MEMORY[0x29EDBDBC8] | [(SBReusableSnapshotItemContainerAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilitySceneIdentifier
{
  v2 = [(SBReusableSnapshotItemContainerAccessibility *)self safeValueForKey:@"appLayout"];
  v3 = [v2 safeArrayForKey:@"allItems"];
  firstObject = [v3 firstObject];
  v5 = [firstObject safeStringForKey:@"uniqueIdentifier"];

  return v5;
}

@end