@interface ToolbarButton
- (CGSize)intrinsicContentSize;
- (_TtC5Books13ToolbarButton)initWithFrame:(CGRect)a3;
- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4;
- (void)accessibilityContrastChanged;
- (void)didHover:(id)a3;
- (void)sendActionsForControlEvents:(unint64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3 forState:(unint64_t)a4;
- (void)setSelected:(BOOL)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation ToolbarButton

- (void)sendActionsForControlEvents:(unint64_t)a3
{
  v4 = self;
  ToolbarButton.sendActions(for:)(a3);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_10000A7C4(0, &qword_100AE2248);
  sub_10053B0B4();
  v6 = sub_1007A2834();
  v7 = a4;
  v8 = self;
  ToolbarButton.touchesEnded(_:with:)(v6, a4);
}

- (void)accessibilityContrastChanged
{
  v2 = self;
  sub_100539810();
}

- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_100539A34(a4);

  sub_1000074E0(&v8);
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ToolbarButton();
  v4 = v7.receiver;
  [(ToolbarButton *)&v7 setEnabled:v3];
  if ([v4 isEnabled])
  {
    v5 = sub_10053A4D8();
  }

  else
  {
    v5 = [objc_opt_self() tertiaryLabelColor];
  }

  v6 = v5;
  [v4 setTitleColor:v5 forStates:0];
}

- (void)setImage:(id)a3 forState:(unint64_t)a4
{
  v4 = a4;
  v7 = a3;
  v8 = self;
  v10.value.super.isa = a3;
  v10.is_nil = v4;
  ToolbarButton.setImage(_:for:)(v10, v8);
}

- (void)didHover:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10053A1C8(v4);
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  ToolbarButton.isSelected.setter(a3);
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  ToolbarButton.isHighlighted.setter(a3);
}

- (CGSize)intrinsicContentSize
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for ToolbarButton();
  v2 = v10.receiver;
  [(ToolbarButton *)&v10 intrinsicContentSize];
  v5 = v4;
  if (v3 > 28.0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 28.0;
  }

  v7 = OBJC_IVAR____TtC5Books13ToolbarButton_size;
  swift_beginAccess();
  LODWORD(v7) = v2[v7];

  v8 = 32.0;
  if (!v7)
  {
    v8 = 28.0;
  }

  if (v5 > v8)
  {
    v8 = v5;
  }

  v9 = v6;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC5Books13ToolbarButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end