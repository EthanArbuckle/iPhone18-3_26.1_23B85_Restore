@interface MPSPolygonAccelerationStructure
- (MPSPolygonAccelerationStructure)initWithCoder:(id)a3 device:(id)a4;
- (MPSPolygonAccelerationStructure)initWithCoder:(id)a3 group:(id)a4;
- (MPSPolygonAccelerationStructure)initWithDevice:(id)a3;
- (MPSPolygonAccelerationStructure)initWithGroup:(id)a3;
- (NSUInteger)indexBufferOffset;
- (NSUInteger)maskBufferOffset;
- (NSUInteger)polygonCount;
- (NSUInteger)vertexBufferOffset;
- (_MPSAxisAlignedBoundingBox)boundingBox;
- (id)boundingBoxBuffer;
- (id)copyPolygonAccelerationStructureWithZone:(_NSZone *)a3 device:(id)a4 group:(id)a5;
- (id)copyWithZone:(_NSZone *)a3 group:(id)a4;
- (id)description;
- (id)indexBuffer;
- (id)maskBuffer;
- (id)newResourceEncoder;
- (id)statistics;
- (id)vertexBuffer;
- (void)bindResourcesWithEncoder:(id)a3 commandBuffer:(id)a4 retainedResources:(id)a5;
- (void)dealloc;
- (void)decodePolygonAccelerationStructureWithCoder:(id)a3;
- (void)encodeRefitToCommandBuffer:(id)a3;
- (void)encodeResourcesToBuffer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)rebuild;
- (void)rebuildWithCompletionHandler:(id)a3;
- (void)setIndexBuffer:(id)indexBuffer;
- (void)setIndexBufferOffset:(NSUInteger)indexBufferOffset;
- (void)setIndexType:(MPSDataType)indexType;
- (void)setMaskBuffer:(id)maskBuffer;
- (void)setMaskBufferOffset:(NSUInteger)maskBufferOffset;
- (void)setPolygonCount:(NSUInteger)polygonCount;
- (void)setPolygonType:(MPSPolygonType)polygonType;
- (void)setVertexBuffer:(id)vertexBuffer;
- (void)setVertexBufferOffset:(NSUInteger)vertexBufferOffset;
- (void)validate;
@end

@implementation MPSPolygonAccelerationStructure

- (void)setPolygonType:(MPSPolygonType)polygonType
{
  if (polygonType >= 2)
  {
    sub_239E1FECC();
  }

  self->_polygonType = polygonType;
}

- (void)setIndexType:(MPSDataType)indexType
{
  if (indexType != MPSDataTypeUInt16 && indexType != MPSDataTypeUInt32 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  self->_indexType = indexType;
}

- (_MPSAxisAlignedBoundingBox)boundingBox
{
  v6 = self[4].max.i64[0];
  if (v6)
  {
    self = objc_msgSend_contents(*(v6 + 96), a3, v3, v4, v5);
    min = self->min;
    max = self->max;
  }

  return self;
}

- (id)boundingBoxBuffer
{
  bvh = self->_bvh;
  if (bvh)
  {
    return *(bvh + 12);
  }

  else
  {
    return 0;
  }
}

- (id)statistics
{
  bvh = self->_bvh;
  if (bvh)
  {
    return *(bvh + 13);
  }

  else
  {
    return 0;
  }
}

- (id)vertexBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_polygonBuffers(self, v6, v7, v8, v9);
    objc_msgSend_count(v10, v11, v12, v13, v14);
  }

  if (objc_msgSend_polygonBuffers(self, v6, v7, v8, v9))
  {
    v19 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
    if (objc_msgSend_count(v19, v20, v21, v22, v23) != 1)
    {
      sub_239E1FF1C();
    }
  }

  v24 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0, v26, v27);

  return objc_msgSend_vertexBuffer(v28, v29, v30, v31, v32);
}

- (void)setVertexBuffer:(id)vertexBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, vertexBuffer, v3, v4))
  {
    v11 = objc_msgSend_polygonBuffers(self, v7, v8, v9, v10);
    objc_msgSend_count(v11, v12, v13, v14, v15);
  }

  if (objc_msgSend_polygonBuffers(self, v7, v8, v9, v10))
  {
    v20 = objc_msgSend_polygonBuffers(self, v16, v17, v18, v19);
    if (objc_msgSend_count(v20, v21, v22, v23, v24) != 1)
    {
      sub_239E1FF6C();
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v16, v17, v18, v19))
  {
    v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27, v28);
    objc_msgSend_setPolygonBuffers_(self, v30, v29, v31, v32);
    v33 = objc_alloc_init(MPSPolygonBuffer);
    v38 = objc_msgSend_polygonBuffers(self, v34, v35, v36, v37);
    objc_msgSend_addObject_(v38, v39, v33, v40, v41);
  }

  v42 = objc_msgSend_polygonBuffers(self, v25, v26, v27, v28);
  v46 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 0, v44, v45);

  MEMORY[0x2821F9670](v46, sel_setVertexBuffer_, vertexBuffer, v47, v48);
}

- (NSUInteger)vertexBufferOffset
{
  if (objc_msgSend_polygonBuffers(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_polygonBuffers(self, v6, v7, v8, v9);
    objc_msgSend_count(v10, v11, v12, v13, v14);
  }

  if (objc_msgSend_polygonBuffers(self, v6, v7, v8, v9))
  {
    v19 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
    if (objc_msgSend_count(v19, v20, v21, v22, v23) != 1)
    {
      sub_239E1FFBC();
    }
  }

  v24 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0, v26, v27);

  return objc_msgSend_vertexBufferOffset(v28, v29, v30, v31, v32);
}

- (void)setVertexBufferOffset:(NSUInteger)vertexBufferOffset
{
  if (objc_msgSend_polygonBuffers(self, a2, vertexBufferOffset, v3, v4))
  {
    v11 = objc_msgSend_polygonBuffers(self, v7, v8, v9, v10);
    objc_msgSend_count(v11, v12, v13, v14, v15);
  }

  if (objc_msgSend_polygonBuffers(self, v7, v8, v9, v10))
  {
    v20 = objc_msgSend_polygonBuffers(self, v16, v17, v18, v19);
    if (objc_msgSend_count(v20, v21, v22, v23, v24) != 1)
    {
      sub_239E2000C();
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v16, v17, v18, v19))
  {
    v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27, v28);
    objc_msgSend_setPolygonBuffers_(self, v30, v29, v31, v32);
    v33 = objc_alloc_init(MPSPolygonBuffer);
    v38 = objc_msgSend_polygonBuffers(self, v34, v35, v36, v37);
    objc_msgSend_addObject_(v38, v39, v33, v40, v41);
  }

  v42 = objc_msgSend_polygonBuffers(self, v25, v26, v27, v28);
  v46 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 0, v44, v45);

  MEMORY[0x2821F9670](v46, sel_setVertexBufferOffset_, vertexBufferOffset, v47, v48);
}

- (id)indexBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_polygonBuffers(self, v6, v7, v8, v9);
    objc_msgSend_count(v10, v11, v12, v13, v14);
  }

  if (objc_msgSend_polygonBuffers(self, v6, v7, v8, v9))
  {
    v19 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
    if (objc_msgSend_count(v19, v20, v21, v22, v23) != 1)
    {
      sub_239E2005C();
    }
  }

  v24 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0, v26, v27);

  return objc_msgSend_indexBuffer(v28, v29, v30, v31, v32);
}

- (void)setIndexBuffer:(id)indexBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, indexBuffer, v3, v4))
  {
    v11 = objc_msgSend_polygonBuffers(self, v7, v8, v9, v10);
    objc_msgSend_count(v11, v12, v13, v14, v15);
  }

  if (objc_msgSend_polygonBuffers(self, v7, v8, v9, v10))
  {
    v20 = objc_msgSend_polygonBuffers(self, v16, v17, v18, v19);
    if (objc_msgSend_count(v20, v21, v22, v23, v24) != 1)
    {
      sub_239E200AC();
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v16, v17, v18, v19))
  {
    v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27, v28);
    objc_msgSend_setPolygonBuffers_(self, v30, v29, v31, v32);
    v33 = objc_alloc_init(MPSPolygonBuffer);
    v38 = objc_msgSend_polygonBuffers(self, v34, v35, v36, v37);
    objc_msgSend_addObject_(v38, v39, v33, v40, v41);
  }

  v42 = objc_msgSend_polygonBuffers(self, v25, v26, v27, v28);
  v46 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 0, v44, v45);

  MEMORY[0x2821F9670](v46, sel_setIndexBuffer_, indexBuffer, v47, v48);
}

- (NSUInteger)indexBufferOffset
{
  if (objc_msgSend_polygonBuffers(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_polygonBuffers(self, v6, v7, v8, v9);
    objc_msgSend_count(v10, v11, v12, v13, v14);
  }

  if (objc_msgSend_polygonBuffers(self, v6, v7, v8, v9))
  {
    v19 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
    if (objc_msgSend_count(v19, v20, v21, v22, v23) != 1)
    {
      sub_239E200FC();
    }
  }

  v24 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0, v26, v27);

  return objc_msgSend_indexBufferOffset(v28, v29, v30, v31, v32);
}

- (void)setIndexBufferOffset:(NSUInteger)indexBufferOffset
{
  if (objc_msgSend_polygonBuffers(self, a2, indexBufferOffset, v3, v4))
  {
    v11 = objc_msgSend_polygonBuffers(self, v7, v8, v9, v10);
    objc_msgSend_count(v11, v12, v13, v14, v15);
  }

  if (objc_msgSend_polygonBuffers(self, v7, v8, v9, v10))
  {
    v20 = objc_msgSend_polygonBuffers(self, v16, v17, v18, v19);
    if (objc_msgSend_count(v20, v21, v22, v23, v24) != 1)
    {
      sub_239E2014C();
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v16, v17, v18, v19))
  {
    v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27, v28);
    objc_msgSend_setPolygonBuffers_(self, v30, v29, v31, v32);
    v33 = objc_alloc_init(MPSPolygonBuffer);
    v38 = objc_msgSend_polygonBuffers(self, v34, v35, v36, v37);
    objc_msgSend_addObject_(v38, v39, v33, v40, v41);
  }

  v42 = objc_msgSend_polygonBuffers(self, v25, v26, v27, v28);
  v46 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 0, v44, v45);

  MEMORY[0x2821F9670](v46, sel_setIndexBufferOffset_, indexBufferOffset, v47, v48);
}

- (id)maskBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_polygonBuffers(self, v6, v7, v8, v9);
    objc_msgSend_count(v10, v11, v12, v13, v14);
  }

  if (objc_msgSend_polygonBuffers(self, v6, v7, v8, v9))
  {
    v19 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
    if (objc_msgSend_count(v19, v20, v21, v22, v23) != 1)
    {
      sub_239E2019C();
    }
  }

  v24 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0, v26, v27);

  return objc_msgSend_maskBuffer(v28, v29, v30, v31, v32);
}

- (void)setMaskBuffer:(id)maskBuffer
{
  if (objc_msgSend_polygonBuffers(self, a2, maskBuffer, v3, v4))
  {
    v11 = objc_msgSend_polygonBuffers(self, v7, v8, v9, v10);
    objc_msgSend_count(v11, v12, v13, v14, v15);
  }

  if (objc_msgSend_polygonBuffers(self, v7, v8, v9, v10))
  {
    v20 = objc_msgSend_polygonBuffers(self, v16, v17, v18, v19);
    if (objc_msgSend_count(v20, v21, v22, v23, v24) != 1)
    {
      sub_239E201EC();
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v16, v17, v18, v19))
  {
    v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27, v28);
    objc_msgSend_setPolygonBuffers_(self, v30, v29, v31, v32);
    v33 = objc_alloc_init(MPSPolygonBuffer);
    v38 = objc_msgSend_polygonBuffers(self, v34, v35, v36, v37);
    objc_msgSend_addObject_(v38, v39, v33, v40, v41);
  }

  v42 = objc_msgSend_polygonBuffers(self, v25, v26, v27, v28);
  v46 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 0, v44, v45);

  MEMORY[0x2821F9670](v46, sel_setMaskBuffer_, maskBuffer, v47, v48);
}

- (NSUInteger)maskBufferOffset
{
  if (objc_msgSend_polygonBuffers(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_polygonBuffers(self, v6, v7, v8, v9);
    objc_msgSend_count(v10, v11, v12, v13, v14);
  }

  if (objc_msgSend_polygonBuffers(self, v6, v7, v8, v9))
  {
    v19 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
    if (objc_msgSend_count(v19, v20, v21, v22, v23) != 1)
    {
      sub_239E2023C();
    }
  }

  v24 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0, v26, v27);

  return objc_msgSend_maskBufferOffset(v28, v29, v30, v31, v32);
}

- (void)setMaskBufferOffset:(NSUInteger)maskBufferOffset
{
  if (objc_msgSend_polygonBuffers(self, a2, maskBufferOffset, v3, v4))
  {
    v11 = objc_msgSend_polygonBuffers(self, v7, v8, v9, v10);
    objc_msgSend_count(v11, v12, v13, v14, v15);
  }

  if (objc_msgSend_polygonBuffers(self, v7, v8, v9, v10))
  {
    v20 = objc_msgSend_polygonBuffers(self, v16, v17, v18, v19);
    if (objc_msgSend_count(v20, v21, v22, v23, v24) != 1)
    {
      sub_239E2028C();
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v16, v17, v18, v19))
  {
    v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27, v28);
    objc_msgSend_setPolygonBuffers_(self, v30, v29, v31, v32);
    v33 = objc_alloc_init(MPSPolygonBuffer);
    v38 = objc_msgSend_polygonBuffers(self, v34, v35, v36, v37);
    objc_msgSend_addObject_(v38, v39, v33, v40, v41);
  }

  v42 = objc_msgSend_polygonBuffers(self, v25, v26, v27, v28);
  v46 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 0, v44, v45);

  MEMORY[0x2821F9670](v46, sel_setMaskBufferOffset_, maskBufferOffset, v47, v48);
}

- (NSUInteger)polygonCount
{
  if (objc_msgSend_polygonBuffers(self, a2, v2, v3, v4))
  {
    v10 = objc_msgSend_polygonBuffers(self, v6, v7, v8, v9);
    objc_msgSend_count(v10, v11, v12, v13, v14);
  }

  if (objc_msgSend_polygonBuffers(self, v6, v7, v8, v9))
  {
    v19 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
    if (objc_msgSend_count(v19, v20, v21, v22, v23) != 1)
    {
      sub_239E202DC();
    }
  }

  v24 = objc_msgSend_polygonBuffers(self, v15, v16, v17, v18);
  v28 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0, v26, v27);

  return objc_msgSend_polygonCount(v28, v29, v30, v31, v32);
}

- (void)setPolygonCount:(NSUInteger)polygonCount
{
  if (objc_msgSend_polygonBuffers(self, a2, polygonCount, v3, v4))
  {
    v11 = objc_msgSend_polygonBuffers(self, v7, v8, v9, v10);
    objc_msgSend_count(v11, v12, v13, v14, v15);
  }

  if (objc_msgSend_polygonBuffers(self, v7, v8, v9, v10))
  {
    v20 = objc_msgSend_polygonBuffers(self, v16, v17, v18, v19);
    if (objc_msgSend_count(v20, v21, v22, v23, v24) != 1)
    {
      sub_239E2032C();
    }
  }

  if (!objc_msgSend_polygonBuffers(self, v16, v17, v18, v19))
  {
    v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26, v27, v28);
    objc_msgSend_setPolygonBuffers_(self, v30, v29, v31, v32);
    v33 = objc_alloc_init(MPSPolygonBuffer);
    v38 = objc_msgSend_polygonBuffers(self, v34, v35, v36, v37);
    objc_msgSend_addObject_(v38, v39, v33, v40, v41);
  }

  v42 = objc_msgSend_polygonBuffers(self, v25, v26, v27, v28);
  v46 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 0, v44, v45);

  objc_msgSend_setPolygonCount_(v46, v47, polygonCount, v48, v49);
}

- (MPSPolygonAccelerationStructure)initWithDevice:(id)a3
{
  v10.receiver = self;
  v10.super_class = MPSPolygonAccelerationStructure;
  v3 = [(MPSAccelerationStructure *)&v10 initWithDevice:a3];
  v8 = v3;
  if (v3)
  {
    objc_msgSend_sharedInitPolygonAccelerationStructure(v3, v4, v5, v6, v7);
  }

  return v8;
}

- (MPSPolygonAccelerationStructure)initWithGroup:(id)a3
{
  v10.receiver = self;
  v10.super_class = MPSPolygonAccelerationStructure;
  v3 = [(MPSAccelerationStructure *)&v10 initWithGroup:a3];
  v8 = v3;
  if (v3)
  {
    objc_msgSend_sharedInitPolygonAccelerationStructure(v3, v4, v5, v6, v7);
  }

  return v8;
}

- (void)decodePolygonAccelerationStructureWithCoder:(id)a3
{
  v99[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_containsValueForKey_(a3, a2, @"MPSTriangleAccelerationStructureKeyTriangleCount", v3, v4))
  {
    v10 = objc_msgSend_decodeInt64ForKey_(a3, v7, @"MPSTriangleAccelerationStructureKeyTriangleCount", v8, v9);
    v15 = objc_msgSend_polygonBuffer(MPSPolygonBuffer, v11, v12, v13, v14);
    objc_msgSend_setPolygonCount_(v15, v16, v10, v17, v18);
    v99[0] = v15;
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v99, 1, v20);
  }

  else
  {
    v25 = MEMORY[0x277CBEB98];
    v98[0] = objc_opt_class();
    v98[1] = objc_opt_class();
    v98[2] = objc_opt_class();
    v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v98, 3, v27);
    v32 = objc_msgSend_setWithArray_(v25, v29, v28, v30, v31);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(a3, v33, v32, @"MPSTriangleAccelerationStructureKeyPolygonBuffers", v34);
  }

  self->_polygonBuffers = v21;
  self->_vertexStride = objc_msgSend_decodeInt64ForKey_(a3, v22, @"MPSTriangleAccelerationStructureKeyVertexStride", v23, v24);
  self->_indexType = objc_msgSend_decodeInt64ForKey_(a3, v35, @"MPSTriangleAccelerationStructureKeyIndexType", v36, v37);
  self->_polygonType = objc_msgSend_decodeInt64ForKey_(a3, v38, @"MPSPolygonAccelerationStructureKeyPolygonType", v39, v40);
  if (objc_msgSend_status(self, v41, v42, v43, v44) == 1)
  {
    if (self->_resourceEncoder)
    {
      v49 = objc_msgSend_group(self, v45, v46, v47, v48);
      v54 = objc_msgSend_bvhGroup(v49, v50, v51, v52, v53);
      v59 = objc_msgSend_commandBuffer(*(v54 + 24), v55, v56, v57, v58);
      v64 = objc_msgSend_group(self, v60, v61, v62, v63);
      v69 = *(objc_msgSend_bvhGroup(v64, v65, v66, v67, v68) + 80);
      v74 = objc_msgSend_count(self->_polygonBuffers, v70, v71, v72, v73);
      v79 = objc_msgSend_encodedLength(self->_resourceEncoder, v75, v76, v77, v78);
      self->_resourceBufferRange = sub_239E19178(v69, v79 * v74, v59);
      objc_msgSend_commit(v59, v80, v81, v82, v83);
      kdebug_trace();
      objc_msgSend_waitUntilCompleted(v59, v84, v85, v86, v87);
      kdebug_trace();
      LODWORD(v59) = *(self->_resourceBufferRange + 8);
      objc_msgSend_encodedLength(self->_resourceEncoder, v88, v89, v90, v91);
    }

    v92 = objc_msgSend_group(self, v45, v46, v47, v48);
    if (*(*(objc_msgSend_bvhGroup(v92, v93, v94, v95, v96) + 32) + 40))
    {
      operator new();
    }

    operator new();
  }

  v97 = *MEMORY[0x277D85DE8];
}

- (MPSPolygonAccelerationStructure)initWithCoder:(id)a3 device:(id)a4
{
  v15.receiver = self;
  v15.super_class = MPSPolygonAccelerationStructure;
  v5 = [(MPSAccelerationStructure *)&v15 initWithCoder:a3 device:a4];
  v10 = v5;
  if (v5)
  {
    objc_msgSend_sharedInitPolygonAccelerationStructure(v5, v6, v7, v8, v9);
    objc_msgSend_decodePolygonAccelerationStructureWithCoder_(v10, v11, a3, v12, v13);
  }

  return v10;
}

- (MPSPolygonAccelerationStructure)initWithCoder:(id)a3 group:(id)a4
{
  v15.receiver = self;
  v15.super_class = MPSPolygonAccelerationStructure;
  v5 = [(MPSAccelerationStructure *)&v15 initWithCoder:a3 group:a4];
  v10 = v5;
  if (v5)
  {
    objc_msgSend_sharedInitPolygonAccelerationStructure(v5, v6, v7, v8, v9);
    objc_msgSend_decodePolygonAccelerationStructureWithCoder_(v10, v11, a3, v12, v13);
  }

  return v10;
}

- (void)dealloc
{
  bvh = self->_bvh;
  if (bvh)
  {
    if (atomic_fetch_add(bvh + 2, 0xFFFFFFFF) == 1)
    {
      (*(*bvh + 8))(bvh);
    }

    self->_bvh = 0;
  }

  resourceBufferRange = self->_resourceBufferRange;
  if (resourceBufferRange)
  {
    sub_239E18C24(resourceBufferRange);
    self->_resourceBufferRange = 0;
  }

  v5.receiver = self;
  v5.super_class = MPSPolygonAccelerationStructure;
  [(MPSAccelerationStructure *)&v5 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v17.receiver = self;
  v17.super_class = MPSPolygonAccelerationStructure;
  [(MPSAccelerationStructure *)&v17 encodeWithCoder:?];
  objc_msgSend_encodeObject_forKey_(a3, v5, self->_polygonBuffers, @"MPSTriangleAccelerationStructureKeyPolygonBuffers", v6);
  objc_msgSend_encodeInt64_forKey_(a3, v7, self->_vertexStride, @"MPSTriangleAccelerationStructureKeyVertexStride", v8);
  objc_msgSend_encodeInt64_forKey_(a3, v9, self->_indexType, @"MPSTriangleAccelerationStructureKeyIndexType", v10);
  objc_msgSend_encodeInt64_forKey_(a3, v11, self->_polygonType, @"MPSPolygonAccelerationStructureKeyPolygonType", v12);
  if (objc_msgSend_status(self, v13, v14, v15, v16) == 1)
  {
    operator new();
  }
}

- (id)description
{
  v73 = *MEMORY[0x277D85DE8];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = self->_polygonBuffers;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, a2, &v68, v72, 16);
  if (v64)
  {
    v6 = 0;
    v63 = *v69;
    v7 = &stru_284D088A0;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        v66 = v7;
        if (*v69 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v68 + 1) + 8 * v8);
        v65 = MEMORY[0x277CCACA8];
        v6 = v9 + 1;
        v11 = objc_msgSend_vertexBuffer(v10, v2, v3, v4, v5);
        v16 = objc_msgSend_vertexBufferOffset(v10, v12, v13, v14, v15);
        v21 = objc_msgSend_indexBuffer(v10, v17, v18, v19, v20);
        v26 = objc_msgSend_indexBufferOffset(v10, v22, v23, v24, v25);
        v31 = objc_msgSend_maskBuffer(v10, v27, v28, v29, v30);
        v36 = objc_msgSend_maskBufferOffset(v10, v32, v33, v34, v35);
        v41 = objc_msgSend_polygonCount(v10, v37, v38, v39, v40);
        v45 = objc_msgSend_stringWithFormat_(v65, v42, @"\n\t\tbuffer %llu:\n\t\t\tvertex buffer: %p\n\t\t\tvertex buffer offset: %llu\n\t\t\tindex buffer: %p\n\t\t\tindex buffer offset: %llu\n\t\t\tmask buffer: %p\n\t\t\tmask buffer offset: %llu\n\t\t\tpolygon count: %llu", v43, v44, v9, v11, v16, v21, v26, v31, v36, v41);
        v7 = objc_msgSend_stringByAppendingString_(v66, v46, v45, v47, v48);
        ++v8;
        ++v9;
      }

      while (v64 != v8);
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v2, &v68, v72, 16);
    }

    while (v64);
  }

  else
  {
    v7 = &stru_284D088A0;
  }

  v49 = MEMORY[0x277CCACA8];
  v67.receiver = self;
  v67.super_class = MPSPolygonAccelerationStructure;
  v50 = [(MPSAccelerationStructure *)&v67 description];
  indexType = self->_indexType;
  v55 = "Unknown";
  v56 = "MPSDataTypeUInt32";
  if (indexType != 32)
  {
    v56 = "Unknown";
  }

  if (indexType == 16)
  {
    v57 = "MPSDataTypeUInt16";
  }

  else
  {
    v57 = v56;
  }

  polygonType = self->_polygonType;
  if (polygonType == 1)
  {
    v55 = "MPSPolygonTypeQuadrilateral";
  }

  if (!polygonType)
  {
    v55 = "MPSPolygonTypeTriangle";
  }

  result = objc_msgSend_stringWithFormat_(v49, v51, @"%@\n\tpolygon buffers:%@\n\tindex type: %s\n\tpolygon type: %s\n\tvertex stride: %llu", v52, v53, v50, v7, v57, v55, self->_vertexStride);
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)validate
{
  v90 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v87.receiver = self;
  v87.super_class = MPSPolygonAccelerationStructure;
  [(MPSAccelerationStructure *)&v87 validate];
  if (self->_vertexStride)
  {
    vertexStride = self->_vertexStride;
  }

  else
  {
    vertexStride = 16;
  }

  indexType = self->_indexType;
  v9 = 4;
  if (indexType != 32)
  {
    v9 = 1;
  }

  if (indexType == 16)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  if ((vertexStride & 3) != 0)
  {
    sub_239E2037C();
  }

  if (vertexStride <= 0xB)
  {
    sub_239E203CC();
  }

  if (!self->_polygonBuffers)
  {
    sub_239E2041C();
  }

  objc_msgSend_count(self->_polygonBuffers, v3, v4, v5, v6);
  if (!objc_msgSend_count(self->_polygonBuffers, v11, v12, v13, v14))
  {
    sub_239E20458();
  }

  if (!sub_239E17B90((*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v15, v16, v17, v18))
  {
    objc_msgSend_count(self->_polygonBuffers, v19, v20, v21, v22);
    if (objc_msgSend_count(self->_polygonBuffers, v23, v24, v25, v26) != 1)
    {
      sub_239E20494();
    }
  }

  if (self->_polygonType)
  {
    v27 = 4;
  }

  else
  {
    v27 = 3;
  }

  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  polygonBuffers = self->_polygonBuffers;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(polygonBuffers, v19, &v83, v89, 16);
  if (v29)
  {
    v33 = v29;
    v34 = *v84;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v84 != v34)
        {
          objc_enumerationMutation(polygonBuffers);
        }

        objc_msgSend_validateWithVerticesPerPolygon_vertexStride_indexStride_(*(*(&v83 + 1) + 8 * i), v30, v27, vertexStride, v10);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(polygonBuffers, v30, &v83, v89, 16);
    }

    while (v33);
  }

  v36 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v30, 0, v31, v32);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v37 = self->_polygonBuffers;
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v79, v88, 16);
  if (v39)
  {
    v44 = v39;
    v45 = *v80;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v80 != v45)
        {
          objc_enumerationMutation(v37);
        }

        v47 = *(*(&v79 + 1) + 8 * j);
        objc_msgSend_indexBuffer(v36, v40, v41, v42, v43);
        objc_msgSend_indexBuffer(v47, v48, v49, v50, v51);
        v56 = objc_msgSend_indexBuffer(v36, v52, v53, v54, v55) != 0;
        if (v56 != (objc_msgSend_indexBuffer(v47, v57, v58, v59, v60) != 0))
        {
          sub_239E204D0();
        }

        objc_msgSend_maskBuffer(v36, v61, v62, v63, v64);
        objc_msgSend_maskBuffer(v47, v65, v66, v67, v68);
        v73 = objc_msgSend_maskBuffer(v36, v69, v70, v71, v72) != 0;
        if (v73 != (objc_msgSend_maskBuffer(v47, v74, v75, v76, v77) != 0))
        {
          sub_239E2050C();
        }
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v79, v88, 16);
    }

    while (v44);
  }

  kdebug_trace();
  v78 = *MEMORY[0x277D85DE8];
}

- (void)rebuildWithCompletionHandler:(id)a3
{
  kdebug_trace();
  kdebug_trace();
  v5 = self;
  global_queue = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239DE4A84;
  block[3] = &unk_278B3B328;
  block[4] = self;
  block[5] = v5;
  block[6] = a3;
  dispatch_async(global_queue, block);
}

- (void)rebuild
{
  v2.receiver = self;
  v2.super_class = MPSPolygonAccelerationStructure;
  [(MPSAccelerationStructure *)&v2 rebuild];
}

- (id)newResourceEncoder
{
  v6 = *MEMORY[0x277CD7350];
  if (!sub_239E17B90((*(&self->super.super.super.isa + v6))[2], a2, v2, v3, v4))
  {
    return 0;
  }

  v7 = objc_autoreleasePoolPush();
  v16 = objc_msgSend_array(MEMORY[0x277CBEB18], v8, v9, v10, v11);
  for (i = 0; i != 3; ++i)
  {
    v18 = objc_msgSend_argumentDescriptor(MEMORY[0x277CD6C70], v12, v13, v14, v15);
    objc_msgSend_setDataType_(v18, v19, 60, v20, v21);
    objc_msgSend_setIndex_(v18, v22, i, v23, v24);
    objc_msgSend_setAccess_(v18, v25, 0, v26, v27);
    objc_msgSend_addObject_(v16, v28, v18, v29, v30);
  }

  v31 = objc_msgSend_argumentDescriptor(MEMORY[0x277CD6C70], v12, v13, v14, v15);
  objc_msgSend_setDataType_(v31, v32, 33, v33, v34);
  objc_msgSend_setIndex_(v31, v35, 3, v36, v37);
  objc_msgSend_addObject_(v16, v38, v31, v39, v40);
  v44 = objc_msgSend_newArgumentEncoderWithArguments_((*(&self->super.super.super.isa + v6))[2], v41, v16, v42, v43);
  objc_autoreleasePoolPop(v7);
  return v44;
}

- (void)encodeResourcesToBuffer:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = self->_polygonBuffers;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, a2, &v70, v74, 16);
  if (v4)
  {
    v9 = v4;
    v10 = 0;
    v11 = 0;
    v68 = *v71;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v71 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v70 + 1) + 8 * i);
        resourceEncoder = self->_resourceEncoder;
        v15 = *(self->_resourceBufferRange + 4);
        v16 = objc_msgSend_encodedLength(resourceEncoder, v5, v6, v7, v8);
        objc_msgSend_setArgumentBuffer_offset_(resourceEncoder, v17, a3, v15 + v16 * v11, v18);
        v19 = self->_resourceEncoder;
        v24 = objc_msgSend_vertexBuffer(v13, v20, v21, v22, v23);
        v29 = objc_msgSend_vertexBufferOffset(v13, v25, v26, v27, v28);
        objc_msgSend_setBuffer_offset_atIndex_(v19, v30, v24, v29, 0);
        if (objc_msgSend_indexBuffer(v13, v31, v32, v33, v34))
        {
          v39 = self->_resourceEncoder;
          v40 = objc_msgSend_indexBuffer(v13, v35, v36, v37, v38);
          v45 = objc_msgSend_indexBufferOffset(v13, v41, v42, v43, v44);
          objc_msgSend_setBuffer_offset_atIndex_(v39, v46, v40, v45, 1);
        }

        if (objc_msgSend_maskBuffer(v13, v35, v36, v37, v38))
        {
          v51 = self->_resourceEncoder;
          v52 = objc_msgSend_maskBuffer(v13, v47, v48, v49, v50);
          v57 = objc_msgSend_maskBufferOffset(v13, v53, v54, v55, v56);
          objc_msgSend_setBuffer_offset_atIndex_(v51, v58, v52, v57, 2);
        }

        *objc_msgSend_constantDataAtIndex_(self->_resourceEncoder, v47, 3, v49, v50) = v11;
        *objc_msgSend_constantDataAtIndex_(self->_resourceEncoder, v59, 4, v60, v61) = v10;
        v10 += objc_msgSend_polygonCount(v13, v62, v63, v64, v65);
        ++v11;
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v70, v74, 16);
    }

    while (v9);
  }

  v66 = *MEMORY[0x277D85DE8];
}

- (void)bindResourcesWithEncoder:(id)a3 commandBuffer:(id)a4 retainedResources:(id)a5
{
  v278 = *MEMORY[0x277D85DE8];
  v275.receiver = self;
  v275.super_class = MPSPolygonAccelerationStructure;
  [MPSAccelerationStructure bindResourcesWithEncoder:sel_bindResourcesWithEncoder_commandBuffer_retainedResources_ commandBuffer:? retainedResources:?];
  v12 = objc_msgSend_group(self, v8, v9, v10, v11);
  v17 = objc_msgSend_bvhGroup(v12, v13, v14, v15, v16);
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(v17 + 32) + 24), v18, 0, v19, v20);
  v26 = objc_msgSend_group(self, v22, v23, v24, v25);
  v31 = objc_msgSend_bvhGroup(v26, v27, v28, v29, v30);
  v35 = objc_msgSend_objectAtIndexedSubscript_(*(*(v31 + 32) + 24), v32, 1, v33, v34);
  v40 = objc_msgSend_group(self, v36, v37, v38, v39);
  v45 = objc_msgSend_bvhGroup(v40, v41, v42, v43, v44);
  v49 = objc_msgSend_objectAtIndexedSubscript_(*(*(v45 + 40) + 24), v46, 0, v47, v48);
  v54 = objc_msgSend_group(self, v50, v51, v52, v53);
  v59 = objc_msgSend_bvhGroup(v54, v55, v56, v57, v58);
  v63 = objc_msgSend_objectAtIndexedSubscript_(*(*(v59 + 48) + 24), v60, 0, v61, v62);
  v68 = objc_msgSend_group(self, v64, v65, v66, v67);
  v73 = objc_msgSend_bvhGroup(v68, v69, v70, v71, v72);
  v77 = objc_msgSend_objectAtIndexedSubscript_(*(*(v73 + 56) + 24), v74, 0, v75, v76);
  v82 = objc_msgSend_group(self, v78, v79, v80, v81);
  v87 = objc_msgSend_bvhGroup(v82, v83, v84, v85, v86);
  v91 = objc_msgSend_objectAtIndexedSubscript_(*(*(v87 + 64) + 24), v88, 0, v89, v90);
  v96 = objc_msgSend_group(self, v92, v93, v94, v95);
  v101 = objc_msgSend_bvhGroup(v96, v97, v98, v99, v100);
  v105 = objc_msgSend_objectAtIndexedSubscript_(*(*(v101 + 72) + 24), v102, 0, v103, v104);
  v259 = v21;
  objc_msgSend_setBuffer_offset_atIndex_(a3, v106, v21, 0, 14);
  objc_msgSend_setBuffer_offset_atIndex_(a3, v107, v35, 0, 30);
  v111 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v108, 0, v109, v110);
  v116 = objc_msgSend_vertexBuffer(v111, v112, v113, v114, v115);
  v120 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v117, 0, v118, v119);
  v125 = objc_msgSend_vertexBufferOffset(v120, v121, v122, v123, v124);
  objc_msgSend_setBuffer_offset_atIndex_(a3, v126, v116, v125, 8);
  v130 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v127, 0, v128, v129);
  v135 = objc_msgSend_indexBuffer(v130, v131, v132, v133, v134);
  v139 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v136, 0, v137, v138);
  v144 = objc_msgSend_indexBufferOffset(v139, v140, v141, v142, v143);
  objc_msgSend_setBuffer_offset_atIndex_(a3, v145, v135, v144, 9);
  v149 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v146, 0, v147, v148);
  v154 = objc_msgSend_maskBuffer(v149, v150, v151, v152, v153);
  v158 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v155, 0, v156, v157);
  v163 = objc_msgSend_maskBufferOffset(v158, v159, v160, v161, v162);
  objc_msgSend_setBuffer_offset_atIndex_(a3, v164, v154, v163, 10);
  v263 = v49;
  objc_msgSend_setBuffer_offset_atIndex_(a3, v165, v49, 0, 12);
  v262 = v63;
  objc_msgSend_setBuffer_offset_atIndex_(a3, v166, v63, 0, 13);
  v261 = v77;
  objc_msgSend_setBuffer_offset_atIndex_(a3, v167, v77, 0, 15);
  v260 = v91;
  objc_msgSend_setBuffer_offset_atIndex_(a3, v168, v91, *(*(self->_bvh + 6) + 32), 16);
  objc_msgSend_setBuffer_offset_atIndex_(a3, v169, v105, 0, 17);
  v273 = 0u;
  v274 = 0u;
  v271 = 0u;
  v272 = 0u;
  polygonBuffers = self->_polygonBuffers;
  v172 = objc_msgSend_countByEnumeratingWithState_objects_count_(polygonBuffers, v171, &v271, v277, 16);
  if (v172)
  {
    v177 = v172;
    v178 = *v272;
    do
    {
      for (i = 0; i != v177; ++i)
      {
        if (*v272 != v178)
        {
          objc_enumerationMutation(polygonBuffers);
        }

        v180 = *(*(&v271 + 1) + 8 * i);
        v181 = objc_msgSend_vertexBuffer(v180, v173, v174, v175, v176);
        objc_msgSend_useResource_usage_(a3, v182, v181, 1, v183);
        if (objc_msgSend_indexBuffer(v180, v184, v185, v186, v187))
        {
          v192 = objc_msgSend_indexBuffer(v180, v188, v189, v190, v191);
          objc_msgSend_useResource_usage_(a3, v193, v192, 1, v194);
        }

        if (objc_msgSend_maskBuffer(v180, v188, v189, v190, v191))
        {
          v195 = objc_msgSend_maskBuffer(v180, v173, v174, v175, v176);
          objc_msgSend_useResource_usage_(a3, v196, v195, 1, v197);
        }
      }

      v177 = objc_msgSend_countByEnumeratingWithState_objects_count_(polygonBuffers, v173, &v271, v277, 16);
    }

    while (v177);
  }

  bvh = self->_bvh;
  v199 = *(bvh[3] + 32);
  v200 = sub_239DE30C0(bvh);
  v201 = *(*(self->_bvh + 4) + 32) >> 4;
  v270[0] = v199 / v200;
  v270[1] = v201;
  objc_msgSend_setBytes_length_atIndex_(a3, v202, v270, 12, 27);
  if ((objc_msgSend_retainedReferences(a4, v203, v204, v205, v206) & 1) == 0)
  {
    objc_msgSend_addObject_(a5, v207, v259, v208, v209);
    objc_msgSend_addObject_(a5, v210, v35, v211, v212);
    v268 = 0u;
    v269 = 0u;
    v266 = 0u;
    v267 = 0u;
    v213 = self->_polygonBuffers;
    v215 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v214, &v266, v276, 16);
    if (v215)
    {
      v220 = v215;
      v221 = *v267;
      do
      {
        for (j = 0; j != v220; ++j)
        {
          if (*v267 != v221)
          {
            objc_enumerationMutation(v213);
          }

          v223 = *(*(&v266 + 1) + 8 * j);
          v224 = objc_msgSend_vertexBuffer(v223, v216, v217, v218, v219);
          objc_msgSend_addObject_(a5, v225, v224, v226, v227);
          if (objc_msgSend_indexBuffer(v223, v228, v229, v230, v231))
          {
            v236 = objc_msgSend_indexBuffer(v223, v232, v233, v234, v235);
            objc_msgSend_addObject_(a5, v237, v236, v238, v239);
          }

          if (objc_msgSend_maskBuffer(v223, v232, v233, v234, v235))
          {
            v240 = objc_msgSend_maskBuffer(v223, v216, v217, v218, v219);
            objc_msgSend_addObject_(a5, v241, v240, v242, v243);
          }
        }

        v220 = objc_msgSend_countByEnumeratingWithState_objects_count_(v213, v216, &v266, v276, 16);
      }

      while (v220);
    }

    objc_msgSend_addObject_(a5, v216, v263, v218, v219);
    objc_msgSend_addObject_(a5, v244, v262, v245, v246);
    objc_msgSend_addObject_(a5, v247, v261, v248, v249);
    objc_msgSend_addObject_(a5, v250, v260, v251, v252);
    objc_msgSend_addObject_(a5, v253, v105, v254, v255);
  }

  v256 = self->_bvh;
  atomic_fetch_add(v256 + 2, 1u);
  resourceBufferRange = self->_resourceBufferRange;
  if (resourceBufferRange)
  {
    sub_239E18C14(resourceBufferRange);
  }

  v265[0] = MEMORY[0x277D85DD0];
  v265[1] = 3221225472;
  v265[2] = sub_239DE63AC;
  v265[3] = &unk_278B3B348;
  v265[4] = v256;
  v265[5] = resourceBufferRange;
  objc_msgSend_addCompletedHandler_(a4, v207, v265, v208, v209);
  v258 = *MEMORY[0x277D85DE8];
}

- (id)copyPolygonAccelerationStructureWithZone:(_NSZone *)a3 device:(id)a4 group:(id)a5
{
  if (a5)
  {
    v6 = a5;
    v62.receiver = self;
    v62.super_class = MPSPolygonAccelerationStructure;
    v7 = [(MPSAccelerationStructure *)&v62 copyWithZone:a3 group:a5];
    objc_msgSend_sharedInitPolygonAccelerationStructure(v7, v8, v9, v10, v11);
  }

  else
  {
    v61.receiver = self;
    v61.super_class = MPSPolygonAccelerationStructure;
    v7 = [(MPSAccelerationStructure *)&v61 copyWithZone:a3 device:a4];
    v6 = objc_msgSend_group(v7, v12, v13, v14, v15);
    objc_msgSend_sharedInitPolygonAccelerationStructure(v7, v16, v17, v18, v19);
  }

  v20 = objc_alloc(MEMORY[0x277CBEA60]);
  v7[1].super._device = objc_msgSend_initWithArray_copyItems_(v20, v21, self->_polygonBuffers, 1, v22);
  v7[1].super._labelHash = self->_vertexStride;
  LODWORD(v7[1].super.super.isa) = self->_indexType;
  v7[1].super._options = self->_polygonType;
  if (objc_msgSend_status(self, v23, v24, v25, v26) == 1)
  {
    if (v7[1].super._library)
    {
      v31 = objc_msgSend_bvhGroup(v6, v27, v28, v29, v30);
      v36 = objc_msgSend_commandBuffer(*(v31 + 24), v32, v33, v34, v35);
      v41 = *(objc_msgSend_bvhGroup(v6, v37, v38, v39, v40) + 80);
      v46 = objc_msgSend_count(v7[1].super._device, v42, v43, v44, v45);
      v51 = objc_msgSend_encodedLength(v7[1].super._library, v47, v48, v49, v50);
      v7[1].super._label = sub_239E19178(v41, v51 * v46, v36);
      objc_msgSend_commit(v36, v52, v53, v54, v55);
      LODWORD(v36) = *(v7[1].super._label + 8);
      objc_msgSend_encodedLength(v7[1].super._library, v56, v57, v58, v59);
    }

    operator new();
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3 group:(id)a4
{
  v8 = objc_msgSend_device(a4, a2, a3, a4, v4);

  return MEMORY[0x2821F9670](self, sel_copyPolygonAccelerationStructureWithZone_device_group_, a3, v8, a4);
}

- (void)encodeRefitToCommandBuffer:(id)a3
{
  v373 = *MEMORY[0x277D85DE8];
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    objc_msgSend_validate(self, a2, a3, v3, v4);
    objc_msgSend_status(self, v7, v8, v9, v10);
    if (objc_msgSend_status(self, v11, v12, v13, v14) != 1)
    {
      sub_239E2064C();
    }

    objc_msgSend_usage(self, v15, v16, v17, v18);
    if ((objc_msgSend_usage(self, v19, v20, v21, v22) & 1) == 0)
    {
      sub_239E20698();
    }
  }

  if (self->_vertexStride)
  {
    vertexStride = self->_vertexStride;
  }

  else
  {
    vertexStride = 16;
  }

  v24 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, a2, 0, v3, v4);
  if (objc_msgSend_indexBuffer(v24, v25, v26, v27, v28))
  {
    if (self->_indexType == 16)
    {
      v33 = 128;
    }

    else
    {
      v33 = 256;
    }
  }

  else
  {
    v33 = 0;
  }

  if (objc_msgSend_retainedReferences(a3, v29, v30, v31, v32))
  {
    v38 = 0;
  }

  else
  {
    v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  if (objc_msgSend_useResourceBuffer(self, v34, v35, v36, v37))
  {
    v43 = objc_msgSend_device(a3, v39, v40, v41, v42);
    v48 = objc_msgSend_group(self, v44, v45, v46, v47);
    v53 = *(*(objc_msgSend_bvhGroup(v48, v49, v50, v51, v52) + 80) + 48);
    v54 = *MEMORY[0x277CD7350];
    v55 = (*(**(&self->super.super.super.isa + v54) + 24))(*(&self->super.super.super.isa + v54));
    v58 = objc_msgSend_newBufferWithLength_options_(v43, v56, v53, 16 * v55, v57);
    objc_msgSend_encodeResourcesToBuffer_(self, v59, v58, v60, v61);
    v62 = 0x80000000000;
  }

  else
  {
    v62 = 0;
    v58 = 0;
    v54 = *MEMORY[0x277CD7350];
  }

  bvh = self->_bvh;
  v65 = bvh[21];
  v64 = bvh[22];
  v66 = (0x1000000000 - (__clz(v65) << 36)) & 0x1000000000;
  if (v65)
  {
    v67 = v66;
  }

  else
  {
    v67 = 0;
  }

  v68 = (*(&self->super.super.super.isa + v54))[2];
  v69 = *MEMORY[0x277CD7370];
  v70 = *(&self->super.super.super.isa + v69);
  v71 = (v62 | v33 | ((v64 == 1) << 38) | ((self->_polygonType & 1) << 39) | v67) ^ 0x1000000000;
  *&v361[0] = v71 | 1;
  *(&v361[0] + 1) = 0;
  memset(&v361[1] + 4, 0, 20);
  LODWORD(v361[1]) = vertexStride;
  v349 = sub_239DE7190(@"refitPolygonLeafNodeKernel", v68, v70, v361);
  v72 = (*(&self->super.super.super.isa + v54))[2];
  v73 = *(&self->super.super.super.isa + v69);
  *&v361[0] = v71 | 3;
  *(&v361[0] + 1) = 0;
  memset(&v361[1] + 4, 0, 20);
  LODWORD(v361[1]) = vertexStride;
  v348 = sub_239DE7190(@"refitInnerNodeKernel", v72, v73, v361);
  v343 = a3;
  v78 = objc_msgSend_computeCommandEncoder(a3, v74, v75, v76, v77);
  v83 = objc_msgSend_group(self, v79, v80, v81, v82);
  v88 = objc_msgSend_bvhGroup(v83, v84, v85, v86, v87);
  v92 = objc_msgSend_objectAtIndexedSubscript_(*(*(v88 + 40) + 24), v89, 0, v90, v91);
  v97 = objc_msgSend_bvhGroup(v83, v93, v94, v95, v96);
  v101 = objc_msgSend_objectAtIndexedSubscript_(*(*(v97 + 48) + 24), v98, 0, v99, v100);
  v106 = objc_msgSend_bvhGroup(v83, v102, v103, v104, v105);
  v110 = objc_msgSend_objectAtIndexedSubscript_(*(*(v106 + 32) + 24), v107, 0, v108, v109);
  v115 = objc_msgSend_bvhGroup(v83, v111, v112, v113, v114);
  v119 = objc_msgSend_objectAtIndexedSubscript_(*(*(v115 + 32) + 24), v116, 1, v117, v118);
  v341 = v92;
  objc_msgSend_setBuffer_offset_atIndex_(v78, v120, v92, 0, 2);
  v339 = v110;
  objc_msgSend_setBuffer_offset_atIndex_(v78, v121, v110, 0, 3);
  v338 = v119;
  objc_msgSend_setBuffer_offset_atIndex_(v78, v122, v119, 0, 11);
  v126 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v123, 0, v124, v125);
  v131 = objc_msgSend_indexBuffer(v126, v127, v128, v129, v130);
  v135 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v132, 0, v133, v134);
  v140 = objc_msgSend_indexBufferOffset(v135, v136, v137, v138, v139);
  objc_msgSend_setBuffer_offset_atIndex_(v78, v141, v131, v140, 4);
  v145 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v142, 0, v143, v144);
  v150 = objc_msgSend_vertexBuffer(v145, v146, v147, v148, v149);
  v154 = objc_msgSend_objectAtIndexedSubscript_(self->_polygonBuffers, v151, 0, v152, v153);
  v159 = objc_msgSend_vertexBufferOffset(v154, v155, v156, v157, v158);
  objc_msgSend_setBuffer_offset_atIndex_(v78, v160, v150, v159, 5);
  v340 = v101;
  objc_msgSend_setBuffer_offset_atIndex_(v78, v161, v101, 0, 6);
  v342 = v58;
  objc_msgSend_setBuffer_offset_atIndex_(v78, v162, v58, 0, 12);
  v369 = 0u;
  v370 = 0u;
  v367 = 0u;
  v368 = 0u;
  polygonBuffers = self->_polygonBuffers;
  v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(polygonBuffers, v164, &v367, v372, 16);
  if (v165)
  {
    v170 = v165;
    v171 = *v368;
    do
    {
      for (i = 0; i != v170; ++i)
      {
        if (*v368 != v171)
        {
          objc_enumerationMutation(polygonBuffers);
        }

        v173 = *(*(&v367 + 1) + 8 * i);
        v174 = objc_msgSend_vertexBuffer(v173, v166, v167, v168, v169);
        objc_msgSend_useResource_usage_(v78, v175, v174, 1, v176);
        if (objc_msgSend_indexBuffer(v173, v177, v178, v179, v180))
        {
          v181 = objc_msgSend_indexBuffer(v173, v166, v167, v168, v169);
          objc_msgSend_useResource_usage_(v78, v182, v181, 1, v183);
        }
      }

      v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(polygonBuffers, v166, &v367, v372, 16);
    }

    while (v170);
  }

  v184 = self->_bvh;
  v185 = v184[3];
  v366 = *(v184[4] + 32) >> 4;
  v186 = *(v185 + 32);
  v365 = v186 / sub_239DE30C0(v184);
  objc_msgSend_setBytes_length_atIndex_(v78, v187, &v366, 4, 9);
  objc_msgSend_setBytes_length_atIndex_(v78, v188, &v365, 4, 10);
  v364 = *(self->_bvh + 9);
  objc_msgSend_setBytes_length_atIndex_(v78, v189, &v364, 4, 0);
  v192 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v54))[2], v190, 4 * v364, 32, v191);
  v195 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v54))[2], v193, 4 * v364, 32, v194);
  v198 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v54))[2], v196, 4, 32, v197);
  v201 = self;
  v202 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v54))[2], v199, 4, 32, v200);
  v347 = objc_msgSend_newBufferWithLength_options_((*(&v201->super.super.super.isa + v54))[2], v203, 12, 32, v204);
  objc_msgSend_setBuffer_offset_atIndex_(v78, v205, v202, 0, 13);
  objc_msgSend_setBuffer_offset_atIndex_(v78, v206, v195, 0, 14);
  objc_msgSend_encodeClearWithEncoder_buffer_bufferOffset_value_(v201, v207, v78, v202, 0, 0);
  objc_msgSend_setComputePipelineState_(v78, v208, v349, v209, v210);
  v215 = objc_msgSend_threadExecutionWidth(v349, v211, v212, v213, v214);
  v345 = (v215 + *(v201->_bvh + 9) - 1) / v215;
  v346 = v215;
  *&v361[0] = v345;
  *(v361 + 8) = vdupq_n_s64(1uLL);
  *v363 = v215;
  *&v363[8] = *(v361 + 8);
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v78, v216, v361, v363, v217);
  v362 = 0;
  memset(v361, 0, sizeof(v361));
  objc_msgSend_getBVHOptions(v201, v218, v219, v220, v221);
  v350 = v201;
  v226 = sub_239DFA24C((*(&v201->super.super.super.isa + v54))[2], v222, v223, v224, v225);
  if (LODWORD(v361[2]))
  {
    v228 = v226;
    v229 = 0;
    v344 = vdupq_n_s64(1uLL);
    do
    {
      v230 = v195;
      v231 = v202;
      objc_msgSend_encodeClearWithEncoder_buffer_bufferOffset_value_(v350, v227, v78, v198, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v78, v232, v198, 0, 13);
      objc_msgSend_setBuffer_offset_atIndex_(v78, v233, v192, 0, 14);
      objc_msgSend_setBuffer_offset_atIndex_(v78, v234, v202, 0, 15);
      objc_msgSend_setBuffer_offset_atIndex_(v78, v235, v195, 0, 16);
      if (v228)
      {
        objc_msgSend_encodeIndirectDispatchWithEncoder_pipeline_threadCountBuffer_threadCountBufferOffset_indirectDispatchBuffer_indirectDispatchBufferOffset_(v350, v236, v78, v348, v202, 0, v347, 0);
      }

      else
      {
        objc_msgSend_setComputePipelineState_(v78, v236, v348, v237, v238);
        *v363 = v345;
        *&v363[8] = v344;
        v359 = v346;
        v360 = v344;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v78, v239, v363, &v359, v240);
      }

      ++v229;
      v195 = v192;
      v202 = v198;
      v198 = v231;
      v192 = v230;
    }

    while (v229 < LODWORD(v361[2]));
  }

  else
  {
    v230 = v192;
    v231 = v198;
  }

  v241 = v350;
  objc_msgSend_setBuffer_offset_atIndex_(v78, v227, *(v350->_bvh + 12), 0, 0);
  v246 = objc_msgSend_boundingBoxCopyPipeline(v350, v242, v243, v244, v245);
  objc_msgSend_setComputePipelineState_(v78, v247, v246, v248, v249);
  v358 = *(v350->_bvh + 21);
  objc_msgSend_setBytes_length_atIndex_(v78, v250, &v358, 4, 30);
  v357 = *(v350->_bvh + 22) == 1;
  objc_msgSend_setBytes_length_atIndex_(v78, v251, &v357, 1, 29);
  v256 = objc_msgSend_boundingBoxCopyPipeline(v350, v252, v253, v254, v255);
  v261 = objc_msgSend_threadExecutionWidth(v256, v257, v258, v259, v260);
  *v363 = vdupq_n_s64(1uLL);
  *&v363[16] = 1;
  v359 = v261;
  v360 = *v363;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v78, v262, v363, &v359, v263);
  objc_msgSend_endEncoding(v78, v264, v265, v266, v267);
  v271 = &off_239E26000;
  if (v38)
  {
    objc_msgSend_addObject_(v38, v268, v341, v269, v270);
    objc_msgSend_addObject_(v38, v272, v340, v273, v274);
    objc_msgSend_addObject_(v38, v275, v339, v276, v277);
    objc_msgSend_addObject_(v38, v278, v338, v279, v280);
    if (v342)
    {
      objc_msgSend_addObject_(v38, v281, v342, v282, v283);
    }

    v356 = 0u;
    v354 = 0u;
    v355 = 0u;
    v353 = 0u;
    v284 = v350->_polygonBuffers;
    v285 = objc_msgSend_countByEnumeratingWithState_objects_count_(v284, v281, &v353, v371, 16);
    if (v285)
    {
      v290 = v285;
      v291 = *v354;
      do
      {
        for (j = 0; j != v290; ++j)
        {
          if (*v354 != v291)
          {
            objc_enumerationMutation(v284);
          }

          v293 = *(*(&v353 + 1) + 8 * j);
          v294 = objc_msgSend_vertexBuffer(v293, v286, v287, v288, v289);
          objc_msgSend_addObject_(v38, v295, v294, v296, v297);
          if (objc_msgSend_indexBuffer(v293, v298, v299, v300, v301))
          {
            v302 = objc_msgSend_indexBuffer(v293, v286, v287, v288, v289);
            objc_msgSend_addObject_(v38, v303, v302, v304, v305);
          }
        }

        v290 = objc_msgSend_countByEnumeratingWithState_objects_count_(v284, v286, &v353, v371, 16);
      }

      while (v290);
    }

    v241 = v350;
    objc_msgSend_addObject_(v38, v286, *(v350->_bvh + 12), v288, v289);
    v310 = objc_msgSend_boundingBoxCopyPipeline(v350, v306, v307, v308, v309);
    objc_msgSend_addObject_(v38, v311, v310, v312, v313);
    objc_msgSend_addObject_(v38, v314, v230, v315, v316);
    objc_msgSend_addObject_(v38, v317, v195, v318, v319);
    objc_msgSend_addObject_(v38, v320, v231, v321, v322);
    objc_msgSend_addObject_(v38, v323, v202, v324, v325);
    objc_msgSend_addObject_(v38, v326, v347, v327, v328);
    v352[0] = MEMORY[0x277D85DD0];
    v271 = &off_239E26000;
    v352[1] = 3221225472;
    v352[2] = sub_239DE7334;
    v352[3] = &unk_278B3B370;
    v352[4] = v38;
    objc_msgSend_addCompletedHandler_(v343, v329, v352, v330, v331);
  }

  v335 = v241->_bvh;
  atomic_fetch_add(v335 + 2, 1u);
  resourceBufferRange = v241->_resourceBufferRange;
  if (resourceBufferRange)
  {
    sub_239E18C14(resourceBufferRange);
  }

  v351[0] = MEMORY[0x277D85DD0];
  v351[1] = *(v271 + 403);
  v351[2] = sub_239DE733C;
  v351[3] = &unk_278B3B348;
  v351[4] = v335;
  v351[5] = resourceBufferRange;
  objc_msgSend_addCompletedHandler_(v343, v332, v351, v333, v334);
  v337 = *MEMORY[0x277D85DE8];
}

@end