@interface SignatureCreationViewController
- (BOOL)becomeFirstResponder;
- (_TtC8PaperKit31SignatureCreationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelAction:(id)action;
- (void)canvasViewDrawingDidChange:(id)change;
- (void)clearAction;
- (void)doneAction:(id)action;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation SignatureCreationViewController

- (_TtC8PaperKit31SignatureCreationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return SignatureCreationViewController.init(nibName:bundle:)(bundle, v6, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  SignatureCreationViewController.viewDidLoad()();
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v3 = SignatureCreationViewController.becomeFirstResponder()();

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  SignatureCreationViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  SignatureCreationViewController.viewDidDisappear(_:)(disappear);
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for SignatureCreationViewController();
  collectionCopy = collection;
  swift_unknownObjectRetain();
  v7 = v10.receiver;
  [(SignatureCreationViewController *)&v10 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  traitCollection = [v7 traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass != [collectionCopy horizontalSizeClass])
  {
    SignatureCreationViewController.clearSignature(with:)(coordinator);
  }

  swift_unknownObjectRelease();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v15.receiver = self;
  v15.super_class = type metadata accessor for SignatureCreationViewController();
  swift_unknownObjectRetain();
  v7 = v15.receiver;
  [(SignatureCreationViewController *)&v15 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  view = [v7 view];
  if (view)
  {
    v9 = view;
    [view bounds];
    v11 = v10;
    v13 = v12;

    if (width != v11 || height != v13)
    {
      SignatureCreationViewController.clearSignature(with:)(coordinator);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)doneAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  specialized SignatureCreationViewController.doneAction(_:)();
}

- (void)cancelAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  specialized SignatureCreationViewController.cancelAction(_:)();
}

- (void)clearAction
{
  selfCopy = self;
  SignatureCreationViewController.clearAction()();
}

- (void)canvasViewDrawingDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  specialized SignatureCreationViewController.canvasViewDrawingDidChange(_:)();
}

@end