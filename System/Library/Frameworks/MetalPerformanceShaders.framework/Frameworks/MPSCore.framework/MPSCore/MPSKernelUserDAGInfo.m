@interface MPSKernelUserDAGInfo
- (MPSKernelUserDAGInfo)initWithMTLStitchingGraphs:(id)a3 visibleFunctions:(id)a4 stitchedFunctions:(id)a5;
- (id)getStitchedFunctions:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MPSKernelUserDAGInfo

- (unint64_t)hash
{
  cachedHash = self->_cachedHash;
  if (!cachedHash)
  {
    cachedHash = 0;
    if (objc_msgSend_count(self->_stitchingGraphs, a2, v2, v3, v4))
    {
      v10 = 0;
      for (i = objc_msgSend_objectAtIndexedSubscript_(self->_stitchingGraphs, v7, 0, v8, v9); ; i = objc_msgSend_objectAtIndexedSubscript_(self->_stitchingGraphs, v16, v10, v17, v18))
      {
        v19 = objc_msgSend_nodes(i, v12, v13, v14, v15);
        v23 = objc_msgSend_objectAtIndexedSubscript_(self->_stitchingGraphs, v20, v10, v21, v22);
        v28 = objc_msgSend_outputNode(v23, v24, v25, v26, v27);
        if (objc_msgSend_count(v19, v29, v30, v31, v32))
        {
          v37 = 0;
          do
          {
            v38 = objc_msgSend_objectAtIndexedSubscript_(v19, v33, v37, v35, v36);
            cachedHash ^= (cachedHash << 6) + 2654435769u + (cachedHash >> 2) + objc_msgSend_hash(v38, v39, v40, v41, v42);
            ++v37;
          }

          while (v37 < objc_msgSend_count(v19, v43, v44, v45, v46));
        }

        if (v28)
        {
          cachedHash ^= (cachedHash << 6) + 2654435769u + (cachedHash >> 2) + objc_msgSend_hash(v28, v33, v34, v35, v36);
        }

        if (++v10 >= objc_msgSend_count(self->_stitchingGraphs, v33, v34, v35, v36))
        {
          break;
        }
      }
    }

    self->_cachedHash = cachedHash;
  }

  return cachedHash;
}

- (MPSKernelUserDAGInfo)initWithMTLStitchingGraphs:(id)a3 visibleFunctions:(id)a4 stitchedFunctions:(id)a5
{
  v23.receiver = self;
  v23.super_class = MPSKernelUserDAGInfo;
  v8 = [(MPSKernelUserDAGInfo *)&v23 init];
  v8->_stitchingGraphs = objc_msgSend_copy(a3, v9, v10, v11, v12);
  v8->_userVisibleFunctions = objc_msgSend_copy(a4, v13, v14, v15, v16);
  v21 = objc_msgSend_copy(a5, v17, v18, v19, v20);
  v8->_stitchedMTLFunctions = 0;
  v8->_cachedHash = 0;
  v8->_userStitchedFunctions = v21;
  return v8;
}

- (id)getStitchedFunctions:(id)a3
{
  v89 = *MEMORY[0x277D85DE8];
  result = self->_stitchedMTLFunctions;
  if (!result)
  {
    v6 = objc_autoreleasePoolPush();
    v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9, v10);
    userVisibleFunctions = self->_userVisibleFunctions;
    if (userVisibleFunctions)
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(userVisibleFunctions, v11, &v83, v88, 16);
      if (v14)
      {
        v18 = v14;
        v19 = *v84;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v84 != v19)
            {
              objc_enumerationMutation(userVisibleFunctions);
            }

            VisibleFunction = objc_msgSend_getVisibleFunction_(*(*(&v83 + 1) + 8 * i), v15, a3, v16, v17);
            objc_msgSend_addObject_(v12, v22, VisibleFunction, v23, v24);
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(userVisibleFunctions, v15, &v83, v88, 16);
        }

        while (v18);
      }
    }

    v25 = objc_opt_new();
    objc_msgSend_setFunctions_(v25, v26, v12, v27, v28);
    objc_msgSend_setFunctionGraphs_(v25, v29, self->_stitchingGraphs, v30, v31);
    v36 = objc_msgSend_device(a3, v32, v33, v34, v35);
    MPSDevice = MPSDevice::GetMPSDevice(v36);
    MPSDevice::AddBinaryArchives(MPSDevice, v25);
    v82 = 0;
    v42 = objc_msgSend_device(a3, v38, v39, v40, v41);
    v49 = objc_msgSend_newLibraryWithStitchedDescriptor_error_(v42, v43, v25, &v82, v44);
    if (!v49 && MTLReportFailureTypeEnabled())
    {
      v72 = objc_msgSend_description(v82, v45, v46, v47, v48);
      v77 = objc_msgSend_UTF8String(v72, v73, v74, v75, v76);
      MTLReportFailure();
    }

    v51 = objc_msgSend_array(MEMORY[0x277CBEB18], v45, v46, v47, v48, v77);
    userStitchedFunctions = self->_userStitchedFunctions;
    if (userStitchedFunctions)
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(userStitchedFunctions, v50, &v78, v87, 16);
      if (v53)
      {
        v57 = v53;
        v58 = *v79;
        do
        {
          for (j = 0; j != v57; ++j)
          {
            if (*v79 != v58)
            {
              objc_enumerationMutation(userStitchedFunctions);
            }

            StitchedFunction = objc_msgSend_getStitchedFunction_(*(*(&v78 + 1) + 8 * j), v54, v49, v55, v56);
            objc_msgSend_functionType(StitchedFunction, v61, v62, v63, v64);
            if (objc_msgSend_functionType(StitchedFunction, v65, v66, v67, v68) != 5)
            {
              if (MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }
            }

            objc_msgSend_addObject_(v51, v69, StitchedFunction, v70, v71);
          }

          v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(userStitchedFunctions, v54, &v78, v87, 16);
        }

        while (v57);
      }
    }

    self->_stitchedMTLFunctions = v51;
    objc_autoreleasePoolPop(v6);
    return self->_stitchedMTLFunctions;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSKernelUserDAGInfo;
  [(MPSKernelUserDAGInfo *)&v3 dealloc];
}

@end