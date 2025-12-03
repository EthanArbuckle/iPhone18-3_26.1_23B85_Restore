@interface NowPlayingTransportButton
- (CGSize)intrinsicContentSize;
- (_TtC12NowPlayingUI25NowPlayingTransportButton)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation NowPlayingTransportButton

- (_TtC12NowPlayingUI25NowPlayingTransportButton)initWithCoder:(id)coder
{
  *&self->MTMPButton_opaque[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorView] = 0;
  *&self->MTMPButton_opaque[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidthConstraint] = 0;
  *&self->MTMPButton_opaque[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidth] = 0x4046000000000000;
  *&self->MTMPButton_opaque[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightColor] = 0;
  *&self->MTMPButton_opaque[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_glyphColor] = 0;
  result = sub_1452FC();
  __break(1u);
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NowPlayingTransportButton();
  v4 = v5.receiver;
  [(NowPlayingTransportButton *)&v5 setHighlighted:highlightedCopy];
  sub_F9C80();
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = type metadata accessor for NowPlayingTransportButton();
  v4 = v7.receiver;
  [(NowPlayingTransportButton *)&v7 setEnabled:enabledCopy];
  if ([v4 isEnabled])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.5;
  }

  v6 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:v5];
  [v4 setTintColor:v6];
}

- (CGSize)intrinsicContentSize
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for NowPlayingTransportButton();
  v2 = v10.receiver;
  [(NowPlayingTransportButton *)&v10 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = *&v2[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidth];

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

- (void)layoutSubviews
{
  selfCopy = self;
  sub_FA268();
}

@end