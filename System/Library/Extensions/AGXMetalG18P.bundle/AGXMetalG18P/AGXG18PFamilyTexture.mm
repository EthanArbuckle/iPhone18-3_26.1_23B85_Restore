@interface AGXG18PFamilyTexture
- (BOOL)initImplWithCompressedTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level resourceIndex:(unint64_t)index;
- (BOOL)initImplWithDevice:(id)device Descriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice buffer:(id)buffer bytesPerRow:(unint64_t)row allowNPOT:(BOOL)self0 sparsePageSize:(unint64_t)self1 isCompressedIOSurface:(BOOL)self2 isHeapBacked:(BOOL)self3;
- (BOOL)initImplWithTexture:(id)texture descriptor:(id)descriptor;
- (BOOL)initImplWithTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index;
- (BOOL)initImplWithTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(unsigned int)swizzle resourceIndex:(unint64_t)index;
- (BOOL)updateBindDataWithCompressedTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice;
- (BOOL)validateBufferTextureWithSize:(unint64_t)size;
- (id)heap;
- (int64_t)compressionFeedback;
- (unint64_t)colorSpaceConversionMatrix;
- (unint64_t)compressionFootprint;
- (unint64_t)firstMipmapInTail;
- (void)dealloc;
- (void)emitResourceInfoTraceEvent;
- (void)emitTextureResourceInfoSignpost:(id)signpost;
- (void)finalizeCompressedTextureViewCreation;
- (void)finalizeTextureCreation;
- (void)generateMipmapLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)initNewTextureData:(AGXNewTextureDataStruc *)data;
- (void)setSparseHeap:(id)heap;
- (void)updateBindDataWithAddresses:(void *)addresses cpuMetadataAddress:(void *)address gpuVirtualAddress:(unint64_t)virtualAddress isCompressible:(BOOL)compressible shouldInitMetadata:(BOOL)metadata;
- (void)updateBindDataWithAddresses:(void *)addresses gpuVirtualAddress:(unint64_t)address shouldInitMetadata:(BOOL)metadata;
- (void)updateBindDataWithTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices;
@end

@implementation AGXG18PFamilyTexture

- (void)emitResourceInfoTraceEvent
{
  [(AGXG18PFamilyTexture *)self emitTextureResourceInfoSignpost:@"Echo"];
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyTexture;
  [(IOGPUMetalTexture *)&v3 emitResourceInfoTraceEvent];
}

- (void)emitTextureResourceInfoSignpost:(id)signpost
{
  v36 = *MEMORY[0x29EDCA608];
  v5 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5688]) != 0;
  v6 = self + *MEMORY[0x29EDC5638];
  v7 = *(v6 + 23) != 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::assembleTextureInfoEmission(self->_impl, *(v6 + 12), v5, v7, &v19, &v18, &v17, &v16);
  {
    {
      v9 = v19;
      uTF8String = [*(v6 + 11) UTF8String];
      v12 = v17;
      v11 = v18;
      v13 = v16;
      uTF8String2 = [signpost UTF8String];
      v15 = *(v6 + 9);
      *buf = 134350850;
      v21 = v9;
      v22 = 2082;
      v23 = uTF8String;
      v24 = 2050;
      v25 = v11;
      v26 = 2050;
      v27 = v12;
      v28 = 2050;
      v29 = v13;
      v30 = 2050;
      selfCopy = self;
      v32 = 2082;
      v33 = uTF8String2;
      v34 = 2050;
      v35 = v15;
      _os_signpost_emit_with_name_impl(&dword_29CA13000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Metal Texture Resource", "GlobalID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t  Dimension=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t  TexInfoPacked1=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t  TexInfoPacked2=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t  ObjectPtr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t  Action=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t  GPUVA=%{public,signpost.description:attribute}llu", buf, 0x52u);
    }
  }
}

- (id)heap
{
  if ([(AGXG18PFamilyTexture *)self isSparse])
  {
    return *(self->_impl + 78);
  }

  v4.receiver = self;
  v4.super_class = AGXG18PFamilyTexture;
  return [(IOGPUMetalResource *)&v4 heap];
}

- (void)finalizeCompressedTextureViewCreation
{
  backingResource = [(AGXTexture *)self backingResource];
  v4 = *MEMORY[0x29EDC5638];
  v5 = (&self->super.super.super.super.super.super.super.isa + v4);
  v6 = *(&self->super.super.super.super.super.super._labelLock._os_unfair_lock_opaque + v4) | 0x1000000000000000;
  v5[2] = v6;
  *v5 = &backingResource[v4];
  v5[1] = *(self->_impl + 9);
  v5[2] = v6 & 0xFF00000000000000 | *(self->_impl + 46) & 0xFFFFFFFFFFFFFFLL;
  *(self->_impl + 31) = *(&self->super.super.super._res.vendor.reserved[2] + v4);
}

- (void)finalizeTextureCreation
{
  impl = self->_impl;
  v4 = impl[73];
  if (v4)
  {
    LOBYTE(v4) = *(v4 + 1304) > *(impl + 36);
  }

  *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5670]) = v4;
  v5 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5688]) != 0;
  v6 = *MEMORY[0x29EDC5638];
  v7 = self + v6;
  v8 = *&self->super.super.super._anon_50[v6 + 104] != 0;
  v9 = *&self->super.super.super._anon_50[v6 + 16];
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::assembleTextureInfoEmission(impl, v9, v5, v8, &v16, &v15, &v14, &v13);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  [(AGXG18PFamilyTexture *)self emitTextureResourceInfoSignpost:@"Create"];
  *(self->_impl + 31) = *(v7 + 12);
  backingResource = [(AGXTexture *)self backingResource];
  v11 = *(v7 + 2);
  if (backingResource == self)
  {
    v12 = 0;
  }

  else
  {
    v11 |= 0x1000000000000000uLL;
    *(v7 + 2) = v11;
    v12 = backingResource + v6;
  }

  *v7 = v12;
  *(v7 + 1) = *(self->_impl + 9);
  *(v7 + 2) = v11 & 0xFF00000000000000 | *(self->_impl + 46) & 0xFFFFFFFFFFFFFFLL;
}

- (unint64_t)compressionFootprint
{
  if (*(self->_impl + 57) - 1 < 3)
  {
    return (*(self->_impl + 57) - 1) + 1;
  }

  else
  {
    return 0;
  }
}

- (int64_t)compressionFeedback
{
  impl = self->_impl;
  v3 = &qword_2A17A1000;
  {
    v3 = &qword_2A17A1000;
    if (v22)
    {
      AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCompressionFeedback(void)::CompressionPolicyVisitor>(void)const::disable_apple_compression = 0;
      v3 = &qword_2A17A1000;
    }
  }

  {
    v3 = &qword_2A17A1000;
    if (v23)
    {
      AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCompressionFeedback(void)::CompressionPolicyVisitor>(void)const::disable_apple_compression_for_shared_textures = 0;
      v3 = &qword_2A17A1000;
    }
  }

  {
    v3 = &qword_2A17A1000;
    if (v24)
    {
      AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCompressionFeedback(void)::CompressionPolicyVisitor>(void)const::disable_apple_compression_for_shared_attachments = 0;
      v3 = &qword_2A17A1000;
    }
  }

  v4 = impl[7];
  v5 = v4 & 0xFF00;
  if (*(v3 + 1480) == 1)
  {
    if (impl[21] | v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 514;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | 2;
  if (*(impl + 4) == 1)
  {
    v6 |= 2u;
  }

  v8 = impl[6];
  if (v8 == 3)
  {
    v6 = v7;
  }

  else if (!v8 && !((((impl[5] & 4) == 0) | ~AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCompressionFeedback(void)::CompressionPolicyVisitor>(void)const::disable_apple_compression_for_shared_attachments) & ~AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCompressionFeedback(void)::CompressionPolicyVisitor>(void)const::disable_apple_compression_for_shared_textures & 1 | (v5 != 0)))
  {
    v6 = 514;
  }

  if ((v4 & 6) == 2)
  {
    v6 |= 0x202u;
  }

  v9 = *(impl + 396);
  if (!v9)
  {
    v6 |= 0x102u;
  }

  v10 = impl[26];
  if (*(v10 + 14))
  {
    v6 |= 0xAu;
  }

  if ((v9 & 0xFF00) == 0x100)
  {
    v6 |= 0x42u;
  }

  if (*(impl + 240))
  {
    v6 |= 0x82u;
  }

  if (*(impl + 396) != 3 && v6 <= 1)
  {
    v12 = *(impl + 28);
    v13 = *v10;
    v14 = 16;
    v26 = 16;
    if (v13 == 56)
    {
      v15 = 8;
      v25 = 8;
      switch(v12)
      {
        case 2:
LABEL_36:
          v16 = &v26;
LABEL_43:
          *v16 = v15;
          v14 = v26;
          break;
        case 4:
LABEL_35:
          v25 = 4;
          goto LABEL_36;
        case 8:
          v26 = 8;
          v15 = 4;
          goto LABEL_35;
      }

LABEL_44:
      if (*(impl + 32) < v14 || *(impl + 33) < v25)
      {
        v6 |= 0x402u;
      }

      goto LABEL_47;
    }

    v25 = 16;
    v15 = 8;
    if (v12 != 2)
    {
      if (v12 != 4)
      {
        if (v12 != 8)
        {
          goto LABEL_44;
        }

        v25 = 8;
        v15 = 4;
      }

      v26 = 8;
    }

    v16 = &v25;
    goto LABEL_43;
  }

  if (v4)
  {
    goto LABEL_57;
  }

LABEL_47:
  v17 = impl[5];
  v18 = v17 ? v6 : v6 | 0x32;
  v19 = ((v17 & 2) == 0) | AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::supportsCompressedWrites(impl, impl[4], *(impl + 409), (v17 >> 14) & 1) & 1 ? v18 : v18 | 0x12;
  v6 = v19 | 0x802;
  if ((impl[5] & 0x20) == 0)
  {
    v6 = v19;
  }

  if ((v17 & 0x10) != 0)
  {
    return v6 | 0x22;
  }

  else
  {
LABEL_57:
    if (v6 <= 1)
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }
}

- (BOOL)validateBufferTextureWithSize:(unint64_t)size
{
  impl = self->_impl;
  if (impl[408] != 1)
  {
    return 1;
  }

  v4 = *(impl + 46);
  if (v4 + 16 > size)
  {
    return 0;
  }

  v6 = *(impl + 39);
  if (v6 && ((v7 = (v6 + v4), v9 = *v7, v8 = v7[1], v9 == 0xD5F5B499A374C74BLL) ? (v10 = v8 == 0x9241EEA3711BC5D0) : (v10 = 0), !v10))
  {
    return 0;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)firstMipmapInTail
{
  impl = self->_impl;
  v3 = impl[16];
  v4 = (impl[32] + impl[54] - 1) / impl[54];
  v5 = (impl[33] + impl[55] - 1) / impl[55];
  v6 = 32 - __clz(~(-1 << -__clz(v4 - 1)));
  if (v4 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = 32 - __clz(~(-1 << -__clz(v5 - 1)));
  if (v5 < 2)
  {
    v8 = 0;
  }

  if (!v3)
  {
    return 1;
  }

  v9 = 0;
  v10 = __clz(impl[64] / (impl[28] * *(*(impl + 26) + 88)) - 1);
  v11 = (33 - v10) >> 1;
  v12 = 32 - v10 - v11;
  while (1)
  {
    v13 = v7 - v9;
    if (v7 < v9)
    {
      v13 = 0;
    }

    v14 = v8 - v9;
    if (v8 < v9)
    {
      v14 = 0;
    }

    if (v14 < v12 || v13 < v11)
    {
      break;
    }

    if (v3 == ++v9)
    {
      return 1;
    }
  }

  return v9;
}

- (unint64_t)colorSpaceConversionMatrix
{
  result = 0;
  v4 = *(self->_impl + 81);
  if (v4 > 5)
  {
    if (v4 <= 28)
    {
      if (v4 == 6)
      {
        return 10;
      }

      else
      {
        return v4 == 28;
      }
    }

    else
    {
      switch(v4)
      {
        case 29:
          return 2;
        case 30:
          return 3;
        case 31:
          return 4;
      }
    }
  }

  else if (v4 <= 2)
  {
    if (v4 == 1)
    {
      return 5;
    }

    else if (v4 == 2)
    {
      return 7;
    }
  }

  else if (v4 == 3)
  {
    return 6;
  }

  else if (v4 == 4)
  {
    return 8;
  }

  else
  {
    return 9;
  }

  return result;
}

- (void)generateMipmapLevel:(unint64_t)level slice:(unint64_t)slice
{
  sliceCopy = slice;
  impl = self->_impl;
  v6 = *(impl + 36);
  v7 = v6 + level;
  v8 = v6 + level - 1;
  v10 = *(impl + 32);
  v9 = *(impl + 33);
  if (v10 >> v8 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 >> (v6 + level - 1);
  }

  v12 = v9 >> v8;
  if (v9 >> v8 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v9 >> v8;
  }

  v14 = *(impl + 4);
  v46 = v13;
  if (v14 <= 0x22)
  {
    if (((1 << v14) & 0x7C02) != 0)
    {
      v15 = agxsDownsample<AGXSDownsamplerGeneric<unsigned char,1u>>;
LABEL_12:
      v48 = v15;
      goto LABEL_20;
    }

    if (((1 << v14) & 0x7C0000000) != 0)
    {
      v15 = agxsDownsample<AGXSDownsamplerGeneric<unsigned char,2u>>;
      goto LABEL_12;
    }
  }

  v16 = v14 - 70;
  v17 = v16 > 0xF;
  v18 = (1 << v16) & 0xCC1F;
  if (v17 || v18 == 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = agxsDownsample<AGXSDownsamplerGeneric<unsigned char,4u>>;
  }

  v48 = v20;
LABEL_20:
  CPUPtr = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(impl, slice, v7, 0);
  v22 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(impl, sliceCopy, v7 - 1, 0);
  if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(impl, v7 - 1))
  {
    v25 = *(impl + 73);
    v26 = v25 && *(v25 + 1304) > v7 && *(impl + 57) != 0;
    v31 = 0;
    v32 = (8 * *(*(impl + 26) + 88)) >> v26;
    if (v32 <= 63)
    {
      if (v32 > 15)
      {
        if (v32 == 16)
        {
          v33 = 64;
          v34 = 128;
          goto LABEL_61;
        }

        v33 = 0;
        v34 = 0;
        if (v32 == 32)
        {
          v34 = 64;
          v33 = 64;
          goto LABEL_61;
        }
      }

      else
      {
        if (v32 == 4)
        {
          v33 = 128;
          v34 = 256;
          goto LABEL_61;
        }

        v33 = 0;
        v34 = 0;
        if (v32 == 8)
        {
          v34 = 128;
          v33 = 128;
          goto LABEL_61;
        }
      }
    }

    else if (v32 <= 255)
    {
      if (v32 == 64)
      {
        v33 = 32;
        v34 = 64;
        goto LABEL_61;
      }

      v33 = 0;
      v34 = 0;
      if (v32 == 128)
      {
        v34 = 32;
        v33 = 32;
        goto LABEL_61;
      }
    }

    else
    {
      if (v32 == 256)
      {
        v33 = 16;
        v34 = 32;
        goto LABEL_61;
      }

      if (v32 == 512)
      {
        v34 = 16;
        v33 = 16;
        goto LABEL_61;
      }

      v33 = 0;
      v34 = 0;
      if (v32 == 1024)
      {
        v33 = 8;
        v34 = 16;
LABEL_61:
        v31 = v34 < v33;
        if (v12 < v33)
        {
          return;
        }

        v24 = v11 / v34;
        v23 = v46 / v33;
      }
    }

    v35 = 33 - __clz(v24 - 1);
    if (v24 <= 1)
    {
      LOBYTE(v35) = 1;
    }

    v47 = v35;
    if (v34 <= v11)
    {
      v36 = v34 >> 1;
      v37 = v33 >> 1;
      if (v24 <= 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = v24;
      }

      if (v23 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v23;
      }

      v45 = v39;
      v40 = 0;
      if (v31)
      {
        do
        {
          v41 = 0;
          for (i = 0; i != v38; ++i)
          {
            (v48)(CPUPtr + ((v41 & 0xFFFFFFFC | (v40 >> 1 << v47) | i & 1 | (2 * (v40 & 1))) << 12), v22, v36, v37, 0, 0);
            v22 += 0x4000;
            v41 += 2;
          }

          ++v40;
        }

        while (v40 != v45);
      }

      else
      {
        do
        {
          v43 = 0;
          v44 = v38;
          do
          {
            (v48)(CPUPtr + ((v43 & 0xFFFFFFFC | (v40 >> 1 << v47) | v43 & 2 | v40 & 1) << 12), v22, v36, v37, 0, 0);
            v22 += 0x4000;
            v43 += 2;
            --v44;
          }

          while (v44);
          ++v40;
        }

        while (v40 != v45);
      }
    }

    return;
  }

  if (v9 >> v7 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v9 >> v7;
  }

  if (v10 >> v7 <= 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = v10 >> v7;
  }

  v30 = v10 >> v8 < 2 || v12 < 2;

  (v48)(CPUPtr, v22, v28, v27, v30, 0);
}

- (void)setSparseHeap:(id)heap
{
  impl = self->_impl;
  if ((impl[30] & 1) == 0)
  {
    impl[74] = [heap sparsePagesResource];
    impl[75] = [heap sparseQueueResource];
    impl[77] = [heap sparsePageQueueAddress];
    impl[78] = heap;
  }
}

- (void)initNewTextureData:(AGXNewTextureDataStruc *)data
{
  v3 = 0;
  impl = self->_impl;
  v5 = data->var1.var1 & 0xFFFFFFFFFFFFFFFELL | impl[232];
  data->var1.var1 = v5;
  v6 = 4096;
  if (!impl[332])
  {
    v6 = 0;
  }

  v7 = v6 | v5 & 0xFFFFFFFFFFFFEFFFLL;
  data->var1.var1 = v7;
  v8 = v7 & 0xFFFFFFFFFFFFDFFFLL | ((impl[397] << 8 == 1024) << 13);
  data->var1.var1 = v8;
  v9 = v8 & 0xFFFFFFFFFFFFBFFFLL | ((impl[397] << 8 == 768) << 14);
  data->var1.var1 = v9;
  v10 = v9 & 0xFFFFFFFFFFFFFF8FLL | (16 * (*(*(impl + 26) + 48) & 7));
  data->var1.var1 = v10;
  if ((impl[398] & 2) != 0)
  {
    v11 = *(impl + 28);
    v12 = (-2 * __clz(v11 - 1)) & 0xE;
    if (v11 >= 2)
    {
      v3 = v12;
    }

    else
    {
      v3 = 0;
    }
  }

  v13 = v3 | v10 & 0xFFFFFFFFFFFFFFF1;
  data->var1.var1 = v13;
  v14 = *(impl + 26);
  if (*(v14 + 24) < 2u)
  {
    v15 = 0;
  }

  else
  {
    v15 = (*(v14 + 80) != 0) << 7;
  }

  v16 = v15 | v13 & 0xFFFFFFFFFFFFFF7FLL;
  data->var1.var1 = v16;
  v17 = v16 & 0xFFFFFFFFFFFFFCFFLL | (((((*(*(impl + 26) + 88) << 8) + 768) >> 8) & 3) << 8);
  data->var1.var1 = v17;
  v18 = v17 & 0xFFFFFFFFFFFFF3FFLL | (((((*(*(impl + 26) + 89) << 10) + 3072) >> 10) & 3) << 10);
  data->var1.var1 = v18;
  v19 = v18 & 0xFFFFFFFFFFF87FFFLL | ((*(impl + 54) & 0xF) << 15);
  data->var1.var1 = v19;
  v20 = v19 & 0xFFFFFFFFFF87FFFFLL | ((*(impl + 55) & 0xF) << 19);
  data->var1.var1 = v20;
  v21 = v20 & 0xFFFFFFFC787FFFFFLL | ((*(impl + 16) & 0xF) << 23) | 0x200000000;
  data->var1.var1 = v21;
  v22 = *(impl + 73);
  v23 = v21 & 0xFFFFFFFBFFFFFFFFLL | ((v22 != 0) << 34);
  data->var1.var1 = v23;
  if (v22)
  {
    *(&data->var1.var1 + 1) = (*(*(impl + 73) + 376) + *(impl + 42) - 1) & -*(impl + 42);
  }

  if (*(impl + 79))
  {
    v24 = *(impl + 56);
    v25 = -__clz(v24 - 1) & 0xF;
    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v23 & 0xFFFFF0FE7FFFFFFFLL | (v26 << 40);
    data->var1.var1 = v27;
    v28 = *(impl + 57);
    v29 = -__clz(v28 - 1) & 0xF;
    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = v27 & 0xFFFF0FFFFFFFFFFFLL | (v30 << 44);
    data->var1.var1 = v31;
    v23 = v31 & 0xFFFDFFFFFFFFFFFFLL | ((*(impl + 19) != 0) << 49);
    data->var1.var1 = v23;
  }

  data->var1.var1 = (*(impl + 396) << 32) & (((*(impl + 396) & 0xFF00) == 256) << 48) | v23 & 0xFFFEFFFFFFFFFFFFLL;
}

- (BOOL)updateBindDataWithCompressedTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice
{
  sliceCopy = slice;
  levelCopy = level;
  v10 = *(texture + 74);
  v11 = *(v10 + 144);
  GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v10, slice, v11 + level, 0, 0);
  v13 = (GPUVirtualAddress + 127) & 0xFFFFFFFFFFFFFF80;
  if (GPUVirtualAddress == v13)
  {
    impl = self->_impl;
    impl[39] = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v10, sliceCopy, v11 + levelCopy, 0);
    impl[9] = GPUVirtualAddress;
    (*(*impl + 16))(impl);
  }

  return GPUVirtualAddress == v13;
}

- (void)updateBindDataWithTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices
{
  selfCopy = self;
  location = slices.location;
  v9 = 592;
  v10 = *(texture + 74);
  v12 = format == 261 && *(v10 + 32) != 261;
  impl = self->_impl;
  v14 = impl[73];
  if (v14 && *(v14 + 1304))
  {
    if (*(impl[26] + 24) >= 2u && *(impl + 98) * *(impl + 96) != *(v10 + 392) * *(v10 + 384))
    {
      GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(v10 + 584) + 648, slices.location, 0, 0, 0);
      v16 = GPUVirtualAddress - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(v10 + 584), slices.location, 0, 0, 0);
      v14 = *(selfCopy->_impl + 73);
      *(v14 + 1336) = v16;
    }

    CPUPtr = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(*(v10 + 584) + 648 * v12, slices.location, 0, 0);
    v18 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(v10 + 584) + 648 * v12, slices.location, 0, 0, 0);
    *(v14 + 312) = CPUPtr;
    *(v14 + 72) = v18;
    (*(*v14 + 16))(v14);
    if (*(v14 + 1344) >= 2uLL)
    {
      v19 = *(v14 + 1336);
      *(v14 + 960) = CPUPtr + v19;
      *(v14 + 720) = v19 + v18;
      (*(*(v14 + 648) + 16))();
    }
  }

  v20 = selfCopy->_impl;
  if (v20[31] == 1)
  {
    v21 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(v10 + 632), slices.location, 0, 0, v12);
    v22 = *(selfCopy->_impl + 79);
    v22[39] = 0;
    v22[9] = v21;
    (*(*v22 + 16))(v22);
    v20 = selfCopy->_impl;
  }

  if (*(v20[26] + 24) >= 2u && *(v20 + 98) * *(v20 + 96) != *(v10 + 392) * *(v10 + 384))
  {
    v38 = v12;
    v23 = 0;
    v24 = 0;
    v25 = 1;
    do
    {
      v39 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v10, slices.location, 0, v25);
      v26 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v10, slices.location, 0, v25 - 1);
      v27 = v9;
      v28 = selfCopy;
      v29 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v10, slices.location, 0, 0, v25);
      v23 += v39 - v26;
      v30 = v29 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v10, slices.location, 0, 0, v25 - 1);
      selfCopy = v28;
      v9 = v27;
      v24 += v30;
      v31 = *(&selfCopy->super.super.super.super.super.super.super.isa + v27);
      v32 = *(v31[26] + 24);
      ++v25;
    }

    while (v25 < v32);
    if (v32 >= 2)
    {
      v33 = v31 + 45;
      v34 = v32 - 1;
      do
      {
        *(v33 - 1) = v24;
        *v33++ = v23;
        --v34;
      }

      while (v34);
    }

    (*(*v31 + 16))(v31);
    v20 = *(&selfCopy->super.super.super.super.super.super.super.isa + v27);
    v12 = v38;
    location = slices.location;
  }

  v35 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v10, location, 0, v12);
  v36 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v10, location, 0, 0, v12);
  v20[39] = v35;
  v20[9] = v36;
  v37 = *(*v20 + 16);

  v37(v20);
}

- (void)updateBindDataWithAddresses:(void *)addresses gpuVirtualAddress:(unint64_t)address shouldInitMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  impl = self->_impl;
  v8 = impl[73];
  if (v8 && *(v8 + 1304))
  {
    v9 = self + *MEMORY[0x29EDC5638];
    if (*(*(v9 + 14) + 52) == 64)
    {
      v10 = *(v9 + 28);
      v11 = 1;
    }

    else
    {
      selfCopy = self;
      addressesCopy = addresses;
      if (impl[21] && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
      {
        BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
        v15 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - BaseAddressOfCompressedTileDataRegionOfSliceAndPlane;
      }

      else
      {
        v15 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(impl, 0, 0);
      }

      addresses = addressesCopy;
      v10 = &addressesCopy[v15];
      v11 = 1;
      self = selfCopy;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  [(AGXG18PFamilyTexture *)self updateBindDataWithAddresses:addresses cpuMetadataAddress:v10 gpuVirtualAddress:address isCompressible:v11 shouldInitMetadata:metadataCopy];
}

- (void)updateBindDataWithAddresses:(void *)addresses cpuMetadataAddress:(void *)address gpuVirtualAddress:(unint64_t)virtualAddress isCompressible:(BOOL)compressible shouldInitMetadata:(BOOL)metadata
{
  if (compressible)
  {
    metadataCopy = metadata;
    impl = self->_impl;
    if (impl[21] && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v14 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - BaseAddressOfCompressedTileDataRegionOfSliceAndPlane;
    }

    else
    {
      v14 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(impl, 0, 0);
    }

    v15 = v14 + virtualAddress;
    v16 = *(self->_impl + 73);
    v16[39] = address;
    v16[9] = v14 + virtualAddress;
    (*(*v16 + 16))(v16);
    if (v16[168] >= 2uLL)
    {
      v17 = v16[167];
      v16[120] = address + v17;
      v16[90] = v17 + v15;
      (*(v16[81] + 16))();
    }

    if (metadataCopy)
    {
      v18 = *(self->_impl + 73);
      if (*(v18 + 1344))
      {
        v19 = 0;
        v20 = 0;
        do
        {
          if (*(v18 + 1352))
          {
            MetadataUncompressedValue = 0;
          }

          else
          {
            MetadataUncompressedValue = AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMetadataUncompressedValue(*(v18 + 1296), v20);
          }

          v22 = v18 + 648 * v19;
          CPUPtr = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v22, 0, 0, 0);
          v24 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v22, 0, 1);
          memset(CPUPtr, MetadataUncompressedValue, v24);
          v19 = ++v20;
        }

        while (*(v18 + 1344) > v20);
      }
    }
  }

  v25 = self->_impl;
  if (v25[31] == 1)
  {
    v26 = (virtualAddress + v25[47] + *(v25 + 59) - 1) & -*(v25 + 59);
    v27 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5648]);
    if (v27 && *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5650]))
    {
      v28 = *(v27 + *MEMORY[0x29EDC5638] + 72);
      v29 = [*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5648]) length] + v28;
      v25 = self->_impl;
      v26 = v29 + *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5658]) / *(v25 + 59);
    }

    v30 = v25[79];
    v30[39] = 0;
    v30[9] = v26;
    (*(*v30 + 16))(v30, a2, addresses, address);
    v25 = self->_impl;
  }

  v25[39] = addresses;
  v25[9] = virtualAddress;
  v31 = *(*v25 + 16);

  v31();
}

- (BOOL)initImplWithTexture:(id)texture descriptor:(id)descriptor
{
  v6 = *(texture + 74);
  [descriptor swizzle];
  v7 = MTLTextureSwizzleChannelsToKey();
  if (*(v6 + 48) == 3)
  {
    goto LABEL_22;
  }

  v8 = v7;
  v9 = 6;
  if ([descriptor textureType] != 5)
  {
    if ([descriptor textureType] == 6)
    {
      v9 = 6;
    }

    else
    {
      v9 = 1;
    }
  }

  [descriptor slices];
  v11 = v10;
  v12 = malloc_type_calloc(0x288uLL, 1uLL, 0x10E1040DA59F5FCuLL);
  self->_impl = v12;
  if (v12)
  {
    v51 = v8;
    v13 = *(v6 + 56);
    writeAccessPattern = [descriptor writeAccessPattern];
    if ([descriptor writeAccessPattern] == 2)
    {
      LODWORD(v13) = v13 | 0x10;
    }

    else if ([descriptor writeAccessPattern] == 1)
    {
      LODWORD(v13) = v13 & 0xFFFFFFEF;
    }

    impl = self->_impl;
    v48 = *(v6 + 8);
    textureType = [descriptor textureType];
    pixelFormat = [descriptor pixelFormat];
    v45 = *(v6 + 40);
    v46 = pixelFormat;
    if (*(v6 + 240))
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v6 + 236);
    }

    v44 = *(v6 + 48);
    v49 = v13 | (writeAccessPattern << 32);
    v42 = *(v6 + 192);
    v43 = *(v6 + 324);
    v40 = *(v6 + 132);
    v41 = *(v6 + 128);
    v39 = *(v6 + 136);
    v37 = *(v6 + 112);
    v38 = *(v6 + 140);
    v36 = *(v6 + 152);
    v32 = *(v6 + 168);
    v33 = *(v6 + 160);
    v30 = *(v6 + 180);
    v31 = *(v6 + 176);
    v34 = v11 / v9;
    v35 = *(v6 + 241);
    v17 = *(v6 + 184);
    v18 = *(v6 + 144) + [descriptor levels];
    [descriptor levels];
    v20 = v19;
    v21 = *(v6 + 232);
    v22 = *(v6 + 408);
    v23 = *(v6 + 409);
    resourceIndex = [descriptor resourceIndex];
    if (v16)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if ((v46 - 1) > 0x289)
    {
      v26 = &texFormatUnsupported;
    }

    else
    {
      v26 = *(&off_29F342380 + (v46 - 1));
    }

    *AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(impl, v48, 0, v25, textureType, v26, v46, v45, 0.0, v44, v49, v43, v42, v51, v41, v40, v39, v38, v37, v34, v36, v16, v35, v33, v32, v31, v30, v17, v18, v20, v21, v22, v23, v29, resourceIndex) = off_2A23FA3D8;
    v27 = self->_impl;
    if (v27[200] == 1)
    {
      *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5698]) = *(v27 + 28);
      [(AGXTexture *)self set_alignment:AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::getBaseAlignment(v27)];
      [(AGXTexture *)self set_cpuSizeBytes:*(self->_impl + 46)];
      [(AGXTexture *)self set_gpuSizeBytes:*(self->_impl + 47)];
      [(AGXTexture *)self set_bytesPerRow:AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::View)1, (AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::Units)0, (AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::Op)0>(self->_impl, 0)];
      *(&self->super.super.super.super.super.super._labelLock._os_unfair_lock_opaque + *MEMORY[0x29EDC5638]) = *(&self->super.super.super.super.super.super._labelLock._os_unfair_lock_opaque + *MEMORY[0x29EDC5638]) & 0x1FFFFFFFFFFFFFFFLL | 0x4000000000000000;
      LOBYTE(v12) = 1;
      return v12;
    }

LABEL_22:
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)initImplWithTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(unsigned int)swizzle resourceIndex:(unint64_t)index
{
  v9 = *(texture + 74);
  if (*(v9 + 48) == 3)
  {
    goto LABEL_17;
  }

  length = levels.length;
  location = levels.location;
  if (type - 5 >= 2)
  {
    v15 = 1;
  }

  else
  {
    v15 = 6;
  }

  v16 = malloc_type_calloc(0x288uLL, 1uLL, 0x10E1040DA59F5FCuLL);
  self->_impl = v16;
  if (v16)
  {
    v17 = *(v9 + 8);
    v18 = *(v9 + 40);
    if (*(v9 + 240))
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v9 + 236);
    }

    typeCopy = type;
    v21 = *(v9 + 48);
    v22 = *(v9 + 56);
    v23 = *(v9 + 324);
    v24 = *(v9 + 192);
    v25 = *(v9 + 128);
    v47 = *(v9 + 132);
    v26 = *(v9 + 144) + location;
    v45 = *(v9 + 140);
    v46 = *(v9 + 136);
    v44 = *(v9 + 112);
    v27 = *(v9 + 241);
    v28 = *(v9 + 152);
    v29 = *(v9 + 160);
    v30 = *(v9 + 168);
    v31 = *(v9 + 176);
    v32 = *(v9 + 180);
    v33 = *(v9 + 184);
    v34 = *(v9 + 148);
    v35 = LODWORD(slices.length) / v15;
    v36 = *(v9 + 232);
    v37 = *(v9 + 408);
    if (v19)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    v39 = *(v9 + 409);
    if ((format - 1) > 0x289)
    {
      v40 = &texFormatUnsupported;
    }

    else
    {
      v40 = *(&off_29F342380 + (format - 1));
    }

    *AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v16, v17, 0, v38, typeCopy, v40, format, v18, v34, v21, v22, v23, v24, swizzle, v25, v47, v46, v45, v44, v35, v28, v19, v27, v29, v30, v31, v32, v33, v26, length, v36, v37, v39, v43, index) = off_2A23FA3D8;
    impl = self->_impl;
    if (impl[200] == 1)
    {
      *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5698]) = *(impl + 28);
      [(AGXTexture *)self set_alignment:AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::getBaseAlignment(impl)];
      [(AGXTexture *)self set_cpuSizeBytes:*(self->_impl + 46)];
      [(AGXTexture *)self set_gpuSizeBytes:*(self->_impl + 47)];
      [(AGXTexture *)self set_bytesPerRow:AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::View)1, (AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::Units)0, (AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::Op)0>(self->_impl, 0)];
      *(&self->super.super.super.super.super.super._labelLock._os_unfair_lock_opaque + *MEMORY[0x29EDC5638]) = *(&self->super.super.super.super.super.super._labelLock._os_unfair_lock_opaque + *MEMORY[0x29EDC5638]) & 0x1FFFFFFFFFFFFFFFLL | 0x4000000000000000;
      LOBYTE(v16) = 1;
      return v16;
    }

LABEL_17:
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)initImplWithCompressedTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level resourceIndex:(unint64_t)index
{
  selfCopy = self;
  LOBYTE(self) = 0;
  if (type == 2 && format == 123)
  {
    v8 = *(texture + 74);
    if (*(v8 + 332))
    {
      indexCopy = index;
      *(selfCopy + *MEMORY[0x29EDC5690]) = 123;
      v10 = *(v8 + 144) + level;
      v11 = *(v8 + 132);
      v12 = *(v8 + 128) >> (*(v8 + 144) + level);
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v13 = *(v8 + 220);
      v14 = (*(v8 + 216) + v12 - 1) / *(v8 + 216);
      *(selfCopy + *MEMORY[0x29EDC56A8]) = v14;
      v15 = v11 >> v10;
      if (v15 <= 1)
      {
        v15 = 1;
      }

      v16 = (v13 + v15 - 1) / v13;
      *(selfCopy + *MEMORY[0x29EDC5668]) = v16;
      *(selfCopy + *MEMORY[0x29EDC5678]) = 1;
      *(selfCopy + *MEMORY[0x29EDC5660]) = 1;
      *(selfCopy + *MEMORY[0x29EDC5640]) = 1;
      *(selfCopy + *MEMORY[0x29EDC5698]) = 1;
      *(selfCopy + *MEMORY[0x29EDC56A0]) = 2;
      self = malloc_type_calloc(0x288uLL, 1uLL, 0x10E1040DA59F5FCuLL);
      selfCopy[74] = self;
      if (self)
      {
        if (*(v8 + 240))
        {
          v17 = 0;
        }

        else
        {
          v17 = *(v8 + 236);
        }

        if (v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        *AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(self, *(v8 + 8), 0, v18, 2, &texFormatRGBA32UI, 123, *(v8 + 40), *(v8 + 148), *(v8 + 48), 2, *(v8 + 324), *(v8 + 192), *(v8 + 196), v14, v16, 1u, 1u, 1, 1, *(v8 + 152), v17, *(v8 + 241), *(v8 + 160), 0, 0, 0, 0, 0, 1, *(v8 + 232), *(v8 + 408), *(v8 + 409), v27, indexCopy) = off_2A23FA3D8;
        v19 = selfCopy[74];
        if (*(v19 + 200) == 1)
        {
          v20 = *(v8 + 232);
          *(v19 + 232) = v20;
          if (v20 == 1)
          {
            v21 = *(v8 + 260);
            *(v19 + 276) = *(v8 + 276);
            *(v19 + 260) = v21;
            v22 = v19 + 284;
            v23 = *(v8 + 284);
            *(v22 + 16) = *(v8 + 300);
            *v22 = v23;
          }

          if (*(v8 + 236))
          {
            v24 = *(v8 + 624);
            if (v24)
            {
              v25 = selfCopy[74];
              if ((*(v25 + 240) & 1) == 0)
              {
                *(v25 + 592) = [v24 sparsePagesResource];
                *(v25 + 600) = [v24 sparseQueueResource];
                *(v25 + 616) = [v24 sparsePageQueueAddress];
                *(v25 + 624) = v24;
              }
            }
          }

          [selfCopy set_alignment:{AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::getBaseAlignment(selfCopy[74])}];
          [selfCopy set_cpuSizeBytes:*(selfCopy[74] + 368)];
          [selfCopy set_gpuSizeBytes:*(selfCopy[74] + 376)];
          [selfCopy set_bytesPerRow:{AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::View)1, (AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::Units)0, (AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::Op)0>(selfCopy[74], 0)}];
          *(selfCopy + *MEMORY[0x29EDC5638] + 16) = *(selfCopy + *MEMORY[0x29EDC5638] + 16) & 0x1FFFFFFFFFFFFFFFLL | 0x4000000000000000;
          LOBYTE(self) = 1;
        }

        else
        {
          LOBYTE(self) = 0;
        }
      }
    }
  }

  return self;
}

- (BOOL)initImplWithTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index
{
  v8 = *(texture + 74);
  if (*(v8 + 48) == 3)
  {
    return 0;
  }

  length = levels.length;
  location = levels.location;
  v14 = type - 5 >= 2 ? 1 : 6;
  v15 = malloc_type_calloc(0x288uLL, 1uLL, 0x10E1040DA59F5FCuLL);
  self->_impl = v15;
  if (!v15)
  {
    return 0;
  }

  v16 = (*(v8 + 240) & 1) != 0 ? 0 : *(v8 + 236);
  v17 = LODWORD(slices.length) / v14;
  v18 = v16 ? 1 : 2;
  v19 = (format - 1) > 0x289 ? &texFormatUnsupported : *(&off_29F342380 + (format - 1));
  *AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v15, *(v8 + 8), 0, v18, type, v19, format, *(v8 + 40), *(v8 + 148), *(v8 + 48), *(v8 + 56), *(v8 + 324), *(v8 + 192), *(v8 + 196), *(v8 + 128), *(v8 + 132), *(v8 + 136), *(v8 + 140), *(v8 + 112), v17, *(v8 + 152), v16, *(v8 + 241), *(v8 + 160), *(v8 + 168), *(v8 + 176), *(v8 + 180), *(v8 + 184), *(v8 + 144) + location, length, *(v8 + 232), *(v8 + 408), *(v8 + 409), v28, index) = off_2A23FA3D8;
  impl = self->_impl;
  if (impl[200] != 1)
  {
    return 0;
  }

  *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5698]) = *(impl + 28);
  [(AGXTexture *)self set_alignment:AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::getBaseAlignment(impl)];
  [(AGXTexture *)self set_cpuSizeBytes:*(self->_impl + 46)];
  [(AGXTexture *)self set_gpuSizeBytes:*(self->_impl + 47)];
  [(AGXTexture *)self set_bytesPerRow:AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::View)1, (AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::Units)0, (AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::Op)0>(self->_impl, 0)];
  if (*(v8 + 236))
  {
    v21 = *(v8 + 624);
    if (v21)
    {
      v22 = self->_impl;
      if ((v22[30] & 1) == 0)
      {
        v22[74] = [*(v8 + 624) sparsePagesResource];
        v22[75] = [v21 sparseQueueResource];
        v22[77] = [v21 sparsePageQueueAddress];
        v22[78] = v21;
      }
    }
  }

  *v30 = xmmword_29D2F2600;
  v23 = 70;
  if (*(*(v8 + 208) + 28) == *(*(self->_impl + 26) + 28))
  {
    v23 = 0;
  }

  v24 = 1;
  *(v30 | (v23 >> 3)) |= 1 << (v23 & 6);
  device = [texture device];
  v26 = v30[1];
  atomic_fetch_or((device + 856), v30[0]);
  atomic_fetch_or((device + 864), v26);
  *(&self->super.super.super.super.super.super._labelLock._os_unfair_lock_opaque + *MEMORY[0x29EDC5638]) = *(&self->super.super.super.super.super.super._labelLock._os_unfair_lock_opaque + *MEMORY[0x29EDC5638]) & 0x1FFFFFFFFFFFFFFFLL | 0x4000000000000000;
  return v24;
}

- (BOOL)initImplWithDevice:(id)device Descriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice buffer:(id)buffer bytesPerRow:(unint64_t)row allowNPOT:(BOOL)self0 sparsePageSize:(unint64_t)self1 isCompressedIOSurface:(BOOL)self2 isHeapBacked:(BOOL)self3
{
  sliceCopy = slice;
  v117 = *MEMORY[0x29EDCA608];
  descriptorPrivate = [descriptor descriptorPrivate];
  v19 = descriptorPrivate;
  if (iosurface | buffer)
  {
    isTwiddledOnlyFormat = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isTwiddledOnlyFormat(*(descriptorPrivate + 8));
  }

  else
  {
    isTwiddledOnlyFormat = 0;
  }

  iosurface = [buffer iosurface];
  v20 = 0x2A179C000uLL;
  v21 = *(device + 106);
  *&v112[1] = 0;
  v22 = *(v19 + 96);
  if (v22 == 2 || (v22 == 1 ? (LOBYTE(v22) = 9) : (LOBYTE(v22) = 0), v23 = *(v19 + 152), v23 > 3))
  {
    LOBYTE(v23) = 0;
  }

  else
  {
    v112[1] = *(v19 + 152);
  }

  if (!*(v19 + 128))
  {
    LOBYTE(v22) = 2;
  }

  if (surface)
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

  v25 = v22 & 0xFB | v24;
  v112[0] = v25;
  if (!iosurface)
  {
    v26 = *(v19 + 8) - 1;
    if (v26 > 0x289)
    {
      v27 = &texFormatUnsupported;
    }

    else
    {
      v27 = *(&off_29F342380 + v26);
    }

    if ((*(v27 + 60) & 0xC) == 0)
    {
      goto LABEL_41;
    }

    v31 = v25 | 1;
    goto LABEL_40;
  }

  if ((v22 & 3) == 0)
  {
    if (surface)
    {
      v112[0] = v25 | 1;
      if ((v25 & 2) != 0)
      {
        goto LABEL_125;
      }

      goto LABEL_25;
    }

    v31 = v25 | 2;
LABEL_40:
    v112[0] = v31;
    goto LABEL_41;
  }

  if (!surface)
  {
    goto LABEL_41;
  }

  if ((v25 & 2) != 0)
  {
    goto LABEL_125;
  }

LABEL_25:
  CompressionFootprintOfPlane = IOSurfaceGetCompressionFootprintOfPlane();
  if (CompressionFootprintOfPlane <= 3)
  {
    LOBYTE(v23) = CompressionFootprintOfPlane;
  }

  else
  {
    LOBYTE(v23) = 0;
  }

  if (v112[1])
  {
    if (v112[1] == 3)
    {
      if (CompressionFootprintOfPlane > 3 || 1u >> (CompressionFootprintOfPlane & 0xF))
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture creation failed: Requesting lossy compression on lossless compressed IOSurface.", buf, 2u);
        }

        if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
        {
          goto LABEL_125;
        }

        *buf = 0;
        v29 = MEMORY[0x29EDCA988];
        v30 = "AGX: Texture creation failed: Requesting lossy compression on lossless compressed IOSurface.";
        goto LABEL_124;
      }
    }

    else if (v23 != v112[1])
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture creation failed: Mismatched IOSurface compression footprint.", buf, 2u);
      }

      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
      {
        goto LABEL_125;
      }

      *buf = 0;
      v29 = MEMORY[0x29EDCA988];
      v30 = "AGX: Texture creation failed: Mismatched IOSurface compression footprint.";
      goto LABEL_124;
    }
  }

  if ((*(v19 + 104) & 0x4000) == 0)
  {
    v68 = *(v19 + 96) == 1;
    if (!*(v21 + 16996))
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  v68 = 1;
  if (*(v21 + 16996))
  {
LABEL_91:
    if ((*(v19 + 104) & 2) == 0 || v68)
    {
      goto LABEL_92;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture creation failed: Compression unsupported with usage flags.", buf, 2u);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      goto LABEL_125;
    }

    *buf = 0;
    v29 = MEMORY[0x29EDCA988];
    v30 = "AGX: Texture creation failed: Compression unsupported with usage flags.";
LABEL_124:
    _os_log_impl(&dword_29CA13000, v29, OS_LOG_TYPE_INFO, v30, buf, 2u);
    goto LABEL_125;
  }

LABEL_92:
  v112[1] = v23;
  v69 = *(v19 + 8) - 1;
  if (v69 > 0x289)
  {
    v70 = &texFormatUnsupported;
    if (plane)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v70 = *(&off_29F342380 + v69);
    if (plane)
    {
      goto LABEL_41;
    }
  }

  if (*(v70 + 6) >= 2u && !*(v70 + 20))
  {
    deviceCopy = device;
    v77 = 2;
    do
    {
      v78 = IOSurfaceGetCompressionFootprintOfPlane();
      if (v78 >= 4)
      {
        v79 = 0;
      }

      else
      {
        v79 = v78;
      }

      v112[v77] = v79;
    }

    while (v77++ < *(v70 + 6));
    device = deviceCopy;
    v20 = 0x2A179C000;
  }

LABEL_41:
  v32 = v112[0];
  v112[0] &= ~0x10u;
  *&v112[4] = *(v19 + 176);
  if (*&v112[4] == 2 && (v32 & 2 | v23) == 0)
  {
    v112[0] = v32 | 0x10;
  }

  v106 = *v112;
  v34 = malloc_type_calloc(0x288uLL, 1uLL, 0x10E1040DA59F5FCuLL);
  self->_impl = v34;
  if (v34)
  {
    v35 = v34;
    selfCopy = self;
    v37 = *(v19 + 8);
    v102 = *v19;
    v100 = *(device + *(v20 + 1260));
    v101 = *(v19 + 104);
    v38 = *(v19 + 168) - 1;
    iosurfaceCopy = iosurface;
    v103 = selfCopy;
    descriptorCopy = descriptor;
    deviceCopy2 = device;
    if (v38 > 9)
    {
      v99 = 0;
    }

    else
    {
      v99 = dword_29D2F7A6C[v38];
    }

    v98 = *(v19 + 208);
    if ((*(v19 + 72) - 1) < 4)
    {
      v39 = *(v19 + 72);
    }

    else
    {
      v39 = 0;
    }

    v97 = v39;
    v95 = *(v19 + 16);
    v96 = *(v19 + 84);
    v40 = *(v19 + 24);
    v41 = *(v19 + 32);
    v42 = *(v19 + 40);
    v43 = *(v19 + 48);
    v44 = *(v19 + 56);
    v45 = *(v19 + 184);
    v46 = *(v19 + 112) & 0xFLL;
    if (buffer)
    {
      backed = 1;
    }

    resourceIndex = [descriptorCopy resourceIndex];
    if (size)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }

    if ((v37 - 1) > 0x289)
    {
      v50 = &texFormatUnsupported;
    }

    else
    {
      v50 = *(&off_29F342380 + (v37 - 1));
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v35, v100, 0, v49, v102, v50, v37, v101, 0.0, v98, v106, v99, v97, v96, v95, v40, v41, v42, v43, v44, row, size, v45 != 0, v46, iosurfaceCopy, plane, sliceCopy, iosurface, 0, v42, t, isTwiddledOnlyFormat, backed, v93, resourceIndex);
    *v35 = off_2A23FA3D8;
    impl = v103->_impl;
    if (*(impl + 200) != 1)
    {
      goto LABEL_125;
    }

    v52 = *(impl + 632);
    *(&v103->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5698]) = *(impl + 112);
    [(AGXTexture *)v103 set_alignment:AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::getBaseAlignment(impl)];
    [(AGXTexture *)v103 set_cpuSizeBytes:*(v103->_impl + 46)];
    [(AGXTexture *)v103 set_gpuSizeBytes:*(v103->_impl + 47)];
    getGPUSizeBytes = [(AGXTexture *)v103 getGPUSizeBytes];
    v54 = v103->_impl;
    if (*(v54 + 168) && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v56 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - BaseAddressOfCompressedTileDataRegionOfSliceAndPlane;
    }

    else
    {
      v56 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v54, 0, 0);
    }

    [(AGXTexture *)v103 set_gpuMetadataSizeBytes:getGPUSizeBytes - v56];
    if (v52)
    {
      v57 = *(v52 + 376);
    }

    else
    {
      v57 = 0;
    }

    [(AGXTexture *)v103 set_gpuResidencySizeBytes:v57];
    [(AGXTexture *)v103 set_bytesPerRow:AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::View)1, (AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::Units)0, (AGX::Texture<(AGXTextureMemoryLayout)4, AGX::HAL300::Encoders, AGX::HAL300::Classes>::Op)0>(v103->_impl, 0)];
    if (size)
    {
      v58 = v103->_impl;
      v58[152] = [descriptorCopy sparseSurfaceDefaultValue];
    }

    v103->super._hasCPUMapping = [descriptorCopy protectionOptions] == 0;
    resourceOptions = [descriptorCopy resourceOptions];
    hasCPUMapping = v103->super._hasCPUMapping;
    if ((resourceOptions & 0x80000) != 0)
    {
      hasCPUMapping = 0;
    }

    v103->super._hasCPUMapping = hasCPUMapping;
    if (*(deviceCopy2[106] + 16988) == 1)
    {
      storageMode = [descriptorCopy storageMode];
      v62 = v103->super._hasCPUMapping;
      if (storageMode == 2)
      {
        v62 = 0;
      }

      v103->super._hasCPUMapping = v62;
    }

    if (!iosurfaceCopy)
    {
      goto LABEL_83;
    }

    v63 = *(v103->_impl + 73);
    if (v63)
    {
      if (((*(v63 + 1304) != 0) ^ surface))
      {
        goto LABEL_125;
      }

LABEL_83:
      v64 = deviceCopy2 + 107;
      if (*(deviceCopy2 + 976) != 1)
      {
LABEL_241:
        *(&v103->super.super.super.super.super.super._labelLock._os_unfair_lock_opaque + *MEMORY[0x29EDC5638]) = *(&v103->super.super.super.super.super.super._labelLock._os_unfair_lock_opaque + *MEMORY[0x29EDC5638]) & 0x1FFFFFFFFFFFFFFFLL | 0x4000000000000000;
        LOBYTE(v34) = 1;
        return v34;
      }

      v65 = [descriptorCopy pixelFormat] - 250;
      if (v65 > 0xB)
      {
        LOBYTE(v67) = 0;
        v66 = 16;
      }

      else
      {
        v66 = qword_29D2F7980[v65];
        v67 = qword_29D2F79E0[v65];
      }

      v71 = 1 << v67;
      resourceOptions2 = [descriptorCopy resourceOptions];
      v73 = 0x8000000000000000;
      if ((resourceOptions2 & 0x100) == 0)
      {
        v73 = 1;
      }

      v74 = v73 | v71;
      textureType = [descriptorCopy textureType];
      if (textureType > 3)
      {
        if (textureType > 5)
        {
          if (textureType == 6)
          {
            v74 |= 0x4000000uLL;
          }

          else if (textureType == 7)
          {
            v74 |= 0x8000000uLL;
          }
        }

        else if (textureType == 4)
        {
          v74 |= 0x1000000uLL;
        }

        else
        {
          v74 |= 0x2000000uLL;
        }
      }

      else if (textureType > 1)
      {
        if (textureType == 2)
        {
          v74 |= 0x400000uLL;
        }

        else
        {
          v74 |= 0x800000uLL;
        }
      }

      else if (textureType)
      {
        if (textureType == 1)
        {
          v74 |= 0x200000uLL;
        }
      }

      else
      {
        v74 |= 0x100000uLL;
      }

      storageMode2 = [descriptorCopy storageMode];
      switch(storageMode2)
      {
        case 3:
          v74 |= 0x1000000000000000uLL;
          break;
        case 2:
          v74 |= 0x800000000000000uLL;
          break;
        case 0:
          v74 |= 0x400000000000000uLL;
          break;
      }

      if ([descriptorCopy usage])
      {
        v82 = v74 | ([descriptorCopy usage] << 30);
      }

      else
      {
        v82 = v74 | 0x20000000;
      }

      if (![descriptorCopy allowGPUOptimizedContents])
      {
        v82 |= 0x1000000000uLL;
      }

      if (*(v103->_impl + 332) == 1)
      {
        pixelFormat = [descriptorCopy pixelFormat];
        v84 = pixelFormat == 227 || pixelFormat == 221;
        v85 = 0x400000000;
        if (!v84)
        {
          v85 = 0;
        }
      }

      else
      {
        v85 = 0;
      }

      atomic_fetch_or(v64, v82);
      atomic_fetch_or(deviceCopy2 + 108, v85);
      pixelFormat2 = [descriptorCopy pixelFormat];
      v87 = 0;
      switch(pixelFormat2)
      {
        case 1:
        case 10:
        case 11:
          goto LABEL_222;
        case 12:
          v87 = 4;
          goto LABEL_222;
        case 13:
          v87 = 8;
          goto LABEL_222;
        case 14:
          v87 = 12;
          goto LABEL_222;
        case 20:
          v87 = 20;
          goto LABEL_222;
        case 22:
          v87 = 24;
          goto LABEL_222;
        case 23:
          v87 = 28;
          goto LABEL_222;
        case 24:
          v87 = 32;
          goto LABEL_222;
        case 25:
          v87 = 16;
          goto LABEL_222;
        case 30:
        case 31:
          v87 = 1;
          goto LABEL_222;
        case 32:
          v87 = 5;
          goto LABEL_222;
        case 33:
          v87 = 9;
          goto LABEL_222;
        case 34:
          v87 = 13;
          goto LABEL_222;
        case 40:
        case 41:
        case 42:
        case 43:
          v87 = 48;
          goto LABEL_222;
        case 53:
          v87 = 40;
          goto LABEL_222;
        case 54:
          v87 = 44;
          goto LABEL_222;
        case 55:
          v87 = 36;
          goto LABEL_222;
        case 60:
          v87 = 21;
          goto LABEL_222;
        case 62:
          v87 = 25;
          goto LABEL_222;
        case 63:
          v87 = 29;
          goto LABEL_222;
        case 64:
          v87 = 33;
          goto LABEL_222;
        case 65:
          v87 = 17;
          goto LABEL_222;
        case 70:
        case 71:
        case 80:
        case 81:
          v87 = 3;
          goto LABEL_222;
        case 72:
          v87 = 7;
          goto LABEL_222;
        case 73:
          v87 = 11;
          goto LABEL_222;
        case 74:
          v87 = 15;
          goto LABEL_222;
        case 90:
        case 91:
          v87 = 49;
          goto LABEL_222;
        case 92:
          v87 = 52;
          goto LABEL_222;
        case 93:
          v87 = 51;
          goto LABEL_222;
        case 103:
          v87 = 41;
          goto LABEL_222;
        case 104:
          v87 = 45;
          goto LABEL_222;
        case 105:
          v87 = 37;
          goto LABEL_222;
        case 110:
          v87 = 23;
          goto LABEL_222;
        case 112:
          v87 = 27;
          goto LABEL_222;
        case 113:
          v87 = 31;
          goto LABEL_222;
        case 114:
          v87 = 35;
          goto LABEL_222;
        case 115:
          v87 = 19;
          goto LABEL_222;
        case 123:
          v87 = 43;
          goto LABEL_222;
        case 124:
          v87 = 47;
          goto LABEL_222;
        case 125:
          v87 = 39;
          goto LABEL_222;
        case 160:
        case 161:
        case 164:
        case 165:
          v87 = 57;
          goto LABEL_222;
        case 162:
        case 163:
        case 166:
        case 167:
          v87 = 58;
          goto LABEL_222;
        case 170:
        case 172:
        case 174:
        case 176:
        case 178:
        case 179:
          v87 = 60;
          goto LABEL_222;
        case 180:
        case 181:
        case 182:
        case 183:
          v87 = 59;
          goto LABEL_222;
        case 186:
        case 204:
          v87 = 61;
          goto LABEL_222;
        case 187:
        case 205:
          v87 = 62;
          goto LABEL_222;
        case 188:
        case 206:
          v87 = 63;
          goto LABEL_222;
        case 189:
        case 207:
          v87 = 64;
          goto LABEL_222;
        case 190:
        case 208:
          v87 = 65;
          goto LABEL_222;
        case 192:
        case 210:
          v87 = 66;
          goto LABEL_222;
        case 193:
        case 211:
          v87 = 67;
          goto LABEL_222;
        case 194:
        case 212:
          v87 = 68;
          goto LABEL_222;
        case 195:
        case 213:
          v87 = 69;
          goto LABEL_222;
        case 196:
        case 214:
          v87 = 70;
          goto LABEL_222;
        case 197:
        case 215:
          v87 = 71;
          goto LABEL_222;
        case 198:
        case 216:
          v87 = 72;
          goto LABEL_222;
        case 199:
        case 217:
          v87 = 73;
          goto LABEL_222;
        case 200:
        case 218:
          v87 = 74;
          goto LABEL_222;
        case 240:
        case 241:
          v87 = 75;
          goto LABEL_222;
        case 250:
          v87 = 54;
          goto LABEL_222;
        case 252:
          v87 = 53;
          goto LABEL_222;
        case 253:
        case 261:
          v87 = 56;
          goto LABEL_222;
        case 260:
          v87 = 55;
          goto LABEL_222;
        case 552:
        case 553:
        case 554:
        case 555:
        case 631:
        case 632:
          v87 = 76;
          goto LABEL_222;
        case 642:
          v87 = 79;
          goto LABEL_222;
        case 643:
          v87 = 77;
          goto LABEL_222;
        case 644:
          v87 = 80;
          goto LABEL_222;
        case 645:
          v87 = 78;
LABEL_222:
          atomic_fetch_add(&v64[v87 + 64], 1uLL);
          break;
        default:
          break;
      }

      v88 = (deviceCopy2 + 123);
      if ((v106 & 2) != 0)
      {
        v89 = 12;
      }

      else if ((v106 & 0xFC00) != 0)
      {
        fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Unsupported compression footprint!\n", "agxa_texture_objc.mm", 38, "lossyTelemetryFromCompressionSettings");
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          *v112 = 136315650;
          *&v112[4] = "agxa_texture_objc.mm";
          v113 = 1024;
          v114 = 38;
          v115 = 2080;
          v116 = "lossyTelemetryFromCompressionSettings";
          _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Unsupported compression footprint!\n", v112, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
        {
          *v112 = 136315650;
          *&v112[4] = "agxa_texture_objc.mm";
          v113 = 1024;
          v114 = 38;
          v115 = 2080;
          v116 = "lossyTelemetryFromCompressionSettings";
          _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Unsupported compression footprint!\n", v112, 0x1Cu);
        }
      }

      else
      {
        v89 = qword_29D2F7A40[(v106 >> 8) & 3];
      }

      atomic_fetch_add(&v88[8 * v89], 1uLL);
      if ([descriptorCopy textureType] == 4)
      {
        sampleCount = [descriptorCopy sampleCount];
        switch(sampleCount)
        {
          case 2:
            v91 = 29;
            break;
          case 8:
            v91 = 31;
            break;
          case 4:
            v91 = 30;
            break;
          default:
            goto LABEL_239;
        }

        atomic_fetch_add(&v64[v91], 1uLL);
      }

LABEL_239:
      if (*(v103->_impl + 59))
      {
        atomic_fetch_add(&v88[8 * v66], 1uLL);
      }

      goto LABEL_241;
    }

    if (!surface)
    {
      goto LABEL_83;
    }

LABEL_125:
    LOBYTE(v34) = 0;
  }

  return v34;
}

- (void)dealloc
{
  if (self->_impl)
  {
    [(AGXG18PFamilyTexture *)self emitTextureResourceInfoSignpost:@"Destroy"];
    impl = self->_impl;
    if (*(impl + 59) && impl[78])
    {
      [impl[78] removeTexture:self];
      impl = self->_impl;
    }

    v4 = (&self->super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC5638]);
    (**impl)(impl);
    free(self->_impl);
    self->_impl = 0;
    if ((*(v4 + 23) & 0x10) == 0 && *v4)
    {
      free(*v4);
    }
  }

  v5.receiver = self;
  v5.super_class = AGXG18PFamilyTexture;
  [(AGXTexture *)&v5 dealloc];
}

@end