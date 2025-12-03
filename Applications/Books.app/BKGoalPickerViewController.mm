@interface BKGoalPickerViewController
+ (void)createAsync:(int64_t)async :(int64_t)a4 :(id)a5 :(id)a6;
- (BKGoalPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)shouldAutorotate;
- (UIButton)doneButton;
- (UILabel)titleLabel;
- (UIPickerView)picker;
- (UIView)containerView;
- (UIView)titleView;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection;
- (void)backgroundTapped:(id)tapped;
- (void)doneButtonPressed:(id)pressed;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

+ (void)createAsync:(int64_t)async :(int64_t)a4 :(id)a5 :(id)a6
{
  swift_unknownObjectRetain();
  v10 = a6;
  sub_100610164(async, a4, a5, v10);
  swift_unknownObjectRelease();
}

- (BOOL)shouldAutorotate
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return userInterfaceIdiom == 1;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10060DCD4();
}

- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_10060E5C4();

  sub_1000074E0(&v6);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10060E764(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10060E874();
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)doneButtonPressed:(id)pressed
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_10060F054(1);
  [(BKGoalPickerViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  sub_1000074E0(&v5);
}

- (void)backgroundTapped:(id)tapped
{
  selfCopy = self;
  sub_10060F054(1);
  [(BKGoalPickerViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (BKGoalPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  result = objc_opt_self();
  if (row < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(self + OBJC_IVAR___BKGoalPickerViewController_model);
  if (*(v8 + 16) <= row)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(v8 + 8 * row + 32);
  v11 = objc_allocWithZone(NSNumber);
  selfCopy = self;
  v13 = [v11 initWithInteger:v10];
  v14 = [v9 localizedStringFromNumber:v13 numberStyle:0];

  sub_1007A2254();
  v15 = sub_1007A2214();

  return v15;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  *(self + OBJC_IVAR___BKGoalPickerViewController_selectedRow) = row;
  selfCopy = self;
  sub_10060F054(0);
  sub_10060EAF4();
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  sub_10060F054(1);
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  sourceViewControllerCopy = sourceViewController;
  selfCopy = self;
  v12 = sub_10060F758(controllerCopy, viewController, sourceViewControllerCopy);

  return v12;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  Strong = swift_unknownObjectWeakLoadStrong();
  beginCopy = begin;
  selfCopy = self;
  [beginCopy locationInView:Strong];
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