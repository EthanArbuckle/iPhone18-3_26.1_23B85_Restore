@interface BKLibraryBookshelfGridBookCellAccessibility
- (BOOL)_accessibilityDidTriggerShowMenuAction;
- (id)bkaxTarget;
@end

@implementation BKLibraryBookshelfGridBookCellAccessibility

- (BOOL)_accessibilityDidTriggerShowMenuAction
{
  v3 = [(BKLibraryBookshelfGridBookCellAccessibility *)self bkaxTarget];
  v4 = [v3 infoCell];
  v5 = [v4 moreButton];

  v6 = [v5 contextMenuInteraction];
  if (objc_opt_respondsToSelector())
  {
    [v5 accessibilityActivationPoint];
    [v6 _presentMenuAtLocation:?];
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BKLibraryBookshelfGridBookCellAccessibility;
    v7 = [(BKLibraryBookshelfGridBookCellAccessibility *)&v9 _accessibilityDidTriggerShowMenuAction];
  }

  return v7;
}

- (id)bkaxTarget
{
  objc_opt_class();
  v2 = __IMAccessibilityCastAsClass();

  return v2;
}

@end