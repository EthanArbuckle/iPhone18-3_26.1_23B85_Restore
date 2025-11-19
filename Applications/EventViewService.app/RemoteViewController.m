@interface RemoteViewController
- (_TtC16EventViewService20RemoteViewController)initWithCoder:(id)a3;
- (_TtC16EventViewService20RemoteViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation RemoteViewController

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = self;
  sub_10005FE74();
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_10005F248(a3, v6, v7);
  sub_100060604(v6);
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

  else
  {
    __break(1u);
  }
}

- (void)handleButtonActions:(id)a3
{
  if (a3)
  {
    sub_10006054C(0, &qword_1002235B0);
    sub_100060594();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_10005FAE4(v4);
}

- (_TtC16EventViewService20RemoteViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  v11.super_class = type metadata accessor for RemoteViewController();
  v9 = [(RemoteViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC16EventViewService20RemoteViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RemoteViewController();
  v4 = a3;
  v5 = [(RemoteViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end