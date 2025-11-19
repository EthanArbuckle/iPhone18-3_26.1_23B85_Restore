@interface AGXG18PFamilyThreadedRenderPass
- (AGXG18PFamilyThreadedRenderPass)initWithCommandBuffer:(id)a3 renderPassDescriptor:(id)a4;
- (id).cxx_construct;
- (id)renderCommandEncoder;
- (id)sampledRenderCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4;
- (void)dealloc;
- (void)endEncoding;
- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setDepthStoreAction:(unint64_t)a3;
- (void)setStencilStoreAction:(unint64_t)a3;
@end

@implementation AGXG18PFamilyThreadedRenderPass

- (id).cxx_construct
{
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 27) = 0;
  *(self + 31) = 0;
  *(self + 32) = 0;
  *(self + 30) = 0;
  return self;
}

- (void)setStencilStoreAction:(unint64_t)a3
{
  impl = self->_impl;
  if ((*(impl + 7757) & 2) != 0)
  {
    impl[996] = a3;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        *(impl + 1938) |= 0x200u;
        impl[968] &= 0xFFFFFDFFFFFFFDFFLL;
        goto LABEL_12;
      }

      if (a3 != 3)
      {
        goto LABEL_14;
      }

      v4 = *(impl + 1938) | 0x200;
    }

    else
    {
      if (!a3)
      {
        *(impl + 1938) &= ~0x200u;
        LODWORD(v6) = impl[968] & 0xFFFFFDFF;
        HIDWORD(v6) = (impl[968] | 0x20000000200uLL) >> 32;
        impl[968] = v6;
        v7 = *(impl + 3610) | 8;
LABEL_13:
        *(impl + 3610) = v7;
        goto LABEL_14;
      }

      if (a3 != 1)
      {
        goto LABEL_14;
      }

      v4 = impl[969] & 0xFFFFFDFF;
    }

    *(impl + 1938) = v4;
    LODWORD(v5) = impl[968] | 0x200;
    HIDWORD(v5) = (impl[968] & 0xFFFFFDFFFFFFFDFFLL) >> 32;
    impl[968] = v5;
LABEL_12:
    v7 = *(impl + 3610) & 0xFFF7;
    goto LABEL_13;
  }

LABEL_14:
  v8 = 68;
  if (a3 != 1)
  {
    v8 = 0;
  }

  *(impl + (v8 >> 3) + 8424) |= 1 << (v8 & 4);
}

- (void)setDepthStoreAction:(unint64_t)a3
{
  impl = self->_impl;
  if (*(impl + 7757))
  {
    impl[995] = a3;
    if (a3 <= 1)
    {
      if (!a3)
      {
        *(impl + 1938) &= ~0x100u;
        LODWORD(v8) = impl[968] & 0xFFFFFEFF;
        HIDWORD(v8) = (impl[968] | 0x10000000100uLL) >> 32;
        impl[968] = v8;
        v6 = *(impl + 3610) | 2;
        goto LABEL_14;
      }

      if (a3 != 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a3 == 2)
      {
        *(impl + 1938) |= 0x100u;
        impl[968] &= 0xFFFFFEFFFFFFFEFFLL;
LABEL_13:
        v6 = *(impl + 3610) & 0xFFFD;
LABEL_14:
        *(impl + 3610) = v6;
        goto LABEL_15;
      }

      if (a3 == 3)
      {
        v4 = *(impl + 1938) | 0x100;
        goto LABEL_12;
      }

      if (a3 != 5)
      {
        goto LABEL_15;
      }
    }

    v4 = impl[969] & 0xFFFFFEFF;
LABEL_12:
    *(impl + 1938) = v4;
    LODWORD(v5) = impl[968] | 0x100;
    HIDWORD(v5) = (impl[968] & 0xFFFFFEFFFFFFFEFFLL) >> 32;
    impl[968] = v5;
    goto LABEL_13;
  }

LABEL_15:
  v7 = 67;
  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v7 = 0;
  }

  *(impl + (v7 >> 3) + 8424) |= 1 << (v7 & 3);
}

- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (a4 <= 7)
  {
    AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setColorStoreAction(self->_impl + 231, a3, a4);
  }
}

- (void)endEncoding
{
  if (!*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB7A0]))
  {
    v3 = objc_autoreleasePoolPush();
    [-[AGXG18PFamilyThreadedRenderPass renderCommandEncoder](self "renderCommandEncoder")];
    objc_autoreleasePoolPop(v3);
  }

  v4 = [*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB790]) device];
  impl = self->_impl;
  v6 = impl[1053];
  v7 = impl[1054];
  atomic_fetch_or((v4 + 856), v6);
  atomic_fetch_or((v4 + 864), v7);
  dispatchQueue = self->dispatchQueue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __46__AGXG18PFamilyThreadedRenderPass_endEncoding__block_invoke;
  block[3] = &unk_29F3438F8;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v9 = self->_impl;
  free(*(v9 + 1029));
  v10 = *(v9 + 1019);
  if (v10)
  {
  }

  AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Framebuffer(v9 + 1848);
  v11 = *(v9 + 225);
  v12 = *(v9 + 226);
  if (v11 != v12)
  {
    do
    {
      v13 = *v11++;
      free(v13);
    }

    while (v11 != v12);
    v11 = *(v9 + 225);
  }

  if (v11)
  {
    *(v9 + 226) = v11;
    operator delete(v11);
  }

  free(self->_impl);
  self->_impl = 0;
  v14.receiver = self;
  v14.super_class = AGXG18PFamilyThreadedRenderPass;
  [(IOGPUMetalParallelRenderCommandEncoder *)&v14 endEncoding];
}

void __46__AGXG18PFamilyThreadedRenderPass_endEncoding__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + *MEMORY[0x29EDBB790]);
  v4 = *(v2 + *MEMORY[0x29EDBB798]);
  v5 = *(v2 + 240);
  v6 = *(v2 + *MEMORY[0x29EDBB7A0]);
  AGX::FramebufferGen3_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::finalizeStoreActions(*(v2 + 200) + 1848);
  *(*(v5 + 8 * v6 - 8) + 2077) = 1;
  if (v6)
  {
    v97[0] = 0;
    v97[1] = v97;
    v97[2] = 0x5012000000;
    v97[3] = __Block_byref_object_copy__9351;
    v97[4] = __Block_byref_object_dispose__9352;
    v97[6] = v3;
    [v3 getCurrentKernelCommandBufferStart:&v98 current:&v99 end:&v100];
    v95[0] = 0;
    v95[1] = v95;
    v95[2] = 0x2020000000;
    v96 = 0;
    v89[0] = MEMORY[0x29EDCA5F8];
    v89[1] = 3221225472;
    v90 = ___ZN3AGX18ThreadedRenderPassINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE6commitEPU27objcproto16MTLCommandBuffer23IOGPUMetalCommandBufferPS9_PPNS1_14RenderContextAEm_block_invoke;
    v91 = &__block_descriptor_56_e44__RenderMergeNode____RenderContextA_B_12__0I8l;
    v92 = v6;
    v93 = v4;
    v94 = v5;
    v84[0] = MEMORY[0x29EDCA5F8];
    v84[1] = 3221225472;
    v85 = ___ZN3AGX18ThreadedRenderPassINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE6commitEPU27objcproto16MTLCommandBuffer23IOGPUMetalCommandBufferPS9_PPNS1_14RenderContextAEm_block_invoke_2;
    v86 = &unk_29F3438A8;
    v87 = v95;
    v88 = v6;
    v77[0] = MEMORY[0x29EDCA5F8];
    v77[1] = 3221225472;
    v78 = ___ZN3AGX18ThreadedRenderPassINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE6commitEPU27objcproto16MTLCommandBuffer23IOGPUMetalCommandBufferPS9_PPNS1_14RenderContextAEm_block_invoke_3;
    v79 = &unk_29F3438D0;
    v82 = v6;
    v83 = v4;
    v80 = v95;
    v81 = v97;
    v115 = 0;
    v116 = 0;
    v117 = 0;
    ___ZN3AGX18ThreadedRenderPassINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE6commitEPU27objcproto16MTLCommandBuffer23IOGPUMetalCommandBufferPS9_PPNS1_14RenderContextAEm_block_invoke(v89, 0, &v115);
    if (v117)
    {
      goto LABEL_3;
    }

    v9 = 0;
    while (1)
    {
      v10 = v116;
      v109 = 0;
      v104 = v116;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0;
      v114 = 0;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      if (!(v85)(v84, v9))
      {
        goto LABEL_3;
      }

      v101 = 0;
      v102 = 0;
      v103 = 0;
      v90(&v101, v89, v9);
      if (v103)
      {
        goto LABEL_3;
      }

      v11 = 0;
      v12 = (v10 + 78496);
      v13 = (v10 + 30104);
      while (1)
      {
        v14 = (v9 + v11);
        v15 = v102;
        v16 = v104;
        if (v104 == v102 || *(v102 + 78556) <= 1u && (IOGPUResourceListMergeLists() & 1) != 0)
        {
          v17 = 1;
          if (v15[2077])
          {
            goto LABEL_25;
          }

          goto LABEL_19;
        }

        if (v11)
        {
          break;
        }

        v17 = 0;
        *&v105 = v16;
        v14 = v9;
        if (v15[2077])
        {
          goto LABEL_25;
        }

LABEL_19:
        if ((v15[2078] & 1) == 0 && (v15[2074] != 1 || v15[2073] == 1))
        {
LABEL_25:
          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::emitSWEndOfTileIfNeeded(v15);
          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::appendSubEncoderToChain(v15, &v104);
          v76 = 1;
          goto LABEL_28;
        }

        AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::appendSubEncoderToChain(v15, &v104);
        if (!v17)
        {
          v76 = 0;
          goto LABEL_28;
        }

        v101 = 0;
        v102 = 0;
        v103 = 0;
        v90(&v101, v89, (v9 + v11++ + 1));
        if (v103)
        {
          goto LABEL_3;
        }
      }

      v76 = 0;
      v14 = (v14 - 1);
LABEL_28:
      v18 = *(v10 + 78552);
      v75 = *(v10 + 2392);
      if (v14 > v9)
      {
        v20 = *v13;
        v19 = *(v10 + 30120);
        v21 = v106;
        v22 = v107;
        v23 = vmaxq_s32(v19, v107);
        *v13 = vmaxq_s32(*v13, v106);
        *(v10 + 30120) = v23;
        v24 = *(v10 + 30136);
        v25 = v108;
        *(v10 + 30136) = vmaxq_s32(v24, v108);
        v26 = v109;
        v27 = *(v10 + 30152);
        if (v27 <= v109)
        {
          v28 = v109;
        }

        else
        {
          v28 = *(v10 + 30152);
        }

        *(v10 + 30152) = v28;
        if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v21, v20), vcgtq_s32(v22, v19)))) & 1) != 0 || ((vaddvq_s32(vandq_s8(vcgtq_s32(v25, v24), xmmword_29D2F1960)) & 0xF) == 0 ? (v29 = v27 < v26) : (v29 = 1), v29))
        {
          AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v10 + 30104, *(v10 + 30328) + 320, 1);
        }

        v30 = *(v10 + 30224);
        v31 = *(v10 + 30208);
        v32 = v110;
        v33 = v111;
        *(v10 + 30208) = vmaxq_s32(v31, v110);
        *(v10 + 30224) = vmaxq_s32(v30, v33);
        v34 = *(v10 + 30240);
        v35 = v112;
        *(v10 + 30240) = vmaxq_s32(v34, v112);
        v36 = v113;
        v37 = *(v10 + 30256);
        if (v37 <= v113)
        {
          v38 = v113;
        }

        else
        {
          v38 = *(v10 + 30256);
        }

        *(v10 + 30256) = v38;
        if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v32, v31), vcgtq_s32(v33, v30)))) & 1) != 0 || (vaddvq_s32(vandq_s8(vcgtq_s32(v35, v34), xmmword_29D2F1960)) & 0xF) != 0 || v37 < v36)
        {
          AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(v10 + 30208, *(v10 + 30328) + 1360, 0);
        }

        v39 = (v9 + 1);
        do
        {
          v101 = 0;
          v102 = 0;
          v103 = 0;
          v90(&v101, v89, v39);
          v40 = (v102 + 77824);
          v41 = *(v102 + 78496);
          if (v41)
          {
            if (!*v12)
            {
              operator new();
            }

            AGX::FenceList::merge(*v12, v41);
          }

          v42 = v40[86];
          if (v42)
          {
            v43 = *(v10 + 78512);
            if (!v43)
            {
              operator new();
            }

            AGX::FenceList::merge(v43, v42);
          }

          v44 = v40[85];
          if (v44)
          {
            v45 = *(v10 + 78504);
            if (!v45)
            {
              operator new();
            }

            AGX::FenceList::merge(v45, v44);
          }

          v46 = v40[87];
          if (v46)
          {
            v47 = *(v10 + 78520);
            if (!v47)
            {
              operator new();
            }

            AGX::FenceList::merge(v47, v46);
          }

          v48 = v40[207];
          v49 = v40[208];
          while (v48 != v49)
          {
            v50 = *(v10 + 79504);
            v51 = *(v10 + 79512);
            if (v50 != v51)
            {
              while (*v50 != *v48 || *(v50 + 8) != *(v48 + 8))
              {
                v50 += 16;
                if (v50 == v51)
                {
                  goto LABEL_65;
                }
              }
            }

            if (v50 == v51)
            {
LABEL_65:
              std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100](v10 + 79504, v48);
            }

            v48 += 16;
          }

          v53 = v40[210];
          v54 = v40[211];
          while (v53 != v54)
          {
            v55 = *(v10 + 79504);
            v56 = *(v10 + 79512);
            if (v55 != v56)
            {
              while (*v55 != *v53 || *(v55 + 8) != *(v53 + 8))
              {
                v55 += 16;
                if (v55 == v56)
                {
                  goto LABEL_78;
                }
              }
            }

            if (v55 == v56)
            {
LABEL_78:
              std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100](v10 + 79504, v53);
            }

            v53 += 16;
          }

          v58 = v40[213];
          v59 = v40[214];
          while (v58 != v59)
          {
            v60 = *(v10 + 79552);
            v61 = *(v10 + 79560);
            if (v60 != v61)
            {
              while (*v60 != *v58 || *(v60 + 8) != *(v58 + 8))
              {
                v60 += 16;
                if (v60 == v61)
                {
                  goto LABEL_91;
                }
              }
            }

            if (v60 == v61)
            {
LABEL_91:
              std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100](v10 + 79552, v58);
            }

            v58 += 16;
          }

          v63 = v40[216];
          v64 = v40[217];
          while (v63 != v64)
          {
            v65 = *(v10 + 79552);
            v66 = *(v10 + 79560);
            if (v65 != v66)
            {
              while (*v65 != *v63 || *(v65 + 8) != *(v63 + 8))
              {
                v65 += 16;
                if (v65 == v66)
                {
                  goto LABEL_104;
                }
              }
            }

            if (v65 == v66)
            {
LABEL_104:
              std::vector<AGX::AGXTimestampEntry>::push_back[abi:nn200100](v10 + 79552, v63);
            }

            v63 += 16;
          }

          v18 |= *(v102 + 78552);
          v39 = (v39 + 1);
        }

        while (v39 <= v14);
      }

      if (v18)
      {
        v68 = 0;
        v69 = v76;
        v70 = v75;
      }

      else
      {
        v70 = v75;
        v68 = *(v75 + 4959);
        v69 = v76;
      }

      if ((*(v70 + 5000) & 0xFFFFFFFFFF80) != 0)
      {
        *(v70 + 4976) = *(v70 + 4976) & 0xFFFFFFFFFFFFFFFELL | v68;
      }

      v71 = v105;
      v72 = *(v105 + 72);
      *(v105 + 72) = v72 + 1;
      *v72 = *(v71 + 27836);
      *(v10 + 2077) = 1;
      AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::endRenderPassCommon(v10, 0, 0, 0);
      if (*(v10 + 2077) == 1)
      {
LABEL_122:
        if (*(*(v10 + 2392) + 4956))
        {
          goto LABEL_123;
        }
      }

      else if ((*(v10 + 2078) & 1) == 0)
      {
        if (*(v10 + 2074) != 1)
        {
          goto LABEL_122;
        }

        if ((*(v10 + 2073) & 1) != 0 && *(*(v10 + 2392) + 4956) == 1)
        {
LABEL_123:
          AGX::RenderContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::encodeDepthCopy(v10);
        }
      }

      v73 = *(v10 + 79472);
      v74 = (*(v10 + 1872) + 856);
      atomic_fetch_or(v74, *(v10 + 79464));
      atomic_fetch_or(v74 + 1, v73);
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *v10 = 0;
      *(v10 + 1896) = 0u;
      if ((v78)(v77, v14, v69))
      {
        if ((v69 & 1) == 0)
        {
          v9 = (v14 + 1);
          v115 = 0;
          v116 = 0;
          v117 = 0;
          v90(&v115, v89, v9);
          if ((v117 & 1) == 0)
          {
            continue;
          }
        }
      }

LABEL_3:
      _Block_object_dispose(v95, 8);
      _Block_object_dispose(v97, 8);
      break;
    }
  }

  v7 = *(a1 + 32);
  if (v7[28] != v7[27])
  {
    v8 = 0;
    do
    {
      *(v7[30] + 8 * v8) = 0;

      *(*(*(a1 + 32) + 216) + 8 * v8++) = 0;
      v7 = *(a1 + 32);
    }

    while (v8 < (v7[28] - v7[27]) >> 3);
  }

  v7[31] = v7[30];
  *(*(a1 + 32) + 224) = *(*(a1 + 32) + 216);
}

- (id)sampledRenderCommandEncoderWithProgramInfoBuffer:(id *)a3 capacity:(unint64_t)a4
{
  v7 = [(IOGPUMetalParallelRenderCommandEncoder *)self _renderCommandEncoderCommon];
  v8 = [v7 sampledSubRenderCommandEncoderWithDescriptor:*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB7A8]) subEncoderIndex:*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB7A0]) - 1 framebuffer:self->_impl + 1848 programInfoBuffer:a3 capacity:a4];
  v9 = v8;
  if (**MEMORY[0x29EDC56B0])
  {
    [(_MTLParallelRenderCommandEncoder *)self globalTraceObjectID];
    [v8 globalTraceObjectID];
    kdebug_trace();
  }

  if (v8)
  {
    dispatchQueue = self->dispatchQueue;
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __93__AGXG18PFamilyThreadedRenderPass_sampledRenderCommandEncoderWithProgramInfoBuffer_capacity___block_invoke;
    v12[3] = &unk_29F343860;
    v12[4] = self;
    v12[5] = v8;
    dispatch_sync(dispatchQueue, v12);
  }

  return v8;
}

void __93__AGXG18PFamilyThreadedRenderPass_sampledRenderCommandEncoderWithProgramInfoBuffer_capacity___block_invoke(uint64_t a1)
{
  std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](*(a1 + 32) + 216, (a1 + 40));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) getImpl];
  std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v2 + 240, &v3);
}

- (id)renderCommandEncoder
{
  v3 = [(IOGPUMetalParallelRenderCommandEncoder *)self _renderCommandEncoderCommon];
  v4 = [v3 subRenderCommandEncoderWithDescriptor:*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB7A8]) subEncoderIndex:*(&self->super.super.super.super.isa + *MEMORY[0x29EDBB7A0]) - 1 framebuffer:self->_impl + 1848];
  v5 = v4;
  if (**MEMORY[0x29EDC56B0])
  {
    [(_MTLParallelRenderCommandEncoder *)self globalTraceObjectID];
    [v4 globalTraceObjectID];
    kdebug_trace();
  }

  if (v4)
  {
    dispatchQueue = self->dispatchQueue;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __55__AGXG18PFamilyThreadedRenderPass_renderCommandEncoder__block_invoke;
    v8[3] = &unk_29F343860;
    v8[4] = self;
    v8[5] = v4;
    dispatch_sync(dispatchQueue, v8);
  }

  return v4;
}

void __55__AGXG18PFamilyThreadedRenderPass_renderCommandEncoder__block_invoke(uint64_t a1)
{
  std::vector<AGXG18PFamilyTexture *>::push_back[abi:nn200100](*(a1 + 32) + 216, (a1 + 40));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) getImpl];
  std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v2 + 240, &v3);
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    free(*(impl + 1029));
    v4 = *(impl + 1019);
    if (v4)
    {
    }

    AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Framebuffer(impl + 1848);
    v5 = *(impl + 225);
    v6 = *(impl + 226);
    if (v5 != v6)
    {
      do
      {
        v7 = *v5++;
        free(v7);
      }

      while (v5 != v6);
      v5 = *(impl + 225);
    }

    if (v5)
    {
      *(impl + 226) = v5;
      operator delete(v5);
    }

    free(self->_impl);
    self->_impl = 0;
  }

  dispatchQueue = self->dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v9.receiver = self;
  v9.super_class = AGXG18PFamilyThreadedRenderPass;
  [(_MTLParallelRenderCommandEncoder *)&v9 dealloc];
}

- (AGXG18PFamilyThreadedRenderPass)initWithCommandBuffer:(id)a3 renderPassDescriptor:(id)a4
{
  block[290] = *MEMORY[0x29EDCA608];
  v7 = [a3 device];
  v20 = 0;
  v21 = 0;
  [a4 validate:v7 width:&v21 height:&v20];
  v19.receiver = self;
  v19.super_class = AGXG18PFamilyThreadedRenderPass;
  v8 = [(IOGPUMetalParallelRenderCommandEncoder *)&v19 initWithCommandBuffer:a3 renderPassDescriptor:a4];
  if (v8)
  {
    v8->dispatchQueue = dispatch_queue_create("com.apple.Metal.ParallelRenderCommandEncoder", 0);
    if ((v8->_subRenderCommandEncoders.__cap_ - v8->_subRenderCommandEncoders.__begin_) <= 0x7F)
    {
      operator new();
    }

    if ((v8->_subOBJCRenderCommandEncoders.var1 - v8->_subOBJCRenderCommandEncoders.__begin_) <= 0x7F)
    {
      operator new();
    }

    v9 = malloc_type_calloc(0x20F8uLL, 1uLL, 0x10F004082ED5171uLL);
    v8->_impl = v9;
    if (v9)
    {
      v10 = [a4 _descriptorPrivate];
      v11 = v21;
      v12 = v20;
      v13 = [a3 commandBufferStorage];
      v14 = v7[106] + 7008;
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = ___ZN3AGX20RenderUSCStateLoaderINS_6HAL3008EncodersENS1_7ClassesEE17dataBufferConfigsERK16AGXGPUCoreConfigNSt3__15arrayIjLm4EEE_block_invoke;
      block[3] = &__block_descriptor_56_e5_v8__0l;
      block[5] = 0;
      block[6] = 0;
      block[4] = v14;
      if (AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&,std::array<unsigned int,4ul>)::once != -1)
      {
        v18 = v13;
        dispatch_once(&AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::dataBufferConfigs(AGXGPUCoreConfig const&,std::array<unsigned int,4ul>)::once, block);
        v13 = v18;
      }

      *v9 = &AGX::RenderUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::databuffer_configs;
      v9[1] = v7;
      v9[2] = v13;
      v15 = *(v13 + 768);
      *(v9 + 456) = 0;
      v9[226] = 0;
      v9[227] = 0;
      v9[225] = 0;
      *(v9 + 460) = 0;
      v9[3] = v15;
      v9[4] = v13 + 144;
      v9[229] = *(v13 + 784);
      v16 = *(a3 + 90);
      AGX::FramebufferDriverConfigGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferDriverConfigGen3_3(block, v10, *(v7[106] + 16948), 0);
      AGX::FramebufferGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferGen3_3((v9 + 231), v7, v16, block, v11, v12, 0);
      v9[1054] = 0;
      v9[1053] = 64;
    }

    else
    {
      [(AGXG18PFamilyThreadedRenderPass *)v8 endEncoding];

      return 0;
    }
  }

  return v8;
}

@end