@interface AXCameraFeatureDebuggingView
- (AXCameraFeatureDebuggingView)initWithFrame:(CGRect)frame;
- (NSString)text;
- (double)borderWidth;
- (void)layoutSubviews;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
- (void)setInterfaceOrientation:(int64_t)orientation;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
- (void)setTextInsideBox:(BOOL)box;
- (void)setTextOnTop:(BOOL)top;
@end

@implementation AXCameraFeatureDebuggingView

- (AXCameraFeatureDebuggingView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = AXCameraFeatureDebuggingView;
  v3 = [(AXCameraFeatureDebuggingView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x29EDC7DA0]);
    v5 = *MEMORY[0x29EDB90E0];
    v6 = *(MEMORY[0x29EDB90E0] + 8);
    v7 = *(MEMORY[0x29EDB90E0] + 16);
    v8 = *(MEMORY[0x29EDB90E0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x29EDB90E0], v6, v7, v8}];
    crossHairX = v3->__crossHairX;
    v3->__crossHairX = v9;

    borderColor = [(AXCameraFeatureDebuggingView *)v3 borderColor];
    [(UIView *)v3->__crossHairX setBackgroundColor:borderColor];

    [(AXCameraFeatureDebuggingView *)v3 addSubview:v3->__crossHairX];
    v12 = [objc_alloc(MEMORY[0x29EDC7DA0]) initWithFrame:{v5, v6, v7, v8}];
    crossHairY = v3->__crossHairY;
    v3->__crossHairY = v12;

    borderColor2 = [(AXCameraFeatureDebuggingView *)v3 borderColor];
    [(UIView *)v3->__crossHairY setBackgroundColor:borderColor2];

    [(AXCameraFeatureDebuggingView *)v3 addSubview:v3->__crossHairY];
    whiteColor = [MEMORY[0x29EDC7A00] whiteColor];
    textColor = v3->_textColor;
    v3->_textColor = whiteColor;

    v17 = v3;
  }

  return v3;
}

- (double)borderWidth
{
  layer = [(AXCameraFeatureDebuggingView *)self layer];
  [layer borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderWidth:(double)width
{
  layer = [(AXCameraFeatureDebuggingView *)self layer];
  [layer setBorderWidth:width];
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  borderColor = self->_borderColor;
  if (borderColor != colorCopy)
  {
    v13 = colorCopy;
    if (([(UIColor *)borderColor isEqual:colorCopy]& 1) == 0)
    {
      objc_storeStrong(&self->_borderColor, color);
      v7 = v13;
      cGColor = [(UIColor *)v13 CGColor];
      layer = [(AXCameraFeatureDebuggingView *)self layer];
      [layer setBorderColor:cGColor];

      _crossHairX = [(AXCameraFeatureDebuggingView *)self _crossHairX];
      [_crossHairX setBackgroundColor:v13];

      _crossHairY = [(AXCameraFeatureDebuggingView *)self _crossHairY];
      [_crossHairY setBackgroundColor:v13];

      _label = [(AXCameraFeatureDebuggingView *)self _label];
      [_label setBackgroundColor:v13];
    }
  }

  MEMORY[0x2A1C71028]();
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    _label = [(AXCameraFeatureDebuggingView *)self _label];
    [_label setTextColor:v7];

    colorCopy = v7;
  }
}

- (NSString)text
{
  _label = [(AXCameraFeatureDebuggingView *)self _label];
  text = [_label text];

  return text;
}

- (void)setText:(id)text
{
  textCopy = text;
  if (textCopy && !self->__label)
  {
    v4 = objc_alloc(MEMORY[0x29EDC7B38]);
    v5 = [v4 initWithFrame:{*MEMORY[0x29EDB90E0], *(MEMORY[0x29EDB90E0] + 8), *(MEMORY[0x29EDB90E0] + 16), *(MEMORY[0x29EDB90E0] + 24)}];
    textColor = [(AXCameraFeatureDebuggingView *)self textColor];
    [(UILabel *)v5 setTextColor:textColor];

    borderColor = [(AXCameraFeatureDebuggingView *)self borderColor];
    [(UILabel *)v5 setBackgroundColor:borderColor];

    v8 = [MEMORY[0x29EDC76B0] systemFontOfSize:16.0];
    [(UILabel *)v5 setFont:v8];

    [(UILabel *)v5 setTextAlignment:1];
    [(AXCameraFeatureDebuggingView *)self addSubview:v5];
    label = self->__label;
    self->__label = v5;
  }

  _label = [(AXCameraFeatureDebuggingView *)self _label];
  [_label setText:textCopy];

  [(AXCameraFeatureDebuggingView *)self setNeedsLayout];
}

- (void)setTextOnTop:(BOOL)top
{
  if (self->_textOnTop != top)
  {
    self->_textOnTop = top;
    [(AXCameraFeatureDebuggingView *)self setNeedsLayout];
  }
}

- (void)setTextInsideBox:(BOOL)box
{
  if (self->_textInsideBox != box)
  {
    self->_textInsideBox = box;
    [(AXCameraFeatureDebuggingView *)self setNeedsLayout];
  }
}

- (void)setInterfaceOrientation:(int64_t)orientation
{
  if (self->_interfaceOrientation != orientation)
  {
    self->_interfaceOrientation = orientation;
    [(AXCameraFeatureDebuggingView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = AXCameraFeatureDebuggingView;
  [(AXCameraFeatureDebuggingView *)&v50 layoutSubviews];
  [(AXCameraFeatureDebuggingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  UIRectGetCenter();
  MinX = v11;
  MaxY = v13;
  [(AXCameraFeatureDebuggingView *)self borderWidth];
  if (v15 <= 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 10.0;
  }

  _crossHairX = [(AXCameraFeatureDebuggingView *)self _crossHairX];
  [_crossHairX setCenter:{MinX, MaxY}];

  _crossHairY = [(AXCameraFeatureDebuggingView *)self _crossHairY];
  [_crossHairY setCenter:{MinX, MaxY}];

  _crossHairX2 = [(AXCameraFeatureDebuggingView *)self _crossHairX];
  [_crossHairX2 setBounds:{0.0, 0.0, v16, 2.0}];

  _crossHairY2 = [(AXCameraFeatureDebuggingView *)self _crossHairY];
  [_crossHairY2 setBounds:{0.0, 0.0, 2.0, v16}];

  _label = [(AXCameraFeatureDebuggingView *)self _label];
  if (!_label)
  {
    goto LABEL_31;
  }

  if (([(AXCameraFeatureDebuggingView *)self interfaceOrientation]- 3) >= 2)
  {
    v22 = v8;
  }

  else
  {
    v22 = v10;
  }

  [_label intrinsicContentSize];
  v24 = v23;
  v47 = fmax(v25, v22);
  v45 = *(MEMORY[0x29EDB90E0] + 8);
  v46 = *MEMORY[0x29EDB90E0];
  textOnTop = [(AXCameraFeatureDebuggingView *)self textOnTop];
  v27 = MEMORY[0x29EDB90B8];
  v28 = *MEMORY[0x29EDB90B8];
  interfaceOrientation = [(AXCameraFeatureDebuggingView *)self interfaceOrientation];
  if (interfaceOrientation == 2)
  {
    v34 = v4;
    v35 = v6;
    v36 = v8;
    v37 = v10;
    if (textOnTop)
    {
      MaxY = CGRectGetMaxY(*&v34);
      v38 = 1.0;
    }

    else
    {
      MaxY = CGRectGetMinY(*&v34);
      v38 = -1.0;
    }

    v39 = 3.14159265;
  }

  else
  {
    v44 = *(v27 + 8);
    v30 = v4;
    v31 = v6;
    v32 = v8;
    v33 = v10;
    if (interfaceOrientation == 4)
    {
      if (textOnTop)
      {
        MinX = CGRectGetMinX(*&v30);
        v28 = -1.0;
      }

      else
      {
        MinX = CGRectGetMaxX(*&v30);
        v28 = 1.0;
      }

      v39 = -1.57079633;
      goto LABEL_25;
    }

    if (interfaceOrientation == 3)
    {
      if (textOnTop)
      {
        MinX = CGRectGetMaxX(*&v30);
        v28 = 1.0;
      }

      else
      {
        MinX = CGRectGetMinX(*&v30);
        v28 = -1.0;
      }

      v39 = 1.57079633;
LABEL_25:
      v38 = v44;
      goto LABEL_28;
    }

    if (textOnTop)
    {
      MaxY = CGRectGetMinY(*&v30);
      v38 = -1.0;
    }

    else
    {
      MaxY = CGRectGetMaxY(*&v30);
      v38 = 1.0;
    }

    v39 = 0.0;
  }

LABEL_28:
  textInsideBox = [(AXCameraFeatureDebuggingView *)self textInsideBox];
  v41 = -(v24 * 0.5);
  if (!textInsideBox)
  {
    v41 = v24 * 0.5;
  }

  v42 = MinX + v28 * v41;
  v43 = MaxY + v38 * v41;
  memset(&v49, 0, sizeof(v49));
  CGAffineTransformMakeRotation(&v49, v39);
  [_label setCenter:{v42, v43}];
  [_label setBounds:{v46, v45, v47, v24}];
  v48 = v49;
  [_label setTransform:&v48];
LABEL_31:
}

@end