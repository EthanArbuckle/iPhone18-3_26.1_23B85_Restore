@interface SCATAxisLayer
+ (double)rangeLayerBorderWidth;
- (BOOL)isAnimatingForwards;
- (SCATAxisLayer)initWithAxis:(int)axis;
- (id)description;
- (void)setBackgroundColor:(CGColor *)color;
- (void)setFrame:(CGRect)frame;
- (void)updateLayerTreePosition:(CGPoint)position;
@end

@implementation SCATAxisLayer

+ (double)rangeLayerBorderWidth
{
  v2 = +[AXSettings sharedInstance];
  if ([v2 assistiveTouchScannerCursorHighVisibilityEnabled])
  {
    v3 = 4.0;
  }

  else
  {
    v3 = 2.0;
  }

  return v3;
}

- (SCATAxisLayer)initWithAxis:(int)axis
{
  v3 = *&axis;
  v9.receiver = self;
  v9.super_class = SCATAxisLayer;
  v4 = [(SCATAxisLayer *)&v9 init];
  v5 = v4;
  if (v4)
  {
    [(SCATAxisLayer *)v4 setAxis:v3];
    v6 = +[CALayer layer];
    [(SCATAxisLayer *)v5 addSublayer:v6];
    [(SCATAxisLayer *)v5 setForegroundLayer:v6];
    v7 = +[CALayer layer];
    [(SCATAxisLayer *)v5 setCompositingLayer:v7];
    [(SCATAxisLayer *)v5 addSublayer:v7];
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v21 = NSStringFromClass(v3);
  v19 = [NSNumber numberWithUnsignedInt:[(SCATAxisLayer *)self axis]];
  v17 = [NSNumber numberWithUnsignedInt:[(SCATAxisLayer *)self theme]];
  [(SCATAxisLayer *)self position];
  v15 = NSStringFromCGPoint(v24);
  presentationLayer = [(SCATAxisLayer *)self presentationLayer];
  [presentationLayer position];
  v13 = NSStringFromCGPoint(v25);
  animationKeys = [(SCATAxisLayer *)self animationKeys];
  v16 = [animationKeys description];
  v14 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  backgroundColor = [(SCATAxisLayer *)self backgroundColor];
  borderColor = [(SCATAxisLayer *)self borderColor];
  foregroundLayer = [(SCATAxisLayer *)self foregroundLayer];
  foregroundLayer2 = [(SCATAxisLayer *)self foregroundLayer];
  [foregroundLayer2 frame];
  v8 = NSStringFromCGRect(v26);
  foregroundLayer3 = [(SCATAxisLayer *)self foregroundLayer];
  backgroundColor2 = [foregroundLayer3 backgroundColor];
  foregroundLayer4 = [(SCATAxisLayer *)self foregroundLayer];
  v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@<%p>. axis:%@ theme:%@ position:%@ presentationPosition:%@ animations:%@ bgColor:%@ borderColor:%@ (fg-layer:%p frame:%@ bgColor:%@ borderColor:%@)", v21, self, v19, v17, v15, v13, v14, backgroundColor, borderColor, foregroundLayer, v8, backgroundColor2, [foregroundLayer4 borderColor]);

  return v22;
}

- (void)updateLayerTreePosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(SCATAxisLayer *)self setPosition:x, y];

  +[CATransaction commit];
}

- (BOOL)isAnimatingForwards
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  animationKeys = [(SCATAxisLayer *)self animationKeys];
  v4 = [animationKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    forwardDirection = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(animationKeys);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 rangeOfString:@"SCATRangeAnimationID"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v9, "rangeOfString:", @"SCATLineAnimationID") != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = [(SCATAxisLayer *)self animationForKey:v9];
          forwardDirection = [v10 forwardDirection];
        }
      }

      v5 = [animationKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    forwardDirection = 1;
  }

  return forwardDirection & 1;
}

- (void)setBackgroundColor:(CGColor *)color
{
  v6.receiver = self;
  v6.super_class = SCATAxisLayer;
  [(SCATAxisLayer *)&v6 setBackgroundColor:?];
  compositingLayer = [(SCATAxisLayer *)self compositingLayer];
  [compositingLayer setBackgroundColor:color];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v8.receiver = self;
  v8.super_class = SCATAxisLayer;
  [(SCATAxisLayer *)&v8 setFrame:frame.origin.x, frame.origin.y];
  y = CGPointZero.y;
  compositingLayer = [(SCATAxisLayer *)self compositingLayer];
  [compositingLayer setFrame:{CGPointZero.x, y, width, height}];
}

@end