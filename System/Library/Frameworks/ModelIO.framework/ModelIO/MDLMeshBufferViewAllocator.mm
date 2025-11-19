@interface MDLMeshBufferViewAllocator
- (id)decodeMeshBufferWithCoder:(id)a3 forKey:(id)a4;
- (id)decodeMeshBuffersWithCoder:(id)a3 forKey:(id)a4;
- (id)newBufferViewAtRegionIndex:(int64_t)a3 type:(unint64_t)a4;
- (id)newBufferViewAtRegionIndex:(int64_t)a3 type:(unint64_t)a4 length:(int64_t)a5 offset:(int64_t)a6;
- (void)encodeMeshBuffer:(id)a3 withCoder:(id)a4 forKey:(id)a5;
- (void)encodeMeshBuffers:(id)a3 withCoder:(id)a4 forKey:(id)a5;
@end

@implementation MDLMeshBufferViewAllocator

- (id)newBufferViewAtRegionIndex:(int64_t)a3 type:(unint64_t)a4 length:(int64_t)a5 offset:(int64_t)a6
{
  if (!objc_msgSend__regionAtIndex_length_offset_(self, a2, a3, a5, a6))
  {
    return 0;
  }

  BaseAddress = IOSurfaceGetBaseAddress(self->super._sharedRegions.__begin_[self->super._regionIndices.__begin_[a3]]);
  v12 = [MDLBufferView alloc];
  v14 = objc_msgSend_initWithBytesNoCopy_length_offset_regionIndex_allocator_(v12, v13, BaseAddress, a5, a6, a3, self);
  v15 = [MDLMeshBufferView alloc];
  v17 = objc_msgSend_initWithBufferViewNoCopy_type_(v15, v16, v14, a4);

  return v17;
}

- (id)newBufferViewAtRegionIndex:(int64_t)a3 type:(unint64_t)a4
{
  if (!objc_msgSend__regionAtIndex_(self, a2, a3))
  {
    return 0;
  }

  v7 = self->super._sharedRegions.__begin_[self->super._regionIndices.__begin_[a3]];
  BaseAddress = IOSurfaceGetBaseAddress(v7);
  AllocSize = IOSurfaceGetAllocSize(v7);
  v10 = [MDLBufferView alloc];
  v12 = objc_msgSend_initWithBytesNoCopy_length_offset_regionIndex_allocator_(v10, v11, BaseAddress, AllocSize, 0, a3, self);
  v13 = [MDLMeshBufferView alloc];
  v15 = objc_msgSend_initWithBufferViewNoCopy_type_(v13, v14, v12, a4);

  return v15;
}

- (void)encodeMeshBuffer:(id)a3 withCoder:(id)a4 forKey:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v18;
    v12 = objc_msgSend_stringByAppendingString_(v9, v11, @".view");
    objc_msgSend_encodeBuffer_withCoder_forKey_(self, v13, v10, v8, v12);

    v14 = v10[7];
    v16 = objc_msgSend_stringByAppendingString_(v9, v15, @".type");
    objc_msgSend_encodeInteger_forKey_(v8, v17, v14, v16);
  }
}

- (void)encodeMeshBuffers:(id)a3 withCoder:(id)a4 forKey:(id)a5
{
  v29 = a3;
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_count(v29, v10, v11);
  v14 = objc_msgSend_stringByAppendingString_(v9, v13, @".count");
  objc_msgSend_encodeInteger_forKey_(v8, v15, v12, v14);

  for (i = 0; i < objc_msgSend_count(v29, v16, v17); ++i)
  {
    v20 = objc_msgSend_stringByAppendingFormat_(v9, v19, @"[%ld]", i);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v29, v21, i);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v25 = objc_msgSend_objectAtIndexedSubscript_(v29, v24, i);
      v27 = objc_msgSend_stringByAppendingString_(v20, v26, @".view");
      objc_msgSend_encodeMeshBuffer_withCoder_forKey_(self, v28, v25, v8, v27);
    }
  }
}

- (id)decodeMeshBuffersWithCoder:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v24 = a4;
  v8 = objc_msgSend_stringByAppendingString_(v24, v7, @".count");
  v10 = objc_msgSend_decodeIntegerForKey_(v6, v9, v8);

  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v14 = objc_msgSend_initWithCapacity_(v11, v12, v10);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v16 = objc_msgSend_stringByAppendingFormat_(v24, v13, @"[%ld]", i);
      v18 = objc_msgSend_stringByAppendingString_(v16, v17, @".view");
      v19 = v6;
      v21 = objc_msgSend_decodeMeshBufferWithCoder_forKey_(self, v20, v6, v18);

      objc_msgSend_addObject_(v14, v22, v21);
      v6 = v19;
    }
  }

  return v14;
}

- (id)decodeMeshBufferWithCoder:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = objc_msgSend_stringByAppendingString_(v7, v8, @".view");
  v11 = objc_msgSend_decodeBufferWithCoder_forKey_(self, v10, v6, v9);

  v13 = objc_msgSend_stringByAppendingString_(v7, v12, @".type");
  v15 = objc_msgSend_decodeIntegerForKey_(v6, v14, v13);

  v16 = [MDLMeshBufferView alloc];
  v18 = objc_msgSend_initWithBufferViewNoCopy_type_(v16, v17, v11, v15);

  return v18;
}

@end