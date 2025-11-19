@interface SyncedLyricsLineView.SBS_TextContentView.TextView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SyncedLyricsLineView.SBS_TextContentView.TextView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = SyncedLyricsLineView.SBS_TextContentView.TextView.sizeThatFits(_:)(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  SyncedLyricsLineView.SBS_TextContentView.TextView.layoutSubviews()();
}

- (_TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end