@interface MDLMeshBufferViewAllocator
- (id)decodeMeshBufferWithCoder:(id)coder forKey:(id)key;
- (id)decodeMeshBuffersWithCoder:(id)coder forKey:(id)key;
- (id)newBufferViewAtRegionIndex:(int64_t)index type:(unint64_t)type;
- (id)newBufferViewAtRegionIndex:(int64_t)index type:(unint64_t)type length:(int64_t)length offset:(int64_t)offset;
- (void)encodeMeshBuffer:(id)buffer withCoder:(id)coder forKey:(id)key;
- (void)encodeMeshBuffers:(id)buffers withCoder:(id)coder forKey:(id)key;
@end

@implementation MDLMeshBufferViewAllocator

- (id)newBufferViewAtRegionIndex:(int64_t)index type:(unint64_t)type length:(int64_t)length offset:(int64_t)offset
{
  if (!objc_msgSend__regionAtIndex_length_offset_(self, a2, index, length, offset))
  {
    return 0;
  }

  BaseAddress = IOSurfaceGetBaseAddress(self->super._sharedRegions.__begin_[self->super._regionIndices.__begin_[index]]);
  v12 = [MDLBufferView alloc];
  v14 = objc_msgSend_initWithBytesNoCopy_length_offset_regionIndex_allocator_(v12, v13, BaseAddress, length, offset, index, self);
  v15 = [MDLMeshBufferView alloc];
  v17 = objc_msgSend_initWithBufferViewNoCopy_type_(v15, v16, v14, type);

  return v17;
}

- (id)newBufferViewAtRegionIndex:(int64_t)index type:(unint64_t)type
{
  if (!objc_msgSend__regionAtIndex_(self, a2, index))
  {
    return 0;
  }

  v7 = self->super._sharedRegions.__begin_[self->super._regionIndices.__begin_[index]];
  BaseAddress = IOSurfaceGetBaseAddress(v7);
  AllocSize = IOSurfaceGetAllocSize(v7);
  v10 = [MDLBufferView alloc];
  v12 = objc_msgSend_initWithBytesNoCopy_length_offset_regionIndex_allocator_(v10, v11, BaseAddress, AllocSize, 0, index, self);
  v13 = [MDLMeshBufferView alloc];
  v15 = objc_msgSend_initWithBufferViewNoCopy_type_(v13, v14, v12, type);

  return v15;
}

- (void)encodeMeshBuffer:(id)buffer withCoder:(id)coder forKey:(id)key
{
  bufferCopy = buffer;
  coderCopy = coder;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = bufferCopy;
    v12 = objc_msgSend_stringByAppendingString_(keyCopy, v11, @".view");
    objc_msgSend_encodeBuffer_withCoder_forKey_(self, v13, v10, coderCopy, v12);

    v14 = v10[7];
    v16 = objc_msgSend_stringByAppendingString_(keyCopy, v15, @".type");
    objc_msgSend_encodeInteger_forKey_(coderCopy, v17, v14, v16);
  }
}

- (void)encodeMeshBuffers:(id)buffers withCoder:(id)coder forKey:(id)key
{
  buffersCopy = buffers;
  coderCopy = coder;
  keyCopy = key;
  v12 = objc_msgSend_count(buffersCopy, v10, v11);
  v14 = objc_msgSend_stringByAppendingString_(keyCopy, v13, @".count");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v15, v12, v14);

  for (i = 0; i < objc_msgSend_count(buffersCopy, v16, v17); ++i)
  {
    v20 = objc_msgSend_stringByAppendingFormat_(keyCopy, v19, @"[%ld]", i);
    v22 = objc_msgSend_objectAtIndexedSubscript_(buffersCopy, v21, i);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v25 = objc_msgSend_objectAtIndexedSubscript_(buffersCopy, v24, i);
      v27 = objc_msgSend_stringByAppendingString_(v20, v26, @".view");
      objc_msgSend_encodeMeshBuffer_withCoder_forKey_(self, v28, v25, coderCopy, v27);
    }
  }
}

- (id)decodeMeshBuffersWithCoder:(id)coder forKey:(id)key
{
  coderCopy = coder;
  keyCopy = key;
  v8 = objc_msgSend_stringByAppendingString_(keyCopy, v7, @".count");
  v10 = objc_msgSend_decodeIntegerForKey_(coderCopy, v9, v8);

  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = objc_msgSend_initWithCapacity_(v11, v12, v10);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v16 = objc_msgSend_stringByAppendingFormat_(keyCopy, v13, @"[%ld]", i);
      v18 = objc_msgSend_stringByAppendingString_(v16, v17, @".view");
      v19 = coderCopy;
      v21 = objc_msgSend_decodeMeshBufferWithCoder_forKey_(self, v20, coderCopy, v18);

      objc_msgSend_addObject_(v14, v22, v21);
      coderCopy = v19;
    }
  }

  return v14;
}

- (id)decodeMeshBufferWithCoder:(id)coder forKey:(id)key
{
  coderCopy = coder;
  keyCopy = key;
  v9 = objc_msgSend_stringByAppendingString_(keyCopy, v8, @".view");
  v11 = objc_msgSend_decodeBufferWithCoder_forKey_(self, v10, coderCopy, v9);

  v13 = objc_msgSend_stringByAppendingString_(keyCopy, v12, @".type");
  v15 = objc_msgSend_decodeIntegerForKey_(coderCopy, v14, v13);

  v16 = [MDLMeshBufferView alloc];
  v18 = objc_msgSend_initWithBufferViewNoCopy_type_(v16, v17, v11, v15);

  return v18;
}

@end