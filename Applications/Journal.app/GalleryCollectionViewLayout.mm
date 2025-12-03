@interface GalleryCollectionViewLayout
+ (Class)layoutAttributesClass;
- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes;
- (_TtC7Journal27GalleryCollectionViewLayout)initWithCoder:(id)coder;
- (_TtC7Journal27GalleryCollectionViewLayout)initWithSection:(id)section;
- (_TtC7Journal27GalleryCollectionViewLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC7Journal27GalleryCollectionViewLayout)initWithSection:(id)section sectionProvider:(id)provider configuration:(id)configuration;
- (_TtC7Journal27GalleryCollectionViewLayout)initWithSectionProvider:(id)provider;
- (_TtC7Journal27GalleryCollectionViewLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)invalidationContextForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
@end

@implementation GalleryCollectionViewLayout

+ (Class)layoutAttributesClass
{
  type metadata accessor for GalleryCollectionViewLayout.Attributes();

  return swift_getObjCClassFromMetadata();
}

- (_TtC7Journal27GalleryCollectionViewLayout)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_state;
  type metadata accessor for GalleryCollectionViewLayout.SectionProviderState();
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_10020D6C4();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_shouldHideNavigationBarAndPageControlForImageryAsset) = 0;

  type metadata accessor for GalleryCollectionViewLayout();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)prepareLayout
{
  selfCopy = self;
  sub_10020A59C();
}

- (void)invalidateLayoutWithContext:(id)context
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for GalleryCollectionViewLayout();
  contextCopy = context;
  v5 = v8.receiver;
  [(GalleryCollectionViewLayout *)&v8 invalidateLayoutWithContext:contextCopy];
  if ([contextCopy invalidateEverything])
  {

LABEL_4:
    v7 = *&v5[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_state];
    swift_beginAccess();
    *(v7 + 128) = &_swiftEmptyDictionarySingleton;

    return;
  }

  invalidateDataSourceCounts = [contextCopy invalidateDataSourceCounts];

  if (invalidateDataSourceCounts)
  {
    goto LABEL_4;
  }
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_10020AE40(x, y, width, height);

  if (v8)
  {
    sub_1000065A8(0, &qword_100AD8A70);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = type metadata accessor for GalleryCollectionViewLayout();
  v15.receiver = selfCopy;
  v15.super_class = v10;
  v11 = [(GalleryCollectionViewLayout *)&v15 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    type metadata accessor for GalleryCollectionViewLayout.Attributes();
    v12 = swift_dynamicCastClass();
    v13 = v12;
    if (v12)
    {
      sub_10020B00C(v12);
    }

    else
    {

      selfCopy = v11;
    }
  }

  else
  {
    v13 = 0;
  }

  (*(v5 + 8))(v7, v4);

  return v13;
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes
{
  attributesCopy = attributes;
  originalAttributesCopy = originalAttributes;
  selfCopy = self;
  v9 = sub_10020B5D0(attributesCopy, originalAttributesCopy);

  return v9 & 1;
}

- (id)invalidationContextForPreferredLayoutAttributes:(id)attributes withOriginalAttributes:(id)originalAttributes
{
  attributesCopy = attributes;
  originalAttributesCopy = originalAttributes;
  selfCopy = self;
  v9 = sub_10020BA6C(attributesCopy, originalAttributesCopy);

  return v9;
}

- (_TtC7Journal27GalleryCollectionViewLayout)initWithSection:(id)section
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal27GalleryCollectionViewLayout)initWithSection:(id)section configuration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal27GalleryCollectionViewLayout)initWithSectionProvider:(id)provider
{
  _Block_copy(provider);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal27GalleryCollectionViewLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  _Block_copy(provider);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal27GalleryCollectionViewLayout)initWithSection:(id)section sectionProvider:(id)provider configuration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end