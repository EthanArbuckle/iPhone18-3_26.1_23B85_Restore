@interface WorkoutRemoteAlertServiceViewController
- (WorkoutRemoteAlertServiceViewController)initWithCoder:(id)coder;
- (WorkoutRemoteAlertServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismissView;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
@end

@implementation WorkoutRemoteAlertServiceViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  contextCopy = context;
  selfCopy = self;
  WorkoutRemoteAlertServiceViewController.configure(with:completion:)(context, v6);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))();

    _Block_release(v5);
  }
}

- (void)dismissView
{
  selfCopy = self;
  WorkoutRemoteAlertServiceViewController.dismissView()();
}

- (WorkoutRemoteAlertServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for WorkoutRemoteAlertServiceViewController();
  v9 = [(WorkoutRemoteAlertServiceViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (WorkoutRemoteAlertServiceViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WorkoutRemoteAlertServiceViewController();
  coderCopy = coder;
  v5 = [(WorkoutRemoteAlertServiceViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end