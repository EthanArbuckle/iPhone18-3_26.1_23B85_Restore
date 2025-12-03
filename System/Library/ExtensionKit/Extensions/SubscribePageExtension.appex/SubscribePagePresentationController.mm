@interface SubscribePagePresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (_TtC22SubscribePageExtension35SubscribePagePresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation SubscribePagePresentationController

- (_TtC22SubscribePageExtension35SubscribePagePresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  return sub_1004B7ABC(controllerCopy, viewController);
}

- (CGRect)frameOfPresentedViewInContainerView
{
  selfCopy = self;
  v3 = sub_1004B7E94();
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

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  traitCollection = [(SubscribePagePresentationController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v10 = 540.0;
  }

  else
  {
    v10 = 295.0;
  }

  if (userInterfaceIdiom)
  {
    v11 = 624.0;
  }

  else
  {
    v11 = 372.0;
  }

  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = width;
  v17.size.height = height;
  v12 = CGRectGetWidth(v17) + -80.0;
  if (v12 < v10)
  {
    v10 = v12;
  }

  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = width;
  v18.size.height = height;
  v13 = CGRectGetHeight(v18);
  swift_unknownObjectRelease();

  if (v13 + -80.0 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13 + -80.0;
  }

  v15 = v10;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)containerViewWillLayoutSubviews
{
  selfCopy = self;
  sub_1004B81D0();
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_1004B8338();
}

- (void)dismissalTransitionWillBegin
{
  selfCopy = self;
  sub_1004B85B8();
}

@end