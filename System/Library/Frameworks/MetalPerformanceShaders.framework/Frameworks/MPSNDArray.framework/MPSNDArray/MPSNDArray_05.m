void sub_239A51490(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
    if ((*(v1 - 97) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v1 - 97) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*(v1 - 120));
  _Unwind_Resume(a1);
}

uint64_t EncodeArrayVectorLUTDequant(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (*(a1 + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    operator new();
  }

  v196 = *(a1 + *MEMORY[0x277CD7370]);
  v7 = *(a1 + 144);
  v8 = [*(a4 + 232) graph];
  v9 = **(v8 + 56);
  if (*(*(v8 + 56) + 8) == v9)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = *v9;
  v12 = *(*v9 + 8);
  v11 = *v12;
  v13 = v12[1] - *v12;
  if (!v13 || (v15 = *(v10 + 24), v14 = *v15, *(v15 + 8) == *v15) || (v194 = a1, v185 = a2, v13 <= 8))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v16 = *v14;
  v18 = *v11;
  v17 = v11[1];
  DimensionSize = BaseTensor::GetDimensionSize(*v14);
  v193 = BaseTensor::GetDimensionSize(v16);
  v191 = BaseTensor::GetDimensionSize(v16);
  v192 = BaseTensor::GetDimensionSize(v16);
  v180 = DimensionSize;
  v203 = DimensionSize;
  LODWORD(v16) = BaseTensor::GetDimensionSize(v18);
  LODWORD(DimensionSize) = BaseTensor::GetDimensionSize(v18);
  v20 = BaseTensor::GetDimensionSize(v18);
  v21 = BaseTensor::GetDimensionSize(v18);
  *&v22 = __PAIR64__(DimensionSize, v16);
  v207 = v22;
  v181 = v7;
  if (v7 >= 4)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  v190 = v23;
  v24 = BaseTensor::GetDimensionSize(v17);
  v25 = BaseTensor::GetDimensionSize(v17);
  v26 = BaseTensor::GetDimensionSize(v17);
  v186 = BaseTensor::GetDimensionSize(v17);
  v182 = v24;
  v199 = v24;
  v27 = 31 - __clz(v25);
  if (v25)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = [*(v4 + 232) graph];
  v30 = *(v29 + 64);
  v31 = *v30;
  v32 = v30[1];
  v197 = v4;
  v195 = v28;
  if (*v30 == v32)
  {
    v37 = 0;
  }

  else
  {
    v33 = v29;
    v34 = 0;
    v35 = -1;
    do
    {
      v36 = *v31++;
      if (v36 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v33) + 32))
      {
        v35 = v34;
      }

      ++v34;
    }

    while (v31 != v32);
    if (v35 == -1)
    {
      v37 = 0;
    }

    else
    {
      v37 = v35;
    }

    v4 = v197;
    v28 = v195;
  }

  v204 = __PAIR64__(v193, v203);
  v200 = __PAIR64__(v25, v199);
  v38 = v207;
  DWORD2(v38) = v20;
  v208 = v38;
  v39 = [*(v4 + 16) objectAtIndexedSubscript:v37];
  v40 = v39;
  v41 = MEMORY[0x277CD73D8];
  v42 = v194;
  if (v39)
  {
    v43 = (v39 + *MEMORY[0x277CD73D8]);
    v44 = v43[1] == 0;
    if (!v43[2])
    {
      v44 = 2;
    }

    if (!v43[3])
    {
      v44 = 3;
    }
  }

  else
  {
    v44 = 0;
  }

  *&v46 = v200;
  v45.n128_u64[0] = v204;
  v45.n128_u32[2] = v191;
  DWORD2(v46) = v26;
  v47 = v208;
  HIDWORD(v47) = v21;
  v189 = v44;
  if (v28 == 4)
  {
    v48 = MEMORY[0x277CD7370];
    v49 = v190;
    v198 = (*(v39 + *MEMORY[0x277CD7408]) & 1) != 0 || (*(v39 + *MEMORY[0x277CD7418]) & 1) != 0 || (*(v39 + *MEMORY[0x277CD7410]) & 1) != 0;
    v187 = v44 == 0;
    if (*(v39 + *MEMORY[0x277CD73C8]) == 8)
    {
      v188 = 0;
      v229 = v47;
      *(&v229 & 0xFFFFFFFFFFFFFFF3 | (4 * (v44 & 3))) = 2 * *(&v229 | (4 * v44));
      v50 = 1;
      v47 = v229;
      goto LABEL_49;
    }

    v188 = 0;
  }

  else
  {
    v48 = MEMORY[0x277CD7370];
    v49 = v190;
    if (v28 != 2)
    {
      v187 = 0;
      v188 = 0;
      v198 = 0;
      v50 = v39 != 0;
      goto LABEL_49;
    }

    v198 = (*(v39 + *MEMORY[0x277CD7408]) & 3) != 0 || (*(v39 + *MEMORY[0x277CD7418]) & 3) != 0 || (*(v39 + *MEMORY[0x277CD7410]) & 3) != 0;
    v188 = v44 == 0;
    if (*(v39 + *MEMORY[0x277CD73C8]) == 8)
    {
      v187 = 0;
      v230 = v47;
      *(&v230 & 0xFFFFFFFFFFFFFFF3 | (4 * (v44 & 3))) = 4 * *(&v230 | (4 * v44));
      v50 = 1;
      v47 = v230;
      goto LABEL_49;
    }

    v187 = 0;
  }

  v50 = 1;
LABEL_49:
  v45.n128_u32[3] = v192;
  HIDWORD(v46) = v186;
  v201 = v46;
  v205 = v45;
  v209 = v47;
  if ((*(v194 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (v28 > 8 || ((1 << v28) & 0x114) == 0)
    {
      v166 = MTLReportFailureTypeEnabled();
      v45 = v205;
      v47 = v209;
      if (v166)
      {
        v172 = v194;
        MTLReportFailure();
        v45 = v205;
        v47 = v209;
      }
    }

    v51 = v41;
    if (v181 >= 4)
    {
      v167 = MTLReportFailureTypeEnabled();
      v45 = v205;
      v47 = v209;
      if (v167)
      {
        v172 = v194;
        MTLReportFailure();
        v45 = v205;
        v47 = v209;
      }
    }

    if (!v49)
    {
      goto LABEL_59;
    }

    v52 = v47;
    if (v180 != v47 && v47 != 1)
    {
      v171 = MTLReportFailureTypeEnabled();
      v45 = v205;
      v47 = v209;
      if (v171)
      {
        v178 = 0;
        v179 = v52;
        v174 = 0;
        v176 = v180;
        v172 = v194;
        MTLReportFailure();
        v45 = v205;
        v47 = v209;
      }
    }

    if (v49 != 1)
    {
LABEL_59:
      v53 = DWORD1(v47);
      if (v193 != DWORD1(v47) && DWORD1(v47) != 1)
      {
        v168 = MTLReportFailureTypeEnabled();
        v45 = v205;
        v47 = v209;
        if (v168)
        {
          v178 = 1;
          v179 = v53;
          v174 = 1;
          v176 = v193;
          v172 = v194;
          MTLReportFailure();
          v45 = v205;
          v47 = v209;
        }
      }

      if (v49 == 2)
      {
        goto LABEL_63;
      }
    }

    v54 = DWORD2(v47);
    if (v191 != DWORD2(v47) && DWORD2(v47) != 1)
    {
      v170 = MTLReportFailureTypeEnabled();
      v45 = v205;
      v47 = v209;
      if (v170)
      {
        v178 = 2;
        v179 = v54;
        v174 = 2;
        v176 = v191;
        v172 = v194;
        MTLReportFailure();
        v45 = v205;
        v47 = v209;
      }
    }

    if (v49 != 3)
    {
LABEL_63:
      v55 = HIDWORD(v47);
      if (v192 != HIDWORD(v47) && HIDWORD(v47) != 1)
      {
        v169 = MTLReportFailureTypeEnabled();
        v45 = v205;
        v47 = v209;
        if (v169)
        {
          v178 = 3;
          v179 = v55;
          v174 = 3;
          v176 = v192;
          v172 = v194;
          MTLReportFailure();
          v45 = v205;
          v47 = v209;
        }
      }
    }

    v228 = v47;
    v56 = *(&v228 & 0xFFFFFFFFFFFFFFF3 | (4 * (v49 & 3))) * v182;
    v227 = v45;
    v41 = v51;
    if (v56 != *(&v227 & 0xFFFFFFFFFFFFFFF3 | (4 * (v49 & 3))) && MTLReportFailureTypeEnabled())
    {
      v172 = v194;
      MTLReportFailure();
    }
  }

  v57 = *(v4 + 16);
  BaseTensor::GetAccessPattern();
  v59.i64[0] = 0xFF000000FFLL;
  v59.i64[1] = 0xFF000000FFLL;
  v60 = vandq_s8(vmovl_u16(vzip1_s8(v58, v58)), v59);
  v61 = vandq_s8(vmovl_u16(vzip1_s8(*(*(v4 + 208) + *v41), v60.n128_u64[0])), v59);
  v62 = *(v194 + *v48);
  v256 = 0;
  *&v63 = (*(**(v62 + 32) + 24))(*(v62 + 32), &v256, v60, v61, v205);
  v64 = BYTE4(v63);
  v65 = BYTE8(v63);
  v66 = HIDWORD(v63);
  v226 = v209;
  v67 = (&v225 & 0xFFFFFFFFFFFFFFF3 | (4 * (v63 & 3)));
  v68 = *(&v226 & 0xFFFFFFFFFFFFFFF3 | (4 * (v63 & 3)));
  v225 = v201;
  v69 = *(&v226 & 0xFFFFFFFFFFFFFFF3 | (4 * (BYTE4(v63) & 3)));
  _ZF = DWORD1(v63) != 1 && v63 == 1;
  v71 = !_ZF;
  v72 = *(&v226 & 0xFFFFFFFFFFFFFFF3 | (4 * (BYTE8(v63) & 3)));
  if (DWORD2(v63))
  {
    v73 = DWORD1(v63) == 0;
  }

  else
  {
    v73 = 2;
  }

  if (DWORD2(v63) == 1)
  {
    LODWORD(v74) = 2;
  }

  else
  {
    LODWORD(v74) = v71;
  }

  LODWORD(v63) = v68;
  DWORD1(v63) = *(&v226 & 0xFFFFFFFFFFFFFFF3 | (4 * (BYTE4(v63) & 3)));
  DWORD2(v63) = *(&v226 & 0xFFFFFFFFFFFFFFF3 | (4 * (BYTE8(v63) & 3)));
  v75 = *(&v226 & 0xFFFFFFFFFFFFFFF3 | (4 * (BYTE12(v63) & 3)));
  HIDWORD(v63) = v75;
  LODWORD(v77) = *v67;
  DWORD1(v77) = *(&v225 & 0xFFFFFFFFFFFFFFF3 | (4 * (v64 & 3)));
  v78 = *(&v225 & 0xFFFFFFFFFFFFFFF3 | (4 * (v66 & 3)));
  *(&v77 + 1) = __PAIR64__(v78, *(&v225 & 0xFFFFFFFFFFFFFFF3 | (4 * (v65 & 3))));
  v245 = v209;
  v244[0] = v63;
  v244[1] = v77;
  v249 = 0x100000001;
  v248 = 1;
  v250 = 1;
  __asm { FMOV            V2.2S, #1.0 }

  v83 = vcvtpd_u64_f64(v68 / SDWORD2(v77));
  v254 = _D2;
  v84 = vcvtpd_u64_f64(v69 / v78);
  if (_ZF)
  {
    v85 = 3;
  }

  else
  {
    v85 = v73;
  }

  if (v66 == 1)
  {
    v74 = 3;
  }

  else
  {
    v74 = v74;
  }

  v253 = 1065353216;
  v255 = 1065353216;
  v246 = v83;
  v247 = v84;
  if (v68 == 1)
  {
    v251 = 0.0;
    if (v69 == 1)
    {
      goto LABEL_86;
    }

LABEL_90:
    v96 = 1.0 / v84;
    v252 = v96;
    v183 = v40;
    v184 = v37;
    v206 = v68;
    if (v50)
    {
      goto LABEL_87;
    }

LABEL_91:
    v97 = v187;
    v98 = v188;
    goto LABEL_103;
  }

  v95 = 1.0 / v83;
  v251 = v95;
  if (v69 != 1)
  {
    goto LABEL_90;
  }

LABEL_86:
  v252 = 0.0;
  v183 = v40;
  v184 = v37;
  v206 = v68;
  if (!v50)
  {
    goto LABEL_91;
  }

LABEL_87:
  v86 = &v40[*MEMORY[0x277CD7410]];
  v87 = *v86;
  v88 = *(v86 + 1);
  v89 = *(v86 + 2);
  v90 = *(v86 + 3);
  v91 = *&v40[*v41];
  v224[3] = v90;
  v224[2] = v89;
  v224[1] = v88;
  v224[0] = v87;
  v92 = *MEMORY[0x277CD7428];
  v93 = v75;
  if (*(v224 + (v91 & 0xF)) == 1)
  {
    v94 = 0;
  }

  else
  {
    v94 = *&v40[8 * (v91 & 0xF) + v92];
  }

  v223[0] = v87;
  v223[1] = v88;
  v223[2] = v89;
  v223[3] = v90;
  v99 = BYTE1(v91) & 0xF;
  v100 = *(v223 + v99);
  v101 = &v40[v92];
  v102 = *v101;
  v103 = *(v101 + 1);
  v104 = *(v101 + 2);
  v105 = *(v101 + 3);
  v106 = *(v101 + 4);
  v107 = *(v101 + 5);
  v108 = *(v101 + 6);
  v109 = *(v101 + 7);
  v220[7] = v109;
  v220[5] = v107;
  v220[6] = v108;
  v220[3] = v105;
  v220[4] = v106;
  v220[1] = v103;
  v220[2] = v104;
  v220[0] = v102;
  v110 = *(v220 + v99);
  v222[0] = v87;
  v222[1] = v88;
  v222[2] = v89;
  v222[3] = v90;
  v111 = BYTE2(v91) & 0xF;
  v112 = *(v222 + v111);
  if (v100 == 1)
  {
    v113 = 0;
  }

  else
  {
    v113 = v110;
  }

  v219[6] = v108;
  v219[7] = v109;
  v219[4] = v106;
  v219[5] = v107;
  v219[2] = v104;
  v219[3] = v105;
  v219[0] = v102;
  v219[1] = v103;
  v114 = *(v219 + v111);
  if (v112 == 1)
  {
    v115 = 0;
  }

  else
  {
    v115 = *(v219 + v111);
  }

  v221[0] = v87;
  v221[1] = v88;
  v221[2] = v89;
  v221[3] = v90;
  v116 = BYTE3(v91) & 0xF;
  v117 = *(v221 + v116);
  v218[6] = v108;
  v218[7] = v109;
  v218[4] = v106;
  v218[5] = v107;
  v218[2] = v104;
  v218[3] = v105;
  v218[0] = v102;
  v218[1] = v103;
  v118 = *(v218 + v116);
  if (v117 == 1)
  {
    v119 = 0;
  }

  else
  {
    v119 = *(v218 + v116);
  }

  v120 = &v40[*MEMORY[0x277CD7418]];
  v121 = *v120;
  v122 = *(v120 + 1);
  v123 = *(v120 + 2);
  v124 = *(v120 + 3);
  v217[6] = v108;
  v217[7] = v109;
  v217[4] = v106;
  v217[5] = v107;
  v217[2] = v104;
  v217[3] = v105;
  v217[0] = v102;
  v217[1] = v103;
  v125 = v91 & 0xF;
  v126 = *(v217 + v125);
  v216[2] = v123;
  v216[3] = v124;
  v216[0] = v121;
  v216[1] = v122;
  v127 = v126 * *(v216 + v125);
  v215[2] = v123;
  v215[3] = v124;
  v215[0] = v121;
  v215[1] = v122;
  v128 = v127 + v110 * *(v215 + v99);
  v214[2] = v123;
  v214[3] = v124;
  v214[0] = v121;
  v214[1] = v122;
  v129 = v128 + v114 * *(v214 + v111);
  v213[2] = v123;
  v213[3] = v124;
  v213[0] = v121;
  v213[1] = v122;
  v130 = v129 + v118 * *(v213 + v116);
  v241 = v113;
  v242 = v115;
  v243 = v119;
  v240 = v94;
  v239 = v130;
  v238[2] = v113;
  v238[3] = v115;
  v238[4] = v119;
  v238[1] = v94;
  v238[0] = v130;
  v4 = v197;
  v42 = v194;
  v97 = v187;
  v98 = v188;
  v75 = v93;
LABEL_103:
  v131 = v195 == 4;
  if (v97)
  {
    v132 = 0x20000;
  }

  else
  {
    v132 = 0;
  }

  if (v98)
  {
    v132 = 0x40000;
  }

  v133 = v189 == 1;
  v134 = v131 & v133;
  if ((v131 & v133) != 0)
  {
    v135 = 2;
  }

  else
  {
    v135 = 1;
  }

  v136 = v195 == 2;
  v137 = !v136 || !v133;
  if (v136 && v133)
  {
    v138 = 4;
  }

  else
  {
    v138 = v135;
  }

  v211 = v63;
  *(&v211 & 0xFFFFFFFFFFFFFFF3 | (4 * (v85 & 3))) = 1;
  v139 = (&v212 & 0xFFFFFFFFFFFFFFF3 | (4 * (v74 & 3)));
  v212 = v211;
  v140 = v138 + *(&v212 | (4 * v74));
  if (v137)
  {
    v141 = v134;
  }

  else
  {
    v141 = 2;
  }

  *v139 = (v140 - 1) >> v141;
  v210 = v212;
  v202 = v69;
  v142 = v69 > 1;
  v143 = v75;
  v144 = -1;
  v232[4] = -1;
  v232[3] = -1;
  v233 = 0u;
  v234 = 0u;
  v232[5] = v49 & 3 | (v131 << 30) | (v189 << 19) | v132 & 0xFFFFFFC3 | ((v138 << 14) + 114688) & 0x1C000 | (4 * (v64 & 3)) & 0xCF | (16 * (v65 & 3)) | ((v66 & 3) << 6) | (v142 << 8) | ((v72 > 1) << 9) | ((v75 > 1) << 10);
  v235 = 0;
  v236 = [*(v4 + 16) count] | ((*(v4 + 112) != 0) << 8) | 0x10000;
  v237 = 0;
  if (v198)
  {
    v145 = 5;
  }

  else
  {
    v145 = 4;
  }

  v146 = (&CommonKernels)[16 * v145];
  v175 = *(v42 + *MEMORY[0x277CD7360]);
  v177 = *(v42 + *MEMORY[0x277CD7368]);
  v173 = *(v4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v147 = MEMORY[0x277CD7370];
  v148 = *(v42 + *MEMORY[0x277CD7370]);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    v150 = PipelineStateForMPSKey;
    [v185 setComputePipelineState:{PipelineStateForMPSKey, v173, v175, v177, 0, 0}];
    v151 = *(v42 + *v147);
    MPSLibrary::ReleaseMPSKey();
    v152 = [v150 threadExecutionWidth];
    if (v152 <= 1)
    {
      v153 = 1;
    }

    else
    {
      v153 = v152;
    }

    v154 = [v150 maxTotalThreadsPerThreadgroup];
    v155 = 256;
    if (v154 < 0x100)
    {
      v155 = v154;
    }

    if (v155 <= 2 * v153)
    {
      if (v198)
      {
        v157 = v72;
        v158 = v143;
        v156 = 1;
        v159 = (v153 + v206 - 1) / v153;
LABEL_132:
        v161 = v156 + v202 - 1;
LABEL_143:
        v160 = v161 / v156;
        goto LABEL_144;
      }

      v156 = 1;
    }

    else
    {
      v156 = v155 / v153;
      if (v198)
      {
        v157 = v72;
        v158 = v143;
        v159 = (v153 + v206 - 1) / v153;
        if (v153 > v155)
        {
          v160 = 0;
          v156 = 0;
LABEL_144:
          v164 = v157 * v158;
          [v185 setBytes:v238 length:120 atIndex:28];
          [v185 setBuffer:objc_msgSend(v183 offset:"buffer") atIndex:{*(*(v197 + 8) + 80 * v184 + 64), 27}];
          MPSSetNDArraysOnComputeEncoder(v185, v197, 4, 1, v198);
          [v185 setBytes:v244 length:128 atIndex:29];
          v232[0] = v159;
          v232[1] = v160;
          v232[2] = v164;
          v231[0] = v153;
          v231[1] = v156;
          v231[2] = 1;
          [v185 dispatchThreadgroups:v232 threadsPerThreadgroup:v231];
          MPSLibrary::ReleaseComputeState();
          return 0;
        }

        goto LABEL_132;
      }
    }

    if (v156 >= SDWORD1(v210))
    {
      v162 = SDWORD1(v210);
    }

    else
    {
      v162 = v156;
    }

    do
    {
      v163 = v162;
      if (v162 < 2)
      {
        break;
      }

      v162 *= 2;
    }

    while (v163 * v153 < v153);
    if (SDWORD1(v210) % v163)
    {
      v156 = 1;
    }

    else
    {
      v156 = v163;
    }

    v159 = v210;
    v161 = SDWORD1(v210) + v156 - 1;
    v157 = DWORD2(v210);
    v158 = HIDWORD(v210);
    goto LABEL_143;
  }

  return v144;
}

void sub_239A526F0(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
    if ((*(v1 - 97) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v1 - 97) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*(v1 - 120));
  _Unwind_Resume(a1);
}

uint64_t EncodeArrayLUTGEMV(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v9 = v8;
  v11 = v10;
  v12 = v7;
  if (*(v7 + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    HIBYTE(v636[2]) = 21;
    strcpy(v636, "MPSNDArrayLUTGEMVTest");
    v635 = 0;
    LOBYTE(v634) = 0;
    MPSKernelLogPerfTestCommandline(v7, v8, v636, &v634);
    if (v635 < 0)
    {
      operator delete(v634);
      if ((SHIBYTE(v636[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((SHIBYTE(v636[2]) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(v636[0]);
  }

LABEL_4:
  v498 = *(v12 + *MEMORY[0x277CD7370]);
  v518 = *(v12 + 144);
  v524 = *(v12 + 145);
  v13 = *(v12 + 152);
  v14 = *(v12 + 160);
  v15 = [*(v9 + 232) graph];
  v16 = **(v15 + 56);
  if (*(*(v15 + 56) + 8) == v16)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v17 = *v16;
  v19 = *(*v16 + 8);
  v18 = *v19;
  v20 = v19[1] - *v19;
  if (v20 <= 8 || (v502 = v12, v514 = v9, v21 = **(v17 + 24), *(*(v17 + 24) + 8) == v21))
  {
LABEL_467:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v503 = *v18;
  v509 = v18[1];
  v22 = *v21;
  if (!v518)
  {
    v23 = 0;
    v24 = 2;
    v512 = v14;
    v519 = v13;
    if (!v13)
    {
      goto LABEL_10;
    }

LABEL_15:
    if ([v13 quantizationScheme] == 1)
    {
      v29 = **(v17 + 8);
      if (v24 >= (*(*(v17 + 8) + 8) - v29) >> 3)
      {
        goto LABEL_467;
      }

      v25 = *(v29 + 8 * v24);
      v30 = [v13 hasZeroPoint];
      if (v30)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      v32 = v31 + v24;
      if (v30)
      {
        v33 = 3;
      }

      else
      {
        v33 = 1;
      }

      v34 = [v13 hasMinValue];
      v24 = v32 + v34;
      if (v34)
      {
        v35 = v33 | 4;
      }

      else
      {
        v35 = v33;
      }

      v36 = ([v13 quantizationDataType] >> 26) & 8 | v35;
      [v13 implicitZeroPoint];
      v505 = v36;
      if (!v524)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v25 = 0;
      v505 = 0;
      if (!v524)
      {
        goto LABEL_29;
      }
    }

LABEL_11:
    v26 = **(v17 + 8);
    v27 = v512;
    if (v24 >= (*(*(v17 + 8) + 8) - v26) >> 3)
    {
      goto LABEL_467;
    }

    v28 = *(v26 + 8 * v24++);
    v496 = v17;
    if (!v512)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  if (v20 == 16)
  {
    goto LABEL_467;
  }

  v23 = v18[2];
  v24 = 3;
  v512 = v14;
  v519 = v13;
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_10:
  v25 = 0;
  v505 = 0;
  if (v524)
  {
    goto LABEL_11;
  }

LABEL_29:
  v28 = 0;
  v27 = v512;
  v496 = v17;
  if (!v512)
  {
LABEL_38:
    v517 = 0;
    v38 = 0;
    goto LABEL_39;
  }

LABEL_30:
  if ([v27 quantizationScheme] != 1)
  {
    goto LABEL_38;
  }

  v37 = **(v17 + 8);
  if (v24 >= (*(*(v17 + 8) + 8) - v37) >> 3)
  {
    goto LABEL_467;
  }

  v38 = *(v37 + 8 * v24);
  if ([v27 hasZeroPoint])
  {
    v39 = 3;
  }

  else
  {
    v39 = 1;
  }

  if ([v27 hasMinValue])
  {
    v39 |= 4u;
  }

  v517 = ([v27 quantizationDataType] >> 26) & 8 | v39;
  [v27 implicitZeroPoint];
LABEL_39:
  v491 = v11;
  DimensionSize = BaseTensor::GetDimensionSize(v22);
  v506 = BaseTensor::GetDimensionSize(v22);
  v494 = BaseTensor::GetDimensionSize(v22);
  v492 = BaseTensor::GetDimensionSize(v22);
  v40 = BaseTensor::GetDimensionSize(v503);
  v41 = BaseTensor::GetDimensionSize(v503);
  v483 = BaseTensor::GetDimensionSize(v503);
  v487 = BaseTensor::GetDimensionSize(v503);
  v42 = BaseTensor::GetDimensionSize(v509);
  v481 = BaseTensor::GetDimensionSize(v509);
  v485 = BaseTensor::GetDimensionSize(v509);
  v489 = BaseTensor::GetDimensionSize(v509);
  v516 = 0u;
  if (v23)
  {
    v44 = BaseTensor::GetDimensionSize(v23);
    v45 = BaseTensor::GetDimensionSize(v23);
    v46 = BaseTensor::GetDimensionSize(v23);
    v47 = BaseTensor::GetDimensionSize(v23);
    v48.i64[0] = __PAIR64__(v45, v44);
    v48.i64[1] = __PAIR64__(v47, v46);
    v511 = v48;
    v49 = 31 - __clz(v44);
    if (v44)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    if (v28)
    {
LABEL_44:
      v51 = v50;
      v52 = BaseTensor::GetDimensionSize(v28);
      v53 = BaseTensor::GetDimensionSize(v28);
      v54 = BaseTensor::GetDimensionSize(v28);
      v55 = BaseTensor::GetDimensionSize(v28);
      v50 = v51;
      v56.i64[0] = __PAIR64__(v53, v52);
      v56.i64[1] = __PAIR64__(v55, v54);
      v516 = v56;
      v57 = 31 - __clz(v52);
      if (v52)
      {
        v58 = v57;
      }

      else
      {
        v58 = 0;
      }

      v59 = v519;
      LODWORD(v43) = v40;
      v500 = 0u;
      v501 = 0u;
      if (v25)
      {
        goto LABEL_48;
      }

      goto LABEL_49;
    }
  }

  else
  {
    v50 = 8;
    v511 = 0uLL;
    if (v28)
    {
      goto LABEL_44;
    }
  }

  v58 = 8;
  v59 = v519;
  LODWORD(v43) = v40;
  v500 = 0u;
  v501 = 0u;
  if (v25)
  {
LABEL_48:
    v525 = v43;
    v60 = BaseTensor::GetDimensionSize(v25);
    v61 = BaseTensor::GetDimensionSize(v25);
    v62 = BaseTensor::GetDimensionSize(v25);
    v63 = BaseTensor::GetDimensionSize(v25);
    v64.i64[0] = __PAIR64__(v61, v60);
    v64.i64[1] = __PAIR64__(v63, v62);
    v500 = v64;
    v65 = [v59 quantizationDataType];
    v43 = v525;
    v50 = v65;
  }

LABEL_49:
  LODWORD(v66) = v42;
  DWORD1(v43) = v41;
  v515 = v50;
  if (v38)
  {
    v526 = v43;
    v520 = v42;
    v67 = BaseTensor::GetDimensionSize(v38);
    v68 = BaseTensor::GetDimensionSize(v38);
    v69 = BaseTensor::GetDimensionSize(v38);
    v70 = BaseTensor::GetDimensionSize(v38);
    v71.i64[0] = __PAIR64__(v68, v67);
    v71.i64[1] = __PAIR64__(v70, v69);
    v501 = v71;
    v72 = [v512 quantizationDataType];
    LODWORD(v66) = v520;
    v43 = v526;
    v50 = v515;
    v58 = v72;
  }

  DWORD1(v66) = v481;
  DWORD2(v43) = v483;
  v632 = 0;
  v633 = 0;
  v630 = 0;
  v631 = 0;
  v73 = v505;
  if (v505)
  {
    v74 = 1;
  }

  else
  {
    v74 = v518;
  }

  if (v517)
  {
    v75 = 1;
  }

  else
  {
    v75 = v524;
  }

  if ((v74 & 1) == 0 && !v75)
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v84 = v487;
    v83 = v489;
    v85 = v485;
    goto LABEL_116;
  }

  v521 = v66;
  v527 = v43;
  GetPlaceHolderIndexInSourceArrayLUT([*(v514 + 232) graph], v74, v75, &v633, &v632);
  if (((v505 | v517) & 2) != 0)
  {
    v73 = v505;
    GetPlaceHolderIndexInSourceArrayLUT([*(v514 + 232) graph], (v505 >> 1) & 1, (v517 >> 1) & 1, &v631, &v630);
  }

  if (!v74)
  {
    v78 = 0;
    v80 = 0;
    v84 = v487;
    v83 = v489;
    if (v75)
    {
      goto LABEL_70;
    }

    goto LABEL_76;
  }

  v80 = [*(v514 + 16) objectAtIndexedSubscript:v633];
  v84 = v487;
  if ((v73 & 2) == 0)
  {
    v78 = 0;
    v83 = v489;
    if (v75)
    {
      goto LABEL_70;
    }

LABEL_76:
    v77 = 0;
    v79 = 0;
    v50 = v515;
    v88 = MEMORY[0x277CD73D8];
    v85 = v485;
    if (!v80)
    {
      goto LABEL_94;
    }

    goto LABEL_77;
  }

  v78 = [*(v514 + 16) objectAtIndexedSubscript:v631];
  v83 = v489;
  if (!v75)
  {
    goto LABEL_76;
  }

LABEL_70:
  v79 = [*(v514 + 16) objectAtIndexedSubscript:v632];
  if ((v517 & 2) == 0)
  {
    v77 = 0;
    v50 = v515;
    v88 = MEMORY[0x277CD73D8];
    v85 = v485;
    if (!v80)
    {
      goto LABEL_94;
    }

LABEL_77:
    v89 = *v88;
    v90 = *(v80 + v89);
    if (v79)
    {
      v91 = (v79 + v89);
      v92 = BYTE1(v90) == 0;
      v93 = v91[1] == 0;
      if (!BYTE2(v90))
      {
        v92 = 2;
      }

      if (!v91[2])
      {
        v93 = 2;
      }

      if (BYTE3(v90))
      {
        v82 = v92;
      }

      else
      {
        v82 = 3;
      }

      if (v91[3])
      {
        v81 = v93;
      }

      else
      {
        v81 = 3;
      }

      if (v50 == 4)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v81 = 0;
      v448 = BYTE1(v90) == 0;
      if (!BYTE2(v90))
      {
        v448 = 2;
      }

      if (BYTE3(v90))
      {
        v82 = v448;
      }

      else
      {
        v82 = 3;
      }

      if (v50 == 4)
      {
        goto LABEL_89;
      }
    }

LABEL_101:
    if (v50 != 2)
    {
      v76 = 0;
      if (v58 == 4)
      {
        goto LABEL_110;
      }

      goto LABEL_109;
    }

    if ((*(v80 + *MEMORY[0x277CD7408]) & 3) != 0 || (*(v80 + *MEMORY[0x277CD7418]) & 3) != 0 || (*(v80 + *MEMORY[0x277CD7410]) & 3) != 0)
    {
      goto LABEL_105;
    }

    goto LABEL_452;
  }

  v86 = v79;
  v87 = [*(v514 + 16) objectAtIndexedSubscript:v630];
  v79 = v86;
  v77 = v87;
  v50 = v515;
  v88 = MEMORY[0x277CD73D8];
  v85 = v485;
  if (v80)
  {
    goto LABEL_77;
  }

LABEL_94:
  if (v79)
  {
    v82 = 0;
    v94 = (v79 + *v88);
    v95 = v94[1] == 0;
    if (!v94[2])
    {
      v95 = 2;
    }

    if (v94[3])
    {
      v81 = v95;
    }

    else
    {
      v81 = 3;
    }

    if (v50 != 4)
    {
      goto LABEL_101;
    }
  }

  else
  {
    v81 = 0;
    v82 = 0;
    if (v50 != 4)
    {
      goto LABEL_101;
    }
  }

LABEL_89:
  if ((*(v80 + *MEMORY[0x277CD7408]) & 3) != 0 || (*(v80 + *MEMORY[0x277CD7418]) & 3) != 0 || (*(v80 + *MEMORY[0x277CD7410]) & 3) != 0)
  {
LABEL_105:
    v96 = 1;
    goto LABEL_106;
  }

LABEL_452:
  v96 = 0;
LABEL_106:
  v97 = *(v80 + *v88);
  v98.i32[0] = v97;
  v98.i32[1] = BYTE1(v97);
  *&v97 = vtst_s32(v98, 0xFF000000FFLL);
  v76 = v96 | v97 & BYTE4(v97);
  if (v58 == 4)
  {
LABEL_110:
    if ((*(v79 + *MEMORY[0x277CD7408]) & 3) != 0 || (*(v79 + *MEMORY[0x277CD7418]) & 3) != 0 || (*(v79 + *MEMORY[0x277CD7410]) & 3) != 0)
    {
      v76 = 1;
    }

    v99 = *(v79 + *v88);
    v100.i32[0] = v99;
    v100.i32[1] = BYTE1(v99);
    *&v99 = vtst_s32(v100, 0xFF000000FFLL);
    v76 |= v99 & BYTE4(v99);
    goto LABEL_115;
  }

LABEL_109:
  if (v58 == 2)
  {
    goto LABEL_110;
  }

LABEL_115:
  v43 = v527;
  *&v66 = v521;
LABEL_116:
  DWORD2(v66) = v85;
  HIDWORD(v43) = v84;
  v101 = v50 == 4;
  if (v82)
  {
    v101 = 0;
    v102 = 0;
  }

  else
  {
    v102 = v50 == 2;
  }

  v103 = v81 == 1 && v58 == 4;
  v104 = v81 == 1 && v58 == 2;
  if (v50 == 4 && v80 && *(v80 + *MEMORY[0x277CD73C8]) == 8)
  {
    v589 = v43;
    *(&v589 & 0xFFFFFFFFFFFFFFF3 | (4 * (v82 & 3))) = 2 * *(&v589 | (4 * v82));
    v43 = v589;
  }

  HIDWORD(v66) = v83;
  if (v58 == 4 && v79 && *(v79 + *MEMORY[0x277CD73C8]) == 8)
  {
    v588 = v66;
    *(&v588 & 0xFFFFFFFFFFFFFFF3 | (4 * (v81 & 3))) = 2 * *(&v588 | (4 * v81));
    v66 = v588;
  }

  if (v50 == 2 && v80 && *(v80 + *MEMORY[0x277CD73C8]) == 8)
  {
    v587 = v43;
    *(&v587 & 0xFFFFFFFFFFFFFFF3 | (4 * (v82 & 3))) = 4 * *(&v587 | (4 * v82));
    v43 = v587;
  }

  v488 = v81;
  v490 = v82;
  v484 = v101;
  v486 = v76;
  v482 = v102;
  v479 = v104;
  v480 = v103;
  if (v58 == 2 && v79 && *(v79 + *MEMORY[0x277CD73C8]) == 8)
  {
    v586 = v66;
    *(&v586 & 0xFFFFFFFFFFFFFFF3 | (4 * (v81 & 3))) = 4 * *(&v586 | (4 * v81));
    v66 = v586;
  }

  v105 = DWORD1(v43);
  v106 = DWORD1(v66);
  v513 = v79;
  v528 = v43;
  v522 = v66;
  if ((*(v502 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (v50 > 8 || ((1 << v50) & 0x114) == 0)
    {
      v404 = MTLReportFailureTypeEnabled();
      v66 = v522;
      v43 = v528;
      if (v404)
      {
        v461 = v502;
        MTLReportFailure();
        v66 = v522;
        v43 = v528;
      }
    }

    if (v58 > 8 || ((1 << v58) & 0x114) == 0)
    {
      v405 = MTLReportFailureTypeEnabled();
      v66 = v522;
      v43 = v528;
      if (v405)
      {
        v461 = v502;
        MTLReportFailure();
        v66 = v522;
        v43 = v528;
      }
    }

    v107 = DWORD2(v43);
    v108 = v494;
    if (v494 != DWORD2(v43) && DWORD2(v43) != 1)
    {
      v455 = MTLReportFailureTypeEnabled();
      v66 = v522;
      v108 = v494;
      v43 = v528;
      if (v455)
      {
        v467 = 2;
        v468 = v107;
        v463 = 2;
        v465 = v494;
        v461 = v502;
        MTLReportFailure();
        v66 = v522;
        v108 = v494;
        v43 = v528;
      }
    }

    v110 = DWORD2(v66);
    if (v108 != DWORD2(v66) && DWORD2(v66) != 1)
    {
      v456 = MTLReportFailureTypeEnabled();
      v66 = v522;
      v43 = v528;
      if (v456)
      {
        v467 = 2;
        v468 = v110;
        v463 = 2;
        v465 = v494;
        v461 = v502;
        MTLReportFailure();
        v66 = v522;
        v43 = v528;
      }
    }

    v112 = HIDWORD(v43);
    v113 = v492;
    if (v492 != HIDWORD(v43) && HIDWORD(v43) != 1)
    {
      v457 = MTLReportFailureTypeEnabled();
      v66 = v522;
      v113 = v492;
      LODWORD(v43) = v528;
      if (v457)
      {
        v467 = 3;
        v468 = v112;
        v463 = 3;
        v465 = v492;
        v461 = v502;
        MTLReportFailure();
        v66 = v522;
        v113 = v492;
        LODWORD(v43) = v528;
      }
    }

    v115 = HIDWORD(v66);
    if (v113 != HIDWORD(v66) && HIDWORD(v66) != 1)
    {
      v458 = MTLReportFailureTypeEnabled();
      LODWORD(v66) = v522;
      LODWORD(v43) = v528;
      if (v458)
      {
        v467 = 3;
        v468 = v115;
        v463 = 3;
        v465 = v492;
        v461 = v502;
        MTLReportFailure();
        LODWORD(v66) = v522;
        LODWORD(v43) = v528;
      }
    }

    v117 = v66;
    if (DimensionSize != v66)
    {
      v459 = MTLReportFailureTypeEnabled();
      LODWORD(v43) = v528;
      if (v459)
      {
        v463 = DimensionSize;
        v465 = v117;
        v461 = v502;
        MTLReportFailure();
        LODWORD(v43) = v528;
      }
    }

    if (v506 != v105)
    {
      v460 = MTLReportFailureTypeEnabled();
      LODWORD(v43) = v528;
      if (v460)
      {
        v463 = v506;
        v465 = v105;
        v461 = v502;
        MTLReportFailure();
        LODWORD(v43) = v528;
      }
    }

    v118 = v43;
    if (v43 != v106 && MTLReportFailureTypeEnabled())
    {
      v463 = v118;
      v465 = v106;
      v461 = v502;
      MTLReportFailure();
    }
  }

  v119 = *(v514 + 16);
  BaseTensor::GetAccessPattern();
  v477 = v120;
  v121 = *(v514 + 16);
  BaseTensor::GetAccessPattern();
  v125 = **(v496 + 8);
  v126 = *(*(v496 + 8) + 8) - v125;
  if (!v126)
  {
    goto LABEL_467;
  }

  v504 = v58;
  v510 = v80;
  *v499 = v77;
  v497 = v78;
  if (v126 <= 8)
  {
    goto LABEL_467;
  }

  v123.i32[0] = 0;
  v127.n128_u64[0] = __PAIR64__(v506, DimensionSize);
  v127.n128_u64[1] = __PAIR64__(v492, v494);
  v124.i32[0] = v517;
  v128 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v124, v123)), 0), v501, v516);
  v493 = v128;
  v128.i32[0] = v73;
  v473 = v127;
  v475 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_s32(v128, v123)), 0), v500, v511);
  v129 = *(*v125 + 8);
  v130 = *(v125[1] + 8);
  v131 = v528 * v105 * SDWORD2(v528) * SHIDWORD(v528);
  if (((v129 >> 3) & 0x1FFE) != 0)
  {
    v132 = v129 >> 3;
  }

  else
  {
    v132 = 1;
  }

  if (((v130 >> 3) & 0x1FFE) != 0)
  {
    v133 = v130 >> 3;
  }

  else
  {
    v133 = 1;
  }

  v134 = v131 * v132;
  v135 = v522 * v106 * SDWORD2(v522) * SHIDWORD(v522) * v133;
  v136 = vzip1_s8(v477, v122);
  v137 = v122.u8[0];
  v138 = vzip1_s8(v122, v122);
  v139.i64[0] = 0xFF000000FFLL;
  v139.i64[1] = 0xFF000000FFLL;
  v140 = vandq_s8(vmovl_u16(vzip1_s8(*(*(v514 + 208) + *MEMORY[0x277CD73D8]), v138)), v139);
  v141 = vbsl_s8(vcgtd_u64(v131 * v132, v135), v136, v138);
  v142 = v477.i8[0] == 0;
  v143 = *(v502 + *MEMORY[0x277CD7370]);
  v629 = 0;
  v144 = *(v143 + 32);
  *v145.i64 = (*(*v144 + 24))(v144, &v629, vandq_s8(vmovl_u16(v141), v139), v140, v127);
  v146 = v145.i8[0];
  LODWORD(v147) = v145.i32[1] == 0;
  v149 = v145.i32[1] == 1 || v145.i32[0] != 1;
  if (!v145.i32[2])
  {
    LODWORD(v147) = 2;
  }

  if (v145.i32[2] == 1)
  {
    v150 = 2;
  }

  else
  {
    v150 = v149;
  }

  if (v145.i32[3])
  {
    v147 = v147;
  }

  else
  {
    v147 = 3;
  }

  v470 = v147;
  if (v145.i32[3] == 1)
  {
    v151 = 3;
  }

  else
  {
    v151 = v150;
  }

  v471 = v151;
  v152 = v137 == 1;
  if (v134 <= v135)
  {
    v153 = v130;
  }

  else
  {
    v153 = v129;
  }

  v478 = v153;
  v585 = v473;
  v154 = *(&v585 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[0] & 3)));
  v155 = (&v581 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[8] & 3)));
  v584 = v528;
  v156 = *(&v584 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[0] & 3)));
  v583 = v522;
  v157 = *(&v583 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[0] & 3)));
  v582 = v475;
  v581 = v493;
  LODWORD(v170) = *(&v582 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[0] & 3)));
  LODWORD(v172) = *(&v581 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[0] & 3)));
  v158 = *(&v584 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[4] & 3)));
  v159 = *(&v583 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[4] & 3)));
  v160 = *(&v582 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[4] & 3)));
  v161 = *(&v581 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[4] & 3)));
  v162 = *(&v584 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[8] & 3)));
  v163 = *(&v583 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[8] & 3)));
  v164 = *(&v582 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[8] & 3)));
  v165 = *v155;
  LODWORD(v166) = v154;
  v476 = *(&v585 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[4] & 3)));
  DWORD1(v166) = v476;
  v472 = *(&v585 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[12] & 3)));
  v474 = *(&v585 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[8] & 3)));
  *(&v166 + 1) = __PAIR64__(v472, v474);
  v167 = *(&v584 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[12] & 3)));
  v168 = *(&v583 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[12] & 3)));
  DWORD1(v170) = v160;
  v169 = *(&v582 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[12] & 3)));
  *(&v170 + 1) = __PAIR64__(v169, v164);
  v171 = *(&v581 & 0xFFFFFFFFFFFFFFF3 | (4 * (v145.i8[12] & 3)));
  DWORD1(v172) = v161;
  *(&v172 + 1) = __PAIR64__(v171, *v155);
  if (v134 > v135)
  {
    v152 = v142;
  }

  v523 = v152;
  v622 = v528;
  if (v134 <= v135)
  {
    v173 = v504;
  }

  else
  {
    v173 = v515;
  }

  v619 = v166;
  v620 = v170;
  v621 = v172;
  *&v174 = 0x100000001;
  *(&v174 + 1) = 0x100000001;
  v623 = v174;
  v624 = v174;
  __asm { FMOV            V1.4S, #1.0 }

  v625 = _Q1;
  v626 = _Q1;
  v495 = v145;
  v469 = v166;
  if (!v518)
  {
    v185 = v497;
    v186 = *v499;
    v187 = v510;
    v188 = v513;
    v189 = MEMORY[0x277CD73D8];
    if (!v73)
    {
      goto LABEL_217;
    }

    v190.i64[0] = v156;
    v190.i64[1] = v158;
    v191 = vcvtq_f64_s64(v190);
    v190.i64[0] = v500.i32[0];
    v190.i64[1] = v500.i32[1];
    v192 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vdivq_f64(v191, vcvtq_f64_s64(v190)))));
    *&v623 = v192;
    v190.i64[0] = v162;
    v190.i64[1] = v167;
    v193 = vcvtq_f64_s64(v190);
    v190.i64[0] = v500.i32[2];
    v190.i64[1] = v500.i32[3];
    v194 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vdivq_f64(v193, vcvtq_f64_s64(v190)))));
    *(&v623 + 1) = v194;
    if (v156 == 1)
    {
      LODWORD(v625) = 0;
      if (v158 == 1)
      {
        goto LABEL_213;
      }
    }

    else
    {
      v398 = 1.0 / v192.u32[0];
      *&v625 = v398;
      if (v158 == 1)
      {
LABEL_213:
        DWORD1(v625) = 0;
        v195 = 0.0;
        if (v162 == 1)
        {
          goto LABEL_214;
        }

        goto LABEL_334;
      }
    }

    v399 = 1.0 / v192.u32[1];
    *(&v625 + 1) = v399;
    v195 = 0.0;
    if (v162 == 1)
    {
LABEL_214:
      DWORD2(v625) = 0;
      if (v167 == 1)
      {
LABEL_216:
        *(&v625 + 3) = v195;
        goto LABEL_217;
      }

LABEL_215:
      v195 = 1.0 / v194.u32[1];
      goto LABEL_216;
    }

LABEL_334:
    v400 = 1.0 / v194.u32[0];
    *(&v625 + 2) = v400;
    if (v167 == 1)
    {
      goto LABEL_216;
    }

    goto LABEL_215;
  }

  v179 = vcvtpd_u64_f64(v158 / v164);
  *&v623 = __PAIR64__(v179, vcvtpd_u64_f64(v156 / v160));
  v180 = vcvtpd_u64_f64(v162 / v169);
  DWORD2(v623) = v180;
  v181 = 0.0;
  v182 = 1.0 / v623;
  if (v156 == 1)
  {
    v182 = 0.0;
  }

  v183 = 1.0 / v179;
  if (v158 == 1)
  {
    v183 = 0.0;
  }

  *&v625 = __PAIR64__(LODWORD(v183), LODWORD(v182));
  if (v162 != 1)
  {
    v184 = 1.0 / v180;
    v181 = v184;
  }

  *(&v625 + 2) = v181;
  v185 = v497;
  v186 = *v499;
  v187 = v510;
  v188 = v513;
  v189 = MEMORY[0x277CD73D8];
LABEL_217:
  if (v524)
  {
    v196 = vcvtpd_u64_f64(v157 / v161);
    v197 = vcvtpd_u64_f64(v159 / v165);
    *&v624 = __PAIR64__(v197, v196);
    v198 = vcvtpd_u64_f64(v163 / v171);
    DWORD2(v624) = v198;
    if (v157 == 1)
    {
      LODWORD(v626) = 0;
      if (v159 == 1)
      {
        goto LABEL_220;
      }
    }

    else
    {
      v396 = 1.0 / v196;
      *&v626 = v396;
      if (v159 == 1)
      {
LABEL_220:
        DWORD1(v626) = 0;
        v199 = 0.0;
        if (v163 == 1)
        {
LABEL_222:
          *(&v626 + 2) = v199;
          goto LABEL_230;
        }

LABEL_221:
        v199 = 1.0 / v198;
        goto LABEL_222;
      }
    }

    v397 = 1.0 / v197;
    *(&v626 + 1) = v397;
    v199 = 0.0;
    if (v163 == 1)
    {
      goto LABEL_222;
    }

    goto LABEL_221;
  }

  if (v517)
  {
    v200.i64[0] = v157;
    v200.i64[1] = v159;
    v201 = vcvtq_f64_s64(v200);
    v200.i64[0] = v501.i32[0];
    v200.i64[1] = v501.i32[1];
    v202 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vdivq_f64(v201, vcvtq_f64_s64(v200)))));
    *&v624 = v202;
    v200.i64[0] = v163;
    v200.i64[1] = v168;
    v203 = vcvtq_f64_s64(v200);
    v200.i64[0] = v501.i32[2];
    v200.i64[1] = v501.i32[3];
    v204 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vdivq_f64(v203, vcvtq_f64_s64(v200)))));
    *(&v624 + 1) = v204;
    if (v157 == 1)
    {
      LODWORD(v626) = 0;
      if (v159 == 1)
      {
        goto LABEL_226;
      }
    }

    else
    {
      v401 = 1.0 / v202.u32[0];
      *&v626 = v401;
      if (v159 == 1)
      {
LABEL_226:
        DWORD1(v626) = 0;
        v205 = 0.0;
        if (v163 == 1)
        {
          goto LABEL_227;
        }

        goto LABEL_338;
      }
    }

    v402 = 1.0 / v202.u32[1];
    *(&v626 + 1) = v402;
    v205 = 0.0;
    if (v163 == 1)
    {
LABEL_227:
      DWORD2(v626) = 0;
      if (v168 == 1)
      {
LABEL_229:
        *(&v626 + 3) = v205;
        goto LABEL_230;
      }

LABEL_228:
      v205 = 1.0 / v204.u32[1];
      goto LABEL_229;
    }

LABEL_338:
    v403 = 1.0 / v204.u32[0];
    *(&v626 + 2) = v403;
    if (v168 == 1)
    {
      goto LABEL_229;
    }

    goto LABEL_228;
  }

LABEL_230:
  if (!v187)
  {
    if (!v188)
    {
      goto LABEL_259;
    }

    goto LABEL_246;
  }

  v206 = (v187 + *MEMORY[0x277CD7410]);
  v207 = *v206;
  v208 = v206[1];
  v209 = v206[2];
  v210 = v206[3];
  v211 = *(v187 + *v189);
  v580[3] = v210;
  v580[2] = v209;
  v580[1] = v208;
  v580[0] = v207;
  v212 = *MEMORY[0x277CD7428];
  if (*(v580 + (v211 & 0xF)) == 1)
  {
    v213 = 0;
  }

  else
  {
    v213 = *(v187 + 8 * (v211 & 0xF) + v212);
  }

  v579[0] = v207;
  v579[1] = v208;
  v579[2] = v209;
  v579[3] = v210;
  v214 = BYTE1(v211) & 0xF;
  v215 = *(v579 + v214);
  v216 = (v187 + v212);
  v217 = *v216;
  v218 = v216[1];
  v219 = v216[2];
  v220 = v216[3];
  v221 = v216[4];
  v222 = v216[5];
  v223 = v216[6];
  v224 = v216[7];
  v576[7] = v224;
  v576[6] = v223;
  v576[5] = v222;
  v576[4] = v221;
  v576[3] = v220;
  v576[2] = v219;
  v576[1] = v218;
  v576[0] = v217;
  v225 = *(v576 + v214);
  if (v215 == 1)
  {
    v226 = 0;
  }

  else
  {
    v226 = *(v576 + v214);
  }

  v578[0] = v207;
  v578[1] = v208;
  v578[2] = v209;
  v578[3] = v210;
  v227 = BYTE2(v211) & 0xF;
  v228 = *(v578 + v227);
  v575[7] = v224;
  v575[6] = v223;
  v575[5] = v222;
  v575[4] = v221;
  v575[3] = v220;
  v575[2] = v219;
  v575[1] = v218;
  v575[0] = v217;
  v229 = *(v575 + v227);
  if (v228 == 1)
  {
    v230 = 0;
  }

  else
  {
    v230 = *(v575 + v227);
  }

  v577[0] = v207;
  v577[1] = v208;
  v577[2] = v209;
  v577[3] = v210;
  v231 = *(v577 + (BYTE3(v211) & 0xF));
  v574[7] = v224;
  v574[6] = v223;
  v574[5] = v222;
  v574[4] = v221;
  v574[3] = v220;
  v574[2] = v219;
  v574[1] = v218;
  v574[0] = v217;
  v232 = *(v574 + (BYTE3(v211) & 0xF));
  if (v231 == 1)
  {
    v233 = 0;
  }

  else
  {
    v233 = *(v574 + (BYTE3(v211) & 0xF));
  }

  v234 = (v187 + *MEMORY[0x277CD7418]);
  v235 = *v234;
  v236 = v234[1];
  v237 = v234[2];
  v238 = v234[3];
  v573[7] = v224;
  v573[6] = v223;
  v573[5] = v222;
  v573[4] = v221;
  v573[3] = v220;
  v573[2] = v219;
  v573[1] = v218;
  v573[0] = v217;
  v239 = v211 & 0xF;
  v240 = *(v573 + v239);
  v572[3] = v238;
  v572[2] = v237;
  v572[1] = v236;
  v572[0] = v235;
  v241 = *(v572 + v239);
  v571[3] = v238;
  v571[2] = v237;
  v571[1] = v236;
  v571[0] = v235;
  v242 = v240 * v241 + v225 * *(v571 + v214);
  v570[3] = v238;
  v570[2] = v237;
  v570[1] = v236;
  v570[0] = v235;
  v243 = v242 + v229 * *(v570 + v227);
  v569[3] = v238;
  v569[2] = v237;
  v569[1] = v236;
  v569[0] = v235;
  v244 = v243 + v232 * *(v569 + (BYTE3(v211) & 0xF));
  v611 = v226;
  v612 = v230;
  v613 = v233;
  v610 = v213;
  v609 = v244;
  v608[2] = v226;
  v608[3] = v230;
  v608[4] = v233;
  v608[1] = v213;
  v608[0] = v244;
  if (v188)
  {
LABEL_246:
    v245 = &v188[*MEMORY[0x277CD7410]];
    v246 = *v245;
    v247 = v245[1];
    v248 = v245[2];
    v249 = v245[3];
    v250 = *&v188[*v189];
    v568[3] = v249;
    v568[2] = v248;
    v568[1] = v247;
    v568[0] = v246;
    v251 = *MEMORY[0x277CD7428];
    if (*(v568 + (v250 & 0xF)) == 1)
    {
      v252 = 0;
    }

    else
    {
      v252 = *&v188[8 * (v250 & 0xF) + v251];
    }

    v567[0] = v246;
    v567[1] = v247;
    v567[2] = v248;
    v567[3] = v249;
    v253 = BYTE1(v250) & 0xF;
    v254 = *(v567 + v253);
    v255 = &v188[v251];
    v256 = *v255;
    v257 = v255[1];
    v258 = v255[2];
    v259 = v255[3];
    v260 = v255[4];
    v261 = v255[5];
    v262 = v255[6];
    v263 = v255[7];
    v564[7] = v263;
    v564[6] = v262;
    v564[5] = v261;
    v564[4] = v260;
    v564[3] = v259;
    v564[2] = v258;
    v564[1] = v257;
    v564[0] = v256;
    v264 = *(v564 + v253);
    if (v254 == 1)
    {
      v265 = 0;
    }

    else
    {
      v265 = *(v564 + v253);
    }

    v566[0] = v246;
    v566[1] = v247;
    v566[2] = v248;
    v566[3] = v249;
    v266 = BYTE2(v250) & 0xF;
    v267 = *(v566 + v266);
    v563[7] = v263;
    v563[6] = v262;
    v563[5] = v261;
    v563[4] = v260;
    v563[3] = v259;
    v563[2] = v258;
    v563[1] = v257;
    v563[0] = v256;
    v268 = *(v563 + v266);
    if (v267 == 1)
    {
      v269 = 0;
    }

    else
    {
      v269 = *(v563 + v266);
    }

    v565[0] = v246;
    v565[1] = v247;
    v565[2] = v248;
    v565[3] = v249;
    v270 = *(v565 + (BYTE3(v250) & 0xF));
    v562[7] = v263;
    v562[6] = v262;
    v562[5] = v261;
    v562[4] = v260;
    v562[3] = v259;
    v562[2] = v258;
    v562[1] = v257;
    v562[0] = v256;
    v271 = *(v562 + (BYTE3(v250) & 0xF));
    if (v270 == 1)
    {
      v272 = 0;
    }

    else
    {
      v272 = *(v562 + (BYTE3(v250) & 0xF));
    }

    v273 = &v188[*MEMORY[0x277CD7418]];
    v274 = *v273;
    v275 = v273[1];
    v276 = v273[2];
    v277 = v273[3];
    v561[7] = v263;
    v561[6] = v262;
    v561[5] = v261;
    v561[4] = v260;
    v561[3] = v259;
    v561[2] = v258;
    v561[1] = v257;
    v561[0] = v256;
    v278 = v250 & 0xF;
    v279 = *(v561 + v278);
    v560[3] = v277;
    v560[2] = v276;
    v560[1] = v275;
    v560[0] = v274;
    v280 = *(v560 + v278);
    v559[3] = v277;
    v559[2] = v276;
    v559[1] = v275;
    v559[0] = v274;
    v281 = v279 * v280 + v264 * *(v559 + v253);
    v558[3] = v277;
    v558[2] = v276;
    v558[1] = v275;
    v558[0] = v274;
    v282 = v281 + v268 * *(v558 + v266);
    v557[3] = v277;
    v557[2] = v276;
    v557[1] = v275;
    v557[0] = v274;
    v283 = v282 + v271 * *(v557 + (BYTE3(v250) & 0xF));
    v616 = v265;
    v617 = v269;
    v618 = v272;
    v615 = v252;
    v614 = v283;
    v608[7] = v265;
    v608[8] = v269;
    v608[9] = v272;
    v608[6] = v252;
    v608[5] = v283;
  }

LABEL_259:
  if (v185)
  {
    v284 = (v185 + *MEMORY[0x277CD7410]);
    v285 = *v284;
    v286 = v284[1];
    v287 = v284[2];
    v288 = v284[3];
    v289 = *(v185 + *v189);
    v556[3] = v288;
    v556[2] = v287;
    v556[1] = v286;
    v556[0] = v285;
    v290 = *MEMORY[0x277CD7428];
    if (*(v556 + (v289 & 0xF)) == 1)
    {
      v291 = 0;
    }

    else
    {
      v291 = *(v185 + v290 + 8 * (v289 & 0xF));
    }

    v555[0] = v285;
    v555[1] = v286;
    v555[2] = v287;
    v555[3] = v288;
    v292 = BYTE1(v289) & 0xF;
    v293 = *(v555 + v292);
    v294 = (v185 + v290);
    v295 = *v294;
    v296 = v294[1];
    v297 = v294[2];
    v298 = v294[3];
    v299 = v294[4];
    v300 = v294[5];
    v301 = v294[6];
    v302 = v294[7];
    v552[7] = v302;
    v552[6] = v301;
    v552[5] = v300;
    v552[4] = v299;
    v552[3] = v298;
    v552[2] = v297;
    v552[1] = v296;
    v552[0] = v295;
    v303 = *(v552 + v292);
    if (v293 == 1)
    {
      v304 = 0;
    }

    else
    {
      v304 = *(v552 + v292);
    }

    v554[0] = v285;
    v554[1] = v286;
    v554[2] = v287;
    v554[3] = v288;
    v305 = BYTE2(v289) & 0xF;
    v306 = *(v554 + v305);
    v551[7] = v302;
    v551[6] = v301;
    v551[5] = v300;
    v551[4] = v299;
    v551[3] = v298;
    v551[2] = v297;
    v551[1] = v296;
    v551[0] = v295;
    v307 = *(v551 + v305);
    if (v306 == 1)
    {
      v308 = 0;
    }

    else
    {
      v308 = *(v551 + v305);
    }

    v553[0] = v285;
    v553[1] = v286;
    v553[2] = v287;
    v553[3] = v288;
    v309 = BYTE3(v289) & 0xF;
    v310 = *(v553 + v309);
    v550[7] = v302;
    v550[6] = v301;
    v550[5] = v300;
    v550[4] = v299;
    v550[3] = v298;
    v550[2] = v297;
    v550[1] = v296;
    v550[0] = v295;
    v311 = *(v550 + v309);
    if (v310 == 1)
    {
      v312 = 0;
    }

    else
    {
      v312 = *(v550 + v309);
    }

    v313 = (v185 + *MEMORY[0x277CD7418]);
    v314 = *v313;
    v315 = v313[1];
    v316 = v313[2];
    v317 = v313[3];
    v549[7] = v302;
    v549[6] = v301;
    v549[5] = v300;
    v549[4] = v299;
    v549[3] = v298;
    v549[2] = v297;
    v549[1] = v296;
    v549[0] = v295;
    v318 = v289 & 0xF;
    v319 = *(v549 + v318);
    v548[3] = v317;
    v548[2] = v316;
    v548[1] = v315;
    v548[0] = v314;
    v320 = v319 * *(v548 + v318);
    v547[3] = v317;
    v547[2] = v316;
    v547[1] = v315;
    v547[0] = v314;
    v321 = v320 + v303 * *(v547 + v292);
    v546[3] = v317;
    v546[2] = v316;
    v546[1] = v315;
    v546[0] = v314;
    v322 = v321 + v307 * *(v546 + v305);
    v545[3] = v317;
    v545[2] = v316;
    v545[1] = v315;
    v545[0] = v314;
    v323 = v322 + v311 * *(v545 + v309);
    v600 = v304;
    v601 = v308;
    v602 = v312;
    v599 = v291;
    v598 = v323;
    v597[2] = v304;
    v597[3] = v308;
    v597[4] = v312;
    v597[1] = v291;
    v597[0] = v323;
  }

  if (v186)
  {
    v324 = (v186 + *MEMORY[0x277CD7410]);
    v325 = *v324;
    v326 = v324[1];
    v327 = v324[2];
    v328 = v324[3];
    v329 = *(v186 + *v189);
    v544[3] = v328;
    v544[2] = v327;
    v544[1] = v326;
    v544[0] = v325;
    v330 = *MEMORY[0x277CD7428];
    if (*(v544 + (v329 & 0xF)) == 1)
    {
      v331 = 0;
    }

    else
    {
      v331 = *(v186 + v330 + 8 * (v329 & 0xF));
    }

    v543[0] = v325;
    v543[1] = v326;
    v543[2] = v327;
    v543[3] = v328;
    v332 = BYTE1(v329) & 0xF;
    v333 = *(v543 + v332);
    v334 = (v186 + v330);
    v335 = *v334;
    v336 = v334[1];
    v337 = v334[2];
    v338 = v334[3];
    v339 = v334[4];
    v340 = v334[5];
    v341 = v334[6];
    v342 = v334[7];
    v540[7] = v342;
    v540[6] = v341;
    v540[5] = v340;
    v540[4] = v339;
    v540[3] = v338;
    v540[2] = v337;
    v540[1] = v336;
    v540[0] = v335;
    v343 = *(v540 + v332);
    if (v333 == 1)
    {
      v344 = 0;
    }

    else
    {
      v344 = *(v540 + v332);
    }

    v542[0] = v325;
    v542[1] = v326;
    v542[2] = v327;
    v542[3] = v328;
    v345 = BYTE2(v329) & 0xF;
    v346 = *(v542 + v345);
    v539[7] = v342;
    v539[6] = v341;
    v539[5] = v340;
    v539[4] = v339;
    v539[3] = v338;
    v539[2] = v337;
    v539[1] = v336;
    v539[0] = v335;
    v347 = *(v539 + v345);
    if (v346 == 1)
    {
      v348 = 0;
    }

    else
    {
      v348 = *(v539 + v345);
    }

    v541[0] = v325;
    v541[1] = v326;
    v541[2] = v327;
    v541[3] = v328;
    v349 = BYTE3(v329) & 0xF;
    v350 = *(v541 + v349);
    v538[7] = v342;
    v538[6] = v341;
    v538[4] = v339;
    v538[5] = v340;
    v538[2] = v337;
    v538[3] = v338;
    v538[0] = v335;
    v538[1] = v336;
    v351 = *(v538 + v349);
    if (v350 == 1)
    {
      v352 = 0;
    }

    else
    {
      v352 = *(v538 + v349);
    }

    v353 = (v186 + *MEMORY[0x277CD7418]);
    v354 = *v353;
    v355 = v353[1];
    v356 = v353[2];
    v357 = v353[3];
    v537[6] = v341;
    v537[7] = v342;
    v537[4] = v339;
    v537[5] = v340;
    v537[2] = v337;
    v537[3] = v338;
    v537[0] = v335;
    v537[1] = v336;
    v358 = v329 & 0xF;
    v359 = *(v537 + v358);
    v536[2] = v356;
    v536[3] = v357;
    v536[0] = v354;
    v536[1] = v355;
    v360 = v359 * *(v536 + v358);
    v535[2] = v356;
    v535[3] = v357;
    v535[0] = v354;
    v535[1] = v355;
    v361 = v360 + v343 * *(v535 + v332);
    v534[2] = v356;
    v534[3] = v357;
    v534[0] = v354;
    v534[1] = v355;
    v362 = v361 + v347 * *(v534 + v345);
    v533[2] = v356;
    v533[3] = v357;
    v533[0] = v354;
    v533[1] = v355;
    v363 = v362 + v351 * *(v533 + v349);
    v605 = v344;
    v606 = v348;
    v607 = v352;
    v604 = v331;
    v603 = v363;
    v597[7] = v344;
    v597[8] = v348;
    v597[9] = v352;
    v597[6] = v331;
    v597[5] = v363;
  }

  *v364.i64 = (*(*v144 + 32))(v144, &v619, v523, v478, v173, v134 > v135);
  v365 = v622;
  v366.i32[0] = 5;
  v367.i32[0] = v622;
  v368 = vdupq_lane_s32(*&vcgtq_u32(v366, v367), 0);
  v369 = v364;
  v369.i32[2] = 0;
  v371 = vbslq_s8(v368, v369, v364);
  v370.i64[1] = 0x100000001;
  v370.i64[0] = v371.i64[0];
  v371.i32[3] = v364.i32[3];
  if (v506 >= DimensionSize)
  {
    v372 = DimensionSize;
  }

  else
  {
    v372 = v506;
  }

  if (v486 & 1 | (v371.i32[2] != 0 || !v480 && !v484))
  {
    v373 = -1;
  }

  else
  {
    v373 = 0;
  }

  v375 = vbslq_s8(vdupq_n_s32(v373), v371, v370);
  v374.i64[1] = 0x200000002;
  v374.i64[0] = v375.i64[0];
  v375.i32[3] = v364.i32[3];
  if (v486 & 1 | (v375.i32[2] > 1 || !v479 && !v482))
  {
    v376 = -1;
  }

  else
  {
    v376 = 0;
  }

  v377 = vbslq_s8(vdupq_n_s32(v376), v375, v374);
  v378 = v377;
  v378.i32[3] = v364.i32[3];
  if (v515 == 4)
  {
    v380 = v488;
    v379 = v490;
    v381 = v470;
    v382 = v469;
    v383 = v504;
    if (v490 != 1 || v486 & 1 | ((v377.i8[4] & 1) == 0))
    {
      if (v504 != 4)
      {
        goto LABEL_305;
      }
    }

    else
    {
      v364.i64[0] = v377.i64[0] + 0x100000000;
      v364.i64[1] = __PAIR64__(v364.u32[3], v377.u32[2]);
      v378 = v364;
      if (v504 != 4)
      {
        goto LABEL_305;
      }
    }
  }

  else
  {
    v380 = v488;
    v379 = v490;
    v381 = v470;
    v382 = v469;
    v383 = v504;
    if (v504 != 4)
    {
      goto LABEL_305;
    }
  }

  if (!v380 && !(v486 & 1 | ((v378.i8[0] & 1) == 0)))
  {
    v384.i32[0] = v378.i32[0] + 1;
    v384.i32[1] = v378.i32[1];
    v384.i64[1] = v378.i64[1];
    v378 = v384;
  }

LABEL_305:
  if (v515 == 2 && v379 == 1 && !(v486 & 1 | ((v378.i8[4] & 3) == 0)))
  {
    v385.i32[0] = v378.i32[0];
    v385.i32[1] = (v378.i32[1] + 3) & 0xFFFFFFFC;
    v385.i64[1] = v378.i64[1];
    v378 = v385;
  }

  if (v383 == 2 && !v380 && !(v486 & 1 | ((v378.i8[0] & 3) == 0)))
  {
    v386.i32[0] = (v378.i32[0] + 3) & 0xFFFFFFFC;
    v386.i32[1] = v378.i32[1];
    v386.i64[1] = v378.i64[1];
    v378 = v386;
  }

  v387 = v378.u32[0];
  if (v378.i32[0])
  {
    v532 = v382;
    v388 = (*(&v532 | (4 * v381)) + v378.u32[0] - 1) / v378.u32[0];
    v531 = v382;
    *(&v531 & 0xFFFFFFFFFFFFFFF3 | (4 * (v381 & 3))) = v388;
    v389 = v531;
    if (v378.i32[1])
    {
LABEL_315:
      v530 = v389;
      v390 = v471;
      v391 = (v378.u32[1] + *(&v530 | (4 * v471)) - 1) / v378.u32[1];
      goto LABEL_318;
    }
  }

  else
  {
    v531 = v382;
    *(&v531 & 0xFFFFFFFFFFFFFFF3 | (4 * (v381 & 3))) = 0;
    v389 = v531;
    if (v378.i32[1])
    {
      goto LABEL_315;
    }
  }

  LODWORD(v391) = 0;
  v390 = v471;
LABEL_318:
  v529 = v389;
  *(&v529 & 0xFFFFFFFFFFFFFFF3 | (4 * (v390 & 3))) = v391;
  v392.i32[0] = vextq_s8(v516, v516, 8uLL).u32[0];
  v392.i32[1] = v511.i32[1];
  v393 = vcgt_s32(v392, 0x100000001);
  if ((v393.i32[1] | v393.i32[0]))
  {
    v394 = 0;
    v395 = v495;
  }

  else
  {
    v394 = 1;
    v395 = v495;
    if (v518 && DWORD2(v620) >= 2)
    {
      v394 = DWORD1(v623) % v378.i32[1] == 0;
    }

    if (v524 && DWORD1(v621) >= 2 && v624 % v378.i32[0])
    {
      v394 = 0;
    }
  }

  v406 = v478 >> 3;
  v408 = v406 > 1 || v372 < 5;
  v410 = (v406 < 2 || v372 < 2) && v408;
  v411 = v365 >= 1024 << v378.i8[8] && v410;
  v412 = v365 & ~(-1 << v378.i8[8]);
  if (v154 % v378.i32[0])
  {
    v413 = 1;
    v414 = v476;
  }

  else
  {
    v414 = v476;
    v413 = v476 % v378.i32[1] != 0;
    if (!v413 && !v523)
    {
      v413 = (v529 & 0xF) != 0;
    }
  }

  v508 = v529;
  v415 = vandq_s8(vshlq_u32(vtrn2q_s32(v395, vuzp1q_s32(v395, v378)), xmmword_239B0A330), xmmword_239B0A340);
  v416 = vorr_s8(*v415.i8, *&vextq_s8(v415, v415, 8uLL));
  v417 = ((v474 > 1) << 9) | ((v414 > 1) << 8);
  v418 = vand_s8(vadd_s32(vshl_u32(*v378.i8, 0xE0000000BLL), 0x1C00000003800), 0x1C00000003800);
  if (v413)
  {
    v419 = 0x800000;
  }

  else
  {
    v419 = 0;
  }

  v420 = vorr_s8(v418, vdup_lane_s32(v418, 1)).u32[0] | ((v383 == 4) << 31) | ((v515 == 4) << 30);
  v421 = v419 | (v518 << 26) | (v524 << 27);
  if (v523 && v411)
  {
    v422 = 0x2000000;
  }

  else
  {
    v422 = 0;
  }

  v423 = -1;
  v591[3] = -1;
  v591[4] = -1;
  v596 = 0;
  v595 = 0;
  v591[5] = v416.i32[0] | v416.i32[1] | (v380 << 21) | v146 & 3 | (v379 << 19) | v420 | v417 | v422 | v421 | ((v412 != 0) << 24) | ((v472 > 1) << 10) | (v394 << 28);
  v594 = 0;
  v592 = 0u;
  v593 = 0u;
  v595 = [*(v514 + 16) count] | ((*(v514 + 112) != 0) << 8) | 0x10000;
  v596 = 0;
  v424 = (&CommonKernels)[16 * !v523];
  v464 = *(v502 + *MEMORY[0x277CD7360]);
  v466 = *(v502 + *MEMORY[0x277CD7368]);
  v462 = *(v514 + 232);
  MPSLibrary::CreateUberShaderKey();
  v425 = MEMORY[0x277CD7370];
  v426 = *(v502 + *MEMORY[0x277CD7370]);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (PipelineStateForMPSKey)
  {
    v428 = PipelineStateForMPSKey;
    v429 = 4 * vaddq_s32(v516, v511).i32[0];
    [v491 setComputePipelineState:{PipelineStateForMPSKey, v462, v464, v466, 0, 0}];
    v430 = *(v502 + *v425);
    MPSLibrary::ReleaseMPSKey();
    v431 = [v428 threadExecutionWidth];
    if (v431 <= 1)
    {
      v432 = 1;
    }

    else
    {
      v432 = v431;
    }

    v433 = [v428 maxTotalThreadsPerThreadgroup];
    v434 = 256;
    if (v433 < 0x100)
    {
      v434 = v433;
    }

    if (v434 <= 2 * v432)
    {
      v435 = 1;
      v436 = v508;
      v437 = v429 + 15;
      if (!v523)
      {
LABEL_377:
        v438 = 16;
        if (v406 > 3)
        {
          v438 = 8;
        }

        if (v436 > 31)
        {
          v435 = v438;
        }

        do
        {
          v439 = v435;
          if (v435 < 2)
          {
            break;
          }

          v435 >>= 1;
        }

        while (v439 > v622);
        if (v432 >= v436)
        {
          v440 = v436;
        }

        else
        {
          v440 = v432;
        }

        v441 = 16;
        if (v406 > 3)
        {
          v441 = 32;
        }

        if (v436 > 31)
        {
          v440 = v441;
        }

        v442 = v491;
        if (v439 < 2)
        {
          v443 = v440;
          if (v413)
          {
            goto LABEL_395;
          }
        }

        else
        {
          do
          {
            v443 = v440;
            v444 = v440 * v439;
            v440 *= 2;
          }

          while (v444 < v432);
          if (v413)
          {
            goto LABEL_395;
          }
        }

        if (v436 % v443)
        {
          v443 = 1;
        }

LABEL_395:
        if (v394 && v524 && DWORD1(v621) >= 2 && v624 % (v443 * v387) && (v443 = v624 / v387, v387 * v443 != v624))
        {
          if (v439 <= 0x20)
          {
            v439 = 32;
          }

          v443 = 1;
        }

        else if (!v443)
        {
          v445 = 0;
          goto LABEL_429;
        }

        v445 = (v436 + v443 - 1) / v443;
LABEL_429:
        v449 = SDWORD1(v436);
        v432 = v443;
        goto LABEL_430;
      }
    }

    else
    {
      v435 = v434 / v432;
      v436 = v508;
      v437 = v429 + 15;
      if (!v523)
      {
        goto LABEL_377;
      }
    }

    if (v411)
    {
      v432 *= 8;
      v446 = SDWORD1(v436);
      v442 = v491;
    }

    else
    {
      v446 = SDWORD1(v436);
      if (v435 >= SDWORD1(v436))
      {
        v447 = SDWORD1(v436);
      }

      else
      {
        v447 = v435;
      }

      do
      {
        v439 = v447;
        if (v447 < 2)
        {
          break;
        }

        v447 *= 2;
      }

      while (v439 * v432 < v432);
      if (!v413 && SDWORD1(v436) % v439)
      {
        v439 = 1;
      }

      v442 = v491;
      if (!v394 || !v518 || DWORD2(v620) < 2)
      {
        v445 = v436;
        if (!v439)
        {
          v449 = 0;
LABEL_430:
          v450 = DWORD2(v436);
          v451 = HIDWORD(v436);
          if (!v394)
          {
            v437 = 12;
          }

          [v442 setThreadgroupMemoryLength:(v437 + 4 * v439 * v432) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
          if (v510)
          {
            v452 = v514;
            [v442 setBuffer:-[BaseTensor buffer](v510 offset:"buffer") atIndex:{*(*(v514 + 8) + 80 * v633 + 64), 27}];
            v453 = v513;
            if (!v513)
            {
              goto LABEL_437;
            }
          }

          else
          {
            v453 = v513;
            v452 = v514;
            if (!v513)
            {
LABEL_438:
              if (*v499 | v497)
              {
                [v442 setBytes:v597 length:120 atIndex:24];
                v628 = 0;
                v627 = 0;
                if (v497)
                {
                  v627 = v631;
                }

                if (*v499)
                {
                  v628 = v630;
                }
              }

              else
              {
                v628 = 0;
                v627 = 0;
              }

              MPSSetNDArraysOnComputeEncoder(v442, v452, 4, 0, 0);
              [v442 setBytes:&v619 length:128 atIndex:29];
              v591[0] = v445;
              v591[1] = v449;
              v591[2] = v450 * v451;
              v590[0] = v432;
              v590[1] = v439;
              v590[2] = 1;
              [v442 dispatchThreadgroups:v591 threadsPerThreadgroup:v590];
              MPSLibrary::ReleaseComputeState();
              return 0;
            }
          }

          [v442 setBuffer:objc_msgSend(v453 offset:"buffer") atIndex:{*(*(v452 + 8) + 80 * v632 + 64), 26}];
LABEL_437:
          [v442 setBytes:v608 length:120 atIndex:25];
          goto LABEL_438;
        }

LABEL_427:
        v449 = (v446 + v439 - 1) / v439;
        goto LABEL_430;
      }
    }

    v445 = v436;
    v439 = 1;
    goto LABEL_427;
  }

  return v423;
}

void sub_239A55548(_Unwind_Exception *a1)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v2 - 152));
    if ((SLOBYTE(STACK[0x1507]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SLOBYTE(STACK[0x1507]) & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(*(v2 - 128));
  _Unwind_Resume(a1);
}

MPSKernelDAG *GetPlaceHolderIndexInSourceArrayLUT(MPSKernelDAG *this, int a2, int a3, unint64_t *a4, unint64_t *a5)
{
  v6 = *(this + 8);
  v7 = *v6;
  v8 = v6[1];
  if (*v6 == v8)
  {
    v19 = a4;
    v20 = a5;
    v12 = -1;
LABEL_21:
    v11 = -1;
    goto LABEL_22;
  }

  v9 = this;
  if (!a2)
  {
    if (!a3)
    {
      return this;
    }

    v19 = a4;
    v20 = a5;
    v16 = 0;
    v12 = -1;
    do
    {
      v17 = *v7++;
      this = MPSKernelDAG::GetCoreOpInputAtIndex(v9);
      if (v17 == *(this + 4))
      {
        v12 = v16;
      }

      ++v16;
    }

    while (v7 != v8);
    goto LABEL_21;
  }

  v19 = a4;
  v20 = a5;
  v10 = 0;
  v11 = -1;
  if (a3)
  {
    v12 = -1;
    do
    {
      v13 = *v7;
      if (v13 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v9) + 32))
      {
        v11 = v10;
      }

      v14 = *v7++;
      this = MPSKernelDAG::GetCoreOpInputAtIndex(v9);
      if (v14 == *(this + 4))
      {
        v12 = v10;
      }

      ++v10;
    }

    while (v7 != v8);
  }

  else
  {
    do
    {
      v15 = *v7++;
      this = MPSKernelDAG::GetCoreOpInputAtIndex(v9);
      if (v15 == *(this + 4))
      {
        v11 = v10;
      }

      ++v10;
    }

    while (v7 != v8);
    v12 = -1;
  }

LABEL_22:
  if (v19 && a2)
  {
    if (v11 == -1)
    {
      return this;
    }

    *v19 = v11;
  }

  if (v20 && a3 && v12 != -1)
  {
    *v20 = v12;
  }

  return this;
}

uint64_t MPSNDArrayLUTGEMVFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(a2 + 17);
  v6 = MPSCreateFunctionConstantValues();
  v17 = v5 & 0xFFFFFF;
  [v6 setConstantValue:&v17 type:33 atIndex:115];
  v7 = *a3;
  v8 = *(a3 + 1);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = vceqq_s64(v8, v9);
  if (*a3 != -1 || ((v11 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v9), vceqq_s64(*(a3 + 4), v9)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v10, vceqq_s64(*(a3 + 3), v9)), xmmword_239B06050)) & 0xF) == 0) ? (v12 = v11 == 0) : (v12 = 0), v12 ? (v13 = a3[5] == -1) : (v13 = 0), !v13))
  {
    if ((vuzp1_s16(vmovn_s64(v10), *v8.i8).u8[0] & 1) == 0)
    {
      v18 = *(a3 + 1);
      [v6 setConstantValue:&v18 type:33 atIndex:126];
      v7 = *a3;
    }

    if (v7 != -1)
    {
      v18 = v7;
      [v6 setConstantValue:&v18 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v18 = a3[2];
      [v6 setConstantValue:&v18 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v18 = a3[3];
      [v6 setConstantValue:&v18 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v18 = a3[4];
      [v6 setConstantValue:&v18 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v18 = a3[5];
      [v6 setConstantValue:&v18 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v18 = a3[8];
      [v6 setConstantValue:&v18 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v18 = a3[9];
      [v6 setConstantValue:&v18 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v18 = a3[6];
      [v6 setConstantValue:&v18 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v18 = a3[7];
      [v6 setConstantValue:&v18 type:33 atIndex:116];
    }
  }

  v14 = *a2;
  v15 = _MPSNewSpecializedFunction();

  return v15;
}

uint64_t EncodeTile(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277CD7370];
  v8 = *(a1 + *MEMORY[0x277CD7370]);
  v9 = [*(a4 + 232) graph];
  v10 = **(v9 + 56);
  if (*(*(v9 + 56) + 8) == v10)
  {
    goto LABEL_140;
  }

  v12 = *(*v10 + 8);
  v11 = *v12;
  if (*(v12 + 8) == *v12)
  {
    goto LABEL_141;
  }

  v13 = *v11;
  v14 = [*(a4 + 232) graph];
  v15 = **(v14 + 56);
  if (*(*(v14 + 56) + 8) == v15)
  {
LABEL_140:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v17 = *(*v15 + 24);
  v16 = *v17;
  if (*(v17 + 8) == *v17)
  {
LABEL_141:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v18 = *v16;
  v19 = *(v13 + 2);
  if (v19 > 285212703)
  {
    if (v19 <= 536870915)
    {
      if (v19 > 301989895)
      {
        if (v19 == 301989896)
        {
          v20 = 512;
          goto LABEL_49;
        }

        if (v19 == 335544328)
        {
          v20 = 544;
          goto LABEL_49;
        }
      }

      else
      {
        if (v19 == 285212704)
        {
          v20 = 416;
          goto LABEL_49;
        }

        if (v19 == 285212736)
        {
          v20 = 448;
          goto LABEL_49;
        }
      }
    }

    else if (v19 <= 536870927)
    {
      if (v19 == 536870916)
      {
        v20 = 0;
        goto LABEL_49;
      }

      if (v19 == 536870920)
      {
        v20 = 32;
        goto LABEL_49;
      }
    }

    else
    {
      switch(v19)
      {
        case 536870928:
          v20 = 64;
          goto LABEL_49;
        case 536870944:
          v20 = 96;
          goto LABEL_49;
        case 536870976:
          v20 = 128;
          goto LABEL_49;
      }
    }
  }

  else if (v19 <= 31)
  {
    if (v19 > 7)
    {
      if (v19 == 8)
      {
        v20 = 192;
        goto LABEL_49;
      }

      if (v19 == 16)
      {
        v20 = 224;
        goto LABEL_49;
      }
    }

    else
    {
      if (v19 == -1879048176)
      {
        v20 = 384;
        goto LABEL_49;
      }

      if (v19 == 4)
      {
        v20 = 160;
        goto LABEL_49;
      }
    }
  }

  else if (v19 <= 268435463)
  {
    if (v19 == 32)
    {
      v20 = 256;
      goto LABEL_49;
    }

    if (v19 == 64)
    {
      v20 = 288;
      goto LABEL_49;
    }
  }

  else
  {
    switch(v19)
    {
      case 268435464:
        v20 = 480;
        goto LABEL_49;
      case 268435472:
        v20 = 320;
        goto LABEL_49;
      case 268435488:
        v20 = 352;
        goto LABEL_49;
    }
  }

  v20 = 576;
LABEL_49:
  v21 = *(v18 + 2);
  v59 = a2;
  if (v21 > 285212703)
  {
    if (v21 <= 536870915)
    {
      if (v21 > 301989895)
      {
        if (v21 == 301989896)
        {
          v22 = 16;
          goto LABEL_93;
        }

        if (v21 == 335544328)
        {
          v22 = 17;
          goto LABEL_93;
        }
      }

      else
      {
        if (v21 == 285212704)
        {
          v22 = 13;
          goto LABEL_93;
        }

        if (v21 == 285212736)
        {
          v22 = 14;
          goto LABEL_93;
        }
      }
    }

    else if (v21 <= 536870927)
    {
      if (v21 == 536870916)
      {
        v22 = 0;
        goto LABEL_93;
      }

      if (v21 == 536870920)
      {
        v22 = 1;
        goto LABEL_93;
      }
    }

    else
    {
      switch(v21)
      {
        case 536870928:
          v22 = 2;
          goto LABEL_93;
        case 536870944:
          v22 = 3;
          goto LABEL_93;
        case 536870976:
          v22 = 4;
          goto LABEL_93;
      }
    }
  }

  else if (v21 <= 31)
  {
    if (v21 > 7)
    {
      if (v21 == 8)
      {
        v22 = 6;
        goto LABEL_93;
      }

      if (v21 == 16)
      {
        v22 = 7;
        goto LABEL_93;
      }
    }

    else
    {
      if (v21 == -1879048176)
      {
        v22 = 12;
        goto LABEL_93;
      }

      if (v21 == 4)
      {
        v22 = 5;
        goto LABEL_93;
      }
    }
  }

  else if (v21 <= 268435463)
  {
    if (v21 == 32)
    {
      v22 = 8;
      goto LABEL_93;
    }

    if (v21 == 64)
    {
      v22 = 9;
      goto LABEL_93;
    }
  }

  else
  {
    switch(v21)
    {
      case 268435464:
        v22 = 15;
        goto LABEL_93;
      case 268435472:
        v22 = 10;
        goto LABEL_93;
      case 268435488:
        v22 = 11;
        goto LABEL_93;
    }
  }

  v22 = 18;
LABEL_93:
  *&v23 = -1;
  *(&v23 + 1) = -1;
  v73 = v23;
  v74 = v23;
  v70 = -1;
  v72 = v23;
  v69 = v23;
  v71 = v22 | v20;
  *&v74 = [*(a4 + 16) count] | 0x10000;
  DimensionSize = BaseTensor::GetDimensionSize(v13);
  v25 = 1;
  v26 = BaseTensor::GetDimensionSize(v13);
  v27 = BaseTensor::GetDimensionSize(v13);
  v28 = BaseTensor::GetDimensionSize(v18);
  v29 = BaseTensor::GetDimensionSize(v18);
  v30 = BaseTensor::GetDimensionSize(v18);
  memset(v62, 0, sizeof(v62));
  v63 = DimensionSize;
  v64 = v26;
  v31 = a4;
  v65 = v27;
  v66 = v28;
  v32 = *(a1 + *v7);
  v67 = v29;
  v68 = v30;
  v57 = *(a1 + *MEMORY[0x277CD7360]);
  v58 = *(a1 + *MEMORY[0x277CD7368]);
  v56 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v34 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v34 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  v36 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v37 = 256;
  if (v36 < 0x100)
  {
    v37 = v36;
  }

  if (v37 > 2 * v35)
  {
    v25 = v37 / v35;
  }

  v38 = v30;
  v39 = (v29 + v25 - 1) / v25;
  v40 = v28 - 1;
  v41 = (v35 + v40) / v35;
  v43 = v28 >= 2 && v29 == 1 && v30 == 1;
  v44 = v25 * v35;
  v45 = (v25 * v35 + v40) / (v25 * v35);
  if (v43)
  {
    v38 = 1;
  }

  if (v43)
  {
    v39 = 1;
  }

  if (v43)
  {
    v46 = 1;
  }

  else
  {
    v45 = v41;
    v46 = v25;
  }

  if (v43)
  {
    v47 = v25 * v35;
  }

  else
  {
    v47 = v35;
  }

  v49 = v28 == 1 && v29 >= 2 && v30 == 1;
  if (v49)
  {
    v50 = 1;
  }

  else
  {
    v50 = v38;
  }

  if (v49)
  {
    v51 = (v29 + v44 - 1) / v44;
  }

  else
  {
    v51 = v39;
  }

  if (v49)
  {
    v52 = 1;
  }

  else
  {
    v52 = v45;
  }

  if (v49)
  {
    v53 = v44;
  }

  else
  {
    v53 = v46;
  }

  if (v49)
  {
    v54 = 1;
  }

  else
  {
    v54 = v47;
  }

  [v59 setComputePipelineState:PipelineStateForMPSKey];
  MPSSetNDArraysOnComputeEncoder(v59, v31, 3, 0, 0);
  [v59 setBytes:v62 length:88 atIndex:29];
  v61[0] = v52;
  v61[1] = v51;
  v61[2] = v50;
  v60[0] = v54;
  v60[1] = v53;
  v60[2] = 1;
  [v59 dispatchThreadgroups:v61 threadsPerThreadgroup:v60];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

void decodeMultiples(NSCoder *a1, MPSNDArraySizes *a2)
{
  v4 = objc_autoreleasePoolPush();
  a2->dimensions[0] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 0]);
  a2->dimensions[1] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 1]);
  a2->dimensions[2] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 2]);
  a2->dimensions[3] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 3]);
  a2->dimensions[4] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 4]);
  a2->dimensions[5] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 5]);
  a2->dimensions[6] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 6]);
  a2->dimensions[7] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 7]);
  a2->dimensions[8] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 8]);
  a2->dimensions[9] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 9]);
  a2->dimensions[10] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 10]);
  a2->dimensions[11] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 11]);
  a2->dimensions[12] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 12]);
  a2->dimensions[13] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 13]);
  a2->dimensions[14] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 14]);
  a2->dimensions[15] = -[NSCoder decodeIntegerForKey:](a1, "decodeIntegerForKey:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 15]);

  objc_autoreleasePoolPop(v4);
}

void encodeMultiples(NSCoder *a1, const MPSNDArraySizes *a2)
{
  v4 = objc_autoreleasePoolPush();
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[0], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 0]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[1], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 1]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[2], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 2]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[3], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 3]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[4], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 4]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[5], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 5]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[6], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 6]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[7], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 7]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[8], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 8]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[9], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 9]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[10], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 10]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[11], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 11]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[12], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 12]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[13], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 13]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[14], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 14]);
  -[NSCoder encodeInteger:forKey:](a1, "encodeInteger:forKey:", a2->dimensions[15], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%u", @"MPSNDArrayTile.multiple", 15]);

  objc_autoreleasePoolPop(v4);
}

uint64_t EncodeTileGradient(char *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = MEMORY[0x277CD7370];
  v10 = *&a1[*MEMORY[0x277CD7370]];
  v11 = [*(a4 + 232) graph];
  v12 = **(v11 + 56);
  if (*(*(v11 + 56) + 8) == v12)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v13 = *v12;
  v15 = *(*v12 + 8);
  v14 = *v15;
  if (*(v15 + 8) - *v15 <= 8uLL || (v17 = *(v13 + 24), v16 = *v17, *(v17 + 8) == *v17))
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v18 = v14[1];
  v19 = *v16;
  v20 = *(*v14 + 8);
  if (v20 > 285212703)
  {
    if (v20 <= 536870915)
    {
      if (v20 > 301989895)
      {
        if (v20 == 301989896)
        {
          v21 = 512;
          v22 = *(v18 + 2);
          if (v22 <= 285212703)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v20 != 335544328)
          {
            goto LABEL_94;
          }

          v21 = 544;
          v22 = *(v18 + 2);
          if (v22 <= 285212703)
          {
            goto LABEL_64;
          }
        }
      }

      else if (v20 == 285212704)
      {
        v21 = 416;
        v22 = *(v18 + 2);
        if (v22 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v20 != 285212736)
        {
          goto LABEL_94;
        }

        v21 = 448;
        v22 = *(v18 + 2);
        if (v22 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v20 <= 536870927)
    {
      if (v20 == 536870916)
      {
        v21 = 0;
        v22 = *(v18 + 2);
        if (v22 > 285212703)
        {
          goto LABEL_95;
        }

        goto LABEL_64;
      }

      if (v20 != 536870920)
      {
        goto LABEL_94;
      }

      v21 = 32;
      v22 = *(v18 + 2);
      if (v22 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      switch(v20)
      {
        case 536870928:
          v21 = 64;
          v22 = *(v18 + 2);
          if (v22 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870944:
          v21 = 96;
          v22 = *(v18 + 2);
          if (v22 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        case 536870976:
          v21 = 128;
          v22 = *(v18 + 2);
          if (v22 <= 285212703)
          {
            goto LABEL_64;
          }

          break;
        default:
          goto LABEL_94;
      }
    }
  }

  else if (v20 <= 31)
  {
    if (v20 > 7)
    {
      if (v20 == 8)
      {
        v21 = 192;
        v22 = *(v18 + 2);
        if (v22 <= 285212703)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v20 != 16)
        {
          goto LABEL_94;
        }

        v21 = 224;
        v22 = *(v18 + 2);
        if (v22 <= 285212703)
        {
          goto LABEL_64;
        }
      }
    }

    else if (v20 == -1879048176)
    {
      v21 = 384;
      v22 = *(v18 + 2);
      if (v22 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v20 != 4)
      {
        goto LABEL_94;
      }

      v21 = 160;
      v22 = *(v18 + 2);
      if (v22 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else if (v20 <= 268435463)
  {
    if (v20 == 32)
    {
      v21 = 256;
      v22 = *(v18 + 2);
      if (v22 <= 285212703)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v20 != 64)
      {
        goto LABEL_94;
      }

      v21 = 288;
      v22 = *(v18 + 2);
      if (v22 <= 285212703)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    switch(v20)
    {
      case 268435464:
        v21 = 480;
        v22 = *(v18 + 2);
        if (v22 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435472:
        v21 = 320;
        v22 = *(v18 + 2);
        if (v22 <= 285212703)
        {
          goto LABEL_64;
        }

        break;
      case 268435488:
        v21 = 352;
        v22 = *(v18 + 2);
        if (v22 > 285212703)
        {
          break;
        }

LABEL_64:
        if (v22 <= 31)
        {
          if (v22 > 7)
          {
            if (v22 == 8)
            {
              v23 = 6144;
              v24 = *(v19 + 2);
              if (v24 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            }

            if (v22 == 16)
            {
              v23 = 7168;
              v24 = *(v19 + 2);
              if (v24 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            }
          }

          else
          {
            if (v22 == -1879048176)
            {
              v23 = 12288;
              v24 = *(v19 + 2);
              if (v24 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            }

            if (v22 == 4)
            {
              v23 = 5120;
              v24 = *(v19 + 2);
              if (v24 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            }
          }
        }

        else if (v22 <= 268435463)
        {
          if (v22 == 32)
          {
            v23 = 0x2000;
            v24 = *(v19 + 2);
            if (v24 > 285212703)
            {
              goto LABEL_146;
            }

            goto LABEL_124;
          }

          if (v22 == 64)
          {
            v23 = 9216;
            v24 = *(v19 + 2);
            if (v24 > 285212703)
            {
              goto LABEL_146;
            }

            goto LABEL_124;
          }
        }

        else
        {
          switch(v22)
          {
            case 268435464:
              v23 = 15360;
              v24 = *(v19 + 2);
              if (v24 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            case 268435472:
              v23 = 10240;
              v24 = *(v19 + 2);
              if (v24 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
            case 268435488:
              v23 = 11264;
              v24 = *(v19 + 2);
              if (v24 > 285212703)
              {
                goto LABEL_146;
              }

              goto LABEL_124;
          }
        }

LABEL_145:
        v23 = 18432;
        v24 = *(v19 + 2);
        if (v24 > 285212703)
        {
          goto LABEL_146;
        }

        goto LABEL_124;
      default:
LABEL_94:
        v21 = 576;
        v22 = *(v18 + 2);
        if (v22 > 285212703)
        {
          break;
        }

        goto LABEL_64;
    }
  }

LABEL_95:
  if (v22 <= 536870915)
  {
    if (v22 > 301989895)
    {
      if (v22 == 301989896)
      {
        v23 = 0x4000;
        v24 = *(v19 + 2);
        if (v24 <= 285212703)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v22 != 335544328)
        {
          goto LABEL_145;
        }

        v23 = 17408;
        v24 = *(v19 + 2);
        if (v24 <= 285212703)
        {
          goto LABEL_124;
        }
      }
    }

    else if (v22 == 285212704)
    {
      v23 = 13312;
      v24 = *(v19 + 2);
      if (v24 <= 285212703)
      {
        goto LABEL_124;
      }
    }

    else
    {
      if (v22 != 285212736)
      {
        goto LABEL_145;
      }

      v23 = 14336;
      v24 = *(v19 + 2);
      if (v24 <= 285212703)
      {
        goto LABEL_124;
      }
    }
  }

  else if (v22 <= 536870927)
  {
    if (v22 == 536870916)
    {
      v23 = 0;
      v24 = *(v19 + 2);
      if (v24 > 285212703)
      {
        goto LABEL_146;
      }

      goto LABEL_124;
    }

    if (v22 != 536870920)
    {
      goto LABEL_145;
    }

    v23 = 1024;
    v24 = *(v19 + 2);
    if (v24 <= 285212703)
    {
      goto LABEL_124;
    }
  }

  else
  {
    switch(v22)
    {
      case 536870928:
        v23 = 2048;
        v24 = *(v19 + 2);
        if (v24 <= 285212703)
        {
          goto LABEL_124;
        }

        break;
      case 536870944:
        v23 = 3072;
        v24 = *(v19 + 2);
        if (v24 <= 285212703)
        {
          goto LABEL_124;
        }

        break;
      case 536870976:
        v23 = 4096;
        v24 = *(v19 + 2);
        if (v24 > 285212703)
        {
          break;
        }

LABEL_124:
        if (v24 <= 31)
        {
          if (v24 > 7)
          {
            if (v24 == 8)
            {
              v25 = 6;
              goto LABEL_168;
            }

            if (v24 == 16)
            {
              v25 = 7;
              goto LABEL_168;
            }
          }

          else
          {
            if (v24 == -1879048176)
            {
              v25 = 12;
              goto LABEL_168;
            }

            if (v24 == 4)
            {
              v25 = 5;
              goto LABEL_168;
            }
          }
        }

        else if (v24 <= 268435463)
        {
          if (v24 == 32)
          {
            v25 = 8;
            goto LABEL_168;
          }

          if (v24 == 64)
          {
            v25 = 9;
            goto LABEL_168;
          }
        }

        else
        {
          switch(v24)
          {
            case 268435464:
              v25 = 15;
              goto LABEL_168;
            case 268435472:
              v25 = 10;
              goto LABEL_168;
            case 268435488:
              v25 = 11;
              goto LABEL_168;
          }
        }

        goto LABEL_167;
      default:
        goto LABEL_145;
    }
  }

LABEL_146:
  if (v24 <= 536870915)
  {
    if (v24 > 301989895)
    {
      if (v24 == 301989896)
      {
        v25 = 16;
        goto LABEL_168;
      }

      if (v24 == 335544328)
      {
        v25 = 17;
        goto LABEL_168;
      }
    }

    else
    {
      if (v24 == 285212704)
      {
        v25 = 13;
        goto LABEL_168;
      }

      if (v24 == 285212736)
      {
        v25 = 14;
        goto LABEL_168;
      }
    }
  }

  else if (v24 <= 536870927)
  {
    if (v24 == 536870916)
    {
      v25 = 0;
      goto LABEL_168;
    }

    if (v24 == 536870920)
    {
      v25 = 1;
      goto LABEL_168;
    }
  }

  else
  {
    switch(v24)
    {
      case 536870928:
        v25 = 2;
        goto LABEL_168;
      case 536870944:
        v25 = 3;
        goto LABEL_168;
      case 536870976:
        v25 = 4;
        goto LABEL_168;
    }
  }

LABEL_167:
  v25 = 18;
LABEL_168:
  v26 = 0x2000000;
  if (!a5)
  {
    v26 = 0;
  }

  *&v27 = -1;
  *(&v27 + 1) = -1;
  v65 = v27;
  v66 = v27;
  v62 = -1;
  v64 = v27;
  v61 = v27;
  v63 = v21 | v23 | v25 | v26;
  *&v66 = [*(a4 + 16) count] | 0x10100;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  [a1 multiples];
  v58.i32[0] = v49;
  v59.i32[0] = BaseTensor::GetDimensionSize(v18);
  LODWORD(v60) = BaseTensor::GetDimensionSize(v19);
  if (v60 == 1)
  {
    v28 = v58;
    if ((vmovn_s32(vceqq_s32(v58, v59)).u8[0] & 1) == 0)
    {
      v28.i32[0] = v59.i32[0];
      v58 = v28;
    }
  }

  v58.i32[1] = DWORD2(v49);
  DimensionSize = BaseTensor::GetDimensionSize(v18);
  v59.i32[1] = DimensionSize;
  DWORD1(v60) = BaseTensor::GetDimensionSize(v19);
  if (DWORD1(v60) == 1)
  {
    v30 = v58;
    if (v58.i32[1] != DimensionSize)
    {
      v30.i32[1] = DimensionSize;
      v58 = v30;
    }
  }

  v58.i32[2] = v50;
  v31 = BaseTensor::GetDimensionSize(v18);
  v59.i32[2] = v31;
  DWORD2(v60) = BaseTensor::GetDimensionSize(v19);
  if (DWORD2(v60) == 1)
  {
    v32 = v58;
    if (v58.i32[2] != v31)
    {
      v32.i32[2] = v31;
      v58 = v32;
    }
  }

  v33 = *&a1[*v9];
  v45 = *&a1[*MEMORY[0x277CD7360]];
  v46 = *&a1[*MEMORY[0x277CD7368]];
  v34 = 1;
  v44 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v36 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v36 <= 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = v36;
  }

  v38 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v39 = 256;
  if (v38 < 0x100)
  {
    v39 = v38;
  }

  if (v39 > 2 * v37)
  {
    v34 = v39 / v37;
  }

  v40 = (v37 + v60 - 1) / v37;
  v41 = DWORD2(v60);
  v42 = (v34 + DWORD1(v60) - 1) / v34;
  [a2 setComputePipelineState:PipelineStateForMPSKey];
  MPSSetNDArraysOnComputeEncoder(a2, a4, 4, 0, 0);
  [a2 setBytes:&v57 length:64 atIndex:29];
  v48[0] = v40;
  v48[1] = v42;
  v48[2] = v41;
  v47[0] = v37;
  v47[1] = v34;
  v47[2] = 1;
  [a2 dispatchThreadgroups:v48 threadsPerThreadgroup:v47];
  MPSLibrary::ReleaseComputeState();
  return 0;
}

uint64_t EncodeArrayCropResize(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v54 = *&a1[*MEMORY[0x277CD7370]];
  v7 = [*(a4 + 232) inputTensorAtIndex:0];
  v8 = [*(a4 + 232) inputTensorAtIndex:1];
  v9 = [*(a4 + 232) inputTensorAtIndex:2];
  v55 = a4;
  v10 = [*(a4 + 232) outputTensorAtIndex:0];
  v11 = *(v7 + 16);
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

  v14 = *(v8 + 16);
  v16 = *v14;
  v15 = v14[1];
  v56 = v8;
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v17 = *(v9 + 16);
  v19 = *v17;
  v18 = v17[1];
  v53 = a2;
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v20 = *(v10 + 2);
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

  if ((*v56 != 2 || MEMORY[0] != 4) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v23 = MEMORY[8];
  if ((*v9 != 1 || MEMORY[0] != MEMORY[8]) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v9 + 8) != 536870944 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v24 = MEMORY[0];
  if (v24 == [a1 resizeWidth])
  {
    [a1 resizeHeight];
  }

  v25 = MEMORY[0];
  if (v25 != [a1 resizeWidth] || (v26 = MEMORY[8], v26 != objc_msgSend(a1, "resizeHeight")) || MEMORY[0x18] != v23)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  operator delete(0);
  operator delete(0);
  v27 = (*(v56 + 8) << 10) | (32 * *(v7 + 8)) | (*(v9 + 8) << 15) | *(v9 + 8);
  v28 = [a1 resampleMode] & 1;
  v29 = v28 & 0xFFFFFFF9 | (2 * ([a1 samplingMode] & 3));
  v30 = v29 & 0xFFFFFFE7 | (8 * ([a1 coordinateMode] & 3));
  if ([a1 normalizeCoordinates])
  {
    v31 = 32;
  }

  else
  {
    v31 = 0;
  }

  *&v32 = -1;
  *(&v32 + 1) = -1;
  v68 = v32;
  v69 = v32;
  v67 = v32;
  v64 = v32;
  v65 = v30 | v31;
  v66 = v27;
  *&v69 = [*(v55 + 16) count] | 0x10000;
  v51 = *&a1[*MEMORY[0x277CD7360]];
  v52 = *&a1[*MEMORY[0x277CD7368]];
  v50 = *(v55 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v34 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v34 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  DimensionSize = BaseTensor::GetDimensionSize(v7);
  v37 = BaseTensor::GetDimensionSize(v7);
  v38 = BaseTensor::GetDimensionSize(v7);
  v39 = BaseTensor::GetDimensionSize(v7);
  *&v40 = __PAIR64__(v37, DimensionSize);
  *(&v40 + 1) = __PAIR64__(v39, v38);
  v57 = v40;
  v41 = BaseTensor::GetDimensionSize(v10);
  v42 = BaseTensor::GetDimensionSize(v10);
  BaseTensor::GetDimensionSize(v10);
  v43 = BaseTensor::GetDimensionSize(v10);
  v44 = v35 + v41 - 1;
  v45 = (v42 + 1) >> 1;
  v46 = v43;
  v47 = v44 / v35;
  [v53 setComputePipelineState:PipelineStateForMPSKey];
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  v63 = 0;
  v61 = v57;
  [a1 spatialScale];
  v62 = v48;
  [v53 setBytes:&v61 length:32 atIndex:29];
  MPSSetNDArraysOnComputeEncoder(v53, v55, 4, 0, 0);
  v60[0] = v47;
  v60[1] = v45;
  v60[2] = v46;
  v58 = v35;
  v59 = xmmword_239B06620;
  [v53 dispatchThreadgroups:v60 threadsPerThreadgroup:&v58];
  return 0;
}

void sub_239A58300(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    operator delete(v3);
    if (!v1)
    {
LABEL_3:
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  if (!v4)
  {
LABEL_4:
    if (!v2)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v4);
  if (!v2)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v2);
  _Unwind_Resume(exception_object);
}

uint64_t EncodeConstantInitializationInternal(uint64_t a1, void *a2, uint64_t a3, char *a4, int a5)
{
  v9 = *(a1 + *MEMORY[0x277CD7370]);
  v10 = *(a1 + 168);
  v11 = &a4[*MEMORY[0x277CD7410]];
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = *(v11 + 3);
  v15 = MEMORY[0x277CD73D8];
  v16 = *&a4[*MEMORY[0x277CD73D8]];
  v53 = *(v11 + 2);
  v54 = v14;
  v52[0] = v12;
  v52[1] = v13;
  v17 = v16 & 0xF;
  v18 = *(v52 + v17);
  v51[2] = v53;
  v51[3] = v14;
  v51[0] = v12;
  v51[1] = v13;
  v19 = BYTE1(v16) & 0xF;
  v20 = *(v51 + v19);
  v21 = &a4[*MEMORY[0x277CD7418]];
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = *(v21 + 3);
  v57 = *(v21 + 2);
  v58 = v24;
  v56[0] = v22;
  v56[1] = v23;
  v25 = *(v56 + v17);
  v55[2] = v57;
  v55[3] = v24;
  v55[0] = v22;
  v55[1] = v23;
  v26 = *(v55 + v19);
  makeStrideBytes();
  v27 = *&a4[*v15];
  v50[6] = v77;
  v50[7] = v78;
  v50[4] = v75;
  v50[5] = v76;
  v50[2] = v73;
  v50[3] = v74;
  v50[0] = v71;
  v50[1] = v72;
  v28 = *(v50 + (v27 & 0xF));
  v29 = *&a4[*MEMORY[0x277CD73C8]];
  v49[6] = v77;
  v49[7] = v78;
  v49[4] = v75;
  v49[5] = v76;
  v49[2] = v73;
  v49[3] = v74;
  v49[0] = v71;
  v49[1] = v72;
  v48 = a3 + *(v49 + (BYTE1(v27) & 0xF)) * v26 + v28 * v25;
  v45 = *(v49 + (BYTE1(v27) & 0xF));
  v46 = v28 / (v29 >> 3);
  if (v29 > 285212703)
  {
    if (v29 <= 536870915)
    {
      if (v29 > 301989895)
      {
        if (v29 == 301989896)
        {
          v30 = 16;
          goto LABEL_45;
        }

        if (v29 == 335544328)
        {
          v30 = 17;
          goto LABEL_45;
        }
      }

      else
      {
        if (v29 == 285212704)
        {
          v30 = 13;
          goto LABEL_45;
        }

        if (v29 == 285212736)
        {
          v30 = 14;
          goto LABEL_45;
        }
      }
    }

    else if (v29 <= 536870927)
    {
      if (v29 == 536870916)
      {
        v30 = 0;
        goto LABEL_45;
      }

      if (v29 == 536870920)
      {
        v30 = 1;
        goto LABEL_45;
      }
    }

    else
    {
      switch(v29)
      {
        case 536870928:
          v30 = 2;
          goto LABEL_45;
        case 536870944:
          v30 = 3;
          goto LABEL_45;
        case 536870976:
          v30 = 4;
          goto LABEL_45;
      }
    }
  }

  else if (v29 <= 31)
  {
    if (v29 > 7)
    {
      if (v29 == 8)
      {
        v30 = 6;
        goto LABEL_45;
      }

      if (v29 == 16)
      {
        v30 = 7;
        goto LABEL_45;
      }
    }

    else
    {
      if (v29 == -1879048176)
      {
        v30 = 12;
        goto LABEL_45;
      }

      if (v29 == 4)
      {
        v30 = 5;
        goto LABEL_45;
      }
    }
  }

  else if (v29 <= 268435463)
  {
    if (v29 == 32)
    {
      v30 = 8;
      goto LABEL_45;
    }

    if (v29 == 64)
    {
      v30 = 9;
      goto LABEL_45;
    }
  }

  else
  {
    switch(v29)
    {
      case 268435464:
        v30 = 15;
        goto LABEL_45;
      case 268435472:
        v30 = 10;
        goto LABEL_45;
      case 268435488:
        v30 = 11;
        goto LABEL_45;
    }
  }

  v30 = 18;
LABEL_45:
  *&v31 = -1;
  *(&v31 + 1) = -1;
  v69 = v31;
  v70 = v31;
  v66 = -1;
  v68 = v31;
  v65 = v31;
  v67 = v30;
  v32 = 0.0;
  if (!a5)
  {
    v32 = v10;
  }

  v64 = v32;
  ComputeState = MPSLibrary::GetComputeState();
  v34 = [ComputeState threadExecutionWidth];
  if (v34 <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v34;
  }

  *&v35 = __PAIR64__(v45, v46);
  v47 = v35;
  *(&v35 + 1) = __PAIR64__(v20, v18);
  v63 = v35;
  [a2 setComputePipelineState:ComputeState];
  MPSLibrary::ReleaseComputeState();
  [a2 setBuffer:objc_msgSend(a4 offset:"buffer") atIndex:{v48, 0}];
  [a2 setBytes:&v64 length:4 atIndex:1];
  [a2 setBytes:&v63 length:16 atIndex:2];
  v61 = (v18 + v36 - 1) / v36;
  v62.i64[0] = (v20 + 1) >> 1;
  v62.i64[1] = 1;
  v59 = v36;
  v60 = xmmword_239B06620;
  result = [a2 dispatchThreadgroups:&v61 threadsPerThreadgroup:&v59];
  if (a5)
  {
    v38 = MPSLibrary::GetComputeState();
    v39 = [v38 threadExecutionWidth];
    if (v39 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v39;
    }

    v41 = 2 * v40;
    if (v20 >= v18)
    {
      v42 = v18;
    }

    else
    {
      v42 = v20;
    }

    v43 = v47;
    DWORD2(v43) = v42;
    v63 = v43;
    v44 = (v42 + v40 - 1) / v40;
    [a2 setComputePipelineState:v38];
    MPSLibrary::ReleaseComputeState();
    [a2 setBuffer:objc_msgSend(a4 offset:"buffer") atIndex:{v48, 0}];
    [a2 setBytes:&v63 length:16 atIndex:1];
    v61 = v44;
    v62 = vdupq_n_s64(1uLL);
    v59 = v41;
    v60 = v62;
    return [a2 dispatchThreadgroups:&v61 threadsPerThreadgroup:&v59];
  }

  return result;
}

uint64_t EncodeRandomInitializationInternal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 208);
  v10 = *(a1 + 144);
  v11 = *(a1 + 160);
  v12 = [a1 kernelDimensionalityForDestinationArray:v9];
  v13 = *(a1 + 152);
  v14 = MEMORY[0x277CD73C8];
  if (!v13)
  {
    v33 = a2;
    v15 = 0;
LABEL_7:

    *(a1 + 152) = [objc_alloc(MEMORY[0x277CD7288]) initWithDevice:objc_msgSend(a3 destinationDataType:"device") seed:*&v9[*v14] distributionDescriptor:{v11, v10}];
    a2 = v33;
    goto LABEL_8;
  }

  if ([v13 destinationDataType] != *&v9[*v14])
  {
    v33 = a2;
    v15 = *(a1 + 152);
    goto LABEL_7;
  }

  if (a5)
  {
    [*(a1 + 152) reinitializeDistributionDescriptor:a5];
  }

LABEL_8:
  v16 = *(a4 + 192);
  v17 = *&v9[*v14];
  v18 = &v9[*MEMORY[0x277CD7410]];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = MEMORY[0x277CD73D8];
  v22 = *&v9[*MEMORY[0x277CD73D8]];
  v23 = *(v18 + 2);
  v24 = *(v18 + 3);
  v41[2] = v23;
  v41[3] = v24;
  v41[0] = v19;
  v41[1] = v20;
  v25 = *(v41 + (v22 & 0xF));
  if (v12 >= 2)
  {
    for (i = 1; i != v12; ++i)
    {
      v39 = v22;
      v40[0] = v19;
      v40[1] = v20;
      v40[2] = v23;
      v40[3] = v24;
      v25 *= *(v40 + (*(&v39 | i & 0xF) & 0xF));
    }
  }

  v27 = &v9[*MEMORY[0x277CD7418]];
  v35 = v22;
  v28 = *&v27[4 * (*(&v35 | (v12 - 1) & 0xF) & 0xF)];
  v29 = v16 / (v17 >> 3);
  makeStrideBytes();
  v36 = *&v9[*v21];
  v38[6] = v48;
  v38[7] = v49;
  v38[4] = v46;
  v38[5] = v47;
  v38[2] = v44;
  v38[3] = v45;
  v38[0] = v42;
  v38[1] = v43;
  v30 = *(v38 + (*(&v36 | (v12 - 1) & 0xF) & 0xF));
  v31 = *&v9[*v14] >> 3;
  v37[6] = v48;
  v37[7] = v49;
  v37[4] = v46;
  v37[5] = v47;
  v37[2] = v44;
  v37[3] = v45;
  v37[0] = v42;
  v37[1] = v43;
  return [*(a1 + 152) encodeToCommandBuffer:a3 computeEncoder:a2 destinationBuffer:objc_msgSend(v9 destinationOffset:"buffer") numEntries:v29 + v30 / v31 * v28 stride:{v25, *(v37 + (v36 & 0xF)) / v31}];
}

uint64_t GetPlaceHolderIndexInSourceArrayAffineGEMM(MPSKernelDAG *a1, MPSNDArrayAffineQuantizationDescriptor *a2, uint64_t *a3, MPSNDArrayAffineQuantizationDescriptor *a4, uint64_t *a5, int a6, const BaseTensor **a7, const BaseTensor **a8)
{
  if (a6)
  {
    if (a4)
    {
      v61 = a7;
      v62 = a5;
      v63 = MTLReportFailureTypeEnabled();
      a5 = v62;
      a7 = v61;
      if (v63)
      {
        MTLReportFailure();
        a5 = v62;
        a7 = v61;
      }
    }

    if (a5)
    {
      v64 = a7;
      v65 = a5;
      v66 = MTLReportFailureTypeEnabled();
      a5 = v65;
      a7 = v64;
      if (v66)
      {
        MTLReportFailure();
        a5 = v65;
        a7 = v64;
      }
    }
  }

  v69 = a5;
  v70 = a7;
  v12 = [MPSNDArrayQuantizedMatrixMultiplication getLeftScaleIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4, a3];
  v13 = [MPSNDArrayQuantizedMatrixMultiplication getLeftZeroPointIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  v14 = [MPSNDArrayQuantizedMatrixMultiplication getLeftMinValIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  v15 = [MPSNDArrayQuantizedMatrixMultiplication getLeftDQuantScaleIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  v16 = [MPSNDArrayQuantizedMatrixMultiplication getLeftDQuantMinValIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  *v78 = [MPSNDArrayQuantizedMatrixMultiplication getRightScaleIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  *v79 = [MPSNDArrayQuantizedMatrixMultiplication getRightZeroPointIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  *v80 = [MPSNDArrayQuantizedMatrixMultiplication getRightMinValIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  *v81 = [MPSNDArrayQuantizedMatrixMultiplication getRightDQuantScaleIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  v71 = a2;
  v73 = a4;
  *v82 = [MPSNDArrayQuantizedMatrixMultiplication getRightDQuantMinValIndexWithLeftAffineQuantizationDescriptor:a2 rightQuantizationDescriptor:a4];
  if (a6)
  {
    --v12;
    --v13;
    v17 = v14 - 1;
  }

  else
  {
    v17 = v14;
  }

  if (a6)
  {
    v18 = v15 - 1;
  }

  else
  {
    v18 = v15;
  }

  *v75 = v17;
  *v76 = v18;
  if (a6)
  {
    v19 = v16 - 1;
  }

  else
  {
    v19 = v16;
  }

  *v77 = v19;
  v20 = *(a1 + 8);
  v21 = *v20;
  v74 = v20[1];
  if (*v20 == v74)
  {
    v89 = -1;
    v90 = -1;
    v87 = -1;
    v88 = -1;
    v86 = -1;
    v26 = -1;
    v84 = -1;
    v85 = -1;
    v83 = -1;
    v25 = -1;
    v24 = -1;
    v23 = -1;
  }

  else
  {
    v22 = 0;
    v23 = -1;
    v24 = -1;
    v25 = -1;
    v83 = -1;
    v84 = -1;
    v85 = -1;
    v26 = -1;
    v86 = -1;
    v87 = -1;
    v88 = -1;
    v89 = -1;
    v90 = -1;
    do
    {
      v27 = *v21;
      if (v27 == *(MPSKernelDAG::GetCoreOpInputAtIndex(a1) + 32))
      {
        v23 = v22;
      }

      v28 = *v21;
      if (v28 == *(MPSKernelDAG::GetCoreOpInputAtIndex(a1) + 32))
      {
        v26 = v22;
      }

      if ((v12 & 0x8000000000000000) == 0)
      {
        v29 = *v21;
        if (v29 == *(MPSKernelDAG::GetCoreOpInputAtIndex(a1) + 32))
        {
          v24 = v22;
        }
      }

      if ((v13 & 0x8000000000000000) == 0)
      {
        v30 = *v21;
        if (v30 == *(MPSKernelDAG::GetCoreOpInputAtIndex(a1) + 32))
        {
          v25 = v22;
        }
      }

      if ((*v75 & 0x8000000000000000) == 0)
      {
        v31 = *v21;
        CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v33 = v83;
        if (v31 == *(CoreOpInputAtIndex + 32))
        {
          v33 = v22;
        }

        v83 = v33;
      }

      if ((*v76 & 0x8000000000000000) == 0)
      {
        v34 = *v21;
        v35 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v36 = v84;
        if (v34 == *(v35 + 32))
        {
          v36 = v22;
        }

        v84 = v36;
      }

      if ((*v77 & 0x8000000000000000) == 0)
      {
        v37 = *v21;
        v38 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v39 = v85;
        if (v37 == *(v38 + 32))
        {
          v39 = v22;
        }

        v85 = v39;
      }

      if ((*v78 & 0x8000000000000000) == 0)
      {
        v40 = *v21;
        v41 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v42 = v86;
        if (v40 == *(v41 + 32))
        {
          v42 = v22;
        }

        v86 = v42;
      }

      if ((*v79 & 0x8000000000000000) == 0)
      {
        v43 = *v21;
        v44 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v45 = v87;
        if (v43 == *(v44 + 32))
        {
          v45 = v22;
        }

        v87 = v45;
      }

      if ((*v80 & 0x8000000000000000) == 0)
      {
        v46 = *v21;
        v47 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v48 = v88;
        if (v46 == *(v47 + 32))
        {
          v48 = v22;
        }

        v88 = v48;
      }

      if ((*v81 & 0x8000000000000000) == 0)
      {
        v49 = *v21;
        v50 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v51 = v89;
        if (v49 == *(v50 + 32))
        {
          v51 = v22;
        }

        v89 = v51;
      }

      if ((*v82 & 0x8000000000000000) == 0)
      {
        v52 = *v21;
        v53 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        v54 = v90;
        if (v52 == *(v53 + 32))
        {
          v54 = v22;
        }

        v90 = v54;
      }

      ++v22;
      ++v21;
    }

    while (v21 != v74);
  }

  if (v68)
  {
    *v68 = v23;
    v68[1] = v24;
    v68[2] = v25;
    v68[3] = v83;
    v68[4] = v84;
    v68[5] = v85;
  }

  if (v69)
  {
    *v69 = v26;
    v69[1] = v86;
    v69[2] = v87;
    v69[3] = v88;
    v69[4] = v89;
    v69[5] = v90;
  }

  if (v70)
  {
    *v70 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
    if (v12 < 0)
    {
      v70[1] = 0;
      if ((v13 & 0x8000000000000000) == 0)
      {
LABEL_66:
        v70[2] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
        if ((*v75 & 0x8000000000000000) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_72;
      }
    }

    else
    {
      v70[1] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_66;
      }
    }

    v70[2] = 0;
    if ((*v75 & 0x8000000000000000) == 0)
    {
LABEL_67:
      v70[3] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
      if ((*v76 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    }

LABEL_72:
    v70[3] = 0;
    if ((*v76 & 0x8000000000000000) == 0)
    {
LABEL_68:
      v70[4] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
      if ((*v77 & 0x8000000000000000) == 0)
      {
LABEL_69:
        v55 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
LABEL_75:
        v70[5] = v55;
        goto LABEL_76;
      }

LABEL_74:
      v55 = 0;
      goto LABEL_75;
    }

LABEL_73:
    v70[4] = 0;
    if ((*v77 & 0x8000000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_74;
  }

LABEL_76:
  if (!a8)
  {
    goto LABEL_89;
  }

  *a8 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
  if ((*v78 & 0x8000000000000000) != 0)
  {
    a8[1] = 0;
    if ((*v79 & 0x8000000000000000) == 0)
    {
LABEL_79:
      a8[2] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
      if ((*v80 & 0x8000000000000000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_85;
    }
  }

  else
  {
    a8[1] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
    if ((*v79 & 0x8000000000000000) == 0)
    {
      goto LABEL_79;
    }
  }

  a8[2] = 0;
  if ((*v80 & 0x8000000000000000) == 0)
  {
LABEL_80:
    a8[3] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
    if ((*v81 & 0x8000000000000000) == 0)
    {
      goto LABEL_81;
    }

LABEL_86:
    a8[4] = 0;
    if ((*v82 & 0x8000000000000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_87:
    v56 = 0;
    goto LABEL_88;
  }

LABEL_85:
  a8[3] = 0;
  if ((*v81 & 0x8000000000000000) != 0)
  {
    goto LABEL_86;
  }

LABEL_81:
  a8[4] = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
  if ((*v82 & 0x8000000000000000) != 0)
  {
    goto LABEL_87;
  }

LABEL_82:
  v56 = MPSKernelDAG::GetCoreOpInputAtIndex(a1);
LABEL_88:
  a8[5] = v56;
LABEL_89:
  if (v71)
  {
    v57 = v23 == -1;
  }

  else
  {
    v57 = 0;
  }

  v58 = v57;
  if (v73)
  {
    v59 = v26 == -1;
  }

  else
  {
    v59 = 0;
  }

  if (v59)
  {
    return 1;
  }

  else
  {
    return v58;
  }
}

uint64_t GetPlaceHolderIndexInSourceArrayQuantizedGEMM(MPSKernelDAG *a1, MPSNDArrayAffineQuantizationDescriptor *a2, uint64_t *a3, MPSNDArrayAffineQuantizationDescriptor *a4, uint64_t *a5, BOOL *a6, BOOL *a7)
{
  if (a3)
  {
    if (a5)
    {
      *a3 = -1;
      *a5 = -1;
      a3[1] = -1;
      a5[1] = -1;
      a3[2] = -1;
      a5[2] = -1;
      a3[3] = -1;
      a5[3] = -1;
      a3[4] = -1;
      a5[4] = -1;
      a3[5] = -1;
      a5[5] = -1;
      if (!a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *&v15 = -1;
      *(&v15 + 1) = -1;
      *(a3 + 1) = v15;
      *(a3 + 2) = v15;
      *a3 = v15;
      if (!a2)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    if (a5)
    {
      *&v13 = -1;
      *(&v13 + 1) = -1;
      *(a5 + 1) = v13;
      *(a5 + 2) = v13;
      *a5 = v13;
    }

    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if ([(MPSNDArrayQuantizationDescriptor *)a2 quantizationScheme]!= 1)
  {
    PlaceHolderIndexInSourceArrayAffineGEMM = -1;
    goto LABEL_18;
  }

LABEL_11:
  if (!a4)
  {
    v16 = a1;
    v17 = a2;
    v18 = a3;
    v19 = 0;
LABEL_15:
    PlaceHolderIndexInSourceArrayAffineGEMM = GetPlaceHolderIndexInSourceArrayAffineGEMM(v16, v17, v18, v19, a5, 0, 0, 0);
    if (!a2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ([(MPSNDArrayQuantizationDescriptor *)a4 quantizationScheme]== 1)
  {
    v16 = a1;
    v17 = a2;
    v18 = a3;
    v19 = a4;
    goto LABEL_15;
  }

  PlaceHolderIndexInSourceArrayAffineGEMM = -1;
  if (!a2)
  {
    goto LABEL_19;
  }

LABEL_18:
  if ([(MPSNDArrayQuantizationDescriptor *)a2 quantizationScheme]!= 2)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (a4)
  {
    if ([(MPSNDArrayQuantizationDescriptor *)a4 quantizationScheme]!= 2)
    {
      goto LABEL_24;
    }

    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = a4;
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = 0;
  }

  PlaceHolderIndexInSourceArrayAffineGEMM = GetPlaceHolderIndexInSourceArrayLUTGEMM(v20, v21, v22, v23, a5);
LABEL_24:
  if (a6)
  {
    v25 = a3[1];
    v24 = a3[2];
    v26 = a3[3];
    v27 = a3[4];
    v28 = a3[5];
    v29 = v24 != -1;
    if (v24 == -1)
    {
      v30 = 3;
    }

    else
    {
      v30 = 4;
    }

    if (v25 != -1)
    {
      ++v29;
    }

    if (v26 == -1)
    {
      v31 = v29;
    }

    else
    {
      v31 = v29 + 1;
    }

    v32 = a5[3];
    if (v32 == -1)
    {
      v33 = v30;
    }

    else
    {
      v33 = v30 + 1;
    }

    if (v27 == -1)
    {
      v34 = v33;
    }

    else
    {
      ++v31;
      v34 = v33 + 1;
    }

    if (v28 == -1)
    {
      v35 = v31;
    }

    else
    {
      v35 = v31 + 1;
    }

    v36 = a5[1];
    v37 = a5[2];
    if (v37 == -1)
    {
      v38 = v35 + 3;
    }

    else
    {
      v38 = v35 + 4;
    }

    v39 = a5[5];
    if (v32 == -1)
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 + 1;
    }

    if (a5[4] == -1)
    {
      v41 = v40;
    }

    else
    {
      v41 = v40 + 1;
    }

    if (v25 != 2 && v25 != -1 || v24 != 3 && v24 != -1)
    {
      goto LABEL_69;
    }

    v42 = 0;
    v44 = v27 != -1 && v27 != v33;
    v45 = v26 == v30 || v26 == -1;
    if (!v45 || v44)
    {
      goto LABEL_70;
    }

    if (v28 != -1 && v28 != v34)
    {
      goto LABEL_69;
    }

    v42 = 0;
    v48 = v37 == -1 || v37 == v35 + 3;
    v50 = v32 != -1 && v32 != v38;
    v51 = v36 == v35 + 2 || v36 == -1;
    if (!v51 || !v48 || v50)
    {
      goto LABEL_70;
    }

    if (v39 == -1 || v39 == v40)
    {
      v42 = v39 == -1 || v39 == v41;
    }

    else
    {
LABEL_69:
      v42 = 0;
    }

LABEL_70:
    *a6 = v42;
  }

  return PlaceHolderIndexInSourceArrayAffineGEMM;
}

uint64_t GetPlaceHolderIndexInSourceArrayLUTGEMM(MPSKernelDAG *this, MPSNDArrayLUTQuantizationDescriptor *a2, uint64_t *a3, MPSNDArrayLUTQuantizationDescriptor *a4, uint64_t *a5)
{
  v5 = *(this + 8);
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    v13 = -1;
    v12 = -1;
    v11 = -1;
    v10 = -1;
  }

  else if (a2)
  {
    if (a4)
    {
      v9 = 0;
      v10 = -1;
      v11 = -1;
      v12 = -1;
      v13 = -1;
      do
      {
        v14 = *v6;
        if (v14 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v10 = v9;
        }

        v15 = *v6;
        if (v15 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v11 = v9;
        }

        v16 = *v6;
        if (v16 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v12 = v9;
        }

        v17 = *v6++;
        if (v17 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v13 = v9;
        }

        ++v9;
      }

      while (v6 != v7);
    }

    else
    {
      v22 = 0;
      v10 = -1;
      v11 = -1;
      v12 = -1;
      do
      {
        v23 = *v6;
        if (v23 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v10 = v22;
        }

        v24 = *v6;
        if (v24 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v11 = v22;
        }

        v25 = *v6++;
        if (v25 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v12 = v22;
        }

        ++v22;
      }

      while (v6 != v7);
      v13 = -1;
    }
  }

  else
  {
    if (a4)
    {
      v18 = 0;
      v10 = -1;
      v11 = -1;
      v13 = -1;
      do
      {
        v19 = *v6;
        if (v19 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v10 = v18;
        }

        v20 = *v6;
        if (v20 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v11 = v18;
        }

        v21 = *v6++;
        if (v21 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v13 = v18;
        }

        ++v18;
      }

      while (v6 != v7);
    }

    else
    {
      v26 = 0;
      v10 = -1;
      v11 = -1;
      do
      {
        v27 = *v6;
        if (v27 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v10 = v26;
        }

        v28 = *v6++;
        if (v28 == *(MPSKernelDAG::GetCoreOpInputAtIndex(this) + 32))
        {
          v11 = v26;
        }

        ++v26;
      }

      while (v6 != v7);
      v13 = -1;
    }

    v12 = -1;
  }

  if (a3)
  {
    *a3 = v10;
    a3[1] = v12;
  }

  if (a5)
  {
    *a5 = v11;
    a5[1] = v13;
  }

  if (a2)
  {
    v29 = v10 == -1;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;
  if (a4)
  {
    v31 = v11 == -1;
  }

  else
  {
    v31 = 0;
  }

  if (v31)
  {
    return 1;
  }

  else
  {
    return v30;
  }
}

uint64_t MPSNDArrayOptimGEMVI8FunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  v27 = v5 & 1;
  v26 = (v5 & 2) != 0;
  v25 = (v5 & 8) != 0;
  v24 = (v5 & 4) != 0;
  v23 = (v5 >> 4) & 0x3F;
  v22 = (v5 >> 14) & 7;
  v21 = (v5 >> 10) & 0xF;
  v20 = (v5 & 0x20000) != 0;
  v19 = (v5 >> 18) & 0x1F;
  v18 = (v5 >> 23) & 0x1F;
  v17 = (v5 & 0x10000000) != 0;
  v16 = (v5 & 0x20000000) != 0;
  v15 = (v5 >> 30) & 0x3F;
  v14 = (v5 >> 36) & 0xF;
  v13 = BYTE5(v5) & 1;
  v12 = (v5 & 0x20000000000) != 0;
  v11 = (v5 >> 42) & 0xF;
  v10 = (v5 & 0x400000000000) != 0;
  [v6 setConstantValue:&v27 type:53 atIndex:114];
  [v6 setConstantValue:&v26 type:53 atIndex:113];
  [v6 setConstantValue:&v25 type:53 atIndex:112];
  [v6 setConstantValue:&v24 type:53 atIndex:111];
  [v6 setConstantValue:&v23 type:41 atIndex:110];
  [v6 setConstantValue:&v22 type:41 atIndex:109];
  [v6 setConstantValue:&v21 type:41 atIndex:108];
  [v6 setConstantValue:&v20 type:53 atIndex:107];
  [v6 setConstantValue:&v19 type:41 atIndex:106];
  [v6 setConstantValue:&v18 type:41 atIndex:105];
  [v6 setConstantValue:&v17 type:53 atIndex:104];
  [v6 setConstantValue:&v16 type:53 atIndex:103];
  [v6 setConstantValue:&v15 type:41 atIndex:102];
  [v6 setConstantValue:&v14 type:41 atIndex:101];
  [v6 setConstantValue:&v13 type:53 atIndex:100];
  [v6 setConstantValue:&v12 type:53 atIndex:99];
  [v6 setConstantValue:&v11 type:41 atIndex:98];
  [v6 setConstantValue:&v10 type:53 atIndex:97];
  AddFunctionConstantList(v6, a3);
  v7 = *a2;
  v8 = _MPSNewSpecializedFunction();

  return v8;
}

uint64_t MPSNDArrayMatMulDeviceBehavior::EncodeArrayMultiplyI4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v570 = *MEMORY[0x277D85DE8];
  if ((IsOptimizedInt4KernelSupported(a2, a5) & 1) == 0)
  {
    EncodeQuantizedMatrixMultiplicationFallback(a2, a3, a4, a5);
    goto LABEL_498;
  }

  v452 = a2;
  v10 = *(a1 + 8);
  if (!v10)
  {
    if (*(a2 + 208) == 4)
    {
      v10 = *(a2 + 200);
    }

    else
    {
      v10 = 0;
    }
  }

  v410 = v10;
  v437 = a4;
  v11 = *(a2 + *MEMORY[0x277CD7370]);
  v435 = *(a2 + *MEMORY[0x277CD7350]);
  v12 = [*(a5 + 232) inputTensorAtIndex:0];
  v13 = [*(a5 + 232) inputTensorAtIndex:1];
  v455 = a5;
  v14 = [*(a5 + 232) outputTensorAtIndex:0];
  v15 = v12[2];
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

  v18 = v13[2];
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

  v21 = v14[2];
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

  v24 = *&v452[1]._fileVersion.bits;
  isa = v452[2].super.isa;
  if (*v12 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v13 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v14 >= 4uLL && MEMORY[0x18] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v25 = [*(v455 + 232) graph];
  if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v25, v24, &v566, isa, &v562, 0, v26) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v453 = a3;
  v27 = *(v455 + 16);
  v28 = [v27 objectAtIndexedSubscript:v566];
  v29 = [v27 objectAtIndexedSubscript:v562];
  v454 = *(v455 + 208);
  v30 = MEMORY[0x277CD7410];
  v31 = MEMORY[0x277CD73D8];
  v448 = *(&v452->super.isa + *MEMORY[0x277CD7378]);
  if ((v448 & 1) == 0)
  {
    v32 = *(v28 + *MEMORY[0x277CD73D8]);
    if ((v32 || BYTE1(*(v28 + *MEMORY[0x277CD73D8])) != 1) && (v32 != 1 || BYTE1(*(v28 + *MEMORY[0x277CD73D8]))) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v33 = *(v29 + *v31);
    if ((v33 || BYTE1(*(v29 + *v31)) != 1) && (v33 != 1 || BYTE1(*(v29 + *v31))) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v28 + *v31 + 2) != 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v29 + *v31 + 2) != 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v34 = MEMORY[0x277CD73F0];
    if (*(v28 + *MEMORY[0x277CD73F0]) >= 4uLL && *(v28 + *v30 + 4 * (*(v28 + *v31 + 3) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v29 + *v34) >= 4uLL && *(v29 + *v30 + 4 * (*(v29 + *v31 + 3) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v28 + *v30 + 4 * (*(v28 + *v31) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v28 + *v30 + 4 * (*(v28 + *v31 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v29 + *v30 + 4 * (*(v29 + *v31) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v29 + *v30 + 4 * (*(v29 + *v31 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[0] != *(v454 + *v30 + 4 * (*(v454 + *v31) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (MEMORY[8] != *(v454 + *v30 + 4 * (*(v454 + *v31 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v28 + *v30 + 4 * (*(v28 + *v31) & 0xF)) != *(v29 + *v30 + 4 * (*(v29 + *v31 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v28 + *v30 + 4 * (*(v28 + *v31 + 1) & 0xF)) != *(v454 + *v30 + 4 * (*(v454 + *v31 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v29 + *v30 + 4 * (*(v29 + *v31) & 0xF)) != *(v454 + *v30 + 4 * (*(v454 + *v31) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (!(v24 | isa))
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_119;
    }

    if (v24 && isa)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

LABEL_55:
      [(MPSNDArrayAffineQuantizationDescriptor *)v24 implicitZeroPoint];
      v35 = MPSGetLinearOffsetBytes(v29, 0, 3, 0, 0);
      v36 = *(*(v455 + 8) + 144);
      MPSGetLinearOffsetBytes(v28, 0, 3, 0, 0);
      v408 = v566;
      v409 = v562;
      v37 = [v27 objectAtIndexedSubscript:v567];
      v38 = (v37 + *v30);
      v39 = *v38;
      v40 = v38[1];
      v41 = *(v37 + *v31);
      v42 = v38[2];
      v43 = v38[3];
      v490[3] = v43;
      v490[2] = v42;
      v490[1] = v40;
      v490[0] = v39;
      v446 = v35;
      if (*(v490 + (v41 & 0xF)) == 1)
      {
        v489[0] = v39;
        v489[1] = v40;
        v489[2] = v42;
        v489[3] = v43;
        v44 = *(v489 + (BYTE1(v41) & 0xF)) == 1;
      }

      else
      {
        v44 = 0;
      }

      v407 = v567;
      if (![(MPSNDArrayAffineQuantizationDescriptor *)v24 hasZeroPoint])
      {
        v406 = 0;
        v45 = 0;
        goto LABEL_63;
      }

      v45 = [v27 objectAtIndexedSubscript:v568];
      v46 = *v30;
      v47 = *(v45 + v46);
      v48 = *(v45 + v46 + 16);
      v49 = *v31;
      v50 = *(v45 + v49);
      v51 = *(v45 + v46 + 32);
      v52 = *(v45 + v46 + 48);
      v488[3] = v52;
      v488[2] = v51;
      v488[1] = v48;
      v488[0] = v47;
      v53 = *(v488 + (v50 & 0xF));
      if (v53 == 1)
      {
        v487[0] = v47;
        v487[1] = v48;
        v487[2] = v51;
        v487[3] = v52;
        v406 = v568;
        if (v44 || *(v487 + (BYTE1(v50) & 0xF)) == 1)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v406 = v568;
        if (v44)
        {
          goto LABEL_63;
        }
      }

      v70 = (v37 + v46);
      v71 = *v70;
      v72 = v70[1];
      v73 = *(v37 + v49);
      v74 = v70[2];
      v75 = v70[3];
      v486[3] = v75;
      v486[2] = v74;
      v486[1] = v72;
      v486[0] = v71;
      if (v53 != *(v486 + (v73 & 0xF)))
      {
        goto LABEL_686;
      }

      v485[0] = v47;
      v485[1] = v48;
      v485[2] = v51;
      v485[3] = v52;
      v76 = *(v485 + (BYTE1(v50) & 0xF));
      v484[0] = v71;
      v484[1] = v72;
      v484[2] = v74;
      v484[3] = v75;
      if (v76 != *(v484 + (BYTE1(v73) & 0xF)))
      {
LABEL_686:
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

LABEL_63:
      if (![(MPSNDArrayAffineQuantizationDescriptor *)v24 hasMinValue])
      {
        v404 = 0;
        v54 = 0;
        goto LABEL_68;
      }

      v54 = [v27 objectAtIndexedSubscript:v569];
      v55 = *v30;
      v56 = *(v54 + v55);
      v57 = *(v54 + v55 + 16);
      v58 = *v31;
      v59 = *(v54 + v58);
      v60 = *(v54 + v55 + 32);
      v61 = *(v54 + v55 + 48);
      v483[3] = v61;
      v483[2] = v60;
      v483[1] = v57;
      v483[0] = v56;
      v62 = *(v483 + (v59 & 0xF));
      if (v62 == 1)
      {
        v482[0] = v56;
        v482[1] = v57;
        v482[2] = v60;
        v482[3] = v61;
        v404 = v569;
        if (v44 || *(v482 + (BYTE1(v59) & 0xF)) == 1)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v404 = v569;
        if (v44)
        {
          goto LABEL_68;
        }
      }

      v77 = (v37 + v55);
      v78 = *v77;
      v79 = v77[1];
      v80 = *(v37 + v58);
      v81 = v77[2];
      v82 = v77[3];
      v481[3] = v82;
      v481[2] = v81;
      v481[1] = v79;
      v481[0] = v78;
      if (v62 != *(v481 + (v80 & 0xF)))
      {
        goto LABEL_687;
      }

      v480[0] = v56;
      v480[1] = v57;
      v480[2] = v60;
      v480[3] = v61;
      v83 = *(v480 + (BYTE1(v59) & 0xF));
      v479[0] = v78;
      v479[1] = v79;
      v479[2] = v81;
      v479[3] = v82;
      if (v83 != *(v479 + (BYTE1(v80) & 0xF)))
      {
LABEL_687:
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

LABEL_68:
      if ((v448 & 1) == 0)
      {
        if (*(v28 + *v30 + 4 * (*(v28 + *v31) & 0xF)) != *(v29 + *v30 + 4 * (*(v29 + *v31 + 1) & 0xF)) && MTLReportFailureTypeEnabled())
        {
          v371 = *v30;
          v372 = *v31;
          v375 = *(v28 + v371 + 4 * (*(v28 + v372) & 0xF));
          v378 = *(v29 + v371 + 4 * (*(v29 + v372 + 1) & 0xF));
          MTLReportFailure();
        }

        if (v563 != -1 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v564 != -1 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v565 != -1 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }
      }

      v63 = *v30;
      v64 = *(v28 + v63);
      v65 = *(v28 + v63 + 16);
      v66 = *(v28 + v63 + 32);
      v67 = *v31;
      v68 = *(v28 + v67);
      v478 = *(v28 + v63 + 48);
      v477[2] = v66;
      v477[1] = v65;
      v477[0] = v64;
      v442 = *(v477 + (BYTE1(v68) & 0xF));
      v476[3] = v478;
      v476[2] = v66;
      v476[1] = v65;
      v476[0] = v64;
      v450 = v68;
      v433 = *(v476 + (v68 & 0xF));
      v391 = v36 + v446;
      v430 = BYTE1(*(v29 + v67));
      v385 = *(v29 + v63 + 4 * (*(v29 + v67) & 0xF));
      v439 = v385;
      v69 = v29;
      v444 = v29;
      if (v448)
      {
        goto LABEL_174;
      }

LABEL_138:
      if (*(v28 + *MEMORY[0x277CD73C8]) != 4 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v116 = *(v69 + *MEMORY[0x277CD73C8]);
      if (v116 != -1879048176 && v116 != 268435472 && v116 != 268435488 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if ((*(v28 + *MEMORY[0x277CD7400]) & 3) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if ((*(v28 + *MEMORY[0x277CD7408]) & 7) != 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v117 = MEMORY[0x277CD73F0];
      if (*(v37 + *MEMORY[0x277CD73F0]))
      {
        v118 = 0;
        do
        {
          v119 = *v30;
          v120 = *v31;
          v474 = *(v28 + v120);
          v121 = *(v28 + v119 + 4 * (*(&v474 | v118 & 0xF) & 0xF));
          v475 = *(v37 + v120);
          if (v121 % *(v37 + v119 + 4 * (*(&v475 | v118 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v122 = *v31;
          v472 = *(v28 + v122);
          v123 = *(&v472 | v118 & 0xF);
          v473 = *(v37 + v122);
          if (v123 != *(&v473 | v118 & 0xF) && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (v45)
          {
            v124 = *v30;
            v125 = *v31;
            v470 = *(v28 + v125);
            v126 = *(v28 + v124 + 4 * (*(&v470 | v118 & 0xF) & 0xF));
            v471 = *(v37 + v125);
            if (v126 % *(v45 + v124 + 4 * (*(&v471 | v118 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            v127 = *v31;
            v468 = *(v28 + v127);
            v128 = *(&v468 | v118 & 0xF);
            v469 = *(v45 + v127);
            if (v128 != *(&v469 | v118 & 0xF) && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }

          if (v54)
          {
            v129 = *v30;
            v130 = *v31;
            v466 = *(v28 + v130);
            v131 = *(v28 + v129 + 4 * (*(&v466 | v118 & 0xF) & 0xF));
            v467 = *(v37 + v130);
            if (v131 % *(v54 + v129 + 4 * (*(&v467 | v118 & 0xF) & 0xF)) && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            v132 = *v31;
            v464 = *(v28 + v132);
            v133 = *(&v464 | v118 & 0xF);
            v465 = *(v54 + v132);
            if (v133 != *(&v465 | v118 & 0xF) && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }

          ++v118;
        }

        while (v118 < *(v37 + *v117));
      }

      if (v45 && *(v45 + *MEMORY[0x277CD73C8]) != 536870916 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*(v37 + *MEMORY[0x277CD73C8]) != *&v444[*MEMORY[0x277CD73C8]] && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (v54 && *(v54 + *MEMORY[0x277CD73C8]) != *&v444[*MEMORY[0x277CD73C8]] && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_174;
    }
  }

  if (v24)
  {
    goto LABEL_55;
  }

LABEL_119:
  [(MPSNDArrayAffineQuantizationDescriptor *)isa implicitZeroPoint];
  v84 = MPSGetLinearOffsetBytes(v28, 0, 3, 0, 0);
  v85 = *(*(v455 + 8) + 64);
  MPSGetLinearOffsetBytes(v29, 0, 3, 0, 0);
  v408 = v562;
  v409 = v566;
  v37 = [v27 objectAtIndexedSubscript:v563];
  v86 = (v37 + *v30);
  v87 = *v86;
  v88 = v86[1];
  v89 = *(v37 + *v31);
  v90 = v86[2];
  v91 = v86[3];
  v505[3] = v91;
  v505[2] = v90;
  v505[1] = v88;
  v505[0] = v87;
  if (*(v505 + (v89 & 0xF)) == 1)
  {
    v504[0] = v87;
    v504[1] = v88;
    v504[2] = v90;
    v504[3] = v91;
    v92 = *(v504 + (BYTE1(v89) & 0xF)) == 1;
  }

  else
  {
    v92 = 0;
  }

  v407 = v563;
  if (![(MPSNDArrayAffineQuantizationDescriptor *)isa hasZeroPoint])
  {
    v406 = 0;
    v45 = 0;
    goto LABEL_127;
  }

  v45 = [v27 objectAtIndexedSubscript:v564];
  v93 = *v30;
  v94 = *(v45 + v93);
  v95 = *(v45 + v93 + 16);
  v96 = *v31;
  v97 = *(v45 + v96);
  v98 = *(v45 + v93 + 32);
  v99 = *(v45 + v93 + 48);
  v503[3] = v99;
  v503[2] = v98;
  v503[1] = v95;
  v503[0] = v94;
  v100 = *(v503 + (v97 & 0xF));
  if (v100 == 1)
  {
    v502[0] = v94;
    v502[1] = v95;
    v502[2] = v98;
    v502[3] = v99;
    v406 = v564;
    if (v92 || *(v502 + (BYTE1(v97) & 0xF)) == 1)
    {
      goto LABEL_127;
    }
  }

  else
  {
    v406 = v564;
    if (v92)
    {
      goto LABEL_127;
    }
  }

  v263 = (v37 + v93);
  v264 = *v263;
  v265 = v263[1];
  v266 = *(v37 + v96);
  v267 = v263[2];
  v268 = v263[3];
  v501[3] = v268;
  v501[2] = v267;
  v501[1] = v265;
  v501[0] = v264;
  if (v100 != *(v501 + (v266 & 0xF)))
  {
    goto LABEL_688;
  }

  v500[0] = v94;
  v500[1] = v95;
  v500[2] = v98;
  v500[3] = v99;
  v269 = *(v500 + (BYTE1(v97) & 0xF));
  v499[0] = v264;
  v499[1] = v265;
  v499[2] = v267;
  v499[3] = v268;
  if (v269 != *(v499 + (BYTE1(v266) & 0xF)))
  {
LABEL_688:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

LABEL_127:
  if (![(MPSNDArrayAffineQuantizationDescriptor *)isa hasMinValue])
  {
    v404 = 0;
    v54 = 0;
    goto LABEL_132;
  }

  v54 = [v27 objectAtIndexedSubscript:v565];
  v101 = *v30;
  v102 = *(v54 + v101);
  v103 = *(v54 + v101 + 16);
  v104 = *v31;
  v105 = *(v54 + v104);
  v106 = *(v54 + v101 + 32);
  v107 = *(v54 + v101 + 48);
  v498[3] = v107;
  v498[2] = v106;
  v498[1] = v103;
  v498[0] = v102;
  v108 = *(v498 + (v105 & 0xF));
  if (v108 == 1)
  {
    v497[0] = v102;
    v497[1] = v103;
    v497[2] = v106;
    v497[3] = v107;
    v404 = v565;
    if (v92 || *(v497 + (BYTE1(v105) & 0xF)) == 1)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v404 = v565;
    if (v92)
    {
      goto LABEL_132;
    }
  }

  v270 = (v37 + v101);
  v271 = *v270;
  v272 = v270[1];
  v273 = *(v37 + v104);
  v274 = v270[2];
  v275 = v270[3];
  v496[3] = v275;
  v496[2] = v274;
  v496[1] = v272;
  v496[0] = v271;
  if (v108 != *(v496 + (v273 & 0xF)))
  {
    goto LABEL_689;
  }

  v495[0] = v102;
  v495[1] = v103;
  v495[2] = v106;
  v495[3] = v107;
  v276 = *(v495 + (BYTE1(v105) & 0xF));
  v494[0] = v271;
  v494[1] = v272;
  v494[2] = v274;
  v494[3] = v275;
  if (v276 != *(v494 + (BYTE1(v273) & 0xF)))
  {
LABEL_689:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

LABEL_132:
  if ((v448 & 1) == 0)
  {
    if (*(v29 + *v30 + 4 * (*(v29 + *v31 + 1) & 0xF)) != *(v28 + *v30 + 4 * (*(v28 + *v31) & 0xF)) && MTLReportFailureTypeEnabled())
    {
      v373 = *v30;
      v374 = *v31;
      v375 = *(v29 + v373 + 4 * (*(v29 + v374 + 1) & 0xF));
      v378 = *(v28 + v373 + 4 * (*(v28 + v374) & 0xF));
      MTLReportFailure();
    }

    if (v567 != -1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v568 != -1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v569 != -1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v391 = v85 + v84;
  v109 = *v30;
  v110 = *(v29 + v109);
  v111 = *(v29 + v109 + 16);
  v112 = *(v29 + v109 + 32);
  v113 = *v31;
  v114 = *(v29 + v113);
  v493 = *(v29 + v109 + 48);
  v492[2] = v112;
  v492[1] = v111;
  v492[0] = v110;
  v115 = *(v492 + (v114 & 0xF));
  v491[3] = v493;
  v491[2] = v112;
  v491[1] = v111;
  v491[0] = v110;
  v433 = *(v491 + (BYTE1(v114) & 0xF));
  v439 = *(v28 + v109 + 4 * (BYTE1(*(v28 + v113)) & 0xF));
  v430 = *(v28 + v113);
  v450 = BYTE1(v114);
  v385 = v115;
  v442 = v115;
  v69 = v28;
  v28 = v29;
  v444 = v69;
  if ((v448 & 1) == 0)
  {
    goto LABEL_138;
  }

LABEL_174:
  v134 = *v30;
  v135 = *(v37 + v134);
  v136 = *(v37 + v134 + 16);
  v137 = *(v37 + *v31);
  v138 = *(v37 + v134 + 32);
  v463 = *(v37 + v134 + 48);
  v462[1] = v136;
  v462[2] = v138;
  v462[0] = v135;
  v141 = *(v462 + (v137 & 0xF)) == 1;
  v461[2] = v138;
  v461[3] = v463;
  v461[0] = v135;
  v461[1] = v136;
  v139 = *(v28 + v134 + 4);
  v416 = v135;
  v414 = *(v28 + v134);
  v140 = v414 / v135;
  v141 = v141 && *(v461 + (BYTE1(v137) & 0xF)) == 1;
  v142 = v141;
  v421 = v142;
  v392 = *(v28 + v134 + 4);
  v143 = v139 / DWORD1(v135);
  v425 = v139 / DWORD1(v135);
  v393 = DWORD1(v135);
  if (v141)
  {
    v418 = 0;
    v144 = 0;
    v145 = 0;
    v384 = 0;
    v383 = 0;
  }

  else
  {
    if ((v140 & 7) != 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v134 = *v30;
    v146 = (v28 + v134);
    v147 = ((v140 - 1) & v140) == 0;
    if (v140 == 1)
    {
      v147 = 0;
    }

    v149 = *v146;
    v148 = v146[1];
    v144 = v140 == v149;
    if (v140 == v149)
    {
      v147 = 0;
    }

    v418 = v147;
    if (v143 == v148)
    {
      v145 = 0;
      v384 = 0;
      v383 = 0;
    }

    else if (v143 == 1)
    {
      v384 = 0;
      v383 = 0;
      v145 = 1;
    }

    else
    {
      v145 = 0;
      if (((v143 - 1) & v143) != 0)
      {
        v383 = (v143 & 7) == 0;
        v384 = (v143 & 7) != 0;
      }

      else
      {
        v383 = 0x100000000;
        v384 = 0;
      }
    }
  }

  v150 = *v31;
  v151 = *(v28 + v134 + 4 * (*(v28 + v150 + 2) & 0xF));
  v152 = *&v444[4 * (v444[v150 + 2] & 0xF) + v134];
  if (v151 == 1 && v152 >= 2)
  {
    v403 = 0;
    v153 = *MEMORY[0x277CD7408];
    v402 = *(v28 + v153);
    v154 = v444;
    v155 = *&v444[v153];
    LODWORD(v156) = *MEMORY[0x277CD73D0];
    v443 = v152;
    v157 = v437;
    v158 = v410;
    goto LABEL_208;
  }

  v159 = v152 == 1 && v151 >= 2;
  if (!v159 && v151 != v152 && MTLReportFailureTypeEnabled())
  {
    v375 = v151;
    v378 = v152;
    MTLReportFailure();
  }

  if (v151 <= v152)
  {
    v160 = v152;
  }

  else
  {
    v160 = v151;
  }

  v443 = v160;
  v153 = *MEMORY[0x277CD7408];
  v161 = *(v28 + v153);
  LODWORD(v156) = *MEMORY[0x277CD73D0];
  LODWORD(v402) = v161;
  if (v151 == 1)
  {
    v403 = 0;
    v158 = v410;
    v429 = *&v444[v153];
    if (v152 != 1)
    {
LABEL_207:
      v157 = v437;
      v154 = v444;
      LODWORD(v155) = v429;
LABEL_208:
      LODWORD(v429) = v155;
      v401 = *&v154[v156 + 4] * v155;
      v162 = v454;
      v163 = *(v454 + v153);
      if (v443 == 1)
      {
        goto LABEL_209;
      }

      goto LABEL_215;
    }
  }

  else
  {
    v403 = *(v28 + v156 + 4) * v161;
    v158 = v410;
    v429 = *&v444[v153];
    if (v152 != 1)
    {
      goto LABEL_207;
    }
  }

  v401 = 0;
  v157 = v437;
  v162 = v454;
  v163 = *(v454 + v153);
  if (v443 == 1)
  {
LABEL_209:
    v413 = 0;
    v164 = *v31;
    if (v45)
    {
      goto LABEL_210;
    }

LABEL_216:
    v400 = 0;
    v399 = 0;
    v156 = v156;
    goto LABEL_217;
  }

LABEL_215:
  v413 = *(v162 + v156 + 4) * v163;
  v164 = *v31;
  if (!v45)
  {
    goto LABEL_216;
  }

LABEL_210:
  v165 = *(v45 + v153);
  v156 = v156;
  v166 = (v45 + v156);
  v167 = *v166;
  v168 = v166[1];
  v169 = v166[2];
  v170 = v166[3];
  v171 = *(v45 + v164 + 2) & 0xF;
  v460[2] = v169;
  v460[3] = v170;
  v460[0] = v167;
  v460[1] = v168;
  v400 = v165;
  if (*(v460 + v171) == 1)
  {
    v399 = 0;
  }

  else
  {
    v399 = DWORD1(v167) * v165;
  }

LABEL_217:
  v172 = *(v37 + v153);
  v173 = *(v37 + v156);
  v174 = *(v37 + v156 + 16);
  v175 = *(v37 + v156 + 48);
  v176 = *(v37 + v164 + 2) & 0xF;
  v459[2] = *(v37 + v156 + 32);
  v459[3] = v175;
  v459[0] = v173;
  v459[1] = v174;
  v398 = v172;
  if (*(v459 + v176) == 1)
  {
    v177 = 0;
  }

  else
  {
    v177 = DWORD1(v173) * v172;
  }

  v397 = v177;
  if (v54)
  {
    v178 = *(v54 + v153);
    v179 = *(v54 + v156);
    v180 = *(v54 + v156 + 16);
    v181 = *(v54 + v156 + 48);
    v182 = *(v54 + v164 + 2) & 0xF;
    v458[2] = *(v54 + v156 + 32);
    v458[3] = v181;
    v458[0] = v179;
    v458[1] = v180;
    v396 = v178;
    if (*(v458 + v182) == 1)
    {
      v395 = 0;
    }

    else
    {
      v395 = DWORD1(v179) * v178;
    }
  }

  else
  {
    v396 = 0;
    v395 = 0;
  }

  v394 = *(v28 + *MEMORY[0x277CD73C8]);
  MEMORY[0x23EE7C450](v516, v157, 0);
  v447 = v439;
  if (v421)
  {
    v183 = 1;
  }

  else if (v144 & v145)
  {
    v183 = 1;
  }

  else
  {
    v183 = v418 & v145;
  }

  v184 = *(v435 + 1472);
  v412 = v163;
  if ((v433 & 7) != 0)
  {
    goto LABEL_242;
  }

  if (v439 < 8)
  {
    goto LABEL_242;
  }

  if ((v183 & 1) == 0)
  {
    goto LABEL_242;
  }

  if (v140 < 8)
  {
    goto LABEL_242;
  }

  if (v450)
  {
    goto LABEL_242;
  }

  if (v430)
  {
    goto LABEL_242;
  }

  v185 = *MEMORY[0x277CD73C8];
  v186 = *(v37 + v185);
  if (v186 != -1879048176 && v186 != 268435488 && v186 != 268435472)
  {
    goto LABEL_242;
  }

  if (!v54 || (v187 = *(v54 + v185), (v187 | 0x80000000) == 0x90000010))
  {
    if (v184 < 11)
    {
      goto LABEL_242;
    }

    goto LABEL_420;
  }

  if (v187 != 268435488 || v184 <= 10)
  {
LABEL_242:
    v188 = 0;
    if (v450)
    {
      v189 = MEMORY[0x277CD7378];
    }

    else
    {
      v189 = MEMORY[0x277CD7378];
      if (!v430 && (v433 & 7) == 0)
      {
        v188 = (v429 & 7) == 0;
      }
    }

    v190 = 8;
    if (v439 < 8uLL)
    {
      v190 = v439;
    }

    v191 = MPSNDArrayMatMulDeviceBehavior::EncodeArrayMultiplyI4(void const*,objc_object  {objcproto24MTLComputeCommandEncoder}*,objc_object  {objcproto16MTLCommandBuffer}*,NDArrayMultiaryCallInfo const*)const::table[v190 - 1];
    if (v188)
    {
      if (v439 == 4)
      {
        v192 = v191 & 0xFFF000F0;
        v193 = v191 & 0xFFF000F0 | 0x12000;
        if (v433 > 0x380)
        {
          v193 = v191 & 0xFFF000F0 | 0x4001;
        }

        if (v442 <= 0x1C00)
        {
          v194 = v193;
        }

        else
        {
          v194 = v191;
        }

        if (v442 <= 0xB80)
        {
          v194 = v191 & 0xFFF000F0 | 0x4001;
        }

        if (v442 <= 0x380)
        {
          v194 = v192 | 0x18002;
        }

        v195 = v192 | 0x2103;
        if (v442 <= 0x80)
        {
          v191 = v195;
        }

        else
        {
          v191 = v194;
        }
      }

      else if (v439 == 1)
      {
        if (v442 > 0x80)
        {
          if (v442 > 0x380)
          {
            if (v442 > 0xB80)
            {
              if (v442 > 0x1C00)
              {
                if (v442 >= 0x3301)
                {
                  if (v442 > 0x4E20)
                  {
                    if (v442 > 0x1869F)
                    {
                      v191 = 1057024;
                    }
                  }

                  else if (v184 >= 16)
                  {
                    v191 = 1057027;
                  }

                  else
                  {
                    v191 = 1081602;
                  }
                }

                else
                {
                  v191 = 1065219;
                }
              }

              else if (v433 > 0x380)
              {
                if (v433 < 0xB81)
                {
                  v191 = v191 & 0xFFF000F0 | 0x4102;
                }

                else
                {
                  v367 = v184 <= 15;
                  v368 = (257 << (v184 > 15)) | 0x101000;
                  if (v367)
                  {
                    v369 = 1065217;
                  }

                  else
                  {
                    v369 = 1065218;
                  }

                  if (v367)
                  {
                    v370 = 1130499;
                  }

                  else
                  {
                    v370 = 1057283;
                  }

                  if (*(v435 + 1480) <= 0x28uLL)
                  {
                    v368 = v369;
                  }

                  if (v442 > 0x1000)
                  {
                    v368 = 1065219;
                  }

                  if (v433 >> 8 <= 0x32)
                  {
                    v191 = v368;
                  }

                  else
                  {
                    v191 = v370;
                  }
                }
              }

              else
              {
                v191 = v191 & 0xFFF000F0 | 0x12001;
              }
            }

            else
            {
              if (v184 <= 15)
              {
                v366 = 98306;
              }

              else
              {
                v366 = 82179;
              }

              v191 = v191 & 0xFFF000F0 | v366;
            }
          }

          else
          {
            v191 = v191 & 0xFFF000F0 | 0x14103;
          }
        }

        else
        {
          v191 = v191 & 0xFFF000F0 | 0x21103;
        }
      }
    }

    if (v158)
    {
      v427 = *(v158 + 24) != 0;
      v196 = *(v158 + 28) != 0;
      v197 = v191 >> 4;
      if ((*(&v452->super.isa + *v189) & 0x10) == 0)
      {
        goto LABEL_268;
      }
    }

    else
    {
      v427 = 0;
      v196 = 0;
      v197 = v191 >> 4;
      if ((*(&v452->super.isa + *v189) & 0x10) == 0)
      {
LABEL_268:
        if (v158)
        {
          v198 = 31 - __clz(*v158);
          if (*v158)
          {
            v199 = v198;
          }

          else
          {
            v199 = 0;
          }

          v200 = *(v158 + 8);
          v201 = v418;
          if (v140 >= 0x101)
          {
            v201 = 0;
          }

          if (v201)
          {
            goto LABEL_275;
          }

LABEL_301:
          LOBYTE(v208) = 0;
          v423 = v188;
          if (!v188)
          {
            goto LABEL_304;
          }

          goto LABEL_302;
        }

        v199 = v191 & 0xF;
        if (v188)
        {
          v206 = 1 << (BYTE1(v191) & 0xF);
          if (v421)
          {
            v206 = 8;
          }

          v200 = v206;
          v207 = v418;
          if (v140 >= 0x101)
          {
            v207 = 0;
          }

          if (!v207)
          {
            goto LABEL_301;
          }
        }

        else
        {
          if (v450)
          {
            v209 = 4;
          }

          else
          {
            v209 = 1;
          }

          v200 = v209;
          v210 = v418;
          if (v140 >= 0x101)
          {
            v210 = 0;
          }

          if (!v210)
          {
            goto LABEL_301;
          }
        }

LABEL_275:
        v202 = 63 - __clz(v140);
        if (v416 > v414)
        {
          LOWORD(v202) = 0;
        }

        if (v158)
        {
          v203 = *(v158 + 20);
          v204 = (31 - __clz(v203));
          if (v203)
          {
            v205 = v204;
          }

          else
          {
            v205 = 0;
          }
        }

        else
        {
          v205 = HIWORD(v191) & 0xF;
        }

        v208 = v202 - 3;
        if (v205 < v208)
        {
          LOBYTE(v208) = v205;
        }

        v423 = v188;
        if (!v188)
        {
          goto LABEL_304;
        }

LABEL_302:
        if (v158)
        {
          LODWORD(v211) = *(v158 + 4);
          goto LABEL_305;
        }

LABEL_304:
        LODWORD(v211) = 1 << v197;
LABEL_305:
        v211 = v211;
        v422 = v199;
        v212 = v200 * (256 << v208 << v199);
        v213 = v433 + v212 - 1;
        v419 = v212;
        v214 = v213 / v212;
        if (v213 / v212 < v211)
        {
          v211 = v213 / v212;
        }

        v215 = 63 - __clz(v211);
        if (v211)
        {
          v216 = v215;
        }

        else
        {
          v216 = 0;
        }

        v217 = 1 << v216;
        MPSGetUIntDivisorMagicNumber();
        v390 = v218;
        MPSGetUIntDivisorMagicNumber();
        v389 = v219;
        MPSGetUIntDivisorMagicNumber();
        v388 = v220;
        MPSGetUIntDivisorMagicNumber();
        v387 = v221;
        MPSGetUIntDivisorMagicNumber();
        v386 = v222;
        MPSGetUIntDivisorMagicNumber();
        v224 = 31 - __clz(v140);
        if (v416 > v414)
        {
          v224 = 0;
        }

        v529[0] = v402;
        v529[1] = v429;
        v531 = v400;
        v532 = v398;
        v533 = v396;
        v534 = v403;
        v535 = v401;
        v537 = v399;
        v538 = v397;
        v539 = v395;
        v225 = v217;
        v540 = (v214 + v217 - 1) / v217 * v419;
        v543 = v442;
        v545 = v433;
        v547 = v409;
        v548 = v408;
        v549 = v407;
        v550 = v406;
        v551 = v404;
        v226 = 31 - __clz(v425);
        if (v393 > v392)
        {
          v226 = 0;
        }

        v554 = v224;
        v555 = v226;
        v227 = 63 - __clz(v140 >> 3);
        v552 = v140;
        if (v140 < 8)
        {
          v227 = 0;
        }

        v556 = v227;
        v530 = v412;
        v229 = v389;
        v228 = v390;
        HIDWORD(v228) = 0;
        HIDWORD(v229) = 0;
        v231 = v387;
        v230 = v388;
        HIDWORD(v230) = 0;
        HIDWORD(v231) = 0;
        v536 = v413;
        v232 = v386;
        HIDWORD(v232) = 0;
        HIDWORD(v223) = 0;
        v541 = v228;
        v542 = 0uLL;
        v544 = v439;
        v546 = v443;
        v553 = v425;
        v557 = v229;
        v558 = v231;
        v559 = v230;
        v560 = v232;
        v561 = v223;
        if (v158)
        {
          v233 = *(v158 + 12);
          if (v439 < v233)
          {
            LOWORD(v233) = v439;
          }

          v234 = v454;
          v235 = v435;
          if (v450)
          {
            LOWORD(v236) = 1;
            v237 = v444;
LABEL_342:
            v445 = v216 != 0;
            v240 = v233;
            v241 = v236 << 8;
            if (v439 == 1)
            {
              v440 = (*&v237[*MEMORY[0x277CD7408]] == *&v237[*MEMORY[0x277CD73D0]]) << 23;
            }

            v242 = *(v234 + *MEMORY[0x277CD73C8]);
            v431 = v236;
            if (v242 == 268435488 || v242 == 268435472)
            {
              v243 = [*(v455 + 232) finalOp];
              (*(*v243 + 16))(v243);
            }

            v244 = *MEMORY[0x277CD73C8];
            *(v454 + v244);
            if (v45)
            {
              v245 = ((*(v45 + v244) >> 29) & 1) << 37;
            }

            if ((([objc_msgSend(v237 buffer] + v391) & 0xF) != 0)
            {
              LOBYTE(v246) = 0;
            }

            else
            {
              v246 = (*(v235 + 1477) >> 2) & 1;
            }

            if (*(v235 + 1472) <= 21)
            {
              v247 = (*&v237[*MEMORY[0x277CD73C8]] != -1879048176) & v246;
            }

            v248 = v431;
            if (v450)
            {
              v248 = v241;
            }

            v249 = (v442 + v248 - 1) / v248;
            MPSGetUIntDivisorMagicNumber();
            HIDWORD(v250) = 0;
            v542 = v250;
            if (v216)
            {
              TempBuffer = MPSAutoCache::GetTempBuffer(v516, 4 * v442 * v447 * v443 * v225, 0);
              v530 = v385;
              v536 = v442 * v447;
            }

            else
            {
              TempBuffer = 0;
            }

            v251 = (1 << v422);
            v441 = (v447 + v240 - 1) / v240;
            if (v251 < 2)
            {
              v253 = 0;
              v254 = v435;
            }

            else
            {
              if (v450)
              {
                v252 = v240 * ((v251 << 8) - 256);
              }

              else
              {
                v252 = v240 * (v251 - 1) * v431;
              }

              v254 = v435;
              v253 = (4 * v252 + 15) & 0x7FFFFFFF0;
            }

            v255 = 0;
            v256 = v251 << 7;
            if (*(v254 + 1476) & 0x40 | v450)
            {
              v256 = 0;
            }

            if (v253 <= v256)
            {
              v253 = v256;
            }

            v257 = 2 * v419 * v240;
            if (v253 > v257)
            {
              v257 = v253;
            }

            if (v423 && v427)
            {
              v253 = v257;
            }

            v451 = v253;
            v432 = 32 * v251;
            v258 = v249 * v225;
            v259 = v529;
            v260 = 224;
            v436 = 1;
            v438 = 1;
            goto LABEL_374;
          }

          v236 = *(v158 + 16);
          v237 = v444;
        }

        else
        {
          v233 = (v191 >> 20) & 0xF;
          if (((v191 >> 20) & 0xC) != 0)
          {
            v238 = 4;
          }

          else
          {
            v238 = (v191 >> 20) & 0xF;
          }

          if (!v423)
          {
            v233 = v238;
          }

          if (v439 < v233)
          {
            LOWORD(v233) = v439;
          }

          v234 = v454;
          v235 = v435;
          v237 = v444;
          if (v450)
          {
            LOWORD(v236) = 1;
            goto LABEL_342;
          }

          v236 = v442;
        }

        if (v236 >= v191 >> 12)
        {
          LOWORD(v236) = v191 >> 12;
        }

        if (v384)
        {
          LOWORD(v236) = 1;
        }

        if ((HIDWORD(v383) | v383))
        {
          v236 = v236;
          if (v236 >= v425)
          {
            v236 = v425;
          }

          v239 = 1 << ~__clz(v236);
          if (v236)
          {
            LOWORD(v236) = v239;
          }

          else
          {
            LOWORD(v236) = 1;
          }
        }

        goto LABEL_342;
      }
    }

    MPSKernel_LogInfo(v452, 1uLL, "Parameters: kSplits: %d, kGlobalSplits: %d, innerUnrollFactor: %d vectorUnroll: %d matrixUnroll: %d vecLen: %d, vecLM: %d wait: %d\n", 1 << (v191 & 0xF), 1 << v197, 1 << (BYTE1(v191) & 0xF), (v191 >> 20) & 0xF, v191 >> 12, 1 << (BYTE2(v191) & 0xF), v427, v196);
    goto LABEL_268;
  }

LABEL_420:
  v277 = 63 - __clz(v140);
  if (v416 > v414)
  {
    LODWORD(v277) = 0;
  }

  v415 = v277;
  v278 = v184 <= 0x15 || v186 == 268435488;
  v279 = !v278;
  v426 = v279;
  if (v278)
  {
    v290 = v184 < 0x12;
    v280 = v433 < 0x2005;
    v283 = (v439 + 7) >> 3;
    LODWORD(v284) = 4;
    if (v283 >= 4)
    {
      LODWORD(v283) = 4;
    }

    if ((v442 + 7) >> 3 < 4)
    {
      v284 = (v442 + 7) >> 3;
    }

    v291 = (8 * v283);
    v292 = (8 * v284);
    v293 = v439 + v291 - 1;
    LODWORD(v286) = 2;
    if (v293 / v291 >= 2)
    {
      LODWORD(v285) = 2;
    }

    else
    {
      v285 = v293 / v291;
    }

    v294 = v442 + v292 - 1;
    v295 = (v442 + v292 - 1) / v292;
    if (v295 < 2)
    {
      v286 = (v442 + v292 - 1) / v292;
    }

    v296 = (v291 * v285 + v439 - 1) / (v291 * v285);
    v297 = (v442 + v292 * v286 - 1) / (v292 * v286);
    v298 = v297 * v296;
    v299 = *(v435 + 1480);
    v300 = 36 * v299;
    if (v295 >= 2 && v298 < v300)
    {
      v297 = v294 / v292;
      v298 = v294 / v292 * v296;
      LODWORD(v286) = 1;
    }

    if (v293 / v291 >= 2 && v298 < v300)
    {
      v298 = v293 / v291 * v297;
      LODWORD(v285) = 1;
    }

    if (v442 <= 0x7FF)
    {
      v301 = 2;
    }

    else
    {
      v301 = 3;
    }

    if (v298 < v300 && v301 < v283)
    {
      v302 = v285 * (v291 - 8);
      do
      {
        LODWORD(v283) = v283 - 1;
        v298 = (v439 - 1 + v302) / v302 * v297;
        v302 -= 8 * v285;
      }

      while (v298 < v300 && v283 > v301);
    }

    if (v433 > 0xF)
    {
      v304 = 64 - __clz((v433 >> 3) - 1);
    }

    else
    {
      v304 = (v433 == 0) << 63;
    }

    v323 = 2;
    if (v304 < 2)
    {
      v323 = v304;
    }

    v324 = v285 * v286 * v298;
    v325 = 48 * v299;
    if (v325 <= 2 * v324)
    {
      v326 = 1;
    }

    else
    {
      v326 = 2;
    }

    if (v324 >= v325)
    {
      v288 = 0;
    }

    else
    {
      v288 = v326;
    }

    if (v158)
    {
      LODWORD(v284) = *(v158 + 32);
      LODWORD(v283) = *(v158 + 36);
      LODWORD(v286) = *(v158 + 40);
      LODWORD(v285) = *(v158 + 44);
      v327 = 31 - __clz(*v158);
      if (*v158)
      {
        v288 = v327;
      }

      else
      {
        v288 = 0;
      }

      v424 = *(v158 + 48);
      v428 = 1;
    }

    else
    {
      LOBYTE(v424) = v323;
      v428 = 1;
    }

    v328 = 3;
    v282 = 8;
    v329 = 8;
  }

  else
  {
    if (v158)
    {
      v280 = v433 < 0x2005;
      v281 = *(v158 + 52);
      v424 = *(v158 + 48);
      v428 = v281 != 0;
      if (v281)
      {
        v282 = 16;
      }

      else
      {
        v282 = 32;
      }

      LODWORD(v284) = *(v158 + 32);
      LODWORD(v283) = *(v158 + 36);
      LODWORD(v286) = *(v158 + 40);
      LODWORD(v285) = *(v158 + 44);
      v287 = 31 - __clz(*v158);
      if (*v158)
      {
        v288 = v287;
      }

      else
      {
        v288 = 0;
      }

      v289 = *(v158 + 64) & 0x3F;
    }

    else
    {
      v288 = 0;
      v428 = 0;
      v280 = v433 < 0x2005;
      LODWORD(v286) = 2;
      LODWORD(v285) = 4;
      if (v433 >= 0x2005)
      {
        LODWORD(v284) = 2;
      }

      else
      {
        LODWORD(v284) = 4;
      }

      if (v433 < 0x2005)
      {
        LODWORD(v283) = 1;
      }

      else
      {
        LODWORD(v283) = 2;
      }

      v282 = 32;
      LOBYTE(v424) = v433 < 0x2005;
    }

    v290 = 0;
    v328 = 4;
    v329 = 16;
  }

  v330 = v284 * v329;
  if (v284 * v329 * v286 > v442)
  {
    v331 = 1;
  }

  else
  {
    v330 = v284 * v329 * v286;
    v331 = v286;
  }

  if (v330 > v442)
  {
    v330 = 2 * v331 * v329;
    LODWORD(v284) = 2;
  }

  if (v330 <= v442)
  {
    v332 = v330;
  }

  else
  {
    v332 = (v331 * v329);
  }

  if (v330 > v442)
  {
    v333 = 1;
  }

  else
  {
    v333 = v284;
  }

  v334 = v283 << v328;
  if ((v283 * v285) << v328 > v439)
  {
    v335 = 1;
  }

  else
  {
    v334 = (v283 * v285) << v328;
    v335 = v285;
  }

  if (v334 > v439)
  {
    v334 = (2 * v335) << v328;
    LODWORD(v283) = 2;
  }

  if (v334 <= v439)
  {
    v336 = v334;
  }

  else
  {
    v336 = (v335 << v328);
  }

  if (v334 > v439)
  {
    v337 = 1;
  }

  else
  {
    v337 = v283;
  }

  v338 = v282 << v424 << v288;
  v339 = 2 * (v332 * v338);
  if (!v428)
  {
    v339 = 0;
  }

  v340 = 2 * (v336 * v338);
  if (!v290)
  {
    v340 = 0;
  }

  v451 = v339 + v340;
  v438 = v331;
  v436 = v335;
  if (v288)
  {
    v341 = 1 << v288;
    v342 = ((1 << v288) >> 1) * ((4 * (v329 << v328)) & 0x3F80) * v335 * v331 * v337 * v333;
    if (v342 >= 0x7FE1)
    {
      v342 = 0;
      v341 = 1;
      v338 = v282 << v424;
    }

    v343 = v451;
    if (v451 <= v342)
    {
      v343 = v342;
    }

    v451 = v343;
    v344 = (32 * v341);
  }

  else
  {
    v344 = 32;
  }

  v432 = v344;
  v345 = (v442 + v332 - 1) / v332;
  v346 = v345 - 1;
  if (v345 <= 1)
  {
    v347 = 1;
  }

  else
  {
    v347 = 2;
  }

  if (v345 >= 4)
  {
    v347 = 4;
  }

  v417 = v336;
  v348 = (v439 + v336 - 1) / v336;
  if (v348 > 1 && v280)
  {
    v349 = 2;
  }

  else
  {
    v349 = 1;
  }

  if (v345 <= 4)
  {
    v350 = 1;
  }

  else
  {
    v350 = 4;
  }

  if (v348 <= 4)
  {
    v351 = 1;
  }

  else
  {
    v351 = 2;
  }

  if (v348 >= 4)
  {
    v352 = 4;
  }

  else
  {
    v352 = (v439 + v336 - 1) / v336;
  }

  if (v442 >= 4 * v439)
  {
    v351 = v352;
    v350 = 1;
  }

  if (v426)
  {
    v353 = v349;
  }

  else
  {
    v353 = v351;
  }

  if (v426)
  {
    v354 = v347;
  }

  else
  {
    v354 = v350;
  }

  if (v410)
  {
    v354 = *(v410 + 56);
    v353 = *(v410 + 60);
  }

  v355 = (v348 + v353 - 1) / v353;
  v420 = (v354 + v346) / v354;
  if (v355 * v420 >= 0x10000)
  {
    v354 *= 4;
    v420 = (v354 + v346) / v354;
  }

  v411 = v355;
  MPSGetUShortDivisorMagicNumber();
  HIWORD(v356) = 0;
  v517[0] = v402;
  v517[1] = v429;
  v517[2] = v400;
  v517[3] = v398;
  v517[4] = v396;
  v517[5] = v403;
  v517[6] = v401;
  v517[7] = v399;
  v517[8] = v397;
  v517[9] = v395;
  v517[10] = v442;
  v517[11] = v439;
  v517[12] = v433;
  v517[13] = v443;
  v518 = v408;
  v519 = v409;
  v520 = v407;
  v521 = v406;
  v522 = v404;
  v523 = v140;
  v524 = v415;
  v525 = v356;
  v526 = v353;
  v527 = v354;
  v528 = __clz(v353) ^ 0x3F;
  if (v290)
  {
    v357 = &v444[*MEMORY[0x277CD73D0]];
    v358 = *v357;
    v359 = v357[1];
    v360 = *&v444[*v31];
    v361 = v357[2];
    v362 = v357[3];
    v457[2] = v361;
    v457[3] = v362;
    v457[0] = v358;
    v457[1] = v359;
    if (!(*(v457 + (v360 & 0xF)) >> 15))
    {
      v456[0] = v358;
      v456[1] = v359;
      v456[2] = v361;
      v456[3] = v362;
      v363 = ((*(v456 + (BYTE1(v360) & 0xF)) & 0xFFFF8000) != 0) << 56;
    }
  }

  v364 = *MEMORY[0x277CD73C8];
  if (v45)
  {
    v405 = ((*(v45 + v364) >> 29) & 1) << 40;
  }

  if (!v426)
  {
    goto LABEL_598;
  }

  v365 = *(v37 + v364);
  if (v365 == -1879048176)
  {
    if (*&v444[v364] != -1879048176 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    goto LABEL_599;
  }

  if (v365 == 268435472)
  {
    if (*&v444[v364] != 268435472 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
LABEL_598:
    *&v444[v364];
  }

LABEL_599:
  if (v428)
  {
    v451 = (*&v444[*MEMORY[0x277CD73C8]] >> 3) * (v338 * v332);
  }

  if (v290)
  {
    v451 += (*&v444[*MEMORY[0x277CD73C8]] >> 3) * (v338 * v417);
  }

  v445 = 0;
  TempBuffer = 0;
  v441 = v354 * v353;
  v259 = v517;
  v255 = 1;
  v260 = 96;
  v258 = v420 * v411;
LABEL_374:
  v261 = *(v454 + *MEMORY[0x277CD73C8]);
  if (v261 > 285212703)
  {
    if (v261 <= 536870915)
    {
      if (v261 > 301989895)
      {
        if (v261 == 301989896)
        {
          v262 = 16;
          goto LABEL_477;
        }

        if (v261 == 335544328)
        {
          v262 = 17;
          goto LABEL_477;
        }
      }

      else
      {
        if (v261 == 285212704)
        {
          v262 = 13;
          goto LABEL_477;
        }

        if (v261 == 285212736)
        {
          v262 = 14;
          goto LABEL_477;
        }
      }
    }

    else if (v261 <= 536870927)
    {
      if (v261 == 536870916)
      {
        v262 = 0;
        goto LABEL_477;
      }

      if (v261 == 536870920)
      {
        v262 = 1;
        goto LABEL_477;
      }
    }

    else
    {
      switch(v261)
      {
        case 536870928:
          v262 = 2;
          goto LABEL_477;
        case 536870944:
          v262 = 3;
          goto LABEL_477;
        case 536870976:
          v262 = 4;
          goto LABEL_477;
      }
    }

LABEL_476:
    v262 = 18;
    goto LABEL_477;
  }

  if (v261 <= 31)
  {
    if (v261 > 7)
    {
      if (v261 == 8)
      {
        v262 = 6;
        goto LABEL_477;
      }

      if (v261 == 16)
      {
        v262 = 7;
        goto LABEL_477;
      }
    }

    else
    {
      if (v261 == -1879048176)
      {
        v262 = 12;
        goto LABEL_477;
      }

      if (v261 == 4)
      {
        v262 = 5;
        goto LABEL_477;
      }
    }

    goto LABEL_476;
  }

  if (v261 <= 268435463)
  {
    if (v261 == 32)
    {
      v262 = 8;
      goto LABEL_477;
    }

    if (v261 == 64)
    {
      v262 = 9;
      goto LABEL_477;
    }

    goto LABEL_476;
  }

  if (v261 == 268435464)
  {
    v262 = 15;
    goto LABEL_477;
  }

  if (v261 == 268435472)
  {
    v262 = 10;
    goto LABEL_477;
  }

  if (v261 != 268435488)
  {
    goto LABEL_476;
  }

  v262 = 11;
LABEL_477:
  *&v305 = -1;
  *(&v305 + 1) = -1;
  v515 = v305;
  v514 = v305;
  v513 = v305;
  v511 = -1;
  v510 = v305;
  v512 = v262;
  *&v515 = [*(v455 + 16) count] | 0x10000;
  if (v445)
  {
    v306 = 0;
  }

  else
  {
    v306 = *(v455 + 232);
  }

  v379 = *(&v452->super.isa + *MEMORY[0x277CD7360]);
  v381 = *(&v452->super.isa + *MEMORY[0x277CD7368]);
  v376 = v306;
  MPSLibrary::CreateUberShaderKey();
  [v453 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v376, v379, v381, 0, 0}];
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v453, v455, 3, 0, 0);
  v307 = MPSGetLinearOffsetBytes(v454, 0, 3, 0, 0);
  if (v445)
  {
    v308 = 0;
    explicit = TempBuffer;
  }

  else
  {
    v310 = v307;
    v311 = *(v455 + 192);
    v312 = (v454 + *MEMORY[0x277CD73C0]);
    explicit = atomic_load_explicit(v312, memory_order_acquire);
    if (!explicit)
    {
      MPSAutoBuffer::AllocateBuffer(v312, 0);
      explicit = atomic_load_explicit(v312, memory_order_acquire);
    }

    v308 = v311 + v310;
  }

  [v453 setBuffer:explicit offset:v308 atIndex:29];
  [v453 setBytes:v259 length:v260 atIndex:28];
  if (v451)
  {
    [v453 setThreadgroupMemoryLength:v451 atIndex:0];
  }

  if ((atomic_load_explicit(&qword_27DF86828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF86828))
  {
    *algn_27DF86850 = 0u;
    xmmword_27DF86840 = 0u;
    dword_27DF86860 = 1065353216;
    qword_27DF86868 = 850045863;
    unk_27DF86870 = 0u;
    unk_27DF86880 = 0u;
    unk_27DF86890 = 0u;
    qword_27DF868A0 = 0;
    __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86840, &dword_2399F7000);
    __cxa_guard_release(&qword_27DF86828);
  }

  if (v255)
  {
    [v453 setBuffer:MPSBufferCache::getBuffer(&xmmword_27DF86840 offset:objc_msgSend(objc_msgSend(v437 atIndex:{"commandQueue"), "device"), 0x10uLL, 0), 0, 26}];
  }

  [v453 setBuffer:0 offset:0 atIndex:27];
  v508 = v441;
  v509.i64[0] = v258;
  v509.i64[1] = v443;
  *&v506 = v432;
  *(&v506 + 1) = v436;
  v507 = v438;
  [v453 dispatchThreadgroups:&v508 threadsPerThreadgroup:&v506];
  MPSLibrary::ReleaseComputeState();
  if (v445)
  {
    v313 = *(v454 + *MEMORY[0x277CD73C8]);
    if (v313 == 268435488 || v313 == 268435472)
    {
      v314 = [*(v455 + 232) finalOp];
      (*(*v314 + 16))(v314);
      v315 = *(v454 + *MEMORY[0x277CD73C8]);
    }

    v380 = *(&v452->super.isa + *MEMORY[0x277CD7360]);
    v382 = *(&v452->super.isa + *MEMORY[0x277CD7368]);
    v377 = *(v455 + 232);
    MPSLibrary::CreateUberShaderKey();
    [v453 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v377, v380, v382, 0, 0}];
    MPSLibrary::ReleaseMPSKey();
    MPSSetNDArraysOnComputeEncoder(v453, v455, 3, 0, 0);
    v316 = MPSGetLinearOffsetBytes(v454, 0, 3, 0, 0);
    v317 = *(v455 + 192);
    v318 = (v454 + *MEMORY[0x277CD73C0]);
    v319 = atomic_load_explicit(v318, memory_order_acquire);
    if (!v319)
    {
      MPSAutoBuffer::AllocateBuffer(v318, 0);
      v319 = atomic_load_explicit(v318, memory_order_acquire);
    }

    [v453 setBuffer:v319 offset:v317 + v316 atIndex:29];
    v320 = v259[8];
    v259[1] = v259[2];
    v259[2] = v412;
    v259[7] = v320;
    v259[8] = v413;
    [v453 setBytes:v259 length:8 atIndex:28];
    [v453 setBuffer:TempBuffer offset:0 atIndex:27];
    [v453 setBuffer:0 offset:0 atIndex:26];
    v508 = (v442 * v447 * v443 + 255) >> 8;
    v509 = vdupq_n_s64(1uLL);
    v506 = xmmword_239B0A7B0;
    v507 = 1;
    [v453 dispatchThreadgroups:&v508 threadsPerThreadgroup:&v506];
    MPSLibrary::ReleaseComputeState();
  }

  MPSAutoCache::~MPSAutoCache(v516);
LABEL_498:
  v321 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_239A5F890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MPSAutoCache::~MPSAutoCache(&STACK[0xC68]);
  if (__p)
  {
    operator delete(__p);
    if (!a72)
    {
LABEL_3:
      if (!a69)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!a72)
  {
    goto LABEL_3;
  }

  operator delete(a72);
  if (!a69)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a69);
  _Unwind_Resume(a1);
}

uint64_t IsOptimizedInt4KernelSupported(uint64_t a1, uint64_t a2)
{
  v53[6] = *MEMORY[0x277D85DE8];
  v4 = [*(a2 + 232) inputTensorAtIndex:0];
  v5 = [*(a2 + 232) inputTensorAtIndex:1];
  v6 = [*(a2 + 232) outputTensorAtIndex:0];
  v7 = v4[2];
  v9 = *v7;
  v8 = v7[1];
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v10 = v5[2];
  v12 = *v10;
  v11 = v10[1];
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v13 = v6[2];
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

  if (*v4 >= 4uLL && MEMORY[0x18] != 1 || *v5 >= 4uLL && MEMORY[0x18] != 1)
  {
    goto LABEL_25;
  }

  if (*v6 >= 4uLL && MEMORY[0x18] != 1)
  {
    v19 = 0;
    operator delete(0);
    goto LABEL_26;
  }

  v16 = *(a1 + 168);
  v17 = *(a1 + 176);
  v18 = !v16 || v17 == 0;
  if (!v18 || [(MPSNDArrayAffineQuantizationDescriptor *)v16 hasDoubleQuantScale]|| [(MPSNDArrayAffineQuantizationDescriptor *)v16 hasDoubleQuantMinVal]|| [(MPSNDArrayAffineQuantizationDescriptor *)v17 hasDoubleQuantScale]|| [(MPSNDArrayAffineQuantizationDescriptor *)v17 hasDoubleQuantMinVal])
  {
    goto LABEL_25;
  }

  v22 = [*(a2 + 232) graph];
  if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM(v22, v16, v53, v17, v52, 0, v23) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v24 = *(a2 + 16);
  v25 = [v24 objectAtIndexedSubscript:v53[0]];
  v26 = [v24 objectAtIndexedSubscript:v52[0]];
  v27 = v26;
  v28 = MEMORY[0x277CD73D8];
  v29 = *MEMORY[0x277CD73D8];
  v30 = *(v25 + v29);
  if (!v30 && BYTE1(*(v25 + v29)) == 1 || (v19 = 0, v30 == 1) && !BYTE1(*(v25 + v29)))
  {
    v31 = *(v26 + v29);
    if (v31 || BYTE1(v31) != 1)
    {
      v19 = 0;
      if (v31 != 1 || BYTE1(v31))
      {
        goto LABEL_26;
      }

      v32 = BYTE2(v30);
    }

    else
    {
      v19 = 0;
      v32 = BYTE2(v30);
    }

    if (v32 == 2 && BYTE2(v31) == 2)
    {
      if (v16)
      {
        if ([(MPSNDArrayAffineQuantizationDescriptor *)v16 hasZeroPoint])
        {
          v33 = [v24 objectAtIndexedSubscript:v53[2]];
        }

        else
        {
          v33 = 0;
        }

        if ([(MPSNDArrayAffineQuantizationDescriptor *)v16 hasMinValue])
        {
          v34 = [v24 objectAtIndexedSubscript:v53[3]];
        }

        else
        {
          v34 = 0;
        }

        v35 = [v24 objectAtIndexedSubscript:v53[1]];
        v36 = v25;
      }

      else
      {
        if ([(MPSNDArrayAffineQuantizationDescriptor *)v17 hasZeroPoint])
        {
          v33 = [v24 objectAtIndexedSubscript:v52[2]];
        }

        else
        {
          v33 = 0;
        }

        if ([(MPSNDArrayAffineQuantizationDescriptor *)v17 hasMinValue])
        {
          v34 = [v24 objectAtIndexedSubscript:v52[3]];
        }

        else
        {
          v34 = 0;
        }

        v35 = [v24 objectAtIndexedSubscript:v52[1]];
        v36 = v27;
        v27 = v25;
      }

      v37 = *MEMORY[0x277CD73C8];
      if ((*(v36 + v37) | 0x20000000) == 0x20000004)
      {
        v38 = *(v27 + v37);
        if ((v38 == -1879048176 || v38 == 268435488 || v38 == 268435472) && (*(v36 + *MEMORY[0x277CD7400]) & 3) == 0 && (*(v36 + *MEMORY[0x277CD7408]) & 7) == 0)
        {
          v39 = *MEMORY[0x277CD7410];
          v40 = *(v35 + v39 + 48);
          v41 = *(v35 + v39);
          v42 = *(v35 + v39 + 16);
          v43 = *(v35 + *v28);
          v50 = *(v35 + v39 + 32);
          v51 = v40;
          v49[0] = v41;
          v49[1] = v42;
          v44 = *(v49 + (v43 & 0xF));
          v48[2] = v50;
          v48[3] = v40;
          v48[0] = v41;
          v48[1] = v42;
          v45 = *(v48 + (BYTE1(v43) & 0xF)) == 1 && v44 == 1;
          if ((v45 || ((*(v36 + v39) / v41) & 7) == 0) && (!v33 || (*(v33 + v37) | 0x20000000) == 0x20000004))
          {
            v46 = *(v35 + v37);
            if ((v46 == -1879048176 || v46 == 268435488 || v46 == 268435472) && v46 == v38)
            {
              if (!v34 || ((v47 = *(v34 + v37), v47 == -1879048176) || v47 == 268435488 || v47 == 268435472) && v47 == v38)
              {
                v19 = 1;
                goto LABEL_26;
              }
            }
          }
        }
      }

LABEL_25:
      v19 = 0;
    }
  }

LABEL_26:
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_239A5FFD4(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    operator delete(v3);
    if (!v2)
    {
LABEL_3:
      if (!v1)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  operator delete(v2);
  if (!v1)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t EncodeQuantizedMatrixMultiplicationFallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v214 = *MEMORY[0x277D85DE8];
  v149 = *(a1 + *MEMORY[0x277CD7370]);
  v145 = *(a1 + *MEMORY[0x277CD7350]);
  v6 = *(a1 + 168);
  v7 = *(a1 + 176);
  [*(a4 + 232) inputTensorAtIndex:0];
  [*(a4 + 232) inputTensorAtIndex:1];
  [*(a4 + 232) outputTensorAtIndex:0];
  if (GetPlaceHolderIndexInSourceArrayQuantizedGEMM2([*(a4 + 232) graph], *(v5 + 168), &v208, *(v5 + 176), v203) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v8 = *(a4 + 16);
  v9 = [v8 objectAtIndexedSubscript:v208];
  v10 = [v8 objectAtIndexedSubscript:v203[0]];
  v19 = *(a4 + 208);
  v11 = *MEMORY[0x277CD7410];
  v12 = *(v19 + v11);
  v13 = *(v19 + v11 + 16);
  v14 = *(v19 + v11 + 32);
  v15 = *MEMORY[0x277CD73D8];
  v16 = *(v19 + v15);
  v180 = *(v19 + v11 + 48);
  v179[2] = v14;
  v179[1] = v13;
  v179[0] = v12;
  v17 = *(v179 + (v16 & 0xF));
  v181[3] = v180;
  v181[2] = v14;
  v181[1] = v13;
  v181[0] = v12;
  v164 = *(v181 + (BYTE1(v16) & 0xF));
  v182[3] = v180;
  v182[2] = v14;
  v182[1] = v13;
  v182[0] = v12;
  v18 = *(v182 + (BYTE2(v16) & 0xF));
  v172 = v9;
  LODWORD(v19) = *(v9 + v11 + 4 * (*(v9 + v15) & 0xF));
  v170 = v10;
  v20 = *(v10 + v11 + 4 * (*(v10 + v15 + 1) & 0xF));
  if (v20 <= v19)
  {
    v19 = v19;
  }

  else
  {
    v19 = v20;
  }

  v160 = v19;
  *&v21 = -1;
  *(&v21 + 1) = -1;
  v190 = v21;
  v189 = v21;
  v188 = v21;
  v187 = v21;
  v186 = v21;
  *&v190 = [*(a4 + 16) count] | 0x10000;
  v154 = v5;
  v155 = v17;
  if (!v6)
  {
    goto LABEL_26;
  }

  if ([v6 quantizationScheme] != 1)
  {
    if ([v6 quantizationScheme] == 2)
    {
      v28 = [v6 vectorAxes];
      if (v28)
      {
        v29 = v28;
        if ([v28 count])
        {
          [v29 count];
          if ([v29 count] != 1 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v152 = [objc_msgSend(v29 objectAtIndexedSubscript:{0), "unsignedIntegerValue"}];
          v147 = 0;
          v162 = 5;
          v148 = a4;
          v165 = v18;
          if (!v7)
          {
            goto LABEL_46;
          }

          goto LABEL_27;
        }
      }

      v147 = 0;
      v152 = 0;
      v162 = 4;
      v148 = a4;
      v165 = v18;
      if (v7)
      {
        goto LABEL_27;
      }

LABEL_46:
      v146 = 0;
      v173 = 0;
      v151 = 0;
      goto LABEL_47;
    }

    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

LABEL_26:
    v147 = 0;
    v162 = 0;
    v152 = 0;
    v148 = a4;
    v165 = v18;
    if (v7)
    {
      goto LABEL_27;
    }

    goto LABEL_46;
  }

  v22 = [v6 implicitZeroPoint];
  v23 = [v6 hasZeroPoint];
  if (([v6 hasMinValue] | v23))
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  v25 = [v6 hasDoubleQuantScale];
  v152 = 0;
  if (([v6 hasDoubleQuantMinVal] | v25))
  {
    v26 = 3;
  }

  else
  {
    v26 = v24;
  }

  v162 = v26;
  v5 = v154;
  v17 = v155;
  if (v22)
  {
    v27 = 0x200000;
  }

  else
  {
    v27 = 0;
  }

  v147 = v27;
  v148 = a4;
  v165 = v18;
  if (!v7)
  {
    goto LABEL_46;
  }

LABEL_27:
  if ([v7 quantizationScheme] == 1)
  {
    v30 = [v7 implicitZeroPoint];
    v31 = [v7 hasZeroPoint];
    if (([v7 hasMinValue] | v31))
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    v33 = [v7 hasDoubleQuantScale];
    v151 = 0;
    if (([v7 hasDoubleQuantMinVal] | v33))
    {
      v34 = 3;
    }

    else
    {
      v34 = v32;
    }

    v173 = v34;
    v17 = v155;
    if (v30)
    {
      v35 = 0x80000000;
    }

    else
    {
      v35 = 0;
    }

    v146 = v35;
  }

  else
  {
    if ([v7 quantizationScheme] != 2)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      goto LABEL_46;
    }

    v36 = [v7 vectorAxes];
    if (v36 && (v37 = v36, [v36 count]))
    {
      [v37 count];
      if ([v37 count] != 1 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v151 = [objc_msgSend(v37 objectAtIndexedSubscript:{0), "unsignedIntegerValue"}];
      v146 = 0;
      v173 = 5;
    }

    else
    {
      v146 = 0;
      v151 = 0;
      v173 = 4;
    }
  }

LABEL_47:
  v38 = [MEMORY[0x277CBEB68] null];
  v157 = [MEMORY[0x277CBEB68] null];
  v159 = [MEMORY[0x277CBEB68] null];
  v168 = [MEMORY[0x277CBEB68] null];
  v163 = [MEMORY[0x277CBEB68] null];
  v39 = [MEMORY[0x277CBEB68] null];
  v40 = [MEMORY[0x277CBEB68] null];
  v166 = [MEMORY[0x277CBEB68] null];
  v41 = [MEMORY[0x277CBEB68] null];
  v169 = [MEMORY[0x277CBEB68] null];
  v42 = [MEMORY[0x277CBEB68] null];
  v43 = [MEMORY[0x277CBEB68] null];
  if (v209 == -1)
  {
    v144 = v38;
    if (v210 != -1)
    {
LABEL_51:
      v157 = [v8 objectAtIndexedSubscript:?];
    }
  }

  else
  {
    v144 = [v8 objectAtIndexedSubscript:?];
    if (v209 != -1)
    {
      v39 = [v8 objectAtIndexedSubscript:?];
    }

    if (v210 != -1)
    {
      goto LABEL_51;
    }
  }

  if (v211 != -1)
  {
    v159 = [v8 objectAtIndexedSubscript:?];
  }

  if (v212 != -1)
  {
    v168 = [v8 objectAtIndexedSubscript:?];
  }

  if (v213 != -1)
  {
    v163 = [v8 objectAtIndexedSubscript:?];
  }

  if (v203[1] != -1)
  {
    v40 = [v8 objectAtIndexedSubscript:?];
    if (v203[1] != -1)
    {
      v43 = [v8 objectAtIndexedSubscript:?];
    }
  }

  if (v204 != -1)
  {
    v166 = [v8 objectAtIndexedSubscript:?];
  }

  if (v205 != -1)
  {
    v41 = [v8 objectAtIndexedSubscript:?];
  }

  if (v206 != -1)
  {
    v169 = [v8 objectAtIndexedSubscript:?];
  }

  if (v207 == -1)
  {
    v156 = v42;
    v46 = *(v5 + *MEMORY[0x277CD7378]);
    v45 = v162;
    if (v46)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v156 = [v8 objectAtIndexedSubscript:?];
    v44 = *(v5 + *MEMORY[0x277CD7378]);
    v45 = v162;
    if (v44)
    {
      goto LABEL_85;
    }
  }

  v47 = *(v172 + *MEMORY[0x277CD7410] + 4 * (*(v172 + *MEMORY[0x277CD73D8] + 2) & 0xF));
  if (v47 != 1 && v47 != v165 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((v45 - 1) <= 2)
  {
    v202[0] = v172;
    v202[1] = v144;
    v202[2] = v157;
    v202[3] = v159;
    v202[4] = v168;
    v202[5] = v163;
    validateAffineMatrixMultiplication([MEMORY[0x277CBEA60] arrayWithObjects:v202 count:6], v164, v160);
  }

  if ((v45 & 0xFFFFFFFE) == 4)
  {
    v201[0] = v172;
    v201[1] = v39;
    validateLUTMatrixMultiplication([MEMORY[0x277CBEA60] arrayWithObjects:v201 count:2], v45 == 5, v152, v164, v160);
  }

  v48 = *(v170 + *MEMORY[0x277CD7410] + 4 * (*(v170 + *MEMORY[0x277CD73D8] + 2) & 0xF));
  if (v48 != 1 && v48 != v165 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ((v173 - 1) <= 2)
  {
    v200[0] = v170;
    v200[1] = v40;
    v200[2] = v166;
    v200[3] = v41;
    v200[4] = v169;
    v200[5] = v156;
    validateAffineMatrixMultiplication([MEMORY[0x277CBEA60] arrayWithObjects:v200 count:6], v160, v17);
  }

  if ((v173 & 0xFFFFFFFE) == 4)
  {
    v199[0] = v170;
    v199[1] = v43;
    validateLUTMatrixMultiplication([MEMORY[0x277CBEA60] arrayWithObjects:v199 count:2], v173 == 5, v151, v160, v17);
  }

LABEL_85:
  v143 = v40;
  v49 = MEMORY[0x277CD73D0];
  v50 = MEMORY[0x277CD73C8];
  if (v45 == 5)
  {
    makeStrideBytes();
    v51 = (v39 + *v49);
    v52.i64[0] = 0x100000001;
    v52.i64[1] = 0x100000001;
    v53 = vceqq_s32(*v51, v52);
    v54.i64[0] = v53.i32[0];
    v54.i64[1] = v53.i32[1];
    v55 = v54;
    v56 = vceqq_s32(v51[1], v52);
    v54.i64[0] = v56.i32[0];
    v54.i64[1] = v56.i32[1];
    v57 = v54;
    v58 = vceqq_s32(v51[2], v52);
    v54.i64[0] = v58.i32[0];
    v54.i64[1] = v58.i32[1];
    v59 = v54;
    v60 = vceqq_s32(v51[3], v52);
    v54.i64[0] = v60.i32[0];
    v54.i64[1] = v60.i32[1];
    v61 = v54;
    v54.i64[0] = v53.i32[2];
    v54.i64[1] = v53.i32[3];
    v62 = v54;
    v54.i64[0] = v56.i32[2];
    v54.i64[1] = v56.i32[3];
    v63 = v54;
    v54.i64[0] = v58.i32[2];
    v54.i64[1] = v58.i32[3];
    v64 = v54;
    v54.i64[0] = v60.i32[2];
    v54.i64[1] = v60.i32[3];
    v65 = vbicq_s8(v198, v54);
    v66 = vbicq_s8(v196, v64);
    v67 = vbicq_s8(v194, v63);
    v68 = vbicq_s8(v192, v62);
    v69 = vbicq_s8(v197, v61);
    v70 = vbicq_s8(v195, v59);
    v71 = vbicq_s8(v193, v57);
    v72 = vbicq_s8(v191, v55);
    v73 = *(v39 + *v50);
    v74 = BYTE4(*(v39 + *MEMORY[0x277CD73D8]));
    if ((v73 & 0xFFF8) != 0)
    {
      v178[32] = v72;
      v178[33] = v68;
      v178[34] = v71;
      v178[35] = v67;
      v178[36] = v70;
      v178[37] = v66;
      v178[38] = v69;
      v178[39] = v65;
      v178[24] = v72;
      v178[25] = v68;
      v178[26] = v71;
      v178[27] = v67;
      v178[28] = v70;
      v178[29] = v66;
      v178[30] = v69;
      v178[31] = v65;
      v178[16] = v72;
      v178[17] = v68;
      v178[18] = v71;
      v178[19] = v67;
      v178[20] = v70;
      v178[21] = v66;
      v178[22] = v69;
      v178[23] = v65;
      v178[8] = v72;
      v178[9] = v68;
      v178[10] = v71;
      v178[11] = v67;
      v178[12] = v70;
      v178[13] = v66;
      v178[14] = v69;
      v178[15] = v65;
      v178[0] = v72;
      v178[1] = v68;
      v178[2] = v71;
      v178[3] = v67;
      v178[4] = v70;
      v178[5] = v66;
      v178[6] = v69;
      v178[7] = v65;
      v75 = v165;
      v76 = *(v178 + (v74 & 0xF)) / (v73 >> 3);
      if (v173 != 5)
      {
LABEL_88:
        v77 = 0;
        goto LABEL_96;
      }
    }

    else
    {
      v177[32] = v72;
      v177[33] = v68;
      v177[34] = v71;
      v177[35] = v67;
      v177[36] = v70;
      v177[37] = v66;
      v177[38] = v69;
      v177[39] = v65;
      v177[24] = v72;
      v177[25] = v68;
      v177[26] = v71;
      v177[27] = v67;
      v177[28] = v70;
      v177[29] = v66;
      v177[30] = v69;
      v177[31] = v65;
      v177[16] = v72;
      v177[17] = v68;
      v177[18] = v71;
      v177[19] = v67;
      v177[20] = v70;
      v177[21] = v66;
      v177[22] = v69;
      v177[23] = v65;
      v177[8] = v72;
      v177[9] = v68;
      v177[10] = v71;
      v177[11] = v67;
      v177[12] = v70;
      v177[13] = v66;
      v177[14] = v69;
      v177[15] = v65;
      v177[0] = v72;
      v177[1] = v68;
      v177[2] = v71;
      v177[3] = v67;
      v177[4] = v70;
      v177[5] = v66;
      v177[6] = v69;
      v177[7] = v65;
      v75 = v165;
      v76 = *(v177 + (v74 & 0xF));
      if (v173 != 5)
      {
        goto LABEL_88;
      }
    }
  }

  else
  {
    v76 = 0;
    v75 = v165;
    if (v173 != 5)
    {
      goto LABEL_88;
    }
  }

  makeStrideBytes();
  v78 = (v43 + *v49);
  v79.i64[0] = 0x100000001;
  v79.i64[1] = 0x100000001;
  v80 = vceqq_s32(*v78, v79);
  v81.i64[0] = v80.i32[0];
  v81.i64[1] = v80.i32[1];
  v82 = v81;
  v83 = vceqq_s32(v78[1], v79);
  v81.i64[0] = v83.i32[0];
  v81.i64[1] = v83.i32[1];
  v84 = v81;
  v85 = vceqq_s32(v78[2], v79);
  v81.i64[0] = v85.i32[0];
  v81.i64[1] = v85.i32[1];
  v86 = v81;
  v87 = vceqq_s32(v78[3], v79);
  v81.i64[0] = v87.i32[0];
  v81.i64[1] = v87.i32[1];
  v88 = v81;
  v81.i64[0] = v80.i32[2];
  v81.i64[1] = v80.i32[3];
  v89 = v81;
  v81.i64[0] = v83.i32[2];
  v81.i64[1] = v83.i32[3];
  v90 = v81;
  v81.i64[0] = v85.i32[2];
  v81.i64[1] = v85.i32[3];
  v91 = v81;
  v81.i64[0] = v87.i32[2];
  v81.i64[1] = v87.i32[3];
  v92 = vbicq_s8(v198, v81);
  v93 = vbicq_s8(v196, v91);
  v94 = vbicq_s8(v194, v90);
  v95 = vbicq_s8(v192, v89);
  v96 = vbicq_s8(v197, v88);
  v97 = vbicq_s8(v195, v86);
  v98 = vbicq_s8(v193, v84);
  v99 = vbicq_s8(v191, v82);
  v100 = *(v43 + *v50);
  v101 = BYTE4(*(v43 + *MEMORY[0x277CD73D8]));
  if ((v100 & 0xFFF8) != 0)
  {
    v176[32] = v99;
    v176[33] = v95;
    v176[34] = v98;
    v176[35] = v94;
    v176[36] = v97;
    v176[37] = v93;
    v176[38] = v96;
    v176[39] = v92;
    v176[24] = v99;
    v176[25] = v95;
    v176[26] = v98;
    v176[27] = v94;
    v176[28] = v97;
    v176[29] = v93;
    v176[30] = v96;
    v176[31] = v92;
    v176[16] = v99;
    v176[17] = v95;
    v176[18] = v98;
    v176[19] = v94;
    v176[20] = v97;
    v176[21] = v93;
    v176[22] = v96;
    v176[23] = v92;
    v176[7] = v92;
    v176[8] = v99;
    v176[9] = v95;
    v176[10] = v98;
    v176[11] = v94;
    v176[12] = v97;
    v176[13] = v93;
    v176[14] = v96;
    v176[15] = v92;
    v176[0] = v99;
    v176[1] = v95;
    v176[2] = v98;
    v176[3] = v94;
    v176[4] = v97;
    v176[5] = v93;
    v176[6] = v96;
    v102 = *(v176 + (v101 & 0xF)) / (v100 >> 3);
  }

  else
  {
    v175[32] = v99;
    v175[33] = v95;
    v175[34] = v98;
    v175[35] = v94;
    v175[36] = v97;
    v175[37] = v93;
    v175[38] = v96;
    v175[39] = v92;
    v175[24] = v99;
    v175[25] = v95;
    v175[26] = v98;
    v175[27] = v94;
    v175[28] = v97;
    v175[29] = v93;
    v175[30] = v96;
    v175[31] = v92;
    v175[16] = v99;
    v175[17] = v95;
    v175[18] = v98;
    v175[19] = v94;
    v175[20] = v97;
    v175[21] = v93;
    v175[22] = v96;
    v175[23] = v92;
    v175[8] = v99;
    v175[9] = v95;
    v175[10] = v98;
    v175[11] = v94;
    v175[12] = v97;
    v175[13] = v93;
    v175[14] = v96;
    v175[15] = v92;
    v175[0] = v99;
    v175[1] = v95;
    v175[2] = v98;
    v175[3] = v94;
    v175[4] = v97;
    v175[5] = v93;
    v175[6] = v96;
    v175[7] = v92;
    v102 = *(v175 + (v101 & 0xF));
  }

  v77 = v102;
LABEL_96:
  v191.i64[0] = __PAIR64__(v164, v75);
  v191.i64[1] = __PAIR64__(v160, v17);
  v192.i64[0] = 0;
  v192.i64[1] = __PAIR64__(v76, v152);
  v193.i64[0] = 0;
  v193.i64[1] = __PAIR64__(v77, v151);
  v161 = *(v145 + 1480);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v103 = v163;
    v104 = v169;
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v103 = v144;
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v105 = 20480;
          v106 = v157;
          goto LABEL_116;
        }

        v105 = 0;
        v107 = *(v39 + *v50);
        if (v107 <= 268435471)
        {
          goto LABEL_107;
        }

LABEL_102:
        v106 = v157;
        if (v107 > 536870915)
        {
          if (v107 == 536870916)
          {
            goto LABEL_116;
          }

          if (v107 == 536870920)
          {
            goto LABEL_113;
          }
        }

        else
        {
          if (v107 == 268435472)
          {
            v105 = 0x2000;
            goto LABEL_116;
          }

          if (v107 == 268435488)
          {
            v105 = 0x4000;
            goto LABEL_116;
          }
        }

LABEL_110:
        v105 = 20480;
        goto LABEL_116;
      }
    }

    v105 = 0;
    v107 = *(v103 + *v50);
    if (v107 > 268435471)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v105 = 0;
    v107 = *(v168 + *v50);
    v104 = v169;
    if (v107 > 268435471)
    {
      goto LABEL_102;
    }
  }

LABEL_107:
  v106 = v157;
  if (v107 != -1879048176)
  {
    if (v107 == 4)
    {
      goto LABEL_116;
    }

    if (v107 != 8)
    {
      goto LABEL_110;
    }

LABEL_113:
    v105 = 4096;
    goto LABEL_116;
  }

  v105 = 12288;
LABEL_116:
  v158 = v105;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v108 = v156;
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v108 = v143;
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v110 = *v50;
        if (isKindOfClass)
        {
          goto LABEL_131;
        }

        v111 = 0;
        v112 = *(v43 + v110);
        if (v112 <= 268435471)
        {
          goto LABEL_128;
        }

LABEL_123:
        if (v112 > 536870915)
        {
          if (v112 == 536870916)
          {
            goto LABEL_137;
          }

          if (v112 == 536870920)
          {
            goto LABEL_134;
          }
        }

        else
        {
          if (v112 == 268435472)
          {
            v111 = 0x800000;
            goto LABEL_137;
          }

          if (v112 == 268435488)
          {
            v111 = 0x1000000;
            goto LABEL_137;
          }
        }

LABEL_131:
        v111 = 20971520;
        goto LABEL_137;
      }
    }

    v111 = 0;
    v110 = *v50;
    v112 = *(v108 + v110);
    if (v112 > 268435471)
    {
      goto LABEL_123;
    }
  }

  else
  {
    v111 = 0;
    v110 = *v50;
    v112 = *(v104 + v110);
    if (v112 > 268435471)
    {
      goto LABEL_123;
    }
  }

LABEL_128:
  if (v112 != -1879048176)
  {
    if (v112 == 4)
    {
      goto LABEL_137;
    }

    if (v112 != 8)
    {
      goto LABEL_131;
    }

LABEL_134:
    v111 = 0x400000;
    goto LABEL_137;
  }

  v111 = 12582912;
LABEL_137:
  v113 = 0;
  v114 = *(v172 + v110);
  if (v114 <= 268435471)
  {
    if (v114 == -1879048176)
    {
      v113 = 192;
      goto LABEL_151;
    }

    if (v114 == 4)
    {
      goto LABEL_151;
    }

    if (v114 != 8)
    {
      goto LABEL_145;
    }

LABEL_148:
    v113 = 64;
    goto LABEL_151;
  }

  if (v114 > 536870915)
  {
    if (v114 == 536870916)
    {
      goto LABEL_151;
    }

    if (v114 != 536870920)
    {
LABEL_145:
      v113 = 320;
      goto LABEL_151;
    }

    goto LABEL_148;
  }

  if (v114 != 268435472)
  {
    if (v114 == 268435488)
    {
      v113 = 256;
      goto LABEL_151;
    }

    goto LABEL_145;
  }

  v113 = 128;
LABEL_151:
  v115 = 0;
  v116 = *(v170 + v110);
  if (v116 <= 268435471)
  {
    if (v116 == -1879048176)
    {
      v115 = 1536;
      goto LABEL_165;
    }

    if (v116 == 4)
    {
      goto LABEL_165;
    }

    if (v116 != 8)
    {
      goto LABEL_159;
    }

LABEL_162:
    v115 = 512;
    goto LABEL_165;
  }

  if (v116 > 536870915)
  {
    if (v116 == 536870916)
    {
      goto LABEL_165;
    }

    if (v116 != 536870920)
    {
LABEL_159:
      v115 = 2560;
      goto LABEL_165;
    }

    goto LABEL_162;
  }

  if (v116 != 268435472)
  {
    if (v116 == 268435488)
    {
      v115 = 2048;
      goto LABEL_165;
    }

    goto LABEL_159;
  }

  v115 = 1024;
LABEL_165:
  v153 = v111;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_166:
    v117 = 5;
    goto LABEL_167;
  }

  v117 = 0;
  v138 = *(v106 + *v50);
  if (v138 <= 268435471)
  {
    if (v138 == -1879048176)
    {
      v117 = 3;
      goto LABEL_167;
    }

    if (v138 == 4)
    {
      goto LABEL_167;
    }

    if (v138 != 8)
    {
      goto LABEL_166;
    }

LABEL_218:
    v117 = 1;
    goto LABEL_167;
  }

  if (v138 > 536870915)
  {
    if (v138 == 536870916)
    {
      goto LABEL_167;
    }

    if (v138 != 536870920)
    {
      goto LABEL_166;
    }

    goto LABEL_218;
  }

  if (v138 == 268435472)
  {
    v117 = 2;
  }

  else
  {
    if (v138 != 268435488)
    {
      goto LABEL_166;
    }

    v117 = 4;
  }

LABEL_167:
  objc_opt_class();
  v118 = objc_opt_isKindOfClass();
  v119 = *v50;
  if (v118)
  {
    goto LABEL_168;
  }

  v120 = 0;
  v139 = *(v166 + v119);
  if (v139 > 268435471)
  {
    if (v139 <= 536870915)
    {
      if (v139 == 268435472)
      {
        v120 = 2;
        goto LABEL_169;
      }

      if (v139 == 268435488)
      {
        v120 = 4;
        goto LABEL_169;
      }

      goto LABEL_168;
    }

    if (v139 == 536870916)
    {
      goto LABEL_169;
    }

    if (v139 != 536870920)
    {
LABEL_168:
      v120 = 5;
      goto LABEL_169;
    }

LABEL_221:
    v120 = 1;
    goto LABEL_169;
  }

  if (v139 == -1879048176)
  {
    v120 = 3;
    goto LABEL_169;
  }

  if (v139 != 4)
  {
    if (v139 != 8)
    {
      goto LABEL_168;
    }

    goto LABEL_221;
  }

LABEL_169:
  v121 = *(v172 + v119);
  v122 = *(v170 + v119);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (*(v106 + *MEMORY[0x277CD73C8] + 3) & 0x30) == 0)
  {
    v117 += 6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && (*(v166 + *MEMORY[0x277CD73C8] + 3) & 0x30) == 0)
  {
    v120 += 6;
  }

  v171 = 8 << __clz(__rbit32((v161 >> 17) & 0x7F));
  v174 = 8 * (v173 & 7);
  v123 = v113 + 384;
  if ((v121 & 0x30000000) != 0)
  {
    v123 = v113;
  }

  v167 = v123 & 0x1C0;
  v124 = v115 + 3072;
  if ((v122 & 0x30000000) != 0)
  {
    v124 = v115;
  }

  v125 = v124 & 0xE00;
  v126 = (v117 & 7) << 15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v127 = 0;
  }

  else
  {
    v127 = 0x40000;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v128 = 0;
  }

  else
  {
    v128 = 0x80000;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v129 = 0;
  }

  else
  {
    v129 = 0x100000;
  }

  v130 = (v120 & 7) << 25;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v131 = 0;
  }

  else
  {
    v131 = 0x10000000;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v132 = 0;
  }

  else
  {
    v132 = 0x20000000;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v133 = 0;
  }

  else
  {
    v133 = 0x40000000;
  }

  v134 = *(v154 + *MEMORY[0x277CD7370]);
  *&v187 = v147 | v146 | v174 | v158 | v153 | v167 | v125 | v126 | v130 | v127 | v128 | v129 | v131 | v132 | v133 | v162;
  v141 = *(v154 + *MEMORY[0x277CD7360]);
  v142 = *(v154 + *MEMORY[0x277CD7368]);
  v140 = *(v148 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(a2, v148, 4, 0, 1);
  [a2 setComputePipelineState:{PipelineStateForMPSKey, v140, v141, v142, 0, 0}];
  [a2 setBytes:&v191 length:48 atIndex:29];
  v185[0] = (v164 + v171 - 1) / v171;
  v185[1] = (v155 + 1) >> 1;
  v185[2] = v165;
  v183 = xmmword_239B06620;
  v184 = (v161 >> 17) & 0x7F;
  [a2 dispatchThreadgroups:v185 threadsPerThreadgroup:&v183];
  result = MPSLibrary::ReleaseComputeState();
  v137 = *MEMORY[0x277D85DE8];
  return result;
}