@interface BaseCollectionCompositionalLayout
+ (Class)layoutAttributesClass;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (_TtC22SubscribePageExtension33BaseCollectionCompositionalLayout)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension33BaseCollectionCompositionalLayout)initWithSection:(id)section;
- (_TtC22SubscribePageExtension33BaseCollectionCompositionalLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC22SubscribePageExtension33BaseCollectionCompositionalLayout)initWithSection:(id)section sectionProvider:(id)provider configuration:(id)configuration;
- (_TtC22SubscribePageExtension33BaseCollectionCompositionalLayout)initWithSectionProvider:(id)provider;
- (_TtC22SubscribePageExtension33BaseCollectionCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation BaseCollectionCompositionalLayout

+ (Class)layoutAttributesClass
{
  type metadata accessor for BaseCollectionViewLayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (_TtC22SubscribePageExtension33BaseCollectionCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v5 = _Block_copy(provider);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_100725BA4(sub_100727C88, v6, configuration);
}

- (_TtC22SubscribePageExtension33BaseCollectionCompositionalLayout)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding) = _swiftEmptySetSingleton;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver);
  *v3 = 0;
  v3[1] = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_10072617C(x, y, width, height);

  if (v8)
  {
    sub_1000E5AA4();
    v9.super.isa = sub_100753294().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = sub_1007417F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  selfCopy = self;
  isa = sub_100741704().super.isa;
  v10 = type metadata accessor for BaseCollectionCompositionalLayout();
  v14.receiver = selfCopy;
  v14.super_class = v10;
  v11 = [(BaseCollectionCompositionalLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = sub_100725470(v11);

    selfCopy = v11;
  }

  else
  {
    v12 = 0;
  }

  (*(v5 + 8))(v7, v4);

  return v12;
}

- (void)prepareLayout
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  v2 = v6.receiver;
  [(BaseCollectionCompositionalLayout *)&v6 prepareLayout];
  v3 = &v2[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
  if (v4)
  {

    v4(v2);
    sub_1000164A8(v4);
    v5 = *v3;
  }

  else
  {
    v5 = 0;
  }

  *v3 = 0;
  v3[1] = 0;
  sub_1000164A8(v5);
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = sub_10072676C(x, y, width, height);

  return v8 & 1;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = sub_100726A04(x, y, width, height);

  return v8;
}

- (_TtC22SubscribePageExtension33BaseCollectionCompositionalLayout)initWithSection:(id)section
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension33BaseCollectionCompositionalLayout)initWithSection:(id)section configuration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension33BaseCollectionCompositionalLayout)initWithSectionProvider:(id)provider
{
  _Block_copy(provider);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension33BaseCollectionCompositionalLayout)initWithSection:(id)section sectionProvider:(id)provider configuration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end