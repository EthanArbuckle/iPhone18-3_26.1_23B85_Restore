@interface CRLShapeItemNeedingPKStrokeUpdate
- (CGAffineTransform)transformInRoot;
- (CRLShapeItemNeedingPKStrokeUpdate)initWithID:(id)a3 strokeTransformInfoUUID:(id)a4 transformInRoot:(CGAffineTransform *)a5 pencilKitStrokesInRootSpace:(id)a6;
- (void)setTransformInRoot:(CGAffineTransform *)a3;
@end

@implementation CRLShapeItemNeedingPKStrokeUpdate

- (CRLShapeItemNeedingPKStrokeUpdate)initWithID:(id)a3 strokeTransformInfoUUID:(id)a4 transformInRoot:(CGAffineTransform *)a5 pencilKitStrokesInRootSpace:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = CRLShapeItemNeedingPKStrokeUpdate;
  v13 = [(CRLShapeItemNeedingPKStrokeUpdate *)&v18 init];
  v14 = v13;
  if (v13)
  {
    [(CRLShapeItemNeedingPKStrokeUpdate *)v13 setId:v10];
    [(CRLShapeItemNeedingPKStrokeUpdate *)v14 setStrokeTransformInfoUUID:v11];
    v15 = *&a5->c;
    v17[0] = *&a5->a;
    v17[1] = v15;
    v17[2] = *&a5->tx;
    [(CRLShapeItemNeedingPKStrokeUpdate *)v14 setTransformInRoot:v17];
    [(CRLShapeItemNeedingPKStrokeUpdate *)v14 setPencilKitStrokesInRootSpace:v12];
  }

  return v14;
}

- (CGAffineTransform)transformInRoot
{
  v3 = *&self[1].a;
  *&retstr->a = *&self->tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].c;
  return self;
}

- (void)setTransformInRoot:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_transformInRoot.c = *&a3->c;
  *&self->_transformInRoot.tx = v4;
  *&self->_transformInRoot.a = v3;
}

@end