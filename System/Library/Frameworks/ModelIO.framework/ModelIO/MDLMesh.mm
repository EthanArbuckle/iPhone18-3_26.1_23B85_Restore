@interface MDLMesh
+ (MDLMesh)newBoxWithDimensions:(vector_float3)dimensions segments:(vector_uint3)segments geometryType:(MDLGeometryType)geometryType inwardNormals:(BOOL)inwardNormals allocator:(id)allocator;
+ (MDLMesh)newSubdividedMesh:(MDLMesh *)mesh submeshIndex:(NSUInteger)submeshIndex subdivisionLevels:(NSUInteger)subdivisionLevels;
- (BOOL)generateAmbientOcclusionTextureWithQuality:(float)bakeQuality attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName;
- (BOOL)generateAmbientOcclusionTextureWithSize:(vector_int2)textureSize raysPerSample:(NSInteger)raysPerSample attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName;
- (BOOL)generateAmbientOcclusionVertexColorsWithRaysPerSample:(NSInteger)raysPerSample attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName;
- (BOOL)generateLightMapTextureWithQuality:(float)bakeQuality lightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName;
- (BOOL)generateLightMapTextureWithTextureSize:(vector_int2)textureSize lightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName;
- (BOOL)generateLightMapVertexColorsWithLightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName;
- (BOOL)makeVerticesUniqueAndReturnError:(NSError *)error;
- (BOOL)triangulate;
- (MDLAxisAlignedBoundingBox)boundingBox;
- (MDLMesh)initWithBufferAllocator:(id)bufferAllocator;
- (MDLMesh)initWithVertexBuffer:(id)vertexBuffer vertexCount:(NSUInteger)vertexCount descriptor:(MDLVertexDescriptor *)descriptor submeshes:(NSArray *)submeshes;
- (MDLMesh)initWithVertexBuffers:(NSArray *)vertexBuffers vertexCount:(NSUInteger)vertexCount descriptor:(MDLVertexDescriptor *)descriptor submeshes:(NSArray *)submeshes;
- (MDLVertexAttributeData)vertexAttributeDataForAttributeNamed:(NSString *)name;
- (MDLVertexAttributeData)vertexAttributeDataForAttributeNamed:(NSString *)name asFormat:(MDLVertexFormat)format;
- (MDLVertexDescriptor)vertexDescriptor;
- (__n128)inverseBasePoseForIndex:(uint64_t)index;
- (id)description;
- (int64_t)addVertexBuffer:(id)buffer;
- (void)_calculateFaceNormalsFromPositions:(float *)positions positionStride:(int64_t)stride normals:(float *)normals normalStride:(int64_t)normalStride creaseThreshold:(float)threshold;
- (void)_calculateTangentBasisFromPositions:(float *)positions positionStride:(int64_t)stride positionsBufferSize:(unint64_t)size normals:(float *)normals normalStride:(int64_t)normalStride normalsBufferSize:(unint64_t)bufferSize uvs:(float *)uvs uvStride:(int64_t)self0 uvsBufferSize:(unint64_t)self1 tangents:(float *)self2 tangentsStride:(int64_t)self3 tangentsBufferSize:(unint64_t)self4 bitagents:(float *)self5 bitangentStride:(int64_t)self6 bitangentsBufferSize:(unint64_t)self7 tangentFormat:(unint64_t)self8 selector:(SEL)self9;
- (void)_createWithVertexBuffer:(id)buffer vertexCount:(unint64_t)count descriptor:(id)descriptor submeshes:(id)submeshes;
- (void)_enumerateSubmeshesUsingBlock:(id)block stopPointer:(BOOL *)pointer;
- (void)addAttributeWithName:(NSString *)name format:(MDLVertexFormat)format;
- (void)addAttributeWithName:(NSString *)name format:(MDLVertexFormat)format type:(NSString *)type data:(NSData *)data stride:(NSInteger)stride;
- (void)addAttributeWithName:(NSString *)name format:(MDLVertexFormat)format type:(NSString *)type data:(NSData *)data stride:(NSInteger)stride time:(NSTimeInterval)time;
- (void)addNormalsWithAttributeNamed:(NSString *)attributeName creaseThreshold:(float)creaseThreshold;
- (void)addOrthTanBasisForTextureCoordinateAttributeNamed:(NSString *)textureCoordinateAttributeName normalAttributeNamed:(NSString *)normalAttributeName tangentAttributeNamed:(NSString *)tangentAttributeName;
- (void)addTangentBasisForTextureCoordinateAttributeNamed:(NSString *)textureCoordinateAttributeName normalAttributeNamed:(NSString *)normalAttributeName tangentAttributeNamed:(NSString *)tangentAttributeName;
- (void)addTangentBasisForTextureCoordinateAttributeNamed:(NSString *)textureCoordinateAttributeName tangentAttributeNamed:(NSString *)tangentAttributeName bitangentAttributeNamed:(NSString *)bitangentAttributeName;
- (void)addUnwrappedTextureCoordinatesForAttributeNamed:(NSString *)textureCoordinateAttributeName;
- (void)copyDataVector:(void *)vector toAttr:(id)attr;
- (void)createSourceDataVector:(void *)vector attr:(id)attr srcElementCount:(int)count dstElementCount:(int)elementCount;
- (void)debugPrintToFile:(__sFILE *)file;
- (void)flipTextureCoordinatesInAttributeNamed:(NSString *)textureCoordinateAttributeName;
- (void)removeAttributeNamed:(NSString *)name;
- (void)replaceAttributeNamed:(NSString *)name withData:(MDLVertexAttributeData *)newData;
- (void)setSubmeshes:(NSMutableArray *)submeshes;
- (void)setVertexBuffers:(NSArray *)vertexBuffers;
- (void)setVertexDescriptor:(MDLVertexDescriptor *)vertexDescriptor;
- (void)updateAttributeNamed:(NSString *)name withData:(MDLVertexAttributeData *)newData;
@end

@implementation MDLMesh

+ (MDLMesh)newBoxWithDimensions:(vector_float3)dimensions segments:(vector_uint3)segments geometryType:(MDLGeometryType)geometryType inwardNormals:(BOOL)inwardNormals allocator:(id)allocator
{
  v8 = dimensions.i64[1];
  v9 = dimensions.i64[0];
  v15 = *segments.i64;
  v16 = v7;
  v10 = geometryType;
  v11 = [MDLMesh alloc];
  inited = objc_msgSend_initBoxWithExtent_segments_inwardNormals_geometryType_allocator_(v11, v12, v8, v9, v10, v15, v16);

  return inited;
}

+ (MDLMesh)newSubdividedMesh:(MDLMesh *)mesh submeshIndex:(NSUInteger)submeshIndex subdivisionLevels:(NSUInteger)subdivisionLevels
{
  v7 = mesh;
  v8 = [MDLMesh alloc];
  inited = objc_msgSend_initMeshBySubdividingMesh_submeshIndex_subdivisionLevels_allocator_(v8, v9, v7, submeshIndex, subdivisionLevels, 0);

  return inited;
}

- (void)setVertexBuffers:(NSArray *)vertexBuffers
{
  v8 = vertexBuffers;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = objc_msgSend_initWithArray_(v4, v5, v8);
  v7 = self->_vertexBuffers;
  self->_vertexBuffers = v6;
}

- (MDLVertexDescriptor)vertexDescriptor
{
  vertexDescriptor = self->_vertexDescriptor;
  v3 = MEMORY[0x23EE7E350]();
  v5 = objc_msgSend_copyWithZone_(vertexDescriptor, v4, v3);

  return v5;
}

- (void)debugPrintToFile:(__sFILE *)file
{
  v110 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_name(self, a2, file);
  v5 = v4;
  v7 = objc_msgSend_cStringUsingEncoding_(v5, v6, 4);
  fprintf(file, "Mesh:%s vertexCount %llu\n", v7, self->_vertexCount);

  objc_msgSend_debugPrintToFile_(self->_vertexDescriptor, v8, file);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = objc_msgSend_attributes(self->_vertexDescriptor, v9, v10);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v102, v109, 16);
  if (v12)
  {
    v98 = 0;
    v94 = *v103;
    __asm { FMOV            V0.2D, #-1.0 }

    v96 = _Q0;
    v97 = vdupq_n_s64(0x3F60080402010080uLL);
    do
    {
      v99 = 0;
      v95 = v12;
      do
      {
        if (*v103 != v94)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v102 + 1) + 8 * v99);
        v21 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14);
        if (objc_msgSend_isEqual_(v20, v22, v21))
        {

          goto LABEL_55;
        }

        v25 = objc_msgSend_format(v20, v23, v24) == 0;

        if (!v25)
        {
          v26 = objc_msgSend_bufferIndex(v20, v13, v14);
          v29 = objc_msgSend_layouts(self->_vertexDescriptor, v27, v28);
          v31 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, v26);
          v100 = objc_msgSend_stride(v31, v32, v33);

          v36 = objc_msgSend_name(v20, v34, v35);
          v37 = v36;
          v39 = objc_msgSend_cStringUsingEncoding_(v36, v38, 4);
          fprintf(file, "%llu %s:\n", v98, v39);

          v41 = objc_msgSend_objectAtIndexedSubscript_(self->_vertexBuffers, v40, v26);
          v44 = objc_msgSend_map(v41, v42, v43);
          v47 = objc_msgSend_bytes(v44, v45, v46);
          v50 = objc_msgSend_offset(v20, v48, v49);

          if (self->_vertexCount)
          {
            v53 = 0;
            v54 = (v47 + v50);
            do
            {
              if (objc_msgSend_format(v20, v51, v52) <= 0x10000)
              {
                fputc(40, file);
                v76 = objc_msgSend_format(v20, v74, v75);
                if (v76 == 593924)
                {
                  fprintf(file, "%f %f %f %f", (*v54 >> 22) * 0.000977517107, ((*v54 >> 12) & 0x3FF) * 0.000977517107, ((*v54 >> 2) & 0x3FF) * 0.000977517107, (*v54 & 3) * 0.333333333);
                }

                else if (v76 == 659460)
                {
                  v77 = 0;
                  v78 = *v54;
                  v106 = (*v54 >> 22) * 0.00195694716;
                  v79 = vand_s8(vshl_u32(vdup_n_s32(v78), 0xFFFFFFFEFFFFFFF4), 0x300000003);
                  v80.i64[0] = v79.u32[0];
                  v80.i64[1] = v79.u32[1];
                  v107 = vmulq_f64(vcvtq_f64_u64(v80), v97);
                  v108 = (v78 & 3);
                  do
                  {
                    *(&v106 + v77) = vbslq_s8(vcgtq_f64(v96, *(&v106 + v77)), v96, *(&v106 + v77));
                    v77 += 16;
                  }

                  while (v77 != 32);
                  fprintf(file, "%f %f %f %f", v106, v107.f64[0], v107.f64[1], v108);
                }
              }

              else
              {
                v57 = objc_msgSend_format(v20, v55, v56);
                fputc(40, file);
                if (v57)
                {
                  v60 = 0;
                  v61 = v57 - 1;
                  do
                  {
                    v62 = objc_msgSend_format(v20, v58, v59);
                    v63 = ((v62 & 0xFFFF0000) - 0x10000) >> 16;
                    if (v63 > 5)
                    {
                      if (((v62 & 0xFFFF0000) - 0x10000) >> 16 <= 8)
                      {
                        if (v63 == 6)
                        {
                          v69 = *(v54 + v60);
                          goto LABEL_42;
                        }

                        if (v63 == 7)
                        {
                          v72 = *(v54 + v60);
                          goto LABEL_42;
                        }

                        if (v63 != 8)
                        {
                          goto LABEL_43;
                        }

LABEL_33:
                        v67 = v54[v60];
LABEL_40:
                        fprintf(file, "%d");
                        goto LABEL_43;
                      }

                      switch(v63)
                      {
                        case 9uLL:
                          goto LABEL_33;
                        case 0xAuLL:
                          sub_239F5E87C(*(v54 + v60));
                          goto LABEL_42;
                        case 0xBuLL:
                          v66 = v54[v60];
                          goto LABEL_42;
                      }
                    }

                    else if (((v62 & 0xFFFF0000) - 0x10000) >> 16 > 2)
                    {
                      switch(v63)
                      {
                        case 3uLL:
                          v70 = *(v54 + v60);
                          goto LABEL_42;
                        case 4uLL:
                          v73 = *(v54 + v60);
                          goto LABEL_40;
                        case 5uLL:
                          v65 = *(v54 + v60);
                          goto LABEL_40;
                      }
                    }

                    else
                    {
                      switch(v63)
                      {
                        case 0uLL:
                          v68 = *(v54 + v60);
                          goto LABEL_40;
                        case 1uLL:
                          v71 = *(v54 + v60);
                          goto LABEL_40;
                        case 2uLL:
                          v64 = *(v54 + v60);
LABEL_42:
                          fprintf(file, "%f");
                          break;
                      }
                    }

LABEL_43:
                    if (v61)
                    {
                      fputc(32, file);
                    }

                    ++v60;
                    --v61;
                  }

                  while (v60 < v57);
                }
              }

              fwrite(") ", 2uLL, 1uLL, file);
              v54 = (v54 + v100);
              ++v53;
              fputc(10, file);
            }

            while (v53 < self->_vertexCount);
          }

          fputc(10, file);
        }

LABEL_55:
        ++v98;
        ++v99;
      }

      while (v99 != v95);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v102, v109, 16);
    }

    while (v12);
  }

  v83 = objc_msgSend_count(self->_submeshes, v81, v82);
  fprintf(file, "submeshes:%llu\n", v83);
  if (objc_msgSend_count(self->_submeshes, v84, v85))
  {
    v86 = 0;
    do
    {
      fprintf(file, "submesh #%llu\n", v86);
      v88 = objc_msgSend_objectAtIndexedSubscript_(self->_submeshes, v87, v86);
      objc_msgSend_debugPrintToFile_(v88, v89, file);

      ++v86;
    }

    while (v86 < objc_msgSend_count(self->_submeshes, v90, v91));
  }

  v92 = *MEMORY[0x277D85DE8];
}

- (void)setVertexDescriptor:(MDLVertexDescriptor *)vertexDescriptor
{
  v10 = vertexDescriptor;
  v4 = sub_239F53608(self->_vertexBuffers, self->_vertexCount, self->_vertexDescriptor, v10, 0, 1);
  vertexBuffers = self->_vertexBuffers;
  self->_vertexBuffers = v4;

  v6 = [MDLVertexDescriptor alloc];
  v8 = objc_msgSend_initWithVertexDescriptor_(v6, v7, v10);
  v9 = self->_vertexDescriptor;
  self->_vertexDescriptor = v8;
}

- (void)setSubmeshes:(NSMutableArray *)submeshes
{
  v8 = submeshes;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v6 = objc_msgSend_initWithArray_(v4, v5, v8);
  v7 = self->_submeshes;
  self->_submeshes = v6;
}

- (MDLAxisAlignedBoundingBox)boundingBox
{
  v30 = *MEMORY[0x277D85DE8];
  anon_50 = self->_anon_50;
  __asm { FMOV            V1.4S, #-1.0 }

  *self->_anon_50 = _Q1;
  *&self->_anon_50[16] = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = self->_submeshes;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v29, 16);
  if (v13)
  {
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v23 + 1) + 8 * v15);
        if (v16)
        {
          objc_msgSend_boundingBoxForMesh_(v16, v12, self, v23);
          v18 = v27;
          v17 = v28;
        }

        else
        {
          v17 = 0uLL;
          v18 = 0uLL;
        }

        v27 = v18;
        v28 = v17;
        sub_239EB1DF0(anon_50, &v27);
        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v23, v29, 16);
    }

    while (v13);
  }

  v20 = *anon_50;
  v21 = *(anon_50 + 1);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (MDLMesh)initWithBufferAllocator:(id)bufferAllocator
{
  v4 = bufferAllocator;
  v20.receiver = self;
  v20.super_class = MDLMesh;
  v5 = [(MDLObject *)&v20 init];
  if (v5)
  {
    v6 = v4;
    if (!v4)
    {
      v6 = objc_alloc_init(MDLMeshBufferDataAllocator);
    }

    objc_storeStrong(&v5->_allocator, v6);
    if (!v4)
    {
    }

    __asm { FMOV            V1.4S, #-1.0 }

    *v5->_anon_50 = _Q1;
    *&v5->_anon_50[16] = 0u;
    v5->_vertexCount = 0;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    vertexBuffers = v5->_vertexBuffers;
    v5->_vertexBuffers = v12;

    v14 = objc_alloc_init(MDLVertexDescriptor);
    vertexDescriptor = v5->_vertexDescriptor;
    v5->_vertexDescriptor = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    submeshes = v5->_submeshes;
    v5->_submeshes = v16;

    v18 = v5;
  }

  return v5;
}

- (void)_createWithVertexBuffer:(id)buffer vertexCount:(unint64_t)count descriptor:(id)descriptor submeshes:(id)submeshes
{
  v65 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  submeshesCopy = submeshes;
  v58 = bufferCopy;
  v10 = NSStringFromSelector(sel_initWithVertexBuffer_vertexCount_descriptor_submeshes_);
  if (objc_msgSend_type(bufferCopy, v11, v12) != 1)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    objc_msgSend_raise_format_(v15, v18, @"ModelIOException", @"[%@ %@]: vertexBuffer.type must be MDLMeshBufferTypeVertex", v17, v10);
  }

  v19 = descriptorCopy;
  if (!descriptorCopy)
  {
    v20 = MEMORY[0x277CBEAD8];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    objc_msgSend_raise_format_(v20, v23, @"ModelIOException", @"[%@ %@]: No descriptor supplied", v22, v10);

    v19 = 0;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v24 = objc_msgSend_attributes(v19, v13, v14);
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v60, v64, 16);
  if (v28)
  {
    v29 = *v61;
    do
    {
      v30 = 0;
      do
      {
        if (*v61 != v29)
        {
          objc_enumerationMutation(v24);
        }

        if (objc_msgSend_bufferIndex(*(*(&v60 + 1) + 8 * v30), v26, v27))
        {
          v31 = MEMORY[0x277CBEAD8];
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          objc_msgSend_raise_format_(v31, v34, @"ModelIOException", @"[%@ %@]: Buffer index out of range", v33, v10);
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v60, v64, 16);
    }

    while (v28);
  }

  v37 = objc_msgSend_allocator(v58, v35, v36);
  allocator = self->_allocator;
  self->_allocator = v37;

  __asm { FMOV            V1.4S, #-1.0 }

  *self->_anon_50 = _Q1;
  *&self->_anon_50[16] = 0u;
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  vertexBuffers = self->_vertexBuffers;
  self->_vertexBuffers = v44;

  objc_msgSend_addObject_(self->_vertexBuffers, v46, v58);
  v47 = objc_alloc(MEMORY[0x277CBEB18]);
  v49 = objc_msgSend_initWithArray_(v47, v48, submeshesCopy);
  submeshes = self->_submeshes;
  self->_submeshes = v49;

  self->_vertexCount = count;
  v51 = MEMORY[0x23EE7E350]();
  v53 = objc_msgSend_copyWithZone_(descriptorCopy, v52, v51);
  vertexDescriptor = self->_vertexDescriptor;
  self->_vertexDescriptor = v53;

  v55 = *MEMORY[0x277D85DE8];
}

- (MDLMesh)initWithVertexBuffer:(id)vertexBuffer vertexCount:(NSUInteger)vertexCount descriptor:(MDLVertexDescriptor *)descriptor submeshes:(NSArray *)submeshes
{
  v10 = vertexBuffer;
  v11 = descriptor;
  v12 = submeshes;
  v18.receiver = self;
  v18.super_class = MDLMesh;
  v13 = [(MDLObject *)&v18 init];
  v15 = v13;
  if (v13)
  {
    objc_msgSend__createWithVertexBuffer_vertexCount_descriptor_submeshes_(v13, v14, v10, vertexCount, v11, v12);
    v16 = v15;
  }

  return v15;
}

- (MDLMesh)initWithVertexBuffers:(NSArray *)vertexBuffers vertexCount:(NSUInteger)vertexCount descriptor:(MDLVertexDescriptor *)descriptor submeshes:(NSArray *)submeshes
{
  v131 = *MEMORY[0x277D85DE8];
  v8 = vertexBuffers;
  v112 = descriptor;
  v111 = submeshes;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v9 = v8;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v124, v130, 16);
  if (v13)
  {
    v14 = *v125;
    do
    {
      v15 = 0;
      do
      {
        if (*v125 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v124 + 1) + 8 * v15);
        v17 = objc_msgSend_null(MEMORY[0x277CBEB68], v11, v12);
        if ((objc_msgSend_isEqual_(v16, v18, v17) & 1) == 0)
        {
          v21 = objc_msgSend_type(v16, v19, v20) == 1;

          if (v21)
          {
            goto LABEL_10;
          }

          v22 = MEMORY[0x277CBEAD8];
          v23 = objc_opt_class();
          v17 = NSStringFromClass(v23);
          v24 = NSStringFromSelector(a2);
          objc_msgSend_raise_format_(v22, v25, @"ModelIOException", @"[%@ %@]: vertexBuffer.type must be MDLMeshBufferTypeVertex", v17, v24);
        }

LABEL_10:
        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v124, v130, 16);
    }

    while (v13);
  }

  v28 = v112;
  if (!v112)
  {
    v29 = MEMORY[0x277CBEAD8];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    v32 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v29, v33, @"ModelIOException", @"[%@ %@]: No descriptor supplied", v31, v32);

    v28 = 0;
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v34 = objc_msgSend_attributes(v28, v26, v27);
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v120, v129, 16);
  if (v38)
  {
    v39 = *v121;
    do
    {
      v40 = 0;
      do
      {
        if (*v121 != v39)
        {
          objc_enumerationMutation(v34);
        }

        v41 = *(*(&v120 + 1) + 8 * v40);
        v42 = objc_msgSend_null(MEMORY[0x277CBEB68], v36, v37);
        isEqual = objc_msgSend_isEqual_(v41, v43, v42);

        if ((isEqual & 1) == 0)
        {
          v45 = objc_msgSend_bufferIndex(v41, v36, v37);
          if (v45 > objc_msgSend_count(v9, v46, v47))
          {
            v48 = MEMORY[0x277CBEAD8];
            v49 = objc_opt_class();
            v50 = NSStringFromClass(v49);
            v51 = NSStringFromSelector(a2);
            objc_msgSend_raise_format_(v48, v52, @"ModelIOException", @"[%@ %@]: Buffer index out of range", v50, v51);
          }
        }

        ++v40;
      }

      while (v38 != v40);
      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v120, v129, 16);
    }

    while (v38);
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v53 = v9;
  v55 = 0;
  v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v116, v128, 16);
  if (v58)
  {
    v59 = *v117;
    do
    {
      v60 = 0;
      do
      {
        if (*v117 != v59)
        {
          objc_enumerationMutation(v53);
        }

        if (!v55)
        {
          v61 = *(*(&v116 + 1) + 8 * v60);
          v62 = objc_msgSend_null(MEMORY[0x277CBEB68], v56, v57);
          if (objc_msgSend_isEqual_(v61, v63, v62))
          {
          }

          else
          {
            v66 = objc_msgSend_allocator(v61, v64, v65);
            v67 = v66 == 0;

            if (!v67)
            {
              v55 = objc_msgSend_allocator(v61, v56, v57);
              goto LABEL_35;
            }
          }

          v55 = 0;
        }

LABEL_35:
        ++v60;
      }

      while (v58 != v60);
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v116, v128, 16);
    }

    while (v58);
  }

  for (i = 0; objc_msgSend_count(v53, v68, v69) > i; ++i)
  {
    v72 = objc_msgSend_objectAtIndexedSubscript_(v53, v71, i);
    v75 = objc_msgSend_null(MEMORY[0x277CBEB68], v73, v74);
    v77 = objc_msgSend_isEqual_(v72, v76, v75);

    if ((v77 & 1) == 0)
    {
      v78 = objc_msgSend_objectAtIndexedSubscript_(v53, v68, i);
      v81 = objc_msgSend_allocator(v78, v79, v80);
      v82 = v81 == v55;

      if (!v82)
      {
        v83 = MEMORY[0x277CBEAD8];
        v84 = objc_opt_class();
        v85 = NSStringFromClass(v84);
        v86 = NSStringFromSelector(a2);
        objc_msgSend_raise_format_(v83, v87, @"ModelIOException", @"[%@ %@]: Allocators on supplied vertexBuffers do not all match, but they must", v85, v86);
      }
    }
  }

  v115.receiver = self;
  v115.super_class = MDLMesh;
  v88 = [(MDLObject *)&v115 init];
  v89 = v88;
  if (v88)
  {
    __asm { FMOV            V1.4S, #-1.0 }

    *v88->_anon_50 = _Q1;
    *&v88->_anon_50[16] = 0u;
    objc_storeStrong(&v88->_allocator, v55);
    v89->_vertexCount = vertexCount;
    v95 = objc_alloc(MEMORY[0x277CBEB18]);
    v97 = objc_msgSend_initWithArray_(v95, v96, v53);
    v98 = v89->_vertexBuffers;
    v89->_vertexBuffers = v97;

    v99 = MEMORY[0x23EE7E350]();
    v101 = objc_msgSend_copyWithZone_(v112, v100, v99);
    vertexDescriptor = v89->_vertexDescriptor;
    v89->_vertexDescriptor = v101;

    v103 = objc_alloc(MEMORY[0x277CBEB18]);
    v105 = objc_msgSend_initWithArray_(v103, v104, v111);
    v106 = v89->_submeshes;
    v89->_submeshes = v105;

    v107 = v89;
  }

  v108 = *MEMORY[0x277D85DE8];
  return v89;
}

- (MDLVertexAttributeData)vertexAttributeDataForAttributeNamed:(NSString *)name
{
  v4 = name;
  v6 = objc_msgSend_attributeNamed_(self->_vertexDescriptor, v5, v4);
  if (v6)
  {
    v7 = objc_alloc_init(MDLVertexAttributeData);
    v10 = objc_msgSend_bufferIndex(v6, v8, v9);
    v12 = objc_msgSend_objectAtIndexedSubscript_(self->_vertexBuffers, v11, v10);
    v15 = objc_msgSend_map(v12, v13, v14);
    map = v7->_map;
    v7->_map = v15;

    v19 = objc_msgSend_layouts(self->_vertexDescriptor, v17, v18);
    v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, v10);
    v7->_stride = objc_msgSend_stride(v21, v22, v23);

    v26 = objc_msgSend_map(v7, v24, v25);
    v29 = objc_msgSend_bytes(v26, v27, v28);
    v7->_dataStart = (v29 + objc_msgSend_offset(v6, v30, v31));

    v7->_format = objc_msgSend_format(v6, v32, v33);
    v35 = objc_msgSend_objectAtIndexedSubscript_(self->_vertexBuffers, v34, v10);
    v7->_bufferSize = objc_msgSend_length(v35, v36, v37);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)createSourceDataVector:(void *)vector attr:(id)attr srcElementCount:(int)count dstElementCount:(int)elementCount
{
  attrCopy = attr;
  *(vector + 1) = *vector;
  sub_239E95D48(vector, self->_vertexCount * elementCount);
  v185 = objc_msgSend_dataStart(attrCopy, v11, v12);
  v15 = objc_msgSend_format(attrCopy, v13, v14);
  if (v15 > 458752)
  {
    if (v15 > 655360)
    {
      if ((v15 - 655361) < 4)
      {
        if (self->_vertexCount)
        {
          v115 = 0;
          v116 = elementCount - count;
          if (elementCount >= count)
          {
            elementCountCopy = count;
          }

          else
          {
            elementCountCopy = elementCount;
          }

          v118 = 4 * elementCountCopy - 4;
          v119 = elementCountCopy;
          v120 = v116;
          do
          {
            v121 = objc_msgSend_stride(attrCopy, v16, v17);
            if (v118 + v121 * v115 < objc_msgSend_bufferSize(attrCopy, v122, v123))
            {
              v124 = objc_msgSend_stride(attrCopy, v16, v17);
              if (v119 < 1)
              {
                v128 = 0;
              }

              else
              {
                v125 = (v185 + v124 * v115);
                v126 = v119;
                do
                {
                  v127 = *v125++;
                  v186 = v127;
                  sub_239E798A4(vector, &v186);
                  --v126;
                }

                while (v126);
                v128 = v119;
              }

              while (v128 < v120)
              {
                v186 = 0.0;
                sub_239E798A4(vector, &v186);
                ++v128;
              }
            }

            ++v115;
          }

          while (v115 < self->_vertexCount);
        }
      }

      else if ((v15 - 720897) < 4)
      {
        if (self->_vertexCount)
        {
          v171 = 0;
          v172 = elementCount - count;
          if (elementCount >= count)
          {
            elementCountCopy2 = count;
          }

          else
          {
            elementCountCopy2 = elementCount;
          }

          v174 = 2 * elementCountCopy2 - 2;
          v175 = elementCountCopy2;
          v176 = v172;
          do
          {
            v177 = objc_msgSend_stride(attrCopy, v16, v17);
            if (v174 + v177 * v171 < objc_msgSend_bufferSize(attrCopy, v178, v179))
            {
              v180 = objc_msgSend_stride(attrCopy, v16, v17);
              if (v175 < 1)
              {
                v184 = 0;
              }

              else
              {
                v181 = (v185 + v180 * v171);
                v182 = v175;
                do
                {
                  v183 = *v181++;
                  v186 = sub_239F5E87C(v183);
                  sub_239E798A4(vector, &v186);
                  --v182;
                }

                while (v182);
                v184 = v175;
              }

              while (v184 < v176)
              {
                v186 = 0.0;
                sub_239E798A4(vector, &v186);
                ++v184;
              }
            }

            ++v171;
          }

          while (v171 < self->_vertexCount);
        }
      }

      else if ((v15 - 786433) < 4 && self->_vertexCount)
      {
        v60 = 0;
        v61 = elementCount - count;
        if (elementCount >= count)
        {
          elementCountCopy3 = count;
        }

        else
        {
          elementCountCopy3 = elementCount;
        }

        v63 = 4 * elementCountCopy3 - 4;
        v64 = elementCountCopy3;
        v65 = v61;
        do
        {
          v66 = objc_msgSend_stride(attrCopy, v16, v17);
          if (v63 + v66 * v60 < objc_msgSend_bufferSize(attrCopy, v67, v68))
          {
            v69 = objc_msgSend_stride(attrCopy, v16, v17);
            if (v64 < 1)
            {
              v72 = 0;
            }

            else
            {
              v70 = (v185 + v69 * v60);
              v71 = v64;
              do
              {
                v186 = *v70;
                sub_239E798A4(vector, &v186);
                ++v70;
                --v71;
              }

              while (v71);
              v72 = v64;
            }

            while (v72 < v65)
            {
              v186 = 0.0;
              sub_239E798A4(vector, &v186);
              ++v72;
            }
          }

          ++v60;
        }

        while (v60 < self->_vertexCount);
      }
    }

    else if ((v15 - 458753) < 4)
    {
      if (self->_vertexCount)
      {
        v87 = 0;
        v88 = elementCount - count;
        if (elementCount >= count)
        {
          elementCountCopy4 = count;
        }

        else
        {
          elementCountCopy4 = elementCount;
        }

        v90 = 2 * elementCountCopy4 - 2;
        v91 = elementCountCopy4;
        v92 = v88;
        do
        {
          v93 = objc_msgSend_stride(attrCopy, v16, v17);
          if (v90 + v93 * v87 < objc_msgSend_bufferSize(attrCopy, v94, v95))
          {
            v96 = objc_msgSend_stride(attrCopy, v16, v17);
            if (v91 < 1)
            {
              v100 = 0;
            }

            else
            {
              v97 = (v185 + v96 * v87);
              v98 = v91;
              do
              {
                v99 = *v97++;
                v186 = v99 * 0.000015259;
                sub_239E798A4(vector, &v186);
                --v98;
              }

              while (v98);
              v100 = v91;
            }

            while (v100 < v92)
            {
              v186 = 0.0;
              sub_239E798A4(vector, &v186);
              ++v100;
            }
          }

          ++v87;
        }

        while (v87 < self->_vertexCount);
      }
    }

    else if ((v15 - 524289) < 4)
    {
      if (self->_vertexCount)
      {
        v143 = 0;
        v144 = elementCount - count;
        if (elementCount >= count)
        {
          elementCountCopy5 = count;
        }

        else
        {
          elementCountCopy5 = elementCount;
        }

        v146 = 2 * elementCountCopy5 - 2;
        v147 = elementCountCopy5;
        v148 = v144;
        do
        {
          v149 = objc_msgSend_stride(attrCopy, v16, v17);
          if (v146 + v149 * v143 < objc_msgSend_bufferSize(attrCopy, v150, v151))
          {
            v152 = objc_msgSend_stride(attrCopy, v16, v17);
            if (v147 < 1)
            {
              v156 = 0;
            }

            else
            {
              v153 = (v185 + v152 * v143);
              v154 = v147;
              do
              {
                v155 = *v153++;
                v186 = v155 * 0.000030519;
                sub_239E798A4(vector, &v186);
                --v154;
              }

              while (v154);
              v156 = v147;
            }

            while (v156 < v148)
            {
              v186 = 0.0;
              sub_239E798A4(vector, &v186);
              ++v156;
            }
          }

          ++v143;
        }

        while (v143 < self->_vertexCount);
      }
    }

    else if ((v15 - 589825) < 4 && self->_vertexCount)
    {
      v32 = 0;
      v33 = elementCount - count;
      if (elementCount >= count)
      {
        elementCountCopy6 = count;
      }

      else
      {
        elementCountCopy6 = elementCount;
      }

      v35 = 4 * elementCountCopy6 - 4;
      v36 = elementCountCopy6;
      v37 = v33;
      do
      {
        v38 = objc_msgSend_stride(attrCopy, v16, v17);
        if (v35 + v38 * v32 < objc_msgSend_bufferSize(attrCopy, v39, v40))
        {
          v41 = objc_msgSend_stride(attrCopy, v16, v17);
          if (v36 < 1)
          {
            v45 = 0;
          }

          else
          {
            v42 = (v185 + v41 * v32);
            v43 = v36;
            do
            {
              v44 = *v42++;
              v186 = v44;
              sub_239E798A4(vector, &v186);
              --v43;
            }

            while (v43);
            v45 = v36;
          }

          while (v45 < v37)
          {
            v186 = 0.0;
            sub_239E798A4(vector, &v186);
            ++v45;
          }
        }

        ++v32;
      }

      while (v32 < self->_vertexCount);
    }
  }

  else if (v15 > 0x40000)
  {
    if ((v15 - 262145) < 4)
    {
      if (self->_vertexCount)
      {
        v101 = 0;
        v102 = elementCount - count;
        if (elementCount >= count)
        {
          elementCountCopy7 = count;
        }

        else
        {
          elementCountCopy7 = elementCount;
        }

        v104 = elementCountCopy7 - 1;
        v105 = elementCountCopy7;
        v106 = v102;
        do
        {
          v107 = objc_msgSend_stride(attrCopy, v16, v17);
          if (v104 + v107 * v101 < objc_msgSend_bufferSize(attrCopy, v108, v109))
          {
            v110 = objc_msgSend_stride(attrCopy, v16, v17);
            if (v105 < 1)
            {
              v114 = 0;
            }

            else
            {
              v111 = (v185 + v110 * v101);
              v112 = v105;
              do
              {
                v113 = *v111++;
                v186 = v113 * 0.007874;
                sub_239E798A4(vector, &v186);
                --v112;
              }

              while (v112);
              v114 = v105;
            }

            while (v114 < v106)
            {
              v186 = 0.0;
              sub_239E798A4(vector, &v186);
              ++v114;
            }
          }

          ++v101;
        }

        while (v101 < self->_vertexCount);
      }
    }

    else if ((v15 - 327681) < 4)
    {
      if (self->_vertexCount)
      {
        v157 = 0;
        v158 = elementCount - count;
        if (elementCount >= count)
        {
          elementCountCopy8 = count;
        }

        else
        {
          elementCountCopy8 = elementCount;
        }

        v160 = 2 * elementCountCopy8 - 2;
        v161 = elementCountCopy8;
        v162 = v158;
        do
        {
          v163 = objc_msgSend_stride(attrCopy, v16, v17);
          if (v160 + v163 * v157 < objc_msgSend_bufferSize(attrCopy, v164, v165))
          {
            v166 = objc_msgSend_stride(attrCopy, v16, v17);
            if (v161 < 1)
            {
              v170 = 0;
            }

            else
            {
              v167 = (v185 + v166 * v157);
              v168 = v161;
              do
              {
                v169 = *v167++;
                v186 = v169;
                sub_239E798A4(vector, &v186);
                --v168;
              }

              while (v168);
              v170 = v161;
            }

            while (v170 < v162)
            {
              v186 = 0.0;
              sub_239E798A4(vector, &v186);
              ++v170;
            }
          }

          ++v157;
        }

        while (v157 < self->_vertexCount);
      }
    }

    else if ((v15 - 393217) < 4 && self->_vertexCount)
    {
      v46 = 0;
      v47 = elementCount - count;
      if (elementCount >= count)
      {
        elementCountCopy9 = count;
      }

      else
      {
        elementCountCopy9 = elementCount;
      }

      v49 = 2 * elementCountCopy9 - 2;
      v50 = elementCountCopy9;
      v51 = v47;
      do
      {
        v52 = objc_msgSend_stride(attrCopy, v16, v17);
        if (v49 + v52 * v46 < objc_msgSend_bufferSize(attrCopy, v53, v54))
        {
          v55 = objc_msgSend_stride(attrCopy, v16, v17);
          if (v50 < 1)
          {
            v59 = 0;
          }

          else
          {
            v56 = (v185 + v55 * v46);
            v57 = v50;
            do
            {
              v58 = *v56++;
              v186 = v58;
              sub_239E798A4(vector, &v186);
              --v57;
            }

            while (v57);
            v59 = v50;
          }

          while (v59 < v51)
          {
            v186 = 0.0;
            sub_239E798A4(vector, &v186);
            ++v59;
          }
        }

        ++v46;
      }

      while (v46 < self->_vertexCount);
    }
  }

  else if ((v15 - 65537) < 4)
  {
    if (self->_vertexCount)
    {
      v73 = 0;
      v74 = elementCount - count;
      if (elementCount >= count)
      {
        elementCountCopy10 = count;
      }

      else
      {
        elementCountCopy10 = elementCount;
      }

      v76 = elementCountCopy10 - 1;
      v77 = elementCountCopy10;
      v78 = v74;
      do
      {
        v79 = objc_msgSend_stride(attrCopy, v16, v17);
        if (v76 + v79 * v73 < objc_msgSend_bufferSize(attrCopy, v80, v81))
        {
          v82 = objc_msgSend_stride(attrCopy, v16, v17);
          if (v77 < 1)
          {
            v86 = 0;
          }

          else
          {
            v83 = (v185 + v82 * v73);
            v84 = v77;
            do
            {
              v85 = *v83++;
              v186 = v85;
              sub_239E798A4(vector, &v186);
              --v84;
            }

            while (v84);
            v86 = v77;
          }

          while (v86 < v78)
          {
            v186 = 0.0;
            sub_239E798A4(vector, &v186);
            ++v86;
          }
        }

        ++v73;
      }

      while (v73 < self->_vertexCount);
    }
  }

  else if ((v15 - 131073) < 4)
  {
    if (self->_vertexCount)
    {
      v129 = 0;
      v130 = elementCount - count;
      if (elementCount >= count)
      {
        elementCountCopy11 = count;
      }

      else
      {
        elementCountCopy11 = elementCount;
      }

      v132 = elementCountCopy11 - 1;
      v133 = elementCountCopy11;
      v134 = v130;
      do
      {
        v135 = objc_msgSend_stride(attrCopy, v16, v17);
        if (v132 + v135 * v129 < objc_msgSend_bufferSize(attrCopy, v136, v137))
        {
          v138 = objc_msgSend_stride(attrCopy, v16, v17);
          if (v133 < 1)
          {
            v142 = 0;
          }

          else
          {
            v139 = (v185 + v138 * v129);
            v140 = v133;
            do
            {
              v141 = *v139++;
              v186 = v141;
              sub_239E798A4(vector, &v186);
              --v140;
            }

            while (v140);
            v142 = v133;
          }

          while (v142 < v134)
          {
            v186 = 0.0;
            sub_239E798A4(vector, &v186);
            ++v142;
          }
        }

        ++v129;
      }

      while (v129 < self->_vertexCount);
    }
  }

  else if ((v15 - 196609) < 4 && self->_vertexCount)
  {
    v18 = 0;
    v19 = elementCount - count;
    if (elementCount >= count)
    {
      elementCountCopy12 = count;
    }

    else
    {
      elementCountCopy12 = elementCount;
    }

    v21 = elementCountCopy12 - 1;
    v22 = elementCountCopy12;
    v23 = v19;
    do
    {
      v24 = objc_msgSend_stride(attrCopy, v16, v17);
      if (v21 + v24 * v18 < objc_msgSend_bufferSize(attrCopy, v25, v26))
      {
        v27 = objc_msgSend_stride(attrCopy, v16, v17);
        if (v22 < 1)
        {
          v31 = 0;
        }

        else
        {
          v28 = (v185 + v27 * v18);
          v29 = v22;
          do
          {
            v30 = *v28++;
            v186 = v30 * 0.0039216;
            sub_239E798A4(vector, &v186);
            --v29;
          }

          while (v29);
          v31 = v22;
        }

        while (v31 < v23)
        {
          v186 = 0.0;
          sub_239E798A4(vector, &v186);
          ++v31;
        }
      }

      ++v18;
    }

    while (v18 < self->_vertexCount);
  }
}

- (void)copyDataVector:(void *)vector toAttr:(id)attr
{
  attrCopy = attr;
  if (vector && attrCopy)
  {
    v230 = attrCopy;
    v8 = objc_msgSend_format(attrCopy, v6, v7);
    v13 = v8 & 0xF;
    v229 = *(vector + 1) - *vector;
    if ((~objc_msgSend_format(v230, v9, v10) & 0xC0000) != 0)
    {
      if ((~objc_msgSend_format(v230, v11, v12) & 0xB0000) != 0)
      {
        if ((objc_msgSend_format(v230, v29, v30) & 0x10000) != 0)
        {
          attrCopy = v230;
          if (*(vector + 1) != *vector)
          {
            v68 = 0;
            v69 = 0;
            v70 = v8 & 0xF;
            v71 = v13 - 1;
            if ((v8 & 0xE) != 0)
            {
              v72 = v8 & 0xF;
            }

            else
            {
              v72 = 1;
            }

            do
            {
              v73 = objc_msgSend_stride(attrCopy, v45, v46);
              v59 = v71 + v73 * (v69 / v70) >= objc_msgSend_bufferSize(v230, v74, v75);
              attrCopy = v230;
              if (!v59 && v229 > 4 * (v69 + v71))
              {
                v76 = objc_msgSend_dataStart(v230, v45, v46);
                v79 = (v76 + objc_msgSend_stride(v230, v77, v78) * (v69 / v70));
                v80 = v68;
                v81 = v72;
                attrCopy = v230;
                do
                {
                  v82 = *(*vector + v80);
                  if (v82 >= 0.0)
                  {
                    if (v82 <= 255.0)
                    {
                      v83 = v82;
                    }

                    else
                    {
                      LOBYTE(v83) = -1;
                    }
                  }

                  else
                  {
                    LOBYTE(v83) = 0;
                  }

                  *v79++ = v83;
                  v80 += 4;
                  --v81;
                }

                while (v81);
              }

              v69 += v70;
              v68 += 4 * v70;
            }

            while (v69 < (*(vector + 1) - *vector) >> 2);
          }
        }

        else if ((objc_msgSend_format(v230, v45, v46) & 0x20000) != 0)
        {
          attrCopy = v230;
          if (*(vector + 1) != *vector)
          {
            v84 = 0;
            v85 = 0;
            v86 = v8 & 0xF;
            v87 = v13 - 1;
            if ((v8 & 0xE) != 0)
            {
              v88 = v8 & 0xF;
            }

            else
            {
              v88 = 1;
            }

            v228 = v88;
            do
            {
              v89 = objc_msgSend_stride(attrCopy, v47, v48);
              v59 = v87 + v89 * (v85 / v86) >= objc_msgSend_bufferSize(v230, v90, v91);
              attrCopy = v230;
              if (!v59 && v229 > 4 * (v85 + v87))
              {
                v92 = objc_msgSend_dataStart(v230, v47, v48);
                v95 = (v92 + objc_msgSend_stride(v230, v93, v94) * (v85 / v86));
                v96 = v84;
                v97 = v228;
                attrCopy = v230;
                do
                {
                  v98 = *(*vector + v96);
                  if (v98 >= -127.0)
                  {
                    if (v98 <= 127.0)
                    {
                      v99 = v98;
                    }

                    else
                    {
                      LOBYTE(v99) = 127;
                    }
                  }

                  else
                  {
                    LOBYTE(v99) = -127;
                  }

                  *v95++ = v99;
                  v96 += 4;
                  --v97;
                }

                while (v97);
              }

              v85 += v86;
              v84 += 4 * v86;
            }

            while (v85 < (*(vector + 1) - *vector) >> 2);
          }
        }

        else if ((~objc_msgSend_format(v230, v47, v48) & 0x30000) != 0)
        {
          if ((objc_msgSend_format(v230, v49, v50) & 0x40000) != 0)
          {
            attrCopy = v230;
            if (*(vector + 1) != *vector)
            {
              v120 = 0;
              v121 = 0;
              v122 = v8 & 0xF;
              v123 = v13 - 1;
              if ((v8 & 0xE) != 0)
              {
                v124 = v8 & 0xF;
              }

              else
              {
                v124 = 1;
              }

              do
              {
                v125 = objc_msgSend_stride(attrCopy, v100, v101);
                v59 = v123 + v125 * (v121 / v122) >= objc_msgSend_bufferSize(v230, v126, v127);
                attrCopy = v230;
                if (!v59 && v229 > 4 * (v121 + v123))
                {
                  v128 = objc_msgSend_dataStart(v230, v100, v101);
                  v131 = (v128 + objc_msgSend_stride(v230, v129, v130) * (v121 / v122));
                  v132 = v120;
                  v133 = v124;
                  attrCopy = v230;
                  do
                  {
                    v134 = *(*vector + v132);
                    if (v134 >= -1.0)
                    {
                      if (v134 <= 1.0)
                      {
                        v135 = (v134 * 127.0);
                      }

                      else
                      {
                        LOBYTE(v135) = 127;
                      }
                    }

                    else
                    {
                      LOBYTE(v135) = -127;
                    }

                    *v131++ = v135;
                    v132 += 4;
                    --v133;
                  }

                  while (v133);
                }

                v121 += v122;
                v120 += 4 * v122;
              }

              while (v121 < (*(vector + 1) - *vector) >> 2);
            }
          }

          else if ((~objc_msgSend_format(v230, v100, v101) & 0x50000) != 0)
          {
            if ((~objc_msgSend_format(v230, v102, v103) & 0x60000) != 0)
            {
              if ((~objc_msgSend_format(v230, v136, v137) & 0x70000) != 0)
              {
                if ((objc_msgSend_format(v230, v154, v155) & 0x80000) != 0)
                {
                  attrCopy = v230;
                  if (*(vector + 1) != *vector)
                  {
                    v191 = 0;
                    v192 = 0;
                    v193 = v13 - 1;
                    v194 = v8 & 0xF;
                    v195 = v193;
                    v196 = 2 * v193;
                    if ((v8 & 0xE) != 0)
                    {
                      v197 = v8 & 0xF;
                    }

                    else
                    {
                      v197 = 1;
                    }

                    do
                    {
                      v198 = objc_msgSend_stride(attrCopy, v172, v173);
                      v59 = v196 + v198 * (v192 / v194) >= objc_msgSend_bufferSize(v230, v199, v200);
                      attrCopy = v230;
                      if (!v59 && v229 > 4 * (v192 + v195))
                      {
                        v201 = objc_msgSend_dataStart(v230, v172, v173);
                        v204 = (v201 + objc_msgSend_stride(v230, v202, v203) * (v192 / v194));
                        v205 = (*vector + v191);
                        v206 = v197;
                        attrCopy = v230;
                        do
                        {
                          v207 = *v205;
                          if (*v205 >= -1.0)
                          {
                            if (v207 <= 1.0)
                            {
                              v208 = (v207 * 32767.0);
                            }

                            else
                            {
                              LOWORD(v208) = 0x7FFF;
                            }
                          }

                          else
                          {
                            LOWORD(v208) = -32767;
                          }

                          *v204++ = v208;
                          ++v205;
                          --v206;
                        }

                        while (v206);
                      }

                      v192 += v194;
                      v191 += 4 * v194;
                    }

                    while (v192 < (*(vector + 1) - *vector) >> 2);
                  }
                }

                else if ((~objc_msgSend_format(v230, v172, v173) & 0x90000) != 0)
                {
                  v211 = ~objc_msgSend_format(v230, v174, v175);
                  attrCopy = v230;
                  if ((*&v211 & 0xA0000) == 0 && *(vector + 1) != *vector)
                  {
                    v212 = 0;
                    v213 = 0;
                    v214 = v8 & 0xF;
                    v215 = v13 - 1;
                    if ((v8 & 0xE) != 0)
                    {
                      v216 = v8 & 0xF;
                    }

                    else
                    {
                      v216 = 1;
                    }

                    do
                    {
                      v217 = objc_msgSend_stride(attrCopy, v209, v210);
                      if (4 * v215 + v217 * (v213 / v214) < objc_msgSend_bufferSize(v230, v218, v219) && v229 > 4 * (v213 + v215))
                      {
                        v220 = objc_msgSend_dataStart(v230, v209, v210);
                        v223 = (v220 + objc_msgSend_stride(v230, v221, v222) * (v213 / v214));
                        v224 = (*vector + v212);
                        v225 = v216;
                        do
                        {
                          v226 = *v224++;
                          *v223++ = v226;
                          --v225;
                        }

                        while (v225);
                      }

                      v213 += v214;
                      v212 += 4 * v214;
                      attrCopy = v230;
                    }

                    while (v213 < (*(vector + 1) - *vector) >> 2);
                  }
                }

                else
                {
                  attrCopy = v230;
                  if (*(vector + 1) != *vector)
                  {
                    v176 = 0;
                    v177 = 0;
                    v178 = v8 & 0xF;
                    v179 = v13 - 1;
                    if ((v8 & 0xE) != 0)
                    {
                      v180 = v8 & 0xF;
                    }

                    else
                    {
                      v180 = 1;
                    }

                    do
                    {
                      v181 = objc_msgSend_stride(attrCopy, v174, v175);
                      if (4 * v179 + v181 * (v177 / v178) < objc_msgSend_bufferSize(v230, v182, v183) && v229 > 4 * (v177 + v179))
                      {
                        v184 = objc_msgSend_dataStart(v230, v174, v175);
                        v187 = (v184 + objc_msgSend_stride(v230, v185, v186) * (v177 / v178));
                        v188 = (*vector + v176);
                        v189 = v180;
                        do
                        {
                          v190 = *v188++;
                          *v187++ = fmaxf(v190, 0.0);
                          --v189;
                        }

                        while (v189);
                      }

                      v177 += v178;
                      v176 += 4 * v178;
                      attrCopy = v230;
                    }

                    while (v177 < (*(vector + 1) - *vector) >> 2);
                  }
                }
              }

              else
              {
                attrCopy = v230;
                if (*(vector + 1) != *vector)
                {
                  v156 = 0;
                  v157 = 0;
                  v158 = v8 & 0xF;
                  v159 = v13 - 1;
                  if ((v8 & 0xE) != 0)
                  {
                    v160 = v8 & 0xF;
                  }

                  else
                  {
                    v160 = 1;
                  }

                  do
                  {
                    v161 = objc_msgSend_stride(attrCopy, v154, v155);
                    v59 = 2 * v159 + v161 * (v157 / v158) >= objc_msgSend_bufferSize(v230, v162, v163);
                    attrCopy = v230;
                    if (!v59 && v229 > 4 * (v157 + v159))
                    {
                      v164 = objc_msgSend_dataStart(v230, v154, v155);
                      v167 = (v164 + objc_msgSend_stride(v230, v165, v166) * (v157 / v158));
                      v169 = (*vector + v156);
                      v170 = v160;
                      attrCopy = v230;
                      do
                      {
                        v171 = *v169;
                        if (*v169 >= 0.0)
                        {
                          if (v171 <= 1.0)
                          {
                            v168 = (v171 * 65535.0);
                          }
                        }

                        else
                        {
                          LOWORD(v168) = 0;
                        }

                        *v167++ = v168;
                        ++v169;
                        --v170;
                      }

                      while (v170);
                    }

                    v157 += v158;
                    v156 += 4 * v158;
                  }

                  while (v157 < (*(vector + 1) - *vector) >> 2);
                }
              }
            }

            else
            {
              attrCopy = v230;
              if (*(vector + 1) != *vector)
              {
                v138 = 0;
                v139 = 0;
                v140 = v8 & 0xF;
                v141 = v13 - 1;
                if ((v8 & 0xE) != 0)
                {
                  v142 = v8 & 0xF;
                }

                else
                {
                  v142 = 1;
                }

                do
                {
                  v143 = objc_msgSend_stride(attrCopy, v136, v137);
                  v59 = 2 * v141 + v143 * (v139 / v140) >= objc_msgSend_bufferSize(v230, v144, v145);
                  attrCopy = v230;
                  if (!v59 && v229 > 4 * (v139 + v141))
                  {
                    v146 = objc_msgSend_dataStart(v230, v136, v137);
                    v149 = (v146 + objc_msgSend_stride(v230, v147, v148) * (v139 / v140));
                    v150 = (*vector + v138);
                    v151 = v142;
                    attrCopy = v230;
                    do
                    {
                      v152 = *v150;
                      if (*v150 >= 0.0)
                      {
                        if (v152 <= 32767.0)
                        {
                          v153 = v152;
                        }

                        else
                        {
                          LOWORD(v153) = 0x7FFF;
                        }
                      }

                      else
                      {
                        LOWORD(v153) = 0;
                      }

                      *v149++ = v153;
                      ++v150;
                      --v151;
                    }

                    while (v151);
                  }

                  v139 += v140;
                  v138 += 4 * v140;
                }

                while (v139 < (*(vector + 1) - *vector) >> 2);
              }
            }
          }

          else
          {
            attrCopy = v230;
            if (*(vector + 1) != *vector)
            {
              v104 = 0;
              v105 = 0;
              v106 = v8 & 0xF;
              v107 = v13 - 1;
              if ((v8 & 0xE) != 0)
              {
                v108 = v8 & 0xF;
              }

              else
              {
                v108 = 1;
              }

              do
              {
                v109 = objc_msgSend_stride(attrCopy, v102, v103);
                v59 = 2 * v107 + v109 * (v105 / v106) >= objc_msgSend_bufferSize(v230, v110, v111);
                attrCopy = v230;
                if (!v59 && v229 > 4 * (v105 + v107))
                {
                  v112 = objc_msgSend_dataStart(v230, v102, v103);
                  v115 = (v112 + objc_msgSend_stride(v230, v113, v114) * (v105 / v106));
                  v116 = (*vector + v104);
                  v117 = v108;
                  attrCopy = v230;
                  do
                  {
                    v118 = *v116;
                    if (*v116 >= 0.0)
                    {
                      if (v118 <= 65535.0)
                      {
                        v119 = v118;
                      }

                      else
                      {
                        LOWORD(v119) = -1;
                      }
                    }

                    else
                    {
                      LOWORD(v119) = 0;
                    }

                    *v115++ = v119;
                    ++v116;
                    --v117;
                  }

                  while (v117);
                }

                v105 += v106;
                v104 += 4 * v106;
              }

              while (v105 < (*(vector + 1) - *vector) >> 2);
            }
          }
        }

        else
        {
          attrCopy = v230;
          if (*(vector + 1) != *vector)
          {
            v51 = 0;
            v52 = 0;
            v53 = v8 & 0xF;
            v54 = v13 - 1;
            if ((v8 & 0xE) != 0)
            {
              v55 = v8 & 0xF;
            }

            else
            {
              v55 = 1;
            }

            do
            {
              v56 = objc_msgSend_stride(attrCopy, v49, v50);
              v59 = v54 + v56 * (v52 / v53) >= objc_msgSend_bufferSize(v230, v57, v58);
              attrCopy = v230;
              if (!v59 && v229 > 4 * (v52 + v54))
              {
                v60 = objc_msgSend_dataStart(v230, v49, v50);
                v63 = (v60 + objc_msgSend_stride(v230, v61, v62) * (v52 / v53));
                v64 = v51;
                v65 = v55;
                attrCopy = v230;
                do
                {
                  v66 = *(*vector + v64);
                  if (v66 >= 0.0)
                  {
                    if (v66 <= 1.0)
                    {
                      v67 = (v66 * 255.0);
                    }

                    else
                    {
                      LOBYTE(v67) = -1;
                    }
                  }

                  else
                  {
                    LOBYTE(v67) = 0;
                  }

                  *v63++ = v67;
                  v64 += 4;
                  --v65;
                }

                while (v65);
              }

              v52 += v53;
              v51 += 4 * v53;
            }

            while (v52 < (*(vector + 1) - *vector) >> 2);
          }
        }
      }

      else
      {
        attrCopy = v230;
        if (*(vector + 1) != *vector)
        {
          v31 = 0;
          v32 = 0;
          v33 = v8 & 0xF;
          v34 = v13 - 1;
          if ((v8 & 0xE) != 0)
          {
            v35 = v8 & 0xF;
          }

          else
          {
            v35 = 1;
          }

          v227 = v35;
          do
          {
            v36 = objc_msgSend_stride(attrCopy, v29, v30);
            if (2 * v34 + v36 * (v32 / v33) < objc_msgSend_bufferSize(v230, v37, v38) && v229 > 4 * (v32 + v34))
            {
              v39 = objc_msgSend_dataStart(v230, v29, v30);
              v42 = (v39 + objc_msgSend_stride(v230, v40, v41) * (v32 / v33));
              v43 = v31;
              v44 = v227;
              do
              {
                *v42++ = sub_239F5E8F8(*(*vector + v43));
                v43 += 4;
                --v44;
              }

              while (v44);
            }

            v32 += v33;
            v31 += 4 * v33;
            attrCopy = v230;
          }

          while (v32 < (*(vector + 1) - *vector) >> 2);
        }
      }
    }

    else
    {
      attrCopy = v230;
      if (*(vector + 1) != *vector)
      {
        v14 = 0;
        v15 = 0;
        v16 = v8 & 0xF;
        v17 = v13 - 1;
        if ((v8 & 0xE) != 0)
        {
          v18 = v8 & 0xF;
        }

        else
        {
          v18 = 1;
        }

        do
        {
          v19 = objc_msgSend_stride(attrCopy, v11, v12);
          if (4 * v17 + v19 * (v15 / v16) < objc_msgSend_bufferSize(v230, v20, v21) && v229 > 4 * (v15 + v17))
          {
            v22 = objc_msgSend_dataStart(v230, v11, v12);
            v25 = (v22 + objc_msgSend_stride(v230, v23, v24) * (v15 / v16));
            v26 = (*vector + v14);
            v27 = v18;
            do
            {
              v28 = *v26++;
              *v25++ = v28;
              --v27;
            }

            while (v27);
          }

          v15 += v16;
          v14 += 4 * v16;
          attrCopy = v230;
        }

        while (v15 < (*(vector + 1) - *vector) >> 2);
      }
    }
  }
}

- (MDLVertexAttributeData)vertexAttributeDataForAttributeNamed:(NSString *)name asFormat:(MDLVertexFormat)format
{
  v6 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, a2, name);
  v9 = v6;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_106;
  }

  if (objc_msgSend_format(v6, v7, v8) == format)
  {
    v12 = v9;
    goto LABEL_106;
  }

  v13 = objc_msgSend_format(v9, v10, v11);
  if ((~format & 0xB0000) != 0)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (format >= (MDLVertexFormatShort4Normalized|0x1))
  {
    v16 = v15;
  }

  else
  {
    v16 = 2;
  }

  if (format >= (MDLVertexFormatChar4Normalized|0x1))
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  __p = 0;
  v62 = 0;
  v63 = 0;
  objc_msgSend_createSourceDataVector_attr_srcElementCount_dstElementCount_(self, v14, &__p, v9, v13 & 0xF, format & 0xF);
  v55 = objc_opt_new();
  v18 = v17 * (format & 0xF);
  v19 = self->_vertexCount * v18;
  v57 = 0;
  v58 = &v57;
  v59 = *"";
  v60 = malloc_type_malloc(v19, 0x9B41CC08uLL);
  v20 = [MDLMeshBufferMap alloc];
  v21 = v58[3];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_239F3C394;
  v56[3] = &unk_278B40FA8;
  v56[4] = &v57;
  v23 = objc_msgSend_initWithBytes_deallocator_(v20, v22, v21, v56);
  objc_storeStrong((v55 + 8), v23);
  *(v55 + 24) = v18;
  v26 = objc_msgSend_map(v55, v24, v25);
  *(v55 + 16) = objc_msgSend_bytes(v26, v27, v28);

  *(v55 + 32) = format;
  *(v55 + 40) = v19;
  if (v62 == __p)
  {
LABEL_103:
    v12 = v55;
    goto LABEL_104;
  }

  v12 = 0;
  if (format <= MDLVertexFormatUShortNormalizedBits)
  {
    if (format <= MDLVertexFormatCharNormalizedBits)
    {
      if (format - 65537 >= 4 && format - 131073 >= 4)
      {
        v31 = format - 196608;
        goto LABEL_27;
      }

LABEL_32:
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v54 = v23;
      while (1)
      {
        if (format <= MDLVertexFormatShortBits)
        {
          if (format <= MDLVertexFormatUCharNormalizedBits)
          {
            if (format - 65537 < 4)
            {
              if (v34 < objc_msgSend_bufferSize(v55, v29, v30))
              {
                v48 = *(__p + v34);
                if (v48 >= 0.0)
                {
                  v42 = v48 <= 255.0;
                  v43 = v48;
                  v44 = -1;
                  goto LABEL_67;
                }

                goto LABEL_81;
              }
            }

            else
            {
              if (format - 131073 >= 4)
              {
                goto LABEL_82;
              }

              if (v34 < objc_msgSend_bufferSize(v55, v29, v30))
              {
                v41 = *(__p + v34);
                if (v41 >= -127.0)
                {
                  v42 = v41 <= 127.0;
                  v43 = v41;
                  v44 = 127;
LABEL_67:
                  if (!v42)
                  {
                    LOBYTE(v43) = v44;
                  }

LABEL_101:
                  *(v58[3] + v34) = v43;
                  goto LABEL_102;
                }

LABEL_72:
                LOBYTE(v43) = -127;
                goto LABEL_101;
              }
            }
          }

          else if (format - 196609 < 4)
          {
            if (v34 < objc_msgSend_bufferSize(v55, v29, v30))
            {
              v49 = *(__p + v34);
              if (v49 < 0.0)
              {
LABEL_81:
                LOBYTE(v43) = 0;
                goto LABEL_101;
              }

              if (v49 > 1.0)
              {
                LOBYTE(v43) = -1;
                goto LABEL_101;
              }

              v52 = 255.0;
LABEL_100:
              v43 = (v49 * v52);
              goto LABEL_101;
            }
          }

          else if (format - 262145 < 4)
          {
            if (v34 < objc_msgSend_bufferSize(v55, v29, v30))
            {
              v49 = *(__p + v34);
              if (v49 < -1.0)
              {
                goto LABEL_72;
              }

              if (v49 > 1.0)
              {
                LOBYTE(v43) = 127;
                goto LABEL_101;
              }

              v52 = 127.0;
              goto LABEL_100;
            }
          }

          else
          {
            if (format - 327681 >= 4)
            {
              goto LABEL_82;
            }

            if (v32 < objc_msgSend_bufferSize(v55, v29, v30))
            {
              v37 = *(__p + v34);
              if (v37 >= 0.0)
              {
                v38 = v37 <= 65535.0;
                v36 = v37;
                v39 = -1;
LABEL_89:
                if (!v38)
                {
                  LOWORD(v36) = v39;
                }

                goto LABEL_97;
              }

LABEL_61:
              LOWORD(v36) = 0;
              goto LABEL_97;
            }
          }
        }

        else if (format > MDLVertexFormatUIntBits)
        {
          if (format - 589825 < 4)
          {
            if (v33 < objc_msgSend_bufferSize(v55, v29, v30))
            {
              v46 = v58[3];
              v47 = fmaxf(*(__p + v34), 0.0);
              goto LABEL_78;
            }
          }

          else
          {
            if (format - 655361 >= 4)
            {
              if (format - 720897 < 4)
              {
                if (v32 < objc_msgSend_bufferSize(v55, v29, v30))
                {
                  v40 = v58[3];
                  *(v40 + 2 * v34) = sub_239F5E8F8(*(__p + v34));
                  v23 = v54;
                }

                goto LABEL_102;
              }

LABEL_82:
              if (v33 < objc_msgSend_bufferSize(v55, v29, v30, v54))
              {
                *(v58[3] + 4 * v34) = *(__p + v34);
              }

              goto LABEL_102;
            }

            if (v33 < objc_msgSend_bufferSize(v55, v29, v30))
            {
              v46 = v58[3];
              v47 = *(__p + v34);
LABEL_78:
              *(v46 + 4 * v34) = v47;
            }
          }
        }

        else if (format - 393217 < 4)
        {
          if (v32 < objc_msgSend_bufferSize(v55, v29, v30))
          {
            v50 = *(__p + v34);
            if (v50 >= -32767.0)
            {
              v38 = v50 <= 32767.0;
              v36 = v50;
              v39 = 0x7FFF;
              goto LABEL_89;
            }

            LOWORD(v36) = -32767;
LABEL_97:
            *(v58[3] + 2 * v34) = v36;
          }
        }

        else if (format - 458753 < 4)
        {
          if (v32 < objc_msgSend_bufferSize(v55, v29, v30))
          {
            v45 = *(__p + v34);
            if (v45 < 0.0)
            {
              goto LABEL_61;
            }

            if (v45 > 1.0)
            {
              LOWORD(v36) = -1;
              goto LABEL_97;
            }

            v51 = v45 * 65535.0;
            goto LABEL_96;
          }
        }

        else
        {
          if (format - 524289 >= 4)
          {
            goto LABEL_82;
          }

          if (v32 < objc_msgSend_bufferSize(v55, v29, v30))
          {
            v35 = *(__p + v34);
            if (v35 < 0.0)
            {
              goto LABEL_61;
            }

            if (v35 > 1.0)
            {
              LOWORD(v36) = 0x7FFF;
              goto LABEL_97;
            }

            v51 = v35 * 32767.0;
LABEL_96:
            v36 = v51;
            goto LABEL_97;
          }
        }

LABEL_102:
        ++v34;
        v33 += 4;
        v32 += 2;
        if (v34 >= (v62 - __p) >> 2)
        {
          goto LABEL_103;
        }
      }
    }

    if (format - 262145 < 4 || format - 327681 < 4)
    {
      goto LABEL_32;
    }

    v31 = format - 393216;
LABEL_27:
    if (v31 - 1 >= 4)
    {
      goto LABEL_104;
    }

    goto LABEL_32;
  }

  if (format <= MDLVertexFormatIntBits)
  {
    if (format - 458753 < 4 || format - 524289 < 4)
    {
      goto LABEL_32;
    }

    v31 = format - 589824;
    goto LABEL_27;
  }

  if (format - 655361 < 4 || format - 786433 < 4 || format - 720897 <= 3)
  {
    goto LABEL_32;
  }

LABEL_104:

  _Block_object_dispose(&v57, 8);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

LABEL_106:

  return v12;
}

- (void)replaceAttributeNamed:(NSString *)name withData:(MDLVertexAttributeData *)newData
{
  v66 = name;
  v6 = newData;
  v9 = v6;
  if (v6 && objc_msgSend_format(v6, v7, v8))
  {
    v11 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v10, v66);
    v14 = objc_msgSend_format(v9, v12, v13);
    if (v14 != objc_msgSend_format(v11, v15, v16))
    {
      objc_msgSend_removeAttributeNamed_(self, v17, v66);
      v21 = objc_msgSend_format(v9, v19, v20);
      objc_msgSend_addAttributeWithName_format_(self, v22, v66, v21);
      v24 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v23, v66);

      v11 = v24;
    }

    v25 = objc_msgSend_stride(v11, v17, v18);
    vertexCount = self->_vertexCount;
    v29 = objc_msgSend_stride(v9, v27, v28);
    if (v29 == objc_msgSend_stride(v11, v30, v31) && (v34 = vertexCount * v25, v34 <= objc_msgSend_bufferSize(v11, v32, v33)) && v34 <= objc_msgSend_bufferSize(v9, v32, v33))
    {
      v62 = objc_msgSend_dataStart(v11, v32, v33);
      v65 = objc_msgSend_dataStart(v9, v63, v64);
      memcpy(v62, v65, v34);
    }

    else
    {
      v35 = self->_vertexCount;
      if (v35)
      {
        for (i = 0; i != v35; ++i)
        {
          v37 = objc_msgSend_stride(v9, v32, v33);
          v40 = objc_msgSend_stride(v11, v38, v39);
          if (v40 + v37 * i <= objc_msgSend_bufferSize(v9, v41, v42))
          {
            v43 = objc_msgSend_stride(v11, v32, v33);
            v46 = objc_msgSend_stride(v11, v44, v45);
            if (v46 + v43 * i <= objc_msgSend_bufferSize(v11, v47, v48))
            {
              v49 = objc_msgSend_dataStart(v9, v32, v33);
              v52 = objc_msgSend_stride(v9, v50, v51);
              v55 = objc_msgSend_dataStart(v11, v53, v54);
              v58 = objc_msgSend_stride(v11, v56, v57);
              v61 = objc_msgSend_stride(v11, v59, v60);
              memcpy((v55 + v58 * i), (v49 + v52 * i), v61);
            }
          }
        }
      }
    }
  }
}

- (void)updateAttributeNamed:(NSString *)name withData:(MDLVertexAttributeData *)newData
{
  v6 = name;
  v7 = newData;
  v10 = v7;
  if (v7 && objc_msgSend_format(v7, v8, v9))
  {
    v12 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v11, v6);
    v15 = v12;
    if (v12 && objc_msgSend_format(v12, v13, v14))
    {
      v18 = objc_msgSend_stride(v15, v16, v17);
      vertexCount = self->_vertexCount;
      v22 = objc_msgSend_stride(v10, v20, v21);
      if (v22 == objc_msgSend_stride(v15, v23, v24) && (v27 = objc_msgSend_format(v10, v25, v26), v27 == objc_msgSend_format(v15, v28, v29)) && (v30 = vertexCount * v18, v30 <= objc_msgSend_bufferSize(v15, v25, v26)) && v30 <= objc_msgSend_bufferSize(v10, v25, v26))
      {
        v37 = objc_msgSend_dataStart(v15, v25, v26);
        v40 = objc_msgSend_dataStart(v10, v38, v39);
        memcpy(v37, v40, v30);
      }

      else
      {
        __p = 0;
        v42 = 0;
        v43 = 0;
        v31 = objc_msgSend_format(v10, v25, v26);
        v34 = objc_msgSend_format(v15, v32, v33);
        objc_msgSend_createSourceDataVector_attr_srcElementCount_dstElementCount_(self, v35, &__p, v10, v31 & 0xF, v34 & 0xF);
        objc_msgSend_copyDataVector_toAttr_(self, v36, &__p, v15);
        if (__p)
        {
          v42 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

- (void)removeAttributeNamed:(NSString *)name
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = name;
  v6 = objc_msgSend_attributeNamed_(self->_vertexDescriptor, v5, v4);
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_bufferIndex(v6, v7, v8);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v13 = objc_msgSend_attributes(self->_vertexDescriptor, v11, v12);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v43, v48, 16);
    if (v17)
    {
      v18 = *v44;
LABEL_4:
      v19 = 0;
      while (1)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v43 + 1) + 8 * v19);
        if (v20 != v9 && objc_msgSend_bufferIndex(v20, v15, v16) == v10)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v43, v48, 16);
          if (v17)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      objc_msgSend_removeObjectAtIndex_(self->_vertexBuffers, v21, v10);
      v24 = objc_msgSend_layouts(self->_vertexDescriptor, v22, v23);
      objc_msgSend_removeObjectAtIndex_(v24, v25, v10);

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v13 = objc_msgSend_attributes(self->_vertexDescriptor, v26, v27, 0);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v28, &v39, v47, 16);
      if (v31)
      {
        v32 = *v40;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v40 != v32)
            {
              objc_enumerationMutation(v13);
            }

            v34 = *(*(&v39 + 1) + 8 * i);
            if (objc_msgSend_bufferIndex(v34, v29, v30) > v10)
            {
              v35 = objc_msgSend_bufferIndex(v34, v29, v30);
              objc_msgSend_setBufferIndex_(v34, v36, v35 - 1);
            }
          }

          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v29, &v39, v47, 16);
        }

        while (v31);
      }
    }

    objc_msgSend_removeAttributeNamed_(self->_vertexDescriptor, v37, v4);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (int64_t)addVertexBuffer:(id)buffer
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  bufferCopy = buffer;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = selfCopy->_vertexBuffers;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v23, v27, 16);
  if (v7)
  {
    v8 = 0;
    v9 = *v24;
LABEL_3:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v3);
      }

      v12 = *(*(&v23 + 1) + 8 * v10);
      v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6, selfCopy);
      LOBYTE(v12) = objc_msgSend_isEqual_(v12, v14, v13);

      if (v12)
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v23, v27, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (v11 < 0)
    {
      goto LABEL_12;
    }

    objc_msgSend_setObject_atIndexedSubscript_(selfCopy->_vertexBuffers, v15, bufferCopy, v11);
  }

  else
  {
LABEL_9:

LABEL_12:
    v16 = selfCopy;
    objc_msgSend_addObject_(selfCopy->_vertexBuffers, v15, bufferCopy, selfCopy);
    v11 = objc_msgSend_count(v16->_vertexBuffers, v17, v18) - 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)addAttributeWithName:(NSString *)name format:(MDLVertexFormat)format
{
  v36 = name;
  v7 = objc_msgSend_attributeNamed_(self->_vertexDescriptor, v6, v36);
  v10 = v7;
  if (v7)
  {
    if (objc_msgSend_format(v7, v8, v9) == format)
    {
      goto LABEL_14;
    }

    v11 = objc_autoreleasePoolPush();
    objc_msgSend_removeAttributeNamed_(self, v12, v36);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
  }

  if (!self->_allocator)
  {
    v13 = objc_alloc_init(MDLMeshBufferDataAllocator);
    allocator = self->_allocator;
    self->_allocator = v13;
  }

  v15 = sub_239E6FF8C(format);
  v17 = objc_msgSend_newBuffer_type_(self->_allocator, v16, self->_vertexCount * v15, 1);
  if (objc_msgSend_conformsToProtocol_(v17, v18, &unk_284D24D98))
  {
    objc_msgSend_setName_(v17, v19, v36);
  }

  if (!self->_vertexBuffers)
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    vertexBuffers = self->_vertexBuffers;
    self->_vertexBuffers = v20;
  }

  v24 = objc_msgSend_addVertexBuffer_(self, v19, v17);
  vertexDescriptor = self->_vertexDescriptor;
  if (!vertexDescriptor)
  {
    v26 = objc_alloc_init(MDLVertexDescriptor);
    v27 = self->_vertexDescriptor;
    self->_vertexDescriptor = v26;

    vertexDescriptor = self->_vertexDescriptor;
  }

  v28 = objc_msgSend_layouts(vertexDescriptor, v22, v23);
  v30 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, v24);
  objc_msgSend_setStride_(v30, v31, v15);

  v32 = [MDLVertexAttribute alloc];
  v34 = objc_msgSend_initWithName_format_offset_bufferIndex_(v32, v33, v36, format, 0, v24);
  objc_msgSend_addOrReplaceAttribute_(self->_vertexDescriptor, v35, v34);

  objc_autoreleasePoolPop(v11);
LABEL_14:
}

- (void)addAttributeWithName:(NSString *)name format:(MDLVertexFormat)format type:(NSString *)type data:(NSData *)data stride:(NSInteger)stride
{
  v38 = name;
  v12 = type;
  v14 = data;
  allocator = self->_allocator;
  if (!allocator)
  {
    v16 = objc_alloc_init(MDLMeshBufferDataAllocator);
    v17 = self->_allocator;
    self->_allocator = v16;

    allocator = self->_allocator;
  }

  v19 = objc_msgSend_newBufferWithData_type_(allocator, v13, v14, 1);
  if (v19)
  {
    if (!self->_vertexBuffers)
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      vertexBuffers = self->_vertexBuffers;
      self->_vertexBuffers = v20;
    }

    v24 = objc_msgSend_addVertexBuffer_(self, v18, v19);
    vertexDescriptor = self->_vertexDescriptor;
    if (!vertexDescriptor)
    {
      v26 = objc_alloc_init(MDLVertexDescriptor);
      v27 = self->_vertexDescriptor;
      self->_vertexDescriptor = v26;

      vertexDescriptor = self->_vertexDescriptor;
    }

    v28 = objc_msgSend_layouts(vertexDescriptor, v22, v23);
    v30 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, v24);
    objc_msgSend_setStride_(v30, v31, stride);

    if (objc_msgSend_conformsToProtocol_(v19, v32, &unk_284D24D98))
    {
      objc_msgSend_setName_(v19, v33, v38);
    }

    v34 = [MDLVertexAttribute alloc];
    v36 = objc_msgSend_initWithName_format_offset_bufferIndex_(v34, v35, v12, format, 0, v24);
    objc_msgSend_addOrReplaceAttribute_(self->_vertexDescriptor, v37, v36);
  }
}

- (void)addAttributeWithName:(NSString *)name format:(MDLVertexFormat)format type:(NSString *)type data:(NSData *)data stride:(NSInteger)stride time:(NSTimeInterval)time
{
  v44 = name;
  v14 = type;
  v16 = data;
  allocator = self->_allocator;
  if (!allocator)
  {
    v18 = objc_alloc_init(MDLMeshBufferDataAllocator);
    v19 = self->_allocator;
    self->_allocator = v18;

    allocator = self->_allocator;
  }

  v21 = objc_msgSend_newBufferWithData_type_(allocator, v15, v16, 1);
  if (v21)
  {
    if (!self->_vertexBuffers)
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      vertexBuffers = self->_vertexBuffers;
      self->_vertexBuffers = v22;
    }

    v26 = objc_msgSend_addVertexBuffer_(self, v20, v21);
    vertexDescriptor = self->_vertexDescriptor;
    if (!vertexDescriptor)
    {
      v28 = objc_alloc_init(MDLVertexDescriptor);
      v29 = self->_vertexDescriptor;
      self->_vertexDescriptor = v28;

      vertexDescriptor = self->_vertexDescriptor;
    }

    v30 = objc_msgSend_layouts(vertexDescriptor, v24, v25);
    v32 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, v26);
    objc_msgSend_setStride_(v32, v33, stride);

    if (objc_msgSend_conformsToProtocol_(v21, v34, &unk_284D24D98))
    {
      objc_msgSend_setName_(v21, v35, v44);
    }

    v37 = objc_msgSend_count(self->_vertexBuffers, v35, v36);
    v38 = [MDLVertexAttribute alloc];
    v40 = objc_msgSend_initWithName_format_offset_bufferIndex_(v38, v39, v14, format, 0, v37 - 1);
    objc_msgSend_setTime_(v40, v41, v42, time);
    objc_msgSend_addOrReplaceAttribute_(self->_vertexDescriptor, v43, v40);
  }
}

- (void)_calculateTangentBasisFromPositions:(float *)positions positionStride:(int64_t)stride positionsBufferSize:(unint64_t)size normals:(float *)normals normalStride:(int64_t)normalStride normalsBufferSize:(unint64_t)bufferSize uvs:(float *)uvs uvStride:(int64_t)self0 uvsBufferSize:(unint64_t)self1 tangents:(float *)self2 tangentsStride:(int64_t)self3 tangentsBufferSize:(unint64_t)self4 bitagents:(float *)self5 bitangentStride:(int64_t)self6 bitangentsBufferSize:(unint64_t)self7 tangentFormat:(unint64_t)self8 selector:(SEL)self9
{
  v75 = *MEMORY[0x277D85DE8];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = self->_submeshes;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v70, v74, 16);
  if (v22)
  {
    v23 = *v71;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v71 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v70 + 1) + 8 * i);
        v26 = objc_msgSend_indexBuffer(v25, v20, v21);
        v29 = objc_msgSend_map(v26, v27, v28);

        v32 = objc_msgSend_bytes(v29, v30, v31);
        v35 = objc_msgSend_indexType(v25, v33, v34);
        switch(v35)
        {
          case 8:
            v54 = objc_msgSend_indexCount(v25, v36, v37);
            sub_239F3D66C(v32, v54, positions, stride, size, normals, normalStride, bufferSize, v55, v56, v57, v58, v59, v60, v61, uvs, uvStride, uvsBufferSize, tangents, tangentsStride, tangentsBufferSize, bitagents, bitangentStride, bitangentsBufferSize, format, selector);
            break;
          case 16:
            v46 = objc_msgSend_indexCount(v25, v36, v37);
            sub_239F3DD18(v32, v46, positions, stride, size, normals, normalStride, bufferSize, v47, v48, v49, v50, v51, v52, v53, uvs, uvStride, uvsBufferSize, tangents, tangentsStride, tangentsBufferSize, bitagents, bitangentStride, bitangentsBufferSize, format, selector);
            break;
          case 32:
            v38 = objc_msgSend_indexCount(v25, v36, v37);
            sub_239F3E3C8(v32, v38, positions, stride, size, normals, normalStride, bufferSize, v39, v40, v41, v42, v43, v44, v45, uvs, uvStride, uvsBufferSize, tangents, tangentsStride, tangentsBufferSize, bitagents, bitangentStride, bitangentsBufferSize, format, selector);
            break;
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v70, v74, 16);
    }

    while (v22);
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)addTangentBasisForTextureCoordinateAttributeNamed:(NSString *)textureCoordinateAttributeName tangentAttributeNamed:(NSString *)tangentAttributeName bitangentAttributeNamed:(NSString *)bitangentAttributeName
{
  v95 = textureCoordinateAttributeName;
  v9 = tangentAttributeName;
  v97 = bitangentAttributeName;
  v94 = v9;
  if (!v95 || !v9 || !v97)
  {
    v11 = MEMORY[0x277CBEAD8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v11, v15, @"ModelIOException", @"[%@ %@]: Must provide texture coordinates, a tangent, and bitangent attribute", v13, v14);
  }

  v96 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v10, @"position", 786435);
  if (!v96)
  {
    v17 = MEMORY[0x277CBEAD8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v17, v21, @"ModelIOException", @"[%@ %@]: Must provide position data", v19, v20);
  }

  v22 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v16, v95, 786434);
  v93 = v22;
  if (!v22)
  {
    v25 = MEMORY[0x277CBEAD8];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v25, v29, @"ModelIOException", @"[%@ %@]: Must provide texture coordinates", v27, v28);

    v22 = 0;
  }

  v30 = v22;
  v31 = objc_msgSend_dataStart(v22, v23, v24);
  v91 = objc_msgSend_stride(v30, v32, v33);
  v37 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v34, v9, 786435);
  if (!v37 && (objc_msgSend_addAttributeWithName_format_(self, v35, v9, 786435), objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v38, v9), (v37 = objc_claimAutoreleasedReturnValue()) == 0) || objc_msgSend_format(v37, v35, v36) != 786435)
  {
    v40 = MEMORY[0x277CBEAD8];
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v43 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v40, v44, @"ModelIOException", @"[%@ %@]: Tangent data in float3 format not supplied or could not be created", v42, v43);
  }

  v90 = v31;
  aSelector = a2;
  v47 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v39, v97, 786435);
  if (!v47 && (objc_msgSend_addAttributeWithName_format_(self, v45, v97, 786435), objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v48, v97), (v47 = objc_claimAutoreleasedReturnValue()) == 0) || objc_msgSend_format(v47, v45, v46) != 786435)
  {
    v51 = MEMORY[0x277CBEAD8];
    v52 = objc_opt_class();
    v53 = NSStringFromClass(v52);
    v54 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v51, v55, @"ModelIOException", @"[%@ %@]: Bitangent data in float3 format not supplied or could not be created", v53, v54);
  }

  v89 = objc_msgSend_dataStart(v96, v49, v50);
  v88 = objc_msgSend_stride(v96, v56, v57);
  v87 = objc_msgSend_bufferSize(v96, v58, v59);
  v62 = objc_msgSend_bufferSize(v93, v60, v61);
  v65 = objc_msgSend_dataStart(v37, v63, v64);
  v68 = objc_msgSend_stride(v37, v66, v67);
  v71 = objc_msgSend_bufferSize(v37, v69, v70);
  v74 = objc_msgSend_dataStart(v47, v72, v73);
  v77 = objc_msgSend_stride(v47, v75, v76);
  v80 = objc_msgSend_bufferSize(v47, v78, v79);
  v83 = objc_msgSend_format(v37, v81, v82);
  objc_msgSend__calculateTangentBasisFromPositions_positionStride_positionsBufferSize_normals_normalStride_normalsBufferSize_uvs_uvStride_uvsBufferSize_tangents_tangentsStride_tangentsBufferSize_bitagents_bitangentStride_bitangentsBufferSize_tangentFormat_selector_(self, v84, v89, v88, v87, 0, 0, 0, v90, v91, v62, v65, v68, v71, v74, v77, v80, v83, aSelector);
  objc_msgSend_replaceAttributeNamed_withData_(self, v85, v94, v37);
  objc_msgSend_replaceAttributeNamed_withData_(self, v86, v97, v47);
}

- (void)addTangentBasisForTextureCoordinateAttributeNamed:(NSString *)textureCoordinateAttributeName normalAttributeNamed:(NSString *)normalAttributeName tangentAttributeNamed:(NSString *)tangentAttributeName
{
  v88 = textureCoordinateAttributeName;
  v9 = normalAttributeName;
  v91 = tangentAttributeName;
  v87 = v9;
  if (!v9 || !v88 || !v91)
  {
    v11 = MEMORY[0x277CBEAD8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v11, v15, @"ModelIOException", @"[%@ %@]: Must provide texture coordinates, a tangent, and bitangent attribute", v13, v14);
  }

  v17 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v10, @"position", 786435);
  v89 = v17;
  if (!v17)
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v18, v22, @"ModelIOException", @"[%@ %@]: Must provide position data", v20, v21);
  }

  v25 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v16, v88, 786434);
  v86 = v25;
  if (!v25)
  {
    v26 = MEMORY[0x277CBEAD8];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v26, v30, @"ModelIOException", @"[%@ %@]: Must provide texture coordinates", v28, v29);
  }

  v31 = objc_msgSend_dataStart(v25, v23, v24);
  v84 = objc_msgSend_stride(v25, v32, v33);
  v90 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v34, v87, 786435);
  if (!v90)
  {
    v36 = MEMORY[0x277CBEAD8];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v36, v40, @"ModelIOException", @"[%@ %@]: Must provide normals", v38, v39);
  }

  v83 = v31;
  aSelector = a2;
  v43 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v35, v91, 786435);
  if (!v43)
  {
    objc_msgSend_addAttributeWithName_format_(self, v41, v91, 786435);
    v43 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v44, v91);
    if (!v43)
    {
      v45 = MEMORY[0x277CBEAD8];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(a2);
      objc_msgSend_raise_format_(v45, v49, @"ModelIOException", @"[%@ %@]: Tangent data not supplied or could not be created", v47, v48);

      v43 = 0;
    }
  }

  v82 = objc_msgSend_dataStart(v17, v41, v42);
  v81 = objc_msgSend_stride(v17, v50, v51);
  v54 = objc_msgSend_bufferSize(v17, v52, v53);
  v57 = objc_msgSend_dataStart(v90, v55, v56);
  v60 = objc_msgSend_stride(v90, v58, v59);
  v63 = objc_msgSend_bufferSize(v90, v61, v62);
  v66 = objc_msgSend_bufferSize(v25, v64, v65);
  v69 = objc_msgSend_dataStart(v43, v67, v68);
  v72 = objc_msgSend_stride(v43, v70, v71);
  v75 = objc_msgSend_bufferSize(v43, v73, v74);
  v78 = objc_msgSend_format(v43, v76, v77);
  objc_msgSend__calculateTangentBasisFromPositions_positionStride_positionsBufferSize_normals_normalStride_normalsBufferSize_uvs_uvStride_uvsBufferSize_tangents_tangentsStride_tangentsBufferSize_bitagents_bitangentStride_bitangentsBufferSize_tangentFormat_selector_(self, v79, v82, v81, v54, v57, v60, v63, v83, v84, v66, v69, v72, v75, 0, 0, 0, v78, aSelector);
  objc_msgSend_replaceAttributeNamed_withData_(self, v80, v91, v43);
}

- (void)addOrthTanBasisForTextureCoordinateAttributeNamed:(NSString *)textureCoordinateAttributeName normalAttributeNamed:(NSString *)normalAttributeName tangentAttributeNamed:(NSString *)tangentAttributeName
{
  v88 = textureCoordinateAttributeName;
  v9 = normalAttributeName;
  v91 = tangentAttributeName;
  v87 = v9;
  if (!v9 || !v88 || !v91)
  {
    v11 = MEMORY[0x277CBEAD8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v11, v15, @"ModelIOException", @"[%@ %@]: Must provide texture coordinates, a tangent, and bitangent attribute", v13, v14);
  }

  v17 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v10, @"position", 786435);
  v89 = v17;
  if (!v17)
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v18, v22, @"ModelIOException", @"[%@ %@]: Must provide position data", v20, v21);
  }

  v25 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v16, v88, 786434);
  v86 = v25;
  if (!v25)
  {
    v26 = MEMORY[0x277CBEAD8];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v26, v30, @"ModelIOException", @"[%@ %@]: Must provide texture coordinates", v28, v29);
  }

  v31 = objc_msgSend_dataStart(v25, v23, v24);
  v84 = objc_msgSend_stride(v25, v32, v33);
  v90 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v34, v87, 786435);
  if (!v90)
  {
    v36 = MEMORY[0x277CBEAD8];
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v36, v40, @"ModelIOException", @"[%@ %@]: Must provide normals", v38, v39);
  }

  v83 = v31;
  aSelector = a2;
  v43 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v35, v91, 786436);
  if (!v43)
  {
    objc_msgSend_addAttributeWithName_format_(self, v41, v91, 786436);
    v43 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v44, v91);
    if (!v43)
    {
      v45 = MEMORY[0x277CBEAD8];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(a2);
      objc_msgSend_raise_format_(v45, v49, @"ModelIOException", @"[%@ %@]: Tangent data not supplied or could not be created", v47, v48);

      v43 = 0;
    }
  }

  v82 = objc_msgSend_dataStart(v17, v41, v42);
  v81 = objc_msgSend_stride(v17, v50, v51);
  v54 = objc_msgSend_bufferSize(v17, v52, v53);
  v57 = objc_msgSend_dataStart(v90, v55, v56);
  v60 = objc_msgSend_stride(v90, v58, v59);
  v63 = objc_msgSend_bufferSize(v90, v61, v62);
  v66 = objc_msgSend_bufferSize(v25, v64, v65);
  v69 = objc_msgSend_dataStart(v43, v67, v68);
  v72 = objc_msgSend_stride(v43, v70, v71);
  v75 = objc_msgSend_bufferSize(v43, v73, v74);
  v78 = objc_msgSend_format(v43, v76, v77);
  objc_msgSend__calculateTangentBasisFromPositions_positionStride_positionsBufferSize_normals_normalStride_normalsBufferSize_uvs_uvStride_uvsBufferSize_tangents_tangentsStride_tangentsBufferSize_bitagents_bitangentStride_bitangentsBufferSize_tangentFormat_selector_(self, v79, v82, v81, v54, v57, v60, v63, v83, v84, v66, v69, v72, v75, 0, 0, 0, v78, aSelector);
  objc_msgSend_replaceAttributeNamed_withData_(self, v80, v91, v43);
}

- (void)_calculateFaceNormalsFromPositions:(float *)positions positionStride:(int64_t)stride normals:(float *)normals normalStride:(int64_t)normalStride creaseThreshold:(float)threshold
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = self->_submeshes;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v35, v39, 16);
  if (v14)
  {
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        v18 = objc_msgSend_indexBuffer(v17, v12, v13);
        v21 = objc_msgSend_map(v18, v19, v20);

        v24 = objc_msgSend_bytes(v21, v22, v23);
        v27 = objc_msgSend_indexType(v17, v25, v26);
        switch(v27)
        {
          case 8:
            v32 = objc_msgSend_indexCount(v17, v28, v29);
            sub_239F40980(v24, v32, positions, stride, normals, normalStride);
            break;
          case 16:
            v31 = objc_msgSend_indexCount(v17, v28, v29);
            sub_239F40C94(v24, v31, positions, stride, normals, normalStride);
            break;
          case 32:
            v30 = objc_msgSend_indexCount(v17, v28, v29);
            sub_239F40FAC(v24, v30, positions, stride, normals, normalStride);
            break;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v35, v39, 16);
    }

    while (v14);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)triangulate
{
  v131 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  selfCopy = self;
  v6 = objc_msgSend_submeshes(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);
  v113 = objc_msgSend_initWithCapacity_(v3, v10, v9);

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = objc_msgSend_submeshes(selfCopy, v11, v12);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v126, v130, 16);
  if (v14)
  {
    v112 = *v127;
    do
    {
      v114 = v14;
      for (i = 0; i != v114; ++i)
      {
        if (*v127 != v112)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v126 + 1) + 8 * i);
        v123 = 0;
        v124 = 0;
        v125 = 0;
        if (objc_msgSend_geometryType(v18, v15, v16) == 2)
        {
          objc_msgSend_addObject_(v113, v19, v18);
          goto LABEL_32;
        }

        v23 = objc_msgSend_topology(v18, v19, v20);
        if (v23)
        {
          v24 = objc_msgSend_topology(v18, v21, v22);
          v27 = objc_msgSend_faceTopology(v24, v25, v26);
          v28 = v27 == 0;

          if (!v28)
          {
            v29 = objc_msgSend_topology(v18, v21, v22);
            v32 = objc_msgSend_faceTopology(v29, v30, v31);
            v118 = objc_msgSend_map(v32, v33, v34);

            if (v118)
            {
              v37 = objc_msgSend_bytes(v118, v35, v36);
            }

            else
            {
              v37 = 0;
            }

            v38 = objc_msgSend_topology(v18, v35, v36);
            v23 = objc_msgSend_faceCount(v38, v39, v40);

            goto LABEL_16;
          }

          v23 = 0;
        }

        v37 = 0;
        v118 = 0;
LABEL_16:
        v41 = objc_msgSend_indexBuffer(v18, v21, v22);
        v117 = objc_msgSend_map(v41, v42, v43);

        v46 = objc_msgSend_bytes(v117, v44, v45);
        v49 = objc_msgSend_indexCount(v18, v47, v48);
        v52 = objc_msgSend_indexType(v18, v50, v51);
        v55 = objc_msgSend_geometryType(v18, v53, v54);
        sub_239F5960C(&v123, v46, v49, v37, v23, v52, v55, 2);
        v58 = objc_msgSend_indexType(v18, v56, v57);
        if (v58)
        {
          if (v58 == 8)
          {
            v61 = 1;
          }

          else if (v58 == 16)
          {
            v61 = 2;
          }

          else
          {
            v61 = 4;
          }
        }

        else
        {
          v62 = objc_msgSend_name(v18, v59, v60);
          NSLog(&cfstr_IndexBitdepthI.isa, v62);

          v61 = 4;
        }

        v63 = objc_alloc(MEMORY[0x277CBEA90]);
        v116 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v63, v64, v123, ((v124 - v123) >> 2) * v61, 0);
        v67 = objc_msgSend_indexBuffer(v18, v65, v66);
        v70 = objc_msgSend_allocator(v67, v68, v69);
        v72 = objc_msgSend_newBufferWithData_type_(v70, v71, v116, 2);

        v73 = objc_alloc_init(MDLSubmeshTopology);
        objc_msgSend_setFaceCount_(v73, v74, ((v124 - v123) >> 2) / 3uLL);
        __p = 0;
        v121 = 0;
        v122 = 0;
        v77 = objc_msgSend_faceCount(v73, v75, v76);
        v119 = 3;
        if (v77 <= v121 - __p)
        {
          if (v77 < v121 - __p)
          {
            v121 = __p + v77;
          }
        }

        else
        {
          sub_239EFF5E8(&__p, v77 - (v121 - __p), &v119);
        }

        v78 = objc_alloc(MEMORY[0x277CBEA90]);
        v115 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v78, v79, __p, v121 - __p, 0);
        v82 = objc_msgSend_indexBuffer(v18, v80, v81);
        v85 = objc_msgSend_allocator(v82, v83, v84);
        v87 = objc_msgSend_newBufferWithData_type_(v85, v86, v115, 2);

        if (objc_msgSend_conformsToProtocol_(v87, v88, &unk_284D24D98))
        {
          v90 = v87;
          objc_msgSend_setName_(v90, v91, @"faceVertexCounts");
        }

        objc_msgSend_setFaceTopology_(v73, v89, v87);
        v92 = [MDLSubmesh alloc];
        v95 = objc_msgSend_name(v18, v93, v94);
        v96 = v123;
        v97 = v124;
        v100 = objc_msgSend_indexType(v18, v98, v99);
        v103 = objc_msgSend_material(v18, v101, v102);
        v105 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v92, v104, v95, v72, (v97 - v96) >> 2, v100, 2, v103, v73);
        objc_msgSend_addObject_(v113, v106, v105);

        if (__p)
        {
          v121 = __p;
          operator delete(__p);
        }

LABEL_32:
        if (v123)
        {
          v124 = v123;
          operator delete(v123);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v126, v130, 16);
    }

    while (v14);
  }

  objc_msgSend_setSubmeshes_(selfCopy, v107, v113);
  v108 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)addNormalsWithAttributeNamed:(NSString *)attributeName creaseThreshold:(float)creaseThreshold
{
  v88 = *MEMORY[0x277D85DE8];
  v8 = attributeName;
  if (!v8)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v9, v13, @"ModelIOException", @"[%@ %@]: Must provide attribute name", v11, v12);
  }

  if (objc_msgSend_makeVerticesUniqueAndReturnError_(self, v7, 0))
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v14 = self->_submeshes;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v83, v87, 16);
    if (v18)
    {
      v19 = *v84;
LABEL_6:
      v20 = 0;
      while (1)
      {
        if (*v84 != v19)
        {
          objc_enumerationMutation(v14);
        }

        if (objc_msgSend_geometryType(*(*(&v83 + 1) + 8 * v20), v16, v17) != 2)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v83, v87, 16);
          if (v18)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      if ((objc_msgSend_triangulate(self, v22, v23) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_12:
    }

    v25 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v21, @"position", 786435);
    if (!v25)
    {
      v26 = MEMORY[0x277CBEAD8];
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(a2);
      objc_msgSend_raise_format_(v26, v30, @"ModelIOException", @"[%@ %@]: Position data not found", v28, v29);
    }

    v31 = objc_msgSend_attributeNamed_(self->_vertexDescriptor, v24, v8);
    v34 = objc_msgSend_format(v31, v32, v33);
    if (v31 && (v34 & 7u) >= 3uLL)
    {
      v36 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v35, v8);
      v39 = objc_msgSend_format(v31, v37, v38);
      v42 = v39;
      if (v39 != 786435)
      {
        __p[0] = 0;
        __p[1] = 0;
        v82 = 0;
        sub_239EB2474(__p, 3 * self->_vertexCount);
        v63 = objc_msgSend_dataStart(v25, v61, v62);
        v66 = objc_msgSend_stride(v25, v64, v65);
        *&v67 = creaseThreshold;
        objc_msgSend__calculateFaceNormalsFromPositions_positionStride_normals_normalStride_creaseThreshold_(self, v68, v63, v66, __p[0], 12, v67);
        v70 = v42 & 7;
        if (v70 >= 4)
        {
          v79 = 0uLL;
          v80 = 0;
          sub_239E95D48(&v79, self->_vertexCount * (v42 & 7));
          v71 = __p[0];
          if (self->_vertexCount)
          {
            v77 = v25;
            v72 = 0;
            v73 = v70 - 3;
            do
            {
              sub_239E798A4(&v79, v71);
              sub_239E798A4(&v79, v71 + 1);
              sub_239E798A4(&v79, v71 + 2);
              v71 += 3;
              v74 = v73;
              do
              {
                v78 = 1065353216;
                sub_239E798A4(&v79, &v78);
                --v74;
              }

              while (v74);
              ++v72;
            }

            while (v72 < self->_vertexCount);
            v71 = __p[0];
            v25 = v77;
          }

          *__p = v79;
          v75 = v80;
          *&v79 = v71;
          v80 = v82;
          v82 = v75;
          if (v71)
          {
            *(&v79 + 1) = v71;
            operator delete(v71);
          }
        }

        objc_msgSend_copyDataVector_toAttr_(self, v69, __p, v36);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        goto LABEL_34;
      }
    }

    else
    {
      objc_msgSend_addAttributeWithName_format_(self, v35, v8, 786435);
      v36 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v55, v8);
      if (!v36)
      {
        v56 = MEMORY[0x277CBEAD8];
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        v59 = NSStringFromSelector(a2);
        objc_msgSend_raise_format_(v56, v60, @"ModelIOException", @"[%@ %@]: Could not create normals attribute", v58, v59);
      }
    }

    v43 = objc_msgSend_dataStart(v25, v40, v41);
    v46 = objc_msgSend_stride(v25, v44, v45);
    v49 = objc_msgSend_dataStart(v36, v47, v48);
    v52 = objc_msgSend_stride(v36, v50, v51);
    *&v53 = creaseThreshold;
    objc_msgSend__calculateFaceNormalsFromPositions_positionStride_normals_normalStride_creaseThreshold_(self, v54, v43, v46, v49, v52, v53);
LABEL_34:
  }

LABEL_35:

  v76 = *MEMORY[0x277D85DE8];
}

- (void)addUnwrappedTextureCoordinatesForAttributeNamed:(NSString *)textureCoordinateAttributeName
{
  v6 = textureCoordinateAttributeName;
  if (!v6)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v7, v11, @"ModelIOException", @"[%@ %@]: Must provide name", v9, v10);
  }

  v13 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v5, v6);
  if (!v13)
  {
    objc_msgSend_addAttributeWithName_format_(self, v12, v6, 786434);
    v13 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v14, v6);
    if (!v13)
    {
      v15 = MEMORY[0x277CBEAD8];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      objc_msgSend_raise_format_(v15, v19, @"ModelIOException", @"[%@ %@]: Texture coordinate data of format float2 not created", v17, v18);

      v13 = 0;
    }
  }

  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  DWORD2(v28) = 1065353216;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  *__p = 0u;
  v26 = 0u;
  sub_239EF9C80(v27, self, v6, __p);
  if ((__p[0] & 1) == 0)
  {
    v20 = MEMORY[0x277CBEAD8];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v20, v24, @"ModelIOException", @"[%@ %@]: Texture coordinate data of format float2 not created", v22, v23);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[1]);
  }

  sub_239F44540(v27);
}

- (void)flipTextureCoordinatesInAttributeNamed:(NSString *)textureCoordinateAttributeName
{
  v6 = textureCoordinateAttributeName;
  if (!v6)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v7, v11, @"ModelIOException", @"[%@ %@]: Must provide name", v9, v10);
  }

  v14 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v5, v6, 786434);
  if (!v14)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v15, v19, @"ModelIOException", @"[%@ %@]: Texture coordinate data of format float2 not created", v17, v18);
  }

  v20 = objc_msgSend_dataStart(v14, v12, v13);
  v23 = objc_msgSend_stride(v14, v21, v22);
  __p = 0;
  v30 = 0;
  v31 = 0;
  sub_239E95D48(&__p, 2 * self->_vertexCount);
  if (self->_vertexCount)
  {
    v25 = 0;
    do
    {
      sub_239E798A4(&__p, v20);
      v28 = 1.0 - *(v20 + 4);
      sub_239E798A4(&__p, &v28);
      v20 += v23;
      ++v25;
    }

    while (v25 < self->_vertexCount);
  }

  v26 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v24, v6);
  objc_msgSend_copyDataVector_toAttr_(self, v27, &__p, v26);

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }
}

- (id)description
{
  selfCopy = self;
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v7 = objc_msgSend_name(self, v5, v6);
  vertexCount = self->_vertexCount;
  v11 = objc_msgSend_count(self->_vertexBuffers, v9, v10);
  v13 = objc_msgSend_initWithFormat_(v3, v12, @"<<%@: 0x%lx>, Name: %@, VertexCount: %d, VertexBufferCount: %d>", v4, &selfCopy, v7, vertexCount, v11);

  return v13;
}

- (BOOL)makeVerticesUniqueAndReturnError:(NSError *)error
{
  v216 = *MEMORY[0x277D85DE8];
  v210 = 0;
  v211 = 0;
  v208 = 0;
  v209 = &v210;
  __p = 0;
  v207 = 0;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v3 = self->_submeshes;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v202, v215, 16);
  if (v7)
  {
    v8 = *v203;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v203 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v202 + 1) + 8 * i);
        v11 = objc_msgSend_indexCount(v10, v5, v6);
        v14 = objc_msgSend_indexBuffer(v10, v12, v13);
        v17 = objc_msgSend_map(v14, v15, v16);

        v20 = objc_msgSend_bytes(v17, v18, v19);
        v23 = objc_msgSend_indexType(v10, v21, v22);
        switch(v23)
        {
          case 8:
            sub_239F43188(&v209, &__p, v20, v11);
            break;
          case 16:
            sub_239F43280(&v209, &__p, v20, v11);
            break;
          case 32:
            sub_239F43378(&v209, &__p, v20, v11);
            break;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v202, v215, 16);
    }

    while (v7);
  }

  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v24 = self->_submeshes;
  v26 = 0;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v198, v214, 16);
  if (v29)
  {
    v30 = *v199;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v199 != v30)
        {
          objc_enumerationMutation(v24);
        }

        v26 += objc_msgSend_indexCount(*(*(&v198 + 1) + 8 * j), v27, v28);
      }

      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v198, v214, 16);
    }

    while (v29);
  }

  if (v211 == v26)
  {
    v32 = 1;
  }

  else
  {
    v188 = objc_opt_new();
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    obj = self->_vertexBuffers;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v194, v213, 16);
    if (v36)
    {
      v37 = *v195;
LABEL_25:
      v38 = 0;
      while (1)
      {
        if (*v195 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v194 + 1) + 8 * v38);
        v40 = objc_msgSend_null(MEMORY[0x277CBEB68], v34, v35);
        isEqual = objc_msgSend_isEqual_(v39, v41, v40);

        if (isEqual)
        {
          v45 = objc_msgSend_null(MEMORY[0x277CBEB68], v43, v44);
          objc_msgSend_addObject_(v188, v46, v45);
        }

        else
        {
          v47 = objc_msgSend_length(v39, v43, v44);
          vertexCount = self->_vertexCount;
          v51 = objc_msgSend_allocator(v39, v49, v50);
          v45 = objc_msgSend_newBuffer_type_(v51, v52, v47 / vertexCount * v26, 1);

          if (!v45)
          {
            if (!error)
            {
              goto LABEL_81;
            }

            v177 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v53, @"MDLErrorDomain", 0, &unk_284D23610);
LABEL_77:
            *error = v177;
LABEL_81:

            v32 = 0;
            goto LABEL_82;
          }

          objc_msgSend_addObject_(v188, v53, v45);
        }

        if (v36 == ++v38)
        {
          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v194, v213, 16);
          if (v36)
          {
            goto LABEL_25;
          }

          break;
        }
      }
    }

    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v54 = 72;
    obj = objc_msgSend_attributes(self->_vertexDescriptor, v55, v56);
    v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, &v190, v212, 16);
    if (v181)
    {
      v182 = *v191;
LABEL_36:
      v183 = 0;
      while (1)
      {
        if (*v191 != v182)
        {
          objc_enumerationMutation(obj);
        }

        v60 = *(*(&v190 + 1) + 8 * v183);
        v61 = objc_msgSend_bufferIndex(v60, v58, v59, v181);
        v64 = objc_msgSend_layouts(*(&self->super.super.isa + v54), v62, v63);
        v67 = v61 < objc_msgSend_count(v64, v65, v66);

        if (!v67)
        {
          break;
        }

        v70 = objc_msgSend_layouts(*(&self->super.super.isa + v54), v68, v69);
        v72 = objc_msgSend_objectAtIndexedSubscript_(v70, v71, v61);
        v75 = objc_msgSend_stride(v72, v73, v74);

        v78 = objc_msgSend_offset(v60, v76, v77);
        v81 = objc_msgSend_format(v60, v79, v80);
        v82 = sub_239E6FF8C(v81);
        v84 = objc_msgSend_objectAtIndexedSubscript_(self->_vertexBuffers, v83, v61);
        v184 = objc_msgSend_map(v84, v85, v86);

        v88 = objc_msgSend_objectAtIndexedSubscript_(v188, v87, v61);
        v91 = objc_msgSend_map(v88, v89, v90);

        v93 = objc_msgSend_objectAtIndexedSubscript_(self->_vertexBuffers, v92, v61);
        v96 = objc_msgSend_length(v93, v94, v95);

        v98 = objc_msgSend_objectAtIndexedSubscript_(v188, v97, v61);
        v101 = objc_msgSend_length(v98, v99, v100);

        v104 = v96 - v78;
        if (v96 <= v78 || (v105 = v101 > v78, v106 = v101 - v78, !v105))
        {
          if (error)
          {
            v180 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v102, @"MDLErrorDomain", 0, &unk_284D23660);
            goto LABEL_93;
          }

          goto LABEL_80;
        }

        v107 = objc_msgSend_bytes(v184, v102, v103);
        v108 = v54;
        v111 = objc_msgSend_bytes(v91, v109, v110);
        v113 = __p;
        if (v207 != __p)
        {
          if (v82 + (((v207 - __p) >> 2) - 1) * v75 > v106)
          {
            if (error)
            {
              v180 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v112, @"MDLErrorDomain", 0, &unk_284D23688);
LABEL_93:
              *error = v180;
            }
          }

          else
          {
            v114 = 0;
            v115 = 0;
            v116 = v107 + v78;
            v117 = v111 + v78;
            while (1)
            {
              v118 = v113[v115] * v75;
              if (v82 + v118 > v104)
              {
                break;
              }

              memcpy((v117 + v114), (v116 + v118), v82);
              ++v115;
              v113 = __p;
              v114 += v75;
              if (v115 >= (v207 - __p) >> 2)
              {
                goto LABEL_48;
              }
            }

            if (error)
            {
              *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v112, @"MDLErrorDomain", 0, &unk_284D236B0);
            }
          }

LABEL_80:

          goto LABEL_81;
        }

LABEL_48:

        v54 = v108;
        if (++v183 == v181)
        {
          v181 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v58, &v190, v212, 16);
          if (v181)
          {
            goto LABEL_36;
          }

          goto LABEL_50;
        }
      }

      if (!error)
      {
        goto LABEL_81;
      }

      v177 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v68, @"MDLErrorDomain", 0, &unk_284D23638);
      goto LABEL_77;
    }

LABEL_50:

    objc_storeStrong(&self->_vertexBuffers, v188);
    v121 = 0;
    v122 = 0;
    self->_vertexCount = v26;
    while (objc_msgSend_count(self->_submeshes, v119, v120, v181) > v121)
    {
      v124 = objc_msgSend_objectAtIndexedSubscript_(self->_submeshes, v123, v121);
      v127 = objc_msgSend_indexBuffer(v124, v125, v126);
      obja = objc_msgSend_map(v127, v128, v129);

      v132 = objc_msgSend_indexCount(v124, v130, v131);
      if (objc_msgSend_indexType(v124, v133, v134) == 8 && v132 > 0xFF || objc_msgSend_indexType(v124, v135, v136) == 16 && v132 >= 0x10000)
      {
        if (v132 >= 0x10000)
        {
          v139 = 32;
        }

        else
        {
          v139 = 16;
        }

        v140 = [MDLMeshBufferData alloc];
        v142 = objc_msgSend_initWithType_length_(v140, v141, 2, (v139 >> 3) * v132);
        v143 = [MDLSubmesh alloc];
        v146 = objc_msgSend_indexCount(v124, v144, v145);
        v149 = objc_msgSend_geometryType(v124, v147, v148);
        v152 = objc_msgSend_material(v124, v150, v151);
        v154 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v143, v153, v142, v146, v139, v149, v152);

        v156 = objc_msgSend_objectAtIndexedSubscript_(self->_submeshes, v155, v121);
        v159 = objc_msgSend_name(v156, v157, v158);
        objc_msgSend_setName_(v154, v160, v159);

        objc_msgSend_setObject_atIndexedSubscript_(self->_submeshes, v161, v154, v121);
        v164 = objc_msgSend_indexBuffer(v154, v162, v163);
        v167 = objc_msgSend_map(v164, v165, v166);

        v124 = v154;
        obja = v167;
      }

      v168 = objc_msgSend_indexType(v124, v137, v138);
      switch(v168)
      {
        case 32:
          v175 = objc_msgSend_bytes(obja, v169, v170);
          if (v132)
          {
            v176 = v132;
            do
            {
              *v175++ = v122++;
              --v176;
            }

            while (v176);
          }

          break;
        case 16:
          v173 = objc_msgSend_bytes(obja, v169, v170);
          if (v132)
          {
            v174 = v132;
            do
            {
              *v173++ = v122++;
              --v174;
            }

            while (v174);
          }

          break;
        case 8:
          v171 = objc_msgSend_bytes(obja, v169, v170);
          if (v132)
          {
            v172 = v132;
            do
            {
              *v171++ = v122++;
              --v172;
            }

            while (v172);
          }

          break;
      }

      ++v121;
    }

    v32 = 1;
LABEL_82:
  }

  if (__p)
  {
    v207 = __p;
    operator delete(__p);
  }

  sub_239E79AAC(&v209, v210);
  v178 = *MEMORY[0x277D85DE8];
  return v32;
}

- (void)_enumerateSubmeshesUsingBlock:(id)block stopPointer:(BOOL *)pointer
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_submeshes;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v14, v18, 16);
  if (v9)
  {
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v7);
      }

      blockCopy[2](blockCopy, *(*(&v14 + 1) + 8 * v11), pointer);
      if (*pointer)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, &v14, v18, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (__n128)inverseBasePoseForIndex:(uint64_t)index
{
  v3 = *(self + 112);
  if (v3)
  {
    objc_msgSend_count(v3, a2, index);
  }

  result = *MEMORY[0x277D860B8];
  v5 = *(MEMORY[0x277D860B8] + 16);
  v6 = *(MEMORY[0x277D860B8] + 32);
  v7 = *(MEMORY[0x277D860B8] + 48);
  return result;
}

- (BOOL)generateAmbientOcclusionTextureWithSize:(vector_int2)textureSize raysPerSample:(NSInteger)raysPerSample attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName
{
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  DWORD2(v13) = 1065353216;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  *__p = 0u;
  v11 = 0u;
  sub_239EF8B70(v12, objectsToConsider, self, vertexAttributeName, materialPropertyName, textureSize.i32[0], __p);
  v8 = __p[0];
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  sub_239F44540(v12);
  return v8;
}

- (BOOL)generateAmbientOcclusionTextureWithQuality:(float)bakeQuality attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName
{
  v7 = bakeQuality;
  v8 = (&unk_239F9E788 + 4 * (v7 * 5.0));
  vld1_dup_f32(v8);
  return MEMORY[0x2821F9670](self, sel_generateAmbientOcclusionTextureWithSize_raysPerSample_attenuationFactor_objectsToConsider_vertexAttributeNamed_materialPropertyNamed_, dword_239F9E7A0[vcvtd_n_s64_f64(v7, 3uLL)]);
}

- (BOOL)generateAmbientOcclusionVertexColorsWithRaysPerSample:(NSInteger)raysPerSample attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName
{
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  DWORD2(v11) = 1065353216;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  *__p = 0u;
  v9 = 0u;
  sub_239EF9F64(objectsToConsider, self, vertexAttributeName, __p);
  v6 = __p[0];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  sub_239F44540(v10);
  return v6;
}

- (BOOL)generateLightMapTextureWithTextureSize:(vector_int2)textureSize lightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName
{
  v16 = textureSize.i32[0];
  v11 = objectsToConsider;
  v12 = vertexAttributeName;
  v13 = materialPropertyName;
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  DWORD2(v20) = 1065353216;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  sub_239EFAAA4(v19, lightsToConsider);
  *__p = 0u;
  v18 = 0u;
  sub_239EF8B70(v19, v11, self, v12, v13, v16, __p);
  v14 = __p[0];
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  sub_239F44540(v19);

  return v14;
}

- (BOOL)generateLightMapTextureWithQuality:(float)bakeQuality lightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName
{
  v7 = (&unk_239F9E788 + 4 * (bakeQuality * 5.0));
  vld1_dup_f32(v7);
  return MEMORY[0x2821F9670](self, sel_generateLightMapTextureWithTextureSize_lightsToConsider_objectsToConsider_vertexAttributeNamed_materialPropertyNamed_, lightsToConsider);
}

- (BOOL)generateLightMapVertexColorsWithLightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName
{
  v8 = objectsToConsider;
  v9 = vertexAttributeName;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  DWORD2(v15) = 1065353216;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_239EFAAA4(v14, lightsToConsider);
  *__p = 0u;
  v13 = 0u;
  sub_239EF9F64(v8, self, v9, __p);
  v10 = __p[0];
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  sub_239F44540(v14);

  return v10;
}

@end