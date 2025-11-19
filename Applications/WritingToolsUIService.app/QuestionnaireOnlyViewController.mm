@interface QuestionnaireOnlyViewController
- (_TtC21WritingToolsUIService31QuestionnaireOnlyViewController)initWithCoder:(id)a3;
- (_TtC21WritingToolsUIService31QuestionnaireOnlyViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidLoad;
@end

@implementation QuestionnaireOnlyViewController

- (_TtC21WritingToolsUIService31QuestionnaireOnlyViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000E2D20();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService31QuestionnaireOnlyViewController_preferredContentSizeHandler);
  v5 = *&self->preferredContentSizeHandler[OBJC_IVAR____TtC21WritingToolsUIService31QuestionnaireOnlyViewController_preferredContentSizeHandler];
  swift_unknownObjectRetain();
  v7 = self;
  v6([a3 preferredContentSize]);

  swift_unknownObjectRelease();
}

- (_TtC21WritingToolsUIService31QuestionnaireOnlyViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end