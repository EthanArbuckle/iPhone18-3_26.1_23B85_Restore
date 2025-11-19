@interface MKTransitIncidentItemCellBackgroundView
- (MKTransitIncidentItemCellBackgroundView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)a3;
- (void)setFillColor:(id)a3;
- (void)setPosition:(int64_t)a3;
- (void)setStrokeColor:(id)a3;
@end

@implementation MKTransitIncidentItemCellBackgroundView

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v44 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = MKTransitIncidentItemCellBackgroundView;
  [(MKTransitIncidentItemCellBackgroundView *)&v37 drawRect:?];
  v8 = [(MKTransitIncidentItemCellBackgroundView *)self fillColor];

  if (v8)
  {
    v9 = [(MKTransitIncidentItemCellBackgroundView *)self fillColor];
    [v9 setFill];
  }

  v10 = [(MKTransitIncidentItemCellBackgroundView *)self strokeColor];

  if (v10)
  {
    v11 = [(MKTransitIncidentItemCellBackgroundView *)self strokeColor];
    [v11 setStroke];
  }

  cornerRadius = self->_cornerRadius;
  scale = self->_scale;
  if (scale == 0.0)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 1.0 / scale;
  }

  v15 = [(MKTransitIncidentItemCellBackgroundView *)self position];
  if (v15 <= 1)
  {
    if (!v15)
    {
      v16 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:-1 byRoundingCorners:x cornerRadii:{y, width, height, cornerRadius, cornerRadius}];
      [v16 setLineWidth:v14];
      [v16 fill];
      v31 = [(MKTransitIncidentItemCellBackgroundView *)self strokeColor];

      if (v31)
      {
        [v16 stroke];
      }

      goto LABEL_23;
    }

    if (v15 != 1)
    {
      return;
    }

    v16 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:3 byRoundingCorners:x cornerRadii:{y, width, height, cornerRadius, cornerRadius}];
    [v16 setLineWidth:v14];
    [v16 fill];
    Mutable = CGPathCreateMutable();
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    MinX = CGRectGetMinX(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    MinY = CGRectGetMinY(v46);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    MaxX = CGRectGetMaxX(v47);
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    MaxY = CGRectGetMaxY(v48);
    CGPathMoveToPoint(Mutable, 0, MinX, MaxY);
    CGPathAddLineToPoint(Mutable, 0, MinX, MinY + self->_cornerRadius);
    CGPathAddArcToPoint(Mutable, 0, MinX, MinY, MinX + self->_cornerRadius, MinY, self->_cornerRadius);
    CGPathAddLineToPoint(Mutable, 0, MaxX - self->_cornerRadius, MinY);
    CGPathAddArcToPoint(Mutable, 0, MaxX, MinY, MaxX, MinY + self->_cornerRadius, self->_cornerRadius);
    v22 = Mutable;
    v23 = MaxX;
    v24 = MaxY;
LABEL_15:
    CGPathAddLineToPoint(v22, 0, v23, v24);
    v29 = [(MKTransitIncidentItemCellBackgroundView *)self strokeColor];

    if (v29)
    {
      v30 = MEMORY[0x1E69DC728];
LABEL_21:
      v36 = [v30 bezierPathWithCGPath:Mutable];

      [v36 setLineWidth:v14];
      [v36 stroke];
      v16 = v36;
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  if (v15 != 2)
  {
    if (v15 != 3)
    {
      return;
    }

    v16 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:12 byRoundingCorners:x cornerRadii:{y, width, height, cornerRadius, cornerRadius}];
    [v16 setLineWidth:v14];
    [v16 fill];
    Mutable = CGPathCreateMutable();
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    v25 = CGRectGetMinX(v49);
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v26 = CGRectGetMinY(v50);
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    v27 = CGRectGetMaxX(v51);
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    v28 = CGRectGetMaxY(v52);
    CGPathMoveToPoint(Mutable, 0, v25, v26);
    CGPathAddLineToPoint(Mutable, 0, v25, v28 - self->_cornerRadius);
    CGPathAddArcToPoint(Mutable, 0, v25, v28, v25 + self->_cornerRadius, v28, self->_cornerRadius);
    CGPathAddLineToPoint(Mutable, 0, v27 - self->_cornerRadius, v28);
    CGPathAddArcToPoint(Mutable, 0, v27, v28, v27, v28 - self->_cornerRadius, self->_cornerRadius);
    v22 = Mutable;
    v23 = v27;
    v24 = v26;
    goto LABEL_15;
  }

  v16 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0 byRoundingCorners:x cornerRadii:{y, width, height, cornerRadius, cornerRadius}];
  [v16 setLineWidth:v14];
  [v16 fill];
  Mutable = CGPathCreateMutable();
  points.x = x;
  points.y = y;
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  v32 = CGRectGetMaxY(v53);
  v42 = x;
  v43 = v32;
  CGPathAddLines(Mutable, 0, &points, 2uLL);
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v38.x = CGRectGetMaxX(v54);
  v38.y = y;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v33 = CGRectGetMaxX(v55);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  v34 = CGRectGetMaxY(v56);
  v39 = v33;
  v40 = v34;
  CGPathAddLines(Mutable, 0, &v38, 2uLL);
  v35 = [(MKTransitIncidentItemCellBackgroundView *)self strokeColor];

  if (v35)
  {
    v30 = MEMORY[0x1E69DC728];
    goto LABEL_21;
  }

LABEL_22:
  CGPathRelease(Mutable);
LABEL_23:
}

- (void)didMoveToWindow
{
  v9.receiver = self;
  v9.super_class = MKTransitIncidentItemCellBackgroundView;
  [(MKTransitIncidentItemCellBackgroundView *)&v9 didMoveToWindow];
  v3 = [(MKTransitIncidentItemCellBackgroundView *)self window];
  v4 = [v3 screen];
  v5 = v4;
  if (v4)
  {
    [v4 nativeScale];
    self->_scale = v6;
  }

  else
  {
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 nativeScale];
    self->_scale = v8;
  }
}

- (void)setStrokeColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_strokeColor != v5)
  {
    v8 = v5;
    v7 = [(UIColor *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_strokeColor, a3);
      [(MKTransitIncidentItemCellBackgroundView *)self setNeedsDisplay];
      v6 = v8;
    }
  }
}

- (void)setFillColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_fillColor != v5)
  {
    v8 = v5;
    v7 = [(UIColor *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_fillColor, a3);
      [(MKTransitIncidentItemCellBackgroundView *)self setNeedsDisplay];
      v6 = v8;
    }
  }
}

- (void)setPosition:(int64_t)a3
{
  if (self->_position != a3)
  {
    self->_position = a3;
    [(MKTransitIncidentItemCellBackgroundView *)self setNeedsDisplay];
  }
}

- (MKTransitIncidentItemCellBackgroundView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = MKTransitIncidentItemCellBackgroundView;
  v3 = [(MKTransitIncidentItemCellBackgroundView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKTransitIncidentItemCellBackgroundView *)v3 setOpaque:0];
    v5 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v5 nativeScale];
    v4->_scale = v6;

    v7 = [(MKTransitIncidentItemCellBackgroundView *)v4 traitCollection];
    v8 = [v7 userInterfaceIdiom];
    v9 = 10.0;
    if (v8 == 5)
    {
      v9 = 8.0;
    }

    v4->_cornerRadius = v9;
  }

  return v4;
}

@end