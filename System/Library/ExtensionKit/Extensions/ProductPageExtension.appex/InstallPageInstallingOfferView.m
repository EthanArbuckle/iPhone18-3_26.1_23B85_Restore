@interface InstallPageInstallingOfferView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension30InstallPageInstallingOfferView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation InstallPageInstallingOfferView

- (_TtC20ProductPageExtension30InstallPageInstallingOfferView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_progressView) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_animationCompletionHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_1002311E0();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1002314E8();
}

@end