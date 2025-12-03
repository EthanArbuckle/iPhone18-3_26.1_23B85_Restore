@interface SyncedLyricsLineView.TextContainer.TextContainerView
- (_TtCCC7LyricsX20SyncedLyricsLineView13TextContainer17TextContainerView)initWithCoder:(id)coder;
- (_TtCCC7LyricsX20SyncedLyricsLineView13TextContainer17TextContainerView)initWithFrame:(CGRect)frame;
@end

@implementation SyncedLyricsLineView.TextContainer.TextContainerView

- (_TtCCC7LyricsX20SyncedLyricsLineView13TextContainer17TextContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(SyncedLyricsLineView.TextContainer.TextContainerView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCCC7LyricsX20SyncedLyricsLineView13TextContainer17TextContainerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(SyncedLyricsLineView.TextContainer.TextContainerView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end