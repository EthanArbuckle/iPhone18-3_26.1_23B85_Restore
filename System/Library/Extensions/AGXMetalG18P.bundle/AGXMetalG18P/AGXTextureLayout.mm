@interface AGXTextureLayout
- ($71D83D51AB0F57F7CF166351F850C832)watermark;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)copyGranularity;
- (AGXTextureLayout)initWithDevice:(id)device descriptor:(id)descriptor isHeapOrBufferBacked:(BOOL)backed;
- (void)copyFromLinearBytes:(const void *)bytes linearOffset:(unint64_t)offset linearBytesPerRow:(unint64_t)row linearBytesPerImage:(unint64_t)image toTextureMemory:(void *)memory textureSlice:(unint64_t)slice textureLevel:(unint64_t)level textureRegion:(id *)self0;
- (void)copyFromTextureMemory:(const void *)memory textureSlice:(unint64_t)slice textureLevel:(unint64_t)level textureRegion:(id *)region toLinearBytes:(void *)bytes linearOffset:(unint64_t)offset linearBytesPerRow:(unint64_t)row linearBytesPerImage:(unint64_t)self0;
- (void)dealloc;
- (void)initializeTextureMemory:(void *)memory;
@end

@implementation AGXTextureLayout

- (void)copyFromTextureMemory:(const void *)memory textureSlice:(unint64_t)slice textureLevel:(unint64_t)level textureRegion:(id *)region toLinearBytes:(void *)bytes linearOffset:(unint64_t)offset linearBytesPerRow:(unint64_t)row linearBytesPerImage:(unint64_t)self0
{
  levelCopy = level;
  sliceCopy = slice;
  impl = self->_impl;
  v15 = impl[73];
  if (v15 && *(v15 + 1304))
  {
    if (impl[21] && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v17 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - BaseAddressOfCompressedTileDataRegionOfSliceAndPlane;
    }

    else
    {
      v17 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(impl, 0, 0);
    }

    v18 = memory + v17;
    v19 = self->_impl;
    v20 = v19[73];
    if (v19[21] && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      v24 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v21 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - v24;
    }

    else
    {
      v21 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v19, 0, 0);
    }

    v20[39] = v18;
    v20[9] = v21;
    (*(*v20 + 16))(v20);
    if (v20[168] >= 2uLL)
    {
      v22 = v20[167];
      v20[120] = &v18[v22];
      v20[90] = v22 + v21;
      (*(v20[81] + 16))();
    }
  }

  v23 = self->_impl;
  v23[39] = memory;
  v23[9] = 0;
  (*(*v23 + 16))(v23, a2);
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::readRegion(self->_impl, region->var0.var0, region->var0.var1, region->var0.var2, region->var1.var0, region->var1.var1, region->var1.var2, sliceCopy, levelCopy, bytes + offset, row, image);
}

- (void)copyFromLinearBytes:(const void *)bytes linearOffset:(unint64_t)offset linearBytesPerRow:(unint64_t)row linearBytesPerImage:(unint64_t)image toTextureMemory:(void *)memory textureSlice:(unint64_t)slice textureLevel:(unint64_t)level textureRegion:(id *)self0
{
  sliceCopy = slice;
  impl = self->_impl;
  v15 = impl[73];
  if (v15 && *(v15 + 1304))
  {
    if (impl[21] && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v17 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - BaseAddressOfCompressedTileDataRegionOfSliceAndPlane;
    }

    else
    {
      v17 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(impl, 0, 0);
    }

    v18 = memory + v17;
    v19 = self->_impl;
    v20 = v19[73];
    if (v19[21] && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      v24 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v21 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - v24;
    }

    else
    {
      v21 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v19, 0, 0);
    }

    v20[39] = v18;
    v20[9] = v21;
    (*(*v20 + 16))(v20);
    if (v20[168] >= 2uLL)
    {
      v22 = v20[167];
      v20[120] = &v18[v22];
      v20[90] = v22 + v21;
      (*(v20[81] + 16))();
    }
  }

  v23 = self->_impl;
  v23[39] = memory;
  v23[9] = 0;
  (*(*v23 + 16))(v23, a2);
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::writeRegion(self->_impl, region->var0.var0, region->var0.var1, region->var0.var2, region->var1.var0, region->var1.var1, region->var1.var2, sliceCopy, level, bytes + offset, row, image);
}

- (void)initializeTextureMemory:(void *)memory
{
  impl = self->_impl;
  v4 = impl[73];
  if (v4 && *(v4 + 1304))
  {
    if (impl[21] && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v8 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - BaseAddressOfCompressedTileDataRegionOfSliceAndPlane;
    }

    else
    {
      v8 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(impl, 0, 0);
    }

    v9 = memory + v8;
    v10 = self->_impl;
    v11 = v10[73];
    if (v10[21] && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      v12 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v13 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - v12;
    }

    else
    {
      v13 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v10, 0, 0);
    }

    v11[39] = v9;
    v11[9] = v13;
    (*(*v11 + 16))(v11);
    if (v11[168] >= 2uLL)
    {
      v14 = v11[167];
      v11[120] = &v9[v14];
      v11[90] = v14 + v13;
      (*(v11[81] + 16))();
    }

    v15 = *(self->_impl + 73);
    if (*(v15 + 1344))
    {
      v16 = 0;
      v17 = 0;
      do
      {
        if (*(v15 + 1352))
        {
          MetadataUncompressedValue = 0;
        }

        else
        {
          MetadataUncompressedValue = AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMetadataUncompressedValue(*(v15 + 1296), v17);
        }

        v19 = v15 + 648 * v16;
        CPUPtr = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v19, 0, 0, 0);
        v21 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v19, 0, 1);
        memset(CPUPtr, MetadataUncompressedValue, v21);
        v16 = ++v17;
      }

      while (*(v15 + 1344) > v17);
    }
  }
}

- ($71D83D51AB0F57F7CF166351F850C832)watermark
{
  v2 = 0xD5F5B499A374C74BLL;
  v3 = 0x9241EEA3711BC5D0;
  result.var0[1] = v3;
  result.var0[0] = v2;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)copyGranularity
{
  var1 = self->var1;
  if (!*(var1 + 584))
  {
    v8 = *(var1 + 216);
    selfCopy = *(var1 + 220);
    goto LABEL_24;
  }

  v4 = *(var1 + 208);
  v5 = *(var1 + 112);
  if (*(var1 + 396) == 3)
  {
    v6 = retstr;
    if (*(var1 + 168))
    {
      CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
      self = IOSurfaceGetCompressedTileHeightOfPlane();
    }

    else
    {
      v11 = *(var1 + 32);
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      InterchangeTiledMemory::getPlaneInfo(v14, 0, v11, *(v4 + 49));
      CompressedTileWidthOfPlane = v14[0];
      self = BYTE1(v14[0]);
    }

    selfCopy = self;
    v8 = CompressedTileWidthOfPlane;
    selfCopy2 = self;
    LODWORD(v14[0]) = CompressedTileWidthOfPlane;
    retstr = v6;
    if (*v4 == 56)
    {
      goto LABEL_11;
    }

LABEL_17:
    if (v5 != 2)
    {
      if (v5 != 4)
      {
        if (v5 != 8)
        {
          goto LABEL_24;
        }

        selfCopy >>= 1;
        selfCopy2 = selfCopy;
      }

      LODWORD(v14[0]) = v8 >> 1;
    }

    v12 = &selfCopy2;
    v8 = selfCopy;
    goto LABEL_23;
  }

  v10 = *v4;
  v8 = 16;
  LODWORD(v14[0]) = 16;
  if (v10 != 56)
  {
    selfCopy2 = 16;
    selfCopy = 16;
    goto LABEL_17;
  }

  selfCopy = 8;
  selfCopy2 = 8;
LABEL_11:
  switch(v5)
  {
    case 2:
LABEL_16:
      v12 = v14;
LABEL_23:
      *v12 = v8 >> 1;
      selfCopy = selfCopy2;
      v8 = v14[0];
      break;
    case 4:
LABEL_15:
      selfCopy2 = selfCopy >> 1;
      goto LABEL_16;
    case 8:
      v8 >>= 1;
      LODWORD(v14[0]) = v8;
      goto LABEL_15;
  }

LABEL_24:
  retstr->var0 = v8;
  retstr->var1 = selfCopy;
  retstr->var2 = 1;
  return self;
}

- (AGXTextureLayout)initWithDevice:(id)device descriptor:(id)descriptor isHeapOrBufferBacked:(BOOL)backed
{
  v44.receiver = self;
  v44.super_class = AGXTextureLayout;
  v8 = [IOGPUMetalTextureLayout initWithDevice:sel_initWithDevice_descriptor_ descriptor:?];
  if (!v8 || ((v9 = [descriptor descriptorPrivate], v10 = v9, v11 = *(v9 + 96), v11 == 2) ? (v14 = 0) : (v11 == 1 ? (LOBYTE(v11) = 9) : (LOBYTE(v11) = 0), (v12 = *(v9 + 152), v12 != 2) ? (v13 = v12 == 1) : (v13 = 2), v12 != 3 ? (v14 = v13) : (v14 = 3)), (v15 = v11 & 0xFB, !*(v9 + 128)) ? (v16 = 2) : (v16 = v15), (v17 = *(v9 + 8) - 1, v17 > 0x289) ? (v18 = &texFormatUnsupported) : (v18 = *(&off_29F342380 + v17)), (v19 = v16 | ((*(v18 + 60) & 0xC) != 0), v20 = v19 & 0xEB, v21 = *(v9 + 176), v22 = v19 | 0x10, v16 & 2 | v14) ? (v23 = v20) : (v23 = v22), v21 == 2 ? (v24 = v23) : (v24 = v20), (v25 = malloc_type_calloc(0x288uLL, 1uLL, 0x10E1040DA59F5FCuLL), (v8->_impl = v25) == 0) || ((v26 = *v10, v27 = *(v10 + 8), v28 = *(v10 + 104), v29 = *(v10 + 168) - 1, v29 > 9) ? (v30 = 0) : (v30 = dword_29D2F7A6C[v29]), (v31 = *(v10 + 208), (*(v10 + 72) - 1) < 4) ? (v32 = *(v10 + 72)) : (v32 = 0), (v33 = *(v10 + 84), v34 = *(v10 + 16), v35 = *(v10 + 24), v36 = *(v10 + 32), v37 = *(v10 + 40), v38 = *(v10 + 48), v39 = *(v10 + 56), v40 = *(v10 + 112) & 0xFLL, (v27 - 1) > 0x289) ? (v41 = &texFormatUnsupported) : (v41 = *(&off_29F342380 + (v27 - 1))), *AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v25, *(device + 106), 0, 2, v26, v41, v27, v28, 0.0, v31, (v14 << 8) | (v21 << 32) | v24, v30, v32, v33, v34, v35, v36, v37, v38, v39, 0, 0, 0, v40, 0, 0, 0, 0, 0, v37, !backed, 0, backed, v43, 0) = off_2A23FA3D8, (*(v8->_impl + 200) & 1) == 0)))
  {

    return 0;
  }

  return v8;
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
  v4.super_class = AGXTextureLayout;
  [(AGXTextureLayout *)&v4 dealloc];
}

@end