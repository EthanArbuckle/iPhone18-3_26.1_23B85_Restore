@interface BKNowPlayingIndicatorView
- (BOOL)isHidden;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)a3;
- (void)setInterLevelSpacing:(double)a3;
- (void)setLevelColor:(id)a3;
- (void)setLevelCornerRadius:(double)a3;
- (void)setLevelGuttersColor:(id)a3;
- (void)setMaximumLevelHeight:(double)a3;
- (void)setMinimumLevelHeight:(double)a3;
- (void)setNumberOfLevels:(int64_t)a3;
- (void)setPlaybackState:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation BKNowPlayingIndicatorView

- (void)setInterLevelSpacing:(double)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_interLevelSpacing);
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_interLevelSpacing) = a3;
  if (v3 != a3)
  {
    [(BKNowPlayingIndicatorView *)self setNeedsLayout];
  }
}

- (void)setLevelCornerRadius:(double)a3
{
  v4 = self;
  sub_100393B10(a3);
}

- (void)setMaximumLevelHeight:(double)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_maximumLevelHeight) = a3;
  v3 = self;
  sub_100394C64();
}

- (void)setMinimumLevelHeight:(double)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_minimumLevelHeight) = a3;
  v3 = self;
  sub_100394C64();
}

- (void)setNumberOfLevels:(int64_t)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels) = a3;
  v3 = self;
  sub_1003947FC();
}

- (void)setPlaybackState:(int64_t)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_playbackState);
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_playbackState) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_100394C64();
  }
}

- (void)setLevelGuttersColor:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_levelGuttersColor);
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_levelGuttersColor) = a3;
  v7 = a3;
  v5 = self;

  v6 = *(&v5->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate);
  *(&v5->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate) = 1;
  if ((v6 & 1) == 0)
  {
    [(BKNowPlayingIndicatorView *)v5 setNeedsDisplay];
  }
}

- (void)setLevelColor:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_levelColor);
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_levelColor) = a3;
  v7 = a3;
  v5 = self;

  v6 = *(&v5->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate);
  *(&v5->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate) = 1;
  if ((v6 & 1) == 0)
  {
    [(BKNowPlayingIndicatorView *)v5 setNeedsDisplay];
  }
}

- (void)layoutSubviews
{
  v2 = self;
  NowPlayingIndicatorView.layoutSubviews()();
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  NowPlayingIndicatorView.draw(_:)(x, y, width, height);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  _s5Books23NowPlayingIndicatorViewC12sizeThatFitsySo6CGSizeVAFF_0();
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NowPlayingIndicatorView();
  v2 = v3.receiver;
  [(BKNowPlayingIndicatorView *)&v3 tintColorDidChange];
  if (*(v2 + OBJC_IVAR___BKNowPlayingIndicatorView_showsLevelGutters) == 1)
  {
    [v2 setNeedsDisplay];
  }

  sub_1003947FC();
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NowPlayingIndicatorView();
  return [(BKNowPlayingIndicatorView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for NowPlayingIndicatorView();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(BKNowPlayingIndicatorView *)&v9 isHidden];
  v8.receiver = v6;
  v8.super_class = v5;
  [(BKNowPlayingIndicatorView *)&v8 setHidden:v3];
  if (![(BKNowPlayingIndicatorView *)v6 isHidden]&& v7)
  {
    sub_100394C64();
  }
}

@end