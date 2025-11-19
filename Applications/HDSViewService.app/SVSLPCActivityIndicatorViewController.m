@interface SVSLPCActivityIndicatorViewController
- (_TtC14HDSViewService37SVSLPCActivityIndicatorViewController)initWithCoder:(id)a3;
- (_TtC14HDSViewService37SVSLPCActivityIndicatorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)complete;
- (void)reset;
- (void)spin;
- (void)viewDidLoad;
@end

@implementation SVSLPCActivityIndicatorViewController

- (void)viewDidLoad
{
  v2 = self;
  SVSLPCActivityIndicatorViewController.viewDidLoad()();
}

- (void)spin
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v);
  v3 = self;
  sub_10008C9E0();
}

- (void)complete
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v);
  v3 = self;
  sub_10008CC14();
}

- (void)reset
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v);
  v3 = self;
  sub_10008C8D4();
}

- (_TtC14HDSViewService37SVSLPCActivityIndicatorViewController)initWithNibName:(id)a3 bundle:(id)a4
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

  v8 = OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v;
  v9 = objc_allocWithZone(type metadata accessor for SVSLEDPasscodeActivityIndicatorView());
  v10 = a4;
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
  v12 = [(SVSLPCActivityIndicatorViewController *)&v14 initWithNibName:v11 bundle:v10];

  return v12;
}

- (_TtC14HDSViewService37SVSLPCActivityIndicatorViewController)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v;
  v6 = objc_allocWithZone(type metadata accessor for SVSLEDPasscodeActivityIndicatorView());
  v7 = a3;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for SVSLPCActivityIndicatorViewController();
  v8 = [(SVSLPCActivityIndicatorViewController *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end