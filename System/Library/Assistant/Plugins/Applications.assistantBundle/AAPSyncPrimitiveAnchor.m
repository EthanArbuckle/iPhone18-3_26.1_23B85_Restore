@interface AAPSyncPrimitiveAnchor
+ (id)anchorFromIndex:(unint64_t)a3;
- (AAPSyncPrimitiveAnchor)anchorWithSubIndex:(unint64_t)a3;
@end

@implementation AAPSyncPrimitiveAnchor

+ (id)anchorFromIndex:(unint64_t)a3
{
  v3 = [[a1 alloc] _initWithMainIndex:a3 subIndex:0];

  return v3;
}

- (AAPSyncPrimitiveAnchor)anchorWithSubIndex:(unint64_t)a3
{
  if (a3)
  {
    v3 = [[AAPSyncAnchor alloc] _initWithMainIndex:self->super._mainIndex subIndex:a3];

    return v3;
  }

  else
  {

    return [(AAPSyncAnchor *)self primitiveAnchor];
  }
}

@end