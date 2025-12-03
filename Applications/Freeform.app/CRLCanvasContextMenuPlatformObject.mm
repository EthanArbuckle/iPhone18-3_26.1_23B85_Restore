@interface CRLCanvasContextMenuPlatformObject
+ (id)platformObjectWithInteraction:(id)interaction;
- (CRLCanvasContextMenuPlatformObject)initWithInteraction:(id)interaction;
@end

@implementation CRLCanvasContextMenuPlatformObject

+ (id)platformObjectWithInteraction:(id)interaction
{
  interactionCopy = interaction;
  v4 = [[CRLCanvasContextMenuPlatformObject alloc] initWithInteraction:interactionCopy];

  return v4;
}

- (CRLCanvasContextMenuPlatformObject)initWithInteraction:(id)interaction
{
  interactionCopy = interaction;
  v9.receiver = self;
  v9.super_class = CRLCanvasContextMenuPlatformObject;
  v6 = [(CRLCanvasContextMenuPlatformObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interaction, interaction);
  }

  return v7;
}

@end