@interface UIMenuController
- (id)crlaxPerformBlockPreventingMutatingMenuItems:(id)items;
- (void)crlaxPerformBlockPreventingMakingVisible:(id)visible;
@end

@implementation UIMenuController

- (void)crlaxPerformBlockPreventingMakingVisible:(id)visible
{
  visibleCopy = visible;
  if ([(UIMenuController *)self _crlaxShouldPreventMakingVisible])
  {
    visibleCopy[2]();
  }

  else
  {
    [(UIMenuController *)self _crlaxSetShouldPreventMakingVisible:1];
    visibleCopy[2]();
    [(UIMenuController *)self _crlaxSetShouldPreventMakingVisible:0];
  }
}

- (id)crlaxPerformBlockPreventingMutatingMenuItems:(id)items
{
  itemsCopy = items;
  if ([(UIMenuController *)self _crlaxShouldPreventMutatingItems])
  {
    itemsCopy[2](itemsCopy);
  }

  else
  {
    [(UIMenuController *)self _crlaxSetShouldPreventMutatingItems:1];
    itemsCopy[2](itemsCopy);
    [(UIMenuController *)self _crlaxSetShouldPreventMutatingItems:0];
  }

  _crlaxLastUpdatedMenuItemsWhilePreventingActualItemsMutation = [(UIMenuController *)self _crlaxLastUpdatedMenuItemsWhilePreventingActualItemsMutation];
  [(UIMenuController *)self _crlaxSetLastUpdatedMenuItemsWhilePreventingActualItemsMutation:0];

  return _crlaxLastUpdatedMenuItemsWhilePreventingActualItemsMutation;
}

@end