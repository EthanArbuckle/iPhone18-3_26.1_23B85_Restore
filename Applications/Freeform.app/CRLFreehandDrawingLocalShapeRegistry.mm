@interface CRLFreehandDrawingLocalShapeRegistry
+ (id)sharedInstance;
- (BOOL)consumeLocallyDrawnShapeItemUUID:(id)d;
- (CRLFreehandDrawingLocalShapeRegistry)init;
- (void)registerLocallyDrawnShapeItem:(id)item;
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

- (void)registerLocallyDrawnShapeItem:(id)item
{
  itemCopy = item;
  os_unfair_lock_lock(&self->_localShapeUUIDLock);
  localShapeUUIDs = self->_localShapeUUIDs;
  v5 = [itemCopy id];
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

- (BOOL)consumeLocallyDrawnShapeItemUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_localShapeUUIDLock);
  v5 = [(NSMutableOrderedSet *)self->_localShapeUUIDs containsObject:dCopy];
  if (v5)
  {
    [(NSMutableOrderedSet *)self->_localShapeUUIDs removeObject:dCopy];
  }

  os_unfair_lock_unlock(&self->_localShapeUUIDLock);

  return v5;
}

@end