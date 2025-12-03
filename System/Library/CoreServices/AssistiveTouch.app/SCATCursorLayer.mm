@interface SCATCursorLayer
- (BOOL)usesHighVisibility;
- (SCATCursorLayer)init;
- (double)_opacityForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options;
- (id)_strokeColorForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options;
- (id)description;
- (void)_updatePresentationProperties:(int)properties;
- (void)ensureHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)updateLevel:(int64_t)level animated:(BOOL)animated options:(int)options;
- (void)updatePath:(id)path frame:(CGRect)frame cornerRadius:(double)radius isSimpleRect:(BOOL)rect animated:(BOOL)animated options:(int)options;
- (void)updateTheme:(int64_t)theme animated:(BOOL)animated options:(int)options;
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
  assistiveTouchScannerCursorHighVisibilityEnabled = [v2 assistiveTouchScannerCursorHighVisibilityEnabled];

  return assistiveTouchScannerCursorHighVisibilityEnabled;
}

- (void)ensureHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_ensureHidden != hidden)
  {
    self->_ensureHidden = hidden;
    if (animated)
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

- (void)updateTheme:(int64_t)theme animated:(BOOL)animated options:(int)options
{
  if (self->_theme != theme)
  {
    v5 = *&options;
    self->_theme = theme;
    if (animated)
    {

      [(SCATCursorLayer *)self _updatePresentationProperties:*&options];
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

- (void)updateLevel:(int64_t)level animated:(BOOL)animated options:(int)options
{
  if (self->_level != level)
  {
    v5 = *&options;
    self->_level = level;
    if (animated)
    {

      [(SCATCursorLayer *)self _updatePresentationProperties:*&options];
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

- (void)updatePath:(id)path frame:(CGRect)frame cornerRadius:(double)radius isSimpleRect:(BOOL)rect animated:(BOOL)animated options:(int)options
{
  v8 = *&options;
  rectCopy = rect;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pathCopy = path;
  [(SCATCursorLayer *)self setSimpleRect:rectCopy];
  if ((v8 & 2) != 0 || !animated)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
  }

  if (pathCopy)
  {
    [(SCATCursorLayer *)self setFrame:x, y, width, height];
    [(SCATCursorLayer *)self _updatePresentationProperties:v8];
    v16 = pathCopy;
    -[SCATCursorLayer setPath:](self, "setPath:", [pathCopy CGPath]);
    if (animated)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(SCATCursorLayer *)self _updatePresentationProperties:v8];
  if (!animated)
  {
LABEL_6:
    +[CATransaction commit];
  }

LABEL_7:
}

- (void)_updatePresentationProperties:(int)properties
{
  v3 = *&properties;
  theme = [(SCATCursorLayer *)self theme];
  level = [(SCATCursorLayer *)self level];
  usesHighVisibility = [(SCATCursorLayer *)self usesHighVisibility];
  if (level)
  {
    ensureHidden = self->_ensureHidden;
  }

  else
  {
    ensureHidden = 1;
  }

  [(SCATCursorLayer *)self setHidden:ensureHidden];
  v9 = [(SCATCursorLayer *)self _strokeColorForTheme:theme level:level highVisibility:usesHighVisibility options:v3];
  [(SCATCursorLayer *)self setRestingStrokeColor:v9];

  restingStrokeColor = [(SCATCursorLayer *)self restingStrokeColor];
  -[SCATCursorLayer setStrokeColor:](self, "setStrokeColor:", [restingStrokeColor CGColor]);

  v11 = [(SCATCursorLayer *)self _fillColorForTheme:theme level:level highVisibility:usesHighVisibility options:v3];
  [(SCATCursorLayer *)self setRestingFillColor:v11];

  restingFillColor = [(SCATCursorLayer *)self restingFillColor];
  -[SCATCursorLayer setFillColor:](self, "setFillColor:", [restingFillColor CGColor]);

  [(SCATCursorLayer *)self _boundsInsetForTheme:theme level:level highVisibility:usesHighVisibility options:v3];
  [(SCATCursorLayer *)self setBoundsInset:?];
  [(SCATCursorLayer *)self _borderWidthForTheme:theme level:level highVisibility:usesHighVisibility options:v3];
  [(SCATCursorLayer *)self setLineWidth:?];
  v13 = [(SCATCursorLayer *)self _borderPatternForTheme:theme level:level highVisibility:usesHighVisibility options:v3];
  [(SCATCursorLayer *)self setLineDashPattern:v13];

  [(SCATCursorLayer *)self _opacityForTheme:theme level:level highVisibility:usesHighVisibility options:v3];
  *&v14 = v14;

  [(SCATCursorLayer *)self setOpacity:v14];
}

- (id)_strokeColorForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options
{
  v6 = [AXSettings sharedInstance:theme];
  [v6 assistiveTouchCursorColor];

  v7 = AXSAssistiveTouchCursorColor();

  return [UIColor colorWithCGColor:v7];
}

- (double)_opacityForTheme:(int64_t)theme level:(int64_t)level highVisibility:(BOOL)visibility options:(int)options
{
  if (theme == 2)
  {
    v6 = [(SCATCursorLayer *)self styleProvider:theme];
    [v6 cursorContainerOpacity];
    v8 = v7;

    return v8;
  }

  else
  {
    result = 0.6;
    if (level != 2)
    {
      return 1.0;
    }
  }

  return result;
}

@end