@interface BKNowPlayingIndicatorView
- (BOOL)isHidden;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)hidden;
- (void)setInterLevelSpacing:(double)spacing;
- (void)setLevelColor:(id)color;
- (void)setLevelCornerRadius:(double)radius;
- (void)setLevelGuttersColor:(id)color;
- (void)setMaximumLevelHeight:(double)height;
- (void)setMinimumLevelHeight:(double)height;
- (void)setNumberOfLevels:(int64_t)levels;
- (void)setPlaybackState:(int64_t)state;
- (void)tintColorDidChange;
@end

@implementation BKNowPlayingIndicatorView

- (void)setInterLevelSpacing:(double)spacing
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_interLevelSpacing);
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_interLevelSpacing) = spacing;
  if (v3 != spacing)
  {
    [(BKNowPlayingIndicatorView *)self setNeedsLayout];
  }
}

- (void)setLevelCornerRadius:(double)radius
{
  selfCopy = self;
  sub_100393B10(radius);
}

- (void)setMaximumLevelHeight:(double)height
{
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_maximumLevelHeight) = height;
  selfCopy = self;
  sub_100394C64();
}

- (void)setMinimumLevelHeight:(double)height
{
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_minimumLevelHeight) = height;
  selfCopy = self;
  sub_100394C64();
}

- (void)setNumberOfLevels:(int64_t)levels
{
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_numberOfLevels) = levels;
  selfCopy = self;
  sub_1003947FC();
}

- (void)setPlaybackState:(int64_t)state
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_playbackState);
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_playbackState) = state;
  if (v4 != state)
  {
    selfCopy = self;
    sub_100394C64();
  }
}

- (void)setLevelGuttersColor:(id)color
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_levelGuttersColor);
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_levelGuttersColor) = color;
  colorCopy = color;
  selfCopy = self;

  v6 = *(&selfCopy->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate) = 1;
  if ((v6 & 1) == 0)
  {
    [(BKNowPlayingIndicatorView *)selfCopy setNeedsDisplay];
  }
}

- (void)setLevelColor:(id)color
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_levelColor);
  *(&self->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_levelColor) = color;
  colorCopy = color;
  selfCopy = self;

  v6 = *(&selfCopy->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR___BKNowPlayingIndicatorView_needsLevelUpdate) = 1;
  if ((v6 & 1) == 0)
  {
    [(BKNowPlayingIndicatorView *)selfCopy setNeedsDisplay];
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  NowPlayingIndicatorView.layoutSubviews()();
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  NowPlayingIndicatorView.draw(_:)(x, y, width, height);
}

- (CGSize)sizeThatFits:(CGSize)fits
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

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5 = type metadata accessor for NowPlayingIndicatorView();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHidden = [(BKNowPlayingIndicatorView *)&v9 isHidden];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(BKNowPlayingIndicatorView *)&v8 setHidden:hiddenCopy];
  if (![(BKNowPlayingIndicatorView *)selfCopy isHidden]&& isHidden)
  {
    sub_100394C64();
  }
}

@end