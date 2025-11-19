@interface AGXG18PFamilyMLContext
- (AGXG18PFamilyMLContext)initWithCommandBuffer:(id)a3 allocator:(id)a4;
- (void)dealloc;
- (void)destroyImpl;
- (void)endEncoding;
- (void)endEncodingWithSignalEvent:(id)a3 waitEvent:(id)a4 signalValue:(unint64_t)a5 waitValue:(unint64_t)a6;
- (void)updateFence:(id)a3 afterEncoderStages:(unint64_t)a4;
- (void)waitForFence:(id)a3 beforeEncoderStages:(unint64_t)a4;
@end

@implementation AGXG18PFamilyMLContext

- (void)endEncodingWithSignalEvent:(id)a3 waitEvent:(id)a4 signalValue:(unint64_t)a5 waitValue:(unint64_t)a6
{
  impl = self->_impl;
  v11 = [a3 eventPort];
  v12 = impl[30];
  *(v12 + 16) = v11;
  *v12 = a5;
  v13 = [a4 eventPort];
  v14 = impl[30];
  *(v14 + 20) = v13;
  *(v14 + 8) = a6;
  AGX::MLContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endMLPass(impl, v15, v16, v17, v18);
  v19.receiver = self;
  v19.super_class = AGXG18PFamilyMLContext;
  [(IOGPUMetal4MachineLearningCommandEncoder *)&v19 endEncoding];
}

- (void)endEncoding
{
  impl = self->_impl;
  v4.i64[0] = *(impl + 204);
  v4.i64[1] = v4.i64[0];
  v5 = *(impl + 220);
  v6.i64[0] = *(impl + 212);
  v6.i64[1] = v6.i64[0];
  *(impl + 188) = vorrq_s8(vorrq_s8(*(impl + 188), v4), v6);
  *(impl + 220) = vorr_s8(vdup_n_s32(vorr_s8(vdup_lane_s32(*v6.i8, 1), *v6.i8).u32[0] | vorr_s8(vdup_lane_s32(*v4.i8, 1), *v4.i8).u32[0]), v5);
  v22.receiver = self;
  v22.super_class = AGXG18PFamilyMLContext;
  v7 = [(_MTL4MachineLearningCommandEncoder *)&v22 event];
  v21.receiver = self;
  v21.super_class = AGXG18PFamilyMLContext;
  v8 = [(_MTL4MachineLearningCommandEncoder *)&v21 startEventValue];
  v20.receiver = self;
  v20.super_class = AGXG18PFamilyMLContext;
  v9 = [(_MTL4MachineLearningCommandEncoder *)&v20 endEventValue];
  v10 = self->_impl;
  v11 = [v7 eventPort];
  v12 = v10[30];
  *(v12 + 16) = v11;
  *v12 = v8;
  v13 = [v7 eventPort];
  v14 = v10[30];
  *(v14 + 20) = v13;
  *(v14 + 8) = v9;
  AGX::MLContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endMLPass(v10, v15, v16, v17, v18);
  v19.receiver = self;
  v19.super_class = AGXG18PFamilyMLContext;
  [(IOGPUMetal4MachineLearningCommandEncoder *)&v19 endEncoding];
  [(AGXG18PFamilyMLContext *)self destroyImpl];
}

- (void)waitForFence:(id)a3 beforeEncoderStages:(unint64_t)a4
{
  v4 = *(self->_impl + 32);
  if (!v4)
  {
    operator new();
  }

  v5 = *(a3 + *MEMORY[0x29EDC5610]);

  AGX::FenceList::insertFence(v4, v5);
}

- (void)updateFence:(id)a3 afterEncoderStages:(unint64_t)a4
{
  v4 = *(self->_impl + 31);
  if (!v4)
  {
    operator new();
  }

  v5 = *(a3 + *MEMORY[0x29EDC5610]);

  AGX::FenceList::insertFence(v4, v5);
}

- (void)dealloc
{
  [(AGXG18PFamilyMLContext *)self destroyImpl];
  v3.receiver = self;
  v3.super_class = AGXG18PFamilyMLContext;
  [(IOGPUMetal4MachineLearningCommandEncoder *)&v3 dealloc];
}

- (void)destroyImpl
{
  impl = self->_impl;
  if (impl)
  {
    v4 = impl[32];
    if (v4)
    {
      for (i = *(v4 + 512); i; *(v4 + 512) = i)
      {
        v6 = *(v4 + 520);
        v7 = *(v4 + 8 * __clz(__rbit64(i)));
        os_unfair_lock_lock((v6 + 16));
        *v7 = *v6;
        *v6 = v7;
        os_unfair_lock_unlock((v6 + 16));
        i = (*(v4 + 512) - 1) & *(v4 + 512);
      }

      MEMORY[0x29ED520D0](v4, 0x1020C40C758419CLL);
    }

    v8 = impl[31];
    if (v8)
    {
      for (j = *(v8 + 512); j; *(v8 + 512) = j)
      {
        v10 = *(v8 + 520);
        v11 = *(v8 + 8 * __clz(__rbit64(j)));
        os_unfair_lock_lock((v10 + 16));
        *v11 = *v10;
        *v10 = v11;
        os_unfair_lock_unlock((v10 + 16));
        j = (*(v8 + 512) - 1) & *(v8 + 512);
      }

      MEMORY[0x29ED520D0](v8, 0x1020C40C758419CLL);
    }

    allocator = self->_allocator;
    if (allocator)
    {
      *(allocator->_impl + 16) = 0;
    }

    self->_impl = 0;
    v13 = self->_allocator;
  }
}

- (AGXG18PFamilyMLContext)initWithCommandBuffer:(id)a3 allocator:(id)a4
{
  self->_allocator = a4;
  v24.receiver = self;
  v24.super_class = AGXG18PFamilyMLContext;
  v6 = [IOGPUMetal4MachineLearningCommandEncoder initWithCommandBuffer:sel_initWithCommandBuffer_allocator_ allocator:?];
  v7 = v6;
  if (v6)
  {
    v23.receiver = v6;
    v23.super_class = AGXG18PFamilyMLContext;
    [(_MTL4CommandEncoder *)&v23 setCommandBuffer:a3];
    v8 = *(a4 + 22);
    *(v8 + 16) = 1;
    v9 = *(v8 + 8);
    v9[32] = 0;
    *(v9 + 14) = 0u;
    *(v9 + 15) = 0u;
    *(v9 + 12) = 0u;
    *(v9 + 13) = 0u;
    *(v9 + 10) = 0u;
    *(v9 + 11) = 0u;
    *(v9 + 8) = 0u;
    *(v9 + 9) = 0u;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 2) = 0u;
    *(v9 + 3) = 0u;
    *v9 = 0u;
    *(v9 + 1) = 0u;
    v7->_impl = v9;
    v10 = v7->_allocator;
    v11 = [a3 device];
    v12 = *(a3 + 13);
    v13 = [a3 commandBufferStorage];
    impl = v7->_impl;
    *impl = 0;
    *(impl + 1) = v12;
    *(impl + 2) = v13;
    *(impl + 5) = v13;
    *(impl + 6) = v13 + 64;
    impl[80] = 0;
    impl[121] = 0;
    *(impl + 19) = 0;
    *(impl + 20) = 0;
    *(impl + 21) = v12 + 24;
    *(impl + 22) = 0;
    impl[184] = 0;
    *(impl + 213) = 0u;
    *(impl + 204) = 0u;
    *(impl + 188) = 0u;
    impl[229] = 1;
    *(impl + 4) = v11;
    *(impl + 56) = *(v13 + 728);
    *(impl + 9) = v13 + 144;
    *(impl + 16) = *(v13 + 48);
    *(impl + 17) = *(v13 + 56);
    *(impl + 21) = 0;
    *(impl + 92) = 0xFFFFFFFF00000000;
    *(impl + 29) = 0;
    v15 = v7->_impl;
    impl[120] = 1;
    v16 = v15[16];
    v17 = v16 + 224;
    if ((v16 + 224) > v15[17])
    {
      IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer();
      v18 = v15[2];
      v16 = *(v18 + 48);
      v15[16] = v16;
      v15[17] = *(v18 + 56);
      v17 = v16 + 224;
    }

    v15[16] = v17;
    v15[18] = 224;
    *v16 = 0xE000010000;
    IOGPUMetalCommandBufferStorageBeginSegment();
    *(v15 + 80) = 1;
    v19 = v15[1];
    v20 = *(v19 + 8);
    if (v20 && (*v19 != 1 || ([v20 ownedByParallelEncoder] & 1) != 0))
    {
      v21 = 0;
    }

    else
    {
      *v19 = 0;
      v21 = 4;
    }

    *(v16 + 136) = v21;
    *(v16 + 140) = 0;
    *(v16 + 152) = 0;
    *(v16 + 160) = 0;
    *(v16 + 172) = 0;
    *(v16 + 188) = 0;
    *(v16 + 180) = 0;
    IOGPUResourceListAddResource();
    v15[29] = v16 + 8;
    *(v16 + 144) = 0;
    *(v16 + 156) = xmmword_29D2F1FF0;
    *(v16 + 172) = 0;
    *(v16 + 180) = 0;
    *(v16 + 188) = 0;
    v15[30] = v16 + 200;
    bzero((v16 + 200), 0x18uLL);
    *(v15 + 55) |= 0x200u;
  }

  return v7;
}

@end