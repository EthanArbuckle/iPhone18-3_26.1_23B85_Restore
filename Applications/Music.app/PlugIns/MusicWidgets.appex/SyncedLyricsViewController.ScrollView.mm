@interface SyncedLyricsViewController.ScrollView
- (_TtCC7LyricsX26SyncedLyricsViewControllerP33_02FB2ED49F3FD1C2D63F6922676AEE0410ScrollView)initWithCoder:(id)coder;
- (_TtCC7LyricsX26SyncedLyricsViewControllerP33_02FB2ED49F3FD1C2D63F6922676AEE0410ScrollView)initWithFrame:(CGRect)frame;
@end

@implementation SyncedLyricsViewController.ScrollView

- (_TtCC7LyricsX26SyncedLyricsViewControllerP33_02FB2ED49F3FD1C2D63F6922676AEE0410ScrollView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SyncedLyricsViewController.ScrollView();
  return [(SyncedLyricsViewController.ScrollView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC7LyricsX26SyncedLyricsViewControllerP33_02FB2ED49F3FD1C2D63F6922676AEE0410ScrollView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SyncedLyricsViewController.ScrollView();
  coderCopy = coder;
  v5 = [(SyncedLyricsViewController.ScrollView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end