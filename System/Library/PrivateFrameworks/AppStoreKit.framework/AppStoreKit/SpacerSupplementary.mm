@interface SpacerSupplementary
- (_TtC11AppStoreKit19SpacerSupplementary)initWithCoder:(id)coder;
- (_TtC11AppStoreKit19SpacerSupplementary)initWithFrame:(CGRect)frame;
@end

@implementation SpacerSupplementary

- (_TtC11AppStoreKit19SpacerSupplementary)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SpacerSupplementary();
  return [(SpacerSupplementary *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11AppStoreKit19SpacerSupplementary)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SpacerSupplementary();
  coderCopy = coder;
  v5 = [(SpacerSupplementary *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end