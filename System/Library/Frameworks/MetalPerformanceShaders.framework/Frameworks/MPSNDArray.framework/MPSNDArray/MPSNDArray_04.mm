uint64_t checkInputAndWeight(BaseTensor *a1, BaseTensor *this, _DWORD *a3)
{
  v6 = *a3;
  v7 = a3[2];
  v8 = *a1;
  if (*a1 >= 5uLL)
  {
    v15 = MTLReportFailureTypeEnabled();
    v8 = *a1;
    if (v15)
    {
      v16 = *a1;
      MTLReportFailure();
      v8 = *a1;
    }
  }

  if (v8 != *this && MTLReportFailureTypeEnabled())
  {
    v17 = *this;
    v19 = *a1;
    MTLReportFailure();
  }

  BaseTensor::GetDimensionSize(this);
  BaseTensor::GetDimensionSize(a1);
  DimensionSize = BaseTensor::GetDimensionSize(this);
  if (DimensionSize != BaseTensor::GetDimensionSize(a1) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((*a3 > 0xFFuLL || *(a3 + 1) >= 0x100uLL) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = BaseTensor::GetDimensionSize(this);
  if (v10 == BaseTensor::GetDimensionSize(a1))
  {
    BaseTensor::GetDimensionSize(this);
    BaseTensor::GetDimensionSize(a1);
  }

  v11 = v7 * v6;
  v12 = BaseTensor::GetDimensionSize(this);
  if (v12 != BaseTensor::GetDimensionSize(a1) || (v13 = BaseTensor::GetDimensionSize(this), v13 != BaseTensor::GetDimensionSize(a1)))
  {
    if (MTLReportFailureTypeEnabled())
    {
      BaseTensor::GetDimensionSize(this);
      BaseTensor::GetDimensionSize(this);
      BaseTensor::GetDimensionSize(a1);
      BaseTensor::GetDimensionSize(a1);
      MTLReportFailure();
    }
  }

  BaseTensor::GetDimensionSize(this);
  result = BaseTensor::GetDimensionSize(this);
  if (result != v11)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      v20 = *(a3 + 1);
      v18 = *a3;
      return MTLReportFailure();
    }
  }

  return result;
}

uint64_t MPSNDArrayLocalConvolutionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  v7 = v6;
  v8 = *a3;
  v9 = *(a3 + 1);
  v10.i64[0] = -1;
  v10.i64[1] = -1;
  v11 = vceqq_s64(v9, v10);
  v12 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v10), vceqq_s64(*(a3 + 4), v10))));
  v13 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v11, vceqq_s64(*(a3 + 3), v10)), xmmword_239B06050)) & 0xF;
  if (*a3 != -1 || v13 != 0 || (v12 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v11), *v9.i8).u8[0] & 1) == 0)
    {
      v22 = *(a3 + 1);
      [v6 setConstantValue:&v22 type:33 atIndex:126];
      v8 = *a3;
    }

    if (v8 != -1)
    {
      v22 = v8;
      [v7 setConstantValue:&v22 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v22 = a3[2];
      [v7 setConstantValue:&v22 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v22 = a3[3];
      [v7 setConstantValue:&v22 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v22 = a3[4];
      [v7 setConstantValue:&v22 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v22 = a3[5];
      [v7 setConstantValue:&v22 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v22 = a3[8];
      [v7 setConstantValue:&v22 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v22 = a3[9];
      [v7 setConstantValue:&v22 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v22 = a3[6];
      [v7 setConstantValue:&v22 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v22 = a3[7];
      [v7 setConstantValue:&v22 type:33 atIndex:116];
    }
  }

  v22 = BYTE6(v5);
  [v7 setConstantValue:&v22 type:33 atIndex:0];
  v21 = HIBYTE(v5);
  [v7 setConstantValue:&v21 type:33 atIndex:1];
  v20 = (v5 >> 46) & 3;
  [v7 setConstantValue:&v20 type:33 atIndex:2];
  v17 = *a2;
  v18 = _MPSNewSpecializedFunction();

  return v18;
}

uint64_t EncodeStitchedReduction(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *&v109[20] = *MEMORY[0x277D85DE8];
  v71 = *(a1 + *MEMORY[0x277CD7370]);
  v6 = a1[83];
  v75 = v6;
  v76 = *(a1 + *MEMORY[0x277CD7350]);
  v7 = [*(a4 + 232) inputTensorAtIndex:0];
  v78 = a4;
  v8 = [*(a4 + 232) outputTensorAtIndex:0];
  if (*(v7 + 2) != *(v8 + 2) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  *v109 = 0;
  if ([objc_msgSend(a1 "axes")])
  {
    v9 = 0;
    do
    {
      v10 = [objc_msgSend(objc_msgSend(a1 "axes")];
      if (v10 >= 4 && MTLReportFailureTypeEnabled())
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v61 = [a1 label];
        v62 = v10;
        v58 = v12;
        v60 = a1;
        MTLReportFailure();
      }

      v109[v10] = 1;
      ++v9;
    }

    while (v9 < [objc_msgSend(a1 axes]);
  }

  DimensionSize = BaseTensor::GetDimensionSize(v7);
  v14 = BaseTensor::GetDimensionSize(v7);
  v15 = BaseTensor::GetDimensionSize(v7);
  v16 = BaseTensor::GetDimensionSize(v7);
  v17 = BaseTensor::GetDimensionSize(v8);
  v18 = BaseTensor::GetDimensionSize(v8);
  v19 = BaseTensor::GetDimensionSize(v8);
  v20 = BaseTensor::GetDimensionSize(v8);
  v21 = 0;
  v65 = v17;
  v72 = v18;
  if (DimensionSize == v17 && v14 == v18)
  {
    if (v19)
    {
      v21 = 16 * (v16 == v20);
      v15 = v19;
    }

    else
    {
      v15 = 0;
      v21 = 0;
    }
  }

  v74 = v21;
  v66 = v20;
  if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    *(&v104.__r_.__value_.__s + 23) = 7;
    strcpy(&v104, " -axis ");
    v22 = [a1 axis] - 1;
    if (v22 > 2)
    {
      v23 = "\\[0\\]";
    }

    else
    {
      v23 = off_278B04E58[v22];
    }

    v24 = std::string::append(&v104, v23);
    v25 = *&v24->__r_.__value_.__l.__data_;
    *&v81[16] = *(&v24->__r_.__value_.__l + 2);
    *v81 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(v81, " ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    *&v93[16] = *(&v26->__r_.__value_.__l + 2);
    *v93 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    if ((v81[23] & 0x80000000) != 0)
    {
      operator delete(*v81);
      if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(v104.__r_.__value_.__l.__data_);
LABEL_19:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = "-functionName rmsnorm ";
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_24;
      }

      v28 = "-functionName softmax ";
    }

    std::string::append(v93, v28);
LABEL_24:
    operator new();
  }

  v67 = v19;
  v68 = v15;
  v64 = DimensionSize;
  *&v109[4] = DimensionSize;
  *&v109[8] = v14;
  v69 = v14;
  v70 = v16;
  *&v109[12] = v15;
  *&v109[16] = v16;
  v73 = *(v76 + 1472);
  *&v29 = -1;
  *(&v29 + 1) = -1;
  v107 = v29;
  v108 = v29;
  v104.__r_.__value_.__r.__words[2] = -1;
  v106 = v29;
  *&v104.__r_.__value_.__l.__data_ = v29;
  v105 = 0;
  v30 = 0;
  *&v108 = [*(v78 + 16) count] | ((*(v78 + 112) != 0) << 8) | 0x10000;
  if ((*(v7 + 2) & 0x7FFFFFFF) == 0x10000010)
  {
    v31 = 268435488;
  }

  else
  {
    v31 = *(v7 + 2);
  }

  if (v31 == 285212704)
  {
    v32 = 285212736;
  }

  else
  {
    v32 = v31;
  }

  if (v32 > 285212703)
  {
    if (v32 <= 536870927)
    {
      if (v32 == 285212736)
      {
        v30 = 96;
        v33 = *v7;
        if (*v7 >= 1)
        {
          goto LABEL_60;
        }

        goto LABEL_63;
      }

      if (v32 != 536870920)
      {
        goto LABEL_59;
      }

      goto LABEL_42;
    }

    if (v32 == 536870928)
    {
      goto LABEL_54;
    }

    if (v32 != 536870944)
    {
      if (v32 != 536870976)
      {
        goto LABEL_59;
      }

LABEL_52:
      v30 = 128;
      v33 = *v7;
      if (*v7 >= 1)
      {
        goto LABEL_60;
      }

      goto LABEL_63;
    }

LABEL_58:
    v30 = 160;
    goto LABEL_59;
  }

  if (v32 > 31)
  {
    if (v32 != 32)
    {
      if (v32 != 64)
      {
        if (v32 == 268435472)
        {
          v30 = 32;
          v33 = *v7;
          if (*v7 >= 1)
          {
            goto LABEL_60;
          }

          goto LABEL_63;
        }

        goto LABEL_59;
      }

      goto LABEL_52;
    }

    goto LABEL_58;
  }

  if (v32 != -1879048176)
  {
    if (v32 != 8)
    {
      if (v32 != 16)
      {
LABEL_59:
        v33 = *v7;
        if (*v7 >= 1)
        {
          goto LABEL_60;
        }

        goto LABEL_63;
      }

LABEL_54:
      v30 = 192;
      v33 = *v7;
      if (*v7 >= 1)
      {
        goto LABEL_60;
      }

      goto LABEL_63;
    }

LABEL_42:
    v30 = 224;
    v33 = *v7;
    if (*v7 >= 1)
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

  v30 = 64;
  v33 = *v7;
  if (*v7 >= 1)
  {
LABEL_60:
    while (1)
    {
      v34 = v33 - 1;
      if (BaseTensor::GetDimensionSize(v7) != 1)
      {
        break;
      }

      --v33;
      if (v34 + 1 <= 1)
      {
        v33 = 0;
        break;
      }
    }
  }

LABEL_63:
  v35 = *v8;
  if (*v8 >= 1)
  {
    while (1)
    {
      v36 = v35 - 1;
      if (BaseTensor::GetDimensionSize(v8) != 1)
      {
        break;
      }

      --v35;
      if (v36 + 1 <= 1)
      {
        v35 = 0;
        break;
      }
    }
  }

  if (v33 <= v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = v33;
  }

  if (v37 >= 4)
  {
    LOWORD(v37) = 4;
  }

  v38 = v109[0];
  v39 = v109[1];
  v40 = v109[2];
  v41 = v109[3];
  v104.__r_.__value_.__r.__words[2] = v74 | v30 | ((v75 << 8) + 1792) & 0x700 | ((v37 << 11) + 6144) & 0x1800 | (4 * v109[2]) | (2 * v109[1]) | (8 * v109[3]) | v109[0];
  v42 = [a1 getUserDAGInfo];
  v43 = *(a1 + *MEMORY[0x277CD7370]);
  v63 = v42;
  v59 = *(v78 + 232);
  MPSLibrary::CreateUberShaderKey();
  v44 = *(a1 + *MEMORY[0x277CD7370]);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    [a2 setComputePipelineState:{PipelineStateForMPSKey, v59, 0, 0, v63, 0}];
    v46 = *(a1 + *MEMORY[0x277CD7370]);
    MPSLibrary::ReleaseMPSKey();
    v47 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    v48 = *(v76 + 1480);
    if (v47 >= 0x200)
    {
      v49 = 512;
    }

    else
    {
      v49 = v47;
    }

    v103 = 0;
    v101 = 0u;
    v102 = 0u;
    memset(v100, 0, sizeof(v100));
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    memset(v93, 0, sizeof(v93));
    getDispatchParams(v93, &v109[4], v109, v49, v48, v73 > 23, 0x1000uLL);
    if (v103 == 1)
    {
      getDispatchParams(v81, &v109[4], v109, v49, v48, v73 > 23, 0xFFFFFFFFFFFFFFFFLL);
      v101 = v90;
      v102 = v91;
      v103 = v92;
      v98 = v86;
      v99 = v87;
      v100[0] = v88;
      v100[1] = v89;
      v94 = v82;
      v95 = v83;
      v96 = v84;
      v97 = v85;
      *v93 = *v81;
      *&v93[16] = *&v81[16];
    }

    if (v38)
    {
      v50 = v64;
      DWORD1(v98) = v65;
      v52 = v68;
      v51 = v69;
      v53 = v67;
      v54 = v72;
      v55 = v70;
      if (!v39)
      {
LABEL_84:
        if (v40)
        {
          HIDWORD(v98) = v53;
          v50 *= v52;
          if (!v41)
          {
            goto LABEL_87;
          }
        }

        else if (!v41)
        {
LABEL_87:
          *v93 = v50;
          MPSSetNDArraysOnComputeEncoder(a2, v78, 4, 0, 0);
          [a2 setBytes:v93 length:136 atIndex:29];
          [a2 setThreadgroupMemoryLength:(DWORD2(v102) * v75 + 15) & 0xFFFFFFF0 atIndex:0];
          *v81 = v101;
          *&v81[16] = v102;
          v79 = *(v100 + 8);
          v80 = *(&v100[1] + 1);
          [a2 dispatchThreadgroups:v81 threadsPerThreadgroup:&v79];
          MPSLibrary::ReleaseComputeState();
          result = 0;
          goto LABEL_88;
        }

        LODWORD(v99) = v66;
        v50 *= v55;
        goto LABEL_87;
      }
    }

    else
    {
      v50 = 1;
      v52 = v68;
      v51 = v69;
      v53 = v67;
      v54 = v72;
      v55 = v70;
      if (!v39)
      {
        goto LABEL_84;
      }
    }

    DWORD2(v98) = v54;
    v50 *= v51;
    goto LABEL_84;
  }

  result = -1;
LABEL_88:
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239A40180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (*(v62 - 129) < 0)
  {
    operator delete(*(v62 - 152));
    if ((a62 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a62 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_239A40D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t getDispatchParams(unsigned int *a1, BOOL *a2, MTLSize *a3, unint64_t a4, uint64_t a5, int a6, unint64_t a7)
{
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 34) = xmmword_239B0A130;
  *(a1 + 19) = 1;
  *(a1 + 10) = vdupq_n_s64(1uLL);
  *(a1 + 11) = 0u;
  *(a1 + 22) = 1;
  v12 = a1 + 1;
  v13 = a1 + 9;
  memset_pattern16(a1 + 1, &unk_239B0A120, 0x10uLL);
  memset_pattern16(a1 + 5, &unk_239B0A120, 0x10uLL);
  memset_pattern16(v13, &unk_239B0A120, 0x10uLL);
  memset_pattern16(a1 + 13, &unk_239B0A120, 0x10uLL);
  v14 = *a2;
  *(a1 + 17) = *a2;
  *(a1 + 21) = v14;
  *&v14 = 0x100000001;
  *(&v14 + 1) = 0x100000001;
  *(a1 + 25) = v14;
  *(a1 + 29) = v14;
  width_low = LOBYTE(a3->width);
  if (width_low == 1)
  {
    v16 = *a2;
    v17 = 1 << (32 - __clz(v16 - 1));
    if (BYTE1(a3->width) == 1)
    {
      v17 <<= 32 - __clz(*(a2 + 1) - 1);
      if (BYTE2(a3->width) == 1)
      {
        v17 <<= 32 - __clz(*(a2 + 2) - 1);
        if (BYTE3(a3->width) == 1)
        {
          v17 <<= 32 - __clz(*(a2 + 3) - 1);
        }
      }
    }

    if (v17 >> 5 <= 0x20)
    {
      v18 = 32;
    }

    else
    {
      v18 = v17 >> 5;
    }

    if (v17 >> 5 >= a7)
    {
      v19 = a7;
    }

    else
    {
      v19 = v18;
    }

    if (v17 <= 32 * v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = 32;
    }

    if (v16 < 0x10)
    {
      v26 = 2 * ((*a2 & 3) == 0);
      v23 = 32;
      for (i = 1; ; *(a1 + 18) = i)
      {
        if (v23 << v26 > v16)
        {
          if (v23 < 2)
          {
            goto LABEL_45;
          }
        }

        else if (v23 < 2 || (v16 & ((v23 << v26) - 1)) - 1 >= v23 << v26 >> 1)
        {
          goto LABEL_45;
        }

        v23 >>= 1;
        i *= 2;
        *(a1 + 17) = v23;
      }
    }

    if (v16 > 0x7F)
    {
      v23 = 32;
      i = 1;
    }

    else
    {
      v21 = 4;
      if (v16 >= 0x20)
      {
        v22 = 8;
      }

      else
      {
        v22 = 4;
      }

      if (v16 < 0x20)
      {
        v21 = 8;
      }

      v23 = 16;
      if (v16 >= 0x40)
      {
        i = 2;
      }

      else
      {
        v23 = v22;
        i = v21;
      }

      *(a1 + 17) = v23;
      *(a1 + 18) = i;
    }

LABEL_45:
    *v13 = v23;
    if ((v16 - 1 + v23) / v23 >= v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = (v16 - 1 + v23) / v23;
    }

    *v12 = v27;
    a1[5] = v27 * v23;
  }

  else
  {
    v23 = 4;
    a1[1] = 4;
    *(a1 + 17) = 4;
    LODWORD(v16) = *a2;
    if ((*a2 & 0xFuLL) - 1 > 7)
    {
      i = 8;
      v25 = 4;
    }

    else
    {
      if ((v16 & 7) - 1 < 4)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if ((v16 & 7) - 1 >= 4)
      {
        i = 16;
      }

      else
      {
        i = 32;
      }

      *(a1 + 17) = v23;
      *(a1 + 18) = i;
      v25 = v23;
    }

    *v13 = v25;
    v27 = 4;
    v20 = a7;
    a1[5] = 4 * v25;
    if (!width_low)
    {
      goto LABEL_51;
    }
  }

  v20 /= v27;
  if ((v20 & (v20 - 1)) != 0)
  {
    v20 = (1 << -__clz(v20 - 1)) >> 1;
  }

LABEL_51:
  v28 = i;
  if (v20 == 1)
  {
    goto LABEL_52;
  }

  if (BYTE1(a3->width) != 1)
  {
    v28 = i;
LABEL_156:
    if (BYTE2(a3->width) == 1)
    {
      a1[3] = v20;
      a1[11] = v28;
      v98 = v20 * v28;
      v99 = *(a2 + 2);
      v100 = v28;
      for (j = v20; v99 <= (j * v100) >> 1; v98 = j * v100)
      {
        while (j <= 1)
        {
          v100 >>= 1;
          a1[11] = v100;
          v98 = j * v100;
          if (v99 > (j * v100) >> 1)
          {
            goto LABEL_162;
          }
        }

        j >>= 1;
        a1[3] = j;
      }

LABEL_162:
      a1[7] = v98;
      v20 /= j;
      v28 /= v100;
    }

    if (v20 != 1 && BYTE3(a3->width) == 1)
    {
      a1[4] = v20;
      a1[12] = v28;
      v102 = v20 * v28;
      v103 = *(a2 + 3);
      for (k = v28; v103 <= (v20 * k) >> 1; v102 = v20 * k)
      {
        while (v20 <= 1)
        {
          k >>= 1;
          a1[12] = k;
          v102 = v20 * k;
          if (v103 > (v20 * k) >> 1)
          {
            goto LABEL_170;
          }
        }

        LODWORD(v20) = v20 >> 1;
        a1[4] = v20;
      }

LABEL_170:
      a1[8] = v102;
      v28 /= k;
    }

    goto LABEL_52;
  }

  a1[2] = v20;
  a1[10] = i;
  v36 = v20 * i;
  v37 = *(a2 + 1);
  v38 = i;
  for (m = v20; v37 <= (m * v38) >> 1; v36 = m * v38)
  {
    while (m >= 2)
    {
      m >>= 1;
      a1[2] = m;
      v36 = m * v38;
      if (v37 > (m * v38) >> 1)
      {
        goto LABEL_66;
      }
    }

    v38 >>= 1;
    a1[10] = v38;
  }

LABEL_66:
  a1[6] = v36;
  v20 /= m;
  v28 = i / v38;
  if (v20 != 1)
  {
    goto LABEL_156;
  }

LABEL_52:
  v29 = a1[2];
  v30 = a1[3];
  v31 = a1[4];
  v32 = v29 * v27 * v30 * v31;
  if (v32 >= 4)
  {
    goto LABEL_96;
  }

  if (width_low && (v33 = *v13, *v13 >= 2))
  {
    do
    {
      v27 *= 2;
      v34 = v33;
      v33 >>= 1;
      v23 >>= 1;
      i *= 2;
      v28 *= 2;
      v35 = 2 * v32;
      if (v34 < 4)
      {
        break;
      }

      v109 = v32 >= 2;
      v32 *= 2;
    }

    while (!v109);
    *(a1 + 17) = v23;
    *v12 = v27;
    *v13 = v33;
    if (BYTE1(a3->width) != 1)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v35 = v29 * v27 * v30 * v31;
    if (BYTE1(a3->width) != 1)
    {
      goto LABEL_74;
    }
  }

  v40 = a1[10];
  if (v40 >= 2 && v35 <= 3)
  {
    do
    {
      v29 *= 2;
      v43 = v40;
      v40 >>= 1;
      v28 *= 2;
      v42 = 2 * v35;
      if (v43 < 4)
      {
        break;
      }

      v109 = v35 >= 2;
      v35 *= 2;
    }

    while (!v109);
    a1[2] = v29;
    a1[10] = v40;
    if (BYTE2(a3->width) != 1)
    {
      goto LABEL_85;
    }

    goto LABEL_80;
  }

LABEL_74:
  v42 = v35;
  if (BYTE2(a3->width) != 1)
  {
    goto LABEL_85;
  }

LABEL_80:
  v44 = a1[11];
  if (v44 >= 2 && v42 <= 3)
  {
    do
    {
      v30 *= 2;
      v47 = v44;
      v44 >>= 1;
      v28 *= 2;
      v46 = 2 * v42;
      if (v47 < 4)
      {
        break;
      }

      v109 = v42 >= 2;
      v42 *= 2;
    }

    while (!v109);
    a1[3] = v30;
    a1[11] = v44;
    if (BYTE3(a3->width) != 1)
    {
      goto LABEL_96;
    }

    goto LABEL_91;
  }

LABEL_85:
  v46 = v42;
  if (BYTE3(a3->width) != 1)
  {
    goto LABEL_96;
  }

LABEL_91:
  v48 = a1[12];
  if (v48 >= 2 && v46 <= 3)
  {
    do
    {
      v31 *= 2;
      v75 = v48;
      v48 >>= 1;
      v28 *= 2;
      if (v75 < 4)
      {
        break;
      }

      v109 = v46 >= 2;
      v46 *= 2;
    }

    while (!v109);
    a1[4] = v31;
    a1[12] = v48;
    v50 = i / v28;
    *(a1 + 18) = v50;
    *(a1 + 19) = v28;
    v51 = v28;
    if ((a3->width & 0x100) != 0)
    {
      goto LABEL_102;
    }

LABEL_98:
    a1[10] = v28;
    v52 = a1[2];
    v53 = v52 * v28;
    v54 = *(a2 + 1);
    v55 = v28;
    if (v54 < v52 * v28)
    {
      do
      {
        v55 >>= 1;
        v53 = v55 * v52;
      }

      while (v54 < v55 * v52);
      a1[10] = v55;
    }

    a1[6] = v53;
    v51 = v28 / v55;
    goto LABEL_102;
  }

LABEL_96:
  v50 = i / v28;
  *(a1 + 18) = v50;
  *(a1 + 19) = v28;
  if (v28 == 1)
  {
    goto LABEL_114;
  }

  v51 = v28;
  if ((a3->width & 0x100) == 0)
  {
    goto LABEL_98;
  }

LABEL_102:
  if (v51 != 1)
  {
    if ((a3->width & 0x10000) == 0)
    {
      a1[11] = v51;
      v56 = a1[3];
      v57 = v56 * v51;
      v58 = *(a2 + 2);
      v59 = v51;
      if (v58 < v56 * v51)
      {
        do
        {
          v59 >>= 1;
          v57 = v59 * v56;
        }

        while (v58 < v59 * v56);
        a1[11] = v59;
      }

      a1[7] = v57;
      v51 /= v59;
    }

    if (v51 != 1 && (a3->width & 0x1000000) == 0)
    {
      a1[12] = v51;
      v60 = a1[4];
      v61 = v60 * v51;
      v62 = *(a2 + 3);
      if (v62 < v60 * v51)
      {
        do
        {
          LODWORD(v51) = v51 >> 1;
          v61 = v51 * v60;
        }

        while (v62 < v51 * v60);
        a1[12] = v51;
      }

      a1[8] = v61;
    }
  }

LABEL_114:
  v129 = v12;
  v130 = v16;
  v63 = a1[6];
  v128 = v16 - 1;
  v64 = (a1[5] + v16 - 1) / a1[5];
  *(a1 + 20) = v64;
  v65 = *(a2 + 2);
  v127 = *(a2 + 1);
  v124 = v127 - 1;
  v66 = (v127 - 1 + v63) / v63;
  v126 = v64;
  a1[13] = v64;
  a1[14] = v66;
  v67 = BYTE1(a3->width);
  v68 = 44;
  if (BYTE1(a3->width))
  {
    v68 = 42;
    v69 = (v127 - 1 + v63) / v63;
  }

  else
  {
    v69 = 1;
  }

  if (BYTE1(a3->width))
  {
    v70 = 1;
  }

  else
  {
    v70 = (v127 - 1 + v63) / v63;
  }

  *&a1[v68] = v66;
  v71 = a1[7];
  v72 = v65;
  v123 = v65 - 1;
  v73 = (v65 - 1 + v71) / v71;
  a1[15] = v73;
  v134 = BYTE2(a3->width);
  v74 = a7;
  if (v134)
  {
    v69 = v69 * v73;
    *(a1 + 21) = v69;
  }

  else
  {
    v70 = v70 * v73;
    *(a1 + 22) = v70;
  }

  v76 = a1[8];
  v77 = *(a2 + 3);
  v122 = v77 - 1;
  v78 = (v77 - 1 + v76) / v76;
  a1[16] = v78;
  v133 = BYTE3(a3->width);
  if (v133)
  {
    v125 = v70;
    v79 = a3;
    v69 *= v78;
    *(a1 + 21) = v69;
    v80 = v31;
  }

  else
  {
    v79 = a3;
    v125 = v70 * v78;
    *(a1 + 22) = v70 * v78;
    v80 = 1;
  }

  v81 = width_low;
  if (width_low)
  {
    v82 = v27;
  }

  else
  {
    v82 = 1;
  }

  if (v67)
  {
    v83 = v29;
  }

  else
  {
    v83 = 1;
  }

  if (v134)
  {
    v84 = v30;
  }

  else
  {
    v84 = 1;
  }

  v85 = v28 * v50 * v23;
  if ((a4 & (a4 - 1)) != 0)
  {
    a4 = (1 << -__clz(a4 - 1)) >> 1;
  }

  if (v69 == 1 || (v86 = v74 >> (32 - __clz(v83 * v82 * v84 * v80 - 1)), v87 = a4 / v85, v88 = a4 / v85 * v86, v69 >= v88))
  {
    v92 = v81;
    v93 = v79;
    v89 = v129;
    v90 = v67;
    v94 = v127;
    result = v128;
    v97 = v134;
    v95 = v77;
    goto LABEL_192;
  }

  v69 = 1;
  *(a1 + 21) = 1;
  v89 = v129;
  v90 = v67;
  if (v67)
  {
    v109 = v88 >= 2;
    result = v128;
    v92 = v81;
    v93 = v79;
    if (v109)
    {
      v94 = v127;
      v95 = v77;
      while (v63 < v127)
      {
        if (v86 < 2)
        {
          a1[10] *= 2;
          v50 *= 2;
          *(a1 + 18) = v50;
          v87 >>= 1;
          v63 *= 2;
          a1[6] = v63;
          if (v87 * v86 <= 1)
          {
            break;
          }
        }

        else
        {
          v29 *= 2;
          a1[2] = v29;
          v86 >>= 1;
          v63 *= 2;
          a1[6] = v63;
          if (v87 * v86 <= 1)
          {
            break;
          }
        }
      }

      v96 = (v63 + v124) / v63;
      a1[14] = v96;
      *(a1 + 21) = v96;
      v69 = v96;
      v97 = v134;
      if (!v134)
      {
        goto LABEL_182;
      }

      goto LABEL_174;
    }

    v94 = v127;
    v95 = v77;
    a1[14] = v66;
    *(a1 + 21) = v66;
    v69 = (v127 - 1 + v63) / v63;
    v97 = v134;
    if (v134)
    {
LABEL_174:
      if (v87 * v86 >= 2)
      {
        while (v71 < v72)
        {
          if (v86 > 1)
          {
            v30 *= 2;
            a1[3] = v30;
            v86 >>= 1;
            v71 *= 2;
            a1[7] = v71;
            if (v87 * v86 <= 1)
            {
              break;
            }
          }

          else
          {
            a1[11] *= 2;
            v50 *= 2;
            *(a1 + 18) = v50;
            v87 >>= 1;
            v71 *= 2;
            a1[7] = v71;
            if (v87 * v86 <= 1)
            {
              break;
            }
          }
        }

        v73 = (v71 + v123) / v71;
      }

      a1[15] = v73;
      v69 = v69 * v73;
      *(a1 + 21) = v69;
    }
  }

  else
  {
    v92 = v81;
    v93 = v79;
    v94 = v127;
    result = v128;
    v95 = v77;
    v97 = v134;
    if (v134)
    {
      goto LABEL_174;
    }
  }

LABEL_182:
  if (v133)
  {
    if (v87 * v86 >= 2)
    {
      while (v76 < v95)
      {
        if (v86 > 1)
        {
          v31 *= 2;
          a1[4] = v31;
          v86 >>= 1;
          v76 *= 2;
          a1[8] = v76;
          if (v87 * v86 <= 1)
          {
            break;
          }
        }

        else
        {
          a1[12] *= 2;
          v50 *= 2;
          *(a1 + 18) = v50;
          v87 >>= 1;
          v76 *= 2;
          a1[8] = v76;
          if (v87 * v86 <= 1)
          {
            break;
          }
        }
      }

      v78 = (v76 + v122) / v76;
    }

    a1[16] = v78;
    v69 *= v78;
    *(a1 + 21) = v69;
  }

  v85 = v23 * v28 * v50;
LABEL_192:
  v105 = v125 * v126 * v69;
  v106 = 4;
  if (a6)
  {
    v106 = 6;
  }

  v107 = a5 << v106;
  if (v105 < 8 * a5)
  {
    v107 = 16;
    v105 = 1;
  }

  v108 = v105 * (v85 >> 5);
  if (v90)
  {
    v109 = v108 >= v107 || v85 >= a4;
    v110 = v130;
    v111 = v133;
    if (!v109)
    {
      do
      {
        if (v29 < 2)
        {
          break;
        }

        v29 >>= 1;
        a1[2] = v29;
        a1[10] *= 2;
        v50 *= 2;
        *(a1 + 18) = v50;
        v85 *= 2;
        v108 *= 2;
        if (v108 >= v107)
        {
          break;
        }
      }

      while (v85 < a4);
    }
  }

  else
  {
    v110 = v130;
    v111 = v133;
  }

  if (v97 && v108 < v107)
  {
    do
    {
      if (v85 >= a4)
      {
        break;
      }

      if (v30 < 2)
      {
        break;
      }

      v30 >>= 1;
      a1[3] = v30;
      a1[11] *= 2;
      v50 *= 2;
      *(a1 + 18) = v50;
      v85 *= 2;
      v108 *= 2;
    }

    while (v108 < v107);
  }

  if (v111 && v108 < v107)
  {
    do
    {
      if (v85 >= a4)
      {
        break;
      }

      if (v31 < 2)
      {
        break;
      }

      v31 >>= 1;
      a1[4] = v31;
      a1[12] *= 2;
      v50 *= 2;
      *(a1 + 18) = v50;
      v85 *= 2;
      v108 *= 2;
    }

    while (v108 < v107);
  }

  if (v92 && v108 < v107)
  {
    do
    {
      if (v85 >= a4)
      {
        break;
      }

      if (v27 < 2)
      {
        break;
      }

      v112 = 2 * *v13;
      *v13 = v112;
      v27 = (result + v112) / v112;
      *v89 = v27;
      v23 *= 2;
      *(a1 + 17) = v23;
      v85 *= 2;
      v108 *= 2;
    }

    while (v108 < v107);
  }

  v113 = v50 / a1[10];
  if (v90 && v29 != 1 && v113 != 1)
  {
    v114 = 2;
    do
    {
      v115 = v13[v114];
      if (v115 == 1 || *(&v93->width + v114) != 1)
      {
        ++v114;
      }

      else
      {
        v13[v114] = v115 >> 1;
        v113 >>= 1;
        a1[10] *= 2;
        v89[v114] *= 2;
        v29 = a1[2] >> 1;
        a1[2] = v29;
      }
    }

    while (v29 != 1 && v113 != 1 && v114 < 4);
  }

  if (v97)
  {
    v116 = a1[3];
    if (v116 != 1 && v113 != 1 && v111 != 0)
    {
      v120 = a1[12];
      do
      {
        if (v120 == 1)
        {
          break;
        }

        v120 >>= 1;
        a1[11] *= 2;
        a1[12] = v120;
        v121 = 2 * a1[4];
        v116 >>= 1;
        a1[3] = v116;
        a1[4] = v121;
        if (v116 == 1)
        {
          break;
        }

        v113 >>= 1;
      }

      while (v113 != 1);
    }
  }

  if (v92)
  {
    a1[21] = (a1[5] + result) / a1[5];
    if (!v90)
    {
      goto LABEL_241;
    }
  }

  else
  {
    a1[21] = v110;
    if (!v90)
    {
LABEL_241:
      a1[22] = v94;
      if (v97)
      {
        goto LABEL_242;
      }

      goto LABEL_249;
    }
  }

  a1[22] = (a1[6] + v124) / a1[6];
  if (v97)
  {
LABEL_242:
    a1[23] = (a1[7] + v123) / a1[7];
    if (!v111)
    {
      goto LABEL_243;
    }

    goto LABEL_250;
  }

LABEL_249:
  a1[23] = v72;
  if (!v111)
  {
LABEL_243:
    a1[24] = v95;
    if (v69 == 1)
    {
      goto LABEL_244;
    }

LABEL_251:
    v118 = 1;
    goto LABEL_252;
  }

LABEL_250:
  a1[24] = (a1[8] + v122) / a1[8];
  if (v69 != 1)
  {
    goto LABEL_251;
  }

LABEL_244:
  if (*(a1 + 20) == 1)
  {
    v118 = 0;
  }

  else
  {
    v118 = v92;
  }

LABEL_252:
  *(a1 + 192) = v118;
  v119 = v50 * v28 * v23;
  if (!v92)
  {
    v119 *= 4;
  }

  *(a1 + 23) = v119;
  return result;
}

void std::__shared_ptr_pointer<MPSKernelUserDAG *,std::shared_ptr<MPSKernelUserDAG>::__shared_ptr_default_delete<MPSKernelUserDAG,MPSKernelUserDAG>,std::allocator<MPSKernelUserDAG>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE7C8C0);
}

uint64_t std::__shared_ptr_pointer<MPSKernelUserDAG *,std::shared_ptr<MPSKernelUserDAG>::__shared_ptr_default_delete<MPSKernelUserDAG,MPSKernelUserDAG>,std::allocator<MPSKernelUserDAG>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_239A424BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void MPSAutoEncoder::~MPSAutoEncoder(id *this)
{
  [*this endEncoding];
}

{
  [*this endEncoding];
}

uint64_t EncodeStridedSliceCommon(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  v9 = *(a1 + *MEMORY[0x277CD7370]);
  v10 = MEMORY[0x277CD73D8];
  if (a4)
  {
    v11 = *(a3 + 112);
    v12 = *MEMORY[0x277CD73D8];
    v13 = *&v11[v12];
    v14 = *(*(*(a3 + 24) + 56) + 4 * (v13 & 0xF));
    v15 = (a3 + 96);
  }

  else
  {
    v11 = [*(a3 + 16) objectAtIndexedSubscript:0];
    v12 = *v10;
    v13 = *&v11[v12];
    v16 = *(a3 + 8);
    v14 = *(v16 + 4 * (v13 & 0xF));
    v15 = (v16 + 64);
  }

  v17 = *(a3 + 208);
  v18 = *v15;
  v19 = *(a3 + 192);
  v20 = *MEMORY[0x277CD73C8];
  v21 = *&v11[v20];
  if (v21 > 285212703)
  {
    if (v21 <= 536870915)
    {
      if (v21 > 301989895)
      {
        if (v21 == 301989896)
        {
          v22 = 512;
          v23 = *&v17[v20];
          if (v23 <= 285212703)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v21 != 335544328)
          {
            goto LABEL_85;
          }

          v22 = 544;
          v23 = *&v17[v20];
          if (v23 <= 285212703)
          {
            goto LABEL_64;
          }
        }
      }

      else if (v21 == 285212704)
      {
        v22 = 416;
        v23 = *&v17[v20];
        if (v23 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v21 != 285212736)
        {
          goto LABEL_85;
        }

        v22 = 448;
        v23 = *&v17[v20];
        if (v23 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v21 <= 536870927)
    {
      if (v21 == 536870916)
      {
        v22 = 0;
        v23 = *&v17[v20];
        if (v23 > 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_64;
      }

      if (v21 != 536870920)
      {
        goto LABEL_85;
      }

      v22 = 32;
      v23 = *&v17[v20];
      if (v23 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      switch(v21)
      {
        case 536870928:
          v22 = 64;
          v23 = *&v17[v20];
          if (v23 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870944:
          v22 = 96;
          v23 = *&v17[v20];
          if (v23 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870976:
          v22 = 128;
          v23 = *&v17[v20];
          if (v23 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        default:
          goto LABEL_85;
      }
    }
  }

  else if (v21 <= 31)
  {
    if (v21 > 7)
    {
      if (v21 == 8)
      {
        v22 = 192;
        v23 = *&v17[v20];
        if (v23 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v21 != 16)
        {
          goto LABEL_85;
        }

        v22 = 224;
        v23 = *&v17[v20];
        if (v23 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v21 == -1879048176)
    {
      v22 = 384;
      v23 = *&v17[v20];
      if (v23 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v21 != 4)
      {
        goto LABEL_85;
      }

      v22 = 160;
      v23 = *&v17[v20];
      if (v23 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else if (v21 <= 268435463)
  {
    if (v21 == 32)
    {
      v22 = 256;
      v23 = *&v17[v20];
      if (v23 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v21 != 64)
      {
        goto LABEL_85;
      }

      v22 = 288;
      v23 = *&v17[v20];
      if (v23 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    switch(v21)
    {
      case 268435464:
        v22 = 480;
        v23 = *&v17[v20];
        if (v23 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435472:
        v22 = 320;
        v23 = *&v17[v20];
        if (v23 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435488:
        v22 = 352;
        v23 = *&v17[v20];
        if (v23 > 285212703)
        {
          break;
        }

LABEL_64:
        if (v23 <= 31)
        {
          if (v23 > 7)
          {
            if (v23 == 8)
            {
              v24 = 6;
              goto LABEL_108;
            }

            if (v23 == 16)
            {
              v24 = 7;
              goto LABEL_108;
            }
          }

          else
          {
            if (v23 == -1879048176)
            {
              v24 = 12;
              goto LABEL_108;
            }

            if (v23 == 4)
            {
              v24 = 5;
              goto LABEL_108;
            }
          }
        }

        else if (v23 <= 268435463)
        {
          if (v23 == 32)
          {
            v24 = 8;
            goto LABEL_108;
          }

          if (v23 == 64)
          {
            v24 = 9;
            goto LABEL_108;
          }
        }

        else
        {
          switch(v23)
          {
            case 268435464:
              v24 = 15;
              goto LABEL_108;
            case 268435472:
              v24 = 10;
              goto LABEL_108;
            case 268435488:
              v24 = 11;
              goto LABEL_108;
          }
        }

        goto LABEL_107;
      default:
LABEL_85:
        v22 = 576;
        v23 = *&v17[v20];
        if (v23 > 285212703)
        {
          break;
        }

        goto LABEL_64;
    }
  }

LABEL_86:
  if (v23 <= 536870915)
  {
    if (v23 > 301989895)
    {
      if (v23 == 301989896)
      {
        v24 = 16;
        goto LABEL_108;
      }

      if (v23 == 335544328)
      {
        v24 = 17;
        goto LABEL_108;
      }
    }

    else
    {
      if (v23 == 285212704)
      {
        v24 = 13;
        goto LABEL_108;
      }

      if (v23 == 285212736)
      {
        v24 = 14;
        goto LABEL_108;
      }
    }
  }

  else if (v23 <= 536870927)
  {
    if (v23 == 536870916)
    {
      v24 = 0;
      goto LABEL_108;
    }

    if (v23 == 536870920)
    {
      v24 = 1;
      goto LABEL_108;
    }
  }

  else
  {
    switch(v23)
    {
      case 536870928:
        v24 = 2;
        goto LABEL_108;
      case 536870944:
        v24 = 3;
        goto LABEL_108;
      case 536870976:
        v24 = 4;
        goto LABEL_108;
    }
  }

LABEL_107:
  v24 = 18;
LABEL_108:
  v25 = 0x2000000;
  if ((a4 & a5) == 0)
  {
    v25 = 0;
  }

  *&v26 = -1;
  *(&v26 + 1) = -1;
  v84 = v26;
  v85 = v26;
  v81 = -1;
  v83 = v26;
  v80 = v26;
  v82 = v22 | v24 | v25;
  v27 = *MEMORY[0x277CD7410];
  v28 = *MEMORY[0x277CD7418];
  v30 = *&v11[v28 + 32];
  v29 = *&v11[v28 + 48];
  v32 = *&v11[v28];
  v31 = *&v11[v28 + 16];
  v33 = &v17[v28];
  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  v37 = *v33;
  v36 = *(v33 + 1);
  if (a4)
  {
    v38 = v13 & 0xF;
    v39 = *&v11[4 * v38 + v27];
    v40 = *&v17[v12];
    v58 = v32;
    v59 = v31;
    v60 = v30;
    v61 = v29;
    v41 = *(&v58 + v38);
    v54 = v37;
    v55 = v36;
    v56 = v35;
    v57 = v34;
    v42 = *(&v54 + (v40 & 0xF));
    if (v14 < 0)
    {
      v42 = v39 + v42 - 1;
    }

    v74 = v39;
    v75 = v14;
    if (v21 > 285212703)
    {
      goto LABEL_114;
    }
  }

  else
  {
    v44 = *&v17[v12] & 0xF;
    v39 = *&v17[4 * v44 + v27];
    v66 = v32;
    v67 = v31;
    v68 = v30;
    v69 = v29;
    v45 = *(&v66 + (v13 & 0xF));
    v62 = v37;
    v63 = v36;
    v64 = v35;
    v65 = v34;
    v42 = *(&v62 + v44);
    v41 = v45 + v39 - 1;
    if (v14 >= 0)
    {
      v41 = v45;
    }

    v74 = v39;
    v75 = v14;
    if (v21 > 285212703)
    {
LABEL_114:
      if (v21 <= 536870915)
      {
        if (v21 > 301989895)
        {
          if (v21 == 301989896)
          {
            v43 = 16;
            goto LABEL_160;
          }

          if (v21 == 335544328)
          {
            v43 = 17;
            goto LABEL_160;
          }
        }

        else
        {
          if (v21 == 285212704)
          {
            v43 = 13;
            goto LABEL_160;
          }

          if (v21 == 285212736)
          {
            v43 = 14;
            goto LABEL_160;
          }
        }
      }

      else if (v21 <= 536870927)
      {
        if (v21 == 536870916)
        {
          v43 = 0;
          goto LABEL_160;
        }

        if (v21 == 536870920)
        {
          v43 = 1;
          goto LABEL_160;
        }
      }

      else
      {
        switch(v21)
        {
          case 536870928:
            v43 = 2;
            goto LABEL_160;
          case 536870944:
            v43 = 3;
            goto LABEL_160;
          case 536870976:
            v43 = 4;
            goto LABEL_160;
        }
      }

      goto LABEL_159;
    }
  }

  if (v21 <= 31)
  {
    if (v21 > 7)
    {
      if (v21 == 8)
      {
        v43 = 6;
        goto LABEL_160;
      }

      if (v21 == 16)
      {
        v43 = 7;
        goto LABEL_160;
      }
    }

    else
    {
      if (v21 == -1879048176)
      {
        v43 = 12;
        goto LABEL_160;
      }

      if (v21 == 4)
      {
        v43 = 5;
        goto LABEL_160;
      }
    }
  }

  else if (v21 <= 268435463)
  {
    if (v21 == 32)
    {
      v43 = 8;
      goto LABEL_160;
    }

    if (v21 == 64)
    {
      v43 = 9;
      goto LABEL_160;
    }
  }

  else
  {
    switch(v21)
    {
      case 268435464:
        v43 = 15;
        goto LABEL_160;
      case 268435472:
        v43 = 10;
        goto LABEL_160;
      case 268435488:
        v43 = 11;
        goto LABEL_160;
    }
  }

LABEL_159:
  v43 = 18;
LABEL_160:
  v46 = 31 - __clz(v21 >> 3);
  if (v21 >> 3)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v76 = v43;
  v77 = v47;
  v78 = v41;
  v79 = v42;
  ComputeState = MPSLibrary::GetComputeState();
  v49 = [ComputeState threadExecutionWidth];
  if (v49 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v49;
  }

  v51 = 2 * v50;
  v52 = (v50 + v39 - 1) / v50;
  [a2 setComputePipelineState:{ComputeState, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69}];
  [a2 setBuffer:objc_msgSend(v11 offset:"buffer") atIndex:{v18, 0}];
  [a2 setBuffer:objc_msgSend(v17 offset:"buffer") atIndex:{v19, 1}];
  [a2 setBytes:&v74 length:24 atIndex:2];
  v72 = v52;
  v73 = vdupq_n_s64(1uLL);
  v70 = v51;
  v71 = v73;
  [a2 dispatchThreadgroups:&v72 threadsPerThreadgroup:&v70];
  return MPSLibrary::ReleaseComputeState();
}

uint64_t EncodeHammingDistance(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + *MEMORY[0x277CD7370]);
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = [*(a4 + 232) graph];
  v9 = **(v8 + 56);
  if (*(*(v8 + 56) + 8) == v9)
  {
    goto LABEL_80;
  }

  v11 = *(*v9 + 8);
  v10 = *v11;
  v12 = v11[1] - *v11;
  if (!v12 || (v184 = a1, v12 <= 8))
  {
LABEL_79:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = *v10;
  v13 = v10[1];
  v15 = [*(a4 + 232) graph];
  v16 = **(v15 + 56);
  if (*(*(v15 + 56) + 8) == v16)
  {
LABEL_80:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v18 = *(*v16 + 24);
  v17 = *v18;
  if (v18[1] == *v18)
  {
    goto LABEL_79;
  }

  v19 = *v17;
  v180 = *(*v17 + 2);
  *&v20 = -1;
  *(&v20 + 1) = -1;
  v255 = v20;
  v256 = v20;
  v253 = 0xFFFFFFFFFFFFFFFFLL;
  v254 = v20;
  v252 = v20;
  *&v256 = [*(a4 + 16) count] | 0x10000;
  DimensionSize = BaseTensor::GetDimensionSize(v19);
  v188 = BaseTensor::GetDimensionSize(v19);
  v157 = BaseTensor::GetDimensionSize(v19);
  v181 = BaseTensor::GetDimensionSize(v19);
  v21 = BaseTensor::GetDimensionSize(v14);
  v177 = BaseTensor::GetDimensionSize(v14);
  LODWORD(v19) = BaseTensor::GetDimensionSize(v14);
  v175 = BaseTensor::GetDimensionSize(v14);
  v170 = BaseTensor::GetDimensionSize(v13);
  v173 = BaseTensor::GetDimensionSize(v13);
  v172 = BaseTensor::GetDimensionSize(v13);
  v176 = v19;
  v171 = BaseTensor::GetDimensionSize(v13);
  if ((*(v7 + 1477) & 4) == 0)
  {
    if (v21 <= 0x200)
    {
      if (v21 <= 0x100)
      {
        if (v21 <= 0x10)
        {
          if (v21 <= 8)
          {
            v24 = 1;
          }

          else
          {
            v24 = 4;
          }

          v185 = 8;
          v22 = 1;
          v23 = 4;
          v25 = v21;
          if (*(v7 + 1482) << 16 == 0x400000)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v185 = 4;
          v22 = 2;
          v23 = 8;
          v24 = 1;
          v25 = v21;
          if (*(v7 + 1482) << 16 == 0x400000)
          {
LABEL_26:
            v185 = 4;
            v191 = 8;
            v24 = 1;
            v193 = 8;
            v190 = 1;
            goto LABEL_27;
          }
        }
      }

      else
      {
        v185 = 4;
        v23 = 8;
        v24 = 2;
        v22 = 2;
        v25 = v21;
        if (*(v7 + 1482) << 16 == 0x400000)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v185 = 4;
      v22 = 2;
      v23 = 16;
      v24 = 1;
      v25 = v21;
      if (*(v7 + 1482) << 16 == 0x400000)
      {
        goto LABEL_26;
      }
    }

    v193 = v23;
    v190 = v22;
    v191 = 8;
    goto LABEL_27;
  }

  v25 = v21;
  if (v21 >= 0x10)
  {
    v24 = 4;
    if (*(v7 + 1472) > 17)
    {
      v26 = 1;
    }

    else
    {
      v26 = 4;
    }

    v185 = v26;
    v190 = 1;
    v193 = 2;
    v191 = 16;
  }

  else
  {
    v191 = 16;
    v24 = 2;
    v193 = 2;
    v190 = 2;
    v185 = 2;
  }

LABEL_27:
  v158 = a2;
  v27 = [*(a4 + 232) graph];
  v28 = *(v27 + 64);
  v29 = *v28;
  v30 = v28[1];
  if (*v28 == v30)
  {
    v33 = 0;
    v37 = v181;
    goto LABEL_77;
  }

  v31 = v27;
  v32 = 0;
  v33 = -1;
  v34 = -1;
  do
  {
    v35 = *v29;
    if (v35 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v31) + 32))
    {
      v33 = v32;
    }

    v36 = *v29;
    if (v36 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v31) + 32))
    {
      v34 = v32;
    }

    if (MPSKernelDAG::GetCoreOpNumberOfInputs(v31) == 3)
    {
      MPSKernelDAG::GetCoreOpInputAtIndex(v31);
    }

    ++v32;
    ++v29;
  }

  while (v29 != v30);
  v37 = v181;
  if (v33 == -1)
  {
    v33 = 0;
LABEL_77:
    v38 = v24;
    v39 = v177;
    v40 = v25;
    v41 = v185;
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v38 = v24;
  v39 = v177;
  v40 = v25;
  v41 = v185;
  if (v34 != -1)
  {
    goto LABEL_41;
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_39:
    MTLReportFailure();
  }

LABEL_40:
  v34 = 0;
LABEL_41:
  v42 = [*(a4 + 16) objectAtIndexedSubscript:v33];
  v43 = [*(a4 + 16) objectAtIndexedSubscript:v34];
  v44 = *(a4 + 208);
  v45 = v43;
  makeStrideElements();
  v178 = vuzp1q_s32(v250, v251);
  v168 = vuzp1q_s32(v248, v249);
  v164 = vuzp1q_s32(v246, v247);
  v162 = vuzp1q_s32(v244, v245);
  makeStrideElements();
  v186 = v237;
  v182 = v236;
  v165 = v238;
  v166 = v239;
  v163 = v241;
  v160 = v243;
  v161 = v240;
  v159 = v242;
  makeStrideElements();
  v46 = v229;
  v47 = v228;
  v48 = v231;
  v49 = v230;
  v50 = v233;
  v51 = v232;
  v52 = v235;
  v53 = v234;
  v54 = *MEMORY[0x277CD73F0];
  v55 = *&v42[v54];
  v56 = MEMORY[0x277CD73D8];
  if (v55)
  {
    v57 = 0;
    v58 = *&v42[*MEMORY[0x277CD73D8]];
    v59 = v162;
    v60 = v164;
    v61 = v168;
    v62 = v178;
    v63 = v190;
    v64 = v193;
    v65 = v191;
    v66 = v173;
    do
    {
      v217 = v58;
      v222[0] = v162;
      v222[1] = v164;
      v222[2] = v168;
      v222[3] = v178;
      v67 = *(v222 + (*(&v217 | v57 & 0xF) & 0xF));
      v218 = v59;
      v219 = v60;
      v220 = v61;
      v221 = v62;
      v218.i32[v57 & 0xF] = v67;
      v62 = v221;
      v61 = v220;
      v60 = v219;
      v59 = v218;
      ++v57;
    }

    while (v55 != v57);
  }

  else
  {
    v59 = v162;
    v60 = v164;
    v61 = v168;
    v62 = v178;
    v63 = v190;
    v64 = v193;
    v65 = v191;
    v66 = v173;
  }

  v68 = vuzp1q_s32(v159, v160);
  v69 = vuzp1q_s32(v161, v163);
  v70 = vuzp1q_s32(v165, v166);
  v71 = *&v45[v54];
  v72 = vuzp1q_s32(v182, v186);
  if (v71)
  {
    v73 = 0;
    v74 = *&v45[*v56];
    v75 = v72;
    v76 = v70;
    v77 = v69;
    v78 = v68;
    do
    {
      v211 = v74;
      v216[0] = v72;
      v216[1] = v70;
      v216[2] = v69;
      v216[3] = v68;
      v79 = *(v216 + (*(&v211 | v73 & 0xF) & 0xF));
      v212 = v75;
      v213 = v76;
      v214 = v77;
      v215 = v78;
      v212.i32[v73 & 0xF] = v79;
      v77 = v214;
      v78 = v215;
      v75 = v212;
      v76 = v213;
      ++v73;
    }

    while (v71 != v73);
    v80 = vuzp1q_s32(v53, v52);
    v81 = vuzp1q_s32(v51, v50);
    v82 = vuzp1q_s32(v49, v48);
    v83 = *&v44[v54];
    v84 = vuzp1q_s32(v47, v46);
    if (v83)
    {
      goto LABEL_51;
    }

LABEL_55:
    v87 = v84;
    v88 = v82;
    v89 = v81;
    v90 = v80;
    goto LABEL_56;
  }

  v75 = v72;
  v76 = v70;
  v77 = v69;
  v78 = v68;
  v80 = vuzp1q_s32(v53, v52);
  v81 = vuzp1q_s32(v51, v50);
  v82 = vuzp1q_s32(v49, v48);
  v83 = *&v44[v54];
  v84 = vuzp1q_s32(v47, v46);
  if (!v83)
  {
    goto LABEL_55;
  }

LABEL_51:
  v85 = 0;
  v86 = *&v44[*v56];
  v87 = v84;
  v88 = v82;
  v89 = v81;
  v90 = v80;
  do
  {
    v205 = v86;
    v210[0] = v84;
    v210[1] = v82;
    v210[2] = v81;
    v210[3] = v80;
    v91 = *(v210 + (*(&v205 | v85 & 0xF) & 0xF));
    v206 = v87;
    v207 = v88;
    v208 = v89;
    v209 = v90;
    v206.i32[v85 & 0xF] = v91;
    v89 = v208;
    v90 = v209;
    v87 = v206;
    v88 = v207;
    ++v85;
  }

  while (v83 != v85);
LABEL_56:
  v179 = (v41 * v65);
  v174 = (v63 * v65);
  v92 = *(a4 + 8);
  v183 = *(v92 + 80 * v33 + 64);
  if (v55)
  {
    v93 = 0;
    v94 = 0;
    v95 = &v42[*MEMORY[0x277CD7418]];
    v97 = *(v95 + 2);
    v96 = *(v95 + 3);
    v99 = *v95;
    v98 = *(v95 + 1);
    v100 = *&v42[*v56];
    v101 = *&v42[*MEMORY[0x277CD73C8]] >> 3;
    do
    {
      v202 = v100;
      v204[0] = v99;
      v204[1] = v98;
      v204[2] = v97;
      v204[3] = v96;
      v102 = *(v204 + (*(&v202 | v93 & 0xF) & 0xF));
      v203[0] = v59;
      v203[1] = v60;
      v203[2] = v61;
      v203[3] = v62;
      v94 += *(v203 + (v93++ & 0xF)) * v101 * v102;
    }

    while (v55 != v93);
    v169 = *(v92 + 80 * v34 + 64);
    if (v71)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v94 = 0;
    v169 = *(v92 + 80 * v34 + 64);
    if (v71)
    {
LABEL_60:
      v103 = 0;
      v104 = 0;
      v105 = &v45[*MEMORY[0x277CD7418]];
      v61 = v105[2];
      v60 = v105[3];
      v107 = *v105;
      v106 = v105[1];
      v108 = *&v45[*v56];
      v109 = *&v45[*MEMORY[0x277CD73C8]] >> 3;
      do
      {
        v199 = v108;
        v201[0] = v107;
        v201[1] = v106;
        v201[2] = v61;
        v201[3] = v60;
        v110 = *(v201 + (*(&v199 | v103 & 0xF) & 0xF));
        v200[0] = v75;
        v200[1] = v76;
        v200[2] = v77;
        v200[3] = v78;
        v104 += *(v200 + (v103++ & 0xF)) * v109 * v110;
      }

      while (v71 != v103);
      goto LABEL_65;
    }
  }

  v104 = 0;
LABEL_65:
  v187 = v45;
  v111 = v59.i32[0];
  v112 = v75.i32[0];
  v167 = *(a4 + 192);
  if (v83)
  {
    v113 = 0;
    v114 = 0;
    v115 = &v44[*MEMORY[0x277CD7418]];
    v61 = v115[2];
    v60 = v115[3];
    v117 = *v115;
    v116 = v115[1];
    v118 = *&v44[*v56];
    v119 = *&v44[*MEMORY[0x277CD73C8]] >> 3;
    do
    {
      v196 = v118;
      v198[0] = v117;
      v198[1] = v116;
      v198[2] = v61;
      v198[3] = v60;
      v120 = *(v198 + (*(&v196 | v113 & 0xF) & 0xF));
      v197[0] = v87;
      v197[1] = v88;
      v197[2] = v89;
      v197[3] = v90;
      v114 += *(v197 + (v113++ & 0xF)) * v119 * v120;
    }

    while (v83 != v113);
  }

  else
  {
    v114 = 0;
  }

  v60.i32[0] = v40;
  v61.i32[0] = 2;
  v121 = v59;
  v121.i32[0] = 0;
  v122 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v61, v60), 0), v121, v59);
  v59.i32[0] = v170;
  v123 = vdupq_lane_s32(*&vcgtq_u32(v61, v59), 0);
  v124 = v75;
  v124.i32[0] = 0;
  v125 = vbslq_s8(v123, v124, v75);
  v123.i32[0] = v39;
  v126 = vdupq_lane_s32(*&vcgtq_u32(v61, v123), 0);
  v127 = v122;
  v127.i32[1] = 0;
  v128 = vbslq_s8(v126, v127, v122);
  v126.i32[0] = v66;
  v129 = vdupq_lane_s32(*&vcgtq_u32(v61, v126), 0);
  v130 = v125;
  v130.i32[1] = 0;
  v131 = vbslq_s8(v129, v130, v125);
  v129.i32[0] = v176;
  v132 = vdupq_lane_s32(*&vcgtq_u32(v61, v129), 0);
  v133 = v128;
  v133.i32[2] = 0;
  v134 = v112 == 1;
  v135 = vbslq_s8(v132, v133, v128);
  v132.i32[0] = v172;
  v136 = vdupq_lane_s32(*&vcgtq_u32(v61, v132), 0);
  v137 = v131;
  v137.i32[2] = 0;
  v138 = vbslq_s8(v136, v137, v131);
  v136.i32[0] = v175;
  v139 = vdupq_lane_s32(*&vcgtq_u32(v61, v136), 0);
  v140 = v135;
  v140.i32[3] = 0;
  v141 = vbslq_s8(v139, v140, v135);
  v139.i32[0] = v171;
  v142 = vdupq_lane_s32(*&vcgtq_u32(v61, v139), 0);
  v143 = v138;
  v143.i32[3] = 0;
  v144 = vbslq_s8(v142, v143, v138);
  v145 = v41 - 1;
  v146 = v37;
  if ((v180 & 0xFFF8) == 0x10)
  {
    v147 = 269484032;
  }

  else
  {
    v147 = 0x100000;
  }

  *&v253 = v147 & 0xFFFFFFF8 | ((v37 == 1) << 19) | ((v38 << 21) + 31457280) & 0x1E00000 | ((v65 << 13) + 516096) & 0x7E000 | ((v64 << 7) + 8064) & 0x1F80 | (16 * v63 + 48) & 0x30 | v145 & 7 | ((((v179 - 1) & v188 | (v174 - 1) & DimensionSize) == 0) << 30) | ((v111 == 1) << 25) | (v134 << 26) | ((v87.i32[0] == 1) << 27) | ((((v174 - 1) & v66 | (v179 - 1) & v39 | (v40 % (v64 * v38))) == 0) << 29);
  v60.i32[1] = v39;
  v60.i64[1] = __PAIR64__(v175, v176);
  v59.i32[1] = v66;
  v59.i64[1] = __PAIR64__(v171, v172);
  v225[0] = v60;
  v225[1] = v59;
  v225[2] = v141;
  v225[3] = v144;
  v225[4] = v87;
  v155 = *(v184 + *MEMORY[0x277CD7360]);
  v156 = *(v184 + *MEMORY[0x277CD7368]);
  v154 = *(a4 + 232);
  v148 = v63;
  v194 = v64;
  v192 = v65;
  MPSLibrary::CreateUberShaderKey();
  v149 = MEMORY[0x277CD7370];
  v150 = *(v184 + *MEMORY[0x277CD7370]);
  if (!MPSLibrary::GetPipelineStateForMPSKey())
  {
    return -1;
  }

  [v158 setComputePipelineState:{v154, v155, v156, 0, 0}];
  v151 = *(v184 + *v149);
  MPSLibrary::ReleaseMPSKey();
  v226 = v157;
  v152 = 1.0 / v157;
  v227 = v152;
  MPSSetNDArraysOnComputeEncoder(v158, a4, 4, 0, 0);
  [v158 setBytes:v225 length:96 atIndex:29];
  [v158 setBuffer:objc_msgSend(v42 offset:"buffer") atIndex:{v94 + v183, 28}];
  [v158 setBuffer:objc_msgSend(v187 offset:"buffer") atIndex:{v104 + v169, 27}];
  [v158 setBuffer:objc_msgSend(v44 offset:"buffer") atIndex:{v114 + v167, 26}];
  [v158 setThreadgroupMemoryLength:4 * v38 * v192 * v194 * v148 atIndex:0];
  v224[0] = (DimensionSize + v174 - 1) / v174;
  v224[1] = (v188 + v179 - 1) / v179;
  v224[2] = v146 * v157;
  v223[0] = v194;
  v223[1] = v192;
  v223[2] = 1;
  [v158 dispatchThreadgroups:v224 threadsPerThreadgroup:v223];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t MPSNDArrayConvolution3DDeviceBehavior::EncodeNDArrayConvolution3D(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v225 = *a4;
  v5 = *(a4 + 2);
  v227 = *(a4 + 3);
  v234 = a4[13];
  v6 = *(a4 + 160);
  v7 = a4[21];
  v203 = a4[22];
  v8 = [*(v7 + 232) inputTensorAtIndex:0];
  v9 = [*(v7 + 232) inputTensorAtIndex:1];
  v10 = [*(v7 + 232) inputTensorAtIndex:2];
  v11 = [*(v7 + 232) outputTensorAtIndex:0];
  v196 = [*(v7 + 16) count];
  if (*v8 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v9 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v11 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v10 && *v10 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v12 = a4[7];
  v13 = a4[8];
  v232 = a4[9];
  if (v6)
  {
    v186 = a4[17] + v12 * a4[14];
    v188 = a4[18] + v13 * a4[15];
    v190 = a4[19] + a4[9] * a4[16];
    v8 = v10;
  }

  else
  {
    LODWORD(v186) = a4[14];
    LODWORD(v188) = a4[15];
    LODWORD(v190) = a4[16];
  }

  v181 = a4[10];
  v183 = a4[11];
  v184 = a4[12];
  v199 = v5;
  v230 = GetAxisIndexForDataFormat(MPSNDArrayConvolution3DDataFormat)::axis[v5];
  v14 = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution3DWeightsFormat)::axis[v227];
  v15 = *(v8 + 16);
  v17 = *v15;
  v16 = v15[1];
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v223 = v9;
  v18 = *(v9 + 2);
  v20 = *v18;
  v19 = v18[1];
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v21 = *(v11 + 16);
  v23 = *v21;
  v22 = v21[1];
  v213 = v11;
  if (v22 != v23)
  {
    if (((v22 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v24 = (8 * v230);
  v25 = *v24;
  v26 = *(8 * BYTE1(v230));
  v27 = (8 * BYTE2(v230));
  v179 = *v27;
  v28 = (8 * BYTE3(v230));
  v177 = *v28;
  v29 = (8 * BYTE4(v230));
  v175 = *v29;
  v231 = *v24;
  v212 = *v27;
  v219 = *v28;
  v221 = *v29;
  v30 = *(8 * v14);
  v217 = *(8 * BYTE2(v14));
  v215 = *(8 * BYTE3(v14));
  v31 = *(8 * BYTE1(v14)) * v234;
  v32 = *(8 * BYTE4(v14));
  v206 = v26;
  v208 = v26;
  if (v6)
  {
    if (v31 != v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v30 != v206 && MTLReportFailureTypeEnabled())
    {
LABEL_282:
      MTLReportFailure();
    }
  }

  else
  {
    if (v31 != v26 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v30 != v208 && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
      goto LABEL_282;
    }
  }

  if (v25 != v231 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v33 = *(v8 + 8);
  if (v33 > 285212703)
  {
    if (v33 <= 536870915)
    {
      if (v33 > 301989895)
      {
        if (v33 == 301989896)
        {
          v34 = 512;
          v35 = v223[2];
          if (v35 <= 285212703)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v33 != 335544328)
          {
            goto LABEL_116;
          }

          v34 = 544;
          v35 = v223[2];
          if (v35 <= 285212703)
          {
            goto LABEL_86;
          }
        }
      }

      else if (v33 == 285212704)
      {
        v34 = 416;
        v35 = v223[2];
        if (v35 <= 285212703)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v33 != 285212736)
        {
          goto LABEL_116;
        }

        v34 = 448;
        v35 = v223[2];
        if (v35 <= 285212703)
        {
          goto LABEL_86;
        }
      }
    }

    else if (v33 <= 536870927)
    {
      if (v33 == 536870916)
      {
        v34 = 0;
        v35 = v223[2];
        if (v35 > 285212703)
        {
          goto LABEL_117;
        }

        goto LABEL_86;
      }

      if (v33 != 536870920)
      {
        goto LABEL_116;
      }

      v34 = 32;
      v35 = v223[2];
      if (v35 <= 285212703)
      {
        goto LABEL_86;
      }
    }

    else
    {
      switch(v33)
      {
        case 536870928:
          v34 = 64;
          v35 = v223[2];
          if (v35 <= 285212703)
          {
            goto LABEL_86;
          }

          break;
        case 536870944:
          v34 = 96;
          v35 = v223[2];
          if (v35 <= 285212703)
          {
            goto LABEL_86;
          }

          break;
        case 536870976:
          v34 = 128;
          v35 = v223[2];
          if (v35 <= 285212703)
          {
            goto LABEL_86;
          }

          break;
        default:
          goto LABEL_116;
      }
    }
  }

  else if (v33 <= 31)
  {
    if (v33 > 7)
    {
      if (v33 == 8)
      {
        v34 = 192;
        v35 = v223[2];
        if (v35 <= 285212703)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v33 != 16)
        {
          goto LABEL_116;
        }

        v34 = 224;
        v35 = v223[2];
        if (v35 <= 285212703)
        {
          goto LABEL_86;
        }
      }
    }

    else if (v33 == -1879048176)
    {
      v34 = 384;
      v35 = v223[2];
      if (v35 <= 285212703)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v33 != 4)
      {
        goto LABEL_116;
      }

      v34 = 160;
      v35 = v223[2];
      if (v35 <= 285212703)
      {
        goto LABEL_86;
      }
    }
  }

  else if (v33 <= 268435463)
  {
    if (v33 == 32)
    {
      v34 = 256;
      v35 = v223[2];
      if (v35 <= 285212703)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v33 != 64)
      {
        goto LABEL_116;
      }

      v34 = 288;
      v35 = v223[2];
      if (v35 <= 285212703)
      {
        goto LABEL_86;
      }
    }
  }

  else
  {
    switch(v33)
    {
      case 268435464:
        v34 = 480;
        v35 = v223[2];
        if (v35 <= 285212703)
        {
          goto LABEL_86;
        }

        break;
      case 268435472:
        v34 = 320;
        v35 = v223[2];
        if (v35 <= 285212703)
        {
          goto LABEL_86;
        }

        break;
      case 268435488:
        v34 = 352;
        v35 = v223[2];
        if (v35 > 285212703)
        {
          break;
        }

LABEL_86:
        if (v35 <= 31)
        {
          if (v35 > 7)
          {
            if (v35 == 8)
            {
              v34 |= 0x1800u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
            }

            if (v35 == 16)
            {
              v34 |= 0x1C00u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
            }
          }

          else
          {
            if (v35 == -1879048176)
            {
              v34 |= 0x3000u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
            }

            if (v35 == 4)
            {
              v34 |= 0x1400u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
            }
          }
        }

        else if (v35 <= 268435463)
        {
          if (v35 == 32)
          {
            v34 |= 0x2000u;
            if (v6)
            {
              goto LABEL_169;
            }

            goto LABEL_146;
          }

          if (v35 == 64)
          {
            v34 |= 0x2400u;
            if (v6)
            {
              goto LABEL_169;
            }

            goto LABEL_146;
          }
        }

        else
        {
          switch(v35)
          {
            case 268435464:
              v34 |= 0x3C00u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
            case 268435472:
              v34 |= 0x2800u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
            case 268435488:
              v34 |= 0x2C00u;
              if (v6)
              {
                goto LABEL_169;
              }

              goto LABEL_146;
          }
        }

LABEL_168:
        v34 |= 0x4800u;
        if (v6)
        {
          goto LABEL_169;
        }

        goto LABEL_146;
      default:
LABEL_116:
        v34 = 576;
        v35 = v223[2];
        if (v35 > 285212703)
        {
          break;
        }

        goto LABEL_86;
    }
  }

LABEL_117:
  if (v35 <= 536870915)
  {
    if (v35 > 301989895)
    {
      if (v35 == 301989896)
      {
        v34 |= 0x4000u;
        if (!v6)
        {
          goto LABEL_146;
        }
      }

      else
      {
        if (v35 != 335544328)
        {
          goto LABEL_168;
        }

        v34 |= 0x4400u;
        if (!v6)
        {
          goto LABEL_146;
        }
      }
    }

    else if (v35 == 285212704)
    {
      v34 |= 0x3400u;
      if (!v6)
      {
        goto LABEL_146;
      }
    }

    else
    {
      if (v35 != 285212736)
      {
        goto LABEL_168;
      }

      v34 |= 0x3800u;
      if (!v6)
      {
        goto LABEL_146;
      }
    }
  }

  else if (v35 <= 536870927)
  {
    if (v35 == 536870916)
    {
      if (v6)
      {
        goto LABEL_169;
      }

      goto LABEL_146;
    }

    if (v35 != 536870920)
    {
      goto LABEL_168;
    }

    v34 |= 0x400u;
    if (!v6)
    {
      goto LABEL_146;
    }
  }

  else
  {
    switch(v35)
    {
      case 536870928:
        v34 |= 0x800u;
        if (!v6)
        {
          goto LABEL_146;
        }

        break;
      case 536870944:
        v34 |= 0xC00u;
        if (!v6)
        {
          goto LABEL_146;
        }

        break;
      case 536870976:
        v34 |= 0x1000u;
        if (v6)
        {
          break;
        }

LABEL_146:
        v36 = *(v11 + 8);
        if (v36 > 285212703)
        {
          goto LABEL_214;
        }

LABEL_147:
        if (v36 <= 31)
        {
          if (v36 > 7)
          {
            if (v36 == 8)
            {
              v37 = 6;
              goto LABEL_236;
            }

            if (v36 == 16)
            {
              v37 = 7;
              goto LABEL_236;
            }
          }

          else
          {
            if (v36 == -1879048176)
            {
              v37 = 12;
              goto LABEL_236;
            }

            if (v36 == 4)
            {
              v37 = 5;
              goto LABEL_236;
            }
          }
        }

        else if (v36 <= 268435463)
        {
          if (v36 == 32)
          {
            v37 = 8;
            goto LABEL_236;
          }

          if (v36 == 64)
          {
            v37 = 9;
            goto LABEL_236;
          }
        }

        else
        {
          switch(v36)
          {
            case 268435464:
              v37 = 15;
              goto LABEL_236;
            case 268435472:
              v37 = 10;
              goto LABEL_236;
            case 268435488:
              v37 = 11;
              goto LABEL_236;
          }
        }

        goto LABEL_235;
      default:
        goto LABEL_168;
    }
  }

LABEL_169:
  v38 = *(v10 + 8);
  if (v38 > 285212703)
  {
    if (v38 <= 536870915)
    {
      if (v38 > 301989895)
      {
        if (v38 == 301989896)
        {
          v39 = 0x80000;
          goto LABEL_213;
        }

        if (v38 == 335544328)
        {
          v39 = 557056;
          goto LABEL_213;
        }
      }

      else
      {
        if (v38 == 285212704)
        {
          v39 = 425984;
          goto LABEL_213;
        }

        if (v38 == 285212736)
        {
          v39 = 458752;
          goto LABEL_213;
        }
      }
    }

    else if (v38 <= 536870927)
    {
      if (v38 == 536870916)
      {
        v39 = 0;
        goto LABEL_213;
      }

      if (v38 == 536870920)
      {
        v39 = 0x8000;
        goto LABEL_213;
      }
    }

    else
    {
      switch(v38)
      {
        case 536870928:
          v39 = 0x10000;
          goto LABEL_213;
        case 536870944:
          v39 = 98304;
          goto LABEL_213;
        case 536870976:
          v39 = 0x20000;
          goto LABEL_213;
      }
    }
  }

  else if (v38 <= 31)
  {
    if (v38 > 7)
    {
      if (v38 == 8)
      {
        v39 = 196608;
        goto LABEL_213;
      }

      if (v38 == 16)
      {
        v39 = 229376;
        goto LABEL_213;
      }
    }

    else
    {
      if (v38 == -1879048176)
      {
        v39 = 393216;
        goto LABEL_213;
      }

      if (v38 == 4)
      {
        v39 = 163840;
        goto LABEL_213;
      }
    }
  }

  else if (v38 <= 268435463)
  {
    if (v38 == 32)
    {
      v39 = 0x40000;
      goto LABEL_213;
    }

    if (v38 == 64)
    {
      v39 = 294912;
      goto LABEL_213;
    }
  }

  else
  {
    switch(v38)
    {
      case 268435464:
        v39 = 491520;
        goto LABEL_213;
      case 268435472:
        v39 = 327680;
        goto LABEL_213;
      case 268435488:
        v39 = 360448;
        goto LABEL_213;
    }
  }

  v39 = 589824;
LABEL_213:
  v34 |= v39;
  v36 = *(v11 + 8);
  if (v36 <= 285212703)
  {
    goto LABEL_147;
  }

LABEL_214:
  if (v36 <= 536870915)
  {
    if (v36 > 301989895)
    {
      if (v36 == 301989896)
      {
        v37 = 16;
        goto LABEL_236;
      }

      if (v36 == 335544328)
      {
        v37 = 17;
        goto LABEL_236;
      }
    }

    else
    {
      if (v36 == 285212704)
      {
        v37 = 13;
        goto LABEL_236;
      }

      if (v36 == 285212736)
      {
        v37 = 14;
        goto LABEL_236;
      }
    }
  }

  else if (v36 <= 536870927)
  {
    if (v36 == 536870916)
    {
      v37 = 0;
      goto LABEL_236;
    }

    if (v36 == 536870920)
    {
      v37 = 1;
      goto LABEL_236;
    }
  }

  else
  {
    switch(v36)
    {
      case 536870928:
        v37 = 2;
        goto LABEL_236;
      case 536870944:
        v37 = 3;
        goto LABEL_236;
      case 536870976:
        v37 = 4;
        goto LABEL_236;
    }
  }

LABEL_235:
  v37 = 18;
LABEL_236:
  v40 = v37 | v34;
  v42 = v232 == 1 && v13 == 1 && v12 == 1;
  v43 = 0x400000;
  if (!v42)
  {
    v43 = 0;
  }

  v331 = -1;
  v332 = -1;
  v333 = v43 | (v6 << 21) | (v199 << 23) | (v227 << 25) | 0xD84E8;
  v334 = v40;
  v335 = 0u;
  v336 = 0u;
  v337 = v196 | (v6 << 8) | 0x10000;
  v338 = 0;
  if ((atomic_load_explicit(&qword_27DF86810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86810))
  {
    v146 = &CommonKernelsConvolution3DForward;
    if (v6)
    {
      v146 = &CommonKernelsConvolution3DGradientWithInput;
    }

    _MergedGlobals_9 = v146;
    __cxa_guard_release(&qword_27DF86810);
  }

  v44 = *_MergedGlobals_9;
  v148 = *(v203 + *MEMORY[0x277CD7360]);
  v149 = *(v203 + *MEMORY[0x277CD7368]);
  v147 = *(v7 + 232);
  MPSLibrary::CreateUberShaderKey();
  v45 = v13;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSGetUIntDivisorMagicNumber();
  v228 = v47;
  v171 = ((v221 + 7) >> 3) * ((v219 + 3) >> 2);
  MPSGetUIntDivisorMagicNumber();
  v204 = v48;
  v49 = v208 / v234;
  v170 = (v208 / v234 + 31) >> 5;
  MPSGetUIntDivisorMagicNumber();
  v209 = v50;
  MPSGetUIntDivisorMagicNumber();
  v200 = v51;
  MPSGetUIntDivisorMagicNumber();
  v197 = v52;
  MPSGetUIntDivisorMagicNumber();
  v194 = v53;
  MPSGetUIntDivisorMagicNumber();
  v192 = v54;
  MPSGetUIntDivisorMagicNumber();
  v173 = v55;
  MPSGetUIntDivisorMagicNumber();
  v172 = v56;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v147, v148, v149, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  v300[0] = v228;
  v300[1] = v204;
  v300[2] = v209;
  v300[3] = v200;
  v300[4] = v197;
  v300[5] = v194;
  v300[6] = v192;
  v300[7] = v173;
  v300[8] = v172;
  memset(&v300[9], 0, 48);
  v301 = v206 / v234;
  v302 = v49;
  v303 = v234;
  v304 = v231;
  v305 = v175;
  v306 = v177;
  v307 = v179;
  v308 = v221;
  v309 = v219;
  v310 = v212;
  v311 = 0;
  v312 = 0;
  v313 = v32;
  v314 = v215;
  v315 = v217;
  v316 = v186 - ((v32 - 1) * v181 + 1) / 2;
  v317 = v188 - ((v215 - 1) * v183 + 1) / 2;
  v318 = v190 - ((v217 - 1) * v184 + 1) / 2;
  v319 = v12;
  v320 = v45;
  v321 = v232;
  v322 = v181;
  v323 = v183;
  v324 = v184;
  v325 = v215 * v217 * v32 * ((v206 / v234 + 7) >> 3);
  v326 = 0u;
  v327 = 0u;
  v328 = 0u;
  memset(v329, 0, sizeof(v329));
  v330 = 0;
  MPSSetNDArraysOnComputeEncoder(a2, v7, 4, 0, 0);
  v57 = [*(v7 + 232) graph];
  v58 = *(v57 + 8);
  v59 = *v58;
  v60 = v58[1];
  v211 = v7;
  if (*v58 == v60)
  {
    v64 = 0;
    v69 = v223;
    v68 = v213;
  }

  else
  {
    v61 = v8;
    v62 = v6;
    v63 = 0;
    v64 = -1;
    v65 = -1;
    do
    {
      v66 = *v59;
      if (v66 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v57) + 32))
      {
        v64 = v63;
      }

      v67 = *v59;
      if (v67 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v57) + 32))
      {
        v65 = v63;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v57) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v57);
      }

      ++v63;
      ++v59;
    }

    while (v59 != v60);
    v68 = v213;
    if (v64 == -1)
    {
      v64 = 0;
      v6 = v62;
      v69 = v223;
      v8 = v61;
      v7 = v211;
    }

    else
    {
      v6 = v62;
      v69 = v223;
      v8 = v61;
      v7 = v211;
      if (v65 != -1)
      {
        goto LABEL_262;
      }
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v65 = 0;
LABEL_262:
  DimensionSize = BaseTensor::GetDimensionSize(v68);
  v71 = BaseTensor::GetDimensionSize(v68);
  v72 = BaseTensor::GetDimensionSize(v68);
  v226 = BaseTensor::GetDimensionSize(v68);
  v73 = BaseTensor::GetDimensionSize(v68);
  v224 = BaseTensor::GetDimensionSize(v8);
  v222 = BaseTensor::GetDimensionSize(v8);
  v220 = BaseTensor::GetDimensionSize(v8);
  v218 = BaseTensor::GetDimensionSize(v8);
  v216 = BaseTensor::GetDimensionSize(v8);
  v214 = BaseTensor::GetDimensionSize(v69);
  v210 = BaseTensor::GetDimensionSize(v69);
  v207 = BaseTensor::GetDimensionSize(v69);
  v205 = BaseTensor::GetDimensionSize(v69);
  v74 = BaseTensor::GetDimensionSize(v69);
  v75 = [*(v7 + 16) objectAtIndexedSubscript:v64];
  v201 = v6;
  if (v6)
  {
    v75 = *(v7 + 112);
  }

  v198 = v73;
  v76 = [*(v7 + 16) objectAtIndexedSubscript:v65];
  v77 = *(v7 + 208);
  makeStrideElements();
  makeStrideElements();
  v178 = v74;
  v180 = v72;
  v182 = v71;
  makeStrideElements();
  v78 = vuzp1q_s32(v294, v295);
  v79 = vuzp1q_s32(v288, v289);
  v80 = vuzp1q_s32(v286, v287);
  v81 = vuzp1q_s32(v284, v285);
  v82 = v278;
  v83 = v276;
  v84 = *MEMORY[0x277CD73D8];
  v85 = *(v75 + v84);
  v244[0] = vuzp1q_s32(v292, v293);
  v244[1] = v78;
  v245 = vuzp1q_s32(v296, v297);
  v246 = vuzp1q_s32(v298, v299);
  v86 = v85 & 0xF;
  v195 = *(v244 + v86);
  v242[0] = v244[0];
  v242[1] = v78;
  v242[2] = v245;
  v242[3] = v246;
  v87 = BYTE1(v85) & 0xF;
  v88 = *(v242 + v87);
  v240[0] = v244[0];
  v240[1] = v78;
  v240[2] = v245;
  v240[3] = v246;
  v89 = BYTE2(v85) & 0xF;
  v193 = *(v240 + v89);
  v238[0] = v244[0];
  v238[1] = v78;
  v238[2] = v245;
  v238[3] = v246;
  v90 = BYTE3(v85) & 0xF;
  v189 = *(v238 + v90);
  v236[0] = v244[0];
  v236[1] = v78;
  v236[2] = v245;
  v236[3] = v246;
  v91 = BYTE4(v85) & 0xF;
  v191 = *(v236 + v91);
  v92 = *&v76[v84];
  v257[0] = v81;
  v257[1] = v80;
  v257[2] = v79;
  v258 = vuzp1q_s32(v290, v291);
  v93 = v92 & 0xF;
  v94 = *(v257 + v93);
  v255[0] = v81;
  v255[1] = v80;
  v255[2] = v79;
  v255[3] = v258;
  v95 = BYTE1(v92) & 0xF;
  v187 = *(v255 + v95);
  v253[0] = v81;
  v253[1] = v80;
  v253[2] = v79;
  v253[3] = v258;
  v96 = BYTE2(v92) & 0xF;
  v229 = *(v253 + v96);
  v251[0] = v81;
  v251[1] = v80;
  v251[2] = v79;
  v251[3] = v258;
  v97 = BYTE3(v92) & 0xF;
  v233 = *(v251 + v97);
  v249[0] = v81;
  v249[1] = v80;
  v249[2] = v79;
  v249[3] = v258;
  v98 = *&v77[v84];
  v99 = BYTE4(v92) & 0xF;
  v174 = *(v249 + v99);
  v100 = vuzp1q_s32(v276, v277);
  v101 = vuzp1q_s32(v278, v279);
  v271 = vuzp1q_s32(v282, v283);
  v270 = vuzp1q_s32(v280, v281);
  v269[1] = v101;
  v269[0] = v100;
  v102 = v98.i8[0] & 0xF;
  v103 = *(v269 + v102);
  v267[3] = v271;
  v267[2] = v270;
  v267[1] = v101;
  v267[0] = v100;
  v104 = v98.i8[1] & 0xF;
  v105 = v75;
  v106 = *(v267 + v104);
  v265[3] = v271;
  v265[2] = v270;
  v265[1] = v101;
  v265[0] = v100;
  v107 = v98.i8[2] & 0xF;
  v185 = *(v265 + v107);
  v263[3] = v271;
  v263[2] = v270;
  v263[1] = v101;
  v263[0] = v100;
  v108 = v98.i8[3] & 0xF;
  v176 = *(v263 + v108);
  v261[3] = v271;
  v261[2] = v270;
  v261[1] = v101;
  v261[0] = v100;
  v109 = *MEMORY[0x277CD7418];
  v110 = *&v105[v109];
  v111 = *&v105[v109 + 16];
  v112 = *&v105[v109 + 32];
  v113 = v98.i8[4] & 0xF;
  v114 = *(v261 + v113);
  v115 = *MEMORY[0x277CD73C8];
  v116 = v211[1];
  v169 = *&v105[v115];
  v248 = *&v105[v109 + 48];
  v247[2] = v112;
  v247[1] = v111;
  v247[0] = v110;
  v168 = *(v247 + v86);
  v243[3] = v248;
  v243[2] = v112;
  v243[1] = v111;
  v243[0] = v110;
  v167 = *(v243 + v87);
  v241[3] = v248;
  v241[2] = v112;
  v241[1] = v111;
  v241[0] = v110;
  v166 = *(v241 + v89);
  v239[2] = v112;
  v239[3] = v248;
  v239[0] = v110;
  v239[1] = v111;
  v165 = *(v239 + v90);
  v237[2] = v112;
  v237[3] = v248;
  v237[0] = v110;
  v237[1] = v111;
  v164 = *(v237 + v91);
  v117 = (v116 + 80 * v64 + 64);
  if (v201)
  {
    v117 = v211 + 12;
  }

  v118 = *&v76[v109];
  v119 = *&v76[v109 + 16];
  v120 = *&v76[v109 + 32];
  v202 = *v117;
  v162 = *&v76[v115];
  v163 = *(v116 + 80 * v65 + 64);
  v260 = *&v76[v109 + 48];
  v259[2] = v120;
  v259[1] = v119;
  v259[0] = v118;
  v161 = *(v259 + v93);
  v256[3] = v260;
  v256[2] = v120;
  v256[1] = v119;
  v256[0] = v118;
  v160 = *(v256 + v95);
  v254[3] = v260;
  v254[2] = v120;
  v254[1] = v119;
  v254[0] = v118;
  v159 = *(v254 + v96);
  v252[3] = v260;
  v252[2] = v120;
  v252[1] = v119;
  v252[0] = v118;
  v158 = *(v252 + v97);
  v250[3] = v260;
  v250[2] = v120;
  v250[1] = v119;
  v250[0] = v118;
  v157 = *(v250 + v99);
  v121 = *&v77[v109];
  v122 = *&v77[v109 + 16];
  v123 = *&v77[v109 + 32];
  v124 = *&v77[v109 + 48];
  v155 = *&v77[v115];
  v156 = v211[24];
  v272[3] = v124;
  v272[2] = v123;
  v272[1] = v122;
  v272[0] = v121;
  v154 = *(v272 + v102);
  v268[3] = v124;
  v268[2] = v123;
  v268[1] = v122;
  v268[0] = v121;
  v153 = *(v268 + v104);
  v266[3] = v124;
  v266[2] = v123;
  v266[1] = v122;
  v266[0] = v121;
  v152 = *(v266 + v107);
  v264[3] = v124;
  v264[2] = v123;
  v264[1] = v122;
  v264[0] = v121;
  v151 = *(v264 + v108);
  v262[3] = v124;
  v262[2] = v123;
  v262[1] = v122;
  v262[0] = v121;
  v150 = *(v262 + v113);
  v121.i32[0] = 2;
  v122.i32[0] = v224;
  *&v326 = __PAIR64__(v222, v224);
  v82.i32[0] = v222;
  v100.i32[0] = v220;
  *(&v326 + 1) = __PAIR64__(v218, v220);
  v124.i32[0] = v218;
  v123.i32[0] = v216;
  *&v327 = __PAIR64__(v214, v216);
  v83.i32[0] = v214;
  v98.i32[0] = v210;
  *(&v327 + 1) = __PAIR64__(v207, v210);
  v79.i32[0] = v207;
  v81.i32[0] = v205;
  *&v328 = __PAIR64__(v178, v205);
  v101.i32[0] = v178;
  *(&v328 + 1) = __PAIR64__(v182, DimensionSize);
  v329[0] = v180;
  v329[1] = v226;
  v329[2] = v198;
  *&v329[13] = __PAIR64__(v106, v103);
  v125.i64[0] = __PAIR64__(v88, v195);
  v126.i64[0] = __PAIR64__(v187, v94);
  v125.i64[1] = __PAIR64__(v189, v193);
  v127 = v125;
  v127.i32[0] = 0;
  v128 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v121, v122), 0), v127, v125);
  v126.i64[1] = __PAIR64__(v233, v229);
  v129 = v126;
  v130 = v128;
  v129.i32[0] = 0;
  v130.i32[1] = 0;
  v131 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v121, v83), 0), v129, v126);
  v132 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v121, v82), 0), v130, v128);
  v133 = vcgtq_u32(v121, v98).u64[0];
  v134 = v131;
  v134.i32[1] = 0;
  v135 = vbslq_s8(vdupq_lane_s32(v133, 0), v134, v131);
  v136 = v132;
  v136.i32[2] = 0;
  v137 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v121, v100), 0), v136, v132);
  v78.i32[0] = v191;
  v80.i32[0] = v174;
  v138 = v135;
  v138.i32[2] = 0;
  v139 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v121, v79), 0), v138, v135);
  v140 = v137;
  v140.i32[3] = 0;
  v141 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v121, v124), 0), v140, v137);
  v142 = v139;
  v142.i32[3] = 0;
  v143 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v121, v81), 0), v142, v139);
  v144 = vbicq_s8(v78, vcgtq_u32(v121, v123));
  *&v329[3] = v141;
  *&v329[7] = vextq_s8(vextq_s8(v144, v144, 4uLL), v143, 0xCuLL);
  *&v329[11] = vextq_s8(v143, vbicq_s8(v80, vcgtq_u32(v121, v101)), 0xCuLL).u64[0];
  v329[15] = v185;
  v330 = __PAIR64__(v114, v176);
  [a2 setThreadgroupMemoryLength:2304 atIndex:0];
  [a2 setBytes:v300 length:416 atIndex:29];
  [a2 setBuffer:objc_msgSend(v105 offset:"buffer") atIndex:{v202 + (v168 * v195 + v167 * v88 + v166 * v193 + v165 * v189 + v164 * v191) * (v169 >> 3), 28}];
  [a2 setBuffer:objc_msgSend(v76 offset:"buffer") atIndex:{v163 + (v161 * v94 + v160 * v187 + v159 * v229 + v158 * v233 + v157 * v174) * (v162 >> 3), 27}];
  [a2 setBuffer:objc_msgSend(v77 offset:"buffer") atIndex:{v156 + (v154 * v103 + v153 * v106 + v152 * v185 + v151 * v176 + v150 * v114) * (v155 >> 3), 26}];
  v275[0] = v171 * v212;
  v275[1] = v170 * v234;
  v275[2] = v231;
  v273 = xmmword_239B0A150;
  v274 = 1;
  [a2 dispatchThreadgroups:v275 threadsPerThreadgroup:&v273];
  operator delete(0);
  operator delete(0);
  operator delete(0);
  return 0;
}

void sub_239A45EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p)
{
  operator delete(__p);
  operator delete(STACK[0x270]);
  if (STACK[0x278])
  {
    operator delete(STACK[0x278]);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolution3DDeviceBehavior::EncodeNDArrayConvolution3DGradientWithWeights(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v221 = *(a4 + 2);
  v218 = *(a4 + 3);
  v229 = a4[13];
  v7 = a4[21];
  v6 = a4[22];
  v202 = [*(v7 + 16) count];
  v187 = a4[14];
  v191 = a4[15];
  v193 = a4[16];
  v8 = a4[12];
  v195 = a4[11];
  v227 = a4[7];
  v225 = a4[8];
  v189 = a4[10];
  v223 = a4[9];
  v9 = [*(v7 + 232) inputTensorAtIndex:0];
  v199 = [*(v7 + 232) inputTensorAtIndex:1];
  v10 = [*(v7 + 232) inputTensorAtIndex:2];
  v230 = [*(v7 + 232) outputTensorAtIndex:0];
  if (*v9 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v10 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v230 != 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v11 = *(v9 + 16);
  v13 = *v11;
  v12 = v11[1];
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v14 = *(v230 + 16);
  v16 = *v14;
  v15 = v14[1];
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v17 = *(v10 + 16);
  v19 = *v17;
  v18 = v17[1];
  v185 = v8;
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v20 = GetAxisIndexForDataFormat(MPSNDArrayConvolution3DDataFormat)::axis[v221];
  v21 = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution3DWeightsFormat)::axis[v218];
  v22 = (8 * v20);
  v23 = (8 * BYTE1(v20));
  v24 = *v23;
  v25 = (8 * BYTE2(v20));
  v180 = *v25;
  v26 = (8 * BYTE3(v20));
  v178 = *v26;
  v27 = (8 * BYTE4(v20));
  v176 = *v27;
  v215 = *v23;
  v207 = *v25;
  v209 = *v26;
  v28 = *v27;
  v29 = *(8 * v21);
  v30 = *(8 * BYTE1(v21));
  v213 = *(8 * BYTE2(v21));
  v211 = *(8 * BYTE3(v21));
  v31 = *(8 * BYTE4(v21));
  v183 = *v22;
  v181 = *v22;
  if (*v22 != *v22 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v215 != v29 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v206 = v24 / v229;
  if (v24 / v229 != v30 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v32 = *(v9 + 8);
  if (v32 > 285212703)
  {
    if (v32 <= 536870915)
    {
      v33 = v202;
      if (v32 > 301989895)
      {
        if (v32 == 301989896)
        {
          v35 = 512;
          v36 = *(v199 + 8);
          if (v36 <= 285212703)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v34 = v199;
          if (v32 != 335544328)
          {
            goto LABEL_106;
          }

          v35 = 544;
          v36 = *(v199 + 8);
          if (v36 <= 285212703)
          {
            goto LABEL_76;
          }
        }
      }

      else if (v32 == 285212704)
      {
        v35 = 416;
        v36 = *(v199 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v34 = v199;
        if (v32 != 285212736)
        {
          goto LABEL_106;
        }

        v35 = 448;
        v36 = *(v199 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      v33 = v202;
      if (v32 <= 536870927)
      {
        if (v32 == 536870916)
        {
          v35 = 0;
          v36 = *(v199 + 8);
          if (v36 > 285212703)
          {
            goto LABEL_107;
          }

          goto LABEL_76;
        }

        v34 = v199;
        if (v32 != 536870920)
        {
          goto LABEL_106;
        }

        v35 = 32;
        v36 = *(v199 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_76;
        }
      }

      else if (v32 == 536870928)
      {
        v35 = 64;
        v36 = *(v199 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_76;
        }
      }

      else if (v32 == 536870944)
      {
        v35 = 96;
        v36 = *(v199 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v34 = v199;
        if (v32 != 536870976)
        {
          goto LABEL_106;
        }

        v35 = 128;
        v36 = *(v199 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_76;
        }
      }
    }
  }

  else if (v32 <= 31)
  {
    v33 = v202;
    if (v32 > 7)
    {
      v34 = v199;
      if (v32 == 8)
      {
        v35 = 192;
        v36 = *(v199 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v32 != 16)
        {
          goto LABEL_106;
        }

        v35 = 224;
        v36 = *(v199 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_76;
        }
      }
    }

    else if (v32 == -1879048176)
    {
      v35 = 384;
      v36 = *(v199 + 8);
      if (v36 <= 285212703)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v34 = v199;
      if (v32 != 4)
      {
        goto LABEL_106;
      }

      v35 = 160;
      v36 = *(v199 + 8);
      if (v36 <= 285212703)
      {
        goto LABEL_76;
      }
    }
  }

  else
  {
    v33 = v202;
    if (v32 <= 268435463)
    {
      v34 = v199;
      if (v32 == 32)
      {
        v35 = 256;
        v36 = *(v199 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v32 != 64)
        {
          goto LABEL_106;
        }

        v35 = 288;
        v36 = *(v199 + 8);
        if (v36 <= 285212703)
        {
          goto LABEL_76;
        }
      }
    }

    else if (v32 == 268435464)
    {
      v35 = 480;
      v36 = *(v199 + 8);
      if (v36 <= 285212703)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if (v32 != 268435472)
      {
        v34 = v199;
        if (v32 == 268435488)
        {
          v35 = 352;
          v36 = *(v199 + 8);
          if (v36 > 285212703)
          {
            goto LABEL_107;
          }

LABEL_76:
          if (v36 <= 31)
          {
            if (v36 > 7)
            {
              if (v36 == 8)
              {
                v35 |= 0x1800uLL;
                v37 = *(v10 + 8);
                if (v37 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
              }

              if (v36 == 16)
              {
                v35 |= 0x1C00uLL;
                v37 = *(v10 + 8);
                if (v37 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
              }
            }

            else
            {
              if (v36 == -1879048176)
              {
                v35 |= 0x3000uLL;
                v37 = *(v10 + 8);
                if (v37 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
              }

              if (v36 == 4)
              {
                v35 |= 0x1400uLL;
                v37 = *(v10 + 8);
                if (v37 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
              }
            }
          }

          else if (v36 <= 268435463)
          {
            if (v36 == 32)
            {
              v35 |= 0x2000uLL;
              v37 = *(v10 + 8);
              if (v37 > 285212703)
              {
                goto LABEL_158;
              }

              goto LABEL_136;
            }

            if (v36 == 64)
            {
              v35 |= 0x2400uLL;
              v37 = *(v10 + 8);
              if (v37 > 285212703)
              {
                goto LABEL_158;
              }

              goto LABEL_136;
            }
          }

          else
          {
            switch(v36)
            {
              case 268435464:
                v35 |= 0x3C00uLL;
                v37 = *(v10 + 8);
                if (v37 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
              case 268435472:
                v35 |= 0x2800uLL;
                v37 = *(v10 + 8);
                if (v37 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
              case 268435488:
                v35 |= 0x2C00uLL;
                v37 = *(v10 + 8);
                if (v37 > 285212703)
                {
                  goto LABEL_158;
                }

                goto LABEL_136;
            }
          }

LABEL_157:
          v35 |= 0x4800uLL;
          v37 = *(v10 + 8);
          if (v37 > 285212703)
          {
            goto LABEL_158;
          }

          goto LABEL_136;
        }

LABEL_106:
        v35 = 576;
        v36 = *(v34 + 8);
        if (v36 > 285212703)
        {
          goto LABEL_107;
        }

        goto LABEL_76;
      }

      v35 = 320;
      v36 = *(v199 + 8);
      if (v36 <= 285212703)
      {
        goto LABEL_76;
      }
    }
  }

LABEL_107:
  if (v36 <= 536870915)
  {
    if (v36 > 301989895)
    {
      if (v36 == 301989896)
      {
        v35 |= 0x4000uLL;
        v37 = *(v10 + 8);
        if (v37 <= 285212703)
        {
          goto LABEL_136;
        }
      }

      else
      {
        if (v36 != 335544328)
        {
          goto LABEL_157;
        }

        v35 |= 0x4400uLL;
        v37 = *(v10 + 8);
        if (v37 <= 285212703)
        {
          goto LABEL_136;
        }
      }
    }

    else if (v36 == 285212704)
    {
      v35 |= 0x3400uLL;
      v37 = *(v10 + 8);
      if (v37 <= 285212703)
      {
        goto LABEL_136;
      }
    }

    else
    {
      if (v36 != 285212736)
      {
        goto LABEL_157;
      }

      v35 |= 0x3800uLL;
      v37 = *(v10 + 8);
      if (v37 <= 285212703)
      {
        goto LABEL_136;
      }
    }
  }

  else if (v36 <= 536870927)
  {
    if (v36 == 536870916)
    {
      v37 = *(v10 + 8);
      if (v37 > 285212703)
      {
        goto LABEL_158;
      }

      goto LABEL_136;
    }

    if (v36 != 536870920)
    {
      goto LABEL_157;
    }

    v35 |= 0x400uLL;
    v37 = *(v10 + 8);
    if (v37 <= 285212703)
    {
      goto LABEL_136;
    }
  }

  else
  {
    switch(v36)
    {
      case 536870928:
        v35 |= 0x800uLL;
        v37 = *(v10 + 8);
        if (v37 <= 285212703)
        {
          goto LABEL_136;
        }

        break;
      case 536870944:
        v35 |= 0xC00uLL;
        v37 = *(v10 + 8);
        if (v37 <= 285212703)
        {
          goto LABEL_136;
        }

        break;
      case 536870976:
        v35 |= 0x1000uLL;
        v37 = *(v10 + 8);
        if (v37 > 285212703)
        {
          break;
        }

LABEL_136:
        if (v37 <= 31)
        {
          if (v37 > 7)
          {
            if (v37 == 8)
            {
              v38 = 196608;
              goto LABEL_180;
            }

            if (v37 == 16)
            {
              v38 = 229376;
              goto LABEL_180;
            }
          }

          else
          {
            if (v37 == -1879048176)
            {
              v38 = 393216;
              goto LABEL_180;
            }

            if (v37 == 4)
            {
              v38 = 163840;
              goto LABEL_180;
            }
          }
        }

        else if (v37 <= 268435463)
        {
          if (v37 == 32)
          {
            v38 = 0x40000;
            goto LABEL_180;
          }

          if (v37 == 64)
          {
            v38 = 294912;
            goto LABEL_180;
          }
        }

        else
        {
          switch(v37)
          {
            case 268435464:
              v38 = 491520;
              goto LABEL_180;
            case 268435472:
              v38 = 327680;
              goto LABEL_180;
            case 268435488:
              v38 = 360448;
              goto LABEL_180;
          }
        }

        goto LABEL_179;
      default:
        goto LABEL_157;
    }
  }

LABEL_158:
  if (v37 <= 536870915)
  {
    if (v37 > 301989895)
    {
      if (v37 == 301989896)
      {
        v38 = 0x80000;
        goto LABEL_180;
      }

      if (v37 == 335544328)
      {
        v38 = 557056;
        goto LABEL_180;
      }
    }

    else
    {
      if (v37 == 285212704)
      {
        v38 = 425984;
        goto LABEL_180;
      }

      if (v37 == 285212736)
      {
        v38 = 458752;
        goto LABEL_180;
      }
    }
  }

  else if (v37 <= 536870927)
  {
    if (v37 == 536870916)
    {
      v38 = 0;
      goto LABEL_180;
    }

    if (v37 == 536870920)
    {
      v38 = 0x8000;
      goto LABEL_180;
    }
  }

  else
  {
    switch(v37)
    {
      case 536870928:
        v38 = 0x10000;
        goto LABEL_180;
      case 536870944:
        v38 = 98304;
        goto LABEL_180;
      case 536870976:
        v38 = 0x20000;
        goto LABEL_180;
    }
  }

LABEL_179:
  v38 = 589824;
LABEL_180:
  v39 = v35 | v38;
  v40 = *(v230 + 8);
  if (v40 > 285212703)
  {
    if (v40 <= 536870915)
    {
      if (v40 > 301989895)
      {
        if (v40 == 301989896)
        {
          v41 = 16;
          goto LABEL_224;
        }

        if (v40 == 335544328)
        {
          v41 = 17;
          goto LABEL_224;
        }
      }

      else
      {
        if (v40 == 285212704)
        {
          v41 = 13;
          goto LABEL_224;
        }

        if (v40 == 285212736)
        {
          v41 = 14;
          goto LABEL_224;
        }
      }
    }

    else if (v40 <= 536870927)
    {
      if (v40 == 536870916)
      {
        v41 = 0;
        goto LABEL_224;
      }

      if (v40 == 536870920)
      {
        v41 = 1;
        goto LABEL_224;
      }
    }

    else
    {
      switch(v40)
      {
        case 536870928:
          v41 = 2;
          goto LABEL_224;
        case 536870944:
          v41 = 3;
          goto LABEL_224;
        case 536870976:
          v41 = 4;
          goto LABEL_224;
      }
    }
  }

  else if (v40 <= 31)
  {
    if (v40 > 7)
    {
      if (v40 == 8)
      {
        v41 = 6;
        goto LABEL_224;
      }

      if (v40 == 16)
      {
        v41 = 7;
        goto LABEL_224;
      }
    }

    else
    {
      if (v40 == -1879048176)
      {
        v41 = 12;
        goto LABEL_224;
      }

      if (v40 == 4)
      {
        v41 = 5;
        goto LABEL_224;
      }
    }
  }

  else if (v40 <= 268435463)
  {
    if (v40 == 32)
    {
      v41 = 8;
      goto LABEL_224;
    }

    if (v40 == 64)
    {
      v41 = 9;
      goto LABEL_224;
    }
  }

  else
  {
    switch(v40)
    {
      case 268435464:
        v41 = 15;
        goto LABEL_224;
      case 268435472:
        v41 = 10;
        goto LABEL_224;
      case 268435488:
        v41 = 11;
        goto LABEL_224;
    }
  }

  v41 = 18;
LABEL_224:
  v42 = v39 | v41;
  v44 = v223 == 1 && v225 == 1 && v227 == 1;
  v45 = 3047464;
  if (v44)
  {
    v45 = 7241768;
  }

  v329 = -1;
  v330 = -1;
  v331 = v45 | (v221 << 23) | (v218 << 25);
  v332 = v42;
  v334 = 0u;
  v333 = 0u;
  v335 = v33 | 0x10100;
  v336 = 0;
  v144 = *(v6 + *MEMORY[0x277CD7360]);
  v145 = *(v6 + *MEMORY[0x277CD7368]);
  v143 = *(v7 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v222 = (v31 * v211 * v213);
  MPSGetUIntDivisorMagicNumber();
  v219 = v47;
  v48 = v215 / v229;
  v163 = (v48 + 31) >> 5;
  MPSGetUIntDivisorMagicNumber();
  v216 = v49;
  MPSGetUIntDivisorMagicNumber();
  v203 = v50;
  MPSGetUIntDivisorMagicNumber();
  v200 = v51;
  MPSGetUIntDivisorMagicNumber();
  v197 = v52;
  MPSGetUIntDivisorMagicNumber();
  v174 = v53;
  MPSGetUIntDivisorMagicNumber();
  v172 = v54;
  MPSGetUIntDivisorMagicNumber();
  v170 = v55;
  MPSGetUIntDivisorMagicNumber();
  v168 = v56;
  MPSGetUIntDivisorMagicNumber();
  v166 = v57;
  MPSGetUIntDivisorMagicNumber();
  v164 = v58;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v143, v144, v145, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  v297[0] = v219;
  v297[1] = 0u;
  v297[2] = v216;
  v297[3] = v203;
  v297[4] = v200;
  v297[5] = v197;
  v297[6] = v174;
  v297[7] = v172;
  v297[8] = v170;
  v297[9] = v168;
  v297[10] = v166;
  v297[11] = v164;
  v298 = v24 / v229;
  v299 = v48;
  v300 = v229;
  v301 = v181;
  v302 = v176;
  v303 = v178;
  v304 = v180;
  v305 = v31;
  v306 = v211;
  v307 = v213;
  v308 = v28;
  v309 = v209;
  v310 = v207;
  v311 = v31;
  v312 = v211;
  v313 = v213;
  v314 = v187;
  v315 = v191;
  v316 = v193;
  v317 = v227;
  v318 = v225;
  v319 = v223;
  v320 = v189;
  v321 = v195;
  v322 = v185;
  v323 = ((v207 * v183 * v209 * v28) + 7) >> 3;
  memset(v327, 0, sizeof(v327));
  v325 = 0u;
  v326 = 0u;
  v324 = 0u;
  v328 = 0;
  MPSSetNDArraysOnComputeEncoder(a2, v7, 4, 0, 0);
  v59 = [*(v7 + 232) graph];
  v60 = *(v59 + 8);
  v61 = *v60;
  v62 = v60[1];
  v205 = v7;
  if (*v60 == v62)
  {
    v66 = 0;
    v70 = v230;
  }

  else
  {
    v63 = v9;
    v64 = v10;
    v65 = 0;
    v66 = -1;
    v67 = -1;
    do
    {
      v68 = *v61;
      if (v68 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v59) + 32))
      {
        v66 = v65;
      }

      v69 = *v61;
      if (v69 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v59) + 32))
      {
        v67 = v65;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v59) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v59);
      }

      ++v65;
      ++v61;
    }

    while (v61 != v62);
    if (v66 == -1)
    {
      v66 = 0;
      v10 = v64;
      v9 = v63;
      v70 = v230;
      v7 = v205;
    }

    else
    {
      v10 = v64;
      v9 = v63;
      v70 = v230;
      v7 = v205;
      if (v67 != -1)
      {
        goto LABEL_248;
      }
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_248:
  DimensionSize = BaseTensor::GetDimensionSize(v70);
  v72 = BaseTensor::GetDimensionSize(v70);
  v73 = BaseTensor::GetDimensionSize(v70);
  v74 = BaseTensor::GetDimensionSize(v70);
  v75 = BaseTensor::GetDimensionSize(v70);
  v76 = BaseTensor::GetDimensionSize(v9);
  v226 = BaseTensor::GetDimensionSize(v9);
  v224 = BaseTensor::GetDimensionSize(v9);
  v220 = BaseTensor::GetDimensionSize(v9);
  v217 = BaseTensor::GetDimensionSize(v9);
  v214 = BaseTensor::GetDimensionSize(v10);
  v212 = BaseTensor::GetDimensionSize(v10);
  v210 = BaseTensor::GetDimensionSize(v10);
  v208 = BaseTensor::GetDimensionSize(v10);
  v201 = BaseTensor::GetDimensionSize(v10);
  v204 = v76;
  v77 = [*(v7 + 16) objectAtIndexedSubscript:v66];
  v78 = *(v7 + 112);
  v79 = *(v7 + 208);
  makeStrideElements();
  makeStrideElements();
  v179 = v75;
  v182 = v73;
  v184 = v72;
  v186 = DimensionSize;
  makeStrideElements();
  v80 = vuzp1q_s32(v291, v292);
  v81 = vuzp1q_s32(v285, v286);
  v82 = vuzp1q_s32(v283, v284);
  v83 = vuzp1q_s32(v281, v282);
  v84 = v275;
  v85 = v273;
  v86 = *MEMORY[0x277CD73D8];
  v87 = *(v77 + v86);
  v241[0] = vuzp1q_s32(v289, v290);
  v241[1] = v80;
  v242 = vuzp1q_s32(v293, v294);
  v243 = vuzp1q_s32(v295, v296);
  v88 = v87 & 0xF;
  v198 = *(v241 + v88);
  v239[0] = v241[0];
  v239[1] = v80;
  v239[2] = v242;
  v239[3] = v243;
  v89 = BYTE1(v87) & 0xF;
  v196 = *(v239 + v89);
  v237[0] = v241[0];
  v237[1] = v80;
  v237[2] = v242;
  v237[3] = v243;
  v90 = BYTE2(v87) & 0xF;
  v194 = *(v237 + v90);
  v235[0] = v241[0];
  v235[1] = v80;
  v235[2] = v242;
  v235[3] = v243;
  v91 = BYTE3(v87) & 0xF;
  v190 = *(v235 + v91);
  v233[0] = v241[0];
  v233[1] = v80;
  v233[2] = v242;
  v233[3] = v243;
  v92 = BYTE4(v87) & 0xF;
  v192 = *(v233 + v92);
  v93 = *&v78[v86];
  v254[0] = v83;
  v254[1] = v82;
  v254[2] = v81;
  v255 = vuzp1q_s32(v287, v288);
  v94 = v93.i8[0] & 0xF;
  v95 = *(v254 + v94);
  v252[0] = v83;
  v252[1] = v82;
  v252[2] = v81;
  v252[3] = v255;
  v96 = v93.i8[1] & 0xF;
  v188 = *(v252 + v96);
  v250[0] = v83;
  v250[1] = v82;
  v250[2] = v81;
  v250[3] = v255;
  v97 = v93.i8[2] & 0xF;
  v228 = *(v250 + v97);
  v248[0] = v83;
  v248[1] = v82;
  v248[2] = v81;
  v248[3] = v255;
  v98 = v93.i8[3] & 0xF;
  v231 = *(v248 + v98);
  v246[0] = v83;
  v246[1] = v82;
  v246[2] = v81;
  v246[3] = v255;
  v99 = *&v79[v86];
  v100 = v93.i8[4] & 0xF;
  v101 = *(v246 + v100);
  v102 = vuzp1q_s32(v273, v274);
  v103 = vuzp1q_s32(v275, v276);
  v268 = vuzp1q_s32(v279, v280);
  v267 = vuzp1q_s32(v277, v278);
  v266[1] = v103;
  v266[0] = v102;
  v104 = v99.i8[0] & 0xF;
  v105 = *(v266 + v104);
  v264[3] = v268;
  v264[2] = v267;
  v264[1] = v103;
  v264[0] = v102;
  v106 = v99.i8[1] & 0xF;
  v107 = *(v264 + v106);
  v262[3] = v268;
  v262[2] = v267;
  v262[1] = v103;
  v262[0] = v102;
  v108 = v99.i8[2] & 0xF;
  v177 = *(v262 + v108);
  v260[3] = v268;
  v260[2] = v267;
  v260[1] = v103;
  v260[0] = v102;
  v109 = v99.i8[3] & 0xF;
  v175 = *(v260 + v109);
  v258[3] = v268;
  v258[2] = v267;
  v258[1] = v103;
  v258[0] = v102;
  v110 = v99.i8[4] & 0xF;
  v111 = *(v258 + v110);
  v112 = *MEMORY[0x277CD7418];
  v113 = *(v77 + v112);
  v114 = *(v77 + v112 + 16);
  v115 = *(v77 + v112 + 32);
  v116 = *MEMORY[0x277CD73C8];
  v173 = v77;
  v169 = *(v77 + v116);
  v171 = *(v205[1] + 80 * v66 + 64);
  v245 = *(v77 + v112 + 48);
  v244[2] = v115;
  v244[1] = v114;
  v244[0] = v113;
  v167 = *(v244 + v88);
  v240[3] = v245;
  v240[2] = v115;
  v240[1] = v114;
  v240[0] = v113;
  v165 = *(v240 + v89);
  v238[3] = v245;
  v238[2] = v115;
  v238[0] = v113;
  v238[1] = v114;
  v162 = *(v238 + v90);
  v236[2] = v115;
  v236[3] = v245;
  v236[0] = v113;
  v236[1] = v114;
  v161 = *(v236 + v91);
  v234[2] = v115;
  v234[3] = v245;
  v234[0] = v113;
  v234[1] = v114;
  v160 = *(v234 + v92);
  v117 = *&v78[v112];
  v118 = *&v78[v112 + 16];
  v119 = *&v78[v112 + 32];
  v158 = *&v78[v116];
  v159 = v205[12];
  v257 = *&v78[v112 + 48];
  v256[2] = v119;
  v256[1] = v118;
  v256[0] = v117;
  v157 = *(v256 + v94);
  v253[3] = v257;
  v253[2] = v119;
  v253[1] = v118;
  v253[0] = v117;
  v156 = *(v253 + v96);
  v251[3] = v257;
  v251[2] = v119;
  v251[1] = v118;
  v251[0] = v117;
  v155 = *(v251 + v97);
  v249[3] = v257;
  v249[2] = v119;
  v249[1] = v118;
  v249[0] = v117;
  v154 = *(v249 + v98);
  v247[3] = v257;
  v247[2] = v119;
  v247[1] = v118;
  v247[0] = v117;
  v153 = *(v247 + v100);
  v120 = *&v79[v112];
  v121 = *&v79[v112 + 16];
  v122 = *&v79[v112 + 32];
  v123 = *&v79[v112 + 48];
  v151 = *&v79[v116];
  v152 = v205[24];
  v269[3] = v123;
  v269[2] = v122;
  v269[1] = v121;
  v269[0] = v120;
  v150 = *(v269 + v104);
  v265[3] = v123;
  v265[2] = v122;
  v265[1] = v121;
  v265[0] = v120;
  v149 = *(v265 + v106);
  v263[3] = v123;
  v263[2] = v122;
  v263[1] = v121;
  v263[0] = v120;
  v148 = *(v263 + v108);
  v261[3] = v123;
  v261[2] = v122;
  v261[1] = v121;
  v261[0] = v120;
  v147 = *(v261 + v109);
  v259[3] = v123;
  v259[2] = v122;
  v259[1] = v121;
  v259[0] = v120;
  v146 = *(v259 + v110);
  v120.i32[0] = 2;
  v121.i32[0] = v204;
  *&v324 = __PAIR64__(v226, v204);
  v84.i32[0] = v226;
  v102.i32[0] = v224;
  *(&v324 + 1) = __PAIR64__(v220, v224);
  v123.i32[0] = v220;
  v122.i32[0] = v217;
  *&v325 = __PAIR64__(v214, v217);
  v85.i32[0] = v214;
  v99.i32[0] = v212;
  *(&v325 + 1) = __PAIR64__(v210, v212);
  v81.i32[0] = v210;
  v83.i32[0] = v208;
  *&v326 = __PAIR64__(v201, v208);
  v103.i32[0] = v201;
  *(&v326 + 1) = __PAIR64__(v184, v186);
  v327[0] = v182;
  v327[1] = v74;
  v327[2] = v179;
  *&v327[13] = __PAIR64__(v107, v105);
  v93.i64[0] = __PAIR64__(v196, v198);
  v124.i64[0] = __PAIR64__(v188, v95);
  v93.i64[1] = __PAIR64__(v190, v194);
  v125 = v93;
  v125.i32[0] = 0;
  v126 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v121), 0), v125, v93);
  v124.i64[1] = __PAIR64__(v231, v228);
  v127 = v124;
  v128 = v126;
  v127.i32[0] = 0;
  v128.i32[1] = 0;
  v129 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v85), 0), v127, v124);
  v130 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v84), 0), v128, v126);
  v84.i64[0] = vcgtq_u32(v120, v99).u64[0];
  v131 = v129;
  v131.i32[1] = 0;
  v132 = vbslq_s8(vdupq_lane_s32(*v84.i8, 0), v131, v129);
  v133 = v130;
  v133.i32[2] = 0;
  v134 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v102), 0), v133, v130);
  v80.i32[0] = v192;
  LODWORD(v77) = v101;
  v82.i32[0] = v101;
  v135 = v132;
  v135.i32[2] = 0;
  v136 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v81), 0), v135, v132);
  v137 = v134;
  v137.i32[3] = 0;
  v138 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v123), 0), v137, v134);
  v139 = v136;
  v139.i32[3] = 0;
  v140 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v120, v83), 0), v139, v136);
  v141 = vbicq_s8(v80, vcgtq_u32(v120, v122));
  *&v327[3] = v138;
  *&v327[7] = vextq_s8(vextq_s8(v141, v141, 4uLL), v140, 0xCuLL);
  *&v327[11] = vextq_s8(v140, vbicq_s8(v82, vcgtq_u32(v120, v103)), 0xCuLL).u64[0];
  v327[15] = v177;
  v328 = __PAIR64__(v111, v175);
  [a2 setThreadgroupMemoryLength:2048 atIndex:0];
  [a2 setBytes:v297 length:416 atIndex:29];
  [a2 setBuffer:objc_msgSend(v173 offset:"buffer") atIndex:{v171 + (v167 * v198 + v165 * v196 + v162 * v194 + v161 * v190 + v160 * v192) * (v169 >> 3), 28}];
  [a2 setBuffer:objc_msgSend(v78 offset:"buffer") atIndex:{v159 + (v157 * v95 + v156 * v188 + v155 * v228 + v154 * v231 + v153 * v77) * (v158 >> 3), 27}];
  [a2 setBuffer:objc_msgSend(v79 offset:"buffer") atIndex:{v152 + (v150 * v105 + v149 * v107 + v148 * v177 + v147 * v175 + v146 * v111) * (v151 >> 3), 26}];
  v272[0] = v222;
  v272[1] = (v206 + 31) >> 5;
  v272[2] = v163 * v229;
  v270 = xmmword_239B0A150;
  v271 = 1;
  [a2 dispatchThreadgroups:v272 threadsPerThreadgroup:&v270];
  operator delete(0);
  operator delete(0);
  operator delete(0);
  return 0;
}

void sub_239A47CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(__p);
  operator delete(STACK[0x250]);
  if (STACK[0x258])
  {
    operator delete(STACK[0x258]);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void EncodeNDArrayConvolution3D(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *&a1[*MEMORY[0x277CD7370]];
  v7 = *(v6 + 32);
  v36 = 0;
  v17 = v6;
  v18 = [a1 dataFormat];
  v19 = [a1 weightsFormat];
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  [a1 strideInPixels];
  v23 = v16;
  [a1 strideInPixels];
  v24 = v15;
  [a1 strideInPixels];
  v25 = v14;
  [a1 dilationRates];
  v26 = v13;
  [a1 dilationRates];
  v27 = v12;
  [a1 dilationRates];
  v28 = v11;
  v29 = [a1 groups];
  [a1 offsets];
  v30 = v10;
  [a1 offsets];
  v31 = v9;
  [a1 offsets];
  v32 = v8;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  LOBYTE(v36) = 0;
  v37 = a4;
  v38 = a1;
  operator new();
}

void EncodeNDArrayConvolution3DGradientWithIntput(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *&a1[*MEMORY[0x277CD7370]];
  v7 = *(v6 + 32);
  v39 = 1;
  v20 = v6;
  v21 = [a1 dataFormat];
  v22 = [a1 weightsFormat];
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  [a1 strideInPixels];
  v26 = v19;
  [a1 strideInPixels];
  v27 = v18;
  [a1 strideInPixels];
  v28 = v17;
  [a1 dilationRates];
  v29 = v16;
  [a1 dilationRates];
  v30 = v15;
  [a1 dilationRates];
  v31 = v14;
  v32 = [a1 groups];
  [a1 offsets];
  v33 = v13;
  [a1 offsets];
  v34 = v12;
  [a1 offsets];
  v35 = v11;
  [a1 kernelOffsets];
  v36 = v10;
  [a1 kernelOffsets];
  v37 = v9;
  [a1 kernelOffsets];
  v38 = v8;
  v40 = a4;
  v41 = a1;
  operator new();
}

void EncodeNDArrayConvolution3DGradientWithWeights(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *&a1[*MEMORY[0x277CD7370]];
  v7 = *(v6 + 32);
  v39 = 1;
  v20 = v6;
  v21 = [a1 dataFormat];
  v22 = [a1 weightsFormat];
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  [a1 strideInPixels];
  v26 = v19;
  [a1 strideInPixels];
  v27 = v18;
  [a1 strideInPixels];
  v28 = v17;
  [a1 dilationRates];
  v29 = v16;
  [a1 dilationRates];
  v30 = v15;
  [a1 dilationRates];
  v31 = v14;
  v32 = [a1 groups];
  [a1 offsets];
  v33 = v13;
  [a1 offsets];
  v34 = v12;
  [a1 offsets];
  v35 = v11;
  [a1 kernelOffsets];
  v36 = v10;
  [a1 kernelOffsets];
  v37 = v9;
  [a1 kernelOffsets];
  v38 = v8;
  v40 = a4;
  v41 = a1;
  operator new();
}

char *MPSNDArrayConvolution3DLogCommandLine(char *result, uint64_t a2, uint64_t a3)
{
  if (*&result[*MEMORY[0x277CD7380]] >= 4uLL)
  {
    v4 = result;
    v5 = *(a2 + 168);
    v6 = *(v5 + 232);
    if (*(a2 + 160) == 1)
    {
      v7 = [v6 outputTensorAtIndex:{0, a3}];
      v8 = [*(v5 + 232) inputTensorAtIndex:1];
      v9 = [*(v5 + 232) inputTensorAtIndex:2];
      v10 = *(a2 + 8);
      if (v10 != 1)
      {
LABEL_4:
        if (v10)
        {
          v20 = *(a2 + 12);
          if (v20 != 1)
          {
            goto LABEL_9;
          }

          goto LABEL_12;
        }

        v11 = **(v7 + 16);
        v12 = v11 + 1;
        v13 = v11 + 2;
        v14 = **(v9 + 16);
        v15 = v14 + 1;
        v16 = v14 + 2;
LABEL_8:
        v176 = *v11;
        v177 = *v12;
        v178 = *v13;
        v174 = *v14 - 1;
        v175 = *v15 - 1;
        v19 = *v16 - 1;
        v20 = *(a2 + 12);
        if (v20 != 1)
        {
LABEL_9:
          if (v20)
          {
            v28 = -1;
            v27 = -1;
            v26 = -1;
LABEL_15:
            v172 = *(a2 + 64);
            v173 = *(a2 + 72);
            v179 = *(a2 + 56);
            if (*(a2 + 160) == 1)
            {
              v29 = ((*(a2 + 80) * v26) & 1) - (*(a2 + 136) + *(a2 + 112) * *(a2 + 56));
              v30 = ((*(a2 + 88) * v27) & 1) - (*(a2 + 144) + *(a2 + 120) * *(a2 + 64));
              v31 = ((*(a2 + 96) * v28) & 1) - (*(a2 + 152) + *(a2 + 128) * *(a2 + 72));
            }

            *(&v194.__r_.__value_.__s + 23) = 0;
            v194.__r_.__value_.__s.__data_[0] = 0;
            *(&v190.__r_.__value_.__s + 23) = 12;
            strcpy(&v190, "-dataFormat ");
            if (v10)
            {
              v32 = "NDHWC";
            }

            else
            {
              v32 = "NCDHW";
            }

            v33 = std::string::append(&v190, v32);
            v34 = *&v33->__r_.__value_.__l.__data_;
            v191.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
            *&v191.__r_.__value_.__l.__data_ = v34;
            v33->__r_.__value_.__l.__size_ = 0;
            v33->__r_.__value_.__r.__words[2] = 0;
            v33->__r_.__value_.__r.__words[0] = 0;
            v35 = std::string::append(&v191, " ");
            v36 = *&v35->__r_.__value_.__l.__data_;
            v193 = v35->__r_.__value_.__r.__words[2];
            v192 = v36;
            v35->__r_.__value_.__l.__size_ = 0;
            v35->__r_.__value_.__r.__words[2] = 0;
            v35->__r_.__value_.__r.__words[0] = 0;
            if (v193 >= 0)
            {
              v37 = &v192;
            }

            else
            {
              v37 = v192;
            }

            if (v193 >= 0)
            {
              v38 = HIBYTE(v193);
            }

            else
            {
              v38 = *(&v192 + 1);
            }

            std::string::append(&v194, v37, v38);
            if (SHIBYTE(v193) < 0)
            {
              operator delete(v192);
              if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_28:
                if ((SHIBYTE(v190.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_29;
                }

LABEL_74:
                operator delete(v190.__r_.__value_.__l.__data_);
LABEL_29:
                *(&v190.__r_.__value_.__s + 23) = 15;
                strcpy(&v190, "-weightsFormat ");
                if (*(a2 + 12) == 1)
                {
                  v39 = "OIDHW";
                }

                else
                {
                  v39 = "DHWIO";
                }

                v40 = std::string::append(&v190, v39);
                v41 = *&v40->__r_.__value_.__l.__data_;
                v191.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
                *&v191.__r_.__value_.__l.__data_ = v41;
                v40->__r_.__value_.__l.__size_ = 0;
                v40->__r_.__value_.__r.__words[2] = 0;
                v40->__r_.__value_.__r.__words[0] = 0;
                v42 = std::string::append(&v191, " ");
                v43 = *&v42->__r_.__value_.__l.__data_;
                v193 = v42->__r_.__value_.__r.__words[2];
                v192 = v43;
                v42->__r_.__value_.__l.__size_ = 0;
                v42->__r_.__value_.__r.__words[2] = 0;
                v42->__r_.__value_.__r.__words[0] = 0;
                if (v193 >= 0)
                {
                  v44 = &v192;
                }

                else
                {
                  v44 = v192;
                }

                if (v193 >= 0)
                {
                  v45 = HIBYTE(v193);
                }

                else
                {
                  v45 = *(&v192 + 1);
                }

                std::string::append(&v194, v44, v45);
                if (SHIBYTE(v193) < 0)
                {
                  operator delete(v192);
                  if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_40:
                    if ((SHIBYTE(v190.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_41;
                    }

                    goto LABEL_77;
                  }
                }

                else if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_40;
                }

                operator delete(v191.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v190.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_41:
                  if (*(a2 + 12) == 1)
                  {
LABEL_42:
                    *(&v184.__r_.__value_.__s + 23) = 15;
                    strcpy(&v184, "-kernelSizes \\[");
                    std::to_string(&v183, *(a2 + 48));
                    if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v46 = &v183;
                    }

                    else
                    {
                      v46 = v183.__r_.__value_.__r.__words[0];
                    }

                    if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      size = HIBYTE(v183.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      size = v183.__r_.__value_.__l.__size_;
                    }

                    v48 = std::string::append(&v184, v46, size);
                    v49 = *&v48->__r_.__value_.__l.__data_;
                    v185.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
                    *&v185.__r_.__value_.__l.__data_ = v49;
                    v48->__r_.__value_.__l.__size_ = 0;
                    v48->__r_.__value_.__r.__words[2] = 0;
                    v48->__r_.__value_.__r.__words[0] = 0;
                    v50 = std::string::append(&v185, ",");
                    v51 = *&v50->__r_.__value_.__l.__data_;
                    v186.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
                    *&v186.__r_.__value_.__l.__data_ = v51;
                    v50->__r_.__value_.__l.__size_ = 0;
                    v50->__r_.__value_.__r.__words[2] = 0;
                    v50->__r_.__value_.__r.__words[0] = 0;
                    std::to_string(&v182, *(a2 + 40));
                    if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v52 = &v182;
                    }

                    else
                    {
                      v52 = v182.__r_.__value_.__r.__words[0];
                    }

                    if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v53 = HIBYTE(v182.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v53 = v182.__r_.__value_.__l.__size_;
                    }

                    v54 = std::string::append(&v186, v52, v53);
                    v55 = *&v54->__r_.__value_.__l.__data_;
                    v187.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
                    *&v187.__r_.__value_.__l.__data_ = v55;
                    v54->__r_.__value_.__l.__size_ = 0;
                    v54->__r_.__value_.__r.__words[2] = 0;
                    v54->__r_.__value_.__r.__words[0] = 0;
                    v56 = std::string::append(&v187, ",");
                    v57 = *&v56->__r_.__value_.__l.__data_;
                    v188.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
                    *&v188.__r_.__value_.__l.__data_ = v57;
                    v56->__r_.__value_.__l.__size_ = 0;
                    v56->__r_.__value_.__r.__words[2] = 0;
                    v56->__r_.__value_.__r.__words[0] = 0;
                    std::to_string(&v181, *(a2 + 32));
                    if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v58 = &v181;
                    }

                    else
                    {
                      v58 = v181.__r_.__value_.__r.__words[0];
                    }

                    if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v59 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v59 = v181.__r_.__value_.__l.__size_;
                    }

                    v60 = std::string::append(&v188, v58, v59);
                    v61 = *&v60->__r_.__value_.__l.__data_;
                    v189.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
                    *&v189.__r_.__value_.__l.__data_ = v61;
                    v60->__r_.__value_.__l.__size_ = 0;
                    v60->__r_.__value_.__r.__words[2] = 0;
                    v60->__r_.__value_.__r.__words[0] = 0;
                    v62 = std::string::append(&v189, ",");
                    v63 = *&v62->__r_.__value_.__l.__data_;
                    v190.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
                    *&v190.__r_.__value_.__l.__data_ = v63;
                    v62->__r_.__value_.__l.__size_ = 0;
                    v62->__r_.__value_.__r.__words[2] = 0;
                    v62->__r_.__value_.__r.__words[0] = 0;
                    std::to_string(&v180, *(a2 + 16));
                    if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v64 = &v180;
                    }

                    else
                    {
                      v64 = v180.__r_.__value_.__r.__words[0];
                    }

                    if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v65 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v65 = v180.__r_.__value_.__l.__size_;
                    }

                    v66 = std::string::append(&v190, v64, v65);
                    v67 = *&v66->__r_.__value_.__l.__data_;
                    v191.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
                    *&v191.__r_.__value_.__l.__data_ = v67;
                    v66->__r_.__value_.__l.__size_ = 0;
                    v66->__r_.__value_.__r.__words[2] = 0;
                    v66->__r_.__value_.__r.__words[0] = 0;
                    v68 = std::string::append(&v191, "\\] ");
                    v69 = *&v68->__r_.__value_.__l.__data_;
                    v193 = v68->__r_.__value_.__r.__words[2];
                    v192 = v69;
                    v68->__r_.__value_.__l.__size_ = 0;
                    v68->__r_.__value_.__r.__words[2] = 0;
                    v68->__r_.__value_.__r.__words[0] = 0;
                    if (v193 >= 0)
                    {
                      v70 = &v192;
                    }

                    else
                    {
                      v70 = v192;
                    }

                    if (v193 >= 0)
                    {
                      v71 = HIBYTE(v193);
                    }

                    else
                    {
                      v71 = *(&v192 + 1);
                    }

                    goto LABEL_108;
                  }

LABEL_78:
                  *(&v184.__r_.__value_.__s + 23) = 15;
                  strcpy(&v184, "-kernelSizes \\[");
                  std::to_string(&v183, *(a2 + 16));
                  if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v72 = &v183;
                  }

                  else
                  {
                    v72 = v183.__r_.__value_.__r.__words[0];
                  }

                  if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v73 = HIBYTE(v183.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v73 = v183.__r_.__value_.__l.__size_;
                  }

                  v74 = std::string::append(&v184, v72, v73);
                  v75 = *&v74->__r_.__value_.__l.__data_;
                  v185.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
                  *&v185.__r_.__value_.__l.__data_ = v75;
                  v74->__r_.__value_.__l.__size_ = 0;
                  v74->__r_.__value_.__r.__words[2] = 0;
                  v74->__r_.__value_.__r.__words[0] = 0;
                  v76 = std::string::append(&v185, ",");
                  v77 = *&v76->__r_.__value_.__l.__data_;
                  v186.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
                  *&v186.__r_.__value_.__l.__data_ = v77;
                  v76->__r_.__value_.__l.__size_ = 0;
                  v76->__r_.__value_.__r.__words[2] = 0;
                  v76->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v182, *(a2 + 48));
                  if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v78 = &v182;
                  }

                  else
                  {
                    v78 = v182.__r_.__value_.__r.__words[0];
                  }

                  if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v79 = HIBYTE(v182.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v79 = v182.__r_.__value_.__l.__size_;
                  }

                  v80 = std::string::append(&v186, v78, v79);
                  v81 = *&v80->__r_.__value_.__l.__data_;
                  v187.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
                  *&v187.__r_.__value_.__l.__data_ = v81;
                  v80->__r_.__value_.__l.__size_ = 0;
                  v80->__r_.__value_.__r.__words[2] = 0;
                  v80->__r_.__value_.__r.__words[0] = 0;
                  v82 = std::string::append(&v187, ",");
                  v83 = *&v82->__r_.__value_.__l.__data_;
                  v188.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
                  *&v188.__r_.__value_.__l.__data_ = v83;
                  v82->__r_.__value_.__l.__size_ = 0;
                  v82->__r_.__value_.__r.__words[2] = 0;
                  v82->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v181, *(a2 + 40));
                  if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v84 = &v181;
                  }

                  else
                  {
                    v84 = v181.__r_.__value_.__r.__words[0];
                  }

                  if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v85 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v85 = v181.__r_.__value_.__l.__size_;
                  }

                  v86 = std::string::append(&v188, v84, v85);
                  v87 = *&v86->__r_.__value_.__l.__data_;
                  v189.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
                  *&v189.__r_.__value_.__l.__data_ = v87;
                  v86->__r_.__value_.__l.__size_ = 0;
                  v86->__r_.__value_.__r.__words[2] = 0;
                  v86->__r_.__value_.__r.__words[0] = 0;
                  v88 = std::string::append(&v189, ",");
                  v89 = *&v88->__r_.__value_.__l.__data_;
                  v190.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
                  *&v190.__r_.__value_.__l.__data_ = v89;
                  v88->__r_.__value_.__l.__size_ = 0;
                  v88->__r_.__value_.__r.__words[2] = 0;
                  v88->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v180, *(a2 + 32));
                  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v90 = &v180;
                  }

                  else
                  {
                    v90 = v180.__r_.__value_.__r.__words[0];
                  }

                  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v91 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v91 = v180.__r_.__value_.__l.__size_;
                  }

                  v92 = std::string::append(&v190, v90, v91);
                  v93 = *&v92->__r_.__value_.__l.__data_;
                  v191.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
                  *&v191.__r_.__value_.__l.__data_ = v93;
                  v92->__r_.__value_.__l.__size_ = 0;
                  v92->__r_.__value_.__r.__words[2] = 0;
                  v92->__r_.__value_.__r.__words[0] = 0;
                  v94 = std::string::append(&v191, "\\] ");
                  v95 = *&v94->__r_.__value_.__l.__data_;
                  v193 = v94->__r_.__value_.__r.__words[2];
                  v192 = v95;
                  v94->__r_.__value_.__l.__size_ = 0;
                  v94->__r_.__value_.__r.__words[2] = 0;
                  v94->__r_.__value_.__r.__words[0] = 0;
                  if (v193 >= 0)
                  {
                    v70 = &v192;
                  }

                  else
                  {
                    v70 = v192;
                  }

                  if (v193 >= 0)
                  {
                    v71 = HIBYTE(v193);
                  }

                  else
                  {
                    v71 = *(&v192 + 1);
                  }

LABEL_108:
                  std::string::append(&v194, v70, v71);
                  if (SHIBYTE(v193) < 0)
                  {
                    operator delete(v192);
                    if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_110:
                      if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_111;
                      }

                      goto LABEL_148;
                    }
                  }

                  else if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_110;
                  }

                  operator delete(v191.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_111:
                    if ((SHIBYTE(v190.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_112;
                    }

                    goto LABEL_149;
                  }

LABEL_148:
                  operator delete(v180.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v190.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_112:
                    if ((SHIBYTE(v189.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_113;
                    }

                    goto LABEL_150;
                  }

LABEL_149:
                  operator delete(v190.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v189.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_113:
                    if ((SHIBYTE(v181.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_114;
                    }

                    goto LABEL_151;
                  }

LABEL_150:
                  operator delete(v189.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v181.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_114:
                    if ((SHIBYTE(v188.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_152;
                  }

LABEL_151:
                  operator delete(v181.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v188.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_115:
                    if ((SHIBYTE(v187.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_116;
                    }

                    goto LABEL_153;
                  }

LABEL_152:
                  operator delete(v188.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v187.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_116:
                    if ((SHIBYTE(v182.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_154;
                  }

LABEL_153:
                  operator delete(v187.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v182.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_117:
                    if ((SHIBYTE(v186.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_118;
                    }

                    goto LABEL_155;
                  }

LABEL_154:
                  operator delete(v182.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v186.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_118:
                    if ((SHIBYTE(v185.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_119;
                    }

                    goto LABEL_156;
                  }

LABEL_155:
                  operator delete(v186.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v185.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_119:
                    if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_120;
                    }

                    goto LABEL_157;
                  }

LABEL_156:
                  operator delete(v185.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_120:
                    if ((SHIBYTE(v184.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_121;
                    }

                    goto LABEL_158;
                  }

LABEL_157:
                  operator delete(v183.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v184.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_121:
                    if (*(a2 + 8))
                    {
LABEL_122:
                      *(&v186.__r_.__value_.__s + 23) = 11;
                      strcpy(&v186, "-strides \\[");
                      [v4 strideInPixels];
                      std::to_string(&v185, v184.__r_.__value_.__r.__words[2]);
                      if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v96 = &v185;
                      }

                      else
                      {
                        v96 = v185.__r_.__value_.__r.__words[0];
                      }

                      if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v97 = HIBYTE(v185.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v97 = v185.__r_.__value_.__l.__size_;
                      }

                      v98 = std::string::append(&v186, v96, v97);
                      v99 = *&v98->__r_.__value_.__l.__data_;
                      v187.__r_.__value_.__r.__words[2] = v98->__r_.__value_.__r.__words[2];
                      *&v187.__r_.__value_.__l.__data_ = v99;
                      v98->__r_.__value_.__l.__size_ = 0;
                      v98->__r_.__value_.__r.__words[2] = 0;
                      v98->__r_.__value_.__r.__words[0] = 0;
                      v100 = std::string::append(&v187, ",");
                      v101 = *&v100->__r_.__value_.__l.__data_;
                      v188.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
                      *&v188.__r_.__value_.__l.__data_ = v101;
                      v100->__r_.__value_.__l.__size_ = 0;
                      v100->__r_.__value_.__r.__words[2] = 0;
                      v100->__r_.__value_.__r.__words[0] = 0;
                      [v4 strideInPixels];
                      std::to_string(&v183, v182.__r_.__value_.__l.__size_);
                      if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v102 = &v183;
                      }

                      else
                      {
                        v102 = v183.__r_.__value_.__r.__words[0];
                      }

                      if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v103 = HIBYTE(v183.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v103 = v183.__r_.__value_.__l.__size_;
                      }

                      v104 = std::string::append(&v188, v102, v103);
                      v105 = *&v104->__r_.__value_.__l.__data_;
                      v189.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
                      *&v189.__r_.__value_.__l.__data_ = v105;
                      v104->__r_.__value_.__l.__size_ = 0;
                      v104->__r_.__value_.__r.__words[2] = 0;
                      v104->__r_.__value_.__r.__words[0] = 0;
                      v106 = std::string::append(&v189, ",");
                      v107 = *&v106->__r_.__value_.__l.__data_;
                      v190.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
                      *&v190.__r_.__value_.__l.__data_ = v107;
                      v106->__r_.__value_.__l.__size_ = 0;
                      v106->__r_.__value_.__r.__words[2] = 0;
                      v106->__r_.__value_.__r.__words[0] = 0;
                      [v4 strideInPixels];
                      std::to_string(&v181, v180.__r_.__value_.__r.__words[0]);
                      if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v108 = &v181;
                      }

                      else
                      {
                        v108 = v181.__r_.__value_.__r.__words[0];
                      }

                      if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v109 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v109 = v181.__r_.__value_.__l.__size_;
                      }

                      v110 = std::string::append(&v190, v108, v109);
                      v111 = *&v110->__r_.__value_.__l.__data_;
                      v191.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
                      *&v191.__r_.__value_.__l.__data_ = v111;
                      v110->__r_.__value_.__l.__size_ = 0;
                      v110->__r_.__value_.__r.__words[2] = 0;
                      v110->__r_.__value_.__r.__words[0] = 0;
                      v112 = std::string::append(&v191, ", 1\\] ");
                      v113 = *&v112->__r_.__value_.__l.__data_;
                      v193 = v112->__r_.__value_.__r.__words[2];
                      v192 = v113;
                      v112->__r_.__value_.__l.__size_ = 0;
                      v112->__r_.__value_.__r.__words[2] = 0;
                      v112->__r_.__value_.__r.__words[0] = 0;
                      if (v193 >= 0)
                      {
                        v114 = &v192;
                      }

                      else
                      {
                        v114 = v192;
                      }

                      if (v193 >= 0)
                      {
                        v115 = HIBYTE(v193);
                      }

                      else
                      {
                        v115 = *(&v192 + 1);
                      }

                      goto LABEL_183;
                    }

LABEL_159:
                    *(&v186.__r_.__value_.__s + 23) = 13;
                    strcpy(&v186, "-strides \\[1,");
                    [v4 strideInPixels];
                    std::to_string(&v185, v184.__r_.__value_.__r.__words[2]);
                    if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v116 = &v185;
                    }

                    else
                    {
                      v116 = v185.__r_.__value_.__r.__words[0];
                    }

                    if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v117 = HIBYTE(v185.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v117 = v185.__r_.__value_.__l.__size_;
                    }

                    v118 = std::string::append(&v186, v116, v117);
                    v119 = *&v118->__r_.__value_.__l.__data_;
                    v187.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
                    *&v187.__r_.__value_.__l.__data_ = v119;
                    v118->__r_.__value_.__l.__size_ = 0;
                    v118->__r_.__value_.__r.__words[2] = 0;
                    v118->__r_.__value_.__r.__words[0] = 0;
                    v120 = std::string::append(&v187, ",");
                    v121 = *&v120->__r_.__value_.__l.__data_;
                    v188.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
                    *&v188.__r_.__value_.__l.__data_ = v121;
                    v120->__r_.__value_.__l.__size_ = 0;
                    v120->__r_.__value_.__r.__words[2] = 0;
                    v120->__r_.__value_.__r.__words[0] = 0;
                    [v4 strideInPixels];
                    std::to_string(&v183, v182.__r_.__value_.__l.__size_);
                    if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v122 = &v183;
                    }

                    else
                    {
                      v122 = v183.__r_.__value_.__r.__words[0];
                    }

                    if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v123 = HIBYTE(v183.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v123 = v183.__r_.__value_.__l.__size_;
                    }

                    v124 = std::string::append(&v188, v122, v123);
                    v125 = *&v124->__r_.__value_.__l.__data_;
                    v189.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
                    *&v189.__r_.__value_.__l.__data_ = v125;
                    v124->__r_.__value_.__l.__size_ = 0;
                    v124->__r_.__value_.__r.__words[2] = 0;
                    v124->__r_.__value_.__r.__words[0] = 0;
                    v126 = std::string::append(&v189, ",");
                    v127 = *&v126->__r_.__value_.__l.__data_;
                    v190.__r_.__value_.__r.__words[2] = v126->__r_.__value_.__r.__words[2];
                    *&v190.__r_.__value_.__l.__data_ = v127;
                    v126->__r_.__value_.__l.__size_ = 0;
                    v126->__r_.__value_.__r.__words[2] = 0;
                    v126->__r_.__value_.__r.__words[0] = 0;
                    [v4 strideInPixels];
                    std::to_string(&v181, v180.__r_.__value_.__r.__words[0]);
                    if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v128 = &v181;
                    }

                    else
                    {
                      v128 = v181.__r_.__value_.__r.__words[0];
                    }

                    if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v129 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v129 = v181.__r_.__value_.__l.__size_;
                    }

                    v130 = std::string::append(&v190, v128, v129);
                    v131 = *&v130->__r_.__value_.__l.__data_;
                    v191.__r_.__value_.__r.__words[2] = v130->__r_.__value_.__r.__words[2];
                    *&v191.__r_.__value_.__l.__data_ = v131;
                    v130->__r_.__value_.__l.__size_ = 0;
                    v130->__r_.__value_.__r.__words[2] = 0;
                    v130->__r_.__value_.__r.__words[0] = 0;
                    v132 = std::string::append(&v191, "\\] ");
                    v133 = *&v132->__r_.__value_.__l.__data_;
                    v193 = v132->__r_.__value_.__r.__words[2];
                    v192 = v133;
                    v132->__r_.__value_.__l.__size_ = 0;
                    v132->__r_.__value_.__r.__words[2] = 0;
                    v132->__r_.__value_.__r.__words[0] = 0;
                    if (v193 >= 0)
                    {
                      v114 = &v192;
                    }

                    else
                    {
                      v114 = v192;
                    }

                    if (v193 >= 0)
                    {
                      v115 = HIBYTE(v193);
                    }

                    else
                    {
                      v115 = *(&v192 + 1);
                    }

LABEL_183:
                    std::string::append(&v194, v114, v115);
                    if (SHIBYTE(v193) < 0)
                    {
                      operator delete(v192);
                      if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_185:
                        if ((SHIBYTE(v181.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_186;
                        }

                        goto LABEL_220;
                      }
                    }

                    else if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_185;
                    }

                    operator delete(v191.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v181.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_186:
                      if ((SHIBYTE(v190.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_187;
                      }

                      goto LABEL_221;
                    }

LABEL_220:
                    operator delete(v181.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v190.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_187:
                      if ((SHIBYTE(v189.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_188;
                      }

                      goto LABEL_222;
                    }

LABEL_221:
                    operator delete(v190.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v189.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_188:
                      if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_189;
                      }

                      goto LABEL_223;
                    }

LABEL_222:
                    operator delete(v189.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_189:
                      if ((SHIBYTE(v188.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_190;
                      }

                      goto LABEL_224;
                    }

LABEL_223:
                    operator delete(v183.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v188.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_190:
                      if ((SHIBYTE(v187.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_191;
                      }

                      goto LABEL_225;
                    }

LABEL_224:
                    operator delete(v188.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v187.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_191:
                      if ((SHIBYTE(v185.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_192;
                      }

                      goto LABEL_226;
                    }

LABEL_225:
                    operator delete(v187.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v185.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_192:
                      if ((SHIBYTE(v186.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_193;
                      }

                      goto LABEL_227;
                    }

LABEL_226:
                    operator delete(v185.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v186.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_193:
                      if (*(a2 + 8))
                      {
LABEL_194:
                        *(&v186.__r_.__value_.__s + 23) = 17;
                        strcpy(&v186, "-dilationRates \\[");
                        [v4 dilationRates];
                        std::to_string(&v185, v184.__r_.__value_.__r.__words[2]);
                        if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v134 = &v185;
                        }

                        else
                        {
                          v134 = v185.__r_.__value_.__r.__words[0];
                        }

                        if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v135 = HIBYTE(v185.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v135 = v185.__r_.__value_.__l.__size_;
                        }

                        v136 = std::string::append(&v186, v134, v135);
                        v137 = *&v136->__r_.__value_.__l.__data_;
                        v187.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
                        *&v187.__r_.__value_.__l.__data_ = v137;
                        v136->__r_.__value_.__l.__size_ = 0;
                        v136->__r_.__value_.__r.__words[2] = 0;
                        v136->__r_.__value_.__r.__words[0] = 0;
                        v138 = std::string::append(&v187, ",");
                        v139 = *&v138->__r_.__value_.__l.__data_;
                        v188.__r_.__value_.__r.__words[2] = v138->__r_.__value_.__r.__words[2];
                        *&v188.__r_.__value_.__l.__data_ = v139;
                        v138->__r_.__value_.__l.__size_ = 0;
                        v138->__r_.__value_.__r.__words[2] = 0;
                        v138->__r_.__value_.__r.__words[0] = 0;
                        [v4 dilationRates];
                        std::to_string(&v183, v182.__r_.__value_.__l.__size_);
                        if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v140 = &v183;
                        }

                        else
                        {
                          v140 = v183.__r_.__value_.__r.__words[0];
                        }

                        if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v141 = HIBYTE(v183.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v141 = v183.__r_.__value_.__l.__size_;
                        }

                        v142 = std::string::append(&v188, v140, v141);
                        v143 = *&v142->__r_.__value_.__l.__data_;
                        v189.__r_.__value_.__r.__words[2] = v142->__r_.__value_.__r.__words[2];
                        *&v189.__r_.__value_.__l.__data_ = v143;
                        v142->__r_.__value_.__l.__size_ = 0;
                        v142->__r_.__value_.__r.__words[2] = 0;
                        v142->__r_.__value_.__r.__words[0] = 0;
                        v144 = std::string::append(&v189, ",");
                        v145 = *&v144->__r_.__value_.__l.__data_;
                        v190.__r_.__value_.__r.__words[2] = v144->__r_.__value_.__r.__words[2];
                        *&v190.__r_.__value_.__l.__data_ = v145;
                        v144->__r_.__value_.__l.__size_ = 0;
                        v144->__r_.__value_.__r.__words[2] = 0;
                        v144->__r_.__value_.__r.__words[0] = 0;
                        [v4 dilationRates];
                        std::to_string(&v181, v180.__r_.__value_.__r.__words[0]);
                        if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v146 = &v181;
                        }

                        else
                        {
                          v146 = v181.__r_.__value_.__r.__words[0];
                        }

                        if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v147 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v147 = v181.__r_.__value_.__l.__size_;
                        }

                        v148 = std::string::append(&v190, v146, v147);
                        v149 = *&v148->__r_.__value_.__l.__data_;
                        v191.__r_.__value_.__r.__words[2] = v148->__r_.__value_.__r.__words[2];
                        *&v191.__r_.__value_.__l.__data_ = v149;
                        v148->__r_.__value_.__l.__size_ = 0;
                        v148->__r_.__value_.__r.__words[2] = 0;
                        v148->__r_.__value_.__r.__words[0] = 0;
                        v150 = std::string::append(&v191, ", 1\\] ");
                        v151 = *&v150->__r_.__value_.__l.__data_;
                        v193 = v150->__r_.__value_.__r.__words[2];
                        v192 = v151;
                        v150->__r_.__value_.__l.__size_ = 0;
                        v150->__r_.__value_.__r.__words[2] = 0;
                        v150->__r_.__value_.__r.__words[0] = 0;
                        if (v193 >= 0)
                        {
                          v152 = &v192;
                        }

                        else
                        {
                          v152 = v192;
                        }

                        if (v193 >= 0)
                        {
                          v153 = HIBYTE(v193);
                        }

                        else
                        {
                          v153 = *(&v192 + 1);
                        }

                        goto LABEL_252;
                      }

LABEL_228:
                      *(&v186.__r_.__value_.__s + 23) = 19;
                      strcpy(&v186, "-dilationRates \\[1,");
                      [v4 dilationRates];
                      std::to_string(&v185, v184.__r_.__value_.__r.__words[2]);
                      if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v154 = &v185;
                      }

                      else
                      {
                        v154 = v185.__r_.__value_.__r.__words[0];
                      }

                      if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v155 = HIBYTE(v185.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v155 = v185.__r_.__value_.__l.__size_;
                      }

                      v156 = std::string::append(&v186, v154, v155);
                      v157 = *&v156->__r_.__value_.__l.__data_;
                      v187.__r_.__value_.__r.__words[2] = v156->__r_.__value_.__r.__words[2];
                      *&v187.__r_.__value_.__l.__data_ = v157;
                      v156->__r_.__value_.__l.__size_ = 0;
                      v156->__r_.__value_.__r.__words[2] = 0;
                      v156->__r_.__value_.__r.__words[0] = 0;
                      v158 = std::string::append(&v187, ",");
                      v159 = *&v158->__r_.__value_.__l.__data_;
                      v188.__r_.__value_.__r.__words[2] = v158->__r_.__value_.__r.__words[2];
                      *&v188.__r_.__value_.__l.__data_ = v159;
                      v158->__r_.__value_.__l.__size_ = 0;
                      v158->__r_.__value_.__r.__words[2] = 0;
                      v158->__r_.__value_.__r.__words[0] = 0;
                      [v4 dilationRates];
                      std::to_string(&v183, v182.__r_.__value_.__l.__size_);
                      if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v160 = &v183;
                      }

                      else
                      {
                        v160 = v183.__r_.__value_.__r.__words[0];
                      }

                      if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v161 = HIBYTE(v183.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v161 = v183.__r_.__value_.__l.__size_;
                      }

                      v162 = std::string::append(&v188, v160, v161);
                      v163 = *&v162->__r_.__value_.__l.__data_;
                      v189.__r_.__value_.__r.__words[2] = v162->__r_.__value_.__r.__words[2];
                      *&v189.__r_.__value_.__l.__data_ = v163;
                      v162->__r_.__value_.__l.__size_ = 0;
                      v162->__r_.__value_.__r.__words[2] = 0;
                      v162->__r_.__value_.__r.__words[0] = 0;
                      v164 = std::string::append(&v189, ",");
                      v165 = *&v164->__r_.__value_.__l.__data_;
                      v190.__r_.__value_.__r.__words[2] = v164->__r_.__value_.__r.__words[2];
                      *&v190.__r_.__value_.__l.__data_ = v165;
                      v164->__r_.__value_.__l.__size_ = 0;
                      v164->__r_.__value_.__r.__words[2] = 0;
                      v164->__r_.__value_.__r.__words[0] = 0;
                      [v4 dilationRates];
                      std::to_string(&v181, v180.__r_.__value_.__r.__words[0]);
                      if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v166 = &v181;
                      }

                      else
                      {
                        v166 = v181.__r_.__value_.__r.__words[0];
                      }

                      if ((v181.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v167 = HIBYTE(v181.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v167 = v181.__r_.__value_.__l.__size_;
                      }

                      v168 = std::string::append(&v190, v166, v167);
                      v169 = *&v168->__r_.__value_.__l.__data_;
                      v191.__r_.__value_.__r.__words[2] = v168->__r_.__value_.__r.__words[2];
                      *&v191.__r_.__value_.__l.__data_ = v169;
                      v168->__r_.__value_.__l.__size_ = 0;
                      v168->__r_.__value_.__r.__words[2] = 0;
                      v168->__r_.__value_.__r.__words[0] = 0;
                      v170 = std::string::append(&v191, "\\] ");
                      v171 = *&v170->__r_.__value_.__l.__data_;
                      v193 = v170->__r_.__value_.__r.__words[2];
                      v192 = v171;
                      v170->__r_.__value_.__l.__size_ = 0;
                      v170->__r_.__value_.__r.__words[2] = 0;
                      v170->__r_.__value_.__r.__words[0] = 0;
                      if (v193 >= 0)
                      {
                        v152 = &v192;
                      }

                      else
                      {
                        v152 = v192;
                      }

                      if (v193 >= 0)
                      {
                        v153 = HIBYTE(v193);
                      }

                      else
                      {
                        v153 = *(&v192 + 1);
                      }

LABEL_252:
                      std::string::append(&v194, v152, v153);
                      if (SHIBYTE(v193) < 0)
                      {
                        operator delete(v192);
                        if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
LABEL_254:
                          if ((SHIBYTE(v181.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_255;
                          }

                          goto LABEL_266;
                        }
                      }

                      else if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_254;
                      }

                      operator delete(v191.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v181.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_255:
                        if ((SHIBYTE(v190.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_256;
                        }

                        goto LABEL_267;
                      }

LABEL_266:
                      operator delete(v181.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v190.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_256:
                        if ((SHIBYTE(v189.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_257;
                        }

                        goto LABEL_268;
                      }

LABEL_267:
                      operator delete(v190.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v189.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_257:
                        if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_258;
                        }

                        goto LABEL_269;
                      }

LABEL_268:
                      operator delete(v189.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_258:
                        if ((SHIBYTE(v188.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_259;
                        }

                        goto LABEL_270;
                      }

LABEL_269:
                      operator delete(v183.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v188.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_259:
                        if ((SHIBYTE(v187.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_260;
                        }

                        goto LABEL_271;
                      }

LABEL_270:
                      operator delete(v188.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v187.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_260:
                        if ((SHIBYTE(v185.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_261;
                        }

                        goto LABEL_272;
                      }

LABEL_271:
                      operator delete(v187.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v185.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_261:
                        if ((SHIBYTE(v186.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_262;
                        }

LABEL_273:
                        operator delete(v186.__r_.__value_.__l.__data_);
LABEL_262:
                        std::string::append(&v194, "-packed 3 ");
                        if (*(a2 + 8))
                        {
                          operator new();
                        }

                        operator new();
                      }

LABEL_272:
                      operator delete(v185.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v186.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_262;
                      }

                      goto LABEL_273;
                    }

LABEL_227:
                    operator delete(v186.__r_.__value_.__l.__data_);
                    if (*(a2 + 8))
                    {
                      goto LABEL_194;
                    }

                    goto LABEL_228;
                  }

LABEL_158:
                  operator delete(v184.__r_.__value_.__l.__data_);
                  if (*(a2 + 8))
                  {
                    goto LABEL_122;
                  }

                  goto LABEL_159;
                }

LABEL_77:
                operator delete(v190.__r_.__value_.__l.__data_);
                if (*(a2 + 12) == 1)
                {
                  goto LABEL_42;
                }

                goto LABEL_78;
              }
            }

            else if ((SHIBYTE(v191.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_28;
            }

            operator delete(v191.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v190.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_74;
          }

          v21 = **(v8 + 16);
          v22 = v21 + 2;
          v23 = v21 + 3;
          v24 = v21 + 4;
LABEL_13:
          v25 = *v24;
          v26 = *v22 - 1;
          v27 = *v23 - 1;
          v28 = v25 - 1;
          goto LABEL_15;
        }

LABEL_12:
        v22 = **(v8 + 16);
        v23 = v22 + 1;
        v24 = v22 + 2;
        goto LABEL_13;
      }
    }

    else
    {
      v7 = [v6 inputTensorAtIndex:{0, a3}];
      v8 = [*(v5 + 232) inputTensorAtIndex:1];
      v9 = [*(v5 + 232) outputTensorAtIndex:0];
      v10 = *(a2 + 8);
      if (v10 != 1)
      {
        goto LABEL_4;
      }
    }

    v17 = **(v7 + 16);
    v11 = v17 + 1;
    v12 = v17 + 2;
    v13 = v17 + 3;
    v18 = **(v9 + 16);
    v14 = v18 + 1;
    v15 = v18 + 2;
    v16 = v18 + 3;
    goto LABEL_8;
  }

  return result;
}

void sub_239A4CD74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 97) < 0)
  {
    operator delete(*(v28 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_239A4D988()
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    JUMPOUT(0x239A4D938);
  }

  JUMPOUT(0x239A4D70CLL);
}

void sub_239A4D998()
{
  if ((SLOBYTE(STACK[0x297]) & 0x80000000) == 0)
  {
    JUMPOUT(0x239A4D970);
  }

  JUMPOUT(0x239A4D968);
}

uint64_t EncodeArraySoftMax(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = *&a1[*MEMORY[0x277CD7370]];
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v9 = *(a4 + 208);
  get3DTileStrides(v8, &v46);
  get3DTileStrides(v9, &v43);
  v10 = *(*(a4 + 8) + 64);
  v11 = *MEMORY[0x277CD73C8];
  v12 = *&v8[v11];
  if (v12 > 285212703)
  {
    if (v12 <= 536870915)
    {
      if (v12 > 301989895)
      {
        if (v12 == 301989896)
        {
          v13 = 512;
          goto LABEL_44;
        }

        if (v12 == 335544328)
        {
          v13 = 544;
          goto LABEL_44;
        }
      }

      else
      {
        if (v12 == 285212704)
        {
          v13 = 416;
          goto LABEL_44;
        }

        if (v12 == 285212736)
        {
          v13 = 448;
          goto LABEL_44;
        }
      }
    }

    else if (v12 <= 536870927)
    {
      v13 = 0;
      if (v12 == 536870916)
      {
        goto LABEL_44;
      }

      if (v12 == 536870920)
      {
        v13 = 32;
        goto LABEL_44;
      }
    }

    else
    {
      switch(v12)
      {
        case 536870928:
          v13 = 64;
          goto LABEL_44;
        case 536870944:
          v13 = 96;
          goto LABEL_44;
        case 536870976:
          v13 = 128;
          goto LABEL_44;
      }
    }
  }

  else if (v12 <= 31)
  {
    if (v12 > 7)
    {
      if (v12 == 8)
      {
        v13 = 192;
        goto LABEL_44;
      }

      if (v12 == 16)
      {
        v13 = 224;
        goto LABEL_44;
      }
    }

    else
    {
      if (v12 == -1879048176)
      {
        v13 = 384;
        goto LABEL_44;
      }

      if (v12 == 4)
      {
        v13 = 160;
        goto LABEL_44;
      }
    }
  }

  else if (v12 <= 268435463)
  {
    if (v12 == 32)
    {
      v13 = 256;
      goto LABEL_44;
    }

    if (v12 == 64)
    {
      v13 = 288;
      goto LABEL_44;
    }
  }

  else
  {
    switch(v12)
    {
      case 268435464:
        v13 = 480;
        goto LABEL_44;
      case 268435472:
        v13 = 320;
        goto LABEL_44;
      case 268435488:
        v13 = 352;
        goto LABEL_44;
    }
  }

  v13 = 576;
LABEL_44:
  v14 = *&v9[v11];
  v32 = *(a4 + 192);
  if (v14 > 285212703)
  {
    if (v14 <= 536870915)
    {
      if (v14 > 301989895)
      {
        if (v14 == 301989896)
        {
          v15 = 16;
          goto LABEL_88;
        }

        if (v14 == 335544328)
        {
          v15 = 17;
          goto LABEL_88;
        }
      }

      else
      {
        if (v14 == 285212704)
        {
          v15 = 13;
          goto LABEL_88;
        }

        if (v14 == 285212736)
        {
          v15 = 14;
          goto LABEL_88;
        }
      }
    }

    else if (v14 <= 536870927)
    {
      if (v14 == 536870916)
      {
        v15 = 0;
        goto LABEL_88;
      }

      if (v14 == 536870920)
      {
        v15 = 1;
        goto LABEL_88;
      }
    }

    else
    {
      switch(v14)
      {
        case 536870928:
          v15 = 2;
          goto LABEL_88;
        case 536870944:
          v15 = 3;
          goto LABEL_88;
        case 536870976:
          v15 = 4;
          goto LABEL_88;
      }
    }
  }

  else if (v14 <= 31)
  {
    if (v14 > 7)
    {
      if (v14 == 8)
      {
        v15 = 6;
        goto LABEL_88;
      }

      if (v14 == 16)
      {
        v15 = 7;
        goto LABEL_88;
      }
    }

    else
    {
      if (v14 == -1879048176)
      {
        v15 = 12;
        goto LABEL_88;
      }

      if (v14 == 4)
      {
        v15 = 5;
        goto LABEL_88;
      }
    }
  }

  else if (v14 <= 268435463)
  {
    if (v14 == 32)
    {
      v15 = 8;
      goto LABEL_88;
    }

    if (v14 == 64)
    {
      v15 = 9;
      goto LABEL_88;
    }
  }

  else
  {
    switch(v14)
    {
      case 268435464:
        v15 = 15;
        goto LABEL_88;
      case 268435472:
        v15 = 10;
        goto LABEL_88;
      case 268435488:
        v15 = 11;
        goto LABEL_88;
    }
  }

  v15 = 18;
LABEL_88:
  *&v16 = -1;
  *(&v16 + 1) = -1;
  v41 = v16;
  v42 = v16;
  v40 = v16;
  v37 = v16;
  v38 = -1;
  v39 = v15 | v13;
  v17 = &v9[*MEMORY[0x277CD7410]];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = *(v17 + 2);
  v36 = 0;
  v35[0] = v18;
  v35[1] = v19;
  v35[2] = v20;
  v35[3] = v47;
  v35[4] = v44;
  v35[5] = 0;
  v35[6] = v46;
  v35[7] = v43;
  v35[8] = 0;
  v35[9] = v48;
  v35[10] = v45;
  v35[11] = 0;
  if ([a1 axis] > 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = [a1 axis];
  }

  v35[12] = v21;
  objc_opt_class();
  LOBYTE(v36) = objc_opt_isKindOfClass() & 1;
  if (v21 >= 3 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v21 == 1)
  {
    v22 = v20;
  }

  else
  {
    v22 = v19;
  }

  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  if (!v21)
  {
    v18 = v19;
  }

  v24 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v26 = [ComputeState threadExecutionWidth];
  if (v26 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  v28 = [ComputeState maxTotalThreadsPerThreadgroup];
  v29 = 256;
  if (v28 < 0x100)
  {
    v29 = v28;
  }

  if (v29 > 2 * v27)
  {
    v24 = v29 / v27;
  }

  [a2 setComputePipelineState:ComputeState];
  [a2 setBuffer:objc_msgSend(v8 offset:"buffer") atIndex:{v10, 0}];
  [a2 setBuffer:objc_msgSend(v9 offset:"buffer") atIndex:{v32, 1}];
  [a2 setBytes:v35 length:56 atIndex:2];
  v34[0] = (v27 + v18 - 1) / v27;
  v34[1] = (v24 + v23 - 1) / v24;
  v34[2] = 1;
  v33[0] = v27;
  v33[1] = v24;
  v33[2] = 1;
  [a2 dispatchThreadgroups:v34 threadsPerThreadgroup:v33];
  MPSLibrary::ReleaseComputeState();
  v30 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t EncodeArraySoftMaxGradient(char *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = *&a1[*MEMORY[0x277CD7370]];
  v10 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v11 = *(a4 + 112);
  v12 = *(a4 + 208);
  get3DTileStrides(v10, &v59);
  get3DTileStrides(v11, &v56);
  get3DTileStrides(v12, &v53);
  v13 = *(*(a4 + 8) + 64);
  v14 = *(a4 + 96);
  v15 = *MEMORY[0x277CD73C8];
  v16 = *&v10[v15];
  if (v16 > 285212703)
  {
    if (v16 <= 536870915)
    {
      if (v16 > 301989895)
      {
        if (v16 == 301989896)
        {
          v17 = 512;
          v18 = *&v11[v15];
          if (v18 <= 285212703)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v16 != 335544328)
          {
            goto LABEL_81;
          }

          v17 = 544;
          v18 = *&v11[v15];
          if (v18 <= 285212703)
          {
            goto LABEL_60;
          }
        }
      }

      else if (v16 == 285212704)
      {
        v17 = 416;
        v18 = *&v11[v15];
        if (v18 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v16 != 285212736)
        {
          goto LABEL_81;
        }

        v17 = 448;
        v18 = *&v11[v15];
        if (v18 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_82;
    }

    if (v16 > 536870927)
    {
      switch(v16)
      {
        case 536870928:
          v17 = 64;
          v18 = *&v11[v15];
          if (v18 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        case 536870944:
          v17 = 96;
          v18 = *&v11[v15];
          if (v18 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        case 536870976:
          v17 = 128;
          v18 = *&v11[v15];
          if (v18 <= 285212703)
          {
            goto LABEL_60;
          }

          break;
        default:
          goto LABEL_81;
      }

      goto LABEL_82;
    }

    v17 = 0;
    if (v16 != 536870916)
    {
      if (v16 != 536870920)
      {
        goto LABEL_81;
      }

      v17 = 32;
      v18 = *&v11[v15];
      if (v18 <= 285212703)
      {
        goto LABEL_60;
      }

      goto LABEL_82;
    }

LABEL_59:
    v18 = *&v11[v15];
    if (v18 > 285212703)
    {
      goto LABEL_82;
    }

    goto LABEL_60;
  }

  if (v16 <= 31)
  {
    if (v16 > 7)
    {
      if (v16 == 8)
      {
        v17 = 192;
        v18 = *&v11[v15];
        if (v18 <= 285212703)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v16 != 16)
        {
          goto LABEL_81;
        }

        v17 = 224;
        v18 = *&v11[v15];
        if (v18 <= 285212703)
        {
          goto LABEL_60;
        }
      }
    }

    else if (v16 == -1879048176)
    {
      v17 = 384;
      v18 = *&v11[v15];
      if (v18 <= 285212703)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v16 != 4)
      {
        goto LABEL_81;
      }

      v17 = 160;
      v18 = *&v11[v15];
      if (v18 <= 285212703)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_82;
  }

  if (v16 <= 268435463)
  {
    if (v16 != 32)
    {
      if (v16 != 64)
      {
        goto LABEL_81;
      }

      v17 = 288;
      v18 = *&v11[v15];
      if (v18 <= 285212703)
      {
        goto LABEL_60;
      }

      goto LABEL_82;
    }

    v17 = 256;
    goto LABEL_59;
  }

  switch(v16)
  {
    case 268435464:
      v17 = 480;
      v18 = *&v11[v15];
      if (v18 <= 285212703)
      {
        goto LABEL_60;
      }

      break;
    case 268435472:
      v17 = 320;
      v18 = *&v11[v15];
      if (v18 <= 285212703)
      {
        goto LABEL_60;
      }

      break;
    case 268435488:
      v17 = 352;
      v18 = *&v11[v15];
      if (v18 > 285212703)
      {
        break;
      }

LABEL_60:
      if (v18 <= 31)
      {
        if (v18 > 7)
        {
          if (v18 == 8)
          {
            v19 = 6144;
            goto LABEL_104;
          }

          if (v18 == 16)
          {
            v19 = 7168;
            goto LABEL_104;
          }
        }

        else
        {
          if (v18 == -1879048176)
          {
            v19 = 12288;
            goto LABEL_104;
          }

          if (v18 == 4)
          {
            v19 = 5120;
            goto LABEL_104;
          }
        }
      }

      else if (v18 <= 268435463)
      {
        if (v18 == 32)
        {
          v19 = 0x2000;
          goto LABEL_104;
        }

        if (v18 == 64)
        {
          v19 = 9216;
          goto LABEL_104;
        }
      }

      else
      {
        switch(v18)
        {
          case 268435464:
            v19 = 15360;
            goto LABEL_104;
          case 268435472:
            v19 = 10240;
            goto LABEL_104;
          case 268435488:
            v19 = 11264;
            goto LABEL_104;
        }
      }

      goto LABEL_103;
    default:
LABEL_81:
      v17 = 576;
      v18 = *&v11[v15];
      if (v18 > 285212703)
      {
        break;
      }

      goto LABEL_60;
  }

LABEL_82:
  if (v18 <= 536870915)
  {
    if (v18 > 301989895)
    {
      if (v18 == 301989896)
      {
        v19 = 0x4000;
        goto LABEL_104;
      }

      if (v18 == 335544328)
      {
        v19 = 17408;
        goto LABEL_104;
      }
    }

    else
    {
      if (v18 == 285212704)
      {
        v19 = 13312;
        goto LABEL_104;
      }

      if (v18 == 285212736)
      {
        v19 = 14336;
        goto LABEL_104;
      }
    }
  }

  else if (v18 <= 536870927)
  {
    if (v18 == 536870916)
    {
      v19 = 0;
      goto LABEL_104;
    }

    if (v18 == 536870920)
    {
      v19 = 1024;
      goto LABEL_104;
    }
  }

  else
  {
    switch(v18)
    {
      case 536870928:
        v19 = 2048;
        goto LABEL_104;
      case 536870944:
        v19 = 3072;
        goto LABEL_104;
      case 536870976:
        v19 = 4096;
        goto LABEL_104;
    }
  }

LABEL_103:
  v19 = 18432;
LABEL_104:
  v20 = *&v12[v15];
  v42 = *(a4 + 192);
  v43 = v10;
  if (v20 > 285212703)
  {
    if (v20 <= 536870915)
    {
      if (v20 > 301989895)
      {
        if (v20 == 301989896)
        {
          v21 = v11;
          v22 = 16;
          goto LABEL_148;
        }

        if (v20 == 335544328)
        {
          v21 = v11;
          v22 = 17;
          goto LABEL_148;
        }
      }

      else
      {
        if (v20 == 285212704)
        {
          v21 = v11;
          v22 = 13;
          goto LABEL_148;
        }

        if (v20 == 285212736)
        {
          v21 = v11;
          v22 = 14;
          goto LABEL_148;
        }
      }
    }

    else if (v20 <= 536870927)
    {
      if (v20 == 536870916)
      {
        v21 = v11;
        v22 = 0;
        goto LABEL_148;
      }

      if (v20 == 536870920)
      {
        v21 = v11;
        v22 = 1;
        goto LABEL_148;
      }
    }

    else
    {
      switch(v20)
      {
        case 536870928:
          v21 = v11;
          v22 = 2;
          goto LABEL_148;
        case 536870944:
          v21 = v11;
          v22 = 3;
          goto LABEL_148;
        case 536870976:
          v21 = v11;
          v22 = 4;
          goto LABEL_148;
      }
    }
  }

  else if (v20 <= 31)
  {
    if (v20 > 7)
    {
      if (v20 == 8)
      {
        v21 = v11;
        v22 = 6;
        goto LABEL_148;
      }

      if (v20 == 16)
      {
        v21 = v11;
        v22 = 7;
        goto LABEL_148;
      }
    }

    else
    {
      if (v20 == -1879048176)
      {
        v21 = v11;
        v22 = 12;
        goto LABEL_148;
      }

      if (v20 == 4)
      {
        v21 = v11;
        v22 = 5;
        goto LABEL_148;
      }
    }
  }

  else if (v20 <= 268435463)
  {
    if (v20 == 32)
    {
      v21 = v11;
      v22 = 8;
      goto LABEL_148;
    }

    if (v20 == 64)
    {
      v21 = v11;
      v22 = 9;
      goto LABEL_148;
    }
  }

  else
  {
    switch(v20)
    {
      case 268435464:
        v21 = v11;
        v22 = 15;
        goto LABEL_148;
      case 268435472:
        v21 = v11;
        v22 = 10;
        goto LABEL_148;
      case 268435488:
        v21 = v11;
        v22 = 11;
        goto LABEL_148;
    }
  }

  v21 = v11;
  v22 = 18;
LABEL_148:
  *&v23 = -1;
  *(&v23 + 1) = -1;
  v51 = v23;
  v52 = v23;
  v24 = 0x2000000;
  if (!a5)
  {
    v24 = 0;
  }

  v50 = v23;
  v47 = v23;
  v48 = v23;
  v49 = v17 | v19 | v22 | v24;
  v25 = v12;
  v26 = &v12[*MEMORY[0x277CD7410]];
  v28 = *v26;
  v27 = *(v26 + 1);
  v29 = *(v26 + 2);
  v46[2] = v29;
  v46[3] = v60;
  v46[4] = v54;
  v46[5] = v57;
  v46[0] = v28;
  v46[1] = v27;
  v46[6] = v59;
  v46[7] = v53;
  v46[8] = v56;
  v46[9] = v61;
  v46[10] = v55;
  v46[11] = v58;
  v30 = [a1 axis];
  v46[12] = v30;
  objc_opt_class();
  v46[13] = objc_opt_isKindOfClass() & 1;
  if (v30)
  {
    if (v30 != 1)
    {
      v29 = v27;
    }
  }

  else
  {
    v28 = v27;
  }

  v31 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v33 = [ComputeState threadExecutionWidth];
  if (v33 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = [ComputeState maxTotalThreadsPerThreadgroup];
  v36 = 256;
  if (v35 < 0x100)
  {
    v36 = v35;
  }

  v37 = v36 > 2 * v34;
  v38 = v36 / v34;
  if (v37)
  {
    v31 = v38;
  }

  [a2 setComputePipelineState:ComputeState];
  [a2 setBuffer:objc_msgSend(v43 offset:"buffer") atIndex:{v13, 0}];
  [a2 setBuffer:objc_msgSend(v21 offset:"buffer") atIndex:{v41, 1}];
  [a2 setBuffer:objc_msgSend(v25 offset:"buffer") atIndex:{v42, 2}];
  [a2 setBytes:v46 length:56 atIndex:3];
  v45[0] = (v34 + v28 - 1) / v34;
  v45[1] = (v31 + v29 - 1) / v31;
  v45[2] = 1;
  v44[0] = v34;
  v44[1] = v31;
  v44[2] = 1;
  [a2 dispatchThreadgroups:v45 threadsPerThreadgroup:v44];
  MPSLibrary::ReleaseComputeState();
  v39 = *MEMORY[0x277D85DE8];
  return 0;
}

char *get3DTileStrides(char *result, unint64_t *a2)
{
  v2 = MEMORY[0x277CD7410];
  v3 = *MEMORY[0x277CD7410];
  v5 = *&result[v3];
  v4 = *&result[v3 + 16];
  v6 = MEMORY[0x277CD73D8];
  v7 = *MEMORY[0x277CD73D8];
  v9 = *&result[v3 + 32];
  v8 = *&result[v3 + 48];
  v10 = *&result[v7];
  v31 = v9;
  v32 = v8;
  v29 = v5;
  v30 = v4;
  if (*(&v29 + (v10 & 0xF)) == 1)
  {
    v11 = 0;
LABEL_3:
    *a2 = v11;
    v3 = *v2;
    v9 = *&result[v3 + 32];
    v8 = *&result[v3 + 48];
    v5 = *&result[v3];
    v4 = *&result[v3 + 16];
    v7 = *v6;
    goto LABEL_4;
  }

  switch(v10)
  {
    case 2:
      v11 = *&result[*MEMORY[0x277CD7400]] * *&result[*MEMORY[0x277CD73D0] + 4];
      goto LABEL_3;
    case 1:
      v11 = *&result[*MEMORY[0x277CD7400]];
      goto LABEL_3;
    case 0:
      v16 = result;
      v17 = a2;
      v18 = [result dataType];
      a2 = v17;
      v19 = v18;
      result = v16;
      v11 = v19 >> 3;
      goto LABEL_3;
  }

LABEL_4:
  v12 = result[v7 + 1];
  v25 = v5;
  v26 = v4;
  v27 = v9;
  v28 = v8;
  if (*(&v25 + (v12 & 0xF)) == 1)
  {
    a2[1] = 0;
  }

  else if (v12)
  {
    if (v12 == 1)
    {
      a2[1] = *&result[*MEMORY[0x277CD7400]];
    }

    else if (v12 == 2)
    {
      a2[1] = *&result[*MEMORY[0x277CD7400]] * *&result[*MEMORY[0x277CD73D0] + 4];
    }
  }

  else
  {
    v20 = result;
    v21 = a2;
    v22 = [result dataType];
    a2 = v21;
    v23 = v22;
    result = v20;
    v21[1] = v23 >> 3;
    v3 = *v2;
    v7 = *v6;
  }

  v13 = &result[v3];
  v14 = result[v7 + 2];
  if (*&v13[4 * (v14 & 0xF)] == 1)
  {
    v15 = 0;
LABEL_8:
    a2[2] = v15;
    return result;
  }

  if (!result[v7 + 2])
  {
    v24 = a2;
    result = [result dataType];
    a2 = v24;
    v15 = result >> 3;
    goto LABEL_8;
  }

  if (v14 == 1)
  {
    v15 = *&result[*MEMORY[0x277CD7400]];
    goto LABEL_8;
  }

  if (v14 == 2)
  {
    v15 = *&result[*MEMORY[0x277CD7400]] * *&result[*MEMORY[0x277CD73D0] + 4];
    goto LABEL_8;
  }

  return result;
}

double MPSNDArrayLUTGEMVBehaviors::getNResPerDim(double a1, double a2, int32x4_t a3, int32x4_t a4, uint64_t a5, uint64_t a6, int a7, __int16 a8, int a9, int a10)
{
  v10 = *a6;
  v11 = HIDWORD(*a6);
  v12 = v10 * v11;
  v13 = HIDWORD(*a6) * *(a6 + 8) * v12;
  if (a10)
  {
    v11 = *a6;
  }

  v15 = v12 > 7 && v13 > 0x1FF;
  if (v15 && *(a6 + 48) >= 0x400u)
  {
    if (a9 == 4 || a9 == 2)
    {
      if (a7)
      {
        if (v11 > 3)
        {
          if (v11 <= 5)
          {
            if (v11 == 4)
            {
              v16 = xmmword_239B0A210;
            }

            else
            {
              v16 = xmmword_239B0A200;
            }

            goto LABEL_93;
          }

          if (v11 == 6)
          {
            v16 = xmmword_239B0A1F0;
            goto LABEL_93;
          }

          if (v11 == 7)
          {
            v16 = xmmword_239B0A1E0;
            goto LABEL_93;
          }

LABEL_66:
          v16 = xmmword_239B0A240;
          goto LABEL_93;
        }

        if (v11 == 1)
        {
          v16 = xmmword_239B0A1D0;
          goto LABEL_93;
        }

        if (v11 == 2)
        {
          v16 = xmmword_239B0A230;
          goto LABEL_93;
        }

        if (v11 != 3)
        {
          goto LABEL_66;
        }

        v16 = xmmword_239B0A220;
      }

      else
      {
        v16 = xmmword_239B0A1C0;
      }

LABEL_93:
      if (a10)
      {
        v16.i64[0] = vzip1q_s32(vextq_s8(v16, v16, 4uLL), v16).u64[0];
      }

      v26 = vceqz_s32(vzip1_s32(*(a6 + 32), *(a6 + 16)));
      if ((v26.i8[4] & 1) == 0)
      {
        v27 = *(a6 + 56);
        if (v27 < v16.i32[1])
        {
          v16.i64[0] = __PAIR64__(v27, v16.u32[0]);
        }
      }

      if ((v26.i8[0] & 1) == 0)
      {
        v28 = *(a6 + 68);
        if (v28 < v16.i32[0])
        {
          v16.i64[0] = __PAIR64__(v16.u32[1], v28);
        }
      }

      return *v16.i64;
    }

    if (!a7)
    {
      v16 = xmmword_239B0A1C0;
      if ((a8 & 0xFFE0) == 0)
      {
        if (v11 <= 3)
        {
          switch(v11)
          {
            case 1:
              goto LABEL_93;
            case 2:
              v16 = xmmword_239B0A2A0;
              goto LABEL_93;
            case 3:
              v16 = xmmword_239B0A290;
              goto LABEL_93;
          }
        }

        else
        {
          if (v11 <= 5)
          {
            if (v11 == 4)
            {
              v16 = xmmword_239B0A280;
            }

            else
            {
              v16 = xmmword_239B0A270;
            }

            goto LABEL_93;
          }

          if (v11 == 6)
          {
            v16 = xmmword_239B0A260;
            goto LABEL_93;
          }

          if (v11 == 7)
          {
            v16 = xmmword_239B0A250;
            goto LABEL_93;
          }
        }

        v16 = xmmword_239B0A2B0;
        goto LABEL_93;
      }

      goto LABEL_93;
    }

    if ((a8 & 0xFFE0) != 0)
    {
      if (v11 >= 8)
      {
        v19 = 8;
      }

      else
      {
        v19 = v11;
      }

      v20.i64[0] = 0x100000001;
      v20.i64[1] = 0x100000001;
      v21.i64[1] = 0x100000001;
      v21.i64[0] = v19 | 0x100000000;
      a3.i32[0] = 2;
      a4.i32[0] = v11;
      v16 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a4, a3), 0), v20, v21);
      goto LABEL_93;
    }

    if (v11 <= 3)
    {
      if (v11 == 1)
      {
        v16 = xmmword_239B0A2C0;
        goto LABEL_93;
      }

      if (v11 == 2)
      {
        v16 = xmmword_239B0A310;
        goto LABEL_93;
      }

      if (v11 != 3)
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v11 <= 5)
      {
        if (v11 == 4)
        {
          v16 = xmmword_239B0A300;
        }

        else
        {
          v16 = xmmword_239B0A2F0;
        }

        goto LABEL_93;
      }

      if (v11 != 6)
      {
        if (v11 == 7)
        {
          v16 = xmmword_239B0A2D0;
          goto LABEL_93;
        }

LABEL_87:
        v16 = xmmword_239B0A320;
        goto LABEL_93;
      }
    }

    v16 = xmmword_239B0A2E0;
    goto LABEL_93;
  }

  if (v15)
  {
    v17 = v11 >= 4 && v10 >= 4;
    if (!v17 || (v16.i64[0] = 0x400000004, v13 <= 0x3FF))
    {
      if (v10 < 8)
      {
        if (v10 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        v16.i64[0] = v22 | 0x800000000;
      }

      else
      {
        if (v11 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        v16.i32[0] = 8;
        v16.i32[1] = v18;
      }
    }
  }

  else
  {
    v16.i64[0] = 0x100000001;
    if (v12 >= 8 && v13 >= 0x100)
    {
      if (v10 < 2 || (v16.i64[0] = 0x200000002, v11 <= 1))
      {
        if (v10 <= 3)
        {
          v16.i32[0] = 1;
          a3.i32[0] = v11;
          v23 = vdup_lane_s32(vcgt_u32(*a3.i8, *v16.i8), 0);
          v24 = vsub_s32(vand_s8(v23, 0x200000001), vmvn_s8(v23));
          v25 = vbsl_s8(vdup_lane_s32(vcgt_u32(*a6, *v16.i8), 0), 0x100000002, v24);
          v24.i32[0] = 3;
          *v16.i8 = vbsl_s8(vdup_lane_s32(vcgt_u32(*a3.i8, v24), 0), 0x400000001, v25);
        }

        else
        {
          v16.i64[0] = 0x100000004;
        }
      }
    }
  }

  return *v16.i64;
}

uint64_t EncodeArrayLUTDequant(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    operator new();
  }

  v7 = MEMORY[0x277CD7370];
  v8 = *(a1 + *MEMORY[0x277CD7370]);
  v9 = [*(a4 + 232) graph];
  v10 = **(v9 + 56);
  if (*(*(v9 + 56) + 8) == v10)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v11 = *v10;
  v14 = *(*v10 + 8);
  v12 = *v14;
  v13 = v14[1];
  v15 = v13 - *v14;
  if (v13 == *v14 || (v16 = **(v11 + 24), *(*(v11 + 24) + 8) == v16) || (v207 = a1, v15 <= 8))
  {
LABEL_197:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v217 = v11;
  v17 = *v16;
  v18 = *v12;
  v19 = v12[1];
  DimensionSize = BaseTensor::GetDimensionSize(*v16);
  v224 = BaseTensor::GetDimensionSize(v17);
  v211 = BaseTensor::GetDimensionSize(v17);
  v209 = BaseTensor::GetDimensionSize(v17);
  v20 = BaseTensor::GetDimensionSize(v18);
  LODWORD(v17) = BaseTensor::GetDimensionSize(v18);
  v21 = BaseTensor::GetDimensionSize(v18);
  v222 = BaseTensor::GetDimensionSize(v18);
  *&v22 = __PAIR64__(v17, v20);
  v226 = v22;
  LODWORD(v17) = BaseTensor::GetDimensionSize(v19);
  v221 = BaseTensor::GetDimensionSize(v19);
  v203 = BaseTensor::GetDimensionSize(v19);
  v201 = BaseTensor::GetDimensionSize(v19);
  v23 = 31 - __clz(v17);
  v220 = v17;
  if (v17)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = [*(v4 + 232) graph];
  v26 = *(v25 + 64);
  v27 = *v26;
  v28 = v26[1];
  if (*v26 == v28)
  {
    v34 = 0;
  }

  else
  {
    v29 = v25;
    v30 = v4;
    v31 = 0;
    v32 = -1;
    do
    {
      v33 = *v27++;
      if (v33 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v29) + 32))
      {
        v32 = v31;
      }

      ++v31;
    }

    while (v27 != v28);
    if (v32 == -1)
    {
      v34 = 0;
    }

    else
    {
      v34 = v32;
    }

    v4 = v30;
    v7 = MEMORY[0x277CD7370];
  }

  v35 = v226;
  DWORD2(v35) = v21;
  v227 = v35;
  v36 = [*(v4 + 16) objectAtIndexedSubscript:v34];
  v37 = v36;
  v38 = MEMORY[0x277CD73D8];
  if (!v36)
  {
    v41 = 0;
    v42 = v227;
    HIDWORD(v42) = v222;
    v200 = v34;
    if (v24 == 4)
    {
      goto LABEL_27;
    }

LABEL_32:
    if (v24 != 2)
    {
      v206 = 0;
      v223 = 0;
      goto LABEL_48;
    }

    if ((*(v36 + *MEMORY[0x277CD7408]) & 3) == 0 && (*(v36 + *MEMORY[0x277CD7418]) & 3) == 0 && (*(v36 + *MEMORY[0x277CD7410]) & 3) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_36;
  }

  v39 = (v36 + *MEMORY[0x277CD73D8]);
  v40 = v39[1] == 0;
  if (!v39[2])
  {
    v40 = 2;
  }

  if (v39[3])
  {
    v41 = v40;
  }

  else
  {
    v41 = 3;
  }

  v42 = v227;
  HIDWORD(v42) = v222;
  v200 = v34;
  if (v24 != 4)
  {
    goto LABEL_32;
  }

LABEL_27:
  if ((*(v36 + *MEMORY[0x277CD7408]) & 1) == 0 && (*(v36 + *MEMORY[0x277CD7418]) & 1) == 0 && (*(v36 + *MEMORY[0x277CD7410]) & 1) == 0)
  {
LABEL_30:
    v223 = 0;
    goto LABEL_37;
  }

LABEL_36:
  v223 = 1;
LABEL_37:
  v43 = v24 == 2 && v41 == 0;
  v44 = v24 == 4 && v41 == 0;
  LOBYTE(v206) = v44;
  BYTE4(v206) = v43;
  if (*(v36 + *MEMORY[0x277CD73C8]) == 8)
  {
    if (v24 == 4)
    {
      v249 = v42;
      *(&v249 & 0xFFFFFFFFFFFFFFF3 | (4 * (v41 & 3))) = 2 * *(&v249 | (4 * v41));
      v42 = v249;
    }

    else
    {
      v250 = v42;
      *(&v250 & 0xFFFFFFFFFFFFFFF3 | (4 * (v41 & 3))) = 4 * *(&v250 | (4 * v41));
      v42 = v250;
    }
  }

LABEL_48:
  v205 = v41;
  v228 = v42;
  if ((*(v207 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (v24 > 8 || ((1 << v24) & 0x114) == 0)
    {
      v188 = MTLReportFailureTypeEnabled();
      v42 = v228;
      if (v188)
      {
        v192 = v207;
        MTLReportFailure();
        v42 = v228;
      }
    }

    v45 = v42;
    if (DimensionSize != v42 && v42 != 1)
    {
      v189 = MTLReportFailureTypeEnabled();
      v42 = v228;
      if (v189)
      {
        v198 = 0;
        v199 = v45;
        v194 = 0;
        v196 = DimensionSize;
        v192 = v207;
        MTLReportFailure();
        v42 = v228;
      }
    }

    v46 = DWORD1(v42);
    if (v224 != DWORD1(v42) && DWORD1(v42) != 1)
    {
      v190 = MTLReportFailureTypeEnabled();
      *(&v42 + 1) = *(&v228 + 1);
      if (v190)
      {
        v198 = 1;
        v199 = v46;
        v194 = 1;
        v196 = v224;
        v192 = v207;
        MTLReportFailure();
        *(&v42 + 1) = *(&v228 + 1);
      }
    }

    v47 = DWORD2(v42);
    if (v211 != DWORD2(v42) && DWORD2(v42) != 1)
    {
      v191 = MTLReportFailureTypeEnabled();
      HIDWORD(v42) = HIDWORD(v228);
      if (v191)
      {
        v198 = 2;
        v199 = v47;
        v194 = 2;
        v196 = v211;
        v192 = v207;
        MTLReportFailure();
        HIDWORD(v42) = HIDWORD(v228);
      }
    }

    v48 = HIDWORD(v42);
    if (v209 != HIDWORD(v42) && HIDWORD(v42) != 1 && MTLReportFailureTypeEnabled())
    {
      v198 = 3;
      v199 = v48;
      v194 = 3;
      v196 = v209;
      v192 = v207;
      MTLReportFailure();
    }
  }

  v208 = a2;
  v49 = *(v4 + 16);
  BaseTensor::GetAccessPattern();
  v51 = **(v217 + 8);
  if (*(*(v217 + 8) + 8) == v51)
  {
    goto LABEL_197;
  }

  *&v52 = __PAIR64__(v224, DimensionSize);
  v53.i64[0] = __PAIR64__(v221, v220);
  *(&v52 + 1) = __PAIR64__(v209, v211);
  v53.i64[1] = __PAIR64__(v201, v203);
  v213 = v52;
  v218 = v53;
  v202 = *(*v51 + 8);
  v53.i64[0] = 0xFF000000FFLL;
  v53.i64[1] = 0xFF000000FFLL;
  v54 = vzip1_s8(*(*(v4 + 208) + *v38), *&vandq_s8(vmovl_u16(vzip1_s8(v50, v50)), v53));
  v55 = *(v207 + *v7);
  v277 = 0;
  v56 = *(v55 + 32);
  *v57.i64 = (*(*v56 + 24))(v56, &v277);
  v58 = v57.i8[0];
  v248 = v213;
  v59 = *(&v248 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[0] & 3)));
  v247 = v228;
  v60 = *(&v247 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[0] & 3)));
  v246 = v218;
  v61 = *(&v247 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[4] & 3)));
  v62 = *(&v246 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[4] & 3)));
  v63 = v57.i32[1] == 0;
  v65 = v57.i32[1] == 1 || v57.i32[0] != 1;
  v66 = *(&v247 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[8] & 3)));
  v67 = *(&v246 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[8] & 3)));
  if (!v57.i32[2])
  {
    v63 = 2;
  }

  if (v57.i32[2] == 1)
  {
    v65 = 2;
  }

  v204 = v57;
  v68 = v57.i32[3];
  v214 = v59;
  LODWORD(v69) = v59;
  v219 = *(&v248 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[4] & 3)));
  DWORD1(v69) = v219;
  v212 = *(&v248 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[8] & 3)));
  DWORD2(v69) = v212;
  v210 = *(&v248 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[12] & 3)));
  HIDWORD(v69) = v210;
  v57.i32[0] = *(&v246 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[0] & 3)));
  v57.i32[1] = *(&v246 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[4] & 3)));
  v57.i32[2] = *(&v246 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[8] & 3)));
  v70 = *(&v246 & 0xFFFFFFFFFFFFFFF3 | (4 * (v57.i8[12] & 3)));
  HIDWORD(v71) = v70;
  if (v68)
  {
    v72 = v63;
  }

  else
  {
    v72 = 3;
  }

  v73 = v38;
  if (v68 == 1)
  {
    v74 = 3;
  }

  else
  {
    v74 = v65;
  }

  v266 = v228;
  v229 = v69;
  v264 = v69;
  v265 = v71;
  v270 = 0x100000001;
  __asm { FMOV            V0.2S, #1.0 }

  v275 = _D0;
  v276 = 1065353216;
  v79 = vcvtpd_u64_f64(v61 / v67);
  v267 = vcvtpd_u64_f64(v60 / v62);
  v268 = v79;
  v80 = vcvtpd_u64_f64(v66 / v70);
  v271 = 1;
  v269 = v80;
  v81 = 0.0;
  v82 = 1.0 / v267;
  if (v60 == 1)
  {
    v82 = 0.0;
  }

  v83 = 1.0 / v79;
  if (v61 == 1)
  {
    v83 = 0.0;
  }

  v272 = v82;
  v273 = v83;
  if (v66 != 1)
  {
    v84 = 1.0 / v80;
    v81 = v84;
  }

  v274 = v81;
  if (v37)
  {
    v85 = &v37[*MEMORY[0x277CD7410]];
    v86 = *v85;
    v87 = *(v85 + 1);
    v88 = *(v85 + 2);
    v89 = *(v85 + 3);
    v90 = *&v37[*v73];
    v245[3] = v89;
    v245[2] = v88;
    v245[1] = v87;
    v245[0] = v86;
    v91 = *MEMORY[0x277CD7428];
    if (*(v245 + (v90 & 0xF)) == 1)
    {
      v92 = 0;
    }

    else
    {
      v92 = *&v37[8 * (v90 & 0xF) + v91];
    }

    v244[0] = v86;
    v244[1] = v87;
    v244[2] = v88;
    v244[3] = v89;
    v93 = BYTE1(v90) & 0xF;
    v94 = *(v244 + v93);
    v95 = &v37[v91];
    v96 = *v95;
    v97 = *(v95 + 1);
    v98 = *(v95 + 2);
    v99 = *(v95 + 3);
    v100 = *(v95 + 4);
    v101 = *(v95 + 5);
    v102 = *(v95 + 6);
    v103 = *(v95 + 7);
    v241[7] = v103;
    v241[6] = v102;
    v241[4] = v100;
    v241[5] = v101;
    v241[2] = v98;
    v241[3] = v99;
    v241[0] = v96;
    v241[1] = v97;
    v104 = *(v241 + v93);
    v243[0] = v86;
    v243[1] = v87;
    v243[2] = v88;
    v243[3] = v89;
    v105 = BYTE2(v90) & 0xF;
    v106 = *(v243 + v105);
    if (v94 == 1)
    {
      v107 = 0;
    }

    else
    {
      v107 = v104;
    }

    v240[6] = v102;
    v240[7] = v103;
    v240[4] = v100;
    v240[5] = v101;
    v240[2] = v98;
    v240[3] = v99;
    v240[0] = v96;
    v240[1] = v97;
    v108 = *(v240 + v105);
    if (v106 == 1)
    {
      v109 = 0;
    }

    else
    {
      v109 = *(v240 + v105);
    }

    v242[0] = v86;
    v242[1] = v87;
    v242[2] = v88;
    v242[3] = v89;
    v110 = BYTE3(v90) & 0xF;
    v111 = *(v242 + v110);
    v239[6] = v102;
    v239[7] = v103;
    v239[4] = v100;
    v239[5] = v101;
    v239[2] = v98;
    v239[3] = v99;
    v239[0] = v96;
    v239[1] = v97;
    v112 = *(v239 + v110);
    if (v111 == 1)
    {
      v113 = 0;
    }

    else
    {
      v113 = *(v239 + v110);
    }

    v114 = &v37[*MEMORY[0x277CD7418]];
    v115 = *v114;
    v116 = *(v114 + 1);
    v117 = *(v114 + 2);
    v118 = *(v114 + 3);
    v238[6] = v102;
    v238[7] = v103;
    v238[4] = v100;
    v238[5] = v101;
    v238[2] = v98;
    v238[3] = v99;
    v238[0] = v96;
    v238[1] = v97;
    v119 = v90 & 0xF;
    v120 = *(v238 + v119);
    v237[2] = v117;
    v237[3] = v118;
    v237[0] = v115;
    v237[1] = v116;
    v121 = v120 * *(v237 + v119);
    v236[2] = v117;
    v236[3] = v118;
    v236[0] = v115;
    v236[1] = v116;
    v122 = v121 + v104 * *(v236 + v93);
    v235[2] = v117;
    v235[3] = v118;
    v235[0] = v115;
    v235[1] = v116;
    v123 = v122 + v108 * *(v235 + v105);
    v234[2] = v117;
    v234[3] = v118;
    v234[0] = v115;
    v234[1] = v116;
    v124 = v123 + v112 * *(v234 + v110);
    v261 = v107;
    v262 = v109;
    v263 = v113;
    v260 = v92;
    v259 = v124;
    v258[2] = v107;
    v258[3] = v109;
    v258[4] = v113;
    v258[1] = v92;
    v258[0] = v124;
  }

  (*(*v56 + 32))(v56, &v264, 1, v202, v24, 1);
  if (v224 >= DimensionSize)
  {
    v129 = DimensionSize;
  }

  else
  {
    v129 = v224;
  }

  v134.i64[1] = 0x100000001;
  v130.i32[0] = 1;
  v130.i32[1] = v125;
  v130.i64[1] = v126 | 0x100000000;
  v131 = v266;
  v127.i32[0] = 5;
  v128.i32[0] = v266;
  v132 = vdupq_lane_s32(*&vcgtq_u32(v127, v128), 0);
  v128.i32[0] = 1;
  v128.i32[1] = v125;
  v128.i32[2] = 0;
  v133 = vbslq_s8(v132, v128, v130);
  v134.i64[0] = v133.i64[0];
  if ((v206 & (v133.i32[2] == 0)) != 0)
  {
    v135 = -1;
  }

  else
  {
    v135 = 0;
  }

  v136 = vbslq_s8(vdupq_n_s32(v135), v134, v133);
  v137.i64[1] = 0x200000002;
  v137.i64[0] = v136.i64[0];
  if ((BYTE4(v206) & (v136.i32[2] < 2)) != 0)
  {
    v138 = -1;
  }

  else
  {
    v138 = 0;
  }

  v139 = vbslq_s8(vdupq_n_s32(v138), v137, v136);
  v140 = v139;
  v140.i32[3] = v136.i32[3];
  if (v24 == 4 && v205 == 1)
  {
    v141 = v204;
    v142 = v229;
    if ((v139.i8[4] & 1) == 0)
    {
      goto LABEL_115;
    }

    v143 = v139.i32[1] + 1;
  }

  else
  {
    v141 = v204;
    v142 = v229;
    if (v24 != 2 || v205 != 1 || (v139.i8[4] & 3) == 0)
    {
      goto LABEL_115;
    }

    v143 = (v139.i32[1] + 3) & 0xFFFFFFFC;
  }

  v136.i64[0] = __PAIR64__(v143, v139.u32[0]);
  v136.i64[1] = __PAIR64__(v136.u32[3], v139.u32[2]);
  v140 = v136;
LABEL_115:
  v233 = v142;
  *(&v233 & 0xFFFFFFFFFFFFFFF3 | (4 * (v72 & 3))) = 1;
  if (v140.i32[1])
  {
    v232 = v233;
    v144 = (*(&v232 | (4 * v74)) + v140.u32[1] - 1) / v140.u32[1];
  }

  else
  {
    LODWORD(v144) = 0;
  }

  v231 = v233;
  *(&v231 & 0xFFFFFFFFFFFFFFF3 | (4 * (v74 & 3))) = v144;
  if (v221 <= 1)
  {
    v145 = v24;
    if (DWORD2(v265) < 2)
    {
      v146 = 0x10000000;
      v230 = 1;
    }

    else
    {
      v230 = v268 % v140.i32[1] == 0;
      v146 = v230 << 28;
    }
  }

  else
  {
    v145 = v24;
    v230 = 0;
    v146 = 0;
  }

  v147 = v202 >> 3;
  v149 = v147 < 2 && v129 > 4;
  v151 = v147 > 1 && v129 > 1 || v149;
  if (v131 < 1024 << v140.i8[8])
  {
    v152 = 1;
  }

  else
  {
    v152 = v151;
  }

  v153 = v131 & ~(-1 << v140.i8[8]);
  if (v214 % v140.i32[0] || (v154 = v219 % v140.i32[1]) != 0)
  {
    v216 = 0;
    v154 = 0x800000;
  }

  else
  {
    v216 = 1;
  }

  v225 = v231;
  v155 = ((v140.i16[0] << 11) + 14336) & 0x3800;
  v156 = ((v140.i32[1] << 14) + 114688) & 0x1C000;
  v157 = vandq_s8(vshlq_u32(vtrn2q_s32(v141, vuzp1q_s32(v141, v140)), xmmword_239B0A330), xmmword_239B0A340);
  v158 = (v153 != 0) << 24;
  if (v152)
  {
    v159 = 0;
  }

  else
  {
    v159 = 0x2000000;
  }

  if (v145 == 4)
  {
    v160 = 1140850688;
  }

  else
  {
    v160 = 0x4000000;
  }

  v161 = vorr_s8(*v157.i8, *&vextq_s8(v157, v157, 8uLL));
  v162 = -1;
  v252[4] = -1;
  v252[3] = -1;
  v253 = 0u;
  v254 = 0u;
  v252[5] = v161.i32[0] | v161.i32[1] | (v205 << 19) | v155 & 0xFFFFFFFC | v58 & 3 | v156 | v160 | ((v212 > 1) << 9) | ((v219 > 1) << 8) | v158 | ((v210 > 1) << 10) | v159 | v154 | v146;
  v255 = 0;
  v256 = [*(v4 + 16) count] | ((*(v4 + 112) != 0) << 8) | 0x10000;
  v257 = 0;
  v163 = 2;
  if (v223)
  {
    v163 = 3;
  }

  v164 = (&CommonKernels)[16 * v163];
  v195 = *(v207 + *MEMORY[0x277CD7360]);
  v197 = *(v207 + *MEMORY[0x277CD7368]);
  v193 = *(v4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v165 = MEMORY[0x277CD7370];
  v166 = *(v207 + *MEMORY[0x277CD7370]);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    v168 = PipelineStateForMPSKey;
    v169 = v165;
    v170 = v4;
    [a2 setComputePipelineState:{PipelineStateForMPSKey, v193, v195, v197, 0, 0}];
    v171 = *(v207 + *v169);
    MPSLibrary::ReleaseMPSKey();
    v172 = [v168 threadExecutionWidth];
    if (v172 <= 1)
    {
      v173 = 1;
    }

    else
    {
      v173 = v172;
    }

    v174 = [v168 maxTotalThreadsPerThreadgroup];
    v175 = 256;
    if (v174 < 0x100)
    {
      v175 = v174;
    }

    if (v175 <= 2 * v173)
    {
      v177 = v225;
      if (v223)
      {
        v176 = 1;
        v178 = (v173 + v214 - 1) / v173;
        goto LABEL_161;
      }

      v176 = 1;
    }

    else
    {
      v176 = v175 / v173;
      v177 = v225;
      if (v223)
      {
        v178 = (v173 + v214 - 1) / v173;
        if (v173 > v175)
        {
          v179 = 0;
          v176 = 0;
          v180 = v212;
          v181 = v210;
LABEL_181:
          v185 = v180 * v181;
          [v208 setBytes:v258 length:120 atIndex:{28, *&v177}];
          [v208 setBuffer:objc_msgSend(v37 offset:"buffer") atIndex:{*(*(v170 + 8) + 80 * v200 + 64), 27}];
          if (v230)
          {
            v186 = (4 * v220 + 15) & 0xFFFFFFFFFFFFFFF0;
          }

          else
          {
            v186 = 0;
          }

          [v208 setThreadgroupMemoryLength:v186 atIndex:0];
          MPSSetNDArraysOnComputeEncoder(v208, v170, 4, 1, v223);
          [v208 setBytes:&v264 length:128 atIndex:29];
          v252[0] = v178;
          v252[1] = v179;
          v252[2] = v185;
          v251[0] = v173;
          v251[1] = v176;
          v251[2] = 1;
          [v208 dispatchThreadgroups:v252 threadsPerThreadgroup:v251];
          MPSLibrary::ReleaseComputeState();
          return 0;
        }

LABEL_161:
        v181 = v210;
        v179 = (v176 + v219 - 1) / v176;
        v180 = v212;
        goto LABEL_181;
      }
    }

    if (v152)
    {
      v182 = SDWORD1(v177);
      if (v176 >= SDWORD1(v177))
      {
        v183 = SDWORD1(v177);
      }

      else
      {
        v183 = v176;
      }

      do
      {
        v176 = v183;
        if (v183 < 2)
        {
          break;
        }

        v183 *= 2;
      }

      while (v176 * v173 < v173);
      if (v216 && SDWORD1(v177) % v176)
      {
        v176 = 1;
      }

      v184 = v230;
      if (DWORD2(v265) <= 1)
      {
        v184 = 0;
      }

      if (v184 != 1)
      {
        v178 = v177;
        if (!v176)
        {
          v179 = 0;
LABEL_180:
          v180 = DWORD2(v177);
          v181 = HIDWORD(v177);
          goto LABEL_181;
        }

LABEL_179:
        v179 = (v182 + v176 - 1) / v176;
        goto LABEL_180;
      }
    }

    else
    {
      v173 *= 8;
      v182 = SDWORD1(v177);
    }

    v178 = v177;
    v176 = 1;
    goto LABEL_179;
  }

  return v162;
}