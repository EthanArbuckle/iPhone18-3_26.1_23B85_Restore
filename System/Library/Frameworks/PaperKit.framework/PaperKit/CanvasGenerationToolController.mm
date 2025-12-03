@interface CanvasGenerationToolController
- (_TtC8PaperKit30CanvasGenerationToolController)initWithCoder:(id)coder;
- (_TtC8PaperKit30CanvasGenerationToolController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CanvasGenerationToolController

- (_TtC8PaperKit30CanvasGenerationToolController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CanvasGenerationToolController();
  v2 = v3.receiver;
  [(CanvasGenerationToolController *)&v3 viewDidLoad];
  [*&v2[OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool] setTranslatesAutoresizingMaskIntoConstraints_];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CanvasGenerationToolController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(CanvasGenerationToolController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  CanvasGenerationTool.updateScrollViewLayout(_:animationDuration:animationCurveOptions:)(0, 0.0, 0.0);

  swift_unknownObjectRelease();
}

- (_TtC8PaperKit30CanvasGenerationToolController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end