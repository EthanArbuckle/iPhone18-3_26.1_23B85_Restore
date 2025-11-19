@interface LockOverlayViewController
- (_TtC12ClarityBoard25LockOverlayViewController)initWithCoder:(id)a3;
- (_TtC12ClarityBoard25LockOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)viewDidLoad;
@end

@implementation LockOverlayViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10008021C();
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  sub_10002C9FC(0, &qword_10032EA50);
  sub_100080C10();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  sub_1000810AC(v6);
}

- (_TtC12ClarityBoard25LockOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtC12ClarityBoard25LockOverlayViewController_dismissPublisher;
  sub_10002B6CC(&qword_10032D0B8);
  swift_allocObject();
  v9 = a4;
  *(&self->super.super.super.isa + v8) = PassthroughSubject.init()();
  if (v7)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for LockOverlayViewController();
  v11 = [(LockOverlayViewController *)&v13 initWithNibName:v10 bundle:v9];

  return v11;
}

- (_TtC12ClarityBoard25LockOverlayViewController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC12ClarityBoard25LockOverlayViewController_dismissPublisher;
  sub_10002B6CC(&qword_10032D0B8);
  swift_allocObject();
  v6 = a3;
  *(&self->super.super.super.isa + v5) = PassthroughSubject.init()();
  v9.receiver = self;
  v9.super_class = type metadata accessor for LockOverlayViewController();
  v7 = [(LockOverlayViewController *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end