@interface AssetSheetPresentationController
- (_TtC5Books32AssetSheetPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation AssetSheetPresentationController

- (_TtC5Books32AssetSheetPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)presentationTransitionWillBegin
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AssetSheetPresentationController();
  v2 = v4.receiver;
  [(AssetSheetPresentationController *)&v4 presentationTransitionWillBegin];
  presentedViewController = [v2 presentedViewController];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStateShouldOpen:1];
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_10075CF70(end);
}

- (void)dismissalTransitionWillBegin
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AssetSheetPresentationController();
  v2 = v4.receiver;
  [(AssetSheetPresentationController *)&v4 dismissalTransitionWillBegin];
  presentedViewController = [v2 presentedViewController];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() assetPresenterPrepareForDismissal];
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  selfCopy = self;
  sub_10075D1F4(end);
}

@end