@interface ToolbarStyleButton
- (void)layoutSubviews;
@end

@implementation ToolbarStyleButton

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ToolbarStyleButton();
  v2 = v4.receiver;
  [(ToolbarStyleButton *)&v4 layoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = *&v2[OBJC_IVAR____TtC5Books18ToolbarStyleButton_highlightView];
    [v2 bounds];
    [v3 setFrame:?];
  }
}

@end