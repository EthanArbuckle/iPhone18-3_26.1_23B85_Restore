@interface SFStartPageBackgroundImageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SFStartPageBackgroundImageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFStartPageCustomizationViewController"];
  [validationsCopy validateClass:@"SFStartPageCustomizationViewController" hasInstanceVariable:@"_backgroundImagesCollectionViewDataSource" withType:"UICollectionViewDiffableDataSource"];
  [validationsCopy validateClass:@"SFStartPageBackgroundImageCell" hasInstanceMethod:@"showsSelectionRing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SFStartPageBackgroundImageCell" hasInstanceMethod:@"showsCustomImageControls" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SFStartPageBackgroundImageCell" hasInstanceMethod:@"didSelectClearButton:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  v16.receiver = self;
  v16.super_class = SFStartPageBackgroundImageCellAccessibility;
  accessibilityLabel = [(SFStartPageBackgroundImageCellAccessibility *)&v16 accessibilityLabel];
  _accessibilityIndexPath = [(SFStartPageBackgroundImageCellAccessibility *)self _accessibilityIndexPath];
  v5 = [(SFStartPageBackgroundImageCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  delegate = [v5 delegate];

  if (_accessibilityIndexPath)
  {
    MEMORY[0x29C2E0540](@"SFStartPageCustomizationViewController");
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v7 = [delegate safeValueForKey:@"_backgroundImagesCollectionViewDataSource"];
      v8 = __UIAccessibilityCastAsClass();

      _accessibilityIndexPath2 = [(SFStartPageBackgroundImageCellAccessibility *)self _accessibilityIndexPath];
      v10 = [v8 itemIdentifierForIndexPath:_accessibilityIndexPath2];
      accessibilityLabel2 = [v10 accessibilityLabel];
      v12 = accessibilityLabel2;
      if (accessibilityLabel2)
      {
        v13 = accessibilityLabel2;
      }

      else
      {
        v13 = accessibilityLabel;
      }

      v14 = v13;

      accessibilityLabel = v14;
    }
  }

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F88] | *MEMORY[0x29EDC7F70];
  v3 = [(SFStartPageBackgroundImageCellAccessibility *)self safeBoolForKey:@"showsSelectionRing"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v2 | v4;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  if ([(SFStartPageBackgroundImageCellAccessibility *)self safeBoolForKey:@"showsCustomImageControls"])
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x29EDC78E0]);
    v5 = accessibilityMobileSafariLocalizedString(@"clear.background.image.button");
    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __73__SFStartPageBackgroundImageCellAccessibility_accessibilityCustomActions__block_invoke;
    v11 = &unk_29F2D68A0;
    objc_copyWeak(&v12, &location);
    v6 = [v4 initWithName:v5 actionHandler:&v8];

    [array addObject:{v6, v8, v9, v10, v11}];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return array;
}

uint64_t __73__SFStartPageBackgroundImageCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __73__SFStartPageBackgroundImageCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didSelectClearButton:0];
}

@end