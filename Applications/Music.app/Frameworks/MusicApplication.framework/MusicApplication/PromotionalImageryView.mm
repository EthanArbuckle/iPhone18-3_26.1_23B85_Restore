@interface PromotionalImageryView
- (_TtC16MusicApplication22PromotionalImageryView)initWithCoder:(id)coder;
- (_TtC16MusicApplication22PromotionalImageryView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PromotionalImageryView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PromotionalImageryView *)&v3 layoutSubviews];
  sub_EC654(0);
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(PromotionalImageryView *)&v6 traitCollectionDidChange:changeCopy];
  [v5 setNeedsLayout];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_ECC34(event, x, y);

  return v10;
}

- (_TtC16MusicApplication22PromotionalImageryView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_promotionalParallaxContentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_upsellBannerView) = 0;
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_normalizedContentOffset);
  *v9 = 0;
  v9[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication22PromotionalImageryView_contentInsetAdditions) = UIOffsetZero;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(PromotionalImageryView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC16MusicApplication22PromotionalImageryView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_ECFF8(coderCopy);

  return v4;
}

@end