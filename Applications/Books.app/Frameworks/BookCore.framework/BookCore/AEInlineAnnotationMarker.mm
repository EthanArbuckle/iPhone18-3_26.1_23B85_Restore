@interface AEInlineAnnotationMarker
- (AEInlineAnnotationMarker)initWithAnnotationStyle:(int)style pageTheme:(int64_t)theme contentScale:(double)scale;
- (CGSize)markerSize;
- (void)renderIn:(CGContext *)in;
@end

@implementation AEInlineAnnotationMarker

- (AEInlineAnnotationMarker)initWithAnnotationStyle:(int)style pageTheme:(int64_t)theme contentScale:(double)scale
{
  v9.receiver = self;
  v9.super_class = AEInlineAnnotationMarker;
  result = [(AEInlineAnnotationMarker *)&v9 init];
  if (result)
  {
    result->_style = style;
    result->_markerSize = vdupq_n_s64(0x4040000000000000uLL);
    result->_pageTheme = theme;
    result->_contentScale = scale;
  }

  return result;
}

- (void)renderIn:(CGContext *)in
{
  v23 = objc_opt_new();
  pageTheme = self->_pageTheme;
  v6 = [AEAnnotationTheme themeForAnnotationStyle:"themeForAnnotationStyle:pageTheme:isUnderline:" pageTheme:? isUnderline:?];
  if (v6)
  {
    v7 = pageTheme < 0xB;
    v8 = 0x7E3u >> pageTheme;
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [v23 setBounds:{0.0, 0.0, self->_markerSize.width, self->_markerSize.height}];
    Mutable = CGPathCreateMutable();
    CGRectMakeWithSize();
    v26 = CGRectInset(v25, 5.0, 5.0);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    CGPathAddEllipseInRect(Mutable, 0, v26);
    [v23 setPath:Mutable];
    [v23 setShadowPath:Mutable];
    [v23 setShadowOffset:{0.0, self->_contentScale * 0.5}];
    LODWORD(v14) = 1041865114;
    [v23 setShadowOpacity:v14];
    [v23 setShadowRadius:self->_contentScale * 1.5];
    CGPathRelease(Mutable);
    noteMarkerFillColor = [v6 noteMarkerFillColor];
    v16 = [noteMarkerFillColor bkaxAdjustedForIncreaseContrastAdjustingDarker:v7 & v8];
    [v23 setFillColor:{objc_msgSend(v16, "CGColor")}];

    v17 = +[UIColor whiteColor];
    v18 = [v17 bkaxAdjustedForIncreaseContrastAdjustingDarker:v7 & v8];
    cGColor = [v18 CGColor];

    [v23 setStrokeColor:cGColor];
    [v23 setLineWidth:2.0];
    LODWORD(v20) = 1063675494;
    [v23 setOpacity:v20];
    v21 = objc_opt_new();
    v22 = CGPathCreateMutable();
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v28 = CGRectInset(v27, 7.0, 7.0);
    CGPathAddRoundedRect(v22, 0, v28, 1.0, 1.0);
    [v21 setPath:v22];
    CGPathRelease(v22);
    [v23 addSublayer:v21];
    [v21 setFillColor:cGColor];
    +[CATransaction commit];
  }

  [v23 renderInContext:in];
}

- (CGSize)markerSize
{
  width = self->_markerSize.width;
  height = self->_markerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end