@interface UpsellLogoFallbackHeader
- (_TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader)initWithCoder:(id)a3;
@end

@implementation UpsellLogoFallbackHeader

- (_TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_backgroundArtworkView;
  *(&self->super.super.super.super.isa + v4) = sub_2DE0A4();
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_logoArtworkView;
  *(&self->super.super.super.super.isa + v5) = sub_2DE1A0();
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews24UpsellLogoFallbackHeader_gradientView;
  type metadata accessor for UpsellTitleBarGradientView();
  *(&self->super.super.super.super.isa + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_30D648();
  __break(1u);
  return result;
}

@end