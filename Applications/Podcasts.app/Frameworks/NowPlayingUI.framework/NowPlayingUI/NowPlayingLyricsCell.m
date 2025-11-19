@interface NowPlayingLyricsCell
- (_TtC12NowPlayingUI20NowPlayingLyricsCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation NowPlayingLyricsCell

- (void)layoutSubviews
{
  v2 = self;
  sub_A36B4();
}

- (_TtC12NowPlayingUI20NowPlayingLyricsCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_isBottomHairlineVisible) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_bottomHairlineView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_lyricsView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_tableViewCell) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(NowPlayingLyricsCell *)&v10 initWithFrame:x, y, width, height];
}

@end