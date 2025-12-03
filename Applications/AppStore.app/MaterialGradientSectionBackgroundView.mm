@interface MaterialGradientSectionBackgroundView
- (_TtC8AppStore37MaterialGradientSectionBackgroundView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation MaterialGradientSectionBackgroundView

- (_TtC8AppStore37MaterialGradientSectionBackgroundView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_gradientView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v5 = OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_materialView;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(UIVisualEffectView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(MaterialGradientSectionBackgroundView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_gradientView];
  [v2 bounds];
  [v3 setFrame:?];
  v4 = *&v2[OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_materialView];
  [v2 bounds];
  [v4 setFrame:?];
}

@end