@interface WorkoutRemoteAlertServiceViewController
- (WorkoutRemoteAlertServiceViewController)initWithCoder:(id)a3;
- (WorkoutRemoteAlertServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismissView;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
@end

@implementation WorkoutRemoteAlertServiceViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  v7 = a3;
  v8 = self;
  WorkoutRemoteAlertServiceViewController.configure(with:completion:)(a3, v6);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))();

    _Block_release(v5);
  }
}

- (void)dismissView
{
  v2 = self;
  WorkoutRemoteAlertServiceViewController.dismissView()();
}

- (WorkoutRemoteAlertServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for WorkoutRemoteAlertServiceViewController();
  v9 = [(WorkoutRemoteAlertServiceViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (WorkoutRemoteAlertServiceViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutRemoteAlertServiceViewController();
  v4 = a3;
  v5 = [(WorkoutRemoteAlertServiceViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end