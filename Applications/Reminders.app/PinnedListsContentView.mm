@interface PinnedListsContentView
- (_TtC9RemindersP33_02588857A361830D4C82E6221760820322PinnedListsContentView)initWithFrame:(CGRect)a3;
@end

@implementation PinnedListsContentView

- (_TtC9RemindersP33_02588857A361830D4C82E6221760820322PinnedListsContentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(TTRIPinnedListsView *)&v8 initWithFrame:x, y, width, height];
}

@end