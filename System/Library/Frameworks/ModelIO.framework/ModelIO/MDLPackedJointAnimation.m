@interface MDLPackedJointAnimation
- (MDLPackedJointAnimation)initWithName:(NSString *)name jointPaths:(NSArray *)jointPaths;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MDLPackedJointAnimation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(MDLPackedJointAnimation, a2, a3);
  v7 = objc_msgSend_name(self, v5, v6);
  v9 = objc_msgSend_initWithName_jointPaths_(v4, v8, v7, self->_jointPaths);

  v12 = objc_msgSend_copy(self->_translations, v10, v11);
  v13 = v9[8];
  v9[8] = v12;

  v16 = objc_msgSend_copy(self->_rotations, v14, v15);
  v17 = v9[9];
  v9[9] = v16;

  v20 = objc_msgSend_copy(self->_scales, v18, v19);
  v21 = v9[10];
  v9[10] = v20;

  return v9;
}

- (MDLPackedJointAnimation)initWithName:(NSString *)name jointPaths:(NSArray *)jointPaths
{
  v6 = name;
  v7 = jointPaths;
  v40.receiver = self;
  v40.super_class = MDLPackedJointAnimation;
  v10 = [(MDLObject *)&v40 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    objc_msgSend_setName_(v10, v12, v11);

    v15 = objc_msgSend_copy(v7, v13, v14);
    v16 = v10->_jointPaths;
    v10->_jointPaths = v15;

    v17 = [MDLAnimatedVector3Array alloc];
    v20 = objc_msgSend_count(v10->_jointPaths, v18, v19);
    v22 = objc_msgSend_initWithElementCount_(v17, v21, v20);
    translations = v10->_translations;
    v10->_translations = v22;

    v24 = [MDLAnimatedQuaternionArray alloc];
    v27 = objc_msgSend_count(v10->_jointPaths, v25, v26);
    v29 = objc_msgSend_initWithElementCount_(v24, v28, v27);
    rotations = v10->_rotations;
    v10->_rotations = v29;

    v31 = [MDLAnimatedVector3Array alloc];
    v34 = objc_msgSend_count(v10->_jointPaths, v32, v33);
    v36 = objc_msgSend_initWithElementCount_(v31, v35, v34);
    scales = v10->_scales;
    v10->_scales = v36;

    v38 = v10;
  }

  return v10;
}

@end