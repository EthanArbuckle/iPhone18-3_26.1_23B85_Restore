@interface SubscribePagePresentationController
- (CGRect)frameOfPresentedViewInContainerView;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (_TtC22SubscribePageExtension35SubscribePagePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation SubscribePagePresentationController

- (_TtC22SubscribePageExtension35SubscribePagePresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_1004B7ABC(v5, a4);
}

- (CGRect)frameOfPresentedViewInContainerView
{
  v2 = self;
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

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = [(SubscribePagePresentationController *)v7 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9)
  {
    v10 = 540.0;
  }

  else
  {
    v10 = 295.0;
  }

  if (v9)
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
  v2 = self;
  sub_1004B81D0();
}

- (void)presentationTransitionWillBegin
{
  v2 = self;
  sub_1004B8338();
}

- (void)dismissalTransitionWillBegin
{
  v2 = self;
  sub_1004B85B8();
}

@end