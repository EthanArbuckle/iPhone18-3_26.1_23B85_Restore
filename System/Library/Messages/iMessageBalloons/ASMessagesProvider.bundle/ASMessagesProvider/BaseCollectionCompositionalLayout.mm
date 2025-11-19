@interface BaseCollectionCompositionalLayout
+ (Class)layoutAttributesClass;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (_TtC18ASMessagesProvider33BaseCollectionCompositionalLayout)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider33BaseCollectionCompositionalLayout)initWithSection:(id)a3;
- (_TtC18ASMessagesProvider33BaseCollectionCompositionalLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtC18ASMessagesProvider33BaseCollectionCompositionalLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5;
- (_TtC18ASMessagesProvider33BaseCollectionCompositionalLayout)initWithSectionProvider:(id)a3;
- (_TtC18ASMessagesProvider33BaseCollectionCompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)prepareLayout;
@end

@implementation BaseCollectionCompositionalLayout

+ (Class)layoutAttributesClass
{
  type metadata accessor for BaseCollectionViewLayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (_TtC18ASMessagesProvider33BaseCollectionCompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_3AE8C0(sub_3B08A8, v6, a4);
}

- (_TtC18ASMessagesProvider33BaseCollectionCompositionalLayout)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding) = &_swiftEmptySetSingleton;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver);
  *v3 = 0;
  v3[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_3AEE98(x, y, width, height);

  if (v8)
  {
    sub_E59C4();
    v9.super.isa = sub_769450().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v8 = self;
  isa = sub_757550().super.isa;
  v10 = type metadata accessor for BaseCollectionCompositionalLayout();
  v14.receiver = v8;
  v14.super_class = v10;
  v11 = [(BaseCollectionCompositionalLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = sub_3AE18C(v11);

    v8 = v11;
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
  v3 = &v2[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
  if (v4)
  {

    v4(v2);
    sub_F704(v4);
    v5 = *v3;
  }

  else
  {
    v5 = 0;
  }

  *v3 = 0;
  v3[1] = 0;
  sub_F704(v5);
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_3AF488(x, y, width, height);

  return v8 & 1;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_3AF720(x, y, width, height);

  return v8;
}

- (_TtC18ASMessagesProvider33BaseCollectionCompositionalLayout)initWithSection:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider33BaseCollectionCompositionalLayout)initWithSection:(id)a3 configuration:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider33BaseCollectionCompositionalLayout)initWithSectionProvider:(id)a3
{
  _Block_copy(a3);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider33BaseCollectionCompositionalLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end