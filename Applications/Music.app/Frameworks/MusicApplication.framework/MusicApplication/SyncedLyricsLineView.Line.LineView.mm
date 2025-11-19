@interface SyncedLyricsLineView.Line.LineView
- (_TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView)initWithCoder:(id)a3;
- (_TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SyncedLyricsLineView.Line.LineView

- (_TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_959AC4();
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_959C70();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_959DA4(a3);
}

- (_TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end