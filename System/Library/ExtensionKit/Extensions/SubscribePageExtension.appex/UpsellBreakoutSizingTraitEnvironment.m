@interface UpsellBreakoutSizingTraitEnvironment
- (CGSize)pageContainerSize;
- (UIEdgeInsets)pageMarginInsets;
- (_TtC22SubscribePageExtensionP33_63C99537259CB4BBA1C2F973322BF86736UpsellBreakoutSizingTraitEnvironment)init;
- (_TtP22SubscribePageExtension20PageTraitEnvironment_)snapshotPageTraitEnvironment;
- (void)setTraitCollection:(id)a3;
@end

@implementation UpsellBreakoutSizingTraitEnvironment

- (void)setTraitCollection:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_63C99537259CB4BBA1C2F973322BF86736UpsellBreakoutSizingTraitEnvironment_traitCollection);
  *(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_63C99537259CB4BBA1C2F973322BF86736UpsellBreakoutSizingTraitEnvironment_traitCollection) = a3;
  v3 = a3;
}

- (CGSize)pageContainerSize
{
  [*(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_63C99537259CB4BBA1C2F973322BF86736UpsellBreakoutSizingTraitEnvironment_pageTraits) pageContainerSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)pageMarginInsets
{
  [*(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtensionP33_63C99537259CB4BBA1C2F973322BF86736UpsellBreakoutSizingTraitEnvironment_pageTraits) pageMarginInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (_TtP22SubscribePageExtension20PageTraitEnvironment_)snapshotPageTraitEnvironment
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtC22SubscribePageExtensionP33_63C99537259CB4BBA1C2F973322BF86736UpsellBreakoutSizingTraitEnvironment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end