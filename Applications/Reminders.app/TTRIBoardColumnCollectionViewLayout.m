@interface TTRIBoardColumnCollectionViewLayout
+ (Class)layoutAttributesClass;
- (CGSize)collectionViewContentSize;
- (_TtC9Reminders35TTRIBoardColumnCollectionViewLayout)initWithCoder:(id)a3;
- (_TtC9Reminders35TTRIBoardColumnCollectionViewLayout)initWithSection:(id)a3;
- (_TtC9Reminders35TTRIBoardColumnCollectionViewLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtC9Reminders35TTRIBoardColumnCollectionViewLayout)initWithSectionProvider:(id)a3;
- (_TtC9Reminders35TTRIBoardColumnCollectionViewLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)prepareLayout;
@end

@implementation TTRIBoardColumnCollectionViewLayout

- (void)prepareLayout
{
  v2 = self;
  sub_1000941CC();
}

+ (Class)layoutAttributesClass
{
  type metadata accessor for TTRBoardColumnItemLayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (CGSize)collectionViewContentSize
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v2 = v9.receiver;
  [(TTRIBoardColumnCollectionViewLayout *)&v9 collectionViewContentSize];
  TTRBoardColumnCollectionViewLayoutHelper.collectionViewContentSize(baseSize:)();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14.receiver = v9;
  v14.super_class = ObjectType;
  v11 = [(TTRIBoardColumnCollectionViewLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = TTRBoardColumnCollectionViewLayoutHelper.layoutAttributesForItem(at:baseAttributes:)();

    (*(v6 + 8))(v8, v5);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    v12 = 0;
  }

  return v12;
}

- (_TtC9Reminders35TTRIBoardColumnCollectionViewLayout)initWithSection:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC9Reminders35TTRIBoardColumnCollectionViewLayout_helper;
  type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper();
  swift_allocObject();
  v7 = a3;
  *(&self->super.super.super.isa + v6) = TTRBoardColumnCollectionViewLayoutHelper.init(topLevelItemSpacing:subtaskSpacing:)();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(TTRIBoardColumnCollectionViewLayout *)&v10 initWithSection:v7];

  return v8;
}

- (_TtC9Reminders35TTRIBoardColumnCollectionViewLayout)initWithSection:(id)a3 configuration:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC9Reminders35TTRIBoardColumnCollectionViewLayout_helper;
  type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper();
  swift_allocObject();
  v9 = a3;
  v10 = a4;
  *(&self->super.super.super.isa + v8) = TTRBoardColumnCollectionViewLayoutHelper.init(topLevelItemSpacing:subtaskSpacing:)();
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(TTRIBoardColumnCollectionViewLayout *)&v13 initWithSection:v9 configuration:v10];

  return v11;
}

- (_TtC9Reminders35TTRIBoardColumnCollectionViewLayout)initWithSectionProvider:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = OBJC_IVAR____TtC9Reminders35TTRIBoardColumnCollectionViewLayout_helper;
  type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper();
  swift_allocObject();
  *(&self->super.super.super.isa + v8) = TTRBoardColumnCollectionViewLayoutHelper.init(topLevelItemSpacing:subtaskSpacing:)();
  aBlock[4] = sub_100094EC4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F170;
  aBlock[3] = &unk_100714650;
  v9 = _Block_copy(aBlock);

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRIBoardColumnCollectionViewLayout *)&v12 initWithSectionProvider:v9];

  _Block_release(v9);
  return v10;
}

- (_TtC9Reminders35TTRIBoardColumnCollectionViewLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = OBJC_IVAR____TtC9Reminders35TTRIBoardColumnCollectionViewLayout_helper;
  type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper();
  swift_allocObject();
  v11 = a4;
  *(&self->super.super.super.isa + v10) = TTRBoardColumnCollectionViewLayoutHelper.init(topLevelItemSpacing:subtaskSpacing:)();
  aBlock[4] = sub_100094E1C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F170;
  aBlock[3] = &unk_100714600;
  v12 = _Block_copy(aBlock);

  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(TTRIBoardColumnCollectionViewLayout *)&v15 initWithSectionProvider:v12 configuration:v11];

  _Block_release(v12);
  return v13;
}

- (_TtC9Reminders35TTRIBoardColumnCollectionViewLayout)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC9Reminders35TTRIBoardColumnCollectionViewLayout_helper;
  type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper();
  swift_allocObject();
  v7 = a3;
  *(&self->super.super.super.isa + v6) = TTRBoardColumnCollectionViewLayoutHelper.init(topLevelItemSpacing:subtaskSpacing:)();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(TTRIBoardColumnCollectionViewLayout *)&v10 initWithCoder:v7];

  if (v8)
  {
  }

  return v8;
}

@end