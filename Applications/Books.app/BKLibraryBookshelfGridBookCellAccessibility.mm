@interface BKLibraryBookshelfGridBookCellAccessibility
- (BOOL)_accessibilityDidTriggerShowMenuAction;
- (id)bkaxTarget;
@end

@implementation BKLibraryBookshelfGridBookCellAccessibility

- (BOOL)_accessibilityDidTriggerShowMenuAction
{
  bkaxTarget = [(BKLibraryBookshelfGridBookCellAccessibility *)self bkaxTarget];
  infoCell = [bkaxTarget infoCell];
  moreButton = [infoCell moreButton];

  contextMenuInteraction = [moreButton contextMenuInteraction];
  if (objc_opt_respondsToSelector())
  {
    [moreButton accessibilityActivationPoint];
    [contextMenuInteraction _presentMenuAtLocation:?];
    _accessibilityDidTriggerShowMenuAction = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = BKLibraryBookshelfGridBookCellAccessibility;
    _accessibilityDidTriggerShowMenuAction = [(BKLibraryBookshelfGridBookCellAccessibility *)&v9 _accessibilityDidTriggerShowMenuAction];
  }

  return _accessibilityDidTriggerShowMenuAction;
}

- (id)bkaxTarget
{
  objc_opt_class();
  v2 = __IMAccessibilityCastAsClass();

  return v2;
}

@end