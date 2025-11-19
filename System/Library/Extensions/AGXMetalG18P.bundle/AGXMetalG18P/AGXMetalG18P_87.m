uint64_t AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 236;
  }

  v3 = *(a1 + 64);
  v4 = (*(a1 + 128) + *(a1 + 216) - 1) / *(a1 + 216);
  v5 = (*(a1 + 132) + *(a1 + 220) - 1) / *(a1 + 220);
  v6 = 32 - __clz(~(-1 << -__clz(v4 - 1)));
  if (v4 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32 - __clz(~(-1 << -__clz(v5 - 1)));
  }

  v9 = *(a1 + v2);
  if (v3 == 1 && !a2 || !v3)
  {
    return 1;
  }

  v10 = *(a1 + 112) * *(*(a1 + 208) + 88);
  result = 0;
  if (a2)
  {
    v12 = __clz(v9 / v10 - 1);
    v13 = (33 - v12) >> 1;
    v14 = 32 - v12 - v13;
    while (1)
    {
      v15 = v7 - result;
      if (v7 < result)
      {
        v15 = 0;
      }

      v16 = v8 - result;
      if (v8 < result)
      {
        v16 = 0;
      }

      if (v16 < v14 || v15 < v13)
      {
        break;
      }

      result = (result + 1);
      if (v3 == result)
      {
        return 1;
      }
    }
  }

  else
  {
    while (1)
    {
      v18 = v7 - result;
      if (v7 < result)
      {
        v18 = 0;
      }

      v19 = v8 - result;
      if (v8 < result)
      {
        v19 = 0;
      }

      if (v10 << (v18 + v19) < v9)
      {
        break;
      }

      result = (result + 1);
      if (v3 == result)
      {
        return 1;
      }
    }
  }

  return result;
}

int64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = *(a1 + 168);
  if (v8 && ((v9 = *(a1 + 396), v9 != 3) ? (v10 = v9 == 0) : (v10 = 1), v10))
  {
    v11 = *(a1 + 176) + a4;
    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v8, 0);
    if ((IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
    }

    else
    {
      BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfPlane(*(a1 + 168), v11);
    }

    v21 = BaseAddressOfCompressedTileDataRegionOfSliceAndPlane;
    v22 = *(a1 + 176);
    v23 = IOSurfaceGetBaseAddressOfPlane(*(a1 + 168), 0);
    if ((IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      v24 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
    }

    else
    {
      v24 = IOSurfaceGetBaseAddressOfPlane(*(a1 + 168), v22);
    }

    v16 = &v23[v21] - &BaseAddressOfPlane[v24];
  }

  else
  {
    v14 = *(a1 + 384);
    v15 = a2 / v14;
    if (a4)
    {
      v16 = *(a1 + 8 * (a4 - 1) + 360);
    }

    else
    {
      v16 = 0;
    }

    v17 = v15 * v14;
    v18 = *(a1 + 396);
    if (v14 <= a2 && (v18 & 0x10000) != 0)
    {
      v19 = *(a1 + 236);
      if (v19)
      {
        if ((*(a1 + 396) & 0xFF00) == 0x400)
        {
          v20 = (8 * (6 * v15) * (((v19 << 8) + ((AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a4) + v19 - 1) & -v19) - 1) & -(v19 << 8)) / v19);
        }

        else
        {
          if (*(a1 + 396))
          {
            v26 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, a4) + v19 - 1) & -v19;
          }

          else
          {
            v26 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, a4) * *(a1 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
            LODWORD(v19) = *(a1 + 236);
          }

          v20 = (8 * v15 * ((v26 + (v19 << 8) - 1) & -(v19 << 8)) / v19);
        }
      }

      else
      {
        if ((*(a1 + 396) & 0xFF00) == 0x400)
        {
          v25 = 6 * AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, a4);
        }

        else if (*(a1 + 396))
        {
          v25 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, a4);
        }

        else
        {
          v25 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, a4) * *(a1 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
        }

        v20 = v25 * v15;
      }

      v16 += v20;
      v18 = *(a1 + 396);
    }

    if (a2 != v17 && (v18 & 0xFF00) == 0x400)
    {
      v27 = a2 - v17;
      v28 = *(a1 + 236);
      v29 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, a4);
      v30 = (v29 + v28 - 1) & -v28;
      if (!v28)
      {
        v30 = v29;
      }

      v31 = v30 * v27;
      v32 = (8 * v27 * (((v28 << 8) + v30 - 1) & -(v28 << 8)) / v28);
      if (!v28)
      {
        v32 = v31;
      }

      v16 += v32;
    }

    if (a3)
    {
      v16 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, a3, a4);
    }
  }

  return *(a1 + 312) + v16;
}

BOOL AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 132);
  if (v2 <= 1)
  {
    v2 = 1;
  }

  if (v3 <= 1)
  {
    v3 = 1;
  }

  v4 = *(a1 + 584);
  v5 = v4 && *(v4 + 1304) > a2 && *(a1 + 57) != 0;
  if (*(a1 + 396) != 2)
  {
    return 0;
  }

  v6 = *(a1 + 208);
  v7 = (*(a1 + 216) + v2 - 1) / *(a1 + 216);
  v8 = *(v6 + 56);
  v9 = (8 * *(a1 + 112) * *(v6 + 88)) >> v5;
  v10 = (*(a1 + 220) + v3 - 1) / *(a1 + 220);
  if (v9 <= 63)
  {
    if (v9 == 32)
    {
      v21 = 64;
    }

    else
    {
      v21 = 0;
    }

    if (v9 == 16)
    {
      v14 = 128;
    }

    else
    {
      v14 = v21;
    }

    if (v9 == 16)
    {
      v15 = 64;
    }

    else
    {
      v15 = v21;
    }

    if (v9 == 8)
    {
      v22 = 128;
    }

    else
    {
      v22 = 0;
    }

    if (v9 == 4)
    {
      v17 = 256;
    }

    else
    {
      v17 = v22;
    }

    if (v9 == 4)
    {
      v18 = 128;
    }

    else
    {
      v18 = v22;
    }

    v19 = v9 <= 15;
  }

  else
  {
    if (v9 == 1024)
    {
      v11 = 16;
    }

    else
    {
      v11 = 0;
    }

    if (v9 == 1024)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    if (v9 == 512)
    {
      v11 = 16;
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    if (v9 == 256)
    {
      v14 = 32;
    }

    else
    {
      v14 = v11;
    }

    if (v9 == 256)
    {
      v15 = 16;
    }

    else
    {
      v15 = v13;
    }

    if (v9 == 128)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    if (v9 == 64)
    {
      v17 = 64;
    }

    else
    {
      v17 = v16;
    }

    if (v9 == 64)
    {
      v18 = 32;
    }

    else
    {
      v18 = v16;
    }

    v19 = v9 <= 255;
  }

  if (v19)
  {
    v23 = v17;
  }

  else
  {
    v23 = v14;
  }

  if (v19)
  {
    v15 = v18;
  }

  if (v8)
  {
    v24 = ~(-1 << a2);
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + v10) >> a2;
  if (v25 <= 1)
  {
    v25 = 1;
  }

  v26 = (v24 + v7) >> a2;
  if (v26 <= 1)
  {
    v26 = 1;
  }

  return v26 >= v23 && v25 >= v15;
}

size_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 396) == 3)
  {
    if (*(a1 + 168))
    {
      WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
      return IOSurfaceGetBytesPerTileDataOfPlane() * WidthInCompressedTilesOfPlane;
    }

    else
    {
      v8 = *(a1 + 128);
      v9 = *(a1 + 32);
      v10 = *(a1 + 208);
      v11 = *(a1 + a2 + 57);
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      v12 = *(v10 + 49);
      InterchangeTiledMemory::getPlaneInfo(v17, a2, v9, v12);
      v14 = a2;
      if (a2 == 1 && (*(v10 + 72) & 0xFFFFFFFE) == 2)
      {
        v8 = (v8 + 1) >> 1;
      }

      v15 = LOBYTE(v17[0]);
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      InterchangeTiledMemory::getPlaneInfo(v19, v14, v9, v12);
      if ((v11 - 1) > 2)
      {
        v16 = (BYTE1(v19[0]) * LOBYTE(v19[0]) * BYTE2(v19[0])) >> 3;
      }

      else
      {
        v16 = *(&v19[2] + v11 + 1);
      }

      return v16 * ((v8 + v15 - 1) / v15);
    }
  }

  else if (*(a1 + 396))
  {
    return 0;
  }

  else if (*(a1 + 168))
  {
    v2 = *(a1 + 176) + a2;
    v3 = *(a1 + 168);

    return IOSurfaceGetBytesPerRowOfPlane(v3, v2);
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = (v6 - 624) > 0x1A || ((1 << (v6 - 112)) & 0x400000F) == 0;
    if (v7 && (v6 - 550) >= 2)
    {
      return *(a1 + 152);
    }

    else
    {
      return (*(a1 + 128) * *(*(a1 + 208) + a2 + 88) + 15) & 0x1FFFFFFFFF0;
    }
  }
}

uint8x16_t *agxsDownsample<AGXSDownsamplerGeneric<unsigned char,4u>>(uint8x16_t *result, const float *a2, int a3, int a4, int a5)
{
  if (result && a2)
  {
    v5 = (result + 4 * (a4 * a3));
    if (a5)
    {
      for (; result < v5; a2 += 2)
      {
        result->i8[0] = (*(a2 + 4) + *a2) >> 1;
        result->i8[1] = (*(a2 + 5) + *(a2 + 1)) >> 1;
        result->i8[2] = (*(a2 + 6) + *(a2 + 2)) >> 1;
        result->i8[3] = (*(a2 + 7) + *(a2 + 3)) >> 1;
        result = (result + 4);
      }

      while (result < v5)
      {
        result->i8[0] = (*(a2 + 4) + *a2) >> 1;
        result->i8[1] = (*(a2 + 5) + *(a2 + 1)) >> 1;
        result->i8[2] = (*(a2 + 6) + *(a2 + 2)) >> 1;
        result->i8[3] = (*(a2 + 7) + *(a2 + 3)) >> 1;
        result = (result + 4);
        a2 += 2;
      }
    }

    else
    {
      for (i = v5 - 4 * ((a4 * a3) & 0xFu); result < i; result += 4)
      {
        v8 = vld4q_f32(a2);
        v7 = a2 + 16;
        v9 = vld4q_f32(v7);
        v7 += 16;
        v10 = vld4q_f32(v7);
        v7 += 16;
        v11 = vld4q_f32(v7);
        a2 = v7 + 16;
        *result = vhaddq_u8(vhaddq_u8(v8.val[0], v8.val[1]), vhaddq_u8(v8.val[2], v8.val[3]));
        result[1] = vhaddq_u8(vhaddq_u8(v9.val[0], v9.val[1]), vhaddq_u8(v9.val[2], v9.val[3]));
        result[2] = vhaddq_u8(vhaddq_u8(v10.val[0], v10.val[1]), vhaddq_u8(v10.val[2], v10.val[3]));
        result[3] = vhaddq_u8(vhaddq_u8(v11.val[0], v11.val[1]), vhaddq_u8(v11.val[2], v11.val[3]));
      }

      while (result < v5)
      {
        result->i8[0] = (*(a2 + 4) + *a2 + *(a2 + 8) + *(a2 + 12)) >> 2;
        result->i8[1] = (*(a2 + 5) + *(a2 + 1) + *(a2 + 9) + *(a2 + 13)) >> 2;
        result->i8[2] = (*(a2 + 6) + *(a2 + 2) + *(a2 + 10) + *(a2 + 14)) >> 2;
        result->i8[3] = (*(a2 + 7) + *(a2 + 3) + *(a2 + 11) + *(a2 + 15)) >> 2;
        result = (result + 4);
        a2 += 4;
      }
    }
  }

  return result;
}

uint8x16_t *agxsDownsample<AGXSDownsamplerGeneric<unsigned char,2u>>(uint8x16_t *result, const __int16 *a2, int a3, int a4, int a5)
{
  if (result && a2)
  {
    v5 = (result + 2 * (a4 * a3));
    if (a5)
    {
      for (; result < v5; a2 += 2)
      {
        result->i8[0] = (*(a2 + 2) + *a2) >> 1;
        result->i8[1] = (*(a2 + 3) + *(a2 + 1)) >> 1;
        result = (result + 2);
      }

      while (result < v5)
      {
        result->i8[0] = (*(a2 + 2) + *a2) >> 1;
        result->i8[1] = (*(a2 + 3) + *(a2 + 1)) >> 1;
        result = (result + 2);
        a2 += 2;
      }
    }

    else
    {
      for (i = v5 - 2 * ((a4 * a3) & 0x1Fu); result < i; result += 4)
      {
        v8 = vld4q_s16(a2);
        v7 = a2 + 32;
        v9 = vld4q_s16(v7);
        v7 += 32;
        v10 = vld4q_s16(v7);
        v7 += 32;
        v11 = vld4q_s16(v7);
        a2 = v7 + 32;
        *result = vhaddq_u8(vhaddq_u8(v8.val[0], v8.val[1]), vhaddq_u8(v8.val[2], v8.val[3]));
        result[1] = vhaddq_u8(vhaddq_u8(v9.val[0], v9.val[1]), vhaddq_u8(v9.val[2], v9.val[3]));
        result[2] = vhaddq_u8(vhaddq_u8(v10.val[0], v10.val[1]), vhaddq_u8(v10.val[2], v10.val[3]));
        result[3] = vhaddq_u8(vhaddq_u8(v11.val[0], v11.val[1]), vhaddq_u8(v11.val[2], v11.val[3]));
      }

      while (result < v5)
      {
        result->i8[0] = (*(a2 + 2) + *a2 + *(a2 + 4) + *(a2 + 6)) >> 2;
        result->i8[1] = (*(a2 + 3) + *(a2 + 1) + *(a2 + 5) + *(a2 + 7)) >> 2;
        result = (result + 2);
        a2 += 4;
      }
    }
  }

  return result;
}

uint8x16_t *agxsDownsample<AGXSDownsamplerGeneric<unsigned char,1u>>(uint8x16_t *result, const char *a2, int a3, int a4, int a5, uint8x8_t a6)
{
  if (result && a2)
  {
    v6 = (a4 * a3);
    v7 = (result + v6);
    if (a5)
    {
      if (v7 > result)
      {
        do
        {
          result->i8[0] = (*(a2 + 1) + *a2) >> 1;
          result = (result + 1);
          a2 += 2;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      for (i = v7 - ((a4 * a3) & 0x3F); result < i; result += 4)
      {
        v11 = vld4q_s8(a2);
        v9 = a2 + 64;
        v12 = vld4q_s8(v9);
        v9 += 64;
        v13 = vld4q_s8(v9);
        v9 += 64;
        v14 = vld4q_s8(v9);
        a2 = v9 + 64;
        *result = vhaddq_u8(vhaddq_u8(v11.val[0], v11.val[1]), vhaddq_u8(v11.val[2], v11.val[3]));
        result[1] = vhaddq_u8(vhaddq_u8(v12.val[0], v12.val[1]), vhaddq_u8(v12.val[2], v12.val[3]));
        result[2] = vhaddq_u8(vhaddq_u8(v13.val[0], v13.val[1]), vhaddq_u8(v13.val[2], v13.val[3]));
        result[3] = vhaddq_u8(vhaddq_u8(v14.val[0], v14.val[1]), vhaddq_u8(v14.val[2], v14.val[3]));
      }

      if (result < v7)
      {
        do
        {
          v10 = *a2;
          a2 += 4;
          a6.i32[0] = v10;
          a6 = vmovl_u8(a6).u64[0];
          a6.i16[0] = vaddv_s16(a6);
          result->i8[0] = a6.i32[0] >> 2;
          result = (result + 1);
        }

        while (v7 != result);
      }
    }
  }

  return result;
}

unint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(uint64_t a1, size_t planeIndex, int a3)
{
  v4 = planeIndex;
  v6 = *(a1 + 236);
  if (v6 && *(a1 + 248) == 2)
  {
    v7 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, 0);
    v8 = *(a1 + 396);
    v9 = v8 & 0xFF00;
    if (v9 == 768)
    {
      v10 = *(a1 + 136);
    }

    else if ((v8 & 0x10000) != 0 || v9 == 1024)
    {
      if (v9 == 1024)
      {
        v10 = 6 * *(a1 + 392);
      }

      else
      {
        v10 = *(a1 + 392);
      }
    }

    else
    {
      v10 = 1;
    }

    v21 = v6 - 1;
    v14 = ((8 * ((v6 - 1 + ((v7 + (v6 << 8) - 1) & -(v6 << 8))) / v6) + 2047) & 0xFFFFFFFFFFFFF800) * v10;
    if (*(a1 + 240) == 1)
    {
      v38 = 0;
      v39 = 0;
      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::calcSparseParams(a1, v36, &v39, &v38);
      v22 = ((-v6 & (v21 + v39)) + v21) / v6;
      v14 = ((v14 + v22 + v38 + v21 + ((4 << -__clz(v22)) + 12)) & -v6) + v39;
    }

    goto LABEL_31;
  }

  v11 = *(a1 + 396) & 0xFF00;
  if ((*(a1 + 396) & 0x10000) != 0)
  {
    if (v11 == 1024)
    {
      v15 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, planeIndex);
      v16 = (v15 + v6 - 1) & -v6;
      if (!v6)
      {
        v16 = v15;
      }

      v17 = 6 * v16;
    }

    else
    {
      if (!*(a1 + 396))
      {
        v20 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, planeIndex) * *(a1 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
LABEL_22:
        v14 = v20 * *(a1 + 392);
        goto LABEL_31;
      }

      v17 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, planeIndex);
    }

    v20 = (v17 + v6 - 1) & -v6;
    if (!v6)
    {
      v20 = v17;
    }

    goto LABEL_22;
  }

  if (v11 == 1024)
  {
    v12 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, planeIndex);
    v13 = (v12 + v6 - 1) & -v6;
    if (!v6)
    {
      v13 = v12;
    }

    v14 = 6 * v13;
  }

  else if (*(a1 + 396) == 3)
  {
    if (*(a1 + 168))
    {
      HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
      v27 = IOSurfaceGetWidthInCompressedTilesOfPlane() * HeightInCompressedTilesOfPlane;
      v14 = v27 * IOSurfaceGetBytesPerTileDataOfPlane();
    }

    else
    {
      v30 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, planeIndex);
      v31 = *(a1 + 132);
      v32 = *(a1 + 32);
      v33 = *(a1 + 208);
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      InterchangeTiledMemory::getPlaneInfo(v36, v4, v32, *(v33 + 49));
      if (v4 == 1 && *(v33 + 72) == 3)
      {
        v31 = (v31 + 1) >> 1;
      }

      v14 = v30 * ((v31 + BYTE1(v36[0]) - 1) / BYTE1(v36[0]));
    }
  }

  else if (*(a1 + 396))
  {
    if (v11 == 256 || v11 == 512)
    {
      v14 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, planeIndex);
    }

    else if (v11 == 768)
    {
      v28 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, planeIndex);
      v29 = (v28 + v6 - 1) & -v6;
      if (!v6)
      {
        v29 = v28;
      }

      v14 = v29 * *(a1 + 136);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18)
    {
      HeightOfPlane = IOSurfaceGetHeightOfPlane(v18, planeIndex);
    }

    else if (planeIndex == 1 && *(*(a1 + 208) + 72) == 3)
    {
      HeightOfPlane = *(a1 + 132) >> 1;
    }

    else
    {
      HeightOfPlane = *(a1 + 132);
    }

    v34 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, v4);
    v14 = v34 * HeightOfPlane;
    v35 = *(a1 + 208);
    if (*(v35 + 24) - 1 == v4)
    {
      v14 = v14 - v34 + *(v35 + v4 + 88) * *(a1 + 128);
    }
  }

LABEL_31:
  v23 = *(a1 + 584);
  if (v23)
  {
    BaseAlignment = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getBaseAlignment(*(a1 + 584));
    v14 = (v14 + BaseAlignment - 1) & -BaseAlignment;
    if (!a3)
    {
      return v14;
    }

    v14 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v23 + 648 * v4, 0, 1);
  }

  if (*(*(a1 + 208) + 24) - 1 != v4)
  {
    return (v14 + *(a1 + 336) - 1) & -*(a1 + 336);
  }

  return v14;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getBaseAlignment(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 1)
  {
    return 128;
  }

  if (v1 == 2)
  {
    v2 = (a1 + 396);
    v3 = *(a1 + 396);
    v4 = *(a1 + 397);
    v5 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, 0);
    v6 = (*v2 >> 16) & 1;
    if (v4 == 1)
    {
      v7 = WORD1(*v2) & 1;
    }

    else
    {
      v7 = 0;
    }

    if (v4 != 2)
    {
      LOBYTE(v6) = 0;
    }

    if (v7)
    {
      LOBYTE(v6) = 1;
    }

    if ((v4 - 3) >= 2)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    v9 = (v3 - 1);
    if (v9 <= 1 && v5 >= 0x4000 && (v8 & 1) != 0)
    {
      return 0x4000;
    }

    if (v9 < 3)
    {
      return 128;
    }

    result = 16;
    if (!v3 && v4 == 2 && (*v2 & 0x10000) != 0)
    {
      return 128;
    }
  }

  else if (*(a1 + 232) == 1)
  {
    return *(a1 + 336);
  }

  else
  {
    result = *(a1 + 236);
    if (!result)
    {
      v12 = *(a1 + 396);
      v13 = *(a1 + 397);
      v14 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, 0);
      v15 = *(a1 + 396);
      v16 = (v15 >> 16) & 1;
      if (v13 == 1)
      {
        v17 = BYTE2(v15) & 1;
      }

      else
      {
        v17 = 0;
      }

      if (v13 != 2)
      {
        LOBYTE(v16) = 0;
      }

      if (v17)
      {
        LOBYTE(v16) = 1;
      }

      if ((v13 - 3) >= 2)
      {
        v18 = v16;
      }

      else
      {
        v18 = 1;
      }

      v19 = (v12 - 1);
      if (v19 <= 1 && v14 >= 0x4000 && (v18 & 1) != 0)
      {
        return 0x4000;
      }

      if (v19 < 3 || (result = 16, !v12) && v13 == 2 && (v15 & 0x10000) != 0)
      {
        if (*(a1 + 584))
        {
          return 2048;
        }

        else
        {
          return 128;
        }
      }
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 236);
  if (v6 && *(a1 + 248) == 2)
  {
    v7 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, 0);
    v8 = *(a1 + 396);
    v9 = v8 & 0xFF00;
    if (v9 == 768)
    {
      v10 = *(a1 + 136);
    }

    else if ((v8 & 0x10000) != 0 || v9 == 1024)
    {
      if (v9 == 1024)
      {
        v10 = 6 * *(a1 + 392);
      }

      else
      {
        v10 = *(a1 + 392);
      }
    }

    else
    {
      v10 = 1;
    }

    v21 = v6 - 1;
    v14 = ((8 * ((v6 - 1 + ((v7 + (v6 << 8) - 1) & -(v6 << 8))) / v6) + 2047) & 0xFFFFFFFFFFFFF800) * v10;
    if (*(a1 + 240) == 1)
    {
      v38 = 0;
      v39 = 0;
      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::calcSparseParams(a1, v36, &v39, &v38);
      v22 = ((-v6 & (v21 + v39)) + v21) / v6;
      v14 = ((v14 + v22 + v38 + v21 + ((4 << -__clz(v22)) + 12)) & -v6) + v39;
    }

    goto LABEL_31;
  }

  v11 = *(a1 + 396) & 0xFF00;
  if ((*(a1 + 396) & 0x10000) != 0)
  {
    if (v11 == 1024)
    {
      v15 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a2);
      v16 = (v15 + v6 - 1) & -v6;
      if (!v6)
      {
        v16 = v15;
      }

      v17 = 6 * v16;
    }

    else
    {
      if (!*(a1 + 396))
      {
        v20 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, a2) * *(a1 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
LABEL_22:
        v14 = v20 * *(a1 + 392);
        goto LABEL_31;
      }

      v17 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a2);
    }

    v20 = (v17 + v6 - 1) & -v6;
    if (!v6)
    {
      v20 = v17;
    }

    goto LABEL_22;
  }

  if (v11 == 1024)
  {
    v12 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a2);
    v13 = (v12 + v6 - 1) & -v6;
    if (!v6)
    {
      v13 = v12;
    }

    v14 = 6 * v13;
  }

  else if (*(a1 + 396) == 3)
  {
    if (*(a1 + 168))
    {
      HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
      v27 = IOSurfaceGetWidthInCompressedTilesOfPlane() * HeightInCompressedTilesOfPlane;
      v14 = v27 * IOSurfaceGetBytesPerTileDataOfPlane();
    }

    else
    {
      v30 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, a2);
      v31 = *(a1 + 132);
      v32 = *(a1 + 32);
      v33 = *(a1 + 208);
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      InterchangeTiledMemory::getPlaneInfo(v36, a2, v32, *(v33 + 49));
      if (a2 == 1 && *(v33 + 72) == 3)
      {
        v31 = (v31 + 1) >> 1;
      }

      v14 = v30 * ((v31 + BYTE1(v36[0]) - 1) / BYTE1(v36[0]));
    }
  }

  else if (*(a1 + 396))
  {
    if (v11 == 256 || v11 == 512)
    {
      v14 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a2);
    }

    else if (v11 == 768)
    {
      v28 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a2);
      v29 = (v28 + v6 - 1) & -v6;
      if (!v6)
      {
        v29 = v28;
      }

      v14 = v29 * *(a1 + 136);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18)
    {
      HeightOfPlane = IOSurfaceGetHeightOfPlane(v18, a2);
    }

    else if (a2 == 1 && *(*(a1 + 208) + 72) == 3)
    {
      HeightOfPlane = *(a1 + 132) >> 1;
    }

    else
    {
      HeightOfPlane = *(a1 + 132);
    }

    v34 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, a2);
    v14 = v34 * HeightOfPlane;
    v35 = *(a1 + 208);
    if (*(v35 + 24) - 1 == a2)
    {
      v14 = v14 - v34 + *(v35 + a2 + 88) * *(a1 + 128);
    }
  }

LABEL_31:
  v23 = *(a1 + 584);
  if (v23)
  {
    BaseAlignment = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getBaseAlignment(*(a1 + 584));
    v14 = (v14 + BaseAlignment - 1) & -BaseAlignment;
    if (!a3)
    {
      return v14;
    }

    v14 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v23 + 648 * a2, 0, 1);
  }

  if (*(*(a1 + 208) + 24) - 1 != a2)
  {
    return (v14 + *(a1 + 336) - 1) & -*(a1 + 336);
  }

  return v14;
}

uint64_t AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMetadataUncompressedValue(uint64_t a1, int a2)
{
  if (*(a1 + 24) >= 2u && *(a1 + 80))
  {
LABEL_3:
    v2 = &_ZZNK3AGX23CompressionMetadataGen2IL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE28getMetadataUncompressedValueEjE6values__15_;
LABEL_12:
    v3 = v2[a2];
    return v3 | (v3 << 8);
  }

  else
  {
    v3 = 0;
    switch(*a1)
    {
      case 0:
      case 1:
        result = 7967;
        break;
      case 8:
      case 9:
      case 0xALL:
      case 0xBLL:
      case 0xCLL:
      case 0xDLL:
      case 0xELL:
      case 0xFLL:
      case 0x11:
        result = 16191;
        break;
      case 0x10:
        result = 12079;
        break;
      case 0x20:
        result = 10023;
        break;
      case 0x21:
      case 0x22:
      case 0x23:
      case 0x25:
      case 0x26:
      case 0x27:
      case 0x28:
      case 0x29:
      case 0x40:
      case 0x41:
      case 0x45:
      case 0x4DLL:
        result = 32639;
        break;
      case 0x2ALL:
        result = 24415;
        break;
      case 0x30:
        result = 20303;
        break;
      case 0x31:
      case 0x32:
      case 0x33:
      case 0x38:
        result = 0xFFFFLL;
        break;
      case 0x3ALL:
      case 0x3BLL:
      case 0x3CLL:
        v2 = &AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMetadataUncompressedValueconst::values;
        goto LABEL_12;
      case 0x3DLL:
      case 0x3ELL:
      case 0x3FLL:
      case 0x46:
      case 0x47:
      case 0x48:
        v2 = &_ZZNK3AGX23CompressionMetadataGen2IL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE28getMetadataUncompressedValueEjE6values__14_;
        goto LABEL_12;
      case 0x42:
      case 0x43:
      case 0x44:
        v2 = &AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMetadataUncompressedValueconst::values;
        goto LABEL_12;
      case 0x49:
      case 0x4ALL:
      case 0x4BLL:
        v2 = &AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMetadataUncompressedValueconst::values;
        goto LABEL_12;
      case 0x4CLL:
        goto LABEL_3;
      default:
        return v3 | (v3 << 8);
    }
  }

  return result;
}

__IOSurface *AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::writeRegion(uint64_t a1, unsigned int a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12)
{
  v12 = a8;
  LODWORD(v13) = a7;
  v15 = a1;
  v16 = a12;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::validateRegion(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (!result)
  {
    return result;
  }

  v18 = *(v15 + 144);
  v19 = *(*(v15 + 208) + 88);
  v20 = *(v15 + 112);
  v190 = v15;
  v205 = a4;
  if (*(v15 + 240) == 1)
  {
    v193 = *(v15 + 144);
    v195 = v12;
    v200 = *(v15 + 112);
    v203 = *(*(v15 + 208) + 88);
    v21 = *(v15 + 397) << 8;
    v22 = v21 == 768;
    v197 = v13;
    if (v21 == 768)
    {
      v23 = v13;
    }

    else
    {
      v23 = 1;
    }

    if (v22)
    {
      v24 = a4;
    }

    else
    {
      v24 = v12;
    }

    v211 = v24;
    v214 = v23;
    if (v23)
    {
      v25 = 0;
      v26 = *(v15 + 312);
      v208 = v20 * v19;
      v225 = (v26 + *(v15 + 616) - *(v15 + 72));
      v27 = v225 + 3;
      v207 = *(v15 + 332) & 1;
      agxCalcSparseInputs(*(v15 + 236), *(v15 + 128), *(v15 + 132), *(v15 + 216), *(v15 + 220), v20 * v19, *(v15 + 64), 1u, 1u, v24, a9, v207, a2, a3, a5, a6, &v228);
      while (1)
      {
        v28 = *v225;
        v30 = v225[1];
        v29 = v225[2];
        v31 = v30 >= *v225 ? 0 : v225[2];
        v32 = v31 - v28 + v30;
        if (v32)
        {
          v233[0] = 0;
          v33 = HIDWORD(v230);
          v34 = v231 * HIDWORD(v230);
          if (v231 * HIDWORD(v230))
          {
            v35 = BYTE9(v231);
            v36 = v229;
            v37 = DWORD1(v229);
            v38 = DWORD2(v229);
            v39 = HIDWORD(v229);
            v40 = v230;
            v41 = v230 | HIDWORD(v229);
            if (BYTE9(v231))
            {
              v42 = 0;
              do
              {
                if (v41)
                {
                  v43 = 0;
                  v44 = 0;
                  v45 = 1;
                  v46 = v39 != 0;
                  v47 = v40 != 0;
                  v48 = v39;
                  v49 = v40;
                  do
                  {
                    --v48;
                    if (v46)
                    {
                      v44 |= (v45 & (v36 + (v42 % v33))) << v43;
                    }

                    else
                    {
                      v48 = 0;
                    }

                    if (v46)
                    {
                      ++v43;
                    }

                    if (v47)
                    {
                      --v49;
                    }

                    else
                    {
                      v49 = 0;
                    }

                    if (v47)
                    {
                      v44 |= (v45 & (v37 + (v42 / v33))) << v43++;
                    }

                    v45 *= 2;
                    --v43;
                    v47 = v49 != 0;
                    v46 = v48 != 0;
                  }

                  while (v49 | v48);
                }

                else
                {
                  v44 = 0;
                }

                if ((*(v26 + 4 * ((v44 + v38) | ((v44 + v38) >> 8 << 9))) & 0x80000000) == 0)
                {
                  atomic_fetch_add_explicit(v233, 1u, memory_order_relaxed);
                }

                ++v42;
              }

              while (v42 != v34);
            }

            else
            {
              do
              {
                if (v41)
                {
                  v50 = 0;
                  v51 = 0;
                  v52 = 1;
                  v53 = v40 != 0;
                  v54 = v39 != 0;
                  v55 = v40;
                  v56 = v39;
                  do
                  {
                    --v55;
                    if (v53)
                    {
                      v51 |= (v52 & (v37 + (v35 / v33))) << v50;
                    }

                    else
                    {
                      v55 = 0;
                    }

                    if (v53)
                    {
                      ++v50;
                    }

                    if (v54)
                    {
                      --v56;
                    }

                    else
                    {
                      v56 = 0;
                    }

                    if (v54)
                    {
                      v51 |= (v52 & (v36 + (v35 % v33))) << v50++;
                    }

                    v52 *= 2;
                    --v50;
                    v54 = v56 != 0;
                    v53 = v55 != 0;
                  }

                  while (v56 | v55);
                }

                else
                {
                  v51 = 0;
                }

                if ((*(v26 + 4 * ((v51 + v38) | ((v51 + v38) >> 8 << 9))) & 0x80000000) == 0)
                {
                  atomic_fetch_add_explicit(v233, 1u, memory_order_relaxed);
                }

                ++v35;
              }

              while (v35 != v34);
            }
          }

          if (v32 >= v233[0])
          {
            v32 = v233[0];
          }

          v57 = v32 + v28 >= v29 ? v29 : 0;
          *v225 = v32 + v28 - v57;
          if (v34)
          {
            break;
          }
        }

LABEL_11:
        if (++v25 == v214)
        {
          goto LABEL_102;
        }

        agxCalcSparseInputs(*(v190 + 236), *(v190 + 128), *(v190 + 132), *(v190 + 216), *(v190 + 220), v208, *(v190 + 64), 1u, 1u, v25 + v211, a9, v207, a2, a3, a5, a6, &v228);
      }

      v58 = 0;
      v59 = BYTE9(v231);
      v60 = v229;
      v61 = DWORD1(v229);
      v63 = DWORD2(v229);
      v62 = HIDWORD(v229);
      v64 = v230;
      v65 = v230 | HIDWORD(v229);
      while (1)
      {
        v66 = v58 / v33;
        v67 = v58 % v33;
        if (v59)
        {
          if (v65)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v71 = v62 != 0;
            v72 = v64 != 0;
            v73 = v62;
            v74 = v64;
            do
            {
              --v73;
              v75 = !v71;
              if (v71)
              {
                v76 = ((v70 & (v60 + v67)) << v68) | v69;
              }

              else
              {
                v73 = 0;
                v76 = v69;
              }

              if (!v75)
              {
                ++v68;
              }

              v69 = ((v70 & (v61 + v66)) << v68) | v76;
              if (v72)
              {
                --v74;
              }

              else
              {
                v74 = 0;
              }

              if (v72)
              {
                v77 = v68 + 1;
              }

              else
              {
                v69 = v76;
                v77 = v68;
              }

              v70 *= 2;
              v68 = v77 - 1;
              v72 = v74 != 0;
              v71 = v73 != 0;
            }

            while (v74 | v73);
            goto LABEL_96;
          }
        }

        else if (v65)
        {
          v78 = 0;
          v69 = 0;
          v79 = 1;
          v80 = v64 != 0;
          v81 = v62 != 0;
          v82 = v64;
          v83 = v62;
          v84 = v61 + v66;
          do
          {
            --v82;
            v85 = !v80;
            if (v80)
            {
              v86 = ((v79 & v84) << v78) | v69;
            }

            else
            {
              v82 = 0;
              v86 = v69;
            }

            if (!v85)
            {
              ++v78;
            }

            v69 = ((v79 & (v60 + v67)) << v78) | v86;
            if (v81)
            {
              --v83;
            }

            else
            {
              v83 = 0;
            }

            if (v81)
            {
              v87 = v78 + 1;
            }

            else
            {
              v69 = v86;
              v87 = v78;
            }

            v79 *= 2;
            v78 = v87 - 1;
            v81 = v83 != 0;
            v80 = v82 != 0;
          }

          while (v83 | v82);
          goto LABEL_96;
        }

        v69 = 0;
LABEL_96:
        v88 = (v69 + v63) | ((v69 + v63) >> 8 << 9);
        if ((*(v26 + 4 * v88) & 0x80000000) == 0 && v58 < v32)
        {
          if (v58 + v28 >= v29)
          {
            v89 = v29;
          }

          else
          {
            v89 = 0;
          }

          v90 = v58 + v28 - v89;
          *(v26 + 4 * v88) = v27[v90] & 0x1FFFFFFF | 0xC0000000;
          v27[v90] = 66809520;
        }

        if (++v58 == v34)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_102:
    v15 = v190;
    v16 = a12;
    v20 = v200;
    v12 = v195;
    LODWORD(v13) = v197;
    v19 = v203;
    v18 = v193;
  }

  if (*(v15 + 168))
  {
    IOSurfaceLockPlane();
  }

  v91 = v18 + a9;
  v92 = *(v15 + 184);
  if (v92)
  {
    IOSurfaceLock(v92, 0, 0);
  }

  v93 = *(v15 + 396);
  v94 = v93;
  if (!v93)
  {
    v107 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v15, 0);
    CPUPtr = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v15, v12, v91, 0);
    v109 = a10;
    if (a6)
    {
      v110 = a6;
      v111 = (CPUPtr + v107 * a3 + v19 * a2);
      v112 = v19 * a5;
      do
      {
        memcpy(v111, v109, v112);
        v109 += a11;
        v111 += v107;
        --v110;
      }

      while (v110);
    }

    goto LABEL_205;
  }

  v226 = v91;
  v95 = v20 * v19;
  v96 = ((v93 & 0xFF00) - 256) >> 8;
  if (v96 < 2)
  {
    goto LABEL_111;
  }

  if (v96 == 2)
  {
    v215 = v20 * v19;
    v118 = *(v190 + 144) + a9;
    v119 = *(v190 + 132);
    if (*(v190 + 128) >> (*(v190 + 144) + a9) <= 1u)
    {
      v120 = 1;
    }

    else
    {
      v120 = *(v190 + 128) >> (*(v190 + 144) + a9);
    }

    if (v119 >> v118 <= 1)
    {
      v121 = 1;
    }

    else
    {
      v121 = v119 >> v118;
    }

    v122 = *(v190 + 136) >> v118;
    if (v122 <= 1)
    {
      v123 = 1;
    }

    else
    {
      v123 = v122;
    }

    AddressingBaseLevelWidthInBlocks = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelWidthInBlocks(v190, v91);
    AddressingBaseLevelHeightInBlocks = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelHeightInBlocks(v190, v91);
    v126 = *(v190 + 584);
    if (v126 && *(v126 + 1304) > v91)
    {
      v127 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v190, 0, v91, 0);
      v128 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(*(v190 + 584), v12, v91, 0);
      v129 = v16;
      v130 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v190, 0);
      v131 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(*(v190 + 584), 0);
      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::writeCompressedRegion3D(v190, v127, a10, v128, v120, v121, a2, a3, v205, a5, a6, v13, a11, v129, v130, v131, a9);
    }

    else if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v190, v91))
    {
      v220 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v190, 0, v91, 0);
      v212 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v190, 0);
      TwiddleFunc = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getTwiddleFunc(v190);
      v133 = a10;
      v134 = v215;
      if (v13)
      {
        v135 = TwiddleFunc;
        v136 = *(v190 + 128);
        v137 = *(v190 + 216);
        v138 = *(v190 + 220);
        v13 = v13;
        v139 = *(v190 + 333);
        do
        {
          TiledMemory<(TwiddleOrder)1>::convertTiles2D<false>(v220 + v212 * v205, v133, v136, v226, a2, a3, a5, a6, a11, v137, v138, v134, v135, v139);
          v134 = v215;
          ++v205;
          v133 += v16;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      v222 = v120;
      v149 = (1 << -__clz(AddressingBaseLevelWidthInBlocks - 1));
      v217 = 1 << -__clz(AddressingBaseLevelHeightInBlocks - 1);
      v150 = v190 + 260;
      v213 = v121;
      v209 = v123;
      if (*(v190 + 240) == 1)
      {
        v151 = *(v190 + 72);
        v152 = v149;
        MipInTail = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v190, 0);
        v154 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v190, 1);
        v155 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v190, 0, 0);
        *&v228 = __PAIR64__(v12, v91);
        *(&v228 + 1) = __PAIR64__(v154, MipInTail);
        v149 = v152;
        LODWORD(v229) = v155;
        *(&v229 + 1) = v151;
        v91 = 0;
        DWORD1(v229) = 8 * ((AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v190, 0) + (*(v190 + 236) << 8) - 1) & -(*(v190 + 236) << 8)) / *(v190 + 236);
        v156 = &v228;
      }

      else
      {
        v156 = 0;
        if (!*(v190 + 232))
        {
          v150 = 0;
        }
      }

      v179 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v190, 0, v91, 0);
      v180 = agxsTwiddle3DAddressCompressed<true,4u,2u,16ul,(TwiddleOrder)1>;
      switch(*(v190 + 32))
      {
        case 0x82:
        case 0x83:
        case 0x8CLL:
        case 0x8DLL:
          v180 = agxsTwiddle3DAddressCompressed<true,4u,4u,8ul,(TwiddleOrder)1>;
          break;
        case 0x84:
        case 0x85:
        case 0x86:
        case 0x87:
        case 0x8ELL:
        case 0x8FLL:
        case 0x96:
        case 0x97:
        case 0x98:
        case 0x99:
        case 0xBALL:
        case 0xCCLL:
        case 0xDELL:
          v180 = agxsTwiddle3DAddressCompressed<true,4u,4u,16ul,(TwiddleOrder)1>;
          break;
        case 0xB9:
        case 0xCBLL:
        case 0xDDLL:
          break;
        case 0xBBLL:
        case 0xCDLL:
        case 0xDFLL:
          v180 = agxsTwiddle3DAddressCompressed<true,5u,4u,16ul,(TwiddleOrder)1>;
          break;
        case 0xBCLL:
        case 0xCELL:
        case 0xE0:
          v180 = agxsTwiddle3DAddressCompressed<true,5u,5u,16ul,(TwiddleOrder)1>;
          break;
        case 0xBDLL:
        case 0xCFLL:
        case 0xE1:
          v180 = agxsTwiddle3DAddressCompressed<true,6u,5u,16ul,(TwiddleOrder)1>;
          break;
        case 0xBELL:
        case 0xD0:
        case 0xE2:
          v180 = agxsTwiddle3DAddressCompressed<true,6u,6u,16ul,(TwiddleOrder)1>;
          break;
        case 0xBFLL:
        case 0xD1:
        case 0xE3:
          v180 = agxsTwiddle3DAddressCompressed<true,8u,4u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC0:
        case 0xD2:
        case 0xE4:
          v180 = agxsTwiddle3DAddressCompressed<true,8u,5u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC1:
        case 0xD3:
        case 0xE5:
          v180 = agxsTwiddle3DAddressCompressed<true,8u,6u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC2:
        case 0xD4:
        case 0xE6:
          v180 = agxsTwiddle3DAddressCompressed<true,8u,8u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC3:
        case 0xD5:
        case 0xE7:
          v180 = agxsTwiddle3DAddressCompressed<true,10u,5u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC4:
        case 0xD6:
        case 0xE8:
          v180 = agxsTwiddle3DAddressCompressed<true,10u,6u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC5:
        case 0xD7:
        case 0xE9:
          v180 = agxsTwiddle3DAddressCompressed<true,10u,8u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC6:
        case 0xD8:
        case 0xEALL:
          v180 = agxsTwiddle3DAddressCompressed<true,10u,10u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC7:
        case 0xD9:
        case 0xEBLL:
          v180 = agxsTwiddle3DAddressCompressed<true,12u,10u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC8:
        case 0xDALL:
        case 0xECLL:
          v180 = agxsTwiddle3DAddressCompressed<true,12u,12u,16ul,(TwiddleOrder)1>;
          break;
        default:
          v180 = *(&off_2A23FAA60 + __clz(__rbit32(*(*(v190 + 208) + 49))));
          break;
      }

      v181 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v190, 0);
      (v180)(v179, a10, v222, v213, v209, v149, v217, v181, __PAIR64__(a3, a2), __PAIR64__(a5, v205), __PAIR64__(v13, a6), a11, v16, v150, v156);
    }

    goto LABEL_205;
  }

  if (v96 == 3)
  {
LABEL_111:
    v97 = *(v190 + 128) >> (*(v190 + 144) + a9);
    if (v97 <= 1)
    {
      v98 = 1;
    }

    else
    {
      v98 = v97;
    }

    v99 = *(v190 + 132) >> (*(v190 + 144) + a9);
    if (v99 <= 1)
    {
      v100 = 1;
    }

    else
    {
      v100 = v99;
    }

    v101 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelWidthInBlocks(v190, v226);
    v102 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelHeightInBlocks(v190, v226);
    v103 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getTwiddleFunc(v190);
    v104 = *(v190 + 584);
    if (v104 && *(v104 + 1304) > v226)
    {
      v105 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v190, v12, v226, 0);
      v106 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(*(v190 + 584), v12, v226, 0);
      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::writeCompressedRegion2D<true>(v190, v105, a10, v106, v98, v100, a2, a3, a5, a6, a11, a9);
    }

    else if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v190, v226))
    {
      v113 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v190, v12, v226, 0);
      TiledMemory<(TwiddleOrder)1>::convertTiles2D<false>(v113, a10, *(v190 + 128), v226, a2, a3, a5, a6, a11, *(v190 + 216), *(v190 + 220), v95, v103, *(v190 + 333));
    }

    else if (v94 == 3)
    {
      v185 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v190, 0, 0, 0);
      v232 = 0;
      v230 = 0u;
      v231 = 0u;
      v228 = 0u;
      v229 = 0u;
      v114 = *(v190 + 208);
      InterchangeTiledMemory::getPlaneInfo(&v228, 0, *(v190 + 32), *(v114 + 49));
      v115 = BYTE2(v228);
      if (*(v190 + 168))
      {
        CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
        CompressedTileHeightOfPlane = IOSurfaceGetCompressedTileHeightOfPlane();
        v114 = *(v190 + 208);
      }

      else
      {
        CompressedTileWidthOfPlane = v228;
        CompressedTileHeightOfPlane = BYTE1(v228);
      }

      v157 = a10;
      v158 = a11;
      HIDWORD(v160) = v115 - 8;
      LODWORD(v160) = v115 - 8;
      v159 = v160 >> 3;
      if (v159 > 7)
      {
        v161 = 0;
      }

      else
      {
        v161 = off_2A23FA6A8[v159];
      }

      v162 = a3 / CompressedTileHeightOfPlane;
      v184 = a6 + a3;
      v199 = CompressedTileHeightOfPlane;
      v183 = (a6 + a3 - 1) / CompressedTileHeightOfPlane;
      if (v162 <= v183)
      {
        v194 = a5 + a2;
        v196 = CompressedTileWidthOfPlane;
        v182 = a2 / CompressedTileWidthOfPlane;
        v192 = (a5 + a2 - 1) / CompressedTileWidthOfPlane;
        if (v182 <= v192)
        {
          v163 = 4 * v115;
          v206 = (CompressedTileWidthOfPlane >> 3) * 4 * v115;
          v187 = (CompressedTileWidthOfPlane * v115 * CompressedTileHeightOfPlane) >> 3;
          do
          {
            v189 = v185 + (v98 + v196 - 1) / v196 * v187 * v162;
            v186 = v162;
            v164 = v162 * v199;
            if (a3 >= v164)
            {
              v165 = a3 - v164;
            }

            else
            {
              v165 = 0;
            }

            v198 = v184 - v164;
            v201 = v165 >> 2;
            v188 = &v157[v164 * v158];
            v166 = v182;
            do
            {
              v204 = v166;
              v167 = v166 * v196;
              v168 = a2 - v166 * v196;
              if (a2 >= v167)
              {
                v169 = v168;
              }

              else
              {
                v169 = 0;
              }

              v170 = v194 - v167;
              if (v196 - v169 < v194 - v167)
              {
                v170 = v196 - v169;
              }

              v171 = v170 - 1;
              v172 = v199 - v169;
              if (v199 - v169 >= v198)
              {
                v172 = v198;
              }

              v173 = v171 >> 3;
              v219 = (v172 - 1) >> 2;
              if (v201 <= v219 && v169 >> 3 <= v173)
              {
                v210 = &v188[*(v114 + 49) * v167];
                v175 = v201;
                do
                {
                  v224 = v175;
                  v227 = v189 + v204 * v187 + (v206 * v175);
                  v176 = &v210[4 * v175 * v158];
                  v177 = v169 >> 3;
                  do
                  {
                    (v161)(v227 + (v163 * v177), &v176[8 * v177 * *(v114 + 49)], 8, 4, 8, 4);
                    v158 = a11;
                  }

                  while (v177++ < v173);
                  v175 = v224 + 1;
                }

                while (v224 < v219);
              }

              v166 = v204 + 1;
            }

            while (v204 + 1 <= v192);
            v162 = v186 + 1;
            v157 = a10;
          }

          while (v186 + 1 <= v183);
        }
      }
    }

    else
    {
      v140 = (1 << -__clz(v101 - 1));
      v141 = (1 << -__clz(v102 - 1));
      v142 = v190 + 260;
      if (*(v190 + 240) == 1)
      {
        v221 = v140;
        v216 = *(v190 + 72);
        v143 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v190, 0);
        v144 = v141;
        v145 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v190, 1);
        v146 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v190, 0, 0);
        *&v228 = __PAIR64__(v12, v226);
        *(&v228 + 1) = __PAIR64__(v145, v143);
        v141 = v144;
        LODWORD(v229) = v146;
        *(&v229 + 1) = v216;
        v140 = v221;
        v147 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v190, 0, 0, 0);
        v148 = &v228;
      }

      else
      {
        if (!*(v190 + 232))
        {
          v142 = 0;
        }

        v147 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v190, v12, v226, 0);
        v148 = 0;
      }

      (v103)(v147, a10, v98, v100, v140, v141, a2, a3, __PAIR64__(a6, a5), a11, v142, v148);
    }
  }

LABEL_205:
  if (*(v190 + 168))
  {
    IOSurfaceUnlockPlane();
  }

  result = *(v190 + 184);
  if (result)
  {
    return IOSurfaceUnlock(result, 0, 0);
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::validateRegion(uint64_t a1, int a2, int a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12)
{
  v27 = *MEMORY[0x29EDCA608];
  if (!a5)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "width > 0");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "width > 0";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "width > 0";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "width > 0";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "width > 0";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  if (!a6)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "height > 0");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "height > 0";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "height > 0";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "height > 0";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "height > 0";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  if (!a7)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "depth > 0");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "depth > 0";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "depth > 0";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "depth > 0";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "depth > 0";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  v13 = *(a1 + 144) + a9;
  v14 = *(a1 + 128) >> (*(a1 + 144) + a9);
  if (v14 <= 1)
  {
    v14 = 1;
  }

  v15 = *(a1 + 216);
  if (v14 + v15 + ~(((v14 + v15) - 1) % v15) < (a5 + a2))
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "(xoffset + width) <= ALIGNGRAN_NPOT(getViewLevelWidth(mipmapLevel), block_width) && Region width OOB");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "(xoffset + width) <= ALIGNGRAN_NPOT(getViewLevelWidth(mipmapLevel), block_width) && Region width OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "(xoffset + width) <= ALIGNGRAN_NPOT(getViewLevelWidth(mipmapLevel), block_width) && Region width OOB";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "(xoffset + width) <= ALIGNGRAN_NPOT(getViewLevelWidth(mipmapLevel), block_width) && Region width OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "(xoffset + width) <= ALIGNGRAN_NPOT(getViewLevelWidth(mipmapLevel), block_width) && Region width OOB";
    v16 = MEMORY[0x29EDCA988];
LABEL_98:
    _os_log_impl(&dword_29CA13000, v16, OS_LOG_TYPE_INFO, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    return 0;
  }

  if (*(a1 + 132) >> v13 <= 1u)
  {
    v17 = 1;
  }

  else
  {
    v17 = *(a1 + 132) >> v13;
  }

  v18 = *(a1 + 220);
  if ((v17 + v18) + ~(((v17 + v18) - 1) % v18) < (a6 + a3))
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "(yoffset + height) <= ALIGNGRAN_NPOT(getViewLevelHeight(mipmapLevel), block_height) && Region height OOB");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "(yoffset + height) <= ALIGNGRAN_NPOT(getViewLevelHeight(mipmapLevel), block_height) && Region height OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "(yoffset + height) <= ALIGNGRAN_NPOT(getViewLevelHeight(mipmapLevel), block_height) && Region height OOB";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "(yoffset + height) <= ALIGNGRAN_NPOT(getViewLevelHeight(mipmapLevel), block_height) && Region height OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "(yoffset + height) <= ALIGNGRAN_NPOT(getViewLevelHeight(mipmapLevel), block_height) && Region height OOB";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  v19 = *(a1 + 136) >> v13;
  if (v19 <= 1)
  {
    v19 = 1;
  }

  if (a7 + a4 > v19)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "(zoffset + depth) <= getViewLevelDepth(mipmapLevel) && Region depth OOB");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "(zoffset + depth) <= getViewLevelDepth(mipmapLevel) && Region depth OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "(zoffset + depth) <= getViewLevelDepth(mipmapLevel) && Region depth OOB";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "(zoffset + depth) <= getViewLevelDepth(mipmapLevel) && Region depth OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "(zoffset + depth) <= getViewLevelDepth(mipmapLevel) && Region depth OOB";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  v20 = *(a1 + 396) & 0xFF00;
  if ((*(a1 + 396) & 0x10000) != 0 || v20 == 1024)
  {
    if (v20 == 1024)
    {
      v21 = 6 * *(a1 + 392);
    }

    else
    {
      v21 = *(a1 + 392);
    }
  }

  else
  {
    v21 = 1;
  }

  if (v21 <= a8)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "slice < getNumSlices() && Specified slice OOB");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "slice < getNumSlices() && Specified slice OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "slice < getNumSlices() && Specified slice OOB";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "slice < getNumSlices() && Specified slice OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "slice < getNumSlices() && Specified slice OOB";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  if (*(a1 + 140) <= a9)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "mipmapLevel < getBaseNumMipmapLevels() && Specified mipmap level OOB");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "mipmapLevel < getBaseNumMipmapLevels() && Specified mipmap level OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "mipmapLevel < getBaseNumMipmapLevels() && Specified mipmap level OOB";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "mipmapLevel < getBaseNumMipmapLevels() && Specified mipmap level OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "mipmapLevel < getBaseNumMipmapLevels() && Specified mipmap level OOB";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  v22 = *(a1 + 208);
  if (!*(v22 + 24))
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "plane < getNumPlanes() && Specified plane OOB");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "plane < getNumPlanes() && Specified plane OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "plane < getNumPlanes() && Specified plane OOB";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "plane < getNumPlanes() && Specified plane OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "plane < getNumPlanes() && Specified plane OOB";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  v23 = *(v22 + 88);

  return agxaAssertBufferIsValid(a10, a11, a12, v23, a5, a6, v18, v15, a7);
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelWidthInBlocks(uint64_t a1, char a2)
{
  v4 = *(a1 + 396);
  if (v4 == 2)
  {
    isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, a2);
    if (!*(*(a1 + 208) + 56) || isLevelTiled)
    {
      goto LABEL_12;
    }
  }

  else if (v4 != 1 || (*(a1 + 332) & 1) == 0)
  {
LABEL_12:
    v9 = *(a1 + 128) >> a2;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    return (*(a1 + 216) + v9 - 1) / *(a1 + 216);
  }

  v6 = *(a1 + 128);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = (1 << -__clz((*(a1 + 216) + v6 - 1) / *(a1 + 216) - 1)) >> a2;
  if (v7 <= 1)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelHeightInBlocks(uint64_t a1, char a2)
{
  v4 = *(a1 + 396);
  if (v4 == 2)
  {
    isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, a2);
    if (!*(*(a1 + 208) + 56) || isLevelTiled)
    {
      goto LABEL_12;
    }
  }

  else if (v4 != 1 || (*(a1 + 332) & 1) == 0)
  {
LABEL_12:
    v9 = *(a1 + 132) >> a2;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    return (*(a1 + 220) + v9 - 1) / *(a1 + 220);
  }

  v6 = *(a1 + 132);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = (1 << -__clz((*(a1 + 220) + v6 - 1) / *(a1 + 220) - 1)) >> a2;
  if (v7 <= 1)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t (*AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getTwiddleFunc(uint64_t a1))(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v1 = *(a1 + 16);
  v2 = agxsTwiddleAddressPVRTC2<true,(TwiddleOrder)1>;
  switch(*(a1 + 32))
  {
    case 0x82:
    case 0x83:
    case 0x8CLL:
    case 0x8DLL:
    case 0xAALL:
    case 0xACLL:
    case 0xB4:
    case 0xB5:
    case 0xB6:
    case 0xB7:
      return agxsTwiddleAddressCompressed<true,4u,4u,8ul,(TwiddleOrder)1>;
    case 0x84:
    case 0x85:
    case 0x86:
    case 0x87:
    case 0x8ELL:
    case 0x8FLL:
    case 0x96:
    case 0x97:
    case 0x98:
    case 0x99:
    case 0xAELL:
    case 0xB0:
    case 0xB2:
    case 0xB3:
    case 0xBALL:
    case 0xCCLL:
    case 0xDELL:
      return agxsTwiddleAddressCompressed<true,4u,4u,16ul,(TwiddleOrder)1>;
    case 0xA0:
    case 0xA1:
    case 0xA4:
    case 0xA5:
      return v2;
    case 0xA2:
    case 0xA3:
    case 0xA6:
    case 0xA7:
      return agxsTwiddleAddressPVRTC4<true,(TwiddleOrder)1>;
    case 0xB9:
    case 0xCBLL:
    case 0xDDLL:
      return agxsTwiddleAddressCompressed<true,4u,2u,16ul,(TwiddleOrder)1>;
    case 0xBBLL:
    case 0xCDLL:
    case 0xDFLL:
      return agxsTwiddleAddressCompressed<true,5u,4u,16ul,(TwiddleOrder)1>;
    case 0xBCLL:
    case 0xCELL:
    case 0xE0:
      return agxsTwiddleAddressCompressed<true,5u,5u,16ul,(TwiddleOrder)1>;
    case 0xBDLL:
    case 0xCFLL:
    case 0xE1:
      return agxsTwiddleAddressCompressed<true,6u,5u,16ul,(TwiddleOrder)1>;
    case 0xBELL:
    case 0xD0:
    case 0xE2:
      return agxsTwiddleAddressCompressed<true,6u,6u,16ul,(TwiddleOrder)1>;
    case 0xBFLL:
    case 0xD1:
    case 0xE3:
      return agxsTwiddleAddressCompressed<true,8u,4u,16ul,(TwiddleOrder)1>;
    case 0xC0:
    case 0xD2:
    case 0xE4:
      return agxsTwiddleAddressCompressed<true,8u,5u,16ul,(TwiddleOrder)1>;
    case 0xC1:
    case 0xD3:
    case 0xE5:
      return agxsTwiddleAddressCompressed<true,8u,6u,16ul,(TwiddleOrder)1>;
    case 0xC2:
    case 0xD4:
    case 0xE6:
      return agxsTwiddleAddressCompressed<true,8u,8u,16ul,(TwiddleOrder)1>;
    case 0xC3:
    case 0xD5:
    case 0xE7:
      return agxsTwiddleAddressCompressed<true,10u,5u,16ul,(TwiddleOrder)1>;
    case 0xC4:
    case 0xD6:
    case 0xE8:
      return agxsTwiddleAddressCompressed<true,10u,6u,16ul,(TwiddleOrder)1>;
    case 0xC5:
    case 0xD7:
    case 0xE9:
      return agxsTwiddleAddressCompressed<true,10u,8u,16ul,(TwiddleOrder)1>;
    case 0xC6:
    case 0xD8:
    case 0xEALL:
      return agxsTwiddleAddressCompressed<true,10u,10u,16ul,(TwiddleOrder)1>;
    case 0xC7:
    case 0xD9:
    case 0xEBLL:
      return agxsTwiddleAddressCompressed<true,12u,10u,16ul,(TwiddleOrder)1>;
    case 0xC8:
    case 0xDALL:
    case 0xECLL:
      return agxsTwiddleAddressCompressed<true,12u,12u,16ul,(TwiddleOrder)1>;
    default:
      v2 = 0;
      v4 = *(*(a1 + 208) + 88);
      if (v4 > 3)
      {
        if (v4 == 4)
        {
          v5 = *(a1 + 112) - 1;
          if (v5 < 8)
          {
            v6 = off_2A23FA568;
            return v6[v5];
          }

          return 0;
        }

        if (v4 != 8)
        {
          if (v4 == 16)
          {
            v5 = *(a1 + 112) - 1;
            if (v5 < 8)
            {
              v6 = off_2A23FA5E8;
              return v6[v5];
            }

            return 0;
          }

          return v2;
        }

        v5 = *(a1 + 112) - 1;
        if (v5 < 8)
        {
          v6 = off_2A23FA5A8;
          return v6[v5];
        }

        return 0;
      }

      if (v4 == 1)
      {
        v5 = *(a1 + 112) - 1;
        if (v5 < 8)
        {
          v6 = off_2A23FA528;
          return v6[v5];
        }

        return 0;
      }

      if (v4 != 2)
      {
        return v2;
      }

      v2 = 0;
      v7 = *(a1 + 112);
      if (v7 > 3)
      {
        if (v7 == 4)
        {
          if (v1 == 1)
          {
            return agxsTwiddleAddressZ<AGXSConverterPassThru<true,2ul,4u,(TwiddleOrder)1>>;
          }

          else
          {
            return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,2ul,4u,(TwiddleOrder)1>>;
          }
        }

        else
        {
          if (v7 != 8)
          {
            return v2;
          }

          if (v1 == 1)
          {
            return agxsTwiddleAddressZ<AGXSConverterPassThru<true,2ul,8u,(TwiddleOrder)1>>;
          }

          else
          {
            return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,2ul,8u,(TwiddleOrder)1>>;
          }
        }
      }

      else if (v7 == 1)
      {
        if (v1 == 1)
        {
          return agxsTwiddleAddressZ<AGXSConverterPassThru<true,2ul,1u,(TwiddleOrder)1>>;
        }

        else
        {
          return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,2ul,1u,(TwiddleOrder)1>>;
        }
      }

      else
      {
        if (v7 != 2)
        {
          return v2;
        }

        if (v1 == 1)
        {
          return agxsTwiddleAddressZ<AGXSConverterPassThru<true,2ul,2u,(TwiddleOrder)1>>;
        }

        else
        {
          return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,2ul,2u,(TwiddleOrder)1>>;
        }
      }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::writeCompressedRegion2D<true>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = a2;
  v14 = *(a1 + 32);
  if (v14 == 260)
  {
    v15 = 252;
  }

  else
  {
    v15 = *(a1 + 32);
  }

  v16 = *(a1 + 396);
  if (v16 == 3)
  {
    if (*(a1 + 584))
    {
      if (*(a1 + 168))
      {
        CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
        IOSurfaceGetCompressedTileHeightOfPlane();
        v18 = CompressedTileWidthOfPlane;
        v12 = a2;
        if (v18 == 32)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v30 = *(a1 + 208);
        v664 = 0;
        memset(v663, 0, sizeof(v663));
        InterchangeTiledMemory::getPlaneInfo(v663, 0, v14, *(v30 + 49));
        if (LOBYTE(v663[0]) == 32)
        {
LABEL_8:
          if (v14 <= 24)
          {
            if (v14 <= 13)
            {
              if (v14 > 10)
              {
                if (v14 == 11)
                {
                  CompressionCodecConfig = getCompressionCodecConfig(*(a1 + 56));
                  if (CompressionCodecConfig > 1)
                  {
LABEL_157:
                    if (CompressionCodecConfig == 2)
                    {
                      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                    }

                    else if (CompressionCodecConfig == 3)
                    {
                      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                    }

                    else
                    {
                      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                    }

                    return;
                  }

                  if (!CompressionCodecConfig)
                  {
LABEL_169:
                    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                    return;
                  }

LABEL_246:
                  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                  return;
                }

LABEL_156:
                CompressionCodecConfig = getCompressionCodecConfig(*(a1 + 56));
                if (CompressionCodecConfig > 1)
                {
                  goto LABEL_157;
                }

                if (!CompressionCodecConfig)
                {
                  goto LABEL_169;
                }

                goto LABEL_246;
              }

              if (v14 == 1 || v14 == 10)
              {
                goto LABEL_156;
              }

              return;
            }

            if (v14 <= 21)
            {
              if (v14 == 14)
              {
                goto LABEL_156;
              }

              if (v14 != 20)
              {
                return;
              }
            }

LABEL_152:
            v68 = getCompressionCodecConfig(*(a1 + 56));
            if (v68 <= 1)
            {
              if (v68)
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              else
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            else if (v68 == 2)
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (v68 == 3)
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            return;
          }

          if (v14 > 605)
          {
            if (v14 <= 642)
            {
              if (v14 != 606 && v14 != 642)
              {
                return;
              }
            }

            else if (v14 != 643)
            {
              if (v14 != 646 && v14 != 647)
              {
                return;
              }

LABEL_86:
              v43 = getCompressionCodecConfig(*(a1 + 56));
              if (v43 <= 1)
              {
                if (v43)
                {
                  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                }

                else
                {
                  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
                }
              }

              else if (v43 == 2)
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              else if (v43 == 3)
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              else
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              return;
            }
          }

          else if (v14 <= 576)
          {
            if (v14 == 25)
            {
              goto LABEL_152;
            }

            if (v14 != 576)
            {
              return;
            }
          }

          else if (v14 != 577)
          {
            if (v14 != 603 && v14 != 604)
            {
              return;
            }

            goto LABEL_86;
          }

          v70 = getCompressionCodecConfig(*(a1 + 56));
          if (v70 <= 1)
          {
            if (v70)
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v70 == 2)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (v70 == 3)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        }
      }
    }

    switch(v14)
    {
      case 1:
      case 10:
      case 11:
      case 13:
        v64 = getCompressionCodecConfig(*(a1 + 56));
        if (v64 <= 1)
        {
          if (v64)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v64 == 2)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (v64 == 3)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 12:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 21:
      case 26:
      case 27:
      case 28:
      case 29:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 61:
      case 66:
      case 67:
      case 68:
      case 69:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 92:
      case 93:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 111:
        return;
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
        v31 = getCompressionCodecConfig(*(a1 + 56));
        if (v31 <= 1)
        {
          if (v31)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v31 == 2)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (v31 == 3)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        v62 = getCompressionCodecConfig(*(a1 + 56));
        if (v62 <= 1)
        {
          if (v62)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v62 == 2)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (v62 == 3)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 60:
      case 62:
      case 64:
      case 65:
        v65 = getCompressionCodecConfig(*(a1 + 56));
        if (v65 > 1)
        {
          goto LABEL_252;
        }

        if (v65)
        {
          goto LABEL_415;
        }

        goto LABEL_134;
      case 63:
        v65 = getCompressionCodecConfig(*(a1 + 56));
        if (v65 <= 1)
        {
          if (v65)
          {
LABEL_415:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
LABEL_134:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else
        {
LABEL_252:
          if (v65 == 2)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (v65 == 3)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        return;
      case 70:
      case 71:
      case 80:
      case 81:
        v63 = getCompressionCodecConfig(*(a1 + 56));
        if (v63 <= 1)
        {
          if (v63)
          {
            goto LABEL_241;
          }

          goto LABEL_210;
        }

        if (v63 == 2)
        {
          goto LABEL_237;
        }

        if (v63 != 3)
        {
          goto LABEL_141;
        }

        goto LABEL_127;
      case 72:
      case 73:
      case 74:
        v67 = getCompressionCodecConfig(*(a1 + 56));
        if (v67 <= 1)
        {
          if (v67)
          {
LABEL_241:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
LABEL_210:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v67 == 2)
        {
LABEL_237:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (v67 == 3)
        {
LABEL_127:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else
        {
LABEL_141:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        break;
      case 90:
      case 91:
      case 94:
LABEL_76:
        v42 = getCompressionCodecConfig(*(a1 + 56));
        if (v42 <= 1)
        {
          if (v42)
          {
LABEL_293:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
LABEL_143:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v42 == 2)
        {
LABEL_208:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (v42 == 3)
        {
LABEL_79:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else
        {
LABEL_199:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 110:
      case 112:
      case 113:
      case 114:
        v66 = getCompressionCodecConfig(*(a1 + 56));
        if (v66 > 1)
        {
          goto LABEL_256;
        }

        if (!v66)
        {
          goto LABEL_137;
        }

        goto LABEL_417;
      case 115:
        v66 = getCompressionCodecConfig(*(a1 + 56));
        if (v66 <= 1)
        {
          if (v66)
          {
LABEL_417:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
LABEL_137:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else
        {
LABEL_256:
          if (v66 == 2)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (v66 == 3)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        return;
      default:
        switch(v14)
        {
          case 552:
          case 553:
            v71 = getCompressionCodecConfig(*(a1 + 56));
            if (v71 <= 1)
            {
              if (v71)
              {
                goto LABEL_283;
              }

              goto LABEL_201;
            }

            if (v71 == 2)
            {
              goto LABEL_277;
            }

            if (v71 != 3)
            {
              goto LABEL_282;
            }

            goto LABEL_50;
          case 554:
          case 555:
          case 586:
          case 587:
            goto LABEL_76;
          case 578:
          case 579:
            v73 = getCompressionCodecConfig(*(a1 + 56));
            if (v73 <= 1)
            {
              if (v73)
              {
                goto LABEL_429;
              }

              goto LABEL_295;
            }

            if (v73 == 2)
            {
              goto LABEL_427;
            }

            if (v73 != 3)
            {
              goto LABEL_428;
            }

            goto LABEL_205;
          case 605:
            v75 = getCompressionCodecConfig(*(a1 + 56));
            if (v75 <= 1)
            {
              if (v75)
              {
                goto LABEL_652;
              }

              goto LABEL_421;
            }

            if (v75 == 2)
            {
              goto LABEL_649;
            }

            if (v75 != 3)
            {
              goto LABEL_651;
            }

            goto LABEL_276;
          case 628:
          case 629:
            v72 = getCompressionCodecConfig(*(a1 + 56));
            if (v72 <= 1)
            {
              if (!v72)
              {
                goto LABEL_143;
              }

              goto LABEL_293;
            }

            if (v72 == 2)
            {
              goto LABEL_208;
            }

            if (v72 == 3)
            {
              goto LABEL_79;
            }

            break;
          case 637:
          case 638:
          case 639:
          case 640:
          case 641:
            v32 = getCompressionCodecConfig(*(a1 + 56));
            if (v32 <= 1)
            {
              if (v32)
              {
LABEL_283:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              else
              {
LABEL_201:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            else if (v32 == 2)
            {
LABEL_277:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (v32 == 3)
            {
LABEL_50:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
LABEL_282:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            return;
          case 644:
            v74 = getCompressionCodecConfig(*(a1 + 56));
            if (v74 <= 1)
            {
              if (v74)
              {
LABEL_429:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              else
              {
LABEL_295:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            else if (v74 == 2)
            {
LABEL_427:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (v74 == 3)
            {
LABEL_205:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
LABEL_428:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            return;
          case 648:
            v76 = getCompressionCodecConfig(*(a1 + 56));
            if (v76 <= 1)
            {
              if (v76)
              {
LABEL_652:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }

              else
              {
LABEL_421:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            else if (v76 == 2)
            {
LABEL_649:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (v76 == 3)
            {
LABEL_276:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
LABEL_651:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            return;
          default:
            return;
        }

        goto LABEL_199;
    }

    return;
  }

  v19 = *(a1 + 57);
  v20 = *(a1 + 112);
  if (v19 == 3)
  {
    if (v20 > 3)
    {
      if (v20 == 4)
      {
        switch(v14)
        {
          case 1:
            if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
            {
              goto LABEL_1112;
            }

            break;
          case 10:
            if (v16 != 1)
            {
              goto LABEL_1111;
            }

            break;
          case 11:
            if (v16 != 1)
            {
              goto LABEL_1111;
            }

            break;
          case 12:
            if (v16 != 1)
            {
              goto LABEL_1111;
            }

            break;
          case 13:
            if (v16 != 1)
            {
              goto LABEL_1111;
            }

            break;
          case 14:
            if (v16 != 1)
            {
LABEL_1111:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {
LABEL_1112:

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 20:
            if (v16 != 1)
            {
              goto LABEL_1127;
            }

            break;
          case 22:
            if (v16 != 1)
            {
              goto LABEL_1127;
            }

            break;
          case 23:
            if (v16 != 1)
            {
              goto LABEL_1127;
            }

            break;
          case 24:
            if (v16 != 1)
            {
              goto LABEL_1127;
            }

            break;
          case 25:
            if (v16 != 1)
            {
LABEL_1127:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 30:
            if (v16 != 1)
            {
              goto LABEL_1143;
            }

            break;
          case 31:
            if (v16 != 1)
            {
              goto LABEL_1143;
            }

            break;
          case 32:
            if (v16 != 1)
            {
              goto LABEL_1143;
            }

            break;
          case 33:
            if (v16 != 1)
            {
              goto LABEL_1143;
            }

            break;
          case 34:
            if (v16 != 1)
            {
LABEL_1143:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 53:
            if (v16 != 1)
            {
              goto LABEL_1176;
            }

            break;
          case 54:
            if (v16 != 1)
            {
              goto LABEL_1176;
            }

            break;
          case 55:
            if (v16 != 1)
            {
LABEL_1176:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 60:
            if (v16 != 1)
            {
              goto LABEL_1157;
            }

            break;
          case 62:
            if (v16 != 1)
            {
              goto LABEL_1157;
            }

            break;
          case 63:
            if (v16 != 1)
            {
              goto LABEL_1157;
            }

            break;
          case 64:
            if (v16 != 1)
            {
              goto LABEL_1157;
            }

            break;
          case 65:
            if (v16 != 1)
            {
LABEL_1157:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 70:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 71:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 72:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 73:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 74:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 80:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 81:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 84:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 85:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 90:
            if (v16 != 1)
            {
              goto LABEL_1240;
            }

            break;
          case 91:
            if (v16 != 1)
            {
              goto LABEL_1240;
            }

            break;
          case 94:
            if (v16 != 1)
            {
              goto LABEL_1240;
            }

            break;
          case 103:
            if (v16 != 1)
            {
              goto LABEL_1093;
            }

            break;
          case 104:
            if (v16 != 1)
            {
              goto LABEL_1093;
            }

            break;
          case 105:
            if (v16 != 1)
            {
LABEL_1093:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 110:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 112:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 113:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 114:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 115:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 123:
            if (v16 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 124:
            if (v16 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 125:
            if (v16 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 300:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 301:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 302:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 303:
            if (v16 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 304:
            if (v16 != 1)
            {
LABEL_1230:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 313:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 314:
            if (v16 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 315:
            if (v16 != 1)
            {
LABEL_1220:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 323:
            if (v16 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 324:
            if (v16 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 325:
            if (v16 != 1)
            {
LABEL_1186:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 554:
            if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
            {
              goto LABEL_1241;
            }

            break;
          case 555:
            if (v16 != 1)
            {
LABEL_1240:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {
LABEL_1241:

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          default:
            return;
        }
      }

      else if (v20 == 8)
      {
        switch(v14)
        {
          case 1:
            if (v16 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 10:
            if (v16 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 11:
            if (v16 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 12:
            if (v16 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 13:
            if (v16 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 14:
            if (v16 != 1)
            {
LABEL_1104:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 20:
            if (v16 != 1)
            {
              goto LABEL_1118;
            }

            break;
          case 22:
            if (v16 != 1)
            {
              goto LABEL_1118;
            }

            break;
          case 23:
            if (v16 != 1)
            {
              goto LABEL_1118;
            }

            break;
          case 24:
            if (v16 != 1)
            {
              goto LABEL_1118;
            }

            break;
          case 25:
            if (v16 != 1)
            {
LABEL_1118:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 30:
            if (v16 != 1)
            {
              goto LABEL_1138;
            }

            break;
          case 31:
            if (v16 != 1)
            {
              goto LABEL_1138;
            }

            break;
          case 32:
            if (v16 != 1)
            {
              goto LABEL_1138;
            }

            break;
          case 33:
            if (v16 != 1)
            {
              goto LABEL_1138;
            }

            break;
          case 34:
            if (v16 != 1)
            {
LABEL_1138:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 53:
            if (v16 != 1)
            {
              goto LABEL_1171;
            }

            break;
          case 54:
            if (v16 != 1)
            {
              goto LABEL_1171;
            }

            break;
          case 55:
            if (v16 != 1)
            {
LABEL_1171:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 60:
            if (v16 != 1)
            {
              goto LABEL_1150;
            }

            break;
          case 62:
            if (v16 != 1)
            {
              goto LABEL_1150;
            }

            break;
          case 63:
            if (v16 != 1)
            {
              goto LABEL_1150;
            }

            break;
          case 64:
            if (v16 != 1)
            {
              goto LABEL_1150;
            }

            break;
          case 65:
            if (v16 != 1)
            {
LABEL_1150:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 70:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 71:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 72:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 73:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 74:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 80:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 81:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 84:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 85:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 90:
            if (v16 != 1)
            {
              goto LABEL_1235;
            }

            break;
          case 91:
            if (v16 != 1)
            {
              goto LABEL_1235;
            }

            break;
          case 94:
            if (v16 != 1)
            {
              goto LABEL_1235;
            }

            break;
          case 103:
            if (v16 != 1)
            {
              goto LABEL_1082;
            }

            break;
          case 104:
            if (v16 != 1)
            {
              goto LABEL_1082;
            }

            break;
          case 105:
            if (v16 != 1)
            {
LABEL_1082:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 110:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 112:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 113:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 114:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 115:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 123:
            if (v16 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 124:
            if (v16 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 125:
            if (v16 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 300:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 301:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 302:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 303:
            if (v16 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 304:
            if (v16 != 1)
            {
LABEL_1225:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 313:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 314:
            if (v16 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 315:
            if (v16 != 1)
            {
LABEL_1215:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 323:
            if (v16 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 324:
            if (v16 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 325:
            if (v16 != 1)
            {
LABEL_1181:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          case 554:
            if (v16 != 1)
            {
              goto LABEL_1235;
            }

            break;
          case 555:
            if (v16 != 1)
            {
LABEL_1235:
              if (getCompressionCodecConfig(*(a1 + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }

            break;
          default:
            return;
        }
      }
    }

    else if (v20 == 1)
    {
      switch(v14)
      {
        case 1:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 53:
        case 54:
        case 55:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 80:
        case 81:
        case 84:
        case 85:
        case 300:
        case 301:
        case 302:
        case 303:
        case 304:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 90:
        case 91:
        case 94:
        case 554:
        case 555:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 103:
        case 104:
        case 105:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
        case 313:
        case 314:
        case 315:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 123:
        case 124:
        case 125:
        case 323:
        case 324:
        case 325:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        default:
          return;
      }
    }

    else if (v20 == 2)
    {
      switch(v14)
      {
        case 1:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 53:
        case 54:
        case 55:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 80:
        case 81:
        case 84:
        case 85:
        case 300:
        case 301:
        case 302:
        case 303:
        case 304:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 90:
        case 91:
        case 94:
        case 554:
        case 555:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 103:
        case 104:
        case 105:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
        case 313:
        case 314:
        case 315:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        case 123:
        case 124:
        case 125:
        case 323:
        case 324:
        case 325:
          if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          break;
        default:
          return;
      }
    }
  }

  else if (v19 == 1)
  {
    if (v20 > 3)
    {
      if (v20 == 4)
      {
        if (v14 <= 637)
        {
          if (v14 != 552 && v14 != 553 && v14 != 637)
          {
            return;
          }
        }

        else if (v14 > 640 && v14 != 641)
        {
          return;
        }

        if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 1)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }
      }

      else
      {
        if (v20 != 8)
        {
          return;
        }

        if (v14 <= 637)
        {
          if (v14 != 552 && v14 != 553 && v14 != 637)
          {
            return;
          }
        }

        else if (v14 > 640 && v14 != 641)
        {
          return;
        }

        if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 1)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }
      }
    }

    else if (v20 == 1)
    {
      if (v14 <= 637)
      {
        if (v14 != 552 && v14 != 553 && v14 != 637)
        {
          return;
        }
      }

      else if (v14 > 640 && v14 != 641)
      {
        return;
      }

      if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 1)
      {

        AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
      }
    }

    else
    {
      if (v20 != 2)
      {
        return;
      }

      if (v14 <= 637)
      {
        if (v14 != 552 && v14 != 553 && v14 != 637)
        {
          return;
        }
      }

      else if (v14 > 640 && v14 != 641)
      {
        return;
      }

      if (v16 != 1 && getCompressionCodecConfig(*(a1 + 56)) == 1)
      {

        AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
      }
    }
  }

  else if (v20 > 3)
  {
    if (v20 == 4)
    {
      switch(v15)
      {
        case 1:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          v126 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v126 == 4)
            {
              v450 = a1;
              v451 = v12;
              v452 = a3;
              v453 = a4;
              v454 = a5;
              v455 = a6;
              v456 = a7;
              v457 = a8;

              goto LABEL_1466;
            }

            if (!v126)
            {
              v127 = a1;
              v128 = v12;
              v129 = a3;
              v130 = a4;
              v131 = a5;
              v132 = a6;
              v133 = a7;
              v134 = a8;

              goto LABEL_441;
            }
          }

          else
          {
            if (v126 == 4)
            {
              goto LABEL_1749;
            }

            if (!v126)
            {
              goto LABEL_1746;
            }
          }

          return;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
          v192 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_883;
          }

          if (v192 == 4)
          {
            v536 = a1;
            v537 = v12;
            v538 = a3;
            v539 = a4;
            v540 = a5;
            v541 = a6;
            v542 = a7;
            v543 = a8;

            goto LABEL_1786;
          }

          if (!v192)
          {
            v193 = a1;
            v194 = v12;
            v195 = a3;
            v196 = a4;
            v197 = a5;
            v198 = a6;
            v199 = a7;
            v200 = a8;

            goto LABEL_501;
          }

          return;
        case 26:
        case 250:
          v192 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_883:
            if (v192 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v192)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v192 == 4)
          {
            v536 = a1;
            v537 = v12;
            v538 = a3;
            v539 = a4;
            v540 = a5;
            v541 = a6;
            v542 = a7;
            v543 = a8;

LABEL_1786:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v536, v537, v538, v539, v540, v541, v542, v543, a9, a10, a11, a12);
          }

          else if (!v192)
          {
            v193 = a1;
            v194 = v12;
            v195 = a3;
            v196 = a4;
            v197 = a5;
            v198 = a6;
            v199 = a7;
            v200 = a8;

LABEL_501:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v193, v194, v195, v196, v197, v198, v199, v200, a9, a10, a11, a12);
          }

          return;
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
          v227 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v227 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v227)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v227 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v227)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 40:
          v501 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v501 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v501)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v501 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v501)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 41:
          v437 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v437 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v437)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v437 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v437)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 42:
          v441 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v441 != 4)
            {
              goto LABEL_1433;
            }

            goto LABEL_1504;
          }

          if (v441 == 4)
          {
            goto LABEL_2066;
          }

          if (!v441)
          {
            v608 = a1;
            v609 = v12;
            v610 = a3;
            v611 = a4;
            v612 = a5;
            v613 = a6;
            v614 = a7;
            v615 = a8;

            goto LABEL_1906;
          }

          return;
        case 43:
          v509 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v509 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v509)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v509 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v509)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 44:
          v441 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v441 == 4)
            {
LABEL_1504:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
LABEL_1433:
              if (!v441)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else if (v441 == 4)
          {
LABEL_2066:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v441)
          {
            v608 = a1;
            v609 = v12;
            v610 = a3;
            v611 = a4;
            v612 = a5;
            v613 = a6;
            v614 = a7;
            v615 = a8;

LABEL_1906:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v608, v609, v610, v611, v612, v613, v614, v615, a9, a10, a11, a12);
          }

          return;
        case 53:
        case 54:
        case 55:
          v281 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v281 != 4)
            {
              goto LABEL_1646;
            }

            v282 = a1;
            v283 = v12;
            v284 = a3;
            v285 = a4;
            v286 = a5;
            v287 = a6;
            v288 = a7;
            v289 = a8;

            goto LABEL_680;
          }

          if (v281 == 4)
          {
            v640 = a1;
            v641 = v12;
            v642 = a3;
            v643 = a4;
            v644 = a5;
            v645 = a6;
            v646 = a7;
            v647 = a8;

            goto LABEL_1921;
          }

          if (!v281)
          {
            goto LABEL_2030;
          }

          return;
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
          v204 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v204 != 4)
            {
              goto LABEL_522;
            }

            v490 = a1;
            v491 = v12;
            v492 = a3;
            v493 = a4;
            v494 = a5;
            v495 = a6;
            v496 = a7;
            v497 = a8;

            goto LABEL_1536;
          }

          if (v204 == 4)
          {
            v576 = a1;
            v577 = v12;
            v578 = a3;
            v579 = a4;
            v580 = a5;
            v581 = a6;
            v582 = a7;
            v583 = a8;

            goto LABEL_1813;
          }

          if (!v204)
          {
            goto LABEL_743;
          }

          return;
        case 66:
          v204 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v204 == 4)
            {
              v490 = a1;
              v491 = v12;
              v492 = a3;
              v493 = a4;
              v494 = a5;
              v495 = a6;
              v496 = a7;
              v497 = a8;

LABEL_1536:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v490, v491, v492, v493, v494, v495, v496, v497, a9, a10, a11, a12);
            }

            else
            {
LABEL_522:
              if (!v204)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else if (v204 == 4)
          {
            v576 = a1;
            v577 = v12;
            v578 = a3;
            v579 = a4;
            v580 = a5;
            v581 = a6;
            v582 = a7;
            v583 = a8;

LABEL_1813:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v576, v577, v578, v579, v580, v581, v582, v583, a9, a10, a11, a12);
          }

          else if (!v204)
          {
LABEL_743:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 300:
        case 301:
        case 302:
        case 303:
        case 304:
          v53 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v53 == 4)
            {
              goto LABEL_834;
            }

            if (!v53)
            {
              v54 = a1;
              v55 = v12;
              v56 = a3;
              v57 = a4;
              v58 = a5;
              v59 = a6;
              v60 = a7;
              v61 = a8;

              goto LABEL_119;
            }
          }

          else
          {
            if (v53 == 4)
            {
              v316 = a1;
              v317 = v12;
              v318 = a3;
              v319 = a4;
              v320 = a5;
              v321 = a6;
              v322 = a7;
              v323 = a8;

              goto LABEL_905;
            }

            if (!v53)
            {
              goto LABEL_573;
            }
          }

          return;
        case 80:
        case 81:
          v295 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_829;
          }

          if (v295 == 4)
          {
            goto LABEL_1847;
          }

          if (!v295)
          {
LABEL_573:
            v236 = a1;
            v237 = v12;
            v238 = a3;
            v239 = a4;
            v240 = a5;
            v241 = a6;
            v242 = a7;
            v243 = a8;

            goto LABEL_575;
          }

          return;
        case 84:
        case 85:
          v295 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_829:
            if (v295 == 4)
            {
LABEL_834:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v295)
            {
              v54 = a1;
              v55 = v12;
              v56 = a3;
              v57 = a4;
              v58 = a5;
              v59 = a6;
              v60 = a7;
              v61 = a8;

LABEL_119:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
            }
          }

          else if (v295 == 4)
          {
LABEL_1847:
            v316 = a1;
            v317 = v12;
            v318 = a3;
            v319 = a4;
            v320 = a5;
            v321 = a6;
            v322 = a7;
            v323 = a8;

LABEL_905:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v316, v317, v318, v319, v320, v321, v322, v323, a9, a10, a11, a12);
          }

          else if (!v295)
          {
            v236 = a1;
            v237 = v12;
            v238 = a3;
            v239 = a4;
            v240 = a5;
            v241 = a6;
            v242 = a7;
            v243 = a8;

LABEL_575:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v236, v237, v238, v239, v240, v241, v242, v243, a9, a10, a11, a12);
          }

          return;
        case 90:
        case 91:
          v156 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_850;
          }

          if (v156 == 4)
          {
            goto LABEL_1458;
          }

          if (!v156)
          {
            goto LABEL_1455;
          }

          return;
        case 92:
          v505 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v505 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v505)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v505 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v505)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 93:
          v423 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v423 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v423)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v423 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v423)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 94:
        case 586:
        case 587:
        case 628:
        case 629:
          v156 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_850;
          }

          if (v156 == 4)
          {
            goto LABEL_1458;
          }

          if (!v156)
          {
            v157 = a1;
            v158 = v12;
            v159 = a3;
            v160 = a4;
            v161 = a5;
            v162 = a6;
            v163 = a7;
            v164 = a8;

            goto LABEL_477;
          }

          return;
        case 103:
        case 104:
          v297 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 != 1)
          {
            goto LABEL_1684;
          }

          if (v297 != 4)
          {
            goto LABEL_1680;
          }

          v298 = a1;
          v299 = v12;
          v300 = a3;
          v301 = a4;
          v302 = a5;
          v303 = a6;
          v304 = a7;
          v305 = a8;

          goto LABEL_863;
        case 105:
          v297 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v297 == 4)
            {
              v298 = a1;
              v299 = v12;
              v300 = a3;
              v301 = a4;
              v302 = a5;
              v303 = a6;
              v304 = a7;
              v305 = a8;

LABEL_863:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v298, v299, v300, v301, v302, v303, v304, v305, a9, a10, a11, a12);
            }

            else
            {
LABEL_1680:
              if (!v297)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else
          {
LABEL_1684:
            if (v297 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v297)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          return;
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
        case 313:
        case 314:
        case 315:
          v86 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v86 == 4)
            {
              v356 = a1;
              v357 = v12;
              v358 = a3;
              v359 = a4;
              v360 = a5;
              v361 = a6;
              v362 = a7;
              v363 = a8;

              goto LABEL_1258;
            }

            if (v86)
            {
              return;
            }

            v87 = a1;
            v88 = v12;
            v89 = a3;
            v90 = a4;
            v91 = a5;
            v92 = a6;
            v93 = a7;
            v94 = a8;

            goto LABEL_337;
          }

          if (v86 == 4)
          {
            v372 = a1;
            v373 = v12;
            v374 = a3;
            v375 = a4;
            v376 = a5;
            v377 = a6;
            v378 = a7;
            v379 = a8;

            goto LABEL_1264;
          }

          if (v86)
          {
            return;
          }

          goto LABEL_615;
        case 116:
          v433 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 != 1)
          {
            goto LABEL_1775;
          }

          if (v433 != 4)
          {
            goto LABEL_1361;
          }

          goto LABEL_1772;
        case 123:
        case 124:
        case 125:
        case 323:
        case 324:
        case 325:
          v137 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v137 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v137)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v137 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v137)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 252:
          v281 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v281 == 4)
            {
              v282 = a1;
              v283 = v12;
              v284 = a3;
              v285 = a4;
              v286 = a5;
              v287 = a6;
              v288 = a7;
              v289 = a8;

LABEL_680:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v282, v283, v284, v285, v286, v287, v288, v289, a9, a10, a11, a12);
            }

            else
            {
LABEL_1646:
              if (!v281)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else if (v281 == 4)
          {
            v640 = a1;
            v641 = v12;
            v642 = a3;
            v643 = a4;
            v644 = a5;
            v645 = a6;
            v646 = a7;
            v647 = a8;

LABEL_1921:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v640, v641, v642, v643, v644, v645, v646, v647, a9, a10, a11, a12);
          }

          else if (!v281)
          {
LABEL_2030:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 253:
          v511 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 != 1)
          {
            goto LABEL_1744;
          }

          if (v511 == 4)
          {
            goto LABEL_1741;
          }

          goto LABEL_1697;
        case 261:
          v511 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v511 == 4)
            {
LABEL_1741:
              v450 = a1;
              v451 = v12;
              v452 = a3;
              v453 = a4;
              v454 = a5;
              v455 = a6;
              v456 = a7;
              v457 = a8;

LABEL_1466:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v450, v451, v452, v453, v454, v455, v456, v457, a9, a10, a11, a12);
            }

            else
            {
LABEL_1697:
              if (!v511)
              {
                v127 = a1;
                v128 = v12;
                v129 = a3;
                v130 = a4;
                v131 = a5;
                v132 = a6;
                v133 = a7;
                v134 = a8;

LABEL_441:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, a12);
              }
            }
          }

          else
          {
LABEL_1744:
            if (v511 == 4)
            {
LABEL_1749:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v511)
            {
LABEL_1746:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          return;
        case 552:
        case 553:
        case 637:
        case 638:
        case 639:
        case 640:
        case 641:
          v98 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v98 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v98)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v98 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v98)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 554:
        case 555:
          v156 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_850:
            if (v156 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v156)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v156 == 4)
          {
LABEL_1458:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v156)
          {
LABEL_1455:
            v157 = a1;
            v158 = v12;
            v159 = a3;
            v160 = a4;
            v161 = a5;
            v162 = a6;
            v163 = a7;
            v164 = a8;

LABEL_477:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v157, v158, v159, v160, v161, v162, v163, v164, a9, a10, a11, a12);
          }

          return;
        case 556:
          v433 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v433 == 4)
            {
LABEL_1772:
              v356 = a1;
              v357 = v12;
              v358 = a3;
              v359 = a4;
              v360 = a5;
              v361 = a6;
              v362 = a7;
              v363 = a8;

LABEL_1258:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v356, v357, v358, v359, v360, v361, v362, v363, a9, a10, a11, a12);
            }

            else
            {
LABEL_1361:
              if (!v433)
              {
                v87 = a1;
                v88 = v12;
                v89 = a3;
                v90 = a4;
                v91 = a5;
                v92 = a6;
                v93 = a7;
                v94 = a8;

LABEL_337:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12);
              }
            }
          }

          else
          {
LABEL_1775:
            if (v433 == 4)
            {
              v372 = a1;
              v373 = v12;
              v374 = a3;
              v375 = a4;
              v376 = a5;
              v377 = a6;
              v378 = a7;
              v379 = a8;

LABEL_1264:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v372, v373, v374, v375, v376, v377, v378, v379, a9, a10, a11, a12);
            }

            else if (!v433)
            {
LABEL_615:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          break;
        default:
          return;
      }
    }

    else if (v20 == 8)
    {
      switch(v15)
      {
        case 1:
          v205 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v205 != 4)
            {
              goto LABEL_528;
            }

            v404 = a1;
            v405 = v12;
            v406 = a3;
            v407 = a4;
            v408 = a5;
            v409 = a6;
            v410 = a7;
            v411 = a8;

            goto LABEL_1312;
          }

          if (v205 == 4)
          {
            v584 = a1;
            v585 = v12;
            v586 = a3;
            v587 = a4;
            v588 = a5;
            v589 = a6;
            v590 = a7;
            v591 = a8;

            goto LABEL_1816;
          }

          if (!v205)
          {
            goto LABEL_1932;
          }

          return;
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          v205 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v205 == 4)
            {
              goto LABEL_1310;
            }

LABEL_528:
            if (!v205)
            {
              v206 = a1;
              v207 = v12;
              v208 = a3;
              v209 = a4;
              v210 = a5;
              v211 = a6;
              v212 = a7;
              v213 = a8;

              goto LABEL_531;
            }
          }

          else
          {
            if (v205 == 4)
            {
              v584 = a1;
              v585 = v12;
              v586 = a3;
              v587 = a4;
              v588 = a5;
              v589 = a6;
              v590 = a7;
              v591 = a8;

              goto LABEL_1816;
            }

            if (!v205)
            {
              goto LABEL_1932;
            }
          }

          return;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
          v174 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_871;
          }

          if (v174 == 4)
          {
            v528 = a1;
            v529 = v12;
            v530 = a3;
            v531 = a4;
            v532 = a5;
            v533 = a6;
            v534 = a7;
            v535 = a8;

            goto LABEL_1783;
          }

          if (!v174)
          {
            v175 = a1;
            v176 = v12;
            v177 = a3;
            v178 = a4;
            v179 = a5;
            v180 = a6;
            v181 = a7;
            v182 = a8;

            goto LABEL_489;
          }

          return;
        case 26:
        case 250:
          v174 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_871:
            if (v174 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v174)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v174 == 4)
          {
            v528 = a1;
            v529 = v12;
            v530 = a3;
            v531 = a4;
            v532 = a5;
            v533 = a6;
            v534 = a7;
            v535 = a8;

LABEL_1783:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v528, v529, v530, v531, v532, v533, v534, v535, a9, a10, a11, a12);
          }

          else if (!v174)
          {
            v175 = a1;
            v176 = v12;
            v177 = a3;
            v178 = a4;
            v179 = a5;
            v180 = a6;
            v181 = a7;
            v182 = a8;

LABEL_489:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v175, v176, v177, v178, v179, v180, v181, v182, a9, a10, a11, a12);
          }

          return;
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
          v225 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v225 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v225)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v225 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v225)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 40:
          v499 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v499 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v499)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v499 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v499)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 41:
          v435 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v435 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v435)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v435 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v435)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 42:
          v439 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 != 1)
          {
            goto LABEL_1487;
          }

          if (v439 != 4)
          {
            goto LABEL_1421;
          }

          goto LABEL_1484;
        case 43:
          v507 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v507 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v507)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v507 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v507)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 44:
          v439 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v439 == 4)
            {
LABEL_1484:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else
            {
LABEL_1421:
              if (!v439)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else
          {
LABEL_1487:
            if (v439 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v439)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          return;
        case 53:
          v296 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_1468;
          }

          if (v296 == 4)
          {
            v648 = a1;
            v649 = v12;
            v650 = a3;
            v651 = a4;
            v652 = a5;
            v653 = a6;
            v654 = a7;
            v655 = a8;

            goto LABEL_2071;
          }

          if (!v296)
          {
            goto LABEL_2020;
          }

          return;
        case 54:
        case 55:
          v296 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_1468:
            if (v296 != 4)
            {
              goto LABEL_1634;
            }

            v458 = a1;
            v459 = v12;
            v460 = a3;
            v461 = a4;
            v462 = a5;
            v463 = a6;
            v464 = a7;
            v465 = a8;

            goto LABEL_1471;
          }

          if (v296 == 4)
          {
            v648 = a1;
            v649 = v12;
            v650 = a3;
            v651 = a4;
            v652 = a5;
            v653 = a6;
            v654 = a7;
            v655 = a8;

            goto LABEL_2071;
          }

          if (!v296)
          {
            goto LABEL_2020;
          }

          return;
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
          v202 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v202 != 4)
            {
              goto LABEL_510;
            }

            v474 = a1;
            v475 = v12;
            v476 = a3;
            v477 = a4;
            v478 = a5;
            v479 = a6;
            v480 = a7;
            v481 = a8;

            goto LABEL_1526;
          }

          if (v202 == 4)
          {
            v560 = a1;
            v561 = v12;
            v562 = a3;
            v563 = a4;
            v564 = a5;
            v565 = a6;
            v566 = a7;
            v567 = a8;

            goto LABEL_1801;
          }

          if (v202)
          {
            return;
          }

          goto LABEL_733;
        case 66:
          v202 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v202 == 4)
            {
              v474 = a1;
              v475 = v12;
              v476 = a3;
              v477 = a4;
              v478 = a5;
              v479 = a6;
              v480 = a7;
              v481 = a8;

LABEL_1526:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v474, v475, v476, v477, v478, v479, v480, v481, a9, a10, a11, a12);
            }

            else
            {
LABEL_510:
              if (!v202)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else if (v202 == 4)
          {
            v560 = a1;
            v561 = v12;
            v562 = a3;
            v563 = a4;
            v564 = a5;
            v565 = a6;
            v566 = a7;
            v567 = a8;

LABEL_1801:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v560, v561, v562, v563, v564, v565, v566, v567, a9, a10, a11, a12);
          }

          else if (!v202)
          {
LABEL_733:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 302:
        case 303:
        case 304:
          v33 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_65;
          }

          if (v33 != 4)
          {
            goto LABEL_619;
          }

          v380 = a1;
          v381 = v12;
          v382 = a3;
          v383 = a4;
          v384 = a5;
          v385 = a6;
          v386 = a7;
          v387 = a8;

          goto LABEL_1267;
        case 80:
        case 81:
          v253 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_811;
          }

          if (v253 == 4)
          {
            goto LABEL_1717;
          }

          if (!v253)
          {
            goto LABEL_1399;
          }

          return;
        case 84:
        case 85:
        case 301:
          v253 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_811:
            if (v253 == 4)
            {
              goto LABEL_816;
            }

            if (!v253)
            {
              v34 = a1;
              v35 = v12;
              v36 = a3;
              v37 = a4;
              v38 = a5;
              v39 = a6;
              v40 = a7;
              v41 = a8;

              goto LABEL_69;
            }
          }

          else
          {
            if (v253 == 4)
            {
              goto LABEL_1717;
            }

            if (!v253)
            {
              goto LABEL_1399;
            }
          }

          return;
        case 90:
        case 91:
          v138 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_838;
          }

          if (v138 == 4)
          {
            goto LABEL_1442;
          }

          if (!v138)
          {
            goto LABEL_1439;
          }

          return;
        case 92:
          v503 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v503 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v503)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v503 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v503)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 93:
          v421 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v421 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v421)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v421 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v421)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 94:
        case 586:
        case 587:
        case 628:
        case 629:
          v138 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            goto LABEL_838;
          }

          if (v138 == 4)
          {
            goto LABEL_1442;
          }

          if (v138)
          {
            return;
          }

          v139 = a1;
          v140 = v12;
          v141 = a3;
          v142 = a4;
          v143 = a5;
          v144 = a6;
          v145 = a7;
          v146 = a8;

          goto LABEL_465;
        case 103:
        case 104:
        case 105:
          v291 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v291 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v291)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v291 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v291)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
        case 313:
        case 314:
        case 315:
          v77 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v77 == 4)
            {
              v340 = a1;
              v341 = v12;
              v342 = a3;
              v343 = a4;
              v344 = a5;
              v345 = a6;
              v346 = a7;
              v347 = a8;

              goto LABEL_1252;
            }

            if (v77)
            {
              return;
            }

            v78 = a1;
            v79 = v12;
            v80 = a3;
            v81 = a4;
            v82 = a5;
            v83 = a6;
            v84 = a7;
            v85 = a8;

            goto LABEL_331;
          }

          if (v77 == 4)
          {
            v348 = a1;
            v349 = v12;
            v350 = a3;
            v351 = a4;
            v352 = a5;
            v353 = a6;
            v354 = a7;
            v355 = a8;

            goto LABEL_1255;
          }

          if (v77)
          {
            return;
          }

          goto LABEL_610;
        case 116:
          v432 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 != 1)
          {
            goto LABEL_1757;
          }

          if (v432 != 4)
          {
            goto LABEL_1349;
          }

          goto LABEL_1754;
        case 123:
        case 124:
        case 125:
        case 323:
        case 324:
        case 325:
          v136 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v136 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v136)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v136 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v136)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 252:
          v296 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v296 == 4)
            {
              v458 = a1;
              v459 = v12;
              v460 = a3;
              v461 = a4;
              v462 = a5;
              v463 = a6;
              v464 = a7;
              v465 = a8;

LABEL_1471:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v458, v459, v460, v461, v462, v463, v464, v465, a9, a10, a11, a12);
            }

            else
            {
LABEL_1634:
              if (!v296)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
              }
            }
          }

          else if (v296 == 4)
          {
            v648 = a1;
            v649 = v12;
            v650 = a3;
            v651 = a4;
            v652 = a5;
            v653 = a6;
            v654 = a7;
            v655 = a8;

LABEL_2071:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v648, v649, v650, v651, v652, v653, v654, v655, a9, a10, a11, a12);
          }

          else if (!v296)
          {
LABEL_2020:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 253:
        case 261:
          v306 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v306 == 4)
            {
LABEL_1310:
              v404 = a1;
              v405 = v12;
              v406 = a3;
              v407 = a4;
              v408 = a5;
              v409 = a6;
              v410 = a7;
              v411 = a8;

LABEL_1312:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v404, v405, v406, v407, v408, v409, v410, v411, a9, a10, a11, a12);
            }

            else if (!v306)
            {
              v206 = a1;
              v207 = v12;
              v208 = a3;
              v209 = a4;
              v210 = a5;
              v211 = a6;
              v212 = a7;
              v213 = a8;

LABEL_531:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v206, v207, v208, v209, v210, v211, v212, v213, a9, a10, a11, a12);
            }
          }

          else if (v306 == 4)
          {
            v584 = a1;
            v585 = v12;
            v586 = a3;
            v587 = a4;
            v588 = a5;
            v589 = a6;
            v590 = a7;
            v591 = a8;

LABEL_1816:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v584, v585, v586, v587, v588, v589, v590, v591, a9, a10, a11, a12);
          }

          else if (!v306)
          {
LABEL_1932:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 300:
          v33 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_65:
            if (v33 == 4)
            {
LABEL_816:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v33)
            {
              v34 = a1;
              v35 = v12;
              v36 = a3;
              v37 = a4;
              v38 = a5;
              v39 = a6;
              v40 = a7;
              v41 = a8;

LABEL_69:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
            }
          }

          else if (v33 == 4)
          {
LABEL_1717:
            v380 = a1;
            v381 = v12;
            v382 = a3;
            v383 = a4;
            v384 = a5;
            v385 = a6;
            v386 = a7;
            v387 = a8;

LABEL_1267:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v380, v381, v382, v383, v384, v385, v386, v387, a9, a10, a11, a12);
          }

          else
          {
LABEL_619:
            if (!v33)
            {
LABEL_1399:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          return;
        case 552:
        case 553:
        case 637:
        case 638:
        case 639:
        case 640:
        case 641:
          v96 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v96 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v96)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v96 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v96)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          return;
        case 554:
        case 555:
          v138 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
LABEL_838:
            if (v138 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }

            else if (!v138)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          else if (v138 == 4)
          {
LABEL_1442:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v138)
          {
LABEL_1439:
            v139 = a1;
            v140 = v12;
            v141 = a3;
            v142 = a4;
            v143 = a5;
            v144 = a6;
            v145 = a7;
            v146 = a8;

LABEL_465:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v139, v140, v141, v142, v143, v144, v145, v146, a9, a10, a11, a12);
          }

          return;
        case 556:
          v432 = getCompressionCodecConfig(*(a1 + 56));
          if (v16 == 1)
          {
            if (v432 == 4)
            {
LABEL_1754:
              v340 = a1;
              v341 = v12;
              v342 = a3;
              v343 = a4;
              v344 = a5;
              v345 = a6;
              v346 = a7;
              v347 = a8;

LABEL_1252:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v340, v341, v342, v343, v344, v345, v346, v347, a9, a10, a11, a12);
            }

            else
            {
LABEL_1349:
              if (!v432)
              {
                v78 = a1;
                v79 = v12;
                v80 = a3;
                v81 = a4;
                v82 = a5;
                v83 = a6;
                v84 = a7;
                v85 = a8;

LABEL_331:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12);
              }
            }
          }

          else
          {
LABEL_1757:
            if (v432 == 4)
            {
              v348 = a1;
              v349 = v12;
              v350 = a3;
              v351 = a4;
              v352 = a5;
              v353 = a6;
              v354 = a7;
              v355 = a8;

LABEL_1255:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v348, v349, v350, v351, v352, v353, v354, v355, a9, a10, a11, a12);
            }

            else if (!v432)
            {
LABEL_610:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }

          break;
        default:
          return;
      }
    }
  }

  else if (v20 == 1)
  {
    switch(v15)
    {
      case 1:
        v214 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v214 != 4)
          {
            goto LABEL_534;
          }

          v412 = a1;
          v413 = v12;
          v414 = a3;
          v415 = a4;
          v416 = a5;
          v417 = a6;
          v418 = a7;
          v419 = a8;

          goto LABEL_1315;
        }

        if (v214 == 4)
        {
          v592 = a1;
          v593 = v12;
          v594 = a3;
          v595 = a4;
          v596 = a5;
          v597 = a6;
          v598 = a7;
          v599 = a8;

          goto LABEL_1819;
        }

        if (!v214)
        {
          goto LABEL_1937;
        }

        return;
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        v214 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v214 == 4)
          {
            goto LABEL_1313;
          }

LABEL_534:
          if (!v214)
          {
            v215 = a1;
            v216 = v12;
            v217 = a3;
            v218 = a4;
            v219 = a5;
            v220 = a6;
            v221 = a7;
            v222 = a8;

            goto LABEL_537;
          }
        }

        else
        {
          if (v214 == 4)
          {
            v592 = a1;
            v593 = v12;
            v594 = a3;
            v595 = a4;
            v596 = a5;
            v597 = a6;
            v598 = a7;
            v599 = a8;

            goto LABEL_1819;
          }

          if (!v214)
          {
            goto LABEL_1937;
          }
        }

        return;
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
        v183 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_877;
        }

        if (v183 == 4)
        {
          v544 = a1;
          v545 = v12;
          v546 = a3;
          v547 = a4;
          v548 = a5;
          v549 = a6;
          v550 = a7;
          v551 = a8;

          goto LABEL_1789;
        }

        if (!v183)
        {
          v184 = a1;
          v185 = v12;
          v186 = a3;
          v187 = a4;
          v188 = a5;
          v189 = a6;
          v190 = a7;
          v191 = a8;

          goto LABEL_495;
        }

        return;
      case 26:
      case 250:
        v183 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
LABEL_877:
          if (v183 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v183)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v183 == 4)
        {
          v544 = a1;
          v545 = v12;
          v546 = a3;
          v547 = a4;
          v548 = a5;
          v549 = a6;
          v550 = a7;
          v551 = a8;

LABEL_1789:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v544, v545, v546, v547, v548, v549, v550, v551, a9, a10, a11, a12);
        }

        else if (!v183)
        {
          v184 = a1;
          v185 = v12;
          v186 = a3;
          v187 = a4;
          v188 = a5;
          v189 = a6;
          v190 = a7;
          v191 = a8;

LABEL_495:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v184, v185, v186, v187, v188, v189, v190, v191, a9, a10, a11, a12);
        }

        return;
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        v226 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v226 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v226)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v226 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v226)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 40:
        v500 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v500 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v500)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v500 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v500)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 41:
        v436 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v436 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v436)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v436 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v436)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 42:
        v440 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          goto LABEL_1497;
        }

        if (v440 != 4)
        {
          goto LABEL_1427;
        }

        goto LABEL_1494;
      case 43:
        v508 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v508 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v508)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v508 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v508)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 44:
        v440 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v440 == 4)
          {
LABEL_1494:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
LABEL_1427:
            if (!v440)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else
        {
LABEL_1497:
          if (v440 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v440)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        return;
      case 53:
      case 54:
      case 55:
        v272 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v272 != 4)
          {
            goto LABEL_1640;
          }

          v273 = a1;
          v274 = v12;
          v275 = a3;
          v276 = a4;
          v277 = a5;
          v278 = a6;
          v279 = a7;
          v280 = a8;

          goto LABEL_675;
        }

        if (v272 == 4)
        {
          v632 = a1;
          v633 = v12;
          v634 = a3;
          v635 = a4;
          v636 = a5;
          v637 = a6;
          v638 = a7;
          v639 = a8;

          goto LABEL_1918;
        }

        if (!v272)
        {
          goto LABEL_2025;
        }

        return;
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
        v203 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v203 != 4)
          {
            goto LABEL_516;
          }

          v482 = a1;
          v483 = v12;
          v484 = a3;
          v485 = a4;
          v486 = a5;
          v487 = a6;
          v488 = a7;
          v489 = a8;

          goto LABEL_1531;
        }

        if (v203 == 4)
        {
          v568 = a1;
          v569 = v12;
          v570 = a3;
          v571 = a4;
          v572 = a5;
          v573 = a6;
          v574 = a7;
          v575 = a8;

          goto LABEL_1810;
        }

        if (v203)
        {
          return;
        }

        goto LABEL_738;
      case 66:
        v203 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v203 == 4)
          {
            v482 = a1;
            v483 = v12;
            v484 = a3;
            v485 = a4;
            v486 = a5;
            v487 = a6;
            v488 = a7;
            v489 = a8;

LABEL_1531:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v482, v483, v484, v485, v486, v487, v488, v489, a9, a10, a11, a12);
          }

          else
          {
LABEL_516:
            if (!v203)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else if (v203 == 4)
        {
          v568 = a1;
          v569 = v12;
          v570 = a3;
          v571 = a4;
          v572 = a5;
          v573 = a6;
          v574 = a7;
          v575 = a8;

LABEL_1810:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v568, v569, v570, v571, v572, v573, v574, v575, a9, a10, a11, a12);
        }

        else if (!v203)
        {
LABEL_738:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
        v223 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_820;
        }

        if (v223 == 4)
        {
          goto LABEL_1407;
        }

        if (v223)
        {
          return;
        }

        goto LABEL_1404;
      case 80:
      case 81:
        v223 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          if (v223 == 4)
          {
LABEL_1407:
            v388 = a1;
            v389 = v12;
            v390 = a3;
            v391 = a4;
            v392 = a5;
            v393 = a6;
            v394 = a7;
            v395 = a8;

            goto LABEL_1306;
          }

          if (v223)
          {
            return;
          }

          goto LABEL_1404;
        }

LABEL_820:
        if (v223 == 4)
        {
          goto LABEL_825;
        }

        if (!v223)
        {
          v45 = a1;
          v46 = v12;
          v47 = a3;
          v48 = a4;
          v49 = a5;
          v50 = a6;
          v51 = a7;
          v52 = a8;

          goto LABEL_112;
        }

        return;
      case 84:
      case 85:
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
        v44 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v44 == 4)
          {
LABEL_825:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v44)
          {
            v45 = a1;
            v46 = v12;
            v47 = a3;
            v48 = a4;
            v49 = a5;
            v50 = a6;
            v51 = a7;
            v52 = a8;

LABEL_112:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
          }
        }

        else if (v44 == 4)
        {
          v388 = a1;
          v389 = v12;
          v390 = a3;
          v391 = a4;
          v392 = a5;
          v393 = a6;
          v394 = a7;
          v395 = a8;

LABEL_1306:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v388, v389, v390, v391, v392, v393, v394, v395, a9, a10, a11, a12);
        }

        else if (!v44)
        {
LABEL_1404:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 90:
      case 91:
        v147 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_844;
        }

        if (v147 == 4)
        {
          goto LABEL_1450;
        }

        if (!v147)
        {
          goto LABEL_1447;
        }

        return;
      case 92:
        v504 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v504 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v504)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v504 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v504)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 93:
        v422 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v422 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v422)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v422 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v422)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 94:
      case 586:
      case 587:
      case 628:
      case 629:
        v147 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_844;
        }

        if (v147 == 4)
        {
          goto LABEL_1450;
        }

        if (v147)
        {
          return;
        }

        v148 = a1;
        v149 = v12;
        v150 = a3;
        v151 = a4;
        v152 = a5;
        v153 = a6;
        v154 = a7;
        v155 = a8;

        goto LABEL_471;
      case 103:
      case 104:
      case 105:
        v292 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v292 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v292)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v292 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v292)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 110:
      case 112:
      case 113:
      case 114:
      case 115:
      case 314:
      case 315:
        v108 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_409;
        }

        if (v108 == 4)
        {
          v396 = a1;
          v397 = v12;
          v398 = a3;
          v399 = a4;
          v400 = a5;
          v401 = a6;
          v402 = a7;
          v403 = a8;

          goto LABEL_1309;
        }

        if (!v108)
        {
          goto LABEL_1767;
        }

        return;
      case 116:
        v108 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          goto LABEL_1765;
        }

        if (v108 != 4)
        {
          goto LABEL_1355;
        }

        goto LABEL_1762;
      case 123:
      case 124:
      case 125:
        v254 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v254 == 4)
          {
            goto LABEL_1555;
          }

          if (!v254)
          {
            v255 = a1;
            v256 = v12;
            v257 = a3;
            v258 = a4;
            v259 = a5;
            v260 = a6;
            v261 = a7;
            v262 = a8;

            goto LABEL_665;
          }
        }

        else
        {
          if (v254 == 4)
          {
            v616 = a1;
            v617 = v12;
            v618 = a3;
            v619 = a4;
            v620 = a5;
            v621 = a6;
            v622 = a7;
            v623 = a8;

            goto LABEL_1912;
          }

          if (!v254)
          {
            goto LABEL_944;
          }
        }

        return;
      case 252:
        v272 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v272 == 4)
          {
            v273 = a1;
            v274 = v12;
            v275 = a3;
            v276 = a4;
            v277 = a5;
            v278 = a6;
            v279 = a7;
            v280 = a8;

LABEL_675:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v273, v274, v275, v276, v277, v278, v279, v280, a9, a10, a11, a12);
          }

          else
          {
LABEL_1640:
            if (!v272)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else if (v272 == 4)
        {
          v632 = a1;
          v633 = v12;
          v634 = a3;
          v635 = a4;
          v636 = a5;
          v637 = a6;
          v638 = a7;
          v639 = a8;

LABEL_1918:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v632, v633, v634, v635, v636, v637, v638, v639, a9, a10, a11, a12);
        }

        else if (!v272)
        {
LABEL_2025:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 253:
      case 261:
        v307 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v307 == 4)
          {
LABEL_1313:
            v412 = a1;
            v413 = v12;
            v414 = a3;
            v415 = a4;
            v416 = a5;
            v417 = a6;
            v418 = a7;
            v419 = a8;

LABEL_1315:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v412, v413, v414, v415, v416, v417, v418, v419, a9, a10, a11, a12);
          }

          else if (!v307)
          {
            v215 = a1;
            v216 = v12;
            v217 = a3;
            v218 = a4;
            v219 = a5;
            v220 = a6;
            v221 = a7;
            v222 = a8;

LABEL_537:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v215, v216, v217, v218, v219, v220, v221, v222, a9, a10, a11, a12);
          }
        }

        else if (v307 == 4)
        {
          v592 = a1;
          v593 = v12;
          v594 = a3;
          v595 = a4;
          v596 = a5;
          v597 = a6;
          v598 = a7;
          v599 = a8;

LABEL_1819:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v592, v593, v594, v595, v596, v597, v598, v599, a9, a10, a11, a12);
        }

        else if (!v307)
        {
LABEL_1937:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 313:
        v108 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          goto LABEL_1765;
        }

LABEL_409:
        if (v108 == 4)
        {
          v364 = a1;
          v365 = v12;
          v366 = a3;
          v367 = a4;
          v368 = a5;
          v369 = a6;
          v370 = a7;
          v371 = a8;

          goto LABEL_1261;
        }

        if (v108)
        {
          return;
        }

        v109 = a1;
        v110 = v12;
        v111 = a3;
        v112 = a4;
        v113 = a5;
        v114 = a6;
        v115 = a7;
        v116 = a8;

        goto LABEL_413;
      case 323:
      case 324:
      case 325:
        v293 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v293 == 4)
          {
LABEL_1555:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v293)
          {
            v255 = a1;
            v256 = v12;
            v257 = a3;
            v258 = a4;
            v259 = a5;
            v260 = a6;
            v261 = a7;
            v262 = a8;

LABEL_665:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v255, v256, v257, v258, v259, v260, v261, v262, a9, a10, a11, a12);
          }
        }

        else if (v293 == 4)
        {
          v616 = a1;
          v617 = v12;
          v618 = a3;
          v619 = a4;
          v620 = a5;
          v621 = a6;
          v622 = a7;
          v623 = a8;

LABEL_1912:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v616, v617, v618, v619, v620, v621, v622, v623, a9, a10, a11, a12);
        }

        else if (!v293)
        {
LABEL_944:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 552:
      case 553:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
        v97 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v97 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v97)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v97 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v97)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 554:
      case 555:
        v147 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
LABEL_844:
          if (v147 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v147)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v147 == 4)
        {
LABEL_1450:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v147)
        {
LABEL_1447:
          v148 = a1;
          v149 = v12;
          v150 = a3;
          v151 = a4;
          v152 = a5;
          v153 = a6;
          v154 = a7;
          v155 = a8;

LABEL_471:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v148, v149, v150, v151, v152, v153, v154, v155, a9, a10, a11, a12);
        }

        return;
      case 556:
        v108 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v108 == 4)
          {
LABEL_1762:
            v364 = a1;
            v365 = v12;
            v366 = a3;
            v367 = a4;
            v368 = a5;
            v369 = a6;
            v370 = a7;
            v371 = a8;

LABEL_1261:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v364, v365, v366, v367, v368, v369, v370, v371, a9, a10, a11, a12);
          }

          else
          {
LABEL_1355:
            if (!v108)
            {
              v109 = a1;
              v110 = v12;
              v111 = a3;
              v112 = a4;
              v113 = a5;
              v114 = a6;
              v115 = a7;
              v116 = a8;

LABEL_413:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v109, v110, v111, v112, v113, v114, v115, v116, a9, a10, a11, a12);
            }
          }
        }

        else
        {
LABEL_1765:
          if (v108 == 4)
          {
            v396 = a1;
            v397 = v12;
            v398 = a3;
            v399 = a4;
            v400 = a5;
            v401 = a6;
            v402 = a7;
            v403 = a8;

LABEL_1309:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v396, v397, v398, v399, v400, v401, v402, v403, a9, a10, a11, a12);
          }

          else if (!v108)
          {
LABEL_1767:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        break;
      default:
        return;
    }
  }

  else if (v20 == 2)
  {
    switch(v15)
    {
      case 1:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        v117 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v117 == 4)
          {
            v442 = a1;
            v443 = v12;
            v444 = a3;
            v445 = a4;
            v446 = a5;
            v447 = a6;
            v448 = a7;
            v449 = a8;

            goto LABEL_1463;
          }

          if (!v117)
          {
            v118 = a1;
            v119 = v12;
            v120 = a3;
            v121 = a4;
            v122 = a5;
            v123 = a6;
            v124 = a7;
            v125 = a8;

            goto LABEL_435;
          }
        }

        else
        {
          if (v117 == 4)
          {
            goto LABEL_1736;
          }

          if (!v117)
          {
            goto LABEL_1733;
          }
        }

        return;
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
        v165 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_865;
        }

        if (v165 == 4)
        {
          v520 = a1;
          v521 = v12;
          v522 = a3;
          v523 = a4;
          v524 = a5;
          v525 = a6;
          v526 = a7;
          v527 = a8;

          goto LABEL_1780;
        }

        if (!v165)
        {
          v166 = a1;
          v167 = v12;
          v168 = a3;
          v169 = a4;
          v170 = a5;
          v171 = a6;
          v172 = a7;
          v173 = a8;

          goto LABEL_483;
        }

        return;
      case 26:
      case 250:
        v165 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
LABEL_865:
          if (v165 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v165)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v165 == 4)
        {
          v520 = a1;
          v521 = v12;
          v522 = a3;
          v523 = a4;
          v524 = a5;
          v525 = a6;
          v526 = a7;
          v527 = a8;

LABEL_1780:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v520, v521, v522, v523, v524, v525, v526, v527, a9, a10, a11, a12);
        }

        else if (!v165)
        {
          v166 = a1;
          v167 = v12;
          v168 = a3;
          v169 = a4;
          v170 = a5;
          v171 = a6;
          v172 = a7;
          v173 = a8;

LABEL_483:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v166, v167, v168, v169, v170, v171, v172, v173, a9, a10, a11, a12);
        }

        return;
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        v224 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v224 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v224)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v224 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v224)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 40:
        v498 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v498 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v498)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v498 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v498)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 41:
        v434 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v434 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v434)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v434 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v434)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 42:
        v438 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          goto LABEL_1477;
        }

        if (v438 != 4)
        {
          goto LABEL_1415;
        }

        goto LABEL_1474;
      case 43:
        v506 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v506 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v506)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v506 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v506)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 44:
        v438 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v438 == 4)
          {
LABEL_1474:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else
          {
LABEL_1415:
            if (!v438)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else
        {
LABEL_1477:
          if (v438 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v438)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        return;
      case 53:
      case 54:
      case 55:
        v263 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v263 != 4)
          {
            goto LABEL_1628;
          }

          v264 = a1;
          v265 = v12;
          v266 = a3;
          v267 = a4;
          v268 = a5;
          v269 = a6;
          v270 = a7;
          v271 = a8;

          goto LABEL_670;
        }

        if (v263 == 4)
        {
          v624 = a1;
          v625 = v12;
          v626 = a3;
          v627 = a4;
          v628 = a5;
          v629 = a6;
          v630 = a7;
          v631 = a8;

          goto LABEL_1915;
        }

        if (!v263)
        {
          goto LABEL_2015;
        }

        return;
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
        v201 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v201 != 4)
          {
            goto LABEL_504;
          }

          v466 = a1;
          v467 = v12;
          v468 = a3;
          v469 = a4;
          v470 = a5;
          v471 = a6;
          v472 = a7;
          v473 = a8;

          goto LABEL_1521;
        }

        if (v201 == 4)
        {
          v552 = a1;
          v553 = v12;
          v554 = a3;
          v555 = a4;
          v556 = a5;
          v557 = a6;
          v558 = a7;
          v559 = a8;

          goto LABEL_1798;
        }

        if (v201)
        {
          return;
        }

        goto LABEL_728;
      case 66:
        v201 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v201 == 4)
          {
            v466 = a1;
            v467 = v12;
            v468 = a3;
            v469 = a4;
            v470 = a5;
            v471 = a6;
            v472 = a7;
            v473 = a8;

LABEL_1521:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v466, v467, v468, v469, v470, v471, v472, v473, a9, a10, a11, a12);
          }

          else
          {
LABEL_504:
            if (!v201)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else if (v201 == 4)
        {
          v552 = a1;
          v553 = v12;
          v554 = a3;
          v555 = a4;
          v556 = a5;
          v557 = a6;
          v558 = a7;
          v559 = a8;

LABEL_1798:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v552, v553, v554, v555, v556, v557, v558, v559, a9, a10, a11, a12);
        }

        else if (!v201)
        {
LABEL_728:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
        v21 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v21 == 4)
          {
            goto LABEL_807;
          }

          if (!v21)
          {
            v22 = a1;
            v23 = v12;
            v24 = a3;
            v25 = a4;
            v26 = a5;
            v27 = a6;
            v28 = a7;
            v29 = a8;

            goto LABEL_39;
          }

          return;
        }

        if (v21 == 4)
        {
          v308 = a1;
          v309 = v12;
          v310 = a3;
          v311 = a4;
          v312 = a5;
          v313 = a6;
          v314 = a7;
          v315 = a8;

          goto LABEL_902;
        }

        if (v21)
        {
          return;
        }

LABEL_568:
        v228 = a1;
        v229 = v12;
        v230 = a3;
        v231 = a4;
        v232 = a5;
        v233 = a6;
        v234 = a7;
        v235 = a8;

        goto LABEL_570;
      case 80:
      case 81:
        v294 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_802;
        }

        if (v294 == 4)
        {
          goto LABEL_1844;
        }

        if (v294)
        {
          return;
        }

        goto LABEL_568;
      case 84:
      case 85:
        v294 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
LABEL_802:
          if (v294 == 4)
          {
LABEL_807:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v294)
          {
            v22 = a1;
            v23 = v12;
            v24 = a3;
            v25 = a4;
            v26 = a5;
            v27 = a6;
            v28 = a7;
            v29 = a8;

LABEL_39:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
          }
        }

        else if (v294 == 4)
        {
LABEL_1844:
          v308 = a1;
          v309 = v12;
          v310 = a3;
          v311 = a4;
          v312 = a5;
          v313 = a6;
          v314 = a7;
          v315 = a8;

LABEL_902:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v308, v309, v310, v311, v312, v313, v314, v315, a9, a10, a11, a12);
        }

        else if (!v294)
        {
          v228 = a1;
          v229 = v12;
          v230 = a3;
          v231 = a4;
          v232 = a5;
          v233 = a6;
          v234 = a7;
          v235 = a8;

LABEL_570:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v228, v229, v230, v231, v232, v233, v234, v235, a9, a10, a11, a12);
        }

        return;
      case 90:
      case 91:
      case 554:
      case 555:
        v244 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_603;
        }

        if (v244 == 4)
        {
          goto LABEL_1247;
        }

        if (v244)
        {
          return;
        }

        v245 = a1;
        v246 = v12;
        v247 = a3;
        v248 = a4;
        v249 = a5;
        v250 = a6;
        v251 = a7;
        v252 = a8;

        goto LABEL_601;
      case 92:
        v502 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v502 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v502)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v502 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v502)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 93:
        v420 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v420 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v420)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v420 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v420)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 94:
        v244 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v244 != 4)
          {
            goto LABEL_604;
          }

          v324 = a1;
          v325 = v12;
          v326 = a3;
          v327 = a4;
          v328 = a5;
          v329 = a6;
          v330 = a7;
          v331 = a8;

          goto LABEL_1246;
        }

        if (v244 != 4)
        {
          goto LABEL_598;
        }

        v332 = a1;
        v333 = v12;
        v334 = a3;
        v335 = a4;
        v336 = a5;
        v337 = a6;
        v338 = a7;
        v339 = a8;

        goto LABEL_1249;
      case 103:
      case 104:
      case 105:
        v290 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v290 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v290)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v290 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v290)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 110:
      case 112:
      case 113:
      case 313:
      case 314:
      case 315:
      case 556:
        v99 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          goto LABEL_1707;
        }

        if (v99 == 4)
        {
          goto LABEL_1712;
        }

        if (v99)
        {
          return;
        }

        v100 = a1;
        v101 = v12;
        v102 = a3;
        v103 = a4;
        v104 = a5;
        v105 = a6;
        v106 = a7;
        v107 = a8;

        goto LABEL_407;
      case 114:
        v99 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          goto LABEL_1702;
        }

LABEL_1707:
        if (v99 == 4)
        {
          goto LABEL_1875;
        }

        if (!v99)
        {
          goto LABEL_1709;
        }

        return;
      case 115:
        v99 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
LABEL_1702:
          if (v99 != 4)
          {
            goto LABEL_1703;
          }

LABEL_1712:
          v424 = a1;
          v425 = v12;
          v426 = a3;
          v427 = a4;
          v428 = a5;
          v429 = a6;
          v430 = a7;
          v431 = a8;

          goto LABEL_1346;
        }

        if (v99 == 4)
        {
          v600 = a1;
          v601 = v12;
          v602 = a3;
          v603 = a4;
          v604 = a5;
          v605 = a6;
          v606 = a7;
          v607 = a8;

          goto LABEL_1877;
        }

        if (v99)
        {
          return;
        }

LABEL_1709:
        v512 = a1;
        v513 = v12;
        v514 = a3;
        v515 = a4;
        v516 = a5;
        v517 = a6;
        v518 = a7;
        v519 = a8;

        goto LABEL_1711;
      case 116:
        v99 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v99 == 4)
          {
            v424 = a1;
            v425 = v12;
            v426 = a3;
            v427 = a4;
            v428 = a5;
            v429 = a6;
            v430 = a7;
            v431 = a8;

LABEL_1346:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v424, v425, v426, v427, v428, v429, v430, v431, a9, a10, a11, a12);
          }

          else
          {
LABEL_1703:
            if (!v99)
            {
              v100 = a1;
              v101 = v12;
              v102 = a3;
              v103 = a4;
              v104 = a5;
              v105 = a6;
              v106 = a7;
              v107 = a8;

LABEL_407:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, a11, a12);
            }
          }
        }

        else if (v99 == 4)
        {
LABEL_1875:
          v600 = a1;
          v601 = v12;
          v602 = a3;
          v603 = a4;
          v604 = a5;
          v605 = a6;
          v606 = a7;
          v607 = a8;

LABEL_1877:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v600, v601, v602, v603, v604, v605, v606, v607, a9, a10, a11, a12);
        }

        else if (!v99)
        {
          v512 = a1;
          v513 = v12;
          v514 = a3;
          v515 = a4;
          v516 = a5;
          v517 = a6;
          v518 = a7;
          v519 = a8;

LABEL_1711:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v512, v513, v514, v515, v516, v517, v518, v519, a9, a10, a11, a12);
        }

        break;
      case 123:
      case 124:
      case 125:
      case 323:
      case 324:
      case 325:
        v135 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v135 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v135)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v135 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v135)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 252:
        v263 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v263 == 4)
          {
            v264 = a1;
            v265 = v12;
            v266 = a3;
            v267 = a4;
            v268 = a5;
            v269 = a6;
            v270 = a7;
            v271 = a8;

LABEL_670:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v264, v265, v266, v267, v268, v269, v270, v271, a9, a10, a11, a12);
          }

          else
          {
LABEL_1628:
            if (!v263)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else if (v263 == 4)
        {
          v624 = a1;
          v625 = v12;
          v626 = a3;
          v627 = a4;
          v628 = a5;
          v629 = a6;
          v630 = a7;
          v631 = a8;

LABEL_1915:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v624, v625, v626, v627, v628, v629, v630, v631, a9, a10, a11, a12);
        }

        else if (!v263)
        {
LABEL_2015:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 253:
        v510 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 != 1)
        {
          goto LABEL_1731;
        }

        if (v510 == 4)
        {
          goto LABEL_1728;
        }

        goto LABEL_1691;
      case 261:
        v510 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v510 == 4)
          {
LABEL_1728:
            v442 = a1;
            v443 = v12;
            v444 = a3;
            v445 = a4;
            v446 = a5;
            v447 = a6;
            v448 = a7;
            v449 = a8;

LABEL_1463:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v442, v443, v444, v445, v446, v447, v448, v449, a9, a10, a11, a12);
          }

          else
          {
LABEL_1691:
            if (!v510)
            {
              v118 = a1;
              v119 = v12;
              v120 = a3;
              v121 = a4;
              v122 = a5;
              v123 = a6;
              v124 = a7;
              v125 = a8;

LABEL_435:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, a12);
            }
          }
        }

        else
        {
LABEL_1731:
          if (v510 == 4)
          {
LABEL_1736:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v510)
          {
LABEL_1733:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        return;
      case 552:
      case 553:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
        v95 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
          if (v95 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }

          else if (!v95)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
          }
        }

        else if (v95 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        else if (!v95)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
        }

        return;
      case 586:
      case 587:
      case 628:
      case 629:
        v244 = getCompressionCodecConfig(*(a1 + 56));
        if (v16 == 1)
        {
LABEL_603:
          if (v244 == 4)
          {
            v324 = a1;
            v325 = v12;
            v326 = a3;
            v327 = a4;
            v328 = a5;
            v329 = a6;
            v330 = a7;
            v331 = a8;

LABEL_1246:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v324, v325, v326, v327, v328, v329, v330, v331, a9, a10, a11, a12);
          }

          else
          {
LABEL_604:
            if (!v244)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
            }
          }
        }

        else if (v244 == 4)
        {
LABEL_1247:
          v332 = a1;
          v333 = v12;
          v334 = a3;
          v335 = a4;
          v336 = a5;
          v337 = a6;
          v338 = a7;
          v339 = a8;

LABEL_1249:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v332, v333, v334, v335, v336, v337, v338, v339, a9, a10, a11, a12);
        }

        else
        {
LABEL_598:
          if (!v244)
          {
            v245 = a1;
            v246 = v12;
            v247 = a3;
            v248 = a4;
            v249 = a5;
            v250 = a6;
            v251 = a7;
            v252 = a8;

LABEL_601:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v245, v246, v247, v248, v249, v250, v251, v252, a9, a10, a11, a12);
          }
        }

        return;
      default:
        return;
    }
  }
}