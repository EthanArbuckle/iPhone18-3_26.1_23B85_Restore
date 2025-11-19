@interface SidebarEditingCollectionViewCell
- (_TtC7Journal32SidebarEditingCollectionViewCell)initWithCoder:(id)a3;
- (_TtC7Journal32SidebarEditingCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)prepareForReuse;
@end

@implementation SidebarEditingCollectionViewCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1003C5250();

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1003C5434();
}

- (_TtC7Journal32SidebarEditingCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SidebarEditingCollectionViewCell();
  return [(SidebarEditingCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal32SidebarEditingCollectionViewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SidebarEditingCollectionViewCell();
  v4 = a3;
  v5 = [(SidebarEditingCollectionViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end