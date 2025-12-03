@interface PHSublayerResizingLayer
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)setFrame:(CGRect)frame;
@end

@implementation PHSublayerResizingLayer

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v9.receiver = self;
  v9.super_class = PHSublayerResizingLayer;
  [(PHSublayerResizingLayer *)&v9 setFrame:frame.origin.x, frame.origin.y];
  y = CGPointZero.y;
  sublayers = [(PHSublayerResizingLayer *)self sublayers];
  firstObject = [sublayers firstObject];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [firstObject setFrame:{CGPointZero.x, y, width, height}];
  +[CATransaction commit];
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  animationCopy = animation;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = animationCopy;
    sublayers = [(PHSublayerResizingLayer *)self sublayers];
    firstObject = [sublayers firstObject];

    v11 = [v8 copy];
    [v11 setDelegate:0];
    keyPath = [v11 keyPath];
    v13 = [keyPath isEqualToString:@"bounds.size"];

    if (v13)
    {
      fromValue = [v11 fromValue];
      [fromValue sizeValue];
      v16 = v15;
      v18 = v17;

      toValue = [v11 toValue];
      [toValue sizeValue];
      v21 = v20;
      v23 = v22;

      v24 = [NSValue valueWithSize:v18, v16];
      v25 = [NSValue valueWithSize:v23, v21];
      [v11 setFromValue:v24];
      [v11 setToValue:v25];
    }

    [firstObject addAnimation:v11 forKey:keyCopy];
  }

  v26.receiver = self;
  v26.super_class = PHSublayerResizingLayer;
  [(PHSublayerResizingLayer *)&v26 addAnimation:animationCopy forKey:keyCopy];
}

@end