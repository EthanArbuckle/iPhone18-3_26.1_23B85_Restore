@interface MKTransitIncidentItemCellBackgroundView
- (MKTransitIncidentItemCellBackgroundView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)rect;
- (void)setFillColor:(id)color;
- (void)setPosition:(int64_t)position;
- (void)setStrokeColor:(id)color;
@end

@implementation MKTransitIncidentItemCellBackgroundView

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v44 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = MKTransitIncidentItemCellBackgroundView;
  [(MKTransitIncidentItemCellBackgroundView *)&v37 drawRect:?];
  fillColor = [(MKTransitIncidentItemCellBackgroundView *)self fillColor];

  if (fillColor)
  {
    fillColor2 = [(MKTransitIncidentItemCellBackgroundView *)self fillColor];
    [fillColor2 setFill];
  }

  strokeColor = [(MKTransitIncidentItemCellBackgroundView *)self strokeColor];

  if (strokeColor)
  {
    strokeColor2 = [(MKTransitIncidentItemCellBackgroundView *)self strokeColor];
    [strokeColor2 setStroke];
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

  position = [(MKTransitIncidentItemCellBackgroundView *)self position];
  if (position <= 1)
  {
    if (!position)
    {
      v16 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:-1 byRoundingCorners:x cornerRadii:{y, width, height, cornerRadius, cornerRadius}];
      [v16 setLineWidth:v14];
      [v16 fill];
      strokeColor3 = [(MKTransitIncidentItemCellBackgroundView *)self strokeColor];

      if (strokeColor3)
      {
        [v16 stroke];
      }

      goto LABEL_23;
    }

    if (position != 1)
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
    strokeColor4 = [(MKTransitIncidentItemCellBackgroundView *)self strokeColor];

    if (strokeColor4)
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

  if (position != 2)
  {
    if (position != 3)
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
  strokeColor5 = [(MKTransitIncidentItemCellBackgroundView *)self strokeColor];

  if (strokeColor5)
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
  window = [(MKTransitIncidentItemCellBackgroundView *)self window];
  screen = [window screen];
  v5 = screen;
  if (screen)
  {
    [screen nativeScale];
    self->_scale = v6;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen nativeScale];
    self->_scale = v8;
  }
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_strokeColor != colorCopy)
  {
    v8 = colorCopy;
    v7 = [(UIColor *)colorCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_strokeColor, color);
      [(MKTransitIncidentItemCellBackgroundView *)self setNeedsDisplay];
      v6 = v8;
    }
  }
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_fillColor != colorCopy)
  {
    v8 = colorCopy;
    v7 = [(UIColor *)colorCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_fillColor, color);
      [(MKTransitIncidentItemCellBackgroundView *)self setNeedsDisplay];
      v6 = v8;
    }
  }
}

- (void)setPosition:(int64_t)position
{
  if (self->_position != position)
  {
    self->_position = position;
    [(MKTransitIncidentItemCellBackgroundView *)self setNeedsDisplay];
  }
}

- (MKTransitIncidentItemCellBackgroundView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = MKTransitIncidentItemCellBackgroundView;
  v3 = [(MKTransitIncidentItemCellBackgroundView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKTransitIncidentItemCellBackgroundView *)v3 setOpaque:0];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen nativeScale];
    v4->_scale = v6;

    traitCollection = [(MKTransitIncidentItemCellBackgroundView *)v4 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    v9 = 10.0;
    if (userInterfaceIdiom == 5)
    {
      v9 = 8.0;
    }

    v4->_cornerRadius = v9;
  }

  return v4;
}

@end