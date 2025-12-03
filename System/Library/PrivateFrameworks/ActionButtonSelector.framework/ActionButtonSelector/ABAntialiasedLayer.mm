@interface ABAntialiasedLayer
- (ABAntialiasedLayer)init;
- (ABAntialiasedLayer)initWithLayer:(id)layer;
- (void)setAllowsEdgeAntialiasing:(BOOL)antialiasing;
@end

@implementation ABAntialiasedLayer

- (ABAntialiasedLayer)init
{
  v5.receiver = self;
  v5.super_class = ABAntialiasedLayer;
  v2 = [(ABAntialiasedLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ABAntialiasedLayer *)v2 setAllowsEdgeAntialiasing:1];
  }

  return v3;
}

- (ABAntialiasedLayer)initWithLayer:(id)layer
{
  v6.receiver = self;
  v6.super_class = ABAntialiasedLayer;
  v3 = [(ABAntialiasedLayer *)&v6 initWithLayer:layer];
  v4 = v3;
  if (v3)
  {
    [(ABAntialiasedLayer *)v3 setAllowsEdgeAntialiasing:1];
  }

  return v4;
}

- (void)setAllowsEdgeAntialiasing:(BOOL)antialiasing
{
  v3.receiver = self;
  v3.super_class = ABAntialiasedLayer;
  [(ABAntialiasedLayer *)&v3 setAllowsEdgeAntialiasing:1];
}

@end