@interface MPSKernelUserDAGObject
- (MPSKernelUserDAGObject)initWithKernelUserDAG:(void *)g;
- (id).cxx_construct;
- (id)getMTLStitchingGraph;
- (id)getVisibleFunctions;
- (void)dealloc;
@end

@implementation MPSKernelUserDAGObject

- (MPSKernelUserDAGObject)initWithKernelUserDAG:(void *)g
{
  v9.receiver = self;
  v9.super_class = MPSKernelUserDAGObject;
  result = [(MPSKernelUserDAGObject *)&v9 init];
  v6 = *g;
  v5 = *(g + 1);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = result->_kernelUserDAGSharedPtr.__cntrl_;
  result->_kernelUserDAGSharedPtr.__ptr_ = v6;
  result->_kernelUserDAGSharedPtr.__cntrl_ = v5;
  if (cntrl)
  {
    if (!atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (*(*cntrl + 16))(cntrl);
      std::__shared_weak_count::__release_weak(cntrl);
      return v8;
    }
  }

  return result;
}

- (id)getMTLStitchingGraph
{
  v24[1] = *MEMORY[0x277D85DE8];
  ptr = self->_kernelUserDAGSharedPtr.__ptr_;
  v2 = *(ptr + 5);
  v4 = *v2;
  v3 = v2[1];
  if (*v2 == v3)
  {
    v5 = 0;
    v7 = self->_kernelUserDAGSharedPtr.__ptr_;
    if (*(*(v3 - 8) + 56))
    {
LABEL_9:
      v5 = -8;
      v8 = MEMORY[0xFFFFFFFFFFFFFFF8];
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    v23 = v2[1];
    do
    {
      v6 = *(*v4 + 72);
      if (v6 && *v6 != v6[1])
      {
        operator new();
      }

      v4 += 8;
    }

    while (v4 != v23);
    v7 = self->_kernelUserDAGSharedPtr.__ptr_;
    if (*(*(*(*(ptr + 5) + 8) - 8) + 56))
    {
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_12:
  v24[0] = objc_alloc(MEMORY[0x277CD6D88]);
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v24, 1, v10);
  v14 = (v7 + 8);
  if (*(v7 + 31) < 0)
  {
    v14 = *v14;
  }

  v15 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v11, v14, 4, v12, ptr);
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, 0, v5 >> 3, v17);
  v19 = objc_alloc(MEMORY[0x277CD6DD8]);
  return objc_msgSend_initWithFunctionName_nodes_outputNode_attributes_(v19, v20, v15, v18, v8, v13);
}

- (id)getVisibleFunctions
{
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4);
  v9 = objc_autoreleasePoolPush();
  v10 = *(self->_kernelUserDAGSharedPtr.__ptr_ + 5);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 != v12)
  {
    do
    {
      v22 = *v11;
      v23 = *v11 + 8;
      if ((*v11)[31] < 0)
      {
        v23 = *v23;
      }

      v26 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v7, v23, 4, v8);
      v27 = (v22 + 32);
      if (v22[55] < 0)
      {
        v13 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v24, *v27, 4, v25);
      }

      else
      {
        v13 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v24, v27, 4, v25);
      }

      v14 = v13;
      v15 = (*(*v22 + 16))(v22);
      v16 = [MPSUserDAGVisibleOperation alloc];
      v18 = objc_msgSend_initWithVisibleName_specializedName_functionConstants_(v16, v17, v26, v14, v15);
      objc_msgSend_addObject_(v6, v19, v18, v20, v21);
      ++v11;
    }

    while (v11 != v12);
  }

  objc_autoreleasePoolPop(v9);
  return v6;
}

- (void)dealloc
{
  cntrl = self->_kernelUserDAGSharedPtr.__cntrl_;
  self->_kernelUserDAGSharedPtr.__ptr_ = 0;
  self->_kernelUserDAGSharedPtr.__cntrl_ = 0;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    selfCopy = self;
    (*(*cntrl + 16))(cntrl, a2);
    std::__shared_weak_count::__release_weak(cntrl);
    self = selfCopy;
  }

  v4.receiver = self;
  v4.super_class = MPSKernelUserDAGObject;
  [(MPSKernelUserDAGObject *)&v4 dealloc];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end