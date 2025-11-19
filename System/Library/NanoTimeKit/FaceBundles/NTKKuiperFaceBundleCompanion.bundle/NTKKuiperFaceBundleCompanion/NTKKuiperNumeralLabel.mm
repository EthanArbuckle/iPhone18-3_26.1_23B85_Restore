@interface NTKKuiperNumeralLabel
- (NTKKuiperNumeralLabel)initWithDevice:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation NTKKuiperNumeralLabel

- (NTKKuiperNumeralLabel)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKKuiperNumeralLabel;
  v6 = [(NTKKuiperNumeralLabel *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    [(NTKKuiperNumeralLabel *)v7 setOpaque:0];
    [(NTKKuiperNumeralLabel *)v7 setClearsContextBeforeDrawing:1];
  }

  return v7;
}

- (void)drawRect:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = NTKKuiperNumeralLabel;
  [(NTKKuiperNumeralLabel *)&v23 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = self->_device;
  [(NTKKuiperNumeralLabel *)self bounds];
  v6 = v5;
  v8 = v7;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v10 = *&CGAffineTransformIdentity.c;
  *&v22.a = *&CGAffineTransformIdentity.a;
  *&v22.c = v10;
  *&v22.tx = *&CGAffineTransformIdentity.tx;
  CGContextSetTextMatrix(CurrentContext, &v22);
  CGContextTranslateCTM(CurrentContext, 0.0, v8);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextSetAllowsFontSubpixelPositioning(CurrentContext, 1);
  CGContextSetAllowsFontSubpixelQuantization(CurrentContext, 0);
  CGContextSetAllowsAntialiasing(CurrentContext, 1);
  CGContextSetAllowsFontSmoothing(CurrentContext, 1);
  CGContextSetShouldSubpixelPositionFonts(CurrentContext, 1);
  CGContextSetShouldSubpixelQuantizeFonts(CurrentContext, 0);
  CGContextSetShouldAntialias(CurrentContext, 1);
  CGContextSetShouldSmoothFonts(CurrentContext, 1);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_67B0;
  v21[3] = &unk_107A8;
  v21[4] = v6;
  *&v21[5] = v8;
  v21[6] = CurrentContext;
  v21[7] = sub_6A64(v11, v4);
  v12 = objc_retainBlock(v21);
  v13 = [(NTKKuiperNumeralLabel *)self text];
  v14 = v13;
  backgroundFont = self->_backgroundFont;
  if (backgroundFont)
  {
    backgroundTextColor = self->_backgroundTextColor;
    if (backgroundTextColor)
    {
      v17 = sub_6828(v13, backgroundFont, backgroundTextColor);
      (v12[2])(v12, v17);
    }
  }

  foregroundFont = self->_foregroundFont;
  if (foregroundFont)
  {
    foregroundTextColor = self->_foregroundTextColor;
    if (foregroundTextColor)
    {
      v20 = sub_6828(v14, foregroundFont, foregroundTextColor);
      (v12[2])(v12, v20);
    }
  }

  CGContextRestoreGState(CurrentContext);
}

@end