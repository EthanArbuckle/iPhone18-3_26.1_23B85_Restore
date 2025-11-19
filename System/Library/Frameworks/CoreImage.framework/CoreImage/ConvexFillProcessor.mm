@interface ConvexFillProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)result;
+ (int)formatForInputAtIndex:(int)a3;
@end

@implementation ConvexFillProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = [a3 objectAtIndexedSubscript:{0, a4, a5, a6}];
  v10 = [a3 objectAtIndexedSubscript:1];
  [v9 format];
  [v10 format];
  [a5 format];
  [a5 region];
  v12 = v11;
  [a5 region];
  v14 = v13;
  clearOutput(a5);
  *&src.height = xmmword_19CF23040;
  src.rowBytes = 8;
  dest.data = v54;
  *&dest.height = xmmword_19CF23040;
  dest.rowBytes = 16;
  src.data = [v10 baseAddress];
  vImageConvert_Planar16FtoPlanarF(&src, &dest, 0x10u);
  v15 = roundf(v54[0]);
  v16 = roundf(v54[1]);
  [v9 region];
  v18 = (v15 - v17);
  [v9 region];
  v20 = (v16 - v19);
  [v9 region];
  v22 = (v21 - v20 + -1.0);
  if (v18 <= v22)
  {
    v23 = (v21 - v20 + -1.0);
  }

  else
  {
    v23 = v18;
  }

  v24 = CI_LOG_DUALRED();
  if (v23 <= 0)
  {
    if (v24)
    {
      v42 = ci_logger_api();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        +[ConvexFillProcessor processWithInputs:arguments:output:error:];
      }
    }
  }

  else
  {
    v25 = v14;
    if (v24)
    {
      v26 = ci_logger_api();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        +[ConvexFillProcessor processWithInputs:arguments:output:error:];
      }
    }

    v27 = [objc_msgSend(a4 objectForKey:{@"kThreshold", v12), "intValue"}];
    if ((v27 & ~(v27 >> 31)) >= 255)
    {
      v28 = 255;
    }

    else
    {
      v28 = v27 & ~(v27 >> 31);
    }

    v29 = [v9 baseAddress];
    v30 = [a5 baseAddress];
    v31 = [v9 bytesPerRow];
    v32 = [a5 bytesPerRow];
    v33 = v18;
    v34 = v22;
    v35 = v30;
    v36 = v25;
    v56.x = v18;
    v56.y = v22;
    v37 = convexFill(v29, v35, v25, v51, v31, v32, v28, v56);
    if (v37)
    {
      v38 = v37;
      v39 = [objc_msgSend(a4 objectForKey:{@"kAreaThresholdHi", "intValue"}];
      v40 = [objc_msgSend(a4 objectForKey:{@"kAreaThresholdLo", "intValue"}];
      if (v38 <= v39)
      {
        if (v38 >= v40)
        {
          v46 = [objc_msgSend(a4 objectForKey:{@"kSplatArea", "intValue"}];
          v47 = [v9 baseAddress];
          v48 = [a5 baseAddress];
          v49 = [v9 bytesPerRow];
          v50 = [a5 bytesPerRow];
          v57.x = v33;
          v57.y = v34;
          radialSplatR8(v47, v48, v36, v51, v49, v50, v46, v57);
          return 1;
        }

        if (CI_LOG_DUALRED())
        {
          v44 = ci_logger_api();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            +[ConvexFillProcessor processWithInputs:arguments:output:error:];
          }
        }
      }

      else if (CI_LOG_DUALRED())
      {
        v41 = ci_logger_api();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          +[ConvexFillProcessor processWithInputs:arguments:output:error:];
        }
      }
    }

    else if (CI_LOG_DUALRED())
    {
      v43 = ci_logger_api();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        +[ConvexFillProcessor processWithInputs:arguments:output:error:];
      }
    }

    clearOutput(a5);
  }

  return 1;
}

+ (int)formatForInputAtIndex:(int)a3
{
  if (a3 == 1)
  {
    v3 = &kCIFormatRGBAh;
    return *v3;
  }

  if (!a3)
  {
    v3 = &kCIFormatR8;
    return *v3;
  }

  return 0;
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)result
{
  if (a3 == 1)
  {
    result.origin.x = 0.0;
    result.origin.y = 0.0;
    result.size.width = 1.0;
    result.size.height = 1.0;
  }

  return result;
}

+ (void)processWithInputs:arguments:output:error:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

+ (void)processWithInputs:arguments:output:error:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)processWithInputs:arguments:output:error:.cold.3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)processWithInputs:arguments:output:error:.cold.5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

@end