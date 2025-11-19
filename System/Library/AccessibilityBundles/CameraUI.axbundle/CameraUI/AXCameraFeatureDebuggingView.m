@interface AXCameraFeatureDebuggingView
- (AXCameraFeatureDebuggingView)initWithFrame:(CGRect)a3;
- (NSString)text;
- (double)borderWidth;
- (void)layoutSubviews;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
- (void)setInterfaceOrientation:(int64_t)a3;
- (void)setText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTextInsideBox:(BOOL)a3;
- (void)setTextOnTop:(BOOL)a3;
@end

@implementation AXCameraFeatureDebuggingView

- (AXCameraFeatureDebuggingView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = AXCameraFeatureDebuggingView;
  v3 = [(AXCameraFeatureDebuggingView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v11 = [(AXCameraFeatureDebuggingView *)v3 borderColor];
    [(UIView *)v3->__crossHairX setBackgroundColor:v11];

    [(AXCameraFeatureDebuggingView *)v3 addSubview:v3->__crossHairX];
    v12 = [objc_alloc(MEMORY[0x29EDC7DA0]) initWithFrame:{v5, v6, v7, v8}];
    crossHairY = v3->__crossHairY;
    v3->__crossHairY = v12;

    v14 = [(AXCameraFeatureDebuggingView *)v3 borderColor];
    [(UIView *)v3->__crossHairY setBackgroundColor:v14];

    [(AXCameraFeatureDebuggingView *)v3 addSubview:v3->__crossHairY];
    v15 = [MEMORY[0x29EDC7A00] whiteColor];
    textColor = v3->_textColor;
    v3->_textColor = v15;

    v17 = v3;
  }

  return v3;
}

- (double)borderWidth
{
  v2 = [(AXCameraFeatureDebuggingView *)self layer];
  [v2 borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderWidth:(double)a3
{
  v4 = [(AXCameraFeatureDebuggingView *)self layer];
  [v4 setBorderWidth:a3];
}

- (void)setBorderColor:(id)a3
{
  v5 = a3;
  borderColor = self->_borderColor;
  if (borderColor != v5)
  {
    v13 = v5;
    if (([(UIColor *)borderColor isEqual:v5]& 1) == 0)
    {
      objc_storeStrong(&self->_borderColor, a3);
      v7 = v13;
      v8 = [(UIColor *)v13 CGColor];
      v9 = [(AXCameraFeatureDebuggingView *)self layer];
      [v9 setBorderColor:v8];

      v10 = [(AXCameraFeatureDebuggingView *)self _crossHairX];
      [v10 setBackgroundColor:v13];

      v11 = [(AXCameraFeatureDebuggingView *)self _crossHairY];
      [v11 setBackgroundColor:v13];

      v12 = [(AXCameraFeatureDebuggingView *)self _label];
      [v12 setBackgroundColor:v13];
    }
  }

  MEMORY[0x2A1C71028]();
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (self->_textColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_textColor, a3);
    v6 = [(AXCameraFeatureDebuggingView *)self _label];
    [v6 setTextColor:v7];

    v5 = v7;
  }
}

- (NSString)text
{
  v2 = [(AXCameraFeatureDebuggingView *)self _label];
  v3 = [v2 text];

  return v3;
}

- (void)setText:(id)a3
{
  v11 = a3;
  if (v11 && !self->__label)
  {
    v4 = objc_alloc(MEMORY[0x29EDC7B38]);
    v5 = [v4 initWithFrame:{*MEMORY[0x29EDB90E0], *(MEMORY[0x29EDB90E0] + 8), *(MEMORY[0x29EDB90E0] + 16), *(MEMORY[0x29EDB90E0] + 24)}];
    v6 = [(AXCameraFeatureDebuggingView *)self textColor];
    [(UILabel *)v5 setTextColor:v6];

    v7 = [(AXCameraFeatureDebuggingView *)self borderColor];
    [(UILabel *)v5 setBackgroundColor:v7];

    v8 = [MEMORY[0x29EDC76B0] systemFontOfSize:16.0];
    [(UILabel *)v5 setFont:v8];

    [(UILabel *)v5 setTextAlignment:1];
    [(AXCameraFeatureDebuggingView *)self addSubview:v5];
    label = self->__label;
    self->__label = v5;
  }

  v10 = [(AXCameraFeatureDebuggingView *)self _label];
  [v10 setText:v11];

  [(AXCameraFeatureDebuggingView *)self setNeedsLayout];
}

- (void)setTextOnTop:(BOOL)a3
{
  if (self->_textOnTop != a3)
  {
    self->_textOnTop = a3;
    [(AXCameraFeatureDebuggingView *)self setNeedsLayout];
  }
}

- (void)setTextInsideBox:(BOOL)a3
{
  if (self->_textInsideBox != a3)
  {
    self->_textInsideBox = a3;
    [(AXCameraFeatureDebuggingView *)self setNeedsLayout];
  }
}

- (void)setInterfaceOrientation:(int64_t)a3
{
  if (self->_interfaceOrientation != a3)
  {
    self->_interfaceOrientation = a3;
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

  v17 = [(AXCameraFeatureDebuggingView *)self _crossHairX];
  [v17 setCenter:{MinX, MaxY}];

  v18 = [(AXCameraFeatureDebuggingView *)self _crossHairY];
  [v18 setCenter:{MinX, MaxY}];

  v19 = [(AXCameraFeatureDebuggingView *)self _crossHairX];
  [v19 setBounds:{0.0, 0.0, v16, 2.0}];

  v20 = [(AXCameraFeatureDebuggingView *)self _crossHairY];
  [v20 setBounds:{0.0, 0.0, 2.0, v16}];

  v21 = [(AXCameraFeatureDebuggingView *)self _label];
  if (!v21)
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

  [v21 intrinsicContentSize];
  v24 = v23;
  v47 = fmax(v25, v22);
  v45 = *(MEMORY[0x29EDB90E0] + 8);
  v46 = *MEMORY[0x29EDB90E0];
  v26 = [(AXCameraFeatureDebuggingView *)self textOnTop];
  v27 = MEMORY[0x29EDB90B8];
  v28 = *MEMORY[0x29EDB90B8];
  v29 = [(AXCameraFeatureDebuggingView *)self interfaceOrientation];
  if (v29 == 2)
  {
    v34 = v4;
    v35 = v6;
    v36 = v8;
    v37 = v10;
    if (v26)
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
    if (v29 == 4)
    {
      if (v26)
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

    if (v29 == 3)
    {
      if (v26)
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

    if (v26)
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
  v40 = [(AXCameraFeatureDebuggingView *)self textInsideBox];
  v41 = -(v24 * 0.5);
  if (!v40)
  {
    v41 = v24 * 0.5;
  }

  v42 = MinX + v28 * v41;
  v43 = MaxY + v38 * v41;
  memset(&v49, 0, sizeof(v49));
  CGAffineTransformMakeRotation(&v49, v39);
  [v21 setCenter:{v42, v43}];
  [v21 setBounds:{v46, v45, v47, v24}];
  v48 = v49;
  [v21 setTransform:&v48];
LABEL_31:
}

@end