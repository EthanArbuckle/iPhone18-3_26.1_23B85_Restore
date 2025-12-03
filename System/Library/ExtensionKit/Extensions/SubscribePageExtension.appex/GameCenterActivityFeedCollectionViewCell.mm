@interface GameCenterActivityFeedCollectionViewCell
- (_TtC22SubscribePageExtension40GameCenterActivityFeedCollectionViewCell)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension40GameCenterActivityFeedCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
@end

@implementation GameCenterActivityFeedCollectionViewCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(GameCenterActivityFeedCollectionViewCell *)&v3 prepareForReuse];
  sub_1007538E4();
}

- (_TtC22SubscribePageExtension40GameCenterActivityFeedCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(SwiftUIViewHostingCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22SubscribePageExtension40GameCenterActivityFeedCollectionViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(SwiftUIViewHostingCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end