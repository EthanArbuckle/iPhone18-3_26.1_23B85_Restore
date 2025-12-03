@interface _MTLIndirectArgumentBufferLayout
- (_MTLIndirectArgumentBufferLayout)init;
- (id)bufferLayoutForResourceAtIndex:(unint64_t)index;
- (unint64_t)uniqueIdentifierForInstanceAccelerationStructureAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
- (unint64_t)uniqueIdentifierForIntersectionFunctionTableAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
- (unint64_t)uniqueIdentifierForPrimitiveAccelerationStructureAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
- (unint64_t)uniqueIdentifierForVisibleFunctionTableAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset;
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

- (unint64_t)uniqueIdentifierForVisibleFunctionTableAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  if ([(MTLDeviceSPI *)[(_MTLIndirectArgumentBufferLayout *)self device:index] requiresRaytracingEmulation])
  {
    contents = [buffer contents];
    return *(contents + [self->_private offsetForVisibleFunctionTable:index]);
  }

  else
  {
    [(_MTLIndirectArgumentBufferLayout *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (unint64_t)uniqueIdentifierForIntersectionFunctionTableAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  if ([(MTLDeviceSPI *)[(_MTLIndirectArgumentBufferLayout *)self device:index] requiresRaytracingEmulation])
  {
    contents = [buffer contents];
    return *(contents + [self->_private offsetForIntersectionFunctionTable:index]);
  }

  else
  {
    [(_MTLIndirectArgumentBufferLayout *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (unint64_t)uniqueIdentifierForInstanceAccelerationStructureAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  if ([(MTLDeviceSPI *)[(_MTLIndirectArgumentBufferLayout *)self device:index] requiresRaytracingEmulation])
  {
    contents = [buffer contents];
    return *(contents + [self->_private offsetForInstanceAccelerationStructure:index]);
  }

  else
  {
    [(_MTLIndirectArgumentBufferLayout *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (unint64_t)uniqueIdentifierForPrimitiveAccelerationStructureAtIndex:(unint64_t)index inIndirectArgumentBuffer:(id)buffer atOffset:(unint64_t)offset
{
  if ([(MTLDeviceSPI *)[(_MTLIndirectArgumentBufferLayout *)self device:index] requiresRaytracingEmulation])
  {
    contents = [buffer contents];
    return *(contents + [self->_private offsetForPrimitiveAccelerationStructure:index]);
  }

  else
  {
    [(_MTLIndirectArgumentBufferLayout *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)bufferLayoutForResourceAtIndex:(unint64_t)index
{
  v3 = self->_private;
  indexCopy = index;
  result = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(v3 + 1, &indexCopy);
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

@end