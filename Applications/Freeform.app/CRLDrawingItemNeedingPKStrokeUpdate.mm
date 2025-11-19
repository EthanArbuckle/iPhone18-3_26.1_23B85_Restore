@interface CRLDrawingItemNeedingPKStrokeUpdate
- (CRLDrawingItemNeedingPKStrokeUpdate)initWithID:(id)a3 shapeItems:(id)a4;
@end

@implementation CRLDrawingItemNeedingPKStrokeUpdate

- (CRLDrawingItemNeedingPKStrokeUpdate)initWithID:(id)a3 shapeItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CRLDrawingItemNeedingPKStrokeUpdate;
  v8 = [(CRLDrawingItemNeedingPKStrokeUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CRLDrawingItemNeedingPKStrokeUpdate *)v8 setId:v6];
    [(CRLDrawingItemNeedingPKStrokeUpdate *)v9 setShapeItems:v7];
  }

  return v9;
}

@end