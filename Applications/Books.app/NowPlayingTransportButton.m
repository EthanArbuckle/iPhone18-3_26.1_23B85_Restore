@interface NowPlayingTransportButton
- (CGSize)intrinsicContentSize;
- (_TtC5Books25NowPlayingTransportButton)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation NowPlayingTransportButton

- (_TtC5Books25NowPlayingTransportButton)initWithCoder:(id)a3
{
  *&self->MPButton_opaque[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorView] = 0;
  *&self->MPButton_opaque[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint] = 0;
  *&self->MPButton_opaque[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidth] = 0x4046000000000000;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for NowPlayingTransportButton();
  v4 = v5.receiver;
  [(NowPlayingTransportButton *)&v5 setHighlighted:v3];
  sub_100601978();
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for NowPlayingTransportButton();
  v4 = v7.receiver;
  [(NowPlayingTransportButton *)&v7 setEnabled:v3];
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
  v7 = *&v2[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidth];

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
  v2 = self;
  sub_100601F44();
}

@end