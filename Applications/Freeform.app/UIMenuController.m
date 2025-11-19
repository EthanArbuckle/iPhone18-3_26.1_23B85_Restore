@interface UIMenuController
- (id)crlaxPerformBlockPreventingMutatingMenuItems:(id)a3;
- (void)crlaxPerformBlockPreventingMakingVisible:(id)a3;
@end

@implementation UIMenuController

- (void)crlaxPerformBlockPreventingMakingVisible:(id)a3
{
  v4 = a3;
  if ([(UIMenuController *)self _crlaxShouldPreventMakingVisible])
  {
    v4[2]();
  }

  else
  {
    [(UIMenuController *)self _crlaxSetShouldPreventMakingVisible:1];
    v4[2]();
    [(UIMenuController *)self _crlaxSetShouldPreventMakingVisible:0];
  }
}

- (id)crlaxPerformBlockPreventingMutatingMenuItems:(id)a3
{
  v4 = a3;
  if ([(UIMenuController *)self _crlaxShouldPreventMutatingItems])
  {
    v4[2](v4);
  }

  else
  {
    [(UIMenuController *)self _crlaxSetShouldPreventMutatingItems:1];
    v4[2](v4);
    [(UIMenuController *)self _crlaxSetShouldPreventMutatingItems:0];
  }

  v5 = [(UIMenuController *)self _crlaxLastUpdatedMenuItemsWhilePreventingActualItemsMutation];
  [(UIMenuController *)self _crlaxSetLastUpdatedMenuItemsWhilePreventingActualItemsMutation:0];

  return v5;
}

@end