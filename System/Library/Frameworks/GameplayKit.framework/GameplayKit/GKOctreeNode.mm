@interface GKOctreeNode
- (GKBox)box;
@end

@implementation GKOctreeNode

- (GKBox)box
{
  v3 = self->boxMin.i64[1];
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  return self;
}

@end