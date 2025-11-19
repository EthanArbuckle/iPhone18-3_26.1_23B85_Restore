@interface PercentileClipProcessor_RGBA8_CPU
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGPoint)centerInImg:(id)a3 fromRect:(CGRect)a4 toRect:(CGRect)a5 offset:(CGPoint)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (int)formatForInputAtIndex:(int)a3;
@end

@implementation PercentileClipProcessor_RGBA8_CPU

+ (int)formatForInputAtIndex:(int)a3
{
  if ((a3 - 1) < 2)
  {
    v3 = &kCIFormatRGBAh;
    return *v3;
  }

  if ((a3 - 3) < 2)
  {
    v3 = &kCIFormatR8;
    return *v3;
  }

  if (!a3)
  {
    v3 = &kCIFormatBGRA8;
    return *v3;
  }

  return 0;
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  if ((a3 - 1) >= 2)
  {
    [objc_msgSend(a4 objectForKeyedSubscript:{@"roi", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height, v5, v6), "CGRectValue"}];
  }

  else
  {
    v7 = 1.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 1.0;
  }

  result.size.height = v10;
  result.size.width = v7;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

+ (CGPoint)centerInImg:(id)a3 fromRect:(CGRect)a4 toRect:(CGRect)a5 offset:(CGPoint)a6
{
  height = a5.size.height;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = *MEMORY[0x1E69E9840];
  *&src.height = xmmword_19CF23040;
  src.rowBytes = 8;
  dest.data = v13;
  *&dest.height = xmmword_19CF23040;
  dest.rowBytes = 16;
  src.data = [a3 baseAddress];
  vImageConvert_Planar16FtoPlanarF(&src, &dest, 0x10u);
  v9 = roundf(v13[0]) - v15 - x;
  v10 = height - (roundf(v13[1]) - v16 - y) + -1.0;
  result.y = v10;
  result.x = v9;
  return result;
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v211 = *MEMORY[0x1E69E9840];
  v10 = [a4 objectForKeyedSubscript:@"threshold"];
  v167 = [a4 objectForKeyedSubscript:@"area"];
  v11 = [a4 objectForKeyedSubscript:@"centerOffsetLeft"];
  v12 = [a4 objectForKeyedSubscript:@"centerOffsetRight"];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"interPeakMinRepair", "floatValue"}];
  v171 = v13;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"abortMaxCenterDist", "floatValue"}];
  log = v14;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"densityRadius", "floatValue"}];
  v172 = v15;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"minDensity", "floatValue"}];
  v173 = v16;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"maxRelDensity", "floatValue"}];
  v174 = v17;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"minGobalLocalMeanDiff", "floatValue"}];
  v166 = v18;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"percentileRepair", "floatValue"}];
  v170 = v19;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"percentileSpecular", "floatValue"}];
  v169 = v20;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"percentRepair", "floatValue"}];
  v168 = v21;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"percentSpecular", "floatValue"}];
  v175 = v22;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"centerExtentLeft", "CGRectValue"}];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"centerExtentRight", "CGRectValue"}];
  v192 = v32;
  v195 = v31;
  v187 = v34;
  v190 = v33;
  v35 = [a3 objectAtIndexedSubscript:0];
  [v35 format];
  [a5 format];
  [v35 region];
  v179 = v37;
  v181 = v36;
  v178 = [v35 baseAddress];
  v177 = [v35 bytesPerRow];
  clearOutput(a5);
  v38 = [a3 objectAtIndexedSubscript:1];
  v39 = [a3 objectAtIndexedSubscript:2];
  if ([v38 format] == 2056)
  {
    [v39 format];
  }

  [v35 region];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  [v11 CGPointValue];
  [a1 centerInImg:v38 fromRect:v24 toRect:v26 offset:{v28, v30, v41, v43, v45, v47, v48, v49}];
  v51 = v50;
  v53 = v52;
  [v35 region];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  [v12 CGPointValue];
  [a1 centerInImg:v39 fromRect:v195 toRect:*&v192 offset:{v190, *&v187, v55, v57, v59, v61, v62, v63}];
  v65 = v64;
  v67 = v66;
  v68 = 0;
  [v35 region];
  v70 = v69 * 0.5;
  [v35 region];
  v72 = v71 * 0.5;
  v73 = v70;
  v74 = vabdd_f64(v51, v70);
  v75 = (v70 * 0.8);
  if (v74 > v75 || vabdd_f64(v53, v72) > (v72 * 0.8))
  {
    if (CI_LOG_DUALRED())
    {
      v76 = ci_logger_api();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }

    v68 = 1;
  }

  if (vabdd_f64(v65, v73) > v75 || vabdd_f64(v67, v72) > (v72 * 0.8))
  {
    if (CI_LOG_DUALRED())
    {
      v77 = ci_logger_api();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }

    return 1;
  }

  if (v68)
  {
    return 1;
  }

  v78 = v181;
  v79 = v179;
  v80 = [a3 objectAtIndexedSubscript:3];
  v81 = [a3 objectAtIndexedSubscript:4];
  if ([v80 format] == 261)
  {
    [v80 format];
  }

  v82 = (v53 - v67) / v79 * ((v53 - v67) / v79) + (v51 - v65) / v78 * ((v51 - v65) / v78);
  if (sqrtf(v82) > log)
  {
    if (CI_LOG_DUALRED())
    {
      v83 = ci_logger_api();
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }

    return 1;
  }

  src.data = v178;
  src.height = v179;
  src.width = v181;
  src.rowBytes = v177;
  v86 = malloc_type_calloc(0x400uLL, 8uLL, 0x100004000313F17uLL);
  histogram[0] = v86;
  histogram[1] = v86 + 256;
  histogram[2] = v86 + 512;
  histogram[3] = v86 + 768;
  v87 = vImageHistogramCalculation_ARGB8888(&src, histogram, 0);
  v84 = v87 == 0;
  if (v87)
  {
    free(v86);
    return v84;
  }

  v191 = v80;
  v182 = v81;
  v89 = histogram[0];
  v88 = histogram[1];
  v193 = histogram[3];
  loga = histogram[2];
  v196 = (v168 * findPercentileNonZero(histogram[2], v170, 0xFFuLL, 0x100uLL));
  v90 = (v175 * findPercentileNonZero(v88, v169, 0xFFuLL, 0x100uLL));
  v188 = v89;
  v91 = v168 * findPercentileNonZero(v89, v170, 0xFFuLL, 0x100uLL);
  PercentileNonZero = findPercentileNonZero(v193, v169, 0xFFuLL, 0x100uLL);
  [v10 X];
  v94 = v196;
  if (v93 * 255.0 > v196)
  {
    [v10 X];
    v94 = v95 * 255.0;
  }

  v96 = v175 * PercentileNonZero;
  v97 = v91;
  [v10 Y];
  v99 = v90;
  if (v98 * 255.0 > v90)
  {
    [v10 Y];
    v99 = v100 * 255.0;
  }

  v180 = v99;
  v101 = v96;
  [v10 Z];
  v103 = v102 * 255.0;
  v104 = v97;
  if (v103 > v97)
  {
    [v10 Z];
    v104 = v105 * 255.0;
  }

  v197 = v94;
  v194 = v104;
  [v10 W];
  v107 = v101;
  if (v106 * 255.0 > v101)
  {
    [v10 W];
    v107 = v108 * 255.0;
  }

  v176 = v107;
  v109 = findPercentileNonZero(loga, 0.25, 0xFFuLL, 0x100uLL);
  v110 = findPercentileNonZero(v188, 0.25, 0xFFuLL, 0x100uLL);
  v189 = v197 - v109;
  v111 = v194 - v110;
  if ((v197 - v109) >= (v194 - v110))
  {
    v112 = (v194 - v110);
  }

  else
  {
    v112 = (v197 - v109);
  }

  v113 = (v171 * 255.0);
  if (v112 < v113)
  {
    if (CI_LOG_DUALRED())
    {
      logc = ci_logger_api();
      if (os_log_type_enabled(logc, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }
  }

  free(v86);
  v114 = v178;
  v115 = v178[(v51 * 4.0 + v53 * v177 + 2.0)];
  v116 = v65 * 4.0 + v67 * v177 + 0.0;
  v117 = v178[v116];
  v118 = v115;
  v119 = vcvts_n_f32_u32(v197, 1uLL);
  v120 = v117;
  v121 = vcvts_n_f32_u32(v194, 1uLL);
  if (v119 >= v115 || v121 >= v120)
  {
    v122 = CI_LOG_DUALRED();
    v114 = v178;
    if (v122)
    {
      logb = ci_logger_api();
      v123 = os_log_type_enabled(logb, OS_LOG_TYPE_ERROR);
      v114 = v178;
      if (v123)
      {
        *buf = 4.8756e-34;
        v201 = "+[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:]";
        v202 = 1024;
        v203 = v115;
        v204 = 1024;
        v205 = v197;
        v206 = 1024;
        v207 = v117;
        v208 = 1024;
        v209 = v194;
        _os_log_error_impl(&dword_19CC36000, logb, OS_LOG_TYPE_ERROR, "%{public}s [abort] Center pixel failed: L = %hhu < %hhu | R = %hhu < %hhu", buf, 0x24u);
        v114 = v178;
      }
    }
  }

  v125 = v121 >= v120 || v113 > v111;
  if (v78 >= v79)
  {
    v126 = v79;
  }

  else
  {
    v126 = v78;
  }

  v127 = (v172 * v126);
  *buf = 0.0;
  v198 = 0.0;
  v128 = 1;
  if (v113 > v189)
  {
    v131 = v173;
    v130 = v174;
  }

  else
  {
    v129 = v119 < v118;
    v131 = v173;
    v130 = v174;
    if (v129)
    {
      v212.x = v51;
      v212.y = v53;
      computeDensity(v114, 2u, v78, v79, v177, v197, v212, v127, buf);
      if (CI_LOG_DUALRED())
      {
        v132 = ci_logger_api();
        if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
        {
          +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
        }
      }

      if (*buf >= v173)
      {
        v128 = 0;
      }

      else if (CI_LOG_DUALRED())
      {
        v133 = ci_logger_api();
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
        }
      }

      v114 = v178;
    }
  }

  if (v125)
  {
    v134 = 1;
    v135 = v191;
  }

  else
  {
    v213.x = v65;
    v213.y = v67;
    computeDensity(v114, 0, v78, v79, v177, v194, v213, v127, &v198);
    if (CI_LOG_DUALRED())
    {
      v136 = ci_logger_api();
      if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }

    v135 = v191;
    if (v198 >= v131)
    {
      v134 = 0;
    }

    else
    {
      if (CI_LOG_DUALRED())
      {
        v137 = ci_logger_api();
        if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
        {
          +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
        }
      }

      v134 = 1;
    }
  }

  if (*buf > v130)
  {
    if (CI_LOG_DUALRED())
    {
      v138 = ci_logger_api();
      if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }

    v128 = 1;
  }

  *&v116 = v198;
  if (v198 > v130)
  {
    if (CI_LOG_DUALRED())
    {
      v139 = ci_logger_api();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
      {
        +[PercentileClipProcessor_RGBA8_CPU processWithInputs:arguments:output:error:];
      }
    }

    v134 = 1;
  }

  if ((v128 & v134 & 1) == 0)
  {
    v140 = -1.0;
    v141 = -1.0;
    if ((v128 & 1) == 0)
    {
      sampleUnderCentroid(v135, v51, v53, 0.14);
      v141 = *&v116;
    }

    if ((v134 & 1) == 0)
    {
      sampleUnderCentroid(v182, v65, v67, 0.14);
      v140 = *&v116;
    }

    [objc_msgSend(a4 objectForKeyedSubscript:{@"minInterDispersion", v116), "floatValue"}];
    v143 = v142;
    if (v141 < v142)
    {
      if (CI_LOG_DUALRED())
      {
        v144 = ci_logger_api();
        if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
        {
          [PercentileClipProcessor_RGBA8_CPU processWithInputs:v141 arguments:? output:? error:?];
        }
      }

      v128 = 1;
    }

    if (v140 < v143)
    {
      if (CI_LOG_DUALRED())
      {
        v145 = ci_logger_api();
        if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
        {
          [PercentileClipProcessor_RGBA8_CPU processWithInputs:v140 arguments:? output:? error:?];
        }
      }

      v134 = 1;
    }

    [objc_msgSend(a4 objectForKeyedSubscript:{@"maxInterDispersion", "floatValue"}];
    v147 = vabds_f32(v141, v140);
    v148 = (v141 + v140);
    if (v148 < 0.000001)
    {
      v148 = 0.000001;
    }

    v149 = v147 / v148;
    if (v146 >= v149)
    {
      v150 = 1;
    }

    else
    {
      v150 = v128;
    }

    if ((v134 & 1) == 0 && (v150 & 1) == 0)
    {
      v151 = CI_LOG_DUALRED();
      if (v140 >= v141)
      {
        if (v151)
        {
          v163 = ci_logger_api();
          if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
          {
            [PercentileClipProcessor_RGBA8_CPU processWithInputs:v149 arguments:? output:? error:?];
          }
        }
      }

      else if (v151)
      {
        v152 = ci_logger_api();
        if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
        {
          [PercentileClipProcessor_RGBA8_CPU processWithInputs:v149 arguments:? output:? error:?];
        }
      }

      return v84;
    }

    if ((v134 | v128))
    {
      return v84;
    }

    [objc_msgSend(a4 objectForKeyedSubscript:{@"areaMaxRatio", "floatValue"}];
    v154 = v153;
    if (v153 > 0.0 || ([v167 Y], radialFillRGBA8(v35, a5, 1, v180, v155, v51, v53) <= 8))
    {
      [v167 Y];
      radialFillRGBA8_circular(v35, a5, 1, 0, v156, 0.2, v51, v53);
    }

    clipRepair(v35, a5, 2, v197);
    calculateMeans(v135, a5, 2, v51, v53);
    if (v157 < v166)
    {
      v164 = v157;
      if (CI_LOG_DUALRED())
      {
        v165 = ci_logger_api();
        if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
        {
          [PercentileClipProcessor_RGBA8_CPU processWithInputs:v164 arguments:? output:? error:?];
        }
      }

      goto LABEL_132;
    }

    if (v154 > 0.0 || ([v167 W], radialFillRGBA8(v35, a5, 3, v176, v158, v65, v67) <= 8))
    {
      [v167 W];
      radialFillRGBA8_circular(v35, a5, 3, 0, v159, 0.2, v65, v67);
    }

    clipRepair(v35, a5, 0, v194);
    calculateMeans(v182, a5, 0, v65, v67);
    if (v160 < v166)
    {
      v161 = v160;
      if (CI_LOG_DUALRED())
      {
        v162 = ci_logger_api();
        if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          [PercentileClipProcessor_RGBA8_CPU processWithInputs:v161 arguments:? output:? error:?];
        }
      }

LABEL_132:
      clearOutput(a5);
    }
  }

  return v84;
}

+ (void)processWithInputs:arguments:output:error:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)processWithInputs:arguments:output:error:.cold.5()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.6()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.7()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.8()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.9()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.10()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_0(v0);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

+ (void)processWithInputs:(float)a1 arguments:output:error:.cold.11(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)processWithInputs:(float)a1 arguments:output:error:.cold.12(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)processWithInputs:(float)a1 arguments:output:error:.cold.13(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)processWithInputs:(float)a1 arguments:output:error:.cold.14(float a1)
{
  OUTLINED_FUNCTION_10(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)processWithInputs:(float)a1 arguments:output:error:.cold.15(float a1)
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)processWithInputs:(float)a1 arguments:output:error:.cold.16(float a1)
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840], a1);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

+ (void)processWithInputs:arguments:output:error:.cold.17()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

+ (void)processWithInputs:arguments:output:error:.cold.18()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end