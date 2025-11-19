@interface PromptEntryViewController
- (_TtC21WritingToolsUIService25PromptEntryViewController)initWithCoder:(id)a3;
- (_TtC21WritingToolsUIService25PromptEntryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidLoad;
@end

@implementation PromptEntryViewController

- (_TtC21WritingToolsUIService25PromptEntryViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_writingToolsDelegate) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000AFEF0();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_preferredContentSizeHandler);
  v5 = *&self->preferredContentSizeHandler[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_preferredContentSizeHandler];
  swift_unknownObjectRetain();
  v7 = self;
  v6([a3 preferredContentSize]);

  swift_unknownObjectRelease();
}

- (_TtC21WritingToolsUIService25PromptEntryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end