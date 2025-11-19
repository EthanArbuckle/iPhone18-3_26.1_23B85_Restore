@interface BKSMutableWindowServerHitTestSecurityAnalysis
- (id)copyWithZone:(_NSZone *)a3;
- (void)setCumulativeLayerTransform:(CATransform3D *)a3;
@end

@implementation BKSMutableWindowServerHitTestSecurityAnalysis

- (void)setCumulativeLayerTransform:(CATransform3D *)a3
{
  v3 = *&a3->m11;
  v4 = *&a3->m13;
  v5 = *&a3->m21;
  *&self->super._cumulativeLayerTransform.m23 = *&a3->m23;
  *&self->super._cumulativeLayerTransform.m21 = v5;
  *&self->super._cumulativeLayerTransform.m13 = v4;
  *&self->super._cumulativeLayerTransform.m11 = v3;
  v6 = *&a3->m31;
  v7 = *&a3->m33;
  v8 = *&a3->m41;
  *&self->super._cumulativeLayerTransform.m43 = *&a3->m43;
  *&self->super._cumulativeLayerTransform.m41 = v8;
  *&self->super._cumulativeLayerTransform.m33 = v7;
  *&self->super._cumulativeLayerTransform.m31 = v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BKSWindowServerHitTestSecurityAnalysis alloc];

  return [(BKSWindowServerHitTestSecurityAnalysis *)v4 _initWithCopyOf:?];
}

@end