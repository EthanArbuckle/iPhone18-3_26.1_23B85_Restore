@interface IMPopoverPresentationAction
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)prepareForPopoverPresentation:(id)presentation;
@end

@implementation IMPopoverPresentationAction

- (void)prepareForPopoverPresentation:(id)presentation
{
  presentationCopy = presentation;
  presentingButton = [(IMPopoverPresentationAction *)self presentingButton];
  NSClassFromString(@"MPUTransportButton");
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  presentingButton2 = [(IMPopoverPresentationAction *)self presentingButton];
  if (isKindOfClass)
  {
    [presentationCopy setSourceView:presentingButton2];

    presentingButton3 = [(IMPopoverPresentationAction *)self presentingButton];
    presentingButton4 = [(IMPopoverPresentationAction *)self presentingButton];
    [presentingButton4 bounds];
    [presentingButton3 imageRectForContentRect:?];
    [presentationCopy setSourceRect:?];
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();

    presentingButton5 = [(IMPopoverPresentationAction *)self presentingButton];
    if (v9)
    {
      [presentationCopy setSourceView:presentingButton5];

      presentingButton3 = [(IMPopoverPresentationAction *)self presentingButton];
      [presentingButton3 bounds];
      [presentationCopy setSourceRect:?];
    }

    else
    {
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

      presentingButton3 = [(IMPopoverPresentationAction *)self presentingButton];
      [presentationCopy setBarButtonItem:presentingButton3];
    }
  }

LABEL_8:
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  presentingButton = [(IMPopoverPresentationAction *)self presentingButton];
  NSClassFromString(@"MPUTransportButton");
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  presentingButton2 = [(IMPopoverPresentationAction *)self presentingButton];
  if (isKindOfClass)
  {
    presentingButton3 = [(IMPopoverPresentationAction *)self presentingButton];
    [presentingButton3 bounds];
    [presentingButton2 imageRectForContentRect:?];
    rect->origin.x = v12;
    rect->origin.y = v13;
    rect->size.width = v14;
    rect->size.height = v15;

LABEL_5:
    *view = [(IMPopoverPresentationAction *)self presentingButton];
    return;
  }

  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  presentingButton4 = [(IMPopoverPresentationAction *)self presentingButton];
  presentingButton2 = presentingButton4;
  if (v16)
  {
    [presentingButton4 bounds];
    rect->origin.x = v18;
    rect->origin.y = v19;
    rect->size.width = v20;
    rect->size.height = v21;
    goto LABEL_5;
  }

  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    presentingButton5 = [(IMPopoverPresentationAction *)self presentingButton];
    _toolbarButton = [presentingButton5 _toolbarButton];

    v24 = _toolbarButton;
    if (_toolbarButton)
    {
      [_toolbarButton bounds];
      rect->origin.x = v25;
      rect->origin.y = v26;
      rect->size.width = v27;
      rect->size.height = v28;
      v29 = _toolbarButton;
      v24 = _toolbarButton;
      *view = _toolbarButton;
    }
  }
}

@end