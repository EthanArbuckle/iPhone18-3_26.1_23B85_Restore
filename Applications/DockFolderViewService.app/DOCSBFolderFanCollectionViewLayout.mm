@interface DOCSBFolderFanCollectionViewLayout
+ (Class)layoutAttributesClass;
- (NSSet)indexPathsOfItemsPinnedToBottom;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)prepareLayout;
- (void)setIndexPathsOfItemsPinnedToBottom:(id)bottom;
@end

@implementation DOCSBFolderFanCollectionViewLayout

- (void)prepareLayout
{
  selfCopy = self;
  sub_100080360();
}

+ (Class)layoutAttributesClass
{
  type metadata accessor for DOCSBFolderFanCollectionViewLayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (NSSet)indexPathsOfItemsPinnedToBottom
{
  v2 = *(self + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_indexPathsOfItemsPinnedToBottom);
  type metadata accessor for IndexPath();
  sub_100085DA8(&qword_1000BC4F8);

  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)setIndexPathsOfItemsPinnedToBottom:(id)bottom
{
  type metadata accessor for IndexPath();
  sub_100085DA8(&qword_1000BC4F8);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_indexPathsOfItemsPinnedToBottom);
  *(self + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_indexPathsOfItemsPinnedToBottom) = v4;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v14 = sub_100080E8C(v10, v12);

  (*(v6 + 8))(v9, v5);

  return v14;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17.receiver = selfCopy;
  v17.super_class = ObjectType;
  v12 = [(DOCSBFolderFanCollectionViewLayout *)&v17 layoutAttributesForItemAtIndexPath:isa];

  if (v12)
  {
    type metadata accessor for DOCSBFolderFanCollectionViewLayoutAttributes();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      sub_100080FD8(v14);

      selfCopy = v15;
    }
  }

  (*(v6 + 8))(v9, v5);

  return v12;
}

@end