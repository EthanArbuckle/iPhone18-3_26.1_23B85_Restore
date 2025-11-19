@interface SUISNavigationController
- (SUISSheetInteractionControllerDelegate)sheetInteractionDelegate;
- (void)_sheetInteractionDraggingDidEnd;
@end

@implementation SUISNavigationController

- (void)_sheetInteractionDraggingDidEnd
{
  v4 = +[SHSheetDraggingEvent eventForDraggingDidEnd];
  v3 = [(SUISNavigationController *)self sheetInteractionDelegate];
  [v3 sheetInteractionController:self didReceiveDraggingEvent:v4];
}

- (SUISSheetInteractionControllerDelegate)sheetInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sheetInteractionDelegate);

  return WeakRetained;
}

@end