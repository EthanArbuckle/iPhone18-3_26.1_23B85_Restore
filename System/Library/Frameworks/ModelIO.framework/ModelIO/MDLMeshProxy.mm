@interface MDLMeshProxy
- (MDLMeshProxy)initWithCoder:(id)coder;
- (MDLMeshProxy)initWithVertexBuffers:(id)buffers vertexCount:(unint64_t)count descriptor:(id)descriptor submeshes:(id)submeshes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MDLMeshProxy

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v4, self->super._allocator, @"allocator");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v5, self->super._vertexCount, @"vertexCount");
  allocator = self->super._allocator;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_encodeMeshBuffers_withCoder_forKey_(self->super._allocator, v7, self->super._vertexBuffers, coderCopy, @"vertexBuffers");
  }

  objc_msgSend_encodeVertexDescriptorWithCoder_(self->super._vertexDescriptor, v7, coderCopy);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, self->super._submeshes, @"submeshes");
}

- (MDLMeshProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v5, v9, v6, v7, v8, 0);
  v11 = objc_opt_class();
  v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"allocator");
  allocator = self->super._allocator;
  self->super._allocator = v13;

  v15 = self->super._allocator;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = objc_msgSend_decodeMeshBuffersWithCoder_forKey_(self->super._allocator, v16, coderCopy, @"vertexBuffers");
    vertexBuffers = self->super._vertexBuffers;
    self->super._vertexBuffers = v17;
  }

  self->super._vertexCount = objc_msgSend_decodeIntegerForKey_(coderCopy, v16, @"vertexCount");
  v20 = objc_msgSend_decodeVertexDescriptorWithCoder_(MDLVertexDescriptor, v19, coderCopy);
  vertexDescriptor = self->super._vertexDescriptor;
  self->super._vertexDescriptor = v20;

  v23 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v22, v10, @"submeshes");
  submeshes = self->super._submeshes;
  self->super._submeshes = v23;

  return self;
}

- (MDLMeshProxy)initWithVertexBuffers:(id)buffers vertexCount:(unint64_t)count descriptor:(id)descriptor submeshes:(id)submeshes
{
  v134 = *MEMORY[0x277D85DE8];
  buffersCopy = buffers;
  descriptorCopy = descriptor;
  v112 = buffersCopy;
  submeshesCopy = submeshes;
  v130.receiver = self;
  v130.super_class = MDLMeshProxy;
  v116 = [(MDLObject *)&v130 init];
  if (!v116)
  {
    v90 = 0;
    goto LABEL_48;
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v10 = buffersCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v126, v133, 16);
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = *v127;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v127 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v126 + 1) + 8 * i);
      v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13);
      if ((objc_msgSend_isEqual_(v17, v19, v18) & 1) == 0)
      {
        v22 = objc_msgSend_type(v17, v20, v21) == 1;

        if (v22)
        {
          continue;
        }

        v23 = MEMORY[0x277CBEAD8];
        v24 = objc_opt_class();
        v18 = NSStringFromClass(v24);
        v25 = NSStringFromSelector(a2);
        objc_msgSend_raise_format_(v23, v26, @"ModelIOException", @"[%@ %@]: vertexBuffer.type must be MDLMeshBufferTypeVertex", v18, v25);
      }
    }

    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v126, v133, 16);
  }

  while (v14);
LABEL_13:

  v29 = descriptorCopy;
  if (!descriptorCopy)
  {
    v30 = MEMORY[0x277CBEAD8];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v30, v34, @"ModelIOException", @"[%@ %@]: No descriptor supplied", v32, v33);

    v29 = 0;
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v35 = objc_msgSend_attributes(v29, v27, v28);
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v122, v132, 16);
  if (v39)
  {
    v40 = *v123;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v123 != v40)
        {
          objc_enumerationMutation(v35);
        }

        v42 = *(*(&v122 + 1) + 8 * j);
        v43 = objc_msgSend_null(MEMORY[0x277CBEB68], v37, v38);
        isEqual = objc_msgSend_isEqual_(v42, v44, v43);

        if ((isEqual & 1) == 0)
        {
          v46 = objc_msgSend_bufferIndex(v42, v37, v38);
          if (v46 > objc_msgSend_count(v10, v47, v48))
          {
            v49 = MEMORY[0x277CBEAD8];
            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            v52 = NSStringFromSelector(a2);
            objc_msgSend_raise_format_(v49, v53, @"ModelIOException", @"[%@ %@]: Buffer index out of range", v51, v52);
          }
        }
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v122, v132, 16);
    }

    while (v39);
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v54 = v10;
  v56 = 0;
  v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v118, v131, 16);
  if (v59)
  {
    v60 = *v119;
    do
    {
      for (k = 0; k != v59; ++k)
      {
        if (*v119 != v60)
        {
          objc_enumerationMutation(v54);
        }

        if (!v56)
        {
          v62 = *(*(&v118 + 1) + 8 * k);
          v63 = objc_msgSend_null(MEMORY[0x277CBEB68], v57, v58);
          if (objc_msgSend_isEqual_(v62, v64, v63))
          {
          }

          else
          {
            v67 = objc_msgSend_allocator(v62, v65, v66);
            v68 = v67 == 0;

            if (!v68)
            {
              v56 = objc_msgSend_allocator(v62, v57, v58);
              continue;
            }
          }

          v56 = 0;
        }
      }

      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v57, &v118, v131, 16);
    }

    while (v59);
  }

  for (m = 0; objc_msgSend_count(v54, v69, v70) > m; ++m)
  {
    v73 = objc_msgSend_objectAtIndexedSubscript_(v54, v72, m);
    v76 = objc_msgSend_null(MEMORY[0x277CBEB68], v74, v75);
    v78 = objc_msgSend_isEqual_(v73, v77, v76);

    if ((v78 & 1) == 0)
    {
      v79 = objc_msgSend_objectAtIndexedSubscript_(v54, v69, m);
      v82 = objc_msgSend_allocator(v79, v80, v81);
      v83 = v82 == v56;

      if (!v83)
      {
        v84 = MEMORY[0x277CBEAD8];
        v85 = objc_opt_class();
        v86 = NSStringFromClass(v85);
        v87 = NSStringFromSelector(a2);
        objc_msgSend_raise_format_(v84, v88, @"ModelIOException", @"[%@ %@]: Allocators on supplied vertexBuffers do not all match, but they must", v86, v87);
      }
    }
  }

  v117.receiver = v116;
  v117.super_class = MDLMeshProxy;
  v89 = [(MDLObject *)&v117 init];
  v90 = v89;
  if (v89)
  {
    __asm { FMOV            V1.4S, #-1.0 }

    *v89->super._anon_50 = _Q1;
    *&v89->super._anon_50[16] = 0u;
    objc_storeStrong(&v89->super._allocator, v56);
    v90->super._vertexCount = count;
    v96 = objc_alloc(MEMORY[0x277CBEB18]);
    v98 = objc_msgSend_initWithArray_(v96, v97, v54);
    vertexBuffers = v90->super._vertexBuffers;
    v90->super._vertexBuffers = v98;

    v100 = MEMORY[0x23EE7E350]();
    v102 = objc_msgSend_copyWithZone_(descriptorCopy, v101, v100);
    vertexDescriptor = v90->super._vertexDescriptor;
    v90->super._vertexDescriptor = v102;

    v104 = objc_alloc(MEMORY[0x277CBEB18]);
    v106 = objc_msgSend_initWithArray_(v104, v105, submeshesCopy);
    submeshes = v90->super._submeshes;
    v90->super._submeshes = v106;

    v108 = v90;
  }

LABEL_48:
  v109 = *MEMORY[0x277D85DE8];
  return v90;
}

@end