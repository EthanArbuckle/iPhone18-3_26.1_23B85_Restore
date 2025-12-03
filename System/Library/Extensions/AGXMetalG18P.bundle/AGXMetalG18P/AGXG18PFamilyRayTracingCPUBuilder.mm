@interface AGXG18PFamilyRayTracingCPUBuilder
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)calcAllocSizesFromDescriptor:(SEL)descriptor;
- (AGXG18PFamilyRayTracingCPUBuilder)init;
- (id).cxx_construct;
- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
@end

@implementation AGXG18PFamilyRayTracingCPUBuilder

- (id).cxx_construct
{
  v2 = &unk_2A179F000;
  {
    selfCopy = self;
    v2 = &unk_2A179F000;
    v5 = v4;
    self = selfCopy;
    if (v5)
    {
      AGX::RayTracingCPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
      v2 = &unk_2A179F000;
      self = selfCopy;
    }
  }

  v3 = v2[744];
  if (v3 <= 0)
  {
    v3 = 3;
  }

  *(self + 22) = v3;
  return self;
}

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  v6 = structure + 336;
  v7 = *(structure + 43);
  v8 = *(v7 + 72);
  contents = [buffer contents];
  v10 = &unk_2A179F000;
  {
    v16 = contents;
    v10 = &unk_2A179F000;
    v15 = v14;
    contents = v16;
    if (v15)
    {
      AGX::RayTracingCPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
      v10 = &unk_2A179F000;
      contents = v16;
    }
  }

  v11 = contents + offset;
  v12 = v10[744];
  if (v12 <= 0)
  {
    v12 = 3;
  }

  *v11 = AGX::RayTracingGPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncodingNext>::kBvhChipCodes[v12];
  *(v11 + 4) = *(v7 + 64);
  *(v11 + 8) = v8 + 24;
  *(v11 + 16) = v8;
  v13 = *(v6 + 1);

  memcpy((v11 + 24), v13, v8);
}

- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  v5 = accelerationStructure + 336;
  memcpy(*(accelerationStructure + 43), *(structure + 43), *(*(structure + 43) + 72));
  v6 = *(v5 + 1);
  *(v6 + 144) = [accelerationStructure uniqueIdentifier];
}

- (AGXG18PFamilyRayTracingCPUBuilder)init
{
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyRayTracingCPUBuilder;
  return [(_MTLObjectWithLabel *)&v3 init];
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)calcAllocSizesFromDescriptor:(SEL)descriptor
{
  *&retstr->var0 = xmmword_29D2F23A0;
  retstr->var2 = 16;
  return result;
}

@end