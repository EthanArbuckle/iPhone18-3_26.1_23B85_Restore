@interface SyncedLyricsLineView.SBS_TextContentView.TextView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SyncedLyricsLineView.SBS_TextContentView.TextView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_100456878(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100456A88();
}

- (_TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end