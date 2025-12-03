@interface SyncedLyricsLineView.Line.LineView
- (_TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView)initWithCoder:(id)coder;
- (_TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SyncedLyricsLineView.Line.LineView

- (_TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView) = 0;
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100496568();
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_100496714();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100496848(change);
}

- (_TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end