@interface Library.ContextMenuButton.Button.UIContextButton
- (_TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton)initWithCoder:(id)coder;
- (_TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)layoutSubviews;
@end

@implementation Library.ContextMenuButton.Button.UIContextButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100611720();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  sub_100009F78(0, &qword_1011987F8);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  selfCopy = self;
  v7 = sub_1007354F8(0, 0, 0, sub_1006146A4, v5);
  [v7 setPreferredMenuElementOrder:2];

  return v7;
}

- (_TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_menuProvider);
  *v3 = 0;
  v3[1] = 0;
  v4 = self + OBJC_IVAR____TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton_preferredVisualSize;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtCVVE5MusicO9MusicCore7Library17ContextMenuButtonP33_D5F4B96DB6B3519CEF4067078A2950BC6Button15UIContextButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end