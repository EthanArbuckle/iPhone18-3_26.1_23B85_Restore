@interface CIMorphologyProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (id)applyBoxToImage:(id)a3 width:(int)a4 height:(int)a5 doMin:(BOOL)a6;
+ (id)logDescription:(id)a3;
@end

@implementation CIMorphologyProcessor

+ (id)logDescription:(id)a3
{
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"doMin", "BOOLValue"}])
  {
    v4 = "Min";
  }

  else
  {
    v4 = "Max";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"CIMorphologyProcessor-%s%@x%@", v4, objc_msgSend(a3, "objectForKeyedSubscript:", @"w", objc_msgSend(a3, "objectForKeyedSubscript:", @"h"];
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = [a4 objectForKeyedSubscript:@"w"];
  v11 = [a4 objectForKeyedSubscript:@"h"];
  v12 = ([v10 intValue] - 1) / -2;
  v13 = [v11 intValue];
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;

  return CGRectInset(*&v14, v12, ((v13 - 1) / -2));
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v9 = [a4 objectForKeyedSubscript:@"w"];
  v10 = [a4 objectForKeyedSubscript:@"h"];
  v11 = [a4 objectForKeyedSubscript:@"doMin"];
  v12 = [a3 objectAtIndexedSubscript:0];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 format];
    if (v14 == [a5 format])
    {
      v15 = [v9 intValue];
      v16 = [v10 intValue];
      v17 = [v11 BOOLValue];
      v12 = [a5 metalCommandBuffer];
      if (v12)
      {
        v18 = v12;
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

        [a5 region];
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
        if (!v17)
        {
          v31 = 0x1E6974568;
        }

        v12 = [objc_alloc(*v31) initWithDevice:objc_msgSend(v18 kernelWidth:"device") kernelHeight:{v15, v16}];
        if (v12)
        {
          v32 = v12;
          v36[0] = v30 - v23;
          v36[1] = v35 + v34 - (v28 + v29);
          v36[2] = 0;
          [v12 setOffset:v36];
          [v32 encodeToCommandBuffer:v18 sourceTexture:objc_msgSend(v13 destinationTexture:{"metalTexture"), objc_msgSend(a5, "metalTexture")}];

          LOBYTE(v12) = 1;
        }
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

+ (id)applyBoxToImage:(id)a3 width:(int)a4 height:(int)a5 doMin:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  v8 = *&a4;
  v9 = a3;
  v20[1] = *MEMORY[0x1E69E9840];
  if (a4 != 1 || a5 != 1)
  {
    if (a6)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    [a3 extent];
    v22 = CGRectInset(v21, (v11 * v8 / 2), (v11 * v7 / 2));
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v20[0] = v9;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v19[0] = [MEMORY[0x1E696AD98] numberWithInt:{v8, @"w"}];
    v18[1] = @"h";
    v19[1] = [MEMORY[0x1E696AD98] numberWithInt:v7];
    v18[2] = @"doMin";
    v19[2] = [MEMORY[0x1E696AD98] numberWithBool:v6];
    return [a1 applyWithExtent:v16 inputs:objc_msgSend(MEMORY[0x1E695DF20] arguments:"dictionaryWithObjects:forKeys:count:" error:{v19, v18, 3), 0, x, y, width, height}];
  }

  return v9;
}

@end