@interface CRLShapeItemNeedingPKStrokeUpdate
- (CGAffineTransform)transformInRoot;
- (CRLShapeItemNeedingPKStrokeUpdate)initWithID:(id)d strokeTransformInfoUUID:(id)iD transformInRoot:(CGAffineTransform *)root pencilKitStrokesInRootSpace:(id)space;
- (void)setTransformInRoot:(CGAffineTransform *)root;
@end

@implementation CRLShapeItemNeedingPKStrokeUpdate

- (CRLShapeItemNeedingPKStrokeUpdate)initWithID:(id)d strokeTransformInfoUUID:(id)iD transformInRoot:(CGAffineTransform *)root pencilKitStrokesInRootSpace:(id)space
{
  dCopy = d;
  iDCopy = iD;
  spaceCopy = space;
  v18.receiver = self;
  v18.super_class = CRLShapeItemNeedingPKStrokeUpdate;
  v13 = [(CRLShapeItemNeedingPKStrokeUpdate *)&v18 init];
  v14 = v13;
  if (v13)
  {
    [(CRLShapeItemNeedingPKStrokeUpdate *)v13 setId:dCopy];
    [(CRLShapeItemNeedingPKStrokeUpdate *)v14 setStrokeTransformInfoUUID:iDCopy];
    v15 = *&root->c;
    v17[0] = *&root->a;
    v17[1] = v15;
    v17[2] = *&root->tx;
    [(CRLShapeItemNeedingPKStrokeUpdate *)v14 setTransformInRoot:v17];
    [(CRLShapeItemNeedingPKStrokeUpdate *)v14 setPencilKitStrokesInRootSpace:spaceCopy];
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

- (void)setTransformInRoot:(CGAffineTransform *)root
{
  v3 = *&root->a;
  v4 = *&root->tx;
  *&self->_transformInRoot.c = *&root->c;
  *&self->_transformInRoot.tx = v4;
  *&self->_transformInRoot.a = v3;
}

@end