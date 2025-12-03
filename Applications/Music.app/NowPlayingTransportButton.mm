@interface NowPlayingTransportButton
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)tintColorDidChange;
@end

@implementation NowPlayingTransportButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100050DA0();
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NowPlayingTransportButton();
  v2 = v6.receiver;
  [(NowPlayingTransportButton *)&v6 tintColorDidChange];
  v3 = *&v2[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
  if (v3)
  {
    v4 = v3;
    tintColor = [v2 tintColor];
    (*((swift_isaMask & *v4) + 0xD8))(tintColor);
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = type metadata accessor for NowPlayingTransportButton();
  v11.receiver = self;
  v11.super_class = v5;
  selfCopy = self;
  isEnabled = [(NowPlayingTransportButton *)&v11 isEnabled];
  v10.receiver = selfCopy;
  v10.super_class = v5;
  [(NowPlayingTransportButton *)&v10 setEnabled:enabledCopy];
  if (isEnabled != [(NowPlayingTransportButton *)selfCopy isEnabled])
  {
    isEnabled2 = [(NowPlayingTransportButton *)selfCopy isEnabled];
    v9 = 0.5;
    if (isEnabled2)
    {
      v9 = 1.0;
    }

    [(NowPlayingTransportButton *)selfCopy setAlpha:v9];
  }
}

- (CGSize)intrinsicContentSize
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for NowPlayingTransportButton();
  v2 = v10.receiver;
  [(NowPlayingTransportButton *)&v10 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = *&v2[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_highlightIndicatorWidth];

  if (v4 > v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (v6 > v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NowPlayingTransportButton();
  v4 = v5.receiver;
  [(NowPlayingTransportButton *)&v5 setHighlighted:highlightedCopy];
  sub_10040F18C();
}

@end