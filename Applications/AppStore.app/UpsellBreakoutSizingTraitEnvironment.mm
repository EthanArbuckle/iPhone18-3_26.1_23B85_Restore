@interface UpsellBreakoutSizingTraitEnvironment
- (CGSize)pageContainerSize;
- (UIEdgeInsets)pageMarginInsets;
- (_TtC8AppStoreP33_CF26EB3C1E0829881961C198130D7D1F36UpsellBreakoutSizingTraitEnvironment)init;
- (_TtP8AppStore20PageTraitEnvironment_)snapshotPageTraitEnvironment;
- (void)setTraitCollection:(id)collection;
@end

@implementation UpsellBreakoutSizingTraitEnvironment

- (void)setTraitCollection:(id)collection
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8AppStoreP33_CF26EB3C1E0829881961C198130D7D1F36UpsellBreakoutSizingTraitEnvironment_traitCollection);
  *(&self->super.isa + OBJC_IVAR____TtC8AppStoreP33_CF26EB3C1E0829881961C198130D7D1F36UpsellBreakoutSizingTraitEnvironment_traitCollection) = collection;
  collectionCopy = collection;
}

- (CGSize)pageContainerSize
{
  [*(&self->super.isa + OBJC_IVAR____TtC8AppStoreP33_CF26EB3C1E0829881961C198130D7D1F36UpsellBreakoutSizingTraitEnvironment_pageTraits) pageContainerSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)pageMarginInsets
{
  [*(&self->super.isa + OBJC_IVAR____TtC8AppStoreP33_CF26EB3C1E0829881961C198130D7D1F36UpsellBreakoutSizingTraitEnvironment_pageTraits) pageMarginInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (_TtP8AppStore20PageTraitEnvironment_)snapshotPageTraitEnvironment
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtC8AppStoreP33_CF26EB3C1E0829881961C198130D7D1F36UpsellBreakoutSizingTraitEnvironment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end