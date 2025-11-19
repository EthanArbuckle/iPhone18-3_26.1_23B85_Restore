void AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToBuffer(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned int *a9, uint64_t a10, unsigned int a11)
{
  v13 = *(a6 + 592);
  v14 = *MEMORY[0x29EDC5638];
  v15 = a2 + v14;
  v16 = *(v13 + 208);
  if (*(v16 + 24) < 2u)
  {
    v17 = 0;
  }

  else
  {
    v17 = (a11 >> 1) & 1;
    if (!*(v16 + 80))
    {
      v17 = 0;
    }
  }

  v67 = *(a2 + v14 + 72) + a3;
  v68 = v17;
  v18 = *(v16 + v17 + 88);
  v19 = *(v13 + 112);
  v20 = *(v13 + 584);
  if (v20 && (v21 = *(v20 + 1304)) != 0)
  {
    v22 = 1;
    if (v21 > a8)
    {
      if (*(v13 + 57))
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *(v15 + 144);
  v61 = *(v15 + 152);
  v24 = v19 * v18;
  TextureViewFormat = AGX::BlitUtil::getTextureViewFormat(v18, v19, *(v13 + 32), v17, v22, 0);
  v27 = TextureViewFormat;
  v28 = v26;
  if (v26 >> 33)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  v30 = *(v13 + 24);
  if (v30 > 9)
  {
    goto LABEL_21;
  }

  if (((1 << v30) & 0x17C) != 0)
  {
    goto LABEL_20;
  }

  if (((1 << v30) & 3) != 0)
  {
    *(a10 + 8) = 1;
LABEL_20:
    *(a10 + 16) = 1;
LABEL_21:
    v31 = HIDWORD(v26);
    if (v30 != 7)
    {
      v30 = v29;
    }

    v60 = v30;
    v32 = *a9;
    v33 = a9[2];
    v34 = a9[4];
    v35 = *(v13 + 216);
    v36 = *(v13 + 220);
    v37 = (*a10 + v35 - 1) / v35;
    v38 = (*(a10 + 8) + v36 - 1) / v36;
    v77[0] = v37;
    v77[1] = v38;
    v78 = 0;
    v79 = v32 / v35;
    v80 = v33 / v36;
    v81 = v34;
    v39 = v23;
    if ((TextureViewFormat - 1) > 0x289)
    {
      v40 = &texFormatUnsupported;
    }

    else
    {
      v40 = *(&off_29F342380 + (TextureViewFormat - 1));
    }

    v58 = v61;
    v62 = v38;
    v41 = v37;
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v74, *(a1[7] + 848), 0, 2, v29, v40, TextureViewFormat, 0, 0.0, v39, 2, 0, 0, 84148994, v37, v38, 1u, 1u, SHIDWORD(v26), 1, a4, 0, 0, v58, 0, 0, 0, 0, 0, 1, 1, 0, 1, v59, 0);
    v74[0] = off_2A23FA3D8;
    if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(v13, a8))
    {
      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v72, v13, v60, v27, *(v13 + 40), *(v13 + 56), *(v13 + 324), a7, a8, v68, v31, *(v13 + 152), *(v13 + 160), *(v13 + 168), *(v13 + 176), *(v13 + 180), *(v13 + 184), *(v13 + 236) != 0, 0);
      if (v31 == 1)
      {
        if (*(a10 + 16))
        {
          v42 = *(v73 + 88);
          if (((a4 / v24) & 0xF) != 0)
          {
            v43 = 0;
            v44 = v34 + 1;
            v45 = 1;
            do
            {
              AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMTextureToBuffer((a1 + 1), a2, v43 * a5 + v67, a6, v72, v77, v28, v42, a4);
              v81 = v44;
              v43 = v45;
              ++v44;
              ++v45;
            }

            while (*(a10 + 16) > v43);
          }

          else
          {
            v52 = 0;
            v53 = v62 | v41;
            v54 = v34 + 1;
            v55 = 1;
            v56 = v53 >> 15;
            do
            {
              v57 = v52 * a5 + v67;
              if (v56 || (v57 & 0xF) != 0)
              {
                AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMTextureToBuffer((a1 + 1), a2, v57, a6, v72, v77, v28, v42, a4);
              }

              else
              {
                v76 = 0;
                v75 = v52 * a5 + v67;
                (*(v74[0] + 16))(v74);
                v71 = 0;
                AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMTextureToTexture(a1 + 1, 0, a2, v74, a6, a6, v72, &v71, 0, v77);
              }

              v81 = v54;
              v52 = v55;
              ++v54;
              ++v55;
            }

            while (*(a10 + 16) > v52);
          }
        }
      }

      else
      {
        fwrite("AGX: copyTextureToBuffer: blit format is multi sampled\n", 0x37uLL, 1uLL, *MEMORY[0x29EDCA610]);
      }

      AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v72);
    }

    else if (*(v13 + 236))
    {
      v76 = 0;
      v75 = v67;
      AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::texBaseAddressesUpdated(v74);
      AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMSparseMiptail((a1 + 1), a2, v74, 0, 0, a6, v13, a7, a8);
    }

    else if (*(a10 + 16))
    {
      v46 = 0;
      v47 = *(*(v13 + 208) + v68 + 88);
      v48 = 1;
      do
      {
        GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v13, a7, *(v13 + 144) + a8, v34, v68);
        AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyBufferToBufferImpl(a1, a2, a3 + v46 * a5 + *(a2 + 72 + *MEMORY[0x29EDC5638]), a6, GPUVirtualAddress, v47);
        ++v34;
        v46 = v48++;
      }

      while (*(a10 + 16) > v46);
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v74);
    return;
  }

  if (v30 != 9)
  {
    goto LABEL_21;
  }

  v50 = *a10 * v24;
  v51 = (*(a6 + v14 + 72) + *a9 * v24);

  AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyBufferToBufferImpl(a1, a2, v67, a6, v51, v50);
}

BOOL ___ZN3AGX11BlitContextINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE20copyTextureToTextureEP20AGXG18PFamilyTexturejjS8_jjjj_block_invoke_246(uint64_t a1, unint64_t **a2, unint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5 == *a2)
  {
    return 0;
  }

  v6 = (v5 - *a2) >> 4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v4[2 * (v6 >> 1)];
    v9 = v8[1];
    v10 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v9 <= a3)
    {
      v4 = v10;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  return v4 != v5 && *v4 < a4;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange*,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange*>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u64[0] < *(a1 + 16))
          {
            v29 = *v6;
            *v6 = *v4;
            *v4 = v29;
          }

          return 1;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
        *v4 = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_48:
      if (*(a1 + 16) < *a1)
      {
        v43 = *a1;
        *a1 = *v6;
        *v6 = v43;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange)#1} &,AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange*,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u64[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_45;
    }

    if (v19 >= v17)
    {
      v40 = *a1;
      *a1 = *v6;
      *v6 = v40;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_45;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_45:
    if (v20->n128_u64[0] >= v18->n128_u64[0])
    {
      return 1;
    }

    v41 = *v18;
    *v18 = *v20;
    *v20 = v41;
    if (v18->n128_u64[0] >= v6->n128_u64[0])
    {
      return 1;
    }

    v42 = *v6;
    *v6 = *v18;
    *v18 = v42;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u64[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v30 = *a1;
      *a1 = *v13;
      *v13 = v30;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_32;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_32:
  v31 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    v35 = *v31;
    v36 = v11->n128_u64[0];
    v37 = v31->n128_u64[0];
    if (v31->n128_u64[0] < v36)
    {
      v38 = v32;
      do
      {
        *(a1 + v38 + 48) = *(a1 + v38 + 32);
        if (v38 == -32)
        {
          v34 = a1;
          goto LABEL_35;
        }

        v39 = *(a1 + v38 + 16);
        v38 -= 16;
      }

      while (v37 < v39);
      v34 = (a1 + v38 + 48);
LABEL_35:
      *v34 = v35;
      if (++v33 == 8)
      {
        return &v31[1] == a2;
      }
    }

    v11 = v31;
    v32 += 16;
    if (++v31 == a2)
    {
      return 1;
    }
  }
}

void std::vector<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange,std::allocator<AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTexture(AGXG18PFamilyTexture *,unsigned int,unsigned int,AGXG18PFamilyTexture *,unsigned int,unsigned int,unsigned int,unsigned int)::MemRange>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillTexture(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t *a5, uint64_t a6, unint64_t a7)
{
  LODWORD(v195) = a3;
  v228 = *MEMORY[0x29EDCA608];
  v12 = *(a2 + 592);
  v226 = a2;
  v227 = *(v12 + 592);
  v13 = *(v12 + 584);
  v192 = a4;
  if (v13 && (v14 = *(v13 + 1304)) != 0)
  {
    v15 = 1;
    if (v14 > v195)
    {
      if (*(v12 + 57))
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v12 + 208);
  v17 = *(v16 + 88);
  v18 = *(v12 + 112);
  v20 = v17 == 16 && v18 == 2;
  TextureViewFormat = AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getTextureViewFormat(*(v16 + 88), *(v12 + 112), *(v12 + 32), 0, v15, v20);
  v197 = v22;
  v23 = *(v12 + 24);
  if (v23 <= 9)
  {
    if (((1 << v23) & 0x17C) != 0)
    {
LABEL_18:
      a5[5] = 1;
      goto LABEL_19;
    }

    if (((1 << v23) & 3) != 0)
    {
      a5[4] = 1;
      goto LABEL_18;
    }

    if (v23 == 9)
    {
      v49 = v18 * v17;
      v50 = v49 * *a5;
      v51 = a5[3] * v49;

      AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::fillBuffer(a1, a2, v50, v51, a6, a7);
      return;
    }
  }

LABEL_19:
  v24 = *(v12 + 236);
  if (v24)
  {
    v25 = 1;
  }

  else
  {
    v25 = v13 == 0;
  }

  *&v196 = a5;
  if (v25 || *(v13 + 1304) > v195 && *(v12 + 57) - 1 < 2 || *(v13 + 1304) <= v195)
  {
    v29 = v24 != 0;
    v30 = 4;
    if (!(v197 >> 33))
    {
      v30 = 2;
    }

    if (v23 == 7)
    {
      v31 = 7;
    }

    else
    {
      v31 = v30;
    }

    TextureViewForBlit = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(&v214, v12, v31, TextureViewFormat, *(v12 + 40), *(v12 + 56), *(v12 + 324), v192, v195, 0, SHIDWORD(v197), *(v12 + 152), *(v12 + 160), *(v12 + 168), *(v12 + 176), *(v12 + 180), *(v12 + 184), v29, 0);
    v195 = v172;
    v33 = *(v224 + 88);
    MEMORY[0x2A1C7C4A8](TextureViewForBlit);
    v35 = &v172[-v34];
    if (v33 <= a7)
    {
      v37 = v196;
      goto LABEL_43;
    }

    if (v33 >= 2)
    {
      v38 = 0;
      v36 = v33 & 0xFE;
      do
      {
        v39 = *(a6 + (v38 + 1) % a7);
        v40 = &v35[v38];
        *v40 = *(a6 + v38 % a7);
        v40[1] = v39;
        v38 += 2;
      }

      while (v36 != v38);
      v37 = v196;
      if (v36 == v33)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v36 = 0;
      v37 = v196;
    }

    do
    {
      v35[v36] = *(a6 + v36 % a7);
      ++v36;
    }

    while (v33 != v36);
LABEL_42:
    a6 = v35;
LABEL_43:
    v208 = vuzp1q_s32(*(v37 + 24), *v37);
    v209 = 0;
    LODWORD(v210) = 0;
    v41 = *(v37 + 16);
    HIDWORD(v225) = 0;
    {
      LOBYTE(v198) = 0;
      findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", &v198);
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v198;
    }

    if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
    {
      v42 = *(v12 + 584);
      if (v42)
      {
        if (*(v42 + 1304))
        {
          HIDWORD(v225) |= 8u;
        }
      }
    }

    if (*(v37 + 40))
    {
      v43 = BYTE4(v225) & 0xE;
      v44 = 1;
      do
      {
        if (v12 && *(v12 + 112) > 1u)
        {
          v45 = 32 - __clz(v221 - 1);
          if (v221 < 2)
          {
            LOBYTE(v45) = 0;
          }

          v206 = 0;
          LODWORD(v198) = 2;
          DWORD1(v198) = v221;
          *v199 = v197;
          *&v199[4] = v208.i64[0];
          v200 = 0;
          v201 = v208.i32[0] << v45;
          v202 = v208.i32[1];
          v203 = 0;
          *(&v198 + 1) = v208.i64[1];
          v204 = v208.u64[1];
          *v205 = v41 + v44 - 1;
          *&v205[4] = v208.i64[0];
          HIBYTE(v206) = v208.i64[1] != 0;
          AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::render3D(a1, &v226, &v214, 0, 0, 0, a6, v33, &v198, &v225 + 1);
        }

        else
        {
          if (v43)
          {
            if (*(a1 + 4880))
            {
              v47 = *(a1 + 8);
              LODWORD(v198) = 0;
              AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v47 + 24, &v198);
              *(a1 + 2568) = 0;
              *(a1 + 4880) = 0;
            }

            v48 = 1;
          }

          else
          {
            v48 = 2;
          }

          AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(a1, &v226, &v214, 0, 0, 0, 0, &v225 + 1, v41 + v44 - 1, &v208, v197, v33, 0, a6, v48);
        }

        v46 = *(v196 + 40) > v44++;
      }

      while (v46);
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&v214);
    return;
  }

  v194 = TextureViewFormat;
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
    LODWORD(v18) = *(v12 + 112);
    v26 = *(v12 + 584);
    v225 = 0;
    if (!v26)
    {
      v27 = 0;
      v28 = 0;
      HIDWORD(v225) = 0;
      goto LABEL_71;
    }
  }

  else
  {
    v225 = 0;
  }

  AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(v12 + 168), *(v12 + 176), *(v12 + 32), *(v12 + 208), *(v12 + 396), 0, v18, &v225 + 1, &v225);
  v27 = v225;
  v28 = HIDWORD(v225);
  a5 = v196;
LABEL_71:
  v175 = v18 > 2;
  v52 = *(v12 + 128) >> (*(v12 + 144) + v195);
  if (v52 <= 1)
  {
    v52 = 1;
  }

  v53 = *(v12 + 132) >> (*(v12 + 144) + v195);
  if (v53 <= 1)
  {
    v53 = 1;
  }

  v54 = a5[1];
  v55 = (v28 - 1 + *a5) / v28;
  v56 = v27 - 1 + v54;
  v57 = a5[3];
  v58 = a5[4];
  v186 = *a5;
  v187 = v54;
  v59 = v58 + v54;
  v173 = (v27 - 1 + v53) / v27;
  v174 = (v28 - 1 + v52) / v28;
  if (v57 + v186 == v52)
  {
    v60 = (v28 - 1 + v52) / v28;
  }

  else
  {
    v60 = (v57 + v186) / v28;
  }

  if (v59 == v53)
  {
    v61 = (v27 - 1 + v53) / v27;
  }

  else
  {
    v61 = v59 / v27;
  }

  v178 = v55;
  v181 = v56 / v27;
  v182 = v60 - v55;
  if (v60 < v55 || (v188 = v61 - v181, v61 < v181))
  {
    v188 = 0;
    v182 = 0;
  }

  v62 = v194;
  v63 = *(a1 + 4880);
  v177 = v28;
  if (v63)
  {
    v64 = *(a1 + 8);
    v214.i32[0] = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v64 + 24, &v214);
    *(a1 + 2568) = 0;
    *(a1 + 4880) = 0;
    v28 = v177;
    v62 = v194;
  }

  v193.i64[0] = v181 * v27;
  v189 = v61 * v27;
  v190 = v178 * v28;
  v185 = v58 + v187;
  v65 = v60 * v28;
  v184 = v57 + v186;
  if (v57 + v186 > v65 || v186 != v190 || v187 != v193.i64[0] || v185 > v189)
  {
    v66 = 4;
    if (v18 < 2)
    {
      v66 = 2;
    }

    if (*(v12 + 24) == 7)
    {
      v67 = 7;
    }

    else
    {
      v67 = v66;
    }

    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(&v214, v12, v67, v62, *(v12 + 40), *(v12 + 56), *(v12 + 324), v192, v195, 0, v18, *(v12 + 152), *(v12 + 160), *(v12 + 168), *(v12 + 176), *(v12 + 180), *(v12 + 184), *(v12 + 236) != 0, v18 == 4);
    v194 = *(v224 + 88);
    v213 = 0;
    {
      LOBYTE(v198) = 0;
      findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", &v198);
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v198;
    }

    if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
    {
      v68 = *(v12 + 584);
      if (v68)
      {
        if (*(v68 + 1304))
        {
          v213 |= 8u;
        }
      }
    }

    v69 = *(v196 + 40);
    if (v69)
    {
      v191 = *(v196 + 16);
      v70 = v18 == 4;
      v176 = ((v65 << v70) | (v193.i32[0] << v70)) != 0;
      if (v182 && v188)
      {
        v183 = v193.i32[0] << v70;
        v179 = v65 << v70;
        v180 = v189 << v70;
        v71 = 1;
        do
        {
          v72 = v191 + v71 - 1;
          if (v187 != v193.i64[0])
          {
            v73 = *(v196 + 24) << v70;
            v74 = *(v196 + 8);
            v75 = (v193.i32[0] - v74) << v70;
            v76 = *v196 << v70;
            v77 = v74 << v70;
            v208.i64[0] = __PAIR64__(v75, v73);
            v208.i64[1] = __PAIR64__(v77, v76);
            v209 = 0;
            LODWORD(v210) = 0;
            if (v18 == 4)
            {
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(a1, &v226, &v214, 0, 0, 0, 0, &v213, v72, &v208, v197, v194, 0, a6, 1);
            }

            else
            {
              v78 = 32 - __clz(v221 - 1);
              v206 = 0;
              if (v221 < 2)
              {
                LOBYTE(v78) = 0;
              }

              LODWORD(v198) = 2;
              *(&v198 + 4) = __PAIR64__(v76, v221);
              *v199 = v197;
              *&v199[4] = v73;
              *&v199[8] = v75;
              v200 = 0;
              v201 = v73 << v78;
              v202 = v75;
              v203 = 0;
              HIDWORD(v198) = v77;
              v204 = __PAIR64__(v77, v76);
              *v205 = v191 + v71 - 1;
              *&v205[4] = v73;
              *&v205[8] = v75;
              HIBYTE(v206) = (v76 | v77) != 0;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::render3D(a1, &v226, &v214, 0, 0, 0, a6, v194, &v198, &v213);
            }
          }

          if (v185 > v189)
          {
            v79 = *(v196 + 24) << v70;
            v80 = (*(v196 + 32) + *(v196 + 8) - v189) << v70;
            v81 = *v196 << v70;
            v208.i64[0] = __PAIR64__(v80, v79);
            v208.i64[1] = __PAIR64__(v180, v81);
            v209 = 0;
            LODWORD(v210) = 0;
            if (v18 == 4)
            {
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(a1, &v226, &v214, 0, 0, 0, 0, &v213, v72, &v208, v197, v194, 0, a6, 1);
            }

            else
            {
              v82 = 32 - __clz(v221 - 1);
              v206 = 0;
              if (v221 < 2)
              {
                LOBYTE(v82) = 0;
              }

              LODWORD(v198) = 2;
              *(&v198 + 4) = __PAIR64__(v81, v221);
              *v199 = v197;
              *&v199[4] = v79;
              *&v199[8] = v80;
              v200 = 0;
              v201 = v79 << v82;
              v202 = v80;
              v203 = 0;
              HIDWORD(v198) = v180;
              v204 = __PAIR64__(v180, v81);
              *v205 = v191 + v71 - 1;
              *&v205[4] = v79;
              *&v205[8] = v80;
              HIBYTE(v206) = (v81 | v180) != 0;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::render3D(a1, &v226, &v214, 0, 0, 0, a6, v194, &v198, &v213);
            }
          }

          if (v186 != v190)
          {
            v83 = *(v196 + 32) + *(v196 + 8);
            if (v83 >= v225 * v188 + v193.i32[0])
            {
              v84 = v225 * v188;
            }

            else
            {
              v84 = v83 - v193.i32[0];
            }

            v85 = (v190 - *v196) << v70;
            v86 = v84 << v70;
            v87 = *v196 << v70;
            v208.i64[0] = __PAIR64__(v86, v85);
            v208.i64[1] = __PAIR64__(v183, v87);
            v209 = 0;
            LODWORD(v210) = 0;
            if (v18 == 4)
            {
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(a1, &v226, &v214, 0, 0, 0, 0, &v213, v72, &v208, v197, v194, 0, a6, 1);
            }

            else
            {
              v88 = 32 - __clz(v221 - 1);
              v206 = 0;
              if (v221 < 2)
              {
                LOBYTE(v88) = 0;
              }

              LODWORD(v198) = 2;
              *(&v198 + 4) = __PAIR64__(v87, v221);
              *v199 = v197;
              *&v199[4] = v85;
              *&v199[8] = v86;
              v200 = 0;
              v201 = v85 << v88;
              v202 = v86;
              v203 = 0;
              HIDWORD(v198) = v183;
              v204 = __PAIR64__(v183, v87);
              *v205 = v191 + v71 - 1;
              *&v205[4] = v85;
              *&v205[8] = v86;
              HIBYTE(v206) = (v87 | v183) != 0;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::render3D(a1, &v226, &v214, 0, 0, 0, a6, v194, &v198, &v213);
            }
          }

          if (v184 > v65)
          {
            v89 = *(v196 + 32) + *(v196 + 8);
            if (v89 >= v225 * v188 + v193.i32[0])
            {
              v90 = v225 * v188;
            }

            else
            {
              v90 = v89 - v193.i32[0];
            }

            v91 = (*(v196 + 24) + *v196 - v65) << v70;
            v92 = v90 << v70;
            v208.i64[0] = __PAIR64__(v92, v91);
            v208.i64[1] = __PAIR64__(v183, v179);
            v209 = 0;
            LODWORD(v210) = 0;
            if (v18 == 4)
            {
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(a1, &v226, &v214, 0, 0, 0, 0, &v213, v72, &v208, v197, v194, 0, a6, 1);
            }

            else
            {
              v93 = 32 - __clz(v221 - 1);
              v206 = 0;
              if (v221 < 2)
              {
                LOBYTE(v93) = 0;
              }

              LODWORD(v198) = 2;
              *(&v198 + 4) = __PAIR64__(v179, v221);
              *v199 = v197;
              *&v199[4] = v91;
              *&v199[8] = v92;
              v200 = 0;
              v201 = v91 << v93;
              v202 = v92;
              v203 = 0;
              HIDWORD(v198) = v183;
              v204 = __PAIR64__(v183, v179);
              *v205 = v191 + v71 - 1;
              *&v205[4] = v91;
              *&v205[8] = v92;
              HIBYTE(v206) = v176;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::render3D(a1, &v226, &v214, 0, 0, 0, a6, v194, &v198, &v213);
            }
          }

          v46 = *(v196 + 40) > v71++;
        }

        while (v46);
      }

      else
      {
        v193 = vdupq_n_s32(v70);
        if (v18 == 4)
        {
          v94 = 0;
          v95 = 1;
          do
          {
            v208 = vshlq_u32(vuzp1q_s32(*(v196 + 24), *v196), v193);
            v209 = 0;
            LODWORD(v210) = 0;
            AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(a1, &v226, &v214, 0, 0, 0, 0, &v213, v191 + v95 - 1, &v208, v197, v194, 0, a6, v69 - 1 == v94);
            v94 = v95;
            v69 = *(v196 + 40);
            ++v95;
          }

          while (v69 > v94);
        }

        else
        {
          v96 = 1;
          do
          {
            v97 = vshlq_u32(vuzp1q_s32(*(v196 + 24), *v196), v193);
            v208 = v97;
            v98 = 32 - __clz(v221 - 1);
            if (v221 < 2)
            {
              LOBYTE(v98) = 0;
            }

            *&v199[4] = v97.i64[0];
            v202 = v97.i32[1];
            *&v205[4] = v97.i64[0];
            LODWORD(v198) = 2;
            DWORD1(v198) = v221;
            v209 = 0;
            LODWORD(v210) = 0;
            v206 = 0;
            *v199 = v197;
            v200 = 0;
            v201 = v97.i32[0] << v98;
            *(&v198 + 1) = vextq_s8(v97, v97, 8uLL).u64[0];
            v203 = 0;
            v204 = *(&v198 + 1);
            *v205 = v191 + v96 - 1;
            HIBYTE(v206) = v97.i64[1] != 0;
            AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::render3D(a1, &v226, &v214, 0, 0, 0, a6, v194, &v198, &v213);
            v46 = *(v196 + 40) > v96++;
          }

          while (v46);
        }
      }
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(&v214);
  }

  if (v182 && v188)
  {
    v99 = *(*(v12 + 208) + 88);
    if (!*(*(v12 + 208) + 88))
    {
      LOBYTE(v101) = 1;
      goto LABEL_167;
    }

    if (v99 < 8)
    {
      v100 = 0;
      LOBYTE(v101) = 1;
      goto LABEL_165;
    }

    if (v99 >= 0x20)
    {
      v100 = v99 & 0xE0;
      v102 = *a6;
      v103 = *(a6 + 16);
      if (v100 != 32)
      {
        v102 = vorrq_s8(v102, *(a6 + 32));
        v103 = vorrq_s8(v103, *(a6 + 48));
        if (v100 != 64)
        {
          v102 = vorrq_s8(v102, *(a6 + 64));
          v103 = vorrq_s8(v103, *(a6 + 80));
          if (v100 != 96)
          {
            v102 = vorrq_s8(v102, *(a6 + 96));
            v103 = vorrq_s8(v103, *(a6 + 112));
            if (v100 != 128)
            {
              v102 = vorrq_s8(v102, *(a6 + 128));
              v103 = vorrq_s8(v103, *(a6 + 144));
              if (v100 != 160)
              {
                v102 = vorrq_s8(v102, *(a6 + 160));
                v103 = vorrq_s8(v103, *(a6 + 176));
                if (v100 != 192)
                {
                  v102 = vorrq_s8(v102, *(a6 + 192));
                  v103 = vorrq_s8(v103, *(a6 + 208));
                }
              }
            }
          }
        }
      }

      v104 = vorrq_s8(v103, v102);
      v105 = vtstq_s8(v104, v104);
      v105.i8[0] = vmaxvq_u8(v105);
      v101 = v105.i32[0] ^ 1;
      if (v100 == v99)
      {
        goto LABEL_167;
      }

      if ((v99 & 0x18) == 0)
      {
LABEL_165:
        v111 = v99 - v100;
        v112 = (a6 + v100);
        do
        {
          v113 = *v112++;
          LOBYTE(v101) = (v113 == 0) & v101;
          --v111;
        }

        while (v111);
        goto LABEL_167;
      }
    }

    else
    {
      v100 = 0;
      v101 = 1;
    }

    v106 = v100;
    v100 = v99 & 0xF8;
    v107 = vdup_n_s8(v101 ^ 1u);
    v108 = v106 - v100;
    v109 = (a6 + v106);
    do
    {
      v110 = *v109++;
      v107 = vorn_s8(v107, vceqz_s8(v110));
      v108 += 8;
    }

    while (v108);
    LOBYTE(v101) = vmaxv_u8(vcltz_s8(vshl_n_s8(v107, 7uLL))) ^ 1;
    if (v100 != v99)
    {
      goto LABEL_165;
    }

LABEL_167:
    *v114.i64 = (*(*a1 + 16))(a1, 0, 1);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, &v226, 0, v114);
    if (!*(*(*(a1 + 8) + 1912) + 520))
    {
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 0, v115, v116, v117, v118);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a1, 0);
      AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, &v226, 0, v119);
      v120 = *(a1 + 8);
      if (!*(*(v120 + 1912) + 520))
      {
        v121 = *(v120 + 1968) - *(v120 + 1984);
        *(v121 + 140) = 1;
        if ((*(v121 + 136) & 4) != 0)
        {
          **(v120 + 8) = 1;
        }
      }
    }

    v122 = *(*(v12 + 208) + 88);
    isLargeMacroblock = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(v12);
    v124 = *(v12 + 32);
    v208.i32[2] = 18;
    v210 = 0;
    v211 = 0;
    v209 = 0;
    v208.i64[0] = &unk_2A23F6760;
    if (v101)
    {
      v193.i64[0] = 0;
      v125 = 6;
    }

    else
    {
      v126 = v124 & 0xFFFFFFFFFFFFFFFELL;
      v127 = 4 * v122;
      if (!isLargeMacroblock)
      {
        v127 = v122;
      }

      v132 = (v124 - 631) < 2 || v126 == 638 || v126 == 552 || v126 == 640 || (v124 - 633) < 5 || v124 == 630;
      v133 = (8 * v127) | 2;
      if (v132)
      {
        v133 = 42;
      }

      v212 = v133;
      BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(*(a1 + 8) + 1872) + 848), &v208);
      if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 104, BlitProgramVariant[172], BlitProgramVariant[175], BlitProgramVariant[179], 4 * BlitProgramVariant[798], 0, 32, v135, v136, v137, v138, v139))
      {
        AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 104, *(a1 + 96) + 336, 0);
      }

      v193.i64[0] = BlitProgramVariant;
      v140 = BlitProgramVariant[530];
      do
      {
        IOGPUResourceListAddResource();
        v140 &= ~(1 << __clz(__rbit32(v140)));
      }

      while (v140);
      v125 = v212 & 0xFFFFF800 | 6;
    }

    v212 = v125;
    v141 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(*(a1 + 8) + 1872) + 848), &v208);
    if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 104, v141[172], v141[175], v141[179], 4 * v141[798], 0, 32, v142, v143, v144, v145, v146))
    {
      AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 104, *(a1 + 96) + 336, 0);
    }

    LODWORD(v194) = v177 << v175;
    v197 = v141;
    v147 = v141[530];
    do
    {
      IOGPUResourceListAddResource();
      v147 &= ~(1 << __clz(__rbit32(v147)));
    }

    while (v147);
    v148 = *(a1 + 8);
    v149 = v148[21] + 48;
    if (v149 > v148[20])
    {
      v150 = v196;
      v151 = v192;
      v152 = v195;
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v148 + 3, 3, 0))
      {
        goto LABEL_203;
      }

      v149 = v148[21] + 48;
      if (v149 > v148[20])
      {
        abort();
      }
    }

    v148[22] = v149;
    v150 = v196;
    v151 = v192;
    v152 = v195;
LABEL_203:
    v153 = *(a1 + 8);
    v154 = *(v153 + 168);
    v155 = *(v153 + 184);
    *(v153 + 168) = v154 + 48;
    v213 = 0;
    if (v101)
    {
      v156 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(v12);
      v157 = *(v12 + 112);
      v158 = v173;
      *(v154 + 20) = v174;
      *(v154 + 24) = v158;
      v159 = v181;
      *(v154 + 28) = v178;
      *(v154 + 32) = v159;
      *(v154 + 40) = v157;
      *(v154 + 47) = *(v12 + 396) == 2;
      if (v156)
      {
        v160 = 1;
      }

      else if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::is16x8Macroblock(v12))
      {
        v160 = 2;
      }

      else
      {
        v160 = 0;
      }

      *(v154 + 46) = v160;
      *(v154 + 16) = 0;
    }

    else
    {
      AGX::BlitDispatchParametersGen2_2<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupFastClearArguments(v154, &v213, a6, v12, v152, 0, v178, v181, v174, v173);
    }

    v161 = v155 + v154;
    v204 = 0;
    *v205 = 0;
    v203 = 0;
    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v214 = 0u;
    v221 = 0;
    v222 = v161;
    v207 = 0;
    HIDWORD(v206) = 0;
    *v199 = 0x100000001;
    v162 = xmmword_29D2F1710;
    v198 = xmmword_29D2F1710;
    *&v199[8] = v182 << (2 * (v194 == 32));
    v200 = v188;
    v163 = 1;
    v201 = 1;
    if (*(v150 + 40))
    {
      v196 = xmmword_29D2F1710;
      v164 = *(v150 + 16);
      v165 = 1;
      do
      {
        GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(v12 + 584), v151, *(v12 + 144) + v152, v164 + v165 - 1, 0);
        AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitComputeProgramVariantArguments((a1 + 48), (*(a1 + 8) + 24), v197, &v214, &v198, 0, 1, 1, (*(a1 + 8) + 1940));
        v166 = *(v150 + 40);
        v46 = v166 > v165++;
      }

      while (v46);
      v163 = v166 == 0;
      v162 = v196;
    }

    if ((v101 & 1) == 0)
    {
      v204 = 0;
      *v205 = 0;
      v203 = 0;
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      v215 = 0u;
      v216 = 0u;
      v214 = 0u;
      v221 = 0;
      v222 = v161;
      v207 = 0;
      HIDWORD(v206) = 0;
      *v199 = 0x100000001;
      v198 = v162;
      *&v199[8] = v213 * v182;
      v200 = v188;
      v201 = 1;
      if (!v163)
      {
        v167 = *(v150 + 16);
        v168 = 1;
        do
        {
          GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v12, v151, *(v12 + 144) + v152, v167 + v168 - 1, 0);
          AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitComputeProgramVariantArguments((a1 + 48), (*(a1 + 8) + 24), v193.i64[0], &v214, &v198, 0, 1, 1, (*(a1 + 8) + 1940));
          v46 = *(v150 + 40) > v168++;
        }

        while (v46);
      }
    }

    v169 = *(a1 + 8);
    v214.i32[0] = 0;
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v169 + 24, &v214);
    v170 = *(a1 + 8);
    v214.i32[0] = 0;
    agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v170 + 24, 4, 0, 0, 0, &v214);
    v171 = *(v170 + 776);
    *v171 = 1610614018;
    *(v170 + 776) = v171 + 1;
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v208.i64[0] = &unk_2A23F67A0;
    if (v209)
    {
      v210 = v209;
      operator delete(v209);
    }
  }
}

void sub_29CCF196C(_Unwind_Exception *exception_object)
{
  v1[38] = &unk_2A23F67A0;
  v3 = v1[40];
  if (v3)
  {
    v1[41] = v3;
    operator delete(v3);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::fillTexture(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, _BYTE *a6, size_t a7)
{
  v52 = *MEMORY[0x29EDCA608];
  v12 = *(a2 + 592);
  v13 = *(v12 + 584);
  v44 = a3;
  LODWORD(v45) = a4;
  if (v13 && (v14 = *(v13 + 1304)) != 0)
  {
    v15 = 1;
    if (v14 > a3)
    {
      if (*(v12 + 57))
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v12 + 208);
  v17 = *(v16 + 88);
  v18 = *(v12 + 112);
  v20 = v17 == 16 && v18 == 2;
  TextureViewFormat = AGX::BlitUtil::getTextureViewFormat(*(v16 + 88), *(v12 + 112), *(v12 + 32), 0, v15, v20);
  v23 = v21;
  v24 = *(v12 + 24);
  if (v24 > 9)
  {
    goto LABEL_19;
  }

  if (((1 << v24) & 0x17C) != 0)
  {
LABEL_18:
    *(a5 + 40) = 1;
    goto LABEL_19;
  }

  if (((1 << v24) & 3) != 0)
  {
    *(a5 + 32) = 1;
    goto LABEL_18;
  }

  if (v24 != 9)
  {
LABEL_19:
    v25 = 4;
    if (!(v21 >> 33))
    {
      v25 = 2;
    }

    if (v24 == 7)
    {
      v26 = 7;
    }

    else
    {
      v26 = v25;
    }

    TextureViewForBlit = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v50, v12, v26, TextureViewFormat, *(v12 + 40), *(v12 + 56), *(v12 + 324), v45, v44, 0, SHIDWORD(v21), *(v12 + 152), *(v12 + 160), *(v12 + 168), *(v12 + 176), *(v12 + 180), *(v12 + 184), *(v12 + 236) != 0, 0);
    v28 = *(v50[26] + 88);
    MEMORY[0x2A1C7C4A8](TextureViewForBlit);
    v30 = &v43 - v29;
    v45 = v31;
    if (v28 <= a7)
    {
      goto LABEL_32;
    }

    if (v28 >= 2)
    {
      v33 = 0;
      v32 = v28 & 0xFE;
      do
      {
        v34 = a6[(v33 + 1) % a7];
        v35 = &v30[v33];
        *v35 = a6[v33 % a7];
        v35[1] = v34;
        v33 += 2;
      }

      while (v32 != v33);
      if (v32 == v28)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v32 = 0;
    }

    do
    {
      v30[v32] = a6[v32 % a7];
      ++v32;
    }

    while (v28 != v32);
LABEL_31:
    a6 = v30;
LABEL_32:
    v47 = vuzp1q_s32(*(a5 + 24), *a5);
    v48 = 0;
    v49 = 0;
    v36 = *(a5 + 16);
    v46 = 0;
    {
      v51 = 0;
      findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", &v51);
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v51;
    }

    if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
    {
      v37 = *(v12 + 584);
      if (v37)
      {
        if (*(v37 + 1304))
        {
          v46 |= 8u;
        }
      }
    }

    if (*(a5 + 40))
    {
      v38 = 1;
      do
      {
        AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBufferToTexture((a1 + 8), a2, v50, 0, 0, a6, v47.i32, v23, v28, 0, v36 + v38 - 1, &v46);
      }

      while (*(a5 + 40) > v38++);
    }

    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v50);
    return;
  }

  v40 = v18 * v17;
  v41 = *(a5 + 24) * v40;
  v42 = *(a2 + *MEMORY[0x29EDC5638] + 72) + *a5 * v40;

  AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBuffer(a1 + 8, a2, v42, 0, 0, v41, a6, a7);
}

void sub_29CCF3714(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::function<void ()(AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses> *&)>::~function(va);
  std::function<void ()(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding> *&)>::~function(va1);
  _Unwind_Resume(a1);
}

void AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::generateMipmapsForTexture(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 592);
  if (*(v2 + 168))
  {
    return;
  }

  v3 = *(v2 + 32);
  v4 = (v3 - 624) > 0x1A || ((1 << (v3 - 112)) & 0x400000F) == 0;
  if (!v4 || (v3 - 550) < 2 || (*(*(v2 + 208) + 60) & 3) == 0)
  {
    return;
  }

  v6 = *(v2 + 176);
  v64 = *(v2 + 180);
  v7 = *(v2 + 184);
  if (*(v2 + 24) == 7)
  {
    v8 = 7;
  }

  else
  {
    v8 = 2;
  }

  v9 = *(v2 + 108);
  v10 = *(v2 + 160);
  v62 = *(v2 + 152);
  v71 = a2;
  v11 = v2;
  v72 = *(v2 + 592);
  v69 = 1;
  v65 = v8;
  v66 = v7;
  {
    v8 = v65;
    if (v50)
    {
      v68[0].i8[0] = 0;
      findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", v68);
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v68[0].i8[0];
      v8 = v65;
    }
  }

  v51 = v9 - 1;
  v12 = v11;
  if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression == 1)
  {
    v13 = *(v11 + 584);
    if (v13)
    {
      if (*(v13 + 1304))
      {
        v69 |= 8u;
      }
    }
  }

  v14 = *(v11 + 112);
  v15 = v3;
  v63 = v6;
  if (v14 <= 1 && *(v11 + 236))
  {
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
      v8 = v65;
    }

    if (v9 != 1)
    {
      v16 = 0;
      v58 = (v11 + 396);
      v60 = v3;
      v17 = v69 & 0xE;
      do
      {
        v18 = 0;
        v56 = v16++;
        if (*(v12 + 136) >> (*(v12 + 144) + v16) <= 1u)
        {
          v19 = 1;
        }

        else
        {
          v19 = *(v12 + 136) >> (*(v12 + 144) + v16);
        }

        v54 = v16;
        while (1)
        {
          v20 = *v58 & 0xFF00;
          if ((*v58 & 0x10000) != 0 || v20 == 1024)
          {
            break;
          }

          if (v18)
          {
            goto LABEL_24;
          }

LABEL_37:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v68, v12, v8, v60, *(v12 + 40), *(v12 + 56), *(v12 + 324), v18, v56, 0, 0, v62, v10, 0, v63, v64, v66, 0, 0);
          v16 = v54;
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v67, v11, v65, v60, *(v12 + 40), *(v12 + 56), *(v11 + 324), v18, v54, 0, 0, v62, v10, 0, v63, v64, v66, 0, 0);
          v22 = 0;
          do
          {
            if (v17)
            {
              if (*(a1 + 4880))
              {
                v23 = *(a1 + 8);
                v70 = 0;
                AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v23 + 24, &v70);
                *(a1 + 2568) = 0;
                *(a1 + 4880) = 0;
              }

              v24 = 1;
            }

            else
            {
              v24 = 2;
            }

            AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(a1, &v71, v67, 0, &v71, v68, 0, &v69, v22++, 0, 0, 0, 0, 0, v24);
          }

          while (v19 != v22);
          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v67);
          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v68);
          ++v18;
          v8 = v65;
          v12 = v11;
        }

        if (v20 == 1024)
        {
          v21 = 6 * *(v12 + 392);
        }

        else
        {
          v21 = *(v12 + 392);
        }

        if (v18 < v21)
        {
          goto LABEL_37;
        }

LABEL_24:
        ;
      }

      while (v16 != v51);
    }
  }

  else
  {
    if (*(v11 + 24) == 7)
    {
      if (**MEMORY[0x29EDC56B0])
      {
        IOGPUDeviceTraceEvent();
        v8 = v65;
      }

      if (v9 == 1)
      {
        return;
      }

      v25 = 0;
      v57 = (v11 + 396);
      v61 = v3;
      v53 = v10;
LABEL_51:
      v26 = 0;
      v59 = v25 + 1;
      if (*(v11 + 136) >> (*(v11 + 144) + v25 + 1) <= 1u)
      {
        v27 = 1;
      }

      else
      {
        v27 = *(v11 + 136) >> (*(v11 + 144) + v25 + 1);
      }

      for (i = v25; ; v25 = i)
      {
        v28 = *v57 & 0xFF00;
        if ((*v57 & 0x10000) != 0 || v28 == 1024)
        {
          if (v28 == 1024)
          {
            v29 = 6 * *(v11 + 392);
          }

          else
          {
            v29 = *(v11 + 392);
          }

          if (v26 >= v29)
          {
LABEL_50:
            v25 = v59;
            if (v59 == v51)
            {
              return;
            }

            goto LABEL_51;
          }
        }

        else if (v26)
        {
          goto LABEL_50;
        }

        v30 = v8;
        AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v68, v11, v8, v15, *(v11 + 40), *(v11 + 56), *(v11 + 324), v26, v25, 0, 0, v62, v10, 0, v63, v64, v66, 0, 0);
        v10 = v53;
        v15 = v61;
        AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v67, v11, v30, v61, *(v11 + 40), *(v11 + 56), *(v11 + 324), v26, v59, 0, 0, v62, v53, 0, v63, v64, v66, 0, 0);
        v31 = 0;
        do
        {
          v70 = 1;
          AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::renderTexture(a1, &v71, v67, &v71, v68, &v70, v31, 0, 0);
          v31 = (v31 + 1);
        }

        while (v27 != v31);
        AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v67);
        AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v68);
        ++v26;
        v8 = v65;
      }
    }

    v32 = *(v11 + 396);
    v33 = v32 & 0xFF00;
    if ((v32 & 0x10000) != 0 || v33 == 1024)
    {
      v34 = v33 == 1024 ? 6 * *(v11 + 392) : *(v11 + 392);
      if (v34 > 1)
      {
        v8 = 3;
      }
    }

    if (*(v11 + 584))
    {
      v68[0].i32[0] = 0;
      v67[0] = 0;
      v35 = v8;
      AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(v11 + 168), *(v11 + 176), *(v11 + 32), *(v11 + 208), v32, 0, v14, v68, v67);
      v36 = v68[0].i32[0];
      if (v68[0].i32[0] <= v67[0])
      {
        v36 = v67[0];
      }

      v37 = __clz(v36 - 1) - 27;
      if (v36 >= 2)
      {
        v38 = v37;
      }

      else
      {
        v38 = 5;
      }

      v8 = v35;
    }

    else
    {
      v38 = 5;
    }

    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(v68, v11, v8, v3, *(v11 + 40), *(v11 + 56), *(v11 + 324), 0, 0, 0, 0, v62, v10, 0, v6, v64, v66, 1u, 0);
    v39 = v52;
    if (v52)
    {
      v40 = 0;
      while (1)
      {
        v41 = v40 + 1;
        v42 = vmax_u32(vshl_u32(*(v11 + 128), vneg_s32(vdup_n_s32(v40 + 1 + *(v11 + 144)))), 0x100000001);
        v43 = v42.i32[0] <= v42.i32[1] ? v42.i32[1] : v42.i32[0];
        if (v43 < 0x21)
        {
          break;
        }

        v44 = __clz(__rbit32(v42.u32[0]));
        v45 = __clz(__rbit32(v42.u32[1]));
        if (v42.i32[0] >> v44 == 1)
        {
          v46 = v38;
        }

        else
        {
          v46 = v44;
        }

        if (v42.i32[1] >> v45 == 1)
        {
          v47 = v38;
        }

        else
        {
          v47 = v45;
        }

        if (v47 >= v46)
        {
          v48 = v46;
        }

        else
        {
          v48 = v47;
        }

        if (v38 < v48)
        {
          v48 = v38;
        }

        if (v39 - v40 - 1 >= v48)
        {
          v49 = v48;
        }

        else
        {
          v49 = v39 - v40 - 1;
        }

        AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::renderMRCDownsample(a1);
        v40 = v41 + v49;
        v39 = v52;
        if (v41 + v49 >= v52)
        {
          goto LABEL_104;
        }
      }

      AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::renderMRCDownsample(a1);
    }

LABEL_104:
    AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v68);
  }
}

uint64_t AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::optimizeContentsForUncompressedAccess(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v71 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 592);
  v5 = *(v4 + 584);
  if (*(v4 + 48))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v7 = a4;
    if (*(v5 + 1304) > a4 && !*(v4 + 57))
    {
      v8 = result;
      v69 = a2;
      v70 = *(v4 + 592);
      v9 = *(v4 + 144);
      v10 = *(v4 + 132);
      v11 = *(v4 + 128) >> v9;
      if (v11 <= 1)
      {
        v11 = 1;
      }

      v61 = v11;
      if (v10 >> v9 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v10 >> v9;
      }

      v13 = *(v4 + 136);
      v14 = v13 >> v9;
      if (v13 >> v9 <= 1)
      {
        v14 = 1;
      }

      v59 = v14;
      v60 = v12;
      v15 = *(v4 + 396) & 0xFF00;
      v43 = v5;
      if ((*(v4 + 396) & 0x10000) != 0 || v15 == 1024)
      {
        v16 = *(v4 + 392);
        if (v15 == 1024)
        {
          v16 *= 6;
        }
      }

      else
      {
        v16 = 1;
      }

      v62 = *(v4 + 24);
      v17 = v62 - 1;
      if (v62 - 1) <= 7 && ((0xB5u >> v17))
      {
        v62 = qword_29D2F4698[v17];
      }

      v18 = *(v4 + 208);
      if (*(v18 + 24))
      {
        v19 = 0;
        v20 = v13 >> (v9 + a4);
        v57 = *(v4 + 140);
        v58 = *(v4 + 236);
        v21 = v57 - a4;
        v56 = *(v4 + 40);
        v42 = *(v4 + 112);
        if (!v58)
        {
          v16 = 1;
          v21 = 1;
        }

        v54 = v21;
        v55 = v16;
        if (v58)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        v53 = v22;
        v51 = *(v4 + 160);
        v52 = *(v4 + 152);
        if (v20 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v20;
        }

        v50 = *(v4 + 168);
        v48 = *(v4 + 180);
        v49 = *(v4 + 176);
        v47 = *(v4 + 184);
        v45 = *(v4 + 232);
        v46 = *(v4 + 241);
        v44 = *(v4 + 408);
        do
        {
          v24 = *(v4 + 584);
          if (v24 && *(v24 + 1304) > v7)
          {
            if (*(v4 + 57))
            {
              v25 = 2;
            }

            else
            {
              v25 = 1;
            }
          }

          else
          {
            v25 = 1;
          }

          TextureViewFormat = AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getTextureViewFormat(*(v18 + v19 + 88), v42, *(v4 + 32), v19, v25, 0);
          v28 = TextureViewFormat - 1;
          v29 = &texFormatUnsupported;
          if ((TextureViewFormat - 1) <= 0x289)
          {
            v29 = *(&off_29F342380 + v28);
          }

          v30 = HIDWORD(v26);
          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v68, *(v4 + 8), 0, v53, v62, v29, TextureViewFormat, v56, 0.0, 0, *(v4 + 56), *(v4 + 324), 0, 84148994, v61, v60, v59, v57, SHIDWORD(v26), v55, v52, v58, v46, v51, v50, v49, v48, v47, a4, v54, v45, v44, *(v4 + 409), v40, 0);
          v68[0] = off_2A23FA3D8;
          v31 = &texFormatUnsupported;
          if (v28 < 0x28A)
          {
            v31 = *(&off_29F342380 + v28);
          }

          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v67, *(v4 + 8), 0, v53, v62, v31, TextureViewFormat, v56, 0.0, 0, *(v4 + 56) | 0x10, *(v4 + 324), 0, 84148994, v61, v60, v59, v57, v30, v55, v52, v58, v46, v51, v50, v49, v48, v47, a4, v54, v45, v44, *(v4 + 409), v41, 0);
          v67[0] = off_2A23FA3D8;
          GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v4, a3, 0, 0, v19);
          v33 = v68[73];
          v34 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v43 + 648 * v19, a3, 0, 0, 0);
          v33[39] = 0;
          v33[9] = v34;
          (*(*v33 + 16))(v33);
          if (v33[168] >= 2uLL)
          {
            v35 = v33[167];
            v33[120] = v35;
            v33[90] = v35 + v34;
            (*(v33[81] + 16))();
          }

          v36 = v67[73];
          v37 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v43 + 648 * v19, a3, 0, 0, 0);
          v36[39] = 0;
          v36[9] = v37;
          (*(*v36 + 16))(v36);
          if (v36[168] >= 2uLL)
          {
            v38 = v36[167];
            v36[120] = v38;
            v36[90] = v38 + v37;
            (*(v36[81] + 16))();
          }

          v68[39] = 0;
          v68[9] = GPUVirtualAddress;
          (*(*v68 + 16))(v68);
          v67[39] = 0;
          v67[9] = GPUVirtualAddress;
          (*(v67[0] + 16))(v67);
          v7 = a4;
          AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getTextureViewForBlit(v66, v4, a4, v19);
          {
            LOBYTE(v65) = 0;
            findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", &v65);
            AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v65;
          }

          v39 = 0;
          do
          {
            if (v4 && *(v4 + 112) > 1u)
            {
              v65 = 0;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::renderTexture(v8, &v69, v67, &v69, v68, &v65, v39, 0, 0);
            }

            else
            {
              v65 = 0;
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(v8, &v69, v67, 0, &v69, v68, 0, &v65, v39, 0, 0, 0, 0, 0, 2);
            }

            v39 = (v39 + 1);
          }

          while (v23 != v39);
          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v66);
          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v67);
          result = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v68);
          ++v19;
          v18 = *(v4 + 208);
        }

        while (v19 < *(v18 + 24));
      }
    }
  }

  return result;
}

uint64_t AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::optimizeContentsForUncompressedAccess(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a2 + 592);
  v43 = *(v4 + 584);
  if (*(v4 + 48))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v4 + 584) == 0;
  }

  if (!v5)
  {
    v6 = a4;
    if (*(v43 + 1304) > a4 && !*(v4 + 57))
    {
      v8 = result;
      v9 = *(v4 + 144);
      v10 = *(v4 + 136);
      v11 = v10 >> v9;
      if (v10 >> v9 <= 1)
      {
        v11 = 1;
      }

      v61 = v11;
      v12 = *(v4 + 396) & 0xFF00;
      if ((*(v4 + 396) & 0x10000) != 0 || v12 == 1024)
      {
        v13 = *(v4 + 392);
        if (v12 == 1024)
        {
          v13 *= 6;
        }
      }

      else
      {
        v13 = 1;
      }

      v62 = *(v4 + 24);
      v14 = v62 - 1;
      if (v62 - 1) <= 7 && ((0xB5u >> v14))
      {
        v62 = qword_29D2F4698[v14];
      }

      v15 = *(v4 + 208);
      if (*(v15 + 24))
      {
        v16 = 0;
        v60 = *(v4 + 40);
        v17 = *(v4 + 236);
        v42 = *(v4 + 112);
        v18 = v10 >> (v9 + a4);
        v19 = vmax_u32(vshl_u32(*(v4 + 128), vneg_s32(vdup_n_s32(v9))), 0x100000001);
        v58 = *(v4 + 140);
        v59 = v17;
        if (!v17)
        {
          v13 = 1;
        }

        v57 = v13;
        if (v17)
        {
          v20 = v58 - a4;
        }

        else
        {
          v20 = 1;
        }

        v56 = v20;
        v54 = *(v4 + 160);
        v55 = *(v4 + 152);
        v53 = *(v4 + 168);
        v51 = *(v4 + 180);
        v52 = *(v4 + 176);
        v50 = *(v4 + 184);
        v48 = *(v4 + 232);
        v49 = *(v4 + 241);
        if (v17)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v18 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v18;
        }

        v46 = v19.i32[0];
        v47 = v21;
        v64 = v19;
        v44 = *(v4 + 408);
        v45 = v19.u32[1];
        do
        {
          v23 = *(v4 + 584);
          if (v23 && *(v23 + 1304) > v6)
          {
            if (*(v4 + 57))
            {
              v24 = 2;
            }

            else
            {
              v24 = 1;
            }
          }

          else
          {
            v24 = 1;
          }

          TextureViewFormat = AGX::BlitUtil::getTextureViewFormat(*(v15 + v16 + 88), v42, *(v4 + 32), v16, v24, 0);
          v27 = HIDWORD(v25);
          v28 = TextureViewFormat - 1;
          v29 = &texFormatUnsupported;
          if ((TextureViewFormat - 1) <= 0x289)
          {
            v29 = *(&off_29F342380 + v28);
          }

          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v70, *(v4 + 8), 0, v47, v62, v29, TextureViewFormat, v60, 0.0, 0, *(v4 + 56), *(v4 + 324), 0, 84148994, v46, v45, v61, v58, SHIDWORD(v25), v57, v55, v59, v49, v54, v53, v52, v51, v50, v6, v56, v48, v44, *(v4 + 409), v39, 0);
          v70[0] = off_2A23FA3D8;
          v30 = &texFormatUnsupported;
          if (v28 <= 0x289)
          {
            v30 = *(&off_29F342380 + v28);
          }

          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v69, *(v4 + 8), 0, v47, v62, v30, TextureViewFormat, v60, 0.0, 0, *(v4 + 56) | 0x10, *(v4 + 324), 0, 84148994, v46, v45, v61, v58, v27, v57, v55, v59, v49, v54, v53, v52, v51, v50, v6, v56, v48, v44, *(v4 + 409), v40, 0);
          v69[0] = off_2A23FA3D8;
          GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v4, a3, 0, 0, v16);
          v32 = v70[73];
          v33 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v43 + 648 * v16, a3, 0, 0, 0);
          v32[39] = 0;
          v32[9] = v33;
          (*(*v32 + 16))(v32);
          if (v32[168] >= 2uLL)
          {
            v34 = v32[167];
            v32[120] = v34;
            v32[90] = v34 + v33;
            (*(v32[81] + 16))();
          }

          v35 = v69[73];
          v36 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v43 + 648 * v16, a3, 0, 0, 0);
          v35[39] = 0;
          v35[9] = v36;
          (*(*v35 + 16))(v35);
          if (v35[168] >= 2uLL)
          {
            v37 = v35[167];
            v35[120] = v37;
            v35[90] = v37 + v36;
            (*(v35[81] + 16))();
          }

          v70[39] = 0;
          v70[9] = GPUVirtualAddress;
          (*(v70[0] + 16))(v70);
          v69[39] = 0;
          v69[9] = GPUVirtualAddress;
          (*(v69[0] + 16))(v69);
          v6 = a4;
          AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getTextureViewForBlit(v68, v4, a4, v16);
          {
            v66[0].i8[0] = 0;
            findEnvVarNum<BOOL>("AGX_DISABLE_PBE_COMPRESSION", v66);
            AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::disablePBECompressionOnUICC(void)::disablePBECompression = v66[0].i8[0];
          }

          for (i = 0; i != v22; ++i)
          {
            v66[0] = v64;
            v66[1] = 0;
            v66[2] = 0;
            v67 = i;
            v65 = 0;
            AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMTextureToTexture((v8 + 8), a2, a2, v69, a2, a2, v70, &v65, i, v66);
          }

          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v68);
          AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v69);
          result = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v70);
          ++v16;
          v15 = *(v4 + 208);
        }

        while (v16 < *(v15 + 24));
      }
    }
  }

  return result;
}

void AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::optimizeContentsForCompressedAccess(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 592);
  if ((!*(v4 + 48) || (*(v4 + 40) & 2) != 0) && *(v4 + 584))
  {
    v5 = *(v4 + 396) & 0xFF00;
    if ((*(v4 + 396) & 0x10000) != 0 || v5 == 1024)
    {
      if (v5 == 1024)
      {
        v6 = 6 * *(v4 + 392);
      }

      else
      {
        v6 = *(v4 + 392);
      }

      v16 = v6;
      if (!v6)
      {
        return;
      }
    }

    else
    {
      v16 = 1;
    }

    v17 = *(v4 + 108);
    if (v17)
    {
      v7 = 0;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          v9 = *(v4 + 584);
          if (v9 && *(v9 + 1304) > i && !*(v4 + 57))
          {
            v10 = *(v4 + 136) >> (*(v4 + 144) + i);
            if (v10 <= 1)
            {
              v11 = 1;
            }

            else
            {
              v11 = v10;
            }

            v12 = *(*(*(a2 + 592) + 208) + 24);
            if (v12)
            {
              v13 = 0;
              v14 = vmax_u32(vshl_u32(*(v4 + 128), vneg_s32(vdup_n_s32(*(v4 + 144) + i))), 0x100000001);
              *&v15 = v14.u32[0];
              *(&v15 + 1) = v14.u32[1];
              v18 = v15;
              do
              {
                v23 = 0uLL;
                v24 = 0;
                v21 = 0uLL;
                v22 = 0;
                v19 = v18;
                v20 = v11;
                AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::copyTextureToTextureImpl(a1, a2, v13, v7, i, &v23, a2, v13, v7, i, &v21, &v19);
                ++v13;
              }

              while (v12 != v13);
            }
          }
        }

        ++v7;
      }

      while (v7 != v16);
    }
  }
}

void AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::optimizeContentsForCompressedAccess(void *a1, uint64_t a2)
{
  v4 = *(a2 + 592);
  if ((!*(v4 + 48) || (*(v4 + 40) & 2) != 0) && *(v4 + 584))
  {
    v5 = *(v4 + 396) & 0xFF00;
    if ((*(v4 + 396) & 0x10000) != 0 || v5 == 1024)
    {
      if (v5 == 1024)
      {
        v6 = 6 * *(v4 + 392);
      }

      else
      {
        v6 = *(v4 + 392);
      }

      v16 = v6;
      if (!v6)
      {
        return;
      }
    }

    else
    {
      v16 = 1;
    }

    v17 = *(v4 + 108);
    if (v17)
    {
      v7 = 0;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          v9 = *(v4 + 584);
          if (v9 && *(v9 + 1304) > i && !*(v4 + 57))
          {
            v10 = *(v4 + 136) >> (*(v4 + 144) + i);
            if (v10 <= 1)
            {
              v11 = 1;
            }

            else
            {
              v11 = v10;
            }

            v12 = *(*(*(a2 + 592) + 208) + 24);
            if (v12)
            {
              v13 = 0;
              v14 = vmax_u32(vshl_u32(*(v4 + 128), vneg_s32(vdup_n_s32(*(v4 + 144) + i))), 0x100000001);
              *&v15 = v14.u32[0];
              *(&v15 + 1) = v14.u32[1];
              v18 = v15;
              do
              {
                v23 = 0uLL;
                v24 = 0;
                v21 = 0uLL;
                v22 = 0;
                v19 = v18;
                v20 = v11;
                AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::copyTextureToTextureImpl(a1, a2, v13, v7, i, &v23, a2, v13, v7, i, &v21, &v19);
                ++v13;
              }

              while (v12 != v13);
            }
          }
        }

        ++v7;
      }

      while (v7 != v16);
    }
  }
}

void sub_29CCF6C24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::function<void ()(AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses> *&)>::~function(va);
  std::function<void ()(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding> *&)>::~function(va1);
  _Unwind_Resume(a1);
}

void sub_29CCF7834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::function<void ()(AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses> *&)>::~function(va);
  std::function<void ()(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding> *&)>::~function(va1);
  _Unwind_Resume(a1);
}

uint64_t AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::invalidateCompressedTexture(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 592);
  v5 = *(v4 + 584);
  v34 = a2;
  v35 = *(v4 + 592);
  v26 = v5;
  if (v5)
  {
    if (*(v26 + 1304) > a4)
    {
      v7 = v4;
      if (*(*(v4 + 208) + 24))
      {
        v9 = result;
        v10 = 0;
        if (*(v4 + 136) >> (*(v4 + 144) + a4) <= 1u)
        {
          v11 = 1;
        }

        else
        {
          v11 = *(v4 + 136) >> (*(v4 + 144) + a4);
        }

        v25 = v4;
        do
        {
          TextureViewForBlit = AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getTextureViewForBlit(v28, v7, a4, v10);
          v27 = 4;
          if (v30 > 1)
          {
            v21 = 0;
            v22 = v26 + 648 * v10;
            do
            {
              GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v22, a3, a4, v21, 0);
              v32 = 0;
              v29 = GPUVirtualAddress;
              (*(v28[0] + 16))(v28);
              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::renderTexture(v9, &v34, v28, 0, 0, &v27, 0, 0, 0);
              ++v21;
            }

            while (v11 != v21);
          }

          else
          {
            v24[1] = v24;
            v13 = *(v31 + v10 + 88);
            MEMORY[0x2A1C7C4A8](TextureViewForBlit);
            v15 = v24 - v14;
            bzero(v24 - v14, v13);
            AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getTextureViewFormat(v13, v30, v28[4], v10, 1, 0);
            v17 = v16;
            v18 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v26 + 648 * v10, a3, a4, 0, 0);
            v32 = 0;
            v29 = v18;
            (*(v28[0] + 16))(v28);
            v19 = 0;
            do
            {
              if (*(v9 + 4880))
              {
                v20 = *(v9 + 8);
                v33 = 0;
                AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v20 + 24, &v33);
                *(v9 + 2568) = 0;
                *(v9 + 4880) = 0;
              }

              AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(v9, &v34, v28, 0, 0, 0, 0, &v27, v19++, 0, v17, 0, 0, v15, 1);
            }

            while (v11 != v19);
          }

          result = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v28);
          ++v10;
          v7 = v25;
        }

        while (v10 < *(*(v25 + 208) + 24));
      }
    }
  }

  return result;
}

uint64_t AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::invalidateCompressedTexture(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v19[2] = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 592);
  v5 = *(v4 + 584);
  if (v5 && *(v5 + 1304) > a4 && *(*(v4 + 208) + 24))
  {
    v8 = result;
    v9 = 0;
    v10 = *(v4 + 136) >> (*(v4 + 144) + a4);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v13 = v10;
    do
    {
      AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getTextureViewForBlit(v18, v4, a4, v9);
      v19[0] = 0;
      v19[1] = 0;
      v17 = 4;
      GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v5 + 648 * v9, a3, a4, 0, 0);
      v18[39] = 0;
      v18[9] = GPUVirtualAddress;
      (*(v18[0] + 16))(v18);
      v12 = v13;
      do
      {
        v15[0] = vmax_u32(vshl_u32(v18[16], vdup_lane_s32(vneg_s32(v18[18]), 0)), 0x100000001);
        v15[1] = 0;
        v15[2] = 0;
        v16 = 0;
        AGX::MSLBlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding>::blitCDMBufferToTexture((v8 + 8), a2, v18, 0, 0, v19, v15, 0x17u, 0x10uLL, 0, 0, &v17);
        --v12;
      }

      while (v12);
      result = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v18);
      ++v9;
    }

    while (v9 < *(*(v4 + 208) + 24));
  }

  return result;
}

void sub_29CCF8250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(va);
  _Unwind_Resume(a1);
}

void sub_29CCF8560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::function<void ()(AGX::LegacyBlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses> *&)>::~function(va);
  std::function<void ()(AGX::BlitContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding> *&)>::~function(va1);
  _Unwind_Resume(a1);
}

uint64_t std::deque<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block,std::allocator<AGX::ControlFlowContext<AGX::HAL300::ComputeControlFlowEmitter,AGX::HAL300::ComputeUSCStateLoader,AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ControlFlowDelegate>::Block>>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 32;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 64;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::ComputeContext<AGX::HAL300::EncoderComputeServiceConfigA>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (a1 + 1992);
  v8 = *a3;
  v7 = a3[1];
  v9 = [v7 commandBufferStorage];
  v10 = [a3[1] globalTraceObjectID];
  v11 = [a3[2] globalTraceObjectID];
  v12 = a3[2];
  v13 = *(a3 + 13);
  *&v14 = v7;
  *(&v14 + 1) = v7[90];
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v16 = a3[8];
  *a1 = v14;
  *(a1 + 16) = v9;
  *(a1 + 24) = v16;
  v17 = a1 + 24;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v18 = v9[96];
  *(a1 + 1824) = 0;
  *(a1 + 1840) = 0;
  *(a1 + 1832) = 0;
  *(a1 + 1848) = 0;
  *(a1 + 1864) = v13;
  *(a1 + 48) = v18;
  *(a1 + 56) = v9 + 18;
  *(a1 + 1856) = v9[98];
  *(a1 + 1880) = v9;
  *(a1 + 1888) = v9 + 8;
  *(a1 + 1920) = 0;
  *(a1 + 1961) = 0;
  *v6 = v15;
  *(a1 + 2008) = *(&v14 + 1) + 24;
  *(a1 + 2016) = v12;
  *(a1 + 2024) = 0;
  *(a1 + 2028) = 0u;
  *(a1 + 2044) = 0u;
  *(a1 + 2053) = 0u;
  *(a1 + 2069) = 1;
  *(a1 + 1872) = v8;
  *(a1 + 1896) = v9[91];
  *(a1 + 1904) = v9[92];
  *(a1 + 1912) = v9 + 18;
  *(a1 + 1968) = v9[6];
  *(a1 + 1976) = v9[7];
  *(a1 + 1924) = v11;
  *(a1 + 1932) = 0xFFFFFFFF00000000;
  *(a1 + 1956) = 0;
  *(a1 + 1960) = 1;
  v19 = *(v8 + 848);
  if (*(a2 + 37) == 1)
  {
    operator new();
  }

  v20 = a1 + 2072;
  *(a1 + 2072) = 0;
  *(a1 + 2080) = v19;
  *(a1 + 2096) = 0;
  *(a1 + 2104) = 0;
  *(a1 + 2088) = v19 + 7152;
  v21 = *(v19 + 7056);
  *(a1 + 2108) = 96 * v21;
  *(a1 + 2112) = v21;
  v22 = *(v8 + 848);
  v23 = *(v22 + 7092);
  *(a1 + 2120) = ((((96 * (*(v22 + 7056) / v23) + 367) & 0xFFFFFFE0) + 127) & 0xFFFFFF80) * v23 + 128;
  *(a1 + 2128) = 1792 * v23 + 3456;
  v24 = v23 == 1;
  if (v23 == 1)
  {
    v25 = 736;
  }

  else
  {
    v25 = 736 * v23 + 736;
  }

  v26 = (v25 + 63) & 0x1FFFFFFC0;
  *(a1 + 2136) = v26;
  LODWORD(v27) = 1664 * v23 + 2048;
  if (v24)
  {
    v27 = 1664;
  }

  else
  {
    v27 = v27;
  }

  *(a1 + 2144) = v26 + v27;
  *(a1 + 2152) = v20;
  *(a1 + 2160) = v17;
  *(a1 + 2216) = 0;
  *(a1 + 2184) = 0uLL;
  *(a1 + 2200) = 0uLL;
  *&v52 = MEMORY[0x29EDCA5F8];
  *(&v52 + 1) = 3221225472;
  *&v53 = ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingENS1_28EncoderComputeServiceClassesEE30getComputeRangeExecutionShaderEPNS1_6DeviceE_block_invoke;
  *(&v53 + 1) = &__block_descriptor_40_e5_v8__0l;
  v54 = v22;
  if (AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::getComputeRangeExecutionShader(AGX::HAL300::Device *)::compute_execute_indirect_stateless_shaders_pred != -1)
  {
    dispatch_once(&AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::getComputeRangeExecutionShader(AGX::HAL300::Device *)::compute_execute_indirect_stateless_shaders_pred, &v52);
  }

  *(a1 + 2168) = AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::getComputeRangeExecutionShader(AGX::HAL300::Device *)::pipeline;
  *&v52 = MEMORY[0x29EDCA5F8];
  *(&v52 + 1) = 3221225472;
  *&v53 = ___ZN3AGX35ComputeIndirectExecutionContextGen4INS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingENS1_28EncoderComputeServiceClassesEE30getComputePatchExecutionShaderEPNS1_6DeviceE_block_invoke;
  *(&v53 + 1) = &__block_descriptor_40_e5_v8__0l;
  v54 = v22;
  if (AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::getComputePatchExecutionShader(AGX::HAL300::Device *)::compute_execute_indirect_stateless_shaders_pred != -1)
  {
    dispatch_once(&AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::getComputePatchExecutionShader(AGX::HAL300::Device *)::compute_execute_indirect_stateless_shaders_pred, &v52);
  }

  *(a1 + 2176) = AGX::ComputeIndirectExecutionContextGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::getComputePatchExecutionShader(AGX::HAL300::Device *)::pipeline;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0;
  *(a1 + 2248) = 0;
  *(a1 + 2256) = 0u;
  *(a1 + 2288) = 0;
  *(a1 + 2360) = 0;
  *(a1 + 2368) = -1;
  *(a1 + 2376) = 0u;
  *(a1 + 2392) = 0u;
  *(a1 + 2408) = 0u;
  *(a1 + 2440) = 0;
  *(a1 + 2448) = 0u;
  *(a1 + 4252) = 1;
  *(a1 + 22424) = 0u;
  *(a1 + 22440) = 0u;
  *(a1 + 22456) = 0u;
  *(a1 + 22496) = a1 + 2360;
  *(a1 + 26128) = 0u;
  *(a1 + 26144) = 0u;
  *(a1 + 26160) = 0u;
  *(a1 + 26176) = 0u;
  *(a1 + 26192) = 0u;
  *(a1 + 26208) = 0u;
  *(a1 + 26224) = 0u;
  *(a1 + 26240) = 0u;
  *(a1 + 26256) = 0u;
  *(a1 + 26272) = 0u;
  *(a1 + 26288) = 0u;
  *(a1 + 26304) = 0u;
  *(a1 + 26320) = 0u;
  *(a1 + 26336) = 0u;
  *(a1 + 26352) = 0u;
  *(a1 + 26368) = 0u;
  *(a1 + 26384) = 0u;
  *(a1 + 26400) = 0;
  *(a1 + 27592) = 0;
  *(a1 + 27560) = 0u;
  *(a1 + 27576) = 0u;
  *(a1 + 27600) = 0;
  *(a1 + 27612) = 0;
  *(a1 + 27616) = 0;
  *(a1 + 27656) = 0u;
  *(a1 + 27512) = 0u;
  *(a1 + 27528) = 0u;
  *(a1 + 27648) = a1 + 27656;
  *(a1 + 27680) = 0u;
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(a1 + 27696, *(*(a1 + 1872) + 848), *(*(*(a1 + 1872) + 848) + 7200));
  AGX::ComputeCounterSamplingContextGen1::ComputeCounterSamplingContextGen1((a1 + 27808), *(a2 + 8));
  v28 = *(*(a1 + 8) + 568);
  *(a1 + 27824) = v28;
  v29 = *(a2 + 16);
  *(a1 + 27825) = (v29 == 2) & (v28 ^ 1);
  *(a1 + 27828) = v29;
  v30 = *(a1 + 1872);
  v31 = *(v30 + 848);
  *(a1 + 27832) = *(v31 + 17212);
  v32 = *(a1 + 1912);
  *(a1 + 27848) = v31;
  *(a1 + 27856) = v17;
  *(a1 + 27864) = v20;
  *(a1 + 27872) = v32;
  *(a1 + 27880) = 0;
  *(a1 + 27904) = 0;
  *(a1 + 27912) = 0;
  *(a1 + 27936) = 0;
  *(a1 + 27944) = 0;
  *(a1 + 27968) = 0;
  *(a1 + 27976) = 0;
  *(a1 + 28000) = 0;
  *(a1 + 28008) = 0;
  *(a1 + 28032) = 0;
  *(a1 + 28056) = 0u;
  *(a1 + 28072) = 0u;
  *(a1 + 28040) = 0u;
  *(a1 + 28096) = 0;
  *(a1 + 28104) = 0;
  *(a1 + 28136) = 0u;
  LODWORD(v30) = *(*(v30 + 848) + 7056);
  *(a1 + 28184) = 96 * v30;
  *(a1 + 28188) = v30;
  *(a1 + 28216) = [a3[1] privateData];
  *(a1 + 28224) = [a3[1] privateDataOffset];
  *(a1 + 28240) = 0;
  *(a1 + 28232) = 4;
  *(a1 + 28248) = 0;
  *(a1 + 28256) = 0u;
  *(a1 + 28272) = 0u;
  *(a1 + 28288) = 0u;
  *(a1 + 28312) = 0;
  *(a1 + 28328) = 0;
  *(a1 + 28320) = 0;
  *(a1 + 28336) = 0xFFFFFFFF00000001;
  *(a1 + 28344) = 1610612736;
  *(a1 + 28352) = 0u;
  *(a1 + 28368) = 0u;
  *(a1 + 28384) = 0u;
  *&v33 = -1;
  *(&v33 + 1) = -1;
  *(a1 + 28400) = v33;
  *(a1 + 28416) = v33;
  *(a1 + 28432) = v33;
  *(a1 + 28448) = -1;
  *(a1 + 28456) = *(a2 + 38);
  *(a1 + 28520) = 0;
  *(a1 + 28464) = 0u;
  *(a1 + 28480) = 0u;
  *(a1 + 28496) = 0u;
  *(a1 + 28090) |= 1u;
  *(a1 + 2292) = 0;
  *(a1 + 2312) = 0;
  *(a1 + 22488) = a1 + 4536;
  v34 = *(*(a1 + 1872) + 848);
  v35 = *(v34 + 16496);
  v52 = *(v34 + 16480);
  v53 = v35;
  for (i = 560; i != 16944; i += 128)
  {
    v37 = (*(a1 + 22488) + i);
    *v37 = v52;
    v37[1] = v53;
  }

  v38 = *(*(a1 + 1872) + 848);
  v39 = *(v38 + 16528);
  v52 = *(v38 + 16512);
  v53 = v39;
  for (j = 592; j != 16976; j += 128)
  {
    v41 = (*(a1 + 22488) + j);
    *v41 = v52;
    v41[1] = v53;
  }

  v42 = *(a1 + 22496);
  *(v42 + 1880) = *(a1 + 22488);
  *(v42 + 1888) = v42;
  v43 = *(a2 + 20);
  *(a1 + 2292) = v43;
  *(a1 + 27624) = *(a2 + 32);
  v24 = v43 == 1;
  v44 = 16;
  if (v24)
  {
    v44 = 8;
  }

  *(a1 + 28232) |= v44;
  v45 = *(a1 + 27904);
  *(a1 + 27880) = a1;
  *(a1 + 27888) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::handleControlFlowFailure;
  *(a1 + 27896) = 0;
  if ((v45 & 1) == 0)
  {
    *(a1 + 27904) = 1;
  }

  v46 = *(a1 + 27936);
  *(a1 + 27912) = a1;
  *(a1 + 27920) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::handleFirstControlFlowPrologue;
  *(a1 + 27928) = 0;
  if ((v46 & 1) == 0)
  {
    *(a1 + 27936) = 1;
  }

  v47 = *(a1 + 27968);
  *(a1 + 27944) = a1;
  *(a1 + 27952) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::handleLastControlFlowEpilogue;
  *(a1 + 27960) = 0;
  if ((v47 & 1) == 0)
  {
    *(a1 + 27968) = 1;
  }

  v48 = *(a1 + 28000);
  *(a1 + 27976) = a1;
  *(a1 + 27984) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::handleControlFlowPrologue;
  *(a1 + 27992) = 0;
  if ((v48 & 1) == 0)
  {
    *(a1 + 28000) = 1;
  }

  v49 = *(a1 + 28032);
  *(a1 + 28008) = a1;
  *(a1 + 28016) = AGX::ComputeContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::CommandEncoding,AGX::HAL300::EncoderComputeServiceClasses>::handleControlFlowEpilogue;
  *(a1 + 28024) = 0;
  if ((v49 & 1) == 0)
  {
    *(a1 + 28032) = 1;
  }

  v50 = *(*(a1 + 1872) + 848);
  *(a1 + 2272) = v50 + 13360;
  *(a1 + 2280) = v50 + 14912;
  *(a1 + 28088) = 0;
  *(a1 + 28188) = *(v50 + 7056);
  return a1;
}

void sub_29CCFB014(_Unwind_Exception *a1)
{
  MEMORY[0x29ED520D0](v2, 0x1020C4014030ADELL);
  AGX::HAL300::ContextCommon::~ContextCommon(v1);
  _Unwind_Resume(a1);
}

void AGX::HAL300::BlitDispatchContext::~BlitDispatchContext(AGX::HAL300::BlitDispatchContext *this)
{
  AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~BlitDispatchContextGen2(this);

  JUMPOUT(0x29ED520D0);
}

void AGX::HAL300::ContextCommon::~ContextCommon(AGX::HAL300::ContextCommon *this)
{
  v2 = *(this + 228);
  v3 = *(this + 229);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      free(v4);
    }

    while (v2 != v3);
    v2 = *(this + 228);
  }

  if (v2)
  {
    *(this + 229) = v2;
    operator delete(v2);
  }
}

BOOL AGX::BlitUtil::requireLegacyBlit<true>(uint64_t a1)
{
  v1 = &unk_2A179E000;
  {
    v3 = a1;
    a1 = v3;
    if (v4)
    {
      AGX::BlitUtil::requireLegacyBlit<true>(AGXG18PFamilyTexture *)::enableMSLBLitEV = 1;
      a1 = v3;
    }
  }

  {
    v5 = a1;
    a1 = v5;
    if (v6)
    {
      keyExistsAndHasValidFormat = 0;
      v7 = *MEMORY[0x29EDB8ED8];
      v8 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "EnableExperimentalUberBlitVariants", 0x8000100u);
      if (v8)
      {
        v9 = CFStringCreateWithCString(v7, "com.apple.Metal", 0x8000100u);
        if (v9)
        {
          AppBooleanValue = CFPreferencesGetAppBooleanValue(v8, v9, &keyExistsAndHasValidFormat);
          CFRelease(v8);
          CFRelease(v9);
          if (keyExistsAndHasValidFormat && AppBooleanValue)
          {
            v11 = 1;
LABEL_20:
            AGX::BlitUtil::requireLegacyBlit<true>(AGXG18PFamilyTexture *)::enableMSLBlitFeature = v11;
            a1 = v5;
            v1 = &unk_2A179E000;
            return (v1[1880] & 1) == 0 && (AGX::BlitUtil::requireLegacyBlit<true>(AGXG18PFamilyTexture *)::enableMSLBlitFeature & 1) == 0 || a1 && *(*(a1 + 592) + 112) > 1u;
          }
        }

        else
        {
          CFRelease(v8);
        }
      }

      v11 = _os_feature_enabled_impl();
      goto LABEL_20;
    }
  }

  return (v1[1880] & 1) == 0 && (AGX::BlitUtil::requireLegacyBlit<true>(AGXG18PFamilyTexture *)::enableMSLBlitFeature & 1) == 0 || a1 && *(*(a1 + 592) + 112) > 1u;
}

uint64_t AGX::BlitUtil::ResourceOverlappingTracker::checkDependentBlits(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = a3[1];
  if (v5)
  {
    v6 = *a3;
    v7 = *a3 + v5;
    v8 = *(a1 + 2308);
    if (!*(a1 + 2308))
    {
      a1[289] = v6;
      a1[290] = v7;
      *(a1 + 582) = 0;
      v8 = 1;
      *(a1 + 2308) = 1;
      goto LABEL_16;
    }

    v9 = (a1 + 289);
    for (i = a1 + 289; ; i = &v9[3 * v11])
    {
      v12 = *i;
      if (*i < v7 && i[1] > v6)
      {
        goto LABEL_103;
      }

      if (v6 < v12)
      {
        v11 = *(i + 8);
        if (!*(i + 8))
        {
          if (v7 == v12)
          {
            *i = v6;
            goto LABEL_16;
          }

          if (v8 > 0x5F)
          {
            *(i + 8) = 0;
            goto LABEL_103;
          }

          v34 = &v9[3 * *(a1 + 2308)];
          *v34 = v6;
          v34[1] = v7;
          *(v34 + 4) = 0;
          *(i + 8) = v8;
          goto LABEL_57;
        }
      }

      else
      {
        v13 = i[1];
        if (v7 < v13)
        {
          goto LABEL_103;
        }

        v11 = *(i + 9);
        if (!*(i + 9))
        {
          if (v6 == v13)
          {
            i[1] = v7;
LABEL_16:
            v16 = *(a1 + 1152);
            if (a1 && *(a1 + 1152))
            {
              v17 = *a3;
              v18 = a1;
              while (*v18 >= a3[1] + *a3 || v18[1] <= v17)
              {
                if (v17 >= *v18)
                {
                  v19 = 18;
                }

                else
                {
                  v19 = 16;
                }

                v20 = *(v18 + v19);
                v18 = &a1[3 * v20];
                if (!v20)
                {
                  goto LABEL_26;
                }
              }

LABEL_103:
              v14 = (a2 + 1);
              goto LABEL_104;
            }

LABEL_26:
            v14 = (a2 + 1);
            v15 = a2[1];
            if (v15)
            {
LABEL_27:
              v21 = *a2;
              v22 = *a2 + v15;
              if (v16)
              {
                for (j = a1; ; j = &a1[3 * v24])
                {
                  v25 = *j;
                  if (*j < v22)
                  {
                    v26 = j[1];
                    if (v26 > v21)
                    {
                      if (v21 >= v25)
                      {
                        v30 = *j;
                      }

                      else
                      {
                        v30 = *a2;
                      }

                      if (v26 > v22)
                      {
                        v22 = j[1];
                      }

                      *j = v30;
                      j[1] = v22;
                      goto LABEL_62;
                    }
                  }

                  if (v21 < v25)
                  {
                    v24 = *(j + 8);
                    if (!*(j + 8))
                    {
                      if (v22 == v25)
                      {
                        *j = v21;
                        goto LABEL_62;
                      }

                      if (v16 <= 0x5F)
                      {
                        v36 = &a1[3 * v16];
                        *v36 = v21;
                        v36[1] = v22;
                        *(v36 + 4) = 0;
                        *(a1 + 1152) = v16 + 1;
                        *(j + 8) = v16;
                        goto LABEL_62;
                      }

                      *(j + 8) = 0;
                      goto LABEL_104;
                    }
                  }

                  else
                  {
                    v27 = j[1];
                    if (v22 < v27)
                    {
                      goto LABEL_104;
                    }

                    v24 = *(j + 9);
                    if (!*(j + 9))
                    {
                      if (v21 == v27)
                      {
                        j[1] = v22;
                        goto LABEL_62;
                      }

                      if (v16 <= 0x5F)
                      {
                        v37 = &a1[3 * v16];
                        *v37 = v21;
                        v37[1] = v22;
                        *(v37 + 4) = 0;
                        *(a1 + 1152) = v16 + 1;
                        *(j + 9) = v16;
                        goto LABEL_62;
                      }

                      *(j + 9) = 0;
LABEL_104:
                      v28 = (a5 + 1);
LABEL_105:
                      LODWORD(v29) = 1;
                      goto LABEL_106;
                    }
                  }
                }
              }

              *a1 = v21;
              a1[1] = v22;
              *(a1 + 4) = 0;
              *(a1 + 1152) = 1;
LABEL_62:
              v8 = *(a1 + 2308);
              if (*(a1 + 2308))
              {
                v38 = *a2;
                v39 = a1 + 289;
                while (*v39 >= a2[1] + *a2 || v39[1] <= v38)
                {
                  if (v38 >= *v39)
                  {
                    v40 = 18;
                  }

                  else
                  {
                    v40 = 16;
                  }

                  v41 = *(v39 + v40);
                  v39 = &a1[3 * v41 + 289];
                  if (!v41)
                  {
                    goto LABEL_71;
                  }
                }

                goto LABEL_104;
              }
            }

LABEL_71:
            v28 = (a5 + 1);
            v29 = a5[1];
            if (!v29)
            {
              goto LABEL_106;
            }

LABEL_72:
            v42 = *a5;
            v43 = *a5 + v29;
            if (v8)
            {
              v44 = (a1 + 289);
              for (k = a1 + 289; ; k = &v44[3 * v46])
              {
                v47 = *k;
                if (*k < v43 && k[1] > v42)
                {
                  break;
                }

                if (v42 < v47)
                {
                  v46 = *(k + 8);
                  if (!*(k + 8))
                  {
                    if (v43 == v47)
                    {
                      *k = v42;
                      goto LABEL_84;
                    }

                    if (v8 <= 0x5F)
                    {
                      v53 = &v44[3 * v8];
                      *v53 = v42;
                      v53[1] = v43;
                      *(v53 + 4) = 0;
                      *(a1 + 2308) = v8 + 1;
                      *(k + 8) = v8;
                      goto LABEL_84;
                    }

                    *(k + 8) = 0;
                    goto LABEL_105;
                  }
                }

                else
                {
                  v48 = k[1];
                  if (v43 < v48)
                  {
                    goto LABEL_105;
                  }

                  v46 = *(k + 9);
                  if (!*(k + 9))
                  {
                    if (v42 == v48)
                    {
                      k[1] = v43;
                      goto LABEL_84;
                    }

                    if (v8 <= 0x5F)
                    {
                      v54 = &v44[3 * v8];
                      *v54 = v42;
                      v54[1] = v43;
                      *(v54 + 4) = 0;
                      *(a1 + 2308) = v8 + 1;
                      *(k + 9) = v8;
                      goto LABEL_84;
                    }

                    *(k + 9) = 0;
                    goto LABEL_105;
                  }
                }
              }

              goto LABEL_105;
            }

            a1[289] = v42;
            a1[290] = v43;
            *(a1 + 582) = 0;
            *(a1 + 2308) = 1;
LABEL_84:
            LODWORD(v29) = 0;
            if (a1 && *(a1 + 1152))
            {
              v49 = *a5;
              v50 = a1;
              while (*v50 >= a5[1] + *a5 || v50[1] <= v49)
              {
                if (v49 >= *v50)
                {
                  v51 = 18;
                }

                else
                {
                  v51 = 16;
                }

                v52 = *(v50 + v51);
                v50 = &a1[3 * v52];
                if (!v52)
                {
                  LODWORD(v29) = 0;
                  goto LABEL_106;
                }
              }

              goto LABEL_105;
            }

LABEL_106:
            v31 = (a4 + 1);
            v32 = a4[1];
            if (v32)
            {
              if (v29)
              {
                goto LABEL_142;
              }

              goto LABEL_108;
            }

            if (v29)
            {
              goto LABEL_142;
            }

            return 0;
          }

          if (v8 > 0x5F)
          {
            *(i + 9) = 0;
            goto LABEL_103;
          }

          v35 = &v9[3 * *(a1 + 2308)];
          *v35 = v6;
          v35[1] = v7;
          *(v35 + 4) = 0;
          *(i + 9) = v8;
LABEL_57:
          *(a1 + 2308) = ++v8;
          goto LABEL_16;
        }
      }
    }
  }

  v14 = (a2 + 1);
  v15 = a2[1];
  if (v15)
  {
    v16 = *(a1 + 1152);
    goto LABEL_27;
  }

  v28 = (a5 + 1);
  v29 = a5[1];
  if (v29)
  {
    v8 = *(a1 + 2308);
    goto LABEL_72;
  }

  v31 = (a4 + 1);
  v32 = a4[1];
  if (!v32)
  {
    return 0;
  }

LABEL_108:
  v55 = *a4;
  v56 = *a4 + v32;
  v57 = *(a1 + 1152);
  if (!*(a1 + 1152))
  {
    *a1 = v55;
    a1[1] = v56;
    *(a1 + 4) = 0;
    *(a1 + 1152) = 1;
    goto LABEL_134;
  }

  for (m = a1; ; m = &a1[3 * v59])
  {
    v60 = *m;
    if (*m < v56)
    {
      v61 = m[1];
      if (v61 > v55)
      {
        if (v55 >= v60)
        {
          v63 = *m;
        }

        else
        {
          v63 = *a4;
        }

        if (v61 > v56)
        {
          v56 = m[1];
        }

        *m = v63;
        m[1] = v56;
LABEL_134:
        if (*(a1 + 2308))
        {
          v66 = *a4;
          v67 = a1 + 289;
          while (*v67 >= a4[1] + *a4 || v67[1] <= v66)
          {
            if (v66 >= *v67)
            {
              v68 = 18;
            }

            else
            {
              v68 = 16;
            }

            v69 = *(v67 + v68);
            v67 = &a1[3 * v69 + 289];
            if (!v69)
            {
              return 0;
            }
          }

          goto LABEL_142;
        }

        return 0;
      }
    }

    if (v55 >= v60)
    {
      break;
    }

    v59 = *(m + 8);
    if (!*(m + 8))
    {
      if (v56 == v60)
      {
        *m = v55;
        goto LABEL_134;
      }

      if (v57 <= 0x5F)
      {
        v64 = &a1[3 * *(a1 + 1152)];
        *v64 = v55;
        v64[1] = v56;
        *(v64 + 4) = 0;
        *(a1 + 1152) = v57 + 1;
        *(m + 8) = v57;
        goto LABEL_134;
      }

      *(m + 8) = 0;
      goto LABEL_142;
    }

LABEL_111:
    ;
  }

  v62 = m[1];
  if (v56 < v62)
  {
    goto LABEL_142;
  }

  v59 = *(m + 9);
  if (*(m + 9))
  {
    goto LABEL_111;
  }

  if (v55 == v62)
  {
    m[1] = v56;
    goto LABEL_134;
  }

  if (v57 <= 0x5F)
  {
    v65 = &a1[3 * *(a1 + 1152)];
    *v65 = v55;
    v65[1] = v56;
    *(v65 + 4) = 0;
    *(a1 + 1152) = v57 + 1;
    *(m + 9) = v57;
    goto LABEL_134;
  }

  *(m + 9) = 0;
LABEL_142:
  *(a1 + 1152) = 0;
  *(a1 + 2308) = 0;
  v70 = a3[1];
  if (v70)
  {
    v71 = *a3;
    v72 = *a3 + v70;
    a1[289] = *a3;
    a1[290] = v72;
    *(a1 + 582) = 0;
    *(a1 + 2308) = 1;
    v73 = *v28;
    if (v73)
    {
      v74 = *a5;
      v75 = *a5 + v73;
      for (n = (a1 + 289); v71 >= v75 || *(n + 8) <= v74; v71 = *n)
      {
        if (v74 < v71)
        {
          v77 = *(n + 16);
          if (!*(n + 16))
          {
            if (v75 == v71)
            {
              *n = v74;
            }

            else
            {
              a1[292] = v74;
              a1[293] = v75;
              *(a1 + 588) = 0;
              *(a1 + 2308) = 2;
              *(n + 16) = 1;
            }

            break;
          }
        }

        else
        {
          v78 = *(n + 8);
          if (v75 < v78)
          {
            break;
          }

          v77 = *(n + 18);
          if (!*(n + 18))
          {
            if (v74 == v78)
            {
              *(n + 8) = v75;
            }

            else
            {
              a1[292] = v74;
              a1[293] = v75;
              *(a1 + 588) = 0;
              *(a1 + 2308) = 2;
              *(n + 18) = 1;
            }

            break;
          }
        }

        n = &a1[3 * v77 + 289];
      }
    }
  }

  else
  {
    v79 = *v28;
    if (v79)
    {
      v80 = *a5 + v79;
      a1[289] = *a5;
      a1[290] = v80;
      *(a1 + 582) = 0;
      *(a1 + 2308) = 1;
    }
  }

  v81 = *v14;
  if (v81)
  {
    v82 = *a2;
    v83 = *a2 + v81;
    *a1 = *a2;
    a1[1] = v83;
    *(a1 + 4) = 0;
    *(a1 + 1152) = 1;
    v84 = *v31;
    if (!*v31)
    {
      return 1;
    }

    v85 = *a4;
    v86 = *a4 + v84;
    for (ii = a1; ; v82 = *ii)
    {
      if (v82 < v86)
      {
        v89 = ii[1];
        if (v89 > v85)
        {
          if (v85 >= v82)
          {
            v85 = v82;
          }

          if (v89 > v86)
          {
            v86 = ii[1];
          }

          *ii = v85;
LABEL_176:
          ii[1] = v86;
          return 1;
        }
      }

      if (v85 < v82)
      {
        v88 = *(ii + 8);
        if (!*(ii + 8))
        {
          if (v86 == v82)
          {
            *ii = v85;
            return 1;
          }

          a1[3] = v85;
          a1[4] = v86;
          *(a1 + 10) = 0;
          *(a1 + 1152) = 2;
          *(ii + 8) = 1;
          return 1;
        }
      }

      else
      {
        v90 = ii[1];
        if (v86 < v90)
        {
          return 1;
        }

        v88 = *(ii + 9);
        if (!*(ii + 9))
        {
          if (v85 != v90)
          {
            a1[3] = v85;
            a1[4] = v86;
            *(a1 + 10) = 0;
            *(a1 + 1152) = 2;
            *(ii + 9) = 1;
            return 1;
          }

          goto LABEL_176;
        }
      }

      ii = &a1[3 * v88];
    }
  }

  if (!*v31)
  {
    return 1;
  }

  v91 = *a4 + *v31;
  *a1 = *a4;
  a1[1] = v91;
  *(a1 + 4) = 0;
  *(a1 + 1152) = 1;
  return 1;
}

uint64_t AGX::BlitUtil::CalcSparseBlockCompressedMiptailParams(AGX::BlitUtil *this, AGX::HAL300::Texture *a2, unsigned int a3, int *a4, unsigned int *a5)
{
  v40 = *MEMORY[0x29EDCA608];
  if (*(this + 59))
  {
    v8 = a2;
    MipInTail = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(this, 0);
    v10 = 0;
    v11 = (*(this + 54) + *(this + 32) - 1) / *(this + 54);
    v12 = *(this + 28) * *(*(this + 26) + 88);
    v13 = __clz(v11 - 1);
    v14 = (*(this + 55) + *(this + 33) - 1) / *(this + 55);
    v15 = __clz(v14 - 1);
    *a4 = 0;
    v16 = a3 - MipInTail;
    if (a3 > MipInTail)
    {
      v10 = 0;
      v17 = (1 << -v15) >> MipInTail;
      v18 = (1 << -v13) >> MipInTail;
      do
      {
        v10 += (v17 * v12 * v18 + 127) & 0xFFFFFF80;
        v18 >>= v18 > 1;
        v17 >>= v17 > 1;
        --v16;
      }

      while (v16);
      *a4 = v10;
    }

    v19 = 0;
    v20 = 0;
    v21 = *(this + 16);
    v22 = *(this + 59);
    v23 = v22 / v12;
    v24 = 32 - __clz(v23 - 1);
    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = 32 - __clz(~(-1 << -v13));
    if (v11 >= 2)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = 32 - __clz(~(-1 << -v15));
    if (v14 < 2)
    {
      v28 = 0;
    }

    v39[0] = 0;
    if (MipInTail + 1 > 1)
    {
      v29 = MipInTail + 1;
    }

    else
    {
      v29 = 1;
    }

    do
    {
      v30 = v27 - v20;
      if (v27 < v20)
      {
        v30 = 0;
      }

      v31 = v28 - v20;
      if (v28 < v20)
      {
        v31 = 0;
      }

      v32 = v30 + v31;
      v33 = v32 >= v25;
      v34 = v32 - v25;
      if (!v33)
      {
        v34 = 0;
      }

      v19 += 1 << v34;
      v39[++v20] = v19;
    }

    while (v29 != v20);
    if (v21 <= 1)
    {
      v35 = 1;
    }

    else
    {
      v35 = MipInTail + 1;
    }

    v36 = (v39[v35] + 255) & 0xFFFFFF00;
    v39[v35] = v36;
    v37 = v39[MipInTail] + v36 * v8;
    if (v10 > v22)
    {
      v37 += v10 / v22;
      *a4 = v10 & (v22 - 1);
    }

    return *(this + 9) + 4 * (v37 | (v37 >> 8 << 9));
  }

  else
  {
    *a4 = 0;

    return AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(this, 0, a3, 0, 0);
  }
}

void *AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endComputePass(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, int32x4_t a7)
{
  *(a1 + 2568) = 0;
  *(a1 + 4880) = 0;
  result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 104, 0, 0, 0, 0, 0, 0, a3, a4, a5, a6, a7);
  if (result)
  {
    result = AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 104, *(a1 + 96) + 336, 0);
    if (*(a2 + 132))
    {
      goto LABEL_8;
    }
  }

  else if (*(a2 + 132))
  {
    goto LABEL_8;
  }

  v10 = *(a1 + 8);
  v11 = *(v10 + 776);
  v12 = v11 + *(v10 + 792);
  *(v10 + 776) = v11 + 1;
  *v11 = 0x40000000;
  v13 = *(a1 + 96);
  *(v13 + 96) = v12;
  v14 = *(a1 + 8);
  *(v13 + 196) = *(v14 + 1928);
  *(v13 + 192) = *(v14 + 1924);
  *(v13 + 200) = *(v14 + 1932);
  result = *(a1 + 224);
  if (!result || (v16 = *(a1 + 232), v15 = *(a1 + 236), (v16 & v15) == 0xFFFFFFFF))
  {
    *(v13 + 604) = -1;
    *(v13 + 596) = -1;
  }

  else
  {
    result = [result resourceID];
    *(v13 + 596) = result;
    *(v13 + 600) = v16;
    *(v13 + 604) = v15;
  }

  *(a1 + 232) = -1;
  v17 = *(a1 + 96);
  *(v17 + 104) = 0;
  *(v17 + 589) = 0;
  *(v17 + 590) = *(*(a1 + 8) + 1961);
LABEL_8:
  *(a1 + 96) = 0;
  return result;
}

void *AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePassIfNeeded(void *result, void *a2, __n128 a3, double a4, double a5, double a6)
{
  if (!result[12])
  {
    v7 = result;
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(result, 0, a3, a4, a5, a6);

    return AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(v7, a2);
  }

  return result;
}

double AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(void *a1, int a2, __n128 a3, double a4, double a5, double a6)
{
  if (a1[12])
  {
    v8 = a1[1];
    v9 = v8[246];
    if (v9 > v8[247])
    {
      *(v8[2] + 48) = v9;
      IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer();
      v10 = v8[2];
      v9 = *(v10 + 48);
      v8[246] = v9;
      v8[247] = *(v10 + 56);
    }

    v11 = v9 - v8[248];
    v8[246] = v9;
    (*(*a1 + 24))(a1, v11 + 8);
  }

  v12 = a1[1];
  if (*(v12 + 1920) == 1)
  {
    v13 = a1[27];
    if (v13)
    {
      v14 = *(v13 + 528);
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    v16 = a1[26];
    if (v16 && a2)
    {
      v15 = *(v16 + 528);
    }

    if (v15 + v14)
    {
      v17 = *(v12 + 1968);
      if (v17 > *(v12 + 1976))
      {
        *(*(v12 + 16) + 48) = v17;
        v18 = v12;
        IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer();
        v12 = v18;
        v19 = v18[2];
        v17 = *(v19 + 48);
        v18[246] = v17;
        v18[247] = *(v19 + 56);
      }

      v20 = (v17 - *(v12 + 1984));
      *(v12 + 1968) = v17;
      v21 = (2 * (v15 + v14) + 7) & 0xFFFFFFF8;
      if (v20[36])
      {
        v36 = 0;
        AGX::SidebandBufferAllocator::allocate((a1[1] + 1880), v21, 1u, &v36);
      }

      else
      {
        v36 = 0;
        v22 = AGX::SidebandBufferAllocator::allocate((a1[1] + 1880), v21 + 16, 1u, &v36);
        v20[37] = v36;
        *v22 = 0;
        v22[1] = 0;
      }

      v23 = v20[42];
      v24 = (*(*(a1[1] + 1888) + 8) + v20[37]);
      v25 = &v24[1];
      if (v14)
      {
        if ((v23 & 0xFFFFFFFD) == 1)
        {
          v26 = v14;
        }

        else
        {
          v26 = 0;
        }

        if (v23 == 2)
        {
          v27 = v14;
        }

        else
        {
          v27 = 0;
        }

        v24->i32[0] = v26;
        v24->i32[1] = v27;
        AGX::FenceList::copyFences(a1[27], v25);
        v28 = a1[27];
        for (i = *(v28 + 512); i; i &= i - 1)
        {
          bzero(*(v28 + 8 * __clz(__rbit64(i))), 0x88uLL);
        }

        *(v28 + 528) = 0;
      }

      if (v15)
      {
        if (v23 == 3)
        {
          v30 = v15;
        }

        else
        {
          v30 = 0;
        }

        if ((v23 - 1) >= 2)
        {
          v31 = 0;
        }

        else
        {
          v31 = v15;
        }

        v24->i32[2] = v30;
        v24->i32[3] = v31;
        AGX::FenceList::copyFences(a1[26], &v25[v24->u32[0] + v24->u32[1]]);
        v32 = a1[26];
        for (j = *(v32 + 512); j; j &= j - 1)
        {
          bzero(*(v32 + 8 * __clz(__rbit64(j))), 0x88uLL);
        }

        *(v32 + 528) = 0;
      }

      a3 = *v24;
      a3.n128_u32[0] = vaddvq_s32(*v24);
      v20[36] = ((2 * a3.n128_u32[0] + 7) & 0xFFFFFFF8) + 16;
      a1[32] |= 0x20000uLL;
      v12 = a1[1];
    }

    AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::endCommand(v12, a3.n128_f64[0], a4, a5, a6);
    v34 = *(a1[1] + 2008);

    a3.n128_f64[0] = AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::reset(v34);
  }

  return a3.n128_f64[0];
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(uint64_t a1, void *a2)
{
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v4 = AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::newCommand(*(a1 + 8), 816, *(a1 + 4892));
  if ([**(a1 + 8) skipRender])
  {
    v17 = *(a1 + 8);
    v18 = *(v17 + 1968) - *(v17 + 1984);
    *(v18 + 140) = 1;
    if ((*(v18 + 136) & 4) != 0)
    {
      **(v17 + 8) = 1;
    }
  }

  *(v4 + 17) = 0;
  *(v4 + 37) = xmmword_29D2F1720;
  *(v4 + 41) = 0;
  *(v4 + 45) = 0;
  *(v4 + 43) = 0;
  *(*(a1 + 8) + 2060) |= *(a1 + 4888);
  *(a1 + 96) = v4 + 48;
  bzero(v4 + 48, 0x268uLL);
  v5 = *(a1 + 96);
  *(v5 + 588) = 1;
  v6 = *(a1 + 8);
  v7 = *(v6 + 1864);
  *v5 = *(v6 + 792) + *(v6 + 776);
  *(v5 + 216) = 0;
  *(v5 + 240) = 0;
  *(v5 + 584) = 0;
  *(v5 + 208) = 0;
  *(v5 + 96) = 0;
  if ((v7 - 1) > 6)
  {
    v8 = 11;
  }

  else
  {
    v8 = dword_29D2F7760[v7 - 1];
  }

  v9 = v8;
  v10 = (v6 + 64 + 32 * v8);
  if (((1 << v8) & 0xFFF00000480) != 0 && !v10[1] && (AGX::DataBufferAllocator<44ul>::growNoInline(v6 + 24, v8, 0) & 1) == 0)
  {
LABEL_27:
    abort();
  }

  v11 = v10[1] + 19;
  if (v11 <= *v10)
  {
    goto LABEL_8;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v6 + 24, v9, 0))
  {
    v11 = v10[1] + 19;
    if (v11 > *v10)
    {
      goto LABEL_27;
    }

LABEL_8:
    v10[2] = v11;
  }

  v12 = *(a1 + 8);
  v13 = *(v12 + 1864) - 1;
  if (v13 > 6)
  {
    v14 = 11;
  }

  else
  {
    v14 = qword_29D2F7728[v13];
  }

  *(v12 + 32 * v14 + 72) = (*(v12 + 32 * v14 + 72) + 15) & 0xFFFFFFFFFFFFFFF0 | 4;
  v15 = *(a1 + 96);
  *(v15 + 564) = 8;
  result = AGX::ContextSwitcherGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupComputeCommand(*(a1 + 24), v15, v12 + 24);
  if (a2)
  {
    *a2 = v4;
  }

  if (*(a1 + 224))
  {
    if (*(*(a1 + 8) + 1896))
    {
      MTLResourceListAddResource();
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

void AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~BlitDispatchContext(void *a1)
{
  *a1 = &unk_2A23F64F0;
  v2 = a1[26];
  if (v2)
  {
    for (i = *(v2 + 512); i; *(v2 + 512) = i)
    {
      v4 = *(v2 + 520);
      v5 = *(v2 + 8 * __clz(__rbit64(i)));
      os_unfair_lock_lock((v4 + 16));
      *v5 = *v4;
      *v4 = v5;
      os_unfair_lock_unlock((v4 + 16));
      i = (*(v2 + 512) - 1) & *(v2 + 512);
    }

    MEMORY[0x29ED520D0](v2, 0x1020C40C758419CLL);
  }

  v6 = a1[27];
  if (v6)
  {
    for (j = *(v6 + 512); j; *(v6 + 512) = j)
    {
      v8 = *(v6 + 520);
      v9 = *(v6 + 8 * __clz(__rbit64(j)));
      os_unfair_lock_lock((v8 + 16));
      *v9 = *v8;
      *v8 = v9;
      os_unfair_lock_unlock((v8 + 16));
      j = (*(v6 + 512) - 1) & *(v6 + 512);
    }

    MEMORY[0x29ED520D0](v6, 0x1020C40C758419CLL);
  }

  v10 = a1[6];
  if (v10)
  {
    free(*v10);
    MEMORY[0x29ED520D0](v10, 0x1020C4014030ADELL);
  }

  JUMPOUT(0x29ED520D0);
}

void *AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~BlitDispatchContext(void *a1)
{
  *a1 = &unk_2A23F64F0;
  v2 = a1[26];
  if (v2)
  {
    for (i = *(v2 + 512); i; *(v2 + 512) = i)
    {
      v4 = *(v2 + 520);
      v5 = *(v2 + 8 * __clz(__rbit64(i)));
      os_unfair_lock_lock((v4 + 16));
      *v5 = *v4;
      *v4 = v5;
      os_unfair_lock_unlock((v4 + 16));
      i = (*(v2 + 512) - 1) & *(v2 + 512);
    }

    MEMORY[0x29ED520D0](v2, 0x1020C40C758419CLL);
  }

  v6 = a1[27];
  if (v6)
  {
    for (j = *(v6 + 512); j; *(v6 + 512) = j)
    {
      v8 = *(v6 + 520);
      v9 = *(v6 + 8 * __clz(__rbit64(j)));
      os_unfair_lock_lock((v8 + 16));
      *v9 = *v8;
      *v8 = v9;
      os_unfair_lock_unlock((v8 + 16));
      j = (*(v6 + 512) - 1) & *(v6 + 512);
    }

    MEMORY[0x29ED520D0](v6, 0x1020C40C758419CLL);
  }

  v10 = a1[6];
  if (v10)
  {
    free(*v10);
    MEMORY[0x29ED520D0](v10, 0x1020C4014030ADELL);
  }

  return a1;
}

void AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupSparseStateForCompute(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, double a5, double a6, double a7)
{
  v9 = a1 + 4096;
  if (*(a1 + 96))
  {
    if (*(a1 + 4984) == 1)
    {
      v10 = *(a1 + 8);
      v11 = v10[97];
      if ((v11 + 4) > v10[96])
      {
        v18 = v10[97];
        v19 = *(a1 + 8);
        v20 = a1;
        v15 = AGX::DataBufferAllocator<44ul>::growNoInline(v10 + 3, 22, 0);
        a1 = v20;
        if (v15)
        {
          v16 = v19[97] + 4;
          if (v16 > v19[96])
          {
            abort();
          }

          v19[98] = v16;
          GPUAddress = AGX::DataBufferAllocator<44ul>::getGPUAddress(*(v20 + 8) + 24, 22);
          a1 = v20;
          *v18 = __ROR8__(GPUAddress, 32) & 0xFFFFFFFF0000FFFFLL | 0x20000000;
        }
      }

      else
      {
        v10[98] = v11 + 4;
      }

      v12 = *(a1 + 8);
      v13 = *(v12 + 776);
      *v13 = 1610793218;
      *(v12 + 776) = v13 + 1;
    }
  }

  else
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 0, a4, a5, a6, a7);
  }

  *(v9 + 888) = 0;
  if ((*(v9 + 889) & 1) != 0 || a3 && *(a3 + 236))
  {
    v14 = 1;
  }

  else if (a2)
  {
    v14 = *(a2 + 236) != 0;
  }

  else
  {
    v14 = 0;
  }

  *(v9 + 889) = v14;
}

void *AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endComputePass(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 4096;
  v5 = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::dispatchCoalescedSparseTextureShaderBatch(a1);
  if (*(v4 + 889) == 1)
  {
    v10 = *(v4 + 888);
    v11 = *(a1 + 8);
    v12 = v11[97];
    if (v12 + 4 > v11[96])
    {
      if (AGX::DataBufferAllocator<44ul>::growNoInline(v11 + 3, 22, 0))
      {
        v17 = v11[97] + 4;
        if (v17 > v11[96])
        {
          abort();
        }

        v11[98] = v17;
        *v12 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress(*(a1 + 8) + 24, 22), 32) & 0xFFFFFFFF0000FFFFLL | 0x20000000;
      }
    }

    else
    {
      v11[98] = v12 + 4;
    }

    if (v10)
    {
      v13 = 1610793218;
    }

    else
    {
      v13 = 1610776834;
    }

    v14 = *(a1 + 8);
    v15 = *(v14 + 776);
    *v15 = v13;
    *(v14 + 776) = v15 + 1;
    *(v4 + 888) = 0;
  }

  return AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endComputePass(a1, a2, v5, v6, v7, v8, v9);
}

double AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::dispatchCoalescedSparseTextureShaderBatch(uint64_t a1)
{
  v1 = *(a1 + 4896);
  if (v1)
  {
    v3 = *(a1 + 4968);
    if (v3)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      v4 = *(a1 + 4928);
      v14 = *(a1 + 4912);
      v15 = v4;
      v5 = *(a1 + 4960);
      v18 = vmin_u32(v5, 0x2000000020);
      v16 = 0;
      v19 = 1;
      v17 = 1;
      v20 = v5;
      v25 = 0;
      v21 = v3;
      v6 = *(v1 + 3204);
      v7 = *(a1 + 4904) - 2;
      v26 = v6;
      if (v7 <= 2)
      {
        **(a1 + 4936) = v3;
        v6 = *(v1 + 3204);
      }

      AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitComputeProgramVariantArguments((a1 + 48), (*(a1 + 8) + 24), v1, v12, &v16, v6, 1, 1, (*(a1 + 8) + 1940));
      v8 = *(a1 + 8);
      v11 = 0;
      AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v8 + 24, &v11);
      *(*(a1 + 8) + 1961) = 1;
    }

    v9 = *(a1 + 4976);
    *(v9 + 1544) = 0;
    *(v9 + 768) = 0;
    *(a1 + 4896) = 0;
    result = 0.0;
    *(a1 + 4960) = 0;
    *(a1 + 4968) = 0;
    *(a1 + 4912) = 0u;
    *(a1 + 4928) = 0u;
  }

  return result;
}

void AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePassIfNeeded(void *a1, void *a2, int a3, __n128 a4, double a5, double a6, double a7)
{
  if (a3)
  {
    a4.n128_f64[0] = AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::dispatchCoalescedSparseTextureShaderBatch(a1);
  }

  if (!a1[12])
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 0, a4, a5, a6, a7);

    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a1, a2);
  }
}

void AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~BlitDispatchContextGen2(void *a1)
{
  AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~BlitDispatchContextGen2(a1);

  JUMPOUT(0x29ED520D0);
}

void *AGX::BlitDispatchContextGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~BlitDispatchContextGen2(void *a1)
{
  *a1 = &unk_2A23F6528;
  v2 = a1[622];
  if (v2)
  {
    v3 = *(*(a1[1] + 1872) + 848);
    os_unfair_lock_lock(v3 + 4087);
    os_unfair_lock_opaque = v3[4086]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque > 7)
    {
      os_unfair_lock_unlock(v3 + 4087);
      free(v2);
    }

    else
    {
      v3[4086]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;
      *&v3[2 * os_unfair_lock_opaque + 4088]._os_unfair_lock_opaque = v2;
      os_unfair_lock_unlock(v3 + 4087);
    }
  }

  *a1 = &unk_2A23F64F0;
  v5 = a1[26];
  if (v5)
  {
    for (i = *(v5 + 512); i; *(v5 + 512) = i)
    {
      v7 = *(v5 + 520);
      v8 = *(v5 + 8 * __clz(__rbit64(i)));
      os_unfair_lock_lock((v7 + 16));
      *v8 = *v7;
      *v7 = v8;
      os_unfair_lock_unlock((v7 + 16));
      i = (*(v5 + 512) - 1) & *(v5 + 512);
    }

    MEMORY[0x29ED520D0](v5, 0x1020C40C758419CLL);
  }

  v9 = a1[27];
  if (v9)
  {
    for (j = *(v9 + 512); j; *(v9 + 512) = j)
    {
      v11 = *(v9 + 520);
      v12 = *(v9 + 8 * __clz(__rbit64(j)));
      os_unfair_lock_lock((v11 + 16));
      *v12 = *v11;
      *v11 = v12;
      os_unfair_lock_unlock((v11 + 16));
      j = (*(v9 + 512) - 1) & *(v9 + 512);
    }

    MEMORY[0x29ED520D0](v9, 0x1020C40C758419CLL);
  }

  v13 = a1[6];
  if (v13)
  {
    free(*v13);
    MEMORY[0x29ED520D0](v13, 0x1020C4014030ADELL);
  }

  return a1;
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startFast2DHardwareCommand(uint64_t *a1, void *a2, void *a3)
{
  v6 = AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::newCommand(a1[1], 1368, 0);
  if ([*a1[1] skipRender])
  {
    v11 = a1[1];
    v12 = *(v11 + 1968) - *(v11 + 1984);
    *(v12 + 140) = 1;
    if ((*(v12 + 136) & 4) != 0)
    {
      **(v11 + 8) = 1;
    }
  }

  *(v6 + 17) = 0;
  *(v6 + 37) = xmmword_29D2F1730;
  *(v6 + 41) = 0;
  *(v6 + 45) = 0;
  *(v6 + 43) = 0;
  v7 = (a1 + 611);
  v8 = vld1_dup_f32(v7);
  *(a1[1] + 2060) = vorr_s8(*(a1[1] + 2060), v8);
  bzero(v6 + 48, 0x490uLL);
  *a2 = v6;
  *a3 = v6 + 48;
  *(v6 + 80) = 1064960;
  *(v6 + 82) = 0x100000;
  result = AGX::ContextSwitcherGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupFastRenderCommand(a1[2], (v6 + 48), a1[1] + 24);
  v10 = a1[1];
  *(v6 + 1356) = 1;
  v6[295] = 8;
  if (a1[28])
  {
    if (*(v10 + 1896))
    {
      MTLResourceListAddResource();
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endFast2DHardwareCommand(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(result + 8);
  if (!*(*(v3 + 1912) + 520))
  {
    v4 = *(v3 + 1968) - *(v3 + 1984);
    *(v4 + 140) = 1;
    if ((*(v4 + 136) & 4) != 0)
    {
      **(v3 + 8) = 1;
    }
  }

  if (!*(a2 + 132))
  {
    {
      v12 = result;
      v13 = a3;
      a3 = v13;
      v15 = v14;
      result = v12;
      if (v15)
      {
        result = v12;
        a3 = v13;
      }
    }

    v5 = *(result + 8);
    *(a3 + 1020) = *(v5 + 1928);
    a3[254] = *(v5 + 1924);
    *(a3 + 128) = *(v5 + 1932);
    if (!*(result + 224) || (v7 = *(result + 232), v6 = *(result + 236), (v7 & v6) == 0xFFFFFFFF))
    {
      *(a3 + 113) = -1;
      a3[228] = -1;
    }

    else
    {
      v8 = result;
      v9 = a3;
      v10 = [*(result + 224) resourceID];
      a3 = v9;
      v11 = v10;
      result = v8;
      v9[226] = v11;
      v9[227] = v7;
      v9[228] = v6;
    }

    *(result + 232) = -1;
    *(a3 + 130) = 0;
  }

  return result;
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindFast2DResources(uint64_t a1, char **a2, void *a3, uint64_t a4, int8x16_t a5)
{
  v8 = *a2;
  if (a3)
  {
    v9 = *a3;
    if (*a3 && v9 != v8)
    {
      v11 = *(a1 + 8);
      if (*(v11 + 1896))
      {
        v12 = a3;
        MTLResourceListAddResource();
        a3 = v12;
        v11 = *(a1 + 8);
      }

      v13 = MEMORY[0x29EDC5638];
      if (*(a1 + 240))
      {
        goto LABEL_36;
      }

      if (a3[1])
      {
        v14 = a3;
        IOGPUResourceListAddResource();
        a3 = v14;
        v11 = *(a1 + 8);
      }

      if (a3[2])
      {
        IOGPUResourceListAddResource();
        v11 = *(a1 + 8);
      }

      v15 = &v9[*v13];
      v16 = *(v15 + 2);
      if ((v16 & 0x7FFFFFFF80) == 0 || (v16 >> 61) - 5 < 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_36;
      }

      v18 = *(v11 + 2008);
      if (*(v18[2].i64[1] + 480) != 1)
      {
        goto LABEL_36;
      }

      v19 = v18[3];
      v20 = v18[4];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v19), vceqzq_s64(v20))))) & 1) == 0)
      {
        goto LABEL_36;
      }

      v21 = &v9[*v13];
      if ((v16 & 0x1000000000000000) != 0)
      {
        v21 = *v15;
      }

      v22 = *v21;
      if (!v22)
      {
        goto LABEL_36;
      }

      v23 = *v22;
      v24 = v22[1];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v22), vceqzq_s64(v24))))) & 1) == 0)
      {
        goto LABEL_36;
      }

      v25 = vandq_s8(v24, v20);
      v26 = v25.u64[1];
      if (v25.i64[1])
      {
        v27 = 3;
      }

      else
      {
        v26 = v25.i64[0];
        if (v25.i64[0])
        {
          v27 = 2;
        }

        else
        {
          v28 = vandq_s8(v23, v19);
          v26 = v28.u64[1];
          if (v28.i64[1])
          {
            v27 = 1;
          }

          else
          {
            v26 = v28.i64[0];
            if (!v28.i64[0])
            {
LABEL_36:
              IOGPUResourceListAddResource();
              goto LABEL_37;
            }

            v27 = 0;
          }
        }
      }

      v29 = &v18->i8[8 * v27];
      v30 = *(v29 + 10);
      v31 = 1 << (__clz(v26) ^ 0x3Fu);
      v32 = (v31 & v30) != 0;
      if ((v31 & (*(v29 + 14) | v30)) != 0)
      {
        v33 = (*(v15 + 1) + 127) & 0xFFFFFFFFFFFFFF80;
        v34 = &v9[*v13];
        if ((v16 & 0x1000000000000000) != 0)
        {
          v34 = *v15;
        }

        v39[0] = v34;
        v39[1] = v33;
        v40 = v16 >> 7;
        v41 = 4;
        v42 = v32;
        ResourceTracker<_ResourceGroupBinding>::addResource(v18, v39, *(v15 + 12), 4);
      }

      goto LABEL_36;
    }
  }

LABEL_37:
  v35 = *(a1 + 8);
  v36 = *(v35 + 1896);
  if (*(a4 + 4948))
  {
    AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addAPIResources(a4, v36, *(v35 + 1904));
    AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::addGPUResources(a4, v37, *(*(a1 + 8) + 1912), *(*(a1 + 8) + 2008), 63);
  }

  else
  {
    if (v36)
    {
      MTLResourceListAddResource();
      v35 = *(a1 + 8);
    }

    if (a2[1])
    {
      IOGPUResourceListAddResource();
      v35 = *(a1 + 8);
    }

    if (a2[2])
    {
      IOGPUResourceListAddResource();
      v35 = *(a1 + 8);
    }

    AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(v35 + 2008), v8, 12, a5);
    IOGPUResourceListAddResource();
    if (!*(a1 + 224))
    {
      [v8 resourceOptions];
    }
  }

  return AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindTrackedProxyResource(a1);
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindTrackedProxyResource(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[6];
  if (!*(v2 + 1240) || !*(v2 + 1248))
  {
    v3 = v1[85];
    if (!v3)
    {
      v6 = a1;
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v1 + 3, 19, 0))
      {
        goto LABEL_14;
      }

      v3 = v1[85];
      a1 = v6;
    }

    v4 = v3 + 16;
    if (v4 <= v1[84])
    {
      goto LABEL_5;
    }

    v7 = a1;
    v8 = AGX::DataBufferAllocator<44ul>::growNoInline(v1 + 3, 19, 0);
    a1 = v7;
    if (!v8)
    {
      goto LABEL_6;
    }

    v4 = v1[85] + 16;
    if (v4 <= v1[84])
    {
LABEL_5:
      v1[86] = v4;
LABEL_6:
      *(*(a1 + 8) + 680) += 16;
      goto LABEL_7;
    }

LABEL_14:
    abort();
  }

LABEL_7:

  return IOGPUResourceListAddResource();
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupSpillBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = *(a2 + 688);
  v10 = *(a2 + 700);
  v11 = *(a2 + 716);
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v79, *(a1 + 848), *(*(a1 + 848) + 7192));
  if (a5)
  {
    if (v9 <= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    v13 = vshl_n_s32(__PAIR64__(v11, v12), 5uLL);
    *v20.i8 = vshl_u32(vadd_s32(v13, 0xFFF0001437FLL), 0xFFFFFFF4FFFFFFF0);
    v14 = vshl_u32(vadd_s32(v13, 0xFFFF0000537FLL), 0xFFFFFFF0FFFFFFF4);
    v15 = vadd_s32(*v20.i8, vrev64_s32(v14));
    v16 = vmul_s32(v15, 0x600000000ALL);
    v17 = v16.i32[0];
    v18 = v16.i32[1] + v16.i32[0];
    v19 = v16.i32[0] + 32 * v15.i32[1];
    v20.i32[1] = v14.i32[1];
    v21 = *(a3 + 6148);
    if (v21)
    {
      v23 = v21 + 64;
    }

    else
    {
      v23 = 0;
    }

    if (*(v84 + 16999))
    {
      v24 = 11;
    }

    else
    {
      v24 = 6;
    }

    if (v24 >= 8)
    {
      v25 = 8;
    }

    else
    {
      v25 = v24;
    }

    v26 = *(v84 + 7092);
    v83 = 5;
    v22 = (a3 + 6152);
    v27 = vld1_dup_f32(v22);
    v28.i32[0] = v23;
    v28.i32[1] = *(a3 + 6144);
    v29 = vshl_u32(vadd_s32(v28, 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
    v34 = vrev64_s32(vshl_u32(vadd_s32(v28, 0xFFF0000FFFFLL), 0xFFFFFFF4FFFFFFF0));
    v30 = vshl_u32(vadd_s32(v27, 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
    v31 = vadd_s32(vadd_s32(v29, v30), v34);
    v32 = v31.i32[1];
    result = v31.u32[0];
    v34.i32[0] = v29.i32[1];
    *v35.i8 = v34;
    v35.i64[1] = v20.i64[0];
    v36 = vaddvq_s32(v35);
    v37 = v32 + result + v19;
    v38 = __OFSUB__(v37, v88);
    v39 = v37 - v88;
    if ((v39 < 0) ^ v38 | (v39 == 0))
    {
      v39 = 0;
    }

    v40 = v79;
    *v41.i8 = v80;
    v20.u64[1] = v34;
    v79 = vmaxq_s32(v79, v20);
    v42 = v25 * v32 + v24 * result + v18;
    v43 = ((v87 + v30.i32[1] + (v39 + v32 + result) * v85 + v36 + (v17 + v32) * v86 + 64) * v26 + 7) & 0xFFFFFFF8;
    v44 = v42 - v88;
    if (v42 <= v88)
    {
      v44 = 0;
    }

    v45 = ((v36 + v44 * v85 + v87 + v30.i32[1] + 64) * v26 + 7) & 0xFFFFFFF8;
    v46.i32[0] = vdup_lane_s32(v30, 1).u32[0];
    v46.i32[1] = v43;
    v80 = vmax_s32(v80, *v46.i8);
    if (v81 <= v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = v81;
    }

    v41.i64[1] = __PAIR64__(v82, v81);
    v46.i64[1] = __PAIR64__(v42, v45);
    if (v82 > v42)
    {
      v42 = v82;
    }

    v81 = v47;
    v82 = v42;
    v48 = vcgtq_s32(v46, v41);
    v49 = vcgtq_s32(v20, v40);
  }

  else
  {
    v50 = *(a3 + 6148);
    if (v50)
    {
      v52 = v50 + 64;
    }

    else
    {
      v52 = 0;
    }

    if (*(v84 + 16999))
    {
      v53 = 11;
    }

    else
    {
      v53 = 6;
    }

    if (v53 >= 8)
    {
      v54 = 8;
    }

    else
    {
      v54 = v53;
    }

    v55 = *(v84 + 7092);
    v83 = 2;
    v56 = *(a2 + 3208);
    v57.i64[0] = *(a2 + 3224);
    v51 = (a3 + 6152);
    v58 = vld1_dup_f32(v51);
    v59.i32[0] = v52;
    v59.i32[1] = *(a3 + 6144);
    v60 = vshl_u32(vadd_s32(v59, 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
    v65 = vrev64_s32(vshl_u32(vadd_s32(v59, 0xFFF0000FFFFLL), 0xFFFFFFF4FFFFFFF0));
    v61 = vshl_u32(vadd_s32(v58, 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
    v62 = vadd_s32(vadd_s32(v60, v61), v65);
    v63 = v62.i32[1];
    v64 = v62.i32[0];
    v65.i32[0] = v60.i32[1];
    *v66.i8 = v65;
    v66.i64[1] = v57.i64[0];
    v67 = vaddvq_s32(v66);
    v68 = v62.i32[1] + v62.i32[0] + *(a2 + 3212);
    v38 = __OFSUB__(v68, v88);
    v69 = v68 - v88;
    if ((v69 < 0) ^ v38 | (v69 == 0))
    {
      v69 = 0;
    }

    result = (v87 + v61.i32[1] + (v69 + v62.i32[1] + v62.i32[0]) * v85 + v67 + (*(a2 + 3220) + *(a2 + 3216) + v62.i32[1]) * v86);
    v70 = v79;
    *v71.i8 = v80;
    v57.u64[1] = v65;
    v79 = vmaxq_s32(v79, v57);
    v72 = v54 * v63 + v53 * v64 + v56;
    v73 = ((result + 64) * v55 + 7) & 0xFFFFFFF8;
    v74 = v72 - v88;
    if (v72 <= v88)
    {
      v74 = 0;
    }

    v75 = ((v67 + v74 * v85 + v87 + v61.i32[1] + 64) * v55 + 7) & 0xFFFFFFF8;
    v76.i32[0] = vdup_lane_s32(v61, 1).u32[0];
    v76.i32[1] = v73;
    v80 = vmax_s32(v80, *v76.i8);
    if (v81 <= v75)
    {
      v77 = v75;
    }

    else
    {
      v77 = v81;
    }

    v71.i64[1] = __PAIR64__(v82, v81);
    v76.i64[1] = __PAIR64__(v72, v75);
    if (v82 <= v72)
    {
      v78 = v72;
    }

    else
    {
      v78 = v82;
    }

    v81 = v77;
    v82 = v78;
    v48 = vcgtq_s32(v76, v71);
    v49 = vcgtq_s32(v57, v70);
  }

  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(v49, v48))))
  {
    return AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v79, a4 + 640, 0);
  }

  return result;
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitFast2DControlStream(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(result + 8);
  v5 = v4[65] + 255;
  if (v5 > v4[64])
  {
    v9 = result;
    v10 = a2;
    v11 = a3;
    v12 = a4;
    v13 = AGX::DataBufferAllocator<44ul>::growNoInline(v4 + 3, 14, 0);
    a3 = v11;
    a4 = v12;
    a2 = v10;
    v14 = v13;
    result = v9;
    if (!v14)
    {
      goto LABEL_3;
    }

    v5 = v4[65] + 255;
    if (v5 > v4[64])
    {
      abort();
    }
  }

  v4[66] = v5;
LABEL_3:
  v6 = *(result + 8);
  v7 = (*(v6 + 520) + 127) & 0xFFFFFFFFFFFFFF80;
  v8 = *(v6 + 536);
  *(v6 + 520) = v7 + 128;
  *(v7 + 2) = BYTE2(a3);
  *v7 = a3;
  *(v7 + 7) = BYTE4(a4);
  *(v7 + 3) = a4;
  *(v7 + 8) = -88;
  *(a2 + 1008) = v7 + v8;
  return result;
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::renderTexture(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = v10;
  v146 = v12;
  v145 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v9;
  v204 = *MEMORY[0x29EDCA608];
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v9, 0, v23, v24, v25, v26);
  v27 = MEMORY[0x29EDC56B0];
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  if (v15)
  {
    v28 = *(v15 + 144);
    v29 = *(v15 + 128) >> v28;
    if (v29 <= 1)
    {
      v29 = 1;
    }

    v142 = v29;
    v144 = vcvt_f32_u32(vmax_u32(vshl_u32(*(v15 + 132), vneg_s32(vdup_n_s32(v28))), 0x100000001));
  }

  else
  {
    v144 = 0x3F80000000000000;
    v142 = 0.0;
  }

  v30 = v19[36];
  v31 = v19[33];
  if (v19[32] >> v30 <= 1u)
  {
    v32 = 1;
  }

  else
  {
    v32 = v19[32] >> v30;
  }

  if (v31 >> v30 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v31 >> v30;
  }

  v34 = v19[34] >> v30;
  if (v34 <= 1)
  {
    v34 = 1;
  }

  v141 = v34;
  v148 = v11;
  if (v11)
  {
    v35 = v15 == 0;
  }

  else
  {
    v35 = 1;
  }

  v179[0] = v19;
  LODWORD(v161) = v146;
  if (v19)
  {
    v36 = v179;
  }

  else
  {
    v36 = 0;
  }

  AGX::FramebufferDriverConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferDriverConfig(v197, 1u, v21, v36, &v161, a9, v35, v11 != 0, 1);
  v202 = 0u;
  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(v198, 0);
  v203 = 0;
  AGX::FramebufferGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferGen3_3(v179, *(*(v22 + 8) + 1872), *(*(v22 + 8) + 8), v197, v32, v33, 1);
  v140 = v33;
  AGX::FramebufferGen3_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::finalizeStoreActions(v179);
  AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateResourceGroupUsage(v179, *(*(v22 + 8) + 2008), v37);
  v178 = 0;
  v177 = 0;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startFast2DHardwareCommand(v22, &v178, &v177);
  v38 = v177;
  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupBlitCommand(v22 + 48, v177, *(*(v22 + 8) + 1912), (*(v22 + 8) + 24), v179);
  v139 = v32;
  *(v38 + 220) = v187;
  if (*(*(v179[50] + 848) + 16950) > 0xAu && v191 == 0)
  {
    v40 = 256;
  }

  else
  {
    v40 = 768;
  }

  *(v38 + 219) = v40;
  *(v38 + 894) = v188 != 0;
  v41 = *(*(*(v22 + 8) + 1872) + 848);
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v167, v41, *(v41 + 7192));
  v49.i32[0] = *(v22 + 72);
  v49.i32[1] = *(v22 + 80);
  v42 = vshl_n_s32(*v49.i8, 5uLL);
  *v49.i8 = vshl_u32(vadd_s32(v42, 0xFFF0001437FLL), 0xFFFFFFF4FFFFFFF0);
  v43 = vshl_u32(vadd_s32(v42, 0xFFFF0000537FLL), 0xFFFFFFF0FFFFFFF4);
  v44 = vadd_s32(*v49.i8, vrev64_s32(v43));
  v45 = vmul_s32(v44, 0x600000000ALL);
  v46 = vadd_s32(vdup_lane_s32(v45, 1), v45).u32[0];
  v47 = v44.i32[0];
  v48 = v44.i32[0] + v44.i32[1];
  v49.i32[1] = v43.i32[1];
  if (v193)
  {
    v50 = v193 + 64;
  }

  else
  {
    v50 = 0;
  }

  if (*(v172 + 16999))
  {
    v51 = 11;
  }

  else
  {
    v51 = 6;
  }

  if (v51 >= 8)
  {
    v52 = 8;
  }

  else
  {
    v52 = v51;
  }

  v53 = *(v172 + 7092);
  v171 = 2;
  v54 = vld1_dup_f32(&v194);
  v55 = vshl_u32(vadd_s32(__PAIR64__(v192, v50), 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
  v58 = vrev64_s32(vshl_u32(vadd_s32(__PAIR64__(v192, v50), 0xFFF0000FFFFLL), 0xFFFFFFF4FFFFFFF0));
  v56 = vshl_u32(vadd_s32(v54, 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
  v57 = vadd_s32(vadd_s32(v55, v56), v58);
  v58.i32[0] = v55.i32[1];
  *v59.i8 = v58;
  v59.i64[1] = v49.i64[0];
  v60 = v57.i32[1];
  v61 = v57.i32[0];
  v62 = vaddvq_s32(v59);
  v63 = v57.i32[1] + v57.i32[0];
  v64 = v57.i32[1] + v57.i32[0] + v48;
  _VF = __OFSUB__(v64, v176);
  v66 = v64 - v176;
  if ((v66 < 0) ^ _VF | (v66 == 0))
  {
    v66 = 0;
  }

  v67 = v62 + (v47 + v57.i32[1]) * v174;
  v68 = v167;
  v49.u64[1] = v58;
  *v69.i8 = v168;
  v167 = vmaxq_s32(v167, v49);
  v70 = v52 * v60 + v51 * v61 + v46;
  v71 = ((v175 + v56.i32[1] + (v66 + v63) * v173 + v67 + 64) * v53 + 7) & 0xFFFFFFF8;
  v72 = v70 - v176;
  if (v70 <= v176)
  {
    v72 = 0;
  }

  v73 = ((v62 + v72 * v173 + v175 + v56.i32[1] + 64) * v53 + 7) & 0xFFFFFFF8;
  v74.i32[0] = vdup_lane_s32(v56, 1).u32[0];
  v74.i32[1] = v71;
  v168 = vmax_s32(v168, *v74.i8);
  v75 = v169;
  v76 = v170;
  if (v169 <= v73)
  {
    v77 = v73;
  }

  else
  {
    v77 = v169;
  }

  if (v170 <= v70)
  {
    v78 = v70;
  }

  else
  {
    v78 = v170;
  }

  v169 = v77;
  v170 = v78;
  v69.i64[1] = __PAIR64__(v76, v75);
  v74.i64[1] = __PAIR64__(v70, v73);
  v79 = v177;
  v80 = v177 + 133;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v49, v68), vcgtq_s32(v74, v69)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v167, (v177 + 80), 0);
  }

  v81 = v180;
  v82 = v181;
  v83 = v190;
  v88.i64[1] = v182;
  v84 = v183;
  v85 = v184;
  v86 = v185;
  v87 = v186;
  v79[133] = 0;
  *(v79 + 268) = v81;
  *(v80 + 12) = v88;
  *(v80 + 28) = v84;
  *(v80 + 44) = v85;
  *(v80 + 60) = v86;
  *(v80 + 76) = v87;
  *(v79 + 287) = v83;
  v79[144] = 0;
  v88.i64[0] = v189;
  v79[144] = v189;
  if (v15 && v11)
  {
    v88 = vextq_s8(*v11, *v11, 8uLL);
    *v80 = v88;
  }

  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindFast2DResources(v22, v21, v17, v179, v88);
  if (v15)
  {
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    memset(v160, 0, 24);
    DWORD2(v154) = 14;
    v156 = 0uLL;
    __p = 0;
    *&v154 = &unk_2A23F6560;
    v157 = 0u;
    memset(v158, 0, sizeof(v158));
    v89 = *(*(v22 + 8) + 1872);
    v90 = *(*(v89 + 848) + 6208);
    if (v90 > 7)
    {
      v91 = 0;
    }

    else
    {
      v91 = dword_29D2F4B3C[v90];
    }

    v157 = v198[0];
    *v158 = v198[1];
    *&v158[16] = v199 & 0xFFE00FFF | ((v201 & 0x1FF) << 12);
    *&v158[20] = v200;
    *&v158[24] = (16 * (BYTE4(v181) & 0xF)) | ((*(v15 + 397) << 8 == 768) << 8);
    v159 = v91;
    BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(v89 + 848), &v154);
    *&v154 = &unk_2A23F65A0;
    if (__p)
    {
      *&v156 = __p;
      operator delete(__p);
    }

    v93 = BlitProgramVariant[530];
    do
    {
      IOGPUResourceListAddResource();
      v93 &= ~(1 << __clz(__rbit32(v93)));
    }

    while (v93);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupSpillBuffer(*(*(v22 + 8) + 1872), BlitProgramVariant, v179, v79, 0);
    v94 = v146;
    if (v11)
    {
      v94 = v11[1].u32[2];
    }

    v95 = *(v15 + 416);
    v96 = *(v15 + 424);
    v97 = *(v15 + 432);
    if (*(v15 + 64) < 2u)
    {
      v98 = v95 & 0xEFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v98 = v95 | 0x1000000000000000;
      v97 = v97 & 0xF0000FFFFFFFFFFFLL | ((*(v15 + 144) & 0xF | (16 * (*(v15 + 144) & 0xFu))) << 44);
      v96 |= 0x8000000000000000;
    }

    v99 = *v145;
    v100 = *(v15 + 440);
    v101 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v15, 0, 0, 0, 0) + *(v15 + 344) * v94;
    v102 = v101 >> 4;
    if ((v98 & 0x3F) == 2)
    {
      v103 = v96 & 0xFFFFF00000000000 | (v101 >> 4) & 3;
    }

    else
    {
      v103 = v96;
    }

    *&v161 = v98;
    *(&v161 + 1) = v103 & 0xFFFFF00000000003 | (4 * ((v102 >> 2) & 0x3FFFFFFFFFFLL));
    *&v162 = v97;
    *(&v162 + 1) = v100;
    *v158 = 0uLL;
    LOWORD(v154) = ((v99 & 1) << 7) | ((v99 & 1) << 8) | 0x20;
    *(&v154 + 1) = 0x7F7FFFFF00000000;
    v157 = 0uLL;
    __p = 0;
    *&v156 = 0;
    DWORD2(v156) = 0;
    DWORD1(v154) = ((v99 & 1) << 16) | ((v99 & 1) << 18) | 0x4001;
    AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(v149, &v154);
    *&v165 = v149[0];
    if (v148)
    {
      v104 = v148[1].i32[0];
      v105 = v148[1].i32[1];
      v106 = v148[2];
      v107 = vdup_lane_s32(v144, 0);
      v107.f32[0] = v142;
      v143 = vdiv_f32(vcvt_f32_u32(v106), v107);
      v108 = *v148 + v104;
      v109 = HIDWORD(*v148) + v105;
      v147 = vdiv_f32(vcvt_f32_u32(vadd_s32(v106, *v148)), v107);
      v110 = (v148[3].u32[0] + 0.5) / *&v144.i32[1];
      v111 = (v104 << 8) + 0x200000;
      v112 = (v105 << 8) + 0x200000;
    }

    else
    {
      v109 = v140;
      v110 = (v146 + 0.5) / v141;
      v143 = 0;
      __asm { FMOV            V0.2S, #1.0 }

      v147 = _D0;
      v112 = 0x200000;
      v111 = 0x200000;
      v108 = v139;
    }

    v116 = BlitProgramVariant[808];
    v117 = BlitProgramVariant[809];
    AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitFragmentProgramVariantArguments(&v152, (v22 + 48), (*(v22 + 8) + 24), BlitProgramVariant, &v161, v160, v179);
    v154 = v152;
    LODWORD(__p) = v153;
    HIDWORD(__p) = v116 & 0xE2600000 | 0x40200;
    v156 = xmmword_29D2F1740;
    *v158 = v117 & 0x1FFFF;
    if (HIDWORD(v181) <= 1)
    {
      v118 = 17288;
    }

    else
    {
      v118 = 82824;
    }

    *&v158[12] = v118;
    *&v158[16] = 2;
    *&v158[4] = 0x8888888800600014;
    v119 = *(v22 + 8);
    v120 = v119[65] + 188;
    v27 = MEMORY[0x29EDC56B0];
    if (v120 > v119[64])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v119 + 3, 14, 0))
      {
        goto LABEL_77;
      }

      v120 = v119[65] + 188;
      if (v120 > v119[64])
      {
        abort();
      }
    }

    v119[66] = v120;
LABEL_77:
    v121 = *(v22 + 8);
    v122 = *(v121 + 520);
    v123 = *(v121 + 536);
    *(v121 + 520) = v122 + 188;
    v124 = AGX::ISPPFEncoderGen2<AGX::HAL300::Encoders>::PrimitiveBlock::emit(&v154, v122, v123 + v122, v149);
    v125 = v151;
    v126 = (v112 >> 8);
    *v151 = v111 & 0xFFFFFF | (v112 << 24);
    *(v125 + 4) = v126;
    *(v125 + 8) = *(v125 + 10) << 16;
    v127 = v151;
    *(v151 + 10) = v111;
    *(v127 + 12) = ((v109 << 16) + 0x20000000) & 0xFFFFFF00 | BYTE2(v111);
    *(v127 + 16) = 0;
    v128 = (v108 << 8) + 0x200000;
    v129 = v151;
    v130 = v149[1];
    *(v151 + 20) = v128 & 0xFFFF00 | (v112 << 24);
    *(v129 + 24) = v126;
    *(v129 + 28) = *(v129 + 30) << 16;
    v131 = v151;
    *(v151 + 30) = v108 << 8;
    *(v131 + 32) = ((v109 << 16) + 0x20000000) & 0xFFFFFF00 | BYTE2(v128);
    *(v131 + 36) = 0;
    *v130 = 2130706432;
    *(v130 + 4 * LODWORD(v149[0])) = 2130706432;
    *(v130 + 4 * (2 * LODWORD(v149[0]))) = 2130706432;
    *(v130 + 4 * (3 * LODWORD(v149[0]))) = 2130706432;
    v132 = vsra_n_u32(vadd_s32(v143, v143), v143, 0x1FuLL);
    *(v130 + 4) = v132;
    *(&v133 + 1) = v110;
    *&v133 = v110;
    LODWORD(v131) = v133 >> 31;
    *(v130 + 12) = v131;
    *(v130 + 16) = 2130706432;
    *(v130 + 4 * (LODWORD(v149[0]) + 1)) = v132.i32[0];
    HIDWORD(v133) = v147.i32[1];
    LODWORD(v133) = v147.i32[1];
    v134 = v133 >> 31;
    *(v130 + 4 * (LODWORD(v149[0]) + 2)) = v134;
    *(v130 + 4 * (LODWORD(v149[0]) + 3)) = v131;
    *(v130 + 4 * (LODWORD(v149[0]) + 4)) = 2130706432;
    HIDWORD(v133) = v147.i32[0];
    LODWORD(v133) = v147.i32[0];
    v135 = v133 >> 31;
    *(v130 + 4 * ((2 * LODWORD(v149[0])) | 1u)) = v135;
    *(v130 + 4 * (2 * LODWORD(v149[0]) + 2)) = v132.i32[1];
    *(v130 + 4 * (2 * LODWORD(v149[0]) + 3)) = v131;
    *(v130 + 4 * (2 * LODWORD(v149[0]) + 4)) = 2130706432;
    *(v130 + 4 * (3 * LODWORD(v149[0]) + 1)) = v135;
    *(v130 + 4 * (3 * LODWORD(v149[0]) + 2)) = v134;
    *(v130 + 4 * (3 * LODWORD(v149[0]) + 3)) = v131;
    *(v130 + 4 * (3 * LODWORD(v149[0]) + 4)) = 2130706432;
    *v150 = *v150 & 0xFFFFFF80 | 0x40;
    *v150 = *v150 & 0xFFFF80FF | 0x4100;
    *v150 = *v150 & 0xFF80FFFF | 0x420000;
    *v150 = *v150 & 0x80FFFFFF | 0x43000000;
    v150[1] = v150[1] & 0xFFFFFF80 | 0x42;
    v150[1] = v150[1] & 0xFFFF80FF | 0x4100;
    v79 = v177;
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitFast2DControlStream(v22, v177, v124, v136);
  }

  v137 = *v145;
  if ((*v145 & 6) != 0)
  {
    *(v79 + 893) = 1;
  }

  if ((v137 & 8) != 0)
  {
    *(v79 + 892) = 1;
  }

  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endFast2DHardwareCommand(v22, v178, v79);
  if (**v27)
  {
    IOGPUDeviceTraceEvent();
  }

  free(v196);
  if (v195)
  {
  }

  return AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Framebuffer(v179);
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::render3D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10)
{
  v10 = MEMORY[0x2A1C7C4A8](a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v130 = v18;
  v131 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v10;
  v190 = *MEMORY[0x29EDCA608];
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v10, 0, v24, v25, v26, v27);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v28 = *(a9 + 56);
  v165[0] = v20;
  LODWORD(v150) = v28;
  if (v20)
  {
    v29 = v165;
  }

  else
  {
    v29 = 0;
  }

  AGX::FramebufferDriverConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferDriverConfig(v183, 1u, v22, v29, &v150, 0, 0, 1, 1);
  v188 = 0u;
  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(v184, 0);
  v189 = 0;
  AGX::FramebufferGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferGen3_3(v165, *(*(v23 + 8) + 1872), *(*(v23 + 8) + 8), v183, *(a9 + 32), *(a9 + 36), 1);
  AGX::FramebufferGen3_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::finalizeStoreActions(v165);
  AGX::FramebufferGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::updateResourceGroupUsage(v165, *(*(v23 + 8) + 2008), v30);
  v163 = 0;
  v164 = 0;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startFast2DHardwareCommand(v23, &v164, &v163);
  if (v12)
  {
    v31 = *(v23 + 8);
    v32 = 2 * v12 - 1;
    v33 = v31[25] + v32;
    if (v33 > v31[24])
    {
      if (!AGX::DataBufferAllocator<44ul>::growNoInline(v31 + 3, 4, 0))
      {
        goto LABEL_9;
      }

      v33 = v31[25] + v32;
      if (v33 > v31[24])
      {
        goto LABEL_72;
      }
    }

    v31[26] = v33;
LABEL_9:
    v34 = *(v23 + 8);
    v35 = ((v12 + *(v34 + 200) - 1) & -v12);
    v16 = &v35[*(v34 + 216)];
    *(v34 + 200) = &v35[v12];
    memcpy(v35, v14, v12);
  }

  v36 = v163;
  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupBlitCommand(v23 + 48, v163, *(*(v23 + 8) + 1912), (*(v23 + 8) + 24), v165);
  v129 = v16;
  *(v36 + 220) = v173;
  if (*(*(v165[50] + 848) + 16950) > 0xAu && v177 == 0)
  {
    v38 = 256;
  }

  else
  {
    v38 = 768;
  }

  *(v36 + 219) = v38;
  *(v36 + 894) = v174 != 0;
  v39 = *(*(*(v23 + 8) + 1872) + 848);
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v153, v39, *(v39 + 7192));
  v47.i32[0] = *(v23 + 72);
  v47.i32[1] = *(v23 + 80);
  v40 = vshl_n_s32(*v47.i8, 5uLL);
  *v47.i8 = vshl_u32(vadd_s32(v40, 0xFFF0001437FLL), 0xFFFFFFF4FFFFFFF0);
  v41 = vshl_u32(vadd_s32(v40, 0xFFFF0000537FLL), 0xFFFFFFF0FFFFFFF4);
  v42 = vadd_s32(*v47.i8, vrev64_s32(v41));
  v43 = vmul_s32(v42, 0x600000000ALL);
  v44 = vadd_s32(vdup_lane_s32(v43, 1), v43).u32[0];
  v45 = v42.i32[0];
  v46 = v42.i32[0] + v42.i32[1];
  v47.i32[1] = v41.i32[1];
  if (v179)
  {
    v48 = v179 + 64;
  }

  else
  {
    v48 = 0;
  }

  if (*(v158 + 16999))
  {
    v49 = 11;
  }

  else
  {
    v49 = 6;
  }

  if (v49 >= 8)
  {
    v50 = 8;
  }

  else
  {
    v50 = v49;
  }

  v51 = *(v158 + 7092);
  v157 = 2;
  v52 = vld1_dup_f32(&v180);
  v53 = vshl_u32(vadd_s32(__PAIR64__(v178, v48), 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
  v56 = vrev64_s32(vshl_u32(vadd_s32(__PAIR64__(v178, v48), 0xFFF0000FFFFLL), 0xFFFFFFF4FFFFFFF0));
  v54 = vshl_u32(vadd_s32(v52, 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
  v55 = vadd_s32(vadd_s32(v53, v54), v56);
  v56.i32[0] = v53.i32[1];
  *v57.i8 = v56;
  v57.i64[1] = v47.i64[0];
  v58 = v55.i32[1];
  v59 = v55.i32[0];
  v60 = vaddvq_s32(v57);
  v61 = v55.i32[1] + v55.i32[0];
  v62 = v55.i32[1] + v55.i32[0] + v46;
  v63 = __OFSUB__(v62, v162);
  v64 = v62 - v162;
  if ((v64 < 0) ^ v63 | (v64 == 0))
  {
    v64 = 0;
  }

  v65 = v60 + (v45 + v55.i32[1]) * v160;
  v66 = v153;
  v47.u64[1] = v56;
  *v67.i8 = v154;
  v153 = vmaxq_s32(v153, v47);
  v68 = v50 * v58 + v49 * v59 + v44;
  v69 = ((v161 + v54.i32[1] + (v64 + v61) * v159 + v65 + 64) * v51 + 7) & 0xFFFFFFF8;
  v70 = v68 - v162;
  if (v68 <= v162)
  {
    v70 = 0;
  }

  v71 = ((v60 + v70 * v159 + v161 + v54.i32[1] + 64) * v51 + 7) & 0xFFFFFFF8;
  v72.i32[0] = vdup_lane_s32(v54, 1).u32[0];
  v72.i32[1] = v69;
  v154 = vmax_s32(v154, *v72.i8);
  v73 = v155;
  v74 = v156;
  if (v155 <= v71)
  {
    v75 = v71;
  }

  else
  {
    v75 = v155;
  }

  if (v156 <= v68)
  {
    v76 = v68;
  }

  else
  {
    v76 = v156;
  }

  v155 = v75;
  v156 = v76;
  v67.i64[1] = __PAIR64__(v74, v73);
  v72.i64[1] = __PAIR64__(v68, v71);
  v77 = v163;
  v78 = v163 + 133;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v47, v66), vcgtq_s32(v72, v67)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v153, (v163 + 80), 0);
  }

  v79 = v166;
  *&v80 = v167;
  v81 = v176;
  *(&v80 + 1) = v168;
  v82 = v169;
  v83 = v170;
  v84 = v171;
  v85 = v172;
  v77[133] = 0;
  *(v77 + 268) = v79;
  *(v78 + 12) = v80;
  *(v78 + 28) = v82;
  *(v78 + 44) = v83;
  *(v78 + 60) = v84;
  *(v78 + 76) = v85;
  *(v77 + 287) = v81;
  v77[144] = 0;
  v77[144] = v175;
  v86 = *(a9 + 48);
  v86.i64[1] = *(a9 + 60);
  *v78 = v86;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindFast2DResources(v23, v22, v131, v165, v86);
  DWORD2(v150) = 14;
  memset(v152, 0, 52);
  __p = 0uLL;
  *&v150 = &unk_2A23F6560;
  v87 = *(*(v23 + 8) + 1872);
  v88 = *(*(v87 + 848) + 6208);
  if (v88 > 7)
  {
    v89 = 0;
  }

  else
  {
    v89 = dword_29D2F4B3C[v88];
  }

  *&v152[8] = v184[0];
  *&v152[24] = v184[1];
  *&v152[40] = v185 & 0xFFE00FFF | ((v187 & 0x1FF) << 12);
  *&v152[44] = v186;
  v90 = *a9 & 0xF | (16 * (*(a9 + 4) & 0xF)) | (*(a9 + 75) << 9) & 0x1FFF | (*(a9 + 72) << 10) & 0x1FFF | (*(a9 + 73) << 11) & 0xFFFC1FFF | (*(a9 + 74) << 12) & 0xFFFC1FFF | ((*(a9 + 16) & 0x1F) << 13);
  *&v152[52] = v89;
  *&v152[48] = v90;
  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(v87 + 848), &v150);
  *&v150 = &unk_2A23F65A0;
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  v92 = BlitProgramVariant[530];
  do
  {
    IOGPUResourceListAddResource();
    v92 &= ~(1 << __clz(__rbit32(v92)));
  }

  while (v92);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setupSpillBuffer(*(*(v23 + 8) + 1872), BlitProgramVariant, v165, v77, 0);
  *&v152[48] = 0u;
  memset(v152, 0, 40);
  v150 = 0u;
  __p = 0u;
  *&v152[40] = v129;
  if (v130)
  {
    v141 = 0uLL;
    LOWORD(v136) = 32;
    *(&v136 + 1) = 0x7F7FFFFF00000000;
    v139 = 0;
    v140 = 0;
    v137 = 0;
    *&v138 = 0;
    DWORD2(v138) = 0;
    DWORD1(v136) = 16385;
    v93 = *(v130 + 416);
    v94 = *(v130 + 424);
    v95 = *(v130 + 432);
    if (*(v130 + 64) < 2u)
    {
      v96 = v93 & 0xEFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v96 = v93 | 0x1000000000000000;
      v95 = v95 & 0xF0000FFFFFFFFFFFLL | ((*(v130 + 144) & 0xF | (16 * (*(v130 + 144) & 0xFu))) << 44);
      v94 |= 0x8000000000000000;
    }

    v97 = *(v130 + 440);
    GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v130, 0, 0, 0, 0);
    if ((v96 & 0x3F) == 2)
    {
      v99 = v94 & 0xFFFFF00000000000 | (GPUVirtualAddress >> 4) & 3;
    }

    else
    {
      v99 = v94;
    }

    *&v150 = v96;
    *(&v150 + 1) = v99 & 0xFFFFF00000000003 | (4 * ((GPUVirtualAddress >> 6) & 0x3FFFFFFFFFFLL));
    *&__p = v95;
    *(&__p + 1) = v97;
    AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v152[32], &v136);
  }

  v100 = *(a9 + 8) | (*(a9 + 12) << 16);
  v146 = *(a9 + 20);
  v101 = *(a9 + 28);
  v145 = v100;
  v102 = *(a9 + 40);
  v104 = *(a9 + 64);
  v103 = *(a9 + 68);
  v147 = v101;
  v148 = v102;
  v149 = v103;
  v106 = *(a9 + 48);
  v105 = *(a9 + 52);
  v107 = *(a9 + 60);
  v108 = BlitProgramVariant[808];
  v109 = BlitProgramVariant[809];
  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitFragmentProgramVariantArguments(&v143, (v23 + 48), (*(v23 + 8) + 24), BlitProgramVariant, &v150, &v145, v165);
  v136 = v143;
  LODWORD(v137) = v144;
  HIDWORD(v137) = v108 & 0xE2600000 | 0x40200;
  v138 = xmmword_29D2F1740;
  LODWORD(v141) = v109 & 0x1FFFF;
  if (HIDWORD(v167) <= 1)
  {
    v110 = 17288;
  }

  else
  {
    v110 = 82824;
  }

  HIDWORD(v141) = v110;
  v142 = 2;
  *(&v141 + 4) = 0x8888888800200004;
  v111 = *(v23 + 8);
  v112 = v111[65] + 116;
  if (v112 <= v111[64])
  {
    goto LABEL_57;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v111 + 3, 14, 0))
  {
    v112 = v111[65] + 116;
    if (v112 <= v111[64])
    {
LABEL_57:
      v111[66] = v112;
      goto LABEL_58;
    }

LABEL_72:
    abort();
  }

LABEL_58:
  v113 = *(v23 + 8);
  v114 = *(v113 + 520);
  v115 = *(v113 + 536);
  *(v113 + 520) = v114 + 116;
  v116 = AGX::ISPPFEncoderGen2<AGX::HAL300::Encoders>::PrimitiveBlock::emit(&v136, v114, v115 + v114, &v132);
  v117 = v135;
  v118 = (v106 << 8) + 0x200000;
  v119 = (v105 + 0x2000);
  *v135 = v118 & 0xFFFF00;
  *(v117 + 4) = v119;
  *(v117 + 8) = *(v117 + 10) << 16;
  v120 = v135;
  *(v135 + 10) = v106 << 8;
  *(v120 + 12) = (((v104 + v105) << 16) + 0x20000000) & 0xFFFFFF00 | BYTE2(v118);
  *(v120 + 16) = 0;
  v121 = ((v107 + v106) << 8) + 0x200000;
  v122 = v135;
  v123 = v133;
  *(v135 + 20) = v121 & 0xFFFF00;
  *(v122 + 24) = v119;
  *(v122 + 28) = *(v122 + 30) << 16;
  v124 = v135;
  *(v135 + 30) = (v107 + v106) << 8;
  *(v124 + 32) = (((v104 + v105) << 16) + 0x20000000) & 0xFFFFFF00 | BYTE2(v121);
  *(v124 + 36) = 0;
  *v123 = 2130706432;
  v123[v132] = 2130706432;
  v123[2 * v132] = 2130706432;
  v123[3 * v132] = 2130706432;
  *v134 = *v134 & 0xFFFFFF80 | 0x40;
  *v134 = *v134 & 0xFFFF80FF | 0x4100;
  *v134 = *v134 & 0xFF80FFFF | 0x420000;
  *v134 = *v134 & 0x80FFFFFF | 0x43000000;
  v134[1] = v134[1] & 0xFFFFFF80 | 0x42;
  v134[1] = v134[1] & 0xFFFF80FF | 0x4100;
  v125 = v163;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::emitFast2DControlStream(v23, v163, v116, v126);
  v127 = *a10;
  if ((*a10 & 6) != 0)
  {
    *(v125 + 893) = 1;
  }

  if ((v127 & 8) != 0)
  {
    *(v125 + 892) = 1;
  }

  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endFast2DHardwareCommand(v23, v164, v125);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  free(v182);
  if (v181)
  {
  }

  return AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Framebuffer(v165);
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitTextureToBufferWithTA(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, char a9)
{
  v17 = MEMORY[0x29EDC56B0];
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  v67 = 0;
  v68 = 0;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startTAHardwareCommand(a1);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindTAResources(a1, a2, a4, v18);
  v19 = *(a5 + 112);
  v20 = v19 * a7;
  LODWORD(v62) = 15;
  v64 = 0;
  v65 = 0;
  __p = 0;
  v61 = &unk_2A23F6660;
  v21 = *(a5 + 24) - 2;
  if (v21 >= 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = dword_29D2F4228[v21];
  }

  v23 = (-256 * __clz(v20 - 1)) & 0x700;
  if (v20 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = ((3 * __clz(v19 - 1)) & 3) << 23;
  if (v19 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v66 = ((*(a6 + 16) != 0) << 25) | (8 * (a9 & 0x1F)) | v22 | v26 | v24;
  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(*(a1 + 8) + 1872) + 848), &v61);
  v28 = *(*(*(a1 + 8) + 1872) + 848);
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v56, v28, *(v28 + 7184));
  HIDWORD(v60) = 1;
  v29 = v56;
  v30.i64[0] = v57;
  v31 = *(BlitProgramVariant + 3152);
  v56 = vmaxq_s32(v56, v31);
  v33.i64[0] = *(BlitProgramVariant + 3168);
  *&v57 = vmax_s32(*&v57, *v33.i8);
  v32 = HIDWORD(*(BlitProgramVariant + 3176));
  v33.i64[1] = *(BlitProgramVariant + 3176);
  v34 = DWORD2(v57);
  v35 = v58;
  v36 = v33.i32[2];
  if (SDWORD2(v57) > v33.i32[2])
  {
    v36 = DWORD2(v57);
  }

  if (v58 > v32)
  {
    v32 = v58;
  }

  DWORD2(v57) = v36;
  LODWORD(v58) = v32;
  v30.i64[1] = __PAIR64__(v35, v34);
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v31, v29), vcgtq_s32(v33, v30)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v56, (v67 + 80), 1);
  }

  v61 = &unk_2A23F66A0;
  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  v37 = *(*(*(a1 + 8) + 1872) + 848);
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v56, v37, *(v37 + 7184));
  v38 = v56;
  v39.i64[0] = v57;
  v40 = *(BlitProgramVariant + 3152);
  v56 = vmaxq_s32(v56, v40);
  v41 = *(BlitProgramVariant + 3168);
  v42 = vmax_s32(*&v57, *v41.i8);
  v43 = v41.i32[3];
  v44 = *(BlitProgramVariant + 3176);
  HIDWORD(v60) = 1;
  if (SDWORD2(v57) > v41.i32[2])
  {
    v44 = DWORD2(v57);
  }

  v39.i64[1] = __PAIR64__(v58, DWORD2(v57));
  *&v57 = v42;
  if (v58 > v41.i32[3])
  {
    v43 = v58;
  }

  DWORD2(v57) = v44;
  LODWORD(v58) = v43;
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v40, v38), vcgtq_s32(v41, v39)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v56, (v67 + 80), 1);
  }

  v45 = *(a6 + 24);
  v46 = *(a5 + 432);
  v56 = *(a5 + 416);
  v57 = v46;
  v47 = a8 / a7;
  if (*(a5 + 64) < 2u)
  {
    v48 = v56.i64[0] & 0xEFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v48 = v56.i64[0] | 0x1000000000000000;
    v49 = v57 & 0xF0000FFFFFFFFFFFLL | ((*(a5 + 144) & 0xF | (16 * (*(a5 + 144) & 0xFu))) << 44);
    v56.i64[1] |= 0x8000000000000000;
    *&v57 = v49;
  }

  v56.i64[0] = v48;
  v50 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a5, 0, 0, 0, 0) + *(a5 + 344) * v45;
  if ((v48 & 0x3F) == 2)
  {
    v51 = v50 >> 4;
    v52 = v56.i64[1] & 0xFFFFFFFFFFFFFFFCLL | (v50 >> 4) & 3;
  }

  else
  {
    v52 = v56.u64[1];
    v51 = v50 >> 4;
  }

  v56.i64[1] = v52 & 0xFFFFF00000000003 | (4 * ((v51 >> 2) & 0x3FFFFFFFFFFLL));
  v53 = *(*(*(*(a1 + 8) + 1872) + 848) + 16448);
  v59 = 0;
  v60 = 0;
  v58 = v53;
  v61 = 0;
  v62 = a3;
  v54 = *(a6 + 24);
  LODWORD(v64) = *(a6 + 16) | (*(a6 + 20) << 16);
  HIDWORD(v64) = v47;
  LODWORD(v65) = v54;
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeTACommonDrawState(a1);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeTADraw(a1, BlitProgramVariant, &v56, &v61, *a6, *(a6 + 4));
  result = AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endTAHardwareCommand(a1, v68, v67);
  if (**v17)
  {
    return IOGPUDeviceTraceEvent();
  }

  return result;
}

void sub_29CCFFCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::startTAHardwareCommand(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v120[3] = *MEMORY[0x29EDCA608];
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(v1, 0, v7, v8, v9, v10);
  v11 = AGX::ContextCommon<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses,AGX::HAL300::DataBufferAllocator>::newCommand(v6[1], 2712, 0);
  if ([*v6[1] skipRender])
  {
    v85 = v6[1];
    v86 = *(v85 + 1968) - *(v85 + 1984);
    *(v86 + 140) = 1;
    if ((*(v86 + 136) & 4) != 0)
    {
      **(v85 + 8) = 1;
    }
  }

  *(v11 + 17) = 0;
  *(v11 + 37) = xmmword_29D2F1750;
  *(v11 + 41) = 0;
  *(v11 + 45) = 0;
  *(v11 + 43) = 0;
  v12 = (v6 + 611);
  v13 = vld1_dup_f32(v12);
  *(v6[1] + 2060) = vorr_s8(*(v6[1] + 2060), v13);
  bzero(v11 + 48, 0x9D0uLL);
  v14 = v6[1];
  *(v11 + 24) = *(v14 + 88) + *(v14 + 72);
  v15 = *(v14 + 1864) - 1;
  if (v15 > 6)
  {
    v16 = 31;
  }

  else
  {
    v16 = dword_29D2F750C[v15];
  }

  v17 = v16;
  v18 = v14 + 32 * v16;
  if (((1 << v16) & 0xFFF339E0480) != 0 && !*(v18 + 72) && (AGX::DataBufferAllocator<44ul>::growNoInline(v14 + 24, v16, 0) & 1) == 0)
  {
LABEL_63:
    abort();
  }

  v20 = *(v18 + 64);
  v19 = *(v18 + 72);
  v21 = (v18 + 64);
  v22 = v19 + 95;
  if (v22 <= v20)
  {
    goto LABEL_8;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v14 + 24, v17, 0))
  {
    v22 = v21[1] + 95;
    if (v22 > *v21)
    {
      goto LABEL_63;
    }

LABEL_8:
    v21[2] = v22;
  }

  v23 = v6[1];
  v24 = *(v23 + 1864) - 1;
  if (v24 > 6)
  {
    v27 = 11;
    v26 = 1080;
    v25 = 1064;
  }

  else
  {
    v25 = qword_29D2F4258[v24];
    v26 = qword_29D2F4290[v24];
    v27 = dword_29D2F7760[v24];
  }

  v28 = (*(v23 + v25) + 63) & 0xFFFFFFFFFFFFFFC0;
  v29 = v28 + *(v23 + v26);
  *(v23 + v25) = v28 | 0x20;
  *(v11 + 93) = v29;
  v11[188] = 1;
  v11[223] = 8;
  v11[475] = 8;
  v30 = v27;
  v31 = (v23 + 64 + 32 * v27);
  if (((1 << v27) & 0xFFF00000480) != 0 && !v31[1] && (AGX::DataBufferAllocator<44ul>::growNoInline(v23 + 24, v27, 0) & 1) == 0)
  {
    goto LABEL_63;
  }

  v32 = v31[1] + 19;
  if (v32 <= *v31)
  {
    goto LABEL_15;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v23 + 24, v30, 0))
  {
    v32 = v31[1] + 19;
    if (v32 > *v31)
    {
      goto LABEL_63;
    }

LABEL_15:
    v31[2] = v32;
  }

  v33 = v6[1];
  v34 = *(v33 + 1864) - 1;
  if (v34 > 6)
  {
    v35 = 11;
  }

  else
  {
    v35 = qword_29D2F7728[v34];
  }

  v36 = v33 + 32 * v35;
  v37 = (*(v36 + 72) + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = *(v36 + 88);
  *(v36 + 72) = v37 | 4;
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v116, *(*(v33 + 1872) + 848), 0, 2, 2, &texFormatR8UI, 13, 0, 0.0, 0, 2, 0, 0, 84148994, 1u, 1u, 1u, 1u, 1, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, v87, 0);
  v116[39] = 0;
  v116[0] = off_2A23FA3D8;
  v116[9] = v37 + v38;
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::texBaseAddressesUpdated(v116);
  memset(v120, 0, 24);
  v98[0] = v116;
  v88.i32[0] = 0;
  AGX::FramebufferDriverConfig<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferDriverConfig(v117, 1u, v120, v98, &v88, 0, 0, 1, 1);
  *&v118[392] = 0u;
  AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(v118, 0);
  v119 = 0;
  AGX::FramebufferGen3_3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::FramebufferGen3_3(v98, *(v6[1] + 1872), *(v6[1] + 8), v117, 1, 1, 1);
  AGX::FramebufferGen3_1<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::finalizeStoreActions(v98);
  AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupBlitCommand((v6 + 6), v11 + 114, *(v6[1] + 1912), (v6[1] + 24), v98);
  v39 = *(*(v6[1] + 1872) + 848);
  AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::SpillInfoGen4(&v88, v39, *(v39 + 7192));
  v47.i32[0] = *(v6 + 18);
  v47.i32[1] = *(v6 + 20);
  v40 = vshl_n_s32(*v47.i8, 5uLL);
  *v47.i8 = vshl_u32(vadd_s32(v40, 0xFFF0001437FLL), 0xFFFFFFF4FFFFFFF0);
  v41 = vshl_u32(vadd_s32(v40, 0xFFFF0000537FLL), 0xFFFFFFF0FFFFFFF4);
  v42 = vadd_s32(*v47.i8, vrev64_s32(v41));
  v43 = vmul_s32(v42, 0x600000000ALL);
  v44 = vadd_s32(vdup_lane_s32(v43, 1), v43).u32[0];
  v45 = v42.i32[0];
  v46 = v42.i32[0] + v42.i32[1];
  v47.i32[1] = v41.i32[1];
  if (v110)
  {
    v48 = v110 + 64;
  }

  else
  {
    v48 = 0;
  }

  if (*(v93 + 16999))
  {
    v49 = 11;
  }

  else
  {
    v49 = 6;
  }

  if (v49 >= 8)
  {
    v50 = 8;
  }

  else
  {
    v50 = v49;
  }

  v51 = *(v93 + 7092);
  v92 = 2;
  v52 = vld1_dup_f32(&v111);
  v53 = vshl_u32(vadd_s32(__PAIR64__(v109, v48), 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
  v58 = vrev64_s32(vshl_u32(vadd_s32(__PAIR64__(v109, v48), 0xFFF0000FFFFLL), 0xFFFFFFF4FFFFFFF0));
  v54 = vshl_u32(vadd_s32(v52, 0xFFFF00000FFFLL), 0xFFFFFFF0FFFFFFF4);
  v55 = vadd_s32(vadd_s32(v53, v54), v58);
  v56 = v55.i32[1];
  v57 = v55.i32[0];
  v58.i32[0] = v53.i32[1];
  *v59.i8 = v58;
  v59.i64[1] = v47.i64[0];
  v60 = vaddvq_s32(v59);
  v61 = v56 + v57 + v46;
  v62 = __OFSUB__(v61, v97);
  v63 = v61 - v97;
  if ((v63 < 0) ^ v62 | (v63 == 0))
  {
    v63 = 0;
  }

  v64 = v88;
  *v65.i8 = v89;
  v47.u64[1] = v58;
  v88 = vmaxq_s32(v88, v47);
  v66 = v50 * v56 + v49 * v57 + v44;
  v67 = ((v96 + v54.i32[1] + (v63 + v56 + v57) * v94 + v60 + (v45 + v56) * v95 + 64) * v51 + 7) & 0xFFFFFFF8;
  v68 = v66 - v97;
  if (v66 <= v97)
  {
    v68 = 0;
  }

  v69 = ((v60 + v68 * v94 + v96 + v54.i32[1] + 64) * v51 + 7) & 0xFFFFFFF8;
  v70.i32[0] = vdup_lane_s32(v54, 1).u32[0];
  v70.i32[1] = v67;
  v89 = vmax_s32(v89, *v70.i8);
  v71 = v90;
  v72 = v91;
  if (v90 <= v69)
  {
    v73 = v69;
  }

  else
  {
    v73 = v90;
  }

  if (v91 <= v66)
  {
    v74 = v66;
  }

  else
  {
    v74 = v91;
  }

  v90 = v73;
  v91 = v74;
  v65.i64[1] = __PAIR64__(v72, v71);
  v70.i64[1] = __PAIR64__(v66, v69);
  if (vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_s32(v47, v64), vcgtq_s32(v70, v65)))))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(&v88, (v11 + 388), 0);
  }

  AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateDatabufferResources(v98, (v6[1] + 24));
  AGX::FramebufferGen3_2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::assignRenderRegisters(v98, (v11 + 48), (v11 + 228), 1, 1);
  v75 = *(v11 + 66);
  *(v11 + 482) = *(v11 + 65);
  *(v11 + 486) = v75;
  *(v11 + 490) = *(v11 + 67);
  *&v76 = v100;
  v77 = v108;
  v78 = v106;
  *(&v76 + 1) = v101;
  v79 = v102;
  v80 = v103;
  v81 = v104;
  v82 = v105;
  v11[576] = v99;
  *(v11 + 577) = v76;
  *(v11 + 581) = v79;
  *(v11 + 585) = v80;
  *(v11 + 589) = v81;
  *(v11 + 593) = v82;
  v11[595] = v77;
  v11[598] = v78;
  *(v11 + 2404) = 0;
  *(v11 + 599) = 0;
  *(v11 + 298) = v107;
  v83 = v113;
  if (v113)
  {
    v11[599] = v113;
    v11[600] = v114;
    v83 = 1;
  }

  *(v11 + 2404) = v83;
  free(v115);
  if (v112)
  {
  }

  AGX::Framebuffer<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~Framebuffer(v98);
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v116);
  *(v11 + 1798) = 1;
  *(v11 + 778) = 1;
  AGX::ContextSwitcherGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes>::setupRenderCommand((v6 + 2), v11 + 24, v6[1] + 24);
  result = [*v6[1] skipRender];
  if (result)
  {
    *(v11 + 764) = 1;
    *(v11 + 1798) = 1;
  }

  *v5 = v11;
  *v3 = v11 + 48;
  if (v6[28])
  {
    if (*(v6[1] + 1896))
    {
      MTLResourceListAddResource();
    }

    return IOGPUResourceListAddResource();
  }

  return result;
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindTAResources(uint64_t a1, uint64_t a2, void *a3, int8x16_t a4)
{
  v6 = *a2;
  v7 = MEMORY[0x29EDC5638];
  if (a3)
  {
    v8 = *a3;
    if (*a3 != v6 && v8 != 0)
    {
      v10 = *(a1 + 8);
      if (*(v10 + 1896))
      {
        v11 = a3;
        MTLResourceListAddResource();
        a3 = v11;
        v10 = *(a1 + 8);
      }

      if (*(a1 + 240))
      {
        goto LABEL_36;
      }

      if (a3[1])
      {
        v12 = a3;
        IOGPUResourceListAddResource();
        a3 = v12;
        v10 = *(a1 + 8);
      }

      if (a3[2])
      {
        IOGPUResourceListAddResource();
        v10 = *(a1 + 8);
      }

      v13 = &v8[*v7];
      v14 = *(v13 + 2);
      if ((v14 & 0x7FFFFFFF80) == 0 || (v14 >> 61) - 5 < 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_36;
      }

      v16 = *(v10 + 2008);
      if (*(v16[2].i64[1] + 480) != 1)
      {
        goto LABEL_36;
      }

      v17 = v16[3];
      v18 = v16[4];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v17), vceqzq_s64(v18))))) & 1) == 0)
      {
        goto LABEL_36;
      }

      v19 = &v8[*v7];
      if ((v14 & 0x1000000000000000) != 0)
      {
        v19 = *v13;
      }

      v20 = *v19;
      if (!v20)
      {
        goto LABEL_36;
      }

      v21 = *v20;
      v22 = v20[1];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v20), vceqzq_s64(v22))))) & 1) == 0)
      {
        goto LABEL_36;
      }

      v23 = vandq_s8(v22, v18);
      v24 = v23.u64[1];
      if (v23.i64[1])
      {
        v25 = 3;
      }

      else
      {
        v24 = v23.i64[0];
        if (v23.i64[0])
        {
          v25 = 2;
        }

        else
        {
          v26 = vandq_s8(v21, v17);
          v24 = v26.u64[1];
          if (v26.i64[1])
          {
            v25 = 1;
          }

          else
          {
            v24 = v26.i64[0];
            if (!v26.i64[0])
            {
LABEL_36:
              IOGPUResourceListAddResource();
              goto LABEL_37;
            }

            v25 = 0;
          }
        }
      }

      v27 = &v16->i8[8 * v25];
      v28 = *(v27 + 10);
      v29 = 1 << (__clz(v24) ^ 0x3Fu);
      v30 = (v29 & v28) != 0;
      if ((v29 & (*(v27 + 14) | v28)) != 0)
      {
        v31 = (*(v13 + 1) + 127) & 0xFFFFFFFFFFFFFF80;
        v32 = &v8[*v7];
        if ((v14 & 0x1000000000000000) != 0)
        {
          v32 = *v13;
        }

        v35[0] = v32;
        v35[1] = v31;
        v36 = v14 >> 7;
        v37 = 1;
        v38 = v30;
        ResourceTracker<_ResourceGroupBinding>::addResource(v16, v35, *(v13 + 12), 1);
      }

      goto LABEL_36;
    }
  }

LABEL_37:
  v33 = *(a1 + 8);
  if (*(v33 + 1896))
  {
    MTLResourceListAddResource();
    v33 = *(a1 + 8);
  }

  if (*(a2 + 8))
  {
    IOGPUResourceListAddResource();
    v33 = *(a1 + 8);
  }

  if (*(a2 + 16))
  {
    IOGPUResourceListAddResource();
    v33 = *(a1 + 8);
  }

  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(v33 + 2008), v6, 3, a4);
  IOGPUResourceListAddResource();
  if (!*(a1 + 224))
  {
    [v6 resourceOptions];
  }

  return AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindTrackedProxyResource(a1);
}

double AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeTACommonDrawState(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[9];
  if ((v2 + 9) > v1[8])
  {
    v42 = a1;
    v43 = AGX::DataBufferAllocator<44ul>::growNoInline(v1 + 3, 0, 0);
    a1 = v42;
    if (v43)
    {
      v44 = v1[9] + 72;
      if (v44 > v1[8])
      {
        goto LABEL_11;
      }

      v1[10] = v44;
      *v2 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress((v1 + 3), 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
      a1 = v42;
    }
  }

  else
  {
    v1[10] = v2 + 9;
  }

  v3 = *(a1 + 8);
  v4 = v3[129] + 876;
  if (v4 > v3[128])
  {
    v45 = a1;
    v46 = AGX::DataBufferAllocator<44ul>::growNoInline(v3 + 3, 30, 0);
    a1 = v45;
    if (!v46)
    {
      goto LABEL_5;
    }

    v4 = v3[129] + 876;
    if (v4 > v3[128])
    {
LABEL_11:
      abort();
    }
  }

  v3[130] = v4;
LABEL_5:
  v5 = *(a1 + 8);
  v6 = v5[129];
  v7 = v5[131] + v6;
  v5[129] = v6 + 24;
  *v6 = xmmword_29D2F1760;
  *(v6 + 16) = 0x1FFFF00023020;
  v8 = __ROR8__(v7, 32);
  v9 = v5[9];
  *v9 = v8 & 0xFFFFFFFC000000FFLL | 0x600;
  v5[9] = v9 + 1;
  v10 = *(a1 + 8);
  v11 = v10[129];
  v12 = v10[131] + v11;
  v10[129] = v11 + 132;
  *v11 = 332412770;
  *(v11 + 4) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 36) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 84) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 116) = 0u;
  v13 = v10[9];
  *v13 = __ROR8__(v12, 32) & 0xFFFFFFFC000000FFLL | 0x2100;
  v10[9] = v13 + 1;
  v14 = *(a1 + 8);
  v15 = v14[129];
  v16 = v14[131] + v15;
  v14[129] = v15 + 132;
  *v15 = 332412768;
  *(v15 + 4) = 0u;
  *(v15 + 20) = 0u;
  *(v15 + 36) = 0u;
  *(v15 + 52) = 0u;
  *(v15 + 68) = 0u;
  *(v15 + 84) = 0u;
  *(v15 + 100) = 0u;
  *(v15 + 116) = 0u;
  v17 = v14[9];
  *v17 = __ROR8__(v16, 32) & 0xFFFFFFFC000000FFLL | 0x2100;
  v14[9] = v17 + 1;
  v18 = *(a1 + 8);
  v19 = v18[129];
  v20 = v18[131] + v19;
  v18[129] = v19 + 20;
  *v19 = xmmword_29D2F1770;
  *(v19 + 16) = 0;
  v21 = __ROR8__(v20, 32);
  v22 = v18[9];
  *v22 = v21 & 0xFFFFFFFC000000FFLL | 0x500;
  v18[9] = v22 + 1;
  v23 = v18[129];
  v24 = v18[131] + v23;
  v18[129] = v23 + 28;
  *v23 = xmmword_29D2F1780;
  *(v23 + 16) = 0xE0000000E000000;
  *(v23 + 24) = 0;
  v25 = __ROR8__(v24, 32);
  v26 = v18[9];
  *v26 = v25 & 0xFFFFFFFC000000FFLL | 0x700;
  v18[9] = v26 + 1;
  v27 = *(a1 + 8);
  v28 = v27[129];
  v29 = v27[131];
  v27[129] = v28 + 40;
  *v28 = 12288;
  *(v28 + 4) = 0;
  *(v28 + 12) = 0;
  *(v28 + 32) = 0x3F80000000000000;
  v30 = __ROR8__(v29 + v28, 32);
  *(v28 + 16) = xmmword_29D2F1790;
  v31 = v27[9];
  *v31 = v30 & 0xFFFFFFFC000000FFLL | 0xA00;
  v27[9] = v31 + 1;
  v32 = *(a1 + 8);
  v33 = v32[129];
  v34 = v32[131] + v33;
  v32[129] = v33 + 12;
  *&result = 8650754;
  *v33 = 8650754;
  *(v33 + 8) = 131200;
  v36 = __ROR8__(v34, 32);
  v37 = v32[9];
  *v37 = v36 & 0xFFFFFFFC000000FFLL | 0x300;
  v32[9] = v37 + 1;
  v38 = v32[129];
  v39 = v38 + v32[131];
  v32[129] = v38 + 1;
  *v38 = 0x48000800000;
  v40 = __ROR8__(v39, 32);
  v41 = v32[9];
  *v41 = v40 & 0xFFFFFFFC000000FFLL | 0x200;
  v32[9] = v41 + 1;
  return result;
}

float AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::encodeTADraw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v161 = *MEMORY[0x29EDCA608];
  v11 = *(a2 + 2120);
  do
  {
    v11 &= ~(1 << __clz(__rbit32(v11)));
    IOGPUResourceListAddResource();
  }

  while (v11);
  v12 = *(a1 + 8);
  v13 = v12[9];
  if (v13 + 60 > v12[8])
  {
    if (AGX::DataBufferAllocator<44ul>::growNoInline(v12 + 3, 0, 0))
    {
      v132 = v12[9] + 60;
      if (v132 > v12[8])
      {
        goto LABEL_123;
      }

      v12[10] = v132;
      *v13 = __ROR8__(AGX::DataBufferAllocator<44ul>::getGPUAddress((v12 + 3), 0), 32) & 0xFFFFFFFF000000FFLL | 0x80000000;
    }
  }

  else
  {
    v12[10] = v13 + 60;
  }

  v14 = *(a1 + 8);
  v15 = (*(*(a2 + 1784) + 8) - **(a2 + 1784)) + 63;
  v16 = v14[29] + v15;
  if (v16 <= v14[28])
  {
LABEL_6:
    v14[30] = v16;
    goto LABEL_7;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v14 + 3, 5, 0))
  {
    v16 = v14[29] + v15;
    if (v16 > v14[28])
    {
      goto LABEL_123;
    }

    goto LABEL_6;
  }

LABEL_7:
  v17 = *(a2 + 16) + 31;
  v18 = v14[21] + v17;
  if (v18 <= v14[20])
  {
LABEL_8:
    v14[22] = v18;
    goto LABEL_9;
  }

  if (AGX::DataBufferAllocator<44ul>::growNoInline(v14 + 3, 3, 0))
  {
    v18 = v14[21] + v17;
    if (v18 > v14[20])
    {
      goto LABEL_123;
    }

    goto LABEL_8;
  }

LABEL_9:
  v19 = *(a2 + 16);
  v153 = a1;
  if (v19)
  {
    v20 = (v14[21] + 31) & 0xFFFFFFFFFFFFFFE0;
    v21 = v20 + v14[23];
    v14[21] = v20 + v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  v22 = ((v14[29] + 63) & 0xFFFFFFFFFFFFFFC0);
  v152 = v14[31];
  v150 = v14;
  v14[29] = &v22[*(*(a2 + 1784) + 8) - **(a2 + 1784)];
  v23 = *(a2 + 520);
  v24 = *(a2 + 512);
  v26 = v23 - v24;
  v25 = v23 == v24;
  v27 = *(a2 + 408) & 1;
  if (v25)
  {
    v27 = 0;
  }

  v149 = a6;
  if (!v19)
  {
    goto LABEL_96;
  }

  v144 = v26;
  v141 = v27;
  v142 = *(a2 + 408);
  v28 = *(a2 + 712);
  v29 = *(a2 + 128);
  v139 = *(a2 + 256);
  v140 = *(a2 + 264);
  v30 = *(a2 + 48);
  v31 = *(a2 + 52);
  v143 = *(a2 + 416);
  v145 = *(a2 + 420);
  v32 = *(a2 + 744);
  v33 = *(a2 + 745);
  if (*(a2 + 744))
  {
    *(a3 + 56) = v21 + *(a2 + 20);
  }

  if (v33)
  {
    *(a3 + 64) = v21 + *(a2 + 40);
  }

  v34 = 0;
  v148 = v21;
  v146 = v31;
  v147 = v30;
  if (v30 != v28)
  {
    v137 = v29;
    v138 = v33;
    v154 = a4;
    v155 = a3;
    v35 = &unk_2A23F6980;
    v157 = &unk_2A23F6980;
    v158 = &v154;
    v159 = &v155;
    v160 = &v157;
    v36 = *(a2 + 80);
    v37 = *(a2 + 88);
    if (v36 == v37)
    {
      v44 = &v157;
      v21 = v148;
    }

    else
    {
      v38 = 0;
      do
      {
        v156[0] = *v36;
        if (!v160)
        {
LABEL_128:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        v40 = (*(*v160 + 6))(v160, v156);
        v41 = *(v36 + 8);
        v42 = *(v36 + 16);
        if (v41 == v42)
        {
          v39 = v38;
        }

        else
        {
          do
          {
            v43 = *v41++;
            v39 = (v38 + 1);
            *(v20 + 8 * v38) = *(v40 + 8 * v43);
            LODWORD(v38) = v38 + 1;
          }

          while (v41 != v42);
        }

        v36 += 32;
        v38 = v39;
      }

      while (v36 != v37);
      v44 = v160;
      if (v160 != &v157)
      {
        a6 = v149;
        v21 = v148;
        if (v160)
        {
          (*(*v160 + 5))(v160);
        }

        goto LABEL_34;
      }

      v35 = *v160;
      a6 = v149;
      v21 = v148;
    }

    v35[4](v44);
LABEL_34:
    v31 = v146;
    v30 = v147;
    if (*(a2 + 552))
    {
      v45 = *(a2 + 536);
      if (v45 != (a2 + 544))
      {
        do
        {
          *(v20 + 4 * *(v45 + 7)) |= *(v45 + 8);
          v54 = v45[1];
          if (v54)
          {
            do
            {
              v55 = v54;
              v54 = *v54;
            }

            while (v54);
          }

          else
          {
            do
            {
              v55 = v45[2];
              v25 = *v55 == v45;
              v45 = v55;
            }

            while (!v25);
          }

          v45 = v55;
        }

        while (v55 != (a2 + 544));
      }
    }

    v46 = (v137 + 3) & 0xFFFFFFFC;
    if (v32)
    {
      v47 = *(a2 + 704);
      if (v47 >= 4)
      {
        v48 = v47 >> 2;
        v49 = *(a2 + 144);
        v50 = (v20 + 8 * v46);
        do
        {
          v51 = *v49;
          v49 += 4;
          v52 = (a3 + 8 * v51);
          v53 = v52[1];
          *v50 = *v52;
          v50[1] = v53;
          v50 += 2;
          --v48;
        }

        while (v48);
      }

      v46 += v47;
    }

    else
    {
      v47 = 0;
    }

    if (v138)
    {
      v56 = *(a2 + 708);
      v57 = (v20 + 8 * v46);
      if (*(a2 + 1584) == 1)
      {
        if (v56)
        {
          v134 = (*(a2 + 144) + 4 * v47);
          do
          {
            v135 = *v134++;
            *v57++ = *(a3 + 8 * v135);
            --v56;
          }

          while (v56);
        }
      }

      else if (v56 >= 4)
      {
        v58 = v56 >> 2;
        v59 = (*(a2 + 144) + 4 * v47);
        do
        {
          v60 = *v59;
          v59 += 4;
          *v57 = *(a3 + 8 * v60);
          v57 += 4;
          --v58;
        }

        while (v58);
      }
    }

    v34 = 8 * (v147 - v28);
  }

  if (v28)
  {
    if (v28 >= 4)
    {
      v61 = *(a2 + 2312);
      v62 = v28 >> 2;
      v63 = (v20 + v34);
      do
      {
        v64 = *v61;
        v61 += 4;
        *v63 = v64;
        v63 += 4;
        --v62;
      }

      while (v62);
    }

    v34 += 8 * v28;
  }

  if (!v31)
  {
    v75 = v145;
    v76 = v144;
    goto LABEL_77;
  }

  *(a4 + 16) = v21 + v34 + 8;
  v154 = a4;
  v155 = a3;
  v65 = &unk_2A23F69C8;
  v157 = &unk_2A23F69C8;
  v158 = &v154;
  v159 = &v155;
  v160 = &v157;
  v66 = *(a2 + 192);
  v67 = *(a2 + 200);
  if (v66 == v67)
  {
    v74 = &v157;
    v21 = v148;
    v75 = v145;
    v76 = v144;
  }

  else
  {
    v68 = 0;
    do
    {
      v156[0] = *v66;
      if (!v160)
      {
        goto LABEL_128;
      }

      v70 = (*(*v160 + 6))(v160, v156);
      v71 = *(v66 + 8);
      v72 = *(v66 + 16);
      if (v71 == v72)
      {
        v69 = v68;
      }

      else
      {
        do
        {
          v73 = *v71++;
          v69 = (v68 + 1);
          *(v20 + v34 + 4 * v68) = *(v70 + 4 * v73);
          LODWORD(v68) = v68 + 1;
        }

        while (v71 != v72);
      }

      v66 += 32;
      v68 = v69;
    }

    while (v66 != v67);
    v74 = v160;
    a6 = v149;
    if (v160 != &v157)
    {
      v21 = v148;
      v75 = v145;
      v76 = v144;
      if (v160)
      {
        (*(*v160 + 5))(v160);
      }

      goto LABEL_76;
    }

    v65 = *v160;
    v21 = v148;
    v75 = v145;
    v76 = v144;
  }

  v65[4](v74);
LABEL_76:
  v30 = v147;
  v34 += 4 * v146;
LABEL_77:
  if ((v76 >> 2))
  {
    v77 = v30 + ((v140 - v139) >> 2);
    v78 = 4 * (v141 + v142);
    v79 = (v20 + (v78 + 8 * v77));
    v80 = *(a2 + 512);
    v81 = v76 >> 2;
    do
    {
      v82 = *v80++;
      *v79++ = *(a3 + 8 * v82);
      LODWORD(v81) = v81 - 1;
    }

    while (v81);
    v34 = v78 + 8 * (v77 + (v76 >> 2));
  }

  if (v75 == -v143)
  {
    goto LABEL_96;
  }

  v83 = v21;
  v84 = (v20 + v34);
  v85 = 4 * *(a2 + 416);
  memcpy(v84, (a3 + 4 * *(a2 + 412)), v85);
  v154 = a4;
  v155 = a3;
  v86 = &unk_2A23F69C8;
  v157 = &unk_2A23F69C8;
  v158 = &v154;
  v159 = &v155;
  v160 = &v157;
  v87 = *(a2 + 448);
  v88 = *(a2 + 456);
  if (v87 == v88)
  {
    v96 = &v157;
    v21 = v83;
  }

  else
  {
    v89 = 0;
    v90 = &v84[v85];
    do
    {
      v156[0] = *v87;
      if (!v160)
      {
        goto LABEL_128;
      }

      v92 = (*(*v160 + 6))(v160, v156);
      v93 = *(v87 + 8);
      v94 = *(v87 + 16);
      if (v93 == v94)
      {
        v91 = v89;
      }

      else
      {
        do
        {
          v95 = *v93++;
          v91 = (v89 + 1);
          *&v90[4 * v89] = *(v92 + 4 * v95);
          LODWORD(v89) = v89 + 1;
        }

        while (v93 != v94);
      }

      v87 += 32;
      v89 = v91;
    }

    while (v87 != v88);
    v96 = v160;
    if (v160 != &v157)
    {
      a6 = v149;
      v21 = v83;
      if (v160)
      {
        (*(*v160 + 5))(v160);
      }

      goto LABEL_96;
    }

    v86 = *v160;
    a6 = v149;
    v21 = v83;
  }

  v86[4](v96);
LABEL_96:
  v97 = *(a2 + 1784);
  memcpy(v22, *v97, *(v97 + 8) - *v97);
  if (*(v97 + 272) == 1)
  {
    v98.i64[0] = v21;
    v98.i64[1] = v21 >> 5;
    *&v22[*(v97 + 276)] = vbslq_s8(xmmword_29D2F17C0, *&v22[*(v97 + 276)], vshlq_u8(vqtbl1q_s8(v98, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  v99 = *(v97 + 224);
  v100 = *(v97 + 232);
  for (i = v153; v99 != v100; v99 += 3)
  {
    v102.i64[0] = *(a3 + 8 * v99[1]) + *v99;
    v102.i64[1] = v102.i64[0] >> 5;
    *&v22[v99[2]] = vbslq_s8(xmmword_29D2F17C0, *&v22[v99[2]], vshlq_u8(vqtbl1q_s8(v102, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  v103 = *(v97 + 248);
  for (j = *(v97 + 256); v103 != j; v103 += 3)
  {
    v105.i64[0] = *(a4 + 8 * v103[1]) + *v103;
    v105.i64[1] = v105.i64[0] >> 5;
    *&v22[v103[2]] = vbslq_s8(xmmword_29D2F17C0, *&v22[v103[2]], vshlq_u8(vqtbl1q_s8(v105, xmmword_29D2F17A0), xmmword_29D2F17B0));
  }

  v106 = &v22[v152];
  v107 = *(v153 + 48);
  if (v107)
  {
    v108 = *v97;
    v109 = *(v97 + 8);
    v110 = *(a2 + 2192);
    LODWORD(v111) = *(v107 + 2);
    v112 = v111 + 1;
    if (*(v107 + 3) >= (v111 + 1))
    {
      v115 = *v107;
    }

    else
    {
      v113 = -__clz(v111);
      v114 = malloc_type_malloc(40 << (v113 & 0x1F), 0x10800400D7C94D2uLL);
      v115 = v114;
      v116 = 1 << v113;
      v111 = *(v107 + 2);
      if (v111)
      {
        memcpy(v114, *v107, 40 * v111);
        free(*v107);
        LODWORD(v111) = *(v107 + 2);
      }

      *(v107 + 3) = v116;
      *v107 = v115;
      a6 = v149;
    }

    v117 = &v115[40 * v111];
    *v117 = 13;
    *(v117 + 1) = v106;
    *(v117 + 2) = v22;
    *(v117 + 3) = (v109 - v108);
    *(v117 + 8) = v110;
    *(v107 + 2) = v112;
    i = v153;
  }

  v118 = v150[9];
  *v118 = *(a2 + 3192);
  v150[9] = v118 + 8;
  v119 = *(a2 + 3136);
  v120 = *(a2 + 3144);
  v121 = (v106 >> 16) & 0xFFC00000 | *(a2 + 3128) & 0x3FFFFF;
  *(v118 + 8) = *(a2 + 3120);
  *(v118 + 16) = v121;
  *(v118 + 20) = v106 >> 6;
  *(v118 + 32) = v120;
  *(v118 + 24) = v119;
  v150[9] = v118 + 36;
  v122 = *(i + 8);
  v123 = v122[129] + 20;
  if (v123 > v122[128])
  {
    v133 = AGX::DataBufferAllocator<44ul>::growNoInline(v122 + 3, 30, 0);
    i = v153;
    if (!v133)
    {
      goto LABEL_111;
    }

    v123 = v122[129] + 20;
    if (v123 > v122[128])
    {
LABEL_123:
      abort();
    }
  }

  v122[130] = v123;
LABEL_111:
  v124 = *(a2 + 3184);
  v125 = *(i + 8);
  v126 = v125[129];
  v127 = v125[131] + v126;
  v125[129] = v126 + 20;
  *v126 = 203948032;
  *(v126 + 4) = v124 & 0xF1C00FF;
  *(v126 + 8) = 0;
  *(v126 + 16) = HIDWORD(v124);
  v128 = v125[9];
  *v128 = __ROR8__(v127, 32) & 0xFFFFFFFC000000FFLL | 0x500;
  v125[9] = v128 + 1;
  LODWORD(v129) = 1640235008;
  DWORD1(v129) = a5;
  *(&v129 + 1) = a6;
  v130 = *(i + 8);
  v131 = *(v130 + 72);
  *v131 = v129;
  *(v130 + 72) = v131 + 1;
  ++*(v130 + 1940);
  *(*(i + 8) + 1956) += a6 * a5;
  return *&v129;
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endTAHardwareCommand(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = *(result + 8);
  v4 = *(v3 + 72);
  *(v3 + 72) = v4 + 1;
  *v4 = *(result + 88);
  v5 = *(result + 8);
  LODWORD(v4) = *(v5 + 1956);
  v6 = *(v5 + 1960);
  *(a3 + 583) = 0;
  if (v4 <= 4 && v6 != 0)
  {
    *(a3 + 146) |= 1uLL;
    v5 = *(result + 8);
  }

  if (!*(*(v5 + 1912) + 520))
  {
    v8 = *(v5 + 1968) - *(v5 + 1984);
    *(v8 + 140) = 1;
    if ((*(v8 + 136) & 4) != 0)
    {
      **(v5 + 8) = 1;
    }
  }

  if (!*(a2 + 132))
  {
    *(a3 + 2068) = *(v5 + 1928);
    a3[516] = *(v5 + 1924);
    *(a3 + 259) = *(v5 + 1932);
    if (!*(result + 224) || (v10 = *(result + 232), v9 = *(result + 236), (v10 & v9) == 0xFFFFFFFF))
    {
      a3[149] = -1;
      *(a3 + 147) = -1;
    }

    else
    {
      v11 = result;
      v12 = a3;
      v13 = [*(result + 224) resourceID];
      a3 = v12;
      v14 = v13;
      result = v11;
      v12[147] = v14;
      v12[148] = v10;
      v12[149] = v9;
    }

    *(result + 232) = -1;
    a3[408] = -1;
    *(a3 + 203) = -1;
    *(a3 + 261) = 0;
  }

  return result;
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::blitCDM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint32x2_t *a6, char *a7, unsigned int *a8, unsigned int a9, int32x2_t *a10, char a11, unint64_t a12, unint64_t a13, const void *a14, int a15)
{
  v211 = *MEMORY[0x29EDCA608];
  if (a5)
  {
    v21 = *a5 == 0;
  }

  else
  {
    v21 = 1;
  }

  LODWORD(v22) = *a8;
  (*(*a1 + 32))(a1, a6, a3);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  if (v21)
  {
    v23 = 0;
  }

  else
  {
    v23 = a9;
  }

  v155 = v23;
  if (a6)
  {
    v24 = 0;
    v25 = a6[18].u32[0];
    v26 = vdup_n_s32(v25);
    v27 = a6[17].i32[0] >> v25;
    v28 = vmax_u32(vshl_u32(a6[16], vneg_s32(v26)), 0x100000001);
    if (v27 <= 1)
    {
      v27 = 1;
    }

    v29 = vcvt_f32_u32(v28);
    v30 = v27;
    v147 = 0x20000;
  }

  else
  {
    if (v21)
    {
      v31 = 0;
    }

    else
    {
      v31 = 0x20000;
    }

    v147 = v31;
    if (v21)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    v29 = 0;
    v30 = 0.0;
  }

  v152 = a8;
  v144 = v21;
  v158 = a6;
  if (a3)
  {
    v151 = *(a3 + 112);
    v32 = *(a3 + 144);
    v33 = 0x100000001;
    v141 = vmax_u32(vshl_u32(*(a3 + 128), vneg_s32(vdup_n_s32(v32))), 0x100000001);
    v34 = *(a3 + 136) >> v32;
    if (v34 <= 1)
    {
      v34 = 1;
    }

    v35 = v34;
    v189 = 1;
    v188 = 1;
    if (*(a3 + 236))
    {
      v145 = 0;
      v189 = 16;
      v150 = 0x1000000010;
      v188 = 16;
      v33 = 0x1000000010;
      goto LABEL_25;
    }

    v53 = *(a3 + 584);
    if (v53 && *(v53 + 1304) > v32)
    {
      AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(a3 + 168), *(a3 + 176), *(a3 + 32), *(a3 + 208), *(a3 + 396), 0, v151, &v189, &v188);
      v145 = 0;
      v33 = vmax_u32(__PAIR64__(v188, v189), 0x1000000010);
      v150 = v33;
      v188 = v33.u32[1];
      v189 = v33.i32[0];
LABEL_25:
      v36 = 1;
      v37 = a10;
      if (a10)
      {
        goto LABEL_26;
      }

LABEL_29:
      v153 = 0;
      v40 = v141;
LABEL_31:
      v157 = v40;
      goto LABEL_32;
    }

    v145 = 0;
    v36 = 0;
    v150 = 0x100000001;
    v37 = a10;
    if (!a10)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v36 = 0;
    v189 = 1;
    v188 = 1;
    v141 = 0;
    v33 = 0x100000001;
    v35 = 0.0;
    v145 = 4;
    v150 = 0x100000001;
    v151 = 1;
    v37 = a10;
    if (!a10)
    {
      goto LABEL_29;
    }
  }

LABEL_26:
  v155 = v37[3].u32[0];
  if (!v36)
  {
    v153 = 0;
    v40 = *v37;
    goto LABEL_31;
  }

  v38 = vneg_s32(v33);
  v157 = vsub_s32(vand_s8(vadd_s32(vadd_s32(v37[1], *v37), vadd_s32(v33, -1)), v38), vand_s8(v37[1], v38));
  v39 = vmvn_s8(vceq_s32(v157, *v37));
  v153 = v39.i8[0] | v39.i8[4];
LABEL_32:
  v41 = a6;
  v156 = a15;
  *v42.i64 = (*(*a1 + 16))(a1, 0, 1);
  AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, a2, a5, v42);
  if (!*(*(*(a1 + 8) + 1912) + 520))
  {
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::endPreviousBlitCommand(a1, 0, v43, v44, v45, v46);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::beginComputePass(a1, 0);
    AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(a1, a2, a5, v47);
    v48 = *(a1 + 8);
    if (!*(*(v48 + 1912) + 520))
    {
      v49 = *(v48 + 1968) - *(v48 + 1984);
      *(v49 + 140) = 1;
      if ((*(v49 + 136) & 4) != 0)
      {
        **(v48 + 8) = 1;
      }
    }
  }

  v154 = v37;
  if (a15 == 2)
  {
    v191 = 0uLL;
    v180 = 0uLL;
    v166[0] = 0uLL;
    v159 = 0;
    v160 = 0;
    if (a6)
    {
      if (a6[29].i32[1])
      {
LABEL_54:
        if (*(a1 + 4880))
        {
          v58 = *(a1 + 8);
          v190 = 0;
          AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v58 + 24, &v190);
          *(a1 + 2568) = 0;
          *(a1 + 4880) = 0;
          v59 = 1;
LABEL_67:
          v156 = v59;
          v41 = v158;
          v37 = v154;
          goto LABEL_70;
        }

        v60 = 1;
LABEL_69:
        v156 = v60;
        goto LABEL_70;
      }

      v50 = a6[18].u32[0];
      GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a6, 0, v50, v155, 0);
      if (a6[49].i8[4] != 3 && a6[49].i8[4])
      {
        v129 = v50 + 1;
        if (v50 + 1 < a6[17].i32[1] || v129 == a6[8].i32[0])
        {
          v130 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a6, v129, 0);
        }

        else
        {
          v130 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a6, 0);
        }

        v52 = v130 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a6, v50, 0);
      }

      else
      {
        v52 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a6, 0, 1);
      }

      *&v191 = GPUVirtualAddress;
      *(&v191 + 1) = v52;
      v133 = a6[73];
      if (!v133 || *(v133 + 1304) <= v50)
      {
LABEL_52:
        if (a3)
        {
          if (*(a3 + 236))
          {
            goto LABEL_54;
          }

          v126 = *(a3 + 144);
          v127 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a3, 0, v126, a9, 0);
          if (*(a3 + 396) != 3 && *(a3 + 396))
          {
            v131 = v126 + 1;
            if (v126 + 1 < *(a3 + 140) || v131 == *(a3 + 64))
            {
              v132 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a3, v131, 0);
            }

            else
            {
              v132 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a3, 0);
            }

            v128 = v132 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a3, v126, 0);
            v37 = v154;
          }

          else
          {
            v128 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a3, 0, 1);
          }

          v180.i64[0] = v127;
          v180.i64[1] = v128;
          v137 = *(a3 + 584);
          if (v137 && *(v137 + 1304) > v126)
          {
            v138 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(a3 + 584), 0, v126, a9, 0);
            if (*(v137 + 396) != 3 && *(v137 + 396))
            {
              v139 = v126 + 1;
              if (v126 + 1 < *(v137 + 140) || v139 == *(v137 + 64))
              {
                v140 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v137, v139, 0);
              }

              else
              {
                v140 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v137, 0);
              }

              v159 = v138;
              v160 = v140 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v137, v126, 0);
            }

            else
            {
              v159 = v138;
              v160 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v137, 0, 1);
            }

            v37 = v154;
          }
        }

        else
        {
          if (v157.i32[1] <= 1u)
          {
            v61 = v157.u32[0];
          }

          else
          {
            v61 = v157.u32[1];
          }

          v62 = a12;
          if (v157.i32[1] > 1u)
          {
            v62 = a13;
          }

          v180.i64[0] = a4;
          v180.i64[1] = v62 * v61;
        }

        if (AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkDependentBlits(a1, &v191, &v180, v166, &v159))
        {
          v63 = *(a1 + 8);
          v190 = 0;
          AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(v63 + 24, &v190);
          v59 = 2;
          goto LABEL_67;
        }

        v60 = 2;
        goto LABEL_69;
      }

      v54 = v166 + 8;
      v134 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(v158 + 584), 0, v50, v155, 0);
      if (*(v133 + 396) != 3 && *(v133 + 396))
      {
        v135 = v50 + 1;
        if (v50 + 1 < *(v133 + 140) || v135 == *(v133 + 64))
        {
          v136 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v133, v135, 0);
        }

        else
        {
          v136 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v133, 0);
        }

        v57 = v136 - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v133, v50, 0);
      }

      else
      {
        v57 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v133, 0, 1);
      }

      *&v166[0] = v134;
      v37 = v154;
    }

    else
    {
      v54 = &v191 + 8;
      if (v157.i32[1] <= 1u)
      {
        v55 = v157.u32[0];
      }

      else
      {
        v55 = v157.u32[1];
      }

      v56 = a12;
      if (v157.i32[1] > 1u)
      {
        v56 = a13;
      }

      v57 = v56 * v55;
      *&v191 = a7;
    }

    *v54 = v57;
    goto LABEL_52;
  }

LABEL_70:
  v187 = 0;
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v180 = 0u;
  v179 = 0;
  memset(v166, 0, sizeof(v166));
  v167 = 0;
  v169 = 0;
  v170 = 0;
  v168 = 0;
  LODWORD(v160) = 16;
  v162 = 0;
  v163 = 0;
  __p = 0;
  v159 = &unk_2A23F65E0;
  v164 = 0u;
  memset(v165, 0, 28);
  if (a3)
  {
    v64 = *(a3 + 448);
    v65 = *(a3 + 456);
    v191 = *(a3 + 464);
    v66 = v24;
    v67 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a3, 0, 0, 0, 0) + *(a3 + 344) * a9;
    v68 = v67 >> 4;
    if ((v64 & 0x3F) == 2)
    {
      v69 = v65 & 0xFFFFF00000000000 | (v67 >> 4) & 3;
    }

    else
    {
      v69 = v65;
    }

    *&v182 = v64;
    *(&v182 + 1) = v69 & 0xFFFFF00000000003 | (4 * ((v68 >> 2) & 0x3FFFFFFFFFFLL));
    v183 = v191;
    v178 = *(a3 + 104);
    v70 = *(a3 + 416);
    v71 = *(a3 + 424);
    v72 = *(a3 + 432);
    v73 = v22;
    if (*(a3 + 64) < 2u)
    {
      v74 = v70 & 0xEFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v74 = v70 | 0x1000000000000000;
      v72 = v72 & 0xF0000FFFFFFFFFFFLL | ((*(a3 + 144) & 0xF | (16 * (*(a3 + 144) & 0xFu))) << 44);
      v71 |= 0x8000000000000000;
    }

    v22 = *(a3 + 440);
    v76 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a3, 0, 0, 0, 0) + *(a3 + 344) * a9;
    v77 = v76 >> 4;
    if ((v74 & 0x3F) == 2)
    {
      v78 = v71 & 0xFFFFF00000000000 | (v76 >> 4) & 3;
    }

    else
    {
      v78 = v71;
    }

    *&v184 = v74;
    *(&v184 + 1) = v78 & 0xFFFFF00000000003 | (4 * ((v77 >> 2) & 0x3FFFFFFFFFFLL));
    *&v185 = v72;
    *(&v185 + 1) = v22;
    v79 = *(a3 + 208);
    v80 = *(a3 + 112);
    v191 = 0u;
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v196 = 0;
    v197 = 67305985;
    v198 = 1541;
    v199 = 7;
    v200 = 0x100000000;
    v204 = 0;
    v203 = 0;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    memset(v210, 0, sizeof(v210));
    v205 = v79;
    DWORD2(v193) = 1;
    HIBYTE(v195) = -1;
    v202 = v80;
    v201 = v80;
    AGX::FramebufferCompilerConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildDrawBufferState(&v191, 0);
    v164 = v191;
    v165[0] = v192;
    *&v165[1] = v193;
    v75 = DWORD2(v165[1]) & 0xFFFF9F0F;
    v37 = v154;
    LOBYTE(v22) = v73;
    v24 = v66;
  }

  else
  {
    v75 = 0;
    v177 = a4;
  }

  v81 = ((3 * __clz(v151 - 1)) & 3) << 13;
  if (v151 >= 2)
  {
    v82 = v81;
  }

  else
  {
    v82 = 0;
  }

  if (v41)
  {
    v83 = 16 * ((*(v41 + 396) & 0xFF00) == 768);
    if (a3)
    {
LABEL_87:
      v84 = ((*(a3 + 396) & 0xFF00) == 768) << 6;
      goto LABEL_90;
    }
  }

  else
  {
    v83 = 0;
    if (a3)
    {
      goto LABEL_87;
    }
  }

  v84 = 0;
LABEL_90:
  v85 = v22 & 1;
  v86 = v84 | v83 | v75 | v82;
  if (v37)
  {
    if (v37[2].i32[0])
    {
      v87 = 0x8000;
    }

    else
    {
      v87 = (v37[2].i32[1] != 0) << 15;
    }

    v86 = v86 & 0xFFFE7F5F | v87 | 0x10000;
  }

  v88 = v86 & 0xFCB1E0F0;
  if (v153)
  {
    v89 = 17301504;
  }

  else
  {
    v89 = 0x1000000;
  }

  DWORD2(v165[1]) = ((a11 & 0x1F) << 8) | v147 | v24 | v145 | v89 | (v85 << 18) | v88;
  BlitProgramVariant = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(*(*(*(a1 + 8) + 1872) + 848), &v159);
  v159 = &unk_2A23F6620;
  if (__p)
  {
    v162 = __p;
    operator delete(__p);
  }

  v143 = COERCE_DOUBLE(vmin_u32(v157, 0x2000000020));
  v146 = (HIDWORD(v143) + HIDWORD(v150) - 1) & -HIDWORD(v150);
  v148 = (LODWORD(v143) + v150 - 1) & -v150;
  if (AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkSpillParamsForCompute(a1 + 104, BlitProgramVariant[172], BlitProgramVariant[175], BlitProgramVariant[179], 4 * BlitProgramVariant[798], v146 * v148 * BlitProgramVariant[803], LODWORD(v143) * HIDWORD(v143), v143, *&v157, v91, v92, v93))
  {
    AGX::SpillInfoGen4<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateUSCSpillBuffer(a1 + 104, *(a1 + 96) + 336, 0);
  }

  v94 = BlitProgramVariant[530];
  do
  {
    IOGPUResourceListAddResource();
    v94 &= ~(1 << __clz(__rbit32(v94)));
  }

  while (v94);
  if (v158)
  {
    v95 = *(v158 + 432);
    v180 = *(v158 + 416);
    v181 = v95;
    if (*(v158 + 64) < 2u)
    {
      v96 = v180.i64[0] & 0xEFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v96 = v180.i64[0] | 0x1000000000000000;
      v97 = v181 & 0xF0000FFFFFFFFFFFLL | ((*(v158 + 144) & 0xF | (16 * (*(v158 + 144) & 0xFu))) << 44);
      v180.i64[1] |= 0x8000000000000000;
      *&v181 = v97;
    }

    v180.i64[0] = v96;
    v108 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(v158, 0, 0, 0, 0) + *(v158 + 344) * v155;
    v109 = (v96 & 0x3F) == 2;
    v99 = a7;
    v100 = v144;
    if (v109)
    {
      v111 = v108 >> 4;
      v110 = v180.i64[1] & 0xFFFFFFFFFFFFFFFCLL | (v108 >> 4) & 3;
    }

    else
    {
      v110 = v180.u64[1];
      v111 = v108 >> 4;
    }

    v180.i64[1] = v110 & 0xFFFFF00000000003 | (4 * ((v111 >> 2) & 0x3FFFFFFFFFFLL));
    v98 = a9;
  }

  else
  {
    v98 = a9;
    v99 = a7;
    v100 = v144;
    if ((v153 & 1) == 0)
    {
      if (!v144)
      {
        goto LABEL_119;
      }

LABEL_109:
      v101 = *(*(a3 + 208) + 88);
      v102 = *(a1 + 8);
      v103 = 2 * v101 - 1;
      v104 = v102[21] + v103;
      if (v104 > v102[20])
      {
        v98 = a9;
        if (!AGX::DataBufferAllocator<44ul>::growNoInline(v102 + 3, 3, 0))
        {
LABEL_111:
          v105 = *(a1 + 8);
          v106 = ((v101 + *(v105 + 168) - 1) & -v101);
          v99 = &v106[*(v105 + 184)];
          *(v105 + 168) = &v106[v101];
          memcpy(v106, a14, v101);
          v107 = v154;
          if (!v154)
          {
            goto LABEL_124;
          }

          goto LABEL_120;
        }

        v104 = v102[21] + v103;
        if (v104 > v102[20])
        {
          abort();
        }
      }

      v102[22] = v104;
      goto LABEL_111;
    }
  }

  *&v195 = 0;
  LOWORD(v191) = (v85 << 7) | (v85 << 8);
  *(&v191 + 1) = 0x7F7FFFFF00000000;
  v194 = 0uLL;
  *(&v193 + 1) = 0;
  v192 = 0uLL;
  LODWORD(v193) = 0;
  DWORD1(v191) = (v85 << 18) | (v85 << 16) | 1;
  AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v159, &v191);
  *&v186 = v159;
  if (v100)
  {
    goto LABEL_109;
  }

LABEL_119:
  v107 = v154;
  if (!v154)
  {
    goto LABEL_124;
  }

LABEL_120:
  LODWORD(v168) = v107[2].u16[0] | (v107[2].i32[1] << 16);
  v112 = v107[1].i32[0];
  if (v153)
  {
    v113 = (v150 - 1) & v112;
    v114 = v107[1].i32[1];
    v115 = (HIDWORD(v150) - 1) & v114;
    v116 = (v112 - v113) | ((v114 - v115) << 16);
    LODWORD(v170) = v157.u16[0] | (v157.u16[2] << 16);
    HIDWORD(v168) = v113 | (v115 << 16);
    v117 = v107->i32[0] + v113;
    v118 = v107->i32[1] + v115;
    v119 = &v169;
  }

  else
  {
    v116 = v107[1].i32[0] | (v107[1].i32[1] << 16);
    LOWORD(v117) = v107->i16[0];
    v118 = v107->i32[1];
    v119 = &v170;
  }

  HIDWORD(v169) = v116;
  *v119 = v117 | (v118 << 16);
LABEL_124:
  v173 = v98;
  *(v166 + 12) = v143;
  DWORD1(v166[1]) = 1;
  *&v166[0] = 0;
  DWORD2(v166[0]) = 0;
  *(&v166[1] + 1) = v157;
  v176 = v99;
  v120 = v155;
  if (v85)
  {
    v120 = v98;
  }

  v167 = 1;
  v172 = v120;
  if (a3)
  {
    v121 = *(a3 + 144);
  }

  else
  {
    v121 = 0;
  }

  v171 = v121;
  if (v85)
  {
    v174 = vdiv_f32(v29, vcvt_f32_u32(v141));
    v175 = v30 / v35;
  }

  if (a12)
  {
    HIDWORD(v170) = (a13 / a12) / v151;
  }

  v179 = 4 * BlitProgramVariant[798];
  result = AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitComputeProgramVariantArguments((a1 + 48), (*(a1 + 8) + 24), BlitProgramVariant, &v180, v166, v179, v148, v146, (*(a1 + 8) + 1940));
  v123 = *v152;
  if (v156 == 1)
  {
    LODWORD(v159) = (2 * v123) & 4 | (v123 >> 3) & 1;
    result = AGX::BlitUSCStateLoader<AGX::HAL300::Encoders,AGX::HAL300::Classes>::barrier(*(a1 + 8) + 24, &v159);
    v123 = *v152;
    if ((*v152 & 4) != 0)
    {
      v124 = *(a1 + 8);
      LODWORD(v191) = 0;
      result = agxaReserveCDMTokenSpace<AGX::HAL300::Encoders,AGX::HAL300::DataBufferAllocator>(22, v124 + 24, 4, 0, 0, 0, &v191);
      v125 = *(v124 + 776);
      *v125 = 1610614018;
      *(v124 + 776) = v125 + 1;
      v123 = *v152;
    }
  }

  if ((v123 & 6) != 0)
  {
    *(*(a1 + 96) + 587) = 1;
  }

  if ((v123 & 8) != 0)
  {
    *(*(a1 + 96) + 586) = 1;
  }

  if (**MEMORY[0x29EDC56B0])
  {
    return IOGPUDeviceTraceEvent();
  }

  return result;
}

void sub_29CD029BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindComputeResources(uint64_t a1, uint64_t a2, void *a3, int8x16_t a4)
{
  v6 = *a2;
  v7 = MEMORY[0x29EDC5638];
  if (a3)
  {
    v8 = *a3;
    if (*a3 != v6 && v8 != 0)
    {
      v10 = *(a1 + 8);
      if (*(v10 + 1896))
      {
        v11 = a3;
        MTLResourceListAddResource();
        a3 = v11;
        v10 = *(a1 + 8);
      }

      if (*(a1 + 240))
      {
        goto LABEL_36;
      }

      if (a3[1])
      {
        v12 = a3;
        IOGPUResourceListAddResource();
        a3 = v12;
        v10 = *(a1 + 8);
      }

      if (a3[2])
      {
        IOGPUResourceListAddResource();
        v10 = *(a1 + 8);
      }

      v13 = &v8[*v7];
      v14 = *(v13 + 2);
      if ((v14 & 0x7FFFFFFF80) == 0 || (v14 >> 61) - 5 < 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_36;
      }

      v16 = *(v10 + 2008);
      if (*(v16[2].i64[1] + 480) != 1)
      {
        goto LABEL_36;
      }

      v17 = v16[3];
      v18 = v16[4];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(v17), vceqzq_s64(v18))))) & 1) == 0)
      {
        goto LABEL_36;
      }

      v19 = &v8[*v7];
      if ((v14 & 0x1000000000000000) != 0)
      {
        v19 = *v13;
      }

      v20 = *v19;
      if (!v20)
      {
        goto LABEL_36;
      }

      v21 = *v20;
      v22 = v20[1];
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*v20), vceqzq_s64(v22))))) & 1) == 0)
      {
        goto LABEL_36;
      }

      v23 = vandq_s8(v22, v18);
      v24 = v23.u64[1];
      if (v23.i64[1])
      {
        v25 = 3;
      }

      else
      {
        v24 = v23.i64[0];
        if (v23.i64[0])
        {
          v25 = 2;
        }

        else
        {
          v26 = vandq_s8(v21, v17);
          v24 = v26.u64[1];
          if (v26.i64[1])
          {
            v25 = 1;
          }

          else
          {
            v24 = v26.i64[0];
            if (!v26.i64[0])
            {
LABEL_36:
              IOGPUResourceListAddResource();
              goto LABEL_37;
            }

            v25 = 0;
          }
        }
      }

      v27 = &v16->i8[8 * v25];
      v28 = *(v27 + 10);
      v29 = 1 << (__clz(v24) ^ 0x3Fu);
      v30 = (v29 & v28) != 0;
      if ((v29 & (*(v27 + 14) | v28)) != 0)
      {
        v31 = (*(v13 + 1) + 127) & 0xFFFFFFFFFFFFFF80;
        v32 = &v8[*v7];
        if ((v14 & 0x1000000000000000) != 0)
        {
          v32 = *v13;
        }

        v35[0] = v32;
        v35[1] = v31;
        v36 = v14 >> 7;
        v37 = 1;
        v38 = v30;
        ResourceTracker<_ResourceGroupBinding>::addResource(v16, v35, *(v13 + 12), 1);
      }

      goto LABEL_36;
    }
  }

LABEL_37:
  v33 = *(a1 + 8);
  if (*(v33 + 1896))
  {
    MTLResourceListAddResource();
    v33 = *(a1 + 8);
  }

  if (*(a2 + 8))
  {
    IOGPUResourceListAddResource();
    v33 = *(a1 + 8);
  }

  if (*(a2 + 16))
  {
    IOGPUResourceListAddResource();
    v33 = *(a1 + 8);
  }

  AGX::ResourceGroupUsage<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setAndBindResource(*(v33 + 2008), v6, 3, a4);
  IOGPUResourceListAddResource();
  if (!*(a1 + 224))
  {
    [v6 resourceOptions];
  }

  return AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::bindTrackedProxyResource(a1);
}

uint64_t AGX::BlitDispatchContext<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::checkDependentBlits(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = a1 + 2576;
  v6 = *a3;
  v7 = a3[1] + *a3;
  v8 = *(a1 + 4880);
  if (!*(a1 + 4880))
  {
    *(a1 + 2576) = v6;
    *(a1 + 2584) = v7;
    *(a1 + 2592) = 0;
    v8 = 1;
    *(a1 + 4880) = 1;
    goto LABEL_13;
  }

  for (i = (a1 + 2576); ; i = (v5 + 24 * v10))
  {
    v11 = *i;
    if (*i < v7 && i[1] > v6)
    {
      goto LABEL_68;
    }

    if (v6 >= v11)
    {
      break;
    }

    v10 = *(i + 8);
    if (!*(i + 8))
    {
      if (v7 == v11)
      {
        *i = v6;
        goto LABEL_13;
      }

      if (v8 <= 0x5F)
      {
        v41 = v5 + 24 * *(a1 + 4880);
        *v41 = v6;
        *(v41 + 8) = v7;
        *(v41 + 16) = 0;
        *(i + 8) = v8;
        goto LABEL_63;
      }

      *(i + 8) = 0;
      goto LABEL_68;
    }

LABEL_4:
    ;
  }

  v12 = i[1];
  if (v7 < v12)
  {
    goto LABEL_68;
  }

  v10 = *(i + 9);
  if (*(i + 9))
  {
    goto LABEL_4;
  }

  if (v6 == v12)
  {
    i[1] = v7;
    goto LABEL_13;
  }

  if (v8 > 0x5F)
  {
    *(i + 9) = 0;
LABEL_68:
    v19 = (a2 + 1);
    goto LABEL_69;
  }

  v42 = v5 + 24 * *(a1 + 4880);
  *v42 = v6;
  *(v42 + 8) = v7;
  *(v42 + 16) = 0;
  *(i + 9) = v8;
LABEL_63:
  *(a1 + 4880) = ++v8;
LABEL_13:
  v13 = a1 + 264;
  v14 = *(a1 + 2568);
  if (!*(a1 + 2568))
  {
    v19 = (a2 + 1);
    v28 = a2[1];
    if (!v28)
    {
      goto LABEL_46;
    }

    v21 = *a2;
    v22 = *a2 + v28;
    goto LABEL_36;
  }

  v15 = *a3;
  v16 = (a1 + 264);
  do
  {
    if (*v16 < a3[1] + *a3 && v16[1] > v15)
    {
      goto LABEL_68;
    }

    if (v15 >= *v16)
    {
      v17 = 18;
    }

    else
    {
      v17 = 16;
    }

    v18 = *(v16 + v17);
    v16 = (v13 + 24 * v18);
  }

  while (v18);
  v19 = (a2 + 1);
  v20 = a2[1];
  if (!v20)
  {
    goto LABEL_46;
  }

  v21 = *a2;
  v22 = *a2 + v20;
  if (!*(a1 + 2568))
  {
LABEL_36:
    *(a1 + 264) = v21;
    *(a1 + 272) = v22;
    *(a1 + 280) = 0;
    *(a1 + 2568) = 1;
    goto LABEL_37;
  }

  v23 = (a1 + 264);
  while (2)
  {
    v25 = *v23;
    if (*v23 < v22)
    {
      v26 = v23[1];
      if (v26 > v21)
      {
        if (v21 >= v25)
        {
          v62 = *v23;
        }

        else
        {
          v62 = *a2;
        }

        if (v26 > v22)
        {
          v22 = v23[1];
        }

        *v23 = v62;
        v23[1] = v22;
        goto LABEL_37;
      }
    }

    if (v21 < v25)
    {
      v24 = *(v23 + 8);
      if (!*(v23 + 8))
      {
        if (v22 == v25)
        {
          *v23 = v21;
          goto LABEL_37;
        }

        if (v14 <= 0x5F)
        {
          v89 = v13 + 24 * *(a1 + 2568);
          *v89 = v21;
          *(v89 + 8) = v22;
          *(v89 + 16) = 0;
          *(a1 + 2568) = v14 + 1;
          *(v23 + 8) = v14;
          goto LABEL_37;
        }

        *(v23 + 8) = 0;
LABEL_69:
        v33 = (a5 + 1);
        v43 = 1;
        goto LABEL_84;
      }

LABEL_26:
      v23 = (v13 + 24 * v24);
      continue;
    }

    break;
  }

  v27 = v23[1];
  if (v22 < v27)
  {
    goto LABEL_69;
  }

  v24 = *(v23 + 9);
  if (*(v23 + 9))
  {
    goto LABEL_26;
  }

  if (v21 != v27)
  {
    if (v14 <= 0x5F)
    {
      v90 = v13 + 24 * *(a1 + 2568);
      *v90 = v21;
      *(v90 + 8) = v22;
      *(v90 + 16) = 0;
      *(a1 + 2568) = v14 + 1;
      *(v23 + 9) = v14;
      goto LABEL_37;
    }

    *(v23 + 9) = 0;
    goto LABEL_69;
  }

  v23[1] = v22;
LABEL_37:
  v29 = *a2;
  v30 = (a1 + 2576);
  do
  {
    if (*v30 < a2[1] + *a2 && v30[1] > v29)
    {
      goto LABEL_69;
    }

    if (v29 >= *v30)
    {
      v31 = 18;
    }

    else
    {
      v31 = 16;
    }

    v32 = *(v30 + v31);
    v30 = (v5 + 24 * v32);
  }

  while (v32);
  v14 = 1;
LABEL_46:
  v33 = (a5 + 1);
  v34 = a5[1];
  if (!v34)
  {
LABEL_83:
    v43 = 0;
    goto LABEL_84;
  }

  v35 = *a5;
  v36 = *a5 + v34;
  v37 = (a1 + 2576);
  while (2)
  {
    v39 = *v37;
    if (*v37 < v36 && v37[1] > v35)
    {
      goto LABEL_82;
    }

    if (v35 >= v39)
    {
      v40 = v37[1];
      if (v36 < v40)
      {
        goto LABEL_82;
      }

      v38 = *(v37 + 9);
      if (!*(v37 + 9))
      {
        if (v35 == v40)
        {
          v37[1] = v36;
LABEL_74:
          if (!v14)
          {
            goto LABEL_83;
          }

          v46 = *a5;
          v47 = (a1 + 264);
          while (*v47 >= a5[1] + *a5 || v47[1] <= v46)
          {
            if (v46 >= *v47)
            {
              v48 = 18;
            }

            else
            {
              v48 = 16;
            }

            v49 = *(v47 + v48);
            v47 = (v13 + 24 * v49);
            if (!v49)
            {
              goto LABEL_83;
            }
          }

LABEL_82:
          v43 = 1;
          goto LABEL_84;
        }

        if (v8 <= 0x5F)
        {
          v45 = v5 + 24 * v8;
          *v45 = v35;
          *(v45 + 8) = v36;
          *(v45 + 16) = 0;
          *(a1 + 4880) = v8 + 1;
          *(v37 + 9) = v8;
          goto LABEL_74;
        }

        *(v37 + 9) = 0;
        v43 = 1;
        goto LABEL_84;
      }

      goto LABEL_49;
    }

    v38 = *(v37 + 8);
    if (*(v37 + 8))
    {
LABEL_49:
      v37 = (v5 + 24 * v38);
      continue;
    }

    break;
  }

  if (v36 == v39)
  {
    *v37 = v35;
    goto LABEL_74;
  }

  if (v8 <= 0x5F)
  {
    v44 = v5 + 24 * v8;
    *v44 = v35;
    *(v44 + 8) = v36;
    *(v44 + 16) = 0;
    *(a1 + 4880) = v8 + 1;
    *(v37 + 8) = v8;
    goto LABEL_74;
  }

  *(v37 + 8) = 0;
  v43 = 1;
LABEL_84:
  v50 = a4[1];
  if (!v50)
  {
    if (!v43)
    {
      return 0;
    }

    goto LABEL_127;
  }

  if (v43)
  {
    goto LABEL_127;
  }

  v51 = *a4;
  v52 = *a4 + v50;
  v53 = *(a1 + 2568);
  if (*(a1 + 2568))
  {
    v54 = a1 + 264;
    for (j = (a1 + 264); ; j = (v54 + 24 * v56))
    {
      v57 = *j;
      if (*j < v52)
      {
        v58 = j[1];
        if (v58 > v51)
        {
          if (v51 >= v57)
          {
            v61 = *j;
          }

          else
          {
            v61 = *a4;
          }

          if (v58 > v52)
          {
            v52 = j[1];
          }

          *j = v61;
          j[1] = v52;
          goto LABEL_120;
        }
      }

      if (v51 < v57)
      {
        v56 = *(j + 8);
        if (!*(j + 8))
        {
          if (v52 == v57)
          {
            *j = v51;
            goto LABEL_120;
          }

          if (v53 <= 0x5F)
          {
            v63 = v54 + 24 * *(a1 + 2568);
            *v63 = v51;
            *(v63 + 8) = v52;
            *(v63 + 16) = 0;
            *(a1 + 2568) = v53 + 1;
            *(j + 8) = v53;
            goto LABEL_120;
          }

          *(j + 8) = 0;
          goto LABEL_127;
        }
      }

      else
      {
        v59 = j[1];
        if (v52 < v59)
        {
          goto LABEL_127;
        }

        v56 = *(j + 9);
        if (!*(j + 9))
        {
          if (v51 == v59)
          {
            j[1] = v52;
            goto LABEL_120;
          }

          if (v53 <= 0x5F)
          {
            v64 = v54 + 24 * *(a1 + 2568);
            *v64 = v51;
            *(v64 + 8) = v52;
            *(v64 + 16) = 0;
            *(a1 + 2568) = v53 + 1;
            *(j + 9) = v53;
            goto LABEL_120;
          }

          *(j + 9) = 0;
          goto LABEL_127;
        }
      }
    }
  }

  *(a1 + 264) = v51;
  *(a1 + 272) = v52;
  *(a1 + 280) = 0;
  *(a1 + 2568) = 1;
LABEL_120:
  v65 = *a4;
  v66 = (a1 + 2576);
  while (*v66 >= a4[1] + *a4 || v66[1] <= v65)
  {
    if (v65 >= *v66)
    {
      v67 = 18;
    }

    else
    {
      v67 = 16;
    }

    v68 = *(v66 + v67);
    v66 = (v5 + 24 * v68);
    if (!v68)
    {
      return 0;
    }
  }

LABEL_127:
  *(a1 + 2568) = 0;
  v69 = *a3;
  v70 = a3[1] + *a3;
  *(a1 + 2576) = *a3;
  *(a1 + 2584) = v70;
  *(a1 + 2592) = 0;
  *(a1 + 4880) = 1;
  v71 = *v33;
  if (!*v33)
  {
    goto LABEL_144;
  }

  v72 = *a5;
  v73 = *a5 + v71;
  v74 = (a1 + 2576);
  while (2)
  {
    if (v69 < v73 && v74[1] > v72)
    {
      goto LABEL_144;
    }

    if (v72 < v69)
    {
      v75 = *(v74 + 8);
      if (*(v74 + 8))
      {
LABEL_130:
        v74 = (v5 + 24 * v75);
        v69 = *v74;
        continue;
      }

      if (v73 == v69)
      {
        *v74 = v72;
        v77 = *v19;
        if (*v19)
        {
          goto LABEL_145;
        }

LABEL_141:
        v78 = a4[1];
        if (v78)
        {
          v79 = *a4 + v78;
          *(a1 + 264) = *a4;
          *(a1 + 272) = v79;
          *(a1 + 280) = 0;
          *(a1 + 2568) = 1;
          return 1;
        }

        return 1;
      }

      *(a1 + 2600) = v72;
      *(a1 + 2608) = v73;
      *(a1 + 2616) = 0;
      *(a1 + 4880) = 2;
      *(v74 + 8) = 1;
LABEL_144:
      v77 = *v19;
      if (*v19)
      {
        goto LABEL_145;
      }

      goto LABEL_141;
    }

    break;
  }

  v76 = v74[1];
  if (v73 < v76)
  {
    goto LABEL_144;
  }

  v75 = *(v74 + 9);
  if (*(v74 + 9))
  {
    goto LABEL_130;
  }

  if (v72 == v76)
  {
    v74[1] = v73;
    v77 = *v19;
    if (!*v19)
    {
      goto LABEL_141;
    }
  }

  else
  {
    *(a1 + 2600) = v72;
    *(a1 + 2608) = v73;
    *(a1 + 2616) = 0;
    *(a1 + 4880) = 2;
    *(v74 + 9) = 1;
    v77 = *v19;
    if (!*v19)
    {
      goto LABEL_141;
    }
  }

LABEL_145:
  v80 = *a2;
  v81 = *a2 + v77;
  *(a1 + 264) = *a2;
  *(a1 + 272) = v81;
  *(a1 + 280) = 0;
  *(a1 + 2568) = 1;
  v82 = a4[1];
  if (!v82)
  {
    return 1;
  }

  v83 = *a4;
  v84 = *a4 + v82;
  v85 = a1 + 264;
  while (2)
  {
    if (v80 < v84)
    {
      v87 = *(v85 + 8);
      if (v87 > v83)
      {
        if (v83 >= v80)
        {
          v83 = v80;
        }

        if (v87 > v84)
        {
          v84 = *(v85 + 8);
        }

        *v85 = v83;
LABEL_161:
        *(v85 + 8) = v84;
        return 1;
      }
    }

    if (v83 >= v80)
    {
      v88 = *(v85 + 8);
      if (v84 < v88)
      {
        return 1;
      }

      v86 = *(v85 + 18);
      if (!*(v85 + 18))
      {
        if (v83 != v88)
        {
          *(a1 + 288) = v83;
          *(a1 + 296) = v84;
          *(a1 + 304) = 0;
          *(a1 + 2568) = 2;
          *(v85 + 18) = 1;
          return 1;
        }

        goto LABEL_161;
      }

      goto LABEL_148;
    }

    v86 = *(v85 + 16);
    if (*(v85 + 16))
    {
LABEL_148:
      v85 = a1 + 264 + 24 * v86;
      v80 = *v85;
      continue;
    }

    break;
  }

  if (v84 != v80)
  {
    *(a1 + 288) = v83;
    *(a1 + 296) = v84;
    *(a1 + 304) = 0;
    *(a1 + 2568) = 2;
    *(v85 + 16) = 1;
    return 1;
  }

  *v85 = v83;
  return 1;
}