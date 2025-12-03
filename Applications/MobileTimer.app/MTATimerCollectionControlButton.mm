@interface MTATimerCollectionControlButton
- (MTATimerCollectionControlButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation MTATimerCollectionControlButton

- (MTATimerCollectionControlButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MTATimerCollectionControlButton;
  v3 = [(MTATimerCollectionControlButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTATimerCollectionControlButton *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MTATimerCollectionControlButton *)v4 setAdjustsImageWhenHighlighted:0];
  }

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v11.receiver = self;
  v11.super_class = MTATimerCollectionControlButton;
  [(MTATimerCollectionControlButton *)&v11 setHighlighted:?];
  if (!highlightedCopy)
  {
    normalBackgroundColor = [(MTATimerCollectionControlButton *)self normalBackgroundColor];

    if (normalBackgroundColor)
    {
      normalBackgroundColor2 = [(MTATimerCollectionControlButton *)self normalBackgroundColor];
      goto LABEL_6;
    }

    tintColor = [(MTATimerCollectionControlButton *)self tintColor];
    normalShade = [tintColor normalShade];
LABEL_9:
    v10 = normalShade;
    [(MTATimerCollectionControlButton *)self setBackgroundColor:normalShade];

    goto LABEL_10;
  }

  highlightedBackgroundColor = [(MTATimerCollectionControlButton *)self highlightedBackgroundColor];

  if (!highlightedBackgroundColor)
  {
    tintColor = [(MTATimerCollectionControlButton *)self tintColor];
    normalShade = [tintColor highlightedShade];
    goto LABEL_9;
  }

  normalBackgroundColor2 = [(MTATimerCollectionControlButton *)self highlightedBackgroundColor];
LABEL_6:
  tintColor = normalBackgroundColor2;
  [(MTATimerCollectionControlButton *)self setBackgroundColor:normalBackgroundColor2];
LABEL_10:
}

@end