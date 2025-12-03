@interface AGXG18PFamilyHeap
- (AGXG18PFamilyHeap)initWithDevice:(id)device descriptor:(id)descriptor;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newBufferWithDescriptor:(id)descriptor;
- (id)newBufferWithDescriptor:(id)descriptor offset:(unint64_t)offset;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options atOffset:(unint64_t)offset;
- (id)newTextureWithDescriptor:(id)descriptor;
- (id)newTextureWithDescriptor:(id)descriptor atOffset:(unint64_t)offset;
- (void)dealloc;
- (void)emitHeapResourceInfoSignpost:(id)signpost;
@end

@implementation AGXG18PFamilyHeap

- (void)dealloc
{
  [(AGXG18PFamilyHeap *)self emitHeapResourceInfoSignpost:@"Destroy"];
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyHeap;
  [(IOGPUMetalHeap *)&v3 dealloc];
}

- (void)emitHeapResourceInfoSignpost:(id)signpost
{
  v34 = *MEMORY[0x29EDCA608];
  {
    {
      v6 = *MEMORY[0x29EDC5618];
      v7 = MEMORY[0x29EDC5638];
      v8 = *(&self->super.super.super.super.super.isa + v6) + *MEMORY[0x29EDC5638];
      v9 = *(v8 + 12);
      uTF8String = [*(v8 + 11) UTF8String];
      v11 = *(&self->super.super.super.super.super.isa + *MEMORY[0x29EDC5620]);
      v12 = *(&self->super.super.super.super.super.isa + v6) + *v7;
      v13 = (*(v12 + 19) << 48) | (*(v12 + 18) << 32);
      v14 = v13 & 0xFFFFFFFF00000000 | [*(v12 + 10) registryID];
      v15 = *(&self->super.super.super.super.super.isa + v6);
      uTF8String2 = [signpost UTF8String];
      v17 = *(*(&self->super.super.super.super.super.isa + v6) + *v7 + 72);
      v18 = 134350850;
      v19 = v9;
      v20 = 2082;
      v21 = uTF8String;
      v22 = 2050;
      v23 = v11;
      v24 = 2050;
      v25 = v14;
      v26 = 2050;
      v27 = 0;
      v28 = 2050;
      v29 = v15;
      v30 = 2082;
      v31 = uTF8String2;
      v32 = 2050;
      v33 = v17;
      _os_signpost_emit_with_name_impl(&dword_29CA13000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Metal Heap Resource", "GlobalID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t  HeapInfoPacked1=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t  HeapInfoPacked2=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t  ObjectPtr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t  Action=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t  GPUVA=%{public,signpost.description:attribute}llu", &v18, 0x52u);
    }
  }
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  if ([(_MTLHeap *)self storageMode]!= 2)
  {
    return 0;
  }

  device = [(IOGPUMetalHeap *)self device];
  [(MTLDevice *)device heapAccelerationStructureSizeAndAlignWithSize:size];
  result = [(AGXBuffer *)[AGXG18PFamilyBuffer alloc] initWithHeap:self length:size alignment:v10 options:[(_MTLHeap *)self resourceOptions] atOffset:offset];
  if (result)
  {
    v12 = result;
    if (([(MTLDevice *)device buildBVHForRIA]& 1) != 0)
    {
      v13 = [[AGXG18PFamilyRayTracingAccelerationStructure alloc] initWithBuffer:v12 device:device length:size resourceIndex:index];
    }

    else
    {
      v13 = [[AGXG18PFamilyRayTracingAccelerationStructureSW alloc] initWithBuffer:v12 offset:0 device:device resourceIndex:index];
    }

    v14 = v13;

    return v14;
  }

  return result;
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset
{
  device = [(IOGPUMetalHeap *)self device];
  if (device)
  {
    [(MTLDevice *)device accelerationStructureSizesWithDescriptor:descriptor];
  }

  return [(AGXG18PFamilyHeap *)self newAccelerationStructureWithSize:0 offset:offset resourceIndex:0];
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor
{
  device = [(IOGPUMetalHeap *)self device];
  if (device)
  {
    [(MTLDevice *)device accelerationStructureSizesWithDescriptor:descriptor];
  }

  return [(AGXG18PFamilyHeap *)self newAccelerationStructureWithSize:0 resourceIndex:0];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  if ([(_MTLHeap *)self storageMode]!= 2)
  {
    return 0;
  }

  device = [(IOGPUMetalHeap *)self device];
  [(MTLDevice *)device heapAccelerationStructureSizeAndAlignWithSize:size];
  result = [(AGXBuffer *)[AGXG18PFamilyBuffer alloc] initWithHeap:self length:size alignment:v8 options:[(_MTLHeap *)self resourceOptions]];
  if (result)
  {
    v10 = result;
    if (([(MTLDevice *)device buildBVHForRIA]& 1) != 0)
    {
      v11 = [[AGXG18PFamilyRayTracingAccelerationStructure alloc] initWithBuffer:v10 device:device length:size resourceIndex:index];
    }

    else
    {
      v11 = [[AGXG18PFamilyRayTracingAccelerationStructureSW alloc] initWithBuffer:v10 offset:0 device:device resourceIndex:index];
    }

    v12 = v11;

    return v12;
  }

  return result;
}

- (id)newBufferWithDescriptor:(id)descriptor offset:(unint64_t)offset
{
  v7 = [descriptor length];
  alignment = [descriptor alignment];
  pointerTag = [descriptor pointerTag];
  v10 = [AGXG18PFamilyBuffer alloc];
  resourceOptions = [(_MTLHeap *)self resourceOptions];

  return [(AGXBuffer *)v10 initWithHeap:self length:v7 alignment:alignment pointerTag:pointerTag options:resourceOptions atOffset:offset];
}

- (id)newBufferWithDescriptor:(id)descriptor
{
  v5 = [descriptor length];
  alignment = [descriptor alignment];
  pointerTag = [descriptor pointerTag];
  v8 = [AGXG18PFamilyBuffer alloc];
  resourceOptions = [(_MTLHeap *)self resourceOptions];

  return [(AGXBuffer *)v8 initWithHeap:self length:v5 alignment:alignment pointerTag:pointerTag options:resourceOptions];
}

- (id)newTextureWithDescriptor:(id)descriptor atOffset:(unint64_t)offset
{
  v7 = [AGXG18PFamilyTexture alloc];

  return [(AGXTexture *)v7 initWithHeap:self desc:descriptor atOffset:offset];
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options atOffset:(unint64_t)offset
{
  v9 = [AGXG18PFamilyBuffer alloc];

  return [(AGXBuffer *)v9 initWithHeap:self length:length options:options atOffset:offset];
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  v5 = [AGXG18PFamilyTexture alloc];

  return [(AGXTexture *)v5 initWithHeap:self desc:descriptor];
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options
{
  v7 = [AGXG18PFamilyBuffer alloc];

  return [(AGXBuffer *)v7 initWithHeap:self length:length options:options];
}

- (AGXG18PFamilyHeap)initWithDevice:(id)device descriptor:(id)descriptor
{
  if ([descriptor validateWithDevice:?])
  {
    descriptorPrivate = [descriptor descriptorPrivate];
    v8 = descriptorPrivate;
    v9 = descriptorPrivate[10];
    if (v9 == 102)
    {
      v10 = 0x10000;
    }

    else
    {
      v10 = 0x4000;
    }

    if (v9 == 103)
    {
      v10 = 0x40000;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = *MEMORY[0x29EDCA6D0];
    }

    v12 = *descriptorPrivate;
    v13 = (v11 + *descriptorPrivate - 1) / v11;
    v24[0] = 0;
    HIDWORD(v24[0]) = (descriptorPrivate[2] != 0) << 10;
    v24[1] = 0x100010001;
    v25 = 16777473;
    v14 = v13 * v11;
    v26 = 0;
    v27 = 0;
    pinnedGPUAddress = [descriptor pinnedGPUAddress];
    v29 = v12;
    v30 = v11;
    v32 = 0u;
    v31 = 0u;
    v33 = 0;
    *(&v32 + 4) = v14;
    v34 = 0;
    v35 = 0;
    v15 = v8[1] == 2;
    v16 = v8[2] != 0;
    v17 = ([descriptor hazardTrackingMode] & 3) << 8;
    if ((*(*(device + 106) + 16456) & 0x10) != 0)
    {
      v17 = 512;
    }

    v18 = (v16 || 32 * v15) | v17;
    v19 = v8[6];
    if ((v19 & 0x600000) != 0)
    {
      if ((v19 & 0x200000) != 0)
      {
        v20 = 393216;
      }

      else
      {
        v20 = 0x40000;
      }

      if ((v19 & 0x400000) == 0)
      {
        v20 = 0x20000;
      }

      v26 = v20;
    }

    v23.receiver = self;
    v23.super_class = AGXG18PFamilyHeap;
    result = [(IOGPUMetalHeap *)&v23 initWithDevice:device size:v14 options:v18 | v19 & 0x1600000 args:v24 argsSize:104 desc:descriptor];
    if (result)
    {
      v22 = result;
      [(AGXG18PFamilyHeap *)result emitHeapResourceInfoSignpost:@"Create"];
      [*(&v22->super.super.super.super.super.isa + *MEMORY[0x29EDC5618]) setAttachedResourceInfoTraceEmitter:v22];
      return v22;
    }
  }

  else
  {
    [(AGXG18PFamilyHeap *)self dealloc];
    return 0;
  }

  return result;
}

@end