@interface GlyphButton
- (BOOL)isHighlighted;
- (_TtC23ShelfKitCollectionViews11GlyphButton)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setHighlighted:(BOOL)highlighted;
- (void)tintColorDidChange;
@end

@implementation GlyphButton

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_2518F8();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_251A0C();
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GlyphButton();
  return [(GlyphButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for GlyphButton();
  v11.receiver = self;
  v11.super_class = v5;
  selfCopy = self;
  isHighlighted = [(GlyphButton *)&v11 isHighlighted];
  v10.receiver = selfCopy;
  v10.super_class = v5;
  [(GlyphButton *)&v10 setHighlighted:highlightedCopy];
  if (isHighlighted != [(GlyphButton *)selfCopy isHighlighted])
  {
    isHighlighted2 = [(GlyphButton *)selfCopy isHighlighted];
    v9 = 1.0;
    if (isHighlighted2)
    {
      v9 = 0.5;
    }

    [(GlyphButton *)selfCopy setAlpha:v9];
  }
}

- (_TtC23ShelfKitCollectionViews11GlyphButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = _s23ShelfKitCollectionViews11GlyphButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0kH0C_So0K6RegionCtF_0(interactionCopy);

  return v9;
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  v5 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor);
  if (v5)
  {
    v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
    swift_beginAccess();
    if (*(&self->super.super.super.super.super.super.super.isa + v7) == 2)
    {
      selfCopy = self;
      v9 = v5;
      sub_252B30(v9);
    }
  }
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  interactionCopy = interaction;
  regionCopy = region;
  swift_unknownObjectRetain();
  selfCopy = self;
  _s23ShelfKitCollectionViews11GlyphButtonC18pointerInteraction_9willEnter8animatorySo09UIPointerH0C_So0L6RegionCSo0lH9Animating_ptF_0();

  swift_unknownObjectRelease();
}

@end