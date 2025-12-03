@interface InstallPageInstallingOfferView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension30InstallPageInstallingOfferView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation InstallPageInstallingOfferView

- (_TtC22SubscribePageExtension30InstallPageInstallingOfferView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_progressView) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30InstallPageInstallingOfferView_animationCompletionHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_10061DD48();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10061E050();
}

@end