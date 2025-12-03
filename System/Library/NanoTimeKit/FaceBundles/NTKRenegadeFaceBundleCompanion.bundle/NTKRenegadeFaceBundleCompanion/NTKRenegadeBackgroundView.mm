@interface NTKRenegadeBackgroundView
- (BOOL)topQuiltPieceOverlapsBottom;
- (CGPath)bottomQuiltPathRef;
- (CGPath)topQuiltPathRef;
- (NTKRenegadeBackgroundView)initWithDevice:(id)device;
- (void)setBottomQuiltColor:(id)color;
- (void)setConfiguration:(id)configuration;
- (void)setTopQuiltColor:(id)color;
- (void)setTopQuiltPieceOverlapsBottom:(BOOL)bottom;
@end

@implementation NTKRenegadeBackgroundView

- (NTKRenegadeBackgroundView)initWithDevice:(id)device
{
  deviceCopy = device;
  [deviceCopy screenBounds];
  v15.receiver = self;
  v15.super_class = NTKRenegadeBackgroundView;
  v6 = [(NTKRenegadeBackgroundView *)&v15 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = +[CAShapeLayer layer];
    topQuiltPieceLayer = v7->_topQuiltPieceLayer;
    v7->_topQuiltPieceLayer = v8;

    layer = [(NTKRenegadeBackgroundView *)v7 layer];
    [layer addSublayer:v7->_topQuiltPieceLayer];

    v11 = +[CAShapeLayer layer];
    bottomQuiltPieceLayer = v7->_bottomQuiltPieceLayer;
    v7->_bottomQuiltPieceLayer = v11;

    layer2 = [(NTKRenegadeBackgroundView *)v7 layer];
    [layer2 addSublayer:v7->_bottomQuiltPieceLayer];
  }

  return v7;
}

- (void)setTopQuiltColor:(id)color
{
  colorCopy = color;
  if (self->_topQuiltColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_topQuiltColor, color);
    v6 = v7;
    [(CAShapeLayer *)self->_topQuiltPieceLayer setFillColor:[(UIColor *)v7 CGColor]];
    colorCopy = v7;
  }
}

- (void)setBottomQuiltColor:(id)color
{
  colorCopy = color;
  if (self->_bottomQuiltColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_bottomQuiltColor, color);
    v6 = v7;
    [(CAShapeLayer *)self->_bottomQuiltPieceLayer setFillColor:[(UIColor *)v7 CGColor]];
    colorCopy = v7;
  }
}

- (CGPath)topQuiltPathRef
{
  presentationLayer = [(CAShapeLayer *)self->_topQuiltPieceLayer presentationLayer];
  path = [presentationLayer path];

  return path;
}

- (CGPath)bottomQuiltPathRef
{
  presentationLayer = [(CAShapeLayer *)self->_bottomQuiltPieceLayer presentationLayer];
  path = [presentationLayer path];

  return path;
}

- (BOOL)topQuiltPieceOverlapsBottom
{
  layer = [(NTKRenegadeBackgroundView *)self layer];
  sublayers = [layer sublayers];

  if ([sublayers containsObject:self->_topQuiltPieceLayer])
  {
    v5 = [sublayers indexOfObject:self->_topQuiltPieceLayer];
  }

  else
  {
    v5 = -1;
  }

  if ([sublayers containsObject:self->_bottomQuiltPieceLayer])
  {
    v6 = [sublayers indexOfObject:self->_bottomQuiltPieceLayer];
  }

  else
  {
    v6 = -1;
  }

  v7 = v5 > v6;

  return v7;
}

- (void)setTopQuiltPieceOverlapsBottom:(BOOL)bottom
{
  bottomCopy = bottom;
  layer = [(NTKRenegadeBackgroundView *)self layer];
  v8 = layer;
  v6 = &OBJC_IVAR___NTKRenegadeBackgroundView__bottomQuiltPieceLayer;
  if (bottomCopy)
  {
    v7 = &OBJC_IVAR___NTKRenegadeBackgroundView__topQuiltPieceLayer;
  }

  else
  {
    v7 = &OBJC_IVAR___NTKRenegadeBackgroundView__bottomQuiltPieceLayer;
  }

  if (!bottomCopy)
  {
    v6 = &OBJC_IVAR___NTKRenegadeBackgroundView__topQuiltPieceLayer;
  }

  [layer insertSublayer:*(&self->super.super.super.isa + *v7) above:*(&self->super.super.super.isa + *v6)];
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_configuration != configurationCopy)
  {
    v8 = configurationCopy;
    objc_storeStrong(&self->_configuration, configuration);
    topQuiltPath = [(NTKRenegadeBackgroundConfiguration *)v8 topQuiltPath];
    -[CAShapeLayer setPath:](self->_topQuiltPieceLayer, "setPath:", [topQuiltPath CGPath]);

    bottomQuiltPath = [(NTKRenegadeBackgroundConfiguration *)v8 bottomQuiltPath];
    -[CAShapeLayer setPath:](self->_bottomQuiltPieceLayer, "setPath:", [bottomQuiltPath CGPath]);

    configurationCopy = v8;
  }
}

@end