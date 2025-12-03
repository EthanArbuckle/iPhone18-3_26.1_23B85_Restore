@interface AGXG18PFamilyTextureViewPool
- (AGXG18PFamilyTextureViewPool)initWithDevice:(id)device descriptor:(id)descriptor error:(id *)error;
- (MTLResourceID)copyResourceViewsFromPool:(id)pool sourceRange:(_NSRange)range destinationIndex:(unint64_t)index;
- (MTLResourceID)setTextureView:(id)view atIndex:(unint64_t)index;
- (MTLResourceID)setTextureView:(id)view descriptor:(id)descriptor atIndex:(unint64_t)index;
- (MTLResourceID)setTextureViewFromBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row atIndex:(unint64_t)index;
- (void)dealloc;
@end

@implementation AGXG18PFamilyTextureViewPool

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    v4 = *(impl + 4);
    if (v4)
    {
      v5 = *(impl + 5);
      v6 = *(impl + 4);
      if (v5 != v4)
      {
        do
        {
          v7 = *(v5 - 8);
          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7, a2);
            std::__shared_weak_count::__release_weak(v7);
          }

          v5 -= 16;
        }

        while (v5 != v4);
        v6 = *(impl + 4);
      }

      *(impl + 5) = v4;
      operator delete(v6);
    }

    if (*(impl + 2) && (*(impl + 24) & 1) == 0)
    {
      v8 = *(impl + 2);
      os_unfair_lock_lock(v8 + 336);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(impl + 2) + 1288, *(impl + 2), *(impl + 2) + *(impl + 3) - 1);
      os_unfair_lock_unlock(v8 + 336);
    }

    MEMORY[0x29ED520D0](impl, 0x10A0C40977C737BLL);
  }

  v9.receiver = self;
  v9.super_class = AGXG18PFamilyTextureViewPool;
  [(_MTLResourceViewPool *)&v9 dealloc];
}

- (MTLResourceID)setTextureViewFromBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row atIndex:(unint64_t)index
{
  selfCopy = self;
  impl = self->_impl;
  if (!buffer || ([descriptor validateWithDevice:{objc_msgSend(buffer, "device")}] & 1) == 0)
  {
    v18 = *&(*impl)[212]._os_unfair_lock_opaque;
    v19 = v18[1031];
    v166 = v18[1030];
    v167 = v19;
    v20 = v18[1033];
    *v168 = v18[1032];
    v169 = v20;
    v21 = impl[2];
    os_unfair_lock_lock(v21 + 336);
    v22 = impl[2];
    v23 = *(impl + 2) + index;
    if (atomic_load_explicit(&v22[293], memory_order_acquire))
    {
      v24 = (*&v22[316]._os_unfair_lock_opaque + 24 * (v23 >> 15));
      v25 = v24[1];
      v26 = v24[2];
      v27 = 32 * (v23 & 0x7FFF);
      v28 = (*v24 + v27);
      v29 = (v25 + v27);
      v30 = (v26 + 8 * (v23 & 0x7FFF));
    }

    else
    {
      os_unfair_lock_assert_owner(v22 + 336);
      v31 = &v22[10 * v22[292]._os_unfair_lock_opaque];
      v32 = *MEMORY[0x29EDC5638];
      v33 = 32 * v23;
      v28 = (*(*&v31[4]._os_unfair_lock_opaque + v32 + 24) + v33);
      v29 = (*(*&v31[6]._os_unfair_lock_opaque + v32 + 24) + v33);
      v30 = (*(*&v31[8]._os_unfair_lock_opaque + v32 + 24) + 8 * v23);
    }

    *v28 = v166;
    v28[1] = v167;
    *v29 = *v168;
    v29[1] = v169;
    *v30 = 0;
    v34 = v21 + 336;
    goto LABEL_9;
  }

  indexCopy = index;
  descriptorPrivate = [descriptor descriptorPrivate];
  isTwiddledOnlyFormat = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isTwiddledOnlyFormat(descriptorPrivate->i64[1]);
  iosurface = [buffer iosurface];
  placementSparsePageSize = [buffer placementSparsePageSize];
  if ((placementSparsePageSize - 101) > 2)
  {
    v163 = 0;
  }

  else
  {
    v163 = dword_29D2F7A60[placementSparsePageSize - 101];
  }

  v36 = 0;
  v37 = descriptorPrivate[6].i64[0];
  v162 = selfCopy;
  if (v37 == 2)
  {
    LODWORD(v38) = 0;
    v36 = 2;
  }

  else
  {
    if (v37 == 1)
    {
      v36 = 9;
    }

    v38 = descriptorPrivate[9].i64[1];
    if (v38 != 3 && v38 != 2 && v38 != 1)
    {
      LODWORD(v38) = 0;
    }
  }

  v39 = v36 & 0xFB;
  if (!descriptorPrivate[8].i8[0])
  {
    v39 = 2;
  }

  v40 = descriptorPrivate->u64[1];
  v41 = v40 - 1;
  if ((v40 - 1) > 0x289)
  {
    v42 = &texFormatUnsupported;
  }

  else
  {
    v42 = *(&off_29F342380 + v41);
  }

  v43 = v39 | ((*(v42 + 60) & 0xC) != 0);
  v44 = v39 & 0xEB | ((*(v42 + 60) & 0xC) != 0);
  v45 = descriptorPrivate[11].u32[0];
  if (v45 == 2)
  {
    v46 = v43 | 0x10;
    if (!(v39 & 2 | v38))
    {
      v44 = v46;
    }
  }

  v47 = (v38 << 8) | (v45 << 32);
  v48 = descriptorPrivate[10].i64[1] - 1;
  offsetCopy = offset;
  if (v48 > 9)
  {
    v161 = 0;
  }

  else
  {
    v161 = dword_29D2F7A6C[v48];
  }

  v49 = v47 & 0xFFFFFFFFFFFFFF00 | v44;
  v50 = *&(*impl)[212]._os_unfair_lock_opaque;
  v51 = descriptorPrivate->i64[0];
  v52 = descriptorPrivate[13].i64[0];
  if ((descriptorPrivate[4].i64[1] - 1) < 4)
  {
    v53 = descriptorPrivate[4].i32[2];
  }

  else
  {
    v53 = 0;
  }

  v54 = descriptorPrivate[5].i32[1];
  v55 = vmovn_s64(descriptorPrivate[1]);
  v56 = descriptorPrivate[2].u32[0];
  v57 = descriptorPrivate[2].u32[2];
  v58 = descriptorPrivate[3].i32[0];
  v59 = descriptorPrivate[3].i32[2];
  v60 = descriptorPrivate[6].i64[1];
  v61 = descriptorPrivate[7].i64[0] & 0xF;
  v62 = &texFormatUnsupported;
  if (v41 <= 0x289)
  {
    v62 = *(&off_29F342380 + v41);
  }

  v63 = *(v62 + 16);
  v64 = descriptorPrivate[11].i64[1] != 0;
  v65 = v62[2];
  v66 = *(v62 + 10);
  *&v166 = &unk_2A23FA388;
  *(&v166 + 1) = v50;
  LODWORD(v167) = 0;
  *(&v167 + 1) = v51;
  v168[0] = v40;
  if (((v65 == 4) & (v66 < 0x33) & (0x4000800000200uLL >> v66)) != 0)
  {
    v67 = 0x40000000;
  }

  else
  {
    v67 = 0;
  }

  v168[1] = v60;
  *&v169 = v52;
  v68 = v67 | (((v63 & 0x38000) == 0x8000) << 31);
  *(&v169 + 1) = v49;
  v171 = 0;
  v69 = 1 << -__clz(v58 - 1);
  v172 = 0;
  v173 = v59 - 1;
  v174 = vmax_u32(v55, 0x100000001);
  if (v56 <= 1)
  {
    v70 = 1;
  }

  else
  {
    v70 = v56;
  }

  v175 = v70;
  v176 = v59;
  v177 = v68;
  v178 = v57;
  v179 = v69;
  v180 = 0x100000000;
  v181 = 0;
  v182 = v55;
  v183 = v56;
  v184 = v57;
  v185 = 0;
  rowCopy = row;
  v187 = v61;
  v188 = 0;
  v189 = 0;
  v190 = iosurface;
  v191 = v53;
  v192 = v54;
  v193 = 0;
  v194 = v62;
  v195 = 0;
  v197 = 0;
  v198 = v163;
  v200 = v64;
  v201 = 0;
  v202 = v163;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0;
  v207 = 0;
  v208 = 0;
  if (v163)
  {
    v71 = 1;
  }

  else
  {
    v71 = 2;
  }

  v212 = 0uLL;
  v213 = 0uLL;
  v214 = 0uLL;
  v215 = v59;
  LOWORD(v216) = 0;
  BYTE2(v216) = 0;
  v217 = v49;
  v218 = isTwiddledOnlyFormat;
  v219 = 1;
  v211 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Texture(AGX::HAL300::Device *,eAGXTextureMetadataType,AGXHardwareTextureMemoryOrder,AGX::TextureFormat const*,MTLTextureType,MTLPixelFormat,unsigned long,MTLStorageMode,AGXTextureCompressionSettings,eAGXColorSpaceConversion,eAGXTextureRotation,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned long,unsigned int,BOOL,MTLCPUCacheMode,unsigned int,eAGXTextureCoordType,__IOSurface *,unsigned int,unsigned int,__IOSurface *,unsigned int,unsigned int,float,BOOL,BOOL,BOOL)::iosurface_alignment;
  if (!AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Texture(AGX::HAL300::Device *,eAGXTextureMetadataType,AGXHardwareTextureMemoryOrder,AGX::TextureFormat const*,MTLTextureType,MTLPixelFormat,unsigned long,MTLStorageMode,AGXTextureCompressionSettings,eAGXColorSpaceConversion,eAGXTextureRotation,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned long,unsigned int,BOOL,MTLCPUCacheMode,unsigned int,eAGXTextureCoordType,__IOSurface *,unsigned int,unsigned int,__IOSurface *,unsigned int,unsigned int,float,BOOL,BOOL,BOOL)::iosurface_alignment)
  {
    v160 = v55;
    v76 = MEMORY[0x29ED51AC0](*MEMORY[0x29EDBB178], 1);
    v55 = v160;
    v211 = v76;
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Texture(AGX::HAL300::Device *,eAGXTextureMetadataType,AGXHardwareTextureMemoryOrder,AGX::TextureFormat const*,MTLTextureType,MTLPixelFormat,unsigned long,MTLStorageMode,AGXTextureCompressionSettings,eAGXColorSpaceConversion,eAGXTextureRotation,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned long,unsigned int,BOOL,MTLCPUCacheMode,unsigned int,eAGXTextureCoordType,__IOSurface *,unsigned int,unsigned int,__IOSurface *,unsigned int,unsigned int,float,BOOL,BOOL,BOOL)::iosurface_alignment = v76;
    if (v57 >= 2)
    {
      goto LABEL_47;
    }

LABEL_56:
    v75 = 1;
    goto LABEL_57;
  }

  if (v57 < 2)
  {
    goto LABEL_56;
  }

LABEL_47:
  v72 = v55.i32[0];
  if (v55.i32[0] <= v55.i32[1])
  {
    v72 = v55.u32[1];
  }

  if (v72 <= v56)
  {
    v73 = v56;
  }

  else
  {
    v73 = v72;
  }

  v74 = 32 - __clz(v73);
  if (v73)
  {
    v75 = v74;
  }

  else
  {
    v75 = 0;
  }

LABEL_57:
  v77 = offsetCopy;
  v170 = v75;
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::initTextureLayout(&v166, v71);
  if (v216 == 3)
  {
    if (v188)
    {
      CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
      CompressedTileHeightOfPlane = IOSurfaceGetCompressedTileHeightOfPlane();
      v81 = CompressedTileWidthOfPlane != 16 || CompressedTileHeightOfPlane != 16;
    }

    else
    {
      v81 = MTLPixelFormatA8Unorm;
    }

    v194 = AGX::HAL300::TextureFormatTable::chooseInterchangeFormat(v168[0], v81);
    if (v194 == &texFormatUnsupported)
    {
      goto LABEL_83;
    }
  }

  else if (v194 == &texFormatUnsupported)
  {
LABEL_83:
    v193 = 0;
    goto LABEL_84;
  }

  v82 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::validateTextureParams(&v166);
  v193 = v82;
  if (!v82)
  {
LABEL_84:
    v194 = &texFormatUnsupported;
    LODWORD(index) = indexCopy;
    goto LABEL_85;
  }

  v209 = (v168[0] - 185 < 0x34) & (0xFFFF3FFFCFFFFuLL >> (LOBYTE(v168[0]) + 71));
  v210 = (v168[0] & 0xFFFFFFFFFFFFFFF8) == 160;
  v195 = *&dword_29D2FEEF0[2 * *(v194 + 14)];
  v207 = v168[0] - 40 < 5;
  v83 = v216;
  LODWORD(index) = indexCopy;
  if ((v216 & 0x40000) != 0 || v168[0] - 586 <= 0x2B && ((1 << (LOBYTE(v168[0]) - 74)) & 0xC0000000003) != 0)
  {
    inited = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::initColorSpaceConversionType(&v166);
    v85 = v161;
    if (!v161)
    {
      v85 = inited;
    }

    LODWORD(v208) = v85;
    v83 = v216;
    if ((v216 & 0x40000) != 0)
    {
      if (v188)
      {
        v249 = 0;
        v247 = 0u;
        v248 = 0u;
        v245 = 0u;
        v246 = 0u;
        v243 = 0u;
        v244 = 0u;
        v241 = 0u;
        v242 = 0u;
        v240 = 132;
        BulkAttachments = IOSurfaceGetBulkAttachments();
        if (BYTE13(v244) - 1 < 6 && BulkAttachments == 0)
        {
          v88 = BYTE13(v244);
        }

        else
        {
          v88 = 0;
        }

        v83 = v216;
      }

      else
      {
        v88 = 0;
      }

      HIDWORD(v208) = v88;
    }
  }

  if (!v83)
  {
    v148 = rowCopy;
    if ((v40 & 0xFFFFFFFFFFFFFFFELL) == 0xF0 && !rowCopy)
    {
      v148 = (*(v194 + 49) * v182.u32[0] + 15) & 0x1FFFFFFFFF0;
      rowCopy = v148;
    }

    if (!v148)
    {
      rowCopy = *(v194 + 49) * v182.u32[0];
    }
  }

  if (*(&v167 + 1) == 9)
  {
    rowCopy = (rowCopy + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  if ((v83 & 0xFF00) == 0x400)
  {
    v149 = 6;
  }

  else
  {
    v149 = 1;
  }

  DWORD2(v214) = v149;
  v199 = 0;
  v197 = 0;
  if (v198)
  {
    v150 = &dword_29D2FEEF0[2 * *(v194 + 14)];
    v151 = *(v194 + 88);
    v152 = v198 / (*(v194 + 88) * v179);
    v153 = 32 - __clz(v152 - 1);
    v155 = *v150;
    v154 = v150[1];
    v156 = v152 >= 2 ? v153 : 0;
    v157 = (v156 + 1) >> 1;
    LODWORD(v196) = v155 << v157;
    HIDWORD(v196) = v154 << (v156 - v157);
    if (v201 == 1)
    {
      v158 = (8 * (v179 * v151)) >> (BYTE9(v169) != 0);
      v159 = 0;
      if (v158 <= 63)
      {
        if (v158 > 15)
        {
          if (v158 == 16)
          {
            v196 = 0x4000000080;
            goto LABEL_85;
          }

          if (v158 == 32)
          {
            v196 = 0x4000000040;
            goto LABEL_85;
          }
        }

        else
        {
          if (v158 == 4)
          {
            v196 = 0x8000000100;
            goto LABEL_85;
          }

          if (v158 == 8)
          {
            v196 = 0x8000000080;
            goto LABEL_85;
          }
        }
      }

      else if (v158 <= 255)
      {
        if (v158 == 64)
        {
          v196 = 0x2000000040;
          goto LABEL_85;
        }

        if (v158 == 128)
        {
          v196 = 0x2000000020;
          goto LABEL_85;
        }
      }

      else
      {
        switch(v158)
        {
          case 256:
            v196 = 0x1000000020;
            goto LABEL_85;
          case 512:
            v159 = 0x1000000010;
            break;
          case 1024:
            v196 = 0x800000010;
            goto LABEL_85;
        }
      }

      v196 = v159;
    }
  }

LABEL_85:
  *&v166 = &unk_2A23FA3B0;
  v230 = 0u;
  v231 = 0;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0;
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v229 = 0;
  v232 = 0;
  v234 = 0;
  v233 = 0;
  v235 = 0;
  v236 = 0u;
  v237 = 0u;
  if (v193 == 1)
  {
    if (AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isCompressionAllowed(void)::CompressionPolicyVisitor>(&v166))
    {
      operator new();
    }

    v89 = v194;
    if (!v167 && *(v194 + 6) >= 2u)
    {
      v90 = 0;
      v91 = 0;
      v92 = 0;
      do
      {
        v92 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(&v166, v90, 1);
        v91 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(&v166, v90, 1);
        v93 = &v166 + 8 * v90;
        *(v93 + 44) = v92;
        *(v93 + 45) = v91;
        v89 = v194;
        v94 = v90 + 2;
        ++v90;
      }

      while (v94 < *(v194 + 6));
      LODWORD(index) = indexCopy;
      v77 = offsetCopy;
    }

    v95 = v232;
    if (v232 && *(v89 + 6) >= 2u)
    {
      if (v188 && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
      {
        BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
        v97 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - BaseAddressOfCompressedTileDataRegionOfSliceAndPlane;
      }

      else
      {
        v98 = *(&v212 + 1);
        v97 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(&v166, 1u, 0) + v98;
      }

      if (v188 && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
      {
        v99 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
        v100 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - v99;
      }

      else
      {
        v100 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(&v166, 0, 0);
      }

      *(v95 + 1336) = v97 - v100;
      v89 = v194;
      v77 = offsetCopy;
    }

    if (*(v89 + 6))
    {
      v101 = 0;
      v102 = 0;
      do
      {
        v102 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(&v166, v101, 1);
        v101 = (v101 + 1);
        v103 = *(v194 + 6);
      }

      while (v101 < v103);
      *(&v213 + 1) = v102;
      if (v103)
      {
        v104 = 0;
        v105 = 0;
        do
        {
          v105 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(&v166, v104++, 1);
        }

        while (v104 < *(v194 + 6));
      }

      else
      {
        v105 = 0;
      }
    }

    else
    {
      v105 = 0;
      *(&v213 + 1) = 0;
    }

    *&v214 = v105;
  }

  v106 = MEMORY[0x29EDC5638];
  *&v166 = off_2A23FA3D8;
  v107 = buffer + *MEMORY[0x29EDC5638];
  if (*(*(v107 + 14) + 52) == 64)
  {
    v108 = [buffer length];
  }

  else
  {
    v108 = *(v107 + 5) & 0xFFFFFFFFFFFFFFLL;
  }

  if (v193 != 1)
  {
    goto LABEL_121;
  }

  v109 = v108 - v77;
  if (v108 < v77)
  {
    v109 = 0;
  }

  if (v214 <= v109)
  {
    v126 = *(buffer + *v106 + 72);
    if ([buffer iosurface])
    {
      BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane([buffer iosurface], 0);
    }

    else
    {
      BaseAddressOfPlane = *(buffer + *v106 + 128);
    }

    v128 = v126 + v77;
    v129 = &BaseAddressOfPlane[v77];
    if (v232 && *(v232 + 1304))
    {
      if (v188 && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
      {
        v130 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
        v131 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - v130;
      }

      else
      {
        v131 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(&v166, 0, 0);
      }

      if (v188 && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
      {
        v132 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
        v133 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - v132;
      }

      else
      {
        v133 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(&v166, 0, 0);
      }

      v134 = v131 + v128;
      v135 = v232;
      v136 = &v129[v133];
      *(v232 + 312) = &v129[v133];
      v135[9] = v134;
      (*(*v135 + 16))(v135);
      if (v135[168] >= 2uLL)
      {
        v137 = v135[167];
        v135[120] = &v136[v137];
        v135[90] = v137 + v134;
        (*(v135[81] + 16))();
      }
    }

    if (v198 && v201 == 1)
    {
      v138 = v237;
      v139 = *(buffer + *v106 + 72) + v108 + offsetCopy / v163;
      *(v237 + 312) = 0;
      v138[9] = v139;
      (*(*v138 + 16))(v138);
    }

    v206 = v129;
    v171 = v128;
    (*(v166 + 16))(&v166);
    LODWORD(index) = indexCopy;
    v140 = buffer + *v106;
    v141 = *(v140 + 23) != 0;
    v142 = *(v140 + 12);
    v240 = 0;
    *&v241 = 0;
    v238 = 0;
    v239 = 0;
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::assembleTextureInfoEmission(&v166, v142, 0, v141, &v241, &v240, &v239, &v238);
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v143 = &(*impl)[214];
    atomic_fetch_or(v143, 0x80000uLL);
    atomic_fetch_or(v143 + 1, 0);
    AGX::TextureViewPool<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setTexture(impl, indexCopy, &v166);
    selfCopy = v162;
  }

  else
  {
LABEL_121:
    v110 = *&(*impl)[212]._os_unfair_lock_opaque;
    v111 = v110[1031];
    v241 = v110[1030];
    v242 = v111;
    v112 = v110[1033];
    v243 = v110[1032];
    v244 = v112;
    v113 = impl[2];
    os_unfair_lock_lock(v113 + 336);
    v114 = impl[2];
    v115 = *(impl + 2) + index;
    if (atomic_load_explicit(&v114[293], memory_order_acquire))
    {
      v116 = (*&v114[316]._os_unfair_lock_opaque + 24 * (v115 >> 15));
      v117 = v116[1];
      v118 = v116[2];
      v119 = 32 * (v115 & 0x7FFF);
      v120 = (*v116 + v119);
      v121 = (v117 + v119);
      v122 = (v118 + 8 * (v115 & 0x7FFF));
    }

    else
    {
      os_unfair_lock_assert_owner(v114 + 336);
      v123 = &v114[10 * v114[292]._os_unfair_lock_opaque];
      v124 = *v106;
      v125 = 32 * v115;
      v120 = (*(*&v123[4]._os_unfair_lock_opaque + v124 + 24) + v125);
      v121 = (*(*&v123[6]._os_unfair_lock_opaque + v124 + 24) + v125);
      v122 = (*(*&v123[8]._os_unfair_lock_opaque + v124 + 24) + 8 * v115);
    }

    selfCopy = v162;
    *v120 = v241;
    v120[1] = v242;
    *v121 = v243;
    v121[1] = v244;
    *v122 = 0;
    os_unfair_lock_unlock(v113 + 336);
  }

  *&v166 = &unk_2A23FA3B0;
  if (v237)
  {
    free(v237);
    *&v237 = 0;
  }

  v144 = v232;
  v232 = 0;
  if (v144)
  {
    std::default_delete<AGX::HAL300::CompressionMetadata>::operator()[abi:nn200100](v144);
  }

  if (v230 && (v231 & 1) == 0)
  {
    v145 = *(&v230 + 1);
    os_unfair_lock_lock((*(&v230 + 1) + 1344));
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(&v230 + 1) + 1288, v230, v230 + DWORD1(v230) - 1);
    os_unfair_lock_unlock(v145 + 336);
  }

  if (v228 && (v229 & 1) == 0)
  {
    v146 = *(&v228 + 1);
    os_unfair_lock_lock((*(&v228 + 1) + 1344));
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(&v228 + 1) + 1288, v228, v228 + DWORD1(v228) - 1);
    os_unfair_lock_unlock(v146 + 336);
  }

  if (v224 && (v225 & 1) == 0)
  {
    v147 = *(&v224 + 1);
    os_unfair_lock_lock((*(&v224 + 1) + 1344));
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(&v224 + 1) + 1288, v224, v224 + DWORD1(v224) - 1);
    v34 = v147 + 336;
LABEL_9:
    os_unfair_lock_unlock(v34);
  }

  return (*(selfCopy->_impl + 2) + index);
}

- (MTLResourceID)setTextureView:(id)view descriptor:(id)descriptor atIndex:(unint64_t)index
{
  LODWORD(indexCopy3) = index;
  impl = self->_impl;
  if (!view || !descriptor)
  {
    v22 = *&(*impl)[212]._os_unfair_lock_opaque;
    v23 = v22[1031];
    v188 = v22[1030];
    v189 = v23;
    v24 = v22[1033];
    *v190 = v22[1032];
    *&v190[16] = v24;
    v25 = impl[2];
    os_unfair_lock_lock(v25 + 336);
    v26 = impl[2];
    v27 = *(impl + 2) + indexCopy3;
    if (atomic_load_explicit(&v26[293], memory_order_acquire))
    {
      v28 = (*&v26[316]._os_unfair_lock_opaque + 24 * (v27 >> 15));
      v29 = v28[1];
      v30 = v28[2];
      v31 = 32 * (v27 & 0x7FFF);
      v32 = (*v28 + v31);
      v33 = (v29 + v31);
      v34 = (v30 + 8 * (v27 & 0x7FFF));
    }

    else
    {
      os_unfair_lock_assert_owner(v26 + 336);
      v35 = &v26[10 * v26[292]._os_unfair_lock_opaque];
      v36 = *MEMORY[0x29EDC5638];
      v37 = 32 * v27;
      v32 = (*(*&v35[4]._os_unfair_lock_opaque + v36 + 24) + v37);
      v33 = (*(*&v35[6]._os_unfair_lock_opaque + v36 + 24) + v37);
      v34 = (*(*&v35[8]._os_unfair_lock_opaque + v36 + 24) + 8 * v27);
    }

    *v32 = v188;
    v32[1] = v189;
    *v33 = *v190;
    v33[1] = *&v190[16];
    *v34 = 0;
    v38 = v25 + 336;
    goto LABEL_152;
  }

  v8 = *(view + 74);
  if (*(v8 + 48) == 3)
  {
    v9 = *&(*impl)[212]._os_unfair_lock_opaque;
    v10 = v9[1031];
    v188 = v9[1030];
    v189 = v10;
    v11 = v9[1033];
    *v190 = v9[1032];
    *&v190[16] = v11;
    v12 = impl[2];
    os_unfair_lock_lock(v12 + 336);
    v13 = impl[2];
    v14 = *(impl + 2) + indexCopy3;
    if (atomic_load_explicit(&v13[293], memory_order_acquire))
    {
      v15 = (*&v13[316]._os_unfair_lock_opaque + 24 * (v14 >> 15));
      v16 = v15[1];
      v17 = v15[2];
      v18 = 32 * (v14 & 0x7FFF);
      v19 = (*v15 + v18);
      v20 = (v16 + v18);
      v21 = (v17 + 8 * (v14 & 0x7FFF));
    }

    else
    {
      os_unfair_lock_assert_owner(v13 + 336);
      v46 = &v13[10 * v13[292]._os_unfair_lock_opaque];
      v47 = *MEMORY[0x29EDC5638];
      v48 = 32 * v14;
      v19 = (*(*&v46[4]._os_unfair_lock_opaque + v47 + 24) + v48);
      v20 = (*(*&v46[6]._os_unfair_lock_opaque + v47 + 24) + v48);
      v21 = (*(*&v46[8]._os_unfair_lock_opaque + v47 + 24) + 8 * v14);
    }

    *v19 = v188;
    v19[1] = v189;
    *v20 = *v190;
    v20[1] = *&v190[16];
    *v21 = 0;
    goto LABEL_151;
  }

  v39 = 6;
  if ([descriptor textureType] != 5)
  {
    if ([descriptor textureType] == 6)
    {
      v39 = 6;
    }

    else
    {
      v39 = 1;
    }
  }

  [descriptor sliceRange];
  v41 = v40;
  v43 = [descriptor pixelFormat] == 261 && *(v8 + 32) != 261;
  v181 = v43;
  v44 = *(v8 + 56);
  writeAccessPattern = [descriptor writeAccessPattern];
  if ([descriptor writeAccessPattern] == 2)
  {
    LODWORD(v44) = v44 | 0x10;
  }

  else if ([descriptor writeAccessPattern] == 1)
  {
    LODWORD(v44) = v44 & 0xFFFFFFEF;
  }

  v49 = v41 / v39;
  pixelFormat = [descriptor pixelFormat];
  textureType = [descriptor textureType];
  [descriptor sliceRange];
  levelRange = [descriptor levelRange];
  [descriptor levelRange];
  v182 = v53;
  [descriptor swizzle];
  v54 = MTLTextureSwizzleChannelsToKey();
  v55 = *(v8 + 236);
  if (v55)
  {
    v56 = 1;
  }

  else
  {
    v56 = 2;
  }

  v185 = pixelFormat;
  v57 = pixelFormat - 1;
  if ((pixelFormat - 1) > 0x289)
  {
    v58 = &texFormatUnsupported;
  }

  else
  {
    v58 = *(&off_29F342380 + v57);
  }

  v59 = v44 | (writeAccessPattern << 32);
  v60 = *(v8 + 8);
  v61 = *(v8 + 40);
  v62 = *(v8 + 192);
  v63 = *(v8 + 128);
  v64 = *(v8 + 136);
  v65 = *(v8 + 140);
  v66 = *(v8 + 112);
  if (*(v8 + 240))
  {
    v55 = 0;
  }

  v67 = *(v8 + 241);
  v68 = *(v8 + 152);
  v69 = &texFormatUnsupported;
  v184 = impl;
  if (v57 <= 0x289)
  {
    v69 = *(&off_29F342380 + v57);
  }

  v179 = *(v8 + 324);
  v70 = *(v8 + 168);
  v71 = (v69[8] & 0x38000) == 0x8000;
  v72 = *(v8 + 176);
  if (((v69[2] == 4) & (*(v69 + 10) < 0x33uLL) & (0x4000800000200uLL >> *(v69 + 10))) != 0)
  {
    v73 = 0x40000000;
  }

  else
  {
    v73 = 0;
  }

  v74 = *(v8 + 184);
  v75 = v73 | (v71 << 31);
  v76 = *(v8 + 144) + levelRange;
  v77 = *(v8 + 148);
  v78 = *(v8 + 232);
  v79 = *(v8 + 408);
  *&v188 = &unk_2A23FA388;
  *(&v188 + 1) = v60;
  LODWORD(v189) = 0;
  *(&v189 + 1) = textureType;
  *v190 = pixelFormat;
  *&v190[8] = v61;
  v80 = 1 << -__clz(v66 - 1);
  *&v190[24] = v59;
  v192 = 0;
  v193 = 0;
  v194 = v49 - 1;
  v195 = vmax_u32(vshl_u32(v63, vneg_s32(vdup_n_s32(v76))), 0x100000001);
  v81 = v64 >> v76;
  if (v64 >> v76 <= 1)
  {
    v81 = 1;
  }

  v196 = v81;
  v197 = v49;
  v198 = v75;
  v199 = v182;
  v200 = v80;
  v201 = v76;
  v202 = 1;
  v203 = v63;
  v204 = v64;
  v205 = v65;
  v206 = v76;
  v207 = v77;
  v208 = v68;
  v209 = v70;
  v210 = v72;
  v211 = v74;
  v212 = v62;
  v213 = v54;
  v214 = 0;
  v215 = v58;
  v216 = 0;
  v218 = 0;
  v219 = v55;
  v221 = v67;
  v222 = 0;
  v223 = v55;
  v225 = 0u;
  v226 = 0u;
  v224 = 0u;
  v227 = 0;
  v228 = 0;
  v229 = 0;
  v233 = 0u;
  v234 = 0u;
  v235 = 0u;
  v236 = v49;
  LOWORD(v237) = 0;
  BYTE2(v237) = 0;
  v238 = v59;
  v239 = v79;
  v232 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Texture(AGX::HAL300::Device *,eAGXTextureMetadataType,AGXHardwareTextureMemoryOrder,AGX::TextureFormat const*,MTLTextureType,MTLPixelFormat,unsigned long,MTLStorageMode,AGXTextureCompressionSettings,eAGXColorSpaceConversion,eAGXTextureRotation,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned long,unsigned int,BOOL,MTLCPUCacheMode,unsigned int,eAGXTextureCoordType,__IOSurface *,unsigned int,unsigned int,__IOSurface *,unsigned int,unsigned int,float,BOOL,BOOL,BOOL)::iosurface_alignment;
  if (!AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Texture(AGX::HAL300::Device *,eAGXTextureMetadataType,AGXHardwareTextureMemoryOrder,AGX::TextureFormat const*,MTLTextureType,MTLPixelFormat,unsigned long,MTLStorageMode,AGXTextureCompressionSettings,eAGXColorSpaceConversion,eAGXTextureRotation,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned long,unsigned int,BOOL,MTLCPUCacheMode,unsigned int,eAGXTextureCoordType,__IOSurface *,unsigned int,unsigned int,__IOSurface *,unsigned int,unsigned int,float,BOOL,BOOL,BOOL)::iosurface_alignment)
  {
    v82 = v56;
    v183 = v63;
    v83 = MEMORY[0x29ED51AC0](*MEMORY[0x29EDBB178], 1);
    v63 = v183;
    v56 = v82;
    v232 = v83;
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Texture(AGX::HAL300::Device *,eAGXTextureMetadataType,AGXHardwareTextureMemoryOrder,AGX::TextureFormat const*,MTLTextureType,MTLPixelFormat,unsigned long,MTLStorageMode,AGXTextureCompressionSettings,eAGXColorSpaceConversion,eAGXTextureRotation,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned long,unsigned int,BOOL,MTLCPUCacheMode,unsigned int,eAGXTextureCoordType,__IOSurface *,unsigned int,unsigned int,__IOSurface *,unsigned int,unsigned int,float,BOOL,BOOL,BOOL)::iosurface_alignment = v83;
  }

  indexCopy3 = index;
  if (v65 < 2)
  {
    v87 = 1;
  }

  else
  {
    v84 = v63.i32[0];
    if (v63.i32[0] <= v63.i32[1])
    {
      v84 = v63.u32[1];
    }

    if (v84 <= v64)
    {
      v85 = v64;
    }

    else
    {
      v85 = v84;
    }

    v86 = 32 - __clz(v85);
    if (v85)
    {
      v87 = v86;
    }

    else
    {
      v87 = 0;
    }
  }

  v191 = v87;
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::initTextureLayout(&v188, v56);
  if (v237 == 3)
  {
    if (v209)
    {
      CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
      CompressedTileHeightOfPlane = IOSurfaceGetCompressedTileHeightOfPlane();
      v91 = CompressedTileWidthOfPlane != 16 || CompressedTileHeightOfPlane != 16;
    }

    else
    {
      v91 = MTLPixelFormatA8Unorm;
    }

    v92 = v184;
    v215 = AGX::HAL300::TextureFormatTable::chooseInterchangeFormat(*v190, v91);
    if (v215 == &texFormatUnsupported)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v92 = impl;
    if (v215 == &texFormatUnsupported)
    {
LABEL_79:
      v214 = 0;
      goto LABEL_80;
    }
  }

  v93 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::validateTextureParams(&v188);
  v214 = v93;
  if (!v93)
  {
LABEL_80:
    v215 = &texFormatUnsupported;
    goto LABEL_81;
  }

  v230 = ((*v190 - 185) < 0x34) & (0xFFFF3FFFCFFFFuLL >> (v190[0] + 71));
  v231 = (*v190 & 0xFFFFFFFFFFFFFFF8) == 160;
  v216 = *&dword_29D2FEEF0[2 * *(v215 + 14)];
  v228 = (*v190 - 40) < 5;
  v94 = v237;
  if ((v237 & 0x40000) != 0 || (*v190 - 586) <= 0x2B && ((1 << (v190[0] - 74)) & 0xC0000000003) != 0)
  {
    inited = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::initColorSpaceConversionType(&v188);
    v96 = v179;
    if (!v179)
    {
      v96 = inited;
    }

    LODWORD(v229) = v96;
    v94 = v237;
    if ((v237 & 0x40000) != 0)
    {
      if (v209)
      {
        v270 = 0;
        v268 = 0u;
        v269 = 0u;
        v266 = 0u;
        v267 = 0u;
        v264 = 0u;
        v265 = 0u;
        v262 = 0u;
        v263 = 0u;
        v261 = 132;
        BulkAttachments = IOSurfaceGetBulkAttachments();
        if (BYTE13(v265) - 1 < 6 && BulkAttachments == 0)
        {
          v99 = BYTE13(v265);
        }

        else
        {
          v99 = 0;
        }

        v94 = v237;
      }

      else
      {
        v99 = 0;
      }

      HIDWORD(v229) = v99;
    }
  }

  if (!v94)
  {
    v165 = v208;
    if ((v185 & 0xFFFFFFFFFFFFFFFELL) == 0xF0 && !v208)
    {
      v165 = (*(v215 + 49) * v203.u32[0] + 15) & 0x1FFFFFFFFF0;
      *&v208 = v165;
    }

    if (!v165)
    {
      *&v208 = *(v215 + 49) * v203.u32[0];
    }
  }

  if (*(&v189 + 1) == 9)
  {
    *&v208 = (v208 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  v166 = 0;
  if ((v94 & 0xFF00) == 0x400)
  {
    v167 = 6;
  }

  else
  {
    v167 = 1;
  }

  DWORD2(v235) = v167;
  v220 = 0;
  v168 = v219;
  if (!v219 && v78)
  {
    v166 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::initSparseNPOT(&v188);
    v168 = v219;
  }

  v218 = v166;
  if (v168)
  {
    v169 = &dword_29D2FEEF0[2 * *(v215 + 14)];
    v170 = *(v215 + 88);
    v171 = v168 / (*(v215 + 88) * v200);
    v172 = 32 - __clz(v171 - 1);
    v174 = *v169;
    v173 = v169[1];
    v175 = v171 >= 2 ? v172 : 0;
    v176 = (v175 + 1) >> 1;
    LODWORD(v217) = v174 << v176;
    HIDWORD(v217) = v173 << (v175 - v176);
    if (v222 == 1)
    {
      v177 = (8 * (v200 * v170)) >> (v190[25] != 0);
      v178 = 0;
      if (v177 <= 63)
      {
        if (v177 > 15)
        {
          if (v177 == 16)
          {
            v217 = 0x4000000080;
            goto LABEL_81;
          }

          if (v177 == 32)
          {
            v217 = 0x4000000040;
            goto LABEL_81;
          }
        }

        else
        {
          if (v177 == 4)
          {
            v217 = 0x8000000100;
            goto LABEL_81;
          }

          if (v177 == 8)
          {
            v217 = 0x8000000080;
            goto LABEL_81;
          }
        }
      }

      else if (v177 <= 255)
      {
        if (v177 == 64)
        {
          v217 = 0x2000000040;
          goto LABEL_81;
        }

        if (v177 == 128)
        {
          v217 = 0x2000000020;
          goto LABEL_81;
        }
      }

      else
      {
        switch(v177)
        {
          case 256:
            v217 = 0x1000000020;
            goto LABEL_81;
          case 512:
            v178 = 0x1000000010;
            break;
          case 1024:
            v217 = 0x800000010;
            goto LABEL_81;
        }
      }

      v217 = v178;
    }
  }

LABEL_81:
  *&v188 = &unk_2A23FA3B0;
  v250 = 0u;
  v251 = 0;
  v240 = 0u;
  v241 = 0u;
  v242 = 0u;
  v243 = 0u;
  v244 = 0u;
  v245 = 0;
  v246 = 0u;
  v247 = 0u;
  v248 = 0u;
  v249 = 0;
  v252 = 0;
  v254 = 0;
  v253 = 0;
  v255 = 0;
  v256 = 0u;
  v257 = 0u;
  if ((v214 & 1) == 0)
  {
    *&v188 = off_2A23FA3D8;
LABEL_134:
    v145 = *(*v92 + 848);
    v146 = v145[1031];
    v262 = v145[1030];
    v263 = v146;
    v147 = v145[1033];
    v264 = v145[1032];
    v265 = v147;
    v148 = *(v92 + 16);
    os_unfair_lock_lock(v148 + 336);
    v149 = *(v92 + 16);
    v150 = *(v92 + 8) + indexCopy3;
    if (atomic_load_explicit((v149 + 1172), memory_order_acquire))
    {
      v151 = (*(v149 + 1264) + 24 * (v150 >> 15));
      v152 = v151[1];
      v153 = v151[2];
      v154 = 32 * (v150 & 0x7FFF);
      v155 = (*v151 + v154);
      v156 = (v152 + v154);
      v157 = (v153 + 8 * (v150 & 0x7FFF));
    }

    else
    {
      os_unfair_lock_assert_owner((v149 + 1344));
      v158 = (v149 + 40 * *(v149 + 1168));
      v159 = *MEMORY[0x29EDC5638];
      v160 = 32 * v150;
      v155 = (*(v158[2] + v159 + 24) + v160);
      v156 = (*(v158[3] + v159 + 24) + v160);
      v157 = (*(v158[4] + v159 + 24) + 8 * v150);
    }

    *v155 = v262;
    v155[1] = v263;
    *v156 = v264;
    v156[1] = v265;
    *v157 = 0;
    os_unfair_lock_unlock(v148 + 336);
    goto LABEL_138;
  }

  if (AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isCompressionAllowed(void)::CompressionPolicyVisitor>(&v188))
  {
    operator new();
  }

  v100 = v215;
  if (!v189 && *(v215 + 6) >= 2u)
  {
    v101 = 0;
    v102 = 0;
    v103 = 0;
    do
    {
      v103 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(&v188, v101, 1);
      v102 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(&v188, v101, 1);
      v104 = &v188 + 8 * v101;
      *(v104 + 44) = v103;
      *(v104 + 45) = v102;
      v100 = v215;
      v105 = v101 + 2;
      ++v101;
    }

    while (v105 < *(v215 + 6));
    indexCopy3 = index;
  }

  v106 = v252;
  if (v252 && *(v100 + 6) >= 2u)
  {
    if (v209 && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v108 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - BaseAddressOfCompressedTileDataRegionOfSliceAndPlane;
    }

    else
    {
      v109 = *(&v233 + 1);
      v108 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(&v188, 1u, 0) + v109;
    }

    if (v209 && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      v110 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v111 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - v110;
    }

    else
    {
      v111 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(&v188, 0, 0);
    }

    *(v106 + 1336) = v108 - v111;
    v100 = v215;
  }

  if (*(v100 + 6))
  {
    v112 = 0;
    v113 = 0;
    do
    {
      v113 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(&v188, v112, 1);
      v112 = (v112 + 1);
      v114 = *(v215 + 6);
    }

    while (v112 < v114);
    *(&v234 + 1) = v113;
    if (v114)
    {
      v115 = 0;
      v116 = 0;
      do
      {
        v116 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(&v188, v115++, 1);
      }

      while (v115 < *(v215 + 6));
    }

    else
    {
      v116 = 0;
    }
  }

  else
  {
    v116 = 0;
    *(&v234 + 1) = 0;
  }

  *&v235 = v116;
  *&v188 = off_2A23FA3D8;
  if ((v214 & 1) == 0)
  {
    goto LABEL_134;
  }

  v262 = xmmword_29D2F2600;
  v117 = 70;
  if (*(*(v8 + 208) + 28) == *(v215 + 7))
  {
    v117 = 0;
  }

  *(&v262 | (v117 >> 3)) |= 1 << (v117 & 6);
  v118 = *(&v262 + 1);
  v119 = (*v92 + 856);
  atomic_fetch_or(v119, v262);
  atomic_fetch_or(v119 + 1, v118);
  v120 = v252;
  if (v252 && *(v252 + 1304))
  {
    if (*(v215 + 6) >= 2u && v236 * DWORD2(v235) != *(v8 + 392) * *(v8 + 384))
    {
      GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(v8 + 584) + 648, [descriptor sliceRange], 0, 0, 0);
      v122 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(v8 + 584), [descriptor sliceRange], 0, 0, 0);
      v120 = v252;
      *(v252 + 1336) = GPUVirtualAddress - v122;
    }

    CPUPtr = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(*(v8 + 584) + 648 * v181, [descriptor sliceRange], 0, 0);
    v124 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(v8 + 584) + 648 * v181, [descriptor sliceRange], 0, 0, 0);
    v120[39] = CPUPtr;
    v120[9] = v124;
    (*(*v120 + 16))(v120);
    if (v120[168] >= 2uLL)
    {
      v125 = v120[167];
      v120[120] = CPUPtr + v125;
      v120[90] = v125 + v124;
      (*(v120[81] + 16))();
    }
  }

  viewCopy2 = view;
  if (*(v8 + 236) && *(v8 + 248) == 1)
  {
    v127 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(v8 + 632), [descriptor sliceRange], 0, 0, v181);
    v128 = v257;
    *(v257 + 312) = 0;
    v128[9] = v127;
    (*(*v128 + 16))(v128);
  }

  if (*(v215 + 6) >= 2u && v236 * DWORD2(v235) != *(v8 + 392) * *(v8 + 384))
  {
    v129 = 0;
    v130 = 0;
    v131 = &v234;
    v132 = 1;
    do
    {
      v133 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v8, [descriptor sliceRange], 0, v132);
      v134 = v132 - 1;
      v135 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v8, [descriptor sliceRange], 0, v132 - 1);
      v136 = v134 + 1;
      v137 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v8, [descriptor sliceRange], 0, 0, v134 + 1);
      --v136;
      v129 += v133 - v135;
      v130 += v137 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v8, [descriptor sliceRange], 0, 0, v136);
      v138 = *(v215 + 6);
      v132 = v136 + 2;
    }

    while (v136 + 2 < v138);
    if (v138 >= 2)
    {
      v139 = v138 - 1;
      do
      {
        *(v131 - 1) = v130;
        *v131 = v129;
        v131 = (v131 + 8);
        --v139;
      }

      while (v139);
    }

    (*(v188 + 16))(&v188);
    indexCopy3 = index;
    viewCopy2 = view;
  }

  v140 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v8, [descriptor sliceRange], 0, v181);
  v141 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v8, [descriptor sliceRange], 0, 0, v181);
  v227 = v140;
  v192 = v141;
  (*(v188 + 16))(&v188);
  v142 = &viewCopy2[*MEMORY[0x29EDC5638]];
  v143 = *(v142 + 23) != 0;
  v144 = *(v142 + 12);
  v260 = 0;
  v261 = 0;
  v258 = 0;
  v259 = 0;
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::assembleTextureInfoEmission(&v188, v144, 1, v143, &v261, &v260, &v259, &v258);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  AGX::TextureViewPool<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setTexture(v92, indexCopy3, &v188);
LABEL_138:
  *&v188 = &unk_2A23FA3B0;
  if (v257)
  {
    free(v257);
    *&v257 = 0;
  }

  v161 = v252;
  v252 = 0;
  if (v161)
  {
    std::default_delete<AGX::HAL300::CompressionMetadata>::operator()[abi:nn200100](v161);
  }

  if (v250 && (v251 & 1) == 0)
  {
    v162 = *(&v250 + 1);
    os_unfair_lock_lock((*(&v250 + 1) + 1344));
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(&v250 + 1) + 1288, v250, v250 + DWORD1(v250) - 1);
    os_unfair_lock_unlock(v162 + 336);
  }

  if (v248 && (v249 & 1) == 0)
  {
    v163 = *(&v248 + 1);
    os_unfair_lock_lock((*(&v248 + 1) + 1344));
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(&v248 + 1) + 1288, v248, v248 + DWORD1(v248) - 1);
    os_unfair_lock_unlock(v163 + 336);
  }

  if (v244 && (v245 & 1) == 0)
  {
    v12 = *(&v244 + 1);
    os_unfair_lock_lock((*(&v244 + 1) + 1344));
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(&v244 + 1) + 1288, v244, v244 + DWORD1(v244) - 1);
LABEL_151:
    v38 = v12 + 336;
LABEL_152:
    os_unfair_lock_unlock(v38);
  }

  return (*(self->_impl + 2) + indexCopy3);
}

- (MTLResourceID)setTextureView:(id)view atIndex:(unint64_t)index
{
  indexCopy = index;
  impl = self->_impl;
  if (view)
  {
    view = *(view + 74);
  }

  AGX::TextureViewPool<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setTexture(impl, index, view);
  return (*(self->_impl + 2) + indexCopy);
}

- (MTLResourceID)copyResourceViewsFromPool:(id)pool sourceRange:(_NSRange)range destinationIndex:(unint64_t)index
{
  indexCopy = index;
  location = range.location;
  impl = self->_impl;
  v8 = *(pool + 6);
  if (LODWORD(range.length))
  {
    v9 = *(v8 + 8) + LODWORD(range.location);
    v10 = *(impl + 2) + index;
    v11 = *(impl + 2);
    length = range.length;
    v13 = v10;
    v14 = v9;
    do
    {
      v15 = v14 >> 15;
      v16 = v14++ & 0x7FFF;
      v17 = *(v11 + 1264);
      v18 = (*(v17 + 24 * v15) + 32 * v16);
      LODWORD(v16) = v13 >> 15;
      v19 = v13++ & 0x7FFF;
      v20 = *v18;
      v21 = v18[1];
      v22 = (*(v17 + 24 * v16) + 32 * v19);
      *v22 = v20;
      v22[1] = v21;
      --length;
    }

    while (length);
    v23 = range.length;
    v24 = v10;
    v25 = v9;
    do
    {
      v26 = v25 >> 15;
      v27 = v25++ & 0x7FFF;
      v28 = *(v11 + 1264);
      v29 = (*(v28 + 24 * v26 + 8) + 32 * v27);
      LODWORD(v27) = v24 >> 15;
      v30 = v24++ & 0x7FFF;
      v31 = *v29;
      v32 = v29[1];
      v33 = (*(v28 + (24 * v27) + 8) + 32 * v30);
      *v33 = v31;
      v33[1] = v32;
      --v23;
    }

    while (v23);
    v34 = *(v11 + 1264) + 16;
    v35 = range.length;
    do
    {
      v36 = *(*(v34 + 24 * (v9 >> 15)) + 8 * (v9 & 0x7FFF));
      ++v9;
      v37 = *(v34 + 24 * (v10 >> 15));
      v38 = v10++ & 0x7FFF;
      *(v37 + 8 * v38) = v36;
      --v35;
    }

    while (v35);
  }

  v40 = *(v8 + 32);
  v39 = *(v8 + 40);
  v41 = v39 - v40;
  if (v39 != v40)
  {
    v42 = *(impl + 4);
    v43 = *(impl + 5);
    v44 = (impl + 32);
    v45 = (LODWORD(range.length) + index + 1);
    v46 = (v43 - v42) >> 4;
    v47 = v45 - v46;
    if (v45 > v46)
    {
      v48 = range.length;
      std::vector<std::shared_ptr<AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation>>::__append(v44, v47);
      LODWORD(range.length) = v48;
    }

    if (LODWORD(range.length) && v41 >> 4 != location)
    {
      length_low = (v41 >> 4) - location;
      if (LODWORD(range.length) < length_low)
      {
        length_low = LODWORD(range.length);
      }

      if (length_low <= 1)
      {
        v50 = 1;
      }

      else
      {
        v50 = length_low;
      }

      v51 = indexCopy;
      do
      {
        v52 = *v44;
        v53 = *(*(v8 + 32) + 16 * location);
        v54 = *(*(v8 + 32) + 16 * location + 8);
        if (v54)
        {
          atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
        }

        v55 = v52 + 16 * v51;
        v56 = *(v55 + 8);
        *v55 = v53;
        if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v56->__on_zero_shared)(v56, v47);
          std::__shared_weak_count::__release_weak(v56);
        }

        ++v51;
        ++location;
        --v50;
      }

      while (v50);
    }
  }

  return (*(self->_impl + 2) + indexCopy);
}

- (AGXG18PFamilyTextureViewPool)initWithDevice:(id)device descriptor:(id)descriptor error:(id *)error
{
  v46.receiver = self;
  v46.super_class = AGXG18PFamilyTextureViewPool;
  v8 = [(_MTLObjectWithLabel *)&v46 init];
  if (!v8)
  {
    return v8;
  }

  if ([descriptor forceBaseResourceID])
  {
    [descriptor baseResourceID];
  }

  v8->_device = device;
  v9 = *(device + 106);
  v10 = *(v9 + 7224);
  if (!v10)
  {
    os_unfair_lock_lock((v9 + 7232));
    v10 = *(v9 + 7224);
    if (!v10)
    {
      [[AGXG18PFamilyCommandQueue_mtlnext alloc] initWithDevice:device descriptor:0 isDriverInternal:1];
      [device newSharedEvent];
      operator new();
    }

    os_unfair_lock_unlock((v9 + 7232));
  }

  v11 = (v9 + 8412);
  if ((atomic_load_explicit((v9 + 8412), memory_order_acquire) & 1) == 0)
  {
    os_unfair_lock_lock((v9 + 8584));
    if ((atomic_load_explicit(v11, memory_order_acquire) & 1) == 0)
    {
      *(v9 + 8464) = v10;
      if (*(v9 + 8480))
      {
        [*(v10 + 8) addInternalResidencySet:?];
      }

      v12 = *(v9 + 8524);
      if (v12)
      {
        AGX::SparseHeap<262144u,1u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::setupDeferred((v9 + 8416), (v12 + 0x7FFF) >> 15);
        os_unfair_lock_assert_owner((v9 + 8584));
        v13 = v9 + 40 * *(v9 + 8408) + 7248;
        v14 = *(v9 + 8524);
        if (v14)
        {
          v15 = 0;
          v16 = 0;
          v17 = MEMORY[0x29EDC5638];
          do
          {
            v18 = (*(*(v13 + 8) + *v17 + 24) + v15);
            v19 = (*(*(v9 + 8504) + 24 * (v16 >> 15)) + 32 * (v16 & 0x7FFF));
            v20 = v18[1];
            *v19 = *v18;
            v19[1] = v20;
            ++v16;
            v15 += 32;
          }

          while (v14 != v16);
          v21 = *(v9 + 8524);
          if (v21)
          {
            v22 = 0;
            for (i = 0; i != v21; ++i)
            {
              v24 = (*(*(v13 + 16) + *v17 + 24) + v22);
              v25 = (*(*(v9 + 8504) + 24 * (i >> 15) + 8) + 32 * (i & 0x7FFF));
              v26 = v24[1];
              *v25 = *v24;
              v25[1] = v26;
              v22 += 32;
            }

            v27 = *(v9 + 8524);
            if (v27)
            {
              v28 = 0;
              v29 = *(v9 + 8504) + 16;
              do
              {
                *(*(v29 + 24 * (v28 >> 15)) + 8 * (v28 & 0x7FFF)) = *(*(*(v13 + 24) + *v17 + 24) + 8 * v28);
                ++v28;
              }

              while (v27 != v28);
            }
          }
        }

        if (atomic_fetch_add(v13, 0x80000000) == 0x80000000)
        {
          os_unfair_lock_assert_owner((v9 + 8584));
          if ((*(v13 + 4) & 1) == 0)
          {
            *(v13 + 4) = 1;
          }
        }
      }

      v30 = *(v9 + 8600);
      v31 = *v30;
      if ((*v30 + 1) > 1)
      {
        v32 = v31 + 1;
      }

      else
      {
        v32 = 1;
      }

      v33 = *v30;
      atomic_compare_exchange_strong(v30, &v33, v32);
      if (v33 != v31)
      {
        v34 = v33;
        do
        {
          if ((v33 + 1) > 1)
          {
            v35 = v33 + 1;
          }

          else
          {
            v35 = 1;
          }

          atomic_compare_exchange_strong(v30, &v34, v35);
          v36 = v34 == v33;
          v33 = v34;
        }

        while (!v36);
      }

      atomic_store(1u, v11);
    }

    os_unfair_lock_unlock((v9 + 8584));
  }

  if ([descriptor resourceViewCount])
  {
    operator new();
  }

  impl = v8->_impl;
  if (!impl)
  {
LABEL_55:
    v8->_impl = 0;

    if (!error)
    {
      return 0;
    }

    v44 = [MEMORY[0x29EDB8DC0] dictionaryWithObject:@"Could not create texture view pool" forKey:*MEMORY[0x29EDB9ED8]];
    v38 = [objc_alloc(MEMORY[0x29EDB9FA0]) initWithDomain:@"AGXMetalG18P" code:1 userInfo:v44];
    v8 = 0;
    goto LABEL_57;
  }

  if (!*(impl + 2))
  {
    v39 = *(impl + 4);
    if (v39)
    {
      v40 = *(impl + 5);
      v41 = *(impl + 4);
      if (v40 != v39)
      {
        do
        {
          v42 = *(v40 - 8);
          if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v42->__on_zero_shared)(v42);
            std::__shared_weak_count::__release_weak(v42);
          }

          v40 -= 16;
        }

        while (v40 != v39);
        v41 = *(impl + 4);
      }

      *(impl + 5) = v39;
      operator delete(v41);
      if (*(impl + 2) && (*(impl + 24) & 1) == 0)
      {
        v43 = *(impl + 2);
        os_unfair_lock_lock(v43 + 336);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(impl + 2) + 1288, *(impl + 2), *(impl + 2) + *(impl + 3) - 1);
        os_unfair_lock_unlock(v43 + 336);
      }
    }

    MEMORY[0x29ED520D0](impl, 0x10A0C40977C737BLL);
    goto LABEL_55;
  }

  if (error)
  {
    v38 = 0;
LABEL_57:
    *error = v38;
  }

  return v8;
}

@end