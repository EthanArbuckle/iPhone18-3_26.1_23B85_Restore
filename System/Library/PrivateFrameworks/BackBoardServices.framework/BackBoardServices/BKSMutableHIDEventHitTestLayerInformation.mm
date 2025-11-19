@interface BKSMutableHIDEventHitTestLayerInformation
- (void)setCumulativeContentsTransform:(CATransform3D *)a3;
- (void)setCumulativeLayerTransform:(CATransform3D *)a3;
@end

@implementation BKSMutableHIDEventHitTestLayerInformation

- (void)setCumulativeContentsTransform:(CATransform3D *)a3
{
  v3 = *&a3->m11;
  v4 = *&a3->m13;
  v5 = *&a3->m23;
  *&self->super._cumulativeContentsTransform.m21 = *&a3->m21;
  *&self->super._cumulativeContentsTransform.m23 = v5;
  *&self->super._cumulativeContentsTransform.m11 = v3;
  *&self->super._cumulativeContentsTransform.m13 = v4;
  v6 = *&a3->m31;
  v7 = *&a3->m33;
  v8 = *&a3->m43;
  *&self->super._cumulativeContentsTransform.m41 = *&a3->m41;
  *&self->super._cumulativeContentsTransform.m43 = v8;
  *&self->super._cumulativeContentsTransform.m31 = v6;
  *&self->super._cumulativeContentsTransform.m33 = v7;
}

- (void)setCumulativeLayerTransform:(CATransform3D *)a3
{
  v3 = *&a3->m11;
  v4 = *&a3->m13;
  v5 = *&a3->m23;
  *&self->super._cumulativeLayerTransform.m21 = *&a3->m21;
  *&self->super._cumulativeLayerTransform.m23 = v5;
  *&self->super._cumulativeLayerTransform.m11 = v3;
  *&self->super._cumulativeLayerTransform.m13 = v4;
  v6 = *&a3->m31;
  v7 = *&a3->m33;
  v8 = *&a3->m43;
  *&self->super._cumulativeLayerTransform.m41 = *&a3->m41;
  *&self->super._cumulativeLayerTransform.m43 = v8;
  *&self->super._cumulativeLayerTransform.m31 = v6;
  *&self->super._cumulativeLayerTransform.m33 = v7;
}

@end