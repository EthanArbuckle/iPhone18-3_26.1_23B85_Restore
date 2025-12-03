@interface CRLiOSBoardViewControllerTransitioningDelegate
- (_TtC8Freeform46CRLiOSBoardViewControllerTransitioningDelegate)init;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
@end

@implementation CRLiOSBoardViewControllerTransitioningDelegate

- (_TtC8Freeform46CRLiOSBoardViewControllerTransitioningDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLiOSBoardViewControllerTransitioningDelegate();
  return [(CRLiOSBoardViewControllerTransitioningDelegate *)&v3 init];
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_1006BDF38(controllerCopy, presentingControllerCopy);

  return v12;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1006BE6F4(controllerCopy);
  v7 = v6;

  return v7;
}

@end