@interface APUISystemApertureElementTransitionCoordinator
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
@end

@implementation APUISystemApertureElementTransitionCoordinator

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = _s18ActivityProgressUI46APUISystemApertureElementTransitionCoordinatorC19animationController12forPresented10presenting6sourceSo06UIViewJ21AnimatedTransitioning_pSgSo0oJ0C_A2KtF_0();

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s18ActivityProgressUI46APUISystemApertureElementTransitionCoordinatorC19animationController12forDismissedSo06UIViewJ21AnimatedTransitioning_pSgSo0mJ0C_tF_0();

  return v6;
}

@end