@interface InputPickeriPadPresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (_TtC5AVKit37InputPickeriPadPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)backgroundTapHandler;
- (void)containerViewWillLayoutSubviews;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationTransitionDidEnd:(BOOL)a3;
@end

@implementation InputPickeriPadPresentationController

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
  v3 = sub_18B50684C();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)containerViewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InputPickeriPadPresentationController();
  v2 = v5.receiver;
  [(InputPickeriPadPresentationController *)&v5 containerViewWillLayoutSubviews];
  v3 = [v2 presentedView];
  if (v3)
  {
    v4 = v3;
    [v2 frameOfPresentedViewInContainerView];
    [v4 setFrame_];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_18B506AA8(a3);
  swift_unknownObjectRelease();
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v4 = self;
  sub_18B506C8C(a3);
}

- (void)backgroundTapHandler
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC5AVKit37InputPickeriPadPresentationController_dismissHandler);
  if (v2)
  {
    v3 = self;
    v4 = sub_18B4A324C(v2);
    v2(v4);

    sub_18B4A31A4(v2);
  }
}

- (_TtC5AVKit37InputPickeriPadPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v7 = (&self->super.super.isa + OBJC_IVAR____TtC5AVKit37InputPickeriPadPresentationController_presentedViewPreferredSize);
  *v7 = 0;
  v7[1] = 0;
  v8 = (&self->super.super.isa + OBJC_IVAR____TtC5AVKit37InputPickeriPadPresentationController_dismissHandler);
  *v8 = 0;
  v8[1] = 0;
  *(&self->super._traitInitializationComplete + OBJC_IVAR____TtC5AVKit37InputPickeriPadPresentationController_animationCoordinator) = 0;
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = type metadata accessor for InputPickeriPadPresentationController();
  return [(InputPickeriPadPresentationController *)&v10 initWithPresentedViewController:a3 presentingViewController:a4];
}

@end