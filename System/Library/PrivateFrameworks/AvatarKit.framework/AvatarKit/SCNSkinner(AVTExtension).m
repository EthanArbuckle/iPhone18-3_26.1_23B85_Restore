@interface SCNSkinner(AVTExtension)
+ (id)avt_skinnerByInterpolatingFromSkinner:()AVTExtension toSkinner:factor:skeleton:;
- (uint64_t)avt_setSimdBaseGeometryBindTransform:()AVTExtension;
@end

@implementation SCNSkinner(AVTExtension)

- (uint64_t)avt_setSimdBaseGeometryBindTransform:()AVTExtension
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return [a1 setBaseGeometryBindTransform:v6];
}

+ (id)avt_skinnerByInterpolatingFromSkinner:()AVTExtension toSkinner:factor:skeleton:
{
  v208 = a1;
  v245 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = v208.n128_f32[0];
  v12 = v10;
  if (!v10)
  {
    v13 = avt_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SCNSkinner(AVTExtension) *)v13 avt_skinnerByInterpolatingFromSkinner:v14 toSkinner:v15 factor:v16 skeleton:v17, v18, v19, v20];
    }

    v11 = v208.n128_f32[0];
  }

  if (v11 == 0.0)
  {
    [v8 setSkeleton:v12];
    v21 = v8;
LABEL_9:
    v22 = v21;
    goto LABEL_10;
  }

  if (v11 == 1.0)
  {
    [v9 setSkeleton:v12];
    v21 = v9;
    goto LABEL_9;
  }

  v224 = v12;
  v25 = [v8 bones];
  v26 = [v9 bones];
  v211 = [v8 boneInverseBindTransforms];
  v210 = [v9 boneInverseBindTransforms];
  v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v241 = 0u;
  v226 = v25;
  v28 = [v226 countByEnumeratingWithState:&v238 objects:v244 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v239;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v239 != v30)
        {
          objc_enumerationMutation(v226);
        }

        v32 = [*(*(&v238 + 1) + 8 * i) name];
        [v27 addObject:v32];
      }

      v29 = [v226 countByEnumeratingWithState:&v238 objects:v244 count:16];
    }

    while (v29);
  }

  v206 = v8;

  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v225 = v26;
  v33 = [v225 countByEnumeratingWithState:&v234 objects:v243 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v235;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v235 != v35)
        {
          objc_enumerationMutation(v225);
        }

        v37 = [*(*(&v234 + 1) + 8 * j) name];
        [v27 addObject:v37];
      }

      v34 = [v225 countByEnumeratingWithState:&v234 objects:v243 count:16];
    }

    while (v34);
  }

  v205 = v9;
  v38 = v225;

  v39 = [v27 count];
  [v226 count];
  v204 = &v197;
  (MEMORY[0x1EEE9AC00])();
  v213 = &v197 - v40;
  [v38 count];
  (MEMORY[0x1EEE9AC00])();
  v212 = &v197 - v41;
  v227 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v39];
  v223 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v39];
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v209 = v27;
  v42 = [v209 countByEnumeratingWithState:&v230 objects:v242 count:16];
  if (v42)
  {
    v44 = v42;
    *&v222 = *v231;
    *v43.i32 = 1.0 - v208.n128_f32[0];
    v207 = vdupq_lane_s32(v43, 0);
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v231 != v222)
        {
          objc_enumerationMutation(v209);
        }

        v46 = *(*(&v230 + 1) + 8 * k);
        v229[0] = MEMORY[0x1E69E9820];
        v229[1] = 3221225472;
        v229[2] = __92__SCNSkinner_AVTExtension__avt_skinnerByInterpolatingFromSkinner_toSkinner_factor_skeleton___block_invoke;
        v229[3] = &unk_1E7F49A88;
        v229[4] = v46;
        v47 = [v226 indexOfObjectPassingTest:v229];
        v228[0] = MEMORY[0x1E69E9820];
        v228[1] = 3221225472;
        v228[2] = __92__SCNSkinner_AVTExtension__avt_skinnerByInterpolatingFromSkinner_toSkinner_factor_skeleton___block_invoke_2;
        v228[3] = &unk_1E7F49A88;
        v228[4] = v46;
        v48 = [v225 indexOfObjectPassingTest:v228];
        v49 = [v227 count];
        if (v47 == 0x7FFFFFFFFFFFFFFFLL || v48 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v47 == 0x7FFFFFFFFFFFFFFFLL)
          {
            *&v212[8 * v48] = v49;
            v62 = v210;
            v63 = v48;
          }

          else
          {
            *&v213[8 * v47] = v49;
            v62 = v211;
            v63 = v47;
          }

          v61 = [v62 objectAtIndexedSubscript:v63];
        }

        else
        {
          v50 = v212;
          *&v213[8 * v47] = v49;
          *&v50[8 * v48] = v49;
          v51 = [v211 objectAtIndexedSubscript:v47];
          [v51 avt_float4x4Value];
          v218 = v52;
          v219 = v53;
          v220 = v54;
          v221 = v55;

          v56 = [v210 objectAtIndexedSubscript:v48];
          [v56 avt_float4x4Value];
          v214 = v57;
          v215 = v58;
          v216 = v59;
          v217 = v60;

          v61 = [MEMORY[0x1E696B098] avt_valueWithFloat4x4:{*vmlaq_f32(vmulq_n_f32(v214, v208.n128_f32[0]), v218, v207).i64, *vmlaq_f32(vmulq_n_f32(v215, v208.n128_f32[0]), v219, v207).i64, *vmlaq_f32(vmulq_n_f32(v216, v208.n128_f32[0]), v220, v207).i64, *vmlaq_f32(vmulq_n_f32(v217, v208.n128_f32[0]), v221, v207).i64}];
        }

        v64 = v61;
        [v223 addObject:v61];

        v65 = [v224 childNodeWithName:v46 recursively:1];
        [v227 addObject:v65];
      }

      v44 = [v209 countByEnumeratingWithState:&v230 objects:v242 count:16];
    }

    while (v44);
  }

  v66 = v206;
  v67 = [v206 boneWeights];
  v217.i64[0] = [v67 bytesPerComponent];
  v68 = [v67 data];
  v216.i64[0] = [v68 bytes];

  v219.i64[0] = [v67 componentsPerVector];
  v69 = [v66 boneIndices];
  v215.i64[0] = [v69 bytesPerComponent];
  v70 = [v69 data];
  v214.i64[0] = [v70 bytes];

  if (v67)
  {
    _ZF = v69 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v72 = _ZF;
  v207.i64[0] = v69;
  if (_ZF)
  {
    v73 = [v226 count];
    v74 = v205;
    if (v73 == 1)
    {
      v75 = v205;
      v219.i64[0] = 1;
    }

    else
    {
      v76 = avt_default_log();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        [(SCNSkinner(AVTExtension) *)v76 avt_skinnerByInterpolatingFromSkinner:v77 toSkinner:v78 factor:v79 skeleton:v80, v81, v82, v83];
      }

      v219.i64[0] = 1;
      v75 = v74;
    }
  }

  else
  {
    v75 = v205;
  }

  v84 = [v75 boneWeights];
  v85 = [v84 bytesPerComponent];
  v86 = [v84 data];
  *&v222 = [v86 bytes];

  v87 = [v84 componentsPerVector];
  v88 = [v75 boneIndices];
  v89 = [v88 bytesPerComponent];
  v90 = [v88 data];
  v221.i64[0] = [v90 bytes];

  v202 = v88;
  v203 = v84;
  if (v84)
  {
    v91 = v88 == 0;
  }

  else
  {
    v91 = 1;
  }

  v92 = v91;
  if (v91)
  {
    if ([v225 count] != 1)
    {
      v93 = avt_default_log();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        [(SCNSkinner(AVTExtension) *)v93 avt_skinnerByInterpolatingFromSkinner:v94 toSkinner:v95 factor:v96 skeleton:v97, v98, v99, v100];
      }
    }

    v87 = 1;
  }

  v101 = [v67 vectorCount];
  v102 = MEMORY[0x1EEE9AC00](v101);
  v106 = &v197 - v105;
  v107 = 0;
  v220.i64[0] = v102;
  if (v102)
  {
    v109 = v212;
    v108 = v213;
    v110 = v217.i64[0];
    v111 = v216.i64[0];
    v112 = v215.i64[0];
    v113 = v214.i64[0];
    if (v103)
    {
      v114 = 0;
      v107 = 0;
      v115 = 0;
      while (1)
      {
        v116 = 0;
        if (v104)
        {
          v117 = v114;
          do
          {
            if (v72)
            {
              v118 = 0;
            }

            else
            {
              switch(v110)
              {
                case 8:
                  _S0 = *(v111 + 8 * v117);
                  break;
                case 4:
                  _S0 = *(v111 + 4 * v117);
                  break;
                case 2:
                  _H0 = *(v111 + 2 * v117);
                  __asm { FCVT            S0, H0 }

                  break;
                default:
                  +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
              }

              if (_S0 <= 0.0)
              {
                goto LABEL_86;
              }

              switch(v112)
              {
                case 4:
                  v118 = *(v113 + 4 * v117);
                  break;
                case 2:
                  v118 = *(v113 + 2 * v117);
                  break;
                case 1:
                  v118 = *(v113 + v117);
                  break;
                default:
                  +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
              }
            }

            v119 = v116++;
            *&v106[4 * v119] = *&v108[8 * v118];
LABEL_86:
            ++v117;
            --v104;
          }

          while (v104);
        }

        if (v87)
        {
          break;
        }

LABEL_116:
        if (v107 <= v116)
        {
          v135 = v116;
        }

        else
        {
          v135 = v107;
        }

        if (++v115 >= v220.i64[0])
        {
          v107 = v135;
          goto LABEL_123;
        }

        v104 = v219.i64[0];
        v114 += v219.i64[0];
        v107 = v135;
        if (v135 >= v103)
        {
          goto LABEL_123;
        }
      }

      v125 = 0;
      while ((v92 & 1) == 0)
      {
        v132 = v125 + v115 * v87;
        switch(v85)
        {
          case 8:
            _S0 = *(v222 + 8 * v132);
            break;
          case 4:
            _S0 = *(v222 + 4 * v132);
            break;
          case 2:
            _H0 = *(v222 + 2 * v132);
            __asm { FCVT            S0, H0 }

            break;
          default:
            +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
        }

        if (_S0 > 0.0)
        {
          switch(v89)
          {
            case 4:
              v126 = *(v221.i64[0] + 4 * v132);
              break;
            case 2:
              v126 = *(v221.i64[0] + 2 * v132);
              break;
            case 1:
              v126 = *(v221.i64[0] + v132);
              break;
            default:
              +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
          }

LABEL_94:
          v127 = *&v109[8 * v126];
          if (v116)
          {
            v128 = v116;
            v129 = v116;
            v130 = v106;
            while (1)
            {
              v131 = *v130++;
              if (v131 == v127)
              {
                break;
              }

              if (!--v129)
              {
                goto LABEL_104;
              }
            }
          }

          else
          {
            v128 = 0;
LABEL_104:
            ++v116;
            *&v106[4 * v128] = v127;
          }
        }

        if (++v125 == v87)
        {
          goto LABEL_116;
        }
      }

      v126 = 0;
      goto LABEL_94;
    }
  }

LABEL_123:
  v198 = v89;
  v201 = v67;
  v136 = v107 * v220.i64[0];
  v199 = 4 * v107 * v220.i64[0];
  v137 = malloc_type_malloc(v199, 0xBADA6A49uLL);
  v200 = v136;
  v138 = malloc_type_malloc(v136, 0x89F46CF1uLL);
  v218.i64[0] = 4 * v107;
  if (v220.i64[0])
  {
    v141 = v107;
    v142 = 0;
    v143 = 0;
    v144 = v208.n128_f32[0];
    *&v140 = 1.0 - v208.n128_f32[0];
    v145 = v137;
    v147 = v212;
    v146 = v213;
    v148 = v217.i64[0];
    v149 = v216.i64[0];
    v150 = v215.i64[0];
    v151 = v214.i64[0];
    v152 = v219.i64[0];
    v153 = v198;
    while (1)
    {
      if (v152)
      {
        v154 = v152;
        LODWORD(v152) = 0;
        v155 = v142;
        do
        {
          if (v72)
          {
            v156 = 0;
            _S0 = 1.0;
          }

          else
          {
            switch(v148)
            {
              case 8:
                _S0 = *(v149 + 8 * v155);
                break;
              case 4:
                _S0 = *(v149 + 4 * v155);
                break;
              case 2:
                _H0 = *(v149 + 2 * v155);
                __asm { FCVT            S0, H0 }

                break;
              default:
                +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
            }

            if (_S0 <= 0.0)
            {
              goto LABEL_141;
            }

            switch(v150)
            {
              case 4:
                v156 = *(v151 + 4 * v155);
                break;
              case 2:
                v156 = *(v151 + 2 * v155);
                break;
              case 1:
                v156 = *(v151 + v155);
                break;
              default:
                +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
            }
          }

          v158 = *&v146[8 * v156];
          v159 = v143 * v141 + v152;
          v137[v159] = *&v140 * _S0;
          v160 = v152;
          v138[v159] = v158;
          LODWORD(v152) = v152 + 1;
          *&v106[4 * v160] = v158;
LABEL_141:
          ++v155;
          --v154;
        }

        while (v154);
      }

      if (v87)
      {
        break;
      }

LABEL_172:
      if (v141 > v152)
      {
        v174 = v152;
        do
        {
          v175 = v174 + v143 * v141;
          v137[v175] = 0.0;
          v138[v175] = 0;
          LODWORD(v152) = v152 + 1;
          v174 = v152;
        }

        while (v141 > v152);
      }

      ++v143;
      v152 = v219.i64[0];
      v142 += v219.i64[0];
      v145 = (v145 + v218.i64[0]);
      if (v143 == v220.i64[0])
      {
        v222 = v140;
        goto LABEL_178;
      }
    }

    v162 = 0;
    v163 = v143 * v141;
    while ((v92 & 1) == 0)
    {
      v172 = v162 + v143 * v87;
      switch(v85)
      {
        case 8:
          _S0 = *(v222 + 8 * v172);
          break;
        case 4:
          _S0 = *(v222 + 4 * v172);
          break;
        case 2:
          _H0 = *(v222 + 2 * v172);
          __asm { FCVT            S0, H0 }

          break;
        default:
          +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
      }

      if (_S0 > 0.0)
      {
        switch(v153)
        {
          case 4:
            v164 = *(v221.i64[0] + 4 * v172);
            break;
          case 2:
            v164 = *(v221.i64[0] + 2 * v172);
            break;
          case 1:
            v164 = *(v221.i64[0] + v172);
            break;
          default:
            +[SCNSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
        }

LABEL_149:
        v166 = *&v147[8 * v164];
        if (v152)
        {
          v167 = v152;
          v168 = v152;
          v169 = v106;
          v170 = v145;
          while (1)
          {
            v171 = *v169++;
            if (v171 == v166)
            {
              break;
            }

            ++v170;
            if (!--v168)
            {
              v141 = v107;
              goto LABEL_159;
            }
          }

          *v170 = *v170 + (v144 * _S0);
          v141 = v107;
        }

        else
        {
          v167 = 0;
LABEL_159:
          v137[v163 + v167] = _S0 * v144;
          v138[v163 + v167] = v166;
          LODWORD(v152) = v152 + 1;
          *&v106[4 * v167] = v166;
        }
      }

      if (++v162 == v87)
      {
        goto LABEL_172;
      }
    }

    v164 = 0;
    _S0 = 1.0;
    goto LABEL_149;
  }

  *&v139 = 1.0 - v208.n128_f32[0];
  v222 = v139;
LABEL_178:
  v176 = MEMORY[0x1E697A878];
  v177 = objc_alloc(MEMORY[0x1E695DEF0]);
  v178 = [v177 initWithBytesNoCopy:v137 length:v199];
  v179 = v220.i64[0];
  v180 = [v176 geometrySourceWithData:v178 semantic:*MEMORY[0x1E697A8F0] vectorCount:v220.i64[0] floatComponents:1 componentsPerVector:v107 bytesPerComponent:4 dataOffset:0 dataStride:v218.i64[0]];

  v181 = MEMORY[0x1E697A878];
  v182 = objc_alloc(MEMORY[0x1E695DEF0]);
  v183 = [v182 initWithBytesNoCopy:v138 length:v200];
  v184 = [v181 geometrySourceWithData:v183 semantic:*MEMORY[0x1E697A8E8] vectorCount:v179 floatComponents:0 componentsPerVector:v107 bytesPerComponent:1 dataOffset:0 dataStride:v107];

  v185 = MEMORY[0x1E697A8D0];
  v8 = v206;
  v186 = [v206 baseGeometry];
  v187 = v227;
  v188 = v223;
  v22 = [v185 skinnerWithBaseGeometry:v186 bones:v227 boneInverseBindTransforms:v223 boneWeights:v180 boneIndices:v184];

  [v8 avt_simdBaseGeometryBindTransform];
  v218 = v189;
  v219 = v190;
  v220 = v191;
  v221 = v192;
  v9 = v205;
  [v205 avt_simdBaseGeometryBindTransform];
  [v22 avt_setSimdBaseGeometryBindTransform:{*vmlaq_n_f32(vmulq_n_f32(v193, v208.n128_f32[0]), v218, *&v222).i64, *vmlaq_n_f32(vmulq_n_f32(v194, v208.n128_f32[0]), v219, *&v222).i64, *vmlaq_n_f32(vmulq_n_f32(v195, v208.n128_f32[0]), v220, *&v222).i64, *vmlaq_n_f32(vmulq_n_f32(v196, v208.n128_f32[0]), v221, *&v222).i64}];
  v12 = v224;
  [v22 setSkeleton:v224];

LABEL_10:
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (void)avt_skinnerByInterpolatingFromSkinner:()AVTExtension toSkinner:factor:skeleton:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)avt_skinnerByInterpolatingFromSkinner:()AVTExtension toSkinner:factor:skeleton:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Missing index or weight source for skinner with multiple bones", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)avt_skinnerByInterpolatingFromSkinner:()AVTExtension toSkinner:factor:skeleton:.cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Missing index or weight source for skinner with multiple bones", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end