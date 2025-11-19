@interface MaterialGradientSectionBackgroundView
- (_TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation MaterialGradientSectionBackgroundView

- (_TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView_gradientView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView_materialView;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(UIVisualEffectView) init];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(MaterialGradientSectionBackgroundView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView_gradientView];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView_materialView];
  [v2 bounds];
  [v4 setFrame:?];
}

@end