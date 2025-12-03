@interface MPSKernelDAGObject
- (BOOL)hasPostfixFunction;
- (MPSKernelDAGObject)initWithKernelDAG:(void *)g finalOp:(void *)op;
- (__n128)hash;
- (const)inputTensorAtIndex:(unint64_t)index;
- (const)outputTensorAtIndex:(unint64_t)index;
- (id).cxx_construct;
- (id)debugDescription;
- (id)getStitchedFunctions:(id)functions;
- (vector<unsigned)dynamicFCs;
- (void)dealloc;
- (void)setDynamicFCs:(vector<unsigned)int;
@end

@implementation MPSKernelDAGObject

- (id)debugDescription
{
  memset(&__p, 0, sizeof(__p));
  finalOp = self->_finalOp;
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  v8 = 0;
  sub_22E33DEC4(finalOp, &__p, &v9, &v8);
  sub_22E33ECE0(v10[0]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    result = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v3, &__p, 4, v4);
  }

  else
  {
    result = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v3, __p.__r_.__value_.__l.__data_, 4, v4);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = result;
    operator delete(__p.__r_.__value_.__l.__data_);
    return v6;
  }

  return result;
}

- (const)inputTensorAtIndex:(unint64_t)index
{
  v3 = *(***(self->_kernelDAG + 7) + 8);
  if (v3 && (v4 = *v3, index < ((*(*(***(self->_kernelDAG + 7) + 8) + 8) - v4) >> 3)))
  {
    return *(v4 + 8 * index);
  }

  else
  {
    return 0;
  }
}

- (const)outputTensorAtIndex:(unint64_t)index
{
  v3 = *(***(self->_kernelDAG + 7) + 24);
  if (v3 && (v4 = *v3, index < ((*(*(***(self->_kernelDAG + 7) + 24) + 8) - v4) >> 3)))
  {
    return *(v4 + 8 * index);
  }

  else
  {
    return 0;
  }
}

- (MPSKernelDAGObject)initWithKernelDAG:(void *)g finalOp:(void *)op
{
  v16.receiver = self;
  v16.super_class = MPSKernelDAGObject;
  v6 = [(MPSKernelDAGObject *)&v16 init];
  v7 = v6;
  v6->_finalOp = op;
  v6->_kernelDAG = *(op + 4);
  v9 = *g;
  v8 = *(g + 1);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = v6->_kernelDAGSharedPtr.__cntrl_;
  v6->_kernelDAGSharedPtr.__ptr_ = v9;
  v6->_kernelDAGSharedPtr.__cntrl_ = v8;
  if (cntrl && !atomic_fetch_add(&cntrl->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (cntrl->__on_zero_shared)(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  v11 = objc_alloc(MEMORY[0x277CBEB38]);
  v7->_stitchedFunctions = objc_msgSend_initWithCapacity_(v11, v12, 8, v13, v14);
  *&v7->_keepSubDAGArray[8] = 16843009;
  *v7->_keepSubDAGArray = 0x101010101010101;
  MPSKernelDAG::getDAGAndHash(v7->_kernelDAG, 0, v7->_finalOp, 0, 0, v7->_sha256, v7->_keepSubDAGArray);
  v7->_dynamicFCs.__end_ = v7->_dynamicFCs.__begin_;
  return v7;
}

- (id)getStitchedFunctions:(id)functions
{
  v87 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, self->_dynamicFCs.__end_ - self->_dynamicFCs.__begin_, v3, v4);
  begin = self->_dynamicFCs.__begin_;
  end = self->_dynamicFCs.__end_;
  while (begin != end)
  {
    v13 = *begin++;
    v14 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, v13, v8, v9);
    objc_msgSend_addObject_(v10, v15, v14, v16, v17);
  }

  result = objc_msgSend_objectForKeyedSubscript_(self->_stitchedFunctions, v7, v10, v8, v9);
  if (!result)
  {
    context = objc_autoreleasePoolPush();
    v23 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v19, v20, v21, v22);
    v28 = objc_msgSend_array(MEMORY[0x277CBEB18], v24, v25, v26, v27);
    DAGAndHash = MPSKernelDAG::getDAGAndHash(self->_kernelDAG, functions, self->_finalOp, v23, v28, self->_sha256, self->_keepSubDAGArray);
    v34 = objc_msgSend_device(functions, v30, v31, v32, v33);
    v39 = objc_msgSend_allValues(v23, v35, v36, v37, v38);
    v43 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v40, MEMORY[0x277CBEBF8], v41, v42);
    v85 = 0;
    v46 = objc_msgSend_newLibraryWithDAG_functions_error_(v34, v44, DAGAndHash, v39, &v85);
    if (!v46 && MTLReportFailureTypeEnabled())
    {
      v74 = objc_msgSend_description(v85, v45, v71, v72, v73);
      v79 = objc_msgSend_UTF8String(v74, v75, v76, v77, v78);
      MTLReportFailure();
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v45, &v81, v86, 16, v79);
    if (v47)
    {
      v51 = v47;
      v52 = *v82;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v82 != v52)
          {
            objc_enumerationMutation(v28);
          }

          v54 = objc_msgSend_newFunctionWithName_(v46, v48, *(*(&v81 + 1) + 8 * i), v49, v50);
          objc_msgSend_functionType(v54, v55, v56, v57, v58);
          if (objc_msgSend_functionType(v54, v59, v60, v61, v62) != 5)
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }

          objc_msgSend_addObject_(v43, v63, v54, v64, v65);
        }

        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v48, &v81, v86, 16);
      }

      while (v51);
    }

    MPSKernelDAG::appendConversionFunctions(self->_kernelDAG, functions, v43, self->_keepSubDAGArray);
    objc_msgSend_setObject_forKeyedSubscript_(self->_stitchedFunctions, v66, v43, v10, v67);
    objc_autoreleasePoolPop(context);
    return objc_msgSend_objectForKeyedSubscript_(self->_stitchedFunctions, v68, v10, v69, v70);
  }

  return result;
}

- (BOOL)hasPostfixFunction
{
  v2 = **(self->_kernelDAG + 7);
  if (*(*(self->_kernelDAG + 7) + 8) == v2)
  {
    sub_22E34059C();
  }

  return *v2 != self->_finalOp;
}

- (void)dealloc
{
  cntrl = self->_kernelDAGSharedPtr.__cntrl_;
  self->_kernelDAGSharedPtr.__ptr_ = 0;
  self->_kernelDAGSharedPtr.__cntrl_ = 0;
  if (cntrl && !atomic_fetch_add(cntrl + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*cntrl + 16))(cntrl, a2);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  v4.receiver = self;
  v4.super_class = MPSKernelDAGObject;
  [(MPSKernelDAGObject *)&v4 dealloc];
}

- (__n128)hash
{
  result = *(self + 112);
  v3 = *(self + 128);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

- (vector<unsigned)dynamicFCs
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  end = self[3].__end_;
  cap = self[3].__cap_;
  if (cap != end)
  {
    if (((cap - end) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_22E33ECC8();
  }

  return self;
}

- (void)setDynamicFCs:(vector<unsigned)int
{
  p_dynamicFCs = &self->_dynamicFCs;
  if (&self->_dynamicFCs != a3)
  {
    begin = a3->__begin_;
    end = a3->__end_;
    v7 = end - a3->__begin_;
    cap = self->_dynamicFCs.__cap_;
    v9 = self->_dynamicFCs.__begin_;
    if (cap - v9 < v7)
    {
      v10 = v7 >> 2;
      if (v9)
      {
        self->_dynamicFCs.__end_ = v9;
        operator delete(v9);
        cap = 0;
        p_dynamicFCs->__begin_ = 0;
        p_dynamicFCs->__end_ = 0;
        p_dynamicFCs->__cap_ = 0;
      }

      if (!(v10 >> 62))
      {
        v11 = cap >> 1;
        if (cap >> 1 <= v10)
        {
          v11 = v7 >> 2;
        }

        v12 = cap >= 0x7FFFFFFFFFFFFFFCLL;
        v13 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v12)
        {
          v13 = v11;
        }

        if (!(v13 >> 62))
        {
          operator new();
        }
      }

      sub_22E33ECC8();
    }

    v14 = self->_dynamicFCs.__end_;
    v15 = v14 - v9;
    if (v14 - v9 >= v7)
    {
      if (end != begin)
      {
        v18 = v9;
        memmove(v9, begin, v7);
        v9 = v18;
      }

      v17 = (v9 + v7);
    }

    else
    {
      v16 = (begin + v15);
      if (v14 != v9)
      {
        memmove(v9, begin, v15);
        v14 = self->_dynamicFCs.__end_;
      }

      if (end != v16)
      {
        memmove(v14, v16, end - v16);
      }

      v17 = (v14 + end - v16);
    }

    self->_dynamicFCs.__end_ = v17;
  }
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  return self;
}

@end