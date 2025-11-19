@interface MDLAnimationBindComponent
- (__n128)geometryBindTransform;
- (__n128)setGeometryBindTransform:(__int128 *)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MDLAnimationBindComponent

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(MDLAnimationBindComponent, a2, a3);
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
  v2 = *(a1 + 112);
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = v2;
  v3 = *(a1 + 144);
  *(a2 + 96) = *(a1 + 128);
  *(a2 + 112) = v3;
  v4 = *(a1 + 48);
  *a2 = *(a1 + 32);
  *(a2 + 16) = v4;
  result = *(a1 + 64);
  v6 = *(a1 + 80);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

- (__n128)setGeometryBindTransform:(__int128 *)a3
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(a1 + 64) = a3[2];
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = a3[4];
  v7 = a3[5];
  v8 = a3[7];
  *(a1 + 128) = a3[6];
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

@end