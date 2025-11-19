@interface SignatureEditViewController
- (_TtC8PaperKit27SignatureEditViewController)initWithCoder:(id)a3;
- (_TtC8PaperKit27SignatureEditViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)addAction:(id)a3;
- (void)doneAction:(id)a3;
- (void)viewDidLoad;
@end

@implementation SignatureEditViewController

- (_TtC8PaperKit27SignatureEditViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SignatureEditViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (_TtC8PaperKit27SignatureEditViewController)initWithCoder:(id)a3
{
  *(&self->super.super + OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_panelSize) = xmmword_1D4060E20;
  v4 = OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_navigationBar;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCCC0]) init];
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_completion);
  *v5 = UnknownCanvasElementView.flags.modify;
  v5[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  SignatureEditViewController.viewDidLoad()();
}

- (void)addAction:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized SignatureEditViewController.addAction(_:)();
}

- (void)doneAction:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized SignatureEditViewController.doneAction(_:)();
}

@end