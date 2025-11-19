@interface HeroGradientView
- (_TtC20ProductPageExtension16HeroGradientView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation HeroGradientView

- (_TtC20ProductPageExtension16HeroGradientView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(CAGradientLayer) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient) = 1;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HeroGradientView();
  v2 = v4.receiver;
  [(HeroGradientView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient];
  [v2 bounds];
  [v3 setFrame:?];
  sub_1004583A0();
}

@end