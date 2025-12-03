@interface FadeInDynamicTypeButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIColor)backgroundColor;
- (_TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation FadeInDynamicTypeButton

- (_TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_maximumFadeWidth) = 0x4059000000000000;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_fadeInPosition) = 0;
  v3 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_touchInsets;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  sub_23F034();
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FadeInDynamicTypeButton();
  backgroundColor = [(FadeInDynamicTypeButton *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FadeInDynamicTypeButton();
  colorCopy = color;
  v5 = v6.receiver;
  [(FadeInDynamicTypeButton *)&v6 setBackgroundColor:colorCopy];
  sub_23F034();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_23F294();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v7 = (self + OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_touchInsets);
  if (self->super.fontUseCase[OBJC_IVAR____TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton_touchInsets + 24])
  {
    v19.receiver = self;
    v19.super_class = type metadata accessor for FadeInDynamicTypeButton();
    return [(FadeInDynamicTypeButton *)&v19 pointInside:event withEvent:x, y];
  }

  else
  {
    v11 = *v7;
    v10 = v7[1];
    eventCopy = event;
    selfCopy = self;
    [(FadeInDynamicTypeButton *)selfCopy bounds];
    v21.origin.x = UIEdgeInsetsInsetRect(v14, v15, v16, v17, v11, v10);
    v20.x = x;
    v20.y = y;
    v18 = CGRectContainsPoint(v21, v20);

    return v18;
  }
}

- (_TtC23ShelfKitCollectionViews23FadeInDynamicTypeButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end