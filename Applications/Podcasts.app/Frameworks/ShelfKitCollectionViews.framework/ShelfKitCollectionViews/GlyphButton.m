@interface GlyphButton
- (BOOL)isHighlighted;
- (_TtC23ShelfKitCollectionViews11GlyphButton)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setHighlighted:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation GlyphButton

- (void)tintColorDidChange
{
  v2 = self;
  sub_2518F8();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_251A0C();
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GlyphButton();
  return [(GlyphButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for GlyphButton();
  v11.receiver = self;
  v11.super_class = v5;
  v6 = self;
  v7 = [(GlyphButton *)&v11 isHighlighted];
  v10.receiver = v6;
  v10.super_class = v5;
  [(GlyphButton *)&v10 setHighlighted:v3];
  if (v7 != [(GlyphButton *)v6 isHighlighted])
  {
    v8 = [(GlyphButton *)v6 isHighlighted];
    v9 = 1.0;
    if (v8)
    {
      v9 = 0.5;
    }

    [(GlyphButton *)v6 setAlpha:v9];
  }
}

- (_TtC23ShelfKitCollectionViews11GlyphButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = _s23ShelfKitCollectionViews11GlyphButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0kH0C_So0K6RegionCtF_0(v6);

  return v9;
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v5 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor);
  if (v5)
  {
    v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style;
    swift_beginAccess();
    if (*(&self->super.super.super.super.super.super.super.isa + v7) == 2)
    {
      v8 = self;
      v9 = v5;
      sub_252B30(v9);
    }
  }
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  _s23ShelfKitCollectionViews11GlyphButtonC18pointerInteraction_9willEnter8animatorySo09UIPointerH0C_So0L6RegionCSo0lH9Animating_ptF_0();

  swift_unknownObjectRelease();
}

@end