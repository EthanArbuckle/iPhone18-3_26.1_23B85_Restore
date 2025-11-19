@interface MPSCPUAccelerationStructure
- (_MPSAxisAlignedBoundingBox)boundingBox;
- (id).cxx_construct;
- (void)dealloc;
- (void)rebuildWithDescriptor:(id)a3;
- (void)rebuildWithDescriptor:(id)a3 queue:(id)a4;
@end

@implementation MPSCPUAccelerationStructure

- (_MPSAxisAlignedBoundingBox)boundingBox
{
  min = self[1].min;
  max = self[1].max;
  return self;
}

- (void)dealloc
{
  bvh = self->_bvh;
  if (bvh)
  {
    free((bvh & 0xFFFFFFFFFFFFFFC0));
    self->_bvh = 0;
  }

  v4.receiver = self;
  v4.super_class = MPSCPUAccelerationStructure;
  [(MPSCPUAccelerationStructure *)&v4 dealloc];
}

- (void)rebuildWithDescriptor:(id)a3
{
  v5 = sub_239E05F90();
  objc_msgSend_rebuildWithDescriptor_queue_(self, v6, a3, v5, v7);

  dispatch_release(v5);
}

- (void)rebuildWithDescriptor:(id)a3 queue:(id)a4
{
  v92 = *MEMORY[0x277D85DE8];
  self->_branchingFactor = 4;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  if (!objc_msgSend_isSubclassOfClass_(v7, v9, v8, v10, v11))
  {
    v86 = 3;
    v87 = 0x3727C5AC3F000000;
    v88 = xmmword_239E26D40;
    v89 = 0x1000000010;
    v90 = 4;
    v85 = &unk_284D08698;
    self->_instancing = 1;
    self->_identityTransforms = objc_msgSend_transformType(a3, v12, v13, v14, v15) == 1;
    v48 = objc_msgSend_transformData(a3, v44, v45, v46, v47);
    v53 = objc_msgSend_transformType(a3, v49, v50, v51, v52);
    v58 = objc_msgSend_instanceData(a3, v54, v55, v56, v57);
    v63 = objc_msgSend_instanceCount(a3, v59, v60, v61, v62);
    sub_239E0D774(&v85, v48, v53, v58, v63, a4, &self->_boundingBox);
  }

  *&self->_instancing = 0;
  v16 = 15 * LODWORD(self->_branchingFactor);
  v86 = 3;
  v87 = 0x3727C5AC3F000000;
  *&v88 = 0x10000001000;
  DWORD2(v88) = 1;
  HIDWORD(v88) = v16;
  v89 = 0x1000000010;
  v90 = 4;
  v84 = 0;
  v85 = &unk_284D08698;
  v82 = 0;
  v83 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  __p = 0;
  v71 = 0;
  v72 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v17 = objc_msgSend_geometryDescriptors(a3, v12, v13, v14, v15);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v66, v91, 16);
  if (v23)
  {
    v24 = *v67;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v67 != v24)
        {
          objc_enumerationMutation(v17);
        }

        v26 = *(*(&v66 + 1) + 8 * i);
        v65 = objc_msgSend_vertexData(v26, v19, v20, v21, v22);
        sub_239DEDD74(&v82, &v65);
        LODWORD(v65) = objc_msgSend_vertexStride(v26, v27, v28, v29, v30);
        sub_239DEDE48(&v73, &v65);
        v65 = objc_msgSend_indexData(v26, v31, v32, v33, v34);
        sub_239DEDD74(&v79, &v65);
        if (objc_msgSend_indexDataType(v26, v35, v36, v37, v38) == 16)
        {
          v39 = 2;
        }

        else
        {
          v39 = 4;
        }

        LODWORD(v65) = v39;
        sub_239DEDE48(&__p, &v65);
        LODWORD(v65) = objc_msgSend_triangleCount(v26, v40, v41, v42, v43);
        sub_239DEDE48(&v76, &v65);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v66, v91, 16);
    }

    while (v23);
  }

  self->_bvh = sub_239E0CEC8(&v85, &v82, &v73, &v79, &__p, &v76, 0, a4, &self->_boundingBox);
  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  v64 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  v2.i64[0] = 0x7F0000007FLL;
  v2.i64[1] = 0x7F0000007FLL;
  *(self + 2) = vnegq_f32(v2);
  *(self + 3) = v2;
  return self;
}

@end