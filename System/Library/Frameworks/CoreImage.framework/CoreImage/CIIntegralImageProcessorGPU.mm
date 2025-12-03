@interface CIIntegralImageProcessorGPU
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
@end

@implementation CIIntegralImageProcessorGPU

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  metalCommandBuffer = [output metalCommandBuffer];
  if (!metalCommandBuffer)
  {
    v19 = ci_logger_api();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v20)
    {
      return v20;
    }

    +[CIIntegralImageProcessorGPU processWithInputs:arguments:output:error:];
LABEL_9:
    LOBYTE(v20) = 0;
    return v20;
  }

  v9 = metalCommandBuffer;
  v10 = [objc_alloc(MEMORY[0x1E69745E8]) initWithDevice:{objc_msgSend(metalCommandBuffer, "device")}];
  if (!v10)
  {
    v21 = ci_logger_api();
    v20 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (!v20)
    {
      return v20;
    }

    +[CIIntegralImageProcessorGPU processWithInputs:arguments:output:error:];
    goto LABEL_9;
  }

  v11 = v10;
  [objc_msgSend(inputs objectAtIndexedSubscript:{0), "region"}];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  if (CGRectIsNull(v31))
  {
    LODWORD(v16) = 0;
    v17 = 0x7FFFFFFF;
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    if (CGRectIsInfinite(v32))
    {
      v17 = -2147483647;
      LODWORD(v16) = -1;
      v18 = -2147483647;
    }

    else
    {
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v34 = CGRectInset(v33, 0.000001, 0.000001);
      v35 = CGRectIntegral(v34);
      v18 = v35.origin.x;
      v17 = v35.origin.y;
      v16 = v35.size.height;
    }
  }

  [output region];
  v22 = v36.origin.x;
  v23 = v36.origin.y;
  v24 = v36.size.width;
  v25 = v36.size.height;
  if (CGRectIsNull(v36))
  {
    LODWORD(v26) = 0;
    v27 = 0x7FFFFFFF;
    v28 = 0x7FFFFFFF;
  }

  else
  {
    v37.origin.x = v22;
    v37.origin.y = v23;
    v37.size.width = v24;
    v37.size.height = v25;
    if (CGRectIsInfinite(v37))
    {
      v27 = -2147483647;
      LODWORD(v26) = -1;
      v28 = -2147483647;
    }

    else
    {
      v38.origin.x = v22;
      v38.origin.y = v23;
      v38.size.width = v24;
      v38.size.height = v25;
      v39 = CGRectInset(v38, 0.000001, 0.000001);
      v40 = CGRectIntegral(v39);
      v28 = v40.origin.x;
      v27 = v40.origin.y;
      v26 = v40.size.height;
    }
  }

  v30[0] = v28 - v18;
  v30[1] = v17 + v16 - (v26 + v27);
  v30[2] = 0;
  [v11 setOffset:v30];
  [v11 encodeToCommandBuffer:v9 sourceTexture:objc_msgSend(objc_msgSend(inputs destinationTexture:{"objectAtIndexedSubscript:", 0), "metalTexture"), objc_msgSend(output, "metalTexture")}];

  LOBYTE(v20) = 1;
  return v20;
}

+ (void)processWithInputs:arguments:output:error:.cold.1()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x1E69E9840]);
  v2 = "+[CIIntegralImageProcessorGPU processWithInputs:arguments:output:error:]";
  v3 = 2113;
  v4 = @"MPSImageIntegral";
  _os_log_error_impl(&dword_19CC36000, v0, OS_LOG_TYPE_ERROR, "%{public}s %{private}@ kernel could not be instantiated", v1, 0x16u);
}

+ (void)processWithInputs:arguments:output:error:.cold.2()
{
  OUTLINED_FUNCTION_1_6(*MEMORY[0x1E69E9840]);
  v2 = "+[CIIntegralImageProcessorGPU processWithInputs:arguments:output:error:]";
  v3 = 2113;
  v4 = @"Metal";
  _os_log_error_impl(&dword_19CC36000, v0, OS_LOG_TYPE_ERROR, "%{public}s %{private}@ command buffer is not available", v1, 0x16u);
}

@end