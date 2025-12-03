@interface UnsupportedEntryView
- (_TtC7Journal20UnsupportedEntryView)initWithCoder:(id)coder;
- (_TtC7Journal20UnsupportedEntryView)initWithFrame:(CGRect)frame;
@end

@implementation UnsupportedEntryView

- (_TtC7Journal20UnsupportedEntryView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for UnsupportedEntryView();
  height = [(UnsupportedEntryView *)&v9 initWithFrame:x, y, width, height];
  sub_1004B8634();

  return height;
}

- (_TtC7Journal20UnsupportedEntryView)initWithCoder:(id)coder
{
  type metadata accessor for UnsupportedEntryView();
  swift_deallocPartialClassInstance();
  return 0;
}

@end