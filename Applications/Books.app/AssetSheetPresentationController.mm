@interface AssetSheetPresentationController
- (_TtC5Books32AssetSheetPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation AssetSheetPresentationController

- (_TtC5Books32AssetSheetPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
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
  v3 = [v2 presentedViewController];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStateShouldOpen:1];
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v4 = self;
  sub_10075CF70(a3);
}

- (void)dismissalTransitionWillBegin
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AssetSheetPresentationController();
  v2 = v4.receiver;
  [(AssetSheetPresentationController *)&v4 dismissalTransitionWillBegin];
  v3 = [v2 presentedViewController];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() assetPresenterPrepareForDismissal];
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v4 = self;
  sub_10075D1F4(a3);
}

@end