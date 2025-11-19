uint64_t MPSNDArraySortCreateUserConstant(uint64_t a1)
{
  v1 = *a1;
  v2 = 3;
  if (*a1 <= 268435471)
  {
    if (v1 <= 15)
    {
      if (v1 != -1879048176)
      {
        if (v1 != 8)
        {
          goto LABEL_48;
        }

        goto LABEL_19;
      }

      v2 = 2;
      HIDWORD(v7) = *(a1 + 4) - 8;
      LODWORD(v7) = HIDWORD(v7);
      v3 = v7 >> 3;
      if (v3 < 8)
      {
        goto LABEL_27;
      }

LABEL_45:
      if (!MTLReportFailureTypeEnabled())
      {
        return 4294967277;
      }

LABEL_46:
      MTLReportFailure();
      return 4294967277;
    }

    if (v1 != 16)
    {
      if (v1 != 32)
      {
        if (v1 != 64)
        {
LABEL_48:
          if (!MTLReportFailureTypeEnabled())
          {
            return 4294967277;
          }

          goto LABEL_46;
        }

LABEL_26:
        HIDWORD(v8) = *(a1 + 4) - 8;
        LODWORD(v8) = HIDWORD(v8);
        v3 = v8 >> 3;
        if (v3 >= 8)
        {
          goto LABEL_45;
        }

        goto LABEL_27;
      }

LABEL_15:
      v2 = 4;
      HIDWORD(v4) = *(a1 + 4) - 8;
      LODWORD(v4) = HIDWORD(v4);
      v3 = v4 >> 3;
      if (v3 >= 8)
      {
        goto LABEL_45;
      }

      goto LABEL_27;
    }

LABEL_21:
    v2 = 5;
    HIDWORD(v6) = *(a1 + 4) - 8;
    LODWORD(v6) = HIDWORD(v6);
    v3 = v6 >> 3;
    if (v3 < 8)
    {
      goto LABEL_27;
    }

    goto LABEL_45;
  }

  if (v1 > 536870927)
  {
    if (v1 != 536870928)
    {
      if (v1 == 536870976)
      {
        goto LABEL_26;
      }

      if (v1 != 536870944)
      {
        goto LABEL_48;
      }

      goto LABEL_15;
    }

    goto LABEL_21;
  }

  if (v1 == 268435472)
  {
    v2 = 1;
    HIDWORD(v30) = *(a1 + 4) - 8;
    LODWORD(v30) = HIDWORD(v30);
    v3 = v30 >> 3;
    if (v3 >= 8)
    {
      goto LABEL_45;
    }

    goto LABEL_27;
  }

  if (v1 == 268435488)
  {
    v2 = 0;
    goto LABEL_26;
  }

  if (v1 != 536870920)
  {
    goto LABEL_48;
  }

LABEL_19:
  v2 = 6;
  HIDWORD(v5) = *(a1 + 4) - 8;
  LODWORD(v5) = HIDWORD(v5);
  v3 = v5 >> 3;
  if (v3 >= 8)
  {
    goto LABEL_45;
  }

LABEL_27:
  if (((0x8Bu >> v3) & 1) == 0)
  {
    goto LABEL_45;
  }

  v9 = dword_239B05FC8[v3] | v2 | (32 * *(a1 + 16)) | (*(a1 + 17) << 6);
  v10 = *(a1 + 32);
  if (v10 >= 2)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      ++v13;
      v12 += 0x4000;
    }

    while (v10 >> v13);
    v11 = v12 & 0x1C000;
  }

  else
  {
    v11 = 0;
  }

  v14 = v9 | (*(a1 + 18) << 7);
  v15 = *(a1 + 40);
  if (v15 >= 2)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      ++v18;
      v17 += 0x20000;
    }

    while (v15 >> v18);
    v16 = v17 & 0xE0000;
  }

  else
  {
    v16 = 0;
  }

  v19 = v14 | (*(a1 + 8) << 8);
  v20 = *(a1 + 19) << 10;
  v21 = *(a1 + 20) << 11;
  v22 = *(a1 + 21) << 12;
  v23 = *(a1 + 22) << 13;
  v24 = *(a1 + 48) << 24;
  v25 = *(a1 + 24);
  if (v25 >= 2)
  {
    v27 = 0;
    v28 = 1;
    do
    {
      ++v28;
      v27 += 0x100000;
    }

    while (v25 >> v28);
    v26 = v27 & 0x700000;
  }

  else
  {
    v26 = 0;
  }

  return v20 | v19 | v21 | (v1 >> 6) & 0x800000 | v22 | v23 | v24 | v11 | v16 | v26;
}

uint64_t MPSNDArraySortDeviceBehaviors::EncodeNDArraySort(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, unint64_t a12, char a13, char a14)
{
  v304 = *MEMORY[0x277D85DE8];
  MEMORY[0x23EE7C450](v267, a5, 0);
  v17 = [*(a6 + 232) inputTensorAtIndex:0];
  v246 = a6;
  [*(a6 + 232) outputTensorAtIndex:0];
  v18 = *(v17 + 2);
  if (v18 == -1879048176)
  {
    v19 = 4;
  }

  else
  {
    v19 = v18 >> 3;
  }

  v208 = v19;
  if (a12 >= 4 && MTLReportFailureTypeEnabled())
  {
    v192 = a9;
    v205 = a12;
    MTLReportFailure();
  }

  DimensionSize = BaseTensor::GetDimensionSize(v17);
  v21 = BaseTensor::GetDimensionSize(v17);
  v22 = BaseTensor::GetDimensionSize(v17);
  v23 = BaseTensor::GetDimensionSize(v17);
  v220 = v22;
  v219 = v23;
  if (a12 == 2)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  if (a12 == 1)
  {
    v24 = v21;
  }

  if (a12)
  {
    v25 = v24;
  }

  else
  {
    v25 = DimensionSize;
  }

  v265 = 0;
  v264 = 0;
  v266 = 0;
  (*(*a1 + 40))(&v264, a1);
  if (v265 * v264 * v266 != 1 || (*(a7 + 1476) & 0x20) == 0)
  {
    v229 = a9;
    v26 = 0;
    v27 = 0;
    goto LABEL_18;
  }

  if (*(a7 + 1482) << 16 == 0x200000)
  {
    if ((*(*a1 + 48))(a1) < v25)
    {
      [a11 setAxis:0];
      MEMORY[0x23EE7C450](&v274, a5, 0);
      v33 = [*(v246 + 232) inputTensorAtIndex:0];
      [*(v246 + 232) outputTensorAtIndex:0];
      v34 = *(v33 + 2);
      if (v34 == -1879048176)
      {
        v35 = 4;
      }

      else
      {
        v35 = v34 >> 3;
      }

      v239 = v35;
      if (a12 >= 4 && MTLReportFailureTypeEnabled())
      {
        v192 = a9;
        v205 = a12;
        MTLReportFailure();
      }

      *&v36 = -1;
      *(&v36 + 1) = -1;
      UserConstant = -1;
      v287 = v36;
      v286 = v36;
      v285 = v36;
      v282 = v36;
      v284 = 0;
      *&v287 = [*(v246 + 16) count] | ((*(v246 + 112) != 0) << 8) | 0x10000;
      v37 = BaseTensor::GetDimensionSize(v33);
      v38 = BaseTensor::GetDimensionSize(v33);
      v39 = BaseTensor::GetDimensionSize(v33);
      v40 = BaseTensor::GetDimensionSize(v33);
      if (BaseTensor::GetDimensionSize(v33) > 0xFE)
      {
        if (BaseTensor::GetDimensionSize(v33) >= 0xFFFF)
        {
          if (BaseTensor::GetDimensionSize(v33) == -1)
          {
            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }

            v72 = -19;
            goto LABEL_218;
          }

          v41 = 32;
        }

        else
        {
          v41 = 16;
        }
      }

      else if (*(a7 + 1472) >= 7)
      {
        v41 = 8;
      }

      else
      {
        v41 = 16;
      }

      memset(v273, 0, sizeof(v273));
      (*(*a1 + 40))(v273, a1);
      if (a12)
      {
        if (a12 == 1)
        {
          LOWORD(v253) = 3;
          v248 = v38;
          v250 = v37;
          v252 = 0x20000;
          v251 = v39;
          v133 = v39 * v37 * v40;
        }

        else if (a12 == 2)
        {
          LOWORD(v253) = 3;
          v248 = v39;
          v250 = v37;
          v252 = 0x10000;
          v251 = v38;
          v133 = v38 * v37 * v40;
        }

        else
        {
          LOWORD(v253) = 2;
          v248 = v40;
          v250 = v37;
          v252 = 0x10000;
          v251 = v38;
          v133 = v38 * v37 * v39;
        }
      }

      else
      {
        LOWORD(v253) = 3;
        v248 = v37;
        v250 = v38;
        v252 = 131073;
        v251 = v39;
        v133 = v39 * v38 * v40;
      }

      v249 = 16;
      v279 = 0u;
      v280 = 0u;
      v281 = 0;
      v276 = *(v33 + 2);
      v277 = v41;
      v278 = a12;
      BYTE3(v279) = a13;
      BYTE6(v279) = a14;
      *(&v279 + 1) = 0;
      v280 = 0uLL;
      UserConstant = MPSNDArraySortCreateUserConstant(&v276);
      v199 = *(v246 + 232);
      MPSLibrary::CreateUberShaderKey();
      *(&v279 + 1) = 256;
      UserConstant = MPSNDArraySortCreateUserConstant(&v276);
      v200 = *(v246 + 232);
      MPSLibrary::CreateUberShaderKey();
      *(&v279 + 1) = 1;
      UserConstant = MPSNDArraySortCreateUserConstant(&v276);
      v201 = *(v246 + 232);
      MPSLibrary::CreateUberShaderKey();
      *(&v279 + 1) = 257;
      UserConstant = MPSNDArraySortCreateUserConstant(&v276);
      v202 = *(v246 + 232);
      MPSLibrary::CreateUberShaderKey();
      *(&v279 + 1) = 256;
      UserConstant = MPSNDArraySortCreateUserConstant(&v276);
      v203 = *(v246 + 232);
      MPSLibrary::CreateUberShaderKey();
      UserConstant = MPSNDArraySortCreateUserConstant(&v276);
      v204 = *(v246 + 232);
      MPSLibrary::CreateUberShaderKey();
      PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
      if (PipelineStateForMPSKey && (v232 = MPSLibrary::GetPipelineStateForMPSKey()) != 0 && (v228 = MPSLibrary::GetPipelineStateForMPSKey()) != 0 && (v225 = MPSLibrary::GetPipelineStateForMPSKey()) != 0 && (v223 = MPSLibrary::GetPipelineStateForMPSKey()) != 0 && (v210 = MPSLibrary::GetPipelineStateForMPSKey()) != 0)
      {
        v149 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
        v150 = [v232 maxTotalThreadsPerThreadgroup];
        v151 = [v228 maxTotalThreadsPerThreadgroup];
        v152 = [v225 maxTotalThreadsPerThreadgroup];
        v153 = [v223 maxTotalThreadsPerThreadgroup];
        if (v149 >= v150)
        {
          v154 = v150;
        }

        else
        {
          v154 = v149;
        }

        if (v154 >= v151)
        {
          v154 = v151;
        }

        if (v154 >= v152)
        {
          v154 = v152;
        }

        if (v154 >= v153)
        {
          v154 = v153;
        }

        v155 = 1024;
        do
        {
          v156 = v155;
          v155 >>= 2;
        }

        while (v156 > v154);
        v157 = [v225 threadExecutionWidth];
        v209 = objc_autoreleasePoolPush();
        v158 = *(v33 + 2);
        HIDWORD(v160) = v158 - 536870920;
        LODWORD(v160) = v158 - 536870920;
        v159 = v160 >> 3;
        v238 = (16 * v156 + v248 - 1) / (16 * v156);
        if (v159 <= 7 && ((0x8Bu >> v159) & 1) != 0)
        {
          v158 = dword_239B05FE8[v159];
        }

        v291 = v248;
        v292 = v133;
        v293 = vdupq_n_s64(1uLL);
        v301 = v248;
        v302 = v133;
        v303 = v293;
        v298 = v238 + 1;
        v299.i64[0] = 256;
        v299.i64[1] = v133;
        v300 = 1;
        v161 = [MEMORY[0x277CD7268] descriptorWithDataType:v158 dimensionCount:4 dimensionSizes:&v291];
        [v161 setPreferPackedRows:1];
        v216 = v157;
        v162 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v161];
        v163 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v161];
        if (v239 <= 2)
        {
          v164 = 2;
        }

        else
        {
          v164 = v239;
        }

        v165 = (2 * v164);
        [v162 setReadCount:v165];
        [v163 setReadCount:v165];
        if (a14)
        {
          v166 = [MEMORY[0x277CD7268] descriptorWithDataType:v41 dimensionCount:4 dimensionSizes:&v301];
          [v166 setPreferPackedRows:1];
          v167 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v166];
          v168 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v166];
          [v167 setReadCount:v165];
          [v168 setReadCount:v165];
        }

        else
        {
          v167 = 0;
          v168 = 0;
        }

        v169 = [MEMORY[0x277CD7268] descriptorWithDataType:32 dimensionCount:4 dimensionSizes:&v298];
        [v169 setPreferPackedRows:1];
        v170 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v169];
        [v170 setReadCount:2 * v239];
        v297[0] = v162;
        v297[1] = v163;
        v171 = [MEMORY[0x277CBEA60] arrayWithObjects:v297 count:2];
        if (a14)
        {
          v296[0] = v167;
          v296[1] = v168;
          v236 = [MEMORY[0x277CBEA60] arrayWithObjects:v296 count:2];
        }

        else
        {
          v236 = 0;
        }

        if (v239)
        {
          v172 = 0;
          v173 = 0;
          v174 = 0;
          v217 = (v156 / v216) << 9;
          v175 = 1;
          do
          {
            v176 = v174;
            v174 = v175;
            if (v172)
            {
              v177 = v232;
            }

            else
            {
              v177 = PipelineStateForMPSKey;
            }

            [a4 setComputePipelineState:v177];
            MPSSetNDArraysOnComputeEncoder(a4, v246, 4, 0, 0);
            [a4 setBuffer:objc_msgSend(v170 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v170, 0, 4, &i, 0), 24}];
            v178 = [v171 objectAtIndexedSubscript:v176];
            [a4 setBuffer:objc_msgSend(v178 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v178, 0, 4, v260, 0), 28}];
            v179 = [v171 objectAtIndexedSubscript:v174];
            [a4 setBuffer:objc_msgSend(v179 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v179, 0, 4, v260, 0), 27}];
            if (a14)
            {
              v180 = [v236 objectAtIndexedSubscript:v176];
              [a4 setBuffer:objc_msgSend(v180 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v180, 0, 4, v262, 0), 26}];
              v181 = [v236 objectAtIndexedSubscript:v174];
              [a4 setBuffer:objc_msgSend(v181 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v181, 0, 4, v262, 0), 25}];
            }

            HIWORD(v253) = v173;
            [a4 setBytes:&v248 length:264 atIndex:29];
            [a4 setThreadgroupMemoryLength:1024 atIndex:0];
            v270 = v238;
            v271 = v133;
            v272 = 1;
            v268 = v156;
            v269 = vdupq_n_s64(1uLL);
            [a4 dispatchThreadgroups:&v270 threadsPerThreadgroup:&v268];
            v295 = v170;
            [a11 encodeToMPSCommandEncoder:a4 commandBuffer:a5 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", &v295, 1), v170}];
            v182 = v225;
            if (v239 + v172 == 1)
            {
              v182 = v223;
            }

            if (v172)
            {
              v183 = v182;
            }

            else
            {
              v183 = v228;
            }

            [a4 setComputePipelineState:v183];
            MPSSetNDArraysOnComputeEncoder(a4, v246, 4, 0, 0);
            [a4 setBuffer:objc_msgSend(v170 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v170, 0, 4, &i, 0), 24}];
            v184 = [v171 objectAtIndexedSubscript:v176];
            [a4 setBuffer:objc_msgSend(v184 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v184, 0, 4, v260, 0), 28}];
            v185 = [v171 objectAtIndexedSubscript:v174];
            [a4 setBuffer:objc_msgSend(v185 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v185, 0, 4, v260, 0), 27}];
            if (a14)
            {
              v186 = [v236 objectAtIndexedSubscript:v176];
              [a4 setBuffer:objc_msgSend(v186 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v186, 0, 4, v262, 0), 26}];
              v187 = [v236 objectAtIndexedSubscript:v174];
              [a4 setBuffer:objc_msgSend(v187 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v187, 0, 4, v262, 0), 25}];
            }

            [a4 setThreadgroupMemoryLength:v217 atIndex:0];
            [a4 setThreadgroupMemoryLength:1024 atIndex:1];
            [a4 setBytes:&v248 length:264 atIndex:29];
            v270 = v238;
            v271 = v133;
            v272 = 1;
            v268 = v156;
            v269 = vdupq_n_s64(1uLL);
            [a4 dispatchThreadgroups:&v270 threadsPerThreadgroup:&v268];
            v173 += 8;
            --v172;
            v175 = v176;
          }

          while (v239 + v172);
          if (v239 == 1)
          {
            [a4 setComputePipelineState:v210];
            MPSSetNDArraysOnComputeEncoder(a4, v246, 4, 0, 0);
            v188 = [v171 objectAtIndexedSubscript:v174];
            [a4 setBuffer:objc_msgSend(v188 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v188, 0, 4, v260, 0), 28}];
            v189 = [v171 objectAtIndexedSubscript:v176];
            [a4 setBuffer:objc_msgSend(v189 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v189, 0, 4, v260, 0), 27}];
            if (a14)
            {
              v190 = [v236 objectAtIndexedSubscript:v174];
              [a4 setBuffer:objc_msgSend(v190 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v190, 0, 4, v262, 0), 26}];
              v191 = [v236 objectAtIndexedSubscript:v176];
              [a4 setBuffer:objc_msgSend(v191 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v191, 0, 4, v262, 0), 25}];
            }

            [a4 setBytes:&v248 length:264 atIndex:29];
            v270 = v238;
            v271 = v133;
            v272 = 1;
            v268 = v156;
            v269 = vdupq_n_s64(1uLL);
            [a4 dispatchThreadgroups:&v270 threadsPerThreadgroup:&v268];
          }
        }

        [a5 addCompletedHandler:&__block_literal_global_19];
        objc_autoreleasePoolPop(v209);
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseMPSKey();
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseComputeState();
        MPSLibrary::ReleaseComputeState();
        v72 = 0;
      }

      else
      {
        v72 = -1;
      }

LABEL_218:
      v148 = &v274;
      goto LABEL_219;
    }

    MEMORY[0x23EE7C450](&v301, a5, 0);
    v75 = [*(v246 + 232) inputTensorAtIndex:0];
    [*(v246 + 232) outputTensorAtIndex:0];
    if (a12 >= 4 && MTLReportFailureTypeEnabled())
    {
      v192 = a9;
      v205 = a12;
      MTLReportFailure();
    }

    *&v76 = -1;
    *(&v76 + 1) = -1;
    UserConstant = -1;
    v287 = v76;
    v286 = v76;
    v285 = v76;
    v282 = v76;
    v284 = 0;
    *&v287 = [*(v246 + 16) count] | ((*(v246 + 112) != 0) << 8) | 0x10000;
    v77 = BaseTensor::GetDimensionSize(v75);
    v78 = BaseTensor::GetDimensionSize(v75);
    v79 = BaseTensor::GetDimensionSize(v75);
    v80 = BaseTensor::GetDimensionSize(v75);
    if (BaseTensor::GetDimensionSize(v75) > 0xFE)
    {
      if (BaseTensor::GetDimensionSize(v75) >= 0xFFFF)
      {
        if (BaseTensor::GetDimensionSize(v75) == -1)
        {
          if (MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v72 = -19;
          goto LABEL_188;
        }

        v81 = 32;
      }

      else
      {
        v81 = 16;
      }
    }

    else if (*(a7 + 1472) >= 7)
    {
      v81 = 8;
    }

    else
    {
      v81 = 16;
    }

    if (a12 == 2)
    {
      v130 = 0;
      v127 = v78 * v77 * v80;
      v128 = 3;
      v248 = v79;
      v129 = 1;
      v131 = v77;
      v132 = v78;
      v77 = v79;
    }

    else if (a12 == 1)
    {
      v130 = 0;
      v127 = v79 * v77 * v80;
      v128 = 3;
      v248 = v78;
      v129 = 2;
      v131 = v77;
      v132 = v79;
      v77 = v78;
    }

    else if (a12)
    {
      v130 = 0;
      v127 = v78 * v77 * v79;
      v128 = 2;
      v248 = v80;
      v129 = 1;
      v131 = v77;
      v132 = v78;
      v77 = v80;
    }

    else
    {
      v127 = v79 * v78 * v80;
      v128 = 3;
      v248 = v77;
      v129 = 2;
      v130 = 1;
      v131 = v78;
      v132 = v79;
    }

    LOWORD(v252) = v130;
    HIWORD(v252) = v129;
    LOWORD(v253) = v128;
    v250 = v131;
    v251 = v132;
    if (v77 >= 0x10000 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v279 = 0u;
    v280 = 0u;
    v281 = 0;
    v276 = *(v75 + 2);
    v277 = v81;
    v278 = a12;
    BYTE3(v279) = a13;
    BYTE6(v279) = a14;
    *(&v279 + 1) = 0;
    v280 = 0uLL;
    UserConstant = MPSNDArraySortCreateUserConstant(&v276);
    v198 = *(v246 + 232);
    MPSLibrary::CreateUberShaderKey();
    v134 = MPSLibrary::GetPipelineStateForMPSKey();
    v135 = v134;
    if (v134)
    {
      v136 = [v134 maxTotalThreadsPerThreadgroup];
      v137 = 1024;
      do
      {
        v138 = v137;
        v137 >>= 2;
      }

      while (v138 > v136);
      v249 = (v77 + v138 - 1) / v138;
      v245 = objc_autoreleasePoolPush();
      v139 = *(v75 + 2);
      HIDWORD(v141) = v139 - 536870920;
      LODWORD(v141) = v139 - 536870920;
      v140 = v141 >> 3;
      if (v140 <= 7 && ((0x8Bu >> v140) & 1) != 0)
      {
        v139 = dword_239B05FE8[v140];
      }

      v291 = v77;
      v292 = v127;
      v293 = vdupq_n_s64(1uLL);
      v142 = [MEMORY[0x277CD7268] descriptorWithDataType:v139 dimensionCount:4 dimensionSizes:&v291];
      [v142 setPreferPackedRows:1];
      v143 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v142];
      v144 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v142];
      if (a14)
      {
        v145 = [MEMORY[0x277CD7268] descriptorWithDataType:v81 dimensionCount:4 dimensionSizes:&v291];
        [v145 setPreferPackedRows:1];
        v146 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v145];
        v147 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a5 descriptor:v145];
      }

      else
      {
        v146 = 0;
        v147 = 0;
      }

      [a4 setComputePipelineState:v135];
      MPSSetNDArraysOnComputeEncoder(a4, v246, 4, 0, 0);
      [a4 setBuffer:objc_msgSend(v143 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v143, 0, 4, v260, 0), 28}];
      [a4 setBuffer:objc_msgSend(v144 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v144, 0, 4, v260, 0), 27}];
      if (a14)
      {
        [a4 setBuffer:objc_msgSend(v146 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v146, 0, 4, v262, 0), 26}];
        [a4 setBuffer:objc_msgSend(v147 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v147, 0, 4, v262, 0), 25}];
      }

      [a4 setBytes:&v248 length:264 atIndex:29];
      [a4 setThreadgroupMemoryLength:0x4000 atIndex:0];
      [a4 setThreadgroupMemoryLength:0x4000 atIndex:1];
      v298 = v127;
      v299 = vdupq_n_s64(1uLL);
      v274 = v138;
      v275 = v299;
      [a4 dispatchThreadgroups:&v298 threadsPerThreadgroup:&v274];
      [a5 addCompletedHandler:&__block_literal_global];
      objc_autoreleasePoolPop(v245);
      MPSLibrary::ReleaseMPSKey();
      MPSLibrary::ReleaseComputeState();
      v72 = 0;
    }

    else
    {
      v72 = -1;
    }

LABEL_188:
    v148 = &v301;
LABEL_219:
    MPSAutoCache::~MPSAutoCache(v148);
    goto LABEL_97;
  }

  v229 = a9;
  v26 = 1;
  v27 = 1;
LABEL_18:
  *&v28 = -1;
  *(&v28 + 1) = -1;
  UserConstant = -1;
  v287 = v28;
  v286 = v28;
  v285 = v28;
  v282 = v28;
  v284 = 0;
  *&v287 = [*(v246 + 16) count] | ((*(v246 + 112) != 0) << 8) | 0x10000;
  if (BaseTensor::GetDimensionSize(v17) <= 0xFE)
  {
    if (*(a7 + 1472) >= 7)
    {
      v29 = 8;
    }

    else
    {
      v29 = 16;
    }

    v250 = a12;
    v251 = DimensionSize;
    if (a12 != 2)
    {
      goto LABEL_23;
    }

LABEL_28:
    v213 = v219 * v21;
    v256 = v21;
    v248 = v220;
    v30 = v220;
    v31 = v220;
LABEL_46:
    v32 = DimensionSize;
    goto LABEL_47;
  }

  if (BaseTensor::GetDimensionSize(v17) < 0xFFFF)
  {
    v29 = 16;
    v250 = a12;
    v251 = DimensionSize;
    if (a12 != 2)
    {
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  if (BaseTensor::GetDimensionSize(v17) == -1)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v72 = -19;
    goto LABEL_97;
  }

  v29 = 32;
  v250 = a12;
  v251 = DimensionSize;
  if (a12 == 2)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (a12 == 1)
  {
    v213 = v219 * v220;
    v256 = v220;
    v248 = v21;
    v30 = v21;
    v31 = v21;
    goto LABEL_46;
  }

  if (a12)
  {
    v213 = v220 * v21;
    v256 = v21;
    v31 = v219;
    v248 = v219;
    v30 = v219;
    goto LABEL_46;
  }

  v213 = v219 * v220;
  v256 = v220;
  v248 = DimensionSize;
  v30 = v21;
  v31 = DimensionSize;
  v32 = v21;
LABEL_47:
  v252 = v30;
  v253 = v31;
  v42 = *(a7 + 1480);
  v43 = v265;
  v44 = BYTE2(v42) * v264;
  v240 = v266;
  if (a12)
  {
    LODWORD(v45) = v32 != 0;
    v258 = v45;
    for (i = v45; v44 > DimensionSize; v44 >>= 1)
    {
      if (BYTE2(v42) > (v266 * v265 * v44) >> 1)
      {
        break;
      }
    }

    if (v32 && v44 >= 2 && ~(DimensionSize / v44 * v44) + DimensionSize < v44 >> 1)
    {
      do
      {
        v46 = v44 >> 1;
        v43 *= 2;
        if (v44 < 4)
        {
          break;
        }

        v47 = v44 >> 2;
        v44 >>= 1;
      }

      while (~(DimensionSize / v46 * v46) + DimensionSize < v47);
    }

    else
    {
      v46 = v44;
    }

    v51 = v32 != 0;
    v53 = v31 - 1;
    v54 = (v53 + v43) / v43;
    if (v54 >= 0x10)
    {
      LODWORD(v54) = 16;
    }

    v55 = (v54 - 1) | ((v54 - 1) >> 1) | (((v54 - 1) | ((v54 - 1) >> 1)) >> 2);
    v56 = v55 | (v55 >> 4) | ((v55 | (v55 >> 4)) >> 8);
    v52 = (v56 | HIWORD(v56)) + 1;
    v255 = v52;
    v235 = (v53 + v43 * v52) / (v43 * v52);
    v237 = (DimensionSize + v46 - 1) / v46;
    v211 = v235;
  }

  else
  {
    for (; v44 > DimensionSize; v44 >>= 1)
    {
      if (BYTE2(v42) > (v266 * v265 * v44) >> 1)
      {
        break;
      }
    }

    v48 = (v44 + v31 - 1) / v44;
    if (v48 >= 0x10)
    {
      LODWORD(v48) = 16;
    }

    v49 = (v48 - 1) | ((v48 - 1) >> 1) | (((v48 - 1) | ((v48 - 1) >> 1)) >> 2);
    v50 = v49 | (v49 >> 4) | ((v49 | (v49 >> 4)) >> 8);
    v45 = (v50 | HIWORD(v50)) + 1;
    v51 = 1;
    v258 = 1;
    i = v45;
    v255 = 1;
    v235 = (v265 + v21 - 1) / v265;
    v237 = (DimensionSize + v44 * v45 - 1) / (v44 * v45);
    LODWORD(v52) = 1;
    v46 = v44;
    v211 = v237;
  }

  v279 = 0u;
  v280 = 0u;
  v281 = 0;
  v276 = *(v17 + 2);
  v207 = v29;
  v277 = v29;
  v278 = a12;
  BYTE3(v279) = a13;
  BYTE4(v279) = v26;
  BYTE5(v279) = (v42 & 0xFF0000) == 0x400000;
  BYTE6(v279) = a14;
  if (v27)
  {
    v57 = v46;
  }

  else
  {
    v57 = 1;
  }

  if (v45 >= 0x10)
  {
    v45 = 16;
  }

  else
  {
    v45 = v45;
  }

  if (v52 >= 0x10)
  {
    v52 = 16;
  }

  else
  {
    v52 = v52;
  }

  if (a12)
  {
    v45 = v51;
  }

  else
  {
    v57 = 1;
    v52 = v51;
  }

  *(&v279 + 1) = v57;
  *&v280 = v45;
  *(&v280 + 1) = v52;
  BYTE1(v279) = 1;
  UserConstant = MPSNDArraySortCreateUserConstant(&v276);
  v193 = *(v246 + 232);
  MPSLibrary::CreateUberShaderKey();
  *(&v279 + 1) = 257;
  UserConstant = MPSNDArraySortCreateUserConstant(&v276);
  v194 = *(v246 + 232);
  MPSLibrary::CreateUberShaderKey();
  *(&v279 + 1) = 1;
  UserConstant = MPSNDArraySortCreateUserConstant(&v276);
  v195 = *(v246 + 232);
  MPSLibrary::CreateUberShaderKey();
  *(&v279 + 1) = 257;
  UserConstant = MPSNDArraySortCreateUserConstant(&v276);
  v196 = *(v246 + 232);
  MPSLibrary::CreateUberShaderKey();
  *(&v279 + 1) = 256;
  UserConstant = MPSNDArraySortCreateUserConstant(&v276);
  v197 = *(v246 + 232);
  MPSLibrary::CreateUberShaderKey();
  v227 = MPSLibrary::GetPipelineStateForMPSKey();
  if (v227)
  {
    v226 = MPSLibrary::GetPipelineStateForMPSKey();
    if (v226)
    {
      v224 = MPSLibrary::GetPipelineStateForMPSKey();
      if (v224)
      {
        v58 = MPSLibrary::GetPipelineStateForMPSKey();
        if (v58)
        {
          v218 = MPSLibrary::GetPipelineStateForMPSKey();
          if (v218)
          {
            v242 = [v227 maxTotalThreadsPerThreadgroup];
            v230 = [v226 maxTotalThreadsPerThreadgroup];
            v59 = [v224 maxTotalThreadsPerThreadgroup];
            v215 = v58;
            v60 = [v58 maxTotalThreadsPerThreadgroup];
            v61 = [v218 maxTotalThreadsPerThreadgroup];
            v233 = v213;
            v62 = 16 * v211;
            v63 = v51 * v43 * v46;
            v64 = v207 >> 3;
            v212 = 16 * v63 * v64;
            v214 = 32 * v63;
            v65 = v242;
            if (v242 >= v230)
            {
              v65 = v230;
            }

            if (v65 >= v59)
            {
              v65 = v59;
            }

            if (v65 >= v60)
            {
              v65 = v60;
            }

            if (v65 >= v61)
            {
              v65 = v61;
            }

            do
            {
              v66 = v46;
              v46 >>= 2;
            }

            while (v66 > v65);
            v231 = v66;
            v67 = objc_autoreleasePoolPush();
            v68 = *(v17 + 2);
            HIDWORD(v70) = v68 - 536870920;
            LODWORD(v70) = v68 - 536870920;
            v69 = v70 >> 3;
            context = v67;
            if (v69 > 7)
            {
              v71 = v219;
            }

            else
            {
              v71 = v219;
              if ((0x8Bu >> v69))
              {
                v68 = dword_239B05FE8[v69];
              }
            }

            v301 = DimensionSize;
            v302 = v21;
            v82 = v71;
            v303.i64[0] = v220;
            v303.i64[1] = v71;
            *(&v301 + a12) = v62;
            v298 = DimensionSize;
            v299.i64[0] = v21;
            v299.i64[1] = v220;
            v300 = v71;
            TempBuffer = MPSAutoCache::GetTempBuffer(v267, v301 * v64 * v302 * v303.i64[0] * v303.i64[1], 0);
            if (v208)
            {
              v84 = v21 * DimensionSize * v220 * v82;
              v85 = MPSAutoCache::GetTempBuffer(v267, v84 * (v68 >> 3), 0);
              v86 = MPSAutoCache::GetTempBuffer(v267, v84 * (v68 >> 3), 0);
              if (a14)
              {
                v243 = MPSAutoCache::GetTempBuffer(v267, v84 * v64, 0);
                v221 = MPSAutoCache::GetTempBuffer(v267, v84 * v64, 0);
                goto LABEL_119;
              }
            }

            else
            {
              v85 = 0;
              v86 = 0;
            }

            v243 = 0;
            v221 = 0;
LABEL_119:
            v87 = [MEMORY[0x277CD7268] descriptorWithDataType:v207 dimensionCount:4 dimensionSizes:&v301];
            [v87 setPreferPackedRows:1];
            v88 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:TempBuffer descriptor:v87];
            if (v88)
            {
              v89 = [a5 userDictionary];
              v90 = [v89 objectForKey:@"_MPSCommandBufferRetainListKey"];
              if (!v90)
              {
                v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v89 setObject:v90 forKey:@"_MPSCommandBufferRetainListKey"];

                v291 = MEMORY[0x277D85DD0];
                v292 = 3221225472;
                v293.i64[0] = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke;
                v293.i64[1] = &unk_278AFFDB8;
                v294 = @"_MPSCommandBufferRetainListKey";
                [a5 addCompletedHandler:&v291];
              }

              [v90 addObject:v88];
            }

            v91 = [MEMORY[0x277CD7268] descriptorWithDataType:v68 dimensionCount:4 dimensionSizes:&v298];
            [v91 setPreferPackedRows:1];
            v92 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v85 descriptor:v91];
            if (v92)
            {
              v93 = [a5 userDictionary];
              v94 = [v93 objectForKey:@"_MPSCommandBufferRetainListKey"];
              if (!v94)
              {
                v95 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v93 setObject:v95 forKey:@"_MPSCommandBufferRetainListKey"];

                v291 = MEMORY[0x277D85DD0];
                v292 = 3221225472;
                v293.i64[0] = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke;
                v293.i64[1] = &unk_278AFFDB8;
                v294 = @"_MPSCommandBufferRetainListKey";
                [a5 addCompletedHandler:&v291];
                v94 = v95;
              }

              [v94 addObject:v92];
            }

            v96 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v86 descriptor:v91];
            if (v96)
            {
              v97 = [a5 userDictionary];
              v98 = [v97 objectForKey:@"_MPSCommandBufferRetainListKey"];
              if (!v98)
              {
                v99 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v97 setObject:v99 forKey:@"_MPSCommandBufferRetainListKey"];

                v291 = MEMORY[0x277D85DD0];
                v292 = 3221225472;
                v293.i64[0] = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke;
                v293.i64[1] = &unk_278AFFDB8;
                v294 = @"_MPSCommandBufferRetainListKey";
                [a5 addCompletedHandler:&v291];
                v98 = v99;
              }

              [v98 addObject:v96];
            }

            if (a14)
            {
              v100 = [MEMORY[0x277CD7268] descriptorWithDataType:v207 dimensionCount:4 dimensionSizes:&v298];
              [v100 setPreferPackedRows:1];
              v101 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v243 descriptor:v100];
              if (v101)
              {
                v102 = [a5 userDictionary];
                v103 = [v102 objectForKey:@"_MPSCommandBufferRetainListKey"];
                if (!v103)
                {
                  v104 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  [v102 setObject:v104 forKey:@"_MPSCommandBufferRetainListKey"];

                  v291 = MEMORY[0x277D85DD0];
                  v292 = 3221225472;
                  v293.i64[0] = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke;
                  v293.i64[1] = &unk_278AFFDB8;
                  v294 = @"_MPSCommandBufferRetainListKey";
                  [a5 addCompletedHandler:&v291];
                  v103 = v104;
                }

                [v103 addObject:v101];
              }

              v105 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v221 descriptor:v100];
              if (v105)
              {
                v106 = [a5 userDictionary];
                v107 = [v106 objectForKey:@"_MPSCommandBufferRetainListKey"];
                if (!v107)
                {
                  v108 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  [v106 setObject:v108 forKey:@"_MPSCommandBufferRetainListKey"];

                  v291 = MEMORY[0x277D85DD0];
                  v292 = 3221225472;
                  v293.i64[0] = ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke;
                  v293.i64[1] = &unk_278AFFDB8;
                  v294 = @"_MPSCommandBufferRetainListKey";
                  [a5 addCompletedHandler:&v291];
                  v107 = v108;
                }

                [v107 addObject:v105];
              }
            }

            else
            {
              v101 = 0;
              v105 = 0;
            }

            v290[0] = v92;
            v290[1] = v96;
            v244 = [MEMORY[0x277CBEA60] arrayWithObjects:v290 count:2];
            if (a14)
            {
              v289[0] = v101;
              v289[1] = v105;
              v222 = [MEMORY[0x277CBEA60] arrayWithObjects:v289 count:2];
              v109 = v88;
              v110 = v208;
              if (!v208)
              {
                goto LABEL_158;
              }
            }

            else
            {
              v109 = v88;
              v222 = 0;
              v110 = v208;
              if (!v208)
              {
LABEL_158:
                objc_autoreleasePoolPop(context);
                MPSLibrary::ReleaseMPSKey();
                MPSLibrary::ReleaseMPSKey();
                MPSLibrary::ReleaseMPSKey();
                MPSLibrary::ReleaseMPSKey();
                MPSLibrary::ReleaseMPSKey();
                MPSLibrary::ReleaseComputeState();
                MPSLibrary::ReleaseComputeState();
                MPSLibrary::ReleaseComputeState();
                MPSLibrary::ReleaseComputeState();
                MPSLibrary::ReleaseComputeState();
                v72 = 0;
                goto LABEL_97;
              }
            }

            v111 = 0;
            v112 = 0;
            v113 = 0;
            v114 = 2 * v110;
            v115 = 1;
            v116 = 1;
            do
            {
              v117 = v116;
              v118 = v115;
              if (v111)
              {
                v119 = v226;
              }

              else
              {
                v119 = v227;
              }

              [a4 setComputePipelineState:v119];
              MPSSetNDArraysOnComputeEncoder(a4, v246, 4, 0, 0);
              [a4 setBuffer:objc_msgSend(v109 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v109, 0, 4, v259, 0), 28}];
              v120 = [v244 objectAtIndexedSubscript:v113];
              [a4 setBuffer:objc_msgSend(v120 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v120, 0, 4, v261, 0), 27}];
              v257 = v111;
              [a4 setBytes:&v248 length:288 atIndex:29];
              [a4 setThreadgroupMemoryLength:v214 atIndex:0];
              v291 = v237;
              v292 = v235;
              v293.i64[0] = v233;
              v274 = v231;
              v275.i64[0] = v43;
              v275.i64[1] = v240;
              [a4 dispatchThreadgroups:&v291 threadsPerThreadgroup:&v274];
              v288 = v109;
              [a11 encodeToMPSCommandEncoder:a4 commandBuffer:a5 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", &v288, 1), v109}];
              v121 = v218;
              if (v114 != 1)
              {
                v121 = v215;
              }

              if (v111)
              {
                v122 = v121;
              }

              else
              {
                v122 = v224;
              }

              [a4 setComputePipelineState:v122];
              MPSSetNDArraysOnComputeEncoder(a4, v246, 4, 0, 0);
              [a4 setBuffer:objc_msgSend(v109 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v109, 0, 4, v259, 0), 28}];
              v123 = [v244 objectAtIndexedSubscript:v113];
              [a4 setBuffer:objc_msgSend(v123 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v123, 0, 4, v261, 0), 27}];
              v124 = [v244 objectAtIndexedSubscript:v117];
              [a4 setBuffer:objc_msgSend(v124 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v124, 0, 4, v261, 0), 26}];
              if (a14)
              {
                v125 = [v222 objectAtIndexedSubscript:v112];
                [a4 setBuffer:objc_msgSend(v125 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v125, 0, 4, &v263, 0), 25}];
                v126 = [v222 objectAtIndexedSubscript:v118];
                [a4 setBuffer:objc_msgSend(v126 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v126, 0, 4, &v263, 0), 24}];
              }

              [a4 setBytes:&v248 length:288 atIndex:29];
              [a4 setThreadgroupMemoryLength:v212 atIndex:0];
              v291 = v237;
              v292 = v235;
              v293.i64[0] = v233;
              v274 = v231;
              v275.i64[0] = v43;
              v275.i64[1] = v240;
              [a4 dispatchThreadgroups:&v291 threadsPerThreadgroup:&v274];
              v111 += 4;
              v115 = v112;
              v112 = v118;
              v116 = v113;
              v113 = v117;
              --v114;
            }

            while (v114);
            goto LABEL_158;
          }
        }
      }
    }
  }

  v72 = -1;
LABEL_97:
  MPSAutoCache::~MPSAutoCache(v267);
  v73 = *MEMORY[0x277D85DE8];
  return v72;
}

void sub_2399FABB8(_Unwind_Exception *a1)
{
  MPSAutoCache::~MPSAutoCache((v1 - 136));
  MPSAutoCache::~MPSAutoCache(&STACK[0x250]);
  _Unwind_Resume(a1);
}

uint64_t EncodeSort(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *(a1 + *MEMORY[0x277CD7370]);
  v30 = *(a1 + *MEMORY[0x277CD7350]);
  v6 = [*(a4 + 232) inputTensorAtIndex:0];
  v34 = a4;
  v7 = [*(a4 + 232) outputTensorAtIndex:0];
  if (*(v6 + 2) != *(v7 + 2) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  DimensionSize = BaseTensor::GetDimensionSize(v6);
  v28 = BaseTensor::GetDimensionSize(v6);
  v8 = BaseTensor::GetDimensionSize(v6);
  v9 = BaseTensor::GetDimensionSize(v6);
  v10 = BaseTensor::GetDimensionSize(v7);
  v11 = BaseTensor::GetDimensionSize(v7);
  v12 = BaseTensor::GetDimensionSize(v7);
  v13 = BaseTensor::GetDimensionSize(v7);
  v14 = dataTypeToString(*(v6 + 2));
  v15 = dataTypeToString(*(v7 + 2));
  v16 = [a1 axis];
  v17 = [a1 descending];
  v19 = "";
  if (v17)
  {
    v19 = "-descending";
  }

  MPSKernel_LogInfo(a1, v18, "-test MPSNDArraySortTest -srcShapes [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u] -srcDataTypes %s -dstDataTypes %s -axis %d %s\n", DimensionSize, v28, v8, v9, v10, v11, v12, v13, v14, v15, v16, v19);
  v20 = *(v32 + 32);
  v21 = *(a1 + *MEMORY[0x277CD7360]);
  v22 = *(*(a1 + *MEMORY[0x277CD7350]) + 16);
  v23 = *(a1 + *MEMORY[0x277CD7368]);
  v24 = a1[83];
  v25 = [a1 axis];
  LOWORD(v27) = [a1 descending];
  return (*(*v20 + 16))(v20, a1, v22, a2, a3, v34, v30, v32, v21, v23, v24, v25, v27);
}

uint64_t EncodeArgSort(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *(a1 + *MEMORY[0x277CD7370]);
  v31 = *(a1 + *MEMORY[0x277CD7350]);
  v6 = [*(a4 + 232) inputTensorAtIndex:0];
  v7 = [*(a4 + 232) outputTensorAtIndex:0];
  DimensionSize = BaseTensor::GetDimensionSize(v6);
  v28 = BaseTensor::GetDimensionSize(v6);
  v27 = BaseTensor::GetDimensionSize(v6);
  v8 = BaseTensor::GetDimensionSize(v6);
  v9 = BaseTensor::GetDimensionSize(v7);
  v10 = BaseTensor::GetDimensionSize(v7);
  v11 = BaseTensor::GetDimensionSize(v7);
  v12 = BaseTensor::GetDimensionSize(v7);
  v13 = dataTypeToString(v6[2]);
  v14 = dataTypeToString(v7[2]);
  v15 = [a1 axis];
  v16 = [a1 descending];
  v18 = "";
  if (v16)
  {
    v18 = "-descending";
  }

  MPSKernel_LogInfo(a1, v17, "-test MPSNDArrayArgSortTest -srcShapes [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u] -srcDataTypes %s -dstDataTypes %s -axis %d %s\n", DimensionSize, v28, v27, v8, v9, v10, v11, v12, v13, v14, v15, v18);
  v19 = *(v30 + 32);
  v20 = *(a1 + *MEMORY[0x277CD7360]);
  v21 = *(*(a1 + *MEMORY[0x277CD7350]) + 16);
  v22 = *(a1 + *MEMORY[0x277CD7368]);
  v23 = a1[83];
  v24 = [a1 axis];
  BYTE1(v26) = 1;
  LOBYTE(v26) = [a1 descending];
  return (*(*v19 + 16))(v19, a1, v21, a2, a3, a4, v31, v30, v20, v22, v23, v24, v26);
}

__n128 MPSNDArraySortDeviceBehaviors::getThreads@<Q0>(MPSNDArraySortDeviceBehaviors *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 3);
  return result;
}

uint64_t ___ZL27GetValueForCommandBufferKeyPU27objcproto16MTLCommandBuffer11objc_objectPK8NSString_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userDictionary];
  v4 = *(a1 + 32);

  return [v3 removeObjectForKey:v4];
}

uint64_t MPSKernel_LogInfo(uint64_t result, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= 3uLL)
  {
    return vfprintf(*MEMORY[0x277D85DF8], a3, va);
  }

  return result;
}

{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    return vfprintf(*MEMORY[0x277D85DF8], "Reduction: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", va);
  }

  return result;
}

{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    return vfprintf(*MEMORY[0x277D85DF8], a3, va);
  }

  return result;
}

{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= 4uLL)
  {
    return vfprintf(*MEMORY[0x277D85DF8], "Identity: f16Ops=%f, f32Ops=%f, BytesRead=%f, BytesWritten=%f, OpsPerByte=%f\n", va);
  }

  return result;
}

{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= 3uLL)
  {
    return vfprintf(*MEMORY[0x277D85DF8], "-test MPSNDArrayScatterNDTest -srcShapes [%u,%u,%u,%u] [%u,%u,%u,%u] [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u] -srcDataTypes %s %s %s -dstDataTypes %s -scatterMode %s\n", va);
  }

  return result;
}

{
  va_start(va, a3);
  if ((*(result + *MEMORY[0x277CD7378]) & 0x10) != 0 && *(result + *MEMORY[0x277CD7380]) >= 2uLL)
  {
    return vfprintf(*MEMORY[0x277D85DF8], a3, va);
  }

  return result;
}

void EncodeNDArrayQuantizationConvolution2D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + *MEMORY[0x277CD7350]);
  v5 = *(*(a1 + *MEMORY[0x277CD7370]) + 32);
  v6 = *(a1 + 224);
  v18 = *(a1 + *MEMORY[0x277CD7370]);
  v7 = *(a1 + 228);
  v8 = *(a1 + 160);
  v19 = v6;
  v20 = v7;
  v9 = *(a1 + 168);
  v10 = *(a1 + 144);
  v21 = v8;
  v22 = v9;
  v11 = *(a1 + 152);
  v12 = *(a1 + 176);
  v23 = v10;
  v24 = v11;
  v13 = *(a1 + 184);
  v14 = *(a1 + 200);
  v25 = v12;
  v26 = v13;
  v15 = *(a1 + 208);
  v27 = v14;
  v28 = v15;
  v29 = *(a1 + 192);
  v30 = vmovn_s64(*(a1 + 232));
  v16 = *(a1 + 264);
  v17 = *(a1 + 272);
  v31 = 0;
  v32 = v16;
  v33 = v17;
  v34 = 0;
  v35 = a4;
  v36 = a1;
  operator new();
}

unint64_t *MPSNDArrayQuantizedConvolutionLogCommandLine(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (*(result + *MEMORY[0x277CD7380]) >= 4)
  {
    v4 = result;
    v5 = *(a2 + 128);
    v6 = *(v5 + 232);
    if (*(a2 + 120) == 1)
    {
      v7 = [v6 outputTensorAtIndex:{0, a3}];
      v8 = [*(v5 + 232) inputTensorAtIndex:2];
      v9 = *(a2 + 8);
      if (v9 != 1)
      {
LABEL_4:
        if (v9)
        {
          goto LABEL_9;
        }

        v10 = **(v7 + 16);
        v11 = v10 + 1;
        v12 = **(v8 + 16);
        v13 = v12 + 1;
LABEL_8:
        v16 = *v10;
        v17 = *v11;
        v149 = *v12 - 1;
        v150 = *v13 - 1;
LABEL_9:
        v18 = *(a2 + 56);
        v19 = *(a2 + 72) * (*(a2 + 40) - 1);
        if (*(a2 + 120) == 1)
        {
          v20 = ((*(a2 + 64) * (*(a2 + 32) - 1)) & 1) - (*(a2 + 48) * *(a2 + 88) + *(a2 + 96));
        }

        *(&v162.__r_.__value_.__s + 23) = 0;
        v162.__r_.__value_.__s.__data_[0] = 0;
        *(&v158.__r_.__value_.__s + 23) = 12;
        strcpy(&v158, "-dataFormat ");
        if (v9)
        {
          v21 = "NHWC";
        }

        else
        {
          v21 = "NCHW";
        }

        v22 = std::string::append(&v158, v21);
        v23 = *&v22->__r_.__value_.__l.__data_;
        v159.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
        *&v159.__r_.__value_.__l.__data_ = v23;
        v22->__r_.__value_.__l.__size_ = 0;
        v22->__r_.__value_.__r.__words[2] = 0;
        v22->__r_.__value_.__r.__words[0] = 0;
        v24 = std::string::append(&v159, " ");
        v25 = *&v24->__r_.__value_.__l.__data_;
        v161 = v24->__r_.__value_.__r.__words[2];
        v160 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        if (v161 >= 0)
        {
          v26 = &v160;
        }

        else
        {
          v26 = v160;
        }

        if (v161 >= 0)
        {
          v27 = HIBYTE(v161);
        }

        else
        {
          v27 = *(&v160 + 1);
        }

        std::string::append(&v162, v26, v27);
        if (SHIBYTE(v161) < 0)
        {
          operator delete(v160);
          if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_22:
            if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_23;
            }

LABEL_62:
            operator delete(v158.__r_.__value_.__l.__data_);
LABEL_23:
            *(&v158.__r_.__value_.__s + 23) = 15;
            strcpy(&v158, "-weightsFormat ");
            if (*(a2 + 12) == 1)
            {
              v28 = "OIHW";
            }

            else
            {
              v28 = "HWIO";
            }

            v29 = std::string::append(&v158, v28);
            v30 = *&v29->__r_.__value_.__l.__data_;
            v159.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
            *&v159.__r_.__value_.__l.__data_ = v30;
            v29->__r_.__value_.__l.__size_ = 0;
            v29->__r_.__value_.__r.__words[2] = 0;
            v29->__r_.__value_.__r.__words[0] = 0;
            v31 = std::string::append(&v159, " ");
            v32 = *&v31->__r_.__value_.__l.__data_;
            v161 = v31->__r_.__value_.__r.__words[2];
            v160 = v32;
            v31->__r_.__value_.__l.__size_ = 0;
            v31->__r_.__value_.__r.__words[2] = 0;
            v31->__r_.__value_.__r.__words[0] = 0;
            if (v161 >= 0)
            {
              v33 = &v160;
            }

            else
            {
              v33 = v160;
            }

            if (v161 >= 0)
            {
              v34 = HIBYTE(v161);
            }

            else
            {
              v34 = *(&v160 + 1);
            }

            std::string::append(&v162, v33, v34);
            if (SHIBYTE(v161) < 0)
            {
              operator delete(v160);
              if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_34:
                if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_35;
                }

                goto LABEL_65;
              }
            }

            else if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_34;
            }

            operator delete(v159.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_35:
              if (*(a2 + 12) == 1)
              {
LABEL_36:
                *(&v154.__r_.__value_.__s + 23) = 15;
                strcpy(&v154, "-kernelSizes \\[");
                std::to_string(&v153, *(a2 + 40));
                if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v35 = &v153;
                }

                else
                {
                  v35 = v153.__r_.__value_.__r.__words[0];
                }

                if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v153.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v153.__r_.__value_.__l.__size_;
                }

                v37 = std::string::append(&v154, v35, size);
                v38 = *&v37->__r_.__value_.__l.__data_;
                v155.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
                *&v155.__r_.__value_.__l.__data_ = v38;
                v37->__r_.__value_.__l.__size_ = 0;
                v37->__r_.__value_.__r.__words[2] = 0;
                v37->__r_.__value_.__r.__words[0] = 0;
                v39 = std::string::append(&v155, ",");
                v40 = *&v39->__r_.__value_.__l.__data_;
                v156.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
                *&v156.__r_.__value_.__l.__data_ = v40;
                v39->__r_.__value_.__l.__size_ = 0;
                v39->__r_.__value_.__r.__words[2] = 0;
                v39->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v152, *(a2 + 32));
                if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v41 = &v152;
                }

                else
                {
                  v41 = v152.__r_.__value_.__r.__words[0];
                }

                if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v42 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v42 = v152.__r_.__value_.__l.__size_;
                }

                v43 = std::string::append(&v156, v41, v42);
                v44 = *&v43->__r_.__value_.__l.__data_;
                v157.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
                *&v157.__r_.__value_.__l.__data_ = v44;
                v43->__r_.__value_.__l.__size_ = 0;
                v43->__r_.__value_.__r.__words[2] = 0;
                v43->__r_.__value_.__r.__words[0] = 0;
                v45 = std::string::append(&v157, ",");
                v46 = *&v45->__r_.__value_.__l.__data_;
                v158.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
                *&v158.__r_.__value_.__l.__data_ = v46;
                v45->__r_.__value_.__l.__size_ = 0;
                v45->__r_.__value_.__r.__words[2] = 0;
                v45->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v151, *(a2 + 16));
                if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v47 = &v151;
                }

                else
                {
                  v47 = v151.__r_.__value_.__r.__words[0];
                }

                if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v48 = HIBYTE(v151.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v48 = v151.__r_.__value_.__l.__size_;
                }

                v49 = std::string::append(&v158, v47, v48);
                v50 = *&v49->__r_.__value_.__l.__data_;
                v159.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
                *&v159.__r_.__value_.__l.__data_ = v50;
                v49->__r_.__value_.__l.__size_ = 0;
                v49->__r_.__value_.__r.__words[2] = 0;
                v49->__r_.__value_.__r.__words[0] = 0;
                v51 = std::string::append(&v159, "\\] ");
                v52 = *&v51->__r_.__value_.__l.__data_;
                v161 = v51->__r_.__value_.__r.__words[2];
                v160 = v52;
                v51->__r_.__value_.__l.__size_ = 0;
                v51->__r_.__value_.__r.__words[2] = 0;
                v51->__r_.__value_.__r.__words[0] = 0;
                if (v161 >= 0)
                {
                  v53 = &v160;
                }

                else
                {
                  v53 = v160;
                }

                if (v161 >= 0)
                {
                  v54 = HIBYTE(v161);
                }

                else
                {
                  v54 = *(&v160 + 1);
                }

                goto LABEL_90;
              }

LABEL_66:
              *(&v154.__r_.__value_.__s + 23) = 15;
              strcpy(&v154, "-kernelSizes \\[");
              std::to_string(&v153, *(a2 + 16));
              if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v55 = &v153;
              }

              else
              {
                v55 = v153.__r_.__value_.__r.__words[0];
              }

              if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v56 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v56 = v153.__r_.__value_.__l.__size_;
              }

              v57 = std::string::append(&v154, v55, v56);
              v58 = *&v57->__r_.__value_.__l.__data_;
              v155.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
              *&v155.__r_.__value_.__l.__data_ = v58;
              v57->__r_.__value_.__l.__size_ = 0;
              v57->__r_.__value_.__r.__words[2] = 0;
              v57->__r_.__value_.__r.__words[0] = 0;
              v59 = std::string::append(&v155, ",");
              v60 = *&v59->__r_.__value_.__l.__data_;
              v156.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
              *&v156.__r_.__value_.__l.__data_ = v60;
              v59->__r_.__value_.__l.__size_ = 0;
              v59->__r_.__value_.__r.__words[2] = 0;
              v59->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v152, *(a2 + 40));
              if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v61 = &v152;
              }

              else
              {
                v61 = v152.__r_.__value_.__r.__words[0];
              }

              if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v62 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v62 = v152.__r_.__value_.__l.__size_;
              }

              v63 = std::string::append(&v156, v61, v62);
              v64 = *&v63->__r_.__value_.__l.__data_;
              v157.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
              *&v157.__r_.__value_.__l.__data_ = v64;
              v63->__r_.__value_.__l.__size_ = 0;
              v63->__r_.__value_.__r.__words[2] = 0;
              v63->__r_.__value_.__r.__words[0] = 0;
              v65 = std::string::append(&v157, ",");
              v66 = *&v65->__r_.__value_.__l.__data_;
              v158.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
              *&v158.__r_.__value_.__l.__data_ = v66;
              v65->__r_.__value_.__l.__size_ = 0;
              v65->__r_.__value_.__r.__words[2] = 0;
              v65->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v151, *(a2 + 32));
              if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v67 = &v151;
              }

              else
              {
                v67 = v151.__r_.__value_.__r.__words[0];
              }

              if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v68 = HIBYTE(v151.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v68 = v151.__r_.__value_.__l.__size_;
              }

              v69 = std::string::append(&v158, v67, v68);
              v70 = *&v69->__r_.__value_.__l.__data_;
              v159.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
              *&v159.__r_.__value_.__l.__data_ = v70;
              v69->__r_.__value_.__l.__size_ = 0;
              v69->__r_.__value_.__r.__words[2] = 0;
              v69->__r_.__value_.__r.__words[0] = 0;
              v71 = std::string::append(&v159, "\\] ");
              v72 = *&v71->__r_.__value_.__l.__data_;
              v161 = v71->__r_.__value_.__r.__words[2];
              v160 = v72;
              v71->__r_.__value_.__l.__size_ = 0;
              v71->__r_.__value_.__r.__words[2] = 0;
              v71->__r_.__value_.__r.__words[0] = 0;
              if (v161 >= 0)
              {
                v53 = &v160;
              }

              else
              {
                v53 = v160;
              }

              if (v161 >= 0)
              {
                v54 = HIBYTE(v161);
              }

              else
              {
                v54 = *(&v160 + 1);
              }

LABEL_90:
              std::string::append(&v162, v53, v54);
              if (SHIBYTE(v161) < 0)
              {
                operator delete(v160);
                if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_92:
                  if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_93;
                  }

                  goto LABEL_127;
                }
              }

              else if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_92;
              }

              operator delete(v159.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_93:
                if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_94;
                }

                goto LABEL_128;
              }

LABEL_127:
              operator delete(v151.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_94:
                if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_95;
                }

                goto LABEL_129;
              }

LABEL_128:
              operator delete(v158.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_95:
                if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_96;
                }

                goto LABEL_130;
              }

LABEL_129:
              operator delete(v157.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_96:
                if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_97;
                }

                goto LABEL_131;
              }

LABEL_130:
              operator delete(v152.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_97:
                if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_98;
                }

                goto LABEL_132;
              }

LABEL_131:
              operator delete(v156.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_98:
                if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_99;
                }

                goto LABEL_133;
              }

LABEL_132:
              operator delete(v155.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_99:
                if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_100;
                }

                goto LABEL_134;
              }

LABEL_133:
              operator delete(v153.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_100:
                if (*(a2 + 8))
                {
LABEL_101:
                  *(&v154.__r_.__value_.__s + 23) = 13;
                  strcpy(&v154, "-strides \\[1,");
                  std::to_string(&v153, v4[23]);
                  if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v73 = &v153;
                  }

                  else
                  {
                    v73 = v153.__r_.__value_.__r.__words[0];
                  }

                  if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v74 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v74 = v153.__r_.__value_.__l.__size_;
                  }

                  v75 = std::string::append(&v154, v73, v74);
                  v76 = *&v75->__r_.__value_.__l.__data_;
                  v155.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
                  *&v155.__r_.__value_.__l.__data_ = v76;
                  v75->__r_.__value_.__l.__size_ = 0;
                  v75->__r_.__value_.__r.__words[2] = 0;
                  v75->__r_.__value_.__r.__words[0] = 0;
                  v77 = std::string::append(&v155, ",");
                  v78 = *&v77->__r_.__value_.__l.__data_;
                  v156.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
                  *&v156.__r_.__value_.__l.__data_ = v78;
                  v77->__r_.__value_.__l.__size_ = 0;
                  v77->__r_.__value_.__r.__words[2] = 0;
                  v77->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v152, v4[22]);
                  if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v79 = &v152;
                  }

                  else
                  {
                    v79 = v152.__r_.__value_.__r.__words[0];
                  }

                  if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v80 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v80 = v152.__r_.__value_.__l.__size_;
                  }

                  v81 = std::string::append(&v156, v79, v80);
                  v82 = *&v81->__r_.__value_.__l.__data_;
                  v157.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
                  *&v157.__r_.__value_.__l.__data_ = v82;
                  v81->__r_.__value_.__l.__size_ = 0;
                  v81->__r_.__value_.__r.__words[2] = 0;
                  v81->__r_.__value_.__r.__words[0] = 0;
                  v83 = std::string::append(&v157, ",");
                  v84 = *&v83->__r_.__value_.__l.__data_;
                  v158.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
                  *&v158.__r_.__value_.__l.__data_ = v84;
                  v83->__r_.__value_.__l.__size_ = 0;
                  v83->__r_.__value_.__r.__words[2] = 0;
                  v83->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v151, 1);
                  if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v85 = &v151;
                  }

                  else
                  {
                    v85 = v151.__r_.__value_.__r.__words[0];
                  }

                  if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v86 = HIBYTE(v151.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v86 = v151.__r_.__value_.__l.__size_;
                  }

                  v87 = std::string::append(&v158, v85, v86);
                  v88 = *&v87->__r_.__value_.__l.__data_;
                  v159.__r_.__value_.__r.__words[2] = v87->__r_.__value_.__r.__words[2];
                  *&v159.__r_.__value_.__l.__data_ = v88;
                  v87->__r_.__value_.__l.__size_ = 0;
                  v87->__r_.__value_.__r.__words[2] = 0;
                  v87->__r_.__value_.__r.__words[0] = 0;
                  v89 = std::string::append(&v159, "\\] ");
                  v90 = *&v89->__r_.__value_.__l.__data_;
                  v161 = v89->__r_.__value_.__r.__words[2];
                  v160 = v90;
                  v89->__r_.__value_.__l.__size_ = 0;
                  v89->__r_.__value_.__r.__words[2] = 0;
                  v89->__r_.__value_.__r.__words[0] = 0;
                  if (v161 >= 0)
                  {
                    v91 = &v160;
                  }

                  else
                  {
                    v91 = v160;
                  }

                  if (v161 >= 0)
                  {
                    v92 = HIBYTE(v161);
                  }

                  else
                  {
                    v92 = *(&v160 + 1);
                  }

                  goto LABEL_159;
                }

LABEL_135:
                *(&v154.__r_.__value_.__s + 23) = 13;
                strcpy(&v154, "-strides \\[1,");
                std::to_string(&v153, 1);
                if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v93 = &v153;
                }

                else
                {
                  v93 = v153.__r_.__value_.__r.__words[0];
                }

                if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v94 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v94 = v153.__r_.__value_.__l.__size_;
                }

                v95 = std::string::append(&v154, v93, v94);
                v96 = *&v95->__r_.__value_.__l.__data_;
                v155.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
                *&v155.__r_.__value_.__l.__data_ = v96;
                v95->__r_.__value_.__l.__size_ = 0;
                v95->__r_.__value_.__r.__words[2] = 0;
                v95->__r_.__value_.__r.__words[0] = 0;
                v97 = std::string::append(&v155, ",");
                v98 = *&v97->__r_.__value_.__l.__data_;
                v156.__r_.__value_.__r.__words[2] = v97->__r_.__value_.__r.__words[2];
                *&v156.__r_.__value_.__l.__data_ = v98;
                v97->__r_.__value_.__l.__size_ = 0;
                v97->__r_.__value_.__r.__words[2] = 0;
                v97->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v152, v4[23]);
                if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v99 = &v152;
                }

                else
                {
                  v99 = v152.__r_.__value_.__r.__words[0];
                }

                if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v100 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v100 = v152.__r_.__value_.__l.__size_;
                }

                v101 = std::string::append(&v156, v99, v100);
                v102 = *&v101->__r_.__value_.__l.__data_;
                v157.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
                *&v157.__r_.__value_.__l.__data_ = v102;
                v101->__r_.__value_.__l.__size_ = 0;
                v101->__r_.__value_.__r.__words[2] = 0;
                v101->__r_.__value_.__r.__words[0] = 0;
                v103 = std::string::append(&v157, ",");
                v104 = *&v103->__r_.__value_.__l.__data_;
                v158.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
                *&v158.__r_.__value_.__l.__data_ = v104;
                v103->__r_.__value_.__l.__size_ = 0;
                v103->__r_.__value_.__r.__words[2] = 0;
                v103->__r_.__value_.__r.__words[0] = 0;
                std::to_string(&v151, v4[22]);
                if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v105 = &v151;
                }

                else
                {
                  v105 = v151.__r_.__value_.__r.__words[0];
                }

                if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v106 = HIBYTE(v151.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v106 = v151.__r_.__value_.__l.__size_;
                }

                v107 = std::string::append(&v158, v105, v106);
                v108 = *&v107->__r_.__value_.__l.__data_;
                v159.__r_.__value_.__r.__words[2] = v107->__r_.__value_.__r.__words[2];
                *&v159.__r_.__value_.__l.__data_ = v108;
                v107->__r_.__value_.__l.__size_ = 0;
                v107->__r_.__value_.__r.__words[2] = 0;
                v107->__r_.__value_.__r.__words[0] = 0;
                v109 = std::string::append(&v159, "\\] ");
                v110 = *&v109->__r_.__value_.__l.__data_;
                v161 = v109->__r_.__value_.__r.__words[2];
                v160 = v110;
                v109->__r_.__value_.__l.__size_ = 0;
                v109->__r_.__value_.__r.__words[2] = 0;
                v109->__r_.__value_.__r.__words[0] = 0;
                if (v161 >= 0)
                {
                  v91 = &v160;
                }

                else
                {
                  v91 = v160;
                }

                if (v161 >= 0)
                {
                  v92 = HIBYTE(v161);
                }

                else
                {
                  v92 = *(&v160 + 1);
                }

LABEL_159:
                std::string::append(&v162, v91, v92);
                if (SHIBYTE(v161) < 0)
                {
                  operator delete(v160);
                  if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_161:
                    if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_162;
                    }

                    goto LABEL_196;
                  }
                }

                else if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_161;
                }

                operator delete(v159.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_162:
                  if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_163;
                  }

                  goto LABEL_197;
                }

LABEL_196:
                operator delete(v151.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_163:
                  if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_164;
                  }

                  goto LABEL_198;
                }

LABEL_197:
                operator delete(v158.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_164:
                  if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_165;
                  }

                  goto LABEL_199;
                }

LABEL_198:
                operator delete(v157.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_165:
                  if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_166;
                  }

                  goto LABEL_200;
                }

LABEL_199:
                operator delete(v152.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_166:
                  if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_167;
                  }

                  goto LABEL_201;
                }

LABEL_200:
                operator delete(v156.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_167:
                  if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_168;
                  }

                  goto LABEL_202;
                }

LABEL_201:
                operator delete(v155.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_168:
                  if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_203;
                }

LABEL_202:
                operator delete(v153.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_169:
                  if (*(a2 + 8))
                  {
LABEL_170:
                    *(&v154.__r_.__value_.__s + 23) = 19;
                    strcpy(&v154, "-dilationRates \\[1,");
                    std::to_string(&v153, v4[26]);
                    if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v111 = &v153;
                    }

                    else
                    {
                      v111 = v153.__r_.__value_.__r.__words[0];
                    }

                    if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v112 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v112 = v153.__r_.__value_.__l.__size_;
                    }

                    v113 = std::string::append(&v154, v111, v112);
                    v114 = *&v113->__r_.__value_.__l.__data_;
                    v155.__r_.__value_.__r.__words[2] = v113->__r_.__value_.__r.__words[2];
                    *&v155.__r_.__value_.__l.__data_ = v114;
                    v113->__r_.__value_.__l.__size_ = 0;
                    v113->__r_.__value_.__r.__words[2] = 0;
                    v113->__r_.__value_.__r.__words[0] = 0;
                    v115 = std::string::append(&v155, ",");
                    v116 = *&v115->__r_.__value_.__l.__data_;
                    v156.__r_.__value_.__r.__words[2] = v115->__r_.__value_.__r.__words[2];
                    *&v156.__r_.__value_.__l.__data_ = v116;
                    v115->__r_.__value_.__l.__size_ = 0;
                    v115->__r_.__value_.__r.__words[2] = 0;
                    v115->__r_.__value_.__r.__words[0] = 0;
                    std::to_string(&v152, v4[25]);
                    if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v117 = &v152;
                    }

                    else
                    {
                      v117 = v152.__r_.__value_.__r.__words[0];
                    }

                    if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v118 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v118 = v152.__r_.__value_.__l.__size_;
                    }

                    v119 = std::string::append(&v156, v117, v118);
                    v120 = *&v119->__r_.__value_.__l.__data_;
                    v157.__r_.__value_.__r.__words[2] = v119->__r_.__value_.__r.__words[2];
                    *&v157.__r_.__value_.__l.__data_ = v120;
                    v119->__r_.__value_.__l.__size_ = 0;
                    v119->__r_.__value_.__r.__words[2] = 0;
                    v119->__r_.__value_.__r.__words[0] = 0;
                    v121 = std::string::append(&v157, ",");
                    v122 = *&v121->__r_.__value_.__l.__data_;
                    v158.__r_.__value_.__r.__words[2] = v121->__r_.__value_.__r.__words[2];
                    *&v158.__r_.__value_.__l.__data_ = v122;
                    v121->__r_.__value_.__l.__size_ = 0;
                    v121->__r_.__value_.__r.__words[2] = 0;
                    v121->__r_.__value_.__r.__words[0] = 0;
                    std::to_string(&v151, 1);
                    if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v123 = &v151;
                    }

                    else
                    {
                      v123 = v151.__r_.__value_.__r.__words[0];
                    }

                    if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v124 = HIBYTE(v151.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v124 = v151.__r_.__value_.__l.__size_;
                    }

                    v125 = std::string::append(&v158, v123, v124);
                    v126 = *&v125->__r_.__value_.__l.__data_;
                    v159.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
                    *&v159.__r_.__value_.__l.__data_ = v126;
                    v125->__r_.__value_.__l.__size_ = 0;
                    v125->__r_.__value_.__r.__words[2] = 0;
                    v125->__r_.__value_.__r.__words[0] = 0;
                    v127 = std::string::append(&v159, "\\] ");
                    v128 = *&v127->__r_.__value_.__l.__data_;
                    v161 = v127->__r_.__value_.__r.__words[2];
                    v160 = v128;
                    v127->__r_.__value_.__l.__size_ = 0;
                    v127->__r_.__value_.__r.__words[2] = 0;
                    v127->__r_.__value_.__r.__words[0] = 0;
                    if (v161 >= 0)
                    {
                      v129 = &v160;
                    }

                    else
                    {
                      v129 = v160;
                    }

                    if (v161 >= 0)
                    {
                      v130 = HIBYTE(v161);
                    }

                    else
                    {
                      v130 = *(&v160 + 1);
                    }

                    goto LABEL_228;
                  }

LABEL_204:
                  *(&v154.__r_.__value_.__s + 23) = 19;
                  strcpy(&v154, "-dilationRates \\[1,");
                  std::to_string(&v153, 1);
                  if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v131 = &v153;
                  }

                  else
                  {
                    v131 = v153.__r_.__value_.__r.__words[0];
                  }

                  if ((v153.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v132 = HIBYTE(v153.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v132 = v153.__r_.__value_.__l.__size_;
                  }

                  v133 = std::string::append(&v154, v131, v132);
                  v134 = *&v133->__r_.__value_.__l.__data_;
                  v155.__r_.__value_.__r.__words[2] = v133->__r_.__value_.__r.__words[2];
                  *&v155.__r_.__value_.__l.__data_ = v134;
                  v133->__r_.__value_.__l.__size_ = 0;
                  v133->__r_.__value_.__r.__words[2] = 0;
                  v133->__r_.__value_.__r.__words[0] = 0;
                  v135 = std::string::append(&v155, ",");
                  v136 = *&v135->__r_.__value_.__l.__data_;
                  v156.__r_.__value_.__r.__words[2] = v135->__r_.__value_.__r.__words[2];
                  *&v156.__r_.__value_.__l.__data_ = v136;
                  v135->__r_.__value_.__l.__size_ = 0;
                  v135->__r_.__value_.__r.__words[2] = 0;
                  v135->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v152, v4[26]);
                  if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v137 = &v152;
                  }

                  else
                  {
                    v137 = v152.__r_.__value_.__r.__words[0];
                  }

                  if ((v152.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v138 = HIBYTE(v152.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v138 = v152.__r_.__value_.__l.__size_;
                  }

                  v139 = std::string::append(&v156, v137, v138);
                  v140 = *&v139->__r_.__value_.__l.__data_;
                  v157.__r_.__value_.__r.__words[2] = v139->__r_.__value_.__r.__words[2];
                  *&v157.__r_.__value_.__l.__data_ = v140;
                  v139->__r_.__value_.__l.__size_ = 0;
                  v139->__r_.__value_.__r.__words[2] = 0;
                  v139->__r_.__value_.__r.__words[0] = 0;
                  v141 = std::string::append(&v157, ",");
                  v142 = *&v141->__r_.__value_.__l.__data_;
                  v158.__r_.__value_.__r.__words[2] = v141->__r_.__value_.__r.__words[2];
                  *&v158.__r_.__value_.__l.__data_ = v142;
                  v141->__r_.__value_.__l.__size_ = 0;
                  v141->__r_.__value_.__r.__words[2] = 0;
                  v141->__r_.__value_.__r.__words[0] = 0;
                  std::to_string(&v151, v4[25]);
                  if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v143 = &v151;
                  }

                  else
                  {
                    v143 = v151.__r_.__value_.__r.__words[0];
                  }

                  if ((v151.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v144 = HIBYTE(v151.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v144 = v151.__r_.__value_.__l.__size_;
                  }

                  v145 = std::string::append(&v158, v143, v144);
                  v146 = *&v145->__r_.__value_.__l.__data_;
                  v159.__r_.__value_.__r.__words[2] = v145->__r_.__value_.__r.__words[2];
                  *&v159.__r_.__value_.__l.__data_ = v146;
                  v145->__r_.__value_.__l.__size_ = 0;
                  v145->__r_.__value_.__r.__words[2] = 0;
                  v145->__r_.__value_.__r.__words[0] = 0;
                  v147 = std::string::append(&v159, "\\] ");
                  v148 = *&v147->__r_.__value_.__l.__data_;
                  v161 = v147->__r_.__value_.__r.__words[2];
                  v160 = v148;
                  v147->__r_.__value_.__l.__size_ = 0;
                  v147->__r_.__value_.__r.__words[2] = 0;
                  v147->__r_.__value_.__r.__words[0] = 0;
                  if (v161 >= 0)
                  {
                    v129 = &v160;
                  }

                  else
                  {
                    v129 = v160;
                  }

                  if (v161 >= 0)
                  {
                    v130 = HIBYTE(v161);
                  }

                  else
                  {
                    v130 = *(&v160 + 1);
                  }

LABEL_228:
                  std::string::append(&v162, v129, v130);
                  if (SHIBYTE(v161) < 0)
                  {
                    operator delete(v160);
                    if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_230:
                      if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_231;
                      }

                      goto LABEL_242;
                    }
                  }

                  else if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_230;
                  }

                  operator delete(v159.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_231:
                    if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_232;
                    }

                    goto LABEL_243;
                  }

LABEL_242:
                  operator delete(v151.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_232:
                    if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_233;
                    }

                    goto LABEL_244;
                  }

LABEL_243:
                  operator delete(v158.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v157.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_233:
                    if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_234;
                    }

                    goto LABEL_245;
                  }

LABEL_244:
                  operator delete(v157.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v152.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_234:
                    if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_235;
                    }

                    goto LABEL_246;
                  }

LABEL_245:
                  operator delete(v152.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v156.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_235:
                    if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_236;
                    }

                    goto LABEL_247;
                  }

LABEL_246:
                  operator delete(v156.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_236:
                    if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_237;
                    }

                    goto LABEL_248;
                  }

LABEL_247:
                  operator delete(v155.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v153.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_237:
                    if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_238;
                    }

LABEL_249:
                    operator delete(v154.__r_.__value_.__l.__data_);
LABEL_238:
                    std::string::append(&v162, "-packed 3 ");
                    if (*(a2 + 8))
                    {
                      operator new();
                    }

                    operator new();
                  }

LABEL_248:
                  operator delete(v153.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v154.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_238;
                  }

                  goto LABEL_249;
                }

LABEL_203:
                operator delete(v154.__r_.__value_.__l.__data_);
                if (*(a2 + 8))
                {
                  goto LABEL_170;
                }

                goto LABEL_204;
              }

LABEL_134:
              operator delete(v154.__r_.__value_.__l.__data_);
              if (*(a2 + 8))
              {
                goto LABEL_101;
              }

              goto LABEL_135;
            }

LABEL_65:
            operator delete(v158.__r_.__value_.__l.__data_);
            if (*(a2 + 12) == 1)
            {
              goto LABEL_36;
            }

            goto LABEL_66;
          }
        }

        else if ((SHIBYTE(v159.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        operator delete(v159.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v158.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_62;
      }
    }

    else
    {
      v7 = [v6 inputTensorAtIndex:{0, a3}];
      v8 = [*(v5 + 232) outputTensorAtIndex:0];
      v9 = *(a2 + 8);
      if (v9 != 1)
      {
        goto LABEL_4;
      }
    }

    v14 = **(v7 + 16);
    v10 = (v14 + 8);
    v11 = (v14 + 16);
    v15 = **(v8 + 16);
    v12 = (v15 + 8);
    v13 = (v15 + 16);
    goto LABEL_8;
  }

  return result;
}

void sub_2399FE188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 97) < 0)
  {
    operator delete(*(v24 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_2399FEB50()
{
  if ((*(v0 - 97) & 0x80000000) == 0)
  {
    JUMPOUT(0x2399FEB48);
  }

  JUMPOUT(0x2399FEB40);
}

void EncodeQuantizedConvolutionFallback(void *a1, uint64_t a2, int64x2_t *a3)
{
  v143 = *MEMORY[0x277D85DE8];
  v4 = a3[8].i64[1];
  v5 = *(v4 + 256);
  v100 = a3->i64[0];
  v6 = a3->u32[2];
  v115 = a3->i32[3];
  v112 = a3[5].u64[0];
  v113 = a3[1].u64[1];
  v109 = a3[1].u64[0];
  v110 = a3[2].i64[0];
  v111 = a3[2].i64[1];
  v103 = a3[4].i64[1];
  v104 = a3[4].i64[0];
  v101 = a3[5].i64[1];
  v102 = a3[3];
  if (unpackSources(a3, v127) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v117 = [*(a3[8].i64[0] + 232) inputTensorAtIndex:0];
  v7 = [*(a3[8].i64[0] + 232) inputTensorAtIndex:1];
  v114 = [*(a3[8].i64[0] + 232) outputTensorAtIndex:0];
  v8 = *(*(v4 + *MEMORY[0x277CD7370]) + 32);
  v9 = v127[1];
  v119 = v127[0];
  v10 = (*(*v8 + 48))(v8);
  v11 = MEMORY[0x277CD73D8];
  v99 = v10;
  __p = v7;
  if (v10)
  {
    v12 = v7[2];
    v132 = 0;
    v133 = 0;
    v131 = 0;
    v14 = *v12;
    v13 = v12[1];
    if (v13 != v14)
    {
      if (((v13 - v14) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v15 = &v9[*MEMORY[0x277CD73D8]];
    if (v115)
    {
      v16 = v15[3];
    }

    else
    {
      v17 = *v15;
    }

    v9 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(v8, v5, a2, a1, v9, &v131, v115, 0);
    if (!v9 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v131)
    {
      v132 = v131;
      operator delete(v131);
    }

    v7 = __p;
  }

  v18 = *&v119[*v11];
  v19 = v18.u8[0];
  v20 = v18.u8[1];
  v21 = v18.u8[2];
  v22 = v18.u8[3];
  if (v18.u8[0] > 3u || v18.u8[1] > 3u || v18.u8[2] > 3u || v18.u8[3] > 3u)
  {
    goto LABEL_25;
  }

  v57 = vceq_s16((*&vzip1_s8(*v18.i8, *v18.i8) & 0xFF00FF00FF00FFLL), 0x3000200010000);
  if ((vminv_u16(v57) & 1) == 0)
  {
    if (v6 == 1)
    {
      if ((v57.i8[6] & 1) == 0 || (v21 == 1 ? (v87 = v19 == 2) : (v87 = 0), v87 ? (v88 = v20 == 0) : (v88 = 0), !v88))
      {
LABEL_25:
        v18.i16[0] = v19;
        v18.i16[1] = v20;
        v18.i16[2] = v21;
        v18.i16[3] = v22;
        if (vmovn_s16(v18).u32[0] != 50462976)
        {
          v26 = [objc_msgSend(v119 "descriptor")];
          v27 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v119[*MEMORY[0x277CD73C8]] shape:v26];
          v28 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a2 descriptor:v27];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v119 setReadCount:{objc_msgSend(v119, "readCount") + 1}];
          }

          v131 = v119;
          [v5 encodeToMPSCommandEncoder:a1 commandBuffer:a2 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v131 kernelDAGObject:{1), 0, v28, 0}];
          v119 = v28;
          v7 = __p;
        }

        goto LABEL_29;
      }

      v107 = 0;
    }

    else
    {
      if (v6 || (v57.i8[6] & 1) == 0 || v21)
      {
        goto LABEL_25;
      }

      if (v19 != 1 || v20 != 2)
      {
        goto LABEL_25;
      }

      v107 = 1;
    }

    v29 = v128;
    v30 = v129;
    goto LABEL_31;
  }

  if (v6 == -1)
  {
    v20 = 1;
    goto LABEL_25;
  }

LABEL_29:
  v29 = v128;
  v30 = v129;
  if (v6 >= 2)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v107 = v6;
    v7 = __p;
  }

  else
  {
    v107 = v6;
  }

LABEL_31:
  if (*v117 != 4)
  {
    v7 = __p;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
      v7 = __p;
    }
  }

  if (*v7 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v114 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v31 = v117[2];
  v33 = *v31;
  v32 = v31[1];
  if (v32 != v33)
  {
    if (((v32 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v39 = __p[2];
  v41 = *v39;
  v40 = v39[1];
  if (v40 != v41)
  {
    if (((v40 - v41) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v42 = v114[2];
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

  if (v6)
  {
    v34 = 8;
    v35 = 8;
    v36 = 16;
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v38 = 16;
    v37 = 16;
    v36 = 8;
    v35 = 0;
    v34 = 0;
  }

  v96 = v4;
  v45 = *v38;
  LODWORD(v97) = *v34;
  HIDWORD(v97) = *v36;
  v46 = MEMORY[0x18];
  v47 = *v37;
  v106 = *v35;
  v48 = *v36;
  v49 = MEMORY[0x18];
  v50 = 8;
  if (!v115)
  {
    v50 = 24;
  }

  v51 = *(16 * (v115 == 0));
  if (*v50 != v111 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v51 != v110 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v46 != v49 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v45 != v109 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v47 != v113 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v116 = v49;
  v52 = *MEMORY[0x277CD73C8];
  v53 = *&v119[v52];
  if (v53 <= 268435471)
  {
    if (v53 != -1879048176 && v53 != 4)
    {
      if (v53 == 8)
      {
LABEL_64:
        v56 = *&v9[v52];
        goto LABEL_78;
      }

LABEL_61:
      v55 = *&v9[v52];
      goto LABEL_78;
    }

LABEL_76:
    v59 = *&v9[v52];
    goto LABEL_78;
  }

  if (v53 > 536870915)
  {
    if (v53 != 536870916)
    {
      if (v53 == 536870920)
      {
        goto LABEL_64;
      }

      goto LABEL_61;
    }

    goto LABEL_76;
  }

  if (v53 != 268435472)
  {
    if (v53 == 268435488)
    {
      v54 = *&v9[v52];
      goto LABEL_78;
    }

    goto LABEL_61;
  }

  v60 = *&v9[v52];
LABEL_78:
  v98 = v9;
  if (!v29)
  {
    goto LABEL_88;
  }

  v61 = *(v29 + v52);
  if (v61 <= 268435471)
  {
    if (v61 != -1879048176 && v61 != 4)
    {
      if (v61 == 8)
      {
        goto LABEL_92;
      }

      goto LABEL_88;
    }

LABEL_96:
    v62 = v113 / v112;
    if (!v30)
    {
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  if (v61 <= 536870915)
  {
    if (v61 == 268435472)
    {
      v62 = v113 / v112;
      if (!v30)
      {
        goto LABEL_99;
      }

      goto LABEL_97;
    }

    if (v61 == 268435488)
    {
      v62 = v113 / v112;
      if (!v30)
      {
        goto LABEL_99;
      }

LABEL_97:
      v63 = *(v30 + v52);
      goto LABEL_99;
    }

    goto LABEL_88;
  }

  if (v61 == 536870916)
  {
    goto LABEL_96;
  }

  if (v61 == 536870920)
  {
LABEL_92:
    v62 = v113 / v112;
    if (v30)
    {
      goto LABEL_97;
    }

    goto LABEL_99;
  }

LABEL_88:
  v62 = v113 / v112;
  if (v30)
  {
    goto LABEL_97;
  }

LABEL_99:
  v64 = a3[7].i64[0];
  if (v107)
  {
    v65 = v116 * v48 * ((v106 + 63) >> 6);
  }

  else
  {
    v65 = (v62 + 3) >> 2;
  }

  if (v107)
  {
    v66 = (v62 + 3) >> 2;
  }

  else
  {
    v66 = v116 * v48 * ((v106 + 63) >> 6);
  }

  v67 = 32;
  if (v107)
  {
    v68 = 1;
  }

  else
  {
    v68 = 32;
  }

  v94 = v68;
  v95 = v65;
  if (!v107)
  {
    v67 = 1;
  }

  v92 = v66;
  v93 = v67;
  [a3[6].i64[1] implicitZeroPoint];
  [v64 implicitZeroPoint];
  v69 = v130;
  LODWORD(v131) = v109 / v112;
  HIDWORD(v131) = v62;
  LOWORD(v132) = v110;
  WORD1(v132) = v111;
  WORD2(v132) = v112;
  LODWORD(v133) = v116;
  v134 = v97;
  v135 = __PAIR64__(v48, v106);
  LODWORD(v70) = v101 - (v104 * (v110 - 1) + 1) / 2;
  HIDWORD(v70) = HIDWORD(v101) - (v103 * (v111 - 1) + 1) / 2;
  v136 = v70;
  *&v71 = vmovn_s64(v102);
  v138 = WORD2(v71);
  v137 = v71;
  v140 = v103;
  v139 = v104;
  v72 = *MEMORY[0x277CD73C8];
  v73 = *MEMORY[0x277CD7400];
  v74 = *&v119[v73];
  v75 = *&v119[v72] >> 3;
  v76 = *MEMORY[0x277CD73D0];
  v77 = v74 * *&v119[v76 + 4];
  LODWORD(v71) = 1;
  DWORD1(v71) = v74 / v75;
  DWORD2(v71) = v77 / v75;
  HIDWORD(v71) = v77 * *&v119[v76 + 8] / v75;
  LODWORD(v78) = 1;
  v141 = v71;
  v79 = *&v98[v73];
  v80 = *&v98[v72] >> 3;
  v81 = v79 * *&v98[v76 + 4];
  DWORD1(v78) = v79 / v80;
  DWORD2(v78) = v81 / v80;
  HIDWORD(v78) = v81 * *&v98[v76 + 8] / v80;
  v142 = v78;
  *&v71 = -1;
  *(&v71 + 1) = -1;
  v125 = v71;
  v126 = v71;
  v123 = v71;
  v124 = v71;
  v122 = v71;
  *&v126 = [*(a3[8].i64[0] + 16) count] | 0x10000;
  v82 = *(v96 + *MEMORY[0x277CD7370]);
  v90 = *(v96 + *MEMORY[0x277CD7360]);
  v91 = *(v96 + *MEMORY[0x277CD7368]);
  v89 = *(a3[8].i64[0] + 232);
  MPSLibrary::CreateUberShaderKey();
  v83 = v69;
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(a1, a3[8].i64[0], 4, 0, 1);
  if (v99)
  {
    v85 = 0;
  }

  else
  {
    v85 = *(*(a3[8].i64[0] + 8) + 80 * v83 + 64);
  }

  [a1 setBuffer:objc_msgSend(v98 offset:"buffer" atIndex:{v89, v90, v91, 0, 0), MPSGetLinearOffsetBytes(v98, 0, 4, 0, 0) + v85, 28}];
  [a1 setComputePipelineState:PipelineStateForMPSKey];
  [a1 setBytes:&v131 length:96 atIndex:29];
  v121[0] = v92;
  v121[1] = v95;
  v121[2] = 1;
  v120[0] = v94;
  v120[1] = v93;
  v120[2] = 1;
  [a1 dispatchThreadgroups:v121 threadsPerThreadgroup:v120];
  MPSLibrary::ReleaseComputeState();
  operator delete(0);
  operator delete(0);
  operator delete(0);
  v86 = *MEMORY[0x277D85DE8];
}

void sub_2399FFB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, void *a45)
{
  operator delete(__p);
  operator delete(a37);
  if (!a45)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a45);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t unpackSources(void *a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *(a2 + 32) = v4;
  *(a2 + 48) = v4;
  v6 = a1[13];
  v5 = a1[14];
  v7 = [*(a1[16] + 232) graph];
  v8 = *(v7 + 64);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 != v10)
  {
    v11 = v7;
    v12 = 0;
    do
    {
      v13 = *v9;
      if (v13 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v11) + 32))
      {
        *a2 = [*(a1[16] + 16) objectAtIndexedSubscript:v12];
        *(a2 + 32) = v12;
      }

      v14 = *v9;
      if (v14 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v11) + 32))
      {
        *(a2 + 8) = [*(a1[16] + 16) objectAtIndexedSubscript:v12];
        *(a2 + 40) = v12;
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      else if (!v6)
      {
        goto LABEL_11;
      }

      v15 = *v9;
      if (v15 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v11) + 32))
      {
LABEL_11:
        if (v5)
        {
          goto LABEL_12;
        }

        goto LABEL_3;
      }

      *(a2 + 16) = [*(a1[16] + 16) objectAtIndexedSubscript:v12];
      *(a2 + 48) = v12;
      if (v5)
      {
LABEL_12:
        v16 = *v9;
        if (v16 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v11) + 32))
        {
          *(a2 + 24) = [*(a1[16] + 16) objectAtIndexedSubscript:v12];
          *(a2 + 56) = v12;
        }
      }

LABEL_3:
      ++v12;
      ++v9;
    }

    while (v9 != v10);
  }

  if (*a2 && *(a2 + 8) && (v6 != 0) != (*(a2 + 16) == 0))
  {
    return (v5 != 0) ^ (*(a2 + 24) != 0);
  }

  else
  {
    return 1;
  }
}

uint64_t MPSNDArrayQuantizedConvolutionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
      LODWORD(v19) = *(a3 + 1);
      [v5 setConstantValue:&v19 type:33 atIndex:126];
      v7 = *a3;
    }

    if (v7 != -1)
    {
      LODWORD(v19) = v7;
      [v6 setConstantValue:&v19 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      LODWORD(v19) = a3[2];
      [v6 setConstantValue:&v19 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      LODWORD(v19) = a3[3];
      [v6 setConstantValue:&v19 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      LODWORD(v19) = a3[4];
      [v6 setConstantValue:&v19 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      LODWORD(v19) = a3[5];
      [v6 setConstantValue:&v19 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      LODWORD(v19) = a3[8];
      [v6 setConstantValue:&v19 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      LODWORD(v19) = a3[9];
      [v6 setConstantValue:&v19 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      LODWORD(v19) = a3[6];
      [v6 setConstantValue:&v19 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      LODWORD(v19) = a3[7];
      [v6 setConstantValue:&v19 type:33 atIndex:116];
    }
  }

  v19 = a2[8];
  [v6 setConstantValue:&v19 type:85 atIndex:115];
  v16 = *a2;
  v17 = _MPSNewSpecializedFunction();

  return v17;
}

BOOL MPSNDArrayFFTBehaviors::allowCombinedKernel(uint64_t a1, int a2, int a3, uint64_t a4, __n128 a5)
{
  if (*(a1 + 24) != 1)
  {
    return 0;
  }

  v5 = a3 >> 3;
  v6 = 8 * v5;
  if (a2 > 0)
  {
    v5 = (a3 >> 3) * a5.n128_i32[0];
  }

  if (a2 > 1)
  {
    v5 = (a3 >> 3) * a5.n128_i32[0] * a5.n128_i32[1];
  }

  if (a2 > 2)
  {
    v5 = (a3 >> 3) * a5.n128_i32[0] * a5.n128_i32[1] * a5.n128_i32[2];
  }

  if (a2 > 3)
  {
    v5 = (a3 >> 3) * a5.n128_i32[0] * a5.n128_i32[1] * a5.n128_i32[2] * a5.n128_i32[3];
  }

  if ((a3 & 0x1000000) != 0)
  {
    v6 = *(a1 + 8);
  }

  if ((a3 >> 3) * a5.n128_i32[0] * a5.n128_i32[1] * a5.n128_i32[2] * a5.n128_i32[3] < 1000 * a4 * *(a1 + 16))
  {
    v6 = 1024;
  }

  return v5 <= v6;
}

BOOL MPSNDArrayFFTBehaviors::isMediumCombinedOk(uint64_t a1, int a2, unsigned __int16 a3, __n128 a4)
{
  if (a2 < 1)
  {
    return 1;
  }

  if (*(a1 + 8) >> 16)
  {
    return 1;
  }

  v4 = 0;
  v5 = a3 >> 3;
  do
  {
    v7 = a4;
    v5 *= *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4++ & 3)));
  }

  while (a2 != v4);
  return v5 != 0x8000;
}

uint64_t MPSNDArrayFFTBehaviors::getNZStepsLog2PerThread(__n128 a1)
{
  if (a1.n128_u32[2] == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a1.n128_u32[2] > 2);
  }
}

uint64_t MPSNDArrayFFTBehaviors::getLaunchOrder(uint64_t a1, int *a2, __n128 a3, __n128 a4, int32x4_t a5)
{
  result = (*(*a1 + 16))(a1);
  if ((vminvq_u32(vcgtq_s32(vdupq_n_s32(result), a5)) & 0x80000000) != 0)
  {
    return result;
  }

  v7 = a3.n128_i32[0] > 15 || a5.i32[0] < result;
  v8 = v7;
  v9 = 16;
  if (!v7)
  {
    v10.i64[0] = -1;
    v10.i64[1] = -1;
    if ((vminvq_u32(v10) & 0x80000000) == 0)
    {
      v9 = 16;
    }

    else
    {
      v9 = a3.n128_u32[0];
    }
  }

  if (a5.i32[1] < result || a3.n128_u32[1] >= v9)
  {
    v12 = 0;
    v13 = a3.n128_i32[2];
    v14 = a5.i32[2];
    if (a5.i32[2] < result || a3.n128_u32[2] >= v9)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v16.i64[0] = -1;
  v16.i64[1] = -1;
  v17 = vminvq_u32(v16);
  if (v17 < 0)
  {
    v9 = a3.n128_i32[1];
  }

  v12 = v17 >> 31;
  v13 = a3.n128_i32[2];
  v14 = a5.i32[2];
  if (a5.i32[2] >= result && a3.n128_u32[2] < v9)
  {
LABEL_29:
    v19.i64[0] = -1;
    v19.i64[1] = -1;
    if ((vminvq_u32(v19) & 0x80000000) != 0)
    {
      v9 = v13;
      v12 = 2;
    }
  }

LABEL_31:
  if (a5.i32[3] >= result && a3.n128_u32[3] < v9)
  {
    v21.i64[0] = -1;
    v21.i64[1] = -1;
    if ((vminvq_u32(v21) & 0x80000000) != 0)
    {
      v12 = 3;
      v31 = a4.n128_u32[0];
      v32 = 16;
      if (a4.n128_i32[0] > 15)
      {
        goto LABEL_72;
      }

      goto LABEL_68;
    }
  }

  if (v9 == 16)
  {
    v22.i64[0] = -1;
    v22.i64[1] = -1;
    v23 = vminvq_u32(v22);
    if (v23 >= 0)
    {
      v24 = 16;
    }

    else
    {
      v24 = a3.n128_u32[0];
    }

    if (v23 >= 0)
    {
      v25 = v12;
    }

    else
    {
      v25 = 0;
    }

    if (a3.n128_i32[0] < 16)
    {
      v9 = v24;
      v12 = v25;
    }

    if (v23 >= 0)
    {
      v26 = v9;
    }

    else
    {
      v26 = a3.n128_u32[1];
    }

    if (v23 < 0)
    {
      v27 = 1;
    }

    else
    {
      v27 = v12;
    }

    if (a3.n128_i32[1] < v9)
    {
      v9 = v26;
      v12 = v27;
    }

    if (v23 >= 0)
    {
      v28 = v9;
    }

    else
    {
      v28 = v13;
    }

    if (v23 >= 0)
    {
      v29 = v12;
    }

    else
    {
      v29 = 2;
    }

    if (v13 < v9)
    {
      v9 = v28;
      v12 = v29;
    }

    if (v23 >= 0)
    {
      v30 = v12;
    }

    else
    {
      v30 = 3;
    }

    if (a3.n128_i32[3] < v9)
    {
      v12 = v30;
    }
  }

  v31 = a4.n128_u32[0];
  v32 = 16;
  if (a4.n128_i32[0] <= 15)
  {
LABEL_68:
    if (a5.i32[0] >= result)
    {
      v33.i64[0] = -1;
      v33.i64[1] = -1;
      if ((vminvq_u32(v33) & 0x80000000) == 0)
      {
        v32 = 16;
      }

      else
      {
        v32 = v31;
      }
    }
  }

LABEL_72:
  v34 = 0;
  if (a5.i32[1] >= result && a4.n128_i32[1] < v32)
  {
    v35.i64[0] = -1;
    v35.i64[1] = -1;
    v36 = vminvq_u32(v35);
    if (v36 < 0)
    {
      v32 = a4.n128_i32[1];
    }

    v34 = v36 >> 31;
  }

  if (v14 >= result && a4.n128_i32[2] < v32)
  {
    v37.i64[0] = -1;
    v37.i64[1] = -1;
    if ((vminvq_u32(v37) & 0x80000000) != 0)
    {
      v32 = a4.n128_i32[2];
      v34 = 2;
    }
  }

  if (a5.i32[3] >= result && a4.n128_i32[3] < v32)
  {
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    if ((vminvq_u32(v38) & 0x80000000) != 0)
    {
      v34 = 3;
      v39.i64[1] = -1;
      v39.i32[0] = v12;
      v40 = 3;
      if (v12 == 3)
      {
        goto LABEL_126;
      }

      goto LABEL_86;
    }
  }

  if (v32 == 16)
  {
    v43.i64[0] = -1;
    v43.i64[1] = -1;
    v44 = vminvq_u32(v43);
    if (v44 >= 0)
    {
      v45 = 16;
    }

    else
    {
      v45 = v31;
    }

    if (v44 >= 0)
    {
      v46 = v34;
    }

    else
    {
      v46 = 0;
    }

    v47 = v31 < 16;
    if (v31 >= 16)
    {
      v48 = 16;
    }

    else
    {
      v48 = v45;
    }

    if (v47)
    {
      v34 = v46;
    }

    if (v44 >= 0)
    {
      v49 = v48;
    }

    else
    {
      v49 = a4.n128_u32[1];
    }

    if (v44 < 0)
    {
      v50 = 1;
    }

    else
    {
      v50 = v34;
    }

    if (a4.n128_i32[1] < v48)
    {
      v48 = v49;
      v34 = v50;
    }

    if (v44 >= 0)
    {
      v51 = v48;
    }

    else
    {
      v51 = a4.n128_u32[2];
    }

    if (v44 >= 0)
    {
      v52 = v34;
    }

    else
    {
      v52 = 2;
    }

    if (a4.n128_i32[2] < v48)
    {
      v48 = v51;
      v34 = v52;
    }

    if (v44 >= 0)
    {
      v53 = v34;
    }

    else
    {
      v53 = 3;
    }

    if (a4.n128_i32[3] < v48)
    {
      v34 = v53;
    }

    v39.i64[1] = -1;
    v39.i32[0] = v12;
    v40 = v34;
    if (v34 == v12)
    {
      goto LABEL_126;
    }

LABEL_86:
    v39.i32[1] = v40;
    v41 = 16;
    if (v8)
    {
      goto LABEL_87;
    }

LABEL_160:
    if ((vminvq_u32(vtstq_s32(v39, v39)) & 0x80000000) == 0)
    {
      v41 = 16;
    }

    else
    {
      v41 = a3.n128_u32[0];
    }

    v42 = 0;
    if (a5.i32[1] < result)
    {
      goto LABEL_168;
    }

    goto LABEL_164;
  }

  v39.i64[1] = -1;
  v39.i32[0] = v12;
  v40 = v34;
  if (v34 != v12)
  {
    goto LABEL_86;
  }

LABEL_126:
  v54 = 16;
  if ((v8 & 1) == 0)
  {
    v55 = -1;
    v55.i16[0] = v12 != 0;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v55), 0x1FuLL))) & 0x80000000) == 0)
    {
      v54 = 16;
    }

    else
    {
      v54 = a3.n128_u32[0];
    }
  }

  v56 = 0;
  if (a5.i32[1] >= result && a3.n128_i32[1] < v54)
  {
    v57 = -1;
    v57.i16[0] = v12 != 1;
    v58 = vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v57), 0x1FuLL)));
    if (v58 < 0)
    {
      v54 = a3.n128_i32[1];
    }

    v56 = v58 >> 31;
  }

  if (v14 >= result && v13 < v54)
  {
    v59 = -1;
    v59.i16[0] = v12 != 2;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v59), 0x1FuLL))) & 0x80000000) != 0)
    {
      v54 = v13;
      v56 = 2;
    }
  }

  if (a5.i32[3] < result || a3.n128_i32[3] >= v54 || (v60 = -1, v60.i16[0] = v12 != 3, (vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v60), 0x1FuLL))) & 0x80000000) == 0))
  {
    if (v54 != 16)
    {
      goto LABEL_159;
    }

    if (a3.n128_i32[0] < 16)
    {
      v61 = -1;
      v61.i16[0] = v12 != 0;
      if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v61), 0x1FuLL))) & 0x80000000) != 0)
      {
        v54 = a3.n128_u32[0];
        v56 = 0;
      }

      if (a3.n128_i32[1] >= v54)
      {
LABEL_145:
        if (v13 >= v54)
        {
          goto LABEL_146;
        }

        goto LABEL_154;
      }
    }

    else if (a3.n128_i32[1] >= 16)
    {
      goto LABEL_145;
    }

    v62 = -1;
    v62.i16[0] = v12 != 1;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v62), 0x1FuLL))) & 0x80000000) != 0)
    {
      v54 = a3.n128_i32[1];
      v56 = 1;
    }

    if (v13 >= v54)
    {
LABEL_146:
      if (a3.n128_i32[3] >= v54)
      {
        goto LABEL_159;
      }

      goto LABEL_157;
    }

LABEL_154:
    v63 = -1;
    v63.i16[0] = v12 != 2;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v63), 0x1FuLL))) & 0x80000000) != 0)
    {
      v54 = v13;
      v56 = 2;
    }

    if (a3.n128_i32[3] >= v54)
    {
LABEL_159:
      v34 = v12;
      v39.i32[1] = v56;
      v41 = 16;
      if ((v8 & 1) == 0)
      {
        goto LABEL_160;
      }

      goto LABEL_87;
    }

LABEL_157:
    v64 = -1;
    v64.i16[0] = v12 != 3;
    if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(v64), 0x1FuLL))) & 0x80000000) != 0)
    {
      v56 = 3;
    }

    goto LABEL_159;
  }

  v34 = v12;
  v39.i32[1] = 3;
  v41 = 16;
  if ((v8 & 1) == 0)
  {
    goto LABEL_160;
  }

LABEL_87:
  v42 = 0;
  if (a5.i32[1] < result)
  {
    goto LABEL_168;
  }

LABEL_164:
  if (a3.n128_i32[1] < v41)
  {
    v65.i64[0] = 0x100000001;
    v65.i64[1] = 0x100000001;
    v66 = vminvq_u32(vmvnq_s8(vceqq_s32(v39, v65)));
    if (v66 < 0)
    {
      v41 = a3.n128_i32[1];
    }

    v42 = v66 >> 31;
  }

LABEL_168:
  if (v14 >= result && v13 < v41)
  {
    v67.i64[0] = 0x200000002;
    v67.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v67))) & 0x80000000) != 0)
    {
      v41 = v13;
      v42 = 2;
    }
  }

  if (a5.i32[3] >= result && a3.n128_i32[3] < v41 && (v68.i64[0] = 0x300000003, v68.i64[1] = 0x300000003, (vminvq_u32(vmvnq_s8(vceqq_s32(v39, v68))) & 0x80000000) != 0))
  {
    v42 = 3;
  }

  else if (v41 == 16)
  {
    if (a3.n128_i32[0] < 16)
    {
      if ((vminvq_u32(vtstq_s32(v39, v39)) & 0x80000000) != 0)
      {
        v41 = a3.n128_u32[0];
        v42 = 0;
      }

      if (a3.n128_i32[1] >= v41)
      {
LABEL_178:
        if (v13 >= v41)
        {
          goto LABEL_179;
        }

        goto LABEL_187;
      }
    }

    else if (a3.n128_i32[1] >= 16)
    {
      goto LABEL_178;
    }

    v69.i64[0] = 0x100000001;
    v69.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v69))) & 0x80000000) != 0)
    {
      v41 = a3.n128_i32[1];
      v42 = 1;
    }

    if (v13 >= v41)
    {
LABEL_179:
      if (a3.n128_i32[3] >= v41)
      {
        goto LABEL_194;
      }

LABEL_190:
      v71.i64[0] = 0x300000003;
      v71.i64[1] = 0x300000003;
      if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v71))) & 0x80000000) != 0)
      {
        v42 = 3;
      }

      goto LABEL_194;
    }

LABEL_187:
    v70.i64[0] = 0x200000002;
    v70.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v70))) & 0x80000000) != 0)
    {
      v41 = v13;
      v42 = 2;
    }

    if (a3.n128_i32[3] >= v41)
    {
      goto LABEL_194;
    }

    goto LABEL_190;
  }

LABEL_194:
  v39.i32[2] = v42;
  v72 = vminvq_u32(vtstq_s32(v39, v39));
  if (v72 >= 0)
  {
    v73 = 16;
  }

  else
  {
    v73 = a3.n128_u32[0];
  }

  if (v8)
  {
    v74 = 16;
  }

  else
  {
    v74 = v73;
  }

  if (a5.i32[1] >= result && a3.n128_i32[1] < v74)
  {
    v75.i64[0] = 0x100000001;
    v75.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v75))) & 0x80000000) != 0)
    {
      v74 = a3.n128_i32[1];
    }
  }

  if (v14 >= result && v13 < v74)
  {
    v76.i64[0] = 0x200000002;
    v76.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v76))) & 0x80000000) != 0)
    {
      v74 = v13;
    }
  }

  if (a5.i32[3] < result || a3.n128_i32[3] >= v74 || (v77.i64[0] = 0x300000003, v77.i64[1] = 0x300000003, (vminvq_u32(vmvnq_s8(vceqq_s32(v39, v77))) & 0x80000000) == 0))
  {
    if (v74 != 16)
    {
LABEL_216:
      *a2 = v34;
      return result;
    }

    v78 = 16;
    if (a3.n128_i32[0] < 16)
    {
      if (v72 >= 0)
      {
        v78 = 16;
      }

      else
      {
        v78 = a3.n128_u32[0];
      }

      if (a3.n128_i32[1] >= v78)
      {
LABEL_214:
        if (v13 >= v78)
        {
          goto LABEL_215;
        }

        goto LABEL_224;
      }
    }

    else if (a3.n128_i32[1] >= 16)
    {
      goto LABEL_214;
    }

    v79.i64[0] = 0x100000001;
    v79.i64[1] = 0x100000001;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v79))) & 0x80000000) != 0)
    {
      v78 = a3.n128_i32[1];
    }

    if (v13 >= v78)
    {
LABEL_215:
      if (a3.n128_i32[3] >= v78)
      {
        goto LABEL_216;
      }

      goto LABEL_227;
    }

LABEL_224:
    v80.i64[0] = 0x200000002;
    v80.i64[1] = 0x200000002;
    if ((vminvq_u32(vmvnq_s8(vceqq_s32(v39, v80))) & 0x80000000) != 0)
    {
      v78 = v13;
    }

    if (a3.n128_i32[3] >= v78)
    {
      goto LABEL_216;
    }

LABEL_227:
    *a2 = v34;
    return result;
  }

  *a2 = v34;
  return result;
}

uint64_t EncodeArrayFFT(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v138 = *MEMORY[0x277D85DE8];
  MEMORY[0x23EE7C450](v117, a3, 0);
  v88 = *(a1 + 672);
  v6 = *(a1 + 680);
  v7 = *(a1 + 692);
  v92 = *(a1 + 688);
  v90 = *(a1 + 664);
  v8 = [*(a4 + 232) graph];
  v9 = **(v8 + 56);
  if (*(*(v8 + 56) + 8) == v9)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = *v9;
  v12 = *(*v9 + 24);
  v11 = *v12;
  if (*(v12 + 8) == *v12)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v91 = v7;
  v93 = a4;
  v13 = **(v10 + 8);
  if (*(*(v10 + 8) + 8) == v13)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v14 = *v11;
  v15 = *v13;
  DimensionSize = BaseTensor::GetDimensionSize(*v11);
  v17 = BaseTensor::GetDimensionSize(v14);
  v18 = BaseTensor::GetDimensionSize(v14);
  v19 = BaseTensor::GetDimensionSize(v14);
  v20 = BaseTensor::GetDimensionSize(v15);
  v21 = BaseTensor::GetDimensionSize(v15);
  v111 = BaseTensor::GetDimensionSize(v15);
  v22 = BaseTensor::GetDimensionSize(v15);
  v25 = **(v10 + 8);
  if (*(*(v10 + 8) + 8) == v25)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v26 = **(v10 + 24);
  if (*(*(v10 + 24) + 8) == v26)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v22;
  v23.i32[0] = 0;
  v109 = DimensionSize;
  v28.i64[0] = __PAIR64__(v17, DimensionSize);
  v106 = v18;
  v28.i64[1] = __PAIR64__(v19, v18);
  v104 = v19;
  v29.n128_u64[0] = __PAIR64__(v21, v20);
  v101 = v21;
  v29.n128_u64[1] = __PAIR64__(v22, v111);
  v30 = *(*v25 + 8);
  v24.i32[0] = v30 & 0x1000000;
  v100 = *(*v26 + 8);
  v96 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v24, v23), 0), v29, v28);
  v31 = v96.n128_u32[0];
  v32 = v96.n128_u32[0] < 2 || (v88 & 1) == 0;
  v97 = a3;
  v87 = v28;
  v113 = v29;
  if (v32)
  {
    v33 = 10;
LABEL_14:
    v94 = 0;
    v35 = v33;
    v36 = 1;
    v33 = 10;
    goto LABEL_16;
  }

  v129.i64[0] = 0;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v118[0] = 0;
  v34 = resolvePasses(&v119, v118, v96.n128_i32[0], 0, v30, 0, 0, v29);
  v33 = 0;
  if (v34)
  {
    v28 = v87;
    v29 = v113;
    goto LABEL_14;
  }

  v35 = 10;
  v94 = 1;
  v36 = 0;
  v28 = v87;
  v29 = v113;
LABEL_16:
  if (v96.n128_u32[1] < 2 || (v88 & 2) == 0)
  {
    goto LABEL_25;
  }

  v38 = v36;
  v129.i64[0] = 0;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v118[0] = 0;
  v39 = resolvePasses(&v119, v118, v96.n128_i32[1], 1, v30, 0, 0, v29);
  if (v39 && v35 == 10)
  {
    v40 = 1;
  }

  else
  {
    v40 = v35;
  }

  if (v39)
  {
    v35 = v40;
    v28 = v87;
    v36 = v38;
    v29 = v113;
LABEL_25:
    v41 = v36 | 2;
    goto LABEL_27;
  }

  v94 |= 2u;
  v41 = v38;
  v33 = v38;
  v28 = v87;
  v29 = v113;
LABEL_27:
  v42 = v96.n128_i32[2];
  if (v96.n128_u32[2] < 2 || (v88 & 4) == 0)
  {
    goto LABEL_35;
  }

  v86 = v41;
  v129.i64[0] = 0;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v118[0] = 0;
  v44 = resolvePasses(&v119, v118, v96.n128_i32[2], 2, v30, 0, 0, v29);
  if (v44 && v35 == 10)
  {
    v35 = 2;
  }

  if (v44)
  {
    v28 = v87;
    v41 = v86;
    v29 = v113;
LABEL_35:
    v86 = v41 | 4;
    goto LABEL_39;
  }

  if (v33 == 10)
  {
    v33 = 2;
  }

  v94 |= 4u;
  v28 = v87;
  v29 = v113;
LABEL_39:
  v45 = v96.n128_i32[3];
  if (v96.n128_u32[3] >= 2 && (v88 & 8) != 0)
  {
    v129.i64[0] = 0;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v118[0] = 0;
    v47 = resolvePasses(&v119, v118, v96.n128_i32[3], 3, v30, 0, 0, v29);
    if (v47 && v35 == 10)
    {
      v35 = 3;
    }

    if (!v47)
    {
      if (v33 == 10)
      {
        v33 = 3;
      }

      v94 |= 8u;
      goto LABEL_53;
    }

    v28 = v87;
    v29 = v113;
  }

  if (!v94)
  {
    v48 = EncodeArrayFFTKernel(a1, a2, v97, v93, v117, v88, v91, v92, v6, v29, v28, v30, v100, 0, 0, 0, 0);
    goto LABEL_84;
  }

  v86 |= 8u;
LABEL_53:
  v49 = v109 * v17 * v106 * v104;
  if (v49 >= v20 * v101 * v111 * v27 || v35 >= v33)
  {
    TempBuffer = 0;
    v17 = v96.n128_i32[1];
  }

  else
  {
    TempBuffer = MPSAutoCache::GetTempBuffer(v117, 8 * v49, 0);
    EncodeArrayFFTKernel(a1, a2, v97, v93, v117, 1 << v35, v91, v92, v6, v113, v87, v30, 285212736, 0, 0, TempBuffer, 0);
    v86 &= ~(1 << v35);
    v45 = v104;
    v42 = v106;
    v31 = v109;
    v96 = v87;
  }

  v52 = 0;
  if ((v30 & 0x1000000) != 0)
  {
    v53 = 285212736;
  }

  else
  {
    v53 = 268435488;
  }

  v89 = v53;
  do
  {
    v110 = 1 << v52;
    if (((1 << v52) & v94) != 0)
    {
      v116 = v96;
      v54 = *(&v116 & 0xFFFFFFFFFFFFFFF3 | (4 * (v52 & 3)));
      v55 = (2 * v54 - 1);
      v56 = (1 << -__clz(v54 - 1));
      v57 = 2 * v54 - 2;
      v32 = 2 * v54 == 2;
      v58 = (1 << -__clz(v57));
      v59 = v58 >> 3;
      v60 = 3 * (v58 >> 2);
      if (v32)
      {
        v60 = 1;
      }

      v61 = 7 * v59;
      if (v57 <= 3)
      {
        v61 = 1;
      }

      if (v56 < v55)
      {
        v62 = 5 * v59;
        v56 = v57 <= 3 ? 1 : v62;
        if (v56 < v55)
        {
          if (v61 >= v55)
          {
            v58 = v61;
          }

          if (v60 < v55)
          {
            v56 = v58;
          }

          else
          {
            v56 = v60;
          }
        }
      }

      v112 = MPSAutoCache::GetTempBuffer(v117, 8 * v56, 0);
      v102 = MPSAutoCache::GetTempBuffer(v117, 8 * v56, 0);
      v63.n128_u64[1] = 0x100000001;
      v63.n128_u64[0] = v56 | 0x100000000;
      context = v63;
      EncodeArrayFFTKernel(a1, a2, v97, v93, v117, v110, 0, v92, 1.0, v63, v63, 0x11000040u, 285212736, 1, 0, v112, 0);
      v115 = v96;
      *(&v115 & 0xFFFFFFFFFFFFFFF3 | (4 * (v52 & 3))) = v56;
      v64.i64[0] = v115.n128_i32[0];
      v64.i64[1] = v115.n128_i32[1];
      v65 = v64;
      v99 = v115;
      v64.i64[0] = v115.n128_i32[2];
      v64.i64[1] = v115.n128_i32[3];
      v105 = v64;
      v107 = v65;
      v66 = 8 * v65.i32[2] * v65.i32[0] * v115.n128_i32[2] * v115.n128_i32[3];
      v114 = MPSAutoCache::GetTempBuffer(v117, v66, 0);
      v103 = MPSAutoCache::GetTempBuffer(v117, v66, 0);
      if (TempBuffer)
      {
        v67 = objc_autoreleasePoolPush();
        v119 = v107;
        v120 = v105;
        v118[0] = v31;
        v118[1] = v17;
        v118[2] = v42;
        v118[3] = v45;
        v136 = xmmword_239B060B0;
        v137 = unk_239B060C0;
        *(&v136 + v52) = v56;
        v68 = [MEMORY[0x277CD7268] descriptorWithDataType:285212736 dimensionCount:4 dimensionSizes:v118];
        [v68 setPreferPackedRows:1];
        v69 = [MEMORY[0x277CD7268] descriptorWithDataType:285212736 dimensionCount:4 dimensionSizes:&v136];
        [v69 setPreferPackedRows:1];
        v70 = [MEMORY[0x277CD7268] descriptorWithDataType:285212736 dimensionCount:4 dimensionSizes:&v119];
        [v70 setPreferPackedRows:1];
        v71 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:TempBuffer descriptor:v68];
        v72 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v112 descriptor:v69];
        v73 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v114 descriptor:v70];
        operator new();
      }

      EncodeArrayFFTKernel(a1, a2, v97, v93, v117, v110, 0, 0, 1.0, v99, v99, v89, 285212736, 2, 0, v114, v112);
      EncodeArrayFFTKernel(a1, a2, v97, v93, v117, 1u, 0, 0, 1.0, context, context, 0x11000040u, 285212736, 0, v112, v102, 0);
      EncodeArrayFFTKernel(a1, a2, v97, v93, v117, v110, 2, 0, 1.0, v99, v99, 0x11000040u, 285212736, 0, v114, v103, 0);
      v74 = objc_autoreleasePoolPush();
      v136 = v107;
      v137 = v105;
      v135[0] = v31;
      v135[1] = v17;
      v135[2] = v42;
      v135[3] = v45;
      v134[0] = xmmword_239B060B0;
      v134[1] = unk_239B060C0;
      *(v134 + v52) = v56;
      v75 = [MEMORY[0x277CD7268] descriptorWithDataType:285212736 dimensionCount:4 dimensionSizes:&v136];
      [v75 setPreferPackedRows:1];
      v76 = [MEMORY[0x277CD7268] descriptorWithDataType:285212736 dimensionCount:4 dimensionSizes:v134];
      [v76 setPreferPackedRows:1];
      v77 = [MEMORY[0x277CD7268] descriptorWithDataType:285212736 dimensionCount:4 dimensionSizes:v135];
      [v77 setPreferPackedRows:1];
      v78 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v103 descriptor:v75];
      v79 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v114 descriptor:v77];
      v80 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v102 descriptor:v76];
      v81 = [objc_alloc(MEMORY[0x277CD7260]) initWithBuffer:v112 descriptor:v76];
      v82.i64[0] = 0x100000001;
      v82.i64[1] = 0x100000001;
      v121 = v82;
      v122 = v82;
      v119 = v82;
      v120 = v82;
      *&v123 = 0;
      v126 = v82;
      v127 = v82;
      v124 = v82;
      v125 = v82;
      *&v128 = 0;
      v131 = v82;
      v132 = v82;
      v129 = v82;
      v130 = v82;
      v133 = 0;
      operator new();
    }

    ++v52;
  }

  while (v52 != 4);
  v48 = EncodeArrayFFTKernel(a1, a2, v97, v93, v117, v86 & v88, v91, v92, v6, v96, v87, 0x11000040u, 285212736, 0, TempBuffer, 0, 0);
LABEL_84:
  v83 = v48;
  MPSAutoCache::~MPSAutoCache(v117);
  v84 = *MEMORY[0x277D85DE8];
  return v83;
}

BOOL resolvePasses(int64x2_t *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  if (!a3)
  {
    return 1;
  }

  v8 = a3;
  if (a6)
  {
    if ((*(*a6 + 40))(a6, a4, a5, a7))
    {
      if (v8 == 0x2000 || (v14 = v8, v8 == 4096))
      {
        ++*a2;
        ++a1->i64[0];
        v14 = v8 >> 12;
      }

      if (v8 == 2048)
      {
        ++*a2;
        ++a1[1].i64[0];
        v8 = v14 >> 11;
        if (((v14 >> 11) & 0x1FF) == 0)
        {
          do
          {
LABEL_22:
            ++*a2;
            ++a1[2].i64[0];
            v16 = v8 >> 9;
            v17 = (v8 & 0x3FE00) == 0;
            v8 >>= 9;
          }

          while (v17);
LABEL_23:
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            do
            {
              ++*a2;
              ++a1[2].i64[1];
              v18 = v16 >> 8;
              v17 = (v16 & 0xFF00) == 0;
              v16 >>= 8;
            }

            while (v17);
          }

          if (0x1A8C536FE1A8C537 * v18 <= 0x1E573AC901E573ALL)
          {
            do
            {
              ++*a2;
              ++a1[3].i64[0];
              v18 /= 0x87uLL;
            }

            while (0x1A8C536FE1A8C537 * v18 < 0x1E573AC901E573BLL);
          }

          if ((v18 & 0x7F) != 0)
          {
            v19 = v18;
          }

          else
          {
            do
            {
              ++*a2;
              ++a1[3].i64[1];
              v19 = v18 >> 7;
              v17 = (v18 & 0x3F80) == 0;
              v18 >>= 7;
            }

            while (v17);
          }

          if ((v19 & 0x3F) != 0)
          {
            v20 = v19;
          }

          else
          {
            do
            {
              ++*a2;
              ++a1[4].i64[0];
              v20 = v19 >> 6;
              v17 = (v19 & 0xFC0) == 0;
              v19 >>= 6;
            }

            while (v17);
          }

          if ((v20 & 0x1F) != 0)
          {
            v8 = v20;
          }

          else
          {
            do
            {
              ++*a2;
              ++a1[4].i64[1];
              v8 = v20 >> 5;
              v17 = (v20 & 0x3E0) == 0;
              v20 >>= 5;
            }

            while (v17);
          }

          goto LABEL_37;
        }
      }

      else
      {
        if (v8 == 7680 || v8 == 3840)
        {
          ++*a2;
          ++a1->i64[1];
          v14 /= 0xF00uLL;
        }

        if (v8 == 0x80000 || v8 == 1024)
        {
          ++*a2;
          ++a1[1].i64[1];
          v8 = v14 >> 10;
          if (((v14 >> 10) & 0x1FF) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v8 = v14;
          if ((v14 & 0x1FF) == 0)
          {
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      if (!(*(*a6 + 48))(a6, a4, a5, a8))
      {
        goto LABEL_37;
      }

      if ((v8 & 0x1FF) == 0)
      {
        goto LABEL_22;
      }
    }

    v16 = v8;
    goto LABEL_23;
  }

LABEL_37:
  if ((v8 & 0xF) != 0)
  {
    v21 = v8;
  }

  else
  {
    do
    {
      ++*a2;
      ++a1[5].i64[1];
      v21 = v8 >> 4;
      v17 = (v8 & 0xF0) == 0;
      v8 >>= 4;
    }

    while (v17);
  }

  if ((v21 & 7) != 0)
  {
    v22 = v21;
  }

  else
  {
    do
    {
      ++*a2;
      ++a1[8].i64[0];
      v22 = v21 >> 3;
      v17 = (v21 & 0x38) == 0;
      v21 >>= 3;
    }

    while (v17);
  }

  if ((v22 & 3) != 0)
  {
    v23 = v22;
  }

  else
  {
    do
    {
      ++*a2;
      ++a1[9].i64[1];
      v23 = v22 >> 2;
      v17 = (v22 & 0xC) == 0;
      v22 >>= 2;
    }

    while (v17);
  }

  if (v23)
  {
    v24 = v23;
    if (0xEEEEEEEEEEEEEEEFLL * v23 > 0x1111111111111111)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  do
  {
    ++*a2;
    ++a1[10].i64[0];
    v24 = v23 >> 1;
    v25 = v23;
    v23 >>= 1;
  }

  while ((v25 & 2) == 0);
  if (0xEEEEEEEEEEEEEEEFLL * v24 <= 0x1111111111111111)
  {
    do
    {
LABEL_51:
      ++*a2;
      ++a1[5].i64[0];
      v24 /= 0xFuLL;
    }

    while (0xEEEEEEEEEEEEEEEFLL * v24 < 0x1111111111111112);
  }

LABEL_52:
  if (0x8E38E38E38E38E39 * v24 <= 0x1C71C71C71C71C71)
  {
    do
    {
      ++*a2;
      ++a1[7].i64[0];
      v24 /= 9uLL;
    }

    while (0x8E38E38E38E38E39 * v24 < 0x1C71C71C71C71C72);
  }

  if (0xCCCCCCCCCCCCCCCDLL * v24 <= 0x3333333333333333)
  {
    do
    {
      ++*a2;
      ++a1[8].i64[1];
      v24 /= 5uLL;
    }

    while (0xCCCCCCCCCCCCCCCDLL * v24 < 0x3333333333333334);
  }

  if (0xAAAAAAAAAAAAAAABLL * v24 <= 0x5555555555555555)
  {
    do
    {
      ++*a2;
      ++a1[9].i64[0];
      v24 /= 3uLL;
    }

    while (0xAAAAAAAAAAAAAAABLL * v24 < 0x5555555555555556);
  }

  if (0x6DB6DB6DB6DB6DB7 * v24 <= 0x2492492492492492)
  {
    do
    {
      ++*a2;
      ++a1[7].i64[1];
      v24 /= 7uLL;
    }

    while (0x6DB6DB6DB6DB6DB7 * v24 < 0x2492492492492493);
  }

  if (0x2E8BA2E8BA2E8BA3 * v24 <= 0x1745D1745D1745D1)
  {
    do
    {
      ++*a2;
      ++a1[6].i64[1];
      v24 /= 0xBuLL;
    }

    while (0x2E8BA2E8BA2E8BA3 * v24 < 0x1745D1745D1745D2);
  }

  if (0x4EC4EC4EC4EC4EC5 * v24 <= 0x13B13B13B13B13B1)
  {
    do
    {
      ++*a2;
      ++a1[6].i64[0];
      v24 /= 0xDuLL;
    }

    while (0x4EC4EC4EC4EC4EC5 * v24 < 0x13B13B13B13B13B2);
  }

  v26 = a1[2].u64[0];
  if (v26)
  {
    v27 = a1[8].i64[0] - 1;
    while (v27 != -1)
    {
      a1[8].i64[0] = v27;
      a1[4].i64[0] += 2;
      --v27;
      a1[2].i64[0] = --v26;
      if (!v26)
      {
        goto LABEL_68;
      }
    }

    v28 = a1 + 10;
    v29 = &a1[9].i64[1];
    v38 = a1[10].i64[0] - 1;
    while (v38 != -1)
    {
      ++a1[9].i64[1];
      a1[10].i64[0] = v38--;
      --v26;
      v39 = a1[2].i64[1] + 1;
      a1[2].i64[0] = v26;
      a1[2].i64[1] = v39;
      if (!v26)
      {
        goto LABEL_69;
      }
    }

    if (v26 >= 2)
    {
      v30 = &a1[5].i64[1];
      v40 = a1[9].i64[1] - 1;
      while (v40 != -1)
      {
        v26 -= 2;
        a1[9].i64[1] = v40;
        v41 = a1[2].i64[1] + 2;
        a1[2].i64[0] = v26;
        a1[2].i64[1] = v41;
        ++a1[5].i64[1];
        --v40;
        if (v26 <= 1)
        {
          goto LABEL_70;
        }
      }

      v42 = a1[5].i64[1] - 1;
      while (v42 != -1)
      {
        v26 -= 2;
        a1[5].i64[1] = v42;
        v43 = a1[2].i64[1] + 1;
        a1[2].i64[0] = v26;
        a1[2].i64[1] = v43;
        a1[3].i64[1] += 2;
        --v42;
        if (v26 <= 1)
        {
          goto LABEL_71;
        }
      }

      v31 = 0;
      goto LABEL_73;
    }

    v26 = 1;
  }

  else
  {
LABEL_68:
    v28 = a1 + 10;
LABEL_69:
    v26 = 0;
    v29 = &a1[9].i64[1];
  }

LABEL_70:
  v30 = &a1[5].i64[1];
LABEL_71:
  if (!v26)
  {
    goto LABEL_76;
  }

  v31 = *v29;
  v26 = 1;
LABEL_73:
  v32 = v31 - 1;
  v33 = v26 - 1;
  v34 = vdupq_n_s64(1uLL);
  do
  {
    if (v32 == -1)
    {
      break;
    }

    a1[2].i64[0] = v33;
    a1[9].i64[1] = v32;
    a1[4] = vaddq_s64(a1[4], v34);
    --v32;
    --v33;
  }

  while (v33 != -1);
LABEL_76:
  v35 = a1[2].u64[1];
  if (v35 >= 2)
  {
    do
    {
      v36 = *v30;
      if (!*v30)
      {
        break;
      }

      v37 = v28->i64[0];
      if (!v28->i64[0])
      {
        break;
      }

      a1[2].i64[1] = v35 - 2;
      a1[5].i64[1] = v36 - 1;
      a1[10].i64[0] = v37 - 1;
      a1[3].i64[1] += 3;
      --*a2;
      v35 = a1[2].u64[1];
    }

    while (v35 > 1);
  }

  return v24 == 1;
}

uint64_t EncodeArrayFFTKernel(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, MPSAutoCache *a5, unsigned int a6, int a7, int a8, double a9, __n128 a10, int32x4_t a11, unsigned int a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v239 = a15;
  v244 = a13;
  v330[84] = *MEMORY[0x277D85DE8];
  v273 = *(a1 + *MEMORY[0x277CD7350]);
  v21 = MEMORY[0x277CD7370];
  v257 = *(a1 + *MEMORY[0x277CD7370]);
  v22 = *(a1 + 664);
  v224 = a10;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if ((a12 & 0x10000000) == 0)
    {
      v209 = a2;
      v210 = MTLReportFailureTypeEnabled();
      a10 = v224;
      a2 = v209;
      if (v210)
      {
        MTLReportFailure();
        a10 = v224;
        a2 = v209;
      }
    }

    if ((a13 & 0x1000000) == 0)
    {
      v211 = a2;
      v212 = MTLReportFailureTypeEnabled();
      a10 = v224;
      a2 = v211;
      if (v212)
      {
        MTLReportFailure();
        a10 = v224;
        a2 = v211;
      }
    }

    if (a6 >= 0x10)
    {
      v213 = a2;
      v214 = MTLReportFailureTypeEnabled();
      a10 = v224;
      a2 = v213;
      if (v214)
      {
        MTLReportFailure();
        a10 = v224;
        a2 = v213;
      }
    }
  }

  v255 = a2;
  v23 = (a12 & 0x1000000) == 0;
  v237 = a1;
  v245 = *(*(a1 + *v21) + 32);
  v24 = a10.n128_u32[0];
  v25 = a6 & (a10.n128_u32[0] > 1);
  if ((v23 & v25) != 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = 4;
  }

  if (((a10.n128_u32[1] > 1) & (a6 >> 1)) != 0)
  {
    v27 = 1;
  }

  else
  {
    v27 = 4;
  }

  if (v23 != (v23 & v25))
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  v269 = a10.n128_i32[1];
  v29 = (a6 & 2) == 0 || a10.n128_u32[1] < 2;
  v30 = v29;
  v265 = v30;
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = 2;
  }

  v271 = a6 & (a10.n128_u32[0] > 1);
  v32 = v31 | v25;
  if (((a10.n128_u32[2] > 1) & (a6 >> 2)) != 0)
  {
    v33 = 2;
  }

  else
  {
    v33 = 4;
  }

  if ((v23 & (v28 == 4)) != 0)
  {
    v28 = v33;
  }

  v267 = a10.n128_i32[2];
  v35 = (a6 & 4) == 0 || a10.n128_u32[2] < 2;
  v261 = v35;
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = 4;
  }

  if (((a10.n128_u32[3] > 1) & (a6 >> 3)) != 0)
  {
    v37 = 3;
  }

  else
  {
    v37 = 4;
  }

  if ((v23 & (v28 == 4)) != 0)
  {
    v38 = v37;
  }

  else
  {
    v38 = v28;
  }

  v263 = a10.n128_i32[3];
  v40 = (a6 & 8) == 0 || a10.n128_u32[3] < 2;
  v259 = v40;
  if (v40)
  {
    v41 = 0;
  }

  else
  {
    v41 = 8;
  }

  v227 = v32 | v36 | v41;
  v42 = v330;
  bzero(v330, 0x2A0uLL);
  memset(v329, 0, sizeof(v329));
  v218 = a5;
  v246 = v38;
  if (a14)
  {
    v44 = 0;
    v45 = (a6 & 1) == 0 && a14 == 2;
    v46 = v45;
    v47 = 3;
    if ((a6 & 8) == 0)
    {
      v47 = 4;
    }

    if ((a6 & 4) != 0)
    {
      v47 = 2;
    }

    if ((((a6 & 2) == 0) & v46) != 0)
    {
      v48 = v47;
    }

    else
    {
      v48 = v46;
    }

    v49 = 1;
    *(v329 + v48) = 1;
    v50 = a16 == 0;
    v51 = 1;
    LODWORD(v52) = 1;
    LODWORD(v225) = 1;
    v281 = 1;
    v53 = a11;
    v54 = v224;
    v55 = v273;
    goto LABEL_67;
  }

  v278 = a12 & 0x1000000;
  v256 = v22;
  v62 = 0;
  v49 = 0;
  v275 = &v330[21 * v38];
  v51 = 1;
  LODWORD(v52) = 1;
  LODWORD(v225) = 1;
  v281 = 1;
  v53 = a11;
  v54 = v224;
  v55 = v273;
  do
  {
    v291 = v54;
    v64 = *(&v291 & 0xFFFFFFFFFFFFFFF3 | (4 * (v62 & 3)));
    v292 = v53;
    v63 = *(&v292 & 0xFFFFFFFFFFFFFFF3 | (4 * (v62 & 3)));
    if (v64 >= 2 && ((v227 >> v62) & 1) != 0)
    {
      v65 = v49;
      v66 = v51;
      v300.n128_u64[0] = 0;
      v67 = resolvePasses(v42, &v300, v64, v62, a12, v245, *(v55 + 1480), v54);
      v68 = v300.n128_u64[0];
      *(v329 + v62) += v300.n128_u64[0];
      if (!v67 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v69 = v65;
      if (v246 != v62)
      {
        v53 = a11;
        v54 = v224;
        v51 = v66;
LABEL_93:
        v49 = v68 + v69;
        v63 = v64;
        goto LABEL_94;
      }

      v53 = a11;
      v54 = v224;
      v51 = v66;
      if (*v275)
      {
        v52 = 4096;
        if (v278)
        {
LABEL_102:
          v281 = v64;
          goto LABEL_93;
        }

LABEL_101:
        v225 = (v52 >> 1) + 1;
        v64 = v64 / v52 * v225;
        goto LABEL_102;
      }

      if (v275[1])
      {
        v52 = 3840;
        if (v278)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v275[2])
      {
        v52 = 2048;
        if (v278)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v275[3])
      {
        v52 = 1024;
        if (v278)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v275[4])
      {
        v52 = 512;
        if (v278)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v275[5])
      {
        v52 = 256;
        if (v278)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v275[6])
      {
        v52 = 135;
        if (v278)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v275[7])
      {
        v52 = 128;
        if (v278)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v275[8])
      {
        v52 = 64;
        if (v278)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v275[9])
      {
        v52 = 32;
        if (v278)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v275[10])
      {
        v52 = 15;
        if (v278)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

      if (v275[11])
      {
        v70 = 11;
      }

      else if (v275[12])
      {
        v70 = 12;
      }

      else if (v275[13])
      {
        v70 = 13;
      }

      else if (v275[14])
      {
        v70 = 14;
      }

      else if (v275[15])
      {
        v70 = 15;
      }

      else if (v275[16])
      {
        v70 = 16;
      }

      else if (v275[17])
      {
        v70 = 17;
      }

      else if (v275[18])
      {
        v70 = 18;
      }

      else if (v275[19])
      {
        v70 = 19;
      }

      else
      {
        if (!v275[20])
        {
          v52 = 1;
          v53 = a11;
          v54 = v224;
          v51 = v66;
          v69 = v65;
          v55 = v273;
          if (v278)
          {
            goto LABEL_102;
          }

          goto LABEL_101;
        }

        v70 = 20;
      }

      v53 = a11;
      v54 = v224;
      v51 = v66;
      v69 = v65;
      v55 = v273;
      v52 = c_passRadixes[v70];
      if (v278)
      {
        goto LABEL_102;
      }

      goto LABEL_101;
    }

LABEL_94:
    v51 *= v63;
    ++v62;
    v42 = (v42 + 168);
  }

  while (v62 != 4);
  v44 = v49 == 0;
  v50 = a16 == 0;
  if (a16)
  {
    a5 = v218;
  }

  else
  {
    a5 = v218;
    if (!a15 && !v49)
    {
      v43.i64[0] = 1.0;
      v71 = a9 == 1.0 && a7 == 0;
      v50 = 1;
      v44 = 1;
      if (!v71)
      {
        if (v278)
        {
          v326 = 0u;
          v327 = 0u;
          v324 = 0u;
          v325 = 0u;
          v72 = *(a4 + 16);
          v73 = [v72 countByEnumeratingWithState:&v324 objects:v328 count:16];
          if (v73)
          {
            v74 = v73;
            v75 = *v325;
            do
            {
              for (i = 0; i != v74; ++i)
              {
                if (*v325 != v75)
                {
                  objc_enumerationMutation(v72);
                }

                v77 = *(*(&v324 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v77 setReadCount:{objc_msgSend(v77, "readCount") + 1}];
                }
              }

              v74 = [v72 countByEnumeratingWithState:&v324 objects:v328 count:16];
            }

            while (v74);
          }

          [v256 encodeToMPSCommandEncoder:v255 commandBuffer:a3 sourceArrays:*(a4 + 16) resultState:0 destinationArray:*(a4 + 208) kernelDAGObject:*(a4 + 232)];
          goto LABEL_523;
        }
      }
    }
  }

LABEL_67:
  v231 = v53.i32[0];
  v56 = v53.i32[1];
  if (a13 == 285212704)
  {
    if (*(v55 + 1472) > 9)
    {
      v61 = 285212704;
      goto LABEL_177;
    }

    v244 = 285212704;
    if ((*(v55 + 1477) & 4) != 0)
    {
      if (v271)
      {
        v57 = v24;
      }

      else
      {
        v57 = 0;
      }

      if (v265)
      {
        v58 = v57;
      }

      else
      {
        v58 = v269;
      }

      if (v57 < v269)
      {
        v57 = v58;
      }

      if (v261)
      {
        v59 = v57;
      }

      else
      {
        v59 = v267;
      }

      if (v57 < v267)
      {
        v57 = v59;
      }

      if (v259)
      {
        v60 = v57;
      }

      else
      {
        v60 = v263;
      }

      if (v57 < v263)
      {
        v57 = v60;
      }

      if (v57 >> 14)
      {
        v61 = 285212736;
      }

      else
      {
        v61 = 285212704;
      }

LABEL_177:
      v244 = v61;
    }
  }

  v78 = v53.i32[0] * v53.i32[1];
  v79 = v53.i32[2];
  v222 = v51;
  if (v49 < 2)
  {
    v86 = 0;
    result = 0;
  }

  else
  {
    v279 = v53.i32[1];
    v80 = v44;
    v81 = v24;
    v82 = v51 * (v244 >> 3) + 15;
    v83 = v49;
    TempBuffer = MPSAutoCache::GetTempBuffer(a5, v82 & 0xFFFFFFFFFFFFFFF0, 0);
    v85 = a5;
    v86 = TempBuffer;
    if (v83 == 2)
    {
      v49 = 2;
      result = 0;
    }

    else
    {
      result = MPSAutoCache::GetTempBuffer(v85, v82 & 0xFFFFFFFFFFFFFFF0, 0);
      v49 = v83;
    }

    v53 = a11;
    v54 = v224;
    LODWORD(v24) = v81;
    v44 = v80;
    v56 = v279;
  }

  v252 = !(a12 & 0x1000000);
  v88 = v78 * v79;
  v274 = a15 != 0;
  if (a16)
  {
    v89 = 1;
  }

  else
  {
    v89 = v49 > 1;
  }

  v90 = v89;
  v272 = v90;
  v91 = a14;
  v300 = v53;
  v301 = v54;
  v92 = v246;
  v54.n128_u32[0] = v246;
  v43.i32[0] = 4;
  v290 = v53;
  *(&v290 & 0xFFFFFFFFFFFFFFF3 | (4 * (v246 & 3))) = v281;
  v93 = vbslq_s8(vdupq_lane_s32(*&vcgtq_u32(v43, v54), 0), v290, v53);
  LODWORD(v320) = v24;
  HIDWORD(v320) = v269 * v24;
  v321 = v269 * v24 * v267;
  LODWORD(v322) = v93.i32[0];
  HIDWORD(v322) = v93.i32[1] * v93.i32[0];
  v323 = v93.i32[1] * v93.i32[0] * v93.i32[2];
  v308 = v52;
  v309 = v225;
  v94 = !v44;
  if (a14)
  {
    v94 = 1;
  }

  if ((v94 & 1) == 0)
  {
    v49 = 1;
    *&v329[0] = 1;
    v91 = 3;
  }

  v221 = v88 * v53.i32[3];
  v228 = v56 * v231 * v53.i32[2];
  v229 = v56 * v231;
  v95 = 0;
  v235 = !v50;
  v236 = v91 != 0;
  if (a8)
  {
    v96 = 16;
  }

  else
  {
    v96 = 0;
  }

  v234 = v96;
  if (v91 == 2)
  {
    v97 = 14;
  }

  else
  {
    v97 = 15;
  }

  if (v91 == 1)
  {
    v98 = 13;
  }

  else
  {
    v98 = v97;
  }

  v243 = v91;
  v219 = v98;
  while (2)
  {
    v99 = *(v329 + v95);
    if (v99)
    {
      v289 = v224;
      v100 = *(&v289 & 0xFFFFFFFFFFFFFFF3 | (4 * (v95 & 3)));
      if (v274)
      {
        a9 = 1.0;
      }

      if (!v91)
      {
        if (a7 == 2)
        {
          v101 = sqrt(v100);
LABEL_214:
          a9 = 1.0 / v101;
        }

        else if (a7 == 1)
        {
          v101 = v100;
          goto LABEL_214;
        }
      }

      v102 = 0;
      if (v95)
      {
        v103 = 12;
      }

      else
      {
        v103 = 11;
      }

      if (v91)
      {
        v103 = v98;
      }

      v241 = v103;
      v104 = v252 && v91 == 0;
      v226 = (v100 >> 1) + 1;
      v288 = a11;
      if (v221 >= v222)
      {
        v29 = *(&v288 & 0xFFFFFFFFFFFFFFF3 | (4 * (v95 & 3))) < v100;
      }

      v105 = &v330[21 * v95];
      v242 = !v104;
      v223 = (&v285 & 0xFFFFFFFFFFFFFFF3 | (4 * (v95 & 3)));
      v240 = (&v302 & 0xFFFFFFFFFFFFFFF3 | (4 * (v95 & 3)));
      v106 = 1;
      v258 = 1;
      v107 = 1;
      v233 = v105;
      v264 = v95;
      while (2)
      {
        v108 = v106;
        v284 = v49;
        v280 = v99 - 1;
        v45 = v102 == v99 - 1;
        v109 = v242;
        if (!v45)
        {
          v109 = 1;
        }

        v260 = result;
        v262 = v86;
        if ((v109 & 1) != 0 || v95 != v92)
        {
          if (!v91)
          {
            if (*v105)
            {
              goto LABEL_234;
            }

            goto LABEL_241;
          }

          v266 = 0;
          v114 = 0;
          if (v102 <= 1)
          {
            v115 = 1;
          }

          else
          {
            v115 = v106;
          }

          v116 = 4096;
          goto LABEL_251;
        }

        v110 = v231;
        v112 = v228;
        v111 = v229;
        if (v49 >= 2)
        {
          v287 = v300;
          *(&v287 & 0xFFFFFFFFFFFFFFF3 | (4 * (v246 & 3))) = v226;
          v300 = v287;
          v110 = v287.i32[0];
          v111 = v287.i32[1] * v287.i32[0];
          v112 = v287.i32[1] * v287.i32[0] * v287.i32[2];
        }

        v322 = __PAIR64__(v111, v110);
        v323 = v112;
        if (*v105)
        {
LABEL_234:
          v113 = 0;
          goto LABEL_247;
        }

LABEL_241:
        if (v105[1])
        {
          v113 = 1;
          goto LABEL_247;
        }

        if (v105[2])
        {
          v113 = 2;
          goto LABEL_247;
        }

        if (v105[3])
        {
          v113 = 3;
          goto LABEL_247;
        }

        if (v105[4])
        {
          v205 = 4;
          goto LABEL_470;
        }

        if (v105[5])
        {
          v113 = 5;
LABEL_247:
          if (v102 <= 1)
          {
            v115 = 1;
          }

          else
          {
            v115 = v108;
          }

          v266 = v113;
          v116 = c_passRadixes[v113];
          v114 = 1;
LABEL_251:
          v117 = 16;
        }

        else if (v105[6])
        {
          if (v102 <= 1)
          {
            v115 = 1;
          }

          else
          {
            v115 = v108;
          }

          v114 = 1;
          v116 = 135;
          v266 = 6;
          v117 = 15;
        }

        else
        {
          if (v105[7])
          {
            v205 = 7;
          }

          else if (v105[8])
          {
            v205 = 8;
          }

          else
          {
            if (!v105[9])
            {
              if (v105[10])
              {
                v206 = 10;
              }

              else if (v105[11])
              {
                v206 = 11;
              }

              else if (v105[12])
              {
                v206 = 12;
              }

              else
              {
                if (v105[13])
                {
                  v206 = 13;
                }

                else if (v233[14])
                {
                  v206 = 14;
                }

                else if (v233[15])
                {
                  v206 = 15;
                }

                else if (v233[16])
                {
                  v206 = 16;
                }

                else if (v233[17])
                {
                  v206 = 17;
                }

                else if (v233[18])
                {
                  v206 = 18;
                }

                else if (v233[19])
                {
                  v206 = 19;
                }

                else if (v233[20])
                {
                  v206 = 20;
                }

                else
                {
                  v206 = 21;
                }

                v92 = v246;
              }

              v114 = 0;
              if (v102 <= 1)
              {
                v115 = 1;
              }

              else
              {
                v115 = v108;
              }

              v266 = v206;
              v116 = c_passRadixes[v206];
              goto LABEL_251;
            }

            v205 = 9;
          }

LABEL_470:
          if (v102 <= 1)
          {
            v115 = 1;
          }

          else
          {
            v115 = v108;
          }

          v266 = v205;
          v116 = c_passRadixes[v205];
          v114 = 1;
          v117 = 8;
        }

        v247 = v117;
        v118 = v258 * v108;
        v119 = v115 * v107;
        v120 = v100 / v116;
        v121 = a9;
        v316 = v121;
        v305 = v120;
        v306 = v258 * v108;
        v307 = v119;
        v122 = v300;
        if (v91)
        {
          if (v91 != 3)
          {
            v282 = v300;
            v123 = [*(a4 + 232) graph];
            v124 = **(v123 + 56);
            if (*(*(v123 + 56) + 8) == v124)
            {
              std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
            }

            v126 = *(*v124 + 8);
            v125 = *v126;
            if (*(v126 + 8) == *v126)
            {
              std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
            }

            DimensionSize = BaseTensor::GetDimensionSize(*v125);
            v305 = DimensionSize;
            v122 = v282;
LABEL_267:
            v253 = v119;
            v130 = 31 - __clz(DimensionSize);
            if (!DimensionSize)
            {
              v130 = 0;
            }

            v131 = !v252 || v102 == v280;
            v302 = v122;
            v132 = 1.0 / v118;
            *&v132 = v132;
            v317 = LODWORD(v132);
            v315 = v130;
            v313 = v120;
            v310 = 0x100000001;
            v311 = v120 * v116;
            v312 = v120;
            v133 = v120 * v118;
            if (!v131)
            {
              v133 = *v240;
            }

            v314 = v133;
            v319 = 1.0;
            if (v114)
            {
              v132 = 2.0 / (v116 * v118);
              *&v132 = v132;
              v134 = 2.0 / v116;
              v319 = *&v132;
              v318 = v134;
              if ((a8 & 1) == 0)
              {
                v319 = -*&v132;
                v318 = -v134;
              }
            }

            v276 = v116;
            v135 = v122.n128_u32[2];
            v136 = v122.n128_u32[3];
            LODWORD(v132) = DimensionSize;
            v137 = vcnt_s8(*&v132);
            v137.i16[0] = vaddlv_u8(v137);
            v138 = v137.i32[0];
            v283.i64[0] = v122.n128_u64[0];
            v139 = (*(*v245 + 32))(v245, 0, v122);
            v140 = v135 + (1 << v139) - 1;
            v251 = 1 << v139;
            v141 = -(1 << v139);
            v142 = 31 - __clz(v140 & v141);
            v143 = v140 & v141;
            if (v143)
            {
              v144 = v142;
            }

            else
            {
              v144 = 0;
            }

            v268 = v136;
            if (v136 >= 9)
            {
              v145 = 0;
            }

            else
            {
              v145 = v136;
            }

            v303 = v143;
            v304 = v144;
            v146 = v272;
            if (v284 == 1)
            {
              v146 = v235 & v272;
            }

            if (v274)
            {
              v147 = 32;
            }

            else
            {
              v147 = 0;
            }

            v272 = v146;
            if (v146)
            {
              v148 = 64;
            }

            else
            {
              v148 = 0;
            }

            v249 = v139;
            v250 = v145;
            v149 = (((v139 & 3) << 14) + (v145 << 10) + (((v143 & (v143 - 1)) == 0) << 16)) | v234 | v147 | v148 | ((v118 == 1) << 9) | ((v120 == 1) << 8) | ((v138 < 2) << 7) | v95;
            if (v114)
            {
              v149 = v234 | v147 | v148 | ((v118 == 1) << 9) | ((v120 == 1) << 8) | ((v138 < 2) << 7) | v95;
            }

            v150 = ((a9 == 1.0) << 20) | ((v301.i32[1] > 1u) << 17) | ((v301.i32[2] > 1u) << 18) | ((v301.i32[3] > 1u) << 19) | v149;
            if (v114)
            {
              if (v266 > 9)
              {
                v151 = 0;
              }

              else
              {
                v151 = dword_239B0618C[v266];
              }

              v150 |= v151;
            }

            v254 = v120;
            v258 = v118;
            v270 = v135;
            if (v284 == 1 && (vmaxvq_u32(vcgtq_s32(a11, v300)) & 0x80000000) != 0)
            {
              v300 = a11;
            }

            v153 = (v283.i8[0] & 0xF) != 0 && v95 != 0 && v283.i32[0] > 0x10u;
            v298 = 0;
            v299 = 0;
            v154 = v153;
            v248 = v114 & v154;
            v294[3] = -1;
            v294[4] = -1;
            v294[5] = v150;
            v295 = 0u;
            v296 = 0u;
            v297 = 0;
            v298 = [*(a4 + 16) count] | ((*(a4 + 112) != 0) << 8) | 0x10000;
            v299 = 0;
            v155 = v241;
            if (((v114 | v236) & 1) == 0)
            {
              if (v276 - 3 > 0xD)
              {
                v155 = 0;
              }

              else
              {
                v155 = dword_239B061B4[v276 - 3];
              }
            }

            if (v244 == 285212704)
            {
              v155 |= 0x10u;
            }

            v156 = (&CommonKernels)[16 * v155];
            v216 = *(v237 + *MEMORY[0x277CD7360]);
            v217 = *(v237 + *MEMORY[0x277CD7368]);
            v215 = *(a4 + 232);
            MPSLibrary::CreateUberShaderKey();
            v157 = MEMORY[0x277CD7370];
            v158 = *(v237 + *MEMORY[0x277CD7370]);
            PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
            if (!PipelineStateForMPSKey)
            {
              result = -1;
              goto LABEL_516;
            }

            v160 = PipelineStateForMPSKey;
            [v255 setComputePipelineState:{PipelineStateForMPSKey, v215, v216, v217, 0, 0}];
            v161 = *(v237 + *v157);
            MPSLibrary::ReleaseMPSKey();
            v162 = [v160 threadExecutionWidth];
            v163 = v162;
            if (v162 <= 1)
            {
              v164 = 1;
            }

            else
            {
              v164 = v162;
            }

            v165 = [v160 maxTotalThreadsPerThreadgroup];
            v166 = *(v237 + *MEMORY[0x277CD7350]);
            v167 = 256;
            if (v165 < 0x100)
            {
              v167 = v165;
            }

            if ((*(v166 + 1477) & 4) != 0)
            {
              v168 = v165;
            }

            else
            {
              v168 = v167;
            }

            if (v114)
            {
              v169 = [*(v166 + 16) maxComputeThreadgroupMemory];
              v170 = 64;
              if (v168 < 0x40)
              {
                v170 = v168;
              }

              if (v169 < 0x7FA6)
              {
                v168 = v170;
              }
            }

            v171 = 2 * v164;
            if (v168 > 2 * v164)
            {
              v172 = v168 / v164;
              v173 = v283.u32[1];
              if ((v114 & 1) == 0)
              {
                goto LABEL_332;
              }

LABEL_339:
              if (v264)
              {
                v91 = v243;
                if (v266 - 2 >= 3)
                {
                  if (v266 >= 8)
                  {
                    v177 = 32;
                  }

                  else
                  {
                    v177 = 16;
                  }

                  if (v177 >= v283.u32[0])
                  {
                    v178 = v283.u32[0];
                  }

                  else
                  {
                    v178 = v177;
                  }

                  v179 = v264;
                  if (v264 != 1)
                  {
                    goto LABEL_358;
                  }
                }

                else
                {
                  v177 = qword_239B061F0[v266 - 2];
                  if (v177 >= v283.u32[0])
                  {
                    v178 = v283.u32[0];
                  }

                  else
                  {
                    v178 = qword_239B061F0[v266 - 2];
                  }

                  v179 = v264;
                  if (v264 == 1)
                  {
                    goto LABEL_363;
                  }

LABEL_358:
                  v179 = 1;
                  if (v177 > v283.u32[0])
                  {
                    if (v177 >= v173)
                    {
                      v181 = v173;
                    }

                    else
                    {
                      v181 = v177;
                    }

                    do
                    {
                      v179 = v181;
                      v182 = v181 * v178;
                      v181 >>= 1;
                    }

                    while (v182 > v177);
                  }
                }

LABEL_363:
                if (v266 == 1)
                {
                  v184 = 256;
                  v183 = v248;
                }

                else
                {
                  v183 = v248;
                  if (v266 == 6)
                  {
                    v184 = 15;
                    do
                    {
LABEL_398:
                      v175 = v178;
                      if (v178 < 2)
                      {
                        break;
                      }

                      v178 >>= 1;
                    }

                    while (v179 * v184 * v175 > v168);
                    do
                    {
                      v180 = v179;
                      if (v179 < 2)
                      {
                        break;
                      }

                      v179 >>= 1;
                    }

                    while (v175 * v184 * v180 > v168);
                    if ((v183 & 1) == 0)
                    {
                        ;
                      }

                      ++v175;
                    }

                    if (v175)
                    {
                      v186 = (v283.u32[0] + v175 - 1) / v175;
                      v191 = v255;
                      if (!v180)
                      {
LABEL_436:
                        v187 = 0;
                        goto LABEL_437;
                      }
                    }

                    else
                    {
                      v186 = 0;
                      v191 = v255;
                      if (!v180)
                      {
                        goto LABEL_436;
                      }
                    }

                    v187 = (v180 + v173 - 1) / v180;
                    goto LABEL_437;
                  }

                  v184 = (v276 + v247 - 1) / v247;
                  if (v266 > 1)
                  {
                    goto LABEL_398;
                  }
                }

                v179 = 1;
                v178 = 1;
                goto LABEL_398;
              }

              v180 = (v276 + v247 - 1) / v247;
              v91 = v243;
              if (v266 <= 2)
              {
                if (v266 == 1)
                {
                  v180 = 256;
                  goto LABEL_416;
                }

                if (v266 != 2)
                {
                  goto LABEL_416;
                }

                v193 = 2;
              }

              else if (v266 == 3)
              {
                v193 = 4;
              }

              else if (v266 == 4)
              {
                v193 = 8;
              }

              else
              {
                if (v266 == 6)
                {
                  v180 = 15;
                }

LABEL_416:
                v193 = 16;
              }

              if (v193 >= v283.u32[0])
              {
                v193 = v283.u32[0];
              }

              if (v266 <= 1)
              {
                v193 = 1;
              }

              do
              {
                v194 = v193;
                if (v193 < 2)
                {
                  break;
                }

                v193 >>= 1;
              }

              while (v194 * v180 > v168);
              v195 = v283.u32[0] + v194;
              v175 = v194 + 1;
              v196 = v180 * (v194 + 1);
              do
              {
                --v175;
                --v195;
                v196 -= v180;
              }

              while (v283.i32[0] % v175);
              if (v196 > 0x1F)
              {
                v184 = 1;
                v191 = v255;
                if (!v175)
                {
                  goto LABEL_435;
                }

LABEL_432:
                v186 = v195 / v175;
                if (!v184)
                {
                  goto LABEL_436;
                }
              }

              else
              {
                if (v173 >= 0x20)
                {
                  v197 = 32;
                }

                else
                {
                  v197 = v173;
                }

                v191 = v255;
                do
                {
                  v184 = v197;
                  v198 = v197 * v196;
                  v197 >>= 1;
                }

                while (v198 > 0x20);
                if (v175)
                {
                  goto LABEL_432;
                }

LABEL_435:
                v186 = 0;
                if (!v184)
                {
                  goto LABEL_436;
                }
              }

              v187 = (v184 + v173 - 1) / v184;
              goto LABEL_437;
            }

            v172 = 1;
            v173 = v283.u32[1];
            if (v114)
            {
              goto LABEL_339;
            }

LABEL_332:
            v174 = v172;
            if (v163 < 2)
            {
              v175 = v164;
            }

            else
            {
              v175 = v164;
              if (v283.i32[0] < v164)
              {
                do
                {
                  v176 = v175;
                  v175 >>= 1;
                  v174 <<= v175 * v174 < v164;
                }

                while (v176 >= 4 && v283.i32[0] < v175);
                v171 = v176 & 0xFFFFFFFFFFFFFFFELL;
                if (v173 >= v174)
                {
                  goto LABEL_370;
                }

                do
                {
LABEL_368:
                  if (v174 * v171 < v164)
                  {
                    break;
                  }

                  v174 >>= 1;
                }

                while (v173 < v174);
LABEL_370:
                if (v283.i32[0] == 1 && v173 >= 2)
                {
                  v185 = v172 * v164;
                  if (v185 >= v173)
                  {
                    v185 = v173;
                  }

                  if (v185 <= 1)
                  {
                    v180 = 1;
                  }

                  else
                  {
                    v180 = v185;
                  }

                  v175 = 1;
                  v186 = 1;
                  v187 = (v173 + v180 - 1) / v180;
                }

                else
                {
                  if (v175 >= v164 && v174 > v173)
                  {
                    v180 = 1;
                  }

                  else
                  {
                    v180 = v174;
                  }

                  v187 = (v173 + v180 - 1) / v180;
                  v186 = (v175 + v283.u32[0] - 1) / v175;
                  if (v283.i32[0] >= 2u && v173 == 1)
                  {
                    v189 = v172 * v164;
                    if (v172 * v164 >= v283.u32[0])
                    {
                      v189 = v283.u32[0];
                    }

                    if (v189 <= 1)
                    {
                      v175 = 1;
                    }

                    else
                    {
                      v175 = v189;
                    }

                    v180 = 1;
                    v187 = 1;
                    v186 = (v175 + v283.u32[0] - 1) / v175;
                  }
                }

                v270 = (v135 + v251 - 1) >> v249;
                v190 = v268;
                if (v250 - 5 >= 0xFFFFFFFC)
                {
                  v190 = 1;
                }

                v268 = v190;
                v184 = 1;
                v191 = v255;
                v91 = v243;
LABEL_437:
                MPSSetNDArraysOnComputeEncoder(v191, a4, 4, 0, 0);
                [v191 setBytes:&v300 length:144 atIndex:29];
                if (v274)
                {
                  if (v239)
                  {
                    v199 = v239;
                  }

                  else
                  {
                    v199 = v260;
                  }

                  [v191 setBuffer:v199 offset:0 atIndex:28];
                  v239 = 0;
                  if ((v272 & 1) == 0)
                  {
LABEL_442:
                    if (v91 == 2)
                    {
                      goto LABEL_443;
                    }

LABEL_453:
                    if (v114)
                    {
                      goto LABEL_454;
                    }

LABEL_444:
                    if (v91)
                    {
                      goto LABEL_445;
                    }

                    goto LABEL_467;
                  }
                }

                else if ((v272 & 1) == 0)
                {
                  goto LABEL_442;
                }

                if (v284 == 1)
                {
                  v200 = a16;
                }

                else
                {
                  v200 = v262;
                }

                [v191 setBuffer:v200 offset:0 atIndex:27];
                if (v91 != 2)
                {
                  goto LABEL_453;
                }

LABEL_443:
                [v191 setBuffer:a17 offset:0 atIndex:26];
                if (!v114)
                {
                  goto LABEL_444;
                }

LABEL_454:
                v201 = v276;
                if (v266 == 1)
                {
                  v201 = 4096;
                }

                if (v264)
                {
                  v202 = v180;
                }

                else
                {
                  v202 = v184;
                }

                v203 = v252 && v266 == 1;
                v204 = v202 * v201 * v175;
                if (v203)
                {
                  v204 = (9 * v204) >> 4;
                }

                if (v204 >= 0x1000)
                {
                  LODWORD(v204) = 4096;
                }

                [v191 setThreadgroupMemoryLength:(8 * v204 + 15) & 0x1FFF0 atIndex:0];
                if (v91)
                {
LABEL_445:
                  v294[0] = v186;
                  v294[1] = v187;
                  v294[2] = v270 * v268;
                  v293[0] = v175;
                  v293[1] = v180;
                  v293[2] = v184;
                  [v191 dispatchThreadgroups:v294 threadsPerThreadgroup:v293];
                  MPSLibrary::ReleaseComputeState();
                  result = v262;
                  v105 = v233;
                  if (!v91)
                  {
                    v320 = v322;
                    v321 = v323;
                    if (v102 == v280)
                    {
                      v301 = v300;
                    }
                  }

                  ++v102;
                  v95 = v264;
                  v99 = *(v329 + v264);
                  a9 = 1.0;
                  v274 = 1;
                  v86 = v260;
                  v92 = v246;
                  v49 = v284 - 1;
                  v107 = v253;
                  v100 = v254;
                  v106 = v276;
                  if (v102 >= v99)
                  {
                    v252 = 0;
                    v86 = v260;
                    v98 = v219;
                    goto LABEL_205;
                  }

                  continue;
                }

LABEL_467:
                --v330[21 * v264 + v266];
                goto LABEL_445;
              }
            }

            if (v173 < v172)
            {
              goto LABEL_368;
            }

            goto LABEL_370;
          }
        }

        else
        {
          v128 = v95 != v92 || v102 == 0;
          v129 = !v252;
          if (v128)
          {
            v129 = 1;
          }

          if (v129)
          {
            v285 = v300;
            *v223 = v120 * v118;
            v122 = v285;
          }

          else
          {
            v286 = v300;
            *(&v286 & 0xFFFFFFFFFFFFFFF3 | (4 * (v246 & 3))) = v119 * v225 * v120;
            v122 = v286;
          }
        }

        break;
      }

      DimensionSize = v120;
      goto LABEL_267;
    }

LABEL_205:
    if (++v95 != 4)
    {
      continue;
    }

    break;
  }

  if (v86)
  {
    v208 = result;
    MPSAutoCache::ReleaseTempResource();
    result = v208;
  }

  if (result)
  {
    MPSAutoCache::ReleaseTempResource();
LABEL_523:
    result = 0;
  }

LABEL_516:
  v207 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t MPSNDArrayFFTFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
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

void std::__shared_ptr_pointer<MPSKernelDAG *,std::shared_ptr<MPSKernelDAG>::__shared_ptr_default_delete<MPSKernelDAG,MPSKernelDAG>,std::allocator<MPSKernelDAG>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE7C8C0);
}

uint64_t std::__shared_ptr_pointer<MPSKernelDAG *,std::shared_ptr<MPSKernelDAG>::__shared_ptr_default_delete<MPSKernelDAG,MPSKernelDAG>,std::allocator<MPSKernelDAG>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t mpsMatrixFromNDArray(MPSNDArray *a1, uint64_t a2)
{
  makeStrideBytes();
  v4 = *(&a1->super.isa + *MEMORY[0x277CD73D8]);
  v27[6] = v34;
  v27[7] = v35;
  v27[4] = v32;
  v27[5] = v33;
  v27[2] = v30;
  v27[3] = v31;
  v27[0] = v28;
  v27[1] = v29;
  v5 = v4 & 0xF;
  v6 = *(v27 + v5);
  v26[6] = v34;
  v26[7] = v35;
  v26[4] = v32;
  v26[5] = v33;
  v26[2] = v30;
  v26[3] = v31;
  v26[0] = v28;
  v26[1] = v29;
  v7 = BYTE1(v4) & 0xF;
  v8 = *(v26 + v7);
  v25[6] = v34;
  v25[7] = v35;
  v25[4] = v32;
  v25[5] = v33;
  v25[2] = v30;
  v25[3] = v31;
  v25[0] = v28;
  v25[1] = v29;
  v9 = BYTE2(v4) & 0xF;
  v10 = *(v25 + v9);
  v11 = (a1 + *MEMORY[0x277CD7418]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  v23 = v11[2];
  v24 = v14;
  v22[0] = v12;
  v22[1] = v13;
  v15 = *(v22 + v5);
  v21[2] = v23;
  v21[3] = v14;
  v21[0] = v12;
  v21[1] = v13;
  v16 = *(v21 + v7);
  v20[2] = v23;
  v20[3] = v14;
  v20[0] = v12;
  v20[1] = v13;
  v17 = a2 + v8 * v16 + v6 * v15 + v10 * *(v20 + v9);
  v18 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:*(&a1->super.isa + *MEMORY[0x277CD7410] + 4) columns:*(&a1->super.isa + *MEMORY[0x277CD7410]) matrices:1 rowBytes:*(&a1->super.isa + *MEMORY[0x277CD7400]) matrixBytes:*(&a1->super.isa + *MEMORY[0x277CD7400]) * *(&a1->super.isa + *MEMORY[0x277CD73D0] + 4) dataType:{*(&a1->super.isa + *MEMORY[0x277CD73C8]), v12, v13, v23, v14, v12, v13, v23, v14, v12, v13, v23, v14, v28, v29, v30, v31, v32, v33, v34, v35, v28, v29, v30, v31, v32, v33, v34, v35}];
  return [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:-[MPSNDArray buffer](a1 offset:"buffer") descriptor:{v17, v18}];
}

uint64_t EncodeSolverLU(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = *(a1 + 144);
  v5 = [*(a4 + 16) objectAtIndexedSubscript:0];
  v6 = [*(a4 + 16) objectAtIndexedSubscript:1];
  v7 = [*(a4 + 16) objectAtIndexedSubscript:2];
  v8 = *(a4 + 208);
  v9 = *(*(a4 + 8) + 64);
  makeStrideBytes();
  v10 = *&v5[*MEMORY[0x277CD73D8]];
  v136[7] = v144;
  v136[6] = v143;
  v136[5] = v142;
  v136[4] = v141;
  v136[3] = v140;
  v136[2] = v139;
  v136[1] = v138;
  v136[0] = v137;
  v11 = v10 & 0xF;
  v12 = *(v136 + v11);
  v135[7] = v144;
  v135[6] = v143;
  v135[5] = v142;
  v135[4] = v141;
  v135[3] = v140;
  v135[2] = v139;
  v135[1] = v138;
  v135[0] = v137;
  v13 = BYTE1(v10) & 0xF;
  v14 = *(v135 + v13);
  v134[7] = v144;
  v134[6] = v143;
  v134[5] = v142;
  v134[4] = v141;
  v134[3] = v140;
  v134[2] = v139;
  v134[1] = v138;
  v134[0] = v137;
  v15 = BYTE2(v10) & 0xF;
  v16 = *(v134 + v15);
  v17 = &v5[*MEMORY[0x277CD7418]];
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = *(v17 + 2);
  v133 = *(v17 + 3);
  v132[2] = v20;
  v132[1] = v19;
  v132[0] = v18;
  v21 = *(v132 + v11);
  v131[3] = v133;
  v131[2] = v20;
  v131[1] = v19;
  v131[0] = v18;
  v22 = *(v131 + v13);
  v130[3] = v133;
  v130[2] = v20;
  v130[1] = v19;
  v130[0] = v18;
  v23 = v9 + v14 * v22 + v12 * v21 + v16 * *(v130 + v15);
  v24 = MEMORY[0x277CD7410];
  v25 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:*&v5[*MEMORY[0x277CD7410] + 4] columns:*&v5[*MEMORY[0x277CD7410]] matrices:1 rowBytes:*&v5[*MEMORY[0x277CD7400]] matrixBytes:*&v5[*MEMORY[0x277CD7400]] * *&v5[*MEMORY[0x277CD73D0] + 4] dataType:*&v5[*MEMORY[0x277CD73C8]]];
  v104 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v5 offset:"buffer") descriptor:{v23, v25}];
  v26 = *(*(a4 + 8) + 144);
  makeStrideBytes();
  v27 = MEMORY[0x277CD73D8];
  v28 = *&v6[*MEMORY[0x277CD73D8]];
  v129[7] = v144;
  v129[6] = v143;
  v129[5] = v142;
  v129[4] = v141;
  v129[3] = v140;
  v129[2] = v139;
  v129[1] = v138;
  v129[0] = v137;
  v29 = v28 & 0xF;
  v30 = *(v129 + v29);
  v128[7] = v144;
  v128[6] = v143;
  v128[5] = v142;
  v128[4] = v141;
  v128[3] = v140;
  v128[2] = v139;
  v128[1] = v138;
  v128[0] = v137;
  v31 = BYTE1(v28) & 0xF;
  v32 = *(v128 + v31);
  v127[7] = v144;
  v127[6] = v143;
  v127[5] = v142;
  v127[4] = v141;
  v127[3] = v140;
  v127[2] = v139;
  v127[1] = v138;
  v127[0] = v137;
  v33 = BYTE2(v28) & 0xF;
  v34 = *(v127 + v33);
  v35 = &v6[*MEMORY[0x277CD7418]];
  v36 = *v35;
  v37 = *(v35 + 1);
  v38 = *(v35 + 2);
  v126 = *(v35 + 3);
  v125[2] = v38;
  v125[1] = v37;
  v125[0] = v36;
  v39 = *(v125 + v29);
  v124[3] = v126;
  v124[2] = v38;
  v124[1] = v37;
  v124[0] = v36;
  v40 = *(v124 + v31);
  v123[3] = v126;
  v123[2] = v38;
  v123[1] = v37;
  v123[0] = v36;
  v41 = v26 + v32 * v40 + v30 * v39 + v34 * *(v123 + v33);
  v42 = &v6[*v24];
  v43 = MEMORY[0x277CD7400];
  v44 = MEMORY[0x277CD73D0];
  v45 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v42[1] columns:*v42 matrices:1 rowBytes:*&v6[*MEMORY[0x277CD7400]] matrixBytes:*&v6[*MEMORY[0x277CD7400]] * *&v6[*MEMORY[0x277CD73D0] + 4] dataType:*&v6[*MEMORY[0x277CD73C8]]];
  v103 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v6 offset:"buffer") descriptor:{v41, v45}];
  v46 = *(*(a4 + 8) + 224);
  makeStrideBytes();
  v47 = *&v7[*v27];
  v122[7] = v144;
  v122[6] = v143;
  v122[5] = v142;
  v122[4] = v141;
  v122[3] = v140;
  v122[2] = v139;
  v122[1] = v138;
  v122[0] = v137;
  v48 = v47 & 0xF;
  v49 = *(v122 + v48);
  v121[7] = v144;
  v121[6] = v143;
  v121[5] = v142;
  v121[4] = v141;
  v121[3] = v140;
  v121[2] = v139;
  v121[1] = v138;
  v121[0] = v137;
  v50 = BYTE1(v47) & 0xF;
  v51 = *(v121 + v50);
  v120[7] = v144;
  v120[6] = v143;
  v120[4] = v141;
  v120[5] = v142;
  v120[2] = v139;
  v120[3] = v140;
  v120[0] = v137;
  v120[1] = v138;
  v52 = BYTE2(v47) & 0xF;
  v53 = *(v120 + v52);
  v54 = MEMORY[0x277CD7418];
  v55 = &v7[*MEMORY[0x277CD7418]];
  v56 = *v55;
  v57 = *(v55 + 1);
  v58 = *(v55 + 3);
  v118 = *(v55 + 2);
  v119 = v58;
  v117[0] = v56;
  v117[1] = v57;
  v59 = *(v117 + v48);
  v116[2] = v118;
  v116[3] = v58;
  v116[0] = v56;
  v116[1] = v57;
  v60 = *(v116 + v50);
  v115[2] = v118;
  v115[3] = v58;
  v115[0] = v56;
  v115[1] = v57;
  v61 = v46 + v51 * v60 + v49 * v59 + v53 * *(v115 + v52);
  v62 = MEMORY[0x277CD7410];
  v63 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:*&v7[*MEMORY[0x277CD7410] + 4] columns:*&v7[*MEMORY[0x277CD7410]] matrices:1 rowBytes:*&v7[*v43] matrixBytes:*&v7[*v43] * *&v7[*v44 + 4] dataType:*&v7[*MEMORY[0x277CD73C8]]];
  v102 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v7 offset:"buffer") descriptor:{v61, v63}];
  v64 = *(a4 + 192);
  makeStrideBytes();
  v65 = MEMORY[0x277CD73D8];
  v66 = *&v8[*MEMORY[0x277CD73D8]];
  v114[6] = v143;
  v114[7] = v144;
  v114[4] = v141;
  v114[5] = v142;
  v114[2] = v139;
  v114[3] = v140;
  v114[0] = v137;
  v114[1] = v138;
  v67 = v66 & 0xF;
  v68 = *(v114 + v67);
  v113[6] = v143;
  v113[7] = v144;
  v113[4] = v141;
  v113[5] = v142;
  v113[2] = v139;
  v113[3] = v140;
  v113[0] = v137;
  v113[1] = v138;
  v69 = BYTE1(v66) & 0xF;
  v70 = *(v113 + v69);
  v112[6] = v143;
  v112[7] = v144;
  v112[4] = v141;
  v112[5] = v142;
  v112[2] = v139;
  v112[3] = v140;
  v112[0] = v137;
  v112[1] = v138;
  v71 = BYTE2(v66) & 0xF;
  v72 = *(v112 + v71);
  v73 = &v8[*v54];
  v74 = *v73;
  v75 = *(v73 + 1);
  v76 = *(v73 + 3);
  v110 = *(v73 + 2);
  v111 = v76;
  v109[0] = v74;
  v109[1] = v75;
  v77 = *(v109 + v67);
  v108[2] = v110;
  v108[3] = v76;
  v108[0] = v74;
  v108[1] = v75;
  v78 = *(v108 + v69);
  v107[2] = v110;
  v107[3] = v76;
  v107[0] = v74;
  v107[1] = v75;
  v79 = v64 + v70 * v78 + v68 * v77 + v72 * *(v107 + v71);
  v80 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:*&v8[*v62 + 4] columns:*&v8[*v62] matrices:1 rowBytes:*&v8[*MEMORY[0x277CD7400]] matrixBytes:*&v8[*MEMORY[0x277CD7400]] * *&v8[*v44 + 4] dataType:*&v8[*MEMORY[0x277CD73C8]]];
  v81 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:objc_msgSend(v8 offset:"buffer") descriptor:{v79, v80}];
  v82 = &v8[*v62];
  v83 = *v82;
  v84 = *(v82 + 1);
  v85 = *(v82 + 2);
  v86 = *(v82 + 3);
  v87 = *v65;
  v88 = v81;
  v89 = *&v8[v87];
  v105[2] = v85;
  v105[3] = v86;
  v105[0] = v83;
  v105[1] = v84;
  v90 = *(v105 + (BYTE1(v89) & 0xF));
  v106[2] = v85;
  v106[3] = v86;
  v106[0] = v83;
  v106[1] = v84;
  v91 = *(v106 + (v89 & 0xF));
  v92 = [v100 trsmL];
  v93 = [v100 trsmU];
  [v100 setOrder:v90];
  [v100 setNumberOfRightHandSides:v91];
  MEMORY[0x23EE7C450](&v137);
  [v92 setOrder:v90];
  [v92 setNumberOfRightHandSides:v91];
  v94 = [v92 workspace];
  v95 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v91 + v90 columns:objc_msgSend(v94 rowBytes:"columns") dataType:{objc_msgSend(v94, "rowBytes"), 268435488}];
  [v92 setWorkspace:{objc_msgSend(objc_alloc(MEMORY[0x277CD7250]), "initWithBuffer:descriptor:", MPSAutoCache::GetTempBuffer(&v137, objc_msgSend(v95, "rowBytes") * objc_msgSend(v95, "rows"), 0), v95)}];

  [v93 setOrder:v90];
  [v93 setNumberOfRightHandSides:v91];
  v96 = [v93 workspace];
  v97 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v91 + v90 columns:objc_msgSend(v96 rowBytes:"columns") dataType:{objc_msgSend(v96, "rowBytes"), 268435488}];
  [v93 setWorkspace:{objc_msgSend(objc_alloc(MEMORY[0x277CD7250]), "initWithBuffer:descriptor:", MPSAutoCache::GetTempBuffer(&v137, objc_msgSend(v97, "rowBytes") * objc_msgSend(v97, "rows"), 0), v97)}];

  [v100 encodeToCommandEncoder:a2 commandBuffer:a3 sourceMatrix:v104 rightHandSideMatrix:v102 pivotIndices:v103 solutionMatrix:v88];
  MPSAutoCache::~MPSAutoCache(&v137);
  return 0;
}

uint64_t EncodeNMS(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v82[3] = *MEMORY[0x277D85DE8];
  v61 = *(a1 + *MEMORY[0x277CD7370]);
  v8 = *(a1 + 144);
  v9 = *(a1 + 148);
  v10 = *(a1 + 152);
  v53 = *(a1 + 168);
  v11 = *(a1 + 176);
  v55 = v11;
  v57 = *(a1 + 160);
  v51 = *(a1 + 184);
  v12 = [*(a4 + 232) inputTensorAtIndex:0];
  v13 = [*(v4 + 232) inputTensorAtIndex:1];
  [*(v4 + 232) outputTensorAtIndex:0];
  v14 = [*(v4 + 16) objectAtIndexedSubscript:0];
  v15 = [*(v4 + 16) objectAtIndexedSubscript:1];
  v16 = *(v4 + 208);
  LODWORD(v4) = BaseTensor::GetDimensionSize(v13);
  DimensionSize = BaseTensor::GetDimensionSize(v12);
  v18 = BaseTensor::GetDimensionSize(v12);
  v19 = DimensionSize + 31;
  v73[0] = v8;
  v73[1] = v9;
  v73[2] = v4;
  v73[3] = DimensionSize;
  if (v10 == -1)
  {
    v20 = DimensionSize;
  }

  else
  {
    v20 = v10;
  }

  v73[4] = v18;
  v73[5] = v20;
  v59 = v16;
  v60 = v19 >> 5;
  v74 = *&v16[*MEMORY[0x277CD7400]] >> 2;
  v75 = v19 & 0xFFFFFFE0;
  v76 = v19 >> 5;
  v82[0] = 1;
  v82[1] = DimensionSize;
  v54 = DimensionSize;
  v62 = v18;
  v82[2] = v18;
  v21 = [MEMORY[0x277CD7268] descriptorWithDataType:268435488 dimensionCount:3 dimensionSizes:v82];
  [v21 setPreferPackedRows:1];
  v22 = [MEMORY[0x277CD7268] descriptorWithDataType:536870944 dimensionCount:3 dimensionSizes:v82];
  [v22 setPreferPackedRows:1];
  v23 = [v14 descriptor];
  v24 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v21];
  [v24 setReadCount:{objc_msgSend(v24, "readCount") + 1}];
  v25 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v22];
  [v25 setReadCount:{objc_msgSend(v25, "readCount") + 1}];
  v26 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v22];
  v27 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v23];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*(v15 + *MEMORY[0x277CD7498]);
  }

  v81 = v15;
  [v53 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", &v81, 1), v24}];
  v80 = v15;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  v29 = v57;
  v58 = v26;
  [v29 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:v28 destinationArray:v26];
  v79 = v24;
  [v55 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", &v79, 1), v25}];
  v78[0] = v14;
  v78[1] = v25;
  v56 = v25;
  [v51 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] destinationArray:{"arrayWithObjects:count:", v78, 2), v27}];
  v77[0] = v60;
  v77[1] = v54;
  v77[2] = v62;
  v30 = [MEMORY[0x277CD7268] descriptorWithDataType:32 dimensionCount:3 dimensionSizes:v77];
  [v30 setPreferPackedRows:1];
  v31 = v27;
  v32 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v30];
  *&v33 = -1;
  *(&v33 + 1) = -1;
  v71 = v33;
  v72 = v33;
  v70 = v33;
  v34 = *(a1 + *MEMORY[0x277CD7360]);
  v68 = v33;
  v69 = v33;
  v47 = v34;
  v49 = *(a1 + *MEMORY[0x277CD7368]);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
  v36 = [PipelineStateForMPSKey threadExecutionWidth];
  if (v36 <= 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = v36;
  }

  [a2 setComputePipelineState:PipelineStateForMPSKey];
  [a2 setBytes:v73 length:40 atIndex:29];
  [a2 setBuffer:objc_msgSend(v31 offset:"buffer") atIndex:{0, 28}];
  v52 = v32;
  [a2 setBuffer:objc_msgSend(v32 offset:"buffer") atIndex:{0, 27}];
  v65 = v60;
  v66 = v54;
  v67 = v62;
  v63 = v37;
  v64 = vdupq_n_s64(1uLL);
  [a2 dispatchThreadgroups:&v65 threadsPerThreadgroup:&v63];
  MPSLibrary::ReleaseComputeState();
  [v31 readCount];
  if ([v31 readCount] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v31 setReadCount:0];
  *&v38 = -1;
  *(&v38 + 1) = -1;
  v71 = v38;
  v72 = v38;
  v69 = v38;
  v70 = v38;
  v68 = v38;
  v48 = *(a1 + *MEMORY[0x277CD7360]);
  v50 = *(a1 + *MEMORY[0x277CD7368]);
  v39 = 1;
  MPSLibrary::CreateUberShaderKey();
  v40 = MPSLibrary::GetPipelineStateForMPSKey();
  MPSLibrary::ReleaseMPSKey();
  v41 = [v40 threadExecutionWidth];
  if (v41 <= 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = v41;
  }

  do
  {
    v43 = v39;
    v44 = v42;
    if (v42 < 2)
    {
      break;
    }

    v42 >>= 1;
    v39 *= 2;
  }

  while (v44 >> 1 >= v76);
  [a2 setComputePipelineState:v40];
  MPSLibrary::ReleaseComputeState();
  [a2 setThreadgroupMemoryLength:(v43 * (4 * v60 + 4) + 12) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
  [a2 setBytes:v73 length:40 atIndex:29];
  [a2 setBuffer:objc_msgSend(v24 offset:"buffer") atIndex:{0, 28}];
  [a2 setBuffer:objc_msgSend(v52 offset:"buffer") atIndex:{0, 27}];
  [a2 setBuffer:objc_msgSend(v56 offset:"buffer") atIndex:{0, 26}];
  [a2 setBuffer:objc_msgSend(v58 offset:"buffer") atIndex:{0, 25}];
  [a2 setBuffer:objc_msgSend(v59 offset:"buffer") atIndex:{0, 24}];
  v65 = 1;
  v66 = (v62 + v43 - 1) / v43;
  v67 = 1;
  v63 = v44;
  v64.i64[0] = v43;
  v64.i64[1] = 1;
  [a2 dispatchThreadgroups:&v65 threadsPerThreadgroup:&v63];
  [v24 readCount];
  if ([v24 readCount] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v24 setReadCount:0];
  [v56 readCount];
  if ([v56 readCount] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v56 setReadCount:0];
  [v58 readCount];
  if ([v58 readCount] != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [v58 setReadCount:0];
  v45 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t EncodeDWConv(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 144) == 1)
  {

    return EncodeDWConvGradientBackPropImpl(a1, a2, a3, a4, 0, 1u);
  }

  v281 = *(a1 + *MEMORY[0x277CD7370]);
  v7 = *(a1 + *MEMORY[0x277CD7350]);
  v8 = *(a1 + 192);
  v293 = *(a1 + 200);
  v9 = *(a1 + 208);
  v10 = *(a1 + 176);
  v273 = *(a1 + 168);
  v11 = *(a1 + 184);
  v286 = *(a1 + 216);
  v287 = *(a1 + 148);
  v289 = *(a1 + 232);
  if (*(a1 + 160) >= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = *(a1 + 160);
  }

  v297 = v12;
  v279 = *(a1 + 160);
  v13 = [*(a4 + 232) graph];
  v14 = **(v13 + 56);
  if (*(*(v13 + 56) + 8) == v14)
  {
    goto LABEL_558;
  }

  v16 = *(*v14 + 8);
  v15 = *v16;
  if (*(v16 + 8) - *v16 <= 8uLL)
  {
    goto LABEL_557;
  }

  v285 = v15[1];
  v278 = *v15;
  v17 = *(*v15 + 2);
  v283 = *(v278 + 2);
  v18 = [*(a4 + 232) graph];
  v19 = **(v18 + 56);
  if (*(*(v18 + 56) + 8) == v19)
  {
LABEL_558:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *(*v19 + 24);
  v20 = *v21;
  if (*(v21 + 8) == *v21)
  {
    goto LABEL_557;
  }

  v295 = *v20;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (v279 >= 4 && MTLReportFailureTypeEnabled())
    {
      v235 = a1;
      v237 = v279;
      MTLReportFailure();
    }

    BaseTensor::GetDimensionSize(v295);
    BaseTensor::GetDimensionSize(v285);
    DimensionSize = BaseTensor::GetDimensionSize(v295);
    if (DimensionSize != BaseTensor::GetDimensionSize(v285) && MTLReportFailureTypeEnabled())
    {
      v237 = BaseTensor::GetDimensionSize(v278);
      v239 = BaseTensor::GetDimensionSize(v295);
      v235 = a1;
      MTLReportFailure();
    }
  }

  v271 = v10;
  v272 = v11;
  v292 = v9;
  v284 = v7;
  v300 = v8;
  v282 = a2;
  v23 = 0;
  if ([*(a4 + 16) count])
  {
    v24 = 0;
    v25 = 5;
    do
    {
      v27 = [objc_msgSend(*(a4 + 16) objectAtIndexedSubscript:{v24), "dataType"}];
      if (v27 > 285212703)
      {
        if (v27 <= 536870915)
        {
          if (v27 > 301989895)
          {
            if (v27 == 301989896)
            {
              v26 = 16;
            }

            else
            {
              if (v27 != 335544328)
              {
                goto LABEL_61;
              }

              v26 = 17;
            }
          }

          else if (v27 == 285212704)
          {
            v26 = 13;
          }

          else
          {
            if (v27 != 285212736)
            {
              goto LABEL_61;
            }

            v26 = 14;
          }
        }

        else if (v27 <= 536870927)
        {
          if (v27 == 536870916)
          {
            v26 = 0;
          }

          else
          {
            if (v27 != 536870920)
            {
LABEL_61:
              v26 = 18;
              goto LABEL_18;
            }

            v26 = 1;
          }
        }

        else
        {
          switch(v27)
          {
            case 536870928:
              v26 = 2;
              break;
            case 536870944:
              v26 = 3;
              break;
            case 536870976:
              v26 = 4;
              break;
            default:
              goto LABEL_61;
          }
        }
      }

      else if (v27 <= 31)
      {
        if (v27 > 7)
        {
          if (v27 == 8)
          {
            v26 = 6;
          }

          else
          {
            if (v27 != 16)
            {
              goto LABEL_61;
            }

            v26 = 7;
          }
        }

        else if (v27 == -1879048176)
        {
          v26 = 12;
        }

        else
        {
          if (v27 != 4)
          {
            goto LABEL_61;
          }

          v26 = 5;
        }
      }

      else if (v27 <= 268435463)
      {
        if (v27 == 32)
        {
          v26 = 8;
        }

        else
        {
          if (v27 != 64)
          {
            goto LABEL_61;
          }

          v26 = 9;
        }
      }

      else
      {
        switch(v27)
        {
          case 268435464:
            v26 = 15;
            break;
          case 268435472:
            v26 = 10;
            break;
          case 268435488:
            v26 = 11;
            break;
          default:
            goto LABEL_61;
        }
      }

LABEL_18:
      ++v24;
      v23 |= (v26 << v25);
      v25 += 5;
    }

    while (v24 < [*(a4 + 16) count]);
  }

  v28 = *(v295 + 2);
  if (v28 > 285212703)
  {
    if (v28 <= 536870915)
    {
      if (v28 > 301989895)
      {
        if (v28 == 301989896)
        {
          v29 = 16;
          goto LABEL_106;
        }

        if (v28 == 335544328)
        {
          v29 = 17;
          goto LABEL_106;
        }
      }

      else
      {
        if (v28 == 285212704)
        {
          v29 = 13;
          goto LABEL_106;
        }

        if (v28 == 285212736)
        {
          v29 = 14;
          goto LABEL_106;
        }
      }
    }

    else if (v28 <= 536870927)
    {
      if (v28 == 536870916)
      {
        v29 = 0;
        goto LABEL_106;
      }

      if (v28 == 536870920)
      {
        v29 = 1;
        goto LABEL_106;
      }
    }

    else
    {
      switch(v28)
      {
        case 536870928:
          v29 = 2;
          goto LABEL_106;
        case 536870944:
          v29 = 3;
          goto LABEL_106;
        case 536870976:
          v29 = 4;
          goto LABEL_106;
      }
    }
  }

  else if (v28 <= 31)
  {
    if (v28 > 7)
    {
      if (v28 == 8)
      {
        v29 = 6;
        goto LABEL_106;
      }

      if (v28 == 16)
      {
        v29 = 7;
        goto LABEL_106;
      }
    }

    else
    {
      if (v28 == -1879048176)
      {
        v29 = 12;
        goto LABEL_106;
      }

      if (v28 == 4)
      {
        v29 = 5;
        goto LABEL_106;
      }
    }
  }

  else if (v28 <= 268435463)
  {
    if (v28 == 32)
    {
      v29 = 8;
      goto LABEL_106;
    }

    if (v28 == 64)
    {
      v29 = 9;
      goto LABEL_106;
    }
  }

  else
  {
    switch(v28)
    {
      case 268435464:
        v29 = 15;
        goto LABEL_106;
      case 268435472:
        v29 = 10;
        goto LABEL_106;
      case 268435488:
        v29 = 11;
        goto LABEL_106;
    }
  }

  v29 = 18;
LABEL_106:
  *&v30 = -1;
  *(&v30 + 1) = -1;
  v320 = v30;
  v321 = v30;
  v317 = -1;
  v319 = v30;
  v316 = v30;
  v318 = v29 | v23;
  *&v321 = [*(a4 + 16) count] | 0x10000;
  v288 = BaseTensor::GetDimensionSize(v285);
  v275 = BaseTensor::GetDimensionSize(v285);
  v31 = BaseTensor::GetDimensionSize(v285);
  v294 = BaseTensor::GetDimensionSize(v295);
  v291 = BaseTensor::GetDimensionSize(v295);
  v32 = BaseTensor::GetDimensionSize(v295);
  v33 = BaseTensor::GetDimensionSize(v295);
  v277 = BaseTensor::GetDimensionSize(v278);
  v34 = BaseTensor::GetDimensionSize(v278);
  v270 = BaseTensor::GetDimensionSize(v278);
  v35 = BaseTensor::GetDimensionSize(v278);
  v299 = v33;
  v36 = v33 / v35;
  v302 = v33 / v35 < 2;
  v303 = v32;
  v38 = v32 == 1 && v31 == 1;
  v39 = [*(a4 + 232) graph];
  v40 = **(v39 + 56);
  if (*(*(v39 + 56) + 8) == v40)
  {
    goto LABEL_558;
  }

  v269 = v35;
  v42 = *(*v40 + 8);
  v41 = *v42;
  v43 = v283;
  if (*(v42 + 8) == *v42)
  {
LABEL_557:
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v266 = v34;
  v44 = v275;
  v45 = *v41;
  v46 = *(a4 + 16);
  v47 = v31;
  BaseTensor::GetAccessPattern();
  if (v49)
  {
    v50 = 0;
  }

  else
  {
    v50 = v279 > 2;
  }

  v51 = v291;
  if (v50)
  {
    v52 = v300;
    v53 = v292;
    v54 = v293;
    v55 = v294;
    v56 = v288;
    v57 = v277;
    v58 = v7;
    if (v299 >= 4)
    {
      goto LABEL_127;
    }

    goto LABEL_126;
  }

  v52 = v300;
  v53 = v292;
  v54 = v293;
  v55 = v294;
  v56 = v288;
  v57 = v277;
  v58 = v7;
  if (v279 || (!v48 ? (v59 = v299 > 3) : (v59 = 0), !v59))
  {
LABEL_126:
    v302 = 0;
  }

LABEL_127:
  v60 = 0;
  v61 = *(v58 + 1476);
  HIDWORD(v62) = v286.i32[3];
  v268 = v36;
  if (v55 >= 3 && v56 == 3 && v275 == 3 && v47 == 1 && v286.i64[0] == 1 && v286.i64[1] && v291 >= 3 && (v302 & 1) == 0)
  {
    if (v52 == 2 && v54 == 2 || (v60 = 0, v52 == 1) && v54 == 1)
    {
      v60 = 1;
    }
  }

  LODWORD(v63) = v55;
  LODWORD(v64) = v57;
  if (v287)
  {
    v65 = 0;
  }

  else
  {
    v65 = v60;
  }

  v68 = v286.i64[0] == 1 && v286.i64[1] == 1 && v289 == 1;
  if (v52 >= 2 && v56 <= 4 && (v283 != 268435472 || v55 < 0x10 || (v61 & 0x400) == 0) || v54 >= 2 && v275 <= 4 && (v283 != 268435472 || v291 < 0x10 || (v61 & 0x400) == 0) || (v69 = v68 & ((v302 | v65) ^ 1), v53 >= 2) && v47 <= 4 && (v283 != 268435472 || v303 < 0x10 || (v61 & 0x400) == 0))
  {
    v69 = 0;
  }

  DWORD1(v63) = v291;
  DWORD1(v64) = v266;
  v70 = *(v58 + 1476) & 0x420;
  v263 = v47 * v275;
  _CF = v52 >= 3 || v54 * v52 * v53 * v56 * v47 * v275 >= 0xD9;
  v262 = v291 * v55;
  v261 = v262 * v303;
  v75 = !_CF && v262 * v303 > 0x1F && v54 < 3 && v53 < 3;
  v81 = v54 > 1 && v291 < 0x19 && v275 < 4 && v283 == 268435472 && v55 < 0x19 && v56 < 4 && v52 > 1;
  v82 = v75 & v69;
  if (v81)
  {
    v83 = ((*(v58 + 1476) & 0x400) == 0) & v82;
  }

  else
  {
    v83 = v82;
  }

  v264 = *(v58 + 1476);
  LOWORD(v84) = v264;
  v274 = v275;
  v276 = v47;
  v267 = v264 & 0x420;
  v265 = v65;
  v280 = v83;
  if ((*(a1 + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v85 = *(a4 + 16);
    v259 = v64;
    v260 = v63;
    BaseTensor::GetAccessPattern();
    v254 = v86;
    v309[0] = v86;
    v87 = *(a4 + 16);
    BaseTensor::GetAccessPattern();
    v255 = v88;
    v307 = v88;
    v89 = *(a4 + 16);
    BaseTensor::GetAccessPattern();
    v257 = v90;
    v305 = v90;
    v91 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v91[v254] = 0;
    v91[BYTE1(v254)] = 1;
    v91[BYTE2(v254)] = 2;
    v91[BYTE3(v254)] = 3;
    v91[BYTE4(v254)] = 4;
    v91[BYTE5(v254)] = 5;
    v91[BYTE6(v254)] = 6;
    v91[BYTE7(v254)] = 7;
    v91[BYTE8(v254)] = 8;
    v91[BYTE9(v254)] = 9;
    v91[BYTE10(v254)] = 10;
    v91[BYTE11(v254)] = 11;
    v91[BYTE12(v254)] = 12;
    v91[BYTE13(v254)] = 13;
    v91[BYTE14(v254)] = 14;
    v91[HIBYTE(v254)] = 15;
    v92 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v92[v255] = 0;
    v92[BYTE1(v255)] = 1;
    v92[BYTE2(v255)] = 2;
    v92[HIBYTE(v255)] = 3;
    v92[BYTE4(v307)] = 4;
    v92[BYTE5(v307)] = 5;
    v92[BYTE6(v307)] = 6;
    v92[BYTE7(v307)] = 7;
    v92[BYTE8(v307)] = 8;
    v92[BYTE9(v307)] = 9;
    v92[BYTE10(v307)] = 10;
    v92[BYTE11(v307)] = 11;
    v92[BYTE12(v307)] = 12;
    v92[BYTE13(v307)] = 13;
    v92[BYTE14(v307)] = 14;
    v92[HIBYTE(v307)] = 15;
    v93 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
    v93[v257] = 0;
    v93[BYTE1(v305)] = 1;
    v93[BYTE2(v305)] = 2;
    v93[BYTE3(v305)] = 3;
    v93[BYTE4(v305)] = 4;
    v93[BYTE5(v305)] = 5;
    v93[BYTE6(v305)] = 6;
    v93[BYTE7(v305)] = 7;
    v93[BYTE8(v305)] = 8;
    v93[BYTE9(v305)] = 9;
    v93[BYTE10(v305)] = 10;
    v93[BYTE11(v305)] = 11;
    v93[BYTE12(v305)] = 12;
    v93[BYTE13(v305)] = 13;
    v93[BYTE14(v305)] = 14;
    v93[HIBYTE(v305)] = 15;
    v94 = v91[4];
    v258 = BaseTensor::GetDimensionSize(v278);
    v95 = v91[3];
    v256 = BaseTensor::GetDimensionSize(v278);
    v96 = v91[2];
    LODWORD(v254) = BaseTensor::GetDimensionSize(v278);
    v97 = v91[1];
    v253 = BaseTensor::GetDimensionSize(v278);
    v98 = *v91;
    v252 = BaseTensor::GetDimensionSize(v278);
    v99 = v92[3];
    v251 = BaseTensor::GetDimensionSize(v285);
    v100 = v92[2];
    v250 = BaseTensor::GetDimensionSize(v285);
    v101 = v92[1];
    v249 = BaseTensor::GetDimensionSize(v285);
    v102 = *v92;
    v248 = BaseTensor::GetDimensionSize(v285);
    v103 = v93[4];
    LODWORD(v92) = BaseTensor::GetDimensionSize(v295);
    v104 = v93[3];
    LODWORD(v91) = BaseTensor::GetDimensionSize(v295);
    v105 = v93[2];
    v106 = BaseTensor::GetDimensionSize(v295);
    v107 = v93[1];
    v108 = BaseTensor::GetDimensionSize(v295);
    v109 = *v93;
    LODWORD(v93) = BaseTensor::GetDimensionSize(v295);
    v110 = dataTypeToString(*(v278 + 2));
    v111 = dataTypeToString(v285[2]);
    v112 = dataTypeToString(*(v295 + 2));
    v246 = v110;
    v247 = v111;
    v52 = v300;
    v244 = v108;
    v245 = v93;
    v53 = v292;
    v242 = v91;
    v243 = v106;
    v43 = v283;
    v44 = v274;
    LODWORD(v47) = v276;
    v70 = v264 & 0x420;
    v241 = v92;
    v51 = v291;
    MPSKernel_LogInfo(a1, v113, "-test MPSNDArrayDepthwiseConv3DTest -srcShapes [%u,%u,%u,%u,%u] [%u,%u,%u,%u] -dstShapes [%u,%u,%u,%u,%u] -srcDataTypes %s %s -dstDataTypes %s -cAxis %u -strides [1,%lu,%lu,%lu] -dilationRates [1,%lu,%lu,%lu] ", v258, v256, v254, v253, v252, v251, v250, v249, v248, v241, v242, v243, v244, v245, v246, v247, v112, v297, v292, v293, v300, v289, v286.i64[1], v286.i64[0]);
    printDWTranspose(a1, v309, 0, 1);
    printDWTranspose(a1, &v307, 1, 1);
    printDWTranspose(a1, &v305, 0, 0);
    MPSKernel_LogInfo(a1, v114, "-runMode forward ");
    MPSKernel_LogInfo(a1, v115, ",\n");
    *&v64 = v259;
    *&v63 = v260;
    v58 = v284;
    v57 = v277;
    v83 = v280;
    LODWORD(v56) = v288;
    v55 = v294;
    v54 = v293;
    v84 = *(v284 + 1476);
  }

  DWORD2(v63) = v303;
  v116 = v47 >= 0x11 || v53 >= 0x11;
  DWORD2(v64) = v270;
  v119 = !v116 && v44 < 0x11 && v54 < 0x11;
  if (v52 >= 0x11 || v56 >= 0x11)
  {
    v121 = 0;
  }

  else
  {
    v121 = v119;
  }

  if (v65)
  {
    v122 = v70 == 1056;
  }

  else
  {
    v122 = v121;
  }

  v123 = v38;
  if (v65)
  {
    v123 = v303 == 1;
  }

  if ((v84 & 0x400) != 0 || *(v58 + 1472) >= 26)
  {
    v124 = *(v58 + 1482);
  }

  else
  {
    v124 = 8;
  }

  HIDWORD(v63) = v299;
  HIDWORD(v64) = v269;
  if (v55 > v124 || v52 * v124 < v57)
  {
    v128 = 0;
    v126 = v273;
  }

  else
  {
    do
    {
      v125 = v124;
      if (v124 < 2 * v55)
      {
        break;
      }

      v124 >>= 1;
    }

    while (v125 > 1);
    v126 = v273;
    v128 = v273 < 1 && (v273 + v125 * v52) >= v57;
  }

  if (v122)
  {
    v129 = 0x1000000;
  }

  else
  {
    v129 = 0;
  }

  v130 = v129 | ((v268 > 1) << 26) | (v297 << 28) | ((v43 == 268435472) << 30);
  if (v123)
  {
    v131 = 0x80000000;
  }

  else
  {
    v131 = 0;
  }

  v296 = v128;
  *&v62 = __PAIR64__(v271, v126);
  DWORD2(v62) = v272;
  v309[0] = v64;
  v309[1] = v63;
  *&v63 = __PAIR64__(v44, v56);
  DWORD2(v63) = v47;
  v317 = v130 | v131 | (v128 << 25) | ((v54 << 16) + 983040) & 0xF0000 | ((v52 << 12) - 4096) & 0xF000 | ((v53 << 20) + 15728640) & 0xF00000 | (v56 - 1) & 0xF | (16 * v44 - 16) & 0xF0 | ((v47 << 8) + 3840) & 0xF00;
  v309[2] = v62;
  v309[3] = v63;
  *&v62 = __PAIR64__(v54, v52);
  DWORD2(v62) = v53;
  *&v132 = vmovn_s64(v286);
  *(&v132 + 1) = __PAIR64__(v286.u32[3], v289);
  v309[4] = v62;
  v309[5] = v132;
  v311 = 0;
  v310 = 0;
  v312 = 0;
  v313 = v268;
  v133 = 5;
  if (!v302)
  {
    v133 = 0;
  }

  if (v83)
  {
    v133 = 10;
  }

  if (v65)
  {
    v133 = 11;
  }

  v134 = (&CommonKernels)[16 * v133];
  v314 = 0;
  v315 = 0uLL;
  v238 = *(a1 + *MEMORY[0x277CD7360]);
  v240 = *(a1 + *MEMORY[0x277CD7368]);
  v236 = *(a4 + 232);
  MPSLibrary::CreateUberShaderKey();
  v135 = MEMORY[0x277CD7370];
  v136 = *(a1 + *MEMORY[0x277CD7370]);
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  if (!PipelineStateForMPSKey)
  {
    return -1;
  }

  v138 = PipelineStateForMPSKey;
  [v282 setComputePipelineState:{PipelineStateForMPSKey, v236, v238, v240, 0, 0}];
  v139 = *(a1 + *v135);
  MPSLibrary::ReleaseMPSKey();
  v140 = [v138 threadExecutionWidth];
  if (v140 <= 1)
  {
    v141 = 1;
  }

  else
  {
    v141 = v140;
  }

  if (v141 <= v294 && (v294 > 3 || v141 <= v51))
  {
    v142 = v141 >> 1;
    v143 = v141;
  }

  else
  {
    v142 = v141 >> 1;
    if (v140 <= 1)
    {
      v143 = 1;
    }

    else
    {
      v143 = v141 >> 1;
    }
  }

  v290 = v140;
  if (v140 <= 1)
  {
    v142 = 1;
  }

  v301 = v52;
  if (v294 > 0x3F || v52 == 1)
  {
    v145 = v142;
  }

  else
  {
    v145 = v143;
  }

  v146 = [v138 maxTotalThreadsPerThreadgroup];
  if (v146 >= 0x100)
  {
    v147 = 256;
  }

  else
  {
    v147 = v146;
  }

  v298 = v138;
  if (v147 <= 2 * v145)
  {
    v148 = 1;
  }

  else
  {
    v148 = v147 / v145;
  }

  v149 = v293;
  v150 = v280;
  v151 = v51;
  v152 = v294;
  if (v145 <= v294 || (v153 = 1, v154 = v148, v155 = v145, v145 > v151) && v145 > v303)
  {
    v157 = v145 > v294 && v148 > v303;
    if (v148 <= v151 || v157)
    {
      v158 = (v301 != 1) & v280;
      if (v294 > 0x3F)
      {
        v158 = 1;
      }

      if (v158)
      {
        v153 = v145;
      }

      else
      {
        v153 = 8;
      }

      v159 = 8;
      if ((v280 & (v293 != 1)) != 0)
      {
        v159 = v148;
      }

      v154 = 1;
      if (v291 <= 0x3F)
      {
        v155 = v159;
      }

      else
      {
        v155 = v148;
      }
    }

    else
    {
      v155 = 1;
      v154 = v148;
      v153 = v145;
    }
  }

  if (!(v302 & 1 | v280 & (v303 < 4)))
  {
    if (v276 >= 2 && v288 >= 2 && v274 >= 2 && v146 >= 0x100)
    {
      if ([v298 threadExecutionWidth] == 64)
      {
        v160 = v303 > 0xF && v291 > 0xF;
        v152 = v294;
        v161 = v160 && v294 > 0xF;
        v154 = 4;
        if (v161)
        {
          v155 = 8;
        }

        else
        {
          v155 = 4;
        }

        v153 = v155;
        v149 = v293;
      }

      else
      {
        v155 = 4;
        if (v303 <= 0xF)
        {
          v154 = 4;
        }

        else
        {
          v154 = 16;
        }

        v153 = 4;
        v149 = v293;
        v152 = v294;
      }

      v150 = v280;
    }

    v162 = v151 * v294 < v147 && v299 * v303 > 3;
    v163 = 4;
    if (!v162)
    {
      v163 = v154;
    }

    if (v155 > v151)
    {
      v164 = v151;
    }

    else
    {
      v163 = v154;
      v164 = v155;
    }

    if (v155 > v151)
    {
      v165 = v294;
    }

    else
    {
      v165 = v153;
    }

    if (v153 > v294)
    {
      v154 = v163;
      v155 = v164;
      v153 = v165;
    }
  }

  if (v150)
  {
    v166 = 2 * v141;
    if (v263 == 1)
    {
      v154 = 1;
      v167 = 1;
    }

    else
    {
      v167 = v155;
    }

    if (v263 == 1)
    {
      v168 = 2 * v141;
    }

    else
    {
      v168 = v153;
    }

    v170 = v301 > 1 && v168 > 0x1F;
    v171 = v168 >> v170;
    v173 = v149 > 1 && v167 > 0x1F;
    v174 = v167 >> v173;
    if (v174 >= v151 && v174 >= 2)
    {
      while (v174 * v171 >= v166)
      {
        v155 = v174 >> 1;
        if (v174 >= 4)
        {
          v174 >>= 1;
          if (v155 >= v151)
          {
            continue;
          }
        }

        goto LABEL_385;
      }
    }

    v155 = v174;
LABEL_385:
    if (v171 >= v294 && v171 >= 2)
    {
      while (v171 * v155 >= v166)
      {
        v153 = v171 >> 1;
        if (v171 >= 4)
        {
          v171 >>= 1;
          if (v153 >= v294)
          {
            continue;
          }
        }

        goto LABEL_392;
      }
    }

    v153 = v171;
LABEL_392:
    if (v152 > 0x10)
    {
      v193 = v288;
      v195 = v154 > 1;
      if (v154 < 2)
      {
LABEL_407:
        if (*(v284 + 1472) >= 7)
        {
          v197 = 32000;
        }

        else
        {
          v197 = 16000;
        }

        v198 = 1;
        if (v283 != 268435472)
        {
          v198 = 2;
        }

        if (((((((v274 - 1 + 2 * v149 * v155) * (v193 - 1 + 2 * v301 * v153)) * (v276 - 1 + v154 * v292)) << v198) + 15) & 0xFFFFFFFFFFFFFFF0) > v197)
        {
          if (v154 * v153 * v155 < v166)
          {
            v195 = 0;
          }

          v154 >>= v195;
          v200 = v155 > 1 && v154 * v153 * v155 >= v166;
          v155 >>= v200;
          if (v153 >= 2)
          {
            v153 >>= v154 * v153 * v155 >= v166;
          }
        }

        v201 = (v294 + 2 * v153 - 1) / (2 * v153);
        v202 = (v303 + v154 - 1) / v154 * v299;
        v203.f32[0] = (v193 - 1 + 2 * v153 * v301);
        LODWORD(v314) = v203.i32[0];
        *(&v314 + 1) = (v274 - 1 + 2 * v155 * v149);
        *&v315 = (v276 - 1 + v154 * v292);
        v203.f32[1] = *(&v314 + 1) * v203.f32[0];
        __asm { FMOV            V3.2S, #1.0 }

        *(&v315 + 4) = vdiv_f32(_D3, v203);
        HIDWORD(v315) = (v303 + v154 - 1) / v154;
        v207 = ((*(&v314 + 1) * v203.f32[0]) * *&v315) << v198;
        v208 = (v151 + 2 * v155 - 1) / (2 * v155);
        goto LABEL_549;
      }
    }

    else
    {
      v193 = v288;
      if (v291 <= 0x10)
      {
        v153 = (v294 + 1) >> 1;
        v155 = (v151 + 1) >> 1;
        do
        {
          v194 = v154;
          if (v154 < 2)
          {
            break;
          }

          v154 >>= 1;
        }

        while (v155 * v153 * v194 > v147);
        v154 = v194;
      }

      v195 = v154 > 1;
      if (v154 < 2)
      {
        goto LABEL_407;
      }
    }

    if (v303 % v154)
    {
      do
      {
        if (v154 <= v303)
        {
          v154 >>= 1;
        }

        else
        {
          v154 = v303;
        }

        v195 = v154 > 1;
        if (v303 % v154)
        {
          v196 = v154 > 1;
        }

        else
        {
          v196 = 0;
        }
      }

      while (v196);
    }

    goto LABEL_407;
  }

  v175 = v299 * v303;
  v176 = v175 - 1;
  v177 = v151 - 1;
  v178 = v294 - 1;
  if (!v265)
  {
    v202 = (v154 + v176) / v154;
    v208 = (v155 + v177) / v155;
    v201 = (v153 + v178) / v153;
    if (v302)
    {
      goto LABEL_550;
    }

    goto LABEL_552;
  }

  if (v152 > 0x20)
  {
    v182 = v301;
    v183 = v284;
    v184 = v291;
    v185 = v262;
    v180 = v141;
    if (v152 > 0x3F || v290 < 0x20)
    {
      if (v152 > 0x5F)
      {
        v153 = v141;
        goto LABEL_373;
      }
    }

    else
    {
      v186 = v301 == 2;
      v209 = v267 == 1056 || v301 == 2;
      if (v209 && (v264 & 0x400) != 0 && !v296)
      {
        v148 = v141 >> 3;
        if (v301 == 2)
        {
          v187 = 16;
        }

        else
        {
          v187 = 32;
        }

        v188 = *(v284 + 1480);
        v189 = v188 * v141;
        v190 = v261 * v299;
        v153 = 8;
        goto LABEL_438;
      }
    }

    v153 = v141;
    v210 = v152 % 0x1Eu;
    if (v210 && v210 <= 0x17 && !v296)
    {
      if (((v141 >> 3) & 0xFFFFFFFFFFFFFFELL) != 0)
      {
        v148 = (v141 >> 3) & 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v148 = 1;
      }

      v153 = 16;
    }
  }

  else
  {
    LODWORD(v179) = 2 * v152;
    if (2 * v152 <= 2)
    {
      v179 = 2;
    }

    else
    {
      v179 = v179;
    }

    v180 = v141;
    v181 = v141;
    v182 = v301;
    v183 = v284;
    v184 = v291;
    v185 = v262;
    do
    {
      v153 = v181;
      v181 >>= 1;
    }

    while (v153 >= v179);
    if (2 * v141 / v153 <= 1)
    {
      v148 = 1;
    }

    else
    {
      v148 = 2 * v141 / v153;
    }
  }

LABEL_373:
  v186 = v182 == 2;
  if (v182 == 2)
  {
    v187 = 16;
  }

  else
  {
    v187 = 32;
  }

  v188 = *(v183 + 1480);
  v189 = v188 * v180;
  v190 = v261 * v299;
  if ((v264 & 0x400) != 0)
  {
LABEL_438:
    if (v190 >= v189 << 15 && v184 >= 0x41)
    {
      v192 = 4;
      if (*(v183 + 1472) != 11)
      {
        v192 = v187;
      }

      goto LABEL_504;
    }

    v192 = v187;
    goto LABEL_462;
  }

  if (v184 <= 0xF)
  {
    v191 = v184 < 8 && v182 == 2;
    v192 = 1;
    if (!v191)
    {
      v192 = 2;
    }

    goto LABEL_463;
  }

  if (v184 < 0x20)
  {
    v192 = 4;
LABEL_463:
    if ((v264 & 0x400) != 0)
    {
      v211 = v151;
    }

    else
    {
      v211 = v192;
    }

    if (v188 << 11 > v190 || v184 > 0x1F)
    {
      v211 = v192;
    }

    do
    {
      v213 = v211;
      if (v211 < 3)
      {
        break;
      }

      v211 >>= 1;
    }

    while (16 * v189 * v213 >= v190);
    if (v186)
    {
      v214 = 8 * v189;
      do
      {
        v215 = v213;
        if (v213 < 2)
        {
          break;
        }

        v213 >>= 1;
      }

      while (v214 * v215 >= v190);
    }

    else
    {
      v215 = v213;
    }

    v216 = v184 > 0x1F && v215 == 1;
    v192 = 2;
    if (!v216)
    {
      v192 = v215;
    }

    if ((v264 & 0x400) != 0 || v184 >= 0x20)
    {
      v218 = v184 > 0xF || v188 < 9;
      v219 = 16;
      if ((v218 & (v264 >> 10)) == 0)
      {
        v219 = 8;
      }

      do
      {
        v220 = v192;
        v192 >>= 1;
      }

      while (v220 > v219);
      v221 = (v294 + 3) >> 2;
      if (v182 == 1)
      {
        v221 = v294 >> 1;
      }

      if (v267 == 1056)
      {
        v221 = v220;
      }

      if (v190 >> 15)
      {
        v192 = v220;
      }

      else
      {
        v192 = v221;
      }

      if (v152)
      {
        v192 = v220;
      }
    }

    goto LABEL_504;
  }

  if (v184 > 0x7F || (v192 = 6, v290 <= 0x20) && v184 <= 0x30)
  {
    v192 = 8;
    if (v184 >= 0x100)
    {
      v192 = v187;
    }
  }

LABEL_462:
  if (v184 <= 0x40)
  {
    goto LABEL_463;
  }

LABEL_504:
  v155 = v148;
  while (v192 * v155 > v151 || v151 % (v192 * v155) >= v192)
  {
    v222 = v155 > 1;
    if (v155 <= 1)
    {
      v155 = 1;
    }

    else
    {
      v155 >>= 1;
    }

    if (!v222)
    {
      v192 = v151;
    }
  }

  if (4 * v180 >= v147)
  {
    v223 = v147;
  }

  else
  {
    v223 = 4 * v180;
  }

  v224 = v223 / (v155 * v153);
  if (v224 <= 1)
  {
    v154 = 1;
  }

  else
  {
    v154 = v224;
  }

  if (v175 <= 1)
  {
    v175 = 1;
  }

  while (v154 * v155 * v153 > v147)
  {
    if (v154 < 2)
    {
      goto LABEL_525;
    }

LABEL_522:
    v154 >>= 1;
  }

  if (v154 > v175)
  {
    goto LABEL_522;
  }

LABEL_525:
  v225 = v154 * v153;
  v226 = 12;
  if ((v264 & 0x400) != 0)
  {
    v226 = 6;
  }

  v227 = 16 * v188 * v192;
  v228 = v153 * v192 * v226;
  while (2)
  {
    v229 = v225 * v155;
    if (v225 * v155 > v147)
    {
      if (v155 < 2)
      {
        break;
      }

      goto LABEL_529;
    }

    if (v229 > v180 && v227 * v229 > v190 && v155 >= 2 && v228 * v155 > v185)
    {
LABEL_529:
      v155 >>= 1;
      continue;
    }

    break;
  }

  if (v182 == 1 && !v296)
  {
    v233 = -2;
    goto LABEL_547;
  }

  v201 = (v153 + v178) / v153;
  if (v182 == 2 && !v296)
  {
    v233 = -1;
LABEL_547:
    v201 = (v233 + v153 + v178) / (v233 + v153);
  }

  v208 = (v155 * v192 + v177) / (v155 * v192);
  v234 = v154 + v176;
  HIDWORD(v315) = v192;
  v207 = v154 * (4 * v153 + 8) * v155;
  v148 = v155;
  v145 = v153;
  v202 = v234 / v154;
LABEL_549:
  [v282 setThreadgroupMemoryLength:(v207 + 15) & 0xFFFFFFFFFFFFFFF0 atIndex:0];
  if (v302)
  {
    do
    {
LABEL_550:
      v155 = v148;
      v148 >>= 1;
    }

    while (v155 > v294);
    v201 = (v145 + v299 - 1) / v145;
    v202 = v303 * v291;
    v154 = 1;
    v153 = v145;
    v208 = (v294 + v155 - 1) / v155;
  }

LABEL_552:
  [v282 setComputePipelineState:v298];
  MPSSetNDArraysOnComputeEncoder(v282, a4, 4, 0, 0);
  [v282 setBytes:v309 length:144 atIndex:29];
  *&v307 = v201;
  *(&v307 + 1) = v208;
  v308 = v202;
  *&v305 = v153;
  *(&v305 + 1) = v155;
  v306 = v154;
  [v282 dispatchThreadgroups:&v307 threadsPerThreadgroup:&v305];
  MPSLibrary::ReleaseComputeState();
  return 0;
}