@interface QLRoundProgressLayer
+ (BOOL)needsDisplayForKey:(id)key;
- (QLRoundProgressLayer)initWithLayer:(id)layer;
@end

@implementation QLRoundProgressLayer

+ (BOOL)needsDisplayForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"progress"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___QLRoundProgressLayer;
    v5 = objc_msgSendSuper2(&v7, sel_needsDisplayForKey_, keyCopy);
  }

  return v5;
}

- (QLRoundProgressLayer)initWithLayer:(id)layer
{
  layerCopy = layer;
  v8.receiver = self;
  v8.super_class = QLRoundProgressLayer;
  v5 = [(QLRoundProgressLayer *)&v8 initWithLayer:layerCopy];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [layerCopy progress];
      [(QLRoundProgressLayer *)v5 setProgress:?];
    }

    v6 = v5;
  }

  return v5;
}

@end