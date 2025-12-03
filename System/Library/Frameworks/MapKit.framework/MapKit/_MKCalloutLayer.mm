@interface _MKCalloutLayer
- ($C40EA2924CB7347F2FA80A8C1A939024)metrics;
- (CGImage)_newContentImage;
- (CGSize)_contentSize;
- (_MKCalloutLayer)init;
- (void)dealloc;
- (void)layoutSublayers;
- (void)setArrowOffset:(double)offset;
- (void)setArrowPosition:(int64_t)position;
- (void)setContentsScale:(double)scale;
- (void)setMetrics:(id *)metrics;
@end

@implementation _MKCalloutLayer

- (void)setMetrics:(id *)metrics
{
  v3 = *&metrics->var2;
  *&self->_metrics.margin = *&metrics->var0;
  *&self->_metrics.arrowBase = v3;
  v4 = *&metrics->var8.bottom;
  v6 = *&metrics->var4;
  v5 = *&metrics->var5.var1.var1;
  *&self->_metrics.padding.top = *&metrics->var8.top;
  *&self->_metrics.padding.bottom = v4;
  *&self->_metrics.useRadialSmoothing = v6;
  *&self->_metrics.var0.nonRadialSmoothing.arrowPointFactor = v5;
}

- ($C40EA2924CB7347F2FA80A8C1A939024)metrics
{
  var5 = self[1].var5;
  *&retstr->var4 = *&self[1].var3;
  *&retstr->var5.var1.var1 = var5;
  v4 = *&self[1].var8.left;
  *&retstr->var8.top = *&self[1].var6;
  *&retstr->var8.bottom = v4;
  v5 = *&self[1].var1;
  *&retstr->var0 = *&self->var8.right;
  *&retstr->var2 = v5;
  return self;
}

- (void)layoutSublayers
{
  v44.receiver = self;
  v44.super_class = _MKCalloutLayer;
  [(_MKCalloutLayer *)&v44 layoutSublayers];
  if (!self->_contentImage)
  {
    self->_contentImage = [(_MKCalloutLayer *)self _newContentImage];
    if (self->_arrowPosition)
    {
      [(_MKCalloutLayer *)self setContents:0];
      if (!self->_leftLayer)
      {
        layer = [MEMORY[0x1E6979398] layer];
        leftLayer = self->_leftLayer;
        self->_leftLayer = layer;

        [(_MKCalloutLayer *)self addSublayer:self->_leftLayer];
        [(_MKCalloutLayer *)self contentsScale];
        [(CALayer *)self->_leftLayer setContentsScale:?];
        [(CALayer *)self->_leftLayer setGeometryFlipped:1];
        [(CALayer *)self->_leftLayer setAllowsEdgeAntialiasing:0];
      }

      if (!self->_rightLayer)
      {
        layer2 = [MEMORY[0x1E6979398] layer];
        rightLayer = self->_rightLayer;
        self->_rightLayer = layer2;

        [(_MKCalloutLayer *)self addSublayer:self->_rightLayer];
        [(_MKCalloutLayer *)self contentsScale];
        [(CALayer *)self->_rightLayer setContentsScale:?];
        [(CALayer *)self->_rightLayer setGeometryFlipped:1];
        [(CALayer *)self->_rightLayer setAllowsEdgeAntialiasing:0];
      }

      [(CALayer *)self->_leftLayer setContents:self->_contentImage];
      [(CALayer *)self->_leftLayer setContentsRect:0.0, 0.0, 0.5, 1.0];
      [(_MKCalloutLayer *)self _contentSize];
      [(CALayer *)self->_leftLayer setContentsCenter:self->_metrics.cornerRadius / (v7 * 0.5), 1.0 - self->_metrics.cornerRadius / v8, 1.0 / v7, 1.0 / v8];
      contents = [(CALayer *)self->_leftLayer contents];
      [(CALayer *)self->_rightLayer setContents:contents];

      [(CALayer *)self->_leftLayer contentsRect];
      [(CALayer *)self->_rightLayer setContentsRect:?];
      CATransform3DMakeScale(&v43, -1.0, 1.0, 1.0);
      v10 = self->_rightLayer;
      v42 = v43;
      [(CALayer *)v10 setTransform:&v42];
      [(CALayer *)self->_leftLayer contentsCenter];
      selfCopy = self->_rightLayer;
    }

    else
    {
      [(CALayer *)self->_leftLayer removeFromSuperlayer];
      v16 = self->_leftLayer;
      self->_leftLayer = 0;

      [(CALayer *)self->_rightLayer removeFromSuperlayer];
      v17 = self->_rightLayer;
      self->_rightLayer = 0;

      cornerRadius = self->_metrics.cornerRadius;
      v19 = cornerRadius * 2.0 + 1.0;
      [(_MKCalloutLayer *)self setContents:self->_contentImage];
      v11 = cornerRadius / v19;
      v13 = 1.0 / v19;
      selfCopy = self;
      v12 = cornerRadius / v19;
      v14 = 1.0 / v19;
    }

    [(_MKCalloutLayer *)selfCopy setContentsCenter:v11, v12, v13, v14];
  }

  if (self->_arrowPosition)
  {
    [(_MKCalloutLayer *)self bounds];
    arrowPosition = self->_arrowPosition;
    if ((arrowPosition - 3) <= 1)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }

    if ((arrowPosition - 3) <= 1)
    {
      v26 = v23;
    }

    else
    {
      v26 = v22;
    }

    if ((arrowPosition - 3) <= 1)
    {
      v27 = (v22 - v23) * 0.5;
    }

    else
    {
      v27 = v20;
    }

    arrowOffset = self->_arrowOffset;
    if ((arrowPosition - 3) <= 1)
    {
      v29 = (v23 - v22) * 0.5;
    }

    else
    {
      v29 = v21;
    }

    if (arrowPosition == 4)
    {
      arrowOffset = -arrowOffset;
    }

    v30 = v26 * 0.5 + arrowOffset;
    [(_MKCalloutLayer *)self contentsScale];
    v32 = round(v31 * v30);
    [(_MKCalloutLayer *)self contentsScale];
    v34 = v26 - v32 / v33;
    v35 = v27 + v32 / v33;
    [(CALayer *)self->_leftLayer setFrame:v27, v29];
    [(CALayer *)self->_rightLayer setFrame:v35, v29, v34, v25];
    v36 = self->_arrowPosition;
    switch(v36)
    {
      case 4:
        CATransform3DMakeRotation(&v39, -1.57079633, 0.0, 0.0, 1.0);
        *&v42.m31 = *&v39.m31;
        *&v42.m33 = *&v39.m33;
        *&v42.m41 = *&v39.m41;
        *&v42.m43 = *&v39.m43;
        *&v42.m11 = *&v39.m11;
        *&v42.m13 = *&v39.m13;
        v37 = *&v39.m21;
        v38 = *&v39.m23;
        break;
      case 3:
        CATransform3DMakeRotation(&v40, 1.57079633, 0.0, 0.0, 1.0);
        *&v42.m31 = *&v40.m31;
        *&v42.m33 = *&v40.m33;
        *&v42.m41 = *&v40.m41;
        *&v42.m43 = *&v40.m43;
        *&v42.m11 = *&v40.m11;
        *&v42.m13 = *&v40.m13;
        v37 = *&v40.m21;
        v38 = *&v40.m23;
        break;
      case 1:
        CATransform3DMakeScale(&v41, 1.0, -1.0, 1.0);
        *&v42.m31 = *&v41.m31;
        *&v42.m33 = *&v41.m33;
        *&v42.m41 = *&v41.m41;
        *&v42.m43 = *&v41.m43;
        *&v42.m11 = *&v41.m11;
        *&v42.m13 = *&v41.m13;
        v37 = *&v41.m21;
        v38 = *&v41.m23;
        break;
      default:
        return;
    }

    *&v42.m21 = v37;
    *&v42.m23 = v38;
    [(_MKCalloutLayer *)self setSublayerTransform:&v42];
  }
}

- (void)setArrowOffset:(double)offset
{
  if (self->_arrowOffset != offset)
  {
    self->_arrowOffset = offset;
    [(_MKCalloutLayer *)self setNeedsLayout];
  }
}

- (void)setArrowPosition:(int64_t)position
{
  if (self->_arrowPosition != position)
  {
    self->_arrowPosition = position;
    contentImage = self->_contentImage;
    if (contentImage)
    {
      CGImageRelease(contentImage);
      self->_contentImage = 0;
    }

    [(_MKCalloutLayer *)self setNeedsLayout];
  }
}

- (void)setContentsScale:(double)scale
{
  v5.receiver = self;
  v5.super_class = _MKCalloutLayer;
  [(_MKResizingLayer *)&v5 setContentsScale:scale];
  contentImage = self->_contentImage;
  if (contentImage)
  {
    CGImageRelease(contentImage);
    self->_contentImage = 0;
  }

  [(_MKCalloutLayer *)self setNeedsLayout];
}

- (void)dealloc
{
  contentImage = self->_contentImage;
  if (contentImage)
  {
    CGImageRelease(contentImage);
    self->_contentImage = 0;
  }

  v4.receiver = self;
  v4.super_class = _MKCalloutLayer;
  [(_MKCalloutLayer *)&v4 dealloc];
}

- (_MKCalloutLayer)init
{
  v5.receiver = self;
  v5.super_class = _MKCalloutLayer;
  v2 = [(_MKCalloutLayer *)&v5 init];
  if (v2)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(_MKCalloutLayer *)v2 setFillColor:whiteColor];

    [(_MKResizingLayer *)v2 setNeedsLayoutOnBoundsChange:1];
  }

  return v2;
}

- (CGImage)_newContentImage
{
  [(_MKCalloutLayer *)self _contentSize];
  v4 = v3;
  v6 = v5;
  cornerRadius = self->_metrics.cornerRadius;
  [(_MKCalloutLayer *)self contentsScale];
  v9 = v8;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11 = CGBitmapContextCreate(0, (v4 * v9), (v6 * v9), 8uLL, 0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextTranslateCTM(v11, 0.0, v6 * v9);
  CGContextScaleCTM(v11, v9, -v9);
  if (self->_arrowPosition)
  {
    arrowHeight = self->_metrics.arrowHeight;
    arrowBase = self->_metrics.arrowBase;
    v13 = v6 - arrowHeight;
    Mutable = CGPathCreateMutable();
    CGPathMoveToPoint(Mutable, 0, v4 - cornerRadius, v6 - arrowHeight);
    CGPathAddArcToPoint(Mutable, 0, v4, v6 - arrowHeight, v4, v6 + 1.0 - (cornerRadius + arrowHeight), cornerRadius);
    CGPathAddLineToPoint(Mutable, 0, v4, cornerRadius);
    CGPathAddArcToPoint(Mutable, 0, v4, 0.0, v4 - cornerRadius, 0.0, cornerRadius);
    CGPathAddLineToPoint(Mutable, 0, cornerRadius, 0.0);
    CGPathAddArcToPoint(Mutable, 0, 0.0, 0.0, 0.0, cornerRadius, cornerRadius);
    CGPathAddLineToPoint(Mutable, 0, 0.0, v6 + 1.0 - (cornerRadius + arrowHeight));
    CGPathAddArcToPoint(Mutable, 0, 0.0, v6 - arrowHeight, cornerRadius, v6 - arrowHeight, cornerRadius);
    v34 = cornerRadius + 1.0;
    CGPathAddLineToPoint(Mutable, 0, cornerRadius + 1.0, v6 - arrowHeight);
    if (self->_metrics.useRadialSmoothing)
    {
      v15 = arrowBase * 0.5;
      v16 = atan(arrowHeight / (arrowBase * 0.5));
      v17 = v4 * 0.5;
      if (v16 >= 0.0)
      {
        v18 = -v16;
      }

      else
      {
        v18 = v16;
      }

      CGPathAddArc(Mutable, 0, v4 * 0.5 - v15 - self->_metrics.var0.radialSmoothing.arrowBaseRadius * 0.5, v13 + self->_metrics.var0.radialSmoothing.arrowBaseRadius, self->_metrics.var0.radialSmoothing.arrowBaseRadius, -1.57079633, v18, 0);
      CurrentPoint = CGPathGetCurrentPoint(Mutable);
      CGPathAddArcToPoint(Mutable, 0, v4 * 0.5, v6, v17 + v17 - CurrentPoint.x, CurrentPoint.y, self->_metrics.var0.radialSmoothing.arrowRadius);
      CGPathAddLineToPoint(Mutable, 0, v17 + v15, v6 - arrowHeight);
      CGPathAddLineToPoint(Mutable, 0, v4 - v34, v6 - arrowHeight);
    }

    else
    {
      arrowRadius = self->_metrics.var0.radialSmoothing.arrowRadius;
      v31 = v9;
      v21 = arrowBase * 0.5;
      v22 = self->_metrics.var0.radialSmoothing.arrowBaseRadius / sqrt(v21 * v21 + arrowHeight * arrowHeight);
      v23 = arrowBase * 0.5 * v22;
      v24 = arrowHeight * v22;
      v25 = v4 * 0.5 - arrowBase * 0.5;
      v33 = v13 + v24;
      CGPathAddQuadCurveToPoint(Mutable, 0, v25, v13, v25 + v23, v13 + v24);
      v26 = v6 - v24 * arrowRadius;
      CGPathAddLineToPoint(Mutable, 0, v4 * 0.5 - v23 * arrowRadius, v26);
      CGPathAddQuadCurveToPoint(Mutable, 0, v4 * 0.5, v6, v4 * 0.5 + v23 * arrowRadius, v26);
      v27 = v4 * 0.5 + v21;
      v9 = v31;
      CGPathAddLineToPoint(Mutable, 0, v27 - v23, v33);
      CGPathAddQuadCurveToPoint(Mutable, 0, v27, v13, v4 - v34, v13);
    }

    CGPathCloseSubpath(Mutable);
  }

  else
  {
    v35.origin.x = 0.0;
    v35.origin.y = 0.0;
    v35.size.width = v4;
    v35.size.height = v6;
    Mutable = CGPathCreateWithRoundedRect(v35, cornerRadius, cornerRadius, 0);
  }

  CGContextAddPath(v11, Mutable);
  fillColor = self->_fillColor;
  if (fillColor)
  {
    CGContextSetFillColorWithColor(v11, [(UIColor *)fillColor CGColor]);
    CGContextFillPath(v11);
  }

  if (self->_strokeColor)
  {
    CGContextClip(v11);
    CGContextAddPath(v11, Mutable);
    CGContextSetStrokeColorWithColor(v11, [(UIColor *)self->_strokeColor CGColor]);
    CGContextSetLineWidth(v11, 1.0 / v9 + 1.0 / v9);
    CGContextStrokePath(v11);
  }

  CGPathRelease(Mutable);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  return Image;
}

- (CGSize)_contentSize
{
  cornerRadius = self->_metrics.cornerRadius;
  if (self->_arrowPosition)
  {
    v3 = self->_metrics.arrowBase + self->_metrics.var0.radialSmoothing.arrowBaseRadius * 2.0 + 2.0;
    v4 = self->_metrics.arrowHeight + 1.0;
  }

  else
  {
    v4 = 1.0;
    v3 = 1.0;
  }

  v5 = cornerRadius + cornerRadius;
  v6 = cornerRadius + cornerRadius + v3;
  v7 = v5 + v4;
  result.height = v7;
  result.width = v6;
  return result;
}

@end