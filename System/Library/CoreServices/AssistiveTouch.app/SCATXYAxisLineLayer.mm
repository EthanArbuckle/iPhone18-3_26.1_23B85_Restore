@interface SCATXYAxisLineLayer
- (id)_backgroundColorForTheme:(int)theme;
- (id)_foregroundColorForTheme:(int)theme;
- (void)updateTheme:(int)theme animated:(BOOL)animated;
@end

@implementation SCATXYAxisLineLayer

- (void)updateTheme:(int)theme animated:(BOOL)animated
{
  v5 = *&theme;
  v17.receiver = self;
  v17.super_class = SCATXYAxisLineLayer;
  [SCATAxisLayer updateTheme:"updateTheme:animated:" animated:?];
  if (!animated)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
  }

  v7 = [(SCATXYAxisLineLayer *)self _foregroundColorForTheme:v5];
  -[SCATAxisLayer setBackgroundColor:](self, "setBackgroundColor:", [v7 CGColor]);

  v8 = [CAFilter filterWithType:kCAFilterPlusL];
  [(SCATXYAxisLineLayer *)self setCompositingFilter:v8];

  v9 = [(SCATXYAxisLineLayer *)self _backgroundColorForTheme:v5];
  cGColor = [v9 CGColor];
  foregroundLayer = [(SCATAxisLayer *)self foregroundLayer];
  [foregroundLayer setBackgroundColor:cGColor];

  foregroundLayer2 = [(SCATAxisLayer *)self foregroundLayer];
  v13 = kCAFilterPlusD;
  v14 = [CAFilter filterWithType:kCAFilterPlusD];
  [foregroundLayer2 setCompositingFilter:v14];

  compositingLayer = [(SCATAxisLayer *)self compositingLayer];
  v16 = [CAFilter filterWithType:v13];
  [compositingLayer setCompositingFilter:v16];

  if (!animated)
  {
    +[CATransaction commit];
  }
}

- (id)_backgroundColorForTheme:(int)theme
{
  if (theme)
  {
    v3 = +[AXSettings sharedInstance];
    [v3 assistiveTouchCursorColor];

    [UIColor colorWithCGColor:AXSAssistiveTouchCursorColor()];
  }

  else
  {
    +[UIColor clearColor];
  }
  v4 = ;

  return v4;
}

- (id)_foregroundColorForTheme:(int)theme
{
  if (theme)
  {
    v3 = +[AXSettings sharedInstance];
    [v3 assistiveTouchCursorColor];

    [UIColor colorWithCGColor:AXSAssistiveTouchCursorColor()];
  }

  else
  {
    +[UIColor clearColor];
  }
  v4 = ;

  return v4;
}

@end