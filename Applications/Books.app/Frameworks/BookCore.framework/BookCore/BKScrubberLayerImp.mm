@interface BKScrubberLayerImp
- (BKScrubberLayerImp)initWithLayer:(id)layer orientation:(int)orientation;
- (CALayer)layer;
- (void)displayLayer:(id)layer;
- (void)setOrientation:(int)orientation;
@end

@implementation BKScrubberLayerImp

- (BKScrubberLayerImp)initWithLayer:(id)layer orientation:(int)orientation
{
  layerCopy = layer;
  v11.receiver = self;
  v11.super_class = BKScrubberLayerImp;
  v7 = [(BKScrubberLayerImp *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v9 = objc_storeWeak(&v7->_layer, layerCopy);
    [layerCopy setDelegate:v8];

    v8->_orientation = orientation;
  }

  return v8;
}

- (void)setOrientation:(int)orientation
{
  self->_orientation = orientation;
  WeakRetained = objc_loadWeakRetained(&self->_layer);
  [WeakRetained setNeedsDisplay];
}

- (void)displayLayer:(id)layer
{
  layerCopy = layer;
  orientation = [(BKScrubberLayerImp *)self orientation];
  v5 = @"Vertical";
  if (!orientation)
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
  traitCollection = [(BKScrubberLayerImp *)self traitCollection];
  if (self->_isKnob)
  {
    _isExpanded = [(BKScrubberLayerImp *)self _isExpanded];
    v11 = &stru_2D2930;
    if (_isExpanded)
    {
      v11 = @"Expanded";
    }

    v12 = [NSString stringWithFormat:@"ScrollBarOverlay_%@Thumb_Regular_%@_%@", v11, v6, v8];
    v13 = [UIImage _kitImageNamed:v12 withTrait:traitCollection];
    v14 = 0.333333333;
    v15 = 0.0;
    if (orientation)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 0.333333333;
    }

    if (orientation)
    {
      v15 = 0.333333333;
      v17 = 1.0;
    }

    else
    {
      v17 = 0.333333333;
    }

    if (!orientation)
    {
      v14 = 1.0;
    }

    [layerCopy setContentsCenter:{v16, v15, v17, v14}];
  }

  else
  {
    v12 = [NSString stringWithFormat:@"ScrollBarOverlay_Track_Regular_%@_%@", v6, v8];
    v13 = [UIImage _kitImageNamed:v12 withTrait:traitCollection];
  }

  if (v13)
  {
    [layerCopy setContents:{objc_msgSend(v13, "CGImage")}];
    [v13 scale];
    [layerCopy setContentsScale:?];
  }
}

- (CALayer)layer
{
  WeakRetained = objc_loadWeakRetained(&self->_layer);

  return WeakRetained;
}

@end