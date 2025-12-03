@interface AAPSyncPrimitiveAnchor
+ (id)anchorFromIndex:(unint64_t)index;
- (AAPSyncPrimitiveAnchor)anchorWithSubIndex:(unint64_t)index;
@end

@implementation AAPSyncPrimitiveAnchor

+ (id)anchorFromIndex:(unint64_t)index
{
  v3 = [[self alloc] _initWithMainIndex:index subIndex:0];

  return v3;
}

- (AAPSyncPrimitiveAnchor)anchorWithSubIndex:(unint64_t)index
{
  if (index)
  {
    v3 = [[AAPSyncAnchor alloc] _initWithMainIndex:self->super._mainIndex subIndex:index];

    return v3;
  }

  else
  {

    return [(AAPSyncAnchor *)self primitiveAnchor];
  }
}

@end