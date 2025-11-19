@interface AGXG18PFamilyRayTracingCPUBuilder
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)calcAllocSizesFromDescriptor:(SEL)a3;
- (AGXG18PFamilyRayTracingCPUBuilder)init;
- (id).cxx_construct;
- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4;
- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5;
@end

@implementation AGXG18PFamilyRayTracingCPUBuilder

- (id).cxx_construct
{
  v2 = &unk_2A179F000;
  {
    v6 = self;
    v2 = &unk_2A179F000;
    v5 = v4;
    self = v6;
    if (v5)
    {
      AGX::RayTracingCPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
      v2 = &unk_2A179F000;
      self = v6;
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

- (void)serializePrimitiveAccelerationStructure:(id)a3 toBuffer:(id)a4 serializedBufferOffset:(unint64_t)a5
{
  v6 = a3 + 336;
  v7 = *(a3 + 43);
  v8 = *(v7 + 72);
  v9 = [a4 contents];
  v10 = &unk_2A179F000;
  {
    v16 = v9;
    v10 = &unk_2A179F000;
    v15 = v14;
    v9 = v16;
    if (v15)
    {
      AGX::RayTracingCPUBuilderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getSelectedRiaBvhGen(void)::riaBvhGenOverride = 0;
      v10 = &unk_2A179F000;
      v9 = v16;
    }
  }

  v11 = v9 + a5;
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

- (void)copyAndCompactAccelerationStructure:(id)a3 toAccelerationStructure:(id)a4
{
  v5 = a4 + 336;
  memcpy(*(a4 + 43), *(a3 + 43), *(*(a3 + 43) + 72));
  v6 = *(v5 + 1);
  *(v6 + 144) = [a4 uniqueIdentifier];
}

- (AGXG18PFamilyRayTracingCPUBuilder)init
{
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyRayTracingCPUBuilder;
  return [(_MTLObjectWithLabel *)&v3 init];
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)calcAllocSizesFromDescriptor:(SEL)a3
{
  *&retstr->var0 = xmmword_29D2F23A0;
  retstr->var2 = 16;
  return result;
}

@end