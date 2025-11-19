@interface MPSCommandBufferImageCache
- (MPSCommandBufferImageCache)initWithCommandBuffer:(id)a3;
- (id)debugDescription;
- (id)newHeapBlock:(unint64_t)a3 protections:(unint64_t)a4;
- (void)addHandlerToCommandBuffer:(id)a3;
- (void)dealloc;
- (void)releaseHeapBlock:(id)a3 heapProvider:(id)a4;
@end

@implementation MPSCommandBufferImageCache

- (void)dealloc
{
  v3 = MTLReportFailureTypeEnabled();
  frameList = self->_frameList;
  if (frameList && frameList->var0)
  {
    if (v3)
    {
      v9 = 0;
      v10 = 0;
      v11 = MEMORY[0x277D85DF8];
      do
      {
        var1 = frameList->var1;
        if (var1)
        {
          v13 = 0;
          do
          {
            if (var1->var1)
            {
              if (!v13)
              {
                fprintf(*v11, "cache frame %lu:\n", v9++);
              }

              v14 = *v11;
              v15 = objc_opt_class();
              v16 = NSStringFromClass(v15);
              v13 = 1;
              v20 = objc_msgSend_cStringUsingEncoding_(v16, v17, 1, v18, v19);
              v21 = var1->var1;
              v26 = objc_msgSend_label(v21, v22, v23, v24, v25);
              v30 = objc_msgSend_cStringUsingEncoding_(v26, v27, 1, v28, v29);
              fprintf(v14, "\tprobable %s leak: %p (label=%s)\n", v20, v21, v30);
              ++v10;
            }

            var1 = var1->var0;
          }

          while (var1);
        }

        sub_22E2F1450(self, v4, v5, v6, v7);
        frameList = self->_frameList;
      }

      while (frameList->var0);
      if (v10 && MTLReportFailureTypeEnabled())
      {
        v40 = v10;
        MTLReportFailure();
      }
    }

    else
    {
      do
      {
        sub_22E2F1450(self, v4, v5, v6, v7);
      }

      while (self->_frameList->var0);
    }
  }

  userCacheFrame = self->_userCacheFrame;
  if (userCacheFrame)
  {
    if (*userCacheFrame)
    {
      if (userCacheFrame[2] != *(*userCacheFrame + 552) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      sub_22E2F1450(*userCacheFrame, v4, v5, v6, v7);
    }

    MEMORY[0x2318E5730](userCacheFrame, 0xA0C40114AFA65);
  }

  if (self->_frameList && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  retainedResources = self->_retainedResources;
  if (retainedResources)
  {
    do
    {
      var0 = retainedResources->var0;

      free(retainedResources);
      retainedResources = var0;
    }

    while (var0);
  }

  v34 = 0;
  freeList = self->_freeList;
  do
  {
    v36 = freeList[v34];
    freeList[v34] = 0;
    if (v36)
    {
      do
      {
        v38 = *v36;
        v37 = *(v36 + 1);
        if (v37)
        {
          do
          {
            v39 = *v37;
            objc_msgSend_releaseHeapBlock_heapProvider_(self, v4, v37[1], v37[3], v7, v40);

            free(v37);
            v37 = v39;
          }

          while (v39);
        }

        free(v36);
        v36 = v38;
      }

      while (v38);
    }

    ++v34;
  }

  while (v34 != 65);

  v41.receiver = self;
  v41.super_class = MPSCommandBufferImageCache;
  [(MPSCommandBufferImageCache *)&v41 dealloc];
}

- (void)addHandlerToCommandBuffer:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_22E35B37C;
  v5[3] = &unk_2787BE7E8;
  v5[4] = self;
  objc_msgSend_addCompletedHandler_(a3, a2, v5, v3, v4);
}

- (MPSCommandBufferImageCache)initWithCommandBuffer:(id)a3
{
  if (!a3)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  objc_msgSend_conformsToProtocol_(a3, a2, &unk_28422A888, v3, v4);
  if ((objc_msgSend_conformsToProtocol_(a3, v7, &unk_28422A888, v8, v9) & 1) == 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_13:
      v45 = objc_opt_class();
      NSStringFromClass(v45);
      MTLReportFailure();
    }

LABEL_14:

    return 0;
  }

  v14 = objc_msgSend_device(a3, v10, v11, v12, v13);
  MPSDevice = MPSDevice::GetMPSDevice(v14);
  if (!MPSDevice)
  {
    return 0;
  }

  v16 = MPSDevice;
  v46.receiver = self;
  v46.super_class = MPSCommandBufferImageCache;
  v17 = [(MPSCommandBufferImageCache *)&v46 init];
  v22 = v17;
  if (v17)
  {
    v17->_heapProvider = 0;
    v17->_device = v16;
    v17->_cmdBuffer = a3;
    v17->_needsRetain = objc_msgSend_retainedReferences(a3, v18, v19, v20, v21) ^ 1;
    *(v22 + 584) = 1;
    *(v22 + 608) = 5000000000;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    *(v22 + 632) = isKindOfClass & 1;
    if (isKindOfClass)
    {
      *(v22 + 16) = objc_msgSend_rootCommandBuffer(*(v22 + 16), v24, v25, v26, v27);
    }

    atomic_store(1uLL, (v22 + 616));
    bzero((v22 + 32), 0x218uLL);
    v32 = objc_msgSend_userDictionary(a3, v28, v29, v30, v31);
    objc_msgSend_objectForKey_(v32, v33, @"MPSCommandBufferImageCache", v34, v35);
    if (objc_msgSend_objectForKey_(v32, v36, @"MPSCommandBufferImageCache", v37, v38))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    objc_msgSend_setObject_forKey_(v32, v39, v22, @"MPSCommandBufferImageCache", v40);
    objc_msgSend_addHandlerToCommandBuffer_(v22, v41, a3, v42, v43);
    operator new();
  }

  return 0;
}

- (id)newHeapBlock:(unint64_t)a3 protections:(unint64_t)a4
{
  device = self->_device;
  if (device[3])
  {
    return sub_22E2F0DA0(device[3], a3, a4);
  }

  else
  {
    return sub_22E2EF260(device, a3, a4);
  }
}

- (void)releaseHeapBlock:(id)a3 heapProvider:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_retireHeap_cacheDelay_(a4, v9, a3, v10, v11, self->_cacheDelay);
      }
    }

    else if (*(self->_device + 3))
    {
      cacheDelay = self->_cacheDelay;
      v13 = *(self->_device + 3);

      sub_22E2EF3F8(v13, a3, cacheDelay, 0, v4);
    }

    else
    {

      MEMORY[0x2821F96F8]();
    }
  }
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(self, v4, v3, v5, v6))
  {
    v7 = (*(*self->_device + 112))(self->_device);
    frameList = self->_frameList;
    if (frameList)
    {
      v9 = 0;
      v10 = 0;
      if (v7)
      {
        do
        {
          p_var1 = &frameList->var1;
          --v10;
          do
          {
            p_var1 = *p_var1;
            ++v10;
          }

          while (p_var1);
          ++v9;
          frameList = frameList->var0;
        }

        while (frameList);
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v13 = 0;
        v12 = 0;
        do
        {
          for (i = frameList->var2; i; i = *i)
          {
            ++v12;
            v13 += *(i + 2);
          }

          v25 = &frameList->var1;
          --v10;
          do
          {
            v25 = *v25;
            ++v10;
          }

          while (v25);
          ++v9;
          frameList = frameList->var0;
        }

        while (frameList);
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v9 = 0;
    }

    v26 = MEMORY[0x277CCACA8];
    if (v7)
    {
      v47.receiver = self;
      v47.super_class = MPSCommandBufferImageCache;
      v27 = [(MPSCommandBufferImageCache *)&v47 debugDescription];
      v44 = objc_msgSend_debugDescription(self->_cmdBuffer, v28, v29, v30, v31);
      return objc_msgSend_stringWithFormat_(v26, v32, @"%@\n\t%lu MTLResources. %lu frames.\n\tcommandBuffer: %@\n", v33, v34, v27, v10, v9, v44);
    }

    else
    {
      v46.receiver = self;
      v46.super_class = MPSCommandBufferImageCache;
      v35 = [(MPSCommandBufferImageCache *)&v46 debugDescription];
      v45 = objc_msgSend_debugDescription(self->_cmdBuffer, v36, v37, v38, v39);
      return objc_msgSend_stringWithFormat_(v26, v40, @"%@\n\t%lu heap blocks allocated for %lu bytes. %lu MTLResources. %lu frames.\n\tcommandBuffer: %@\n", v41, v42, v35, v12, v13, v10, v9, v45);
    }
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    v48.receiver = self;
    v48.super_class = MPSCommandBufferImageCache;
    v15 = [(MPSCommandBufferImageCache *)&v48 debugDescription];
    v43 = objc_msgSend_debugDescription(self->_cmdBuffer, v16, v17, v18, v19);
    return objc_msgSend_stringWithFormat_(v14, v20, @"%@\n\tcommandBuffer: %@", v21, v22, v15, v43);
  }
}

@end