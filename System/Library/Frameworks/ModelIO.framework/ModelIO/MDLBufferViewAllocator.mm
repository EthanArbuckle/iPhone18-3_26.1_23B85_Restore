@interface MDLBufferViewAllocator
- (MDLBufferViewAllocator)initWithCoder:(id)coder;
- (MDLBufferViewAllocator)initWithSharedRegionsNoCopy:(id)copy;
- (__IOSurface)_regionAtIndex:(int64_t)index;
- (__IOSurface)_regionAtIndex:(int64_t)index length:(int64_t)length offset:(int64_t)offset;
- (id).cxx_construct;
- (id)decodeBufferWithCoder:(id)coder forKey:(id)key;
- (id)decodeBuffersWithCoder:(id)coder forKey:(id)key;
- (id)newBufferViewAtRegionIndex:(int64_t)index;
- (id)newBufferViewAtRegionIndex:(int64_t)index length:(int64_t)length offset:(int64_t)offset;
- (void)dealloc;
- (void)encodeBuffer:(id)buffer withCoder:(id)coder forKey:(id)key;
- (void)encodeBuffers:(id)buffers withCoder:(id)coder forKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MDLBufferViewAllocator

- (__IOSurface)_regionAtIndex:(int64_t)index
{
  if (index < 0)
  {
    NSLog(&cfstr_RegionindexMus.isa, a2);
  }

  else
  {
    begin = self->_regionIndices.__begin_;
    if (index >= (self->_regionIndices.__end_ - begin))
    {
      NSLog(&cfstr_RequestedRegio.isa, a2, index);
    }

    else
    {
      v4 = begin[index];
      result = self->_sharedRegions.__begin_[v4];
      if (result)
      {
        return result;
      }

      NSLog(&cfstr_RegionAtIndexL.isa, a2, v4);
    }
  }

  return 0;
}

- (__IOSurface)_regionAtIndex:(int64_t)index length:(int64_t)length offset:(int64_t)offset
{
  v8 = objc_msgSend__regionAtIndex_(self, a2, index);
  v9 = v8;
  if (v8)
  {
    if (length <= 0)
    {
      NSLog(&cfstr_LengthLdIsInva.isa, length);
      return 0;
    }

    if (offset < 0)
    {
      NSLog(&cfstr_OffsetLdIsInva.isa, offset);
      return 0;
    }

    AllocSize = IOSurfaceGetAllocSize(v8);
    if (offset + length > AllocSize)
    {
      NSLog(&cfstr_RequestedLengt.isa, length, offset, AllocSize, index);
      return 0;
    }
  }

  return v9;
}

- (MDLBufferViewAllocator)initWithSharedRegionsNoCopy:(id)copy
{
  v45 = *MEMORY[0x277D85DE8];
  copyCopy = copy;
  v43.receiver = self;
  v43.super_class = MDLBufferViewAllocator;
  v4 = [(MDLBufferViewAllocator *)&v43 init];
  if (!v4)
  {
    goto LABEL_31;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = copyCopy;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v39, v44, 16);
  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = 0;
  v36 = v5;
  v37 = *v40;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v40 != v37)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v39 + 1) + 8 * i);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_12;
      }

      v11 = v10;
      if (!objc_msgSend_iosurface(v11, v12, v13))
      {

LABEL_12:
        NSLog(&cfstr_WarningCannotF.isa, v8);
        v38 = -1;
        sub_239EA83F8(&v4->_regionIndices.__begin_, &v38);
        goto LABEL_25;
      }

      v16 = objc_msgSend_iosurface(v11, v14, v15);
      end = v4->_sharedRegions.__end_;
      cap = v4->_sharedRegions.__cap_;
      if (end >= cap)
      {
        begin = v4->_sharedRegions.__begin_;
        v21 = end - begin;
        if ((v21 + 1) >> 61)
        {
          sub_239E797B4();
        }

        v22 = cap - begin;
        v23 = v22 >> 2;
        if (v22 >> 2 <= (v21 + 1))
        {
          v23 = v21 + 1;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        if (v24)
        {
          sub_239E7C684(&v4->_sharedRegions, v24);
        }

        v25 = (8 * v21);
        *v25 = v16;
        v19 = 8 * v21 + 8;
        v26 = v4->_sharedRegions.__begin_;
        v27 = v4->_sharedRegions.__end_ - v26;
        v28 = (v25 - v27);
        memcpy(v25 - v27, v26, v27);
        v29 = v4->_sharedRegions.__begin_;
        v4->_sharedRegions.__begin_ = v28;
        v4->_sharedRegions.__end_ = v19;
        v4->_sharedRegions.__cap_ = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v5 = v36;
      }

      else
      {
        *end = v16;
        v19 = (end + 1);
      }

      v4->_sharedRegions.__end_ = v19;
      v38 = v8;
      sub_239EA83F8(&v4->_regionIndices.__begin_, &v38);

      v8 = (v8 + 1);
LABEL_25:
    }

    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v30, &v39, v44, 16);
  }

  while (v7);
LABEL_27:

  if (v4->_sharedRegions.__end_ != v4->_sharedRegions.__begin_)
  {
    v31 = 0;
    do
    {
      LOBYTE(v38) = 0;
      sub_239EA84D8(&v4->_owned, &v38);
      ++v31;
    }

    while (v31 < v4->_sharedRegions.__end_ - v4->_sharedRegions.__begin_);
  }

  v32 = v4;
LABEL_31:

  v33 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  begin = self->_sharedRegions.__begin_;
  end = self->_sharedRegions.__end_;
  if (end != begin)
  {
    v5 = 0;
    do
    {
      v6 = self->_regionIndices.__begin_[v5];
      if ((*(self->_owned.__begin_ + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6))
      {
        v7 = begin[v6];
        if (v7)
        {
          CFRelease(v7);
          begin = self->_sharedRegions.__begin_;
          end = self->_sharedRegions.__end_;
        }
      }

      ++v5;
    }

    while (v5 < end - begin);
  }

  v8.receiver = self;
  v8.super_class = MDLBufferViewAllocator;
  [(MDLBufferViewAllocator *)&v8 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v4, self->_sharedRegions.__end_ - self->_sharedRegions.__begin_, @"sharedRegions.count");
  if (self->_sharedRegions.__end_ != self->_sharedRegions.__begin_)
  {
    v6 = 0;
    do
    {
      v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"sharedRegions[%zu]", v6);
      XPCObject = IOSurfaceCreateXPCObject(self->_sharedRegions.__begin_[v6]);
      v10 = objc_msgSend_stringByAppendingFormat_(v7, v9, @".iosurface");
      objc_msgSend_encodeXPCObject_forKey_(coderCopy, v11, XPCObject, v10);

      ++v6;
    }

    while (v6 < self->_sharedRegions.__end_ - self->_sharedRegions.__begin_);
  }

  objc_msgSend_encodeInteger_forKey_(coderCopy, v5, self->_regionIndices.__end_ - self->_regionIndices.__begin_, @"regionIndices.count");
  if (self->_regionIndices.__end_ != self->_regionIndices.__begin_)
  {
    v13 = 0;
    do
    {
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"regionIndices[%zu]", v13);
      objc_msgSend_encodeInteger_forKey_(coderCopy, v15, v13, v14);

      ++v13;
    }

    while (v13 < self->_regionIndices.__end_ - self->_regionIndices.__begin_);
  }
}

- (MDLBufferViewAllocator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = MDLBufferViewAllocator;
  v6 = [(MDLBufferViewAllocator *)&v37 init];
  if (v6)
  {
    v8 = objc_msgSend_decodeIntegerForKey_(coderCopy, v5, @"sharedRegions.count");
    if (v8 >= 1)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"sharedRegions[%zu]", i);
        v12 = objc_msgSend_stringByAppendingFormat_(v10, v11, @".iosurface");
        v14 = objc_msgSend_decodeXPCObjectForKey_(coderCopy, v13, v12);

        LOBYTE(v36) = 1;
        sub_239EA84D8(&v6->_owned, &v36);
        v15 = IOSurfaceLookupFromXPCObject(v14);
        end = v6->_sharedRegions.__end_;
        cap = v6->_sharedRegions.__cap_;
        if (end >= cap)
        {
          begin = v6->_sharedRegions.__begin_;
          v20 = end - begin;
          if ((v20 + 1) >> 61)
          {
            sub_239E797B4();
          }

          v21 = cap - begin;
          v22 = v21 >> 2;
          if (v21 >> 2 <= (v20 + 1))
          {
            v22 = v20 + 1;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_239E7C684(&v6->_sharedRegions, v23);
          }

          v24 = (8 * v20);
          *v24 = v15;
          v18 = 8 * v20 + 8;
          v25 = v6->_sharedRegions.__begin_;
          v26 = v6->_sharedRegions.__end_ - v25;
          v27 = (v24 - v26);
          memcpy(v24 - v26, v25, v26);
          v28 = v6->_sharedRegions.__begin_;
          v6->_sharedRegions.__begin_ = v27;
          v6->_sharedRegions.__end_ = v18;
          v6->_sharedRegions.__cap_ = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *end = v15;
          v18 = (end + 1);
        }

        v6->_sharedRegions.__end_ = v18;
      }
    }

    v30 = objc_msgSend_decodeIntegerForKey_(coderCopy, v7, @"regionIndices.count");
    if (v30 >= 1)
    {
      for (j = 0; j != v30; ++j)
      {
        v32 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v29, @"regionIndices[%zu]", j);
        v36 = objc_msgSend_decodeIntegerForKey_(coderCopy, v33, v32);
        sub_239EA83F8(&v6->_regionIndices.__begin_, &v36);
      }
    }

    v34 = v6;
  }

  return v6;
}

- (id)newBufferViewAtRegionIndex:(int64_t)index length:(int64_t)length offset:(int64_t)offset
{
  result = objc_msgSend__regionAtIndex_length_offset_(self, a2, index);
  if (result)
  {
    BaseAddress = IOSurfaceGetBaseAddress(result);
    v11 = [MDLBufferView alloc];

    return objc_msgSend_initWithBytesNoCopy_length_offset_regionIndex_allocator_(v11, v12, BaseAddress, length, offset, index, self);
  }

  return result;
}

- (id)newBufferViewAtRegionIndex:(int64_t)index
{
  result = objc_msgSend__regionAtIndex_(self, a2, index);
  if (result)
  {
    v6 = result;
    BaseAddress = IOSurfaceGetBaseAddress(result);
    AllocSize = IOSurfaceGetAllocSize(v6);
    v9 = [MDLBufferView alloc];

    return objc_msgSend_initWithBytesNoCopy_length_offset_regionIndex_allocator_(v9, v10, BaseAddress, AllocSize, 0, index, self);
  }

  return result;
}

- (void)encodeBuffer:(id)buffer withCoder:(id)coder forKey:(id)key
{
  bufferCopy = buffer;
  coderCopy = coder;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = bufferCopy;
    v10 = v9[4];
    v12 = objc_msgSend_stringByAppendingString_(keyCopy, v11, @".regionIndex");
    objc_msgSend_encodeInteger_forKey_(coderCopy, v13, v10, v12);

    v14 = v9[3];
    v16 = objc_msgSend_stringByAppendingString_(keyCopy, v15, @".offset");
    objc_msgSend_encodeInteger_forKey_(coderCopy, v17, v14, v16);

    v18 = v9[2];
    v20 = objc_msgSend_stringByAppendingString_(keyCopy, v19, @".length");
    objc_msgSend_encodeInteger_forKey_(coderCopy, v21, v18, v20);
  }
}

- (void)encodeBuffers:(id)buffers withCoder:(id)coder forKey:(id)key
{
  buffersCopy = buffers;
  coderCopy = coder;
  keyCopy = key;
  v11 = objc_msgSend_count(buffersCopy, v9, v10);
  v13 = objc_msgSend_stringByAppendingString_(keyCopy, v12, @".count");
  objc_msgSend_encodeInteger_forKey_(coderCopy, v14, v11, v13);

  for (i = 0; i < objc_msgSend_count(buffersCopy, v15, v16); ++i)
  {
    v19 = objc_msgSend_stringByAppendingFormat_(keyCopy, v18, @"[%ld]", i);
    v21 = objc_msgSend_objectAtIndexedSubscript_(buffersCopy, v20, i);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v24 = objc_msgSend_objectAtIndexedSubscript_(buffersCopy, v23, i);
      v25 = v24[4];
      v27 = objc_msgSend_stringByAppendingString_(v19, v26, @".regionIndex");
      objc_msgSend_encodeInteger_forKey_(coderCopy, v28, v25, v27);

      v29 = v24[3];
      v31 = objc_msgSend_stringByAppendingString_(v19, v30, @".offset");
      objc_msgSend_encodeInteger_forKey_(coderCopy, v32, v29, v31);

      v33 = v24[2];
      v35 = objc_msgSend_stringByAppendingString_(v19, v34, @".length");
      objc_msgSend_encodeInteger_forKey_(coderCopy, v36, v33, v35);
    }
  }
}

- (id)decodeBuffersWithCoder:(id)coder forKey:(id)key
{
  coderCopy = coder;
  keyCopy = key;
  v9 = objc_msgSend_stringByAppendingString_(keyCopy, v8, @".count");
  v11 = objc_msgSend_decodeIntegerForKey_(coderCopy, v10, v9);

  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_initWithCapacity_(v12, v13, v11);
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      v17 = objc_msgSend_stringByAppendingFormat_(keyCopy, v14, @"[%ld]", i);
      v18 = objc_alloc_init(MDLBufferView);
      v20 = objc_msgSend_stringByAppendingString_(v17, v19, @".regionIndex");
      v18->_regionIndex = objc_msgSend_decodeIntegerForKey_(coderCopy, v21, v20);

      v18->_data = IOSurfaceGetBaseAddress(self->_sharedRegions.__begin_[self->_regionIndices.__begin_[v18->_regionIndex]]);
      v23 = objc_msgSend_stringByAppendingString_(v17, v22, @".offset");
      v18->_offset = objc_msgSend_decodeIntegerForKey_(coderCopy, v24, v23);

      v26 = objc_msgSend_stringByAppendingString_(v17, v25, @".length");
      v18->_length = objc_msgSend_decodeIntegerForKey_(coderCopy, v27, v26);

      objc_storeStrong(&v18->_allocator, self);
      objc_msgSend_addObject_(v15, v28, v18);
    }
  }

  return v15;
}

- (id)decodeBufferWithCoder:(id)coder forKey:(id)key
{
  coderCopy = coder;
  keyCopy = key;
  v8 = objc_alloc_init(MDLMeshBufferView);
  v10 = objc_msgSend_stringByAppendingString_(keyCopy, v9, @".regionIndex");
  v8->super._regionIndex = objc_msgSend_decodeIntegerForKey_(coderCopy, v11, v10);

  regionIndex = v8->super._regionIndex;
  if ((regionIndex & 0x8000000000000000) != 0 || (begin = self->_regionIndices.__begin_, regionIndex >= self->_regionIndices.__end_ - begin) || (v14 = begin[regionIndex], (v14 & 0x8000000000000000) != 0) || (v15 = self->_sharedRegions.__begin_, v14 >= self->_sharedRegions.__end_ - v15))
  {
    v8->super._data = 0;
    v8->super._length = 0;
    v8->super._offset = 0;
    allocator = v8->super._allocator;
    v8->super._allocator = 0;
  }

  else
  {
    v8->super._data = IOSurfaceGetBaseAddress(v15[v14]);
    v17 = objc_msgSend_stringByAppendingString_(keyCopy, v16, @".offset");
    v8->super._offset = objc_msgSend_decodeIntegerForKey_(coderCopy, v18, v17);

    v20 = objc_msgSend_stringByAppendingString_(keyCopy, v19, @".length");
    v8->super._length = objc_msgSend_decodeIntegerForKey_(coderCopy, v21, v20);

    selfCopy = self;
    allocator = v8->super._allocator;
    v8->super._allocator = selfCopy;
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end