@interface AGXG18PFamilyIndirectCommandBuffer
- (AGXG18PFamilyIndirectCommandBuffer)initWithDevice:(id)a3 descriptor:(id)a4 count:(unint64_t)a5 options:(unint64_t)a6 isSuballocDisabled:(BOOL)a7;
- (id)indirectComputeCommandAtIndex:(unint64_t)a3;
- (id)indirectRenderCommandAtIndex:(unint64_t)a3;
- (unint64_t)resourceIndex;
- (void)dealloc;
- (void)resetWithRange:(_NSRange)a3;
@end

@implementation AGXG18PFamilyIndirectCommandBuffer

- (void)resetWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  type = self->_type;
  if (type)
  {
    if (type == 1)
    {
      v6.render = self->_impl;
      v7 = [(IOGPUMetalBuffer *)self->_buffer contents];
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 3221225472;
      v14 = ___ZN3AGX25IndirectCommandBufferGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE13resetCommandsEP19AGXG18PFamilyBufferjj_block_invoke;
      v15 = &__block_descriptor_40_e27_v32__0_PatchLocation_IIIQ_8l;
      v16 = v7;
      v8 = *(v6.render + 36);
      v17 = *(v6.render + 35) + v8 * location;
      v18 = v8 * length;
      v19 = 4;
      v20 = 0x20000000;
      ___ZN3AGX25IndirectCommandBufferGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE13resetCommandsEP19AGXG18PFamilyBufferjj_block_invoke(v13, &v17);
      if ((*(v6.render + 397) & 1) == 0)
      {
        v9 = *(v6.render + 42);
        v17 = *(v6.render + 41) + v9 * location;
        v18 = v9 * length;
        v19 = 4;
        v20 = 0;
        v14(v13, &v17);
        v10 = *(v6.render + 46);
        v17 = *(v6.render + 45) + v10 * location;
        v18 = v10 * length;
        v19 = 4;
        v20 = 0;
        v14(v13, &v17);
      }

      v17 = *(v6.render + 91) + *(v6.render + 92) * location;
      v18 = 16 * length;
      v19 = 4;
      v20 = 0;
      v14(v13, &v17);
    }
  }

  else
  {
    buffer = self->_buffer;
    render = self->_impl.render;

    AGX::IndirectComputeCommandBufferGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetCommands(render, buffer, a3.location, a3.length);
  }
}

- (unint64_t)resourceIndex
{
  type = self->_type;
  if (!type)
  {
    v3 = 136;
    return *(self->_impl.render + v3);
  }

  if (type == 1)
  {
    v3 = 408;
    return *(self->_impl.render + v3);
  }

  return 0;
}

- (id)indirectComputeCommandAtIndex:(unint64_t)a3
{
  v3 = [[AGXG18PFamilyIndirectComputeCommand alloc] initWithEncoder:self->_encoder.render withIndex:a3];

  return v3;
}

- (id)indirectRenderCommandAtIndex:(unint64_t)a3
{
  v3 = [[AGXG18PFamilyIndirectRenderCommand alloc] initWithEncoder:self->_encoder.render withIndex:a3];

  return v3;
}

- (void)dealloc
{
  type = self->_type;
  if (!type)
  {
    v4.render = self->_impl;
    if (!v4.render)
    {
      goto LABEL_13;
    }

    if (!*(v4.render + 34) || (*(v4.render + 152) & 1) != 0)
    {
      goto LABEL_12;
    }

    v5 = (*(v4.render + 18) + 752);
    v7.render = self->_impl;
    os_unfair_lock_lock(v5);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(v7.render + 18) + 696, *(v7.render + 34), *(v7.render + 34) + *(v7.render + 35) - 1);
    goto LABEL_11;
  }

  if (type != 1)
  {
    goto LABEL_15;
  }

  v4.render = self->_impl;
  if (v4.render)
  {
    if (!*(v4.render + 102) || (*(v4.render + 424) & 1) != 0)
    {
      goto LABEL_12;
    }

    v5 = (*(v4.render + 52) + 752);
    v6.render = self->_impl;
    os_unfair_lock_lock(v5);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(v6.render + 52) + 696, *(v6.render + 102), *(v6.render + 102) + *(v6.render + 103) - 1);
LABEL_11:
    os_unfair_lock_unlock(v5);
    v4.render = self->_impl;
LABEL_12:
    free(v4.render);
    self->_impl.render = 0;
  }

LABEL_13:
  render = self->_encoder.render;
  if (render)
  {
    free(render);
    self->_encoder.render = 0;
  }

LABEL_15:
  buffer = self->_buffer;
  if (buffer)
  {

    self->_buffer = 0;
  }

  v10.receiver = self;
  v10.super_class = AGXG18PFamilyIndirectCommandBuffer;
  [(IOGPUMetalIndirectCommandBuffer *)&v10 dealloc];
}

- (AGXG18PFamilyIndirectCommandBuffer)initWithDevice:(id)a3 descriptor:(id)a4 count:(unint64_t)a5 options:(unint64_t)a6 isSuballocDisabled:(BOOL)a7
{
  v12 = [a4 commandTypes];
  self->_impl.render = 0;
  v343 = a6;
  self->_encoder.render = 0;
  atomic_fetch_or(a3 + 108, 0x2000uLL);
  v342 = v12 & 0x60;
  v345 = a6 & 0x800000;
  if ((v12 & 0x60) == 0)
  {
    self->_type = 1;
    v16 = malloc_type_calloc(0x1C0uLL, 1uLL, 0x10200406122012DuLL);
    self->_impl.render = v16;
    if (!v16)
    {
      goto LABEL_301;
    }

    v17 = v16;
    *v16 = a5;
    v16[399] = v345 == 0;
    *(v16 + 51) = 0;
    *(v16 + 52) = 0;
    v16[424] = 0;
    *(v16 + 54) = 0;
    v16[396] = 0;
    if ([a4 inheritPipelineState])
    {
      v17[396] = 1;
    }

    v17[397] = 0;
    if ([a4 inheritBuffers])
    {
      v17[397] = 1;
    }

    *(v17 + 100) = 0;
    *(v17 + 200) = *(v17 + 200) & 0xFFFE | [a4 inheritDepthStencilState] ^ 1;
    if ([a4 inheritDepthBias])
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    *(v17 + 200) = *(v17 + 200) & 0xFFFD | v18;
    if ([a4 inheritDepthTestBounds])
    {
      v19 = 0;
    }

    else
    {
      v19 = 4;
    }

    *(v17 + 200) = *(v17 + 200) & 0xFFFB | v19;
    if ([a4 inheritDepthClipMode])
    {
      v20 = 0;
    }

    else
    {
      v20 = 8;
    }

    *(v17 + 200) = *(v17 + 200) & 0xFFF7 | v20;
    if ([a4 inheritCullMode])
    {
      v21 = 0;
    }

    else
    {
      v21 = 16;
    }

    *(v17 + 200) = *(v17 + 200) & 0xFFEF | v21;
    if ([a4 inheritStencilReferenceValues])
    {
      v22 = 0;
    }

    else
    {
      v22 = 32;
    }

    *(v17 + 200) = *(v17 + 200) & 0xFFDF | v22;
    if ([a4 inheritFrontFacingWinding])
    {
      v23 = 0;
    }

    else
    {
      v23 = 64;
    }

    *(v17 + 200) = *(v17 + 200) & 0xFFBF | v23;
    if ([a4 inheritTriangleFillMode])
    {
      v24 = 0;
    }

    else
    {
      v24 = 128;
    }

    *(v17 + 200) = *(v17 + 200) & 0xFF7F | v24;
    if ([a4 inheritBlendColor])
    {
      v25 = 0;
    }

    else
    {
      v25 = 256;
    }

    *(v17 + 200) = *(v17 + 200) & 0xFEFF | v25;
    if ([a4 inheritScissorRects])
    {
      v26 = 0;
    }

    else
    {
      v26 = 512;
    }

    *(v17 + 200) = *(v17 + 200) & 0xFDFF | v26;
    if ([a4 inheritViewports])
    {
      v27 = 0;
    }

    else
    {
      v27 = 1024;
    }

    *(v17 + 200) = *(v17 + 200) & 0xFBFF | v27;
    if (![a4 inheritDepthStencilState] || !objc_msgSend(a4, "inheritDepthBias") || !objc_msgSend(a4, "inheritDepthTestBounds") || !objc_msgSend(a4, "inheritDepthClipMode") || !objc_msgSend(a4, "inheritCullMode") || !objc_msgSend(a4, "inheritStencilReferenceValues") || !objc_msgSend(a4, "inheritFrontFacingWinding") || !objc_msgSend(a4, "inheritTriangleFillMode") || !objc_msgSend(a4, "inheritBlendColor") || !objc_msgSend(a4, "inheritScissorRects") || (objc_msgSend(a4, "inheritViewports") & 1) == 0)
    {
      atomic_fetch_or(a3 + 108, 0x4000uLL);
    }

    v17[404] = [a4 maxScissorRectCount];
    v17[405] = [a4 maxViewportCount];
    v28 = [a4 commandTypes];
    v17[441] = (v28 & 2) != 0;
    v17[442] = (v28 & 0xC) != 0;
    v29 = (v28 & 0x180) != 0;
    v17[440] = (v28 & 0xF) != 0;
    v17[443] = v29;
    if ((v28 & 0xF) != 0)
    {
      v29 = 0;
    }

    v17[444] = v29;
    *(v17 + 108) = 31;
    if ([a4 supportDynamicAttributeStride])
    {
      v30 = v17[397] ^ 1;
    }

    else
    {
      v30 = 0;
    }

    v17[445] = v30 & 1;
    v17[398] = 0;
    if ([a4 supportRayTracing])
    {
      v17[398] = 1;
    }

    *(v17 + 109) = 1;
    *(v17 + 1) = 0;
    v335 = *(*(a3 + 106) + 7068);
    v66 = [a4 commandTypes];
    if (*(v17 + 100))
    {
      v67 = 28;
    }

    else
    {
      v67 = 20;
    }

    v340 = v67;
    v68 = v17[443];
    v341 = v17[396];
    if (v341 == 1)
    {
      if (v17[440])
      {
        v69 = 12;
      }

      else
      {
        v69 = 0;
      }

      v70 = v17[442];
      if ((v70 | v17[441]))
      {
        v71 = 20;
      }

      else
      {
        v71 = v69;
      }

      v72 = v68 == 0;
      v73 = 36;
    }

    else
    {
      if (v17[440])
      {
        v74 = 24;
      }

      else
      {
        v74 = 0;
      }

      if (v17[441])
      {
        v71 = 32;
      }

      else
      {
        v71 = v74;
      }

      v70 = v17[442];
      if (v70)
      {
        v71 = 44;
      }

      v72 = v68 == 0;
      v73 = 52;
    }

    if (v72)
    {
      v75 = v71;
    }

    else
    {
      v75 = v73;
    }

    v76 = 16 * (v66 & 1);
    if ((v66 & 2) != 0)
    {
      v76 = 28;
    }

    if ((v66 & 0xC) != 0)
    {
      v76 = 36;
    }

    if (v76 <= 0x1C)
    {
      v77 = 28;
    }

    else
    {
      v77 = v76;
    }

    if ((v66 & 0x180) != 0)
    {
      v78 = v77;
    }

    else
    {
      v78 = v76;
    }

    v331 = v17[397];
    v333 = v17[445];
    v79 = *(v17 + 50);
    if (v17[440])
    {
      v80 = 8;
    }

    else
    {
      v80 = 0;
    }

    if (v70)
    {
      v80 |= 2u;
    }

    if (v17[443])
    {
      v81 = v80 | 0x10;
    }

    else
    {
      v81 = v80;
    }

    v334 = v81;
    if (v17[397])
    {
      v336 = 0;
      v337 = 0;
      v82 = 0;
      v339 = 0;
      v83 = 0;
      v84 = *(v17 + 50);
      v85 = *(v17 + 50);
      v86 = v17[396];
    }

    else
    {
      v339 = [a4 maxVertexBufferBindCount];
      v337 = [a4 maxFragmentBufferBindCount];
      v336 = [a4 maxObjectBufferBindCount];
      v82 = [a4 maxMeshBufferBindCount];
      v86 = v17[396];
      v85 = *(v17 + 100);
      v84 = v85;
      v83 = 8 * v82;
    }

    v87 = v75 + v340;
    v88 = v75 + v340 + v78;
    if (v86)
    {
      v89 = 28;
    }

    else
    {
      v89 = 84;
    }

    if (v85)
    {
      v90 = *(v17 + 50);
      v84 = v90;
      v91 = (v90 >> 9) & 1 | ((v90 & 0x400) >> 10);
      v92 = HIDWORD(v90);
      if ((v90 & 0x400) != 0)
      {
        LOBYTE(v92) = BYTE5(v90);
      }

      v93 = 8 * v92;
      if ((v86 & ((v90 & 0x58) != 0)) != 0)
      {
        v94 = 4;
      }

      else
      {
        v94 = 0;
      }

      v95 = (((24 * BYTE5(v90)) | 4) & ((v90 << 21) >> 31)) + ((2 * v90) & 8) + ((4 * v90) & 8) + 8 * (v90 & 1) + v94 + 8 * v91;
      if (v91)
      {
        v96 = v93;
      }

      else
      {
        v96 = 0;
      }

      v89 += v95 + v96 + 4;
      v97 = v90 == 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = v88 + 4;
    if (v86)
    {
      v99 = 116;
    }

    else
    {
      v99 = 156;
    }

    if (v86)
    {
      v100 = -1;
      v101 = -1;
      v102 = -1;
    }

    else
    {
      if (v17[445])
      {
        v103 = 20;
      }

      else
      {
        v103 = 0;
      }

      if (v17[397])
      {
        v100 = 78;
      }

      else
      {
        v100 = 98;
      }

      v102 = v100 + v103;
      if (v17[397])
      {
        v101 = 106;
      }

      else
      {
        v101 = 126;
      }
    }

    v104 = (v99 + 63) & 0x1C0;
    v105 = v17[443];
    if (v17[443])
    {
      v106 = v99;
    }

    else
    {
      v106 = -1;
    }

    if (v17[443])
    {
      v107 = v101;
    }

    else
    {
      v107 = -1;
    }

    if (v17[443])
    {
      v108 = v100;
    }

    else
    {
      v108 = -1;
    }

    if (v17[440])
    {
      v109 = v99;
    }

    else
    {
      v109 = -1;
    }

    v315 = v109;
    if (!v17[440])
    {
      v102 = -1;
    }

    v317 = v102;
    v318 = v107;
    v110 = v98 + v98 * a5;
    v111 = v104 * a5;
    v319 = (v110 + v89 * a5 + 443) & 0xFFFFFFC0;
    if (v17[440])
    {
      v112 = v319 + v104 * a5;
    }

    else
    {
      v112 = -1;
    }

    if (v17[440])
    {
      v113 = (v99 + 63) & 0x1C0;
    }

    else
    {
      v113 = -1;
    }

    v320 = v113;
    if (v17[440])
    {
      v114 = v104 * a5;
    }

    else
    {
      v114 = 0;
    }

    v115 = v319 + v104 * a5 + v114;
    if (v105 == 1)
    {
      v314 = v115;
      v316 = v115 + v111;
      v115 += v111 + v111;
      v322 = (v99 + 63) & 0x1C0;
      if ((v17[397] & 1) == 0)
      {
LABEL_199:
        v116 = 8 * v339;
        if (v17[440])
        {
          v117 = v115;
        }

        else
        {
          v117 = -1;
        }

        if (!v17[440])
        {
          v116 = -1;
        }

        HIDWORD(v312) = v116;
        v313 = v117;
        if (v17[440])
        {
          v118 = 8 * v339 * a5;
        }

        else
        {
          v118 = 0;
        }

        v119 = v115 + v118;
        if (v17[443])
        {
          HIDWORD(v311) = 8 * v336;
          LODWORD(v321) = v115 + v118;
          HIDWORD(v321) = v119 + 8 * v336 * a5;
          v119 = HIDWORD(v321) + v83 * a5;
        }

        else
        {
          v321 = -1;
          HIDWORD(v311) = -1;
          v83 = -1;
        }

        LODWORD(v312) = v119;
        LODWORD(v311) = 8 * v337;
        v115 = v119 + 8 * v337 * a5;
LABEL_213:
        v120 = *(v17 + 1);
        v121 = 152 - v120;
        v330 = v79;
        v329 = v88;
        v328 = v82;
        v326 = v87;
        v327 = v83;
        v324 = v108;
        v325 = v89;
        v323 = v106;
        if (v17[440])
        {
          LODWORD(v122) = v115 - v120;
          HIDWORD(v122) = 152 - v120;
          v123 = v115 + v121 * a5;
          if (v86)
          {
            v120 = *(v17 + 1);
            v121 = 152 - v120;
            if (v17[443])
            {
              v310 = v123 - v120;
              v124 = v121 * a5;
              v125 = v121 * a5 + v123;
              v309 = v125 - v120;
              v126 = v125 + v121 * a5;
LABEL_219:
              v307 = v121;
              v308 = v126 - v120;
              v129 = v124 + v126;
              v128 = -1;
              v130 = -1;
              v306 = -1;
LABEL_227:
              v304 = -1;
              v305 = -1;
              v301 = -1;
LABEL_232:
              v299 = v130;
              if (v17[440])
              {
                v136 = v129;
              }

              else
              {
                v136 = -1;
              }

              if (v17[440])
              {
                v137 = 16;
              }

              else
              {
                v137 = -1;
              }

              if (v17[440])
              {
                v138 = 16 * a5;
              }

              else
              {
                v138 = 0;
              }

              v139 = v129 + v138;
              v296 = v137;
              v297 = v136;
              v140 = v99;
              v141 = v98;
              if (v97)
              {
                v302 = -1;
                v303 = -1;
              }

              else
              {
                v302 = v139;
                v303 = (v17[405] << 6) + 16 * v17[404] + 60;
                v139 += v303 * a5;
              }

              if ((v84 & 2) != 0)
              {
                v142 = v139;
              }

              else
              {
                v142 = -1;
              }

              if ((v84 & 2) != 0)
              {
                v143 = 12;
              }

              else
              {
                v143 = -1;
              }

              v144 = v139 + ((v84 << 30 >> 31) & (12 * a5));
              v145 = 8 * a5;
              if ((v84 & 4) != 0)
              {
                v146 = v144;
              }

              else
              {
                v146 = -1;
              }

              if ((v84 & 4) != 0)
              {
                v147 = 8;
              }

              else
              {
                v147 = -1;
              }

              v148 = v144 + (v145 & (v84 << 29 >> 31));
              if ((v84 & 0x600) != 0)
              {
                v149 = 16 * v17[404];
                v150 = v148;
                v148 += v149 * a5;
              }

              else
              {
                v150 = -1;
                v149 = -1;
              }

              v151 = (4 * v331) | (2 * v341);
              v152 = v110 + 380;
              if (v17[443])
              {
                v153 = v148;
              }

              else
              {
                v153 = -1;
              }

              if (v17[443])
              {
                v154 = 52;
              }

              else
              {
                v154 = -1;
              }

              if (v17[443])
              {
                v155 = 52 * a5;
              }

              else
              {
                v155 = 0;
              }

              v156 = v148 + v155;
              v338 = a3;
              v332 = v147;
              v300 = v150;
              v298 = v146;
              v157 = v142;
              v158 = v104;
              v159 = v100;
              if (v17[445] == 1)
              {
                v160 = (v156 + 7) & 0xFFFFFFF8;
                v161 = 4 * v339;
                v156 = v160 + 4 * v339 * a5;
              }

              else
              {
                v160 = -1;
                v161 = -1;
              }

              v162 = v151 | (8 * v333);
              if (v17[442])
              {
                v163 = v156;
              }

              else
              {
                v163 = -1;
              }

              if (v17[442])
              {
                v164 = 8;
              }

              else
              {
                v164 = -1;
              }

              if (!v17[442])
              {
                v145 = 0;
              }

              v165 = v156 + v145;
              v166 = v156 + v145 + 16 * a5;
              if (v17[443])
              {
                v167 = *(v17 + 108);
                v168 = 4 * v167;
                v169 = 4 * v167 + 4;
                v170 = v166 + v169 * a5;
                v171 = v166;
                v166 = v170 + 4 * v167 * a5;
              }

              else
              {
                v167 = 0;
                v171 = -1;
                v169 = -1;
                v170 = -1;
                v168 = -1;
              }

              *(v17 + 4) = v162;
              *(v17 + 6) = v339;
              *(v17 + 7) = v337;
              *(v17 + 8) = v140;
              *(v17 + 9) = v315;
              *(v17 + 10) = v159;
              *(v17 + 11) = v317;
              *(v17 + 22) = v334;
              *(v17 + 24) = v336;
              *(v17 + 26) = v318;
              *(v17 + 27) = v167;
              *(v17 + 28) = v328;
              *(v17 + 32) = v340;
              *(v17 + 33) = v326;
              *(v17 + 36) = v141;
              *(v17 + 37) = v152;
              *(v17 + 38) = v325;
              *(v17 + 39) = v319;
              *(v17 + 40) = v158;
              *(v17 + 41) = v312;
              *(v17 + 42) = v311;
              *(v17 + 43) = v112;
              *(v17 + 44) = v320;
              *(v17 + 45) = v313;
              *(v17 + 46) = HIDWORD(v312);
              *(v17 + 47) = v314;
              *(v17 + 50) = HIDWORD(v311);
              *(v17 + 51) = v316;
              *(v17 + 54) = v327;
              *(v17 + 57) = v310;
              *(v17 + 59) = v309;
              *(v17 + 61) = v308;
              *(v17 + 62) = v121;
              *(v17 + 65) = v306;
              *(v17 + 67) = v304;
              *(v17 + 69) = v301;
              *(v17 + 70) = v299;
              *(v17 + 71) = v297;
              *(v17 + 72) = v296;
              if (v335 <= 3)
              {
                v172 = 3;
              }

              else
              {
                v172 = v335;
              }

              LODWORD(v173) = (v172 << 8) | 0x80;
              if (v166 <= v173)
              {
                v173 = v173;
              }

              else
              {
                v173 = v166;
              }

              *(v17 + 1) = v173;
              *(v17 + 5) = a5;
              *(v17 + 3) = 0u;
              *(v17 + 4) = 0u;
              *(v17 + 10) = 0;
              *(v17 + 23) = 0;
              *(v17 + 25) = v323;
              *(v17 + 29) = v323;
              *(v17 + 30) = v324;
              *(v17 + 31) = 4;
              *(v17 + 34) = v329;
              *(v17 + 35) = 380;
              *(v17 + 48) = v322;
              *(v17 + 49) = v321;
              *(v17 + 52) = v322;
              *(v17 + 53) = HIDWORD(v321);
              *(v17 + 220) = v122;
              *(v17 + 58) = v307;
              *(v17 + 60) = v307;
              *(v17 + 252) = v128;
              *(v17 + 66) = v305;
              *(v17 + 68) = v305;
              *(v17 + 73) = v153;
              *(v17 + 74) = v154;
              *(v17 + 75) = v157;
              *(v17 + 76) = v143;
              *(v17 + 77) = v298;
              *(v17 + 78) = v332;
              *(v17 + 79) = v300;
              *(v17 + 80) = v149;
              *(v17 + 81) = v302;
              *(v17 + 82) = v303;
              *(v17 + 332) = v330;
              *(v17 + 85) = v160;
              *(v17 + 86) = v161;
              *(v17 + 87) = v163;
              *(v17 + 88) = v164;
              *(v17 + 356) = 0;
              *(v17 + 91) = v165;
              *(v17 + 92) = 16;
              *(v17 + 372) = 0;
              *(v17 + 95) = v171;
              *(v17 + 96) = v169;
              *(v17 + 97) = v170;
              *(v17 + 98) = v168;
              if (v17[396] == 1)
              {
                *(v17 + 22) |= 1u;
              }

              v65 = 8;
              a3 = v338;
              v64 = v343;
              goto LABEL_291;
            }

            v308 = v123 - v120;
            v129 = v123 + v121 * a5;
            v128 = -1;
            v130 = -1;
            v310 = -1;
LABEL_226:
            v306 = -1;
            v307 = -1;
            v309 = -1;
            goto LABEL_227;
          }

          v128 = v123 | 0x2800000000;
          v131 = v123 + 40 * a5;
          v120 = *(v17 + 1);
          v121 = 152 - v120;
          if (v17[443])
          {
            v310 = v131 - v120;
            v124 = v121 * a5;
            v132 = v121 * a5 + v131;
            v309 = v132 - v120;
            v126 = v132 + v121 * a5;
LABEL_222:
            v133 = v126;
            v134 = 40 * a5;
            v304 = v126 + 40 * a5;
            v135 = v126 + v134 + v134;
            v307 = v121;
            v308 = v135 - v120;
            v129 = v124 + v135;
            v305 = 40;
            v306 = v133;
LABEL_231:
            v301 = v129;
            v129 += v134;
            v130 = 40;
            goto LABEL_232;
          }

          v308 = v131 - v120;
          v129 = v131 + v121 * a5;
        }

        else
        {
          if (v105)
          {
            v310 = v115 - v120;
            v124 = v121 * a5;
            v127 = v121 * a5 + v115;
            v309 = v127 - v120;
            v126 = v127 + v121 * a5;
            v128 = -1;
            v122 = -1;
            if (v86)
            {
              goto LABEL_219;
            }

            goto LABEL_222;
          }

          v308 = v115 - v120;
          v129 = v115 + v121 * a5;
          v122 = -1;
          if (v86)
          {
            v130 = -1;
            v310 = -1;
            v128 = -1;
            goto LABEL_226;
          }

          v128 = -1;
        }

        v134 = 40 * a5;
        v309 = -1;
        v310 = -1;
        v306 = -1;
        v307 = -1;
        v304 = -1;
        v305 = -1;
        goto LABEL_231;
      }
    }

    else
    {
      v314 = -1;
      v322 = -1;
      v316 = -1;
      if ((v17[397] & 1) == 0)
      {
        goto LABEL_199;
      }
    }

    v311 = 0;
    v312 = 0;
    v313 = 0;
    v321 = 0;
    v83 = 0;
    goto LABEL_213;
  }

  self->_type = 0;
  v13 = malloc_type_calloc(0xA8uLL, 1uLL, 0x1020040ECB2F23BuLL);
  self->_impl.render = v13;
  if (!v13)
  {
    goto LABEL_301;
  }

  v14 = v13;
  *v13 = a5;
  v13[27] = v345 == 0;
  *(v13 + 17) = 0;
  *(v13 + 18) = 0;
  v13[152] = 0;
  v13[24] = 0;
  if ([a4 inheritPipelineState])
  {
    v14[24] = 1;
  }

  v14[25] = 0;
  if ([a4 inheritBuffers])
  {
    v14[25] = 1;
  }

  v14[26] = 0;
  if ([a4 supportRayTracing])
  {
    v14[26] = 1;
  }

  if ([a4 supportDynamicAttributeStride])
  {
    v15 = v14[25] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  v14[160] = v15 & 1;
  *(v14 + 4) = 0x100000000;
  v31 = [a4 commandTypes];
  v32 = v14[24];
  v33 = v14[25];
  v34 = v14[160];
  if (v33)
  {
    v35 = 0;
    v36 = v14[160];
    v37 = v14[24];
  }

  else
  {
    v35 = [a4 maxKernelBufferBindCount];
    v37 = v14[24];
    v36 = v14[160];
  }

  v38 = (((2 * v32) | (4 * v33)) | (8 * v34)) & 0xE | 1;
  v39 = 48 * a5 + 139;
  v40 = v39 & 0xFFFFFFE0;
  v41 = ((v39 | 0x18) + 8 * v35 * a5) & 0xFFFFFFE0;
  v42 = *(v14 + 1);
  v43 = 280 - v42;
  v44 = v41 - v42;
  v45 = v41 + (280 - v42) * a5;
  v46 = ((v45 + 31) & 0xFFFFFFE0) + 24 * a5;
  if (v37)
  {
    v47 = -1;
  }

  else
  {
    v47 = (v45 + 31) & 0xFFFFFFE0;
  }

  if (v37)
  {
    v48 = -1;
  }

  else
  {
    v48 = 24;
  }

  if (v37)
  {
    v46 = v45;
  }

  v49 = (v46 + 7) & 0xFFFFFFF8;
  v50 = v49 + 4 * v35 * a5;
  if (v36)
  {
    v51 = 4 * v35;
  }

  else
  {
    v49 = -1;
    v51 = -1;
  }

  if (v36)
  {
    v46 = v50;
  }

  v52 = (v46 + 63) & 0xFFFFFFC0;
  v53 = v52 + 192 * a5;
  v54 = 8 * a5;
  v55 = v37 & 1;
  if (v37)
  {
    v56 = 0;
  }

  else
  {
    v56 = v53 + 152 * a5;
  }

  if (v55)
  {
    v57 = 0;
  }

  else
  {
    v57 = 8;
  }

  if (v55)
  {
    v54 = 0;
  }

  v58 = (v53 + 152 * a5 + v54 + 31) & 0xFFFFFFE0;
  v59 = v58 + 32 * a5;
  v60 = (48 * a5 + 108) + 512;
  if (v60 <= (v59 + a5))
  {
    v60 = (v59 + a5);
  }

  *(v14 + 2) = v60;
  if (v55)
  {
    v61 = -1;
  }

  else
  {
    if (v36)
    {
      v62 = 20;
    }

    else
    {
      v62 = 0;
    }

    if (v14[25])
    {
      v63 = 86;
    }

    else
    {
      v63 = 106;
    }

    v61 = v63 + v62;
  }

  v64 = v343;
  *(v14 + 7) = v38;
  *(v14 + 8) = a5;
  *(v14 + 9) = v35;
  *(v14 + 10) = v31;
  *(v14 + 11) = v61;
  *(v14 + 6) = 0x680000002CLL;
  *(v14 + 14) = 48;
  *(v14 + 15) = v40;
  *(v14 + 16) = 8 * v35;
  *(v14 + 17) = v44;
  *(v14 + 18) = v43;
  *(v14 + 19) = v47;
  *(v14 + 20) = v48;
  *(v14 + 21) = v52;
  *(v14 + 22) = 192;
  *(v14 + 23) = v53;
  *(v14 + 24) = 152;
  *(v14 + 25) = v56;
  *(v14 + 26) = v57;
  *(v14 + 27) = v58;
  *(v14 + 28) = 32;
  *(v14 + 29) = v59;
  *(v14 + 30) = 1;
  *(v14 + 31) = v49;
  v65 = 16;
  *(v14 + 32) = v51;
LABEL_291:
  v174 = (*(self->_impl.render + v65) + *MEMORY[0x29EDCA6D0] - 1) & -*MEMORY[0x29EDCA6D0];
  v347[1] = 0x100010001;
  v349 = (v345 >> 8) ^ 0x8000;
  v347[0] = 0;
  v348 = 16777473;
  v353 = 0u;
  v350 = 0u;
  v351 = 0u;
  v352 = 0u;
  *&v353 = v174;
  v354 = ((16 * v64) & 0x8000000 | (v345 << 7)) ^ 0x48000000;
  v355 = 0;
  v175 = [(IOGPUMetalResource *)[AGXG18PFamilyBuffer alloc] initWithDevice:a3 options:v64 | 0x20000 args:v347 argsSize:104];
  self->_buffer = v175;
  if (!v175)
  {
    goto LABEL_301;
  }

  v176 = *MEMORY[0x29EDC5638];
  *(&v175->super.super.super.super.super.super._labelLock._os_unfair_lock_opaque + v176) = *(&v175->super.super.super.super.super.super._labelLock._os_unfair_lock_opaque + v176) & 0x1FFFFFFFFFFFFFFFLL | 0x2000000000000000;
  if (v342)
  {
    v177 = malloc_type_calloc(0x10uLL, 1uLL, 0xA0040BD48D6D6uLL);
    self->_encoder.render = v177;
    if (v177)
    {
      *v177 = self->_buffer;
      v177[1] = self->_impl.render;
      goto LABEL_297;
    }

LABEL_301:

    return 0;
  }

  v177 = malloc_type_calloc(0x20uLL, 1uLL, 0xA0040E2D9BA3DuLL);
  self->_encoder.render = v177;
  if (!v177)
  {
    goto LABEL_301;
  }

  buffer = self->_buffer;
  *v177 = buffer;
  v177[1] = self->_impl.render;
  v177[2] = buffer;
  v177[3] = self->_impl.render;
LABEL_297:
  self->_encoder.render = v177;
  v179 = self->_buffer;
  v346.receiver = self;
  v346.super_class = AGXG18PFamilyIndirectCommandBuffer;
  v180 = [(IOGPUMetalIndirectCommandBuffer *)&v346 initWithBuffer:v179 descriptor:a4 maxCommandCount:a5];
  v181 = v180;
  if (!v180)
  {
    return v181;
  }

  *(&v180->_buffer->super.super.super.super.super.super._label + v176) = (*(&v180->_buffer->super.super.super._res.var0 + v176) + ((v345 << 13) ^ 0x1000000000));
  *(&v180->_buffer->super.super.super.super.super._allocationType + v176) = *&v180->_buffer->super.super.super._anon_50[v176 + 48];
  v182 = v180 + v176;
  *v182 = 0;
  *(v182 + 1) = *(&v180->_buffer->super.super.super.super.super.super._label + v176);
  *(v182 + 3) = *(&v180->_buffer->super.super.super.super.super._allocationType + v176);
  *(v182 + 2) = [(IOGPUMetalBuffer *)v180->_buffer length]& 0xFFFFFFFFFFFFFFLL | (v182[23] << 56);
  v183 = v181->_buffer + v176;
  v184 = *(v183 + 2);
  *(v182 + 6) = *(v183 + 6);
  *(v182 + 2) = v184;
  type = v181->_type;
  if (!type)
  {
    render = v181->_impl.render;
    v188 = v181->_buffer;
    v189 = [(IOGPUMetalBuffer *)v188 contents];
    v190 = *(render + 60);
    v191 = *(render + 44);
    *v189 = *(render + 28);
    *(v189 + 16) = v191;
    *(v189 + 32) = v190;
    v192 = *(render + 92);
    v193 = *(render + 108);
    v194 = *(render + 76);
    *(v189 + 96) = *(render + 124);
    *(v189 + 64) = v192;
    *(v189 + 80) = v193;
    *(v189 + 48) = v194;
    v195 = *(&v188->super.super.super.super.super.super._label + v176);
    *&v358[12] = 0u;
    v357 = 0u;
    *v358 = 0u;
    *&v358[12] = 0x3000000A5;
    v360 = 0;
    v359 = 0;
    v196 = (v189 + *(render + 84));
    v197 = *render * *(render + 88);
    v198 = v197 & 0xFFFFFFFC;
    v199 = v197 & 3;
    __pattern4 = 0;
    memset_pattern4(v196, &__pattern4, v198);
    if (v199)
    {
      *&v196[v198] = 0;
    }

    if (!*render)
    {
LABEL_316:
      AGX::IndirectComputeCommandBufferGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetCommands(render, v188, 0, *render);
      v208.render = v181->_impl;
      v209 = v181->_buffer;
      AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(&v357, (*(a3 + 106) + 12584), [a4 resourceIndex]);
      v210 = *(v208.render + 17);
      *(v208.render + 17) = v357;
      *&v357 = v210;
      v211 = *(v208.render + 18);
      *(v208.render + 18) = *(&v357 + 1);
      *(&v357 + 1) = v211;
      v212 = *(v208.render + 152);
      *(v208.render + 152) = v358[0];
      v358[0] = v212;
      if (v210 && (v212 & 1) == 0)
      {
        os_unfair_lock_lock(v211 + 188);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(&v357 + 1) + 696, v357, v357 + DWORD1(v357) - 1);
        os_unfair_lock_unlock(v211 + 188);
      }

      if (v209)
      {
        v213 = *(&v209->super.super.super.super.super.super._label + v176);
      }

      else
      {
        v213 = 27984896;
      }

      v214 = *(v208.render + 18);
      os_unfair_lock_lock(v214 + 188);
      v215 = *(v208.render + 18);
      v216 = *(v208.render + 34);
      os_unfair_lock_assert_owner(v215 + 188);
      *(*(*&v215[6 * v215[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + v176 + 24) + 8 * v216) = v213;
      os_unfair_lock_unlock(v214 + 188);
      if (v181->_type != 1)
      {
        return v181;
      }

      goto LABEL_323;
    }

    v204 = 0;
    while (1)
    {
      if (*(render + 25))
      {
        v206 = 0;
        if (*(render + 24))
        {
          goto LABEL_313;
        }
      }

      else
      {
        v206 = v195 + (*(render + 60) + *(render + 64) * v204);
        if (*(render + 24))
        {
LABEL_313:
          v207 = 0;
          goto LABEL_314;
        }
      }

      v207 = v195 + (*(render + 76) + *(render + 80) * v204);
LABEL_314:
      if (*(render + 160) == 1)
      {
        v205 = v195 + (*(render + 124) + *(render + 128) * v204);
      }

      else
      {
        v205 = 0;
      }

      AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(0, v196, v206, v195 + (*(render + 68) + *(render + 72) * v204), v207, 0, 0, v205, v200, v201, v202, v203, &v357, 0xFFFFFFFFLL);
      v196 += *(render + 88);
      if (++v204 >= *render)
      {
        goto LABEL_316;
      }
    }
  }

  if (type != 1)
  {
    return v181;
  }

LABEL_323:
  v217 = v181->_impl.render;
  v218 = v181->_buffer;
  v219 = [(IOGPUMetalBuffer *)v218 contents];
  memcpy([(IOGPUMetalBuffer *)v218 contents], v217 + 4, 0x17CuLL);
  v220 = *v217 * v217[36];
  v221 = (v219 + v217[35]);
  LODWORD(v357) = 0x20000000;
  memset_pattern4(v221, &v357, v220);
  *&v221[v220] = 671088640;
  v344 = v218;
  v222 = *(&v218->super.super.super.super.super.super._label + v176);
  if (*(v217 + 440) == 1)
  {
    v223 = (v219 + v217[43]);
    v224 = *v217 * v217[44];
    v225 = v224 & 0xFFFFFFFFFFFFFFFCLL;
    v226 = v224 & 3;
    LODWORD(v357) = 0;
    memset_pattern4(v223, &v357, v224 & 0xFFFFFFFFFFFFFFFCLL);
    if (v226)
    {
      *&v223[v225] = 0;
    }
  }

  if (*(v217 + 443) == 1)
  {
    v227 = (v219 + v217[47]);
    v228 = *v217 * v217[48];
    v229 = v228 & 0xFFFFFFFFFFFFFFFCLL;
    v230 = v228 & 3;
    LODWORD(v357) = 0;
    memset_pattern4(v227, &v357, v228 & 0xFFFFFFFFFFFFFFFCLL);
    if (v230)
    {
      *&v227[v229] = 0;
    }

    v231 = (v219 + v217[51]);
    v232 = *v217 * v217[52];
    v233 = v232 & 0xFFFFFFFFFFFFFFFCLL;
    v234 = v232 & 3;
    LODWORD(v357) = 0;
    memset_pattern4(v231, &v357, v232 & 0xFFFFFFFFFFFFFFFCLL);
    if (v234)
    {
      *&v231[v233] = 0;
    }
  }

  v235 = (v219 + v217[39]);
  v236 = *v217 * v217[40];
  v237 = v236 & 0xFFFFFFFFFFFFFFFCLL;
  v238 = v236 & 3;
  LODWORD(v357) = 0;
  memset_pattern4(v235, &v357, v236 & 0xFFFFFFFFFFFFFFFCLL);
  if (v238)
  {
    *&v235[v237] = 0;
  }

  if (!*v217)
  {
    goto LABEL_394;
  }

  v243 = 0;
  do
  {
    v246 = *(v217 + 396);
    if (*(v217 + 440) != 1)
    {
      goto LABEL_347;
    }

    if (*(v217 + 397))
    {
      v247 = 0;
      if (v246)
      {
        goto LABEL_342;
      }
    }

    else
    {
      v247 = v222 + v217[45] + v217[46] * v243;
      if (v246)
      {
LABEL_342:
        v248 = 0;
        goto LABEL_343;
      }
    }

    v248 = v222 + v217[63] + v217[64] * v243;
LABEL_343:
    if (*(v217 + 445) == 1)
    {
      v249 = v222 + v217[85] + v217[86] * v243;
    }

    else
    {
      v249 = 0;
    }

    AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v246, (v219 + v217[43] + v217[44] * v243), v247, v222 + v217[55] + v217[56] * v243, v248, 0, 0, v249, v239, v240, v241, v242, 0, 0xFFFFFFFFLL);
LABEL_347:
    if (*(v217 + 443) == 1)
    {
      v250 = 0;
      *&v358[12] = 0u;
      v357 = 0u;
      *v358 = 0u;
      *&v358[12] = 0x3000000A5;
      v360 = 0;
      v359 = 0;
      if ((*(v217 + 397) & 1) == 0)
      {
        v250 = v222 + v217[49] + v217[50] * v243;
      }

      if (v217[99])
      {
        v251 = 0;
      }

      else
      {
        v251 = v222 + v217[65] + v217[66] * v243;
      }

      AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v246, (v219 + v217[47] + v217[48] * v243), v250, v222 + v217[57] + v217[58] * v243, v251, 0, v222 + v217[97] + v217[98] * v243, 0, 0.0, v240, v241, v242, &v357, 0xFFFFFFFFLL);
      v256 = 0;
      if ((*(v217 + 397) & 1) == 0)
      {
        v256 = v222 + v217[53] + v217[54] * v243;
      }

      if (v217[99])
      {
        v257 = 0;
      }

      else
      {
        v257 = v222 + v217[67] + v217[68] * v243;
      }

      AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v246, (v219 + v217[51] + v217[52] * v243), v256, v222 + v217[59] + v217[60] * v243, v257, 0, 0, 0, v252, v253, v254, v255, 0, 0xFFFFFFFFLL);
    }

    if (*(v217 + 397))
    {
      v258 = 0;
    }

    else
    {
      v258 = v222 + v217[41] + v217[42] * v243;
    }

    if (v217[99])
    {
      v244 = 0;
    }

    else
    {
      v244 = v222 + v217[69] + v217[70] * v243;
    }

    AGX::IndirectExecutionCommonGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitABIStateLoadProgram(v246, (v219 + v217[39] + v217[40] * v243), v258, v222 + v217[61] + v217[62] * v243, v244, 0, 0, 0, v239, v240, v241, v242, 0, 0xFFFFFFFFLL);
    ++v243;
    LODWORD(v245) = *v217;
  }

  while (v243 < *v217);
  if (v217[99])
  {
    goto LABEL_368;
  }

  if (v245)
  {
    v259 = 0;
    v260 = vdup_n_s32(0x7200000u);
    do
    {
      v261 = (v219 + 28 + v217[37] + v217[38] * v259);
      *v261 = 0xFFFFFFFF00000002;
      v261[1] = v260;
      ++v259;
      LODWORD(v245) = *v217;
    }

    while (v259 < *v217);
LABEL_368:
    if (v217[100])
    {
      if (v245)
      {
        v262 = 0;
        p_label = &v344->super.super.super.super.super.super._label;
        do
        {
          v264 = v219 + v217[81] + v217[82] * v262;
          v265 = *(v217 + 50);
          if (*(v217 + 396))
          {
            v266 = ((v265 & 0x58) != 0) << 23;
          }

          else
          {
            v266 = 0;
          }

          *v264 = v265;
          *(v264 + 8) = (v265 << 8) & 0x400 | ((v265 & 3) << 7) & 0xCFFF | (((v265 >> 10) & 1) << 13) | (v265 | (v265 >> 1)) & 0x200 | ((((v265 >> 10) | (v265 >> 9)) & 1) << 12) | v266 | ((v265 >> 26) + 245760) & 0x3C000 | 2;
          *(v264 + 12) = 0uLL;
          *(v264 + 28) = 0uLL;
          *(v264 + 44) = 0uLL;
          v267 = *(v217 + 200);
          if ((v267 & 2) != 0)
          {
            v268 = v217[75] + v217[76] * v262;
            v269 = v219 + v268;
            *v269 = 0;
            *(v269 + 8) = 0;
            v270 = *(p_label + v176) + v268;
            *(v264 + 12) |= 0x20000u;
            *(v264 + 32) = (v270 >> 16) & 0xFFFF0000;
            *(v264 + 36) = v270 & 0xFFFFFFFC;
            v267 = *(v217 + 200);
          }

          if ((v267 & 4) != 0)
          {
            v271 = v217[77] + v217[78] * v262;
            *(v219 + v271) = 0x3F80000000000000;
            v272 = *(p_label + v176) + v271;
            *(v264 + 12) |= 0x1000000u;
            *(v264 + 48) = (v272 >> 16) & 0xFFFF0000;
            *(v264 + 52) = v272 & 0xFFFFFFFC;
          }

          ++v262;
          LODWORD(v245) = *v217;
        }

        while (v262 < *v217);
        goto LABEL_379;
      }
    }

    else
    {
LABEL_379:
      if (v245)
      {
        v273 = &v344->super.super.super.super.super.super._label;
        v274 = v219 + 56;
        v275 = v217[61];
        v276 = v217[62];
        if (*(v217 + 443) == 1)
        {
          v277 = v217[57];
          v278 = v217[58];
          v279 = v217[59];
          v280 = v217[60];
          if (v217[110])
          {
            v282 = v217[55];
            v281 = v217[56];
            v245 = v245;
            do
            {
              *(v274 + v282) = *(v273 + v176) + v282;
              *(v274 + v277) = *(v273 + v176) + v277;
              *(v274 + v279) = *(v273 + v176) + v279;
              *(v274 + v275) = *(v273 + v176) + v275;
              v275 += v276;
              v279 += v280;
              v277 += v278;
              v282 += v281;
              --v245;
            }

            while (v245);
          }

          else
          {
            v245 = v245;
            do
            {
              *(v274 + v277) = *(v273 + v176) + v277;
              *(v274 + v279) = *(v273 + v176) + v279;
              *(v274 + v275) = *(v273 + v176) + v275;
              v275 += v276;
              v279 += v280;
              v277 += v278;
              --v245;
            }

            while (v245);
          }
        }

        else if (v217[110])
        {
          v283 = v217[55];
          v284 = v217[56];
          v285 = v245;
          do
          {
            *(v274 + v283) = *(v273 + v176) + v283;
            *(v274 + v275) = *(v273 + v176) + v275;
            v275 += v276;
            v283 += v284;
            --v285;
          }

          while (v285);
        }

        else
        {
          v286 = v245;
          do
          {
            *(v274 + v275) = *(v273 + v176) + v275;
            v275 += v276;
            --v286;
          }

          while (v286);
        }
      }
    }
  }

LABEL_394:
  v287.render = v181->_impl;
  v288 = v181->_buffer;
  AGX::Mempool<32u,0u,true,0u,0u,unsigned long long>::RangeAllocation::RangeAllocation(&v357, (*(a3 + 106) + 12584), [a4 resourceIndex]);
  v289 = *(v287.render + 51);
  *(v287.render + 51) = v357;
  *&v357 = v289;
  v290 = *(v287.render + 52);
  *(v287.render + 52) = *(&v357 + 1);
  *(&v357 + 1) = v290;
  v291 = *(v287.render + 424);
  *(v287.render + 424) = v358[0];
  v358[0] = v291;
  if (v289 && (v291 & 1) == 0)
  {
    os_unfair_lock_lock(v290 + 188);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(&v357 + 1) + 696, v357, v357 + DWORD1(v357) - 1);
    os_unfair_lock_unlock(v290 + 188);
  }

  if (v288)
  {
    v292 = *(&v288->super.super.super.super.super.super._label + v176);
  }

  else
  {
    v292 = 27984896;
  }

  v293 = *(v287.render + 52);
  os_unfair_lock_lock(v293 + 188);
  v294 = *(v287.render + 52);
  v295 = *(v287.render + 102);
  os_unfair_lock_assert_owner(v294 + 188);
  *(*(*&v294[6 * v294[170]._os_unfair_lock_opaque + 4]._os_unfair_lock_opaque + v176 + 24) + 8 * v295) = v292;
  os_unfair_lock_unlock(v293 + 188);
  return v181;
}

@end