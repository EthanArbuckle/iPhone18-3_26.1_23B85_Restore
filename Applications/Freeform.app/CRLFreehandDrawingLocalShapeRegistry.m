@interface CRLFreehandDrawingLocalShapeRegistry
+ (id)sharedInstance;
- (BOOL)consumeLocallyDrawnShapeItemUUID:(id)a3;
- (CRLFreehandDrawingLocalShapeRegistry)init;
- (void)registerLocallyDrawnShapeItem:(id)a3;
@end

@implementation CRLFreehandDrawingLocalShapeRegistry

+ (id)sharedInstance
{
  if (qword_101A348B0 != -1)
  {
    sub_1013389E8();
  }

  v3 = qword_101A348A8;

  return v3;
}

- (CRLFreehandDrawingLocalShapeRegistry)init
{
  v6.receiver = self;
  v6.super_class = CRLFreehandDrawingLocalShapeRegistry;
  v2 = [(CRLFreehandDrawingLocalShapeRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableOrderedSet);
    localShapeUUIDs = v2->_localShapeUUIDs;
    v2->_localShapeUUIDs = v3;

    v2->_localShapeUUIDLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return v2;
}

- (void)registerLocallyDrawnShapeItem:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_localShapeUUIDLock);
  localShapeUUIDs = self->_localShapeUUIDs;
  v5 = [v6 id];
  [(NSMutableOrderedSet *)localShapeUUIDs addObject:v5];

  if ([(NSMutableOrderedSet *)self->_localShapeUUIDs count]>= 0x33)
  {
    do
    {
      [(NSMutableOrderedSet *)self->_localShapeUUIDs removeObjectAtIndex:0];
    }

    while ([(NSMutableOrderedSet *)self->_localShapeUUIDs count]> 0x32);
  }

  os_unfair_lock_unlock(&self->_localShapeUUIDLock);
}

- (BOOL)consumeLocallyDrawnShapeItemUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_localShapeUUIDLock);
  v5 = [(NSMutableOrderedSet *)self->_localShapeUUIDs containsObject:v4];
  if (v5)
  {
    [(NSMutableOrderedSet *)self->_localShapeUUIDs removeObject:v4];
  }

  os_unfair_lock_unlock(&self->_localShapeUUIDLock);

  return v5;
}

@end