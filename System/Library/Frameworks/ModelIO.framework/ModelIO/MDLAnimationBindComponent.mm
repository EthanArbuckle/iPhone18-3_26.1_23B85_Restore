@interface MDLAnimationBindComponent
- (__n128)geometryBindTransform;
- (__n128)setGeometryBindTransform:(__int128 *)transform;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MDLAnimationBindComponent

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(MDLAnimationBindComponent, a2, zone);
  v7 = objc_msgSend_init(v4, v5, v6);
  objc_msgSend_setSkeleton_(v7, v8, self->_skeleton);
  objc_msgSend_setJointAnimation_(v7, v9, self->_jointAnimation);
  v16 = *&self[3].super.isa;
  v17 = *&self[3]._jointAnimation;
  v18 = *&self[4].super.isa;
  v19 = *&self[4]._jointAnimation;
  v10 = *&self[1]._jointAnimation;
  var10[0] = *&self[1].super.isa;
  var10[1] = v10;
  v14 = *&self[2].super.isa;
  v15 = *&self[2]._jointAnimation;
  objc_msgSend_setGeometryBindTransform_(v7, v11, var10);
  return v7;
}

- (__n128)geometryBindTransform
{
  v2 = *(self + 112);
  *(a2 + 64) = *(self + 96);
  *(a2 + 80) = v2;
  v3 = *(self + 144);
  *(a2 + 96) = *(self + 128);
  *(a2 + 112) = v3;
  v4 = *(self + 48);
  *a2 = *(self + 32);
  *(a2 + 16) = v4;
  result = *(self + 64);
  v6 = *(self + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)setGeometryBindTransform:(__int128 *)transform
{
  v3 = *transform;
  v4 = transform[1];
  v5 = transform[3];
  *(self + 64) = transform[2];
  *(self + 80) = v5;
  *(self + 32) = v3;
  *(self + 48) = v4;
  result = transform[4];
  v7 = transform[5];
  v8 = transform[7];
  *(self + 128) = transform[6];
  *(self + 144) = v8;
  *(self + 96) = result;
  *(self + 112) = v7;
  return result;
}

@end