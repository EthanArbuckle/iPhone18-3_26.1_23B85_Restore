@interface SidebarBrickCollectionViewListCell
- (_TtC7Journal34SidebarBrickCollectionViewListCell)initWithCoder:(id)coder;
- (_TtC7Journal34SidebarBrickCollectionViewListCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation SidebarBrickCollectionViewListCell

- (_TtC7Journal34SidebarBrickCollectionViewListCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SidebarBrickCollectionViewListCell();
  height = [(SidebarBrickCollectionViewListCell *)&v9 initWithFrame:x, y, width, height];
  [(SidebarBrickCollectionViewListCell *)height setFocusEffect:0];
  return height;
}

- (_TtC7Journal34SidebarBrickCollectionViewListCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_1000F24EC(&qword_100AF16C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v13 = type metadata accessor for SidebarBrickCollectionViewListCell();
  v15.receiver = selfCopy;
  v15.super_class = v13;
  [(SidebarBrickCollectionViewListCell *)&v15 _bridgedUpdateConfigurationUsingState:isa];

  sub_1001F0244();
  v14 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  UICollectionViewCell.backgroundConfiguration.setter();

  (*(v8 + 8))(v10, v7);
}

@end