@interface MPSNDArrayIdentity
- (MPSNDArrayIdentity)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayIdentity)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)reshapeWithCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArray:(id)a5 dimensionCount:(unint64_t)a6 dimensionSizes:(unint64_t *)a7 destinationArray:(id)a8;
- (id)reshapeWithCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArray:(id)a5 shape:(id)a6 destinationArray:(id)a7;
- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayIdentity

- (MPSNDArrayIdentity)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayIdentity;
  result = [(MPSNDArrayUnaryKernel *)&v4 initWithDevice:a3];
  result->super.super._encode = EncodeArrayIdentity;
  result->super.super.super._encodeData = result;
  return result;
}

- (MPSNDArrayIdentity)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayIdentity;
  result = [(MPSNDArrayUnaryKernel *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super._encode = EncodeArrayIdentity;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayIdentity;
  [(MPSNDArrayMultiaryBase *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayIdentity;
  result = [(MPSNDArrayMultiaryKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    self->super.super._encode = EncodeArrayIdentity;
    self->super.super.super._encodeData = self;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayIdentity;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

- (id)reshapeWithCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArray:(id)a5 shape:(id)a6 destinationArray:(id)a7
{
  v23 = *MEMORY[0x277D85DE8];
  if (a6 || (*(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7378]) & 1) != 0)
  {
    result = 0;
    if (a5 && a6)
    {
      v22[4] = xmmword_239B19B78;
      v22[5] = unk_239B19B88;
      v22[6] = xmmword_239B19B98;
      v22[7] = unk_239B19BA8;
      v22[0] = xmmword_239B19B38;
      v22[1] = unk_239B19B48;
      v22[2] = xmmword_239B19B58;
      v22[3] = unk_239B19B68;
      v14 = [a6 count];
      v15 = v14;
      if (v14)
      {
        v16 = 0;
        v17 = v14;
        do
        {
          *(&v21 + v17--) = [objc_msgSend(a6 objectAtIndexedSubscript:{v16++), "unsignedIntValue"}];
        }

        while (v17);
      }

      result = [(MPSNDArrayIdentity *)self reshapeWithCommandEncoder:a3 commandBuffer:a4 sourceArray:a5 dimensionCount:v15 dimensionSizes:v22 destinationArray:a7];
    }

    v18 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (MTLReportFailureTypeEnabled())
    {
      v19 = objc_opt_class();
      NSStringFromClass(v19);
      MTLReportFailure();
    }

    result = 0;
    v20 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (id)reshapeWithCommandEncoder:(id)a3 commandBuffer:(id)a4 sourceArray:(id)a5 dimensionCount:(unint64_t)a6 dimensionSizes:(unint64_t *)a7 destinationArray:(id)a8
{
  v145 = *MEMORY[0x277D85DE8];
  v11 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7378]);
  if ((v11 & 1) == 0)
  {
    if (a7)
    {
      if (a5)
      {
        goto LABEL_4;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_73;
      }
    }

    else if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_73;
    }

    v88 = objc_opt_class();
    NSStringFromClass(v88);
LABEL_72:
    MTLReportFailure();
LABEL_73:

    goto LABEL_74;
  }

LABEL_4:
  result = 0;
  if (!a5 || !a7)
  {
    goto LABEL_75;
  }

  v13 = MEMORY[0x277CD73F0];
  v14 = *MEMORY[0x277CD73F0];
  v15 = *(a5 + v14);
  v16.n128_u64[0] = 0x100000001;
  v16.n128_u64[1] = 0x100000001;
  if (v15)
  {
    v17 = 0;
    v18 = (a5 + *MEMORY[0x277CD7410]);
    v8 = v18[2];
    v19 = v18[3];
    v20 = *v18;
    v9 = v18[1];
    v21 = *(a5 + *MEMORY[0x277CD73D8]);
    *&v22 = 0x100000001;
    *(&v22 + 1) = 0x100000001;
    v23 = 1;
    *&v24 = 0x100000001;
    *(&v24 + 1) = 0x100000001;
    v25.i64[0] = 0x100000001;
    v25.i64[1] = 0x100000001;
    *&v26 = 0x100000001;
    *(&v26 + 1) = 0x100000001;
    do
    {
      v124 = v21;
      v129[0] = v20;
      v129[1] = v9;
      v129[2] = v8;
      v129[3] = v19;
      v27 = *(v129 + (*(&v124 | v17 & 0xF) & 0xF));
      v125 = v22;
      v126 = v24;
      v127 = v25;
      v128 = v26;
      *(&v125 + (v17 & 0xF)) = v27;
      v25 = v127;
      v26 = v128;
      v22 = v125;
      v24 = v126;
      v23 *= v27;
      ++v17;
    }

    while (v15 != v17);
    if (a6)
    {
LABEL_10:
      v28 = 0;
      v16.n128_u64[0] = 0x100000001;
      v16.n128_u64[1] = 0x100000001;
      v29 = 1;
      v30.n128_u64[0] = 0x100000001;
      v30.n128_u64[1] = 0x100000001;
      v31.n128_u64[0] = 0x100000001;
      v31.n128_u64[1] = 0x100000001;
      v32.n128_u64[0] = 0x100000001;
      v32.n128_u64[1] = 0x100000001;
      do
      {
        v33 = a7[v28];
        v120 = v16;
        v121 = v30;
        v122 = v31;
        v123 = v32;
        v120.n128_u32[v28 & 0xF] = v33;
        v31 = v122;
        v32 = v123;
        v16 = v120;
        v30 = v121;
        v29 *= v33;
        ++v28;
      }

      while (a6 != v28);
      if (v11)
      {
        goto LABEL_17;
      }

LABEL_16:
      if (v29 != v23)
      {
        if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_73;
        }

        v89 = objc_opt_class();
        NSStringFromClass(v89);
        goto LABEL_72;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v23 = 1;
    *&v22 = 0x100000001;
    *(&v22 + 1) = 0x100000001;
    *&v24 = 0x100000001;
    *(&v24 + 1) = 0x100000001;
    v25.i64[0] = 0x100000001;
    v25.i64[1] = 0x100000001;
    *&v26 = 0x100000001;
    *(&v26 + 1) = 0x100000001;
    if (a6)
    {
      goto LABEL_10;
    }
  }

  v29 = 1;
  v30.n128_u64[0] = 0x100000001;
  v30.n128_u64[1] = 0x100000001;
  v31.n128_u64[0] = 0x100000001;
  v31.n128_u64[1] = 0x100000001;
  v32.n128_u64[0] = 0x100000001;
  v32.n128_u64[1] = 0x100000001;
  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v29 != v23)
  {
LABEL_74:
    result = 0;
    goto LABEL_75;
  }

  if ((v11 & 1) == 0 && a8)
  {
    if (*(a8 + v14) != a6)
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_73;
      }

      v90 = *(a8 + *v13);
      v91 = objc_opt_class();
      NSStringFromClass(v91);
      goto LABEL_72;
    }

    if (a6)
    {
      v35 = 0;
      v36 = MEMORY[0x277CD7410];
      v37 = (a8 + *MEMORY[0x277CD7410]);
      v8 = v37[2];
      v38 = v37[3];
      v39 = MEMORY[0x277CD73D8];
      v40 = *v37;
      v9 = v37[1];
      v41 = *(a8 + *MEMORY[0x277CD73D8]);
      while (1)
      {
        v117 = v41;
        v119[0] = v40;
        v119[1] = v9;
        v119[2] = v8;
        v119[3] = v38;
        v42 = *(v119 + (*(&v117 | v35 & 0xF) & 0xF));
        v118[0] = v16;
        v118[1] = v30;
        v118[2] = v31;
        v118[3] = v32;
        if (v42 != *(v118 + (v35 & 0xF)))
        {
          break;
        }

        if (a6 == ++v35)
        {
          goto LABEL_25;
        }
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_73;
      }

      v84 = a8 + *v36;
      v116 = *(a8 + *v39);
      v85 = *&v84[4 * (*(&v116 | v35 & 0xF) & 0xF)];
      v86 = objc_opt_class();
      NSStringFromClass(v86);
      goto LABEL_72;
    }
  }

LABEL_25:
  v43.i64[0] = 0x100000001;
  v43.i64[1] = 0x100000001;
  v44 = 0;
  if (v15)
  {
    v45 = 0;
    v46.i64[0] = 0x100000001;
    v46.i64[1] = 0x100000001;
    v8.i32[0] = 1;
    v47.i64[0] = 0x100000001;
    v47.i64[1] = 0x100000001;
    v48.i64[0] = 0x100000001;
    v48.i64[1] = 0x100000001;
    v49.i64[0] = 0x100000001;
    v49.i64[1] = 0x100000001;
    do
    {
      v115[0] = v22;
      v115[1] = v24;
      v115[2] = v25;
      v115[3] = v26;
      v50 = *(v115 + (v45 & 0xF));
      v111 = v46;
      v112 = v47;
      v113 = v48;
      v114 = v49;
      v111.i32[v44 & 0xF] = v50;
      v9.i32[0] = v50;
      v9 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v9, v8)), 0);
      v49 = vbslq_s8(v9, v114, v49);
      v48 = vbslq_s8(v9, v113, v48);
      v47 = vbslq_s8(v9, v112, v47);
      v46 = vbslq_s8(v9, v111, v46);
      if (v50 != 1)
      {
        ++v44;
      }

      ++v45;
    }

    while (v15 != v45);
    if (a6)
    {
      goto LABEL_31;
    }

LABEL_37:
    v53.i64[0] = 0x100000001;
    v53.i64[1] = 0x100000001;
    v54.i64[0] = 0x100000001;
    v54.i64[1] = 0x100000001;
    v55.i64[0] = 0x100000001;
    v55.i64[1] = 0x100000001;
    goto LABEL_38;
  }

  v46.i64[0] = 0x100000001;
  v46.i64[1] = 0x100000001;
  v47.i64[0] = 0x100000001;
  v47.i64[1] = 0x100000001;
  v48.i64[0] = 0x100000001;
  v48.i64[1] = 0x100000001;
  v49.i64[0] = 0x100000001;
  v49.i64[1] = 0x100000001;
  if (!a6)
  {
    goto LABEL_37;
  }

LABEL_31:
  v51 = 0;
  v52 = 0;
  v43.i64[0] = 0x100000001;
  v43.i64[1] = 0x100000001;
  v25.i32[0] = 1;
  v53.i64[0] = 0x100000001;
  v53.i64[1] = 0x100000001;
  v54.i64[0] = 0x100000001;
  v54.i64[1] = 0x100000001;
  v55.i64[0] = 0x100000001;
  v55.i64[1] = 0x100000001;
  do
  {
    v110[0] = v16;
    v110[1] = v30;
    v110[2] = v31;
    v110[3] = v32;
    v56 = *(v110 + (v52 & 0xF));
    v106 = v43;
    v107 = v53;
    v108 = v54;
    v109 = v55;
    v106.i32[v51 & 0xF] = v56;
    v8.i32[0] = v56;
    v8 = vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v8, v25)), 0);
    v55 = vbslq_s8(v8, v109, v55);
    v54 = vbslq_s8(v8, v108, v54);
    v53 = vbslq_s8(v8, v107, v53);
    v43 = vbslq_s8(v8, v106, v43);
    if (v56 != 1)
    {
      ++v51;
    }

    ++v52;
  }

  while (a6 != v52);
LABEL_38:
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v131 = __121__MPSNDArrayIdentity_reshapeWithCommandEncoder_commandBuffer_sourceArray_dimensionCount_dimensionSizes_destinationArray___block_invoke;
  v132 = &unk_278B0B190;
  v133 = self;
  v134 = a3;
  v135 = a4;
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_s32(v46, v43), vceqq_s32(v48, v54)), vandq_s8(vceqq_s32(v47, v53), vceqq_s32(v49, v55)))) & 0x80000000) != 0)
  {
    result = aliasSqueezeExpand(a5, a4, a6, v16, v30, v31, v32);
    if (!a4 || !a8)
    {
      goto LABEL_75;
    }

    v62 = a8;
    v131(v130, result, a8);
    goto LABEL_64;
  }

  v97 = v49;
  v99 = v48;
  v101 = v47;
  v103 = v46;
  v95 = v31;
  v96 = v16;
  v93 = v30;
  v94 = v32;
  if (canAliasToShape(a5, a6, v16, v30, v31, v32))
  {
    if (a4 && a8)
    {
      v60 = flattenAlias(a4, a5, a6, v96, v93, v95, v94);
      if (!v60)
      {
        v60 = rawAlias(a4, a5, a6, v96, v93, v95, v94);
      }

      v131(v130, v60, a8);
      result = a8;
      goto LABEL_75;
    }

    v68 = MEMORY[0x277CD7418];
    v69 = (a5 + *MEMORY[0x277CD7418]);
    v102 = v69[3];
    v104 = v69[2];
    v98 = *v69;
    v100 = v69[1];
    v70 = MEMORY[0x277CD73D8];
    v92 = *(a5 + *MEMORY[0x277CD73D8]);
    result = flattenAlias(a4, a5, a6, v96, v93, v95, v94);
    if (result)
    {
      goto LABEL_75;
    }

    v71 = [a5 safeArrayViewWithCommandBuffer:a4 descriptor:objc_msgSend(a5 aliasing:{"descriptor"), 1}];
    v62 = v71;
    v72 = MEMORY[0x277CD73D0];
    v73 = *(a5 + 4 * (*(a5 + *v70) & 0xF) + *MEMORY[0x277CD73D0]);
    *&v71[*v13] = a6;
    *&v71[*v70] = v92;
    v74 = &v71[*MEMORY[0x277CD7410]];
    v74[2] = v95;
    v74[3] = v94;
    *v74 = v96;
    v74[1] = v93;
    v75 = &v71[*v68];
    *v75 = v98;
    *(v75 + 1) = v100;
    *(v75 + 2) = v104;
    *(v75 + 3) = v102;
    v76 = &v71[*v72];
    *v76 = v96;
    v76[1] = v93;
    v76[2] = v95;
    v76[3] = v94;
    if (v73 != v96.n128_u32[0])
    {
      *&v71[*MEMORY[0x277CD7400]] = (*(a5 + *MEMORY[0x277CD73C8]) >> 3) * v96.n128_u32[0];
      *&v71[*MEMORY[0x277CD7408]] = v96.n128_u32[0];
    }

    [v71 updateStrides];
LABEL_64:
    result = v62;
    goto LABEL_75;
  }

  if (a4)
  {
    v63 = a8;
  }

  else
  {
    v63 = 0;
  }

  if (!v63)
  {
    goto LABEL_74;
  }

  v64 = aliasSqueezeExpand(a5, a4, v44, v103, v101, v99, v97);
  v65 = v63;
  if (canAliasToShape(v63, v44, v103, v101, v99, v97))
  {
    v66 = MEMORY[0x277CD73E0];
    if (v65[*MEMORY[0x277CD73E0]] == 1)
    {
      ++*&v65[*MEMORY[0x277CD7498]];
    }

    v67 = flattenAlias(a4, v65, v44, v103, v101, v99, v97);
    if (!v67)
    {
      v67 = rawAlias(a4, v65, v44, v103, v101, v99, v97);
    }

    v131(v130, v64, v67);
    if (*(v67 + *v66) == 1)
    {
      [v67 setReadCount:0];
    }

    result = a8;
  }

  else
  {
    v143 = 0u;
    v142 = 0u;
    v141 = 0u;
    v140 = 0u;
    v139 = 0u;
    v138 = 0u;
    v137 = 0u;
    v144 = 0;
    v136 = 1;
    if (v44)
    {
      for (i = 0; i != v44; ++i)
      {
        v105[0] = v103;
        v105[1] = v101;
        v105[2] = v99;
        v105[3] = v97;
        *(&v136 + i) = *(v105 + (i & 0xF));
      }
    }

    v78 = MEMORY[0x277CD73C8];
    v79 = [MEMORY[0x277CD7268] descriptorWithDataType:*(v64 + *MEMORY[0x277CD73C8]) dimensionCount:v44 dimensionSizes:{&v136, v103.n128_f64[0], v101.n128_f64[0], v99.n128_f64[0], v97.n128_f64[0]}];
    *(v79 + *MEMORY[0x277CD7448]) = 1;
    v80 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a4 descriptor:v79];
    v131(v130, v64, v80);
    *&v80[*v13] = a6;
    v81 = &v80[*MEMORY[0x277CD73D0]];
    v81[2] = v95;
    v81[3] = v94;
    v82 = MEMORY[0x277CD7410];
    *v81 = v96;
    v81[1] = v93;
    v83 = &v80[*v82];
    v83[2] = v95;
    v83[3] = v94;
    *v83 = v96;
    v83[1] = v93;
    *&v80[*MEMORY[0x277CD7400]] = (*&v80[*v78] >> 3) * v96.n128_u32[0];
    *&v80[*MEMORY[0x277CD7408]] = v96.n128_u32[0];
    [v80 updateStrides];
    v131(v130, v80, v63);
    result = v63;
  }

LABEL_75:
  v87 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __121__MPSNDArrayIdentity_reshapeWithCommandEncoder_commandBuffer_sourceArray_dimensionCount_dimensionSizes_destinationArray___block_invoke(void *a1, char *a2, uint64_t a3)
{
  v56[1] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_15;
  }

  v4 = *&a2[*MEMORY[0x277CD73F0]];
  if (v4 < 5)
  {
    goto LABEL_15;
  }

  v5 = &a2[*MEMORY[0x277CD7410]];
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = *&a2[*MEMORY[0x277CD73D8]];
  v51 = v8;
  v52 = v9;
  v49 = v6;
  v50 = v7;
  v11 = *(&v49 + (BYTE1(v10) & 0xF));
  v47 = v8;
  v48 = v9;
  v45 = v6;
  v46 = v7;
  v12 = *(&v45 + (BYTE2(v10) & 0xF));
  v43 = v8;
  v44 = v9;
  v41 = v6;
  v42 = v7;
  v13 = *(&v41 + (BYTE3(v10) & 0xF));
  v14 = 1;
  for (i = 4; i != v4; v14 *= *(&v37 + (*(&v36 | i++ & 0xF) & 0xF)))
  {
    v36 = v10;
    v37 = v6;
    v38 = v7;
    v39 = v8;
    v40 = v9;
  }

  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  v16 = v14 <= 1 || *(&v32 + (v10 & 0xF)) * v11 * v12 * v13 >= 0x10001;
  if (!v16 || v14 >= 0x10)
  {
    v18 = a1[4];
    v19 = *(v18 + 664);
    if (!v19)
    {
      v27 = a1;
      v28 = a2;
      v29 = [MPSNDArrayOffsetIdentity alloc];
      *(v27[4] + 664) = -[MPSNDArrayOffsetIdentity initWithDevice:](v29, "initWithDevice:", [v28 device]);
      v56[0] = 16;
      v30 = objc_autoreleasePoolPush();
      v31 = [MEMORY[0x277CD7268] descriptorWithDataType:536870944 dimensionCount:1 dimensionSizes:v56];
      [v31 setPreferPackedRows:1];
      *(v27[4] + 672) = [objc_alloc(MEMORY[0x277CD7260]) initWithDevice:objc_msgSend(v28 descriptor:{"device"), v31}];
      memset(v55, 0, sizeof(v55));
      [*(v27[4] + 672) writeBytes:v55 strideBytes:0];
      objc_autoreleasePoolPop(v30);
      a1 = v27;
      a2 = v28;
      v18 = v27[4];
      v19 = *(v18 + 664);
    }

    v20 = a1[5];
    v21 = a1[6];
    v54[0] = a2;
    v54[1] = *(v18 + 672);
    v22 = MEMORY[0x277CBEA60];
    v23 = v54;
    v24 = 2;
  }

  else
  {
LABEL_15:
    v19 = a1[4];
    v20 = a1[5];
    v21 = a1[6];
    v53 = a2;
    v22 = MEMORY[0x277CBEA60];
    v23 = &v53;
    v24 = 1;
  }

  result = [v19 encodeToMPSCommandEncoder:v20 commandBuffer:v21 sourceArrays:objc_msgSend(v22 destinationArray:{"arrayWithObjects:count:", v23, v24, v32, v33, v34, v35), a3}];
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)workloadStatisticsForSourceArrays:(id)a3 destArrays:(id)a4 kernel:(id)a5 kernelDAGObject:(id)a6 sourceState:(id)a7
{
  v27.receiver = self;
  v27.super_class = MPSNDArrayIdentity;
  v8 = [(MPSNDArrayMultiaryBase *)&v27 workloadStatisticsForSourceArrays:a3 destArrays:a4 sourceState:a7, a6];
  [v8 setFloat32Ops:0.0];
  [v8 setFloat16Ops:0.0];
  [v8 float32Ops];
  v10 = v9;
  [v8 float16Ops];
  v12 = v10 + v11;
  [v8 deviceMemoryBytesRead];
  v14 = v13;
  [v8 deviceMemoryBytesWrite];
  v16 = v12 / (v14 + v15);
  [v8 float16Ops];
  v18 = v17;
  [v8 float32Ops];
  v20 = v19;
  [v8 deviceMemoryBytesRead];
  v22 = v21;
  [v8 deviceMemoryBytesWrite];
  MPSKernel_LogInfo(a5, v23, v24, v18, v20, v22, v25, *&v16);
  return v8;
}

@end