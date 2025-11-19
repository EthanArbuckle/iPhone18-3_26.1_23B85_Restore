@interface AGXTexture
- (AGXTexture)initWithBuffer:(id)a3 desc:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6;
- (AGXTexture)initWithCompressedTexture:(id)a3 pixelFormat:(unint64_t)a4 textureType:(unint64_t)a5 level:(unint64_t)a6 slice:(unint64_t)a7;
- (AGXTexture)initWithDevice:(id)a3 bytes:(void *)a4 length:(unint64_t)a5 desc:(id)a6 deallocator:(id)a7;
- (AGXTexture)initWithDevice:(id)a3 desc:(id)a4 iosurface:(__IOSurface *)a5 plane:(unint64_t)a6 slice:(unint64_t)a7;
- (AGXTexture)initWithDevice:(id)a3 desc:(id)a4 isSuballocDisabled:(BOOL)a5;
- (AGXTexture)initWithDevice:(id)a3 desc:(id)a4 sparsePageSize:(unint64_t)a5;
- (AGXTexture)initWithHeap:(id)a3 desc:(id)a4;
- (AGXTexture)initWithHeap:(id)a3 desc:(id)a4 atOffset:(unint64_t)a5;
- (AGXTexture)initWithImplHeap:(id)a3 resource:(id)a4 descriptor:(id)a5 length:(unint64_t)a6 atOffset:(unint64_t)a7;
- (AGXTexture)initWithImplHeapMemoryless:(id)a3 descriptor:(id)a4 length:(unint64_t)a5;
- (AGXTexture)initWithSharedTextureHandle:(__IOSurface *)a3 device:(id)a4 desc:(id)a5 compressionMode:(unint64_t)a6;
- (AGXTexture)initWithSparseHeap:(id)a3 desc:(id)a4 sparsePageSize:(unint64_t)a5;
- (AGXTexture)initWithTexture:(id)a3 descriptor:(id)a4;
- (AGXTexture)initWithTexture:(id)a3 pixelFormat:(unint64_t)a4 textureType:(unint64_t)a5 levels:(_NSRange)a6 slices:(_NSRange)a7 resourceIndex:(unint64_t)a8;
- (AGXTexture)initWithTexture:(id)a3 pixelFormat:(unint64_t)a4 textureType:(unint64_t)a5 levels:(_NSRange)a6 slices:(_NSRange)a7 swizzle:(id)a8 resourceIndex:(unint64_t)a9;
- (id)backingResource;
- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 level:(unint64_t)a5 slice:(unint64_t)a6;
- (id)newTextureViewWithDescriptor:(id)a3;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3;
- (id)newTextureViewWithPixelFormat:(unint64_t)a3 resourceIndex:(unint64_t)a4;
- (void)dealloc;
@end

@implementation AGXTexture

- (id)backingResource
{
  result = self->_backingResourceCached;
  if (!result)
  {
    v4 = self;
    v5 = self;
    if ([(IOGPUMetalTexture *)self buffer])
    {
      result = [(IOGPUMetalTexture *)v4 buffer];
    }

    else
    {
      v6 = [(IOGPUMetalTexture *)v4 parentTexture];
      result = v4;
      if (v6)
      {
        result = [[(IOGPUMetalTexture *)v4 parentTexture] backingResource];
        v5 = v4;
      }
    }

    v5->_backingResourceCached = result;
  }

  return result;
}

- (id)newTextureViewWithDescriptor:(id)a3
{
  v5 = objc_alloc(objc_opt_class());

  return [v5 initWithTexture:self descriptor:a3];
}

- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)a3 textureType:(unint64_t)a4 level:(unint64_t)a5 slice:(unint64_t)a6
{
  v11 = objc_alloc(objc_opt_class());

  return [v11 initWithCompressedTexture:self pixelFormat:a3 textureType:a4 level:a5 slice:a6];
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3 resourceIndex:(unint64_t)a4
{
  v7 = objc_alloc(objc_opt_class());

  return [v7 initWithTexture:self pixelFormat:a3 resourceIndex:a4];
}

- (id)newTextureViewWithPixelFormat:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());

  return [v5 initWithTexture:self pixelFormat:a3];
}

- (AGXTexture)initWithCompressedTexture:(id)a3 pixelFormat:(unint64_t)a4 textureType:(unint64_t)a5 level:(unint64_t)a6 slice:(unint64_t)a7
{
  v15.receiver = self;
  v15.super_class = AGXTexture;
  v12 = [IOGPUMetalTexture initWithCompressedTexture:sel_initWithCompressedTexture_pixelFormat_textureType_level_slice_ pixelFormat:? textureType:? level:? slice:?];
  v13 = v12;
  if (v12)
  {
    if ([(AGXTexture *)v12 initImplWithCompressedTexture:a3 pixelFormat:a4 textureType:a5 level:a6]&& [(AGXTexture *)v13 updateBindDataWithCompressedTexture:a3 pixelFormat:a4 textureType:a5 level:a6 slice:a7])
    {
      [(AGXTexture *)v13 finalizeCompressedTextureViewCreation];
    }

    else
    {

      return 0;
    }
  }

  return v13;
}

- (AGXTexture)initWithTexture:(id)a3 descriptor:(id)a4
{
  if ([AGXTexture initImplWithTexture:"initImplWithTexture:descriptor:" descriptor:?])
  {
    v7 = [a4 pixelFormat];
    v8 = [a4 textureType];
    v9 = [a4 levels];
    v11 = v10;
    v12 = [a4 slices];
    v23.receiver = self;
    v23.super_class = AGXTexture;
    v14 = -[IOGPUMetalTexture initWithTexture:pixelFormat:textureType:levels:slices:swizzle:](&v23, sel_initWithTexture_pixelFormat_textureType_levels_slices_swizzle_, a3, v7, v8, v9, v11, v12, v13, [a4 swizzle]);
    if (v14)
    {
      v15 = [a4 pixelFormat];
      v16 = [a4 textureType];
      v17 = [a4 levels];
      v19 = v18;
      v20 = [a4 slices];
      [(AGXTexture *)v14 updateBindDataWithTexture:a3 pixelFormat:v15 textureType:v16 levels:v17 slices:v19, v20, v21];
      [(AGXTexture *)v14 finalizeTextureCreation];
    }
  }

  else
  {

    return 0;
  }

  return v14;
}

- (AGXTexture)initWithTexture:(id)a3 pixelFormat:(unint64_t)a4 textureType:(unint64_t)a5 levels:(_NSRange)a6 slices:(_NSRange)a7 swizzle:(id)a8 resourceIndex:(unint64_t)a9
{
  length = a6.length;
  location = a6.location;
  if ([AGXTexture initImplWithTexture:"initImplWithTexture:pixelFormat:textureType:levels:slices:swizzle:resourceIndex:" pixelFormat:a7.location textureType:a7.length levels:*&a8 slices:a9 swizzle:? resourceIndex:?])
  {
    v18.receiver = self;
    v18.super_class = AGXTexture;
    v15 = [(IOGPUMetalTexture *)&v18 initWithTexture:a3 pixelFormat:a4 textureType:a5 levels:location slices:length swizzle:a7.location, a7.length, *&a8];
    if (v15)
    {
      v16 = v15;
      [(AGXTexture *)v15 updateBindDataWithTexture:a3 pixelFormat:a4 textureType:a5 levels:location slices:length, a7.location, a7.length];
      [(AGXTexture *)v16 finalizeTextureCreation];
      return v16;
    }
  }

  else
  {
  }

  return 0;
}

- (AGXTexture)initWithTexture:(id)a3 pixelFormat:(unint64_t)a4 textureType:(unint64_t)a5 levels:(_NSRange)a6 slices:(_NSRange)a7 resourceIndex:(unint64_t)a8
{
  length = a6.length;
  location = a6.location;
  if ([AGXTexture initImplWithTexture:"initImplWithTexture:pixelFormat:textureType:levels:slices:resourceIndex:" pixelFormat:a7.location textureType:a7.length levels:a8 slices:? resourceIndex:?])
  {
    v17.receiver = self;
    v17.super_class = AGXTexture;
    v14 = [(IOGPUMetalTexture *)&v17 initWithTexture:a3 pixelFormat:a4 textureType:a5 levels:location slices:length, a7.location, a7.length];
    if (v14)
    {
      v15 = v14;
      [(AGXTexture *)v14 updateBindDataWithTexture:a3 pixelFormat:a4 textureType:a5 levels:location slices:length, a7.location, a7.length];
      [(AGXTexture *)v15 finalizeTextureCreation];
      return v15;
    }
  }

  else
  {
  }

  return 0;
}

- (AGXTexture)initWithDevice:(id)a3 bytes:(void *)a4 length:(unint64_t)a5 desc:(id)a6 deallocator:(id)a7
{
  if (![a6 validateWithDevice:?] || (LOWORD(v18) = 0, LOBYTE(v16) = 1, !-[AGXTexture initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:](self, "initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:", a3, a6, 0, 0, 0, 0, 0, v16, 0, v18)))
  {

    return 0;
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  [(AGXTexture *)self initNewTextureData:v20];
  v19.receiver = self;
  v19.super_class = AGXTexture;
  LODWORD(v17) = 104;
  result = [(IOGPUMetalTexture *)&v19 initWithDevice:a3 descriptor:a6 sysMemPointer:a4 sysMemSize:[(AGXTexture *)self getCPUSizeBytes] sysMemLength:a5 sysMemRowBytes:[(AGXTexture *)self getBytesPerRow] args:v20 argsSize:v17 deallocator:a7];
  if (result)
  {
    v14 = result;
    [(AGXTexture *)result updateBindDataWithAddresses:a4 gpuVirtualAddress:*(&result->super.super._res.var0 + *MEMORY[0x29EDC5638]) shouldInitMetadata:0];
    [(AGXTexture *)v14 finalizeTextureCreation];
    v15 = [(AGXTexture *)v14 validateBufferTextureWithSize:a5];
    result = v14;
    if (!v15)
    {

      return 0;
    }
  }

  return result;
}

- (AGXTexture)initWithDevice:(id)a3 desc:(id)a4 iosurface:(__IOSurface *)a5 plane:(unint64_t)a6 slice:(unint64_t)a7
{
  CompressionTypeOfPlane = IOSurfaceGetCompressionTypeOfPlane();
  if (CompressionTypeOfPlane > 4 || CompressionTypeOfPlane == 1)
  {
    return 0;
  }

  v16 = CompressionTypeOfPlane == 4 || (CompressionTypeOfPlane & 6) == 2;
  SliceCount = IOSurfaceGetSliceCount();
  BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(a5, a6);
  if (![a4 validateWithDevice:a3] || IOSurfaceIsTiled() || (LOWORD(v31) = v16, LOBYTE(v30) = 1, !-[AGXTexture initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:](self, "initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:", a3, a4, a5, a6, a7, 0, BytesPerRowOfPlane, v30, 0, v31)))
  {

    return 0;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  [(AGXTexture *)self initNewTextureData:v33];
  v32.receiver = self;
  v32.super_class = AGXTexture;
  LODWORD(v29) = 104;
  result = [(IOGPUMetalTexture *)&v32 initWithDevice:a3 descriptor:a4 iosurface:a5 plane:a6 field:0 args:v33 argsSize:v29];
  if (result)
  {
    v20 = result;
    if (SliceCount < 2)
    {
      BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(a5, a6);
      v24 = *MEMORY[0x29EDC5638];
      v25 = *(&v20->super.super._res.var0 + v24);
      if (v16)
      {
        v26 = *(&v20->super.super._res.var0 + v24);
        BaseAddressOfCompressedTileHeaderRegionOfPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane();
        v25 = v26;
        BaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane = BaseAddressOfCompressedTileHeaderRegionOfPlane;
      }

      else
      {
        BaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane = 0;
      }
    }

    else
    {
      BaseAddressOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      BaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane();
      v23 = BaseAddressOfPlane - IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v24 = *MEMORY[0x29EDC5638];
      v25 = v23 + *(&v20->super.super._res.var0 + v24);
    }

    [(AGXTexture *)v20 updateBindDataWithAddresses:BaseAddressOfPlane cpuMetadataAddress:BaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane gpuVirtualAddress:v25 isCompressible:v16 shouldInitMetadata:0];
    [(AGXTexture *)v20 finalizeTextureCreation];
    v28 = [(AGXTexture *)v20 validateBufferTextureWithSize:*(&v20->super.super._res.vendor.reserved[1] + v24) & 0xFFFFFFFFFFFFFFLL];
    result = v20;
    if (!v28)
    {

      return 0;
    }
  }

  return result;
}

- (AGXTexture)initWithSharedTextureHandle:(__IOSurface *)a3 device:(id)a4 desc:(id)a5 compressionMode:(unint64_t)a6
{
  [a5 setCompressionMode:a6];
  if ([a5 validateWithDevice:a4] && (LOWORD(v14) = 0, LOBYTE(v13) = 1, -[AGXTexture initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:](self, "initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:", a4, a5, 0, 0, 0, 0, 0, v13, 0, v14)))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    [(AGXTexture *)self initNewTextureData:v16];
    v15.receiver = self;
    v15.super_class = AGXTexture;
    LODWORD(v12) = 104;
    result = [(IOGPUMetalTexture *)&v15 initWithDevice:a4 descriptor:a5 iosurface:a3 plane:0 field:0 args:v16 argsSize:v12];
    if (result)
    {
      v11 = result;
      [(AGXTexture *)v11 updateBindDataWithAddresses:IOSurfaceGetBaseAddressOfPlane(a3 gpuVirtualAddress:0) shouldInitMetadata:*(&v11->super.super._res.var0 + *MEMORY[0x29EDC5638]), 0];
      [(AGXTexture *)v11 finalizeTextureCreation];
      return v11;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

- (AGXTexture)initWithBuffer:(id)a3 desc:(id)a4 offset:(unint64_t)a5 bytesPerRow:(unint64_t)a6
{
  v11 = [a3 placementSparsePageSize] - 101;
  if (v11 > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = qword_29D2FEF78[v11];
  }

  if (![a4 validateWithDevice:{objc_msgSend(a3, "device")}])
  {
    goto LABEL_13;
  }

  v13 = [a4 placementSparsePageSize];
  if (v13 != [a3 placementSparsePageSize])
  {
    goto LABEL_13;
  }

  LOWORD(v23) = 0;
  LOBYTE(v22) = 0;
  if (!-[AGXTexture initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:](self, "initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:", [a3 device], a4, 0, 0, 0, a3, a6, v22, v12, v23))
  {
    goto LABEL_13;
  }

  v14 = [(AGXTexture *)self getCPUSizeBytes]+ a5;
  v15 = *MEMORY[0x29EDC5638];
  v16 = *(a3 + v15 + 40) & 0xFFFFFFFFFFFFFFLL;
  if (v16 <= [a3 length])
  {
    v17 = [a3 length];
    if (v14 <= v17)
    {
      goto LABEL_9;
    }

LABEL_13:

    return 0;
  }

  v17 = *(a3 + v15 + 40) & 0xFFFFFFFFFFFFFFLL;
  if (v14 > v17)
  {
    goto LABEL_13;
  }

LABEL_9:
  v24.receiver = self;
  v24.super_class = AGXTexture;
  result = [(IOGPUMetalTexture *)&v24 initWithBuffer:a3 descriptor:a4 offset:a5 bytesPerRow:a6];
  if (!result)
  {
    return result;
  }

  v19 = result;
  if ([a3 iosurface])
  {
    v20 = IOSurfaceGetBaseAddressOfPlane([a3 iosurface], 0) + a5;
    v21 = v19;
  }

  else
  {
    v21 = v19;
    v20 = *&v19->super.super._anon_50[v15 + 48];
  }

  [(AGXTexture *)v21 updateBindDataWithAddresses:v20 gpuVirtualAddress:*(&v21->super.super._res.var0 + v15)];
  [(AGXTexture *)v21 finalizeTextureCreation];
  if ([(AGXTexture *)v21 validateBufferTextureWithSize:v17 - a5])
  {
    return v19;
  }

  return 0;
}

- (AGXTexture)initWithHeap:(id)a3 desc:(id)a4 atOffset:(unint64_t)a5
{
  v9 = [a3 device];
  if ([a3 type] != 1)
  {
    goto LABEL_12;
  }

  if (![a4 validateWithDevice:v9])
  {
    goto LABEL_12;
  }

  LOWORD(v15) = 256;
  LOBYTE(v14) = 0;
  if (![(AGXTexture *)self initImplWithDevice:v9 Descriptor:a4 iosurface:0 plane:0 slice:0 buffer:0 bytesPerRow:0 allowNPOT:v14 sparsePageSize:0 isCompressedIOSurface:v15 isHeapBacked:?])
  {
    goto LABEL_12;
  }

  v10 = [(AGXTexture *)self getCPUSizeBytes];
  v11 = [(AGXTexture *)self getAlignment];
  if ([(AGXTexture *)self isMemoryless])
  {

    return [(AGXTexture *)self initWithImplHeapMemoryless:a3 descriptor:a4 length:v10];
  }

  v13 = [a3 newSubResourceAtOffset:a5 withLength:v10 alignment:v11 options:{*(objc_msgSend(a4, "descriptorPrivate") + 112)}];
  if (!v13)
  {
LABEL_12:

    return 0;
  }

  return [(AGXTexture *)self initWithImplHeap:a3 resource:v13 descriptor:a4 length:v10 atOffset:a5];
}

- (AGXTexture)initWithHeap:(id)a3 desc:(id)a4
{
  v7 = [a3 device];
  if ([a3 type] || !objc_msgSend(a4, "validateWithDevice:", v7) || (LOWORD(v13) = 256, LOBYTE(v12) = 0, !-[AGXTexture initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:](self, "initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:", v7, a4, 0, 0, 0, 0, 0, v12, 0, v13)))
  {
LABEL_10:

    return 0;
  }

  v8 = [(AGXTexture *)self getCPUSizeBytes];
  v9 = [(AGXTexture *)self getAlignment];
  if (![(AGXTexture *)self isMemoryless])
  {
    v14 = 0;
    v11 = [a3 newSubResourceWithLength:v8 alignment:v9 options:*(objc_msgSend(a4 offset:{"descriptorPrivate") + 112), &v14}];
    if (v11)
    {
      return [(AGXTexture *)self initWithImplHeap:a3 resource:v11 descriptor:a4 length:v8 atOffset:v14];
    }

    goto LABEL_10;
  }

  return [(AGXTexture *)self initWithImplHeapMemoryless:a3 descriptor:a4 length:v8];
}

- (AGXTexture)initWithSparseHeap:(id)a3 desc:(id)a4 sparsePageSize:(unint64_t)a5
{
  v6 = -[AGXTexture initWithDevice:desc:sparsePageSize:](self, "initWithDevice:desc:sparsePageSize:", [a3 device], a4, a5);
  v7 = v6;
  if (v6)
  {
    [(AGXTexture *)v6 setSparseHeap:a3];
  }

  return v7;
}

- (AGXTexture)initWithDevice:(id)a3 desc:(id)a4 sparsePageSize:(unint64_t)a5
{
  if (![a4 validateWithDevice:?])
  {
    goto LABEL_15;
  }

  LOWORD(v25) = 0;
  LOBYTE(v23) = 0;
  if (![(AGXTexture *)self initImplWithDevice:a3 Descriptor:a4 iosurface:0 plane:0 slice:0 buffer:0 bytesPerRow:0 allowNPOT:v23 sparsePageSize:a5 isCompressedIOSurface:v25 isHeapBacked:?])
  {
    goto LABEL_15;
  }

  v32 = 0;
  memset(v31, 0, sizeof(v31));
  [(AGXTexture *)self initNewTextureData:v31];
  v9 = [(_MTLResource *)self sparseTextureTier];
  if (v9 != 1)
  {
    if (v9 == 2)
    {
      v10 = [(AGXTexture *)self getCPUSizeBytes];
      if (v10 < *MEMORY[0x29EDCA6D0] && (v30 = 0, v29 = 0, (v11 = [a3 allocBufferSubDataWithLength:v10 options:*(objc_msgSend(a4 alignment:"descriptorPrivate") + 112) | 0x20000 heapIndex:1024 bufferIndex:&v30 + 2 bufferOffset:{&v30, &v29}]) != 0))
      {
        v28.receiver = self;
        v28.super_class = AGXTexture;
        self = [(IOGPUMetalTexture *)&v28 initWithPrimaryBuffer:v11 heapIndex:SHIWORD(v30) bufferIndex:v30 bufferOffset:v29 length:v10 descriptor:a4 sysMemRowBytes:[(AGXTexture *)self getBytesPerRow] vidMemSize:0 vidMemRowBytes:0 args:v31 argsSize:104];
      }

      else
      {
        v18 = [a4 copy];
        [v18 setResourceOptions:{objc_msgSend(v18, "resourceOptions") | 0x20000}];
        v27.receiver = self;
        v27.super_class = AGXTexture;
        LODWORD(v24) = 104;
        self = [(IOGPUMetalTexture *)&v27 initWithDevice:a3 descriptor:v18 sysMemSize:v10 sysMemRowBytes:[(AGXTexture *)self getBytesPerRow] vidMemSize:0 vidMemRowBytes:0 args:v31 argsSize:v24];
      }

      if (self)
      {
        v19 = (&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC5638]);
        bzero(v19[16], v10);
        v20 = v19[16];
        v21 = v19[9];
        v17 = self;
        [(AGXTexture *)self updateBindDataWithAddresses:v20 gpuVirtualAddress:v21];
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  if (![a4 placementSparsePageSize])
  {
LABEL_15:

    return 0;
  }

  v12 = [(AGXTexture *)self getGPUSizeBytes];
  v13 = [(AGXTexture *)self getGPUMetadataSizeBytes];
  v14 = [(AGXTexture *)self getGPUResidencySizeBytes];
  v15 = [a4 copy];
  [v15 setResourceOptions:{objc_msgSend(v15, "resourceOptions") | 0x20000}];
  v26.receiver = self;
  v26.super_class = AGXTexture;
  LODWORD(v24) = 104;
  v16 = [(IOGPUMetalTexture *)&v26 initWithDevice:a3 descriptor:v15 placementSparseBytes:v12 - v13 placementSparsePageSize:101 placementSparseMetaDataBytes:v13 placementSparseResidencyBytes:v14 args:v31 argsSize:v24];

  if (v16)
  {
    v17 = v16;
    [AGXTexture updateBindDataWithAddresses:v16 cpuMetadataAddress:"updateBindDataWithAddresses:cpuMetadataAddress:gpuVirtualAddress:isCompressible:shouldInitMetadata:" gpuVirtualAddress:*&v16->super.super._anon_50[*MEMORY[0x29EDC5638] + 48] isCompressible:? shouldInitMetadata:?];
LABEL_14:
    [(AGXTexture *)v17 finalizeTextureCreation];
    return v17;
  }

  return 0;
}

- (AGXTexture)initWithDevice:(id)a3 desc:(id)a4 isSuballocDisabled:(BOOL)a5
{
  if ([a4 validateWithDevice:?] && (LOWORD(v24) = 0, LOBYTE(v22) = 1, -[AGXTexture initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:](self, "initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:", a3, a4, 0, 0, 0, 0, 0, v22, 0, v24)))
  {
    v31 = 0;
    v30 = 0u;
    memset(v29, 0, sizeof(v29));
    [(AGXTexture *)self initNewTextureData:v29];
    if (-[AGXTexture isMemoryless](self, "isMemoryless") || -[AGXTexture isSparse](self, "isSparse") || [a4 protectionOptions] || (v9 = -[AGXTexture getCPUSizeBytes](self, "getCPUSizeBytes"), v9 >= *MEMORY[0x29EDCA6D0]) || (BYTE8(v30) & 1) != 0 || a5 || ((v28 = 0, v27 = 0, v10 = -[AGXTexture getCPUSizeBytes](self, "getCPUSizeBytes"), v11 = -[AGXTexture getAlignment](self, "getAlignment"), v12 = objc_msgSend(a4, "descriptorPrivate"), (*(v12 + 112) & 0xF0) != 0x20) ? (v13 = *(v12 + 112)) : (v13 = *(v12 + 112) | 0x20000), (v14 = objc_msgSend(a3, "allocBufferSubDataWithLength:options:alignment:heapIndex:bufferIndex:bufferOffset:", v10, v13, v11, &v28 + 2, &v28, &v27)) == 0))
    {
      v25.receiver = self;
      v25.super_class = AGXTexture;
      LODWORD(v23) = 104;
      result = [(IOGPUMetalTexture *)&v25 initWithDevice:a3 descriptor:a4 sysMemSize:[(AGXTexture *)self getCPUSizeBytes] sysMemRowBytes:[(AGXTexture *)self getBytesPerRow] vidMemSize:0 vidMemRowBytes:0 args:v29 argsSize:v23];
      if (result)
      {
        v20 = result;
        if ([(AGXTexture *)result isMemoryless])
        {
          [(AGXTexture *)v20 updateBindDataWithAddresses:0 gpuVirtualAddress:4008574976];
LABEL_22:
          [(AGXTexture *)v20 finalizeTextureCreation];
          return v20;
        }

        result = v20;
        v21 = v20 + *MEMORY[0x29EDC5638];
        v17 = *(v21 + 16);
        v18 = *(v21 + 9);
        hasCPUMapping = v20->_hasCPUMapping;
LABEL_21:
        [(AGXTexture *)result updateBindDataWithAddresses:v17 gpuVirtualAddress:v18 shouldInitMetadata:hasCPUMapping];
        goto LABEL_22;
      }
    }

    else
    {
      v26.receiver = self;
      v26.super_class = AGXTexture;
      result = [(IOGPUMetalTexture *)&v26 initWithPrimaryBuffer:v14 heapIndex:SHIWORD(v28) bufferIndex:v28 bufferOffset:v27 length:v10 descriptor:a4 sysMemRowBytes:[(AGXTexture *)self getBytesPerRow] vidMemSize:0 vidMemRowBytes:0 args:v29 argsSize:104];
      if (result)
      {
        v16 = result + *MEMORY[0x29EDC5638];
        v17 = *(v16 + 16);
        v18 = *(v16 + 9);
        hasCPUMapping = result->_hasCPUMapping;
        v20 = result;
        goto LABEL_21;
      }
    }
  }

  else
  {

    return 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AGXTexture;
  [(IOGPUMetalTexture *)&v2 dealloc];
}

- (AGXTexture)initWithImplHeap:(id)a3 resource:(id)a4 descriptor:(id)a5 length:(unint64_t)a6 atOffset:(unint64_t)a7
{
  v11.receiver = self;
  v11.super_class = AGXTexture;
  v7 = -[IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:](&v11, sel_initWithHeap_resource_offset_length_device_descriptor_, a3, a4, a7, a6, [a3 device], a5);
  v8 = v7;
  v9 = *MEMORY[0x29EDC5638];
  if (v7)
  {
    [(AGXTexture *)v7 updateBindDataWithAddresses:*&v7->super.super._anon_50[v9 + 48] gpuVirtualAddress:*(&v7->super.super._res.var0 + v9) shouldInitMetadata:0];
    [(AGXTexture *)v8 finalizeTextureCreation];
  }

  *(&v8->super.super.super.super.super._labelLock._os_unfair_lock_opaque + v9) = *(&v8->super.super.super.super.super._labelLock._os_unfair_lock_opaque + v9) & 0x1FFFFFFFFFFFFFFFLL | 0x4000000000000000;
  return v8;
}

- (AGXTexture)initWithImplHeapMemoryless:(id)a3 descriptor:(id)a4 length:(unint64_t)a5
{
  v8.receiver = self;
  v8.super_class = AGXTexture;
  v5 = -[IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:](&v8, sel_initWithHeap_resource_offset_length_device_descriptor_, a3, 0, 0, a5, [a3 device], a4);
  v6 = v5;
  if (v5)
  {
    [(AGXTexture *)v5 updateBindDataWithAddresses:0 gpuVirtualAddress:4008574976];
    [(AGXTexture *)v6 finalizeTextureCreation];
  }

  *(&v6->super.super.super.super.super._labelLock._os_unfair_lock_opaque + *MEMORY[0x29EDC5638]) = *(&v6->super.super.super.super.super._labelLock._os_unfair_lock_opaque + *MEMORY[0x29EDC5638]) & 0x1FFFFFFFFFFFFFFFLL | 0x4000000000000000;
  return v6;
}

@end