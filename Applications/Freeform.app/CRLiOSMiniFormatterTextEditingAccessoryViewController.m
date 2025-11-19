@interface CRLiOSMiniFormatterTextEditingAccessoryViewController
- (_TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)loadView;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation CRLiOSMiniFormatterTextEditingAccessoryViewController

- (void)loadView
{
  v3 = objc_allocWithZone(UIInputView);
  v5 = self;
  v4 = [v3 initWithFrame:0 inputViewStyle:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CRLiOSMiniFormatterTextEditingAccessoryViewController *)v5 setInputView:v4];
  sub_101061FA8();
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_100685EBC;
  }

  v8 = a3;
  v9 = self;
  sub_101066564(v8);
  sub_1000C1014(v7);
}

- (_TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
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

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1010658B8(v4);
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  if (swift_dynamicCastClass())
  {
    v12 = a3;
    v7 = a4;
    sub_1007164E4(v8, v9, v10, v11);
    [v12 setPreferredContentSize:?];
  }
}

@end