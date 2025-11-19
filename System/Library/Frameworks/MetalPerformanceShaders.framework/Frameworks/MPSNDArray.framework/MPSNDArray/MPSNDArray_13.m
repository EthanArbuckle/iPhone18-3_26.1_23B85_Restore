void sub_239AE281C(_Unwind_Exception *a1)
{
  if (STACK[0x6A0])
  {
    operator delete(STACK[0x6A0]);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  operator delete(v2);
  if (!v1)
  {
LABEL_5:
    MPSAutoCache::~MPSAutoCache(&STACK[0xADB8]);
    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(v1);
  goto LABEL_5;
}

uint64_t EncodeStencil(int32x4_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v101 = *(a1->i64 + *MEMORY[0x277CD7370]);
  v8 = a1[12].u64[0];
  v7 = a1[12].u64[1];
  v99 = a1[10];
  v100 = a1[11];
  v102 = a1[14];
  v103 = a1[15];
  v9 = a1[9].i32[1];
  v11 = a1[13].u64[0];
  v10 = a1[13].u64[1];
  v12 = a1[9].i32[0];
  v13 = a1[9].i32[2];
  v14 = [*(a4 + 232) graph];
  v15 = **(v14 + 56);
  if (*(*(v14 + 56) + 8) == v15)
  {
    goto LABEL_156;
  }

  v17 = *(*v15 + 8);
  v16 = *v17;
  v18 = *(v17 + 8) - *v17;
  if (!v18 || (v98 = v12, v18 <= 8))
  {
LABEL_155:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v19 = *v16;
  v97 = v16[1];
  v20 = [*(a4 + 232) graph];
  v21 = **(v20 + 56);
  if (*(*(v20 + 56) + 8) == v21)
  {
LABEL_156:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v23 = *(*v21 + 24);
  v22 = *v23;
  if (*(v23 + 8) == *v23)
  {
    goto LABEL_155;
  }

  v91 = v19;
  v92 = v11;
  v93 = v10;
  v94 = v8;
  v95 = a1;
  v96 = v7;
  v87 = a2;
  v24 = *v22;
  v25 = 0;
  if ([*(a4 + 16) count])
  {
    v26 = 0;
    v27 = 5;
    do
    {
      v29 = [objc_msgSend(*(a4 + 16) objectAtIndexedSubscript:{v26), "dataType"}];
      if (v29 > 285212703)
      {
        if (v29 <= 536870915)
        {
          if (v29 > 301989895)
          {
            if (v29 == 301989896)
            {
              v28 = 16;
            }

            else
            {
              if (v29 != 335544328)
              {
                goto LABEL_52;
              }

              v28 = 17;
            }
          }

          else if (v29 == 285212704)
          {
            v28 = 13;
          }

          else
          {
            if (v29 != 285212736)
            {
              goto LABEL_52;
            }

            v28 = 14;
          }
        }

        else if (v29 <= 536870927)
        {
          if (v29 == 536870916)
          {
            v28 = 0;
          }

          else
          {
            if (v29 != 536870920)
            {
LABEL_52:
              v28 = 18;
              goto LABEL_9;
            }

            v28 = 1;
          }
        }

        else
        {
          switch(v29)
          {
            case 536870928:
              v28 = 2;
              break;
            case 536870944:
              v28 = 3;
              break;
            case 536870976:
              v28 = 4;
              break;
            default:
              goto LABEL_52;
          }
        }
      }

      else if (v29 <= 31)
      {
        if (v29 > 7)
        {
          if (v29 == 8)
          {
            v28 = 6;
          }

          else
          {
            if (v29 != 16)
            {
              goto LABEL_52;
            }

            v28 = 7;
          }
        }

        else if (v29 == -1879048176)
        {
          v28 = 12;
        }

        else
        {
          if (v29 != 4)
          {
            goto LABEL_52;
          }

          v28 = 5;
        }
      }

      else if (v29 <= 268435463)
      {
        if (v29 == 32)
        {
          v28 = 8;
        }

        else
        {
          if (v29 != 64)
          {
            goto LABEL_52;
          }

          v28 = 9;
        }
      }

      else
      {
        switch(v29)
        {
          case 268435464:
            v28 = 15;
            break;
          case 268435472:
            v28 = 10;
            break;
          case 268435488:
            v28 = 11;
            break;
          default:
            goto LABEL_52;
        }
      }

LABEL_9:
      ++v26;
      v25 |= (v28 << v27);
      v27 += 5;
    }

    while (v26 < [*(a4 + 16) count]);
  }

  v30 = v24[2];
  if (v30 > 285212703)
  {
    v31 = v98;
    v32 = v97;
    if (v30 <= 536870915)
    {
      if (v30 > 301989895)
      {
        if (v30 == 301989896)
        {
          v33 = v24;
          v34 = 16;
          goto LABEL_97;
        }

        if (v30 == 335544328)
        {
          v33 = v24;
          v34 = 17;
          goto LABEL_97;
        }
      }

      else
      {
        if (v30 == 285212704)
        {
          v33 = v24;
          v34 = 13;
          goto LABEL_97;
        }

        if (v30 == 285212736)
        {
          v33 = v24;
          v34 = 14;
          goto LABEL_97;
        }
      }
    }

    else if (v30 <= 536870927)
    {
      if (v30 == 536870916)
      {
        v33 = v24;
        v34 = 0;
        goto LABEL_97;
      }

      if (v30 == 536870920)
      {
        v33 = v24;
        v34 = 1;
        goto LABEL_97;
      }
    }

    else
    {
      switch(v30)
      {
        case 536870928:
          v33 = v24;
          v34 = 2;
          goto LABEL_97;
        case 536870944:
          v33 = v24;
          v34 = 3;
          goto LABEL_97;
        case 536870976:
          v33 = v24;
          v34 = 4;
          goto LABEL_97;
      }
    }
  }

  else
  {
    v31 = v98;
    v32 = v97;
    if (v30 <= 31)
    {
      if (v30 > 7)
      {
        if (v30 == 8)
        {
          v33 = v24;
          v34 = 6;
          goto LABEL_97;
        }

        if (v30 == 16)
        {
          v33 = v24;
          v34 = 7;
          goto LABEL_97;
        }
      }

      else
      {
        if (v30 == -1879048176)
        {
          v33 = v24;
          v34 = 12;
          goto LABEL_97;
        }

        if (v30 == 4)
        {
          v33 = v24;
          v34 = 5;
          goto LABEL_97;
        }
      }
    }

    else if (v30 <= 268435463)
    {
      if (v30 == 32)
      {
        v33 = v24;
        v34 = 8;
        goto LABEL_97;
      }

      if (v30 == 64)
      {
        v33 = v24;
        v34 = 9;
        goto LABEL_97;
      }
    }

    else
    {
      switch(v30)
      {
        case 268435464:
          v33 = v24;
          v34 = 15;
          goto LABEL_97;
        case 268435472:
          v33 = v24;
          v34 = 10;
          goto LABEL_97;
        case 268435488:
          v33 = v24;
          v34 = 11;
          goto LABEL_97;
      }
    }
  }

  v33 = v24;
  v34 = 18;
LABEL_97:
  *&v35 = -1;
  *(&v35 + 1) = -1;
  v116 = v35;
  v117 = v35;
  v113 = -1;
  v115 = v35;
  v112 = v35;
  v114 = v34 | v25;
  *&v117 = [*(a4 + 16) count] | 0x10000;
  DimensionSize = BaseTensor::GetDimensionSize(v32);
  v37 = BaseTensor::GetDimensionSize(v32);
  v38 = BaseTensor::GetDimensionSize(v32);
  v39 = BaseTensor::GetDimensionSize(v32);
  v40 = v39;
  v89 = DimensionSize;
  v48 = v39 < 9 && v93 < 5 && v38 < 9 && v92 < 5 && v37 < 9 && v96 < 5 && DimensionSize < 9 && v94 < 5;
  LODWORD(v49) = ((v96 << 18) + 786432) & 0xC0000 | ((v94 << 16) + 196608) & 0x30000 | ((v92 << 20) + 3145728) & 0x300000 | ((v93 << 22) + 12582912) & 0xC00000 | (2 * (v9 & 7)) | ((v31 & 0xF) << 24) | (16 * DimensionSize + 112) & 0x70 | ((v37 << 7) + 896) & 0x380 | ((v38 << 10) + 7168) & 0x1C00 | ((v39 << 13) - 0x2000) & 0xE000 | v48;
  if (v103.i64[1] > 1uLL || v103.i64[0] > 1uLL || v102.i64[1] > 1uLL || v102.i64[0] > 1uLL)
  {
    v49 = v49 | 0x10000000;
  }

  else
  {
    v49 = v49;
  }

  v113 = v49;
  v53 = v33;
  v54 = BaseTensor::GetDimensionSize(v33);
  v55 = BaseTensor::GetDimensionSize(v33);
  v56 = BaseTensor::GetDimensionSize(v53);
  v57 = BaseTensor::GetDimensionSize(v53);
  v85 = v54;
  v86 = v55;
  *&v58 = __PAIR64__(v55, v54);
  v88 = v56;
  *(&v58 + 1) = __PAIR64__(v57, v56);
  v90 = v58;
  v59 = BaseTensor::GetDimensionSize(v91);
  v60 = BaseTensor::GetDimensionSize(v91);
  v61 = BaseTensor::GetDimensionSize(v91);
  v62 = BaseTensor::GetDimensionSize(v91);
  *&v63 = __PAIR64__(v60, v59);
  *(&v63 + 1) = __PAIR64__(v62, v61);
  v106[0] = v63;
  v106[1] = v90;
  memset(&v106[2], 0, 32);
  v106[4] = vuzp1q_s32(v99, v100);
  *&v64 = __PAIR64__(v37, v89);
  *(&v64 + 1) = __PAIR64__(v40, v38);
  *&v65 = __PAIR64__(v96, v94);
  v106[5] = v64;
  *(&v65 + 1) = __PAIR64__(v93, v92);
  v106[6] = v65;
  v106[7] = vuzp1q_s32(v102, v103);
  v107 = v13;
  v108 = 0;
  v110 = 0;
  v109 = 0;
  v111 = 0;
  v83 = *(v95->i64 + *MEMORY[0x277CD7360]);
  v84 = *(v95->i64 + *MEMORY[0x277CD7368]);
  v82 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v66 = MEMORY[0x277CD7370];
  v67 = *(v95->i64 + *MEMORY[0x277CD7370]);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v69 = PipelineStateForMPSKey;
  [v87 setComputePipelineState:{PipelineStateForMPSKey, v82, v83, v84, 0, 0}];
  v70 = *(v95->i64 + *v66);
  MPSLibrary::ReleaseMPSKey();
  v71 = [v69 threadExecutionWidth];
  if (v71 <= 1)
  {
    v72 = 1;
  }

  else
  {
    v72 = v71;
  }

  if (v72 > v85 || v85 <= 3 && v72 > v86)
  {
    if (v71 <= 1)
    {
      v72 = 1;
    }

    else
    {
      v72 >>= 1;
    }
  }

  v73 = [v69 maxTotalThreadsPerThreadgroup];
  v74 = 256;
  if (v73 < 0x100)
  {
    v74 = v73;
  }

  if (v74 <= 2 * v72)
  {
    v75 = 1;
    v76 = v86;
    if (v72 <= v85)
    {
      goto LABEL_147;
    }

LABEL_150:
    v77 = v88;
    if (v72 <= v76 || v72 <= v88)
    {
      v78 = v75;
      v75 = v72;
      v72 = 1;
    }

    else
    {
      v78 = 1;
    }

    goto LABEL_154;
  }

  v75 = v74 / v72;
  v76 = v86;
  if (v72 > v85)
  {
    goto LABEL_150;
  }

LABEL_147:
  v77 = v88;
  v78 = 1;
LABEL_154:
  v80 = (v76 + v75 - 1) / v75;
  v81 = (v77 + v78 - 1) / v78;
  MPSSetNDArraysOnComputeEncoder(v87, a4, 4, 0, 0);
  [v87 setBytes:v106 length:160 atIndex:29];
  v105[0] = (v85 + v72 - 1) / v72;
  v105[1] = v80;
  v105[2] = v81;
  v104[0] = v72;
  v104[1] = v75;
  v104[2] = v78;
  [v87 dispatchThreadgroups:v105 threadsPerThreadgroup:v104];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodePooling(uint64_t a1, void *a2, uint64_t a3, id *a4)
{
  v4 = a1;
  v5 = *(a1 + *MEMORY[0x277CD7350]);
  v6 = *(a1 + 696);
  v300 = *(a1 + 680);
  v301 = v6;
  v7 = *(a1 + 760);
  v298 = *(a1 + 744);
  v299 = v7;
  v8 = *(a1 + 728);
  v296 = *(a1 + 712);
  v297 = v8;
  v9 = *(a1 + 792);
  v10 = *(a1 + 668);
  v11 = *(a1 + 672);
  v294 = *(a1 + 776);
  v295 = v9;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 0x10) != 0 && [a4[2] count])
  {
    v288 = v5;
    v12 = [a4[2] objectAtIndexedSubscript:0];
    v13 = a4[26];
    if ((v10 - 1) > 4)
    {
      v14 = "Default";
    }

    else
    {
      v14 = off_278B0E788[v10 - 1];
    }

    v15 = *MEMORY[0x277CD73D0];
    v16 = (v12 + v15);
    v17 = MEMORY[0x277CD73C8];
    v18 = &v13[v15];
    v282 = v16[3];
    v279 = v16[2];
    v273 = *v16;
    v276 = v16[1];
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    v22 = *v18;
    v21 = *(v18 + 1);
    v23 = dataTypeToString(*(v12 + *MEMORY[0x277CD73C8]));
    v24 = dataTypeToString(*&v13[*v17]);
    v4 = a1;
    MPSKernel_LogInfo(a1, 3uLL, "-test MPSNDArrayPoolingTest -srcShapes [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u] -srcDataTypes %s -dstDataTypes %s -strides [%u,%u,%u,%u] -kernelPooling [%u,%u,%u,%u] -dilation [%u,%u,%u,%u] -poolingMode %s\n", v282, v279, v276, v273, v19, v20, v21, v22, v23, v24, DWORD2(v299), v299, DWORD2(v298), v298, DWORD2(v301), v301, DWORD2(v300), v300, DWORD2(v295), v295, DWORD2(v294), v294, v14);
    v5 = v288;
  }

  if (v11 && v10 != 1 && v10 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  MEMORY[0x23EE7C450](v293, a3, 0);
  v25 = [a4[29] graph];
  v26 = **(v25 + 56);
  if (*(*(v25 + 56) + 8) == v26)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v28 = *(*v26 + 8);
  v27 = *v28;
  if (*(v28 + 8) == *v28)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v29 = *v27;
  v30 = [a4[29] graph];
  v31 = **(v30 + 56);
  if (*(*(v30 + 56) + 8) == v31)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = *(*v31 + 24);
  v32 = *v33;
  if (*(v33 + 8) == *v33)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = *v32;
  v270 = *(v29 + 2);
  DimensionSize = BaseTensor::GetDimensionSize(*v32);
  v36 = BaseTensor::GetDimensionSize(v34);
  v37 = BaseTensor::GetDimensionSize(v34);
  v38 = BaseTensor::GetDimensionSize(v34);
  if (*(v4 + 664) == 1)
  {
    v39 = *(a4[26] + *MEMORY[0x277CD73D0]);
  }

  else
  {
    v39.i64[0] = __PAIR64__(v36, DimensionSize);
    v39.i64[1] = __PAIR64__(v38, v37);
  }

  v266 = v39;
  v40 = BaseTensor::GetDimensionSize(v29);
  v41 = BaseTensor::GetDimensionSize(v29);
  v42 = BaseTensor::GetDimensionSize(v29);
  v43 = BaseTensor::GetDimensionSize(v29);
  v44 = v299;
  v45 = *(v5 + 1482) << 16;
  v46 = 1;
  if (*(&v299 + 1) <= 0x10uLL)
  {
    v47 = 1;
  }

  else
  {
    v47 = 2;
  }

  if (v45 <= 0x200000)
  {
    v48 = v47;
  }

  else
  {
    v48 = v47 + 1;
  }

  if (v299 <= 0x10)
  {
    v49 = 1;
  }

  else
  {
    v49 = 2;
  }

  if (v45 <= 0x200000)
  {
    v50 = v49;
  }

  else
  {
    v50 = v49 + 1;
  }

  v51 = *(&v298 + 1);
  v52 = v298;
  if (*(&v298 + 1) <= 0x10uLL)
  {
    v53 = 1;
  }

  else
  {
    v53 = 2;
  }

  if (v45 <= 0x200000)
  {
    v54 = v53;
  }

  else
  {
    v54 = v53 + 1;
  }

  if (v298 > 0x10)
  {
    v46 = 2;
  }

  v56 = *(&v300 + 1);
  v55 = v300;
  v57 = *(&v301 + 1);
  v58 = v301;
  v59 = *(&v296 + 1);
  v60 = v296;
  v62 = DWORD2(v297);
  v61 = v297;
  v269 = *(&v294 + 1);
  v274 = v294;
  v258 = *(&v295 + 1);
  v259 = v295;
  if (v45 <= 0x200000)
  {
    v63 = v46;
  }

  else
  {
    v63 = v46 + 1;
  }

  v64 = v298 << v63;
  _CF = v300 > 8 && v300 >= v64;
  v66 = _CF;
  v68 = *(&v300 + 1) > 8uLL && *(&v300 + 1) >= *(&v298 + 1) << v54;
  v70 = v301 > 8 && v301 >= v299 << v50;
  v277 = *(&v299 + 1);
  v72 = *(&v301 + 1) > 8uLL && *(&v301 + 1) >= *(&v299 + 1) << v48;
  v73.i64[0] = __PAIR64__(v41, v40);
  v73.i64[1] = __PAIR64__(v43, v42);
  v283 = v73;
  v74 = *(a1 + 672);
  if (!v74)
  {
    TempBuffer = 0;
    if (*(a1 + 668) == 5 || !((*(&v300 + 1) * v300 * v301 * *(&v301 + 1) > 0xFFuLL) | ((v72 || v70) | v68 | v66) & 1))
    {
      v254 = DWORD2(v297);
      v255 = v297;
      v256 = v296;
      v261 = *(&v300 + 1);
      v262 = v300;
      v263 = v298;
      v264 = v299;
      v268 = *(&v298 + 1);
      v289 = v266;
      v265 = 0;
      v272 = 0;
      goto LABEL_116;
    }

    if (v66)
    {
      v60 = 0;
      v76 = 0;
      v77 = v266;
      v77.i32[0] = v40;
      v289 = v77;
      v55 = 1;
      v52 = 1;
      v274 = 1;
      v265 = 1;
      if (!v68)
      {
LABEL_72:
        if (*(&v300 + 1) <= 1uLL && !*(&v296 + 1) && *(&v298 + 1) == 1 && v266.i32[1] == v41)
        {
          v59 = 0;
          v51 = 1;
          v272 = v265;
          if (v70)
          {
            goto LABEL_94;
          }

LABEL_85:
          if (v301 > 1 || v297 || v299 != 1 || v266.i32[2] != v42)
          {
            if (v72)
            {
              v255 = v297;
              LODWORD(v256) = v60;
              DWORD2(v256) = v59;
              v261 = v56;
              v262 = v55;
              v263 = v52;
              v264 = v299;
              v268 = v51;
              v62 = 0;
              v272 |= 8u;
              ++v265;
              v78 = v289;
              v78.i32[3] = v43;
              v289 = v78;
LABEL_98:
              v277 = 1;
              v57 = 1;
              v258 = 1;
LABEL_115:
              TempBuffer = MPSAutoCache::GetTempBuffer(v293, 4 * (v289.i32[0] * v289.i32[1] * v289.i32[2] * v289.i32[3]), 0);
              v254 = v62;
              v74 = *(a1 + 672);
              goto LABEL_116;
            }

            v76 = 1;
            if (*(&v301 + 1) > 1uLL)
            {
              goto LABEL_114;
            }

            goto LABEL_102;
          }

LABEL_95:
          if (v72)
          {
            v272 |= 8u;
            ++v265;
            v81 = v289;
            v81.i32[3] = v43;
            v289 = v81;
            if (v76)
            {
              LODWORD(v256) = v60;
              DWORD2(v256) = v59;
              v261 = v56;
              v262 = v55;
              v268 = v51;
              v255 = 0;
              v62 = 0;
              v263 = v52;
              v264 = 1;
              goto LABEL_98;
            }

LABEL_336:
            v151 = 0;
            TempBuffer = 0;
            if (!v272)
            {
              goto LABEL_487;
            }

            goto LABEL_415;
          }

          v61 = 0;
          v44 = 1;
          if (*(&v301 + 1) > 1uLL)
          {
LABEL_114:
            LODWORD(v256) = v60;
            DWORD2(v256) = v59;
            v263 = v52;
            v264 = v44;
            v268 = v51;
            v261 = v56;
            v262 = v55;
            v255 = v61;
            if (!v272)
            {
              v254 = v62;
              v74 = 0;
              v272 = 0;
              TempBuffer = 0;
              goto LABEL_116;
            }

            goto LABEL_115;
          }

LABEL_102:
          if (!*(&v297 + 1))
          {
            v82 = *(&v299 + 1);
            _ZF = *(&v299 + 1) == 1 && v266.i32[3] == v43;
            if (_ZF)
            {
              v84 = v76;
            }

            else
            {
              v84 = 1;
            }

            if (_ZF)
            {
              v82 = 1;
            }

            v277 = v82;
            if ((v84 & 1) == 0)
            {
              goto LABEL_336;
            }

            v62 = 0;
          }

          goto LABEL_114;
        }

        v76 = 1;
        v272 = v265;
        if (!v70)
        {
          goto LABEL_85;
        }

LABEL_94:
        v272 |= 4u;
        ++v265;
        v80 = v289;
        v80.i32[2] = v42;
        v289 = v80;
        v58 = 1;
        v259 = 1;
        goto LABEL_95;
      }
    }

    else
    {
      if (v300 <= 1 && !v296 && v298 == 1 && v266.i32[0] == v40)
      {
        v60 = 0;
        v76 = 0;
        v265 = 0;
        v52 = 1;
      }

      else
      {
        v265 = 0;
        v76 = 1;
      }

      v289 = v266;
      if (!v68)
      {
        goto LABEL_72;
      }
    }

    v59 = 0;
    v272 = v265++ | 2;
    v79 = v289;
    v79.i32[1] = v41;
    v289 = v79;
    v51 = 1;
    v56 = 1;
    v269 = 1;
    if (!v70)
    {
      goto LABEL_85;
    }

    goto LABEL_94;
  }

  v254 = DWORD2(v297);
  v255 = v297;
  v256 = v296;
  v261 = *(&v300 + 1);
  v262 = v300;
  v263 = v298;
  v264 = v299;
  v268 = *(&v298 + 1);
  v265 = 0;
  v272 = 0;
  TempBuffer = 0;
  v289 = v266;
LABEL_116:
  v257 = *(a1 + *MEMORY[0x277CD7350]);
  v260 = *(a1 + *MEMORY[0x277CD7370]);
  v85 = *(a1 + 668);
  v86 = *(a1 + 676);
  *&v87 = -1;
  *(&v87 + 1) = -1;
  v323 = v87;
  v324 = v87;
  v321 = 0xFFFFFFFFFFFFFFFFLL;
  v322 = v87;
  v320 = v87;
  *&v324 = [a4[2] count] | 0x10000;
  v88 = v274 > 1;
  if (v274 < 2)
  {
    v89 = v268;
    v88 = v269 > 1;
    v90 = v264;
    v92 = v261;
    v91 = v262;
    if (v269 <= 1)
    {
      v88 = v259 > 1 || v258 > 1;
    }
  }

  else
  {
    v89 = v268;
    v90 = v264;
    v92 = v261;
    v91 = v262;
  }

  if ((v263 < 2 || v91 >= 5 || (v289.i32[0] <= 0xFu ? (v94 = v91 >= 3) : (v94 = 0), v94)) && (v89 < 2 || v92 > 4 || (v289.i32[1] <= 0xFu ? (v95 = v92 >= 3) : (v95 = 0), v95)) && (v58 < 5 ? (v96 = v90 > 1) : (v96 = 0), !v96 && v57 < 2))
  {
    v97 = v41;
    v98 = v40;
    v99 = !v88;
  }

  else
  {
    v97 = v41;
    v98 = v40;
    v99 = 0;
  }

  v102 = v263 < 3 && v89 < 3 && v90 < 3;
  v103 = v102 & v99;
  v104 = v92 * v91;
  v105 = v92 * v91 * v58;
  v106 = v289.u32[0];
  v280 = v289.u32[1];
  v107 = v289.i32[0] * v289.i32[1];
  v108 = v289.i32[0] * v289.i32[1] * v289.i32[2];
  if ((v108 * v289.i32[3]) <= 0x1F || v263 * v89 * v90 * v105 >= 0xD9)
  {
    v103 = 0;
  }

  v111 = v263 * v89 > 0xF || v107 < 4;
  v112 = v104 >= 0x40 && v111;
  if (v104 >= 0x40)
  {
    v103 &= !v111;
  }

  v114 = v289.i32[2] < 8u || v107 > 0x7FF;
  v122 = v57 < 9 && v277 < 5 && v58 < 9 && v90 < 5 && v92 < 9 && v89 < 5 && v91 < 9 && v263 < 5;
  v252 = v58 - 1;
  v123 = v58 == 1;
  if (v88)
  {
    v124 = 0x2000000;
  }

  else
  {
    v124 = 0;
  }

  v253 = v114 && v123;
  if (v114 && v123)
  {
    v125 = 0x4000000;
  }

  else
  {
    v125 = 0;
  }

  v323 = 0uLL;
  v126 = 1.0;
  *&v321 = v122 | ((v277 << 22) + 12582912) & 0xC00000 | (16 * v91 + 112) & 0x70 | ((v90 << 20) + 3145728) & 0x300000 | ((v89 << 18) + 786432) & 0xC0000 | ((v263 << 16) + 196608) & 0x30000 | ((v92 << 7) + 896) & 0x380 | ((v58 << 10) + 7168) & 0x1C00 | ((v57 << 13) - 0x2000) & 0xE000 | ((v270 == 268435472) << 27) | (v74 << 28) | v125 & 0xFFFFFFF1 | (2 * (v85 & 7)) | (((v86 & 0xDFFFFFFF) == 32) << 24) | v124;
  if ((v85 & 0xFFFFFFFE) == 2)
  {
    v126 = 1.0 / (v57 * v105);
  }

  LODWORD(v127) = 1;
  LODWORD(v128) = 1;
  DWORD1(v128) = v98;
  DWORD2(v128) = v97 * v98;
  HIDWORD(v128) = v42 * v97 * v98;
  DWORD1(v127) = v289.i32[0];
  *(&v127 + 1) = __PAIR64__(v108, v107);
  *&v129 = __PAIR64__(DWORD2(v256), v256);
  *(&v129 + 1) = __PAIR64__(v254, v255);
  *&v130 = __PAIR64__(v92, v91);
  *(&v130 + 1) = __PAIR64__(v57, v58);
  v310 = v128;
  v311 = v127;
  *&v127 = __PAIR64__(v89, v263);
  *(&v127 + 1) = __PAIR64__(v277, v90);
  *&v128 = __PAIR64__(v269, v274);
  v312 = v129;
  v313 = v130;
  *(&v128 + 1) = __PAIR64__(v258, v259);
  v308 = v283;
  v309 = v289;
  v314 = v127;
  v315 = v128;
  v316 = v126;
  v317 = 0;
  v318 = 0uLL;
  v319 = 0;
  if (*(a1 + 664) == 1)
  {
    v131 = a4[26];
    v132 = *&v131[*MEMORY[0x277CD7400]];
    v133 = *&v131[*MEMORY[0x277CD7410]];
    v134 = *&v131[*MEMORY[0x277CD73C8]] >> 3;
    if (v132 != v134 * v133)
    {
      LODWORD(v135) = 1;
      DWORD1(v135) = v132 / v134;
      DWORD2(v135) = v132 / v134 * v289.i32[1];
      HIDWORD(v135) = DWORD2(v135) * v289.i32[2];
      v311 = v135;
    }
  }

  v136 = v122 & v103;
  if (v74)
  {
    v137 = v289.u32[2];
    v138 = 0;
    v139 = 0;
    v136 = (*(v257 + 1472) < 24) & v136;
  }

  else
  {
    v138 = v112;
    v137 = v289.u32[2];
    if (v112)
    {
      v139 = 2;
    }

    else
    {
      v139 = 0;
    }
  }

  if (v136)
  {
    v139 = 1;
  }

  if (TempBuffer)
  {
    v139 += 3;
  }

  v140 = (&CommonKernels)[16 * v139];
  v250 = 0;
  v251 = 0;
  v248 = *(a1 + *MEMORY[0x277CD7360]);
  v249 = *(a1 + *MEMORY[0x277CD7368]);
  v247 = a4[29];
  MPSLibrary::CreateUberShaderKey();
  v141 = *(a1 + *MEMORY[0x277CD7370]);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    [a2 setComputePipelineState:{v247, v248, v249, 0, 0}];
    v142 = *(a1 + *MEMORY[0x277CD7370]);
    MPSLibrary::ReleaseMPSKey();
    v143 = [PipelineStateForMPSKey threadExecutionWidth];
    v144 = v143;
    if (v143 <= 1)
    {
      v145 = 1;
    }

    else
    {
      v145 = v143;
    }

    if (v145 >= 0x20)
    {
      v146 = 32;
    }

    else
    {
      v146 = v145;
    }

    if (v146 > v289.u32[0] || (v147 = v146, v289.i32[0] <= 3u) && (v147 = v146, v146 > v289.u32[1]))
    {
      if (v143 <= 1)
      {
        v147 = 1;
      }

      else
      {
        v147 = v146 >> 1;
      }
    }

    v148 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
    v149 = 256;
    if (v148 < 0x100)
    {
      v149 = v148;
    }

    if (v149 <= 2 * v147)
    {
      v150 = 1;
    }

    else
    {
      v150 = v149 / v147;
    }

    v152 = v137;
    v153 = 4 * v146;
    v155 = v146 > (2 * v289.i32[0]) || v153 < v289.u32[0] || v153 > v149;
    if (!v155 && v289.u8[0] % v146)
    {
      v150 = 4;
      v147 = v289.u32[0];
    }

    if (v147 <= v289.u32[0] || (v147 > v289.u32[1] ? (v156 = v147 > v137) : (v156 = 0), v156))
    {
      v161 = v289.u32[1];
      if (v289.u32[1] <= 1uLL)
      {
        v161 = 1;
      }

      if (v150 <= v161)
      {
        v158 = v150;
      }

      else
      {
        v158 = v150;
        do
        {
          if (v158 * v147 < 2 * v146)
          {
            break;
          }

          v158 >>= 1;
        }

        while (v158 > v161);
      }

      if (v289.u32[0] <= 1uLL)
      {
        v162 = 1;
      }

      else
      {
        v162 = v289.u32[0];
      }

      for (; v147 > v162; v147 >>= 1)
      {
        if (v147 * v158 < 2 * v146)
        {
          break;
        }
      }

      if (v289.i32[1] <= 0xFu && v289.u32[1] % v158 && v147 * v289.u32[1] <= v149)
      {
        v158 = v289.u32[1];
      }

      v150 = 1;
      if (!v136)
      {
        goto LABEL_259;
      }
    }

    else
    {
      v157 = 2 * v146;
      if (v137 > 2 * v146)
      {
        v157 = v137;
      }

      do
      {
        v158 = v147;
        v147 >>= 1;
      }

      while (v158 >= v157);
      v147 = 1;
      if (!v136)
      {
LABEL_259:
        if (!v138)
        {
          v166 = ((v152 * v289.i32[3]) + v150 - 1) / v150;
          v280 = (v289.u32[1] + v158 - 1) / v158;
          v106 = (v289.u32[0] + v147 - 1) / v147;
          goto LABEL_410;
        }

        if (v262 >= v146)
        {
          v159 = v146;
        }

        else
        {
          v159 = v262;
        }

        if (v149 <= 2 * v159)
        {
          v160 = 1;
        }

        else
        {
          v160 = v149 / v159;
        }

        v172 = v261 >> 2;
        if (v261 >> 2 <= 1)
        {
          v172 = 1;
        }

        if (v261 < v160)
        {
          v160 = v172;
        }

        v173 = v160 * 2 * v159 > v149 || v253;
        v174 = 1;
        if (!v173)
        {
          v174 = 2;
        }

        v175 = 32000;
        if (*(v257 + 1472) < 7)
        {
          v175 = 16000;
        }

        if (v262 < 0x11)
        {
          v158 = 1;
        }

        else
        {
          v158 = v160;
        }

        if (v262 >= 0x11)
        {
          v147 = v159;
        }

        else
        {
          v147 = v262;
        }

        if (v262 < 0x11)
        {
          v174 = 16;
        }

        v176 = v158 * v147;
        v177 = !v173;
        if (v262 < 0x11)
        {
          v177 = 4;
        }

        v178 = (4 * (v176 << v177) + 15) & 0xFFFFFFFFFFFFFFF0;
        if (v178 <= v175)
        {
          v179 = v289.u32[3];
        }

        else
        {
          v179 = v289.u32[3];
          if (v174 < 2)
          {
            v174 = 1;
          }

          else
          {
            v174 >>= (v158 << v177) * v147 >= 2 * v146;
          }

          if (v158 >= 2)
          {
            if (v174 * v176 >= 2 * v146)
            {
              v158 >>= 1;
            }

            else
            {
              v158 = v160;
            }
          }

          if (v147 >= 2)
          {
            v147 >>= v174 * v147 * v158 >= 2 * v146;
          }
        }

        if (v253)
        {
          v150 = 1;
        }

        else
        {
          v150 = v174;
        }

        v199 = (v150 + v152 - 1) / v150;
        v166 = v199 * v179;
        HIDWORD(v318) = v199;
        *&v200 = 1.0 / v199;
        v319 = v200;
LABEL_409:
        [a2 setThreadgroupMemoryLength:v178 atIndex:0];
LABEL_410:
        MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
        [a2 setBytes:&v308 length:160 atIndex:29];
        if (*(a1 + 664) == 1)
        {
          [a2 setBuffer:objc_msgSend(a4[26] offset:"buffer") atIndex:{0, 28}];
        }

        if (TempBuffer)
        {
          [a2 setBuffer:TempBuffer offset:0 atIndex:27];
        }

        v305 = v106;
        v306 = v280;
        v307 = v166;
        v302 = v147;
        v303 = v158;
        v304 = v150;
        [a2 dispatchThreadgroups:&v305 threadsPerThreadgroup:&v302];
        MPSLibrary::ReleaseComputeState();
        v151 = 0;
        v283 = v289;
        if (!v272)
        {
          goto LABEL_487;
        }

        goto LABEL_415;
      }
    }

    if (v146 <= v289.u32[0] && (v289.i32[0] > 3u || v146 <= v289.u32[1]))
    {
      v164 = v146 >> 1;
      v165 = v146;
    }

    else
    {
      v164 = v146 >> 1;
      if (v144 <= 1)
      {
        v165 = 1;
      }

      else
      {
        v165 = v146 >> 1;
      }
    }

    if (v144 <= 1)
    {
      v164 = 1;
    }

    if (v289.i32[0] > 0x3Fu || v263 == 1)
    {
      v165 = v164;
    }

    if (v149 <= 2 * v165)
    {
      v168 = 1;
      if (v107 <= 0x7FF && !v253)
      {
LABEL_303:
        if (v107 > 0x18F)
        {
          v171 = 8;
          v168 = 4;
          v165 = 4;
          v170 = v252;
          if (v289.u32[0] >= 4uLL)
          {
            goto LABEL_344;
          }
        }

        else
        {
          v165 = (v289.u32[0] + 1) >> 1;
          v168 = (v289.u32[1] + 1) >> 1;
          v169 = v165 * v168;
          v170 = v252;
          if (v146 < 2 * v169 || v146 > v152)
          {
            _CF = v149 >= 8 * v169;
            v171 = 2;
            if (_CF)
            {
              v171 = 8;
            }

            if (v165 <= v289.u32[0])
            {
              goto LABEL_344;
            }
          }

          else
          {
            v171 = v146;
            if (v165 <= v289.u32[0])
            {
              goto LABEL_344;
            }
          }
        }

LABEL_342:
        v180 = 1;
        if (v165 <= v289.u32[1] || v165 <= v152)
        {
          v171 = v168;
          goto LABEL_352;
        }

LABEL_344:
        v182 = v262 > 1 && v165 > 0x1F;
        v180 = v165 >> v182;
        v165 = v168;
LABEL_352:
        v183 = v261 - 1;
        v185 = v261 > 1 && v165 > 0x1F;
        v186 = v165 >> v185;
        v187 = v186 > 1;
        if (v186 < v289.u32[1])
        {
          v158 = v186;
          v188 = v180 > 1;
          if (v180 < v289.u32[0])
          {
LABEL_374:
            v147 = v180;
LABEL_375:
            if (v253)
            {
              v189 = 1;
            }

            else
            {
              v189 = v171;
            }

            if (*(v257 + 1472) >= 7)
            {
              v190 = 32000;
            }

            else
            {
              v190 = 16000;
            }

            v191 = 1;
            if (v270 != 268435472)
            {
              v191 = 2;
            }

            if (((((((v183 + 2 * v268 * v158) * (v262 - 1 + 2 * v263 * v147)) * (v170 + v189 * v264)) << v191) + 15) & 0xFFFFFFFFFFFFFFF0) <= v190)
            {
              v192 = v289.u32[3];
            }

            else
            {
              v192 = v289.u32[3];
              if (v189 >= 2)
              {
                v189 >>= v158 * v189 * v147 >= 2 * v146;
              }

              if (v187)
              {
                v158 >>= v147 * v158 * v189 >= 2 * v146;
              }

              if (v188)
              {
                v147 >>= v189 * v147 * v158 >= 2 * v146;
              }
            }

            if (v253)
            {
              v150 = 1;
            }

            else
            {
              v150 = v189;
            }

            v106 = (v289.u32[0] + 2 * v147 - 1) / (2 * v147);
            v280 = (v289.u32[1] + 2 * v158 - 1) / (2 * v158);
            v193 = (v150 + v152 - 1) / v150;
            v166 = v193 * v192;
            v194.f32[0] = (v262 - 1 + 2 * v147 * v263);
            *&v317 = v194.f32[0];
            *(&v317 + 1) = (v183 + 2 * v158 * v268);
            *&v318 = (v170 + v150 * v264);
            v195 = *(&v317 + 1) * v194.f32[0];
            v194.f32[1] = *(&v317 + 1) * v194.f32[0];
            __asm { FMOV            V3.2S, #1.0 }

            *(&v318 + 4) = vdiv_f32(_D3, v194);
            HIDWORD(v318) = v193;
            v194.f32[0] = 1.0 / v193;
            v319 = v194.i32[0];
            v178 = (((v195 * *&v318) << v191) + 15) & 0xFFFFFFFFFFFFFFF0;
            goto LABEL_409;
          }
        }

        else if (v186 < 2)
        {
          v158 = v186;
LABEL_367:
          v188 = v180 > 1;
          if (v180 < v289.u32[0])
          {
            goto LABEL_374;
          }
        }

        else
        {
          while (v186 * v180 >= 2 * v146)
          {
            v158 = v186 >> 1;
            v187 = v186 > 3;
            if (v186 >= 4)
            {
              v186 >>= 1;
              if (v158 >= v289.u32[1])
              {
                continue;
              }
            }

            goto LABEL_367;
          }

          v187 = 1;
          v158 = v186;
          v188 = v180 > 1;
          if (v180 < v289.u32[0])
          {
            goto LABEL_374;
          }
        }

        if (v180 >= 2)
        {
          while (v180 * v158 >= 2 * v146)
          {
            v147 = v180 >> 1;
            v188 = v180 > 3;
            if (v180 >= 4)
            {
              v180 >>= 1;
              if (v147 >= v289.u32[0])
              {
                continue;
              }
            }

            goto LABEL_375;
          }

          v188 = 1;
        }

        goto LABEL_374;
      }
    }

    else
    {
      v168 = v149 / v165;
      if (v107 <= 0x7FF && !v253)
      {
        goto LABEL_303;
      }
    }

    v171 = 1;
    v170 = v252;
    if (v165 <= v289.u32[0])
    {
      goto LABEL_344;
    }

    goto LABEL_342;
  }

  v151 = -1;
  v283 = v289;
  if (!v272)
  {
    goto LABEL_487;
  }

LABEL_415:
  if (!v151)
  {
    v201 = 0;
    v202 = (v270 == 268435472) << 27;
    v281 = 1;
    while (1)
    {
      while (((v272 >> v201) & 1) == 0 || v151)
      {
        ++v201;
        v202 += 16;
        if (v201 == 4)
        {
          goto LABEL_487;
        }
      }

      v291 = v266;
      v203 = *(&v291 & 0xFFFFFFFFFFFFFFF3 | (4 * (v201 & 3)));
      v292 = v289;
      *(&v292 & 0xFFFFFFFFFFFFFFF3 | (4 * (v201 & 3))) = v203;
      v289 = v292;
      v278 = TempBuffer;
      v271 = v203;
      if (v281 >= v265)
      {
        v205 = 0;
      }

      else
      {
        v204 = vmul_s32(*v292.i8, *&vextq_s8(v292, v292, 8uLL));
        v205 = MPSAutoCache::GetTempBuffer(v293, 4 * (v204.i32[0] * v204.i32[1]), 0);
      }

      v206 = *(&v300 + v201);
      v207 = *(&v298 + v201);
      v208 = *(&v294 + v201);
      v209 = *(&v296 + v201);
      v210 = *(a1 + *MEMORY[0x277CD7350]);
      v275 = *(a1 + *MEMORY[0x277CD7370]);
      v211 = *(a1 + 668);
      *&v212 = -1;
      *(&v212 + 1) = -1;
      v323 = v212;
      v324 = v212;
      v321 = 0xFFFFFFFFFFFFFFFFLL;
      v322 = v212;
      v320 = v212;
      *&v324 = [a4[2] count] | 0x10000;
      v213 = v289.i32[0] * v289.i32[1];
      v214 = v289.u32[2];
      v217 = (v289.i32[2] < 8u || v213 > 0x7FF) && v201 != 2;
      v218 = *(v210 + 1476) & 0x440;
      v219 = (2 * *(v210 + 1476)) & (*(v210 + 1476) >> 3) & 0x80;
      if (v207 > 4 || (v220 = (*(v210 + 1472) & 0xFFFFFFFE) != 24, v206 < 8 * v207) || v208 > 1 || v211 == 1 || v211 == 4)
      {
        v220 = 0;
      }

      if (v217)
      {
        v221 = 0x4000000;
      }

      else
      {
        v221 = 0;
      }

      *&v321 = v219 | (v202 + (v221 & 0xFFFFFFF1 | ((v208 > 1) << 25) | ((v207 << 16) + 196608) & 0x30000 | (2 * (v211 & 7)))) | v220;
      v323 = 0uLL;
      LODWORD(v222) = 1;
      DWORD1(v222) = v283.i32[0];
      LODWORD(v223) = 1;
      DWORD1(v223) = v289.i32[0];
      v224 = 1.0 / v206;
      if ((v211 & 0xFFFFFFFE) != 2)
      {
        v224 = 1.0;
      }

      HIDWORD(v223) = v213 * v289.i32[2];
      v308 = v283;
      v309 = v289;
      HIDWORD(v222) = v283.i32[0] * v283.i32[1] * v283.i32[2];
      DWORD2(v222) = v283.i32[0] * v283.i32[1];
      v310 = v222;
      DWORD2(v223) = v289.i32[0] * v289.i32[1];
      v311 = v223;
      v312 = v209;
      v313 = v206;
      v314 = v207;
      v315 = v208;
      v316 = v224;
      if (v205)
      {
        v225 = 8;
      }

      else
      {
        v225 = 6;
      }

      if (v278)
      {
        ++v225;
      }

      v226 = v225 + 8;
      if (v201)
      {
        v227 = v225 + 8;
      }

      else
      {
        v227 = v225;
      }

      v228 = v225 + 4;
      if (v201)
      {
        v228 = v226;
      }

      v229 = v218 == 1088 ? v228 : v227;
      v317 = 0;
      v318 = 0uLL;
      v319 = 0;
      v230 = (&CommonKernels)[16 * v229];
      v250 = 0;
      v251 = 0;
      v248 = *(a1 + *MEMORY[0x277CD7360]);
      v249 = *(a1 + *MEMORY[0x277CD7368]);
      v247 = a4[29];
      MPSLibrary::CreateUberShaderKey();
      v231 = *(a1 + *MEMORY[0x277CD7370]);
      v232 = MPSLibrary::GetPipelineStateForMPSKey();
      if (v232)
      {
        break;
      }

      v151 = -1;
LABEL_486:
      v290 = v283;
      *(&v290 & 0xFFFFFFFFFFFFFFF3 | (4 * (v201 & 3))) = v271;
      v283 = v290;
      ++v281;
      ++v201;
      v202 += 16;
      TempBuffer = v205;
      if (v201 == 4)
      {
        goto LABEL_487;
      }
    }

    [a2 setComputePipelineState:{v232, v247, v248, v249, 0, 0}];
    v233 = *(a1 + *MEMORY[0x277CD7370]);
    MPSLibrary::ReleaseMPSKey();
    v234 = [v232 threadExecutionWidth];
    v235 = [v232 maxTotalThreadsPerThreadgroup];
    if (!v201)
    {
      v238 = 256;
      if (v235 < 0x100)
      {
        v238 = v235;
      }

      v239 = v238 > v289.u32[0] || v220;
      if (v234 <= 1)
      {
        v240 = 1;
      }

      else
      {
        v240 = v234;
      }

      if (v240 >= 0x20)
      {
        v240 = 32;
      }

      if (v239)
      {
        v241 = v240;
      }

      else
      {
        v241 = v238;
      }

      v242 = v289.u32[3];
      v243 = 1;
      v244 = v289.u32[1];
      goto LABEL_478;
    }

    if (v201 == 1)
    {
      v236 = v289.u32[2];
      v237 = v289.u32[0];
    }

    else
    {
      v236 = v289.u32[1];
      v237 = v289.u32[0];
      if (v201 != 2)
      {
LABEL_477:
        v244 = (v237 + 15) >> 4;
        v242 = v214;
        v214 = v236;
        v241 = 16;
        v243 = 16;
LABEL_478:
        MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
        [a2 setBytes:&v308 length:160 atIndex:29];
        if (v278)
        {
          [a2 setBuffer:v278 offset:0 atIndex:28];
        }

        if (v205)
        {
          [a2 setBuffer:v205 offset:0 atIndex:27];
        }

        if (v201)
        {
          v245 = v241 + 1;
        }

        else
        {
          v245 = v241;
        }

        [a2 setThreadgroupMemoryLength:8 * v243 * v245 atIndex:0];
        v305 = v244;
        v306 = v214;
        v307 = v242;
        v302 = v241;
        v303 = v243;
        v304 = 1;
        [a2 dispatchThreadgroups:&v305 threadsPerThreadgroup:&v302];
        MPSLibrary::ReleaseComputeState();
        v151 = 0;
        goto LABEL_486;
      }
    }

    LODWORD(v214) = v289.i32[3];
    goto LABEL_477;
  }

LABEL_487:
  MPSAutoCache::~MPSAutoCache(v293);
  return v151;
}

uint64_t EncodePoolingGradient(uint64_t a1, void *a2, uint64_t a3, uint32x4_t *a4)
{
  v4 = a3;
  v5 = a2;
  v208 = *MEMORY[0x277D85DE8];
  v148 = *(a1 + *MEMORY[0x277CD7370]);
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v163 = *(a1 + 680);
  v154 = *(a1 + 688);
  v166 = *(a1 + 744);
  v167 = *(a1 + 760);
  v168 = *(a1 + 668);
  v158 = *(a1 + 728);
  v155 = *(a1 + 696);
  v157 = *(a1 + 712);
  v144 = *(a1 + 665);
  v145 = *(a1 + 792);
  v151 = *(a1 + 776);
  v8 = a4[13];
  v191 = a4[12];
  v192 = v8;
  v193 = a4[14];
  v9 = a4[9];
  v187 = a4[8];
  v188 = v9;
  v10 = a4[11];
  v189 = a4[10];
  v190 = v10;
  v11 = a4[5];
  v183 = a4[4];
  v184 = v11;
  v12 = a4[7];
  v185 = a4[6];
  v186 = v12;
  v13 = a4[1];
  v179 = *a4;
  v180 = v13;
  v14 = MEMORY[0x277CD7378];
  v16 = a4[2];
  v15 = a4[3];
  *(a1 + *MEMORY[0x277CD7378]) = 16;
  v181 = v16;
  v182 = v15;
  if ((*(a1 + *v14) & 0x10) != 0)
  {
    v160 = v7;
    if ((v168 - 1) > 4)
    {
      v17 = "Default";
    }

    else
    {
      v17 = off_278B0E788[v168 - 1];
    }

    v18 = *MEMORY[0x277CD73D0];
    v19 = (v192.i64[0] + v18);
    v20 = (v186.i64[0] + v18);
    v169 = v19[3];
    v21 = v19[1];
    v164 = v19[2];
    v22 = *v19;
    v23 = v20[2];
    v24 = v20[3];
    v26 = *v20;
    v25 = v20[1];
    v27 = dataTypeToString(*(v192.i64[0] + *MEMORY[0x277CD73C8]));
    v28 = dataTypeToString(*(v186.i64[0] + *MEMORY[0x277CD73C8]));
    MPSKernel_LogInfo(a1, 3uLL, "-test MPSNDArrayPoolingTest -srcShapes [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u] -srcDataTypes %s -dstDataTypes %s -strides [%u,%u,%u,%u] -kernelPooling [%u,%u,%u,%u] -offset [%u,%u,%u,%u] -poolingMode %s -gradient\n", v169, v164, v21, v22, v24, v23, v25, v26, v27, v28, v167.i32[2], v167.i32[0], v166.i32[2], v166.i32[0], v155.i32[2], v155.i32[0], v154, v163, v158.i32[2], v158.i32[0], v157.i32[2], v157.i32[0], v17);
    v5 = a2;
    v4 = a3;
    v7 = v160;
  }

  v29 = [v193.i64[1] graph];
  v30 = **(v29 + 56);
  if (*(*(v29 + 56) + 8) == v30)
  {
    goto LABEL_268;
  }

  v32 = *(*v30 + 8);
  v31 = *v32;
  if (*(v32 + 8) - *v32 <= 8uLL)
  {
    goto LABEL_267;
  }

  v33 = *v31;
  v34 = v31[1];
  v35 = [v193.i64[1] graph];
  v36 = **(v35 + 56);
  if (*(*(v35 + 56) + 8) == v36)
  {
LABEL_268:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v38 = *(*v36 + 24);
  v37 = *v38;
  if (*(v38 + 8) == *v38)
  {
LABEL_267:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v39 = *v37;
  DimensionSize = BaseTensor::GetDimensionSize(*v37);
  v159 = BaseTensor::GetDimensionSize(v39);
  v170 = BaseTensor::GetDimensionSize(v39);
  v41 = BaseTensor::GetDimensionSize(v39);
  v153 = BaseTensor::GetDimensionSize(v34);
  v152 = BaseTensor::GetDimensionSize(v34);
  v165 = BaseTensor::GetDimensionSize(v34);
  v42 = BaseTensor::GetDimensionSize(v34);
  v43 = v151.i64[0] > 1uLL;
  v143 = v193.i64[1];
  if (v151.i64[0] < 2uLL)
  {
    v43 = v151.i64[1] > 1uLL;
    v44 = v163;
    if (v151.i64[1] <= 1uLL)
    {
      v43 = v145.i64[0] > 1uLL;
      if (v145.i64[0] <= 1uLL)
      {
        v43 = v145.i64[1] > 1uLL;
      }
    }
  }

  else
  {
    v44 = v163;
  }

  v45 = 0;
  v141 = v155.u64[1];
  v47 = v168 == 1 && v155.i64[1] == 1;
  v48 = v155.i64[0];
  v49 = v155.i64[0] == 1 && v47;
  v50.i64[0] = v166.i64[0];
  v50.i64[1] = v158.i64[1];
  v51 = vmovn_s32(vuzp1q_s32(vceqq_s64(v50, xmmword_239B0A0D0), vceqq_s64(v167, vdupq_n_s64(1uLL))));
  v52 = vzip1q_s64(v157, v158);
  v53 = vmovn_s64(vtstq_s64(v52, v52));
  v54 = (v42 == v41) & ~(v53.i32[1] | ~(v49 & v51.i16[3] & v51.i16[2] & v51.i16[1]) | v43);
  if (v165 != v170)
  {
    v54 = 0;
  }

  v162 = v54;
  if (v47 && v44 == 1 && (v51.i8[6] & 1) != 0 && (v51.i8[0] & 1) != 0 && (v51.i8[2] & 1) != 0 && (v53.i8[0] & 1) == 0 && !v43 && v42 == v41)
  {
    v45 = (v153 == DimensionSize) & (v54 ^ 1);
  }

  v146 = *(v7 + 1472);
  v161 = (v168 == 1) & (v45 | v54);
  if (v161 == 1)
  {
    v138 = v42;
    v55 = v43;
    if (v144)
    {
      v149 = v45;
      v56 = [v180.i64[0] objectAtIndexedSubscript:0];
      LODWORD(v44) = v163;
      v57 = v154;
      v43 = v55;
      v48 = v155.i64[0];
      v42 = v138;
    }

    else
    {
      v136 = v33;
      v150 = *(a1 + 672);
      if (v45)
      {
        v63 = 3;
      }

      else
      {
        v63 = 2;
      }

      *(a1 + 672) = v63;
      *(a1 + 676) = 536870944;
      *(a1 + 664) = 1;
      v205 = v191;
      v206 = v192;
      v207 = v193;
      *v202 = v187;
      *&v202[16] = v188;
      v204 = v190;
      v203 = v189;
      v198 = v183;
      v199 = v184;
      v200 = v185;
      v201.i64[1] = v186.i64[1];
      v194 = v179;
      v195 = v180;
      v196 = v181;
      v197 = v182;
      v201.i64[0] = 0;
      v64 = [objc_msgSend(v186.i64[0] "descriptor")];
      v65 = *(v186.i64[0] + *MEMORY[0x277CD7400]) == (*(v186.i64[0] + *MEMORY[0x277CD73C8]) >> 3) * *(v186.i64[0] + *MEMORY[0x277CD7410]);
      v66 = [MEMORY[0x277CD7268] descriptorWithDataType:536870944 shape:v64];
      [v66 setPreferPackedRows:v65];
      v67 = v66;
      v5 = a2;
      v68 = v45;
      v56 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v4 descriptor:v67];
      v206.i64[0] = v56;
      v69 = EncodePooling(a1, a2, v4, &v194);
      *(a1 + 672) = v150;
      *(a1 + 664) = 0;
      if (v69)
      {
LABEL_227:
        result = -1;
        goto LABEL_266;
      }

      v149 = v68;
      LODWORD(v44) = v163;
      v57 = v154;
      v43 = v55;
      v48 = v155.i64[0];
      v42 = v138;
      v33 = v136;
    }
  }

  else
  {
    v149 = v45;
    v56 = 0;
    v57 = v154;
  }

  v58 = __PAIR64__(v57, v44);
  v59.i64[0] = __PAIR64__(v159, DimensionSize);
  v60.i32[0] = v153;
  v61 = *(v33 + 8);
  if (v61 > 285212703)
  {
    if (v61 <= 536870915)
    {
      if (v61 > 301989895)
      {
        if (v61 == 301989896)
        {
          v62 = 512;
          goto LABEL_88;
        }

        if (v61 == 335544328)
        {
          v62 = 544;
          goto LABEL_88;
        }
      }

      else
      {
        if (v61 == 285212704)
        {
          v62 = 416;
          goto LABEL_88;
        }

        if (v61 == 285212736)
        {
          v62 = 448;
          goto LABEL_88;
        }
      }
    }

    else if (v61 <= 536870927)
    {
      if (v61 == 536870916)
      {
        v62 = 0;
        goto LABEL_88;
      }

      if (v61 == 536870920)
      {
        v62 = 32;
        goto LABEL_88;
      }
    }

    else
    {
      switch(v61)
      {
        case 536870928:
          v62 = 64;
          goto LABEL_88;
        case 536870944:
          v62 = 96;
          goto LABEL_88;
        case 536870976:
          v62 = 128;
          goto LABEL_88;
      }
    }
  }

  else if (v61 <= 31)
  {
    if (v61 > 7)
    {
      if (v61 == 8)
      {
        v62 = 192;
        goto LABEL_88;
      }

      if (v61 == 16)
      {
        v62 = 224;
        goto LABEL_88;
      }
    }

    else
    {
      if (v61 == -1879048176)
      {
        v62 = 384;
        goto LABEL_88;
      }

      if (v61 == 4)
      {
        v62 = 160;
        goto LABEL_88;
      }
    }
  }

  else if (v61 <= 268435463)
  {
    if (v61 == 32)
    {
      v62 = 256;
      goto LABEL_88;
    }

    if (v61 == 64)
    {
      v62 = 288;
      goto LABEL_88;
    }
  }

  else
  {
    switch(v61)
    {
      case 268435464:
        v62 = 480;
        goto LABEL_88;
      case 268435472:
        v62 = 320;
        goto LABEL_88;
      case 268435488:
        v62 = 352;
        goto LABEL_88;
    }
  }

  v62 = 576;
LABEL_88:
  v60.i32[1] = v152;
  v59.i32[2] = v170;
  v70 = *(v34 + 2);
  if (v70 > 285212703)
  {
    if (v70 <= 536870915)
    {
      if (v70 > 301989895)
      {
        if (v70 == 301989896)
        {
          v71 = 0x4000;
          goto LABEL_132;
        }

        if (v70 == 335544328)
        {
          v71 = 17408;
          goto LABEL_132;
        }
      }

      else
      {
        if (v70 == 285212704)
        {
          v71 = 13312;
          goto LABEL_132;
        }

        if (v70 == 285212736)
        {
          v71 = 14336;
          goto LABEL_132;
        }
      }
    }

    else if (v70 <= 536870927)
    {
      if (v70 == 536870916)
      {
        v71 = 0;
        goto LABEL_132;
      }

      if (v70 == 536870920)
      {
        v71 = 1024;
        goto LABEL_132;
      }
    }

    else
    {
      switch(v70)
      {
        case 536870928:
          v71 = 2048;
          goto LABEL_132;
        case 536870944:
          v71 = 3072;
          goto LABEL_132;
        case 536870976:
          v71 = 4096;
          goto LABEL_132;
      }
    }
  }

  else if (v70 <= 31)
  {
    if (v70 > 7)
    {
      if (v70 == 8)
      {
        v71 = 6144;
        goto LABEL_132;
      }

      if (v70 == 16)
      {
        v71 = 7168;
        goto LABEL_132;
      }
    }

    else
    {
      if (v70 == -1879048176)
      {
        v71 = 12288;
        goto LABEL_132;
      }

      if (v70 == 4)
      {
        v71 = 5120;
        goto LABEL_132;
      }
    }
  }

  else if (v70 <= 268435463)
  {
    if (v70 == 32)
    {
      v71 = 0x2000;
      goto LABEL_132;
    }

    if (v70 == 64)
    {
      v71 = 9216;
      goto LABEL_132;
    }
  }

  else
  {
    switch(v70)
    {
      case 268435464:
        v71 = 15360;
        goto LABEL_132;
      case 268435472:
        v71 = 10240;
        goto LABEL_132;
      case 268435488:
        v71 = 11264;
        goto LABEL_132;
    }
  }

  v71 = 18432;
LABEL_132:
  v60.i32[2] = v165;
  v59.i32[3] = v41;
  v72 = v71 | v62;
  v73 = *(v39 + 2);
  v140 = v59;
  v156 = vmovn_hight_s64(v58, v155);
  if (v73 > 285212703)
  {
    v74 = v141;
    if (v73 <= 536870915)
    {
      v75 = v4;
      if (v73 > 301989895)
      {
        v76 = v5;
        if (v73 == 301989896)
        {
          v77 = v48;
          v78 = v43;
          v79 = 16;
          goto LABEL_176;
        }

        if (v73 == 335544328)
        {
          v77 = v48;
          v78 = v43;
          v79 = 17;
          goto LABEL_176;
        }
      }

      else
      {
        v76 = v5;
        if (v73 == 285212704)
        {
          v77 = v48;
          v78 = v43;
          v79 = 13;
          goto LABEL_176;
        }

        if (v73 == 285212736)
        {
          v77 = v48;
          v78 = v43;
          v79 = 14;
          goto LABEL_176;
        }
      }
    }

    else if (v73 <= 536870927)
    {
      v75 = v4;
      v76 = v5;
      if (v73 == 536870916)
      {
        v77 = v48;
        v78 = v43;
        v79 = 0;
        goto LABEL_176;
      }

      if (v73 == 536870920)
      {
        v77 = v48;
        v78 = v43;
        v79 = 1;
        goto LABEL_176;
      }
    }

    else
    {
      v75 = v4;
      if (v73 == 536870928)
      {
        v76 = v5;
        v77 = v48;
        v78 = v43;
        v79 = 2;
        goto LABEL_176;
      }

      v76 = v5;
      if (v73 == 536870944)
      {
        v77 = v48;
        v78 = v43;
        v79 = 3;
        goto LABEL_176;
      }

      if (v73 == 536870976)
      {
        v77 = v48;
        v78 = v43;
        v79 = 4;
        goto LABEL_176;
      }
    }
  }

  else
  {
    v74 = v141;
    if (v73 <= 31)
    {
      v75 = v4;
      if (v73 > 7)
      {
        v76 = v5;
        if (v73 == 8)
        {
          v77 = v48;
          v78 = v43;
          v79 = 6;
          goto LABEL_176;
        }

        if (v73 == 16)
        {
          v77 = v48;
          v78 = v43;
          v79 = 7;
          goto LABEL_176;
        }
      }

      else
      {
        v76 = v5;
        if (v73 == -1879048176)
        {
          v77 = v48;
          v78 = v43;
          v79 = 12;
          goto LABEL_176;
        }

        if (v73 == 4)
        {
          v77 = v48;
          v78 = v43;
          v79 = 5;
          goto LABEL_176;
        }
      }
    }

    else if (v73 <= 268435463)
    {
      v75 = v4;
      v76 = v5;
      if (v73 == 32)
      {
        v77 = v48;
        v78 = v43;
        v79 = 8;
        goto LABEL_176;
      }

      if (v73 == 64)
      {
        v77 = v48;
        v78 = v43;
        v79 = 9;
        goto LABEL_176;
      }
    }

    else
    {
      v75 = v4;
      if (v73 == 268435464)
      {
        v76 = v5;
        v77 = v48;
        v78 = v43;
        v79 = 15;
        goto LABEL_176;
      }

      v76 = v5;
      if (v73 == 268435472)
      {
        v77 = v48;
        v78 = v43;
        v79 = 10;
        goto LABEL_176;
      }

      if (v73 == 268435488)
      {
        v77 = v48;
        v78 = v43;
        v79 = 11;
        goto LABEL_176;
      }
    }
  }

  v77 = v48;
  v78 = v43;
  v79 = 18;
LABEL_176:
  v60.i32[3] = v42;
  v142 = v60;
  *&v80 = -1;
  *(&v80 + 1) = -1;
  v178 = v80;
  v174 = -1;
  v176 = v80;
  v173 = v80;
  v175 = v72 | v79;
  v177 = 0uLL;
  v81 = [v180.i64[0] count] | 0x10100;
  v82 = vcgeq_u32(v140, v156);
  v90 = v74 < 9 && v167.i64[1] < 5uLL && v77 < 9 && v167.i64[0] < 5uLL && v154 < 9 && v166.i64[1] < 5uLL && v163 < 9 && v166.i64[0] < 5uLL;
  v91 = vminvq_u32(v82) >> 31;
  if (v78)
  {
    v92 = 0x2000000;
  }

  else
  {
    v92 = 0;
  }

  *&v178 = v81;
  v174 = (2 * (v168 & 7)) | ((v167.i32[2] << 22) + 12582912) & 0xC00000 | ((v154 << 7) + 896) & 0x380 | (16 * v163 + 112) & 0x70 | ((v77 << 10) + 7168) & 0x1C00 | ((v166.i32[0] << 16) + 196608) & 0x30000 | ((v74 << 13) - 0x2000) & 0xE000 | ((v166.i32[2] << 18) + 786432) & 0xC0000 | ((v167.i32[0] << 20) + 3145728) & 0x300000 | v92 | v90 | (v91 << 24);
  v93 = 1.0;
  if ((v168 & 0xFFFFFFFE) == 2)
  {
    v93 = 1.0 / (v154 * v163 * v77 * v74);
  }

  v94 = v159 * DimensionSize;
  v95.i32[0] = 1;
  v95.i32[1] = DimensionSize;
  v95.i32[2] = v159 * DimensionSize;
  v95.i32[3] = v159 * DimensionSize * v170;
  v96.i32[0] = 1;
  v96.i32[1] = v153;
  v96.i32[2] = v152 * v153;
  v96.i32[3] = v152 * v153 * v165;
  v194 = v140;
  v195 = v142;
  v196 = v95;
  v197 = v96;
  v198 = vuzp1q_s32(v157, v158);
  v199 = v156;
  v200 = vuzp1q_s32(v166, v167);
  v201 = vuzp1q_s32(v151, v145);
  *v202 = v93;
  __asm { FMOV            V1.4S, #1.0 }

  memset(&v202[4], 0, 28);
  v203 = vdivq_f32(_Q1, vcvtq_f32_u32(v200));
  v204 = v140;
  if (v149)
  {
    MPSGetUIntDivisorMagicNumber();
    v205 = v100;
  }

  MPSGetUIntDivisorMagicNumber();
  v206 = v101;
  v102 = *MEMORY[0x277CD73C8];
  if (v161)
  {
    v103 = *(v56 + *MEMORY[0x277CD7400]);
    v104 = *(v56 + v102) >> 3;
    if (v103 != (*(v56 + v102) >> 3) * *(v56 + *MEMORY[0x277CD7410]))
    {
      v105.i32[0] = 1;
      v105.i32[1] = v103 / v104;
      v105.i32[2] = v103 / v104 * v152;
      v105.i32[3] = v105.i32[2] * v165;
      v197 = v105;
    }
  }

  v106 = *(v186.i64[0] + v102);
  v139 = v56;
  if (v56)
  {
    v107 = (*(v56 + v102) & 0xDFFFFFFF) == 32;
  }

  v134 = *(a1 + *MEMORY[0x277CD7360]);
  v135 = *(a1 + *MEMORY[0x277CD7368]);
  MPSLibrary::CreateUberShaderKey();
  v108 = *(a1 + *MEMORY[0x277CD7370]);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    goto LABEL_227;
  }

  v110 = PipelineStateForMPSKey;
  [v76 setComputePipelineState:{PipelineStateForMPSKey, v143, v134, v135, 0, 0}];
  v111 = *(a1 + *MEMORY[0x277CD7370]);
  MPSLibrary::ReleaseMPSKey();
  v112 = [v110 threadExecutionWidth];
  if (v112 <= 1)
  {
    v113 = 1;
  }

  else
  {
    v113 = v112;
  }

  if (v113 > DimensionSize || (v114 = v113, DimensionSize <= 3) && (v114 = v113, v113 > v159))
  {
    if (v112 <= 1)
    {
      v114 = 1;
    }

    else
    {
      v114 = v113 >> 1;
    }
  }

  v115 = [v110 maxTotalThreadsPerThreadgroup];
  v116 = 256;
  if (v115 < 0x100)
  {
    v116 = v115;
  }

  if (v116 <= 2 * v114)
  {
    v117 = 1;
    if (v114 <= DimensionSize)
    {
      goto LABEL_226;
    }

LABEL_229:
    v121 = v159;
    v119 = v170;
    if (v114 <= v159 || v114 <= v170)
    {
      v118 = v41;
      v120 = v117;
      v117 = v114;
      v114 = 1;
    }

    else
    {
      v118 = v41;
      v120 = 1;
    }

    goto LABEL_233;
  }

  v117 = v116 / v114;
  if (v114 > DimensionSize)
  {
    goto LABEL_229;
  }

LABEL_226:
  v118 = v41;
  v119 = v170;
  v120 = 1;
  v121 = v159;
LABEL_233:
  if (v120 >= v119)
  {
    v123 = v119;
  }

  else
  {
    v123 = v120;
  }

  if (v114 * v117 >= v113)
  {
    v124 = v123;
  }

  else
  {
    v124 = v120;
  }

  if (v117 >= v121)
  {
    v125 = v121;
  }

  else
  {
    v125 = v117;
  }

  if (v124 * v114 >= v113)
  {
    v126 = v125;
  }

  else
  {
    v126 = v117;
  }

  v127 = DimensionSize - 1;
  v128 = (v114 + v127) / v114;
  v129 = (v121 + v126 - 1) / v126;
  v130 = (v119 + v124 - 1) / v124;
  if (v161)
  {
    v131 = (v113 + v127) / v113;
    v132 = v118 * v170;
    if (!v149)
    {
      v131 = v128;
      v121 = (v121 + v126 - 1) / v126;
      v132 = (v119 + v124 - 1) / v124;
    }

    v124 = 1;
    v126 = 1;
    if (v162)
    {
      v128 = (v113 + v94 - 1) / v113;
    }

    else
    {
      v128 = v131;
    }

    if (v162)
    {
      v129 = v119;
    }

    else
    {
      v129 = v121;
    }

    if (v162)
    {
      v130 = v118;
    }

    else
    {
      v130 = v132;
    }

    v114 = v113;
  }

  [a2 setComputePipelineState:v110];
  MPSSetNDArraysOnComputeEncoder(a2, &v179, 4, 0, 0);
  [a2 setBytes:&v194 length:224 atIndex:29];
  if (v161)
  {
    [a2 setBuffer:-[MPSTemporaryNDArray buffer](v139 offset:"buffer") atIndex:{0, 28}];
    [a2 setBuffer:objc_msgSend(v186.i64[0] offset:"buffer") atIndex:{0, 27}];
    if (v146 <= 23)
    {
      if ((atomic_load_explicit(&_MergedGlobals_17, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_17))
      {
        xmmword_27DF86AF0 = 0u;
        xmmword_27DF86AE0 = 0u;
        dword_27DF86B00 = 1065353216;
        qword_27DF86B08 = 850045863;
        xmmword_27DF86B10 = 0u;
        unk_27DF86B20 = 0u;
        xmmword_27DF86B30 = 0u;
        qword_27DF86B40 = 0;
        __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86AE0, &dword_2399F7000);
        __cxa_guard_release(&_MergedGlobals_17);
      }

      [a2 setBuffer:MPSBufferCache::getBuffer(&xmmword_27DF86AE0 offset:objc_msgSend(objc_msgSend(v75 atIndex:{"commandQueue"), "device"), 0x10uLL, &__block_literal_global_6), 0, 26}];
      if ((atomic_load_explicit(&qword_27DF86AC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86AC8))
      {
        xmmword_27DF86B58 = 0u;
        xmmword_27DF86B48 = 0u;
        dword_27DF86B68 = 1065353216;
        qword_27DF86B70 = 850045863;
        xmmword_27DF86B78 = 0u;
        unk_27DF86B88 = 0u;
        xmmword_27DF86B98 = 0u;
        qword_27DF86BA8 = 0;
        __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86B48, &dword_2399F7000);
        __cxa_guard_release(&qword_27DF86AC8);
      }

      [a2 setBuffer:MPSBufferCache::getBuffer(&xmmword_27DF86AE0 offset:objc_msgSend(objc_msgSend(v75 atIndex:{"commandQueue"), "device"), 0x10uLL, 0), 0, 25}];
    }
  }

  v172[0] = v128;
  v172[1] = v129;
  v172[2] = v130;
  v171[0] = v114;
  v171[1] = v126;
  v171[2] = v124;
  [a2 dispatchThreadgroups:v172 threadsPerThreadgroup:v171];
  MPSLibrary::ReleaseComputeState();
  result = 0;
  if (v161 && (v144 & 1) == 0)
  {
    MPSDecrementReadCount(v139);
    result = 0;
  }

LABEL_266:
  v133 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EncodePoolingMultiDestinationBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v14 = v10;
  v15 = v7;
  if (*(v7 + 120) == 1)
  {
    v16 = v9;
    v312 = v8;
    v17 = *(v7 + *MEMORY[0x277CD7350]);
    v313 = *(v7 + *MEMORY[0x277CD7370]);
    v18 = *(v7 + 136);
    v314 = *(v7 + 144);
    v317 = *(v7 + 200);
    v318 = *(v7 + 216);
    v325 = *(v7 + 152);
    v326 = *(v7 + 160);
    v19 = *(v7 + 124);
    v315 = *(v7 + 168);
    v316 = *(v7 + 184);
    v310 = *(v7 + 248);
    v320 = *(v7 + 232);
    v20 = [*(v10 + 16) objectAtIndexedSubscript:1];
    v329 = [*(v14 + 40) objectAtIndexedSubscript:0];
    v21 = [*(v14 + 16) objectAtIndexedSubscript:0];
    v22 = 0;
    if ([*(v14 + 16) count] == 3)
    {
      v22 = [*(v14 + 16) objectAtIndexedSubscript:2];
    }

    if (v19 != 1 && v19 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v23 = v320;
    v24 = v16;
    if (!v22)
    {
      v298 = MTLReportFailureTypeEnabled();
      v24 = v16;
      v23 = v320;
      if (v298)
      {
        MTLReportFailure();
        v24 = v16;
        v23 = v320;
      }
    }

    v25 = *MEMORY[0x277CD7410];
    v26 = *&v329[v25];
    v27 = *&v329[v25 + 16];
    v28 = *&v329[v25 + 32];
    v29 = *&v329[v25 + 48];
    v30 = *MEMORY[0x277CD73D8];
    v31 = *&v329[v30];
    v404[3] = v29;
    v404[2] = v28;
    v404[1] = v27;
    v404[0] = v26;
    v324 = *(v404 + (v31 & 0xF));
    v32 = &v20[v25];
    v33 = *v32;
    v34 = *(v32 + 1);
    v35 = *(v32 + 2);
    v36 = *(v32 + 3);
    v37 = *&v20[v30];
    v405[3] = v36;
    v405[2] = v35;
    v405[1] = v34;
    v405[0] = v33;
    v38 = v23.i64[0] > 1uLL;
    if (v23.i64[0] < 2uLL)
    {
      v38 = v23.i64[1] > 1uLL;
      if (v23.i64[1] <= 1uLL)
      {
        v38 = v310.i64[0] > 1uLL;
        if (v310.i64[0] <= 1uLL)
        {
          v38 = v310.i64[1] > 1uLL;
        }
      }
    }

    v39 = 0;
    v40 = *(v405 + (v37 & 0xF));
    v403[0] = v26;
    v403[1] = v27;
    v403[2] = v28;
    v403[3] = v29;
    v327 = *(v403 + (BYTE1(v31) & 0xF));
    v402[0] = v26;
    v402[1] = v27;
    v402[2] = v28;
    v402[3] = v29;
    v41 = *(v402 + (BYTE2(v31) & 0xF));
    v401[0] = v33;
    v401[1] = v34;
    v401[2] = v35;
    v401[3] = v36;
    v323 = *(v401 + (BYTE1(v37) & 0xF));
    v400[0] = v33;
    v400[1] = v34;
    v400[2] = v35;
    v400[3] = v36;
    v42 = *(v400 + (BYTE2(v37) & 0xF));
    v399[0] = v26;
    v399[1] = v27;
    v399[2] = v28;
    v399[3] = v29;
    v43 = *(v399 + (BYTE3(v31) & 0xF));
    v398[0] = v33;
    v398[1] = v34;
    v398[2] = v35;
    v398[3] = v36;
    v44 = *(v398 + (BYTE3(v37) & 0xF));
    v46 = v19 == 1 && v326 == 1;
    v47 = v325 == 1 && v46;
    v48.i64[0] = v317.i64[0];
    v48.i64[1] = v316.i64[1];
    v49 = vuzp1q_s32(vceqq_s64(v48, xmmword_239B0A0D0), vceqq_s64(v318, vdupq_n_s64(1uLL)));
    *v49.i8 = vmovn_s32(v49);
    v50 = vzip1q_s64(v315, v316);
    v51 = vmovn_s64(vtstq_s64(v50, v50));
    v319 = v41;
    v52 = (v44 == v43) & ~(v51.i32[1] | ~(v47 & v49.i16[3] & v49.i16[2] & v49.i16[1]) | v38);
    if (v42 != v41)
    {
      v52 = 0;
    }

    v321 = v52;
    v322 = v42;
    if (v46 && v18 == 1 && (v49.i8[6] & 1) != 0 && (v49.i8[0] & 1) != 0 && (v49.i8[2] & 1) != 0 && (v51.i8[0] & 1) == 0 && !v38 && v44 == v43)
    {
      v39 = (v40 == v324) & (v52 ^ 1);
    }

    v311 = *(v17 + 1472);
    v53 = *MEMORY[0x277CD73C8];
    v54 = *(v21 + v53);
    if (v54 > 285212703)
    {
      if (v54 <= 536870915)
      {
        if (v54 > 301989895)
        {
          if (v54 == 301989896)
          {
            v55 = 16;
            v56 = *(v22 + v53);
            if (v56 > 285212703)
            {
              goto LABEL_80;
            }

            goto LABEL_103;
          }

          if (v54 == 335544328)
          {
            v55 = 17;
            v56 = *(v22 + v53);
            if (v56 <= 285212703)
            {
              goto LABEL_103;
            }

            goto LABEL_80;
          }
        }

        else
        {
          if (v54 == 285212704)
          {
            v55 = 13;
            v56 = *(v22 + v53);
            if (v56 > 285212703)
            {
              goto LABEL_80;
            }

            goto LABEL_103;
          }

          if (v54 == 285212736)
          {
            v55 = 14;
            v56 = *(v22 + v53);
            if (v56 <= 285212703)
            {
              goto LABEL_103;
            }

            goto LABEL_80;
          }
        }
      }

      else if (v54 <= 536870927)
      {
        if (v54 == 536870916)
        {
          v55 = 0;
          v56 = *(v22 + v53);
          if (v56 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_103;
        }

        if (v54 == 536870920)
        {
          v55 = 1;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        }
      }

      else
      {
        switch(v54)
        {
          case 536870928:
            v55 = 2;
            v56 = *(v22 + v53);
            if (v56 <= 285212703)
            {
              goto LABEL_103;
            }

            goto LABEL_80;
          case 536870944:
            v55 = 3;
            v56 = *(v22 + v53);
            if (v56 <= 285212703)
            {
              goto LABEL_103;
            }

            goto LABEL_80;
          case 536870976:
            v55 = 4;
            v56 = *(v22 + v53);
            if (v56 <= 285212703)
            {
              goto LABEL_103;
            }

            goto LABEL_80;
        }
      }
    }

    else if (v54 <= 31)
    {
      if (v54 > 7)
      {
        if (v54 == 8)
        {
          v55 = 6;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        }

        if (v54 == 16)
        {
          v55 = 7;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        }
      }

      else
      {
        if (v54 == -1879048176)
        {
          v55 = 12;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        }

        if (v54 == 4)
        {
          v55 = 5;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        }
      }
    }

    else if (v54 <= 268435463)
    {
      if (v54 == 32)
      {
        v55 = 8;
        v56 = *(v22 + v53);
        if (v56 <= 285212703)
        {
          goto LABEL_103;
        }

        goto LABEL_80;
      }

      if (v54 == 64)
      {
        v55 = 9;
        v56 = *(v22 + v53);
        if (v56 <= 285212703)
        {
          goto LABEL_103;
        }

        goto LABEL_80;
      }
    }

    else
    {
      switch(v54)
      {
        case 268435464:
          v55 = 15;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        case 268435472:
          v55 = 10;
          v56 = *(v22 + v53);
          if (v56 <= 285212703)
          {
            goto LABEL_103;
          }

          goto LABEL_80;
        case 268435488:
          v55 = 11;
          v56 = *(v22 + v53);
          if (v56 > 285212703)
          {
            goto LABEL_80;
          }

LABEL_103:
          if (v56 <= 31)
          {
            if (v56 > 7)
            {
              if (v56 == 8)
              {
                v58 = 192;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
              }

              if (v56 == 16)
              {
                v58 = 224;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
              }
            }

            else
            {
              if (v56 == -1879048176)
              {
                v58 = 384;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
              }

              if (v56 == 4)
              {
                v58 = 160;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
              }
            }
          }

          else if (v56 <= 268435463)
          {
            if (v56 == 32)
            {
              v58 = 256;
              v59 = *&v20[v53];
              if (v59 <= 285212703)
              {
                goto LABEL_141;
              }

              goto LABEL_124;
            }

            if (v56 == 64)
            {
              v58 = 288;
              v59 = *&v20[v53];
              if (v59 <= 285212703)
              {
                goto LABEL_141;
              }

              goto LABEL_124;
            }
          }

          else
          {
            switch(v56)
            {
              case 268435464:
                v58 = 480;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
              case 268435472:
                v58 = 320;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
              case 268435488:
                v58 = 352;
                v59 = *&v20[v53];
                if (v59 <= 285212703)
                {
                  goto LABEL_141;
                }

                goto LABEL_124;
            }
          }

LABEL_197:
          v58 = 576;
          v59 = *&v20[v53];
          if (v59 <= 285212703)
          {
            goto LABEL_141;
          }

LABEL_124:
          if (v59 <= 536870915)
          {
            if (v59 > 301989895)
            {
              if (v59 == 301989896)
              {
                v60 = 0x4000;
                goto LABEL_200;
              }

              if (v59 == 335544328)
              {
                v60 = 17408;
                goto LABEL_200;
              }
            }

            else
            {
              if (v59 == 285212704)
              {
                v60 = 13312;
                goto LABEL_200;
              }

              if (v59 == 285212736)
              {
                v60 = 14336;
                goto LABEL_200;
              }
            }
          }

          else if (v59 <= 536870927)
          {
            if (v59 == 536870916)
            {
              v60 = 0;
              goto LABEL_200;
            }

            if (v59 == 536870920)
            {
              v60 = 1024;
              goto LABEL_200;
            }
          }

          else
          {
            switch(v59)
            {
              case 536870928:
                v60 = 2048;
                goto LABEL_200;
              case 536870944:
                v60 = 3072;
                goto LABEL_200;
              case 536870976:
                v60 = 4096;
                goto LABEL_200;
            }
          }

          goto LABEL_199;
      }
    }

    v55 = 18;
    v56 = *(v22 + v53);
    if (v56 <= 285212703)
    {
      goto LABEL_103;
    }

LABEL_80:
    if (v56 <= 536870915)
    {
      if (v56 > 301989895)
      {
        if (v56 == 301989896)
        {
          v58 = 512;
          v59 = *&v20[v53];
          if (v59 > 285212703)
          {
            goto LABEL_124;
          }

          goto LABEL_141;
        }

        if (v56 == 335544328)
        {
          v58 = 544;
          v59 = *&v20[v53];
          if (v59 <= 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_124;
        }
      }

      else
      {
        if (v56 == 285212704)
        {
          v58 = 416;
          v59 = *&v20[v53];
          if (v59 > 285212703)
          {
            goto LABEL_124;
          }

          goto LABEL_141;
        }

        if (v56 == 285212736)
        {
          v58 = 448;
          v59 = *&v20[v53];
          if (v59 <= 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_124;
        }
      }
    }

    else if (v56 <= 536870927)
    {
      if (v56 == 536870916)
      {
        v58 = 0;
        v59 = *&v20[v53];
        if (v59 > 285212703)
        {
          goto LABEL_124;
        }

        goto LABEL_141;
      }

      if (v56 == 536870920)
      {
        v58 = 32;
        v59 = *&v20[v53];
        if (v59 <= 285212703)
        {
          goto LABEL_141;
        }

        goto LABEL_124;
      }
    }

    else
    {
      switch(v56)
      {
        case 536870928:
          v58 = 64;
          v59 = *&v20[v53];
          if (v59 <= 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_124;
        case 536870944:
          v58 = 96;
          v59 = *&v20[v53];
          if (v59 <= 285212703)
          {
            goto LABEL_141;
          }

          goto LABEL_124;
        case 536870976:
          v58 = 128;
          v59 = *&v20[v53];
          if (v59 > 285212703)
          {
            goto LABEL_124;
          }

LABEL_141:
          if (v59 <= 31)
          {
            if (v59 > 7)
            {
              if (v59 == 8)
              {
                v60 = 6144;
                goto LABEL_200;
              }

              if (v59 == 16)
              {
                v60 = 7168;
                goto LABEL_200;
              }
            }

            else
            {
              if (v59 == -1879048176)
              {
                v60 = 12288;
                goto LABEL_200;
              }

              if (v59 == 4)
              {
                v60 = 5120;
                goto LABEL_200;
              }
            }
          }

          else if (v59 <= 268435463)
          {
            if (v59 == 32)
            {
              v60 = 0x2000;
              goto LABEL_200;
            }

            if (v59 == 64)
            {
              v60 = 9216;
              goto LABEL_200;
            }
          }

          else
          {
            switch(v59)
            {
              case 268435464:
                v60 = 15360;
                goto LABEL_200;
              case 268435472:
                v60 = 10240;
                goto LABEL_200;
              case 268435488:
                v60 = 11264;
                goto LABEL_200;
            }
          }

LABEL_199:
          v60 = 18432;
LABEL_200:
          v61 = v58 | v55;
          v62 = *&v329[v53];
          v309 = v24;
          v307 = v19;
          v308 = v39;
          v306 = v38;
          if (v62 > 285212703)
          {
            if (v62 <= 536870915)
            {
              if (v62 > 301989895)
              {
                if (v62 == 301989896)
                {
                  v63 = 16;
                  goto LABEL_244;
                }

                if (v62 == 335544328)
                {
                  v63 = 17;
                  goto LABEL_244;
                }
              }

              else
              {
                if (v62 == 285212704)
                {
                  v63 = 13;
                  goto LABEL_244;
                }

                if (v62 == 285212736)
                {
                  v63 = 14;
                  goto LABEL_244;
                }
              }
            }

            else if (v62 <= 536870927)
            {
              if (v62 == 536870916)
              {
                v304 = 0;
                goto LABEL_245;
              }

              if (v62 == 536870920)
              {
                v63 = 1;
                goto LABEL_244;
              }
            }

            else
            {
              switch(v62)
              {
                case 536870928:
                  v63 = 2;
                  goto LABEL_244;
                case 536870944:
                  v63 = 3;
                  goto LABEL_244;
                case 536870976:
                  v63 = 4;
                  goto LABEL_244;
              }
            }
          }

          else if (v62 <= 31)
          {
            if (v62 > 7)
            {
              if (v62 == 8)
              {
                v63 = 6;
                goto LABEL_244;
              }

              if (v62 == 16)
              {
                v63 = 7;
                goto LABEL_244;
              }
            }

            else
            {
              if (v62 == -1879048176)
              {
                v63 = 12;
                goto LABEL_244;
              }

              if (v62 == 4)
              {
                v63 = 5;
                goto LABEL_244;
              }
            }
          }

          else if (v62 <= 268435463)
          {
            if (v62 == 32)
            {
              v63 = 8;
              goto LABEL_244;
            }

            if (v62 == 64)
            {
              v63 = 9;
              goto LABEL_244;
            }
          }

          else
          {
            switch(v62)
            {
              case 268435464:
                v63 = 15;
                goto LABEL_244;
              case 268435472:
                v63 = 10;
                goto LABEL_244;
              case 268435488:
                v63 = 11;
LABEL_244:
                v304 = v63;
LABEL_245:
                v49.i32[0] = v324;
                v340 = v49;
                v305 = v40;
                v49.i32[0] = v40;
                v330 = v49;
                v49.i32[0] = v18;
                v335 = v49;
                v64 = v61 | v60;
                v303 = v14;
                v65 = *(v14 + 48);
                makeStrideBytes();
                v66 = MEMORY[0x277CD73D0];
                v67 = (v21 + *MEMORY[0x277CD73D0]);
                v68.i64[0] = 0x100000001;
                v68.i64[1] = 0x100000001;
                v69 = vceqq_s32(*v67, v68);
                v70.i64[0] = v69.i32[0];
                v70.i64[1] = v69.i32[1];
                v71 = v70;
                v72 = vceqq_s32(v67[1], v68);
                v70.i64[0] = v72.i32[0];
                v70.i64[1] = v72.i32[1];
                v73 = v70;
                v74 = vceqq_s32(v67[2], v68);
                v70.i64[0] = v74.i32[0];
                v70.i64[1] = v74.i32[1];
                v75 = v70;
                v76 = vceqq_s32(v67[3], v68);
                v70.i64[0] = v76.i32[0];
                v70.i64[1] = v76.i32[1];
                v77 = v70;
                v70.i64[0] = v69.i32[2];
                v70.i64[1] = v69.i32[3];
                v78 = v70;
                v70.i64[0] = v72.i32[2];
                v70.i64[1] = v72.i32[3];
                v79 = v70;
                v70.i64[0] = v74.i32[2];
                v70.i64[1] = v74.i32[3];
                v80 = v70;
                v70.i64[0] = v76.i32[2];
                v70.i64[1] = v76.i32[3];
                v81 = vbicq_s8(v415, v70);
                v82 = vbicq_s8(v413, v80);
                v83 = vbicq_s8(v411, v79);
                v84 = vbicq_s8(v409, v78);
                v85 = vbicq_s8(v414, v77);
                v86 = vbicq_s8(v412, v75);
                v87 = vbicq_s8(v410, v73);
                v88 = *(v21 + *MEMORY[0x277CD73C8]);
                v89 = *(v21 + *MEMORY[0x277CD73D8]);
                v90 = BYTE1(*(v21 + *MEMORY[0x277CD73D8]));
                v91 = vbicq_s8(v408, v71);
                v92 = BYTE2(*(v21 + *MEMORY[0x277CD73D8]));
                v93 = BYTE3(*(v21 + *MEMORY[0x277CD73D8]));
                if ((v88 & 0xFFF8) != 0)
                {
                  v94 = v88 >> 3;
                  v397[0] = v91;
                  v397[1] = v84;
                  v397[2] = v87;
                  v397[3] = v83;
                  v397[4] = v86;
                  v397[5] = v82;
                  v397[6] = v85;
                  v397[7] = v81;
                  v95 = *(v397 + (v89 & 0xF)) / v94;
                  v396[0] = v91;
                  v396[1] = v84;
                  v396[2] = v87;
                  v396[3] = v83;
                  v396[4] = v86;
                  v396[5] = v82;
                  v396[6] = v85;
                  v396[7] = v81;
                  v96 = *(v396 + (v90 & 0xF));
                  v395[0] = v91;
                  v395[1] = v84;
                  v395[2] = v87;
                  v395[3] = v83;
                  v395[4] = v86;
                  v395[5] = v82;
                  v395[6] = v85;
                  v395[7] = v81;
                  v97 = *(v395 + (v92 & 0xF)) / v94;
                  v394[0] = v91;
                  v394[1] = v84;
                  v394[2] = v87;
                  v394[3] = v83;
                  v394[4] = v86;
                  v394[5] = v82;
                  v394[6] = v85;
                  v394[7] = v81;
                  v98 = v97;
                  v99 = *(v394 + (v93 & 0xF)) / v94;
                  v100 = v95;
                  v101 = v96 / v94;
                }

                else
                {
                  v393[0] = v91;
                  v393[1] = v84;
                  v393[2] = v87;
                  v393[3] = v83;
                  v393[4] = v86;
                  v393[5] = v82;
                  v393[6] = v85;
                  v393[7] = v81;
                  v392[0] = v91;
                  v392[1] = v84;
                  v392[2] = v87;
                  v392[3] = v83;
                  v392[4] = v86;
                  v392[5] = v82;
                  v392[6] = v85;
                  v392[7] = v81;
                  v391[0] = v91;
                  v391[1] = v84;
                  v391[2] = v87;
                  v391[3] = v83;
                  v391[4] = v86;
                  v391[5] = v82;
                  v391[6] = v85;
                  v391[7] = v81;
                  v390[0] = v91;
                  v390[1] = v84;
                  v390[2] = v87;
                  v390[3] = v83;
                  v390[4] = v86;
                  v390[5] = v82;
                  v390[6] = v85;
                  v390[7] = v81;
                  v98 = *(v391 + (v92 & 0xF));
                  v99 = *(v390 + (v93 & 0xF));
                  v100 = *(v393 + (v89 & 0xF));
                  v101 = *(v392 + (v90 & 0xF));
                }

                v102 = v340;
                v102.i32[1] = v327;
                v341 = v102;
                v103 = v330;
                v103.i32[1] = v323;
                v331 = v103;
                v104 = v335;
                v104.i32[1] = v314;
                v336 = v104;
                v105 = v64 & 0xF0FFFFFF | ((v65 & 0xF) << 24);
                v106 = (v21 + *MEMORY[0x277CD7410]);
                v107 = *v106;
                v108 = v106[1];
                v109 = v106[2];
                v389 = v106[3];
                v388[2] = v109;
                v388[1] = v108;
                v388[0] = v107;
                v110 = v100 * (*(v388 + (v89 & 0xF)) - 1);
                v387[3] = v389;
                v387[2] = v109;
                v387[1] = v108;
                v387[0] = v107;
                v111 = v110 + v101 * (*(v387 + (v90 & 0xF)) - 1);
                v386[3] = v389;
                v386[2] = v109;
                v386[1] = v108;
                v386[0] = v107;
                v112 = v111 + v98 * (*(v386 + (v92 & 0xF)) - 1);
                v385[3] = v389;
                v385[2] = v109;
                v385[1] = v108;
                v385[0] = v107;
                v113 = (HIDWORD(v100) != 0) | (2 * (HIDWORD(v101) != 0)) | (4 * (HIDWORD(v98) != 0)) | (8 * (HIDWORD(v99) != 0)) | (16 * ((v112 + v99 * (*(v385 + (v93 & 0xF)) - 1)) >> 32 != 0));
                makeStrideBytes();
                v114 = (v22 + *v66);
                v115.i64[0] = 0x100000001;
                v115.i64[1] = 0x100000001;
                v116 = vceqq_s32(*v114, v115);
                v117.i64[0] = v116.i32[0];
                v117.i64[1] = v116.i32[1];
                v118 = v117;
                v119 = vceqq_s32(v114[1], v115);
                v117.i64[0] = v119.i32[0];
                v117.i64[1] = v119.i32[1];
                v120 = v117;
                v121 = vceqq_s32(v114[2], v115);
                v117.i64[0] = v121.i32[0];
                v117.i64[1] = v121.i32[1];
                v122 = v117;
                v123 = vceqq_s32(v114[3], v115);
                v117.i64[0] = v123.i32[0];
                v117.i64[1] = v123.i32[1];
                v124 = v117;
                v117.i64[0] = v116.i32[2];
                v117.i64[1] = v116.i32[3];
                v125 = v117;
                v117.i64[0] = v119.i32[2];
                v117.i64[1] = v119.i32[3];
                v126 = v117;
                v117.i64[0] = v121.i32[2];
                v117.i64[1] = v121.i32[3];
                v127 = v117;
                v117.i64[0] = v123.i32[2];
                v117.i64[1] = v123.i32[3];
                v128 = vbicq_s8(v415, v117);
                v129 = vbicq_s8(v413, v127);
                v130 = vbicq_s8(v411, v126);
                v131 = vbicq_s8(v409, v125);
                v132 = vbicq_s8(v414, v124);
                v133 = vbicq_s8(v412, v122);
                v134 = vbicq_s8(v410, v120);
                v135 = *(v22 + *MEMORY[0x277CD73C8]);
                v136 = *(v22 + *MEMORY[0x277CD73D8]);
                v137 = BYTE1(*(v22 + *MEMORY[0x277CD73D8]));
                v138 = vbicq_s8(v408, v118);
                v139 = BYTE2(*(v22 + *MEMORY[0x277CD73D8]));
                v140 = BYTE3(*(v22 + *MEMORY[0x277CD73D8]));
                if ((v135 & 0xFFF8) != 0)
                {
                  v141 = v135 >> 3;
                  v384[0] = v138;
                  v384[1] = v131;
                  v384[2] = v134;
                  v384[3] = v130;
                  v384[4] = v133;
                  v384[5] = v129;
                  v384[6] = v132;
                  v384[7] = v128;
                  v142 = *(v384 + (v136 & 0xF)) / v141;
                  v383[0] = v138;
                  v383[1] = v131;
                  v383[2] = v134;
                  v383[3] = v130;
                  v383[4] = v133;
                  v383[5] = v129;
                  v383[6] = v132;
                  v383[7] = v128;
                  v143 = *(v383 + (v137 & 0xF));
                  v382[0] = v138;
                  v382[1] = v131;
                  v382[2] = v134;
                  v382[3] = v130;
                  v382[4] = v133;
                  v382[5] = v129;
                  v382[6] = v132;
                  v382[7] = v128;
                  v144 = *(v382 + (v139 & 0xF)) / v141;
                  v381[0] = v138;
                  v381[1] = v131;
                  v381[2] = v134;
                  v381[3] = v130;
                  v381[4] = v133;
                  v381[5] = v129;
                  v381[6] = v132;
                  v381[7] = v128;
                  v145 = v144;
                  v146 = *(v381 + (v140 & 0xF)) / v141;
                  v147 = v142;
                  v148 = v143 / v141;
                }

                else
                {
                  v380[0] = v138;
                  v380[1] = v131;
                  v380[2] = v134;
                  v380[3] = v130;
                  v380[4] = v133;
                  v380[5] = v129;
                  v380[6] = v132;
                  v380[7] = v128;
                  v379[0] = v138;
                  v379[1] = v131;
                  v379[2] = v134;
                  v379[3] = v130;
                  v379[4] = v133;
                  v379[5] = v129;
                  v379[6] = v132;
                  v379[7] = v128;
                  v378[0] = v138;
                  v378[1] = v131;
                  v378[2] = v134;
                  v378[3] = v130;
                  v378[4] = v133;
                  v378[5] = v129;
                  v378[6] = v132;
                  v378[7] = v128;
                  v377[0] = v138;
                  v377[1] = v131;
                  v377[2] = v134;
                  v377[3] = v130;
                  v377[4] = v133;
                  v377[5] = v129;
                  v377[6] = v132;
                  v377[7] = v128;
                  v145 = *(v378 + (v139 & 0xF));
                  v146 = *(v377 + (v140 & 0xF));
                  v147 = *(v380 + (v136 & 0xF));
                  v148 = *(v379 + (v137 & 0xF));
                }

                v149 = v341;
                v149.i32[2] = v319;
                v342 = v149;
                v150 = v331;
                v150.i32[2] = v322;
                v332 = v150;
                v151 = v336;
                v151.i32[2] = v325;
                v337 = v151;
                v152 = (v22 + *MEMORY[0x277CD7410]);
                v153 = *v152;
                v154 = v152[1];
                v155 = v152[2];
                v376 = v152[3];
                v375[2] = v155;
                v375[1] = v154;
                v375[0] = v153;
                v156 = v147 * (*(v375 + (v136 & 0xF)) - 1);
                v374[3] = v376;
                v374[2] = v155;
                v374[1] = v154;
                v374[0] = v153;
                v157 = v156 + v148 * (*(v374 + (v137 & 0xF)) - 1);
                v373[3] = v376;
                v373[2] = v155;
                v373[1] = v154;
                v373[0] = v153;
                v158 = v157 + v145 * (*(v373 + (v139 & 0xF)) - 1);
                v372[3] = v376;
                v372[2] = v155;
                v372[1] = v154;
                v372[0] = v153;
                v159 = (32 * (HIDWORD(v147) != 0)) | ((HIDWORD(v148) != 0) << 6) | ((HIDWORD(v145) != 0) << 7) | ((HIDWORD(v146) != 0) << 8) | (((v158 + v146 * (*(v372 + (v140 & 0xF)) - 1)) >> 32 != 0) << 9) | v113;
                makeStrideBytes();
                v160 = &v20[*v66];
                v161.i64[0] = 0x100000001;
                v161.i64[1] = 0x100000001;
                v162 = vceqq_s32(*v160, v161);
                v163.i64[0] = v162.i32[0];
                v163.i64[1] = v162.i32[1];
                v164 = v163;
                v165 = vceqq_s32(v160[1], v161);
                v163.i64[0] = v165.i32[0];
                v163.i64[1] = v165.i32[1];
                v166 = v163;
                v167 = vceqq_s32(v160[2], v161);
                v163.i64[0] = v167.i32[0];
                v163.i64[1] = v167.i32[1];
                v168 = v163;
                v169 = vceqq_s32(v160[3], v161);
                v163.i64[0] = v169.i32[0];
                v163.i64[1] = v169.i32[1];
                v170 = v163;
                v163.i64[0] = v162.i32[2];
                v163.i64[1] = v162.i32[3];
                v171 = v163;
                v163.i64[0] = v165.i32[2];
                v163.i64[1] = v165.i32[3];
                v172 = v163;
                v163.i64[0] = v167.i32[2];
                v163.i64[1] = v167.i32[3];
                v173 = v163;
                v163.i64[0] = v169.i32[2];
                v163.i64[1] = v169.i32[3];
                v174 = vbicq_s8(v415, v163);
                v175 = vbicq_s8(v413, v173);
                v176 = vbicq_s8(v411, v172);
                v177 = vbicq_s8(v409, v171);
                v178 = vbicq_s8(v414, v170);
                v179 = vbicq_s8(v412, v168);
                v180 = vbicq_s8(v410, v166);
                v181 = *&v20[*MEMORY[0x277CD73C8]];
                v182 = *&v20[*MEMORY[0x277CD73D8]];
                v183 = BYTE1(*&v20[*MEMORY[0x277CD73D8]]);
                v184 = vbicq_s8(v408, v164);
                v185 = BYTE2(*&v20[*MEMORY[0x277CD73D8]]);
                v186 = BYTE3(*&v20[*MEMORY[0x277CD73D8]]);
                v302 = v21;
                if ((v181 & 0xFFF8) != 0)
                {
                  v187 = v181 >> 3;
                  v371[0] = v184;
                  v371[1] = v177;
                  v371[2] = v180;
                  v371[3] = v176;
                  v371[4] = v179;
                  v371[5] = v175;
                  v371[6] = v178;
                  v371[7] = v174;
                  v188 = *(v371 + (v182 & 0xF)) / v187;
                  v370[0] = v184;
                  v370[1] = v177;
                  v370[2] = v180;
                  v370[3] = v176;
                  v370[4] = v179;
                  v370[5] = v175;
                  v370[6] = v178;
                  v370[7] = v174;
                  v189 = *(v370 + (v183 & 0xF));
                  v369[0] = v184;
                  v369[1] = v177;
                  v369[2] = v180;
                  v369[3] = v176;
                  v369[4] = v179;
                  v369[5] = v175;
                  v369[6] = v178;
                  v369[7] = v174;
                  v190 = *(v369 + (v185 & 0xF)) / v187;
                  v368[0] = v184;
                  v368[1] = v177;
                  v368[2] = v180;
                  v368[3] = v176;
                  v368[4] = v179;
                  v368[5] = v175;
                  v368[6] = v178;
                  v368[7] = v174;
                  v191 = v190;
                  v192 = *(v368 + (v186 & 0xF)) / v187;
                  v193 = v188;
                  v194 = v189 / v187;
                }

                else
                {
                  v367[0] = v184;
                  v367[1] = v177;
                  v367[2] = v180;
                  v367[3] = v176;
                  v367[4] = v179;
                  v367[5] = v175;
                  v367[6] = v178;
                  v367[7] = v174;
                  v366[0] = v184;
                  v366[1] = v177;
                  v366[2] = v180;
                  v366[3] = v176;
                  v366[4] = v179;
                  v366[5] = v175;
                  v366[6] = v178;
                  v366[7] = v174;
                  v365[0] = v184;
                  v365[1] = v177;
                  v365[2] = v180;
                  v365[3] = v176;
                  v365[4] = v179;
                  v365[5] = v175;
                  v365[6] = v178;
                  v365[7] = v174;
                  v364[0] = v184;
                  v364[1] = v177;
                  v364[2] = v180;
                  v364[3] = v176;
                  v364[4] = v179;
                  v364[5] = v175;
                  v364[6] = v178;
                  v364[7] = v174;
                  v191 = *(v365 + (v185 & 0xF));
                  v192 = *(v364 + (v186 & 0xF));
                  v193 = *(v367 + (v182 & 0xF));
                  v194 = *(v366 + (v183 & 0xF));
                }

                v301 = v43;
                v195 = v342;
                v195.i32[3] = v43;
                v343 = v195;
                v196 = v332;
                v196.i32[3] = v44;
                v333 = v196;
                v197 = v337;
                v197.i32[3] = v326;
                v338 = v197;
                v198 = &v20[*MEMORY[0x277CD7410]];
                v199 = *v198;
                v200 = *(v198 + 1);
                v201 = *(v198 + 2);
                v363 = *(v198 + 3);
                v362[2] = v201;
                v362[1] = v200;
                v362[0] = v199;
                v202 = v193 * (*(v362 + (v182 & 0xF)) - 1);
                v361[3] = v363;
                v361[2] = v201;
                v361[1] = v200;
                v361[0] = v199;
                v203 = v202 + v194 * (*(v361 + (v183 & 0xF)) - 1);
                v360[3] = v363;
                v360[2] = v201;
                v360[1] = v200;
                v360[0] = v199;
                v204 = v203 + v191 * (*(v360 + (v185 & 0xF)) - 1);
                v359[3] = v363;
                v359[2] = v201;
                v359[1] = v200;
                v359[0] = v199;
                v205 = v159 | ((HIDWORD(v193) != 0) << 10) | ((HIDWORD(v194) != 0) << 11) | ((HIDWORD(v191) != 0) << 12) | ((HIDWORD(v192) != 0) << 13) | (((v204 + v192 * (*(v359 + (v186 & 0xF)) - 1)) >> 32 != 0) << 14);
                makeStrideBytes();
                v206 = &v329[*v66];
                v207.i64[0] = 0x100000001;
                v207.i64[1] = 0x100000001;
                v208 = vceqq_s32(*v206, v207);
                v209.i64[0] = v208.i32[0];
                v209.i64[1] = v208.i32[1];
                v210 = v209;
                v211 = vceqq_s32(v206[1], v207);
                v209.i64[0] = v211.i32[0];
                v209.i64[1] = v211.i32[1];
                v212 = v209;
                v213 = vceqq_s32(v206[2], v207);
                v209.i64[0] = v213.i32[0];
                v209.i64[1] = v213.i32[1];
                v214 = v209;
                v215 = vceqq_s32(v206[3], v207);
                v209.i64[0] = v215.i32[0];
                v209.i64[1] = v215.i32[1];
                v216 = v209;
                v209.i64[0] = v208.i32[2];
                v209.i64[1] = v208.i32[3];
                v217 = v209;
                v209.i64[0] = v211.i32[2];
                v209.i64[1] = v211.i32[3];
                v218 = v209;
                v209.i64[0] = v213.i32[2];
                v209.i64[1] = v213.i32[3];
                v219 = v209;
                v209.i64[0] = v215.i32[2];
                v209.i64[1] = v215.i32[3];
                v220 = vbicq_s8(v415, v209);
                v221 = vbicq_s8(v413, v219);
                v222 = vbicq_s8(v411, v218);
                v223 = vbicq_s8(v409, v217);
                v224 = vbicq_s8(v414, v216);
                v225 = vbicq_s8(v412, v214);
                v226 = vbicq_s8(v410, v212);
                v227 = *&v329[*MEMORY[0x277CD73C8]];
                v228 = *&v329[*MEMORY[0x277CD73D8]];
                v229 = BYTE1(*&v329[*MEMORY[0x277CD73D8]]);
                v230 = vbicq_s8(v408, v210);
                v231 = BYTE2(*&v329[*MEMORY[0x277CD73D8]]);
                v232 = BYTE3(*&v329[*MEMORY[0x277CD73D8]]);
                if ((v227 & 0xFFF8) != 0)
                {
                  v233 = v227 >> 3;
                  v358[0] = v230;
                  v358[1] = v223;
                  v358[2] = v226;
                  v358[3] = v222;
                  v358[4] = v225;
                  v358[5] = v221;
                  v358[6] = v224;
                  v358[7] = v220;
                  v234 = *(v358 + (v228 & 0xF)) / v233;
                  v357[0] = v230;
                  v357[1] = v223;
                  v357[2] = v226;
                  v357[3] = v222;
                  v357[4] = v225;
                  v357[5] = v221;
                  v357[6] = v224;
                  v357[7] = v220;
                  v235 = *(v357 + (v229 & 0xF));
                  v356[0] = v230;
                  v356[1] = v223;
                  v356[2] = v226;
                  v356[3] = v222;
                  v356[4] = v225;
                  v356[5] = v221;
                  v356[6] = v224;
                  v356[7] = v220;
                  v236 = *(v356 + (v231 & 0xF)) / v233;
                  v355[0] = v230;
                  v355[1] = v223;
                  v355[2] = v226;
                  v355[3] = v222;
                  v355[4] = v225;
                  v355[5] = v221;
                  v355[6] = v224;
                  v355[7] = v220;
                  v237 = v236;
                  v238 = *(v355 + (v232 & 0xF)) / v233;
                  v239 = v234;
                  v240 = v235 / v233;
                }

                else
                {
                  v354[0] = v230;
                  v354[1] = v223;
                  v354[2] = v226;
                  v354[3] = v222;
                  v354[4] = v225;
                  v354[5] = v221;
                  v354[6] = v224;
                  v354[7] = v220;
                  v353[0] = v230;
                  v353[1] = v223;
                  v353[2] = v226;
                  v353[3] = v222;
                  v353[4] = v225;
                  v353[5] = v221;
                  v353[6] = v224;
                  v353[7] = v220;
                  v352[0] = v230;
                  v352[1] = v223;
                  v352[2] = v226;
                  v352[3] = v222;
                  v352[4] = v225;
                  v352[5] = v221;
                  v352[6] = v224;
                  v352[7] = v220;
                  v351[0] = v230;
                  v351[1] = v223;
                  v351[2] = v226;
                  v351[3] = v222;
                  v351[4] = v225;
                  v351[5] = v221;
                  v351[6] = v224;
                  v351[7] = v220;
                  v237 = *(v352 + (v231 & 0xF));
                  v238 = *(v351 + (v232 & 0xF));
                  v239 = *(v354 + (v228 & 0xF));
                  v240 = *(v353 + (v229 & 0xF));
                }

                v241 = &v329[*MEMORY[0x277CD7410]];
                v242 = *v241;
                v243 = *(v241 + 1);
                v244 = *(v241 + 3);
                v349 = *(v241 + 2);
                v350 = v244;
                v348[0] = v242;
                v348[1] = v243;
                v245 = v239 * (*(v348 + (v228 & 0xF)) - 1);
                v347[2] = v349;
                v347[3] = v244;
                v347[0] = v242;
                v347[1] = v243;
                v246 = v245 + v240 * (*(v347 + (v229 & 0xF)) - 1);
                v346[2] = v349;
                v346[3] = v244;
                v346[0] = v242;
                v346[1] = v243;
                v247 = v246 + v237 * (*(v346 + (v231 & 0xF)) - 1);
                v248 = (HIDWORD(v239) != 0) | (2 * (HIDWORD(v240) != 0)) | (4 * (HIDWORD(v237) != 0)) | (8 * (HIDWORD(v238) != 0));
                v345[2] = v349;
                v345[3] = v244;
                v345[0] = v242;
                v345[1] = v243;
                v249 = (v247 + v238 * (*(v345 + (v232 & 0xF)) - 1)) >> 32 != 0;
                *&v250 = -1;
                *(&v250 + 1) = -1;
                v432 = -1;
                v425 = v250;
                v426 = v250;
                v427 = v105;
                v428 = v304;
                v429 = v205;
                v430 = v248 | (16 * v249);
                v431 = 65539;
                v251 = vcgeq_u32(v343, v338);
                v259 = v326 < 9 && v318.i64[1] < 5uLL && v325 < 9 && v318.i64[0] < 5uLL && v314 < 9 && v317.i64[1] < 5uLL && v18 < 9 && v317.i64[0] < 5uLL;
                v260 = vminvq_u32(v251) >> 31;
                if (v306)
                {
                  v261 = 0x2000000;
                }

                else
                {
                  v261 = 0;
                }

                *&v426 = (2 * (v307 & 7)) | ((v318.i32[2] << 22) + 12582912) & 0xC00000 | ((v314 << 7) + 896) & 0x380 | (16 * v18 + 112) & 0x70 | ((v325 << 10) + 7168) & 0x1C00 | ((v326 << 13) - 0x2000) & 0xE000 | ((v317.i32[0] << 16) + 196608) & 0x30000 | ((v318.i32[0] << 20) + 3145728) & 0x300000 | ((v317.i32[2] << 18) + 786432) & 0xC0000 | v261 | v259 | (v260 << 24);
                v262 = v324 * v327;
                v263.i32[0] = 1;
                v264.i32[0] = 1;
                v264.i32[1] = v324;
                v264.i32[2] = v324 * v327;
                v264.i32[3] = v324 * v327 * v319;
                v263.i32[1] = v305;
                v263.i32[2] = v305 * v323;
                v263.i32[3] = v305 * v323 * v322;
                v408 = v343;
                v409 = v333;
                v410 = v264;
                v411 = v263;
                v412 = vuzp1q_s32(v315, v316);
                v413 = v338;
                v414 = vuzp1q_s32(v317, v318);
                v415 = vuzp1q_s32(v320, v310);
                v417 = 0;
                __asm { FMOV            V1.4S, #1.0 }

                v419 = 0;
                v418 = 0;
                v416 = 1065353216;
                v420 = 0;
                v421 = vdivq_f32(_Q1, vcvtq_f32_u32(v414));
                v422 = v343;
                if (v308)
                {
                  MPSGetUIntDivisorMagicNumber();
                  v423 = v268;
                }

                MPSGetUIntDivisorMagicNumber();
                v424 = v269;
                v270 = *(v22 + *MEMORY[0x277CD7400]);
                v271 = *MEMORY[0x277CD73C8];
                v272 = *(v22 + v271);
                v273 = v272 >> 3;
                if (v270 != (v272 >> 3) * *(v22 + *MEMORY[0x277CD7410]))
                {
                  v274.i32[0] = 1;
                  v274.i32[1] = v270 / v273;
                  v274.i32[2] = v270 / v273 * v323;
                  v274.i32[3] = v274.i32[2] * v322;
                  v411 = v274;
                }

                v275 = 8 * (*&v329[v271] == -1879048176);
                v299 = *(v15 + *MEMORY[0x277CD7360]);
                v300 = *(v15 + *MEMORY[0x277CD7368]);
                MPSLibrary::CreateUberShaderKey();
                v276 = MEMORY[0x277CD7370];
                v277 = *(v15 + *MEMORY[0x277CD7370]);
                PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
                if (!PipelineStateForMPSKey)
                {
                  return -1;
                }

                v279 = PipelineStateForMPSKey;
                [v312 setComputePipelineState:{PipelineStateForMPSKey, 0, v299, v300, 0, 0}];
                v280 = *(v15 + *v276);
                MPSLibrary::ReleaseMPSKey();
                v281 = [v279 threadExecutionWidth];
                if (v281 <= 1)
                {
                  v282 = 1;
                }

                else
                {
                  v282 = v281;
                }

                if (v282 > v324 || (v283 = v282, v324 <= 3) && (v283 = v282, v282 > v327))
                {
                  if (v281 <= 1)
                  {
                    v283 = 1;
                  }

                  else
                  {
                    v283 = v282 >> 1;
                  }
                }

                v284 = [v279 maxTotalThreadsPerThreadgroup];
                v285 = 256;
                if (v284 < 0x100)
                {
                  v285 = v284;
                }

                if (v285 <= 2 * v283)
                {
                  v286 = 1;
                  if (v283 <= v324)
                  {
                    goto LABEL_307;
                  }
                }

                else
                {
                  v286 = v285 / v283;
                  if (v283 <= v324)
                  {
                    goto LABEL_307;
                  }
                }

                if (v283 <= v327 || v283 <= v319)
                {
                  v287 = v286;
                  v286 = v283;
                  v283 = 1;
                  goto LABEL_309;
                }

LABEL_307:
                v287 = 1;
LABEL_309:
                if (v287 >= v319)
                {
                  v288 = v319;
                }

                else
                {
                  v288 = v287;
                }

                if (v283 * v286 >= v282)
                {
                  v289 = v288;
                }

                else
                {
                  v289 = v287;
                }

                if (v286 >= v327)
                {
                  v290 = v327;
                }

                else
                {
                  v290 = v286;
                }

                if (v289 * v283 >= v282)
                {
                  v291 = v290;
                }

                else
                {
                  v291 = v286;
                }

                v292 = (v283 + v324 - 1) / v283;
                v293 = (v327 + v291 - 1) / v291;
                v294 = (v319 + v289 - 1) / v289;
                if ((v308 | v321))
                {
                  if (v308)
                  {
                    v294 = (v301 * v319);
                    v293 = v327;
                    v292 = (v282 + v324 - 1) / v282;
                  }

                  v295 = v22;
                  if (v321)
                  {
                    v289 = 1;
                    v328 = 1;
                    v283 = v282;
                    v339 = v319;
                    v334 = v301;
                    v344 = (v282 + v262 - 1) / v282;
                  }

                  else
                  {
                    v334 = v294;
                    v339 = v293;
                    v344 = v292;
                    v289 = 1;
                    v328 = 1;
                    v283 = v282;
                  }
                }

                else
                {
                  v328 = v291;
                  v334 = (v319 + v289 - 1) / v289;
                  v339 = v293;
                  v344 = (v283 + v324 - 1) / v283;
                  v295 = v22;
                }

                v296 = v312;
                [v312 setComputePipelineState:v279];
                v297 = malloc_type_calloc(0x50uLL, 4uLL, 0x100004052888210uLL);
                [v312 setBuffer:objc_msgSend(v302 offset:"buffer") atIndex:{*(*(v303 + 8) + 64) + MPSGetLinearOffsetBytes(v302, 0, 4, v297, 0), 0}];
                [v312 setBuffer:objc_msgSend(v295 offset:"buffer") atIndex:{*(*(v303 + 8) + 224) + MPSGetLinearOffsetBytes(v295, 0, 4, v297 + 80, 0), 1}];
                [v312 setBuffer:objc_msgSend(v20 offset:"buffer") atIndex:{*(*(v303 + 8) + 144) + MPSGetLinearOffsetBytes(v20, 0, 4, v297 + 160, 0), 2}];
                [v312 setBuffer:objc_msgSend(v329 offset:"buffer") atIndex:{*(*(v303 + 32) + 64) + MPSGetLinearOffsetBytes(v329, 0, 4, v297 + 240, 0), 3}];
                [v312 setBytes:v297 length:320 atIndex:23];
                free(v297);
                [v312 setBytes:&v408 length:224 atIndex:29];
                if ((v308 | v321))
                {
                  [v312 setBuffer:objc_msgSend(v295 offset:"buffer") atIndex:{0, 28}];
                  [v312 setBuffer:objc_msgSend(v20 offset:"buffer") atIndex:{0, 27}];
                  if (v311 <= 23)
                  {
                    if ((atomic_load_explicit(&qword_27DF86AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86AD0))
                    {
                      xmmword_27DF86BC0 = 0u;
                      xmmword_27DF86BB0 = 0u;
                      dword_27DF86BD0 = 1065353216;
                      qword_27DF86BD8 = 850045863;
                      xmmword_27DF86BE0 = 0u;
                      unk_27DF86BF0 = 0u;
                      xmmword_27DF86C00 = 0u;
                      qword_27DF86C10 = 0;
                      __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86BB0, &dword_2399F7000);
                      __cxa_guard_release(&qword_27DF86AD0);
                    }

                    v296 = v312;
                    [v312 setBuffer:MPSBufferCache::getBuffer(&xmmword_27DF86BB0 offset:objc_msgSend(objc_msgSend(v309 atIndex:{"commandQueue"), "device"), 0x10uLL, &__block_literal_global_159), 0, 26}];
                    if ((atomic_load_explicit(&qword_27DF86AD8, memory_order_acquire) & 1) == 0)
                    {
                      if (__cxa_guard_acquire(&qword_27DF86AD8))
                      {
                        xmmword_27DF86C18 = 0u;
                        unk_27DF86C28 = 0u;
                        dword_27DF86C38 = 1065353216;
                        qword_27DF86C40 = 850045863;
                        xmmword_27DF86C48 = 0u;
                        unk_27DF86C58 = 0u;
                        xmmword_27DF86C68 = 0u;
                        qword_27DF86C78 = 0;
                        __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86C18, &dword_2399F7000);
                        __cxa_guard_release(&qword_27DF86AD8);
                      }
                    }

                    [v312 setBuffer:MPSBufferCache::getBuffer(&xmmword_27DF86C18 offset:objc_msgSend(objc_msgSend(v309 atIndex:{"commandQueue"), "device"), 0x10uLL, 0), 0, 25}];
                  }
                }

                v407[0] = v344;
                v407[1] = v339;
                v407[2] = v334;
                v406[0] = v283;
                v406[1] = v328;
                v406[2] = v289;
                [v296 dispatchThreadgroups:v407 threadsPerThreadgroup:v406];
                MPSLibrary::ReleaseComputeState();
                return 0;
            }
          }

          v63 = 18;
          goto LABEL_244;
      }
    }

    goto LABEL_197;
  }

  return EncodePoolingMultiDestination(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t EncodePoolingMultiDestination(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;
  v370 = v10;
  v386 = v11;
  v12 = *(v7 + *MEMORY[0x277CD7350]);
  v358 = *(v7 + 136);
  v357 = *(v7 + 144);
  v369 = *(v7 + 152);
  v371 = *(v7 + 160);
  v355 = *(v7 + 208);
  v356 = *(v7 + 200);
  v365 = *(v7 + 216);
  v354 = *(v7 + 224);
  v351 = *(v7 + 168);
  v350 = *(v7 + 176);
  v349 = *(v7 + 184);
  v352 = *(v7 + 192);
  v347 = *(v7 + 240);
  v348 = *(v7 + 232);
  v345 = *(v7 + 256);
  v346 = *(v7 + 248);
  v385 = v7;
  v13 = *(v7 + 124);
  if (v13 != 1 && v13 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  MEMORY[0x23EE7C450](v444, v370, 0);
  v14 = [*(v9 + 16) objectAtIndexedSubscript:0];
  v15 = [*(v9 + 40) objectAtIndexedSubscript:0];
  v16 = [*(v9 + 40) objectAtIndexedSubscript:1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();
  v19 = v18;
  v20 = MEMORY[0x277CD7410];
  v21 = *MEMORY[0x277CD7410];
  v22 = *(v14 + v21);
  v23 = *(v14 + v21 + 16);
  v24 = *(v14 + v21 + 32);
  v25 = *MEMORY[0x277CD73D8];
  v26 = *(v14 + v25);
  v443 = *(v14 + v21 + 48);
  v442[2] = v24;
  v442[1] = v23;
  v442[0] = v22;
  v361 = *(v442 + (v26 & 0xF));
  v441[3] = v443;
  v441[2] = v24;
  v441[1] = v23;
  v441[0] = v22;
  v363 = *(v441 + (BYTE1(v26) & 0xF));
  v440[3] = v443;
  v440[2] = v24;
  v440[1] = v23;
  v440[0] = v22;
  v362 = *(v440 + (BYTE2(v26) & 0xF));
  v439[3] = v443;
  v439[2] = v24;
  v439[1] = v23;
  v439[0] = v22;
  v27 = *(v439 + (BYTE3(v26) & 0xF));
  if (isKindOfClass)
  {
    if ((v18 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v28 = v20;
    v29 = (v16 + *v20);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v16 + *MEMORY[0x277CD73D8]);
    v33 = v29[2];
    v433 = v29[3];
    v432[2] = v33;
    v432[1] = v31;
    v432[0] = v30;
    v431[3] = v433;
    v431[2] = v33;
    v431[1] = v31;
    v431[0] = v30;
    v430[3] = v433;
    v430[2] = v33;
    v430[1] = v31;
    v430[0] = v30;
    v429[3] = v433;
    v429[2] = v33;
    v429[1] = v31;
    v429[0] = v30;
    v30.i32[0] = *(v432 + (v32 & 0xF));
    v30.i32[1] = *(v431 + (BYTE1(v32) & 0xF));
    v30.i32[2] = *(v430 + (BYTE2(v32) & 0xF));
    v30.i32[3] = *(v429 + (BYTE3(v32) & 0xF));
    v377 = v30;
  }

  else
  {
    v34 = *(v15 + v21);
    v35 = *(v15 + v21 + 16);
    v36 = *(v15 + v21 + 32);
    v37 = *(v15 + v25);
    v438 = *(v15 + v21 + 48);
    v437[2] = v36;
    v437[1] = v35;
    v437[0] = v34;
    v38 = *(v437 + (v37 & 0xF));
    v436[3] = v438;
    v436[2] = v36;
    v436[1] = v35;
    v436[0] = v34;
    v435[3] = v438;
    v435[2] = v36;
    v435[1] = v35;
    v435[0] = v34;
    v434[3] = v438;
    v434[2] = v36;
    v434[1] = v35;
    v434[0] = v34;
    v34.i32[0] = v38;
    v34.i32[1] = *(v436 + (BYTE1(v37) & 0xF));
    v34.i32[2] = *(v435 + (BYTE2(v37) & 0xF));
    v34.i32[3] = *(v434 + (BYTE3(v37) & 0xF));
    v377 = v34;
    if (v18)
    {
      v28 = MEMORY[0x277CD7410];
    }

    else
    {
      v28 = MEMORY[0x277CD7410];
      if (*(v16 + v21 + 4 * (*(v16 + v25) & 0xF)) != v38 && MTLReportFailureTypeEnabled())
      {
        v326 = 0;
        MTLReportFailure();
      }

      if (*(v16 + *v20 + 4 * (*(v16 + *MEMORY[0x277CD73D8] + 1) & 0xF)) != *(v15 + *v20 + 4 * (*(v15 + *MEMORY[0x277CD73D8] + 1) & 0xF)) && MTLReportFailureTypeEnabled())
      {
        v326 = 1;
        MTLReportFailure();
      }

      if (*(v16 + *v20 + 4 * (*(v16 + *MEMORY[0x277CD73D8] + 2) & 0xF)) != *(v15 + *v20 + 4 * (*(v15 + *MEMORY[0x277CD73D8] + 2) & 0xF)) && MTLReportFailureTypeEnabled())
      {
        v326 = 2;
        MTLReportFailure();
      }

      if (*(v16 + *v20 + 4 * (*(v16 + *MEMORY[0x277CD73D8] + 3) & 0xF)) != *(v15 + *v20 + 4 * (*(v15 + *MEMORY[0x277CD73D8] + 3) & 0xF)) && MTLReportFailureTypeEnabled())
      {
        v326 = 3;
        MTLReportFailure();
      }
    }
  }

  v39.i64[0] = __PAIR64__(v363, v361);
  v39.i64[1] = __PAIR64__(v27, v362);
  v40 = *(v12 + 1482) << 16;
  v41 = 1;
  if (v354 <= 0x10)
  {
    v42 = 1;
  }

  else
  {
    v42 = 2;
  }

  if (v40 > 0x200000)
  {
    ++v42;
  }

  if (v365 <= 0x10)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  if (v40 > 0x200000)
  {
    ++v43;
  }

  if (v355 <= 0x10)
  {
    v44 = 1;
  }

  else
  {
    v44 = 2;
  }

  if (v40 > 0x200000)
  {
    ++v44;
  }

  if (v356 > 0x10)
  {
    v41 = 2;
  }

  v364 = *(v14 + *MEMORY[0x277CD73C8]);
  if (v40 <= 0x200000)
  {
    v45 = v41;
  }

  else
  {
    v45 = v41 + 1;
  }

  v46 = v356 << v45;
  _CF = v358 > 8 && v358 >= v46;
  v48 = _CF;
  v50 = v357 > 8 && v357 >= v355 << v44;
  v52 = v369 > 8 && v369 >= v365 << v43;
  v54 = v371 > 8 && v371 >= v354 << v42;
  v372 = v39;
  if ((v19 & 1) == 0)
  {
    v368 = 0;
    v378 = 0;
    v374 = 0;
    v360 = v371;
    v59 = v369;
    v379 = v365;
    v380 = v357;
    v382 = v356;
    v383 = v358;
    v381 = v355;
    v334 = v352;
    v335 = v354;
    v336 = v349;
    v337 = v350;
    v344 = v345;
    v338 = v351;
    v339 = v346;
    v341 = v347;
    v342 = v348;
    v388 = v377;
    goto LABEL_71;
  }

  v374 = 0;
  v368 = 0;
  if (v385[31] == 5 || !((v357 * v358 * v369 * v371 > 0xFF) | ((v54 || v52) | v50 | v48) & 1))
  {
    v360 = v371;
    v59 = v369;
    v335 = v354;
    v379 = v365;
    v380 = v357;
    v381 = v355;
    v382 = v356;
    v383 = v358;
    v334 = v352;
    v336 = v349;
    v337 = v350;
    v344 = v345;
    v338 = v351;
    v339 = v346;
    v341 = v347;
    v342 = v348;
    v388 = v377;
    v378 = 0;
    goto LABEL_71;
  }

  if (v48)
  {
    v55 = 0;
    v56 = 0;
    v57 = v377;
    v57.i32[0] = v361;
    v388 = v57;
    v383 = 1;
    v382 = 1;
    v342 = 1;
    v368 = 1;
    if (!v50)
    {
      goto LABEL_63;
    }

LABEL_128:
    v58 = 0;
    v378 = v368++ | 2;
    v71 = v388;
    v71.i32[1] = v363;
    v388 = v71;
    v380 = 1;
    v381 = 1;
    v341 = 1;
    if (v52)
    {
      goto LABEL_129;
    }

LABEL_119:
    if (v369 > 1 || v349 || v365 != 1 || v377.i32[2] != v362)
    {
      if (v54)
      {
        v337 = v58;
        v338 = v55;
        v334 = 0;
        v378 |= 8u;
        ++v368;
        v74 = v388;
        v74.i32[3] = v27;
        v388 = v74;
        v360 = 1;
        v339 = v346;
        v336 = v349;
        v379 = v365;
        v59 = v369;
        goto LABEL_134;
      }

      v56 = 1;
      v339 = v346;
      v66 = v349;
      v379 = v365;
      v59 = v369;
      v67 = v352;
      v68 = v354;
      v69 = v354;
      v70 = v371;
      if (v371 > 1)
      {
        goto LABEL_201;
      }

      goto LABEL_192;
    }

    v59 = v369;
    v339 = v346;
    if (v54)
    {
      goto LABEL_130;
    }

LABEL_124:
    v66 = 0;
    v379 = 1;
    v67 = v352;
    v68 = v354;
    v69 = v354;
    v70 = v371;
    if (v371 > 1)
    {
LABEL_201:
      v336 = v66;
      v337 = v58;
      v338 = v55;
      v334 = v67;
      v335 = v69;
      if (v378)
      {
        v360 = v70;
        v75 = v345;
        goto LABEL_203;
      }

      v378 = 0;
      v374 = 0;
      v360 = v70;
      v344 = v345;
LABEL_71:
      v60 = MEMORY[0x277CD7350];
      goto LABEL_72;
    }

LABEL_192:
    v67 = v352;
    v69 = v68;
    if (!v352)
    {
      if (v68 == 1 && v377.i32[3] == v27)
      {
        v69 = 1;
      }

      else
      {
        v56 = 1;
        v69 = v68;
      }

      if ((v56 & 1) == 0)
      {
LABEL_204:
        v79 = 0;
        v374 = 0;
        if (!v378)
        {
          goto LABEL_585;
        }

LABEL_558:
        v310 = v371;
        if (v79)
        {
          goto LABEL_585;
        }

        if (v378)
        {
          if (v368 < 2)
          {
            TempBuffer = 0;
          }

          else
          {
            v314 = vextq_s8(v388, v377, 4uLL);
            *v314.i8 = vmul_s32(*v314.i8, *&vextq_s8(v314, v314, 8uLL));
            TempBuffer = MPSAutoCache::GetTempBuffer(v444, 4 * (v314.i32[0] * v314.i32[1]), 0);
          }

          v316 = v388;
          v316.i32[0] = v377.i32[0];
          v388 = v316;
          v79 = EncodePoolingMultiDestination1DPass(v385, v386, v370, v9, 0, v358, v356, v348, v351, v374, TempBuffer, v364 == 268435472);
          v311 = 2;
          v374 = TempBuffer;
          v310 = v371;
          v312 = v369;
          v313 = v365;
          if ((v378 & 2) == 0)
          {
            goto LABEL_569;
          }
        }

        else
        {
          v79 = 0;
          v311 = 1;
          v312 = v369;
          v313 = v365;
          if ((v378 & 2) == 0)
          {
            goto LABEL_569;
          }
        }

        if (!v79)
        {
          if (v311 >= v368)
          {
            v318 = 0;
          }

          else
          {
            v317 = vuzp1q_s32(v388, vextq_s8(v388, v377, 0xCuLL));
            *v317.i8 = vmul_s32(*v317.i8, *&vextq_s8(v317, v317, 8uLL));
            v318 = MPSAutoCache::GetTempBuffer(v444, 4 * (v317.i32[0] * v317.i32[1]), 0);
          }

          v319 = v388;
          v319.i32[1] = v377.i32[1];
          v388 = v319;
          v79 = EncodePoolingMultiDestination1DPass(v385, v386, v370, v9, 1, v357, v355, v347, v350, v374, v318, v364 == 268435472);
          ++v311;
          v310 = v371;
          v312 = v369;
          v313 = v365;
          if ((v378 & 4) == 0)
          {
            goto LABEL_576;
          }

          goto LABEL_573;
        }

LABEL_569:
        v318 = v374;
        if ((v378 & 4) == 0)
        {
          goto LABEL_576;
        }

LABEL_573:
        if (!v79)
        {
          if (v311 >= v368)
          {
            v322 = 0;
          }

          else
          {
            v320 = vrev64q_s32(v388);
            v321 = v320;
            v321.i32[3] = v377.i32[2];
            *v320.i8 = vmul_s32(*v320.i8, *&vextq_s8(v321, v321, 8uLL));
            v322 = MPSAutoCache::GetTempBuffer(v444, 4 * (v320.i32[0] * v320.i32[1]), 0);
            v312 = v369;
            v313 = v365;
          }

          v323 = v388;
          v323.i32[2] = v377.i32[2];
          v388 = v323;
          v79 = EncodePoolingMultiDestination1DPass(v385, v386, v370, v9, 2, v312, v313, v346, v349, v318, v322, v364 == 268435472);
          ++v311;
          v310 = v371;
          if ((v378 & 8) == 0)
          {
            goto LABEL_585;
          }

          goto LABEL_580;
        }

LABEL_576:
        v322 = v318;
        if ((v378 & 8) == 0)
        {
          goto LABEL_585;
        }

LABEL_580:
        if (!v79)
        {
          if (v311 >= v368)
          {
            v324 = 0;
          }

          else
          {
            v324 = MPSAutoCache::GetTempBuffer(v444, 4 * (v388.i32[1] * v377.i32[3] * v388.i32[0] * v388.i32[2]), 0);
            v310 = v371;
          }

          v79 = EncodePoolingMultiDestination1DPass(v385, v386, v370, v9, 3, v310, v354, v345, v352, v322, v324, v364 == 268435472);
        }

        goto LABEL_585;
      }

      v67 = 0;
      v70 = v371;
    }

    goto LABEL_201;
  }

  if (v358 <= 1 && !v351 && v356 == 1 && v377.i32[0] == v361)
  {
    v55 = 0;
    v56 = 0;
    v368 = 0;
    v382 = 1;
    v383 = v358;
  }

  else
  {
    v368 = 0;
    v56 = 1;
    v382 = v356;
    v383 = v358;
    v55 = v351;
  }

  v342 = v348;
  v388 = v377;
  if (v50)
  {
    goto LABEL_128;
  }

LABEL_63:
  if (v357 > 1 || v350 || v355 != 1 || v377.i32[1] != v363)
  {
    v56 = 1;
    v380 = v357;
    v381 = v355;
    v58 = v350;
    v341 = v347;
    v378 = v368;
    if (v52)
    {
      goto LABEL_129;
    }

    goto LABEL_119;
  }

  v58 = 0;
  v381 = 1;
  v380 = v357;
  v341 = v347;
  v378 = v368;
  if (!v52)
  {
    goto LABEL_119;
  }

LABEL_129:
  v378 |= 4u;
  ++v368;
  v72 = v388;
  v72.i32[2] = v362;
  v388 = v72;
  v59 = 1;
  v339 = 1;
  if (!v54)
  {
    goto LABEL_124;
  }

LABEL_130:
  v378 |= 8u;
  ++v368;
  v73 = v388;
  v73.i32[3] = v27;
  v388 = v73;
  if ((v56 & 1) == 0)
  {
    goto LABEL_204;
  }

  v337 = v58;
  v338 = v55;
  v336 = 0;
  v334 = 0;
  v379 = 1;
  v360 = 1;
LABEL_134:
  v335 = 1;
  v75 = 1;
LABEL_203:
  v344 = v75;
  v60 = MEMORY[0x277CD7350];
  v374 = MPSAutoCache::GetTempBuffer(v444, 4 * (v388.i32[0] * v388.i32[1] * v388.i32[2] * v388.i32[3]), 0);
LABEL_72:
  v343 = *(v385 + *v60);
  v353 = *(v385 + *MEMORY[0x277CD7370]);
  v61 = v385[31];
  v332 = v385[31];
  v333 = v385[32];
  v331 = v385[33];
  v387 = v9;
  v384 = [*(v9 + 16) objectAtIndexedSubscript:{0, v326}];
  v376 = [*(v9 + 40) objectAtIndexedSubscript:0];
  v375 = [*(v9 + 40) objectAtIndexedSubscript:1];
  objc_opt_class();
  v367 = objc_opt_isKindOfClass();
  objc_opt_class();
  v366 = objc_opt_isKindOfClass();
  v62 = *MEMORY[0x277CD73C8];
  v63 = *&v384[v62];
  if (v63 <= 285212703)
  {
    v64 = v9;
    if (v63 <= 31)
    {
      if (v63 > 7)
      {
        if (v63 == 8)
        {
          v65 = 6;
          if (v367)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
        }

        if (v63 == 16)
        {
          v65 = 7;
          if (v367)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
        }
      }

      else
      {
        if (v63 == -1879048176)
        {
          v65 = 12;
          if (v367)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
        }

        if (v63 == 4)
        {
          v65 = 5;
          if (v367)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
        }
      }
    }

    else if (v63 <= 268435463)
    {
      if (v63 == 32)
      {
        v65 = 8;
        if (v367)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      }

      if (v63 == 64)
      {
        v65 = 9;
        if (v367)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      }
    }

    else
    {
      switch(v63)
      {
        case 268435464:
          v65 = 15;
          if (v367)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
        case 268435472:
          v65 = 10;
          if (v367)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
        case 268435488:
          v65 = 11;
          if (v367)
          {
            goto LABEL_189;
          }

          goto LABEL_156;
      }
    }

    goto LABEL_155;
  }

  v64 = v9;
  if (v63 <= 536870915)
  {
    if (v63 > 301989895)
    {
      if (v63 == 301989896)
      {
        v65 = 16;
        if (v367)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      }

      if (v63 == 335544328)
      {
        v65 = 17;
        if (v367)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      }
    }

    else
    {
      if (v63 == 285212704)
      {
        v65 = 13;
        if (v367)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      }

      if (v63 == 285212736)
      {
        v65 = 14;
        if (v367)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      }
    }

    goto LABEL_155;
  }

  if (v63 > 536870927)
  {
    switch(v63)
    {
      case 536870928:
        v65 = 2;
        if (v367)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      case 536870944:
        v65 = 3;
        if (v367)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
      case 536870976:
        v65 = 4;
        if (v367)
        {
          goto LABEL_189;
        }

        goto LABEL_156;
    }

    goto LABEL_155;
  }

  if (v63 != 536870916)
  {
    if (v63 == 536870920)
    {
      v65 = 1;
      if (v367)
      {
        goto LABEL_189;
      }

      goto LABEL_156;
    }

LABEL_155:
    v65 = 18;
    if (v367)
    {
      goto LABEL_189;
    }

    goto LABEL_156;
  }

  v65 = 0;
  if (v367)
  {
    goto LABEL_189;
  }

LABEL_156:
  v76 = *&v376[v62];
  if (v76 > 285212703)
  {
    if (v76 <= 536870915)
    {
      if (v76 > 301989895)
      {
        if (v76 == 301989896)
        {
          v77 = 16;
          goto LABEL_217;
        }

        if (v76 == 335544328)
        {
          v77 = 17;
          goto LABEL_217;
        }
      }

      else
      {
        if (v76 == 285212704)
        {
          v77 = 13;
          goto LABEL_217;
        }

        if (v76 == 285212736)
        {
          v77 = 14;
          goto LABEL_217;
        }
      }

      goto LABEL_216;
    }

    if (v76 > 536870927)
    {
      switch(v76)
      {
        case 536870928:
          v77 = 2;
          goto LABEL_217;
        case 536870944:
          v77 = 3;
          goto LABEL_217;
        case 536870976:
          v77 = 4;
          goto LABEL_217;
      }

      goto LABEL_216;
    }

    if (v76 != 536870916)
    {
      if (v76 == 536870920)
      {
        v77 = 1;
        goto LABEL_217;
      }

      goto LABEL_216;
    }

LABEL_189:
    v359 = 0;
    if (v366)
    {
      goto LABEL_263;
    }

    goto LABEL_218;
  }

  if (v76 <= 31)
  {
    if (v76 > 7)
    {
      if (v76 == 8)
      {
        v77 = 6;
        goto LABEL_217;
      }

      if (v76 == 16)
      {
        v77 = 7;
        goto LABEL_217;
      }
    }

    else
    {
      if (v76 == -1879048176)
      {
        v77 = 12;
        goto LABEL_217;
      }

      if (v76 == 4)
      {
        v77 = 5;
        goto LABEL_217;
      }
    }
  }

  else if (v76 <= 268435463)
  {
    if (v76 == 32)
    {
      v77 = 8;
      goto LABEL_217;
    }

    if (v76 == 64)
    {
      v77 = 9;
      goto LABEL_217;
    }
  }

  else
  {
    switch(v76)
    {
      case 268435464:
        v77 = 15;
        goto LABEL_217;
      case 268435472:
        v77 = 10;
        goto LABEL_217;
      case 268435488:
        v77 = 11;
        goto LABEL_217;
    }
  }

LABEL_216:
  v77 = 18;
LABEL_217:
  v359 = v77;
  if (v366)
  {
    goto LABEL_263;
  }

LABEL_218:
  v80 = *&v375[v62];
  if (v80 > 285212703)
  {
    if (v80 <= 536870915)
    {
      if (v80 > 301989895)
      {
        if (v80 == 301989896)
        {
          v81 = 512;
          goto LABEL_262;
        }

        if (v80 == 335544328)
        {
          v81 = 544;
          goto LABEL_262;
        }
      }

      else
      {
        if (v80 == 285212704)
        {
          v81 = 416;
          goto LABEL_262;
        }

        if (v80 == 285212736)
        {
          v81 = 448;
          goto LABEL_262;
        }
      }
    }

    else if (v80 <= 536870927)
    {
      if (v80 == 536870916)
      {
        v81 = 0;
        goto LABEL_262;
      }

      if (v80 == 536870920)
      {
        v81 = 32;
        goto LABEL_262;
      }
    }

    else
    {
      switch(v80)
      {
        case 536870928:
          v81 = 64;
          goto LABEL_262;
        case 536870944:
          v81 = 96;
          goto LABEL_262;
        case 536870976:
          v81 = 128;
          goto LABEL_262;
      }
    }

LABEL_261:
    v81 = 576;
    goto LABEL_262;
  }

  if (v80 <= 31)
  {
    if (v80 > 7)
    {
      if (v80 == 8)
      {
        v81 = 192;
        goto LABEL_262;
      }

      if (v80 == 16)
      {
        v81 = 224;
        goto LABEL_262;
      }
    }

    else
    {
      if (v80 == -1879048176)
      {
        v81 = 384;
        goto LABEL_262;
      }

      if (v80 == 4)
      {
        v81 = 160;
        goto LABEL_262;
      }
    }

    goto LABEL_261;
  }

  if (v80 <= 268435463)
  {
    if (v80 == 32)
    {
      v81 = 256;
      goto LABEL_262;
    }

    if (v80 == 64)
    {
      v81 = 288;
      goto LABEL_262;
    }

    goto LABEL_261;
  }

  if (v80 == 268435464)
  {
    v81 = 480;
    goto LABEL_262;
  }

  if (v80 == 268435472)
  {
    v81 = 320;
    goto LABEL_262;
  }

  if (v80 != 268435488)
  {
    goto LABEL_261;
  }

  v81 = 352;
LABEL_262:
  v359 |= v81;
LABEL_263:
  v329 = *(v64 + 48);
  makeStrideBytes();
  v82 = MEMORY[0x277CD73D0];
  v83 = &v384[*MEMORY[0x277CD73D0]];
  v84.i64[0] = 0x100000001;
  v84.i64[1] = 0x100000001;
  v85 = vceqq_s32(*v83, v84);
  v86.i64[0] = v85.i32[0];
  v86.i64[1] = v85.i32[1];
  v87 = v86;
  v88 = vceqq_s32(v83[1], v84);
  v86.i64[0] = v88.i32[0];
  v86.i64[1] = v88.i32[1];
  v89 = v86;
  v90 = vceqq_s32(v83[2], v84);
  v86.i64[0] = v90.i32[0];
  v86.i64[1] = v90.i32[1];
  v91 = v86;
  v92 = vceqq_s32(v83[3], v84);
  v86.i64[0] = v92.i32[0];
  v86.i64[1] = v92.i32[1];
  v93 = v86;
  v86.i64[0] = v85.i32[2];
  v86.i64[1] = v85.i32[3];
  v94 = v86;
  v86.i64[0] = v88.i32[2];
  v86.i64[1] = v88.i32[3];
  v95 = v86;
  v86.i64[0] = v90.i32[2];
  v86.i64[1] = v90.i32[3];
  v96 = v86;
  v86.i64[0] = v92.i32[2];
  v86.i64[1] = v92.i32[3];
  v97 = vbicq_s8(v454, v86);
  v98 = vbicq_s8(v452, v96);
  v99 = vbicq_s8(v450, v95);
  v100 = vbicq_s8(v448, v94);
  v101 = vbicq_s8(v453, v93);
  v102 = vbicq_s8(v451, v91);
  v103 = vbicq_s8(v449, v89);
  v104 = vbicq_s8(v447, v87);
  v105 = *&v384[*MEMORY[0x277CD73D8]];
  v106 = *&v384[*MEMORY[0x277CD73C8]];
  if ((v106 & 0xFFF8) != 0)
  {
    v107 = v106 >> 3;
    v108 = *&v384[*MEMORY[0x277CD73D8]];
    v428[0] = v104;
    v428[1] = v100;
    v428[2] = v103;
    v428[3] = v99;
    v428[4] = v102;
    v428[5] = v98;
    v428[6] = v101;
    v428[7] = v97;
    v109 = *(v428 + (v105 & 0xF));
    v110 = BYTE1(v105);
    v427[0] = v104;
    v427[1] = v100;
    v427[2] = v103;
    v427[3] = v99;
    v427[4] = v102;
    v427[5] = v98;
    v427[6] = v101;
    v427[7] = v97;
    v111 = *(v427 + (BYTE1(v105) & 0xF));
    v426[0] = v104;
    v426[1] = v100;
    v426[2] = v103;
    v426[3] = v99;
    v426[4] = v102;
    v426[5] = v98;
    v426[6] = v101;
    v426[7] = v97;
    v112 = *(v426 + (BYTE2(v105) & 0xF)) / v107;
    v425[0] = v104;
    v425[1] = v100;
    v425[2] = v103;
    v425[3] = v99;
    v425[4] = v102;
    v425[5] = v98;
    v425[6] = v101;
    v425[7] = v97;
    v113 = v112;
    v114 = *(v425 + (BYTE3(v105) & 0xF)) / v107;
    v115 = v109 / v107;
    v116 = v111 / v107;
    v117 = BYTE3(v105);
    v118 = BYTE2(v105);
  }

  else
  {
    v108 = *&v384[*MEMORY[0x277CD73D8]];
    v424[0] = v104;
    v424[1] = v100;
    v424[2] = v103;
    v424[3] = v99;
    v424[4] = v102;
    v424[5] = v98;
    v424[6] = v101;
    v424[7] = v97;
    v110 = BYTE1(v105);
    v423[0] = v104;
    v423[1] = v100;
    v423[2] = v103;
    v423[3] = v99;
    v423[4] = v102;
    v423[5] = v98;
    v423[6] = v101;
    v423[7] = v97;
    v118 = BYTE2(v105);
    v422[0] = v104;
    v422[1] = v100;
    v422[2] = v103;
    v422[3] = v99;
    v422[4] = v102;
    v422[5] = v98;
    v422[6] = v101;
    v422[7] = v97;
    v421[0] = v104;
    v421[1] = v100;
    v421[2] = v103;
    v421[3] = v99;
    v421[4] = v102;
    v421[5] = v98;
    v421[6] = v101;
    v421[7] = v97;
    v113 = *(v422 + (BYTE2(v105) & 0xF));
    v114 = *(v421 + (BYTE3(v105) & 0xF));
    v115 = *(v424 + (v105 & 0xF));
    v117 = BYTE3(v105);
    v116 = *(v423 + (BYTE1(v105) & 0xF));
  }

  v119 = &v384[*v28];
  v120 = *v119;
  v121 = *(v119 + 1);
  v122 = *(v119 + 2);
  v123 = HIDWORD(v115) != 0;
  v420 = *(v119 + 3);
  v419[2] = v122;
  v419[1] = v121;
  v419[0] = v120;
  v124 = v115 * (*(v419 + (v108 & 0xF)) - 1);
  v125 = HIDWORD(v116) != 0;
  v418[3] = v420;
  v418[2] = v122;
  v418[1] = v121;
  v418[0] = v120;
  v126 = v124 + v116 * (*(v418 + (v110 & 0xF)) - 1);
  v127 = HIDWORD(v113) != 0;
  v417[3] = v420;
  v417[2] = v122;
  v417[1] = v121;
  v417[0] = v120;
  v128 = v126 + v113 * (*(v417 + (v118 & 0xF)) - 1);
  v416[3] = v420;
  v416[2] = v122;
  v416[1] = v121;
  v416[0] = v120;
  v129 = HIDWORD(v114) != 0;
  v130 = (v128 + v114 * (*(v416 + (v117 & 0xF)) - 1)) >> 32 != 0;
  if (v367)
  {
    v131 = 0;
    if (v366)
    {
      goto LABEL_277;
    }

    goto LABEL_273;
  }

  makeStrideBytes();
  v132 = &v376[*v82];
  v133.i64[0] = 0x100000001;
  v133.i64[1] = 0x100000001;
  v134 = vceqq_s32(*v132, v133);
  v135.i64[0] = v134.i32[0];
  v135.i64[1] = v134.i32[1];
  v136 = v135;
  v137 = vceqq_s32(v132[1], v133);
  v135.i64[0] = v137.i32[0];
  v135.i64[1] = v137.i32[1];
  v138 = v135;
  v139 = vceqq_s32(v132[2], v133);
  v135.i64[0] = v139.i32[0];
  v135.i64[1] = v139.i32[1];
  v140 = v135;
  v141 = vceqq_s32(v132[3], v133);
  v135.i64[0] = v141.i32[0];
  v135.i64[1] = v141.i32[1];
  v142 = v135;
  v135.i64[0] = v134.i32[2];
  v135.i64[1] = v134.i32[3];
  v143 = v135;
  v135.i64[0] = v137.i32[2];
  v135.i64[1] = v137.i32[3];
  v144 = v135;
  v135.i64[0] = v139.i32[2];
  v135.i64[1] = v139.i32[3];
  v145 = v135;
  v135.i64[0] = v141.i32[2];
  v135.i64[1] = v141.i32[3];
  v146 = vbicq_s8(v454, v135);
  v147 = vbicq_s8(v452, v145);
  v148 = vbicq_s8(v450, v144);
  v149 = vbicq_s8(v448, v143);
  v150 = vbicq_s8(v453, v142);
  v151 = vbicq_s8(v451, v140);
  v152 = vbicq_s8(v449, v138);
  v153 = *&v376[*MEMORY[0x277CD73C8]];
  v154 = *&v376[*MEMORY[0x277CD73D8]];
  v155 = BYTE1(*&v376[*MEMORY[0x277CD73D8]]);
  v156 = vbicq_s8(v447, v136);
  v157 = BYTE2(*&v376[*MEMORY[0x277CD73D8]]);
  v158 = BYTE3(*&v376[*MEMORY[0x277CD73D8]]);
  if ((v153 & 0xFFF8) != 0)
  {
    v159 = v153 >> 3;
    v415[0] = v156;
    v415[1] = v149;
    v415[2] = v152;
    v415[3] = v148;
    v415[4] = v151;
    v415[5] = v147;
    v415[6] = v150;
    v415[7] = v146;
    v160 = *(v415 + (v154 & 0xF)) / v159;
    v414[0] = v156;
    v414[1] = v149;
    v414[2] = v152;
    v414[3] = v148;
    v414[4] = v151;
    v414[5] = v147;
    v414[6] = v150;
    v414[7] = v146;
    v161 = *(v414 + (v155 & 0xF));
    v413[0] = v156;
    v413[1] = v149;
    v413[2] = v152;
    v413[3] = v148;
    v413[4] = v151;
    v413[5] = v147;
    v413[6] = v150;
    v413[7] = v146;
    v162 = *(v413 + (v157 & 0xF)) / v159;
    v412[0] = v156;
    v412[1] = v149;
    v412[2] = v152;
    v412[3] = v148;
    v412[4] = v151;
    v412[5] = v147;
    v412[6] = v150;
    v412[7] = v146;
    v163 = v162;
    v164 = *(v412 + (v158 & 0xF)) / v159;
    v165 = v160;
    v166 = v161 / v159;
  }

  else
  {
    v411[0] = v156;
    v411[1] = v149;
    v411[2] = v152;
    v411[3] = v148;
    v411[4] = v151;
    v411[5] = v147;
    v411[6] = v150;
    v411[7] = v146;
    v410[0] = v156;
    v410[1] = v149;
    v410[2] = v152;
    v410[3] = v148;
    v410[4] = v151;
    v410[5] = v147;
    v410[6] = v150;
    v410[7] = v146;
    v409[0] = v156;
    v409[1] = v149;
    v409[2] = v152;
    v409[3] = v148;
    v409[4] = v151;
    v409[5] = v147;
    v409[6] = v150;
    v409[7] = v146;
    v408[0] = v156;
    v408[1] = v149;
    v408[2] = v152;
    v408[3] = v148;
    v408[4] = v151;
    v408[5] = v147;
    v408[6] = v150;
    v408[7] = v146;
    v163 = *(v409 + (v157 & 0xF));
    v164 = *(v408 + (v158 & 0xF));
    v165 = *(v411 + (v154 & 0xF));
    v166 = *(v410 + (v155 & 0xF));
  }

  v167 = &v376[*v28];
  v168 = *v167;
  v169 = *(v167 + 1);
  v170 = *(v167 + 2);
  v407 = *(v167 + 3);
  v406[2] = v170;
  v406[1] = v169;
  v406[0] = v168;
  v171 = v165 * (*(v406 + (v154 & 0xF)) - 1);
  v405[3] = v407;
  v405[2] = v170;
  v405[1] = v169;
  v405[0] = v168;
  v172 = v171 + v166 * (*(v405 + (v155 & 0xF)) - 1);
  v404[3] = v407;
  v404[2] = v170;
  v404[1] = v169;
  v404[0] = v168;
  v173 = v172 + v163 * (*(v404 + (v157 & 0xF)) - 1);
  v403[3] = v407;
  v403[2] = v170;
  v403[1] = v169;
  v403[0] = v168;
  v131 = (HIDWORD(v165) != 0) | (2 * (HIDWORD(v166) != 0)) | (4 * (HIDWORD(v163) != 0)) | (8 * (HIDWORD(v164) != 0)) | (16 * ((v173 + v164 * (*(v403 + (v158 & 0xF)) - 1)) >> 32 != 0));
  if ((v366 & 1) == 0)
  {
LABEL_273:
    makeStrideBytes();
    v174 = &v375[*v82];
    v175.i64[0] = 0x100000001;
    v175.i64[1] = 0x100000001;
    v176 = vceqq_s32(*v174, v175);
    v177.i64[0] = v176.i32[0];
    v177.i64[1] = v176.i32[1];
    v178 = v177;
    v179 = vceqq_s32(v174[1], v175);
    v177.i64[0] = v179.i32[0];
    v177.i64[1] = v179.i32[1];
    v180 = v177;
    v181 = vceqq_s32(v174[2], v175);
    v177.i64[0] = v181.i32[0];
    v177.i64[1] = v181.i32[1];
    v182 = v177;
    v183 = vceqq_s32(v174[3], v175);
    v177.i64[0] = v183.i32[0];
    v177.i64[1] = v183.i32[1];
    v184 = v177;
    v177.i64[0] = v176.i32[2];
    v177.i64[1] = v176.i32[3];
    v185 = v177;
    v177.i64[0] = v179.i32[2];
    v177.i64[1] = v179.i32[3];
    v186 = v177;
    v177.i64[0] = v181.i32[2];
    v177.i64[1] = v181.i32[3];
    v187 = v177;
    v177.i64[0] = v183.i32[2];
    v177.i64[1] = v183.i32[3];
    v188 = vbicq_s8(v454, v177);
    v189 = vbicq_s8(v452, v187);
    v190 = vbicq_s8(v450, v186);
    v191 = vbicq_s8(v448, v185);
    v192 = vbicq_s8(v453, v184);
    v193 = vbicq_s8(v451, v182);
    v194 = vbicq_s8(v449, v180);
    v195 = *&v375[*MEMORY[0x277CD73D8]];
    v196 = *&v375[*MEMORY[0x277CD73C8]];
    v197 = vbicq_s8(v447, v178);
    if ((v196 & 0xFFF8) != 0)
    {
      v198 = v196 >> 3;
      v402[0] = v197;
      v402[1] = v191;
      v402[2] = v194;
      v402[3] = v190;
      v402[4] = v193;
      v402[5] = v189;
      v402[6] = v192;
      v402[7] = v188;
      v199 = *(v402 + (v195 & 0xF)) / v198;
      v401[0] = v197;
      v401[1] = v191;
      v401[2] = v194;
      v401[3] = v190;
      v401[4] = v193;
      v401[5] = v189;
      v401[6] = v192;
      v401[7] = v188;
      v200 = *(v401 + (BYTE1(v195) & 0xF));
      v400[0] = v197;
      v400[1] = v191;
      v400[2] = v194;
      v400[3] = v190;
      v400[4] = v193;
      v400[5] = v189;
      v400[6] = v192;
      v400[7] = v188;
      v201 = *(v400 + (BYTE2(v195) & 0xF)) / v198;
      v399[0] = v197;
      v399[1] = v191;
      v399[2] = v194;
      v399[3] = v190;
      v399[4] = v193;
      v399[5] = v189;
      v399[6] = v192;
      v399[7] = v188;
      v202 = v201;
      v203 = *(v399 + (BYTE3(v195) & 0xF)) / v198;
      v204 = v199;
      v205 = v200 / v198;
      v206 = v195;
    }

    else
    {
      v398[0] = v197;
      v398[1] = v191;
      v398[2] = v194;
      v398[3] = v190;
      v398[4] = v193;
      v398[5] = v189;
      v398[6] = v192;
      v398[7] = v188;
      v397[0] = v197;
      v397[1] = v191;
      v397[2] = v194;
      v397[3] = v190;
      v397[4] = v193;
      v397[5] = v189;
      v397[6] = v192;
      v397[7] = v188;
      v396[0] = v197;
      v396[1] = v191;
      v396[2] = v194;
      v396[3] = v190;
      v396[4] = v193;
      v396[5] = v189;
      v396[6] = v192;
      v396[7] = v188;
      v395[0] = v197;
      v395[1] = v191;
      v395[2] = v194;
      v395[3] = v190;
      v395[4] = v193;
      v395[5] = v189;
      v395[6] = v192;
      v395[7] = v188;
      v202 = *(v396 + (BYTE2(v195) & 0xF));
      v203 = *(v395 + (BYTE3(v195) & 0xF));
      v204 = *(v398 + (v195 & 0xF));
      v206 = v195;
      v205 = *(v397 + (BYTE1(v195) & 0xF));
    }

    v207 = &v375[*v28];
    v208 = *v207;
    v209 = *(v207 + 1);
    v210 = *(v207 + 3);
    v393 = *(v207 + 2);
    v394 = v210;
    v392[0] = v208;
    v392[1] = v209;
    v211 = v204 * (*(v392 + (v206 & 0xF)) - 1);
    v391[2] = v393;
    v391[3] = v210;
    v391[0] = v208;
    v391[1] = v209;
    v212 = v211 + v205 * (*(v391 + (BYTE1(v195) & 0xF)) - 1);
    v390[2] = v393;
    v390[3] = v210;
    v390[0] = v208;
    v390[1] = v209;
    v213 = v212 + v202 * (*(v390 + (BYTE2(v195) & 0xF)) - 1);
    v389[2] = v393;
    v389[3] = v210;
    v389[0] = v208;
    v389[1] = v209;
    v131 |= (32 * (HIDWORD(v204) != 0)) | ((HIDWORD(v205) != 0) << 6) | ((HIDWORD(v202) != 0) << 7) | ((HIDWORD(v203) != 0) << 8) | (((v213 + v203 * (*(v389 + (BYTE3(v195) & 0xF)) - 1)) >> 32 != 0) << 9);
  }

LABEL_277:
  *&v214 = -1;
  *(&v214 + 1) = -1;
  v465 = v214;
  v459 = v214;
  v460 = v214;
  v461 = v65 & 0xF0FFFFFF | ((v329 & 0xF) << 24);
  v462 = v359;
  v463 = (v123 || 2 * v125) | (4 * v127) | (8 * v129) | (16 * v130);
  v464 = v131;
  *&v214 = vcnt_s8(*(v387 + 48));
  LOWORD(v214) = vaddlv_u8(*&v214);
  *&v465 = (v214 << 16) | 1u;
  v215 = v342 > 1;
  if (v342 < 2)
  {
    v217 = v339;
    v216 = v341;
    v215 = v341 > 1;
    v218 = v360;
    if (v341 <= 1)
    {
      v215 = v339 > 1 || v344 > 1;
    }
  }

  else
  {
    v217 = v339;
    v216 = v341;
    v218 = v360;
  }

  v220 = v388.u32[1];
  v222 = (v382 < 2 || v383 >= 5 || v388.i32[0] <= 0xFu && v383 >= 3) && (v381 < 2 || v380 > 4 || v388.i32[1] <= 0xFu && v380 >= 3) && (v59 < 5 ? (v221 = v379 > 1) : (v221 = 0), !v221 && v218 < 2) && !v215;
  v225 = v382 < 3 && v381 < 3 && v379 < 3;
  v226 = v225 & v222;
  v227 = v383 * v380 * v59;
  v228 = v388.u32[0];
  v229 = v388.i32[0] * v388.i32[1];
  v230 = v388.i32[0] * v388.i32[1] * v388.i32[2];
  if ((v230 * v388.i32[3]) <= 0x1F || v379 * v227 * v382 * v381 >= 0xD9)
  {
    v226 = 0;
  }

  if (v383 * v380 < 0x40)
  {
    v233 = 0;
  }

  else
  {
    v233 = v382 * v381 > 0xF || v229 < 4;
    v226 &= !v233;
  }

  v235 = v388.i32[2] < 8u || v229 > 0x7FF;
  v243 = v360 < 9 && v335 < 5 && v59 < 9 && v379 < 5 && v380 < 9 && v381 < 5 && v383 < 9 && v382 < 5;
  v330 = v59 - 1;
  v244 = v59 == 1;
  if (v215)
  {
    v245 = 0x2000000;
  }

  else
  {
    v245 = 0;
  }

  v340 = v235 && v244;
  if (v235 && v244)
  {
    v246 = 0x4000000;
  }

  else
  {
    v246 = 0;
  }

  *&v460 = ((v59 << 10) + 7168) & 0x1C00 | ((v360 << 13) - 0x2000) & 0xE000 | ((v380 << 7) + 896) & 0x380 | (16 * v383 + 112) & 0x70 | ((v335 << 22) + 12582912) & 0xC00000 | ((v379 << 20) + 3145728) & 0x300000 | ((v381 << 18) + 786432) & 0xC0000 | ((v382 << 16) + 196608) & 0x30000 | v243 | v245 | (2 * (v332 & 7)) | ((v364 == 268435472) << 27) | (v333 << 28) | (((v331 & 0xDFFFFFFF) == 32) << 24) | v246;
  v247 = 1.0;
  if ((v332 & 0xFFFFFFFE) == 2)
  {
    v247 = 1.0 / (v227 * v360);
  }

  v248.i32[0] = 1;
  v249.i32[0] = 1;
  v249.i32[1] = v361;
  v249.i32[2] = v361 * v363;
  v249.i32[3] = v361 * v363 * v362;
  v248.i32[1] = v388.i32[0];
  v248.i64[1] = __PAIR64__(v230, v229);
  v250.i64[0] = __PAIR64__(v337, v338);
  v250.i64[1] = __PAIR64__(v334, v336);
  v449 = v249;
  v450 = v248;
  v248.i64[0] = __PAIR64__(v380, v383);
  v251 = v243 & v226;
  v248.i64[1] = __PAIR64__(v360, v59);
  v451 = v250;
  v452 = v248;
  v248.i64[0] = __PAIR64__(v381, v382);
  v248.i64[1] = __PAIR64__(v335, v379);
  v249.i64[0] = __PAIR64__(v216, v342);
  v447 = v372;
  v448 = v388;
  v249.i64[1] = __PAIR64__(v344, v217);
  v453 = v248;
  v454 = v249;
  v455 = v247;
  v456 = 0;
  v457 = 0uLL;
  v458 = 0;
  if (v333)
  {
    v252 = 0;
    v253 = 0;
    v251 = (*(v343 + 1472) < 24) & v251;
  }

  else
  {
    v252 = v233;
    if (v233)
    {
      v253 = 2;
    }

    else
    {
      v253 = 0;
    }
  }

  if (v251)
  {
    v253 = 1;
  }

  if (v374)
  {
    v253 += 3;
  }

  v254 = (&CommonKernels)[16 * v253];
  v327 = *(v385 + *MEMORY[0x277CD7360]);
  v328 = *(v385 + *MEMORY[0x277CD7368]);
  MPSLibrary::CreateUberShaderKey();
  v255 = *(v385 + *MEMORY[0x277CD7370]);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    v79 = -1;
    v9 = v387;
    if (!v378)
    {
      goto LABEL_585;
    }

    goto LABEL_558;
  }

  [v386 setComputePipelineState:{0, v327, v328, 0, 0}];
  v256 = *(v385 + *MEMORY[0x277CD7370]);
  MPSLibrary::ReleaseMPSKey();
  v257 = [PipelineStateForMPSKey threadExecutionWidth];
  v258 = v257;
  if (v257 <= 1)
  {
    v259 = 1;
  }

  else
  {
    v259 = v257;
  }

  if (v259 >= 0x20)
  {
    v260 = 32;
  }

  else
  {
    v260 = v259;
  }

  if (v260 > v388.u32[0] || (v261 = v260, v388.i32[0] <= 3u) && (v261 = v260, v260 > v388.u32[1]))
  {
    if (v257 <= 1)
    {
      v261 = 1;
    }

    else
    {
      v261 = v260 >> 1;
    }
  }

  v262 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v263 = 256;
  if (v262 < 0x100)
  {
    v263 = v262;
  }

  if (v263 <= 2 * v261)
  {
    v264 = 1;
    v265 = v388.u32[2];
    v266 = v252;
    if (v260 > (2 * v388.i32[0]))
    {
      goto LABEL_396;
    }
  }

  else
  {
    v264 = v263 / v261;
    v265 = v388.u32[2];
    v266 = v252;
    if (v260 > (2 * v388.i32[0]))
    {
      goto LABEL_396;
    }
  }

  if (4 * v260 >= v388.u32[0] && 4 * v260 <= v263 && v388.u8[0] % v260)
  {
    v264 = 4;
    v261 = v388.u32[0];
  }

LABEL_396:
  if (v261 > v388.u32[0] && (v261 <= v388.u32[1] || v261 <= v265))
  {
    v272 = 2 * v260;
    if (v265 > 2 * v260)
    {
      v272 = v265;
    }

    do
    {
      v268 = v261;
      v261 >>= 1;
    }

    while (v268 >= v272);
    v261 = 1;
    if (v251)
    {
LABEL_421:
      if (v260 <= v388.u32[0] && (v388.i32[0] > 3u || v260 <= v388.u32[1]))
      {
        v271 = v260;
      }

      else if (v258 <= 1)
      {
        v271 = 1;
      }

      else
      {
        v271 = v260 >> 1;
      }

      if (v258 <= 1)
      {
        v276 = 1;
      }

      else
      {
        v276 = v260 >> 1;
      }

      if (v388.i32[0] <= 0x3Fu && v382 != 1)
      {
        v276 = v271;
      }

      if (v263 <= 2 * v276)
      {
        v278 = 1;
        v279 = v330;
        if (v229 <= 0x7FF && !v340)
        {
LABEL_449:
          if (v229 > 0x18F)
          {
            v278 = 4;
            v281 = 8;
            v276 = 4;
            if (v388.u32[0] >= 4uLL)
            {
              goto LABEL_487;
            }
          }

          else
          {
            v276 = (v388.u32[0] + 1) >> 1;
            v278 = (v388.u32[1] + 1) >> 1;
            v280 = v276 * v278;
            if (v260 < 2 * v280 || v260 > v265)
            {
              _CF = v263 >= 8 * v280;
              v281 = 2;
              if (_CF)
              {
                v281 = 8;
              }

              if (v276 <= v388.u32[0])
              {
                goto LABEL_487;
              }
            }

            else
            {
              v281 = v260;
              if (v276 <= v388.u32[0])
              {
                goto LABEL_487;
              }
            }
          }

LABEL_485:
          v289 = 1;
          if (v276 <= v388.u32[1] || v276 <= v265)
          {
            v281 = v278;
            goto LABEL_495;
          }

LABEL_487:
          v291 = v383 > 1 && v276 > 0x1F;
          v289 = v276 >> v291;
          v276 = v278;
LABEL_495:
          v292 = v380 - 1;
          v294 = v380 > 1 && v276 > 0x1F;
          v295 = v276 >> v294;
          v296 = v295 > 1;
          if (v295 < v388.u32[1])
          {
            v268 = v295;
            v297 = v289 > 1;
            if (v289 < v388.u32[0])
            {
LABEL_517:
              v261 = v289;
LABEL_518:
              if (v340)
              {
                v298 = 1;
              }

              else
              {
                v298 = v281;
              }

              if (*(v343 + 1472) >= 7)
              {
                v299 = 32000;
              }

              else
              {
                v299 = 16000;
              }

              v300 = 1;
              if (v364 != 268435472)
              {
                v300 = 2;
              }

              if (((((((v292 + 2 * v381 * v268) * (v383 - 1 + 2 * v382 * v261)) * (v279 + v298 * v379)) << v300) + 15) & 0xFFFFFFFFFFFFFFF0) > v299)
              {
                if (v298 >= 2)
                {
                  v298 >>= v268 * v298 * v261 >= 2 * v260;
                }

                if (v296)
                {
                  v268 >>= v261 * v268 * v298 >= 2 * v260;
                }

                if (v297)
                {
                  v261 >>= v298 * v261 * v268 >= 2 * v260;
                }
              }

              if (v340)
              {
                v264 = 1;
              }

              else
              {
                v264 = v298;
              }

              v228 = (v388.u32[0] + 2 * v261 - 1) / (2 * v261);
              v220 = (v388.u32[1] + 2 * v268 - 1) / (2 * v268);
              v301 = (v264 + v265 - 1) / v264;
              v275 = v301 * v388.u32[3];
              v302.f32[0] = (v383 - 1 + 2 * v261 * v382);
              LODWORD(v456) = v302.i32[0];
              *(&v456 + 1) = (v292 + 2 * v268 * v381);
              *&v457 = (v279 + v264 * v379);
              v303 = *(&v456 + 1) * v302.f32[0];
              v302.f32[1] = *(&v456 + 1) * v302.f32[0];
              __asm { FMOV            V3.2S, #1.0 }

              *(&v457 + 4) = vdiv_f32(_D3, v302);
              HIDWORD(v457) = v301;
              v302.f32[0] = 1.0 / v301;
              v458 = v302.i32[0];
              v288 = (((v303 * *&v457) << v300) + 15) & 0xFFFFFFFFFFFFFFF0;
              goto LABEL_550;
            }
          }

          else if (v295 < 2)
          {
            v268 = v295;
LABEL_510:
            v297 = v289 > 1;
            if (v289 < v388.u32[0])
            {
              goto LABEL_517;
            }
          }

          else
          {
            while (v295 * v289 >= 2 * v260)
            {
              v268 = v295 >> 1;
              v296 = v295 > 3;
              if (v295 >= 4)
              {
                v295 >>= 1;
                if (v268 >= v388.u32[1])
                {
                  continue;
                }
              }

              goto LABEL_510;
            }

            v296 = 1;
            v268 = v295;
            v297 = v289 > 1;
            if (v289 < v388.u32[0])
            {
              goto LABEL_517;
            }
          }

          if (v289 >= 2)
          {
            while (v289 * v268 >= 2 * v260)
            {
              v261 = v289 >> 1;
              v297 = v289 > 3;
              if (v289 >= 4)
              {
                v289 >>= 1;
                if (v261 >= v388.u32[0])
                {
                  continue;
                }
              }

              goto LABEL_518;
            }

            v297 = 1;
          }

          goto LABEL_517;
        }
      }

      else
      {
        v278 = v263 / v276;
        v279 = v330;
        if (v229 <= 0x7FF && !v340)
        {
          goto LABEL_449;
        }
      }

      v281 = 1;
      if (v276 <= v388.u32[0])
      {
        goto LABEL_487;
      }

      goto LABEL_485;
    }
  }

  else
  {
    if (v388.u32[1] <= 1uLL)
    {
      v267 = 1;
    }

    else
    {
      v267 = v388.u32[1];
    }

    if (v264 <= v267)
    {
      v268 = v264;
    }

    else
    {
      v268 = v264;
      do
      {
        if (v268 * v261 < 2 * v260)
        {
          break;
        }

        v268 >>= 1;
      }

      while (v268 > v267);
    }

    if (v388.u32[0] <= 1uLL)
    {
      v269 = 1;
    }

    else
    {
      v269 = v388.u32[0];
    }

    for (; v261 > v269; v261 >>= 1)
    {
      if (v261 * v268 < 2 * v260)
      {
        break;
      }
    }

    if (v388.i32[1] <= 0xFu && v388.u32[1] % v268 && v261 * v388.u32[1] <= v263)
    {
      v268 = v388.u32[1];
    }

    v264 = 1;
    if (v251)
    {
      goto LABEL_421;
    }
  }

  if (!v266)
  {
    v275 = ((v265 * v388.i32[3]) + v264 - 1) / v264;
    v220 = (v388.u32[1] + v268 - 1) / v268;
    v228 = (v388.u32[0] + v261 - 1) / v261;
    goto LABEL_551;
  }

  if (v383 >= v260)
  {
    v273 = v260;
  }

  else
  {
    v273 = v383;
  }

  if (v263 <= 2 * v273)
  {
    v274 = 1;
  }

  else
  {
    v274 = v263 / v273;
  }

  v282 = v380 >> 2;
  if (v380 >> 2 <= 1)
  {
    v282 = 1;
  }

  if (v380 < v274)
  {
    v274 = v282;
  }

  v283 = v274 * 2 * v273 > v263 || v340;
  v284 = 1;
  if (!v283)
  {
    v284 = 2;
  }

  v285 = 32000;
  if (*(v343 + 1472) < 7)
  {
    v285 = 16000;
  }

  if (v383 < 0x11)
  {
    v268 = 1;
  }

  else
  {
    v268 = v274;
  }

  if (v383 >= 0x11)
  {
    v261 = v273;
  }

  else
  {
    v261 = v383;
  }

  if (v383 < 0x11)
  {
    v284 = 16;
  }

  v286 = v268 * v261;
  v287 = !v283;
  if (v383 < 0x11)
  {
    v287 = 4;
  }

  v288 = (4 * (v286 << v287) + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v288 > v285)
  {
    if (v284 < 2)
    {
      v284 = 1;
    }

    else
    {
      v284 >>= (v268 << v287) * v261 >= 2 * v260;
    }

    if (v268 >= 2)
    {
      if (v284 * v286 >= 2 * v260)
      {
        v268 >>= 1;
      }

      else
      {
        v268 = v274;
      }
    }

    if (v261 >= 2)
    {
      v261 >>= v284 * v261 * v268 >= 2 * v260;
    }
  }

  if (v340)
  {
    v264 = 1;
  }

  else
  {
    v264 = v284;
  }

  v307 = (v264 + v265 - 1) / v264;
  v275 = v307 * v388.u32[3];
  HIDWORD(v457) = v307;
  *&v308 = 1.0 / v307;
  v458 = v308;
LABEL_550:
  [v386 setThreadgroupMemoryLength:v288 atIndex:0];
LABEL_551:
  v309 = malloc_type_calloc(0x3CuLL, 4uLL, 0x100004052888210uLL);
  [v386 setBuffer:objc_msgSend(v384 offset:"buffer") atIndex:{*(*(v387 + 8) + 64) + MPSGetLinearOffsetBytes(v384, 0, 4, v309, 0), 0}];
  if (v374)
  {
    [v386 setBuffer:v374 offset:0 atIndex:27];
  }

  if ((v367 & 1) == 0)
  {
    [v386 setBuffer:objc_msgSend(v376 offset:"buffer") atIndex:{*(*(v387 + 32) + 64) + MPSGetLinearOffsetBytes(v376, 0, 4, v309 + 80, 0), 1}];
  }

  if ((v366 & 1) == 0)
  {
    [v386 setBuffer:objc_msgSend(v375 offset:"buffer") atIndex:{*(*(v387 + 32) + 144) + MPSGetLinearOffsetBytes(v375, 0, 4, v309 + 80 * (*(v387 + 48) & 1u) + 80, 0), (*(v387 + 48) & 1) + 1}];
  }

  [v386 setBytes:v309 length:240 atIndex:23];
  [v386 setBytes:&v447 length:160 atIndex:29];
  v446[0] = v228;
  v446[1] = v220;
  v446[2] = v275;
  v445[0] = v261;
  v445[1] = v268;
  v445[2] = v264;
  [v386 dispatchThreadgroups:v446 threadsPerThreadgroup:v445];
  MPSLibrary::ReleaseComputeState();
  free(v309);
  v79 = 0;
  v9 = v387;
  if (v378)
  {
    goto LABEL_558;
  }

LABEL_585:
  MPSAutoCache::~MPSAutoCache(v444);
  return v79;
}

uint64_t MPSNDArrayPoolingFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = a2[8];
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:&v9 + 4 type:33 atIndex:89];
  AddFunctionConstantList(v5, a3);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t EncodePoolingMultiDestination1DPass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v222 = v13;
  v223 = v14;
  v221 = v15;
  v226 = v16;
  v18 = v17;
  v228 = v19;
  v220 = v20;
  v22 = v21;
  v23 = v12;
  v218 = *(v12 + *MEMORY[0x277CD7350]);
  v227 = *(v12 + *MEMORY[0x277CD7370]);
  v219 = *(v12 + 124);
  v24 = [*(v17 + 16) objectAtIndexedSubscript:0];
  v25 = [*(v18 + 40) objectAtIndexedSubscript:0];
  v26 = [*(v18 + 40) objectAtIndexedSubscript:1];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v28 = v24;
  objc_opt_class();
  v29 = objc_opt_isKindOfClass();
  v30 = v29;
  *&v31 = -1;
  *(&v31 + 1) = -1;
  v288 = v31;
  v289 = v31;
  v287 = v31;
  v285 = v31;
  v286 = v31;
  v32 = *MEMORY[0x277CD73C8];
  v33 = *(v24 + v32);
  if (v33 > 285212703)
  {
    if (v33 <= 536870915)
    {
      if (v33 > 301989895)
      {
        if (v33 == 301989896)
        {
          v34 = 16;
          v224 = v22;
          v225 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
        }

        if (v33 == 335544328)
        {
          v34 = 17;
          v224 = v22;
          v225 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
        }
      }

      else
      {
        if (v33 == 285212704)
        {
          v34 = 13;
          v224 = v22;
          v225 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
        }

        if (v33 == 285212736)
        {
          v34 = 14;
          v224 = v22;
          v225 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
        }
      }
    }

    else if (v33 <= 536870927)
    {
      if (v33 == 536870916)
      {
        v34 = 0;
        v224 = v22;
        v225 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      }

      if (v33 == 536870920)
      {
        v34 = 1;
        v224 = v22;
        v225 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      }
    }

    else
    {
      switch(v33)
      {
        case 536870928:
          v34 = 2;
          v224 = v22;
          v225 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
        case 536870944:
          v34 = 3;
          v224 = v22;
          v225 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
        case 536870976:
          v34 = 4;
          v224 = v22;
          v225 = isKindOfClass;
          if (isKindOfClass)
          {
            goto LABEL_96;
          }

          goto LABEL_63;
      }
    }
  }

  else if (v33 <= 31)
  {
    if (v33 > 7)
    {
      if (v33 == 8)
      {
        v34 = 6;
        v224 = v22;
        v225 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      }

      if (v33 == 16)
      {
        v34 = 7;
        v224 = v22;
        v225 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      }
    }

    else
    {
      if (v33 == -1879048176)
      {
        v34 = 12;
        v224 = v22;
        v225 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      }

      if (v33 == 4)
      {
        v34 = 5;
        v224 = v22;
        v225 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      }
    }
  }

  else if (v33 <= 268435463)
  {
    if (v33 == 32)
    {
      v34 = 8;
      v224 = v22;
      v225 = isKindOfClass;
      if (isKindOfClass)
      {
        goto LABEL_96;
      }

      goto LABEL_63;
    }

    if (v33 == 64)
    {
      v34 = 9;
      v224 = v22;
      v225 = isKindOfClass;
      if (isKindOfClass)
      {
        goto LABEL_96;
      }

      goto LABEL_63;
    }
  }

  else
  {
    switch(v33)
    {
      case 268435464:
        v34 = 15;
        v224 = v22;
        v225 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      case 268435472:
        v34 = 10;
        v224 = v22;
        v225 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
      case 268435488:
        v34 = 11;
        v224 = v22;
        v225 = isKindOfClass;
        if (isKindOfClass)
        {
          goto LABEL_96;
        }

        goto LABEL_63;
    }
  }

  v34 = 18;
  v224 = v22;
  v225 = isKindOfClass;
  if (isKindOfClass)
  {
    goto LABEL_96;
  }

LABEL_63:
  v35 = *(v25 + v32);
  if (v35 > 285212703)
  {
    if (v35 <= 536870915)
    {
      if (v35 > 301989895)
      {
        if (v35 == 301989896)
        {
          v36 = 16;
          goto LABEL_97;
        }

        if (v35 == 335544328)
        {
          v36 = 17;
          goto LABEL_97;
        }
      }

      else
      {
        if (v35 == 285212704)
        {
          v36 = 13;
          goto LABEL_97;
        }

        if (v35 == 285212736)
        {
          v36 = 14;
          goto LABEL_97;
        }
      }

      goto LABEL_150;
    }

    if (v35 > 536870927)
    {
      switch(v35)
      {
        case 536870928:
          v36 = 2;
          goto LABEL_97;
        case 536870944:
          v36 = 3;
          goto LABEL_97;
        case 536870976:
          v36 = 4;
          goto LABEL_97;
      }

      goto LABEL_150;
    }

    if (v35 != 536870916)
    {
      if (v35 == 536870920)
      {
        v36 = 1;
        goto LABEL_97;
      }

      goto LABEL_150;
    }

LABEL_96:
    v36 = 0;
    goto LABEL_97;
  }

  if (v35 <= 31)
  {
    if (v35 > 7)
    {
      if (v35 == 8)
      {
        v36 = 6;
        goto LABEL_97;
      }

      if (v35 == 16)
      {
        v36 = 7;
        goto LABEL_97;
      }
    }

    else
    {
      if (v35 == -1879048176)
      {
        v36 = 12;
        goto LABEL_97;
      }

      if (v35 == 4)
      {
        v36 = 5;
        goto LABEL_97;
      }
    }
  }

  else if (v35 <= 268435463)
  {
    if (v35 == 32)
    {
      v36 = 8;
      goto LABEL_97;
    }

    if (v35 == 64)
    {
      v36 = 9;
      goto LABEL_97;
    }
  }

  else
  {
    switch(v35)
    {
      case 268435464:
        v36 = 15;
        goto LABEL_97;
      case 268435472:
        v36 = 10;
        goto LABEL_97;
      case 268435488:
        v36 = 11;
        goto LABEL_97;
    }
  }

LABEL_150:
  v36 = 18;
LABEL_97:
  v37 = MEMORY[0x277CD73C8];
  if (v29)
  {
    goto LABEL_153;
  }

  v38 = *(v26 + v32);
  if (v38 > 285212703)
  {
    if (v38 <= 536870915)
    {
      if (v38 > 301989895)
      {
        if (v38 == 301989896)
        {
          v39 = 512;
          goto LABEL_152;
        }

        if (v38 == 335544328)
        {
          v39 = 544;
          goto LABEL_152;
        }
      }

      else
      {
        if (v38 == 285212704)
        {
          v39 = 416;
          goto LABEL_152;
        }

        if (v38 == 285212736)
        {
          v39 = 448;
          goto LABEL_152;
        }
      }
    }

    else if (v38 <= 536870927)
    {
      if (v38 == 536870916)
      {
        v39 = 0;
        goto LABEL_152;
      }

      if (v38 == 536870920)
      {
        v39 = 32;
        goto LABEL_152;
      }
    }

    else
    {
      switch(v38)
      {
        case 536870928:
          v39 = 64;
          goto LABEL_152;
        case 536870944:
          v39 = 96;
          goto LABEL_152;
        case 536870976:
          v39 = 128;
          goto LABEL_152;
      }
    }

LABEL_151:
    v39 = 576;
    goto LABEL_152;
  }

  if (v38 <= 31)
  {
    if (v38 > 7)
    {
      if (v38 == 8)
      {
        v39 = 192;
        goto LABEL_152;
      }

      if (v38 == 16)
      {
        v39 = 224;
        goto LABEL_152;
      }
    }

    else
    {
      if (v38 == -1879048176)
      {
        v39 = 384;
        goto LABEL_152;
      }

      if (v38 == 4)
      {
        v39 = 160;
        goto LABEL_152;
      }
    }

    goto LABEL_151;
  }

  if (v38 <= 268435463)
  {
    if (v38 == 32)
    {
      v39 = 256;
      goto LABEL_152;
    }

    if (v38 == 64)
    {
      v39 = 288;
      goto LABEL_152;
    }

    goto LABEL_151;
  }

  if (v38 == 268435464)
  {
    v39 = 480;
    goto LABEL_152;
  }

  if (v38 == 268435472)
  {
    v39 = 320;
    goto LABEL_152;
  }

  if (v38 != 268435488)
  {
    goto LABEL_151;
  }

  v39 = 352;
LABEL_152:
  v36 |= v39;
LABEL_153:
  v40 = v34 & 0xF0FFFFFF | ((*(v18 + 48) & 0xF) << 24);
  makeStrideBytes();
  v41 = (v28 + *MEMORY[0x277CD73D0]);
  v42.i64[0] = 0x100000001;
  v42.i64[1] = 0x100000001;
  v43 = vceqq_s32(*v41, v42);
  v44.i64[0] = v43.i32[0];
  v44.i64[1] = v43.i32[1];
  v45 = v44;
  v46 = vceqq_s32(v41[1], v42);
  v44.i64[0] = v46.i32[0];
  v44.i64[1] = v46.i32[1];
  v47 = v44;
  v48 = vceqq_s32(v41[2], v42);
  v44.i64[0] = v48.i32[0];
  v44.i64[1] = v48.i32[1];
  v49 = v44;
  v50 = vceqq_s32(v41[3], v42);
  v44.i64[0] = v50.i32[0];
  v44.i64[1] = v50.i32[1];
  v51 = v44;
  v44.i64[0] = v43.i32[2];
  v44.i64[1] = v43.i32[3];
  v52 = v44;
  v44.i64[0] = v46.i32[2];
  v44.i64[1] = v46.i32[3];
  v53 = v44;
  v44.i64[0] = v48.i32[2];
  v44.i64[1] = v48.i32[3];
  v54 = v44;
  v44.i64[0] = v50.i32[2];
  v44.i64[1] = v50.i32[3];
  v55 = vbicq_s8(v279, v44);
  v56 = vbicq_s8(v277, v54);
  v57 = vbicq_s8(v275, v53);
  v58 = vbicq_s8(v273, v52);
  v59 = vbicq_s8(v278, v51);
  v60 = vbicq_s8(v276, v49);
  v61 = vbicq_s8(v274, v47);
  v62 = *(v28 + *v37);
  v63 = *(v28 + *MEMORY[0x277CD73D8]);
  v64 = BYTE1(*(v28 + *MEMORY[0x277CD73D8]));
  v65 = vbicq_s8(v272, v45);
  v66 = BYTE2(*(v28 + *MEMORY[0x277CD73D8]));
  v67 = BYTE3(*(v28 + *MEMORY[0x277CD73D8]));
  if ((v62 & 0xFFF8) != 0)
  {
    v68 = v62 >> 3;
    v269[0] = v65;
    v269[1] = v58;
    v269[2] = v61;
    v269[3] = v57;
    v269[4] = v60;
    v269[5] = v56;
    v269[6] = v59;
    v269[7] = v55;
    v69 = *(v269 + (v63 & 0xF)) / v68;
    v268[0] = v65;
    v268[1] = v58;
    v268[2] = v61;
    v268[3] = v57;
    v268[4] = v60;
    v268[5] = v56;
    v268[6] = v59;
    v268[7] = v55;
    v70 = *(v268 + (v64 & 0xF));
    v267[0] = v65;
    v267[1] = v58;
    v267[2] = v61;
    v267[3] = v57;
    v267[4] = v60;
    v267[5] = v56;
    v267[6] = v59;
    v267[7] = v55;
    v71 = *(v267 + (v66 & 0xF)) / v68;
    v266[0] = v65;
    v266[1] = v58;
    v266[2] = v61;
    v266[3] = v57;
    v266[4] = v60;
    v266[5] = v56;
    v266[6] = v59;
    v266[7] = v55;
    v72 = v71;
    v73 = *(v266 + (v67 & 0xF)) / v68;
    v74 = v69;
    v75 = v70 / v68;
  }

  else
  {
    v265[0] = v65;
    v265[1] = v58;
    v265[2] = v61;
    v265[3] = v57;
    v265[4] = v60;
    v265[5] = v56;
    v265[6] = v59;
    v265[7] = v55;
    v264[0] = v65;
    v264[1] = v58;
    v264[2] = v61;
    v264[3] = v57;
    v264[4] = v60;
    v264[5] = v56;
    v264[6] = v59;
    v264[7] = v55;
    v263[0] = v65;
    v263[1] = v58;
    v263[2] = v61;
    v263[3] = v57;
    v263[4] = v60;
    v263[5] = v56;
    v263[6] = v59;
    v263[7] = v55;
    v262[0] = v65;
    v262[1] = v58;
    v262[2] = v61;
    v262[3] = v57;
    v262[4] = v60;
    v262[5] = v56;
    v262[6] = v59;
    v262[7] = v55;
    v72 = *(v263 + (v66 & 0xF));
    v73 = *(v262 + (v67 & 0xF));
    v74 = *(v265 + (v63 & 0xF));
    v75 = *(v264 + (v64 & 0xF));
  }

  v215 = v28;
  v76 = (v28 + *MEMORY[0x277CD7410]);
  v77 = *v76;
  v78 = v76[1];
  v79 = v76[2];
  v261 = v76[3];
  v260[2] = v79;
  v260[1] = v78;
  v260[0] = v77;
  v80 = v74 * (*(v260 + (v63 & 0xF)) - 1);
  v259[3] = v261;
  v259[2] = v79;
  v259[1] = v78;
  v259[0] = v77;
  v81 = v80 + v75 * (*(v259 + (v64 & 0xF)) - 1);
  v258[3] = v261;
  v258[2] = v79;
  v258[1] = v78;
  v258[0] = v77;
  v82 = v81 + v72 * (*(v258 + (v66 & 0xF)) - 1);
  v257[3] = v261;
  v257[2] = v79;
  v257[1] = v78;
  v257[0] = v77;
  v83 = (HIDWORD(v74) != 0) | (2 * (HIDWORD(v75) != 0)) | (4 * (HIDWORD(v72) != 0)) | (8 * (HIDWORD(v73) != 0));
  v84 = (v82 + v73 * (*(v257 + (v67 & 0xF)) - 1)) >> 32 != 0;
  v213 = v25;
  if (v225)
  {
    v85 = 0;
    v86 = v83 | (16 * v84);
    v214 = v26;
    v216 = v30;
    if (v30)
    {
      goto LABEL_167;
    }

    goto LABEL_163;
  }

  makeStrideBytes();
  v87 = (v25 + *MEMORY[0x277CD73D0]);
  v88.i64[0] = 0x100000001;
  v88.i64[1] = 0x100000001;
  v89 = vceqq_s32(*v87, v88);
  v90.i64[0] = v89.i32[0];
  v90.i64[1] = v89.i32[1];
  v91 = v90;
  v92 = vceqq_s32(v87[1], v88);
  v90.i64[0] = v92.i32[0];
  v90.i64[1] = v92.i32[1];
  v93 = v90;
  v94 = vceqq_s32(v87[2], v88);
  v90.i64[0] = v94.i32[0];
  v90.i64[1] = v94.i32[1];
  v95 = v90;
  v96 = vceqq_s32(v87[3], v88);
  v90.i64[0] = v96.i32[0];
  v90.i64[1] = v96.i32[1];
  v97 = v90;
  v90.i64[0] = v89.i32[2];
  v90.i64[1] = v89.i32[3];
  v98 = v90;
  v90.i64[0] = v92.i32[2];
  v90.i64[1] = v92.i32[3];
  v99 = v90;
  v90.i64[0] = v94.i32[2];
  v90.i64[1] = v94.i32[3];
  v100 = v90;
  v90.i64[0] = v96.i32[2];
  v90.i64[1] = v96.i32[3];
  v101 = vbicq_s8(v279, v90);
  v102 = vbicq_s8(v277, v100);
  v103 = vbicq_s8(v275, v99);
  v104 = vbicq_s8(v273, v98);
  v105 = vbicq_s8(v278, v97);
  v106 = vbicq_s8(v276, v95);
  v107 = vbicq_s8(v274, v93);
  v108 = *(v25 + *v37);
  v109 = *(v25 + *MEMORY[0x277CD73D8]);
  v110 = BYTE1(*(v25 + *MEMORY[0x277CD73D8]));
  v111 = vbicq_s8(v272, v91);
  v112 = BYTE2(*(v25 + *MEMORY[0x277CD73D8]));
  v113 = BYTE3(*(v25 + *MEMORY[0x277CD73D8]));
  if ((v108 & 0xFFF8) != 0)
  {
    v114 = v108 >> 3;
    v256[0] = v111;
    v256[1] = v104;
    v256[2] = v107;
    v256[3] = v103;
    v256[4] = v106;
    v256[5] = v102;
    v256[6] = v105;
    v256[7] = v101;
    v115 = *(v256 + (v109 & 0xF)) / v114;
    v255[0] = v111;
    v255[1] = v104;
    v255[2] = v107;
    v255[3] = v103;
    v255[4] = v106;
    v255[5] = v102;
    v255[6] = v105;
    v255[7] = v101;
    v116 = *(v255 + (v110 & 0xF));
    v254[0] = v111;
    v254[1] = v104;
    v254[2] = v107;
    v254[3] = v103;
    v254[4] = v106;
    v254[5] = v102;
    v254[6] = v105;
    v254[7] = v101;
    v117 = *(v254 + (v112 & 0xF)) / v114;
    v253[0] = v111;
    v253[1] = v104;
    v253[2] = v107;
    v253[3] = v103;
    v253[4] = v106;
    v253[5] = v102;
    v253[6] = v105;
    v253[7] = v101;
    v118 = v117;
    v119 = *(v253 + (v113 & 0xF)) / v114;
    v120 = v115;
    v121 = v116 / v114;
  }

  else
  {
    v252[0] = v111;
    v252[1] = v104;
    v252[2] = v107;
    v252[3] = v103;
    v252[4] = v106;
    v252[5] = v102;
    v252[6] = v105;
    v252[7] = v101;
    v251[0] = v111;
    v251[1] = v104;
    v251[2] = v107;
    v251[3] = v103;
    v251[4] = v106;
    v251[5] = v102;
    v251[6] = v105;
    v251[7] = v101;
    v250[0] = v111;
    v250[1] = v104;
    v250[2] = v107;
    v250[3] = v103;
    v250[4] = v106;
    v250[5] = v102;
    v250[6] = v105;
    v250[7] = v101;
    v249[0] = v111;
    v249[1] = v104;
    v249[2] = v107;
    v249[3] = v103;
    v249[4] = v106;
    v249[5] = v102;
    v249[6] = v105;
    v249[7] = v101;
    v118 = *(v250 + (v112 & 0xF));
    v119 = *(v249 + (v113 & 0xF));
    v120 = *(v252 + (v109 & 0xF));
    v121 = *(v251 + (v110 & 0xF));
  }

  v122 = (v25 + *MEMORY[0x277CD7410]);
  v123 = *v122;
  v124 = v122[1];
  v125 = v122[2];
  v248 = v122[3];
  v247[2] = v125;
  v247[1] = v124;
  v247[0] = v123;
  v126 = v120 * (*(v247 + (v109 & 0xF)) - 1);
  v246[3] = v248;
  v246[2] = v125;
  v246[1] = v124;
  v246[0] = v123;
  v127 = v126 + v121 * (*(v246 + (v110 & 0xF)) - 1);
  v245[3] = v248;
  v245[2] = v125;
  v245[1] = v124;
  v245[0] = v123;
  v128 = v127 + v118 * (*(v245 + (v112 & 0xF)) - 1);
  v244[3] = v248;
  v244[2] = v125;
  v244[1] = v124;
  v244[0] = v123;
  v85 = (HIDWORD(v120) != 0) | (2 * (HIDWORD(v121) != 0)) | (4 * (HIDWORD(v118) != 0)) | (8 * (HIDWORD(v119) != 0)) | (16 * ((v128 + v119 * (*(v244 + (v113 & 0xF)) - 1)) >> 32 != 0));
  v86 = v83 | (16 * v84);
  v214 = v26;
  v216 = v30;
  if ((v30 & 1) == 0)
  {
LABEL_163:
    makeStrideBytes();
    v129 = (v26 + *MEMORY[0x277CD73D0]);
    v130.i64[0] = 0x100000001;
    v130.i64[1] = 0x100000001;
    v131 = vceqq_s32(*v129, v130);
    v132.i64[0] = v131.i32[0];
    v132.i64[1] = v131.i32[1];
    v133 = v132;
    v134 = vceqq_s32(v129[1], v130);
    v132.i64[0] = v134.i32[0];
    v132.i64[1] = v134.i32[1];
    v135 = v132;
    v136 = vceqq_s32(v129[2], v130);
    v132.i64[0] = v136.i32[0];
    v132.i64[1] = v136.i32[1];
    v137 = v132;
    v138 = vceqq_s32(v129[3], v130);
    v132.i64[0] = v138.i32[0];
    v132.i64[1] = v138.i32[1];
    v139 = v132;
    v132.i64[0] = v131.i32[2];
    v132.i64[1] = v131.i32[3];
    v140 = v132;
    v132.i64[0] = v134.i32[2];
    v132.i64[1] = v134.i32[3];
    v141 = v132;
    v132.i64[0] = v136.i32[2];
    v132.i64[1] = v136.i32[3];
    v142 = v132;
    v132.i64[0] = v138.i32[2];
    v132.i64[1] = v138.i32[3];
    v143 = vbicq_s8(v279, v132);
    v144 = vbicq_s8(v277, v142);
    v145 = vbicq_s8(v275, v141);
    v146 = vbicq_s8(v273, v140);
    v147 = vbicq_s8(v278, v139);
    v148 = vbicq_s8(v276, v137);
    v149 = vbicq_s8(v274, v135);
    v150 = *(v26 + *v37);
    v151 = *(v26 + *MEMORY[0x277CD73D8]);
    v152 = BYTE1(*(v26 + *MEMORY[0x277CD73D8]));
    v153 = vbicq_s8(v272, v133);
    v154 = BYTE2(*(v26 + *MEMORY[0x277CD73D8]));
    v155 = BYTE3(*(v26 + *MEMORY[0x277CD73D8]));
    if ((v150 & 0xFFF8) != 0)
    {
      v156 = v150 >> 3;
      v243[0] = v153;
      v243[1] = v146;
      v243[2] = v149;
      v243[3] = v145;
      v243[4] = v148;
      v243[5] = v144;
      v243[6] = v147;
      v243[7] = v143;
      v157 = *(v243 + (v151 & 0xF)) / v156;
      v242[0] = v153;
      v242[1] = v146;
      v242[2] = v149;
      v242[3] = v145;
      v242[4] = v148;
      v242[5] = v144;
      v242[6] = v147;
      v242[7] = v143;
      v158 = *(v242 + (v152 & 0xF));
      v241[0] = v153;
      v241[1] = v146;
      v241[2] = v149;
      v241[3] = v145;
      v241[4] = v148;
      v241[5] = v144;
      v241[6] = v147;
      v241[7] = v143;
      v159 = *(v241 + (v154 & 0xF)) / v156;
      v240[0] = v153;
      v240[1] = v146;
      v240[2] = v149;
      v240[3] = v145;
      v240[4] = v148;
      v240[5] = v144;
      v240[6] = v147;
      v240[7] = v143;
      v160 = v159;
      v161 = *(v240 + (v155 & 0xF)) / v156;
      v162 = v157;
      v163 = v158 / v156;
    }

    else
    {
      v239[0] = v153;
      v239[1] = v146;
      v239[2] = v149;
      v239[3] = v145;
      v239[4] = v148;
      v239[5] = v144;
      v239[6] = v147;
      v239[7] = v143;
      v238[0] = v153;
      v238[1] = v146;
      v238[2] = v149;
      v238[3] = v145;
      v238[4] = v148;
      v238[5] = v144;
      v238[6] = v147;
      v238[7] = v143;
      v237[0] = v153;
      v237[1] = v146;
      v237[2] = v149;
      v237[3] = v145;
      v237[4] = v148;
      v237[5] = v144;
      v237[6] = v147;
      v237[7] = v143;
      v236[0] = v153;
      v236[1] = v146;
      v236[2] = v149;
      v236[3] = v145;
      v236[4] = v148;
      v236[5] = v144;
      v236[6] = v147;
      v236[7] = v143;
      v160 = *(v237 + (v154 & 0xF));
      v161 = *(v236 + (v155 & 0xF));
      v162 = *(v239 + (v151 & 0xF));
      v163 = *(v238 + (v152 & 0xF));
    }

    v164 = (v26 + *MEMORY[0x277CD7410]);
    v165 = *v164;
    v166 = v164[1];
    v167 = v164[3];
    v234 = v164[2];
    v235 = v167;
    v233[0] = v165;
    v233[1] = v166;
    v168 = v162 * (*(v233 + (v151 & 0xF)) - 1);
    v232[2] = v234;
    v232[3] = v167;
    v232[0] = v165;
    v232[1] = v166;
    v169 = v168 + v163 * (*(v232 + (v152 & 0xF)) - 1);
    v231[2] = v234;
    v231[3] = v167;
    v231[0] = v165;
    v231[1] = v166;
    v170 = v169 + v160 * (*(v231 + (v154 & 0xF)) - 1);
    v230[2] = v234;
    v230[3] = v167;
    v230[0] = v165;
    v230[1] = v166;
    v85 |= (32 * (HIDWORD(v162) != 0)) | ((HIDWORD(v163) != 0) << 6) | ((HIDWORD(v160) != 0) << 7) | ((HIDWORD(v161) != 0) << 8) | (((v170 + v161 * (*(v230 + (v155 & 0xF)) - 1)) >> 32 != 0) << 9);
  }

LABEL_167:
  *&v287 = v40;
  *(&v287 + 1) = v36;
  *&v288 = v86;
  *(&v288 + 1) = v85;
  v217 = v18;
  *&v289 = [*(v18 + 16) count] | 0x10000;
  v171 = v228.u32[1];
  v172 = v228.u32[2];
  v173 = v228.i32[0] * v228.i32[1];
  v176 = (v228.i32[2] < 8u || v173 > 0x7FF) && v226 != 2;
  if (v222 > 4 || (v177 = (*(v218 + 1472) & 0xFFFFFFFE) != 24, v221 < 8 * v222) || v223 > 1 || v219 == 1 || v219 == 4)
  {
    v177 = 0;
  }

  v178 = *(v218 + 1476) & 0x440;
  if (v176)
  {
    v179 = 0x4000000;
  }

  else
  {
    v179 = 0;
  }

  if (a12)
  {
    v180 = 0x8000000;
  }

  else
  {
    v180 = 0;
  }

  *&v286 = (16 * (v226 & 7)) | ((v223 > 1) << 25) | ((v222 << 16) + 196608) & 0x30000 | v180 & 0xFFFFFFF1 | v179 & 0xFFFFFFF1 | (2 * (v219 & 7)) | (2 * *(v218 + 1476)) & (*(v218 + 1476) >> 3) & 0x80 | v177;
  v181 = 1.0;
  if ((v219 & 0xFFFFFFFE) == 2)
  {
    v181 = 1.0 / v221;
  }

  v272 = v220;
  v273 = v228;
  v182.i32[0] = 1;
  v183.i32[0] = 1;
  v183.i32[1] = v220.i32[0];
  v183.i32[2] = v220.i32[0] * v220.i32[1];
  v183.i32[3] = v220.i32[0] * v220.i32[1] * v220.i32[2];
  v182.i32[1] = v228.i32[0];
  v182.i32[2] = v228.i32[0] * v228.i32[1];
  v182.i32[3] = v173 * v228.i32[2];
  v274 = v183;
  v275 = v182;
  v276 = a9;
  v277 = v221;
  v278 = v222;
  v279 = v223;
  v280 = v181;
  if (a11)
  {
    v184 = 8;
  }

  else
  {
    v184 = 6;
  }

  if (a10)
  {
    ++v184;
  }

  v185 = v184 + 8;
  if (v226)
  {
    v186 = v184 + 8;
  }

  else
  {
    v186 = v184;
  }

  v187 = v184 + 4;
  if (v226)
  {
    v187 = v185;
  }

  if (v178 != 1088)
  {
    v187 = v186;
  }

  v281 = 0;
  v283 = 0;
  v282 = 0;
  v284 = 0;
  v188 = (&CommonKernels)[16 * v187];
  v211 = *(v23 + *MEMORY[0x277CD7360]);
  v212 = *(v23 + *MEMORY[0x277CD7368]);
  MPSLibrary::CreateUberShaderKey();
  v189 = v23;
  v190 = MEMORY[0x277CD7370];
  v191 = *(v189 + *MEMORY[0x277CD7370]);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v193 = PipelineStateForMPSKey;
  [v224 setComputePipelineState:{PipelineStateForMPSKey, 0, v211, v212, 0, 0}];
  v194 = *(v189 + *v190);
  MPSLibrary::ReleaseMPSKey();
  v195 = [v193 threadExecutionWidth];
  v196 = [v193 maxTotalThreadsPerThreadgroup];
  if (v226)
  {
    if (v226 == 1)
    {
      v171 = v228.u32[2];
      v197 = v215;
    }

    else
    {
      v197 = v215;
      if (v226 != 2)
      {
LABEL_223:
        v229 = (v228.u32[0] + 15) >> 4;
        v202 = 16;
        v203 = v172;
        v172 = v171;
        v204 = 16;
        goto LABEL_224;
      }
    }

    LODWORD(v172) = v228.i32[3];
    goto LABEL_223;
  }

  v199 = 256;
  if (v196 < 0x100)
  {
    v199 = v196;
  }

  v200 = v199 > v228.u32[0] || v177;
  if (v195 <= 1)
  {
    v201 = 1;
  }

  else
  {
    v201 = v195;
  }

  if (v201 >= 0x20)
  {
    v201 = 32;
  }

  if (v200)
  {
    v202 = v201;
  }

  else
  {
    v202 = v199;
  }

  v203 = v228.u32[3];
  v204 = 1;
  v229 = v228.u32[1];
  v197 = v215;
LABEL_224:
  v205 = malloc_type_calloc(0x3CuLL, 4uLL, 0x100004052888210uLL);
  [v224 setBytes:&v272 length:160 atIndex:29];
  if (!a10)
  {
    [v224 setBuffer:objc_msgSend(v197 offset:"buffer") atIndex:{*(*(v217 + 8) + 64) + MPSGetLinearOffsetBytes(v197, 0, 4, v205, 0), 0}];
    v206 = v224;
    v207 = a11;
    if (!a11)
    {
      goto LABEL_227;
    }

    goto LABEL_226;
  }

  [v224 setBuffer:a10 offset:0 atIndex:28];
  v206 = v224;
  v207 = a11;
  if (a11)
  {
LABEL_226:
    [v206 setBuffer:v207 offset:0 atIndex:27];
  }

LABEL_227:
  if ((v225 & 1) == 0)
  {
    v208 = v205 + 80;
    [v206 setBuffer:objc_msgSend(v213 offset:"buffer") atIndex:{*(*(v217 + 32) + 64) + MPSGetLinearOffsetBytes(v213, 0, 4, v208, 0), 1}];
  }

  if ((v216 & 1) == 0)
  {
    v209 = v205 + 80 * (*(v217 + 48) & 1u) + 80;
    [v206 setBuffer:objc_msgSend(v214 offset:"buffer") atIndex:{*(*(v217 + 32) + 144) + MPSGetLinearOffsetBytes(v214, 0, 4, v209, 0), (*(v217 + 48) & 1) + 1}];
  }

  [v206 setBytes:v205 length:240 atIndex:23];
  if (v226)
  {
    v210 = v202 + 1;
  }

  else
  {
    v210 = v202;
  }

  [v206 setThreadgroupMemoryLength:8 * v204 * v210 atIndex:0];
  v271[0] = v229;
  v271[1] = v172;
  v271[2] = v203;
  v270[0] = v202;
  v270[1] = v204;
  v270[2] = 1;
  [v206 dispatchThreadgroups:v271 threadsPerThreadgroup:v270];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t MPSNDArrayPoolingGradientFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = a2[8];
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:&v9 + 4 type:33 atIndex:63];
  AddFunctionConstantList(v5, a3);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

__n128 ___ZL21EncodePoolingGradientPKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK23NDArrayMultiaryCallInfob_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contents];
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *v2 = result;
  return result;
}

__n128 ___ZL37EncodePoolingGradientMultiDestinationPKvPU35objcproto24MTLComputeCommandEncoder11objc_objectPU27objcproto16MTLCommandBuffer11objc_objectPK39NDArrayMultiaryMultiDestinationCallInfo_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 contents];
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *v2 = result;
  return result;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::IsWinogradSupported(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 136);
  if (MPSDisableMatrixUnit())
  {
    MPSKernel_LogInfo(v4, 1uLL, "MXU explicitly disabled. Falling back to TEC implementation.");
    return 0;
  }

  v6 = *(a2 + 128);
  if (*(a2 + 120))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(v6 + 232) inputTensorAtIndex:v7];
  v9 = [*(v6 + 232) inputTensorAtIndex:1];
  v10 = [*(v6 + 232) outputTensorAtIndex:0];
  result = 0;
  v11 = *(v8 + 8);
  if ((v11 & 0x10000000) == 0)
  {
    return result;
  }

  v12 = *(v9 + 8);
  v13 = *(v10 + 8);
  if ((v12 & 0x10000000) == 0 || (v13 & 0x10000000) == 0)
  {
    return result;
  }

  v43 = v10;
  IsWinogradSupported = MPSNDArrayConvolutionDeviceBehaviorA14::IsWinogradSupported(a1, a2);
  v16 = *(a2 + 136);
  if ((*(v16 + 329) & 1) != 0 || (*(v16 + *MEMORY[0x277CD7378]) & 2) != 0)
  {
    v17 = v11 == 268435472 && v12 == 268435472;
    if (v17 && v13 == 268435472)
    {
      MPSKernel_LogInfo(v16, 1uLL, "allowReducedPrecision flag is set. Running A18 MXU Winograd using fp16 precision.\n");
      if (!IsWinogradSupported)
      {
        return 0;
      }

      goto LABEL_35;
    }
  }

  if (qword_27DF86CA8 == -1)
  {
    if (byte_27DF86C81)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v19 = *(a2 + 136);
    dispatch_once(&qword_27DF86CA8, &__block_literal_global_298);
    v16 = v19;
    if (byte_27DF86C81)
    {
LABEL_23:
      MPSKernel_LogInfo(v16, 1uLL, "MPSNDARRAY_WINOGRAD_FP16_INTERMEDIATE is set. Running A18 MXU Winograd using fp16 precision.\n");
      if (!IsWinogradSupported)
      {
        return 0;
      }

      goto LABEL_35;
    }
  }

  if (qword_27DF86CB0 == -1)
  {
    if (byte_27DF86C82)
    {
      goto LABEL_30;
    }

LABEL_33:
    v21 = v16;
    result = MPSForceMatrixUnit();
    if (!result)
    {
      return result;
    }

    MPSKernel_LogInfo(v21, 1uLL, "MPSNDARRAY_CONV_FORCE_MXU is set to 1. Forcing A18 MXU Winograd using fp19 precision.\n");
    if (!IsWinogradSupported)
    {
      return 0;
    }

    goto LABEL_35;
  }

  v20 = v16;
  dispatch_once(&qword_27DF86CB0, &__block_literal_global_301);
  v16 = v20;
  if ((byte_27DF86C82 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  MPSKernel_LogInfo(v16, 1uLL, "MPSNDARRAY_WINOGRAD_FP19_INTERMEDIATE is set. Running A18 MXU Winograd using fp19 precision.\n");
  if (!IsWinogradSupported)
  {
    return 0;
  }

LABEL_35:
  v22 = [*(*(a2 + 128) + 232) graph];
  v23 = *(v22 + 64);
  v24 = *v23;
  v25 = v23[1];
  if (*v23 == v25)
  {
LABEL_44:
    v27 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v27 = 0;
    }

    goto LABEL_46;
  }

  v26 = v22;
  v27 = -1;
  v28 = -1;
  do
  {
    while (1)
    {
      v29 = *v24;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v26);
      v31 = *v24;
      if (v29 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v27 = *(v31 + 76);
      if (v31 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v26) + 32))
      {
        goto LABEL_41;
      }

LABEL_38:
      if (++v24 == v25)
      {
        goto LABEL_42;
      }
    }

    if (v31 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v26) + 32))
    {
      goto LABEL_38;
    }

LABEL_41:
    v32 = *v24++;
    v28 = *(v32 + 76);
  }

  while (v24 != v25);
LABEL_42:
  if (v28 == -1 || v27 == -1)
  {
    goto LABEL_44;
  }

LABEL_46:
  v33 = [*(v6 + 16) objectAtIndexedSubscript:v27];
  v34 = *(v33 + *MEMORY[0x277CD73D8]);
  if (v34 > 3u || BYTE1(v34) > 3u || BYTE2(v34) > 3u || BYTE3(v34) > 3u)
  {
LABEL_57:
    v38 = **(v43 + 16);
    if ((*(*(v43 + 16) + 8) - **(v43 + 16)) >= 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v39 = *(a2 + 8);
  v40 = vceq_s16((*&vzip1_s8(*&v34, *&v34) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  if (vminv_u16(v40))
  {
    if (v39 != 1)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (v39 || (v40.i8[6] & 1) == 0)
    {
      goto LABEL_57;
    }

    v41 = !BYTE2(*(v33 + *MEMORY[0x277CD73D8])) && v34 == 1;
    if (!v41 || BYTE1(*(v33 + *MEMORY[0x277CD73D8])) != 2)
    {
      goto LABEL_57;
    }
  }

  return 0;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::IsIntrinsicsSupported(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 128);
  if (*(a2 + 120))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(v3 + 232) inputTensorAtIndex:v4];
  v6 = [*(v3 + 232) inputTensorAtIndex:1];
  v7 = [*(v3 + 232) outputTensorAtIndex:0];
  v8 = *(v5 + 8);
  v9 = *(v6 + 8);
  v10 = *(v7 + 8);
  v11 = *(a2 + 136);
  v12 = *(v11 + *MEMORY[0x277CD7350]);
  if (!MPSDisableMatrixUnit())
  {
    v13 = **(v5 + 16);
    v14 = *(*(v5 + 16) + 8) - **(v5 + 16);
    if (*(a2 + 8))
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    else if ((v14 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  MPSKernel_LogInfo(v11, 1uLL, "MXU explicitly disabled. Falling back to TEC implementation.");
  return 0;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::IsConvolutionSupported(uint64_t a1, uint64_t a2)
{
  if (mainSourcesHaveRectangularStrides(a2))
  {
    if (MPSNDArrayConvolutionDeviceBehaviorA18::IsIntrinsicsSupported(a1, a2))
    {
      return 1;
    }

    else
    {

      return MPSNDArrayConvolutionDeviceBehaviorA18::IsWinogradSupported(a1, a2);
    }
  }

  else
  {
    MPSKernel_LogInfo(*(a2 + 136), 4uLL, "Non rectangular strides are not supported by A18 convolution. Falling back.\n");
    return 0;
  }
}

BOOL MPSNDArrayConvolutionDeviceBehaviorA18::DoWeightsNeedPhysicalTranspose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + *MEMORY[0x277CD73D8]);
  if (v4.u8[0] > 3u || v4.u8[1] > 3u || BYTE2(*(a3 + *MEMORY[0x277CD73D8])) > 3u || BYTE3(*(a3 + *MEMORY[0x277CD73D8])) > 3u)
  {
    return 1;
  }

  return vmovn_s16(vzip1q_s8(v4, v4)).u32[0] != 50462976 || *(a4 + 12) == 1;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA18::EncodeNDArrayConvolutionIntrinsics(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v405 = *MEMORY[0x277D85DE8];
  v335 = *(a4 + 8);
  v317 = *(a4 + 12);
  v342 = *(a4 + 16);
  v318 = *(a4 + 32);
  v319 = *(a4 + 40);
  v321 = *(a4 + 48);
  v320 = *(a4 + 56);
  v313 = *(a4 + 72);
  v314 = *(a4 + 64);
  v311 = *(a4 + 104);
  v315 = *(a4 + 112);
  v338 = *(a4 + 80);
  v322 = *(a4 + 96);
  v324 = *(a4 + 88);
  v6 = *(a4 + 128);
  v5 = *(a4 + 136);
  v339 = *(a4 + 120);
  v289 = *(v5 + *MEMORY[0x277CD7360]);
  v290 = *a4;
  v288 = *(v5 + *MEMORY[0x277CD7368]);
  v327 = *(a4 + 24);
  if (v339 == 1)
  {
    v300 = *(v5 + 272);
    [v300 setLabel:?];
    v7 = 0;
    v302 = 0;
    v291 = 0;
    v296 = -1;
    goto LABEL_9;
  }

  v300 = *(v5 + 256);
  [v300 setLabel:?];
  v9 = *(v5 + 304);
  if (*(a1 + 160) == 4)
  {
    v10 = *(a1 + 152);
    if (v9 != 4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 0;
  if (v9 == 4)
  {
LABEL_7:
    v10 = *(v5 + 296);
  }

LABEL_8:
  v302 = v10;
  v296 = *(v5 + 312);
  v291 = v296 != -1;
  v7 = &v376;
LABEL_9:
  v331 = [*(v6 + 232) inputTensorAtIndex:0];
  v329 = [*(v6 + 232) inputTensorAtIndex:1];
  v309 = [*(v6 + 232) inputTensorAtIndex:2];
  v345 = [*(v6 + 232) outputTensorAtIndex:0];
  v334 = v6;
  v287 = [*(v6 + 16) count];
  v376 = -1;
  v11 = [*(*(a4 + 128) + 232) graph];
  v12 = *(v11 + 64);
  v14 = *v12;
  v13 = v12[1];
  if (*v12 == v13)
  {
    goto LABEL_26;
  }

  v15 = v11;
  if (!v311)
  {
    if (v315)
    {
      v16 = -1;
      v17 = -1;
      v349 = -1;
      while (1)
      {
        v65 = *v14;
        CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
        v67 = *v14;
        if (v65 == *(CoreOpInputAtIndex + 32))
        {
          v16 = *(v67 + 76);
        }

        v68 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
        v69 = *v14;
        if (v67 == *(v68 + 32))
        {
          v17 = *(v69 + 76);
          if (v69 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
          {
            goto LABEL_112;
          }

LABEL_117:
          v70 = *v14++;
          v349 = *(v70 + 76);
          if (v14 == v13)
          {
LABEL_118:
            v348 = -1;
            if (!v7)
            {
              goto LABEL_25;
            }

LABEL_23:
            if (v16 != -1)
            {
              *v7 = v16;
              goto LABEL_25;
            }

            goto LABEL_26;
          }
        }

        else
        {
          if (v69 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
          {
            goto LABEL_117;
          }

LABEL_112:
          if (++v14 == v13)
          {
            goto LABEL_118;
          }
        }
      }
    }

    v16 = -1;
    v17 = -1;
    while (1)
    {
      v93 = *v14;
      v94 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
      v95 = *v14;
      if (v93 == *(v94 + 32))
      {
        v16 = *(v95 + 76);
        if (v95 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
        {
          goto LABEL_176;
        }

LABEL_179:
        v96 = *v14++;
        v17 = *(v96 + 76);
        if (v14 == v13)
        {
LABEL_180:
          v349 = -1;
          v348 = -1;
          if (!v7)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }
      }

      else
      {
        if (v95 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
        {
          goto LABEL_179;
        }

LABEL_176:
        if (++v14 == v13)
        {
          goto LABEL_180;
        }
      }
    }
  }

  if (!v315)
  {
    v16 = -1;
    v17 = -1;
    v348 = -1;
    while (1)
    {
      v87 = *v14;
      v88 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
      v89 = *v14;
      if (v87 == *(v88 + 32))
      {
        v16 = *(v89 + 76);
      }

      v90 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
      v91 = *v14;
      if (v89 == *(v90 + 32))
      {
        v17 = *(v91 + 76);
        if (v91 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
        {
          goto LABEL_154;
        }

LABEL_159:
        v92 = *v14++;
        v348 = *(v92 + 76);
        if (v14 == v13)
        {
LABEL_160:
          v349 = -1;
          if (!v7)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }
      }

      else
      {
        if (v91 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
        {
          goto LABEL_159;
        }

LABEL_154:
        if (++v14 == v13)
        {
          goto LABEL_160;
        }
      }
    }
  }

  v16 = -1;
  v17 = -1;
  v348 = -1;
  v349 = -1;
  do
  {
    while (1)
    {
      v18 = *v14;
      v19 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
      v20 = *v14;
      if (v18 == *(v19 + 32))
      {
        v16 = *(v20 + 76);
      }

      v21 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
      v22 = *v14;
      if (v20 == *(v21 + 32))
      {
        v17 = *(v22 + 76);
      }

      v23 = MPSKernelDAG::GetCoreOpInputAtIndex(v15);
      v24 = *v14;
      if (v22 != *(v23 + 32))
      {
        break;
      }

      v348 = *(v24 + 76);
      if (v24 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
      {
        goto LABEL_21;
      }

LABEL_14:
      if (++v14 == v13)
      {
        goto LABEL_22;
      }
    }

    if (v24 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v15) + 32))
    {
      goto LABEL_14;
    }

LABEL_21:
    v25 = *v14++;
    v349 = *(v25 + 76);
  }

  while (v14 != v13);
LABEL_22:
  if (v7)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (v17 == -1)
  {
LABEL_26:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v349 = -1;
    v348 = -1;
    v17 = -1;
  }

  v26 = [*(v334 + 16) objectAtIndexedSubscript:v17];
  v286 = *(*(v334 + 8) + 80 * v17 + 64);
  if (v339)
  {
    v27 = *(v334 + 112);
    v28 = v334 + 32;
  }

  else
  {
    v27 = [*(v334 + 16) objectAtIndexedSubscript:v376];
    v28 = *(v334 + 8) + 80 * v376;
  }

  v29 = *(v28 + 64);
  v30 = *&v27[*MEMORY[0x277CD73D8]];
  v31 = v30.u8[0];
  v32 = v30.u8[1];
  v33 = v30.u8[2];
  v34 = v30.u8[3];
  if (v30.u8[0] > 3u || v30.u8[1] > 3u || v30.u8[2] > 3u || v30.u8[3] > 3u)
  {
    goto LABEL_43;
  }

  v50 = vceq_s16((*&vzip1_s8(*v30.i8, *v30.i8) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  if (vminv_u16(v50))
  {
    if (v335 == -1)
    {
      v32 = 1;
      goto LABEL_43;
    }

    v41 = v335;
    goto LABEL_48;
  }

  if (v335 == 1)
  {
    if (v50.i8[6])
    {
      v97 = v33 == 1 && v31 == 2;
      if (v97 && v32 == 0)
      {
        v344 = 0;
        goto LABEL_49;
      }
    }

LABEL_43:
    v30.i16[0] = v31;
    v30.i16[1] = v32;
    v30.i16[2] = v33;
    v30.i16[3] = v34;
    if (vmovn_s16(v30).u32[0] != 50462976)
    {
      v38 = [objc_msgSend(v27 "descriptor")];
      v39 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v27[*MEMORY[0x277CD73C8]] shape:v38];
      v40 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v39];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v27 setReadCount:{objc_msgSend(v27, "readCount") + 1}];
      }

      v377 = v27;
      [v300 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v377 kernelDAGObject:{1), 0, v40, 0}];
      v27 = v40;
    }

    v41 = v335;
    goto LABEL_48;
  }

  if (v335 || (v50.i8[6] & 1) == 0)
  {
    goto LABEL_43;
  }

  v51 = !v33 && v31 == 1;
  if (!v51 || v32 != 2)
  {
    goto LABEL_43;
  }

  v41 = 1;
LABEL_48:
  v344 = v41;
LABEL_49:
  v326 = (*(*a1 + 48))(a1, v27, v26, a4);
  if (v326)
  {
    v42 = *(v329 + 16);
    v378 = 0;
    v379 = 0;
    v377 = 0;
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

    v26 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(a1, v300, a3, a2, v26, &v377, v317, 0);
    if (v377)
    {
      v378 = v377;
      operator delete(v377);
    }
  }

  if (!v26)
  {
    result = MPSNDArrayConvolutionDeviceBehaviorPreG13::EncodeNDArrayConvolution(a1, a2, a3, a4);
    goto LABEL_728;
  }

  v45 = SHIDWORD(v324);
  if (v339)
  {
    v298 = v321 * v324 + v322;
    v45 = v320 * SHIDWORD(v324) + SHIDWORD(v322);
    v46 = v309;
    v47 = v342;
    v342 = v327;
  }

  else
  {
    v298 = v324;
    v47 = v327;
    v46 = v331;
  }

  v332 = v46;
  v49 = *(v46 + 8);
  v312 = *(v329 + 8);
  v299 = *(v345 + 8);
  v306 = v49;
  if (v49 > 301989895)
  {
    if (v49 != 301989896 && v49 != 335544328 && v49 != 536870920)
    {
LABEL_82:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  else if (((v49 - 268435464) > 0x18 || ((1 << (v49 - 8)) & 0x1000101) == 0) && v49 != -1879048176 && v49 != 8)
  {
    goto LABEL_82;
  }

  if (v312 > 301989895)
  {
    if (v312 != 301989896 && v312 != 335544328 && v312 != 536870920)
    {
LABEL_93:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  else if (((v312 - 268435464) > 0x18 || ((1 << (v312 - 8)) & 0x1000101) == 0) && v312 != -1879048176 && v312 != 8)
  {
    goto LABEL_93;
  }

  if (v335 >= 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v344 >= 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v332 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v329 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v345 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v53 = *(v332 + 16);
  v55 = *v53;
  v54 = v53[1];
  if (v54 != v55)
  {
    if (((v54 - v55) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v71 = *(v329 + 16);
  v73 = *v71;
  v72 = v71[1];
  if (v72 != v73)
  {
    if (((v72 - v73) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v74 = *(v345 + 16);
  v76 = *v74;
  v75 = v74[1];
  if (v75 != v76)
  {
    if (((v75 - v76) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v335)
  {
    v56 = 8;
    v57 = 8;
    v58 = 16;
    v59 = 0;
    v60 = 0;
    v61 = 16;
    v277 = v29;
    v279 = v27;
    v295 = v45;
    if (!v317)
    {
      goto LABEL_124;
    }

    goto LABEL_108;
  }

  v60 = 16;
  v59 = 16;
  v58 = 8;
  v57 = 0;
  v56 = 0;
  v61 = 16;
  v277 = v29;
  v279 = v27;
  v295 = v45;
  if (v317)
  {
LABEL_108:
    v62 = 24;
    v63 = 8;
    v64 = 0;
    goto LABEL_125;
  }

LABEL_124:
  v64 = 16;
  v61 = 8;
  v63 = 24;
  v62 = 0;
LABEL_125:
  v77 = *v60;
  v78 = *v59;
  v323 = *v58;
  v304 = *v57;
  v325 = MEMORY[0x18];
  v294 = *v56;
  v293 = *v58;
  v79 = MEMORY[0x18];
  v80 = *v62;
  v81 = *v61 * v338;
  v82 = *v64;
  v83 = *v63;
  if (v339)
  {
    if (v81 != v47 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v80 != v342 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_764;
    }
  }

  else
  {
    if (v81 != v342 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v80 != v47 && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
LABEL_764:
      MTLReportFailure();
    }
  }

  if (v83 != v319 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v82 != v318 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v79 != v325 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v77 != v342 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v78 != v47 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v84 = *(v332 + 8);
  if (v84 > 285212703)
  {
    if (v84 <= 536870915)
    {
      if (v84 > 301989895)
      {
        if (v84 == 301989896)
        {
          v85 = 512;
          v86 = *(v329 + 8);
          if (v86 > 285212703)
          {
            goto LABEL_212;
          }

          goto LABEL_231;
        }

        if (v84 != 335544328)
        {
          goto LABEL_269;
        }

        v85 = 544;
        v86 = *(v329 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }
      }

      else
      {
        if (v84 == 285212704)
        {
          v85 = 416;
          v86 = *(v329 + 8);
          if (v86 > 285212703)
          {
            goto LABEL_212;
          }

          goto LABEL_231;
        }

        if (v84 != 285212736)
        {
          goto LABEL_269;
        }

        v85 = 448;
        v86 = *(v329 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }
      }
    }

    else if (v84 <= 536870927)
    {
      if (v84 == 536870916)
      {
        v85 = 0;
        v86 = *(v329 + 8);
        if (v86 > 285212703)
        {
          goto LABEL_212;
        }

        goto LABEL_231;
      }

      if (v84 != 536870920)
      {
        goto LABEL_269;
      }

      v85 = 32;
      v86 = *(v329 + 8);
      if (v86 <= 285212703)
      {
        goto LABEL_231;
      }
    }

    else
    {
      switch(v84)
      {
        case 536870928:
          v85 = 64;
          v86 = *(v329 + 8);
          if (v86 <= 285212703)
          {
            goto LABEL_231;
          }

          break;
        case 536870944:
          v85 = 96;
          v86 = *(v329 + 8);
          if (v86 <= 285212703)
          {
            goto LABEL_231;
          }

          break;
        case 536870976:
          v85 = 128;
          v86 = *(v329 + 8);
          if (v86 <= 285212703)
          {
            goto LABEL_231;
          }

          break;
        default:
          goto LABEL_269;
      }
    }
  }

  else if (v84 <= 31)
  {
    if (v84 > 7)
    {
      if (v84 == 8)
      {
        v85 = 192;
        v86 = *(v329 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }
      }

      else
      {
        if (v84 != 16)
        {
          goto LABEL_269;
        }

        v85 = 224;
        v86 = *(v329 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }
      }
    }

    else if (v84 == -1879048176)
    {
      v85 = 384;
      v86 = *(v329 + 8);
      if (v86 <= 285212703)
      {
        goto LABEL_231;
      }
    }

    else
    {
      if (v84 != 4)
      {
        goto LABEL_269;
      }

      v85 = 160;
      v86 = *(v329 + 8);
      if (v86 <= 285212703)
      {
        goto LABEL_231;
      }
    }
  }

  else if (v84 <= 268435463)
  {
    if (v84 == 32)
    {
      v85 = 256;
      v86 = *(v329 + 8);
      if (v86 <= 285212703)
      {
        goto LABEL_231;
      }
    }

    else
    {
      if (v84 != 64)
      {
        goto LABEL_269;
      }

      v85 = 288;
      v86 = *(v329 + 8);
      if (v86 <= 285212703)
      {
        goto LABEL_231;
      }
    }
  }

  else
  {
    switch(v84)
    {
      case 268435464:
        v85 = 480;
        v86 = *(v329 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }

        break;
      case 268435472:
        v85 = 320;
        v86 = *(v329 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }

        break;
      case 268435488:
        v85 = 352;
        v86 = *(v329 + 8);
        if (v86 > 285212703)
        {
          break;
        }

LABEL_231:
        if (v86 <= 31)
        {
          if (v86 > 7)
          {
            if (v86 == 8)
            {
              v99 = 6144;
            }

            else
            {
              if (v86 != 16)
              {
                goto LABEL_271;
              }

              v99 = 7168;
            }
          }

          else if (v86 == -1879048176)
          {
            v99 = 12288;
          }

          else
          {
            if (v86 != 4)
            {
              goto LABEL_271;
            }

            v99 = 5120;
          }
        }

        else if (v86 <= 268435463)
        {
          if (v86 == 32)
          {
            v99 = 0x2000;
          }

          else
          {
            if (v86 != 64)
            {
              goto LABEL_271;
            }

            v99 = 9216;
          }
        }

        else
        {
          switch(v86)
          {
            case 268435464:
              v99 = 15360;
              break;
            case 268435472:
              v99 = 10240;
              break;
            case 268435488:
              v99 = 11264;
              goto LABEL_272;
            default:
LABEL_271:
              v99 = 18432;
              break;
          }
        }

        goto LABEL_272;
      default:
LABEL_269:
        v85 = 576;
        v86 = *(v329 + 8);
        if (v86 <= 285212703)
        {
          goto LABEL_231;
        }

        break;
    }
  }

LABEL_212:
  if (v86 <= 536870915)
  {
    if (v86 > 301989895)
    {
      if (v86 != 301989896)
      {
        if (v86 == 335544328)
        {
          v99 = 17408;
          goto LABEL_272;
        }

        goto LABEL_271;
      }

      v99 = 0x4000;
    }

    else
    {
      if (v86 != 285212704)
      {
        if (v86 == 285212736)
        {
          v99 = 14336;
          goto LABEL_272;
        }

        goto LABEL_271;
      }

      v99 = 13312;
    }
  }

  else if (v86 <= 536870927)
  {
    if (v86 != 536870916)
    {
      if (v86 == 536870920)
      {
        v99 = 1024;
        goto LABEL_272;
      }

      goto LABEL_271;
    }

    v99 = 0;
  }

  else
  {
    switch(v86)
    {
      case 536870928:
        v99 = 2048;
        break;
      case 536870944:
        v99 = 3072;
        break;
      case 536870976:
        v99 = 4096;
        break;
      default:
        goto LABEL_271;
    }
  }

LABEL_272:
  v100 = v99 | v85;
  if (v339)
  {
    v101 = *(v309 + 8);
    if (v101 > 285212703)
    {
      if (v101 <= 536870915)
      {
        if (v101 > 301989895)
        {
          if (v101 == 301989896)
          {
            v102 = 0x80000;
          }

          else
          {
            if (v101 != 335544328)
            {
              goto LABEL_316;
            }

            v102 = 557056;
          }
        }

        else if (v101 == 285212704)
        {
          v102 = 425984;
        }

        else
        {
          if (v101 != 285212736)
          {
            goto LABEL_316;
          }

          v102 = 458752;
        }
      }

      else if (v101 <= 536870927)
      {
        if (v101 == 536870916)
        {
          v102 = 0;
        }

        else
        {
          if (v101 != 536870920)
          {
            goto LABEL_316;
          }

          v102 = 0x8000;
        }
      }

      else
      {
        switch(v101)
        {
          case 536870928:
            v102 = 0x10000;
            break;
          case 536870944:
            v102 = 98304;
            break;
          case 536870976:
            v102 = 0x20000;
            break;
          default:
            goto LABEL_316;
        }
      }
    }

    else if (v101 <= 31)
    {
      if (v101 > 7)
      {
        if (v101 == 8)
        {
          v102 = 196608;
        }

        else
        {
          if (v101 != 16)
          {
            goto LABEL_316;
          }

          v102 = 229376;
        }
      }

      else if (v101 == -1879048176)
      {
        v102 = 393216;
      }

      else
      {
        if (v101 != 4)
        {
          goto LABEL_316;
        }

        v102 = 163840;
      }
    }

    else if (v101 <= 268435463)
    {
      if (v101 == 32)
      {
        v102 = 0x40000;
      }

      else
      {
        if (v101 != 64)
        {
          goto LABEL_316;
        }

        v102 = 294912;
      }
    }

    else
    {
      switch(v101)
      {
        case 268435464:
          v102 = 491520;
          break;
        case 268435472:
          v102 = 327680;
          break;
        case 268435488:
          v102 = 360448;
          break;
        default:
LABEL_316:
          v102 = 589824;
          break;
      }
    }

    v100 |= v102;
  }

  v103 = *(v345 + 8);
  v282 = v100;
  if (v103 <= 285212703)
  {
    if (v103 <= 31)
    {
      if (v103 > 7)
      {
        if (v103 == 8)
        {
          v104 = 6;
        }

        else
        {
          if (v103 != 16)
          {
            goto LABEL_361;
          }

          v104 = 7;
        }
      }

      else if (v103 == -1879048176)
      {
        v104 = 12;
      }

      else
      {
        if (v103 != 4)
        {
          goto LABEL_361;
        }

        v104 = 5;
      }
    }

    else if (v103 <= 268435463)
    {
      if (v103 == 32)
      {
        v104 = 8;
      }

      else
      {
        if (v103 != 64)
        {
          goto LABEL_361;
        }

        v104 = 9;
      }
    }

    else
    {
      switch(v103)
      {
        case 268435464:
          v104 = 15;
          break;
        case 268435472:
          v104 = 10;
          break;
        case 268435488:
          v104 = 11;
          goto LABEL_362;
        default:
LABEL_361:
          v104 = 18;
          break;
      }
    }

    goto LABEL_362;
  }

  if (v103 <= 536870915)
  {
    if (v103 > 301989895)
    {
      if (v103 == 301989896)
      {
        v104 = 16;
      }

      else
      {
        if (v103 != 335544328)
        {
          goto LABEL_361;
        }

        v104 = 17;
      }
    }

    else if (v103 == 285212704)
    {
      v104 = 13;
    }

    else
    {
      if (v103 != 285212736)
      {
        goto LABEL_361;
      }

      v104 = 14;
    }

    goto LABEL_362;
  }

  if (v103 > 536870927)
  {
    switch(v103)
    {
      case 536870928:
        v104 = 2;
        break;
      case 536870944:
        v104 = 3;
        break;
      case 536870976:
        v104 = 4;
        break;
      default:
        goto LABEL_361;
    }

    goto LABEL_362;
  }

  if (v103 == 536870916)
  {
    v281 = 0;
  }

  else
  {
    if (v103 != 536870920)
    {
      goto LABEL_361;
    }

    v104 = 1;
LABEL_362:
    v281 = v104;
  }

  v307 = v342 / v338;
  v308 = v47 / v338;
  switch(v306)
  {
    case 8:
LABEL_366:
      v105 = 2;
      v280 = v26;
      if (v312 != 8)
      {
        goto LABEL_371;
      }

      goto LABEL_373;
    case 268435488:
      v105 = 1;
      v280 = v26;
      if (v312 != 8)
      {
        goto LABEL_371;
      }

      goto LABEL_373;
    case 536870920:
      goto LABEL_366;
  }

  v105 = 0;
  v280 = v26;
  if (v312 == 8)
  {
LABEL_373:
    v106 = 2;
    goto LABEL_376;
  }

LABEL_371:
  if (v312 == 268435488)
  {
    v106 = 1;
  }

  else
  {
    if (v312 == 536870920)
    {
      goto LABEL_373;
    }

    v106 = 0;
  }

LABEL_376:
  __s2 = v304;
  v359 = v323;
  v107 = v47 / v338;
  v360 = v342 / v338;
  v361 = v47 / v338;
  v362 = v318;
  v363 = v319;
  v364 = v338;
  v365 = v325;
  v366 = v321;
  v367 = v320;
  v368 = v314;
  v369 = v313;
  v370 = v344;
  v371 = v335;
  v372 = v317;
  v373 = v105;
  v108 = v342 / v338;
  v374 = v106;
  v375 = 0;
  if (v339)
  {
    v107 = v342 / v338;
    v360 = v47 / v338;
    v361 = v342 / v338;
    v108 = v47 / v338;
  }

  v109 = *(a4 + 136);
  if (!v302)
  {
    v114 = *(a1 + 264);
    if (v114 && (v115 = *(a1 + 272)) != 0)
    {
      while (memcmp(v114, &__s2, 0x48uLL))
      {
        v114 += 108;
        if (!--v115)
        {
          goto LABEL_385;
        }
      }
    }

    else
    {
LABEL_385:
      v116 = *(a1 + 256);
      if (!v116)
      {
LABEL_389:
        v310 = 0;
        v117 = (v325 * v323 * v304);
        if (v108 >= 0x20)
        {
          v118 = 32;
        }

        else
        {
          v118 = 16;
        }

        v328 = v118;
        v119 = 63 - __clz(v117);
        if (v119 >= 6)
        {
          v119 = 6;
        }

        if (v119 <= 4)
        {
          LOBYTE(v119) = 4;
        }

        v120 = 63 - __clz(v107);
        LODWORD(v119) = 1 << v119;
        if (v117)
        {
          v119 = v119;
        }

        else
        {
          v119 = 16;
        }

        v346 = v119;
        if (v120 >= 6)
        {
          v121 = 6;
        }

        else
        {
          v121 = v120;
        }

        if (v121 <= 4)
        {
          LOBYTE(v121) = 4;
        }

        LODWORD(v121) = 1 << v121;
        if (v107)
        {
          v121 = v121;
        }

        else
        {
          v121 = 16;
        }

        v343 = v121;
        if (v117 >= 0x40000 && v107 >= 0x80)
        {
          v310 = 2;
          v328 = 16;
          v346 = 64;
          v343 = 128;
        }

        v301 = 0;
        v112 = 0;
        v283 = 0;
        v284 = 0;
        v122 = v346;
        if (v344)
        {
          v123 = v343;
        }

        else
        {
          v123 = v346;
        }

        if (!v344)
        {
          v122 = v343;
        }

        if (v123 <= 0x10)
        {
          v110 = 1;
        }

        else
        {
          v110 = 2;
        }

        if (v122 <= 0x10)
        {
          v111 = 1;
        }

        else
        {
          v111 = 2;
        }

        if ((*(v109 + *MEMORY[0x277CD7378]) & 0x10) != 0)
        {
          goto LABEL_422;
        }

        goto LABEL_380;
      }

      v114 = *(a1 + 248);
      while (memcmp(v114, &__s2, 0x48uLL))
      {
        v114 += 108;
        if (!--v116)
        {
          goto LABEL_389;
        }
      }
    }

    v346 = *(v114 + 72);
    v343 = *(v114 + 76);
    v110 = *(v114 + 84);
    v328 = *(v114 + 80);
    v111 = *(v114 + 88);
    v310 = *(v114 + 92);
    v284 = *(v114 + 96);
    v283 = *(v114 + 97);
    v112 = *(v114 + 100);
    v301 = *(v114 + 104);
    if ((*(v109 + *MEMORY[0x277CD7378]) & 0x10) != 0)
    {
      goto LABEL_422;
    }

LABEL_380:
    v113 = v110;
    goto LABEL_423;
  }

  v346 = *v302;
  v343 = v302[1];
  v110 = v302[3];
  v328 = v302[2];
  v111 = v302[4];
  v310 = v302[5];
  v284 = *(v302 + 24);
  v283 = *(v302 + 25);
  v112 = v302[7];
  v301 = *(v302 + 32);
  if ((*(v109 + *MEMORY[0x277CD7378]) & 0x10) == 0)
  {
    goto LABEL_380;
  }

LABEL_422:
  v124 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", v304, v323, v108, v107, v318, v319, v338, v325, v321, v320, v314, v313, v344, v335, v317, v105, v106, 0];
  v113 = v110;
  MPSKernel_LogInfo(v109, 1uLL, "Direct A18 kernel running key with params:    {%s, %s}\n", [v124 UTF8String], objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"{%d,%d,%d,%d,%d,%d,%d,%d,%d,%d}", v346, v343, v328, v110, v111, v310, v284, v283, v112, v301), "UTF8String"));
  v109 = *(a4 + 136);
LABEL_423:
  if (qword_27DF86CC0 == -1)
  {
    if (byte_27DF86C83 == 1)
    {
LABEL_425:
      if ([v109 conformsToProtocol:&unk_284CCB9C0])
      {
        if (!qword_27DF86CB8)
        {
          qword_27DF86CB8 = objc_alloc_init(MPSNDArrayAutoTuneRecorderObj);
        }

        v125 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&__s2 length:72];
        [qword_27DF86CB8 recordNode:v125 kernelID:1];
      }
    }
  }

  else
  {
    dispatch_once(&qword_27DF86CC0, &__block_literal_global_326);
    if (byte_27DF86C83 == 1)
    {
      goto LABEL_425;
    }
  }

  v126 = v291;
  if (v296 == -1)
  {
    v126 = 0;
  }

  if (!v126)
  {
    goto LABEL_539;
  }

  if ((v296 & 0x8000000000000000) != 0)
  {
    v137 = -1;
    goto LABEL_537;
  }

  if (v296 <= 0xD7F)
  {
    if (v370)
    {
      v127 = v296;
      while (1)
      {
        v128 = 16 << ((v127 / 0x30u) & 3);
        v129 = 16 << (v127 % 3u);
        if (v129 <= v128)
        {
          v130 = 16 * (4u >> (v127 % 3u));
          v131 = (16 << ((v127 / 0xCu) & 3));
          v132 = (v129 - 1) & v128;
          v133 = (4u >> (v127 % 3u)) << (v127 % 3u) != 4 || v130 > v131;
          v134 = !v133 && ((v130 + 255) & v131) == 0;
          if (v134 && v132 == 0)
          {
            break;
          }
        }

        if (++v127 == 3456)
        {
          goto LABEL_469;
        }
      }

      LOBYTE(v136) = v127 % 3u;
      v111 = 4u >> v136;
      v346 = (16 << ((v127 / 0xCu) & 3));
      v343 = (16 << ((v127 / 0x30u) & 3));
    }

    else
    {
      v127 = v296;
      while (1)
      {
        v136 = v127 - 3 * (v127 / 3u);
        v138 = 4u >> (v127 % 3u);
        v139 = (16 << ((v127 / 0x30u) & 3));
        if (16 * v138 <= v139)
        {
          v140 = 16 << ((v127 / 0xCu) & 3);
          v141 = v138 << (v127 % 3u) != 4 || 16 << (v127 % 3u) > v140;
          v142 = !v141 && (((16 << (v127 % 3u)) + 255) & v140) == 0;
          if (v142 && ((16 * v138 - 1) & v139) == 0)
          {
            break;
          }
        }

        if (++v127 == 3456)
        {
          goto LABEL_469;
        }
      }

      v111 = v138;
      v346 = (16 << ((v127 / 0xCu) & 3));
      v343 = (16 << ((v127 / 0x30u) & 3));
    }

    v283 = 0;
    v284 = 0;
    v328 = (16 << (((43691 * v127) & 0x800000) != 0));
    v301 = 1;
    v113 = (1 << v136);
    v112 = v127 / 0x480u;
    v310 = (((43691 * v127) >> 24) - 3 * ((171 * (v127 / 0x180u)) >> 9));
  }

LABEL_469:
  v145 = (v343 & (v343 - 1)) == 0 && v343 < 0x81;
  v148 = (v346 & (v346 - 1)) == 0 && v113 * v111 == 4 && v346 < 0x81 && v145;
  if ((v328 & (v328 - 1)) != 0 || v328 >= 0x21)
  {
    v148 = 0;
  }

  if (!v370)
  {
    if (16 * v113 <= v346)
    {
      v152 = v346 % (16 * v113) == 0;
      v151 = 16 * v111;
      if (16 * v111 <= v343)
      {
        goto LABEL_502;
      }
    }

    else
    {
      v152 = 0;
      v151 = 16 * v111;
      if (16 * v111 <= v343)
      {
LABEL_502:
        if (v148 && v152)
        {
          goto LABEL_503;
        }
      }
    }

LABEL_500:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_504;
  }

  if (16 * v111 <= v346)
  {
    v150 = v346 % (16 * v111) == 0;
    v151 = 16 * v113;
    if (16 * v113 <= v343)
    {
      goto LABEL_497;
    }

    goto LABEL_500;
  }

  v150 = 0;
  v151 = 16 * v113;
  if (16 * v113 > v343)
  {
    goto LABEL_500;
  }

LABEL_497:
  if (!v148 || !v150)
  {
    goto LABEL_500;
  }

LABEL_503:
  if (v343 % v151)
  {
    goto LABEL_500;
  }

LABEL_504:
  if (v296 > 0xD7E)
  {
LABEL_535:
    v137 = -1;
  }

  else
  {
    v137 = v296 + 1;
    if (v370)
    {
      while (1)
      {
        v153 = v137 % 3u;
        v154 = (16 << ((v137 / 0xCu) & 3));
        v155 = 16 << ((v137 / 0x30u) & 3);
        v156 = (4u >> v153) << v153;
        v157 = 16 * (4u >> v153);
        v158 = 16 << v153;
        v159 = v156 != 4 || v157 > v154;
        v160 = !v159 && ((v157 + 255) & v154) == 0;
        v161 = !v160 || v158 > v155;
        if (!v161 && ((v158 + 255) & v155) == 0)
        {
          break;
        }

        if (++v137 == 3456)
        {
          goto LABEL_535;
        }
      }
    }

    else
    {
      while (1)
      {
        v163 = v137 % 3u;
        v164 = 4u >> v163;
        v165 = 16 << ((v137 / 0xCu) & 3);
        v166 = (16 << ((v137 / 0x30u) & 3));
        v167 = v164 << v163;
        v168 = 16 << v163;
        v169 = 16 * v164;
        v170 = v167 != 4 || v168 > v165;
        v171 = !v170 && ((v168 + 255) & v165) == 0;
        v172 = !v171 || v169 > v166;
        if (!v172 && ((v169 + 255) & v166) == 0)
        {
          break;
        }

        if (++v137 == 3456)
        {
          goto LABEL_535;
        }
      }
    }
  }

  if (v137 == v296)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v137 = v296;
  }

LABEL_537:
  *(v109 + 320) = v137;
  if (*(v109 + 328) == 1)
  {
    *(v109 + 328) = 0;
    v174 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", __s2, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375];
    v175 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%d, %d, %d, %d, %d, %d, %d, %d, %d, %d}", v346, v343, v328, v113, v111, v310, v284, v283, v112, v301];
    fprintf(*MEMORY[0x277D85DF8], "Direct A18 kernel running auto tune iteration %7ld key with params:    {%s, %s}\n", v296, [v174 UTF8String], objc_msgSend(v175, "UTF8String"));
  }

LABEL_539:
  if (v317)
  {
    v176 = v326;
  }

  else
  {
    v176 = 1;
  }

  v179 = (v321 != 1 || v320 != 1) && v344 == 0;
  v303 = v179;
  v180 = v113;
  v285 = v176;
  if (v176)
  {
    v292 = 0;
  }

  else
  {
    v182 = v318 != 1 || v319 != 1;
    v292 = v182;
  }

  v297 = *(v334 + 208);
  v276 = *(v334 + 192);
  v183 = getenv("MPSNDARRAY_DIRECTCONV_TILEM");
  v184 = getenv("MPSNDARRAY_DIRECTCONV_TILEK");
  v185 = getenv("MPSNDARRAY_DIRECTCONV_TILEN");
  v186 = getenv("MPSNDARRAY_DIRECTCONV_SIMDSX");
  v187 = getenv("MPSNDARRAY_DIRECTCONV_SIMDSY");
  v188 = getenv("MPSNDARRAY_DIRECTCONV_TG_SWIZZLE");
  v189 = getenv("MPSNDARRAY_DIRECTCONV_LM_DATA");
  v190 = getenv("MPSNDARRAY_DIRECTCONV_LICMPTRS");
  getenv("MPSNDARRAY_UNROLL_FACTOR");
  if (v183)
  {
    LODWORD(v346) = atoi(v183);
  }

  if (v184)
  {
    LODWORD(v328) = atoi(v184);
  }

  if (v185)
  {
    LODWORD(v343) = atoi(v185);
  }

  if (v186)
  {
    v180 = atoi(v186);
  }

  if (v187)
  {
    LODWORD(v111) = atoi(v187);
  }

  if (v188)
  {
    LODWORD(v310) = atoi(v188);
  }

  if (v189)
  {
    v303 = atoi(v189) != 0;
  }

  if (v190)
  {
    atoi(v190);
  }

  if (v346 > 0x80 || (v191.i32[0] = v346, v192 = vcnt_s8(v191), v192.i16[0] = vaddlv_u8(v192), v192.i32[0] >= 2u))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (((v343 & (v343 - 1)) != 0 || v343 >= 0x81) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (((v328 & (v328 - 1)) != 0 || v328 >= 0x21) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v275 = v111 * v180;
  if ((v111 * v180) >= 5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v344)
  {
    if (v344 == 1)
    {
      if ((16 * v111 > v346 || v346 % (16 * v111)) && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if ((16 * v180 > v343 || v343 % (16 * v180)) && MTLReportFailureTypeEnabled())
      {
        goto LABEL_600;
      }
    }
  }

  else
  {
    if ((16 * v180 > v346 || v346 % (16 * v180)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (16 * v111 > v343 || v343 % (16 * v111)) && (MTLReportFailureTypeEnabled())
    {
LABEL_600:
      MTLReportFailure();
    }
  }

  v193 = *&v297[*MEMORY[0x277CD73D8]];
  v194 = [*(v334 + 232) finalOp];
  (*(*v194 + 16))(v194);
  v195 = MEMORY[0x277CD7410];
  if (!v315)
  {
    if (v311)
    {
      goto LABEL_617;
    }

LABEL_615:
    v278 = 0;
    goto LABEL_618;
  }

  v196 = [*(v334 + 16) objectAtIndexedSubscript:v349];
  v197 = v285;
  v198 = v196;
  if (v326 && [v196 numberOfDimensions] != 1)
  {
    v199 = *([*(v334 + 232) inputTensorAtIndex:v349] + 16);
    v378 = 0;
    v379 = 0;
    v377 = 0;
    v201 = *v199;
    v200 = v199[1];
    if (v200 != v201)
    {
      if (((v200 - v201) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v197 = v285;
    v198 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(a1, v300, a3, a2, v198, &v377, v317, 0);
    if (v377)
    {
      v378 = v377;
      operator delete(v377);
    }
  }

  v202 = 12;
  if (v197)
  {
    v202 = 0;
  }

  v203 = (*&v198[*v195 + v202] > 1u) << 27;
  v204 = *&v198[*MEMORY[0x277CD73C8]];
  if (v204 == -1879048176)
  {
    if (v311)
    {
      goto LABEL_617;
    }

    goto LABEL_615;
  }

  if (v204 != 268435488)
  {
    if (v311)
    {
      goto LABEL_617;
    }

    goto LABEL_615;
  }

  if (!v311)
  {
    goto LABEL_615;
  }

LABEL_617:
  v205 = [*(v334 + 16) objectAtIndexedSubscript:v348];
  *(v205 + *MEMORY[0x277CD73C8]);
  v278 = (*(v205 + *v195 + 12) == 1) << 31;
LABEL_618:
  v206 = [*(v334 + 232) graph];
  v207 = v318 & 0xF;
  if (v318 > 0xF)
  {
    v207 = 0;
  }

  v208 = 16 * (v319 & 0xF);
  if (v319 > 0xF)
  {
    v208 = 0;
  }

  v209 = (v338 & 3) << 8;
  if (v338 > 3)
  {
    v209 = 0;
  }

  v210 = v321 != v320 || v321 > 7;
  v211 = (v321 & 7) << 10;
  if (v210)
  {
    v211 = 0;
  }

  v212 = (v314 & 3) << 13;
  if (v314 > 7)
  {
    v212 = 0;
  }

  v213 = (v313 & 3) << 15;
  if (v313 > 7)
  {
    v213 = 0;
  }

  v222 = v318 == 1 && v319 == 1 && v298 == 0 && v295 == 0 && v321 == 1 && v320 == 1 && v314 == 1 && v313 == 1 && v294 == v304;
  if (v339)
  {
    v223 = 0;
  }

  else
  {
    v223 = 0x100000;
  }

  if (v222 && v293 == v323)
  {
    v224 = v223;
  }

  else
  {
    v224 = 0;
  }

  v225 = v207 | ((v335 == 0) << 29) | v208 | v211 | v212 | v213 | v209 | (v339 << 17) | ((v344 == 0) << 30) | ((v325 == 1) << 19) | v224;
  if (v344)
  {
    v226 = v307;
  }

  else
  {
    v226 = v304;
  }

  *(v206 + 84);
  v353[4] = -1;
  v353[3] = -1;
  v353[6] = v281 | v282;
  v356 = v287 | (v339 << 8) | 0x10000u;
  v353[5] = v225 | (v307 << 18) & 0x7C00000 | ((v226 & 3) << 27) | ((v307 < v328) << 18) | v278;
  v354 = 0u;
  v355 = 0u;
  v357 = 0;
  if (v311 | v315)
  {
    v227 = a2;
    v228 = v289;
    v229 = v288;
    if (v311 && v315)
    {
      v230 = *(v332 + 8);
      v231 = v334;
      if (v230 == 8)
      {
        *(v329 + 8);
      }

      else if (v230 == 536870920)
      {
        *(v329 + 8);
      }
    }

    else
    {
      v231 = v334;
      if (v311)
      {
        if (!v315)
        {
          v233 = *(v332 + 8);
          if (v233 == 8)
          {
            *(v329 + 8);
          }

          else if (v233 == 536870920)
          {
            *(v329 + 8);
          }
        }
      }

      else if (*(v332 + 8) == 268435472)
      {
        *(v329 + 8);
      }
    }
  }

  else
  {
    v232 = *(v332 + 8);
    v227 = a2;
    v228 = v289;
    v229 = v288;
    if (v232 <= 268435471)
    {
      v231 = v334;
      switch(v232)
      {
        case -1879048176:
          *(v329 + 8);
          break;
        case 8:
          *(v329 + 8);
          break;
        case 268435464:
          *(v329 + 8);
          break;
      }
    }

    else
    {
      v231 = v334;
      if (v232 > 335544327)
      {
        if (v232 == 335544328)
        {
          *(v329 + 8);
        }

        else if (v232 == 536870920)
        {
          *(v329 + 8);
        }
      }

      else if (v232 == 268435472)
      {
        *(v329 + 8);
      }

      else if (v232 == 301989896)
      {
        *(v329 + 8);
      }
    }
  }

  v273 = v228;
  v274 = v229;
  v272 = *(v231 + 232);
  MPSLibrary::CreateUberShaderKey();
  [v227 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v272, v273, v274, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSGetUIntDivisorMagicNumber();
  v340 = v234;
  MPSGetUIntDivisorMagicNumber();
  v336 = v235;
  MPSGetUIntDivisorMagicNumber();
  v333 = v236;
  MPSGetUIntDivisorMagicNumber();
  v330 = v237;
  v238 = v340;
  HIDWORD(v238) = 0;
  v341 = v238;
  v239 = v336;
  HIDWORD(v239) = 0;
  v337 = v239;
  v403 = 0u;
  v404 = 0u;
  v401 = 0u;
  v402 = 0u;
  v400 = 0u;
  memset(v399, 0, sizeof(v399));
  v397 = 0u;
  v398 = 0u;
  v395 = 0u;
  v396 = 0u;
  v393 = 0u;
  v394 = 0u;
  LODWORD(v377) = v307;
  HIDWORD(v377) = (v307 + 3) & 0xFFFFFFFC;
  LODWORD(v378) = log2(((v307 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  HIDWORD(v378) = (v307 + 15) & 0xFFFFFFF0;
  LODWORD(v379) = v308;
  WORD2(v379) = v318;
  HIWORD(v379) = v319;
  v380 = v338;
  v240 = (v308 + v343 - 1) / v343;
  v381 = v240;
  v383 = __PAIR64__(v293, v294);
  v382 = v325;
  v384 = (v294 + 3) & 0xFFFFFFFC;
  v385 = (v304 + 3) & 0xFFFFFFFC;
  v386 = __PAIR64__(v323, v304);
  v387 = __PAIR64__(v293, v294);
  LODWORD(v241) = v298 - (v314 * (v318 - 1) + 1) / 2;
  DWORD1(v241) = v295 - (v313 * (v319 - 1) + 1) / 2;
  v388 = v241;
  v390 = v320;
  v389 = v321;
  v392 = v313;
  v391 = v314;
  v242 = *MEMORY[0x277CD7400];
  v243 = *&v279[v242];
  v244 = *MEMORY[0x277CD73D0];
  v245 = v243 * *&v279[v244 + 4];
  v247 = v330;
  v246 = v333;
  HIDWORD(v247) = 0;
  v248 = v306 >> 3;
  HIDWORD(v249) = 1;
  LODWORD(v249) = v245 * *&v279[v244 + 8] / v248;
  DWORD1(v249) = v245 / v248;
  HIDWORD(v241) = 1;
  DWORD2(v249) = v243 / v248;
  v394 = v249;
  v250 = *&v297[v242];
  v251 = v250 * *&v297[v244 + 4];
  HIDWORD(v246) = 0;
  v252 = v299 >> 3;
  HIDWORD(v249) = 1;
  LODWORD(v249) = v251 * *&v297[v244 + 8] / v252;
  DWORD1(v249) = v251 / v252;
  DWORD2(v249) = v250 / v252;
  v395 = v249;
  v253 = *&v279[v242];
  v254 = v253 * *&v279[v244 + 4];
  HIDWORD(v249) = 1;
  LODWORD(v249) = v254 * *&v279[v244 + 8] / v248;
  DWORD1(v249) = v254 / v248;
  DWORD2(v249) = v253 / v248;
  v396 = v249;
  v255 = *(&v280->super.super.isa + v242);
  v256 = v280 + v244;
  v257 = v255 * *(v256 + 1);
  v258 = v312 >> 3;
  LODWORD(v241) = v257 * *(v256 + 2) / v258;
  DWORD1(v241) = v257 / v258;
  DWORD2(v241) = v255 / v258;
  v397 = v241;
  v398 = 0uLL;
  *(&v399[2] + 1) = 0;
  *(&v399[1] + 8) = 0u;
  *(v399 + 8) = 0u;
  v400 = v341;
  v401 = v337;
  v402 = v246;
  v403 = v247;
  LODWORD(v399[0]) = 0;
  *&v404 = __PAIR64__(v348, v349);
  MPSSetNDArraysOnComputeEncoder(a2, v334, 4, 0, 0);
  [a2 setBuffer:objc_msgSend(v279 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v279, 0, 4, 0, 0) + v277, 29}];
  if (v326)
  {
    v259 = 0;
  }

  else
  {
    v259 = v286;
  }

  [a2 setBuffer:-[MPSTemporaryNDArray buffer](v280 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v280, 0, 4, 0, 0) + v259, 28}];
  [a2 setBuffer:objc_msgSend(v297 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v297, 0, 4, 0, 0) + v276, 27}];
  v260 = (v306 >> 3) * (v328 * v346);
  if (!v303)
  {
    v260 = 0;
  }

  v261 = (v312 >> 3) * (v343 * v328);
  if (!v292)
  {
    v261 = 0;
  }

  [a2 setThreadgroupMemoryLength:v260 + v261 atIndex:0];
  [a2 setBuffer:0 offset:0 atIndex:25];
  v262 = v385 * v325 * v323;
  if (v344)
  {
    v262 = v325 * v323 * v304;
  }

  v263 = (v346 + v262 - 1) / v346;
  if (v344)
  {
    v264 = v240 * v338;
  }

  else
  {
    v264 = v263;
  }

  if (v344)
  {
    v265 = v263;
  }

  else
  {
    v265 = v240 * v338;
  }

  if (v310 == 2)
  {
    MPSGetUShortDivisorMagicNumber();
    v350 = v267;
    MPSGetUIntDivisorMagicNumber();
    v268 = v350;
    HIWORD(v268) = 0;
    HIDWORD(v269) = 0;
    HIDWORD(v398) = 131074;
    WORD1(v399[0]) = (v265 + 1) >> 1;
    LOWORD(v399[0]) = (v264 + 1) >> 1;
    *(&v399[0] + 1) = v268;
    *(&v270 + 1) = 0x100000001;
    *&v270 = __PAIR64__(v265, v264);
    v399[1] = v269;
    v399[2] = v270;
    v264 = ((v264 + 1) >> 1) * ((v265 + 1) >> 1);
    v266 = 4;
  }

  else if (v310 == 1)
  {
    v266 = v265;
  }

  else
  {
    v266 = v264;
    v264 = v265;
  }

  [a2 setBytes:&v377 length:304 atIndex:26];
  v353[0] = v266;
  v353[1] = v264;
  v353[2] = 1;
  v351 = (32 * v275);
  v352 = vdupq_n_s64(1uLL);
  [a2 dispatchThreadgroups:v353 threadsPerThreadgroup:&v351];
  if (v326)
  {
    MPSDecrementReadCount(v280);
  }

  result = 0;
LABEL_728:
  v271 = *MEMORY[0x277D85DE8];
  return result;
}