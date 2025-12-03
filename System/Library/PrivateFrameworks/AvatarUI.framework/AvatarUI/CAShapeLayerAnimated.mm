@interface CAShapeLayerAnimated
- (id)actionForKey:(id)key;
@end

@implementation CAShapeLayerAnimated

- (id)actionForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"path"])
  {
    v5 = [MEMORY[0x1E6979318] animationWithKeyPath:keyCopy];

    [v5 setFromValue:{-[CAShapeLayerAnimated path](self, "path")}];
    [MEMORY[0x1E6979518] animationDuration];
    [v5 setDuration:?];
    keyCopy = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    [v5 setTimingFunction:keyCopy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CAShapeLayerAnimated;
    v5 = [(CAShapeLayerAnimated *)&v7 actionForKey:keyCopy];
  }

  return v5;
}

@end