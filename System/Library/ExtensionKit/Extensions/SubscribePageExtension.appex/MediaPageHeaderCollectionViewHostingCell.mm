@interface MediaPageHeaderCollectionViewHostingCell
- (_TtC22SubscribePageExtension40MediaPageHeaderCollectionViewHostingCell)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension40MediaPageHeaderCollectionViewHostingCell)initWithFrame:(CGRect)frame;
@end

@implementation MediaPageHeaderCollectionViewHostingCell

- (_TtC22SubscribePageExtension40MediaPageHeaderCollectionViewHostingCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(SwiftUIViewHostingCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22SubscribePageExtension40MediaPageHeaderCollectionViewHostingCell)initWithCoder:(id)coder
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