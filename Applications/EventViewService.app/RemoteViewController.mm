@interface RemoteViewController
- (_TtC16EventViewService20RemoteViewController)initWithCoder:(id)coder;
- (_TtC16EventViewService20RemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation RemoteViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10005FE74();
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10006064C;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_10005F248(context, v6, v7);
  sub_100060604(v6);
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

  else
  {
    __break(1u);
  }
}

- (void)handleButtonActions:(id)actions
{
  if (actions)
  {
    sub_10006054C(0, &qword_1002235B0);
    sub_100060594();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_10005FAE4(v4);
}

- (_TtC16EventViewService20RemoteViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for RemoteViewController();
  v9 = [(RemoteViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC16EventViewService20RemoteViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RemoteViewController();
  coderCopy = coder;
  v5 = [(RemoteViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end