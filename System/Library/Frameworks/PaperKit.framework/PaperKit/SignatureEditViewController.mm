@interface SignatureEditViewController
- (_TtC8PaperKit27SignatureEditViewController)initWithCoder:(id)coder;
- (_TtC8PaperKit27SignatureEditViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)addAction:(id)action;
- (void)doneAction:(id)action;
- (void)viewDidLoad;
@end

@implementation SignatureEditViewController

- (_TtC8PaperKit27SignatureEditViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return SignatureEditViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (_TtC8PaperKit27SignatureEditViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  SignatureEditViewController.viewDidLoad()();
}

- (void)addAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  specialized SignatureEditViewController.addAction(_:)();
}

- (void)doneAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  specialized SignatureEditViewController.doneAction(_:)();
}

@end