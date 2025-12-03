@interface CIMedianProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)applyMedianToImage:(id)image width:(int)width;
@end

@implementation CIMedianProcessor

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = ([objc_msgSend(arguments objectForKeyedSubscript:{@"w", "intValue"}] / -2);
  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;

  return CGRectInset(*&v10, v9, v9);
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v8 = [arguments objectForKeyedSubscript:@"w"];
  v9 = [inputs objectAtIndexedSubscript:0];
  intValue = [v8 intValue];
  metalCommandBuffer = [output metalCommandBuffer];
  if (metalCommandBuffer)
  {
    v12 = metalCommandBuffer;
    metalCommandBuffer = [objc_alloc(MEMORY[0x1E6974600]) initWithDevice:objc_msgSend(metalCommandBuffer kernelDiameter:{"device"), intValue}];
    if (metalCommandBuffer)
    {
      v13 = metalCommandBuffer;
      [metalCommandBuffer setOptions:2];
      [v13 setEdgeMode:1];
      [v9 region];
      x = v30.origin.x;
      y = v30.origin.y;
      width = v30.size.width;
      height = v30.size.height;
      if (CGRectIsNull(v30))
      {
        LODWORD(v18) = 0;
        v19 = 0x7FFFFFFF;
        v20 = 0x7FFFFFFF;
      }

      else
      {
        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        if (CGRectIsInfinite(v31))
        {
          LODWORD(v18) = -1;
          v19 = -2147483647;
          v20 = -2147483647;
        }

        else
        {
          v32.origin.x = x;
          v32.origin.y = y;
          v32.size.width = width;
          v32.size.height = height;
          v33 = CGRectInset(v32, 0.000001, 0.000001);
          v34 = CGRectIntegral(v33);
          v19 = v34.origin.x;
          v20 = v34.origin.y;
          v18 = v34.size.height;
        }
      }

      [output region];
      v21 = v35.origin.x;
      v22 = v35.origin.y;
      v23 = v35.size.width;
      v24 = v35.size.height;
      if (CGRectIsNull(v35))
      {
        LODWORD(v25) = 0;
        v26 = 0x7FFFFFFF;
        v27 = 0x7FFFFFFF;
      }

      else
      {
        v36.origin.x = v21;
        v36.origin.y = v22;
        v36.size.width = v23;
        v36.size.height = v24;
        if (CGRectIsInfinite(v36))
        {
          LODWORD(v25) = -1;
          v26 = -2147483647;
          v27 = -2147483647;
        }

        else
        {
          v37.origin.x = v21;
          v37.origin.y = v22;
          v37.size.width = v23;
          v37.size.height = v24;
          v38 = CGRectInset(v37, 0.000001, 0.000001);
          v39 = CGRectIntegral(v38);
          v26 = v39.origin.x;
          v27 = v39.origin.y;
          v25 = v39.size.height;
        }
      }

      v29[0] = v26 - v19;
      v29[1] = v18 + v20 - (v27 + v25);
      v29[2] = 0;
      [v13 setOffset:v29];
      [v13 encodeToCommandBuffer:v12 sourceTexture:objc_msgSend(v9 destinationTexture:{"metalTexture"), objc_msgSend(output, "metalTexture")}];

      LOBYTE(metalCommandBuffer) = 1;
    }
  }

  return metalCommandBuffer;
}

+ (id)applyMedianToImage:(id)image width:(int)width
{
  v4 = *&width;
  v22[1] = *MEMORY[0x1E69E9840];
  if ((width & 1) == 0)
  {
    v5 = ci_logger_api();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CIMedianProcessor applyMedianToImage:v4 width:v5];
    }

    return 0;
  }

  [MEMORY[0x1E6974600] minKernelDiameter];
  if (v4 <= 2)
  {
    v8 = ci_logger_api();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CIMedianProcessor applyMedianToImage:width:];
    }

    return 0;
  }

  if ([MEMORY[0x1E6974600] maxKernelDiameter] < v4)
  {
    v9 = ci_logger_api();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CIMedianProcessor applyMedianToImage:width:];
    }

    return 0;
  }

  [image extent];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v22[0] = image;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{v4, @"w"}];
  return [self applyWithExtent:v19 inputs:objc_msgSend(MEMORY[0x1E695DF20] arguments:"dictionaryWithObjects:forKeys:count:" error:{&v21, &v20, 1), 0, v12, v14, v16, v18}];
}

+ (void)applyMedianToImage:(int)a1 width:(NSObject *)a2 .cold.3(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Input filter kernel size %d is not an odd integer.\n", v2, 8u);
}

@end