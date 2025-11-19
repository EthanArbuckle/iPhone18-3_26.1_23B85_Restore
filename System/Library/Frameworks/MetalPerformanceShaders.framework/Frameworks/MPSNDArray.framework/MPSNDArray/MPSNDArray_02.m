uint64_t MPSNDArrayMatrixMultiplyA18FunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:a2 + 8 type:85 atIndex:115];
  AddFunctionConstantList(v5, a3);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t MPSNDArrayMatMulDeviceBehavior::EncodeArrayMultiply(uint64_t a1, char *a2, void *a3, uint64_t a4, id *a5)
{
  v132 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    if ((*(*&a2[*MEMORY[0x277CD7350]] + 1472) - 11) < 7)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [a2 setAutoTuningTarget:v10];
    [a2 setAutoTuningParameters:*(a1 + 8)];
  }

  v105 = a2;
  v11 = *(a5 + 13);
  v129 = *(a5 + 12);
  v130 = v11;
  v131 = *(a5 + 14);
  v12 = *(a5 + 9);
  v125 = *(a5 + 8);
  v126 = v12;
  v13 = *(a5 + 11);
  v127 = *(a5 + 10);
  v128 = v13;
  v14 = *(a5 + 5);
  v121 = *(a5 + 4);
  v122 = v14;
  v15 = *(a5 + 7);
  v123 = *(a5 + 6);
  v124 = v15;
  v16 = *(a5 + 1);
  v117 = *a5;
  v118 = v16;
  v17 = *(a5 + 3);
  v119 = *(a5 + 2);
  v120 = v17;
  v18 = [*(&v131 + 1) graph];
  v19 = *(v18 + 64);
  v20 = *v19;
  v21 = v19[1];
  if (*v19 == v21)
  {
    v25 = 0;
  }

  else
  {
    v22 = v18;
    context = a3;
    v23 = a4;
    v24 = 0;
    v25 = -1;
    v26 = -1;
    do
    {
      v27 = *v20;
      if (v27 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v22) + 32))
      {
        v25 = v24;
      }

      v28 = *v20;
      if (v28 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v22) + 32))
      {
        v26 = v24;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v22) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v22);
      }

      ++v24;
      ++v20;
    }

    while (v20 != v21);
    if (v25 == -1)
    {
      v25 = 0;
      a4 = v23;
      a3 = context;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    a4 = v23;
    a3 = context;
    if (v26 != -1)
    {
      goto LABEL_22;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_20:
    MTLReportFailure();
  }

LABEL_21:
  v26 = 0;
LABEL_22:
  v29 = [v118 objectAtIndexedSubscript:v25];
  v30 = [v118 objectAtIndexedSubscript:v26];
  v31 = v130;
  contexta = objc_autoreleasePoolPush();
  v32 = *([*(&v131 + 1) graph] + 84);
  v115 = 0;
  v33 = [*(&v131 + 1) finalOp];
  v34 = (*(*v33 + 16))(v33);
  v35 = 0;
  v36 = *(v105 + *MEMORY[0x277CD7350]);
  v37 = *(v36 + 1472);
  v38 = *MEMORY[0x277CD7410];
  v40 = *(v130 + v38 + 32);
  v39 = *(v130 + v38 + 48);
  v42 = *(v130 + v38);
  v41 = *(v130 + v38 + 16);
  v43 = *MEMORY[0x277CD73D8];
  if (v37 <= 10)
  {
    v44 = *(v130 + v43 + 2) & 0xF;
    v110[0] = *(v130 + v38);
    v110[1] = v41;
    v110[2] = v40;
    v110[3] = v39;
    v35 = *(v110 + v44) != 1;
  }

  v45 = *(v130 + v43);
  v109[0] = v42;
  v109[1] = v41;
  v109[2] = v40;
  v109[3] = v39;
  v46 = *(v109 + (BYTE1(v45) & 0xF));
  v108[0] = v42;
  v108[1] = v41;
  v108[2] = v40;
  v108[3] = v39;
  v47 = *(v108 + (v45 & 0xF));
  v48 = v46 >> 10 > 6 || v47 >> 10 >= 7;
  if (v48 && ((v49 = *&v29[4 * (*&v29[v43] & 0xF) + v38], v49 != 18816) ? (v50 = v49 == 7168) : (v50 = 1), v50))
  {
    v51 = v46 < 8;
    v52 = *MEMORY[0x277CD73C8];
    v53 = *&v29[v52];
  }

  else
  {
    v54 = *(v36 + 1480);
    v52 = *MEMORY[0x277CD73C8];
    v53 = *&v29[v52];
    if (v53 == 268435488)
    {
      v55 = 3;
      if (*&v30[v52] == 268435488)
      {
        v55 = 4;
      }
    }

    else
    {
      v55 = 3;
    }

    v48 = v47 * v46 * v55 >= v54 << 12;
    v56 = 9;
    if (!v48)
    {
      v56 = 15;
    }

    if (v37 > 10)
    {
      v60 = *&v30[4 * (WORD1(*&v30[v43]) & 0xF) + v38];
      if (*&v29[v43] <= BYTE1(*&v29[v43]) && v60 == 1)
      {
        v62 = *&v29[4 * (WORD1(*&v29[v43]) & 0xF) + v38];
      }

      else
      {
        v62 = 1;
      }

      v46 = v62 * v46;
      v63 = v47 * v60;
      if (*&v30[v43] <= BYTE1(*&v30[v43]))
      {
        v63 = *(v108 + (v45 & 0xF));
      }

      if (*&v29[4 * (WORD1(*&v29[v43]) & 0xF) + v38] == 1)
      {
        v47 = v63;
      }

      v59 = v56;
    }

    else
    {
      v57 = 15;
      if ((v47 & 3) == 0)
      {
        v57 = v56;
      }

      if (v46)
      {
        v58 = 15;
      }

      else
      {
        v58 = v56;
      }

      if (v53 == 268435472)
      {
        v56 = v58;
        v59 = 15;
      }

      else
      {
        v59 = v57;
      }
    }

    v64 = v46 > v56 && v47 > v59;
    v65 = v29[v43 + 3] & 0xF;
    LODWORD(v66) = *&v29[4 * v65 + v38];
    v67 = &v30[v38];
    v68 = *v67;
    v69 = *(v67 + 1);
    v70 = *(v67 + 2);
    v71 = *(v67 + 3);
    v107[2] = v70;
    v107[3] = v71;
    v107[0] = v68;
    v107[1] = v69;
    v72 = *(v107 + v65);
    v51 = !v64;
    if (v66 <= v72)
    {
      v66 = v72;
    }

    else
    {
      v66 = v66;
    }

    v73 = v46 * v66;
    if (v51 && v73 > v56)
    {
      v75 = *&v30[v43];
      v106[0] = v68;
      v106[1] = v69;
      v106[2] = v70;
      v106[3] = v71;
      v51 = *(v106 + (v75 & 0xF)) < 0x81u;
    }
  }

  v76 = v53 == -1879048176 || *&v30[v52] == -1879048176 || *(v130 + v52) == -1879048176;
  v77 = *&v29[v43];
  v78.i32[0] = v77;
  v78.i32[1] = BYTE1(v77);
  v79 = vcgt_u32(0x200000002, vand_s8(v78, 0xFF000000FFLL));
  if (v79.i8[0] & 1) == 0 || (v79.i8[4] & 1) == 0 || BYTE2(v77) != 2 || (v80 = *&v30[v43], v81.i32[0] = v80, v81.i32[1] = BYTE1(v80), v82 = vcgt_u32(0x200000002, vand_s8(v81, 0xFF000000FFLL)), (v82.i8[0] & 1) == 0) || (v82.i8[4] & 1) == 0 || BYTE2(v80) != 2 || (!v45 ? (v83 = BYTE1(v45) == 1) : (v83 = 0), v83 ? (v84 = BYTE2(v45) == 2) : (v84 = 0), v84 ? (v85 = 0) : (v85 = 1), ((v85 | v35 | v76 | v51)))
  {
LABEL_97:
    if (*(v105 + 88) == 3)
    {
      goto LABEL_98;
    }

    if (!v32)
    {
      EncodeMatrixMultiply(v105, a3, a4, v29, v30, 0, v130, &v117, &v115);
      if (v34)
      {
        goto LABEL_118;
      }

      goto LABEL_106;
    }

LABEL_101:
    EncodeMatrixMultiplyLinking(v105, a3, a4, &v117);
    v115 = 1;
    if (v34)
    {
      goto LABEL_118;
    }

LABEL_106:
    if (v115)
    {
      goto LABEL_118;
    }

    v86 = a4;
    v87 = [v118 mutableCopy];
    [v87 setObject:v31 atIndexedSubscript:v25];
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v88 = [v87 countByEnumeratingWithState:&v111 objects:v116 count:16];
    if (!v88)
    {
LABEL_117:
      *(*(v105 + 152) + *MEMORY[0x277CD7378]) |= 1uLL;
      [*(v105 + 152) encodeToMPSCommandEncoder:a3 commandBuffer:v86 sourceArrays:v87 resultState:0 destinationArray:v31 kernelDAGObject:*(&v131 + 1)];
      goto LABEL_118;
    }

    v89 = v88;
    v90 = *v112;
    v91 = MEMORY[0x277CD73E0];
    v92 = MEMORY[0x277CD7498];
LABEL_110:
    v93 = 0;
    while (1)
    {
      if (*v112 == v90)
      {
        v94 = *(*(&v111 + 1) + 8 * v93);
        if (*(v94 + *v91) == 1)
        {
          goto LABEL_116;
        }
      }

      else
      {
        objc_enumerationMutation(v87);
        v94 = *(*(&v111 + 1) + 8 * v93);
        if (*(v94 + *v91) == 1)
        {
LABEL_116:
          ++*(v94 + *v92);
        }
      }

      if (v89 == ++v93)
      {
        v89 = [v87 countByEnumeratingWithState:&v111 objects:v116 count:16];
        if (!v89)
        {
          goto LABEL_117;
        }

        goto LABEL_110;
      }
    }
  }

  v99 = *&v30[v52];
  if (v53 == v99)
  {
    v100 = *(v130 + v52);
    if (v100 > 301989895)
    {
      if (v100 != 301989896 && v100 != 335544328)
      {
        goto LABEL_97;
      }
    }

    else if (((v100 - 268435464) > 0x18 || ((1 << (v100 - 8)) & 0x1000101) == 0) && v100 != -1879048176)
    {
      goto LABEL_97;
    }
  }

  else if (v53 != 268435488 || v99 != 268435472 || *(v130 + v52) != 268435488)
  {
    goto LABEL_97;
  }

  v101 = *(v105 + 88);
  if (v32)
  {
    if (v101 == 3)
    {
LABEL_98:
      EncodeMatrixMultiply(v105, a3, a4, v29, v30, [v118 objectAtIndexedSubscript:2], v130, &v117, &v115);
      if (v34)
      {
        goto LABEL_118;
      }

      goto LABEL_106;
    }

    goto LABEL_101;
  }

  v102 = *(v105 + 152);
  if (v101 == 3)
  {
    EncodeMatrixMultiplyMPSMatrix(v105, a3, a4, v102, v29, v30, [v118 objectAtIndexedSubscript:2], v130, &v117);
  }

  else
  {
    EncodeMatrixMultiplyMPSMatrix(v105, a3, a4, v102, v29, v30, 0, v130, &v117);
  }

  if ((v34 & 1) == 0)
  {
    goto LABEL_106;
  }

LABEL_118:
  if ([v118 count])
  {
    v95 = 0;
    do
    {
      v96 = [v118 objectAtIndexedSubscript:v95];
      if (v96 != [a5[2] objectAtIndexedSubscript:v95])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          MPSDecrementReadCount(v96);
        }
      }

      ++v95;
    }

    while (v95 < [v118 count]);
  }

  objc_autoreleasePoolPop(contexta);
  v97 = *MEMORY[0x277D85DE8];
  return 0;
}

void EncodeMatrixMultiplyMPSMatrix(void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, char *a6, char *a7, char *a8, void *a9)
{
  v13 = a2;
  v239 = *MEMORY[0x277D85DE8];
  v190 = a1[18];
  v14 = MEMORY[0x277CD73C8];
  v15 = MEMORY[0x277CD73D8];
  if (a5)
  {
    if (*&a5[*MEMORY[0x277CD73C8]] == -1879048176)
    {
      v17 = [a5 descriptor];
      v18 = objc_alloc(MEMORY[0x277CD7268]);
      v19 = *(v17 + *MEMORY[0x277CD7440]);
      v20 = (v17 + *MEMORY[0x277CD7458]);
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[3];
      v233 = v20[2];
      v234 = v23;
      v231 = v21;
      v232 = v22;
      v24 = [v18 initWithDataType:268435488 dimensions:v19 sizes:&v231];
      v25 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v24];
      *(v25 + *v15) = *&a5[*v15];
      *(v25 + *v15 + 1) = a5[*v15 + 1];
      *(v25 + *v15 + 2) = a5[*v15 + 2];
      *(v25 + *v15 + 3) = a5[*v15 + 3];
      *(v25 + *v15 + 4) = a5[*v15 + 4];
      *(v25 + *v15 + 5) = a5[*v15 + 5];
      *(v25 + *v15 + 6) = a5[*v15 + 6];
      *(v25 + *v15 + 7) = a5[*v15 + 7];
      *(v25 + *v15 + 8) = a5[*v15 + 8];
      *(v25 + *v15 + 9) = a5[*v15 + 9];
      *(v25 + *v15 + 10) = a5[*v15 + 10];
      *(v25 + *v15 + 11) = a5[*v15 + 11];
      *(v25 + *v15 + 12) = a5[*v15 + 12];
      *(v25 + *v15 + 13) = a5[*v15 + 13];
      *(v25 + *v15 + 14) = a5[*v15 + 14];
      v26 = v25;
      *(v25 + *v15 + 15) = a5[*v15 + 15];
      v27 = a1[19];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a5 setReadCount:{objc_msgSend(a5, "readCount") + 1}];
      }

      *&v231 = a5;
      v13 = a2;
      [v27 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v231 kernelDAGObject:{1), 0, v26, 0}];
      v14 = MEMORY[0x277CD73C8];
      v28 = a1;
      if (!a6)
      {
LABEL_14:
        v194 = 0;
        if (a7)
        {
          goto LABEL_15;
        }

LABEL_21:
        v47 = 0;
        v49 = v190;
        v50 = v26;
        if (a8)
        {
          goto LABEL_22;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v26 = a5;
      v28 = a1;
      if (!a6)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v26 = 0;
    v28 = a1;
    if (!a6)
    {
      goto LABEL_14;
    }
  }

  if (*&a6[*v14] == -1879048176)
  {
    v29 = [a6 descriptor];
    v30 = objc_alloc(MEMORY[0x277CD7268]);
    v31 = *(v29 + *MEMORY[0x277CD7440]);
    v32 = (v29 + *MEMORY[0x277CD7458]);
    v33 = *v32;
    v34 = v32[1];
    v35 = v32[3];
    v233 = v32[2];
    v234 = v35;
    v231 = v33;
    v232 = v34;
    v36 = [v30 initWithDataType:268435488 dimensions:v31 sizes:&v231];
    v37 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v36];
    *(v37 + *v15) = *&a6[*v15];
    *(v37 + *v15 + 1) = a6[*v15 + 1];
    *(v37 + *v15 + 2) = a6[*v15 + 2];
    *(v37 + *v15 + 3) = a6[*v15 + 3];
    *(v37 + *v15 + 4) = a6[*v15 + 4];
    *(v37 + *v15 + 5) = a6[*v15 + 5];
    *(v37 + *v15 + 6) = a6[*v15 + 6];
    *(v37 + *v15 + 7) = a6[*v15 + 7];
    *(v37 + *v15 + 8) = a6[*v15 + 8];
    *(v37 + *v15 + 9) = a6[*v15 + 9];
    *(v37 + *v15 + 10) = a6[*v15 + 10];
    *(v37 + *v15 + 11) = a6[*v15 + 11];
    *(v37 + *v15 + 12) = a6[*v15 + 12];
    *(v37 + *v15 + 13) = a6[*v15 + 13];
    *(v37 + *v15 + 14) = a6[*v15 + 14];
    v194 = v37;
    *(v37 + *v15 + 15) = a6[*v15 + 15];
    v38 = v28[19];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a6 setReadCount:{objc_msgSend(a6, "readCount") + 1}];
    }

    *&v231 = a6;
    [v38 encodeToMPSCommandEncoder:v13 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v231 kernelDAGObject:{1), 0, v194, 0}];
    v14 = MEMORY[0x277CD73C8];
    if (!a7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v194 = a6;
    if (!a7)
    {
      goto LABEL_21;
    }
  }

LABEL_15:
  if (*&a7[*v14] != -1879048176)
  {
    v47 = a7;
    v49 = v190;
    v50 = v26;
    if (a8)
    {
      goto LABEL_22;
    }

LABEL_27:
    v193 = 0;
    goto LABEL_29;
  }

  v39 = [a7 descriptor];
  v40 = objc_alloc(MEMORY[0x277CD7268]);
  v41 = *(v39 + *MEMORY[0x277CD7440]);
  v42 = (v39 + *MEMORY[0x277CD7458]);
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[3];
  v233 = v42[2];
  v234 = v45;
  v231 = v43;
  v232 = v44;
  v46 = [v40 initWithDataType:268435488 dimensions:v41 sizes:&v231];
  v47 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v46];
  *(v47 + *v15) = *&a7[*v15];
  *(v47 + *v15 + 1) = a7[*v15 + 1];
  *(v47 + *v15 + 2) = a7[*v15 + 2];
  *(v47 + *v15 + 3) = a7[*v15 + 3];
  *(v47 + *v15 + 4) = a7[*v15 + 4];
  *(v47 + *v15 + 5) = a7[*v15 + 5];
  *(v47 + *v15 + 6) = a7[*v15 + 6];
  *(v47 + *v15 + 7) = a7[*v15 + 7];
  *(v47 + *v15 + 8) = a7[*v15 + 8];
  *(v47 + *v15 + 9) = a7[*v15 + 9];
  *(v47 + *v15 + 10) = a7[*v15 + 10];
  *(v47 + *v15 + 11) = a7[*v15 + 11];
  *(v47 + *v15 + 12) = a7[*v15 + 12];
  *(v47 + *v15 + 13) = a7[*v15 + 13];
  *(v47 + *v15 + 14) = a7[*v15 + 14];
  *(v47 + *v15 + 15) = a7[*v15 + 15];
  v48 = v28[19];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a7 setReadCount:{objc_msgSend(a7, "readCount") + 1}];
  }

  *&v231 = a7;
  [v48 encodeToMPSCommandEncoder:v13 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v231 kernelDAGObject:{1), 0, v47, 0}];
  v14 = MEMORY[0x277CD73C8];
  v49 = v190;
  v50 = v26;
  if (!a8)
  {
    goto LABEL_27;
  }

LABEL_22:
  if (*&a8[*v14] == -1879048176)
  {
    v51 = [a8 descriptor];
    v52 = objc_alloc(MEMORY[0x277CD7268]);
    v53 = *(v51 + *MEMORY[0x277CD7440]);
    v54 = (v51 + *MEMORY[0x277CD7458]);
    v55 = *v54;
    v56 = v54[1];
    v57 = v54[3];
    v233 = v54[2];
    v234 = v57;
    v231 = v55;
    v232 = v56;
    v58 = [v52 initWithDataType:268435488 dimensions:v53 sizes:&v231];
    v59 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v58];
    *(v59 + *v15) = *&a8[*v15];
    *(v59 + *v15 + 1) = a8[*v15 + 1];
    *(v59 + *v15 + 2) = a8[*v15 + 2];
    *(v59 + *v15 + 3) = a8[*v15 + 3];
    *(v59 + *v15 + 4) = a8[*v15 + 4];
    *(v59 + *v15 + 5) = a8[*v15 + 5];
    *(v59 + *v15 + 6) = a8[*v15 + 6];
    *(v59 + *v15 + 7) = a8[*v15 + 7];
    *(v59 + *v15 + 8) = a8[*v15 + 8];
    *(v59 + *v15 + 9) = a8[*v15 + 9];
    *(v59 + *v15 + 10) = a8[*v15 + 10];
    *(v59 + *v15 + 11) = a8[*v15 + 11];
    *(v59 + *v15 + 12) = a8[*v15 + 12];
    *(v59 + *v15 + 13) = a8[*v15 + 13];
    *(v59 + *v15 + 14) = a8[*v15 + 14];
    v193 = v59;
    *(v59 + *v15 + 15) = a8[*v15 + 15];
    v60 = v28[19];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a8 setReadCount:{objc_msgSend(a8, "readCount") + 1}];
    }

    *&v231 = a8;
    [v60 encodeToMPSCommandEncoder:v13 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v231 kernelDAGObject:{1), 0, v193, 0}];
  }

  else
  {
    v193 = a8;
  }

LABEL_29:
  v61 = *v15;
  v62 = *&v50[v61];
  v63 = BYTE1(*&v50[v61]);
  v64 = *&v194[v61];
  v65 = BYTE1(*&v194[v61]);
  v66 = *MEMORY[0x277CD7410];
  if (v62 <= v63)
  {
    v77 = *&v50[v66];
    v78 = *&v50[v66 + 16];
    v79 = *&v50[v66 + 32];
    v229 = *&v50[v66 + 48];
    v228[2] = v79;
    v228[1] = v78;
    v228[0] = v77;
    v80 = *(v228 + (v63 & 0xF)) == *&v194[4 * (v65 & 0xF) + v66];
    v227[3] = v229;
    v227[2] = v79;
    v227[1] = v78;
    v227[0] = v77;
    v80 = v80 && *(v227 + (v62 & 0xF)) == 1;
    v67 = v80;
    v191 = a9;
    v192 = a3;
    if (v64 <= v65)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v67 = 1;
    v191 = a9;
    v192 = a3;
    if (*&v194[v61] <= v65)
    {
LABEL_31:
      v68 = v47;
      v69 = *&v194[v66];
      v70 = *&v194[v66 + 16];
      v71 = *&v194[v66 + 32];
      v72 = *&v194[v66 + 48];
      v226[3] = v72;
      v226[2] = v71;
      v226[1] = v70;
      v226[0] = v69;
      v73 = v50;
      v74 = v28;
      v75 = v13;
      if (*(v226 + (v64 & 0xF)) == *&v50[4 * (v62 & 0xF) + v66])
      {
        v225[0] = v69;
        v225[1] = v70;
        v225[2] = v71;
        v225[3] = v72;
        v76 = *(v225 + (v65 & 0xF)) == 1;
      }

      else
      {
        v76 = 0;
      }

      goto LABEL_42;
    }
  }

  v73 = v50;
  v68 = v47;
  v74 = v28;
  v75 = v13;
  v76 = 1;
LABEL_42:
  [v49 setM:*&v193[4 * (v193[v61 + 1] & 0xF) + v66]];
  v81 = MEMORY[0x277CD7410];
  v82 = MEMORY[0x277CD73D8];
  [v49 setN:*&v193[4 * (*&v193[*MEMORY[0x277CD73D8]] & 0xF) + *MEMORY[0x277CD7410]]];
  v83 = *v82;
  v84 = v73;
  [v49 setK:*&v73[4 * (*&v73[v83] & 0xF) + *v81]];
  [v49 setTransA:v67];
  [v49 setTransB:v76];
  [v74 alpha];
  *&v85 = v85;
  [v49 setAlpha:*&v85];
  v86 = v68;
  if (v68)
  {
    [v74 beta];
  }

  else
  {
    v87 = 0.0;
  }

  v88 = v194;
  [v49 setBeta:v87];
  makeStrideBytes();
  v89 = MEMORY[0x277CD73D8];
  v90 = *&v84[*MEMORY[0x277CD73D8]];
  v224[7] = v238;
  v224[6] = v237;
  v224[5] = v236;
  v224[4] = v235;
  v224[3] = v234;
  v224[2] = v233;
  v224[1] = v232;
  v224[0] = v231;
  v91 = *(v224 + (v90 & 0xF));
  v223[7] = v238;
  v223[6] = v237;
  v223[5] = v236;
  v223[4] = v235;
  v223[3] = v234;
  v223[2] = v233;
  v223[1] = v232;
  v223[0] = v231;
  v92 = *(v223 + (BYTE1(v90) & 0xF));
  v222[7] = v238;
  v222[6] = v237;
  v222[5] = v236;
  v222[4] = v235;
  v222[3] = v234;
  v222[2] = v233;
  v222[1] = v232;
  v222[0] = v231;
  v187 = *(v222 + (BYTE2(v90) & 0xF));
  v221[7] = v238;
  v221[6] = v237;
  v221[5] = v236;
  v221[4] = v235;
  v221[3] = v234;
  v221[2] = v233;
  v221[1] = v232;
  v221[0] = v231;
  v186 = *(v221 + (BYTE3(v90) & 0xF));
  makeStrideBytes();
  v93 = *&v194[*v89];
  v220[7] = v238;
  v220[6] = v237;
  v220[5] = v236;
  v220[4] = v235;
  v220[3] = v234;
  v220[2] = v233;
  v220[1] = v232;
  v220[0] = v231;
  v184 = *(v220 + (v93 & 0xF));
  v219[7] = v238;
  v219[6] = v237;
  v219[5] = v236;
  v219[4] = v235;
  v219[3] = v234;
  v219[2] = v233;
  v219[1] = v232;
  v219[0] = v231;
  v182 = *(v219 + (BYTE1(v93) & 0xF));
  v218[7] = v238;
  v218[6] = v237;
  v218[5] = v236;
  v218[4] = v235;
  v218[3] = v234;
  v218[2] = v233;
  v218[1] = v232;
  v218[0] = v231;
  v181 = *(v218 + (BYTE2(v93) & 0xF));
  v217[7] = v238;
  v217[6] = v237;
  v217[5] = v236;
  v217[4] = v235;
  v217[3] = v234;
  v217[2] = v233;
  v217[1] = v232;
  v217[0] = v231;
  v180 = *(v217 + (BYTE3(v93) & 0xF));
  makeStrideBytes();
  v94 = *v89;
  v95 = *&v193[v94];
  v216[7] = v238;
  v216[6] = v237;
  v216[5] = v236;
  v216[4] = v235;
  v216[3] = v234;
  v216[2] = v233;
  v216[1] = v232;
  v216[0] = v231;
  v96 = v95 & 0xF;
  v97 = *(v216 + v96);
  v215[7] = v238;
  v215[6] = v237;
  v215[5] = v236;
  v215[4] = v235;
  v215[3] = v234;
  v215[2] = v233;
  v215[1] = v232;
  v215[0] = v231;
  v98 = BYTE1(v95) & 0xF;
  v179 = *(v215 + v98);
  v214[7] = v238;
  v214[6] = v237;
  v214[5] = v236;
  v214[4] = v235;
  v214[3] = v234;
  v214[2] = v233;
  v214[1] = v232;
  v214[0] = v231;
  v99 = BYTE2(v95) & 0xF;
  v177 = *(v214 + v99);
  v213[7] = v238;
  v213[6] = v237;
  v213[5] = v236;
  v213[4] = v235;
  v213[3] = v234;
  v213[2] = v233;
  v213[1] = v232;
  v213[0] = v231;
  v100 = BYTE3(v95) & 0xF;
  v176 = *(v213 + v100);
  v101 = *MEMORY[0x277CD7418];
  v102 = *&v84[v101];
  v103 = *&v84[v101 + 16];
  v104 = *&v84[v101 + 48];
  v105 = *&v84[v94];
  v211 = *&v84[v101 + 32];
  v212 = v104;
  v210[0] = v102;
  v210[1] = v103;
  v173 = *(v210 + (v105 & 0xF));
  v209[2] = v211;
  v209[3] = v104;
  v209[0] = v102;
  v209[1] = v103;
  v171 = *(v209 + (BYTE1(v105) & 0xF));
  v208[2] = v211;
  v208[3] = v104;
  v208[0] = v102;
  v208[1] = v103;
  v169 = *(v208 + (BYTE2(v105) & 0xF));
  v207[2] = v211;
  v207[3] = v104;
  v207[0] = v102;
  v207[1] = v103;
  v167 = *(v207 + (BYTE3(v105) & 0xF));
  v106 = v191[1];
  v178 = *(v106 + 64);
  v107 = *&v194[v101];
  v108 = *&v194[v101 + 16];
  v109 = *&v194[v101 + 48];
  v110 = *&v194[v94];
  v205 = *&v194[v101 + 32];
  v206 = v109;
  v204[0] = v107;
  v204[1] = v108;
  v165 = *(v204 + (v110 & 0xF));
  v203[2] = v205;
  v203[3] = v109;
  v203[0] = v107;
  v203[1] = v108;
  v164 = *(v203 + (BYTE1(v110) & 0xF));
  v202[2] = v205;
  v202[3] = v109;
  v202[0] = v107;
  v202[1] = v108;
  v163 = *(v202 + (BYTE2(v110) & 0xF));
  v201[2] = v205;
  v201[3] = v109;
  v201[0] = v107;
  v201[1] = v108;
  v162 = *(v201 + (BYTE3(v110) & 0xF));
  v175 = *(v106 + 144);
  v111 = *&v193[v101];
  v112 = *&v193[v101 + 16];
  v113 = *&v193[v101 + 48];
  v199 = *&v193[v101 + 32];
  v200 = v113;
  v198[0] = v111;
  v198[1] = v112;
  v114 = *(v198 + v96);
  v197[2] = v199;
  v197[3] = v113;
  v197[0] = v111;
  v197[1] = v112;
  v161 = *(v197 + v98);
  v196[2] = v199;
  v196[3] = v113;
  v196[0] = v111;
  v196[1] = v112;
  v160 = *(v196 + v99);
  v195[2] = v199;
  v195[3] = v113;
  v195[0] = v111;
  v195[1] = v112;
  v159 = *(v195 + v100);
  v166 = v191[24];
  if (v86)
  {
    [v49 beta];
    if (v115 != 0.0)
    {
      v155 = v114;
      v156 = v97;
      v116 = *(v191[1] + 224);
      v117 = [v86 descriptor];
      v118 = [v117 numberOfDimensions];
      v119 = MEMORY[0x277CD73F8];
      v120 = MEMORY[0x277CD73F0];
      v121 = v92;
      if (v118 >= 4)
      {
        v86 = [v86 safeArrayViewWithCommandBuffer:v192 descriptor:v117 aliasing:1];
        *&v86[*v119] = v116;
        *&v86[*v120] = 3;
      }

      v122 = v191[24];
      v123 = v193;
      v124 = [v193 descriptor];
      if ([v124 numberOfDimensions] >= 4)
      {
        v123 = [v193 safeArrayViewWithCommandBuffer:v192 descriptor:v124 aliasing:1];
        *(v123 + *v119) = v122;
        *(v123 + *v120) = 3;
      }

      v230 = v86;
      [a4 encodeToCommandEncoder:v75 commandBuffer:v192 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", &v230, 1), v123}];
      v88 = v194;
      v92 = v121;
      v114 = v155;
      v97 = v156;
    }
  }

  v125 = *MEMORY[0x277CD7410];
  v126 = &v84[v125];
  v127 = *&v84[v125 + 4];
  v128 = *&v84[v125 + 8];
  v129 = *&v88[v125 + 8];
  if (v128 == 1)
  {
    v130 = 0;
    v131 = v92;
    if (v129 > 1)
    {
      v132 = MEMORY[0x277CD7420];
      v133 = 0;
      v128 = v129;
      goto LABEL_62;
    }
  }

  else
  {
    v131 = v92;
    if (v128)
    {
      v134 = v129 == 1;
    }

    else
    {
      v134 = 0;
    }

    v130 = v134;
  }

  v132 = MEMORY[0x277CD7420];
  v133 = *&v84[*MEMORY[0x277CD7420] + 16];
LABEL_62:
  v135 = v84;
  v158 = v91 * v173;
  v172 = v131 * v171;
  v174 = v186 * v167;
  v168 = v184 * v165;
  v170 = v187 * v169;
  v136 = v182 * v164;
  v137 = v97 * v114;
  v185 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v127 columns:*v126 matrices:v128 rowBytes:*&v135[*MEMORY[0x277CD7400]] matrixBytes:v133 dataType:*&v135[*MEMORY[0x277CD73C8]]];
  v138 = *MEMORY[0x277CD7410];
  v139 = *&v194[v138];
  if (v130)
  {
    v140 = 0;
    v141 = *&v84[v138 + 8];
  }

  else
  {
    v141 = DWORD2(*&v194[v138 + 8]);
    v140 = *&v194[*v132 + 16];
  }

  v142 = MEMORY[0x277CD7400];
  v183 = v179 * v161 + v166 + v137 + v177 * v160;
  v143 = v136 + v175 + v168 + v181 * v163;
  v144 = MEMORY[0x277CD73C8];
  v145 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:DWORD1(v139) columns:v139 matrices:v141 rowBytes:*&v194[*MEMORY[0x277CD7400]] matrixBytes:v140 dataType:*&v194[*MEMORY[0x277CD73C8]]];
  v146 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:*&v193[*MEMORY[0x277CD7410] + 4] columns:*&v193[*MEMORY[0x277CD7410]] matrices:*&v193[*MEMORY[0x277CD7410] + 8] rowBytes:*&v193[*v142] matrixBytes:*&v193[*v132 + 16] dataType:*&v193[*v144]];
  v147 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v135 offset:"buffer") descriptor:{v172 + v178 + v158 + v170 + v174, v185}];
  v148 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v194 offset:"buffer") descriptor:{v143 + v180 * v162, v145}];
  v149 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v193 offset:"buffer") descriptor:{v183 + v176 * v159, v146}];
  [v190 encodeToCommandBuffer:v192 encoder:a2 leftMatrix:v147 rightMatrix:v148 resultMatrix:v149];
  v150 = *v144;
  if (*&v193[v150] == 268435488)
  {
    v151 = v191[26];
    v152 = *(v151 + v150);
    if (v152 > 301989895)
    {
      if (v152 != 335544328 && v152 != 301989896)
      {
        goto LABEL_75;
      }
    }

    else if (v152 != -1879048176 && v152 != 268435464)
    {
      goto LABEL_75;
    }

    v153 = a1[19];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v193 setReadCount:{objc_msgSend(v193, "readCount") + 1}];
    }

    *&v231 = v193;
    [v153 encodeToMPSCommandEncoder:a2 commandBuffer:v192 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v231 kernelDAGObject:{1), 0, v151, 0}];
  }

LABEL_75:

  v154 = *MEMORY[0x277D85DE8];
}

uint64_t EncodeMatrixMultiply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v9 = MEMORY[0x28223BE20]();
  v15 = v14;
  v17 = v16;
  v18 = v13;
  v19 = v9;
  v305 = *MEMORY[0x277D85DE8];
  v20 = *(v9 + *MEMORY[0x277CD7350]);
  v21 = *(v9 + 200);
  v22 = *MEMORY[0x277CD7410];
  v23 = *&v16[v22];
  v24 = *&v16[v22 + 16];
  v25 = MEMORY[0x277CD73D8];
  v26 = *&v16[v22 + 32];
  v27 = *MEMORY[0x277CD73D8];
  v28 = *&v16[v27];
  v288 = *&v16[v22 + 48];
  v287[2] = v26;
  v287[1] = v24;
  v287[0] = v23;
  v29 = *(v287 + (BYTE1(v28) & 0xF));
  v286[3] = v288;
  v286[2] = v26;
  v286[1] = v24;
  v286[0] = v23;
  v30 = *(v286 + (v28 & 0xF));
  if (v21 && (*(v21 + 30) & 1) != 0)
  {
    v31 = 1;
    goto LABEL_60;
  }

  if (v29 >> 10 > 6 || v30 >> 10 >= 7)
  {
    v33 = *&v11[4 * (*&v11[v27] & 0xF) + v22];
    v34 = v33 == 18816 || v33 == 7168;
    if (v34)
    {
      v35 = v29 >= 8;
      goto LABEL_57;
    }
  }

  v36 = *MEMORY[0x277CD73C8];
  v37 = *&v11[v36];
  if (v37 == 268435488)
  {
    v34 = *&v12[v36] == 268435488;
    v38 = 3;
    if (v34)
    {
      v38 = 4;
    }
  }

  else
  {
    v38 = 3;
  }

  v39 = 9;
  if (v30 * v29 * v38 < *(v20 + 1480) << 12)
  {
    v39 = 15;
  }

  if (*(v20 + 1472) > 10)
  {
    v43 = *&v12[4 * (WORD1(*&v12[v27]) & 0xF) + v22];
    if (*&v11[v27] <= BYTE1(*&v11[v27]) && v43 == 1)
    {
      v45 = *&v11[4 * (WORD1(*&v11[v27]) & 0xF) + v22];
    }

    else
    {
      v45 = 1;
    }

    v29 = v45 * v29;
    v46 = v30 * v43;
    if (*&v12[v27] <= BYTE1(*&v12[v27]))
    {
      v46 = *(v286 + (v28 & 0xF));
    }

    if (*&v11[4 * (WORD1(*&v11[v27]) & 0xF) + v22] == 1)
    {
      v30 = v46;
    }

    v42 = v39;
  }

  else
  {
    v40 = 15;
    if ((v30 & 3) == 0)
    {
      v40 = v39;
    }

    if (v29)
    {
      v41 = 15;
    }

    else
    {
      v41 = v39;
    }

    if (v37 == 268435472)
    {
      v39 = v41;
      v42 = 15;
    }

    else
    {
      v42 = v40;
    }
  }

  v47 = v29 > v39 && v30 > v42;
  v48 = v11[v27 + 3] & 0xF;
  LODWORD(v49) = *&v11[4 * v48 + v22];
  v50 = &v12[v22];
  v51 = *v50;
  v52 = v50[1];
  v53 = v50[2];
  v54 = v50[3];
  v285[3] = v54;
  v285[2] = v53;
  v285[1] = v52;
  v285[0] = v51;
  v55 = *(v285 + v48);
  v31 = !v47;
  if (v49 <= v55)
  {
    v49 = v55;
  }

  else
  {
    v49 = v49;
  }

  v56 = v29 * v49;
  if (v31 == 1 && v56 > v39)
  {
    v58 = *&v12[v27];
    v284[0] = v51;
    v284[1] = v52;
    v284[2] = v53;
    v284[3] = v54;
    v35 = *(v284 + (v58 & 0xF)) >= 0x81u;
LABEL_57:
    v31 = !v35;
  }

LABEL_60:
  if (!v13 && v31)
  {
    *a9 = 1;
    v59 = *MEMORY[0x277D85DE8];

    return EncodeMatrixVectorMultiply();
  }

  v61 = v10;
  v62 = v12;
  *a9 = 0;
  v234 = *&v19[*MEMORY[0x277CD7370]];
  v63 = v11;
  makeStrideBytes();
  v64 = *&v63[*v25];
  v283[7] = v302;
  v283[6] = v301;
  v283[5] = v300;
  v283[4] = v299;
  v283[3] = v298;
  v283[2] = v297;
  v283[1] = v296;
  v283[0] = v295;
  v65 = *(v283 + (v64 & 0xF));
  v282[7] = v302;
  v282[6] = v301;
  v282[5] = v300;
  v282[4] = v299;
  v282[3] = v298;
  v282[2] = v297;
  v282[1] = v296;
  v282[0] = v295;
  v225 = v65;
  *&v66 = v65;
  v211 = *(v282 + (BYTE1(v64) & 0xF));
  *(&v66 + 1) = v211;
  v304[0] = v66;
  v281[7] = v302;
  v281[6] = v301;
  v281[5] = v300;
  v281[4] = v299;
  v281[3] = v298;
  v281[2] = v297;
  v281[1] = v296;
  v281[0] = v295;
  v232 = *(v281 + (BYTE2(v64) & 0xF));
  *&v66 = v232;
  v280[7] = v302;
  v280[6] = v301;
  v280[5] = v300;
  v280[4] = v299;
  v280[3] = v298;
  v280[2] = v297;
  v280[1] = v296;
  v280[0] = v295;
  v220 = *(v280 + (BYTE3(v64) & 0xF));
  *(&v66 + 1) = v220;
  v304[1] = v66;
  makeStrideBytes();
  v235 = v62;
  v67 = *&v62[*v25];
  v279[7] = v302;
  v279[6] = v301;
  v279[5] = v300;
  v279[4] = v299;
  v279[3] = v298;
  v279[2] = v297;
  v279[1] = v296;
  v279[0] = v295;
  v68 = *(v279 + (v67 & 0xF));
  v278[7] = v302;
  v278[6] = v301;
  v278[5] = v300;
  v278[4] = v299;
  v278[3] = v298;
  v278[2] = v297;
  v278[1] = v296;
  v278[0] = v295;
  v69 = *(v278 + (BYTE1(v67) & 0xF));
  v215 = v68;
  *&v70 = v68;
  *(&v70 + 1) = v69;
  v303[0] = v70;
  v277[7] = v302;
  v277[6] = v301;
  v277[5] = v300;
  v277[4] = v299;
  v277[3] = v298;
  v277[2] = v297;
  v277[1] = v296;
  v277[0] = v295;
  v231 = *(v277 + (BYTE2(v67) & 0xF));
  *&v70 = v231;
  v276[7] = v302;
  v276[6] = v301;
  v276[5] = v300;
  v276[4] = v299;
  v276[3] = v298;
  v276[2] = v297;
  v276[1] = v296;
  v276[0] = v295;
  v217 = *(v276 + (BYTE3(v67) & 0xF));
  *(&v70 + 1) = v217;
  v303[1] = v70;
  v233 = v18;
  v236 = v63;
  v222 = v61;
  if (v18)
  {
    makeStrideBytes();
    v71 = *&v18[*v25];
    v275[7] = v302;
    v275[6] = v301;
    v275[5] = v300;
    v275[4] = v299;
    v275[3] = v298;
    v275[2] = v297;
    v275[1] = v296;
    v275[0] = v295;
    v213 = *(v275 + (v71 & 0xF));
    v274[7] = v302;
    v274[6] = v301;
    v274[5] = v300;
    v274[4] = v299;
    v274[3] = v298;
    v274[2] = v297;
    v274[1] = v296;
    v274[0] = v295;
    v207 = *(v274 + (BYTE1(v71) & 0xF));
    v273[7] = v302;
    v273[6] = v301;
    v273[5] = v300;
    v273[4] = v299;
    v273[3] = v298;
    v273[2] = v297;
    v273[1] = v296;
    v273[0] = v295;
    v227 = *(v273 + (BYTE2(v71) & 0xF));
    v272[7] = v302;
    v272[6] = v301;
    v272[5] = v300;
    v272[4] = v299;
    v272[3] = v298;
    v272[2] = v297;
    v272[1] = v296;
    v272[0] = v295;
    v205 = *(v272 + (BYTE3(v71) & 0xF));
  }

  makeStrideBytes();
  v72 = *&v17[*v25];
  v271[7] = v302;
  v271[6] = v301;
  v271[5] = v300;
  v271[4] = v299;
  v271[3] = v298;
  v271[2] = v297;
  v271[1] = v296;
  v271[0] = v295;
  v223 = *(v271 + (v72 & 0xF));
  v270[7] = v302;
  v270[6] = v301;
  v270[5] = v300;
  v270[4] = v299;
  v270[3] = v298;
  v270[2] = v297;
  v270[1] = v296;
  v270[0] = v295;
  v229 = *(v270 + (BYTE1(v72) & 0xF));
  v269[7] = v302;
  v269[6] = v301;
  v269[5] = v300;
  v269[4] = v299;
  v269[3] = v298;
  v269[2] = v297;
  v269[1] = v296;
  v269[0] = v295;
  v230 = *(v269 + (BYTE2(v72) & 0xF));
  v268[7] = v302;
  v268[6] = v301;
  v268[5] = v300;
  v268[4] = v299;
  v268[3] = v298;
  v268[2] = v297;
  v268[1] = v296;
  v268[0] = v295;
  v219 = *(v268 + (BYTE3(v72) & 0xF));
  v73 = [*(v15 + 232) graph];
  v74 = *(v73 + 64);
  v75 = *v74;
  v76 = v74[1];
  v228 = v19;
  if (*v74 == v76)
  {
    v80 = 0;
    v85 = v18;
    v86 = v235;
    v84 = v236;
  }

  else
  {
    v77 = v73;
    v78 = v17;
    v79 = 0;
    v80 = -1;
    v81 = -1;
    do
    {
      v82 = *v75;
      if (v82 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v77) + 32))
      {
        v80 = v79;
      }

      v83 = *v75;
      if (v83 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v77) + 32))
      {
        v81 = v79;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v77) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v77);
      }

      ++v79;
      ++v75;
    }

    while (v75 != v76);
    v84 = v236;
    if (v80 == -1)
    {
      v80 = 0;
      v17 = v78;
      v85 = v233;
      v19 = v228;
      v86 = v235;
      v25 = MEMORY[0x277CD73D8];
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    v17 = v78;
    v85 = v233;
    v19 = v228;
    v86 = v235;
    v25 = MEMORY[0x277CD73D8];
    if (v81 != -1)
    {
      goto LABEL_83;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_81:
    MTLReportFailure();
  }

LABEL_82:
  v81 = 0;
LABEL_83:
  v87 = *MEMORY[0x277CD7418];
  v88 = *&v84[v87];
  v89 = *&v84[v87 + 16];
  v90 = *&v84[v87 + 32];
  v91 = *v25;
  v92 = *&v84[v91];
  v93 = v92;
  v262 = *&v84[v87 + 48];
  v261[2] = v90;
  v261[1] = v89;
  v261[0] = v88;
  v94 = *(v261 + (v92 & 0xF));
  v95 = BYTE1(v92);
  v260[3] = v262;
  v260[2] = v90;
  v260[1] = v89;
  v260[0] = v88;
  v96 = *(v260 + (BYTE1(v92) & 0xF));
  v259[3] = v262;
  v259[2] = v90;
  v259[1] = v89;
  v259[0] = v88;
  v97 = *(v259 + (BYTE2(v92) & 0xF));
  v258[3] = v262;
  v258[2] = v90;
  v258[1] = v89;
  v258[0] = v88;
  v98 = *(v258 + (BYTE3(v92) & 0xF));
  v99 = *(v15 + 8);
  v100 = *(v99 + 80 * v80 + 64);
  v101 = *&v86[v87];
  v102 = *&v86[v87 + 16];
  v103 = *&v86[v87 + 32];
  v104 = *&v86[v91];
  v105 = v104;
  v267 = *&v86[v87 + 48];
  v266[2] = v103;
  v266[1] = v102;
  v266[0] = v101;
  v106 = *(v266 + (v104 & 0xF));
  v107 = BYTE1(v104);
  v265[3] = v267;
  v265[2] = v103;
  v265[1] = v102;
  v265[0] = v101;
  v108 = *(v265 + (BYTE1(v104) & 0xF));
  v264[3] = v267;
  v264[2] = v103;
  v264[1] = v102;
  v264[0] = v101;
  v109 = *(v264 + (BYTE2(v104) & 0xF));
  v263[3] = v267;
  v263[2] = v103;
  v263[1] = v102;
  v263[0] = v101;
  v209 = *(v263 + (BYTE3(v104) & 0xF));
  v110 = *(v99 + 80 * v81 + 64);
  if (v85)
  {
    v111 = *&v85[v87];
    v112 = *&v85[v87 + 16];
    v113 = *&v85[v87 + 32];
    v114 = *&v85[v91];
    v257 = *&v85[v87 + 48];
    v256[2] = v113;
    v256[1] = v112;
    v256[0] = v111;
    v115 = *(v256 + (v114 & 0xF));
    v255[3] = v257;
    v255[2] = v113;
    v255[0] = v111;
    v255[1] = v112;
    v116 = *(v255 + (BYTE1(v114) & 0xF));
    v254[2] = v113;
    v254[3] = v257;
    v254[0] = v111;
    v254[1] = v112;
    v117 = *(v254 + (BYTE2(v114) & 0xF));
    v253[2] = v113;
    v253[3] = v257;
    v253[0] = v111;
    v253[1] = v112;
    v118 = *(v99 + 224) + v207 * v116 + v213 * v115 + v227 * v117 + v205 * *(v253 + (BYTE3(v114) & 0xF));
  }

  else
  {
    v118 = 0;
  }

  v119 = &v17[v87];
  v120 = *v119;
  v121 = v119[1];
  v122 = v119[3];
  v123 = *&v17[v91];
  v251 = v119[2];
  v252 = v122;
  v250[0] = v120;
  v250[1] = v121;
  v124 = *(v250 + (v123 & 0xF));
  v249[2] = v251;
  v249[3] = v122;
  v249[0] = v120;
  v249[1] = v121;
  v125 = *(v249 + (BYTE1(v123) & 0xF));
  v248[2] = v251;
  v248[3] = v122;
  v248[0] = v120;
  v248[1] = v121;
  v126 = *(v248 + (BYTE2(v123) & 0xF));
  v247[2] = v251;
  v247[3] = v122;
  v247[0] = v120;
  v247[1] = v121;
  v127 = *(v247 + (BYTE3(v123) & 0xF));
  v128 = *(v15 + 192);
  if (v93 <= v95)
  {
    v137 = *MEMORY[0x277CD7410];
    v138 = *&v84[v137];
    v139 = *&v84[v137 + 16];
    v140 = *&v84[v137 + 48];
    v245 = *&v84[v137 + 32];
    v246 = v140;
    v244[0] = v138;
    v244[1] = v139;
    v34 = *(v244 + (v95 & 0xF)) == *&v86[4 * (v107 & 0xF) + v137];
    v243[2] = v245;
    v243[3] = v140;
    v243[0] = v138;
    v243[1] = v139;
    v129 = v34 && *(v243 + (v93 & 0xF)) == 1;
    v130 = v211;
    if (v105 <= v107)
    {
      goto LABEL_88;
    }

LABEL_97:
    v136 = 1;
    goto LABEL_99;
  }

  v129 = 1;
  v130 = v211;
  if (v105 > v107)
  {
    goto LABEL_97;
  }

LABEL_88:
  v131 = *MEMORY[0x277CD7410];
  v132 = *&v86[v131];
  v133 = *&v86[v131 + 16];
  v134 = *&v86[v131 + 32];
  v135 = *&v86[v131 + 48];
  v242[2] = v134;
  v242[3] = v135;
  v242[0] = v132;
  v242[1] = v133;
  if (*(v242 + (v105 & 0xF)) == *&v84[4 * (v93 & 0xF) + v131])
  {
    v241[0] = v132;
    v241[1] = v133;
    v241[2] = v134;
    v241[3] = v135;
    v136 = *(v241 + (v107 & 0xF)) == 1;
  }

  else
  {
    v136 = 0;
  }

LABEL_99:
  v142 = *MEMORY[0x277CD73C8];
  v143 = *&v86[v142];
  if (v143 > 285212703)
  {
    if (v143 <= 536870915)
    {
      if (v143 > 301989895)
      {
        if (v143 == 301989896)
        {
          v145 = 512;
          v144 = v225;
          goto LABEL_145;
        }

        v144 = v225;
        if (v143 == 335544328)
        {
          v145 = 544;
          goto LABEL_145;
        }
      }

      else
      {
        if (v143 == 285212704)
        {
          v145 = 416;
          v144 = v225;
          goto LABEL_145;
        }

        v144 = v225;
        if (v143 == 285212736)
        {
          v145 = 448;
          goto LABEL_145;
        }
      }
    }

    else if (v143 <= 536870927)
    {
      if (v143 == 536870916)
      {
        v145 = 0;
        v144 = v225;
        goto LABEL_145;
      }

      v144 = v225;
      if (v143 == 536870920)
      {
        v145 = 32;
        goto LABEL_145;
      }
    }

    else
    {
      if (v143 == 536870928)
      {
        v145 = 64;
        v144 = v225;
        goto LABEL_145;
      }

      if (v143 == 536870944)
      {
        v145 = 96;
        v144 = v225;
        goto LABEL_145;
      }

      v144 = v225;
      if (v143 == 536870976)
      {
        v145 = 128;
        goto LABEL_145;
      }
    }
  }

  else if (v143 <= 31)
  {
    if (v143 > 7)
    {
      v144 = v225;
      if (v143 == 8)
      {
        v145 = 192;
        goto LABEL_145;
      }

      if (v143 == 16)
      {
        v145 = 224;
        goto LABEL_145;
      }
    }

    else
    {
      if (v143 == -1879048176)
      {
        v145 = 384;
        v144 = v225;
        goto LABEL_145;
      }

      v144 = v225;
      if (v143 == 4)
      {
        v145 = 160;
        goto LABEL_145;
      }
    }
  }

  else if (v143 <= 268435463)
  {
    v144 = v225;
    if (v143 == 32)
    {
      v145 = 256;
      goto LABEL_145;
    }

    if (v143 == 64)
    {
      v145 = 288;
      goto LABEL_145;
    }
  }

  else
  {
    if (v143 == 268435464)
    {
      v145 = 480;
      v144 = v225;
      goto LABEL_145;
    }

    if (v143 == 268435472)
    {
      v145 = 320;
      v144 = v225;
      goto LABEL_145;
    }

    v144 = v225;
    if (v143 == 268435488)
    {
      v145 = 352;
      goto LABEL_145;
    }
  }

  v145 = 576;
LABEL_145:
  v146 = v100 + v130 * v96;
  v147 = v110 + v69 * v108;
  v148 = *&v84[v142];
  if (v148 > 285212703)
  {
    if (v148 <= 536870915)
    {
      if (v148 > 301989895)
      {
        if (v148 == 301989896)
        {
          v149 = 0x4000;
          goto LABEL_189;
        }

        if (v148 == 335544328)
        {
          v149 = 17408;
          goto LABEL_189;
        }
      }

      else
      {
        if (v148 == 285212704)
        {
          v149 = 13312;
          goto LABEL_189;
        }

        if (v148 == 285212736)
        {
          v149 = 14336;
          goto LABEL_189;
        }
      }
    }

    else if (v148 <= 536870927)
    {
      if (v148 == 536870916)
      {
        v149 = 0;
        goto LABEL_189;
      }

      if (v148 == 536870920)
      {
        v149 = 1024;
        goto LABEL_189;
      }
    }

    else
    {
      switch(v148)
      {
        case 536870928:
          v149 = 2048;
          goto LABEL_189;
        case 536870944:
          v149 = 3072;
          goto LABEL_189;
        case 536870976:
          v149 = 4096;
          goto LABEL_189;
      }
    }
  }

  else if (v148 <= 31)
  {
    if (v148 > 7)
    {
      if (v148 == 8)
      {
        v149 = 6144;
        goto LABEL_189;
      }

      if (v148 == 16)
      {
        v149 = 7168;
        goto LABEL_189;
      }
    }

    else
    {
      if (v148 == -1879048176)
      {
        v149 = 12288;
        goto LABEL_189;
      }

      if (v148 == 4)
      {
        v149 = 5120;
        goto LABEL_189;
      }
    }
  }

  else if (v148 <= 268435463)
  {
    if (v148 == 32)
    {
      v149 = 0x2000;
      goto LABEL_189;
    }

    if (v148 == 64)
    {
      v149 = 9216;
      goto LABEL_189;
    }
  }

  else
  {
    switch(v148)
    {
      case 268435464:
        v149 = 15360;
        goto LABEL_189;
      case 268435472:
        v149 = 10240;
        goto LABEL_189;
      case 268435488:
        v149 = 11264;
        goto LABEL_189;
    }
  }

  v149 = 18432;
LABEL_189:
  v150 = v128 + v229 * v125;
  v151 = v146 + v144 * v94;
  v152 = v147 + v215 * v106;
  v153 = *&v17[v142];
  v206 = v118;
  v214 = v127;
  v208 = v15;
  if (v153 > 285212703)
  {
    if (v153 <= 536870915)
    {
      if (v153 > 301989895)
      {
        v154 = v126;
        v155 = v136;
        if (v153 == 301989896)
        {
          v157 = v129;
          v158 = 16;
          v156 = v223;
          goto LABEL_233;
        }

        v156 = v223;
        if (v153 == 335544328)
        {
          v157 = v129;
          v158 = 17;
          goto LABEL_233;
        }
      }

      else
      {
        v154 = v126;
        v155 = v136;
        if (v153 == 285212704)
        {
          v157 = v129;
          v158 = 13;
          v156 = v223;
          goto LABEL_233;
        }

        v156 = v223;
        if (v153 == 285212736)
        {
          v157 = v129;
          v158 = 14;
          goto LABEL_233;
        }
      }
    }

    else if (v153 <= 536870927)
    {
      v154 = v126;
      v155 = v136;
      if (v153 == 536870916)
      {
        v157 = v129;
        v158 = 0;
        v156 = v223;
        goto LABEL_233;
      }

      v156 = v223;
      if (v153 == 536870920)
      {
        v157 = v129;
        v158 = 1;
        goto LABEL_233;
      }
    }

    else
    {
      if (v153 == 536870928)
      {
        v154 = v126;
        v155 = v136;
        v157 = v129;
        v158 = 2;
        v156 = v223;
        goto LABEL_233;
      }

      v154 = v126;
      v155 = v136;
      if (v153 == 536870944)
      {
        v157 = v129;
        v158 = 3;
        v156 = v223;
        goto LABEL_233;
      }

      v156 = v223;
      if (v153 == 536870976)
      {
        v157 = v129;
        v158 = 4;
        goto LABEL_233;
      }
    }

LABEL_232:
    v157 = v129;
    v158 = 18;
    goto LABEL_233;
  }

  if (v153 <= 31)
  {
    if (v153 > 7)
    {
      v156 = v223;
      v154 = v126;
      v155 = v136;
      if (v153 == 8)
      {
        v157 = v129;
        v158 = 6;
        goto LABEL_233;
      }

      if (v153 == 16)
      {
        v157 = v129;
        v158 = 7;
        goto LABEL_233;
      }
    }

    else
    {
      v154 = v126;
      v155 = v136;
      if (v153 == -1879048176)
      {
        v157 = v129;
        v158 = 12;
        v156 = v223;
        goto LABEL_233;
      }

      v156 = v223;
      if (v153 == 4)
      {
        v157 = v129;
        v158 = 5;
        goto LABEL_233;
      }
    }

    goto LABEL_232;
  }

  if (v153 <= 268435463)
  {
    v156 = v223;
    v154 = v126;
    v155 = v136;
    if (v153 == 32)
    {
      v157 = v129;
      v158 = 8;
      goto LABEL_233;
    }

    if (v153 == 64)
    {
      v157 = v129;
      v158 = 9;
      goto LABEL_233;
    }

    goto LABEL_232;
  }

  if (v153 == 268435464)
  {
    v154 = v126;
    v155 = v136;
    v157 = v129;
    v158 = 15;
    v156 = v223;
    goto LABEL_233;
  }

  v154 = v126;
  v155 = v136;
  if (v153 == 268435472)
  {
    v157 = v129;
    v158 = 10;
    v156 = v223;
    goto LABEL_233;
  }

  v156 = v223;
  if (v153 != 268435488)
  {
    goto LABEL_232;
  }

  v157 = v129;
  v158 = 11;
LABEL_233:
  v159 = v150 + v156 * v124;
  v160 = v151 + v232 * v97;
  v161 = v149 | v145 | v158;
  v162 = v152 + v231 * v109;
  if (v85)
  {
    [v19 beta];
    if (v163 == 0.0)
    {
      v164 = 0;
    }

    else
    {
      v164 = 2;
    }
  }

  else
  {
    v164 = 0;
  }

  v216 = v159 + v230 * v154;
  v226 = v160 + v220 * v98;
  v224 = v162 + v217 * v209;
  v165 = v157;
  v166 = 2;
  if (v157)
  {
    v166 = 3;
  }

  v290[4] = -1;
  v290[3] = -1;
  v290[5] = v164;
  v290[6] = v161;
  v291 = 0uLL;
  v292 = 0uLL;
  if (v155)
  {
    v167 = v166;
  }

  else
  {
    v167 = v157;
  }

  v168 = [*(v208 + 16) count];
  v169 = *&v19[*MEMORY[0x277CD7360]];
  v293 = v168 | ((*(v208 + 112) == 0) << 8) | 0x10000;
  v294 = 0;
  v203 = v169;
  v204 = *&v19[*MEMORY[0x277CD7368]];
  MPSLibrary::CreateUberShaderKey();
  if ((*(*&v19[*MEMORY[0x277CD7350]] + 1477) & 4) != 0)
  {
    v170 = (&threadGroupSizeInfoListApple + 32 * v167);
  }

  else
  {
    v170 = (&threadGroupSizeInfoListNonApple + 32 * v167);
  }

  v221 = *v170;
  v218 = v170[1];
  v210 = v170[2];
  v212 = v170[3];
  v171 = *MEMORY[0x277CD7410];
  v172 = *&v17[v171];
  v173 = *&v17[v171 + 16];
  v174 = *&v17[v171 + 48];
  v175 = *MEMORY[0x277CD73D8];
  v176 = v17;
  v177 = *&v17[v175];
  v238 = *&v17[v171 + 32];
  v239 = v174;
  v237[0] = v172;
  v237[1] = v173;
  v178 = *(v237 + (v177 & 0xF));
  v240[2] = v238;
  v240[3] = v174;
  v240[0] = v172;
  v240[1] = v173;
  v179 = *(v240 + (BYTE1(v177) & 0xF));
  v180 = *&v236[4 * (*&v236[v175] & 0xF) + v171];
  v181 = v19;
  v182 = *(v303 + !v155);
  v183 = *(v304 + (v165 ^ 1));
  if (v233)
  {
    if (*&v233[v171 + 4] == 1)
    {
      v184 = 0;
    }

    else
    {
      v184 = v207;
    }

    [v181 alpha];
    v186 = v185;
    [v181 beta];
    v188 = v187;
  }

  else
  {
    [v181 alpha];
    v186 = v189;
    v184 = 0;
    v188 = 0.0;
  }

  *&v190 = v186;
  DWORD2(v298) = 0;
  *&v295 = __PAIR64__(v179, v178);
  *(&v295 + 1) = __PAIR64__(v182, v180);
  *&v296 = __PAIR64__(v184, v183);
  *(&v296 + 1) = __PAIR64__(v190, v229);
  *&v297 = v188;
  v191 = *MEMORY[0x277CD7410];
  v192 = *MEMORY[0x277CD73D8];
  v193 = *&v176[4 * (v176[v192 + 2] & 0xF) + v191];
  DWORD1(v297) = *&v176[4 * (v176[v192 + 2] & 0xF) + v191];
  if (*&v235[4 * (v235[v192 + 2] & 0xF) + v191] == 1)
  {
    v194 = 0;
  }

  else
  {
    v194 = v231;
  }

  DWORD2(v297) = v194;
  if (*&v236[4 * (v236[v192 + 2] & 0xF) + v191] == 1)
  {
    v195 = 0;
  }

  else
  {
    v195 = v232;
  }

  HIDWORD(v297) = v195;
  if (v233)
  {
    v196 = &v233[v191];
    if (*(v196 + 2) == 1)
    {
      v197 = 0;
    }

    else
    {
      v197 = v227;
    }

    v198 = *v196 != 1;
    v199 = v222;
  }

  else
  {
    v198 = 1;
    v199 = v222;
    v197 = v227;
  }

  *&v298 = __PAIR64__(v230, v197);
  *(&v298 + 1) = v198 | 0x100000000;
  v299 = 0u;
  v300 = 0u;
  *&v301 = 0;
  v200 = (v212 * v218 + v179 - 1) / (v212 * v218);
  [v199 setComputePipelineState:MPSLibrary::GetPipelineStateForMPSKey()];
  [v199 setBuffer:objc_msgSend(v235 offset:"buffer") atIndex:{v224, 0}];
  [v199 setBuffer:objc_msgSend(v236 offset:"buffer") atIndex:{v226, 1}];
  if (v233)
  {
    [v228 beta];
    if (v201 != 0.0)
    {
      [v199 setBuffer:objc_msgSend(v233 offset:"buffer") atIndex:{v206, 2}];
    }
  }

  [v199 setBuffer:objc_msgSend(v176 offset:"buffer") atIndex:{v216 + v219 * v214, 3}];
  [v199 setBytes:&v295 length:104 atIndex:4];
  v290[0] = (v210 * v221 + v178 - 1) / (v210 * v221);
  v290[1] = v200;
  v290[2] = v193;
  v289[0] = v221;
  v289[1] = v218;
  v289[2] = 1;
  [v199 dispatchThreadgroups:v290 threadsPerThreadgroup:v289];
  result = MPSLibrary::ReleaseMPSKey();
  v202 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EncodeMatrixMultiplyLinking(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + *MEMORY[0x277CD7370]);
  if (*(a1 + 184) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = [*(a4 + 232) graph];
  v9 = **(v8 + 56);
  if (*(*(v8 + 56) + 8) == v9)
  {
    goto LABEL_170;
  }

  v10 = *v9;
  v12 = *(*v9 + 8);
  v11 = *v12;
  if (*(v12 + 8) - *v12 <= 8uLL)
  {
    goto LABEL_169;
  }

  v13 = *(v11[1] + 8);
  if (v13 > 285212703)
  {
    if (v13 <= 536870915)
    {
      if (v13 > 301989895)
      {
        if (v13 == 301989896)
        {
          v14 = 512;
          v15 = *(*v11 + 8);
          if (v15 <= 285212703)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v13 != 335544328)
          {
            goto LABEL_85;
          }

          v14 = 544;
          v15 = *(*v11 + 8);
          if (v15 <= 285212703)
          {
            goto LABEL_64;
          }
        }
      }

      else if (v13 == 285212704)
      {
        v14 = 416;
        v15 = *(*v11 + 8);
        if (v15 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v13 != 285212736)
        {
          goto LABEL_85;
        }

        v14 = 448;
        v15 = *(*v11 + 8);
        if (v15 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v13 <= 536870927)
    {
      if (v13 == 536870916)
      {
        v14 = 0;
        v15 = *(*v11 + 8);
        if (v15 > 285212703)
        {
          goto LABEL_86;
        }

        goto LABEL_64;
      }

      if (v13 != 536870920)
      {
        goto LABEL_85;
      }

      v14 = 32;
      v15 = *(*v11 + 8);
      if (v15 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      switch(v13)
      {
        case 536870928:
          v14 = 64;
          v15 = *(*v11 + 8);
          if (v15 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870944:
          v14 = 96;
          v15 = *(*v11 + 8);
          if (v15 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870976:
          v14 = 128;
          v15 = *(*v11 + 8);
          if (v15 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        default:
          goto LABEL_85;
      }
    }
  }

  else if (v13 <= 31)
  {
    if (v13 > 7)
    {
      if (v13 == 8)
      {
        v14 = 192;
        v15 = *(*v11 + 8);
        if (v15 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v13 != 16)
        {
          goto LABEL_85;
        }

        v14 = 224;
        v15 = *(*v11 + 8);
        if (v15 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v13 == -1879048176)
    {
      v14 = 384;
      v15 = *(*v11 + 8);
      if (v15 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v13 != 4)
      {
        goto LABEL_85;
      }

      v14 = 160;
      v15 = *(*v11 + 8);
      if (v15 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else if (v13 <= 268435463)
  {
    if (v13 == 32)
    {
      v14 = 256;
      v15 = *(*v11 + 8);
      if (v15 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v13 != 64)
      {
        goto LABEL_85;
      }

      v14 = 288;
      v15 = *(*v11 + 8);
      if (v15 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 268435464:
        v14 = 480;
        v15 = *(*v11 + 8);
        if (v15 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435472:
        v14 = 320;
        v15 = *(*v11 + 8);
        if (v15 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435488:
        v14 = 352;
        v15 = *(*v11 + 8);
        if (v15 > 285212703)
        {
          break;
        }

LABEL_64:
        if (v15 <= 31)
        {
          if (v15 > 7)
          {
            if (v15 == 8)
            {
              v16 = 6144;
              goto LABEL_108;
            }

            if (v15 == 16)
            {
              v16 = 7168;
              goto LABEL_108;
            }
          }

          else
          {
            if (v15 == -1879048176)
            {
              v16 = 12288;
              goto LABEL_108;
            }

            if (v15 == 4)
            {
              v16 = 5120;
              goto LABEL_108;
            }
          }
        }

        else if (v15 <= 268435463)
        {
          if (v15 == 32)
          {
            v16 = 0x2000;
            goto LABEL_108;
          }

          if (v15 == 64)
          {
            v16 = 9216;
            goto LABEL_108;
          }
        }

        else
        {
          switch(v15)
          {
            case 268435464:
              v16 = 15360;
              goto LABEL_108;
            case 268435472:
              v16 = 10240;
              goto LABEL_108;
            case 268435488:
              v16 = 11264;
              goto LABEL_108;
          }
        }

        goto LABEL_107;
      default:
LABEL_85:
        v14 = 576;
        v15 = *(*v11 + 8);
        if (v15 > 285212703)
        {
          break;
        }

        goto LABEL_64;
    }
  }

LABEL_86:
  if (v15 <= 536870915)
  {
    if (v15 > 301989895)
    {
      if (v15 == 301989896)
      {
        v16 = 0x4000;
        goto LABEL_108;
      }

      if (v15 == 335544328)
      {
        v16 = 17408;
        goto LABEL_108;
      }
    }

    else
    {
      if (v15 == 285212704)
      {
        v16 = 13312;
        goto LABEL_108;
      }

      if (v15 == 285212736)
      {
        v16 = 14336;
        goto LABEL_108;
      }
    }
  }

  else if (v15 <= 536870927)
  {
    if (v15 == 536870916)
    {
      v16 = 0;
      goto LABEL_108;
    }

    if (v15 == 536870920)
    {
      v16 = 1024;
      goto LABEL_108;
    }
  }

  else
  {
    switch(v15)
    {
      case 536870928:
        v16 = 2048;
        goto LABEL_108;
      case 536870944:
        v16 = 3072;
        goto LABEL_108;
      case 536870976:
        v16 = 4096;
        goto LABEL_108;
    }
  }

LABEL_107:
  v16 = 18432;
LABEL_108:
  v17 = **(v10 + 24);
  if (*(*(v10 + 24) + 8) == v17)
  {
    goto LABEL_169;
  }

  v18 = *(*v17 + 8);
  if (v18 > 285212703)
  {
    if (v18 <= 536870915)
    {
      if (v18 > 301989895)
      {
        if (v18 == 301989896)
        {
          v19 = 16;
          goto LABEL_153;
        }

        if (v18 == 335544328)
        {
          v19 = 17;
          goto LABEL_153;
        }
      }

      else
      {
        if (v18 == 285212704)
        {
          v19 = 13;
          goto LABEL_153;
        }

        if (v18 == 285212736)
        {
          v19 = 14;
          goto LABEL_153;
        }
      }
    }

    else if (v18 <= 536870927)
    {
      if (v18 == 536870916)
      {
        v19 = 0;
        goto LABEL_153;
      }

      if (v18 == 536870920)
      {
        v19 = 1;
        goto LABEL_153;
      }
    }

    else
    {
      switch(v18)
      {
        case 536870928:
          v19 = 2;
          goto LABEL_153;
        case 536870944:
          v19 = 3;
          goto LABEL_153;
        case 536870976:
          v19 = 4;
          goto LABEL_153;
      }
    }

LABEL_152:
    v19 = 18;
    goto LABEL_153;
  }

  if (v18 <= 31)
  {
    if (v18 > 7)
    {
      if (v18 == 8)
      {
        v19 = 6;
        goto LABEL_153;
      }

      if (v18 == 16)
      {
        v19 = 7;
        goto LABEL_153;
      }
    }

    else
    {
      if (v18 == -1879048176)
      {
        v19 = 12;
        goto LABEL_153;
      }

      if (v18 == 4)
      {
        v19 = 5;
        goto LABEL_153;
      }
    }

    goto LABEL_152;
  }

  if (v18 <= 268435463)
  {
    if (v18 == 32)
    {
      v19 = 8;
      goto LABEL_153;
    }

    if (v18 == 64)
    {
      v19 = 9;
      goto LABEL_153;
    }

    goto LABEL_152;
  }

  if (v18 == 268435464)
  {
    v19 = 15;
    goto LABEL_153;
  }

  if (v18 == 268435472)
  {
    v19 = 10;
    goto LABEL_153;
  }

  if (v18 != 268435488)
  {
    goto LABEL_152;
  }

  v19 = 11;
LABEL_153:
  v20 = *(a4 + 16);
  BaseTensor::GetAccessPattern();
  v52 = v21;
  v22 = **(v10 + 8);
  if ((*(*(v10 + 8) + 8) - v22) <= 8)
  {
    goto LABEL_169;
  }

  v23 = *(v22 + 8);
  v24 = *(a4 + 16);
  BaseTensor::GetAccessPattern();
  v26 = 3;
  if (v25 <= HIBYTE(v25))
  {
    v26 = 1;
  }

  if (v52 <= HIBYTE(v52))
  {
    v27 = 2 * (v25 > HIBYTE(v25));
  }

  else
  {
    v27 = v26;
  }

  if ((*(*(a1 + *MEMORY[0x277CD7350]) + 1476) & 0x400) != 0)
  {
    v28 = (&threadGroupSizeInfoListApple + 32 * v27);
  }

  else
  {
    v28 = (&threadGroupSizeInfoListNonApple + 32 * v27);
  }

  v51 = v28[1];
  v53 = *v28;
  v29 = v16 | v14 | v19;
  v31 = v28[2];
  v30 = v28[3];
  *&v32 = -1;
  *(&v32 + 1) = -1;
  v66 = -1;
  v70 = v32;
  v69 = v32;
  v68 = v32;
  v65 = v32;
  v67 = v29;
  *&v70 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
  v66 = 0;
  v49 = *(a1 + *MEMORY[0x277CD7360]);
  v50 = *(a1 + *MEMORY[0x277CD7368]);
  v48 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v33 = [*(a4 + 232) graph];
  v34 = **(v33 + 56);
  if (*(*(v33 + 56) + 8) == v34)
  {
    goto LABEL_170;
  }

  v36 = *(*v34 + 24);
  v35 = *v36;
  if (*(v36 + 8) == *v36)
  {
    goto LABEL_169;
  }

  v37 = *v35;
  v38 = [*(a4 + 232) graph];
  v39 = **(v38 + 56);
  if (*(*(v38 + 56) + 8) == v39)
  {
LABEL_170:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v41 = *(*v39 + 8);
  v40 = *v41;
  if (*(v41 + 8) == *v41)
  {
LABEL_169:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v42 = v31;
  v43 = v30;
  v44 = *v40;
  DimensionSize = BaseTensor::GetDimensionSize(v37);
  v46 = BaseTensor::GetDimensionSize(v37);
  v56[0] = DimensionSize;
  v56[1] = v46;
  v56[2] = BaseTensor::GetDimensionSize(v44);
  v57 = 0;
  v59 = 0;
  v58 = 0;
  v60 = BaseTensor::GetDimensionSize(v37);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  [a2 setComputePipelineState:MPSLibrary::GetPipelineStateForMPSKey()];
  MPSSetNDArraysOnComputeEncoder(a2, a4, 3, 0, 0);
  [a2 setBytes:v56 length:104 atIndex:29];
  v55[0] = (v42 * v53 + DimensionSize - 1) / (v42 * v53);
  v55[1] = (v43 * v51 + v46 - 1) / (v43 * v51);
  v55[2] = 1;
  v54[0] = v53;
  v54[1] = v51;
  v54[2] = 1;
  [a2 dispatchThreadgroups:v55 threadsPerThreadgroup:v54];
  return MPSLibrary::ReleaseMPSKey();
}

void *readSrcTempNDArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v13 = *(a1 + 16);
  if (a7 == 1)
  {
    result = [MEMORY[0x277CBEB18] arrayWithArray:v13];
    v15 = result;
    if ((a11 & 1) == 0)
    {
      result = [result setObject:objc_msgSend(*(a2 + 16) atIndexedSubscript:{"objectAtIndexedSubscript:", a9), a9}];
    }

    *(a2 + 16) = v15;
  }

  else
  {
    if (a11)
    {
      v18 = a9;
    }

    else
    {
      v18 = a10;
    }

    v19 = [v13 objectAtIndexedSubscript:{v18, a9}];
    v20 = [v19 descriptor];
    v21 = v20;
    v22 = MEMORY[0x277CD73D8];
    v23 = *&v19[*MEMORY[0x277CD73D8]];
    v24 = (v23 > BYTE1(v23)) ^ a11;
    v25 = MEMORY[0x277CD7410];
    v26 = *&v19[4 * v24 + *MEMORY[0x277CD7410]];
    v27 = a8 * a6;
    if (v23 <= BYTE1(v23))
    {
      v28 = (v23 > BYTE1(v23)) ^ a11;
    }

    else
    {
      v28 = v24 ^ 1;
    }

    if (v26 - v27 >= a8)
    {
      v29 = a8;
    }

    else
    {
      v29 = v26 - v27;
    }

    [v20 sliceDimension:v28 withSubrange:{v27, v29}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 setReadCount:{objc_msgSend(v19, "readCount") + 1}];
    }

    v30 = [v19 safeArrayViewWithCommandBuffer:a3 computeEncoder:a4 descriptor:v21 aliasing:1];
    v31 = [v21 getShape];
    if ([v31 count] >= 5)
    {
      v31 = [v31 subarrayWithRange:{objc_msgSend(v31, "count") - 4, 4}];
    }

    v32 = [MEMORY[0x277CD7268] descriptorWithDataType:*(v30 + *MEMORY[0x277CD73C8]) shape:v31];
    v33 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v32];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v19 setReadCount:{objc_msgSend(v19, "readCount") + 1}];
    }

    v34 = MEMORY[0x277CD73F0];
    if (*(v30 + *MEMORY[0x277CD73F0]) >= 5uLL)
    {
      v35 = 4;
      do
      {
        v36 = v30 + *v25;
        v43 = *(v30 + *v22);
        *(v36 + 4 * (*(&v43 | v35++ & 0xF) & 0xF)) = 1;
      }

      while (v35 < *(v30 + *v34));
    }

    *(v30 + *MEMORY[0x277CD73F8]) = *(*(a2 + 8) + 80 * v18 + 64);
    v44[0] = v30;
    [a5 encodeToMPSCommandEncoder:a4 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v44 kernelDAGObject:{1), 0, v33, 0}];
    v37 = [MEMORY[0x277CBEB18] arrayWithArray:*(a1 + 16)];
    if ((a11 & 1) == 0)
    {
      [v37 setObject:objc_msgSend(*(a2 + 16) atIndexedSubscript:{"objectAtIndexedSubscript:", v39), v39}];
    }

    [v37 setObject:v33 atIndexedSubscript:v18];
    *(a2 + 16) = v37;
    result = [objc_msgSend(v37 objectAtIndexedSubscript:{v18), "offset"}];
    *(*(a2 + 8) + 80 * v18 + 64) = result;
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EncodeArrayMultiply(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  v9 = a4[12];
  v10 = a4[13];
  v11 = a4[10];
  v32[11] = a4[11];
  v32[12] = v9;
  v12 = a4[14];
  v32[13] = v10;
  v32[14] = v12;
  v13 = a4[8];
  v14 = a4[9];
  v15 = a4[6];
  v32[7] = a4[7];
  v32[8] = v13;
  v32[9] = v14;
  v32[10] = v11;
  v16 = a4[4];
  v32[5] = a4[5];
  v32[6] = v15;
  v17 = a4[1];
  v32[0] = *a4;
  v32[1] = v17;
  v18 = a4[2];
  v32[3] = a4[3];
  v32[4] = v16;
  v32[2] = v18;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v19 = *(a1 + 184);
    if (v19)
    {
      LODWORD(v19) = [v19 normFusionType];
    }

    if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
    {
      v31 = 20;
      strcpy(__p, "MPSNDArrayMatMulTest");
      v20 = "";
      if (v19 == 2)
      {
        v20 = "-fuseRMS";
      }

      if (v19 == 1)
      {
        v21 = "-fuseSoftmax";
      }

      else
      {
        v21 = v20;
      }

      v22 = strlen(v21);
      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v23 = v22;
      if (v22 >= 0x17)
      {
        operator new();
      }

      v29 = v22;
      if (v22)
      {
        memcpy(&__dst, v21, v22);
      }

      *(&__dst + v23) = 0;
      MPSKernelLogPerfTestCommandline(a1, v32, __p, &__dst);
      if (v29 < 0)
      {
        operator delete(__dst);
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }
      }

      else if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(*__p);
    }
  }

LABEL_18:
  v24 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v25 = (*(*v24 + 16))(v24, a1, a2, a3, a4);
  objc_autoreleasePoolPop(v8);
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void sub_239A1D180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_239A2033C(_Unwind_Exception *a1)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v1 - 248);
  v4 = *(v1 - 200);
  if (v4)
  {
    *(v1 - 192) = v4;
    operator delete(v4);
    v2 = *(v1 - 136);
    if (v2)
    {
LABEL_6:
      *(v1 - 128) = v2;
      operator delete(v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v2 = *(v1 - 136);
    if (v2)
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

void sub_239A20530()
{
  if (*(v0 - 224))
  {
    JUMPOUT(0x239A2057CLL);
  }

  JUMPOUT(0x239A20484);
}

void sub_239A20540()
{
  if (*(v0 - 200))
  {
    JUMPOUT(0x239A2058CLL);
  }

  JUMPOUT(0x239A2048CLL);
}

void sub_239A20550()
{
  if (*(v0 - 136))
  {
    JUMPOUT(0x239A2059CLL);
  }

  JUMPOUT(0x239A20494);
}

void sub_239A20560(_Unwind_Exception *a1)
{
  v3 = *(v1 - 248);
  if (v3)
  {
    *(v1 - 240) = v3;
    operator delete(v3);
    v4 = *(v1 - 224);
    if (v4)
    {
      *(v1 - 216) = v4;
      operator delete(v4);
      v5 = *(v1 - 200);
      if (v5)
      {
        *(v1 - 192) = v5;
        operator delete(v5);
        v6 = *(v1 - 136);
        if (v6)
        {
          *(v1 - 128) = v6;
          operator delete(v6);
          std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v1 - 176);
          _Unwind_Resume(a1);
        }

        JUMPOUT(0x239A20494);
      }

      JUMPOUT(0x239A2048CLL);
    }

    JUMPOUT(0x239A20484);
  }

  JUMPOUT(0x239A2047CLL);
}

uint64_t EncodeArrayMultiplyGradient(char *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v8 = 1;
  v9 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v10 = *(a4 + 112);
  v98 = *&a1[*MEMORY[0x277CD7370]];
  v94 = a1;
  v11 = *(a1 + 17);
  v12 = MEMORY[0x277CD73D8];
  v13 = *MEMORY[0x277CD73D8];
  v14 = *(v7 + v13);
  v15 = BYTE1(*(v7 + v13));
  v16 = *(v9 + v13);
  v17 = *(a4 + 208);
  v18 = BYTE1(*(v9 + v13));
  v19 = MEMORY[0x277CD7410];
  if (v14 <= v15)
  {
    v20 = *MEMORY[0x277CD7410];
    v21 = *(v7 + v20);
    v22 = *(v7 + v20 + 16);
    v23 = *(v7 + v20 + 48);
    v114 = *(v7 + v20 + 32);
    v115 = v23;
    v113[0] = v21;
    v113[1] = v22;
    v24 = *(v113 + (v15 & 0xF)) == *(v9 + v20 + 4 * (v18 & 0xF));
    v112[2] = v114;
    v112[3] = v23;
    v112[0] = v21;
    v112[1] = v22;
    v24 = v24 && *(v112 + (v14 & 0xF)) == 1;
    v8 = v24;
  }

  v96 = v10;
  v83 = v8;
  v103 = v11;
  v100 = v9;
  if (v16 <= v18)
  {
    v28 = *MEMORY[0x277CD7410];
    v29 = *(v9 + v28);
    v30 = *(v9 + v28 + 16);
    v31 = *(v9 + v28 + 32);
    v32 = *(v9 + v28 + 48);
    v111[2] = v31;
    v111[3] = v32;
    v111[0] = v29;
    v111[1] = v30;
    if (*(v111 + (v16 & 0xF)) == *(v7 + v28 + 4 * (v14 & 0xF)))
    {
      v110[0] = v29;
      v110[1] = v30;
      v110[2] = v31;
      v110[3] = v32;
      v33 = *(v110 + (v18 & 0xF));
      v34 = v33 == 1;
      if (!v11)
      {
        goto LABEL_18;
      }

      if (v33 == 1)
      {
        goto LABEL_10;
      }
    }

    else if (!v11)
    {
      v34 = 0;
      v82 = 0;
      if (v8)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    v101 = 0;
    v82 = 0;
    v25 = (*(a4 + 8) + 64);
    v26 = (a4 + 96);
    v90 = v8 ^ 1;
    v91 = 1;
    v27 = v10;
    v10 = v7;
    goto LABEL_22;
  }

  if (v11)
  {
LABEL_10:
    v101 = 0;
    v25 = (a4 + 96);
    v26 = (*(a4 + 8) + 64);
    v82 = 1;
    v90 = 1;
    v91 = v8 ^ 1;
    v27 = v7;
    goto LABEL_22;
  }

  v34 = 1;
LABEL_18:
  v82 = v34;
  if (v8)
  {
LABEL_19:
    v90 = v34;
    v91 = 0;
    v25 = (*(a4 + 8) + 144);
    v26 = (a4 + 96);
    v101 = 1;
    v27 = v10;
    v10 = v9;
    goto LABEL_22;
  }

LABEL_21:
  v90 = 0;
  v91 = v34;
  v25 = (a4 + 96);
  v26 = (*(a4 + 8) + 144);
  v101 = 1;
  v27 = v9;
LABEL_22:
  v95 = *v25;
  v93 = *v26;
  makeStrideBytes();
  v35 = *(&v122 + (v10[*v12 + 2] & 0xF));
  makeStrideBytes();
  v36 = *(&v122 + (*(v27 + *v12 + 2) & 0xF));
  makeStrideBytes();
  v37 = *v12;
  v38 = *&v17[v37];
  v39 = *(&v122 + (BYTE2(v38) & 0xF));
  v92 = *(a4 + 192);
  v40 = *MEMORY[0x277CD73C8];
  v41 = *(v27 + v40);
  v42 = v27;
  if (v41 > 285212703)
  {
    if (v41 <= 536870915)
    {
      if (v41 > 301989895)
      {
        if (v41 == 301989896)
        {
          v86 = 512;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        }

        if (v41 == 335544328)
        {
          v86 = 544;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        }
      }

      else
      {
        if (v41 == 285212704)
        {
          v86 = 416;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        }

        if (v41 == 285212736)
        {
          v86 = 448;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        }
      }
    }

    else if (v41 <= 536870927)
    {
      if (v41 == 536870916)
      {
        v86 = 0;
        v43 = *&v10[v40];
        if (v43 <= 285212703)
        {
          goto LABEL_105;
        }

        goto LABEL_80;
      }

      if (v41 == 536870920)
      {
        v86 = 32;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      }
    }

    else
    {
      switch(v41)
      {
        case 536870928:
          v86 = 64;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        case 536870944:
          v86 = 96;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
        case 536870976:
          v86 = 128;
          v43 = *&v10[v40];
          if (v43 > 285212703)
          {
            goto LABEL_80;
          }

          goto LABEL_105;
      }
    }
  }

  else if (v41 <= 31)
  {
    if (v41 > 7)
    {
      if (v41 == 8)
      {
        v86 = 192;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      }

      if (v41 == 16)
      {
        v86 = 224;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      }
    }

    else
    {
      if (v41 == -1879048176)
      {
        v86 = 384;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      }

      if (v41 == 4)
      {
        v86 = 160;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      }
    }
  }

  else if (v41 <= 268435463)
  {
    if (v41 == 32)
    {
      v86 = 256;
      v43 = *&v10[v40];
      if (v43 <= 285212703)
      {
        goto LABEL_105;
      }

      goto LABEL_80;
    }

    if (v41 == 64)
    {
      v86 = 288;
      v43 = *&v10[v40];
      if (v43 > 285212703)
      {
        goto LABEL_80;
      }

      goto LABEL_105;
    }
  }

  else
  {
    switch(v41)
    {
      case 268435464:
        v86 = 480;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      case 268435472:
        v86 = 320;
        v43 = *&v10[v40];
        if (v43 > 285212703)
        {
          goto LABEL_80;
        }

        goto LABEL_105;
      case 268435488:
        v86 = 352;
        v43 = *&v10[v40];
        if (v43 <= 285212703)
        {
          goto LABEL_105;
        }

LABEL_80:
        if (v43 <= 536870915)
        {
          if (v43 > 301989895)
          {
            if (v43 != 301989896)
            {
              v44 = v103;
              v45 = v36;
              v46 = v101;
              v47 = v100;
              if (v43 == 335544328)
              {
                v85 = 17408;
                v48 = *&v17[v40];
                if (v48 > 285212703)
                {
                  goto LABEL_124;
                }

                goto LABEL_160;
              }

              goto LABEL_199;
            }

            v49 = 0x4000;
          }

          else
          {
            if (v43 != 285212704)
            {
              v44 = v103;
              v45 = v36;
              v46 = v101;
              v47 = v100;
              if (v43 == 285212736)
              {
                v85 = 14336;
                v48 = *&v17[v40];
                if (v48 > 285212703)
                {
                  goto LABEL_124;
                }

                goto LABEL_160;
              }

              goto LABEL_199;
            }

            v49 = 13312;
          }
        }

        else
        {
          if (v43 <= 536870927)
          {
            if (v43 != 536870916)
            {
              v44 = v103;
              v45 = v36;
              v46 = v101;
              v47 = v100;
              if (v43 == 536870920)
              {
                v85 = 1024;
                v48 = *&v17[v40];
                if (v48 > 285212703)
                {
                  goto LABEL_124;
                }

                goto LABEL_160;
              }

              goto LABEL_199;
            }

            v85 = 0;
LABEL_159:
            v44 = v103;
            v45 = v36;
            v46 = v101;
            v47 = v100;
            v48 = *&v17[v40];
            if (v48 > 285212703)
            {
              goto LABEL_124;
            }

            goto LABEL_160;
          }

          if (v43 == 536870928)
          {
            v49 = 2048;
          }

          else
          {
            if (v43 != 536870944)
            {
              v44 = v103;
              v45 = v36;
              v46 = v101;
              v47 = v100;
              if (v43 == 536870976)
              {
                v85 = 4096;
                v48 = *&v17[v40];
                if (v48 > 285212703)
                {
                  goto LABEL_124;
                }

                goto LABEL_160;
              }

              goto LABEL_199;
            }

            v49 = 3072;
          }
        }

        goto LABEL_158;
    }
  }

  v86 = 576;
  v43 = *&v10[v40];
  if (v43 > 285212703)
  {
    goto LABEL_80;
  }

LABEL_105:
  if (v43 > 31)
  {
    if (v43 > 268435463)
    {
      if (v43 == 268435464)
      {
        v49 = 15360;
      }

      else
      {
        if (v43 != 268435472)
        {
          v44 = v103;
          v45 = v36;
          v46 = v101;
          v47 = v100;
          if (v43 == 268435488)
          {
            v85 = 11264;
            v48 = *&v17[v40];
            if (v48 > 285212703)
            {
              goto LABEL_124;
            }

LABEL_160:
            if (v48 <= 31)
            {
              if (v48 > 7)
              {
                if (v48 == 8)
                {
                  v84 = 6;
                  v102 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
                }

                if (v48 == 16)
                {
                  v84 = 7;
                  v102 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
                }
              }

              else
              {
                if (v48 == -1879048176)
                {
                  v84 = 12;
                  v102 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
                }

                if (v48 == 4)
                {
                  v84 = 5;
                  v102 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
                }
              }
            }

            else if (v48 <= 268435463)
            {
              if (v48 == 32)
              {
                v84 = 8;
                v102 = a4;
                v50 = *v19;
                if (v46)
                {
                  goto LABEL_202;
                }

                goto LABEL_189;
              }

              if (v48 == 64)
              {
                v84 = 9;
                v102 = a4;
                v50 = *v19;
                if (v46)
                {
                  goto LABEL_202;
                }

                goto LABEL_189;
              }
            }

            else
            {
              switch(v48)
              {
                case 268435464:
                  v84 = 15;
                  v102 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
                case 268435472:
                  v84 = 10;
                  v102 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
                case 268435488:
                  v84 = 11;
                  v102 = a4;
                  v50 = *v19;
                  if (v46)
                  {
                    goto LABEL_202;
                  }

                  goto LABEL_189;
              }
            }

            goto LABEL_201;
          }

          goto LABEL_199;
        }

        v49 = 10240;
      }

      goto LABEL_158;
    }

    if (v43 != 32)
    {
      v44 = v103;
      v45 = v36;
      v46 = v101;
      v47 = v100;
      if (v43 == 64)
      {
        v85 = 9216;
        v48 = *&v17[v40];
        if (v48 > 285212703)
        {
          goto LABEL_124;
        }

        goto LABEL_160;
      }

      goto LABEL_199;
    }

    v49 = 0x2000;
LABEL_158:
    v85 = v49;
    goto LABEL_159;
  }

  if (v43 <= 7)
  {
    if (v43 != -1879048176)
    {
      v44 = v103;
      v45 = v36;
      v46 = v101;
      v47 = v100;
      if (v43 == 4)
      {
        v85 = 5120;
        v48 = *&v17[v40];
        if (v48 <= 285212703)
        {
          goto LABEL_160;
        }

        goto LABEL_124;
      }

      goto LABEL_199;
    }

    v49 = 12288;
    goto LABEL_158;
  }

  if (v43 == 8)
  {
    v49 = 6144;
    goto LABEL_158;
  }

  v44 = v103;
  v45 = v36;
  v46 = v101;
  v47 = v100;
  if (v43 == 16)
  {
    v85 = 7168;
    v48 = *&v17[v40];
    if (v48 <= 285212703)
    {
      goto LABEL_160;
    }

    goto LABEL_124;
  }

LABEL_199:
  v85 = 18432;
  v48 = *&v17[v40];
  if (v48 <= 285212703)
  {
    goto LABEL_160;
  }

LABEL_124:
  if (v48 <= 536870915)
  {
    if (v48 > 301989895)
    {
      if (v48 == 301989896)
      {
        v84 = 16;
        v102 = a4;
        v50 = *v19;
        if (v46)
        {
          goto LABEL_202;
        }

        goto LABEL_189;
      }

      if (v48 == 335544328)
      {
        v84 = 17;
        v102 = a4;
        v50 = *v19;
        if (v46)
        {
          goto LABEL_202;
        }

        goto LABEL_189;
      }
    }

    else
    {
      if (v48 == 285212704)
      {
        v84 = 13;
        v102 = a4;
        v50 = *v19;
        if (v46)
        {
          goto LABEL_202;
        }

        goto LABEL_189;
      }

      if (v48 == 285212736)
      {
        v84 = 14;
        v102 = a4;
        v50 = *v19;
        if (v46)
        {
          goto LABEL_202;
        }

        goto LABEL_189;
      }
    }

    goto LABEL_201;
  }

  if (v48 <= 536870927)
  {
    if (v48 == 536870916)
    {
      v84 = 0;
      v102 = a4;
      v50 = *v19;
      if (!v46)
      {
        goto LABEL_189;
      }

LABEL_202:
      v88 = *(v7 + v50 + 8) == 1;
      if (*(v7 + v50 + 8) == 1)
      {
        LODWORD(v39) = 0;
      }

      v87 = v39;
      if (*(v47 + v50 + 8) == 1)
      {
        if (v83)
        {
          LODWORD(v35) = 0;
        }

        else
        {
          v45 = 0;
        }
      }

      goto LABEL_208;
    }

    if (v48 == 536870920)
    {
      v84 = 1;
      v102 = a4;
      v50 = *v19;
      if (v46)
      {
        goto LABEL_202;
      }

      goto LABEL_189;
    }

LABEL_201:
    v84 = 18;
    v102 = a4;
    v50 = *v19;
    if (!v46)
    {
      goto LABEL_189;
    }

    goto LABEL_202;
  }

  if (v48 == 536870928)
  {
    v84 = 2;
    v102 = a4;
    v50 = *v19;
    if (v46)
    {
      goto LABEL_202;
    }

    goto LABEL_189;
  }

  if (v48 == 536870944)
  {
    v84 = 3;
    v102 = a4;
    v50 = *v19;
    if (v46)
    {
      goto LABEL_202;
    }

    goto LABEL_189;
  }

  if (v48 != 536870976)
  {
    goto LABEL_201;
  }

  v84 = 4;
  v102 = a4;
  v50 = *v19;
  if (v46)
  {
    goto LABEL_202;
  }

LABEL_189:
  v88 = *(v47 + v50 + 8) == 1;
  if (*(v47 + v50 + 8) == 1)
  {
    LODWORD(v39) = 0;
  }

  v87 = v39;
  if (*(v7 + v50 + 8) == 1)
  {
    if (v82)
    {
      v45 = 0;
    }

    else
    {
      LODWORD(v35) = 0;
    }
  }

LABEL_208:
  v51 = v35;
  v52 = v45;
  v53 = BYTE1(v38);
  v54 = v38;
  v55 = *&v17[v50];
  v56 = *&v17[v50 + 16];
  v57 = *&v17[v50 + 48];
  v108 = *&v17[v50 + 32];
  v109 = v57;
  v107[0] = v55;
  v107[1] = v56;
  v58 = *(v107 + (v54 & 0xF));
  v106[2] = v108;
  v106[3] = v57;
  v106[0] = v55;
  v106[1] = v56;
  v59 = *(v106 + (v53 & 0xF));
  v105 = *&v10[v37];
  v60 = v10;
  v61 = *&v10[4 * (*(&v105 | v44 & 0xF) & 0xF) + v50];
  v62 = *MEMORY[0x277CD7400];
  v63 = v17;
  v89 = v17;
  v64 = *&v42[v62];
  v65 = *&v60[v62];
  v66 = *&v63[v62];
  v104 = v42;
  [v94 alpha];
  v68 = v67;
  [v94 beta];
  *&v69 = v69;
  v122 = __PAIR64__(v59, v58);
  v123 = v61;
  v124 = v64;
  v125 = v65;
  v126 = 0;
  v127 = v66;
  v128 = v68;
  v129 = LODWORD(v69);
  v130 = *&v96[4 * (v96[*MEMORY[0x277CD73D8] + 2] & 0xF) + *MEMORY[0x277CD7410]];
  v131 = v52;
  v132 = v51;
  v133 = 0;
  v134 = v87;
  v70 = 2;
  if (v90)
  {
    v70 = 3;
  }

  if (v91)
  {
    v71 = v90;
  }

  else
  {
    v71 = v70;
  }

  v72 = 0x2000000;
  if (!a5)
  {
    v72 = 0;
  }

  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v117[4] = -1;
  v117[3] = -1;
  v117[5] = v88;
  v117[6] = v86 | v85 | v84 | v72;
  v118 = 0u;
  v119 = 0u;
  v120 = [*(v102 + 16) count] | ((*(v102 + 112) == 0) << 8) | 0x10000;
  v121 = 0;
  v80 = *&v94[*MEMORY[0x277CD7360]];
  v81 = *&v94[*MEMORY[0x277CD7368]];
  v79 = *(v102 + 232);
  MPSLibrary::CreateUberShaderKey();
  if ((*(*&v94[*MEMORY[0x277CD7350]] + 1476) & 0x400) != 0)
  {
    v73 = (&threadGroupSizeInfoListApple + 32 * v71);
  }

  else
  {
    v73 = (&threadGroupSizeInfoListNonApple + 32 * v71);
  }

  v74 = *v73;
  v75 = v73[1];
  v76 = v73[2];
  v77 = (v59 + v73[3] * v75 - 1) / (v73[3] * v75);
  [a2 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v79, v80, v81, 0, 0}];
  [a2 setBuffer:objc_msgSend(v104 offset:"buffer") atIndex:{v93, 0}];
  [a2 setBuffer:objc_msgSend(v60 offset:"buffer") atIndex:{v95, 1}];
  [a2 setBuffer:objc_msgSend(v89 offset:"buffer") atIndex:{v92, 3}];
  [a2 setBytes:&v122 length:104 atIndex:4];
  v117[0] = (v58 + v76 * v74 - 1) / (v76 * v74);
  v117[1] = v77;
  v117[2] = 1;
  v116[0] = v74;
  v116[1] = v75;
  v116[2] = 1;
  [a2 dispatchThreadgroups:v117 threadsPerThreadgroup:v116];
  MPSLibrary::ReleaseMPSKey();
  return 0;
}

void MPSNDArrayMatMulDeviceBehavior::~MPSNDArrayMatMulDeviceBehavior(void **this)
{
  *this = &unk_284CB2AC0;
  free(this[1]);
}

{
  *this = &unk_284CB2AC0;
  free(this[1]);

  JUMPOUT(0x23EE7C8C0);
}

void MPSNDArrayMatMulCommonDeviceBehavior::~MPSNDArrayMatMulCommonDeviceBehavior(void **this)
{
  *this = &unk_284CB2AC0;
  free(this[1]);
}

{
  *this = &unk_284CB2AC0;
  free(this[1]);

  JUMPOUT(0x23EE7C8C0);
}

void MPSNDArrayMatMulA14DeviceBehavior::~MPSNDArrayMatMulA14DeviceBehavior(void **this)
{
  *this = &unk_284CB2AC0;
  free(this[1]);
}

{
  *this = &unk_284CB2AC0;
  free(this[1]);

  JUMPOUT(0x23EE7C8C0);
}

void MPSNDArrayMatMulA18DeviceBehavior::~MPSNDArrayMatMulA18DeviceBehavior(void **this)
{
  *this = &unk_284CB2AC0;
  free(this[1]);
}

{
  *this = &unk_284CB2AC0;
  free(this[1]);

  JUMPOUT(0x23EE7C8C0);
}

void *MPSNDArrayMatMulDeviceBehavior::MPSNDArrayMatMulDeviceBehavior(void *a1)
{
  *a1 = &unk_284CB2AC0;
  a1[1] = 0;
  v2 = getenv("MPS_AUTO_TUNING_PARAMETERS");
  if (!v2)
  {
    return a1;
  }

  v3 = v2;
  v4 = *v2;
  if (v4 <= 0x34)
  {
    if (v4 == 49)
    {
      v10 = malloc_type_malloc(0x20uLL, 0x1000040C2192D5FuLL);
      a1[1] = v10;
      *v10 = v3[1] - 48;
      v10[1] = v3[2] - 48;
      v10[2] = v3[3] - 48;
      v10[3] = v3[4] - 48;
      v10[4] = v3[5] - 48;
      v10[5] = v3[6] - 48;
      v10[6] = v3[7] - 48;
      *(v10 + 28) = v3[8] != 48;
      *(v10 + 29) = v3[9] != 48;
      *(v10 + 30) = v3[10] != 48;
      return a1;
    }

    else
    {
      if (v4 != 52)
      {
        return a1;
      }

      v7 = malloc_type_malloc(0x44uLL, 0x100004069DB8102uLL);
      a1[1] = v7;
      *v7 = v3[1] - 48;
      v7[1] = v3[2] - 48;
      v7[2] = v3[3] - 48;
      v7[3] = v3[4] - 48;
      v7[4] = v3[5] - 48;
      v7[5] = v3[6] - 48;
      v7[6] = v3[7] - 48;
      v7[7] = v3[8] - 48;
      v7[8] = v3[9] - 48;
      v7[9] = v3[10] - 48;
      v7[10] = v3[11] - 48;
      v7[11] = v3[12] - 48;
      v7[12] = v3[13] - 48;
      v7[13] = v3[14] - 48;
      v7[14] = v3[15] - 48;
      v7[15] = v3[16] - 48;
      v7[16] = v3[18] + 10 * v3[17] - 528;
      return a1;
    }
  }

  else if (v4 == 55)
  {
    v8 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    a1[1] = v8;
    *v8 = v3[2] + 10 * v3[1] - 528;
    v8[1] = v3[4] + 10 * v3[3] - 528;
    v8[2] = v3[6] + 10 * v3[5] - 528;
    v8[3] = v3[8] + 10 * v3[7] - 528;
    v8[4] = v3[10] + 10 * v3[9] - 528;
    v8[5] = v3[12] + 10 * v3[11] - 528;
    v8[6] = v3[13] - 48;
    v8[7] = v3[14] - 48;
    return a1;
  }

  else
  {
    if (v4 != 54)
    {
      if (v4 == 53)
      {
        v5 = malloc_type_malloc(0x3CuLL, 0x1000040C2DCA394uLL);
        a1[1] = v5;
        *v5 = v3[1] - 48;
        v5[1] = v3[2] - 48;
        v5[2] = v3[3] - 48;
        v5[3] = v3[4] - 48;
        v5[4] = v3[5] - 48;
        v5[5] = v3[7] + 10 * v3[6] - 528;
        v5[6] = v3[8] - 48;
        v5[7] = v3[9] - 48;
        v5[8] = v3[10] - 48;
        v5[9] = v3[11] - 48;
        v5[10] = v3[13] + 10 * v3[12] - 528;
        v5[11] = v3[14] - 48;
        v5[12] = v3[15] - 48;
        v5[13] = v3[16] - 48;
        v5[14] = v3[17] - 48;
      }

      return a1;
    }

    v9 = malloc_type_malloc(0x2CuLL, 0x1000040D4159EFEuLL);
    a1[1] = v9;
    *v9 = v3[1] - 48;
    v9[1] = v3[2] - 48;
    v9[2] = v3[3] - 48;
    v9[3] = v3[4] - 48;
    v9[4] = v3[5] - 48;
    v9[5] = v3[6] - 48;
    v9[6] = v3[7] - 48;
    v9[7] = v3[8] - 48;
    v9[8] = v3[10] + 10 * v3[9] - 528;
    v9[9] = v3[12] + 10 * v3[11] - 528;
    v9[10] = v3[13] - 48;
    return a1;
  }
}

uint64_t EncodeMatrixVectorMultiply()
{
  v0 = MEMORY[0x28223BE20]();
  v302 = v1;
  v3 = v2;
  v300 = v4;
  v6 = v5;
  v384 = *MEMORY[0x277D85DE8];
  v284 = *(v0 + *MEMORY[0x277CD7370]);
  v255 = *(v0 + *MEMORY[0x277CD7350]);
  v285 = v0;
  v7 = *(v0 + 192);
  v301 = v8;
  v9 = [*(v8 + 232) graph];
  v10 = *(v9 + 64);
  v11 = *v10;
  v12 = v10[1];
  if (*v10 == v12)
  {
    v15 = 0;
  }

  else
  {
    v13 = v9;
    v14 = 0;
    v15 = -1;
    v16 = -1;
    do
    {
      v17 = *v11;
      if (v17 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v13) + 32))
      {
        v15 = v14;
      }

      v18 = *v11;
      if (v18 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v13) + 32))
      {
        v16 = v14;
      }

      if (MPSKernelDAG::GetCoreOpNumberOfInputs(v13) == 3)
      {
        MPSKernelDAG::GetCoreOpInputAtIndex(v13);
      }

      ++v14;
      ++v11;
    }

    while (v11 != v12);
    if (v15 == -1)
    {
      v15 = 0;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v16 != -1)
    {
      goto LABEL_17;
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
LABEL_15:
    MTLReportFailure();
  }

LABEL_16:
  v16 = 0;
LABEL_17:
  v19 = [*(v301 + 232) graph];
  v20 = **(v19 + 56);
  if (*(*(v19 + 56) + 8) == v20)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v231 = v7;
  v252 = v6;
  v22 = *(*v20 + 24);
  v21 = *v22;
  if (*(v22 + 8) == *v22)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v230 = *v21;
  makeStrideBytes();
  v23 = MEMORY[0x277CD73D8];
  v24 = *&v300[*MEMORY[0x277CD73D8]];
  v355[7] = v363[1];
  v355[6] = v363[0];
  v355[5] = v362;
  v355[4] = v361;
  v355[3] = v360;
  v355[2] = v359;
  v355[1] = v358;
  v355[0] = v357;
  v25 = *(v355 + (v24 & 0xF));
  v354[7] = v363[1];
  v354[6] = v363[0];
  v354[5] = v362;
  v354[4] = v361;
  v354[3] = v360;
  v354[2] = v359;
  v354[1] = v358;
  v354[0] = v357;
  v26 = *(v354 + (BYTE1(v24) & 0xF));
  v287 = v25;
  *&v27 = v25;
  *(&v27 + 1) = v26;
  v383[0] = v27;
  v353[7] = v363[1];
  v353[6] = v363[0];
  v353[5] = v362;
  v353[4] = v361;
  v353[3] = v360;
  v353[2] = v359;
  v353[1] = v358;
  v353[0] = v357;
  *&v297 = *(v353 + (BYTE2(v24) & 0xF));
  v352[7] = v363[1];
  v352[6] = v363[0];
  v352[5] = v362;
  v352[4] = v361;
  v352[3] = v360;
  v352[2] = v359;
  v352[1] = v358;
  v352[0] = v357;
  *(&v297 + 1) = *(v352 + (BYTE3(v24) & 0xF));
  v383[1] = v297;
  makeStrideBytes();
  v28 = *&v3[*v23];
  v351[7] = v363[1];
  v351[6] = v363[0];
  v351[5] = v362;
  v351[4] = v361;
  v351[3] = v360;
  v351[2] = v359;
  v351[1] = v358;
  v351[0] = v357;
  v29 = *(v351 + (v28 & 0xF));
  v350[7] = v363[1];
  v350[6] = v363[0];
  v350[5] = v362;
  v350[4] = v361;
  v350[3] = v360;
  v350[2] = v359;
  v350[1] = v358;
  v350[0] = v357;
  v30 = *(v350 + (BYTE1(v28) & 0xF));
  v270 = v29;
  *&v31 = v29;
  *(&v31 + 1) = v30;
  v382[0] = v31;
  v349[7] = v363[1];
  v349[6] = v363[0];
  v349[5] = v362;
  v349[4] = v361;
  v349[3] = v360;
  v349[2] = v359;
  v349[1] = v358;
  v349[0] = v357;
  v291 = *(v349 + (BYTE2(v28) & 0xF));
  *&v31 = v291;
  v348[7] = v363[1];
  v348[6] = v363[0];
  v348[5] = v362;
  v348[4] = v361;
  v348[3] = v360;
  v348[2] = v359;
  v348[1] = v358;
  v348[0] = v357;
  v289 = *(v348 + (BYTE3(v28) & 0xF));
  *(&v31 + 1) = v289;
  v382[1] = v31;
  makeStrideBytes();
  v32 = *v23;
  v33 = *&v302[v32];
  v347[7] = v363[1];
  v347[6] = v363[0];
  v347[5] = v362;
  v347[4] = v361;
  v347[3] = v360;
  v347[2] = v359;
  v347[1] = v358;
  v347[0] = v357;
  v34 = BYTE1(v33) & 0xF;
  v283 = *(v347 + v34);
  v346[7] = v363[1];
  v346[6] = v363[0];
  v346[5] = v362;
  v346[4] = v361;
  v346[3] = v360;
  v346[2] = v359;
  v346[1] = v358;
  v346[0] = v357;
  v35 = BYTE2(v33) & 0xF;
  v280 = *(v346 + v35);
  v345[7] = v363[1];
  v345[6] = v363[0];
  v345[5] = v362;
  v345[4] = v361;
  v345[3] = v360;
  v345[2] = v359;
  v345[1] = v358;
  v345[0] = v357;
  v36 = BYTE3(v33) & 0xF;
  v282 = *(v345 + v36);
  v37 = *MEMORY[0x277CD7418];
  v38 = *&v300[v37];
  v39 = *&v300[v37 + 16];
  v40 = *&v300[v37 + 32];
  v41 = *&v300[v32];
  v344 = *&v300[v37 + 48];
  v343[2] = v40;
  v343[1] = v39;
  v343[0] = v38;
  v278 = v41;
  v42 = *(v343 + (v41 & 0xF));
  v342[3] = v344;
  v342[2] = v40;
  v342[1] = v39;
  v342[0] = v38;
  v276 = BYTE1(v41);
  v43 = *(v342 + (BYTE1(v41) & 0xF));
  v341[3] = v344;
  v341[2] = v40;
  v341[1] = v39;
  v341[0] = v38;
  v44 = BYTE2(v41) & 0xF;
  v45 = *(v341 + v44);
  v340[3] = v344;
  v340[2] = v40;
  v340[1] = v39;
  v340[0] = v38;
  v46 = BYTE3(v41) & 0xF;
  v47 = *(v340 + v46);
  v48 = *(v301 + 8);
  v49 = *(v48 + 80 * v15 + 64);
  v50 = *&v3[v37];
  v51 = *&v3[v37 + 16];
  v52 = *&v3[v37 + 32];
  v53 = *&v3[v32];
  v339 = *&v3[v37 + 48];
  v338[2] = v52;
  v338[1] = v51;
  v338[0] = v50;
  v274 = v53;
  v54 = *(v338 + (v53 & 0xF));
  v337[3] = v339;
  v337[2] = v52;
  v337[1] = v51;
  v337[0] = v50;
  v272 = BYTE1(v53);
  v55 = *(v337 + (BYTE1(v53) & 0xF));
  v336[3] = v339;
  v336[2] = v52;
  v336[1] = v51;
  v336[0] = v50;
  v56 = BYTE2(v53) & 0xF;
  v57 = *(v336 + v56);
  v335[3] = v339;
  v335[2] = v52;
  v335[1] = v51;
  v335[0] = v50;
  v58 = BYTE3(v53) & 0xF;
  v59 = *(v335 + v58);
  v60 = *(v48 + 80 * v16 + 64);
  v325[7] = v363[1];
  v325[6] = v363[0];
  v325[5] = v362;
  v325[4] = v361;
  v325[3] = v360;
  v325[2] = v359;
  v325[1] = v358;
  v325[0] = v357;
  v61 = v33 & 0xF;
  v244 = *(v325 + v61);
  v62 = &v302[v37];
  v63 = *v62;
  v64 = *(v62 + 1);
  v65 = *(v62 + 2);
  v327 = *(v62 + 3);
  v326[2] = v65;
  v326[1] = v64;
  v326[0] = v63;
  v242 = *(v326 + v61);
  v334[3] = v327;
  v334[2] = v65;
  v334[1] = v64;
  v334[0] = v63;
  v240 = *(v334 + v34);
  v333[3] = v327;
  v333[2] = v65;
  v333[1] = v64;
  v333[0] = v63;
  v246 = *(v333 + v35);
  v332[3] = v327;
  v332[2] = v65;
  v332[1] = v64;
  v332[0] = v63;
  v248 = *(v332 + v36);
  v66 = MEMORY[0x277CD7410];
  v67 = *MEMORY[0x277CD7410];
  v68 = *&v300[v67];
  v69 = *&v300[v67 + 16];
  v70 = *&v300[v67 + 32];
  v71 = *&v300[v67 + 48];
  v239 = *(v301 + 192);
  v72 = &v3[v67];
  v73 = *v72;
  v74 = v72[1];
  v75 = v72[2];
  v76 = v72[3];
  v331[3] = v71;
  v331[2] = v70;
  v331[1] = v69;
  v331[0] = v68;
  v77 = *(v331 + v44);
  v330[3] = v71;
  v330[2] = v70;
  v330[1] = v69;
  v330[0] = v68;
  v78 = *(v330 + v46);
  v329[3] = v76;
  v329[2] = v75;
  v329[1] = v74;
  v329[0] = v73;
  v79 = *(v329 + v56);
  v328[3] = v76;
  v328[2] = v75;
  v328[1] = v74;
  v328[0] = v73;
  v80 = *(v328 + v58);
  if (v79 != 1 && v77 != 1 && v77 != v79)
  {
    v295 = v47;
    v261 = v45;
    v263 = v59;
    v265 = v42;
    v268 = v57;
    v223 = MTLReportFailureTypeEnabled();
    v42 = v265;
    v57 = v268;
    v45 = v261;
    v59 = v263;
    v47 = v295;
    v66 = MEMORY[0x277CD7410];
    if (v223)
    {
      MTLReportFailure();
      v42 = v265;
      v57 = v268;
      v45 = v261;
      v59 = v263;
      v47 = v295;
      v66 = MEMORY[0x277CD7410];
    }
  }

  if (v80 != 1 && v78 != 1 && v78 != v80)
  {
    v296 = v47;
    v224 = v59;
    v225 = v45;
    v266 = v42;
    v269 = v57;
    v226 = MTLReportFailureTypeEnabled();
    v42 = v266;
    v57 = v269;
    v45 = v225;
    v59 = v224;
    v47 = v296;
    v66 = MEMORY[0x277CD7410];
    if (v226)
    {
      MTLReportFailure();
      v42 = v266;
      v57 = v269;
      v45 = v225;
      v59 = v224;
      v47 = v296;
      v66 = MEMORY[0x277CD7410];
    }
  }

  v81 = v49 + v26 * v43;
  v82 = *v66;
  v83 = *&v300[v82];
  v84 = *&v300[v82 + 16];
  v85 = *&v300[v82 + 32];
  v86 = *&v300[v82 + 48];
  v87 = *MEMORY[0x277CD73D8];
  v88 = v300[v87 + 1] & 0xF;
  v323[3] = v86;
  v323[2] = v85;
  v323[1] = v84;
  v323[0] = v83;
  v89 = *(v323 + v88);
  v90 = *&v3[v87];
  v91 = *&v3[4 * (v90 & 0xF) + v82];
  if (v89 >= v91)
  {
    v92 = v91;
  }

  else
  {
    v92 = v89;
  }

  v93 = *&v300[v87];
  v94 = *&v302[v82];
  v95 = *&v302[v82 + 16];
  v96 = *&v302[v87];
  v97 = *&v302[v82 + 32];
  v98 = *&v302[v82 + 48];
  v324[3] = v98;
  v324[2] = v97;
  v324[1] = v95;
  v324[0] = v94;
  v293 = *(v324 + (v96 & 0xF));
  if (v92 == v293)
  {
    v99 = v93 > BYTE1(v93);
  }

  else
  {
    v99 = v90 <= BYTE1(v90);
  }

  v100 = v81 + v287 * v42;
  v101 = *MEMORY[0x277CD73C8];
  v102 = *&v3[v101];
  if (v102 > 285212703)
  {
    if (v102 > 536870915)
    {
      if (v102 <= 536870927)
      {
        if (v102 == 536870916)
        {
          v104 = 0;
          goto LABEL_76;
        }

        v103 = v291;
        if (v102 == 536870920)
        {
          v104 = 32;
          goto LABEL_78;
        }
      }

      else
      {
        if (v102 == 536870928)
        {
          v104 = 64;
          goto LABEL_76;
        }

        if (v102 == 536870944)
        {
          v104 = 96;
          goto LABEL_76;
        }

        v103 = v291;
        if (v102 == 536870976)
        {
          v104 = 128;
          goto LABEL_78;
        }
      }

LABEL_77:
      v104 = 576;
      goto LABEL_78;
    }

    if (v102 > 301989895)
    {
      if (v102 != 301989896)
      {
        v103 = v291;
        if (v102 == 335544328)
        {
          v104 = 544;
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      v104 = 512;
    }

    else
    {
      if (v102 != 285212704)
      {
        v103 = v291;
        if (v102 == 285212736)
        {
          v104 = 448;
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      v104 = 416;
    }

LABEL_76:
    v105 = v297;
    v103 = v291;
    goto LABEL_79;
  }

  if (v102 <= 31)
  {
    if (v102 > 7)
    {
      v103 = v291;
      if (v102 == 8)
      {
        v104 = 192;
        goto LABEL_78;
      }

      if (v102 == 16)
      {
        v104 = 224;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    if (v102 != -1879048176)
    {
      v103 = v291;
      if (v102 == 4)
      {
        v104 = 160;
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    v104 = 384;
    goto LABEL_76;
  }

  if (v102 <= 268435463)
  {
    v103 = v291;
    if (v102 == 32)
    {
      v104 = 256;
      goto LABEL_78;
    }

    if (v102 == 64)
    {
      v104 = 288;
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (v102 == 268435464)
  {
    v104 = 480;
    goto LABEL_76;
  }

  if (v102 == 268435472)
  {
    v104 = 320;
    goto LABEL_76;
  }

  v103 = v291;
  if (v102 != 268435488)
  {
    goto LABEL_77;
  }

  v104 = 352;
LABEL_78:
  v105 = v297;
LABEL_79:
  v106 = v100 + v105 * v45;
  v107 = v60 + v30 * v55 + v270 * v54 + v103 * v57;
  v108 = *&v300[v101];
  if (v108 > 285212703)
  {
    if (v108 <= 536870915)
    {
      if (v108 > 301989895)
      {
        if (v108 == 301989896)
        {
          v109 = 0x4000;
          goto LABEL_123;
        }

        if (v108 == 335544328)
        {
          v109 = 17408;
          goto LABEL_123;
        }
      }

      else
      {
        if (v108 == 285212704)
        {
          v109 = 13312;
          goto LABEL_123;
        }

        if (v108 == 285212736)
        {
          v109 = 14336;
          goto LABEL_123;
        }
      }
    }

    else if (v108 <= 536870927)
    {
      if (v108 == 536870916)
      {
        v109 = 0;
        goto LABEL_123;
      }

      if (v108 == 536870920)
      {
        v109 = 1024;
        goto LABEL_123;
      }
    }

    else
    {
      switch(v108)
      {
        case 536870928:
          v109 = 2048;
          goto LABEL_123;
        case 536870944:
          v109 = 3072;
          goto LABEL_123;
        case 536870976:
          v109 = 4096;
          goto LABEL_123;
      }
    }
  }

  else if (v108 <= 31)
  {
    if (v108 > 7)
    {
      if (v108 == 8)
      {
        v109 = 6144;
        goto LABEL_123;
      }

      if (v108 == 16)
      {
        v109 = 7168;
        goto LABEL_123;
      }
    }

    else
    {
      if (v108 == -1879048176)
      {
        v109 = 12288;
        goto LABEL_123;
      }

      if (v108 == 4)
      {
        v109 = 5120;
        goto LABEL_123;
      }
    }
  }

  else if (v108 <= 268435463)
  {
    if (v108 == 32)
    {
      v109 = 0x2000;
      goto LABEL_123;
    }

    if (v108 == 64)
    {
      v109 = 9216;
      goto LABEL_123;
    }
  }

  else
  {
    switch(v108)
    {
      case 268435464:
        v109 = 15360;
        goto LABEL_123;
      case 268435472:
        v109 = 10240;
        goto LABEL_123;
      case 268435488:
        v109 = 11264;
        goto LABEL_123;
    }
  }

  v109 = 18432;
LABEL_123:
  v110 = v106 + *(&v297 + 1) * v47;
  v111 = v107 + v289 * v59;
  v112 = *&v302[v101];
  v238 = v104;
  v235 = v109;
  if (v112 > 285212703)
  {
    if (v112 <= 536870915)
    {
      if (v112 > 301989895)
      {
        if (v112 == 301989896)
        {
          v113 = 16;
          goto LABEL_167;
        }

        if (v112 == 335544328)
        {
          v113 = 17;
          goto LABEL_167;
        }
      }

      else
      {
        if (v112 == 285212704)
        {
          v113 = 13;
          goto LABEL_167;
        }

        if (v112 == 285212736)
        {
          v113 = 14;
          goto LABEL_167;
        }
      }
    }

    else if (v112 <= 536870927)
    {
      if (v112 == 536870916)
      {
        v250 = 0;
        goto LABEL_168;
      }

      if (v112 == 536870920)
      {
        v113 = 1;
        goto LABEL_167;
      }
    }

    else
    {
      switch(v112)
      {
        case 536870928:
          v113 = 2;
          goto LABEL_167;
        case 536870944:
          v113 = 3;
          goto LABEL_167;
        case 536870976:
          v113 = 4;
          goto LABEL_167;
      }
    }

LABEL_166:
    v113 = 18;
    goto LABEL_167;
  }

  if (v112 <= 31)
  {
    if (v112 > 7)
    {
      if (v112 == 8)
      {
        v113 = 6;
        goto LABEL_167;
      }

      if (v112 == 16)
      {
        v113 = 7;
        goto LABEL_167;
      }
    }

    else
    {
      if (v112 == -1879048176)
      {
        v113 = 12;
        goto LABEL_167;
      }

      if (v112 == 4)
      {
        v113 = 5;
        goto LABEL_167;
      }
    }

    goto LABEL_166;
  }

  if (v112 <= 268435463)
  {
    if (v112 == 32)
    {
      v113 = 8;
      goto LABEL_167;
    }

    if (v112 == 64)
    {
      v113 = 9;
      goto LABEL_167;
    }

    goto LABEL_166;
  }

  if (v112 == 268435464)
  {
    v113 = 15;
    goto LABEL_167;
  }

  if (v112 == 268435472)
  {
    v113 = 10;
    goto LABEL_167;
  }

  if (v112 != 268435488)
  {
    goto LABEL_166;
  }

  v113 = 11;
LABEL_167:
  v250 = v113;
LABEL_168:
  v322[0] = v94;
  v322[1] = v95;
  v322[2] = v97;
  v322[3] = v98;
  v114 = *(v322 + (BYTE1(v96) & 0xF));
  v321[0] = v83;
  v321[1] = v84;
  v321[2] = v85;
  v321[3] = v86;
  v115 = *(v321 + (v93 & 0xF));
  if (v92 == v293)
  {
    v116 = v114;
  }

  else
  {
    v116 = v293;
  }

  v117 = v300;
  if (v92 == v293)
  {
    v118 = v300;
  }

  else
  {
    v118 = v3;
  }

  v267 = v118;
  if (v92 == v293)
  {
    v117 = v3;
    v119 = v110;
  }

  else
  {
    v119 = v111;
  }

  if (v92 == v293)
  {
    v110 = v111;
  }

  v236 = v110;
  v237 = v119;
  v120 = v382;
  if (v92 == v293)
  {
    v121 = v383;
  }

  else
  {
    v121 = v382;
  }

  if (v92 != v293)
  {
    v120 = v383;
  }

  v122 = v121[1];
  v380 = *v121;
  v381 = v122;
  v123 = v120[1];
  v378 = *v120;
  v379 = v123;
  v264 = v117;
  v124 = *&v117[v87];
  if (v92 == 1)
  {
    v131 = *&v117[*MEMORY[0x277CD7408]] == *&v117[v82];
  }

  v125 = v255;
  v126 = *(v255 + 1482);
  if (v293 != v92 && v99)
  {
    LOBYTE(v292) = 0;
    v127 = 1;
    v128 = 16;
    v298 = 16;
    v299 = 16;
    v129 = v285;
    if (v115 < 0x800)
    {
LABEL_188:
      v130 = 1;
      goto LABEL_212;
    }
  }

  else
  {
    v131 = v115 < 0x101 && v92 == 1;
    LOBYTE(v87) = v131;
    v292 = (*(v255 + 1476) >> 6) & 1;
    if ((v87 & v292) != 0)
    {
      v128 = 4;
    }

    else
    {
      v128 = 1;
    }

    v298 = 1;
    v299 = *(v255 + 1482);
    v127 = v128;
    v129 = v285;
    if (v115 < 0x800)
    {
      goto LABEL_188;
    }
  }

  if (v92 >= 4)
  {
    if (v92 >= 6)
    {
      if (v92 == 6)
      {
        v130 = 2;
      }

      else
      {
        v130 = 1;
      }

      if ((v115 & 0x1F) != 0)
      {
        goto LABEL_212;
      }
    }

    else
    {
      v130 = 4;
      if ((v115 & 0x1F) != 0)
      {
        goto LABEL_212;
      }
    }
  }

  else
  {
    v130 = 8;
    if ((v115 & 0x1F) != 0)
    {
      goto LABEL_212;
    }
  }

  if ((((v130 << 7) - 1) & v115) != 0)
  {
    v132 = 1 << (__clz(((v115 >> 7) - 1) ^ (v115 >> 7)) ^ 0x3F);
    if (v130 >= v132)
    {
      v130 = v132;
    }
  }

LABEL_212:
  v253 = *(v255 + 1482);
  v232 = v128;
  if (*(v129 + 52))
  {
    v133 = *(v129 + 25);
    if (v133)
    {
      v134 = *(v133 + 8);
      if (v134)
      {
        v130 = v134;
      }
    }
  }

  v234 = v130;
  v320[0] = v94;
  v320[1] = v95;
  v320[2] = v97;
  v320[3] = v98;
  v135 = *(v320 + (BYTE2(v96) & 0xF));
  v319[0] = v94;
  v319[1] = v95;
  v319[2] = v97;
  v319[3] = v98;
  v260 = *(v319 + (BYTE3(v96) & 0xF));
  v259 = v135;
  v271 = v135 * v260;
  v136 = *(v129 + 23);
  v262 = (v298 + (v127 + v116 - 1) / v127 - 1) / v298;
  v257 = v92;
  v288 = v116;
  v290 = v115 & 0xFFFFFFFC;
  if (v136)
  {
    v137 = v99;
    v138 = [v136 normFusionType];
    v139 = *(v129 + 23);
    if (v139)
    {
      v258 = [v139 hasScale];
      if (v92 < 8 && v137)
      {
LABEL_222:
        v141 = *(v129 + 23);
        if (v141)
        {
          if (((v293 != v92) ^ [v141 isLeftFused]))
          {
            v142 = 0;
          }

          else if ([*(v129 + 23) normFusionType] >= 2)
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            v142 = 1;
            v129 = v285;
            v125 = v255;
          }

          else
          {
            v142 = 1;
          }
        }

        else
        {
          v142 = 0;
        }

        v144 = v232;
        goto LABEL_243;
      }
    }

    else
    {
      v258 = 0;
      if (v92 < 8 && v137)
      {
        goto LABEL_222;
      }
    }

    v144 = v232;
    if (v138 == 2)
    {
      v233 = 0;
      if (v292)
      {
        v146 = 0;
        v256 = 1;
        v147 = 1;
        LOBYTE(v292) = 1;
      }

      else
      {
        LOBYTE(v292) = 0;
        v146 = 4 * v92 * v298 * v299;
        v256 = 1;
        v147 = 1;
      }
    }

    else
    {
      v233 = 0;
      v146 = 0;
      v256 = 1;
      v147 = 1;
    }

    goto LABEL_274;
  }

  v142 = 0;
  if (v92 >= 8 || !v99)
  {
    v146 = 0;
    v256 = 1;
    v258 = 0;
    v233 = 0;
    v147 = 1;
    v144 = v128;
    goto LABEL_274;
  }

  v258 = 0;
  v144 = v128;
LABEL_243:
  v148 = 4;
  v149 = 8;
  if (v116 >= 0x81)
  {
    v150 = 4;
  }

  else
  {
    v150 = 8;
  }

  if (v116 < 0x81)
  {
    v149 = 4;
  }

  v299 = v149;
  v151 = v116 - 1 + 4 * v149;
  if (v116 >= 0x81)
  {
    v148 = 5;
  }

  v256 = v151 >> v148;
  v152 = (v151 >> v148) * v271;
  v153 = 6 * v92;
  if (!v142)
  {
    v153 = 4 * v92;
  }

  LODWORD(v154) = 0x8000 / ((4 * v153 * v253) & 0xFFF8u);
  if (v154 >= 0x10)
  {
    v154 = 16;
  }

  else
  {
    v154 = v154;
  }

  v155 = 1;
  do
  {
    v156 = v150;
    v158 = v152 * v155 >= 16 * *(v125 + 1480);
    v155 *= 2;
    v150 *= 2;
    v158 = v158 || v155 > v154 || v150 >= v115;
  }

  while (!v158);
  LOBYTE(v292) = 0;
  v159 = 2;
  if (v116 >= 0x81)
  {
    v159 = 3;
  }

  if (v142)
  {
    v146 = v156 * ((8 * v92) << v159);
  }

  else
  {
    v146 = 0;
  }

  v160 = v156 << v159;
  v161 = v253 >> v159;
  if (v160 >= v253)
  {
    v162 = v156;
  }

  else
  {
    v162 = v161;
  }

  v298 = v162;
  v233 = 1;
  v147 = 4;
  v262 = 1;
LABEL_274:
  v163 = 64 - __clz(v144 - 1);
  if (v144 >= 2)
  {
    v164 = v163;
  }

  else
  {
    v164 = 0;
  }

  if (v144 != 1 << v164 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v129 alpha];
  [v267 dataType];
  [v264 dataType];
  [v302 dataType];
  v165 = [*(v301 + 232) finalOp];
  if ((*(*v165 + 16))(v165))
  {
    v166 = *MEMORY[0x277CD73F0];
    if (*(v230 + 8) == 268435488)
    {
      v167 = (*&v302[v166] == 4) << 16;
    }
  }

  else
  {
    v166 = *MEMORY[0x277CD73F0];
  }

  v249 = v239 + v283 * v240 + v244 * v242 + v280 * v246 + v282 * v248;
  v168 = *&v302[v166];
  v169 = (v290 + 4 * v299 - 1) / (4 * v299);
  v170 = v290 / (4 * v299);
  v254 = v169;
  if (v233)
  {
    v171 = 1;
  }

  else
  {
    if (v169 >= 0x20)
    {
      v172 = 32;
    }

    else
    {
      v172 = v169;
    }

    v173 = ((v169 - v170) & 1) << 11;
    if (v169 >= 0x20)
    {
      v173 = 0;
    }

    v171 = (((32 * (v271 != 1)) | (16 * (v262 != 1))) | (8 * (v256 != 1))) & 0x3F | ((v172 & 0x1F) << 6) | v173 | ((v290 % (4 * v299 * v298) == 0) << 12);
  }

  v174 = v285;
  *&v175 = -1;
  *(&v175 + 1) = -1;
  v368 = v175;
  v367 = v175;
  v366 = v175;
  v364 = -1;
  v363[9] = v175;
  v365 = v235 | v238 | v250;
  *&v368 = [*(v301 + 16) count] | ((*(v301 + 112) != 0) << 8) | 0x10000;
  v364 = v171;
  v228 = *&v285[*MEMORY[0x277CD7360]];
  v229 = *&v285[*MEMORY[0x277CD7368]];
  v227 = *(v301 + 232);
  MPSLibrary::CreateUberShaderKey();
  v176 = v293 == v257;
  if (v293 == v257)
  {
    v177 = v278 <= v276;
  }

  else
  {
    v177 = v274 <= v272;
  }

  v294 = *(&v380 | (8 * v177));
  if (v176)
  {
    v178 = v274 <= v272;
  }

  else
  {
    v178 = v278 <= v276;
  }

  v286 = *(&v378 | (8 * v178));
  v179 = MEMORY[0x277CD7410];
  v180 = MEMORY[0x277CD73D8];
  v279 = *&v300[4 * (*&v300[*MEMORY[0x277CD73D8]] & 0xF) + *MEMORY[0x277CD7410]];
  [v174 alpha];
  v182 = v181;
  v183 = *v179;
  v184 = *&v267[v183];
  v185 = *&v267[v183 + 16];
  v186 = *&v267[v183 + 32];
  v187 = *&v267[v183 + 48];
  v188 = *v180;
  v189 = v267[v188 + 2] & 0xF;
  v317[3] = v187;
  v317[2] = v186;
  v317[1] = v185;
  v317[0] = v184;
  if (*(v317 + v189) == 1)
  {
    v190 = 0;
  }

  else
  {
    v190 = v381;
  }

  v277 = v190;
  v191 = *&v264[v183];
  v192 = *&v264[v183 + 16];
  v193 = *&v264[v183 + 32];
  v194 = *&v264[v183 + 48];
  v195 = v264[v188 + 2] & 0xF;
  v315[3] = v194;
  v315[2] = v193;
  v315[1] = v192;
  v315[0] = v191;
  if (*(v315 + v195) == 1)
  {
    v196 = 0;
  }

  else
  {
    v196 = v379;
  }

  v275 = v196;
  v197 = &v302[v183];
  v251 = *v197;
  v245 = *(v197 + 2);
  v247 = *(v197 + 1);
  v241 = *&v302[v188];
  v243 = *(v197 + 3);
  v313[3] = v243;
  v313[2] = v245;
  v313[1] = v247;
  v313[0] = v251;
  if (*(v313 + (BYTE2(v241) & 0xF)) == 1)
  {
    v198 = 0;
  }

  else
  {
    v198 = v280;
  }

  v273 = v198;
  v281 = v170 / v234 * v234;
  v199 = v267[v188 + 3] & 0xF;
  v318[3] = v187;
  v318[2] = v186;
  v318[1] = v185;
  v318[0] = v184;
  if (*(v318 + v199) == 1)
  {
    v200 = 0;
  }

  else
  {
    v200 = DWORD2(v381);
  }

  v201 = v264[v188 + 3] & 0xF;
  v316[3] = v194;
  v316[2] = v193;
  v316[1] = v192;
  v316[0] = v191;
  if (*(v316 + v201) == 1)
  {
    v202 = 0;
  }

  else
  {
    v202 = DWORD2(v379);
  }

  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSSetNDArraysOnComputeEncoder(v252, v301, 4, 0, 0);
  [v252 setComputePipelineState:PipelineStateForMPSKey];
  [v252 setBuffer:objc_msgSend(v264 offset:"buffer") atIndex:{v236, 29}];
  [v252 setBuffer:objc_msgSend(v267 offset:"buffer") atIndex:{v237, 28}];
  v314[3] = v243;
  v314[2] = v245;
  v314[1] = v247;
  v314[0] = v251;
  if (*(v314 + (BYTE3(v241) & 0xF)) == 1)
  {
    v204 = 0;
  }

  else
  {
    v204 = v282;
  }

  [v252 setBuffer:objc_msgSend(v302 offset:"buffer") atIndex:{v249, 26}];
  *&v357 = __PAIR64__(v288, v257);
  *(&v357 + 1) = __PAIR64__(v294, v279);
  *&v358 = v286;
  *(&v358 + 1) = __PAIR64__(LODWORD(v182), v283);
  LODWORD(v359) = 0;
  *(&v359 + 4) = __PAIR64__(v277, v259);
  HIDWORD(v359) = v275;
  DWORD1(v360) = v273;
  *(&v360 + 1) = 1;
  *&v361 = __PAIR64__(v254, v290);
  *(&v361 + 1) = v281;
  *&v362 = __PAIR64__(v200, v260);
  DWORD2(v362) = v202;
  LODWORD(v363[0]) = v204;
  *(&v363[7] + 4) = 0u;
  *(&v363[6] + 4) = 0u;
  *(&v363[5] + 4) = 0u;
  *(&v363[4] + 4) = 0u;
  *(&v363[3] + 4) = 0u;
  *(&v363[2] + 4) = 0u;
  memset(v363 + 4, 0, 32);
  [v252 setBytes:&v357 length:228 atIndex:25];
  v377[1] = 0;
  v377[0] = 0;
  [v252 setBytes:v377 length:16 atIndex:24];
  if (v258)
  {
    makeStrideBytes();
    v205 = *&v231[*MEMORY[0x277CD73D8]];
    v312[7] = v376;
    v312[6] = v375;
    v312[5] = v374;
    v312[4] = v373;
    v312[3] = v372;
    v312[2] = v371;
    v312[1] = v370;
    v312[0] = v369;
    v206 = v205 & 0xF;
    v207 = *(v312 + v206);
    v311[7] = v376;
    v311[6] = v375;
    v311[5] = v374;
    v311[4] = v373;
    v311[3] = v372;
    v311[2] = v371;
    v311[1] = v370;
    v311[0] = v369;
    v208 = BYTE1(v205) & 0xF;
    v209 = *(v311 + v208);
    v310[7] = v376;
    v310[5] = v374;
    v310[6] = v375;
    v310[3] = v372;
    v310[4] = v373;
    v310[1] = v370;
    v310[2] = v371;
    v310[0] = v369;
    v210 = BYTE2(v205) & 0xF;
    v211 = *(v310 + v210);
    v309[6] = v375;
    v309[7] = v376;
    v309[4] = v373;
    v309[5] = v374;
    v309[2] = v371;
    v309[3] = v372;
    v309[0] = v369;
    v309[1] = v370;
    v212 = BYTE3(v205) & 0xF;
    v213 = *(v309 + v212);
    v214 = &v231[*MEMORY[0x277CD7418]];
    v215 = *v214;
    v216 = *(v214 + 1);
    v217 = *(v214 + 3);
    v307 = *(v214 + 2);
    v308 = v217;
    v306[0] = v215;
    v306[1] = v216;
    v218 = *(v306 + v206);
    v305[2] = v307;
    v305[3] = v217;
    v305[0] = v215;
    v305[1] = v216;
    v219 = *(v305 + v208);
    v304[2] = v307;
    v304[3] = v217;
    v304[0] = v215;
    v304[1] = v216;
    v220 = *(v304 + v210);
    v303[2] = v307;
    v303[3] = v217;
    v303[0] = v215;
    v303[1] = v216;
    [v252 setBuffer:objc_msgSend(v231 offset:"buffer") atIndex:{objc_msgSend(v231, "offset") + v209 * v219 + v207 * v218 + v211 * v220 + v213 * *(v303 + v212), 22}];
  }

  if ((v292 & 1) == 0)
  {
    [v252 setThreadgroupMemoryLength:v146 + 4 * v257 * v299 * v298 * v147 atIndex:0];
  }

  *&v369 = v256;
  *(&v369 + 1) = v262;
  *&v370 = v271;
  v356[0] = v299;
  v356[1] = v298;
  v356[2] = 1;
  [v252 dispatchThreadgroups:&v369 threadsPerThreadgroup:v356];
  result = MPSLibrary::ReleaseMPSKey();
  v222 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MPSNDArrayMatrixMultiplyA14FunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = a2[8];
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:&v9 + 4 type:33 atIndex:115];
  AddFunctionConstantList(v5, a3);
  v6 = *a2;
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

char *___ZL20MPSEnableAutoTuneLogv_block_invoke()
{
  result = getenv("MPS_LOG_AUTO_TUNE");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      _MergedGlobals_18 = result != 0;
    }
  }

  return result;
}

const char *___ZL19setParametersFromEVP30MPSNDArrayMatrixMultiplicationP9MPSDevice_block_invoke(uint64_t a1)
{
  v2 = getenv("MPS_MATMUL_TILEM");
  v3 = v2;
  if (v2)
  {
    v17 = atoi(v2);
    v4 = getenv("MPS_MATMUL_TILEN");
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 64;
    v4 = getenv("MPS_MATMUL_TILEN");
    if (v4)
    {
LABEL_3:
      v16 = atoi(v4);
      v5 = getenv("MPS_MATMUL_TILEK");
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v16 = 64;
  v5 = getenv("MPS_MATMUL_TILEK");
  if (v5)
  {
LABEL_4:
    v15 = atoi(v5);
    v6 = getenv("MPS_MATMUL_TGMEMA");
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v15 = 16;
  v6 = getenv("MPS_MATMUL_TGMEMA");
  if (v6)
  {
LABEL_5:
    v7 = atoi(v6) != 0;
    v8 = getenv("MPS_MATMUL_TGMEMB");
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = 1;
  v8 = getenv("MPS_MATMUL_TGMEMB");
  if (v8)
  {
LABEL_6:
    v9 = atoi(v8) != 0;
    v10 = getenv("MPS_MATMUL_SIMDSX");
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = 1;
  v10 = getenv("MPS_MATMUL_SIMDSX");
  if (v10)
  {
LABEL_7:
    v11 = atoi(v10);
    result = getenv("MPS_MATMUL_SIMDSY");
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = 2;
  result = getenv("MPS_MATMUL_SIMDSY");
  if (result)
  {
LABEL_8:
    result = atoi(result);
    v13 = result;
    if (v3)
    {
      goto LABEL_22;
    }

LABEL_17:
    if (!v4 && !v5 && !v6 && !v8 && !v10)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_16:
  v13 = 4;
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_22:
  v18[0] = v17;
  v18[1] = v16;
  v18[2] = v15;
  v18[3] = 32 * v11 * v13;
  v18[4] = v11;
  v18[5] = v13;
  v19 = 0;
  BYTE4(v19) = v7;
  BYTE5(v19) = v9;
  if ((*(*(a1 + 40) + 1472) - 11) < 7)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  [*(a1 + 32) setAutoTuningTarget:v14];
  return [*(a1 + 32) setAutoTuningParameters:v18];
}

uint64_t FlattenTo3D(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x277CD73D8];
  v45[3] = *MEMORY[0x277D85DE8];
  v9 = *&a1[*MEMORY[0x277CD73D8]];
  if (BYTE2(v9) >= BYTE3(v9))
  {
    v10 = BYTE3(v9);
  }

  else
  {
    v10 = BYTE2(v9);
  }

  v11 = &a1[*MEMORY[0x277CD7410]];
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = *(v11 + 3);
  v43 = *(v11 + 2);
  v44 = v14;
  v42[0] = v12;
  v42[1] = v13;
  v45[0] = *(v42 + (v9 & 0xF));
  v41[2] = v43;
  v41[3] = v14;
  v41[0] = v12;
  v41[1] = v13;
  v45[1] = *(v41 + (BYTE1(v9) & 0xF));
  v40[2] = v43;
  v40[3] = v14;
  v40[0] = v12;
  v40[1] = v13;
  v15 = *(v40 + (BYTE2(v9) & 0xF));
  v39[2] = v43;
  v39[3] = v14;
  v39[0] = v12;
  v39[1] = v13;
  v45[2] = (v15 * *(v39 + (BYTE3(v9) & 0xF)));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*&a1[*MEMORY[0x277CD7498]];
  }

  result = [a2 reshapeWithCommandBuffer:a3 sourceArray:a1 dimensionCount:3 dimensionSizes:v45 destinationArray:0];
  if (!result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      --*&a1[*MEMORY[0x277CD7498]];
    }

    v17 = [MEMORY[0x277CD7268] descriptorWithDataType:*&a1[*MEMORY[0x277CD73C8]] dimensionCount:3 dimensionSizes:v45];
    v18 = v17;
    v19 = 0;
    v20 = MEMORY[0x277CD7438];
    v21 = MEMORY[0x277CD7430];
    v22 = MEMORY[0x277CD7458];
    do
    {
      v38 = *&a1[*v8];
      v26 = *(&v38 | v19 & 0xF);
      if (v10 == v26)
      {
        *(v17 + *v20 + (v19 & 0xF)) = v10;
        v23 = v45[v19];
        v24 = v17 + *v21;
        v34 = *&a1[*v8];
        *(v24 + 4 * (*(&v34 | v19 & 0xF) & 0xF)) = v23;
        v25 = v17 + *v22;
        v35 = *&a1[*v8];
        *(v25 + 4 * (*(&v35 | v19 & 0xF) & 0xF)) = v23;
      }

      else if (v26 <= v10)
      {
        v30 = 4 * (v19 & 0xF);
        *(v17 + *v20 + (v19 & 0xF)) = v26;
        v31 = v45[v19];
        *(v17 + *v21 + v30) = v31;
        *(v17 + *v22 + v30) = v31;
      }

      else
      {
        *(v17 + *v20 + (v19 & 0xF)) = v26 - 1;
        v27 = v45[v19];
        v28 = v17 + *v21;
        v36 = *&a1[*v8];
        *(v28 + 4 * ((*(&v36 | v19 & 0xF) - 1) & 0xF)) = v27;
        v29 = v17 + *v22;
        v37 = *&a1[*v8];
        *(v29 + 4 * ((*(&v37 | v19 & 0xF) - 1) & 0xF)) = v27;
      }

      ++v19;
    }

    while (v19 != 3);
    v32 = [a1 descriptor];
    *(v18 + *MEMORY[0x277CD7448]) = *(v32 + *MEMORY[0x277CD7448]);
    result = [a2 reshapeWithCommandEncoder:a4 commandBuffer:a3 sourceArray:a1 dimensionCount:3 dimensionSizes:v45 destinationArray:{objc_msgSend(MEMORY[0x277CD72B8], "temporaryNDArrayWithCommandBuffer:descriptor:", a3, v18)}];
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

MPSTemporaryNDArray *FlattenTo2D(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v7 = (a1 + *MEMORY[0x277CD7410]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = MEMORY[0x277CD73D8];
  v13 = *(a1 + *MEMORY[0x277CD73D8]);
  v28 = v13;
  v14 = *(&v28 | a4 & 0xF);
  v43 = v10;
  v44 = v11;
  v41 = v8;
  v42 = v9;
  v15 = *(&v41 + (v14 & 0xF));
  v16 = &v28;
  if (!a4)
  {
    v16 = (&v28 + 1);
  }

  v39 = v10;
  v40 = v11;
  v37 = v8;
  v38 = v9;
  v17 = *(&v37 + (*v16 & 0xF));
  v35 = v10;
  v36 = v11;
  v33 = v8;
  v34 = v9;
  v18 = *(&v33 + (BYTE2(v13) & 0xF));
  v31 = v10;
  v32 = v11;
  v29 = v8;
  v30 = v9;
  v19 = *(&v29 + (BYTE3(v13) & 0xF)) * v18 * v17;
  v20 = v14 == 0;
  if (v14)
  {
    v21 = v19;
  }

  else
  {
    v21 = v15;
  }

  if (v20)
  {
    v15 = v19;
  }

  v45[0] = v21;
  v45[1] = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*(a1 + *MEMORY[0x277CD7498]);
  }

  result = [a2 reshapeWithCommandBuffer:a3 sourceArray:a1 dimensionCount:2 dimensionSizes:v45 destinationArray:{0, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44}];
  if (!result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = 0;
      --*(a1 + *MEMORY[0x277CD7498]);
      v26 = *MEMORY[0x277D85DE8];
      return result;
    }

    result = 0;
    goto LABEL_18;
  }

  v23 = *(&result->super.super.isa + *v12);
  v24.i32[0] = v23;
  v24.i32[1] = BYTE1(v23);
  *&v23 = vcgt_u32(vand_s8(v24, 0xFF000000FFLL), 0x100000001);
  if (((v23 | DWORD1(v23)) & 1) == 0)
  {
LABEL_18:
    v27 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (*(&result[3].super.super.isa + *MEMORY[0x277CD73C0]))
  {
    MPSDecrementReadCount(result);
  }

  result = 0;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void updateDAGDestShape(MPSKernelDAGObject **a1, MPSNDArray *a2)
{
  v3 = [a1 graph];
  v4 = **(***(v3 + 56) + 24);
  if (*(*(***(v3 + 56) + 24) + 8) != v4)
  {
    v5 = *v4;

    reshapeTensor(v5, a2);
  }

  std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
}

void reshapeTensor(BaseTensor *a1, MPSNDArray *a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x23EE7C8C0](v2, 0x10C402FEFCB83);
  }

  operator new();
}

void sub_239A25828(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x23EE7C8C0](v2, v1);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x23EE7C8C0](v1, 0x10C402FEFCB83);
    return v2;
  }

  return result;
}

uint64_t EncodeArrayMathTernary(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + *MEMORY[0x277CD7370]);
  v8 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v9 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v10 = [*(a4 + 16) objectAtIndexedSubscript:2];
  v11 = *(a4 + 208);
  v12 = MEMORY[0x277CD7410];
  v13 = *MEMORY[0x277CD7410];
  v14 = *MEMORY[0x277CD7410];
  v15 = MEMORY[0x277CD73D8];
  if (*&v8[v14] == 1)
  {
    v59 = 0;
    if (*&v8[v13 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v58 = 0;
    if (*&v9[v14] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    v57 = 0;
    v16 = v13;
    if (*&v9[v13 + 4] == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (*&v8[*MEMORY[0x277CD73D8]] == 1)
  {
    v59 = *&v8[*MEMORY[0x277CD7400]];
    if (*&v8[v13 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v8[*MEMORY[0x277CD73D8]])
  {
    v59 = [v8 dataType] >> 3;
    v13 = *v12;
    v14 = *v12;
  }

  if (*&v8[v14 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v8[*v15 + 1])
  {
    v58 = [v8 dataType] >> 3;
    v13 = *v12;
    if (*&v9[*v12] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v8[*v15 + 1] != 1)
  {
    if (*&v9[v14] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v58 = *&v8[*MEMORY[0x277CD7400]];
  if (*&v9[v14] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v9[*v15] == 1)
  {
    v57 = *&v9[*MEMORY[0x277CD7400]];
    v16 = v13;
    if (*&v9[v13 + 4] == 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*&v9[*v15])
    {
      v57 = [v9 dataType] >> 3;
      v13 = *v12;
    }

    v16 = v13;
    if (*&v9[v13 + 4] == 1)
    {
LABEL_23:
      v56 = 0;
      if (*&v10[v16] != 1)
      {
        goto LABEL_34;
      }

LABEL_31:
      v55 = 0;
      v17 = v13;
      if (*&v10[v13 + 4] == 1)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

LABEL_26:
  if (!v9[*v15 + 1])
  {
    v56 = [v9 dataType] >> 3;
    v13 = *v12;
    if (*&v10[*v12] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v9[*v15 + 1] != 1)
  {
    if (*&v10[v16] != 1)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v56 = *&v9[*MEMORY[0x277CD7400]];
  if (*&v10[v16] == 1)
  {
    goto LABEL_31;
  }

LABEL_34:
  if (*&v10[*v15] == 1)
  {
    v55 = *&v10[*MEMORY[0x277CD7400]];
    v17 = v13;
    if (*&v10[v13 + 4] == 1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (!*&v10[*v15])
    {
      v55 = [v10 dataType] >> 3;
      v13 = *v12;
    }

    v17 = v13;
    if (*&v10[v13 + 4] == 1)
    {
LABEL_38:
      v54 = 0;
      if (*&v11[v17] != 1)
      {
        goto LABEL_49;
      }

LABEL_46:
      v53 = 0;
      if (*&v11[v13 + 4] != 1)
      {
        goto LABEL_55;
      }

LABEL_53:
      v4 = 0;
      goto LABEL_59;
    }
  }

LABEL_41:
  if (!v10[*v15 + 1])
  {
    v54 = [v10 dataType] >> 3;
    v13 = *v12;
    if (*&v11[*v12] != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (v10[*v15 + 1] != 1)
  {
    if (*&v11[v17] != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  v54 = *&v10[*MEMORY[0x277CD7400]];
  if (*&v11[v17] == 1)
  {
    goto LABEL_46;
  }

LABEL_49:
  if (*&v11[*v15] == 1)
  {
    v53 = *&v11[*MEMORY[0x277CD7400]];
    if (*&v11[v13 + 4] != 1)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (!*&v11[*v15])
  {
    v53 = [v11 dataType] >> 3;
    v13 = *v12;
  }

  if (*&v11[v13 + 4] == 1)
  {
    goto LABEL_53;
  }

LABEL_55:
  if (v11[*v15 + 1])
  {
    if (v11[*v15 + 1] == 1)
    {
      v4 = *&v11[*MEMORY[0x277CD7400]];
    }
  }

  else
  {
    v4 = [v11 dataType] >> 3;
  }

LABEL_59:
  v18 = *(a4 + 8);
  v63 = v18[8];
  v65 = v18[18];
  v19 = v18[28];
  v20 = *(a4 + 192);
  v60 = MPSGetLinearOffsetBytes(v8, 0, 2, 0, 0);
  v61 = MPSGetLinearOffsetBytes(v9, 0, 2, 0, 0);
  v62 = MPSGetLinearOffsetBytes(v10, 0, 2, 0, 0);
  v21 = MPSGetLinearOffsetBytes(v11, 0, 2, 0, 0);
  v22 = *MEMORY[0x277CD73C8];
  v23 = *&v8[v22];
  if (v23 > 285212703)
  {
    if (v23 <= 536870915)
    {
      if (v23 > 301989895)
      {
        if (v23 == 301989896)
        {
          v24 = 512;
          v25 = *&v9[v22];
          if (v25 <= 285212703)
          {
            goto LABEL_118;
          }
        }

        else
        {
          if (v23 != 335544328)
          {
            goto LABEL_148;
          }

          v24 = 544;
          v25 = *&v9[v22];
          if (v25 <= 285212703)
          {
            goto LABEL_118;
          }
        }
      }

      else if (v23 == 285212704)
      {
        v24 = 416;
        v25 = *&v9[v22];
        if (v25 <= 285212703)
        {
          goto LABEL_118;
        }
      }

      else
      {
        if (v23 != 285212736)
        {
          goto LABEL_148;
        }

        v24 = 448;
        v25 = *&v9[v22];
        if (v25 <= 285212703)
        {
          goto LABEL_118;
        }
      }

      goto LABEL_149;
    }

    if (v23 > 536870927)
    {
      switch(v23)
      {
        case 536870928:
          v24 = 64;
          v25 = *&v9[v22];
          if (v25 <= 285212703)
          {
            goto LABEL_118;
          }

          break;
        case 536870944:
          v24 = 96;
          v25 = *&v9[v22];
          if (v25 <= 285212703)
          {
            goto LABEL_118;
          }

          break;
        case 536870976:
          v24 = 128;
          v25 = *&v9[v22];
          if (v25 <= 285212703)
          {
            goto LABEL_118;
          }

          break;
        default:
          goto LABEL_148;
      }

      goto LABEL_149;
    }

    v24 = 0;
    if (v23 != 536870916)
    {
      if (v23 != 536870920)
      {
        goto LABEL_148;
      }

      v24 = 32;
      v25 = *&v9[v22];
      if (v25 <= 285212703)
      {
        goto LABEL_118;
      }

      goto LABEL_149;
    }

LABEL_117:
    v25 = *&v9[v22];
    if (v25 > 285212703)
    {
      goto LABEL_149;
    }

    goto LABEL_118;
  }

  if (v23 <= 31)
  {
    if (v23 > 7)
    {
      if (v23 == 8)
      {
        v24 = 192;
        v25 = *&v9[v22];
        if (v25 <= 285212703)
        {
          goto LABEL_118;
        }
      }

      else
      {
        if (v23 != 16)
        {
          goto LABEL_148;
        }

        v24 = 224;
        v25 = *&v9[v22];
        if (v25 <= 285212703)
        {
          goto LABEL_118;
        }
      }
    }

    else if (v23 == -1879048176)
    {
      v24 = 384;
      v25 = *&v9[v22];
      if (v25 <= 285212703)
      {
        goto LABEL_118;
      }
    }

    else
    {
      if (v23 != 4)
      {
        goto LABEL_148;
      }

      v24 = 160;
      v25 = *&v9[v22];
      if (v25 <= 285212703)
      {
        goto LABEL_118;
      }
    }

    goto LABEL_149;
  }

  if (v23 <= 268435463)
  {
    if (v23 != 32)
    {
      if (v23 != 64)
      {
        goto LABEL_148;
      }

      v24 = 288;
      v25 = *&v9[v22];
      if (v25 <= 285212703)
      {
        goto LABEL_118;
      }

      goto LABEL_149;
    }

    v24 = 256;
    goto LABEL_117;
  }

  switch(v23)
  {
    case 268435464:
      v24 = 480;
      v25 = *&v9[v22];
      if (v25 <= 285212703)
      {
        goto LABEL_118;
      }

      break;
    case 268435472:
      v24 = 320;
      v25 = *&v9[v22];
      if (v25 <= 285212703)
      {
        goto LABEL_118;
      }

      break;
    case 268435488:
      v24 = 352;
      v25 = *&v9[v22];
      if (v25 > 285212703)
      {
        break;
      }

LABEL_118:
      if (v25 <= 31)
      {
        if (v25 > 7)
        {
          if (v25 == 8)
          {
            v26 = v24 | 0x1800;
            v27 = *&v10[v22];
            if (v27 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
          }

          if (v25 == 16)
          {
            v26 = v24 | 0x1C00;
            v27 = *&v10[v22];
            if (v27 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
          }
        }

        else
        {
          if (v25 == -1879048176)
          {
            v26 = v24 | 0x3000;
            v27 = *&v10[v22];
            if (v27 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
          }

          if (v25 == 4)
          {
            v26 = v24 | 0x1400;
            v27 = *&v10[v22];
            if (v27 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
          }
        }
      }

      else if (v25 <= 268435463)
      {
        if (v25 == 32)
        {
          v26 = v24 | 0x2000;
          v27 = *&v10[v22];
          if (v27 > 285212703)
          {
            goto LABEL_200;
          }

          goto LABEL_178;
        }

        if (v25 == 64)
        {
          v26 = v24 | 0x2400;
          v27 = *&v10[v22];
          if (v27 > 285212703)
          {
            goto LABEL_200;
          }

          goto LABEL_178;
        }
      }

      else
      {
        switch(v25)
        {
          case 268435464:
            v26 = v24 | 0x3C00;
            v27 = *&v10[v22];
            if (v27 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
          case 268435472:
            v26 = v24 | 0x2800;
            v27 = *&v10[v22];
            if (v27 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
          case 268435488:
            v26 = v24 | 0x2C00;
            v27 = *&v10[v22];
            if (v27 > 285212703)
            {
              goto LABEL_200;
            }

            goto LABEL_178;
        }
      }

LABEL_199:
      v26 = v24 | 0x4800;
      v27 = *&v10[v22];
      if (v27 > 285212703)
      {
        goto LABEL_200;
      }

      goto LABEL_178;
    default:
LABEL_148:
      v24 = 576;
      v25 = *&v9[v22];
      if (v25 > 285212703)
      {
        break;
      }

      goto LABEL_118;
  }

LABEL_149:
  if (v25 <= 536870915)
  {
    if (v25 > 301989895)
    {
      if (v25 == 301989896)
      {
        v26 = v24 | 0x4000;
        v27 = *&v10[v22];
        if (v27 <= 285212703)
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v25 != 335544328)
        {
          goto LABEL_199;
        }

        v26 = v24 | 0x4400;
        v27 = *&v10[v22];
        if (v27 <= 285212703)
        {
          goto LABEL_178;
        }
      }
    }

    else if (v25 == 285212704)
    {
      v26 = v24 | 0x3400;
      v27 = *&v10[v22];
      if (v27 <= 285212703)
      {
        goto LABEL_178;
      }
    }

    else
    {
      if (v25 != 285212736)
      {
        goto LABEL_199;
      }

      v26 = v24 | 0x3800;
      v27 = *&v10[v22];
      if (v27 <= 285212703)
      {
        goto LABEL_178;
      }
    }
  }

  else if (v25 <= 536870927)
  {
    if (v25 == 536870916)
    {
      v26 = v24;
      v27 = *&v10[v22];
      if (v27 > 285212703)
      {
        goto LABEL_200;
      }

      goto LABEL_178;
    }

    if (v25 != 536870920)
    {
      goto LABEL_199;
    }

    v26 = v24 | 0x400;
    v27 = *&v10[v22];
    if (v27 <= 285212703)
    {
      goto LABEL_178;
    }
  }

  else
  {
    switch(v25)
    {
      case 536870928:
        v26 = v24 | 0x800;
        v27 = *&v10[v22];
        if (v27 <= 285212703)
        {
          goto LABEL_178;
        }

        break;
      case 536870944:
        v26 = v24 | 0xC00;
        v27 = *&v10[v22];
        if (v27 <= 285212703)
        {
          goto LABEL_178;
        }

        break;
      case 536870976:
        v26 = v24 | 0x1000;
        v27 = *&v10[v22];
        if (v27 > 285212703)
        {
          break;
        }

LABEL_178:
        if (v27 <= 31)
        {
          if (v27 > 7)
          {
            if (v27 == 8)
            {
              v28 = 196608;
              goto LABEL_222;
            }

            if (v27 == 16)
            {
              v28 = 229376;
              goto LABEL_222;
            }
          }

          else
          {
            if (v27 == -1879048176)
            {
              v28 = 393216;
              goto LABEL_222;
            }

            if (v27 == 4)
            {
              v28 = 163840;
              goto LABEL_222;
            }
          }
        }

        else if (v27 <= 268435463)
        {
          if (v27 == 32)
          {
            v28 = 0x40000;
            goto LABEL_222;
          }

          if (v27 == 64)
          {
            v28 = 294912;
            goto LABEL_222;
          }
        }

        else
        {
          switch(v27)
          {
            case 268435464:
              v28 = 491520;
              goto LABEL_222;
            case 268435472:
              v28 = 327680;
              goto LABEL_222;
            case 268435488:
              v28 = 360448;
              goto LABEL_222;
          }
        }

        goto LABEL_221;
      default:
        goto LABEL_199;
    }
  }

LABEL_200:
  if (v27 <= 536870915)
  {
    if (v27 > 301989895)
    {
      if (v27 == 301989896)
      {
        v28 = 0x80000;
        goto LABEL_222;
      }

      if (v27 == 335544328)
      {
        v28 = 557056;
        goto LABEL_222;
      }
    }

    else
    {
      if (v27 == 285212704)
      {
        v28 = 425984;
        goto LABEL_222;
      }

      if (v27 == 285212736)
      {
        v28 = 458752;
        goto LABEL_222;
      }
    }
  }

  else if (v27 <= 536870927)
  {
    if (v27 == 536870916)
    {
      v28 = 0;
      goto LABEL_222;
    }

    if (v27 == 536870920)
    {
      v28 = 0x8000;
      goto LABEL_222;
    }
  }

  else
  {
    switch(v27)
    {
      case 536870928:
        v28 = 0x10000;
        goto LABEL_222;
      case 536870944:
        v28 = 98304;
        goto LABEL_222;
      case 536870976:
        v28 = 0x20000;
        goto LABEL_222;
    }
  }

LABEL_221:
  v28 = 589824;
LABEL_222:
  v29 = v26 | v28;
  v30 = *&v11[v22];
  v67 = v20;
  v68 = v10;
  v66 = v19;
  v64 = v21;
  if (v30 > 285212703)
  {
    if (v30 <= 536870915)
    {
      v31 = v12;
      v32 = v11;
      if (v30 > 301989895)
      {
        v33 = v8;
        if (v30 == 301989896)
        {
          v35 = v9;
          v36 = a2;
          v37 = 16;
          goto LABEL_266;
        }

        v34 = a2;
        if (v30 == 335544328)
        {
          v35 = v9;
          v36 = a2;
          v37 = 17;
          goto LABEL_266;
        }
      }

      else
      {
        v33 = v8;
        if (v30 == 285212704)
        {
          v35 = v9;
          v36 = a2;
          v37 = 13;
          goto LABEL_266;
        }

        v34 = a2;
        if (v30 == 285212736)
        {
          v35 = v9;
          v36 = a2;
          v37 = 14;
          goto LABEL_266;
        }
      }
    }

    else
    {
      v31 = v12;
      if (v30 <= 536870927)
      {
        v32 = v11;
        v33 = v8;
        if (v30 == 536870916)
        {
          v35 = v9;
          v36 = a2;
          v37 = 0;
          goto LABEL_266;
        }

        v34 = a2;
        if (v30 == 536870920)
        {
          v35 = v9;
          v36 = a2;
          v37 = 1;
          goto LABEL_266;
        }
      }

      else
      {
        v32 = v11;
        if (v30 == 536870928)
        {
          v33 = v8;
          v35 = v9;
          v36 = a2;
          v37 = 2;
          goto LABEL_266;
        }

        v33 = v8;
        if (v30 == 536870944)
        {
          v35 = v9;
          v36 = a2;
          v37 = 3;
          goto LABEL_266;
        }

        v34 = a2;
        if (v30 == 536870976)
        {
          v35 = v9;
          v36 = a2;
          v37 = 4;
          goto LABEL_266;
        }
      }
    }
  }

  else if (v30 <= 31)
  {
    v31 = v12;
    v32 = v11;
    if (v30 > 7)
    {
      v34 = a2;
      v33 = v8;
      if (v30 == 8)
      {
        v35 = v9;
        v36 = a2;
        v37 = 6;
        goto LABEL_266;
      }

      if (v30 == 16)
      {
        v35 = v9;
        v36 = a2;
        v37 = 7;
        goto LABEL_266;
      }
    }

    else
    {
      v33 = v8;
      if (v30 == -1879048176)
      {
        v35 = v9;
        v36 = a2;
        v37 = 12;
        goto LABEL_266;
      }

      v34 = a2;
      if (v30 == 4)
      {
        v35 = v9;
        v36 = a2;
        v37 = 5;
        goto LABEL_266;
      }
    }
  }

  else
  {
    v31 = v12;
    if (v30 <= 268435463)
    {
      v32 = v11;
      v33 = v8;
      if (v30 == 32)
      {
        v35 = v9;
        v36 = a2;
        v37 = 8;
        goto LABEL_266;
      }

      v34 = a2;
      if (v30 == 64)
      {
        v35 = v9;
        v36 = a2;
        v37 = 9;
        goto LABEL_266;
      }
    }

    else
    {
      v32 = v11;
      if (v30 == 268435464)
      {
        v33 = v8;
        v35 = v9;
        v36 = a2;
        v37 = 15;
        goto LABEL_266;
      }

      v33 = v8;
      if (v30 == 268435472)
      {
        v35 = v9;
        v36 = a2;
        v37 = 10;
        goto LABEL_266;
      }

      v34 = a2;
      if (v30 == 268435488)
      {
        v35 = v9;
        v36 = a2;
        v37 = 11;
        goto LABEL_266;
      }
    }
  }

  v35 = v9;
  v36 = v34;
  v37 = 18;
LABEL_266:
  v38 = v29 | v37;
  v39 = *(a1 + 144);
  *&v40 = -1;
  *(&v40 + 1) = -1;
  v77 = v40;
  v78 = v40;
  v76 = v40;
  v73 = v40;
  v74 = -1;
  v75 = v38 | (v39 << 16);
  v41 = &v32[*v31];
  v43 = *v41;
  v42 = *(v41 + 1);
  v72[0] = *v41;
  v72[1] = v42;
  v72[2] = 0;
  v72[3] = v58;
  v72[4] = v56;
  v72[5] = v54;
  v72[6] = v4;
  v72[7] = 0;
  v72[8] = v59;
  v72[9] = v57;
  v72[10] = v55;
  v72[11] = v53;
  v72[12] = 0;
  v72[13] = v39;
  v44 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v46 = [ComputeState threadExecutionWidth];
  if (v46 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = v46;
  }

  v48 = [ComputeState maxTotalThreadsPerThreadgroup];
  v49 = 256;
  if (v48 < 0x100)
  {
    v49 = v48;
  }

  v50 = v49 > 2 * v47;
  v51 = v49 / v47;
  if (v50)
  {
    v44 = v51;
  }

  [v36 setComputePipelineState:ComputeState];
  [v36 setBuffer:objc_msgSend(v33 offset:"buffer") atIndex:{v60 + v63, 0}];
  [v36 setBuffer:objc_msgSend(v35 offset:"buffer") atIndex:{v61 + v65, 1}];
  [v36 setBuffer:objc_msgSend(v68 offset:"buffer") atIndex:{v62 + v66, 2}];
  [v36 setBuffer:objc_msgSend(v32 offset:"buffer") atIndex:{v64 + v67, 3}];
  [v36 setBytes:v72 length:56 atIndex:4];
  v71[0] = (v43 + v47 - 1) / v47;
  v71[1] = (v42 + v44 - 1) / v44;
  v71[2] = 1;
  v70[0] = v47;
  v70[1] = v44;
  v70[2] = 1;
  [v36 dispatchThreadgroups:v71 threadsPerThreadgroup:v70];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArrayMathTernaryGradient(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v88 = *(a1 + *MEMORY[0x277CD7370]);
  v85 = *(a1 + 136);
  v6 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v7 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v8 = [*(a4 + 16) objectAtIndexedSubscript:2];
  v90 = v8;
  v13 = *(a4 + 208);
  v14 = *(a4 + 112);
  v15 = MEMORY[0x277CD7410];
  v16 = *MEMORY[0x277CD7410];
  v17 = *MEMORY[0x277CD7410];
  v18 = MEMORY[0x277CD73D8];
  if (*&v6[v17] == 1)
  {
    v78 = 0;
    if (*&v6[v16 + 4] != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v77 = 0;
    if (*&v7[v17] != 1)
    {
      goto LABEL_19;
    }

LABEL_16:
    HIDWORD(v76) = 0;
    v19 = v16;
    if (*&v7[v16 + 4] == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (*&v6[*MEMORY[0x277CD73D8]] == 1)
  {
    v78 = *&v6[*MEMORY[0x277CD7400]];
    if (*&v6[v16 + 4] != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!*&v6[*MEMORY[0x277CD73D8]])
  {
    LODWORD(v8) = [v6 dataType];
    v15 = MEMORY[0x277CD7410];
    v78 = v8 >> 3;
    v16 = *MEMORY[0x277CD7410];
    v17 = *MEMORY[0x277CD7410];
  }

  if (*&v6[v17 + 4] == 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (!v6[*v18 + 1])
  {
    LODWORD(v8) = [v6 dataType];
    v15 = MEMORY[0x277CD7410];
    v77 = v8 >> 3;
    v16 = *MEMORY[0x277CD7410];
    if (*&v7[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v6[*v18 + 1] != 1)
  {
    if (*&v7[v17] != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v77 = *&v6[*MEMORY[0x277CD7400]];
  if (*&v7[v17] == 1)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*&v7[*v18] == 1)
  {
    HIDWORD(v76) = *&v7[*MEMORY[0x277CD7400]];
    v19 = v16;
    if (*&v7[v16 + 4] == 1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!*&v7[*v18])
    {
      LODWORD(v8) = [v7 dataType];
      v15 = MEMORY[0x277CD7410];
      HIDWORD(v76) = v8 >> 3;
      v16 = *MEMORY[0x277CD7410];
    }

    v19 = v16;
    if (*&v7[v16 + 4] == 1)
    {
LABEL_23:
      LODWORD(v76) = 0;
      if (*&v90[v19] != 1)
      {
        goto LABEL_33;
      }

LABEL_31:
      LODWORD(v8) = 0;
      goto LABEL_37;
    }
  }

LABEL_26:
  if (!v7[*v18 + 1])
  {
    LODWORD(v8) = [v7 dataType];
    v15 = MEMORY[0x277CD7410];
    LODWORD(v76) = v8 >> 3;
    v16 = *MEMORY[0x277CD7410];
    if (*&v90[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v7[*v18 + 1] != 1)
  {
    if (*&v90[v19] != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  LODWORD(v76) = *&v7[*MEMORY[0x277CD7400]];
  if (*&v90[v19] == 1)
  {
    goto LABEL_31;
  }

LABEL_33:
  if (*&v90[*v18] == 1)
  {
    LODWORD(v8) = *&v90[*MEMORY[0x277CD7400]];
  }

  else if (!*&v90[*v18])
  {
    LOWORD(v8) = [v90 dataType];
    v15 = MEMORY[0x277CD7410];
    LODWORD(v8) = v8 >> 3;
    v16 = *MEMORY[0x277CD7410];
  }

LABEL_37:
  if (*&v90[v16 + 4] == 1)
  {
    v9 = 0;
    if (*&v13[v16] != 1)
    {
      goto LABEL_48;
    }

LABEL_45:
    v10 = 0;
    v21 = v16;
    if (*&v13[v16 + 4] == 1)
    {
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if (!v90[*v18 + 1])
  {
    v20 = v8;
    LOWORD(v8) = [v90 dataType];
    v15 = MEMORY[0x277CD7410];
    v9 = v8 >> 3;
    LODWORD(v8) = v20;
    v16 = *MEMORY[0x277CD7410];
    if (*&v13[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (v90[*v18 + 1] != 1)
  {
    if (*&v13[v16] != 1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v9 = *&v90[*MEMORY[0x277CD7400]];
  if (*&v13[v16] == 1)
  {
    goto LABEL_45;
  }

LABEL_48:
  if (*&v13[*v18] == 1)
  {
    v10 = *&v13[*MEMORY[0x277CD7400]];
    v21 = v16;
    if (*&v13[v16 + 4] == 1)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (!*&v13[*v18])
    {
      v22 = v8;
      v23 = v9;
      LOWORD(v8) = [v13 dataType];
      v9 = v23;
      v15 = MEMORY[0x277CD7410];
      v10 = v8 >> 3;
      LODWORD(v8) = v22;
      v16 = *MEMORY[0x277CD7410];
    }

    v21 = v16;
    if (*&v13[v16 + 4] == 1)
    {
LABEL_52:
      v11 = 0;
      if (*&v14[v21] != 1)
      {
        goto LABEL_63;
      }

LABEL_60:
      v12 = 0;
      if (*&v14[v16 + 4] == 1)
      {
        goto LABEL_70;
      }

      goto LABEL_67;
    }
  }

LABEL_55:
  if (!v13[*v18 + 1])
  {
    v24 = v8;
    v25 = v9;
    v26 = v10;
    LOWORD(v8) = [v13 dataType];
    v10 = v26;
    v9 = v25;
    v15 = MEMORY[0x277CD7410];
    v11 = v8 >> 3;
    LODWORD(v8) = v24;
    v16 = *MEMORY[0x277CD7410];
    if (*&v14[*MEMORY[0x277CD7410]] != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  if (v13[*v18 + 1] != 1)
  {
    if (*&v14[v21] != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v11 = *&v13[*MEMORY[0x277CD7400]];
  if (*&v14[v21] == 1)
  {
    goto LABEL_60;
  }

LABEL_63:
  if (*&v14[*v18] == 1)
  {
    v12 = *&v14[*MEMORY[0x277CD7400]];
    if (*&v14[v16 + 4] == 1)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  if (!*&v14[*v18])
  {
    v27 = v8;
    v28 = v14;
    v29 = v6;
    v30 = v7;
    v31 = v13;
    v32 = v14;
    v33 = v9;
    v34 = v10;
    v35 = v18;
    v36 = v11;
    LOWORD(v8) = [v28 dataType];
    v11 = v36;
    v18 = v35;
    v10 = v34;
    v9 = v33;
    v14 = v32;
    v13 = v31;
    v7 = v30;
    v6 = v29;
    v15 = MEMORY[0x277CD7410];
    v12 = v8 >> 3;
    LODWORD(v8) = v27;
    v16 = *MEMORY[0x277CD7410];
  }

  if (*&v14[v16 + 4] != 1)
  {
LABEL_67:
    if (!v14[*v18 + 1])
    {
      v37 = v8;
      v38 = v9;
      v39 = v10;
      v40 = v11;
      v41 = v12;
      [v14 dataType];
      v12 = v41;
      v11 = v40;
      v10 = v39;
      v9 = v38;
      LODWORD(v8) = v37;
      v15 = MEMORY[0x277CD7410];
    }
  }

LABEL_70:
  v42 = *(a4 + 8);
  v43 = v42[8];
  v44 = v42[18];
  v45 = v42[28];
  v46 = *MEMORY[0x277CD73C8];
  v47 = *&v6[v46];
  v80 = v44;
  if (v47 > 285212703)
  {
    if (v47 <= 536870915)
    {
      if (v47 > 301989895)
      {
        if (v47 == 301989896)
        {
          v48 = 512;
          v49 = *&v7[v46];
          v79 = v43;
          if (v49 <= 285212703)
          {
            goto LABEL_130;
          }
        }

        else
        {
          if (v47 != 335544328)
          {
            goto LABEL_160;
          }

          v48 = 544;
          v49 = *&v7[v46];
          v79 = v43;
          if (v49 <= 285212703)
          {
            goto LABEL_130;
          }
        }
      }

      else if (v47 == 285212704)
      {
        v48 = 416;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 <= 285212703)
        {
          goto LABEL_130;
        }
      }

      else
      {
        if (v47 != 285212736)
        {
          goto LABEL_160;
        }

        v48 = 448;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 <= 285212703)
        {
          goto LABEL_130;
        }
      }
    }

    else if (v47 <= 536870927)
    {
      if (v47 == 536870916)
      {
        v48 = 0;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 > 285212703)
        {
          goto LABEL_161;
        }

        goto LABEL_130;
      }

      if (v47 != 536870920)
      {
        goto LABEL_160;
      }

      v48 = 32;
      v49 = *&v7[v46];
      v79 = v43;
      if (v49 <= 285212703)
      {
        goto LABEL_130;
      }
    }

    else
    {
      switch(v47)
      {
        case 536870928:
          v48 = 64;
          v49 = *&v7[v46];
          v79 = v43;
          if (v49 <= 285212703)
          {
            goto LABEL_130;
          }

          break;
        case 536870944:
          v48 = 96;
          v49 = *&v7[v46];
          v79 = v43;
          if (v49 <= 285212703)
          {
            goto LABEL_130;
          }

          break;
        case 536870976:
          v48 = 128;
          v49 = *&v7[v46];
          v79 = v43;
          if (v49 <= 285212703)
          {
            goto LABEL_130;
          }

          break;
        default:
          goto LABEL_160;
      }
    }
  }

  else if (v47 <= 31)
  {
    if (v47 > 7)
    {
      if (v47 == 8)
      {
        v48 = 192;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 <= 285212703)
        {
          goto LABEL_130;
        }
      }

      else
      {
        if (v47 != 16)
        {
          goto LABEL_160;
        }

        v48 = 224;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 <= 285212703)
        {
          goto LABEL_130;
        }
      }
    }

    else if (v47 == -1879048176)
    {
      v48 = 384;
      v49 = *&v7[v46];
      v79 = v43;
      if (v49 <= 285212703)
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (v47 != 4)
      {
        goto LABEL_160;
      }

      v48 = 160;
      v49 = *&v7[v46];
      v79 = v43;
      if (v49 <= 285212703)
      {
        goto LABEL_130;
      }
    }
  }

  else if (v47 <= 268435463)
  {
    if (v47 == 32)
    {
      v48 = 256;
      v49 = *&v7[v46];
      v79 = v43;
      if (v49 <= 285212703)
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (v47 != 64)
      {
        goto LABEL_160;
      }

      v48 = 288;
      v49 = *&v7[v46];
      v79 = v43;
      if (v49 <= 285212703)
      {
        goto LABEL_130;
      }
    }
  }

  else
  {
    switch(v47)
    {
      case 268435464:
        v48 = 480;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 <= 285212703)
        {
          goto LABEL_130;
        }

        break;
      case 268435472:
        v48 = 320;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 <= 285212703)
        {
          goto LABEL_130;
        }

        break;
      case 268435488:
        v48 = 352;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 > 285212703)
        {
          break;
        }

LABEL_130:
        if (v49 <= 31)
        {
          if (v49 > 7)
          {
            if (v49 == 8)
            {
              v50 = 6144;
              v51 = *&v90[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
            }

            if (v49 == 16)
            {
              v50 = 7168;
              v51 = *&v90[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
            }
          }

          else
          {
            if (v49 == -1879048176)
            {
              v50 = 12288;
              v51 = *&v90[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
            }

            if (v49 == 4)
            {
              v50 = 5120;
              v51 = *&v90[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
            }
          }
        }

        else if (v49 <= 268435463)
        {
          if (v49 == 32)
          {
            v50 = 0x2000;
            v51 = *&v90[v46];
            if (v51 > 285212703)
            {
              goto LABEL_221;
            }

            goto LABEL_190;
          }

          if (v49 == 64)
          {
            v50 = 9216;
            v51 = *&v90[v46];
            if (v51 > 285212703)
            {
              goto LABEL_221;
            }

            goto LABEL_190;
          }
        }

        else
        {
          switch(v49)
          {
            case 268435464:
              v50 = 15360;
              v51 = *&v90[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
            case 268435472:
              v50 = 10240;
              v51 = *&v90[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
            case 268435488:
              v50 = 11264;
              v51 = *&v90[v46];
              if (v51 > 285212703)
              {
                goto LABEL_221;
              }

              goto LABEL_190;
          }
        }

LABEL_220:
        v50 = 18432;
        v51 = *&v90[v46];
        if (v51 > 285212703)
        {
          goto LABEL_221;
        }

        goto LABEL_190;
      default:
LABEL_160:
        v48 = 576;
        v49 = *&v7[v46];
        v79 = v43;
        if (v49 > 285212703)
        {
          break;
        }

        goto LABEL_130;
    }
  }

LABEL_161:
  if (v49 <= 536870915)
  {
    if (v49 > 301989895)
    {
      if (v49 == 301989896)
      {
        v50 = 0x4000;
        v51 = *&v90[v46];
        if (v51 <= 285212703)
        {
          goto LABEL_190;
        }
      }

      else
      {
        if (v49 != 335544328)
        {
          goto LABEL_220;
        }

        v50 = 17408;
        v51 = *&v90[v46];
        if (v51 <= 285212703)
        {
          goto LABEL_190;
        }
      }
    }

    else if (v49 == 285212704)
    {
      v50 = 13312;
      v51 = *&v90[v46];
      if (v51 <= 285212703)
      {
        goto LABEL_190;
      }
    }

    else
    {
      if (v49 != 285212736)
      {
        goto LABEL_220;
      }

      v50 = 14336;
      v51 = *&v90[v46];
      if (v51 <= 285212703)
      {
        goto LABEL_190;
      }
    }
  }

  else if (v49 <= 536870927)
  {
    if (v49 == 536870916)
    {
      v50 = 0;
      v51 = *&v90[v46];
      if (v51 > 285212703)
      {
        goto LABEL_221;
      }

      goto LABEL_190;
    }

    if (v49 != 536870920)
    {
      goto LABEL_220;
    }

    v50 = 1024;
    v51 = *&v90[v46];
    if (v51 <= 285212703)
    {
      goto LABEL_190;
    }
  }

  else
  {
    switch(v49)
    {
      case 536870928:
        v50 = 2048;
        v51 = *&v90[v46];
        if (v51 <= 285212703)
        {
          goto LABEL_190;
        }

        break;
      case 536870944:
        v50 = 3072;
        v51 = *&v90[v46];
        if (v51 <= 285212703)
        {
          goto LABEL_190;
        }

        break;
      case 536870976:
        v50 = 4096;
        v51 = *&v90[v46];
        if (v51 > 285212703)
        {
          break;
        }

LABEL_190:
        if (v51 <= 31)
        {
          if (v51 > 7)
          {
            if (v51 == 8)
            {
              v52 = 196608;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
            }

            if (v51 == 16)
            {
              v52 = 229376;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
            }
          }

          else
          {
            if (v51 == -1879048176)
            {
              v52 = 393216;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
            }

            if (v51 == 4)
            {
              v52 = 163840;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
            }
          }
        }

        else if (v51 <= 268435463)
        {
          if (v51 == 32)
          {
            v52 = 0x40000;
            v53 = *&v14[v46];
            if (v53 > 285212703)
            {
              goto LABEL_272;
            }

            goto LABEL_250;
          }

          if (v51 == 64)
          {
            v52 = 294912;
            v53 = *&v14[v46];
            if (v53 > 285212703)
            {
              goto LABEL_272;
            }

            goto LABEL_250;
          }
        }

        else
        {
          switch(v51)
          {
            case 268435464:
              v52 = 491520;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
            case 268435472:
              v52 = 327680;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
            case 268435488:
              v52 = 360448;
              v53 = *&v14[v46];
              if (v53 > 285212703)
              {
                goto LABEL_272;
              }

              goto LABEL_250;
          }
        }

LABEL_271:
        v52 = 589824;
        v53 = *&v14[v46];
        if (v53 > 285212703)
        {
          goto LABEL_272;
        }

        goto LABEL_250;
      default:
        goto LABEL_220;
    }
  }

LABEL_221:
  if (v51 <= 536870915)
  {
    if (v51 > 301989895)
    {
      if (v51 == 301989896)
      {
        v52 = 0x80000;
        v53 = *&v14[v46];
        if (v53 <= 285212703)
        {
          goto LABEL_250;
        }
      }

      else
      {
        if (v51 != 335544328)
        {
          goto LABEL_271;
        }

        v52 = 557056;
        v53 = *&v14[v46];
        if (v53 <= 285212703)
        {
          goto LABEL_250;
        }
      }
    }

    else if (v51 == 285212704)
    {
      v52 = 425984;
      v53 = *&v14[v46];
      if (v53 <= 285212703)
      {
        goto LABEL_250;
      }
    }

    else
    {
      if (v51 != 285212736)
      {
        goto LABEL_271;
      }

      v52 = 458752;
      v53 = *&v14[v46];
      if (v53 <= 285212703)
      {
        goto LABEL_250;
      }
    }
  }

  else if (v51 <= 536870927)
  {
    if (v51 == 536870916)
    {
      v52 = 0;
      v53 = *&v14[v46];
      if (v53 > 285212703)
      {
        goto LABEL_272;
      }

      goto LABEL_250;
    }

    if (v51 != 536870920)
    {
      goto LABEL_271;
    }

    v52 = 0x8000;
    v53 = *&v14[v46];
    if (v53 <= 285212703)
    {
      goto LABEL_250;
    }
  }

  else
  {
    switch(v51)
    {
      case 536870928:
        v52 = 0x10000;
        v53 = *&v14[v46];
        if (v53 <= 285212703)
        {
          goto LABEL_250;
        }

        break;
      case 536870944:
        v52 = 98304;
        v53 = *&v14[v46];
        if (v53 <= 285212703)
        {
          goto LABEL_250;
        }

        break;
      case 536870976:
        v52 = 0x20000;
        v53 = *&v14[v46];
        if (v53 > 285212703)
        {
          break;
        }

LABEL_250:
        if (v53 <= 31)
        {
          if (v53 > 7)
          {
            if (v53 == 8)
            {
              v54 = 6291456;
              goto LABEL_294;
            }

            if (v53 == 16)
            {
              v54 = 7340032;
              goto LABEL_294;
            }
          }

          else
          {
            if (v53 == -1879048176)
            {
              v54 = 12582912;
              goto LABEL_294;
            }

            if (v53 == 4)
            {
              v54 = 5242880;
              goto LABEL_294;
            }
          }
        }

        else if (v53 <= 268435463)
        {
          if (v53 == 32)
          {
            v54 = 0x800000;
            goto LABEL_294;
          }

          if (v53 == 64)
          {
            v54 = 9437184;
            goto LABEL_294;
          }
        }

        else
        {
          switch(v53)
          {
            case 268435464:
              v54 = 15728640;
              goto LABEL_294;
            case 268435472:
              v54 = 10485760;
              goto LABEL_294;
            case 268435488:
              v54 = 11534336;
              goto LABEL_294;
          }
        }

        goto LABEL_293;
      default:
        goto LABEL_271;
    }
  }

LABEL_272:
  if (v53 <= 536870915)
  {
    if (v53 > 301989895)
    {
      if (v53 == 301989896)
      {
        v54 = 0x1000000;
        goto LABEL_294;
      }

      if (v53 == 335544328)
      {
        v54 = 17825792;
        goto LABEL_294;
      }
    }

    else
    {
      if (v53 == 285212704)
      {
        v54 = 13631488;
        goto LABEL_294;
      }

      if (v53 == 285212736)
      {
        v54 = 14680064;
        goto LABEL_294;
      }
    }
  }

  else if (v53 <= 536870927)
  {
    if (v53 == 536870916)
    {
      v54 = 0;
      goto LABEL_294;
    }

    if (v53 == 536870920)
    {
      v54 = 0x100000;
      goto LABEL_294;
    }
  }

  else
  {
    switch(v53)
    {
      case 536870928:
        v54 = 0x200000;
        goto LABEL_294;
      case 536870944:
        v54 = 3145728;
        goto LABEL_294;
      case 536870976:
        v54 = 0x400000;
        goto LABEL_294;
    }
  }

LABEL_293:
  v54 = 18874368;
LABEL_294:
  v55 = *&v13[v46];
  v86 = v7;
  v83 = *(a4 + 96);
  v84 = *(a4 + 192);
  v82 = v45;
  if (v55 > 285212703)
  {
    if (v55 <= 536870915)
    {
      if (v55 > 301989895)
      {
        v56 = a2;
        v57 = v13;
        if (v55 == 301989896)
        {
          v59 = v90;
          v60 = 16;
          v58 = a5;
          goto LABEL_338;
        }

        v58 = a5;
        if (v55 == 335544328)
        {
          v59 = v90;
          v60 = 17;
          goto LABEL_338;
        }
      }

      else
      {
        v56 = a2;
        v57 = v13;
        if (v55 == 285212704)
        {
          v59 = v90;
          v60 = 13;
          v58 = a5;
          goto LABEL_338;
        }

        v58 = a5;
        if (v55 == 285212736)
        {
          v59 = v90;
          v60 = 14;
          goto LABEL_338;
        }
      }
    }

    else if (v55 <= 536870927)
    {
      v56 = a2;
      v57 = v13;
      if (v55 == 536870916)
      {
        v59 = v90;
        v60 = 0;
        v58 = a5;
        goto LABEL_338;
      }

      v58 = a5;
      if (v55 == 536870920)
      {
        v59 = v90;
        v60 = 1;
        goto LABEL_338;
      }
    }

    else
    {
      if (v55 == 536870928)
      {
        v56 = a2;
        v57 = v13;
        v59 = v90;
        v60 = 2;
        v58 = a5;
        goto LABEL_338;
      }

      v56 = a2;
      v57 = v13;
      if (v55 == 536870944)
      {
        v59 = v90;
        v60 = 3;
        v58 = a5;
        goto LABEL_338;
      }

      v58 = a5;
      if (v55 == 536870976)
      {
        v59 = v90;
        v60 = 4;
        goto LABEL_338;
      }
    }
  }

  else if (v55 <= 31)
  {
    if (v55 > 7)
    {
      v56 = a2;
      v58 = a5;
      v57 = v13;
      if (v55 == 8)
      {
        v59 = v90;
        v60 = 6;
        goto LABEL_338;
      }

      if (v55 == 16)
      {
        v59 = v90;
        v60 = 7;
        goto LABEL_338;
      }
    }

    else
    {
      v56 = a2;
      v57 = v13;
      if (v55 == -1879048176)
      {
        v59 = v90;
        v60 = 12;
        v58 = a5;
        goto LABEL_338;
      }

      v58 = a5;
      if (v55 == 4)
      {
        v59 = v90;
        v60 = 5;
        goto LABEL_338;
      }
    }
  }

  else if (v55 <= 268435463)
  {
    v56 = a2;
    v58 = a5;
    v57 = v13;
    if (v55 == 32)
    {
      v59 = v90;
      v60 = 8;
      goto LABEL_338;
    }

    if (v55 == 64)
    {
      v59 = v90;
      v60 = 9;
      goto LABEL_338;
    }
  }

  else
  {
    if (v55 == 268435464)
    {
      v56 = a2;
      v57 = v13;
      v59 = v90;
      v60 = 15;
      v58 = a5;
      goto LABEL_338;
    }

    v56 = a2;
    v57 = v13;
    if (v55 == 268435472)
    {
      v59 = v90;
      v60 = 10;
      v58 = a5;
      goto LABEL_338;
    }

    v58 = a5;
    if (v55 == 268435488)
    {
      v59 = v90;
      v60 = 11;
      goto LABEL_338;
    }
  }

  v59 = v90;
  v60 = 18;
LABEL_338:
  v61 = *(a1 + 144);
  v62 = 0x2000000;
  *&v63 = -1;
  *(&v63 + 1) = -1;
  v98 = v63;
  v99 = v63;
  if (!v58)
  {
    v62 = 0;
  }

  v97 = v63;
  v94 = v63;
  v95 = v63;
  v96 = v48 | v50 | v52 | v62 | v54 | v60 | (v61 << 16);
  v64 = &v57[*v15];
  v66 = *v64;
  v65 = *(v64 + 1);
  v93[0] = *v64;
  v93[1] = v65;
  v93[2] = v85;
  v93[3] = v77;
  v93[4] = v76;
  v93[5] = v9;
  v93[6] = v11;
  v93[7] = v11;
  v93[8] = v78;
  v93[9] = HIDWORD(v76);
  v93[10] = v8;
  v93[11] = v10;
  v93[12] = v12;
  v93[13] = v61;
  v67 = 1;
  ComputeState = MPSLibrary::GetComputeState();
  v69 = [ComputeState threadExecutionWidth];
  if (v69 <= 1)
  {
    v70 = 1;
  }

  else
  {
    v70 = v69;
  }

  v71 = [ComputeState maxTotalThreadsPerThreadgroup];
  v72 = 256;
  if (v71 < 0x100)
  {
    v72 = v71;
  }

  v73 = v72 > 2 * v70;
  v74 = v72 / v70;
  if (v73)
  {
    v67 = v74;
  }

  [v56 setComputePipelineState:ComputeState];
  [v56 setBuffer:objc_msgSend(v6 offset:"buffer") atIndex:{v79, 0}];
  [v56 setBuffer:objc_msgSend(v86 offset:"buffer") atIndex:{v80, 1}];
  [v56 setBuffer:objc_msgSend(v59 offset:"buffer") atIndex:{v82, 2}];
  [v56 setBuffer:objc_msgSend(v14 offset:"buffer") atIndex:{v83, 3}];
  [v56 setBuffer:objc_msgSend(v57 offset:"buffer") atIndex:{v84, 4}];
  [v56 setBytes:v93 length:56 atIndex:5];
  v92[0] = (v66 + v70 - 1) / v70;
  v92[1] = (v65 + v67 - 1) / v67;
  v92[2] = 1;
  v91[0] = v70;
  v91[1] = v67;
  v91[2] = 1;
  [v56 dispatchThreadgroups:v92 threadsPerThreadgroup:v91];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeGatherND(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;
  v355 = v10;
  v11 = v7;
  v12 = *&v7[*MEMORY[0x277CD7370]];
  v13 = *(v7 + 11);
  v14 = [v7 batchDimensions];
  v403 = [v11 allowNegativeIndices];
  [*(v9 + 16) count];
  if ([*(v9 + 16) count] != v13 && MTLReportFailureTypeEnabled())
  {
    v343 = v13;
    v346 = [*(v9 + 16) count];
    MTLReportFailure();
  }

  v15 = [*(v9 + 232) inputTensorAtIndex:{0, v343, v346}];
  v16 = [*(v9 + 232) inputTensorAtIndex:1];
  v17 = [*(v9 + 232) outputTensorAtIndex:0];
  v18 = [*(v9 + 16) objectAtIndexedSubscript:0];
  v19 = [*(v9 + 16) objectAtIndexedSubscript:1];
  v20 = **(v16 + 16);
  if (*(*(v16 + 16) + 8) == v20)
  {
    goto LABEL_262;
  }

  v21 = v19;
  v396 = v11;
  v353 = *(v9 + 208);
  v22 = *v16;
  v23 = *v15;
  v401 = *v20;
  v394 = *v17;
  v399 = *v17 - v14;
  if ((*v17 < v14 || v22 <= v14 || v23 <= v14) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v405 = v23;
  v408 = v22;
  v24 = v15[2];
  v26 = *v24;
  v25 = v24[1];
  v354 = v9;
  v356 = v15;
  if (v25 != v26)
  {
    if (((v25 - v26) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_263;
  }

  v27 = v17[2];
  v29 = *v27;
  v28 = v27[1];
  v359 = v17;
  v413 = v14;
  if (v28 != v29)
  {
    if (((v28 - v29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v30 = *(v16 + 16);
  v32 = *v30;
  v31 = v30[1];
  if (v31 != v32)
  {
    if (((v31 - v32) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v14)
  {
    v33 = v14 - 1;
    v34 = (8 * v408 - 8);
    v35 = (8 * v405 - 8);
    v36 = (8 * v394 - 8);
    do
    {
      v39 = *v36--;
      v38 = v39;
      v41 = *v35--;
      v40 = v41;
      v42 = v41 == v38 || v40 == 1;
      if (!v42 || (*v34 != v38 ? (v37 = *v34 == 1) : (v37 = 1), !v37))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v344 = v33;
          MTLReportFailure();
        }
      }

      --v33;
      --v34;
    }

    while (v33 != -1);
  }

  v43 = v405 - v14;
  if (v405 - v14 < v401 && MTLReportFailureTypeEnabled())
  {
    v344 = v405 - v14;
    v347 = v401;
    MTLReportFailure();
  }

  v44 = v408 + ~v14;
  if (v399 != v43 + v44 - v401 && MTLReportFailureTypeEnabled())
  {
    v347 = v408 + ~v14;
    v349 = v405 - v14 - v401;
    v344 = v399;
    MTLReportFailure();
  }

  v45 = v43 - v401;
  if (v43 != v401)
  {
    v51 = 0;
    if (v45 <= 1)
    {
      v52 = 1;
    }

    else
    {
      v52 = v43 - v401;
    }

    do
    {
      if (*(8 * v51) != 1)
      {
        *(8 * v51);
        *(8 * v51);
      }

      ++v51;
    }

    while (v52 != v51);
  }

  if (v44)
  {
    v46 = 0;
    do
    {
      v47 = v46 + 1;
      v48 = *(8 * v46 + 8);
      if (*(8 * v45 + 8 * v46) != v48 && v48 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v349 = v46 + 1;
          v351 = *(8 * v46 + 8);
          v344 = v45 + v46;
          v347 = *(8 * v45 + 8 * v46);
          MTLReportFailure();
        }
      }

      ++v46;
    }

    while (v44 != v47);
    operator delete(0);
  }

  v53 = **(v16 + 16);
  if (*(*(v16 + 16) + 8) == v53)
  {
LABEL_262:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v54 = *v356;
  __p = *v16;
  v409 = *v53;
  v55 = v413 + *v53;
  v56 = *(v356 + 2);
  if (v56 > 285212703)
  {
    if (v56 <= 536870915)
    {
      if (v56 > 301989895)
      {
        if (v56 == 301989896)
        {
          v57 = 512;
          v58 = v54 - v55;
          v59 = *(v16 + 8);
          if (v59 <= 285212703)
          {
            goto LABEL_111;
          }
        }

        else
        {
          if (v56 != 335544328)
          {
            goto LABEL_132;
          }

          v57 = 544;
          v58 = v54 - v55;
          v59 = *(v16 + 8);
          if (v59 <= 285212703)
          {
            goto LABEL_111;
          }
        }
      }

      else if (v56 == 285212704)
      {
        v57 = 416;
        v58 = v54 - v55;
        v59 = *(v16 + 8);
        if (v59 <= 285212703)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if (v56 != 285212736)
        {
          goto LABEL_132;
        }

        v57 = 448;
        v58 = v54 - v55;
        v59 = *(v16 + 8);
        if (v59 <= 285212703)
        {
          goto LABEL_111;
        }
      }
    }

    else if (v56 <= 536870927)
    {
      if (v56 == 536870916)
      {
        v57 = 0;
        v58 = v54 - v55;
        v59 = *(v16 + 8);
        if (v59 > 285212703)
        {
          goto LABEL_133;
        }

        goto LABEL_111;
      }

      if (v56 != 536870920)
      {
        goto LABEL_132;
      }

      v57 = 32;
      v58 = v54 - v55;
      v59 = *(v16 + 8);
      if (v59 <= 285212703)
      {
        goto LABEL_111;
      }
    }

    else
    {
      switch(v56)
      {
        case 536870928:
          v57 = 64;
          v58 = v54 - v55;
          v59 = *(v16 + 8);
          if (v59 <= 285212703)
          {
            goto LABEL_111;
          }

          break;
        case 536870944:
          v57 = 96;
          v58 = v54 - v55;
          v59 = *(v16 + 8);
          if (v59 <= 285212703)
          {
            goto LABEL_111;
          }

          break;
        case 536870976:
          v57 = 128;
          v58 = v54 - v55;
          v59 = *(v16 + 8);
          if (v59 <= 285212703)
          {
            goto LABEL_111;
          }

          break;
        default:
          goto LABEL_132;
      }
    }
  }

  else if (v56 <= 31)
  {
    if (v56 > 7)
    {
      if (v56 == 8)
      {
        v57 = 192;
        v58 = v54 - v55;
        v59 = *(v16 + 8);
        if (v59 <= 285212703)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if (v56 != 16)
        {
          goto LABEL_132;
        }

        v57 = 224;
        v58 = v54 - v55;
        v59 = *(v16 + 8);
        if (v59 <= 285212703)
        {
          goto LABEL_111;
        }
      }
    }

    else if (v56 == -1879048176)
    {
      v57 = 384;
      v58 = v54 - v55;
      v59 = *(v16 + 8);
      if (v59 <= 285212703)
      {
        goto LABEL_111;
      }
    }

    else
    {
      if (v56 != 4)
      {
        goto LABEL_132;
      }

      v57 = 160;
      v58 = v54 - v55;
      v59 = *(v16 + 8);
      if (v59 <= 285212703)
      {
        goto LABEL_111;
      }
    }
  }

  else if (v56 <= 268435463)
  {
    if (v56 == 32)
    {
      v57 = 256;
      v58 = v54 - v55;
      v59 = *(v16 + 8);
      if (v59 <= 285212703)
      {
        goto LABEL_111;
      }
    }

    else
    {
      if (v56 != 64)
      {
        goto LABEL_132;
      }

      v57 = 288;
      v58 = v54 - v55;
      v59 = *(v16 + 8);
      if (v59 <= 285212703)
      {
        goto LABEL_111;
      }
    }
  }

  else
  {
    switch(v56)
    {
      case 268435464:
        v57 = 480;
        v58 = v54 - v55;
        v59 = *(v16 + 8);
        if (v59 <= 285212703)
        {
          goto LABEL_111;
        }

        break;
      case 268435472:
        v57 = 320;
        v58 = v54 - v55;
        v59 = *(v16 + 8);
        if (v59 <= 285212703)
        {
          goto LABEL_111;
        }

        break;
      case 268435488:
        v57 = 352;
        v58 = v54 - v55;
        v59 = *(v16 + 8);
        if (v59 > 285212703)
        {
          break;
        }

LABEL_111:
        if (v59 <= 31)
        {
          if (v59 > 7)
          {
            if (v59 == 8)
            {
              v60 = 6144;
              goto LABEL_155;
            }

            if (v59 == 16)
            {
              v60 = 7168;
              goto LABEL_155;
            }
          }

          else
          {
            if (v59 == -1879048176)
            {
              v60 = 12288;
              goto LABEL_155;
            }

            if (v59 == 4)
            {
              v60 = 5120;
              goto LABEL_155;
            }
          }
        }

        else if (v59 <= 268435463)
        {
          if (v59 == 32)
          {
            v60 = 0x2000;
            goto LABEL_155;
          }

          if (v59 == 64)
          {
            v60 = 9216;
            goto LABEL_155;
          }
        }

        else
        {
          switch(v59)
          {
            case 268435464:
              v60 = 15360;
              goto LABEL_155;
            case 268435472:
              v60 = 10240;
              goto LABEL_155;
            case 268435488:
              v60 = 11264;
              goto LABEL_155;
          }
        }

        goto LABEL_154;
      default:
LABEL_132:
        v57 = 576;
        v58 = v54 - v55;
        v59 = *(v16 + 8);
        if (v59 > 285212703)
        {
          break;
        }

        goto LABEL_111;
    }
  }

LABEL_133:
  if (v59 <= 536870915)
  {
    if (v59 > 301989895)
    {
      if (v59 == 301989896)
      {
        v60 = 0x4000;
        goto LABEL_155;
      }

      if (v59 == 335544328)
      {
        v60 = 17408;
        goto LABEL_155;
      }
    }

    else
    {
      if (v59 == 285212704)
      {
        v60 = 13312;
        goto LABEL_155;
      }

      if (v59 == 285212736)
      {
        v60 = 14336;
        goto LABEL_155;
      }
    }
  }

  else if (v59 <= 536870927)
  {
    if (v59 == 536870916)
    {
      v60 = 0;
      goto LABEL_155;
    }

    if (v59 == 536870920)
    {
      v60 = 1024;
      goto LABEL_155;
    }
  }

  else
  {
    switch(v59)
    {
      case 536870928:
        v60 = 2048;
        goto LABEL_155;
      case 536870944:
        v60 = 3072;
        goto LABEL_155;
      case 536870976:
        v60 = 4096;
        goto LABEL_155;
    }
  }

LABEL_154:
  v60 = 18432;
LABEL_155:
  v61 = v60 | v57;
  v62 = *(v359 + 2);
  v406 = *v359;
  if (v62 > 285212703)
  {
    if (v62 <= 536870915)
    {
      if (v62 > 301989895)
      {
        if (v62 == 301989896)
        {
          v63 = 16;
          goto LABEL_199;
        }

        if (v62 == 335544328)
        {
          v63 = 17;
          goto LABEL_199;
        }
      }

      else
      {
        if (v62 == 285212704)
        {
          v63 = 13;
          goto LABEL_199;
        }

        if (v62 == 285212736)
        {
          v63 = 14;
          goto LABEL_199;
        }
      }
    }

    else if (v62 <= 536870927)
    {
      if (v62 == 536870916)
      {
        v63 = 0;
        goto LABEL_199;
      }

      if (v62 == 536870920)
      {
        v63 = 1;
        goto LABEL_199;
      }
    }

    else
    {
      switch(v62)
      {
        case 536870928:
          v63 = 2;
          goto LABEL_199;
        case 536870944:
          v63 = 3;
          goto LABEL_199;
        case 536870976:
          v63 = 4;
          goto LABEL_199;
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
        goto LABEL_199;
      }

      if (v62 == 16)
      {
        v63 = 7;
        goto LABEL_199;
      }
    }

    else
    {
      if (v62 == -1879048176)
      {
        v63 = 12;
        goto LABEL_199;
      }

      if (v62 == 4)
      {
        v63 = 5;
        goto LABEL_199;
      }
    }
  }

  else if (v62 <= 268435463)
  {
    if (v62 == 32)
    {
      v63 = 8;
      goto LABEL_199;
    }

    if (v62 == 64)
    {
      v63 = 9;
      goto LABEL_199;
    }
  }

  else
  {
    switch(v62)
    {
      case 268435464:
        v63 = 15;
        goto LABEL_199;
      case 268435472:
        v63 = 10;
        goto LABEL_199;
      case 268435488:
        v63 = 11;
        goto LABEL_199;
    }
  }

  v63 = 18;
LABEL_199:
  *&v64 = -1;
  *(&v64 + 1) = -1;
  v552 = v64;
  v551 = v64;
  v550 = v64;
  v548 = -1;
  v547 = v64;
  v549 = v61 | v63;
  v65 = [*(v354 + 16) count] | 0x10000;
  v66 = 16;
  if (!v403)
  {
    v66 = 0;
  }

  v67 = v58;
  v68 = MEMORY[0x277CD7370];
  v69 = *&v396[*MEMORY[0x277CD7370]];
  *&v552 = v65;
  v548 = v58 | v66;
  v348 = *&v396[*MEMORY[0x277CD7360]];
  v350 = *&v396[*MEMORY[0x277CD7368]];
  v345 = *(v354 + 232);
  MPSLibrary::CreateUberShaderKey();
  v70 = *&v396[*v68];
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v72 = PipelineStateForMPSKey;
  v352 = [PipelineStateForMPSKey threadExecutionWidth];
  [v355 setComputePipelineState:v72];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v355, v354, 4, 0, 0);
  v74 = v359[2];
  v75 = v74[1];
  if (v75 != *v74)
  {
    if (((v75 - *v74) & 0x8000000000000000) == 0)
    {
      v76 = v75 - *v74;
      operator new();
    }

LABEL_263:
    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v78 = *(v16 + 16);
  v80 = *v78;
  v79 = v78[1];
  if (v79 != v80)
  {
    if (((v79 - v80) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v361 = 0u;
  v362 = 0u;
  v360 = 0u;
  v81 = v413;
  if (__p < v413)
  {
    v84 = xmmword_239B0A0D0;
  }

  else
  {
    v82 = (8 * (__p + v54) - 8 * v409 - 16 * v413 - 8);
    v83 = __p - v413;
    v84 = xmmword_239B0A0D0;
    do
    {
      while (1)
      {
        v537[0] = v84;
        v73 = v84;
        v537[1] = v362;
        v537[2] = v360;
        v537[3] = v361;
        if (*(v537 + (v83 & 0xF)) != 1)
        {
          break;
        }

        v85 = *v82;
        v82 += 2;
        v533 = v84;
        v534 = v362;
        v535 = v360;
        v536 = v361;
        *(&v533 + (v83 & 0xF)) = v85;
        v73 = v536;
        v360 = v535;
        v361 = v536;
        v362 = v534;
        v84 = v533;
        ++v83;
        if (!--v81)
        {
          goto LABEL_216;
        }
      }

      ++v83;
      v82 += 2;
      --v81;
    }

    while (v81);
  }

LABEL_216:
  v358 = v84;
  v86 = 0;
  memset(v546, 0, sizeof(v546));
  memset(v545, 0, sizeof(v545));
  v539[0] = v406;
  v539[1] = __p;
  v539[2] = v409;
  v539[3] = v54;
  LODWORD(v73) = 1;
  v357 = v73;
  v539[4] = v413;
  v539[5] = v67;
  v540 = 0u;
  LOWORD(v540) = __p - v413 - 1;
  memset(v544, 0, sizeof(v544));
  memset(v543, 0, sizeof(v543));
  memset(v542, 0, sizeof(v542));
  memset(v541, 0, sizeof(v541));
  *(&v540 + 4) = 0x100000001;
  v87 = v356;
  do
  {
    makeStrideBytes();
    v121 = &v18[*MEMORY[0x277CD73D0]];
    v122.i64[0] = 0x100000001;
    v122.i64[1] = 0x100000001;
    v123 = vceqq_s32(*v121, v122);
    v124.i64[0] = v123.i32[0];
    v124.i64[1] = v123.i32[1];
    v125 = v124;
    v126 = vceqq_s32(v121[1], v122);
    v124.i64[0] = v126.i32[0];
    v124.i64[1] = v126.i32[1];
    v127 = v124;
    v128 = vceqq_s32(v121[2], v122);
    v124.i64[0] = v128.i32[0];
    v124.i64[1] = v128.i32[1];
    v129 = v124;
    v130 = vceqq_s32(v121[3], v122);
    v124.i64[0] = v130.i32[0];
    v124.i64[1] = v130.i32[1];
    v131 = v124;
    v124.i64[0] = v123.i32[2];
    v124.i64[1] = v123.i32[3];
    v132 = v124;
    v124.i64[0] = v126.i32[2];
    v124.i64[1] = v126.i32[3];
    v133 = v124;
    v124.i64[0] = v128.i32[2];
    v124.i64[1] = v128.i32[3];
    v134 = v124;
    v124.i64[0] = v130.i32[2];
    v124.i64[1] = v130.i32[3];
    v135 = vbicq_s8(v560, v124);
    v136 = vbicq_s8(v558, v134);
    v137 = vbicq_s8(v556, v133);
    v138 = vbicq_s8(v554, v132);
    v139 = vbicq_s8(v559, v131);
    v140 = vbicq_s8(v557, v129);
    v141 = vbicq_s8(v555, v127);
    v142 = *&v18[*MEMORY[0x277CD73C8]];
    v143 = *&v18[*MEMORY[0x277CD73D8]];
    v144 = BYTE1(*&v18[*MEMORY[0x277CD73D8]]);
    v145 = BYTE2(*&v18[*MEMORY[0x277CD73D8]]);
    v146 = BYTE3(*&v18[*MEMORY[0x277CD73D8]]);
    v147 = BYTE4(*&v18[*MEMORY[0x277CD73D8]]);
    v148 = WORD2(*&v18[*MEMORY[0x277CD73D8]]) >> 8;
    v149 = BYTE6(*&v18[*MEMORY[0x277CD73D8]]);
    v150 = HIBYTE(*&v18[*MEMORY[0x277CD73D8]]);
    v151 = *&v18[*MEMORY[0x277CD73D8] + 8];
    v152 = BYTE1(*&v18[*MEMORY[0x277CD73D8] + 8]);
    v153 = BYTE2(*&v18[*MEMORY[0x277CD73D8] + 8]);
    v154 = BYTE3(*&v18[*MEMORY[0x277CD73D8] + 8]);
    v155 = BYTE12(*&v18[*MEMORY[0x277CD73D8]]);
    v156 = WORD6(*&v18[*MEMORY[0x277CD73D8]]) >> 8;
    v157 = vbicq_s8(v553, v125);
    v158 = BYTE14(*&v18[*MEMORY[0x277CD73D8]]);
    v159 = HIBYTE(*&v18[*MEMORY[0x277CD73D8]]);
    if ((v142 & 0xFFF8) != 0)
    {
      v160 = v142 >> 3;
      v532[0] = v157;
      v532[1] = v138;
      v532[2] = v141;
      v532[3] = v137;
      v532[4] = v140;
      v532[5] = v136;
      v532[6] = v139;
      v532[7] = v135;
      v161 = *(v532 + (v143 & 0xF));
      v531[0] = v157;
      v531[1] = v138;
      v531[2] = v141;
      v531[3] = v137;
      v531[4] = v140;
      v531[5] = v136;
      v531[6] = v139;
      v531[7] = v135;
      v162 = *(v531 + (v144 & 0xF));
      v163 = v145 & 0xF;
      v530[0] = v157;
      v530[1] = v138;
      v530[2] = v141;
      v530[3] = v137;
      v530[4] = v140;
      v530[5] = v136;
      v530[6] = v139;
      v530[7] = v135;
      v164 = v153 & 0xF;
      v165 = *(v530 + v163);
      v166 = v154 & 0xF;
      v167 = v155 & 0xF;
      v168 = v156 & 0xF;
      v169 = v158 & 0xF;
      v529[0] = v157;
      v529[1] = v138;
      v529[2] = v141;
      v529[3] = v137;
      v529[4] = v140;
      v529[5] = v136;
      v529[6] = v139;
      v529[7] = v135;
      v170 = *(v529 + (v146 & 0xF));
      v528[0] = v157;
      v528[1] = v138;
      v528[2] = v141;
      v528[3] = v137;
      v528[4] = v140;
      v528[5] = v136;
      v528[6] = v139;
      v528[7] = v135;
      v171 = *(v528 + (v147 & 0xF));
      v527[0] = v157;
      v527[1] = v138;
      v527[2] = v141;
      v527[3] = v137;
      v527[4] = v140;
      v527[5] = v136;
      v527[6] = v139;
      v527[7] = v135;
      v172 = *(v527 + (v148 & 0xF));
      v526[0] = v157;
      v526[1] = v138;
      v526[2] = v141;
      v526[3] = v137;
      v526[4] = v140;
      v526[5] = v136;
      v526[6] = v139;
      v526[7] = v135;
      v173 = *(v526 + (v149 & 0xF));
      v525[0] = v157;
      v525[1] = v138;
      v525[2] = v141;
      v525[3] = v137;
      v525[4] = v140;
      v525[5] = v136;
      v525[6] = v139;
      v525[7] = v135;
      v174 = *(v525 + (v150 & 0xF));
      v524[0] = v157;
      v524[1] = v138;
      v524[2] = v141;
      v524[3] = v137;
      v524[4] = v140;
      v524[5] = v136;
      v524[6] = v139;
      v524[7] = v135;
      v175 = *(v524 + (v151 & 0xF));
      v523[0] = v157;
      v523[1] = v138;
      v523[2] = v141;
      v523[3] = v137;
      v523[4] = v140;
      v523[5] = v136;
      v523[6] = v139;
      v523[7] = v135;
      v176 = *(v523 + (v152 & 0xF));
      v522[0] = v157;
      v522[1] = v138;
      v522[2] = v141;
      v522[3] = v137;
      v522[4] = v140;
      v522[5] = v136;
      v522[6] = v139;
      v522[7] = v135;
      v177 = *(v522 + v164);
      v521[0] = v157;
      v521[1] = v138;
      v521[2] = v141;
      v521[3] = v137;
      v521[4] = v140;
      v521[5] = v136;
      v521[6] = v139;
      v521[7] = v135;
      v178 = *(v521 + v166);
      v520[0] = v157;
      v520[1] = v138;
      v520[2] = v141;
      v520[3] = v137;
      v520[4] = v140;
      v520[5] = v136;
      v520[6] = v139;
      v520[7] = v135;
      v179 = *(v520 + v167);
      v519[0] = v157;
      v519[1] = v138;
      v519[2] = v141;
      v519[3] = v137;
      v519[4] = v140;
      v519[5] = v136;
      v519[6] = v139;
      v519[7] = v135;
      v180 = *(v519 + v168);
      v518[0] = v157;
      v518[1] = v138;
      v518[2] = v141;
      v518[3] = v137;
      v518[4] = v140;
      v518[5] = v136;
      v518[6] = v139;
      v518[7] = v135;
      *&v181 = *(v518 + v169) / v160;
      *&v182 = v179 / v160;
      *&v183 = v177 / v160;
      v517[0] = v157;
      v517[1] = v138;
      v517[2] = v141;
      v517[3] = v137;
      v517[4] = v140;
      v517[5] = v136;
      v517[6] = v139;
      v517[7] = v135;
      *(&v181 + 1) = *(v517 + (v159 & 0xF)) / v160;
      *(&v182 + 1) = v180 / v160;
      v410 = v182;
      v411 = v181;
      *(&v183 + 1) = v178 / v160;
      *&v184 = v175 / v160;
      *(&v184 + 1) = v176 / v160;
      v404 = v184;
      v407 = v183;
      *&v184 = v173 / v160;
      *(&v184 + 1) = v174 / v160;
      v402 = v184;
      *&v184 = v171 / v160;
      *(&v184 + 1) = v172 / v160;
      v400 = v184;
      *&v184 = v165 / v160;
      *(&v184 + 1) = v170 / v160;
      v398 = v184;
      *&v185 = v161 / v160;
      *(&v185 + 1) = v162 / v160;
    }

    else
    {
      v516[0] = v157;
      v516[1] = v138;
      v516[2] = v141;
      v516[3] = v137;
      v516[4] = v140;
      v516[5] = v136;
      v516[6] = v139;
      v516[7] = v135;
      v515[0] = v157;
      v515[1] = v138;
      v515[2] = v141;
      v515[3] = v137;
      v515[4] = v140;
      v515[5] = v136;
      v515[6] = v139;
      v515[7] = v135;
      v514[0] = v157;
      v514[1] = v138;
      v514[2] = v141;
      v514[3] = v137;
      v514[4] = v140;
      v514[5] = v136;
      v514[6] = v139;
      v514[7] = v135;
      v513[0] = v157;
      v513[1] = v138;
      v513[2] = v141;
      v513[3] = v137;
      v513[4] = v140;
      v513[5] = v136;
      v513[6] = v139;
      v513[7] = v135;
      v512[0] = v157;
      v512[1] = v138;
      v512[2] = v141;
      v512[3] = v137;
      v512[4] = v140;
      v512[5] = v136;
      v512[6] = v139;
      v512[7] = v135;
      v511[0] = v157;
      v511[1] = v138;
      v511[2] = v141;
      v511[3] = v137;
      v511[4] = v140;
      v511[5] = v136;
      v511[6] = v139;
      v511[7] = v135;
      v510[0] = v157;
      v510[1] = v138;
      v510[2] = v141;
      v510[3] = v137;
      v510[4] = v140;
      v510[5] = v136;
      v510[6] = v139;
      v510[7] = v135;
      v509[0] = v157;
      v509[1] = v138;
      v509[2] = v141;
      v509[3] = v137;
      v509[4] = v140;
      v509[5] = v136;
      v509[6] = v139;
      v509[7] = v135;
      v508[0] = v157;
      v508[1] = v138;
      v508[2] = v141;
      v508[3] = v137;
      v508[4] = v140;
      v508[5] = v136;
      v508[6] = v139;
      v508[7] = v135;
      v507[0] = v157;
      v507[1] = v138;
      v507[2] = v141;
      v507[3] = v137;
      v507[4] = v140;
      v507[5] = v136;
      v507[6] = v139;
      v507[7] = v135;
      v506[0] = v157;
      v506[1] = v138;
      v506[2] = v141;
      v506[3] = v137;
      v506[4] = v140;
      v506[5] = v136;
      v506[6] = v139;
      v506[7] = v135;
      v505[0] = v157;
      v505[1] = v138;
      v505[2] = v141;
      v505[3] = v137;
      v505[4] = v140;
      v505[5] = v136;
      v505[6] = v139;
      v505[7] = v135;
      v504[0] = v157;
      v504[1] = v138;
      v504[2] = v141;
      v504[3] = v137;
      v504[4] = v140;
      v504[5] = v136;
      v504[6] = v139;
      v504[7] = v135;
      v503[0] = v157;
      v503[1] = v138;
      v503[2] = v141;
      v503[3] = v137;
      v503[4] = v140;
      v503[5] = v136;
      v503[6] = v139;
      v503[7] = v135;
      v502[0] = v157;
      v502[1] = v138;
      v502[2] = v141;
      v502[3] = v137;
      v502[4] = v140;
      v502[5] = v136;
      v502[6] = v139;
      v502[7] = v135;
      v501[0] = v157;
      v501[1] = v138;
      v501[2] = v141;
      v501[3] = v137;
      v501[4] = v140;
      v501[5] = v136;
      v501[6] = v139;
      v501[7] = v135;
      *&v186 = *(v502 + (v158 & 0xF));
      *&v187 = *(v504 + (v155 & 0xF));
      *(&v186 + 1) = *(v501 + (v159 & 0xF));
      v411 = v186;
      *(&v187 + 1) = *(v503 + (v156 & 0xF));
      v410 = v187;
      *&v186 = *(v506 + (v153 & 0xF));
      *(&v186 + 1) = *(v505 + (v154 & 0xF));
      v407 = v186;
      *&v186 = *(v508 + (v151 & 0xF));
      *(&v186 + 1) = *(v507 + (v152 & 0xF));
      v404 = v186;
      *&v186 = *(v510 + (v149 & 0xF));
      *(&v186 + 1) = *(v509 + (v150 & 0xF));
      v402 = v186;
      *&v186 = *(v512 + (v147 & 0xF));
      *(&v186 + 1) = *(v511 + (v148 & 0xF));
      v400 = v186;
      *&v186 = *(v514 + (v145 & 0xF));
      *(&v186 + 1) = *(v513 + (v146 & 0xF));
      v398 = v186;
      *&v185 = *(v516 + (v143 & 0xF));
      *(&v185 + 1) = *(v515 + (v144 & 0xF));
    }

    v397 = v185;
    makeStrideBytes();
    v188 = *MEMORY[0x277CD73D0];
    v189.i64[0] = 0x100000001;
    v189.i64[1] = 0x100000001;
    v190 = vceqq_s32(*&v21[v188], v189);
    v191.i64[0] = v190.i32[0];
    v191.i64[1] = v190.i32[1];
    v192 = v191;
    v193 = vceqq_s32(*&v21[v188 + 16], v189);
    v191.i64[0] = v193.i32[0];
    v191.i64[1] = v193.i32[1];
    v194 = v191;
    v195 = vceqq_s32(*&v21[v188 + 32], v189);
    v191.i64[0] = v195.i32[0];
    v191.i64[1] = v195.i32[1];
    v196 = v191;
    v197 = vceqq_s32(*&v21[v188 + 48], v189);
    v191.i64[0] = v197.i32[0];
    v191.i64[1] = v197.i32[1];
    v198 = v191;
    v191.i64[0] = v190.i32[2];
    v191.i64[1] = v190.i32[3];
    v199 = v191;
    v191.i64[0] = v193.i32[2];
    v191.i64[1] = v193.i32[3];
    v200 = v191;
    v191.i64[0] = v195.i32[2];
    v191.i64[1] = v195.i32[3];
    v201 = v191;
    v191.i64[0] = v197.i32[2];
    v191.i64[1] = v197.i32[3];
    v202 = vbicq_s8(v560, v191);
    v203 = vbicq_s8(v558, v201);
    v204 = vbicq_s8(v556, v200);
    v205 = vbicq_s8(v554, v199);
    v206 = vbicq_s8(v559, v198);
    v207 = vbicq_s8(v557, v196);
    v208 = vbicq_s8(v555, v194);
    v209 = *MEMORY[0x277CD73D8];
    v210 = *&v21[*MEMORY[0x277CD73C8]];
    v211 = *&v21[v209];
    v212 = BYTE1(*&v21[v209]);
    v213 = BYTE2(*&v21[v209]);
    v214 = BYTE3(*&v21[v209]);
    v215 = BYTE4(*&v21[v209]);
    v216 = WORD2(*&v21[v209]) >> 8;
    v217 = BYTE6(*&v21[v209]);
    v218 = HIBYTE(*&v21[v209]);
    v219 = *&v21[v209 + 8];
    v220 = BYTE1(*&v21[v209 + 8]);
    v221 = BYTE2(*&v21[v209 + 8]);
    v222 = BYTE3(*&v21[v209 + 8]);
    v223 = BYTE12(*&v21[v209]);
    v224 = WORD6(*&v21[v209]) >> 8;
    v225 = vbicq_s8(v553, v192);
    v226 = BYTE14(*&v21[v209]);
    v227 = HIBYTE(*&v21[v209]);
    if ((v210 & 0xFFF8) != 0)
    {
      v228 = v210 >> 3;
      v500[0] = v225;
      v500[1] = v205;
      v500[2] = v208;
      v500[3] = v204;
      v500[4] = v207;
      v500[5] = v203;
      v500[6] = v206;
      v500[7] = v202;
      v229 = *(v500 + (v211 & 0xF));
      v499[0] = v225;
      v499[1] = v205;
      v499[2] = v208;
      v499[3] = v204;
      v499[4] = v207;
      v499[5] = v203;
      v499[6] = v206;
      v499[7] = v202;
      v230 = *(v499 + (v212 & 0xF));
      v231 = v213 & 0xF;
      v498[0] = v225;
      v498[1] = v205;
      v498[2] = v208;
      v498[3] = v204;
      v498[4] = v207;
      v498[5] = v203;
      v498[6] = v206;
      v498[7] = v202;
      v232 = v221 & 0xF;
      v233 = *(v498 + v231);
      v234 = v222 & 0xF;
      v235 = v223 & 0xF;
      v236 = v224 & 0xF;
      v237 = v226 & 0xF;
      v497[0] = v225;
      v497[1] = v205;
      v497[2] = v208;
      v497[3] = v204;
      v497[4] = v207;
      v497[5] = v203;
      v497[6] = v206;
      v497[7] = v202;
      v238 = *(v497 + (v214 & 0xF));
      v496[0] = v225;
      v496[1] = v205;
      v496[2] = v208;
      v496[3] = v204;
      v496[4] = v207;
      v496[5] = v203;
      v496[6] = v206;
      v496[7] = v202;
      v239 = *(v496 + (v215 & 0xF));
      v495[0] = v225;
      v495[1] = v205;
      v495[2] = v208;
      v495[3] = v204;
      v495[4] = v207;
      v495[5] = v203;
      v495[6] = v206;
      v495[7] = v202;
      v240 = *(v495 + (v216 & 0xF));
      v494[0] = v225;
      v494[1] = v205;
      v494[2] = v208;
      v494[3] = v204;
      v494[4] = v207;
      v494[5] = v203;
      v494[6] = v206;
      v494[7] = v202;
      v241 = *(v494 + (v217 & 0xF));
      v493[0] = v225;
      v493[1] = v205;
      v493[2] = v208;
      v493[3] = v204;
      v493[4] = v207;
      v493[5] = v203;
      v493[6] = v206;
      v493[7] = v202;
      v242 = *(v493 + (v218 & 0xF));
      v492[0] = v225;
      v492[1] = v205;
      v492[2] = v208;
      v492[3] = v204;
      v492[4] = v207;
      v492[5] = v203;
      v492[6] = v206;
      v492[7] = v202;
      v243 = *(v492 + (v219 & 0xF));
      v491[0] = v225;
      v491[1] = v205;
      v491[2] = v208;
      v491[3] = v204;
      v491[4] = v207;
      v491[5] = v203;
      v491[6] = v206;
      v491[7] = v202;
      v244 = *(v491 + (v220 & 0xF));
      v490[0] = v225;
      v490[1] = v205;
      v490[2] = v208;
      v490[3] = v204;
      v490[4] = v207;
      v490[5] = v203;
      v490[6] = v206;
      v490[7] = v202;
      v245 = *(v490 + v232);
      v489[0] = v225;
      v489[1] = v205;
      v489[2] = v208;
      v489[3] = v204;
      v489[4] = v207;
      v489[5] = v203;
      v489[6] = v206;
      v489[7] = v202;
      v246 = *(v489 + v234);
      v488[0] = v225;
      v488[1] = v205;
      v488[2] = v208;
      v488[3] = v204;
      v488[4] = v207;
      v488[5] = v203;
      v488[6] = v206;
      v488[7] = v202;
      v247 = *(v488 + v235);
      v487[0] = v225;
      v487[1] = v205;
      v487[2] = v208;
      v487[3] = v204;
      v487[4] = v207;
      v487[5] = v203;
      v487[6] = v206;
      v487[7] = v202;
      v248 = *(v487 + v236);
      v486[0] = v225;
      v486[1] = v205;
      v486[2] = v208;
      v486[3] = v204;
      v486[4] = v207;
      v486[5] = v203;
      v486[6] = v206;
      v486[7] = v202;
      v249 = *(v486 + v237);
      v87 = v356;
      v250.i64[0] = v249 / v228;
      v251.i64[0] = v247 / v228;
      v252.i64[0] = v245 / v228;
      v485[0] = v225;
      v485[1] = v205;
      v485[2] = v208;
      v485[3] = v204;
      v485[4] = v207;
      v485[5] = v203;
      v485[6] = v206;
      v485[7] = v202;
      v250.i64[1] = *(v485 + (v227 & 0xF)) / v228;
      v251.i64[1] = v248 / v228;
      v393 = v251;
      v395 = v250;
      v252.i64[1] = v246 / v228;
      v253.i64[0] = v243 / v228;
      v253.i64[1] = v244 / v228;
      v391 = v253;
      v392 = v252;
      v253.i64[0] = v241 / v228;
      v253.i64[1] = v242 / v228;
      v390 = v253;
      v253.i64[0] = v239 / v228;
      v253.i64[1] = v240 / v228;
      v389 = v253;
      v253.i64[0] = v233 / v228;
      v253.i64[1] = v238 / v228;
      v388 = v253;
      v254.i64[0] = v229 / v228;
      v254.i64[1] = v230 / v228;
    }

    else
    {
      v484[0] = v225;
      v484[1] = v205;
      v484[2] = v208;
      v484[3] = v204;
      v484[4] = v207;
      v484[5] = v203;
      v484[6] = v206;
      v484[7] = v202;
      v483[0] = v225;
      v483[1] = v205;
      v483[2] = v208;
      v483[3] = v204;
      v483[4] = v207;
      v483[5] = v203;
      v483[6] = v206;
      v483[7] = v202;
      v482[0] = v225;
      v482[1] = v205;
      v482[2] = v208;
      v482[3] = v204;
      v482[4] = v207;
      v482[5] = v203;
      v482[6] = v206;
      v482[7] = v202;
      v481[0] = v225;
      v481[1] = v205;
      v481[2] = v208;
      v481[3] = v204;
      v481[4] = v207;
      v481[5] = v203;
      v481[6] = v206;
      v481[7] = v202;
      v480[0] = v225;
      v480[1] = v205;
      v480[2] = v208;
      v480[3] = v204;
      v480[4] = v207;
      v480[5] = v203;
      v480[6] = v206;
      v480[7] = v202;
      v479[0] = v225;
      v479[1] = v205;
      v479[2] = v208;
      v479[3] = v204;
      v479[4] = v207;
      v479[5] = v203;
      v479[6] = v206;
      v479[7] = v202;
      v478[0] = v225;
      v478[1] = v205;
      v478[2] = v208;
      v478[3] = v204;
      v478[4] = v207;
      v478[5] = v203;
      v478[6] = v206;
      v478[7] = v202;
      v477[0] = v225;
      v477[1] = v205;
      v477[2] = v208;
      v477[3] = v204;
      v477[4] = v207;
      v477[5] = v203;
      v477[6] = v206;
      v477[7] = v202;
      v476[0] = v225;
      v476[1] = v205;
      v476[2] = v208;
      v476[3] = v204;
      v476[4] = v207;
      v476[5] = v203;
      v476[6] = v206;
      v476[7] = v202;
      v475[0] = v225;
      v475[1] = v205;
      v475[2] = v208;
      v475[3] = v204;
      v475[4] = v207;
      v475[5] = v203;
      v475[6] = v206;
      v475[7] = v202;
      v474[0] = v225;
      v474[1] = v205;
      v474[2] = v208;
      v474[3] = v204;
      v474[4] = v207;
      v474[5] = v203;
      v474[6] = v206;
      v474[7] = v202;
      v473[0] = v225;
      v473[1] = v205;
      v473[2] = v208;
      v473[3] = v204;
      v473[4] = v207;
      v473[5] = v203;
      v473[6] = v206;
      v473[7] = v202;
      v472[0] = v225;
      v472[1] = v205;
      v472[2] = v208;
      v472[3] = v204;
      v472[4] = v207;
      v472[5] = v203;
      v472[6] = v206;
      v472[7] = v202;
      v471[0] = v225;
      v471[1] = v205;
      v471[2] = v208;
      v471[3] = v204;
      v471[4] = v207;
      v471[5] = v203;
      v471[6] = v206;
      v471[7] = v202;
      v470[0] = v225;
      v470[1] = v205;
      v470[2] = v208;
      v470[3] = v204;
      v470[4] = v207;
      v470[5] = v203;
      v470[6] = v206;
      v470[7] = v202;
      v469[0] = v225;
      v469[1] = v205;
      v469[2] = v208;
      v469[3] = v204;
      v469[4] = v207;
      v469[5] = v203;
      v469[6] = v206;
      v469[7] = v202;
      v255.i64[0] = *(v470 + (v226 & 0xF));
      v256.i64[0] = *(v472 + (v223 & 0xF));
      v255.i64[1] = *(v469 + (v227 & 0xF));
      v395 = v255;
      v256.i64[1] = *(v471 + (v224 & 0xF));
      v393 = v256;
      v255.i64[0] = *(v474 + (v221 & 0xF));
      v255.i64[1] = *(v473 + (v222 & 0xF));
      v392 = v255;
      v255.i64[0] = *(v476 + (v219 & 0xF));
      v255.i64[1] = *(v475 + (v220 & 0xF));
      v391 = v255;
      v255.i64[0] = *(v478 + (v217 & 0xF));
      v255.i64[1] = *(v477 + (v218 & 0xF));
      v390 = v255;
      v255.i64[0] = *(v480 + (v215 & 0xF));
      v255.i64[1] = *(v479 + (v216 & 0xF));
      v389 = v255;
      v255.i64[0] = *(v482 + (v213 & 0xF));
      v255.i64[1] = *(v481 + (v214 & 0xF));
      v388 = v255;
      v254.i64[0] = *(v484 + (v211 & 0xF));
      v254.i64[1] = *(v483 + (v212 & 0xF));
    }

    v387 = v254;
    v257 = *&v21[v209];
    v258 = &v21[v188];
    v259 = *v258;
    v260 = v258[1];
    v261 = v258[2];
    v468 = v258[3];
    v467[2] = v261;
    v467[1] = v260;
    v467[0] = v259;
    v205.i32[0] = *(v467 + (v257 & 0xF));
    v384 = v205;
    v466[3] = v468;
    v466[2] = v261;
    v466[1] = v260;
    v466[0] = v259;
    v205.i32[0] = *(v466 + (BYTE1(v257) & 0xF));
    v383 = v205;
    v465[3] = v468;
    v465[2] = v261;
    v465[1] = v260;
    v465[0] = v259;
    v205.i32[0] = *(v465 + (BYTE2(v257) & 0xF));
    v386 = v205;
    v464[3] = v468;
    v464[2] = v261;
    v464[1] = v260;
    v464[0] = v259;
    v205.i32[0] = *(v464 + (BYTE3(v257) & 0xF));
    v385 = v205;
    v463[3] = v468;
    v463[2] = v261;
    v463[1] = v260;
    v463[0] = v259;
    v205.i32[0] = *(v463 + (BYTE4(v257) & 0xF));
    v377 = v205;
    v462[3] = v468;
    v462[2] = v261;
    v462[1] = v260;
    v462[0] = v259;
    v205.i32[0] = *(v462 + (BYTE5(v257) & 0xF));
    v376 = v205;
    v461[3] = v468;
    v461[2] = v261;
    v461[1] = v260;
    v461[0] = v259;
    v205.i32[0] = *(v461 + (BYTE6(v257) & 0xF));
    v381 = v205;
    v460[3] = v468;
    v460[2] = v261;
    v460[1] = v260;
    v460[0] = v259;
    v205.i32[0] = *(v460 + (BYTE7(v257) & 0xF));
    v382 = v205;
    v459[3] = v468;
    v459[2] = v261;
    v459[1] = v260;
    v459[0] = v259;
    v205.i32[0] = *(v459 + (BYTE8(v257) & 0xF));
    v380 = v205;
    v458[3] = v468;
    v458[2] = v261;
    v458[1] = v260;
    v458[0] = v259;
    v205.i32[0] = *(v458 + (BYTE9(v257) & 0xF));
    v379 = v205;
    v457[3] = v468;
    v457[2] = v261;
    v457[1] = v260;
    v457[0] = v259;
    v205.i32[0] = *(v457 + (BYTE10(v257) & 0xF));
    v378 = v205;
    v456[3] = v468;
    v456[2] = v261;
    v456[1] = v260;
    v456[0] = v259;
    v205.i32[0] = *(v456 + (BYTE11(v257) & 0xF));
    v375 = v205;
    v455[3] = v468;
    v455[2] = v261;
    v455[1] = v260;
    v455[0] = v259;
    v205.i32[0] = *(v455 + (BYTE12(v257) & 0xF));
    v374 = v205;
    v454[3] = v468;
    v454[2] = v261;
    v454[1] = v260;
    v454[0] = v259;
    v205.i32[0] = *(v454 + (BYTE13(v257) & 0xF));
    v373 = v205;
    v453[3] = v468;
    v453[2] = v261;
    v453[1] = v260;
    v453[0] = v259;
    v205.i32[0] = *(v453 + (BYTE14(v257) & 0xF));
    v372 = v205;
    v452[3] = v468;
    v452[2] = v261;
    v452[1] = v260;
    v452[0] = v259;
    v259.i32[0] = *(v452 + (HIBYTE(v257) & 0xF));
    v371 = v259;
    makeStrideBytes();
    v262 = &v353[*MEMORY[0x277CD73D0]];
    v263.i64[0] = 0x100000001;
    v263.i64[1] = 0x100000001;
    v264 = vceqq_s32(*v262, v263);
    v265.i64[0] = v264.i32[0];
    v265.i64[1] = v264.i32[1];
    v266 = v265;
    v267 = vceqq_s32(v262[1], v263);
    v265.i64[0] = v267.i32[0];
    v265.i64[1] = v267.i32[1];
    v268 = v265;
    v269 = vceqq_s32(v262[2], v263);
    v265.i64[0] = v269.i32[0];
    v265.i64[1] = v269.i32[1];
    v270 = v265;
    v271 = vceqq_s32(v262[3], v263);
    v265.i64[0] = v271.i32[0];
    v265.i64[1] = v271.i32[1];
    v272 = v265;
    v265.i64[0] = v264.i32[2];
    v265.i64[1] = v264.i32[3];
    v273 = v265;
    v265.i64[0] = v267.i32[2];
    v265.i64[1] = v267.i32[3];
    v274 = v265;
    v265.i64[0] = v269.i32[2];
    v265.i64[1] = v269.i32[3];
    v275 = v265;
    v265.i64[0] = v271.i32[2];
    v265.i64[1] = v271.i32[3];
    v276 = vbicq_s8(v560, v265);
    v277 = vbicq_s8(v558, v275);
    v278 = vbicq_s8(v556, v274);
    v279 = vbicq_s8(v554, v273);
    v280 = vbicq_s8(v559, v272);
    v281 = vbicq_s8(v557, v270);
    v282 = vbicq_s8(v555, v268);
    v283 = *&v353[*MEMORY[0x277CD73C8]];
    v284 = *&v353[*MEMORY[0x277CD73D8]];
    v285 = BYTE1(*&v353[*MEMORY[0x277CD73D8]]);
    v286 = BYTE2(*&v353[*MEMORY[0x277CD73D8]]);
    v287 = BYTE3(*&v353[*MEMORY[0x277CD73D8]]);
    v288 = BYTE4(*&v353[*MEMORY[0x277CD73D8]]);
    v289 = WORD2(*&v353[*MEMORY[0x277CD73D8]]) >> 8;
    v290 = BYTE6(*&v353[*MEMORY[0x277CD73D8]]);
    v291 = HIBYTE(*&v353[*MEMORY[0x277CD73D8]]);
    v292 = *&v353[*MEMORY[0x277CD73D8] + 8];
    v293 = BYTE1(*&v353[*MEMORY[0x277CD73D8] + 8]);
    v294 = BYTE2(*&v353[*MEMORY[0x277CD73D8] + 8]);
    v295 = BYTE3(*&v353[*MEMORY[0x277CD73D8] + 8]);
    v296 = BYTE12(*&v353[*MEMORY[0x277CD73D8]]);
    v297 = WORD6(*&v353[*MEMORY[0x277CD73D8]]) >> 8;
    v298 = vbicq_s8(v553, v266);
    v299 = BYTE14(*&v353[*MEMORY[0x277CD73D8]]);
    v300 = HIBYTE(*&v353[*MEMORY[0x277CD73D8]]);
    if ((v283 & 0xFFF8) != 0)
    {
      v301 = v283 >> 3;
      v451[0] = v298;
      v451[1] = v279;
      v451[2] = v282;
      v451[3] = v278;
      v451[4] = v281;
      v451[5] = v277;
      v451[6] = v280;
      v451[7] = v276;
      v302 = *(v451 + (v284 & 0xF));
      v450[0] = v298;
      v450[1] = v279;
      v450[2] = v282;
      v450[3] = v278;
      v450[4] = v281;
      v450[5] = v277;
      v450[6] = v280;
      v450[7] = v276;
      v303 = *(v450 + (v285 & 0xF));
      v304 = v286 & 0xF;
      v449[0] = v298;
      v449[1] = v279;
      v449[2] = v282;
      v449[3] = v278;
      v449[4] = v281;
      v449[5] = v277;
      v449[6] = v280;
      v449[7] = v276;
      v305 = v294 & 0xF;
      v306 = *(v449 + v304);
      v307 = v295 & 0xF;
      v308 = v296 & 0xF;
      v309 = v297 & 0xF;
      v310 = v299 & 0xF;
      v448[0] = v298;
      v448[1] = v279;
      v448[2] = v282;
      v448[3] = v278;
      v448[4] = v281;
      v448[5] = v277;
      v448[6] = v280;
      v448[7] = v276;
      v311 = *(v448 + (v287 & 0xF));
      v447[0] = v298;
      v447[1] = v279;
      v447[2] = v282;
      v447[3] = v278;
      v447[4] = v281;
      v447[5] = v277;
      v447[6] = v280;
      v447[7] = v276;
      v312 = *(v447 + (v288 & 0xF));
      v446[0] = v298;
      v446[1] = v279;
      v446[2] = v282;
      v446[3] = v278;
      v446[4] = v281;
      v446[5] = v277;
      v446[6] = v280;
      v446[7] = v276;
      v313 = *(v446 + (v289 & 0xF));
      v445[0] = v298;
      v445[1] = v279;
      v445[2] = v282;
      v445[3] = v278;
      v445[4] = v281;
      v445[5] = v277;
      v445[6] = v280;
      v445[7] = v276;
      v314 = *(v445 + (v290 & 0xF));
      v444[0] = v298;
      v444[1] = v279;
      v444[2] = v282;
      v444[3] = v278;
      v444[4] = v281;
      v444[5] = v277;
      v444[6] = v280;
      v444[7] = v276;
      v315 = *(v444 + (v291 & 0xF));
      v443[0] = v298;
      v443[1] = v279;
      v443[2] = v282;
      v443[3] = v278;
      v443[4] = v281;
      v443[5] = v277;
      v443[6] = v280;
      v443[7] = v276;
      v316 = *(v443 + (v292 & 0xF));
      v442[0] = v298;
      v442[1] = v279;
      v442[2] = v282;
      v442[3] = v278;
      v442[4] = v281;
      v442[5] = v277;
      v442[6] = v280;
      v442[7] = v276;
      v317 = *(v442 + (v293 & 0xF));
      v441[0] = v298;
      v441[1] = v279;
      v441[2] = v282;
      v441[3] = v278;
      v441[4] = v281;
      v441[5] = v277;
      v441[6] = v280;
      v441[7] = v276;
      v318 = *(v441 + v305);
      v440[0] = v298;
      v440[1] = v279;
      v440[2] = v282;
      v440[3] = v278;
      v440[4] = v281;
      v440[5] = v277;
      v440[6] = v280;
      v440[7] = v276;
      v319 = *(v440 + v307);
      v439[0] = v298;
      v439[1] = v279;
      v439[2] = v282;
      v439[3] = v278;
      v439[4] = v281;
      v439[5] = v277;
      v439[6] = v280;
      v439[7] = v276;
      v320 = *(v439 + v308);
      v438[0] = v298;
      v438[1] = v279;
      v438[2] = v282;
      v438[3] = v278;
      v438[4] = v281;
      v438[5] = v277;
      v438[6] = v280;
      v438[7] = v276;
      v321 = *(v438 + v309);
      v437[0] = v298;
      v437[1] = v279;
      v437[2] = v282;
      v437[3] = v278;
      v437[4] = v281;
      v437[5] = v277;
      v437[6] = v280;
      v437[7] = v276;
      *&v322 = *(v437 + v310) / v301;
      *&v323 = v320 / v301;
      *&v324 = v318 / v301;
      v436[0] = v298;
      v436[1] = v279;
      v436[2] = v282;
      v436[3] = v278;
      v436[4] = v281;
      v436[5] = v277;
      v436[6] = v280;
      v436[7] = v276;
      *(&v322 + 1) = *(v436 + (v300 & 0xF)) / v301;
      *(&v323 + 1) = v321 / v301;
      v369 = v323;
      v370 = v322;
      *(&v324 + 1) = v319 / v301;
      *&v325 = v316 / v301;
      *(&v325 + 1) = v317 / v301;
      v367 = v325;
      v368 = v324;
      *&v325 = v314 / v301;
      *(&v325 + 1) = v315 / v301;
      v366 = v325;
      *&v325 = v312 / v301;
      *(&v325 + 1) = v313 / v301;
      v365 = v325;
      *&v325 = v306 / v301;
      *(&v325 + 1) = v311 / v301;
      v364 = v325;
      *&v326 = v302 / v301;
      *(&v326 + 1) = v303 / v301;
    }

    else
    {
      v435[0] = v298;
      v435[1] = v279;
      v435[2] = v282;
      v435[3] = v278;
      v435[4] = v281;
      v435[5] = v277;
      v435[6] = v280;
      v435[7] = v276;
      v434[0] = v298;
      v434[1] = v279;
      v434[2] = v282;
      v434[3] = v278;
      v434[4] = v281;
      v434[5] = v277;
      v434[6] = v280;
      v434[7] = v276;
      v433[0] = v298;
      v433[1] = v279;
      v433[2] = v282;
      v433[3] = v278;
      v433[4] = v281;
      v433[5] = v277;
      v433[6] = v280;
      v433[7] = v276;
      v432[0] = v298;
      v432[1] = v279;
      v432[2] = v282;
      v432[3] = v278;
      v432[4] = v281;
      v432[5] = v277;
      v432[6] = v280;
      v432[7] = v276;
      v431[0] = v298;
      v431[1] = v279;
      v431[2] = v282;
      v431[3] = v278;
      v431[4] = v281;
      v431[5] = v277;
      v431[6] = v280;
      v431[7] = v276;
      v430[0] = v298;
      v430[1] = v279;
      v430[2] = v282;
      v430[3] = v278;
      v430[4] = v281;
      v430[5] = v277;
      v430[6] = v280;
      v430[7] = v276;
      v429[0] = v298;
      v429[1] = v279;
      v429[2] = v282;
      v429[3] = v278;
      v429[4] = v281;
      v429[5] = v277;
      v429[6] = v280;
      v429[7] = v276;
      v428[0] = v298;
      v428[1] = v279;
      v428[2] = v282;
      v428[3] = v278;
      v428[4] = v281;
      v428[5] = v277;
      v428[6] = v280;
      v428[7] = v276;
      v427[0] = v298;
      v427[1] = v279;
      v427[2] = v282;
      v427[3] = v278;
      v427[4] = v281;
      v427[5] = v277;
      v427[6] = v280;
      v427[7] = v276;
      v426[0] = v298;
      v426[1] = v279;
      v426[2] = v282;
      v426[3] = v278;
      v426[4] = v281;
      v426[5] = v277;
      v426[6] = v280;
      v426[7] = v276;
      v425[0] = v298;
      v425[1] = v279;
      v425[2] = v282;
      v425[3] = v278;
      v425[4] = v281;
      v425[5] = v277;
      v425[6] = v280;
      v425[7] = v276;
      v424[0] = v298;
      v424[1] = v279;
      v424[2] = v282;
      v424[3] = v278;
      v424[4] = v281;
      v424[5] = v277;
      v424[6] = v280;
      v424[7] = v276;
      v423[0] = v298;
      v423[1] = v279;
      v423[2] = v282;
      v423[3] = v278;
      v423[4] = v281;
      v423[5] = v277;
      v423[6] = v280;
      v423[7] = v276;
      v422[0] = v298;
      v422[1] = v279;
      v422[2] = v282;
      v422[3] = v278;
      v422[4] = v281;
      v422[5] = v277;
      v422[6] = v280;
      v422[7] = v276;
      v421[0] = v298;
      v421[1] = v279;
      v421[2] = v282;
      v421[3] = v278;
      v421[4] = v281;
      v421[5] = v277;
      v421[6] = v280;
      v421[7] = v276;
      v420[0] = v298;
      v420[1] = v279;
      v420[2] = v282;
      v420[3] = v278;
      v420[4] = v281;
      v420[5] = v277;
      v420[6] = v280;
      v420[7] = v276;
      *&v327 = *(v421 + (v299 & 0xF));
      *&v328 = *(v423 + (v296 & 0xF));
      *(&v327 + 1) = *(v420 + (v300 & 0xF));
      v370 = v327;
      *(&v328 + 1) = *(v422 + (v297 & 0xF));
      v369 = v328;
      *&v327 = *(v425 + (v294 & 0xF));
      *(&v327 + 1) = *(v424 + (v295 & 0xF));
      v368 = v327;
      *&v327 = *(v427 + (v292 & 0xF));
      *(&v327 + 1) = *(v426 + (v293 & 0xF));
      v367 = v327;
      *&v327 = *(v429 + (v290 & 0xF));
      *(&v327 + 1) = *(v428 + (v291 & 0xF));
      v366 = v327;
      *&v327 = *(v431 + (v288 & 0xF));
      *(&v327 + 1) = *(v430 + (v289 & 0xF));
      v365 = v327;
      *&v327 = *(v433 + (v286 & 0xF));
      *(&v327 + 1) = *(v432 + (v287 & 0xF));
      v364 = v327;
      *&v326 = *(v435 + (v284 & 0xF));
      *(&v326 + 1) = *(v434 + (v285 & 0xF));
    }

    v363 = v326;
    v329 = v87[2];
    v331 = *v329;
    v330 = v329[1];
    if (v330 != v331)
    {
      if (((v330 - v331) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v332 = v359[2];
    v334 = *v332;
    v333 = v332[1];
    if (v333 != v334)
    {
      if (((v333 - v334) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v88 = vuzp1q_s32(v393, v395);
    v89 = vuzp1q_s32(v391, v392);
    v90 = vuzp1q_s32(v389, v390);
    v419[0] = v397;
    v419[1] = v398;
    v419[2] = v400;
    v419[3] = v402;
    v91 = vuzp1q_s32(v387, v388);
    v419[4] = v404;
    v419[5] = v407;
    v419[6] = v410;
    v419[7] = v411;
    v92 = v91;
    v92.i32[0] = 0;
    v93 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v384, v357), 0), v92, v91);
    v94 = v93;
    v94.i32[1] = 0;
    v95 = v90;
    v95.i32[0] = 0;
    v96 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v383, v357), 0), v94, v93);
    v97 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v377, v357), 0), v95, v90);
    v98 = v97;
    v98.i32[1] = 0;
    v99 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v376, v357), 0), v98, v97);
    v100 = v96;
    v100.i32[2] = 0;
    v101 = v99;
    v101.i32[2] = 0;
    v102 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v386, v357), 0), v100, v96);
    v103 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v381, v357), 0), v101, v99);
    v104 = v102;
    v104.i32[3] = 0;
    v105 = v89;
    v105.i32[0] = 0;
    v106 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v380, v357), 0), v105, v89);
    v107 = v103;
    v107.i32[3] = 0;
    v108 = v106;
    v108.i32[1] = 0;
    v109 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v379, v357), 0), v108, v106);
    v110 = v109;
    v110.i32[2] = 0;
    v111 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v378, v357), 0), v110, v109);
    v112 = v111;
    v112.i32[3] = 0;
    v113 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v382, v357), 0), v107, v103);
    v114 = v88;
    v114.i32[0] = 0;
    v115 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v374, v357), 0), v114, v88);
    v116 = v115;
    v116.i32[1] = 0;
    v117 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v373, v357), 0), v116, v115);
    v118 = v117;
    v118.i32[2] = 0;
    v119 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v372, v357), 0), v118, v117);
    v120 = v119;
    v120.i32[3] = 0;
    v541[v86] = *(v419 + (v86 & 0xF));
    v418[0] = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v385, v357), 0), v104, v102);
    v418[1] = v113;
    v418[2] = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v375, v357), 0), v112, v111);
    v418[3] = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v371, v357), 0), v120, v119);
    v542[v86] = *(v418 + (v86 & 0xF));
    v417[0] = v363;
    v417[1] = v364;
    v417[2] = v365;
    v417[3] = v366;
    v417[4] = v367;
    v417[5] = v368;
    v417[6] = v369;
    v417[7] = v370;
    v543[v86] = *(v417 + (v86 & 0xF));
    v416[0] = v358;
    v416[1] = v362;
    v416[2] = v360;
    v416[3] = v361;
    v544[v86] = *(v416 + (v86 & 0xF));
    v415[0] = xmmword_239B0A0D0;
    memset(&v415[1], 0, 48);
    v545[v86] = *(v415 + (v86 & 0xF));
    v414[0] = xmmword_239B0A0D0;
    memset(&v414[1], 0, 48);
    v546[v86] = *(v414 + (v86 & 0xF));
    ++v86;
  }

  while (v86 != 16);
  v335 = v352 >> 3;
  LODWORD(v336) = (DWORD2(v540) + 7) >> 3;
  HIDWORD(v540) = v336;
  v337 = (DWORD2(v540) + 7) & 0xFFFFFFF8;
  if (DWORD2(v540) <= v337 >> 1)
  {
    LODWORD(v336) = (DWORD2(v540) + 3) >> 2;
    if (DWORD2(v540) <= 2 * v336)
    {
      LODWORD(v336) = (DWORD2(v540) + 1) >> 1;
      if (v336 >= DWORD2(v540))
      {
        v335 = v352 & 0xFFFFFFFFFFFFFFF8;
        v338 = 1;
        LODWORD(v336) = DWORD2(v540);
        v337 = DWORD2(v540);
      }

      else
      {
        v335 *= 4;
        v337 = (DWORD2(v540) + 1) & 0xFFFFFFFE;
        v338 = 2;
      }
    }

    else
    {
      v335 *= 2;
      v337 = 4 * ((DWORD2(v540) + 3) >> 2);
      v338 = 4;
    }

    HIDWORD(v540) = v336;
    v339 = DWORD1(v540);
    if (v335 < 2)
    {
      goto LABEL_246;
    }

LABEL_242:
    v340 = v335 >> 1;
    if (v335 >> 1 >= v339)
    {
      do
      {
        v335 = v340;
        v338 *= 2;
        if (v340 < 2)
        {
          break;
        }

        v340 >>= 1;
      }

      while (v335 >> 1 >= v339);
      v336 = (DWORD2(v540) + v338 - 1) / v338;
      HIDWORD(v540) = v336;
      v337 = v336 * v338;
    }

    goto LABEL_246;
  }

  v338 = 8;
  v339 = DWORD1(v540);
  if (v335 >= 2)
  {
    goto LABEL_242;
  }

LABEL_246:
  v341 = 1;
  if (v337 >= 0x400)
  {
    if (v336 >= 2)
    {
      do
      {
        v342 = v336 + 1;
        v336 = (v336 + 1) >> 1;
        v341 *= 2;
      }

      while (v342 >= 4 && v338 * v336 > 0x3FF);
    }

    HIDWORD(v540) = v336;
  }

  [v355 setBuffer:objc_msgSend(v18 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v18, 0, 16, 0, 0) + *(*(v354 + 8) + 64), 0}];
  [v355 setBuffer:objc_msgSend(v21 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v21, 0, 16, 0, 0) + *(*(v354 + 8) + 144), 1}];
  [v355 setBuffer:objc_msgSend(v353 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v353, 0, 16, 0, 0) + *(v354 + 192), 2}];
  [v355 setBytes:v539 length:412 atIndex:29];
  v553.i64[0] = v341;
  v553.i64[1] = (v339 + v335 - 1) / v335;
  v554.i64[0] = 1;
  v538[0] = v338;
  v538[1] = v335;
  v538[2] = 1;
  [v355 dispatchThreadgroups:&v553 threadsPerThreadgroup:v538];
  return 0;
}