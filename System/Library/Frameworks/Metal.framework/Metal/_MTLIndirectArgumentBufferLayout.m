@interface _MTLIndirectArgumentBufferLayout
- (_MTLIndirectArgumentBufferLayout)init;
- (id)bufferLayoutForResourceAtIndex:(unint64_t)a3;
- (unint64_t)uniqueIdentifierForInstanceAccelerationStructureAtIndex:(unint64_t)a3 inIndirectArgumentBuffer:(id)a4 atOffset:(unint64_t)a5;
- (unint64_t)uniqueIdentifierForIntersectionFunctionTableAtIndex:(unint64_t)a3 inIndirectArgumentBuffer:(id)a4 atOffset:(unint64_t)a5;
- (unint64_t)uniqueIdentifierForPrimitiveAccelerationStructureAtIndex:(unint64_t)a3 inIndirectArgumentBuffer:(id)a4 atOffset:(unint64_t)a5;
- (unint64_t)uniqueIdentifierForVisibleFunctionTableAtIndex:(unint64_t)a3 inIndirectArgumentBuffer:(id)a4 atOffset:(unint64_t)a5;
- (void)dealloc;
@end

@implementation _MTLIndirectArgumentBufferLayout

- (_MTLIndirectArgumentBufferLayout)init
{
  v3.receiver = self;
  v3.super_class = _MTLIndirectArgumentBufferLayout;
  return [(_MTLIndirectArgumentBufferLayout *)&v3 init];
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3)
  {
    _MTLIndirectArgumentBufferLayoutPrivate::~_MTLIndirectArgumentBufferLayoutPrivate(v3);
    MEMORY[0x1865FF210]();
  }

  v4.receiver = self;
  v4.super_class = _MTLIndirectArgumentBufferLayout;
  [(_MTLIndirectArgumentBufferLayout *)&v4 dealloc];
}

- (unint64_t)uniqueIdentifierForVisibleFunctionTableAtIndex:(unint64_t)a3 inIndirectArgumentBuffer:(id)a4 atOffset:(unint64_t)a5
{
  if ([(MTLDeviceSPI *)[(_MTLIndirectArgumentBufferLayout *)self device:a3] requiresRaytracingEmulation])
  {
    v9 = [a4 contents];
    return *(v9 + [self->_private offsetForVisibleFunctionTable:a3]);
  }

  else
  {
    [(_MTLIndirectArgumentBufferLayout *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (unint64_t)uniqueIdentifierForIntersectionFunctionTableAtIndex:(unint64_t)a3 inIndirectArgumentBuffer:(id)a4 atOffset:(unint64_t)a5
{
  if ([(MTLDeviceSPI *)[(_MTLIndirectArgumentBufferLayout *)self device:a3] requiresRaytracingEmulation])
  {
    v9 = [a4 contents];
    return *(v9 + [self->_private offsetForIntersectionFunctionTable:a3]);
  }

  else
  {
    [(_MTLIndirectArgumentBufferLayout *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (unint64_t)uniqueIdentifierForInstanceAccelerationStructureAtIndex:(unint64_t)a3 inIndirectArgumentBuffer:(id)a4 atOffset:(unint64_t)a5
{
  if ([(MTLDeviceSPI *)[(_MTLIndirectArgumentBufferLayout *)self device:a3] requiresRaytracingEmulation])
  {
    v9 = [a4 contents];
    return *(v9 + [self->_private offsetForInstanceAccelerationStructure:a3]);
  }

  else
  {
    [(_MTLIndirectArgumentBufferLayout *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (unint64_t)uniqueIdentifierForPrimitiveAccelerationStructureAtIndex:(unint64_t)a3 inIndirectArgumentBuffer:(id)a4 atOffset:(unint64_t)a5
{
  if ([(MTLDeviceSPI *)[(_MTLIndirectArgumentBufferLayout *)self device:a3] requiresRaytracingEmulation])
  {
    v9 = [a4 contents];
    return *(v9 + [self->_private offsetForPrimitiveAccelerationStructure:a3]);
  }

  else
  {
    [(_MTLIndirectArgumentBufferLayout *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)bufferLayoutForResourceAtIndex:(unint64_t)a3
{
  v3 = self->_private;
  v5 = a3;
  result = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(v3 + 1, &v5);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

@end