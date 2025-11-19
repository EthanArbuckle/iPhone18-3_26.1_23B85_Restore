@interface MDLSkinDeformer
- (MDLSkinDeformer)initWithJointPaths:(__n128)a3 jointBindTransforms:(__n128)a4 count:(__n128)a5 meshBindTransform:(uint64_t)a6;
- (MDLSkinDeformer)initWithJointPaths:(__n128)a3 jointBindTransforms:(__n128)a4 meshBindTransform:(__n128)a5;
- (__n128)meshBindTransform;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)copyJointBindTransformsInto:(id *)a3 maxCount:(unint64_t)a4;
@end

@implementation MDLSkinDeformer

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(MDLSkinDeformer, a2, a3);
  jointPaths = self->_jointPaths;
  jointBindTransforms = self->_jointBindTransforms;
  v7 = *&self[1].super.isa;
  v8 = *&self[1]._jointBindTransforms;
  v9 = *&self[2].super.isa;
  v10 = *&self[2]._jointBindTransforms;

  return MEMORY[0x2821F9670](v4, sel_initWithJointPaths_jointBindTransforms_meshBindTransform_, jointPaths);
}

- (MDLSkinDeformer)initWithJointPaths:(__n128)a3 jointBindTransforms:(__n128)a4 meshBindTransform:(__n128)a5
{
  v10 = a7;
  v11 = a8;
  v27.receiver = a1;
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
    *&v14[1]._jointBindTransforms = a3;
    *&v14[2].super.isa = a4;
    *&v14[2]._jointBindTransforms = a5;
    v21 = v14;
  }

  return v14;
}

- (MDLSkinDeformer)initWithJointPaths:(__n128)a3 jointBindTransforms:(__n128)a4 count:(__n128)a5 meshBindTransform:(uint64_t)a6
{
  v12 = a7;
  v30.receiver = a1;
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
  *&v15[1]._jointBindTransforms = a3;
  *&v15[2].super.isa = a4;
  *&v15[2]._jointBindTransforms = a5;
  v24 = v15;
LABEL_6:

  return v24;
}

- (unint64_t)copyJointBindTransformsInto:(id *)a3 maxCount:(unint64_t)a4
{
  v7 = objc_msgSend_length(self->_jointBindTransforms, a2, a3);
  v10 = v7 >> 6;
  if (v7 >> 6 > a4)
  {
    NSLog(&cfstr_Jointbindtrans.isa, a4, v7 >> 6);
  }

  v11 = objc_msgSend_bytes(self->_jointBindTransforms, v8, v9);
  v14 = objc_msgSend_length(self->_jointBindTransforms, v12, v13);
  memcpy(a3, v11, v14);
  return v10;
}

- (__n128)meshBindTransform
{
  result = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  return result;
}

@end