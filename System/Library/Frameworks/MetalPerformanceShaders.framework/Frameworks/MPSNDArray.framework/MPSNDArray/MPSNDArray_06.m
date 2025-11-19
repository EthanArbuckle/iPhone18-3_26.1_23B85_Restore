uint64_t MPSNDArrayInt4FunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:a2 + 8 type:85 atIndex:82];
  AddFunctionConstantList(v5, a3);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

void MPSBufferCache::~MPSBufferCache(MPSBufferCache *this)
{
  std::mutex::~mutex((this + 40));
  v2 = *(this + 2);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    operator delete(v4);
  }
}

void *MPSBufferCache::getBuffer(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 40));
  v14 = a2;
  v8 = std::__hash_table<std::__hash_value_type<void *,objc_object  {objcproto9MTLBuffer}*>,std::__unordered_map_hasher<void *,objc_object  {objcproto9MTLBuffer}*,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,objc_object  {objcproto9MTLBuffer}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}*>>::find<void *>(a1, &v14);
  v9 = v8;
  if (v8)
  {
    v10 = [v8[3] length];
    v11 = v9[3];
    if (v10 >= a3)
    {
      goto LABEL_6;
    }
  }

  v11 = [a2 newBufferWithLength:a3 options:0];
  v13 = a2;
  v14 = &v13;
  std::__hash_table<std::__hash_value_type<void *,objc_object  {objcproto9MTLBuffer}*>,std::__unordered_map_hasher<void *,objc_object  {objcproto9MTLBuffer}*,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,objc_object  {objcproto9MTLBuffer}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}*>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::piecewise_construct_t const&<>>(a1, &v13)[3] = v11;
  if (a4)
  {
    (*(a4 + 16))(a4, v11);
  }

LABEL_6:
  std::mutex::unlock((a1 + 40));
  return v11;
}

uint64_t GetPlaceHolderIndexInSourceArrayQuantizedGEMM2(MPSKernelDAG *a1, MPSNDArrayQuantizationDescriptor *a2, uint64_t *a3, MPSNDArrayQuantizationDescriptor *a4, uint64_t *a5)
{
  *v72 = [MPSNDArrayQuantizedMatrixMultiplication getScaleIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:1];
  *v71 = [MPSNDArrayQuantizedMatrixMultiplication getZeroPointIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:1];
  *v70 = [MPSNDArrayQuantizedMatrixMultiplication getMinValIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:1];
  *v69 = [MPSNDArrayQuantizedMatrixMultiplication getDQuantScaleIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:1];
  *v68 = [MPSNDArrayQuantizedMatrixMultiplication getDQuantMinValIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:1];
  *v67 = [MPSNDArrayQuantizedMatrixMultiplication getLUTIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:1];
  *v66 = [MPSNDArrayQuantizedMatrixMultiplication getScaleIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:0];
  *v65 = [MPSNDArrayQuantizedMatrixMultiplication getZeroPointIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:0];
  v8 = [MPSNDArrayQuantizedMatrixMultiplication getMinValIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:0];
  v9 = [MPSNDArrayQuantizedMatrixMultiplication getDQuantScaleIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:0];
  v10 = [MPSNDArrayQuantizedMatrixMultiplication getDQuantMinValIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:0];
  v61 = a2;
  v63 = a4;
  v11 = [MPSNDArrayQuantizedMatrixMultiplication getLUTIndexWithLeftQuantizationDescriptor:a2 rightQuantizationDescriptor:a4 isForLeft:0];
  v12 = *(a1 + 8);
  v13 = *v12;
  v64 = v12[1];
  if (*v12 == v64)
  {
    v81 = -1;
    v82 = -1;
    v80 = -1;
    v83 = -1;
    v84 = -1;
    v73 = -1;
    v74 = -1;
    v17 = -1;
    v79 = -1;
    v77 = -1;
    v78 = -1;
    v75 = -1;
    v76 = -1;
    v16 = -1;
  }

  else
  {
    v14 = v11;
    v15 = 0;
    v16 = -1;
    v75 = -1;
    v76 = -1;
    v77 = -1;
    v78 = -1;
    v79 = -1;
    v73 = -1;
    v74 = -1;
    v17 = -1;
    v83 = -1;
    v84 = -1;
    v80 = -1;
    v81 = -1;
    v82 = -1;
    do
    {
      v18 = *v13;
      if (v18 == *(MPSKernelDAG::GetCoreOpInputAtIndex(a1) + 32))
      {
        v16 = v15;
      }

      v19 = *v13;
      if (v19 == *(MPSKernelDAG::GetCoreOpInputAtIndex(a1) + 32))
      {
        v17 = v15;
      }

      if ((*v72 & 0x8000000000000000) == 0)
      {
        v20 = *v13;
        CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v22 = v75;
        if (v20 == *(CoreOpInputAtIndex + 32))
        {
          v22 = v15;
        }

        v75 = v22;
      }

      if ((*v71 & 0x8000000000000000) == 0)
      {
        v23 = *v13;
        v24 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v25 = v76;
        if (v23 == *(v24 + 32))
        {
          v25 = v15;
        }

        v76 = v25;
      }

      if ((*v70 & 0x8000000000000000) == 0)
      {
        v26 = *v13;
        v27 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v28 = v77;
        if (v26 == *(v27 + 32))
        {
          v28 = v15;
        }

        v77 = v28;
      }

      if ((*v69 & 0x8000000000000000) == 0)
      {
        v29 = *v13;
        v30 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v31 = v78;
        if (v29 == *(v30 + 32))
        {
          v31 = v15;
        }

        v78 = v31;
      }

      if ((*v68 & 0x8000000000000000) == 0)
      {
        v32 = *v13;
        v33 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v34 = v79;
        if (v32 == *(v33 + 32))
        {
          v34 = v15;
        }

        v79 = v34;
      }

      if ((*v67 & 0x8000000000000000) == 0)
      {
        v35 = *v13;
        v36 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v37 = v73;
        if (v35 == *(v36 + 32))
        {
          v37 = v15;
        }

        v73 = v37;
      }

      if ((*v66 & 0x8000000000000000) == 0)
      {
        v38 = *v13;
        v39 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v40 = v82;
        if (v38 == *(v39 + 32))
        {
          v40 = v15;
        }

        v82 = v40;
      }

      if ((*v65 & 0x8000000000000000) == 0)
      {
        v41 = *v13;
        v42 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v43 = v80;
        if (v41 == *(v42 + 32))
        {
          v43 = v15;
        }

        v80 = v43;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        v44 = *v13;
        v45 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v46 = v81;
        if (v44 == *(v45 + 32))
        {
          v46 = v15;
        }

        v81 = v46;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        v47 = *v13;
        v48 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v49 = v83;
        if (v47 == *(v48 + 32))
        {
          v49 = v15;
        }

        v83 = v49;
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        v50 = *v13;
        v51 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v52 = v84;
        if (v50 == *(v51 + 32))
        {
          v52 = v15;
        }

        v84 = v52;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v53 = *v13;
        v54 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v55 = v74;
        if (v53 == *(v54 + 32))
        {
          v55 = v15;
        }

        v74 = v55;
      }

      ++v15;
      ++v13;
    }

    while (v13 != v64);
  }

  if (a3)
  {
    *a3 = v16;
    a3[1] = v75;
    a3[2] = v76;
    a3[3] = v77;
    a3[4] = v78;
    a3[5] = v79;
    if ([(MPSNDArrayQuantizationDescriptor *)v61 quantizationScheme]== 2)
    {
      a3[1] = v73;
    }
  }

  if (a5)
  {
    *a5 = v17;
    a5[1] = v82;
    a5[2] = v80;
    a5[3] = v81;
    a5[4] = v83;
    a5[5] = v84;
    if ([(MPSNDArrayQuantizationDescriptor *)v63 quantizationScheme]== 2)
    {
      a5[1] = v74;
    }
  }

  if (v61)
  {
    v56 = v16 == -1;
  }

  else
  {
    v56 = 0;
  }

  v57 = v56;
  if (v63)
  {
    v58 = v17 == -1;
  }

  else
  {
    v58 = 0;
  }

  if (v58)
  {
    return 1;
  }

  else
  {
    return v57;
  }
}

uint64_t validateAffineMatrixMultiplication(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 objectAtIndexedSubscript:0];
  v7 = [a1 objectAtIndexedSubscript:1];
  v8 = [a1 objectAtIndexedSubscript:2];
  v9 = [a1 objectAtIndexedSubscript:3];
  v10 = [a1 objectAtIndexedSubscript:4];
  v54 = [a1 objectAtIndexedSubscript:5];
  v11 = *(v6 + *MEMORY[0x277CD73C8]);
  if (v11 != 536870916 && v11 != 536870920)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v13 = MEMORY[0x277CD7410];
  v14 = MEMORY[0x277CD73D8];
  if (*(v6 + *MEMORY[0x277CD7410] + 4 * (*(v6 + *MEMORY[0x277CD73D8]) & 0xF)) != a3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v6 + *v13 + 4 * (*(v6 + *v14 + 1) & 0xF)) != a2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = *(v6 + *v13 + 4 * (*(v6 + *v14 + 2) & 0xF));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = -1;
    v17 = -1;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v24 = v16;
    v23 = v17;
LABEL_20:
    v25 = v54;
    goto LABEL_21;
  }

  if (*(v7 + *v13 + 4 * (*(v7 + *v14 + 2) & 0xF)) != v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v26 = (v7 + *v13);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[3];
  v30 = *(v7 + *v14);
  v73 = v26[2];
  v74 = v29;
  v72[0] = v27;
  v72[1] = v28;
  v17 = *(v72 + (BYTE1(v30) & 0xF));
  v71[2] = v73;
  v71[3] = v29;
  v71[0] = v27;
  v71[1] = v28;
  v16 = *(v71 + (v30 & 0xF));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_19;
  }

LABEL_10:
  if (*(v8 + *v13 + 4 * (*(v8 + *v14 + 2) & 0xF)) != v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v18 = (v8 + *v13);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[3];
  v22 = *(v8 + *v14);
  v69 = v18[2];
  v70 = v21;
  v68[0] = v19;
  v68[1] = v20;
  v23 = *(v68 + (BYTE1(v22) & 0xF));
  v67[2] = v69;
  v67[3] = v21;
  v67[0] = v19;
  v67[1] = v20;
  v24 = *(v67 + (v22 & 0xF));
  if (v17 != -1 && v17 != v23 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v16 == -1 || v16 == v24)
  {
    goto LABEL_20;
  }

  v25 = v54;
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_21:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*(v9 + *v13 + 4 * (*(v9 + *v14 + 2) & 0xF)) != v15 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v31 = (v9 + *v13);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[3];
    v35 = *(v9 + *v14);
    v65 = v31[2];
    v66 = v34;
    v64[0] = v32;
    v64[1] = v33;
    v36 = *(v64 + (BYTE1(v35) & 0xF));
    v63[2] = v65;
    v63[3] = v34;
    v63[0] = v32;
    v63[1] = v33;
    v37 = *(v63 + (v35 & 0xF));
    if (v23 != -1 && v23 != v36 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v24 != -1 && v24 != v37 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = -1;
    v39 = -1;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (*(v10 + *v13 + 4 * (*(v10 + *v14 + 2) & 0xF)) != v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v41 = (v10 + *v13);
  v42 = *v41;
  v43 = v41[1];
  v44 = v41[3];
  v45 = *(v10 + *v14);
  v61 = v41[2];
  v62 = v44;
  v60[0] = v42;
  v60[1] = v43;
  v38 = *(v60 + (BYTE1(v45) & 0xF));
  v59[2] = v61;
  v59[3] = v44;
  v59[0] = v42;
  v59[1] = v43;
  v39 = *(v59 + (v45 & 0xF));
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
LABEL_32:
    if (*(v25 + *v13 + 4 * (*(v25 + *v14 + 2) & 0xF)) != v15)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }

    v46 = (v25 + *v13);
    v47 = *v46;
    v48 = v46[1];
    v49 = v46[3];
    v50 = *(v25 + *v14);
    v57 = v46[2];
    v58 = v49;
    v56[0] = v47;
    v56[1] = v48;
    v51 = *(v56 + (BYTE1(v50) & 0xF));
    v55[2] = v57;
    v55[3] = v49;
    v55[0] = v47;
    v55[1] = v48;
    v52 = *(v55 + (v50 & 0xF));
    if (v38 != -1 && v38 != v51)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }

    if (v39 != -1 && v39 != v52)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        return MTLReportFailure();
      }
    }
  }

  return result;
}

uint64_t validateLUTMatrixMultiplication(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 objectAtIndexedSubscript:0];
  result = [a1 objectAtIndexedSubscript:1];
  v12 = result;
  v13 = MEMORY[0x277CD73C8];
  v14 = *(v10 + *MEMORY[0x277CD73C8]);
  if (v14 != 4 && v14 != 8 && v14 != 536870920)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      result = MTLReportFailure();
    }
  }

  v17 = 256;
  if (*(v10 + *v13) == 4)
  {
    v17 = 16;
  }

  if (a2)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (a2)
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  v20 = MEMORY[0x277CD7410];
  v21 = v12 + *MEMORY[0x277CD7410];
  v22 = MEMORY[0x277CD73D8];
  v48 = *(v12 + *MEMORY[0x277CD73D8]);
  if (v17 != *(v21 + 4 * (*(&v48 | a2) & 0xF)))
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      result = MTLReportFailure();
    }
  }

  v23 = *v20;
  v24 = *(v10 + v23);
  v25 = *(v10 + v23 + 16);
  v26 = *(v10 + v23 + 48);
  v27 = *v22;
  v28 = *(v10 + v27);
  v44 = *(v10 + v23 + 32);
  v45 = v26;
  v43[0] = v24;
  v43[1] = v25;
  v29 = *(v43 + (v28 & 0xF));
  v42[2] = v44;
  v42[3] = v26;
  v42[0] = v24;
  v42[1] = v25;
  v30 = *(v42 + (BYTE1(v28) & 0xF));
  v31 = (v12 + v23);
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v12 + v27);
  v35 = v31[2];
  v36 = v31[3];
  v41 = v34;
  v47[2] = v35;
  v47[3] = v36;
  v47[0] = v32;
  v47[1] = v33;
  v37 = *(v47 + (*(&v41 | v18 & 0xF) & 0xF));
  v46[2] = v35;
  v46[3] = v36;
  v46[0] = v32;
  v46[1] = v33;
  v38 = *(v46 + (*(&v41 | v19 & 0xF) & 0xF));
  if (a2)
  {
    v40[0] = v32;
    v40[1] = v33;
    v40[2] = v35;
    v40[3] = v36;
    v39 = *(v40 + (v34 & 0xF));
    if (a3)
    {
      if (v29 != a5)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }

      if (v39 * v30 != a4)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }

      if (v29 % v37)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }

      if (v30 % v38)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          return MTLReportFailure();
        }
      }
    }

    else
    {
      if (v39 * v29 != a5)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }

      if (v30 != a4)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }

      if (v29 % v37)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          result = MTLReportFailure();
        }
      }

      if (v30 % v38)
      {
        result = MTLReportFailureTypeEnabled();
        if (result)
        {
          return MTLReportFailure();
        }
      }
    }
  }

  else
  {
    if (v29 != a5)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }

    if (v30 != a4)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }

    if (v29 % v37)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }

    if (v30 % v38)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        return MTLReportFailure();
      }
    }
  }

  return result;
}

uint64_t MPSNDArrayQuantizedMatrixMultiplicationConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MPSCreateFunctionConstantValues();
  AddFunctionConstantList(v5, a3);
  v9 = a2[8];
  [v5 setConstantValue:&v9 type:85 atIndex:115];
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t MPSNDArrayMatMulDeviceBehavior::EncodeQuantizedMatrixMultiplicationInt8Affine(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v89[6] = *MEMORY[0x277D85DE8];
  v52 = *(a2 + *MEMORY[0x277CD7370]);
  v7 = 431188;
  v8 = *(a2 + 176);
  v9 = *(a5 + 208);
  v10 = [*(a5 + 232) graph];
  GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v10, 0, v89, v8, v87, 0, v11);
  v12 = [*(a5 + 16) objectAtIndexedSubscript:v89[0]];
  [*(a5 + 16) objectAtIndexedSubscript:v87[0]];
  v13 = [*(a5 + 16) objectAtIndexedSubscript:v87[1]];
  v14 = MEMORY[0x277CD7410];
  v15 = (v13 + *MEMORY[0x277CD7410]);
  v16 = *v15;
  v17 = v15[1];
  v18 = MEMORY[0x277CD73D8];
  v19 = *(v13 + *MEMORY[0x277CD73D8]);
  v20 = v15[2];
  v21 = v15[3];
  v60[2] = v20;
  v60[3] = v21;
  v60[0] = v16;
  v60[1] = v17;
  if (*(v60 + (v19 & 0xF)) == 1)
  {
    v59[0] = v16;
    v59[1] = v17;
    v59[2] = v20;
    v59[3] = v21;
    if (*(v59 + (BYTE1(v19) & 0xF)) == 1)
    {
      v7 = 431189;
    }

    v51 = v7;
  }

  else
  {
    v51 = 431188;
  }

  makeStrideBytes();
  v49 = v86;
  v22 = v85;
  makeStrideBytes();
  v50 = v84;
  v23 = v83;
  makeStrideBytes();
  v24 = *v14;
  v25 = *(v9 + v24);
  v26 = *(v9 + v24 + 16);
  v27 = *(v9 + v24 + 48);
  v28 = *v18;
  v29 = *(v9 + v28);
  v57 = *(v9 + v24 + 32);
  v58 = v27;
  v56[0] = v25;
  v56[1] = v26;
  v30 = *(v56 + (v29 & 0xF));
  v55[2] = v57;
  v55[3] = v27;
  v55[0] = v25;
  v55[1] = v26;
  v31 = *(v55 + (BYTE1(v29) & 0xF));
  v54[2] = v57;
  v54[3] = v27;
  v54[0] = v25;
  v54[1] = v26;
  v32 = *(v54 + (BYTE2(v29) & 0xF));
  LODWORD(v25) = *(v54 + (BYTE2(v29) & 0xF));
  DWORD1(v25) = v31;
  DWORD2(v25) = v30;
  HIDWORD(v25) = *(v12 + v24 + 4 * (*(v12 + v28) & 0xF));
  v72 = v25;
  if (v49 == *(&v49 + 1))
  {
    v33 = 0;
  }

  else
  {
    v33 = v49 >> 1;
  }

  v73 = v33;
  v74 = v22 >> 1;
  if (v50 == *(&v50 + 1))
  {
    v34 = 0;
  }

  else
  {
    v34 = v50;
  }

  v75 = v34;
  v76 = v23;
  if (*&v81 == v82)
  {
    v35 = 0;
  }

  else
  {
    v35 = *&v81 >> 1;
  }

  v77 = v35;
  v78 = v80 >> 1;
  v79 = 0;
  if ([(MPSNDArrayAffineQuantizationDescriptor *)v8 hasZeroPoint])
  {
    [*(a5 + 16) objectAtIndexedSubscript:v88];
    makeStrideBytes();
    if (v70 == v71)
    {
      v36 = 0;
    }

    else
    {
      v36 = v70;
    }

    v79 = __PAIR64__(v69, v36);
  }

  v37 = [(MPSNDArrayAffineQuantizationDescriptor *)v8 hasZeroPoint];
  v38 = 2;
  if (!v37)
  {
    v38 = 0;
  }

  v39 = v38 | v51;
  *&v40 = -1;
  *(&v40 + 1) = -1;
  v67 = v40;
  v68 = v40;
  v65 = v40;
  v66 = v40;
  v64 = v40;
  v41 = [*(a5 + 16) count] | 0x10000;
  v42 = *(a2 + *MEMORY[0x277CD7370]);
  *&v68 = v41;
  *&v65 = v39;
  v47 = *(a2 + *MEMORY[0x277CD7360]);
  v48 = *(a2 + *MEMORY[0x277CD7368]);
  v46 = *(a5 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(a3, a5, 4, 0, 0);
  [a3 setComputePipelineState:{PipelineStateForMPSKey, v46, v47, v48, 0, 0}];
  [a3 setBytes:&v72 length:48 atIndex:29];
  [a3 setThreadgroupMemoryLength:1024 atIndex:0];
  v63[0] = (v31 + 31) >> 5;
  v63[1] = (v30 + 31) >> 5;
  v63[2] = v32;
  v61 = xmmword_239B0A860;
  v62 = 8;
  [a3 dispatchThreadgroups:v63 threadsPerThreadgroup:&v61];
  MPSLibrary::ReleaseComputeState();
  v44 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t MPSNDArrayMatMulDeviceBehavior::IsInt8AffineSupportedQuantization(uint64_t a1, uint64_t a2)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  if ([*(a2 + 40) quantizationScheme])
  {
    goto LABEL_27;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)v3 quantizationScheme]!= 1)
  {
    goto LABEL_27;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)v3 quantizationDataType]!= 536870920)
  {
    goto LABEL_27;
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v3 hasMinValue])
  {
    goto LABEL_27;
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v3 hasDoubleQuantScale])
  {
    goto LABEL_27;
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v3 hasDoubleQuantMinVal])
  {
    goto LABEL_27;
  }

  v35 = 0;
  v4 = [*(*(a2 + 56) + 232) graph];
  GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v4, 0, v37, v3, v36, &v35, v5);
  if ((*(a2 + 32) & 7) != 0)
  {
    goto LABEL_27;
  }

  if (*(a2 + 8) > 1uLL)
  {
    goto LABEL_27;
  }

  if ((*(a2 + 24) & 0x1F) != 0)
  {
    goto LABEL_27;
  }

  v6 = *(a2 + 56);
  v7 = [*(v6 + 232) inputTensorAtIndex:0];
  v8 = [*(v6 + 232) inputTensorAtIndex:1];
  v9 = [*(v6 + 232) inputTensorAtIndex:2];
  v10 = *(v6 + 16);
  BaseTensor::GetAccessPattern();
  v12 = v11;
  v13.i32[0] = v13.u8[0];
  v13.i32[1] = v12;
  v14 = vceq_s32(vand_s8(v13, 0xFF000000FFLL), 0x100000000);
  if ((v14.i32[0] & v14.i32[1] & 1) == 0)
  {
    goto LABEL_27;
  }

  v15 = *(v6 + 16);
  BaseTensor::GetAccessPattern();
  v17.i32[0] = v16;
  v17.i32[1] = v18;
  v19 = vceq_s32(vand_s8(v17, 0xFF000000FFLL), 1);
  if ((v19.i32[0] & v19.i32[1] & 1) == 0 || *(v7 + 8) != 268435472 || (*(v8 + 8) | 0x20000000) != 0x20000008 || *(v9 + 2) != 268435472 || -[MPSNDArrayAffineQuantizationDescriptor hasZeroPoint](v3, "hasZeroPoint") && *([*(v6 + 232) inputTensorAtIndex:3] + 8) != 536870920)
  {
    goto LABEL_27;
  }

  v20 = 0;
  if (BaseTensor::GetDimensionSize(v9) == 1)
  {
    v20 = BaseTensor::GetDimensionSize(v9) == 1;
  }

  if (*(a2 + 24) != BaseTensor::GetDimensionSize(v9))
  {
    v21 = v20;
    if (!v20 && v20)
    {
      goto LABEL_23;
    }

LABEL_28:
    v33 = *MEMORY[0x277D85DE8];
    return v21 & 1;
  }

  v21 = v20 | (BaseTensor::GetDimensionSize(v9) == 1);
  if (v20 || (v21 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  v22 = *(v6 + 16);
  BaseTensor::GetAccessPattern();
  v24.i32[0] = v23;
  v24.i32[1] = v25;
  v26 = vceq_s32(vand_s8(v24, 0xFF000000FFLL), 1);
  if ((v26.i32[0] & v26.i32[1] & 1) == 0)
  {
LABEL_27:
    v21 = 0;
    goto LABEL_28;
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v3 hasZeroPoint])
  {
    [*(v6 + 232) inputTensorAtIndex:3];
    v27 = *(v6 + 16);
    BaseTensor::GetAccessPattern();
    v29.i32[0] = v28;
    v29.i32[1] = v30;
    v31 = vceq_s32(vand_s8(v29, 0xFF000000FFLL), 1);
    v21 = v31.i8[0] & v31.i8[4];
  }

  else
  {
    v21 = 1;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

uint64_t MPSNDArrayMatMulA18DeviceBehavior::IsInt2Int8AffineSupportedQuantization(uint64_t a1, uint64_t a2)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 40);
  v3 = *(a2 + 48);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || [*(a2 + 40) quantizationScheme] != 1 || -[MPSNDArrayQuantizationDescriptor quantizationScheme](v3, "quantizationScheme") != 1 || -[MPSNDArrayQuantizationDescriptor quantizationDataType](v2, "quantizationDataType") != 536870920 && -[MPSNDArrayQuantizationDescriptor quantizationDataType](v2, "quantizationDataType") != 536870914)
  {
    goto LABEL_38;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)v3 quantizationDataType]!= 536870920 && [(MPSNDArrayQuantizationDescriptor *)v3 quantizationDataType]!= 536870914)
  {
    goto LABEL_38;
  }

  v6 = [(MPSNDArrayQuantizationDescriptor *)v2 quantizationDataType];
  if (v6 == [(MPSNDArrayQuantizationDescriptor *)v3 quantizationDataType]|| [(MPSNDArrayAffineQuantizationDescriptor *)v2 hasZeroPoint]|| [(MPSNDArrayAffineQuantizationDescriptor *)v2 hasMinValue]|| [(MPSNDArrayAffineQuantizationDescriptor *)v2 hasDoubleQuantScale]|| [(MPSNDArrayAffineQuantizationDescriptor *)v2 hasDoubleQuantMinVal]|| [(MPSNDArrayAffineQuantizationDescriptor *)v3 hasZeroPoint]|| [(MPSNDArrayAffineQuantizationDescriptor *)v3 hasMinValue]|| [(MPSNDArrayAffineQuantizationDescriptor *)v3 hasDoubleQuantScale]|| [(MPSNDArrayAffineQuantizationDescriptor *)v3 hasDoubleQuantMinVal])
  {
    goto LABEL_38;
  }

  GetPlaceHolderIndexInSourceArrayAffineGEMM([*(*(a2 + 56) + 232) graph], v2, v23, v3, v22, 0, 0, 0);
  v7 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:v23[0]];
  v8 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:v22[0]];
  if (v23[1] == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
  }

  v10 = v9;
  if (v22[1] == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = [*(*(a2 + 56) + 16) objectAtIndexedSubscript:?];
  }

  v12 = v10;
  if (!v10)
  {
    v19 = v11;
    v20 = MTLReportFailureTypeEnabled();
    v11 = v19;
    v12 = 0;
    if (v20)
    {
      MTLReportFailure();
      v11 = v19;
      v12 = 0;
    }
  }

  if (!v11)
  {
    v21 = MTLReportFailureTypeEnabled();
    v11 = 0;
    v12 = v10;
    if (v21)
    {
      MTLReportFailure();
      v11 = 0;
      v12 = v10;
    }
  }

  v13 = *MEMORY[0x277CD73C8];
  if ((*(v12 + v13) | 0x80000000) != 0x90000010 || (*(v11 + v13) | 0x80000000) != 0x90000010)
  {
LABEL_38:
    result = 0;
  }

  else
  {
    result = 0;
    v15 = *MEMORY[0x277CD73D8];
    if (*(v7 + v15 + 2) && *(v7 + v15 + 3))
    {
      v16 = v8 + v15;
      if (*(v16 + 3))
      {
        v17 = *(v16 + 2) == 0;
      }

      else
      {
        v17 = 1;
      }

      result = !v17;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MPSNDArrayMatMulA18DeviceBehavior::EncodeQuantizedMatrixMultiplicationInt2Int8Affine(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v170 = *MEMORY[0x277D85DE8];
  v7 = a2[21];
  v8 = a2[22];
  v112 = *(a2 + *MEMORY[0x277CD7370]);
  v9 = a2[19];
  v164 = 0u;
  v165 = 0u;
  *v163 = 0u;
  v162 = 0u;
  v161 = 0u;
  *v160 = 0u;
  if (GetPlaceHolderIndexInSourceArrayAffineGEMM([*(a5 + 232) graph], v7, &v168, v8, &v166, 0, v163, v160) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = v163[0];
  v11 = v160[0];
  v12 = [*(a5 + 232) outputTensorAtIndex:0];
  v13 = *(v10 + 2);
  v15 = *v13;
  v14 = v13[1];
  v107 = a3;
  v97 = v9;
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v16 = *(v11 + 2);
  v18 = *v16;
  v17 = v16[1];
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v19 = *(v12 + 16);
  v21 = *v19;
  v20 = v19[1];
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v22 = [*(a5 + 16) objectAtIndexedSubscript:v168];
  v122 = [*(a5 + 16) objectAtIndexedSubscript:v169];
  v127 = [*(a5 + 16) objectAtIndexedSubscript:v166];
  v116 = a1;
  v121 = [*(a5 + 16) objectAtIndexedSubscript:v167];
  v23 = *(a5 + 208);
  v24 = MEMORY[0x277CD7410];
  v25 = *MEMORY[0x277CD7410];
  v26 = *&v23[v25];
  v27 = *&v23[v25 + 16];
  v28 = MEMORY[0x277CD73D8];
  v29 = *&v23[v25 + 48];
  v30 = *MEMORY[0x277CD73D8];
  v125 = v23;
  v31 = *&v23[v30];
  v136 = *&v23[v25 + 32];
  v137 = v29;
  v135[0] = v26;
  v135[1] = v27;
  v32 = *(v135 + (BYTE1(v31) & 0xF));
  v134[2] = v136;
  v134[3] = v29;
  v134[0] = v26;
  v134[1] = v27;
  v126 = *(v134 + (v31 & 0xF));
  v105 = *(v22 + v25 + 4 * (*(v22 + v30) & 0xF));
  v133[2] = v136;
  v133[3] = v29;
  v133[0] = v26;
  v133[1] = v27;
  v101 = *(v133 + (BYTE2(v31) & 0xF));
  v132[2] = v136;
  v132[3] = v29;
  v132[0] = v26;
  v132[1] = v27;
  v106 = *(v132 + (BYTE3(v31) & 0xF));
  v33 = MEMORY[0x277CD73C8];
  v34 = *MEMORY[0x277CD73C8];
  v35 = *(v22 + v34);
  if ((v35 | 0x20000000) == 0x20000008)
  {
    v36 = *&v127[v34];
    v123 = v127;
    v118 = v22;
    if ((v36 | 0x20000000) == 0x20000002)
    {
      goto LABEL_17;
    }

    if ((v36 | 0x20000000) != 0x20000008)
    {
      goto LABEL_78;
    }
  }

  else if ((*&v127[v34] | 0x20000000) != 0x20000008)
  {
LABEL_78:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v89 = -19;
    goto LABEL_77;
  }

  v123 = v22;
  v118 = v127;
  if ((v35 | 0x20000000) != 0x20000002)
  {
    goto LABEL_78;
  }

LABEL_17:
  if ((*(a2 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if ((*(v122 + v34) & 0x7FFFFFFF) != 0x10000010 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v122 + *v24 + 4 * (*(v122 + *v28) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v37 = *(v122 + *v24 + 4 * (*(v122 + *v28 + 1) & 0xF));
    if (v37 != 1 && v37 != v32 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((*(v121 + *MEMORY[0x277CD73C8]) & 0x7FFFFFFF) != 0x10000010 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v121 + *v24 + 4 * (*(v121 + *v28 + 1) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v38 = *(v121 + *v24 + 4 * (*(v121 + *v28) & 0xF));
    if (v38 != 1 && v38 != v126 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v122 + *MEMORY[0x277CD73C8]) != *(v121 + *MEMORY[0x277CD73C8]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v22 + *v24 + 4 * (*(v22 + *v28) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v22 + *v24 + 4 * (*(v22 + *v28 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *&v127[4 * (*&v127[*v28] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *&v127[4 * (v127[*v28 + 1] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *&v125[4 * (*&v125[*v28] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *&v125[4 * (v125[*v28 + 1] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v22 + *v24 + 4 * (*(v22 + *v28) & 0xF)) != *&v127[4 * (v127[*v28 + 1] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v22 + *v24 + 4 * (*(v22 + *v28 + 1) & 0xF)) != *&v125[4 * (v125[*v28 + 1] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v127[4 * (*&v127[*v28] & 0xF) + *v24] != *&v125[4 * (*&v125[*v28] & 0xF) + *v24] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v39 = v22 + *v28;
    if ((!*(v39 + 2) || !*(v39 + 3)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v40 = &v127[*v28];
    if ((!v40[2] || !v40[3]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v22 + *MEMORY[0x277CD7428]) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*&v127[*MEMORY[0x277CD7428]] != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v41 = *v28;
    v33 = MEMORY[0x277CD73C8];
    if ((*&v118[v41] || !*&v123[v41]) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((v123[*v24] & 0xF) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v106 != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v42 = *v28;
  v109 = *&v118[v42];
  v100 = *&v123[v42];
  v43 = *v24;
  v44 = *(v122 + v43);
  v45 = *(v122 + v43 + 16);
  v46 = *(v122 + v42);
  v47 = *(v122 + v43 + 32);
  v48 = *(v122 + v43 + 48);
  v131[2] = v47;
  v131[3] = v48;
  v131[0] = v44;
  v131[1] = v45;
  if (*(v131 + (v46 & 0xF)) == 1)
  {
    v130[0] = v44;
    v130[1] = v45;
    v130[2] = v47;
    v130[3] = v48;
    v49 = (*(v130 + (BYTE1(v46) & 0xF)) == 1) << 33;
  }

  v50 = (v121 + v43);
  v51 = *v50;
  v52 = v50[1];
  v53 = *(v121 + v42);
  v54 = v50[2];
  v55 = v50[3];
  v129[2] = v54;
  v129[3] = v55;
  v129[0] = v51;
  v129[1] = v52;
  if (*(v129 + (v53 & 0xF)) == 1)
  {
    v128[0] = v51;
    v128[1] = v52;
    v128[2] = v54;
    v128[3] = v55;
    v99 = (*(v128 + (BYTE1(v53) & 0xF)) == 1) << 34;
  }

  v56 = *(v116 + 8);
  v124 = 2;
  if ((-1431655765 * v126) >= 0x55555556)
  {
    v57 = 2;
  }

  else
  {
    v57 = 3;
  }

  if (v32 > 8)
  {
    v58 = 1;
    if (v56)
    {
      goto LABEL_55;
    }

LABEL_57:
    v104 = 0;
    v114 = 2;
    v111 = v124;
    goto LABEL_58;
  }

  v124 = 1;
  v57 = 4;
  v58 = 2;
  if (!v56)
  {
    goto LABEL_57;
  }

LABEL_55:
  v57 = v56[1];
  v111 = *v56;
  v124 = v56[2];
  v58 = v56[4];
  v114 = v56[3];
  v59 = v56[5];
  v104 = v56[6] != 0;
  v98 = (v56[7] != 0) << 25;
LABEL_58:
  v117 = v58;
  v119 = v22;
  v102 = *&v125[*v33];
  if (v102 == 536870920)
  {
    v143 = v126;
    v144 = v32;
    *&v145 = v101 * v106;
    v60 = [MEMORY[0x277CD7268] descriptorWithDataType:268435472 dimensionCount:3 dimensionSizes:&v143];
    v108 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a4 descriptor:v60];
    *&v154 = 1;
    *(&v154 + 1) = v32;
    v155 = v101 * v106;
    v61 = [MEMORY[0x277CD7268] descriptorWithDataType:268435488 dimensionCount:3 dimensionSizes:&v154];
    [v61 setPreferPackedRows:1];
    v103 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a4 descriptor:v61];
    v93 = *(a2 + *MEMORY[0x277CD7360]);
    v95 = *(a2 + *MEMORY[0x277CD7368]);
    MPSLibrary::CreateUberShaderKey();
    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
    v142 = v32;
    v63 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    v64 = v32;
    if (v63 >= 0x100)
    {
      v65 = 256;
    }

    else
    {
      v65 = v63;
    }

    v66 = v142;
    [v107 setComputePipelineState:PipelineStateForMPSKey];
    [v107 setBuffer:objc_msgSend(v103 offset:"buffer") atIndex:{0, 29}];
    [v107 setBytes:&v142 length:4 atIndex:28];
    __p = ((v65 + v66 - 1) / v65);
    v141 = vdupq_n_s64(1uLL);
    v138 = v65;
    v139 = v141;
    [v107 dispatchThreadgroups:&__p threadsPerThreadgroup:&v138];
  }

  else
  {
    v64 = v32;
    v103 = 0;
    v108 = v125;
  }

  v110 = v64;
  v67 = [v119 dataType];
  v68 = [v127 dataType];
  v69 = [v125 dataType];
  *&v70 = -1;
  *(&v70 + 1) = -1;
  v159 = v70;
  v158 = v70;
  v157 = v70;
  v155 = -1;
  v154 = v70;
  v156 = (v68 << 10) | (32 * v67) | v69;
  *&v159 = [*(a5 + 16) count] | ((*(a5 + 112) != 0) << 8) | 0x10000;
  v94 = *(a2 + *MEMORY[0x277CD7360]);
  v96 = *(a2 + *MEMORY[0x277CD7368]);
  v92 = *(a5 + 232);
  MPSLibrary::CreateUberShaderKey();
  v71 = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  v143 = __PAIR64__(v126, v110);
  LODWORD(v144) = v105;
  v72 = *MEMORY[0x277CD7428];
  v73 = &v119[v72];
  v74 = vld2q_f32(v73);
  v145 = v74;
  v75 = (v122 + v72);
  v76 = vld2q_f32(v75);
  v146 = v76;
  v77 = &v127[v72];
  v78 = vld2q_f32(v77);
  v147 = v78;
  v79 = (v121 + v72);
  v80 = vld2q_f32(v79);
  v148 = v80;
  v149 = v169;
  v150 = v167;
  v151 = v101;
  v152 = v106;
  v153 = v101 * v106;
  v81 = *(a5 + 8);
  v82 = *(v81 + 80 * v168 + 64);
  v83 = *(v81 + 80 * v166 + 64);
  v84 = *(a5 + 192);
  [v107 setComputePipelineState:{v71, v92, v94, v96, 0, 0}];
  MPSSetNDArraysOnComputeEncoder(v107, a5, 4, 0, 0);
  [v107 setBuffer:objc_msgSend(v119 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v119, 0, 4, 0, 0) + v82, 29}];
  [v107 setBuffer:objc_msgSend(v127 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v127, 0, 4, 0, 0) + v83, 28}];
  [v107 setBuffer:objc_msgSend(v108 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v108, 0, 4, 0, 0) + v84, 27}];
  [v107 setBytes:&v143 length:320 atIndex:26];
  if (v102 == 536870920)
  {
    [v107 setBuffer:objc_msgSend(v103 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v103, 0, 4, 0, 0) + v84, 25}];
  }

  if (v117 < 2)
  {
    v86 = 0;
    v85 = v57;
  }

  else
  {
    v85 = v57;
    v86 = v57 * ((v117 << 10) - 1024) * v111;
  }

  v87 = (v114 * v85) << 10;
  if (v86 > v87)
  {
    v87 = v86;
  }

  if (v104)
  {
    v88 = v87;
  }

  else
  {
    v88 = v86;
  }

  [v107 setThreadgroupMemoryLength:v88 atIndex:0];
  __p = ((v110 + 16 * v111 * v124 - 1) / (16 * v111 * v124));
  v141.i64[0] = (v126 + 16 * v57 * v114 - 1) / (16 * v57 * v114);
  v141.i64[1] = v101 * v106;
  v138 = 32 * v117 * v114 * v124;
  v139 = vdupq_n_s64(1uLL);
  [v107 dispatchThreadgroups:&__p threadsPerThreadgroup:&v138];
  MPSLibrary::ReleaseComputeState();
  if (v102 == 536870920)
  {
    operator new();
  }

  v89 = 0;
LABEL_77:
  v90 = *MEMORY[0x277D85DE8];
  return v89;
}

void sub_239A6515C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, void *__p)
{
  operator delete(__p);
  if (a24)
  {
    operator delete(a24);
    if (a25)
    {
LABEL_6:
      operator delete(a25);
      _Unwind_Resume(a1);
    }
  }

  else if (a25)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayMatrixMultiplyI2I8A18FunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:a2 + 8 type:85 atIndex:115];
  AddFunctionConstantList(v5, a3);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t EncodeQuantizedMatrixMultiplication(void *a1, void *a2, void *a3, uint64_t a4)
{
  v286 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v189 = a1[34];
  v6 = a1[21];
  v7 = a1[22];
  if (*(a1 + 21) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = [*(a4 + 232) graph];
  v9 = **(v8 + 56);
  if (*(*(v8 + 56) + 8) == v9)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v11 = *(*v9 + 8);
  v10 = *v11;
  if (*(v11 + 8) == *v11)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v12 = *v10;
  v199 = a4;
  v13 = *(a4 + 208);
  v14 = (v13 + *MEMORY[0x277CD7410]);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = *(v13 + *MEMORY[0x277CD73D8]);
  v216 = v14[3];
  v215[2] = v17;
  v215[0] = v15;
  v215[1] = v16;
  v191 = *(v215 + (v18 & 0xF));
  v214[2] = v17;
  v214[3] = v216;
  v214[0] = v15;
  v214[1] = v16;
  v193 = *(v214 + (BYTE1(v18) & 0xF));
  v213[2] = v17;
  v213[3] = v216;
  v213[0] = v15;
  v213[1] = v16;
  v19 = *(v213 + (BYTE2(v18) & 0xF));
  DimensionSize = BaseTensor::GetDimensionSize(v12);
  if ((*(a1 + *MEMORY[0x277CD7378]) & 0x10) == 0)
  {
    goto LABEL_21;
  }

  if (v6)
  {
    if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]== 4)
    {
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]!= 2)
    {
      [(MPSNDArrayQuantizationDescriptor *)v6 hasZeroPoint];
      [(MPSNDArrayQuantizationDescriptor *)v6 hasMinValue];
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ([(MPSNDArrayQuantizationDescriptor *)v7 quantizationScheme]== 4)
  {
    v21 = a1[23];
    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)v7 quantizationScheme]== 2)
  {
LABEL_18:
    v21 = a1[23];
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_15:
    if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  [(MPSNDArrayQuantizationDescriptor *)v7 hasZeroPoint];
  [(MPSNDArrayQuantizationDescriptor *)v7 hasMinValue];
  v21 = a1[23];
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_19:
  [v21 normFusionType];
  if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
  {
LABEL_20:
    operator new();
  }

LABEL_21:
  v22 = a1[21];
  v23 = a1[22];
  if ([v22 quantizationScheme] == 4)
  {
    [v23 quantizationScheme];
  }

  if ([v22 quantizationScheme] == 4 && objc_msgSend(v23, "quantizationScheme") == 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((!v22 || [v22 quantizationScheme] != 4) && (!v23 || objc_msgSend(v23, "quantizationScheme") != 4))
  {
    v217.__r_.__value_.__r.__words[0] = *(a1 + *MEMORY[0x277CD7370]);
    v217.__r_.__value_.__l.__size_ = v19;
    v217.__r_.__value_.__r.__words[2] = v193;
    *&v218 = v191;
    *(&v218 + 1) = DimensionSize;
    v219 = v6;
    v220 = v7;
    v221 = v199;
    v222 = a1;
    v25 = *(v217.__r_.__value_.__r.__words[0] + 32);
    memset(v226, 0, sizeof(v226));
    *&v26 = 0x100000001;
    *(&v26 + 1) = 0x100000001;
    v230 = v26;
    v229 = v26;
    v228 = v26;
    v227 = v26;
    v231 = 0;
    v235 = v26;
    v234 = v26;
    v233 = v26;
    v232 = v26;
    v236 = 0;
    v240 = v26;
    v239 = v26;
    v238 = v26;
    v237 = v26;
    v241 = 0;
    v245 = v26;
    v244 = v26;
    v243 = v26;
    v242 = v26;
    v246 = 0;
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v251 = 0u;
    v252 = 0u;
    v253 = 0;
    v255 = 0;
    v254 = 0;
    v256 = 0;
    if (*(*(a1 + *MEMORY[0x277CD7350]) + 1472) >= 22 && v6 && v7)
    {
      v28 = [(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType]!= 536870920 || [(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]!= 1;
      v187 = [(MPSNDArrayQuantizationDescriptor *)v7 quantizationDataType]== 536870916 && [(MPSNDArrayQuantizationDescriptor *)v7 quantizationScheme]== 1;
      GetPlaceHolderIndexInSourceArrayQuantizedGEMM2([*(v199 + 232) graph], v6, v257, v7, v276);
      v36 = *v276;
      v37 = [*(v199 + 16) objectAtIndexedSubscript:*v257];
      v38 = [*(v199 + 16) objectAtIndexedSubscript:v36];
      if (v37)
      {
        v39 = v38;
        if (v38)
        {
          v40 = *&v276[8];
          if (*&v257[8] == -1)
          {
            v41 = 0;
            if (*&v276[8] == -1)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v41 = [*(v199 + 16) objectAtIndexedSubscript:?];
            if (v40 == -1)
            {
              goto LABEL_33;
            }
          }

          v42 = [*(v199 + 16) objectAtIndexedSubscript:v40];
          if (v41)
          {
            if (v42)
            {
              v43 = *MEMORY[0x277CD7410];
              v44 = *(v41 + v43);
              v45 = *(v41 + v43 + 16);
              v46 = *MEMORY[0x277CD73D8];
              v47 = *(v41 + v46);
              v48 = *(v41 + v43 + 32);
              v49 = *(v41 + v43 + 48);
              v212[2] = v48;
              v212[3] = v49;
              v212[0] = v44;
              v212[1] = v45;
              if (*(v212 + (v47 & 0xF)) == 1)
              {
                v211[0] = v44;
                v211[1] = v45;
                v211[2] = v48;
                v211[3] = v49;
                if (*(v211 + (BYTE1(v47) & 0xF)) == 1 && !v28)
                {
                  v51 = *(v39 + v43);
                  v52 = *(v39 + v43 + 16);
                  v53 = *(v39 + v43 + 48);
                  v54 = *(v39 + v46);
                  v209 = *(v39 + v43 + 32);
                  v210 = v53;
                  v208[0] = v51;
                  v208[1] = v52;
                  v55 = *(v208 + (BYTE1(v54) & 0xF));
                  v56 = (v42 + v43);
                  v57 = *v56;
                  v58 = v56[1];
                  v59 = *(v42 + v46);
                  v60 = v56[3];
                  v205 = v56[2];
                  v206 = v60;
                  v204[0] = v57;
                  v204[1] = v58;
                  v61 = v55 % *(v204 + (BYTE1(v59) & 0xF)) == 0;
                  v203[2] = v205;
                  v203[3] = v60;
                  v203[0] = v57;
                  v203[1] = v58;
                  v62 = *(v203 + (v59 & 0xF));
                  v207[2] = v209;
                  v207[3] = v53;
                  v207[0] = v51;
                  v207[1] = v52;
                  v63 = v187;
                  if (!v61)
                  {
                    v63 = 0;
                  }

                  if (v63 && v62 == *(v207 + (v54 & 0xF)))
                  {
                    MPSKernel_LogInfo(a1, 4uLL, "Using EncodeMatrixMultiplyQ4IntoQ8 encode path\n");
                    v188 = *(a1 + *MEMORY[0x277CD7370]);
                    v64 = a1[21];
                    v65 = a1[22];
                    v66 = [*(v199 + 232) graph];
                    if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v66, v64, &__dst, v65, v283, 0, v67) && MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure();
                    }

                    v68 = __dst;
                    v69 = v283[0];
                    v192 = [*(v199 + 16) objectAtIndexedSubscript:__dst];
                    v195 = [*(v199 + 16) objectAtIndexedSubscript:v69];
                    v70 = [*(v199 + 16) objectAtIndexedSubscript:3];
                    v71 = *(v199 + 208);
                    v176 = *(&v70->super.isa + *MEMORY[0x277CD73C8]);
                    v177 = *(&v70->super.isa + *MEMORY[0x277CD7400]);
                    v72 = *MEMORY[0x277CD7410];
                    v73 = v71 + v72;
                    v74 = *(&v71->super.isa + v72);
                    v75 = *(&v71[2].super.isa + v72);
                    v76 = MEMORY[0x277CD73D8];
                    v77 = *MEMORY[0x277CD73D8];
                    v190 = v71;
                    v78 = *(&v71->super.isa + v77);
                    v79 = v192;
                    v186 = *(&v192->super.isa + 4 * (*(&v192->super.isa + v77) & 0xF) + v72);
                    v182 = *(v73 + 2);
                    v183 = v78;
                    v180 = *(v73 + 3);
                    v202[2] = v182;
                    v202[3] = v180;
                    v184 = v75;
                    v185 = v74;
                    v202[0] = v74;
                    v202[1] = v75;
                    v175 = *(v202 + (BYTE2(v78) & 0xF));
                    if (v175 != 1)
                    {
                      v161 = MTLReportFailureTypeEnabled();
                      v76 = MEMORY[0x277CD73D8];
                      v79 = v192;
                      if (v161)
                      {
                        MTLReportFailure();
                        v76 = MEMORY[0x277CD73D8];
                        v79 = v192;
                      }
                    }

                    v80 = *v76;
                    if (*(&v79->super.isa + v80) == 1 || *(&v195->super.isa + v80) != 1)
                    {
                      v162 = MTLReportFailureTypeEnabled();
                      v79 = v192;
                      if (v162)
                      {
                        MTLReportFailure();
                        v79 = v192;
                      }
                    }

                    getStrides(v79, v282, 3);
                    getStrides(v195, v281, 3);
                    getStrides(v70, v280, 3);
                    getStrides(v190, v279, 3);
                    Offset = getOffset(v192, v282);
                    v82 = *(v199 + 8);
                    v178 = *(v82 + 80 * v68 + 64);
                    v179 = Offset;
                    v83 = getOffset(v195, v281);
                    v173 = *(v82 + 80 * v69 + 64);
                    v174 = v83;
                    v84 = getOffset(v190, v279);
                    v171 = *(v199 + 192);
                    v172 = v84;
                    v170 = [MPSNDArrayQuantizedMatrixMultiplication getLeftScaleIndexWithLeftAffineQuantizationDescriptor:v64 rightQuantizationDescriptor:v65];
                    v169 = [MPSNDArrayQuantizedMatrixMultiplication getRightScaleIndexWithLeftAffineQuantizationDescriptor:v64 rightQuantizationDescriptor:v65];
                    v85 = v285;
                    v86 = v283[1];
                    if (v285 != -1)
                    {
                      [*(v199 + 16) objectAtIndexedSubscript:v285];
                    }

                    if (v86 == -1)
                    {
                      v87 = 0;
                    }

                    else
                    {
                      v87 = [*(v199 + 16) objectAtIndexedSubscript:v86];
                    }

                    v128 = MEMORY[0x277CD73D8];
                    if (v85 == -1)
                    {
                      v163 = MTLReportFailureTypeEnabled();
                      v128 = MEMORY[0x277CD73D8];
                      if (v163)
                      {
                        MTLReportFailure();
                        v128 = MEMORY[0x277CD73D8];
                      }
                    }

                    if (v86 == -1)
                    {
                      v164 = MTLReportFailureTypeEnabled();
                      v128 = MEMORY[0x277CD73D8];
                      if (v164)
                      {
                        MTLReportFailure();
                        v128 = MEMORY[0x277CD73D8];
                      }
                    }

                    v129 = v186 / *(v87 + *MEMORY[0x277CD7410] + 4 * (*(v87 + *v128 + 1) & 0xF));
                    if (EncodeMatrixMultiplyQ4IntoQ8(void const*,objc_object  {objcproto24MTLComputeCommandEncoder}*,objc_object  {objcproto16MTLCommandBuffer}*,NDArrayMultiaryCallInfo const*)::predicate != -1)
                    {
                      dispatch_once(&EncodeMatrixMultiplyQ4IntoQ8(void const*,objc_object  {objcproto24MTLComputeCommandEncoder}*,objc_object  {objcproto16MTLCommandBuffer}*,NDArrayMultiaryCallInfo const*)::predicate, &__block_literal_global_422);
                    }

                    v130 = _MergedGlobals_32;
                    v131 = word_27DF85EDA;
                    v132 = 1 << word_27DF85EDC;
                    if ((1 << word_27DF85EDC) < v129)
                    {
                      v165 = 1 << word_27DF85EDC;
                      if (MTLReportFailureTypeEnabled())
                      {
                        MTLReportFailure();
                        LODWORD(v132) = v165;
                      }
                    }

                    v133 = 1 << v131;
                    v201[0] = v185;
                    v201[1] = v184;
                    v201[2] = v182;
                    v201[3] = v180;
                    v134 = *(v201 + (HIBYTE(v183) & 0xF));
                    v200[0] = v185;
                    v200[1] = v184;
                    v200[2] = v182;
                    v200[3] = v180;
                    v135 = *(v200 + (v183 & 0xF));
                    MPSKernel_LogInfo(a1, 2uLL, "[Q4Q8] TG Tile size clamped between 32 and 256\n");
                    MPSKernel_LogInfo(a1, 2uLL, "[Q4Q8] Warning: MPS_MATMUL_KSPLITS, MPS_MATMUL_SIMDM, MPS_MATMUL_SIMDN not currently supported.\n");
                    MPSKernel_LogInfo(a1, 2uLL, "[Q4Q8] MatMul Paramters: TileK: %d, TileM: %d, TileN: %d simdM: %d simdN: %d kSplits: %d\n", v132, 1 << v130, v133, 1 << word_27DF85EDE, 1 << word_27DF85EE0, 1);
                    v181 = v133;
                    *&v276[8] = -1;
                    *v276 = -1;
                    memset(&v276[16], 0, 48);
                    v277 = [*(v199 + 16) count] | ((*(v199 + 112) != 0) << 8) | 0x10000;
                    v278 = 0;
                    v167 = *(a1 + *MEMORY[0x277CD7360]);
                    v168 = *(a1 + *MEMORY[0x277CD7368]);
                    v166 = *(v199 + 232);
                    MPSLibrary::CreateUberShaderKey();
                    PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                    MPSSetNDArraysOnComputeEncoder(a2, v199, 3, 0, 0);
                    [a2 setComputePipelineState:{PipelineStateForMPSKey, v166, v167, v168, 0, 0}];
                    [a2 setBuffer:-[MPSNDArray buffer](v192 offset:"buffer") atIndex:{v178 + v179, 29}];
                    [a2 setBuffer:-[MPSNDArray buffer](v195 offset:"buffer") atIndex:{v173 + v174, 28}];
                    [a2 setBuffer:-[MPSNDArray buffer](v190 offset:"buffer") atIndex:{v171 + v172, 27}];
                    *v257 = __PAIR64__(v135, v134);
                    *&v257[12] = 0u;
                    v258 = 0u;
                    v259 = 0u;
                    v260 = 0u;
                    v261 = 0u;
                    v262 = 0;
                    *&v257[8] = v186;
                    v263 = v177 / (v176 >> 3);
                    v264 = 0u;
                    v265 = 0u;
                    v266 = 0u;
                    v267 = 0u;
                    v268 = 0u;
                    v269 = 0;
                    v270 = v170;
                    v272 = 0;
                    v271 = 0;
                    v273 = v169;
                    v275 = 0;
                    v274 = 0;
                    [a2 setBytes:v257 length:228 atIndex:26];
                    v225[0] = ((v135 + v181 - 1) / v181);
                    v225[1] = ((v134 + (1 << v130) - 1) / (1 << v130));
                    v225[2] = v175;
                    v223 = xmmword_239B0A870;
                    v224 = 1;
                    [a2 dispatchThreadgroups:v225 threadsPerThreadgroup:&v223];
                    MPSLibrary::ReleaseMPSKey();
                    goto LABEL_30;
                  }
                }
              }
            }
          }
        }
      }
    }

    else if (!v6)
    {
      v27 = 1;
      goto LABEL_43;
    }

LABEL_33:
    if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]== 1)
    {
      if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType]== 536870916)
      {
        v27 = 0;
        goto LABEL_47;
      }

      v27 = 0;
      if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType]== 4)
      {
LABEL_47:
        if (IsOptimizedInt4KernelSupported(a1, v199))
        {
          MPSKernel_LogInfo(a1, 4uLL, "Using EncodeArrayMultiplyI4 encode path\n");
          v29 = (*(*v25 + 24))(v25, a1, a2, a3, v199);
          goto LABEL_72;
        }

LABEL_49:
        if (v193 >= 0x11 && v191 > 0x10)
        {
          goto LABEL_51;
        }

        if (v27)
        {
          if (!v7)
          {
            goto LABEL_51;
          }
        }

        else
        {
          if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType]!= 536870920 && [(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType]!= 536870916 || [(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]!= 1)
          {
            goto LABEL_51;
          }

          if (!v7)
          {
            v30 = [(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType];
            goto LABEL_115;
          }
        }

        if ([(MPSNDArrayQuantizationDescriptor *)v7 quantizationDataType]!= 536870920 && [(MPSNDArrayQuantizationDescriptor *)v7 quantizationDataType]!= 536870916 || [(MPSNDArrayQuantizationDescriptor *)v7 quantizationScheme]!= 1)
        {
          goto LABEL_51;
        }

        if ((v27 & 1) == 0)
        {
          v96 = [(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme];
          if (v96 != [(MPSNDArrayQuantizationDescriptor *)v7 quantizationScheme])
          {
            goto LABEL_51;
          }

          if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationDataType]== 536870920)
          {
            goto LABEL_116;
          }
        }

        v30 = [(MPSNDArrayQuantizationDescriptor *)v7 quantizationDataType];
LABEL_115:
        if (v30 != 536870920)
        {
          goto LABEL_51;
        }

LABEL_116:
        if (isI8GEMVSupported(&v217))
        {
          MPSKernel_LogInfo(a1, 4uLL, "Using EncodeMatrixVectorMultiplyInt8 encode path\n");
          EncodeMatrixVectorMultiplyInt8(a1, a2, a3, v199, v97, v98, v99);
          goto LABEL_30;
        }

LABEL_51:
        if ((*(*v25 + 32))(v25, &v217))
        {
          MPSKernel_LogInfo(a1, 4uLL, "Using EncodeQuantizedMatrixMultiplicationInt8Affine encode path\n");
          v29 = (*(*v25 + 48))(v25, a1, a2, a3, v199);
          goto LABEL_72;
        }

        if ((*(*v25 + 40))(v25, &v217))
        {
          MPSKernel_LogInfo(a1, 4uLL, "Using EncodeQuantizedMatrixMultiplicationInt2Int8Affine encode path\n");
          v29 = (*(*v25 + 56))(v25, a1, a2, a3, v199);
          goto LABEL_72;
        }

        if (v193 < 0x11)
        {
          goto LABEL_70;
        }

        if (v191 < 0x11)
        {
          goto LABEL_70;
        }

        size = v217.__r_.__value_.__l.__size_;
        v251 = *&v217.__r_.__value_.__r.__words[1];
        v252 = v218;
        v31 = [*(v221 + 232) graph];
        if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v31, v219, v257, v220, v276, 0, v32))
        {
          goto LABEL_70;
        }

        v88 = *v257;
        if ((*v257 & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        v89 = *v276;
        if ((*v276 & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        v90 = *&v276[8];
        if ((*&v276[8] & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        v91 = *&v276[24];
        v92 = [*(v221 + 16) objectAtIndexedSubscript:*v257];
        v93 = [*(v221 + 16) objectAtIndexedSubscript:v89];
        v94 = [*(v221 + 16) objectAtIndexedSubscript:v90];
        if (v91 < 0)
        {
          v95 = 0;
        }

        else
        {
          v95 = [*(v221 + 16) objectAtIndexedSubscript:v91];
        }

        v100 = *(v221 + 208);
        v226[0] = v92;
        v226[1] = v93;
        v226[2] = v94;
        v226[3] = v95;
        v101 = *(v221 + 8);
        v102 = (v101 + 80 * v88);
        v103 = v102[1];
        v104 = v102[2];
        v105 = v102[3];
        v231 = *(v102 + 8);
        v229 = v104;
        v230 = v105;
        v228 = v103;
        v227 = *v102;
        v106 = (v101 + 80 * v89);
        v108 = v106[2];
        v107 = v106[3];
        v109 = v106[1];
        v236 = *(v106 + 8);
        v234 = v108;
        v235 = v107;
        v233 = v109;
        v232 = *v106;
        v110 = (v101 + 80 * v90);
        v112 = v110[2];
        v111 = v110[3];
        v113 = v110[1];
        v241 = *(v110 + 8);
        v239 = v112;
        v240 = v111;
        v238 = v113;
        v237 = *v110;
        if ((v91 & 0x8000000000000000) == 0)
        {
          v114 = (v101 + 80 * v91);
          v242 = *v114;
          v115 = v114[1];
          v116 = v114[2];
          v117 = v114[3];
          v246 = *(v114 + 8);
          v244 = v116;
          v245 = v117;
          v243 = v115;
        }

        v118 = *MEMORY[0x277CD73F0];
        v119 = *(v94 + v118);
        if (v119 <= 1 && (!v119 || *(v94 + *MEMORY[0x277CD7410]) != 1))
        {
          goto LABEL_70;
        }

        if (v95)
        {
          v120 = *(v95 + v118);
          if (v120 >= 2)
          {
            v121 = *MEMORY[0x277CD7410];
          }

          else
          {
            if (!v120)
            {
              goto LABEL_70;
            }

            v121 = *MEMORY[0x277CD7410];
            if (*(v95 + v121) != 1)
            {
              goto LABEL_70;
            }
          }

          v122 = *(v94 + v121);
          v124 = *(v95 + v121);
          if (v122 != v124)
          {
            goto LABEL_70;
          }

          v123 = *(v94 + v121 + 4);
          if (v119 < 2)
          {
            v123 = 1;
          }

          v125 = v120 <= 1 ? 1 : DWORD1(v124);
          if (v123 != v125)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v121 = *MEMORY[0x277CD7410];
          v122 = *(v94 + v121);
          if (v119 < 2)
          {
            v123 = 1;
          }

          else
          {
            v123 = *(v94 + v121 + 4);
          }
        }

        v126 = *(v93 + v121);
        v127 = *(v93 + v121 + 4);
        if ((v122 != 1 || v123 != 1) && (!v122 || v126 % v122 || v123 != v127))
        {
          goto LABEL_70;
        }

        if (v122 == 1 && v123 == 1)
        {
          v254 = 0;
        }

        else if (v122 == 1 && v123 == v127)
        {
          v254 = 1;
        }

        else
        {
          v137 = v126 / v122;
          if (v137 > 63)
          {
            if (v137 != 64 && v137 != 128)
            {
              goto LABEL_70;
            }
          }

          else if (v137 >= 2 && v137 != 32)
          {
            goto LABEL_70;
          }

          v254 = v137;
        }

        v138 = *MEMORY[0x277CD73C8];
        v139 = *(v92 + v138);
        if (v139 != -1879048176 && v139 != 268435488 && v139 != 268435472 || *(v94 + v138) != v139)
        {
          goto LABEL_70;
        }

        if (v95)
        {
          if (*(v95 + v138) != v139 || *(v100 + v138) != v139)
          {
            goto LABEL_70;
          }

          v140 = *(v93 + v138);
          switch(v140)
          {
            case 2:
              v141 = 1;
              v140 = 2;
              break;
            case 8:
              v141 = 0;
              break;
            case 4:
              v141 = 1;
              v140 = 4;
              break;
            default:
LABEL_70:
              v33 = isDescSupportedByLUTGEMV(v219);
              if ((v33 & isDescSupportedByLUTGEMV(v220)) != 1)
              {
                MPSKernel_LogInfo(a1, 4uLL, "Using EncodeQuantizedMatrixMultiplicationFallback encode path\n");
                EncodeQuantizedMatrixMultiplicationFallback(a1, a2, a3, v199);
                goto LABEL_30;
              }

              MPSKernel_LogInfo(a1, 4uLL, "Using _lutGEMVKernel encode path\n");
              v29 = (v189[17].super.isa)(v189, a2, a3, v199);
LABEL_72:
              v24 = v29;
              goto LABEL_73;
          }
        }

        else
        {
          if (*(v100 + v138) != v139 || *(v93 + v138) != 536870920)
          {
            goto LABEL_70;
          }

          v141 = 0;
          v140 = 8;
        }

        v253 = *(v92 + v138);
        v255 = v140;
        v142 = *MEMORY[0x277CD73D8];
        v143 = *(v93 + v142);
        v144 = v143.u8[0] == 1;
        v145 = *(v92 + v142);
        v146.i32[0] = v145;
        v146.i32[1] = BYTE1(v145);
        v147 = vmvn_s8(vceq_s32(vand_s8(v146, 0xFF000000FFLL), 0x100000000));
        if ((v147.i8[0] & 1) == 0 && (v147.i8[4] & 1) == 0 && v143.u8[0] <= 1u && v143.u8[1] <= 1u)
        {
          if (v119 < 2 || (v148 = vceqq_s8(*(v94 + v142), v143).u16[0], (v148 & HIBYTE(v148) & 1) != 0))
          {
            if (!v95 || *(v95 + v118) < 2uLL || (v149 = vceqq_s8(*(v95 + v142), v143).u16[0], (v149 & HIBYTE(v149) & 1) != 0))
            {
              v150 = *(v92 + v118) >= 3uLL && size == *(v92 + v121 + 8);
              v151 = *(v93 + v118) >= 3uLL && size == *(v93 + v121 + 8);
              v152 = v119 >= 3 && size == *(v94 + v121 + 8);
              v153 = v95 && *(v95 + v118) >= 3uLL && size == *(v95 + v121 + 8);
              v154 = *MEMORY[0x277CD7408];
              *&v247 = *(v92 + v154);
              *(&v247 + 1) = *(v93 + *MEMORY[0x277CD7400]);
              *&v248 = *(v94 + v154);
              v155 = v95 ? *(v95 + v154) : 0;
              *(&v248 + 1) = v155;
              v156 = v150 ? *(v92 + *MEMORY[0x277CD7428] + 16) : 0;
              *&v249 = v156;
              v157 = v151 ? *(v93 + *MEMORY[0x277CD7420] + 16) : 0;
              *(&v249 + 1) = v157;
              v158 = v152 ? *(v94 + *MEMORY[0x277CD7428] + 16) : 0;
              *&v250 = v158;
              v159 = v153 ? *(v95 + *MEMORY[0x277CD7428] + 16) : 0;
              *(&v250 + 1) = v159;
              v256 = v144;
              if (![(MPSNDArrayQuantizationDescriptor *)v219 quantizationScheme]&& [(MPSNDArrayQuantizationDescriptor *)v220 quantizationScheme]== 1)
              {
                v160 = v220;
                if (([(MPSNDArrayQuantizationDescriptor *)v220 hasZeroPoint]& 1) == 0 && ([(MPSNDArrayQuantizationDescriptor *)v160 hasDoubleQuantScale]& 1) == 0 && (([(MPSNDArrayQuantizationDescriptor *)v160 hasDoubleQuantMinVal]| v141) & 1) == 0)
                {
                  MPSKernel_LogInfo(a1, 4uLL, "Using encode_qmm_generic encode path\n");
                  v29 = encode_qmm_generic(a2, a3, v199, *(a1 + *MEMORY[0x277CD7370]), v226);
                  goto LABEL_72;
                }
              }
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      v27 = 0;
    }

LABEL_43:
    if (!v7 || [(MPSNDArrayQuantizationDescriptor *)v7 quantizationScheme]!= 1 || [(MPSNDArrayQuantizationDescriptor *)v7 quantizationDataType]!= 536870916 && [(MPSNDArrayQuantizationDescriptor *)v7 quantizationDataType]!= 4)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  EncodeTextureMatrixMultiplication(a1, a2, a3, v199);
LABEL_30:
  v24 = 0;
LABEL_73:
  objc_autoreleasePoolPop(context);
  v34 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_239A67B78(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
    if (SLOBYTE(STACK[0x4F7]) < 0)
    {
LABEL_5:
      operator delete(STACK[0x4E0]);
      if (SLOBYTE(STACK[0x6D7]) < 0)
      {
LABEL_8:
        operator delete(STACK[0x6C0]);
        if ((*(v1 - 177) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }

LABEL_14:
      if ((*(v1 - 177) & 0x80000000) == 0)
      {
LABEL_9:
        if (SLOBYTE(STACK[0x7C7]) < 0)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }

LABEL_15:
      operator delete(*(v1 - 200));
      if (SLOBYTE(STACK[0x7C7]) < 0)
      {
LABEL_10:
        operator delete(STACK[0x7B0]);
        if ((SLOBYTE(STACK[0x447]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }

LABEL_16:
      if ((SLOBYTE(STACK[0x447]) & 0x80000000) == 0)
      {
LABEL_11:
        if (*(v1 - 129) < 0)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }

LABEL_17:
      operator delete(STACK[0x430]);
      if (*(v1 - 129) < 0)
      {
LABEL_12:
        operator delete(*(v1 - 152));
        if ((SLOBYTE(STACK[0x4AF]) & 0x80000000) == 0)
        {
LABEL_20:
          _Unwind_Resume(a1);
        }

LABEL_19:
        operator delete(STACK[0x498]);
        _Unwind_Resume(a1);
      }

LABEL_18:
      if ((SLOBYTE(STACK[0x4AF]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    goto LABEL_5;
  }

  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_14;
}

uint64_t EncodeArrayAffieInt4Dequant(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v309 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 144);
  MPSKernel_LogInfo(a1, 2uLL, "-test MPSNDArrayInt4Dequantize\n");
  v172 = *(a1 + *MEMORY[0x277CD7370]);
  v7 = [*(a4 + 232) inputTensorAtIndex:0];
  v8 = [*(a4 + 232) outputTensorAtIndex:0];
  v9 = v8;
  v10 = v7[2];
  v12 = *v10;
  v11 = v10[1];
  v170 = a1;
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v13 = *(v8 + 16);
  v15 = *v13;
  v14 = v13[1];
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (*v7 >= 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v7 != *v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = [*(a4 + 232) graph];
  *&v17 = -1;
  *(&v17 + 1) = -1;
  v307 = v17;
  v308 = v17;
  *v306 = v17;
  if (v6 && [(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]!= 1)
  {
    PlaceHolderIndexInSourceArrayAffineGEMM = -1;
LABEL_14:
    if ([(MPSNDArrayQuantizationDescriptor *)v6 quantizationScheme]!= 2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  PlaceHolderIndexInSourceArrayAffineGEMM = GetPlaceHolderIndexInSourceArrayAffineGEMM(v16, v6, v306, 0, 0, 1, 0, 0);
  if (v6)
  {
    goto LABEL_14;
  }

LABEL_15:
  PlaceHolderIndexInSourceArrayAffineGEMM = GetPlaceHolderIndexInSourceArrayLUTGEMM(v16, v6, v306, 0, 0);
LABEL_16:
  if (PlaceHolderIndexInSourceArrayAffineGEMM && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v19 = *(a4 + 16);
  v206 = *(a4 + 208);
  v20 = v306[0];
  v175 = v307;
  v176 = v306[1];
  v174 = *(&v307 + 1);
  if (v306[0] < 0 || ([v19 count], v20 >= objc_msgSend(v19, "count")))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v176 < 0 || ([v19 count], v176 >= objc_msgSend(v19, "count")))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v6 hasZeroPoint])
  {
    if (v175 < 0 || ([v19 count], v175 >= objc_msgSend(v19, "count")))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v6 hasMinValue])
  {
    if (v174 < 0 || ([v19 count], v174 >= objc_msgSend(v19, "count")))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v169 = v20;
  v21 = [v19 objectAtIndexedSubscript:v20];
  v171 = a4;
  v22 = [v19 objectAtIndexedSubscript:v176];
  if (!v21 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (!v22 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((*(v21 + *MEMORY[0x277CD73C8]) & 0xDFFFFFFF) != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v23 = *(v22 + *MEMORY[0x277CD73C8]);
  if (v23 != 268435472 && v23 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v24 = MEMORY[0x277CD73D8];
  v25 = MEMORY[0x277CD7410];
  if (*v7)
  {
    v26 = 0;
    do
    {
      *(8 * v26);
      *(8 * v26);
      v27 = *(8 * v26);
      v28 = v21 + *v25;
      v246 = *(v21 + *v24);
      if (v27 != *(v28 + 4 * (*(&v246 | v26 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v29 = *(8 * v26);
      v30 = v206 + *v25;
      v245 = *(v206 + *v24);
      if (v29 != *(v30 + 4 * (*(&v245 | v26 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      ++v26;
    }

    while (v26 < *v7);
  }

  v31 = MEMORY[0x277CD73F0];
  v32 = *MEMORY[0x277CD73F0];
  v33 = *(v22 + v32);
  if (v33 != 1 && v33 != *(v21 + v32) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v21 + *v31))
  {
    v34 = 0;
    do
    {
      v35 = *v24;
      v243 = *(v22 + v35);
      v36 = *(&v243 | v34 & 0xF);
      v244 = *(v21 + v35);
      if (v36 != *(&v244 | v34 & 0xF) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v37 = *v25;
      v38 = *v24;
      v241 = *(v21 + v38);
      v39 = *(v21 + v37 + 4 * (*(&v241 | v34 & 0xF) & 0xF));
      v242 = *(v22 + v38);
      if (v39 % *(v22 + v37 + 4 * (*(&v242 | v34 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      ++v34;
    }

    while (v34 < *(v21 + *v31));
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v6 hasZeroPoint])
  {
    v40 = [v19 objectAtIndexedSubscript:v175];
    if (!v40 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((*(v40 + *MEMORY[0x277CD73C8]) & 0xDFFFFFFF) != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v41 = *v31;
    v42 = *(v40 + v41);
    if (v42 != 1 && v42 != *(v21 + v41) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v21 + *v31))
    {
      v43 = 0;
      do
      {
        v44 = *v24;
        v239 = *(v40 + v44);
        v45 = *(&v239 | v43 & 0xF);
        v240 = *(v21 + v44);
        if (v45 != *(&v240 | v43 & 0xF) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v46 = *v25;
        v47 = *v24;
        v237 = *(v21 + v47);
        v48 = *(v21 + v46 + 4 * (*(&v237 | v43 & 0xF) & 0xF));
        v238 = *(v22 + v47);
        if (v48 % *(v40 + v46 + 4 * (*(&v238 | v43 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        ++v43;
      }

      while (v43 < *(v21 + *v31));
    }
  }

  else
  {
    v40 = 0;
  }

  if ([(MPSNDArrayAffineQuantizationDescriptor *)v6 hasMinValue])
  {
    v49 = [v19 objectAtIndexedSubscript:v174];
    if (!v49 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v50 = *v31;
    v51 = *(v49 + v50);
    if (v51 != 1 && v51 != *(v21 + v50) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v21 + *v31))
    {
      v52 = 0;
      do
      {
        v53 = *v24;
        v235 = *(v49 + v53);
        v54 = *(&v235 | v52 & 0xF);
        v236 = *(v21 + v53);
        if (v54 != *(&v236 | v52 & 0xF) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v55 = *v25;
        v56 = *v24;
        v233 = *(v21 + v56);
        v57 = *(v21 + v55 + 4 * (*(&v233 | v52 & 0xF) & 0xF));
        v234 = *(v22 + v56);
        if (v57 % *(v49 + v55 + 4 * (*(&v234 | v52 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        ++v52;
      }

      while (v52 < *(v21 + *v31));
    }

    v58 = *(v49 + *MEMORY[0x277CD73C8]);
    if (v58 != 268435472 && v58 != 268435488)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  else
  {
    v49 = 0;
  }

  v60 = *(v21 + *v31);
  if (!v60)
  {
    goto LABEL_104;
  }

  v61 = 0;
  v62 = *(v21 + *v24);
  while (1)
  {
    v232 = v62;
    if (!*(&v232 | v61 & 0xF))
    {
      break;
    }

    if (v60 == ++v61)
    {
      goto LABEL_104;
    }
  }

  if (v61 >= 4)
  {
LABEL_104:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if ((*(v21 + *MEMORY[0x277CD7418]) & 1) != 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [(MPSNDArrayAffineQuantizationDescriptor *)v6 implicitZeroPoint];
  v63 = *(v21 + *v24);
  v64 = v63.u8[1];
  v65.i64[0] = 0xFF000000FFLL;
  v65.i64[1] = 0xFF000000FFLL;
  v66 = vandq_s8(vmovl_u16(vzip1_s8(*v63.i8, *v63.i8)), v65);
  v65.i64[0] = vrev64q_s32(v66).u64[0];
  v65.i64[1] = v66.i64[1];
  v67 = vbslq_s8(vdupq_lane_s8(*&vcgtq_u8(v63, vdupq_lane_s8(*v63.i8, 1)), 0), v65, v66);
  if (v63.u8[0] > v63.u8[1])
  {
    v64 = v63.u8[0];
  }

  v68 = v67.u32[2];
  if (v67.i32[2] < v64)
  {
    v67.i32[1] = v67.i32[2];
    v67.i32[2] = v64;
    v64 = v68;
    v69 = v67.i32[0];
    if (v67.i32[0] <= v64)
    {
      goto LABEL_112;
    }

LABEL_115:
    v71.i64[1] = v67.i64[1];
    v71.i64[0] = __PAIR64__(v67.u32[0], v64);
    v67 = v71;
    v70 = v71.u32[2];
    if (v69 <= v71.i32[2])
    {
      goto LABEL_117;
    }

    goto LABEL_116;
  }

  v69 = v67.i32[0];
  if (v67.i32[0] > v64)
  {
    goto LABEL_115;
  }

LABEL_112:
  v69 = v64;
  v70 = v67.u32[2];
  if (v69 > v67.i32[2])
  {
LABEL_116:
    v67.i32[1] = v70;
    v67.i32[2] = v69;
    v69 = v70;
  }

LABEL_117:
  v72 = v67.i32[0];
  if (v67.i32[0] > v69)
  {
    v73.i64[1] = v67.i64[1];
    v73.i64[0] = __PAIR64__(v67.u32[0], v69);
    v67 = v73;
    v74 = v73.i32[2];
    if (v72 <= v73.i32[2])
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  v72 = v69;
  v74 = v67.i32[2];
  if (v72 > v67.i32[2])
  {
LABEL_121:
    v67.i32[1] = v74;
    v67.i32[2] = v72;
  }

LABEL_122:
  v207 = v67;
  v168 = v67.i8[0];
  if (v67.i32[0] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v205 = v49;
  v305 = xmmword_239B0A0D0;
  if (*(v21 + *v31))
  {
    v75 = 0;
    v76 = (v21 + *v25);
    v78 = v76[2];
    v77 = v76[3];
    v80 = *v76;
    v79 = v76[1];
    v208 = 0u;
    v209 = xmmword_239B0A0D0;
    v81 = 1;
    LODWORD(v82) = *v25;
    v202 = v22;
    v200 = v40;
    do
    {
      while (1)
      {
        v83 = v81 - 1;
        v230 = v207;
        v84 = *(&v230 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v81 - 1) & 3)));
        v231[0] = v80;
        v231[1] = v79;
        v231[2] = v78;
        v231[3] = v77;
        if (v40)
        {
          v85 = *(v40 + v82 + 4 * (v84 & 0xF));
        }

        else
        {
          v85 = 1;
        }

        v86 = *(v231 + (v84 & 0xF));
        v87 = *(v22 + v82 + 4 * (v84 & 0xF));
        if (v205)
        {
          v88 = *(v205 + v82 + 4 * (v84 & 0xF));
        }

        else
        {
          v88 = 1;
        }

        if (v85 <= v87)
        {
          v89 = *(v22 + v82 + 4 * (v84 & 0xF));
        }

        else
        {
          v89 = v85;
        }

        if (v89 <= v88)
        {
          v90 = v88;
        }

        else
        {
          v90 = v89;
        }

        if (v87 != 1 && v90 != v87)
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }
        }

        if (v85 != 1 && v85 != v90 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v88 < v89 && v88 != 1)
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }
        }

        v93 = v86 / v90;
        if (v86 % v90 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v227 = v209;
        *(&v227 & 0xFFFFFFFFFFFFFFF3 | (4 * (v83 & 3))) = v93;
        v209 = v227;
        v94 = 31 - __clz(v93);
        if (v86 < v90)
        {
          v94 = 0;
        }

        v228 = v208;
        *(&v228 & 0xFFFFFFFFFFFFFFF3 | (4 * (v83 & 3))) = v94;
        v208 = v228;
        v25 = MEMORY[0x277CD7410];
        v82 = *MEMORY[0x277CD7410];
        v80 = *(v21 + v82);
        v79 = *(v21 + v82 + 16);
        v78 = *(v21 + v82 + 32);
        v77 = *(v21 + v82 + 48);
        v229[3] = v77;
        v229[2] = v78;
        v229[1] = v79;
        v229[0] = v80;
        if (*(v229 + (v84 & 0xF)) != v93)
        {
          break;
        }

        *(&v306[-2] + v75) = 1;
        v22 = v202;
        v40 = v200;
        v31 = MEMORY[0x277CD73F0];
        v75 = v81++;
        if (*(v21 + *MEMORY[0x277CD73F0]) <= v75)
        {
          goto LABEL_172;
        }
      }

      v22 = v202;
      v40 = v200;
      v31 = MEMORY[0x277CD73F0];
      if (v93 == 1)
      {
        v95 = 2;
      }

      else if ((v93 & (v93 - 1)) != 0)
      {
        if (v93)
        {
          v95 = 7;
        }

        else
        {
          v95 = 5;
        }
      }

      else
      {
        v95 = 6;
      }

      *(&v306[-2] + v75) = v95;
      v75 = v81++;
    }

    while (*(v21 + *v31) > v75);
  }

  else
  {
    v208 = 0u;
    v209 = xmmword_239B0A0D0;
  }

LABEL_172:
  makeStrideElements();
  v201 = v303;
  v203 = v304;
  v198 = v301;
  v199 = v302;
  v196 = v299;
  v197 = v300;
  v194 = v297;
  v195 = v298;
  makeStrideElements();
  v192 = v295;
  v193 = v296;
  v190 = v293;
  v191 = v294;
  v188 = v291;
  v189 = v292;
  v187 = v290;
  v185 = 0u;
  v186 = v289;
  if (v40)
  {
    makeStrideElements();
    v177 = v288;
    v178 = v287;
    v179 = v286;
    v180 = v285;
    v181 = v284;
    v182 = v283;
    v183 = v282;
    v184 = v281;
    if (v205)
    {
      goto LABEL_174;
    }
  }

  else
  {
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    if (v205)
    {
LABEL_174:
      makeStrideElements();
      v98 = v280;
      v99 = v279;
      v100 = v278;
      v101 = v277;
      v102 = v276;
      v103 = v275;
      v104 = v274;
      v185 = v273;
      v105 = *(v21 + *v31);
      v106 = *v25;
      if (v105)
      {
        goto LABEL_175;
      }

LABEL_195:
      v132 = *(v21 + v106);
      v119 = 0uLL;
      v118 = 0uLL;
      v117 = 0uLL;
      v111 = 0uLL;
      goto LABEL_196;
    }
  }

  v104 = 0uLL;
  v103 = 0uLL;
  v102 = 0uLL;
  v101 = 0uLL;
  v100 = 0uLL;
  v99 = 0uLL;
  v98 = 0uLL;
  v105 = *(v21 + *v31);
  v106 = *v25;
  if (!v105)
  {
    goto LABEL_195;
  }

LABEL_175:
  v108 = *(v21 + v106 + 32);
  v107 = *(v21 + v106 + 48);
  v109 = *(v21 + v106);
  v110 = *(v21 + v106 + 16);
  v111 = 0uLL;
  v112 = 1;
  v114 = *(v22 + v106 + 32);
  v113 = *(v22 + v106 + 48);
  v116 = *(v22 + v106);
  v115 = *(v22 + v106 + 16);
  v117 = 0uLL;
  v118 = 0uLL;
  v119 = 0uLL;
  do
  {
    v121 = v112 - 1;
    v220 = v207;
    v122 = *(&v220 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v112 - 1) & 3)));
    v226[0] = v109;
    v226[1] = v110;
    v226[2] = v108;
    v226[3] = v107;
    v123 = *(v226 + (v122 & 0xF));
    v225[0] = v194;
    v225[1] = v195;
    v225[2] = v196;
    v225[3] = v197;
    v225[4] = v198;
    v225[5] = v199;
    v225[6] = v201;
    v225[7] = v203;
    if (v123 == 1)
    {
      v124 = 0;
    }

    else
    {
      v124 = *(v225 + 2 * (v122 & 0xF));
    }

    v221 = v119;
    *(&v221 & 0xFFFFFFFFFFFFFFF3 | (4 * (v121 & 3))) = v124;
    v119 = v221;
    v224[0] = v116;
    v224[1] = v115;
    v224[2] = v114;
    v224[3] = v113;
    v125 = *(v224 + (v122 & 0xF));
    v223[0] = v186;
    v223[1] = v187;
    v223[2] = v188;
    v223[3] = v189;
    v223[4] = v190;
    v223[5] = v191;
    v223[6] = v192;
    v223[7] = v193;
    if (v125 == 1)
    {
      v126 = 0;
    }

    else
    {
      v126 = *(v223 + 2 * (v122 & 0xF));
    }

    v222 = v118;
    *(&v222 & 0xFFFFFFFFFFFFFFF3 | (4 * (v121 & 3))) = v126;
    v118 = v222;
    if (v40)
    {
      v127 = *(v40 + v106 + 4 * (v122 & 0xF));
      v219[0] = v184;
      v219[1] = v183;
      v219[2] = v182;
      v219[3] = v181;
      v219[4] = v180;
      v219[5] = v179;
      v219[6] = v178;
      v219[7] = v177;
      if (v127 == 1)
      {
        v128 = 0;
      }

      else
      {
        v128 = *(v219 + (v122 & 0xF));
      }

      v218 = v117;
      *(&v218 & 0xFFFFFFFFFFFFFFF3 | (4 * (v121 & 3))) = v128;
      v117 = v218;
    }

    if (v205)
    {
      v129 = v122 & 0xF;
      v130 = *(v205 + v106 + 4 * v129);
      v217[0] = v185;
      v217[1] = v104;
      v217[2] = v103;
      v217[3] = v102;
      v217[4] = v101;
      v217[5] = v100;
      v217[6] = v99;
      v217[7] = v98;
      v131 = *(v217 + v129);
      if (v130 == 1)
      {
        LODWORD(v131) = 0;
      }

      v216 = v111;
      *(&v216 & 0xFFFFFFFFFFFFFFF3 | (4 * (v121 & 3))) = v131;
      v111 = v216;
    }
  }

  while (v105 > v112++);
  LOBYTE(v132) = v109;
LABEL_196:
  v133 = v132 & 1;
  v269 = 0u;
  v270 = 0u;
  if (v132)
  {
    v134 = 1;
  }

  else
  {
    v134 = 2;
  }

  v268 = 0uLL;
  v267 = 0uLL;
  v266 = 0uLL;
  v257[0] = v119;
  v257[1] = v118;
  v257[2] = v117;
  v257[3] = v111;
  v262 = 0;
  v258 = v169;
  v259 = v176;
  v260 = v175;
  v261 = v174;
  v263 = v209;
  v265 = 0uLL;
  v264 = v208;
  v272 = 0uLL;
  LODWORD(v272) = 0;
  v271 = 0uLL;
  v270 = 0uLL;
  v269 = 0uLL;
  MPSGetUIntDivisorMagicNumber();
  v265 = v135;
  MPSGetUIntDivisorMagicNumber();
  v266 = v136;
  MPSGetUIntDivisorMagicNumber();
  v267 = v137;
  MPSGetUIntDivisorMagicNumber();
  v268 = v138;
  v139 = *MEMORY[0x277CD73C8];
  v140 = *(v22 + v139) == 268435488;
  v204 = v134;
  if (v205)
  {
    v141 = *(v205 + v139) == 268435488;
    if (!v40)
    {
      goto LABEL_203;
    }

    goto LABEL_201;
  }

  if (v40)
  {
LABEL_201:
    v142 = *(v40 + v139) == 536870916;
  }

LABEL_203:
  v143 = *(v21 + v139) == 536870916;
  v144 = *(v206 + v139);
  if (v144 > 285212703)
  {
    if (v144 <= 536870915)
    {
      if (v144 > 301989895)
      {
        if (v144 == 301989896)
        {
          v145 = 16;
          goto LABEL_248;
        }

        if (v144 == 335544328)
        {
          v145 = 17;
          goto LABEL_248;
        }
      }

      else
      {
        if (v144 == 285212704)
        {
          v145 = 13;
          goto LABEL_248;
        }

        if (v144 == 285212736)
        {
          v145 = 14;
          goto LABEL_248;
        }
      }
    }

    else if (v144 <= 536870927)
    {
      v145 = 0;
      if (v144 == 536870916)
      {
        goto LABEL_248;
      }

      if (v144 == 536870920)
      {
        v145 = 1;
        goto LABEL_248;
      }
    }

    else
    {
      switch(v144)
      {
        case 536870928:
          v145 = 2;
          goto LABEL_248;
        case 536870944:
          v145 = 3;
          goto LABEL_248;
        case 536870976:
          v145 = 4;
          goto LABEL_248;
      }
    }

LABEL_247:
    v145 = 18;
    goto LABEL_248;
  }

  if (v144 <= 31)
  {
    if (v144 > 7)
    {
      if (v144 == 8)
      {
        v145 = 6;
        goto LABEL_248;
      }

      if (v144 == 16)
      {
        v145 = 7;
        goto LABEL_248;
      }
    }

    else
    {
      if (v144 == -1879048176)
      {
        v145 = 12;
        goto LABEL_248;
      }

      if (v144 == 4)
      {
        v145 = 5;
        goto LABEL_248;
      }
    }

    goto LABEL_247;
  }

  if (v144 <= 268435463)
  {
    if (v144 == 32)
    {
      v145 = 8;
      goto LABEL_248;
    }

    if (v144 == 64)
    {
      v145 = 9;
      goto LABEL_248;
    }

    goto LABEL_247;
  }

  if (v144 == 268435464)
  {
    v145 = 15;
    goto LABEL_248;
  }

  if (v144 == 268435472)
  {
    v145 = 10;
    goto LABEL_248;
  }

  if (v144 != 268435488)
  {
    goto LABEL_247;
  }

  v145 = 11;
LABEL_248:
  *&v147 = -1;
  *(&v147 + 1) = -1;
  v256 = v147;
  v255 = v147;
  v254 = v147;
  v252 = -1;
  v251 = v147;
  v253 = v145;
  *&v256 = [*(v171 + 16) count] | 0x10000;
  v166 = *(v170 + *MEMORY[0x277CD7360]);
  v167 = *(v170 + *MEMORY[0x277CD7368]);
  v165 = *(v171 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v149 = MEMORY[0x277CD7410];
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v165, v166, v167, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  v150 = (v21 + *v149);
  v151 = *v150;
  v152 = v150[1];
  v153 = v150[3];
  v214 = v150[2];
  v215 = v153;
  v213[0] = v151;
  v213[1] = v152;
  v154 = *(v213 + (v168 & 0xF));
  v212[2] = v214;
  v212[3] = v153;
  v212[0] = v151;
  v212[1] = v152;
  v155 = *(v212 + (v207.i8[4] & 0xF));
  v211[2] = v214;
  v211[3] = v153;
  v211[0] = v151;
  v211[1] = v152;
  LODWORD(v149) = *(v211 + (v207.i8[8] & 0xF));
  v210[2] = v214;
  v210[3] = v153;
  v210[0] = v151;
  v210[1] = v152;
  v156 = *(v210 + (v207.i8[12] & 0xF));
  v157 = (v204 + v154 - 1) >> (v133 ^ 1u);
  MPSGetUIntDivisorMagicNumber();
  v269 = v158;
  MPSGetUIntDivisorMagicNumber();
  v270 = v159;
  MPSGetUIntDivisorMagicNumber();
  v160 = v149 * v155 * v156;
  v161 = v160 * v157;
  v271 = v162;
  LODWORD(v272) = v160 * v157;
  MPSSetNDArraysOnComputeEncoder(a2, v171, 4, 0, 0);
  [a2 setBytes:v257 length:240 atIndex:28];
  [a2 setBuffer:0 offset:0 atIndex:27];
  v249 = (v161 + 127) >> 7;
  v250 = vdupq_n_s64(1uLL);
  v247 = xmmword_239B0A150;
  v248 = 1;
  [a2 dispatchThreadgroups:&v249 threadsPerThreadgroup:&v247];
  MPSLibrary::ReleaseComputeState();
  v163 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_239A698A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, void *a20)
{
  if (__p)
  {
    operator delete(__p);
    if (!a20)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!a20)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  _Unwind_Resume(exception_object);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *std::__hash_table<std::__hash_value_type<void *,objc_object  {objcproto9MTLBuffer}*>,std::__unordered_map_hasher<void *,objc_object  {objcproto9MTLBuffer}*,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,objc_object  {objcproto9MTLBuffer}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}*>>::find<void *>(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v12 == v6)
        {
          if (result[2] == v3)
          {
            return result;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v13 = result[1];
      if (v13 == v6)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v13 >= *&v2)
        {
          v13 %= *&v2;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<void *,objc_object  {objcproto9MTLBuffer}*>,std::__unordered_map_hasher<void *,objc_object  {objcproto9MTLBuffer}*,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,objc_object  {objcproto9MTLBuffer}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}*>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::piecewise_construct_t const&<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void std::__hash_table<std::__hash_value_type<void *,objc_object  {objcproto9MTLBuffer}*>,std::__unordered_map_hasher<void *,objc_object  {objcproto9MTLBuffer}*,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,objc_object  {objcproto9MTLBuffer}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto9MTLBuffer}*>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke_0(uint64_t a1, void *a2)
{
  v3 = [a2 userDictionary];
  v4 = *(a1 + 32);

  return [v3 removeObjectForKey:v4];
}

void EncodeTextureMatrixMultiplication(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v446 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  if (v7)
  {
    v9 = *(a1 + 168);
  }

  else
  {
    v9 = *(a1 + 176);
  }

  if (!v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v332 = *(*(*(a1 + *MEMORY[0x277CD7370]) + 32) + 8);
  if (!v332)
  {
    if (*(a1 + 208) == 5)
    {
      v332 = *(a1 + 200);
    }

    else
    {
      v332 = 0;
    }
  }

  v313 = *(a1 + *MEMORY[0x277CD7350]);
  v324 = *(a1 + 192);
  v327 = a1;
  v329 = *(a1 + 184);
  v339 = [*(a4 + 232) graph];
  v10 = [v9 hasMinValue];
  v11 = [*(a4 + 232) inputTensorAtIndex:0];
  v12 = [*(a4 + 232) inputTensorAtIndex:1];
  v13 = 0;
  if (v10)
  {
    v13 = [*(a4 + 232) inputTensorAtIndex:2];
  }

  v345 = a4;
  v351 = [*(a4 + 232) outputTensorAtIndex:0];
  v14 = v11[4];
  v15 = v12[4];
  if (v13)
  {
    v16 = v13[4];
  }

  else
  {
    v16 = 0;
  }

  v343 = v10;
  v334 = a2;
  v17 = **(v339 + 64);
  v18 = *(*(v339 + 64) + 8);
  v19 = v18 - v17;
  if (v18 == v17)
  {
    v22 = -1;
    v23 = -1;
    v24 = -1;
LABEL_32:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_34;
  }

  v20 = 0;
  v21 = v19 >> 3;
  if (v21 <= 1)
  {
    v21 = 1;
  }

  v22 = -1;
  v23 = -1;
  v24 = -1;
  do
  {
    v25 = *(v17 + 8 * v20);
    if (v25 == v14)
    {
      v22 = v20;
    }

    if (v25 == v15)
    {
      v23 = v20;
    }

    if ((v343 & (v25 == v16)) != 0)
    {
      v24 = v20;
    }

    ++v20;
  }

  while (v21 != v20);
  if (v22 == -1 || v23 == -1)
  {
    goto LABEL_32;
  }

LABEL_34:
  v344 = *(v14 + 96);
  if (v344 != 2)
  {
    if (*(v15 + 96) == 2)
    {
      v30 = **(v339 + 64);
      if (*(*(v339 + 64) + 8) == v30)
      {
        goto LABEL_702;
      }

      v28 = *(*v30 + 76);
      v29 = v22;
      v22 = v23;
      if (!v343)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      LOWORD(v28) = -1;
      v29 = -1;
      v22 = -1;
      if (!v343)
      {
        goto LABEL_41;
      }
    }

LABEL_48:
    v32 = **(v339 + 64);
    if ((*(*(v339 + 64) + 8) - v32) > 0x10)
    {
      v31 = *(*(v32 + 16) + 76);
      v326 = v28;
      if (v344 != 2)
      {
        goto LABEL_50;
      }

LABEL_42:
      if (!v7 && MTLReportFailureTypeEnabled())
      {
        goto LABEL_346;
      }

      goto LABEL_51;
    }

LABEL_702:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = **(v339 + 64);
  if ((*(*(v339 + 64) + 8) - v27) <= 8)
  {
    goto LABEL_702;
  }

  v28 = *(*(v27 + 8) + 76);
  v29 = v23;
  if (v343)
  {
    goto LABEL_48;
  }

LABEL_41:
  LOWORD(v31) = -1;
  v326 = v28;
  if (v344 == 2)
  {
    goto LABEL_42;
  }

LABEL_50:
  if (!v8 && MTLReportFailureTypeEnabled())
  {
LABEL_346:
    MTLReportFailure();
  }

LABEL_51:
  v33 = *(v345 + 16);
  [v33 objectAtIndexedSubscript:v22];
  v34 = [v33 objectAtIndexedSubscript:v22];
  if ((*(v34 + *MEMORY[0x277CD73E8]) & 1) == 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v35 = [v33 objectAtIndexedSubscript:v22];
  v353 = *(v35 + *MEMORY[0x277CD7460]);
  v348 = [v33 objectAtIndexedSubscript:v29];
  if (v343)
  {
    v337 = [v33 objectAtIndexedSubscript:v24];
  }

  else
  {
    v337 = 0;
  }

  v350 = *(v345 + 208);
  v36 = v11[2];
  v38 = *v36;
  v37 = v36[1];
  if (v37 != v38)
  {
    if (((v37 - v38) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v39 = v12[2];
  v41 = *v39;
  v40 = v39[1];
  v325 = v31;
  if (v40 != v41)
  {
    if (((v40 - v41) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v42 = v351[2];
  v44 = *v42;
  v43 = v42[1];
  if (v43 != v44)
  {
    if (((v43 - v44) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (*v11 >= 4uLL)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v11 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (*v12 >= 4uLL)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v12 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (*v351 >= 4uLL)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v351 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v337)
  {
    if (*v13 >= 4uLL && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v45 = v13[2];
    v47 = *v45;
    v46 = v45[1];
    if (v46 != v47)
    {
      if (((v46 - v47) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (*v13 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (MEMORY[0] != MEMORY[8] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v48 = *(v348 + *MEMORY[0x277CD73D8]);
  v49 = MEMORY[0x277CD7410];
  if (v344 == 2)
  {
    if ((*(v348 + *MEMORY[0x277CD73D8]) != 1 || BYTE1(*(v348 + *MEMORY[0x277CD73D8]))) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v50 = *(v35 + *MEMORY[0x277CD73D8]);
    v51.i32[0] = v50;
    v51.i32[1] = BYTE1(v50);
    *&v50 = vmvn_s8(vceq_s32(vand_s8(v51, 0xFF000000FFLL), 0x100000000));
    if (((v50 | DWORD1(v50)) & 1) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v348 + *v49 + 4 * (*(v348 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v348 + *v49 + 4 * (*(v348 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v35 + *v49 + 4 * (*(v35 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v35 + *v49 + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v348 + *v49 + 4 * (*(v348 + *MEMORY[0x277CD73D8]) & 0xF)) != *&v350[4 * (*&v350[*MEMORY[0x277CD73D8]] & 0xF) + *v49] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v35 + *v49 + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 1) & 0xF)) != *&v350[4 * (v350[*MEMORY[0x277CD73D8] + 1] & 0xF) + *v49] && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
LABEL_372:
      MTLReportFailure();
    }
  }

  else
  {
    if ((*(v348 + *MEMORY[0x277CD73D8]) || BYTE1(*(v348 + *MEMORY[0x277CD73D8])) != 1) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v52 = *(v35 + *MEMORY[0x277CD73D8]);
    v53.i32[0] = v52;
    v53.i32[1] = BYTE1(v52);
    *&v52 = vmvn_s8(vceq_s32(vand_s8(v53, 0xFF000000FFLL), 1));
    if (((v52 | DWORD1(v52)) & 1) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v348 + *v49 + 4 * (*(v348 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v348 + *v49 + 4 * (*(v348 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v35 + *v49 + 4 * (*(v35 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v35 + *v49 + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v348 + *v49 + 4 * (*(v348 + *MEMORY[0x277CD73D8] + 1) & 0xF)) != *&v350[4 * (v350[*MEMORY[0x277CD73D8] + 1] & 0xF) + *v49] && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v35 + *v49 + 4 * (*(v35 + *MEMORY[0x277CD73D8]) & 0xF)) != *&v350[4 * (*&v350[*MEMORY[0x277CD73D8]] & 0xF) + *v49] && MTLReportFailureTypeEnabled())
    {
      goto LABEL_372;
    }
  }

  if (*(v348 + *MEMORY[0x277CD73D8] + 2) != 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v54 = MEMORY[0x277CD73F0];
  if (*(v348 + *MEMORY[0x277CD73F0]) >= 4uLL && *(v348 + *v49 + 4 * (*(v348 + *MEMORY[0x277CD73D8] + 3) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v35 + *MEMORY[0x277CD73D8] + 2) != 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v35 + *v54) >= 4uLL && *(v35 + *v49 + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 3) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[0] != *&v350[4 * (*&v350[*MEMORY[0x277CD73D8]] & 0xF) + *v49] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (MEMORY[8] != *&v350[4 * (v350[*MEMORY[0x277CD73D8] + 1] & 0xF) + *v49] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ([objc_msgSend(v353 objectAtIndexedSubscript:{0), "pixelFormat"}] >= 0xDE)
  {
    [objc_msgSend(v353 objectAtIndexedSubscript:{0), "pixelFormat"}];
  }

  if (([objc_msgSend(v353 objectAtIndexedSubscript:{0), "pixelFormat"}] < 0xDE || objc_msgSend(objc_msgSend(v353, "objectAtIndexedSubscript:", 0), "pixelFormat") >= 0xED) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v343)
  {
    if (*(v337 + *v49 + 4 * (*(v337 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v337 + *v49 + 4 * (*(v337 + *MEMORY[0x277CD73D8] + 1) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (v344 == 2)
  {
    v55 = 8;
  }

  else
  {
    v55 = 0;
  }

  if (v344 == 2)
  {
    v56 = 0;
  }

  else
  {
    v56 = 8;
  }

  v57 = *v55;
  v346 = *v56;
  v58 = MEMORY[0];
  v59 = *(v35 + *v49 + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 2) & 0xF));
  if (v59 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v353 count];
  if ([v353 count] % v59 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v60 = [v353 count];
  v61 = v60 / v59;
  if (v60 >= v59)
  {
    v63 = 0;
    v62 = 0;
    v65 = MEMORY[0x277CD73D0];
    do
    {
      v63 += [objc_msgSend(v353 objectAtIndexedSubscript:{v62), "width"}];
      v64 = *(v35 + *v65);
      if (v63 >= v64)
      {
        break;
      }

      ++v62;
    }

    while (v62 < v61);
  }

  else
  {
    v62 = 0;
    v63 = 0;
    v64 = *(v35 + *MEMORY[0x277CD73D0]);
  }

  if (v63 != v64 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v342 = v61 / (v62 + 1);
  v352 = v62 + 1;
  if (v61 % (v62 + 1) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v60 >= v59)
  {
    v66 = 0;
    v67 = 0;
    v69 = MEMORY[0x277CD73D0];
    do
    {
      v67 += [objc_msgSend(v353 objectAtIndexedSubscript:{v66), "height"}];
      v68 = *(v35 + 4 + *v69);
      if (v67 >= v68)
      {
        break;
      }

      v66 += v352;
    }

    while (v66 < v61);
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v68 = *(v35 + *MEMORY[0x277CD73D0] + 4);
  }

  if (v67 != v68 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v66 / v352 + 1 != v342 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v70 = [v353 objectAtIndexedSubscript:0];
  v71 = [v70 pixelFormat];
  v335 = [v70 width];
  v310 = v71;
  v340 = [v70 height];
  v72 = *(v348 + *MEMORY[0x277CD7410] + 4 * (*(v348 + *MEMORY[0x277CD73D8] + 2) & 0xF));
  [v353 count];
  v73 = v342 * v352;
  if ([v353 count] % (v342 * v352) && MTLReportFailureTypeEnabled())
  {
    v296 = v342 * v352;
    v298 = [v353 count];
    MTLReportFailure();
  }

  v74 = [v353 count];
  if (v72 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v75 = v74 / v73;
  if (v74 / v73 != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v344 == 2)
  {
    MPSGetLinearOffsetBytes(v348, 0, 3, 0, 0);
    if (v346 != *(v348 + *MEMORY[0x277CD7410] + 4 * (*(v348 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v58 != *(v348 + *MEMORY[0x277CD7410] + 4 * (*(v348 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v58 != *(v35 + *MEMORY[0x277CD7410] + 4 * (*(v35 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v57 != *(v35 + *MEMORY[0x277CD7410] + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
LABEL_398:
      MTLReportFailure();
    }
  }

  else
  {
    MPSGetLinearOffsetBytes(v348, 0, 3, 0, 0);
    if (v346 != *(v348 + *MEMORY[0x277CD7410] + 4 * (*(v348 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v58 != *(v348 + *MEMORY[0x277CD7410] + 4 * (*(v348 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v57 != *(v35 + *MEMORY[0x277CD7410] + 4 * (*(v35 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v58 != *(v35 + *MEMORY[0x277CD7410] + 4 * (*(v35 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      goto LABEL_398;
    }
  }

  v76 = MEMORY[0x277CD73C8];
  if (*(v348 + *MEMORY[0x277CD73C8]) != 268435472 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v35 + *v76) != 268435472 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v77 = (v35 + *MEMORY[0x277CD7418]);
  v79 = *v77;
  v78 = v77[1];
  v80 = *MEMORY[0x277CD7408];
  v81 = *(v348 + v80);
  v322 = v81;
  if (v72 != 1)
  {
    v321 = *(v348 + *MEMORY[0x277CD73D0] + 4) * v81;
    v82 = v329;
    v83 = v335;
    v84 = v337;
    if (v337)
    {
      goto LABEL_152;
    }

LABEL_156:
    v323 = 0;
    v320 = 0;
    if (v82)
    {
      goto LABEL_157;
    }

    goto LABEL_159;
  }

  v321 = 0;
  v82 = v329;
  v83 = v335;
  v84 = v337;
  if (!v337)
  {
    goto LABEL_156;
  }

LABEL_152:
  v85 = *(v84 + v80);
  v320 = v85;
  if (v75 == 1)
  {
    v323 = 0;
    if (!v82)
    {
      goto LABEL_159;
    }

LABEL_157:
    v328 = [v82 normFusionType];
    v86 = [v82 hasScale];
    goto LABEL_160;
  }

  v323 = *(v84 + *MEMORY[0x277CD73D0] + 4) * v85;
  if (v82)
  {
    goto LABEL_157;
  }

LABEL_159:
  v86 = 0;
  v328 = 0;
LABEL_160:
  v87 = v79 % v83;
  v386 = __PAIR64__(v346, v57);
  v387 = v58 | 0x100000000;
  v88 = v78 % v340;
  v388 = v86;
  BYTE1(v388) = v86;
  v89 = v332;
  if (!v332)
  {
    if (v310 == 228)
    {
      if (qword_27DF85EE4 == v386 && unk_27DF85EEC == v387 && dword_27DF85EF4 == v388)
      {
        v118 = 0;
      }

      else if (qword_27DF85EF8 == v386 && unk_27DF85F00 == v387 && dword_27DF85F08 == v388)
      {
        v118 = 1;
      }

      else if (qword_27DF85F0C == v386 && unk_27DF85F14 == v387 && dword_27DF85F1C == v388)
      {
        v118 = 2;
      }

      else if (qword_27DF85F20 == v386 && unk_27DF85F28 == v387 && dword_27DF85F30 == v388)
      {
        v118 = 3;
      }

      else if (qword_27DF85F34 == v386 && unk_27DF85F3C == v387 && dword_27DF85F44 == v388)
      {
        v118 = 4;
      }

      else if (qword_27DF85F48 == v386 && unk_27DF85F50 == v387 && dword_27DF85F58 == v388)
      {
        v118 = 5;
      }

      else if (qword_27DF85F5C == v386 && unk_27DF85F64 == v387 && dword_27DF85F6C == v388)
      {
        v118 = 6;
      }

      else if (qword_27DF85F70 == v386 && unk_27DF85F78 == v387 && dword_27DF85F80 == v388)
      {
        v118 = 7;
      }

      else if (qword_27DF85F84 == v386 && unk_27DF85F8C == v387 && dword_27DF85F94 == v388)
      {
        v118 = 8;
      }

      else if (qword_27DF85F98 == v386 && unk_27DF85FA0 == v387 && dword_27DF85FA8 == v388)
      {
        v118 = 9;
      }

      else if (qword_27DF85FAC == v386 && unk_27DF85FB4 == v387 && dword_27DF85FBC == v388)
      {
        v118 = 10;
      }

      else if (qword_27DF85FC0 == v386 && unk_27DF85FC8 == v387 && dword_27DF85FD0 == v388)
      {
        v118 = 11;
      }

      else if (qword_27DF85FD4 == v386 && unk_27DF85FDC == v387 && dword_27DF85FE4 == v388)
      {
        v118 = 12;
      }

      else
      {
        if (qword_27DF85FE8 != v386 || unk_27DF85FF0 != v387 || dword_27DF85FF8 != v388)
        {
LABEL_273:
          v89 = 0;
          goto LABEL_401;
        }

        v118 = 13;
      }

      v89 = &RhodesDParams8x5 + 60 * v118;
    }

    else
    {
      v119 = 0;
      v120 = &qword_27DF85FFC;
      while (1)
      {
        v121 = *v120 == v386 && v120[1] == v387;
        if (v121 && *(v120 + 4) == v388)
        {
          break;
        }

        v119 -= 60;
        v120 = (v120 + 20);
        if (v119 == -4020)
        {
          goto LABEL_273;
        }
      }

      v89 = &RhodesDParams6x6 - v119;
    }

LABEL_401:
    v330 = v86;
    v319 = v79 % v83;
    v317 = v78 % v340;
    v318 = v79 / v83;
    v316 = v78 / v340;
    if (v346 > 8)
    {
      goto LABEL_404;
    }

LABEL_402:
    if (v89)
    {
      if (*(v89 + 12))
      {
        goto LABEL_404;
      }

      v315 = *(v89 + 10);
      v199 = 0x20 / v315;
      if (!*(v89 + 9))
      {
        v203 = 0;
        v200 = 0;
        v201 = 1;
        goto LABEL_581;
      }

      v200 = *(v89 + 11) != 0;
      v201 = 2;
LABEL_580:
      v203 = 1;
LABEL_581:
      v312 = *(v89 + 1);
      *v89;
      v309 = *v89;
      v204 = *v89 * v201 * v199 * *(v89 + 2);
      v205 = *(v89 + 4);
      if (v200)
      {
        v206 = 2;
      }

      else
      {
        v206 = 1;
      }

      if (!v203)
      {
        v206 = 0;
      }

      v338 = *(v89 + 2);
      v303 = v201;
      if (v57)
      {
        v207 = v204 - 1;
        if (v340 - v88 >= v57)
        {
          v208 = v57;
        }

        else
        {
          v208 = v340 - v88;
        }

        v209 = v208 % v204 != 0;
        v210 = (v207 + v208) / v204;
        if (v57 <= v208)
        {
          v191 = (v207 + v208) / v204;
        }

        else
        {
          v211 = 0;
          v191 = (v207 + v208) / v204;
          do
          {
            LODWORD(v212) = v208 + v340;
            if (v208 + v340 >= v57)
            {
              v212 = v57;
            }

            else
            {
              v212 = v212;
            }

            v209 |= v212 - v208 != (v212 - v208) / v204 * v204;
            if (!v208)
            {
              LOWORD(v210) = (v212 - v208 + v207) / v204;
            }

            v191 += (v212 - v208 + v207) / v204;
            --v211;
            LODWORD(v208) = v212;
          }

          while (v57 > v212);
        }
      }

      else
      {
        v191 = 0;
        LOWORD(v210) = 0;
      }

      v213 = *(v89 + 5) << v205 << v206;
      v333 = *(v89 + 3);
      v214 = (*(v89 + 3) * v312);
      if (v58)
      {
        v215 = v335 - v87 >= v58 ? v58 : v335 - v87;
        if (v58 > v215)
        {
          v216 = 0;
          do
          {
            LODWORD(v215) = v215 + v335;
            if (v215 >= v58)
            {
              v215 = v58;
            }

            else
            {
              v215 = v215;
            }

            --v216;
          }

          while (v58 > v215);
        }
      }

      v217 = 0;
      v218 = v213 * v315;
      v219 = (v346 + v214 - 1) / v214;
      v304 = v219;
      if (!((v191 * v204) >> 16) && !((v214 * v219) >> 16))
      {
        v217 = (v218 + v58 - 1) / v218 * v218 < 0x10000;
      }

      v220 = *MEMORY[0x277CD7418];
      v221 = *(v35 + v220);
      v222 = *(v35 + v220 + 16);
      v223 = *(v35 + v220 + 32);
      v224 = *MEMORY[0x277CD73D8];
      v225 = *(v35 + v224);
      v370 = *(v35 + v220 + 48);
      v369[2] = v223;
      v369[1] = v222;
      v369[0] = v221;
      v226 = v225 & 0xF;
      v227 = *(v369 + v226);
      v228 = *MEMORY[0x277CD7410];
      v229 = *(v35 + v228);
      v230 = *(v35 + v228 + 16);
      v231 = *(v35 + v228 + 32);
      v376 = *(v35 + v228 + 48);
      v375[2] = v231;
      v375[1] = v230;
      v375[0] = v229;
      v232 = (*(v375 + v226) + v227) < 0x10000 && v217;
      v368[3] = v370;
      v368[2] = v223;
      v368[1] = v222;
      v368[0] = v221;
      v233 = BYTE1(v225) & 0xF;
      v234 = *(v368 + v233);
      v374[3] = v376;
      v374[2] = v231;
      v374[1] = v230;
      v374[0] = v229;
      LODWORD(v233) = *(v374 + v233) + v234;
      v235 = (v348 + v220);
      v236 = *v235;
      v237 = v235[1];
      v238 = v235[2];
      v239 = *(v348 + v224);
      v373 = v235[3];
      v372[2] = v238;
      v372[1] = v237;
      v372[0] = v236;
      v240 = v239 & 0xF;
      LODWORD(v224) = *(v372 + v240);
      v241 = *(v348 + v228);
      v242 = *(v348 + v228 + 16);
      v243 = *(v348 + v228 + 32);
      v379 = *(v348 + v228 + 48);
      v378[2] = v243;
      v378[1] = v242;
      v378[0] = v241;
      LODWORD(v240) = v224 + *(v378 + v240);
      v371[3] = v373;
      v371[2] = v238;
      v371[1] = v237;
      v371[0] = v236;
      v244 = BYTE1(v239) & 0xF;
      v245 = *(v371 + v244);
      v377[3] = v379;
      v377[2] = v243;
      v377[1] = v242;
      v377[0] = v241;
      if ((v240 | v233 | (v245 + *(v377 + v244))) < 0x10000)
      {
        v246 = v232;
      }

      else
      {
        v246 = 0;
      }

      if (v246 == 1)
      {
        MPSGetUShortDivisorMagicNumber();
        v248 = vmovl_u16(v247);
      }

      else
      {
        MPSGetUIntDivisorMagicNumber();
      }

      v248.i32[3] = 0;
      v249 = v205;
      v250 = 1 << v205;
      v251 = &v350[*MEMORY[0x277CD7428]];
      v252 = *v251;
      v253 = v251[1];
      v254 = v251[2];
      v255 = v251[3];
      v256 = v251[4];
      v257 = v251[5];
      v258 = v251[6];
      v259 = v251[7];
      v260 = &v350[*MEMORY[0x277CD73D8]];
      v261 = v260[1] & 0xF;
      v367[7] = v259;
      v367[6] = v258;
      v367[5] = v257;
      v367[4] = v256;
      v367[3] = v255;
      v367[2] = v254;
      v367[1] = v253;
      v367[0] = v252;
      v262 = *(v367 + v261);
      v263 = v260[2] & 0xF;
      v366[7] = v259;
      v366[6] = v258;
      v366[5] = v257;
      v366[4] = v256;
      v366[3] = v255;
      v366[2] = v254;
      v366[1] = v253;
      v366[0] = v252;
      v264 = *(v366 + v263);
      v389[0] = v57;
      v389[1] = v346;
      v389[2] = v58;
      v390 = v326;
      v391 = v325;
      v392 = v321;
      v393 = v322;
      v394 = v323;
      v395 = v320;
      v396 = v262;
      v397 = v264;
      v398 = v335;
      v399 = v340;
      v400 = v62 + 1;
      v401 = v342;
      v402 = v248;
      v403 = v318;
      v404 = v316;
      v405 = v319;
      v406 = v317;
      v407 = v210;
      LOBYTE(v349) = v249;
      if (v249)
      {
        v265 = 4 * ((v315 + 31) / v315);
        v266 = v333 * v338;
        v267 = v309 * v303 * v266;
        v268 = (v250 >> 1) * v312;
        if (!v328)
        {
          v341 = v268 * v267 * v265;
LABEL_628:
          v336 = v304;
          v192 = v389;
          v193 = 80;
          goto LABEL_629;
        }

        v341 = v268 * (v267 + v266) * v265;
      }

      else
      {
        v341 = 0;
      }

      if ((v328 & 0xFFFFFFFD) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_628;
    }

    if (v57 <= 0x80)
    {
      v194 = v346;
      if (v346 >= 4)
      {
        v195 = 3;
      }

      else
      {
        v195 = 4;
      }

      v196 = 4;
      v197 = 1;
      v198 = 1;
      goto LABEL_579;
    }

    if (v57 <= 0x380)
    {
      v194 = v346;
      if (v346 >= 4)
      {
        v197 = 1;
      }

      else
      {
        v197 = 4;
      }

      v198 = 2;
      if (v346 < 4)
      {
        v196 = 2;
      }

      else
      {
        v196 = 3;
      }

      if (v346 >= 4)
      {
        v195 = 2;
      }

      else
      {
        v195 = 4;
      }

      goto LABEL_579;
    }

    if (v57 < 0xB81)
    {
      v196 = 1;
      v198 = 2;
      v197 = 4;
      v195 = 4;
LABEL_554:
      v194 = v346;
LABEL_579:
      v200 = 0;
      *&v432[0] = __PAIR64__(v194, v198);
      v199 = 1;
      *(&v432[0] + 1) = v197 | 0x100000000;
      *&v432[1] = __PAIR64__(v195, v196);
      *(&v432[1] + 8) = xmmword_239B0A890;
      *(&v432[2] + 1) = 32;
      v201 = 2;
      v315 = 32;
      v89 = v432;
      goto LABEL_580;
    }

    if (v57 > 0x1C00)
    {
      v194 = v346;
      v197 = 1;
      if (v346 == 1)
      {
        v196 = 2;
      }

      else
      {
        v196 = 1;
      }

      v195 = 2;
      v198 = 3;
      goto LABEL_579;
    }

    v194 = v346;
    if (v346 > 3)
    {
      switch(v346)
      {
        case 4:
          v196 = 0;
          v197 = 2;
          if (v58 < 0x381)
          {
            v195 = 2;
          }

          else
          {
            v195 = 3;
          }

          v198 = 2;
          goto LABEL_579;
        case 5:
          v195 = 4;
          v198 = 2;
          goto LABEL_578;
        case 6:
          v195 = 4;
          v198 = 2;
          v197 = 1;
          v196 = 1;
          goto LABEL_554;
      }
    }

    else
    {
      if ((v346 - 2) < 2)
      {
        v195 = 2;
        v198 = 4;
LABEL_578:
        v197 = 1;
        v196 = 1;
        goto LABEL_579;
      }

      if (v346 == 1)
      {
        v196 = 0;
        v195 = 3;
        v197 = 2;
        v198 = 2;
        goto LABEL_554;
      }
    }

    if (v346 < 7)
    {
      v196 = 0;
      v195 = 3;
      v198 = 2;
    }

    else
    {
      v196 = v346 == 7;
      v195 = 2;
      v198 = 4;
    }

    v197 = 1;
    goto LABEL_554;
  }

  v330 = v86;
  v319 = v79 % v83;
  v317 = v78 % v340;
  v318 = v79 / v83;
  v316 = v78 / v340;
  if (v346 <= 8)
  {
    goto LABEL_402;
  }

LABEL_404:
  v123 = *(v313 + 1472);
  if (v123 <= 21 && v89 != 0)
  {
    v129 = *(v89 + 28);
    v130 = *(v89 + 6) != 0;
    v131 = v340;
LABEL_424:
    v125 = *v89;
    v126 = *(v89 + 1);
    v127 = *(v89 + 2);
    v128 = *(v89 + 3);
    goto LABEL_425;
  }

  v130 = v123 < 22;
  v131 = v340;
  if (v89)
  {
    goto LABEL_424;
  }

  if (v57 <= 0x800)
  {
    v125 = 2;
  }

  else
  {
    v125 = 4;
  }

  if (v123 < 18)
  {
    v202 = v58 < 0x4000 && v57 > 0x4000;
    v128 = 1;
    if (v202)
    {
      v127 = 1;
    }

    else
    {
      v127 = 2;
    }

    v126 = v125;
  }

  else
  {
    if (v123 > 21)
    {
      v126 = 1;
    }

    else
    {
      v126 = v125;
    }

    if (v123 <= 21)
    {
      v125 = 4;
    }

    else
    {
      v125 = 2;
    }

    if (v123 <= 21)
    {
      v127 = 1;
    }

    else
    {
      v127 = 2;
    }

    v128 = v127;
  }

LABEL_425:
  if (v123 <= 21)
  {
    v132 = 3;
  }

  else
  {
    v132 = 4;
  }

  v133 = v130 ^ 1;
  v134 = (v125 * v127) << v132 << (v130 ^ 1);
  v135 = (v128 * v126) << v132;
  if (v89)
  {
    v311 = v126;
    v314 = v125;
    v136 = *(v89 + 4);
    v137 = 3;
    if (v123 > 21)
    {
      v137 = 4;
    }

    v138 = v58 >> v137;
    v139 = v138 - 1;
    if (v138 <= 1)
    {
      goto LABEL_432;
    }

LABEL_470:
    v140 = 64 - __clz(v139);
    if (v89)
    {
      goto LABEL_433;
    }

    goto LABEL_471;
  }

  LODWORD(v142) = v125 << v132 << v133;
  if (v57 >= v134)
  {
    v142 = v134;
  }

  else
  {
    v142 = v142;
  }

  if (v57 < v134)
  {
    v127 = 1;
  }

  v143 = v57 >= v142;
  if (v57 >= v142)
  {
    v142 = v142;
  }

  else
  {
    v142 = ((2 * v127) << v132 << v133);
  }

  if (!v143)
  {
    v125 = 2;
  }

  if (v57 >= v142)
  {
    v134 = v142;
  }

  else
  {
    v134 = v127 << v132 << v133;
  }

  if (v57 < v142)
  {
    v144 = 1;
  }

  else
  {
    v144 = v125;
  }

  v314 = v144;
  LODWORD(v145) = v126 << v132;
  if (v346 >= v135)
  {
    v145 = v135;
  }

  else
  {
    v145 = v145;
  }

  if (v346 < v135)
  {
    v128 = 1;
  }

  v146 = v346 >= v145;
  if (v346 >= v145)
  {
    v145 = v145;
  }

  else
  {
    v145 = ((2 * v128) << v132);
  }

  if (v146)
  {
    v147 = v126;
  }

  else
  {
    v147 = 2;
  }

  if (v346 >= v145)
  {
    v135 = v145;
  }

  else
  {
    v135 = v128 << v132;
  }

  if (v346 < v145)
  {
    v148 = 1;
  }

  else
  {
    v148 = v147;
  }

  v311 = v148;
  v136 = 2 * ((v123 - 22) > 0xFFFFFFFB);
  v149 = 3;
  if (v123 > 21)
  {
    v149 = 4;
  }

  v138 = v58 >> v149;
  v139 = v138 - 1;
  if (v138 > 1)
  {
    goto LABEL_470;
  }

LABEL_432:
  v140 = (v138 == 0) << 63;
  if (v89)
  {
LABEL_433:
    v141 = *(v89 + 5);
    goto LABEL_479;
  }

LABEL_471:
  if (v58 > 0x4000)
  {
    v150 = 1;
  }

  else
  {
    v150 = 2;
  }

  if (v123 > 21)
  {
    v150 = 2;
  }

  if (v140 >= v150)
  {
    LOBYTE(v140) = v150;
  }

  v141 = 1 << v140;
LABEL_479:
  v349 = v136;
  v151 = v141 << v136 << v130;
  v307 = v130;
  v308 = v123;
  LODWORD(v338) = v127;
  LODWORD(v333) = v128;
  if (v57)
  {
    v152 = v134 - 1;
    v153 = v131 - (v78 % v340);
    if (v153 >= v57)
    {
      v154 = v57;
    }

    else
    {
      v154 = v153;
    }

    v155 = v154 % v134 != 0;
    v156 = (v152 + v154) / v134;
    if (v57 <= v154)
    {
      v159 = (v152 + v154) / v134;
    }

    else
    {
      v157 = v135;
      v158 = 0;
      v159 = (v152 + v154) / v134;
      do
      {
        LODWORD(v160) = v154 + v131;
        if (v154 + v131 >= v57)
        {
          v160 = v57;
        }

        else
        {
          v160 = v160;
        }

        v155 |= (v160 - v154) % v134 != 0;
        if (!v154)
        {
          LOWORD(v156) = (v160 - v154 + v152) / v134;
        }

        v159 += (v160 - v154 + v152) / v134;
        --v158;
        LODWORD(v154) = v160;
      }

      while (v57 > v160);
      v135 = v157;
    }

    v161 = v151 << v132;
    v162 = v87;
    if (!v58)
    {
      goto LABEL_505;
    }

    goto LABEL_496;
  }

  LOWORD(v156) = 0;
  v159 = 0;
  v161 = v151 << v132;
  v162 = v87;
  if (v58)
  {
LABEL_496:
    if (v335 - v162 >= v58)
    {
      v163 = v58;
    }

    else
    {
      v163 = (v335 - v162);
    }

    v164 = v163 % v161 != 0;
    if (v58 > v163)
    {
      v165 = 0;
      do
      {
        LODWORD(v166) = v163 + v335;
        if (v163 + v335 >= v58)
        {
          v166 = v58;
        }

        else
        {
          v166 = v166;
        }

        v164 |= (v166 - v163) % v161 != 0;
        --v165;
        LODWORD(v163) = v166;
      }

      while (v58 > v166);
    }
  }

LABEL_505:
  v167 = (v346 + v135 - 1) / v135;
  v301 = v130 ^ 1;
  v306 = v135;
  if (v89)
  {
    v169 = *(v89 + 13);
    v168 = *(v89 + 14);
  }

  else
  {
    if (v159 <= 4)
    {
      v169 = 1;
    }

    else
    {
      v169 = 2;
    }

    if (v167 <= 4)
    {
      v168 = 1;
    }

    else
    {
      v168 = 2;
    }
  }

  v302 = (v167 + v168 - 1) / v168;
  MPSGetUIntDivisorMagicNumber();
  v305 = v170;
  MPSGetUIntDivisorMagicNumber();
  v171 = MEMORY[0x277CD7428];
  v172 = &v350[*MEMORY[0x277CD7428]];
  v173 = *v172;
  v174 = v172[1];
  v175 = v172[2];
  v176 = v172[3];
  v177 = v172[4];
  v178 = v172[5];
  v179 = v172[6];
  v180 = v172[7];
  v181 = &v350[*MEMORY[0x277CD73D8]];
  v182 = v181[1] & 0xF;
  v365[7] = v180;
  v365[6] = v179;
  v365[5] = v178;
  v365[4] = v177;
  v365[3] = v176;
  v365[2] = v175;
  v365[1] = v174;
  v365[0] = v173;
  v183 = *(v365 + v182);
  v184 = v181[2] & 0xF;
  v364[7] = v180;
  v364[6] = v179;
  v364[5] = v178;
  v364[4] = v177;
  v364[3] = v176;
  v364[2] = v175;
  v364[1] = v174;
  v364[0] = v173;
  v185 = *(v364 + v184);
  v408[2] = v58;
  v409 = v326;
  v410 = v325;
  v411 = v321;
  v412 = v322;
  v413 = v323;
  v414 = v320;
  v415 = v183;
  v416 = v185;
  v417 = v335;
  v418 = v340;
  v419 = v62 + 1;
  v425 = __clz(v168) ^ 0x3F;
  v427 = v318;
  v428 = v316;
  v429 = v319;
  v430 = v317;
  v431 = v156;
  v186 = v305;
  HIDWORD(v186) = 0;
  HIDWORD(v187) = 0;
  v408[0] = v57;
  v408[1] = v346;
  v420 = v342;
  if (v308 <= 17)
  {
    v188 = 2 * v161 * v306;
  }

  else
  {
    v188 = 0;
  }

  v421 = v186;
  v422 = v187;
  v423 = v168;
  v424 = v169;
  v426 = 0x3000200010000;
  v338 = v338;
  v333 = v333;
  if (v349)
  {
    v189 = 8;
    if (v308 > 21)
    {
      v189 = 10;
    }

    if (v188 <= v311 * v314 * v338 * v333 * (((1 << v349) >> 1) << (v189 | v301)))
    {
      v188 = v311 * v314 * v338 * v333 * (((1 << v349) >> 1) << (v189 | v301));
    }
  }

  v341 = v188;
  if (v307)
  {
    if (*&v350[*MEMORY[0x277CD73C8]] == 268435472 && !*v181)
    {
      v190 = [*(v345 + 232) finalOp];
      if ((*(*v190 + 16))(v190))
      {
        *&v350[8 * (*&v350[*MEMORY[0x277CD73D8]] & 0xF) + *v171];
      }
    }
  }

  if ((v328 != 0) | v330 & 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v336 = v168 * v169;
  v191 = v302 * ((v159 + v169 - 1) / v169);
  v192 = v408;
  v193 = 112;
LABEL_629:
  v269 = *&v350[*MEMORY[0x277CD73C8]];
  if (v269 > 285212703)
  {
    if (v269 <= 536870915)
    {
      if (v269 > 301989895)
      {
        if (v269 == 301989896)
        {
          v270 = 16;
          goto LABEL_673;
        }

        if (v269 == 335544328)
        {
          v270 = 17;
          goto LABEL_673;
        }
      }

      else
      {
        if (v269 == 285212704)
        {
          v270 = 13;
          goto LABEL_673;
        }

        if (v269 == 285212736)
        {
          v270 = 14;
          goto LABEL_673;
        }
      }
    }

    else if (v269 <= 536870927)
    {
      if (v269 == 536870916)
      {
        v270 = 0;
        goto LABEL_673;
      }

      if (v269 == 536870920)
      {
        v270 = 1;
        goto LABEL_673;
      }
    }

    else
    {
      switch(v269)
      {
        case 536870928:
          v270 = 2;
          goto LABEL_673;
        case 536870944:
          v270 = 3;
          goto LABEL_673;
        case 536870976:
          v270 = 4;
          goto LABEL_673;
      }
    }
  }

  else if (v269 <= 31)
  {
    if (v269 > 7)
    {
      if (v269 == 8)
      {
        v270 = 6;
        goto LABEL_673;
      }

      if (v269 == 16)
      {
        v270 = 7;
        goto LABEL_673;
      }
    }

    else
    {
      if (v269 == -1879048176)
      {
        v270 = 12;
        goto LABEL_673;
      }

      if (v269 == 4)
      {
        v270 = 5;
        goto LABEL_673;
      }
    }
  }

  else if (v269 <= 268435463)
  {
    if (v269 == 32)
    {
      v270 = 8;
      goto LABEL_673;
    }

    if (v269 == 64)
    {
      v270 = 9;
      goto LABEL_673;
    }
  }

  else
  {
    switch(v269)
    {
      case 268435464:
        v270 = 15;
        goto LABEL_673;
      case 268435472:
        v270 = 10;
        goto LABEL_673;
      case 268435488:
        v270 = 11;
        goto LABEL_673;
    }
  }

  v270 = 18;
LABEL_673:
  v271 = [v353 count];
  *&v272 = -1;
  *(&v272 + 1) = -1;
  v385 = v272;
  v382 = v272;
  v381 = v272;
  v384 = v272;
  v383 = v272;
  *&v385 = *(v339 + 72) | 0x10000;
  *(&v382 + 1) = v270;
  *&v381 = v271;
  v299 = *(v327 + *MEMORY[0x277CD7360]);
  v300 = *(v327 + *MEMORY[0x277CD7368]);
  v297 = *(v345 + 232);
  MPSLibrary::CreateUberShaderKey();
  v347 = v193;
  [v334 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v297, v299, v300, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v334, v345, 3, 1, 0);
  v273 = [v353 count];
  v445 = 0u;
  v444 = 0u;
  v443 = 0u;
  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  v439 = 0u;
  v438 = 0u;
  v437 = 0u;
  v436 = 0u;
  v435 = 0u;
  v434 = 0u;
  v433 = 0u;
  memset(v432, 0, sizeof(v432));
  if (v271)
  {
    v274 = v273;
    for (i = 0; i < v271; i += v277)
    {
      if (v274 <= i)
      {
        v276 = 0;
        if (v271 - i >= 0x20)
        {
          v277 = 32;
        }

        else
        {
          v277 = v271 - i;
        }

        v278 = v277;
        if (!v277)
        {
          goto LABEL_684;
        }
      }

      else
      {
        if (v274 - i >= 0x20)
        {
          v276 = 32;
        }

        else
        {
          v276 = v274 - i;
        }

        [v353 getObjects:v432 range:{i, v276}];
        if (v271 - i >= 0x20)
        {
          v277 = 32;
        }

        else
        {
          v277 = v271 - i;
        }

        v278 = v277 - v276;
        if (v277 == v276)
        {
          goto LABEL_684;
        }
      }

      bzero(v432 + 8 * v276, 8 * v278);
LABEL_684:
      [v334 setTextures:v432 withRange:{i, v277}];
    }
  }

  [v334 setBytes:v192 length:v347 atIndex:28];
  [v334 setBuffer:objc_msgSend(v350 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v350, 0, 3, 0, 0) + *(v345 + 192), 26}];
  if ((atomic_load_explicit(&qword_27DF86830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86830))
  {
    unk_27DF868B8 = 0u;
    xmmword_27DF868A8 = 0u;
    dword_27DF868C8 = 1065353216;
    qword_27DF868D0 = 850045863;
    unk_27DF868D8 = 0u;
    unk_27DF868E8 = 0u;
    unk_27DF868F8 = 0u;
    qword_27DF86908 = 0;
    __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF868A8, &dword_2399F7000);
    __cxa_guard_release(&qword_27DF86830);
  }

  [v334 setBuffer:MPSBufferCache::getBuffer(&xmmword_27DF868A8 offset:objc_msgSend(objc_msgSend(a3 atIndex:{"commandQueue"), "device"), 0x10uLL, 0), 0, 25}];
  if (v330)
  {
    makeStrideBytes();
    v279 = *&v324[*MEMORY[0x277CD73D8]];
    v363[7] = v437;
    v363[6] = v436;
    v363[5] = v435;
    v363[4] = v434;
    v363[3] = v433;
    v363[2] = v432[2];
    v363[1] = v432[1];
    v363[0] = v432[0];
    v280 = v279 & 0xF;
    v281 = *(v363 + v280);
    v362[7] = v437;
    v362[6] = v436;
    v362[5] = v435;
    v362[4] = v434;
    v362[3] = v433;
    v362[1] = v432[1];
    v362[2] = v432[2];
    v362[0] = v432[0];
    v282 = BYTE1(v279) & 0xF;
    v283 = *(v362 + v282);
    v361[6] = v436;
    v361[7] = v437;
    v361[4] = v434;
    v361[5] = v435;
    v361[2] = v432[2];
    v361[3] = v433;
    v361[0] = v432[0];
    v361[1] = v432[1];
    v284 = BYTE2(v279) & 0xF;
    v285 = *(v361 + v284);
    v360[6] = v436;
    v360[7] = v437;
    v360[4] = v434;
    v360[5] = v435;
    v360[2] = v432[2];
    v360[3] = v433;
    v360[0] = v432[0];
    v360[1] = v432[1];
    v286 = BYTE3(v279) & 0xF;
    v287 = *(v360 + v286);
    v288 = &v324[*MEMORY[0x277CD7418]];
    v289 = *v288;
    v290 = *(v288 + 1);
    v291 = *(v288 + 3);
    v358 = *(v288 + 2);
    v359 = v291;
    v357[0] = v289;
    v357[1] = v290;
    v292 = *(v357 + v280);
    v356[2] = v358;
    v356[3] = v291;
    v356[0] = v289;
    v356[1] = v290;
    v293 = *(v356 + v282);
    v355[2] = v358;
    v355[3] = v291;
    v355[0] = v289;
    v355[1] = v290;
    v294 = *(v355 + v284);
    v354[2] = v358;
    v354[3] = v291;
    v354[0] = v289;
    v354[1] = v290;
    [v334 setBuffer:objc_msgSend(v324 offset:"buffer") atIndex:{v283 * v293 + v281 * v292 + v285 * v294 + v287 * *(v354 + v286) + objc_msgSend(v324, "offset"), 24}];
  }

  if (v341)
  {
    [v334 setThreadgroupMemoryLength:(v341 + 15) & 0xFFFFFFF0 atIndex:0];
  }

  [v334 setBuffer:0 offset:0 atIndex:27];
  *&v432[0] = v336;
  *(&v432[0] + 1) = v191;
  *&v432[1] = 1;
  v380[0] = (32 << v349);
  v380[1] = v333;
  v380[2] = v338;
  [v334 dispatchThreadgroups:v432 threadsPerThreadgroup:v380];
  MPSLibrary::ReleaseComputeState();
  operator delete(0);
  operator delete(0);
  v295 = *MEMORY[0x277D85DE8];
}

void sub_239A6DAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
    v65 = a62;
    if (!a62)
    {
LABEL_3:
      v66 = a63;
      if (!a63)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v65 = a62;
    if (!a62)
    {
      goto LABEL_3;
    }
  }

  operator delete(v65);
  v66 = a63;
  if (!a63)
  {
LABEL_4:
    v67 = a64;
    if (!a64)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v66);
  v67 = a64;
  if (!a64)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v67);
  _Unwind_Resume(a1);
}

uint64_t isI8GEMVSupported(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
LABEL_47:
    result = 0;
    goto LABEL_48;
  }

  if (v1 && [*(a1 + 40) quantizationDataType] == 536870920 && -[MPSNDArrayQuantizationDescriptor quantizationScheme](v1, "quantizationScheme") == 1 || v2 && -[MPSNDArrayQuantizationDescriptor quantizationDataType](v2, "quantizationDataType") == 536870920 && -[MPSNDArrayQuantizationDescriptor quantizationScheme](v2, "quantizationScheme") == 1)
  {
    v65 = 0;
    v5 = [*(*(a1 + 56) + 232) graph];
    if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v5, v1, &v69, v2, &v66, &v65, v6) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v7 = v66;
    v8 = [*(*(a1 + 56) + 16) objectAtIndexedSubscript:v69];
    v9 = [*(*(a1 + 56) + 16) objectAtIndexedSubscript:v7];
    if (v71 != -1 || v68 != -1)
    {
      goto LABEL_47;
    }

    v10 = v9;
    v11 = v70;
    v12 = v67;
    if (v70 == -1)
    {
      v13 = 0;
      if (v67 != -1)
      {
LABEL_17:
        v14 = [*(*(a1 + 56) + 16) objectAtIndexedSubscript:v12];
        if (v11 == -1)
        {
          goto LABEL_31;
        }

LABEL_21:
        v15 = *MEMORY[0x277CD7410];
        v16 = *(v8 + v15);
        v17 = *(v8 + v15 + 16);
        v18 = *MEMORY[0x277CD73D8];
        v19 = *(v8 + v18);
        v20 = *(v8 + v15 + 32);
        v21 = *(v8 + v15 + 48);
        v63[2] = v20;
        v63[3] = v21;
        v63[0] = v16;
        v63[1] = v17;
        v22 = *(v63 + (v19 & 0xF));
        v23 = (v13 + v15);
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = v23[3];
        v28 = *(v13 + v18);
        v64[2] = v26;
        v64[3] = v27;
        v64[0] = v24;
        v64[1] = v25;
        if (v22 / *(v64 + (v28 & 0xF)) != 1 && ((v22 / *(v64 + (v28 & 0xF))) & 3) != 0)
        {
          goto LABEL_47;
        }

        v62[0] = v16;
        v62[1] = v17;
        v62[2] = v20;
        v62[3] = v21;
        v30 = *(v62 + (BYTE1(v19) & 0xF));
        v61[0] = v24;
        v61[1] = v25;
        v61[2] = v26;
        v61[3] = v27;
        v31 = v30 / *(v61 + (BYTE1(v28) & 0xF));
        if (v31 != 1 && (v31 & 3) != 0)
        {
          goto LABEL_47;
        }

LABEL_31:
        if (v12 != -1)
        {
          v33 = *MEMORY[0x277CD7410];
          v34 = *(v10 + v33);
          v35 = *(v10 + v33 + 16);
          v36 = *(v10 + v33 + 32);
          v37 = *(v10 + v33 + 48);
          v38 = *MEMORY[0x277CD73D8];
          v39 = *(v10 + v38);
          v56[2] = v36;
          v56[3] = v37;
          v56[0] = v34;
          v56[1] = v35;
          v40 = *(v56 + (BYTE1(v39) & 0xF));
          v41 = (v14 + v33);
          v42 = *v41;
          v43 = v41[1];
          v44 = v41[3];
          v45 = *(v14 + v38);
          v59 = v41[2];
          v60 = v44;
          v58[0] = v42;
          v58[1] = v43;
          v46 = *(v58 + (v45 & 0xF));
          v57[2] = v59;
          v57[3] = v44;
          v57[0] = v42;
          v57[1] = v43;
          v47 = *(v57 + (BYTE1(v45) & 0xF));
          if (v46 != 1 || v47 != 1)
          {
            v55[0] = v34;
            v55[1] = v35;
            v55[2] = v36;
            v55[3] = v37;
            v49 = *(v55 + (v39 & 0xF)) / v46;
            if (v49 != 1 && (v49 & 3) != 0)
            {
              goto LABEL_47;
            }

            v51 = v40 / v47;
            if (v51 != 1 && (v51 & 3) != 0)
            {
              goto LABEL_47;
            }
          }
        }

        goto LABEL_46;
      }
    }

    else
    {
      v13 = [*(*(a1 + 56) + 16) objectAtIndexedSubscript:v70];
      if (v12 != -1)
      {
        goto LABEL_17;
      }
    }

    v14 = 0;
    if (v11 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

LABEL_46:
  result = 1;
LABEL_48:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EncodeMatrixVectorMultiplyInt8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v424 = v8;
  v475 = v9;
  v626 = *MEMORY[0x277D85DE8];
  v465 = *(v7 + *MEMORY[0x277CD7370]);
  v457 = *(v7 + *MEMORY[0x277CD7350]);
  v10 = *(v7 + 168);
  v470 = v7;
  v11 = *(v7 + 176);
  v476 = v12;
  v13 = [*(v12 + 232) graph];
  v471 = v10;
  v466 = v11;
  if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v13, v10, &v621, v11, &v616, 0, v14) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = [*(v476 + 232) graph];
  v16 = **(v15 + 56);
  if (*(*(v15 + 56) + 8) == v16)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v18 = *(*v16 + 24);
  v17 = *v18;
  if (*(v18 + 8) == *v18)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v364 = *v17;
  v19 = v621;
  v20 = v616;
  v21 = [*(v476 + 16) objectAtIndexedSubscript:v621];
  v22 = [*(v476 + 16) objectAtIndexedSubscript:v20];
  v474 = *(v476 + 208);
  makeStrideBytes();
  v23 = *(v21 + *MEMORY[0x277CD73D8]);
  v549[7] = v559;
  v549[6] = v558;
  v549[5] = v557;
  v549[4] = v556;
  v549[3] = v555;
  v549[2] = v554;
  v549[1] = v553;
  v549[0] = v552;
  v24 = *(v549 + (v23 & 0xF));
  *&v25 = v24;
  v548[7] = v559;
  v548[6] = v558;
  v548[5] = v557;
  v548[4] = v556;
  v548[3] = v555;
  v548[2] = v554;
  v548[1] = v553;
  v548[0] = v552;
  v26 = *(v548 + (BYTE1(v23) & 0xF));
  *(&v25 + 1) = v26;
  v614 = v25;
  v547[7] = v559;
  v547[6] = v558;
  v547[5] = v557;
  v547[4] = v556;
  v547[3] = v555;
  v547[2] = v554;
  v547[1] = v553;
  v547[0] = v552;
  v27 = *(v547 + (BYTE2(v23) & 0xF));
  v615 = v27;
  makeStrideBytes();
  v28 = *(v22 + *MEMORY[0x277CD73D8]);
  v546[7] = v559;
  v546[6] = v558;
  v546[5] = v557;
  v546[4] = v556;
  v546[3] = v555;
  v546[2] = v554;
  v546[1] = v553;
  v546[0] = v552;
  v29 = *(v546 + (v28 & 0xF));
  *&v30 = v29;
  v545[7] = v559;
  v545[6] = v558;
  v545[5] = v557;
  v545[4] = v556;
  v545[3] = v555;
  v545[2] = v554;
  v545[1] = v553;
  v545[0] = v552;
  v31 = *(v545 + (BYTE1(v28) & 0xF));
  *(&v30 + 1) = v31;
  v612 = v30;
  v544[7] = v559;
  v544[6] = v558;
  v544[5] = v557;
  v544[4] = v556;
  v544[3] = v555;
  v544[2] = v554;
  v544[1] = v553;
  v544[0] = v552;
  v32 = *(v544 + (BYTE2(v28) & 0xF));
  v613 = v32;
  makeStrideBytes();
  v33 = *MEMORY[0x277CD73D8];
  v34 = *&v474[v33];
  v543[7] = v559;
  v543[6] = v558;
  v543[5] = v557;
  v543[4] = v556;
  v543[3] = v555;
  v543[2] = v554;
  v543[1] = v553;
  v543[0] = v552;
  v388 = *(v543 + (v34 & 0xF));
  v542[7] = v559;
  v542[6] = v558;
  v542[5] = v557;
  v542[4] = v556;
  v542[3] = v555;
  v542[2] = v554;
  v542[1] = v553;
  v542[0] = v552;
  v425 = *(v542 + (BYTE1(v34) & 0xF));
  v541[7] = v559;
  v541[6] = v558;
  v541[5] = v557;
  v541[4] = v556;
  v541[3] = v555;
  v541[2] = v554;
  v541[1] = v553;
  v541[0] = v552;
  v426 = *(v541 + (BYTE2(v34) & 0xF));
  v35 = *MEMORY[0x277CD7418];
  v36 = *(v21 + v35);
  v37 = *(v21 + v35 + 16);
  v38 = *(v21 + v35 + 32);
  v39 = *(v21 + v33);
  v40 = v39;
  v540 = *(v21 + v35 + 48);
  v539[2] = v38;
  v539[1] = v37;
  v539[0] = v36;
  v41 = *(v539 + (v39 & 0xF));
  v42 = BYTE1(v39);
  v538[3] = v540;
  v538[2] = v38;
  v538[1] = v37;
  v538[0] = v36;
  v43 = *(v538 + (BYTE1(v39) & 0xF));
  v537[3] = v540;
  v537[2] = v38;
  v537[1] = v37;
  v537[0] = v36;
  v44 = *(v537 + (BYTE2(v39) & 0xF));
  v45 = v26 * v43;
  v46 = *(v476 + 8);
  v47 = *(v46 + 80 * v19 + 64);
  v48 = *(v22 + v35);
  v49 = *(v22 + v35 + 16);
  v50 = *(v22 + v35 + 32);
  v51 = *(v22 + v33);
  v52 = v51;
  v536 = *(v22 + v35 + 48);
  v535[2] = v50;
  v535[1] = v49;
  v535[0] = v48;
  v53 = *(v535 + (v51 & 0xF));
  v54 = BYTE1(v51);
  v534[3] = v536;
  v534[2] = v50;
  v534[1] = v49;
  v534[0] = v48;
  v55 = *(v534 + (BYTE1(v51) & 0xF));
  v533[3] = v536;
  v533[2] = v50;
  v533[1] = v49;
  v533[0] = v48;
  v56 = *(v533 + (BYTE2(v51) & 0xF));
  v57 = v31 * v55;
  v58 = *(v46 + 80 * v20 + 64);
  v59 = &v474[v35];
  v60 = *v59;
  v61 = v59[1];
  v62 = v59[2];
  v63 = *&v474[v33];
  v64 = v63;
  v532 = v59[3];
  v531[2] = v62;
  v531[1] = v61;
  v531[0] = v60;
  v387 = *(v531 + (v63 & 0xF));
  v65 = BYTE1(v63);
  v530[3] = v532;
  v530[2] = v62;
  v530[1] = v61;
  v530[0] = v60;
  v386 = *(v530 + (BYTE1(v63) & 0xF));
  v66 = BYTE2(v63);
  v529[3] = v532;
  v529[2] = v62;
  v529[1] = v61;
  v529[0] = v60;
  v384 = *(v529 + (BYTE2(v63) & 0xF));
  v385 = *(v476 + 192);
  v67 = *MEMORY[0x277CD7410];
  v68 = *(v21 + v67);
  v69 = *(v21 + v67 + 16);
  v70 = *(v21 + v67 + 32);
  v71 = *(v21 + v67 + 48);
  v528[3] = v71;
  v528[2] = v70;
  v528[1] = v69;
  v528[0] = v68;
  v72 = *(v528 | (4 * (v42 == 1)));
  if (v72 >= *(v22 + v67 + 4 * (v52 != 0)))
  {
    v72 = *(v22 + v67 + 4 * (v52 != 0));
  }

  if (v42 >= v40)
  {
    if (v40)
    {
      v74 = 0;
    }

    else
    {
      v74 = v42 == 1;
    }

    v73 = !v74;
  }

  else
  {
    v73 = 1;
  }

  v436 = v73;
  v75 = v45 + v24 * v41;
  v76 = v57 + v29 * v53;
  v77 = v52;
  v78 = v52 != 0;
  if (v54 != 1)
  {
    v78 = 1;
  }

  if (v77 > v54)
  {
    v78 = 1;
  }

  v459 = v78;
  v79 = *MEMORY[0x277CD73C8];
  v80 = *(v22 + v79);
  if (v80 > 285212703)
  {
    v81 = v466;
    if (v80 <= 536870915)
    {
      if (v80 > 301989895)
      {
        if (v80 == 301989896)
        {
          v82 = 512;
          goto LABEL_62;
        }

        if (v80 == 335544328)
        {
          v82 = 544;
          goto LABEL_62;
        }
      }

      else
      {
        if (v80 == 285212704)
        {
          v82 = 416;
          goto LABEL_62;
        }

        if (v80 == 285212736)
        {
          v82 = 448;
          goto LABEL_62;
        }
      }
    }

    else if (v80 <= 536870927)
    {
      if (v80 == 536870916)
      {
        v406 = 0;
        goto LABEL_63;
      }

      if (v80 == 536870920)
      {
        v82 = 32;
        goto LABEL_62;
      }
    }

    else
    {
      switch(v80)
      {
        case 536870928:
          v82 = 64;
          goto LABEL_62;
        case 536870944:
          v82 = 96;
          goto LABEL_62;
        case 536870976:
          v82 = 128;
          goto LABEL_62;
      }
    }

LABEL_61:
    v82 = 576;
    goto LABEL_62;
  }

  v81 = v466;
  if (v80 <= 31)
  {
    if (v80 > 7)
    {
      if (v80 == 8)
      {
        v82 = 192;
        goto LABEL_62;
      }

      if (v80 == 16)
      {
        v82 = 224;
        goto LABEL_62;
      }
    }

    else
    {
      if (v80 == -1879048176)
      {
        v82 = 384;
        goto LABEL_62;
      }

      if (v80 == 4)
      {
        v82 = 160;
        goto LABEL_62;
      }
    }

    goto LABEL_61;
  }

  if (v80 <= 268435463)
  {
    if (v80 == 32)
    {
      v82 = 256;
      goto LABEL_62;
    }

    if (v80 == 64)
    {
      v82 = 288;
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (v80 == 268435464)
  {
    v82 = 480;
    goto LABEL_62;
  }

  if (v80 == 268435472)
  {
    v82 = 320;
    goto LABEL_62;
  }

  if (v80 != 268435488)
  {
    goto LABEL_61;
  }

  v82 = 352;
LABEL_62:
  v406 = v82;
LABEL_63:
  v83 = v75 + v27 * v44;
  v84 = v76 + v32 * v56;
  v85 = *(v21 + v79);
  if (v85 > 285212703)
  {
    if (v85 <= 536870915)
    {
      if (v85 > 301989895)
      {
        if (v85 == 301989896)
        {
          v86 = 0x4000;
          goto LABEL_107;
        }

        if (v85 == 335544328)
        {
          v86 = 17408;
          goto LABEL_107;
        }
      }

      else
      {
        if (v85 == 285212704)
        {
          v86 = 13312;
          goto LABEL_107;
        }

        if (v85 == 285212736)
        {
          v86 = 14336;
          goto LABEL_107;
        }
      }
    }

    else if (v85 <= 536870927)
    {
      if (v85 == 536870916)
      {
        v405 = 0;
        goto LABEL_108;
      }

      if (v85 == 536870920)
      {
        v86 = 1024;
        goto LABEL_107;
      }
    }

    else
    {
      switch(v85)
      {
        case 536870928:
          v86 = 2048;
          goto LABEL_107;
        case 536870944:
          v86 = 3072;
          goto LABEL_107;
        case 536870976:
          v86 = 4096;
          goto LABEL_107;
      }
    }

LABEL_106:
    v86 = 18432;
    goto LABEL_107;
  }

  if (v85 <= 31)
  {
    if (v85 > 7)
    {
      if (v85 == 8)
      {
        v86 = 6144;
        goto LABEL_107;
      }

      if (v85 == 16)
      {
        v86 = 7168;
        goto LABEL_107;
      }
    }

    else
    {
      if (v85 == -1879048176)
      {
        v86 = 12288;
        goto LABEL_107;
      }

      if (v85 == 4)
      {
        v86 = 5120;
        goto LABEL_107;
      }
    }

    goto LABEL_106;
  }

  if (v85 <= 268435463)
  {
    if (v85 == 32)
    {
      v86 = 0x2000;
      goto LABEL_107;
    }

    if (v85 == 64)
    {
      v86 = 9216;
      goto LABEL_107;
    }

    goto LABEL_106;
  }

  if (v85 == 268435464)
  {
    v86 = 15360;
    goto LABEL_107;
  }

  if (v85 == 268435472)
  {
    v86 = 10240;
    goto LABEL_107;
  }

  if (v85 != 268435488)
  {
    goto LABEL_106;
  }

  v86 = 11264;
LABEL_107:
  v405 = v86;
LABEL_108:
  v87 = v83 + v47;
  v88 = v84 + v58;
  v89 = *&v474[v79];
  if (v89 > 285212703)
  {
    if (v89 > 536870915)
    {
      if (v89 <= 536870927)
      {
        if (v89 == 536870916)
        {
          v404 = 0;
          v90 = v471;
          goto LABEL_154;
        }

        v90 = v471;
        if (v89 == 536870920)
        {
          v91 = 1;
          goto LABEL_153;
        }
      }

      else
      {
        if (v89 == 536870928)
        {
          v92 = 2;
          goto LABEL_149;
        }

        if (v89 == 536870944)
        {
          v92 = 3;
          goto LABEL_149;
        }

        v90 = v471;
        if (v89 == 536870976)
        {
          v91 = 4;
          goto LABEL_153;
        }
      }

LABEL_152:
      v91 = 18;
      goto LABEL_153;
    }

    if (v89 > 301989895)
    {
      if (v89 != 301989896)
      {
        v90 = v471;
        if (v89 == 335544328)
        {
          v91 = 17;
          goto LABEL_153;
        }

        goto LABEL_152;
      }

      v92 = 16;
    }

    else
    {
      if (v89 != 285212704)
      {
        v90 = v471;
        if (v89 == 285212736)
        {
          v91 = 14;
          goto LABEL_153;
        }

        goto LABEL_152;
      }

      v92 = 13;
    }

LABEL_149:
    v404 = v92;
    v90 = v471;
    goto LABEL_154;
  }

  if (v89 <= 31)
  {
    if (v89 > 7)
    {
      v90 = v471;
      if (v89 == 8)
      {
        v91 = 6;
        goto LABEL_153;
      }

      if (v89 == 16)
      {
        v91 = 7;
        goto LABEL_153;
      }

      goto LABEL_152;
    }

    if (v89 != -1879048176)
    {
      v90 = v471;
      if (v89 == 4)
      {
        v91 = 5;
        goto LABEL_153;
      }

      goto LABEL_152;
    }

    v92 = 12;
    goto LABEL_149;
  }

  if (v89 <= 268435463)
  {
    v90 = v471;
    if (v89 == 32)
    {
      v91 = 8;
      goto LABEL_153;
    }

    if (v89 == 64)
    {
      v91 = 9;
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  if (v89 == 268435464)
  {
    v92 = 15;
    goto LABEL_149;
  }

  if (v89 == 268435472)
  {
    v92 = 10;
    goto LABEL_149;
  }

  v90 = v471;
  if (v89 != 268435488)
  {
    goto LABEL_152;
  }

  v91 = 11;
LABEL_153:
  v404 = v91;
LABEL_154:
  v93 = *&v474[v67];
  v94 = *&v474[v67 + 16];
  v95 = *&v474[v67 + 32];
  v527 = *&v474[v67 + 48];
  v526[2] = v95;
  v526[1] = v94;
  v526[0] = v93;
  v96 = *(v526 + (v64 & 0xF));
  v525[3] = v527;
  v525[2] = v95;
  v525[1] = v94;
  v525[0] = v93;
  v97 = *(v525 + (v65 & 0xF));
  v524[0] = v68;
  v524[1] = v69;
  v524[2] = v70;
  v524[3] = v71;
  v462 = *(v524 + (v40 & 0xF));
  v98 = v96 == v72;
  v472 = v96 == v72;
  v523[3] = v527;
  v523[2] = v95;
  v523[1] = v94;
  v523[0] = v93;
  v421 = *(v523 + (v66 & 0xF));
  if (v96 == v72)
  {
    v99 = v97;
  }

  else
  {
    v99 = v96;
  }

  v461 = v99;
  if (v96 == v72)
  {
    v100 = v21;
  }

  else
  {
    v100 = v22;
  }

  v454 = v100;
  if (v96 == v72)
  {
    v101 = v22;
  }

  else
  {
    v101 = v21;
  }

  v102 = !v459;
  if (v96 == v72)
  {
    v103 = v88;
  }

  else
  {
    v103 = v87;
  }

  v394 = v103;
  if (v96 == v72)
  {
    v104 = v87;
  }

  else
  {
    v104 = v88;
  }

  v393 = v104;
  v105 = &v612;
  if (v96 == v72)
  {
    v106 = &v614;
  }

  else
  {
    v106 = &v612;
  }

  if (!v98)
  {
    v105 = &v614;
  }

  v610 = *v106;
  v611 = *(v106 + 2);
  v608 = *v105;
  v107 = *&v101[*MEMORY[0x277CD7408]];
  v108 = *&v101[v67];
  v609 = *(v105 + 2);
  v458 = v101;
  v363 = *&v101[v33];
  v469 = v72;
  if (v90 && (v109 = [(MPSNDArrayAffineQuantizationDescriptor *)v90 hasMinValue], v81 = v466, v109))
  {
    v409 = 1;
  }

  else if (v81)
  {
    v409 = [(MPSNDArrayAffineQuantizationDescriptor *)v81 hasMinValue];
  }

  else
  {
    v409 = 0;
  }

  v432 = v624;
  v449 = v625;
  v433 = v618;
  v434 = v623;
  v110 = v617;
  v431 = v619;
  v448 = v620;
  v438 = v617;
  v383 = v622;
  if (v622 == -1)
  {
    v111 = 0;
    if (v623.i64[0] != -1)
    {
LABEL_182:
      v112 = [*(v476 + 16) objectAtIndexedSubscript:?];
      v110 = v438;
      if (v438 != -1)
      {
        goto LABEL_183;
      }

      goto LABEL_189;
    }
  }

  else
  {
    v111 = [*(v476 + 16) objectAtIndexedSubscript:?];
    v110 = v438;
    if (v434.i64[0] != -1)
    {
      goto LABEL_182;
    }
  }

  v112 = 0;
  if (v110 != -1)
  {
LABEL_183:
    v113 = [*(v476 + 16) objectAtIndexedSubscript:v110];
    if (v433.i64[0] != -1)
    {
      goto LABEL_184;
    }

    goto LABEL_190;
  }

LABEL_189:
  v113 = 0;
  if (v433.i64[0] != -1)
  {
LABEL_184:
    v467 = [*(v476 + 16) objectAtIndexedSubscript:?];
    if (v432 != -1)
    {
      goto LABEL_185;
    }

LABEL_191:
    v450 = 0;
    if (v449 == -1)
    {
      goto LABEL_193;
    }

    goto LABEL_192;
  }

LABEL_190:
  v467 = 0;
  if (v432 == -1)
  {
    goto LABEL_191;
  }

LABEL_185:
  v450 = [*(v476 + 16) objectAtIndexedSubscript:?];
  if (v449 != -1)
  {
LABEL_192:
    [*(v476 + 16) objectAtIndexedSubscript:v449];
  }

LABEL_193:
  if (v431 == -1)
  {
    v440 = 0;
    if (v448 == -1)
    {
      goto LABEL_198;
    }

    goto LABEL_197;
  }

  v440 = [*(v476 + 16) objectAtIndexedSubscript:?];
  if (v448 != -1)
  {
LABEL_197:
    [*(v476 + 16) objectAtIndexedSubscript:v448];
  }

LABEL_198:
  if (v111)
  {
    if (*(v21 + *MEMORY[0x277CD7410] + 4 * (*(v21 + *MEMORY[0x277CD73D8]) & 0xF)) % *(v111 + *MEMORY[0x277CD7410] + 4 * (*(v111 + *MEMORY[0x277CD73D8]) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    makeStrideBytes();
    v114 = MEMORY[0x277CD73D8];
    v115 = *MEMORY[0x277CD73D8];
    v116 = *(v111 + v115);
    v522[7] = v559;
    v522[6] = v558;
    v522[5] = v557;
    v522[4] = v556;
    v522[3] = v555;
    v522[2] = v554;
    v522[1] = v553;
    v522[0] = v552;
    v429 = *(v522 + (v116 & 0xF));
    v521[7] = v559;
    v521[6] = v558;
    v521[5] = v557;
    v521[4] = v556;
    v521[3] = v555;
    v521[2] = v554;
    v521[1] = v553;
    v521[0] = v552;
    v427 = *(v521 + (BYTE1(v116) & 0xF));
    v520[7] = v559;
    v520[6] = v558;
    v520[5] = v557;
    v520[4] = v556;
    v520[3] = v555;
    v520[2] = v554;
    v520[1] = v553;
    v520[0] = v552;
    v463 = *(v520 + (BYTE2(v116) & 0xF));
    v117 = *MEMORY[0x277CD7410];
    v118 = *(v21 + v117);
    v119 = *(v21 + v117 + 16);
    v120 = *(v21 + v117 + 32);
    v121 = *(v21 + v115);
    v519 = *(v21 + v117 + 48);
    v518[2] = v120;
    v518[1] = v119;
    v518[0] = v118;
    v455 = *(v518 + (v121 & 0xF));
    v122 = (v111 + v117);
    v123 = *v122;
    v124 = v122[1];
    v125 = v122[2];
    v126 = *(v111 + v115);
    v516 = v122[3];
    v515[2] = v125;
    v515[1] = v124;
    v515[0] = v123;
    v127 = *(v515 + (v126 & 0xF));
    v517[3] = v519;
    v517[2] = v120;
    v517[1] = v119;
    v517[0] = v118;
    v128 = *(v517 + (BYTE1(v121) & 0xF));
    v514[3] = v516;
    v514[2] = v125;
    v514[1] = v124;
    v514[0] = v123;
    v129 = *(v514 + (BYTE1(v126) & 0xF));
    v442 = *(v111 + *MEMORY[0x277CD73C8]);
    if (v450)
    {
      makeStrideBytes();
      v114 = MEMORY[0x277CD73D8];
      v130 = *(v450 + *MEMORY[0x277CD73D8]);
      v513[7] = v559;
      v513[6] = v558;
      v513[5] = v557;
      v513[4] = v556;
      v513[3] = v555;
      v513[2] = v554;
      v513[1] = v553;
      v513[0] = v552;
      v398 = *(v513 + (v130 & 0xF));
      v512[7] = v559;
      v512[6] = v558;
      v512[5] = v557;
      v512[4] = v556;
      v512[3] = v555;
      v512[2] = v554;
      v512[1] = v553;
      v512[0] = v552;
      v401 = *(v512 + (BYTE1(v130) & 0xF));
      v511[7] = v559;
      v511[6] = v558;
      v511[5] = v557;
      v511[4] = v556;
      v511[3] = v555;
      v511[2] = v554;
      v511[1] = v553;
      v511[0] = v552;
      v407 = *(v511 + (BYTE2(v130) & 0xF));
      v131 = *(v450 + *MEMORY[0x277CD73C8]);
      if (v442 != 536870920)
      {
        v355 = *(v450 + *MEMORY[0x277CD73C8]);
        v356 = MTLReportFailureTypeEnabled();
        v114 = MEMORY[0x277CD73D8];
        v131 = v355;
        if (v356)
        {
          MTLReportFailure();
          v114 = MEMORY[0x277CD73D8];
          v131 = v355;
        }
      }

      LOWORD(v132) = v131;
      if ((v131 & 0x10000000) == 0)
      {
        v357 = MTLReportFailureTypeEnabled();
        v114 = MEMORY[0x277CD73D8];
        if (v357)
        {
          MTLReportFailure();
          v114 = MEMORY[0x277CD73D8];
        }
      }

      v133 = *MEMORY[0x277CD7410];
      v134 = *(v450 + v133);
      v135 = *(v450 + v133 + 16);
      v136 = *(v450 + v133 + 32);
      v137 = *(v450 + v133 + 48);
      v138 = *v114;
      v139 = *(v450 + v138 + 1) & 0xF;
      v510[3] = v137;
      v510[2] = v136;
      v510[1] = v135;
      v510[0] = v134;
      v140 = *(v510 + v139);
      v141 = v472;
      if (v472)
      {
        v142 = 0;
      }

      else
      {
        v142 = v140;
      }

      if (!v472)
      {
        v140 = 0;
      }

      v422 = v140;
      v143 = *(v450 + v138);
      v509[3] = v137;
      v509[2] = v136;
      v509[1] = v135;
      v509[0] = v134;
      v144 = *(v111 + v133 + 4 * (*(v111 + v138) & 0xF)) / *(v509 + (v143 & 0xF));
      v419 = v144;
      if (v144 != 1)
      {
        if ((v144 & 3) != 0)
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v141 = v472;
          v114 = MEMORY[0x277CD73D8];
        }

        else
        {
          v141 = v472;
        }
      }
    }

    else
    {
      v142 = 0;
      v422 = 0;
      v419 = 1;
      LOWORD(v132) = 32;
      v141 = v472;
    }

    v418 = v455 / v127;
    v164 = *(v111 + *MEMORY[0x277CD7410] + 4 * (*(v111 + *v114 + 1) & 0xF));
    if (v141)
    {
      v165 = 0;
    }

    else
    {
      v165 = v111;
    }

    v439 = v165;
    if (v141)
    {
      v166 = v111;
    }

    else
    {
      v166 = 0;
    }

    v456 = v166;
    if (!v141)
    {
      v167 = *(v111 + *MEMORY[0x277CD7410] + 4 * (*(v111 + *v114 + 1) & 0xF));
    }

    v410 = v128 / v129;
    v145 = v142;
    if (v112)
    {
LABEL_238:
      makeStrideBytes();
      v114 = MEMORY[0x277CD73D8];
      v168 = *(v112 + *MEMORY[0x277CD73D8]);
      v508[7] = v559;
      v508[6] = v558;
      v508[5] = v557;
      v508[4] = v556;
      v508[3] = v555;
      v508[2] = v554;
      v508[1] = v553;
      v508[0] = v552;
      v416 = *(v508 + (v168 & 0xF));
      v507[7] = v559;
      v507[6] = v558;
      v507[5] = v557;
      v507[4] = v556;
      v507[3] = v555;
      v507[2] = v554;
      v507[1] = v553;
      v507[0] = v552;
      v414 = *(v507 + (BYTE1(v168) & 0xF));
      v506[7] = v559;
      v506[6] = v558;
      v506[5] = v557;
      v506[4] = v556;
      v506[3] = v555;
      v506[2] = v554;
      v506[1] = v553;
      v506[0] = v552;
      v446 = *(v506 + (BYTE2(v168) & 0xF));
      if (v113)
      {
        goto LABEL_239;
      }

LABEL_214:
      v444 = 0;
      v146 = 0;
      v412 = 0;
      v453 = 1;
      v452 = 1;
      v147 = 1;
      if (v467)
      {
        goto LABEL_256;
      }

      goto LABEL_215;
    }
  }

  else
  {
    v463 = 0;
    v427 = 0;
    v429 = 0;
    v439 = 0;
    v456 = 0;
    v145 = 0;
    v422 = 0;
    v419 = 1;
    LOWORD(v132) = 32;
    LOWORD(v442) = 32;
    v410 = 1;
    v418 = 1;
    v114 = MEMORY[0x277CD73D8];
    if (v112)
    {
      goto LABEL_238;
    }
  }

  v446 = 0;
  v414 = 0;
  v416 = 0;
  if (!v113)
  {
    goto LABEL_214;
  }

LABEL_239:
  v169 = v145;
  if (*(v22 + *MEMORY[0x277CD7410] + 4 * (*(v22 + *v114) & 0xF)) % *(v113 + *MEMORY[0x277CD7410] + 4 * (*(v113 + *v114) & 0xF)) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  makeStrideBytes();
  v170 = *MEMORY[0x277CD73D8];
  v171 = *(v113 + v170);
  v505[7] = v559;
  v505[6] = v558;
  v505[5] = v557;
  v505[4] = v556;
  v505[3] = v555;
  v505[2] = v554;
  v505[1] = v553;
  v505[0] = v552;
  v412 = *(v505 + (v171 & 0xF));
  v504[7] = v559;
  v504[6] = v558;
  v504[5] = v557;
  v504[4] = v556;
  v504[3] = v555;
  v504[2] = v554;
  v504[1] = v553;
  v504[0] = v552;
  v146 = *(v504 + (BYTE1(v171) & 0xF));
  v503[7] = v559;
  v503[6] = v558;
  v503[5] = v557;
  v503[4] = v556;
  v503[3] = v555;
  v503[2] = v554;
  v503[1] = v553;
  v503[0] = v552;
  v444 = *(v503 + (BYTE2(v171) & 0xF));
  v172 = *MEMORY[0x277CD7410];
  v173 = *(v22 + v172);
  v174 = *(v22 + v172 + 16);
  v175 = *(v22 + v172 + 32);
  v176 = *(v22 + v170);
  v502 = *(v22 + v172 + 48);
  v501[2] = v175;
  v501[1] = v174;
  v501[0] = v173;
  v177 = *(v501 + (v176 & 0xF));
  v178 = (v113 + v172);
  v179 = *v178;
  v180 = v178[1];
  v181 = v178[2];
  v182 = *(v113 + v170);
  v499 = v178[3];
  v498[2] = v181;
  v498[1] = v180;
  v498[0] = v179;
  v183 = *(v498 + (v182 & 0xF));
  v500[3] = v502;
  v500[2] = v175;
  v500[1] = v174;
  v500[0] = v173;
  v184 = *(v500 + (BYTE1(v176) & 0xF));
  v497[3] = v499;
  v497[2] = v181;
  v497[1] = v180;
  v497[0] = v179;
  v185 = *(v497 + (BYTE1(v182) & 0xF));
  v442 = *(v113 + *MEMORY[0x277CD73C8]);
  if (v440)
  {
    makeStrideBytes();
    v186 = MEMORY[0x277CD73D8];
    v187 = v440;
    v188 = *(v440 + *MEMORY[0x277CD73D8]);
    v496[7] = v559;
    v496[6] = v558;
    v496[5] = v557;
    v496[4] = v556;
    v496[3] = v555;
    v496[2] = v554;
    v496[1] = v553;
    v496[0] = v552;
    v392 = *(v496 + (v188 & 0xF));
    v495[7] = v559;
    v495[6] = v558;
    v495[5] = v557;
    v495[4] = v556;
    v495[3] = v555;
    v495[2] = v554;
    v495[1] = v553;
    v495[0] = v552;
    v390 = *(v495 + (BYTE1(v188) & 0xF));
    v494[7] = v559;
    v494[6] = v558;
    v494[5] = v557;
    v494[4] = v556;
    v494[3] = v555;
    v494[2] = v554;
    v494[1] = v553;
    v494[0] = v552;
    v395 = *(v494 + (BYTE2(v188) & 0xF));
    if (v442 != 536870920)
    {
      v358 = MTLReportFailureTypeEnabled();
      v186 = MEMORY[0x277CD73D8];
      v187 = v440;
      if (v358)
      {
        MTLReportFailure();
        v186 = MEMORY[0x277CD73D8];
        v187 = v440;
      }
    }

    v132 = *(v187 + *MEMORY[0x277CD73C8]);
    v189 = *MEMORY[0x277CD7410];
    v190 = *(v187 + v189);
    v191 = *(v187 + v189 + 16);
    v192 = *(v187 + v189 + 32);
    v193 = *(v187 + v189 + 48);
    v194 = *v186;
    v195 = *(v187 + v194);
    v493[3] = v193;
    v493[2] = v192;
    v493[1] = v191;
    v493[0] = v190;
    v196 = *(v493 + (v195 & 0xF));
    if (v472)
    {
      v169 = *(v493 + (v195 & 0xF));
    }

    v197 = v422;
    if (!v472)
    {
      v197 = *(v493 + (v195 & 0xF));
    }

    v422 = v197;
    v492[3] = v193;
    v492[2] = v192;
    v492[1] = v191;
    v492[0] = v190;
    v198 = *(v113 + v189 + 4 * (*(v113 + v194 + 1) & 0xF)) / *(v492 + (BYTE1(v195) & 0xF));
    v453 = v198;
    if (v198 != 1 && (v198 & 3) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    v453 = 1;
  }

  v199 = *(v113 + *MEMORY[0x277CD7410] + 4 * (*(v113 + *MEMORY[0x277CD73D8] + 1) & 0xF));
  v200 = v439;
  if (v472)
  {
    v200 = v113;
  }

  v439 = v200;
  v201 = v456;
  if (!v472)
  {
    v201 = v113;
  }

  v456 = v201;
  v202 = *(v113 + *MEMORY[0x277CD7410] + 4 * (*(v113 + *MEMORY[0x277CD73D8] + 1) & 0xF));
  v203 = v184 / v185;
  v147 = v177 / v183;
  v452 = v203;
  v145 = v169;
  if (v467)
  {
LABEL_256:
    makeStrideBytes();
    v204 = *(v467 + *MEMORY[0x277CD73D8]);
    v491[7] = v559;
    v491[6] = v558;
    v491[5] = v557;
    v491[4] = v556;
    v491[3] = v555;
    v491[2] = v554;
    v491[1] = v553;
    v491[0] = v552;
    v150 = *(v491 + (v204 & 0xF));
    v490[7] = v559;
    v490[6] = v558;
    v490[5] = v557;
    v490[4] = v556;
    v490[3] = v555;
    v490[2] = v554;
    v490[1] = v553;
    v490[0] = v552;
    v149 = *(v490 + (BYTE1(v204) & 0xF));
    v489[7] = v559;
    v489[6] = v558;
    v489[5] = v557;
    v489[4] = v556;
    v489[3] = v555;
    v489[2] = v554;
    v489[1] = v553;
    v489[0] = v552;
    v148 = *(v489 + (BYTE2(v204) & 0xF));
    v151 = v470;
    v152 = v472;
    v153 = v450;
    v154 = v440;
    if (v472)
    {
      goto LABEL_257;
    }

    goto LABEL_216;
  }

LABEL_215:
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v151 = v470;
  v152 = v472;
  v153 = v450;
  v154 = v440;
  if (v472)
  {
LABEL_257:
    v205 = v398;
    v206 = v401;
    if (!v153)
    {
      v205 = 0;
      v206 = 0;
    }

    v605 = v429;
    v606 = v427;
    if (v153)
    {
      v207 = v407;
    }

    else
    {
      v207 = 0;
    }

    v208 = v392;
    if (!v154)
    {
      v208 = 0;
    }

    v602 = v412;
    v603 = v146;
    v599 = v416;
    v600 = v414;
    v596 = v150;
    v597 = v149;
    v593 = v205;
    v594 = v206;
    v209 = v390;
    if (!v154)
    {
      v209 = 0;
    }

    v590 = v208;
    v591 = v209;
    v607 = v463;
    v604 = v444;
    if (v154)
    {
      v162 = v395;
    }

    else
    {
      v162 = 0;
    }

    v163 = !v459;
    v601 = v446;
    v102 = v436 ^ 1;
    v396 = v463;
    v399 = v148;
    v598 = v148;
    v430 = v419;
    v428 = v418;
    v402 = v207;
    v595 = v207;
    goto LABEL_270;
  }

LABEL_216:
  v155 = v154 == 0;
  v157 = v390;
  v156 = v392;
  if (!v154)
  {
    v156 = 0;
    v157 = 0;
  }

  v605 = v412;
  v606 = v146;
  v158 = v395;
  if (v155)
  {
    v158 = 0;
  }

  v159 = v153 == 0;
  v160 = v398;
  if (v159)
  {
    v160 = 0;
  }

  v602 = v429;
  v603 = v427;
  v599 = v150;
  v600 = v149;
  v596 = v416;
  v597 = v414;
  v593 = v156;
  v594 = v157;
  v161 = v401;
  if (v159)
  {
    v161 = 0;
  }

  v590 = v160;
  v591 = v161;
  if (v159)
  {
    v162 = 0;
  }

  else
  {
    v162 = v407;
  }

  v607 = v444;
  v163 = v436 ^ 1;
  v604 = v463;
  v444 = v463;
  v396 = v607;
  v399 = v446;
  v598 = v446;
  LODWORD(v446) = v148;
  v430 = v453;
  v601 = v148;
  v453 = v419;
  v428 = v452;
  v452 = v418;
  v402 = v158;
  v595 = v158;
LABEL_270:
  v210 = *(&v599 + v102);
  v211 = *(&v596 + v163);
  v212 = *(&v590 + v163);
  v213 = *(&v593 + v102);
  v592 = v162;
  v380 = v211;
  v381 = v212;
  v378 = v210;
  v379 = v213;
  v376 = *(&v605 + v102);
  v377 = *(&v602 + v163);
  if (v152)
  {
    v214 = *(v151 + 168);
    if (v214)
    {
      if ([*(v151 + 168) quantizationScheme] == 1)
      {
        if (!v111)
        {
          goto LABEL_291;
        }

        v215 = *(v111 + *MEMORY[0x277CD73D8]);
        v216 = (v111 + *MEMORY[0x277CD7410]);
        v217 = *v216;
        v218 = v216[1];
        v219 = v216[2];
        v220 = v216[3];
        v484[3] = v220;
        v484[2] = v219;
        v484[1] = v218;
        v484[0] = v217;
        if (*(v484 + (v215 & 0xF)) == 1)
        {
          v483[0] = v217;
          v483[1] = v218;
          v483[2] = v219;
          v483[3] = v220;
          v221 = *(v483 + (BYTE1(v215) & 0xF)) != 1;
          v222 = [v214 hasZeroPoint];
          if (v221)
          {
            v223 = 4;
          }

          else
          {
            v223 = 3;
          }
        }

        else
        {
LABEL_291:
          v222 = [v214 hasZeroPoint];
          v221 = 1;
          v223 = 4;
        }

        if (!v222)
        {
          v223 = v221;
        }
      }

      else
      {
        v223 = 6;
      }

      v420 = v223;
      v152 = v472;
      v234 = *(v470 + 176);
      if (v234)
      {
        goto LABEL_295;
      }
    }

    else
    {
      v420 = 6;
      v234 = *(v470 + 176);
      if (v234)
      {
LABEL_295:
        if ([v234 quantizationScheme] == 1)
        {
          if (!v113)
          {
            goto LABEL_315;
          }

          v239 = *(v113 + *MEMORY[0x277CD73D8]);
          v240 = (v113 + *MEMORY[0x277CD7410]);
          v241 = *v240;
          v242 = v240[1];
          v243 = v240[2];
          v244 = v240[3];
          v482[3] = v244;
          v482[2] = v243;
          v482[1] = v242;
          v482[0] = v241;
          if (*(v482 + (v239 & 0xF)) == 1)
          {
            v481[0] = v241;
            v481[1] = v242;
            v481[2] = v243;
            v481[3] = v244;
            v245 = *(v481 + (BYTE1(v239) & 0xF)) != 1;
            v246 = [v234 hasZeroPoint];
            if (v245)
            {
              v247 = 4;
            }

            else
            {
              v247 = 3;
            }
          }

          else
          {
LABEL_315:
            v246 = [v234 hasZeroPoint];
            v245 = 1;
            v247 = 4;
          }

          if (v246)
          {
            v235 = v247;
          }

          else
          {
            v235 = v245;
          }
        }

        else
        {
          v235 = 6;
        }

        v236 = v469;
        v237 = MEMORY[0x277CD73D8];
        v152 = v472;
        goto LABEL_320;
      }
    }

    v235 = 6;
    v236 = v469;
    v237 = MEMORY[0x277CD73D8];
LABEL_320:
    v258 = (*(v457 + 1476) >> 6) & 1;
    v259 = 1;
    v468 = 32;
    v464 = 1;
    goto LABEL_328;
  }

  v224 = *(v151 + 176);
  if (v224)
  {
    if ([*(v151 + 176) quantizationScheme] == 1)
    {
      if (!v113)
      {
        goto LABEL_302;
      }

      v225 = *(v113 + *MEMORY[0x277CD73D8]);
      v226 = (v113 + *MEMORY[0x277CD7410]);
      v227 = *v226;
      v228 = v226[1];
      v229 = v226[2];
      v230 = v226[3];
      v488[3] = v230;
      v488[2] = v229;
      v488[1] = v228;
      v488[0] = v227;
      if (*(v488 + (v225 & 0xF)) == 1)
      {
        v487[0] = v227;
        v487[1] = v228;
        v487[2] = v229;
        v487[3] = v230;
        v231 = *(v487 + (BYTE1(v225) & 0xF)) != 1;
        v232 = [v224 hasZeroPoint];
        if (v231)
        {
          v233 = 4;
        }

        else
        {
          v233 = 3;
        }
      }

      else
      {
LABEL_302:
        v232 = [v224 hasZeroPoint];
        v231 = 1;
        v233 = 4;
      }

      if (!v232)
      {
        v233 = v231;
      }
    }

    else
    {
      v233 = 6;
    }

    v420 = v233;
    v152 = v472;
    v238 = *(v470 + 168);
    if (!v238)
    {
      goto LABEL_312;
    }
  }

  else
  {
    v420 = 6;
    v238 = *(v470 + 168);
    if (!v238)
    {
      goto LABEL_312;
    }
  }

  v248 = [v238 quantizationScheme];
  v152 = v472;
  if (v248 == 1)
  {
    if (!v111)
    {
      goto LABEL_321;
    }

    v249 = *(v111 + *MEMORY[0x277CD73D8]);
    v250 = (v111 + *MEMORY[0x277CD7410]);
    v251 = *v250;
    v252 = v250[1];
    v253 = v250[2];
    v254 = v250[3];
    v486[3] = v254;
    v486[2] = v253;
    v486[1] = v252;
    v486[0] = v251;
    if (*(v486 + (v249 & 0xF)) == 1)
    {
      v485[0] = v251;
      v485[1] = v252;
      v485[2] = v253;
      v485[3] = v254;
      v255 = *(v485 + (BYTE1(v249) & 0xF)) != 1;
      v256 = [v238 hasZeroPoint];
      if (v255)
      {
        v257 = 4;
      }

      else
      {
        v257 = 3;
      }
    }

    else
    {
LABEL_321:
      v256 = [v238 hasZeroPoint];
      v255 = 1;
      v257 = 4;
    }

    if (v256)
    {
      v235 = v257;
    }

    else
    {
      v235 = v255;
    }

    v258 = (*(v457 + 1476) >> 6) & 1;
    v236 = v469;
    v237 = MEMORY[0x277CD73D8];
    v152 = v472;
    if (v459)
    {
      v259 = 1;
      v468 = 32;
      v464 = 1;
      goto LABEL_328;
    }

LABEL_327:
    v259 = 0;
    v468 = 16;
    v464 = 16;
    goto LABEL_328;
  }

LABEL_312:
  v258 = (*(v457 + 1476) >> 6) & 1;
  v235 = 6;
  if (!v459)
  {
    v236 = v469;
    v237 = MEMORY[0x277CD73D8];
    goto LABEL_327;
  }

  v259 = 1;
  v468 = 32;
  v464 = 1;
  v236 = v469;
  v237 = MEMORY[0x277CD73D8];
LABEL_328:
  v260 = 0;
  v261 = v459 & (v436 ^ 1) & !v152;
  if (v261 != 1 || v235 != 6)
  {
    goto LABEL_351;
  }

  v262 = (v456 + *MEMORY[0x277CD7410]);
  v263 = *v262;
  v264 = v262[1];
  v265 = *(v456 + *v237);
  v266 = v262[2];
  v267 = v262[3];
  v480[3] = v267;
  v480[2] = v266;
  v480[1] = v264;
  v480[0] = v263;
  if (*(v480 + (v265 & 0xF)) == 1)
  {
    v479[0] = v263;
    v479[1] = v264;
    v479[2] = v266;
    v479[3] = v267;
    v268 = *(v479 + (BYTE1(v265) & 0xF)) != 1;
    v269 = v420;
    if (v420 == 3)
    {
      goto LABEL_335;
    }
  }

  else
  {
    v268 = 1;
    v269 = v420;
    if (v420 == 3)
    {
      goto LABEL_335;
    }
  }

  if (v269)
  {
    v260 = 0;
    goto LABEL_351;
  }

LABEL_335:
  v260 = 0;
  if ((v462 & 3) != 0)
  {
    v268 = 1;
  }

  if (((v268 | v409) & 1) != 0 || v450 || v440 || v236 > 0x10)
  {
LABEL_351:
    v271 = *(v457 + 1472);
    if (v271 >= 24)
    {
      goto LABEL_343;
    }

    goto LABEL_352;
  }

  v270 = *MEMORY[0x277CD73C8];
  if (*&v458[v270] == 268435472)
  {
    v260 = *(v456 + v270) == 268435472;
    v271 = *(v457 + 1472);
    if (v271 >= 24)
    {
LABEL_343:
      if (v259)
      {
        v272 = 1;
      }

      else
      {
        v272 = 8;
      }

      v362 = v236 > 8;
      if (v236 <= 8)
      {
        v273 = 8;
      }

      else
      {
        v273 = 16;
      }

      v408 = v273;
LABEL_376:
      v278 = 0;
      v451 = 0;
      v285 = 4 * v468;
      v286 = v462 & 0xFFFFFFFC;
      v277 = 8;
      v365 = 16;
      v283 = 1;
      v276 = 1;
      v284 = v410;
LABEL_377:
      v415 = v276;
      v417 = v272;
      v441 = 0;
      v287 = v286;
      v372 = v283;
      LODWORD(v286) = v286 / v285;
      goto LABEL_378;
    }
  }

  else
  {
    v260 = 0;
    v271 = *(v457 + 1472);
    if (v271 >= 24)
    {
      goto LABEL_343;
    }
  }

LABEL_352:
  if (v259)
  {
    v272 = 1;
  }

  else
  {
    v272 = 8;
  }

  v362 = v236 > 8;
  if (v236 <= 8)
  {
    v274 = 8;
  }

  else
  {
    v274 = 16;
  }

  v408 = v274;
  v275 = !v260;
  if (v271 < 11)
  {
    v275 = 1;
  }

  if (v275)
  {
    goto LABEL_376;
  }

  if (v236 <= 3)
  {
    LOBYTE(v261) = 0;
  }

  if (v261)
  {
    v276 = 2;
    v277 = 128;
    if (v236 - 9 >= 8)
    {
      if (v236 - 4 <= 4)
      {
        v349 = v462 >> 10 > 6 && v461 == 7168;
        v350 = v349;
        v284 = v410;
        if (v349 && v421 == 1)
        {
          v278 = 0;
          v283 = 4;
          v272 = 1;
          v365 = 24;
          v276 = 1;
        }

        else
        {
          if (v421 != 3)
          {
            v350 = 0;
          }

          if (v350)
          {
            v283 = 4;
            v278 = 1;
            v365 = 24;
            v272 = 1;
            v276 = 1;
          }

          else
          {
            v278 = 0;
            v276 = 1;
            v365 = 16;
            v277 = 8;
            if (v462 >> 10 < 7)
            {
              v283 = 1;
            }

            else
            {
              v283 = 1;
              if (v461 >> 10 >= 7)
              {
                v283 = 8;
                v278 = 1;
                v365 = 32;
                v277 = 128;
                v272 = 1;
              }
            }
          }
        }

        goto LABEL_508;
      }

      v278 = 1;
      v365 = 16;
      v272 = 2;
      v283 = 1;
    }

    else
    {
      v278 = 0;
      v279 = v461 == 7168;
      v280 = v421 == 1;
      v281 = !v279 || !v280;
      if (v279 && v280)
      {
        v277 = 256;
      }

      else
      {
        v277 = 128;
      }

      if (v279 && v280)
      {
        v282 = 24;
      }

      else
      {
        v282 = 40;
      }

      v365 = v282;
      if (v281)
      {
        v283 = 2;
      }

      else
      {
        v283 = 4;
      }

      v272 = 1;
      v276 = 1;
    }

    v284 = v410;
LABEL_508:
    v319 = 32 * v272 * v276 * v283;
    goto LABEL_509;
  }

  if (v236 == 3)
  {
    v319 = 32;
    v277 = 4;
  }

  else if (v236 == 4)
  {
    v319 = 64;
    v277 = 1;
  }

  else
  {
    v319 = 32;
    v277 = 8;
  }

  v284 = v410;
  v278 = 0;
  v272 = v319 >> 5;
  v276 = 1;
  v365 = 16;
  v283 = 1;
LABEL_509:
  if (*(v470 + 208) == 3)
  {
    v351 = *(v470 + 200);
    if (v351)
    {
      v277 = v351[4];
      v278 = *(v351 + 29);
      v408 = *v351;
      v365 = v351[2];
      v272 = v351[8];
      v276 = v351[10];
      v283 = v351[12];
      if (v261)
      {
        v319 = v351[6];
      }

      else
      {
        if (v277 >= 8)
        {
          v277 = 8;
        }

        v319 = 32 * v272;
      }
    }
  }

  v468 = v319;
  v352 = *MEMORY[0x277CD73C8];
  v353 = *&v458[v352];
  if (v353 == 268435488)
  {
    v354 = *(v456 + v352);
    if (v354 == 268435472)
    {
      v286 = v462 & 0xFFFFFFFC;
      v451 = 1;
      if ((v261 & 1) == 0)
      {
        goto LABEL_520;
      }

      goto LABEL_526;
    }

    if (v354 == 268435488)
    {
      v286 = v462 & 0xFFFFFFFC;
      v451 = 1;
      if ((v261 & 1) == 0)
      {
        goto LABEL_520;
      }

      goto LABEL_526;
    }

    goto LABEL_525;
  }

  if (v353 != 268435472 || *(v456 + v352) != 268435488)
  {
LABEL_525:
    v286 = v462 & 0xFFFFFFFC;
    v451 = 1;
    if ((v261 & 1) == 0)
    {
      goto LABEL_520;
    }

    goto LABEL_526;
  }

  v286 = v462 & 0xFFFFFFFC;
  v451 = 1;
  if ((v261 & 1) == 0)
  {
LABEL_520:
    v285 = 128;
    goto LABEL_377;
  }

LABEL_526:
  v415 = v276;
  v417 = v272;
  v285 = 8;
  v441 = 1;
  v287 = v286;
  v372 = 1;
LABEL_378:
  v435 = v287;
  v411 = v277;
  v413 = v286;
  v375 = v277;
  v382 = v278;
  v391 = v283;
  v389 = v285;
  if (v152)
  {
    v288 = v436;
  }

  else
  {
    v288 = v459;
  }

  v289 = *(&v610 | (8 * (v288 ^ 1u)));
  if (v152)
  {
    v290 = v284;
  }

  else
  {
    v290 = v147;
  }

  HIDWORD(v373) = v290;
  v374 = v289;
  if (v152)
  {
    v291 = v147;
  }

  else
  {
    v291 = v284;
  }

  LODWORD(v373) = v291;
  if (v152)
  {
    v292 = v459;
  }

  else
  {
    v292 = v436;
  }

  v460 = *(&v608 | (8 * (v292 ^ 1u)));
  [v470 alpha];
  v294 = v293;
  v295 = v442 >> 3;
  v296 = v132 >> 3;
  v297 = *MEMORY[0x277CD7410];
  v298 = *MEMORY[0x277CD73D8];
  v299 = *&v474[4 * (v474[v298 + 2] & 0xF) + v297];
  v300 = v402 / v296;
  v301 = *&v454[v297];
  v302 = *&v454[v297 + 16];
  v303 = *&v454[v297 + 48];
  v304 = v454[v298 + 2] & 0xF;
  v477[2] = *&v454[v297 + 32];
  v477[3] = v303;
  v477[0] = v301;
  v477[1] = v302;
  if (*(v477 + v304) == 1)
  {
    v305 = 0;
  }

  else
  {
    v305 = v611;
  }

  v306 = &v458[v297];
  v307 = *v306;
  v308 = v306[1];
  v309 = v306[2];
  v310 = v306[3];
  v311 = v458[v298 + 2] & 0xF;
  v478[2] = v309;
  v478[3] = v310;
  v478[0] = v307;
  v478[1] = v308;
  if (*(v478 + v311) == 1)
  {
    v312 = 0;
  }

  else
  {
    v312 = v609;
  }

  if (DWORD2(v301) == 1)
  {
    v313 = 0;
  }

  else
  {
    v313 = v396 / v295;
  }

  if (DWORD2(v301) == 1)
  {
    v314 = 0;
  }

  else
  {
    v314 = v446;
  }

  if (DWORD2(v307) == 1)
  {
    v315 = 0;
  }

  else
  {
    v315 = v444 / v295;
  }

  if (DWORD2(v307) == 1)
  {
    v316 = 0;
  }

  else
  {
    v316 = v399;
  }

  if (v145)
  {
    v368 = v469 / v145;
  }

  else
  {
    v368 = 0;
  }

  v443 = v132 >> 3;
  v445 = v299;
  v447 = v314;
  v437 = v315;
  v403 = v316;
  v371 = v295;
  v397 = v305;
  v369 = v312;
  v370 = v313;
  if (v422)
  {
    v367 = v461 / v422;
  }

  else
  {
    v367 = 0;
  }

  if (DWORD2(v301) == 1)
  {
    LODWORD(v300) = 0;
  }

  v423 = v300;
  if (DWORD2(v307) == 1)
  {
    v317 = 0;
  }

  else
  {
    v317 = v162 / v296;
  }

  v400 = v317;
  if (v259)
  {
    v318 = 0;
  }

  else
  {
    v318 = 4;
  }

  if (v464 != 1 << v318 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v470 alpha];
  [v454 dataType];
  [v458 dataType];
  [v474 dataType];
  v320 = [*(v476 + 232) finalOp];
  if ((*(*v320 + 16))(v320))
  {
    v321 = (*(v364 + 8) != 268435488) << 16;
  }

  if (!v456)
  {
    v366 = v259 & v258;
    if (!v439)
    {
      goto LABEL_445;
    }

    goto LABEL_444;
  }

  v322 = *(v456 + *MEMORY[0x277CD73C8]);
  if (v322 > 301989895)
  {
    if (v322 == 301989896)
    {
LABEL_441:
      v366 = v259 & v258;
      if (!v439)
      {
        goto LABEL_445;
      }

LABEL_444:
      *(v439 + *MEMORY[0x277CD73C8]);
      goto LABEL_445;
    }

    if (v322 != 536870920)
    {
      goto LABEL_443;
    }

LABEL_439:
    v366 = v259 & v258;
    if (!v439)
    {
      goto LABEL_445;
    }

    goto LABEL_444;
  }

  switch(v322)
  {
    case -1879048176:
      break;
    case 268435464:
      goto LABEL_439;
    case 268435472:
      goto LABEL_441;
  }

LABEL_443:
  v366 = v259 & v258;
  if (v439)
  {
    goto LABEL_444;
  }

LABEL_445:
  v323 = *(v457 + 1472);
  v324 = [*(v476 + 232) finalOp];
  (*(*v324 + 16))(v324);
  *&v325 = -1;
  *(&v325 + 1) = -1;
  v588 = v325;
  v587 = v325;
  v586 = v325;
  v584 = -1;
  v583 = v325;
  v585 = v405 | v406 | v404;
  *&v588 = [*(v476 + 16) count] | ((*(v476 + 112) != 0) << 8) | 0x10000;
  v326 = (v389 + v435 - 1) / v389;
  v473 = v461 - 1;
  v327 = v318;
  v328 = (v464 + v461 - 1) >> v318;
  if (v451)
  {
    v360 = *(v470 + *MEMORY[0x277CD7360]);
    v361 = *(v470 + *MEMORY[0x277CD7368]);
    v359 = *(v476 + 232);
    MPSLibrary::CreateUberShaderKey();
  }

  else
  {
    v329 = (((v389 + v435 - 1) / v389) & 0x1F) << 6;
    if (v326 >= 0x20)
    {
      v329 = 0;
    }

    v330 = (32 * (v421 != 1)) | (16 * (v328 != 1)) | v329;
    v331 = ((v326 - v413) & 1) << 11;
    if (v326 >= 0x20)
    {
      v331 = 0;
    }

    v584 = v330 | v331 | ((v435 % (4 * (v468 << v327)) == 0) << 12);
    v360 = *(v470 + *MEMORY[0x277CD7360]);
    v361 = *(v470 + *MEMORY[0x277CD7368]);
    v359 = *(v476 + 232);
    MPSLibrary::CreateUberShaderKey();
  }

  v332 = v328;
  v333 = v417;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSSetNDArraysOnComputeEncoder(v475, v476, 3, 0, 0);
  [v475 setComputePipelineState:{PipelineStateForMPSKey, v359, v360, v361, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  [v475 setBuffer:objc_msgSend(v458 offset:"buffer") atIndex:{v394, 29}];
  [v475 setBuffer:objc_msgSend(v454 offset:"buffer") atIndex:{v393, 28}];
  if (v451)
  {
    v335 = v411;
    v336 = 2 * (v408 * v411);
    if (!v382)
    {
      v336 = 0;
    }

    if (v391 < 2)
    {
      if (!v382)
      {
LABEL_466:
        if ((v362 & v441) != 0)
        {
          v340 = 3;
        }

        else
        {
          v340 = 0;
        }

        if ((atomic_load_explicit(&qword_27DF86838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86838))
        {
          unk_27DF86920 = 0u;
          xmmword_27DF86910 = 0u;
          dword_27DF86930 = 1065353216;
          qword_27DF86938 = 850045863;
          qword_27DF86970 = 0;
          xmmword_27DF86940 = 0u;
          unk_27DF86950 = 0u;
          xmmword_27DF86960 = 0u;
          __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86910, &dword_2399F7000);
          __cxa_guard_release(&qword_27DF86838);
        }

        os_unfair_lock_lock(&_MergedGlobals_31);
        Buffer = MPSBufferCache::getBuffer(&xmmword_27DF86910, [objc_msgSend(v424 "commandQueue")], (4 * v335) << v340, 0);
        [v475 setBuffer:Buffer offset:0 atIndex:27];
        if (Buffer)
        {
          v342 = [v424 userDictionary];
          v343 = [v342 objectForKey:@"_MPSCommandBufferRetainListKey"];
          if (!v343)
          {
            v344 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v342 setObject:v344 forKey:@"_MPSCommandBufferRetainListKey"];

            *&v552 = MEMORY[0x277D85DD0];
            *(&v552 + 1) = 3221225472;
            *&v553 = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke_0;
            *(&v553 + 1) = &unk_278AFFDB8;
            *&v554 = @"_MPSCommandBufferRetainListKey";
            [v424 addCompletedHandler:&v552];
            v343 = v344;
            v333 = v417;
          }

          [v343 addObject:Buffer];
        }

        os_unfair_lock_unlock(&_MergedGlobals_31);
        goto LABEL_475;
      }

      v338 = 0;
    }

    else
    {
      if (v441)
      {
        v337 = v365 * v408 * (v391 - 1);
      }

      else
      {
        v337 = v469 * v417 * (v391 - 1);
      }

      v338 = 4 * v337;
    }

    if (v336 <= v338)
    {
      v339 = v338;
    }

    else
    {
      v339 = v336;
    }

    [v475 setThreadgroupMemoryLength:v339 atIndex:0];
    v335 = v411;
    goto LABEL_466;
  }

LABEL_475:
  [v475 setBuffer:objc_msgSend(v474 offset:"buffer") atIndex:{v425 * v386 + v388 * v387 + v426 * v384 + v385, 26}];
  *&v553 = v460;
  DWORD2(v553) = v425;
  HIDWORD(v554) = v369;
  *&v556 = __PAIR64__(v326, v435);
  *(&v558 + 1) = v373;
  *(&v559 + 1) = __PAIR64__(v370, v378);
  v345 = v294;
  *&v552 = __PAIR64__(v461, v469);
  *(&v552 + 1) = __PAIR64__(v374, v462);
  *(&v553 + 3) = v345;
  LODWORD(v554) = 0;
  *(&v554 + 4) = __PAIR64__(v397, v445);
  LODWORD(v555) = 0;
  DWORD1(v555) = v426;
  *(&v555 + 1) = 1;
  DWORD2(v556) = v413 / (v372 * v375) * v372 * v375;
  HIDWORD(v556) = v462;
  v557 = 0uLL;
  *&v558 = 0;
  LODWORD(v559) = 0;
  DWORD1(v559) = v376 / v371;
  v560 = v447;
  v561 = v377 / v371;
  v562 = v380;
  v563 = v437;
  v564 = v403;
  v565 = v428;
  v566 = v452;
  v567 = v368;
  v568 = v367;
  v569 = v379 / v443;
  v570 = v423;
  v571 = v381 / v443;
  v572 = v400;
  v573 = v428 * v430;
  v574 = v452 * v453;
  v575 = v383;
  v576 = vmovn_s64(v434);
  v577 = v432;
  v578 = v449;
  v579 = v438;
  v580 = vmovn_s64(v433);
  v581 = v431;
  v582 = v448;
  [v475 setBytes:&v552 length:228 atIndex:25];
  v589[1] = 0;
  v589[0] = 0;
  [v475 setBytes:v589 length:16 atIndex:24];
  if (v451)
  {
    if (v441)
    {
      LODWORD(v346) = v415 * v417;
      v332 = (v473 + v365) / v365;
    }

    else
    {
      v346 = v415 * v417;
      v332 = (v473 + v346) / v333 * v415;
    }

    v468 = 32 * v391 * v346;
    v464 = 1;
  }

  if ((v366 & 1) == 0)
  {
    [v475 setThreadgroupMemoryLength:4 * v469 * v464 * v468 atIndex:0];
  }

  v551[0] = 1;
  v551[1] = v332;
  v551[2] = v421;
  v550[0] = v468;
  v550[1] = v464;
  v550[2] = 1;
  [v475 dispatchThreadgroups:v551 threadsPerThreadgroup:v550];
  result = MPSLibrary::ReleaseComputeState();
  v348 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ___ZL28EncodeMatrixMultiplyQ4IntoQ8PKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK23NDArrayMultiaryCallInfo_block_invoke()
{
  v0 = getenv("MPS_MATMUL_TILEM");
  v1 = getenv("MPS_MATMUL_TILEN");
  result = getenv("MPS_MATMUL_TILEK");
  v3 = result;
  if (v0)
  {
    result = atol(v0);
    v4 = 64 - __clz(result - 1);
    if (result <= 1uLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    _MergedGlobals_32 = v5;
  }

  if (v1)
  {
    result = atol(v1);
    v6 = 64 - __clz(result - 1);
    if (result <= 1uLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    word_27DF85EDA = v7;
  }

  if (v3)
  {
    result = atol(v3);
    v8 = 64 - __clz(result - 1);
    if (result <= 1uLL)
    {
      LOWORD(v9) = 0;
    }

    else
    {
      LOWORD(v9) = v8;
    }
  }

  else
  {
    LOWORD(v9) = word_27DF85EDC;
  }

  v10 = _MergedGlobals_32;
  if (_MergedGlobals_32 <= 5u)
  {
    v10 = 5;
  }

  if (v10 >= 8)
  {
    LOWORD(v10) = 8;
  }

  _MergedGlobals_32 = v10;
  v11 = word_27DF85EDA;
  if (word_27DF85EDA <= 5u)
  {
    v11 = 5;
  }

  if (v11 >= 8)
  {
    LOWORD(v11) = 8;
  }

  word_27DF85EDA = v11;
  v9 = v9;
  if (v9 <= 5u)
  {
    v9 = 5;
  }

  if (v9 >= 8)
  {
    LOWORD(v9) = 8;
  }

  word_27DF85EDC = v9;
  word_27DF85EDE = v10 - 1;
  word_27DF85EE0 = v11 - 1;
  return result;
}

uint64_t MPSNDArrayQ4IntoQ8MatrixMultiplyFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = a2[8];
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:&v9 type:85 atIndex:115];
  AddFunctionConstantList(v5, a3);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

BOOL isDescSupportedByLUTGEMV(MPSNDArrayQuantizationDescriptor *a1)
{
  if (![(MPSNDArrayQuantizationDescriptor *)a1 quantizationScheme])
  {
    return 1;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]!= 8 && [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]!= 536870920 && [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]!= 4 && [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]!= 536870916 && [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]!= 2 && [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]!= 536870914)
  {
    return 0;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)a1 quantizationScheme]== 2)
  {
    return [-[MPSNDArrayQuantizationDescriptor vectorAxes](a1 "vectorAxes")] == 0;
  }

  return [(MPSNDArrayQuantizationDescriptor *)a1 quantizationScheme]== 1 && ([(MPSNDArrayQuantizationDescriptor *)a1 hasDoubleQuantScale]& 1) == 0 && ([(MPSNDArrayQuantizationDescriptor *)a1 hasDoubleQuantMinVal]& 1) == 0 && ([(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]== 536870920 || [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]== 8 || [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]== 536870916 || [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]== 4 || [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]== 536870914 || [(MPSNDArrayQuantizationDescriptor *)a1 quantizationDataType]== 4);
}

uint64_t EncodeRandomStateUpdate(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277CD7370];
  v8 = *&a1[*MEMORY[0x277CD7370]];
  *&v9 = -1;
  *(&v9 + 1) = -1;
  v35 = v9;
  v36 = v9;
  v33 = v9;
  v34 = v9;
  v32 = v9;
  v10 = [*(a4 + 232) inputTensorAtIndex:0];
  v11 = [*(a4 + 232) outputTensorAtIndex:0];
  v12 = *(v10 + 8);
  if (v12 > 285212703)
  {
    if (v12 <= 536870915)
    {
      if (v12 > 301989895)
      {
        if (v12 == 301989896)
        {
          v13 = 512;
          v14 = *(v11 + 8);
          if (v14 <= 285212703)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v12 != 335544328)
          {
            goto LABEL_81;
          }

          v13 = 544;
          v14 = *(v11 + 8);
          if (v14 <= 285212703)
          {
            goto LABEL_60;
          }
        }
      }

      else if (v12 == 285212704)
      {
        v13 = 416;
        v14 = *(v11 + 8);
        if (v14 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v12 != 285212736)
        {
          goto LABEL_81;
        }

        v13 = 448;
        v14 = *(v11 + 8);
        if (v14 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_82;
    }

    if (v12 > 536870927)
    {
      switch(v12)
      {
        case 536870928:
          v13 = 64;
          v14 = *(v11 + 8);
          if (v14 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        case 536870944:
          v13 = 96;
          v14 = *(v11 + 8);
          if (v14 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        case 536870976:
          v13 = 128;
          v14 = *(v11 + 8);
          if (v14 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        default:
          goto LABEL_81;
      }

      goto LABEL_82;
    }

    v13 = 0;
    if (v12 != 536870916)
    {
      if (v12 != 536870920)
      {
        goto LABEL_81;
      }

      v13 = 32;
      v14 = *(v11 + 8);
      if (v14 <= 285212703)
      {
        goto LABEL_60;
      }

      goto LABEL_82;
    }

LABEL_59:
    v14 = *(v11 + 8);
    if (v14 > 285212703)
    {
      goto LABEL_82;
    }

    goto LABEL_60;
  }

  if (v12 <= 31)
  {
    if (v12 > 7)
    {
      if (v12 == 8)
      {
        v13 = 192;
        v14 = *(v11 + 8);
        if (v14 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v12 != 16)
        {
          goto LABEL_81;
        }

        v13 = 224;
        v14 = *(v11 + 8);
        if (v14 <= 285212703)
        {
          goto LABEL_60;
        }
      }
    }

    else if (v12 == -1879048176)
    {
      v13 = 384;
      v14 = *(v11 + 8);
      if (v14 <= 285212703)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v12 != 4)
      {
        goto LABEL_81;
      }

      v13 = 160;
      v14 = *(v11 + 8);
      if (v14 <= 285212703)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_82;
  }

  if (v12 <= 268435463)
  {
    if (v12 != 32)
    {
      if (v12 != 64)
      {
        goto LABEL_81;
      }

      v13 = 288;
      v14 = *(v11 + 8);
      if (v14 <= 285212703)
      {
        goto LABEL_60;
      }

      goto LABEL_82;
    }

    v13 = 256;
    goto LABEL_59;
  }

  switch(v12)
  {
    case 268435464:
      v13 = 480;
      v14 = *(v11 + 8);
      if (v14 <= 285212703)
      {
        goto LABEL_60;
      }

      break;
    case 268435472:
      v13 = 320;
      v14 = *(v11 + 8);
      if (v14 <= 285212703)
      {
        goto LABEL_60;
      }

      break;
    case 268435488:
      v13 = 352;
      v14 = *(v11 + 8);
      if (v14 > 285212703)
      {
        break;
      }

LABEL_60:
      if (v14 <= 31)
      {
        if (v14 > 7)
        {
          if (v14 == 8)
          {
            v15 = 6;
            goto LABEL_104;
          }

          if (v14 == 16)
          {
            v15 = 7;
            goto LABEL_104;
          }
        }

        else
        {
          if (v14 == -1879048176)
          {
            v15 = 12;
            goto LABEL_104;
          }

          if (v14 == 4)
          {
            v15 = 5;
            goto LABEL_104;
          }
        }
      }

      else if (v14 <= 268435463)
      {
        if (v14 == 32)
        {
          v15 = 8;
          goto LABEL_104;
        }

        if (v14 == 64)
        {
          v15 = 9;
          goto LABEL_104;
        }
      }

      else
      {
        switch(v14)
        {
          case 268435464:
            v15 = 15;
            goto LABEL_104;
          case 268435472:
            v15 = 10;
            goto LABEL_104;
          case 268435488:
            v15 = 11;
            goto LABEL_104;
        }
      }

      goto LABEL_103;
    default:
LABEL_81:
      v13 = 576;
      v14 = *(v11 + 8);
      if (v14 > 285212703)
      {
        break;
      }

      goto LABEL_60;
  }

LABEL_82:
  if (v14 <= 536870915)
  {
    if (v14 > 301989895)
    {
      if (v14 == 301989896)
      {
        v15 = 16;
        goto LABEL_104;
      }

      if (v14 == 335544328)
      {
        v15 = 17;
        goto LABEL_104;
      }
    }

    else
    {
      if (v14 == 285212704)
      {
        v15 = 13;
        goto LABEL_104;
      }

      if (v14 == 285212736)
      {
        v15 = 14;
        goto LABEL_104;
      }
    }
  }

  else if (v14 <= 536870927)
  {
    if (v14 == 536870916)
    {
      v15 = 0;
      goto LABEL_104;
    }

    if (v14 == 536870920)
    {
      v15 = 1;
      goto LABEL_104;
    }
  }

  else
  {
    switch(v14)
    {
      case 536870928:
        v15 = 2;
        goto LABEL_104;
      case 536870944:
        v15 = 3;
        goto LABEL_104;
      case 536870976:
        v15 = 4;
        goto LABEL_104;
    }
  }

LABEL_103:
  v15 = 18;
LABEL_104:
  *(&v33 + 1) = v15 | v13;
  v16 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v17 = *&a1[*v7];
  *&v36 = v16;
  *&v33 = 0;
  v24 = *&a1[*MEMORY[0x277CD7360]];
  v25 = *&a1[*MEMORY[0x277CD7368]];
  v23 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v18 = *&a1[*v7];
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  [a2 setComputePipelineState:{PipelineStateForMPSKey, v23, v24, v25, 0, 0}];
  v20 = *&a1[*v7];
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  v21 = [a1 counterStride];
  v31 = [a1 skipElements] * v21;
  v30 = [a1 incrementKey];
  [a2 setBytes:&v31 length:8 atIndex:29];
  [a2 setBytes:&v30 length:1 atIndex:28];
  v28 = xmmword_239B0C080;
  v29 = 1;
  v26 = xmmword_239B0C068;
  v27 = 1;
  [a2 dispatchThreadgroups:&v28 threadsPerThreadgroup:&v26];
  MPSLibrary::ReleaseComputeState();
  return 0;
}