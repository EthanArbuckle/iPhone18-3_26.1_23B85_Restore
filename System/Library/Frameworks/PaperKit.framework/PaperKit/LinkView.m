@interface LinkView
- (_TtC8PaperKit8LinkView)init;
- (_TtC8PaperKit8LinkView)initWithCoder:(id)a3;
- (_TtC8PaperKit8LinkView)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
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

- (_TtC8PaperKit8LinkView)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC8PaperKit8LinkView_delegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit8LinkView_isSelected) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC8PaperKit8LinkView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = specialized LinkView.contextMenuInteraction(_:configurationForMenuAtLocation:)();

  return v7;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v4 = self;
  v5 = [(LinkView *)v4 window];
  if (v5)
  {

    v6 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end