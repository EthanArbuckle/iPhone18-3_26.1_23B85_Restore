@interface CRLCanvasContextMenuPlatformObject
+ (id)platformObjectWithInteraction:(id)a3;
- (CRLCanvasContextMenuPlatformObject)initWithInteraction:(id)a3;
@end

@implementation CRLCanvasContextMenuPlatformObject

+ (id)platformObjectWithInteraction:(id)a3
{
  v3 = a3;
  v4 = [[CRLCanvasContextMenuPlatformObject alloc] initWithInteraction:v3];

  return v4;
}

- (CRLCanvasContextMenuPlatformObject)initWithInteraction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRLCanvasContextMenuPlatformObject;
  v6 = [(CRLCanvasContextMenuPlatformObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interaction, a3);
  }

  return v7;
}

@end