@interface PHSublayerResizingLayer
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)setFrame:(CGRect)a3;
@end

@implementation PHSublayerResizingLayer

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v9.receiver = self;
  v9.super_class = PHSublayerResizingLayer;
  [(PHSublayerResizingLayer *)&v9 setFrame:a3.origin.x, a3.origin.y];
  y = CGPointZero.y;
  v7 = [(PHSublayerResizingLayer *)self sublayers];
  v8 = [v7 firstObject];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [v8 setFrame:{CGPointZero.x, y, width, height}];
  +[CATransaction commit];
}

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [(PHSublayerResizingLayer *)self sublayers];
    v10 = [v9 firstObject];

    v11 = [v8 copy];
    [v11 setDelegate:0];
    v12 = [v11 keyPath];
    v13 = [v12 isEqualToString:@"bounds.size"];

    if (v13)
    {
      v14 = [v11 fromValue];
      [v14 sizeValue];
      v16 = v15;
      v18 = v17;

      v19 = [v11 toValue];
      [v19 sizeValue];
      v21 = v20;
      v23 = v22;

      v24 = [NSValue valueWithSize:v18, v16];
      v25 = [NSValue valueWithSize:v23, v21];
      [v11 setFromValue:v24];
      [v11 setToValue:v25];
    }

    [v10 addAnimation:v11 forKey:v7];
  }

  v26.receiver = self;
  v26.super_class = PHSublayerResizingLayer;
  [(PHSublayerResizingLayer *)&v26 addAnimation:v6 forKey:v7];
}

@end