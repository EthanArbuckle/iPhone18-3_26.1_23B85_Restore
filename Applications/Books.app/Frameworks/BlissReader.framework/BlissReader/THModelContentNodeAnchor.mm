@interface THModelContentNodeAnchor
+ (id)contentNodeAnchorWithContentNode:(id)node;
@end

@implementation THModelContentNodeAnchor

+ (id)contentNodeAnchorWithContentNode:(id)node
{
  v3 = [(THModelBoundAnchor *)[THModelContentNodeAnchor alloc] initWithContentNode:node];

  return v3;
}

@end