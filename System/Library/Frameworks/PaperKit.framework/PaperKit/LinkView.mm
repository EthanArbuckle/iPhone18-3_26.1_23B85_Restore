@interface LinkView
- (_TtC8PaperKit8LinkView)init;
- (_TtC8PaperKit8LinkView)initWithCoder:(id)coder;
- (_TtC8PaperKit8LinkView)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
@end

@implementation LinkView

- (_TtC8PaperKit8LinkView)init
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC8PaperKit8LinkView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit8LinkView_isSelected) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for LinkView();
  return [(LinkView *)&v4 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtC8PaperKit8LinkView)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC8PaperKit8LinkView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit8LinkView_isSelected) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC8PaperKit8LinkView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = specialized LinkView.contextMenuInteraction(_:configurationForMenuAtLocation:)();

  return v7;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  selfCopy = self;
  window = [(LinkView *)selfCopy window];
  if (window)
  {

    initWithView_ = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  }

  else
  {
    initWithView_ = 0;
  }

  return initWithView_;
}

@end