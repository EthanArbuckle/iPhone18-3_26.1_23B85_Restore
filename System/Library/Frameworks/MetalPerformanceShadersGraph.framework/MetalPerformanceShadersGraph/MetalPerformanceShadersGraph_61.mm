void *_ZN4mlir17RewritePatternSet6insertIJNS_3mps12_GLOBAL__N_121CanonicalizeReductionINS2_17ReductionArgMaxOpEEENS4_INS2_17ReductionArgMinOpEEENS4_INS2_14ReductionMaxOpEEENS4_INS2_14ReductionMinOpEEENS4_INS2_15ReductionProdOpEEENS4_INS2_14ReductionSumOpEEENS3_25CanonicalizeReductionAxesIS5_EENSH_IS7_EENSH_IS9_EENSH_ISB_EENSH_ISD_EENSH_ISF_EENS3_27CanonicalizeMatMulTransposeENS3_20CanonicalizeMatMul1DENS3_27CanonicalizeConvToDepthwiseINS2_8Conv2DOpEEENSQ_INS2_20Conv2DDataGradientOpEEENS3_33CanonicalizeSparseMatMulTransposeENS3_35CanonicalizeQuantizedMatmulTranposeENS3_7FuseRMSINS2_10MultiplyOpEEENSX_INS2_8DivideOpEEENS3_16CanonicalizeRoPEENS3_30SpaceToBatchDWConvBatchToSpaceENS3_24CanonicalizeReadVariableENS3_18ReshapeSDPAReshapeENS3_24CanonicalizeSparseMatMulENS3_40CanonicalizeQuantizedMatMulExpandSqueezeEERPNS_11MLIRContextEJEvEERS0_OT0_DpOT1_(void *a1, uint64_t *a2)
{
  v4 = operator new(0x60uLL);
  v5 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v4 + 1), "mps.reduction_argmax", 20, v551, v5, 0, 0);
  *v4 = &unk_1F5AFF310;
  if (!v4[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReduction<mlir::mps::ReductionArgMaxOp>]";
    v552 = 135;
    v6 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v552;
    }

    v8 = &v551[v7];
    v9 = v552 - v7;
    if (v552 - v7 >= 0x12)
    {
      v10 = 18;
    }

    else
    {
      v10 = v552 - v7;
    }

    v11 = &v8[v10];
    v12 = v9 - v10;
    if (v12 >= v12 - 1)
    {
      --v12;
    }

    v4[8] = v11;
    v4[9] = v12;
  }

  v13 = *(v4 + 22);
  if (v13 > *(v4 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 10), (v4 + 12), v13, 16);
    LODWORD(v13) = *(v4 + 22);
  }

  *(v4 + 22) = v13;
  v15 = a1[2];
  v14 = a1[3];
  if (v15 >= v14)
  {
    v17 = a1[1];
    v18 = v15 - v17;
    v19 = (v15 - v17) >> 3;
    v20 = v19 + 1;
    if ((v19 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v21 = v14 - v17;
    if (v21 >> 2 > v20)
    {
      v20 = v21 >> 2;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      if (v22 >> 61)
      {
        goto LABEL_679;
      }

      v23 = operator new(8 * v22);
    }

    else
    {
      v23 = 0;
    }

    v24 = &v23[8 * v19];
    *v24 = v4;
    v16 = v24 + 8;
    memcpy(v23, v17, v18);
    a1[1] = v23;
    a1[2] = v16;
    a1[3] = &v23[8 * v22];
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v15 = v4;
    v16 = v15 + 8;
  }

  a1[2] = v16;
  v25 = operator new(0x60uLL);
  v26 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v25 + 1), "mps.reduction_argmin", 20, v551, v26, 0, 0);
  *v25 = &unk_1F5AFF370;
  if (!v25[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReduction<mlir::mps::ReductionArgMinOp>]";
    v552 = 135;
    v27 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v552;
    }

    v29 = &v551[v28];
    v30 = v552 - v28;
    if (v552 - v28 >= 0x12)
    {
      v31 = 18;
    }

    else
    {
      v31 = v552 - v28;
    }

    v32 = &v29[v31];
    v33 = v30 - v31;
    if (v33 >= v33 - 1)
    {
      --v33;
    }

    v25[8] = v32;
    v25[9] = v33;
  }

  v34 = *(v25 + 22);
  if (v34 > *(v25 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v25 + 10), (v25 + 12), v34, 16);
    LODWORD(v34) = *(v25 + 22);
  }

  *(v25 + 22) = v34;
  v36 = a1[2];
  v35 = a1[3];
  if (v36 >= v35)
  {
    v38 = a1[1];
    v39 = v36 - v38;
    v40 = (v36 - v38) >> 3;
    v41 = v40 + 1;
    if ((v40 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v42 = v35 - v38;
    if (v42 >> 2 > v41)
    {
      v41 = v42 >> 2;
    }

    if (v42 >= 0x7FFFFFFFFFFFFFF8)
    {
      v43 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      if (v43 >> 61)
      {
        goto LABEL_679;
      }

      v44 = operator new(8 * v43);
    }

    else
    {
      v44 = 0;
    }

    v45 = &v44[8 * v40];
    *v45 = v25;
    v37 = v45 + 8;
    memcpy(v44, v38, v39);
    a1[1] = v44;
    a1[2] = v37;
    a1[3] = &v44[8 * v43];
    if (v38)
    {
      operator delete(v38);
    }
  }

  else
  {
    *v36 = v25;
    v37 = v36 + 8;
  }

  a1[2] = v37;
  v46 = operator new(0x60uLL);
  v47 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v46 + 1), "mps.reduction_max", 17, v551, v47, 0, 0);
  *v46 = &unk_1F5AFF3D0;
  if (!v46[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReduction<mlir::mps::ReductionMaxOp>]";
    v552 = 132;
    v48 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v48)
    {
      v49 = v48;
    }

    else
    {
      v49 = v552;
    }

    v50 = &v551[v49];
    v51 = v552 - v49;
    if (v552 - v49 >= 0x12)
    {
      v52 = 18;
    }

    else
    {
      v52 = v552 - v49;
    }

    v53 = &v50[v52];
    v54 = v51 - v52;
    if (v54 >= v54 - 1)
    {
      --v54;
    }

    v46[8] = v53;
    v46[9] = v54;
  }

  v55 = *(v46 + 22);
  if (v55 > *(v46 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v46 + 10), (v46 + 12), v55, 16);
    LODWORD(v55) = *(v46 + 22);
  }

  *(v46 + 22) = v55;
  v57 = a1[2];
  v56 = a1[3];
  if (v57 >= v56)
  {
    v59 = a1[1];
    v60 = v57 - v59;
    v61 = (v57 - v59) >> 3;
    v62 = v61 + 1;
    if ((v61 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v63 = v56 - v59;
    if (v63 >> 2 > v62)
    {
      v62 = v63 >> 2;
    }

    if (v63 >= 0x7FFFFFFFFFFFFFF8)
    {
      v64 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v64 = v62;
    }

    if (v64)
    {
      if (v64 >> 61)
      {
        goto LABEL_679;
      }

      v65 = operator new(8 * v64);
    }

    else
    {
      v65 = 0;
    }

    v66 = &v65[8 * v61];
    *v66 = v46;
    v58 = v66 + 8;
    memcpy(v65, v59, v60);
    a1[1] = v65;
    a1[2] = v58;
    a1[3] = &v65[8 * v64];
    if (v59)
    {
      operator delete(v59);
    }
  }

  else
  {
    *v57 = v46;
    v58 = v57 + 8;
  }

  a1[2] = v58;
  v67 = operator new(0x60uLL);
  v68 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v67 + 1), "mps.reduction_min", 17, v551, v68, 0, 0);
  *v67 = &unk_1F5AFF430;
  if (!v67[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReduction<mlir::mps::ReductionMinOp>]";
    v552 = 132;
    v69 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v69)
    {
      v70 = v69;
    }

    else
    {
      v70 = v552;
    }

    v71 = &v551[v70];
    v72 = v552 - v70;
    if (v552 - v70 >= 0x12)
    {
      v73 = 18;
    }

    else
    {
      v73 = v552 - v70;
    }

    v74 = &v71[v73];
    v75 = v72 - v73;
    if (v75 >= v75 - 1)
    {
      --v75;
    }

    v67[8] = v74;
    v67[9] = v75;
  }

  v76 = *(v67 + 22);
  if (v76 > *(v67 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v67 + 10), (v67 + 12), v76, 16);
    LODWORD(v76) = *(v67 + 22);
  }

  *(v67 + 22) = v76;
  v78 = a1[2];
  v77 = a1[3];
  if (v78 >= v77)
  {
    v80 = a1[1];
    v81 = v78 - v80;
    v82 = (v78 - v80) >> 3;
    v83 = v82 + 1;
    if ((v82 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v84 = v77 - v80;
    if (v84 >> 2 > v83)
    {
      v83 = v84 >> 2;
    }

    if (v84 >= 0x7FFFFFFFFFFFFFF8)
    {
      v85 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v85 = v83;
    }

    if (v85)
    {
      if (v85 >> 61)
      {
        goto LABEL_679;
      }

      v86 = operator new(8 * v85);
    }

    else
    {
      v86 = 0;
    }

    v87 = &v86[8 * v82];
    *v87 = v67;
    v79 = v87 + 8;
    memcpy(v86, v80, v81);
    a1[1] = v86;
    a1[2] = v79;
    a1[3] = &v86[8 * v85];
    if (v80)
    {
      operator delete(v80);
    }
  }

  else
  {
    *v78 = v67;
    v79 = v78 + 8;
  }

  a1[2] = v79;
  v88 = operator new(0x60uLL);
  v89 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v88 + 1), "mps.reduction_prod", 18, v551, v89, 0, 0);
  *v88 = &unk_1F5AFF490;
  if (!v88[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReduction<mlir::mps::ReductionProdOp>]";
    v552 = 133;
    v90 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v90)
    {
      v91 = v90;
    }

    else
    {
      v91 = v552;
    }

    v92 = &v551[v91];
    v93 = v552 - v91;
    if (v552 - v91 >= 0x12)
    {
      v94 = 18;
    }

    else
    {
      v94 = v552 - v91;
    }

    v95 = &v92[v94];
    v96 = v93 - v94;
    if (v96 >= v96 - 1)
    {
      --v96;
    }

    v88[8] = v95;
    v88[9] = v96;
  }

  v97 = *(v88 + 22);
  if (v97 > *(v88 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v88 + 10), (v88 + 12), v97, 16);
    LODWORD(v97) = *(v88 + 22);
  }

  *(v88 + 22) = v97;
  v99 = a1[2];
  v98 = a1[3];
  if (v99 >= v98)
  {
    v101 = a1[1];
    v102 = v99 - v101;
    v103 = (v99 - v101) >> 3;
    v104 = v103 + 1;
    if ((v103 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v105 = v98 - v101;
    if (v105 >> 2 > v104)
    {
      v104 = v105 >> 2;
    }

    if (v105 >= 0x7FFFFFFFFFFFFFF8)
    {
      v106 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v106 = v104;
    }

    if (v106)
    {
      if (v106 >> 61)
      {
        goto LABEL_679;
      }

      v107 = operator new(8 * v106);
    }

    else
    {
      v107 = 0;
    }

    v108 = &v107[8 * v103];
    *v108 = v88;
    v100 = v108 + 8;
    memcpy(v107, v101, v102);
    a1[1] = v107;
    a1[2] = v100;
    a1[3] = &v107[8 * v106];
    if (v101)
    {
      operator delete(v101);
    }
  }

  else
  {
    *v99 = v88;
    v100 = v99 + 8;
  }

  a1[2] = v100;
  v109 = operator new(0x60uLL);
  v110 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v109 + 1), "mps.reduction_sum", 17, v551, v110, 0, 0);
  *v109 = &unk_1F5AFF4F0;
  if (!v109[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReduction<mlir::mps::ReductionSumOp>]";
    v552 = 132;
    v111 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v111)
    {
      v112 = v111;
    }

    else
    {
      v112 = v552;
    }

    v113 = &v551[v112];
    v114 = v552 - v112;
    if (v552 - v112 >= 0x12)
    {
      v115 = 18;
    }

    else
    {
      v115 = v552 - v112;
    }

    v116 = &v113[v115];
    v117 = v114 - v115;
    if (v117 >= v117 - 1)
    {
      --v117;
    }

    v109[8] = v116;
    v109[9] = v117;
  }

  v118 = *(v109 + 22);
  if (v118 > *(v109 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v109 + 10), (v109 + 12), v118, 16);
    LODWORD(v118) = *(v109 + 22);
  }

  *(v109 + 22) = v118;
  v120 = a1[2];
  v119 = a1[3];
  if (v120 >= v119)
  {
    v122 = a1[1];
    v123 = v120 - v122;
    v124 = (v120 - v122) >> 3;
    v125 = v124 + 1;
    if ((v124 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v126 = v119 - v122;
    if (v126 >> 2 > v125)
    {
      v125 = v126 >> 2;
    }

    if (v126 >= 0x7FFFFFFFFFFFFFF8)
    {
      v127 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v127 = v125;
    }

    if (v127)
    {
      if (v127 >> 61)
      {
        goto LABEL_679;
      }

      v128 = operator new(8 * v127);
    }

    else
    {
      v128 = 0;
    }

    v129 = &v128[8 * v124];
    *v129 = v109;
    v121 = v129 + 8;
    memcpy(v128, v122, v123);
    a1[1] = v128;
    a1[2] = v121;
    a1[3] = &v128[8 * v127];
    if (v122)
    {
      operator delete(v122);
    }
  }

  else
  {
    *v120 = v109;
    v121 = v120 + 8;
  }

  a1[2] = v121;
  v130 = operator new(0x60uLL);
  v131 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v130 + 1), "mps.reduction_argmax", 20, v551, v131, 0, 0);
  *v130 = &unk_1F5AFF550;
  if (!v130[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReductionAxes<mlir::mps::ReductionArgMaxOp>]";
    v552 = 139;
    v132 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v132)
    {
      v133 = v132;
    }

    else
    {
      v133 = v552;
    }

    v134 = &v551[v133];
    v135 = v552 - v133;
    if (v552 - v133 >= 0x12)
    {
      v136 = 18;
    }

    else
    {
      v136 = v552 - v133;
    }

    v137 = &v134[v136];
    v138 = v135 - v136;
    if (v138 >= v138 - 1)
    {
      --v138;
    }

    v130[8] = v137;
    v130[9] = v138;
  }

  v139 = *(v130 + 22);
  if (v139 > *(v130 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v130 + 10), (v130 + 12), v139, 16);
    LODWORD(v139) = *(v130 + 22);
  }

  *(v130 + 22) = v139;
  v141 = a1[2];
  v140 = a1[3];
  if (v141 >= v140)
  {
    v143 = a1[1];
    v144 = v141 - v143;
    v145 = (v141 - v143) >> 3;
    v146 = v145 + 1;
    if ((v145 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v147 = v140 - v143;
    if (v147 >> 2 > v146)
    {
      v146 = v147 >> 2;
    }

    if (v147 >= 0x7FFFFFFFFFFFFFF8)
    {
      v148 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v148 = v146;
    }

    if (v148)
    {
      if (v148 >> 61)
      {
        goto LABEL_679;
      }

      v149 = operator new(8 * v148);
    }

    else
    {
      v149 = 0;
    }

    v150 = &v149[8 * v145];
    *v150 = v130;
    v142 = v150 + 8;
    memcpy(v149, v143, v144);
    a1[1] = v149;
    a1[2] = v142;
    a1[3] = &v149[8 * v148];
    if (v143)
    {
      operator delete(v143);
    }
  }

  else
  {
    *v141 = v130;
    v142 = v141 + 8;
  }

  a1[2] = v142;
  v151 = operator new(0x60uLL);
  v152 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v151 + 1), "mps.reduction_argmin", 20, v551, v152, 0, 0);
  *v151 = &unk_1F5AFF5B0;
  if (!v151[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReductionAxes<mlir::mps::ReductionArgMinOp>]";
    v552 = 139;
    v153 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v153)
    {
      v154 = v153;
    }

    else
    {
      v154 = v552;
    }

    v155 = &v551[v154];
    v156 = v552 - v154;
    if (v552 - v154 >= 0x12)
    {
      v157 = 18;
    }

    else
    {
      v157 = v552 - v154;
    }

    v158 = &v155[v157];
    v159 = v156 - v157;
    if (v159 >= v159 - 1)
    {
      --v159;
    }

    v151[8] = v158;
    v151[9] = v159;
  }

  v160 = *(v151 + 22);
  if (v160 > *(v151 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v151 + 10), (v151 + 12), v160, 16);
    LODWORD(v160) = *(v151 + 22);
  }

  *(v151 + 22) = v160;
  v162 = a1[2];
  v161 = a1[3];
  if (v162 >= v161)
  {
    v164 = a1[1];
    v165 = v162 - v164;
    v166 = (v162 - v164) >> 3;
    v167 = v166 + 1;
    if ((v166 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v168 = v161 - v164;
    if (v168 >> 2 > v167)
    {
      v167 = v168 >> 2;
    }

    if (v168 >= 0x7FFFFFFFFFFFFFF8)
    {
      v169 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v169 = v167;
    }

    if (v169)
    {
      if (v169 >> 61)
      {
        goto LABEL_679;
      }

      v170 = operator new(8 * v169);
    }

    else
    {
      v170 = 0;
    }

    v171 = &v170[8 * v166];
    *v171 = v151;
    v163 = v171 + 8;
    memcpy(v170, v164, v165);
    a1[1] = v170;
    a1[2] = v163;
    a1[3] = &v170[8 * v169];
    if (v164)
    {
      operator delete(v164);
    }
  }

  else
  {
    *v162 = v151;
    v163 = v162 + 8;
  }

  a1[2] = v163;
  v172 = operator new(0x60uLL);
  v173 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v172 + 1), "mps.reduction_max", 17, v551, v173, 0, 0);
  *v172 = &unk_1F5AFF610;
  if (!v172[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReductionAxes<mlir::mps::ReductionMaxOp>]";
    v552 = 136;
    v174 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v174)
    {
      v175 = v174;
    }

    else
    {
      v175 = v552;
    }

    v176 = &v551[v175];
    v177 = v552 - v175;
    if (v552 - v175 >= 0x12)
    {
      v178 = 18;
    }

    else
    {
      v178 = v552 - v175;
    }

    v179 = &v176[v178];
    v180 = v177 - v178;
    if (v180 >= v180 - 1)
    {
      --v180;
    }

    v172[8] = v179;
    v172[9] = v180;
  }

  v181 = *(v172 + 22);
  if (v181 > *(v172 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v172 + 10), (v172 + 12), v181, 16);
    LODWORD(v181) = *(v172 + 22);
  }

  *(v172 + 22) = v181;
  v183 = a1[2];
  v182 = a1[3];
  if (v183 >= v182)
  {
    v185 = a1[1];
    v186 = v183 - v185;
    v187 = (v183 - v185) >> 3;
    v188 = v187 + 1;
    if ((v187 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v189 = v182 - v185;
    if (v189 >> 2 > v188)
    {
      v188 = v189 >> 2;
    }

    if (v189 >= 0x7FFFFFFFFFFFFFF8)
    {
      v190 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v190 = v188;
    }

    if (v190)
    {
      if (v190 >> 61)
      {
        goto LABEL_679;
      }

      v191 = operator new(8 * v190);
    }

    else
    {
      v191 = 0;
    }

    v192 = &v191[8 * v187];
    *v192 = v172;
    v184 = v192 + 8;
    memcpy(v191, v185, v186);
    a1[1] = v191;
    a1[2] = v184;
    a1[3] = &v191[8 * v190];
    if (v185)
    {
      operator delete(v185);
    }
  }

  else
  {
    *v183 = v172;
    v184 = v183 + 8;
  }

  a1[2] = v184;
  v193 = operator new(0x60uLL);
  v194 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v193 + 1), "mps.reduction_min", 17, v551, v194, 0, 0);
  *v193 = &unk_1F5AFF670;
  if (!v193[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReductionAxes<mlir::mps::ReductionMinOp>]";
    v552 = 136;
    v195 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v195)
    {
      v196 = v195;
    }

    else
    {
      v196 = v552;
    }

    v197 = &v551[v196];
    v198 = v552 - v196;
    if (v552 - v196 >= 0x12)
    {
      v199 = 18;
    }

    else
    {
      v199 = v552 - v196;
    }

    v200 = &v197[v199];
    v201 = v198 - v199;
    if (v201 >= v201 - 1)
    {
      --v201;
    }

    v193[8] = v200;
    v193[9] = v201;
  }

  v202 = *(v193 + 22);
  if (v202 > *(v193 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v193 + 10), (v193 + 12), v202, 16);
    LODWORD(v202) = *(v193 + 22);
  }

  *(v193 + 22) = v202;
  v204 = a1[2];
  v203 = a1[3];
  if (v204 >= v203)
  {
    v206 = a1[1];
    v207 = v204 - v206;
    v208 = (v204 - v206) >> 3;
    v209 = v208 + 1;
    if ((v208 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v210 = v203 - v206;
    if (v210 >> 2 > v209)
    {
      v209 = v210 >> 2;
    }

    if (v210 >= 0x7FFFFFFFFFFFFFF8)
    {
      v211 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v211 = v209;
    }

    if (v211)
    {
      if (v211 >> 61)
      {
        goto LABEL_679;
      }

      v212 = operator new(8 * v211);
    }

    else
    {
      v212 = 0;
    }

    v213 = &v212[8 * v208];
    *v213 = v193;
    v205 = v213 + 8;
    memcpy(v212, v206, v207);
    a1[1] = v212;
    a1[2] = v205;
    a1[3] = &v212[8 * v211];
    if (v206)
    {
      operator delete(v206);
    }
  }

  else
  {
    *v204 = v193;
    v205 = v204 + 8;
  }

  a1[2] = v205;
  v214 = operator new(0x60uLL);
  v215 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v214 + 1), "mps.reduction_prod", 18, v551, v215, 0, 0);
  *v214 = &unk_1F5AFF6D0;
  if (!v214[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReductionAxes<mlir::mps::ReductionProdOp>]";
    v552 = 137;
    v216 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v216)
    {
      v217 = v216;
    }

    else
    {
      v217 = v552;
    }

    v218 = &v551[v217];
    v219 = v552 - v217;
    if (v552 - v217 >= 0x12)
    {
      v220 = 18;
    }

    else
    {
      v220 = v552 - v217;
    }

    v221 = &v218[v220];
    v222 = v219 - v220;
    if (v222 >= v222 - 1)
    {
      --v222;
    }

    v214[8] = v221;
    v214[9] = v222;
  }

  v223 = *(v214 + 22);
  if (v223 > *(v214 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v214 + 10), (v214 + 12), v223, 16);
    LODWORD(v223) = *(v214 + 22);
  }

  *(v214 + 22) = v223;
  v225 = a1[2];
  v224 = a1[3];
  if (v225 >= v224)
  {
    v227 = a1[1];
    v228 = v225 - v227;
    v229 = (v225 - v227) >> 3;
    v230 = v229 + 1;
    if ((v229 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v231 = v224 - v227;
    if (v231 >> 2 > v230)
    {
      v230 = v231 >> 2;
    }

    if (v231 >= 0x7FFFFFFFFFFFFFF8)
    {
      v232 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v232 = v230;
    }

    if (v232)
    {
      if (v232 >> 61)
      {
        goto LABEL_679;
      }

      v233 = operator new(8 * v232);
    }

    else
    {
      v233 = 0;
    }

    v234 = &v233[8 * v229];
    *v234 = v214;
    v226 = v234 + 8;
    memcpy(v233, v227, v228);
    a1[1] = v233;
    a1[2] = v226;
    a1[3] = &v233[8 * v232];
    if (v227)
    {
      operator delete(v227);
    }
  }

  else
  {
    *v225 = v214;
    v226 = v225 + 8;
  }

  a1[2] = v226;
  v235 = operator new(0x60uLL);
  v236 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v235 + 1), "mps.reduction_sum", 17, v551, v236, 0, 0);
  *v235 = &unk_1F5AFF730;
  if (!v235[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReductionAxes<mlir::mps::ReductionSumOp>]";
    v552 = 136;
    v237 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v237)
    {
      v238 = v237;
    }

    else
    {
      v238 = v552;
    }

    v239 = &v551[v238];
    v240 = v552 - v238;
    if (v552 - v238 >= 0x12)
    {
      v241 = 18;
    }

    else
    {
      v241 = v552 - v238;
    }

    v242 = &v239[v241];
    v243 = v240 - v241;
    if (v243 >= v243 - 1)
    {
      --v243;
    }

    v235[8] = v242;
    v235[9] = v243;
  }

  v244 = *(v235 + 22);
  if (v244 > *(v235 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v235 + 10), (v235 + 12), v244, 16);
    LODWORD(v244) = *(v235 + 22);
  }

  *(v235 + 22) = v244;
  v246 = a1[2];
  v245 = a1[3];
  if (v246 >= v245)
  {
    v248 = a1[1];
    v249 = v246 - v248;
    v250 = (v246 - v248) >> 3;
    v251 = v250 + 1;
    if ((v250 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v252 = v245 - v248;
    if (v252 >> 2 > v251)
    {
      v251 = v252 >> 2;
    }

    if (v252 >= 0x7FFFFFFFFFFFFFF8)
    {
      v253 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v253 = v251;
    }

    if (v253)
    {
      if (v253 >> 61)
      {
        goto LABEL_679;
      }

      v254 = operator new(8 * v253);
    }

    else
    {
      v254 = 0;
    }

    v255 = &v254[8 * v250];
    *v255 = v235;
    v247 = v255 + 8;
    memcpy(v254, v248, v249);
    a1[1] = v254;
    a1[2] = v247;
    a1[3] = &v254[8 * v253];
    if (v248)
    {
      operator delete(v248);
    }
  }

  else
  {
    *v246 = v235;
    v247 = v246 + 8;
  }

  a1[2] = v247;
  v256 = operator new(0x60uLL);
  v257 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v256 + 1), "mps.matmul", 10, v551, v257, 0, 0);
  *v256 = &unk_1F5AFF790;
  if (!v256[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeMatMulTranspose]";
    v552 = 111;
    v258 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v258)
    {
      v259 = v258;
    }

    else
    {
      v259 = v552;
    }

    v260 = &v551[v259];
    v261 = v552 - v259;
    if (v552 - v259 >= 0x12)
    {
      v262 = 18;
    }

    else
    {
      v262 = v552 - v259;
    }

    v263 = &v260[v262];
    v264 = v261 - v262;
    if (v264 >= v264 - 1)
    {
      --v264;
    }

    v256[8] = v263;
    v256[9] = v264;
  }

  v265 = *(v256 + 22);
  if (v265 > *(v256 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v256 + 10), (v256 + 12), v265, 16);
    LODWORD(v265) = *(v256 + 22);
  }

  *(v256 + 22) = v265;
  v267 = a1[2];
  v266 = a1[3];
  if (v267 >= v266)
  {
    v269 = a1[1];
    v270 = v267 - v269;
    v271 = (v267 - v269) >> 3;
    v272 = v271 + 1;
    if ((v271 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v273 = v266 - v269;
    if (v273 >> 2 > v272)
    {
      v272 = v273 >> 2;
    }

    if (v273 >= 0x7FFFFFFFFFFFFFF8)
    {
      v274 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v274 = v272;
    }

    if (v274)
    {
      if (v274 >> 61)
      {
        goto LABEL_679;
      }

      v275 = operator new(8 * v274);
    }

    else
    {
      v275 = 0;
    }

    v276 = &v275[8 * v271];
    *v276 = v256;
    v268 = v276 + 8;
    memcpy(v275, v269, v270);
    a1[1] = v275;
    a1[2] = v268;
    a1[3] = &v275[8 * v274];
    if (v269)
    {
      operator delete(v269);
    }
  }

  else
  {
    *v267 = v256;
    v268 = v267 + 8;
  }

  a1[2] = v268;
  v277 = operator new(0x60uLL);
  v278 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v277 + 1), "mps.matmul", 10, v551, v278, 0, 0);
  *v277 = &unk_1F5AFF7F0;
  if (!v277[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeMatMul1D]";
    v552 = 104;
    v279 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v279)
    {
      v280 = v279;
    }

    else
    {
      v280 = v552;
    }

    v281 = &v551[v280];
    v282 = v552 - v280;
    if (v552 - v280 >= 0x12)
    {
      v283 = 18;
    }

    else
    {
      v283 = v552 - v280;
    }

    v284 = &v281[v283];
    v285 = v282 - v283;
    if (v285 >= v285 - 1)
    {
      --v285;
    }

    v277[8] = v284;
    v277[9] = v285;
  }

  v286 = *(v277 + 22);
  if (v286 > *(v277 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v277 + 10), (v277 + 12), v286, 16);
    LODWORD(v286) = *(v277 + 22);
  }

  *(v277 + 22) = v286;
  v288 = a1[2];
  v287 = a1[3];
  if (v288 >= v287)
  {
    v290 = a1[1];
    v291 = v288 - v290;
    v292 = (v288 - v290) >> 3;
    v293 = v292 + 1;
    if ((v292 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v294 = v287 - v290;
    if (v294 >> 2 > v293)
    {
      v293 = v294 >> 2;
    }

    if (v294 >= 0x7FFFFFFFFFFFFFF8)
    {
      v295 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v295 = v293;
    }

    if (v295)
    {
      if (v295 >> 61)
      {
        goto LABEL_679;
      }

      v296 = operator new(8 * v295);
    }

    else
    {
      v296 = 0;
    }

    v297 = &v296[8 * v292];
    *v297 = v277;
    v289 = v297 + 8;
    memcpy(v296, v290, v291);
    a1[1] = v296;
    a1[2] = v289;
    a1[3] = &v296[8 * v295];
    if (v290)
    {
      operator delete(v290);
    }
  }

  else
  {
    *v288 = v277;
    v289 = v288 + 8;
  }

  a1[2] = v289;
  v298 = operator new(0x60uLL);
  v299 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v298 + 1), "mps.conv_2d", 11, v551, v299, 0, 0);
  *v298 = &unk_1F5AFF850;
  if (!v298[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeConvToDepthwise<mlir::mps::Conv2DOp>]";
    v552 = 132;
    v300 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v300)
    {
      v301 = v300;
    }

    else
    {
      v301 = v552;
    }

    v302 = &v551[v301];
    v303 = v552 - v301;
    if (v552 - v301 >= 0x12)
    {
      v304 = 18;
    }

    else
    {
      v304 = v552 - v301;
    }

    v305 = &v302[v304];
    v306 = v303 - v304;
    if (v306 >= v306 - 1)
    {
      --v306;
    }

    v298[8] = v305;
    v298[9] = v306;
  }

  v307 = *(v298 + 22);
  if (v307 > *(v298 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v298 + 10), (v298 + 12), v307, 16);
    LODWORD(v307) = *(v298 + 22);
  }

  *(v298 + 22) = v307;
  v309 = a1[2];
  v308 = a1[3];
  if (v309 >= v308)
  {
    v311 = a1[1];
    v312 = v309 - v311;
    v313 = (v309 - v311) >> 3;
    v314 = v313 + 1;
    if ((v313 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v315 = v308 - v311;
    if (v315 >> 2 > v314)
    {
      v314 = v315 >> 2;
    }

    if (v315 >= 0x7FFFFFFFFFFFFFF8)
    {
      v316 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v316 = v314;
    }

    if (v316)
    {
      if (v316 >> 61)
      {
        goto LABEL_679;
      }

      v317 = operator new(8 * v316);
    }

    else
    {
      v317 = 0;
    }

    v318 = &v317[8 * v313];
    *v318 = v298;
    v310 = v318 + 8;
    memcpy(v317, v311, v312);
    a1[1] = v317;
    a1[2] = v310;
    a1[3] = &v317[8 * v316];
    if (v311)
    {
      operator delete(v311);
    }
  }

  else
  {
    *v309 = v298;
    v310 = v309 + 8;
  }

  a1[2] = v310;
  v319 = operator new(0x60uLL);
  v320 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v319 + 1), "mps.conv_2d_data_gradient", 25, v551, v320, 0, 0);
  *v319 = &unk_1F5AFF8B0;
  if (!v319[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeConvToDepthwise<mlir::mps::Conv2DDataGradientOp>]";
    v552 = 144;
    v321 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v321)
    {
      v322 = v321;
    }

    else
    {
      v322 = v552;
    }

    v323 = &v551[v322];
    v324 = v552 - v322;
    if (v552 - v322 >= 0x12)
    {
      v325 = 18;
    }

    else
    {
      v325 = v552 - v322;
    }

    v326 = &v323[v325];
    v327 = v324 - v325;
    if (v327 >= v327 - 1)
    {
      --v327;
    }

    v319[8] = v326;
    v319[9] = v327;
  }

  v328 = *(v319 + 22);
  if (v328 > *(v319 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v319 + 10), (v319 + 12), v328, 16);
    LODWORD(v328) = *(v319 + 22);
  }

  *(v319 + 22) = v328;
  v330 = a1[2];
  v329 = a1[3];
  if (v330 >= v329)
  {
    v332 = a1[1];
    v333 = v330 - v332;
    v334 = (v330 - v332) >> 3;
    v335 = v334 + 1;
    if ((v334 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v336 = v329 - v332;
    if (v336 >> 2 > v335)
    {
      v335 = v336 >> 2;
    }

    if (v336 >= 0x7FFFFFFFFFFFFFF8)
    {
      v337 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v337 = v335;
    }

    if (v337)
    {
      if (v337 >> 61)
      {
        goto LABEL_679;
      }

      v338 = operator new(8 * v337);
    }

    else
    {
      v338 = 0;
    }

    v339 = &v338[8 * v334];
    *v339 = v319;
    v331 = v339 + 8;
    memcpy(v338, v332, v333);
    a1[1] = v338;
    a1[2] = v331;
    a1[3] = &v338[8 * v337];
    if (v332)
    {
      operator delete(v332);
    }
  }

  else
  {
    *v330 = v319;
    v331 = v330 + 8;
  }

  a1[2] = v331;
  v340 = operator new(0x60uLL);
  v341 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v340 + 1), "mpsx.sparse_dense_matmul", 24, v551, v341, 0, 0);
  *v340 = &unk_1F5AFF910;
  if (!v340[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeSparseMatMulTranspose]";
    v552 = 117;
    v342 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v342)
    {
      v343 = v342;
    }

    else
    {
      v343 = v552;
    }

    v344 = &v551[v343];
    v345 = v552 - v343;
    if (v552 - v343 >= 0x12)
    {
      v346 = 18;
    }

    else
    {
      v346 = v552 - v343;
    }

    v347 = &v344[v346];
    v348 = v345 - v346;
    if (v348 >= v348 - 1)
    {
      --v348;
    }

    v340[8] = v347;
    v340[9] = v348;
  }

  v349 = *(v340 + 22);
  if (v349 > *(v340 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v340 + 10), (v340 + 12), v349, 16);
    LODWORD(v349) = *(v340 + 22);
  }

  *(v340 + 22) = v349;
  v351 = a1[2];
  v350 = a1[3];
  if (v351 >= v350)
  {
    v353 = a1[1];
    v354 = v351 - v353;
    v355 = (v351 - v353) >> 3;
    v356 = v355 + 1;
    if ((v355 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v357 = v350 - v353;
    if (v357 >> 2 > v356)
    {
      v356 = v357 >> 2;
    }

    if (v357 >= 0x7FFFFFFFFFFFFFF8)
    {
      v358 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v358 = v356;
    }

    if (v358)
    {
      if (v358 >> 61)
      {
        goto LABEL_679;
      }

      v359 = operator new(8 * v358);
    }

    else
    {
      v359 = 0;
    }

    v360 = &v359[8 * v355];
    *v360 = v340;
    v352 = v360 + 8;
    memcpy(v359, v353, v354);
    a1[1] = v359;
    a1[2] = v352;
    a1[3] = &v359[8 * v358];
    if (v353)
    {
      operator delete(v353);
    }
  }

  else
  {
    *v351 = v340;
    v352 = v351 + 8;
  }

  a1[2] = v352;
  v361 = operator new(0x60uLL);
  v362 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v361 + 1), "mpsx.quantized_matmul", 21, v551, v362, 0, 0);
  *v361 = &unk_1F5AFF970;
  if (!v361[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeQuantizedMatmulTranpose]";
    v552 = 119;
    v363 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v363)
    {
      v364 = v363;
    }

    else
    {
      v364 = v552;
    }

    v365 = &v551[v364];
    v366 = v552 - v364;
    if (v552 - v364 >= 0x12)
    {
      v367 = 18;
    }

    else
    {
      v367 = v552 - v364;
    }

    v368 = &v365[v367];
    v369 = v366 - v367;
    if (v369 >= v369 - 1)
    {
      --v369;
    }

    v361[8] = v368;
    v361[9] = v369;
  }

  v370 = *(v361 + 22);
  if (v370 > *(v361 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v361 + 10), (v361 + 12), v370, 16);
    LODWORD(v370) = *(v361 + 22);
  }

  *(v361 + 22) = v370;
  v372 = a1[2];
  v371 = a1[3];
  if (v372 >= v371)
  {
    v374 = a1[1];
    v375 = v372 - v374;
    v376 = (v372 - v374) >> 3;
    v377 = v376 + 1;
    if ((v376 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v378 = v371 - v374;
    if (v378 >> 2 > v377)
    {
      v377 = v378 >> 2;
    }

    if (v378 >= 0x7FFFFFFFFFFFFFF8)
    {
      v379 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v379 = v377;
    }

    if (v379)
    {
      if (v379 >> 61)
      {
        goto LABEL_679;
      }

      v380 = operator new(8 * v379);
    }

    else
    {
      v380 = 0;
    }

    v381 = &v380[8 * v376];
    *v381 = v361;
    v373 = v381 + 8;
    memcpy(v380, v374, v375);
    a1[1] = v380;
    a1[2] = v373;
    a1[3] = &v380[8 * v379];
    if (v374)
    {
      operator delete(v374);
    }
  }

  else
  {
    *v372 = v361;
    v373 = v372 + 8;
  }

  a1[2] = v373;
  v382 = operator new(0x60uLL);
  v383 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v382 + 1), "mps.multiply", 12, v551, v383, 0, 0);
  *v382 = &unk_1F5AFF9D0;
  if (!v382[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::FuseRMS<mlir::mps::MultiplyOp>]";
    v552 = 114;
    v384 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v384)
    {
      v385 = v384;
    }

    else
    {
      v385 = v552;
    }

    v386 = &v551[v385];
    v387 = v552 - v385;
    if (v552 - v385 >= 0x12)
    {
      v388 = 18;
    }

    else
    {
      v388 = v552 - v385;
    }

    v389 = &v386[v388];
    v390 = v387 - v388;
    if (v390 >= v390 - 1)
    {
      --v390;
    }

    v382[8] = v389;
    v382[9] = v390;
  }

  v391 = *(v382 + 22);
  if (v391 > *(v382 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v382 + 10), (v382 + 12), v391, 16);
    LODWORD(v391) = *(v382 + 22);
  }

  *(v382 + 22) = v391;
  v393 = a1[2];
  v392 = a1[3];
  if (v393 >= v392)
  {
    v395 = a1[1];
    v396 = v393 - v395;
    v397 = (v393 - v395) >> 3;
    v398 = v397 + 1;
    if ((v397 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v399 = v392 - v395;
    if (v399 >> 2 > v398)
    {
      v398 = v399 >> 2;
    }

    if (v399 >= 0x7FFFFFFFFFFFFFF8)
    {
      v400 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v400 = v398;
    }

    if (v400)
    {
      if (v400 >> 61)
      {
        goto LABEL_679;
      }

      v401 = operator new(8 * v400);
    }

    else
    {
      v401 = 0;
    }

    v402 = &v401[8 * v397];
    *v402 = v382;
    v394 = v402 + 8;
    memcpy(v401, v395, v396);
    a1[1] = v401;
    a1[2] = v394;
    a1[3] = &v401[8 * v400];
    if (v395)
    {
      operator delete(v395);
    }
  }

  else
  {
    *v393 = v382;
    v394 = v393 + 8;
  }

  a1[2] = v394;
  v403 = operator new(0x60uLL);
  v404 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v403 + 1), "mps.divide", 10, v551, v404, 0, 0);
  *v403 = &unk_1F5AFFA30;
  if (!v403[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::FuseRMS<mlir::mps::DivideOp>]";
    v552 = 112;
    v405 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v405)
    {
      v406 = v405;
    }

    else
    {
      v406 = v552;
    }

    v407 = &v551[v406];
    v408 = v552 - v406;
    if (v552 - v406 >= 0x12)
    {
      v409 = 18;
    }

    else
    {
      v409 = v552 - v406;
    }

    v410 = &v407[v409];
    v411 = v408 - v409;
    if (v411 >= v411 - 1)
    {
      --v411;
    }

    v403[8] = v410;
    v403[9] = v411;
  }

  v412 = *(v403 + 22);
  if (v412 > *(v403 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v403 + 10), (v403 + 12), v412, 16);
    LODWORD(v412) = *(v403 + 22);
  }

  *(v403 + 22) = v412;
  v414 = a1[2];
  v413 = a1[3];
  if (v414 >= v413)
  {
    v416 = a1[1];
    v417 = v414 - v416;
    v418 = (v414 - v416) >> 3;
    v419 = v418 + 1;
    if ((v418 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v420 = v413 - v416;
    if (v420 >> 2 > v419)
    {
      v419 = v420 >> 2;
    }

    if (v420 >= 0x7FFFFFFFFFFFFFF8)
    {
      v421 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v421 = v419;
    }

    if (v421)
    {
      if (v421 >> 61)
      {
        goto LABEL_679;
      }

      v422 = operator new(8 * v421);
    }

    else
    {
      v422 = 0;
    }

    v423 = &v422[8 * v418];
    *v423 = v403;
    v415 = v423 + 8;
    memcpy(v422, v416, v417);
    a1[1] = v422;
    a1[2] = v415;
    a1[3] = &v422[8 * v421];
    if (v416)
    {
      operator delete(v416);
    }
  }

  else
  {
    *v414 = v403;
    v415 = v414 + 8;
  }

  a1[2] = v415;
  v424 = operator new(0x60uLL);
  v425 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v424 + 1), "mps.add", 7, v551, v425, 0, 0);
  *v424 = &unk_1F5AFFA90;
  if (!v424[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeRoPE]";
    v552 = 100;
    v426 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v426)
    {
      v427 = v426;
    }

    else
    {
      v427 = v552;
    }

    v428 = &v551[v427];
    v429 = v552 - v427;
    if (v552 - v427 >= 0x12)
    {
      v430 = 18;
    }

    else
    {
      v430 = v552 - v427;
    }

    v431 = &v428[v430];
    v432 = v429 - v430;
    if (v432 >= v432 - 1)
    {
      --v432;
    }

    v424[8] = v431;
    v424[9] = v432;
  }

  v433 = *(v424 + 22);
  if (v433 > *(v424 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v424 + 10), (v424 + 12), v433, 16);
    LODWORD(v433) = *(v424 + 22);
  }

  *(v424 + 22) = v433;
  v435 = a1[2];
  v434 = a1[3];
  if (v435 >= v434)
  {
    v437 = a1[1];
    v438 = v435 - v437;
    v439 = (v435 - v437) >> 3;
    v440 = v439 + 1;
    if ((v439 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v441 = v434 - v437;
    if (v441 >> 2 > v440)
    {
      v440 = v441 >> 2;
    }

    if (v441 >= 0x7FFFFFFFFFFFFFF8)
    {
      v442 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v442 = v440;
    }

    if (v442)
    {
      if (v442 >> 61)
      {
        goto LABEL_679;
      }

      v443 = operator new(8 * v442);
    }

    else
    {
      v443 = 0;
    }

    v444 = &v443[8 * v439];
    *v444 = v424;
    v436 = v444 + 8;
    memcpy(v443, v437, v438);
    a1[1] = v443;
    a1[2] = v436;
    a1[3] = &v443[8 * v442];
    if (v437)
    {
      operator delete(v437);
    }
  }

  else
  {
    *v435 = v424;
    v436 = v435 + 8;
  }

  a1[2] = v436;
  v445 = operator new(0x60uLL);
  v446 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v445 + 1), "mps.batch_to_space", 18, v551, v446, 0, 0);
  *v445 = &unk_1F5AFFAF0;
  if (!v445[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::SpaceToBatchDWConvBatchToSpace]";
    v552 = 114;
    v447 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v447)
    {
      v448 = v447;
    }

    else
    {
      v448 = v552;
    }

    v449 = &v551[v448];
    v450 = v552 - v448;
    if (v552 - v448 >= 0x12)
    {
      v451 = 18;
    }

    else
    {
      v451 = v552 - v448;
    }

    v452 = &v449[v451];
    v453 = v450 - v451;
    if (v453 >= v453 - 1)
    {
      --v453;
    }

    v445[8] = v452;
    v445[9] = v453;
  }

  v454 = *(v445 + 22);
  if (v454 > *(v445 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v445 + 10), (v445 + 12), v454, 16);
    LODWORD(v454) = *(v445 + 22);
  }

  *(v445 + 22) = v454;
  v456 = a1[2];
  v455 = a1[3];
  if (v456 >= v455)
  {
    v458 = a1[1];
    v459 = v456 - v458;
    v460 = (v456 - v458) >> 3;
    v461 = v460 + 1;
    if ((v460 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v462 = v455 - v458;
    if (v462 >> 2 > v461)
    {
      v461 = v462 >> 2;
    }

    if (v462 >= 0x7FFFFFFFFFFFFFF8)
    {
      v463 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v463 = v461;
    }

    if (v463)
    {
      if (v463 >> 61)
      {
        goto LABEL_679;
      }

      v464 = operator new(8 * v463);
    }

    else
    {
      v464 = 0;
    }

    v465 = &v464[8 * v460];
    *v465 = v445;
    v457 = v465 + 8;
    memcpy(v464, v458, v459);
    a1[1] = v464;
    a1[2] = v457;
    a1[3] = &v464[8 * v463];
    if (v458)
    {
      operator delete(v458);
    }
  }

  else
  {
    *v456 = v445;
    v457 = v456 + 8;
  }

  a1[2] = v457;
  v466 = operator new(0x60uLL);
  v467 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v466 + 1), "mps.read_variable", 17, v551, v467, 0, 0);
  *v466 = &unk_1F5AFFB50;
  if (!v466[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeReadVariable]";
    v552 = 108;
    v468 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v468)
    {
      v469 = v468;
    }

    else
    {
      v469 = v552;
    }

    v470 = &v551[v469];
    v471 = v552 - v469;
    if (v552 - v469 >= 0x12)
    {
      v472 = 18;
    }

    else
    {
      v472 = v552 - v469;
    }

    v473 = &v470[v472];
    v474 = v471 - v472;
    if (v474 >= v474 - 1)
    {
      --v474;
    }

    v466[8] = v473;
    v466[9] = v474;
  }

  v475 = *(v466 + 22);
  if (v475 > *(v466 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v466 + 10), (v466 + 12), v475, 16);
    LODWORD(v475) = *(v466 + 22);
  }

  *(v466 + 22) = v475;
  v477 = a1[2];
  v476 = a1[3];
  if (v477 >= v476)
  {
    v479 = a1[1];
    v480 = v477 - v479;
    v481 = (v477 - v479) >> 3;
    v482 = v481 + 1;
    if ((v481 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v483 = v476 - v479;
    if (v483 >> 2 > v482)
    {
      v482 = v483 >> 2;
    }

    if (v483 >= 0x7FFFFFFFFFFFFFF8)
    {
      v484 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v484 = v482;
    }

    if (v484)
    {
      if (v484 >> 61)
      {
        goto LABEL_679;
      }

      v485 = operator new(8 * v484);
    }

    else
    {
      v485 = 0;
    }

    v486 = &v485[8 * v481];
    *v486 = v466;
    v478 = v486 + 8;
    memcpy(v485, v479, v480);
    a1[1] = v485;
    a1[2] = v478;
    a1[3] = &v485[8 * v484];
    if (v479)
    {
      operator delete(v479);
    }
  }

  else
  {
    *v477 = v466;
    v478 = v477 + 8;
  }

  a1[2] = v478;
  v487 = operator new(0x60uLL);
  v488 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v487 + 1), "mps.reshape", 11, v551, v488, 0, 0);
  *v487 = &unk_1F5AFFBB0;
  if (!v487[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ReshapeSDPAReshape]";
    v552 = 102;
    v489 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v489)
    {
      v490 = v489;
    }

    else
    {
      v490 = v552;
    }

    v491 = &v551[v490];
    v492 = v552 - v490;
    if (v552 - v490 >= 0x12)
    {
      v493 = 18;
    }

    else
    {
      v493 = v552 - v490;
    }

    v494 = &v491[v493];
    v495 = v492 - v493;
    if (v495 >= v495 - 1)
    {
      --v495;
    }

    v487[8] = v494;
    v487[9] = v495;
  }

  v496 = *(v487 + 22);
  if (v496 > *(v487 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v487 + 10), (v487 + 12), v496, 16);
    LODWORD(v496) = *(v487 + 22);
  }

  *(v487 + 22) = v496;
  v498 = a1[2];
  v497 = a1[3];
  if (v498 >= v497)
  {
    v500 = a1[1];
    v501 = v498 - v500;
    v502 = (v498 - v500) >> 3;
    v503 = v502 + 1;
    if ((v502 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v504 = v497 - v500;
    if (v504 >> 2 > v503)
    {
      v503 = v504 >> 2;
    }

    if (v504 >= 0x7FFFFFFFFFFFFFF8)
    {
      v505 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v505 = v503;
    }

    if (v505)
    {
      if (v505 >> 61)
      {
        goto LABEL_679;
      }

      v506 = operator new(8 * v505);
    }

    else
    {
      v506 = 0;
    }

    v507 = &v506[8 * v502];
    *v507 = v487;
    v499 = v507 + 8;
    memcpy(v506, v500, v501);
    a1[1] = v506;
    a1[2] = v499;
    a1[3] = &v506[8 * v505];
    if (v500)
    {
      operator delete(v500);
    }
  }

  else
  {
    *v498 = v487;
    v499 = v498 + 8;
  }

  a1[2] = v499;
  v508 = operator new(0x60uLL);
  v509 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v508 + 1), "mps.matmul", 10, v551, v509, 0, 0);
  *v508 = &unk_1F5AFFC10;
  if (!v508[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeSparseMatMul]";
    v552 = 108;
    v510 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v510)
    {
      v511 = v510;
    }

    else
    {
      v511 = v552;
    }

    v512 = &v551[v511];
    v513 = v552 - v511;
    if (v552 - v511 >= 0x12)
    {
      v514 = 18;
    }

    else
    {
      v514 = v552 - v511;
    }

    v515 = &v512[v514];
    v516 = v513 - v514;
    if (v516 >= v516 - 1)
    {
      --v516;
    }

    v508[8] = v515;
    v508[9] = v516;
  }

  v517 = *(v508 + 22);
  if (v517 > *(v508 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v508 + 10), (v508 + 12), v517, 16);
    LODWORD(v517) = *(v508 + 22);
  }

  *(v508 + 22) = v517;
  v519 = a1[2];
  v518 = a1[3];
  if (v519 >= v518)
  {
    v521 = a1[1];
    v522 = v519 - v521;
    v523 = (v519 - v521) >> 3;
    v524 = v523 + 1;
    if ((v523 + 1) >> 61)
    {
      goto LABEL_678;
    }

    v525 = v518 - v521;
    if (v525 >> 2 > v524)
    {
      v524 = v525 >> 2;
    }

    if (v525 >= 0x7FFFFFFFFFFFFFF8)
    {
      v526 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v526 = v524;
    }

    if (v526)
    {
      if (v526 >> 61)
      {
        goto LABEL_679;
      }

      v527 = operator new(8 * v526);
    }

    else
    {
      v527 = 0;
    }

    v528 = &v527[8 * v523];
    *v528 = v508;
    v520 = v528 + 8;
    memcpy(v527, v521, v522);
    a1[1] = v527;
    a1[2] = v520;
    a1[3] = &v527[8 * v526];
    if (v521)
    {
      operator delete(v521);
    }
  }

  else
  {
    *v519 = v508;
    v520 = v519 + 8;
  }

  a1[2] = v520;
  v529 = operator new(0x60uLL);
  v530 = *a2;
  mlir::PatternBenefit::PatternBenefit(&v551, 1);
  mlir::Pattern::Pattern((v529 + 1), "mpsx.quantized_matmul", 21, v551, v530, 0, 0);
  *v529 = &unk_1F5AFFC70;
  if (!v529[9])
  {
    v551 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::CanonicalizeQuantizedMatMulExpandSqueeze]";
    v552 = 124;
    v531 = llvm::StringRef::find(&v551, "DesiredTypeName = ", 0x12uLL, 0);
    if (v552 >= v531)
    {
      v532 = v531;
    }

    else
    {
      v532 = v552;
    }

    v533 = &v551[v532];
    v534 = v552 - v532;
    if (v552 - v532 >= 0x12)
    {
      v535 = 18;
    }

    else
    {
      v535 = v552 - v532;
    }

    v536 = &v533[v535];
    v537 = v534 - v535;
    if (v537 >= v537 - 1)
    {
      --v537;
    }

    v529[8] = v536;
    v529[9] = v537;
  }

  v538 = *(v529 + 22);
  if (v538 > *(v529 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v529 + 10), (v529 + 12), v538, 16);
    LODWORD(v538) = *(v529 + 22);
  }

  *(v529 + 22) = v538;
  v540 = a1[2];
  v539 = a1[3];
  if (v540 < v539)
  {
    *v540 = v529;
    v541 = v540 + 8;
    goto LABEL_677;
  }

  v542 = a1[1];
  v543 = v540 - v542;
  v544 = (v540 - v542) >> 3;
  v545 = v544 + 1;
  if ((v544 + 1) >> 61)
  {
LABEL_678:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v546 = v539 - v542;
  if (v546 >> 2 > v545)
  {
    v545 = v546 >> 2;
  }

  if (v546 >= 0x7FFFFFFFFFFFFFF8)
  {
    v547 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v547 = v545;
  }

  if (v547)
  {
    if (!(v547 >> 61))
    {
      v548 = operator new(8 * v547);
      goto LABEL_675;
    }

LABEL_679:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v548 = 0;
LABEL_675:
  v549 = &v548[8 * v544];
  *v549 = v529;
  v541 = v549 + 8;
  memcpy(v548, v542, v543);
  a1[1] = v548;
  a1[2] = v541;
  a1[3] = &v548[8 * v547];
  if (v542)
  {
    operator delete(v542);
  }

LABEL_677:
  a1[2] = v541;
  return a1;
}

void mlir::mps::anonymous namespace::MPS_ComplexGEMM_CC::~MPS_ComplexGEMM_CC(mlir::mps::_anonymous_namespace_::MPS_ComplexGEMM_CC *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpBuilder::create<mlir::mps::RealPartOp,mlir::Value &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RealPartOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::RealPartOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::RealPartOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::RealPartOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value &,mlir::Value &,mlir::BoolAttr &,mlir::BoolAttr &>(mlir::Float32Type **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::MatMulOp,mlir::Value,mlir::Value,BOOL,BOOL>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::MatMulOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ImaginaryPartOp,mlir::Value &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ImaginaryPartOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ImaginaryPartOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::ImaginaryPartOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ImaginaryPartOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::mps::CreateComplexOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CreateComplexOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CreateComplexOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CreateComplexOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ComplexGEMM_CC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'lhs_c' failed to satisfy constraint: 'is complex type'";
  v13 = 64;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ComplexGEMM_CC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'rhs_c' failed to satisfy constraint: 'is complex type'";
  v13 = 64;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_ComplexGEMM_CR::~MPS_ComplexGEMM_CR(mlir::mps::_anonymous_namespace_::MPS_ComplexGEMM_CR *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ComplexGEMM_CR::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'lhs_c' failed to satisfy constraint: 'is complex type'";
  v13 = 64;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ComplexGEMM_CR::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'rhs_r' failed to satisfy constraint: 'is not complex type'";
  v13 = 68;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_ComplexGEMM_RC::~MPS_ComplexGEMM_RC(mlir::mps::_anonymous_namespace_::MPS_ComplexGEMM_RC *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ComplexGEMM_RC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'lhs_r' failed to satisfy constraint: 'is not complex type'";
  v13 = 68;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ComplexGEMM_RC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'rhs_c' failed to satisfy constraint: 'is complex type'";
  v13 = 64;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_DivideOfPower::~MPS_DivideOfPower(mlir::mps::_anonymous_namespace_::MPS_DivideOfPower *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::anonymous namespace::MPS_DivideOfPower::matchAndRewrite(mlir::mps::_anonymous_namespace_::MPS_DivideOfPower *this, mlir::Operation *a2, mlir::UnknownLoc **a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v17[0] = a2;
  v16 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v14[0] = *(*(v4 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(v14);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id)
    {
      v10 = v16;
      if (v16 >= HIDWORD(v16))
      {
        v13 = DefiningOp;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v16 + 1, 8);
        DefiningOp = v13;
        v10 = v16;
      }

      v15[v10] = DefiningOp;
      LODWORD(v16) = v16 + 1;
      v11 = *(v15[1] + 24);
      v14[0] = *(*v15 + 24);
      v14[1] = v11;
      mlir::Builder::getFusedLoc(a3 + 1, v14, 2, 0);
    }

    v6 = a3[2];
    if (v6)
    {
      v7 = DefiningOp;
      if (mlir::RewriterBase::Listener::classof(v6))
      {
        v8 = *(v7 + 24);
LABEL_12:
        (*(*v6 + 88))(v6, v8, v9, v14);
      }
    }
  }

  else
  {
    v6 = a3[2];
    if (v6 && mlir::RewriterBase::Listener::classof(v6))
    {
      v8 = *(v4 + 3);
      goto LABEL_12;
    }
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::NegativeOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::NegativeOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::NegativeOp,mlir::Value>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::NegativeOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_DivideOfPower::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_DivideOfPower::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::mps::PowerOp type";
  v13 = 42;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_DivideSqrtToMultiplyRsqrt::~MPS_DivideSqrtToMultiplyRsqrt(mlir::mps::_anonymous_namespace_::MPS_DivideSqrtToMultiplyRsqrt *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::anonymous namespace::MPS_DivideSqrtToMultiplyRsqrt::matchAndRewrite(mlir::mps::_anonymous_namespace_::MPS_DivideSqrtToMultiplyRsqrt *this, mlir::Operation *a2, mlir::UnknownLoc **a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v17[0] = a2;
  v16 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v14[0] = *(*(v4 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(v14);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id)
    {
      v10 = v16;
      if (v16 >= HIDWORD(v16))
      {
        v13 = DefiningOp;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v16 + 1, 8);
        DefiningOp = v13;
        v10 = v16;
      }

      v15[v10] = DefiningOp;
      LODWORD(v16) = v16 + 1;
      v11 = *(v15[1] + 24);
      v14[0] = *(*v15 + 24);
      v14[1] = v11;
      mlir::Builder::getFusedLoc(a3 + 1, v14, 2, 0);
    }

    v6 = a3[2];
    if (v6)
    {
      v7 = DefiningOp;
      if (mlir::RewriterBase::Listener::classof(v6))
      {
        v8 = *(v7 + 24);
LABEL_12:
        (*(*v6 + 88))(v6, v8, v9, v14);
      }
    }
  }

  else
  {
    v6 = a3[2];
    if (v6 && mlir::RewriterBase::Listener::classof(v6))
    {
      v8 = *(v4 + 3);
      goto LABEL_12;
    }
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_DivideSqrtToMultiplyRsqrt::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_DivideSqrtToMultiplyRsqrt::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::mps::SquareRootOp type";
  v13 = 47;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_NCHW_ConvBias_NHWC::~MPS_NCHW_ConvBias_NHWC(mlir::mps::_anonymous_namespace_::MPS_NCHW_ConvBias_NHWC *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::anonymous namespace::MPS_NCHW_ConvBias_NHWC::matchAndRewrite(mlir::mps::_anonymous_namespace_::MPS_NCHW_ConvBias_NHWC *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v44[4] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 11);
  v37 = 0;
  v38[0] = 0;
  v36 = 0;
  if ((v5 & 0x800000) != 0)
  {
    v6 = *(a2 + 9);
    v7 = *(a2 + 17);
    v35[0] = v6;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v35[0] = 0;
  }

  v35[1] = v7;
  v33 = 0;
  v34 = 0;
  v32[0] = v6;
  v32[1] = v7;
  v30[1] = v7;
  v31 = 0;
  v29 = 0;
  v30[0] = v6;
  v42 = v44;
  v44[0] = a2;
  v43 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  *&v39 = *(*(v8 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v39);
  if (DefiningOp)
  {
    v10 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::BiasAddOp,void>::id)
    {
      v11 = *(a3 + 2);
      if (v11 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v12 = *(v10 + 24);
LABEL_14:
        (*(*v11 + 88))(v11, v12, v13, &v39);
        goto LABEL_47;
      }

      goto LABEL_47;
    }

    *&v39 = *(*(DefiningOp + 72) + 24);
    v14 = mlir::Value::getDefiningOp(&v39);
    if (!v14)
    {
      v11 = *(a3 + 2);
      if (v11 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v12 = *(v10 + 24);
        goto LABEL_14;
      }

      goto LABEL_47;
    }

    v15 = v14;
    {
      goto LABEL_47;
    }

    v16 = v43;
    if (v43 >= HIDWORD(v43))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 8);
      v16 = v43;
    }

    v42[v16] = v15;
    LODWORD(v43) = v43 + 1;
    if ((*(v10 + 46) & 0x80) != 0)
    {
      if (!*(v10 + 47))
      {
        goto LABEL_22;
      }
    }

    else if (!*(v10 + 47))
    {
      goto LABEL_22;
    }

    v45.var0 = "data_format";
    v45.var1 = 11;
    InherentAttr = mlir::Operation::getInherentAttr(v10, v45);
    if (v18)
    {
LABEL_23:
      if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        mlir::mps::TensorDataLayoutAttr::get(*(a3 + 1), 1u);
      }

      v19 = v43;
      if (v43 >= HIDWORD(v43))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v44, v43 + 1, 8);
        v19 = v43;
      }

      v42[v19] = v10;
      LODWORD(v43) = v43 + 1;
      if ((*(v8 + 46) & 0x80) != 0)
      {
        v20 = *(v8 + 9);
      }

      else
      {
        v20 = 0;
      }

      if (mlir::arith::FastMathFlagsAttr::getValue(&v37))
      {
        v21 = *(a3 + 2);
        if (!v21 || !mlir::RewriterBase::Listener::classof(v21))
        {
          goto LABEL_47;
        }

        v22 = *(a2 + 3);
      }

      else
      {
        v24 = *(v30[0] + 24);
        v39 = xmmword_1E097BCA0;
        {
          v25 = *(v20 + 56);
          v39 = xmmword_1E097BCB0;
          {
            v26 = *(v42[1] + 24);
            *&v39 = *(*v42 + 24);
            *(&v39 + 1) = v26;
            v27 = *(v42[3] + 24);
            v40 = *(v42[2] + 24);
            v41 = v27;
            mlir::Builder::getFusedLoc(a3 + 1, &v39, 4, 0);
          }

          v21 = *(a3 + 2);
          if (!v21 || !mlir::RewriterBase::Listener::classof(v21))
          {
            goto LABEL_47;
          }

          v22 = *(a2 + 3);
        }

        else
        {
          v21 = *(a3 + 2);
          if (!v21 || !mlir::RewriterBase::Listener::classof(v21))
          {
            goto LABEL_47;
          }

          v22 = *(a2 + 3);
        }
      }

      (*(*v21 + 88))(v21, v22, v23, &v39);
      goto LABEL_47;
    }

LABEL_22:
    v46.var0 = "data_format";
    v46.var1 = 11;
    InherentAttr = mlir::DictionaryAttr::get((v10 + 56), v46);
    goto LABEL_23;
  }

  v11 = *(a3 + 2);
  if (v11 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v12 = *(v8 + 3);
    goto LABEL_14;
  }

LABEL_47:
  if (v42 != v44)
  {
    free(v42);
  }

  return 0;
}

uint64_t mlir::mps::anonymous namespace::static_dag_matcher_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9, void *a10, uint64_t *a11, void *a12, uint64_t *a13)
{
  if (!a2 || *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    v24 = *(a1 + 16);
    if (!v24 || !mlir::RewriterBase::Listener::classof(v24))
    {
      return 0;
    }

    v25 = *(a2 + 24);
    goto LABEL_30;
  }

  v49 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v49);
  if (!DefiningOp)
  {
    v24 = *(a1 + 16);
    if (!v24 || !mlir::RewriterBase::Listener::classof(v24))
    {
      return 0;
    }

    v25 = *(a2 + 24);
    goto LABEL_30;
  }

  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
  {
    v22 = *(a1 + 16);
    if (v22)
    {
      v23 = DefiningOp;
      if (mlir::RewriterBase::Listener::classof(v22))
      {
      }
    }

    return 0;
  }

  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v27 = *(DefiningOp + 72);
  }

  else
  {
    v27 = 0;
  }

  v28 = a3;
  *a12 = v27;
  a12[1] = 1;
  if ((*(DefiningOp + 46) & 0x80) != 0)
  {
    v29 = *(DefiningOp + 72);
  }

  else
  {
    v29 = 0;
  }

  v30 = a9;
  *a10 = v29 + 32;
  a10[1] = 1;
  v31 = *(a3 + 8);
  if (v31 >= *(a3 + 12))
  {
    v48 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v31 + 1, 8);
    v30 = a9;
    DefiningOp = v48;
    v28 = a3;
    LODWORD(v31) = *(a3 + 8);
  }

  *(*v28 + 8 * v31) = DefiningOp;
  ++*(v28 + 8);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v32 = *(a2 + 72);
  }

  else
  {
    v32 = 0;
  }

  *v30 = v32 + 32;
  v30[1] = 1;
  if (!*(a2 + 47) || (v50.var0 = "groups", v50.var1 = 6, InherentAttr = mlir::Operation::getInherentAttr(a2, v50), (v34 & 1) == 0))
  {
    v51.var0 = "groups";
    v51.var1 = 6;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v51);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v24 = *(a1 + 16);
    if (!v24 || !mlir::RewriterBase::Listener::classof(v24))
    {
      return 0;
    }

    v25 = *(a2 + 24);
LABEL_30:
    (*(*v24 + 88))(v24, v25, v26, &v49);
    return 0;
  }

  *a8 = InherentAttr;
  if (!*(a2 + 47) || (v52.var0 = "strides", v52.var1 = 7, v36 = mlir::Operation::getInherentAttr(a2, v52), (v37 & 1) == 0))
  {
    v53.var0 = "strides";
    v53.var1 = 7;
    v36 = mlir::DictionaryAttr::get((a2 + 56), v53);
  }

  v38 = v36;
  if (!v36 || !mlir::DenseIntElementsAttr::classof(v36))
  {
    v24 = *(a1 + 16);
    if (!v24 || !mlir::RewriterBase::Listener::classof(v24))
    {
      return 0;
    }

    v25 = *(a2 + 24);
    goto LABEL_30;
  }

  *a6 = v38;
  if (!*(a2 + 47) || (v54.var0 = "dilation_rates", v54.var1 = 14, v39 = mlir::Operation::getInherentAttr(a2, v54), (v40 & 1) == 0))
  {
    v55.var0 = "dilation_rates";
    v55.var1 = 14;
    v39 = mlir::DictionaryAttr::get((a2 + 56), v55);
  }

  v41 = v39;
  if (!v39 || !mlir::DenseIntElementsAttr::classof(v39))
  {
    v24 = *(a1 + 16);
    if (!v24 || !mlir::RewriterBase::Listener::classof(v24))
    {
      return 0;
    }

    v25 = *(a2 + 24);
    goto LABEL_30;
  }

  *a4 = v41;
  if (!*(a2 + 47) || (v56.var0 = "explicit_padding", v56.var1 = 16, v42 = mlir::Operation::getInherentAttr(a2, v56), (v43 & 1) == 0))
  {
    v57.var0 = "explicit_padding";
    v57.var1 = 16;
    v42 = mlir::DictionaryAttr::get((a2 + 56), v57);
  }

  v44 = v42;
  if (!v42 || !mlir::DenseIntElementsAttr::classof(v42))
  {
  }

  *a11 = v44;
  v58.var0 = "padding_style";
  v58.var1 = 13;
  v45 = mlir::Operation::getAttrOfType<mlir::mps::PaddingStyleAttr>(a2, v58);
  if (!v45)
  {
  }

  *a7 = v45;
  v59.var0 = "data_layout";
  v59.var1 = 11;
  v46 = mlir::Operation::getAttrOfType<mlir::mps::TensorDataLayoutAttr>(a2, v59);
  if (!v46)
  {
  }

  *a5 = v46;
  v60.var0 = "weights_layout";
  v60.var1 = 14;
  v47 = mlir::Operation::getAttrOfType<mlir::mps::TensorDataLayoutAttr>(a2, v60);
  if (!v47)
  {
  }

  *a13 = v47;
  return 1;
}

uint64_t mlir::Operation::getAttrOfType<mlir::mps::TensorDataLayoutAttr>(mlir::Operation *this, StringRef a2)
{
  if (!*(this + 47) || (var0 = a2.var0, var1 = a2.var1, result = mlir::Operation::getInherentAttr(this, a2), a2.var1 = var1, v7 = v6, a2.var0 = var0, (v7 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get((this + 56), a2);
  }

  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::matchConstantValues<int>(uint64_t a1, const void *a2, uint64_t a3)
{
  v12 = &v13;
  v13 = 0;
  v11[0] = a1;
  result = mlir::Value::getDefiningOp(v11);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, result);
    if (result)
    {
      v6 = v13;
      if (v13)
      {
        v7 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v13 + 8);
      }

      else
      {
        v7 = 0;
      }

      mlir::mps::CPUNDArray::CPUNDArray(v11, v6, v7);
      v8 = v11[5];
      NumElements = mlir::mps::CPUNDArray::getNumElements(v11);
      v10 = NumElements == a3 && memcmp(v8, a2, 4 * NumElements) == 0;
      mlir::mps::CPUNDArray::~CPUNDArray(v11);
      return v10;
    }
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::transpose4VecIntAttrToNHWC(uint64_t a1, uint64_t a2)
{
  v62[4] = *MEMORY[0x1E69E9840];
  v57[0] = a1;
  v57[1] = a2;
  NumElements = mlir::ElementsAttr::getNumElements(a1, a2);
  v61[0] = v62;
  v61[1] = 0x400000000;
  mlir::getIntValues<unsigned long long>(a1, a2, v61, 1);
  v5 = v61[0];
  v58 = v60;
  v59 = 0x600000000;
  if (!NumElements)
  {
    goto LABEL_33;
  }

  if (NumElements < 7)
  {
    v6 = 0;
    v7 = NumElements;
    goto LABEL_6;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, NumElements, 8);
  v6 = v59;
  v7 = NumElements - v59;
  if (NumElements != v59)
  {
LABEL_6:
    bzero(v58 + 8 * v6, 8 * v7);
  }

  LODWORD(v59) = NumElements;
  if (NumElements >= 0)
  {
    v8 = NumElements;
  }

  else
  {
    v8 = NumElements + 3;
  }

  if ((NumElements + 3) < 7)
  {
    goto LABEL_33;
  }

  v9 = 0;
  v10 = v8 >> 2;
  v11 = v58;
  if (v10 < 4)
  {
    goto LABEL_16;
  }

  if ((v58 - v5) <= 0x1F)
  {
    goto LABEL_16;
  }

  v9 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = &v5[8 * (v10 & 0xFFFFFFFFFFFFFFFCLL)];
  v13 = (v5 + 16);
  v14 = v58 + 16;
  v15 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v16 = *v13;
    *(v14 - 1) = *(v13 - 1);
    *v14 = v16;
    v13 += 2;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  v5 += 8 * (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if (v10 != v9)
  {
LABEL_16:
    v17 = v10 - v9;
    v18 = &v11[8 * v9];
    v12 = v5;
    do
    {
      v19 = *v12;
      v12 += 8;
      *v18 = v19;
      v18 += 8;
      --v17;
    }

    while (v17);
  }

  v20 = v58;
  v21 = 24 * v10;
  if (v10 <= 5 || (v58 + v21 - v12) < 0x20)
  {
    v22 = 0;
    v23 = v12;
LABEL_21:
    v24 = &v20[8 * v22 + v21];
    v25 = v10 - v22;
    do
    {
      v26 = *v23;
      v23 += 8;
      *v24 = v26;
      v24 += 8;
      --v25;
    }

    while (v25);
    goto LABEL_23;
  }

  v22 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v23 = &v12[8 * (v10 & 0xFFFFFFFFFFFFFFFCLL)];
  v45 = (v12 + 16);
  v46 = v58 + v21 + 16;
  v47 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v48 = *v45;
    *(v46 - 1) = *(v45 - 1);
    *v46 = v48;
    v45 += 2;
    v46 += 2;
    v47 -= 4;
  }

  while (v47);
  if (v10 != v22)
  {
    goto LABEL_21;
  }

LABEL_23:
  v27 = v58;
  if (v10 > 7 && (v28 = v58 + 8 * v10, (v28 - v23) >= 0x20))
  {
    v29 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v30 = &v23[8 * (v10 & 0xFFFFFFFFFFFFFFFCLL)];
    v49 = (v23 + 16);
    v50 = v28 + 16;
    v51 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v52 = *v49;
      *(v50 - 1) = *(v49 - 1);
      *v50 = v52;
      v49 += 2;
      v50 += 2;
      v51 -= 4;
    }

    while (v51);
    if (v10 == v29)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v29 = 0;
    v30 = v23;
  }

  v31 = &v27[8 * v29 + 8 * v10];
  v32 = v10 - v29;
  do
  {
    v33 = *v30;
    v30 += 8;
    *v31 = v33;
    v31 += 8;
    --v32;
  }

  while (v32);
LABEL_28:
  v34 = v58;
  v35 = 16 * v10;
  if (v10 <= 5 || (v58 + v35 - v30) < 0x20)
  {
    v36 = 0;
    v37 = v30;
LABEL_31:
    v38 = &v34[8 * v36 + v35];
    v39 = v10 - v36;
    do
    {
      v40 = *v37++;
      *v38 = v40;
      v38 += 8;
      --v39;
    }

    while (v39);
    goto LABEL_33;
  }

  v36 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v37 = &v30[8 * (v10 & 0xFFFFFFFFFFFFFFFCLL)];
  v53 = (v30 + 16);
  v54 = v58 + v35 + 16;
  v55 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v56 = *v53;
    *(v54 - 1) = *(v53 - 1);
    *v54 = v56;
    v53 += 2;
    v54 += 2;
    v55 -= 4;
  }

  while (v55);
  if (v10 != v36)
  {
    goto LABEL_31;
  }

LABEL_33:
  ArgOperands = mlir::CallOpInterface::getArgOperands(v57);
  v43 = mlir::DenseElementsAttr::getFromRawBuffer(ArgOperands, v42, v58, 8 * v59, 8, 1, 0);
  if (v58 != v60)
  {
    free(v58);
  }

  if (v61[0] != v62)
  {
    free(v61[0]);
  }

  return v43;
}

uint64_t mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value &,mlir::Value &,mlir::IntegerAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::mps::TensorDataLayoutAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value,mlir::Value,unsigned long long,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v20);
  mlir::mps::Conv2DOp::build(a1, v28, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11);
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

uint64_t mlir::OpBuilder::create<mlir::mps::BiasAddOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::BiasAddOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::BiasAddOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::mps::BiasAddOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::BiasAddOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_NCHW_ConvBias_NHWC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_NCHW_ConvBias_NHWC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::mps::BiasAddOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_NCHW_ConvBias_NHWC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_6>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::Operation::getAttrOfType<mlir::mps::PaddingStyleAttr>(mlir::Operation *this, StringRef a2)
{
  if (!*(this + 47) || (var0 = a2.var0, var1 = a2.var1, result = mlir::Operation::getInherentAttr(this, a2), a2.var1 = var1, v7 = v6, a2.var0 = var0, (v7 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get((this + 56), a2);
  }

  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_7>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_8>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_9>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
  {
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::mps::Conv2DOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_1>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_2>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp2 is not ::mlir::mps::PermuteOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_3>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'mps.conv_2d' to have attribute 'groups' of type '::mlir::IntegerAttr'";
  v13 = 82;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_4>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'mps.conv_2d' to have attribute 'strides' of type '::mlir::DenseIntElementsAttr'";
  v13 = 92;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_5>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'mps.conv_2d' to have attribute 'dilation_rates' of type '::mlir::DenseIntElementsAttr'";
  v13 = 99;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_6>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'mps.conv_2d' to have attribute 'explicit_padding' of type '::mlir::DenseIntElementsAttr'";
  v13 = 101;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_7>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'mps.conv_2d' to have attribute 'padding_style' of type '::mlir::mps::PaddingStyleAttr'";
  v13 = 99;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_8>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'mps.conv_2d' to have attribute 'data_layout' of type '::mlir::mps::TensorDataLayoutAttr'";
  v13 = 101;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::DenseIntElementsAttr &,mlir::mps::TensorDataLayoutAttr &,mlir::DenseIntElementsAttr &,mlir::mps::PaddingStyleAttr &,mlir::IntegerAttr &,mlir::OperandRange &,mlir::OperandRange &,mlir::DenseIntElementsAttr &,mlir::OperandRange &,mlir::mps::TensorDataLayoutAttr &)::$_9>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'mps.conv_2d' to have attribute 'weights_layout' of type '::mlir::mps::TensorDataLayoutAttr'";
  v13 = 104;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_NCHW_ConvBias_NHWC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'data_layout' failed to satisfy constraint: 'is NCHW'";
  v13 = 62;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_NCHW_ConvBias_NHWC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'to_nchw' failed to satisfy constraint: 'NHWC to NCHW'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_NCHW_ConvBias_NHWC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'to_nhwc' failed to satisfy constraint: 'NCHW to NHWC'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_NCHW_Conv_NHWC::~MPS_NCHW_Conv_NHWC(mlir::mps::_anonymous_namespace_::MPS_NCHW_Conv_NHWC *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::anonymous namespace::MPS_NCHW_Conv_NHWC::matchAndRewrite(mlir::mps::_anonymous_namespace_::MPS_NCHW_Conv_NHWC *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 11);
  v29 = 0;
  v30 = 0;
  v28 = 0;
  if ((v5 & 0x800000) != 0)
  {
    v6 = *(a2 + 9);
    v7 = *(a2 + 17);
    v27[0] = v6;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v27[0] = 0;
  }

  v27[1] = v7;
  v25 = 0;
  v26 = 0;
  v24[0] = v6;
  v24[1] = v7;
  v22[1] = v7;
  v23 = 0;
  v21 = 0;
  v22[0] = v6;
  v33 = v35;
  v35[0] = a2;
  v34 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  *&v31 = *(*(v8 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v31);
  if (DefiningOp)
  {
    v10 = DefiningOp;
    {
      goto LABEL_29;
    }

    v11 = v34;
    if (v34 >= HIDWORD(v34))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v34 + 1, 8);
      v11 = v34;
    }

    v33[v11] = v10;
    LODWORD(v34) = v34 + 1;
    if ((*(v8 + 46) & 0x80) != 0)
    {
      v12 = *(v8 + 9);
    }

    else
    {
      v12 = 0;
    }

    if (mlir::arith::FastMathFlagsAttr::getValue(&v29))
    {
      v13 = *(a3 + 2);
      if (v13 && mlir::RewriterBase::Listener::classof(v13))
      {
        v14 = *(a2 + 3);
LABEL_28:
        (*(*v13 + 88))(v13, v14, v15, &v31);
      }
    }

    else
    {
      v17 = *(v22[0] + 24);
      v31 = xmmword_1E097BCA0;
      {
        v18 = *(v12 + 56);
        v31 = xmmword_1E097BCB0;
        {
          v19 = *(v33[1] + 24);
          *&v31 = *(*v33 + 24);
          *(&v31 + 1) = v19;
          v32 = *(v33[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, &v31, 3, 0);
        }

        v13 = *(a3 + 2);
        if (v13 && mlir::RewriterBase::Listener::classof(v13))
        {
          v14 = *(a2 + 3);
          goto LABEL_28;
        }
      }

      else
      {
        v13 = *(a3 + 2);
        if (v13 && mlir::RewriterBase::Listener::classof(v13))
        {
          v14 = *(a2 + 3);
          goto LABEL_28;
        }
      }
    }
  }

  else
  {
    v16 = *(a3 + 2);
    if (v16 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
    }
  }

LABEL_29:
  if (v33 != v35)
  {
    free(v33);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::Conv2DOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::Conv2DOp,mlir::Value,mlir::Value,unsigned long long,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseIntElementsAttr&,mlir::mps::PaddingStyle,mlir::mps::TensorDataLayout,mlir::mps::TensorDataLayout>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::mps::Conv2DOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_NCHW_Conv_NHWC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_NCHW_Conv_NHWC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'data_layout' failed to satisfy constraint: 'is NCHW'";
  v13 = 62;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_NCHW_Conv_NHWC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'to_nchw' failed to satisfy constraint: 'NHWC to NCHW'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_NCHW_Conv_NHWC::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'to_nhwc' failed to satisfy constraint: 'NCHW to NHWC'";
  v13 = 63;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_ReorderDequantPad::~MPS_ReorderDequantPad(mlir::mps::_anonymous_namespace_::MPS_ReorderDequantPad *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::anonymous namespace::MPS_ReorderDequantPad::matchAndRewrite(mlir::mps::_anonymous_namespace_::MPS_ReorderDequantPad *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v24 = v26;
  v26[0] = a2;
  v25 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v23[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v23);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
LABEL_21:
        (*(*v8 + 88))(v8, v9, v10, v23);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      if (!*(DefiningOp + 47))
      {
        goto LABEL_15;
      }
    }

    else if (!*(DefiningOp + 47))
    {
      goto LABEL_15;
    }

    v27.var0 = "dtype";
    v27.var1 = 5;
    InherentAttr = mlir::Operation::getInherentAttr(DefiningOp, v27);
    if (v12)
    {
LABEL_16:
      if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v8 = *(a3 + 2);
        if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
        {
          v9 = *(v7 + 24);
          goto LABEL_21;
        }

        goto LABEL_22;
      }

      if (!*(v7 + 47) || (v29.var0 = "axis", v29.var1 = 4, mlir::Operation::getInherentAttr(v7, v29), (v14 & 1) == 0))
      {
        v30.var0 = "axis";
        v30.var1 = 4;
        mlir::DictionaryAttr::get((v7 + 56), v30);
      }

      v15 = v25;
      if (v25 >= HIDWORD(v25))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v25 + 1, 8);
        v15 = v25;
      }

      v24[v15] = v7;
      LODWORD(v25) = v25 + 1;
      if ((*(v5 + 46) & 0x80) != 0)
      {
        if (!*(a2 + 47))
        {
          goto LABEL_33;
        }
      }

      else if (!*(a2 + 47))
      {
        goto LABEL_33;
      }

      v31.var0 = "paddingMode";
      v31.var1 = 11;
      v16 = mlir::Operation::getInherentAttr(a2, v31);
      if (v17)
      {
LABEL_34:
        if (v16 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
        {
          v22 = v16;
          if (mlir::arith::FastMathFlagsAttr::getValue(&v22) == 3)
          {
            v21 = *(v24[1] + 24);
            v23[0] = *(*v24 + 24);
            v23[1] = v21;
            mlir::Builder::getFusedLoc(a3 + 1, v23, 2, 0);
          }

          v18 = *(a3 + 2);
          if (!v18 || !mlir::RewriterBase::Listener::classof(v18))
          {
            goto LABEL_22;
          }

          v19 = *(a2 + 3);
        }

        else
        {
          v18 = *(a3 + 2);
          if (!v18 || !mlir::RewriterBase::Listener::classof(v18))
          {
            goto LABEL_22;
          }

          v19 = *(a2 + 3);
        }

        (*(*v18 + 88))(v18, v19, v20, v23);
        goto LABEL_22;
      }

LABEL_33:
      v32.var0 = "paddingMode";
      v32.var1 = 11;
      v16 = mlir::DictionaryAttr::get((a2 + 56), v32);
      goto LABEL_34;
    }

LABEL_15:
    v28.var0 = "dtype";
    v28.var1 = 5;
    InherentAttr = mlir::DictionaryAttr::get((v7 + 56), v28);
    goto LABEL_16;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_21;
  }

LABEL_22:
  if (v24 != v26)
  {
    free(v24);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::PadOp,mlir::Value &,mlir::Value &,mlir::Value &,mlir::mps::PaddingModeAttr &>(mlir::UnknownLoc **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::PadOp,mlir::mps::PermuteOp &,mlir::mps::ConstantOp &,mlir::Value,mlir::mps::PaddingMode>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::PadOp::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::mps::DequantizeOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::DequantizeOp,mlir::mps::PermuteOp &,mlir::Value,mlir::Value,mlir::Value,mlir::Type,mlir::IntegerAttr &>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::mps::DequantizeOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ReorderDequantPad::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ReorderDequantPad::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::mps::DequantizeOp type";
  v13 = 47;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ReorderDequantPad::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'mps.dequantize' to have attribute 'dtype' of type '::mlir::TypeAttr'";
  v13 = 81;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ReorderDequantPad::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'mps.pad' to have attribute 'paddingMode' of type '::mlir::mps::PaddingModeAttr'";
  v13 = 92;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ReorderDequantPad::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'paddingMode' failed to satisfy constraint: 'is clamp to edge padding mode'";
  v13 = 84;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_ReshapeReshape::~MPS_ReshapeReshape(mlir::mps::_anonymous_namespace_::MPS_ReshapeReshape *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::anonymous namespace::MPS_ReshapeReshape::matchAndRewrite(mlir::mps::_anonymous_namespace_::MPS_ReshapeReshape *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v17 = v19;
  v19[0] = a2;
  v18 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v16[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v16);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(v8))
      {
        v9 = *(v7 + 24);
LABEL_12:
        (*(*v8 + 88))(v8, v9, v10, v16);
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      if (*(DefiningOp + 47))
      {
        goto LABEL_16;
      }
    }

    else if (*(DefiningOp + 47))
    {
LABEL_16:
      v20.var0 = "zero_is_copy";
      v20.var1 = 12;
      mlir::Operation::getInherentAttr(DefiningOp, v20);
      if (v11)
      {
        goto LABEL_18;
      }
    }

    v21.var0 = "zero_is_copy";
    v21.var1 = 12;
    mlir::DictionaryAttr::get((v7 + 56), v21);
LABEL_18:
    v12 = v18;
    if (v18 >= HIDWORD(v18))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v18 + 1, 8);
      v12 = v18;
    }

    v17[v12] = v7;
    LODWORD(v18) = v18 + 1;
    if ((*(v5 + 46) & 0x80) != 0)
    {
      if (*(a2 + 47))
      {
        goto LABEL_22;
      }
    }

    else if (*(a2 + 47))
    {
LABEL_22:
      v22.var0 = "zero_is_copy";
      v22.var1 = 12;
      mlir::Operation::getInherentAttr(a2, v22);
      if (v13)
      {
        goto LABEL_24;
      }
    }

    v23.var0 = "zero_is_copy";
    v23.var1 = 12;
    mlir::DictionaryAttr::get((a2 + 56), v23);
LABEL_24:
    v14 = *(v17[1] + 24);
    v16[0] = *(*v17 + 24);
    v16[1] = v14;
    mlir::Builder::getFusedLoc(a3 + 1, v16, 2, 0);
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(v8))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_25:
  if (v17 != v19)
  {
    free(v17);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReshapeOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value,mlir::Value,mlir::UnitAttr>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::mps::ReshapeOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], *a5, *(a5 + 8));
  v13 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v14;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ReshapeReshape::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_ReshapeReshape::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::mps::ReshapeOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_SelectCondCast::~MPS_SelectCondCast(mlir::mps::_anonymous_namespace_::MPS_SelectCondCast *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::anonymous namespace::MPS_SelectCondCast::matchAndRewrite(mlir::mps::_anonymous_namespace_::MPS_SelectCondCast *this, mlir::Operation *a2, mlir::UnknownLoc **a3)
{
  v19[4] = *MEMORY[0x1E69E9840];
  v17 = v19;
  v19[0] = a2;
  v18 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(*(*(v4 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14[0] = "operand 0 of op 'mps.select' failed to satisfy constraint: 'tensor of 1-bit signless integer values'";
  v14[1] = 100;
  v6 = *v5;
  v7 = *(*v5 + 136);
  v8 = v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v8 && (v16[0] = v5, v16[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8), isSplat = mlir::ElementsAttr::isSplat(v16), mlir::Type::isSignlessInteger(&isSplat, 1)))
  {
    if ((*(v4 + 46) & 0x80) != 0)
    {
      v10 = *(v4 + 9) + 32;
    }

    else
    {
      v10 = 32;
    }

    v14[0] = mlir::getElementTypeOrSelf((*(*(v10 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
    if (!mlir::Type::isInteger(v14, 1))
    {
      v14[0] = *(*v17 + 24);
      mlir::Builder::getFusedLoc(a3 + 1, v14, 1, 0);
    }

    v11 = a3[2];
    if (v11 && mlir::RewriterBase::Listener::classof(v11))
    {
    }
  }

  else
  {
    v16[0] = v14;
    v12 = a3[2];
    if (v12 && mlir::RewriterBase::Listener::classof(v12))
    {
    }
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::__mlir_ods_local_type_constraint_RuntimeCanonicalizationPatterns1(mlir::PatternRewriter &,mlir::Operation *,mlir::Type,llvm::StringRef)::$_0>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v15 = 261;
  v4 = *v2;
  v3 = *(v2 + 8);
  v14[0] = v4;
  v14[1] = v3;
  v5 = mlir::Diagnostic::operator<<(a2, v14);
  v6 = *(v5 + 16);
  v16 = 3;
  v17 = ": tensor of 1-bit signless integer values";
  v18 = 41;
  v7 = *(v5 + 24);
  v8 = &v16;
  if (v7 >= *(v5 + 28))
  {
    if (v6 <= &v16 && v6 + 24 * v7 > &v16)
    {
      v12 = &v16 - v6;
      v13 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5 + 16, v5 + 32, v7 + 1, 24);
      v5 = v13;
      v6 = *(v13 + 16);
      v8 = &v12[v6];
    }

    else
    {
      v11 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5 + 16, v5 + 32, v7 + 1, 24);
      v5 = v11;
      v6 = *(v11 + 16);
      v8 = &v16;
    }
  }

  v9 = (v6 + 24 * *(v5 + 24));
  result = *v8;
  v9[1].n128_u64[0] = v8[1].n128_u64[0];
  *v9 = result;
  ++*(v5 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_SelectCondCast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'true_value' failed to satisfy constraint: 'is not BOOLean type'";
  v13 = 73;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::mps::anonymous namespace::MPS_SquareOfAbsolute::~MPS_SquareOfAbsolute(mlir::mps::_anonymous_namespace_::MPS_SquareOfAbsolute *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::mps::anonymous namespace::MPS_SquareOfAbsolute::matchAndRewrite(mlir::mps::_anonymous_namespace_::MPS_SquareOfAbsolute *this, mlir::Operation *a2, mlir::UnknownLoc **a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v17[0] = a2;
  v16 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SquareOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v14[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v14);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AbsoluteOp,void>::id)
    {
      v10 = v16;
      if (v16 >= HIDWORD(v16))
      {
        v13 = DefiningOp;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v16 + 1, 8);
        DefiningOp = v13;
        v10 = v16;
      }

      v15[v10] = DefiningOp;
      LODWORD(v16) = v16 + 1;
      v11 = *(v15[1] + 24);
      v14[0] = *(*v15 + 24);
      v14[1] = v11;
      mlir::Builder::getFusedLoc(a3 + 1, v14, 2, 0);
    }

    v6 = a3[2];
    if (v6)
    {
      v7 = DefiningOp;
      if (mlir::RewriterBase::Listener::classof(v6))
      {
        v8 = *(v7 + 24);
LABEL_12:
        (*(*v6 + 88))(v6, v8, v9, v14);
      }
    }
  }

  else
  {
    v6 = a3[2];
    if (v6 && mlir::RewriterBase::Listener::classof(v6))
    {
      v8 = *(v4 + 3);
      goto LABEL_12;
    }
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SquareOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SquareOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SquareOp,mlir::Value>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(a1, v16, v17[0], v17[1], *a4, *(a4 + 8));
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SquareOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_SquareOfAbsolute::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<mlir::mps::anonymous namespace::MPS_SquareOfAbsolute::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::mps::AbsoluteOp type";
  v13 = 45;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void *mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionArgMaxOp>::~CanonicalizeReduction(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionArgMaxOp>::~CanonicalizeReduction(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::ReductionArgMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionArgMaxOp>::matchAndRewriteImpl(int a1, mlir::Operation *this)
{
  if (!*(this + 47) || (v6.var0 = "keep_dims", v6.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(this, v6), (v4 & 1) == 0))
  {
    v7.var0 = "keep_dims";
    v7.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v7);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    mlir::Operation::CloneOptions::all(InherentAttr);
    mlir::Operation::clone();
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::OpResult>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SqueezeOp,mlir::Value,mlir::Value&>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::SqueezeOp::build(a1, v15, a3, 1uLL, 0, 0);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void *mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionArgMinOp>::~CanonicalizeReduction(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionArgMinOp>::~CanonicalizeReduction(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::ReductionArgMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionArgMinOp>::matchAndRewriteImpl(int a1, mlir::Operation *this)
{
  if (!*(this + 47) || (v6.var0 = "keep_dims", v6.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(this, v6), (v4 & 1) == 0))
  {
    v7.var0 = "keep_dims";
    v7.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v7);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    mlir::Operation::CloneOptions::all(InherentAttr);
    mlir::Operation::clone();
  }

  return 0;
}

void *mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionMaxOp>::~CanonicalizeReduction(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionMaxOp>::~CanonicalizeReduction(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::ReductionMaxOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionMaxOp>::matchAndRewriteImpl(int a1, mlir::Operation *this)
{
  if (!*(this + 47) || (v6.var0 = "keep_dims", v6.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(this, v6), (v4 & 1) == 0))
  {
    v7.var0 = "keep_dims";
    v7.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v7);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    mlir::Operation::CloneOptions::all(InherentAttr);
    mlir::Operation::clone();
  }

  return 0;
}

void *mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionMinOp>::~CanonicalizeReduction(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionMinOp>::~CanonicalizeReduction(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::ReductionMinOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionMinOp>::matchAndRewriteImpl(int a1, mlir::Operation *this)
{
  if (!*(this + 47) || (v6.var0 = "keep_dims", v6.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(this, v6), (v4 & 1) == 0))
  {
    v7.var0 = "keep_dims";
    v7.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v7);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    mlir::Operation::CloneOptions::all(InherentAttr);
    mlir::Operation::clone();
  }

  return 0;
}

void *mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionProdOp>::~CanonicalizeReduction(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionProdOp>::~CanonicalizeReduction(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::ReductionProdOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionProdOp>::matchAndRewriteImpl(int a1, mlir::Operation *this)
{
  if (!*(this + 47) || (v6.var0 = "keep_dims", v6.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(this, v6), (v4 & 1) == 0))
  {
    v7.var0 = "keep_dims";
    v7.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v7);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    mlir::Operation::CloneOptions::all(InherentAttr);
    mlir::Operation::clone();
  }

  return 0;
}

void *mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionSumOp>::~CanonicalizeReduction(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionSumOp>::~CanonicalizeReduction(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::BaseCanonicalizationPattern<mlir::mps::ReductionSumOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    return 0;
  }

  v6 = *(*a1 + 72);

  return v6(a1, a2, a3);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReduction<mlir::mps::ReductionSumOp>::matchAndRewriteImpl(int a1, mlir::Operation *this)
{
  if (!*(this + 47) || (v6.var0 = "keep_dims", v6.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(this, v6), (v4 & 1) == 0))
  {
    v7.var0 = "keep_dims";
    v7.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v7);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    mlir::Operation::CloneOptions::all(InherentAttr);
    mlir::Operation::clone();
  }

  return 0;
}

void *mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionArgMaxOp>::~CanonicalizeReductionAxes(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionArgMaxOp>::~CanonicalizeReductionAxes(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionArgMaxOp>::matchAndRewriteImpl(int a1, mlir::Operation *this, uint64_t a3)
{
  v226[4] = *MEMORY[0x1E69E9840];
  if (!*(this + 47) || (v227.var0 = "keep_dims", v227.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(this, v227), (v6 & 1) == 0))
  {
    v228.var0 = "keep_dims";
    v228.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v228);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 0;
  }

  v9 = *(*(this + 9) + 24);
  v10 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v217[0] = v10;
  v217[1] = v11;
  v12 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    v215 = v12;
    v216 = v13;
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v215 = 0;
    v216 = 0;
    if (!v10)
    {
      return 0;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(v217))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v217);
    if (v15)
    {
      v16 = 8 * v15;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      return 0;
    }

LABEL_20:
    v199 = this;
    if ((*(this + 46) & 0x80) != 0)
    {
      v17 = *(this + 9);
      v18 = *(this + 17) > 1u;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    __p = 0;
    v213 = 0;
    v214 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v215);
    if (v19)
    {
      if (v19 >> 61)
      {
        goto LABEL_301;
      }

      v20 = 8 * v19;
      v21 = operator new(8 * v19);
      v22 = &v21[v213 - __p];
      memcpy(v21, 0, v213 - __p);
      __p = v21;
      v213 = v22;
      v214 = &v21[v20];
    }

    v200 = a3;
    if (!v18)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v215);
      if (v37)
      {
        v38 = v213;
        v39 = -v37;
        do
        {
          if (v38 < v214)
          {
            *v38++ = v39;
          }

          else
          {
            v41 = __p;
            v42 = v38 - __p;
            v43 = (v38 - __p) >> 3;
            v44 = v43 + 1;
            if ((v43 + 1) >> 61)
            {
              goto LABEL_301;
            }

            v45 = v214 - __p;
            if ((v214 - __p) >> 2 > v44)
            {
              v44 = v45 >> 2;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFF8)
            {
              v46 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v46 = v44;
            }

            if (v46)
            {
              if (v46 >> 61)
              {
LABEL_302:
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v47 = operator new(8 * v46);
            }

            else
            {
              v47 = 0;
            }

            v48 = &v47[8 * v43];
            *v48 = v39;
            v38 = v48 + 1;
            memcpy(v47, v41, v42);
            __p = v47;
            v214 = &v47[8 * v46];
            if (v41)
            {
              operator delete(v41);
            }
          }

          v213 = v38;
          v40 = __CFADD__(v39++, 1);
        }

        while (!v40);
      }

LABEL_69:
      v54 = __p;
      if (v213 == __p)
      {
        v221 = *(*(v199 + 9) + 24);
        v7 = 1;
        mlir::ValueRange::ValueRange(&v224, &v221, 1uLL);
        (**a3)(a3, v199, v224, v225);
        goto LABEL_298;
      }

      if (*__p > -5)
      {
        v7 = 1;
        goto LABEL_299;
      }

      v211 = *(v17 + 24);
      while (1)
      {
        if (__p == v213)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v217);
          v224 = v191;
          IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
          v193 = mlir::RankedTensorType::get(&v224, 1, IntegerType, 0);
          v194 = mlir::CallableOpInterface::getArgAttrsAttr(v217);
          v195 = mlir::CallableOpInterface::getArgAttrsAttr(v217);
          llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v224, v194, (v195 + 8 * v196));
          v197 = *(v199 + 3);
          if (v193)
          {
            v198 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v193 + 8);
          }

          else
          {
            v198 = 0;
          }

          v220 = mlir::DenseElementsAttr::getFromRawBuffer(v193, v198, v224, 8 * v225, 8, 1, 1);
          v221 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v197, &v220);
          mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3, v199, &v211, &v221);
          if (v224 != v226)
          {
            free(v224);
          }

LABEL_297:
          v7 = 1;
LABEL_298:
          v54 = __p;
          if (!__p)
          {
            return v7;
          }

LABEL_299:
          v213 = v54;
          operator delete(v54);
          return v7;
        }

        v58 = v211;
        v218 = v211;
        v59 = (*(v211 + 8) & 0xFFFFFFFFFFFFFFF8);
        v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
        if (v60)
        {
          v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
        }

        else
        {
          v59 = 0;
        }

        v224 = v59;
        v225 = v60;
        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        v62 = v61;
        v63 = v213;
        v206 = __p;
        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        if (v64)
        {
          if (v64 >> 61)
          {
            goto LABEL_301;
          }

          v65 = 8 * v64;
          __src = operator new(8 * v64);
          v66 = &__src[v65];
        }

        else
        {
          v66 = 0;
          __src = 0;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        if (v67)
        {
          if (v67 >> 61)
          {
            goto LABEL_301;
          }

          v68 = v67;
          v69 = operator new(8 * v67);
          v207 = &v69[v68];
          v70 = v63 - 1;
          v71 = *(v63 - 1);
          if (v71 != -1)
          {
            v205 = v69;
            v72 = v69;
            goto LABEL_102;
          }

          *v69 = -1;
          v72 = v69 + 1;
        }

        else
        {
          v70 = v63 - 1;
          v71 = *(v63 - 1);
          if (v71 != -1)
          {
            v205 = 0;
            v72 = 0;
            v207 = 0;
            goto LABEL_102;
          }

          v69 = operator new(8uLL);
          *v69 = -1;
          v72 = v69 + 1;
          v207 = (v69 + 1);
        }

        v205 = v69;
        if (v70 == v206)
        {
          v71 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = *(v63 - 2);
        }

        v63 = v70;
LABEL_102:
        v73 = (*(v58 + 8) & 0xFFFFFFFFFFFFFFF8);
        v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v73 + 1));
        v202 = v71;
        if (v74)
        {
          v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v73 + 1));
        }

        else
        {
          v73 = 0;
        }

        v221 = v73;
        v222 = v74;
        v75 = mlir::CallableOpInterface::getArgAttrsAttr(&v221);
        PositiveAxis = mlir::getPositiveAxis(-1, v62);
        v77 = PositiveAxis;
        v78 = v66;
        v209 = v75;
        if (__src >= v66)
        {
          v80 = (v66 - __src) >> 2;
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = 0x1FFFFFFFFFFFFFFFLL;
          if ((v66 - __src) < 0x7FFFFFFFFFFFFFF8)
          {
            v81 = v80;
          }

          if (v81 >> 61)
          {
            goto LABEL_302;
          }

          v82 = v81;
          v83 = operator new(8 * v81);
          v78 = &v83[v82];
          *v83 = *(v75 + 8 * v77);
          v79 = v83 + 1;
          if (__src)
          {
            operator delete(__src);
          }

          __src = v83;
        }

        else
        {
          *__src = *(v75 + 8 * PositiveAxis);
          v79 = (__src + 8);
        }

        v84 = v202;
        v85 = v202 == -2;
        if (v62 >= 2)
        {
          v89 = -v62;
          v90 = -2;
          v86 = 1;
          v204 = v62;
          v201 = -v62;
          while (1)
          {
            if (v85)
            {
              if (v90 == v84)
              {
                v86 *= *(v209 + 8 * mlir::getPositiveAxis(v84, v62));
LABEL_155:
                v91 = v63 - 1;
                if (v63 - 1 == v206)
                {
                  v84 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = *(v63 - 2);
                }

                v85 = 1;
                goto LABEL_122;
              }

              if (v79 >= v78)
              {
                v100 = v79 - __src;
                v101 = (v79 - __src) >> 3;
                v102 = v101 + 1;
                if ((v101 + 1) >> 61)
                {
                  goto LABEL_301;
                }

                if ((v78 - __src) >> 2 > v102)
                {
                  v102 = (v78 - __src) >> 2;
                }

                if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v103 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v102;
                }

                if (v103)
                {
                  if (v103 >> 61)
                  {
                    goto LABEL_302;
                  }

                  v104 = v86;
                  v105 = v84;
                  v106 = operator new(8 * v103);
                  v86 = v104;
                }

                else
                {
                  v105 = v84;
                  v106 = 0;
                }

                v109 = &v106[8 * v101];
                v78 = &v106[8 * v103];
                *v109 = v86;
                v79 = v109 + 1;
                memcpy(v106, __src, v100);
                if (__src)
                {
                  operator delete(__src);
                }

                __src = v106;
                v62 = v204;
                v84 = v105;
                v89 = v201;
              }

              else
              {
                *v79++ = v86;
              }

              v110 = *(v209 + 8 * mlir::getPositiveAxis(v90, v62));
              NegativeAxis = mlir::getNegativeAxis(0, (v79 - __src) >> 3);
              if (v72 >= v207)
              {
                v112 = v205;
                v113 = v72 - v205;
                v114 = v72 - v205;
                v115 = v114 + 1;
                if ((v114 + 1) >> 61)
                {
                  goto LABEL_301;
                }

                if ((v207 - v205) >> 2 > v115)
                {
                  v115 = (v207 - v205) >> 2;
                }

                if ((v207 - v205) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v116 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v116 = v115;
                }

                v203 = v84;
                if (v116)
                {
                  v208 = v63;
                  if (v116 >> 61)
                  {
                    goto LABEL_302;
                  }

                  v117 = v78;
                  v118 = NegativeAxis;
                  v119 = operator new(8 * v116);
                  NegativeAxis = v118;
                  v112 = v205;
                  v78 = v117;
                  v63 = v208;
                  v89 = v201;
                }

                else
                {
                  v119 = 0;
                }

                v207 = &v119[8 * v116];
                v120 = &v119[8 * v114];
                *v120 = NegativeAxis;
                v72 = v120 + 1;
                v121 = v112;
                memcpy(v119, v112, v113);
                if (v121)
                {
                  operator delete(v121);
                }

                v85 = 0;
                v205 = v119;
                v91 = v63;
                v84 = v203;
                v62 = v204;
                v86 = v110;
              }

              else
              {
                v85 = 0;
                *v72++ = NegativeAxis;
                v91 = v63;
                v86 = v110;
              }
            }

            else
            {
              if (v90 == v84)
              {
                if (v79 >= v78)
                {
                  v93 = v79 - __src;
                  v94 = (v79 - __src) >> 3;
                  v95 = v94 + 1;
                  if ((v94 + 1) >> 61)
                  {
                    goto LABEL_301;
                  }

                  if ((v78 - __src) >> 2 > v95)
                  {
                    v95 = (v78 - __src) >> 2;
                  }

                  if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v96 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v96 = v95;
                  }

                  if (v96)
                  {
                    if (v96 >> 61)
                    {
                      goto LABEL_302;
                    }

                    v97 = v86;
                    v98 = v84;
                    v99 = operator new(8 * v96);
                    v86 = v97;
                  }

                  else
                  {
                    v98 = v84;
                    v99 = 0;
                  }

                  v107 = &v99[8 * v94];
                  v108 = &v99[8 * v96];
                  *v107 = v86;
                  v79 = v107 + 1;
                  memcpy(v99, __src, v93);
                  if (__src)
                  {
                    operator delete(__src);
                  }

                  __src = v99;
                  v84 = v98;
                  v92 = v209;
                  v78 = v108;
                  v62 = v204;
                  v89 = v201;
                }

                else
                {
                  *v79++ = v86;
                  v92 = v209;
                }

                v86 = *(v92 + 8 * mlir::getPositiveAxis(v84, v62));
                goto LABEL_155;
              }

              v85 = 0;
              v86 *= *(v209 + 8 * mlir::getPositiveAxis(v90, v62));
              v91 = v63;
            }

LABEL_122:
            v63 = v91;
            v137 = v90-- <= v89;
            if (v137)
            {
              goto LABEL_117;
            }
          }
        }

        v86 = 1;
LABEL_117:
        if (v79 >= v78)
        {
          v122 = v72;
          v123 = v79 - __src;
          v124 = (v79 - __src) >> 3;
          v125 = v124 + 1;
          if ((v124 + 1) >> 61)
          {
            goto LABEL_301;
          }

          if ((v78 - __src) >> 2 > v125)
          {
            v125 = (v78 - __src) >> 2;
          }

          if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
          {
            v125 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v125)
          {
            if (v125 >> 61)
            {
              goto LABEL_302;
            }

            v126 = v86;
            v127 = operator new(8 * v125);
            v86 = v126;
          }

          else
          {
            v127 = 0;
          }

          v133 = &v127[8 * v124];
          *v133 = v86;
          v87 = (v133 + 1);
          memcpy(v127, __src, v123);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v127;
          v72 = v122;
          if (!v85)
          {
LABEL_198:
            a3 = v200;
            goto LABEL_203;
          }
        }

        else
        {
          *v79 = v86;
          v87 = (v79 + 1);
          if (!v85)
          {
            goto LABEL_198;
          }
        }

        v88 = mlir::getNegativeAxis(0, (v87 - __src) >> 3);
        if (v72 >= v207)
        {
          v128 = v205;
          v129 = v72 - v205;
          v130 = (v129 >> 3) + 1;
          a3 = v200;
          if (v130 >> 61)
          {
            goto LABEL_301;
          }

          if ((v207 - v205) >> 2 > v130)
          {
            v130 = (v207 - v205) >> 2;
          }

          if ((v207 - v205) >= 0x7FFFFFFFFFFFFFF8)
          {
            v130 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v130)
          {
            if (v130 >> 61)
            {
              goto LABEL_302;
            }

            v131 = v88;
            v132 = operator new(8 * v130);
            v88 = v131;
            v128 = v205;
          }

          else
          {
            v132 = 0;
          }

          v134 = &v132[8 * (v129 >> 3)];
          *v134 = v88;
          v135 = v134 + 1;
          memcpy(v132, v128, v129);
          if (v205)
          {
            operator delete(v205);
          }

          v205 = v132;
          v72 = v135;
        }

        else
        {
          *v72++ = v88;
          a3 = v200;
        }

LABEL_203:
        v136 = v87 - 8;
        v137 = __src != v87 && v136 > __src;
        if (v137)
        {
          v138 = __src + 8;
          do
          {
            v139 = *(v138 - 1);
            *(v138 - 1) = *v136;
            *v136 = v139;
            v136 -= 8;
            v40 = v138 >= v136;
            v138 += 8;
          }

          while (!v40);
        }

        v140 = v87;
        if (v205 != v72)
        {
          v141 = (v72 - 1);
          if (v72 - 1 > v205)
          {
            v142 = (v205 + 1);
            do
            {
              v143 = *(v142 - 1);
              *(v142 - 1) = *v141;
              *v141 = v143;
              v141 -= 8;
              v40 = v142 >= v141;
              v142 += 8;
            }

            while (!v40);
          }
        }

        v144 = v72;
        Loc = mlir::Value::getLoc(&v218);
        v220 = (v140 - __src) >> 3;
        v221 = v211;
        v146 = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
        v147 = mlir::RankedTensorType::get(&v220, 1, v146, 0);
        if (v147)
        {
          v148 = v147;
          v149 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v147 + 8);
          v147 = v148;
        }

        else
        {
          v149 = 0;
        }

        v219 = mlir::DenseElementsAttr::getFromRawBuffer(v147, v149, __src, v140 - __src, 8, 1, 1);
        v220 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), Loc, &v219);
        v211 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), Loc, &v221, &v220) - 16;
        std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(&__p, v205, v144, (v144 - v205) >> 3);
        if (v205)
        {
          operator delete(v205);
        }

        if (__src)
        {
          operator delete(__src);
        }

        v218 = v211;
        v150 = (*(v211 + 8) & 0xFFFFFFFFFFFFFFF8);
        v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
        if (v151)
        {
          v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
        }

        else
        {
          v150 = 0;
        }

        v224 = v150;
        v225 = v151;
        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        if (v152)
        {
          if (v152 >> 61)
          {
            goto LABEL_301;
          }

          v153 = v152;
          v154 = operator new(8 * v152);
          v155 = &v154[v153];
        }

        else
        {
          v155 = 0;
          v154 = 0;
        }

        v156 = (v213 - __p) >> 3;
        v157 = v156 - 1;
        if (v156 < 1)
        {
          goto LABEL_256;
        }

        v158 = v154;
        while (1)
        {
          v159 = *(__p + v157);
          if (v159 < -4)
          {
            break;
          }

          if (v158 < v155)
          {
            *v158++ = v159;
          }

          else
          {
            v160 = v158 - v154;
            v161 = v158 - v154;
            v162 = v161 + 1;
            if ((v161 + 1) >> 61)
            {
              goto LABEL_301;
            }

            if ((v155 - v154) >> 2 > v162)
            {
              v162 = (v155 - v154) >> 2;
            }

            if ((v155 - v154) >= 0x7FFFFFFFFFFFFFF8)
            {
              v163 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v163 = v162;
            }

            if (v163)
            {
              if (v163 >> 61)
              {
                goto LABEL_302;
              }

              v164 = operator new(8 * v163);
            }

            else
            {
              v164 = 0;
            }

            v165 = &v164[8 * v161];
            v155 = &v164[8 * v163];
            *v165 = v159;
            v158 = v165 + 1;
            memcpy(v164, v154, v160);
            if (v154)
            {
              operator delete(v154);
            }

            v154 = v164;
          }

          v137 = v157-- <= 0;
          if (v137)
          {
            v157 = -1;
            break;
          }
        }

        v166 = v158 - v154;
        if (v158 == v154)
        {
          goto LABEL_256;
        }

        v167 = mlir::Value::getLoc(&v218);
        v220 = v166 >> 3;
        v221 = v218;
        v168 = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
        v169 = mlir::RankedTensorType::get(&v220, 1, v168, 0);
        if (v169)
        {
          v170 = v169;
          v171 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v169 + 8);
          v169 = v170;
        }

        else
        {
          v171 = 0;
        }

        v172 = 1;
        v219 = mlir::DenseElementsAttr::getFromRawBuffer(v169, v171, v154, v166, 8, 1, 1);
        v220 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v167, &v219) - 16;
        LOBYTE(v219) = 1;
        v173 = mlir::OpBuilder::create<mlir::mps::ReductionArgMaxOp,mlir::Value &,mlir::Value &,BOOL>((a3 + 8), v167, &v221, &v220, &v219);
        if (mlir::mps::inferTypes(v173, v174))
        {
          v211 = v173 - 16;
LABEL_256:
          mlir::CallableOpInterface::getArgAttrsAttr(&v224);
          if (v175)
          {
            if (v175 >> 61)
            {
              goto LABEL_301;
            }

            v176 = 8 * v175;
            v177 = operator new(8 * v175);
            v178 = &v177[v176];
            v179 = v177;
            if ((v157 & 0x8000000000000000) == 0)
            {
              goto LABEL_264;
            }
          }

          else
          {
            v177 = 0;
            v178 = 0;
            v179 = 0;
            if ((v157 & 0x8000000000000000) == 0)
            {
              do
              {
LABEL_264:
                v180 = *(__p + v157);
                if (v177 < v178)
                {
                  *v177 = v180;
                  v177 += 8;
                }

                else
                {
                  v181 = v177 - v179;
                  v182 = (v177 - v179) >> 3;
                  v183 = v182 + 1;
                  if ((v182 + 1) >> 61)
                  {
                    goto LABEL_301;
                  }

                  if ((v178 - v179) >> 2 > v183)
                  {
                    v183 = (v178 - v179) >> 2;
                  }

                  if ((v178 - v179) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v184 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v184 = v183;
                  }

                  if (v184)
                  {
                    if (v184 >> 61)
                    {
                      goto LABEL_302;
                    }

                    v185 = operator new(8 * v184);
                  }

                  else
                  {
                    v185 = 0;
                  }

                  v186 = &v185[8 * v182];
                  v178 = &v185[8 * v184];
                  *v186 = v180;
                  v177 = v186 + 8;
                  memcpy(v185, v179, v181);
                  if (v179)
                  {
                    operator delete(v179);
                  }

                  v179 = v185;
                }

                v137 = v157-- <= 0;
              }

              while (!v137);
              v187 = v177 - 8;
              if (v179 != v177 && v187 > v179)
              {
                v189 = v179 + 8;
                do
                {
                  v190 = *(v189 - 1);
                  *(v189 - 1) = *v187;
                  *v187 = v190;
                  v187 -= 8;
                  v40 = v189 >= v187;
                  v189 += 8;
                }

                while (!v40);
              }
            }
          }

          std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(&__p, v179, v177, (v177 - v179) >> 3);
          if (v179)
          {
            operator delete(v179);
          }

          v172 = 0;
        }

        if (v154)
        {
          operator delete(v154);
        }

        if (v172)
        {
          v7 = 0;
          goto LABEL_298;
        }
      }
    }

    v23 = *(v17 + 56);
    v224 = v226;
    v225 = 0x400000000;
    matched = mlir::matchConstantWithIntVector<long long>(v23, &v224);
    if ((matched & 1) == 0)
    {
LABEL_66:
      if (v224 != v226)
      {
        free(v224);
      }

      if ((matched & 1) == 0)
      {
        goto LABEL_297;
      }

      goto LABEL_69;
    }

    v222 = 0;
    v223 = 0;
    v221 = &v222;
    mlir::CallableOpInterface::getArgAttrsAttr(&v215);
    if (v225)
    {
      v26 = v25;
      v27 = v224;
      v28 = &v224[8 * v225];
      do
      {
        v30 = mlir::getNegativeAxis(*v27, v26);
        v31 = v30;
        v32 = v222;
        v33 = &v222;
        v34 = &v222;
        if (v222)
        {
          while (1)
          {
            while (1)
            {
              v34 = v32;
              v35 = v32[4];
              if (v30 >= v35)
              {
                break;
              }

              v32 = *v34;
              v33 = v34;
              if (!*v34)
              {
                goto LABEL_39;
              }
            }

            if (v35 >= v30)
            {
              break;
            }

            v32 = v34[1];
            if (!v32)
            {
              v33 = v34 + 1;
              goto LABEL_39;
            }
          }
        }

        else
        {
LABEL_39:
          v36 = operator new(0x28uLL);
          v36[4] = v31;
          *v36 = 0;
          v36[1] = 0;
          v36[2] = v34;
          *v33 = v36;
          if (*v221)
          {
            v221 = *v221;
            v29 = *v33;
          }

          else
          {
            v29 = v36;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v222, v29);
          ++v223;
        }

        ++v27;
      }

      while (v27 != v28);
    }

    if (!v223)
    {
      v51 = 0;
      v52 = 0;
      v50 = 0;
      a3 = v200;
      goto LABEL_62;
    }

    a3 = v200;
    if (!(v223 >> 61))
    {
      v49 = v223;
      v50 = operator new(8 * v223);
      v51 = &v50[v49];
      bzero(v50, v49 * 8);
      v52 = &v50[v49];
LABEL_62:
      if (__p)
      {
        v213 = __p;
        operator delete(__p);
      }

      __p = v50;
      v213 = v52;
      v214 = v51;
      v53 = v221;
      if (v221 != &v222)
      {
        do
        {
          *v50 = v53[4];
          v55 = v53[1];
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v53[2];
              v57 = *v56 == v53;
              v53 = v56;
            }

            while (!v57);
          }

          ++v50;
          v53 = v56;
        }

        while (v56 != &v222);
      }

      std::__tree<unsigned long long>::destroy(&v221, v222);
      goto LABEL_66;
    }

LABEL_301:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  return 0;
}

BOOL mlir::ShapedType::hasStaticShape(mlir::ShapedType *this)
{
  if (!mlir::CallOpInterface::getArgOperands(this))
  {
    return 0;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(this);
  if (!v3)
  {
    return 1;
  }

  v4 = 8 * v3 - 8;
  do
  {
    v5 = *ArgAttrsAttr++;
    v6 = v5 != 0x8000000000000000;
    v7 = v5 == 0x8000000000000000 || v4 == 0;
    v4 -= 8;
  }

  while (!v7);
  return v6;
}

void *llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(void *a1, _BYTE *a2, _BYTE *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v5 = a3 - a2;
  v6 = (a3 - a2) >> 3;
  if (v6 >= 5)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v6, 8);
    a2 = v7;
    v8 = *(a1 + 2);
    if (v7 == a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  if (a2 != a3)
  {
LABEL_5:
    memcpy((*a1 + 8 * v8), a2, v5);
    v8 = *(a1 + 2);
  }

LABEL_6:
  *(a1 + 2) = v8 + (v5 >> 3);
  return a1;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a1 + 1, *(a2 + 24), a3, a4);
  (*(*a1 + 1))(a1, a2, v6);
  return v6;
}

char *std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 >> 61)
    {
      goto LABEL_22;
    }

    v10 = v6 >> 2;
    if (v6 >> 2 <= a4)
    {
      v10 = a4;
    }

    v11 = v6 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v10;
    }

    if (v12 >> 61)
    {
LABEL_22:
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v13 = 8 * v12;
    result = operator new(8 * v12);
    v14 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v13];
    v15 = a3 - a2;
    if (v15)
    {
      result = memcpy(result, a2, v15);
    }

LABEL_17:
    v18 = &v14[v15];
    goto LABEL_21;
  }

  v14 = a1[1];
  v16 = v14 - result;
  if (a4 > (v14 - result) >> 3)
  {
    v17 = &a2[v16];
    if (v14 != result)
    {
      result = memmove(result, a2, v16);
      v14 = a1[1];
    }

    v15 = a3 - v17;
    if (v15)
    {
      result = memmove(v14, v17, v15);
    }

    goto LABEL_17;
  }

  v19 = a3 - a2;
  if (v19)
  {
    v20 = result;
    memmove(result, a2, v19);
    result = v20;
  }

  v18 = &result[v19];
LABEL_21:
  a1[1] = v18;
  return result;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionArgMaxOp,mlir::Value &,mlir::Value &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMaxOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionArgMaxOp,mlir::Value &,mlir::Value &,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReductionArgMaxOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMaxOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void *mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionArgMinOp>::~CanonicalizeReductionAxes(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionArgMinOp>::~CanonicalizeReductionAxes(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::mps::anonymous namespace::CanonicalizeReductionAxes<mlir::mps::ReductionArgMinOp>::matchAndRewriteImpl(int a1, mlir::Operation *this, uint64_t a3)
{
  v226[4] = *MEMORY[0x1E69E9840];
  if (!*(this + 47) || (v227.var0 = "keep_dims", v227.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(this, v227), (v6 & 1) == 0))
  {
    v228.var0 = "keep_dims";
    v228.var1 = 9;
    InherentAttr = mlir::DictionaryAttr::get((this + 56), v228);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 0;
  }

  v9 = *(*(this + 9) + 24);
  v10 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  v217[0] = v10;
  v217[1] = v11;
  v12 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
    v215 = v12;
    v216 = v13;
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v215 = 0;
    v216 = 0;
    if (!v10)
    {
      return 0;
    }
  }

  if (mlir::CallOpInterface::getArgOperands(v217))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v217);
    if (v15)
    {
      v16 = 8 * v15;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_20;
        }
      }

      return 0;
    }

LABEL_20:
    v199 = this;
    if ((*(this + 46) & 0x80) != 0)
    {
      v17 = *(this + 9);
      v18 = *(this + 17) > 1u;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    __p = 0;
    v213 = 0;
    v214 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v215);
    if (v19)
    {
      if (v19 >> 61)
      {
        goto LABEL_301;
      }

      v20 = 8 * v19;
      v21 = operator new(8 * v19);
      v22 = &v21[v213 - __p];
      memcpy(v21, 0, v213 - __p);
      __p = v21;
      v213 = v22;
      v214 = &v21[v20];
    }

    v200 = a3;
    if (!v18)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v215);
      if (v37)
      {
        v38 = v213;
        v39 = -v37;
        do
        {
          if (v38 < v214)
          {
            *v38++ = v39;
          }

          else
          {
            v41 = __p;
            v42 = v38 - __p;
            v43 = (v38 - __p) >> 3;
            v44 = v43 + 1;
            if ((v43 + 1) >> 61)
            {
              goto LABEL_301;
            }

            v45 = v214 - __p;
            if ((v214 - __p) >> 2 > v44)
            {
              v44 = v45 >> 2;
            }

            if (v45 >= 0x7FFFFFFFFFFFFFF8)
            {
              v46 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v46 = v44;
            }

            if (v46)
            {
              if (v46 >> 61)
              {
LABEL_302:
                std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
              }

              v47 = operator new(8 * v46);
            }

            else
            {
              v47 = 0;
            }

            v48 = &v47[8 * v43];
            *v48 = v39;
            v38 = v48 + 1;
            memcpy(v47, v41, v42);
            __p = v47;
            v214 = &v47[8 * v46];
            if (v41)
            {
              operator delete(v41);
            }
          }

          v213 = v38;
          v40 = __CFADD__(v39++, 1);
        }

        while (!v40);
      }

LABEL_69:
      v54 = __p;
      if (v213 == __p)
      {
        v221 = *(*(v199 + 9) + 24);
        v7 = 1;
        mlir::ValueRange::ValueRange(&v224, &v221, 1uLL);
        (**a3)(a3, v199, v224, v225);
        goto LABEL_298;
      }

      if (*__p > -5)
      {
        v7 = 1;
        goto LABEL_299;
      }

      v211 = *(v17 + 24);
      while (1)
      {
        if (__p == v213)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v217);
          v224 = v191;
          IntegerType = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
          v193 = mlir::RankedTensorType::get(&v224, 1, IntegerType, 0);
          v194 = mlir::CallableOpInterface::getArgAttrsAttr(v217);
          v195 = mlir::CallableOpInterface::getArgAttrsAttr(v217);
          llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v224, v194, (v195 + 8 * v196));
          v197 = *(v199 + 3);
          if (v193)
          {
            v198 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v193 + 8);
          }

          else
          {
            v198 = 0;
          }

          v220 = mlir::DenseElementsAttr::getFromRawBuffer(v193, v198, v224, 8 * v225, 8, 1, 1);
          v221 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v197, &v220);
          mlir::RewriterBase::replaceOpWithNewOp<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>(a3, v199, &v211, &v221);
          if (v224 != v226)
          {
            free(v224);
          }

LABEL_297:
          v7 = 1;
LABEL_298:
          v54 = __p;
          if (!__p)
          {
            return v7;
          }

LABEL_299:
          v213 = v54;
          operator delete(v54);
          return v7;
        }

        v58 = v211;
        v218 = v211;
        v59 = (*(v211 + 8) & 0xFFFFFFFFFFFFFFF8);
        v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
        if (v60)
        {
          v60 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v59 + 8);
        }

        else
        {
          v59 = 0;
        }

        v224 = v59;
        v225 = v60;
        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        v62 = v61;
        v63 = v213;
        v206 = __p;
        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        if (v64)
        {
          if (v64 >> 61)
          {
            goto LABEL_301;
          }

          v65 = 8 * v64;
          __src = operator new(8 * v64);
          v66 = &__src[v65];
        }

        else
        {
          v66 = 0;
          __src = 0;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        if (v67)
        {
          if (v67 >> 61)
          {
            goto LABEL_301;
          }

          v68 = v67;
          v69 = operator new(8 * v67);
          v207 = &v69[v68];
          v70 = v63 - 1;
          v71 = *(v63 - 1);
          if (v71 != -1)
          {
            v205 = v69;
            v72 = v69;
            goto LABEL_102;
          }

          *v69 = -1;
          v72 = v69 + 1;
        }

        else
        {
          v70 = v63 - 1;
          v71 = *(v63 - 1);
          if (v71 != -1)
          {
            v205 = 0;
            v72 = 0;
            v207 = 0;
            goto LABEL_102;
          }

          v69 = operator new(8uLL);
          *v69 = -1;
          v72 = v69 + 1;
          v207 = (v69 + 1);
        }

        v205 = v69;
        if (v70 == v206)
        {
          v71 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = *(v63 - 2);
        }

        v63 = v70;
LABEL_102:
        v73 = (*(v58 + 8) & 0xFFFFFFFFFFFFFFF8);
        v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v73 + 1));
        v202 = v71;
        if (v74)
        {
          v74 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>((*v73 + 1));
        }

        else
        {
          v73 = 0;
        }

        v221 = v73;
        v222 = v74;
        v75 = mlir::CallableOpInterface::getArgAttrsAttr(&v221);
        PositiveAxis = mlir::getPositiveAxis(-1, v62);
        v77 = PositiveAxis;
        v78 = v66;
        v209 = v75;
        if (__src >= v66)
        {
          v80 = (v66 - __src) >> 2;
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = 0x1FFFFFFFFFFFFFFFLL;
          if ((v66 - __src) < 0x7FFFFFFFFFFFFFF8)
          {
            v81 = v80;
          }

          if (v81 >> 61)
          {
            goto LABEL_302;
          }

          v82 = v81;
          v83 = operator new(8 * v81);
          v78 = &v83[v82];
          *v83 = *(v75 + 8 * v77);
          v79 = v83 + 1;
          if (__src)
          {
            operator delete(__src);
          }

          __src = v83;
        }

        else
        {
          *__src = *(v75 + 8 * PositiveAxis);
          v79 = (__src + 8);
        }

        v84 = v202;
        v85 = v202 == -2;
        if (v62 >= 2)
        {
          v89 = -v62;
          v90 = -2;
          v86 = 1;
          v204 = v62;
          v201 = -v62;
          while (1)
          {
            if (v85)
            {
              if (v90 == v84)
              {
                v86 *= *(v209 + 8 * mlir::getPositiveAxis(v84, v62));
LABEL_155:
                v91 = v63 - 1;
                if (v63 - 1 == v206)
                {
                  v84 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = *(v63 - 2);
                }

                v85 = 1;
                goto LABEL_122;
              }

              if (v79 >= v78)
              {
                v100 = v79 - __src;
                v101 = (v79 - __src) >> 3;
                v102 = v101 + 1;
                if ((v101 + 1) >> 61)
                {
                  goto LABEL_301;
                }

                if ((v78 - __src) >> 2 > v102)
                {
                  v102 = (v78 - __src) >> 2;
                }

                if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v103 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v102;
                }

                if (v103)
                {
                  if (v103 >> 61)
                  {
                    goto LABEL_302;
                  }

                  v104 = v86;
                  v105 = v84;
                  v106 = operator new(8 * v103);
                  v86 = v104;
                }

                else
                {
                  v105 = v84;
                  v106 = 0;
                }

                v109 = &v106[8 * v101];
                v78 = &v106[8 * v103];
                *v109 = v86;
                v79 = v109 + 1;
                memcpy(v106, __src, v100);
                if (__src)
                {
                  operator delete(__src);
                }

                __src = v106;
                v62 = v204;
                v84 = v105;
                v89 = v201;
              }

              else
              {
                *v79++ = v86;
              }

              v110 = *(v209 + 8 * mlir::getPositiveAxis(v90, v62));
              NegativeAxis = mlir::getNegativeAxis(0, (v79 - __src) >> 3);
              if (v72 >= v207)
              {
                v112 = v205;
                v113 = v72 - v205;
                v114 = v72 - v205;
                v115 = v114 + 1;
                if ((v114 + 1) >> 61)
                {
                  goto LABEL_301;
                }

                if ((v207 - v205) >> 2 > v115)
                {
                  v115 = (v207 - v205) >> 2;
                }

                if ((v207 - v205) >= 0x7FFFFFFFFFFFFFF8)
                {
                  v116 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v116 = v115;
                }

                v203 = v84;
                if (v116)
                {
                  v208 = v63;
                  if (v116 >> 61)
                  {
                    goto LABEL_302;
                  }

                  v117 = v78;
                  v118 = NegativeAxis;
                  v119 = operator new(8 * v116);
                  NegativeAxis = v118;
                  v112 = v205;
                  v78 = v117;
                  v63 = v208;
                  v89 = v201;
                }

                else
                {
                  v119 = 0;
                }

                v207 = &v119[8 * v116];
                v120 = &v119[8 * v114];
                *v120 = NegativeAxis;
                v72 = v120 + 1;
                v121 = v112;
                memcpy(v119, v112, v113);
                if (v121)
                {
                  operator delete(v121);
                }

                v85 = 0;
                v205 = v119;
                v91 = v63;
                v84 = v203;
                v62 = v204;
                v86 = v110;
              }

              else
              {
                v85 = 0;
                *v72++ = NegativeAxis;
                v91 = v63;
                v86 = v110;
              }
            }

            else
            {
              if (v90 == v84)
              {
                if (v79 >= v78)
                {
                  v93 = v79 - __src;
                  v94 = (v79 - __src) >> 3;
                  v95 = v94 + 1;
                  if ((v94 + 1) >> 61)
                  {
                    goto LABEL_301;
                  }

                  if ((v78 - __src) >> 2 > v95)
                  {
                    v95 = (v78 - __src) >> 2;
                  }

                  if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v96 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v96 = v95;
                  }

                  if (v96)
                  {
                    if (v96 >> 61)
                    {
                      goto LABEL_302;
                    }

                    v97 = v86;
                    v98 = v84;
                    v99 = operator new(8 * v96);
                    v86 = v97;
                  }

                  else
                  {
                    v98 = v84;
                    v99 = 0;
                  }

                  v107 = &v99[8 * v94];
                  v108 = &v99[8 * v96];
                  *v107 = v86;
                  v79 = v107 + 1;
                  memcpy(v99, __src, v93);
                  if (__src)
                  {
                    operator delete(__src);
                  }

                  __src = v99;
                  v84 = v98;
                  v92 = v209;
                  v78 = v108;
                  v62 = v204;
                  v89 = v201;
                }

                else
                {
                  *v79++ = v86;
                  v92 = v209;
                }

                v86 = *(v92 + 8 * mlir::getPositiveAxis(v84, v62));
                goto LABEL_155;
              }

              v85 = 0;
              v86 *= *(v209 + 8 * mlir::getPositiveAxis(v90, v62));
              v91 = v63;
            }

LABEL_122:
            v63 = v91;
            v137 = v90-- <= v89;
            if (v137)
            {
              goto LABEL_117;
            }
          }
        }

        v86 = 1;
LABEL_117:
        if (v79 >= v78)
        {
          v122 = v72;
          v123 = v79 - __src;
          v124 = (v79 - __src) >> 3;
          v125 = v124 + 1;
          if ((v124 + 1) >> 61)
          {
            goto LABEL_301;
          }

          if ((v78 - __src) >> 2 > v125)
          {
            v125 = (v78 - __src) >> 2;
          }

          if ((v78 - __src) >= 0x7FFFFFFFFFFFFFF8)
          {
            v125 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v125)
          {
            if (v125 >> 61)
            {
              goto LABEL_302;
            }

            v126 = v86;
            v127 = operator new(8 * v125);
            v86 = v126;
          }

          else
          {
            v127 = 0;
          }

          v133 = &v127[8 * v124];
          *v133 = v86;
          v87 = (v133 + 1);
          memcpy(v127, __src, v123);
          if (__src)
          {
            operator delete(__src);
          }

          __src = v127;
          v72 = v122;
          if (!v85)
          {
LABEL_198:
            a3 = v200;
            goto LABEL_203;
          }
        }

        else
        {
          *v79 = v86;
          v87 = (v79 + 1);
          if (!v85)
          {
            goto LABEL_198;
          }
        }

        v88 = mlir::getNegativeAxis(0, (v87 - __src) >> 3);
        if (v72 >= v207)
        {
          v128 = v205;
          v129 = v72 - v205;
          v130 = (v129 >> 3) + 1;
          a3 = v200;
          if (v130 >> 61)
          {
            goto LABEL_301;
          }

          if ((v207 - v205) >> 2 > v130)
          {
            v130 = (v207 - v205) >> 2;
          }

          if ((v207 - v205) >= 0x7FFFFFFFFFFFFFF8)
          {
            v130 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (v130)
          {
            if (v130 >> 61)
            {
              goto LABEL_302;
            }

            v131 = v88;
            v132 = operator new(8 * v130);
            v88 = v131;
            v128 = v205;
          }

          else
          {
            v132 = 0;
          }

          v134 = &v132[8 * (v129 >> 3)];
          *v134 = v88;
          v135 = v134 + 1;
          memcpy(v132, v128, v129);
          if (v205)
          {
            operator delete(v205);
          }

          v205 = v132;
          v72 = v135;
        }

        else
        {
          *v72++ = v88;
          a3 = v200;
        }

LABEL_203:
        v136 = v87 - 8;
        v137 = __src != v87 && v136 > __src;
        if (v137)
        {
          v138 = __src + 8;
          do
          {
            v139 = *(v138 - 1);
            *(v138 - 1) = *v136;
            *v136 = v139;
            v136 -= 8;
            v40 = v138 >= v136;
            v138 += 8;
          }

          while (!v40);
        }

        v140 = v87;
        if (v205 != v72)
        {
          v141 = (v72 - 1);
          if (v72 - 1 > v205)
          {
            v142 = (v205 + 1);
            do
            {
              v143 = *(v142 - 1);
              *(v142 - 1) = *v141;
              *v141 = v143;
              v141 -= 8;
              v40 = v142 >= v141;
              v142 += 8;
            }

            while (!v40);
          }
        }

        v144 = v72;
        Loc = mlir::Value::getLoc(&v218);
        v220 = (v140 - __src) >> 3;
        v221 = v211;
        v146 = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
        v147 = mlir::RankedTensorType::get(&v220, 1, v146, 0);
        if (v147)
        {
          v148 = v147;
          v149 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v147 + 8);
          v147 = v148;
        }

        else
        {
          v149 = 0;
        }

        v219 = mlir::DenseElementsAttr::getFromRawBuffer(v147, v149, __src, v140 - __src, 8, 1, 1);
        v220 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), Loc, &v219);
        v211 = mlir::OpBuilder::create<mlir::mps::ReshapeOp,mlir::Value &,mlir::mps::ConstantOp &>((a3 + 8), Loc, &v221, &v220) - 16;
        std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(&__p, v205, v144, (v144 - v205) >> 3);
        if (v205)
        {
          operator delete(v205);
        }

        if (__src)
        {
          operator delete(__src);
        }

        v218 = v211;
        v150 = (*(v211 + 8) & 0xFFFFFFFFFFFFFFF8);
        v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
        if (v151)
        {
          v151 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v150 + 8);
        }

        else
        {
          v150 = 0;
        }

        v224 = v150;
        v225 = v151;
        mlir::CallableOpInterface::getArgAttrsAttr(&v224);
        if (v152)
        {
          if (v152 >> 61)
          {
            goto LABEL_301;
          }

          v153 = v152;
          v154 = operator new(8 * v152);
          v155 = &v154[v153];
        }

        else
        {
          v155 = 0;
          v154 = 0;
        }

        v156 = (v213 - __p) >> 3;
        v157 = v156 - 1;
        if (v156 < 1)
        {
          goto LABEL_256;
        }

        v158 = v154;
        while (1)
        {
          v159 = *(__p + v157);
          if (v159 < -4)
          {
            break;
          }

          if (v158 < v155)
          {
            *v158++ = v159;
          }

          else
          {
            v160 = v158 - v154;
            v161 = v158 - v154;
            v162 = v161 + 1;
            if ((v161 + 1) >> 61)
            {
              goto LABEL_301;
            }

            if ((v155 - v154) >> 2 > v162)
            {
              v162 = (v155 - v154) >> 2;
            }

            if ((v155 - v154) >= 0x7FFFFFFFFFFFFFF8)
            {
              v163 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v163 = v162;
            }

            if (v163)
            {
              if (v163 >> 61)
              {
                goto LABEL_302;
              }

              v164 = operator new(8 * v163);
            }

            else
            {
              v164 = 0;
            }

            v165 = &v164[8 * v161];
            v155 = &v164[8 * v163];
            *v165 = v159;
            v158 = v165 + 1;
            memcpy(v164, v154, v160);
            if (v154)
            {
              operator delete(v154);
            }

            v154 = v164;
          }

          v137 = v157-- <= 0;
          if (v137)
          {
            v157 = -1;
            break;
          }
        }

        v166 = v158 - v154;
        if (v158 == v154)
        {
          goto LABEL_256;
        }

        v167 = mlir::Value::getLoc(&v218);
        v220 = v166 >> 3;
        v221 = v218;
        v168 = mlir::Builder::getIntegerType((a3 + 8), 64, 1);
        v169 = mlir::RankedTensorType::get(&v220, 1, v168, 0);
        if (v169)
        {
          v170 = v169;
          v171 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v169 + 8);
          v169 = v170;
        }

        else
        {
          v171 = 0;
        }

        v172 = 1;
        v219 = mlir::DenseElementsAttr::getFromRawBuffer(v169, v171, v154, v166, 8, 1, 1);
        v220 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), v167, &v219) - 16;
        LOBYTE(v219) = 1;
        v173 = mlir::OpBuilder::create<mlir::mps::ReductionArgMinOp,mlir::Value &,mlir::Value &,BOOL>((a3 + 8), v167, &v221, &v220, &v219);
        if (mlir::mps::inferTypes(v173, v174))
        {
          v211 = v173 - 16;
LABEL_256:
          mlir::CallableOpInterface::getArgAttrsAttr(&v224);
          if (v175)
          {
            if (v175 >> 61)
            {
              goto LABEL_301;
            }

            v176 = 8 * v175;
            v177 = operator new(8 * v175);
            v178 = &v177[v176];
            v179 = v177;
            if ((v157 & 0x8000000000000000) == 0)
            {
              goto LABEL_264;
            }
          }

          else
          {
            v177 = 0;
            v178 = 0;
            v179 = 0;
            if ((v157 & 0x8000000000000000) == 0)
            {
              do
              {
LABEL_264:
                v180 = *(__p + v157);
                if (v177 < v178)
                {
                  *v177 = v180;
                  v177 += 8;
                }

                else
                {
                  v181 = v177 - v179;
                  v182 = (v177 - v179) >> 3;
                  v183 = v182 + 1;
                  if ((v182 + 1) >> 61)
                  {
                    goto LABEL_301;
                  }

                  if ((v178 - v179) >> 2 > v183)
                  {
                    v183 = (v178 - v179) >> 2;
                  }

                  if ((v178 - v179) >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v184 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v184 = v183;
                  }

                  if (v184)
                  {
                    if (v184 >> 61)
                    {
                      goto LABEL_302;
                    }

                    v185 = operator new(8 * v184);
                  }

                  else
                  {
                    v185 = 0;
                  }

                  v186 = &v185[8 * v182];
                  v178 = &v185[8 * v184];
                  *v186 = v180;
                  v177 = v186 + 8;
                  memcpy(v185, v179, v181);
                  if (v179)
                  {
                    operator delete(v179);
                  }

                  v179 = v185;
                }

                v137 = v157-- <= 0;
              }

              while (!v137);
              v187 = v177 - 8;
              if (v179 != v177 && v187 > v179)
              {
                v189 = v179 + 8;
                do
                {
                  v190 = *(v189 - 1);
                  *(v189 - 1) = *v187;
                  *v187 = v190;
                  v187 -= 8;
                  v40 = v189 >= v187;
                  v189 += 8;
                }

                while (!v40);
              }
            }
          }

          std::vector<long long>::__assign_with_size[abi:nn200100]<long long *,long long *>(&__p, v179, v177, (v177 - v179) >> 3);
          if (v179)
          {
            operator delete(v179);
          }

          v172 = 0;
        }

        if (v154)
        {
          operator delete(v154);
        }

        if (v172)
        {
          v7 = 0;
          goto LABEL_298;
        }
      }
    }

    v23 = *(v17 + 56);
    v224 = v226;
    v225 = 0x400000000;
    matched = mlir::matchConstantWithIntVector<long long>(v23, &v224);
    if ((matched & 1) == 0)
    {
LABEL_66:
      if (v224 != v226)
      {
        free(v224);
      }

      if ((matched & 1) == 0)
      {
        goto LABEL_297;
      }

      goto LABEL_69;
    }

    v222 = 0;
    v223 = 0;
    v221 = &v222;
    mlir::CallableOpInterface::getArgAttrsAttr(&v215);
    if (v225)
    {
      v26 = v25;
      v27 = v224;
      v28 = &v224[8 * v225];
      do
      {
        v30 = mlir::getNegativeAxis(*v27, v26);
        v31 = v30;
        v32 = v222;
        v33 = &v222;
        v34 = &v222;
        if (v222)
        {
          while (1)
          {
            while (1)
            {
              v34 = v32;
              v35 = v32[4];
              if (v30 >= v35)
              {
                break;
              }

              v32 = *v34;
              v33 = v34;
              if (!*v34)
              {
                goto LABEL_39;
              }
            }

            if (v35 >= v30)
            {
              break;
            }

            v32 = v34[1];
            if (!v32)
            {
              v33 = v34 + 1;
              goto LABEL_39;
            }
          }
        }

        else
        {
LABEL_39:
          v36 = operator new(0x28uLL);
          v36[4] = v31;
          *v36 = 0;
          v36[1] = 0;
          v36[2] = v34;
          *v33 = v36;
          if (*v221)
          {
            v221 = *v221;
            v29 = *v33;
          }

          else
          {
            v29 = v36;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v222, v29);
          ++v223;
        }

        ++v27;
      }

      while (v27 != v28);
    }

    if (!v223)
    {
      v51 = 0;
      v52 = 0;
      v50 = 0;
      a3 = v200;
      goto LABEL_62;
    }

    a3 = v200;
    if (!(v223 >> 61))
    {
      v49 = v223;
      v50 = operator new(8 * v223);
      v51 = &v50[v49];
      bzero(v50, v49 * 8);
      v52 = &v50[v49];
LABEL_62:
      if (__p)
      {
        v213 = __p;
        operator delete(__p);
      }

      __p = v50;
      v213 = v52;
      v214 = v51;
      v53 = v221;
      if (v221 != &v222)
      {
        do
        {
          *v50 = v53[4];
          v55 = v53[1];
          if (v55)
          {
            do
            {
              v56 = v55;
              v55 = *v55;
            }

            while (v55);
          }

          else
          {
            do
            {
              v56 = v53[2];
              v57 = *v56 == v53;
              v53 = v56;
            }

            while (!v57);
          }

          ++v50;
          v53 = v56;
        }

        while (v56 != &v222);
      }

      std::__tree<unsigned long long>::destroy(&v221, v222);
      goto LABEL_66;
    }

LABEL_301:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  return 0;
}