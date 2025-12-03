@interface PromptEntryViewController
- (_TtC21WritingToolsUIService25PromptEntryViewController)initWithCoder:(id)coder;
- (_TtC21WritingToolsUIService25PromptEntryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidLoad;
@end

@implementation PromptEntryViewController

- (_TtC21WritingToolsUIService25PromptEntryViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_writingToolsDelegate) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000AFEF0();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_preferredContentSizeHandler);
  v5 = *&self->preferredContentSizeHandler[OBJC_IVAR____TtC21WritingToolsUIService25PromptEntryViewController_preferredContentSizeHandler];
  swift_unknownObjectRetain();
  selfCopy = self;
  v6([container preferredContentSize]);

  swift_unknownObjectRelease();
}

- (_TtC21WritingToolsUIService25PromptEntryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end