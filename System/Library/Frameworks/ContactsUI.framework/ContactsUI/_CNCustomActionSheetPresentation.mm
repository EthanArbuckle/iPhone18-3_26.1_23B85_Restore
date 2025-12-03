@interface _CNCustomActionSheetPresentation
- (CGRect)sourceRect;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)actionSheetPresentationControllerDidDismissActionSheet:(id)sheet;
- (void)prepareForPresentationOfController:(id)controller;
@end

@implementation _CNCustomActionSheetPresentation

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)actionSheetPresentationControllerDidDismissActionSheet:(id)sheet
{
  dismissHandler = [(_CNCustomActionSheetPresentation *)self dismissHandler];
  dismissHandler[2]();
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  v7 = MEMORY[0x1E69DD330];
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v10 = [[v7 alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  [v10 setActionSheetDelegate:self];
  [v10 _setShouldUseCompactPresentationControllerWhenPresentedInSheet:1];
  v11 = CNContactsUIBundle();
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  [v10 setDismissActionTitle:v12];

  [(_CNCustomActionSheetPresentation *)self sourceRect];
  [v10 setSourceRect:?];
  sourceView = [(_CNCustomActionSheetPresentation *)self sourceView];
  [v10 setSourceView:sourceView];

  [v10 setPermittedArrowDirections:{-[_CNCustomActionSheetPresentation permittedArrowDirections](self, "permittedArrowDirections")}];

  return v10;
}

- (void)prepareForPresentationOfController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setModalPresentationStyle:4];
  [controllerCopy setTransitioningDelegate:self];
  [(_CNCustomActionSheetPresentation *)self setViewController:controllerCopy];
}

@end