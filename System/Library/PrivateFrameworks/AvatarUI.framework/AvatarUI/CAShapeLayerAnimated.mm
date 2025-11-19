@interface CAShapeLayerAnimated
- (id)actionForKey:(id)a3;
@end

@implementation CAShapeLayerAnimated

- (id)actionForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"path"])
  {
    v5 = [MEMORY[0x1E6979318] animationWithKeyPath:v4];

    [v5 setFromValue:{-[CAShapeLayerAnimated path](self, "path")}];
    [MEMORY[0x1E6979518] animationDuration];
    [v5 setDuration:?];
    v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    [v5 setTimingFunction:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CAShapeLayerAnimated;
    v5 = [(CAShapeLayerAnimated *)&v7 actionForKey:v4];
  }

  return v5;
}

@end