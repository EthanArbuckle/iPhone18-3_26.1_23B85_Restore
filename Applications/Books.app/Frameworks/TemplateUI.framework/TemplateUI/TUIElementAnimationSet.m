@interface TUIElementAnimationSet
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementAnimationSet

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v8 = a3;
  v9 = a5;
  var0 = a4.var0;
  v11 = [v9 stringForAttribute:137 node:a4.var0];
  v12 = [TUIAttributeRegistry lookupAttributeWithName:v11];
  if (v12 == 8)
  {
    [v9 floatForAttribute:217 node:var0];
    v14 = [NSNumber numberWithDouble:?];
LABEL_10:
    v13 = v14;
    if (v14)
    {
      [v8 addAnimationValue:v14 forAttributeName:v11];
    }

    goto LABEL_12;
  }

  if (v12 == 210)
  {
    if (v9)
    {
      [v9 transformForAttribute:217 node:var0];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    v14 = [NSValue valueWithCGAffineTransform:v15];
    goto LABEL_10;
  }

  if (v12 != 0xFFFF)
  {
    v13 = 0;
LABEL_12:
  }
}

@end