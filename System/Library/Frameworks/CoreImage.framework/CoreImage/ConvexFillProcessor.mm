@interface ConvexFillProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)result;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation ConvexFillProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = [inputs objectAtIndexedSubscript:{0, arguments, output, error}];
  v10 = [inputs objectAtIndexedSubscript:1];
  [v9 format];
  [v10 format];
  [output format];
  [output region];
  v12 = v11;
  [output region];
  v14 = v13;
  clearOutput(output);
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

    v27 = [objc_msgSend(arguments objectForKey:{@"kThreshold", v12), "intValue"}];
    if ((v27 & ~(v27 >> 31)) >= 255)
    {
      v28 = 255;
    }

    else
    {
      v28 = v27 & ~(v27 >> 31);
    }

    baseAddress = [v9 baseAddress];
    baseAddress2 = [output baseAddress];
    bytesPerRow = [v9 bytesPerRow];
    bytesPerRow2 = [output bytesPerRow];
    v33 = v18;
    v34 = v22;
    v35 = baseAddress2;
    v36 = v25;
    v56.x = v18;
    v56.y = v22;
    v37 = convexFill(baseAddress, v35, v25, v51, bytesPerRow, bytesPerRow2, v28, v56);
    if (v37)
    {
      v38 = v37;
      v39 = [objc_msgSend(arguments objectForKey:{@"kAreaThresholdHi", "intValue"}];
      v40 = [objc_msgSend(arguments objectForKey:{@"kAreaThresholdLo", "intValue"}];
      if (v38 <= v39)
      {
        if (v38 >= v40)
        {
          v46 = [objc_msgSend(arguments objectForKey:{@"kSplatArea", "intValue"}];
          baseAddress3 = [v9 baseAddress];
          baseAddress4 = [output baseAddress];
          bytesPerRow3 = [v9 bytesPerRow];
          bytesPerRow4 = [output bytesPerRow];
          v57.x = v33;
          v57.y = v34;
          radialSplatR8(baseAddress3, baseAddress4, v36, v51, bytesPerRow3, bytesPerRow4, v46, v57);
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

    clearOutput(output);
  }

  return 1;
}

+ (int)formatForInputAtIndex:(int)index
{
  if (index == 1)
  {
    v3 = &kCIFormatRGBAh;
    return *v3;
  }

  if (!index)
  {
    v3 = &kCIFormatR8;
    return *v3;
  }

  return 0;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)result
{
  if (input == 1)
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