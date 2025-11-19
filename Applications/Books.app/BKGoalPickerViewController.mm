@interface BKGoalPickerViewController
+ (void)createAsync:(int64_t)a3 :(int64_t)a4 :(id)a5 :(id)a6;
- (BKGoalPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)shouldAutorotate;
- (UIButton)doneButton;
- (UILabel)titleLabel;
- (UIPickerView)picker;
- (UIView)containerView;
- (UIView)titleView;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (unint64_t)supportedInterfaceOrientations;
- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4;
- (void)backgroundTapped:(id)a3;
- (void)doneButtonPressed:(id)a3;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation BKGoalPickerViewController

- (UIView)containerView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIView)titleView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIPickerView)picker
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)titleLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIButton)doneButton
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (void)createAsync:(int64_t)a3 :(int64_t)a4 :(id)a5 :(id)a6
{
  swift_unknownObjectRetain();
  v10 = a6;
  sub_100610164(a3, a4, a5, v10);
  swift_unknownObjectRelease();
}

- (BOOL)shouldAutorotate
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 == 1;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10060DCD4();
}

- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_10060E5C4();

  sub_1000074E0(&v6);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10060E764(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_10060E874();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)doneButtonPressed:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_10060F054(1);
  [(BKGoalPickerViewController *)v4 dismissViewControllerAnimated:1 completion:0];

  sub_1000074E0(&v5);
}

- (void)backgroundTapped:(id)a3
{
  v3 = self;
  sub_10060F054(1);
  [(BKGoalPickerViewController *)v3 dismissViewControllerAnimated:1 completion:0];
}

- (BKGoalPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  result = objc_opt_self();
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(self + OBJC_IVAR___BKGoalPickerViewController_model);
  if (*(v8 + 16) <= a4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(v8 + 8 * a4 + 32);
  v11 = objc_allocWithZone(NSNumber);
  v12 = self;
  v13 = [v11 initWithInteger:v10];
  v14 = [v9 localizedStringFromNumber:v13 numberStyle:0];

  sub_1007A2254();
  v15 = sub_1007A2214();

  return v15;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  *(self + OBJC_IVAR___BKGoalPickerViewController_selectedRow) = a4;
  v5 = self;
  sub_10060F054(0);
  sub_10060EAF4();
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v3 = self;
  sub_10060F054(1);
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10060F758(v8, a4, v10);

  return v12;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = a3;
  v7 = self;
  [v6 locationInView:Strong];
  v9 = v8;
  v11 = v10;

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    [v12 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v24.origin.x = v15;
    v24.origin.y = v17;
    v24.size.width = v19;
    v24.size.height = v21;
    v23.x = v9;
    v23.y = v11;
    LOBYTE(v13) = CGRectContainsPoint(v24, v23);

    LOBYTE(v12) = v13 ^ 1;
  }

  else
  {
    __break(1u);
  }

  return v12;
}

@end