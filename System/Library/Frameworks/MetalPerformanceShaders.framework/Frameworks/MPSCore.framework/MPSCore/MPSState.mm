@interface MPSState
+ (MPSState)temporaryStateWithCommandBuffer:(id)cmdBuf;
+ (MPSState)temporaryStateWithCommandBuffer:(id)cmdBuf bufferSize:(size_t)bufferSize;
+ (MPSState)temporaryStateWithCommandBuffer:(id)cmdBuf textureDescriptor:(MTLTextureDescriptor *)descriptor;
+ (MPSState)temporaryStateWithCommandBuffer:(id)commandBuffer resourceList:(MPSStateResourceList *)resourceList;
- (MPSState)initWithDevice:(id)device bufferSize:(size_t)bufferSize;
- (MPSState)initWithDevice:(id)device resourceList:(MPSStateResourceList *)resourceList;
- (MPSState)initWithDevice:(id)device textureDescriptor:(MTLTextureDescriptor *)descriptor;
- (MPSState)initWithResource:(id)resource;
- (MPSState)initWithResources:(NSArray *)resources;
- (MPSStateResourceType)resourceTypeAtIndex:(NSUInteger)index;
- (MPSStateTextureInfo)textureInfoAtIndex:(SEL)index;
- (NSUInteger)bufferSizeAtIndex:(NSUInteger)index;
- (NSUInteger)resourceSize;
- (id)debugDescription;
- (id)resource;
- (id)resourceAtIndex:(NSUInteger)index allocateMemory:(BOOL)allocateMemory;
- (void)dealloc;
- (void)setLabel:(NSString *)label;
- (void)setReadCount:(NSUInteger)readCount;
- (void)synchronizeOnCommandBuffer:(id)commandBuffer;
@end

@implementation MPSState

- (id)resource
{
  if (!self->_resourceCount)
  {
    return 0;
  }

  resources = self->_resources;
  v3 = *resources;
  if (!*resources)
  {
    return 0;
  }

  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = resources + 1;
      result = atomic_load_explicit(resources + 1, memory_order_acquire);
      if (!result)
      {
        MPSAutoBuffer::AllocateBuffer((resources + 1), 0);
        return atomic_load_explicit(v4, memory_order_acquire);
      }

      return result;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v7 = objc_opt_class();
      NSStringFromClass(v7);
      MTLReportFailure();
    }

    return 0;
  }

  v6 = resources + 1;
  result = atomic_load_explicit(resources + 1, memory_order_acquire);
  if (!result)
  {
    MPSAutoTexture::AllocateTexture((resources + 1), 0);
    return atomic_load_explicit(v6, memory_order_acquire);
  }

  return result;
}

- (MPSState)initWithResource:(id)resource
{
  v35.receiver = self;
  v35.super_class = MPSState;
  result = [(MPSState *)&v35 init];
  if (result)
  {
    *&result->_resources = 0u;
    p_resources = &result->_resources;
    *(&result->_label + 7) = 0;
    *&result->_readCount = 0u;
    if (resource)
    {
      result->_resourceCount = 1;
      v6 = result;
      v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A2040FBCE39CDuLL);
      v6->_resources = v7;
      if (v7)
      {
        if (objc_msgSend_conformsToProtocol_(resource, v8, &unk_28422CFE8, v9, v10))
        {
          v14 = *p_resources;
          if (*p_resources)
          {
            *v14 = 2;
            v14[4] = 0;
            v14[5] = 0;
            atomic_store(0, v14 + 1);
            v14[2] = 0;
            v14[3] = 0;
            v14[6] = 0;
            v14[7] = 0;
            *(v14 + 32) = 0;
            atomic_store(resource, v14 + 1);
            *(v14 + 64) = 4;
            v19 = objc_msgSend_buffer(resource, v15, v16, v17, v18);
            v24 = 0;
            if (!v19)
            {
              v24 = objc_msgSend_iosurface(resource, v20, v21, v22, v23) == 0;
            }

            *(v14 + 65) = v24;
            v25 = objc_msgSend_device(resource, v20, v21, v22, v23);
            MPSDevice = MPSDevice::GetMPSDevice(v25);
            if (MPSDevice)
            {
              v31 = MPSDevice;
              v32 = objc_msgSend_pixelFormat(resource, v27, v28, v29, v30);
              v14[5] = MPSDevice::GetPixelInfo(v31, v32, MPSImageFeatureChannelFormatNone);
              return v6;
            }
          }

          return v6;
        }

        if (objc_msgSend_conformsToProtocol_(resource, v11, &unk_28422D1D0, v12, v13))
        {
          v33 = *p_resources;
          if (*p_resources)
          {
            *v33 = 1;
            atomic_store(0, v33 + 1);
            v33[2] = 0;
            v33[3] = 0;
            v33[4] = 0;
            MPSAutoBuffer::InitWithBuffer(v33 + 1, resource);
            return v6;
          }

          return v6;
        }

        if (MTLReportFailureTypeEnabled())
        {
          v34 = objc_opt_class();
          NSStringFromClass(v34);
          MTLReportFailure();
        }
      }

      return 0;
    }
  }

  return result;
}

- (MPSState)initWithResources:(NSArray *)resources
{
  v46.receiver = self;
  v46.super_class = MPSState;
  v4 = [(MPSState *)&v46 init];
  v9 = v4;
  if (v4)
  {
    *(v4 + 8) = 0u;
    v10 = v4 + 8;
    *(v4 + 39) = 0;
    *(v4 + 24) = 0u;
    if (resources)
    {
      v11 = objc_msgSend_count(resources, v5, v6, v7, v8);
      v9->_resourceCount = v11;
      v12 = malloc_type_calloc(v11, 0x48uLL, 0x10A2040FBCE39CDuLL);
      v9->_resources = v12;
      if (v12)
      {
        if (v9->_resourceCount)
        {
          v16 = v12;
          v17 = 65;
          v18 = 1;
LABEL_6:
          v19 = &v16[v17];
          v20 = objc_msgSend_objectAtIndexedSubscript_(resources, v13, v18 - 1, v14, v15, v45);
          if (objc_msgSend_conformsToProtocol_(v20, v21, &unk_28422CFE8, v22, v23))
          {
            *(v19 - 65) = 2;
            v24 = &v16[v17];
            *(v24 - 25) = 0;
            atomic_store(0, &v16[v17 - 57]);
            *(v24 - 41) = 0;
            *(v24 - 49) = 0;
            *(v24 - 33) = 0;
            *(v24 - 9) = 0;
            *(v24 - 17) = 0;
            *(v24 - 1) = 0;
            if (!v20)
            {
              goto LABEL_17;
            }

            atomic_store(v20, &v16[v17 - 57]);
            *(v24 - 1) = 4;
            if (objc_msgSend_buffer(v20, v25, v26, v27, v28))
            {
              v16[v17] = 0;
              v33 = objc_msgSend_device(v20, v29, v30, v31, v32);
              MPSDevice = MPSDevice::GetMPSDevice(v33);
              if (!MPSDevice)
              {
                goto LABEL_17;
              }
            }

            else
            {
              v16[v17] = objc_msgSend_iosurface(v20, v29, v30, v31, v32) == 0;
              v41 = objc_msgSend_device(v20, v37, v38, v39, v40);
              MPSDevice = MPSDevice::GetMPSDevice(v41);
              if (!MPSDevice)
              {
                goto LABEL_17;
              }
            }

            v42 = MPSDevice;
            v43 = objc_msgSend_pixelFormat(v20, v13, v35, v14, v15);
            *(v24 - 25) = MPSDevice::GetPixelInfo(v42, v43, MPSImageFeatureChannelFormatNone);
            goto LABEL_17;
          }

          if (objc_msgSend_conformsToProtocol_(v20, v13, &unk_28422D1D0, v14, v15))
          {
            *(v19 - 65) = 1;
            v36 = &v16[v17];
            atomic_store(0, &v16[v17 - 57]);
            *(v36 - 41) = 0;
            *(v36 - 49) = 0;
            *(v36 - 33) = 0;
            MPSAutoBuffer::InitWithBuffer(&v16[v17 - 57], v20);
          }

          else if (MTLReportFailureTypeEnabled())
          {
            v45 = v20;
            MTLReportFailure();
          }

LABEL_17:
          while (v18 < v9->_resourceCount)
          {
            v16 = *v10;
            ++v18;
            v17 += 72;
            if (*v10)
            {
              goto LABEL_6;
            }
          }
        }
      }

      else
      {

        return 0;
      }
    }
  }

  return v9;
}

+ (MPSState)temporaryStateWithCommandBuffer:(id)cmdBuf bufferSize:(size_t)bufferSize
{
  result = malloc_type_calloc(1uLL, 0x48uLL, 0x10A2040FBCE39CDuLL);
  if (result)
  {
    v10 = result;
    LOWORD(result->super.isa) = 1;
    p_resources = &result->_resources;
    atomic_store(0, &result->_resources);
    result->_resourceCount = 0;
    result->_readCount = 0;
    result->_label = 0;
    MPSAutoBuffer::InitDeferredUsingTextureCache(&result->_resources, bufferSize, cmdBuf, v8, v9);
    v12 = [self alloc];
    v16 = objc_msgSend_initWithResource_(v12, v13, 0, v14, v15);
    if (v16)
    {
      v16->i64[1] = v10;
      v16[1] = vdupq_n_s64(1uLL);
      v16[2].i64[0] = 0;
      v16[2].i16[4] = 1;
      v16[2].i8[10] = 0;
      v17 = v16;
      v18 = v16;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_22E35867C;
      v26[3] = &unk_2787BE7E8;
      v26[4] = v17;
      objc_msgSend_addCompletedHandler_(cmdBuf, v19, v26, v20, v21);
      return v17;
    }

    isa_low = LOWORD(v10->super.isa);
    if (isa_low != 2)
    {
      if (isa_low == 1)
      {
        explicit = atomic_load_explicit(p_resources, memory_order_acquire);
        if (explicit)
        {
          if (!v10->_label)
          {
          }

          atomic_store(0, p_resources);
        }
      }

      goto LABEL_17;
    }

    isa = atomic_load_explicit(&v10->_resources, memory_order_acquire);
    atomic_store(0, &v10->_resources);
    resourceCount_low = LOBYTE(v10[1]._resourceCount);
    if ((resourceCount_low - 2) >= 2)
    {
      if (resourceCount_low == 1)
      {
        isa = v10[1].super.isa;
      }

      else
      {
        if (resourceCount_low != 4)
        {
LABEL_17:
          free(v10);
          return 0;
        }

        v10[1].super.isa = 0;
      }
    }

    goto LABEL_17;
  }

  return result;
}

+ (MPSState)temporaryStateWithCommandBuffer:(id)cmdBuf textureDescriptor:(MTLTextureDescriptor *)descriptor
{
  result = malloc_type_calloc(1uLL, 0x48uLL, 0x10A2040FBCE39CDuLL);
  if (result)
  {
    v8 = result;
    LOWORD(result->super.isa) = 2;
    p_resources = &result->_resources;
    *&result->_flags = 0;
    atomic_store(0, &result->_resources);
    result[1].super.isa = 0;
    v10 = result + 1;
    result->_resourceCount = 0;
    result->_readCount = 0;
    result->_label = 0;
    result[1]._resources = 0;
    LOWORD(result[1]._resourceCount) = 0;
    MPSAutoTexture::InitDeferredUsingTextureCache(&result->_resources, descriptor, cmdBuf, MPSImageFeatureChannelFormatNone, 0);
    v11 = [self alloc];
    v15 = objc_msgSend_initWithResource_(v11, v12, 0, v13, v14);
    if (v15)
    {
      v15->i64[1] = v8;
      v15[1] = vdupq_n_s64(1uLL);
      v15[2].i64[0] = 0;
      v15[2].i16[4] = 1;
      v15[2].i8[10] = 0;
      v16 = v15;
      v17 = v15;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_22E358860;
      v25[3] = &unk_2787BE7E8;
      v25[4] = v16;
      objc_msgSend_addCompletedHandler_(cmdBuf, v18, v25, v19, v20);
      return v16;
    }

    isa_low = LOWORD(v8->super.isa);
    if (isa_low != 2)
    {
      if (isa_low == 1)
      {
        explicit = atomic_load_explicit(p_resources, memory_order_acquire);
        if (explicit)
        {
          if (!v8->_label)
          {
          }

          atomic_store(0, p_resources);
        }
      }

      goto LABEL_17;
    }

    isa = atomic_load_explicit(&v8->_resources, memory_order_acquire);
    atomic_store(0, &v8->_resources);
    resourceCount_low = LOBYTE(v8[1]._resourceCount);
    if ((resourceCount_low - 2) >= 2)
    {
      if (resourceCount_low == 1)
      {
        isa = v10->super.isa;
      }

      else
      {
        if (resourceCount_low != 4)
        {
LABEL_17:
          free(v8);
          return 0;
        }

        v10->super.isa = 0;
      }
    }

    goto LABEL_17;
  }

  return result;
}

+ (MPSState)temporaryStateWithCommandBuffer:(id)commandBuffer resourceList:(MPSStateResourceList *)resourceList
{
  result = objc_msgSend_temporaryStateWithCommandBuffer_(self, a2, commandBuffer, resourceList, v4);
  if (result)
  {
    result->_resourceCount = 0;
    list = resourceList->_list;
    if (list)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        ++v10;
        list = list->var1;
        v9 += 72;
      }

      while (list);
      result->_resourceCount = v10;
      if (v10)
      {
        v11 = result;
        v16 = malloc_type_malloc(v9, 0x10A2040FBCE39CDuLL);
        result = v11;
        v11->_resources = v16;
        if (v16)
        {
          v17 = resourceList->_list;
          if (v17)
          {
            v18 = v16 + 72 * v11->_resourceCount - 72;
            do
            {
              (*(v17->var0 + 3))(v17, v18, commandBuffer);
              v17 = v17->var1;
              v18 -= 72;
            }

            while (v17);
            return v11;
          }
        }

        else
        {
          objc_msgSend_dealloc(v11, v12, v13, v14, v15);
          return 0;
        }
      }
    }
  }

  return result;
}

+ (MPSState)temporaryStateWithCommandBuffer:(id)cmdBuf
{
  v4 = [self alloc];
  result = objc_msgSend_initWithResource_(v4, v5, 0, v6, v7);
  if (result)
  {
    result->_resources = 0;
    result->_resourceCount = 0;
    result->_flags = 1;
    result->_readCount = 1;
    result->_label = 0;
    result->_updatedAlready = 0;
    v9 = result;
    v10 = result;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22E358A14;
    v14[3] = &unk_2787BE7E8;
    v14[4] = v9;
    objc_msgSend_addCompletedHandler_(cmdBuf, v11, v14, v12, v13);
    return v9;
  }

  return result;
}

- (MPSState)initWithDevice:(id)device bufferSize:(size_t)bufferSize
{
  result = malloc_type_calloc(1uLL, 0x48uLL, 0x10A2040FBCE39CDuLL);
  if (result)
  {
    v8 = result;
    MPSDevice = MPSDevice::GetMPSDevice(device);
    if (!MPSDevice)
    {
      free(v8);

      return 0;
    }

    LOWORD(v8->super.isa) = 1;
    atomic_store(0, &v8->_resources);
    v8->_readCount = 0;
    v8->_label = 0;
    v8->_resourceCount = 0;
    v10 = *(MPSDevice + 16);
    v8->_resourceCount = bufferSize;
    v8->_readCount = v10;
    *&v8->_flags = xmmword_22E37B630;
    v15.receiver = self;
    v15.super_class = MPSState;
    result = [(MPSState *)&v15 init];
    if (result)
    {
      result->_resources = v8;
      result->_resourceCount = 1;
      result->_readCount = 0;
      result->_label = 0;
      *(&result->_label + 7) = 0;
      return result;
    }

    isa_low = LOWORD(v8->super.isa);
    if (isa_low != 2)
    {
      if (isa_low == 1)
      {
        explicit = atomic_load_explicit(&v8->_resources, memory_order_acquire);
        if (explicit)
        {
          if (!v8->_label)
          {
          }

          atomic_store(0, &v8->_resources);
        }
      }

      goto LABEL_19;
    }

    isa = atomic_load_explicit(&v8->_resources, memory_order_acquire);
    atomic_store(0, &v8->_resources);
    resourceCount_low = LOBYTE(v8[1]._resourceCount);
    if ((resourceCount_low - 2) >= 2)
    {
      if (resourceCount_low == 1)
      {
        isa = v8[1].super.isa;
      }

      else
      {
        if (resourceCount_low != 4)
        {
LABEL_19:
          free(v8);
          return 0;
        }

        v8[1].super.isa = 0;
      }
    }

    goto LABEL_19;
  }

  return result;
}

- (MPSState)initWithDevice:(id)device textureDescriptor:(MTLTextureDescriptor *)descriptor
{
  result = malloc_type_calloc(1uLL, 0x48uLL, 0x10A2040FBCE39CDuLL);
  if (result)
  {
    v8 = result;
    MPSDevice = MPSDevice::GetMPSDevice(device);
    if (!MPSDevice)
    {

      return 0;
    }

    LOWORD(v8->super.isa) = 2;
    *&v8->_flags = 0;
    atomic_store(0, &v8->_resources);
    v8[1].super.isa = 0;
    p_isa = &v8[1].super.isa;
    v8->_resourceCount = 0;
    v8->_readCount = 0;
    v8->_label = 0;
    LOWORD(v8[1]._resourceCount) = 0;
    LOBYTE(v8[1]._resourceCount) = 4;
    v8[1]._resources = MPSDevice;
    v11 = MPSDevice;
    v8[1].super.isa = descriptor;
    BYTE1(v8[1]._resourceCount) = 0;
    *&v8->_resourceCount = xmmword_22E37B630;
    v16 = objc_msgSend_pixelFormat(descriptor, v12, v13, v14, v15);
    *&v8->_flags = MPSDevice::GetPixelInfo(v11, v16, MPSImageFeatureChannelFormatNone);
    v21.receiver = self;
    v21.super_class = MPSState;
    result = [(MPSState *)&v21 init];
    if (result)
    {
      result->_resources = v8;
      result->_resourceCount = 1;
      result->_readCount = 0;
      result->_label = 0;
      *(&result->_label + 7) = 0;
      return result;
    }

    isa_low = LOWORD(v8->super.isa);
    if (isa_low != 2)
    {
      if (isa_low == 1)
      {
        explicit = atomic_load_explicit(&v8->_resources, memory_order_acquire);
        if (explicit)
        {
          if (!v8->_label)
          {
          }

          atomic_store(0, &v8->_resources);
        }
      }

      goto LABEL_19;
    }

    v19 = atomic_load_explicit(&v8->_resources, memory_order_acquire);
    atomic_store(0, &v8->_resources);
    resourceCount_low = LOBYTE(v8[1]._resourceCount);
    if ((resourceCount_low - 2) >= 2)
    {
      if (resourceCount_low == 1)
      {
        v19 = *p_isa;
      }

      else
      {
        if (resourceCount_low != 4)
        {
LABEL_19:
          free(v8);
          return 0;
        }

        *p_isa = 0;
      }
    }

    goto LABEL_19;
  }

  return result;
}

- (MPSState)initWithDevice:(id)device resourceList:(MPSStateResourceList *)resourceList
{
  v15.receiver = self;
  v15.super_class = MPSState;
  v6 = [(MPSState *)&v15 init];
  if (!v6)
  {
    return v6;
  }

  MPSDevice = MPSDevice::GetMPSDevice(device);
  if (!MPSDevice)
  {
    goto LABEL_12;
  }

  *(v6 + 8) = 0u;
  *(v6 + 39) = 0;
  *(v6 + 24) = 0u;
  list = resourceList->_list;
  if (!list)
  {
    return v6;
  }

  v9 = MPSDevice;
  v10 = 0;
  do
  {
    ++v10;
    list = list->var1;
  }

  while (list);
  *(v6 + 2) = v10;
  if (!v10)
  {
    return v6;
  }

  v11 = malloc_type_calloc(v10, 0x48uLL, 0x10A2040FBCE39CDuLL);
  *(v6 + 1) = v11;
  if (v11)
  {
    v12 = resourceList->_list;
    if (v12)
    {
      v13 = v11 + 72 * *(v6 + 2) - 72;
      do
      {
        (*(v12->var0 + 2))(v12, v13, v9);
        v12 = v12->var1;
        v13 -= 72;
      }

      while (v12);
    }

    return v6;
  }

LABEL_12:

  return 0;
}

- (void)dealloc
{
  if ((self->_flags & 1) != 0 && self->_readCount && MTLReportFailureTypeEnabled())
  {
    selfCopy = self;
    v19 = objc_msgSend_label(self, v14, v15, v16, v17);
    MTLReportFailure();
  }

  resources = self->_resources;
  if (!resources)
  {
    goto LABEL_21;
  }

  if (!self->_resourceCount)
  {
    goto LABEL_20;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = self->_resources;
    v7 = *&v6[v4];
    if (v7 == 2)
    {
      explicit = atomic_load_explicit(&v6[v4 + 8], memory_order_acquire);
      atomic_store(0, &v6[v4 + 8]);
      v11 = v6[v4 + 64];
      if ((v11 - 2) < 2)
      {
        goto LABEL_6;
      }

      if (v11 == 1)
      {
        v13 = &v6[v4];

        *(v13 + 6) = 0;
      }

      else if (v11 == 4)
      {
        v12 = &v6[v4];

        *(v12 + 6) = 0;
LABEL_6:
      }
    }

    else if (v7 == 1)
    {
      v8 = &v6[v4];
      v9 = atomic_load_explicit(&v6[v4 + 8], memory_order_acquire);
      if (v9)
      {
        if (!*(v8 + 4))
        {
        }

        atomic_store(0, v8 + 1);
      }
    }

    ++v5;
    v4 += 72;
  }

  while (v5 < self->_resourceCount);
  resources = self->_resources;
LABEL_20:
  free(resources);
  self->_resources = 0;
LABEL_21:
  v20.receiver = self;
  v20.super_class = MPSState;
  [(MPSState *)&v20 dealloc:selfCopy];
}

- (void)setReadCount:(NSUInteger)readCount
{
  v3 = self->_readCount;
  if (v3 != readCount)
  {
    if ((self->_flags & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      v6 = objc_opt_class();
      NSStringFromClass(v6);
      objc_msgSend_label(self, v7, v8, v9, v10);
      MTLReportFailure();
    }

    if (!v3 && MTLReportFailureTypeEnabled())
    {
      v15 = objc_opt_class();
      NSStringFromClass(v15);
      objc_msgSend_label(self, v16, v17, v18, v19);
      MTLReportFailure();
    }

    self->_readCount = readCount;
    if (!readCount && self->_resources && self->_resourceCount)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        resources = self->_resources;
        v14 = *&resources[v11];
        if (v14 == 2)
        {
          MPSAutoTexture::ReleaseTemporaryTexture(&resources[v11 + 8]);
        }

        else if (v14 == 1)
        {
          MPSAutoBuffer::ReleaseTemporaryBuffer(&resources[v11 + 8]);
        }

        ++v12;
        v11 += 72;
      }

      while (v12 < self->_resourceCount);
    }
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v33.receiver = self;
  v33.super_class = MPSState;
  v4 = [(MPSState *)&v33 debugDescription];
  if (self->_flags)
  {
    v8 = objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\treadCount: %lu\n\tisTemporary: %s\n\tresource count: %lu\n", v6, v7, v4, self->_readCount, "YES", self->_resourceCount);
  }

  else
  {
    v8 = objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\treadCount: %lu\n\tisTemporary: %s\n\tresource count: %lu\n", v6, v7, v4, self->_readCount, "NO", self->_resourceCount);
  }

  v12 = v8;
  if (self->_resourceCount)
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"%@\tresources:\n", v10, v11, v8);
    if (self->_resourceCount)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        resources = self->_resources;
        v25 = *&resources[v17];
        if (v25 == 1)
        {
          v19 = MEMORY[0x277CCACA8];
          v31 = MPSAutoBuffer::Print(&resources[v17 + 8], v13, v14, v15, v16);
          v23 = objc_msgSend_stringWithFormat_(v19, v20, @"%@\n[%lu] buffer  %@\n", v21, v22, v12, v18, v31);
        }

        else if (v25 == 2)
        {
          v26 = MEMORY[0x277CCACA8];
          v32 = MPSAutoTexture::Print(&resources[v17 + 8], v13, v14, v15, v16);
          v23 = objc_msgSend_stringWithFormat_(v26, v27, @"%@\n[%lu] texture %@\n", v28, v29, v12, v18, v32);
        }

        else
        {
          v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%@\n[%lu] <unknown resource format %u>\n", v15, v16, v12, v18, v25);
        }

        v12 = v23;
        ++v18;
        v17 += 72;
      }

      while (v18 < self->_resourceCount);
    }
  }

  return v12;
}

- (void)setLabel:(NSString *)label
{
  v5 = self->_label;
  self->_label = label;

  if (self->_resources && self->_resourceCount)
  {
    v9 = 0;
    while (1)
    {
      v11 = (self->_resources + 72 * v9);
      v12 = *v11;
      if (v12 == 2)
      {
        break;
      }

      if (v12 != 1)
      {
        goto LABEL_6;
      }

      v13 = v11 + 1;
      if (!atomic_load_explicit(v11 + 1, memory_order_acquire))
      {
        goto LABEL_6;
      }

      explicit = atomic_load_explicit(v13, memory_order_acquire);
      if (!explicit)
      {
        MPSAutoBuffer::AllocateBuffer(v13, 0);
LABEL_4:
        explicit = atomic_load_explicit(v13, memory_order_acquire);
      }

LABEL_5:
      objc_msgSend_setLabel_(explicit, v6, label, v7, v8);
LABEL_6:
      if (++v9 >= self->_resourceCount)
      {
        return;
      }
    }

    v13 = v11 + 1;
    v14 = *(v11 + 64);
    v15 = v11 + 1;
    if ((v14 & 2) != 0)
    {
      v15 = v13;
      do
      {
        v15 = v15[5];
      }

      while ((v15[7] & 2) != 0);
    }

    if (!atomic_load_explicit(v15, memory_order_acquire))
    {
      goto LABEL_6;
    }

    explicit = atomic_load_explicit(v13, memory_order_acquire);
    if (explicit)
    {
      goto LABEL_5;
    }

    MPSAutoTexture::AllocateTexture(v13, 0);
    goto LABEL_4;
  }
}

- (void)synchronizeOnCommandBuffer:(id)commandBuffer
{
  if (self->_flags)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v4 = objc_opt_class();
      NSStringFromClass(v4);
      objc_msgSend_debugDescription(self, v5, v6, v7, v8);
      MTLReportFailure();
    }
  }
}

- (NSUInteger)resourceSize
{
  if (self->_resourceCount)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = MEMORY[0x277D85FA0];
    while (1)
    {
      resources = self->_resources;
      v12 = *&resources[v6];
      if (v12 == 2)
      {
        ResourceSize_Private = *&resources[v6 + 16];
        if (ResourceSize_Private == -1)
        {
          ResourceSize_Private = MPSAutoTexture::GetResourceSize_Private(&resources[v6 + 8], 0, v2, v3, v4);
        }

        goto LABEL_4;
      }

      if (v12 != 1)
      {
        goto LABEL_3;
      }

      v13 = &resources[v6];
      ResourceSize_Private = *&resources[v6 + 40];
      if (ResourceSize_Private != -1)
      {
        goto LABEL_4;
      }

      ResourceSize_Private = *(v13 + 3);
      if (!ResourceSize_Private)
      {
        goto LABEL_4;
      }

      MPSDevice = MPSDevice::GetMPSDevice(ResourceSize_Private);
      if (*(v13 + 3))
      {
        v15 = &resources[v6];
        v16 = *&resources[v6 + 16];
        v17 = MPSDevice;
        v18 = (*(*MPSDevice + 32))();
        v19 = (*(*v17 + 5))(v17);
        ResourceSize_Private = objc_msgSend_heapBufferSizeAndAlignWithLength_options_(v17[2], v20, (v16 + *v9 - 1) & -*v9, v19 | (16 * v18), v21);
        *(v13 + 5) = ResourceSize_Private;
        *(v15 + 6) = v22;
      }

      else
      {
LABEL_3:
        ResourceSize_Private = 0;
      }

LABEL_4:
      v8 += ResourceSize_Private;
      ++v7;
      v6 += 72;
      if (v7 >= self->_resourceCount)
      {
        return v8;
      }
    }
  }

  return 0;
}

- (MPSStateResourceType)resourceTypeAtIndex:(NSUInteger)index
{
  if (self->_resourceCount <= index)
  {
    return 0;
  }

  if (*(self->_resources + 36 * index) == 1)
  {
    return 1;
  }

  return 2;
}

- (MPSStateTextureInfo)textureInfoAtIndex:(SEL)index
{
  if (self->_resourceCount <= index)
  {
    selfCopy = self;
    indexCopy = index;
    v37 = MTLReportFailureTypeEnabled();
    index = indexCopy;
    v38 = v37;
    self = selfCopy;
    if (v38)
    {
      v39 = objc_opt_class();
      v45 = NSStringFromClass(v39);
      MTLReportFailure();
      self = selfCopy;
      index = indexCopy;
    }
  }

  if (*(self->_resources + 36 * index) != 2)
  {
    selfCopy2 = self;
    indexCopy2 = index;
    v42 = MTLReportFailureTypeEnabled();
    index = indexCopy2;
    v43 = v42;
    self = selfCopy2;
    if (v43)
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = indexCopy2;
      MTLReportFailure();
      self = selfCopy2;
      index = indexCopy2;
    }
  }

  v7 = (self->_resources + 72 * index);
  v8 = (v7 + 1);
  explicit = atomic_load_explicit(v7 + 1, memory_order_acquire);
  if ((v7[8] & 2) != 0)
  {
    v10 = (v7 + 1);
    do
    {
      v10 = *(v10 + 5);
      explicit = atomic_load_explicit(v10, memory_order_acquire);
    }

    while ((v10[56] & 2) != 0);
  }

  else
  {
    v10 = (v7 + 1);
  }

  if (explicit)
  {
    retstr->width = objc_msgSend_width(explicit, index, index, v4, v5);
    v15 = atomic_load_explicit(v8, memory_order_acquire);
    if ((v8[56] & 2) == 0)
    {
LABEL_9:
      v16 = v8;
      goto LABEL_13;
    }
  }

  else
  {
    retstr->width = objc_msgSend_width(*(v10 + 5), index, index, v4, v5);
    v15 = atomic_load_explicit(v8, memory_order_acquire);
    if ((v8[56] & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  v16 = v8;
  do
  {
    v16 = *(v16 + 5);
    v15 = atomic_load_explicit(v16, memory_order_acquire);
  }

  while ((v16[56] & 2) != 0);
LABEL_13:
  if (v15)
  {
    retstr->height = objc_msgSend_height(v15, v11, v12, v13, v14);
    v21 = atomic_load_explicit(v8, memory_order_acquire);
    if ((v8[56] & 2) == 0)
    {
LABEL_15:
      v22 = v8;
      goto LABEL_19;
    }
  }

  else
  {
    retstr->height = objc_msgSend_height(*(v16 + 5), v11, v12, v13, v14);
    v21 = atomic_load_explicit(v8, memory_order_acquire);
    if ((v8[56] & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  v22 = v8;
  do
  {
    v22 = *(v22 + 5);
    v21 = atomic_load_explicit(v22, memory_order_acquire);
  }

  while ((v22[56] & 2) != 0);
LABEL_19:
  if (v21)
  {
    retstr->depth = objc_msgSend_depth(v21, v17, v18, v19, v20);
    v27 = atomic_load_explicit(v8, memory_order_acquire);
    if ((v8[56] & 2) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    retstr->depth = objc_msgSend_depth(*(v22 + 5), v17, v18, v19, v20);
    v27 = atomic_load_explicit(v8, memory_order_acquire);
    if ((v8[56] & 2) == 0)
    {
LABEL_21:
      if (!v27)
      {
        v27 = *(v8 + 5);
      }

      v28 = objc_msgSend_arrayLength(v27, v23, v24, v25, v26, v45, v46);
      v29 = *(v8 + 4) & 0x3FFLL;
      retstr->arrayLength = v28;
      retstr->pixelFormat = v29;
      v30 = atomic_load_explicit(v8, memory_order_acquire);
      if ((v8[56] & 2) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_30;
    }
  }

  v32 = *(v8 + 4) & 0x3FFLL;
  retstr->arrayLength = *(v8 + 13);
  retstr->pixelFormat = v32;
  v30 = atomic_load_explicit(v8, memory_order_acquire);
  if ((v8[56] & 2) != 0)
  {
LABEL_24:
    if (*(v8 + 13) < 2u)
    {
      v31 = MTLTextureType2D;
    }

    else
    {
      v31 = MTLTextureType2DArray;
    }

    retstr->textureType = v31;
    goto LABEL_34;
  }

LABEL_30:
  if (!v30)
  {
    v30 = *(v8 + 5);
  }

  retstr->textureType = objc_msgSend_textureType(v30, v23, v24, v25, v26, v45);
LABEL_34:
  while (1)
  {
    v33 = atomic_load_explicit(v8, memory_order_acquire);
    if ((v8[56] & 2) == 0)
    {
      break;
    }

    v8 = *(v8 + 5);
  }

  if (!v33)
  {
    v33 = *(v8 + 5);
  }

  result = objc_msgSend_usage(v33, v23, v24, v25, v26, v45);
  retstr->usage = result;
  *retstr->_reserved = 0u;
  *&retstr->_reserved[2] = 0u;
  return result;
}

- (NSUInteger)bufferSizeAtIndex:(NSUInteger)index
{
  if (self->_resourceCount <= index)
  {
    selfCopy = self;
    v9 = index;
    v10 = MTLReportFailureTypeEnabled();
    index = v9;
    v11 = v10;
    self = selfCopy;
    if (v11)
    {
      v12 = objc_opt_class();
      NSStringFromClass(v12);
      MTLReportFailure();
      self = selfCopy;
      index = v9;
    }
  }

  if (*(self->_resources + 36 * index) != 1)
  {
    selfCopy2 = self;
    v14 = index;
    v15 = MTLReportFailureTypeEnabled();
    index = v14;
    v16 = v15;
    self = selfCopy2;
    if (v16)
    {
      v17 = objc_opt_class();
      NSStringFromClass(v17);
      MTLReportFailure();
      self = selfCopy2;
      index = v14;
    }
  }

  v5 = self->_resources + 72 * index + 8;
  explicit = atomic_load_explicit(v5, memory_order_acquire);
  if (!explicit)
  {
    return *(v5 + 1);
  }

  return objc_msgSend_length(explicit, a2, index, v3, v4);
}

- (id)resourceAtIndex:(NSUInteger)index allocateMemory:(BOOL)allocateMemory
{
  if (self->_resourceCount <= index)
  {
    selfCopy = self;
    v11 = index;
    v12 = allocateMemory;
    v13 = MTLReportFailureTypeEnabled();
    allocateMemory = v12;
    index = v11;
    v14 = v13;
    self = selfCopy;
    if (v14)
    {
      v15 = objc_opt_class();
      NSStringFromClass(v15);
      MTLReportFailure();
      allocateMemory = v12;
      self = selfCopy;
      index = v11;
    }
  }

  if (!allocateMemory)
  {
    v4 = (self->_resources + 72 * index);
    if (*v4 - 1 > 1 || !atomic_load_explicit(v4 + 1, memory_order_acquire))
    {
      return 0;
    }
  }

  v5 = (self->_resources + 72 * index);
  v6 = *v5;
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v7 = v5 + 1;
      result = atomic_load_explicit(v5 + 1, memory_order_acquire);
      if (!result)
      {
        MPSAutoBuffer::AllocateBuffer((v5 + 1), 0);
        return atomic_load_explicit(v7, memory_order_acquire);
      }

      return result;
    }

    return 0;
  }

  v9 = v5 + 1;
  result = atomic_load_explicit(v5 + 1, memory_order_acquire);
  if (!result)
  {
    MPSAutoTexture::AllocateTexture((v5 + 1), 0);
    return atomic_load_explicit(v9, memory_order_acquire);
  }

  return result;
}

@end