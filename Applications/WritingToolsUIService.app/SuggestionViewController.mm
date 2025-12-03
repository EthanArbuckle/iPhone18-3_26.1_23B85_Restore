@interface SuggestionViewController
- (_TtC21WritingToolsUIService24SuggestionViewController)initWithCoder:(id)coder;
- (_TtC21WritingToolsUIService24SuggestionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidLoad;
@end

@implementation SuggestionViewController

- (_TtC21WritingToolsUIService24SuggestionViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100002B34();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_preferredContentSizeHandler);
  v5 = *&self->preferredContentSizeHandler[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_preferredContentSizeHandler];
  swift_unknownObjectRetain();
  selfCopy = self;
  v6([container preferredContentSize]);

  swift_unknownObjectRelease();
}

- (_TtC21WritingToolsUIService24SuggestionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end