@interface NTKZeusComplicationBackgroundView
- (NTKZeusComplicationBackgroundView)initWithDevice:(id)a3;
- (id)_cornerImage;
- (void)_createCorners:(id)a3;
- (void)_updateBlancEditModeCorners;
- (void)_updateCorners;
- (void)applyTransitionFraction:(double)a3 fromMode:(int64_t)a4 toMode:(int64_t)a5;
- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5;
- (void)layoutSubviews;
@end

@implementation NTKZeusComplicationBackgroundView

- (NTKZeusComplicationBackgroundView)initWithDevice:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NTKZeusComplicationBackgroundView;
  v5 = [(NTKZeusComplicationBackgroundView *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(NTKZeudleComplicationBackgroundView *)v5 setDevice:v4];
    v7 = +[NSMutableArray array];
    for (i = 0; i != 4; ++i)
    {
      v9 = +[CALayer layer];
      [v9 setAnchorPoint:{0.0, 0.0}];
      if (i)
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }

      v11 = v10;
      if (i > 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      CATransform3DMakeScale(&v16, v11, v12, 1.0);
      [v9 setTransform:&v16];
      [(NSArray *)v7 addObject:v9];
      v13 = [(NTKZeusComplicationBackgroundView *)v6 layer];
      [v13 addSublayer:v9];
    }

    cornerLayers = v6->_cornerLayers;
    v6->_cornerLayers = v7;

    [(NTKZeusComplicationBackgroundView *)v6 _updateCorners];
  }

  return v6;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = NTKZeusComplicationBackgroundView;
  [(NTKZeusComplicationBackgroundView *)&v17 layoutSubviews];
  [(NTKZeudleComplicationBackgroundView *)self contentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  for (i = 0; i != 4; ++i)
  {
    v12 = [(NSArray *)self->_cornerLayers objectAtIndex:i];
    v13 = v12;
    if (i)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0.0;
    }

    v15 = v4 + v14;
    if (i <= 1)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0.0;
    }

    [v12 setPosition:{v15, v6 + v16}];
  }
}

- (id)_cornerImage
{
  v3 = [(NTKZeudleComplicationBackgroundView *)self style];
  v4 = [(NTKZeudleComplicationBackgroundView *)self device];
  v5 = v4;
  if (v3 == 2)
  {
    sub_C038(v4, v26);
    v6 = v27;
    v7 = &v28;
  }

  else
  {
    sub_C038(v4, v23);
    v6 = v24;
    v7 = &v25;
  }

  v8 = *v7;

  v9 = [(NTKZeudleComplicationBackgroundView *)self device];
  sub_C038(v9, v21);
  v10 = v22;

  if (v3 == 2)
  {
    p_sharpCorner = &self->_sharpCorner;
    sharpCorner = self->_sharpCorner;
    if (sharpCorner)
    {
      goto LABEL_10;
    }

    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, 0.5, v8);
    CGPathAddLineToPoint(Mutable, 0, 0.5, 0.5);
  }

  else
  {
    p_sharpCorner = &self->_roundCorner;
    sharpCorner = self->_roundCorner;
    if (sharpCorner)
    {
      goto LABEL_10;
    }

    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, 0.5, v8);
    CGPathAddArc(Mutable, 0, v10 + 0.5, v10 + 0.5, v10, 3.14159265, -1.57079633, 0);
  }

  CGPathAddLineToPoint(Mutable, 0, v6, 0.5);
  v14 = +[CAShapeLayer layer];
  [v14 setBounds:{CGPointZero.x, CGPointZero.y, v6, v8}];
  [v14 setPath:Mutable];
  v15 = +[UIColor clearColor];
  [v14 setFillColor:{objc_msgSend(v15, "CGColor")}];

  v16 = +[UIColor whiteColor];
  [v14 setStrokeColor:{objc_msgSend(v16, "CGColor")}];

  [v14 setLineWidth:1.0];
  [v14 setLineCap:kCALineCapButt];
  v30.width = v6;
  v30.height = v8;
  UIGraphicsBeginImageContextWithOptions(v30, 0, 0.0);
  [v14 renderInContext:UIGraphicsGetCurrentContext()];
  CGPathRelease(Mutable);
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  v18 = [v17 imageWithRenderingMode:2];
  v19 = *p_sharpCorner;
  *p_sharpCorner = v18;

  UIGraphicsEndImageContext();
  sharpCorner = *p_sharpCorner;
LABEL_10:

  return sharpCorner;
}

- (void)_createCorners:(id)a3
{
  v14 = a3;
  v4 = [(NTKZeusComplicationBackgroundView *)self _cornerImage];
  v5 = [v4 _flatImageWithColor:v14];

  [v5 size];
  if (v5)
  {
    v8 = v6;
    v9 = v7;
    y = CGPointZero.y;
    v11 = [v5 CGImage];
    for (i = 0; i != 4; ++i)
    {
      v13 = [(NSArray *)self->_cornerLayers objectAtIndex:i];
      [v13 setContents:v11];
      [v13 bounds];
      if ((CLKRectEqualsRect() & 1) == 0)
      {
        [v13 setBounds:{CGPointZero.x, y, v8, v9}];
      }
    }
  }
}

- (void)_updateBlancEditModeCorners
{
  v4 = [(NTKZeudleComplicationBackgroundView *)self palette];
  v3 = [v4 editMode];
  [(NTKZeusComplicationBackgroundView *)self _createCorners:v3];
}

- (void)_updateCorners
{
  v3 = [(NTKZeudleComplicationBackgroundView *)self palette];
  v7 = [v3 bottomComplicationBackgroundStroke];

  v4 = v7;
  if (!v7 || v7 == NTKFaceColorPaletteNotFoundColor)
  {
    v5 = [(NTKZeudleComplicationBackgroundView *)self palette];
    v6 = [v5 bottomComplication];

    v4 = v6;
  }

  v8 = v4;
  [(NTKZeusComplicationBackgroundView *)self _createCorners:v4];
}

- (void)applyTransitionFraction:(double)a3 fromPalette:(id)a4 toPalette:(id)a5
{
  v7 = a5;
  v8 = [a4 bottomComplication];
  v9 = [v7 bottomComplication];

  v10 = NTKInterpolateBetweenColors();

  [(NTKZeusComplicationBackgroundView *)self _createCorners:v10];
}

- (void)applyTransitionFraction:(double)a3 fromMode:(int64_t)a4 toMode:(int64_t)a5
{
  v11.receiver = self;
  v11.super_class = NTKZeusComplicationBackgroundView;
  v7 = [(NTKZeudleComplicationBackgroundView *)&v11 complicationColorForBlancEditMode:a4];
  v10.receiver = self;
  v10.super_class = NTKZeusComplicationBackgroundView;
  v8 = [(NTKZeudleComplicationBackgroundView *)&v10 complicationColorForBlancEditMode:a5];
  v9 = NTKInterpolateBetweenColors();

  [(NTKZeusComplicationBackgroundView *)self _createCorners:v9];
}

@end