@interface AGXG18PFamilyRasterizationRateMap
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign;
- ($94F468A8D4C62B317260615823C2B210)physicalCoordinate:(id)coordinate forLayer:(unint64_t)layer;
- ($94F468A8D4C62B317260615823C2B210)screenCoordinate:(id)coordinate forLayer:(unint64_t)layer;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)layer;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize;
- (AGXG18PFamilyRasterizationRateMap)initWithDevice:(id)device descriptor:(id)descriptor;
- (void)copyParameterDataToBuffer:(id)buffer atOffset:(unint64_t)offset;
- (void)dealloc;
- (void)resetUsingDescriptor:(id)descriptor;
@end

@implementation AGXG18PFamilyRasterizationRateMap

- ($94F468A8D4C62B317260615823C2B210)screenCoordinate:(id)coordinate forLayer:(unint64_t)layer
{
  impl = self->_impl;
  v5 = impl[4];
  LODWORD(layerCopy) = v5 - 1;
  if (v5 <= layer)
  {
    layerCopy = layerCopy;
  }

  else
  {
    layerCopy = layer;
  }

  v7 = &impl[2050 * layerCopy + 5];
  if (coordinate.var0 >= 0.0)
  {
    v9 = impl[layerCopy + 12310];
    v10 = (coordinate.var0 * 0.03125);
    if (v9 <= v10)
    {
      v8 = v9 - 1;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = (v7 + 8 * v8);
  v12 = *v11;
  v13 = v11[1];
  if (coordinate.var1 >= 0.0)
  {
    v15 = impl[12312];
    v16 = (coordinate.var1 * 0.03125);
    if (v15 <= v16)
    {
      v14 = v15 - 1;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = v12 * (coordinate.var0 - v13);
  v18 = *&impl[2 * v14 + 8205] * (coordinate.var1 - *&impl[2 * v14 + 8206]);
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)physicalCoordinate:(id)coordinate forLayer:(unint64_t)layer
{
  impl = self->_impl;
  v5 = impl[4];
  if (v5 <= layer)
  {
    layerCopy = v5 - 1;
  }

  else
  {
    layerCopy = layer;
  }

  v7 = &impl[2050 * layerCopy + 4105];
  if (coordinate.var0 >= 0.0)
  {
    v9 = impl[12313];
    if (v9 <= (coordinate.var0 * 0.03125))
    {
      v8 = v9 - 1;
    }

    else
    {
      v8 = (coordinate.var0 * 0.03125);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((coordinate.var0 - (32 * v8)) >= vcvts_n_f32_u32(*(v7 + 8 * v8 + 4), 1uLL))
  {
    ++v8;
  }

  v10 = v7 + 8 * v8;
  v11 = *v10;
  v12 = *(v10 + 4);
  if (coordinate.var1 >= 0.0)
  {
    v14 = impl[12314];
    if (v14 <= (coordinate.var1 * 0.03125))
    {
      v13 = v14 - 1;
    }

    else
    {
      v13 = (coordinate.var1 * 0.03125);
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = impl + 10255;
  v16 = vcvts_n_f32_s32(v12 >> 8, 8uLL) + (coordinate.var0 * v11);
  if ((coordinate.var1 - (32 * v13)) >= vcvts_n_f32_u32(LOBYTE(v15[2 * v13 + 1]), 1uLL))
  {
    ++v13;
  }

  v17 = vcvts_n_f32_s32(v15[2 * v13 + 1] >> 8, 8uLL) + (coordinate.var1 * *&v15[2 * v13]);
  result.var1 = v17;
  result.var0 = v16;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)layer
{
  var2 = self[2].var2;
  v5 = *(var2 + 4 * a4 + 49220);
  v6 = *(var2 + 49228);
  retstr->var0 = v5;
  retstr->var1 = v6;
  retstr->var2 = 1;
  return self;
}

- (void)copyParameterDataToBuffer:(id)buffer atOffset:(unint64_t)offset
{
  v5 = ([buffer contents] + offset);
  v6 = self->_impl + 20;

  memcpy(v5, v6, 0xC030uLL);
}

- (void)resetUsingDescriptor:(id)descriptor
{
  v8 = 0;
  [descriptor layerPointer:&v8];
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (descriptor)
  {
    [descriptor screenSize];
  }

  [descriptor skipSampleValidationAndApplySampleAtTileGranularity];
  [descriptor skipSampleValidationAndInterpolation];
  AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initFactors(self->_impl);
}

- (AGXG18PFamilyRasterizationRateMap)initWithDevice:(id)device descriptor:(id)descriptor
{
  v29 = *MEMORY[0x29EDCA608];
  v26.receiver = self;
  v26.super_class = AGXG18PFamilyRasterizationRateMap;
  v6 = [_MTLRasterizationRateMap initWithDevice:sel_initWithDevice_descriptor_ descriptor:?];
  if (v6)
  {
    v25 = 0;
    [descriptor layerPointer:&v25];
    if (descriptor)
    {
      [descriptor screenSize];
    }

    [descriptor skipSampleValidationAndApplySampleAtTileGranularity];
    [descriptor skipSampleValidationAndInterpolation];
    mutability = [descriptor mutability];
    [descriptor minFactor];
    v9 = v8;
    v10 = malloc_type_calloc(0xC120uLL, 1uLL, 0x10F1040AFC94ABCuLL);
    v6->_impl = v10;
    if (v10 && ((v11 = v10, bzero(v10 + 8, 0xC118uLL), *v11 = &unk_2A23FA658, impl = v6->_impl, v13 = v25, *(impl + 49320) = mutability == 1, v14 = *(device + 106), *(impl + 8) = device, mutability != 1) ? (v15 = 49408) : (v15 = 98608), AGX::Heap<true>::allocateImpl(&v27, v14 + 6832, v15, (impl + 49264)), v16 = v28[0], *(impl + 49272) = v27, *(impl + 49288) = v16, *(impl + 49297) = *(v28 + 9), *(impl + 49296)))
    {
      v17 = *(impl + 49272);
      v18 = *(impl + 49280);
      v19 = (v18 + 255) & 0xFFFFFFFFFFFFFF00;
      v20 = (v17 + 0x10000000FFLL) & 0xFFFFFFFFFFFFFF00;
      *(impl + 49384) = v20;
      *(impl + 49328) = v19;
      *(impl + 49336) = v19 + 0x4000;
      v21 = vdupq_n_s64(v20);
      *(impl + 49392) = vaddq_s64(v21, xmmword_29D2F2610);
      v22 = vdupq_n_s64(v19);
      *(impl + 49344) = vaddq_s64(v22, xmmword_29D2F2620);
      *(impl + 49408) = vaddq_s64(v21, xmmword_29D2F2630);
      *(impl + 49360) = vaddq_s64(v22, xmmword_29D2F2640);
      *(impl + 49424) = v20 + 45056;
      if (*(impl + 49320) == 1)
      {
        *(impl + 49376) = v18 + 49408;
        *(impl + 49432) = v17 + 0x100000C100;
        v23 = 0.01;
        if (v9 != 0.0)
        {
          v23 = v9;
        }

        *(impl + 16) = v13;
        *(impl + 49232) = 0;
        *(impl + 49236) = 0;
        *(impl + 49252) = 0;
        *(impl + 49256) = 0;
        *(impl + 49260) = fmin(ceil(2.0 / v23), 255.0);
      }

      else
      {
        AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initFactors(impl);
      }
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign
{
  v2 = 49200;
  v3 = 4;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity
{
  *&retstr->var0 = vdupq_n_s64(0x20uLL);
  retstr->var2 = 1;
  return self;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize
{
  v3 = *(self[2].var2 + 49232);
  *&v4 = v3;
  *(&v4 + 1) = HIDWORD(v3);
  *&retstr->var0 = v4;
  retstr->var2 = 1;
  return self;
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    (**impl)(impl, a2);
    free(self->_impl);
    self->_impl = 0;
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilyRasterizationRateMap;
  [(_MTLRasterizationRateMap *)&v4 dealloc];
}

@end