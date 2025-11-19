@interface NTKRenegadeBackgroundView
- (BOOL)topQuiltPieceOverlapsBottom;
- (CGPath)bottomQuiltPathRef;
- (CGPath)topQuiltPathRef;
- (NTKRenegadeBackgroundView)initWithDevice:(id)a3;
- (void)setBottomQuiltColor:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setTopQuiltColor:(id)a3;
- (void)setTopQuiltPieceOverlapsBottom:(BOOL)a3;
@end

@implementation NTKRenegadeBackgroundView

- (NTKRenegadeBackgroundView)initWithDevice:(id)a3
{
  v5 = a3;
  [v5 screenBounds];
  v15.receiver = self;
  v15.super_class = NTKRenegadeBackgroundView;
  v6 = [(NTKRenegadeBackgroundView *)&v15 initWithFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = +[CAShapeLayer layer];
    topQuiltPieceLayer = v7->_topQuiltPieceLayer;
    v7->_topQuiltPieceLayer = v8;

    v10 = [(NTKRenegadeBackgroundView *)v7 layer];
    [v10 addSublayer:v7->_topQuiltPieceLayer];

    v11 = +[CAShapeLayer layer];
    bottomQuiltPieceLayer = v7->_bottomQuiltPieceLayer;
    v7->_bottomQuiltPieceLayer = v11;

    v13 = [(NTKRenegadeBackgroundView *)v7 layer];
    [v13 addSublayer:v7->_bottomQuiltPieceLayer];
  }

  return v7;
}

- (void)setTopQuiltColor:(id)a3
{
  v5 = a3;
  if (self->_topQuiltColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_topQuiltColor, a3);
    v6 = v7;
    [(CAShapeLayer *)self->_topQuiltPieceLayer setFillColor:[(UIColor *)v7 CGColor]];
    v5 = v7;
  }
}

- (void)setBottomQuiltColor:(id)a3
{
  v5 = a3;
  if (self->_bottomQuiltColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_bottomQuiltColor, a3);
    v6 = v7;
    [(CAShapeLayer *)self->_bottomQuiltPieceLayer setFillColor:[(UIColor *)v7 CGColor]];
    v5 = v7;
  }
}

- (CGPath)topQuiltPathRef
{
  v2 = [(CAShapeLayer *)self->_topQuiltPieceLayer presentationLayer];
  v3 = [v2 path];

  return v3;
}

- (CGPath)bottomQuiltPathRef
{
  v2 = [(CAShapeLayer *)self->_bottomQuiltPieceLayer presentationLayer];
  v3 = [v2 path];

  return v3;
}

- (BOOL)topQuiltPieceOverlapsBottom
{
  v3 = [(NTKRenegadeBackgroundView *)self layer];
  v4 = [v3 sublayers];

  if ([v4 containsObject:self->_topQuiltPieceLayer])
  {
    v5 = [v4 indexOfObject:self->_topQuiltPieceLayer];
  }

  else
  {
    v5 = -1;
  }

  if ([v4 containsObject:self->_bottomQuiltPieceLayer])
  {
    v6 = [v4 indexOfObject:self->_bottomQuiltPieceLayer];
  }

  else
  {
    v6 = -1;
  }

  v7 = v5 > v6;

  return v7;
}

- (void)setTopQuiltPieceOverlapsBottom:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKRenegadeBackgroundView *)self layer];
  v8 = v5;
  v6 = &OBJC_IVAR___NTKRenegadeBackgroundView__bottomQuiltPieceLayer;
  if (v3)
  {
    v7 = &OBJC_IVAR___NTKRenegadeBackgroundView__topQuiltPieceLayer;
  }

  else
  {
    v7 = &OBJC_IVAR___NTKRenegadeBackgroundView__bottomQuiltPieceLayer;
  }

  if (!v3)
  {
    v6 = &OBJC_IVAR___NTKRenegadeBackgroundView__topQuiltPieceLayer;
  }

  [v5 insertSublayer:*(&self->super.super.super.isa + *v7) above:*(&self->super.super.super.isa + *v6)];
}

- (void)setConfiguration:(id)a3
{
  v5 = a3;
  if (self->_configuration != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_configuration, a3);
    v6 = [(NTKRenegadeBackgroundConfiguration *)v8 topQuiltPath];
    -[CAShapeLayer setPath:](self->_topQuiltPieceLayer, "setPath:", [v6 CGPath]);

    v7 = [(NTKRenegadeBackgroundConfiguration *)v8 bottomQuiltPath];
    -[CAShapeLayer setPath:](self->_bottomQuiltPieceLayer, "setPath:", [v7 CGPath]);

    v5 = v8;
  }
}

@end