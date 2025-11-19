@interface QLRoundProgressLayer
+ (BOOL)needsDisplayForKey:(id)a3;
- (QLRoundProgressLayer)initWithLayer:(id)a3;
@end

@implementation QLRoundProgressLayer

+ (BOOL)needsDisplayForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"progress"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___QLRoundProgressLayer;
    v5 = objc_msgSendSuper2(&v7, sel_needsDisplayForKey_, v4);
  }

  return v5;
}

- (QLRoundProgressLayer)initWithLayer:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = QLRoundProgressLayer;
  v5 = [(QLRoundProgressLayer *)&v8 initWithLayer:v4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 progress];
      [(QLRoundProgressLayer *)v5 setProgress:?];
    }

    v6 = v5;
  }

  return v5;
}

@end