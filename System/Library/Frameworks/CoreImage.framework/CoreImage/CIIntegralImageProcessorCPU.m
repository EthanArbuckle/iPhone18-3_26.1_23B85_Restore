@interface CIIntegralImageProcessorCPU
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
@end

@implementation CIIntegralImageProcessorCPU

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v76 = *MEMORY[0x1E69E9840];
  v7 = [a3 objectAtIndex:{0, a4, a5, a6}];
  if ([v7 format] != 2312 && objc_msgSend(v7, "format") != 2056 && objc_msgSend(v7, "format") != 266 && objc_msgSend(v7, "format") != 264)
  {
    v63 = ci_logger_filter();
    v24 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      return v24;
    }

    [CIIntegralImageProcessorCPU processWithInputs:v7 arguments:? output:? error:?];
LABEL_51:
    LOBYTE(v24) = 0;
    return v24;
  }

  if ([a5 format] != 2312)
  {
    v23 = ci_logger_filter();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      return v24;
    }

    [CIIntegralImageProcessorCPU processWithInputs:a5 arguments:? output:? error:?];
    goto LABEL_51;
  }

  v8 = [a5 bytesPerRow];
  [a5 region];
  v10 = v9;
  __src = malloc_type_calloc(v8, vcvtps_u32_f32(v10), 0x100004052888210uLL);
  if (!__src)
  {
    v25 = ci_logger_filter();
    v24 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      return v24;
    }

    [CIIntegralImageProcessorCPU processWithInputs:a5 arguments:? output:? error:?];
    goto LABEL_51;
  }

  [v7 region];
  v12 = v11;
  [a5 region];
  if (v12 != v13)
  {
    +[CIIntegralImageProcessorCPU processWithInputs:arguments:output:error:];
  }

  [v7 region];
  v15 = v14;
  [a5 region];
  if (v15 != v16)
  {
    +[CIIntegralImageProcessorCPU processWithInputs:arguments:output:error:];
  }

  [v7 region];
  v18 = v17;
  v19 = vcvtps_u32_f32(v18);
  [v7 region];
  v21 = v20;
  v65 = a5;
  v66 = v8;
  if ([v7 format] == 2312)
  {
    v22 = 16;
  }

  else
  {
    v26 = [v7 format];
    v22 = 4;
    if (v26 == 2056)
    {
      v22 = 8;
    }
  }

  v71 = v22;
  v27 = [v7 format];
  if (v19)
  {
    v28 = 0;
    v68 = 0;
    v29 = v21;
    v30 = vcvtps_u32_f32(v29);
    v69 = 2 * (v27 != 266);
    v70 = 2 * (v27 == 266);
    do
    {
      if (v30)
      {
        v31 = 0;
        v32 = &__src[v28 * v66];
        v33 = ~v28 + v19;
        v34 = v68 - 1;
        v72 = &__src[v66 * v34];
        v35 = 1;
        do
        {
          v36 = [v7 baseAddress];
          v37 = [v7 bytesPerRow];
          if (v33 >= v19)
          {
            v38 = 0;
          }

          else
          {
            v38 = (v36 + v37 * v33 + v31 * v71);
          }

          v75 = 0uLL;
          if ([v7 format] == 2056)
          {
            *&src.height = xmmword_19CF23040;
            src.rowBytes = 8;
            dest.data = &v75;
            *&dest.height = xmmword_19CF23040;
            dest.rowBytes = 16;
            src.data = v38;
            vImageConvert_Planar16FtoPlanarF(&src, &dest, 0x10u);
          }

          else if ([v7 format] == 266 || objc_msgSend(v7, "format") == 264)
          {
            LOBYTE(v39) = v38[v70];
            *&v40 = v39 / 255.0;
            LODWORD(v75) = v40;
            LOBYTE(v40) = v38[1];
            *&v41 = v40 / 255.0;
            DWORD1(v75) = v41;
            LOBYTE(v41) = v38[v69];
            *&v42 = v41 / 255.0;
            DWORD2(v75) = v42;
            LOBYTE(v42) = v38[3];
            *(&v75 + 3) = v42 / 255.0;
          }

          else
          {
            if ([v7 format] != 2312)
            {
              +[CIIntegralImageProcessorCPU processWithInputs:arguments:output:error:];
            }

            v75 = *v38;
          }

          v43 = 16 * v31;
          v44 = &v32[16 * v31];
          *v44 = *&v75 + *v44;
          v45 = v44[2];
          v44[1] = *(&v75 + 1) + v44[1];
          v44[2] = *(&v75 + 2) + v45;
          v44[3] = *(&v75 + 3) + v44[3];
          v46 = v35 - 2;
          if (v46 >= v30)
          {
            v47 = 0;
          }

          else
          {
            v47 = &v32[16 * v46];
          }

          addPixel<float>(v44, v47);
          if (v34 >= v19)
          {
            v48 = 0;
          }

          else
          {
            v48 = &v72[v43];
          }

          addPixel<float>(v44, v48);
          if (v34 < v19 && v46 < v30)
          {
            v49 = &v72[16 * v46];
            if (v49)
            {
              v50 = v44[1];
              *v44 = *v44 - *v49;
              v44[1] = v50 - v49[1];
              v51 = v44[3];
              v44[2] = v44[2] - v49[2];
              v44[3] = v51 - v49[3];
            }
          }

          v31 = v35++;
        }

        while (v31 < v30);
      }

      v28 = ++v68;
    }

    while (v68 < v19);
  }

  [v65 region];
  v53 = v52;
  [v65 region];
  v55 = v54;
  if ([v65 format] != 2312)
  {
    +[CIIntegralImageProcessorCPU processWithInputs:arguments:output:error:];
  }

  v56 = v53;
  v57 = vcvtps_u32_f32(v56);
  v58 = [v65 baseAddress];
  if (v57)
  {
    v59 = v55;
    v60 = 16 * vcvtps_u32_f32(v59);
    v61 = (v58 + v66 * (v57 - 1));
    v62 = __src;
    do
    {
      memcpy(v61, v62, v60);
      v62 += v66;
      v61 -= v66;
      --v57;
    }

    while (v57);
  }

  free(__src);
  LOBYTE(v24) = 1;
  return v24;
}

+ (void)processWithInputs:(void *)a1 arguments:output:error:.cold.1(void *a1)
{
  [a1 format];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

+ (void)processWithInputs:(void *)a1 arguments:output:error:.cold.2(void *a1)
{
  [a1 format];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

+ (void)processWithInputs:(void *)a1 arguments:output:error:.cold.7(void *a1)
{
  [a1 region];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end