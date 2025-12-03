@interface CRLDrawingItemNeedingPKStrokeUpdate
- (CRLDrawingItemNeedingPKStrokeUpdate)initWithID:(id)d shapeItems:(id)items;
@end

@implementation CRLDrawingItemNeedingPKStrokeUpdate

- (CRLDrawingItemNeedingPKStrokeUpdate)initWithID:(id)d shapeItems:(id)items
{
  dCopy = d;
  itemsCopy = items;
  v11.receiver = self;
  v11.super_class = CRLDrawingItemNeedingPKStrokeUpdate;
  v8 = [(CRLDrawingItemNeedingPKStrokeUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CRLDrawingItemNeedingPKStrokeUpdate *)v8 setId:dCopy];
    [(CRLDrawingItemNeedingPKStrokeUpdate *)v9 setShapeItems:itemsCopy];
  }

  return v9;
}

@end