@interface MTLEmulationIndirectArgumentBufferLayout
- (MTLEmulationIndirectArgumentBufferLayout)initWithStructType:(id)a3;
- (unint64_t)offsetForBuffer:(unint64_t)a3;
- (unint64_t)offsetForConstant:(unint64_t)a3;
- (unint64_t)offsetForInstanceAccelerationStructure:(unint64_t)a3;
- (unint64_t)offsetForIntersectionFunctionTable:(unint64_t)a3;
- (unint64_t)offsetForPrimitiveAccelerationStructure:(unint64_t)a3;
- (unint64_t)offsetForSampler:(unint64_t)a3;
- (unint64_t)offsetForTexture:(unint64_t)a3;
- (unint64_t)offsetForVisibleFunctionTable:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MTLEmulationIndirectArgumentBufferLayout

- (MTLEmulationIndirectArgumentBufferLayout)initWithStructType:(id)a3
{
  v4.receiver = self;
  v4.super_class = MTLEmulationIndirectArgumentBufferLayout;
  if ([(_MTLIndirectArgumentBufferLayout *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  bufferIndices = self->_bufferIndices;
  if (bufferIndices)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(bufferIndices);
    MEMORY[0x1865FF210](v4, 0x10A0C408EF24B1CLL);
    self->_bufferIndices = 0;
  }

  textureIndices = self->_textureIndices;
  if (textureIndices)
  {
    v6 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(textureIndices);
    MEMORY[0x1865FF210](v6, 0x10A0C408EF24B1CLL);
    self->_textureIndices = 0;
  }

  samplerIndices = self->_samplerIndices;
  if (samplerIndices)
  {
    v8 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(samplerIndices);
    MEMORY[0x1865FF210](v8, 0x10A0C408EF24B1CLL);
    self->_samplerIndices = 0;
  }

  constantIndices = self->_constantIndices;
  if (constantIndices)
  {
    v10 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(constantIndices);
    MEMORY[0x1865FF210](v10, 0x10A0C408EF24B1CLL);
    self->_constantIndices = 0;
  }

  constantOffsets = self->_constantOffsets;
  if (constantOffsets)
  {
    v12 = *constantOffsets;
    if (*constantOffsets)
    {
      constantOffsets[1] = v12;
      operator delete(v12);
    }

    MEMORY[0x1865FF210](constantOffsets, 0x10C402FEFCB83);
    self->_constantOffsets = 0;
  }

  visibleFunctionTableIndices = self->_visibleFunctionTableIndices;
  if (visibleFunctionTableIndices)
  {
    v14 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(visibleFunctionTableIndices);
    MEMORY[0x1865FF210](v14, 0x10A0C408EF24B1CLL);
  }

  intersectionFunctionTableIndices = self->_intersectionFunctionTableIndices;
  if (intersectionFunctionTableIndices)
  {
    v16 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(intersectionFunctionTableIndices);
    MEMORY[0x1865FF210](v16, 0x10A0C408EF24B1CLL);
  }

  primitiveAccelerationStructureIndices = self->_primitiveAccelerationStructureIndices;
  if (primitiveAccelerationStructureIndices)
  {
    v18 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(primitiveAccelerationStructureIndices);
    MEMORY[0x1865FF210](v18, 0x10A0C408EF24B1CLL);
  }

  instanceAccelerationStructureIndices = self->_instanceAccelerationStructureIndices;
  if (instanceAccelerationStructureIndices)
  {
    v20 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(instanceAccelerationStructureIndices);
    MEMORY[0x1865FF210](v20, 0x10A0C408EF24B1CLL);
  }

  v21.receiver = self;
  v21.super_class = MTLEmulationIndirectArgumentBufferLayout;
  [(_MTLIndirectArgumentBufferLayout *)&v21 dealloc];
}

- (unint64_t)offsetForBuffer:(unint64_t)a3
{
  v6 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(self->_bufferIndices, &v6);
  if (!v4)
  {
    [MTLEmulationIndirectArgumentBufferLayout offsetForBuffer:?];
  }

  return self->_bufferOffset + 24 * v4[3];
}

- (unint64_t)offsetForTexture:(unint64_t)a3
{
  v6 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(self->_textureIndices, &v6);
  if (!v4)
  {
    [MTLEmulationIndirectArgumentBufferLayout offsetForTexture:?];
  }

  return self->_textureOffset + 8 * v4[3];
}

- (unint64_t)offsetForSampler:(unint64_t)a3
{
  v6 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(self->_samplerIndices, &v6);
  if (!v4)
  {
    [MTLEmulationIndirectArgumentBufferLayout offsetForSampler:?];
  }

  return self->_samplerOffset + 8 * v4[3];
}

- (unint64_t)offsetForConstant:(unint64_t)a3
{
  v6 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(self->_constantIndices, &v6);
  if (!v4)
  {
    [MTLEmulationIndirectArgumentBufferLayout offsetForConstant:?];
  }

  return *(*self->_constantOffsets + 8 * v4[3]);
}

- (unint64_t)offsetForVisibleFunctionTable:(unint64_t)a3
{
  v6 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(self->_visibleFunctionTableIndices, &v6);
  if (!v4)
  {
    [MTLEmulationIndirectArgumentBufferLayout offsetForVisibleFunctionTable:?];
  }

  return self->_visibleFunctionTableOffset + 8 * v4[3];
}

- (unint64_t)offsetForIntersectionFunctionTable:(unint64_t)a3
{
  v6 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(self->_intersectionFunctionTableIndices, &v6);
  if (!v4)
  {
    [MTLEmulationIndirectArgumentBufferLayout offsetForIntersectionFunctionTable:?];
  }

  return self->_intersectionFunctionTableOffset + 8 * v4[3];
}

- (unint64_t)offsetForPrimitiveAccelerationStructure:(unint64_t)a3
{
  v6 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(self->_primitiveAccelerationStructureIndices, &v6);
  if (!v4)
  {
    [MTLEmulationIndirectArgumentBufferLayout offsetForPrimitiveAccelerationStructure:?];
  }

  return self->_primitiveAccelerationStructureOffset + 8 * v4[3];
}

- (unint64_t)offsetForInstanceAccelerationStructure:(unint64_t)a3
{
  v6 = a3;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(self->_instanceAccelerationStructureIndices, &v6);
  if (!v4)
  {
    [MTLEmulationIndirectArgumentBufferLayout offsetForInstanceAccelerationStructure:?];
  }

  return self->_instanceAccelerationStructureOffset + 8 * v4[3];
}

@end