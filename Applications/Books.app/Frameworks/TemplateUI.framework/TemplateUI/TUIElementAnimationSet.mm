@interface TUIElementAnimationSet
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementAnimationSet

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  builderCopy = builder;
  attributesCopy = attributes;
  var0 = node.var0;
  v11 = [attributesCopy stringForAttribute:137 node:node.var0];
  v12 = [TUIAttributeRegistry lookupAttributeWithName:v11];
  if (v12 == 8)
  {
    [attributesCopy floatForAttribute:217 node:var0];
    v14 = [NSNumber numberWithDouble:?];
LABEL_10:
    v13 = v14;
    if (v14)
    {
      [builderCopy addAnimationValue:v14 forAttributeName:v11];
    }

    goto LABEL_12;
  }

  if (v12 == 210)
  {
    if (attributesCopy)
    {
      [attributesCopy transformForAttribute:217 node:var0];
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