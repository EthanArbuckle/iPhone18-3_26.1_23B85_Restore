@interface CIConvolutionProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (id)applyBoxToImage:(id)a3 width:(int)a4 height:(int)a5;
+ (id)applyConToImage:(id)a3 width:(int)a4 height:(int)a5 bias:(double)a6 weights:(id)a7;
+ (id)logDescription:(id)a3;
@end

@implementation CIConvolutionProcessor

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

+ (id)logDescription:(id)a3
{
  if ([a3 objectForKeyedSubscript:@"weights"])
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"CIConvolutionProcessor-%@x%@", objc_msgSend(a3, "objectForKeyedSubscript:", @"w", objc_msgSend(a3, "objectForKeyedSubscript:", @"h"];
  }

  else
  {
    return @"CIConvolutionProcessor-Box";
  }
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v88 = *MEMORY[0x1E69E9840];
  v9 = [a4 objectForKeyedSubscript:@"w"];
  v10 = [a4 objectForKeyedSubscript:@"h"];
  v11 = [a4 objectForKeyedSubscript:@"bias"];
  v12 = [a4 objectForKeyedSubscript:@"weights"];
  v13 = [a3 objectAtIndexedSubscript:0];
  v14 = [v9 intValue];
  v15 = [v10 intValue];
  if (v12)
  {
    MEMORY[0x1EEE9AC00]();
    v17 = &v83[-v16];
    convert_weights(v12, &v83[-v16], v14, v15);
    if (CI_FLIP_IMAGE_PROCESSOR() && v15 >= 2)
    {
      v18 = 0;
      v19 = 0;
      v20 = v14 * (v15 - 1);
      do
      {
        v21 = v18;
        v22 = v20;
        v23 = v14;
        if (v14)
        {
          do
          {
            v24 = *&v17[4 * v21];
            *&v17[4 * v21] = *&v17[4 * v22];
            *&v17[4 * v22++] = v24;
            ++v21;
            --v23;
          }

          while (v23);
        }

        ++v19;
        v20 -= v14;
        v18 += v14;
      }

      while (v19 != v15 >> 1);
    }

    v25 = [a5 metalCommandBuffer];
    v26 = [v13 metalTexture];
    v27 = [a5 metalTexture];
    [v13 region];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [a5 region];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    if (v11)
    {
      [v11 doubleValue];
      v45 = v44;
    }

    else
    {
      v45 = 0.0;
    }

    v84 = v45;
    if (v25)
    {
      v70 = [objc_alloc(MEMORY[0x1E6974598]) initWithDevice:objc_msgSend(v25 kernelWidth:"device") kernelHeight:v14 weights:{v15, v17}];
      if (v70)
      {
        v71 = v70;
        [v70 setOptions:2];
        v90.origin.x = v29;
        v90.origin.y = v31;
        v90.size.width = v33;
        v90.size.height = v35;
        if (CGRectIsNull(v90))
        {
          LODWORD(height) = 0;
          y = 0x7FFFFFFF;
          x = 0x7FFFFFFF;
        }

        else
        {
          v91.origin.x = v29;
          v91.origin.y = v31;
          v91.size.width = v33;
          v91.size.height = v35;
          if (CGRectIsInfinite(v91))
          {
            y = -2147483647;
            LODWORD(height) = -1;
            x = -2147483647;
          }

          else
          {
            v93.origin.x = v29;
            v93.origin.y = v31;
            v93.size.width = v33;
            v93.size.height = v35;
            v94 = CGRectInset(v93, 0.000001, 0.000001);
            v95 = CGRectIntegral(v94);
            x = v95.origin.x;
            y = v95.origin.y;
            height = v95.size.height;
          }
        }

        v96.origin.x = v37;
        v96.origin.y = v39;
        v96.size.width = v41;
        v96.size.height = v43;
        if (CGRectIsNull(v96))
        {
          LODWORD(v75) = 0;
          v76 = 0x7FFFFFFF;
          v77 = 0x7FFFFFFF;
        }

        else
        {
          v97.origin.x = v37;
          v97.origin.y = v39;
          v97.size.width = v41;
          v97.size.height = v43;
          if (CGRectIsInfinite(v97))
          {
            v76 = -2147483647;
            LODWORD(v75) = -1;
            v77 = -2147483647;
          }

          else
          {
            v98.origin.x = v37;
            v98.origin.y = v39;
            v98.size.width = v41;
            v98.size.height = v43;
            v99 = CGRectInset(v98, 0.000001, 0.000001);
            v100 = CGRectIntegral(v99);
            v77 = v100.origin.x;
            v76 = v100.origin.y;
            v75 = v100.size.height;
          }
        }

        v85 = v77 - x;
        v86 = y + height - (v75 + v76);
        v87 = 0;
        [v71 setOffset:&v85];
        *&v78 = v84;
        [v71 setBias:v78];
        [v71 encodeToCommandBuffer:v25 sourceTexture:v26 destinationTexture:v27];
      }
    }
  }

  else
  {
    v46 = [a5 metalCommandBuffer];
    v47 = [v13 metalTexture];
    v48 = [a5 metalTexture];
    [v13 region];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    [a5 region];
    if (v46)
    {
      v61 = v57;
      v62 = v58;
      v63 = v59;
      v64 = v60;
      v65 = [objc_alloc(MEMORY[0x1E6974580]) initWithDevice:objc_msgSend(v46 kernelWidth:"device") kernelHeight:{v14, v15}];
      if (v65)
      {
        v66 = v65;
        [v65 setOptions:2];
        v89.origin.x = v50;
        v89.origin.y = v52;
        v89.size.width = v54;
        v89.size.height = v56;
        if (CGRectIsNull(v89))
        {
          LODWORD(v67) = 0;
          v68 = 0x7FFFFFFF;
          v69 = 0x7FFFFFFF;
        }

        else
        {
          v92.origin.x = v50;
          v92.origin.y = v52;
          v92.size.width = v54;
          v92.size.height = v56;
          if (CGRectIsInfinite(v92))
          {
            v68 = -2147483647;
            LODWORD(v67) = -1;
            v69 = -2147483647;
          }

          else
          {
            v101.origin.x = v50;
            v101.origin.y = v52;
            v101.size.width = v54;
            v101.size.height = v56;
            v102 = CGRectInset(v101, 0.000001, 0.000001);
            v103 = CGRectIntegral(v102);
            v69 = v103.origin.x;
            v68 = v103.origin.y;
            v67 = v103.size.height;
          }
        }

        v104.origin.x = v61;
        v104.origin.y = v62;
        v104.size.width = v63;
        v104.size.height = v64;
        if (CGRectIsNull(v104))
        {
          LODWORD(v80) = 0;
          v81 = 0x7FFFFFFF;
          v82 = 0x7FFFFFFF;
        }

        else
        {
          v105.origin.x = v61;
          v105.origin.y = v62;
          v105.size.width = v63;
          v105.size.height = v64;
          if (CGRectIsInfinite(v105))
          {
            v81 = -2147483647;
            LODWORD(v80) = -1;
            v82 = -2147483647;
          }

          else
          {
            v106.origin.x = v61;
            v106.origin.y = v62;
            v106.size.width = v63;
            v106.size.height = v64;
            v107 = CGRectInset(v106, 0.000001, 0.000001);
            v108 = CGRectIntegral(v107);
            v82 = v108.origin.x;
            v81 = v108.origin.y;
            v80 = v108.size.height;
          }
        }

        v85 = v82 - v69;
        v86 = v68 + v67 - (v80 + v81);
        v87 = 0;
        [v66 setOffset:&v85];
        [v66 encodeToCommandBuffer:v46 sourceTexture:v47 destinationTexture:v48];
      }
    }
  }

  return 1;
}

+ (id)applyConToImage:(id)a3 width:(int)a4 height:(int)a5 bias:(double)a6 weights:(id)a7
{
  v9 = *&a5;
  v10 = *&a4;
  v21[1] = *MEMORY[0x1E69E9840];
  if (fabs(a6) >= 1.0e-10)
  {
    x = *MEMORY[0x1E695F040];
    y = *(MEMORY[0x1E695F040] + 8);
    width = *(MEMORY[0x1E695F040] + 16);
    height = *(MEMORY[0x1E695F040] + 24);
  }

  else
  {
    [a3 extent];
    v23 = CGRectInset(v22, (v10 / -2), (v9 / -2));
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  v21[0] = a3;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v20[0] = [MEMORY[0x1E696AD98] numberWithInt:{v10, @"w"}];
  v19[1] = @"h";
  v20[1] = [MEMORY[0x1E696AD98] numberWithInt:v9];
  v19[2] = @"bias";
  v19[3] = @"weights";
  v20[2] = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  v20[3] = a7;
  return [a1 applyWithExtent:v17 inputs:objc_msgSend(MEMORY[0x1E695DF20] arguments:"dictionaryWithObjects:forKeys:count:" error:{v20, v19, 4), 0, x, y, width, height}];
}

+ (id)applyBoxToImage:(id)a3 width:(int)a4 height:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v17[1] = *MEMORY[0x1E69E9840];
  [a3 extent];
  v19 = CGRectInset(v18, (v6 / -2), (v5 / -2));
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v17[0] = a3;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v15[1] = @"h";
  v16[0] = [MEMORY[0x1E696AD98] numberWithInt:{v6, @"w"}];
  v16[1] = [MEMORY[0x1E696AD98] numberWithInt:v5];
  return [a1 applyWithExtent:v13 inputs:objc_msgSend(MEMORY[0x1E695DF20] arguments:"dictionaryWithObjects:forKeys:count:" error:{v16, v15, 2), 0, x, y, width, height}];
}

@end