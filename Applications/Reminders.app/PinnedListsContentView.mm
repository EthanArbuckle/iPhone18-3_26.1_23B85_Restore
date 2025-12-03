@interface PinnedListsContentView
- (_TtC9RemindersP33_02588857A361830D4C82E6221760820322PinnedListsContentView)initWithFrame:(CGRect)frame;
@end

@implementation PinnedListsContentView

- (_TtC9RemindersP33_02588857A361830D4C82E6221760820322PinnedListsContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(TTRIPinnedListsView *)&v8 initWithFrame:x, y, width, height];
}

@end