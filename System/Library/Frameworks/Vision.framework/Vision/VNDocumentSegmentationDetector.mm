@interface VNDocumentSegmentationDetector
+ (id)inputImageBlobNameForConfiguration:(id)a3;
+ (id)modelPathForConfiguration:(id)a3 error:(id *)a4;
+ (id)segmentationLabelsFilePathForConfiguration:(id)a3 error:(id *)a4;
- (BOOL)configureImageAnalyzerOptions:(void *)a3 error:(id *)a4;
- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)a3 processOptions:(id)a4 originatingRequestSpecifier:(id)a5 qosClass:(unsigned int)a6 error:(id *)a7;
@end

@implementation VNDocumentSegmentationDetector

- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)a3 processOptions:(id)a4 originatingRequestSpecifier:(id)a5 qosClass:(unsigned int)a6 error:(id *)a7
{
  v324[1] = *MEMORY[0x1E69E9840];
  v239 = a5;
  if (!self)
  {
    goto LABEL_325;
  }

  baseAddress[0].i32[0] = 2048;
  texture.i64[0] = baseAddress;
  if ((*(std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,BOOL>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(a3 + 103, 0x800u) + 20) & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 8574;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  baseAddress[0].i32[0] = 2048;
  texture.i64[0] = baseAddress;
  v9 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,espresso_buffer_t>>>::__emplace_unique_key_args<vision::mod::ImageAnalyzer_AnalysisType,std::piecewise_construct_t const&,std::tuple<vision::mod::ImageAnalyzer_AnalysisType&&>,std::tuple<>>(a3 + 98, 0x800u);
  vision::mod::ImageAnalyzer_Tensor1D<float>::ImageAnalyzer_Tensor1D(&__src, (v9 + 3), 1);
  vision::mod::ImageAnalyzer_Tensor1D<float>::getVectorFromTensor(__p, &__src);
  v10 = *__p[0];
  vision::mod::ImageAnalyzer::getSceneSegmentation(&texture, a3);
  v11 = v301;
  v12 = v300;
  v292[0] = v301;
  v292[1] = v300;
  v291 = 0;
  vision::mod::ImageAnalyzer_Tensor3D::getVImageBufferFromTensorChannel(&v289, &texture, 0, v292, &v291);
  vision::mod::ImageAnalyzer_Tensor3D::getVImageBufferFromTensorChannel(&v287, &texture, 1uLL, v292, &v291);
  vision::mod::ImageAnalyzer_Tensor3D::getVImageBufferFromTensorChannel(&v285, &texture, 2uLL, v292, &v291);
  vision::mod::ImageAnalyzer_Tensor3D::getVImageBufferFromTensorChannel(&v283, &texture, 3uLL, v292, &v291);
  vision::mod::ImageAnalyzer::getSceneSaliency(baseAddress, a3);
  v279 = 0;
  vision::mod::ImageAnalyzer_Tensor2D::getVImageBufferFromTensor(v276, baseAddress, &v279);
  v14 = v276[0];
  v13 = v276[1];
  v15 = v277;
  v16 = (v277 - 1);
  v17 = v16;
  *v276 = 0u;
  v277 = 0u;
  v278 = 1065353216;
  v320 = 0u;
  v321 = 0u;
  v322 = 1065353216;
  v319 = 1;
  v18 = v13 - 1;
  v19 = v13 - 1;
  v236 = a3;
  if (v13 < 1)
  {
    goto LABEL_12;
  }

  v20 = 0;
  v21 = 0;
  v22 = v13 & 0x7FFFFFFF;
  v23 = v14;
  do
  {
    if (v15 >= 1)
    {
      v24 = 0;
      do
      {
        if (v23[v24] >= 0.5)
        {
          ++v21;
        }

        v24 += 4;
      }

      while (v24 < v15);
    }

    v20 += 4;
    v23 += *(&v15 + 1);
  }

  while (v20 < v22);
  if (v21 >= 10)
  {
    if (((16 * v21) / (v15 * v13)) >= 0.91)
    {
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v250 = v14;
      v232 = v16;
      v233 = v13 - 1;
      v230 = v13 - 1;
      v231 = v13;
      v238 = v18;
      v235 = v16;
      v90 = vcvtps_s32_f32(vcvts_n_f32_s32(v15, 2uLL));
      v229 = vcvtps_s32_f32(vcvts_n_f32_u32(v13, 2uLL));
      LODWORD(v315) = 0;
      std::vector<int>::vector[abi:ne200100](v318, v229 * v90);
      v253 = 0;
      v254 = 0;
      v251 = v90;
      v247 = v290;
      v248 = v289;
      v245 = v288;
      v246 = v287;
      v243 = v286;
      v244 = v285;
      v249 = v90;
      v255 = v90 - 1;
      v241 = v284;
      v242 = v283;
      v91 = 4;
      if (v22 > 4)
      {
        v91 = v22;
      }

      v252 = (v91 - 1) >> 2;
      do
      {
        if (v15 >= 1)
        {
          v92 = 0;
          v93 = 0;
          v94 = v250 + *(&v15 + 1) * v253;
          v256 = v254 * v251;
          if (v253 <= 1)
          {
            v95 = 1;
          }

          else
          {
            v95 = v253;
          }

          v96 = (v95 - 1);
          if (v254 <= 1)
          {
            v97 = 1;
          }

          else
          {
            v97 = v254;
          }

          v98 = v250 + *(&v15 + 1) * v96;
          v264 = (v97 - 1) * v249;
          do
          {
            if (*&v94[4 * v93] >= 0.5)
            {
              v99 = *(v248 + v247 * v253 + 4 * v93);
              v100 = *(v246 + v245 * v253 + 4 * v93);
              v101 = *(v244 + v243 * v253 + 4 * v93);
              v102 = *(v242 + v241 * v253 + 4 * v93);
              v316 = 0u;
              v315 = 0u;
              v317 = 1065353216;
              v103 = v16;
              if ((v93 | 1) < v16)
              {
                v104 = v93 + 1;
              }

              else
              {
                v104 = v16;
              }

              if (v92 <= 1)
              {
                v105 = 1;
              }

              else
              {
                v105 = v92;
              }

              v106 = v105 - 1;
              if (v92 + 1 < v255)
              {
                v107 = v92 + 1;
              }

              else
              {
                v107 = v255;
              }

              if (v93 <= 1)
              {
                v108 = 1;
              }

              else
              {
                v108 = v93;
              }

              v109 = (v108 - 1);
              if (*&v98[4 * v109] >= 0.5)
              {
                std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v315, *(*v318 + 4 * (v264 + v106)));
              }

              if (*&v98[4 * v93] >= 0.5)
              {
                std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v315, *(*v318 + 4 * (v264 + v92)));
              }

              if (*&v98[4 * v104] >= 0.5)
              {
                std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v315, *(*v318 + 4 * (v107 + v264)));
              }

              if (*(&v250[v109] + *(&v15 + 1) * v253) >= 0.5)
              {
                std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v315, *(*v318 + 4 * (v249 * v254 + v106)));
              }

              v110 = ((v99 + v100) + v101) + v102;
              v313 = 0u;
              v312 = 0u;
              v314 = 1065353216;
              v111 = v316;
              v16 = v103;
              if (!v316)
              {
                goto LABEL_115;
              }

              do
              {
                v112 = *(v111 + 4);
                if (v112 >= 1)
                {
                  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v312, v112);
                }

                v111 = *v111;
              }

              while (v111);
              if (*(&v313 + 1))
              {
                v113 = v313;
                v114 = *v313;
                if (*v313)
                {
                  do
                  {
                    if (*(v114 + 4) < *(v113 + 4))
                    {
                      v113 = v114;
                    }

                    v114 = *v114;
                  }

                  while (v114);
                }

                LODWORD(v323) = *(v113 + 4);
                *(*v318 + 4 * v92 + 4 * v256) = v323;
                *&v309[0] = &v323;
                v117 = std::__hash_table<std::__hash_value_type<int,std::pair<int,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v320, v323);
                ++*(v117 + 5);
                *&v309[0] = &v323;
                v118 = std::__hash_table<std::__hash_value_type<int,std::pair<int,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v320, v323);
                *(v118 + 6) = v110 + *(v118 + 6);
                for (i = v313; i; i = *i)
                {
                  v311 = *(i + 4);
                  *&v309[0] = &v323;
                  v120 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v276, v323);
                  if (v311 != *(v120 + 5))
                  {
                    v121 = v323;
                    *&v309[0] = &v311;
                    *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v276, v311) + 5) = v121;
                  }
                }
              }

              else
              {
LABEL_115:
                v115 = v319;
                *&v309[0] = &v319;
                *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v276, v319) + 5) = v115;
                v116 = v319;
                *(*v318 + 4 * v92 + 4 * v256) = v319;
                *&v309[0] = &v319;
                *(std::__hash_table<std::__hash_value_type<int,std::pair<int,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v320, v116) + 5) = 1;
                *&v309[0] = &v319;
                *(std::__hash_table<std::__hash_value_type<int,std::pair<int,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v320, v319++) + 6) = v110;
              }

              std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v312);
              std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v315);
              v94 = v250 + *(&v15 + 1) * v253;
            }

            v93 += 4;
            v122 = v92++ == (v15 - 1) >> 2;
          }

          while (!v122);
        }

        v122 = v254 == v252;
        v253 += 4;
        ++v254;
      }

      while (!v122);
      if (*(&v277 + 1))
      {
        v316 = 0u;
        v315 = 0u;
        v317 = 1065353216;
        v313 = 0u;
        v312 = 0u;
        v314 = 1065353216;
        memset(v309, 0, sizeof(v309));
        v310 = 1065353216;
        v123 = v277;
        v18 = v230;
        if (v277)
        {
          do
          {
            v125 = *(v123 + 4);
            v124 = (v123 + 2);
            if (v125 == *(v123 + 5))
            {
              v323 = (v123 + 2);
              *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v315, v125) + 5) = v125;
              v323 = (v123 + 2);
              v126 = *(std::__hash_table<std::__hash_value_type<int,std::pair<int,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v320, *v124) + 5);
              v323 = (v123 + 2);
              *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v312, *v124) + 5) = v126;
              v323 = (v123 + 2);
              v127 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v309, *v124);
              std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v127 + 3, *v124);
            }

            v123 = *v123;
          }

          while (v123);
          for (j = v277; j; j = *j)
          {
            v129 = *(j + 4);
            v311 = v129;
            if (*(&v315 + 1))
            {
              v130 = vcnt_s8(*(&v315 + 8));
              v130.i16[0] = vaddlv_u8(v130);
              if (v130.u32[0] > 1uLL)
              {
                v131 = v129;
                if (*(&v315 + 1) <= v129)
                {
                  v131 = v129 % *(&v315 + 1);
                }
              }

              else
              {
                v131 = (*(&v315 + 1) - 1) & v129;
              }

              v132 = *(v315 + 8 * v131);
              if (v132)
              {
                for (k = *v132; k; k = *k)
                {
                  v134 = k[1];
                  if (v134 == v129)
                  {
                    if (*(k + 4) == v129)
                    {
                      goto LABEL_150;
                    }
                  }

                  else
                  {
                    if (v130.u32[0] > 1uLL)
                    {
                      if (v134 >= *(&v315 + 1))
                      {
                        v134 %= *(&v315 + 1);
                      }
                    }

                    else
                    {
                      v134 &= *(&v315 + 1) - 1;
                    }

                    if (v134 != v131)
                    {
                      break;
                    }
                  }
                }
              }
            }

            v135 = v276[0];
            v136 = v276[1];
            v137 = *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(v276[0], v276[1], v129) + 5);
            for (m = v129; v137 != m; v137 = *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(v135, v136, v137) + 5))
            {
              m = v137;
            }

            v308 = m;
            v323 = &v311;
            *(std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v315, v129) + 5) = m;
            v323 = &v311;
            v139 = *(std::__hash_table<std::__hash_value_type<int,std::pair<int,float>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,float>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,float>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,float>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v320, v311) + 5);
            v323 = &v308;
            v140 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v312, v308);
            *(v140 + 5) = *(v140 + 5) + v139;
            v323 = &v308;
            v141 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v309, v308);
            std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v141 + 3, v311);
LABEL_150:
            ;
          }
        }

        v142 = v313;
        v143 = *v313;
        if (*v313)
        {
          do
          {
            if (v142[5] < v143[5])
            {
              v142 = v143;
            }

            v143 = *v143;
          }

          while (v143);
        }

        v311 = *(v142 + 4);
        v323 = &v311;
        v144 = std::__hash_table<std::__hash_value_type<int,std::unordered_set<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v309, v311);
        v145 = 0;
        v146 = 0;
        v147 = *v318;
        v148 = 4 * v251;
        v261 = *v318;
        while (v15 < 1)
        {
LABEL_161:
          v146 += 4;
          ++v145;
          v147 += v148;
          if (v146 >= v231)
          {
            v145 = 0;
            v265 = v238;
            goto LABEL_213;
          }
        }

        v149 = 0;
        while (1)
        {
          v150 = *(v147 + v149);
          if (v150 >= 1)
          {
            if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v144 + 3, v150))
            {
              break;
            }
          }

          v149 += 4;
          if (v149 >= v15)
          {
            goto LABEL_161;
          }
        }

        v265 = v146;
LABEL_213:
        v178 = v229;
        v179 = v261 + 4 * (v229 - 1) * v251;
        while (1)
        {
          --v178;
          if (v15 >= 1)
          {
            break;
          }

LABEL_219:
          v179 -= 4 * v251;
          v52 = v233 <= 3;
          v233 -= 4;
          if (v52)
          {
            v19 = 0;
            v178 = 0;
            goto LABEL_223;
          }
        }

        v180 = 0;
        while (1)
        {
          v181 = *(v179 + v180);
          if (v181 >= 1)
          {
            if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v144 + 3, v181))
            {
              break;
            }
          }

          v180 += 4;
          if (v180 >= v15)
          {
            goto LABEL_219;
          }
        }

        v19 = v233;
LABEL_223:
        if (v15 < 1)
        {
          v189 = 0;
        }

        else
        {
          v182 = 0;
          v258 = (v178 + 1);
          v260 = v16;
          v183 = (v261 + 4 * v251 * v145);
          while (v145 > v178)
          {
LABEL_230:
            v182 += 4;
            ++v183;
            if (v182 >= v15)
            {
              goto LABEL_234;
            }
          }

          v184 = v183;
          v185 = v258 - v145;
          while (*v184 < 1 || !std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v144 + 3, *v184))
          {
            v184 = (v184 + v148);
            if (!--v185)
            {
              goto LABEL_230;
            }
          }

          v235 = v182;
LABEL_234:
          LODWORD(v16) = v260;
          v186 = v261 + (4 * v145 + 4) * v251 - 4;
          while (v145 > v178)
          {
LABEL_240:
            v186 -= 4;
            v52 = v232 <= 3;
            v232 -= 4;
            if (v52)
            {
              v189 = 0;
              goto LABEL_244;
            }
          }

          v187 = v186;
          v188 = v258 - v145;
          while (*v187 < 1 || !std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v144 + 3, *v187))
          {
            v187 = (v187 + v148);
            if (!--v188)
            {
              goto LABEL_240;
            }
          }

          v189 = v232;
LABEL_244:
          v18 = v230;
        }

        std::__hash_table<std::__hash_value_type<int,std::unordered_set<int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_set<int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_set<int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_set<int>>>>::~__hash_table(v309);
        std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v312);
        std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v315);
        v25 = v235;
        v17 = v189;
        v26 = v265;
      }

      else
      {
        v25 = v235;
        v26 = v238;
        v17 = 0;
        v19 = 0;
        v18 = v230;
      }

      if (*v318)
      {
        *&v318[2] = *v318;
        operator delete(*v318);
      }
    }
  }

  else
  {
LABEL_12:
    v25 = v16;
    v26 = v18;
    v17 = 0;
    v19 = 0;
  }

  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&v320);
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v276);
  v234 = v17;
  v237 = v19;
  v262 = v26;
  if (!(v17 | v19))
  {
    goto LABEL_25;
  }

  if (v25 <= 14)
  {
    v27 = 14;
  }

  else
  {
    v27 = v25;
  }

  v28 = v17 + 14;
  if (v17 + 14 >= v16)
  {
    v28 = v16;
  }

  if (v26 <= 14)
  {
    v29 = 14;
  }

  else
  {
    v29 = v26;
  }

  v30 = (v29 - 14);
  v31 = v19 + 14;
  if (v19 + 14 >= v18)
  {
    v31 = v18;
  }

  if (v30 > v31)
  {
LABEL_25:
    v32 = 0;
    v33 = 0;
LABEL_26:
    v34 = 0;
    v35 = 0;
LABEL_27:
    v36 = 0;
    v37 = 0;
LABEL_28:
    v38 = 0;
    v39 = 0;
    goto LABEL_29;
  }

  v32 = 0;
  v33 = 0;
  v151 = (v27 - 14);
  v152 = v289 + v290 * v30;
  v153 = -1000000.0;
  v154 = v30;
  do
  {
    for (n = v151; n <= v28; ++n)
    {
      if (*(v152 + 4 * n) > v153)
      {
        v32 = v154;
        v33 = n;
        v153 = *(v152 + 4 * n);
      }
    }

    ++v154;
    v152 += v290;
  }

  while (v154 <= v31);
  if (v30 > v31)
  {
    goto LABEL_26;
  }

  v34 = 0;
  v35 = 0;
  v156 = v287 + v288 * v30;
  v157 = -1000000.0;
  v158 = v30;
  do
  {
    for (ii = v151; ii <= v28; ++ii)
    {
      if (*(v156 + 4 * ii) > v157)
      {
        v34 = v158;
        v35 = ii;
        v157 = *(v156 + 4 * ii);
      }
    }

    ++v158;
    v156 += v288;
  }

  while (v158 <= v31);
  if (v30 > v31)
  {
    goto LABEL_27;
  }

  v36 = 0;
  v37 = 0;
  v160 = v285 + v286 * v30;
  v161 = -1000000.0;
  v162 = v30;
  do
  {
    for (jj = v151; jj <= v28; ++jj)
    {
      if (*(v160 + 4 * jj) > v161)
      {
        v36 = v162;
        v37 = jj;
        v161 = *(v160 + 4 * jj);
      }
    }

    ++v162;
    v160 += v286;
  }

  while (v162 <= v31);
  if (v30 > v31)
  {
    goto LABEL_28;
  }

  v38 = 0;
  v39 = 0;
  v164 = v283 + v284 * v30;
  v165 = -1000000.0;
  do
  {
    for (kk = v151; kk <= v28; ++kk)
    {
      if (*(v164 + 4 * kk) > v165)
      {
        v38 = v30;
        v39 = kk;
        v165 = *(v164 + 4 * kk);
      }
    }

    ++v30;
    v164 += v284;
  }

  while (v30 <= v31);
LABEL_29:
  v40 = vision::mod::ImageAnalyzer_Tensor3D::valueAt(&texture, v32, v33, 0);
  v41 = vision::mod::ImageAnalyzer_Tensor3D::valueAt(&texture, v34, v35, 1);
  v42 = vision::mod::ImageAnalyzer_Tensor3D::valueAt(&texture, v36, v37, 2);
  v43 = vision::mod::ImageAnalyzer_Tensor3D::valueAt(&texture, v38, v39, 3);
  *&v316 = 0;
  *(&v315 + 1) = 0;
  *&v315 = &v315 + 8;
  LODWORD(v276[0]) = 0;
  std::vector<float>::vector[abi:ne200100](&v312, 8uLL);
  v44 = (v33 + 1) / v12;
  v45 = v312;
  *v312 = v44;
  v45[1] = 1.0 - ((v32 + 1) / v11);
  v45[2] = (v35 + 1) / v12;
  v45[3] = 1.0 - ((v34 + 1) / v11);
  v45[4] = (v37 + 1) / v12;
  v45[5] = 1.0 - ((v36 + 1) / v11);
  v45[6] = (v39 + 1) / v12;
  v45[7] = 1.0 - ((v38 + 1) / v11);
  v46 = *(&v312 + 1);
  if (v45 != *(&v312 + 1))
  {
    do
    {
      v47 = *v45;
      if ((1.0 - *v45) < *v45)
      {
        v47 = 1.0 - *v45;
      }

      v48 = -v47;
      v49 = *(&v315 + 1);
      if (!*(&v315 + 1))
      {
LABEL_38:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v50 = v49;
          v51 = *(v49 + 7);
          if (v51 <= v48)
          {
            break;
          }

          v49 = *v49;
          if (!*v50)
          {
            goto LABEL_38;
          }
        }

        if (v51 >= v48)
        {
          break;
        }

        v49 = v49[1];
        if (!v49)
        {
          goto LABEL_38;
        }
      }

      ++v45;
    }

    while (v45 != *(&v312 + 1));
    v46 = *(&v312 + 1);
    v45 = v312;
  }

  v52 = v10 > 0.06 && *(v315 + 28) < -0.025;
  if (v52)
  {
    v53 = (((v40 + v41) + v42) + v43) * 0.25;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = v236;
  if (v45 != v46)
  {
    v55 = v276;
    v56 = v45;
    do
    {
      v57 = *v56++;
      *v55 = vcvtq_f64_f32(v57);
      v55 += 2;
    }

    while (v56 != v46);
  }

  v58 = 0;
  v59 = *MEMORY[0x1E695EFF8];
  do
  {
    v59 = vaddq_f64(v59, *&v276[v58]);
    v58 += 2;
  }

  while (v58 != 8);
  v60 = 0;
  v61 = 0.25 * v59.f64[0];
  v62 = vmuld_lane_f64(0.25, v59, 1);
  v63 = &v276[1];
  do
  {
    v64 = atan2(*v63 - v62, *(v63 - 1) - v61);
    *(v309 + v60) = v64;
    v60 += 4;
    v63 += 2;
  }

  while (v60 != 16);
  v65 = 0;
  v320 = xmmword_1A6027760;
  v321 = xmmword_1A6027770;
  v66 = 8;
  v67 = &v320;
  do
  {
    v68 = (&v320 + v66);
    v69 = *(&v320 + v66);
    v70 = *v67;
    v71 = *(v309 + v69);
    if (v71 < *(v309 + v70))
    {
      v72 = v65;
      while (1)
      {
        v73 = &v320;
        *(&v320 + v72 + 8) = v70;
        if (!v72)
        {
          break;
        }

        v70 = *(&v318[6] + v72);
        v72 -= 8;
        if (v71 >= *(v309 + v70))
        {
          v73 = (&v320 + v72 + 8);
          break;
        }
      }

      *v73 = v69;
    }

    v66 += 8;
    v65 += 8;
    v67 = v68;
  }

  while (v66 != 32);
  v74 = *&v276[2 * v320];
  v75 = *&v276[2 * *(&v320 + 1)];
  v76 = *&v276[2 * *(&v321 + 1)];
  v269 = *&v276[2 * v321];
  v270 = v76;
  v267 = v74;
  v268 = v75;
  v271 = v25;
  v272 = v234;
  v273 = v262;
  v274 = v237;
  v275 = v53;
  if (v45)
  {
    *(&v312 + 1) = v45;
    operator delete(v45);
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(&v315 + 1));
  free(v281);
  free(v282);
  vision::mod::ImageAnalyzer_Tensor3D::~ImageAnalyzer_Tensor3D(&texture);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(&__src);
  LODWORD(v315) = 0;
  vision::mod::ImageAnalyzer::getSceneSaliency(&texture, v236);
  vision::mod::ImageAnalyzer_Tensor2D::getVImageBufferFromTensor(baseAddress, &texture, &v315);
  v263 = *(baseAddress + 8);
  v77 = baseAddress[0].i64[0];
  v78 = baseAddress[1].i64[1];
  free(v302);
  free(v303);
  if (!v77)
  {
    if (a7)
    {
      v89 = [VNError errorForInternalErrorWithLocalizedDescription:@"failed to get image from tensor"];
LABEL_193:
      v167 = 0;
      v168 = 0;
      *a7 = v89;
      goto LABEL_324;
    }

LABEL_194:
    v167 = 0;
    v168 = 0;
    goto LABEL_324;
  }

  texture.i64[0] = MEMORY[0x1E69E9820];
  texture.i64[1] = 3221225472;
  *(&v79 + 1) = v263.i64[1];
  *&v79 = v78;
  v294 = __92__VNDocumentSegmentationDetector__calculateIoUWithImageAnalyzer_quadrilateral_bounds_error___block_invoke;
  v295 = &__block_descriptor_80_e15___CGImage__8__0l;
  v297 = v263;
  v298 = v79;
  v296 = v77;
  v299 = &v267;
  v80 = __92__VNDocumentSegmentationDetector__calculateIoUWithImageAnalyzer_quadrilateral_bounds_error___block_invoke(&texture);
  if (!v80)
  {
    if (a7)
    {
      v89 = [VNError errorForInternalErrorWithLocalizedDescription:@"failed to create comparison image"];
      goto LABEL_193;
    }

    goto LABEL_194;
  }

  v81 = v263.u64[1];
  std::vector<unsigned char>::vector[abi:ne200100](v276, v263.i64[1] * v263.i64[0]);
  v257 = v78;
  v259 = v276[0];
  BitmapInfo = CGImageGetBitmapInfo(v80);
  if (CGImageGetImageProvider())
  {
    ComponentType = CGImageProviderGetComponentType();
    ColorSpace = CGImageProviderGetColorSpace();
    PixelSize = CGImageProviderGetPixelSize();
    v86 = ComponentType == 1;
    v87 = ComponentType == 4;
    AlphaInfo = CGImageProviderGetAlphaInfo();
  }

  else
  {
    ColorSpace = CGImageGetColorSpace(v80);
    PixelSize = CGImageGetBitsPerPixel(v80) >> 3;
    v86 = CGImageGetBitsPerComponent(v80) == 8;
    v87 = CGImageGetBitsPerComponent(v80) == 32;
    AlphaInfo = CGImageGetAlphaInfo(v80);
  }

  v169 = AlphaInfo;
  v170 = 1;
  if ((v86 || v87) && ColorSpace)
  {
    Model = CGColorSpaceGetModel(ColorSpace);
    if (v169 <= 6 && ((1 << v169) & 0x54) != 0)
    {
      v172 = 0;
    }

    else
    {
      v172 = 1;
      if (v86 && PixelSize == 1 && !v169 && Model != kCGColorSpaceModelRGB)
      {
        v176 = 0;
        goto LABEL_283;
      }
    }

    v173 = BitmapInfo & 0x7000;
    if (PixelSize == 4 && v86)
    {
      if (v169 <= 5 && ((1 << v169) & 0x2A) != 0)
      {
        v175 = Model != kCGColorSpaceModelRGB;
        if (Model == kCGColorSpaceModelRGB && (BitmapInfo & 0x7000) == 0)
        {
          v176 = 0;
          v172 = 2;
LABEL_283:
          v177 = v259;
          goto LABEL_284;
        }
      }

      else
      {
        v175 = Model != kCGColorSpaceModelRGB;
      }

      v190 = v172 | v175;
      if (((v172 | v175) & 1) == 0 && (BitmapInfo & 0x7000) == 0)
      {
        v176 = 0;
        v172 = 8;
        goto LABEL_283;
      }

      if (v169 <= 5 && ((1 << v169) & 0x2A) != 0)
      {
        if (v173 != 0x2000)
        {
          v175 = 1;
        }

        if (!v175)
        {
          v176 = 0;
          v172 = 4;
          goto LABEL_283;
        }
      }

      if (!(v190 & 1 | (v173 != 0x2000)))
      {
        v176 = 0;
        v172 = 16;
        goto LABEL_283;
      }
    }

    if (PixelSize == 4 && v87)
    {
      v172 = 0;
      v176 = 1;
      v177 = v259;
      if (v169 <= 5 && ((1 << v169) & 0x2A) != 0)
      {
        v172 = 32 * (Model != kCGColorSpaceModelRGB);
        v176 = Model == kCGColorSpaceModelRGB;
      }

      goto LABEL_284;
    }

    if (PixelSize != 16 || !v86)
    {
      v172 = 0;
      v176 = 1;
      goto LABEL_283;
    }

    if (v169 <= 5 && ((1 << v169) & 0x2A) != 0)
    {
      v193 = Model != kCGColorSpaceModelRGB;
      if (Model == kCGColorSpaceModelRGB)
      {
        v177 = v259;
        if ((BitmapInfo & 0x7000) == 0)
        {
          v176 = 0;
          v172 = 64;
          goto LABEL_284;
        }

        goto LABEL_350;
      }
    }

    else
    {
      v193 = Model != kCGColorSpaceModelRGB;
    }

    v177 = v259;
LABEL_350:
    v227 = v172 | v193;
    if (((v172 | v193) & 1) != 0 || (BitmapInfo & 0x7000) != 0)
    {
      if (v169 > 5 || ((1 << v169) & 0x2A) == 0)
      {
        goto LABEL_358;
      }

      if (v173 != 0x2000)
      {
        v193 = 1;
      }

      if (!v193)
      {
        v176 = 0;
        v172 = 128;
      }

      else
      {
LABEL_358:
        v176 = v227 | (v173 != 0x2000);
        if (v227 & 1 | (v173 != 0x2000))
        {
          v172 = 0;
        }

        else
        {
          v172 = 512;
        }
      }
    }

    else
    {
      v176 = 0;
      v172 = 256;
    }

LABEL_284:
    Width = CGImageGetWidth(v80);
    Height = CGImageGetHeight(v80);
    BytesPerRow = CGImageGetBytesPerRow(v80);
    if (v172)
    {
      v197 = 1;
      v198 = v263;
    }

    else
    {
      v197 = 4;
      if ((v172 & 0x3E) == 0)
      {
        v197 = 16;
      }

      v198 = v263;
      if ((((v172 & 0x3E) == 0) & v176) == 1)
      {
        syslog(5, "ERROR: Invalid image type");
LABEL_303:
        v54 = v236;
        goto LABEL_304;
      }
    }

    if (v177 && v263.i64[1] && (v199 = vmovn_s64(vceqq_s64(v198, xmmword_1A6027760)), (v199.i8[0] & 1) == 0) && (v199.i8[4] & 1) == 0 && (v198.i64[0] = Height, v198.i64[1] = Width, v263.i64[0] >= Height) && BytesPerRow >= v263.i64[1])
    {
      v266 = v198;
    }

    else
    {
      v266 = v198;
      v200 = (v197 * Width + 15) & 0xFFFFFFFFFFFFFFF0;
      v177 = malloc_type_realloc(v177, v200 * Height, 0x45F5D406uLL);
      if (v177)
      {
        v201.i64[0] = Height;
        v201.i64[1] = Width;
        v266 = v201;
        v81 = v200;
      }
    }

    baseAddress[2].i64[0] = 0;
    baseAddress[0].i32[0] = CGImageGetBitsPerComponent(v80);
    baseAddress[0].i32[1] = CGImageGetBitsPerPixel(v80);
    baseAddress[0].i64[1] = CGImageGetColorSpace(v80);
    baseAddress[1].i32[0] = CGImageGetBitmapInfo(v80);
    *(&baseAddress[1].i64[1] + 4) = 0;
    *(baseAddress[1].i64 + 4) = 0;
    *&v320 = 0;
    __src = v177;
    v306 = v266;
    v307 = v81;
    v54 = v236;
    if (MEMORY[0x1AC5588A0](&__src, baseAddress, &v320, v80, 768))
    {
      goto LABEL_304;
    }

    if (!v306.i64[0])
    {
      v170 = 0;
      goto LABEL_304;
    }

    v202 = 0;
    v203 = __src;
    v204 = v177;
    do
    {
      memcpy(v204, v203, v81);
      v204 += v81;
      v203 += v307;
      ++v202;
    }

    while (v202 < v306.i64[0]);
    v170 = 0;
    goto LABEL_303;
  }

  v54 = v236;
  v177 = v259;
  v172 = 0;
LABEL_304:
  CGImageRelease(v80);
  if (((v172 == 1) & ~v170) != 0)
  {
    v205 = v273;
    if (v273 <= v274)
    {
      v206 = 0;
      v207 = 0;
      v208 = &v177[v81 * v273];
      v209 = v77 + 4 * v273 * (v257 >> 2);
      do
      {
        for (mm = v271; mm <= v272; ++mm)
        {
          v211 = *(v209 + 4 * mm);
          if (v208[mm])
          {
            ++v207;
            if (v211 > 0.45)
            {
              ++v206;
            }
          }

          else if (v211 > 0.45)
          {
            ++v207;
          }
        }

        ++v205;
        v208 += v81;
        v209 += 4 * (v257 >> 2);
      }

      while (v205 <= v274);
      v168 = COERCE_UNSIGNED_INT(v206 / (v207 + 0.0001));
    }

    else
    {
      v168 = 0;
    }

    v167 = 0x100000000;
  }

  else if (a7)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"failed to create comparison image"];
    v167 = 0;
    *a7 = v168 = 0;
  }

  else
  {
    v167 = 0;
    v168 = 0;
  }

  if (v276[0])
  {
    v276[1] = v276[0];
    operator delete(v276[0]);
  }

LABEL_324:
  v212 = v168 | v167;
  if ((v212 & 0x100000000) == 0)
  {
LABEL_325:
    v213 = 0;
    goto LABEL_338;
  }

  v214 = v239;
  LODWORD(__src) = 0;
  memset(baseAddress, 0, 32);
  vision::mod::ImageAnalyzer::getSceneSaliency(&texture, v54);
  vision::mod::ImageAnalyzer_Tensor2D::getVImageBufferFromTensor(baseAddress, &texture, &__src);
  free(v302);
  free(v303);
  if (__src != 32)
  {
    if (a7)
    {
      v220 = [VNError errorForInternalErrorWithLocalizedDescription:@"unsupported pixel format type"];
      goto LABEL_334;
    }

LABEL_335:
    v221 = 0;
    v213 = 0;
    goto LABEL_336;
  }

  texture.i64[0] = 0;
  v215 = *MEMORY[0x1E695E480];
  v216 = baseAddress[0].u64[1];
  v217 = baseAddress[0].i64[0];
  v218 = baseAddress[1];
  if (VNIOSurfaceBackedPixelBufferAttributes::onceToken != -1)
  {
    dispatch_once(&VNIOSurfaceBackedPixelBufferAttributes::onceToken, &__block_literal_global_30784);
  }

  v219 = CVPixelBufferCreateWithBytes(v215, v218.u64[0], v216, 0x4C303066u, v217, v218.u64[1], 0, 0, VNIOSurfaceBackedPixelBufferAttributes::pixelBufferAttributes, &texture);
  if (v219)
  {
    if (a7)
    {
      v220 = [VNError errorForCVReturnCode:v219 localizedDescription:@"failed to create pixel buffer"];
LABEL_334:
      *a7 = v220;
      goto LABEL_335;
    }

    goto LABEL_335;
  }

  v223 = [VNPixelBufferObservation alloc];
  v224 = [(VNPixelBufferObservation *)v223 initWithOriginatingRequestSpecifier:v214 featureName:0 CVPixelBuffer:texture.i64[0]];
  CVPixelBufferRelease(texture.i64[0]);

  if (!v224)
  {
    v221 = 0;
    v213 = 0;
    goto LABEL_337;
  }

  v225 = [VNRectangleObservation alloc];
  v214 = [(VNRectangleObservation *)v225 initWithOriginatingRequestSpecifier:v214 topLeft:v270 topRight:v269 bottomRight:v268 bottomLeft:v267];
  *&v226 = fminf((*&v212 * 1.1) * v275, 0.99);
  [v214 setConfidence:v226];
  v221 = v224;
  if (v214)
  {
    objc_storeStrong(v214 + 17, v224);
  }

  v324[0] = v214;
  v213 = [MEMORY[0x1E695DEC8] arrayWithObjects:v324 count:1];
LABEL_336:

LABEL_337:
LABEL_338:

  return v213;
}

CGImageRef __92__VNDocumentSegmentationDetector__calculateIoUWithImageAnalyzer_quadrilateral_bounds_error___block_invoke(uint64_t a1)
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  v3 = CGBitmapContextCreate(0, *(a1 + 48), *(a1 + 40), 8uLL, *(a1 + 64), v2, 0);
  CGColorSpaceRelease(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  CGContextBeginPath(v3);
  CGContextMoveToPoint(v3, **(a1 + 72) * v4, *(*(a1 + 72) + 8) * v5);
  CGContextAddLineToPoint(v3, *(*(a1 + 72) + 16) * v4, *(*(a1 + 72) + 24) * v5);
  CGContextAddLineToPoint(v3, *(*(a1 + 72) + 32) * v4, *(*(a1 + 72) + 40) * v5);
  CGContextAddLineToPoint(v3, *(*(a1 + 72) + 48) * v4, *(*(a1 + 72) + 56) * v5);
  CGContextAddLineToPoint(v3, **(a1 + 72) * v4, *(*(a1 + 72) + 8) * v5);
  CGContextSetGrayFillColor(v3, 1.0, 1.0);
  CGContextFillPath(v3);
  Image = CGBitmapContextCreateImage(v3);
  CGContextRelease(v3);
  return Image;
}

- (BOOL)configureImageAnalyzerOptions:(void *)a3 error:(id *)a4
{
  v10.receiver = self;
  v10.super_class = VNDocumentSegmentationDetector;
  v5 = [(VNImageAnalyzerBasedDetector *)&v10 configureImageAnalyzerOptions:a3 error:a4];
  if (v5)
  {
    if (*(a3 + 215) < 0)
    {
      *(a3 + 25) = 7;
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = a3 + 192;
      *(a3 + 215) = 7;
    }

    strcpy(v6, "sigmoid");
    if (*(a3 + 335) < 0)
    {
      *(a3 + 40) = 7;
      v7 = *(a3 + 39);
    }

    else
    {
      v7 = a3 + 312;
      *(a3 + 335) = 7;
    }

    strcpy(v7, "finalFC");
    if (*(a3 + 311) < 0)
    {
      *(a3 + 37) = 11;
      v8 = *(a3 + 36);
    }

    else
    {
      v8 = a3 + 288;
      *(a3 + 311) = 11;
    }

    strcpy(v8, "BL_BR_TR_TL");
    *(a3 + 385) = 1;
  }

  return v5;
}

+ (id)segmentationLabelsFilePathForConfiguration:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"docseg_segflow-xde2zmcdh5_64000_4ch.segmentation_labels.txt"];
  v6 = [VNEspressoHelpers pathForEspressoResourceWithFilename:v5 error:a4];

  return v6;
}

+ (id)inputImageBlobNameForConfiguration:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"image"];

  return v3;
}

+ (id)modelPathForConfiguration:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"docseg_segflow-xde2zmcdh5_64000_4ch_512x288_finalFC.espresso"];
  v6 = [VNEspressoHelpers pathForEspressoNetworkModelFileWithName:v5 error:a4];

  return v6;
}

@end