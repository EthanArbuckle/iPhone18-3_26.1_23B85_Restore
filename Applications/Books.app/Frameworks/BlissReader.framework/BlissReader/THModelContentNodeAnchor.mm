@interface THModelContentNodeAnchor
+ (id)contentNodeAnchorWithContentNode:(id)a3;
@end

@implementation THModelContentNodeAnchor

+ (id)contentNodeAnchorWithContentNode:(id)a3
{
  v3 = [(THModelBoundAnchor *)[THModelContentNodeAnchor alloc] initWithContentNode:a3];

  return v3;
}

@end