@interface SignatureCreationViewController
- (BOOL)becomeFirstResponder;
- (_TtC8PaperKit31SignatureCreationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelAction:(id)a3;
- (void)canvasViewDrawingDidChange:(id)a3;
- (void)clearAction;
- (void)doneAction:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SignatureCreationViewController

- (_TtC8PaperKit31SignatureCreationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return SignatureCreationViewController.init(nibName:bundle:)(a4, v6, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  SignatureCreationViewController.viewDidLoad()();
}

- (BOOL)becomeFirstResponder
{
  v2 = self;
  v3 = SignatureCreationViewController.becomeFirstResponder()();

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  SignatureCreationViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  SignatureCreationViewController.viewDidDisappear(_:)(a3);
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for SignatureCreationViewController();
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = v10.receiver;
  [(SignatureCreationViewController *)&v10 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  v8 = [v7 traitCollection];
  v9 = [v8 horizontalSizeClass];

  if (v9 != [v6 horizontalSizeClass])
  {
    SignatureCreationViewController.clearSignature(with:)(a4);
  }

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v15.receiver = self;
  v15.super_class = type metadata accessor for SignatureCreationViewController();
  swift_unknownObjectRetain();
  v7 = v15.receiver;
  [(SignatureCreationViewController *)&v15 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = [v7 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;

    if (width != v11 || height != v13)
    {
      SignatureCreationViewController.clearSignature(with:)(a4);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)doneAction:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized SignatureCreationViewController.doneAction(_:)();
}

- (void)cancelAction:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized SignatureCreationViewController.cancelAction(_:)();
}

- (void)clearAction
{
  v2 = self;
  SignatureCreationViewController.clearAction()();
}

- (void)canvasViewDrawingDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized SignatureCreationViewController.canvasViewDrawingDidChange(_:)();
}

@end