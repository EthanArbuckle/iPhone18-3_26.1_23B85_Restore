@interface VFXSkinner(AVTExtension)
+ (id)avt_skinnerByInterpolatingFromSkinner:()AVTExtension toSkinner:factor:skeleton:;
@end

@implementation VFXSkinner(AVTExtension)

+ (id)avt_skinnerByInterpolatingFromSkinner:()AVTExtension toSkinner:factor:skeleton:
{
  v210 = a1;
  v247 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = v210.n128_f32[0];
  v12 = v10;
  if (!v10)
  {
    v13 = avt_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SCNSkinner(AVTExtension) *)v13 avt_skinnerByInterpolatingFromSkinner:v14 toSkinner:v15 factor:v16 skeleton:v17, v18, v19, v20];
    }

    v11 = v210.n128_f32[0];
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

  v226 = v12;
  v25 = [v8 bones];
  v26 = [v9 bones];
  v213 = [v8 boneInverseBindTransforms];
  v212 = [v9 boneInverseBindTransforms];
  v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v228 = v25;
  v28 = [v228 countByEnumeratingWithState:&v240 objects:v246 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v241;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v241 != v30)
        {
          objc_enumerationMutation(v228);
        }

        v32 = [*(*(&v240 + 1) + 8 * i) name];
        [v27 addObject:v32];
      }

      v29 = [v228 countByEnumeratingWithState:&v240 objects:v246 count:16];
    }

    while (v29);
  }

  v208 = v8;

  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v227 = v26;
  v33 = [v227 countByEnumeratingWithState:&v236 objects:v245 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v237;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v237 != v35)
        {
          objc_enumerationMutation(v227);
        }

        v37 = [*(*(&v236 + 1) + 8 * j) name];
        [v27 addObject:v37];
      }

      v34 = [v227 countByEnumeratingWithState:&v236 objects:v245 count:16];
    }

    while (v34);
  }

  v207 = v9;
  v38 = v227;

  v39 = [v27 count];
  v40 = [v228 count];
  v206 = &v199;
  MEMORY[0x1EEE9AC00](v40);
  v215 = &v199 - v41;
  v42 = [v38 count];
  MEMORY[0x1EEE9AC00](v42);
  v214 = &v199 - v43;
  v229 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v39];
  v225 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v39];
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  v235 = 0u;
  v211 = v27;
  v44 = [v211 countByEnumeratingWithState:&v232 objects:v244 count:16];
  if (v44)
  {
    v46 = v44;
    *&v224 = *v233;
    *v45.i32 = 1.0 - v210.n128_f32[0];
    v209 = vdupq_lane_s32(v45, 0);
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v233 != v224)
        {
          objc_enumerationMutation(v211);
        }

        v48 = *(*(&v232 + 1) + 8 * k);
        v231[0] = MEMORY[0x1E69E9820];
        v231[1] = 3221225472;
        v231[2] = __92__VFXSkinner_AVTExtension__avt_skinnerByInterpolatingFromSkinner_toSkinner_factor_skeleton___block_invoke;
        v231[3] = &unk_1E7F4A0B8;
        v231[4] = v48;
        v49 = [v228 indexOfObjectPassingTest:v231];
        v230[0] = MEMORY[0x1E69E9820];
        v230[1] = 3221225472;
        v230[2] = __92__VFXSkinner_AVTExtension__avt_skinnerByInterpolatingFromSkinner_toSkinner_factor_skeleton___block_invoke_2;
        v230[3] = &unk_1E7F4A0B8;
        v230[4] = v48;
        v50 = [v227 indexOfObjectPassingTest:v230];
        v51 = [v229 count];
        if (v49 == 0x7FFFFFFFFFFFFFFFLL || v50 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v49 == 0x7FFFFFFFFFFFFFFFLL)
          {
            *&v214[8 * v50] = v51;
            v64 = v212;
            v65 = v50;
          }

          else
          {
            *&v215[8 * v49] = v51;
            v64 = v213;
            v65 = v49;
          }

          v63 = [v64 objectAtIndexedSubscript:v65];
        }

        else
        {
          v52 = v214;
          *&v215[8 * v49] = v51;
          *&v52[8 * v50] = v51;
          v53 = [v213 objectAtIndexedSubscript:v49];
          [v53 avt_float4x4Value];
          v220 = v54;
          v221 = v55;
          v222 = v56;
          v223 = v57;

          v58 = [v212 objectAtIndexedSubscript:v50];
          [v58 avt_float4x4Value];
          v216 = v59;
          v217 = v60;
          v218 = v61;
          v219 = v62;

          v63 = [MEMORY[0x1E696B098] avt_valueWithFloat4x4:{*vmlaq_f32(vmulq_n_f32(v216, v210.n128_f32[0]), v220, v209).i64, *vmlaq_f32(vmulq_n_f32(v217, v210.n128_f32[0]), v221, v209).i64, *vmlaq_f32(vmulq_n_f32(v218, v210.n128_f32[0]), v222, v209).i64, *vmlaq_f32(vmulq_n_f32(v219, v210.n128_f32[0]), v223, v209).i64}];
        }

        v66 = v63;
        [v225 addObject:v63];

        v67 = [v226 childNodeWithName:v48 recursively:1];
        [v229 addObject:v67];
      }

      v46 = [v211 countByEnumeratingWithState:&v232 objects:v244 count:16];
    }

    while (v46);
  }

  v68 = v208;
  v69 = [v208 boneWeights];
  v219.i64[0] = [v69 bytesPerComponent];
  v70 = [v69 data];
  v218.i64[0] = [v70 bytes];

  v221.i64[0] = [v69 componentsPerVector];
  v71 = [v68 boneIndices];
  v217.i64[0] = [v71 bytesPerComponent];
  v72 = [v71 data];
  v216.i64[0] = [v72 bytes];

  if (v69)
  {
    _ZF = v71 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v74 = _ZF;
  v209.i64[0] = v71;
  if (_ZF)
  {
    v75 = [v228 count];
    v76 = v207;
    if (v75 == 1)
    {
      v77 = v207;
      v221.i64[0] = 1;
    }

    else
    {
      v78 = avt_default_log();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        [(SCNSkinner(AVTExtension) *)v78 avt_skinnerByInterpolatingFromSkinner:v79 toSkinner:v80 factor:v81 skeleton:v82, v83, v84, v85];
      }

      v221.i64[0] = 1;
      v77 = v76;
    }
  }

  else
  {
    v77 = v207;
  }

  v86 = [v77 boneWeights];
  v87 = [v86 bytesPerComponent];
  v88 = [v86 data];
  *&v224 = [v88 bytes];

  v89 = [v86 componentsPerVector];
  v90 = [v77 boneIndices];
  v91 = [v90 bytesPerComponent];
  v92 = [v90 data];
  v223.i64[0] = [v92 bytes];

  v204 = v90;
  v205 = v86;
  if (v86)
  {
    v93 = v90 == 0;
  }

  else
  {
    v93 = 1;
  }

  v94 = v93;
  if (v93)
  {
    if ([v227 count] != 1)
    {
      v95 = avt_default_log();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        [(SCNSkinner(AVTExtension) *)v95 avt_skinnerByInterpolatingFromSkinner:v96 toSkinner:v97 factor:v98 skeleton:v99, v100, v101, v102];
      }
    }

    v89 = 1;
  }

  v103 = [v69 vectorCount];
  v104 = MEMORY[0x1EEE9AC00](v103);
  v108 = &v199 - v107;
  v109 = 0;
  v222.i64[0] = v104;
  if (v104)
  {
    v111 = v214;
    v110 = v215;
    v112 = v219.i64[0];
    v113 = v218.i64[0];
    v114 = v217.i64[0];
    v115 = v216.i64[0];
    if (v105)
    {
      v116 = 0;
      v109 = 0;
      v117 = 0;
      while (1)
      {
        v118 = 0;
        if (v106)
        {
          v119 = v116;
          do
          {
            if (v74)
            {
              v120 = 0;
            }

            else
            {
              switch(v112)
              {
                case 8:
                  _S0 = *(v113 + 8 * v119);
                  break;
                case 4:
                  _S0 = *(v113 + 4 * v119);
                  break;
                case 2:
                  _H0 = *(v113 + 2 * v119);
                  __asm { FCVT            S0, H0 }

                  break;
                default:
                  +[VFXSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
              }

              if (_S0 <= 0.0)
              {
                goto LABEL_86;
              }

              switch(v114)
              {
                case 4:
                  v120 = *(v115 + 4 * v119);
                  break;
                case 2:
                  v120 = *(v115 + 2 * v119);
                  break;
                case 1:
                  v120 = *(v115 + v119);
                  break;
                default:
                  +[VFXSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
              }
            }

            v121 = v118++;
            *&v108[4 * v121] = *&v110[8 * v120];
LABEL_86:
            ++v119;
            --v106;
          }

          while (v106);
        }

        if (v89)
        {
          break;
        }

LABEL_116:
        if (v109 <= v118)
        {
          v137 = v118;
        }

        else
        {
          v137 = v109;
        }

        if (++v117 >= v222.i64[0])
        {
          v109 = v137;
          goto LABEL_123;
        }

        v106 = v221.i64[0];
        v116 += v221.i64[0];
        v109 = v137;
        if (v137 >= v105)
        {
          goto LABEL_123;
        }
      }

      v127 = 0;
      while ((v94 & 1) == 0)
      {
        v134 = v127 + v117 * v89;
        switch(v87)
        {
          case 8:
            _S0 = *(v224 + 8 * v134);
            break;
          case 4:
            _S0 = *(v224 + 4 * v134);
            break;
          case 2:
            _H0 = *(v224 + 2 * v134);
            __asm { FCVT            S0, H0 }

            break;
          default:
            +[VFXSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
        }

        if (_S0 > 0.0)
        {
          switch(v91)
          {
            case 4:
              v128 = *(v223.i64[0] + 4 * v134);
              break;
            case 2:
              v128 = *(v223.i64[0] + 2 * v134);
              break;
            case 1:
              v128 = *(v223.i64[0] + v134);
              break;
            default:
              +[VFXSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
          }

LABEL_94:
          v129 = *&v111[8 * v128];
          if (v118)
          {
            v130 = v118;
            v131 = v118;
            v132 = v108;
            while (1)
            {
              v133 = *v132++;
              if (v133 == v129)
              {
                break;
              }

              if (!--v131)
              {
                goto LABEL_104;
              }
            }
          }

          else
          {
            v130 = 0;
LABEL_104:
            ++v118;
            *&v108[4 * v130] = v129;
          }
        }

        if (++v127 == v89)
        {
          goto LABEL_116;
        }
      }

      v128 = 0;
      goto LABEL_94;
    }
  }

LABEL_123:
  v200 = v91;
  v203 = v69;
  v138 = v109 * v222.i64[0];
  v201 = 4 * v109 * v222.i64[0];
  v139 = malloc_type_malloc(v201, 0x5F6610EuLL);
  v202 = v138;
  v140 = malloc_type_malloc(v138, 0xAA1A4787uLL);
  v220.i64[0] = 4 * v109;
  if (v222.i64[0])
  {
    v143 = v109;
    v144 = 0;
    v145 = 0;
    v146 = v210.n128_f32[0];
    *&v142 = 1.0 - v210.n128_f32[0];
    v147 = v139;
    v149 = v214;
    v148 = v215;
    v150 = v219.i64[0];
    v151 = v218.i64[0];
    v152 = v217.i64[0];
    v153 = v216.i64[0];
    v154 = v221.i64[0];
    v155 = v200;
    while (1)
    {
      if (v154)
      {
        v156 = v154;
        LODWORD(v154) = 0;
        v157 = v144;
        do
        {
          if (v74)
          {
            v158 = 0;
            _S0 = 1.0;
          }

          else
          {
            switch(v150)
            {
              case 8:
                _S0 = *(v151 + 8 * v157);
                break;
              case 4:
                _S0 = *(v151 + 4 * v157);
                break;
              case 2:
                _H0 = *(v151 + 2 * v157);
                __asm { FCVT            S0, H0 }

                break;
              default:
                +[VFXSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
            }

            if (_S0 <= 0.0)
            {
              goto LABEL_141;
            }

            switch(v152)
            {
              case 4:
                v158 = *(v153 + 4 * v157);
                break;
              case 2:
                v158 = *(v153 + 2 * v157);
                break;
              case 1:
                v158 = *(v153 + v157);
                break;
              default:
                +[VFXSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
            }
          }

          v160 = *&v148[8 * v158];
          v161 = v145 * v143 + v154;
          v139[v161] = *&v142 * _S0;
          v162 = v154;
          v140[v161] = v160;
          LODWORD(v154) = v154 + 1;
          *&v108[4 * v162] = v160;
LABEL_141:
          ++v157;
          --v156;
        }

        while (v156);
      }

      if (v89)
      {
        break;
      }

LABEL_172:
      if (v143 > v154)
      {
        v176 = v154;
        do
        {
          v177 = v176 + v145 * v143;
          v139[v177] = 0.0;
          v140[v177] = 0;
          LODWORD(v154) = v154 + 1;
          v176 = v154;
        }

        while (v143 > v154);
      }

      ++v145;
      v154 = v221.i64[0];
      v144 += v221.i64[0];
      v147 = (v147 + v220.i64[0]);
      if (v145 == v222.i64[0])
      {
        v224 = v142;
        goto LABEL_178;
      }
    }

    v164 = 0;
    v165 = v145 * v143;
    while ((v94 & 1) == 0)
    {
      v174 = v164 + v145 * v89;
      switch(v87)
      {
        case 8:
          _S0 = *(v224 + 8 * v174);
          break;
        case 4:
          _S0 = *(v224 + 4 * v174);
          break;
        case 2:
          _H0 = *(v224 + 2 * v174);
          __asm { FCVT            S0, H0 }

          break;
        default:
          +[VFXSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
      }

      if (_S0 > 0.0)
      {
        switch(v155)
        {
          case 4:
            v166 = *(v223.i64[0] + 4 * v174);
            break;
          case 2:
            v166 = *(v223.i64[0] + 2 * v174);
            break;
          case 1:
            v166 = *(v223.i64[0] + v174);
            break;
          default:
            +[VFXSkinner(AVTExtension) avt_skinnerByInterpolatingFromSkinner:toSkinner:factor:skeleton:];
        }

LABEL_149:
        v168 = *&v149[8 * v166];
        if (v154)
        {
          v169 = v154;
          v170 = v154;
          v171 = v108;
          v172 = v147;
          while (1)
          {
            v173 = *v171++;
            if (v173 == v168)
            {
              break;
            }

            ++v172;
            if (!--v170)
            {
              v143 = v109;
              goto LABEL_159;
            }
          }

          *v172 = *v172 + (v146 * _S0);
          v143 = v109;
        }

        else
        {
          v169 = 0;
LABEL_159:
          v139[v165 + v169] = _S0 * v146;
          v140[v165 + v169] = v168;
          LODWORD(v154) = v154 + 1;
          *&v108[4 * v169] = v168;
        }
      }

      if (++v164 == v89)
      {
        goto LABEL_172;
      }
    }

    v166 = 0;
    _S0 = 1.0;
    goto LABEL_149;
  }

  *&v141 = 1.0 - v210.n128_f32[0];
  v224 = v141;
LABEL_178:
  v178 = MEMORY[0x1E69DF310];
  v179 = objc_alloc(MEMORY[0x1E695DEF0]);
  v180 = [v179 initWithBytesNoCopy:v139 length:v201];
  v181 = v222.i64[0];
  v182 = [v178 meshSourceWithData:v180 semantic:*MEMORY[0x1E69DF3A0] vectorCount:v222.i64[0] floatComponents:1 componentsPerVector:v109 bytesPerComponent:4 dataOffset:0 dataStride:v220.i64[0]];

  v183 = MEMORY[0x1E69DF310];
  v184 = objc_alloc(MEMORY[0x1E695DEF0]);
  v185 = [v184 initWithBytesNoCopy:v140 length:v202];
  v186 = [v183 meshSourceWithData:v185 semantic:*MEMORY[0x1E69DF398] vectorCount:v181 floatComponents:0 componentsPerVector:v109 bytesPerComponent:1 dataOffset:0 dataStride:v109];

  v187 = MEMORY[0x1E69DF368];
  v8 = v208;
  v188 = [v208 baseMesh];
  v189 = v229;
  v190 = v225;
  v22 = [v187 skinnerWithBaseMesh:v188 bones:v229 boneInverseBindTransforms:v225 boneWeights:v182 boneIndices:v186];

  [v8 avt_simdBaseGeometryBindTransform];
  v220 = v191;
  v221 = v192;
  v222 = v193;
  v223 = v194;
  v9 = v207;
  [v207 avt_simdBaseGeometryBindTransform];
  [v22 avt_setSimdBaseMeshBindTransform:{*vmlaq_n_f32(vmulq_n_f32(v195, v210.n128_f32[0]), v220, *&v224).i64, *vmlaq_n_f32(vmulq_n_f32(v196, v210.n128_f32[0]), v221, *&v224).i64, *vmlaq_n_f32(vmulq_n_f32(v197, v210.n128_f32[0]), v222, *&v224).i64, *vmlaq_n_f32(vmulq_n_f32(v198, v210.n128_f32[0]), v223, *&v224).i64}];
  v12 = v226;
  [v22 setSkeleton:v226];

LABEL_10:
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

@end