@interface CRLiOSBoardViewControllerTransitioningDelegate
- (_TtC8Freeform46CRLiOSBoardViewControllerTransitioningDelegate)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
@end

@implementation CRLiOSBoardViewControllerTransitioningDelegate

- (_TtC8Freeform46CRLiOSBoardViewControllerTransitioningDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLiOSBoardViewControllerTransitioningDelegate();
  return [(CRLiOSBoardViewControllerTransitioningDelegate *)&v3 init];
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1006BDF38(v8, v9);

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006BE6F4(v4);
  v7 = v6;

  return v7;
}

@end