@interface _CNCustomActionSheetPresentation
- (CGRect)sourceRect;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)actionSheetPresentationControllerDidDismissActionSheet:(id)a3;
- (void)prepareForPresentationOfController:(id)a3;
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

- (void)actionSheetPresentationControllerDidDismissActionSheet:(id)a3
{
  v3 = [(_CNCustomActionSheetPresentation *)self dismissHandler];
  v3[2]();
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = MEMORY[0x1E69DD330];
  v8 = a4;
  v9 = a3;
  v10 = [[v7 alloc] initWithPresentedViewController:v9 presentingViewController:v8];

  [v10 setActionSheetDelegate:self];
  [v10 _setShouldUseCompactPresentationControllerWhenPresentedInSheet:1];
  v11 = CNContactsUIBundle();
  v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  [v10 setDismissActionTitle:v12];

  [(_CNCustomActionSheetPresentation *)self sourceRect];
  [v10 setSourceRect:?];
  v13 = [(_CNCustomActionSheetPresentation *)self sourceView];
  [v10 setSourceView:v13];

  [v10 setPermittedArrowDirections:{-[_CNCustomActionSheetPresentation permittedArrowDirections](self, "permittedArrowDirections")}];

  return v10;
}

- (void)prepareForPresentationOfController:(id)a3
{
  v4 = a3;
  [v4 setModalPresentationStyle:4];
  [v4 setTransitioningDelegate:self];
  [(_CNCustomActionSheetPresentation *)self setViewController:v4];
}

@end