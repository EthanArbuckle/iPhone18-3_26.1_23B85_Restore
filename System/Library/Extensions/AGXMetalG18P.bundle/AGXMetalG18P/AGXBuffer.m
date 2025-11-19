@interface AGXBuffer
- (AGXBuffer)initWithDevice:(id)a3 addressRanges:(MTLAddressRange *)a4 addressRangeCount:(unint64_t)a5 length:(unint64_t)a6 alignment:(unsigned int)a7 options:(unint64_t)a8 pinnedGPUAddress:(unint64_t)a9;
- (AGXBuffer)initWithDevice:(id)a3 bytes:(void *)a4 length:(unint64_t)a5 alignment:(unsigned int)a6 pointerTag:(unint64_t)a7 options:(unint64_t)a8 deallocator:(id)a9 pinnedGPUAddress:(unint64_t)a10;
- (AGXBuffer)initWithDevice:(id)a3 iosurface:(__IOSurface *)a4 pinnedGPUAddress:(unint64_t)a5;
- (AGXBuffer)initWithDevice:(id)a3 length:(unint64_t)a4 alignment:(unsigned int)a5 options:(unint64_t)a6 pointerTag:(unint64_t)a7 pinnedGPUAddress:(unint64_t)a8 placementSparsePageSize:(int64_t)a9;
- (AGXBuffer)initWithDevice:(id)a3 length:(unint64_t)a4 alignment:(unsigned int)a5 pointerTag:(unint64_t)a6 options:(unint64_t)a7 isSuballocDisabled:(BOOL)a8 resourceInArgs:(AGXNewTextureDataStruc *)a9 pinnedGPULocation:(const GPUResourcePinningLocation *)a10;
- (AGXBuffer)initWithHeap:(id)a3 length:(unint64_t)a4 alignment:(unsigned int)a5 pointerTag:(unint64_t)a6 options:(unint64_t)a7;
- (AGXBuffer)initWithHeap:(id)a3 length:(unint64_t)a4 alignment:(unsigned int)a5 pointerTag:(unint64_t)a6 options:(unint64_t)a7 atOffset:(unint64_t)a8;
- (id)initImplWithHeap:(id)a3 resource:(id)a4 length:(unint64_t)a5 pointerTag:(unint64_t)a6 atOffset:(unint64_t)a7;
- (id)initInternalBufferWithDevice:(id)a3 length:(unint64_t)a4 options:(unint64_t)a5;
- (id)initUntrackedInternalBufferWithDevice:(id)a3 length:(unint64_t)a4 options:(unint64_t)a5;
- (unint64_t)parentGPUAddress;
- (unint64_t)parentGPUSize;
- (void)dealloc;
- (void)emitBufferResourceInfoSignpost:(id)a3;
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

- (void)emitBufferResourceInfoSignpost:(id)a3
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
      v17 = [*(v5 + 11) UTF8String];
      v18 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC55F8]);
      v19 = (*(v5 + 19) << 48) | (*(v5 + 18) << 32);
      v20 = v19 & 0xFFFFFFFF00000000 | [*(v5 + 10) registryID];
      var1 = self->bufferResourceInfo.var0.var1;
      v22 = [a3 UTF8String];
      v23 = *(v5 + 9);
      v24 = 134350850;
      v25 = v16;
      v26 = 2082;
      v27 = v17;
      v28 = 2050;
      v29 = v18;
      v30 = 2050;
      v31 = v20;
      v32 = 2050;
      v33 = var1;
      v34 = 2050;
      v35 = self;
      v36 = 2082;
      v37 = v22;
      v38 = 2050;
      v39 = v23;
      v15 = "AGX Internal Buffer Resource";
      goto LABEL_11;
    }
  }

  else if (v6 != MEMORY[0x29EDCA990] && os_signpost_enabled(v6))
  {
    v7 = *(v5 + 12);
    v8 = [*(v5 + 11) UTF8String];
    v9 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC55F8]);
    v10 = (*(v5 + 19) << 48) | (*(v5 + 18) << 32);
    v11 = v10 & 0xFFFFFFFF00000000 | [*(v5 + 10) registryID];
    v12 = self->bufferResourceInfo.var0.var1;
    v13 = [a3 UTF8String];
    v14 = *(v5 + 9);
    v24 = 134350850;
    v25 = v7;
    v26 = 2082;
    v27 = v8;
    v28 = 2050;
    v29 = v9;
    v30 = 2050;
    v31 = v11;
    v32 = 2050;
    v33 = v12;
    v34 = 2050;
    v35 = self;
    v36 = 2082;
    v37 = v13;
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

- (AGXBuffer)initWithDevice:(id)a3 addressRanges:(MTLAddressRange *)a4 addressRangeCount:(unint64_t)a5 length:(unint64_t)a6 alignment:(unsigned int)a7 options:(unint64_t)a8 pinnedGPUAddress:(unint64_t)a9
{
  v19 = 0;
  v17.receiver = self;
  v17.super_class = AGXBuffer;
  v16 = 104;
  v9 = [(IOGPUMetalBuffer *)&v17 initWithDevice:a3 addressRanges:a4 addressRangeCount:a5 length:a6 options:a8 gpuAddress:a9 args:v18 argsSize:v16];
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

- (AGXBuffer)initWithHeap:(id)a3 length:(unint64_t)a4 alignment:(unsigned int)a5 pointerTag:(unint64_t)a6 options:(unint64_t)a7 atOffset:(unint64_t)a8
{
  if ([a3 type] == 1 && (a5 <= 0x100 ? (v14 = 256) : (v14 = a5), (v15 = objc_msgSend(a3, "newSubResourceAtOffset:withLength:alignment:options:", a8, a4, v14, a7)) != 0))
  {
    result = [(AGXBuffer *)self initImplWithHeap:a3 resource:v15 length:a4 atOffset:a8];
    result->bufferResourceInfo.var0.var1 = result->bufferResourceInfo.var0.var1 & 0xFFFFFFF7 | (8 * (*&result->super.super._anon_50[*MEMORY[0x29EDC5638] + 104] != 0));
  }

  else
  {

    return 0;
  }

  return result;
}

- (AGXBuffer)initWithHeap:(id)a3 length:(unint64_t)a4 alignment:(unsigned int)a5 pointerTag:(unint64_t)a6 options:(unint64_t)a7
{
  if ([a3 type] || (a5 <= 0x100 ? (v13 = 256) : (v13 = a5), v16 = 0, (v14 = objc_msgSend(a3, "newSubResourceWithLength:alignment:options:offset:", a4, v13, a7, &v16)) == 0))
  {

    return 0;
  }

  else
  {
    result = [(AGXBuffer *)self initImplWithHeap:a3 resource:v14 length:a4 pointerTag:a6 atOffset:v16];
    result->bufferResourceInfo.var0.var1 = result->bufferResourceInfo.var0.var1 & 0xFFFFFFF7 | (8 * (*&result->super.super._anon_50[*MEMORY[0x29EDC5638] + 104] != 0));
  }

  return result;
}

- (AGXBuffer)initWithDevice:(id)a3 length:(unint64_t)a4 alignment:(unsigned int)a5 options:(unint64_t)a6 pointerTag:(unint64_t)a7 pinnedGPUAddress:(unint64_t)a8 placementSparsePageSize:(int64_t)a9
{
  v12 = *&a5;
  v27 = 0x2000000000000;
  v16 = [a3 sparseTileSizeInBytesForSparsePageSize:a9];
  v25.receiver = self;
  v25.super_class = AGXBuffer;
  v24 = 104;
  v17 = [(IOGPUMetalBuffer *)&v25 initWithDevice:a3 pointer:0 length:a4 alignment:v12 options:a6 sysMemSize:a4 gpuAddress:a8 gpuTag:a7 placementSparsePageSize:a9 placementSparseResidencyBytes:16 * (((a4 + v16 - 1) & -v16) / v16) args:v26 argsSize:v24 deallocator:0];
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

- (AGXBuffer)initWithDevice:(id)a3 iosurface:(__IOSurface *)a4 pinnedGPUAddress:(unint64_t)a5
{
  v14 = 0;
  v12.receiver = self;
  v12.super_class = AGXBuffer;
  v5 = [(IOGPUMetalBuffer *)&v12 initWithDevice:a3 iosurface:a4 gpuAddress:a5 args:v13 argsSize:104];
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

- (AGXBuffer)initWithDevice:(id)a3 bytes:(void *)a4 length:(unint64_t)a5 alignment:(unsigned int)a6 pointerTag:(unint64_t)a7 options:(unint64_t)a8 deallocator:(id)a9 pinnedGPUAddress:(unint64_t)a10
{
  v20 = 0;
  v18.receiver = self;
  v18.super_class = AGXBuffer;
  v17 = 104;
  v10 = [(IOGPUMetalBuffer *)&v18 initWithDevice:a3 pointer:a4 length:a5 alignment:*&a6 options:a8 sysMemSize:a5 gpuAddress:a10 gpuTag:a7 args:v19 argsSize:v17 deallocator:a9];
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

- (id)initUntrackedInternalBufferWithDevice:(id)a3 length:(unint64_t)a4 options:(unint64_t)a5
{
  self->bufferResourceInfo.var0.var1 |= 1u;
  v7 = 0x1800000000;
  result = [(AGXBuffer *)self initWithDevice:a3 length:a4 options:a5 isSuballocDisabled:0 resourceInArgs:v6 pinnedGPULocation:0];
  if (result)
  {
    *(result + *MEMORY[0x29EDC5638] + 16) |= 0x800000000000000uLL;
  }

  return result;
}

- (id)initInternalBufferWithDevice:(id)a3 length:(unint64_t)a4 options:(unint64_t)a5
{
  v7 = 0x800000000;
  self->bufferResourceInfo.var0.var1 |= 1u;
  result = [(AGXBuffer *)self initWithDevice:a3 length:a4 options:a5 isSuballocDisabled:1 resourceInArgs:v6 pinnedGPULocation:0];
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

- (id)initImplWithHeap:(id)a3 resource:(id)a4 length:(unint64_t)a5 pointerTag:(unint64_t)a6 atOffset:(unint64_t)a7
{
  v14.receiver = self;
  v14.super_class = AGXBuffer;
  v7 = [(IOGPUMetalBuffer *)&v14 initWithHeap:a3 resource:a4 offset:a7 length:a5 gpuTag:a6];
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

- (AGXBuffer)initWithDevice:(id)a3 length:(unint64_t)a4 alignment:(unsigned int)a5 pointerTag:(unint64_t)a6 options:(unint64_t)a7 isSuballocDisabled:(BOOL)a8 resourceInArgs:(AGXNewTextureDataStruc *)a9 pinnedGPULocation:(const GPUResourcePinningLocation *)a10
{
  v10 = (a4 + *MEMORY[0x29EDCA6D0] - 1) & -*MEMORY[0x29EDCA6D0];
  if (v10 < a4)
  {
    goto LABEL_2;
  }

  if (a5 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a5;
  }

  if (a10)
  {
    var1 = a10->var1;
    if (var1)
    {
      v42 = 0;
      if (a10->var0 < var1 || (var2 = a10->var2, a10->var0 + a4 > var2 + var1))
      {
LABEL_2:

        return 0;
      }

      v16 = a6;
      v17 = self;
      v41 = a10->var0 - var1;
      if (a5 <= 0x100)
      {
        *&a5 = 256;
      }

      else
      {
        v18 = a5;
      }

      v19 = a7;
      if ((a7 & 0xF0) == 0x20)
      {
        v20 = a7 | 0x20000;
      }

      else
      {
        v20 = a7;
      }

      v21 = a3;
      v22 = [a3 allocBufferSubDataWithLength:a4 options:v20 alignment:*&a5 heapIndex:&v42 + 2 bufferIndex:&v42 bufferOffset:&v41 parentAddress:var1 parentLength:var2];
      if (v22)
      {
        v23 = v22;
        v24 = v17;
        goto LABEL_28;
      }

      self = v17;
      a6 = v16;
      a7 = v19;
      a3 = v21;
    }

    var0 = a10->var0;
LABEL_32:
    LODWORD(v40) = 104;
    result = [(IOGPUMetalBuffer *)self initWithDevice:a3 pointer:0 length:a4 alignment:v13 options:a7 sysMemSize:v10 gpuAddress:var0 gpuTag:a6 args:a9 argsSize:v40 deallocator:0];
    if (!result)
    {
      return result;
    }

    goto LABEL_33;
  }

  var0 = 0;
  if (*MEMORY[0x29EDCA6D0] <= a4 || a8)
  {
    goto LABEL_32;
  }

  v26 = a6;
  v27 = self;
  v42 = 0;
  v41 = 0;
  if (a5 <= 0x100)
  {
    *&a5 = 256;
  }

  else
  {
    v28 = a5;
  }

  v29 = a7;
  if ((a7 & 0xF0) == 0x20)
  {
    v30 = a7 | 0x20000;
  }

  else
  {
    v30 = a7;
  }

  v31 = a3;
  v32 = [a3 allocBufferSubDataWithLength:a4 options:v30 alignment:*&a5 heapIndex:&v42 + 2 bufferIndex:&v42 bufferOffset:&v41 parentAddress:0 parentLength:0];
  if (!v32)
  {
    var0 = 0;
    self = v27;
    a6 = v26;
    a7 = v29;
    a3 = v31;
    goto LABEL_32;
  }

  v23 = v32;
  v24 = v27;
  v16 = v26;
LABEL_28:
  LODWORD(v39) = 104;
  result = [(IOGPUMetalBuffer *)v24 initWithPrimaryBuffer:v23 heapIndex:SHIWORD(v42) bufferIndex:v42 bufferOffset:v41 length:a4 args:a9 argsSize:v39 gpuTag:v16];
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