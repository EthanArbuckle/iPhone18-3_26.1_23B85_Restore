@interface SCATCursorLayer
- (BOOL)usesHighVisibility;
- (SCATCursorLayer)init;
- (double)_opacityForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6;
- (id)_strokeColorForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6;
- (id)description;
- (void)_updatePresentationProperties:(int)a3;
- (void)ensureHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)updateLevel:(int64_t)a3 animated:(BOOL)a4 options:(int)a5;
- (void)updatePath:(id)a3 frame:(CGRect)a4 cornerRadius:(double)a5 isSimpleRect:(BOOL)a6 animated:(BOOL)a7 options:(int)a8;
- (void)updateTheme:(int64_t)a3 animated:(BOOL)a4 options:(int)a5;
@end

@implementation SCATCursorLayer

- (SCATCursorLayer)init
{
  v5.receiver = self;
  v5.super_class = SCATCursorLayer;
  v2 = [(SCATCursorLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SCATCursorLayer *)v2 setLevel:0];
    [(SCATCursorLayer *)v3 setTheme:0];
    [(SCATCursorLayer *)v3 setOpaque:0];
    [(SCATCursorLayer *)v3 _updatePresentationProperties:0];
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSNumber numberWithBool:self->_ensureHidden];
  v6 = [NSNumber numberWithInteger:[(SCATCursorLayer *)self theme]];
  v7 = [NSNumber numberWithInteger:[(SCATCursorLayer *)self level]];
  v8 = [NSNumber numberWithBool:[(SCATCursorLayer *)self usesHighVisibility]];
  v9 = [NSNumber numberWithBool:[(SCATCursorLayer *)self isHidden]];
  v13.receiver = self;
  v13.super_class = SCATCursorLayer;
  v10 = [(SCATCursorLayer *)&v13 debugDescription];
  v11 = [NSString stringWithFormat:@"%@<%p>. ensureHidden:%@ theme:%@ level:%@ highViz:%@. hidden:%@ %@", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BOOL)usesHighVisibility
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchScannerCursorHighVisibilityEnabled];

  return v3;
}

- (void)ensureHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_ensureHidden != a3)
  {
    self->_ensureHidden = a3;
    if (a4)
    {

      [(SCATCursorLayer *)self _updatePresentationProperties:0];
    }

    else
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [(SCATCursorLayer *)self _updatePresentationProperties:0];

      +[CATransaction commit];
    }
  }
}

- (void)updateTheme:(int64_t)a3 animated:(BOOL)a4 options:(int)a5
{
  if (self->_theme != a3)
  {
    v5 = *&a5;
    self->_theme = a3;
    if (a4)
    {

      [(SCATCursorLayer *)self _updatePresentationProperties:*&a5];
    }

    else
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [(SCATCursorLayer *)self _updatePresentationProperties:v5];

      +[CATransaction commit];
    }
  }
}

- (void)updateLevel:(int64_t)a3 animated:(BOOL)a4 options:(int)a5
{
  if (self->_level != a3)
  {
    v5 = *&a5;
    self->_level = a3;
    if (a4)
    {

      [(SCATCursorLayer *)self _updatePresentationProperties:*&a5];
    }

    else
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [(SCATCursorLayer *)self _updatePresentationProperties:v5];

      +[CATransaction commit];
    }
  }
}

- (void)updatePath:(id)a3 frame:(CGRect)a4 cornerRadius:(double)a5 isSimpleRect:(BOOL)a6 animated:(BOOL)a7 options:(int)a8
{
  v8 = *&a8;
  v10 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a3;
  [(SCATCursorLayer *)self setSimpleRect:v10];
  if ((v8 & 2) != 0 || !a7)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
  }

  if (v17)
  {
    [(SCATCursorLayer *)self setFrame:x, y, width, height];
    [(SCATCursorLayer *)self _updatePresentationProperties:v8];
    v16 = v17;
    -[SCATCursorLayer setPath:](self, "setPath:", [v17 CGPath]);
    if (a7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(SCATCursorLayer *)self _updatePresentationProperties:v8];
  if (!a7)
  {
LABEL_6:
    +[CATransaction commit];
  }

LABEL_7:
}

- (void)_updatePresentationProperties:(int)a3
{
  v3 = *&a3;
  v5 = [(SCATCursorLayer *)self theme];
  v6 = [(SCATCursorLayer *)self level];
  v7 = [(SCATCursorLayer *)self usesHighVisibility];
  if (v6)
  {
    ensureHidden = self->_ensureHidden;
  }

  else
  {
    ensureHidden = 1;
  }

  [(SCATCursorLayer *)self setHidden:ensureHidden];
  v9 = [(SCATCursorLayer *)self _strokeColorForTheme:v5 level:v6 highVisibility:v7 options:v3];
  [(SCATCursorLayer *)self setRestingStrokeColor:v9];

  v10 = [(SCATCursorLayer *)self restingStrokeColor];
  -[SCATCursorLayer setStrokeColor:](self, "setStrokeColor:", [v10 CGColor]);

  v11 = [(SCATCursorLayer *)self _fillColorForTheme:v5 level:v6 highVisibility:v7 options:v3];
  [(SCATCursorLayer *)self setRestingFillColor:v11];

  v12 = [(SCATCursorLayer *)self restingFillColor];
  -[SCATCursorLayer setFillColor:](self, "setFillColor:", [v12 CGColor]);

  [(SCATCursorLayer *)self _boundsInsetForTheme:v5 level:v6 highVisibility:v7 options:v3];
  [(SCATCursorLayer *)self setBoundsInset:?];
  [(SCATCursorLayer *)self _borderWidthForTheme:v5 level:v6 highVisibility:v7 options:v3];
  [(SCATCursorLayer *)self setLineWidth:?];
  v13 = [(SCATCursorLayer *)self _borderPatternForTheme:v5 level:v6 highVisibility:v7 options:v3];
  [(SCATCursorLayer *)self setLineDashPattern:v13];

  [(SCATCursorLayer *)self _opacityForTheme:v5 level:v6 highVisibility:v7 options:v3];
  *&v14 = v14;

  [(SCATCursorLayer *)self setOpacity:v14];
}

- (id)_strokeColorForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6
{
  v6 = [AXSettings sharedInstance:a3];
  [v6 assistiveTouchCursorColor];

  v7 = AXSAssistiveTouchCursorColor();

  return [UIColor colorWithCGColor:v7];
}

- (double)_opacityForTheme:(int64_t)a3 level:(int64_t)a4 highVisibility:(BOOL)a5 options:(int)a6
{
  if (a3 == 2)
  {
    v6 = [(SCATCursorLayer *)self styleProvider:a3];
    [v6 cursorContainerOpacity];
    v8 = v7;

    return v8;
  }

  else
  {
    result = 0.6;
    if (a4 != 2)
    {
      return 1.0;
    }
  }

  return result;
}

@end