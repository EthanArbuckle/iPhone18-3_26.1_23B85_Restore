@interface BrickCollectionViewCellAccessibility
- (id)accessibilityCustomActions;
@end

@implementation BrickCollectionViewCellAccessibility

- (id)accessibilityCustomActions
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x29EDC78E0]);
  v5 = accessibilityLocalizedString(@"show.context.menu");
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __66__BrickCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke;
  v11 = &unk_29F2EA1C0;
  objc_copyWeak(&v12, &location);
  v6 = [v4 initWithName:v5 actionHandler:&v8];

  [v3 axSafelyAddObject:{v6, v8, v9, v10, v11}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v3;
}

uint64_t __66__BrickCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityShowContextMenuForElement:WeakRetained targetPointValue:0];

  return 1;
}

@end