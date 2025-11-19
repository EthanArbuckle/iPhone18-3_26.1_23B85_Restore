@interface GalleryCollectionViewLayout
+ (Class)layoutAttributesClass;
- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4;
- (_TtC7Journal27GalleryCollectionViewLayout)initWithCoder:(id)a3;
- (_TtC7Journal27GalleryCollectionViewLayout)initWithSection:(id)a3;
- (_TtC7Journal27GalleryCollectionViewLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtC7Journal27GalleryCollectionViewLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5;
- (_TtC7Journal27GalleryCollectionViewLayout)initWithSectionProvider:(id)a3;
- (_TtC7Journal27GalleryCollectionViewLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)invalidationContextForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
@end

@implementation GalleryCollectionViewLayout

+ (Class)layoutAttributesClass
{
  type metadata accessor for GalleryCollectionViewLayout.Attributes();

  return swift_getObjCClassFromMetadata();
}

- (_TtC7Journal27GalleryCollectionViewLayout)initWithCoder:(id)a3
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
  v2 = self;
  sub_10020A59C();
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for GalleryCollectionViewLayout();
  v4 = a3;
  v5 = v8.receiver;
  [(GalleryCollectionViewLayout *)&v8 invalidateLayoutWithContext:v4];
  if ([v4 invalidateEverything])
  {

LABEL_4:
    v7 = *&v5[OBJC_IVAR____TtC7Journal27GalleryCollectionViewLayout_state];
    swift_beginAccess();
    *(v7 + 128) = &_swiftEmptyDictionarySingleton;

    return;
  }

  v6 = [v4 invalidateDataSourceCounts];

  if (v6)
  {
    goto LABEL_4;
  }
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
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

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = type metadata accessor for GalleryCollectionViewLayout();
  v15.receiver = v8;
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

      v8 = v11;
    }
  }

  else
  {
    v13 = 0;
  }

  (*(v5 + 8))(v7, v4);

  return v13;
}

- (BOOL)shouldInvalidateLayoutForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10020B5D0(v6, v7);

  return v9 & 1;
}

- (id)invalidationContextForPreferredLayoutAttributes:(id)a3 withOriginalAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10020BA6C(v6, v7);

  return v9;
}

- (_TtC7Journal27GalleryCollectionViewLayout)initWithSection:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal27GalleryCollectionViewLayout)initWithSection:(id)a3 configuration:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal27GalleryCollectionViewLayout)initWithSectionProvider:(id)a3
{
  _Block_copy(a3);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal27GalleryCollectionViewLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  _Block_copy(a3);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal27GalleryCollectionViewLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end