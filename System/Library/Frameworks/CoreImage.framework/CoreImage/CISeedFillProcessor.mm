@interface CISeedFillProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)result;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation CISeedFillProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = [inputs objectAtIndexedSubscript:{0, arguments, output, error}];
  v10 = [inputs objectAtIndexedSubscript:1];
  [v9 format];
  [v10 format];
  [output format];
  [output region];
  v12 = v11;
  [output region];
  v14 = v13;
  bytesPerRow = [output bytesPerRow];
  clearOutput(output);
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
    v27 = [objc_msgSend(arguments objectForKey:{@"kThreshold", "intValue"}];
    v28 = (v27 & ~(v27 >> 31)) >= 255 ? -1 : v27 & ~(v27 >> 31);
    inited = initBitmask(v14, v12);
    *(&v37 + 1) = [v9 bytesPerRow];
    [v9 region];
    v38 = v30;
    [v9 region];
    v39 = v31;
    LODWORD(v40) = 0;
    seedFill([v9 baseAddress], inited, v19, v26, &v37, fillR8);
    baseAddress = [output baseAddress];
    if (v23)
    {
      v33 = baseAddress;
      for (i = 0; i != v23; ++i)
      {
        if (v24)
        {
          for (j = 0; j != v24; ++j)
          {
            *(v33 + j) = -bitValueFromBitmask(inited, j, i);
          }
        }

        v33 += bytesPerRow;
      }
    }
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

@end