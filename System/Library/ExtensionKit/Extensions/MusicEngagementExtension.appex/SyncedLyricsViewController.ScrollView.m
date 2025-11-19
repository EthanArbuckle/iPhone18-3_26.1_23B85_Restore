@interface SyncedLyricsViewController.ScrollView
- (_TtCC7LyricsX26SyncedLyricsViewControllerP33_02FB2ED49F3FD1C2D63F6922676AEE0410ScrollView)initWithCoder:(id)a3;
- (_TtCC7LyricsX26SyncedLyricsViewControllerP33_02FB2ED49F3FD1C2D63F6922676AEE0410ScrollView)initWithFrame:(CGRect)a3;
@end

@implementation SyncedLyricsViewController.ScrollView

- (_TtCC7LyricsX26SyncedLyricsViewControllerP33_02FB2ED49F3FD1C2D63F6922676AEE0410ScrollView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SyncedLyricsViewController.ScrollView();
  return [(SyncedLyricsViewController.ScrollView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC7LyricsX26SyncedLyricsViewControllerP33_02FB2ED49F3FD1C2D63F6922676AEE0410ScrollView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SyncedLyricsViewController.ScrollView();
  v4 = a3;
  v5 = [(SyncedLyricsViewController.ScrollView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end