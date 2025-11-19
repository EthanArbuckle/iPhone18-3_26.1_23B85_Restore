@interface SyncedLyricsLineView.Word.WordView
- (_TtCCC7LyricsX20SyncedLyricsLineView4Word8WordView)initWithCoder:(id)a3;
- (_TtCCC7LyricsX20SyncedLyricsLineView4Word8WordView)initWithFrame:(CGRect)a3;
@end

@implementation SyncedLyricsLineView.Word.WordView

- (_TtCCC7LyricsX20SyncedLyricsLineView4Word8WordView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(SyncedLyricsLineView.Word.WordView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCCC7LyricsX20SyncedLyricsLineView4Word8WordView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(SyncedLyricsLineView.Word.WordView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end