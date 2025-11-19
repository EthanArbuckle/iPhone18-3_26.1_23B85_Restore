@interface BKScrubberLayerImp
- (BKScrubberLayerImp)initWithLayer:(id)a3 orientation:(int)a4;
- (CALayer)layer;
- (void)displayLayer:(id)a3;
- (void)setOrientation:(int)a3;
@end

@implementation BKScrubberLayerImp

- (BKScrubberLayerImp)initWithLayer:(id)a3 orientation:(int)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = BKScrubberLayerImp;
  v7 = [(BKScrubberLayerImp *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v9 = objc_storeWeak(&v7->_layer, v6);
    [v6 setDelegate:v8];

    v8->_orientation = a4;
  }

  return v8;
}

- (void)setOrientation:(int)a3
{
  self->_orientation = a3;
  WeakRetained = objc_loadWeakRetained(&self->_layer);
  [WeakRetained setNeedsDisplay];
}

- (void)displayLayer:(id)a3
{
  v18 = a3;
  v4 = [(BKScrubberLayerImp *)self orientation];
  v5 = @"Vertical";
  if (!v4)
  {
    v5 = @"Horizontal";
  }

  v6 = v5;
  if (self->_themeInterfaceStyle == 2)
  {
    v7 = @"Dark";
  }

  else
  {
    v7 = @"Light";
  }

  v8 = v7;
  v9 = [(BKScrubberLayerImp *)self traitCollection];
  if (self->_isKnob)
  {
    v10 = [(BKScrubberLayerImp *)self _isExpanded];
    v11 = &stru_2D2930;
    if (v10)
    {
      v11 = @"Expanded";
    }

    v12 = [NSString stringWithFormat:@"ScrollBarOverlay_%@Thumb_Regular_%@_%@", v11, v6, v8];
    v13 = [UIImage _kitImageNamed:v12 withTrait:v9];
    v14 = 0.333333333;
    v15 = 0.0;
    if (v4)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 0.333333333;
    }

    if (v4)
    {
      v15 = 0.333333333;
      v17 = 1.0;
    }

    else
    {
      v17 = 0.333333333;
    }

    if (!v4)
    {
      v14 = 1.0;
    }

    [v18 setContentsCenter:{v16, v15, v17, v14}];
  }

  else
  {
    v12 = [NSString stringWithFormat:@"ScrollBarOverlay_Track_Regular_%@_%@", v6, v8];
    v13 = [UIImage _kitImageNamed:v12 withTrait:v9];
  }

  if (v13)
  {
    [v18 setContents:{objc_msgSend(v13, "CGImage")}];
    [v13 scale];
    [v18 setContentsScale:?];
  }
}

- (CALayer)layer
{
  WeakRetained = objc_loadWeakRetained(&self->_layer);

  return WeakRetained;
}

@end