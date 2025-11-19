uint64_t MPSNDArrayIdentityAMDBehaviors::getNZStepsLog2PerThread(__n128 a1, uint64_t a2, int a3)
{
  v3 = 2 * (a1.n128_u32[2] > 2);
  if (a1.n128_u32[2] == 2)
  {
    v3 = 1;
  }

  if ((a1.n128_u32[2] * a1.n128_u32[3]) >= 513)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t EncodeArrayIdentity(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    strcpy(v123, "MPSNDArrayIdentityTest");
    HIBYTE(v123[2]) = 22;
    v122 = 0;
    LOBYTE(v121) = 0;
    MPSKernelLogPerfTestCommandline(a1, a4, v123, &v121);
    if (v122 < 0)
    {
      operator delete(v121);
      if ((SHIBYTE(v123[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((SHIBYTE(v123[2]) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(v123[0]);
  }

LABEL_4:
  v103 = *(a1 + *MEMORY[0x277CD7370]);
  v7 = [*(a4 + 232) graph];
  v8 = **(v7 + 56);
  if (*(*(v7 + 56) + 8) == v8)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v9 = *v8;
  v11 = *(*v8 + 8);
  v10 = *v11;
  if (*(v11 + 8) == *v11 || (v12 = *v10, v13 = *(a4 + 16), BaseTensor::GetAccessPattern(), v15 = **(v9 + 8), *(*(v9 + 8) + 8) == v15) || (v107 = v14, v100 = a2, v16 = **(v9 + 24), *(*(v9 + 24) + 8) == v16))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v17 = *(*v15 + 8);
  v18 = *v16;
  v98 = *(*v16 + 2);
  DimensionSize = BaseTensor::GetDimensionSize(*v16);
  v20 = 1;
  v21 = BaseTensor::GetDimensionSize(v18);
  v22 = BaseTensor::GetDimensionSize(v18);
  v23 = BaseTensor::GetDimensionSize(v18);
  *&v24 = __PAIR64__(v21, DimensionSize);
  *(&v24 + 1) = __PAIR64__(v23, v22);
  v105 = v24;
  v25.i64[0] = 0xFF000000FFLL;
  v25.i64[1] = 0xFF000000FFLL;
  v26 = vzip1_s8(*(*(a4 + 208) + *MEMORY[0x277CD73D8]), *&vandq_s8(vmovl_u16(vzip1_s8(v107, v107)), v25));
  v27 = *(a1 + *MEMORY[0x277CD7370]);
  v120 = 0;
  v28 = *(v27 + 32);
  v29 = (*(*v28 + 32))(v28, &v120);
  v30 = v120;
  v31 = LODWORD(v29);
  v109 = v105;
  v32 = BYTE4(v29);
  v34 = v33;
  v36 = v35;
  v97 = *(&v109 & 0xFFFFFFFFFFFFFFF3 | (4 * (LOBYTE(v29) & 3)));
  v37.n128_u32[0] = v97;
  v108 = *(&v109 & 0xFFFFFFFFFFFFFFF3 | (4 * (BYTE4(v29) & 3)));
  v37.n128_u32[1] = v108;
  v101 = *(&v109 & 0xFFFFFFFFFFFFFFF3 | (4 * (v33 & 3)));
  v37.n128_u32[2] = v101;
  v102 = *(&v109 & 0xFFFFFFFFFFFFFFF3 | (4 * (v35 & 3)));
  v37.n128_u32[3] = v102;
  v104 = v120;
  if (LODWORD(v29) != v120)
  {
    v95 = v37;
    v38 = (*(*v28 + 24))(v28, v29, v37);
    v37 = v95;
    v30 = v104;
    v20 = v38;
  }

  v117[0] = v37;
  v117[1] = v105;
  v39 = (*(*v28 + 40))(v28, v31 != v30, v37);
  v40 = v39;
  v41 = v101 + (1 << v39) - 1;
  v106 = 1 << v39;
  v42 = -(1 << v39);
  v43 = 31 - __clz(v41 & v42);
  v44 = v41 & v42;
  if (v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  if (v20 <= 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = v20;
  }

  if (v102 >= 9)
  {
    v47 = 0;
  }

  else
  {
    v47 = v102;
  }

  v118 = v44;
  v119 = v45;
  v94 = v46;
  v96 = v47;
  v111[3] = -1;
  v111[4] = -1;
  v111[5] = ((v108 > 1) << 25) | ((v101 > 1) << 26) | ((v102 > 1) << 27) | v31 & 3 | ((v36 & 3) << 6) | (4 * (v32 & 3)) & 0xCF | (16 * (v34 & 3)) | (v47 << 16) | ((v46 << 8) - 256) & 0xFF00 | ((v39 & 3) << 20) | (((v44 & (v44 - 1)) == 0) << 24);
  v112 = 0u;
  v113 = 0u;
  v114 = 0;
  v115 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v116 = 0;
  if (v17 != v98)
  {
    if ((v17 & 0x1000000) != 0)
    {
      v51 = 64;
    }

    else
    {
      v51 = 32;
    }

    v99 = v51;
    v52 = 11;
    if ((v17 & 0x1000000) == 0)
    {
      v52 = 6;
    }

    if (v31 == v30)
    {
      v52 = 0;
    }

    v48 = v100;
    v49 = MEMORY[0x277CD7370];
    goto LABEL_73;
  }

  v48 = v100;
  if (v17 <= 285212735)
  {
    v49 = MEMORY[0x277CD7370];
    if (v17 == 32)
    {
      v52 = 2;
      v99 = 32;
      if (v31 == v104)
      {
        goto LABEL_73;
      }

      goto LABEL_59;
    }

    if (v17 == 64)
    {
      v55 = _MPSUseInt64Calculations();
      if (v55)
      {
        v56 = 64;
      }

      else
      {
        v56 = 32;
      }

      v99 = v56;
      v52 = 2;
      if (v55)
      {
        v52 = 4;
      }

      if (v31 == v104)
      {
        goto LABEL_73;
      }

      goto LABEL_59;
    }

    v50 = v104;
    if (v17 != 285212704)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

  v50 = v104;
  v49 = MEMORY[0x277CD7370];
  if (v17 == 285212736)
  {
LABEL_45:
    v52 = 5;
    v99 = v17;
    if (v31 == v50)
    {
      goto LABEL_73;
    }

    goto LABEL_59;
  }

  if (v17 != 536870944)
  {
    if (v17 == 536870976)
    {
      v53 = _MPSUseInt64Calculations();
      if (v53)
      {
        v54 = 64;
      }

      else
      {
        v54 = 32;
      }

      v99 = v54;
      v52 = 3;
      if (!v53)
      {
        v52 = 1;
      }

      if (v31 == v104)
      {
        goto LABEL_73;
      }

      goto LABEL_59;
    }

LABEL_49:
    v52 = 0;
    v99 = 32;
    if (v31 == v50)
    {
      goto LABEL_73;
    }

    goto LABEL_59;
  }

  v52 = 1;
  v99 = 32;
  if (v31 == v104)
  {
    goto LABEL_73;
  }

LABEL_59:
  v52 = 11;
  if ((v17 & 0x1000000) == 0)
  {
    v52 = 6;
  }

  if (v17 <= 536870943)
  {
    if (v17 == 32)
    {
      v52 = 8;
      goto LABEL_73;
    }

    if (v17 != 64)
    {
      goto LABEL_73;
    }

    v57 = _MPSUseInt64Calculations() == 0;
    v52 = 8;
    v58 = 10;
    goto LABEL_71;
  }

  if (v17 == 536870976)
  {
    v57 = _MPSUseInt64Calculations() == 0;
    v52 = 7;
    v58 = 9;
LABEL_71:
    if (!v57)
    {
      v52 = v58;
    }

    goto LABEL_73;
  }

  if (v17 == 536870944)
  {
    v52 = 7;
  }

LABEL_73:
  v59 = (&CommonKernels)[16 * v52];
  v92 = *(a1 + *MEMORY[0x277CD7360]);
  v93 = *(a1 + *MEMORY[0x277CD7368]);
  v91 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v60 = *(a1 + *v49);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v62 = PipelineStateForMPSKey;
  [v48 setComputePipelineState:{PipelineStateForMPSKey, v91, v92}];
  v63 = *(a1 + *v49);
  MPSLibrary::ReleaseMPSKey();
  v64 = [v62 threadExecutionWidth];
  if (v64 <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = v64;
  }

  v66 = [v62 maxTotalThreadsPerThreadgroup];
  v67 = 256;
  if (v66 < 0x100)
  {
    v67 = v66;
  }

  if ((*(*(a1 + *MEMORY[0x277CD7350]) + 1477) & 4) != 0)
  {
    v68 = v66;
  }

  else
  {
    v68 = v67;
  }

  if (v68 <= 2 * v65)
  {
    v69 = 1;
    v70 = v104;
    v71 = v97;
    v72 = v40;
    if (v31 == v104)
    {
      goto LABEL_84;
    }

LABEL_93:
    if (v71 <= 8)
    {
      v80 = 8;
    }

    else
    {
      v80 = v71;
    }

    do
    {
      v73 = v65;
      v65 >>= 1;
    }

    while (v73 > v80);
    v81 = v73 >> 2;
    if (v73 <= 0x10)
    {
      v81 = v73;
    }

    if (v68 <= 1)
    {
      v68 = 1;
    }

    do
    {
      v75 = v81;
      v82 = v81 * v73;
      v81 >>= 1;
    }

    while (v82 > v68);
    if (v108 <= 4)
    {
      v83 = 4;
    }

    else
    {
      v83 = v108;
    }

    for (; v75 > v83; v75 >>= 1)
    {
      if (v75 * v73 < 2 * v73)
      {
        break;
      }
    }

    v77 = v73 * v94;
    v78 = v73 * v94;
    v65 = v73;
    goto LABEL_109;
  }

  v69 = v68 / v65;
  v70 = v104;
  v71 = v97;
  v72 = v40;
  if (v31 != v104)
  {
    goto LABEL_93;
  }

LABEL_84:
  if (2 * ((v71 + 1) / 2) >= v65)
  {
    v73 = v65;
  }

  else
  {
    v73 = 2 * ((v71 + 1) / 2);
  }

  v74 = 2 * ((v108 + 1) / 2);
  if (v74 >= v69)
  {
    v74 = v69;
  }

  do
  {
    v75 = v74;
    v76 = v74 * v73;
    v74 *= 2;
  }

  while (v76 < v65);
  v77 = v73;
  v78 = v75;
LABEL_109:
  v84 = v71 - 1;
  v85 = (v77 + v84) / v77;
  v86 = v108 - 1;
  v87 = (v78 + v86) / v78;
  if (v31 == v70)
  {
    if (v71 == 1 && v108 >= 2)
    {
      if (v108 <= 8 * v65)
      {
        v69 = 1;
      }

      v75 = v69 * v65;
      v85 = 1;
      v73 = 1;
      v87 = (v69 * v65 + v86) / (v69 * v65);
    }

    else if (v71 >= 2 && v108 == 1)
    {
      if (v71 <= 8 * v65)
      {
        v69 = 1;
      }

      v73 = v69 * v65;
      v87 = 1;
      v75 = 1;
      v85 = (v69 * v65 + v84) / (v69 * v65);
    }
  }

  v88 = (v101 + v106 - 1) >> v72;
  v89 = v102;
  if (v96 - 5 >= 0xFFFFFFFC)
  {
    v89 = 1;
  }

  v90 = v88 * v89;
  if (v31 != v70)
  {
    [v48 setThreadgroupMemoryLength:v73 * (v99 >> 3) + v73 * (v99 >> 3) * v73 atIndex:0];
  }

  MPSSetNDArraysOnComputeEncoder(v48, a4, 4, 0, 0);
  [v48 setBytes:v117 length:48 atIndex:29];
  v111[0] = v85;
  v111[1] = v87;
  v111[2] = v90;
  v110[0] = v73;
  v110[1] = v75;
  v110[2] = 1;
  [v48 dispatchThreadgroups:v111 threadsPerThreadgroup:v110];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

void sub_239AAE8E0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
    if ((*(v1 - 89) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 - 89) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 - 112));
  _Unwind_Resume(exception_object);
}

uint64_t aliasSqueezeExpand(char *a1, uint64_t a2, unint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v9 = MEMORY[0x277CD73D8];
  v10 = *&a1[*MEMORY[0x277CD73D8]];
  v11 = MEMORY[0x277CD73F0];
  v12 = *&a1[*MEMORY[0x277CD73F0]];
  if (v12)
  {
    v13 = 0;
    v14 = &a1[*MEMORY[0x277CD7410]];
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v18 = *v14;
    v17 = *(v14 + 1);
    v19.i64[0] = 0x100000001;
    v19.i64[1] = 0x100000001;
    v20.i64[0] = 0x100000001;
    v20.i64[1] = 0x100000001;
    v21.i64[0] = 0x100000001;
    v21.i64[1] = 0x100000001;
    v22.i64[0] = 0x100000001;
    v22.i64[1] = 0x100000001;
    do
    {
      v118 = v10;
      v123[0] = v18;
      v123[1] = v17;
      v123[2] = v16;
      v123[3] = v15;
      v23 = *(v123 + (*(&v118 | v13 & 0xF) & 0xF));
      v119 = v19;
      v120 = v20;
      v121 = v21;
      v122 = v22;
      v119.i32[v13 & 0xF] = v23;
      v21 = v121;
      v22 = v122;
      v19 = v119;
      v20 = v120;
      ++v13;
    }

    while (v12 != v13);
    v24 = xmmword_239B14650;
    if ((vminvq_u8(vceqq_s8(v10, xmmword_239B14650)) & 0x80) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v19.i64[0] = 0x100000001;
    v19.i64[1] = 0x100000001;
    v20.i64[0] = 0x100000001;
    v20.i64[1] = 0x100000001;
    v21.i64[0] = 0x100000001;
    v21.i64[1] = 0x100000001;
    v22.i64[0] = 0x100000001;
    v22.i64[1] = 0x100000001;
    v24 = xmmword_239B14650;
    if ((vminvq_u8(vceqq_s8(v10, xmmword_239B14650)) & 0x80) == 0)
    {
      goto LABEL_42;
    }
  }

  v25 = &a1[*MEMORY[0x277CD73D0]];
  v26 = *v25;
  v27 = v25[1];
  v29 = v25[2];
  v28 = v25[3];
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_s32(v19, *v25), vceqq_s32(v21, v29)), vandq_s8(vceqq_s32(v20, v27), vceqq_s32(v22, v28)))) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  v30 = &a1[*MEMORY[0x277CD7428]];
  v31 = *v30;
  if (*v30 > 1uLL)
  {
    goto LABEL_42;
  }

  v32 = *&a1[*MEMORY[0x277CD7408]];
  if (*(&v31 + 1) && v32 != *(&v31 + 1))
  {
    goto LABEL_42;
  }

  v35 = *(v30 + 6);
  v34 = *(v30 + 7);
  v37 = *(v30 + 4);
  v36 = *(v30 + 5);
  v39 = *(v30 + 2);
  v38 = *(v30 + 3);
  v40 = *(v30 + 1);
  v41 = v32 * v26.u32[1];
  if (v40)
  {
    if (v41 != v40)
    {
      goto LABEL_42;
    }
  }

  v42 = v41 * v26.u32[2];
  if (*(&v40 + 1))
  {
    if (v42 != *(&v40 + 1))
    {
      goto LABEL_42;
    }
  }

  v43 = v42 * v26.u32[3];
  if (v39)
  {
    if (v43 != v39)
    {
      goto LABEL_42;
    }
  }

  v44 = v43 * v27.u32[0];
  if (*(&v39 + 1))
  {
    if (v44 != *(&v39 + 1))
    {
      goto LABEL_42;
    }
  }

  v45 = v44 * v27.u32[1];
  if (v38)
  {
    if (v45 != v38)
    {
      goto LABEL_42;
    }
  }

  v46 = v45 * v27.u32[2];
  if (*(&v38 + 1))
  {
    if (v46 != *(&v38 + 1))
    {
      goto LABEL_42;
    }
  }

  v47 = v46 * v27.u32[3];
  if (v37)
  {
    if (v47 != v37)
    {
      goto LABEL_42;
    }
  }

  v48 = v47 * v29.u32[0];
  if (*(&v37 + 1))
  {
    if (v48 != *(&v37 + 1))
    {
      goto LABEL_42;
    }
  }

  v49 = v48 * v29.u32[1];
  if (v36)
  {
    if (v49 != v36)
    {
      goto LABEL_42;
    }
  }

  v50 = v49 * v29.u32[2];
  if (*(&v36 + 1))
  {
    if (v50 != *(&v36 + 1))
    {
      goto LABEL_42;
    }
  }

  v51 = v50 * v29.u32[3];
  if (v35)
  {
    if (v51 != v35)
    {
      goto LABEL_42;
    }
  }

  v52 = v51 * v28.u32[0];
  if (*(&v35 + 1))
  {
    if (v52 != *(&v35 + 1))
    {
      goto LABEL_42;
    }
  }

  v53 = v52 * v28.u32[1];
  if (v34)
  {
    if (v53 != v34)
    {
      goto LABEL_42;
    }
  }

  if (*(&v34 + 1) && v53 * v28.u32[2] != *(&v34 + 1))
  {
    goto LABEL_42;
  }

  v87 = MEMORY[0x277CD73C8];
  v88 = MEMORY[0x277CD7400];
  if ((*&a1[*MEMORY[0x277CD73C8]] >> 3) * v26.u32[0] == *&a1[*MEMORY[0x277CD7400]])
  {
    v89 = a4.n128_u32[0];
    if (v32 == v26.u32[0] || v26.i32[0] == a4.n128_u32[0])
    {
LABEL_68:
      v90 = MEMORY[0x277CD73D0];
      v91 = [a1 safeArrayViewWithCommandBuffer:a2 descriptor:objc_msgSend(a1 aliasing:{"descriptor", *&a7, *&a6, *&a5), 1}];
      *&v91[*v11] = a3;
      v92 = &v91[*v90];
      *(v92 + 2) = v98;
      *(v92 + 3) = v97;
      *v92 = a4;
      *(v92 + 1) = v99;
      v93 = v91;
      v94 = &v91[*MEMORY[0x277CD7410]];
      *(v94 + 2) = v98;
      *(v94 + 3) = v97;
      *v94 = a4;
      *(v94 + 1) = v99;
      if (*&a1[*v90] == v89)
      {
        *&v91[*v88] = *&a1[*v88];
        v95 = *MEMORY[0x277CD7408];
        v96 = *&a1[v95];
      }

      else
      {
        v96 = v89;
        *&v91[*v88] = (*&a1[*v87] >> 3) * v89;
        v95 = *MEMORY[0x277CD7408];
      }

      *&v91[v95] = v96;
      [v91 updateStrides];
      return v93;
    }
  }

  else
  {
    v89 = v26.i32[0];
    if (v26.i32[0] == a4.n128_u32[0])
    {
      goto LABEL_68;
    }
  }

LABEL_42:
  if (v12 <= a3)
  {
    v12 = a3;
  }

  if (v12)
  {
    v54 = 0;
    v55 = 0;
    for (i = 0; i != v12; ++i)
    {
      if (v55 <= 0xF)
      {
        v117[0] = a4;
        v117[1] = a5;
        v117[2] = a6;
        v117[3] = a7;
        v58 = v55;
        v59 = *(v117 + (i & 0xF));
        while (1)
        {
          v116[0] = v19;
          v116[1] = v20;
          v116[2] = v21;
          v116[3] = v22;
          if (v59 == *(v116 + (v58 & 0xF)) && ((1 << v58) & v54) == 0)
          {
            break;
          }

          if (++v58 == 16)
          {
            goto LABEL_47;
          }
        }

        v114 = v10;
        v57 = *(&v114 | v58 & 0xF);
        v115 = v24;
        *(&v115 | i & 0xF) = v57;
        v24 = v115;
        v54 |= 1 << v58;
        v55 = __clz(__rbit32(~v54));
      }

LABEL_47:
      ;
    }

    for (j = 0; j != v12; ++j)
    {
      v112 = v24;
      v62 = *(&v112 | j & 0xF);
      v113 = v10;
      *(&v113 | j & 0xF) = v62;
      v10 = v113;
    }
  }

  v100 = v10;
  result = [a1 safeArrayViewWithCommandBuffer:a2 descriptor:objc_msgSend(a1 aliasing:{"descriptor"), 1}];
  *(result + *v11) = a3;
  *(result + *v9) = v100;
  v64 = *&a1[*v11];
  if (v64 < a3)
  {
    v65 = MEMORY[0x277CD7428];
    v66 = *MEMORY[0x277CD7428];
    v67 = MEMORY[0x277CD7420];
    do
    {
      v68 = (result + v66);
      v69 = *v68;
      v70 = v68[1];
      v71 = v68[2];
      v72 = v68[3];
      v73 = v68[4];
      v74 = v68[5];
      v75 = v68[6];
      v76 = v68[7];
      v111[6] = v75;
      v111[7] = v76;
      v111[4] = v73;
      v111[5] = v74;
      v111[2] = v71;
      v111[3] = v72;
      v111[0] = v69;
      v111[1] = v70;
      if (!*(v111 + (v64 & 0xF)))
      {
        v77 = (v64 - 1) & 0xF;
        v78 = 8 * (v64 & 0xF);
        v110[0] = v69;
        v110[1] = v70;
        v110[2] = v71;
        v110[3] = v72;
        v110[4] = v73;
        v110[5] = v74;
        v110[6] = v75;
        v110[7] = v76;
        v79 = *(v110 + v77);
        v102 = v69;
        v103 = v70;
        v104 = v71;
        v105 = v72;
        v106 = v73;
        v107 = v74;
        v108 = v75;
        v109 = v76;
        *(&v102 + v78) = v79;
        v80 = v102;
        v81 = v103;
        v82 = v104;
        v83 = v105;
        v84 = v106;
        v85 = v107;
        v86 = v109;
        v68[6] = v108;
        v68[7] = v86;
        v68[4] = v84;
        v68[5] = v85;
        v68[2] = v82;
        v68[3] = v83;
        *v68 = v80;
        v68[1] = v81;
        *(result + *v67 + v78) = *(result + *v67 + 8 * v77);
        v66 = *v65;
      }

      ++v64;
    }

    while (a3 != v64);
  }

  return result;
}

BOOL canAliasToShape(uint64_t a1, unint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v70 = a3.n128_u32[0];
  *v7.i64 = getFlattenedDimensionsVector(a1, a2, 0, 0, a3, a4, a5, a6);
  if ((vminvq_u8(vceqzq_s8(v7)) & 0x80) == 0)
  {
    return !v7.i8[0] || (*(a1 + *MEMORY[0x277CD73C8]) >> 3) * *(a1 + *MEMORY[0x277CD73D0]) == *(a1 + *MEMORY[0x277CD7400]);
  }

  v9 = *(a1 + *MEMORY[0x277CD73F0]);
  if (!v9)
  {
    v28 = 0;
    goto LABEL_23;
  }

  v10 = (a1 + *MEMORY[0x277CD7410]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = *(a1 + *MEMORY[0x277CD73D8]);
  v16 = (a1 + *MEMORY[0x277CD73D0]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  v77[2] = v13;
  v77[3] = v14;
  v77[0] = v11;
  v77[1] = v12;
  v21 = v15 & 0xF;
  v22 = *(v77 + v21);
  v78[2] = v19;
  v78[3] = v20;
  v78[0] = v17;
  v78[1] = v18;
  if (v22 != *(v78 + v21))
  {
    goto LABEL_9;
  }

  v23 = (a1 + *MEMORY[0x277CD7418]);
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  v27 = v23[3];
  v76[2] = v26;
  v76[3] = v27;
  v76[0] = v24;
  v76[1] = v25;
  if (!*(v76 + (v15 & 0xF)))
  {
    v29 = 1;
    do
    {
      v30 = v29;
      if (v9 == v29)
      {
        break;
      }

      v72 = v15;
      v75[0] = v11;
      v75[1] = v12;
      v75[2] = v13;
      v75[3] = v14;
      v31 = *(&v72 | v29 & 0xF) & 0xF;
      v32 = *(v75 + v31);
      v74[0] = v17;
      v74[1] = v18;
      v74[2] = v19;
      v74[3] = v20;
      v33 = *(v74 + v31);
      v73[0] = v24;
      v73[1] = v25;
      v73[2] = v26;
      v73[3] = v27;
      v34 = *(v73 + v31);
      v29 = v30 + 1;
      v35 = v32 == v33 && v34 == 0;
    }

    while (v35);
    v28 = v30 < v9;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_9:
    v28 = 1;
    if (v15)
    {
LABEL_10:
      LODWORD(v9) = 1;
      goto LABEL_23;
    }
  }

  v36 = 1;
  do
  {
    v71 = v15;
    v37 = v36 + 1;
    if (v9 == v36)
    {
      break;
    }

    v35 = v36 == *(&v71 | v36 & 0xF);
    ++v36;
  }

  while (v35);
  LODWORD(v9) = v9 > v37 - 1;
LABEL_23:
  v38 = (a1 + *MEMORY[0x277CD7428]);
  v39 = *v38;
  if (*v38 > 1uLL)
  {
    return 0;
  }

  v40 = *(a1 + *MEMORY[0x277CD7408]);
  if (*(&v39 + 1) && v40 != *(&v39 + 1))
  {
    return 0;
  }

  v43 = v38[6];
  v42 = v38[7];
  v45 = v38[4];
  v44 = v38[5];
  v47 = v38[2];
  v46 = v38[3];
  v48 = v38[1];
  v49 = (a1 + *MEMORY[0x277CD73D0]);
  v51 = v49[2];
  v50 = v49[3];
  v52 = *v49;
  v53 = v49[1];
  v54 = v40 * HIDWORD(*v49);
  if (v48)
  {
    if (v54 != v48)
    {
      return 0;
    }
  }

  v55 = v54 * DWORD2(v52);
  if (*(&v48 + 1))
  {
    if (v55 != *(&v48 + 1))
    {
      return 0;
    }
  }

  v56 = v55 * HIDWORD(v52);
  if (v47)
  {
    if (v56 != v47)
    {
      return 0;
    }
  }

  v57 = v56 * v53;
  if (*(&v47 + 1))
  {
    if (v57 != *(&v47 + 1))
    {
      return 0;
    }
  }

  v58 = v57 * DWORD1(v53);
  if (v46)
  {
    if (v58 != v46)
    {
      return 0;
    }
  }

  v59 = v58 * DWORD2(v53);
  if (*(&v46 + 1))
  {
    if (v59 != *(&v46 + 1))
    {
      return 0;
    }
  }

  v60 = v59 * HIDWORD(v53);
  if (v45)
  {
    if (v60 != v45)
    {
      return 0;
    }
  }

  v61 = v60 * v51;
  if (*(&v45 + 1))
  {
    if (v61 != *(&v45 + 1))
    {
      return 0;
    }
  }

  v62 = v61 * DWORD1(v51);
  if (v44)
  {
    if (v62 != v44)
    {
      return 0;
    }
  }

  v63 = v62 * DWORD2(v51);
  if (*(&v44 + 1))
  {
    if (v63 != *(&v44 + 1))
    {
      return 0;
    }
  }

  v64 = v63 * HIDWORD(v51);
  if (v43)
  {
    if (v64 != v43)
    {
      return 0;
    }
  }

  v65 = v64 * v50;
  if (*(&v43 + 1))
  {
    if (v65 != *(&v43 + 1))
    {
      return 0;
    }
  }

  v66 = v65 * DWORD1(v50);
  if (v42)
  {
    if (v66 != v42)
    {
      return 0;
    }
  }

  result = 0;
  v67 = v66 * DWORD2(v50);
  if (*(&v42 + 1))
  {
    v68 = v67 == *(&v42 + 1);
  }

  else
  {
    v68 = 1;
  }

  v69 = !v68;
  if (((v28 | v9) & 1) == 0 && (v69 & 1) == 0)
  {
    return (*(a1 + *MEMORY[0x277CD73C8]) >> 3) * v52 == *(a1 + *MEMORY[0x277CD7400]) || v70 == v52;
  }

  return result;
}

uint64_t flattenAlias(uint64_t a1, char *a2, unint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  *v10.i64 = getFlattenedDimensionsVector(a2, a3, &v48, v47, a4, a5, a6, a7);
  if ((vminvq_u8(vceqzq_s8(v10)) & 0x80) != 0)
  {
    return 0;
  }

  v34 = v10.i8[0];
  result = [a2 safeArrayViewWithCommandBuffer:a1 descriptor:objc_msgSend(a2 aliasing:{"descriptor"), 1}];
  v12 = 0;
  v13 = 0;
  *(result + *MEMORY[0x277CD73F0]) = a3;
  v14 = v48;
  v15 = MEMORY[0x277CD73D8];
  *(result + *MEMORY[0x277CD73D8]) = v48;
  v16 = MEMORY[0x277CD7410];
  v17 = MEMORY[0x277CD7418];
  v18 = MEMORY[0x277CD73D0];
  v19 = MEMORY[0x277CD7428];
  v20 = MEMORY[0x277CD7420];
  do
  {
    while (1)
    {
      v46[0] = a4;
      v46[1] = a5;
      v46[2] = a6;
      v46[3] = a7;
      v24 = *(v46 + (v12 & 0xF));
      v25 = result + *v16;
      v45 = v14;
      v26 = *(&v45 | v12 & 0xF);
      *(v25 + 4 * (v26 & 0xF)) = v24;
      if (*(v47 + (v12 & 0xF)) < 2u)
      {
        break;
      }

      v21 = v26 & 0xF;
      *(result + *v17 + 4 * v21) = 0;
      *(result + *v18 + 4 * v21) = v24;
      v22 = *v19;
      v39 = *&a2[*v15];
      *(result + v22 + 8 * v21) = *&a2[8 * (*(&v39 | v13 & 0xF) & 0xF) + v22];
      v23 = *v20;
      v40 = *&a2[*v15];
      *(result + v23 + 8 * v21) = *&a2[8 * (*(&v40 | v13 & 0xF) & 0xF) + v23];
      v13 += *(v47 + (v12++ & 0xF));
      if (v12 == 16)
      {
        goto LABEL_9;
      }
    }

    v27 = *v17;
    if (v13 > 0xF)
    {
      v31 = 0;
      *(result + v27 + 4 * (v26 & 0xF)) = 0;
      *(result + *v18 + 4 * (v26 & 0xF)) = 1;
      *(result + *v19 + 8 * (v26 & 0xF)) = 0;
      v30 = *v20;
    }

    else
    {
      v41 = *&a2[*v15];
      *(result + v27 + 4 * (v26 & 0xF)) = *&a2[4 * (*(&v41 | v13 & 0xF) & 0xF) + v27];
      v28 = *v18;
      v42 = *&a2[*v15];
      *(result + v28 + 4 * (v26 & 0xF)) = *&a2[4 * (*(&v42 | v13 & 0xF) & 0xF) + v28];
      v29 = *v19;
      v43 = *&a2[*v15];
      *(result + v29 + 8 * (v26 & 0xF)) = *&a2[8 * (*(&v43 | v13 & 0xF) & 0xF) + v29];
      v30 = *v20;
      v44 = *&a2[*v15];
      v31 = *&a2[8 * (*(&v44 | v13 & 0xF) & 0xF) + v30];
    }

    *(result + v30 + 8 * (v26 & 0xF)) = v31;
    ++v13;
    ++v12;
  }

  while (v12 != 16);
LABEL_9:
  if (v34)
  {
    *(result + *MEMORY[0x277CD7400]) = (*(result + *MEMORY[0x277CD73C8]) >> 3) * *(result + *v18);
    v32 = *(result + *v18);
    v33 = *MEMORY[0x277CD7408];
  }

  else
  {
    *(result + *MEMORY[0x277CD7400]) = *&a2[*MEMORY[0x277CD7400]];
    v33 = *MEMORY[0x277CD7408];
    v32 = *&a2[v33];
  }

  *(result + v33) = v32;
  return result;
}

char *rawAlias(uint64_t a1, void *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v8 = [a2 safeArrayViewWithCommandBuffer:a1 descriptor:objc_msgSend(a2 aliasing:{"descriptor"), 1}];
  v9 = MEMORY[0x277CD73D0];
  v10 = *&v8[*MEMORY[0x277CD73D0]];
  *&v8[*MEMORY[0x277CD73F0]] = a3;
  v11 = &v8[*v9];
  v11[2] = a6;
  v11[3] = a7;
  *v11 = a4;
  v11[1] = a5;
  v12 = &v8[*MEMORY[0x277CD7410]];
  *v12 = a4;
  v12[1] = a5;
  v12[2] = a6;
  v12[3] = a7;
  if (v10 != a4.n128_u32[0])
  {
    *&v8[*MEMORY[0x277CD7400]] = (*&v8[*MEMORY[0x277CD73C8]] >> 3) * a4.n128_u32[0];
    *&v8[*MEMORY[0x277CD7408]] = a4.n128_u32[0];
  }

  v13 = v8;
  [v8 updateStrides];
  return v13;
}

uint64_t EncodeArrayIdentityOffset(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 144);
  v191 = *(a1 + *MEMORY[0x277CD7370]);
  v7 = [*(a4 + 232) graph];
  v8 = **(v7 + 56);
  if (*(*(v7 + 56) + 8) == v8)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v9 = *v8;
  v11 = *(*v8 + 8);
  v10 = *v11;
  if (v11[1] == *v11 || (v13 = *(v9 + 24), v12 = *v13, *(v13 + 8) == *v13))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = *v10;
  v188 = *(*v10 + 4);
  v15 = *v12;
  DimensionSize = BaseTensor::GetDimensionSize(*v12);
  v17 = BaseTensor::GetDimensionSize(v15);
  v18 = BaseTensor::GetDimensionSize(v15);
  v19 = BaseTensor::GetDimensionSize(v15);
  v20.i64[0] = __PAIR64__(v17, DimensionSize);
  v20.i64[1] = __PAIR64__(v19, v18);
  v196 = v20;
  v21 = BaseTensor::GetDimensionSize(v14);
  v22 = BaseTensor::GetDimensionSize(v14);
  v23 = BaseTensor::GetDimensionSize(v14);
  v24 = BaseTensor::GetDimensionSize(v14);
  v27.i64[0] = __PAIR64__(v22, v21);
  v27.i64[1] = __PAIR64__(v24, v23);
  v28 = *v15;
  if (*v15 <= 1uLL)
  {
    v29 = 1;
  }

  else
  {
    v29 = *v15;
  }

  if (v29 >= 8)
  {
    v29 = 8;
  }

  v187 = v29;
  if (v28 < 5)
  {
    v25.i32[0] = 0;
    v40 = v6;
    v26.i32[0] = v6;
    v42 = vdupq_lane_s32(*&vceqq_s32(v26, v25), 0);
    v193 = vbslq_s8(v42, v27, v196);
    v41 = vbslq_s8(v42, v196, v27);
    v186 = 0u;
    v190 = 0u;
  }

  else
  {
    v198 = v27;
    v30 = BaseTensor::GetDimensionSize(v15);
    v31 = BaseTensor::GetDimensionSize(v15);
    v32 = BaseTensor::GetDimensionSize(v15);
    v33 = BaseTensor::GetDimensionSize(v15);
    v34.i64[0] = __PAIR64__(v31, v30);
    v34.i64[1] = __PAIR64__(v33, v32);
    v192 = v34;
    v35 = BaseTensor::GetDimensionSize(v14);
    v36 = BaseTensor::GetDimensionSize(v14);
    v37 = BaseTensor::GetDimensionSize(v14);
    v38 = BaseTensor::GetDimensionSize(v14);
    v39.i64[0] = __PAIR64__(v36, v35);
    v39.i64[1] = __PAIR64__(v38, v37);
    if (v6)
    {
      v190 = v39;
      v40 = v6;
      v186 = v192;
      v193 = v196;
      v41 = v198;
    }

    else
    {
      v40 = 0;
      v186 = v39;
      v41 = v196;
      v190 = v192;
      v193 = v198;
    }
  }

  v197 = *(a4 + 208);
  memset(v260, 0, sizeof(v260));
  v259 = 0u;
  v258 = 0u;
  memset(v256, 0, 32);
  v255 = 0u;
  v254 = 0u;
  v253 = 0u;
  v252 = 0u;
  v251 = 0u;
  v250 = 0u;
  v257 = 0u;
  v199 = v41;
  v256[2] = v41;
  v43 = [*(a4 + 232) graph];
  v44 = *(v43 + 64);
  v46 = *v44;
  v45 = v44[1];
  if (*v44 == v45)
  {
    goto LABEL_18;
  }

  v47 = v43;
  v48 = 0;
  v49 = 64;
  while (1)
  {
    v50 = *v46;
    if (v50 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v47) + 32))
    {
      break;
    }

    ++v48;
    ++v46;
    v49 += 80;
    if (v46 == v45)
    {
      goto LABEL_18;
    }
  }

  [*(a4 + 16) count];
  if (v48 >= [*(a4 + 16) count])
  {
LABEL_18:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return -2;
  }

  v52 = [*(a4 + 16) objectAtIndexedSubscript:v48];
  v53 = *(*(a4 + 8) + v49);
  v257 = v193;
  v54 = 0uLL;
  if (v28 >= 5)
  {
    v258 = v190;
    v54 = v186;
    v259 = v186;
  }

  v185 = v54;
  makeStrideElements();
  makeStrideElements();
  v56 = v242;
  v55 = v243;
  v57 = v244;
  v58 = v245;
  v60 = v246;
  v59 = v247;
  v61 = v248;
  v62 = v249;
  v63 = v241;
  v64 = v240;
  v65 = v239;
  v66 = v238;
  v67 = v237;
  v68 = v236;
  v69 = v235;
  v70 = v234;
  v71 = *MEMORY[0x277CD73D8];
  v72 = *MEMORY[0x277CD7410];
  v73 = (v52 + v72);
  v74 = *(v52 + v71);
  v75 = &v197[v72];
  v76 = *&v197[v71];
  v77 = *v73;
  v78 = v73[1];
  v79 = v73[2];
  v80 = v73[3];
  v81 = *v75;
  v82 = *(v75 + 1);
  v83 = *(v75 + 2);
  v84 = *(v75 + 3);
  v225[3] = v84;
  v225[2] = v83;
  v225[1] = v82;
  v225[0] = v81;
  v85 = v76 & 0xF;
  LODWORD(v75) = *(v225 + v85);
  v226[7] = v241;
  v226[6] = v240;
  v226[5] = v239;
  v226[4] = v238;
  v226[3] = v237;
  v226[2] = v236;
  v226[1] = v235;
  v226[0] = v234;
  v86 = *(v226 + v85);
  v223[3] = v80;
  v223[2] = v79;
  v223[1] = v78;
  v223[0] = v77;
  v87 = v74 & 0xF;
  v88 = *(v223 + v87);
  v133 = v75 >= 2;
  v224[7] = v249;
  v224[6] = v248;
  v224[5] = v247;
  v224[4] = v246;
  v224[3] = v245;
  v224[2] = v244;
  v224[1] = v243;
  v224[0] = v242;
  v89 = *(v224 + v87);
  if (!v133)
  {
    v86 = 0;
  }

  if (v88 < 2)
  {
    v89 = 0;
  }

  *&v250 = v89;
  *&v254 = v86;
  if (v28 > 1)
  {
    v222[0] = v81;
    v222[1] = v82;
    v222[2] = v83;
    v222[3] = v84;
    v96 = BYTE1(v76) & 0xF;
    v97 = *(v222 + v96);
    v221[0] = v234;
    v221[1] = v235;
    v221[2] = v236;
    v221[3] = v237;
    v221[4] = v238;
    v221[5] = v239;
    v221[6] = v240;
    v221[7] = v241;
    v98 = *(v221 + v96);
    v220[0] = v77;
    v220[1] = v78;
    v220[2] = v79;
    v220[3] = v80;
    v99 = BYTE1(v74) & 0xF;
    v100 = *(v220 + v99);
    v133 = v97 >= 2;
    v219[0] = v242;
    v219[1] = v243;
    v219[2] = v244;
    v219[3] = v245;
    v219[4] = v246;
    v219[5] = v247;
    v219[6] = v248;
    v219[7] = v249;
    v101 = *(v219 + v99);
    if (!v133)
    {
      v98 = 0;
    }

    if (v100 < 2)
    {
      v101 = 0;
    }

    *(&v250 + 1) = v101;
    *(&v254 + 1) = v98;
    v95 = v199.i32[1];
    v102 = v193;
    if (v28 == 2)
    {
      v103 = v187;
    }

    else
    {
      v218[0] = v81;
      v218[1] = v82;
      v218[2] = v83;
      v218[3] = v84;
      v104 = BYTE2(v76) & 0xF;
      v105 = *(v218 + v104);
      v217[0] = v234;
      v217[1] = v235;
      v217[2] = v236;
      v217[3] = v237;
      v217[4] = v238;
      v217[5] = v239;
      v217[6] = v240;
      v217[7] = v241;
      v106 = *(v217 + v104);
      v216[0] = v77;
      v216[1] = v78;
      v216[2] = v79;
      v216[3] = v80;
      v107 = BYTE2(v74) & 0xF;
      v108 = *(v216 + v107);
      v133 = v105 >= 2;
      v215[0] = v242;
      v215[1] = v243;
      v215[2] = v244;
      v215[3] = v245;
      v215[4] = v246;
      v215[5] = v247;
      v215[6] = v248;
      v215[7] = v249;
      v109 = *(v215 + v107);
      if (!v133)
      {
        v106 = 0;
      }

      if (v108 < 2)
      {
        v109 = 0;
      }

      *&v251 = v109;
      *&v255 = v106;
      v103 = v187;
      if (v28 != 3)
      {
        v214[0] = v81;
        v214[1] = v82;
        v214[2] = v83;
        v214[3] = v84;
        v110 = BYTE3(v76) & 0xF;
        v111 = *(v214 + v110);
        v213[0] = v234;
        v213[1] = v235;
        v213[2] = v236;
        v213[3] = v237;
        v213[4] = v238;
        v213[5] = v239;
        v213[6] = v240;
        v213[7] = v241;
        v112 = *(v213 + v110);
        v212[0] = v77;
        v212[1] = v78;
        v212[2] = v79;
        v212[3] = v80;
        v113 = BYTE3(v74) & 0xF;
        v114 = *(v212 + v113);
        v133 = v111 >= 2;
        v211[0] = v242;
        v211[1] = v243;
        v211[2] = v244;
        v211[3] = v245;
        v211[4] = v246;
        v211[5] = v247;
        v211[6] = v248;
        v211[7] = v249;
        v115 = *(v211 + v113);
        if (!v133)
        {
          v112 = 0;
        }

        if (v114 < 2)
        {
          v115 = 0;
        }

        *(&v251 + 1) = v115;
        *(&v255 + 1) = v112;
        if (v28 != 4)
        {
          v116 = v256;
          v117 = 4;
          do
          {
            v205 = v76;
            v210[0] = v81;
            v210[1] = v82;
            v210[2] = v83;
            v210[3] = v84;
            v118 = *(&v205 | v117 & 0xF) & 0xF;
            v119 = *(v210 + v118);
            v209[0] = v70;
            v209[1] = v69;
            v209[2] = v68;
            v209[3] = v67;
            v209[4] = v66;
            v209[5] = v65;
            v209[6] = v64;
            v209[7] = v63;
            v120 = *(v209 + v118);
            v133 = v119 >= 2;
            v206 = v74;
            v208[0] = v77;
            v208[1] = v78;
            v208[2] = v79;
            v208[3] = v80;
            v121 = *(&v206 | v117 & 0xF) & 0xF;
            v122 = *(v208 + v121);
            if (!v133)
            {
              v120 = 0;
            }

            v207[0] = v56;
            v207[1] = v55;
            v207[2] = v57;
            v207[3] = v58;
            v207[4] = v60;
            v207[5] = v59;
            v207[6] = v61;
            v207[7] = v62;
            v123 = *(v207 + v121);
            if (v122 < 2)
            {
              v123 = 0;
            }

            *(v116 - 8) = v123;
            *v116++ = v120;
            ++v117;
          }

          while (v187 != v117);
          v185 = v259;
          v102 = v257;
        }
      }
    }

    v90 = v199;
    v124 = vcgt_u32(*v102.i8, 0x100000001);
    if ((v199.i32[1] > 1) | v124.i8[4] & 1)
    {
      v93 = 2;
    }

    else
    {
      v93 = 1;
    }

    if ((v199.i32[1] > 1) | v124.i8[4] & 1)
    {
      v92 = (v199.i32[0] > 1) | v124.i8[0] & 1 | 2;
    }

    else
    {
      v92 = (v199.i32[0] > 1) | v124.i8[0] & 1;
    }

    if (v28 == 2)
    {
      v94 = v190;
    }

    else
    {
      if (v199.i32[2] > 1 || v102.i32[2] > 1u)
      {
        v93 = 3;
        v92 |= 4u;
      }

      v94 = v190;
      if (v28 != 3)
      {
        if (v199.i32[3] > 1 || v102.i32[3] > 1u)
        {
          v93 = 4;
          v92 |= 8u;
        }

        if (v28 != 4)
        {
          v129 = v103 - 4;
          v130 = 5;
          do
          {
            v204 = v190;
            v131 = *(&v204 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v130 - 1) & 3)));
            v203 = v185;
            if (v130 <= v93)
            {
              v132 = v93;
            }

            else
            {
              v132 = v130;
            }

            v133 = v131 > 1 || *(&v203 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v130 - 1) & 3))) >= 2u;
            if (v133)
            {
              v93 = v132;
            }

            if (v133)
            {
              v92 |= 1 << (v130 - 1);
            }

            ++v130;
            --v129;
          }

          while (v129);
        }
      }
    }
  }

  else
  {
    v90 = v199;
    LOBYTE(v92) = v199.i32[0] > 1 || v193.i32[0] > 1u;
    v93 = 1;
    v94 = v190;
    v95 = v199.i32[1];
  }

  if (v95 <= 3)
  {
    v95 = v199.i32[2];
    if (v199.i32[2] < 4)
    {
      v138 = 0;
      v137 = 0;
      goto LABEL_111;
    }

    v134 = 2;
  }

  else
  {
    v134 = 1;
  }

  if (v95 == 8 || v95 > 0xF)
  {
    v136 = 8;
  }

  else
  {
    v136 = 4;
  }

  v202 = v90;
  *(&v202 & 0xFFFFFFFFFFFFFFF3 | (4 * (v134 & 3))) = (*(&v202 | (4 * v134)) + v136 - 1) / v136;
  v90 = v202;
  v137 = ~(v134 << 17) & 0x20000;
  v138 = v136 << 16;
LABEL_111:
  v139 = vextq_s8(v90, v90, 4uLL).u64[0];
  v140.i64[0] = v139;
  v140.i64[1] = SHIDWORD(v139);
  v141 = v140;
  v140.i64[0] = v90.i32[0];
  v140.i64[1] = vextq_s8(*&v90, *&v90, 8uLL).i32[1];
  v142 = v140;
  if (v93 < 5)
  {
    v194 = vzip1q_s64(v142, v141);
    v143 = v141.u64[1];
    v201 = v142.i64[1];
    *&v260[0] = v141.i64[1];
    if (!v141.i64[1])
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

  v141.i64[0] = v142.i32[0] * v141.i32[0];
  v141.i64[1] = v142.i32[2] * v141.i32[2];
  v194 = v141;
  v144 = vmull_s32(vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL)), vzip2_s32(*v94.i8, *&vdupq_laneq_s32(v94, 3)));
  v201 = v144.i64[1];
  v143 = v144.i64[0];
  *&v260[0] = v144.i64[0];
  if (v144.i64[0])
  {
LABEL_115:
    DWORD2(v260[0]) = __clz(v143) ^ 0x3F;
  }

LABEL_116:
  v145 = vuzp1q_s32(v90, v94);
  v145.i32[1] = HIDWORD(v139);
  v146.i64[0] = -1;
  v146.i64[1] = -1;
  v147 = vceqzq_s32(vandq_s8(v145, vaddq_s32(v145, v146)));
  v148 = vmovn_s32(v147);
  v149.i64[0] = 0x1F0000001FLL;
  v149.i64[1] = 0x1F0000001FLL;
  v150 = vbicq_s8(vsubq_s32(v149, vclzq_s32(v145)), vceqzq_s32(v145));
  if (v148.i8[6])
  {
    v151 = 0x10000;
  }

  else
  {
    v151 = 0;
  }

  *(v260 + 12) = vandq_s8(v150, v147);
  HIDWORD(v260[1]) = HIDWORD(v139);
  v152 = ((v93 << 8) + 1792) & 0x700;
  if (v148.i8[0])
  {
    v153 = 0x2000;
  }

  else
  {
    v153 = 0;
  }

  if (v148.i8[2])
  {
    v154 = 0x4000;
  }

  else
  {
    v154 = 0;
  }

  if (v148.i8[4])
  {
    v155 = 0x8000;
  }

  else
  {
    v155 = 0;
  }

  v228[4] = -1;
  v228[3] = -1;
  v229 = 0u;
  v230 = 0u;
  v228[5] = v138 | v152 | v137 | v154 | v153 | v155 & 0xFFFFFF00 | (v40 << 11) | v151 & 0xFFFFFF00 | v92 | (((v143 & (v143 - 1)) == 0) << 12);
  v231 = 0;
  v232 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v233 = 0;
  if (v188 == 8)
  {
    v157 = 15;
  }

  else
  {
    v156 = __ROR8__(v188 - 8, 3);
    if (v156 == 1)
    {
      v157 = 14;
    }

    else if (v156 == 7)
    {
      v157 = 12;
    }

    else
    {
      v157 = 13;
    }
  }

  v158 = (&CommonKernels)[16 * v157];
  v183 = *(a1 + *MEMORY[0x277CD7360]);
  v184 = *(a1 + *MEMORY[0x277CD7368]);
  v182 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v159 = MEMORY[0x277CD7370];
  v160 = *(a1 + *MEMORY[0x277CD7370]);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v162 = PipelineStateForMPSKey;
  v163 = v52;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v182, v183, v184, 0, 0}];
  v164 = *(a1 + *v159);
  MPSLibrary::ReleaseMPSKey();
  v165 = [v162 threadExecutionWidth];
  if (v165 <= 1)
  {
    v166 = 1;
  }

  else
  {
    v166 = v165;
  }

  v167 = [v162 maxTotalThreadsPerThreadgroup];
  v168 = 256;
  if (v167 < 0x100)
  {
    v168 = v167;
  }

  if ((*(*(a1 + *MEMORY[0x277CD7350]) + 1477) & 4) != 0)
  {
    v169 = v167;
  }

  else
  {
    v169 = v168;
  }

  if (v169 <= 2 * v166)
  {
    v170 = 1;
  }

  else
  {
    v170 = v169 / v166;
  }

  if (((v194.i64[0] + 1) & 0xFFFFFFFFFFFFFFFELL) >= v166)
  {
    v171 = v166;
  }

  else
  {
    v171 = (v194.i64[0] + 1) & 0xFFFFFFFFFFFFFFFELL;
  }

  v172 = v194.i64[1];
  v173 = (v194.i64[1] + 1) & 0xFFFFFFFFFFFFFFFELL;
  if (v173 >= v170)
  {
    v173 = v170;
  }

  do
  {
    v174 = v173;
    v175 = v173 * v171;
    v173 *= 2;
  }

  while (v175 < v166);
  v176 = v143 * v201;
  v177 = v194.i64[0] - 1;
  if (v194.i64[0] == 1 && v194.i64[1] >= 2uLL)
  {
    v178 = v53;
    if (v194.i64[1] <= 8 * v166)
    {
      v170 = 1;
    }

    v174 = v170 * v166;
    v179 = 1;
    v172 = 1;
    v171 = 1;
    v180 = (v194.i64[1] + v170 * v166 - 1) / (v170 * v166);
  }

  else if (v194.i64[0] >= 2uLL && v194.i64[1] == 1)
  {
    v178 = v53;
    if (v194.i64[0] <= 8 * v166)
    {
      v170 = 1;
    }

    v171 = v170 * v166;
    v180 = 1;
    v174 = 1;
    v179 = (v170 * v166 + v177) / (v170 * v166);
  }

  else
  {
    v179 = (v171 + v177) / v171;
    v178 = v53;
    if (v194.i64[0] == 1)
    {
      v172 = 1;
      v180 = (v194.i64[1] + v174 - 1) / v174;
      if (v194.i64[1] == 1)
      {
        if (v176 <= 8 * v166)
        {
          v170 = 1;
        }

        v172 = v170 * v166;
        v180 = 1;
        v179 = 1;
        v174 = 1;
        v171 = 1;
        v176 = (v176 + v170 * v166 - 1) / (v170 * v166);
      }
    }

    else
    {
      v172 = 1;
      v180 = (v194.i64[1] + v174 - 1) / v174;
    }
  }

  v195 = v176;
  v200 = v172;
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  [a2 setBytes:&v250 length:224 atIndex:29];
  v181 = *(a4 + 192);
  [a2 setBuffer:objc_msgSend(v163 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v163, 0, 8, 0, 0) + v178, 28}];
  [a2 setBuffer:objc_msgSend(v197 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v197, 0, 8, 0, 0) + v181, 27}];
  v228[0] = v179;
  v228[1] = v180;
  v228[2] = v195;
  v227[0] = v171;
  v227[1] = v174;
  v227[2] = v200;
  [a2 dispatchThreadgroups:v228 threadsPerThreadgroup:v227];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

double getFlattenedDimensionsVector(uint64_t a1, unint64_t a2, _OWORD *a3, _OWORD *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v18 = *(a1 + *MEMORY[0x277CD73F0]);
  v19 = 0.0;
  if (v18 < a2)
  {
    return v19;
  }

  v167 = v17;
  v168 = v16;
  v169 = v15;
  v170 = v14;
  v171 = v13;
  v172 = v12;
  v173 = v11;
  v174 = v10;
  v175 = v8;
  v176 = v9;
  v20 = MEMORY[0x277CD73D8];
  v21 = MEMORY[0x277CD7410];
  if (v18)
  {
    v22 = (a1 + *MEMORY[0x277CD7410]);
    v24 = v22[2];
    v23 = v22[3];
    v26 = *v22;
    v25 = v22[1];
    v27 = *(a1 + *MEMORY[0x277CD73D8]);
    *&v28 = 0x100000001;
    *(&v28 + 1) = 0x100000001;
    v29 = 1;
    *&v30 = 0x100000001;
    *(&v30 + 1) = 0x100000001;
    *&v31 = 0x100000001;
    *(&v31 + 1) = 0x100000001;
    *&v32 = 0x100000001;
    *(&v32 + 1) = 0x100000001;
    do
    {
      v161 = v27;
      v33 = (v29 - 1) & 0xF;
      v166[0] = v26;
      v166[1] = v25;
      v166[2] = v24;
      v166[3] = v23;
      v34 = *(v166 + (*(&v161 | v33) & 0xF));
      v162 = v28;
      v163 = v30;
      v164 = v31;
      v165 = v32;
      *(&v162 + v33) = v34;
      v32 = v165;
      v31 = v164;
      v30 = v163;
      v28 = v162;
    }

    while (v18 > v29++);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *&v28 = 0x100000001;
    *(&v28 + 1) = 0x100000001;
    *&v30 = 0x100000001;
    *(&v30 + 1) = 0x100000001;
    *&v31 = 0x100000001;
    *(&v31 + 1) = 0x100000001;
    *&v32 = 0x100000001;
    *(&v32 + 1) = 0x100000001;
    if (a2)
    {
LABEL_6:
      v36 = 1;
      v37 = a2;
      do
      {
        v160[0] = a5;
        v160[1] = a6;
        v160[2] = a7;
        v160[3] = a8;
        v37 -= *(v160 + ((v36 - 1) & 0xF)) == 1;
        v38 = v36++;
      }

      while (v38 < a2);
      v39 = 0;
      v40 = 0;
      v41 = v18 - v37 + 1;
      v42 = 0uLL;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = MEMORY[0x277CD7418];
      v47 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      while (1)
      {
        v159[0] = a5;
        v159[1] = a6;
        v159[2] = a7;
        v159[3] = a8;
        v52 = *(v159 + (v39 & 0xF));
        v158[0] = v28;
        v158[1] = v30;
        v158[2] = v31;
        v158[3] = v32;
        if (v52 != *(v158 + (v40 & 0xF)))
        {
          break;
        }

        v53 = *v20;
        v134 = *(a1 + v53);
        v54 = *(&v134 | v40 & 0xF);
        v135 = v43;
        v136 = v44;
        v137 = v45;
        v138 = v47;
        *(&v135 + (v39 & 0xF)) = v54;
        v55 = 1;
        v45 = v137;
        v47 = v138;
        v43 = v135;
        v44 = v136;
        v56 = v40;
LABEL_36:
        v130 = v48;
        v131 = v49;
        v132 = v50;
        v133 = v51;
        *(&v130 + (v39 & 0xF)) = v55;
        v50 = v132;
        v51 = v133;
        ++v39;
        v40 = v56 + 1;
        v48 = v130;
        v49 = v131;
        if (v39 >= a2)
        {
          if (v40 <= 0xF)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        }
      }

      v57 = 1;
      if (v41)
      {
        v56 = v40;
        if (v18 > v40)
        {
          v58 = 1;
          while (1)
          {
            v59 = v40 + v58;
            v56 = v59 - 1;
            v157[0] = v28;
            v157[1] = v30;
            v157[2] = v31;
            v157[3] = v32;
            v57 *= *(v157 + ((v59 - 1) & 0xFLL));
            if (v57 == v52)
            {
              break;
            }

            v60 = v58 + 1;
            if (v58 < v41)
            {
              ++v58;
              if (v18 > v59)
              {
                continue;
              }
            }

            v56 = v40 + v60 - 1;
            goto LABEL_19;
          }

LABEL_20:
          v53 = *v20;
          v61 = *(a1 + v53);
          v156 = v61;
          v62 = *(&v156 | v40 & 0xF);
          v63 = v40 + 1;
          v64 = *(&v156 | v40 & 0xF);
          while (v63 <= v56)
          {
            v155 = v61;
            v65 = v64 + 1;
            v66 = *(&v155 | v63++ & 0xF);
            v64 = v66;
            if (v65 != v66)
            {
              return 0.0;
            }
          }

          v67 = v56 - v40;
          if (v56 >= v40)
          {
            v109 = v42;
            v68 = (a1 + *MEMORY[0x277CD73D0]);
            v70 = v68[2];
            v69 = v68[3];
            v72 = *v68;
            v71 = v68[1];
            v73 = (a1 + *v21);
            v74 = v73[2];
            v75 = v73[3];
            v77 = *v73;
            v76 = v73[1];
            v78 = v40;
            v110 = a6;
            v111 = a5;
            while (1)
            {
              v152 = v61;
              v79 = *(&v152 | v78 & 0xF);
              v154[0] = v72;
              v154[1] = v71;
              v154[2] = v70;
              v154[3] = v69;
              v80 = *(v154 + (v79 & 0xF));
              v153[0] = v77;
              v153[1] = v76;
              v153[2] = v74;
              v153[3] = v75;
              v19 = 0.0;
              if (v80 != *(v153 + (v79 & 0xF)))
              {
                return v19;
              }

              if (*(a1 + *v46 + 4 * (v79 & 0xF)))
              {
                return v19;
              }

              if (v18 - 1 > v79)
              {
                v81 = (a1 + *MEMORY[0x277CD7428]);
                v82 = *v81;
                v83 = v81[1];
                v84 = v81[2];
                v85 = v81[3];
                v86 = a7;
                v87 = a8;
                v88 = v76;
                v89 = v72;
                v90 = v69;
                v92 = v81[4];
                v91 = v81[5];
                v93 = v75;
                v94 = v70;
                v95 = v81[6];
                v151 = v81[7];
                v150[5] = v91;
                v150[6] = v95;
                v150[3] = v85;
                v150[4] = v92;
                v150[1] = v83;
                v150[2] = v84;
                v150[0] = v82;
                v96 = *(v150 + ((v79 + 1) & 0xF));
                v149[6] = v95;
                v149[7] = v151;
                v70 = v94;
                v75 = v93;
                v149[4] = v92;
                v149[5] = v91;
                v69 = v90;
                v72 = v89;
                v76 = v88;
                a8 = v87;
                a7 = v86;
                a6 = v110;
                a5 = v111;
                v149[2] = v84;
                v149[3] = v85;
                v149[0] = v82;
                v149[1] = v83;
                if (v96 != *(v149 + (v79 & 0xF)) * v80)
                {
                  return v19;
                }
              }

              if (++v78 > v56)
              {
                v55 = v67 + 1;
                v42 = v109;
                do
                {
                  v147 = v61;
                  v148 = v42;
                  *(&v148 | *(&v147 | v40 & 0xF) & 0xF) = 1;
                  v42 = v148;
                  ++v40;
                }

                while (v40 <= v56);
                v143 = v43;
                v144 = v44;
                v145 = v45;
                v146 = v47;
                *(&v143 + (v39 & 0xF)) = v62;
                v45 = v145;
                v47 = v146;
                v43 = v143;
                v44 = v144;
                v21 = MEMORY[0x277CD7410];
                goto LABEL_36;
              }
            }
          }

          v139 = v43;
          v140 = v44;
          v141 = v45;
          v142 = v47;
          *(&v139 + (v39 & 0xF)) = v62;
          v45 = v141;
          v47 = v142;
          v55 = v67 + 1;
          v43 = v139;
          v44 = v140;
          goto LABEL_36;
        }
      }

      else
      {
        v56 = v40;
      }

LABEL_19:
      if (v57 != v52)
      {
        return 0.0;
      }

      goto LABEL_20;
    }
  }

  v39 = 0;
  v40 = 0;
  *&v42 = 0;
  v43 = 0uLL;
  v44 = 0uLL;
  LODWORD(v53) = *v20;
  v45 = 0uLL;
  v47 = 0uLL;
  v48 = 0uLL;
  v49 = 0uLL;
  v50 = 0uLL;
  v51 = 0uLL;
LABEL_42:
  v97 = v39;
  v98 = *(a1 + v53);
  v39 = v39 - v40 + 16;
  do
  {
    v121 = v98;
    v99 = *(&v121 | v40 & 0xF);
    v126 = v43;
    v127 = v44;
    v128 = v45;
    v129 = v47;
    *(&v126 + (v97 & 0xF)) = v99;
    v45 = v128;
    v47 = v129;
    v43 = v126;
    v44 = v127;
    v122 = v48;
    v123 = v49;
    v124 = v50;
    v125 = v51;
    *(&v122 + (v97 & 0xF)) = 1;
    v50 = v124;
    v51 = v125;
    ++v40;
    ++v97;
    v48 = v122;
    v49 = v123;
  }

  while (v40 != 16);
LABEL_44:
  if (v39)
  {
    v100 = 0;
    v101 = 0uLL;
    v102 = 255;
    do
    {
      v103 = 0;
      v120[0] = v43;
      v120[1] = v44;
      v120[2] = v45;
      v120[3] = v47;
      v104 = *(v120 + (v100 & 0xF));
      v105 = v104;
      do
      {
        v119[0] = v43;
        v119[1] = v44;
        v119[2] = v45;
        v119[3] = v47;
        v106 = *(v119 + (v103 & 0xF));
        v118[0] = v48;
        v118[1] = v49;
        v118[2] = v50;
        v118[3] = v51;
        if (v106 < v104 && v100 != v103)
        {
          v105 = v105 - *(v118 + (v103 & 0xF)) + 1;
        }

        ++v103;
      }

      while (v39 != v103);
      v117 = v101;
      *(&v117 | v100 & 0xF) = v105;
      v101 = v117;
      if (v105 > v102)
      {
        v102 = v105;
      }

      ++v100;
    }

    while (v100 != v39);
    if (v39 >= 0x10)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v101 = 0uLL;
    v102 = 255;
  }

  do
  {
    ++v102;
    v112 = v101;
    *(&v112 | v39 & 0xF) = v102;
    v101 = v112;
    v113 = v48;
    v114 = v49;
    v115 = v50;
    v116 = v51;
    *(&v113 + (v39 & 0xF)) = 1;
    v50 = v115;
    v51 = v116;
    ++v39;
    v48 = v113;
    v49 = v114;
  }

  while (v39 != 16);
LABEL_60:
  if (a3)
  {
    *a3 = v101;
  }

  if (!a4)
  {
    return *&v42;
  }

  *a4 = v48;
  a4[1] = v49;
  v19 = *&v42;
  a4[2] = v50;
  a4[3] = v51;
  return v19;
}

uint64_t MPSNDArrayIdentityFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MPSCreateFunctionConstantValues();
  v6 = v5;
  v7 = *a3;
  v8 = *(a3 + 1);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vceqq_s64(v8, v9);
  v11 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v9), vceqq_s64(*(a3 + 4), v9))));
  v12 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(v10, vceqq_s64(*(a3 + 3), v9)), xmmword_239B06050)) & 0xF;
  if (*a3 != -1 || v12 != 0 || (v11 & 0xF) != 0 || a3[5] != -1)
  {
    if ((vuzp1_s16(vmovn_s64(v10), *v8.i8).u8[0] & 1) == 0)
    {
      v19 = *(a3 + 1);
      [v5 setConstantValue:&v19 type:33 atIndex:126];
      v7 = *a3;
    }

    if (v7 != -1)
    {
      v19 = v7;
      [v6 setConstantValue:&v19 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v19 = a3[2];
      [v6 setConstantValue:&v19 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v19 = a3[3];
      [v6 setConstantValue:&v19 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v19 = a3[4];
      [v6 setConstantValue:&v19 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v19 = a3[5];
      [v6 setConstantValue:&v19 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v19 = a3[8];
      [v6 setConstantValue:&v19 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v19 = a3[9];
      [v6 setConstantValue:&v19 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v19 = a3[6];
      [v6 setConstantValue:&v19 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v19 = a3[7];
      [v6 setConstantValue:&v19 type:33 atIndex:116];
    }
  }

  v16 = *a2;
  v17 = _MPSNewSpecializedFunction();

  return v17;
}

uint64_t GetKernelParametersNCHWCommon(_DWORD *a1)
{
  if (a1[20] == 1)
  {
    v2 = a1[6];
    v1 = a1[7];
    v3 = 64 - __clz(v2 - 1);
    if (v2 <= 1)
    {
      v4 = (v2 == 0) << 63;
    }

    else
    {
      v4 = v3;
    }

    if (v4 >= 4)
    {
      v4 = 4;
    }

    if (v4 <= 2)
    {
      v4 = 2;
    }

    v5 = 0x324000000;
    if (v1 < 9)
    {
      v5 = 0x340000000;
    }

    v6 = 0x2A2000000;
    if (v1 < 9)
    {
      v6 = 0x2B0000000;
    }

    if (*(*a1 + 1472) >= 33)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    v130 = v4 | v7 | (8 * v4) | 0x14000200180;
    return AdjustKernelParameters(v1, a1[19], &v130);
  }

  if ((a1[21] | 0x80000000) == 0x90000010)
  {
    v9 = a1[22] == 268435472;
    v10 = a1[9];
    if (a1[22] == 268435472)
    {
      v10 = 1;
    }
  }

  else
  {
    v9 = 1;
    v10 = 1;
  }

  v11 = *(*a1 + 1472);
  v12 = a1[5] * a1[4];
  v13 = v12 * v10;
  v15 = a1[6];
  v14 = a1[7];
  v16.i64[0] = 0x100000001;
  v16.i64[1] = 0x100000001;
  v17 = vmovn_s32(vmvnq_s8(vceqq_s32(*(a1 + 10), v16)));
  v17.i16[0] = vmaxv_u16(v17);
  v18 = (a1[14] == 3) & ~v17.i32[0];
  if (v18 == 1 && (a1[23] & 1) == 0 && a1[15] == 3)
  {
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v22 = &dword_239B19BF8;
    do
    {
      v23 = v13 - *(v22 - 2);
      if (v23 < 0)
      {
        LODWORD(v23) = *(v22 - 2) - v13;
      }

      v24 = v14 - *(v22 - 1);
      if (v24 < 0)
      {
        LODWORD(v24) = *(v22 - 1) - v14;
      }

      v25 = v24 + v23;
      v26 = v15 - *v22;
      if (v26 < 0)
      {
        LODWORD(v26) = *v22 - v15;
      }

      v27 = (v25 + v26);
      if (v21 > v27)
      {
        v21 = v27;
        v19 = v20;
        if (!v27)
        {
          v19 = v20;
          goto LABEL_57;
        }
      }

      v22 += 9;
      ++v20;
    }

    while (v20 != 354);
    if (v21)
    {
      goto LABEL_48;
    }

LABEL_57:
    v36 = &nchwWinogradTable;
LABEL_58:
    v38 = &v36[9 * v19 + 3 + v9];
    v39 = &v36[9 * v19 + 5 + v9];
    v40 = &v36[9 * v19 + 7 + v9];
    if (v11 != 36)
    {
      v40 = v39;
    }

    if (v11 >= 33)
    {
      v38 = v40;
    }

    if (v15 > 1)
    {
      v41 = 64 - __clz(v15 - 1);
    }

    else
    {
      v41 = (v15 == 0) << 63;
    }

    v42 = *v38;
    if (v41 >= ((v42 >> 3) & 7))
    {
      v41 = (v42 >> 3) & 7;
    }

    v43 = (8 * v42) & 0x18000;
    if ((v41 & 0x7F) == 0)
    {
      v43 = 0;
    }

    v86 = v11 <= 32;
    v44 = 0x300000000;
    if (!v86)
    {
      v44 = 0x280000000;
    }

    if ((v42 & 0x10000000) != 0)
    {
      v44 = 0x280000000;
    }

    v45 = vshlq_u32(vdupq_n_s32(v42), xmmword_239B19BC0);
    v46.i64[0] = v45.i32[0] & 0xFFFFFF01;
    v46.i64[1] = v45.i32[1] & 0xFFFFFF01;
    v47 = v46;
    v46.i64[0] = v45.i32[2] & 0xFFFFFF01;
    v46.i64[1] = v45.i32[3] & 0xFFFFFF01;
    v48 = vorrq_s8(vshlq_u64(v47, xmmword_239B19BE0), vshlq_u64(v46, xmmword_239B19BD0));
    return v42 & 0xFC7 | (v42 >> 14 << 18) & 0x819FFFC7 | ((WORD1(v42) & 3) << 21) & 0x81FFFFC7 | (((v42 >> 18) & 0x3F) << 25) | (8 * (v41 & 7)) | v43 | v44 | *&vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL)) | (((v42 >> 27) & 1) << 42) | 0x100000000000;
  }

  v28 = 0;
  v19 = 0;
  v29 = -1;
  v30 = &dword_239B1CDC0;
  do
  {
    v31 = v13 - *(v30 - 2);
    if (v31 < 0)
    {
      LODWORD(v31) = *(v30 - 2) - v13;
    }

    v32 = v14 - *(v30 - 1);
    if (v32 < 0)
    {
      LODWORD(v32) = *(v30 - 1) - v14;
    }

    v33 = v32 + v31;
    v34 = v15 - *v30;
    if (v34 < 0)
    {
      LODWORD(v34) = *v30 - v15;
    }

    v35 = (v33 + v34);
    if (v29 > v35)
    {
      v19 = v28;
      v29 = v35;
      if (!v35)
      {
        v19 = v28;
LABEL_51:
        v36 = &nchwDirectTable;
        goto LABEL_58;
      }
    }

    v30 += 9;
    ++v28;
  }

  while (v28 != 240);
  if (!v29)
  {
    goto LABEL_51;
  }

  if ((v18 & (a1[15] == 3)) != 1)
  {
    if (v14 > 1)
    {
      if (v12 > 0x1E847F)
      {
        v37 = 64 - __clz(v14 - 1);
        goto LABEL_84;
      }

      if (v12 > 0x7A11F)
      {
        v63 = 64 - __clz(v14 - 1);
        goto LABEL_106;
      }
    }

    else
    {
      if (v12 > 0x1E847F)
      {
        v37 = (v14 == 0) << 63;
LABEL_84:
        v59 = 6;
        if (v37 < 6)
        {
          v59 = v37;
        }

        v60 = 2;
        if (v59 > 2)
        {
          v60 = v59;
        }

        if (v15 > 1)
        {
          v61 = 64 - __clz(v15 - 1);
        }

        else
        {
          v61 = (v15 == 0) << 63;
        }

        if (v61 >= 4)
        {
          v61 = 4;
        }

        LOBYTE(v68) = 2;
        if (v61 > 2)
        {
          LOBYTE(v68) = v61;
        }

        if (v11 > 32)
        {
          v69 = 0;
          v70 = 0;
          v76 = v37 > 3;
          v86 = v37 < 4;
          v71 = v37 < 4;
          if (v86)
          {
            v72 = 805306368;
          }

          else
          {
            v72 = 0x20000000;
          }

          v73 = v76 << 25;
          v74 = 6;
        }

        else
        {
          v69 = 0;
          v70 = 0;
          v86 = v37 <= 2;
          v71 = v37 > 2;
          if (v86)
          {
            v72 = 0x40000000;
          }

          else
          {
            v72 = 0x20000000;
          }

          v73 = v71 << 26;
          v74 = 6;
        }

        goto LABEL_261;
      }

      if (v12 > 0x7A11F)
      {
        v63 = (v14 == 0) << 63;
LABEL_106:
        v66 = 6;
        if (v63 < 6)
        {
          v66 = v63;
        }

        v60 = 2;
        if (v66 > 2)
        {
          v60 = v66;
        }

        if (v11 > 32)
        {
          if (v15 > 1)
          {
            v77 = 64 - __clz(v15 - 1);
          }

          else
          {
            v77 = (v15 == 0) << 63;
          }

          if (v77 >= 4)
          {
            v77 = 4;
          }

          LOBYTE(v68) = 2;
          if (v77 > 2)
          {
            LOBYTE(v68) = v77;
          }

          v70 = v63 > 3;
          v69 = v63 < 4;
          if (v63 >= 4)
          {
            v72 = 0x20000000;
          }

          else
          {
            v72 = 805306368;
          }

          v73 = v70 << 25;
          if (v63 >= 4)
          {
            v74 = 5;
          }

          else
          {
            v74 = 6;
          }

          v71 = v63 < 4;
          goto LABEL_261;
        }

        if (v15 > 1)
        {
          v67 = 64 - __clz(v15 - 1);
        }

        else
        {
          v67 = (v15 == 0) << 63;
        }

        v70 = 0;
        v69 = v63 < 3;
        v79 = 3;
        if (v63 >= 3)
        {
          v79 = 4;
        }

        if (v67 >= v79)
        {
          v67 = v79;
        }

        LOBYTE(v68) = 2;
        if (v67 > 2)
        {
          LOBYTE(v68) = v67;
        }

        v74 = 6;
        v71 = 1;
LABEL_145:
        v73 = 0x4000000;
        v72 = 0x20000000;
LABEL_261:
        v95 = v11 < 33;
        v96 = 805306368;
        v97 = 0x40000000;
        if (!v95)
        {
          v97 = 805306368;
          v96 = 0x20000000;
        }

        v98 = 100663296;
        v99 = 0x8000000;
        if (!v95)
        {
          v99 = 100663296;
          v98 = 0x4000000;
        }

        v100 = 0x14280000000;
        if (v95)
        {
          v100 = 0x14300000000;
        }

        if (v60 == 2)
        {
          v72 = v97;
          v73 = 0;
        }

        if (v70 == 1)
        {
          v96 = v97;
        }

        if (v60 == 3)
        {
          v101 = (v70 == 0) << 25;
        }

        else
        {
          v96 = v72;
          v101 = v73;
        }

        if (v74 == 2)
        {
          v96 = 0;
          v101 = v99;
        }

        LODWORD(v102) = v71 << 21;
        if (v74 == 2)
        {
          v102 = 0;
        }

        else
        {
          v102 = v102;
        }

        LODWORD(v103) = v70 << 18;
        if (v60 == 2)
        {
          v103 = 0;
        }

        else
        {
          v103 = v103;
        }

        v104 = (v71 == 0) << 28;
        if (v71 == 1)
        {
          v105 = v99;
        }

        else
        {
          v105 = v98;
        }

        v106 = v74 == 3;
        if (v74 == 3)
        {
          v96 = v104;
        }

        v107 = 8 * (v68 & 7);
        v108 = (v74 & 7) << 6;
        v109 = (v69 << 15);
        if (v106)
        {
          v101 = v105;
        }

        v130 = v100 | v109 | v60 | v107 | v108 | v102 | v103 | v101 & 0xE000000 | v96 & 0x70000000;
        return AdjustKernelParameters(v14, a1[19], &v130);
      }
    }

    if (v12 >> 5 >= 0x177)
    {
      if (v15 > 1)
      {
        v75 = 64 - __clz(v15 - 1);
      }

      else
      {
        v75 = (v15 == 0) << 63;
      }

      v68 = 4;
      if (v11 < 33)
      {
        v68 = 5;
      }

      if (v75 < v68)
      {
        v68 = v75;
      }

      if (v68 <= 2)
      {
        LOBYTE(v68) = 2;
      }

      if (v14 > 1)
      {
        v80 = 64 - __clz(v14 - 1);
      }

      else
      {
        v80 = (v14 == 0) << 63;
      }

      if (v75 < 3)
      {
        v85 = 5;
      }

      else
      {
        v85 = 6;
      }

      if (v80 < v85)
      {
        v85 = v80;
      }

      v60 = 2;
      if (v85 > 2)
      {
        v60 = v85;
      }

      if (v85 == 5)
      {
        v74 = 6;
      }

      else
      {
        v74 = 5;
      }

      if (v11 <= 32)
      {
        v70 = 0;
        v69 = v75 > 2;
        v73 = 0x4000000;
        v72 = 0x20000000;
        v71 = v69;
        goto LABEL_261;
      }

      v69 = 0;
      v71 = 0;
LABEL_201:
      v70 = 1;
      v73 = 0x2000000;
      v72 = 0x20000000;
      goto LABEL_261;
    }

    if (v12 >> 6 >= 0x7D)
    {
      if (v14 > 1)
      {
        v78 = 64 - __clz(v14 - 1);
      }

      else
      {
        v78 = (v14 == 0) << 63;
      }

      v88 = 6;
      if (v78 < 6)
      {
        v88 = v78;
      }

      v60 = 2;
      if (v88 > 2)
      {
        v60 = v88;
      }

      if (v15 > 1)
      {
        v89 = 64 - __clz(v15 - 1);
      }

      else
      {
        v89 = (v15 == 0) << 63;
      }

      v90 = 3;
      if (v11 < 33)
      {
        v90 = 4;
      }

      if (v89 >= v90)
      {
        v89 = v90;
      }

      LOBYTE(v68) = 2;
      if (v89 > 2)
      {
        LOBYTE(v68) = v89;
      }

      v74 = 5;
      if (v11 < 33)
      {
        v69 = 0;
        v70 = 0;
        v71 = 1;
LABEL_256:
        v73 = 0x4000000;
LABEL_260:
        v72 = 0x20000000;
        goto LABEL_261;
      }

      v69 = 0;
      v71 = 0;
      if (v78 == 5)
      {
        v74 = 6;
      }

      else
      {
        v74 = 5;
      }

      goto LABEL_259;
    }

    if (v12 >= 0xBB8)
    {
      if (v14 > 1)
      {
        v84 = 64 - __clz(v14 - 1);
      }

      else
      {
        v84 = (v14 == 0) << 63;
      }

      v91 = 5;
      if ((v14 & 0x3F) == 0)
      {
        v91 = 6;
      }

      if (v84 >= v91)
      {
        v92 = v91;
      }

      else
      {
        v92 = v84;
      }

      if (v92 <= 2)
      {
        v60 = 2;
      }

      else
      {
        v60 = v92;
      }

      if (v15 > 1)
      {
        v93 = 64 - __clz(v15 - 1);
      }

      else
      {
        v93 = (v15 == 0) << 63;
      }

      if (v93 >= 4)
      {
        v93 = 4;
      }

      LOBYTE(v68) = 2;
      if (v93 > 2)
      {
        LOBYTE(v68) = v93;
      }

      v69 = v14 < 0x81;
      if (v14 < 0x81)
      {
        v74 = 4;
      }

      else
      {
        v74 = 5;
      }

      if (v11 < 33)
      {
        v71 = 0;
        v70 = 1;
        goto LABEL_256;
      }

      v71 = 0;
      if (v92 == 5)
      {
        v74 = 5;
      }

LABEL_259:
      v70 = 1;
      v73 = 0x2000000;
      goto LABEL_260;
    }

    if (v12 >= 0x3E8)
    {
      if (v11 > 32)
      {
        if (v14 > 1)
        {
          v110 = 64 - __clz(v14 - 1);
        }

        else
        {
          v110 = (v14 == 0) << 63;
        }

        v74 = 5;
        if ((v14 & 0x3F) != 0)
        {
          v115 = 5;
        }

        else
        {
          v115 = 6;
        }

        if (v110 >= v115)
        {
          v110 = v115;
        }

        v60 = 2;
        if (v110 > 2)
        {
          v60 = v110;
        }

        if (v14 <= 0x1FF)
        {
          if (v14 <= 0x5F)
          {
            if (v14 < 0x40)
            {
              v71 = 0;
              v116 = 4;
              if (v14 <= 0x2F)
              {
                v74 = 3;
              }

              else
              {
                v116 = 5;
                v74 = 4;
              }

              v69 = 1;
              v73 = 0x2000000;
              v72 = 0x20000000;
              v70 = 1;
            }

            else
            {
              v71 = 0;
              v69 = v15 > 0x30;
              v74 = 3;
              v70 = 1;
              v73 = 0x4000000;
              v72 = 0x10000000;
              v116 = 4;
            }
          }

          else
          {
            v69 = 0;
            v70 = 0;
            v116 = 5;
            v71 = 1;
            v73 = 0x2000000;
            v72 = 0x20000000;
            v74 = 5;
          }
        }

        else
        {
          v69 = 0;
          v71 = 0;
          v70 = 1;
          v73 = 0x2000000;
          v72 = 0x20000000;
          v116 = 3;
        }

        if (v15 > 1)
        {
          v129 = 64 - __clz(v15 - 1);
        }

        else
        {
          v129 = (v15 == 0) << 63;
        }

        if (v129 >= v116)
        {
          v129 = v116;
        }

        LOBYTE(v68) = 2;
        if (v129 > 2)
        {
          LOBYTE(v68) = v129;
        }

        goto LABEL_261;
      }

      if (v14 <= 0x1FF)
      {
        if (v14 > 1)
        {
          v112 = 64 - __clz(v14 - 1);
        }

        else
        {
          v112 = (v14 == 0) << 63;
        }

        if (v112 >= 5)
        {
          v112 = 5;
        }

        v60 = 2;
        if (v112 > 2)
        {
          v60 = v112;
        }
      }

      else
      {
        v60 = 6;
      }

      if (v15 > 1)
      {
        v119 = 64 - __clz(v15 - 1);
      }

      else
      {
        v119 = (v15 == 0) << 63;
      }

      v74 = 5;
      if (v119 >= 5)
      {
        v119 = 5;
      }

      LOBYTE(v68) = 2;
      if (v119 > 2)
      {
        LOBYTE(v68) = v119;
      }

      if (v14 > 0x1FF)
      {
        v69 = 0;
        v71 = 0;
        v70 = 1;
        v73 = 0x4000000;
        v72 = 0x20000000;
        goto LABEL_261;
      }

      v71 = 0;
      v70 = v14 > 0x20;
      if (v14 <= 0x20)
      {
        v74 = 3;
      }

      else
      {
        v74 = 4;
      }

      v69 = 1;
      goto LABEL_145;
    }

    if (v12 >= 0x2BC)
    {
      if (v14 > 1)
      {
        v94 = 64 - __clz(v14 - 1);
      }

      else
      {
        v94 = (v14 == 0) << 63;
      }

      v113 = 5;
      if ((v14 & 0x3F) == 0)
      {
        v113 = 6;
      }

      if (v94 >= v113)
      {
        v94 = v113;
      }

      v60 = 2;
      if (v94 > 2)
      {
        v60 = v94;
      }

      if (v11 <= 32)
      {
        if (v15 > 1)
        {
          v114 = 64 - __clz(v15 - 1);
        }

        else
        {
          v114 = (v15 == 0) << 63;
        }

        v71 = 0;
        if (v114 >= 5)
        {
          v114 = 5;
        }

        LOBYTE(v68) = 2;
        if (v114 > 2)
        {
          LOBYTE(v68) = v114;
        }

        if (v14 <= 0xFF)
        {
          v74 = 4;
        }

        else
        {
          v74 = 5;
        }

        v69 = 1;
        v73 = 0x4000000;
        v72 = 0x20000000;
        v70 = 1;
        goto LABEL_261;
      }

      if (v14 >= 0x200)
      {
        if (v15 > 1)
        {
          v68 = 64 - __clz(v15 - 1);
        }

        else
        {
          v68 = (v15 == 0) << 63;
        }

        if (v68 >= 4)
        {
          v68 = 4;
        }

        if (v68 <= 2)
        {
          LOBYTE(v68) = 2;
        }
      }

      else
      {
        if (v15 > 1)
        {
          v68 = 64 - __clz(v15 - 1);
        }

        else
        {
          v68 = (v15 == 0) << 63;
        }

        if (v68 >= 5)
        {
          v68 = 5;
        }

        if (v68 <= 2)
        {
          LOBYTE(v68) = 2;
        }

        if (v14 < 0x100)
        {
          v74 = 4;
LABEL_415:
          v71 = 0;
          v69 = v14 < 0x200 || v15 < 0x100;
          goto LABEL_201;
        }
      }

      if (v15 > 1)
      {
        v127 = 64 - __clz(v15 - 1);
      }

      else
      {
        v127 = (v15 == 0) << 63;
      }

      if (v127 >= 5)
      {
        v127 = 5;
      }

      if (v127 <= 2)
      {
        v74 = 2;
      }

      else
      {
        v74 = v127;
      }

      goto LABEL_415;
    }

    if (v12 >= 0x1F4)
    {
      if (v11 > 32)
      {
        if (v14 > 1)
        {
          v118 = 64 - __clz(v14 - 1);
        }

        else
        {
          v118 = (v14 == 0) << 63;
        }

        if (v118 >= 5)
        {
          v118 = 5;
        }

        v60 = 2;
        if (v118 > 2)
        {
          v60 = v118;
        }

        if (v15 > 1)
        {
          v125 = 64 - __clz(v15 - 1);
        }

        else
        {
          v125 = (v15 == 0) << 63;
        }

        v71 = 0;
        v74 = 5;
        if (v125 >= 5)
        {
          v125 = 5;
        }

        LOBYTE(v68) = 2;
        if (v125 > 2)
        {
          LOBYTE(v68) = v125;
        }

        v69 = 1;
        v73 = 0x2000000;
      }

      else
      {
        if (v14 > 1)
        {
          v111 = 64 - __clz(v14 - 1);
        }

        else
        {
          v111 = (v14 == 0) << 63;
        }

        if (v111 >= 6)
        {
          v111 = 6;
        }

        v60 = 2;
        if (v111 > 2)
        {
          v60 = v111;
        }

        if (v15 > 1)
        {
          v121 = 64 - __clz(v15 - 1);
        }

        else
        {
          v121 = (v15 == 0) << 63;
        }

        v71 = 0;
        v74 = 5;
        if (v121 >= 5)
        {
          v121 = 5;
        }

        LOBYTE(v68) = 2;
        if (v121 > 2)
        {
          LOBYTE(v68) = v121;
        }

        v69 = 1;
        v73 = 0x4000000;
      }

      v72 = 0x20000000;
      v70 = 1;
      goto LABEL_261;
    }

    if (v12 < 0x64)
    {
      if (v14 > 1)
      {
        v120 = 64 - __clz(v14 - 1);
      }

      else
      {
        v120 = (v14 == 0) << 63;
      }

      if (v120 >= 6)
      {
        v120 = 6;
      }

      v60 = 2;
      if (v120 > 2)
      {
        v60 = v120;
      }

      if (v15 > 1)
      {
        v126 = 64 - __clz(v15 - 1);
      }

      else
      {
        v126 = (v15 == 0) << 63;
      }

      if (v126 >= 6)
      {
        v126 = 6;
      }

      LOBYTE(v68) = 2;
      if (v126 > 2)
      {
        LOBYTE(v68) = v126;
      }

      v74 = 3;
      if (v11 <= 32)
      {
        v71 = 0;
        if (v14 <= 0x1FF)
        {
          v74 = 3;
        }

        else
        {
          v74 = 4;
        }

        v69 = 1;
        v73 = 100663296;
        goto LABEL_467;
      }

      v71 = 0;
    }

    else
    {
      if (v14 > 1)
      {
        v117 = 64 - __clz(v14 - 1);
      }

      else
      {
        v117 = (v14 == 0) << 63;
      }

      if ((v14 & 0x3F) != 0)
      {
        v122 = 5;
      }

      else
      {
        v122 = 6;
      }

      if ((v14 - 513) >= 0xFFFFFEFF)
      {
        v123 = v122;
      }

      else
      {
        v123 = 5;
      }

      if (v117 >= v123)
      {
        v117 = v123;
      }

      v60 = 2;
      if (v117 > 2)
      {
        v60 = v117;
      }

      if (v15 > 1)
      {
        v124 = 64 - __clz(v15 - 1);
      }

      else
      {
        v124 = (v15 == 0) << 63;
      }

      if (v124 >= 5)
      {
        v124 = 5;
      }

      LOBYTE(v68) = 2;
      if (v124 > 2)
      {
        LOBYTE(v68) = v124;
      }

      if (v11 <= 32)
      {
        if (v14 <= 0x200)
        {
          v71 = 0;
          v70 = 0;
          if (v14 == 256)
          {
            v74 = 3;
          }

          else
          {
            v74 = 4;
          }
        }

        else
        {
          v71 = 0;
          v70 = 0;
          v74 = 5;
        }

        v69 = 1;
        goto LABEL_256;
      }

      v71 = 0;
      v74 = 4;
    }

    v69 = 1;
    v73 = 0x4000000;
LABEL_467:
    v72 = 0x10000000;
    v70 = 1;
    goto LABEL_261;
  }

LABEL_48:
  if (a1[9] >= 2u)
  {
    if (v12 < 0x65)
    {
      return 0x80294240115;
    }

    if (v14 <= 0x40)
    {
      v62 = 0x802A2240194;
    }

    else
    {
      v62 = 0x802A2240155;
    }

    if (v15 >= 9)
    {
      return 0x802A228015DLL;
    }

    else
    {
      return v62;
    }
  }

  v50 = v14 < 0x11 || v15 < 9;
  v51 = v12 - 784;
  if (v14 < 2)
  {
    v52 = 0;
    v53 = 805306368;
    v54 = 1024;
    v55 = 3;
    v56 = 0x40000;
    v57 = 0x200000;
    v58 = 256;
    goto LABEL_163;
  }

  v64 = __clz(v14 - 1);
  v65 = 64 - v64;
  v55 = 3;
  if (64 - v64 > 3)
  {
    v55 = 64 - v64;
  }

  if (v55 >= 5)
  {
    v55 = 5;
  }

  if (v14 < 9)
  {
    v52 = 0;
    v53 = 805306368;
    v54 = 1024;
    goto LABEL_162;
  }

  if (v64 == 60)
  {
    v54 = 512;
    v65 = 4;
LABEL_158:
    v81 = v65 == 4;
    v52 = 0x4000000;
    if (v65 == 4)
    {
      v52 = 0x2000000;
    }

    v53 = 0x10000000;
    if (v81)
    {
      v53 = 0x20000000;
    }

LABEL_162:
    v58 = 256;
    v56 = 0x40000;
    v57 = 0x200000;
  }

  else
  {
    if (v12 <= 0xFFF && v15 < 0x80)
    {
      v54 = 0;
      goto LABEL_158;
    }

    if (v15 >= 0x100)
    {
      v54 = 0;
      v53 = 0x10000000;
      v52 = 0x4000000;
      v58 = 320;
      v56 = 0x40000;
      v57 = 0x400000;
    }

    else
    {
      v54 = 0;
      v86 = v14 > 0x7F;
      v87 = v14 > 0x7F;
      v56 = 0x80000;
      if (!v86)
      {
        v56 = 786432;
      }

      v57 = v87 << 21;
      v52 = v87 << 25;
      v53 = 805306368;
      if (v86)
      {
        v53 = 0x20000000;
      }

      v58 = 320;
    }
  }

LABEL_163:
  if (v51 < 0xCF1 && v15 < 0x100)
  {
    v50 = 1;
  }

  if (v50)
  {
    v83 = 0x80280000010;
  }

  else
  {
    v83 = 0x80280000018;
  }

  return v57 | v56 | v55 | v58 | v54 | v52 | v83 | v53;
}

unint64_t GetVegaKernelParametersNHWCCommon(_DWORD *a1)
{
  v3 = a1[4];
  v5 = a1[6];
  v4 = a1[7];
  v6 = a1[9];
  v7 = 64 - __clz(v5 - 1);
  if (v5 <= 1)
  {
    v7 = (v5 == 0) << 63;
  }

  if (v4 > 1)
  {
    v9 = 64 - __clz(v4 - 1);
    v8 = 6;
    if (v9 < 6)
    {
      v8 = v9;
    }

    if (v6 == 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v6 == 1)
    {
      v8 = 0;
LABEL_9:
      if (v3 > 0xA)
      {
        if (v3 > 0x32)
        {
          v10 = 0;
          v11 = 0;
          if (v8 == 5)
          {
            LOBYTE(v13) = 6;
          }

          else
          {
            LOBYTE(v13) = 5;
          }

          v12 = v13 - 4;
          if (v5 < 5)
          {
            LOBYTE(v13) = 4;
          }

          else
          {
            v12 = 0;
          }

          v14 = 0x10000000000;
        }

        else
        {
          v10 = 0;
          v11 = 0;
          if (v8 >= 5)
          {
            v8 = 5;
          }

          if (v4 > 0x1FF)
          {
            v8 = 6;
          }

          v20 = a1[14] == 1;
          v21 = a1[15] == 1;
          v22 = !v20 || !v21;
          if (v20 && v21)
          {
            v12 = 2;
          }

          else
          {
            v12 = 0;
          }

          if (v22)
          {
            LOBYTE(v13) = 5;
          }

          else
          {
            LOBYTE(v13) = 3;
          }

          v14 = 0x10000000000;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        if (v8 >= 5)
        {
          v8 = 5;
        }

        if (v4 > 0x4B3)
        {
          v8 = 6;
        }

        LOBYTE(v13) = 4;
        v14 = 0x10000000000;
      }

      goto LABEL_66;
    }

    v9 = (v4 == 0) << 63;
  }

  v15 = 6;
  if (v9 < 6)
  {
    v15 = v9;
  }

  do
  {
    v16 = v15 - 1;
    if (v15 < 5)
    {
      break;
    }
  }

  while (v4 & ~(-1 << v15--));
  v18 = a1[5] * v3;
  v8 = v16 + 1;
  if (v18 > 0x64)
  {
    if (v18 > 0x1C2)
    {
      v13 = 5;
      if (v16 == 4)
      {
        v13 = 6;
      }

      if (v3 > 1)
      {
        v24 = 64 - __clz(v3 - 1);
      }

      else
      {
        v24 = (v3 == 0) << 63;
      }

      v19 = 0;
      v12 = 0;
      if (v13 >= v24)
      {
        LOBYTE(v13) = v24;
      }

      goto LABEL_56;
    }

    goto LABEL_36;
  }

  if (v3)
  {
LABEL_36:
    if (v6 > 1)
    {
      v23 = 64 - __clz(v6 - 1);
    }

    else
    {
      v23 = 0;
    }

    v12 = 0;
    LOBYTE(v13) = 0;
    if (v23 >= 5)
    {
      v19 = 5;
    }

    else
    {
      v19 = v23;
    }

    goto LABEL_56;
  }

  v12 = 2;
  v19 = 1;
  LOBYTE(v13) = 2;
LABEL_56:
  v25 = a1[10] == 1 && a1[11] == 1;
  v10 = 0x8000000000;
  if (v25)
  {
    v10 = 0;
  }

  if (v25)
  {
    v14 = 0x10000000000;
  }

  else
  {
    v14 = 0;
  }

  v11 = (v19 << 12);
LABEL_66:
  v38[1] = v1;
  v38[2] = v2;
  v26 = v7 < 4;
  if (v8 == 6)
  {
    v26 = 1;
  }

  v27 = 0x2000000;
  if (v8 == 6)
  {
    v27 = 100663296;
  }

  v28 = 805306368;
  if (v8 == 6)
  {
    v28 = 0x10000000;
  }

  v29 = (v8 == 6) << 21;
  if (v7 < 4)
  {
    v29 = 0;
  }

  v22 = !v26;
  v30 = 0x40000;
  if (!v22)
  {
    v30 = 0;
  }

  v31 = 5;
  if (v7 < 5)
  {
    v31 = v7;
  }

  if (v31 <= 2)
  {
    v31 = 2;
  }

  v32 = v8 & 7;
  v33 = (v13 & 7) << 6;
  v34 = (v12 & 7) << 9;
  v35 = v7 <= 3;
  v36 = 0x1700000000;
  if (!v35)
  {
    v36 = 0x1700008000;
  }

  v38[0] = v36 | (8 * v31) | v10 | v14 | v11 | v34 | v32 | v33 | v27 | v28 | v30 | v29;
  return AdjustKernelParameters(v4, a1[19], v38);
}

unint64_t GetNaviKernelParametersNHWCCommon(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = *(a1 + 36);
  v7 = *(a1 + 24);
  v6 = *(a1 + 28);
  v8 = 64 - __clz(v7 - 1);
  if (v7 <= 1)
  {
    v9 = (v7 == 0) << 63;
  }

  else
  {
    v9 = v8;
  }

  v10 = 64 - __clz(v6 - 1);
  if (v6 <= 1)
  {
    v10 = (v6 == 0) << 63;
  }

  v11 = 5;
  if ((v5 & (v5 - 1)) != 0)
  {
    v14 = 0;
  }

  else
  {
    v12 = 64 - __clz(v5 - 1);
    v13 = 0;
    if (v5 > 1)
    {
      v13 = v12;
    }

    if (v13 >= 5)
    {
      v14 = 5;
    }

    else
    {
      v14 = v13;
    }

    v11 = 5 - v14;
    if (v13)
    {
      v15 = v11 >> 1;
      goto LABEL_16;
    }
  }

  v15 = 0;
LABEL_16:
  v31[1] = v1;
  v31[2] = v2;
  v16 = 64 - __clz(v4 - 1);
  if (v4 <= 1)
  {
    v17 = (v4 == 0) << 63;
  }

  else
  {
    v17 = v16;
  }

  v18 = 64 - __clz(v3 - 1);
  if (v3 <= 1)
  {
    v19 = (v3 == 0) << 63;
  }

  else
  {
    v19 = v18;
  }

  if (v17 >= v15)
  {
    v17 = v15;
  }

  v20 = v11 - v15;
  if (v10 >= 6)
  {
    LODWORD(v10) = 6;
  }

  if (v19 >= v20)
  {
    LOBYTE(v19) = v20;
  }

  v21 = v10 < 6;
  if (v14 >= 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = v14;
  }

  v23 = v9 < 5;
  if (v9 >= 5)
  {
    v9 = 5;
  }

  if (v9 <= 2)
  {
    v9 = 2;
  }

  v24 = !v21 || !v23;
  if (v21 && v23)
  {
    v25 = v22;
  }

  else
  {
    v25 = v14;
  }

  v26 = v17 << 9;
  v27 = (v19 & 7) << 6;
  if (!v24)
  {
    v27 = 128;
    v26 = 1024;
  }

  v28 = (v25 & 7) << 12;
  if (v5 == 1)
  {
    v29 = 0x16A2008000;
  }

  else
  {
    v29 = 0x16A2040000;
  }

  v31[0] = v29 & 0xFFFFFFFFFFFFFFF8 | (8 * v9) | v10 & 7 | v26 | v27 | v28;
  return AdjustKernelParameters(v6, *(a1 + 76), v31);
}

unint64_t AdjustKernelParameters(unsigned int a1, int a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = (*a3 >> 12) & 7;
  v5 = (*a3 >> 6) & 7;
  v6 = (*a3 >> 9) & 7;
  v7 = *a3 & 7;
  v8 = (*a3 >> 28) & 7;
  v9 = (*a3 >> 25) & 7;
  v10 = (*a3 >> 36) & 3;
  v11 = (*a3 >> 34) & 3;
  v12 = (*a3 >> 31) & 7;
  v13 = v4 + v5 + v6;
  if (v7 >= ((*a3 >> 18) & 7) + v9 + v10 + 2)
  {
    v14 = (*a3 >> 18) & 7;
  }

  else
  {
    v14 = 0;
  }

  if (v7 >= v14 + v9 + v10 + 2)
  {
    v15 = (*a3 >> 36) & 3;
  }

  else
  {
    v15 = 0;
  }

  if (v7 >= v15 + 2 + v14 + v9)
  {
    v16 = (*a3 >> 25) & 7;
  }

  else
  {
    v16 = 0;
  }

  if (v13 >= ((*a3 >> 21) & 7) + v8 + v11 + 2)
  {
    v17 = (*a3 >> 21) & 7;
  }

  else
  {
    v17 = 0;
  }

  if (v13 >= v17 + v8 + v11 + 2)
  {
    v18 = (*a3 >> 34) & 3;
  }

  else
  {
    v18 = 0;
  }

  if (v13 < v17 + v8 + v18 + 2)
  {
    v8 = 0;
  }

  if (v8 + v16 + 2 == v12)
  {
    v19 = (v3 >> 15) & 7;
  }

  else
  {
    v4 = 0;
    v20 = v12 - 2;
    v21 = 64 - __clz(a1 - 1);
    if (a1 <= 1)
    {
      LODWORD(v21) = 0;
    }

    v22 = (v21 - v14 - v15 - 2) & ~((v21 - v14 - v15 - 2) >> 31);
    if (v22 >= v20)
    {
      v23 = v12 - 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = v15 + 2 + v14 + v23;
    if (v24 <= 6)
    {
      v15 = v15;
    }

    else
    {
      v15 = 0;
    }

    if (v24 > 6)
    {
      v14 = 0;
      v24 = v23 + 2;
    }

    v25 = v20 - v23;
    v26 = v24 < 4;
    if (v24 < 4)
    {
      LODWORD(v18) = 0;
      v17 = 1;
    }

    v27 = v25 + 2;
    v28 = v17 + v25 + 2 + v18;
    if (v28 <= 6)
    {
      v18 = v18;
    }

    else
    {
      v18 = 0;
    }

    if (v28 > 6)
    {
      v17 = 0;
    }

    else
    {
      v27 = v28;
    }

    v29 = v27 >> 1;
    v30 = v27 - (v27 >> 1);
    if (v30 != v29)
    {
      v26 = 0;
    }

    v31 = v29 - v26;
    v32 = v30 + v26;
    v19 = a2 == 1;
    LODWORD(v7) = v24 & 7;
    v5 = v32 & 7;
    v6 = v31 & 7;
    v16 = v23 & 7;
    v8 = v25 & 7;
  }

  result = (v18 << 34) | (v15 << 36) | v3 & 0xFFFFFFC381000038 | (v19 << 15) | (v16 << 25) | (v8 << 28) | (v14 << 18) | v7 | (v17 << 21) | (v6 << 9) | (v5 << 6) | (v4 << 12);
  *a3 = result;
  return result;
}

uint64_t EncodeQRDecomposition(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *&a1[*MEMORY[0x277CD7370]];
  v9 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v10 = (v9 + *MEMORY[0x277CD7410]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[3];
  v62 = v9;
  v14 = *(v9 + *MEMORY[0x277CD73D8]);
  v64 = v10[2];
  v65 = v13;
  v63[0] = v11;
  v63[1] = v12;
  v57 = *(v63 + (v14 & 0xF));
  v66[2] = v64;
  v66[3] = v13;
  v66[0] = v11;
  v66[1] = v12;
  v56 = *(v66 + (BYTE1(v14) & 0xF));
  v15 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v61 = *(v15 + *MEMORY[0x277CD7400]) >> 2;
  [a1 computeR];
  [a1 computeQ];
  v16 = MEMORY[0x277CD7360];
  v17 = *&a1[*MEMORY[0x277CD7360]];
  v18 = MEMORY[0x277CD7368];
  v19 = *&a1[*MEMORY[0x277CD7368]];
  *&v20 = -1;
  *(&v20 + 1) = -1;
  v75 = v20;
  v76 = v20;
  *&v73[16] = 0xFFFFFFFFFFFFFFFFLL;
  v74 = v20;
  *v73 = v20;
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v21 = *&a1[*v16];
  v22 = *&a1[*v18];
  *&v23 = -1;
  *(&v23 + 1) = -1;
  v75 = v23;
  v76 = v23;
  *&v73[16] = -1;
  v74 = v23;
  *v73 = v23;
  *&v73[24] = 1;
  MPSLibrary::CreateUberShaderKey();
  v58 = MPSLibrary::GetPipelineStateForMPSKey();
  v24 = *&a1[*v16];
  v25 = *&a1[*v18];
  *&v26 = -1;
  *(&v26 + 1) = -1;
  v75 = v26;
  v76 = v26;
  *&v73[16] = -1;
  v74 = v26;
  *v73 = v26;
  *&v73[24] = 2;
  MPSLibrary::CreateUberShaderKey();
  v55 = MPSLibrary::GetPipelineStateForMPSKey();
  v27 = *&a1[*v16];
  v28 = *&a1[*v18];
  *&v29 = -1;
  *(&v29 + 1) = -1;
  v75 = v29;
  v76 = v29;
  *&v73[16] = -1;
  v74 = v29;
  *v73 = v29;
  *&v73[24] = 3;
  MPSLibrary::CreateUberShaderKey();
  v30 = MPSLibrary::GetPipelineStateForMPSKey();
  v31 = *&a1[*v16];
  v32 = *&a1[*v18];
  *&v33 = -1;
  *(&v33 + 1) = -1;
  v75 = v33;
  v76 = v33;
  *&v73[16] = -1;
  v74 = v33;
  *v73 = v33;
  *&v73[24] = 4;
  v53 = v31;
  v54 = v32;
  MPSLibrary::CreateUberShaderKey();
  v34 = MPSLibrary::GetPipelineStateForMPSKey();
  MEMORY[0x23EE7C450](v67, a3, 0);
  v35 = *(a4 + 208);
  if (v57 > v56)
  {
    v60 = MPSGetTemporaryBufferFromCommandBufferCache();
    v36 = [v35 buffer];
    [a2 setComputePipelineState:v30];
    [a2 setBuffer:v36 offset:0 atIndex:0];
    [a2 setBytes:v73 length:40 atIndex:1];
    DWORD1(v74) = [v36 length];
    *v78 = (DWORD1(v74) + 63) >> 6;
    *&v78[8] = vdupq_n_s64(1uLL);
    *v77 = xmmword_239B1EF80;
    *&v77[16] = 1;
    [a2 dispatchThreadgroups:v78 threadsPerThreadgroup:v77];
  }

  else
  {
    v60 = [*(a4 + 208) buffer];
  }

  *&v73[8] = v61;
  *&v73[16] = v57;
  [a2 setComputePipelineState:v34];
  [a2 setBuffer:v60 offset:0 atIndex:0];
  [a2 setBytes:v73 length:40 atIndex:1];
  v37 = vshrq_n_u64(vaddq_s64(*&v73[8], vdupq_n_s64(0x1FuLL)), 5uLL);
  *v78 = vextq_s8(v37, v37, 8uLL);
  *&v78[16] = 1;
  *v77 = vdupq_n_s64(0x20uLL);
  *&v77[16] = 1;
  [a2 dispatchThreadgroups:v78 threadsPerThreadgroup:v77];
  v38 = MPSGetTemporaryBufferFromCommandBufferCache();
  [a2 setComputePipelineState:v30];
  [a2 setBuffer:v38 offset:0 atIndex:0];
  [a2 setBytes:v73 length:40 atIndex:1];
  DWORD1(v74) = [v38 length];
  *v78 = (DWORD1(v74) + 63) >> 6;
  *&v78[8] = vdupq_n_s64(1uLL);
  *v77 = xmmword_239B1EF80;
  *&v77[16] = 1;
  [a2 dispatchThreadgroups:v78 threadsPerThreadgroup:v77];
  v39 = MPSGetTemporaryBufferFromCommandBufferCache();
  [a2 setComputePipelineState:v30];
  [a2 setBuffer:v39 offset:0 atIndex:0];
  [a2 setBytes:v73 length:40 atIndex:1];
  DWORD1(v74) = [v39 length];
  *v78 = (DWORD1(v74) + 63) >> 6;
  *&v78[8] = vdupq_n_s64(1uLL);
  *v77 = 64;
  *&v77[8] = *&v78[8];
  [a2 dispatchThreadgroups:v78 threadsPerThreadgroup:v77];
  v40 = [*(*&a1[*MEMORY[0x277CD7350]] + 16) newBufferWithLength:16 options:0];
  v41 = v57 <= v56;
  bzero([v40 contents], objc_msgSend(v40, "length"));
  v71 = v56;
  v69 = v61;
  v70 = v57;
  if (v56 != v41)
  {
    v42 = 0;
    do
    {
      v43 = (((v57 + 1 - v42) >> 1) - 1) | ((((v57 + 1 - v42) >> 1) - 1) >> 1);
      v44 = v43 | (v43 >> 2) | ((v43 | (v43 >> 2)) >> 4);
      v45 = v44 | (v44 >> 8) | ((v44 | (v44 >> 8)) >> 16);
      v46 = v45 + 1;
      if ((v45 + 1) > 0x20)
      {
        v47 = v45 + 1;
      }

      else
      {
        v47 = 32;
      }

      v48 = v47;
      v49 = 1;
      if (v46 >= 0x401)
      {
        v50 = v48;
        do
        {
          v48 = v50 >> 1;
          v49 *= 2;
          v51 = v50 > 0x801;
          v50 >>= 1;
        }

        while (v51);
      }

      v72 = v49;
      [a2 setComputePipelineState:PipelineStateForMPSKey];
      [a2 setBuffer:objc_msgSend(v62 offset:"buffer") atIndex:{4 * v42 * v61, 0}];
      [a2 setBuffer:v38 offset:0 atIndex:1];
      [a2 setBuffer:v39 offset:0 atIndex:2];
      [a2 setBuffer:v40 offset:0 atIndex:3];
      [a2 setBytes:v68 length:40 atIndex:4];
      [a2 setThreadgroupMemoryLength:16 atIndex:0];
      *v73 = vdupq_n_s64(1uLL);
      *&v73[16] = 1;
      *v78 = v48;
      *&v78[8] = *v73;
      [a2 dispatchThreadgroups:v73 threadsPerThreadgroup:v78];
      [a2 setComputePipelineState:v58];
      [a2 setBuffer:v38 offset:4 * v42 atIndex:0];
      [a2 setBuffer:objc_msgSend(v62 offset:"buffer") atIndex:{4 * (v42 * v61 + v42), 1}];
      [a2 setBuffer:v60 offset:4 * v42 * v61 atIndex:2];
      [a2 setBuffer:v39 offset:0 atIndex:3];
      [a2 setBuffer:v40 offset:0 atIndex:4];
      [a2 setBytes:v68 length:40 atIndex:5];
      *v73 = (((v57 + 1) >> 1) + 63) >> 6;
      *&v73[8] = vdupq_n_s64(1uLL);
      *v78 = 64;
      *&v78[8] = *&v73[8];
      [a2 dispatchThreadgroups:v73 threadsPerThreadgroup:v78];
      ++v42;
    }

    while (v42 != v56 - v41);
  }

  if (v57 > v56)
  {
    [a2 setComputePipelineState:v55];
    [a2 setBuffer:v60 offset:0 atIndex:0];
    [a2 setBuffer:objc_msgSend(v35 offset:"buffer") atIndex:{0, 1}];
    [a2 setBytes:v68 length:40 atIndex:2];
    *v73 = (v61 * v56 + 1023) >> 10;
    *&v73[8] = vdupq_n_s64(1uLL);
    *v78 = 1024;
    *&v78[8] = *&v73[8];
    [a2 dispatchThreadgroups:v73 threadsPerThreadgroup:v78];
  }

  MPSAutoCache::~MPSAutoCache(v67);
  return 0;
}

uint64_t MPSNDArrayFunctionConstructorQRDecomposition(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a2 + 64);
  v6 = MPSCreateFunctionConstantValues();
  v12 = v5 & 1;
  v11 = (v5 & 2) != 0;
  [v6 setConstantValue:&v12 type:53 atIndex:115];
  [v6 setConstantValue:&v11 type:53 atIndex:114];
  v7 = *a3;
  if (a3[1] != -1)
  {
    v13 = a3[1];
    [v6 setConstantValue:&v13 type:33 atIndex:126];
  }

  if (v7 != -1)
  {
    v13 = v7;
    [v6 setConstantValue:&v13 type:33 atIndex:125];
  }

  v13 = 0;
  [v6 setConstantValue:&v13 type:33 atIndex:123];
  v13 = 0;
  [v6 setConstantValue:&v13 type:33 atIndex:119];
  v13 = 0;
  [v6 setConstantValue:&v13 type:33 atIndex:118];
  v13 = 0;
  [v6 setConstantValue:&v13 type:33 atIndex:122];
  v13 = 0;
  [v6 setConstantValue:&v13 type:33 atIndex:121];
  v13 = 0;
  [v6 setConstantValue:&v13 type:33 atIndex:117];
  v13 = 0;
  [v6 setConstantValue:&v13 type:33 atIndex:116];
  v8 = *a2;
  v9 = _MPSNewSpecializedFunction();

  return v9;
}

BOOL MPSNDArrayConvolutionDeviceBehavior::DoWeightsNeedPhysicalTranspose(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + *MEMORY[0x277CD73D8]);
  if (v4.u8[0] > 3u || v4.u8[1] > 3u || BYTE2(*(a3 + *MEMORY[0x277CD73D8])) > 3u || BYTE3(*(a3 + *MEMORY[0x277CD73D8])) > 3u)
  {
    return 1;
  }

  return vmovn_s16(vzip1q_s8(v4, v4)).u32[0] != 50462976 || *(a4 + 12) == 1;
}

uint64_t MPSNDArrayConvolutionDeviceBehavior::transposedWeights(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t **a6, int a7, int a8)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v15 = objc_autoreleasePoolPush();
  v16 = *a6;
  v18 = (*a6)[2];
  v17 = (*a6)[3];
  v19 = **a6;
  v20 = v16[1];
  if (a7 == 1)
  {
    if (a8)
    {
      v37 = a2;
      v38 = a4;
      v21 = v19;
      v22 = v16[1];
      if (a5)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    context = v15;
    v31 = [a5 descriptor];
    [v31 transposeDimension:0 withDimension:3];
    [v31 transposeDimension:1 withDimension:2];
    [v31 transposeDimension:2 withDimension:3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ++*&a5[*MEMORY[0x277CD7498]];
    }

    v32 = [a5 safeArrayViewWithCommandBuffer:a3 computeEncoder:a4 descriptor:v31 aliasing:1];
    if (v32)
    {
      v23 = v32;
      v37 = a2;
      v38 = a4;
      v36 = 0;
      v21 = v19;
      v22 = v20;
LABEL_18:
      v26 = MEMORY[0x277CD7268];
      v27 = [a5 dataType];
      v42[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
      v42[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
      v42[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
      v42[3] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
      v28 = MEMORY[0x277CBEA60];
      v29 = v42;
LABEL_19:
      v33 = [v26 descriptorWithDataType:v27 shape:{objc_msgSend(v28, "arrayWithObjects:count:", v29, 4)}];
      [v33 setPreferPackedRows:1];
      v30 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v33];
      if (v36)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ++*&v23[*MEMORY[0x277CD7498]];
        }
      }

      v40 = v23;
      [v37 encodeToMPSCommandEncoder:v38 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v40 kernelDAGObject:{1), 0, v30, 0}];
      goto LABEL_24;
    }

LABEL_23:
    v30 = 0;
LABEL_24:
    v15 = context;
    goto LABEL_25;
  }

  if (a8 == 1)
  {
    context = v15;
    v24 = [a5 descriptor];
    [v24 transposeDimension:0 withDimension:3];
    [v24 transposeDimension:1 withDimension:2];
    [v24 transposeDimension:0 withDimension:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      ++*&a5[*MEMORY[0x277CD7498]];
    }

    v25 = [a5 safeArrayViewWithCommandBuffer:a3 computeEncoder:a4 descriptor:v24 aliasing:1];
    if (v25)
    {
      v23 = v25;
      v37 = a2;
      v38 = a4;
      v36 = 0;
      v21 = v18;
      v22 = v17;
      v18 = v20;
      v17 = v19;
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  v37 = a2;
  v38 = a4;
  v21 = v18;
  v22 = v17;
  v18 = v16[1];
  v17 = v19;
  if (a5)
  {
LABEL_4:
    context = v15;
    v36 = 1;
    v23 = a5;
    if (!a8)
    {
      goto LABEL_18;
    }

LABEL_11:
    v26 = MEMORY[0x277CD7268];
    v27 = [a5 dataType];
    v41[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    v41[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v41[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
    v41[3] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
    v28 = MEMORY[0x277CBEA60];
    v29 = v41;
    goto LABEL_19;
  }

LABEL_13:
  v30 = 0;
LABEL_25:
  objc_autoreleasePoolPop(v15);
  v34 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t MPSNDArrayConvolutionDeviceBehavior::IsConvolutionGradientWithWeightsSupported(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 224);
  if (v4)
  {
    if (v4 != 1)
    {
      MPSKernel_LogInfo(a2, 2uLL, "Only NCHW and NHWC data formats supported. Falling back to generic implementation\n", v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
      return 0;
    }

    if (*(a2 + 228))
    {
      MPSKernel_LogInfo(a2, 2uLL, "NHWC data supported only with HWIO weights format. Falling back to generic implementation\n", v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
      return 0;
    }
  }

  else
  {
    if (*(a2 + 228) != 1)
    {
      MPSKernel_LogInfo(a2, 2uLL, "NCHW data supported only with OHIW weights format. Falling back to generic implementation\n", v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
      return 0;
    }

    if (*(*(a2 + *MEMORY[0x277CD7350]) + 1472) >= 26)
    {
      MPSKernel_LogInfo(a2, 2uLL, "NCHW + OIHW not optimized for AMD. Falling back to generic implementation\n", v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
      return 0;
    }
  }

  v6 = [*(a3 + 232) inputTensorAtIndex:0];
  v7 = [*(a3 + 232) inputTensorAtIndex:2];
  LODWORD(v6) = (*(**(v6 + 32) + 24))(*(v6 + 32));
  v8 = (*(**(v7 + 32) + 24))(*(v7 + 32));
  if (!v6 || (v8 & 1) == 0)
  {
    v16 = "Linking not supported by G13 gradient with weights kernels. Falling back to generic implementation\n";
    v17 = a2;
LABEL_18:
    MPSKernel_LogInfo(v17, 2uLL, v16, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
    return 0;
  }

  v9 = [*(a3 + 232) graph];
  v10 = *(v9 + 64);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 == v12)
  {
    goto LABEL_21;
  }

  v13 = v9;
  v14 = -1;
  do
  {
    v15 = *v11;
    if (v15 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v13) + 32))
    {
      v14 = *(*v11 + 76);
    }

    MPSKernelDAG::GetCoreOpInputAtIndex(v13);
    ++v11;
  }

  while (v11 != v12);
  if (v14 == -1)
  {
LABEL_21:
    v14 = 0;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v14 = 0;
    }
  }

  v19 = [*(a3 + 16) objectAtIndexedSubscript:v14];
  v20 = *(a3 + 112);
  v21 = *MEMORY[0x277CD7408];
  v22 = *(v19 + v21);
  v23 = *MEMORY[0x277CD73F0];
  v24 = *(v19 + v23);
  if (v24 >= 0x10)
  {
    v25 = 16;
  }

  else
  {
    v25 = *(v19 + v23);
  }

  if (v24 >= 2)
  {
    v26 = (v19 + *MEMORY[0x277CD7428]);
    v28 = v26[6];
    v27 = v26[7];
    v30 = v26[4];
    v29 = v26[5];
    v32 = v26[2];
    v31 = v26[3];
    v34 = *v26;
    v33 = v26[1];
    v35 = 1;
    v36 = 1;
    v37 = a2;
    while (1)
    {
      v145[0] = v34;
      v145[1] = v33;
      v145[2] = v32;
      v145[3] = v31;
      v145[4] = v30;
      v145[5] = v29;
      v145[6] = v28;
      v145[7] = v27;
      if (v22 != *(v145 + (v35 & 0xF)))
      {
        return 0;
      }

      v22 *= *(v19 + *MEMORY[0x277CD73D0] + 4 * (v35 & 0xF));
      v144 = *(v19 + *MEMORY[0x277CD73D8]);
      v36 |= 1 << *(&v144 | v35++ & 0xF);
      if (v25 == v35)
      {
        goto LABEL_32;
      }
    }
  }

  v36 = 1;
  v37 = a2;
LABEL_32:
  if (v24 <= 0xF && (v36 ^ (-1 << v25)) != 0xFFFFFFFF)
  {
    v38 = (v19 + *MEMORY[0x277CD7428]);
    v40 = v38[6];
    v39 = v38[7];
    v42 = v38[4];
    v41 = v38[5];
    v44 = v38[2];
    v43 = v38[3];
    v46 = *v38;
    v45 = v38[1];
    do
    {
      v143[0] = v46;
      v143[1] = v45;
      v143[2] = v44;
      v143[3] = v43;
      v143[4] = v42;
      v143[5] = v41;
      v143[6] = v40;
      v143[7] = v39;
      v47 = *(v143 + (v25 & 0xF));
      if (v22 != v47 && v47 != 0)
      {
        return 0;
      }

      v22 *= *(v19 + *MEMORY[0x277CD73D0] + 4 * (v25++ & 0xF));
    }

    while (v25 != 16);
  }

  v49 = *(v20 + v21);
  v50 = *(v20 + v23);
  v51 = 16;
  if (v50 < 0x10)
  {
    v51 = *(v20 + v23);
  }

  if (v50 >= 2)
  {
    v52 = (v20 + *MEMORY[0x277CD7428]);
    v54 = v52[6];
    v53 = v52[7];
    v56 = v52[4];
    v55 = v52[5];
    v58 = v52[2];
    v57 = v52[3];
    v60 = *v52;
    v59 = v52[1];
    v61 = 1;
    v62 = 1;
    while (1)
    {
      v135 = v60;
      v136 = v59;
      v137 = v58;
      v138 = v57;
      v139 = v56;
      v140 = v55;
      v141 = v54;
      v142 = v53;
      if (v49 != *(&v135 + (v61 & 0xF)))
      {
        return 0;
      }

      v49 *= *(v20 + *MEMORY[0x277CD73D0] + 4 * (v61 & 0xF));
      v134 = *(v20 + *MEMORY[0x277CD73D8]);
      v62 |= 1 << *(&v134 | v61++ & 0xF);
      if (v51 == v61)
      {
        goto LABEL_49;
      }
    }
  }

  v62 = 1;
LABEL_49:
  if (v50 <= 0xF && (v62 ^ (-1 << v51)) != 0xFFFFFFFF)
  {
    v63 = (v20 + *MEMORY[0x277CD7428]);
    v65 = v63[6];
    v64 = v63[7];
    v67 = v63[4];
    v66 = v63[5];
    v69 = v63[2];
    v68 = v63[3];
    v71 = *v63;
    v70 = v63[1];
    do
    {
      v126 = v71;
      v127 = v70;
      v128 = v69;
      v129 = v68;
      v130 = v67;
      v131 = v66;
      v132 = v65;
      v133 = v64;
      v72 = *(&v126 + (v51 & 0xF));
      if (v49 != v72 && v72 != 0)
      {
        return 0;
      }

      v49 *= *(v20 + *MEMORY[0x277CD73D0] + 4 * (v51++ & 0xF));
    }

    while (v51 != 16);
  }

  v74 = *(a3 + 208);
  if (v74)
  {
    v75 = *(v74 + v21);
    v76 = *(v74 + v23);
    v77 = 16;
    if (v76 < 0x10)
    {
      v77 = v76;
    }

    if (v76 >= 2)
    {
      v78 = (v74 + *MEMORY[0x277CD7428]);
      v80 = v78[6];
      v79 = v78[7];
      v82 = v78[4];
      v81 = v78[5];
      v84 = v78[2];
      v83 = v78[3];
      v86 = *v78;
      v85 = v78[1];
      v87 = 1;
      v88 = 1;
      while (1)
      {
        v118 = v86;
        v119 = v85;
        v120 = v84;
        v121 = v83;
        v122 = v82;
        v123 = v81;
        v124 = v80;
        v125 = v79;
        if (v75 != *(&v118 + (v87 & 0xF)))
        {
          return 0;
        }

        v75 *= *(v74 + *MEMORY[0x277CD73D0] + 4 * (v87 & 0xF));
        v117 = *(v74 + *MEMORY[0x277CD73D8]);
        v88 |= 1 << *(&v117 | v87++ & 0xF);
        if (v77 == v87)
        {
          goto LABEL_67;
        }
      }
    }

    v88 = 1;
LABEL_67:
    if (v76 <= 0xF && (v88 ^ (-1 << v77)) != 0xFFFFFFFF)
    {
      v89 = (v74 + *MEMORY[0x277CD7428]);
      v91 = v89[6];
      v90 = v89[7];
      v93 = v89[4];
      v92 = v89[5];
      v95 = v89[2];
      v94 = v89[3];
      v97 = *v89;
      v96 = v89[1];
      do
      {
        v109 = v97;
        v110 = v96;
        v111 = v95;
        v112 = v94;
        v113 = v93;
        v114 = v92;
        v115 = v91;
        v116 = v90;
        v98 = *(&v109 + (v77 & 0xF));
        if (v75 != v98 && v98 != 0)
        {
          return 0;
        }

        v75 *= *(v74 + *MEMORY[0x277CD73D0] + 4 * (v77++ & 0xF));
      }

      while (v77 != 16);
    }
  }

  v100 = *MEMORY[0x277CD73D8];
  v101 = *(v19 + v100);
  if (v101 > 3u || BYTE1(v101) > 3u || BYTE2(*(v19 + v100)) > 3u || BYTE3(*(v19 + v100)) > 3u || v101 != 50462976)
  {
    v16 = "Either source, gradient or destination is transposed. Falling back to generic implementation\n";
LABEL_96:
    v17 = v37;
    goto LABEL_18;
  }

  v106 = v19;
  if (IsNDArrayTransposed(*(v37 + 224), &v146, *(v20 + v100)))
  {
    v16 = "Either source, gradient or destination is transposed. Falling back to generic implementation\n";
    v37 = a2;
    goto LABEL_96;
  }

  v107 = *MEMORY[0x277CD73D0];
  v108 = *MEMORY[0x277CD7410];
  v37 = a2;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*(v106 + v107), *(v106 + v108)))) & 1) == 0)
  {
    v16 = "Slicing on source not supported. Falling back to generic implementation\n";
    goto LABEL_96;
  }

  if ((vminv_u16(vmovn_s32(vceqq_s32(*(v20 + v107), *(v20 + v108)))) & 1) == 0)
  {
    v16 = "Slicing on gradient or gradient not supported. Falling back to generic implementation\n";
    goto LABEL_96;
  }

  return 1;
}

uint64_t GetPlaceHolderIndexInSourceArray(MPSKernelDAG *this, unint64_t *a2, unint64_t *a3)
{
  v5 = *(this + 8);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    if (a2)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    if (a3)
    {
      return -1;
    }

    else
    {
      return v16;
    }
  }

  v9 = -1;
  v10 = -1;
  do
  {
    while (1)
    {
      v11 = *v6;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(this);
      v13 = *v6;
      if (v11 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v9 = *(v13 + 76);
      if (v13 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
      {
        goto LABEL_7;
      }

LABEL_4:
      if (++v6 == v7)
      {
        goto LABEL_8;
      }
    }

    if (v13 != *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = *v6++;
    v10 = *(v14 + 76);
  }

  while (v6 != v7);
LABEL_8:
  if (!a3)
  {
    goto LABEL_11;
  }

  if (v10 == -1)
  {
    return -1;
  }

  *a3 = v10;
LABEL_11:
  if (!a2)
  {
    return 0;
  }

  if (v9 != -1)
  {
    result = 0;
    *a2 = v9;
    return result;
  }

  return -1;
}

uint64_t MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolution(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v94 = *(a4 + 2);
  v91 = *a4;
  v92 = *(a4 + 3);
  v4 = a4[2];
  v5 = a4[3];
  v6 = a4[4];
  v99 = a4[5];
  v8 = a4[6];
  v7 = a4[7];
  v82 = a4[8];
  v83 = a4[9];
  v107 = a4[10];
  v100 = a4[11];
  v102 = a4[12];
  v9 = *(a4 + 120);
  v10 = a4[16];
  v87 = a4[17];
  v11 = [*(v10 + 232) inputTensorAtIndex:0];
  v12 = [*(v10 + 232) inputTensorAtIndex:1];
  v13 = [*(v10 + 232) inputTensorAtIndex:2];
  v105 = [*(v10 + 232) outputTensorAtIndex:0];
  v85 = v10;
  v84 = [*(v10 + 16) count];
  v15.i32[1] = HIDWORD(v100);
  v14.i32[1] = HIDWORD(v102);
  v16 = v100;
  v17 = v9;
  v97 = v7;
  v98 = v8;
  if (v9 == 1)
  {
    v18 = HIDWORD(v102) + v7 * HIDWORD(v100);
  }

  else
  {
    v18 = HIDWORD(v100);
  }

  if (v9 == 1)
  {
    v16 = v102 + v8 * v100;
  }

  v81 = v16;
  v77 = v13;
  if (v9 == 1)
  {
    v19 = v4;
  }

  else
  {
    v13 = v11;
    v19 = v5;
  }

  v103 = v19;
  if (v9 == 1)
  {
    v20 = v5;
  }

  else
  {
    v20 = v4;
  }

  v101 = v20;
  if (*v13 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v12 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v105 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v21 = *(v13 + 16);
  v23 = *v21;
  v22 = v21[1];
  if (v22 != v23)
  {
    if (((v22 - v23) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v24 = *(v12 + 16);
  v26 = *v24;
  v25 = v24[1];
  if (v25 != v26)
  {
    if (((v25 - v26) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v27 = *(v105 + 16);
  v29 = *v27;
  v28 = v27[1];
  v80 = v18;
  if (v28 != v29)
  {
    if (((v28 - v29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v14.i32[0] = GetAxisIndexForDataFormat(MPSNDArrayConvolution2DDataFormat)::axis[v94];
  v30 = vmovl_u8(v14).u64[0];
  v15.i32[0] = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution2DWeightsFormat)::axis[v92];
  v31 = (8 * v30);
  v32 = *v31;
  v33 = *(8 * WORD1(v30));
  v34 = (8 * WORD2(v30));
  HIDWORD(v78) = *v34;
  v35 = (8 * HIWORD(v30));
  LODWORD(v78) = *v35;
  v96 = *v31;
  v79 = *v34;
  v90 = *v35;
  v36 = vmovl_u8(v15).u64[0];
  v37 = *(8 * v36);
  v38 = *(8 * WORD2(v36));
  v39 = *(8 * HIWORD(v36));
  v40 = *(8 * WORD1(v36)) * v107;
  if (v17)
  {
    if (v40 != v103 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v37 != v101 && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
LABEL_274:
      MTLReportFailure();
    }
  }

  else
  {
    if (v40 != v101 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v37 != v103 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_274;
    }
  }

  if (v38 != v99 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v39 != v6 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v32 != v96 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v33 != v101 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v33 != v103 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v41 = *(v13 + 8);
  if (v41 > 285212703)
  {
    v42 = v6;
    if (v41 <= 536870915)
    {
      v43 = v17;
      v44 = v84;
      if (v41 > 301989895)
      {
        v45 = v85;
        if (v41 == 301989896)
        {
          v46 = 512;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v41 != 335544328)
          {
            goto LABEL_126;
          }

          v46 = 544;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        v45 = v85;
        if (v41 == 285212704)
        {
          v46 = 416;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v41 != 285212736)
          {
            goto LABEL_126;
          }

          v46 = 448;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }
      }
    }

    else
    {
      v43 = v17;
      v44 = v84;
      if (v41 <= 536870927)
      {
        v45 = v85;
        if (v41 == 536870916)
        {
          v46 = 0;
          v47 = *(v12 + 8);
          if (v47 > 285212703)
          {
            goto LABEL_127;
          }

          goto LABEL_96;
        }

        if (v41 != 536870920)
        {
          goto LABEL_126;
        }

        v46 = 32;
        v47 = *(v12 + 8);
        if (v47 <= 285212703)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v45 = v85;
        switch(v41)
        {
          case 536870928:
            v46 = 64;
            v47 = *(v12 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_96;
            }

            break;
          case 536870944:
            v46 = 96;
            v47 = *(v12 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_96;
            }

            break;
          case 536870976:
            v46 = 128;
            v47 = *(v12 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_96;
            }

            break;
          default:
            goto LABEL_126;
        }
      }
    }
  }

  else
  {
    v42 = v6;
    if (v41 <= 31)
    {
      v43 = v17;
      v44 = v84;
      if (v41 > 7)
      {
        v45 = v85;
        if (v41 == 8)
        {
          v46 = 192;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v41 != 16)
          {
            goto LABEL_126;
          }

          v46 = 224;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        v45 = v85;
        if (v41 == -1879048176)
        {
          v46 = 384;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v41 != 4)
          {
            goto LABEL_126;
          }

          v46 = 160;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }
      }
    }

    else
    {
      v43 = v17;
      v44 = v84;
      if (v41 <= 268435463)
      {
        v45 = v85;
        if (v41 == 32)
        {
          v46 = 256;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v41 != 64)
          {
            goto LABEL_126;
          }

          v46 = 288;
          v47 = *(v12 + 8);
          if (v47 <= 285212703)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        v45 = v85;
        switch(v41)
        {
          case 268435464:
            v46 = 480;
            v47 = *(v12 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_96;
            }

            break;
          case 268435472:
            v46 = 320;
            v47 = *(v12 + 8);
            if (v47 <= 285212703)
            {
              goto LABEL_96;
            }

            break;
          case 268435488:
            v46 = 352;
            v47 = *(v12 + 8);
            if (v47 > 285212703)
            {
              break;
            }

LABEL_96:
            v48 = v87;
            if (v47 <= 31)
            {
              if (v47 > 7)
              {
                if (v47 == 8)
                {
                  v46 |= 0x1800u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
                }

                if (v47 == 16)
                {
                  v46 |= 0x1C00u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
                }
              }

              else
              {
                if (v47 == -1879048176)
                {
                  v46 |= 0x3000u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
                }

                if (v47 == 4)
                {
                  v46 |= 0x1400u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
                }
              }
            }

            else if (v47 <= 268435463)
            {
              if (v47 == 32)
              {
                v46 |= 0x2000u;
                if (v43)
                {
                  goto LABEL_179;
                }

                goto LABEL_156;
              }

              if (v47 == 64)
              {
                v46 |= 0x2400u;
                if (v43)
                {
                  goto LABEL_179;
                }

                goto LABEL_156;
              }
            }

            else
            {
              switch(v47)
              {
                case 268435464:
                  v46 |= 0x3C00u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
                case 268435472:
                  v46 |= 0x2800u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
                case 268435488:
                  v46 |= 0x2C00u;
                  if (v43)
                  {
                    goto LABEL_179;
                  }

                  goto LABEL_156;
              }
            }

LABEL_178:
            v46 |= 0x4800u;
            if (v43)
            {
              goto LABEL_179;
            }

            goto LABEL_156;
          default:
LABEL_126:
            v46 = 576;
            v47 = *(v12 + 8);
            if (v47 > 285212703)
            {
              break;
            }

            goto LABEL_96;
        }
      }
    }
  }

LABEL_127:
  v48 = v87;
  if (v47 <= 536870915)
  {
    if (v47 > 301989895)
    {
      if (v47 == 301989896)
      {
        v46 |= 0x4000u;
        if (!v43)
        {
          goto LABEL_156;
        }
      }

      else
      {
        if (v47 != 335544328)
        {
          goto LABEL_178;
        }

        v46 |= 0x4400u;
        if (!v43)
        {
          goto LABEL_156;
        }
      }
    }

    else if (v47 == 285212704)
    {
      v46 |= 0x3400u;
      if (!v43)
      {
        goto LABEL_156;
      }
    }

    else
    {
      if (v47 != 285212736)
      {
        goto LABEL_178;
      }

      v46 |= 0x3800u;
      if (!v43)
      {
        goto LABEL_156;
      }
    }
  }

  else if (v47 <= 536870927)
  {
    if (v47 == 536870916)
    {
      if (v43)
      {
        goto LABEL_179;
      }

      goto LABEL_156;
    }

    if (v47 != 536870920)
    {
      goto LABEL_178;
    }

    v46 |= 0x400u;
    if (!v43)
    {
      goto LABEL_156;
    }
  }

  else
  {
    switch(v47)
    {
      case 536870928:
        v46 |= 0x800u;
        if (!v43)
        {
          goto LABEL_156;
        }

        break;
      case 536870944:
        v46 |= 0xC00u;
        if (!v43)
        {
          goto LABEL_156;
        }

        break;
      case 536870976:
        v46 |= 0x1000u;
        if (v43)
        {
          break;
        }

LABEL_156:
        v49 = *(v105 + 8);
        if (v49 > 285212703)
        {
          goto LABEL_224;
        }

LABEL_157:
        if (v49 <= 31)
        {
          if (v49 > 7)
          {
            if (v49 == 8)
            {
              v50 = 6;
              goto LABEL_246;
            }

            if (v49 == 16)
            {
              v50 = 7;
              goto LABEL_246;
            }
          }

          else
          {
            if (v49 == -1879048176)
            {
              v50 = 12;
              goto LABEL_246;
            }

            if (v49 == 4)
            {
              v50 = 5;
              goto LABEL_246;
            }
          }
        }

        else if (v49 <= 268435463)
        {
          if (v49 == 32)
          {
            v50 = 8;
            goto LABEL_246;
          }

          if (v49 == 64)
          {
            v50 = 9;
            goto LABEL_246;
          }
        }

        else
        {
          switch(v49)
          {
            case 268435464:
              v50 = 15;
              goto LABEL_246;
            case 268435472:
              v50 = 10;
              goto LABEL_246;
            case 268435488:
              v50 = 11;
              goto LABEL_246;
          }
        }

        goto LABEL_245;
      default:
        goto LABEL_178;
    }
  }

LABEL_179:
  v51 = *(v77 + 8);
  if (v51 > 285212703)
  {
    if (v51 <= 536870915)
    {
      if (v51 > 301989895)
      {
        if (v51 == 301989896)
        {
          v52 = 0x80000;
          goto LABEL_223;
        }

        if (v51 == 335544328)
        {
          v52 = 557056;
          goto LABEL_223;
        }
      }

      else
      {
        if (v51 == 285212704)
        {
          v52 = 425984;
          goto LABEL_223;
        }

        if (v51 == 285212736)
        {
          v52 = 458752;
          goto LABEL_223;
        }
      }
    }

    else if (v51 <= 536870927)
    {
      if (v51 == 536870916)
      {
        v52 = 0;
        goto LABEL_223;
      }

      if (v51 == 536870920)
      {
        v52 = 0x8000;
        goto LABEL_223;
      }
    }

    else
    {
      switch(v51)
      {
        case 536870928:
          v52 = 0x10000;
          goto LABEL_223;
        case 536870944:
          v52 = 98304;
          goto LABEL_223;
        case 536870976:
          v52 = 0x20000;
          goto LABEL_223;
      }
    }
  }

  else if (v51 <= 31)
  {
    if (v51 > 7)
    {
      if (v51 == 8)
      {
        v52 = 196608;
        goto LABEL_223;
      }

      if (v51 == 16)
      {
        v52 = 229376;
        goto LABEL_223;
      }
    }

    else
    {
      if (v51 == -1879048176)
      {
        v52 = 393216;
        goto LABEL_223;
      }

      if (v51 == 4)
      {
        v52 = 163840;
        goto LABEL_223;
      }
    }
  }

  else if (v51 <= 268435463)
  {
    if (v51 == 32)
    {
      v52 = 0x40000;
      goto LABEL_223;
    }

    if (v51 == 64)
    {
      v52 = 294912;
      goto LABEL_223;
    }
  }

  else
  {
    switch(v51)
    {
      case 268435464:
        v52 = 491520;
        goto LABEL_223;
      case 268435472:
        v52 = 327680;
        goto LABEL_223;
      case 268435488:
        v52 = 360448;
        goto LABEL_223;
    }
  }

  v52 = 589824;
LABEL_223:
  v46 |= v52;
  v49 = *(v105 + 8);
  if (v49 <= 285212703)
  {
    goto LABEL_157;
  }

LABEL_224:
  if (v49 <= 536870915)
  {
    if (v49 > 301989895)
    {
      if (v49 == 301989896)
      {
        v50 = 16;
        goto LABEL_246;
      }

      if (v49 == 335544328)
      {
        v50 = 17;
        goto LABEL_246;
      }
    }

    else
    {
      if (v49 == 285212704)
      {
        v50 = 13;
        goto LABEL_246;
      }

      if (v49 == 285212736)
      {
        v50 = 14;
        goto LABEL_246;
      }
    }
  }

  else if (v49 <= 536870927)
  {
    if (v49 == 536870916)
    {
      v50 = 0;
      goto LABEL_246;
    }

    if (v49 == 536870920)
    {
      v50 = 1;
      goto LABEL_246;
    }
  }

  else
  {
    switch(v49)
    {
      case 536870928:
        v50 = 2;
        goto LABEL_246;
      case 536870944:
        v50 = 3;
        goto LABEL_246;
      case 536870976:
        v50 = 4;
        goto LABEL_246;
    }
  }

LABEL_245:
  v50 = 18;
LABEL_246:
  v53 = v50 | v46;
  v54 = v97 == 1 && v98 == 1;
  v55 = 0x100000;
  if (!v54)
  {
    v55 = 0;
  }

  v129 = -1;
  v130 = -1;
  v131 = v55 | (v43 << 19) | ((v107 == 1) << 21) | (v94 << 22) | (v92 << 24) | 0x1B4E8;
  v132 = v53;
  v133 = 0u;
  v134 = 0u;
  v135 = v44 | (v43 << 8) | 0x10000;
  v136 = 0;
  if ((atomic_load_explicit(&qword_281475280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_281475280))
  {
    v73 = &CommonKernelsConvolution2DForward;
    if (v43)
    {
      v73 = &CommonKernelsConvolution2DGradientWithInput;
    }

    _MergedGlobals_11_0 = v73;
    __cxa_guard_release(&qword_281475280);
  }

  v56 = *_MergedGlobals_11_0;
  v75 = *(v48 + *MEMORY[0x277CD7360]);
  v76 = *(v48 + *MEMORY[0x277CD7368]);
  v74 = *(v45 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSGetUIntDivisorMagicNumber();
  v106 = v58;
  v59 = v103 / v107;
  v60 = (v103 / v107 + 31) >> 5;
  MPSGetUIntDivisorMagicNumber();
  v104 = v61;
  MPSGetUIntDivisorMagicNumber();
  v95 = v62;
  MPSGetUIntDivisorMagicNumber();
  v93 = v63;
  MPSGetUIntDivisorMagicNumber();
  v88 = v64;
  MPSGetUIntDivisorMagicNumber();
  v86 = v65;
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v74, v75, v76, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  v67 = v104;
  v66 = v106;
  HIDWORD(v66) = 0;
  HIDWORD(v67) = 0;
  v69 = v93;
  v68 = v95;
  HIDWORD(v68) = 0;
  HIDWORD(v69) = 0;
  v71 = v86;
  v70 = v88;
  HIDWORD(v70) = 0;
  HIDWORD(v71) = 0;
  v111[0] = v66;
  v111[1] = v67;
  v111[2] = v68;
  v111[3] = v69;
  v111[4] = v70;
  v111[5] = v71;
  memset(&v111[6], 0, 32);
  v112 = v101 / v107;
  v113 = v59;
  v114 = v42;
  v115 = v99;
  v116 = v107;
  v117 = v96;
  v118 = v78;
  v119 = __PAIR64__(v79, v90);
  LODWORD(v66) = v81 - (v82 * (v42 - 1) + 1) / 2;
  DWORD1(v66) = v80 - (v83 * (v99 - 1) + 1) / 2;
  v120 = 0;
  v121 = v66;
  v122 = __PAIR64__(v97, v98);
  v123 = __PAIR64__(v83, v82);
  v124 = ((v101 / v107 + 7) >> 3) * v99 * v42;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  MPSSetNDArraysOnComputeEncoder(a2, v45, 4, 0, 0);
  [a2 setThreadgroupMemoryLength:2304 atIndex:0];
  [a2 setBytes:v111 length:272 atIndex:29];
  v110[0] = ((v90 + 7) >> 3) * ((v79 + 3) >> 2);
  v110[1] = v60 * v107;
  v110[2] = v96;
  v108 = xmmword_239B0A150;
  v109 = 1;
  [a2 dispatchThreadgroups:v110 threadsPerThreadgroup:&v108];
  operator delete(0);
  operator delete(0);
  operator delete(0);
  return 0;
}

void sub_239AB722C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  operator delete(__p);
  operator delete(a22);
  if (a38)
  {
    operator delete(a38);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolutionGradientWithWeights(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v89 = [*(a5 + 16) count];
  v95 = *(a2 + 224);
  v93 = *(a2 + 228);
  v104 = *(a2 + 144);
  v101 = *(a2 + 152);
  v8 = *(a2 + 200);
  v9 = *(a2 + 208);
  v92 = *(a2 + 160);
  v10 = *(a2 + 168);
  v105 = *(a2 + 192);
  v11 = *(a2 + 240);
  v83 = *(a2 + 232);
  v12 = *(a2 + 184);
  v99 = v12;
  v100 = *(a2 + 176);
  v13 = [*(a5 + 232) inputTensorAtIndex:0];
  v86 = [*(a5 + 232) inputTensorAtIndex:1];
  v14 = [*(a5 + 232) inputTensorAtIndex:2];
  v102 = [*(a5 + 232) outputTensorAtIndex:0];
  if (*v13 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v14 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v97 = v14;
  if (*v102 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = *(v13 + 16);
  v19 = *v17;
  v18 = v17[1];
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v20 = *(v102 + 16);
  v22 = *v20;
  v21 = v20[1];
  if (v21 != v22)
  {
    if (((v21 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v23 = v97[2];
  v25 = *v23;
  v24 = v23[1];
  v81 = v9;
  v82 = v8;
  v84 = a3;
  v80 = v11;
  if (v24 != v25)
  {
    if (((v24 - v25) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v26 = a5;
  v15.i32[0] = GetAxisIndexForDataFormat(MPSNDArrayConvolution2DDataFormat)::axis[v95];
  v16.i32[0] = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution2DWeightsFormat)::axis[v93];
  v27 = vmovl_u8(v15).u64[0];
  v91 = *(8 * v27);
  v28 = (8 * WORD1(v27));
  v29 = *v28;
  HIDWORD(v79) = *(8 * WORD2(v27));
  v30 = vmovl_u8(v16).u64[0];
  LODWORD(v79) = *(8 * HIWORD(v27));
  v31 = *v28;
  v32 = *(8 * v30);
  v33 = *(8 * WORD1(v30));
  v34 = *(8 * WORD2(v30));
  v35 = *(8 * HIWORD(v30));
  if (v29 != v92 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v31 != v10 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v31 != v32 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v29 / v105 != v33 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v34 != v101 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v35 != v104 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v36 = *(v13 + 8);
  if (v36 > 285212703)
  {
    v37 = v84;
    v38 = v26;
    if (v36 <= 536870915)
    {
      v39 = v89;
      if (v36 > 301989895)
      {
        if (v36 == 301989896)
        {
          v41 = 512;
          v42 = *(v86 + 8);
          if (v42 <= 285212703)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v40 = v86;
          if (v36 != 335544328)
          {
            goto LABEL_100;
          }

          v41 = 544;
          v42 = *(v86 + 8);
          if (v42 <= 285212703)
          {
            goto LABEL_79;
          }
        }
      }

      else if (v36 == 285212704)
      {
        v41 = 416;
        v42 = *(v86 + 8);
        if (v42 <= 285212703)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v40 = v86;
        if (v36 != 285212736)
        {
          goto LABEL_100;
        }

        v41 = 448;
        v42 = *(v86 + 8);
        if (v42 <= 285212703)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      v39 = v89;
      if (v36 <= 536870927)
      {
        if (v36 == 536870916)
        {
          v41 = 0;
          v42 = *(v86 + 8);
          if (v42 > 285212703)
          {
            goto LABEL_101;
          }

          goto LABEL_79;
        }

        v40 = v86;
        if (v36 != 536870920)
        {
          goto LABEL_100;
        }

        v41 = 32;
        v42 = *(v86 + 8);
        if (v42 <= 285212703)
        {
          goto LABEL_79;
        }
      }

      else if (v36 == 536870928)
      {
        v41 = 64;
        v42 = *(v86 + 8);
        if (v42 <= 285212703)
        {
          goto LABEL_79;
        }
      }

      else if (v36 == 536870944)
      {
        v41 = 96;
        v42 = *(v86 + 8);
        if (v42 <= 285212703)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v40 = v86;
        if (v36 != 536870976)
        {
          goto LABEL_100;
        }

        v41 = 128;
        v42 = *(v86 + 8);
        if (v42 <= 285212703)
        {
          goto LABEL_79;
        }
      }
    }
  }

  else
  {
    v37 = v84;
    v38 = v26;
    if (v36 <= 31)
    {
      v39 = v89;
      if (v36 > 7)
      {
        v40 = v86;
        if (v36 == 8)
        {
          v41 = 192;
          v42 = *(v86 + 8);
          if (v42 <= 285212703)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v36 != 16)
          {
            goto LABEL_100;
          }

          v41 = 224;
          v42 = *(v86 + 8);
          if (v42 <= 285212703)
          {
            goto LABEL_79;
          }
        }
      }

      else if (v36 == -1879048176)
      {
        v41 = 384;
        v42 = *(v86 + 8);
        if (v42 <= 285212703)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v40 = v86;
        if (v36 != 4)
        {
          goto LABEL_100;
        }

        v41 = 160;
        v42 = *(v86 + 8);
        if (v42 <= 285212703)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      v39 = v89;
      if (v36 <= 268435463)
      {
        v40 = v86;
        if (v36 == 32)
        {
          v41 = 256;
          v42 = *(v86 + 8);
          if (v42 <= 285212703)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v36 != 64)
          {
            goto LABEL_100;
          }

          v41 = 288;
          v42 = *(v86 + 8);
          if (v42 <= 285212703)
          {
            goto LABEL_79;
          }
        }
      }

      else if (v36 == 268435464)
      {
        v41 = 480;
        v42 = *(v86 + 8);
        if (v42 <= 285212703)
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v36 != 268435472)
        {
          v40 = v86;
          if (v36 == 268435488)
          {
            v41 = 352;
            v42 = *(v86 + 8);
            if (v42 > 285212703)
            {
              goto LABEL_101;
            }

LABEL_79:
            if (v42 <= 31)
            {
              if (v42 > 7)
              {
                if (v42 == 8)
                {
                  v43 = 6144;
                  goto LABEL_123;
                }

                if (v42 == 16)
                {
                  v43 = 7168;
                  goto LABEL_123;
                }
              }

              else
              {
                if (v42 == -1879048176)
                {
                  v43 = 12288;
                  goto LABEL_123;
                }

                if (v42 == 4)
                {
                  v43 = 5120;
                  goto LABEL_123;
                }
              }
            }

            else if (v42 <= 268435463)
            {
              if (v42 == 32)
              {
                v43 = 0x2000;
                goto LABEL_123;
              }

              if (v42 == 64)
              {
                v43 = 9216;
                goto LABEL_123;
              }
            }

            else
            {
              switch(v42)
              {
                case 268435464:
                  v43 = 15360;
                  goto LABEL_123;
                case 268435472:
                  v43 = 10240;
                  goto LABEL_123;
                case 268435488:
                  v43 = 11264;
                  goto LABEL_123;
              }
            }

            goto LABEL_122;
          }

LABEL_100:
          v41 = 576;
          v42 = *(v40 + 8);
          if (v42 > 285212703)
          {
            goto LABEL_101;
          }

          goto LABEL_79;
        }

        v41 = 320;
        v42 = *(v86 + 8);
        if (v42 <= 285212703)
        {
          goto LABEL_79;
        }
      }
    }
  }

LABEL_101:
  if (v42 <= 536870915)
  {
    if (v42 > 301989895)
    {
      if (v42 == 301989896)
      {
        v43 = 0x4000;
        goto LABEL_123;
      }

      if (v42 == 335544328)
      {
        v43 = 17408;
        goto LABEL_123;
      }
    }

    else
    {
      if (v42 == 285212704)
      {
        v43 = 13312;
        goto LABEL_123;
      }

      if (v42 == 285212736)
      {
        v43 = 14336;
        goto LABEL_123;
      }
    }
  }

  else if (v42 <= 536870927)
  {
    if (v42 == 536870916)
    {
      v43 = 0;
      goto LABEL_123;
    }

    if (v42 == 536870920)
    {
      v43 = 1024;
      goto LABEL_123;
    }
  }

  else
  {
    switch(v42)
    {
      case 536870928:
        v43 = 2048;
        goto LABEL_123;
      case 536870944:
        v43 = 3072;
        goto LABEL_123;
      case 536870976:
        v43 = 4096;
        goto LABEL_123;
    }
  }

LABEL_122:
  v43 = 18432;
LABEL_123:
  v44 = v43 | v41;
  v45 = *(v97 + 2);
  if (v45 > 285212703)
  {
    if (v45 <= 536870915)
    {
      if (v45 > 301989895)
      {
        if (v45 == 301989896)
        {
          v46 = 0x80000;
          goto LABEL_167;
        }

        if (v45 == 335544328)
        {
          v46 = 557056;
          goto LABEL_167;
        }
      }

      else
      {
        if (v45 == 285212704)
        {
          v46 = 425984;
          goto LABEL_167;
        }

        if (v45 == 285212736)
        {
          v46 = 458752;
          goto LABEL_167;
        }
      }
    }

    else if (v45 <= 536870927)
    {
      if (v45 == 536870916)
      {
        v46 = 0;
        goto LABEL_167;
      }

      if (v45 == 536870920)
      {
        v46 = 0x8000;
        goto LABEL_167;
      }
    }

    else
    {
      switch(v45)
      {
        case 536870928:
          v46 = 0x10000;
          goto LABEL_167;
        case 536870944:
          v46 = 98304;
          goto LABEL_167;
        case 536870976:
          v46 = 0x20000;
          goto LABEL_167;
      }
    }
  }

  else if (v45 <= 31)
  {
    if (v45 > 7)
    {
      if (v45 == 8)
      {
        v46 = 196608;
        goto LABEL_167;
      }

      if (v45 == 16)
      {
        v46 = 229376;
        goto LABEL_167;
      }
    }

    else
    {
      if (v45 == -1879048176)
      {
        v46 = 393216;
        goto LABEL_167;
      }

      if (v45 == 4)
      {
        v46 = 163840;
        goto LABEL_167;
      }
    }
  }

  else if (v45 <= 268435463)
  {
    if (v45 == 32)
    {
      v46 = 0x40000;
      goto LABEL_167;
    }

    if (v45 == 64)
    {
      v46 = 294912;
      goto LABEL_167;
    }
  }

  else
  {
    switch(v45)
    {
      case 268435464:
        v46 = 491520;
        goto LABEL_167;
      case 268435472:
        v46 = 327680;
        goto LABEL_167;
      case 268435488:
        v46 = 360448;
        goto LABEL_167;
    }
  }

  v46 = 589824;
LABEL_167:
  v47 = v44 | v46;
  v48 = *(v102 + 8);
  if (v48 > 285212703)
  {
    if (v48 <= 536870915)
    {
      if (v48 > 301989895)
      {
        if (v48 == 301989896)
        {
          v49 = 16;
          goto LABEL_211;
        }

        if (v48 == 335544328)
        {
          v49 = 17;
          goto LABEL_211;
        }
      }

      else
      {
        if (v48 == 285212704)
        {
          v49 = 13;
          goto LABEL_211;
        }

        if (v48 == 285212736)
        {
          v49 = 14;
          goto LABEL_211;
        }
      }
    }

    else if (v48 <= 536870927)
    {
      if (v48 == 536870916)
      {
        v49 = 0;
        goto LABEL_211;
      }

      if (v48 == 536870920)
      {
        v49 = 1;
        goto LABEL_211;
      }
    }

    else
    {
      switch(v48)
      {
        case 536870928:
          v49 = 2;
          goto LABEL_211;
        case 536870944:
          v49 = 3;
          goto LABEL_211;
        case 536870976:
          v49 = 4;
          goto LABEL_211;
      }
    }
  }

  else if (v48 <= 31)
  {
    if (v48 > 7)
    {
      if (v48 == 8)
      {
        v49 = 6;
        goto LABEL_211;
      }

      if (v48 == 16)
      {
        v49 = 7;
        goto LABEL_211;
      }
    }

    else
    {
      if (v48 == -1879048176)
      {
        v49 = 12;
        goto LABEL_211;
      }

      if (v48 == 4)
      {
        v49 = 5;
        goto LABEL_211;
      }
    }
  }

  else if (v48 <= 268435463)
  {
    if (v48 == 32)
    {
      v49 = 8;
      goto LABEL_211;
    }

    if (v48 == 64)
    {
      v49 = 9;
      goto LABEL_211;
    }
  }

  else
  {
    switch(v48)
    {
      case 268435464:
        v49 = 15;
        goto LABEL_211;
      case 268435472:
        v49 = 10;
        goto LABEL_211;
      case 268435488:
        v49 = 11;
        goto LABEL_211;
    }
  }

  v49 = 18;
LABEL_211:
  v50 = v47 | v49;
  v51 = v99 == 1 && v100 == 1;
  v52 = 905256;
  if (v51)
  {
    v52 = 1953832;
  }

  v127 = -1;
  v128 = -1;
  v129 = v52 | ((v105 == 1) << 21) | (v95 << 22) | (v93 << 24);
  v130 = v50;
  v131 = 0u;
  v132 = 0u;
  v53 = MEMORY[0x277CD7370];
  v54 = *(a2 + *MEMORY[0x277CD7370]);
  v133 = v39 | 0x10100;
  v134 = 0;
  v77 = *(a2 + *MEMORY[0x277CD7360]);
  v78 = *(a2 + *MEMORY[0x277CD7368]);
  v76 = *(v38 + 232);
  MPSLibrary::CreateUberShaderKey();
  v55 = *(a2 + *v53);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSGetUIntDivisorMagicNumber();
  v103 = v57;
  MPSGetUIntDivisorMagicNumber();
  v98 = v58;
  MPSGetUIntDivisorMagicNumber();
  v96 = v59;
  MPSGetUIntDivisorMagicNumber();
  v94 = v60;
  MPSGetUIntDivisorMagicNumber();
  v90 = v61;
  MPSGetUIntDivisorMagicNumber();
  v88 = v62;
  MPSGetUIntDivisorMagicNumber();
  v87 = v63;
  MPSGetUIntDivisorMagicNumber();
  v85 = v64;
  [v37 setComputePipelineState:{PipelineStateForMPSKey, v76, v77, v78, 0, 0}];
  v65 = *(a2 + *v53);
  MPSLibrary::ReleaseComputeState();
  v66 = *(a2 + *v53);
  MPSLibrary::ReleaseMPSKey();
  v67 = v103;
  HIDWORD(v67) = 0;
  v69 = v96;
  v68 = v98;
  HIDWORD(v68) = 0;
  HIDWORD(v69) = 0;
  v70 = v94;
  HIDWORD(v70) = 0;
  v72 = v88;
  v71 = v90;
  HIDWORD(v71) = 0;
  HIDWORD(v72) = 0;
  v74 = v85;
  v73 = v87;
  HIDWORD(v73) = 0;
  HIDWORD(v74) = 0;
  v109[0] = v67;
  v109[1] = v68;
  v109[2] = v69;
  v109[3] = v70;
  v109[4] = v71;
  v109[5] = v72;
  v109[6] = v73;
  v109[7] = v74;
  v110 = v92 / v105;
  v111 = v10 / v105;
  v112 = v104;
  v113 = v101;
  v114 = v105;
  v115 = v91;
  v116 = v79;
  v117 = 0;
  v118 = v79;
  v119 = __PAIR64__(v80, v83);
  v120 = __PAIR64__(v99, v100);
  v121 = __PAIR64__(v81, v82);
  v122 = (((v79 * HIDWORD(v79) * v91) + 7) >> 3);
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  MPSSetNDArraysOnComputeEncoder(v37, v38, 4, 0, 0);
  [v37 setThreadgroupMemoryLength:2048 atIndex:0];
  [v37 setBytes:v109 length:272 atIndex:29];
  v108[0] = v101 * v104;
  v108[1] = (v92 / v105 + 31) >> 5;
  v108[2] = ((v10 / v105 + 31) >> 5) * v105;
  v106 = xmmword_239B0A150;
  v107 = 1;
  [v37 dispatchThreadgroups:v108 threadsPerThreadgroup:&v106];
  operator delete(0);
  operator delete(0);
  operator delete(0);
  return 0;
}

void sub_239AB84C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  operator delete(__p);
  operator delete(a22);
  if (a42)
  {
    operator delete(a42);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t EncodeNDArrayConvolution2D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v7 = *(a1 + 224);
  v8 = *(a1 + 228);
  v9 = *(a1 + 160);
  v10 = *(a1 + 168);
  v11 = *(a1 + 144);
  v21 = *(a1 + *MEMORY[0x277CD7370]);
  v12 = *(a1 + 152);
  v22 = v7;
  v23 = v8;
  v13 = *(a1 + 176);
  v24 = v9;
  v25 = v10;
  v14 = *(a1 + 184);
  v26 = v11;
  v27 = v12;
  v15 = *(a1 + 200);
  v28 = v13;
  v29 = v14;
  v16 = *(a1 + 208);
  v30 = v15;
  v31 = v16;
  v32 = *(a1 + 192);
  v33 = vmovn_s64(*(a1 + 232));
  v17 = *(a1 + 264);
  v18 = *(a1 + 272);
  v34 = 0;
  v35 = v17;
  v36 = v18;
  v37 = 0;
  v38 = a4;
  v39 = a1;
  v20[23] = 20;
  strcpy(v20, "MPSNDArrayConv2DTest");
  MPSNDArrayConvolutionLogCommandLine(a1, &v21, a4, v20, 0);
  return (*(*v6 + 16))(v6, a2, a3, &v21);
}

void EncodeNDArrayConvolution2DGradientWithIntput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v12 = *(a1 + *MEMORY[0x277CD7370]);
  v5 = *(a1 + 228);
  v13 = *(a1 + 224);
  v14 = v5;
  v6 = *(a1 + 168);
  v15 = *(a1 + 160);
  v16 = v6;
  v7 = *(a1 + 152);
  v17 = *(a1 + 144);
  v18 = v7;
  v8 = *(a1 + 184);
  v19 = *(a1 + 176);
  v20 = v8;
  v9 = *(a1 + 208);
  v10 = *(a1 + 192);
  v21 = *(a1 + 200);
  v22 = v9;
  v23 = v10;
  v11 = vmovn_s64(*(a1 + 248));
  v24 = vmovn_s64(*(a1 + 232));
  v25 = v11;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  v29 = a4;
  v30 = a1;
  operator new();
}

void EncodeNDArrayConvolution2DGradientWithWeights(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v5 = *(a1 + 224);
  v6 = *(a1 + 228);
  v7 = *(a1 + 160);
  v8 = *(a1 + 168);
  v9 = *(a1 + 144);
  v15 = *(a1 + *MEMORY[0x277CD7370]);
  v10 = *(a1 + 152);
  v16 = v5;
  v17 = v6;
  v11 = *(a1 + 176);
  v18 = v7;
  v19 = v8;
  v12 = *(a1 + 184);
  v20 = v9;
  v21 = v10;
  v13 = *(a1 + 200);
  v22 = v11;
  v23 = v12;
  v14 = *(a1 + 208);
  v24 = v13;
  v25 = v14;
  v26 = *(a1 + 192);
  v27 = vmovn_s64(*(a1 + 232));
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 1;
  v32 = a4;
  v33 = a1;
  operator new();
}

unint64_t *MPSNDArrayConvolutionLogCommandLine(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(result + *MEMORY[0x277CD7380]) >= 4)
  {
    v7 = result;
    v8 = *(a2 + 128);
    v9 = *(v8 + 232);
    if (*(a2 + 120) == 1)
    {
      if (a5)
      {
        v10 = [v9 inputTensorAtIndex:{0, a3}];
      }

      else
      {
        v10 = [v9 outputTensorAtIndex:{0, a3}];
      }

      v11 = v10;
      v12 = [*(v8 + 232) inputTensorAtIndex:2];
      v13 = *(a2 + 8);
      if (v13 == 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = [v9 inputTensorAtIndex:{0, a3}];
      v12 = [*(v8 + 232) outputTensorAtIndex:0];
      v13 = *(a2 + 8);
      if (v13 == 1)
      {
LABEL_11:
        v18 = **(v11 + 16);
        v14 = (v18 + 8);
        v15 = (v18 + 16);
        v19 = **(v12 + 16);
        v16 = (v19 + 8);
        v17 = (v19 + 16);
        goto LABEL_12;
      }
    }

    if (v13)
    {
LABEL_13:
      v21 = *(a2 + 56);
      v22 = *(a2 + 72) * (*(a2 + 40) - 1);
      if (!a5)
      {
        v23 = *(a2 + 120);
        v24 = ((*(a2 + 64) * (*(a2 + 32) - 1)) & 1) - (*(a2 + 48) * *(a2 + 88) + *(a2 + 96));
      }

      *(&v167.__r_.__value_.__s + 23) = 0;
      v167.__r_.__value_.__s.__data_[0] = 0;
      *(&v163.__r_.__value_.__s + 23) = 12;
      strcpy(&v163, "-dataFormat ");
      if (v13)
      {
        v25 = "NHWC";
      }

      else
      {
        v25 = "NCHW";
      }

      v26 = std::string::append(&v163, v25);
      v27 = *&v26->__r_.__value_.__l.__data_;
      v164.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v164.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v28 = std::string::append(&v164, " ");
      v29 = *&v28->__r_.__value_.__l.__data_;
      v166 = v28->__r_.__value_.__r.__words[2];
      v165 = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      if (v166 >= 0)
      {
        v30 = &v165;
      }

      else
      {
        v30 = v165;
      }

      if (v166 >= 0)
      {
        v31 = HIBYTE(v166);
      }

      else
      {
        v31 = *(&v165 + 1);
      }

      std::string::append(&v167, v30, v31);
      if (SHIBYTE(v166) < 0)
      {
        operator delete(v165);
        if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_26:
          if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_27;
          }

LABEL_66:
          operator delete(v163.__r_.__value_.__l.__data_);
LABEL_27:
          *(&v163.__r_.__value_.__s + 23) = 15;
          strcpy(&v163, "-weightsFormat ");
          if (*(a2 + 12) == 1)
          {
            v32 = "OIHW";
          }

          else
          {
            v32 = "HWIO";
          }

          v33 = std::string::append(&v163, v32);
          v34 = *&v33->__r_.__value_.__l.__data_;
          v164.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&v164.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          v35 = std::string::append(&v164, " ");
          v36 = *&v35->__r_.__value_.__l.__data_;
          v166 = v35->__r_.__value_.__r.__words[2];
          v165 = v36;
          v35->__r_.__value_.__l.__size_ = 0;
          v35->__r_.__value_.__r.__words[2] = 0;
          v35->__r_.__value_.__r.__words[0] = 0;
          if (v166 >= 0)
          {
            v37 = &v165;
          }

          else
          {
            v37 = v165;
          }

          if (v166 >= 0)
          {
            v38 = HIBYTE(v166);
          }

          else
          {
            v38 = *(&v165 + 1);
          }

          std::string::append(&v167, v37, v38);
          if (SHIBYTE(v166) < 0)
          {
            operator delete(v165);
            if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_38:
              if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_39;
              }

              goto LABEL_69;
            }
          }

          else if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_38;
          }

          operator delete(v164.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_39:
            if (*(a2 + 12) == 1)
            {
LABEL_40:
              *(&v159.__r_.__value_.__s + 23) = 15;
              strcpy(&v159, "-kernelSizes \\[");
              std::to_string(&v158, *(a2 + 40));
              if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v39 = &v158;
              }

              else
              {
                v39 = v158.__r_.__value_.__r.__words[0];
              }

              if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v158.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v158.__r_.__value_.__l.__size_;
              }

              v41 = std::string::append(&v159, v39, size);
              v42 = *&v41->__r_.__value_.__l.__data_;
              v160.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
              *&v160.__r_.__value_.__l.__data_ = v42;
              v41->__r_.__value_.__l.__size_ = 0;
              v41->__r_.__value_.__r.__words[2] = 0;
              v41->__r_.__value_.__r.__words[0] = 0;
              v43 = std::string::append(&v160, ",");
              v44 = *&v43->__r_.__value_.__l.__data_;
              v161.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
              *&v161.__r_.__value_.__l.__data_ = v44;
              v43->__r_.__value_.__l.__size_ = 0;
              v43->__r_.__value_.__r.__words[2] = 0;
              v43->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v157, *(a2 + 32));
              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v45 = &v157;
              }

              else
              {
                v45 = v157.__r_.__value_.__r.__words[0];
              }

              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v46 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v46 = v157.__r_.__value_.__l.__size_;
              }

              v47 = std::string::append(&v161, v45, v46);
              v48 = *&v47->__r_.__value_.__l.__data_;
              v162.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
              *&v162.__r_.__value_.__l.__data_ = v48;
              v47->__r_.__value_.__l.__size_ = 0;
              v47->__r_.__value_.__r.__words[2] = 0;
              v47->__r_.__value_.__r.__words[0] = 0;
              v49 = std::string::append(&v162, ",");
              v50 = *&v49->__r_.__value_.__l.__data_;
              v163.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
              *&v163.__r_.__value_.__l.__data_ = v50;
              v49->__r_.__value_.__l.__size_ = 0;
              v49->__r_.__value_.__r.__words[2] = 0;
              v49->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v156, *(a2 + 16));
              if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v51 = &v156;
              }

              else
              {
                v51 = v156.__r_.__value_.__r.__words[0];
              }

              if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v52 = HIBYTE(v156.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v52 = v156.__r_.__value_.__l.__size_;
              }

              v53 = std::string::append(&v163, v51, v52);
              v54 = *&v53->__r_.__value_.__l.__data_;
              v164.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
              *&v164.__r_.__value_.__l.__data_ = v54;
              v53->__r_.__value_.__l.__size_ = 0;
              v53->__r_.__value_.__r.__words[2] = 0;
              v53->__r_.__value_.__r.__words[0] = 0;
              v55 = std::string::append(&v164, "\\] ");
              v56 = *&v55->__r_.__value_.__l.__data_;
              v166 = v55->__r_.__value_.__r.__words[2];
              v165 = v56;
              v55->__r_.__value_.__l.__size_ = 0;
              v55->__r_.__value_.__r.__words[2] = 0;
              v55->__r_.__value_.__r.__words[0] = 0;
              if (v166 >= 0)
              {
                v57 = &v165;
              }

              else
              {
                v57 = v165;
              }

              if (v166 >= 0)
              {
                v58 = HIBYTE(v166);
              }

              else
              {
                v58 = *(&v165 + 1);
              }

              goto LABEL_94;
            }

LABEL_70:
            *(&v159.__r_.__value_.__s + 23) = 15;
            strcpy(&v159, "-kernelSizes \\[");
            std::to_string(&v158, *(a2 + 16));
            if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v59 = &v158;
            }

            else
            {
              v59 = v158.__r_.__value_.__r.__words[0];
            }

            if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v60 = HIBYTE(v158.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v60 = v158.__r_.__value_.__l.__size_;
            }

            v61 = std::string::append(&v159, v59, v60);
            v62 = *&v61->__r_.__value_.__l.__data_;
            v160.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
            *&v160.__r_.__value_.__l.__data_ = v62;
            v61->__r_.__value_.__l.__size_ = 0;
            v61->__r_.__value_.__r.__words[2] = 0;
            v61->__r_.__value_.__r.__words[0] = 0;
            v63 = std::string::append(&v160, ",");
            v64 = *&v63->__r_.__value_.__l.__data_;
            v161.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
            *&v161.__r_.__value_.__l.__data_ = v64;
            v63->__r_.__value_.__l.__size_ = 0;
            v63->__r_.__value_.__r.__words[2] = 0;
            v63->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v157, *(a2 + 40));
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v65 = &v157;
            }

            else
            {
              v65 = v157.__r_.__value_.__r.__words[0];
            }

            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v66 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v66 = v157.__r_.__value_.__l.__size_;
            }

            v67 = std::string::append(&v161, v65, v66);
            v68 = *&v67->__r_.__value_.__l.__data_;
            v162.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
            *&v162.__r_.__value_.__l.__data_ = v68;
            v67->__r_.__value_.__l.__size_ = 0;
            v67->__r_.__value_.__r.__words[2] = 0;
            v67->__r_.__value_.__r.__words[0] = 0;
            v69 = std::string::append(&v162, ",");
            v70 = *&v69->__r_.__value_.__l.__data_;
            v163.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
            *&v163.__r_.__value_.__l.__data_ = v70;
            v69->__r_.__value_.__l.__size_ = 0;
            v69->__r_.__value_.__r.__words[2] = 0;
            v69->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v156, *(a2 + 32));
            if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v71 = &v156;
            }

            else
            {
              v71 = v156.__r_.__value_.__r.__words[0];
            }

            if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v72 = HIBYTE(v156.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v72 = v156.__r_.__value_.__l.__size_;
            }

            v73 = std::string::append(&v163, v71, v72);
            v74 = *&v73->__r_.__value_.__l.__data_;
            v164.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
            *&v164.__r_.__value_.__l.__data_ = v74;
            v73->__r_.__value_.__l.__size_ = 0;
            v73->__r_.__value_.__r.__words[2] = 0;
            v73->__r_.__value_.__r.__words[0] = 0;
            v75 = std::string::append(&v164, "\\] ");
            v76 = *&v75->__r_.__value_.__l.__data_;
            v166 = v75->__r_.__value_.__r.__words[2];
            v165 = v76;
            v75->__r_.__value_.__l.__size_ = 0;
            v75->__r_.__value_.__r.__words[2] = 0;
            v75->__r_.__value_.__r.__words[0] = 0;
            if (v166 >= 0)
            {
              v57 = &v165;
            }

            else
            {
              v57 = v165;
            }

            if (v166 >= 0)
            {
              v58 = HIBYTE(v166);
            }

            else
            {
              v58 = *(&v165 + 1);
            }

LABEL_94:
            std::string::append(&v167, v57, v58);
            if (SHIBYTE(v166) < 0)
            {
              operator delete(v165);
              if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_96:
                if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_97;
                }

                goto LABEL_131;
              }
            }

            else if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_96;
            }

            operator delete(v164.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_97:
              if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_98;
              }

              goto LABEL_132;
            }

LABEL_131:
            operator delete(v156.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_98:
              if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_99;
              }

              goto LABEL_133;
            }

LABEL_132:
            operator delete(v163.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_99:
              if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_100;
              }

              goto LABEL_134;
            }

LABEL_133:
            operator delete(v162.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_100:
              if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_101;
              }

              goto LABEL_135;
            }

LABEL_134:
            operator delete(v157.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_101:
              if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_102;
              }

              goto LABEL_136;
            }

LABEL_135:
            operator delete(v161.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_102:
              if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_103;
              }

              goto LABEL_137;
            }

LABEL_136:
            operator delete(v160.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_103:
              if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_104;
              }

              goto LABEL_138;
            }

LABEL_137:
            operator delete(v158.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_104:
              if (*(a2 + 8))
              {
LABEL_105:
                *(&v159.__r_.__value_.__s + 23) = 13;
                strcpy(&v159, "-strides \\[1,");
                std::to_string(&v158, v7[23]);
                if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v77 = &v158;
                }

                else
                {
                  v77 = v158.__r_.__value_.__r.__words[0];
                }

                if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v78 = HIBYTE(v158.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v78 = v158.__r_.__value_.__l.__size_;
                }

                v79 = std::string::append(&v159, v77, v78);
                v80 = *&v79->__r_.__value_.__l.__data_;
                v160.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
                *&v160.__r_.__value_.__l.__data_ = v80;
                v79->__r_.__value_.__l.__size_ = 0;
                v79->__r_.__value_.__r.__words[2] = 0;
                v79->__r_.__value_.__r.__words[0] = 0;
                v81 = std::string::append(&v160, ",");
                v82 = *&v81->__r_.__value_.__l.__data_;
                v161.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
                *&v161.__r_.__value_.__l.__data_ = v82;
                v81->__r_.__value_.__l.__size_ = 0;
                v81->__r_.__value_.__r.__words[2] = 0;
                v81->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v157, v7[22]);
                if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v83 = &v157;
                }

                else
                {
                  v83 = v157.__r_.__value_.__r.__words[0];
                }

                if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v84 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v84 = v157.__r_.__value_.__l.__size_;
                }

                v85 = std::string::append(&v161, v83, v84);
                v86 = *&v85->__r_.__value_.__l.__data_;
                v162.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
                *&v162.__r_.__value_.__l.__data_ = v86;
                v85->__r_.__value_.__l.__size_ = 0;
                v85->__r_.__value_.__r.__words[2] = 0;
                v85->__r_.__value_.__r.__words[0] = 0;
                v87 = std::string::append(&v162, ",");
                v88 = *&v87->__r_.__value_.__l.__data_;
                v163.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
                *&v163.__r_.__value_.__l.__data_ = v88;
                v87->__r_.__value_.__l.__size_ = 0;
                v87->__r_.__value_.__r.__words[2] = 0;
                v87->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v156, 1);
                if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v89 = &v156;
                }

                else
                {
                  v89 = v156.__r_.__value_.__r.__words[0];
                }

                if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v90 = HIBYTE(v156.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v90 = v156.__r_.__value_.__l.__size_;
                }

                v91 = std::string::append(&v163, v89, v90);
                v92 = *&v91->__r_.__value_.__l.__data_;
                v164.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
                *&v164.__r_.__value_.__l.__data_ = v92;
                v91->__r_.__value_.__l.__size_ = 0;
                v91->__r_.__value_.__r.__words[2] = 0;
                v91->__r_.__value_.__r.__words[0] = 0;
                v93 = std::string::append(&v164, "\\] ");
                v94 = *&v93->__r_.__value_.__l.__data_;
                v166 = v93->__r_.__value_.__r.__words[2];
                v165 = v94;
                v93->__r_.__value_.__l.__size_ = 0;
                v93->__r_.__value_.__r.__words[2] = 0;
                v93->__r_.__value_.__r.__words[0] = 0;
                if (v166 >= 0)
                {
                  v95 = &v165;
                }

                else
                {
                  v95 = v165;
                }

                if (v166 >= 0)
                {
                  v96 = HIBYTE(v166);
                }

                else
                {
                  v96 = *(&v165 + 1);
                }

                goto LABEL_163;
              }

LABEL_139:
              *(&v159.__r_.__value_.__s + 23) = 13;
              strcpy(&v159, "-strides \\[1,");
              std::to_string(&v158, 1);
              if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v97 = &v158;
              }

              else
              {
                v97 = v158.__r_.__value_.__r.__words[0];
              }

              if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v98 = HIBYTE(v158.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v98 = v158.__r_.__value_.__l.__size_;
              }

              v99 = std::string::append(&v159, v97, v98);
              v100 = *&v99->__r_.__value_.__l.__data_;
              v160.__r_.__value_.__r.__words[2] = v99->__r_.__value_.__r.__words[2];
              *&v160.__r_.__value_.__l.__data_ = v100;
              v99->__r_.__value_.__l.__size_ = 0;
              v99->__r_.__value_.__r.__words[2] = 0;
              v99->__r_.__value_.__r.__words[0] = 0;
              v101 = std::string::append(&v160, ",");
              v102 = *&v101->__r_.__value_.__l.__data_;
              v161.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
              *&v161.__r_.__value_.__l.__data_ = v102;
              v101->__r_.__value_.__l.__size_ = 0;
              v101->__r_.__value_.__r.__words[2] = 0;
              v101->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v157, v7[23]);
              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v103 = &v157;
              }

              else
              {
                v103 = v157.__r_.__value_.__r.__words[0];
              }

              if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v104 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v104 = v157.__r_.__value_.__l.__size_;
              }

              v105 = std::string::append(&v161, v103, v104);
              v106 = *&v105->__r_.__value_.__l.__data_;
              v162.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
              *&v162.__r_.__value_.__l.__data_ = v106;
              v105->__r_.__value_.__l.__size_ = 0;
              v105->__r_.__value_.__r.__words[2] = 0;
              v105->__r_.__value_.__r.__words[0] = 0;
              v107 = std::string::append(&v162, ",");
              v108 = *&v107->__r_.__value_.__l.__data_;
              v163.__r_.__value_.__r.__words[2] = v107->__r_.__value_.__r.__words[2];
              *&v163.__r_.__value_.__l.__data_ = v108;
              v107->__r_.__value_.__l.__size_ = 0;
              v107->__r_.__value_.__r.__words[2] = 0;
              v107->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v156, v7[22]);
              if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v109 = &v156;
              }

              else
              {
                v109 = v156.__r_.__value_.__r.__words[0];
              }

              if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v110 = HIBYTE(v156.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v110 = v156.__r_.__value_.__l.__size_;
              }

              v111 = std::string::append(&v163, v109, v110);
              v112 = *&v111->__r_.__value_.__l.__data_;
              v164.__r_.__value_.__r.__words[2] = v111->__r_.__value_.__r.__words[2];
              *&v164.__r_.__value_.__l.__data_ = v112;
              v111->__r_.__value_.__l.__size_ = 0;
              v111->__r_.__value_.__r.__words[2] = 0;
              v111->__r_.__value_.__r.__words[0] = 0;
              v113 = std::string::append(&v164, "\\] ");
              v114 = *&v113->__r_.__value_.__l.__data_;
              v166 = v113->__r_.__value_.__r.__words[2];
              v165 = v114;
              v113->__r_.__value_.__l.__size_ = 0;
              v113->__r_.__value_.__r.__words[2] = 0;
              v113->__r_.__value_.__r.__words[0] = 0;
              if (v166 >= 0)
              {
                v95 = &v165;
              }

              else
              {
                v95 = v165;
              }

              if (v166 >= 0)
              {
                v96 = HIBYTE(v166);
              }

              else
              {
                v96 = *(&v165 + 1);
              }

LABEL_163:
              std::string::append(&v167, v95, v96);
              if (SHIBYTE(v166) < 0)
              {
                operator delete(v165);
                if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_165:
                  if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_200;
                }
              }

              else if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_165;
              }

              operator delete(v164.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_166:
                if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_167;
                }

                goto LABEL_201;
              }

LABEL_200:
              operator delete(v156.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_167:
                if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_168;
                }

                goto LABEL_202;
              }

LABEL_201:
              operator delete(v163.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_168:
                if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_169;
                }

                goto LABEL_203;
              }

LABEL_202:
              operator delete(v162.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_169:
                if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_170;
                }

                goto LABEL_204;
              }

LABEL_203:
              operator delete(v157.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_170:
                if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_171;
                }

                goto LABEL_205;
              }

LABEL_204:
              operator delete(v161.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_171:
                if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_172;
                }

                goto LABEL_206;
              }

LABEL_205:
              operator delete(v160.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_172:
                if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_173;
                }

                goto LABEL_207;
              }

LABEL_206:
              operator delete(v158.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_173:
                if (*(a2 + 8))
                {
LABEL_174:
                  *(&v159.__r_.__value_.__s + 23) = 19;
                  strcpy(&v159, "-dilationRates \\[1,");
                  std::to_string(&v158, v7[26]);
                  if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v115 = &v158;
                  }

                  else
                  {
                    v115 = v158.__r_.__value_.__r.__words[0];
                  }

                  if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v116 = HIBYTE(v158.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v116 = v158.__r_.__value_.__l.__size_;
                  }

                  v117 = std::string::append(&v159, v115, v116);
                  v118 = *&v117->__r_.__value_.__l.__data_;
                  v160.__r_.__value_.__r.__words[2] = v117->__r_.__value_.__r.__words[2];
                  *&v160.__r_.__value_.__l.__data_ = v118;
                  v117->__r_.__value_.__l.__size_ = 0;
                  v117->__r_.__value_.__r.__words[2] = 0;
                  v117->__r_.__value_.__r.__words[0] = 0;
                  v119 = std::string::append(&v160, ",");
                  v120 = *&v119->__r_.__value_.__l.__data_;
                  v161.__r_.__value_.__r.__words[2] = v119->__r_.__value_.__r.__words[2];
                  *&v161.__r_.__value_.__l.__data_ = v120;
                  v119->__r_.__value_.__l.__size_ = 0;
                  v119->__r_.__value_.__r.__words[2] = 0;
                  v119->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v157, v7[25]);
                  if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v121 = &v157;
                  }

                  else
                  {
                    v121 = v157.__r_.__value_.__r.__words[0];
                  }

                  if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v122 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v122 = v157.__r_.__value_.__l.__size_;
                  }

                  v123 = std::string::append(&v161, v121, v122);
                  v124 = *&v123->__r_.__value_.__l.__data_;
                  v162.__r_.__value_.__r.__words[2] = v123->__r_.__value_.__r.__words[2];
                  *&v162.__r_.__value_.__l.__data_ = v124;
                  v123->__r_.__value_.__l.__size_ = 0;
                  v123->__r_.__value_.__r.__words[2] = 0;
                  v123->__r_.__value_.__r.__words[0] = 0;
                  v125 = std::string::append(&v162, ",");
                  v126 = *&v125->__r_.__value_.__l.__data_;
                  v163.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
                  *&v163.__r_.__value_.__l.__data_ = v126;
                  v125->__r_.__value_.__l.__size_ = 0;
                  v125->__r_.__value_.__r.__words[2] = 0;
                  v125->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v156, 1);
                  if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v127 = &v156;
                  }

                  else
                  {
                    v127 = v156.__r_.__value_.__r.__words[0];
                  }

                  if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v128 = HIBYTE(v156.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v128 = v156.__r_.__value_.__l.__size_;
                  }

                  v129 = std::string::append(&v163, v127, v128);
                  v130 = *&v129->__r_.__value_.__l.__data_;
                  v164.__r_.__value_.__r.__words[2] = v129->__r_.__value_.__r.__words[2];
                  *&v164.__r_.__value_.__l.__data_ = v130;
                  v129->__r_.__value_.__l.__size_ = 0;
                  v129->__r_.__value_.__r.__words[2] = 0;
                  v129->__r_.__value_.__r.__words[0] = 0;
                  v131 = std::string::append(&v164, "\\] ");
                  v132 = *&v131->__r_.__value_.__l.__data_;
                  v166 = v131->__r_.__value_.__r.__words[2];
                  v165 = v132;
                  v131->__r_.__value_.__l.__size_ = 0;
                  v131->__r_.__value_.__r.__words[2] = 0;
                  v131->__r_.__value_.__r.__words[0] = 0;
                  if (v166 >= 0)
                  {
                    v133 = &v165;
                  }

                  else
                  {
                    v133 = v165;
                  }

                  if (v166 >= 0)
                  {
                    v134 = HIBYTE(v166);
                  }

                  else
                  {
                    v134 = *(&v165 + 1);
                  }

                  goto LABEL_232;
                }

LABEL_208:
                *(&v159.__r_.__value_.__s + 23) = 19;
                strcpy(&v159, "-dilationRates \\[1,");
                std::to_string(&v158, 1);
                if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v135 = &v158;
                }

                else
                {
                  v135 = v158.__r_.__value_.__r.__words[0];
                }

                if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v136 = HIBYTE(v158.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v136 = v158.__r_.__value_.__l.__size_;
                }

                v137 = std::string::append(&v159, v135, v136);
                v138 = *&v137->__r_.__value_.__l.__data_;
                v160.__r_.__value_.__r.__words[2] = v137->__r_.__value_.__r.__words[2];
                *&v160.__r_.__value_.__l.__data_ = v138;
                v137->__r_.__value_.__l.__size_ = 0;
                v137->__r_.__value_.__r.__words[2] = 0;
                v137->__r_.__value_.__r.__words[0] = 0;
                v139 = std::string::append(&v160, ",");
                v140 = *&v139->__r_.__value_.__l.__data_;
                v161.__r_.__value_.__r.__words[2] = v139->__r_.__value_.__r.__words[2];
                *&v161.__r_.__value_.__l.__data_ = v140;
                v139->__r_.__value_.__l.__size_ = 0;
                v139->__r_.__value_.__r.__words[2] = 0;
                v139->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v157, v7[26]);
                if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v141 = &v157;
                }

                else
                {
                  v141 = v157.__r_.__value_.__r.__words[0];
                }

                if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v142 = HIBYTE(v157.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v142 = v157.__r_.__value_.__l.__size_;
                }

                v143 = std::string::append(&v161, v141, v142);
                v144 = *&v143->__r_.__value_.__l.__data_;
                v162.__r_.__value_.__r.__words[2] = v143->__r_.__value_.__r.__words[2];
                *&v162.__r_.__value_.__l.__data_ = v144;
                v143->__r_.__value_.__l.__size_ = 0;
                v143->__r_.__value_.__r.__words[2] = 0;
                v143->__r_.__value_.__r.__words[0] = 0;
                v145 = std::string::append(&v162, ",");
                v146 = *&v145->__r_.__value_.__l.__data_;
                v163.__r_.__value_.__r.__words[2] = v145->__r_.__value_.__r.__words[2];
                *&v163.__r_.__value_.__l.__data_ = v146;
                v145->__r_.__value_.__l.__size_ = 0;
                v145->__r_.__value_.__r.__words[2] = 0;
                v145->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v156, v7[25]);
                if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v147 = &v156;
                }

                else
                {
                  v147 = v156.__r_.__value_.__r.__words[0];
                }

                if ((v156.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v148 = HIBYTE(v156.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v148 = v156.__r_.__value_.__l.__size_;
                }

                v149 = std::string::append(&v163, v147, v148);
                v150 = *&v149->__r_.__value_.__l.__data_;
                v164.__r_.__value_.__r.__words[2] = v149->__r_.__value_.__r.__words[2];
                *&v164.__r_.__value_.__l.__data_ = v150;
                v149->__r_.__value_.__l.__size_ = 0;
                v149->__r_.__value_.__r.__words[2] = 0;
                v149->__r_.__value_.__r.__words[0] = 0;
                v151 = std::string::append(&v164, "\\] ");
                v152 = *&v151->__r_.__value_.__l.__data_;
                v166 = v151->__r_.__value_.__r.__words[2];
                v165 = v152;
                v151->__r_.__value_.__l.__size_ = 0;
                v151->__r_.__value_.__r.__words[2] = 0;
                v151->__r_.__value_.__r.__words[0] = 0;
                if (v166 >= 0)
                {
                  v133 = &v165;
                }

                else
                {
                  v133 = v165;
                }

                if (v166 >= 0)
                {
                  v134 = HIBYTE(v166);
                }

                else
                {
                  v134 = *(&v165 + 1);
                }

LABEL_232:
                std::string::append(&v167, v133, v134);
                if (SHIBYTE(v166) < 0)
                {
                  operator delete(v165);
                  if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_234:
                    if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_235;
                    }

                    goto LABEL_246;
                  }
                }

                else if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_234;
                }

                operator delete(v164.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_235:
                  if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_236;
                  }

                  goto LABEL_247;
                }

LABEL_246:
                operator delete(v156.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_236:
                  if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_237;
                  }

                  goto LABEL_248;
                }

LABEL_247:
                operator delete(v163.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_237:
                  if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_238;
                  }

                  goto LABEL_249;
                }

LABEL_248:
                operator delete(v162.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_238:
                  if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_239;
                  }

                  goto LABEL_250;
                }

LABEL_249:
                operator delete(v157.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v161.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_239:
                  if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_240;
                  }

                  goto LABEL_251;
                }

LABEL_250:
                operator delete(v161.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v160.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_240:
                  if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_241;
                  }

                  goto LABEL_252;
                }

LABEL_251:
                operator delete(v160.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_241:
                  if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_242;
                  }

LABEL_253:
                  operator delete(v159.__r_.__value_.__l.__data_);
LABEL_242:
                  std::string::append(&v167, "-packed 3 ");
                  if (*(a2 + 8))
                  {
                    operator new();
                  }

                  operator new();
                }

LABEL_252:
                operator delete(v158.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_242;
                }

                goto LABEL_253;
              }

LABEL_207:
              operator delete(v159.__r_.__value_.__l.__data_);
              if (*(a2 + 8))
              {
                goto LABEL_174;
              }

              goto LABEL_208;
            }

LABEL_138:
            operator delete(v159.__r_.__value_.__l.__data_);
            if (*(a2 + 8))
            {
              goto LABEL_105;
            }

            goto LABEL_139;
          }

LABEL_69:
          operator delete(v163.__r_.__value_.__l.__data_);
          if (*(a2 + 12) == 1)
          {
            goto LABEL_40;
          }

          goto LABEL_70;
        }
      }

      else if ((SHIBYTE(v164.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      operator delete(v164.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_66;
    }

    v14 = **(v11 + 16);
    v15 = v14 + 1;
    v16 = **(v12 + 16);
    v17 = v16 + 1;
LABEL_12:
    v155 = *v14;
    v20 = *v15;
    v153 = *v16 - 1;
    v154 = *v17 - 1;
    goto LABEL_13;
  }

  return result;
}

void sub_239ABE7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 97) < 0)
  {
    operator delete(*(v26 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_239ABF0A8()
{
  if (*(v0 - 121) < 0)
  {
    operator delete(*(v0 - 144));
    if ((*(v0 - 153) & 0x80000000) == 0)
    {
LABEL_3:
      if (*(v0 - 185) < 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v0 - 153) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v0 - 176));
  if (*(v0 - 185) < 0)
  {
LABEL_7:
    v1 = *(v0 - 208);
    JUMPOUT(0x239ABEFE8);
  }

LABEL_11:
  JUMPOUT(0x239ABEFECLL);
}

uint64_t MPSNDArraySDPAA18Behavior::EncodeSDPA(uint64_t a1, MPSKernel *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a5 + 232) inputTensorAtIndex:0];
  v10 = [*(a5 + 232) inputTensorAtIndex:1];
  v11 = [*(a5 + 232) inputTensorAtIndex:2];
  DimensionSize = [*(a5 + 232) outputTensorAtIndex:0];
  if (*(v9 + 2) != *(DimensionSize + 8))
  {
    DimensionSize = MTLReportFailureTypeEnabled();
    if (DimensionSize)
    {
      DimensionSize = MTLReportFailure();
    }
  }

  v13 = *(&a2->super.isa + *MEMORY[0x277CD7370]);
  v14 = *(&a2->super.isa + *MEMORY[0x277CD7350]);
  v15 = *(v9 + 2);
  v16 = -1879048176;
  if (v15 != -1879048176 && (v16 = 268435472, v15 != 268435472) || *(v10 + 8) != v16 || *(v11 + 8) != v16)
  {
    if (qword_27DF869A8 == -1)
    {
      if (_MergedGlobals_5 != 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&qword_27DF869A8, &__block_literal_global_4);
      if (_MergedGlobals_5 != 1)
      {
        goto LABEL_9;
      }
    }
  }

  [(MPSKernel *)a2 layout];
  DimensionSize = BaseTensor::GetDimensionSize(v9);
  if (DimensionSize >= 8)
  {
    MPSKernel_LogInfo(a2, v17, "A18 Encoder: Encoding 16x16 MXU based SDPA kernel\n");
    EncodeSDPATileBasedCommon(a3, a4, a5, v14, v13, a2, qword_239B1F3E8);
    return 0;
  }

LABEL_9:

  return MPSNDArraySDPAA14Behavior::EncodeSDPA(DimensionSize, a2, a3, a4, a5);
}

void EncodeSDPATileBasedCommon(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, MPSKernel *a6, uint64_t *a7)
{
  v195 = *(&a6->super.isa + *MEMORY[0x277CD7378]);
  v11 = *(&a6->super.isa + *MEMORY[0x277CD7360]);
  v12 = *(&a6->super.isa + *MEMORY[0x277CD7368]);
  [(MPSKernel *)a6 alpha];
  v14 = v13;
  v194 = a6;
  v200 = [(MPSKernel *)a6 layout];
  MEMORY[0x23EE7C450](v291, a2, 0);
  v15 = [*(a3 + 232) graph];
  v208 = a7;
  v183 = v12;
  v184 = v11;
  v205 = a3;
  if ([*(a3 + 16) count])
  {
    operator new();
  }

  v288 = 0u;
  v289 = 0u;
  v290 = 1065353216;
  v16 = *(v15 + 64);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(a3 + 16);
  LODWORD(v255) = 0;
  v260 = &v255;
  v20 = [v19 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v288, 0) + 5)}];
  v21 = *(a3 + 16);
  LODWORD(v255) = 1;
  v260 = &v255;
  v22 = [v21 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v288, 1u) + 5)}];
  v23 = *(a3 + 16);
  LODWORD(v255) = 2;
  v260 = &v255;
  v193 = [v23 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v288, 2u) + 5)}];
  v24 = *(a3 + 16);
  LODWORD(v255) = 3;
  v260 = &v255;
  v25 = [v24 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v288, 3u) + 5)}];
  v26 = *(a3 + 208);
  v27 = [*(a3 + 232) outputTensorAtIndex:{0, v172}];
  if (v200 == 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2;
  }

  v29 = *MEMORY[0x277CD7410];
  v30 = *(v20 + v29);
  v31 = *(v20 + v29 + 16);
  v32 = *(v20 + v29 + 32);
  v33 = *(v20 + v29 + 48);
  v34 = *MEMORY[0x277CD73D8];
  v35 = *(v20 + v34);
  v250[3] = v33;
  v250[2] = v32;
  v250[1] = v31;
  v250[0] = v30;
  v36 = *(v250 + (v35 & 0xF));
  if (v200 == 1)
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  v245 = v35;
  v186 = v37;
  v249[3] = v33;
  v249[2] = v32;
  v249[1] = v31;
  v249[0] = v30;
  v211 = *(v249 + (*(&v245 | v37 & 0xF) & 0xF));
  v38 = (v22 + v29);
  v39 = *v38;
  v40 = v38[1];
  v41 = v38[2];
  v42 = v38[3];
  v192 = v22;
  v246 = *(v22 + v34);
  v252[3] = v42;
  v252[2] = v41;
  v252[1] = v40;
  v252[0] = v39;
  v43 = *(v252 + (*(&v246 | v37 & 0xF) & 0xF));
  v191 = v28;
  v248[3] = v33;
  v248[2] = v32;
  v248[1] = v31;
  v248[0] = v30;
  v190 = *(v248 + (*(&v245 | v28 & 0xF) & 0xF));
  v251[3] = v42;
  v251[2] = v41;
  v251[1] = v40;
  v251[0] = v39;
  v181 = *(v251 + (*(&v246 | v28 & 0xF) & 0xF));
  v247[3] = v33;
  v247[2] = v32;
  v247[1] = v31;
  v247[0] = v30;
  v189 = *(v247 + (BYTE3(v35) & 0xF));
  v187 = *(a4 + 1482);
  v188 = v26;
  v44 = *(v208 + 2);
  v45 = *v208;
  v46 = *(v208 + 4);
  if (qword_27DF869B0 != -1)
  {
    v68 = v27;
    dispatch_once(&qword_27DF869B0, &__block_literal_global_170);
    v27 = v68;
  }

  v47 = dword_27DF8699C;
  v185 = v44;
  v180 = v27;
  v182 = v25;
  if (qword_27DF869B8 != -1)
  {
    dispatch_once(&qword_27DF869B8, &__block_literal_global_173);
  }

  v48 = v36 + v46 - 1;
  v49 = -v46;
  v50 = dword_27DF869A0;
  if (qword_27DF869C0 == -1)
  {
    v51 = v48 & v49;
    v52 = dword_27DF869A4;
    if (v36 > 0x80)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&qword_27DF869C0, &__block_literal_global_176);
    v51 = v48 & v49;
    v52 = dword_27DF869A4;
    if (v36 > 0x80)
    {
LABEL_15:
      if (!v47 || (v53 = v47, v47 % v185))
      {
        if (((v211 + v185 - 1) & -v185) >= v185)
        {
          v53 = v185;
        }

        else
        {
          v53 = (v211 + v185 - 1) & -v185;
        }
      }

      if (!v50 || (v54 = v50, v50 % v45))
      {
        v54 = (v45 + v43 - 1) & -v45;
        if (2 * v45 < v54)
        {
          v54 = 2 * v45;
        }
      }

      if (v54 >= v51)
      {
        v55 = v51;
      }

      else
      {
        v55 = v54;
      }

      v56 = (v55 + v43 - 1) & -v55;
      if (v56 >= v51)
      {
        v56 = v51;
      }

      if (v56 >= 0x40)
      {
        v56 = 64;
      }

      v209 = v56;
      if (v51 >= v56)
      {
        v57 = v56;
      }

      else
      {
        v57 = v51;
      }

      if (!v52 || (v207 = v52, v52 % v53))
      {
        v58 = (v211 + v53 - 1) & -v53;
        if (v53 < v58)
        {
          v58 = v53;
        }

        v207 = v58;
      }

      v198 = v55;
      v203 = v53;
      if (v185 == 8)
      {
        v197 = v45;
        v62 = v45 == 8;
        v59 = v192;
        v60 = v43;
        if (v62)
        {
          v61 = (v211 + 7) & 0xFFFFFFF8;
          if (((v211 + 7) & 0xFFFFFFF0) != 0)
          {
            v61 = 16;
          }

          v62 = (v47 & 7) != 0 || v47 == 0;
          if (v62)
          {
            v63 = v61;
          }

          else
          {
            v63 = v47;
          }

          if (((v43 + 7) & 0xFFFFFFF0) != 0)
          {
            v64 = 16;
          }

          else
          {
            v64 = (v43 + 7) & 0xFFFFFFF8;
          }

          if ((v50 & 7) == 0 && v50 != 0)
          {
            v64 = v50;
          }

          if (v64 >= v51)
          {
            v64 = v51;
          }

          v198 = v64;
          v66 = (v64 + v43 - 1) & -v64;
          if (v66 >= v51)
          {
            v66 = v51;
          }

          if (v66 >= 0x80)
          {
            v66 = 128;
          }

          v209 = v66;
          if (v51 < v66)
          {
            v66 = v51;
          }

          if (v66 >= 0x20)
          {
            v57 = 32;
          }

          else
          {
            v57 = v66;
          }

          v203 = v63;
          if (v52 && !(v52 % v63))
          {
            v197 = 8;
            v207 = v52;
          }

          else
          {
            v67 = (v211 + v63 - 1) & -v63;
            if (v63 < v67)
            {
              v67 = v63;
            }

            v207 = v67;
            v197 = 8;
          }
        }
      }

      else
      {
        v197 = v45;
        v59 = v192;
        v60 = v43;
      }

      goto LABEL_127;
    }
  }

  if (!v47 || (v69 = v47, v47 % v185))
  {
    if (((v211 + v185 - 1) & -v185) >= v185)
    {
      v69 = v185;
    }

    else
    {
      v69 = (v211 + v185 - 1) & -v185;
    }
  }

  if (v50 && !(v50 % v45))
  {
    v70 = v50;
  }

  else if (2 * v45 >= ((v45 + v43 - 1) & -v45))
  {
    v70 = (v45 + v43 - 1) & -v45;
  }

  else
  {
    v70 = 2 * v45;
  }

  v71 = (v70 + v43 - 1) & -v70;
  if (v70 < v71)
  {
    v71 = v70;
  }

  v209 = v71;
  if (v36 == 128)
  {
    v57 = 64;
  }

  else
  {
    v57 = v51;
  }

  if (!v52 || (v207 = v52, v52 % v69))
  {
    v72 = (v211 + v69 - 1) & -v69;
    if (4 * v69 < v72)
    {
      v72 = 4 * v69;
    }

    v207 = v72;
  }

  if (v51 >= 0x80)
  {
    v73 = 128;
  }

  else
  {
    v73 = v51;
  }

  v197 = v73;
  if (v185 == 8)
  {
    if (((v211 + 7) & 0xFFFFFFF0) != 0)
    {
      v74 = 16;
    }

    else
    {
      v74 = (v211 + 7) & 0xFFFFFFF8;
    }

    if ((v47 & 7) == 0 && v47 != 0)
    {
      v74 = v47;
    }

    v203 = v74;
    if (!v50 || v50 % v45)
    {
      if (4 * v45 >= ((v45 + v43 - 1) & -v45))
      {
        v50 = (v45 + v43 - 1) & -v45;
      }

      else
      {
        v50 = 4 * v45;
      }
    }

    v76 = (v50 + v43 - 1) & -v50;
    if (v50 < v76)
    {
      v76 = v50;
    }

    v209 = v76;
    if (v51 >= 0x20)
    {
      v57 = 32;
    }

    else
    {
      v57 = v51;
    }

    v59 = v192;
    if (v52 && !(v52 % v74))
    {
      v198 = v50;
      v207 = v52;
    }

    else
    {
      v77 = (v211 + v74 - 1) & -v74;
      if (2 * v74 < v77)
      {
        v77 = 2 * v74;
      }

      v207 = v77;
      v198 = v50;
    }
  }

  else
  {
    v198 = v70;
    v203 = v69;
    v59 = v192;
  }

  v60 = v43;
LABEL_127:
  v196 = v57;
  v178 = v36 / v57;
  if (v211 % v207)
  {
    v78 = v182;
    v176 = 0;
    v179 = v60 / v209;
    v79 = MEMORY[0x277CD7428];
    if (v195)
    {
      goto LABEL_141;
    }

    goto LABEL_136;
  }

  v78 = v182;
  if (v36 % v57 || v60 % v209)
  {
    v80 = 0;
    if (v36 <= 0x80)
    {
LABEL_133:
      if (!(v36 % v46))
      {
        v176 = v60 == v60 / v209 * v209;
        v179 = v60 / v209;
        v79 = MEMORY[0x277CD7428];
        if (v195)
        {
          goto LABEL_141;
        }

        goto LABEL_136;
      }

      v80 = 0;
    }
  }

  else
  {
    v80 = v60 % v57 == 0;
    if (v36 <= 0x80)
    {
      goto LABEL_133;
    }
  }

  v176 = v80;
  v179 = v60 / v209;
  v79 = MEMORY[0x277CD7428];
  if (v195)
  {
    goto LABEL_141;
  }

LABEL_136:
  validateSDPA(v20, v59, v193, v78, v200);
  if (*(v20 + *v79 + 8 * (*(v20 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v59 + *v79 + 8 * (*(v59 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v193 + *v79 + 8 * (*(v193 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v78 && *(v78 + *v79 + 8 * (*(v78 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_141:
  v260 = __PAIR64__(v36, v14);
  v266 = v189;
  v265 = v190 / v181;
  v264 = v190;
  v263 = v60;
  v262 = v211;
  LODWORD(v254[0]) = 0;
  *&v255 = v254;
  v268 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v288, 0) + 20);
  LODWORD(v254[0]) = 1;
  *&v255 = v254;
  v269 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v288, 1u) + 20);
  LODWORD(v254[0]) = 2;
  *&v255 = v254;
  v270 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v288, 2u) + 20);
  LODWORD(v254[0]) = 3;
  *&v255 = v254;
  v271 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v288, 3u) + 20);
  v272 = -1;
  v81 = *v79;
  v82 = *(v20 + v81);
  v83 = *(v20 + v81 + 16);
  v84 = *(v20 + v81 + 32);
  v85 = *(v20 + v81 + 48);
  v86 = *(v20 + v81 + 64);
  v87 = *(v20 + v81 + 80);
  v88 = *(v20 + v81 + 96);
  v89 = *(v20 + v81 + 112);
  v90 = *MEMORY[0x277CD73D8];
  v220 = *(v20 + v90);
  v244[7] = v89;
  v244[6] = v88;
  v244[5] = v87;
  v244[4] = v86;
  v244[3] = v85;
  v244[2] = v84;
  v244[1] = v83;
  v244[0] = v82;
  v273 = *(v244 + (*(&v220 | v186 & 0xF) & 0xF));
  v243[7] = v89;
  v243[6] = v88;
  v243[5] = v87;
  v243[4] = v86;
  v243[3] = v85;
  v243[2] = v84;
  v243[1] = v83;
  v243[0] = v82;
  v274 = *(v243 + (*(&v220 | v191 & 0xF) & 0xF));
  v242[7] = v89;
  v242[6] = v88;
  v242[5] = v87;
  v242[4] = v86;
  v242[3] = v85;
  v242[2] = v84;
  v242[1] = v83;
  v242[0] = v82;
  v275 = *(v242 + (BYTE3(v220) & 0xF));
  v91 = *(v59 + v81);
  v92 = *(v59 + v81 + 16);
  v93 = *(v59 + v81 + 32);
  v94 = *(v59 + v81 + 48);
  v95 = *(v59 + v81 + 64);
  v96 = *(v59 + v81 + 80);
  v97 = *(v59 + v81 + 96);
  v98 = *(v59 + v90);
  v239 = *(v59 + v81 + 112);
  v238[6] = v97;
  v238[5] = v96;
  v238[4] = v95;
  v238[3] = v94;
  v238[2] = v93;
  v238[1] = v92;
  v238[0] = v91;
  v221 = v98;
  v276 = *(v238 + (*(&v221 | v186 & 0xF) & 0xF));
  v240[7] = v239;
  v240[6] = v97;
  v240[5] = v96;
  v240[4] = v95;
  v240[3] = v94;
  v240[2] = v93;
  v240[1] = v92;
  v240[0] = v91;
  v277 = *(v240 + (*(&v221 | v191 & 0xF) & 0xF));
  v241[7] = v239;
  v241[6] = v97;
  v241[5] = v96;
  v241[4] = v95;
  v241[3] = v94;
  v241[2] = v93;
  v241[1] = v92;
  v241[0] = v91;
  v278 = *(v241 + (BYTE3(v98) & 0xF));
  v99 = *(v78 + v81);
  v100 = *(v78 + v81 + 16);
  v101 = *(v78 + v81 + 32);
  v102 = *(v78 + v81 + 48);
  v103 = *(v78 + v81 + 64);
  v104 = *(v78 + v81 + 80);
  v105 = *(v78 + v90);
  v106 = *(v78 + v81 + 96);
  v235 = *(v78 + v81 + 112);
  v234[6] = v106;
  v234[5] = v104;
  v234[4] = v103;
  v234[3] = v102;
  v234[2] = v101;
  v234[1] = v100;
  v234[0] = v99;
  v222 = v105;
  v279 = *(v234 + (*(&v222 | v186 & 0xF) & 0xF));
  v236[7] = v235;
  v236[6] = v106;
  v236[5] = v104;
  v236[4] = v103;
  v236[3] = v102;
  v236[2] = v101;
  v236[1] = v100;
  v236[0] = v99;
  v280 = *(v236 + (*(&v222 | v191 & 0xF) & 0xF));
  v237[7] = v235;
  v237[6] = v106;
  v237[5] = v104;
  v237[4] = v103;
  v237[3] = v102;
  v237[2] = v101;
  v237[1] = v100;
  v237[0] = v99;
  v281 = *(v237 + (BYTE3(v105) & 0xF));
  v107 = *(v193 + v81);
  v108 = *(v193 + v81 + 16);
  v109 = *(v193 + v81 + 32);
  v110 = *(v193 + v81 + 48);
  v111 = *(v193 + v81 + 64);
  v112 = *(v193 + v81 + 80);
  v113 = *(v193 + v81 + 96);
  v114 = *(v193 + v90);
  v231 = *(v193 + v81 + 112);
  v230[6] = v113;
  v230[5] = v112;
  v230[4] = v111;
  v230[3] = v110;
  v230[2] = v109;
  v230[1] = v108;
  v230[0] = v107;
  v223 = v114;
  v282 = *(v230 + (*(&v223 | v186 & 0xF) & 0xF));
  v232[7] = v231;
  v232[6] = v113;
  v232[5] = v112;
  v232[4] = v111;
  v232[3] = v110;
  v232[2] = v109;
  v232[1] = v108;
  v232[0] = v107;
  v283 = *(v232 + (*(&v223 | v191 & 0xF) & 0xF));
  v233[7] = v231;
  v233[6] = v113;
  v233[5] = v112;
  v233[4] = v111;
  v233[3] = v110;
  v233[2] = v109;
  v233[1] = v108;
  v233[0] = v107;
  v284 = *(v233 + (BYTE3(v114) & 0xF));
  v115 = &v188[v81];
  v116 = *v115;
  v117 = *(v115 + 1);
  v118 = *(v115 + 2);
  v119 = *(v115 + 3);
  v120 = *(v115 + 4);
  v121 = *(v115 + 5);
  v122 = *(v115 + 7);
  v123 = *&v188[v90];
  v226 = *(v115 + 6);
  v227 = v122;
  v225[4] = v120;
  v225[5] = v121;
  v225[2] = v118;
  v225[3] = v119;
  v225[0] = v116;
  v225[1] = v117;
  v224 = v123;
  v285 = *(v225 + (*(&v224 | v186 & 0xF) & 0xF));
  v228[6] = v226;
  v228[7] = v122;
  v228[4] = v120;
  v228[5] = v121;
  v228[2] = v118;
  v228[3] = v119;
  v228[0] = v116;
  v228[1] = v117;
  v286 = *(v228 + (*(&v224 | v191 & 0xF) & 0xF));
  v229[7] = v122;
  v229[6] = v226;
  v229[4] = v120;
  v229[5] = v121;
  v229[2] = v118;
  v229[3] = v119;
  v229[0] = v116;
  v229[1] = v117;
  v287 = *(v229 + (BYTE3(v123) & 0xF));
  v261 = v51;
  v213 = v207 * v209 / v203 / v198;
  v267 = v207 * v209 / v203 / v198;
  v124 = *(a4 + 1472) < 18;
  v125 = (v200 == 1) << 8;
  if (qword_27DF869C8 == -1)
  {
    v126 = v180;
    v127 = v125 | (v124 << 7);
    if (MPSSDPAElasticBarrier(void)::result != -1)
    {
      goto LABEL_143;
    }

LABEL_152:
    v127 |= (v60 > 0x400) << 48;
    goto LABEL_153;
  }

  dispatch_once(&qword_27DF869C8, &__block_literal_global_215);
  v126 = v180;
  v127 = v125 | (v124 << 7);
  if (MPSSDPAElasticBarrier(void)::result == -1)
  {
    goto LABEL_152;
  }

LABEL_143:
  if (MPSSDPAElasticBarrier(void)::result == 1)
  {
    v127 |= 0x1000000000000uLL;
  }

LABEL_153:
  v128 = (v78 + *MEMORY[0x277CD7410]);
  v129 = *v128;
  v130 = v128[1];
  v131 = v128[2];
  v132 = v128[3];
  v133 = *(v78 + *MEMORY[0x277CD73D8]);
  v216 = v133;
  v219[2] = v131;
  v219[3] = v132;
  v219[0] = v129;
  v219[1] = v130;
  LODWORD(v128) = *(v219 + (*(&v216 | v191 & 0xF) & 0xF));
  v218[2] = v131;
  v218[3] = v132;
  v218[0] = v129;
  v218[1] = v130;
  if (v128 * *(v218 + (BYTE3(v133) & 0xF)) != 1)
  {
    ++v127;
  }

  v217[2] = v131;
  v217[3] = v132;
  v217[0] = v129;
  v217[1] = v130;
  if (*(v217 + (v133 & 0xF)) == 1)
  {
    v134 = 0;
    v135 = v127 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v214 = v133;
    v215[0] = v129;
    v215[1] = v130;
    v215[2] = v131;
    v215[3] = v132;
    v136 = *(v215 + (*(&v214 | v186 & 0xF) & 0xF));
    v62 = v136 == 1;
    v137 = v136 != 1;
    v138 = v62;
    v135 = v127 & 0xFFFFFFFFFFFFFFFBLL | (4 * v137);
    v134 = 2 * v138;
  }

  v139 = MEMORY[0x277CD73C8];
  v140 = *(v20 + *MEMORY[0x277CD73C8]);
  v177 = v60;
  v141 = v36;
  if (v140 > 268435487)
  {
    if (v140 == 536870920)
    {
      v142 = 24;
      v143 = *(v126 + 8);
      v201 = v207 * v209;
      if (v143 > 268435487)
      {
        goto LABEL_168;
      }

      goto LABEL_171;
    }

    goto LABEL_170;
  }

  if (v140 != -1879048176)
  {
    if (v140 == 268435472)
    {
      v142 = 8;
      v143 = *(v126 + 8);
      v201 = v207 * v209;
      if (v143 > 268435487)
      {
        goto LABEL_168;
      }

      goto LABEL_171;
    }

LABEL_170:
    v142 = 0;
    v143 = *(v126 + 8);
    v201 = v207 * v209;
    if (v143 > 268435487)
    {
      goto LABEL_168;
    }

    goto LABEL_171;
  }

  v142 = 16;
  v143 = *(v126 + 8);
  v201 = v207 * v209;
  if (v143 > 268435487)
  {
LABEL_168:
    v144 = v135;
    if (v143 == 536870920)
    {
      v145 = v20;
      v146 = 96;
      goto LABEL_178;
    }

LABEL_174:
    v145 = v20;
    v146 = 0;
    goto LABEL_178;
  }

LABEL_171:
  v144 = v135;
  if (v143 != -1879048176)
  {
    if (v143 == 268435472)
    {
      v145 = v20;
      v146 = 32;
      goto LABEL_178;
    }

    goto LABEL_174;
  }

  v145 = v20;
  v146 = 64;
LABEL_178:
  v147 = v141;
  v148 = v141 % v197;
  if (v141 % v197)
  {
    v149 = 0;
  }

  else
  {
    v149 = ((v141 / v197) & 7) << 49;
  }

  if ([(MPSKernel *)v194 kernelType])
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v150 = v139;
    v151 = 0;
  }

  else
  {
    v150 = v139;
    v152 = 5;
    if (v185 == 16)
    {
      v152 = 7;
    }

    v151 = v152 + v176;
  }

  v153 = v134 & 0xFF8F07FFFFFFFBFFLL | (v207 << 12) & 0xF8000 | v144 & 0xFF81000000004185 | v142 & 0xFF8F07FFFFFFFBFFLL | (v209 << 17) & 0x1F00000 | (((v198 >> 3) & 0xF) << 39) & 0xFF8F07FFFFFFFBFFLL | ((v196 >> 3) << 30) & 0xFF8F07FFFFFFFBFFLL | (v197 << 22) & 0x3E000000 | (((v203 >> 3) & 0xF) << 35) & 0xFF8F07FFFFFFFBFFLL | v146 & 0xFF8F07FFFFFFFBFFLL | v149 & 0xFF8F07FFFFFFFBFFLL;
  v154 = v147;
  v155 = ((v147 < 0x81) << 10) | ((v211 % v207 != 0) << 52) | v153 | (v151 << 43) | ((((v147 - v178 * v196) | v148) != 0) << 54) | ((v177 != v179 * v209) << 53);
  if (v147 <= 0x80)
  {
    v159 = 0;
    v157 = v207;
    v158 = 0;
    if (v147 >= 0x41)
    {
      v156 = v155;
    }

    else
    {
      v156 = v155 | 0x800;
    }
  }

  else
  {
    v156 = v155 | 0x2000;
    v157 = v207;
    v158 = 16 * v207;
    v159 = (4 * v201 + 15) & 0x7FFFFFFF0;
  }

  v160 = *v150;
  v161 = v209 * v196;
  v210 = v157 * v196;
  v204 = *(v145 + v160) >> 3;
  v202 = v161;
  v199 = *(v192 + v160) >> 3;
  if ((v156 & 0x200) != 0)
  {
    v162 = 2 * (v158 + v159) + (*(v145 + v160) >> 3) * (v157 * v196) + (*(v192 + v160) >> 3) * v161;
  }

  else
  {
    v162 = 2 * (v158 + v159);
  }

  v163 = [*(a4 + 16) maxThreadgroupMemoryLength];
  v164 = (4 * v157 * v154 + 15) & 0x7FFFFFFF0;
  if (v162 + (v164 & (v156 << 51 >> 63)) > v163 && MTLReportFailureTypeEnabled())
  {
    v173 = v162 + (v164 & (v156 << 51 >> 63));
    v175 = v163;
    MTLReportFailure();
  }

  *&v165 = -1;
  *(&v165 + 1) = -1;
  v259 = v165;
  v258 = v165;
  v257 = v165;
  v256 = 0xFFFFFFFFFFFFFFFFLL;
  v255 = v165;
  *&v259 = [*(v205 + 16) count] | ((*(v205 + 112) != 0) << 8) | 0x10000;
  *&v256 = 0;
  v166 = [(__CFString *)(&CommonKernels)[16 * v151] UTF8String];
  MPSKernel_LogInfo(v194, v167, "SDPA: kernel %s is encoded, threadsPerGroup: (%lu, %lu, %lu), threadGroups: (%lu, %lu, %lu)\n", v166, v187, v213, 1, (v211 + v207 - 1) / v207, 1, v190 * v189);
  v174 = *(v205 + 232);
  MPSLibrary::CreateUberShaderKey();
  [a1 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v174, v184, v183, 0, 0}];
  MPSSetNDArraysOnComputeEncoder(a1, v205, 4, 0, 0);
  v168 = objc_autoreleasePoolPush();
  if ((v156 & 0x400) == 0)
  {
    [a1 setThreadgroupMemoryLength:v159 atIndex:0];
    [a1 setThreadgroupMemoryLength:v159 atIndex:1];
    [a1 setThreadgroupMemoryLength:v158 atIndex:3];
    [a1 setThreadgroupMemoryLength:v158 atIndex:4];
  }

  [a1 setThreadgroupMemoryLength:v159 atIndex:1];
  if ((v156 & 0x1000) != 0)
  {
    [a1 setThreadgroupMemoryLength:v164 atIndex:2];
  }

  if ((v156 & 0x200) != 0)
  {
    [a1 setThreadgroupMemoryLength:v204 * v210 atIndex:5];
    [a1 setThreadgroupMemoryLength:v199 * v202 atIndex:6];
  }

  [a1 setBytes:&v260 length:144 atIndex:29];
  [a1 setBuffer:objc_msgSend(v188 offset:"buffer") atIndex:{0, 28}];
  if ((v156 & 0x2000) != 0)
  {
    [a1 setBuffer:MPSAutoCache::GetTempBuffer(v291 offset:v164 * v190 * v189 * ((v211 + v207 - 1) / v207) atIndex:{0), 0, 27}];
  }

  v254[0] = (v211 + v207 - 1) / v207;
  v254[1] = 1;
  v254[2] = v190 * v189;
  v253[0] = v187;
  v253[1] = v213;
  v253[2] = 1;
  [a1 dispatchThreadgroups:v254 threadsPerThreadgroup:v253];
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  objc_autoreleasePoolPop(v168);
  v169 = v289;
  if (v289)
  {
    do
    {
      v170 = *v169;
      operator delete(v169);
      v169 = v170;
    }

    while (v170);
  }

  v171 = v288;
  *&v288 = 0;
  if (v171)
  {
    operator delete(v171);
  }

  MPSAutoCache::~MPSAutoCache(v291);
}