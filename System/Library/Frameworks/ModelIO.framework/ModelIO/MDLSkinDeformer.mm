@interface MDLSkinDeformer
- (MDLSkinDeformer)initWithJointPaths:(__n128)paths jointBindTransforms:(__n128)transforms count:(__n128)count meshBindTransform:(uint64_t)transform;
- (MDLSkinDeformer)initWithJointPaths:(__n128)paths jointBindTransforms:(__n128)transforms meshBindTransform:(__n128)transform;
- (__n128)meshBindTransform;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)copyJointBindTransformsInto:(id *)into maxCount:(unint64_t)count;
@end

@implementation MDLSkinDeformer

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(MDLSkinDeformer, a2, zone);
  jointPaths = self->_jointPaths;
  jointBindTransforms = self->_jointBindTransforms;
  v7 = *&self[1].super.isa;
  v8 = *&self[1]._jointBindTransforms;
  v9 = *&self[2].super.isa;
  v10 = *&self[2]._jointBindTransforms;

  return MEMORY[0x2821F9670](v4, sel_initWithJointPaths_jointBindTransforms_meshBindTransform_, jointPaths);
}

- (MDLSkinDeformer)initWithJointPaths:(__n128)paths jointBindTransforms:(__n128)transforms meshBindTransform:(__n128)transform
{
  v10 = a7;
  v11 = a8;
  v27.receiver = self;
  v27.super_class = MDLSkinDeformer;
  v14 = [(MDLSkinDeformer *)&v27 init];
  if (v14)
  {
    v15 = objc_msgSend_copy(v10, v12, v13);
    jointPaths = v14->_jointPaths;
    v14->_jointPaths = v15;

    v19 = objc_msgSend_copy(v11, v17, v18);
    jointBindTransforms = v14->_jointBindTransforms;
    v14->_jointBindTransforms = v19;

    *&v14[1].super.isa = a2;
    *&v14[1]._jointBindTransforms = paths;
    *&v14[2].super.isa = transforms;
    *&v14[2]._jointBindTransforms = transform;
    v21 = v14;
  }

  return v14;
}

- (MDLSkinDeformer)initWithJointPaths:(__n128)paths jointBindTransforms:(__n128)transforms count:(__n128)count meshBindTransform:(uint64_t)transform
{
  v12 = a7;
  v30.receiver = self;
  v30.super_class = MDLSkinDeformer;
  v15 = [(MDLSkinDeformer *)&v30 init];
  if (!v15)
  {
    goto LABEL_5;
  }

  if (objc_msgSend_count(v12, v13, v14) != a9)
  {
    NSLog(&cfstr_JointpathCount.isa);
LABEL_5:
    v24 = 0;
    goto LABEL_6;
  }

  v18 = objc_msgSend_copy(v12, v16, v17);
  jointPaths = v15->_jointPaths;
  v15->_jointPaths = v18;

  v20 = objc_alloc(MEMORY[0x277CBEA90]);
  v22 = objc_msgSend_initWithBytes_length_(v20, v21, a8, a9 << 6);
  jointBindTransforms = v15->_jointBindTransforms;
  v15->_jointBindTransforms = v22;

  *&v15[1].super.isa = a2;
  *&v15[1]._jointBindTransforms = paths;
  *&v15[2].super.isa = transforms;
  *&v15[2]._jointBindTransforms = count;
  v24 = v15;
LABEL_6:

  return v24;
}

- (unint64_t)copyJointBindTransformsInto:(id *)into maxCount:(unint64_t)count
{
  v7 = objc_msgSend_length(self->_jointBindTransforms, a2, into);
  v10 = v7 >> 6;
  if (v7 >> 6 > count)
  {
    NSLog(&cfstr_Jointbindtrans.isa, count, v7 >> 6);
  }

  v11 = objc_msgSend_bytes(self->_jointBindTransforms, v8, v9);
  v14 = objc_msgSend_length(self->_jointBindTransforms, v12, v13);
  memcpy(into, v11, v14);
  return v10;
}

- (__n128)meshBindTransform
{
  result = *(self + 32);
  v2 = *(self + 48);
  v3 = *(self + 64);
  v4 = *(self + 80);
  return result;
}

@end