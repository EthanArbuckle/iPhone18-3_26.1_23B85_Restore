@interface LockOverlayViewController
- (_TtC12ClarityBoard25LockOverlayViewController)initWithCoder:(id)coder;
- (_TtC12ClarityBoard25LockOverlayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)viewDidLoad;
@end

@implementation LockOverlayViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10008021C();
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  sub_10002C9FC(0, &qword_10032EA50);
  sub_100080C10();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  sub_1000810AC(v6);
}

- (_TtC12ClarityBoard25LockOverlayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
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
  bundleCopy = bundle;
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
  v11 = [(LockOverlayViewController *)&v13 initWithNibName:v10 bundle:bundleCopy];

  return v11;
}

- (_TtC12ClarityBoard25LockOverlayViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC12ClarityBoard25LockOverlayViewController_dismissPublisher;
  sub_10002B6CC(&qword_10032D0B8);
  swift_allocObject();
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = PassthroughSubject.init()();
  v9.receiver = self;
  v9.super_class = type metadata accessor for LockOverlayViewController();
  v7 = [(LockOverlayViewController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end