@interface UnsupportedEntryView
- (_TtC7Journal20UnsupportedEntryView)initWithCoder:(id)a3;
- (_TtC7Journal20UnsupportedEntryView)initWithFrame:(CGRect)a3;
@end

@implementation UnsupportedEntryView

- (_TtC7Journal20UnsupportedEntryView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for UnsupportedEntryView();
  v7 = [(UnsupportedEntryView *)&v9 initWithFrame:x, y, width, height];
  sub_1004B8634();

  return v7;
}

- (_TtC7Journal20UnsupportedEntryView)initWithCoder:(id)a3
{
  type metadata accessor for UnsupportedEntryView();
  swift_deallocPartialClassInstance();
  return 0;
}

@end