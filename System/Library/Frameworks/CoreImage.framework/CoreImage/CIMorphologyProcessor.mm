@interface CIMorphologyProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)applyBoxToImage:(id)image width:(int)width height:(int)height doMin:(BOOL)min;
+ (id)logDescription:(id)description;
@end

@implementation CIMorphologyProcessor

+ (id)logDescription:(id)description
{
  if ([objc_msgSend(description objectForKeyedSubscript:{@"doMin", "BOOLValue"}])
  {
    v4 = "Min";
  }

  else
  {
    v4 = "Max";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"CIMorphologyProcessor-%s%@x%@", v4, objc_msgSend(description, "objectForKeyedSubscript:", @"w", objc_msgSend(description, "objectForKeyedSubscript:", @"h"];
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = [arguments objectForKeyedSubscript:@"w"];
  v11 = [arguments objectForKeyedSubscript:@"h"];
  v12 = ([v10 intValue] - 1) / -2;
  intValue = [v11 intValue];
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;

  return CGRectInset(*&v14, v12, ((intValue - 1) / -2));
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v9 = [arguments objectForKeyedSubscript:@"w"];
  v10 = [arguments objectForKeyedSubscript:@"h"];
  v11 = [arguments objectForKeyedSubscript:@"doMin"];
  metalCommandBuffer = [inputs objectAtIndexedSubscript:0];
  if (metalCommandBuffer)
  {
    v13 = metalCommandBuffer;
    format = [metalCommandBuffer format];
    if (format == [output format])
    {
      intValue = [v9 intValue];
      intValue2 = [v10 intValue];
      bOOLValue = [v11 BOOLValue];
      metalCommandBuffer = [output metalCommandBuffer];
      if (metalCommandBuffer)
      {
        v18 = metalCommandBuffer;
        [v13 region];
        x = v37.origin.x;
        y = v37.origin.y;
        width = v37.size.width;
        height = v37.size.height;
        if (CGRectIsNull(v37))
        {
          LODWORD(v34) = 0;
          v35 = 0x7FFFFFFF;
          v23 = 0x7FFFFFFF;
        }

        else
        {
          v38.origin.x = x;
          v38.origin.y = y;
          v38.size.width = width;
          v38.size.height = height;
          if (CGRectIsInfinite(v38))
          {
            v35 = -2147483647;
            LODWORD(v34) = -1;
            v23 = -2147483647;
          }

          else
          {
            v39.origin.x = x;
            v39.origin.y = y;
            v39.size.width = width;
            v39.size.height = height;
            v40 = CGRectInset(v39, 0.000001, 0.000001);
            v41 = CGRectIntegral(v40);
            v23 = v41.origin.x;
            v35 = v41.origin.y;
            v34 = v41.size.height;
          }
        }

        [output region];
        v24 = v42.origin.x;
        v25 = v42.origin.y;
        v26 = v42.size.width;
        v27 = v42.size.height;
        if (CGRectIsNull(v42))
        {
          LODWORD(v28) = 0;
          v29 = 0x7FFFFFFF;
          v30 = 0x7FFFFFFF;
        }

        else
        {
          v43.origin.x = v24;
          v43.origin.y = v25;
          v43.size.width = v26;
          v43.size.height = v27;
          if (CGRectIsInfinite(v43))
          {
            v29 = -2147483647;
            LODWORD(v28) = -1;
            v30 = -2147483647;
          }

          else
          {
            v44.origin.x = v24;
            v44.origin.y = v25;
            v44.size.width = v26;
            v44.size.height = v27;
            v45 = CGRectInset(v44, 0.000001, 0.000001);
            v46 = CGRectIntegral(v45);
            v30 = v46.origin.x;
            v29 = v46.origin.y;
            v28 = v46.size.height;
          }
        }

        v31 = 0x1E6974570;
        if (!bOOLValue)
        {
          v31 = 0x1E6974568;
        }

        metalCommandBuffer = [objc_alloc(*v31) initWithDevice:objc_msgSend(v18 kernelWidth:"device") kernelHeight:{intValue, intValue2}];
        if (metalCommandBuffer)
        {
          v32 = metalCommandBuffer;
          v36[0] = v30 - v23;
          v36[1] = v35 + v34 - (v28 + v29);
          v36[2] = 0;
          [metalCommandBuffer setOffset:v36];
          [v32 encodeToCommandBuffer:v18 sourceTexture:objc_msgSend(v13 destinationTexture:{"metalTexture"), objc_msgSend(output, "metalTexture")}];

          LOBYTE(metalCommandBuffer) = 1;
        }
      }
    }

    else
    {
      LOBYTE(metalCommandBuffer) = 0;
    }
  }

  return metalCommandBuffer;
}

+ (id)applyBoxToImage:(id)image width:(int)width height:(int)height doMin:(BOOL)min
{
  minCopy = min;
  v7 = *&height;
  v8 = *&width;
  imageCopy = image;
  v20[1] = *MEMORY[0x1E69E9840];
  if (width != 1 || height != 1)
  {
    if (min)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    [image extent];
    v22 = CGRectInset(v21, (v11 * v8 / 2), (v11 * v7 / 2));
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v20[0] = imageCopy;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v19[0] = [MEMORY[0x1E696AD98] numberWithInt:{v8, @"w"}];
    v18[1] = @"h";
    v19[1] = [MEMORY[0x1E696AD98] numberWithInt:v7];
    v18[2] = @"doMin";
    v19[2] = [MEMORY[0x1E696AD98] numberWithBool:minCopy];
    return [self applyWithExtent:v16 inputs:objc_msgSend(MEMORY[0x1E695DF20] arguments:"dictionaryWithObjects:forKeys:count:" error:{v19, v18, 3), 0, x, y, width, height}];
  }

  return imageCopy;
}

@end