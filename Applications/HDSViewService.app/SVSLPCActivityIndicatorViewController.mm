@interface SVSLPCActivityIndicatorViewController
- (_TtC14HDSViewService37SVSLPCActivityIndicatorViewController)initWithCoder:(id)coder;
- (_TtC14HDSViewService37SVSLPCActivityIndicatorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)complete;
- (void)reset;
- (void)spin;
- (void)viewDidLoad;
@end

@implementation SVSLPCActivityIndicatorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  SVSLPCActivityIndicatorViewController.viewDidLoad()();
}

- (void)spin
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v);
  selfCopy = self;
  sub_10008C9E0();
}

- (void)complete
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v);
  selfCopy = self;
  sub_10008CC14();
}

- (void)reset
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v);
  selfCopy = self;
  sub_10008C8D4();
}

- (_TtC14HDSViewService37SVSLPCActivityIndicatorViewController)initWithNibName:(id)name bundle:(id)bundle
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

  v8 = OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v;
  v9 = objc_allocWithZone(type metadata accessor for SVSLEDPasscodeActivityIndicatorView());
  bundleCopy = bundle;
  *(&self->super.super.super.isa + v8) = [v9 init];
  if (v7)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for SVSLPCActivityIndicatorViewController();
  v12 = [(SVSLPCActivityIndicatorViewController *)&v14 initWithNibName:v11 bundle:bundleCopy];

  return v12;
}

- (_TtC14HDSViewService37SVSLPCActivityIndicatorViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v;
  v6 = objc_allocWithZone(type metadata accessor for SVSLEDPasscodeActivityIndicatorView());
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for SVSLPCActivityIndicatorViewController();
  v8 = [(SVSLPCActivityIndicatorViewController *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end