@interface HeaderView
- (_TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036110HeaderView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036110HeaderView)initWithReuseIdentifier:(id)a3;
- (_TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation HeaderView

- (void)layoutSubviews
{
  v2 = self;
  sub_10055BA04();
}

- (_TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036110HeaderView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    sub_10076FF9C();
    v4 = sub_10076FF6C();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for HeaderView();
  v5 = [(HeaderView *)&v7 initWithReuseIdentifier:v4];

  return v5;
}

- (_TtC20ProductPageExtensionP33_03F67F16EB9B4C87DFA8E646A61E036110HeaderView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HeaderView();
  v4 = a3;
  v5 = [(HeaderView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  type metadata accessor for StoryCardMediaView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView;
  v6 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *(&self->super.super.super.isa + v5) = sub_1000E4B54(&off_100882C28);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end