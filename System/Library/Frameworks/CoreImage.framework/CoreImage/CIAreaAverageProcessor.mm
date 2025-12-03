@interface CIAreaAverageProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
@end

@implementation CIAreaAverageProcessor

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v5 = [arguments objectForKeyedSubscript:{@"region", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  [v5 CGRectValue];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v8 = [inputs objectAtIndexedSubscript:{0, arguments, output, error}];
  [objc_msgSend(arguments objectForKeyedSubscript:{@"region", "CGRectValue"}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  metalCommandBuffer = [output metalCommandBuffer];
  if (metalCommandBuffer)
  {
    v18 = metalCommandBuffer;
    v19 = [objc_alloc(MEMORY[0x1E6974628]) initWithDevice:{objc_msgSend(metalCommandBuffer, "device")}];
    if (v19)
    {
      v20 = v19;
      [v8 region];
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      if (CGRectIsNull(v44))
      {
        LODWORD(v25) = 0;
        v26 = 0x7FFFFFFF;
        v27 = 0x7FFFFFFF;
      }

      else
      {
        v45.origin.x = x;
        v45.origin.y = y;
        v45.size.width = width;
        v45.size.height = height;
        if (CGRectIsInfinite(v45))
        {
          v26 = -2147483647;
          LODWORD(v25) = -1;
          v27 = -2147483647;
        }

        else
        {
          v46.origin.x = x;
          v46.origin.y = y;
          v46.size.width = width;
          v46.size.height = height;
          v47 = CGRectInset(v46, 0.000001, 0.000001);
          v48 = CGRectIntegral(v47);
          v27 = v48.origin.x;
          v26 = v48.origin.y;
          v25 = v48.size.height;
        }
      }

      v49.origin.x = v10;
      v49.origin.y = v12;
      v49.size.width = v14;
      v49.size.height = v16;
      if (CGRectIsNull(v49))
      {
        v28 = 0;
        v29 = 0;
        v30 = 0x7FFFFFFF;
        v31 = 0x7FFFFFFF;
      }

      else
      {
        v50.origin.x = v10;
        v50.origin.y = v12;
        v50.size.width = v14;
        v50.size.height = v16;
        if (CGRectIsInfinite(v50))
        {
          v30 = -2147483647;
          v28 = 0xFFFFFFFFLL;
          v29 = 0xFFFFFFFFLL;
          v31 = -2147483647;
        }

        else
        {
          v51.origin.x = v10;
          v51.origin.y = v12;
          v51.size.width = v14;
          v51.size.height = v16;
          v52 = CGRectInset(v51, 0.000001, 0.000001);
          v53 = CGRectIntegral(v52);
          v31 = v53.origin.x;
          v30 = v53.origin.y;
          v29 = v53.size.width;
          v28 = v53.size.height;
        }
      }

      v40 = v27 - v31;
      v41 = v28 - v25 - v26 + v30;
      *&v42 = 0;
      *(&v42 + 1) = v29;
      v43.i64[0] = v28;
      v43.i64[1] = 1;
      [v20 setClipRectSource:&v40];
      [v20 setOptions:2];
      [v20 setEdgeMode:1];
      [output region];
      v32 = v54.origin.x;
      v33 = v54.origin.y;
      v34 = v54.size.width;
      v35 = v54.size.height;
      if (CGRectIsNull(v54))
      {
        LODWORD(v36) = 0;
        v37 = 2147483646;
        v38 = 0x7FFFFFFF;
      }

      else
      {
        v55.origin.x = v32;
        v55.origin.y = v33;
        v55.size.width = v34;
        v55.size.height = v35;
        if (CGRectIsInfinite(v55))
        {
          LODWORD(v36) = -1;
          v37 = 0x80000000;
          v38 = -2147483647;
        }

        else
        {
          v56.origin.x = v32;
          v56.origin.y = v33;
          v56.size.width = v34;
          v56.size.height = v35;
          v57 = CGRectInset(v56, 0.000001, 0.000001);
          v58 = CGRectIntegral(v57);
          v38 = v58.origin.x;
          v36 = v58.size.height;
          v37 = v58.origin.y - 1;
        }
      }

      v40 = -v38;
      v41 = v36 + v37;
      v42 = xmmword_19CF22E40;
      v43 = vdupq_n_s64(1uLL);
      [v20 setClipRect:&v40];
      [v20 encodeToCommandBuffer:v18 sourceTexture:objc_msgSend(v8 destinationTexture:{"metalTexture"), objc_msgSend(output, "metalTexture")}];
    }
  }

  return 1;
}

@end