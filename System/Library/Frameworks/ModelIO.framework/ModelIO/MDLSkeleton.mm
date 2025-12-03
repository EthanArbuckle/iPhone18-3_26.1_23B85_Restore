@interface MDLSkeleton
- (MDLSkeleton)initWithName:(NSString *)name jointPaths:(NSArray *)jointPaths;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MDLSkeleton

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(MDLSkeleton, a2, zone);
  v7 = objc_msgSend_name(self, v5, v6);
  v9 = objc_msgSend_initWithName_jointPaths_(v4, v8, v7, self->_jointPaths);

  v12 = objc_msgSend_copy(self->_jointBindTransforms, v10, v11);
  v13 = v9[8];
  v9[8] = v12;

  v16 = objc_msgSend_copy(self->_jointBindTransforms, v14, v15);
  v17 = v9[9];
  v9[9] = v16;

  return v9;
}

- (MDLSkeleton)initWithName:(NSString *)name jointPaths:(NSArray *)jointPaths
{
  v6 = name;
  v7 = jointPaths;
  v33.receiver = self;
  v33.super_class = MDLSkeleton;
  v10 = [(MDLObject *)&v33 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    objc_msgSend_setName_(v10, v12, v11);

    v15 = objc_msgSend_copy(v7, v13, v14);
    v16 = v10->_jointPaths;
    v10->_jointPaths = v15;

    v17 = [MDLMatrix4x4Array alloc];
    v20 = objc_msgSend_count(v10->_jointPaths, v18, v19);
    v22 = objc_msgSend_initWithElementCount_(v17, v21, v20);
    jointBindTransforms = v10->_jointBindTransforms;
    v10->_jointBindTransforms = v22;

    v24 = [MDLMatrix4x4Array alloc];
    v27 = objc_msgSend_count(v10->_jointPaths, v25, v26);
    v29 = objc_msgSend_initWithElementCount_(v24, v28, v27);
    jointRestTransforms = v10->_jointRestTransforms;
    v10->_jointRestTransforms = v29;

    v31 = v10;
  }

  return v10;
}

@end