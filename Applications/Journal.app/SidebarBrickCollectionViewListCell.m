@interface SidebarBrickCollectionViewListCell
- (_TtC7Journal34SidebarBrickCollectionViewListCell)initWithCoder:(id)a3;
- (_TtC7Journal34SidebarBrickCollectionViewListCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation SidebarBrickCollectionViewListCell

- (_TtC7Journal34SidebarBrickCollectionViewListCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SidebarBrickCollectionViewListCell();
  v7 = [(SidebarBrickCollectionViewListCell *)&v9 initWithFrame:x, y, width, height];
  [(SidebarBrickCollectionViewListCell *)v7 setFocusEffect:0];
  return v7;
}

- (_TtC7Journal34SidebarBrickCollectionViewListCell)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v13 = type metadata accessor for SidebarBrickCollectionViewListCell();
  v15.receiver = v11;
  v15.super_class = v13;
  [(SidebarBrickCollectionViewListCell *)&v15 _bridgedUpdateConfigurationUsingState:isa];

  sub_1001F0244();
  v14 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  UICollectionViewCell.backgroundConfiguration.setter();

  (*(v8 + 8))(v10, v7);
}

@end