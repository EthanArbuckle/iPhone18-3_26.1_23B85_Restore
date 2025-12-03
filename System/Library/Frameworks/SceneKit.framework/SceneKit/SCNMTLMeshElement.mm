@interface SCNMTLMeshElement
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (uint64_t)effectiveIndexOffset;
- (uint64_t)effectivePrimitiveCount;
- (uint64_t)indexBuffer;
- (uint64_t)primitiveCount;
- (uint64_t)setIndexCount:(uint64_t)result;
- (uint64_t)setIndexType:(uint64_t)result;
- (uint64_t)setInstanceCount:(uint64_t)result;
- (uint64_t)setSharedIndexBufferOffset:(uint64_t)result;
- (void)dealloc;
- (void)setDrawIndexedPrimitivesIndirectBuffer:(void *)buffer;
- (void)setIndexBuffer:(void *)buffer;
- (void)setPrimitiveRange:(uint64_t)range;
- (void)setupWithElement:(void *)result;
@end

@implementation SCNMTLMeshElement

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 8) = *&self->_primitiveType;
  *(v4 + 3) = self->_instanceCount;
  *(v4 + 4) = self->_sharedIndexBufferOffset;
  *(v4 + 5) = self->_indexBuffer;
  *(v4 + 6) = self->_drawIndexedPrimitivesIndirectBuffer;
  *(v4 + 56) = *&self->_indexType;
  *(v4 + 9) = self->_effectiveIndexCount;
  return v4;
}

- (id)description
{
  primitiveType_low = LODWORD(self->_primitiveType);
  indexBuffer = self->_indexBuffer;
  drawIndexedPrimitivesIndirectBuffer = self->_drawIndexedPrimitivesIndirectBuffer;
  indexCount_low = LODWORD(self->_indexCount);
  effectiveIndexOffset_low = LODWORD(self->_effectiveIndexOffset);
  if (drawIndexedPrimitivesIndirectBuffer)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"<SCNMTLMeshElement: %p | type: %d, index buffer: %@ (%d indices), indirect buffer: %@, effective count: %d, offset: %d>", self, primitiveType_low, indexBuffer, indexCount_low, drawIndexedPrimitivesIndirectBuffer, LODWORD(self->_effectiveIndexCount), effectiveIndexOffset_low];
  }

  else
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"<SCNMTLMeshElement: %p | type: %d, index buffer: %@ (%d indices), effective count: %d, offset: %d>", self, primitiveType_low, indexBuffer, indexCount_low, LODWORD(self->_effectiveIndexCount), effectiveIndexOffset_low, v8];
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 40);
    objc_setProperty_nonatomic(self, v3, 0, 48);
  }

  v4.receiver = self;
  v4.super_class = SCNMTLMeshElement;
  [(SCNMTLMeshElement *)&v4 dealloc];
}

- (void)setIndexBuffer:(void *)buffer
{
  if (buffer)
  {
    objc_setProperty_nonatomic(buffer, newValue, newValue, 40);
  }
}

- (void)setDrawIndexedPrimitivesIndirectBuffer:(void *)buffer
{
  if (buffer)
  {
    objc_setProperty_nonatomic(buffer, newValue, newValue, 48);
  }
}

- (uint64_t)effectiveIndexOffset
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)setupWithElement:(void *)result
{
  v24 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    Type = C3DMeshElementGetType(a2);
    v3[1] = C3DMeshElementTypeToMTLPrimitiveType(Type);
    v3[2] = C3DMeshElementGetIndexCount(a2);
    HIDWORD(v23) = 0;
    if ((C3DMeshElementGetIndexes(a2, &v23 + 1) || C3DMeshElementGetMTLBuffer(a2)) && (HIDWORD(v23) - 1) >= 2)
    {
      if (HIDWORD(v23) == 4)
      {
        v5 = 1;
        goto LABEL_6;
      }

      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_5_4(&dword_21BEF7000, v9, v10, "Error: Invalid index size (%d bytes per index)", v11, v12, v13, v14, v22, v23, 0);
      }

      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_5_4(&dword_21BEF7000, v16, v17, "Unreachable code: Invalid index size (%d bytes per index)", v18, v19, v20, v21, v22, v23, 0);
      }
    }

    v5 = 0;
LABEL_6:
    v3[7] = v5;
    v3[3] = C3DMeshElementGetInstanceCount(a2);
    PrimitiveRange = C3DMeshElementGetPrimitiveRange(a2);
    return [(SCNMTLMeshElement *)v3 setPrimitiveRange:v7];
  }

  return result;
}

- (void)setPrimitiveRange:(uint64_t)range
{
  if (result)
  {
    if (a2 == -1)
    {
      result[8] = 0;
      range = result[2];
LABEL_10:
      result[9] = range;
    }

    else
    {
      switch(result[1])
      {
        case 0:
          result[8] = a2;
          goto LABEL_10;
        case 1:
          result[8] = 2 * a2;
          range *= 2;
          goto LABEL_10;
        case 2:
          result[8] = a2;
          ++range;
          goto LABEL_10;
        case 3:
          result[8] = 3 * a2;
          range *= 3;
          goto LABEL_10;
        case 4:
          result[8] = a2;
          range += 2;
          goto LABEL_10;
        default:
          return result;
      }
    }
  }

  return result;
}

- (uint64_t)primitiveCount
{
  if (result)
  {
    switch(*(result + 8))
    {
      case 0:
        result = *(result + 16);
        break;
      case 1:
        v1 = *(result + 16);
        v2 = 2;
        goto LABEL_9;
      case 2:
        result = *(result + 16) - 1;
        break;
      case 3:
        v1 = *(result + 16);
        v2 = 3;
LABEL_9:
        result = v1 / v2;
        break;
      case 4:
        result = *(result + 16) - 2;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

- (uint64_t)effectivePrimitiveCount
{
  if (result)
  {
    switch(*(result + 8))
    {
      case 0:
        result = *(result + 72);
        break;
      case 1:
        v1 = *(result + 72);
        v2 = 2;
        goto LABEL_9;
      case 2:
        result = *(result + 72) - 1;
        break;
      case 3:
        v1 = *(result + 72);
        v2 = 3;
LABEL_9:
        result = v1 / v2;
        break;
      case 4:
        result = *(result + 72) - 2;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

- (uint64_t)setIndexCount:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setInstanceCount:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setSharedIndexBufferOffset:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

- (uint64_t)indexBuffer
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)setIndexType:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

@end