@interface StandardSectionHeaderViewListCell
+ (NSString)reuseIdentifier;
- (_TtC4Maps33StandardSectionHeaderViewListCell)initWithFrame:(CGRect)frame;
- (void)setActionHandler:(id)handler;
@end

@implementation StandardSectionHeaderViewListCell

- (void)setActionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_10010E4C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = (self + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler);
  v9 = *(self + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler);
  v10 = *(self + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler + 8);
  *v8 = v7;
  v8[1] = v6;
  selfCopy = self;
  sub_1000CD9D4(v7);
  sub_1000D3B90(v9, v10);
  sub_100505488();

  sub_1000D3B90(v7, v6);
}

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC4Maps33StandardSectionHeaderViewListCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (self + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_title);
  *v9 = 0;
  v9[1] = 0;
  *(self + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_sectionHeaderSize) = 1;
  v10 = (self + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_actionHandler);
  *v10 = 0;
  v10[1] = 0;
  *(self + OBJC_IVAR____TtC4Maps33StandardSectionHeaderViewListCell_sectionHeaderPosition) = 2;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(StandardSectionHeaderViewListCell *)&v12 initWithFrame:x, y, width, height];
}

@end