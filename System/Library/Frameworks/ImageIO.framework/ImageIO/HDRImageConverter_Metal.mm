@interface HDRImageConverter_Metal
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)computeGridSizeForThreadGroupSize:(SEL)size outputSize:(id *)outputSize;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)computeThreadGroupSizeForOutputSize:(SEL)size pipelineState:(id *)state;
- (BOOL)canUseImageBlocks;
- (BOOL)commitAndWaitUntilCompleted:(id)completed;
- (BOOL)computeGainMap:(__CVBuffer *)map transform:(id *)transform fromBaseImage:(__CVBuffer *)image transform:(id *)a6 alternateImage:(__CVBuffer *)alternateImage transform:(id *)a8;
- (BOOL)computeGainMap:(__CVBuffer *)map transform:(id *)transform outputImage:(__CVBuffer *)image transform:(id *)a6 fromBaseImage:(__CVBuffer *)baseImage transform:(id *)a8 alternateImage:(__CVBuffer *)alternateImage transform:(id *)self0;
- (BOOL)computeLumaGainHistogram:(id *)histogram scale:(__CVBuffer *)scale image:(id *)image transform:(__CVBuffer *)transform gainMap:(id *)map transform:;
- (BOOL)computeStatistics:(id *)statistics image:(__CVBuffer *)image transform:(id *)transform;
- (BOOL)computeStatistics:(id *)statistics image:(__CVBuffer *)image transform:(id *)transform gainMap:(__CVBuffer *)map transform:(id *)a7;
- (BOOL)convertImage:(__CVBuffer *)image transform:(id *)transform alternate:(id *)alternate gainMap:(__CVBuffer *)map transform:(id *)a7 alternate:(id *)a8 toImage:(__CVBuffer *)toImage transform:(id *)self0 gainMap:(__CVBuffer *)self1 transform:(id *)self2;
- (BOOL)convertImage:(__CVBuffer *)image transform:(id *)transform alternate:(id *)alternate toImage:(__CVBuffer *)toImage transform:(id *)a7 gainMap:(__CVBuffer *)map transform:(id *)a9;
- (BOOL)convertImage:(__CVBuffer *)image transform:(id *)transform gainMap:(__CVBuffer *)map transform:(id *)a6 toImage:(__CVBuffer *)toImage transform:(id *)a8;
- (BOOL)convertImage:(__CVBuffer *)image transform:(id *)transform toImage:(__CVBuffer *)toImage transform:(id *)a6;
- (BOOL)isPixelFormatSupported:(unsigned int)supported;
- (HDRImageConverter_Metal)init;
- (id)conversionFunctionWithName:(id)name subsampling:;
- (id)description;
- (unint64_t)minimumConstantBufferOffsetAlignment;
- (void)dealloc;
- (void)encodeInputColorTransform:(id *)transform toBuffer:(id)buffer offset:(unint64_t)offset withArgumentEncoder:(id)encoder computeEncoder:(id)computeEncoder index:(unint64_t)index;
- (void)encodeInputGainTransform:(id *)transform toBuffer:(id)buffer offset:(unint64_t)offset withArgumentEncoder:(id)encoder computeEncoder:(id)computeEncoder index:(unint64_t)index;
- (void)encodeInputImage:(__CVBuffer *)image transform:(id *)transform toBuffer:(id)buffer offset:(unint64_t)offset withArgumentEncoder:(id)encoder computeEncoder:(id)computeEncoder index:(unint64_t)index textures:(id)self0;
- (void)encodeOutputColorTransform:(id *)transform toBuffer:(id)buffer offset:(unint64_t)offset withArgumentEncoder:(id)encoder computeEncoder:(id)computeEncoder index:(unint64_t)index;
- (void)encodeOutputGainTransform:(id *)transform toBuffer:(id)buffer offset:(unint64_t)offset withArgumentEncoder:(id)encoder computeEncoder:(id)computeEncoder index:(unint64_t)index;
- (void)encodeOutputImage:(__CVBuffer *)image transform:(id *)transform toBuffer:(id)buffer offset:(unint64_t)offset withArgumentEncoder:(id)encoder computeEncoder:(id)computeEncoder index:(unint64_t)index textures:(id)self0;
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
  metal = [(HDRImageConverter_Metal *)self metal];
  device = [metal device];
  name = [device name];
  v8 = [v3 stringWithFormat:@"%@[%@]", v4, name];

  return v8;
}

- (BOOL)commitAndWaitUntilCompleted:(id)completed
{
  completedCopy = completed;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__HDRImageConverter_Metal_commitAndWaitUntilCompleted___block_invoke;
  v6[3] = &unk_1E6EF87E0;
  v6[4] = &v7;
  [completedCopy addCompletedHandler:v6];
  [completedCopy commit];
  [completedCopy waitUntilCompleted];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)computeThreadGroupSizeForOutputSize:(SEL)size pipelineState:(id *)state
{
  v21 = a5;
  threadExecutionWidth = [v21 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [v21 maxTotalThreadsPerThreadgroup];
  v9 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  if (threadExecutionWidth <= maxTotalThreadsPerThreadgroup)
  {
    v13 = 2 * threadExecutionWidth;
    v14 = -1;
    v15 = -1;
    v16 = threadExecutionWidth;
    v11 = threadExecutionWidth;
    v10 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    do
    {
      var1 = state->var1;
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

      if ((var1 + v9 - 1) / v9 * v9 * (state->var0 + v16 - 1) / v16 * v16 - var1 * state->var0 <= v14)
      {
        v19 = v17 / v18;
        if (v19 <= v15)
        {
          v10 = v9;
          v11 = v16;
          v15 = v19;
          v14 = (var1 + v9 - 1) / v9 * v9 * (state->var0 + v16 - 1) / v16 * v16 - var1 * state->var0;
        }
      }

      v16 += threadExecutionWidth;
      v9 = maxTotalThreadsPerThreadgroup / v13;
      v13 += threadExecutionWidth;
    }

    while (v16 <= maxTotalThreadsPerThreadgroup);
  }

  else
  {
    v10 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    v11 = threadExecutionWidth;
  }

  retstr->var0 = v11;
  retstr->var1 = v10;
  retstr->var2 = 1;

  return MEMORY[0x1EEE66C38]();
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)computeGridSizeForThreadGroupSize:(SEL)size outputSize:(id *)outputSize
{
  v5 = (a5->var1 + outputSize->var1 - 1) / outputSize->var1;
  retstr->var0 = (a5->var0 + outputSize->var0 - 1) / outputSize->var0;
  retstr->var1 = v5;
  retstr->var2 = 1;
  return self;
}

- (void)encodeInputImage:(__CVBuffer *)image transform:(id *)transform toBuffer:(id)buffer offset:(unint64_t)offset withArgumentEncoder:(id)encoder computeEncoder:(id)computeEncoder index:(unint64_t)index textures:(id)self0
{
  bufferCopy = buffer;
  encoderCopy = encoder;
  computeEncoderCopy = computeEncoder;
  texturesCopy = textures;
  var0 = transform->var0;
  metal = [(HDRImageConverter_Metal *)self metal];
  v20 = [metal metalTextureFromBuffer:image plane:0];

  if (var0 == 4)
  {
    v21 = texturesCopy;
    metal2 = [(HDRImageConverter_Metal *)self metal];
    v23 = [metal2 metalTextureFromBuffer:image plane:1];
  }

  else
  {
    v23 = 0;
    v21 = texturesCopy;
  }

  [encoderCopy setArgumentBuffer:bufferCopy offset:offset];
  if (v20)
  {
    v24 = gFunc_CVMetalTextureGetTexture(v20);
  }

  else
  {
    v24 = 0;
  }

  [encoderCopy setTexture:v24 atIndex:1];
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

  [encoderCopy setTexture:v25 atIndex:2];
  if (v23)
  {
  }

  v26 = [encoderCopy constantDataAtIndex:3];
  v27 = *&transform->var0;
  v28 = *&transform[4].var0;
  v29 = *&transform[12].var0;
  v26[2] = *&transform[8].var0;
  v26[3] = v29;
  *v26 = v27;
  v26[1] = v28;
  v30 = *&transform[16].var0;
  v31 = *&transform[20].var0;
  v32 = *&transform[28].var0;
  v26[6] = *&transform[24].var0;
  v26[7] = v32;
  v26[4] = v30;
  v26[5] = v31;
  [computeEncoderCopy setBuffer:bufferCopy offset:offset atIndex:index];
  if (v20)
  {
    v33 = gFunc_CVMetalTextureGetTexture(v20);
    [computeEncoderCopy useResource:v33 usage:1];

    [v21 addObject:v20];
  }

  if (v23)
  {
    v34 = gFunc_CVMetalTextureGetTexture(v23);
    [computeEncoderCopy useResource:v34 usage:1];

    [v21 addObject:v23];
  }
}

- (void)encodeOutputImage:(__CVBuffer *)image transform:(id *)transform toBuffer:(id)buffer offset:(unint64_t)offset withArgumentEncoder:(id)encoder computeEncoder:(id)computeEncoder index:(unint64_t)index textures:(id)self0
{
  bufferCopy = buffer;
  encoderCopy = encoder;
  computeEncoderCopy = computeEncoder;
  texturesCopy = textures;
  var0 = transform->var0;
  metal = [(HDRImageConverter_Metal *)self metal];
  v20 = [metal metalTextureFromBuffer:image plane:0];

  if (var0 == 4)
  {
    v21 = texturesCopy;
    metal2 = [(HDRImageConverter_Metal *)self metal];
    v23 = [metal2 metalTextureFromBuffer:image plane:1];
  }

  else
  {
    v23 = 0;
    v21 = texturesCopy;
  }

  [encoderCopy setArgumentBuffer:bufferCopy offset:offset];
  if (v20)
  {
    v24 = gFunc_CVMetalTextureGetTexture(v20);
  }

  else
  {
    v24 = 0;
  }

  [encoderCopy setTexture:v24 atIndex:1];
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

  [encoderCopy setTexture:v25 atIndex:2];
  if (v23)
  {
  }

  v26 = [encoderCopy constantDataAtIndex:4];
  v27 = *&transform->var0;
  v28 = *&transform[8].var0;
  v26[1] = *&transform[4].var0;
  v26[2] = v28;
  *v26 = v27;
  v29 = *&transform[12].var0;
  v30 = *&transform[16].var0;
  v31 = *&transform[24].var0;
  v26[5] = *&transform[20].var0;
  v26[6] = v31;
  v26[3] = v29;
  v26[4] = v30;
  [computeEncoderCopy setBuffer:bufferCopy offset:offset atIndex:index];
  if (v20)
  {
    v32 = gFunc_CVMetalTextureGetTexture(v20);
    [computeEncoderCopy useResource:v32 usage:2];

    [v21 addObject:v20];
  }

  if (v23)
  {
    v33 = gFunc_CVMetalTextureGetTexture(v23);
    [computeEncoderCopy useResource:v33 usage:2];

    [v21 addObject:v23];
  }
}

- (void)encodeInputColorTransform:(id *)transform toBuffer:(id)buffer offset:(unint64_t)offset withArgumentEncoder:(id)encoder computeEncoder:(id)computeEncoder index:(unint64_t)index
{
  bufferCopy = buffer;
  encoderCopy = encoder;
  computeEncoderCopy = computeEncoder;
  if (transform->var0.var0 == 6)
  {
    metal = [(HDRImageConverter_Metal *)self metal];
    v17 = [metal metalTextureFromTableData:*&transform->var1.var1.var3];
  }

  else
  {
    v17 = 0;
  }

  if (LODWORD(transform->var1.var1.var7) == 5)
  {
    metal2 = [(HDRImageConverter_Metal *)self metal];
    v19 = [metal2 metalTextureFromTableData:*&transform[1].var0.var0];
  }

  else
  {
    v19 = 0;
  }

  if (LODWORD(transform->var1.var1.var7) == 6)
  {
    metal3 = [(HDRImageConverter_Metal *)self metal];
    v21 = [metal3 metalTextureFromCubeData:*&transform[1].var0.var0];
  }

  else
  {
    v21 = 0;
  }

  if (LODWORD(transform[1].var1.var1.var7) == 6)
  {
    metal4 = [(HDRImageConverter_Metal *)self metal];
    v23 = [metal4 metalTextureFromTableData:transform[1].var1.var4.var2];
  }

  else
  {
    v23 = 0;
  }

  [encoderCopy setArgumentBuffer:bufferCopy offset:offset];
  var0 = transform->var0.var0;
  *[encoderCopy constantDataAtIndex:1] = var0;
  v25 = [encoderCopy constantDataAtIndex:2];
  v26 = *&transform->var0.var1.var3;
  v27 = *&transform->var1.var0;
  v25[1] = *&transform->var0.var1.var7;
  v25[2] = v27;
  *v25 = v26;
  [encoderCopy setTexture:v17 atIndex:11];
  var7 = transform->var1.var1.var7;
  *[encoderCopy constantDataAtIndex:12] = var7;
  v29 = [encoderCopy constantDataAtIndex:13];
  v30 = *&transform->var1.var3.var1;
  v31 = *&transform->var1.var4.var1.var1;
  v32 = *&transform->var1.var4.var2;
  v29[2] = *&transform->var1.var4.var1.var5;
  v29[3] = v32;
  *v29 = v30;
  v29[1] = v31;
  v33 = [encoderCopy constantDataAtIndex:23];
  v34 = *&transform[1].var0.var1.var3;
  v35 = *&transform[1].var0.var1.var7;
  v36 = *&transform[1].var1.var1.var3;
  v33[2] = *&transform[1].var1.var0;
  v33[3] = v36;
  *v33 = v34;
  v33[1] = v35;
  [encoderCopy setTexture:v19 atIndex:25];
  [encoderCopy setTexture:v21 atIndex:26];
  v37 = transform[1].var1.var1.var7;
  *[encoderCopy constantDataAtIndex:27] = v37;
  v38 = [encoderCopy constantDataAtIndex:28];
  v39 = *&transform[1].var1.var3.var1;
  v40 = *&transform[1].var1.var4.var1.var5;
  v38[1] = *&transform[1].var1.var4.var1.var1;
  v38[2] = v40;
  *v38 = v39;
  [encoderCopy setTexture:v23 atIndex:37];
  v41 = [encoderCopy constantDataAtIndex:38];
  v42 = *&transform[2].var0.var0;
  v43 = *&transform[2].var0.var1.var3;
  v44 = *&transform[2].var1.var0;
  v41[2] = *&transform[2].var0.var1.var7;
  v41[3] = v44;
  *v41 = v42;
  v41[1] = v43;
  [computeEncoderCopy setBuffer:bufferCopy offset:offset atIndex:index];
  if (v17)
  {
    [computeEncoderCopy useResource:v17 usage:1];
  }

  if (v19)
  {
    [computeEncoderCopy useResource:v19 usage:1];
  }

  if (v21)
  {
    [computeEncoderCopy useResource:v21 usage:1];
  }

  if (v23)
  {
    [computeEncoderCopy useResource:v23 usage:1];
  }
}

- (void)encodeOutputColorTransform:(id *)transform toBuffer:(id)buffer offset:(unint64_t)offset withArgumentEncoder:(id)encoder computeEncoder:(id)computeEncoder index:(unint64_t)index
{
  bufferCopy = buffer;
  encoderCopy = encoder;
  computeEncoderCopy = computeEncoder;
  if (transform->var1.var4.var0 == 5)
  {
    metal = [(HDRImageConverter_Metal *)self metal];
    v17 = [metal metalTextureFromTableData:*&transform->var2.var1.var7];
  }

  else
  {
    v17 = 0;
  }

  [encoderCopy setArgumentBuffer:bufferCopy offset:offset];
  v18 = [encoderCopy constantDataAtIndex:1];
  v19 = *&transform->var0.var1;
  v20 = *&transform->var1.var1.var1;
  v21 = *&transform->var1.var2;
  v18[2] = *&transform->var1.var1.var5;
  v18[3] = v21;
  *v18 = v19;
  v18[1] = v20;
  var0 = transform->var1.var4.var0;
  *[encoderCopy constantDataAtIndex:3] = var0;
  v23 = [encoderCopy constantDataAtIndex:4];
  v24 = *&transform->var1.var4.var1.var3;
  v25 = *&transform->var1.var4.var1.var7;
  v26 = *&transform->var2.var1.var3;
  v23[2] = *&transform->var2.var0;
  v23[3] = v26;
  *v23 = v24;
  v23[1] = v25;
  v27 = [encoderCopy constantDataAtIndex:14];
  v28 = *&transform[1].var0.var1;
  v29 = *&transform[1].var1.var1.var1;
  v30 = *&transform[1].var1.var2;
  v27[2] = *&transform[1].var1.var1.var5;
  v27[3] = v30;
  *v27 = v28;
  v27[1] = v29;
  [encoderCopy setTexture:v17 atIndex:16];
  v31 = [encoderCopy constantDataAtIndex:18];
  *v31 = *&transform[1].var1.var4.var0;
  v32 = *&transform[1].var1.var4.var1.var3;
  v33 = *&transform[1].var1.var4.var1.var7;
  v34 = *&transform[1].var2.var1.var3;
  v31[3] = *&transform[1].var2.var0;
  v31[4] = v34;
  v31[1] = v32;
  v31[2] = v33;
  v35 = [encoderCopy constantDataAtIndex:29];
  *v35 = *&transform[1].var2.var1.var7;
  v36 = *&transform[2].var0.var1;
  v37 = *&transform[2].var1.var1.var1;
  v38 = *&transform[2].var1.var2;
  v35[3] = *&transform[2].var1.var1.var5;
  v35[4] = v38;
  v35[1] = v36;
  v35[2] = v37;
  [computeEncoderCopy setBuffer:bufferCopy offset:offset atIndex:index];
  if (v17)
  {
    [computeEncoderCopy useResource:v17 usage:1];
  }
}

- (void)encodeInputGainTransform:(id *)transform toBuffer:(id)buffer offset:(unint64_t)offset withArgumentEncoder:(id)encoder computeEncoder:(id)computeEncoder index:(unint64_t)index
{
  bufferCopy = buffer;
  encoderCopy = encoder;
  computeEncoderCopy = computeEncoder;
  v21 = *&transform[8].var0.var0;
  v22 = *&transform[10].var0.var0;
  v17 = *&transform->var0.var0;
  v18 = *&transform[2].var0.var0;
  v19 = *&transform[4].var0.var0;
  v20 = *&transform[6].var0.var0;
  v26 = *&transform[18].var0.var0;
  v27 = *&transform[20].var0.var0;
  v24 = *&transform[14].var0.var0;
  v25 = *&transform[16].var0.var0;
  v23 = *&transform[12].var0.var0;
  [encoderCopy setArgumentBuffer:bufferCopy offset:offset];
  v15 = [encoderCopy constantDataAtIndex:1];
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
  [computeEncoderCopy setBuffer:bufferCopy offset:offset atIndex:index];
}

- (void)encodeOutputGainTransform:(id *)transform toBuffer:(id)buffer offset:(unint64_t)offset withArgumentEncoder:(id)encoder computeEncoder:(id)computeEncoder index:(unint64_t)index
{
  bufferCopy = buffer;
  encoderCopy = encoder;
  computeEncoderCopy = computeEncoder;
  v23 = *&transform[8].var0.var0;
  v24 = *&transform[10].var0.var0;
  v19 = *&transform->var0.var0;
  v20 = *&transform[2].var0.var0;
  v21 = *&transform[4].var0.var0;
  v22 = *&transform[6].var0.var0;
  v28 = *&transform[18].var0.var0;
  v29 = *&transform[20].var0.var0;
  v26 = *&transform[14].var0.var0;
  v27 = *&transform[16].var0.var0;
  v25 = *&transform[12].var0.var0;
  v15 = transform[22];
  v17 = *&transform[24].var0.var0;
  LOBYTE(transform) = transform[26].var0.var0;
  [encoderCopy setArgumentBuffer:bufferCopy offset:offset];
  v16 = [encoderCopy constantDataAtIndex:2];
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
  *(v16 + 208) = transform;
  *(v16 + 209) = 0;
  *(v16 + 216) = 0;
  [computeEncoderCopy setBuffer:bufferCopy offset:offset atIndex:index];
}

- (BOOL)isPixelFormatSupported:(unsigned int)supported
{
  v3 = *&supported;
  metal = [(HDRImageConverter_Metal *)self metal];
  v5 = [metal metalPixelFormatForPixelFormat:v3 plane:0];

  return v5 != 0;
}

- (BOOL)canUseImageBlocks
{
  metal = [(HDRImageConverter_Metal *)self metal];
  device = [metal device];
  v4 = [device supportsFamily:1004];

  return v4;
}

- (unint64_t)minimumConstantBufferOffsetAlignment
{
  metal = [(HDRImageConverter_Metal *)self metal];
  device = [metal device];
  if ([device supportsFamily:2002])
  {
    metal2 = [(HDRImageConverter_Metal *)self metal];
    device2 = [metal2 device];
    v7 = [device2 supportsFamily:1002];

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

- (id)conversionFunctionWithName:(id)name subsampling:
{
  v4 = v3;
  nameCopy = name;
  v35 = 0;
  v34 = *v4;
  if ([(__CFString *)nameCopy isEqualToString:@"convert_image_to_image"])
  {
    metal = [(HDRImageConverter_Metal *)self metal];
    device = [metal device];
    v9 = [device supportsFamily:1001];

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

  else if ([(__CFString *)nameCopy isEqualToString:@"convert_gainmap_image_to_image"])
  {
    metal2 = [(HDRImageConverter_Metal *)self metal];
    device2 = [metal2 device];
    v13 = [device2 supportsFamily:1001];

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

  else if ([(__CFString *)nameCopy isEqualToString:@"convert_image_to_gainmap_image"])
  {
    metal3 = [(HDRImageConverter_Metal *)self metal];
    device3 = [metal3 device];
    v16 = [device3 supportsFamily:5001];

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

  else if ([(__CFString *)nameCopy isEqualToString:@"convert_gainmap_image_to_gainmap_image"])
  {
    metal4 = [(HDRImageConverter_Metal *)self metal];
    device4 = [metal4 device];
    v19 = [device4 supportsFamily:5001];

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

  else if ([(__CFString *)nameCopy isEqualToString:@"compute_gainmap"])
  {
    metal5 = [(HDRImageConverter_Metal *)self metal];
    device5 = [metal5 device];
    v22 = [device5 supportsFamily:5001];

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

  else if ([(__CFString *)nameCopy isEqualToString:@"compute_gainmap_image"])
  {
    metal6 = [(HDRImageConverter_Metal *)self metal];
    device6 = [metal6 device];
    v25 = [device6 supportsFamily:5001];

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

  else if ([(__CFString *)nameCopy isEqualToString:@"compute_luma_gain_histogram"])
  {

    *v4 = 524296;
    v34 = 131074;
    v10 = @"xdr::compute_luma_gain_histogram_8x8";
  }

  else if ([(__CFString *)nameCopy isEqualToString:@"compute_image_stats"])
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
    v10 = nameCopy;
    if ([(__CFString *)nameCopy isEqualToString:@"compute_image_gainmap_stats"])
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
  metal7 = [(HDRImageConverter_Metal *)self metal];
  v30 = [metal7 metalLibraryFunctionWithName:v10 functionConstant:v28];

  return v30;
}

- (BOOL)convertImage:(__CVBuffer *)image transform:(id *)transform toImage:(__CVBuffer *)toImage transform:(id *)a6
{
  v7 = vmovl_u16(vmax_u16(vdup_lane_s16(*&a6[2].var0.var2.var1.var7, 0).u32[0], vext_s8(*&a6[2].var0.var2.var1.var7, *&a6[2].var0.var2.var1.var7, 2uLL).u32[0]));
  v68 = v7.u16[2];
  v67 = v7.i16[0];
  v55 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"convert_image_to_image" subsampling:&v67];
  if (v55)
  {
    metal = [(HDRImageConverter_Metal *)self metal];
    v9 = [metal metalComputePipelineStateWithFunction:v55];

    v52 = v9;
    if (v9)
    {
      metal2 = [(HDRImageConverter_Metal *)self metal];
      commandQueue = [metal2 commandQueue];

      v42 = commandQueue;
      commandBuffer = [commandQueue commandBuffer];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v52];
      v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v47 = [v55 newArgumentEncoderWithBufferIndex:1];
      v54 = [v55 newArgumentEncoderWithBufferIndex:3];
      v45 = [v55 newArgumentEncoderWithBufferIndex:6];
      v44 = [v55 newArgumentEncoderWithBufferIndex:8];
      minimumConstantBufferOffsetAlignment = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      alignment = [v54 alignment];
      encodedLength = [v47 encodedLength];
      alignment2 = [v54 alignment];
      alignment3 = [v54 alignment];
      alignment4 = [v45 alignment];
      encodedLength2 = [v54 encodedLength];
      alignment5 = [v45 alignment];
      alignment6 = [v45 alignment];
      alignment7 = [v44 alignment];
      encodedLength3 = [v45 encodedLength];
      alignment8 = [v44 alignment];
      alignment9 = [v44 alignment];
      encodedLength4 = [v44 encodedLength];
      metal3 = [(HDRImageConverter_Metal *)self metal];
      device = [metal3 device];
      v21 = (minimumConstantBufferOffsetAlignment + (encodedLength + alignment2 - 1) / alignment3 * alignment - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v22 = (minimumConstantBufferOffsetAlignment + (v21 + encodedLength2 + alignment5 - 1) / alignment6 * alignment4 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v23 = (minimumConstantBufferOffsetAlignment + (v22 + encodedLength3 + alignment8 - 1) / alignment9 * alignment7 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v24 = [device newBufferWithLength:v23 + encodedLength4 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:image transform:transform toBuffer:v24 offset:0 withArgumentEncoder:v47 computeEncoder:computeCommandEncoder index:1 textures:v46];
      [(HDRImageConverter_Metal *)self encodeOutputImage:toImage transform:&a6[2].var0.var1.var2 toBuffer:v24 offset:v21 withArgumentEncoder:v54 computeEncoder:computeCommandEncoder index:3 textures:v46];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&transform->var1.var1.var4.var1.var3 toBuffer:v24 offset:v22 withArgumentEncoder:v45 computeEncoder:computeCommandEncoder index:6];
      [(HDRImageConverter_Metal *)self encodeOutputColorTransform:a6 toBuffer:v24 offset:v23 withArgumentEncoder:v44 computeEncoder:computeCommandEncoder index:8];
      LODWORD(device) = gFunc_CVPixelBufferGetWidth(toImage);
      Height = gFunc_CVPixelBufferGetHeight(toImage);
      v26.i32[0] = v67;
      v26.i32[1] = v68;
      v51 = __PAIR64__(Height, device);
      v27 = vand_s8(vadd_s32(__PAIR64__(Height, device), vadd_s32(v26, -1)), 0xFFFF0000FFFFLL);
      v66 = v27.i32[1] / v68;
      v65 = v27.i32[0] / v67;
      [computeCommandEncoder setBytes:&v65 length:4 atIndex:15];
      v28.i64[0] = v51;
      v28.i64[1] = v51;
      v29.i64[0] = 0xFFFF0000FFFFLL;
      v29.i64[1] = 0xFFFF0000FFFFLL;
      v64 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v28, v29), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [computeCommandEncoder setBytes:&v64 length:16 atIndex:16];
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
      [computeCommandEncoder dispatchThreadgroups:&v58 threadsPerThreadgroup:&v56];
      [computeCommandEncoder endEncoding];
      v32 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:commandBuffer];
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

- (BOOL)convertImage:(__CVBuffer *)image transform:(id *)transform gainMap:(__CVBuffer *)map transform:(id *)a6 toImage:(__CVBuffer *)toImage transform:(id *)a8
{
  v9 = vmovl_u16(vmax_u16(vdup_lane_s16(*&a8[2].var0.var2.var1.var7, 0).u32[0], vext_s8(*&a8[2].var0.var2.var1.var7, *&a8[2].var0.var2.var1.var7, 2uLL).u32[0]));
  v83 = v9.u16[2];
  v82 = v9.i16[0];
  v70 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"convert_gainmap_image_to_image" subsampling:&v82];
  if (v70)
  {
    metal = [(HDRImageConverter_Metal *)self metal];
    v11 = [metal metalComputePipelineStateWithFunction:v70];

    v64 = v11;
    if (v11)
    {
      metal2 = [(HDRImageConverter_Metal *)self metal];
      commandQueue = [metal2 commandQueue];

      v54 = commandQueue;
      commandBuffer = [commandQueue commandBuffer];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v64];
      v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v66 = [v70 newArgumentEncoderWithBufferIndex:1];
      v69 = [v70 newArgumentEncoderWithBufferIndex:3];
      v68 = [v70 newArgumentEncoderWithBufferIndex:6];
      v67 = [v70 newArgumentEncoderWithBufferIndex:9];
      v57 = [v70 newArgumentEncoderWithBufferIndex:8];
      minimumConstantBufferOffsetAlignment = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      alignment = [v66 alignment];
      encodedLength = [v66 encodedLength];
      alignment2 = [v66 alignment];
      alignment3 = [v66 alignment];
      alignment4 = [v69 alignment];
      encodedLength2 = [v66 encodedLength];
      alignment5 = [v69 alignment];
      alignment6 = [v69 alignment];
      alignment7 = [v68 alignment];
      encodedLength3 = [v69 encodedLength];
      alignment8 = [v68 alignment];
      alignment9 = [v68 alignment];
      alignment10 = [v67 alignment];
      encodedLength4 = [v68 encodedLength];
      alignment11 = [v67 alignment];
      alignment12 = [v67 alignment];
      alignment13 = [v57 alignment];
      encodedLength5 = [v67 encodedLength];
      alignment14 = [v57 alignment];
      alignment15 = [v57 alignment];
      encodedLength6 = [v57 encodedLength];
      metal3 = [(HDRImageConverter_Metal *)self metal];
      device = [metal3 device];
      v22 = (minimumConstantBufferOffsetAlignment + (encodedLength + alignment2 - 1) / alignment3 * alignment - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v23 = (minimumConstantBufferOffsetAlignment + (v22 + encodedLength2 + alignment5 - 1) / alignment6 * alignment4 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v24 = (minimumConstantBufferOffsetAlignment + (v23 + encodedLength3 + alignment8 - 1) / alignment9 * alignment7 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v25 = (minimumConstantBufferOffsetAlignment + (v24 + encodedLength4 + alignment11 - 1) / alignment12 * alignment10 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v26 = (minimumConstantBufferOffsetAlignment + (v25 + encodedLength5 + alignment14 - 1) / alignment15 * alignment13 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v27 = [device newBufferWithLength:v26 + encodedLength6 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:image transform:transform toBuffer:v27 offset:0 withArgumentEncoder:v66 computeEncoder:computeCommandEncoder index:1 textures:v63];
      [(HDRImageConverter_Metal *)self encodeInputImage:map transform:a6 toBuffer:v27 offset:v22 withArgumentEncoder:v66 computeEncoder:computeCommandEncoder index:4 textures:v63];
      [(HDRImageConverter_Metal *)self encodeOutputImage:toImage transform:&a8[2].var0.var1.var2 toBuffer:v27 offset:v23 withArgumentEncoder:v69 computeEncoder:computeCommandEncoder index:3 textures:v63];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&transform->var1.var1.var4.var1.var3 toBuffer:v27 offset:v24 withArgumentEncoder:v68 computeEncoder:computeCommandEncoder index:6];
      [(HDRImageConverter_Metal *)self encodeInputGainTransform:&a6[10].var1.var1 toBuffer:v27 offset:v25 withArgumentEncoder:v67 computeEncoder:computeCommandEncoder index:9];
      [(HDRImageConverter_Metal *)self encodeOutputColorTransform:a8 toBuffer:v27 offset:v26 withArgumentEncoder:v57 computeEncoder:computeCommandEncoder index:8];
      LODWORD(v26) = gFunc_CVPixelBufferGetWidth(toImage);
      Height = gFunc_CVPixelBufferGetHeight(toImage);
      v29.i32[0] = v82;
      v29.i32[1] = v83;
      v62 = __PAIR64__(Height, v26);
      v30 = vand_s8(vadd_s32(__PAIR64__(Height, v26), vadd_s32(v29, -1)), 0xFFFF0000FFFFLL);
      v81 = v30.i32[1] / v83;
      v80 = v30.i32[0] / v82;
      [computeCommandEncoder setBytes:&v80 length:4 atIndex:15];
      v31.i64[0] = v62;
      v31.i64[1] = v62;
      v32.i64[0] = 0xFFFF0000FFFFLL;
      v32.i64[1] = 0xFFFF0000FFFFLL;
      v79 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v31, v32), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [computeCommandEncoder setBytes:&v79 length:16 atIndex:16];
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
      [computeCommandEncoder dispatchThreadgroups:&v73 threadsPerThreadgroup:&v71];
      [computeCommandEncoder endEncoding];
      v35 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:commandBuffer];
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

- (BOOL)convertImage:(__CVBuffer *)image transform:(id *)transform alternate:(id *)alternate toImage:(__CVBuffer *)toImage transform:(id *)a7 gainMap:(__CVBuffer *)map transform:(id *)a9
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
    metal = [(HDRImageConverter_Metal *)self metal];
    v15 = [metal metalComputePipelineStateWithFunction:v79];

    v74 = v15;
    if (v15)
    {
      metal2 = [(HDRImageConverter_Metal *)self metal];
      commandQueue = [metal2 commandQueue];

      v63 = commandQueue;
      commandBuffer = [commandQueue commandBuffer];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v74];
      v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v68 = [v79 newArgumentEncoderWithBufferIndex:1];
      v77 = [v79 newArgumentEncoderWithBufferIndex:3];
      v76 = [v79 newArgumentEncoderWithBufferIndex:6];
      v78 = [v79 newArgumentEncoderWithBufferIndex:8];
      v64 = [v79 newArgumentEncoderWithBufferIndex:11];
      minimumConstantBufferOffsetAlignment = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      alignment = [v77 alignment];
      encodedLength = [v68 encodedLength];
      alignment2 = [v77 alignment];
      alignment3 = [v77 alignment];
      alignment4 = [v77 alignment];
      encodedLength2 = [v77 encodedLength];
      alignment5 = [v77 alignment];
      alignment6 = [v77 alignment];
      alignment7 = [v76 alignment];
      encodedLength3 = [v77 encodedLength];
      alignment8 = [v76 alignment];
      alignment9 = [v76 alignment];
      alignment10 = [v76 alignment];
      encodedLength4 = [v76 encodedLength];
      alignment11 = [v76 alignment];
      alignment12 = [v76 alignment];
      alignment13 = [v78 alignment];
      encodedLength5 = [v76 encodedLength];
      alignment14 = [v78 alignment];
      alignment15 = [v78 alignment];
      alignment16 = [v64 alignment];
      encodedLength6 = [v78 encodedLength];
      alignment17 = [v64 alignment];
      alignment18 = [v64 alignment];
      encodedLength7 = [v64 encodedLength];
      metal3 = [(HDRImageConverter_Metal *)self metal];
      device = [metal3 device];
      v27 = (minimumConstantBufferOffsetAlignment + (encodedLength + alignment2 - 1) / alignment3 * alignment - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v28 = (minimumConstantBufferOffsetAlignment + (v27 + encodedLength2 + alignment5 - 1) / alignment6 * alignment4 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v61 = (minimumConstantBufferOffsetAlignment + (v28 + encodedLength3 + alignment8 - 1) / alignment9 * alignment7 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v59 = (minimumConstantBufferOffsetAlignment + (v61 + encodedLength4 + alignment11 - 1) / alignment12 * alignment10 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v57 = (minimumConstantBufferOffsetAlignment + (v59 + encodedLength5 + alignment14 - 1) / alignment15 * alignment13 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v29 = (minimumConstantBufferOffsetAlignment + (v57 + encodedLength6 + alignment17 - 1) / alignment18 * alignment16 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v30 = [device newBufferWithLength:v29 + encodedLength7 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:image transform:transform toBuffer:v30 offset:0 withArgumentEncoder:v68 computeEncoder:computeCommandEncoder index:1 textures:v73];
      [(HDRImageConverter_Metal *)self encodeOutputImage:toImage transform:&a7[2].var0.var1.var2 toBuffer:v30 offset:v27 withArgumentEncoder:v77 computeEncoder:computeCommandEncoder index:3 textures:v73];
      [(HDRImageConverter_Metal *)self encodeOutputImage:map transform:&a9[18].var1 toBuffer:v30 offset:v28 withArgumentEncoder:v77 computeEncoder:computeCommandEncoder index:5 textures:v73];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&transform->var1.var1.var4.var1.var3 toBuffer:v30 offset:v61 withArgumentEncoder:v76 computeEncoder:computeCommandEncoder index:6];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&alternate->var1.var1.var4.var1.var3 toBuffer:v30 offset:v59 withArgumentEncoder:v76 computeEncoder:computeCommandEncoder index:7];
      [(HDRImageConverter_Metal *)self encodeOutputColorTransform:a7 toBuffer:v30 offset:v57 withArgumentEncoder:v78 computeEncoder:computeCommandEncoder index:8];
      [(HDRImageConverter_Metal *)self encodeOutputGainTransform:a9 toBuffer:v30 offset:v29 withArgumentEncoder:v64 computeEncoder:computeCommandEncoder index:11];
      LODWORD(v29) = gFunc_CVPixelBufferGetWidth(toImage);
      Height = gFunc_CVPixelBufferGetHeight(toImage);
      v32.i32[0] = v91;
      v32.i32[1] = v92;
      v72 = __PAIR64__(Height, v29);
      v33 = vand_s8(vadd_s32(__PAIR64__(Height, v29), vadd_s32(v32, -1)), 0xFFFF0000FFFFLL);
      v90 = v33.i32[1] / v92;
      v89 = v33.i32[0] / v91;
      [computeCommandEncoder setBytes:&v89 length:4 atIndex:15];
      v34.i64[0] = v72;
      v34.i64[1] = v72;
      v35.i64[0] = 0xFFFF0000FFFFLL;
      v35.i64[1] = 0xFFFF0000FFFFLL;
      v88 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v34, v35), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [computeCommandEncoder setBytes:&v88 length:16 atIndex:16];
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
      [computeCommandEncoder dispatchThreadgroups:&v82 threadsPerThreadgroup:&v80];
      [computeCommandEncoder endEncoding];
      v38 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:commandBuffer];
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

- (BOOL)convertImage:(__CVBuffer *)image transform:(id *)transform alternate:(id *)alternate gainMap:(__CVBuffer *)map transform:(id *)a7 alternate:(id *)a8 toImage:(__CVBuffer *)toImage transform:(id *)self0 gainMap:(__CVBuffer *)self1 transform:(id *)self2
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
    metal = [(HDRImageConverter_Metal *)self metal];
    v18 = [metal metalComputePipelineStateWithFunction:v101];

    v93 = v18;
    if (v18)
    {
      metal2 = [(HDRImageConverter_Metal *)self metal];
      commandQueue = [metal2 commandQueue];

      v84 = commandQueue;
      commandBuffer = [commandQueue commandBuffer];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v93];
      v95 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v99 = [v101 newArgumentEncoderWithBufferIndex:1];
      v98 = [v101 newArgumentEncoderWithBufferIndex:3];
      v97 = [v101 newArgumentEncoderWithBufferIndex:6];
      v96 = [v101 newArgumentEncoderWithBufferIndex:9];
      v100 = [v101 newArgumentEncoderWithBufferIndex:8];
      v85 = [v101 newArgumentEncoderWithBufferIndex:11];
      minimumConstantBufferOffsetAlignment = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      alignment = [v99 alignment];
      encodedLength = [v99 encodedLength];
      alignment2 = [v99 alignment];
      alignment3 = [v99 alignment];
      alignment4 = [v98 alignment];
      encodedLength2 = [v99 encodedLength];
      alignment5 = [v98 alignment];
      alignment6 = [v98 alignment];
      alignment7 = [v98 alignment];
      encodedLength3 = [v98 encodedLength];
      alignment8 = [v98 alignment];
      alignment9 = [v98 alignment];
      alignment10 = [v97 alignment];
      encodedLength4 = [v98 encodedLength];
      alignment11 = [v97 alignment];
      alignment12 = [v97 alignment];
      alignment13 = [v97 alignment];
      encodedLength5 = [v97 encodedLength];
      alignment14 = [v97 alignment];
      alignment15 = [v97 alignment];
      alignment16 = [v96 alignment];
      encodedLength6 = [v97 encodedLength];
      alignment17 = [v96 alignment];
      alignment18 = [v96 alignment];
      alignment19 = [v96 alignment];
      encodedLength7 = [v96 encodedLength];
      alignment20 = [v96 alignment];
      alignment21 = [v96 alignment];
      alignment22 = [v100 alignment];
      encodedLength8 = [v96 encodedLength];
      alignment23 = [v100 alignment];
      alignment24 = [v100 alignment];
      alignment25 = [v85 alignment];
      encodedLength9 = [v100 encodedLength];
      alignment26 = [v85 alignment];
      alignment27 = [v85 alignment];
      encodedLength10 = [v85 encodedLength];
      metal3 = [(HDRImageConverter_Metal *)self metal];
      device = [metal3 device];
      v29 = (minimumConstantBufferOffsetAlignment + (encodedLength + alignment2 - 1) / alignment3 * alignment - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v30 = (minimumConstantBufferOffsetAlignment + (v29 + encodedLength2 + alignment5 - 1) / alignment6 * alignment4 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v31 = (minimumConstantBufferOffsetAlignment + (v30 + encodedLength3 + alignment8 - 1) / alignment9 * alignment7 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v32 = (minimumConstantBufferOffsetAlignment + (v31 + encodedLength4 + alignment11 - 1) / alignment12 * alignment10 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v82 = (minimumConstantBufferOffsetAlignment + (v32 + encodedLength5 + alignment14 - 1) / alignment15 * alignment13 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v80 = (minimumConstantBufferOffsetAlignment + (v82 + encodedLength6 + alignment17 - 1) / alignment18 * alignment16 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v78 = (minimumConstantBufferOffsetAlignment + (v80 + encodedLength7 + alignment20 - 1) / alignment21 * alignment19 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v76 = (minimumConstantBufferOffsetAlignment + (v78 + encodedLength8 + alignment23 - 1) / alignment24 * alignment22 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v33 = (minimumConstantBufferOffsetAlignment + (v76 + encodedLength9 + alignment26 - 1) / alignment27 * alignment25 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment + encodedLength10;
      v34 = (minimumConstantBufferOffsetAlignment + (v76 + encodedLength9 + alignment26 - 1) / alignment27 * alignment25 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v35 = [device newBufferWithLength:v33 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:image transform:transform toBuffer:v35 offset:0 withArgumentEncoder:v99 computeEncoder:computeCommandEncoder index:1 textures:v95];
      if (a7->var0.var0)
      {
        v36 = a7;
      }

      else
      {
        v36 = a8;
      }

      [(HDRImageConverter_Metal *)self encodeInputImage:map transform:v36 toBuffer:v35 offset:v29 withArgumentEncoder:v99 computeEncoder:computeCommandEncoder index:4 textures:v95];
      [(HDRImageConverter_Metal *)self encodeOutputImage:toImage transform:&a10[2].var0.var1.var2 toBuffer:v35 offset:v30 withArgumentEncoder:v98 computeEncoder:computeCommandEncoder index:3 textures:v95];
      [(HDRImageConverter_Metal *)self encodeOutputImage:gainMap transform:&a12[18].var1 toBuffer:v35 offset:v31 withArgumentEncoder:v98 computeEncoder:computeCommandEncoder index:5 textures:v95];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&transform->var1.var1.var4.var1.var3 toBuffer:v35 offset:v32 withArgumentEncoder:v97 computeEncoder:computeCommandEncoder index:6];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&alternate->var1.var1.var4.var1.var3 toBuffer:v35 offset:v82 withArgumentEncoder:v97 computeEncoder:computeCommandEncoder index:7];
      [(HDRImageConverter_Metal *)self encodeInputGainTransform:&a7[10].var1.var1 toBuffer:v35 offset:v80 withArgumentEncoder:v96 computeEncoder:computeCommandEncoder index:9];
      [(HDRImageConverter_Metal *)self encodeInputGainTransform:&a8[10].var1.var1 toBuffer:v35 offset:v78 withArgumentEncoder:v96 computeEncoder:computeCommandEncoder index:10];
      [(HDRImageConverter_Metal *)self encodeOutputColorTransform:a10 toBuffer:v35 offset:v76 withArgumentEncoder:v100 computeEncoder:computeCommandEncoder index:8];
      [(HDRImageConverter_Metal *)self encodeOutputGainTransform:a12 toBuffer:v35 offset:v34 withArgumentEncoder:v85 computeEncoder:computeCommandEncoder index:11];
      Width = gFunc_CVPixelBufferGetWidth(toImage);
      Height = gFunc_CVPixelBufferGetHeight(toImage);
      v39.i32[0] = v113;
      v39.i32[1] = v114;
      v92 = __PAIR64__(Height, Width);
      v40 = vand_s8(vadd_s32(__PAIR64__(Height, Width), vadd_s32(v39, -1)), 0xFFFF0000FFFFLL);
      v112 = v40.i32[1] / v114;
      v111 = v40.i32[0] / v113;
      [computeCommandEncoder setBytes:&v111 length:4 atIndex:15];
      v41.i64[0] = v92;
      v41.i64[1] = v92;
      v42.i64[0] = 0xFFFF0000FFFFLL;
      v42.i64[1] = 0xFFFF0000FFFFLL;
      v110 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v41, v42), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [computeCommandEncoder setBytes:&v110 length:16 atIndex:16];
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
      [computeCommandEncoder dispatchThreadgroups:&v104 threadsPerThreadgroup:&v102];
      [computeCommandEncoder endEncoding];
      v45 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:commandBuffer];
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

- (BOOL)computeGainMap:(__CVBuffer *)map transform:(id *)transform fromBaseImage:(__CVBuffer *)image transform:(id *)a6 alternateImage:(__CVBuffer *)alternateImage transform:(id *)a8
{
  v9 = vmovl_u16(vmax_u16(vdup_lane_s16(*&transform[26].var1.var0, 0).u32[0], vext_s8(*&transform[26].var1.var0, *&transform[26].var1.var0, 2uLL).u32[0]));
  v82 = v9.u16[2];
  v81 = v9.i16[0];
  v69 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"compute_gainmap" subsampling:&v81];
  if (v69)
  {
    metal = [(HDRImageConverter_Metal *)self metal];
    v11 = [metal metalComputePipelineStateWithFunction:v69];

    v65 = v11;
    if (v11)
    {
      metal2 = [(HDRImageConverter_Metal *)self metal];
      commandQueue = [metal2 commandQueue];

      v54 = commandQueue;
      commandBuffer = [commandQueue commandBuffer];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v65];
      v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v67 = [v69 newArgumentEncoderWithBufferIndex:1];
      v68 = [v69 newArgumentEncoderWithBufferIndex:5];
      v64 = [v69 newArgumentEncoderWithBufferIndex:6];
      v55 = [v69 newArgumentEncoderWithBufferIndex:11];
      minimumConstantBufferOffsetAlignment = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      alignment = [v67 alignment];
      encodedLength = [v67 encodedLength];
      alignment2 = [v67 alignment];
      alignment3 = [v67 alignment];
      alignment4 = [v68 alignment];
      encodedLength2 = [v67 encodedLength];
      alignment5 = [v68 alignment];
      alignment6 = [v68 alignment];
      alignment7 = [v64 alignment];
      encodedLength3 = [v68 encodedLength];
      alignment8 = [v64 alignment];
      alignment9 = [v64 alignment];
      alignment10 = [v64 alignment];
      encodedLength4 = [v64 encodedLength];
      alignment11 = [v64 alignment];
      alignment12 = [v64 alignment];
      alignment13 = [v55 alignment];
      encodedLength5 = [v64 encodedLength];
      alignment14 = [v55 alignment];
      alignment15 = [v55 alignment];
      encodedLength6 = [v55 encodedLength];
      metal3 = [(HDRImageConverter_Metal *)self metal];
      device = [metal3 device];
      v23 = (minimumConstantBufferOffsetAlignment + (encodedLength + alignment2 - 1) / alignment3 * alignment - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v24 = (minimumConstantBufferOffsetAlignment + (v23 + encodedLength2 + alignment5 - 1) / alignment6 * alignment4 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v25 = (minimumConstantBufferOffsetAlignment + (v24 + encodedLength3 + alignment8 - 1) / alignment9 * alignment7 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v26 = (minimumConstantBufferOffsetAlignment + (v25 + encodedLength4 + alignment11 - 1) / alignment12 * alignment10 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v27 = (minimumConstantBufferOffsetAlignment + (v26 + encodedLength5 + alignment14 - 1) / alignment15 * alignment13 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v28 = [device newBufferWithLength:v27 + encodedLength6 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:image transform:a6 toBuffer:v28 offset:0 withArgumentEncoder:v67 computeEncoder:computeCommandEncoder index:1 textures:v63];
      [(HDRImageConverter_Metal *)self encodeInputImage:alternateImage transform:a8 toBuffer:v28 offset:v23 withArgumentEncoder:v67 computeEncoder:computeCommandEncoder index:2 textures:v63];
      [(HDRImageConverter_Metal *)self encodeOutputImage:map transform:&transform[18].var1 toBuffer:v28 offset:v24 withArgumentEncoder:v68 computeEncoder:computeCommandEncoder index:5 textures:v63];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a6->var1.var1.var4.var1.var3 toBuffer:v28 offset:v25 withArgumentEncoder:v64 computeEncoder:computeCommandEncoder index:6];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a8->var1.var1.var4.var1.var3 toBuffer:v28 offset:v26 withArgumentEncoder:v64 computeEncoder:computeCommandEncoder index:7];
      [(HDRImageConverter_Metal *)self encodeOutputGainTransform:transform toBuffer:v28 offset:v27 withArgumentEncoder:v55 computeEncoder:computeCommandEncoder index:11];
      LODWORD(v24) = gFunc_CVPixelBufferGetWidth(map);
      Height = gFunc_CVPixelBufferGetHeight(map);
      v30.i32[0] = v81;
      v30.i32[1] = v82;
      v62 = __PAIR64__(Height, v24);
      v31 = vand_s8(vadd_s32(__PAIR64__(Height, v24), vadd_s32(v30, -1)), 0xFFFF0000FFFFLL);
      v80 = v31.i32[1] / v82;
      v79 = v31.i32[0] / v81;
      [computeCommandEncoder setBytes:&v79 length:4 atIndex:15];
      v32.i64[0] = v62;
      v32.i64[1] = v62;
      v33.i64[0] = 0xFFFF0000FFFFLL;
      v33.i64[1] = 0xFFFF0000FFFFLL;
      v78 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v32, v33), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [computeCommandEncoder setBytes:&v78 length:16 atIndex:16];
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
      [computeCommandEncoder dispatchThreadgroups:&v72 threadsPerThreadgroup:&v70];
      [computeCommandEncoder endEncoding];
      v36 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:commandBuffer];
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

- (BOOL)computeGainMap:(__CVBuffer *)map transform:(id *)transform outputImage:(__CVBuffer *)image transform:(id *)a6 fromBaseImage:(__CVBuffer *)baseImage transform:(id *)a8 alternateImage:(__CVBuffer *)alternateImage transform:(id *)self0
{
  v11 = *&a6[2].var0.var2.var1.var7;
  v11.i16[3] = 0;
  v12 = *&transform[26].var1.var0;
  v12.i16[3] = 0;
  v13 = vmax_u16(v11, v12);
  v14 = vmovl_u16(vmax_u16(vdup_lane_s16(v13, 0).u32[0], vext_s8(v13, v13, 2uLL).u32[0]));
  v99 = v14.u16[2];
  v98 = v14.i16[0];
  v86 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"compute_gainmap_image" subsampling:&v98];
  if (v86)
  {
    metal = [(HDRImageConverter_Metal *)self metal];
    v16 = [metal metalComputePipelineStateWithFunction:v86];

    v78 = v16;
    if (v16)
    {
      metal2 = [(HDRImageConverter_Metal *)self metal];
      commandQueue = [metal2 commandQueue];

      v69 = commandQueue;
      commandBuffer = [commandQueue commandBuffer];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v78];
      v80 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v82 = [v86 newArgumentEncoderWithBufferIndex:1];
      v85 = [v86 newArgumentEncoderWithBufferIndex:5];
      v84 = [v86 newArgumentEncoderWithBufferIndex:3];
      v81 = [v86 newArgumentEncoderWithBufferIndex:6];
      v83 = [v86 newArgumentEncoderWithBufferIndex:11];
      v70 = [v86 newArgumentEncoderWithBufferIndex:8];
      minimumConstantBufferOffsetAlignment = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      alignment = [v82 alignment];
      encodedLength = [v82 encodedLength];
      alignment2 = [v82 alignment];
      alignment3 = [v82 alignment];
      alignment4 = [v85 alignment];
      encodedLength2 = [v82 encodedLength];
      alignment5 = [v85 alignment];
      alignment6 = [v85 alignment];
      alignment7 = [v84 alignment];
      encodedLength3 = [v85 encodedLength];
      alignment8 = [v84 alignment];
      alignment9 = [v84 alignment];
      alignment10 = [v81 alignment];
      encodedLength4 = [v84 encodedLength];
      alignment11 = [v81 alignment];
      alignment12 = [v81 alignment];
      alignment13 = [v81 alignment];
      encodedLength5 = [v81 encodedLength];
      alignment14 = [v81 alignment];
      alignment15 = [v81 alignment];
      alignment16 = [v83 alignment];
      encodedLength6 = [v81 encodedLength];
      alignment17 = [v83 alignment];
      alignment18 = [v83 alignment];
      alignment19 = [v70 alignment];
      encodedLength7 = [v83 encodedLength];
      alignment20 = [v70 alignment];
      alignment21 = [v70 alignment];
      encodedLength8 = [v70 encodedLength];
      metal3 = [(HDRImageConverter_Metal *)self metal];
      device = [metal3 device];
      v27 = (minimumConstantBufferOffsetAlignment + (encodedLength + alignment2 - 1) / alignment3 * alignment - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v28 = (minimumConstantBufferOffsetAlignment + (v27 + encodedLength2 + alignment5 - 1) / alignment6 * alignment4 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v29 = (minimumConstantBufferOffsetAlignment + (v28 + encodedLength3 + alignment8 - 1) / alignment9 * alignment7 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v67 = (minimumConstantBufferOffsetAlignment + (v29 + encodedLength4 + alignment11 - 1) / alignment12 * alignment10 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v65 = (minimumConstantBufferOffsetAlignment + (v67 + encodedLength5 + alignment14 - 1) / alignment15 * alignment13 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v63 = (minimumConstantBufferOffsetAlignment + (v65 + encodedLength6 + alignment17 - 1) / alignment18 * alignment16 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v30 = (minimumConstantBufferOffsetAlignment + (v63 + encodedLength7 + alignment20 - 1) / alignment21 * alignment19 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v31 = [device newBufferWithLength:v30 + encodedLength8 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:baseImage transform:a8 toBuffer:v31 offset:0 withArgumentEncoder:v82 computeEncoder:computeCommandEncoder index:1 textures:v80];
      [(HDRImageConverter_Metal *)self encodeInputImage:alternateImage transform:a10 toBuffer:v31 offset:v27 withArgumentEncoder:v82 computeEncoder:computeCommandEncoder index:2 textures:v80];
      [(HDRImageConverter_Metal *)self encodeOutputImage:map transform:&transform[18].var1 toBuffer:v31 offset:v28 withArgumentEncoder:v85 computeEncoder:computeCommandEncoder index:5 textures:v80];
      [(HDRImageConverter_Metal *)self encodeOutputImage:image transform:&a6[2].var0.var1.var2 toBuffer:v31 offset:v29 withArgumentEncoder:v84 computeEncoder:computeCommandEncoder index:3 textures:v80];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a8->var1.var1.var4.var1.var3 toBuffer:v31 offset:v67 withArgumentEncoder:v81 computeEncoder:computeCommandEncoder index:6];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&a10->var1.var1.var4.var1.var3 toBuffer:v31 offset:v65 withArgumentEncoder:v81 computeEncoder:computeCommandEncoder index:7];
      [(HDRImageConverter_Metal *)self encodeOutputGainTransform:transform toBuffer:v31 offset:v63 withArgumentEncoder:v83 computeEncoder:computeCommandEncoder index:11];
      [(HDRImageConverter_Metal *)self encodeOutputColorTransform:a6 toBuffer:v31 offset:v30 withArgumentEncoder:v70 computeEncoder:computeCommandEncoder index:8];
      LODWORD(v27) = gFunc_CVPixelBufferGetWidth(image);
      Height = gFunc_CVPixelBufferGetHeight(image);
      v33.i32[0] = v98;
      v33.i32[1] = v99;
      v77 = __PAIR64__(Height, v27);
      v34 = vand_s8(vadd_s32(__PAIR64__(Height, v27), vadd_s32(v33, -1)), 0xFFFF0000FFFFLL);
      v97 = v34.i32[1] / v99;
      v96 = v34.i32[0] / v98;
      [computeCommandEncoder setBytes:&v96 length:4 atIndex:15];
      v35.i64[0] = v77;
      v35.i64[1] = v77;
      v36.i64[0] = 0xFFFF0000FFFFLL;
      v36.i64[1] = 0xFFFF0000FFFFLL;
      v95 = vdivq_f32(xmmword_186205990, vaddq_f32(vorrq_s8(vandq_s8(v35, v36), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [computeCommandEncoder setBytes:&v95 length:16 atIndex:16];
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
      [computeCommandEncoder dispatchThreadgroups:&v89 threadsPerThreadgroup:&v87];
      [computeCommandEncoder endEncoding];
      v39 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:commandBuffer];
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

- (BOOL)computeLumaGainHistogram:(id *)histogram scale:(__CVBuffer *)scale image:(id *)image transform:(__CVBuffer *)transform gainMap:(id *)map transform:
{
  v69 = v7;
  v68 = 524296;
  v56 = [(HDRImageConverter_Metal *)self conversionFunctionWithName:@"compute_luma_gain_histogram" subsampling:&v68];
  if (v56)
  {
    metal = [(HDRImageConverter_Metal *)self metal];
    v10 = [metal metalComputePipelineStateWithFunction:v56];

    v53 = v10;
    if (v10)
    {
      metal2 = [(HDRImageConverter_Metal *)self metal];
      commandQueue = [metal2 commandQueue];

      v42 = commandQueue;
      commandBuffer = [commandQueue commandBuffer];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v53];
      v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v52 = [v56 newArgumentEncoderWithBufferIndex:1];
      v55 = [v56 newArgumentEncoderWithBufferIndex:6];
      v43 = [v56 newArgumentEncoderWithBufferIndex:9];
      minimumConstantBufferOffsetAlignment = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      alignment = [v52 alignment];
      encodedLength = [v52 encodedLength];
      alignment2 = [v52 alignment];
      alignment3 = [v52 alignment];
      alignment4 = [v55 alignment];
      encodedLength2 = [v52 encodedLength];
      alignment5 = [v55 alignment];
      alignment6 = [v55 alignment];
      alignment7 = [v43 alignment];
      encodedLength3 = [v55 encodedLength];
      alignment8 = [v43 alignment];
      alignment9 = [v43 alignment];
      encodedLength4 = [v43 encodedLength];
      metal3 = [(HDRImageConverter_Metal *)self metal];
      device = [metal3 device];
      v22 = (minimumConstantBufferOffsetAlignment + (encodedLength + alignment2 - 1) / alignment3 * alignment - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v23 = (minimumConstantBufferOffsetAlignment + (v22 + encodedLength2 + alignment5 - 1) / alignment6 * alignment4 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v24 = (minimumConstantBufferOffsetAlignment + (v23 + encodedLength3 + alignment8 - 1) / alignment9 * alignment7 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v25 = (encodedLength4 + minimumConstantBufferOffsetAlignment + v24 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v26 = [device newBufferWithLength:v25 + 4096 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:scale transform:image toBuffer:v26 offset:0 withArgumentEncoder:v52 computeEncoder:computeCommandEncoder index:1 textures:v47];
      [(HDRImageConverter_Metal *)self encodeInputImage:transform transform:map toBuffer:v26 offset:v22 withArgumentEncoder:v52 computeEncoder:computeCommandEncoder index:4 textures:v47];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&image->var1.var1.var4.var1.var3 toBuffer:v26 offset:v23 withArgumentEncoder:v55 computeEncoder:computeCommandEncoder index:6];
      [(HDRImageConverter_Metal *)self encodeInputGainTransform:&map[10].var1.var1 toBuffer:v26 offset:v24 withArgumentEncoder:v43 computeEncoder:computeCommandEncoder index:9];
      [computeCommandEncoder setBuffer:v26 offset:v25 atIndex:12];
      [computeCommandEncoder setBytes:&v69 length:8 atIndex:13];
      LOWORD(device) = gFunc_CVPixelBufferGetWidth(scale);
      Height = gFunc_CVPixelBufferGetHeight(scale);
      v66 = device;
      [computeCommandEncoder setBytes:&v66 length:4 atIndex:15];
      v27.i16[0] = v66;
      v27.i16[2] = Height;
      v27.i64[1] = v27.i64[0];
      v28.i64[0] = 0xFFFF0000FFFFLL;
      v28.i64[1] = 0xFFFF0000FFFFLL;
      v65 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vandq_s8(v27, v28), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [computeCommandEncoder setBytes:&v65 length:16 atIndex:16];
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
      [computeCommandEncoder dispatchThreadgroups:&v59 threadsPerThreadgroup:&v57];
      [computeCommandEncoder endEncoding];
      v33 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:commandBuffer];

      memcpy(histogram, ([v26 contents] + v25), sizeof($1FF2F8D2599020761ACEFF31D93EEB84));
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

- (BOOL)computeStatistics:(id *)statistics image:(__CVBuffer *)image transform:(id *)transform
{
  LOWORD(v50) = gFunc_CVPixelBufferGetWidth(image);
  HIWORD(v50) = gFunc_CVPixelBufferGetHeight(image);
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
    metal = [(HDRImageConverter_Metal *)self metal];
    v13 = [metal metalComputePipelineStateWithFunction:v49];

    v48 = v13;
    if (v13)
    {
      metal2 = [(HDRImageConverter_Metal *)self metal];
      commandQueue = [metal2 commandQueue];

      v39 = commandQueue;
      commandBuffer = [commandQueue commandBuffer];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v48];
      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v46 = [v49 newArgumentEncoderWithBufferIndex:1];
      v40 = [v49 newArgumentEncoderWithBufferIndex:6];
      minimumConstantBufferOffsetAlignment = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      alignment = [v40 alignment];
      encodedLength = [v46 encodedLength];
      alignment2 = [v40 alignment];
      alignment3 = [v40 alignment];
      encodedLength2 = [v40 encodedLength];
      metal3 = [(HDRImageConverter_Metal *)self metal];
      device = [metal3 device];
      v24 = (minimumConstantBufferOffsetAlignment + (encodedLength + alignment2 - 1) / alignment3 * alignment - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v25 = (encodedLength2 + minimumConstantBufferOffsetAlignment + v24 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v26 = [device newBufferWithLength:v25 + 12 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:image transform:transform toBuffer:v26 offset:0 withArgumentEncoder:v46 computeEncoder:computeCommandEncoder index:1 textures:v42];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&transform->var1.var1.var4.var1.var3 toBuffer:v26 offset:v24 withArgumentEncoder:v40 computeEncoder:computeCommandEncoder index:6];
      [computeCommandEncoder setBuffer:v26 offset:v25 atIndex:14];
      [computeCommandEncoder setBytes:&v62 length:4 atIndex:15];
      v27.i16[2] = HIWORD(v62);
      v27.i16[0] = v62;
      v27.i64[1] = v27.i64[0];
      v28.i64[0] = 0xFFFF0000FFFFLL;
      v28.i64[1] = 0xFFFF0000FFFFLL;
      v59 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vandq_s8(v27, v28), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [computeCommandEncoder setBytes:&v59 length:16 atIndex:16];
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
      [computeCommandEncoder dispatchThreadgroups:&v53 threadsPerThreadgroup:&v51];
      [computeCommandEncoder endEncoding];
      v33 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:commandBuffer];

      contents = [v26 contents];
      if (statistics)
      {
        v35 = contents + v25;
        statistics->var0 = ldexpf(*(contents + v25), -10);
        v36 = ldexpf(*(v35 + 4), -10);
        v37 = *(v35 + 8);
        statistics->var1 = v36 / v37;
        statistics->var2 = v37;
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

- (BOOL)computeStatistics:(id *)statistics image:(__CVBuffer *)image transform:(id *)transform gainMap:(__CVBuffer *)map transform:(id *)a7
{
  LOWORD(v65) = gFunc_CVPixelBufferGetWidth(image);
  HIWORD(v65) = gFunc_CVPixelBufferGetHeight(image);
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
    metal = [(HDRImageConverter_Metal *)self metal];
    v14 = [metal metalComputePipelineStateWithFunction:v64];

    v62 = v14;
    if (v14)
    {
      metal2 = [(HDRImageConverter_Metal *)self metal];
      commandQueue = [metal2 commandQueue];

      v50 = commandQueue;
      commandBuffer = [commandQueue commandBuffer];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v62];
      v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v61 = [v64 newArgumentEncoderWithBufferIndex:1];
      v63 = [v64 newArgumentEncoderWithBufferIndex:6];
      v51 = [v64 newArgumentEncoderWithBufferIndex:9];
      minimumConstantBufferOffsetAlignment = [(HDRImageConverter_Metal *)self minimumConstantBufferOffsetAlignment];
      alignment = [v61 alignment];
      encodedLength = [v61 encodedLength];
      alignment2 = [v61 alignment];
      alignment3 = [v61 alignment];
      alignment4 = [v63 alignment];
      encodedLength2 = [v61 encodedLength];
      alignment5 = [v63 alignment];
      alignment6 = [v63 alignment];
      alignment7 = [v51 alignment];
      encodedLength3 = [v63 encodedLength];
      alignment8 = [v51 alignment];
      alignment9 = [v51 alignment];
      encodedLength4 = [v51 encodedLength];
      metal3 = [(HDRImageConverter_Metal *)self metal];
      device = [metal3 device];
      v26 = (minimumConstantBufferOffsetAlignment + (encodedLength + alignment2 - 1) / alignment3 * alignment - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v27 = (minimumConstantBufferOffsetAlignment + (v26 + encodedLength2 + alignment5 - 1) / alignment6 * alignment4 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v28 = (minimumConstantBufferOffsetAlignment + (v27 + encodedLength3 + alignment8 - 1) / alignment9 * alignment7 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v29 = (encodedLength4 + minimumConstantBufferOffsetAlignment + v28 - 1) / minimumConstantBufferOffsetAlignment * minimumConstantBufferOffsetAlignment;
      v30 = [device newBufferWithLength:v29 + 12 options:0];

      [(HDRImageConverter_Metal *)self encodeInputImage:image transform:transform toBuffer:v30 offset:0 withArgumentEncoder:v61 computeEncoder:computeCommandEncoder index:1 textures:v56];
      [(HDRImageConverter_Metal *)self encodeInputImage:map transform:a7 toBuffer:v30 offset:v26 withArgumentEncoder:v61 computeEncoder:computeCommandEncoder index:4 textures:v56];
      [(HDRImageConverter_Metal *)self encodeInputColorTransform:&transform->var1.var1.var4.var1.var3 toBuffer:v30 offset:v27 withArgumentEncoder:v63 computeEncoder:computeCommandEncoder index:6];
      [(HDRImageConverter_Metal *)self encodeInputGainTransform:&a7[10].var1.var1 toBuffer:v30 offset:v28 withArgumentEncoder:v51 computeEncoder:computeCommandEncoder index:9];
      [computeCommandEncoder setBuffer:v30 offset:v29 atIndex:14];
      [computeCommandEncoder setBytes:&v77 length:4 atIndex:15];
      v31.i16[2] = HIWORD(v77);
      v31.i16[0] = v77;
      v31.i64[1] = v31.i64[0];
      v32.i64[0] = 0xFFFF0000FFFFLL;
      v32.i64[1] = 0xFFFF0000FFFFLL;
      v74 = vdivq_f32(xmmword_1862059A0, vaddq_f32(vorrq_s8(vandq_s8(v31, v32), vdupq_n_s32(0x4B400000u)), vdupq_n_s32(0xCB400000)));
      [computeCommandEncoder setBytes:&v74 length:16 atIndex:16];
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
      [computeCommandEncoder dispatchThreadgroups:&v68 threadsPerThreadgroup:&v66];
      [computeCommandEncoder endEncoding];
      v37 = [(HDRImageConverter_Metal *)self commitAndWaitUntilCompleted:commandBuffer];

      contents = [v30 contents];
      if (statistics)
      {
        v39 = contents + v29;
        statistics->var0 = ldexpf(*(contents + v29), -10);
        v40 = ldexpf(*(v39 + 4), -10);
        v41 = *(v39 + 8);
        statistics->var1 = v40 / v41;
        statistics->var2 = v41;
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