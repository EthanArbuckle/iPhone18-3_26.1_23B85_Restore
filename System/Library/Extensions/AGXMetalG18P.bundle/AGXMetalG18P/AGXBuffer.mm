@interface AGXBuffer
- (AGXBuffer)initWithDevice:(id)device addressRanges:(MTLAddressRange *)ranges addressRangeCount:(unint64_t)count length:(unint64_t)length alignment:(unsigned int)alignment options:(unint64_t)options pinnedGPUAddress:(unint64_t)address;
- (AGXBuffer)initWithDevice:(id)device bytes:(void *)bytes length:(unint64_t)length alignment:(unsigned int)alignment pointerTag:(unint64_t)tag options:(unint64_t)options deallocator:(id)deallocator pinnedGPUAddress:(unint64_t)self0;
- (AGXBuffer)initWithDevice:(id)device iosurface:(__IOSurface *)iosurface pinnedGPUAddress:(unint64_t)address;
- (AGXBuffer)initWithDevice:(id)device length:(unint64_t)length alignment:(unsigned int)alignment options:(unint64_t)options pointerTag:(unint64_t)tag pinnedGPUAddress:(unint64_t)address placementSparsePageSize:(int64_t)size;
- (AGXBuffer)initWithDevice:(id)device length:(unint64_t)length alignment:(unsigned int)alignment pointerTag:(unint64_t)tag options:(unint64_t)options isSuballocDisabled:(BOOL)disabled resourceInArgs:(AGXNewTextureDataStruc *)args pinnedGPULocation:(const GPUResourcePinningLocation *)self0;
- (AGXBuffer)initWithHeap:(id)heap length:(unint64_t)length alignment:(unsigned int)alignment pointerTag:(unint64_t)tag options:(unint64_t)options;
- (AGXBuffer)initWithHeap:(id)heap length:(unint64_t)length alignment:(unsigned int)alignment pointerTag:(unint64_t)tag options:(unint64_t)options atOffset:(unint64_t)offset;
- (id)initImplWithHeap:(id)heap resource:(id)resource length:(unint64_t)length pointerTag:(unint64_t)tag atOffset:(unint64_t)offset;
- (id)initInternalBufferWithDevice:(id)device length:(unint64_t)length options:(unint64_t)options;
- (id)initUntrackedInternalBufferWithDevice:(id)device length:(unint64_t)length options:(unint64_t)options;
- (unint64_t)parentGPUAddress;
- (unint64_t)parentGPUSize;
- (void)dealloc;
- (void)emitBufferResourceInfoSignpost:(id)signpost;
- (void)emitResourceInfoTraceEvent;
@end

@implementation AGXBuffer

- (void)emitResourceInfoTraceEvent
{
  [(AGXBuffer *)self emitBufferResourceInfoSignpost:@"Echo"];
  v3.receiver = self;
  v3.super_class = AGXBuffer;
  [(IOGPUMetalBuffer *)&v3 emitResourceInfoTraceEvent];
}

- (void)emitBufferResourceInfoSignpost:(id)signpost
{
  v40 = *MEMORY[0x29EDCA608];
  v5 = self + *MEMORY[0x29EDC5638];
  {
  }

  else
  {
    v6 = MEMORY[0x29EDCA990];
  }

  if ((v5[23] & 8) != 0)
  {
    if (v6 != MEMORY[0x29EDCA990] && os_signpost_enabled(v6))
    {
      v16 = *(v5 + 12);
      uTF8String = [*(v5 + 11) UTF8String];
      v18 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC55F8]);
      v19 = (*(v5 + 19) << 48) | (*(v5 + 18) << 32);
      v20 = v19 & 0xFFFFFFFF00000000 | [*(v5 + 10) registryID];
      var1 = self->bufferResourceInfo.var0.var1;
      uTF8String2 = [signpost UTF8String];
      v23 = *(v5 + 9);
      v24 = 134350850;
      v25 = v16;
      v26 = 2082;
      v27 = uTF8String;
      v28 = 2050;
      v29 = v18;
      v30 = 2050;
      v31 = v20;
      v32 = 2050;
      v33 = var1;
      v34 = 2050;
      selfCopy2 = self;
      v36 = 2082;
      v37 = uTF8String2;
      v38 = 2050;
      v39 = v23;
      v15 = "AGX Internal Buffer Resource";
      goto LABEL_11;
    }
  }

  else if (v6 != MEMORY[0x29EDCA990] && os_signpost_enabled(v6))
  {
    v7 = *(v5 + 12);
    uTF8String3 = [*(v5 + 11) UTF8String];
    v9 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC55F8]);
    v10 = (*(v5 + 19) << 48) | (*(v5 + 18) << 32);
    v11 = v10 & 0xFFFFFFFF00000000 | [*(v5 + 10) registryID];
    v12 = self->bufferResourceInfo.var0.var1;
    uTF8String4 = [signpost UTF8String];
    v14 = *(v5 + 9);
    v24 = 134350850;
    v25 = v7;
    v26 = 2082;
    v27 = uTF8String3;
    v28 = 2050;
    v29 = v9;
    v30 = 2050;
    v31 = v11;
    v32 = 2050;
    v33 = v12;
    v34 = 2050;
    selfCopy2 = self;
    v36 = 2082;
    v37 = uTF8String4;
    v38 = 2050;
    v39 = v14;
    v15 = "Metal Buffer Resource";
LABEL_11:
    _os_signpost_emit_with_name_impl(&dword_29CA13000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v15, "GlobalID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  BufInfoPacked1=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  BufInfoPacked2=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  ObjectPtr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t  Action=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t  GPUVA=%{public,signpost.description:attribute}llu", &v24, 0x52u);
  }
}

- (unint64_t)parentGPUSize
{
  result = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC5600]);
  if (result)
  {
    return [result length];
  }

  return result;
}

- (unint64_t)parentGPUAddress
{
  result = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC5600]);
  if (result)
  {
    return [result gpuAddress];
  }

  return result;
}

- (AGXBuffer)initWithDevice:(id)device addressRanges:(MTLAddressRange *)ranges addressRangeCount:(unint64_t)count length:(unint64_t)length alignment:(unsigned int)alignment options:(unint64_t)options pinnedGPUAddress:(unint64_t)address
{
  v19 = 0;
  v17.receiver = self;
  v17.super_class = AGXBuffer;
  v16 = 104;
  v9 = [(IOGPUMetalBuffer *)&v17 initWithDevice:device addressRanges:ranges addressRangeCount:count length:length options:options gpuAddress:address args:v18 argsSize:v16];
  v10 = v9;
  if (v9)
  {
    v11 = (&v9->super.super.super.super.super.super.isa + *MEMORY[0x29EDC5638]);
    v12 = v11[9];
    v13 = v11[16];
    v14 = v11[2] & 0x1F00000000000000 | [(IOGPUMetalBuffer *)v9 length]& 0xFFFFFFFFFFFFFFLL | 0x2000000000000000;
    v11[1] = v12;
    v11[2] = v14;
    v11[3] = v13;
    [(AGXBuffer *)v10 emitBufferResourceInfoSignpost:@"Create"];
  }

  return v10;
}

- (AGXBuffer)initWithHeap:(id)heap length:(unint64_t)length alignment:(unsigned int)alignment pointerTag:(unint64_t)tag options:(unint64_t)options atOffset:(unint64_t)offset
{
  if ([heap type] == 1 && (alignment <= 0x100 ? (v14 = 256) : (v14 = alignment), (v15 = objc_msgSend(heap, "newSubResourceAtOffset:withLength:alignment:options:", offset, length, v14, options)) != 0))
  {
    result = [(AGXBuffer *)self initImplWithHeap:heap resource:v15 length:length atOffset:offset];
    result->bufferResourceInfo.var0.var1 = result->bufferResourceInfo.var0.var1 & 0xFFFFFFF7 | (8 * (*&result->super.super._anon_50[*MEMORY[0x29EDC5638] + 104] != 0));
  }

  else
  {

    return 0;
  }

  return result;
}

- (AGXBuffer)initWithHeap:(id)heap length:(unint64_t)length alignment:(unsigned int)alignment pointerTag:(unint64_t)tag options:(unint64_t)options
{
  if ([heap type] || (alignment <= 0x100 ? (v13 = 256) : (v13 = alignment), v16 = 0, (v14 = objc_msgSend(heap, "newSubResourceWithLength:alignment:options:offset:", length, v13, options, &v16)) == 0))
  {

    return 0;
  }

  else
  {
    result = [(AGXBuffer *)self initImplWithHeap:heap resource:v14 length:length pointerTag:tag atOffset:v16];
    result->bufferResourceInfo.var0.var1 = result->bufferResourceInfo.var0.var1 & 0xFFFFFFF7 | (8 * (*&result->super.super._anon_50[*MEMORY[0x29EDC5638] + 104] != 0));
  }

  return result;
}

- (AGXBuffer)initWithDevice:(id)device length:(unint64_t)length alignment:(unsigned int)alignment options:(unint64_t)options pointerTag:(unint64_t)tag pinnedGPUAddress:(unint64_t)address placementSparsePageSize:(int64_t)size
{
  v12 = *&alignment;
  v27 = 0x2000000000000;
  v16 = [device sparseTileSizeInBytesForSparsePageSize:size];
  v25.receiver = self;
  v25.super_class = AGXBuffer;
  v24 = 104;
  v17 = [(IOGPUMetalBuffer *)&v25 initWithDevice:device pointer:0 length:length alignment:v12 options:options sysMemSize:length gpuAddress:address gpuTag:tag placementSparsePageSize:size placementSparseResidencyBytes:16 * (((length + v16 - 1) & -v16) / v16) args:v26 argsSize:v24 deallocator:0];
  v18 = v17;
  if (v17)
  {
    v19 = (&v17->super.super.super.super.super.super.isa + *MEMORY[0x29EDC5638]);
    v20 = v19[9];
    v21 = v19[16];
    v22 = v19[2] & 0x1F00000000000000 | [(IOGPUMetalBuffer *)v17 length]& 0xFFFFFFFFFFFFFFLL | 0x2000000000000000;
    v19[1] = v20;
    v19[2] = v22;
    v19[3] = v21;
    [(AGXBuffer *)v18 emitBufferResourceInfoSignpost:@"Create"];
  }

  return v18;
}

- (AGXBuffer)initWithDevice:(id)device iosurface:(__IOSurface *)iosurface pinnedGPUAddress:(unint64_t)address
{
  v14 = 0;
  v12.receiver = self;
  v12.super_class = AGXBuffer;
  v5 = [(IOGPUMetalBuffer *)&v12 initWithDevice:device iosurface:iosurface gpuAddress:address args:v13 argsSize:104];
  v6 = v5;
  if (v5)
  {
    v5->bufferResourceInfo.var0.var1 |= 4u;
    v7 = (&v5->super.super.super.super.super.super.isa + *MEMORY[0x29EDC5638]);
    v8 = v7[9];
    v9 = v7[16];
    v10 = v7[2] & 0x1F00000000000000 | [(IOGPUMetalBuffer *)v5 length]& 0xFFFFFFFFFFFFFFLL | 0x2000000000000000;
    v7[1] = v8;
    v7[2] = v10;
    v7[3] = v9;
    [(AGXBuffer *)v6 emitBufferResourceInfoSignpost:@"Create"];
  }

  return v6;
}

- (AGXBuffer)initWithDevice:(id)device bytes:(void *)bytes length:(unint64_t)length alignment:(unsigned int)alignment pointerTag:(unint64_t)tag options:(unint64_t)options deallocator:(id)deallocator pinnedGPUAddress:(unint64_t)self0
{
  v20 = 0;
  v18.receiver = self;
  v18.super_class = AGXBuffer;
  v17 = 104;
  v10 = [(IOGPUMetalBuffer *)&v18 initWithDevice:device pointer:bytes length:length alignment:*&alignment options:options sysMemSize:length gpuAddress:address gpuTag:tag args:v19 argsSize:v17 deallocator:deallocator];
  v11 = v10;
  if (v10)
  {
    v10->bufferResourceInfo.var0.var1 |= 2u;
    v12 = (&v10->super.super.super.super.super.super.isa + *MEMORY[0x29EDC5638]);
    v13 = v12[9];
    v14 = v12[16];
    v15 = v12[2] & 0x1F00000000000000 | [(IOGPUMetalBuffer *)v10 length]& 0xFFFFFFFFFFFFFFLL | 0x2000000000000000;
    v12[1] = v13;
    v12[2] = v15;
    v12[3] = v14;
    [(AGXBuffer *)v11 emitBufferResourceInfoSignpost:@"Create"];
  }

  return v11;
}

- (id)initUntrackedInternalBufferWithDevice:(id)device length:(unint64_t)length options:(unint64_t)options
{
  self->bufferResourceInfo.var0.var1 |= 1u;
  v7 = 0x1800000000;
  result = [(AGXBuffer *)self initWithDevice:device length:length options:options isSuballocDisabled:0 resourceInArgs:v6 pinnedGPULocation:0];
  if (result)
  {
    *(result + *MEMORY[0x29EDC5638] + 16) |= 0x800000000000000uLL;
  }

  return result;
}

- (id)initInternalBufferWithDevice:(id)device length:(unint64_t)length options:(unint64_t)options
{
  v7 = 0x800000000;
  self->bufferResourceInfo.var0.var1 |= 1u;
  result = [(AGXBuffer *)self initWithDevice:device length:length options:options isSuballocDisabled:1 resourceInArgs:v6 pinnedGPULocation:0];
  if (result)
  {
    *(result + *MEMORY[0x29EDC5638] + 16) |= 0x800000000000000uLL;
  }

  return result;
}

- (void)dealloc
{
  if (self && *(&self->super.super._res.var0 + *MEMORY[0x29EDC5638]))
  {
    [(AGXBuffer *)self emitBufferResourceInfoSignpost:@"Destroy"];
  }

  v3.receiver = self;
  v3.super_class = AGXBuffer;
  [(IOGPUMetalBuffer *)&v3 dealloc];
}

- (id)initImplWithHeap:(id)heap resource:(id)resource length:(unint64_t)length pointerTag:(unint64_t)tag atOffset:(unint64_t)offset
{
  v14.receiver = self;
  v14.super_class = AGXBuffer;
  v7 = [(IOGPUMetalBuffer *)&v14 initWithHeap:heap resource:resource offset:offset length:length gpuTag:tag];
  v8 = v7;
  if (v7)
  {
    v9 = (&v7->super.super.super.super.super.super.isa + *MEMORY[0x29EDC5638]);
    v10 = v9[9];
    v11 = v9[16];
    v12 = v9[2] & 0x1F00000000000000 | [(IOGPUMetalBuffer *)v7 length]& 0xFFFFFFFFFFFFFFLL | 0x2000000000000000;
    v9[1] = v10;
    v9[2] = v12;
    v9[3] = v11;
    [(AGXBuffer *)v8 emitBufferResourceInfoSignpost:@"Create"];
  }

  return v8;
}

- (AGXBuffer)initWithDevice:(id)device length:(unint64_t)length alignment:(unsigned int)alignment pointerTag:(unint64_t)tag options:(unint64_t)options isSuballocDisabled:(BOOL)disabled resourceInArgs:(AGXNewTextureDataStruc *)args pinnedGPULocation:(const GPUResourcePinningLocation *)self0
{
  v10 = (length + *MEMORY[0x29EDCA6D0] - 1) & -*MEMORY[0x29EDCA6D0];
  if (v10 < length)
  {
    goto LABEL_2;
  }

  if (alignment <= 1)
  {
    alignmentCopy = 1;
  }

  else
  {
    alignmentCopy = alignment;
  }

  if (location)
  {
    var1 = location->var1;
    if (var1)
    {
      v42 = 0;
      if (location->var0 < var1 || (var2 = location->var2, location->var0 + length > var2 + var1))
      {
LABEL_2:

        return 0;
      }

      tagCopy = tag;
      selfCopy = self;
      v41 = location->var0 - var1;
      if (alignment <= 0x100)
      {
        *&alignment = 256;
      }

      else
      {
        alignmentCopy2 = alignment;
      }

      optionsCopy = options;
      if ((options & 0xF0) == 0x20)
      {
        optionsCopy2 = options | 0x20000;
      }

      else
      {
        optionsCopy2 = options;
      }

      deviceCopy = device;
      v22 = [device allocBufferSubDataWithLength:length options:optionsCopy2 alignment:*&alignment heapIndex:&v42 + 2 bufferIndex:&v42 bufferOffset:&v41 parentAddress:var1 parentLength:var2];
      if (v22)
      {
        v23 = v22;
        v24 = selfCopy;
        goto LABEL_28;
      }

      self = selfCopy;
      tag = tagCopy;
      options = optionsCopy;
      device = deviceCopy;
    }

    var0 = location->var0;
LABEL_32:
    LODWORD(v40) = 104;
    result = [(IOGPUMetalBuffer *)self initWithDevice:device pointer:0 length:length alignment:alignmentCopy options:options sysMemSize:v10 gpuAddress:var0 gpuTag:tag args:args argsSize:v40 deallocator:0];
    if (!result)
    {
      return result;
    }

    goto LABEL_33;
  }

  var0 = 0;
  if (*MEMORY[0x29EDCA6D0] <= length || disabled)
  {
    goto LABEL_32;
  }

  tagCopy2 = tag;
  selfCopy2 = self;
  v42 = 0;
  v41 = 0;
  if (alignment <= 0x100)
  {
    *&alignment = 256;
  }

  else
  {
    alignmentCopy3 = alignment;
  }

  optionsCopy3 = options;
  if ((options & 0xF0) == 0x20)
  {
    optionsCopy4 = options | 0x20000;
  }

  else
  {
    optionsCopy4 = options;
  }

  deviceCopy2 = device;
  v32 = [device allocBufferSubDataWithLength:length options:optionsCopy4 alignment:*&alignment heapIndex:&v42 + 2 bufferIndex:&v42 bufferOffset:&v41 parentAddress:0 parentLength:0];
  if (!v32)
  {
    var0 = 0;
    self = selfCopy2;
    tag = tagCopy2;
    options = optionsCopy3;
    device = deviceCopy2;
    goto LABEL_32;
  }

  v23 = v32;
  v24 = selfCopy2;
  tagCopy = tagCopy2;
LABEL_28:
  LODWORD(v39) = 104;
  result = [(IOGPUMetalBuffer *)v24 initWithPrimaryBuffer:v23 heapIndex:SHIWORD(v42) bufferIndex:v42 bufferOffset:v41 length:length args:args argsSize:v39 gpuTag:tagCopy];
  if (!result)
  {
    return result;
  }

LABEL_33:
  v33 = (&result->super.super.super.super.super.super.isa + *MEMORY[0x29EDC5638]);
  v34 = v33[9];
  v35 = v33[16];
  v36 = result;
  v37 = [(IOGPUMetalBuffer *)result length];
  result = v36;
  v38 = v33[2] & 0x1F00000000000000 | v37 & 0xFFFFFFFFFFFFFFLL | 0x2000000000000000;
  v33[1] = v34;
  v33[2] = v38;
  v33[3] = v35;
  return result;
}

@end