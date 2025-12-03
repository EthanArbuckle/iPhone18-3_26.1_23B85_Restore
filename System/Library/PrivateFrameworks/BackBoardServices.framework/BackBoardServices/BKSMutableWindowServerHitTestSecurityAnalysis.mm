@interface BKSMutableWindowServerHitTestSecurityAnalysis
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCumulativeLayerTransform:(CATransform3D *)transform;
@end

@implementation BKSMutableWindowServerHitTestSecurityAnalysis

- (void)setCumulativeLayerTransform:(CATransform3D *)transform
{
  v3 = *&transform->m11;
  v4 = *&transform->m13;
  v5 = *&transform->m21;
  *&self->super._cumulativeLayerTransform.m23 = *&transform->m23;
  *&self->super._cumulativeLayerTransform.m21 = v5;
  *&self->super._cumulativeLayerTransform.m13 = v4;
  *&self->super._cumulativeLayerTransform.m11 = v3;
  v6 = *&transform->m31;
  v7 = *&transform->m33;
  v8 = *&transform->m41;
  *&self->super._cumulativeLayerTransform.m43 = *&transform->m43;
  *&self->super._cumulativeLayerTransform.m41 = v8;
  *&self->super._cumulativeLayerTransform.m33 = v7;
  *&self->super._cumulativeLayerTransform.m31 = v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSWindowServerHitTestSecurityAnalysis alloc];

  return [(BKSWindowServerHitTestSecurityAnalysis *)v4 _initWithCopyOf:?];
}

@end