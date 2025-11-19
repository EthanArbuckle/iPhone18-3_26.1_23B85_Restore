@interface SCATAxisLayer
+ (double)rangeLayerBorderWidth;
- (BOOL)isAnimatingForwards;
- (SCATAxisLayer)initWithAxis:(int)a3;
- (id)description;
- (void)setBackgroundColor:(CGColor *)a3;
- (void)setFrame:(CGRect)a3;
- (void)updateLayerTreePosition:(CGPoint)a3;
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

- (SCATAxisLayer)initWithAxis:(int)a3
{
  v3 = *&a3;
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
  v20 = [(SCATAxisLayer *)self presentationLayer];
  [v20 position];
  v13 = NSStringFromCGPoint(v25);
  v18 = [(SCATAxisLayer *)self animationKeys];
  v16 = [v18 description];
  v14 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  v4 = [(SCATAxisLayer *)self backgroundColor];
  v5 = [(SCATAxisLayer *)self borderColor];
  v6 = [(SCATAxisLayer *)self foregroundLayer];
  v7 = [(SCATAxisLayer *)self foregroundLayer];
  [v7 frame];
  v8 = NSStringFromCGRect(v26);
  v9 = [(SCATAxisLayer *)self foregroundLayer];
  v10 = [v9 backgroundColor];
  v11 = [(SCATAxisLayer *)self foregroundLayer];
  v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@<%p>. axis:%@ theme:%@ position:%@ presentationPosition:%@ animations:%@ bgColor:%@ borderColor:%@ (fg-layer:%p frame:%@ bgColor:%@ borderColor:%@)", v21, self, v19, v17, v15, v13, v14, v4, v5, v6, v8, v10, [v11 borderColor]);

  return v22;
}

- (void)updateLayerTreePosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v3 = [(SCATAxisLayer *)self animationKeys];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 rangeOfString:@"SCATRangeAnimationID"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v9, "rangeOfString:", @"SCATLineAnimationID") != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = [(SCATAxisLayer *)self animationForKey:v9];
          v7 = [v10 forwardDirection];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (void)setBackgroundColor:(CGColor *)a3
{
  v6.receiver = self;
  v6.super_class = SCATAxisLayer;
  [(SCATAxisLayer *)&v6 setBackgroundColor:?];
  v5 = [(SCATAxisLayer *)self compositingLayer];
  [v5 setBackgroundColor:a3];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = SCATAxisLayer;
  [(SCATAxisLayer *)&v8 setFrame:a3.origin.x, a3.origin.y];
  y = CGPointZero.y;
  v7 = [(SCATAxisLayer *)self compositingLayer];
  [v7 setFrame:{CGPointZero.x, y, width, height}];
}

@end