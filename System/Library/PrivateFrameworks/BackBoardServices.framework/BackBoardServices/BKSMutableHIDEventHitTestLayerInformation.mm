@interface BKSMutableHIDEventHitTestLayerInformation
- (void)setCumulativeContentsTransform:(CATransform3D *)transform;
- (void)setCumulativeLayerTransform:(CATransform3D *)transform;
@end

@implementation BKSMutableHIDEventHitTestLayerInformation

- (void)setCumulativeContentsTransform:(CATransform3D *)transform
{
  v3 = *&transform->m11;
  v4 = *&transform->m13;
  v5 = *&transform->m23;
  *&self->super._cumulativeContentsTransform.m21 = *&transform->m21;
  *&self->super._cumulativeContentsTransform.m23 = v5;
  *&self->super._cumulativeContentsTransform.m11 = v3;
  *&self->super._cumulativeContentsTransform.m13 = v4;
  v6 = *&transform->m31;
  v7 = *&transform->m33;
  v8 = *&transform->m43;
  *&self->super._cumulativeContentsTransform.m41 = *&transform->m41;
  *&self->super._cumulativeContentsTransform.m43 = v8;
  *&self->super._cumulativeContentsTransform.m31 = v6;
  *&self->super._cumulativeContentsTransform.m33 = v7;
}

- (void)setCumulativeLayerTransform:(CATransform3D *)transform
{
  v3 = *&transform->m11;
  v4 = *&transform->m13;
  v5 = *&transform->m23;
  *&self->super._cumulativeLayerTransform.m21 = *&transform->m21;
  *&self->super._cumulativeLayerTransform.m23 = v5;
  *&self->super._cumulativeLayerTransform.m11 = v3;
  *&self->super._cumulativeLayerTransform.m13 = v4;
  v6 = *&transform->m31;
  v7 = *&transform->m33;
  v8 = *&transform->m43;
  *&self->super._cumulativeLayerTransform.m41 = *&transform->m41;
  *&self->super._cumulativeLayerTransform.m43 = v8;
  *&self->super._cumulativeLayerTransform.m31 = v6;
  *&self->super._cumulativeLayerTransform.m33 = v7;
}

@end