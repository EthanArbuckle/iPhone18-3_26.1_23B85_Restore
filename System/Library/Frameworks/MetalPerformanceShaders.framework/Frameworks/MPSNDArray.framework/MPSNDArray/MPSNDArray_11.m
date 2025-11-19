void sub_239AC0DB0(_Unwind_Exception *a1)
{
  std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100](v2 - 176);
  if (v1)
  {
    operator delete(v1);
  }

  MPSAutoCache::~MPSAutoCache((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t MPSNDArraySDPAA14Behavior::EncodeSDPA(uint64_t a1, MPSKernel *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a5 + 232) inputTensorAtIndex:0];
  if (*(v9 + 2) != *([*(a5 + 232) outputTensorAtIndex:0] + 8) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = *(&a2->super.isa + *MEMORY[0x277CD7370]);
  v11 = *(&a2->super.isa + *MEMORY[0x277CD7350]);
  if ([(MPSKernel *)a2 kernelType]&& MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  [(MPSKernel *)a2 layout];
  if (BaseTensor::GetDimensionSize(v9) < 8)
  {
    MPSKernel_LogInfo(a2, v12, "Default Encoder: Encoding vector based SDPA\n");

    EncodeSDPACommonNew(a3, a4, a5, v11, v10, a2);
  }

  MPSKernel_LogInfo(a2, v12, "A14 Encoder: Encoding 8x8 TEC based SDPA kernel\n");
  EncodeSDPATileBasedCommon(a3, a4, a5, v11, v10, a2, qword_239B1F400);
  return 0;
}

uint64_t MPSNDArraySDPAA18Behavior::EncodeQuantizedSDPA(uint64_t a1, MPSKernel *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a5 + 232) inputTensorAtIndex:0];
  [*(a5 + 232) inputTensorAtIndex:1];
  [*(a5 + 232) inputTensorAtIndex:2];
  [*(a5 + 232) inputTensorAtIndex:3];
  if (*a5 == 7)
  {
    v10 = [*(a5 + 232) inputTensorAtIndex:4];
    v11 = 5;
  }

  else
  {
    v10 = 0;
    v11 = 4;
  }

  v12 = [*(a5 + 232) inputTensorAtIndex:v11];
  v13 = [*(a5 + 232) inputTensorAtIndex:v11 + 1];
  DimensionSize = [*(a5 + 232) outputTensorAtIndex:0];
  v15 = *(DimensionSize + 8);
  if (v15 != 268435472 && v15 != 268435488)
  {
    DimensionSize = MTLReportFailureTypeEnabled();
    if (DimensionSize)
    {
      DimensionSize = MTLReportFailure();
    }
  }

  if ((*(v9 + 2) == 268435472 || v10 && *(v10 + 8) == 268435472) && *(v12 + 8) == 268435472)
  {
    v17 = *(&a2->super.isa + *MEMORY[0x277CD7370]);
    v18 = *(&a2->super.isa + *MEMORY[0x277CD7350]);
    if (*(v13 + 8) == 268435472)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = *(&a2->super.isa + *MEMORY[0x277CD7370]);
    v18 = *(&a2->super.isa + *MEMORY[0x277CD7350]);
  }

  if (qword_27DF869A8 == -1)
  {
    if (_MergedGlobals_5 != 1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&qword_27DF869A8, &__block_literal_global_4);
    if (_MergedGlobals_5 != 1)
    {
      goto LABEL_21;
    }
  }

LABEL_18:
  [(MPSKernel *)a2 layout];
  DimensionSize = BaseTensor::GetDimensionSize(v9);
  if (DimensionSize >= 8)
  {
    MPSKernel_LogInfo(a2, v19, "A18 Encoder:Encoding 16x16 MXU based QuantizedSDPA kernel\n");
    result = EncodeQuantizedSDPATileBasedCommon(a3, a4, a5, v18, v17, a2, qword_239B1F3E8);
    if (!result)
    {
      return result;
    }

    DimensionSize = MPSKernel_LogInfo(a2, v21, "A18 Encoder: failed, fall back A14 encoder\n");
  }

LABEL_21:

  return MPSNDArraySDPAA14Behavior::EncodeQuantizedSDPA(DimensionSize, a2, a3, a4, a5);
}

uint64_t EncodeQuantizedSDPATileBasedCommon(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, MPSKernel *a6, unsigned int *a7)
{
  v170 = *(&a6->super.isa + *MEMORY[0x277CD7378]);
  v155 = *(&a6->super.isa + *MEMORY[0x277CD7360]);
  v154 = *(&a6->super.isa + *MEMORY[0x277CD7368]);
  [(MPSKernel *)a6 alpha];
  v11 = v10;
  v163 = a6;
  v174 = [(MPSKernel *)a6 layout];
  MEMORY[0x23EE7C450](v283, a2, 0);
  v12 = [*(a3 + 232) graph];
  v186 = a3;
  if ([*(a3 + 16) count])
  {
    operator new();
  }

  v280 = 0u;
  v281 = 0u;
  v282 = 1065353216;
  v13 = *(v12 + 64);
  v14 = *v13;
  v15 = v13[1];
  if ((v170 & 1) == 0 && *(&v281 + 1))
  {
    v16 = 0;
    do
    {
      if (*(&v280 + 1))
      {
        v17 = vcnt_s8(*(&v280 + 8));
        v17.i16[0] = vaddlv_u8(v17);
        if (v17.u32[0] > 1uLL)
        {
          v18 = v16;
          if (*(&v280 + 1) <= v16)
          {
            v18 = v16 % DWORD2(v280);
          }
        }

        else
        {
          v18 = (DWORD2(v280) - 1) & v16;
        }

        v19 = *(v280 + 8 * v18);
        if (v19)
        {
          v20 = *v19;
          if (v20)
          {
            if (v17.u32[0] < 2uLL)
            {
              while (1)
              {
                v22 = v20[1];
                if (v22 == v16)
                {
                  if (*(v20 + 4) == v16)
                  {
                    goto LABEL_6;
                  }
                }

                else if ((v22 & (*(&v280 + 1) - 1)) != v18)
                {
                  goto LABEL_27;
                }

                v20 = *v20;
                if (!v20)
                {
                  goto LABEL_27;
                }
              }
            }

            do
            {
              v21 = v20[1];
              if (v21 == v16)
              {
                if (*(v20 + 4) == v16)
                {
                  goto LABEL_6;
                }
              }

              else
              {
                if (v21 >= *(&v280 + 1))
                {
                  v21 %= *(&v280 + 1);
                }

                if (v21 != v18)
                {
                  break;
                }
              }

              v20 = *v20;
            }

            while (v20);
          }
        }
      }

LABEL_27:
      if (MTLReportFailureTypeEnabled())
      {
        v151 = v16;
        MTLReportFailure();
      }

LABEL_6:
      ++v16;
    }

    while (v16 < *(&v281 + 1));
  }

  v23 = [*(v186 + 16) count];
  v24 = *(v186 + 16);
  LODWORD(v231) = 0;
  v237 = &v231;
  v185 = [v24 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v280, 0) + 5)}];
  v25 = *(v186 + 16);
  LODWORD(v231) = 1;
  v237 = &v231;
  v184 = [v25 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v280, 1u) + 5)}];
  v26 = *(v186 + 16);
  LODWORD(v231) = 2;
  v237 = &v231;
  v165 = [v26 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v280, 2u) + 5)}];
  v27 = *(v186 + 16);
  LODWORD(v231) = 3;
  v237 = &v231;
  v172 = [v27 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v280, 3u) + 5)}];
  v28 = 4;
  if (v23 == 7)
  {
    v30 = *(v186 + 16);
    LODWORD(v231) = 4;
    v237 = &v231;
    v29 = [v30 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v280, 4u) + 5)}];
    v28 = 5;
  }

  else
  {
    v29 = 0;
  }

  v31 = *(v186 + 16);
  LODWORD(v231) = v28;
  v237 = &v231;
  v180 = [v31 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v280, v28) + 5)}];
  v32 = v28 + 1;
  v33 = *(v186 + 16);
  LODWORD(v231) = v32;
  v237 = &v231;
  v34 = [v33 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v280, v32) + 5)}];
  v162 = v23;
  v167 = *(v186 + 208);
  v157 = [*(v186 + 232) outputTensorAtIndex:0];
  if (v174 == 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  if (v174 == 1)
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  v37 = *MEMORY[0x277CD7410];
  v38 = *(v185 + v37);
  v39 = *(v185 + v37 + 16);
  v40 = *MEMORY[0x277CD73D8];
  v41 = *(v185 + v40);
  v42 = *(v185 + v37 + 32);
  v226 = *(v185 + v37 + 48);
  v225[2] = v42;
  v225[1] = v39;
  v225[0] = v38;
  v43 = *(v225 + (v41 & 0xF));
  v220 = v41;
  v224[3] = v226;
  v224[2] = v42;
  v224[1] = v39;
  v224[0] = v38;
  v44 = *(v224 + (*(&v220 | v36 & 0xF) & 0xF));
  v45 = *(v184 + v37);
  v46 = *(v184 + v37 + 16);
  v47 = *(v184 + v37 + 32);
  v48 = *(v184 + v37 + 48);
  v221 = *(v184 + v40);
  v228[3] = v48;
  v228[2] = v47;
  v228[1] = v46;
  v228[0] = v45;
  v49 = *(v228 + (*(&v221 | v36 & 0xF) & 0xF));
  v223[3] = v226;
  v223[2] = v42;
  v223[1] = v39;
  v223[0] = v38;
  v161 = *(v223 + (*(&v220 | v35 & 0xF) & 0xF));
  v227[3] = v48;
  v227[2] = v47;
  v227[1] = v46;
  v227[0] = v45;
  v158 = *(v227 + (*(&v221 | v35 & 0xF) & 0xF));
  v222[3] = v226;
  v222[2] = v42;
  v222[1] = v39;
  v222[0] = v38;
  v160 = *(v222 + (BYTE3(v41) & 0xF));
  v159 = *(a4 + 1482);
  v50 = a7[2];
  v51 = *a7;
  v168 = v43;
  v52 = (v43 + a7[4] - 1) & -a7[4];
  v53 = v49 - 1;
  v54 = (v49 - 1 + v51) & -v51;
  if (v54 >= *a7)
  {
    v55 = *a7;
  }

  else
  {
    v55 = (v49 - 1 + v51) & -v51;
  }

  if (v55 >= v52)
  {
    v56 = (v43 + a7[4] - 1) & -a7[4];
  }

  else
  {
    v56 = v55;
  }

  v57 = (v56 + v53) & -v56;
  if (v57 >= v52)
  {
    v57 = (v43 + a7[4] - 1) & -a7[4];
  }

  if (v57 >= 0x40)
  {
    v57 = 64;
  }

  v176 = v57;
  if (v52 >= v57)
  {
    v58 = v57;
  }

  else
  {
    v58 = (v43 + a7[4] - 1) & -a7[4];
  }

  v179 = v44;
  v59 = (v44 + v50 - 1) & -v50;
  if (v59 >= 0x10)
  {
    v59 = 16;
  }

  v183 = v59;
  if (v50 == 8)
  {
    v169 = 8;
    if (v51 == 8)
    {
      if (v54 >= v52)
      {
        v60 = v52;
      }

      else
      {
        v60 = (v49 - 1 + v51) & -v51;
      }

      if (v60 >= 0x10)
      {
        v56 = 16;
      }

      else
      {
        v56 = v60;
      }

      v61 = (v56 + v53) & -v56;
      if (v61 >= v52)
      {
        v61 = v52;
      }

      if (v61 >= 0x80)
      {
        v61 = 128;
      }

      v176 = v61;
      if (v52 < v61)
      {
        v61 = v52;
      }

      if (v61 >= 0x20)
      {
        v58 = 32;
      }

      else
      {
        v58 = v61;
      }

      v62 = (v44 + 15) & 0xFFFFFFF0;
      v169 = 16;
      if (v62)
      {
        v62 = 16;
      }

      v183 = v62;
    }

    if (v44 % v183)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v169 = v50;
    if (v44 % v59)
    {
      goto LABEL_79;
    }
  }

  if (!(v43 % v58) && !(v49 % v176))
  {
    v153 = v49 % v58 == 0;
    v63 = *MEMORY[0x277CD73F0];
    v64 = *(v180 + v63);
    if (!v64)
    {
      goto LABEL_83;
    }

    goto LABEL_80;
  }

LABEL_79:
  v153 = 0;
  v63 = *MEMORY[0x277CD73F0];
  v64 = *(v180 + v63);
  if (!v64)
  {
    goto LABEL_83;
  }

LABEL_80:
  v65 = 0;
  v67 = *(v180 + v37 + 32);
  v66 = *(v180 + v37 + 48);
  v69 = *(v180 + v37);
  v68 = *(v180 + v37 + 16);
  v70 = 1;
  v71 = *(v180 + v40);
  do
  {
    v218 = v71;
    v219[0] = v69;
    v219[1] = v68;
    v219[2] = v67;
    v219[3] = v66;
    v70 *= *(v219 + (*(&v218 | v65++ & 0xF) & 0xF));
  }

  while (v64 != v65);
  if (v70 != 1)
  {
    v164 = 0;
    goto LABEL_95;
  }

LABEL_83:
  v72 = *(v34 + v63);
  if (v72)
  {
    v73 = 0;
    v75 = *(v34 + v37 + 32);
    v74 = *(v34 + v37 + 48);
    v77 = *(v34 + v37);
    v76 = *(v34 + v37 + 16);
    v78 = 1;
    v79 = *(v34 + v40);
    do
    {
      v216 = v79;
      v217[0] = v77;
      v217[1] = v76;
      v217[2] = v75;
      v217[3] = v74;
      v78 *= *(v217 + (*(&v216 | v73++ & 0xF) & 0xF));
    }

    while (v72 != v73);
    LODWORD(v72) = v78 != 1;
  }

  v164 = v72 ^ 1;
  if ((v72 & 1) != 0 || v162 != 7)
  {
LABEL_95:
    if (v170)
    {
      goto LABEL_105;
    }

    goto LABEL_96;
  }

  v80 = *(v29 + v63);
  if (v80)
  {
    v81 = 0;
    v82 = (v29 + v37);
    v84 = v82[2];
    v83 = v82[3];
    v86 = *v82;
    v85 = v82[1];
    v87 = 1;
    v88 = *(v29 + v40);
    do
    {
      v214 = v88;
      v215[0] = v86;
      v215[1] = v85;
      v215[2] = v84;
      v215[3] = v83;
      v87 *= *(v215 + (*(&v214 | v81++ & 0xF) & 0xF));
    }

    while (v80 != v81);
    v164 = v87 == 1;
    if (v170)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v164 = 1;
    if (v170)
    {
      goto LABEL_105;
    }
  }

LABEL_96:
  if (validateQuantizedSDPA(v185, v184, v165, v172, v29, v180, v34, v174))
  {
    goto LABEL_156;
  }

  if (*(v185 + *MEMORY[0x277CD7428] + 8 * (*(v185 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v184 + *MEMORY[0x277CD7428] + 8 * (*(v184 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v165 + *MEMORY[0x277CD7428] + 8 * (*(v165 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v172 && *(v172 + *MEMORY[0x277CD7428] + 8 * (*(v172 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_105:
  v171 = v58;
  v237 = __PAIR64__(v168, v11);
  v243 = v160;
  v242 = v161 / v158;
  v241 = v161;
  v240 = v49;
  v239 = v179;
  LODWORD(v230[0]) = 0;
  *&v231 = v230;
  v249 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v280, 0) + 20);
  LODWORD(v230[0]) = 1;
  *&v231 = v230;
  v250 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v280, 1u) + 20);
  LODWORD(v230[0]) = 2;
  *&v231 = v230;
  v251 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v280, 2u) + 20);
  LODWORD(v230[0]) = 3;
  *&v231 = v230;
  v252 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v280, 3u) + 20);
  LODWORD(v230[0]) = 4;
  *&v231 = v230;
  if (v162 == 7)
  {
    v253 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v280, 4u) + 20);
    LODWORD(v230[0]) = 5;
    *&v231 = v230;
    v254 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v280, 5u) + 20);
    LODWORD(v230[0]) = 6;
    *&v231 = v230;
    v89 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v280, 6u);
  }

  else
  {
    v254 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v280, 4u) + 20);
    LODWORD(v230[0]) = 5;
    *&v231 = v230;
    v89 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v280, 5u);
  }

  v255 = *(v89 + 20);
  v90 = *MEMORY[0x277CD7428];
  v91 = *MEMORY[0x277CD73D8];
  v204 = *(v185 + v91);
  v256 = *(v185 + v90 + 8 * (*(&v204 | v36 & 0xF) & 0xF));
  v205 = *(v185 + v91);
  v257 = *(v185 + v90 + 8 * (*(&v205 | v35 & 0xF) & 0xF));
  v258 = *(v185 + v90 + 8 * (*(v185 + v91 + 3) & 0xF));
  v206 = *(v184 + v91);
  v259 = *(v184 + v90 + 8 * (*(&v206 | v36 & 0xF) & 0xF));
  v207 = *(v184 + v91);
  v260 = *(v184 + v90 + 8 * (*(&v207 | v35 & 0xF) & 0xF));
  v261 = *(v184 + v90 + 8 * (*(v184 + v91 + 3) & 0xF));
  v208 = *(v172 + v91);
  v262 = *(v172 + v90 + 8 * (*(&v208 | v36 & 0xF) & 0xF));
  v209 = *(v172 + v91);
  v263 = *(v172 + v90 + 8 * (*(&v209 | v35 & 0xF) & 0xF));
  v264 = *(v172 + v90 + 8 * (*(v172 + v91 + 3) & 0xF));
  v210 = *(v165 + v91);
  v265 = *(v165 + v90 + 8 * (*(&v210 | v36 & 0xF) & 0xF));
  v211 = *(v165 + v91);
  v266 = *(v165 + v90 + 8 * (*(&v211 | v35 & 0xF) & 0xF));
  v267 = *(v165 + v90 + 8 * (*(v165 + v91 + 3) & 0xF));
  v212 = *&v167[v91];
  v277 = *&v167[8 * (*(&v212 | v36 & 0xF) & 0xF) + v90];
  v213 = *&v167[v91];
  v278 = *&v167[8 * (*(&v213 | v35 & 0xF) & 0xF) + v90];
  v279 = *&v167[8 * (v167[v91 + 3] & 0xF) + v90];
  v92 = *MEMORY[0x277CD7410];
  v93 = v180 + v91;
  if (v29)
  {
    v199 = *(v29 + v91);
    v245 = *(v29 + v92 + 4 * (*(&v199 | v35 & 0xF) & 0xF));
    v248 = *(v180 + v92 + 4 * (*(v93 + 3) & 0xF));
    v200 = *(v29 + v91);
    v246 = *(v29 + v92 + 4 * (*(&v200 | v36 & 0xF) & 0xF));
    v201 = *(v34 + v91);
    v247 = *(v34 + v92 + 4 * (*(&v201 | v36 & 0xF) & 0xF));
    v202 = *(v29 + v91);
    v268 = *(v29 + v90 + 8 * (*(&v202 | v36 & 0xF) & 0xF));
    v203 = *(v29 + v91);
    v269 = *(v29 + v90 + 8 * (*(&v203 | v35 & 0xF) & 0xF));
    v94 = *(v29 + v90 + 8 * (*(v29 + v91 + 3) & 0xF));
  }

  else
  {
    LODWORD(v94) = 0;
    v197 = *(v180 + v91);
    v245 = *(v180 + v92 + 4 * (*(&v197 | v35 & 0xF) & 0xF));
    v248 = *(v180 + v92 + 4 * (*(v93 + 3) & 0xF));
    v246 = 0;
    v198 = *(v34 + v91);
    v95 = *(v34 + v92 + 4 * (*(&v198 | v36 & 0xF) & 0xF));
    v269 = 0;
    v247 = v95;
    v268 = 0;
  }

  v96 = v174 == 1;
  v270 = v94;
  v189 = *(v180 + v91);
  v271 = *(v180 + v90 + 8 * (*(&v189 | v36 & 0xF) & 0xF));
  v190 = *(v180 + v91);
  v272 = *(v180 + v90 + 8 * (*(&v190 | v35 & 0xF) & 0xF));
  v273 = *(v180 + v90 + 8 * (*(v93 + 3) & 0xF));
  v97 = v34 + v90;
  v191 = *(v34 + v91);
  v274 = *(v97 + 8 * (*(&v191 | v36 & 0xF) & 0xF));
  v192 = *(v34 + v91);
  v275 = *(v97 + 8 * (*(&v192 | v35 & 0xF) & 0xF));
  v276 = *(v97 + 8 * (*(v34 + v91 + 3) & 0xF));
  v238 = v52;
  v175 = v183 * v176 / v169 / v56;
  v244 = v183 * v176 / v169 / v56;
  v98 = (v96 << 8) | ((*(a4 + 1472) < 18) << 7);
  v99 = (v172 + v92);
  v100 = *v99;
  v101 = v99[1];
  v102 = v99[2];
  v103 = v99[3];
  v104 = *(v172 + v91);
  v193 = v104;
  v196[2] = v102;
  v196[3] = v103;
  v196[0] = v100;
  v196[1] = v101;
  v105 = *(v196 + (*(&v193 | v35 & 0xF) & 0xF));
  v195[2] = v102;
  v195[3] = v103;
  v195[0] = v100;
  v195[1] = v101;
  if (v105 * *(v195 + (BYTE3(v104) & 0xF)) == 1)
  {
    v106 = v98;
  }

  else
  {
    v106 = v98 + 1;
  }

  v194[2] = v102;
  v194[3] = v103;
  v194[0] = v100;
  v194[1] = v101;
  if (*(v194 + (v104 & 0xF)) == 1)
  {
    v107 = 0;
  }

  else
  {
    v187 = v104;
    v188[0] = v100;
    v188[1] = v101;
    v188[2] = v102;
    v188[3] = v103;
    v108 = *(v188 + (*(&v187 | v36 & 0xF) & 0xF));
    v109 = v108 == 1;
    v110 = v108 != 1;
    v111 = v109;
    v106 |= 4 * v110;
    v107 = 2 * v111;
  }

  v112 = MEMORY[0x277CD73C8];
  v113 = *(v185 + *MEMORY[0x277CD73C8]);
  if (v113 > 268435487)
  {
    if (v113 == 536870920)
    {
      v114 = 24;
      v115 = *(v157 + 8);
      if (v115 > 268435487)
      {
        goto LABEL_127;
      }

      goto LABEL_130;
    }

    goto LABEL_129;
  }

  if (v113 != -1879048176)
  {
    if (v113 == 268435472)
    {
      v114 = 8;
      v115 = *(v157 + 8);
      if (v115 > 268435487)
      {
        goto LABEL_127;
      }

      goto LABEL_130;
    }

LABEL_129:
    v114 = 0;
    v115 = *(v157 + 8);
    if (v115 > 268435487)
    {
      goto LABEL_127;
    }

    goto LABEL_130;
  }

  v114 = 16;
  v115 = *(v157 + 8);
  if (v115 > 268435487)
  {
LABEL_127:
    if (v115 == 536870920)
    {
      v116 = 96;
      goto LABEL_137;
    }

LABEL_133:
    v116 = 0;
    goto LABEL_137;
  }

LABEL_130:
  if (v115 != -1879048176)
  {
    if (v115 == 268435472)
    {
      v116 = 32;
      goto LABEL_137;
    }

    goto LABEL_133;
  }

  v116 = 64;
LABEL_137:
  if ([(MPSKernel *)v163 kernelType])
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v117 = 0;
  }

  else
  {
    if (v50 == 16)
    {
      v118 = 7;
    }

    else
    {
      v118 = 5;
    }

    v119 = v153 + v118;
    if (v164)
    {
      v117 = v119 + 8;
    }

    else
    {
      v117 = v119 + 4;
    }
  }

  v120 = *v112;
  v173 = *(v185 + v120);
  if (v173 != 536870920 || *(a4 + 1472) <= 21)
  {
    v122 = 0x4000;
  }

  else
  {
    v122 = 0;
  }

  v166 = *(v184 + v120);
  v123 = [*(a4 + 16) maxThreadgroupMemoryLength];
  v124 = (v171 >> 3 << 30) | (v176 << 17) & 0x1F00000 | (v183 << 12) & 0x18000 | v107 | v114 | v116 | v106 & 0x185 | v122;
  v125 = (4 * v183 * v176 + 15) & 0xFFF0;
  v126 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
  v178 = (8 * v183 + 15) & 0x1F0;
  v127 = 2 * (v125 + v178);
  if ((v127 + v126 > v123) | v164 & 1)
  {
    if (v127 > v123)
    {
      puts("too much threadgroup memory usage. Fallback");
LABEL_156:
      v128 = -19;
      v129 = v281;
      if (!v281)
      {
        goto LABEL_379;
      }

      goto LABEL_378;
    }

    LOWORD(v124) = v124 & 0xEFFF;
  }

  v130 = (v179 + v183 - 1) / v183;
  if ((v124 & 0x1000) != 0)
  {
    TempBuffer = 0;
  }

  else
  {
    TempBuffer = MPSAutoCache::GetTempBuffer(v283, v126 * v161 * v160 * v130, 0);
  }

  v132 = *v112;
  v133 = *(v185 + v132);
  if (v133 > 285212703)
  {
    if (v133 <= 536870915)
    {
      if (v133 > 301989895)
      {
        if (v133 == 301989896)
        {
          v134 = 512;
          v135 = *(v184 + v132);
          if (v135 > 285212703)
          {
            goto LABEL_206;
          }

          goto LABEL_229;
        }

        if (v133 == 335544328)
        {
          v134 = 544;
          v135 = *(v184 + v132);
          if (v135 <= 285212703)
          {
            goto LABEL_229;
          }

          goto LABEL_206;
        }
      }

      else
      {
        if (v133 == 285212704)
        {
          v134 = 416;
          v135 = *(v184 + v132);
          if (v135 > 285212703)
          {
            goto LABEL_206;
          }

          goto LABEL_229;
        }

        if (v133 == 285212736)
        {
          v134 = 448;
          v135 = *(v184 + v132);
          if (v135 <= 285212703)
          {
            goto LABEL_229;
          }

          goto LABEL_206;
        }
      }
    }

    else if (v133 <= 536870927)
    {
      if (v133 == 536870916)
      {
        v134 = 0;
        v135 = *(v184 + v132);
        if (v135 > 285212703)
        {
          goto LABEL_206;
        }

        goto LABEL_229;
      }

      if (v133 == 536870920)
      {
        v134 = 32;
        v135 = *(v184 + v132);
        if (v135 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      }
    }

    else
    {
      switch(v133)
      {
        case 536870928:
          v134 = 64;
          v135 = *(v184 + v132);
          if (v135 <= 285212703)
          {
            goto LABEL_229;
          }

          goto LABEL_206;
        case 536870944:
          v134 = 96;
          v135 = *(v184 + v132);
          if (v135 <= 285212703)
          {
            goto LABEL_229;
          }

          goto LABEL_206;
        case 536870976:
          v134 = 128;
          v135 = *(v184 + v132);
          if (v135 <= 285212703)
          {
            goto LABEL_229;
          }

          goto LABEL_206;
      }
    }
  }

  else if (v133 <= 31)
  {
    if (v133 > 7)
    {
      if (v133 == 8)
      {
        v134 = 192;
        v135 = *(v184 + v132);
        if (v135 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      }

      if (v133 == 16)
      {
        v134 = 224;
        v135 = *(v184 + v132);
        if (v135 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      }
    }

    else
    {
      if (v133 == -1879048176)
      {
        v134 = 384;
        v135 = *(v184 + v132);
        if (v135 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      }

      if (v133 == 4)
      {
        v134 = 160;
        v135 = *(v184 + v132);
        if (v135 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      }
    }
  }

  else if (v133 <= 268435463)
  {
    if (v133 == 32)
    {
      v134 = 256;
      v135 = *(v184 + v132);
      if (v135 <= 285212703)
      {
        goto LABEL_229;
      }

      goto LABEL_206;
    }

    if (v133 == 64)
    {
      v134 = 288;
      v135 = *(v184 + v132);
      if (v135 <= 285212703)
      {
        goto LABEL_229;
      }

      goto LABEL_206;
    }
  }

  else
  {
    switch(v133)
    {
      case 268435464:
        v134 = 480;
        v135 = *(v184 + v132);
        if (v135 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      case 268435472:
        v134 = 320;
        v135 = *(v184 + v132);
        if (v135 <= 285212703)
        {
          goto LABEL_229;
        }

        goto LABEL_206;
      case 268435488:
        v134 = 352;
        v135 = *(v184 + v132);
        if (v135 > 285212703)
        {
          goto LABEL_206;
        }

LABEL_229:
        if (v135 <= 31)
        {
          if (v135 > 7)
          {
            if (v135 == 8)
            {
              v134 |= 0x1800uLL;
              v136 = *(v180 + v132);
              if (v136 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
            }

            if (v135 == 16)
            {
              v134 |= 0x1C00uLL;
              v136 = *(v180 + v132);
              if (v136 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
            }
          }

          else
          {
            if (v135 == -1879048176)
            {
              v134 |= 0x3000uLL;
              v136 = *(v180 + v132);
              if (v136 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
            }

            if (v135 == 4)
            {
              v134 |= 0x1400uLL;
              v136 = *(v180 + v132);
              if (v136 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
            }
          }
        }

        else if (v135 <= 268435463)
        {
          if (v135 == 32)
          {
            v134 |= 0x2000uLL;
            v136 = *(v180 + v132);
            if (v136 <= 285212703)
            {
              goto LABEL_267;
            }

            goto LABEL_250;
          }

          if (v135 == 64)
          {
            v134 |= 0x2400uLL;
            v136 = *(v180 + v132);
            if (v136 <= 285212703)
            {
              goto LABEL_267;
            }

            goto LABEL_250;
          }
        }

        else
        {
          switch(v135)
          {
            case 268435464:
              v134 |= 0x3C00uLL;
              v136 = *(v180 + v132);
              if (v136 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
            case 268435472:
              v134 |= 0x2800uLL;
              v136 = *(v180 + v132);
              if (v136 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
            case 268435488:
              v134 |= 0x2C00uLL;
              v136 = *(v180 + v132);
              if (v136 <= 285212703)
              {
                goto LABEL_267;
              }

              goto LABEL_250;
          }
        }

LABEL_323:
        v134 |= 0x4800uLL;
        v136 = *(v180 + v132);
        if (v136 <= 285212703)
        {
          goto LABEL_267;
        }

LABEL_250:
        if (v136 <= 536870915)
        {
          if (v136 > 301989895)
          {
            if (v136 == 301989896)
            {
              v137 = 0x80000;
              goto LABEL_326;
            }

            if (v136 == 335544328)
            {
              v137 = 557056;
              goto LABEL_326;
            }
          }

          else
          {
            if (v136 == 285212704)
            {
              v137 = 425984;
              goto LABEL_326;
            }

            if (v136 == 285212736)
            {
              v137 = 458752;
              goto LABEL_326;
            }
          }
        }

        else if (v136 <= 536870927)
        {
          if (v136 == 536870916)
          {
            v137 = 0;
            goto LABEL_326;
          }

          if (v136 == 536870920)
          {
            v137 = 0x8000;
            goto LABEL_326;
          }
        }

        else
        {
          switch(v136)
          {
            case 536870928:
              v137 = 0x10000;
              goto LABEL_326;
            case 536870944:
              v137 = 98304;
              goto LABEL_326;
            case 536870976:
              v137 = 0x20000;
              goto LABEL_326;
          }
        }

        goto LABEL_325;
    }
  }

  v134 = 576;
  v135 = *(v184 + v132);
  if (v135 <= 285212703)
  {
    goto LABEL_229;
  }

LABEL_206:
  if (v135 <= 536870915)
  {
    if (v135 > 301989895)
    {
      if (v135 == 301989896)
      {
        v134 |= 0x4000uLL;
        v136 = *(v180 + v132);
        if (v136 > 285212703)
        {
          goto LABEL_250;
        }

        goto LABEL_267;
      }

      if (v135 == 335544328)
      {
        v134 |= 0x4400uLL;
        v136 = *(v180 + v132);
        if (v136 <= 285212703)
        {
          goto LABEL_267;
        }

        goto LABEL_250;
      }
    }

    else
    {
      if (v135 == 285212704)
      {
        v134 |= 0x3400uLL;
        v136 = *(v180 + v132);
        if (v136 > 285212703)
        {
          goto LABEL_250;
        }

        goto LABEL_267;
      }

      if (v135 == 285212736)
      {
        v134 |= 0x3800uLL;
        v136 = *(v180 + v132);
        if (v136 <= 285212703)
        {
          goto LABEL_267;
        }

        goto LABEL_250;
      }
    }

    goto LABEL_323;
  }

  if (v135 <= 536870927)
  {
    if (v135 == 536870916)
    {
      v136 = *(v180 + v132);
      if (v136 > 285212703)
      {
        goto LABEL_250;
      }

      goto LABEL_267;
    }

    if (v135 == 536870920)
    {
      v134 |= 0x400uLL;
      v136 = *(v180 + v132);
      if (v136 <= 285212703)
      {
        goto LABEL_267;
      }

      goto LABEL_250;
    }

    goto LABEL_323;
  }

  if (v135 == 536870928)
  {
    v134 |= 0x800uLL;
    v136 = *(v180 + v132);
    if (v136 <= 285212703)
    {
      goto LABEL_267;
    }

    goto LABEL_250;
  }

  if (v135 == 536870944)
  {
    v134 |= 0xC00uLL;
    v136 = *(v180 + v132);
    if (v136 <= 285212703)
    {
      goto LABEL_267;
    }

    goto LABEL_250;
  }

  if (v135 != 536870976)
  {
    goto LABEL_323;
  }

  v134 |= 0x1000uLL;
  v136 = *(v180 + v132);
  if (v136 > 285212703)
  {
    goto LABEL_250;
  }

LABEL_267:
  if (v136 <= 31)
  {
    if (v136 > 7)
    {
      if (v136 == 8)
      {
        v137 = 196608;
        goto LABEL_326;
      }

      if (v136 == 16)
      {
        v137 = 229376;
        goto LABEL_326;
      }
    }

    else
    {
      if (v136 == -1879048176)
      {
        v137 = 393216;
        goto LABEL_326;
      }

      if (v136 == 4)
      {
        v137 = 163840;
        goto LABEL_326;
      }
    }
  }

  else if (v136 <= 268435463)
  {
    if (v136 == 32)
    {
      v137 = 0x40000;
      goto LABEL_326;
    }

    if (v136 == 64)
    {
      v137 = 294912;
      goto LABEL_326;
    }
  }

  else
  {
    switch(v136)
    {
      case 268435464:
        v137 = 491520;
        goto LABEL_326;
      case 268435472:
        v137 = 327680;
        goto LABEL_326;
      case 268435488:
        v137 = 360448;
        goto LABEL_326;
    }
  }

LABEL_325:
  v137 = 589824;
LABEL_326:
  v138 = v134 | v137;
  v139 = *&v167[v132];
  v181 = TempBuffer;
  if (v139 > 285212703)
  {
    if (v139 <= 536870915)
    {
      if (v139 > 301989895)
      {
        if (v139 == 301989896)
        {
          v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
          v141 = v161 * v160;
          v142 = 16;
          goto LABEL_370;
        }

        if (v139 == 335544328)
        {
          v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
          v141 = v161 * v160;
          v142 = 17;
          goto LABEL_370;
        }
      }

      else
      {
        if (v139 == 285212704)
        {
          v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
          v141 = v161 * v160;
          v142 = 13;
          goto LABEL_370;
        }

        if (v139 == 285212736)
        {
          v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
          v141 = v161 * v160;
          v142 = 14;
          goto LABEL_370;
        }
      }
    }

    else if (v139 <= 536870927)
    {
      if (v139 == 536870916)
      {
        v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
        v141 = v161 * v160;
        v142 = 0;
        goto LABEL_370;
      }

      if (v139 == 536870920)
      {
        v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
        v141 = v161 * v160;
        v142 = 1;
        goto LABEL_370;
      }
    }

    else
    {
      switch(v139)
      {
        case 536870928:
          v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
          v141 = v161 * v160;
          v142 = 2;
          goto LABEL_370;
        case 536870944:
          v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
          v141 = v161 * v160;
          v142 = 3;
          goto LABEL_370;
        case 536870976:
          v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
          v141 = v161 * v160;
          v142 = 4;
          goto LABEL_370;
      }
    }
  }

  else if (v139 <= 31)
  {
    if (v139 > 7)
    {
      if (v139 == 8)
      {
        v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
        v141 = v161 * v160;
        v142 = 6;
        goto LABEL_370;
      }

      if (v139 == 16)
      {
        v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
        v141 = v161 * v160;
        v142 = 7;
        goto LABEL_370;
      }
    }

    else
    {
      if (v139 == -1879048176)
      {
        v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
        v141 = v161 * v160;
        v142 = 12;
        goto LABEL_370;
      }

      if (v139 == 4)
      {
        v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
        v141 = v161 * v160;
        v142 = 5;
        goto LABEL_370;
      }
    }
  }

  else if (v139 <= 268435463)
  {
    if (v139 == 32)
    {
      v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
      v141 = v161 * v160;
      v142 = 8;
      goto LABEL_370;
    }

    if (v139 == 64)
    {
      v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
      v141 = v161 * v160;
      v142 = 9;
      goto LABEL_370;
    }
  }

  else
  {
    switch(v139)
    {
      case 268435464:
        v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
        v141 = v161 * v160;
        v142 = 15;
        goto LABEL_370;
      case 268435472:
        v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
        v141 = v161 * v160;
        v142 = 10;
        goto LABEL_370;
      case 268435488:
        v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
        v141 = v161 * v160;
        v142 = 11;
        goto LABEL_370;
    }
  }

  v140 = (4 * v183 * v168 + 15) & 0x7FFFFFFF0;
  v141 = v161 * v160;
  v142 = 18;
LABEL_370:
  *&v143 = -1;
  *(&v143 + 1) = -1;
  v236 = v143;
  v235 = v143;
  v234 = v143;
  v232 = -1;
  v231 = v143;
  v233 = v138 | v142;
  *&v236 = [*(v186 + 16) count] | ((*(v186 + 112) != 0) << 8) | 0x10000;
  v232 = 0;
  v144 = [(__CFString *)(&CommonKernels)[16 * v117] UTF8String];
  MPSKernel_LogInfo(v163, v145, "QuantizedSDPA: kernel %s is encoded, threadsPerGroup: (%lu, %lu, %lu), threadGroups: (%lu, %lu, %lu)\n", v144, v159, v175, 1, v130, 1, v141);
  v152 = *(v186 + 232);
  MPSLibrary::CreateUberShaderKey();
  [a1 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v152, v155, v154, 0, 0}];
  MPSSetNDArraysOnComputeEncoder(a1, v186, 4, 0, 0);
  v146 = objc_autoreleasePoolPush();
  [a1 setThreadgroupMemoryLength:v125 atIndex:0];
  [a1 setThreadgroupMemoryLength:v125 atIndex:1];
  if ((v124 & 0x1000) != 0)
  {
    v147 = v140;
  }

  else
  {
    v147 = 16;
  }

  [a1 setThreadgroupMemoryLength:v147 atIndex:2];
  [a1 setThreadgroupMemoryLength:v178 atIndex:3];
  [a1 setThreadgroupMemoryLength:v178 atIndex:4];
  if ((v124 & 0x200) != 0)
  {
    [a1 setThreadgroupMemoryLength:v183 * v171 * (v173 >> 3) atIndex:5];
    [a1 setThreadgroupMemoryLength:v176 * v171 * (v166 >> 3) atIndex:6];
  }

  [a1 setBytes:&v237 length:180 atIndex:29];
  [a1 setBuffer:objc_msgSend(v167 offset:"buffer") atIndex:{0, 28}];
  if ((v124 & 0x1000) == 0)
  {
    [a1 setBuffer:v181 offset:0 atIndex:27];
  }

  v230[0] = (v179 + v183 - 1) / v183;
  v230[1] = 1;
  v230[2] = v141;
  v229[0] = v159;
  v229[1] = v175;
  v229[2] = 1;
  [a1 dispatchThreadgroups:v230 threadsPerThreadgroup:v229];
  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  objc_autoreleasePoolPop(v146);
  v128 = 0;
  v129 = v281;
  if (v281)
  {
    do
    {
LABEL_378:
      v148 = *v129;
      operator delete(v129);
      v129 = v148;
    }

    while (v148);
  }

LABEL_379:
  v149 = v280;
  *&v280 = 0;
  if (v149)
  {
    operator delete(v149);
  }

  MPSAutoCache::~MPSAutoCache(v283);
  return v128;
}

void sub_239AC35E0(_Unwind_Exception *a1)
{
  std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100](v2 - 176);
  if (v1)
  {
    operator delete(v1);
  }

  MPSAutoCache::~MPSAutoCache((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t MPSNDArraySDPAA14Behavior::EncodeQuantizedSDPA(uint64_t a1, MPSKernel *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a5 + 232) inputTensorAtIndex:0];
  v10 = *([*(a5 + 232) outputTensorAtIndex:0] + 8);
  if (v10 != 268435472 && v10 != 268435488)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v12 = *(&a2->super.isa + *MEMORY[0x277CD7370]);
  v13 = *(&a2->super.isa + *MEMORY[0x277CD7350]);
  [(MPSKernel *)a2 layout];
  if (BaseTensor::GetDimensionSize(v9) >= 8)
  {
    MPSKernel_LogInfo(a2, v14, "A14 Encoder: Encoding 8x8 TEC based QuantizedSDPA kernel\n");
    result = EncodeQuantizedSDPATileBasedCommon(a3, a4, a5, v13, v12, a2, qword_239B1F400);
    if (!result)
    {
      return result;
    }

    MPSKernel_LogInfo(a2, v16, "A14 Encoder: Encoding failed, fall back to vector based QuantizedSDPA kernel\n");
  }

  MPSKernel_LogInfo(a2, v14, "Encoding vector based QuantizedSDPA kernel\n");

  return EncodeQuantizedSDPAVectorBased(a3, a4, a5, v13, v12, a2);
}

uint64_t EncodeSDPA(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  v9 = a4[13];
  v50 = a4[12];
  v51 = v9;
  v52 = a4[14];
  v10 = a4[9];
  v46 = a4[8];
  v47 = v10;
  v11 = a4[11];
  v48 = a4[10];
  v49 = v11;
  v12 = a4[5];
  v42 = a4[4];
  v43 = v12;
  v13 = a4[7];
  v44 = a4[6];
  v45 = v13;
  v14 = a4[1];
  v38 = *a4;
  v39 = v14;
  v15 = a4[3];
  v40 = a4[2];
  v41 = v15;
  v16 = [*(&v52 + 1) inputTensorAtIndex:0];
  v17 = [*(&v52 + 1) inputTensorAtIndex:1];
  [a1 layout];
  BaseTensor::GetDimensionSize(v16);
  [a1 layout];
  BaseTensor::GetDimensionSize(v17);
  BaseTensor::GetDimensionSize(v16);
  v18 = [v39 count];
  if (![v39 count])
  {
LABEL_18:
    if (qword_27DF869A8 == -1)
    {
      if (_MergedGlobals_5)
      {
LABEL_21:
        if ([a1 layout] == 1 && v18 >= 5)
        {
          v24 = [v39 objectAtIndexedSubscript:4];
          v25 = *(v24 + *MEMORY[0x277CD73F0]);
          if (v25)
          {
            v26 = 0;
            v27 = (v24 + *MEMORY[0x277CD7410]);
            v29 = v27[2];
            v28 = v27[3];
            v31 = *v27;
            v30 = v27[1];
            v32 = *(v24 + *MEMORY[0x277CD73D8]);
            v33 = 1;
            do
            {
              v36 = v32;
              v37[0] = v31;
              v37[1] = v30;
              v37[2] = v29;
              v37[3] = v28;
              v33 *= *(v37 + (*(&v36 | v26++ & 0xF) & 0xF));
            }

            while (v25 != v26);
            if (v33 != 1 && MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }
        }

        operator new();
      }
    }

    else
    {
      dispatch_once(&qword_27DF869A8, &__block_literal_global_4);
      if (_MergedGlobals_5)
      {
        goto LABEL_21;
      }
    }

    [a1 layout];
    goto LABEL_21;
  }

  v19 = [v39 objectAtIndexedSubscript:0];
  if (v19)
  {
    v20 = *(v19 + *MEMORY[0x277CD73D8]) != 0;
    if ([v39 count] < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = 0;
    if ([v39 count] < 2)
    {
      goto LABEL_16;
    }
  }

  if (v20)
  {
    goto LABEL_16;
  }

  v22 = [v39 objectAtIndexedSubscript:1];
  if (v22)
  {
    v20 = *(v22 + *MEMORY[0x277CD73D8]) != 0;
    if ([v39 count] < 3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v20 = 0;
    if ([v39 count] < 3)
    {
      goto LABEL_16;
    }
  }

  if (!v20)
  {
    v23 = [v39 objectAtIndexedSubscript:2];
    if (v23)
    {
      v20 = *(v23 + *MEMORY[0x277CD73D8]) != 0;
    }

    else
    {
      v20 = 0;
    }

    [v39 count];
  }

LABEL_16:
  if (!v20)
  {
    goto LABEL_18;
  }

  MPSKernel_LogInfo(a1, v21, "Fallback to multi-dispatch (2Gemm) encoding\n");
  EncodeSDPAFallback(a1, a2, a3, &v38);
  objc_autoreleasePoolPop(v8);
  v34 = *MEMORY[0x277D85DE8];
  return 0;
}

void MPSNDArraySDPADeviceBehavior::EncodeSDPA(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a5 + 232) inputTensorAtIndex:0];
  if (*(v9 + 8) != *([*(a5 + 232) outputTensorAtIndex:0] + 8) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = *&a2[*MEMORY[0x277CD7370]];
  v11 = *&a2[*MEMORY[0x277CD7350]];
  if ([a2 kernelType] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  MPSKernel_LogInfo(a2, v12, "Default Encoder: Encoding vector based SDPA\n");

  EncodeSDPACommonNew(a3, a4, a5, v11, v10, a2);
}

void EncodeSDPACommonNew(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v11 = *&a6[*MEMORY[0x277CD7378]];
  v10 = *&a6[*MEMORY[0x277CD7360]];
  v9 = *&a6[*MEMORY[0x277CD7368]];
  [a6 alpha];
  [a6 layout];
  MEMORY[0x23EE7C450](v12, a2, 0);
  [*(a3 + 232) graph];
  operator new();
}

void sub_239AC583C(_Unwind_Exception *a1)
{
  std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100](v2 - 176);
  if (v1)
  {
    operator delete(v1);
  }

  MPSAutoCache::~MPSAutoCache((v2 - 136));
  _Unwind_Resume(a1);
}

uint64_t MPSNDArraySDPADeviceBehavior::EncodeQuantizedSDPA(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  [*(a5 + 232) inputTensorAtIndex:0];
  v10 = *([*(a5 + 232) outputTensorAtIndex:0] + 8);
  if (v10 != 268435472 && v10 != 268435488)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v12 = *&a2[*MEMORY[0x277CD7370]];
  v13 = *&a2[*MEMORY[0x277CD7350]];
  MPSKernel_LogInfo(a2, v9, "Encoding vector based QuantizedSDPA kernel\n");

  return EncodeQuantizedSDPAVectorBased(a3, a4, a5, v13, v12, a2);
}

uint64_t EncodeQuantizedSDPAVectorBased(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v136 = *&a6[*MEMORY[0x277CD7378]];
  v130 = *&a6[*MEMORY[0x277CD7360]];
  v129 = *&a6[*MEMORY[0x277CD7368]];
  [a6 alpha];
  v10 = v9;
  context = a6;
  v139 = [a6 layout];
  MEMORY[0x23EE7C450](v263, a2, 0);
  v11 = [*(a3 + 232) graph];
  v145 = a3;
  if ([*(a3 + 16) count])
  {
    operator new();
  }

  v260 = 0u;
  v261 = 0u;
  v262 = 1065353216;
  v12 = *(v11 + 64);
  v13 = *v12;
  v14 = v12[1];
  if ((v136 & 1) == 0 && *(&v261 + 1))
  {
    v15 = 0;
    do
    {
      if (*(&v260 + 1))
      {
        v16 = vcnt_s8(*(&v260 + 8));
        v16.i16[0] = vaddlv_u8(v16);
        if (v16.u32[0] > 1uLL)
        {
          v17 = v15;
          if (*(&v260 + 1) <= v15)
          {
            v17 = v15 % DWORD2(v260);
          }
        }

        else
        {
          v17 = (DWORD2(v260) - 1) & v15;
        }

        v18 = *(v260 + 8 * v17);
        if (v18)
        {
          v19 = *v18;
          if (v19)
          {
            if (v16.u32[0] < 2uLL)
            {
              while (1)
              {
                v21 = v19[1];
                if (v21 == v15)
                {
                  if (*(v19 + 4) == v15)
                  {
                    goto LABEL_6;
                  }
                }

                else if ((v21 & (*(&v260 + 1) - 1)) != v17)
                {
                  goto LABEL_27;
                }

                v19 = *v19;
                if (!v19)
                {
                  goto LABEL_27;
                }
              }
            }

            do
            {
              v20 = v19[1];
              if (v20 == v15)
              {
                if (*(v19 + 4) == v15)
                {
                  goto LABEL_6;
                }
              }

              else
              {
                if (v20 >= *(&v260 + 1))
                {
                  v20 %= *(&v260 + 1);
                }

                if (v20 != v17)
                {
                  break;
                }
              }

              v19 = *v19;
            }

            while (v19);
          }
        }
      }

LABEL_27:
      if (MTLReportFailureTypeEnabled())
      {
        v120 = v15;
        MTLReportFailure();
      }

LABEL_6:
      ++v15;
    }

    while (v15 < *(&v261 + 1));
  }

  v22 = [*(a3 + 16) count];
  v23 = *(a3 + 16);
  LODWORD(v209) = 0;
  v214 = &v209;
  v142 = [v23 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v260, 0) + 5)}];
  v24 = *(a3 + 16);
  LODWORD(v209) = 1;
  v214 = &v209;
  v25 = [v24 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v260, 1u) + 5)}];
  v26 = *(a3 + 16);
  LODWORD(v209) = 2;
  v214 = &v209;
  v27 = [v26 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v260, 2u) + 5)}];
  v28 = *(a3 + 16);
  LODWORD(v209) = 3;
  v214 = &v209;
  v135 = [v28 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v260, 3u) + 5)}];
  v29 = 4;
  if (v22 == 7)
  {
    v30 = *(a3 + 16);
    LODWORD(v209) = 4;
    v214 = &v209;
    v31 = [v30 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v260, 4u) + 5)}];
    v29 = 5;
  }

  else
  {
    v31 = 0;
  }

  v32 = *(v145 + 16);
  LODWORD(v209) = v29;
  v214 = &v209;
  v33 = [v32 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v260, v29) + 5)}];
  v34 = v29 + 1;
  v35 = *(v145 + 16);
  LODWORD(v209) = v34;
  v214 = &v209;
  v36 = [v35 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v260, v34) + 5)}];
  v37 = v22;
  v131 = *(v145 + 208);
  v128 = [*(v145 + 232) outputTensorAtIndex:0];
  if (v139 == 1)
  {
    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  v39 = *MEMORY[0x277CD7410];
  v40 = *(v142 + v39);
  v41 = *(v142 + v39 + 16);
  v42 = *(v142 + v39 + 32);
  v43 = *(v142 + v39 + 48);
  v44 = *MEMORY[0x277CD73D8];
  v45 = *(v142 + v44);
  v184[3] = v43;
  v184[2] = v42;
  v184[1] = v41;
  v184[0] = v40;
  v46 = *(v184 + (v45 & 0xF));
  if (v139 == 1)
  {
    v47 = 2;
  }

  else
  {
    v47 = 1;
  }

  v179 = v45;
  v183[3] = v43;
  v183[2] = v42;
  v183[1] = v41;
  v183[0] = v40;
  v143 = *(v183 + (*(&v179 | v47 & 0xF) & 0xF));
  v48 = (v25 + v39);
  v49 = *v48;
  v50 = v48[1];
  v51 = v48[2];
  v52 = v48[3];
  v180 = *(v25 + v44);
  v186[3] = v52;
  v186[2] = v51;
  v186[1] = v50;
  v186[0] = v49;
  v144 = *(v186 + (*(&v180 | v47 & 0xF) & 0xF));
  v127 = v38;
  v182[3] = v43;
  v182[2] = v42;
  v182[1] = v41;
  v182[0] = v40;
  v138 = *(v182 + (*(&v179 | v38 & 0xF) & 0xF));
  v185[3] = v52;
  v185[2] = v51;
  v185[1] = v50;
  v185[0] = v49;
  v53 = *(v185 + (*(&v180 | v38 & 0xF) & 0xF));
  v181[3] = v43;
  v181[2] = v42;
  v181[1] = v41;
  v181[0] = v40;
  v134 = *(v181 + (BYTE3(v45) & 0xF));
  v140 = *(a4 + 1482);
  if ((v136 & 1) == 0)
  {
    if (validateQuantizedSDPA(v142, v25, v27, v135, v31, v33, v36, v139))
    {
      v54 = -19;
      goto LABEL_111;
    }

    if (*(v142 + *MEMORY[0x277CD7428] + 8 * (*(v142 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v25 + *MEMORY[0x277CD7428] + 8 * (*(v25 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v27 + *MEMORY[0x277CD7428] + 8 * (*(v27 + *MEMORY[0x277CD73D8]) & 0xF)) != 1 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v214 = __PAIR64__(v46, v10);
  v221 = v134;
  v219 = v138;
  v220 = v138 / v53;
  v217 = v144;
  v218 = 256;
  v216 = v143;
  LODWORD(v204) = 0;
  *&v209 = &v204;
  v224 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v260, 0) + 20);
  LODWORD(v204) = 1;
  *&v209 = &v204;
  v225 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v260, 1u) + 20);
  LODWORD(v204) = 2;
  *&v209 = &v204;
  v226 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v260, 2u) + 20);
  LODWORD(v204) = 3;
  *&v209 = &v204;
  v227 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v260, 3u) + 20);
  LODWORD(v204) = 4;
  *&v209 = &v204;
  if (v37 == 7)
  {
    v228 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v260, 4u) + 20);
    LODWORD(v204) = 5;
    *&v209 = &v204;
    v229 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v260, 5u) + 20);
    LODWORD(v204) = 6;
    *&v209 = &v204;
    v55 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v260, 6u);
  }

  else
  {
    v229 = *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v260, 4u) + 20);
    LODWORD(v204) = 5;
    *&v209 = &v204;
    v55 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v260, 5u);
  }

  v230 = *(v55 + 20);
  v56 = *MEMORY[0x277CD7428];
  v57 = *MEMORY[0x277CD73D8];
  v169 = *(v142 + v57);
  v239 = *(v142 + v56 + 8 * (*(&v169 | v47 & 0xF) & 0xF));
  v170 = *(v142 + v57);
  v240 = *(v142 + v56 + 8 * (*(&v170 | v127 & 0xF) & 0xF));
  v241 = *(v142 + v56 + 8 * (*(v142 + v57 + 3) & 0xF));
  v171 = *(v25 + v57);
  v242 = *(v25 + v56 + 8 * (*(&v171 | v47 & 0xF) & 0xF));
  v172 = *(v25 + v57);
  v243 = *(v25 + v56 + 8 * (*(&v172 | v127 & 0xF) & 0xF));
  v244 = *(v25 + v56 + 8 * (*(v25 + v57 + 3) & 0xF));
  v245 = *(v135 + v56 + 8 * (*(v135 + v57) & 0xF));
  v173 = *(v135 + v57);
  v246 = *(v135 + v56 + 8 * (*(&v173 | v47 & 0xF) & 0xF));
  v174 = *(v135 + v57);
  v247 = *(v135 + v56 + 8 * (*(&v174 | v127 & 0xF) & 0xF));
  v248 = *(v135 + v56 + 8 * (*(v135 + v57 + 3) & 0xF));
  v175 = *(v27 + v57);
  v249 = *(v27 + v56 + 8 * (*(&v175 | v47 & 0xF) & 0xF));
  v176 = *(v27 + v57);
  v250 = *(v27 + v56 + 8 * (*(&v176 | v127 & 0xF) & 0xF));
  v251 = *(v27 + v56 + 8 * (*(v27 + v57 + 3) & 0xF));
  v177 = *&v131[v57];
  LODWORD(v252) = *&v131[8 * (*(&v177 | v47 & 0xF) & 0xF) + v56];
  v178 = *&v131[v57];
  DWORD1(v252) = *&v131[8 * (*(&v178 | v127 & 0xF) & 0xF) + v56];
  DWORD2(v252) = *&v131[8 * (v131[v57 + 3] & 0xF) + v56];
  v58 = *MEMORY[0x277CD7410];
  v59 = v33 + v57;
  if (v31)
  {
    v164 = *(v31 + v57);
    v256 = *(v31 + v58 + 4 * (*(&v164 | v127 & 0xF) & 0xF));
    v257 = *(v33 + v58 + 4 * (*(v59 + 3) & 0xF));
    v165 = *(v31 + v57);
    v259 = *(v31 + v58 + 4 * (*(&v165 | v47 & 0xF) & 0xF));
    v166 = *(v36 + v57);
    v258 = *(v36 + v58 + 4 * (*(&v166 | v47 & 0xF) & 0xF));
    v167 = *(v31 + v57);
    LODWORD(v231) = *(v31 + v56 + 8 * (*(&v167 | v47 & 0xF) & 0xF));
    v168 = *(v31 + v57);
    HIDWORD(v231) = *(v31 + v56 + 8 * (*(&v168 | v127 & 0xF) & 0xF));
    v60 = *(v31 + v56 + 8 * (*(v31 + v57 + 3) & 0xF));
  }

  else
  {
    LODWORD(v60) = 0;
    v162 = *(v33 + v57);
    v256 = *(v33 + v58 + 4 * (*(&v162 | v127 & 0xF) & 0xF));
    v257 = *(v33 + v58 + 4 * (*(v59 + 3) & 0xF));
    v259 = 0;
    v163 = *(v36 + v57);
    v258 = *(v36 + v58 + 4 * (*(&v163 | v47 & 0xF) & 0xF));
    v231 = 0;
  }

  v232 = v60;
  v154 = *(v33 + v57);
  v233 = *(v33 + v56 + 8 * (*(&v154 | v47 & 0xF) & 0xF));
  v155 = *(v33 + v57);
  v234 = *(v33 + v56 + 8 * (*(&v155 | v127 & 0xF) & 0xF));
  v235 = *(v33 + v56 + 8 * (*(v59 + 3) & 0xF));
  v63 = v36 + v56;
  v156 = *(v36 + v57);
  v236 = *(v63 + 8 * (*(&v156 | v47 & 0xF) & 0xF));
  v157 = *(v36 + v57);
  v237 = *(v63 + 8 * (*(&v157 | v127 & 0xF) & 0xF));
  v238 = *(v63 + 8 * (*(v36 + v57 + 3) & 0xF));
  v61 = v46 + 3;
  v62 = v61 & 0xFFFFFFFC;
  LODWORD(v63) = (v144 + 255) >> 8;
  v123 = v63;
  if (v144 <= 0x100)
  {
    v63 = 1;
  }

  else
  {
    v63 = v63;
  }

  v215 = v61 & 0xFFFFFFFC;
  v137 = v63;
  v223 = v63;
  v64 = *(a4 + 1472) < 18;
  v65 = 72;
  v66 = (v135 + v58);
  v67 = *v66;
  v68 = v66[1];
  v69 = v66[2];
  v70 = v66[3];
  v71 = *(v135 + v57);
  v158 = v71;
  v161[2] = v69;
  v161[3] = v70;
  v161[0] = v67;
  v161[1] = v68;
  v72 = *(v161 + (*(&v158 | v127 & 0xF) & 0xF));
  if (v64)
  {
    v65 = 33554504;
  }

  v160[2] = v69;
  v160[3] = v70;
  v160[0] = v67;
  v160[1] = v68;
  v73 = v65 | ((v72 * *(v160 + (BYTE3(v71) & 0xF)) != 1) << 8);
  v159[2] = v69;
  v159[3] = v70;
  v159[0] = v67;
  v159[1] = v68;
  if (*(v159 + (v71 & 0xF)) != 1)
  {
    v152 = v71;
    v153[0] = v67;
    v153[1] = v68;
    v153[2] = v69;
    v153[3] = v70;
    *(v153 + (*(&v152 | v47 & 0xF) & 0xF));
  }

  *(v142 + *MEMORY[0x277CD73C8]);
  *(v128 + 8);
  v74 = v46;
  v75 = *(a4 + 1476);
  v125 = v74;
  v124 = v61;
  if ([context kernelType])
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v76 = 0;
  }

  else
  {
    v76 = 4;
  }

  *&v77 = -1;
  *(&v77 + 1) = -1;
  v213 = v77;
  v212 = v77;
  v211 = v77;
  v210 = 0xFFFFFFFFFFFFFFFFLL;
  v209 = v77;
  *&v213 = [*(v145 + 16) count] | ((*(v145 + 112) != 0) << 8) | 0x10000;
  *&v210 = 0;
  v78 = (&CommonKernels)[16 * v76];
  v121 = *(v145 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  [a1 setComputePipelineState:{PipelineStateForMPSKey, v121, v130, v129, 0, 0}];
  v80 = [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup] / v140;
  v81 = (v144 + 7) >> 3;
  if (v81 >= v80)
  {
    v82 = v80;
  }

  else
  {
    v82 = (v144 + 7) >> 3;
  }

  v83 = (4 * v124) & 0x3FFFFFFF0;
  v84 = v83 + 32 + 4 * v82 * v62 + ((8 * v82 + 30) & 0x1FFFFFFE0);
  if ((v75 & 0x40) == 0)
  {
    v84 += (4 * v82 * v140 + 15) & 0x7FFFFFFF0;
  }

  v85 = v84 > 0x8000;
  v86 = v82 != 0;
  if (v82)
  {
    v87 = v85;
  }

  else
  {
    v87 = 0;
  }

  if (v87)
  {
    if (v81 < v80)
    {
      LODWORD(v80) = (v144 + 7) >> 3;
    }

    do
    {
      v82 = v80 - 1;
      v89 = v83 + 32 + 4 * ((v80 - 1) * v62) + ((8 * (v80 - 1) + 30) & 0xFFFFFFFE0);
      if ((v75 & 0x40) == 0)
      {
        v89 += (4 * v82 * v140 + 15) & 0x7FFFFFFF0;
      }

      v86 = v80 != 1;
      LODWORD(v80) = v80 - 1;
    }

    while (v89 > 0x8000 && v82 != 0);
  }

  if (!v86 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v90 = (v134 * v138);
  v91 = v90 * v143 * v137;
  v92 = v91 * v82;
  do
  {
    v93 = v82 - 1;
    if (v82 < 2)
    {
      break;
    }

    --v82;
    v64 = v92 > 8 * *(a4 + 1480);
    v92 -= v91;
  }

  while (v64);
  if (v93)
  {
    v94 = v87;
  }

  else
  {
    v94 = 1;
  }

  if (v94)
  {
    v95 = v93 + 1;
  }

  else
  {
    v95 = (v93 + 2) & 0xFFFFFFFE;
  }

  v222 = v95;
  v96 = [(__CFString *)v78 UTF8String];
  v97 = v95 * v140;
  MPSKernel_LogInfo(context, v98, "QuantizedSDPA: kernel %s is encoded, threadsPerGroup: (%lu, %lu, %lu), threadGroups: (%lu, %lu, %lu)\n", v96, v97, 1, 1, v143, v137, v90);
  MPSSetNDArraysOnComputeEncoder(a1, v145, 4, 0, 0);
  contexta = objc_autoreleasePoolPush();
  [a1 setThreadgroupMemoryLength:32 atIndex:0];
  [a1 setThreadgroupMemoryLength:v83 atIndex:1];
  [a1 setThreadgroupMemoryLength:4 * v95 * v62 atIndex:2];
  v99 = 4 * v95 + 15;
  [a1 setThreadgroupMemoryLength:v99 & 0x7FFFFFFF0 atIndex:3];
  [a1 setThreadgroupMemoryLength:v99 & 0x7FFFFFFF0 atIndex:4];
  if ((v75 & 0x40) == 0)
  {
    [a1 setThreadgroupMemoryLength:(4 * v97 + 15) & 0x7FFFFFFF0 atIndex:5];
  }

  if (v144 < 0x101)
  {
    v101 = 0;
    TempBuffer = 0;
  }

  else
  {
    TempBuffer = MPSAutoCache::GetTempBuffer(v263, 4 * v125 * v143 * v138 * v134 * v137, 0);
    v101 = MPSAutoCache::GetTempBuffer(v263, 4 * v125 * v143 * v138 * v134 * v137, 0);
    HIDWORD(v252) = v125;
    LODWORD(v253) = v123 * v125;
    DWORD1(v253) = v123 * v125 * v143;
    DWORD2(v253) = DWORD1(v253) * v138;
    HIDWORD(v253) = 1;
    LODWORD(v254) = (v144 + 255) >> 8;
    HIDWORD(v254) = v123 * v143;
    v255 = v123 * v143 * v138;
    [a1 setBuffer:TempBuffer offset:0 atIndex:27];
    [a1 setBuffer:v101 offset:0 atIndex:26];
  }

  [a1 setBytes:&v214 length:228 atIndex:29];
  [a1 setBuffer:objc_msgSend(v131 offset:"buffer") atIndex:{0, 28}];
  [a1 setBuffer:0 offset:0 atIndex:25];
  *&v204 = v143;
  *(&v204 + 1) = v137;
  *&v205 = (v134 * v138);
  v200 = v97;
  *v201 = vdupq_n_s64(1uLL);
  [a1 dispatchThreadgroups:&v204 threadsPerThreadgroup:&v200];
  if (v144 >= 0x101)
  {
    *&v102 = -1;
    *(&v102 + 1) = -1;
    v208 = v102;
    v207 = v102;
    v206 = v102;
    v205 = 0xFFFFFFFFFFFFFFFFLL;
    v204 = v102;
    *&v208 = [*(v145 + 16) count] | ((*(v145 + 112) != 0) << 8) | 0x10000;
    v200 = __PAIR64__(v125, v138);
    *&v201[1] = v252;
    *&v201[5] = v253;
    v202 = v254;
    v201[0] = (v144 + 255) >> 8;
    v203 = v255;
    v103 = *(a4 + 1480);
    v104 = v125 / BYTE2(v103);
    if (v104 >= 8)
    {
      v105 = 8;
    }

    else
    {
      v105 = v125 / BYTE2(v103);
    }

    if (v105 <= 1)
    {
      v105 = 1;
    }

    v199 = 0;
    v106 = MEMORY[0x277CD73C8];
    v107 = *(v128 + 8);
    v190[0] = *(v142 + *MEMORY[0x277CD73C8]);
    v190[1] = v107;
    v190[2] = v105;
    v190[3] = 1;
    v109 = v125 <= ((v103 >> 13) & 0x7F8) && v125 == v104 * BYTE2(v103);
    v191 = v109;
    v192 = 0;
    v193 = (v75 & 0x40) >> 6;
    v194 = v140 == 64;
    v110 = (v135 + *MEMORY[0x277CD7410]);
    v111 = *v110;
    v112 = v110[1];
    v113 = v110[3];
    v114 = *(v135 + *MEMORY[0x277CD73D8]);
    v148 = v110[2];
    v149 = v113;
    v147[0] = v111;
    v147[1] = v112;
    v195 = *(v147 + (v114 & 0xF)) != 1;
    v196 = 0;
    v146 = v114;
    v150[2] = v148;
    v150[3] = v113;
    v150[0] = v111;
    v150[1] = v112;
    LODWORD(v110) = *(v150 + (*(&v146 | v127 & 0xF) & 0xF));
    v151[2] = v148;
    v151[3] = v113;
    v151[0] = v111;
    v151[1] = v112;
    v197 = v110 * *(v151 + (BYTE3(v114) & 0xF)) != 1;
    v198 = 0;
    LOBYTE(v199) = v139 == 1;
    *&v205 = MPSNDArraySDPACreateUserConstant(v190);
    v122 = *(v145 + 232);
    MPSLibrary::CreateUberShaderKey();
    v115 = MPSLibrary::GetPipelineStateForMPSKey();
    if (!v115)
    {
      v54 = -1;
      goto LABEL_110;
    }

    [a1 setComputePipelineState:{v115, v122, v130, v129, 0, 0}];
    MPSSetNDArraysOnComputeEncoder(a1, v145, 4, 0, 0);
    [a1 setBytes:&v200 length:56 atIndex:29];
    [a1 setBuffer:TempBuffer offset:0 atIndex:27];
    [a1 setBuffer:v101 offset:0 atIndex:26];
    [a1 setThreadgroupMemoryLength:((*(v142 + *v106) >> 3) * v201[0] + 15) & 0x3FFFFFFFFFF0 atIndex:0];
    [a1 setBuffer:0 offset:0 atIndex:25];
    v189[0] = v143;
    v189[1] = v137;
    v189[2] = (v134 * v138);
    v187 = v140;
    v188 = vdupq_n_s64(1uLL);
    [a1 dispatchThreadgroups:v189 threadsPerThreadgroup:&v187];
    MPSLibrary::ReleaseMPSKey();
    MPSLibrary::ReleaseComputeState();
  }

  MPSLibrary::ReleaseMPSKey();
  MPSLibrary::ReleaseComputeState();
  v54 = 0;
LABEL_110:
  objc_autoreleasePoolPop(contexta);
LABEL_111:
  v116 = v261;
  if (v261)
  {
    do
    {
      v117 = *v116;
      operator delete(v116);
      v116 = v117;
    }

    while (v117);
  }

  v118 = v260;
  *&v260 = 0;
  if (v118)
  {
    operator delete(v118);
  }

  MPSAutoCache::~MPSAutoCache(v263);
  return v54;
}

void sub_239AC72A4(_Unwind_Exception *a1)
{
  std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100](v2 - 176);
  if (v1)
  {
    operator delete(v1);
  }

  MPSAutoCache::~MPSAutoCache((v2 - 136));
  _Unwind_Resume(a1);
}

void EncodeQuantizedSDPA(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = a4[12];
  v7 = a4[13];
  v8 = a4[10];
  v27 = a4[11];
  v28 = v6;
  v9 = a4[14];
  v29 = v7;
  v30 = v9;
  v10 = a4[8];
  v11 = a4[9];
  v12 = a4[6];
  v23 = a4[7];
  v24 = v10;
  v25 = v11;
  v26 = v8;
  v13 = a4[5];
  v20 = a4[4];
  v21 = v13;
  v22 = v12;
  v14 = a4[1];
  v16 = *a4;
  v17 = v14;
  v15 = a4[3];
  v18 = a4[2];
  v19 = v15;
  operator new();
}

__n128 MPSNDArraySDPADeviceBehavior::getThreads@<Q0>(MPSNDArraySDPADeviceBehavior *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 8);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 3);
  return result;
}

char *___ZL22MPSSDPAForceMatrixUnitv_block_invoke()
{
  result = getenv("MPSNDARRAY_SDPA_FORCE_MXU");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      _MergedGlobals_5 = result != 0;
    }
  }

  return result;
}

uint64_t validateSDPA(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = MEMORY[0x277CD7410];
  v7 = *MEMORY[0x277CD7410];
  v8 = *(result + v7);
  v9 = *(result + v7 + 16);
  v10 = *(result + v7 + 32);
  v11 = *(result + v7 + 48);
  v12 = MEMORY[0x277CD73D8];
  v13 = *MEMORY[0x277CD73D8];
  v14 = *(result + v13);
  v85[2] = v10;
  v85[3] = v11;
  v85[0] = v8;
  v85[1] = v9;
  v15 = *(v85 + (v14 & 0xF));
  if (a5 == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = *(a2 + v7);
  v18 = *(a2 + v7 + 16);
  v19 = *(a2 + v7 + 32);
  v20 = *(a2 + v7 + 48);
  v82 = *(a2 + v13);
  v87[2] = v19;
  v87[3] = v20;
  v87[0] = v17;
  v87[1] = v18;
  v21 = *(v87 + (*(&v82 | v5 & 0xF) & 0xF));
  v81 = v14;
  v84[2] = v10;
  v84[3] = v11;
  v84[0] = v8;
  v84[1] = v9;
  v22 = *(v84 + (*(&v81 | v16 & 0xF) & 0xF));
  v83[2] = v10;
  v83[3] = v11;
  v83[0] = v8;
  v83[1] = v9;
  v23 = *(v83 + (BYTE3(v14) & 0xF));
  v86[2] = v19;
  v86[3] = v20;
  v86[0] = v17;
  v86[1] = v18;
  if (*(v86 + (v82 & 0xF)) != v15)
  {
    v72 = a4;
    v75 = result;
    v36 = a3;
    v37 = a2;
    v38 = MTLReportFailureTypeEnabled();
    a2 = v37;
    a3 = v36;
    v39 = v38;
    a4 = v72;
    result = v75;
    if (v39)
    {
      MTLReportFailure();
      a2 = v37;
      a3 = v36;
      a4 = v72;
      result = v75;
    }
  }

  if (v22 % *(a2 + *v6 + 4 * (*(a2 + *v12 + v16) & 0xF)))
  {
    v73 = a4;
    v76 = result;
    v40 = a3;
    v41 = a2;
    v42 = MTLReportFailureTypeEnabled();
    a2 = v41;
    a3 = v40;
    v43 = v42;
    a4 = v73;
    result = v76;
    if (v43)
    {
      MTLReportFailure();
      a2 = v41;
      a3 = v40;
      a4 = v73;
      result = v76;
    }
  }

  if (*(a2 + *v6 + 4 * (*(a2 + *v12 + 3) & 0xF)) != v23)
  {
    v74 = a4;
    v77 = result;
    v44 = a3;
    v45 = a2;
    v46 = MTLReportFailureTypeEnabled();
    a2 = v45;
    a3 = v44;
    v47 = v46;
    a4 = v74;
    result = v77;
    if (v47)
    {
      MTLReportFailure();
      a2 = v45;
      a3 = v44;
      a4 = v74;
      result = v77;
    }
  }

  if (*(a3 + *v6 + 4 * (*(a3 + *v12) & 0xF)) != v15)
  {
    v78 = result;
    v48 = a4;
    v49 = a3;
    v50 = a2;
    v51 = MTLReportFailureTypeEnabled();
    a2 = v50;
    a3 = v49;
    a4 = v48;
    v52 = v51;
    result = v78;
    if (v52)
    {
      MTLReportFailure();
      a2 = v50;
      a3 = v49;
      result = v78;
      a4 = v48;
    }
  }

  if (*(a3 + *v6 + 4 * (*(a3 + *v12 + v5) & 0xF)) != v21)
  {
    v79 = result;
    v53 = a4;
    v54 = a3;
    v55 = a2;
    v56 = MTLReportFailureTypeEnabled();
    a2 = v55;
    a3 = v54;
    a4 = v53;
    v57 = v56;
    result = v79;
    if (v57)
    {
      MTLReportFailure();
      a2 = v55;
      a3 = v54;
      result = v79;
      a4 = v53;
    }
  }

  if (v22 % *(a3 + *v6 + 4 * (*(a3 + *v12 + v16) & 0xF)))
  {
    v80 = result;
    v58 = a4;
    v59 = a3;
    v60 = a2;
    v61 = MTLReportFailureTypeEnabled();
    a2 = v60;
    a3 = v59;
    a4 = v58;
    v62 = v61;
    result = v80;
    if (v62)
    {
      MTLReportFailure();
      a2 = v60;
      a3 = v59;
      result = v80;
      a4 = v58;
    }
  }

  if (*(a3 + *v6 + 4 * (*(a3 + *v12 + v16) & 0xF)) != *(a2 + *v6 + 4 * (*(a2 + *v12 + v16) & 0xF)))
  {
    v63 = result;
    v64 = a4;
    v65 = a3;
    v66 = MTLReportFailureTypeEnabled();
    a3 = v65;
    a4 = v64;
    v67 = v66;
    result = v63;
    if (v67)
    {
      MTLReportFailure();
      a3 = v65;
      result = v63;
      a4 = v64;
    }
  }

  if (*(a3 + *v6 + 4 * (*(a3 + *v12 + 3) & 0xF)) != v23)
  {
    v68 = result;
    v69 = a4;
    v70 = MTLReportFailureTypeEnabled();
    a4 = v69;
    v71 = v70;
    result = v68;
    if (v71)
    {
      MTLReportFailure();
      result = v68;
      a4 = v69;
    }
  }

  v24 = *(a4 + *v6 + 4 * (*(a4 + *v12) & 0xF));
  if (v24 != v21 && v24 != 1)
  {
    v30 = result;
    v31 = a4;
    v32 = MTLReportFailureTypeEnabled();
    a4 = v31;
    v33 = v32;
    result = v30;
    if (v33)
    {
      MTLReportFailure();
      result = v30;
      a4 = v31;
    }
  }

  v25 = *v6;
  v26 = *v12;
  v27 = *(a4 + v25 + 4 * (*(a4 + v26 + v5) & 0xF));
  if (v27 != 1 && v27 != *(result + v25 + 4 * (*(result + v26 + v5) & 0xF)))
  {
    v34 = a4;
    result = MTLReportFailureTypeEnabled();
    a4 = v34;
    if (result)
    {
      result = MTLReportFailure();
      a4 = v34;
    }
  }

  v28 = *(a4 + *v6 + 4 * (*(a4 + *v12 + v16) & 0xF));
  if (v28 != v22 && v28 != 1)
  {
    v35 = a4;
    result = MTLReportFailureTypeEnabled();
    a4 = v35;
    if (result)
    {
      result = MTLReportFailure();
      a4 = v35;
    }
  }

  v29 = *(a4 + *v6 + 4 * (*(a4 + *v12 + 3) & 0xF));
  if (v29 != v23 && v29 != 1)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {

      return MTLReportFailure();
    }
  }

  return result;
}

uint64_t MPSNDArraySDPAFunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MPSCreateFunctionConstantValues();
  [v5 setConstantValue:a2 + 8 type:85 atIndex:115];
  v6 = *a3;
  v7 = *(a3 + 1);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = vceqq_s64(v7, v8);
  if (*a3 != -1 || ((v10 = vaddvq_s32(vbicq_s8(xmmword_239B06050, vuzp1q_s32(vceqq_s64(*(a3 + 3), v8), vceqq_s64(*(a3 + 4), v8)))) & 0xF, (~vaddvq_s32(vandq_s8(vuzp1q_s32(v9, vceqq_s64(*(a3 + 3), v8)), xmmword_239B06050)) & 0xF) == 0) ? (v11 = v10 == 0) : (v11 = 0), v11 ? (v12 = a3[5] == -1) : (v12 = 0), !v12))
  {
    if ((vuzp1_s16(vmovn_s64(v9), *v7.i8).u8[0] & 1) == 0)
    {
      v16 = *(a3 + 1);
      [v5 setConstantValue:&v16 type:33 atIndex:126];
      v6 = *a3;
    }

    if (v6 != -1)
    {
      v16 = v6;
      [v5 setConstantValue:&v16 type:33 atIndex:125];
    }

    if (a3[2] != -1)
    {
      v16 = a3[2];
      [v5 setConstantValue:&v16 type:33 atIndex:124];
    }

    if (a3[3] != -1)
    {
      v16 = a3[3];
      [v5 setConstantValue:&v16 type:33 atIndex:123];
    }

    if (a3[4] != -1)
    {
      v16 = a3[4];
      [v5 setConstantValue:&v16 type:33 atIndex:119];
    }

    if (a3[5] != -1)
    {
      v16 = a3[5];
      [v5 setConstantValue:&v16 type:33 atIndex:118];
    }

    if (a3[8] != -1)
    {
      v16 = a3[8];
      [v5 setConstantValue:&v16 type:33 atIndex:122];
    }

    if (a3[9] != -1)
    {
      v16 = a3[9];
      [v5 setConstantValue:&v16 type:33 atIndex:121];
    }

    if (a3[6] != -1)
    {
      v16 = a3[6];
      [v5 setConstantValue:&v16 type:33 atIndex:117];
    }

    if (a3[7] != -1)
    {
      v16 = a3[7];
      [v5 setConstantValue:&v16 type:33 atIndex:116];
    }
  }

  v13 = *a2;
  v14 = _MPSNewSpecializedFunction();

  return v14;
}

uint64_t std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

char *___ZL16MPSSDPASimdTileHv_block_invoke()
{
  result = getenv("MPSNDARRAY_SDPA_SIMD_TILE_H");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      dword_27DF8699C = result;
    }
  }

  return result;
}

char *___ZL16MPSSDPASimdTileWv_block_invoke()
{
  result = getenv("MPSNDARRAY_SDPA_SIMD_TILE_W");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      dword_27DF869A0 = result;
    }
  }

  return result;
}

char *___ZL14MPSSDPATGTileHv_block_invoke()
{
  result = getenv("MPSNDARRAY_SDPA_TG_TILE_H");
  if (result)
  {
    __endptr = result;
    v1 = result;
    result = strtol(result, &__endptr, 0);
    if (__endptr != v1)
    {
      dword_27DF869A4 = result;
    }
  }

  return result;
}

char *___ZL21MPSSDPAElasticBarrierv_block_invoke()
{
  result = getenv("MPSNDARRAY_SDPA_ElasticBarrier");
  if (result)
  {
    __endptr = result;
    result = strtol(result, &__endptr, 0);
    MPSSDPAElasticBarrier(void)::result = result;
  }

  return result;
}

uint64_t validateQuantizedSDPA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a8 == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (a8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v26 = v9;
  v27 = v8;
  v25[0] = &v26;
  v25[1] = &v27;
  v10 = -2;
  if (a6 && a7)
  {
    v11 = *MEMORY[0x277CD73C8];
    v12 = *(a6 + v11);
    if (v12 == *(a7 + v11))
    {
      if (!a5)
      {
        v13 = a7;
        v14 = a3;
        v15 = a4;
        v16 = a8;
        v18 = a1;
        v20 = *(a1 + v11);
        if (v20 == 268435472 || v20 == 268435488)
        {
          goto LABEL_20;
        }

        v17 = a2;
        v19 = a6;
        v24 = MTLReportFailureTypeEnabled();
        a6 = v19;
        a2 = v17;
        if (!v24)
        {
          goto LABEL_20;
        }

        MTLReportFailure();
LABEL_13:
        a6 = v19;
        a2 = v17;
LABEL_20:
        v22 = a2;
        validateQuantizedSDPA(MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArraySDPALayout)::$_0::operator()(v25, a2, a6);
        validateQuantizedSDPA(MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArraySDPALayout)::$_0::operator()(v25, v14, v13);
        validateSDPA(v18, v22, v14, v15, v16);
        return 0;
      }

      if (*(a5 + v11) == v12)
      {
        v13 = a7;
        v14 = a3;
        v15 = a4;
        v16 = a8;
        v17 = a2;
        v18 = a1;
        v19 = a6;
        validateQuantizedSDPA(MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArraySDPALayout)::$_0::operator()(v25, a1, a5);
        goto LABEL_13;
      }
    }

    return -2;
  }

  return v10;
}

uint64_t validateQuantizedSDPA(MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArray *,MPSNDArraySDPALayout)::$_0::operator()(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = MEMORY[0x277CD73C8];
  if (*(a2 + *MEMORY[0x277CD73C8]) != 536870920)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      result = MTLReportFailure();
    }
  }

  v7 = *(a3 + *v6);
  if (v7 != 268435472 && v7 != 268435488)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      result = MTLReportFailure();
    }
  }

  v9 = MEMORY[0x277CD7410];
  v10 = MEMORY[0x277CD73D8];
  if (*(a3 + *MEMORY[0x277CD7410] + 4 * (*(a3 + *MEMORY[0x277CD73D8]) & 0xF)) != 1)
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {
      result = MTLReportFailure();
    }
  }

  v11 = *v9;
  v12 = *v10;
  v13 = **v5;
  v25 = *(a3 + v12);
  v14 = *(a3 + v11 + 4 * (*(&v25 | v13 & 0xF) & 0xF));
  if (v14 != 1)
  {
    v24 = *(a2 + v12);
    if (v14 != *(a2 + v11 + 4 * (*(&v24 | v13 & 0xF) & 0xF)))
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }
  }

  v15 = *v9;
  v16 = *v10;
  v17 = *v5[1];
  v23 = *(a3 + v16);
  v18 = *(a3 + v15 + 4 * (*(&v23 | v17 & 0xF) & 0xF));
  if (v18 != 1)
  {
    v22 = *(a2 + v16);
    if (v18 != *(a2 + v15 + 4 * (*(&v22 | v17 & 0xF) & 0xF)))
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        result = MTLReportFailure();
      }
    }
  }

  v19 = *v9;
  v20 = *v10;
  v21 = *(a3 + v19 + 4 * (*(a3 + v20 + 3) & 0xF));
  if (v21 != 1 && v21 != *(a2 + v19 + 4 * (*(a2 + v20 + 3) & 0xF)))
  {
    result = MTLReportFailureTypeEnabled();
    if (result)
    {

      return MTLReportFailure();
    }
  }

  return result;
}

void EncodeSDPAFallback(char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v178 = a2;
  v198 = *MEMORY[0x277D85DE8];
  [a1 layout];
  if ([a1 layout] && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v7 = *&a1[*MEMORY[0x277CD7378]];
  [a1 alpha];
  [a1 layout];
  v8 = [*(a4 + 16) count];
  MEMORY[0x23EE7C450](v190, a3, 0);
  v9 = [*(a4 + 232) graph];
  v10 = [*(a4 + 16) count];
  v179 = v7;
  v176 = v8;
  v177 = a4;
  v180 = a1;
  v173 = a3;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v12;
      v14 = (v12 >> 2) + 1;
      if (v14 >> 62)
      {
        std::vector<long>::__throw_length_error[abi:ne200100]();
      }

      if (v12 >> 2 != -1)
      {
        if (!(v14 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = (4 * (v12 >> 2));
      *v15 = v11;
      v12 = (v15 + 1);
      memcpy(0, 0, v13);
      v16 = 0;
      ++v11;
    }

    while (v10 != v11);
  }

  else
  {
    v12 = 0;
    v16 = 0;
  }

  v187 = 0u;
  v188 = 0u;
  v189 = 1065353216;
  v17 = *(v9 + 8);
  v18 = *v17;
  v19 = v17[1];
  v20 = *v17 == v19 || v12 == 0;
  v181 = 0;
  if (!v20)
  {
    v21 = 0;
    while (1)
    {
      v182[0] = *v16;
      v22 = *v18;
      if (v22 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v9) + 32))
      {
        v195 = v182;
        *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v187, v182[0]) + 5) = v21;
      }

      if (++v16 == v12)
      {
        ++v21;
        ++v18;
        v16 = v181;
        if (v18 == v19)
        {
          break;
        }
      }
    }
  }

  if ((v179 & 1) == 0 && v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*(&v187 + 1))
      {
        v24 = vcnt_s8(*(&v187 + 8));
        v24.i16[0] = vaddlv_u8(v24);
        if (v24.u32[0] > 1uLL)
        {
          v25 = i;
          if (*(&v187 + 1) <= i)
          {
            v25 = i % DWORD2(v187);
          }
        }

        else
        {
          v25 = (*(&v187 + 1) + 0xFFFFFFFFLL) & i;
        }

        v26 = *(v187 + 8 * v25);
        if (v26)
        {
          v27 = *v26;
          if (v27)
          {
            if (v24.u32[0] < 2uLL)
            {
              while (1)
              {
                v29 = v27[1];
                if (v29 == i)
                {
                  if (i == *(v27 + 4))
                  {
                    goto LABEL_23;
                  }
                }

                else if ((v29 & (*(&v187 + 1) - 1)) != v25)
                {
                  goto LABEL_44;
                }

                v27 = *v27;
                if (!v27)
                {
                  goto LABEL_44;
                }
              }
            }

            do
            {
              v28 = v27[1];
              if (v28 == i)
              {
                if (i == *(v27 + 4))
                {
                  goto LABEL_23;
                }
              }

              else
              {
                if (v28 >= *(&v187 + 1))
                {
                  v28 %= *(&v187 + 1);
                }

                if (v28 != v25)
                {
                  break;
                }
              }

              v27 = *v27;
            }

            while (v27);
          }
        }
      }

LABEL_44:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

LABEL_23:
      ;
    }
  }

  v30 = v177;
  v31 = *(v177 + 16);
  v182[0] = 0;
  v195 = v182;
  v32 = [v31 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v187, 0) + 5)}];
  v33 = *(v177 + 16);
  v182[0] = 1;
  v195 = v182;
  v34 = [v33 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v187, 1u) + 5)}];
  v179 = v32;
  v35 = *(v177 + 16);
  v182[0] = 2;
  v195 = v182;
  v36 = [v35 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v187, 2u) + 5)}];
  v37 = *(v177 + 16);
  v182[0] = 3;
  v195 = v182;
  v38 = [v37 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v187, 3u) + 5)}];
  if (v176 < 5)
  {
    v40 = 0;
    v41 = *(v177 + 208);
    v42 = MEMORY[0x277CD73E0];
    v43 = v179;
    if (!v179)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v39 = *(v177 + 16);
    v182[0] = 4;
    v195 = v182;
    v40 = [v39 objectAtIndexedSubscript:{*(std::__hash_table<std::__hash_value_type<unsigned int, unsigned int>, std::__unordered_map_hasher<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::hash<unsigned int>, std::equal_to<unsigned int>, true>, std::__unordered_map_equal<unsigned int, std::__hash_value_type<unsigned int, unsigned int>, std::equal_to<unsigned int>, std::hash<unsigned int>, true>, std::allocator<std::__hash_value_type<unsigned int, unsigned int>>>::__emplace_unique_key_args<unsigned int, std::piecewise_construct_t const&, std::tuple<unsigned int &&>, std::tuple<>>(&v187, 4u) + 5)}];
    v41 = *(v177 + 208);
    v42 = MEMORY[0x277CD73E0];
    v43 = v179;
    if (!v179)
    {
      goto LABEL_52;
    }
  }

  if (v43[*v42] == 1)
  {
    ++*&v43[*MEMORY[0x277CD7498]];
  }

LABEL_52:
  if (v34 && v34[*v42] == 1)
  {
    ++*&v34[*MEMORY[0x277CD7498]];
  }

  if (v36 && v36[*v42] == 1)
  {
    ++*&v36[*MEMORY[0x277CD7498]];
  }

  if (v38 && v38[*v42] == 1)
  {
    ++*&v38[*MEMORY[0x277CD7498]];
  }

  if (v40 && v40[*v42] == 1)
  {
    ++*&v40[*MEMORY[0x277CD7498]];
  }

  [*(v30 + 232) outputTensorAtIndex:0];
  v44 = *&v180[*MEMORY[0x277CD7350]];
  v45 = v179;
  v170 = *&v179[*MEMORY[0x277CD73C8]];
  if (!v40)
  {
    v195 = 1;
    v46 = [MEMORY[0x277CD7268] descriptorWithDataType:? dimensionCount:? dimensionSizes:?];
    v40 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v173 descriptor:v46];
    v45 = v179;
  }

  v166 = v44;
  v174 = v38;
  v176 = v36;
  v172 = v41;
  v177 = *&v45[*MEMORY[0x277CD73F0]];
  v47 = [v34 descriptor];
  [v47 transposeDimension:0 withDimension:1];
  v175 = [v34 safeArrayViewWithCommandBuffer:v173 computeEncoder:v178 descriptor:v47 aliasing:1];
  v48 = [v45 descriptor];
  v49 = [v36 descriptor];
  v50 = [v175 descriptor];
  v51 = [v174 descriptor];
  if ([v48 numberOfDimensions] < 3)
  {
    v53 = 1;
  }

  else
  {
    [v48 sliceRangeForDimension:2];
    v53 = v52;
  }

  if ([v47 numberOfDimensions] < 3)
  {
    v55 = 1;
  }

  else
  {
    [v50 sliceRangeForDimension:2];
    v55 = v54;
  }

  if ([v49 numberOfDimensions] < 3)
  {
    v57 = 1;
  }

  else
  {
    [v49 sliceRangeForDimension:2];
    v57 = v56;
  }

  if ([v51 numberOfDimensions] >= 3)
  {
    [v51 sliceRangeForDimension:2];
  }

  v169 = v40;
  if (v53 == v55 || v53 == 1 && v55 == 1)
  {
    v58 = 0;
    v59 = 0;
    v60 = v172;
    v61 = v176;
    v62 = v179;
  }

  else
  {
    if (v53 <= v55)
    {
      v63 = v55;
    }

    else
    {
      v63 = v53;
    }

    if (v55 >= v53)
    {
      v64 = v53;
    }

    else
    {
      v64 = v55;
    }

    v65 = [objc_msgSend(v48 "getShape")];
    v168 = [objc_msgSend(v50 "getShape")];
    v165 = [objc_msgSend(v49 "getShape")];
    v167 = [objc_msgSend(v51 "getShape")];
    v171 = [objc_msgSend(objc_msgSend(v172 "descriptor")];
    if (v53 < v55)
    {
      v66 = 1;
    }

    else
    {
      v66 = v63 / v64;
    }

    if (v57 == v63)
    {
      v67 = v64;
    }

    else
    {
      v67 = v57;
    }

    if (v57 == v63)
    {
      v68 = v63 / v64;
    }

    else
    {
      v68 = 1;
    }

    [v65 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithInteger:", v66), objc_msgSend(v65, "count") - 3}];
    [v65 insertObject:objc_msgSend(MEMORY[0x277CCABB0] atIndex:{"numberWithInteger:", v64), objc_msgSend(v65, "count") - 3}];
    if (v55 < v53)
    {
      v69 = 1;
    }

    else
    {
      v69 = v63 / v64;
    }

    [v168 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithInteger:", v69), objc_msgSend(v168, "count") - 3}];
    [v168 insertObject:objc_msgSend(MEMORY[0x277CCABB0] atIndex:{"numberWithInteger:", v64), objc_msgSend(v168, "count") - 3}];
    [v165 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithInteger:", v68), objc_msgSend(v165, "count") - 3}];
    [v165 insertObject:objc_msgSend(MEMORY[0x277CCABB0] atIndex:{"numberWithInteger:", v67), objc_msgSend(v165, "count") - 3}];
    [v171 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithInteger:", v63 / v64), objc_msgSend(v171, "count") - 3}];
    [v171 insertObject:objc_msgSend(MEMORY[0x277CCABB0] atIndex:{"numberWithInteger:", v64), objc_msgSend(v171, "count") - 3}];
    if ([objc_msgSend(v65 objectAtIndexedSubscript:{objc_msgSend(v65, "count") - 2), "unsignedIntegerValue"}] == 1)
    {
      v70 = [v65 objectAtIndexedSubscript:{objc_msgSend(v65, "count") - 3}];
      [v65 setObject:objc_msgSend(v65 atIndexedSubscript:{"objectAtIndexedSubscript:", objc_msgSend(v65, "count") - 2), objc_msgSend(v65, "count") - 3}];
      [v65 setObject:v70 atIndexedSubscript:{objc_msgSend(v65, "count") - 2}];
      v71 = [v167 objectAtIndexedSubscript:{objc_msgSend(v167, "count") - 3}];
      [v167 setObject:objc_msgSend(v167 atIndexedSubscript:{"objectAtIndexedSubscript:", objc_msgSend(v167, "count") - 2), objc_msgSend(v167, "count") - 3}];
      [v167 setObject:v71 atIndexedSubscript:{objc_msgSend(v167, "count") - 2}];
      v72 = [v171 objectAtIndexedSubscript:{objc_msgSend(v171, "count") - 3}];
      [v171 setObject:objc_msgSend(v171 atIndexedSubscript:{"objectAtIndexedSubscript:", objc_msgSend(v171, "count") - 2), objc_msgSend(v171, "count") - 3}];
      [v171 setObject:v72 atIndexedSubscript:{objc_msgSend(v171, "count") - 2}];
    }

    v73 = *(v180 + 24);
    v74 = v173;
    v75 = [v73 reshapeWithCommandEncoder:v178 commandBuffer:v173 sourceArray:v179 shape:v65 destinationArray:0];
    if (!v75)
    {
      v76 = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(v179 shape:{"dataType"), v65}];
      [v76 setPreferPackedRows:1];
      v75 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v173 descriptor:v76];
      [v73 reshapeWithCommandEncoder:v178 commandBuffer:v173 sourceArray:v179 shape:v65 destinationArray:v75];
    }

    v77 = *(v180 + 24);
    v78 = [v77 reshapeWithCommandEncoder:v178 commandBuffer:v173 sourceArray:v175 shape:v168 destinationArray:0];
    if (!v78)
    {
      v79 = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(v175 shape:{"dataType"), v168}];
      [v79 setPreferPackedRows:1];
      v78 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v173 descriptor:v79];
      [v77 reshapeWithCommandEncoder:v178 commandBuffer:v173 sourceArray:v175 shape:v168 destinationArray:v78];
    }

    v80 = *(v180 + 24);
    v61 = [v80 reshapeWithCommandEncoder:v178 commandBuffer:v173 sourceArray:v176 shape:v165 destinationArray:0];
    if (!v61)
    {
      v81 = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(v176 shape:{"dataType"), v165}];
      [v81 setPreferPackedRows:1];
      v61 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v173 descriptor:v81];
      [v80 reshapeWithCommandEncoder:v178 commandBuffer:v173 sourceArray:v176 shape:v165 destinationArray:v61];
    }

    v82 = *(v180 + 24);
    v83 = [v82 reshapeWithCommandEncoder:v178 commandBuffer:v173 sourceArray:v174 shape:v167 destinationArray:0];
    if (!v83)
    {
      v84 = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(v174 shape:{"dataType"), v167}];
      [v84 setPreferPackedRows:1];
      v83 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v173 descriptor:v84];
      [v82 reshapeWithCommandEncoder:v178 commandBuffer:v173 sourceArray:v174 shape:v167 destinationArray:v83];
    }

    if (v172[*MEMORY[0x277CD73E0]] == 1)
    {
      ++*&v172[*MEMORY[0x277CD7498]];
    }

    v85 = *(v180 + 24);
    v60 = [v85 reshapeWithCommandEncoder:v178 commandBuffer:v74 sourceArray:? shape:? destinationArray:?];
    ++v177;
    if (v60)
    {
      v58 = 0;
    }

    else
    {
      v86 = [MEMORY[0x277CD7268] descriptorWithDataType:objc_msgSend(v172 shape:{"dataType"), v171}];
      [v86 setPreferPackedRows:1];
      v60 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v74 descriptor:v86];
      [v85 reshapeWithCommandEncoder:v178 commandBuffer:v74 sourceArray:v172 shape:v171 destinationArray:v60];
      v58 = 1;
    }

    v59 = 1;
    v175 = v78;
    v174 = v83;
    v62 = v75;
    v40 = v169;
  }

  v87 = [v62 descriptor];
  LODWORD(v167) = v58;
  LODWORD(v168) = v59;
  if (v87)
  {
    [v87 getShapeVector];
    v88 = v186;
  }

  else
  {
    v88 = 0;
    v186 = 0;
  }

  v89 = [v175 descriptor];
  v176 = v61;
  if (v89)
  {
    [v89 getShapeVector];
    v90 = v185;
    v92 = *v88;
    v91 = v88[1];
    v195 = 0;
    v196 = 0;
    v197 = 0;
    v93 = v91 - v92;
    if (v91 != v92)
    {
      goto LABEL_120;
    }
  }

  else
  {
    v90 = 0;
    v185 = 0;
    v95 = *v88;
    v94 = v88[1];
    v195 = 0;
    v196 = 0;
    v197 = 0;
    v93 = v94 - v95;
    if (v94 != v95)
    {
LABEL_120:
      if ((v93 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }
  }

  v96 = *v88;
  v97 = v88[1] - *v88;
  v98 = v174;
  if ((v97 >> 3) >= 3)
  {
    v99 = (v97 >> 3) & 0x7FFFFFFF;
    v100 = v99 - 3;
    if (v99 < 3)
    {
      v100 = 0;
    }

    if (v100 < 3)
    {
      goto LABEL_131;
    }

    if (v96 <= 0x1F)
    {
      goto LABEL_131;
    }

    v101 = v100 + 1;
    v102 = v99 - (v101 & 0xFFFFFFFC);
    v103 = (8 * v99 - 16);
    v104 = (v103 + v96);
    v105 = v101 & 0xFFFFFFFC;
    do
    {
      v106 = *v104;
      *(v103 - 1) = *(v104 - 1);
      *v103 = v106;
      v104 -= 2;
      v103 -= 2;
      v105 -= 4;
    }

    while (v105);
    v99 = v102;
    if (v101 != (v101 & 0xFFFFFFFC))
    {
LABEL_131:
      v107 = v99 - 1;
      do
      {
        *(8 * v107) = *(v96 + 8 * v107);
        v108 = v107-- + 1;
      }

      while (v108 > 3);
    }
  }

  MEMORY[8] = *(v96 + 8);
  MEMORY[0] = **v90;
  v109 = [v98 descriptor];
  if (v109)
  {
    [v109 getShapeVector];
  }

  else
  {
    v184 = 0;
  }

  v110 = [v40 descriptor];
  v171 = v60;
  if (v110)
  {
    [v110 getShapeVector];
    v179 = v62;
    v117 = v195;
    v118 = v196 - v195;
    if ((v196 - v195) >= 9)
    {
      goto LABEL_138;
    }
  }

  else
  {
    v183 = 0;
    v179 = v62;
    v117 = v195;
    v118 = v196 - v195;
    if ((v196 - v195) >= 9)
    {
LABEL_138:
      v119 = v117[1] < 5;
      v120 = *(v180 + 18);
      if (v120)
      {
        goto LABEL_139;
      }

LABEL_144:
      v123 = 0;
      v124 = v180;
      if (v180[152])
      {
        goto LABEL_146;
      }

      goto LABEL_145;
    }
  }

  v119 = 0;
  v120 = *(v180 + 18);
  if (!v120)
  {
    goto LABEL_144;
  }

LABEL_139:
  v121 = [v120 finalOp];
  v122 = **(v121 + 24);
  if (*(*(v121 + 24) + 8) == v122)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v120 = memcmp(v117, **(*v122 + 16), v118);
  v123 = v120 != 0;
  v124 = v180;
  if ((v180[152] & 1) == 0)
  {
LABEL_145:
    v120 = [v124 createFallbackKernels:*(v166 + 16)];
  }

LABEL_146:
  v125 = v124[18] == 0 || v123;
  v126 = v173;
  if (v125)
  {
    operator new();
  }

  MEMORY[0x28223BE20](v120, v111, v112, v113, v114, v115, v116);
  v128 = &v165 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v129)
  {
    v130 = 0;
    v131 = v195;
    if (v177 < 4)
    {
      goto LABEL_154;
    }

    if (&v128[-v195] <= 0x1F)
    {
      goto LABEL_154;
    }

    v130 = v177 & 0xFFFFFFFFFFFFFFFCLL;
    v132 = (v195 + 16);
    v133 = v128 + 16;
    v134 = v177 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v135 = *v132;
      *(v133 - 1) = *(v132 - 1);
      *v133 = v135;
      v132 += 2;
      v133 += 2;
      v134 -= 4;
    }

    while (v134);
    if (v177 != v130)
    {
LABEL_154:
      v136 = v177 - v130;
      v137 = 8 * v130;
      v138 = &v128[8 * v130];
      v139 = (v131 + v137);
      do
      {
        v140 = *v139++;
        *v138 = v140;
        v138 += 8;
        --v136;
      }

      while (v136);
    }
  }

  v141 = [MEMORY[0x277CD7268] descriptorWithDataType:v170 dimensionCount:v177 dimensionSizes:?];
  v142 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v126 descriptor:v141];
  if (v119)
  {
    v143 = 0;
  }

  else
  {
    v143 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v126 descriptor:v141];
  }

  v144 = *(v180 + 20);
  v194[0] = v179;
  v194[1] = v175;
  v194[2] = v174;
  v194[3] = v169;
  v145 = [MEMORY[0x277CBEA60] arrayWithObjects:v194 count:4];
  [v144 encodeToMPSCommandEncoder:v178 commandBuffer:v126 sourceArrays:v145 resultState:0 destinationArray:v142 kernelDAGObject:*(v180 + 18)];
  if (v119)
  {
    v146 = *(v180 + 23);
    v193[0] = v142;
    v193[1] = v176;
    v147 = [MEMORY[0x277CBEA60] arrayWithObjects:v193 count:2];
  }

  else
  {
    v148 = *(v180 + 21);
    v192 = v142;
    v149 = [MEMORY[0x277CBEA60] arrayWithObjects:&v192 count:1];
    [v148 encodeToMPSCommandEncoder:v178 commandBuffer:v126 sourceArrays:v149 destinationArray:v143];
    v146 = *(v180 + 22);
    v191[0] = v143;
    v191[1] = v176;
    v147 = [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:2];
  }

  [v146 encodeToMPSCommandEncoder:v178 commandBuffer:v126 sourceArrays:v147 destinationArray:v171];
  if (v168)
  {
    if (v167)
    {
      v150 = [objc_msgSend(v172 "descriptor")];
      [*(v180 + 24) reshapeWithCommandEncoder:v178 commandBuffer:v126 sourceArray:v171 shape:v150 destinationArray:v172];
    }

    else if (v171[*MEMORY[0x277CD73E0]] == 1)
    {
      v151 = [v171 readCount];
      [v171 setReadCount:v151 - 1];
    }
  }

  v152 = v183;
  v183 = 0;
  v153 = v181;
  if (v152)
  {
    v154 = *v152;
    if (*v152)
    {
      *(v152 + 8) = v154;
      operator delete(v154);
    }

    MEMORY[0x23EE7C8C0](v152, 0x10C402FEFCB83);
  }

  v155 = v184;
  v184 = 0;
  if (v155)
  {
    v156 = *v155;
    if (*v155)
    {
      *(v155 + 8) = v156;
      operator delete(v156);
    }

    MEMORY[0x23EE7C8C0](v155, 0x10C402FEFCB83);
  }

  if (v195)
  {
    v196 = v195;
    operator delete(v195);
  }

  v157 = v185;
  v185 = 0;
  if (v157)
  {
    v158 = *v157;
    if (*v157)
    {
      v157[1] = v158;
      operator delete(v158);
    }

    MEMORY[0x23EE7C8C0](v157, 0x10C402FEFCB83);
  }

  v159 = v186;
  v186 = 0;
  if (v159)
  {
    v160 = *v159;
    if (*v159)
    {
      v159[1] = v160;
      operator delete(v160);
    }

    MEMORY[0x23EE7C8C0](v159, 0x10C402FEFCB83);
  }

  v161 = v188;
  if (v188)
  {
    do
    {
      v162 = *v161;
      operator delete(v161);
      v161 = v162;
    }

    while (v162);
  }

  v163 = v187;
  *&v187 = 0;
  if (v163)
  {
    operator delete(v163);
  }

  if (v153)
  {
    operator delete(v153);
  }

  MPSAutoCache::~MPSAutoCache(v190);
  v164 = *MEMORY[0x277D85DE8];
}

void sub_239ACAB1C(_Unwind_Exception *a1)
{
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v1 - 304);
  std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100]((v1 - 288));
  std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100]((v1 - 280));
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100]((v1 - 272));
  std::unique_ptr<std::vector<long> const,std::default_delete<std::vector<long> const>>::~unique_ptr[abi:ne200100]((v1 - 264));
  std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100](v1 - 256);
  v4 = *(v1 - 336);
  if (v4)
  {
    operator delete(v4);
  }

  MPSAutoCache::~MPSAutoCache((v1 - 216));
  _Unwind_Resume(a1);
}

void MPSNDArraySDPALogCommandLine(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if ((a1[*MEMORY[0x277CD7378]] & 0x10) == 0 || *&a1[*MEMORY[0x277CD7380]] < 4uLL)
  {
    return;
  }

  [a1 alpha];
  std::to_string(&v22, v6);
  v7 = std::string::insert(&v22, 0, "-alpha ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v23, " -layout ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v21, [a1 layout]);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v21;
  }

  else
  {
    v11 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v13 = std::string::append(&v24, v11, size);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v25, " -kernelType 0 -packed 3");
  v16 = v15->__r_.__value_.__r.__words[0];
  v17 = v15->__r_.__value_.__l.__size_;
  v26[0] = v15->__r_.__value_.__r.__words[2];
  *(v26 + 3) = *(&v15->__r_.__value_.__r.__words[2] + 3);
  v18 = SHIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_11:
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    std::string::__init_copy_ctor_external(&v20, *a3, *(a3 + 8));
    goto LABEL_22;
  }

LABEL_19:
  operator delete(v23.__r_.__value_.__l.__data_);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (*(a3 + 23) < 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v20 = *a3;
LABEL_22:
  if (v18 < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v16, v17);
  }

  else
  {
    v19.__r_.__value_.__r.__words[0] = v16;
    v19.__r_.__value_.__l.__size_ = v17;
    LODWORD(v19.__r_.__value_.__r.__words[2]) = v26[0];
    *(&v19.__r_.__value_.__r.__words[2] + 3) = *(v26 + 3);
    *(&v19.__r_.__value_.__s + 23) = v18;
  }

  MPSKernelLogPerfTestCommandline(a1, a2, &v20, &v19);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_27:
      if ((v18 & 0x80000000) == 0)
      {
        return;
      }

LABEL_31:
      operator delete(v16);
      return;
    }
  }

  else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  if (v18 < 0)
  {
    goto LABEL_31;
  }
}

void sub_239ACAF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v41 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(v40);
  goto LABEL_6;
}

uint64_t MPSNDArraySDPACreateUserConstant(int *a1)
{
  v1 = *a1;
  if (*a1 == 536870920)
  {
    v2 = 3;
    v3 = a1[1];
    if (v3 != 268435488)
    {
      goto LABEL_7;
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  if (v1 == 268435488)
  {
    v2 = 0;
    v3 = a1[1];
    if (v3 != 268435488)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (v1 != 268435472)
  {
    result = MTLReportFailureTypeEnabled();
    if (!result)
    {
      return result;
    }

    goto LABEL_17;
  }

  v2 = 1;
  v3 = a1[1];
  if (v3 == 268435488)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v3 != 268435472)
  {
    result = MTLReportFailureTypeEnabled();
    if (!result)
    {
      return result;
    }

LABEL_17:
    MTLReportFailure();
    return 0;
  }

  v4 = 16;
LABEL_11:
  v5 = v4 | v2 | ((*(a1 + 4) << 8) + 1792) & 0x700 | ((a1[3] << 11) + 14336) & 0x3800 | (*(a1 + 16) << 14) | (*(a1 + 17) << 7) | (*(a1 + 18) << 15) | (*(a1 + 19) << 16);
  v6 = v1 >> 3;
  if (v6)
  {
    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v7 = 0x80000;
      do
      {
        v8 = v6;
        v6 >>= 1;
        v7 += 0x20000;
      }

      while ((v8 & 2) == 0);
      v9 = v7 & 0x60000;
    }
  }

  else
  {
    v9 = 393216;
  }

  return v5 | v9 | (*(a1 + 20) << 19) | (*(a1 + 22) << 20) | (*(a1 + 23) << 21) | (*(a1 + 24) << 22);
}

uint64_t EncodeGatherCommon(char *a1, void *a2, uint64_t a3, int a4, int a5)
{
  v10 = *&a1[*MEMORY[0x277CD7370]];
  if (a4)
  {
    v11 = *(a3 + 112);
    v12 = [*(a3 + 16) objectAtIndexedSubscript:1];
    v13 = *(a3 + 208);
    if (a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = [*(a3 + 16) objectAtIndexedSubscript:0];
    v12 = [*(a3 + 16) objectAtIndexedSubscript:1];
    v13 = *(a3 + 208);
  }

  v14 = *(a3 + 24);
  if (v14)
  {
    v15 = v12;
    *(v14 + 68) = [a1 axis];
    v12 = v15;
  }

LABEL_7:
  v16 = *MEMORY[0x277CD73D8];
  v17 = *&v11[v16];
  v18 = v17;
  if (v17)
  {
    v19 = *&v11[*MEMORY[0x277CD7400]] / (*&v11[*MEMORY[0x277CD73C8]] >> 3);
    if (v17 != 1)
    {
      v20 = &v11[*MEMORY[0x277CD73D0]];
      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      v24 = *v20;
      v23 = *(v20 + 1);
      v25 = 1;
      do
      {
        v65[0] = v24;
        v65[1] = v23;
        v65[2] = v22;
        v65[3] = v21;
        LODWORD(v19) = v19 * *(v65 + (v25++ & 0xF));
      }

      while (v18 != v25);
    }

    v26 = *&v13[v16];
    v27 = v26;
    if (v26)
    {
LABEL_12:
      v28 = *&v13[*MEMORY[0x277CD7400]] / (*&v13[*MEMORY[0x277CD73C8]] >> 3);
      if (v27 != 1)
      {
        v29 = &v13[*MEMORY[0x277CD73D0]];
        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        v33 = *v29;
        v32 = *(v29 + 1);
        for (i = 1; i != v27; ++i)
        {
          v64[0] = v33;
          v64[1] = v32;
          v64[2] = v31;
          v64[3] = v30;
          LODWORD(v28) = v28 * *(v64 + (i & 0xF));
        }
      }

      if (a4)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  else
  {
    LODWORD(v19) = 1;
    v37 = *&v13[v16];
    v27 = v37;
    if (v37)
    {
      goto LABEL_12;
    }
  }

  LODWORD(v28) = 1;
  if (a4)
  {
LABEL_16:
    v35 = (a3 + 96);
    v36 = *(a3 + 8);
    goto LABEL_20;
  }

LABEL_19:
  v36 = *(a3 + 8);
  v35 = (v36 + 64);
LABEL_20:
  v38 = *v35;
  v39 = *(v36 + 144);
  v40 = *MEMORY[0x277CD73C8];
  v41 = *&v11[v40];
  v63 = *(a3 + 192);
  if (v41 > 285212703)
  {
    if (v41 <= 536870915)
    {
      if (v41 > 301989895)
      {
        if (v41 == 301989896)
        {
          v42 = 512;
          v43 = *&v13[v40];
          v61 = v38;
          v62 = v39;
          if (v43 <= 285212703)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (v41 != 335544328)
          {
            goto LABEL_101;
          }

          v42 = 544;
          v43 = *&v13[v40];
          v61 = v38;
          v62 = v39;
          if (v43 <= 285212703)
          {
            goto LABEL_80;
          }
        }
      }

      else if (v41 == 285212704)
      {
        v42 = 416;
        v43 = *&v13[v40];
        v61 = v38;
        v62 = v39;
        if (v43 <= 285212703)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v41 != 285212736)
        {
          goto LABEL_101;
        }

        v42 = 448;
        v43 = *&v13[v40];
        v61 = v38;
        v62 = v39;
        if (v43 <= 285212703)
        {
          goto LABEL_80;
        }
      }
    }

    else if (v41 <= 536870927)
    {
      if (v41 == 536870916)
      {
        v42 = 0;
        v43 = *&v13[v40];
        v61 = v38;
        v62 = v39;
        if (v43 > 285212703)
        {
          goto LABEL_102;
        }

        goto LABEL_80;
      }

      if (v41 != 536870920)
      {
        goto LABEL_101;
      }

      v42 = 32;
      v43 = *&v13[v40];
      v61 = v38;
      v62 = v39;
      if (v43 <= 285212703)
      {
        goto LABEL_80;
      }
    }

    else
    {
      switch(v41)
      {
        case 536870928:
          v42 = 64;
          v43 = *&v13[v40];
          v61 = v38;
          v62 = v39;
          if (v43 <= 285212703)
          {
            goto LABEL_80;
          }

          break;
        case 536870944:
          v42 = 96;
          v43 = *&v13[v40];
          v61 = v38;
          v62 = v39;
          if (v43 <= 285212703)
          {
            goto LABEL_80;
          }

          break;
        case 536870976:
          v42 = 128;
          v43 = *&v13[v40];
          v61 = v38;
          v62 = v39;
          if (v43 <= 285212703)
          {
            goto LABEL_80;
          }

          break;
        default:
          goto LABEL_101;
      }
    }
  }

  else if (v41 <= 31)
  {
    if (v41 > 7)
    {
      if (v41 == 8)
      {
        v42 = 192;
        v43 = *&v13[v40];
        v61 = v38;
        v62 = v39;
        if (v43 <= 285212703)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v41 != 16)
        {
          goto LABEL_101;
        }

        v42 = 224;
        v43 = *&v13[v40];
        v61 = v38;
        v62 = v39;
        if (v43 <= 285212703)
        {
          goto LABEL_80;
        }
      }
    }

    else if (v41 == -1879048176)
    {
      v42 = 384;
      v43 = *&v13[v40];
      v61 = v38;
      v62 = v39;
      if (v43 <= 285212703)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v41 != 4)
      {
        goto LABEL_101;
      }

      v42 = 160;
      v43 = *&v13[v40];
      v61 = v38;
      v62 = v39;
      if (v43 <= 285212703)
      {
        goto LABEL_80;
      }
    }
  }

  else if (v41 <= 268435463)
  {
    if (v41 == 32)
    {
      v42 = 256;
      v43 = *&v13[v40];
      v61 = v38;
      v62 = v39;
      if (v43 <= 285212703)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v41 != 64)
      {
        goto LABEL_101;
      }

      v42 = 288;
      v43 = *&v13[v40];
      v61 = v38;
      v62 = v39;
      if (v43 <= 285212703)
      {
        goto LABEL_80;
      }
    }
  }

  else
  {
    switch(v41)
    {
      case 268435464:
        v42 = 480;
        v43 = *&v13[v40];
        v61 = v38;
        v62 = v39;
        if (v43 <= 285212703)
        {
          goto LABEL_80;
        }

        break;
      case 268435472:
        v42 = 320;
        v43 = *&v13[v40];
        v61 = v38;
        v62 = v39;
        if (v43 <= 285212703)
        {
          goto LABEL_80;
        }

        break;
      case 268435488:
        v42 = 352;
        v43 = *&v13[v40];
        v61 = v38;
        v62 = v39;
        if (v43 > 285212703)
        {
          break;
        }

LABEL_80:
        if (v43 <= 31)
        {
          if (v43 > 7)
          {
            if (v43 == 8)
            {
              v44 = 6;
              goto LABEL_124;
            }

            if (v43 == 16)
            {
              v44 = 7;
              goto LABEL_124;
            }
          }

          else
          {
            if (v43 == -1879048176)
            {
              v44 = 12;
              goto LABEL_124;
            }

            if (v43 == 4)
            {
              v44 = 5;
              goto LABEL_124;
            }
          }
        }

        else if (v43 <= 268435463)
        {
          if (v43 == 32)
          {
            v44 = 8;
            goto LABEL_124;
          }

          if (v43 == 64)
          {
            v44 = 9;
            goto LABEL_124;
          }
        }

        else
        {
          switch(v43)
          {
            case 268435464:
              v44 = 15;
              goto LABEL_124;
            case 268435472:
              v44 = 10;
              goto LABEL_124;
            case 268435488:
              v44 = 11;
              goto LABEL_124;
          }
        }

        goto LABEL_123;
      default:
LABEL_101:
        v42 = 576;
        v43 = *&v13[v40];
        v61 = v38;
        v62 = v39;
        if (v43 > 285212703)
        {
          break;
        }

        goto LABEL_80;
    }
  }

LABEL_102:
  if (v43 <= 536870915)
  {
    if (v43 > 301989895)
    {
      if (v43 == 301989896)
      {
        v44 = 16;
        goto LABEL_124;
      }

      if (v43 == 335544328)
      {
        v44 = 17;
        goto LABEL_124;
      }
    }

    else
    {
      if (v43 == 285212704)
      {
        v44 = 13;
        goto LABEL_124;
      }

      if (v43 == 285212736)
      {
        v44 = 14;
        goto LABEL_124;
      }
    }
  }

  else if (v43 <= 536870927)
  {
    if (v43 == 536870916)
    {
      v44 = 0;
      goto LABEL_124;
    }

    if (v43 == 536870920)
    {
      v44 = 1;
      goto LABEL_124;
    }
  }

  else
  {
    switch(v43)
    {
      case 536870928:
        v44 = 2;
        goto LABEL_124;
      case 536870944:
        v44 = 3;
        goto LABEL_124;
      case 536870976:
        v44 = 4;
        goto LABEL_124;
    }
  }

LABEL_123:
  v44 = 18;
LABEL_124:
  v45 = 0x2000000;
  if ((a4 & a5) == 0)
  {
    v45 = 0;
  }

  *&v46 = -1;
  *(&v46 + 1) = -1;
  v78 = v46;
  v79 = v46;
  v75 = -1;
  v77 = v46;
  v74 = v46;
  v76 = v42 | v44 | v45;
  v47 = *(v12 + *MEMORY[0x277CD7410]);
  v72[0] = *(v12 + *MEMORY[0x277CD7410]);
  v72[1] = v19;
  if (v41 > 285212703)
  {
    if (v41 <= 536870915)
    {
      if (v41 > 301989895)
      {
        if (v41 == 301989896)
        {
          v48 = 16;
          goto LABEL_170;
        }

        if (v41 == 335544328)
        {
          v48 = 17;
          goto LABEL_170;
        }
      }

      else
      {
        if (v41 == 285212704)
        {
          v48 = 13;
          goto LABEL_170;
        }

        if (v41 == 285212736)
        {
          v48 = 14;
          goto LABEL_170;
        }
      }
    }

    else if (v41 <= 536870927)
    {
      if (v41 == 536870916)
      {
        v48 = 0;
        goto LABEL_170;
      }

      if (v41 == 536870920)
      {
        v48 = 1;
        goto LABEL_170;
      }
    }

    else
    {
      switch(v41)
      {
        case 536870928:
          v48 = 2;
          goto LABEL_170;
        case 536870944:
          v48 = 3;
          goto LABEL_170;
        case 536870976:
          v48 = 4;
          goto LABEL_170;
      }
    }
  }

  else if (v41 <= 31)
  {
    if (v41 > 7)
    {
      if (v41 == 8)
      {
        v48 = 6;
        goto LABEL_170;
      }

      if (v41 == 16)
      {
        v48 = 7;
        goto LABEL_170;
      }
    }

    else
    {
      if (v41 == -1879048176)
      {
        v48 = 12;
        goto LABEL_170;
      }

      if (v41 == 4)
      {
        v48 = 5;
        goto LABEL_170;
      }
    }
  }

  else if (v41 <= 268435463)
  {
    if (v41 == 32)
    {
      v48 = 8;
      goto LABEL_170;
    }

    if (v41 == 64)
    {
      v48 = 9;
      goto LABEL_170;
    }
  }

  else
  {
    switch(v41)
    {
      case 268435464:
        v48 = 15;
        goto LABEL_170;
      case 268435472:
        v48 = 10;
        goto LABEL_170;
      case 268435488:
        v48 = 11;
        goto LABEL_170;
    }
  }

  v48 = 18;
LABEL_170:
  v49 = 31 - __clz(v41 >> 3);
  if (v41 >> 3)
  {
    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  v72[2] = v48;
  v72[3] = v50;
  v73 = 0;
  v70[0] = v47;
  v70[1] = v28;
  if (v43 > 285212703)
  {
    if (v43 <= 536870915)
    {
      if (v43 > 301989895)
      {
        if (v43 == 301989896)
        {
          v51 = 16;
          goto LABEL_216;
        }

        if (v43 == 335544328)
        {
          v51 = 17;
          goto LABEL_216;
        }
      }

      else
      {
        if (v43 == 285212704)
        {
          v51 = 13;
          goto LABEL_216;
        }

        if (v43 == 285212736)
        {
          v51 = 14;
          goto LABEL_216;
        }
      }
    }

    else if (v43 <= 536870927)
    {
      v51 = 0;
      if (v43 == 536870916)
      {
        goto LABEL_216;
      }

      if (v43 == 536870920)
      {
        v51 = 1;
        goto LABEL_216;
      }
    }

    else
    {
      switch(v43)
      {
        case 536870928:
          v51 = 2;
          goto LABEL_216;
        case 536870944:
          v51 = 3;
          goto LABEL_216;
        case 536870976:
          v51 = 4;
          goto LABEL_216;
      }
    }
  }

  else if (v43 <= 31)
  {
    if (v43 > 7)
    {
      if (v43 == 8)
      {
        v51 = 6;
        goto LABEL_216;
      }

      if (v43 == 16)
      {
        v51 = 7;
        goto LABEL_216;
      }
    }

    else
    {
      if (v43 == -1879048176)
      {
        v51 = 12;
        goto LABEL_216;
      }

      if (v43 == 4)
      {
        v51 = 5;
        goto LABEL_216;
      }
    }
  }

  else if (v43 <= 268435463)
  {
    if (v43 == 32)
    {
      v51 = 8;
      goto LABEL_216;
    }

    if (v43 == 64)
    {
      v51 = 9;
      goto LABEL_216;
    }
  }

  else
  {
    switch(v43)
    {
      case 268435464:
        v51 = 15;
        goto LABEL_216;
      case 268435472:
        v51 = 10;
        goto LABEL_216;
      case 268435488:
        v51 = 11;
        goto LABEL_216;
    }
  }

  v51 = 18;
LABEL_216:
  v52 = 31 - __clz(v43 >> 3);
  if (v43 >> 3)
  {
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v70[2] = v51;
  v70[3] = v53;
  v71 = 0;
  v54 = v12;
  ComputeState = MPSLibrary::GetComputeState();
  v56 = [ComputeState threadExecutionWidth];
  if (v56 <= 1)
  {
    v57 = 1;
  }

  else
  {
    v57 = v56;
  }

  v58 = 2 * v57;
  v59 = (v47 + v57 - 1) / v57;
  [a2 setComputePipelineState:ComputeState];
  [a2 setBuffer:objc_msgSend(v11 offset:"buffer") atIndex:{v61, 0}];
  [a2 setBuffer:objc_msgSend(v54 offset:"buffer") atIndex:{v62, 1}];
  [a2 setBuffer:objc_msgSend(v13 offset:"buffer") atIndex:{v63, 2}];
  [a2 setBytes:v72 length:24 atIndex:3];
  [a2 setBytes:v70 length:24 atIndex:4];
  v68 = v59;
  v69 = vdupq_n_s64(1uLL);
  v66 = v58;
  v67 = v69;
  [a2 dispatchThreadgroups:&v68 threadsPerThreadgroup:&v66];
  return MPSLibrary::ReleaseComputeState();
}

BOOL MPSNDArrayConvolutionDeviceBehaviorA14::IsWinogradSupported(uint64_t a1, uint64_t a2)
{
  if (qword_27DF869D8 == -1)
  {
    if (_MergedGlobals_34)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&qword_27DF869D8, &__block_literal_global_5);
    if (_MergedGlobals_34)
    {
      return 0;
    }
  }

  if (*(a2 + 8) >= 2u)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "A14 Winograd Convolution: Only NHWC and NCHW data format and HWIO weights format supported by A14 direct kernels. Falling back to A14 direct implementation\n");
    return 0;
  }

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
  v8 = (*(**(v5 + 32) + 24))(*(v5 + 32));
  v9 = (*(**(v6 + 32) + 24))(*(v6 + 32));
  if (!v8 || (v9 & 1) == 0)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "A14 Winograd Convolution: Prefix linking not supported by A14 Winograd kernels. Falling back to A14 direct convolution implementation\n");
    return 0;
  }

  v10 = [*(*(a2 + 128) + 232) graph];
  v11 = *(v10 + 64);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 == v13)
  {
    goto LABEL_20;
  }

  v14 = v10;
  v28 = v7;
  v27 = *(a2 + 120);
  v15 = -1;
  v16 = -1;
  do
  {
    while (1)
    {
      v17 = *v12;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v14);
      v19 = *v12;
      if (v17 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v15 = *(v19 + 76);
      if (v19 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        goto LABEL_15;
      }

LABEL_12:
      if (++v12 == v13)
      {
        goto LABEL_16;
      }
    }

    if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
    {
      goto LABEL_12;
    }

LABEL_15:
    v20 = *v12++;
    v16 = *(v20 + 76);
  }

  while (v12 != v13);
LABEL_16:
  v21 = v27;
  if (v15 != -1)
  {
    v21 = 1;
  }

  v7 = v28;
  if (v16 == -1 || (v21 & 1) == 0)
  {
LABEL_20:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if (*(a2 + 8) >= 2u)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Only NHWC/NCHW data format supported for source by Winograd kernels. Falling back to generic implementation\n");
    return 0;
  }

  v22 = *(v7 + 16);
  v24 = *v22;
  v23 = v22[1];
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (*(a2 + 32) == 3 && *(a2 + 40) == 3 && *(a2 + 48) == 1 && *(a2 + 56) == 1 && *(a2 + 64) == 1 && *(a2 + 72) == 1 && (v26 = *(a2 + 80), *(a2 + 16) / v26 >= 8) && *(a2 + 24) / v26 > 1)
  {
    if ((*(v5 + 8) | 0x20000000) != 0x20000008 && (*(v6 + 8) | 0x20000000) != 0x20000008)
    {
      return (*(v7 + 8) & 0xDFFFFFFF) != 32;
    }
  }

  else
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "A14 Winograd Convolution: Data parameters are not compatible with Winograd algorithm. Falling back to A14 direct implementation\n");
  }

  return 0;
}

char *___ZNK38MPSNDArrayConvolutionDeviceBehaviorA1419IsWinogradSupportedEP28NDArrayConvolutionEncodeData_block_invoke()
{
  result = getenv("MPSNDARRAY_DIRECT_CONVOLUTION");
  if (result)
  {
    _MergedGlobals_34 = 1;
  }

  return result;
}

void *BaseTensor::GetNDArrayShape(void *this, uint64_t a2, uint64_t a3)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  if (a3 != a2)
  {
    if (((a3 - a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::IsIntrinsicsSupported(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) >= 2u)
  {
    v8 = *(a2 + 136);
    v9 = "A14 Direct Convolution: Only NHWC data format and HWIO weights format supported by A14 kernels. Falling back to preG13 implementation\n";
LABEL_12:
    MPSKernel_LogInfo(v8, 2uLL, v9);
    return 0;
  }

  v2 = *(a2 + 128);
  if (*(a2 + 120))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(v2 + 232) inputTensorAtIndex:v4];
  v6 = [*(v2 + 232) inputTensorAtIndex:1];
  v7 = [*(v2 + 232) outputTensorAtIndex:0];
  if ((*(v5 + 8) | 0x20000000) == 0x20000008 || (*(v6 + 8) | 0x20000000) == 0x20000008 || (*(v7 + 8) | 0x20000000) == 0x20000020)
  {
    return 0;
  }

  if (*(a2 + 120) == 1 && *(a2 + 56) * *(a2 + 48) >= 5uLL)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "Gradient with data of non unit stride not optimal with A14 kernel. Falling back to preG13 implementation\n");
    return 0;
  }

  v11 = v7;
  v12 = (*(**(v5 + 32) + 24))(*(v5 + 32));
  v13 = (*(**(v6 + 32) + 24))(*(v6 + 32));
  if (!v12 || (v13 & 1) == 0)
  {
    MPSKernel_LogInfo(*(a2 + 136), 2uLL, "A14 Direct Convolution: Prefix linking not supported by A14 kernels. Falling back to preG13 implementation\n");
    return 0;
  }

  v27 = -1;
  v28 = -1;
  v14 = [*(*(a2 + 128) + 232) graph];
  if (*(a2 + 120))
  {
    v15 = 0;
  }

  else
  {
    v15 = &v28;
  }

  if (GetPlaceHolderIndexInSourceArray(v14, v15, &v27) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = *(a2 + 8);
  if (v16 > 1)
  {
    v23 = a2;
    v9 = "Only NCHW/NHWC data format supported for source by A14 direct convolution kernels. Falling back to generic implementation\n";
LABEL_33:
    v8 = *(v23 + 136);
    goto LABEL_12;
  }

  if (v16)
  {
    BaseTensor::GetNDArrayShape(__p, **(v5 + 16), *(*(v5 + 16) + 8));
    v17 = *__p[0];
    operator delete(__p[0]);
    v18 = v11;
    BaseTensor::GetNDArrayShape(__p, **(v11 + 16), *(*(v11 + 16) + 8));
    v19 = *__p[0];
    operator delete(__p[0]);
    BaseTensor::GetNDArrayShape(__p, **(v11 + 16), *(*(v11 + 16) + 8));
    v20 = *(__p[0] + 1);
    operator delete(__p[0]);
    BaseTensor::GetNDArrayShape(__p, **(v11 + 16), *(*(v11 + 16) + 8));
    v21 = __p[0];
    v22 = *(__p[0] + 2);
  }

  else
  {
    BaseTensor::GetNDArrayShape(__p, **(v5 + 16), *(*(v5 + 16) + 8));
    v17 = *(__p[0] + 2);
    operator delete(__p[0]);
    v18 = v11;
    BaseTensor::GetNDArrayShape(__p, **(v11 + 16), *(*(v11 + 16) + 8));
    v19 = *(__p[0] + 2);
    operator delete(__p[0]);
    BaseTensor::GetNDArrayShape(__p, **(v11 + 16), *(*(v11 + 16) + 8));
    v20 = *__p[0];
    operator delete(__p[0]);
    BaseTensor::GetNDArrayShape(__p, **(v11 + 16), *(*(v11 + 16) + 8));
    v21 = __p[0];
    v22 = *(__p[0] + 1);
  }

  operator delete(v21);
  BaseTensor::GetNDArrayShape(__p, **(v18 + 16), *(*(v18 + 16) + 8));
  v24 = *(__p[0] + 3);
  operator delete(__p[0]);
  v23 = a2;
  if (v17 < 0x10)
  {
    goto LABEL_32;
  }

  v25 = 4;
  if (!*(a2 + 8))
  {
    v25 = 8;
  }

  if (v19 <= v25)
  {
LABEL_32:
    v9 = "Input channels less than 4 should fall back to generic implementation\n";
    goto LABEL_33;
  }

  if ((v22 * v20 * v24) <= 0xF)
  {
    v9 = "Outer product size less than 16 should fall back to generic implementation\n";
    goto LABEL_33;
  }

  return 1;
}

uint64_t mainSourcesHaveRectangularStrides(uint64_t a1)
{
  v2 = [*(*(a1 + 128) + 232) graph];
  v3 = *(v2 + 64);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    [*(*(a1 + 128) + 16) count];
    return 0;
  }

  v6 = v2;
  v7 = *(a1 + 120);
  v8 = -1;
  v9 = -1;
  do
  {
    while (1)
    {
      v10 = *v4;
      CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v6);
      v12 = *v4;
      if (v10 != *(CoreOpInputAtIndex + 32))
      {
        break;
      }

      v8 = *(v12 + 76);
      if (v12 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v6) + 32))
      {
        goto LABEL_7;
      }

LABEL_4:
      if (++v4 == v5)
      {
        goto LABEL_8;
      }
    }

    if (v12 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v6) + 32))
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = *v4++;
    v9 = *(v13 + 76);
  }

  while (v4 != v5);
LABEL_8:
  if ((v9 == -1) | v7 & 1)
  {
    v14 = -1;
  }

  else
  {
    v14 = v8;
  }

  if (v9 >= [*(*(a1 + 128) + 16) count])
  {
    return 0;
  }

  v15 = *(a1 + 128);
  if (*(a1 + 120) == 1)
  {
    v16 = *(v15 + 112);
    if (!v16)
    {
      return 0;
    }

LABEL_19:
    v17 = [*(*(a1 + 128) + 16) objectAtIndexedSubscript:v9];
    v18 = *MEMORY[0x277CD7408];
    v19 = *(v16 + v18);
    v20 = *MEMORY[0x277CD73F0];
    v21 = *(v16 + v20);
    v22 = 16;
    if (v21 < 0x10)
    {
      v22 = *(v16 + v20);
    }

    if (v21 >= 2)
    {
      v23 = (v16 + *MEMORY[0x277CD7428]);
      v25 = v23[6];
      v24 = v23[7];
      v27 = v23[4];
      v26 = v23[5];
      v29 = v23[2];
      v28 = v23[3];
      v31 = *v23;
      v30 = v23[1];
      v32 = 1;
      v33 = 1;
      while (1)
      {
        v77[0] = v31;
        v77[1] = v30;
        v77[2] = v29;
        v77[3] = v28;
        v77[4] = v27;
        v77[5] = v26;
        v77[6] = v25;
        v77[7] = v24;
        if (v19 != *(v77 + (v32 & 0xF)))
        {
          return 0;
        }

        v19 *= *(v16 + *MEMORY[0x277CD73D0] + 4 * (v32 & 0xF));
        v76 = *(v16 + *MEMORY[0x277CD73D8]);
        v33 |= 1 << *(&v76 | v32++ & 0xF);
        if (v22 == v32)
        {
          if (v21 <= 0xF)
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }
      }
    }

    v33 = 1;
LABEL_28:
    if ((v33 ^ (-1 << v22)) != 0xFFFFFFFF)
    {
      v34 = (v16 + *MEMORY[0x277CD7428]);
      v36 = v34[6];
      v35 = v34[7];
      v38 = v34[4];
      v37 = v34[5];
      v40 = v34[2];
      v39 = v34[3];
      v42 = *v34;
      v41 = v34[1];
      do
      {
        v75[0] = v42;
        v75[1] = v41;
        v75[2] = v40;
        v75[3] = v39;
        v75[4] = v38;
        v75[5] = v37;
        v75[6] = v36;
        v75[7] = v35;
        v43 = *(v75 + (v22 & 0xF));
        if (v19 != v43 && v43 != 0)
        {
          return 0;
        }

        v19 *= *(v16 + *MEMORY[0x277CD73D0] + 4 * (v22++ & 0xF));
      }

      while (v22 != 16);
    }

LABEL_36:
    v45 = *(v17 + v18);
    v46 = *(v17 + v20);
    if (v46 >= 0x10)
    {
      v47 = 16;
    }

    else
    {
      v47 = *(v17 + v20);
    }

    if (v46 >= 2)
    {
      v48 = (v17 + *MEMORY[0x277CD7428]);
      v50 = v48[6];
      v49 = v48[7];
      v52 = v48[4];
      v51 = v48[5];
      v54 = v48[2];
      v53 = v48[3];
      v56 = *v48;
      v55 = v48[1];
      v57 = 1;
      v58 = 1;
      while (1)
      {
        v74[0] = v56;
        v74[1] = v55;
        v74[2] = v54;
        v74[3] = v53;
        v74[4] = v52;
        v74[5] = v51;
        v74[6] = v50;
        v74[7] = v49;
        if (v45 != *(v74 + (v57 & 0xF)))
        {
          return 0;
        }

        v45 *= *(v17 + *MEMORY[0x277CD73D0] + 4 * (v57 & 0xF));
        v73 = *(v17 + *MEMORY[0x277CD73D8]);
        v58 |= 1 << *(&v73 | v57++ & 0xF);
        if (v47 == v57)
        {
          goto LABEL_47;
        }
      }
    }

    v58 = 1;
LABEL_47:
    v59 = 1;
    if (v46 <= 0xF && (v58 ^ (-1 << v47)) != 0xFFFFFFFF)
    {
      v61 = (v17 + *MEMORY[0x277CD7428]);
      v63 = v61[6];
      v62 = v61[7];
      v65 = v61[4];
      v64 = v61[5];
      v67 = v61[2];
      v66 = v61[3];
      v69 = *v61;
      v68 = v61[1];
      do
      {
        v72[0] = v69;
        v72[1] = v68;
        v72[2] = v67;
        v72[3] = v66;
        v72[4] = v65;
        v72[5] = v64;
        v72[6] = v63;
        v72[7] = v62;
        v70 = *(v72 + (v47 & 0xF));
        v71 = v45 == v70 || v70 == 0;
        v59 = v71;
        if (!v71)
        {
          break;
        }

        v45 *= *(v17 + *MEMORY[0x277CD73D0] + 4 * (v47++ & 0xF));
      }

      while (v47 != 16);
    }
  }

  else
  {
    if (v14 < [*(v15 + 16) count])
    {
      v16 = [*(*(a1 + 128) + 16) objectAtIndexedSubscript:v14];
      if (v16)
      {
        goto LABEL_19;
      }
    }

    return 0;
  }

  return v59;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::IsConvolutionSupported(uint64_t a1, uint64_t a2)
{
  HaveRectangularStrides = mainSourcesHaveRectangularStrides(a2);
  if (HaveRectangularStrides)
  {
    IsWinogradSupported = MPSNDArrayConvolutionDeviceBehaviorA14::IsWinogradSupported(HaveRectangularStrides, a2);
    if (IsWinogradSupported)
    {
      return 1;
    }

    else
    {

      return MPSNDArrayConvolutionDeviceBehaviorA14::IsIntrinsicsSupported(IsWinogradSupported, a2);
    }
  }

  else
  {
    MPSKernel_LogInfo(*(a2 + 136), 4uLL, "Non rectangular strides are not supported by A14 convolution. Falling back.\n");
    return 0;
  }
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionWinograd(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v225 = *MEMORY[0x277D85DE8];
  v163 = *a4;
  v5 = *(a4 + 12);
  v189 = *(a4 + 8);
  v190 = *(a4 + 16);
  v175 = *(a4 + 40);
  v176 = *(a4 + 32);
  v179 = *(a4 + 24);
  v182 = *(a4 + 80);
  v183 = *(a4 + 88);
  v174 = *(a4 + 96);
  v7 = *(a4 + 128);
  v6 = *(a4 + 136);
  v161 = *(v6 + *MEMORY[0x277CD7368]);
  v8 = &OBJC_IVAR___MPSNDArrayConvolution2D__ndArrayIdentity;
  v191 = *(a4 + 120);
  if (*(a4 + 120))
  {
    v8 = &OBJC_IVAR___MPSNDArrayConvolution2DGradientWithInput__ndArrayIdentity;
  }

  v9 = *(v6 + *v8);
  v162 = *(v6 + *MEMORY[0x277CD7360]);
  [v9 setLabel:?];
  v164 = *(*(a4 + 136) + *MEMORY[0x277CD7378]);
  v187 = v7;
  v186 = [*(v7 + 232) inputTensorAtIndex:1];
  v10 = [*(*(a4 + 128) + 232) graph];
  v11 = *(v10 + 64);
  v12 = *v11;
  v13 = v11[1];
  if (*v11 == v13)
  {
    v16 = 0;
    goto LABEL_15;
  }

  v14 = v10;
  v15 = -1;
  v16 = -1;
  do
  {
    v17 = *v12;
    CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v14);
    v19 = *v12;
    if (v17 == *(CoreOpInputAtIndex + 32))
    {
      v15 = *(v19 + 76);
      if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        goto LABEL_5;
      }
    }

    else if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
    {
      goto LABEL_5;
    }

    v16 = *(*v12 + 76);
LABEL_5:
    ++v12;
  }

  while (v12 != v13);
  if (v16 == -1)
  {
    v16 = 0;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_16:
      MTLReportFailure();
    }

LABEL_17:
    v15 = 0;
  }

  else if (v15 == -1)
  {
LABEL_15:
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v20 = *(v186 + 16);
  v207 = 0;
  v208 = 0;
  v206 = 0;
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

  v23 = [*(v187 + 16) objectAtIndexedSubscript:v16];
  v160 = *(*(v187 + 8) + 80 * v16 + 64);
  v24 = [*(v187 + 16) objectAtIndexedSubscript:v15];
  v25 = v23;
  if (v191)
  {
    v26 = (v187 + 96);
    v27 = *(v187 + 112);
  }

  else
  {
    v27 = v24;
    v26 = (*(v187 + 8) + 80 * v15 + 64);
  }

  v159 = *v26;
  v28 = MEMORY[0x277CD73D8];
  v29 = *MEMORY[0x277CD73D8];
  if (vmovn_s16(vzip1q_s8(*&v27[v29], *&v27[v29])).u32[0] == 50462976)
  {
    v185 = v27;
  }

  else
  {
    v30 = [objc_msgSend(v27 "descriptor")];
    v31 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v27[*MEMORY[0x277CD73C8]] shape:v30];
    v185 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v31];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v27 setReadCount:{objc_msgSend(v27, "readCount") + 1}];
    }

    v209 = v27;
    [v9 encodeToMPSCommandEncoder:a2 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v209 kernelDAGObject:{1), 0, v185, 0}];
    v29 = *v28;
  }

  v32 = *&v23[v29];
  if (v32 > 3u || BYTE1(v32) > 3u || BYTE2(*&v23[v29]) > 3u || BYTE3(*&v23[v29]) > 3u)
  {
    goto LABEL_40;
  }

  if (v32 != 50462976)
  {
    if (v5 == 1)
    {
      if (v32 != 16777731)
      {
        goto LABEL_40;
      }

      v167 = 0;
      v170 = 0;
    }

    else
    {
      if (v5 || v32 != 16777731)
      {
        goto LABEL_40;
      }

      v167 = 0;
      v170 = 1;
    }

LABEL_55:
    v38 = [*(v187 + 232) inputTensorAtIndex:0];
    v39 = [*(v187 + 232) inputTensorAtIndex:2];
    v40 = [*(v187 + 232) outputTensorAtIndex:0];
    v41 = WORD2(v183);
    v158 = [*(v187 + 16) count];
    v165 = v39;
    if (v191)
    {
      v157 = v183 + v174;
      v41 = WORD2(v174) + WORD2(v183);
      v38 = v39;
      v184 = v190;
      v190 = v179;
    }

    else
    {
      v157 = v183;
      v184 = v179;
    }

    v42 = *(v38 + 8);
    v43 = *(v186 + 8);
    v44 = *(v40 + 8);
    if (v42 != -1879048176 && v42 != 268435472 && v42 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v43 != -1879048176 && v43 != 268435472 && v43 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v44 != -1879048176 && v44 != 268435472 && v44 != 268435488 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v189 >= 2 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v38 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v186 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v40 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v171 = v42;
    v173 = v43;
    v45 = *(v38 + 16);
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

    v58 = v25;
    v59 = *(v40 + 16);
    v61 = *v59;
    v60 = v59[1];
    if (v60 != v61)
    {
      if (((v60 - v61) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    if (v189)
    {
      v48 = 8;
      v49 = 8;
      v50 = 16;
      v51 = 0;
      v52 = 0;
      v53 = v206;
      v54 = v206 + 2;
      v152 = v41;
      if (!v5)
      {
LABEL_87:
        v57 = v54;
        v54 = v53 + 1;
        v56 = 3;
        v55 = v53;
LABEL_88:
        v62 = MEMORY[0x18];
        v168 = *v49;
        v63 = *v52;
        v150 = *v48;
        v151 = *v50;
        v180 = *v51;
        v64 = *v50;
        v169 = MEMORY[0x18];
        v65 = *v55;
        v66 = *v54 * v182;
        v67 = *v57;
        v68 = LODWORD(v53[v56]);
        if (v191)
        {
          if (v66 != v184 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (v190 != v65 && MTLReportFailureTypeEnabled())
          {
LABEL_396:
            MTLReportFailure();
          }
        }

        else
        {
          if (v66 != v190 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if (v184 != v65 && (MTLReportFailureTypeEnabled() & 1) != 0)
          {
            goto LABEL_396;
          }
        }

        if (v68 != v175 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v67 != v176 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v62 != v169 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v63 != v190 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        if (v180 != v184 && MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v69 = *(v38 + 8);
        if (v69 > 285212703)
        {
          if (v69 <= 536870915)
          {
            if (v69 > 301989895)
            {
              if (v69 == 301989896)
              {
                v70 = 512;
                goto LABEL_144;
              }

              if (v69 == 335544328)
              {
                v70 = 544;
                goto LABEL_144;
              }
            }

            else
            {
              if (v69 == 285212704)
              {
                v70 = 416;
                goto LABEL_144;
              }

              if (v69 == 285212736)
              {
                v70 = 448;
                goto LABEL_144;
              }
            }
          }

          else if (v69 <= 536870927)
          {
            if (v69 == 536870916)
            {
              v70 = 0;
              goto LABEL_144;
            }

            if (v69 == 536870920)
            {
              v70 = 32;
              goto LABEL_144;
            }
          }

          else
          {
            switch(v69)
            {
              case 536870928:
                v70 = 64;
                goto LABEL_144;
              case 536870944:
                v70 = 96;
                goto LABEL_144;
              case 536870976:
                v70 = 128;
                goto LABEL_144;
            }
          }
        }

        else if (v69 <= 31)
        {
          if (v69 > 7)
          {
            if (v69 == 8)
            {
              v70 = 192;
              goto LABEL_144;
            }

            if (v69 == 16)
            {
              v70 = 224;
              goto LABEL_144;
            }
          }

          else
          {
            if (v69 == -1879048176)
            {
              v70 = 384;
              goto LABEL_144;
            }

            if (v69 == 4)
            {
              v70 = 160;
              goto LABEL_144;
            }
          }
        }

        else if (v69 <= 268435463)
        {
          if (v69 == 32)
          {
            v70 = 256;
            goto LABEL_144;
          }

          if (v69 == 64)
          {
            v70 = 288;
            goto LABEL_144;
          }
        }

        else
        {
          switch(v69)
          {
            case 268435464:
              v70 = 480;
              goto LABEL_144;
            case 268435472:
              v70 = 320;
              goto LABEL_144;
            case 268435488:
              v70 = 352;
              goto LABEL_144;
          }
        }

        v70 = 576;
LABEL_144:
        v71 = *(v186 + 8);
        v149 = v65;
        if (v71 > 285212703)
        {
          if (v71 <= 536870915)
          {
            if (v71 > 301989895)
            {
              if (v71 == 301989896)
              {
                v72 = 0x4000;
                goto LABEL_188;
              }

              if (v71 == 335544328)
              {
                v72 = 17408;
                goto LABEL_188;
              }
            }

            else
            {
              if (v71 == 285212704)
              {
                v72 = 13312;
                goto LABEL_188;
              }

              if (v71 == 285212736)
              {
                v72 = 14336;
                goto LABEL_188;
              }
            }
          }

          else if (v71 <= 536870927)
          {
            if (v71 == 536870916)
            {
              v72 = 0;
              goto LABEL_188;
            }

            if (v71 == 536870920)
            {
              v72 = 1024;
              goto LABEL_188;
            }
          }

          else
          {
            switch(v71)
            {
              case 536870928:
                v72 = 2048;
                goto LABEL_188;
              case 536870944:
                v72 = 3072;
                goto LABEL_188;
              case 536870976:
                v72 = 4096;
                goto LABEL_188;
            }
          }
        }

        else if (v71 <= 31)
        {
          if (v71 > 7)
          {
            if (v71 == 8)
            {
              v72 = 6144;
              goto LABEL_188;
            }

            if (v71 == 16)
            {
              v72 = 7168;
              goto LABEL_188;
            }
          }

          else
          {
            if (v71 == -1879048176)
            {
              v72 = 12288;
              goto LABEL_188;
            }

            if (v71 == 4)
            {
              v72 = 5120;
              goto LABEL_188;
            }
          }
        }

        else if (v71 <= 268435463)
        {
          if (v71 == 32)
          {
            v72 = 0x2000;
            goto LABEL_188;
          }

          if (v71 == 64)
          {
            v72 = 9216;
            goto LABEL_188;
          }
        }

        else
        {
          switch(v71)
          {
            case 268435464:
              v72 = 15360;
              goto LABEL_188;
            case 268435472:
              v72 = 10240;
              goto LABEL_188;
            case 268435488:
              v72 = 11264;
              goto LABEL_188;
          }
        }

        v72 = 18432;
LABEL_188:
        v73 = v62;
        v74 = v72 | v70;
        if (!v191)
        {
          goto LABEL_234;
        }

        v75 = *(v165 + 8);
        if (v75 > 285212703)
        {
          if (v75 <= 536870915)
          {
            if (v75 > 301989895)
            {
              if (v75 == 301989896)
              {
                v76 = 0x80000;
                goto LABEL_233;
              }

              if (v75 == 335544328)
              {
                v76 = 557056;
                goto LABEL_233;
              }
            }

            else
            {
              if (v75 == 285212704)
              {
                v76 = 425984;
                goto LABEL_233;
              }

              if (v75 == 285212736)
              {
                v76 = 458752;
                goto LABEL_233;
              }
            }
          }

          else if (v75 <= 536870927)
          {
            if (v75 == 536870916)
            {
              v76 = 0;
              goto LABEL_233;
            }

            if (v75 == 536870920)
            {
              v76 = 0x8000;
              goto LABEL_233;
            }
          }

          else
          {
            switch(v75)
            {
              case 536870928:
                v76 = 0x10000;
                goto LABEL_233;
              case 536870944:
                v76 = 98304;
                goto LABEL_233;
              case 536870976:
                v76 = 0x20000;
                goto LABEL_233;
            }
          }
        }

        else if (v75 <= 31)
        {
          if (v75 > 7)
          {
            if (v75 == 8)
            {
              v76 = 196608;
              goto LABEL_233;
            }

            if (v75 == 16)
            {
              v76 = 229376;
              goto LABEL_233;
            }
          }

          else
          {
            if (v75 == -1879048176)
            {
              v76 = 393216;
              goto LABEL_233;
            }

            if (v75 == 4)
            {
              v76 = 163840;
              goto LABEL_233;
            }
          }
        }

        else if (v75 <= 268435463)
        {
          if (v75 == 32)
          {
            v76 = 0x40000;
            goto LABEL_233;
          }

          if (v75 == 64)
          {
            v76 = 294912;
            goto LABEL_233;
          }
        }

        else
        {
          switch(v75)
          {
            case 268435464:
              v76 = 491520;
              goto LABEL_233;
            case 268435472:
              v76 = 327680;
              goto LABEL_233;
            case 268435488:
              v76 = 360448;
LABEL_233:
              v74 |= v76;
LABEL_234:
              v77 = *(v40 + 8);
              v156 = v74;
              if (v77 > 285212703)
              {
                if (v77 <= 536870915)
                {
                  if (v77 > 301989895)
                  {
                    if (v77 == 301989896)
                    {
                      v78 = 16;
                      goto LABEL_278;
                    }

                    if (v77 == 335544328)
                    {
                      v78 = 17;
                      goto LABEL_278;
                    }
                  }

                  else
                  {
                    if (v77 == 285212704)
                    {
                      v78 = 13;
                      goto LABEL_278;
                    }

                    if (v77 == 285212736)
                    {
                      v78 = 14;
                      goto LABEL_278;
                    }
                  }
                }

                else if (v77 <= 536870927)
                {
                  if (v77 == 536870916)
                  {
                    v155 = 0;
                    goto LABEL_279;
                  }

                  if (v77 == 536870920)
                  {
                    v78 = 1;
                    goto LABEL_278;
                  }
                }

                else
                {
                  switch(v77)
                  {
                    case 536870928:
                      v78 = 2;
                      goto LABEL_278;
                    case 536870944:
                      v78 = 3;
                      goto LABEL_278;
                    case 536870976:
                      v78 = 4;
                      goto LABEL_278;
                  }
                }
              }

              else if (v77 <= 31)
              {
                if (v77 > 7)
                {
                  if (v77 == 8)
                  {
                    v78 = 6;
                    goto LABEL_278;
                  }

                  if (v77 == 16)
                  {
                    v78 = 7;
                    goto LABEL_278;
                  }
                }

                else
                {
                  if (v77 == -1879048176)
                  {
                    v78 = 12;
                    goto LABEL_278;
                  }

                  if (v77 == 4)
                  {
                    v78 = 5;
                    goto LABEL_278;
                  }
                }
              }

              else if (v77 <= 268435463)
              {
                if (v77 == 32)
                {
                  v78 = 8;
                  goto LABEL_278;
                }

                if (v77 == 64)
                {
                  v78 = 9;
                  goto LABEL_278;
                }
              }

              else
              {
                switch(v77)
                {
                  case 268435464:
                    v78 = 15;
                    goto LABEL_278;
                  case 268435472:
                    v78 = 10;
                    goto LABEL_278;
                  case 268435488:
                    v78 = 11;
LABEL_278:
                    v155 = v78;
LABEL_279:
                    if (v171 == 268435472)
                    {
                      v79 = 4;
                    }

                    else
                    {
                      v79 = 8 * (v171 == -1879048176);
                    }

                    if (v173 == 268435472)
                    {
                      v80 = 32;
                    }

                    else
                    {
                      v80 = (v173 == -1879048176) << 6;
                    }

                    v166 = v64;
                    v81 = *(*(a1 + 16) + 1480);
                    v82 = ((v64 + 1) >> 1) * ((v168 + 1) >> 1);
                    v83 = v82 * v62;
                    if (v83 < 0x11)
                    {
                      v84 = 4;
                    }

                    else
                    {
                      v84 = 5;
                    }

                    v85 = v83 * v180;
                    if (v82 * v62 < 0x11)
                    {
                      v86 = 4;
                    }

                    else
                    {
                      v86 = 5;
                    }

                    v87 = 16 * (v81 << v86);
                    if (v85 <= v87)
                    {
                      v84 = 4;
                    }

                    v153 = v80;
                    v154 = v79;
                    if (v189 == 1)
                    {
                      if (v82 <= 0x80)
                      {
                        v88 = 0;
                      }

                      else
                      {
                        v88 = -1;
                      }

                      if (v82 <= 0x300)
                      {
                        v89 = v82 > 0x80;
                      }

                      else
                      {
                        v89 = 3;
                      }

                      if (v82 > 0x300)
                      {
                        v88 = -3;
                      }

                      v90 = v84 + v88;
                      if ((((1 << (v84 + v88)) - 1) & v62) != 0)
                      {
                        do
                        {
                          ++v89;
                          --v90;
                        }

                        while (v62 % (1 << v90));
                        v147 = 1 << v90;
                      }

                      else
                      {
                        v147 = 1 << v90;
                      }
                    }

                    else
                    {
                      v91 = v82 - 1;
                      v92 = (((v82 - 1 + (1 << (v84 - 2))) >> (v84 - 2)) * ((v62 + 3) >> 2)) / 0.97;
                      v93 = (((v82 - 1 + (1 << v84)) >> v84) * v62);
                      v94 = (((v82 - 1 + (1 << (v84 - 1))) >> (v84 - 1)) * ((v62 + 1) >> 1)) / 0.99;
                      v95 = v94 < v93;
                      if (v94 >= v93)
                      {
                        v94 = (((v91 + (1 << v84)) >> v84) * v62);
                      }

                      if (v92 < v94)
                      {
                        v95 = 2;
                      }

                      else
                      {
                        v92 = v94;
                      }

                      v96 = (v62 + 7) >> 3;
                      if (((((v91 + (1 << (v84 - 3))) >> (v84 - 3)) * v96) / 0.925) < v92)
                      {
                        v95 = 3;
                        v92 = (((v91 + (1 << (v84 - 3))) >> (v84 - 3)) * v96) / 0.925;
                      }

                      if (((((v91 + (1 << (v84 - 4))) >> (v84 - 4)) * ((v62 + 15) >> 4)) / 0.85) >= v92)
                      {
                        v97 = v95;
                      }

                      else
                      {
                        v97 = 4;
                      }

                      if (v83 < 0x11)
                      {
                        v97 = v95;
                      }

                      if (v85 > v87)
                      {
                        v90 = v97;
                      }

                      else
                      {
                        v90 = v95;
                      }

                      v89 = v84 - v90;
                      v147 = 1 << v90;
                    }

                    v98 = v81 << v84;
                    v99 = v83 >= 0x11 && v85 > v87;
                    v100 = !v99;
                    v101 = 2;
                    if (!v99)
                    {
                      v101 = 3;
                    }

                    if (v85 > 32 * v98 && v180 >= 0x11)
                    {
                      v103 = v100;
                    }

                    else
                    {
                      v103 = v101;
                    }

                    v104 = &a14WinogradLaunchParams + 6 * v103;
                    v105 = *(v104 + 2);
                    if (v105 >= 2)
                    {
                      v106 = 16;
                    }

                    else
                    {
                      v106 = 32;
                    }

                    v181 = *v104;
                    v148 = v104[5];
                    v107 = *(&v58->super.super.isa + *MEMORY[0x277CD7400]);
                    v178 = *(&v58->super.super.isa + *MEMORY[0x277CD7410]);
                    v108 = v171 == 268435472 && v173 == 268435472;
                    if (v108)
                    {
                      v109 = (v164 >> 1) & 1;
                    }

                    else
                    {
                      v109 = 0;
                    }

                    v110 = [*(v187 + 232) graph];
                    v172 = v109;
                    v108 = v109 == 0;
                    v111 = v184 / v182;
                    if (v108)
                    {
                      v112 = 0;
                    }

                    else
                    {
                      v112 = 0x800000;
                    }

                    v113 = (((v189 & 3) << 8) | (2 * (v182 == 1))) & 0xFBFF | ((v170 & 1) << 10) | ((v157 - v176 / 2) >> 44) & 0x80000 | v154 | v153 | v112 | ((((v190 / v182) & 7) == 0) << 18) | ((v89 & 7) << 14) | ((v90 & 7) << 11) | ((v105 & 3) << 20) | ((((v106 - 1) & v111) == 0) << 17) | ((v107 != (v173 >> 3) * v178) << 22);
                    if (*(v110 + 84))
                    {
                      v114 = 0x1000000;
                    }

                    else
                    {
                      v114 = 0;
                    }

                    v198 = -1;
                    v199 = -1;
                    v200 = v113 | v114 | v191;
                    v201 = v155 | v156;
                    v202 = 0u;
                    v203 = 0u;
                    v204 = v158 | (v191 << 8) | 0x10000;
                    v205 = 0;
                    v146 = *(v187 + 232);
                    MPSLibrary::CreateUberShaderKey();
                    [a2 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v146, v162, v161, 0, 0}];
                    MPSLibrary::ReleaseComputeState();
                    MPSLibrary::ReleaseMPSKey();
                    if (v105 >= 2)
                    {
                      v115 = 4;
                    }

                    else
                    {
                      v115 = 5;
                    }

                    v196 = *(v104 + 1);
                    v197 = v104[4];
                    v116 = *(v187 + 208);
                    v117 = *(v187 + 192);
                    MPSSetNDArraysOnComputeEncoder(a2, v187, 4, 0, 0);
                    [a2 setBuffer:objc_msgSend(v185 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v185, 0, 4, 0, 0) + v159, 29}];
                    if (v167)
                    {
                      v118 = 0;
                    }

                    else
                    {
                      v118 = v160;
                    }

                    [a2 setBuffer:-[MPSTemporaryNDArray buffer](v58 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v58, 0, 4, 0, 0) + v118, 28}];
                    [a2 setBuffer:objc_msgSend(v116 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v116, 0, 4, 0, 0) + v117, 27}];
                    v119 = ((v111 + v106 - 1) >> v115) * v182;
                    v212 = 0u;
                    v224 = 0u;
                    v223 = 0u;
                    v222 = 0u;
                    LODWORD(v209) = v182;
                    v120 = v190 / v182;
                    HIDWORD(v209) = v184 / v182;
                    v210 = v120;
                    v211 = v190;
                    LODWORD(v212) = v184;
                    v213 = v150;
                    v214 = v151;
                    v215 = v168;
                    v216 = v166;
                    v217 = v169;
                    v218 = v157 - v176 / 2;
                    v219 = v152 - v175 / 2;
                    LODWORD(v222) = 0;
                    v221 = 0u;
                    v220 = 0u;
                    WORD2(v222) = v119 / v182;
                    MPSGetUShortDivisorMagicNumber();
                    *(&v222 + 1) = v121;
                    LOWORD(v223) = (v168 + 1) >> 1;
                    MPSGetUIntDivisorMagicNumber();
                    v224 = v122;
                    v123 = *MEMORY[0x277CD7400];
                    v124 = *MEMORY[0x277CD73C8];
                    v125 = *&v185[v123] / (*&v185[v124] >> 3);
                    v126 = *MEMORY[0x277CD73D0];
                    v127 = &v116[v126];
                    v129 = *&v185[v126 + 4];
                    v128 = *&v185[v126 + 8];
                    v130 = *&v116[v123] / (*&v116[v124] >> 3);
                    v131 = *(v127 + 1);
                    v132 = *(v127 + 2);
                    if (v189)
                    {
                      v133 = v129 * v125;
                      v134 = v131 * v130;
                      v135 = 1;
                      v136 = *&v185[v123] / (*&v185[v124] >> 3);
                      LODWORD(v125) = v133;
                      v137 = *&v116[v123] / (*&v116[v124] >> 3);
                      LODWORD(v130) = v131 * v130;
                      v138 = 1;
                    }

                    else
                    {
                      v120 = v129 * v125 * (v190 / v182);
                      v133 = v129 * v125;
                      v134 = v131 * v130;
                      LODWORD(v136) = v128;
                      v135 = v133;
                      LODWORD(v137) = v132;
                      v138 = v131 * v130;
                      LODWORD(v111) = v131 * v130 * v111;
                    }

                    HIDWORD(v220) = v111;
                    DWORD2(v221) = v133 * v128;
                    HIDWORD(v221) = v134 * v132;
                    *(&v212 + 4) = __PAIR64__(v137, v136);
                    LODWORD(v220) = v125;
                    *(&v220 + 4) = __PAIR64__(v120, v130);
                    *&v221 = __PAIR64__(v138, v135);
                    v139 = *(&v58->super.super.isa + v123) / (*(&v58->super.super.isa + v124) >> 3);
                    if (v170 == 1)
                    {
                      v140 = v139;
                    }

                    else
                    {
                      v140 = 3;
                    }

                    if (v170 == 1)
                    {
                      LODWORD(v139) = v149;
                    }

                    LODWORD(v222) = v140;
                    HIDWORD(v212) = v139;
                    if ((atomic_load_explicit(&qword_27DF869E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF869E0))
                    {
                      xmmword_27DF86A00 = 0u;
                      xmmword_27DF869F0 = 0u;
                      dword_27DF86A10 = 1065353216;
                      qword_27DF86A18 = 850045863;
                      xmmword_27DF86A20 = 0u;
                      unk_27DF86A30 = 0u;
                      xmmword_27DF86A40 = 0u;
                      qword_27DF86A50 = 0;
                      __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF869F0, &dword_2399F7000);
                      __cxa_guard_release(&qword_27DF869E0);
                    }

                    Buffer = MPSBufferCache::getBuffer(&xmmword_27DF869F0, [objc_msgSend(a3 "commandQueue")], 0x10uLL, 0);
                    v142 = [Buffer contents];
                    *v142 = 0;
                    v142[1] = 0;
                    [a2 setBuffer:Buffer offset:0 atIndex:24];
                    [a2 setBytes:&v209 length:128 atIndex:26];
                    v143 = 1;
                    if (!v172)
                    {
                      v143 = 2;
                    }

                    [a2 setThreadgroupMemoryLength:v148 << v143 atIndex:0];
                    [a2 setBuffer:0 offset:0 atIndex:25];
                    v195[0] = v119;
                    v195[1] = ((1 << v89) + ((v166 + 1) >> 1) * ((v168 + 1) >> 1) - 1) / (1 << v89);
                    v195[2] = (v73 + v147 - 1) / v147;
                    v193 = v196;
                    v194 = v197;
                    [a2 dispatchThreadgroups:v195 threadsPerThreadgroup:&v193];
                    if (v167)
                    {
                      MPSDecrementReadCount(v58);
                    }

                    v36 = 0;
                    v37 = v206;
                    if (!v206)
                    {
                      goto LABEL_372;
                    }

LABEL_371:
                    v207 = v37;
                    operator delete(v37);
                    goto LABEL_372;
                }
              }

              v78 = 18;
              goto LABEL_278;
          }
        }

        v76 = 589824;
        goto LABEL_233;
      }
    }

    else
    {
      v52 = 16;
      v51 = 16;
      v50 = 8;
      v49 = 0;
      v48 = 0;
      v53 = v206;
      v54 = v206 + 2;
      v152 = v41;
      if (!v5)
      {
        goto LABEL_87;
      }
    }

    v55 = v53 + 3;
    v56 = 1;
    v57 = v53;
    goto LABEL_88;
  }

  if (v5 != -1)
  {
    v167 = 0;
    v170 = v5;
    goto LABEL_55;
  }

LABEL_40:
  v25 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(a1, v9, a3, a2, v23, &v206, -1, 0);
  if (v25)
  {
    v167 = 1;
    v170 = v5;
    goto LABEL_55;
  }

  v36 = MPSNDArrayConvolutionDeviceBehaviorPreG13::EncodeNDArrayConvolution(a1, a2, a3, a4);
  v37 = v206;
  if (v206)
  {
    goto LABEL_371;
  }

LABEL_372:
  v144 = *MEMORY[0x277D85DE8];
  return v36;
}

void sub_239ACEF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39)
{
  operator delete(__p);
  if (a39)
  {
    operator delete(a39);
    v40 = STACK[0x228];
    if (STACK[0x228])
    {
LABEL_6:
      STACK[0x230] = v40;
      operator delete(v40);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v40 = STACK[0x228];
    if (STACK[0x228])
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(a1);
}

uint16x4_t MPSNDArrayConvolutionDeviceBehaviorA16::GetKernelDispatchParametersForKeyIntrinsics@<D0>(uint64_t a1@<X0>, int32x4_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  GetKernelDispatchParametersForKeyIntrinsicsCommon(a6, a2, a3, a5, *(a1 + 8 * (a3 + 2 * a4) + 88), *(a1 + 128), *(a1 + 120), *(a1 + 16));
  *(a6 + 13) = 0;
  v9 = a2[1].i32[0];
  v8 = a2[1].i32[1];
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*a2, xmmword_239B1F420)))) & 1) == 0 && v8 == 5 && v9 == 5 || (result = vmovn_s32(vmvnq_s8(vceqq_s32(*a2, xmmword_239B1F430))), result.i16[0] = vmaxv_u16(result), (result.i8[0] & 1) == 0) && v9 == 5 && v8 == 5)
  {
    result = 0x1000000020;
    *a6 = 0x1000000020;
    *(a6 + 8) = 16;
    *(a6 + 12) = 0;
  }

  return result;
}

double GetKernelDispatchParametersForKeyIntrinsicsCommon(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (!a6)
  {
    goto LABEL_14;
  }

  v8 = (a5 + 13);
  while (1)
  {
    v9 = *a7 == *a2 && a7[1] == *(a2 + 8);
    if (v9 && a7[2] == *(a2 + 16))
    {
      break;
    }

    v8 += 16;
    a7 += 3;
    if (!--a6)
    {
      goto LABEL_14;
    }
  }

  if (a5)
  {
    v11 = *(v8 - 13);
    v12 = *(v8 - 9);
    v13 = *(v8 - 5);
    v14 = *v8;
    v15 = *(v8 - 1);
  }

  else
  {
LABEL_14:
    v14 = 0;
    v15 = 0;
    v16 = (*a2 * *(a2 + 4) * *(a2 + 12) * *(a2 + 28));
    v17 = *(a8 + 1480) << 13;
    if (v17 <= v16)
    {
      v12 = 32;
    }

    else
    {
      v12 = 16;
    }

    v18 = 4;
    if (v17 <= v16)
    {
      v18 = 5;
    }

    v19 = *(a8 + 1480) << 8 << v18;
    if (v19 <= v16)
    {
      v11 = 32;
    }

    else
    {
      v11 = 16;
    }

    if ((*(a2 + 16) * *(a2 + 8) * *(a2 + 20)) < 0x20 || a3 == 1 || v19 > v16 || v17 > v16)
    {
      v13 = 16;
    }

    else
    {
      v13 = 32;
    }
  }

  *a1 = v11;
  *(a1 + 4) = v12;
  *(a1 + 8) = xmmword_239B0C120;
  *(a1 + 8) = v13;
  *(a1 + 12) = v15 & 1;
  *(a1 + 13) = v14 & 1;
  *&result = 32;
  *(a1 + 24) = xmmword_239B1F440;
  if (a4)
  {
    result = *a4;
    *a1 = *a4;
    *(a1 + 8) = *(a4 + 8);
    *(a1 + 12) = *(a4 + 12);
  }

  return result;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionIntrinsics(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v198 = *MEMORY[0x277D85DE8];
  v119 = *a4;
  v143 = *(a4 + 8);
  v138 = *(a4 + 12);
  v150 = *(a4 + 16);
  v144 = *(a4 + 24);
  v5 = *(a4 + 40);
  v137 = *(a4 + 32);
  v133 = *(a4 + 56);
  v134 = *(a4 + 48);
  v124 = *(a4 + 72);
  v125 = *(a4 + 64);
  v156 = *(a4 + 80);
  v129 = *(a4 + 96);
  v141 = *(a4 + 88);
  v7 = *(a4 + 128);
  v6 = *(a4 + 136);
  v117 = *(v6 + *MEMORY[0x277CD7368]);
  v8 = &OBJC_IVAR___MPSNDArrayConvolution2D__ndArrayIdentity;
  v157 = *(a4 + 120);
  if (*(a4 + 120))
  {
    v8 = &OBJC_IVAR___MPSNDArrayConvolution2DGradientWithInput__ndArrayIdentity;
  }

  v9 = *(v6 + *v8);
  v118 = *(v6 + *MEMORY[0x277CD7360]);
  [v9 setLabel:?];
  v127 = [*(v7 + 232) inputTensorAtIndex:0];
  v152 = [*(v7 + 232) inputTensorAtIndex:1];
  v120 = [*(v7 + 232) inputTensorAtIndex:2];
  v146 = [*(v7 + 232) outputTensorAtIndex:0];
  v155 = v7;
  v116 = [*(v7 + 16) count];
  v10 = [*(*(a4 + 128) + 232) graph];
  v11 = *(v10 + 64);
  v12 = *v11;
  v13 = v11[1];
  v136 = v5;
  if (*v11 == v13)
  {
    v16 = -1;
    goto LABEL_15;
  }

  v14 = v10;
  v15 = -1;
  v16 = -1;
  do
  {
    v17 = *v12;
    CoreOpInputAtIndex = MPSKernelDAG::GetCoreOpInputAtIndex(v14);
    v19 = *v12;
    if (v17 == *(CoreOpInputAtIndex + 32))
    {
      v15 = *(v19 + 76);
      if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
      {
        goto LABEL_5;
      }
    }

    else if (v19 != *(MPSKernelDAG::GetCoreOpInputAtIndex(v14) + 32))
    {
      goto LABEL_5;
    }

    v16 = *(*v12 + 76);
LABEL_5:
    ++v12;
  }

  while (v12 != v13);
  if (v16 == -1)
  {
LABEL_15:
    v20 = a2;
    v21 = v155;
    goto LABEL_16;
  }

  v20 = a2;
  if (v157)
  {
    v15 = -1;
    v21 = v155;
    goto LABEL_19;
  }

  v21 = v155;
  if (v15 == -1)
  {
LABEL_16:
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v15 = -1;
  }

LABEL_19:
  v22 = [*(v21 + 16) objectAtIndexedSubscript:v16];
  v23 = *(*(v21 + 8) + 80 * v16 + 64);
  if (v157)
  {
    v24 = *(v21 + 112);
    v25 = v21 + 32;
  }

  else
  {
    v24 = [*(v21 + 16) objectAtIndexedSubscript:v15];
    v25 = *(v21 + 8) + 80 * v15;
  }

  v114 = *(v25 + 64);
  v113 = v23;
  if (vmovn_s16(vzip1q_s8(*&v24[*MEMORY[0x277CD73D8]], *&v24[*MEMORY[0x277CD73D8]])).u32[0] == 50462976)
  {
    v26 = v24;
  }

  else
  {
    v27 = [objc_msgSend(v24 "descriptor")];
    v28 = [MEMORY[0x277CD7268] descriptorWithDataType:*&v24[*MEMORY[0x277CD73C8]] shape:v27];
    v29 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:a3 descriptor:v28];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v24 setReadCount:{objc_msgSend(v24, "readCount") + 1}];
    }

    v176 = v24;
    [v9 encodeToMPSCommandEncoder:v20 commandBuffer:a3 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v176 kernelDAGObject:{1), 0, v29, 0}];
    v26 = v29;
  }

  v115 = v26;
  v135 = (*(*a1 + 48))(a1);
  if (v135)
  {
    v30 = *(v152 + 16);
    v177 = 0;
    v178 = 0;
    v176 = 0;
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

    v22 = MPSNDArrayConvolutionDeviceBehavior::transposedWeights(a1, v9, a3, v20, v22, &v176, v138, 0);
    if (v176)
    {
      v177 = v176;
      operator delete(v176);
    }
  }

  if (!v22)
  {
    result = MPSNDArrayConvolutionDeviceBehaviorPreG13::EncodeNDArrayConvolution(a1, v20, a3, a4);
    goto LABEL_350;
  }

  v33 = v141;
  v34 = HIDWORD(v141);
  v123 = v22;
  if (v157)
  {
    v33 = v129 + v134 * v141;
    v34 = HIDWORD(v129) + v133 * HIDWORD(v141);
    v35 = v120;
    v130 = v150;
  }

  else
  {
    v130 = v144;
    v144 = v150;
    v35 = v127;
  }

  v37 = v35;
  v151 = *(v152 + 8);
  v122 = *(v146 + 8);
  v142 = *(v35 + 8);
  if (v142 != -1879048176 && v142 != 268435472 && v142 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v151 != -1879048176 && v151 != 268435472 && v151 != 268435488 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v143 >= 2 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v37 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v152 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*v146 != 4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v38 = *(v37 + 16);
  v40 = *v38;
  v39 = v38[1];
  if (v39 != v40)
  {
    if (((v39 - v40) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v50 = *(v152 + 16);
  v52 = *v50;
  v51 = v50[1];
  if (v51 != v52)
  {
    if (((v51 - v52) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v53 = *(v146 + 16);
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

  if (v143)
  {
    v41 = 8;
    v42 = 8;
    v43 = 16;
    v44 = 0;
    v45 = 0;
    v46 = 16;
    v111 = v33;
    v112 = v34;
    if (!v138)
    {
      goto LABEL_65;
    }

    goto LABEL_60;
  }

  v45 = 16;
  v44 = 16;
  v43 = 8;
  v42 = 0;
  v41 = 0;
  v46 = 16;
  v111 = v33;
  v112 = v34;
  if (v138)
  {
LABEL_60:
    v47 = 24;
    v48 = 8;
    v49 = 0;
    goto LABEL_66;
  }

LABEL_65:
  v49 = 16;
  v46 = 8;
  v48 = 24;
  v47 = 0;
LABEL_66:
  v139 = MEMORY[0x18];
  v56 = *v45;
  v57 = *v44;
  v126 = *v43;
  v128 = *v42;
  LODWORD(v110) = *v41;
  HIDWORD(v110) = *v43;
  v58 = MEMORY[0x18];
  v59 = *v47;
  v60 = *v46 * v156;
  v61 = *v49;
  v62 = *v48;
  if (v157)
  {
    if (v60 != v130 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v59 != v144 && MTLReportFailureTypeEnabled())
    {
      goto LABEL_374;
    }
  }

  else
  {
    if (v60 != v144 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v59 != v130 && (MTLReportFailureTypeEnabled() & 1) != 0)
    {
LABEL_374:
      MTLReportFailure();
    }
  }

  if (v62 != v136 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v61 != v137 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v58 != v139 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v56 != v144 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v57 != v130 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v63 = *(v37 + 8);
  if (v63 > 285212703)
  {
    v64 = v136;
    if (v63 <= 536870915)
    {
      if (v63 > 301989895)
      {
        if (v63 == 301989896)
        {
          v65 = 512;
          v66 = *(v152 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }
        }

        else
        {
          if (v63 != 335544328)
          {
            goto LABEL_161;
          }

          v65 = 544;
          v66 = *(v152 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }
        }
      }

      else if (v63 == 285212704)
      {
        v65 = 416;
        v66 = *(v152 + 8);
        if (v66 <= 285212703)
        {
          goto LABEL_140;
        }
      }

      else
      {
        if (v63 != 285212736)
        {
          goto LABEL_161;
        }

        v65 = 448;
        v66 = *(v152 + 8);
        if (v66 <= 285212703)
        {
          goto LABEL_140;
        }
      }
    }

    else if (v63 <= 536870927)
    {
      if (v63 == 536870916)
      {
        v65 = 0;
        v66 = *(v152 + 8);
        if (v66 > 285212703)
        {
          goto LABEL_162;
        }

        goto LABEL_140;
      }

      if (v63 != 536870920)
      {
        goto LABEL_161;
      }

      v65 = 32;
      v66 = *(v152 + 8);
      if (v66 <= 285212703)
      {
        goto LABEL_140;
      }
    }

    else
    {
      switch(v63)
      {
        case 536870928:
          v65 = 64;
          v66 = *(v152 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }

          break;
        case 536870944:
          v65 = 96;
          v66 = *(v152 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }

          break;
        case 536870976:
          v65 = 128;
          v66 = *(v152 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }

          break;
        default:
          goto LABEL_161;
      }
    }
  }

  else
  {
    v64 = v136;
    if (v63 <= 31)
    {
      if (v63 > 7)
      {
        if (v63 == 8)
        {
          v65 = 192;
          v66 = *(v152 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }
        }

        else
        {
          if (v63 != 16)
          {
            goto LABEL_161;
          }

          v65 = 224;
          v66 = *(v152 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }
        }
      }

      else if (v63 == -1879048176)
      {
        v65 = 384;
        v66 = *(v152 + 8);
        if (v66 <= 285212703)
        {
          goto LABEL_140;
        }
      }

      else
      {
        if (v63 != 4)
        {
          goto LABEL_161;
        }

        v65 = 160;
        v66 = *(v152 + 8);
        if (v66 <= 285212703)
        {
          goto LABEL_140;
        }
      }
    }

    else if (v63 <= 268435463)
    {
      if (v63 == 32)
      {
        v65 = 256;
        v66 = *(v152 + 8);
        if (v66 <= 285212703)
        {
          goto LABEL_140;
        }
      }

      else
      {
        if (v63 != 64)
        {
          goto LABEL_161;
        }

        v65 = 288;
        v66 = *(v152 + 8);
        if (v66 <= 285212703)
        {
          goto LABEL_140;
        }
      }
    }

    else
    {
      switch(v63)
      {
        case 268435464:
          v65 = 480;
          v66 = *(v152 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }

          break;
        case 268435472:
          v65 = 320;
          v66 = *(v152 + 8);
          if (v66 <= 285212703)
          {
            goto LABEL_140;
          }

          break;
        case 268435488:
          v65 = 352;
          v66 = *(v152 + 8);
          if (v66 > 285212703)
          {
            break;
          }

LABEL_140:
          if (v66 <= 31)
          {
            if (v66 > 7)
            {
              if (v66 == 8)
              {
                v67 = 6144;
              }

              else
              {
                if (v66 != 16)
                {
                  goto LABEL_183;
                }

                v67 = 7168;
              }
            }

            else if (v66 == -1879048176)
            {
              v67 = 12288;
            }

            else
            {
              if (v66 != 4)
              {
                goto LABEL_183;
              }

              v67 = 5120;
            }
          }

          else if (v66 <= 268435463)
          {
            if (v66 == 32)
            {
              v67 = 0x2000;
            }

            else
            {
              if (v66 != 64)
              {
                goto LABEL_183;
              }

              v67 = 9216;
            }
          }

          else
          {
            switch(v66)
            {
              case 268435464:
                v67 = 15360;
                break;
              case 268435472:
                v67 = 10240;
                break;
              case 268435488:
                v67 = 11264;
                goto LABEL_184;
              default:
LABEL_183:
                v67 = 18432;
                break;
            }
          }

          goto LABEL_184;
        default:
LABEL_161:
          v65 = 576;
          v66 = *(v152 + 8);
          if (v66 > 285212703)
          {
            break;
          }

          goto LABEL_140;
      }
    }
  }

LABEL_162:
  if (v66 <= 536870915)
  {
    if (v66 > 301989895)
    {
      if (v66 == 301989896)
      {
        v67 = 0x4000;
      }

      else
      {
        if (v66 != 335544328)
        {
          goto LABEL_183;
        }

        v67 = 17408;
      }
    }

    else if (v66 == 285212704)
    {
      v67 = 13312;
    }

    else
    {
      if (v66 != 285212736)
      {
        goto LABEL_183;
      }

      v67 = 14336;
    }
  }

  else if (v66 <= 536870927)
  {
    if (v66 == 536870916)
    {
      v67 = 0;
    }

    else
    {
      if (v66 != 536870920)
      {
        goto LABEL_183;
      }

      v67 = 1024;
    }
  }

  else
  {
    switch(v66)
    {
      case 536870928:
        v67 = 2048;
        break;
      case 536870944:
        v67 = 3072;
        break;
      case 536870976:
        v67 = 4096;
        break;
      default:
        goto LABEL_183;
    }
  }

LABEL_184:
  v68 = v130 / v156;
  v69 = v67 | v65;
  v70 = v144 / v156;
  if (v157)
  {
    v71 = *(v120 + 8);
    if (v71 > 285212703)
    {
      if (v71 <= 536870915)
      {
        if (v71 > 301989895)
        {
          if (v71 == 301989896)
          {
            v72 = 0x80000;
          }

          else
          {
            if (v71 != 335544328)
            {
              goto LABEL_228;
            }

            v72 = 557056;
          }
        }

        else if (v71 == 285212704)
        {
          v72 = 425984;
        }

        else
        {
          if (v71 != 285212736)
          {
            goto LABEL_228;
          }

          v72 = 458752;
        }
      }

      else if (v71 <= 536870927)
      {
        if (v71 == 536870916)
        {
          v72 = 0;
        }

        else
        {
          if (v71 != 536870920)
          {
            goto LABEL_228;
          }

          v72 = 0x8000;
        }
      }

      else
      {
        switch(v71)
        {
          case 536870928:
            v72 = 0x10000;
            break;
          case 536870944:
            v72 = 98304;
            break;
          case 536870976:
            v72 = 0x20000;
            break;
          default:
            goto LABEL_228;
        }
      }
    }

    else if (v71 <= 31)
    {
      if (v71 > 7)
      {
        if (v71 == 8)
        {
          v72 = 196608;
        }

        else
        {
          if (v71 != 16)
          {
            goto LABEL_228;
          }

          v72 = 229376;
        }
      }

      else if (v71 == -1879048176)
      {
        v72 = 393216;
      }

      else
      {
        if (v71 != 4)
        {
          goto LABEL_228;
        }

        v72 = 163840;
      }
    }

    else if (v71 <= 268435463)
    {
      if (v71 == 32)
      {
        v72 = 0x40000;
      }

      else
      {
        if (v71 != 64)
        {
          goto LABEL_228;
        }

        v72 = 294912;
      }
    }

    else
    {
      switch(v71)
      {
        case 268435464:
          v72 = 491520;
          break;
        case 268435472:
          v72 = 327680;
          break;
        case 268435488:
          v72 = 360448;
          break;
        default:
LABEL_228:
          v72 = 589824;
          break;
      }
    }

    v69 |= v72;
  }

  v73 = *(v146 + 8);
  if (v73 > 285212703)
  {
    if (v73 <= 536870915)
    {
      if (v73 > 301989895)
      {
        if (v73 == 301989896)
        {
          v74 = 16;
        }

        else
        {
          if (v73 != 335544328)
          {
            goto LABEL_273;
          }

          v74 = 17;
        }
      }

      else if (v73 == 285212704)
      {
        v74 = 13;
      }

      else
      {
        if (v73 != 285212736)
        {
          goto LABEL_273;
        }

        v74 = 14;
      }
    }

    else if (v73 <= 536870927)
    {
      if (v73 == 536870916)
      {
        v74 = 0;
      }

      else
      {
        if (v73 != 536870920)
        {
          goto LABEL_273;
        }

        v74 = 1;
      }
    }

    else
    {
      switch(v73)
      {
        case 536870928:
          v74 = 2;
          break;
        case 536870944:
          v74 = 3;
          break;
        case 536870976:
          v74 = 4;
          break;
        default:
          goto LABEL_273;
      }
    }
  }

  else if (v73 <= 31)
  {
    if (v73 > 7)
    {
      if (v73 == 8)
      {
        v74 = 6;
      }

      else
      {
        if (v73 != 16)
        {
          goto LABEL_273;
        }

        v74 = 7;
      }
    }

    else if (v73 == -1879048176)
    {
      v74 = 12;
    }

    else
    {
      if (v73 != 4)
      {
        goto LABEL_273;
      }

      v74 = 5;
    }
  }

  else if (v73 <= 268435463)
  {
    if (v73 == 32)
    {
      v74 = 8;
    }

    else
    {
      if (v73 != 64)
      {
        goto LABEL_273;
      }

      v74 = 9;
    }
  }

  else
  {
    switch(v73)
    {
      case 268435464:
        v74 = 15;
        break;
      case 268435472:
        v74 = 10;
        break;
      case 268435488:
        v74 = 11;
        break;
      default:
LABEL_273:
        v74 = 18;
        break;
    }
  }

  v168 = v128;
  v169 = v126;
  v170 = v144 / v156;
  v171 = v130 / v156;
  v172 = v137;
  v173 = v64;
  v174 = v156;
  v175 = v139;
  if (v157)
  {
    v170 = v130 / v156;
    v171 = v144 / v156;
    v167 = 0;
    v165 = 0u;
    v166 = 0u;
  }

  else
  {
    v75 = *(a4 + 136);
    v76 = *(v75 + 304);
    v167 = 0;
    v165 = 0u;
    v166 = 0u;
    if (v76 == 1)
    {
      v77 = *(v75 + 296);
    }
  }

  (*(*a1 + 128))(&v165);
  if (((v130 / v156) & 0x1F) == 0x10)
  {
    v78 = 16;
  }

  else
  {
    v78 = DWORD2(v165);
  }

  v153 = v78;
  if (((v130 / v156) & 0x1F) == 0x10)
  {
    v79 = 16;
  }

  else
  {
    v79 = v165;
  }

  v109 = *(v155 + 208);
  v80 = *&v109[*MEMORY[0x277CD73D8]];
  v131 = v74;
  v149 = DWORD1(v165);
  v121 = *(&v123->super.super.isa + *MEMORY[0x277CD73D0]);
  v81 = BYTE12(v165);
  v147 = BYTE13(v165);
  v82 = *(v155 + 192);
  v83 = *(&v123->super.super.isa + *MEMORY[0x277CD7400]);
  v84 = [*(v155 + 232) finalOp];
  (*(*v84 + 16))(v84);
  v145 = v81;
  if (v151 > 268435487)
  {
    if (v151 <= 335544327)
    {
      if (v151 == 268435488)
      {
        goto LABEL_324;
      }

      if (v151 != 301989896)
      {
        goto LABEL_322;
      }

      v85 = v142;
      if (v142 > 268435487)
      {
        goto LABEL_314;
      }
    }

    else
    {
      switch(v151)
      {
        case 335544328:
          v85 = v142;
          if (v142 > 268435487)
          {
            goto LABEL_314;
          }

          break;
        case 536870920:
          v85 = v142;
          if (v142 <= 268435487)
          {
            break;
          }

          goto LABEL_314;
        case 536870944:
          v85 = v142;
          if (v142 > 268435487)
          {
            goto LABEL_314;
          }

          break;
        default:
          goto LABEL_322;
      }
    }
  }

  else if (v151 <= 31)
  {
    if (v151 == -1879048176)
    {
      v85 = v142;
      if (v142 > 268435487)
      {
        goto LABEL_314;
      }
    }

    else
    {
      if (v151 != 8)
      {
        goto LABEL_322;
      }

      v85 = v142;
      if (v142 > 268435487)
      {
        goto LABEL_314;
      }
    }
  }

  else
  {
    switch(v151)
    {
      case 32:
        v85 = v142;
        if (v142 > 268435487)
        {
          goto LABEL_314;
        }

        break;
      case 268435464:
        v85 = v142;
        if (v142 > 268435487)
        {
          goto LABEL_314;
        }

        break;
      case 268435472:
        v85 = v142;
        if (v142 <= 268435487)
        {
          break;
        }

LABEL_314:
        if (v85 <= 335544327)
        {
          if (v85 == 268435488 || v85 == 301989896)
          {
            goto LABEL_339;
          }
        }

        else if (v85 == 335544328 || v85 == 536870920 || v85 == 536870944)
        {
          goto LABEL_339;
        }

LABEL_337:
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        goto LABEL_339;
      default:
LABEL_322:
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

LABEL_324:
        v85 = v142;
        if (v142 <= 268435487)
        {
          break;
        }

        goto LABEL_314;
    }
  }

  if (v85 <= 31)
  {
    if (v85 != -1879048176 && v85 != 8)
    {
      goto LABEL_337;
    }
  }

  else if (v85 != 32 && v85 != 268435464 && v85 != 268435472)
  {
    goto LABEL_337;
  }

LABEL_339:
  v86 = v131 | v69;
  v132 = v151 >> 3;
  memset(&v160[3], 255, 24);
  v160[6] = v86;
  v161 = 0u;
  v162 = 0u;
  v163 = v116 | (v157 << 8) | 0x10000;
  v164 = 0;
  v108 = *(v155 + 232);
  MPSLibrary::CreateUberShaderKey();
  [a2 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v108, v118, v117, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  memset(v197, 0, 128);
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  LODWORD(v176) = v70;
  HIDWORD(v176) = (v70 + 3) & 0xFFFFFFFC;
  LODWORD(v177) = log2(((v70 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  HIDWORD(v177) = 0;
  LODWORD(v178) = v68;
  WORD2(v178) = v137;
  HIWORD(v178) = v136;
  v179 = v156;
  v180 = 0;
  v182 = v110;
  v183 = 0;
  v181 = v139;
  v184 = __PAIR64__(v126, v128);
  v185 = v110;
  LODWORD(v87) = v111 - (v125 * (v137 - 1) + 1) / 2;
  DWORD1(v87) = v112 - (v124 * (v136 - 1) + 1) / 2;
  v186 = v87;
  v188 = v133;
  v187 = v134;
  v190 = v124;
  v189 = v125;
  v88 = *MEMORY[0x277CD7400];
  v89 = *&v115[v88];
  v90 = *MEMORY[0x277CD73D0];
  v91 = v89 * *&v115[v90 + 4];
  v92 = v142 >> 3;
  HIDWORD(v87) = 1;
  LODWORD(v87) = v91 * *&v115[v90 + 8] / v92;
  DWORD1(v87) = v91 / v92;
  DWORD2(v87) = v89 / v92;
  v192 = v87;
  v93 = *&v109[v88];
  v94 = v93 * *&v109[v90 + 4];
  v95 = v122 >> 3;
  HIDWORD(v87) = 1;
  LODWORD(v87) = v94 * *&v109[v90 + 8] / v95;
  DWORD1(v87) = v94 / v95;
  DWORD2(v87) = v93 / v95;
  HIDWORD(v96) = 1;
  v193 = v87;
  v97 = *&v115[v88];
  v98 = v97 * *&v115[v90 + 4];
  HIDWORD(v87) = 1;
  LODWORD(v87) = v98 * *&v115[v90 + 8] / v92;
  DWORD1(v87) = v98 / v92;
  DWORD2(v87) = v97 / v92;
  v194 = v87;
  v99 = *(&v123->super.super.isa + v88);
  v100 = v123 + v90;
  v101 = v99 * *(v100 + 1);
  LODWORD(v96) = v101 * *(v100 + 2) / v132;
  DWORD1(v96) = v101 / v132;
  DWORD2(v96) = v99 / v132;
  v195 = v96;
  v197[0] = 0;
  v196 = 0uLL;
  memset(&v197[2], 0, 112);
  MPSSetNDArraysOnComputeEncoder(a2, v155, 4, 0, 0);
  [a2 setBuffer:objc_msgSend(v115 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v115, 0, 4, 0, 0) + v114, 29}];
  if (v135)
  {
    v102 = 0;
  }

  else
  {
    v102 = v113;
  }

  [a2 setBuffer:-[MPSTemporaryNDArray buffer](v123 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v123, 0, 4, 0, 0) + v102, 28}];
  [a2 setBuffer:objc_msgSend(v109 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v109, 0, 4, 0, 0) + v82, 27}];
  if ((atomic_load_explicit(&qword_27DF869E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DF869E8))
  {
    xmmword_27DF86A68 = 0u;
    xmmword_27DF86A58 = 0u;
    dword_27DF86A78 = 1065353216;
    qword_27DF86A80 = 850045863;
    xmmword_27DF86A88 = 0u;
    unk_27DF86A98 = 0u;
    xmmword_27DF86AA8 = 0u;
    qword_27DF86AB8 = 0;
    __cxa_atexit(MPSBufferCache::~MPSBufferCache, &xmmword_27DF86A58, &dword_2399F7000);
    __cxa_guard_release(&qword_27DF869E8);
  }

  Buffer = MPSBufferCache::getBuffer(&xmmword_27DF86A58, [objc_msgSend(a3 "commandQueue")], 0x10uLL, 0);
  v104 = [Buffer contents];
  *v104 = 0;
  v104[1] = 0;
  [a2 setBuffer:Buffer offset:0 atIndex:24];
  [a2 setBytes:&v176 length:304 atIndex:26];
  v105 = (v142 >> 3) * (v153 * v149);
  if (!v145)
  {
    v105 = 0;
  }

  v106 = (v151 >> 3) * (v153 * v79);
  if (!v147)
  {
    v106 = 0;
  }

  [a2 setThreadgroupMemoryLength:v105 + v106 atIndex:0];
  [a2 setBuffer:0 offset:0 atIndex:25];
  v160[0] = (v68 + v79 - 1) / v79 * v156;
  v160[1] = (v149 + v126 * v128 - 1) / v149;
  v160[2] = v139;
  v158 = xmmword_239B1F450;
  v159 = 1;
  [a2 dispatchThreadgroups:v160 threadsPerThreadgroup:&v158];
  if (v135)
  {
    MPSDecrementReadCount(v123);
  }

  operator delete(0);
  operator delete(0);
  operator delete(0);
  result = 0;
LABEL_350:
  v107 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239AD132C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, void *a21, void *a22)
{
  operator delete(__p);
  operator delete(a21);
  if (!a22)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a22);
  _Unwind_Resume(a1);
}

uint64_t MPSNDArrayConvolutionA14FunctionConstructor(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  v7 = v6;
  v35 = v5 >> 4;
  v34 = (v5 >> 8) & 0xF;
  v33[1] = v5 >> 12;
  v33[0] = v5 >> 12;
  v32 = BYTE2(v5) & 0xF;
  v31 = (v5 >> 20) & 0xF;
  v30 = BYTE3(v5) & 1;
  v29 = (v5 >> 25) & 7;
  v28 = (v5 >> 28) & 7;
  v27 = (v5 & 0x80000000) != 0;
  v26 = BYTE4(v5) & 1;
  v25 = (v5 & 0x200000000) != 0;
  v24 = (v5 & 0x400000000) != 0;
  v23 = (v5 & 0x800000000) != 0;
  v22 = (v5 & 0x1000000000) != 0;
  v21 = (v5 & 0x2000000000) != 0;
  v20 = (v5 & 0x4000000000) != 0;
  v19 = (v5 >> 39) & 7;
  v18 = (v5 >> 42) & 7;
  v17 = (v5 >> 45) & 7;
  v16 = BYTE6(v5) & 1;
  v15 = (v5 & 0x2000000000000) != 0;
  v14 = (v5 & 0x4000000000000) != 0;
  v13 = (v5 & 0x8000000000000) != 0;
  v12 = (v5 & 0x10000000000000) != 0;
  v11 = (v5 & 0x20000000000000) != 0;
  v36 = v5 & 0xF;
  if ((v5 & 0xF) != 0)
  {
    [v6 setConstantValue:&v36 type:37 atIndex:115];
  }

  if (v35)
  {
    [v7 setConstantValue:&v35 type:37 atIndex:114];
  }

  if (v5 >= 0x1000u)
  {
    [v7 setConstantValue:v33 type:42 atIndex:113];
  }

  if (v34)
  {
    [v7 setConstantValue:&v34 type:41 atIndex:112];
  }

  if (v32)
  {
    [v7 setConstantValue:&v32 type:37 atIndex:111];
  }

  if (v31)
  {
    [v7 setConstantValue:&v31 type:37 atIndex:110];
  }

  [v7 setConstantValue:&v30 type:53 atIndex:109];
  [v7 setConstantValue:&v29 type:37 atIndex:108];
  [v7 setConstantValue:&v28 type:37 atIndex:107];
  [v7 setConstantValue:&v27 type:53 atIndex:106];
  [v7 setConstantValue:&v26 type:53 atIndex:105];
  [v7 setConstantValue:&v25 type:53 atIndex:104];
  [v7 setConstantValue:&v24 type:53 atIndex:103];
  [v7 setConstantValue:&v23 type:53 atIndex:102];
  [v7 setConstantValue:&v22 type:53 atIndex:101];
  [v7 setConstantValue:&v21 type:53 atIndex:100];
  [v7 setConstantValue:&v20 type:53 atIndex:99];
  [v7 setConstantValue:&v19 type:41 atIndex:98];
  [v7 setConstantValue:&v18 type:41 atIndex:97];
  [v7 setConstantValue:&v17 type:41 atIndex:96];
  [v7 setConstantValue:&v16 type:53 atIndex:95];
  [v7 setConstantValue:&v15 type:53 atIndex:94];
  [v7 setConstantValue:&v14 type:53 atIndex:93];
  [v7 setConstantValue:&v13 type:53 atIndex:92];
  [v7 setConstantValue:&v12 type:53 atIndex:91];
  [v7 setConstantValue:&v11 type:53 atIndex:90];
  AddFunctionConstantList(v7, a3);
  v8 = *a2;
  v9 = _MPSNewSpecializedFunction();

  return v9;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolution(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  HaveRectangularStrides = mainSourcesHaveRectangularStrides(a4);
  if (HaveRectangularStrides)
  {
    if (*(a4 + 120))
    {
      goto LABEL_3;
    }

    v11 = *(*(a4 + 136) + 304);
    if (v11 == 1)
    {
LABEL_14:

      return MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionIntrinsics(a1, a2, a3, a4);
    }

    if (v11 != 2)
    {
LABEL_3:
      IsWinogradSupported = MPSNDArrayConvolutionDeviceBehaviorA14::IsWinogradSupported(HaveRectangularStrides, a4);
      if (IsWinogradSupported)
      {

        return MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionWinograd(a1, a2, a3, a4);
      }

      if (MPSNDArrayConvolutionDeviceBehaviorA14::IsIntrinsicsSupported(IsWinogradSupported, a4))
      {
        goto LABEL_14;
      }
    }

    return MPSNDArrayConvolutionDeviceBehaviorPreG13::EncodeNDArrayConvolution(a1, a2, a3, a4);
  }

  else
  {

    return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolution(a1, a2, a3, a4);
  }
}

BOOL ParseAutoTuningKernelParameters(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *a2;
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = a2[1] * v3;
      v6 = a2[11];
      v7 = *(a1 + 32);
      if (v7)
      {
        LOBYTE(v4) = 0;
        v8 = 1;
        v6 = (v6 + v7 - 1) / v7;
      }

      else
      {
        LOBYTE(v4) = 1;
        v8 = 1;
        v5 = (v5 + *(a1 + 36) - 1) / *(a1 + 36);
      }
    }

    else
    {
      if (*(a1 + 45))
      {
        v3 = (v3 + 1) & 0xFFFFFFFE;
      }

      v5 = v3 * a2[1];
      v9 = a2[11];
      v10 = *(a1 + 32);
      v12 = v5 * v9;
      if (v10)
      {
        v6 = (v9 + v10 - 1) / v10;
      }

      else
      {
        v6 = 0;
      }

      if (v10)
      {
        v12 = v5;
      }

      v11 = *(a1 + 36) * (1 << *(a1 + 8));
      v8 = (v12 + v11 - 1) / v11;
    }

    v13 = *(a1 + 44);
    v14 = *(a1 + 8);
    *&v15 = *a1;
    *(&v15 + 1) = HIDWORD(*a1);
    v16 = v15;
    *&v15 = v14;
    *(&v15 + 1) = HIDWORD(v14);
    *a3 = v16;
    *(a3 + 16) = v15;
    *&v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    *&v15 = v16;
    *(&v15 + 1) = DWORD1(v16);
    v18 = v15;
    *&v15 = v17;
    *(&v15 + 1) = HIDWORD(v17);
    *(a3 + 32) = v18;
    *(a3 + 48) = v15;
    *(a3 + 64) = v6;
    *(a3 + 72) = v8;
    *(a3 + 80) = *(a1 + 40);
    *(a3 + 84) = 0;
    *(a3 + 86) = v13;
    *(a3 + 88) = v5;
    *(a3 + 96) = v4;
  }

  return a1 != 0;
}

void MPSNDArrayConvolutionDeviceBehaviorA16::GetKernelParameters(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  if (a4)
  {
    if (ParseAutoTuningKernelParameters(a4, a3, a6))
    {
      return;
    }
  }

  else if (ParseAutoTuningKernelParameters(a1[19], a3, a6))
  {
    return;
  }

  v12 = *(a3 + 88);
  *v54 = v12;
  v13 = *a3;
  *&v54[4] = vuzp1q_s32(*(a3 + 32), *a3);
  *&v54[20] = vmovn_s64(*(a3 + 56));
  *&v54[28] = a5;
  v55 = *(a3 + 128);
  if (*v54 ^ 0x1C000000010 | *&v54[8] ^ 0x1000000180 | *&v54[16] ^ 0x300000010 | *&v54[24] ^ 0x1000001000000003 | v55)
  {
    if (*v54 ^ 0x6000000010 | *&v54[8] ^ 0x1C00000100 | *&v54[16] ^ 0x50000001CLL | *&v54[24] ^ 0x1000001000000005 | v55)
    {
      if (*v54 ^ 0x40000000040 | *&v54[8] ^ 0x700000800 | *&v54[16] ^ 0x100000007 | *&v54[24] ^ 0x1000001000000001 | v55)
      {
        if (*v54 ^ 0x3000000010 | *&v54[8] ^ 0x2300000040 | *&v54[16] ^ 0x500000023 | *&v54[24] ^ 0x1000001000000005 | v55)
        {
          if (*v54 ^ 0x1C000000010 | *&v54[8] ^ 0x1000000180 | *&v54[16] ^ 0x300000010 | *&v54[24] ^ 0x1000002000000003 | v55)
          {
            if (*v54 ^ 0x6000000010 | *&v54[8] ^ 0x1C00000100 | *&v54[16] ^ 0x50000001CLL | *&v54[24] ^ 0x1000002000000005 | v55)
            {
              if (*v54 ^ 0x40000000040 | *&v54[8] ^ 0x700000800 | *&v54[16] ^ 0x100000007 | *&v54[24] ^ 0x1000002000000001 | v55)
              {
                if (*v54 ^ 0x3000000010 | *&v54[8] ^ 0x2300000040 | *&v54[16] ^ 0x500000023 | *&v54[24] ^ 0x1000002000000005 | v55)
                {
                  if (*v54 == 0x1C000000010 && *&v54[8] == 0x1000000180 && *&v54[16] == 0x300000010 && *&v54[24] == 0x1000001000000003 && v55 == 1)
                  {
                    v46 = &unk_239B4DDB0;
                  }

                  else if (*v54 == 0x6000000010 && *&v54[8] == 0x1C00000100 && *&v54[16] == 0x50000001CLL && *&v54[24] == 0x1000001000000005 && v55 == 1)
                  {
                    v46 = &unk_239B4DDD8;
                  }

                  else if (*v54 == 0x40000000040 && *&v54[8] == 0x700000800 && *&v54[16] == 0x100000007 && *&v54[24] == 0x1000001000000001 && v55 == 1)
                  {
                    v46 = &unk_239B4DE00;
                  }

                  else if (*v54 == 0x3000000010 && *&v54[8] == 0x2300000040 && *&v54[16] == 0x500000023 && *&v54[24] == 0x1000001000000005 && v55 == 1)
                  {
                    v46 = &unk_239B4DE28;
                  }

                  else if (*v54 == 0x1C000000010 && *&v54[8] == 0x1000000180 && *&v54[16] == 0x300000010 && *&v54[24] == 0x1000002000000003 && v55 == 1)
                  {
                    v46 = &unk_239B4DE50;
                  }

                  else if (*v54 == 0x6000000010 && *&v54[8] == 0x1C00000100 && *&v54[16] == 0x50000001CLL && *&v54[24] == 0x1000002000000005 && v55 == 1)
                  {
                    v46 = &unk_239B4DE78;
                  }

                  else if (*v54 == 0x40000000040 && *&v54[8] == 0x700000800 && *&v54[16] == 0x100000007 && *&v54[24] == 0x1000002000000001 && v55 == 1)
                  {
                    v46 = &unk_239B4DEA0;
                  }

                  else
                  {
                    if (*v54 != 0x3000000010 || *&v54[8] != 0x2300000040 || *&v54[16] != 0x500000023 || *&v54[24] != 0x1000002000000005 || v55 != 1)
                    {
                      MPSNDArrayConvolutionDeviceBehaviorA15X::GetKernelParameters(a1, a2, a3, a4, a6);
                      return;
                    }

                    v46 = &unk_239B4DEC8;
                  }
                }

                else
                {
                  v46 = &unk_239B4DD88;
                }
              }

              else
              {
                v46 = &unk_239B4DD60;
              }
            }

            else
            {
              v46 = &unk_239B4DD38;
            }
          }

          else
          {
            v46 = &unk_239B4DD10;
          }
        }

        else
        {
          v46 = &unk_239B4DCE8;
        }
      }

      else
      {
        v46 = &unk_239B4DCC0;
      }
    }

    else
    {
      v46 = &unk_239B4DC98;
    }
  }

  else
  {
    v46 = &a16KernelParams;
  }

  v47 = v46[9];
  *a6 = v47 & 7;
  *(a6 + 8) = (v47 >> 3) & 7;
  v48 = vdup_n_s32(v47);
  v49 = vand_s8(vshl_u32(v48, 0xFFFFFFF7FFFFFFFALL), 0x300000007);
  v50 = vand_s8(vshl_u32(v48, 0xFFFFFFF5FFFFFFF3), 0x300000003);
  *&v51 = v49.u32[0];
  *(&v51 + 1) = v49.u32[1];
  v52 = v51;
  *&v51 = v50.u32[0];
  *(&v51 + 1) = v50.u32[1];
  *(a6 + 16) = v52;
  *(a6 + 32) = v51;
  *(a6 + 48) = vdupq_n_s64(1uLL);
  *(a6 + 80) = 0;
  *(a6 + 81) = (v47 & 0x8000000) != 0;
  *(a6 + 82) = (v47 & 0x10000000) != 0;
  *(a6 + 83) = 0;
  *(a6 + 85) = 0;
  *(a6 + 86) = (v47 & 0x20000000) != 0;
  *(a6 + 87) = (v47 & 0x40000000) != 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  v53 = (v12 + ((v47 >> 15) & 0x3F) - 1) / ((v47 >> 15) & 0x3F);
  if ((v47 & 0x1F8000) != 0)
  {
    v12 = 1;
  }

  *(a6 + 64) = v53;
  *(a6 + 72) = ((((v47 >> 21) & 0x3F) << v49.i8[0]) + v13.i64[1] * v13.i64[0] * v12 - 1) / (((v47 >> 21) & 0x3F) << v49.i8[0]);
}