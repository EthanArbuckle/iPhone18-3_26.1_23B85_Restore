@interface CISeedFillProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)result;
+ (int)formatForInputAtIndex:(int)a3;
@end

@implementation CISeedFillProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = [a3 objectAtIndexedSubscript:{0, a4, a5, a6}];
  v10 = [a3 objectAtIndexedSubscript:1];
  [v9 format];
  [v10 format];
  [a5 format];
  [a5 region];
  v12 = v11;
  [a5 region];
  v14 = v13;
  v15 = [a5 bytesPerRow];
  clearOutput(a5);
  *&src.height = xmmword_19CF23040;
  src.rowBytes = 8;
  dest.data = v43;
  *&dest.height = xmmword_19CF23040;
  dest.rowBytes = 16;
  src.data = [v10 baseAddress];
  vImageConvert_Planar16FtoPlanarF(&src, &dest, 0x10u);
  v16 = roundf(v43[0]);
  v17 = roundf(v43[1]);
  [v9 region];
  v19 = (v16 - v18);
  [v9 region];
  v21 = (v17 - v20);
  if (v19 <= v21)
  {
    v22 = (v17 - v20);
  }

  else
  {
    v22 = v19;
  }

  if (v22 >= 1)
  {
    v23 = v12;
    v24 = v14;
    [v9 region];
    v26 = (v25 - v21 + -1.0);
    v27 = [objc_msgSend(a4 objectForKey:{@"kThreshold", "intValue"}];
    v28 = (v27 & ~(v27 >> 31)) >= 255 ? -1 : v27 & ~(v27 >> 31);
    inited = initBitmask(v14, v12);
    *(&v37 + 1) = [v9 bytesPerRow];
    [v9 region];
    v38 = v30;
    [v9 region];
    v39 = v31;
    LODWORD(v40) = 0;
    seedFill([v9 baseAddress], inited, v19, v26, &v37, fillR8);
    v32 = [a5 baseAddress];
    if (v23)
    {
      v33 = v32;
      for (i = 0; i != v23; ++i)
      {
        if (v24)
        {
          for (j = 0; j != v24; ++j)
          {
            *(v33 + j) = -bitValueFromBitmask(inited, j, i);
          }
        }

        v33 += v15;
      }
    }
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

@end