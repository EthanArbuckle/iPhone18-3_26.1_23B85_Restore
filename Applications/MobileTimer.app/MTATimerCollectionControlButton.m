@interface MTATimerCollectionControlButton
- (MTATimerCollectionControlButton)initWithFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation MTATimerCollectionControlButton

- (MTATimerCollectionControlButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MTATimerCollectionControlButton;
  v3 = [(MTATimerCollectionControlButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTATimerCollectionControlButton *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MTATimerCollectionControlButton *)v4 setAdjustsImageWhenHighlighted:0];
  }

  return v4;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = MTATimerCollectionControlButton;
  [(MTATimerCollectionControlButton *)&v11 setHighlighted:?];
  if (!v3)
  {
    v7 = [(MTATimerCollectionControlButton *)self normalBackgroundColor];

    if (v7)
    {
      v6 = [(MTATimerCollectionControlButton *)self normalBackgroundColor];
      goto LABEL_6;
    }

    v8 = [(MTATimerCollectionControlButton *)self tintColor];
    v9 = [v8 normalShade];
LABEL_9:
    v10 = v9;
    [(MTATimerCollectionControlButton *)self setBackgroundColor:v9];

    goto LABEL_10;
  }

  v5 = [(MTATimerCollectionControlButton *)self highlightedBackgroundColor];

  if (!v5)
  {
    v8 = [(MTATimerCollectionControlButton *)self tintColor];
    v9 = [v8 highlightedShade];
    goto LABEL_9;
  }

  v6 = [(MTATimerCollectionControlButton *)self highlightedBackgroundColor];
LABEL_6:
  v8 = v6;
  [(MTATimerCollectionControlButton *)self setBackgroundColor:v6];
LABEL_10:
}

@end