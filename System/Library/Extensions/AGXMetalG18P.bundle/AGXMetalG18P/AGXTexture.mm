@interface AGXTexture
- (AGXTexture)initWithBuffer:(id)buffer desc:(id)desc offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (AGXTexture)initWithCompressedTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice;
- (AGXTexture)initWithDevice:(id)device bytes:(void *)bytes length:(unint64_t)length desc:(id)desc deallocator:(id)deallocator;
- (AGXTexture)initWithDevice:(id)device desc:(id)desc iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice;
- (AGXTexture)initWithDevice:(id)device desc:(id)desc isSuballocDisabled:(BOOL)disabled;
- (AGXTexture)initWithDevice:(id)device desc:(id)desc sparsePageSize:(unint64_t)size;
- (AGXTexture)initWithHeap:(id)heap desc:(id)desc;
- (AGXTexture)initWithHeap:(id)heap desc:(id)desc atOffset:(unint64_t)offset;
- (AGXTexture)initWithImplHeap:(id)heap resource:(id)resource descriptor:(id)descriptor length:(unint64_t)length atOffset:(unint64_t)offset;
- (AGXTexture)initWithImplHeapMemoryless:(id)memoryless descriptor:(id)descriptor length:(unint64_t)length;
- (AGXTexture)initWithSharedTextureHandle:(__IOSurface *)handle device:(id)device desc:(id)desc compressionMode:(unint64_t)mode;
- (AGXTexture)initWithSparseHeap:(id)heap desc:(id)desc sparsePageSize:(unint64_t)size;
- (AGXTexture)initWithTexture:(id)texture descriptor:(id)descriptor;
- (AGXTexture)initWithTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index;
- (AGXTexture)initWithTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle resourceIndex:(unint64_t)index;
- (id)backingResource;
- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice;
- (id)newTextureViewWithDescriptor:(id)descriptor;
- (id)newTextureViewWithPixelFormat:(unint64_t)format;
- (id)newTextureViewWithPixelFormat:(unint64_t)format resourceIndex:(unint64_t)index;
- (void)dealloc;
@end

@implementation AGXTexture

- (id)backingResource
{
  result = self->_backingResourceCached;
  if (!result)
  {
    selfCopy = self;
    selfCopy2 = self;
    if ([(IOGPUMetalTexture *)self buffer])
    {
      result = [(IOGPUMetalTexture *)selfCopy buffer];
    }

    else
    {
      parentTexture = [(IOGPUMetalTexture *)selfCopy parentTexture];
      result = selfCopy;
      if (parentTexture)
      {
        result = [[(IOGPUMetalTexture *)selfCopy parentTexture] backingResource];
        selfCopy2 = selfCopy;
      }
    }

    selfCopy2->_backingResourceCached = result;
  }

  return result;
}

- (id)newTextureViewWithDescriptor:(id)descriptor
{
  v5 = objc_alloc(objc_opt_class());

  return [v5 initWithTexture:self descriptor:descriptor];
}

- (id)newCompressedTextureViewWithPixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice
{
  v11 = objc_alloc(objc_opt_class());

  return [v11 initWithCompressedTexture:self pixelFormat:format textureType:type level:level slice:slice];
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format resourceIndex:(unint64_t)index
{
  v7 = objc_alloc(objc_opt_class());

  return [v7 initWithTexture:self pixelFormat:format resourceIndex:index];
}

- (id)newTextureViewWithPixelFormat:(unint64_t)format
{
  v5 = objc_alloc(objc_opt_class());

  return [v5 initWithTexture:self pixelFormat:format];
}

- (AGXTexture)initWithCompressedTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type level:(unint64_t)level slice:(unint64_t)slice
{
  v15.receiver = self;
  v15.super_class = AGXTexture;
  v12 = [IOGPUMetalTexture initWithCompressedTexture:sel_initWithCompressedTexture_pixelFormat_textureType_level_slice_ pixelFormat:? textureType:? level:? slice:?];
  v13 = v12;
  if (v12)
  {
    if ([(AGXTexture *)v12 initImplWithCompressedTexture:texture pixelFormat:format textureType:type level:level]&& [(AGXTexture *)v13 updateBindDataWithCompressedTexture:texture pixelFormat:format textureType:type level:level slice:slice])
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

- (AGXTexture)initWithTexture:(id)texture descriptor:(id)descriptor
{
  if ([AGXTexture initImplWithTexture:"initImplWithTexture:descriptor:" descriptor:?])
  {
    pixelFormat = [descriptor pixelFormat];
    textureType = [descriptor textureType];
    levels = [descriptor levels];
    v11 = v10;
    slices = [descriptor slices];
    v23.receiver = self;
    v23.super_class = AGXTexture;
    v14 = -[IOGPUMetalTexture initWithTexture:pixelFormat:textureType:levels:slices:swizzle:](&v23, sel_initWithTexture_pixelFormat_textureType_levels_slices_swizzle_, texture, pixelFormat, textureType, levels, v11, slices, v13, [descriptor swizzle]);
    if (v14)
    {
      pixelFormat2 = [descriptor pixelFormat];
      textureType2 = [descriptor textureType];
      levels2 = [descriptor levels];
      v19 = v18;
      slices2 = [descriptor slices];
      [(AGXTexture *)v14 updateBindDataWithTexture:texture pixelFormat:pixelFormat2 textureType:textureType2 levels:levels2 slices:v19, slices2, v21];
      [(AGXTexture *)v14 finalizeTextureCreation];
    }
  }

  else
  {

    return 0;
  }

  return v14;
}

- (AGXTexture)initWithTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle resourceIndex:(unint64_t)index
{
  length = levels.length;
  location = levels.location;
  if ([AGXTexture initImplWithTexture:"initImplWithTexture:pixelFormat:textureType:levels:slices:swizzle:resourceIndex:" pixelFormat:slices.location textureType:slices.length levels:*&swizzle slices:index swizzle:? resourceIndex:?])
  {
    v18.receiver = self;
    v18.super_class = AGXTexture;
    v15 = [(IOGPUMetalTexture *)&v18 initWithTexture:texture pixelFormat:format textureType:type levels:location slices:length swizzle:slices.location, slices.length, *&swizzle];
    if (v15)
    {
      v16 = v15;
      [(AGXTexture *)v15 updateBindDataWithTexture:texture pixelFormat:format textureType:type levels:location slices:length, slices.location, slices.length];
      [(AGXTexture *)v16 finalizeTextureCreation];
      return v16;
    }
  }

  else
  {
  }

  return 0;
}

- (AGXTexture)initWithTexture:(id)texture pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices resourceIndex:(unint64_t)index
{
  length = levels.length;
  location = levels.location;
  if ([AGXTexture initImplWithTexture:"initImplWithTexture:pixelFormat:textureType:levels:slices:resourceIndex:" pixelFormat:slices.location textureType:slices.length levels:index slices:? resourceIndex:?])
  {
    v17.receiver = self;
    v17.super_class = AGXTexture;
    v14 = [(IOGPUMetalTexture *)&v17 initWithTexture:texture pixelFormat:format textureType:type levels:location slices:length, slices.location, slices.length];
    if (v14)
    {
      v15 = v14;
      [(AGXTexture *)v14 updateBindDataWithTexture:texture pixelFormat:format textureType:type levels:location slices:length, slices.location, slices.length];
      [(AGXTexture *)v15 finalizeTextureCreation];
      return v15;
    }
  }

  else
  {
  }

  return 0;
}

- (AGXTexture)initWithDevice:(id)device bytes:(void *)bytes length:(unint64_t)length desc:(id)desc deallocator:(id)deallocator
{
  if (![desc validateWithDevice:?] || (LOWORD(v18) = 0, LOBYTE(v16) = 1, !-[AGXTexture initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:](self, "initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:", device, desc, 0, 0, 0, 0, 0, v16, 0, v18)))
  {

    return 0;
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  [(AGXTexture *)self initNewTextureData:v20];
  v19.receiver = self;
  v19.super_class = AGXTexture;
  LODWORD(v17) = 104;
  result = [(IOGPUMetalTexture *)&v19 initWithDevice:device descriptor:desc sysMemPointer:bytes sysMemSize:[(AGXTexture *)self getCPUSizeBytes] sysMemLength:length sysMemRowBytes:[(AGXTexture *)self getBytesPerRow] args:v20 argsSize:v17 deallocator:deallocator];
  if (result)
  {
    v14 = result;
    [(AGXTexture *)result updateBindDataWithAddresses:bytes gpuVirtualAddress:*(&result->super.super._res.var0 + *MEMORY[0x29EDC5638]) shouldInitMetadata:0];
    [(AGXTexture *)v14 finalizeTextureCreation];
    v15 = [(AGXTexture *)v14 validateBufferTextureWithSize:length];
    result = v14;
    if (!v15)
    {

      return 0;
    }
  }

  return result;
}

- (AGXTexture)initWithDevice:(id)device desc:(id)desc iosurface:(__IOSurface *)iosurface plane:(unint64_t)plane slice:(unint64_t)slice
{
  CompressionTypeOfPlane = IOSurfaceGetCompressionTypeOfPlane();
  if (CompressionTypeOfPlane > 4 || CompressionTypeOfPlane == 1)
  {
    return 0;
  }

  v16 = CompressionTypeOfPlane == 4 || (CompressionTypeOfPlane & 6) == 2;
  SliceCount = IOSurfaceGetSliceCount();
  BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(iosurface, plane);
  if (![desc validateWithDevice:device] || IOSurfaceIsTiled() || (LOWORD(v31) = v16, LOBYTE(v30) = 1, !-[AGXTexture initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:](self, "initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:", device, desc, iosurface, plane, slice, 0, BytesPerRowOfPlane, v30, 0, v31)))
  {

    return 0;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  [(AGXTexture *)self initNewTextureData:v33];
  v32.receiver = self;
  v32.super_class = AGXTexture;
  LODWORD(v29) = 104;
  result = [(IOGPUMetalTexture *)&v32 initWithDevice:device descriptor:desc iosurface:iosurface plane:plane field:0 args:v33 argsSize:v29];
  if (result)
  {
    v20 = result;
    if (SliceCount < 2)
    {
      BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(iosurface, plane);
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
    0xFFFFFFFFFFFFFFLL = [(AGXTexture *)v20 validateBufferTextureWithSize:*(&v20->super.super._res.vendor.reserved[1] + v24) & 0xFFFFFFFFFFFFFFLL];
    result = v20;
    if (!0xFFFFFFFFFFFFFFLL)
    {

      return 0;
    }
  }

  return result;
}

- (AGXTexture)initWithSharedTextureHandle:(__IOSurface *)handle device:(id)device desc:(id)desc compressionMode:(unint64_t)mode
{
  [desc setCompressionMode:mode];
  if ([desc validateWithDevice:device] && (LOWORD(v14) = 0, LOBYTE(v13) = 1, -[AGXTexture initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:](self, "initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:", device, desc, 0, 0, 0, 0, 0, v13, 0, v14)))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    [(AGXTexture *)self initNewTextureData:v16];
    v15.receiver = self;
    v15.super_class = AGXTexture;
    LODWORD(v12) = 104;
    result = [(IOGPUMetalTexture *)&v15 initWithDevice:device descriptor:desc iosurface:handle plane:0 field:0 args:v16 argsSize:v12];
    if (result)
    {
      v11 = result;
      [(AGXTexture *)v11 updateBindDataWithAddresses:IOSurfaceGetBaseAddressOfPlane(handle gpuVirtualAddress:0) shouldInitMetadata:*(&v11->super.super._res.var0 + *MEMORY[0x29EDC5638]), 0];
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

- (AGXTexture)initWithBuffer:(id)buffer desc:(id)desc offset:(unint64_t)offset bytesPerRow:(unint64_t)row
{
  v11 = [buffer placementSparsePageSize] - 101;
  if (v11 > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = qword_29D2FEF78[v11];
  }

  if (![desc validateWithDevice:{objc_msgSend(buffer, "device")}])
  {
    goto LABEL_13;
  }

  placementSparsePageSize = [desc placementSparsePageSize];
  if (placementSparsePageSize != [buffer placementSparsePageSize])
  {
    goto LABEL_13;
  }

  LOWORD(v23) = 0;
  LOBYTE(v22) = 0;
  if (!-[AGXTexture initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:](self, "initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:", [buffer device], desc, 0, 0, 0, buffer, row, v22, v12, v23))
  {
    goto LABEL_13;
  }

  v14 = [(AGXTexture *)self getCPUSizeBytes]+ offset;
  v15 = *MEMORY[0x29EDC5638];
  v16 = *(buffer + v15 + 40) & 0xFFFFFFFFFFFFFFLL;
  if (v16 <= [buffer length])
  {
    v17 = [buffer length];
    if (v14 <= v17)
    {
      goto LABEL_9;
    }

LABEL_13:

    return 0;
  }

  v17 = *(buffer + v15 + 40) & 0xFFFFFFFFFFFFFFLL;
  if (v14 > v17)
  {
    goto LABEL_13;
  }

LABEL_9:
  v24.receiver = self;
  v24.super_class = AGXTexture;
  result = [(IOGPUMetalTexture *)&v24 initWithBuffer:buffer descriptor:desc offset:offset bytesPerRow:row];
  if (!result)
  {
    return result;
  }

  v19 = result;
  if ([buffer iosurface])
  {
    v20 = IOSurfaceGetBaseAddressOfPlane([buffer iosurface], 0) + offset;
    v21 = v19;
  }

  else
  {
    v21 = v19;
    v20 = *&v19->super.super._anon_50[v15 + 48];
  }

  [(AGXTexture *)v21 updateBindDataWithAddresses:v20 gpuVirtualAddress:*(&v21->super.super._res.var0 + v15)];
  [(AGXTexture *)v21 finalizeTextureCreation];
  if ([(AGXTexture *)v21 validateBufferTextureWithSize:v17 - offset])
  {
    return v19;
  }

  return 0;
}

- (AGXTexture)initWithHeap:(id)heap desc:(id)desc atOffset:(unint64_t)offset
{
  device = [heap device];
  if ([heap type] != 1)
  {
    goto LABEL_12;
  }

  if (![desc validateWithDevice:device])
  {
    goto LABEL_12;
  }

  LOWORD(v15) = 256;
  LOBYTE(v14) = 0;
  if (![(AGXTexture *)self initImplWithDevice:device Descriptor:desc iosurface:0 plane:0 slice:0 buffer:0 bytesPerRow:0 allowNPOT:v14 sparsePageSize:0 isCompressedIOSurface:v15 isHeapBacked:?])
  {
    goto LABEL_12;
  }

  getCPUSizeBytes = [(AGXTexture *)self getCPUSizeBytes];
  getAlignment = [(AGXTexture *)self getAlignment];
  if ([(AGXTexture *)self isMemoryless])
  {

    return [(AGXTexture *)self initWithImplHeapMemoryless:heap descriptor:desc length:getCPUSizeBytes];
  }

  v13 = [heap newSubResourceAtOffset:offset withLength:getCPUSizeBytes alignment:getAlignment options:{*(objc_msgSend(desc, "descriptorPrivate") + 112)}];
  if (!v13)
  {
LABEL_12:

    return 0;
  }

  return [(AGXTexture *)self initWithImplHeap:heap resource:v13 descriptor:desc length:getCPUSizeBytes atOffset:offset];
}

- (AGXTexture)initWithHeap:(id)heap desc:(id)desc
{
  device = [heap device];
  if ([heap type] || !objc_msgSend(desc, "validateWithDevice:", device) || (LOWORD(v13) = 256, LOBYTE(v12) = 0, !-[AGXTexture initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:](self, "initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:", device, desc, 0, 0, 0, 0, 0, v12, 0, v13)))
  {
LABEL_10:

    return 0;
  }

  getCPUSizeBytes = [(AGXTexture *)self getCPUSizeBytes];
  getAlignment = [(AGXTexture *)self getAlignment];
  if (![(AGXTexture *)self isMemoryless])
  {
    v14 = 0;
    v11 = [heap newSubResourceWithLength:getCPUSizeBytes alignment:getAlignment options:*(objc_msgSend(desc offset:{"descriptorPrivate") + 112), &v14}];
    if (v11)
    {
      return [(AGXTexture *)self initWithImplHeap:heap resource:v11 descriptor:desc length:getCPUSizeBytes atOffset:v14];
    }

    goto LABEL_10;
  }

  return [(AGXTexture *)self initWithImplHeapMemoryless:heap descriptor:desc length:getCPUSizeBytes];
}

- (AGXTexture)initWithSparseHeap:(id)heap desc:(id)desc sparsePageSize:(unint64_t)size
{
  v6 = -[AGXTexture initWithDevice:desc:sparsePageSize:](self, "initWithDevice:desc:sparsePageSize:", [heap device], desc, size);
  v7 = v6;
  if (v6)
  {
    [(AGXTexture *)v6 setSparseHeap:heap];
  }

  return v7;
}

- (AGXTexture)initWithDevice:(id)device desc:(id)desc sparsePageSize:(unint64_t)size
{
  if (![desc validateWithDevice:?])
  {
    goto LABEL_15;
  }

  LOWORD(v25) = 0;
  LOBYTE(v23) = 0;
  if (![(AGXTexture *)self initImplWithDevice:device Descriptor:desc iosurface:0 plane:0 slice:0 buffer:0 bytesPerRow:0 allowNPOT:v23 sparsePageSize:size isCompressedIOSurface:v25 isHeapBacked:?])
  {
    goto LABEL_15;
  }

  v32 = 0;
  memset(v31, 0, sizeof(v31));
  [(AGXTexture *)self initNewTextureData:v31];
  sparseTextureTier = [(_MTLResource *)self sparseTextureTier];
  if (sparseTextureTier != 1)
  {
    if (sparseTextureTier == 2)
    {
      getCPUSizeBytes = [(AGXTexture *)self getCPUSizeBytes];
      if (getCPUSizeBytes < *MEMORY[0x29EDCA6D0] && (v30 = 0, v29 = 0, (v11 = [device allocBufferSubDataWithLength:getCPUSizeBytes options:*(objc_msgSend(desc alignment:"descriptorPrivate") + 112) | 0x20000 heapIndex:1024 bufferIndex:&v30 + 2 bufferOffset:{&v30, &v29}]) != 0))
      {
        v28.receiver = self;
        v28.super_class = AGXTexture;
        self = [(IOGPUMetalTexture *)&v28 initWithPrimaryBuffer:v11 heapIndex:SHIWORD(v30) bufferIndex:v30 bufferOffset:v29 length:getCPUSizeBytes descriptor:desc sysMemRowBytes:[(AGXTexture *)self getBytesPerRow] vidMemSize:0 vidMemRowBytes:0 args:v31 argsSize:104];
      }

      else
      {
        v18 = [desc copy];
        [v18 setResourceOptions:{objc_msgSend(v18, "resourceOptions") | 0x20000}];
        v27.receiver = self;
        v27.super_class = AGXTexture;
        LODWORD(v24) = 104;
        self = [(IOGPUMetalTexture *)&v27 initWithDevice:device descriptor:v18 sysMemSize:getCPUSizeBytes sysMemRowBytes:[(AGXTexture *)self getBytesPerRow] vidMemSize:0 vidMemRowBytes:0 args:v31 argsSize:v24];
      }

      if (self)
      {
        v19 = (&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC5638]);
        bzero(v19[16], getCPUSizeBytes);
        v20 = v19[16];
        v21 = v19[9];
        selfCopy = self;
        [(AGXTexture *)self updateBindDataWithAddresses:v20 gpuVirtualAddress:v21];
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  if (![desc placementSparsePageSize])
  {
LABEL_15:

    return 0;
  }

  getGPUSizeBytes = [(AGXTexture *)self getGPUSizeBytes];
  getGPUMetadataSizeBytes = [(AGXTexture *)self getGPUMetadataSizeBytes];
  getGPUResidencySizeBytes = [(AGXTexture *)self getGPUResidencySizeBytes];
  v15 = [desc copy];
  [v15 setResourceOptions:{objc_msgSend(v15, "resourceOptions") | 0x20000}];
  v26.receiver = self;
  v26.super_class = AGXTexture;
  LODWORD(v24) = 104;
  v16 = [(IOGPUMetalTexture *)&v26 initWithDevice:device descriptor:v15 placementSparseBytes:getGPUSizeBytes - getGPUMetadataSizeBytes placementSparsePageSize:101 placementSparseMetaDataBytes:getGPUMetadataSizeBytes placementSparseResidencyBytes:getGPUResidencySizeBytes args:v31 argsSize:v24];

  if (v16)
  {
    selfCopy = v16;
    [AGXTexture updateBindDataWithAddresses:v16 cpuMetadataAddress:"updateBindDataWithAddresses:cpuMetadataAddress:gpuVirtualAddress:isCompressible:shouldInitMetadata:" gpuVirtualAddress:*&v16->super.super._anon_50[*MEMORY[0x29EDC5638] + 48] isCompressible:? shouldInitMetadata:?];
LABEL_14:
    [(AGXTexture *)selfCopy finalizeTextureCreation];
    return selfCopy;
  }

  return 0;
}

- (AGXTexture)initWithDevice:(id)device desc:(id)desc isSuballocDisabled:(BOOL)disabled
{
  if ([desc validateWithDevice:?] && (LOWORD(v24) = 0, LOBYTE(v22) = 1, -[AGXTexture initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:](self, "initImplWithDevice:Descriptor:iosurface:plane:slice:buffer:bytesPerRow:allowNPOT:sparsePageSize:isCompressedIOSurface:isHeapBacked:", device, desc, 0, 0, 0, 0, 0, v22, 0, v24)))
  {
    v31 = 0;
    v30 = 0u;
    memset(v29, 0, sizeof(v29));
    [(AGXTexture *)self initNewTextureData:v29];
    if (-[AGXTexture isMemoryless](self, "isMemoryless") || -[AGXTexture isSparse](self, "isSparse") || [desc protectionOptions] || (v9 = -[AGXTexture getCPUSizeBytes](self, "getCPUSizeBytes"), v9 >= *MEMORY[0x29EDCA6D0]) || (BYTE8(v30) & 1) != 0 || disabled || ((v28 = 0, v27 = 0, v10 = -[AGXTexture getCPUSizeBytes](self, "getCPUSizeBytes"), v11 = -[AGXTexture getAlignment](self, "getAlignment"), v12 = objc_msgSend(desc, "descriptorPrivate"), (*(v12 + 112) & 0xF0) != 0x20) ? (v13 = *(v12 + 112)) : (v13 = *(v12 + 112) | 0x20000), (v14 = objc_msgSend(device, "allocBufferSubDataWithLength:options:alignment:heapIndex:bufferIndex:bufferOffset:", v10, v13, v11, &v28 + 2, &v28, &v27)) == 0))
    {
      v25.receiver = self;
      v25.super_class = AGXTexture;
      LODWORD(v23) = 104;
      result = [(IOGPUMetalTexture *)&v25 initWithDevice:device descriptor:desc sysMemSize:[(AGXTexture *)self getCPUSizeBytes] sysMemRowBytes:[(AGXTexture *)self getBytesPerRow] vidMemSize:0 vidMemRowBytes:0 args:v29 argsSize:v23];
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
      result = [(IOGPUMetalTexture *)&v26 initWithPrimaryBuffer:v14 heapIndex:SHIWORD(v28) bufferIndex:v28 bufferOffset:v27 length:v10 descriptor:desc sysMemRowBytes:[(AGXTexture *)self getBytesPerRow] vidMemSize:0 vidMemRowBytes:0 args:v29 argsSize:104];
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

- (AGXTexture)initWithImplHeap:(id)heap resource:(id)resource descriptor:(id)descriptor length:(unint64_t)length atOffset:(unint64_t)offset
{
  v11.receiver = self;
  v11.super_class = AGXTexture;
  v7 = -[IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:](&v11, sel_initWithHeap_resource_offset_length_device_descriptor_, heap, resource, offset, length, [heap device], descriptor);
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

- (AGXTexture)initWithImplHeapMemoryless:(id)memoryless descriptor:(id)descriptor length:(unint64_t)length
{
  v8.receiver = self;
  v8.super_class = AGXTexture;
  v5 = -[IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:](&v8, sel_initWithHeap_resource_offset_length_device_descriptor_, memoryless, 0, 0, length, [memoryless device], descriptor);
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