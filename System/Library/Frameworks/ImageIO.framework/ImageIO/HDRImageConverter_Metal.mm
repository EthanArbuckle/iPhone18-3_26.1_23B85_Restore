@interface HDRImageConverter_Metal
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)computeGridSizeForThreadGroupSize:(SEL)a3 outputSize:(id *)a4;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)computeThreadGroupSizeForOutputSize:(SEL)a3 pipelineState:(id *)a4;
- (BOOL)canUseImageBlocks;
- (BOOL)commitAndWaitUntilCompleted:(id)a3;
- (BOOL)computeGainMap:(__CVBuffer *)a3 transform:(id *)a4 fromBaseImage:(__CVBuffer *)a5 transform:(id *)a6 alternateImage:(__CVBuffer *)a7 transform:(id *)a8;
- (BOOL)computeGainMap:(__CVBuffer *)a3 transform:(id *)a4 outputImage:(__CVBuffer *)a5 transform:(id *)a6 fromBaseImage:(__CVBuffer *)a7 transform:(id *)a8 alternateImage:(__CVBuffer *)a9 transform:(id *)a10;
- (BOOL)computeLumaGainHistogram:(id *)a3 scale:(__CVBuffer *)a4 image:(id *)a5 transform:(__CVBuffer *)a6 gainMap:(id *)a7 transform:;
- (BOOL)computeStatistics:(id *)a3 image:(__CVBuffer *)a4 transform:(id *)a5;
- (BOOL)computeStatistics:(id *)a3 image:(__CVBuffer *)a4 transform:(id *)a5 gainMap:(__CVBuffer *)a6 transform:(id *)a7;
- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 alternate:(id *)a5 gainMap:(__CVBuffer *)a6 transform:(id *)a7 alternate:(id *)a8 toImage:(__CVBuffer *)a9 transform:(id *)a10 gainMap:(__CVBuffer *)a11 transform:(id *)a12;
- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 alternate:(id *)a5 toImage:(__CVBuffer *)a6 transform:(id *)a7 gainMap:(__CVBuffer *)a8 transform:(id *)a9;
- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 gainMap:(__CVBuffer *)a5 transform:(id *)a6 toImage:(__CVBuffer *)a7 transform:(id *)a8;
- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 toImage:(__CVBuffer *)a5 transform:(id *)a6;
- (BOOL)isPixelFormatSupported:(unsigned int)a3;
- (HDRImageConverter_Metal)init;
- (id)conversionFunctionWithName:(id)a3 subsampling:;
- (id)description;
- (unint64_t)minimumConstantBufferOffsetAlignment;
- (void)dealloc;
- (void)encodeInputColorTransform:(id *)a3 toBuffer:(id)a4 offset:(unint64_t)a5 withArgumentEncoder:(id)a6 computeEncoder:(id)a7 index:(unint64_t)a8;
- (void)encodeInputGainTransform:(id *)a3 toBuffer:(id)a4 offset:(unint64_t)a5 withArgumentEncoder:(id)a6 computeEncoder:(id)a7 index:(unint64_t)a8;
- (void)encodeInputImage:(__CVBuffer *)a3 transform:(id *)a4 toBuffer:(id)a5 offset:(unint64_t)a6 withArgumentEncoder:(id)a7 computeEncoder:(id)a8 index:(unint64_t)a9 textures:(id)a10;
- (void)encodeOutputColorTransform:(id *)a3 toBuffer:(id)a4 offset:(unint64_t)a5 withArgumentEncoder:(id)a6 computeEncoder:(id)a7 index:(unint64_t)a8;
- (void)encodeOutputGainTransform:(id *)a3 toBuffer:(id)a4 offset:(unint64_t)a5 withArgumentEncoder:(id)a6 computeEncoder:(id)a7 index:(unint64_t)a8;
- (void)encodeOutputImage:(__CVBuffer *)a3 transform:(id *)a4 toBuffer:(id)a5 offset:(unint64_t)a6 withArgumentEncoder:(id)a7 computeEncoder:(id)a8 index:(unint64_t)a9 textures:(id)a10;
@end

@implementation HDRImageConverter_Metal

- (HDRImageConverter_Metal)init
{
  v7.receiver = self;
  v7.super_class = HDRImageConverter_Metal;
  v2 = [(HDRImageConverter_Metal *)&v7 init];
  v3 = +[HDRMetalContext metalContext];
  metal = v2->_metal;
  v2->_metal = v3;

  if (v2->_metal)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  [(HDRMetalContext *)self->_metal flushTextureCache];
  v3.receiver = self;
  v3.super_class = HDRImageConverter_Metal;
  [(HDRImageConverter_Metal *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() description];
  v5 = [(HDRImageConverter_Metal *)self metal];
  v6 = [v5 device];
  v7 = [v6 name];
  v8 = [v3 stringWithFormat:@"%@[%@]", v4, v7];

  return v8;
}

- (BOOL)commitAndWaitUntilCompleted:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__HDRImageConverter_Metal_commitAndWaitUntilCompleted___block_invoke;
  v6[3] = &unk_1E6EF87E0;
  v6[4] = &v7;
  [v3 addCompletedHandler:v6];
  [v3 commit];
  [v3 waitUntilCompleted];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)computeThreadGroupSizeForOutputSize:(SEL)a3 pipelineState:(id *)a4
{
  v21 = a5;
  v7 = [v21 threadExecutionWidth];
  v8 = [v21 maxTotalThreadsPerThreadgroup];
  v9 = v8 / v7;
  if (v7 <= v8)
  {
    v13 = 2 * v7;
    v14 = -1;
    v15 = -1;
    v16 = v7;
    v11 = v7;
    v10 = v8 / v7;
    do
    {
      var1 = a4->var1;
      if (v16 <= v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v16;
      }

      if (v16 >= v9)
      {
        v18 = v9;
      }

      else
      {
        v18 = v16;
      }

      if ((var1 + v9 - 1) / v9 * v9 * (a4->var0 + v16 - 1) / v16 * v16 - var1 * a4->var0 <= v14)
      {
        v19 = v17 / v18;
        if (v19 <= v15)
        {
          v10 = v9;
          v11 = v16;
          v15 = v19;
          v14 = (var1 + v9 - 1) / v9 * v9 * (a4->var0 + v16 - 1) / v16 * v16 - var1 * a4->var0;
        }
      }

      v16 += v7;
      v9 = v8 / v13;
      v13 += v7;
    }

    while (v16 <= v8);
  }

  else
  {
    v10 = v8 / v7;
    v11 = v7;
  }

  retstr->var0 = v11;
  retstr->var1 = v10;
  retstr->var2 = 1;

  return MEMORY[0x1EEE66C38]();
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)computeGridSizeForThreadGroupSize:(SEL)a3 outputSize:(id *)a4
{
  v5 = (a5->var1 + a4->var1 - 1) / a4->var1;
  retstr->var0 = (a5->var0 + a4->var0 - 1) / a4->var0;
  retstr->var1 = v5;
  retstr->var2 = 1;
  return self;
}

- (void)encodeInputImage:(__CVBuffer *)a3 transform:(id *)a4 toBuffer:(id)a5 offset:(unint64_t)a6 withArgumentEncoder:(id)a7 computeEncoder:(id)a8 index:(unint64_t)a9 textures:(id)a10
{
  v36 = a5;
  v16 = a7;
  v17 = a8;
  v35 = a10;
  var0 = a4->var0;
  v19 = [(HDRImageConverter_Metal *)self metal];
  v20 = [v19 metalTextureFromBuffer:a3 plane:0];

  if (var0 == 4)
  {
    v21 = v35;
    v22 = [(HDRImageConverter_Metal *)self metal];
    v23 = [v22 metalTextureFromBuffer:a3 plane:1];
  }

  else
  {
    v23 = 0;
    v21 = v35;
  }

  [v16 setArgumentBuffer:v36 offset:a6];
  if (v20)
  {
    v24 = gFunc_CVMetalTextureGetTexture(v20);
  }

  else
  {
    v24 = 0;
  }

  [v16 setTexture:v24 atIndex:1];
  if (v20)
  {
  }

  if (v23)
  {
    v25 = gFunc_CVMetalTextureGetTexture(v23);
  }

  else
  {
    v25 = 0;
  }

  [v16 setTexture:v25 atIndex:2];
  if (v23)
  {
  }

  v26 = [v16 constantDataAtIndex:3];
  v27 = *&a4->var0;
  v28 = *&a4[4].var0;
  v29 = *&a4[12].var0;
  v26[2] = *&a4[8].var0;
  v26[3] = v29;
  *v26 = v27;
  v26[1] = v28;
  v30 = *&a4[16].var0;
  v31 = *&a4[20].var0;
  v32 = *&a4[28].var0;
  v26[6] = *&a4[24].var0;
  v26[7] = v32;
  v26[4] = v30;
  v26[5] = v31;
  [v17 setBuffer:v36 offset:a6 atIndex:a9];
  if (v20)
  {
    v33 = gFunc_CVMetalTextureGetTexture(v20);
    [v17 useResource:v33 usage:1];

    [v21 addObject:v20];
  }

  if (v23)
  {
    v34 = gFunc_CVMetalTextureGetTexture(v23);
    [v17 useResource:v34 usage:1];

    [v21 addObject:v23];
  }
}

- (void)encodeOutputImage:(__CVBuffer *)a3 transform:(id *)a4 toBuffer:(id)a5 offset:(unint64_t)a6 withArgumentEncoder:(id)a7 computeEncoder:(id)a8 index:(unint64_t)a9 textures:(id)a10
{
  v35 = a5;
  v16 = a7;
  v17 = a8;
  v34 = a10;
  var0 = a4->var0;
  v19 = [(HDRImageConverter_Metal *)self metal];
  v20 = [v19 metalTextureFromBuffer:a3 plane:0];

  if (var0 == 4)
  {
    v21 = v34;
    v22 = [(HDRImageConverter_Metal *)self metal];
    v23 = [v22 metalTextureFromBuffer:a3 plane:1];
  }

  else
  {
    v23 = 0;
    v21 = v34;
  }

  [v16 setArgumentBuffer:v35 offset:a6];
  if (v20)
  {
    v24 = gFunc_CVMetalTextureGetTexture(v20);
  }

  else
  {
    v24 = 0;
  }

  [v16 setTexture:v24 atIndex:1];
  if (v20)
  {
  }

  if (v23)
  {
    v25 = gFunc_CVMetalTextureGetTexture(v23);
  }

  else
  {
    v25 = 0;
  }

  [v16 setTexture:v25 atIndex:2];
  if (v23)
  {
  }

  v26 = [v16 constantDataAtIndex:4];
  v27 = *&a4->var0;
  v28 = *&a4[8].var0;
  v26[1] = *&a4[4].var0;
  v26[2] = v28;
  *v26 = v27;
  v29 = *&a4[12].var0;
  v30 = *&a4[16].var0;
  v31 = *&a4[24].var0;
  v26[5] = *&a4[20].var0;
  v26[6] = v31;
  v26[3] = v29;
  v26[4] = v30;
  [v17 setBuffer:v35 offset:a6 atIndex:a9];
  if (v20)
  {
    v32 = gFunc_CVMetalTextureGetTexture(v20);
    [v17 useResource:v32 usage:2];

    [v21 addObject:v20];
  }

  if (v23)
  {
    v33 = gFunc_CVMetalTextureGetTexture(v23);
    [v17 useResource:v33 usage:2];

    [v21 addObject:v23];
  }
}

- (void)encodeInputColorTransform:(id *)a3 toBuffer:(id)a4 offset:(unint64_t)a5 withArgumentEncoder:(id)a6 computeEncoder:(id)a7 index:(unint64_t)a8
{
  v45 = a4;
  v14 = a6;
  v15 = a7;
  if (a3->var0.var0 == 6)
  {
    v16 = [(HDRImageConverter_Metal *)self metal];
    v17 = [v16 metalTextureFromTableData:*&a3->var1.var1.var3];
  }

  else
  {
    v17 = 0;
  }

  if (LODWORD(a3->var1.var1.var7) == 5)
  {
    v18 = [(HDRImageConverter_Metal *)self metal];
    v19 = [v18 metalTextureFromTableData:*&a3[1].var0.var0];
  }

  else
  {
    v19 = 0;
  }

  if (LODWORD(a3->var1.var1.var7) == 6)
  {
    v20 = [(HDRImageConverter_Metal *)self metal];
    v21 = [v20 metalTextureFromCubeData:*&a3[1].var0.var0];
  }

  else
  {
    v21 = 0;
  }

  if (LODWORD(a3[1].var1.var1.var7) == 6)
  {
    v22 = [(HDRImageConverter_Metal *)self metal];
    v23 = [v22 metalTextureFromTableData:a3[1].var1.var4.var2];
  }

  else
  {
    v23 = 0;
  }

  [v14 setArgumentBuffer:v45 offset:a5];
  var0 = a3->var0.var0;
  *[v14 constantDataAtIndex:1] = var0;
  v25 = [v14 constantDataAtIndex:2];
  v26 = *&a3->var0.var1.var3;
  v27 = *&a3->var1.var0;
  v25[1] = *&a3->var0.var1.var7;
  v25[2] = v27;
  *v25 = v26;
  [v14 setTexture:v17 atIndex:11];
  var7 = a3->var1.var1.var7;
  *[v14 constantDataAtIndex:12] = var7;
  v29 = [v14 constantDataAtIndex:13];
  v30 = *&a3->var1.var3.var1;
  v31 = *&a3->var1.var4.var1.var1;
  v32 = *&a3->var1.var4.var2;
  v29[2] = *&a3->var1.var4.var1.var5;
  v29[3] = v32;
  *v29 = v30;
  v29[1] = v31;
  v33 = [v14 constantDataAtIndex:23];
  v34 = *&a3[1].var0.var1.var3;
  v35 = *&a3[1].var0.var1.var7;
  v36 = *&a3[1].var1.var1.var3;
  v33[2] = *&a3[1].var1.var0;
  v33[3] = v36;
  *v33 = v34;
  v33[1] = v35;
  [v14 setTexture:v19 atIndex:25];
  [v14 setTexture:v21 atIndex:26];
  v37 = a3[1].var1.var1.var7;
  *[v14 constantDataAtIndex:27] = v37;
  v38 = [v14 constantDataAtIndex:28];
  v39 = *&a3[1].var1.var3.var1;
  v40 = *&a3[1].var1.var4.var1.var5;
  v38[1] = *&a3[1].var1.var4.var1.var1;
  v38[2] = v40;
  *v38 = v39;
  [v14 setTexture:v23 atIndex:37];
  v41 = [v14 constantDataAtIndex:38];
  v42 = *&a3[2].var0.var0;
  v43 = *&a3[2].var0.var1.var3;
  v44 = *&a3[2].var1.var0;
  v41[2] = *&a3[2].var0.var1.var7;
  v41[3] = v44;
  *v41 = v42;
  v41[1] = v43;
  [v15 setBuffer:v45 offset:a5 atIndex:a8];
  if (v17)
  {
    [v15 useResource:v17 usage:1];
  }

  if (v19)
  {
    [v15 useResource:v19 usage:1];
  }

  if (v21)
  {
    [v15 useResource:v21 usage:1];
  }

  if (v23)
  {
    [v15 useResource:v23 usage:1];
  }
}

- (void)encodeOutputColorTransform:(id *)a3 toBuffer:(id)a4 offset:(unint64_t)a5 withArgumentEncoder:(id)a6 computeEncoder:(id)a7 index:(unint64_t)a8
{
  v39 = a4;
  v14 = a6;
  v15 = a7;
  if (a3->var1.var4.var0 == 5)
  {
    v16 = [(HDRImageConverter_Metal *)self metal];
    v17 = [v16 metalTextureFromTableData:*&a3->var2.var1.var7];
  }

  else
  {
    v17 = 0;
  }

  [v14 setArgumentBuffer:v39 offset:a5];
  v18 = [v14 constantDataAtIndex:1];
  v19 = *&a3->var0.var1;
  v20 = *&a3->var1.var1.var1;
  v21 = *&a3->var1.var2;
  v18[2] = *&a3->var1.var1.var5;
  v18[3] = v21;
  *v18 = v19;
  v18[1] = v20;
  var0 = a3->var1.var4.var0;
  *[v14 constantDataAtIndex:3] = var0;
  v23 = [v14 constantDataAtIndex:4];
  v24 = *&a3->var1.var4.var1.var3;
  v25 = *&a3->var1.var4.var1.var7;
  v26 = *&a3->var2.var1.var3;
  v23[2] = *&a3->var2.var0;
  v23[3] = v26;
  *v23 = v24;
  v23[1] = v25;
  v27 = [v14 constantDataAtIndex:14];
  v28 = *&a3[1].var0.var1;
  v29 = *&a3[1].var1.var1.var1;
  v30 = *&a3[1].var1.var2;
  v27[2] = *&a3[1].var1.var1.var5;
  v27[3] = v30;
  *v27 = v28;
  v27[1] = v29;
  [v14 setTexture:v17 atIndex:16];
  v31 = [v14 constantDataAtIndex:18];
  *v31 = *&a3[1].var1.var4.var0;
  v32 = *&a3[1].var1.var4.var1.var3;
  v33 = *&a3[1].var1.var4.var1.var7;
  v34 = *&a3[1].var2.var1.var3;
  v31[3] = *&a3[1].var2.var0;
  v31[4] = v34;
  v31[1] = v32;
  v31[2] = v33;
  v35 = [v14 constantDataAtIndex:29];
  *v35 = *&a3[1].var2.var1.var7;
  v36 = *&a3[2].var0.var1;
  v37 = *&a3[2].var1.var1.var1;
  v38 = *&a3[2].var1.var2;
  v35[3] = *&a3[2].var1.var1.var5;
  v35[4] = v38;
  v35[1] = v36;
  v35[2] = v37;
  [v15 setBuffer:v39 offset:a5 atIndex:a8];
  if (v17)
  {
    [v15 useResource:v17 usage:1];
  }
}

- (void)encodeInputGainTransform:(id *)a3 toBuffer:(id)a4 offset:(unint64_t)a5 withArgumentEncoder:(id)a6 computeEncoder:(id)a7 index:(unint64_t)a8
{
  v16 = a4;
  v13 = a6;
  v14 = a7;
  v21 = *&a3[8].var0.var0;
  v22 = *&a3[10].var0.var0;
  v17 = *&a3->var0.var0;
  v18 = *&a3[2].var0.var0;
  v19 = *&a3[4].var0.var0;
  v20 = *&a3[6].var0.var0;
  v26 = *&a3[18].var0.var0;
  v27 = *&a3[20].var0.var0;
  v24 = *&a3[14].var0.var0;
  v25 = *&a3[16].var0.var0;
  v23 = *&a3[12].var0.var0;
  [v13 setArgumentBuffer:v16 offset:a5];
  v15 = [v13 constantDataAtIndex:1];
  v15[8] = v25;
  v15[9] = v26;
  v15[10] = v27;
  v15[4] = v21;
  v15[5] = v22;
  v15[6] = v23;
  v15[7] = v24;
  *v15 = v17;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v20;
  [v14 setBuffer:v16 offset:a5 atIndex:a8];
}

- (void)encodeOutputGainTransform:(id *)a3 toBuffer:(id)a4 offset:(unint64_t)a5 withArgumentEncoder:(id)a6 computeEncoder:(id)a7 index:(unint64_t)a8
{
  v18 = a4;
  v13 = a6;
  v14 = a7;
  v23 = *&a3[8].var0.var0;
  v24 = *&a3[10].var0.var0;
  v19 = *&a3->var0.var0;
  v20 = *&a3[2].var0.var0;
  v21 = *&a3[4].var0.var0;
  v22 = *&a3[6].var0.var0;
  v28 = *&a3[18].var0.var0;
  v29 = *&a3[20].var0.var0;
  v26 = *&a3[14].var0.var0;
  v27 = *&a3[16].var0.var0;
  v25 = *&a3[12].var0.var0;
  v15 = a3[22];
  v17 = *&a3[24].var0.var0;
  LOBYTE(a3) = a3[26].var0.var0;
  [v13 setArgumentBuffer:v18 offset:a5];
  v16 = [v13 constantDataAtIndex:2];
  *(v16 + 128) = v27;
  *(v16 + 144) = v28;
  *(v16 + 160) = v29;
  *(v16 + 64) = v23;
  *(v16 + 80) = v24;
  *(v16 + 96) = v25;
  *(v16 + 112) = v26;
  *v16 = v19;
  *(v16 + 16) = v20;
  *(v16 + 32) = v21;
  *(v16 + 48) = v22;
  *(v16 + 176) = v15;
  *(v16 + 184) = 0;
  *(v16 + 192) = v17;
  *(v16 + 208) = a3;
  *(v16 + 209) = 0;
  *(v16 + 216) = 0;
  [v14 setBuffer:v18 offset:a5 atIndex:a8];
}

- (BOOL)isPixelFormatSupported:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(HDRImageConverter_Metal *)self metal];
  v5 = [v4 metalPixelFormatForPixelFormat:v3 plane:0];

  return v5 != 0;
}

- (BOOL)canUseImageBlocks
{
  v2 = [(HDRImageConverter_Metal *)self metal];
  v3 = [v2 device];
  v4 = [v3 supportsFamily:1004];

  return v4;
}

- (unint64_t)minimumConstantBufferOffsetAlignment
{
  v3 = [(HDRImageConverter_Metal *)self metal];
  v4 = [v3 device];
  if ([v4 supportsFamily:2002])
  {
    v5 = [(HDRImageConverter_Metal *)self metal];
    v6 = [v5 device];
    v7 = [v6 supportsFamily:1002];

    if (v7)
    {
      return 4;
    }

    else
    {
      return 32;
    }
  }

  else
  {

    return 4;
  }
}

- (id)conversionFunctionWithName:(id)a3 subsampling:
{
  v4 = v3;
  v6 = a3;
  v35 = 0;
  v34 = *v4;
  if ([(__CFString *)v6 isEqualToString:@"convert_image_to_image"])
  {
    v7 = [(HDRImageConverter_Metal *)self metal];
    v8 = [v7 device];
    v9 = [v8 supportsFamily:1001];

    if (v9)
    {

      v34 = *v4;
      v10 = @"xdr::convert_image_to_image_loop";
    }

    else
    {
      v35 = 1;

      *v4 = 65537;
      v10 = @"xdr::convert_image_to_image_reduce";
    }
  }

  else if ([(__CFString *)v6 isEqualToString:@"convert_gainmap_image_to_image"])
  {
    v11 = [(HDRImageConverter_Metal *)self metal];
    v12 = [v11 device];
    v13 = [v12 supportsFamily:1001];

    if (v13)
    {

      v34 = *v4;
      v10 = @"xdr::convert_gainmap_image_to_image_loop";
    }

    else
    {
      v35 = 1;

      *v4 = 65537;
      v10 = @"xdr::convert_gainmap_image_to_image_reduce";
    }
  }

  else if ([(__CFString *)v6 isEqualToString:@"convert_image_to_gainmap_image"])
  {
    v14 = [(HDRImageConverter_Metal *)self metal];
    v15 = [v14 device];
    v16 = [v15 supportsFamily:5001];

    if (v16)
    {
      *v4 = 65537;
      v10 = @"xdr::convert_image_to_gainmap_image_reduce";
    }

    else
    {
      v34 = *v4;
      v10 = @"xdr::convert_image_to_gainmap_image_loop";
    }
  }

  else if ([(__CFString *)v6 isEqualToString:@"convert_gainmap_image_to_gainmap_image"])
  {
    v17 = [(HDRImageConverter_Metal *)self metal];
    v18 = [v17 device];
    v19 = [v18 supportsFamily:5001];

    if (v19)
    {
      *v4 = 65537;
      v10 = @"xdr::convert_gainmap_image_to_gainmap_image_reduce";
    }

    else
    {
      v34 = *v4;
      v10 = @"xdr::convert_gainmap_image_to_gainmap_image_loop";
    }
  }

  else if ([(__CFString *)v6 isEqualToString:@"compute_gainmap"])
  {
    v20 = [(HDRImageConverter_Metal *)self metal];
    v21 = [v20 device];
    v22 = [v21 supportsFamily:5001];

    if (v22)
    {
      *v4 = 65537;
      v10 = @"xdr::compute_gainmap_reduce";
    }

    else
    {
      v34 = *v4;
      v10 = @"xdr::compute_gainmap_loop";
    }
  }

  else if ([(__CFString *)v6 isEqualToString:@"compute_gainmap_image"])
  {
    v23 = [(HDRImageConverter_Metal *)self metal];
    v24 = [v23 device];
    v25 = [v24 supportsFamily:5001];

    if (v25)
    {
      *v4 = 65537;
      v10 = @"xdr::compute_gainmap_image_reduce";
    }

    else
    {
      v34 = *v4;
      v10 = @"xdr::compute_gainmap_image_loop";
    }
  }

  else if ([(__CFString *)v6 isEqualToString:@"compute_luma_gain_histogram"])
  {

    *v4 = 524296;
    v34 = 131074;
    v10 = @"xdr::compute_luma_gain_histogram_8x8";
  }

  else if ([(__CFString *)v6 isEqualToString:@"compute_image_stats"])
  {

    v26 = vmovl_u16(vmin_u16(*v4, 4194368)).u64[0];
    HIWORD(v34) = v26.i16[2];
    v27 = vshl_n_s32(v26, 3uLL);
    LOWORD(v34) = v26.i16[0];
    *(v4 + 1) = v27.i16[2];
    *v4 = v27.i16[0];
    v10 = @"xdr::compute_image_stats_8x8";
  }

  else
  {
    v10 = v6;
    if ([(__CFString *)v6 isEqualToString:@"compute_image_gainmap_stats"])
    {

      v32 = vmovl_u16(vmin_u16(*v4, 4194368)).u64[0];
      HIWORD(v34) = v32.i16[2];
      v33 = vshl_n_s32(v32, 3uLL);
      LOWORD(v34) = v32.i16[0];
      *(v4 + 1) = v33.i16[2];
      *v4 = v33.i16[0];
      v10 = @"xdr::compute_image_gainmap_stats_8x8";
    }
  }

  v28 = objc_alloc_init(MEMORY[0x1E6974068]);
  [v28 setConstantValue:&v34 type:42 atIndex:1];
  [v28 setConstantValue:&v35 type:53 atIndex:2];
  v29 = [(HDRImageConverter_Metal *)self metal];
  v30 = [v29 metalLibraryFunctionWithName:v10 functionConstant:v28];

  return v30;
}

- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 toImage:(__CVBuffer *)a5 transform:(id *)a6
{
  v7 = vmovl_u16(vmax_u16(vdup_lane_s16(*&a6[2].var0.var2.var1.var7, 0).u32[0], vext_s8(*&a6[2].var0.var2.var1.var7, *&a6[2].var0.var2.var1.var7, 2uLL).u32[0]));
  v68 = v7.u16[2];
  v67 = v7.i16[0];
  v55 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"convert_image_to_image" subsampling:&v67];
  if (v55)
  {
    v8 = [(HDRImageConverter_Metal *)self metal];
    v9 = [v8 metalComputePipelineStateWithFunction:v55];

    v52 = v9;
    if (v9)
    {
      v10 = [(HDRImageConverter_Metal *)self metal];
      v11 = [v10 commandQueue];

      v42 = v11;
      v41 = [v11 commandBuffer];
      v53 = [v41 computeCommandEncoder];
      [v53 setComputePipelineState:v52];
      v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v47 = [v55 newArgumentEncoderWithBufferIndex:1];
      v54 = [v55 newArgumentEncoderWithBufferIndex:3];
      v45 = [v55 newArgumentEncoderWithBufferIndex:6];
      v44 = [v55 newArgumentEncoderWithBufferIndex:8];
      v12 = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      v40 = [v54 alignment];
      v39 = [v47 encodedLength];
      v38 = [v54 alignment];
      v13 = [v54 alignment];
      v37 = [v45 alignment];
      v36 = [v54 encodedLength];
      v35 = [v45 alignment];
      v14 = [v45 alignment];
      v34 = [v44 alignment];
      v15 = [v45 encodedLength];
      v16 = [v44 alignment];
      v17 = [v44 alignment];
      v18 = [v44 encodedLength];
      v19 = [(HDRImageConverter_Metal *)self metal];
      v20 = [v19 device];
      v21 = (v12 + (v39 + v38 - 1) / v13 * v40 - 1) / v12 * v12;
      v22 = (v12 + (v21 + v36 + v35 - 1) / v14 * v37 - 1) / v12 * v12;
      v23 = (v12 + (v22 + v15 + v16 - 1) / v17 * v34 - 1) / v12 * v12;
      v24 = [v20 newBufferWithLength:v23 + v18 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:a3 transform:a4 toBuffer:v24 offset:0 withArgumentEncoder:v47 computeEncoder:v53 index:1 textures:v46];
      [(HDRImageConverter_Metal *)self encodeOutputImage:a5 transform:&a6[2].var0.var1.var2 toBuffer:v24 offset:v21 withArgumentEncoder:v54 computeEncoder:v53 index:3 textures:v46];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a4->var1.var1.var4.var1.var3 toBuffer:v24 offset:v22 withArgumentEncoder:v45 computeEncoder:v53 index:6];
      [(HDRImageConverter_Metal *)self encodeOutputColorTransform:a6 toBuffer:v24 offset:v23 withArgumentEncoder:v44 computeEncoder:v53 index:8];
      LODWORD(v20) = gFunc_CVPixelBufferGetWidth(a5);
      Height = gFunc_CVPixelBufferGetHeight(a5);
      v26.i32[0] = v67;
      v26.i32[1] = v68;
      v51 = __PAIR64__(Height, v20);
      v27 = vand_s8(vadd_s32(__PAIR64__(Height, v20), vadd_s32(v26, -1)), 0xFFFF0000FFFFLL);
      v66 = v27.i32[1] / v68;
      v65 = v27.i32[0] / v67;
      [v53 setBytes:&v65 length:4 atIndex:15];
      v28.i64[0] = v51;
      v28.i64[1] = v51;
      v29.i64[0] = 0xFFFF0000FFFFLL;
      v29.i64[1] = 0xFFFF0000FFFFLL;
      v64 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v28, v29), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [v53 setBytes:&v64 length:16 atIndex:16];
      v30 = v65;
      v31 = v66;
      v62 = 0uLL;
      v63 = 0;
      *&v60 = v65;
      *(&v60 + 1) = v66;
      v61 = 1;
      [(HDRImageConverter_Metal *)self computeThreadGroupSizeForOutputSize:&v60 pipelineState:v52];
      v60 = 0uLL;
      v61 = 0;
      v58 = v62;
      v59 = v63;
      *&v56 = v30;
      *(&v56 + 1) = v31;
      v57 = 1;
      [(HDRImageConverter_Metal *)self computeGridSizeForThreadGroupSize:&v58 outputSize:&v56];
      v58 = v60;
      v59 = v61;
      v56 = v62;
      v57 = v63;
      [v53 dispatchThreadgroups:&v58 threadsPerThreadgroup:&v56];
      [v53 endEncoding];
      v32 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:v41];
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 gainMap:(__CVBuffer *)a5 transform:(id *)a6 toImage:(__CVBuffer *)a7 transform:(id *)a8
{
  v9 = vmovl_u16(vmax_u16(vdup_lane_s16(*&a8[2].var0.var2.var1.var7, 0).u32[0], vext_s8(*&a8[2].var0.var2.var1.var7, *&a8[2].var0.var2.var1.var7, 2uLL).u32[0]));
  v83 = v9.u16[2];
  v82 = v9.i16[0];
  v70 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"convert_gainmap_image_to_image" subsampling:&v82];
  if (v70)
  {
    v10 = [(HDRImageConverter_Metal *)self metal];
    v11 = [v10 metalComputePipelineStateWithFunction:v70];

    v64 = v11;
    if (v11)
    {
      v12 = [(HDRImageConverter_Metal *)self metal];
      v13 = [v12 commandQueue];

      v54 = v13;
      v53 = [v13 commandBuffer];
      v65 = [v53 computeCommandEncoder];
      [v65 setComputePipelineState:v64];
      v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v66 = [v70 newArgumentEncoderWithBufferIndex:1];
      v69 = [v70 newArgumentEncoderWithBufferIndex:3];
      v68 = [v70 newArgumentEncoderWithBufferIndex:6];
      v67 = [v70 newArgumentEncoderWithBufferIndex:9];
      v57 = [v70 newArgumentEncoderWithBufferIndex:8];
      v14 = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      v15 = [v66 alignment];
      v52 = [v66 encodedLength];
      v51 = [v66 alignment];
      v50 = [v66 alignment];
      v49 = [v69 alignment];
      v48 = [v66 encodedLength];
      v47 = [v69 alignment];
      v46 = [v69 alignment];
      v45 = [v68 alignment];
      v44 = [v69 encodedLength];
      v43 = [v68 alignment];
      v16 = [v68 alignment];
      v42 = [v67 alignment];
      v41 = [v68 encodedLength];
      v40 = [v67 alignment];
      v17 = [v67 alignment];
      v39 = [v57 alignment];
      v38 = [v67 encodedLength];
      v37 = [v57 alignment];
      v18 = [v57 alignment];
      v19 = [v57 encodedLength];
      v20 = [(HDRImageConverter_Metal *)self metal];
      v21 = [v20 device];
      v22 = (v14 + (v52 + v51 - 1) / v50 * v15 - 1) / v14 * v14;
      v23 = (v14 + (v22 + v48 + v47 - 1) / v46 * v49 - 1) / v14 * v14;
      v24 = (v14 + (v23 + v44 + v43 - 1) / v16 * v45 - 1) / v14 * v14;
      v25 = (v14 + (v24 + v41 + v40 - 1) / v17 * v42 - 1) / v14 * v14;
      v26 = (v14 + (v25 + v38 + v37 - 1) / v18 * v39 - 1) / v14 * v14;
      v27 = [v21 newBufferWithLength:v26 + v19 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:a3 transform:a4 toBuffer:v27 offset:0 withArgumentEncoder:v66 computeEncoder:v65 index:1 textures:v63];
      [(HDRImageConverter_Metal *)self encodeInputImage:a5 transform:a6 toBuffer:v27 offset:v22 withArgumentEncoder:v66 computeEncoder:v65 index:4 textures:v63];
      [(HDRImageConverter_Metal *)self encodeOutputImage:a7 transform:&a8[2].var0.var1.var2 toBuffer:v27 offset:v23 withArgumentEncoder:v69 computeEncoder:v65 index:3 textures:v63];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a4->var1.var1.var4.var1.var3 toBuffer:v27 offset:v24 withArgumentEncoder:v68 computeEncoder:v65 index:6];
      [(HDRImageConverter_Metal *)self encodeInputGainTransform:&a6[10].var1.var1 toBuffer:v27 offset:v25 withArgumentEncoder:v67 computeEncoder:v65 index:9];
      [(HDRImageConverter_Metal *)self encodeOutputColorTransform:a8 toBuffer:v27 offset:v26 withArgumentEncoder:v57 computeEncoder:v65 index:8];
      LODWORD(v26) = gFunc_CVPixelBufferGetWidth(a7);
      Height = gFunc_CVPixelBufferGetHeight(a7);
      v29.i32[0] = v82;
      v29.i32[1] = v83;
      v62 = __PAIR64__(Height, v26);
      v30 = vand_s8(vadd_s32(__PAIR64__(Height, v26), vadd_s32(v29, -1)), 0xFFFF0000FFFFLL);
      v81 = v30.i32[1] / v83;
      v80 = v30.i32[0] / v82;
      [v65 setBytes:&v80 length:4 atIndex:15];
      v31.i64[0] = v62;
      v31.i64[1] = v62;
      v32.i64[0] = 0xFFFF0000FFFFLL;
      v32.i64[1] = 0xFFFF0000FFFFLL;
      v79 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v31, v32), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [v65 setBytes:&v79 length:16 atIndex:16];
      v33 = v80;
      v34 = v81;
      v77 = 0uLL;
      v78 = 0;
      *&v75 = v80;
      *(&v75 + 1) = v81;
      v76 = 1;
      [(HDRImageConverter_Metal *)self computeThreadGroupSizeForOutputSize:&v75 pipelineState:v64];
      v75 = 0uLL;
      v76 = 0;
      v73 = v77;
      v74 = v78;
      *&v71 = v33;
      *(&v71 + 1) = v34;
      v72 = 1;
      [(HDRImageConverter_Metal *)self computeGridSizeForThreadGroupSize:&v73 outputSize:&v71];
      v73 = v75;
      v74 = v76;
      v71 = v77;
      v72 = v78;
      [v65 dispatchThreadgroups:&v73 threadsPerThreadgroup:&v71];
      [v65 endEncoding];
      v35 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:v53];
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 alternate:(id *)a5 toImage:(__CVBuffer *)a6 transform:(id *)a7 gainMap:(__CVBuffer *)a8 transform:(id *)a9
{
  v10 = *&a7[2].var0.var2.var1.var7;
  v10.i16[3] = 0;
  v11 = *&a9[26].var1.var0;
  v11.i16[3] = 0;
  v12 = vmax_u16(v10, v11);
  v13 = vmovl_u16(vmax_u16(vdup_lane_s16(v12, 0).u32[0], vext_s8(v12, v12, 2uLL).u32[0]));
  v92 = v13.u16[2];
  v91 = v13.i16[0];
  v79 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"convert_image_to_gainmap_image" subsampling:&v91];
  if (v79)
  {
    v14 = [(HDRImageConverter_Metal *)self metal];
    v15 = [v14 metalComputePipelineStateWithFunction:v79];

    v74 = v15;
    if (v15)
    {
      v16 = [(HDRImageConverter_Metal *)self metal];
      v17 = [v16 commandQueue];

      v63 = v17;
      v62 = [v17 commandBuffer];
      v75 = [v62 computeCommandEncoder];
      [v75 setComputePipelineState:v74];
      v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v68 = [v79 newArgumentEncoderWithBufferIndex:1];
      v77 = [v79 newArgumentEncoderWithBufferIndex:3];
      v76 = [v79 newArgumentEncoderWithBufferIndex:6];
      v78 = [v79 newArgumentEncoderWithBufferIndex:8];
      v64 = [v79 newArgumentEncoderWithBufferIndex:11];
      v18 = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      v19 = [v77 alignment];
      v20 = [v68 encodedLength];
      v60 = [v77 alignment];
      v58 = [v77 alignment];
      v56 = [v77 alignment];
      v55 = [v77 encodedLength];
      v54 = [v77 alignment];
      v53 = [v77 alignment];
      v52 = [v76 alignment];
      v51 = [v77 encodedLength];
      v50 = [v76 alignment];
      v49 = [v76 alignment];
      v48 = [v76 alignment];
      v47 = [v76 encodedLength];
      v46 = [v76 alignment];
      v21 = [v76 alignment];
      v22 = [v78 alignment];
      v23 = [v76 encodedLength];
      v24 = [v78 alignment];
      v45 = [v78 alignment];
      v44 = [v64 alignment];
      v43 = [v78 encodedLength];
      v42 = [v64 alignment];
      v41 = [v64 alignment];
      v40 = [v64 encodedLength];
      v25 = [(HDRImageConverter_Metal *)self metal];
      v26 = [v25 device];
      v27 = (v18 + (v20 + v60 - 1) / v58 * v19 - 1) / v18 * v18;
      v28 = (v18 + (v27 + v55 + v54 - 1) / v53 * v56 - 1) / v18 * v18;
      v61 = (v18 + (v28 + v51 + v50 - 1) / v49 * v52 - 1) / v18 * v18;
      v59 = (v18 + (v61 + v47 + v46 - 1) / v21 * v48 - 1) / v18 * v18;
      v57 = (v18 + (v59 + v23 + v24 - 1) / v45 * v22 - 1) / v18 * v18;
      v29 = (v18 + (v57 + v43 + v42 - 1) / v41 * v44 - 1) / v18 * v18;
      v30 = [v26 newBufferWithLength:v29 + v40 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:a3 transform:a4 toBuffer:v30 offset:0 withArgumentEncoder:v68 computeEncoder:v75 index:1 textures:v73];
      [(HDRImageConverter_Metal *)self encodeOutputImage:a6 transform:&a7[2].var0.var1.var2 toBuffer:v30 offset:v27 withArgumentEncoder:v77 computeEncoder:v75 index:3 textures:v73];
      [(HDRImageConverter_Metal *)self encodeOutputImage:a8 transform:&a9[18].var1 toBuffer:v30 offset:v28 withArgumentEncoder:v77 computeEncoder:v75 index:5 textures:v73];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a4->var1.var1.var4.var1.var3 toBuffer:v30 offset:v61 withArgumentEncoder:v76 computeEncoder:v75 index:6];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a5->var1.var1.var4.var1.var3 toBuffer:v30 offset:v59 withArgumentEncoder:v76 computeEncoder:v75 index:7];
      [(HDRImageConverter_Metal *)self encodeOutputColorTransform:a7 toBuffer:v30 offset:v57 withArgumentEncoder:v78 computeEncoder:v75 index:8];
      [(HDRImageConverter_Metal *)self encodeOutputGainTransform:a9 toBuffer:v30 offset:v29 withArgumentEncoder:v64 computeEncoder:v75 index:11];
      LODWORD(v29) = gFunc_CVPixelBufferGetWidth(a6);
      Height = gFunc_CVPixelBufferGetHeight(a6);
      v32.i32[0] = v91;
      v32.i32[1] = v92;
      v72 = __PAIR64__(Height, v29);
      v33 = vand_s8(vadd_s32(__PAIR64__(Height, v29), vadd_s32(v32, -1)), 0xFFFF0000FFFFLL);
      v90 = v33.i32[1] / v92;
      v89 = v33.i32[0] / v91;
      [v75 setBytes:&v89 length:4 atIndex:15];
      v34.i64[0] = v72;
      v34.i64[1] = v72;
      v35.i64[0] = 0xFFFF0000FFFFLL;
      v35.i64[1] = 0xFFFF0000FFFFLL;
      v88 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v34, v35), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [v75 setBytes:&v88 length:16 atIndex:16];
      v36 = v89;
      v37 = v90;
      v86 = 0uLL;
      v87 = 0;
      *&v84 = v89;
      *(&v84 + 1) = v90;
      v85 = 1;
      [(HDRImageConverter_Metal *)self computeThreadGroupSizeForOutputSize:&v84 pipelineState:v74];
      v84 = 0uLL;
      v85 = 0;
      v82 = v86;
      v83 = v87;
      *&v80 = v36;
      *(&v80 + 1) = v37;
      v81 = 1;
      [(HDRImageConverter_Metal *)self computeGridSizeForThreadGroupSize:&v82 outputSize:&v80];
      v82 = v84;
      v83 = v85;
      v80 = v86;
      v81 = v87;
      [v75 dispatchThreadgroups:&v82 threadsPerThreadgroup:&v80];
      [v75 endEncoding];
      v38 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:v62];
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (BOOL)convertImage:(__CVBuffer *)a3 transform:(id *)a4 alternate:(id *)a5 gainMap:(__CVBuffer *)a6 transform:(id *)a7 alternate:(id *)a8 toImage:(__CVBuffer *)a9 transform:(id *)a10 gainMap:(__CVBuffer *)a11 transform:(id *)a12
{
  v13 = *&a10[2].var0.var2.var1.var7;
  v13.i16[3] = 0;
  v14 = *&a12[26].var1.var0;
  v14.i16[3] = 0;
  v15 = vmax_u16(v13, v14);
  v16 = vmovl_u16(vmax_u16(vdup_lane_s16(v15, 0).u32[0], vext_s8(v15, v15, 2uLL).u32[0]));
  v114 = v16.u16[2];
  v113 = v16.i16[0];
  v101 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"convert_gainmap_image_to_gainmap_image" subsampling:&v113];
  if (v101)
  {
    v17 = [(HDRImageConverter_Metal *)self metal];
    v18 = [v17 metalComputePipelineStateWithFunction:v101];

    v93 = v18;
    if (v18)
    {
      v19 = [(HDRImageConverter_Metal *)self metal];
      v20 = [v19 commandQueue];

      v84 = v20;
      v83 = [v20 commandBuffer];
      v94 = [v83 computeCommandEncoder];
      [v94 setComputePipelineState:v93];
      v95 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v99 = [v101 newArgumentEncoderWithBufferIndex:1];
      v98 = [v101 newArgumentEncoderWithBufferIndex:3];
      v97 = [v101 newArgumentEncoderWithBufferIndex:6];
      v96 = [v101 newArgumentEncoderWithBufferIndex:9];
      v100 = [v101 newArgumentEncoderWithBufferIndex:8];
      v85 = [v101 newArgumentEncoderWithBufferIndex:11];
      v21 = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      v22 = [v99 alignment];
      v23 = [v99 encodedLength];
      v24 = [v99 alignment];
      v81 = [v99 alignment];
      v79 = [v98 alignment];
      v77 = [v99 encodedLength];
      v75 = [v98 alignment];
      v74 = [v98 alignment];
      v73 = [v98 alignment];
      v72 = [v98 encodedLength];
      v71 = [v98 alignment];
      v70 = [v98 alignment];
      v69 = [v97 alignment];
      v68 = [v98 encodedLength];
      v67 = [v97 alignment];
      v66 = [v97 alignment];
      v65 = [v97 alignment];
      v64 = [v97 encodedLength];
      v63 = [v97 alignment];
      v62 = [v97 alignment];
      v61 = [v96 alignment];
      v60 = [v97 encodedLength];
      v59 = [v96 alignment];
      v58 = [v96 alignment];
      v57 = [v96 alignment];
      v56 = [v96 encodedLength];
      v55 = [v96 alignment];
      v54 = [v96 alignment];
      v53 = [v100 alignment];
      v52 = [v96 encodedLength];
      v51 = [v100 alignment];
      v50 = [v100 alignment];
      v49 = [v85 alignment];
      v48 = [v100 encodedLength];
      v47 = [v85 alignment];
      v25 = [v85 alignment];
      v26 = [v85 encodedLength];
      v27 = [(HDRImageConverter_Metal *)self metal];
      v28 = [v27 device];
      v29 = (v21 + (v23 + v24 - 1) / v81 * v22 - 1) / v21 * v21;
      v30 = (v21 + (v29 + v77 + v75 - 1) / v74 * v79 - 1) / v21 * v21;
      v31 = (v21 + (v30 + v72 + v71 - 1) / v70 * v73 - 1) / v21 * v21;
      v32 = (v21 + (v31 + v68 + v67 - 1) / v66 * v69 - 1) / v21 * v21;
      v82 = (v21 + (v32 + v64 + v63 - 1) / v62 * v65 - 1) / v21 * v21;
      v80 = (v21 + (v82 + v60 + v59 - 1) / v58 * v61 - 1) / v21 * v21;
      v78 = (v21 + (v80 + v56 + v55 - 1) / v54 * v57 - 1) / v21 * v21;
      v76 = (v21 + (v78 + v52 + v51 - 1) / v50 * v53 - 1) / v21 * v21;
      v33 = (v21 + (v76 + v48 + v47 - 1) / v25 * v49 - 1) / v21 * v21 + v26;
      v34 = (v21 + (v76 + v48 + v47 - 1) / v25 * v49 - 1) / v21 * v21;
      v35 = [v28 newBufferWithLength:v33 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:a3 transform:a4 toBuffer:v35 offset:0 withArgumentEncoder:v99 computeEncoder:v94 index:1 textures:v95];
      if (a7->var0.var0)
      {
        v36 = a7;
      }

      else
      {
        v36 = a8;
      }

      [(HDRImageConverter_Metal *)self encodeInputImage:a6 transform:v36 toBuffer:v35 offset:v29 withArgumentEncoder:v99 computeEncoder:v94 index:4 textures:v95];
      [(HDRImageConverter_Metal *)self encodeOutputImage:a9 transform:&a10[2].var0.var1.var2 toBuffer:v35 offset:v30 withArgumentEncoder:v98 computeEncoder:v94 index:3 textures:v95];
      [(HDRImageConverter_Metal *)self encodeOutputImage:a11 transform:&a12[18].var1 toBuffer:v35 offset:v31 withArgumentEncoder:v98 computeEncoder:v94 index:5 textures:v95];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a4->var1.var1.var4.var1.var3 toBuffer:v35 offset:v32 withArgumentEncoder:v97 computeEncoder:v94 index:6];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a5->var1.var1.var4.var1.var3 toBuffer:v35 offset:v82 withArgumentEncoder:v97 computeEncoder:v94 index:7];
      [(HDRImageConverter_Metal *)self encodeInputGainTransform:&a7[10].var1.var1 toBuffer:v35 offset:v80 withArgumentEncoder:v96 computeEncoder:v94 index:9];
      [(HDRImageConverter_Metal *)self encodeInputGainTransform:&a8[10].var1.var1 toBuffer:v35 offset:v78 withArgumentEncoder:v96 computeEncoder:v94 index:10];
      [(HDRImageConverter_Metal *)self encodeOutputColorTransform:a10 toBuffer:v35 offset:v76 withArgumentEncoder:v100 computeEncoder:v94 index:8];
      [(HDRImageConverter_Metal *)self encodeOutputGainTransform:a12 toBuffer:v35 offset:v34 withArgumentEncoder:v85 computeEncoder:v94 index:11];
      Width = gFunc_CVPixelBufferGetWidth(a9);
      Height = gFunc_CVPixelBufferGetHeight(a9);
      v39.i32[0] = v113;
      v39.i32[1] = v114;
      v92 = __PAIR64__(Height, Width);
      v40 = vand_s8(vadd_s32(__PAIR64__(Height, Width), vadd_s32(v39, -1)), 0xFFFF0000FFFFLL);
      v112 = v40.i32[1] / v114;
      v111 = v40.i32[0] / v113;
      [v94 setBytes:&v111 length:4 atIndex:15];
      v41.i64[0] = v92;
      v41.i64[1] = v92;
      v42.i64[0] = 0xFFFF0000FFFFLL;
      v42.i64[1] = 0xFFFF0000FFFFLL;
      v110 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v41, v42), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [v94 setBytes:&v110 length:16 atIndex:16];
      v43 = v111;
      v44 = v112;
      v108 = 0uLL;
      v109 = 0;
      *&v106 = v111;
      *(&v106 + 1) = v112;
      v107 = 1;
      [(HDRImageConverter_Metal *)self computeThreadGroupSizeForOutputSize:&v106 pipelineState:v93];
      v106 = 0uLL;
      v107 = 0;
      v104 = v108;
      v105 = v109;
      *&v102 = v43;
      *(&v102 + 1) = v44;
      v103 = 1;
      [(HDRImageConverter_Metal *)self computeGridSizeForThreadGroupSize:&v104 outputSize:&v102];
      v104 = v106;
      v105 = v107;
      v102 = v108;
      v103 = v109;
      [v94 dispatchThreadgroups:&v104 threadsPerThreadgroup:&v102];
      [v94 endEncoding];
      v45 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:v83];
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
  }

  return v45;
}

- (BOOL)computeGainMap:(__CVBuffer *)a3 transform:(id *)a4 fromBaseImage:(__CVBuffer *)a5 transform:(id *)a6 alternateImage:(__CVBuffer *)a7 transform:(id *)a8
{
  v9 = vmovl_u16(vmax_u16(vdup_lane_s16(*&a4[26].var1.var0, 0).u32[0], vext_s8(*&a4[26].var1.var0, *&a4[26].var1.var0, 2uLL).u32[0]));
  v82 = v9.u16[2];
  v81 = v9.i16[0];
  v69 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"compute_gainmap" subsampling:&v81];
  if (v69)
  {
    v10 = [(HDRImageConverter_Metal *)self metal];
    v11 = [v10 metalComputePipelineStateWithFunction:v69];

    v65 = v11;
    if (v11)
    {
      v12 = [(HDRImageConverter_Metal *)self metal];
      v13 = [v12 commandQueue];

      v54 = v13;
      v53 = [v13 commandBuffer];
      v66 = [v53 computeCommandEncoder];
      [v66 setComputePipelineState:v65];
      v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v67 = [v69 newArgumentEncoderWithBufferIndex:1];
      v68 = [v69 newArgumentEncoderWithBufferIndex:5];
      v64 = [v69 newArgumentEncoderWithBufferIndex:6];
      v55 = [v69 newArgumentEncoderWithBufferIndex:11];
      v14 = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      v15 = [v67 alignment];
      v52 = [v67 encodedLength];
      v51 = [v67 alignment];
      v16 = [v67 alignment];
      v50 = [v68 alignment];
      v49 = [v67 encodedLength];
      v48 = [v68 alignment];
      v47 = [v68 alignment];
      v46 = [v64 alignment];
      v45 = [v68 encodedLength];
      v44 = [v64 alignment];
      v17 = [v64 alignment];
      v43 = [v64 alignment];
      v42 = [v64 encodedLength];
      v41 = [v64 alignment];
      v18 = [v64 alignment];
      v40 = [v55 alignment];
      v39 = [v64 encodedLength];
      v38 = [v55 alignment];
      v19 = [v55 alignment];
      v20 = [v55 encodedLength];
      v21 = [(HDRImageConverter_Metal *)self metal];
      v22 = [v21 device];
      v23 = (v14 + (v52 + v51 - 1) / v16 * v15 - 1) / v14 * v14;
      v24 = (v14 + (v23 + v49 + v48 - 1) / v47 * v50 - 1) / v14 * v14;
      v25 = (v14 + (v24 + v45 + v44 - 1) / v17 * v46 - 1) / v14 * v14;
      v26 = (v14 + (v25 + v42 + v41 - 1) / v18 * v43 - 1) / v14 * v14;
      v27 = (v14 + (v26 + v39 + v38 - 1) / v19 * v40 - 1) / v14 * v14;
      v28 = [v22 newBufferWithLength:v27 + v20 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:a5 transform:a6 toBuffer:v28 offset:0 withArgumentEncoder:v67 computeEncoder:v66 index:1 textures:v63];
      [(HDRImageConverter_Metal *)self encodeInputImage:a7 transform:a8 toBuffer:v28 offset:v23 withArgumentEncoder:v67 computeEncoder:v66 index:2 textures:v63];
      [(HDRImageConverter_Metal *)self encodeOutputImage:a3 transform:&a4[18].var1 toBuffer:v28 offset:v24 withArgumentEncoder:v68 computeEncoder:v66 index:5 textures:v63];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a6->var1.var1.var4.var1.var3 toBuffer:v28 offset:v25 withArgumentEncoder:v64 computeEncoder:v66 index:6];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a8->var1.var1.var4.var1.var3 toBuffer:v28 offset:v26 withArgumentEncoder:v64 computeEncoder:v66 index:7];
      [(HDRImageConverter_Metal *)self encodeOutputGainTransform:a4 toBuffer:v28 offset:v27 withArgumentEncoder:v55 computeEncoder:v66 index:11];
      LODWORD(v24) = gFunc_CVPixelBufferGetWidth(a3);
      Height = gFunc_CVPixelBufferGetHeight(a3);
      v30.i32[0] = v81;
      v30.i32[1] = v82;
      v62 = __PAIR64__(Height, v24);
      v31 = vand_s8(vadd_s32(__PAIR64__(Height, v24), vadd_s32(v30, -1)), 0xFFFF0000FFFFLL);
      v80 = v31.i32[1] / v82;
      v79 = v31.i32[0] / v81;
      [v66 setBytes:&v79 length:4 atIndex:15];
      v32.i64[0] = v62;
      v32.i64[1] = v62;
      v33.i64[0] = 0xFFFF0000FFFFLL;
      v33.i64[1] = 0xFFFF0000FFFFLL;
      v78 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v32, v33), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [v66 setBytes:&v78 length:16 atIndex:16];
      v34 = v79;
      v35 = v80;
      v76 = 0uLL;
      v77 = 0;
      *&v74 = v79;
      *(&v74 + 1) = v80;
      v75 = 1;
      [(HDRImageConverter_Metal *)self computeThreadGroupSizeForOutputSize:&v74 pipelineState:v65];
      v74 = 0uLL;
      v75 = 0;
      v72 = v76;
      v73 = v77;
      *&v70 = v34;
      *(&v70 + 1) = v35;
      v71 = 1;
      [(HDRImageConverter_Metal *)self computeGridSizeForThreadGroupSize:&v72 outputSize:&v70];
      v72 = v74;
      v73 = v75;
      v70 = v76;
      v71 = v77;
      [v66 dispatchThreadgroups:&v72 threadsPerThreadgroup:&v70];
      [v66 endEncoding];
      v36 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:v53];
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (BOOL)computeGainMap:(__CVBuffer *)a3 transform:(id *)a4 outputImage:(__CVBuffer *)a5 transform:(id *)a6 fromBaseImage:(__CVBuffer *)a7 transform:(id *)a8 alternateImage:(__CVBuffer *)a9 transform:(id *)a10
{
  v11 = *&a6[2].var0.var2.var1.var7;
  v11.i16[3] = 0;
  v12 = *&a4[26].var1.var0;
  v12.i16[3] = 0;
  v13 = vmax_u16(v11, v12);
  v14 = vmovl_u16(vmax_u16(vdup_lane_s16(v13, 0).u32[0], vext_s8(v13, v13, 2uLL).u32[0]));
  v99 = v14.u16[2];
  v98 = v14.i16[0];
  v86 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"compute_gainmap_image" subsampling:&v98];
  if (v86)
  {
    v15 = [(HDRImageConverter_Metal *)self metal];
    v16 = [v15 metalComputePipelineStateWithFunction:v86];

    v78 = v16;
    if (v16)
    {
      v17 = [(HDRImageConverter_Metal *)self metal];
      v18 = [v17 commandQueue];

      v69 = v18;
      v68 = [v18 commandBuffer];
      v79 = [v68 computeCommandEncoder];
      [v79 setComputePipelineState:v78];
      v80 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v82 = [v86 newArgumentEncoderWithBufferIndex:1];
      v85 = [v86 newArgumentEncoderWithBufferIndex:5];
      v84 = [v86 newArgumentEncoderWithBufferIndex:3];
      v81 = [v86 newArgumentEncoderWithBufferIndex:6];
      v83 = [v86 newArgumentEncoderWithBufferIndex:11];
      v70 = [v86 newArgumentEncoderWithBufferIndex:8];
      v19 = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      v20 = [v82 alignment];
      v21 = [v82 encodedLength];
      v66 = [v82 alignment];
      v64 = [v82 alignment];
      v62 = [v85 alignment];
      v61 = [v82 encodedLength];
      v60 = [v85 alignment];
      v59 = [v85 alignment];
      v58 = [v84 alignment];
      v57 = [v85 encodedLength];
      v56 = [v84 alignment];
      v55 = [v84 alignment];
      v54 = [v81 alignment];
      v53 = [v84 encodedLength];
      v52 = [v81 alignment];
      v51 = [v81 alignment];
      v50 = [v81 alignment];
      v49 = [v81 encodedLength];
      v48 = [v81 alignment];
      v47 = [v81 alignment];
      v46 = [v83 alignment];
      v45 = [v81 encodedLength];
      v44 = [v83 alignment];
      v43 = [v83 alignment];
      v42 = [v70 alignment];
      v41 = [v83 encodedLength];
      v22 = [v70 alignment];
      v23 = [v70 alignment];
      v24 = [v70 encodedLength];
      v25 = [(HDRImageConverter_Metal *)self metal];
      v26 = [v25 device];
      v27 = (v19 + (v21 + v66 - 1) / v64 * v20 - 1) / v19 * v19;
      v28 = (v19 + (v27 + v61 + v60 - 1) / v59 * v62 - 1) / v19 * v19;
      v29 = (v19 + (v28 + v57 + v56 - 1) / v55 * v58 - 1) / v19 * v19;
      v67 = (v19 + (v29 + v53 + v52 - 1) / v51 * v54 - 1) / v19 * v19;
      v65 = (v19 + (v67 + v49 + v48 - 1) / v47 * v50 - 1) / v19 * v19;
      v63 = (v19 + (v65 + v45 + v44 - 1) / v43 * v46 - 1) / v19 * v19;
      v30 = (v19 + (v63 + v41 + v22 - 1) / v23 * v42 - 1) / v19 * v19;
      v31 = [v26 newBufferWithLength:v30 + v24 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:a7 transform:a8 toBuffer:v31 offset:0 withArgumentEncoder:v82 computeEncoder:v79 index:1 textures:v80];
      [(HDRImageConverter_Metal *)self encodeInputImage:a9 transform:a10 toBuffer:v31 offset:v27 withArgumentEncoder:v82 computeEncoder:v79 index:2 textures:v80];
      [(HDRImageConverter_Metal *)self encodeOutputImage:a3 transform:&a4[18].var1 toBuffer:v31 offset:v28 withArgumentEncoder:v85 computeEncoder:v79 index:5 textures:v80];
      [(HDRImageConverter_Metal *)self encodeOutputImage:a5 transform:&a6[2].var0.var1.var2 toBuffer:v31 offset:v29 withArgumentEncoder:v84 computeEncoder:v79 index:3 textures:v80];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a8->var1.var1.var4.var1.var3 toBuffer:v31 offset:v67 withArgumentEncoder:v81 computeEncoder:v79 index:6];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a10->var1.var1.var4.var1.var3 toBuffer:v31 offset:v65 withArgumentEncoder:v81 computeEncoder:v79 index:7];
      [(HDRImageConverter_Metal *)self encodeOutputGainTransform:a4 toBuffer:v31 offset:v63 withArgumentEncoder:v83 computeEncoder:v79 index:11];
      [(HDRImageConverter_Metal *)self encodeOutputColorTransform:a6 toBuffer:v31 offset:v30 withArgumentEncoder:v70 computeEncoder:v79 index:8];
      LODWORD(v27) = gFunc_CVPixelBufferGetWidth(a5);
      Height = gFunc_CVPixelBufferGetHeight(a5);
      v33.i32[0] = v98;
      v33.i32[1] = v99;
      v77 = __PAIR64__(Height, v27);
      v34 = vand_s8(vadd_s32(__PAIR64__(Height, v27), vadd_s32(v33, -1)), 0xFFFF0000FFFFLL);
      v97 = v34.i32[1] / v99;
      v96 = v34.i32[0] / v98;
      [v79 setBytes:&v96 length:4 atIndex:15];
      v35.i64[0] = v77;
      v35.i64[1] = v77;
      v36.i64[0] = 0xFFFF0000FFFFLL;
      v36.i64[1] = 0xFFFF0000FFFFLL;
      v95 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v35, v36), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [v79 setBytes:&v95 length:16 atIndex:16];
      v37 = v96;
      v38 = v97;
      v93 = 0uLL;
      v94 = 0;
      *&v91 = v96;
      *(&v91 + 1) = v97;
      v92 = 1;
      [(HDRImageConverter_Metal *)self computeThreadGroupSizeForOutputSize:&v91 pipelineState:v78];
      v91 = 0uLL;
      v92 = 0;
      v89 = v93;
      v90 = v94;
      *&v87 = v37;
      *(&v87 + 1) = v38;
      v88 = 1;
      [(HDRImageConverter_Metal *)self computeGridSizeForThreadGroupSize:&v89 outputSize:&v87];
      v89 = v91;
      v90 = v92;
      v87 = v93;
      v88 = v94;
      [v79 dispatchThreadgroups:&v89 threadsPerThreadgroup:&v87];
      [v79 endEncoding];
      v39 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:v68];
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (BOOL)computeLumaGainHistogram:(id *)a3 scale:(__CVBuffer *)a4 image:(id *)a5 transform:(__CVBuffer *)a6 gainMap:(id *)a7 transform:
{
  v69 = v7;
  v68 = 524296;
  v56 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"compute_luma_gain_histogram" subsampling:&v68];
  if (v56)
  {
    v9 = [(HDRImageConverter_Metal *)self metal];
    v10 = [v9 metalComputePipelineStateWithFunction:v56];

    v53 = v10;
    if (v10)
    {
      v11 = [(HDRImageConverter_Metal *)self metal];
      v12 = [v11 commandQueue];

      v42 = v12;
      v44 = [v12 commandBuffer];
      v54 = [v44 computeCommandEncoder];
      [v54 setComputePipelineState:v53];
      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v52 = [v56 newArgumentEncoderWithBufferIndex:1];
      v55 = [v56 newArgumentEncoderWithBufferIndex:6];
      v43 = [v56 newArgumentEncoderWithBufferIndex:9];
      v13 = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      v41 = [v52 alignment];
      v40 = [v52 encodedLength];
      v39 = [v52 alignment];
      v14 = [v52 alignment];
      v38 = [v55 alignment];
      v37 = [v52 encodedLength];
      v36 = [v55 alignment];
      v15 = [v55 alignment];
      v35 = [v43 alignment];
      v16 = [v55 encodedLength];
      v17 = [v43 alignment];
      v18 = [v43 alignment];
      v19 = [v43 encodedLength];
      v20 = [(HDRImageConverter_Metal *)self metal];
      v21 = [v20 device];
      v22 = (v13 + (v40 + v39 - 1) / v14 * v41 - 1) / v13 * v13;
      v23 = (v13 + (v22 + v37 + v36 - 1) / v15 * v38 - 1) / v13 * v13;
      v24 = (v13 + (v23 + v16 + v17 - 1) / v18 * v35 - 1) / v13 * v13;
      v25 = (v19 + v13 + v24 - 1) / v13 * v13;
      v26 = [v21 newBufferWithLength:v25 + 4096 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:a4 transform:a5 toBuffer:v26 offset:0 withArgumentEncoder:v52 computeEncoder:v54 index:1 textures:v47];
      [(HDRImageConverter_Metal *)self encodeInputImage:a6 transform:a7 toBuffer:v26 offset:v22 withArgumentEncoder:v52 computeEncoder:v54 index:4 textures:v47];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a5->var1.var1.var4.var1.var3 toBuffer:v26 offset:v23 withArgumentEncoder:v55 computeEncoder:v54 index:6];
      [(HDRImageConverter_Metal *)self encodeInputGainTransform:&a7[10].var1.var1 toBuffer:v26 offset:v24 withArgumentEncoder:v43 computeEncoder:v54 index:9];
      [v54 setBuffer:v26 offset:v25 atIndex:12];
      [v54 setBytes:&v69 length:8 atIndex:13];
      LOWORD(v21) = gFunc_CVPixelBufferGetWidth(a4);
      Height = gFunc_CVPixelBufferGetHeight(a4);
      v66 = v21;
      [v54 setBytes:&v66 length:4 atIndex:15];
      v27.i16[0] = v66;
      v27.i16[2] = Height;
      v27.i64[1] = v27.i64[0];
      v28.i64[0] = 0xFFFF0000FFFFLL;
      v28.i64[1] = 0xFFFF0000FFFFLL;
      v65 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vandq_s8(v27, v28), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [v54 setBytes:&v65 length:16 atIndex:16];
      v29.i16[0] = v66;
      v29.i16[2] = Height;
      v30.i32[0] = v68;
      v30.i32[1] = HIWORD(v68);
      v31 = vand_s8(vadd_s32(v29, vadd_s32(v30, -1)), 0xFFFF0000FFFFLL);
      v31.i32[0] /= v68;
      v31.i32[1] /= HIWORD(v68);
      v63 = 0uLL;
      v64 = 0;
      v51 = v31;
      *&v32 = v31.u32[0];
      *(&v32 + 1) = v31.u32[1];
      v61 = v32;
      v62 = 1;
      [(HDRImageConverter_Metal *)self computeThreadGroupSizeForOutputSize:&v61 pipelineState:v53];
      v61 = 0uLL;
      v62 = 0;
      v59 = v63;
      v60 = v64;
      *&v57 = v51.u16[0];
      *(&v57 + 1) = v51.u16[2];
      v58 = 1;
      [(HDRImageConverter_Metal *)self computeGridSizeForThreadGroupSize:&v59 outputSize:&v57];
      v59 = v61;
      v60 = v62;
      v57 = v63;
      v58 = v64;
      [v54 dispatchThreadgroups:&v59 threadsPerThreadgroup:&v57];
      [v54 endEncoding];
      v33 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:v44];

      memcpy(a3, ([v26 contents] + v25), sizeof($1FF2F8D2599020761ACEFF31D93EEB84));
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (BOOL)computeStatistics:(id *)a3 image:(__CVBuffer *)a4 transform:(id *)a5
{
  LOWORD(v50) = gFunc_CVPixelBufferGetWidth(a4);
  HIWORD(v50) = gFunc_CVPixelBufferGetHeight(a4);
  v62 = v50;
  v7 = v50 * HIWORD(v50);
  if (v7 <= 0x100000)
  {
    v10 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = v7;
      v7 >>= 2;
      v10 = v8 + 1;
      if (v9 < 0x400004)
      {
        break;
      }
    }

    while (v8++ < 5);
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️ [STATS] Using subsample factor: %u (%u px)", v10, v7);
  }

  v61 = 1 << v10;
  v60 = v61;
  v49 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"compute_image_stats" subsampling:&v60];
  if (v49)
  {
    v12 = [(HDRImageConverter_Metal *)self metal];
    v13 = [v12 metalComputePipelineStateWithFunction:v49];

    v48 = v13;
    if (v13)
    {
      v14 = [(HDRImageConverter_Metal *)self metal];
      v15 = [v14 commandQueue];

      v39 = v15;
      v41 = [v15 commandBuffer];
      v47 = [v41 computeCommandEncoder];
      [v47 setComputePipelineState:v48];
      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v46 = [v49 newArgumentEncoderWithBufferIndex:1];
      v40 = [v49 newArgumentEncoderWithBufferIndex:6];
      v16 = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      v17 = [v40 alignment];
      v18 = [v46 encodedLength];
      v19 = [v40 alignment];
      v20 = [v40 alignment];
      v21 = [v40 encodedLength];
      v22 = [(HDRImageConverter_Metal *)self metal];
      v23 = [v22 device];
      v24 = (v16 + (v18 + v19 - 1) / v20 * v17 - 1) / v16 * v16;
      v25 = (v21 + v16 + v24 - 1) / v16 * v16;
      v26 = [v23 newBufferWithLength:v25 + 12 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:a4 transform:a5 toBuffer:v26 offset:0 withArgumentEncoder:v46 computeEncoder:v47 index:1 textures:v42];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a5->var1.var1.var4.var1.var3 toBuffer:v26 offset:v24 withArgumentEncoder:v40 computeEncoder:v47 index:6];
      [v47 setBuffer:v26 offset:v25 atIndex:14];
      [v47 setBytes:&v62 length:4 atIndex:15];
      v27.i16[2] = HIWORD(v62);
      v27.i16[0] = v62;
      v27.i64[1] = v27.i64[0];
      v28.i64[0] = 0xFFFF0000FFFFLL;
      v28.i64[1] = 0xFFFF0000FFFFLL;
      v59 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vandq_s8(v27, v28), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [v47 setBytes:&v59 length:16 atIndex:16];
      v29.i16[2] = HIWORD(v62);
      v29.i16[0] = v62;
      v30.i32[0] = v60;
      v30.i32[1] = v61;
      v31 = vand_s8(vadd_s32(v29, vadd_s32(v30, -1)), 0xFFFF0000FFFFLL);
      v31.i32[0] /= v60;
      v31.i32[1] /= v61;
      v57 = 0uLL;
      v58 = 0;
      v45 = v31;
      *&v32 = v31.u32[0];
      *(&v32 + 1) = v31.u32[1];
      v55 = v32;
      v56 = 1;
      [(HDRImageConverter_Metal *)self computeThreadGroupSizeForOutputSize:&v55 pipelineState:v48];
      v55 = 0uLL;
      v56 = 0;
      v53 = v57;
      v54 = v58;
      *&v51 = v45.u16[0];
      *(&v51 + 1) = v45.u16[2];
      v52 = 1;
      [(HDRImageConverter_Metal *)self computeGridSizeForThreadGroupSize:&v53 outputSize:&v51];
      v53 = v55;
      v54 = v56;
      v51 = v57;
      v52 = v58;
      [v47 dispatchThreadgroups:&v53 threadsPerThreadgroup:&v51];
      [v47 endEncoding];
      v33 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:v41];

      v34 = [v26 contents];
      if (a3)
      {
        v35 = v34 + v25;
        a3->var0 = ldexpf(*(v34 + v25), -10);
        v36 = ldexpf(*(v35 + 4), -10);
        v37 = *(v35 + 8);
        a3->var1 = v36 / v37;
        a3->var2 = v37;
      }
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (BOOL)computeStatistics:(id *)a3 image:(__CVBuffer *)a4 transform:(id *)a5 gainMap:(__CVBuffer *)a6 transform:(id *)a7
{
  LOWORD(v65) = gFunc_CVPixelBufferGetWidth(a4);
  HIWORD(v65) = gFunc_CVPixelBufferGetHeight(a4);
  v77 = v65;
  v8 = v65 * HIWORD(v65);
  if (v8 <= 0x100000)
  {
    v11 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = v8;
      v8 >>= 2;
      v11 = v9 + 1;
      if (v10 < 0x400004)
      {
        break;
      }
    }

    while (v9++ < 5);
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️ [STATS] Using subsample factor: %u (%u px)", v11, v8);
  }

  v76 = 1 << v11;
  v75 = v76;
  v64 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"compute_image_gainmap_stats" subsampling:&v75];
  if (v64)
  {
    v13 = [(HDRImageConverter_Metal *)self metal];
    v14 = [v13 metalComputePipelineStateWithFunction:v64];

    v62 = v14;
    if (v14)
    {
      v15 = [(HDRImageConverter_Metal *)self metal];
      v16 = [v15 commandQueue];

      v50 = v16;
      v52 = [v16 commandBuffer];
      v60 = [v52 computeCommandEncoder];
      [v60 setComputePipelineState:v62];
      v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v61 = [v64 newArgumentEncoderWithBufferIndex:1];
      v63 = [v64 newArgumentEncoderWithBufferIndex:6];
      v51 = [v64 newArgumentEncoderWithBufferIndex:9];
      v17 = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      v49 = [v61 alignment];
      v48 = [v61 encodedLength];
      v47 = [v61 alignment];
      v18 = [v61 alignment];
      v46 = [v63 alignment];
      v45 = [v61 encodedLength];
      v44 = [v63 alignment];
      v19 = [v63 alignment];
      v43 = [v51 alignment];
      v20 = [v63 encodedLength];
      v21 = [v51 alignment];
      v22 = [v51 alignment];
      v23 = [v51 encodedLength];
      v24 = [(HDRImageConverter_Metal *)self metal];
      v25 = [v24 device];
      v26 = (v17 + (v48 + v47 - 1) / v18 * v49 - 1) / v17 * v17;
      v27 = (v17 + (v26 + v45 + v44 - 1) / v19 * v46 - 1) / v17 * v17;
      v28 = (v17 + (v27 + v20 + v21 - 1) / v22 * v43 - 1) / v17 * v17;
      v29 = (v23 + v17 + v28 - 1) / v17 * v17;
      v30 = [v25 newBufferWithLength:v29 + 12 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:a4 transform:a5 toBuffer:v30 offset:0 withArgumentEncoder:v61 computeEncoder:v60 index:1 textures:v56];
      [(HDRImageConverter_Metal *)self encodeInputImage:a6 transform:a7 toBuffer:v30 offset:v26 withArgumentEncoder:v61 computeEncoder:v60 index:4 textures:v56];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a5->var1.var1.var4.var1.var3 toBuffer:v30 offset:v27 withArgumentEncoder:v63 computeEncoder:v60 index:6];
      [(HDRImageConverter_Metal *)self encodeInputGainTransform:&a7[10].var1.var1 toBuffer:v30 offset:v28 withArgumentEncoder:v51 computeEncoder:v60 index:9];
      [v60 setBuffer:v30 offset:v29 atIndex:14];
      [v60 setBytes:&v77 length:4 atIndex:15];
      v31.i16[2] = HIWORD(v77);
      v31.i16[0] = v77;
      v31.i64[1] = v31.i64[0];
      v32.i64[0] = 0xFFFF0000FFFFLL;
      v32.i64[1] = 0xFFFF0000FFFFLL;
      v74 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vandq_s8(v31, v32), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [v60 setBytes:&v74 length:16 atIndex:16];
      v33.i16[2] = HIWORD(v77);
      v33.i16[0] = v77;
      v34.i32[0] = v75;
      v34.i32[1] = v76;
      v35 = vand_s8(vadd_s32(v33, vadd_s32(v34, -1)), 0xFFFF0000FFFFLL);
      v35.i32[0] /= v75;
      v35.i32[1] /= v76;
      v72 = 0uLL;
      v73 = 0;
      v59 = v35;
      *&v36 = v35.u32[0];
      *(&v36 + 1) = v35.u32[1];
      v70 = v36;
      v71 = 1;
      [(HDRImageConverter_Metal *)self computeThreadGroupSizeForOutputSize:&v70 pipelineState:v62];
      v70 = 0uLL;
      v71 = 0;
      v68 = v72;
      v69 = v73;
      *&v66 = v59.u16[0];
      *(&v66 + 1) = v59.u16[2];
      v67 = 1;
      [(HDRImageConverter_Metal *)self computeGridSizeForThreadGroupSize:&v68 outputSize:&v66];
      v68 = v70;
      v69 = v71;
      v66 = v72;
      v67 = v73;
      [v60 dispatchThreadgroups:&v68 threadsPerThreadgroup:&v66];
      [v60 endEncoding];
      v37 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:v52];

      v38 = [v30 contents];
      if (a3)
      {
        v39 = v38 + v29;
        a3->var0 = ldexpf(*(v38 + v29), -10);
        v40 = ldexpf(*(v39 + 4), -10);
        v41 = *(v39 + 8);
        a3->var1 = v40 / v41;
        a3->var2 = v41;
      }
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

@end