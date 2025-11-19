@interface SuggestionViewController
- (_TtC21WritingToolsUIService24SuggestionViewController)initWithCoder:(id)a3;
- (_TtC21WritingToolsUIService24SuggestionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidLoad;
@end

@implementation SuggestionViewController

- (_TtC21WritingToolsUIService24SuggestionViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100002B34();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_preferredContentSizeHandler);
  v5 = *&self->preferredContentSizeHandler[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_preferredContentSizeHandler];
  swift_unknownObjectRetain();
  v7 = self;
  v6([a3 preferredContentSize]);

  swift_unknownObjectRelease();
}

- (_TtC21WritingToolsUIService24SuggestionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end