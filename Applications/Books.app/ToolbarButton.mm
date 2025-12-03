@interface ToolbarButton
- (CGSize)intrinsicContentSize;
- (_TtC5Books13ToolbarButton)initWithFrame:(CGRect)frame;
- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection;
- (void)accessibilityContrastChanged;
- (void)didHover:(id)hover;
- (void)sendActionsForControlEvents:(unint64_t)events;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image forState:(unint64_t)state;
- (void)setSelected:(BOOL)selected;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation ToolbarButton

- (void)sendActionsForControlEvents:(unint64_t)events
{
  selfCopy = self;
  ToolbarButton.sendActions(for:)(events);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_10000A7C4(0, &qword_100AE2248);
  sub_10053B0B4();
  v6 = sub_1007A2834();
  eventCopy = event;
  selfCopy = self;
  ToolbarButton.touchesEnded(_:with:)(v6, event);
}

- (void)accessibilityContrastChanged
{
  selfCopy = self;
  sub_100539810();
}

- (void)_traitCollectionDidChangeWithSender:(id)sender previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_100539A34(collection);

  sub_1000074E0(&v8);
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ToolbarButton();
  v4 = v7.receiver;
  [(ToolbarButton *)&v7 setEnabled:enabledCopy];
  if ([v4 isEnabled])
  {
    tertiaryLabelColor = sub_10053A4D8();
  }

  else
  {
    tertiaryLabelColor = [objc_opt_self() tertiaryLabelColor];
  }

  v6 = tertiaryLabelColor;
  [v4 setTitleColor:tertiaryLabelColor forStates:0];
}

- (void)setImage:(id)image forState:(unint64_t)state
{
  stateCopy = state;
  imageCopy = image;
  selfCopy = self;
  v10.value.super.isa = image;
  v10.is_nil = stateCopy;
  ToolbarButton.setImage(_:for:)(v10, selfCopy);
}

- (void)didHover:(id)hover
{
  hoverCopy = hover;
  selfCopy = self;
  sub_10053A1C8(hoverCopy);
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  ToolbarButton.isSelected.setter(selected);
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  ToolbarButton.isHighlighted.setter(highlighted);
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

- (_TtC5Books13ToolbarButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end