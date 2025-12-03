@interface ViewController
- (_TtC18DKPairingUIService14ViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)pairingStatusWithInfo:(id)info state:(int64_t)state metadata:(id)metadata error:(id)error;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)proxCardFlowDidDismiss;
- (void)viewDidLoad;
@end

@implementation ViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for ViewController();
  [(ViewController *)&v2 viewDidLoad];
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v7 = sub_10000A48C;
  }

  else
  {
    v7 = 0;
  }

  v8 = *&self->context[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context];
  *&self->context[OBJC_IVAR____TtC18DKPairingUIService14ViewController_context] = context;
  selfCopy = self;
  contextCopy = context;

  v13 = contextCopy;
  v11 = sub_100002ECC();
  if (v11)
  {
    [v11 setAllowsAlertStacking:1];
    v11 = swift_unknownObjectRelease();
  }

  if (v6)
  {
    (v7)(v11);

    sub_10000A27C(v7);
    v12 = v13;
  }

  else
  {

    v12 = selfCopy;
  }
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10000A2C4;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_1000089E0(v6, v7);
  sub_10000A27C(v6);
}

- (void)pairingStatusWithInfo:(id)info state:(int64_t)state metadata:(id)metadata error:(id)error
{
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  errorCopy = error;
  selfCopy = self;
  sub_100009E70(state, v9, error);
}

- (_TtC18DKPairingUIService14ViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100007A0C(v5, v7, bundle);
}

- (void)proxCardFlowDidDismiss
{
  selfCopy = self;
  sub_100007F48();
}

@end