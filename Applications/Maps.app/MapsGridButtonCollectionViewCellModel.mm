@interface MapsGridButtonCollectionViewCellModel
- (NSString)symbolName;
- (NSString)titleString;
- (_TtC4Maps37MapsGridButtonCollectionViewCellModel)init;
- (_TtC4Maps37MapsGridButtonCollectionViewCellModel)initWithTitleString:(id)string symbolName:(id)name actionStyle:(int64_t)style actionBlock:(id)block;
- (id)actionBlock;
@end

@implementation MapsGridButtonCollectionViewCellModel

- (NSString)titleString
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)symbolName
{
  if (*(self + OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_symbolName + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)actionBlock
{
  if (*(self + OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_actionBlock))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_actionBlock + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_actionBlock);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100039C64;
    v5[3] = &unk_10160BD88;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_TtC4Maps37MapsGridButtonCollectionViewCellModel)initWithTitleString:(id)string symbolName:(id)name actionStyle:(int64_t)style actionBlock:(id)block
{
  v9 = _Block_copy(block);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (name)
  {
    name = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  v16 = (self + OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_titleString);
  *v16 = v10;
  v16[1] = v12;
  v17 = (self + OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_symbolName);
  *v17 = name;
  v17[1] = v14;
  *(self + OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_actionStyle) = style;
  v18 = (self + OBJC_IVAR____TtC4Maps37MapsGridButtonCollectionViewCellModel_actionBlock);
  *v18 = sub_1000FA694;
  v18[1] = v15;
  v20.receiver = self;
  v20.super_class = type metadata accessor for MapsGridButtonCollectionViewCellModel();
  return [(MapsGridButtonCollectionViewCellModel *)&v20 init];
}

- (_TtC4Maps37MapsGridButtonCollectionViewCellModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end