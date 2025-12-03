@interface SidebarEditingCollectionViewCell
- (_TtC7Journal32SidebarEditingCollectionViewCell)initWithCoder:(id)coder;
- (_TtC7Journal32SidebarEditingCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)prepareForReuse;
@end

@implementation SidebarEditingCollectionViewCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003C5250();

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1003C5434();
}

- (_TtC7Journal32SidebarEditingCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SidebarEditingCollectionViewCell();
  return [(SidebarEditingCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Journal32SidebarEditingCollectionViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SidebarEditingCollectionViewCell();
  coderCopy = coder;
  v5 = [(SidebarEditingCollectionViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end