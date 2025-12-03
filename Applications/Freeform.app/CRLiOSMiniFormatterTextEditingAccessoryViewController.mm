@interface CRLiOSMiniFormatterTextEditingAccessoryViewController
- (_TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)loadView;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation CRLiOSMiniFormatterTextEditingAccessoryViewController

- (void)loadView
{
  v3 = objc_allocWithZone(UIInputView);
  selfCopy = self;
  v4 = [v3 initWithFrame:0 inputViewStyle:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CRLiOSMiniFormatterTextEditingAccessoryViewController *)selfCopy setInputView:v4];
  sub_101061FA8();
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_100685EBC;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_101066564(controllerCopy);
  sub_1000C1014(v7);
}

- (_TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedAuxiliaryViewController) && [objc_opt_self() crl_phoneUI])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1010658B8(dismissCopy);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  if (swift_dynamicCastClass())
  {
    controllerCopy = controller;
    viewControllerCopy = viewController;
    sub_1007164E4(v8, v9, v10, v11);
    [controllerCopy setPreferredContentSize:?];
  }
}

@end