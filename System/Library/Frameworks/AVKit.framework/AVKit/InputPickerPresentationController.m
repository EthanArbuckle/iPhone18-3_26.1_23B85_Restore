@interface InputPickerPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC5AVKit33InputPickerPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)containerViewWillLayoutSubviews;
@end

@implementation InputPickerPresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
  v3 = [(InputPickerPresentationController *)v2 containerView];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {

    v6 = 0.0;
    v8 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)containerViewWillLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(InputPickerPresentationController *)&v7 containerViewWillLayoutSubviews];
  v3 = [v2 containerView];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 presentedView];
    if (v5)
    {
      v6 = v5;
      [v4 bounds];
      [v6 setFrame_];
    }
  }
}

- (_TtC5AVKit33InputPickerPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(InputPickerPresentationController *)&v7 initWithPresentedViewController:a3 presentingViewController:a4];
}

@end