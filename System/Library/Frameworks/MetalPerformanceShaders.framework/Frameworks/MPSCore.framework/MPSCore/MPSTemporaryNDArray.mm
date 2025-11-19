@interface MPSTemporaryNDArray
+ (MPSTemporaryNDArray)temporaryNDArrayWithCommandBuffer:(id)commandBuffer descriptor:(MPSNDArrayDescriptor *)descriptor;
+ (id)defaultAllocator;
- (MPSTemporaryNDArray)initWithCommandBuffer:(id)a3 descriptor:(id)a4;
- (MPSTemporaryNDArray)initWithCommandBuffer:(id)a3 descriptor:(id)a4 buffer:(id)a5;
- (id)debugDescription;
- (id)temporaryArrayViewWithCommandBuffer:(id)a3 computeEncoder:(id)a4 descriptor:(id)a5 aliasing:(unint64_t)a6;
- (void)dealloc;
- (void)setReadCount:(NSUInteger)readCount;
@end

@implementation MPSTemporaryNDArray

+ (id)defaultAllocator
{
  result = atomic_load_explicit(&qword_280AFEB70, memory_order_acquire);
  if (!result)
  {
    result = objc_alloc_init(MPSTemporaryNDArrayDefaultAllocator);
    v3 = 0;
    atomic_compare_exchange_strong_explicit(&qword_280AFEB70, &v3, result, memory_order_release, memory_order_relaxed);
    if (v3)
    {
      *(result + 2) = 1;

      return atomic_load_explicit(&qword_280AFEB70, memory_order_acquire);
    }
  }

  return result;
}

- (MPSTemporaryNDArray)initWithCommandBuffer:(id)a3 descriptor:(id)a4
{
  if (!a3)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_12:
      v18 = objc_opt_class();
      NSStringFromClass(v18);
      MTLReportFailure();
    }

LABEL_13:

    return 0;
  }

  v8 = objc_msgSend_device(a3, a2, a3, a4, v4);
  v19.receiver = self;
  v19.super_class = MPSTemporaryNDArray;
  result = [(MPSNDArray *)&v19 initWithDevice:v8 descriptor:a4];
  if (result)
  {
    p_buffer = &result->super._buffer;
    explicit = atomic_load_explicit(&result->super._buffer, memory_order_acquire);
    v16 = result;
    if (explicit)
    {
      requestedSize = objc_msgSend_length(explicit, v10, v11, v12, v13);
    }

    else
    {
      requestedSize = result->super._buffer._requestedSize;
    }

    MPSAutoBuffer::InitDeferredUsingTextureCache(p_buffer, requestedSize, a3, v12, v13);
    result = v16;
    v16->_readCount = 1;
    v16->_childRefCount = 1;
    v16->_commandBuffer = a3;
    v16->super._isTemporary = 1;
  }

  return result;
}

- (MPSTemporaryNDArray)initWithCommandBuffer:(id)a3 descriptor:(id)a4 buffer:(id)a5
{
  if (!a3)
  {
    v7 = self;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (!a4)
  {
    v7 = self;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_9:
      v8 = objc_opt_class();
      NSStringFromClass(v8);
      MTLReportFailure();
    }

LABEL_10:

    return 0;
  }

  v9.receiver = self;
  v9.super_class = MPSTemporaryNDArray;
  result = [(MPSNDArray *)&v9 initWithBuffer:a5 descriptor:?];
  if (result)
  {
    result->_readCount = 1;
    result->_childRefCount = 1;
    result->_commandBuffer = a3;
    result->super._isTemporary = 1;
  }

  return result;
}

+ (MPSTemporaryNDArray)temporaryNDArrayWithCommandBuffer:(id)commandBuffer descriptor:(MPSNDArrayDescriptor *)descriptor
{
  v6 = [a1 alloc];
  v13 = objc_msgSend_initWithCommandBuffer_descriptor_(v6, v7, commandBuffer, descriptor, v8);
  if (v13)
  {
    v14 = objc_msgSend_userDictionary(commandBuffer, v9, v10, v11, v12);
    v18 = objc_msgSend_objectForKey_(v14, v15, @"_MPSCommandBufferRetainListKey", v16, v17);
    if (!v18)
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKey_(v14, v23, v22, @"_MPSCommandBufferRetainListKey", v24);

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_22E2F1884;
      v29[3] = &unk_2787BE7E8;
      v29[4] = @"_MPSCommandBufferRetainListKey";
      objc_msgSend_addCompletedHandler_(commandBuffer, v25, v29, v26, v27);
      v18 = v22;
    }

    objc_msgSend_addObject_(v18, v19, v13, v20, v21);
  }

  return v13;
}

- (void)setReadCount:(NSUInteger)readCount
{
  v3 = self->_readCount;
  if (v3 != readCount)
  {
    if (!v3)
    {
      v6 = self;
      v7 = readCount;
      v8 = MTLReportFailureTypeEnabled();
      readCount = v7;
      v9 = v8;
      self = v6;
      if (v9)
      {
        MTLReportFailure();
        readCount = v7;
        self = v6;
      }
    }

    self->_readCount = readCount;
    if (!readCount)
    {
      do
      {
        v4 = self;
        self = self->super._parent;
      }

      while (self && self->super._isTemporary);
      v5 = v4->_childRefCount - 1;
      v4->_childRefCount = v5;
      if (!v5)
      {

        MPSAutoBuffer::ReleaseTemporaryBuffer(&v4->super._buffer);
      }
    }
  }
}

- (id)temporaryArrayViewWithCommandBuffer:(id)a3 computeEncoder:(id)a4 descriptor:(id)a5 aliasing:(unint64_t)a6
{
  if (self->super._isTemporary)
  {
    parent = self;
    do
    {
      v8 = parent;
      parent = parent->super._parent;
    }

    while (parent && parent->super._isTemporary);
    ++v8->_childRefCount;
  }

  v35.receiver = self;
  v35.super_class = MPSTemporaryNDArray;
  v9 = [(MPSNDArray *)&v35 arrayViewWithCommandBuffer:a3 computeEncoder:a4 descriptor:a5 destinationArray:0 aliasing:a6 & 0xFFFFFFFFFFFFFFF3 | 4];
  v10 = v9;
  if (v9 && a3 && (v9[608] & 1) == 0)
  {
    v11 = [MPSTemporaryNDArray alloc];
    v17 = objc_msgSend_descriptor(v10, v12, v13, v14, v15);
    explicit = atomic_load_explicit(v10 + 65, memory_order_acquire);
    if (!explicit)
    {
      MPSAutoBuffer::AllocateBuffer((v10 + 520), 0);
      explicit = atomic_load_explicit(v10 + 65, memory_order_acquire);
    }

    v19 = objc_msgSend_initWithCommandBuffer_descriptor_buffer_(v11, v16, a3, v17, explicit);
    v21 = *(v10 + 21);
    v20 = *(v10 + 22);
    v23 = *(v10 + 23);
    v22 = *(v10 + 24);
    v24 = *(v10 + 26);
    v25 = *(v10 + 27);
    v26 = *(v10 + 28);
    v19[25] = *(v10 + 25);
    v19[26] = v24;
    v19[23] = v23;
    v19[24] = v22;
    v19[21] = v21;
    v19[22] = v20;
    v19[27] = v25;
    v19[28] = v26;
    v28 = *(v10 + 13);
    v27 = *(v10 + 14);
    v30 = *(v10 + 15);
    v29 = *(v10 + 16);
    v32 = *(v10 + 17);
    v31 = *(v10 + 18);
    v33 = *(v10 + 20);
    v19[19] = *(v10 + 19);
    v19[20] = v33;
    v19[17] = v32;
    v19[18] = v31;
    v19[15] = v30;
    v19[16] = v29;
    v19[13] = v28;
    v19[14] = v27;
    *(v19 + 64) = *(v10 + 64);
    return v19;
  }

  return v10;
}

- (void)dealloc
{
  objc_opt_class();
  objc_opt_isKindOfClass();
  isTemporary = self->super._isTemporary;
  objc_opt_class();
  if (isTemporary != (objc_opt_isKindOfClass() & 1) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v4.receiver = self;
  v4.super_class = MPSTemporaryNDArray;
  [(MPSNDArray *)&v4 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MPSTemporaryNDArray;
  v4 = [(MPSNDArray *)&v9 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@Temporary Array - readCount = %lu\n", v6, v7, v4, self->_readCount);
}

@end