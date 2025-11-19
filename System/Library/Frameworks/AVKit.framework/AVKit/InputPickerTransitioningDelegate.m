@interface InputPickerTransitioningDelegate
- (_TtC5AVKit32InputPickerTransitioningDelegate)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation InputPickerTransitioningDelegate

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_18B4B2F80(v8, a4);

  return v12;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_18B4B30C0(v8);

  return v12;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_18B4B2C44(v4);

  return v6;
}

- (_TtC5AVKit32InputPickerTransitioningDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end