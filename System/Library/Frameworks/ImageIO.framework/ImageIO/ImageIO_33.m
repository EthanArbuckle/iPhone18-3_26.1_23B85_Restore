uint64_t png_write_reset(uint64_t result)
{
  *(result + 308) = 0;
  *(result + 429) = 0;
  *(result + 76) &= ~4u;
  return result;
}

uint64_t png_write_reinit(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned int a4)
{
  v7 = *(a1 + 928);
  if (*(a1 + 964))
  {
    if (v7 < a3)
    {
      goto LABEL_10;
    }
  }

  else if (v7 != a3 || *(a1 + 932) != a4)
  {
    v12 = "width and/or height in the first frame's fcTL don't match the ones in IHDR";
LABEL_12:
    _cg_png_error(a1, v12);
  }

  if (*(a1 + 932) < a4)
  {
LABEL_10:
    v12 = "width and/or height for a frame greater thanthe ones in IHDR";
    goto LABEL_12;
  }

  result = _cg_png_set_IHDR(a1, a2, a3, a4, a2[44], a2[45], a2[48], a2[46], a2[47]);
  *(a1 + 280) = a3;
  *(a1 + 284) = a4;
  v9 = *(a1 + 434);
  v10 = v9 >= 8;
  v11 = (v9 >> 3) * a3;
  if (!v10)
  {
    v11 = (*(a1 + 434) * a3 + 7) >> 3;
  }

  *(a1 + 296) = v11;
  *(a1 + 292) = a3;
  return result;
}

uint64_t _cg_TIFFReadScanline(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (!TIFFCheckRead(a1, 0, a3, a4, a5, a6, a7, a8))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 92) <= v9)
  {
    TIFFErrorExtR(a1, *a1, "%u: Row out of range, max %u", v13, v14, v15, v16, v17, v9);
LABEL_7:
    v20 = _cg_TIFFScanlineSize(a1, v19, v12, v13, v14, v15, v16, v17);
    bzero(a2, v20);
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 170) == 2)
  {
    if (*(a1 + 130) <= a4)
    {
      TIFFErrorExtR(a1, *a1, "%hu: Sample out of range, max %hu", v13, v14, v15, v16, v17, a4);
      goto LABEL_7;
    }

    v18 = v9 / *(a1 + 132) + *(a1 + 224) * a4;
  }

  else
  {
    v18 = v9 / *(a1 + 132);
  }

  if (v18 != *(a1 + 884) && !TIFFFillStrip(a1, v18, v12, v13, v14, v15, v16, v17))
  {
    goto LABEL_7;
  }

  if (*(a1 + 876) > v9)
  {
    if (!*(a1 + 1136))
    {
      goto LABEL_31;
    }

    if ((*(a1 + 1128) & 0x8000000000000000) != 0)
    {
      *(a1 + 884) = -1;
      if ((*(a1 + 17) & 2) == 0)
      {
        TIFFErrorExtR(a1, "TIFFFillStripPartial", "Data buffer too small to hold part of strip %d", v13, v14, v15, v16, v17, v18);
        goto LABEL_7;
      }
    }

    *(a1 + 1136) = 0;
    *(a1 + 1144) = 0;
    v23 = TIFFGetStrileOffset(a1, v18);
    if (!_TIFFSeekOK(a1, *(a1 + 1136) + *(a1 + 1144) + v23))
    {
      TIFFErrorExtR(a1, "TIFFFillStripPartial", "Seek error at scanline %u, strip %d", v24, v25, v26, v27, v28, *(a1 + 876));
      goto LABEL_7;
    }

    v29 = *(a1 + 1128) & ~(*(a1 + 1128) >> 63);
    if (v29 > TIFFGetStrileByteCount(a1, v18) - (*(a1 + 1136) + *(a1 + 1144)))
    {
      v29 = TIFFGetStrileByteCount(a1, v18) - (*(a1 + 1136) + *(a1 + 1144));
    }

    if ((*(a1 + 18) & 0x80) != 0)
    {
      _cg_TIFFReadScanline_cold_1();
    }

    if (!TIFFReadAndRealloc(a1, v29, 0, 1, 0, "TIFFFillStripPartial", v30, v31))
    {
      goto LABEL_7;
    }

    *(a1 + 1136) += *(a1 + 1144);
    *(a1 + 1144) = v29;
    *(a1 + 1160) = v29;
    v32 = *(a1 + 1120);
    *(a1 + 1152) = v32;
    v33 = *(a1 + 16);
    if ((v33 & (*(a1 + 126) | 0x100)) == 0)
    {
      if ((v33 & 0x800000) != 0)
      {
        _cg_TIFFReadScanline_cold_2();
      }

      TIFFReverseBits(v32, v29);
    }

    if (*(a1 + 120) == 7 && (v34 = *(a1 + 1160), v34 < TIFFGetStrileByteCount(a1, v18)) && TIFFJPEGIsFullStripRequired(a1))
    {
      v35 = TIFFFillStrip(a1, v18, v12, v13, v14, v15, v16, v17);
    }

    else
    {
LABEL_31:
      v35 = TIFFStartStrip(a1, v18, v12, v13, v14, v15, v16, v17);
    }

    if (!v35)
    {
      goto LABEL_7;
    }
  }

  v36 = *(a1 + 876);
  if (v9 != v36)
  {
    if (!(*(a1 + 1064))(a1, v9 - v36))
    {
      goto LABEL_7;
    }

    *(a1 + 876) = v9;
  }

  v37 = (*(a1 + 1008))(a1, a2, *(a1 + 1104), a4);
  *(a1 + 876) = v9 + 1;
  v21 = 0xFFFFFFFFLL;
  if (v37)
  {
    v38 = v37;
    (*(a1 + 1248))(a1, a2, *(a1 + 1104));
    if (v38 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return v21;
}

uint64_t TIFFCheckRead(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 12) == 1)
  {
    v8 = *a1;
    v9 = "File not open for reading";
  }

  else
  {
    if (((*(a1 + 16) >> 10) & 1) == a2)
    {
      return 1;
    }

    if (a2)
    {
      v9 = "Can not read tiles from a striped image";
    }

    else
    {
      v9 = "Can not read scanlines from a tiled image";
    }

    v8 = *a1;
  }

  TIFFErrorExtR(a1, v8, v9, a4, a5, a6, a7, a8, vars0);
  return 0;
}

uint64_t _cg_TIFFReadEncodedStrip(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  StripSize = TIFFReadEncodedStripGetStripSize(a1, a2, &v22, a4, a5, a6, a7, a8);
  v19 = StripSize;
  if (StripSize != -1)
  {
    if (a4 == -1 || StripSize > a4 || *(a1 + 120) != 1 || (*(a1 + 17) & 0x208) != 0)
    {
      if (StripSize >= a4)
      {
        v20 = a4;
      }

      else
      {
        v20 = StripSize;
      }

      if (a4 != -1)
      {
        v19 = v20;
      }

      if (TIFFFillStrip(a1, a2, v13, v14, v15, v16, v17, v18))
      {
        if ((*(a1 + 1024))(a1, a3, v19, v22) >= 1)
        {
LABEL_13:
          (*(a1 + 1248))(a1, a3, v19);
          return v19;
        }
      }

      else
      {
        bzero(a3, v19);
      }
    }

    else if (TIFFReadRawStrip1(a1, a2, a3, StripSize, "TIFFReadEncodedStrip") == StripSize)
    {
      if ((*(a1 + 16) & (*(a1 + 126) | 0x100)) == 0)
      {
        TIFFReverseBits(a3, v19);
      }

      goto LABEL_13;
    }

    return -1;
  }

  return v19;
}

uint64_t TIFFReadEncodedStripGetStripSize(_DWORD *a1, unsigned int a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!TIFFCheckRead(a1, 0, a3, a4, a5, a6, a7, a8))
  {
    return -1;
  }

  if (a1[57] <= a2)
  {
    TIFFErrorExtR(a1, "TIFFReadEncodedStrip", "%u: Strip out of range, max %u", v12, v13, v14, v15, v16, a2);
    return -1;
  }

  v17 = a1[33];
  v18 = a1[23];
  if (v17 >= v18)
  {
    v17 = a1[23];
  }

  if (!v17)
  {
    TIFFErrorExtR(a1, "TIFFReadEncodedStrip", "rowsperstrip is zero", v12, v13, v14, v15, v16, v25);
    return -1;
  }

  v19 = v18 / v17;
  if (v18 % v17)
  {
    ++v19;
  }

  v20 = a2 / v19;
  v21 = a2 % v19;
  if (a3)
  {
    *a3 = v20;
  }

  v22 = v18 - v21 * v17;
  if (v22 >= v17)
  {
    v23 = v17;
  }

  else
  {
    v23 = v22;
  }

  result = TIFFVStripSize(a1, v23, v11, v12, v13, v14, v15, v16);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t TIFFReadRawStrip1(uint64_t a1, uint64_t a2, void *a3, size_t a4, const char *a5)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20000) != 0)
  {
    TIFFReadRawStrip1_cold_1();
  }

  v11 = TIFFGetStrileOffset(a1, a2);
  if ((v5 & 0x800) != 0)
  {
    if (v11 < 0)
    {
      v27 = 0;
      v31 = 0;
    }

    else
    {
      v27 = TIFFGetStrileOffset(a1, a2);
      v28 = *(a1 + 1176);
      if ((v27 + a4) <= v28)
      {
        v29 = a4;
      }

      else
      {
        v29 = v28 - v27;
      }

      if (v27 <= (a4 ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if (v28 >= v27)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }
    }

    if (v31 != a4)
    {
      TIFFErrorExtR(a1, a5, "Read error at scanline %u, strip %u; got %lld bytes, expected %lld", v12, v13, v14, v15, v16, *(a1 + 876));
      return -1;
    }

    _TIFFmemcpy(a3, (*(a1 + 1168) + v27), a4);
  }

  else
  {
    if (!_TIFFSeekOK(a1, v11))
    {
      TIFFErrorExtR(a1, a5, "Seek error at scanline %u, strip %u", v17, v18, v19, v20, v21, *(a1 + 876));
      return -1;
    }

    if ((*(a1 + 1208))(*(a1 + 1200), a3, a4) != a4)
    {
      TIFFErrorExtR(a1, a5, "Read error at scanline %u; got %lld bytes, expected %lld", v22, v23, v24, v25, v26, *(a1 + 876));
      return -1;
    }
  }

  return a4;
}

uint64_t TIFFFillStrip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 18) & 2) == 0)
  {
    v10 = TIFFGetStrileByteCount(a1, a2);
    v18 = v10;
    if (v10 <= 0)
    {
      TIFFErrorExtR(a1, "TIFFFillStrip", "Invalid strip byte count %llu, strip %u", v13, v14, v15, v16, v17, v10);
      return 0;
    }

    if (v10 > 0x100000)
    {
      v19 = _cg_TIFFStripSize(a1, v11, v12, v13, v14, v15, v16, v17);
      if (v19)
      {
        if (v19 < (v18 - 4096) / 0xAuLL)
        {
          v20 = 10 * v19 + 4096;
          TIFFErrorExtR(a1, "TIFFFillStrip", "Too large strip byte count %llu, strip %u. Limiting to %llu", v13, v14, v15, v16, v17, v18);
          v18 = v20;
        }
      }
    }

    v21 = *(a1 + 16);
    if ((v21 & 0x800) != 0)
    {
      if (v18 > *(a1 + 1176) || TIFFGetStrileOffset(a1, a2) > (*(a1 + 1176) - v18))
      {
        TIFFGetStrileOffset(a1, a2);
        TIFFErrorExtR(a1, "TIFFFillStrip", "Read error on strip %u; got %llu bytes, expected %llu", v23, v24, v25, v26, v27, a2);
        *(a1 + 884) = -1;
        return 0;
      }

      v21 = *(a1 + 16);
      if ((v21 & 0x800) != 0 && (v21 & (*(a1 + 126) | 0x100)) != 0)
      {
        if ((v21 & 0x200) != 0)
        {
          v30 = *(a1 + 1120);
          if (v30)
          {
            free(v30);
            *(a1 + 1120) = 0;
            v21 = *(a1 + 16);
          }
        }

        *(a1 + 16) = v21 & 0xFFFFFDFF;
        *(a1 + 1128) = v18;
        v31 = *(a1 + 1168);
        *(a1 + 1120) = v31 + TIFFGetStrileOffset(a1, a2);
        *(a1 + 1136) = 0;
        *(a1 + 1144) = v18;
        *(a1 + 16) |= 0x800000u;
        goto LABEL_33;
      }
    }

    v22 = *(a1 + 1128);
    if (v18 > v22)
    {
      *(a1 + 884) = -1;
      if ((v21 & 0x200) == 0)
      {
        TIFFErrorExtR(a1, "TIFFFillStrip", "Data buffer too small to hold strip %u", v13, v14, v15, v16, v17, a2);
        return 0;
      }
    }

    if ((v21 & 0x800000) != 0)
    {
      v22 = 0;
      *(a1 + 884) = -1;
      v21 &= ~0x800000u;
      *(a1 + 1120) = 0u;
      *(a1 + 16) = v21;
    }

    if ((v21 & 0x800) != 0)
    {
      if (v18 > v22 && !TIFFReadBufferSetup(a1, 0, v18, v13, v14, v15, v16, v17))
      {
        return 0;
      }

      v28 = TIFFReadRawStrip1(a1, a2, *(a1 + 1120), v18, "TIFFFillStrip");
    }

    else
    {
      v28 = TIFFReadRawStripOrTile2(a1, a2, 1, v18, "TIFFFillStrip");
    }

    if (v28 != v18)
    {
      return 0;
    }

    *(a1 + 1136) = 0;
    *(a1 + 1144) = v18;
    if ((*(a1 + 16) & (*(a1 + 126) | 0x100)) == 0)
    {
      TIFFReverseBits(*(a1 + 1120), v18);
    }
  }

LABEL_33:

  return TIFFStartStrip(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _TIFFReadEncodedStripAndAllocBuffer(uint64_t a1, uint64_t a2, void *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  if (!v12)
  {
    v32 = 0;
    StripSize = TIFFReadEncodedStripGetStripSize(a1, a2, &v32, a4, a5, a6, a7, a8);
    if (StripSize != -1)
    {
      v22 = StripSize >= a5 ? a5 : StripSize;
      v23 = a5 == -1 ? StripSize : v22;
      if (TIFFFillStrip(a1, a2, v16, v17, v18, v19, v20, v21))
      {
        v24 = malloc_type_malloc(a4, 0x50A56378uLL);
        *a3 = v24;
        if (v24)
        {
          _TIFFmemset(v24, 0, a4);
          if ((*(a1 + 1024))(a1, *a3, v23, v32) >= 1)
          {
            (*(a1 + 1248))(a1, *a3, v23);
            return v23;
          }
        }

        else
        {
          v25 = TIFFFileName(a1);
          TIFFErrorExtR(a1, v25, "No space for strip buffer", v26, v27, v28, v29, v30, v31);
        }
      }
    }

    return -1;
  }

  return _cg_TIFFReadEncodedStrip(a1, a2, v12, a5, a5, a6, a7, a8);
}

uint64_t TIFFReadBufferSetup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  if ((v8 & 0x20000) != 0)
  {
    TIFFReadBufferSetup_cold_1();
  }

  *(a1 + 16) = v8 & 0xFF7DFFFF;
  v12 = *(a1 + 1120);
  if (v12)
  {
    if ((v8 & 0x200) != 0)
    {
      free(v12);
    }

    *(a1 + 1120) = 0;
    *(a1 + 1128) = 0;
  }

  if (a2)
  {
    *(a1 + 1128) = a3;
    *(a1 + 1120) = a2;
    *(a1 + 16) &= ~0x200u;
    return 1;
  }

  else
  {
    v15 = (a3 + 1023) & 0xFFFFFFFFFFFFFC00;
    *(a1 + 1128) = v15;
    if (v15)
    {
      v13 = 1;
      v16 = malloc_type_calloc(1uLL, v15, 0x100004077774924uLL);
      *(a1 + 1120) = v16;
      *(a1 + 16) |= 0x200u;
      if (!v16)
      {
        TIFFErrorExtR(a1, "TIFFReadBufferSetup", "No space for data buffer at scanline %u", v17, v18, v19, v20, v21, *(a1 + 876));
        v13 = 0;
        *(a1 + 1128) = 0;
      }
    }

    else
    {
      TIFFErrorExtR(a1, "TIFFReadBufferSetup", "Invalid buffer size", a4, a5, a6, a7, a8, v22);
      return 0;
    }
  }

  return v13;
}

uint64_t TIFFReadRawStripOrTile2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x800) != 0)
  {
    TIFFReadRawStripOrTile2_cold_1();
  }

  if ((v5 & 0x20000) != 0)
  {
    TIFFReadRawStripOrTile2_cold_2();
  }

  v11 = TIFFGetStrileOffset(a1, a2);
  if (_TIFFSeekOK(a1, v11))
  {
    if (TIFFReadAndRealloc(a1, a4, 0, a3, a2, a5, v15, v16))
    {
      return a4;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    if (a3)
    {
      TIFFErrorExtR(a1, a5, "Seek error at scanline %u, strip %u", v12, v13, v14, v15, v16, *(a1 + 876));
    }

    else
    {
      TIFFErrorExtR(a1, a5, "Seek error at row %u, col %u, tile %u", v12, v13, v14, v15, v16, *(a1 + 876));
    }

    return -1;
  }
}

uint64_t TIFFStartStrip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16);
  if ((v10 & 0x20) == 0)
  {
    result = (*(a1 + 960))(a1);
    if (!result)
    {
      return result;
    }

    v10 = *(a1 + 16) | 0x20;
    *(a1 + 16) = v10;
  }

  *(a1 + 884) = a2;
  v12 = *(a1 + 224);
  if (v12)
  {
    *(a1 + 876) = *(a1 + 132) * (a2 % v12);
    *(a1 + 16) = v10 & 0xFFEFFFFF;
    if ((v10 & 0x20000) != 0)
    {
      *(a1 + 1152) = 0u;
    }

    else
    {
      *(a1 + 1152) = *(a1 + 1120);
      v13 = *(a1 + 1144);
      if (v13 < 1)
      {
        *(a1 + 1160) = TIFFGetStrileByteCount(a1, a2);
        v12 = *(a1 + 224);
      }

      else
      {
        *(a1 + 1160) = v13;
      }
    }

    result = (*(a1 + 968))(a1, (a2 / v12));
    if (result)
    {
      return 1;
    }

    else
    {
      *(a1 + 884) = -1;
    }
  }

  else
  {
    TIFFErrorExt(*(a1 + 1200), "TIFFStartStrip", "Zero strips per image", a4, a5, a6, a7, a8, v14);
    return 0;
  }

  return result;
}

uint64_t _cg_TIFFReadTileWithSize(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v11 = a4;
  if (!TIFFCheckRead(a1, 1, a3, a4, a5, a6, a7, a8) || !TIFFCheckTile(a1, v11, v10, a6, a7, v15, v16, v17))
  {
    return -1;
  }

  v18 = _cg_TIFFComputeTile(a1, v11, v10, a6, a7);

  return TIFFReadEncodedTile(a1, v18, a2, a3, v19, v20, v21, v22);
}

uint64_t TIFFReadEncodedTile(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 936);
  if (!TIFFCheckRead(a1, 1, a3, a4, a5, a6, a7, a8))
  {
    return -1;
  }

  if (*(a1 + 228) <= a2)
  {
    TIFFErrorExtR(a1, "TIFFReadEncodedTile", "%u: Tile out of range, max %u", v14, v15, v16, v17, v18, a2);
    return -1;
  }

  if (a4 != -1 && *(a1 + 120) == 1 && v12 <= a4 && (*(a1 + 17) & 0x208) == 0)
  {
    if (TIFFReadRawTile1(a1, a2, a3, v12, "TIFFReadEncodedTile") == v12)
    {
      if ((*(a1 + 16) & (*(a1 + 126) | 0x100)) == 0)
      {
        TIFFReverseBits(a3, v12);
      }

      goto LABEL_14;
    }

    return -1;
  }

  if (v12 >= a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = v12;
  }

  if (a4 != -1)
  {
    v12 = v19;
  }

  if (!TIFFFillTile(a1, a2, v13, v14, v15, v16, v17, v18))
  {
    bzero(a3, v12);
    return -1;
  }

  if (!(*(a1 + 1040))(a1, a3, v12, (a2 / *(a1 + 224))))
  {
    return -1;
  }

LABEL_14:
  (*(a1 + 1248))(a1, a3, v12);
  return v12;
}

uint64_t TIFFReadRawTile1(uint64_t a1, uint64_t a2, void *a3, size_t a4, const char *a5)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x20000) != 0)
  {
    TIFFReadRawTile1_cold_1();
  }

  v11 = TIFFGetStrileOffset(a1, a2);
  if ((v5 & 0x800) != 0)
  {
    if (TIFFGetStrileOffset(a1, a2) < 0 || (v27 = *(a1 + 1176), v28 = v27 - v11, v27 < v11))
    {
      v28 = 0;
    }

    else if ((a4 & 0x8000000000000000) == 0 && (v11 & 0x8000000000000000) == 0 && (v11 + a4) <= v27)
    {
      goto LABEL_16;
    }

    if (v28 != a4)
    {
      TIFFErrorExtR(a1, a5, "Read error at row %u, col %u, tile %u; got %lld bytes, expected %lld", v22, v23, v24, v25, v26, *(a1 + 876));
      return -1;
    }

LABEL_16:
    _TIFFmemcpy(a3, (*(a1 + 1168) + v11), a4);
    return a4;
  }

  if (!_TIFFSeekOK(a1, v11))
  {
    TIFFErrorExtR(a1, a5, "Seek error at row %u, col %u, tile %u", v12, v13, v14, v15, v16, *(a1 + 876));
    return -1;
  }

  if ((*(a1 + 1208))(*(a1 + 1200), a3, a4) != a4)
  {
    TIFFErrorExtR(a1, a5, "Read error at row %u, col %u; got %lld bytes, expected %lld", v17, v18, v19, v20, v21, *(a1 + 876));
    return -1;
  }

  return a4;
}

uint64_t TIFFFillTile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 18) & 2) == 0)
  {
    v10 = TIFFGetStrileByteCount(a1, a2);
    v18 = v10;
    if (v10 <= 0)
    {
      TIFFErrorExtR(a1, "TIFFFillTile", "%llu: Invalid tile byte count, tile %u", v13, v14, v15, v16, v17, v10);
      return 0;
    }

    if (v10 > 0x100000)
    {
      v19 = _cg_TIFFTileSize(a1, v11, v12, v13, v14, v15, v16, v17);
      if (v19)
      {
        if (v19 < (v18 - 4096) / 0xAuLL)
        {
          v20 = 10 * v19 + 4096;
          TIFFErrorExtR(a1, "TIFFFillTile", "Too large tile byte count %llu, tile %u. Limiting to %llu", v13, v14, v15, v16, v17, v18);
          v18 = v20;
        }
      }
    }

    v21 = *(a1 + 16);
    if ((v21 & 0x800) != 0)
    {
      if (v18 > *(a1 + 1176) || TIFFGetStrileOffset(a1, a2) > (*(a1 + 1176) - v18))
      {
        *(a1 + 932) = -1;
        return 0;
      }

      v21 = *(a1 + 16);
      if ((v21 & 0x800) != 0 && (v21 & (*(a1 + 126) | 0x100)) != 0)
      {
        if ((v21 & 0x200) != 0)
        {
          v26 = *(a1 + 1120);
          if (v26)
          {
            free(v26);
            *(a1 + 1120) = 0;
            v21 = *(a1 + 16);
          }
        }

        *(a1 + 16) = v21 & 0xFFFFFDFF;
        *(a1 + 1128) = v18;
        v27 = *(a1 + 1168);
        *(a1 + 1120) = v27 + TIFFGetStrileOffset(a1, a2);
        *(a1 + 1136) = 0;
        *(a1 + 1144) = v18;
        *(a1 + 16) |= 0x800000u;
        goto LABEL_34;
      }
    }

    v22 = *(a1 + 1128);
    if (v18 > v22)
    {
      *(a1 + 932) = -1;
      if ((v21 & 0x200) == 0)
      {
        TIFFErrorExtR(a1, "TIFFFillTile", "Data buffer too small to hold tile %u", v13, v14, v15, v16, v17, a2);
        return 0;
      }
    }

    if ((v21 & 0x800000) != 0)
    {
      v22 = 0;
      *(a1 + 932) = -1;
      v21 &= ~0x800000u;
      *(a1 + 1120) = 0u;
      *(a1 + 16) = v21;
    }

    if ((v21 & 0x800) != 0)
    {
      if (v18 > v22 && !TIFFReadBufferSetup(a1, 0, v18, v13, v14, v15, v16, v17))
      {
        return 0;
      }

      v23 = TIFFReadRawTile1(a1, a2, *(a1 + 1120), v18, "TIFFFillTile");
    }

    else
    {
      v23 = TIFFReadRawStripOrTile2(a1, a2, 0, v18, "TIFFFillTile");
    }

    if (v23 != v18)
    {
      return 0;
    }

    *(a1 + 1136) = 0;
    *(a1 + 1144) = v18;
    v24 = *(a1 + 1120);
    if (v24 && (*(a1 + 16) & (*(a1 + 126) | 0x100)) == 0)
    {
      TIFFReverseBits(v24, v18);
    }
  }

LABEL_34:

  return TIFFStartTile(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _TIFFReadTileAndAllocBuffer(uint64_t a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v11 = a4;
  if (!TIFFCheckRead(a1, 1, a3, a4, a5, a6, a7, a8) || !TIFFCheckTile(a1, v11, v10, a6, a7, v15, v16, v17))
  {
    return -1;
  }

  v18 = _cg_TIFFComputeTile(a1, v11, v10, a6, a7);

  return _TIFFReadEncodedTileAndAllocBuffer(a1, v18, a2, a3, -1, v19, v20, v21);
}

uint64_t _TIFFReadEncodedTileAndAllocBuffer(uint64_t a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  if (!v12)
  {
    v15 = *(a1 + 936);
    if (!TIFFCheckRead(a1, 1, 0, a4, a5, a6, a7, a8))
    {
      return -1;
    }

    if (*(a1 + 228) <= a2)
    {
      v29 = "_TIFFReadEncodedTileAndAllocBuffer";
      v42 = a2;
      v30 = "%u: Tile out of range, max %u";
      goto LABEL_14;
    }

    if (!TIFFFillTile(a1, a2, v16, v17, v18, v19, v20, v21))
    {
      return -1;
    }

    v22 = *(a1 + 120);
    switch(v22)
    {
      case 50002:
        if (*(a1 + 170) == 1)
        {
          v32 = 25000 * *(a1 + 130);
        }

        else
        {
          v32 = 25000;
        }

        break;
      case 50000:
        v32 = 33000;
        break;
      case 1:
        if (*(a1 + 1128) != v15)
        {
          v23 = TIFFFileName(a1);
          TIFFErrorExtR(a1, v23, "Invalid tile byte count for tile %u. Expected %llu, got %llu", v24, v25, v26, v27, v28, a2);
          return -1;
        }

        goto LABEL_27;
      default:
        v33 = v22 == 34925;
        v32 = 1000;
        if (v33)
        {
          v32 = 7000;
        }

        break;
    }

    if (a4 >= 100000001 && *(a1 + 1128) < v15 / v32)
    {
      v34 = TIFFFileName(a1);
      TIFFErrorExtR(a1, v34, "Likely invalid tile byte count for tile %u. Uncompressed tile size is %llu, compressed one is %llu", v35, v36, v37, v38, v39, a2);
      return -1;
    }

LABEL_27:
    v40 = malloc_type_malloc(a4, 0x8AEEE98uLL);
    *a3 = v40;
    if (v40)
    {
      _TIFFmemset(v40, 0, a4);
      if (v15 >= a5)
      {
        v41 = a5;
      }

      else
      {
        v41 = v15;
      }

      if (a5 == -1)
      {
        v31 = v15;
      }

      else
      {
        v31 = v41;
      }

      if ((*(a1 + 1040))(a1, *a3, v31, (a2 / *(a1 + 224))))
      {
        (*(a1 + 1248))(a1, *a3, v31);
        return v31;
      }

      return -1;
    }

    v29 = TIFFFileName(a1);
    v30 = "No space for tile buffer";
LABEL_14:
    TIFFErrorExtR(a1, v29, v30, v17, v18, v19, v20, v21, v42);
    return -1;
  }

  return TIFFReadEncodedTile(a1, a2, v12, a5, a5, a6, a7, a8);
}

uint64_t TIFFStartTile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 16);
  if ((v10 & 0x20) == 0)
  {
    if (!(*(a1 + 960))(a1))
    {
      return 0;
    }

    v10 = *(a1 + 16) | 0x20;
    *(a1 + 16) = v10;
  }

  *(a1 + 932) = a2;
  v11 = *(a1 + 100);
  if (!v11)
  {
    v18 = "Zero tilewidth";
    goto LABEL_11;
  }

  v12 = *(a1 + 88);
  if (v12 >= -v11 || (v13 = v11 + v12 - 1, v11 > v13) || (v14 = a2 % (v13 / v11), v15 = *(a1 + 104), *(a1 + 876) = v15 * v14, v16 = *(a1 + 92), v16 >= -v15) || (v17 = v15 + v16 - 1, v15 > v17))
  {
    v18 = "Zero tiles";
LABEL_11:
    TIFFErrorExtR(a1, "TIFFStartTile", v18, a4, a5, a6, a7, a8, v23);
    return 0;
  }

  *(a1 + 928) = a2 % (v17 / v15) * v11;
  *(a1 + 16) = v10 & 0xFFEFFFFF;
  if ((v10 & 0x20000) != 0)
  {
    *(a1 + 1152) = 0u;
  }

  else
  {
    *(a1 + 1152) = *(a1 + 1120);
    v20 = *(a1 + 1144);
    if (v20 < 1)
    {
      *(a1 + 1160) = TIFFGetStrileByteCount(a1, a2);
    }

    else
    {
      *(a1 + 1160) = v20;
    }
  }

  v21 = *(a1 + 968);
  v22 = (a2 / *(a1 + 224));

  return v21(a1, v22);
}

uint64_t _TIFFSwab16BitData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    _TIFFSwab16BitData_cold_1();
  }

  return TIFFSwabArrayOfShort(a2, a3 >> 1);
}

uint64_t _TIFFSwab24BitData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 3 * (a3 / 3))
  {
    _TIFFSwab24BitData_cold_1();
  }

  return TIFFSwabArrayOfTriples(a2, a3 / 3);
}

__int32 *_TIFFSwab32BitData(uint8x8_t a1, uint64_t a2, __int32 *a3, uint64_t a4)
{
  if ((a4 & 3) != 0)
  {
    _TIFFSwab32BitData_cold_1();
  }

  return TIFFSwabArrayOfLong(a3, a4 >> 2, a1);
}

int8x8_t *_TIFFSwab64BitData(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  if ((a3 & 7) != 0)
  {
    _TIFFSwab64BitData_cold_1();
  }

  return TIFFSwabArrayOfLong8(a2, a3 >> 3);
}

uint64_t TIFFReadAndRealloc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8)
{
  v32 = a4;
  v11 = 0;
  v12 = a3 + a2;
  v13 = (a1 + 1120);
  v14 = 0x100000;
  do
  {
    if (a2 <= v11)
    {
      return 1;
    }

    v16 = v14 < 1048576000 && a2 - v11 >= v14;
    v17 = *(a1 + 1128);
    v18 = v12 > v17;
    if (v16 && v18)
    {
      v19 = 10 * v14;
    }

    else
    {
      v19 = v14;
    }

    if (v16 && v18)
    {
      v20 = v14;
    }

    else
    {
      v20 = a2 - v11;
    }

    v21 = v11 + a3 + v20;
    if (v21 <= v17)
    {
      result = *v13;
      if (!*v13)
      {
        return result;
      }
    }

    else
    {
      if ((*(a1 + 17) & 2) == 0)
      {
        TIFFReadAndRealloc_cold_1();
      }

      v22 = (v21 + 1023) & 0xFFFFFFFFFFFFFC00;
      *(a1 + 1128) = v22;
      if (!v22)
      {
        v30 = "Invalid buffer size";
        goto LABEL_28;
      }

      result = malloc_type_realloc(*v13, v22, 0x100004077774924uLL);
      if (!result)
      {
        TIFFErrorExtR(a1, a6, "No space for data buffer at scanline %u", v24, v25, v26, v27, v28, *(a1 + 876));
        free(*(a1 + 1120));
        result = 0;
        *v13 = 0;
        v13[1] = 0;
        return result;
      }

      *v13 = result;
    }

    v29 = (*(a1 + 1208))(*(a1 + 1200), result + a3 + v11, v20);
    v11 += v29;
    v14 = v19;
  }

  while (v29 == v20);
  bzero((*(a1 + 1120) + a3 + v11), *(a1 + 1128) - a3 - v11);
  if (v32)
  {
    TIFFErrorExtR(a1, a6, "Read error at scanline %u; got %lld bytes, expected %lld", a4, a5, a6, a7, a8, *(a1 + 876));
    return 0;
  }

  v31 = *(a1 + 876);
  v30 = "Read error at row %u, col %u, tile %u; got %lld bytes, expected %lld";
LABEL_28:
  TIFFErrorExtR(a1, a6, v30, a4, a5, a6, a7, a8, v31);
  return 0;
}

void IIO_Reader_WebP::~IIO_Reader_WebP(IIO_Reader_WebP *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_WebP::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t IIO_Reader_WebP::validateVP8_VP8L(IIO_Reader_WebP *this, IIOScanner *a2, unsigned int a3, int a4)
{
  v4 = *(a2 + 3);
  if (v4 + a3 - 8 > *(a2 + 2))
  {
    IIO_Reader_WebP::validateVP8_VP8L();
    return 1;
  }

  v14 = 0;
  memset(v13, 0, sizeof(v13));
  WebPGetFeaturesInternal(*(a2 + 1) + v4 - 8, a3, v13, 521);
  if (*(this + 116) == 1)
  {
    ++*(this + (a4 != 1448097824) + 22);
    if (a4 == 1448097868 && *(this + 117) == 1)
    {
      v7 = _cg_jpeg_mem_term("validateVP8_VP8L", 90, "ERROR: VP8L and ALPH sub-chunks in ANMF are not allowed\n").n128_u64[0];
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    if (*&v13[0] != *(this + 108))
    {
      v7 = _cg_jpeg_mem_term("validateVP8_VP8L", 95, "ERROR: frame size VP8/VP8L sub-chunk does not match ANMF header frame size\n", *&v7).n128_u64[0];
      v12 = *(this + 119);
      v11 = this + 119;
      if ((v12 & 1) == 0)
      {
LABEL_19:
        result = 0;
        *v11 = 1;
        return result;
      }

LABEL_18:
      _cg_jpeg_mem_term("validateVP8_VP8L", 101, "ERROR: more than one VP8/VP8L chunks in ANMF are not allowed\n", *&v7);
      goto LABEL_19;
    }

    if (*(this + 119))
    {
      v11 = this + 119;
      goto LABEL_18;
    }

    *(this + 119) = 1;
    if (v8)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (*(this + 13) || *(this + 14))
  {
    v7 = _cg_jpeg_mem_term("validateVP8_VP8L", 111, "*** ERROR: multiple VP8/VP8L chunks not allowed\n").n128_u64[0];
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  if (*(this + 17) || *(this + 18))
  {
    _cg_jpeg_mem_term("validateVP8_VP8L", 117, "*** ERROR: VP8/VP8L and ANIM/ANMF chunks are not allowed\n", *&v7);
    return 0;
  }

  if (!v9)
  {
    return 0;
  }

LABEL_24:
  ++*(this + 26);
  return 1;
}

uint64_t IIO_Reader_WebP::validateALPH(IIO_Reader_WebP *this, IIOScanner *a2)
{
  if (*(this + 116) == 1)
  {
    ++*(this + 24);
    v3 = *(this + 118);
    if (v3 == 1)
    {
      _cg_jpeg_mem_term("validateALPH", 153, "*** ERROR: more than one ALPH sub-chunks in an ANMF chunk\n");
    }

    *(this + 118) = 1;
    if (*(this + 119) == 1)
    {
      _cg_jpeg_mem_term("validateALPH", 160, "*** ERROR: ALPHA sub-chunk detected after VP8 sub-chunk in an ANMF chunk\n");
      return 0;
    }

    return v3 ^ 1u;
  }

  else
  {
    if (*(this + 17) || *(this + 18))
    {
      _cg_jpeg_mem_term("validateALPH", 168, "*** ERROR: ALPHA chunk and ANIM/ANMF chunk are both detected\n");
      result = 0;
    }

    else
    {
      result = 1;
    }

    if (!*(this + 15))
    {
      _cg_jpeg_mem_term("validateALPH", 173, "*** ERROR: ALPHA chunk detected before VP8X chunk\n");
      result = 0;
    }

    if (*(this + 13))
    {
      _cg_jpeg_mem_term("validateALPH", 178, "*** ERROR: ALPHA chunk detected after VP8 chunk\n");
      result = 0;
    }

    if (*(this + 16))
    {
      _cg_jpeg_mem_term("validateALPH", 183, "*** ERROR: Multiple ALPHA chunks detected\n");
      return 0;
    }
  }

  return result;
}

uint64_t IIO_Reader_WebP::validateANMF(IIO_Reader_WebP *this, IIOScanner *a2, unsigned int a3, double a4)
{
  v7 = *(this + 116);
  if (v7 == 1)
  {
    *&a4 = _cg_jpeg_mem_term("validateANMF", 211, "ERROR: nested ANMF chunks are not allowed\n").n128_u64[0];
  }

  if (*(this + 17))
  {
    v8 = v7 ^ 1u;
  }

  else
  {
    _cg_jpeg_mem_term("validateANMF", 216, "*** ERROR: ANMF without ANIM are not allowed\n", a4);
    v8 = 0;
  }

  if (a3 > 0x10)
  {
    IIOScanner::getVal24(a2);
    IIOScanner::getVal24(a2);
    *(this + 27) = IIOScanner::getVal24(a2) + 1;
    *(this + 28) = IIOScanner::getVal24(a2) + 1;
    IIOScanner::getVal24(a2);
    *(this + 11) = 0;
    *(this + 24) = 0;
    *(this + 59) = 0;
  }

  else
  {
    _cg_jpeg_mem_term("validateANMF", 232, "*** ERROR: ANMF chunk size too small (%d)\n", a3);
    v8 = 0;
  }

  *(this + 116) = 1;
  return v8;
}

BOOL IIO_Reader_WebP::validateICCP(IIO_Reader_WebP *this, IIOScanner *a2)
{
  v3 = *(this + 15);
  v4 = v3 != 0;
  if (!v3)
  {
    _cg_jpeg_mem_term("validateICCP", 260, "*** ERROR: ICCP chunk detected before VP8X chunk.");
  }

  if (*(this + 13) || *(this + 14) || *(this + 17))
  {
    _cg_jpeg_mem_term("validateICCP", 267, "*** ERROR: ICCP chunk detected after image data.");
    return 0;
  }

  return v4;
}

uint64_t IIO_Reader_WebP::validateWebP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  IIOScanner::IIOScanner(&v53, *a3, *(a3 + 8), 1);
  *(a1 + 52) = 0u;
  v5 = (a1 + 52);
  *(a1 + 84) = 0;
  *(a1 + 68) = 0u;
  *(a1 + 100) = 0;
  *(a1 + 116) = 0;
  v6 = IIOScanner::getOSType(&v53) == 1380533830;
  Val32 = IIOScanner::getVal32(&v53);
  v8 = Val32 + 8;
  if (Val32 >= 0xFFFFFFF8)
  {
    v10 = _cg_jpeg_mem_term("validateWebP", 316, "*** ERROR: bad webp header\n").n128_u64[0];
    goto LABEL_81;
  }

  if (v54 >= v8)
  {
    if (v54 > v8)
    {
      _cg_jpeg_mem_term("validateWebP", 322, "*** webP contains additional data (%d bytes) - original: '%d'   new: '%d'\n", v54 - v8, v54, Val32 + 8);
      if (v54 > v8)
      {
        *&v54 = v8;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  if (((IIOScanner::getOSType(&v53) == 1464156752) & v6) == 0)
  {
    v6 = 0;
    v10 = _cg_jpeg_mem_term("validateWebP", 329, "*** ERROR: bad webp header\n").n128_u64[0];
    goto LABEL_81;
  }

  for (i = IIOScanner::getOSType(&v53); ; i = IIOScanner::getOSType(&v53))
  {
    if (!i)
    {
LABEL_80:
      v6 = 1;
      goto LABEL_81;
    }

    v11 = IIOScanner::getVal32(&v53);
    v13 = *(&v54 + 1) - 8;
    LODWORD(v14) = v11 + 8;
    if (v11 >= 0xFFFFFFF8 || *(a3 + 8) <= v14)
    {
      break;
    }

    v14 = (v14 & 1) + v14;
    if (v13 + v14 > v54)
    {
      v45 = i >> 24;
      if ((i >> 24) <= 0x7F)
      {
        v46 = *(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x40000;
      }

      else
      {
        v46 = __maskrune(i >> 24, 0x40000uLL);
      }

      if (v46)
      {
        v35 = v45;
      }

      else
      {
        v35 = 46;
      }

      v47 = i << 8 >> 24;
      if (v47 <= 0x7F)
      {
        v48 = *(MEMORY[0x1E69E9830] + 4 * v47 + 60) & 0x40000;
      }

      else
      {
        v48 = __maskrune(i << 8 >> 24, 0x40000uLL);
      }

      if (v48)
      {
        v38 = v47;
      }

      else
      {
        v38 = 46;
      }

      v49 = i >> 8;
      if (v49 <= 0x7F)
      {
        v50 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
      }

      else
      {
        v50 = __maskrune(i >> 8, 0x40000uLL);
      }

      i = i;
      if (i <= 0x7F)
      {
        v51 = *(MEMORY[0x1E69E9830] + 4 * i + 60) & 0x40000;
      }

      else
      {
        v51 = __maskrune(i, 0x40000uLL);
      }

      if (v50)
      {
        v42 = v49;
      }

      else
      {
        v42 = 46;
      }

      if (v51)
      {
        v43 = i;
      }

      else
      {
        v43 = 46;
      }

      v44 = 344;
      goto LABEL_135;
    }

    if (i <= 1229144911)
    {
      if (i > 1095650629)
      {
        if (i == 1095650630)
        {
          v15 = IIO_Reader_WebP::validateANMF(a1, &v53, v14, *&v10);
          *(a1 + 100) = v14 - 24;
          ++*(a1 + 72);
          if ((v15 & 1) == 0)
          {
            goto LABEL_136;
          }

          LODWORD(v14) = 24;
          goto LABEL_77;
        }

        if (i == 1163413830)
        {
          ++*(a1 + 80);
          goto LABEL_28;
        }

        goto LABEL_42;
      }

      if (i == 1095520328)
      {
        v6 = IIO_Reader_WebP::validateALPH(a1, v12);
        ++*(a1 + 64);
        goto LABEL_67;
      }

      if (i != 1095649613)
      {
        goto LABEL_42;
      }

      v6 = v14 == 14;
      if (v14 != 14)
      {
        v10 = _cg_jpeg_mem_term("validateANIM", 197, "*** ERROR: corrupt ANIM chunk (%d bytes, expected: %d)\n", v14, 14).n128_u64[0];
      }

      ++*(a1 + 68);
    }

    else
    {
      if (i <= 1448097867)
      {
        if (i == 1229144912)
        {
          v6 = IIO_Reader_WebP::validateICCP(a1, v12);
          ++*(a1 + 76);
          goto LABEL_67;
        }

        if (i == 1448097824)
        {
          v6 = IIO_Reader_WebP::validateVP8_VP8L(a1, &v53, v14, 1448097824);
          ++*v5;
          goto LABEL_67;
        }

        goto LABEL_42;
      }

      if (i == 1448097868)
      {
        v6 = IIO_Reader_WebP::validateVP8_VP8L(a1, &v53, v14, 1448097868);
        ++*(a1 + 56);
        goto LABEL_67;
      }

      if (i != 1448097880)
      {
        if (i == 1481461792)
        {
          ++*(a1 + 84);
LABEL_28:
          v6 = 1;
          goto LABEL_67;
        }

LABEL_42:
        v17 = i >> 24;
        if ((i >> 24) <= 0x7F)
        {
          v18 = *(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x40000;
        }

        else
        {
          v18 = __maskrune(i >> 24, 0x40000uLL);
        }

        if (v18)
        {
          v19 = v17;
        }

        else
        {
          v19 = 46;
        }

        v52 = v19;
        v20 = i << 8 >> 24;
        if (v20 <= 0x7F)
        {
          v21 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
        }

        else
        {
          v21 = __maskrune(i << 8 >> 24, 0x40000uLL);
        }

        if (v21)
        {
          v22 = v20;
        }

        else
        {
          v22 = 46;
        }

        v23 = i >> 8;
        if (v23 <= 0x7F)
        {
          v24 = *(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x40000;
        }

        else
        {
          v24 = __maskrune(i >> 8, 0x40000uLL);
        }

        if (i <= 0x7F)
        {
          v25 = *(MEMORY[0x1E69E9830] + 4 * i + 60) & 0x40000;
        }

        else
        {
          v25 = __maskrune(i, 0x40000uLL);
        }

        if (v24)
        {
          v26 = v23;
        }

        else
        {
          v26 = 46;
        }

        if (v25)
        {
          v27 = i;
        }

        else
        {
          v27 = 46;
        }

        v10 = _cg_jpeg_mem_term("validateWebP", 389, "*** ERROR: unknown chunk '%c%c%c%c' at offset 0x%08x  size: %d\n", v52, v22, v26, v27, v13, v14).n128_u64[0];
        v6 = v14 != 0;
        goto LABEL_67;
      }

      if (*v5 || *(a1 + 56) || *(a1 + 60))
      {
        v10 = _cg_jpeg_mem_term("validateVP8X", 136, "*** ERROR: 'VP8X' - not allowed - VP8/VP8L/VP8X already present\n").n128_u64[0];
        v6 = 0;
        v16 = *(a1 + 60) + 1;
      }

      else
      {
        v16 = 1;
        v6 = 1;
      }

      *(a1 + 60) = v16;
    }

LABEL_67:
    if ((*(a1 + 116) & 1) == 0)
    {
      goto LABEL_76;
    }

    v28 = *(a1 + 100);
    v29 = v28 >= v14;
    v30 = v28 - v14;
    if (v30)
    {
      if (v30 == 0 || !v29)
      {
LABEL_76:
        if (!v6)
        {
          goto LABEL_81;
        }

        goto LABEL_77;
      }

      *(a1 + 100) = v30;
      if ((v6 & 1) == 0)
      {
        goto LABEL_136;
      }
    }

    else
    {
      if ((*(a1 + 119) & 1) == 0)
      {
        v10 = _cg_jpeg_mem_term("validateWebP", 401, "*** ERROR: no VP8/VP8L chunk detected in ANMF chunk\n", *&v10).n128_u64[0];
        v6 = 0;
        *(a1 + 116) = 0;
        goto LABEL_81;
      }

      *(a1 + 116) = 0;
      if ((v6 & 1) == 0)
      {
        goto LABEL_136;
      }
    }

LABEL_77:
    v31 = v13 + v14;
    if (v31 >= v54)
    {
      goto LABEL_80;
    }

    IIOScanner::seek(&v53, v31);
  }

  v33 = i >> 24;
  if ((i >> 24) <= 0x7F)
  {
    v34 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x40000;
  }

  else
  {
    v34 = __maskrune(i >> 24, 0x40000uLL);
  }

  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = 46;
  }

  v36 = i << 8 >> 24;
  if (v36 <= 0x7F)
  {
    v37 = *(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x40000;
  }

  else
  {
    v37 = __maskrune(i << 8 >> 24, 0x40000uLL);
  }

  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 46;
  }

  v39 = i >> 8;
  if (v39 <= 0x7F)
  {
    v40 = *(MEMORY[0x1E69E9830] + 4 * v39 + 60) & 0x40000;
  }

  else
  {
    v40 = __maskrune(i >> 8, 0x40000uLL);
  }

  i = i;
  if (i <= 0x7F)
  {
    v41 = *(MEMORY[0x1E69E9830] + 4 * i + 60) & 0x40000;
  }

  else
  {
    v41 = __maskrune(i, 0x40000uLL);
  }

  if (v40)
  {
    v42 = v39;
  }

  else
  {
    v42 = 46;
  }

  if (v41)
  {
    v43 = i;
  }

  else
  {
    v43 = 46;
  }

  v44 = 339;
LABEL_135:
  v10 = _cg_jpeg_mem_term("validateWebP", v44, "*** ERROR: bad chunk size [%d,%d] for '%c%c%c%c' (%d bytes)\n", v13, v14, v35, v38, v42, v43, v54).n128_u64[0];
LABEL_136:
  v6 = 0;
LABEL_81:
  if (!*(a1 + 104))
  {
    _cg_jpeg_mem_term("validateWebP", 427, "*** ERROR: no VP8/VP8L chunk detected\n", *&v10);
    v6 = 0;
  }

  IIOScanner::~IIOScanner(&v53);
  return v6;
}

void sub_18604D970(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 104) = 0;
  __cxa_end_catch();
  JUMPOUT(0x18604D680);
}

void sub_18604D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_WebP::getImageCount(IIO_Reader_WebP *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  v20 = 0;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  if (a5)
  {
    *a5 = 0;
  }

  os_unfair_lock_lock(&IIO_Reader_WebP::getImageCount(IIOImageReadSession *,IIODictionary *,CGImageSourceStatus *,unsigned int *)::mutex);
  WebPAnimDecoderOptionsInitInternal(v18, 263);
  v8 = IIOImageReadSession::retainBytePointer(a2, &v20, 0);
  if (v8)
  {
    BytePtr = v8;
    v10 = 0;
  }

  else
  {
    v11 = IIOImageReadSession::copyData(a2);
    if (!v11)
    {
      return 0;
    }

    v10 = v11;
    BytePtr = CFDataGetBytePtr(v11);
  }

  v17[0] = BytePtr;
  v17[1] = IIOImageReadSession::getSize(a2);
  v12 = WebPDemuxInternal(v17, 0, 0, 263);
  if (v12)
  {
    v14 = v12;
    v15 = IIO_Reader_WebP::validateWebP(this, v13, v17);
    if (a5 && v15)
    {
      *a5 = WebPDemuxGetI(v14, 5);
    }

    os_unfair_lock_unlock(&IIO_Reader_WebP::getImageCount(IIOImageReadSession *,IIODictionary *,CGImageSourceStatus *,unsigned int *)::mutex);
    WebPDemuxDelete(v14);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    os_unfair_lock_unlock(&IIO_Reader_WebP::getImageCount(IIOImageReadSession *,IIODictionary *,CGImageSourceStatus *,unsigned int *)::mutex);
    if (v10)
    {
LABEL_12:
      CFRelease(v10);
      return 0;
    }
  }

  if (a2 && BytePtr)
  {
    IIOImageReadSession::releaseBytePointer(a2, v20);
  }

  return 0;
}

uint64_t IIO_Reader_WebP::updateSourceProperties(IIO_Reader_WebP *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  v41 = 0;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v37 = 0;
  Size = 0;
  WebPAnimDecoderOptionsInitInternal(v39, 263);
  v8 = IIOImageReadSession::retainBytePointer(a2, &v41, 0);
  if (v8)
  {
    BytePtr = v8;
    v20 = a3;
    v10 = 0;
  }

  else
  {
    v11 = IIOImageReadSession::copyData(a2);
    if (!v11)
    {
      return 0;
    }

    v10 = v11;
    v20 = a3;
    BytePtr = CFDataGetBytePtr(v11);
  }

  v37 = BytePtr;
  Size = IIOImageReadSession::getSize(a2);
  v12 = WebPDemuxInternal(&v37, 0, 0, 263);
  v13 = WebPDemuxGetI(v12, 5);
  v14 = WebPDemuxGetI(v12, 1);
  v15 = WebPDemuxGetI(v12, 2);
  v21 = WebPDemuxGetI(v12, 3);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  IIODictionary::IIODictionary(&v34);
  IIONumber::IIONumber(&v29, v14);
  IIODictionary::setObjectForKey(&v34, value[0], @"CanvasPixelWidth");
  IIONumber::~IIONumber(&v29);
  IIONumber::IIONumber(&v29, v15);
  IIODictionary::setObjectForKey(&v34, value[0], @"CanvasPixelHeight");
  IIONumber::~IIONumber(&v29);
  v33 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  *value = 0u;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  IIOArray::IIOArray(&v26);
  if (v13)
  {
    for (i = 1; i <= v13; ++i)
    {
      WebPDemuxGetFrame(v12, i, &v29);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      IIODictionary::IIODictionary(&v23);
      v17 = value[1];
      if (SLODWORD(value[1]) >= 11)
      {
        v18 = value[1];
      }

      else
      {
        v18 = 100;
      }

      IIONumber::IIONumber(v22, v18 / 1000.0);
      IIODictionary::setObjectForKey(&v23, v22, @"DelayTime");
      IIONumber::~IIONumber(v22);
      IIONumber::IIONumber(v22, v17 / 1000.0);
      IIODictionary::setObjectForKey(&v23, v22, @"UnclampedDelayTime");
      IIONumber::~IIONumber(v22);
      IIOArray::addObject(&v26, v24);
      IIODictionary::~IIODictionary(&v23);
    }
  }

  IIODictionary::setObjectForKey(&v34, v27, @"FrameInfo");
  IIONumber::IIONumber(&v23, v21);
  IIODictionary::setObjectForKey(&v34, &v23, @"LoopCount");
  IIONumber::~IIONumber(&v23);
  IIODictionary::setObjectForKey(v20, v35, @"{WebP}");
  if (v12)
  {
    WebPDemuxDelete(v12);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  else if (a2 && BytePtr)
  {
    IIOImageReadSession::releaseBytePointer(a2, v41);
  }

  IIOArray::~IIOArray(&v26);
  IIODictionary::~IIODictionary(&v34);
  return 0;
}

void sub_18604DDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  IIONumber::~IIONumber(&a15);
  IIOArray::~IIOArray(&a18);
  IIODictionary::~IIODictionary(&a32);
  _Unwind_Resume(a1);
}

void IIOImageDestination::IIOImageDestination(IIOImageDestination *this, CGDataConsumer *a2, IIO_Writer *a3, const __CFString *a4, uint64_t a5, IIODictionary *a6)
{
  *this = &unk_1EF4DA278;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  IIOImageDestination::setup(this, 2);
  v11 = CGImageWriteSessionCreateWithConsumer(a2);
  *(this + 2) = v11;
  *(this + 3) = CGImageSourceGetSource(v11);
  *(this + 8) = a3;
  *(this + 9) = IIO_Writer::utType(a3);
  *(this + 5) = a5;
  IIOImageDestination::setProperties(this, a6);
}

void sub_18604DF34(_Unwind_Exception *exception_object)
{
  v4 = v1[16];
  if (v4)
  {
    v1[17] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[14] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void IIOImageDestination::IIOImageDestination(IIOImageDestination *this, const __CFURL *a2, IIO_Writer *a3, const __CFString *a4, uint64_t a5, IIODictionary *a6)
{
  *this = &unk_1EF4DA278;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  IIOImageDestination::setup(this, 3);
  IIODictionary::getBoolForKey(a6, @"kCGImageDestinationShouldHideExtension");
  v11 = CGImageWriteSessionCreateWithURL(a2);
  *(this + 2) = v11;
  if (v11)
  {
    *(this + 3) = CGImageSourceGetSource(v11);
    *(this + 8) = a3;
    *(this + 9) = IIO_Writer::utType(a3);
    *(this + 5) = a5;
    IIOImageDestination::setProperties(this, a6);
  }

  else
  {
    *(this + 59) = -1;
  }
}

void sub_18604E038(_Unwind_Exception *exception_object)
{
  v4 = v1[16];
  if (v4)
  {
    v1[17] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[14] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void IIOImageDestination::createPixelDataProviderForExtendedRange(uint64_t a1, CGImage *a2)
{
  CFAbsoluteTimeGetCurrent();
  ColorSpace = CGImageGetColorSpace(a2);
  CGColorSpaceGetModel(ColorSpace);
  IIO_LoadHEIFSymbols();
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s - input is extended range\n", "createPixelDataProviderForExtendedRange");
  }

  operator new();
}

void sub_18604EAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  IIONumber::~IIONumber(&a26);
  IIODictionary::~IIODictionary((v26 - 128));
  _Unwind_Resume(a1);
}

BOOL IIOImageDestination::copyImageSource(IIOImageDestination *this, CGImageSourceRef isrc, IIODictionary *a3, BOOL a4, __CFError **a5)
{
  v17 = 0;
  Type = CGImageSourceGetType(isrc);
  if (!Type)
  {
    IIOImageDestination::copyImageSource(&v17);
    goto LABEL_13;
  }

  v11 = Type;
  v12 = *(this + 9);
  if ((CFStringCompare(Type, @"public.jpeg", 0) && CFStringCompare(v11, @"public.heic", 0) || CFStringCompare(v12, @"public.jpeg", 0)) && CFStringCompare(v11, v12, 0))
  {
    IIOImageDestination::copyImageSource(&v17);
LABEL_13:
    updated = 0;
    if (!a5)
    {
      return updated;
    }

    goto LABEL_9;
  }

  Source = CGImageSourceGetSource(isrc);
  memset(v16, 0, sizeof(v16));
  IIOMetadataUpdater::IIOMetadataUpdater(v16, Source, this, a3, a4);
  updated = IIOMetadataUpdater::updateDestination(v16, &v17);
  if (updated)
  {
    *(this + 232) = 1;
  }

  IIOMetadataUpdater::~IIOMetadataUpdater(v16);
  if (a5)
  {
LABEL_9:
    *a5 = v17;
  }

  return updated;
}

void IIOImageDestination::handlePerFrameGIFSaving(IIOImageDestination *this, CGImage *a2, IIODictionary *a3)
{
  if (*(this + 6) != 1)
  {
    goto LABEL_12;
  }

  v6 = IIODictionary::containsKey(*(this + 11), @"HasGlobalColorMap");
  v7 = *(this + 11);
  if (v6)
  {
    goto LABEL_3;
  }

  if (IIODictionary::containsKeyGroup(v7, @"HasGlobalColorMap", @"{GIF}"))
  {
    v9 = *(this + 11);
LABEL_6:
    BoolForKeyGroup = IIODictionary::getBoolForKeyGroup(v9, @"HasGlobalColorMap", @"{GIF}");
    goto LABEL_7;
  }

  if (!IIODictionary::containsKey(a3, @"HasGlobalColorMap"))
  {
    if (!IIODictionary::containsKeyGroup(a3, @"HasGlobalColorMap", @"{GIF}"))
    {
      v10 = this + 231;
      if ((*(this + 231) & 1) == 0)
      {
        v13 = *(this + 11);
        if (v13)
        {
          v14 = IIODictionary::containsKey(v13, @"HasGlobalColorMap");
          v15 = *(this + 11);
          if (v14)
          {
            *(this + 230) = !IIODictionary::getBoolForKey(v15, @"HasGlobalColorMap");
            *(this + 231) = 1;
          }

          else if (IIODictionary::containsKey(v15, @"{GIF}"))
          {
            ObjectForKey = IIODictionary::getObjectForKey(a3, @"{GIF}");
            if (ObjectForKey)
            {
              memset(v17, 0, sizeof(v17));
              IIODictionary::IIODictionary(v17, ObjectForKey);
              if (IIODictionary::containsKey(v17, @"HasGlobalColorMap"))
              {
                *(this + 230) = !IIODictionary::getBoolForKey(v17, @"HasGlobalColorMap");
                *(this + 231) = 1;
              }

              IIODictionary::~IIODictionary(v17);
            }
          }
        }
      }

      goto LABEL_8;
    }

    v9 = a3;
    goto LABEL_6;
  }

  v7 = a3;
LABEL_3:
  BoolForKeyGroup = IIODictionary::getBoolForKey(v7, @"HasGlobalColorMap");
LABEL_7:
  *(this + 231) = 1;
  v10 = this + 231;
  *(this + 230) = BoolForKeyGroup ^ 1;
LABEL_8:
  if ((*(this + 230) & 1) == 0 && *v10 == 1)
  {
    v11 = *(this + 5);
    v12 = CGImageGetWidth(a2) * v11;
    if (v12 * CGImageGetHeight(a2) >= 0x5F5E101)
    {
      *(this + 115) = 257;
      LogWarning("handlePerFrameGIFSaving", 2404, "*** NOTE: Global colormap was requested when saving GIF, but memory exceeds limit. Enabling local colormaps.\n");
    }
  }

LABEL_12:
  if (*(this + 230) == 1 && *(this + 231) == 1)
  {
    IIO_Reader::osType(*(this + 8));
    kdebug_trace();
    if ((***(this + 8))())
    {
      *(this + 231) = 0;
    }

    IIO_Reader::osType(*(this + 8));
    kdebug_trace();
    if ((*(this + 231) & 1) == 0)
    {
      _cg_jpeg_mem_term("handlePerFrameGIFSaving", 2426, "*** failed to write GIF frame #%d\n", *(this + 7));
    }

    IIOImageDestination::setPixelProviderAtIndex(this, 0, *(this + 7));
    IIOImageDestination::setImagePropertiesAtIndex(this, 0, *(this + 7));
    IIOImageDestination::setSourceImageAtIndex(this, 0, *(this + 7));
  }
}

void sub_18604EFD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIOImageDestination::handlePerFrameHEICSSaving(IIOImageDestination *this, CGImage *a2, IIODictionary *a3)
{
  if (*(this + 6) == 1)
  {
    *(this + 115) = 257;
    if (!*(this + 4))
    {
      *(this + 4) = (*(**(this + 8) + 8))(*(this + 8), *(this + 3), this);
    }
  }

  v4 = *(this + 7);
  PixelProviderAtIndex = IIOImageDestination::getPixelProviderAtIndex(this, v4);
  ImagePropertiesAtIndex = IIOImageDestination::getImagePropertiesAtIndex(this, v4);
  v7 = (*(**(this + 4) + 40))(*(this + 4), PixelProviderAtIndex, 0, ImagePropertiesAtIndex, *(this + 11), v4, 0);
  v8 = *(this + 231);
  if (v7)
  {
    v8 = 0;
  }

  *(this + 231) = v8;
  if ((v8 & 1) == 0)
  {
    _cg_jpeg_mem_term("handlePerFrameHEICSSaving", 2461, "*** failed to write HEICS frame #%d\n", *(this + 7));
  }

  IIOImageDestination::setPixelProviderAtIndex(this, 0, v4);
  IIOImageDestination::setImagePropertiesAtIndex(this, 0, v4);
  if (v4 == *(this + 5) - 1)
  {
    v9 = *(**(this + 4) + 48);

    v9();
  }
}

uint64_t IIOImageDestination::handleEncodingIntent(IIOImageDestination *this, CGImage *a2, IIODictionary *a3, IIODictionary *a4)
{
  if (a3)
  {
    if (IIODictionary::containsKey(a3, @"kCGImageDestinationEncodingIntent"))
    {
      ObjectForKey = IIODictionary::getObjectForKey(a3, @"kCGImageDestinationEncodingIntent");
      if (ObjectForKey)
      {
        v7 = ObjectForKey;
        TypeID = CFStringGetTypeID();
        if (TypeID == CFGetTypeID(v7) && CFStringCompare(v7, @"kCGImageDestinationEncodeForScreenshot", 0) == kCFCompareEqualTo && IIODictionary::getFloatForKey(a3, @"kCGImageDestinationLossyCompressionQuality") <= 0.0)
        {
          IIONumber::IIONumber(v10, 0.95);
          IIODictionary::setObjectForKey(a4, value, @"kCGImageDestinationLossyCompressionQuality");
          IIONumber::~IIONumber(v10);
        }
      }
    }
  }

  return 0;
}

void sub_18604F25C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::createCreateSDRandHDRGainMapFromHDR(IIOImageDestination *this, CGImageRef image, void **a3, CGImage **a4, IIODictionary *a5)
{
  v18 = 0;
  v19 = 0;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s ☀️\n", "createCreateSDRandHDRGainMapFromHDR");
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (CGColorSpaceUsesITUR_2100TF(ColorSpace) || CGColorSpaceUsesExtendedRange(ColorSpace))
  {
    IOSurfaceFromImage = IIO_CreateIOSurfaceFromImage(image, 2019963440);
    IIO_LoadHEIFSymbols();
    v15 = 0;
    v16 = 0;
    v17 = 0;
    IIODictionary::IIODictionary(&v15);
    Width = IOSurfaceGetWidth(IOSurfaceFromImage);
    IIONumber::IIONumber(&v14, Width);
    IIODictionary::setObjectForKey(&v15, &v14, *gIIO_kCVPixelBufferWidthKey);
    IIONumber::~IIONumber(&v14);
    Height = IOSurfaceGetHeight(IOSurfaceFromImage);
    IIONumber::IIONumber(&v14, Height);
    IIODictionary::setObjectForKey(&v15, &v14, *gIIO_kCVPixelBufferHeightKey);
    IIONumber::~IIONumber(&v14);
    PixelFormat = IOSurfaceGetPixelFormat(IOSurfaceFromImage);
    IIONumber::IIONumber(&v14, PixelFormat);
    IIODictionary::setObjectForKey(&v15, &v14, *gIIO_kCVPixelBufferPixelFormatTypeKey);
    IIONumber::~IIONumber(&v14);
    IIODictionary::setObjectForKey(&v15, ColorSpace, *gIIO_kCVImageBufferCGColorSpaceKey);
    v12 = IIOCreatePixelBufferAttributesForHDRType(1, v16, a3[1], &v19);
    if (!v12)
    {
      IIO_CreateIOSurfaceWithPixelBufferAttributes(v19);
    }

    LogError("createCreateSDRandHDRGainMapFromHDR", 3291, "*** ERROR: failed to create output pixel buffer attributes (%d)\n", v12);
    if (IOSurfaceFromImage)
    {
      CFRelease(IOSurfaceFromImage);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    IIODictionary::~IIODictionary(&v15);
  }

  else
  {
    _cg_jpeg_mem_term("createCreateSDRandHDRGainMapFromHDR", 3270, "*** ERROR: input image is not HDR\n");
    return 4294967246;
  }

  return v12;
}

void sub_18604F89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

void IIOImageDestination::addAuxiliaryDataInfo(IIOImageDestination *this, const __CFString *a2, const void **a3)
{
  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeDisparity", a2, 0) == kCFCompareEqualTo)
  {
    v8 = 0;
    v6 = 0;
    v10 = 1;
    goto LABEL_35;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeDepth", a2, 0) == kCFCompareEqualTo)
  {
    v8 = 0;
    v6 = 0;
    v10 = 2;
    goto LABEL_35;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeAlpha", a2, 0) == kCFCompareEqualTo)
  {
    v8 = 0;
    v6 = 0;
    v10 = 3;
    goto LABEL_35;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypePortraitEffectsMatte", a2, 0) == kCFCompareEqualTo)
  {
    v8 = 0;
    v6 = 0;
    v10 = 5;
    goto LABEL_35;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationSkinMatte", a2, 0) == kCFCompareEqualTo)
  {
    v7 = 0;
    v9 = 1;
    v11 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte;
LABEL_27:
    v8 = 0;
    v6 = **v11;
    goto LABEL_28;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationHairMatte", a2, 0) == kCFCompareEqualTo)
  {
    v7 = 0;
    v9 = 1;
    v11 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte;
    goto LABEL_27;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationTeethMatte", a2, 0) == kCFCompareEqualTo)
  {
    v7 = 0;
    v9 = 1;
    v11 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte;
    goto LABEL_27;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationGlassesMatte", a2, 0) == kCFCompareEqualTo)
  {
    v9 = 0;
    v7 = 1;
    v11 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte;
    goto LABEL_27;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationSkyMatte", a2, 0) == kCFCompareEqualTo)
  {
    v9 = 0;
    v7 = 2;
    v11 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte;
    goto LABEL_27;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeHDRGainMap", a2, 0) == kCFCompareEqualTo)
  {
    v9 = 0;
    v7 = 3;
    v11 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap;
    goto LABEL_27;
  }

  v6 = @"kCGImageAuxiliaryDataTypeISOGainMap";
  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeISOGainMap", a2, 0))
  {
    if (!IIO_OSAppleInternalBuild() || !CFStringHasPrefix(a2, @"http:") && !CFStringHasPrefix(a2, @"https:") && !CFStringHasPrefix(a2, @"urn:"))
    {
      goto LABEL_61;
    }

    v7 = 0;
    v8 = 1;
    v6 = a2;
    v9 = 1;
LABEL_28:
    if (v6)
    {
      v12 = CFStringCompare(v6, @"FIG_STRING_SYMBOL_NOT_FOUND", 0);
      if (v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = v9;
      }

      if (v13)
      {
        if (v12)
        {
          v10 = 4;
          goto LABEL_35;
        }
      }

      else
      {
        LogError("addAuxiliaryDataInfo", 4796, "*** ERROR: addAuxiliaryDataInfo - MediaToolbox symbol not found [%d]\n", v7);
      }
    }

LABEL_61:
    v26 = 0;
    v27 = 0;
    v28 = 0;
    IIOString::IIOString(&v26, a2);
    v21 = IIOString::utf8String(&v26);
    LogError("addAuxiliaryDataInfo", 4878, "*** ERROR: unsupported auxiliaryDataType: '%s'\n", v21);
    goto LABEL_62;
  }

  v8 = 0;
  v10 = 98;
LABEL_35:
  IIOImageDestination::swapWriterIfNeeded(this, 0, 1);
  v14 = *(this + 8);
  if (!v14)
  {
    v17 = "*** ERROR: depth/disparity is not supported on this platform\n";
    v18 = 4810;
    goto LABEL_57;
  }

  if (((*(*v14 + 40))(v14) & 1) == 0)
  {
    v19 = IIO_Writer::utType(*(this + 8));
    IIOString::IIOString(&v26, v19);
    v20 = IIOString::utf8String(&v26);
    LogError("addAuxiliaryDataInfo", 4816, "*** ERROR: can't add depth/disparity to '%s'\n", v20);
LABEL_62:
    IIOString::~IIOString(&v26);
    return;
  }

  if (*(this + 235))
  {
    if (IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoData") & 1) != 0 || (IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoImage") & 1) != 0 || (IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoPixelBuffer") & 1) != 0 || (IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoIOSurface"))
    {
      v15 = 1;
    }

    else
    {
      LogError("addAuxiliaryDataInfo", 4836, "*** ERROR: 'auxiliaryDataInfoDictionary' is missing 'kCGImageAuxiliaryDataInfoData' key\n");
      v15 = 0;
    }

    if ((IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoDataDescription") & 1) == 0 && IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoData"))
    {
      LogError("addAuxiliaryDataInfo", 4842, "*** ERROR: 'auxiliaryDataInfoDictionary' is missing 'kCGImageAuxiliaryDataInfoDataDescription' key\n");
      v15 = 0;
    }

    if ((IIODictionary::containsKey(a3, @"kCGImageAuxiliaryDataInfoMetadata") & 1) == 0)
    {
      _cg_jpeg_mem_term("addAuxiliaryDataInfo", 4847, "*** 'auxiliaryDataInfoDictionary' is missing (optional) 'kCGImageAuxiliaryDataInfoMetadata' key\n");
    }

    if (v15)
    {
      Mutable = *(this + 19);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        *(this + 19) = Mutable;
      }

      v26 = 0;
      v27 = 0;
      v28 = 0;
      IIOArray::IIOArray(&v26, Mutable);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      IIODictionary::IIODictionary(&v23);
      IIODictionary::setObjectForKey(&v23, a3[1], a2);
      IIONumber::IIONumber(v22, *(this + 14));
      IIODictionary::setObjectForKey(&v23, v22, @"ImageIndex");
      IIONumber::~IIONumber(v22);
      IIONumber::IIONumber(v22, v10);
      IIODictionary::setObjectForKey(&v23, v22, "AuxiliaryImageType");
      IIONumber::~IIONumber(v22);
      IIONumber::IIONumber(v22, v8);
      IIODictionary::setObjectForKey(&v23, v22, "customMetadata");
      IIONumber::~IIONumber(v22);
      if (v6)
      {
        IIODictionary::setObjectForKey(&v23, v6, "AuxiliaryImageURN");
      }

      IIOArray::addObject(&v26, v24);
      IIODictionary::~IIODictionary(&v23);
      IIOArray::~IIOArray(&v26);
    }

    return;
  }

  v17 = "*** ERROR: please add an image before calling CGImageDestinationAddAuxiliaryDataInfo\n";
  v18 = 4823;
LABEL_57:

  LogError("addAuxiliaryDataInfo", v18, v17);
}

void sub_18604FF80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIOArray::~IIOArray(va2);
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::createCreateSDRandISOGainMapFromHDR(IIOImageDestination *this, CGImageRef image, void **a3, CGImage **a4, IIODictionary *a5)
{
  v19 = 0;
  v20 = 0;
  cf = 0;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "createCreateSDRandISOGainMapFromHDR");
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (CGColorSpaceUsesITUR_2100TF(ColorSpace) || CGColorSpaceUsesExtendedRange(ColorSpace))
  {
    IOSurfaceFromImage = IIO_CreateIOSurfaceFromImage(image, 2019963440);
    IIO_LoadHEIFSymbols();
    v15 = 0;
    v16 = 0;
    v17 = 0;
    IIODictionary::IIODictionary(&v15);
    Width = IOSurfaceGetWidth(IOSurfaceFromImage);
    IIONumber::IIONumber(&v14, Width);
    IIODictionary::setObjectForKey(&v15, &v14, *gIIO_kCVPixelBufferWidthKey);
    IIONumber::~IIONumber(&v14);
    Height = IOSurfaceGetHeight(IOSurfaceFromImage);
    IIONumber::IIONumber(&v14, Height);
    IIODictionary::setObjectForKey(&v15, &v14, *gIIO_kCVPixelBufferHeightKey);
    IIONumber::~IIONumber(&v14);
    PixelFormat = IOSurfaceGetPixelFormat(IOSurfaceFromImage);
    IIONumber::IIONumber(&v14, PixelFormat);
    IIODictionary::setObjectForKey(&v15, &v14, *gIIO_kCVPixelBufferPixelFormatTypeKey);
    IIONumber::~IIONumber(&v14);
    IIODictionary::setObjectForKey(&v15, ColorSpace, *gIIO_kCVImageBufferCGColorSpaceKey);
    v12 = IIOCreatePixelBufferAttributesForHDRType(1, v16, a3[1], &v20);
    if (!v12)
    {
      IIO_CreateIOSurfaceWithPixelBufferAttributes(v20);
    }

    LogError("createCreateSDRandISOGainMapFromHDR", 3145, "*** ERROR: failed to create output pixel buffer attributes (%d)\n", v12);
    if (cf)
    {
      CFRelease(cf);
    }

    if (IOSurfaceFromImage)
    {
      CFRelease(IOSurfaceFromImage);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (v19)
    {
      CFRelease(v19);
    }

    IIODictionary::~IIODictionary(&v15);
  }

  else
  {
    _cg_jpeg_mem_term("createCreateSDRandISOGainMapFromHDR", 3126, "*** ERROR: input image is not HDR\n");
    return 4294967246;
  }

  return v12;
}

void sub_1860506F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::updatePreserveGainMapFlag(IIOImageDestination *this, IIOImageSource *a2, IIODictionary *a3)
{
  *(this + 226) = -1;
  if (IIODictionary::containsKey(a3, @"kCGImageDestinationPreserveGainMap"))
  {
    BoolForKey = IIODictionary::getBoolForKey(a3, @"kCGImageDestinationPreserveGainMap");
    *(this + 226) = 0;
    if (BoolForKey)
    {
      Properties = IIOImageSource::getProperties(a2, 0);
      if (Properties)
      {
        ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(Properties, @"Images", @"{FileContents}");
        if (ObjectForKeyGroup)
        {
          v9 = ObjectForKeyGroup;
          if (CFArrayGetCount(ObjectForKeyGroup))
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
            if (ValueAtIndex)
            {
              Value = CFDictionaryGetValue(ValueAtIndex, @"AuxiliaryData");
              if (Value)
              {
                v12 = Value;
                Count = CFArrayGetCount(Value);
                if (Count < 1)
                {
LABEL_15:
                  v19 = 0;
                }

                else
                {
                  v14 = Count;
                  v15 = 0;
                  while (1)
                  {
                    v16 = CFArrayGetValueAtIndex(v12, v15);
                    if (v16)
                    {
                      v17 = CFDictionaryGetValue(v16, @"AuxiliaryDataType");
                      if (v17)
                      {
                        v18 = v17;
                        if (CFStringCompare(v17, @"kCGImageAuxiliaryDataTypeHDRGainMap", 0) == kCFCompareEqualTo || CFStringCompare(v18, @"kCGImageAuxiliaryDataTypeISOGainMap", 0) == kCFCompareEqualTo)
                        {
                          break;
                        }
                      }
                    }

                    if (v14 == ++v15)
                    {
                      goto LABEL_15;
                    }
                  }

                  v19 = 1;
                }

                *(this + 226) = v19;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t IIOImageDestination::validateSDRandHDRRequests(CFMutableArrayRef *this)
{
  ImagePropertiesAtIndex = IIOImageDestination::getImagePropertiesAtIndex(this, 0);
  v3 = IIOImageDestination::getImagePropertiesAtIndex(this, 1uLL);
  if (!IIODictionary::getBoolForKeyGroup(ImagePropertiesAtIndex, @"kCGImageDestinationEncodeIsBaseImage", @"kCGImageDestinationEncodeRequestOptions") || !IIODictionary::getBoolForKeyGroup(v3, @"kCGImageDestinationEncodeGenerateGainMapWithBaseImage", @"kCGImageDestinationEncodeRequestOptions"))
  {
    return 4294967246;
  }

  SourceImageAtIndex = IIOImageDestination::getSourceImageAtIndex(this, 0);
  v5 = IIOImageDestination::getSourceImageAtIndex(this, 1uLL);
  Width = CGImageGetWidth(SourceImageAtIndex);
  if (Width != CGImageGetWidth(v5) || (v7 = CGImageGetHeight(SourceImageAtIndex), v7 != CGImageGetHeight(v5)))
  {
    v14 = CGImageGetWidth(SourceImageAtIndex);
    Height = CGImageGetHeight(SourceImageAtIndex);
    v16 = CGImageGetWidth(v5);
    v17 = CGImageGetHeight(v5);
    LogError("validateSDRandHDRRequests", 3072, "*** ERROR: dimensions of base and alternate image don't match (%dx%d) vs. (%dx%d)\n", v14, Height, v16, v17);
    return 4294967246;
  }

  CGImageGetContentHeadroom();
  v9 = v8;
  CGImageGetContentHeadroom();
  v11 = v10;
  result = 0;
  if (v9 == 1.0 && v10 <= v9)
  {
    ColorSpace = CGImageGetColorSpace(v5);
    if (CGColorSpaceUsesExtendedRange(ColorSpace) && v11 == 0.0)
    {
      return 0;
    }

    else
    {
      LogError("validateSDRandHDRRequests", 3089, "*** ERROR: sdrImage headroom: %g   hdrImage headroom: %g - will save SDR only image\n", v9, v11);
      *(this + 234) = 0;
      IIOImageDestination::setSourceImageAtIndex(this, 0, 1);
      IIOImageDestination::setImagePropertiesAtIndex(this, 0, 1u);
      CFArrayRemoveValueAtIndex(this[12], 1);
      result = 0;
      this[6] = 1;
    }
  }

  return result;
}

uint64_t IIOImageDestination::getSourceImageAtIndex(IIOImageDestination *this, unint64_t a2)
{
  v2 = *(this + 13);
  v3 = (*(this + 14) - v2) >> 3;
  if (v3 > a2)
  {
    return *(v2 + 8 * a2);
  }

  _cg_jpeg_mem_term("getSourceImageAtIndex", 4573, "getSourceImageAtIndex index (%d) larger than vector size (%d)\n", a2, v3);
  return 0;
}

uint64_t IIOImageDestination::createImageFromSource(CGImageSourceRef *this, size_t a2, IIODictionary *a3, IIODictionary *a4, CGImage **a5)
{
  Uint32ForKey = IIODictionary::getUint32ForKey(a3, @"kCGImageSourceSubsampleFactor");
  BoolForKey = IIODictionary::getBoolForKey(a3, @"kCGImageSourceEnableRestrictedDecoding");
  v11 = IIODictionary::getUint32ForKey(a3, @"kCGImageDestinationImageMaxPixelSize");
  v27 = 0;
  options = 0;
  v29 = 0;
  IIODictionary::IIODictionary(&v27);
  IIODictionary::setObjectForKey(&v27, *MEMORY[0x1E695E4C0], @"kCGImageSourceUseHardwareAcceleration");
  if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
  {
    ImageIOLog("••• UseHardwareAcceleration: ❌  (using CG to render image) | %s:%d\n", "createImageFromSource", 3405);
  }

  if (BoolForKey)
  {
    IIODictionary::setObjectForKey(&v27, *MEMORY[0x1E695E4D0], @"kCGImageSourceEnableRestrictedDecoding");
  }

  if (!v11)
  {
    goto LABEL_30;
  }

  IIONumber::IIONumber(v25, v11);
  IIODictionary::setObjectForKey(&v27, value, @"kCGImageDestinationImageMaxPixelSize");
  IIONumber::~IIONumber(v25);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(this[20], a2, options);
  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(ImageAtIndex);
  if (ImageAtIndex)
  {
    CFRelease(ImageAtIndex);
  }

  if (Width >= Height)
  {
    v15 = Height;
  }

  else
  {
    v15 = Width;
  }

  if (v11 < v15 >> 3)
  {
    v16 = 8;
    goto LABEL_16;
  }

  if (v11 < v15 >> 2)
  {
    v16 = 4;
LABEL_16:
    if (v16 > Uint32ForKey)
    {
      Uint32ForKey = v16;
    }

    goto LABEL_23;
  }

  v17 = v15 >> 1;
  v18 = 2 * (v17 > v11);
  if (v18 <= Uint32ForKey)
  {
    v18 = Uint32ForKey;
  }

  if (v17 > v11)
  {
    Uint32ForKey = v18;
  }

LABEL_23:
  if (*(this + 227) != 1 || (v19 = IIOImageSource::reader(*(this[20] + 3)), !(*(*v19 + 208))(v19)))
  {
LABEL_30:
    if (Uint32ForKey)
    {
      IIONumber::IIONumber(v25, Uint32ForKey);
      IIODictionary::setObjectForKey(&v27, value, @"kCGImageSourceSubsampleFactor");
      IIONumber::~IIONumber(v25);
      v22 = options;
    }

    else
    {
      v22 = 0;
    }

    ThumbnailAtIndex = CGImageSourceCreateImageAtIndex(this[20], a2, v22);
    goto LABEL_34;
  }

  IIODictionary::setObjectForKey(&v27, @"kCGImageSourceDecodeToHDR", @"kCGImageSourceDecodeRequest");
  if (Uint32ForKey)
  {
    IIONumber::IIONumber(v25, Uint32ForKey);
    IIODictionary::setObjectForKey(&v27, value, @"kCGImageSourceSubsampleFactor");
    IIONumber::~IIONumber(v25);
  }

  IIONumber::IIONumber(v25, v11);
  IIODictionary::setObjectForKey(&v27, value, @"kCGImageSourceThumbnailMaxPixelSize");
  IIONumber::~IIONumber(v25);
  IIODictionary::setObjectForKey(&v27, *MEMORY[0x1E695E4D0], @"kCGImageSourceCreateThumbnailFromImageAlways");
  if (IIODictionary::containsKey(a3, @"kCGImageSourceCreateThumbnailWithTransform"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a3, @"kCGImageSourceCreateThumbnailWithTransform");
    IIODictionary::setObjectForKey(&v27, ObjectForKey, @"kCGImageSourceCreateThumbnailWithTransform");
    IIONumber::IIONumber(v25, 1);
    IIODictionary::setObjectForKey(a4, v25, @"Orientation");
    IIONumber::~IIONumber(v25);
  }

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(this[20], a2, options);
LABEL_34:
  *a5 = ThumbnailAtIndex;
  IIODictionary::~IIODictionary(&v27);
  return 0;
}

void sub_186050F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

void IIOImageDestination::updateDateTime(IIOImageDestination *this, IIODictionary *a2, IIODictionary *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (IIODictionary::containsKey(a2, @"{IPTC}"))
      {
        ObjectForKey = IIODictionary::getObjectForKey(a3, @"DateTimeDigitized");
        if (ObjectForKey || (ObjectForKey = IIODictionary::getObjectForKeyGroup(a3, @"DateTimeDigitized", @"{Exif}")) != 0)
        {
          v13 = ObjectForKey;
          IPTCDateStringWithXMPDateTimeString = CreateIPTCDateStringWithXMPDateTimeString(ObjectForKey, v6, v7, v8, v9, v10, v11, v12);
          IPTCTimeStringWithXMPDateTimeString = CreateIPTCTimeStringWithXMPDateTimeString(v13);
          IIODictionary::setObjectForKeyGroup(a2, IPTCDateStringWithXMPDateTimeString, @"DateCreated", @"{IPTC}");
          IIODictionary::setObjectForKeyGroup(a2, IPTCDateStringWithXMPDateTimeString, @"DigitalCreationDate", @"{IPTC}");
          IIODictionary::setObjectForKeyGroup(a2, IPTCTimeStringWithXMPDateTimeString, @"TimeCreated", @"{IPTC}");

          IIODictionary::setObjectForKeyGroup(a2, IPTCTimeStringWithXMPDateTimeString, @"DigitalCreationTime", @"{IPTC}");
        }
      }
    }
  }
}

uint64_t IIOImageDestination::addImageFromSource(IIOImageDestination *this, CFTypeRef cf, uint64_t a3, IIODictionary *a4)
{
  if (*(this + 2))
  {
    if (*(this + 8))
    {
      if (a4)
      {
        if (*(this + 233))
        {
          IIOImageDestination::addImageFromSource();
        }

        else
        {
          if (!*(this + 232))
          {
            *(this + 20) = CFRetain(cf);
            *(this + 22) = a3;
            Source = CGImageSourceGetSource(cf);
            if ((gIIODebugFlags & 0x2000000000000) != 0)
            {
              IIODebugOrientation("addImageFromSource", 3533, a4);
            }

            if (IIODictionary::containsKey(a4, @"kCGImageDestinationImageMaxPixelSize"))
            {
              IIODictionary::getUint32ForKey(a4, @"kCGImageDestinationImageMaxPixelSize");
            }

            IIOImageDestination::updatePreserveGainMapFlag(this, Source, a4);
            if (*(this + 226) == 1)
            {
              IIODictionary::removeObjectForKey(a4, @"kCGImageDestinationCreateHDRGainMap");
              IIODictionary::removeObjectForKey(a4, @"kCGImageSourceDecodeRequest");
            }

            IIOImageDestination::updateCreateHDRGainMapFlag(this, 0, a4);
            operator new();
          }

          IIOImageDestination::addImageFromSource();
        }
      }

      else
      {
        IIOImageDestination::addImageFromSource();
      }
    }

    else
    {
      IIOImageDestination::addImageFromSource();
    }
  }

  else
  {
    IIOImageDestination::addImageFromSource();
  }

  return 0;
}

void dictionaryApplier(const void *key, const __CFDictionary *a2, CFMutableDictionaryRef theDict)
{
  if (theDict)
  {
    if (*MEMORY[0x1E695E738] == a2)
    {

      CFDictionaryRemoveValue(theDict, key);
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, key);
      if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()) && (v9 = CFGetTypeID(a2), v9 == CFDictionaryGetTypeID()))
      {

        CFDictionaryApplyFunction(a2, dictionaryApplier, v7);
      }

      else
      {

        CFDictionarySetValue(theDict, key, a2);
      }
    }
  }
}

void IIOImageDestination::preserveGainMapFromSource(IIOImageDestination *this, CGImageSource *a2, unint64_t a3, __CFString *a4, IIODictionary *a5, IIODictionary *a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  IIODictionary::IIODictionary(&v42);
  IIODictionary::setObjectForKey(&v42, @"kCGImageAuxiliaryDataRepresentationIOSurface", @"kCGImageAuxiliaryDataRepresentation");
  v11 = CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions(a2, a3, a4, v43);
  if (!v11)
  {
    goto LABEL_37;
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(a5, @"PixelWidth");
  v13 = IIODictionary::getUint32ForKey(a5, @"PixelHeight");
  v35 = IIODictionary::getUint32ForKey(a5, @"Orientation");
  v32 = CFDictionaryGetValue(v11, @"kCGImageAuxiliaryDataInfoMetadata");
  v14 = CFDictionaryGetValue(v11, @"kCGImageAuxiliaryDataInfoIOSurface");
  Width = IOSurfaceGetWidth(v14);
  Height = IOSurfaceGetHeight(v14);
  v17 = Height;
  v34 = a4;
  if (Uint32ForKey <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = Uint32ForKey;
  }

  if (a6)
  {
    if (IIODictionary::containsKey(a6, @"kCGImageDestinationImageMaxPixelSize") && (v19 = IIODictionary::getUint32ForKey(a6, @"kCGImageDestinationImageMaxPixelSize"), v20 = v18, v18 = v19, v19 != v20))
    {
      v24 = v19 / v13;
      if (v19 / Uint32ForKey < v24)
      {
        v24 = v19 / Uint32ForKey;
      }

      v22 = (v24 * Uint32ForKey) >> 1;
      v21 = (v24 * v13) >> 1;
    }

    else
    {
      v21 = v17;
      v22 = Width;
    }

    if (v35 == 1)
    {
      v23 = 0;
    }

    else
    {
      v23 = IIODictionary::containsKey(a6, @"kCGImageSourceCreateThumbnailWithTransform");
    }
  }

  else
  {
    v23 = 0;
    v22 = Width;
    v21 = Height;
  }

  v25 = IIOCreatePixelBufferWithIOSurfaceAndOptions(v14);
  v40 = 0;
  cf = 0;
  v38 = 0;
  v39 = 0;
  IIODictionary::IIODictionary(&v38);
  if (v18)
  {
    v45.size.width = Width;
    v45.size.height = v17;
    v45.origin.x = 0.0;
    v45.origin.y = 0.0;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v45);
    if (DictionaryRepresentation)
    {
      IIODictionary::setObjectForKey(&v38, DictionaryRepresentation, *gIIO_kCMPhotoScaleAndRotateOption_SourceCropRectDictionary);
      CFRelease(DictionaryRepresentation);
    }

    v27 = v35 > 4;
    v28 = (v23 & v27) == 0;
    if ((v23 & v27) != 0)
    {
      v29 = v21;
    }

    else
    {
      v29 = v22;
    }

    if (v28)
    {
      v30 = v21;
    }

    else
    {
      v30 = v22;
    }

    v46.size.width = v29;
    v46.size.height = v30;
    v46.origin.x = 0.0;
    v46.origin.y = 0.0;
    v31 = CGRectCreateDictionaryRepresentation(v46);
    if (v31)
    {
      IIODictionary::setObjectForKey(&v38, v31, *gIIO_kCMPhotoScaleAndRotateOption_DestinationCropRectDictionary);
      CFRelease(v31);
    }
  }

  if (v23)
  {
    IIONumber::IIONumber(v36, v35);
    IIODictionary::setObjectForKey(&v38, value, *gIIO_kCMPhotoScaleAndRotateOption_SourceExifOrientation);
    IIONumber::~IIONumber(v36);
  }

  if (gFunc_CMPhotoScaleAndRotateSessionTransformImage(0, v25, v39, &cf))
  {
    if (!v25)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v36[0] = 0;
  v36[1] = 0;
  value = 0;
  IIODictionary::IIODictionary(v36);
  IIODictionary::setObjectForKey(v36, v32, @"kCGImageAuxiliaryDataInfoMetadata");
  IIODictionary::setObjectForKey(v36, cf, @"kCGImageAuxiliaryDataInfoPixelBuffer");
  IIOImageDestination::addAuxiliaryDataInfo(this, v34, v36);
  IIODictionary::~IIODictionary(v36);
  if (v25)
  {
LABEL_33:
    CFRelease(v25);
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v11);
  IIODictionary::~IIODictionary(&v38);
LABEL_37:
  IIODictionary::~IIODictionary(&v42);
}

void sub_186051C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::addImageAndMetadata(IIOImageDestination *this, CGImage *a2, const CGImageMetadata *a3, IIODictionary *a4)
{
  if (*(this + 2))
  {
    if (*(this + 233))
    {
      IIOImageDestination::addImageAndMetadata();
    }

    else
    {
      if (!*(this + 232))
      {
        operator new();
      }

      IIOImageDestination::addImageAndMetadata();
    }
  }

  else
  {
    IIOImageDestination::addImageAndMetadata();
  }

  return 4294967246;
}

uint64_t IIOImageDestination::finalizeUsingAppleJPEGRecode(IIOImageDestination *this)
{
  Source = CGImageSourceGetSource(*(this + 20));
  if ((gIIODebugFlags & 0xC) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    Current = 0.0;
  }

  kdebug_trace();
  v5 = AppleJPEGReadPlugin::IIORecodeAppleJPEG_to_JPEG(this, Source, v4);
  kdebug_trace();
  if (v5)
  {
    if ((gIIODebugFlags & 0xC) != 0)
    {
      v6 = CFAbsoluteTimeGetCurrent();
      ImageIOLog("    'jpeg' RecodeAppleJPEG  \ttime: %g ms\n", (v6 - Current) * 1000.0);
    }

    return 0;
  }

  else
  {
    v7 = 4294967246;
    LogWarning("finalizeUsingAppleJPEGRecode", 3982, "*** NOTE: CGImageDestinationRecodeJPEG failed [%d] - falling back to full transcode\n", -50);
  }

  return v7;
}

uint64_t IIOImageDestination::finalizeUsingHEIFRecode(IIOImageDestination *this)
{
  Source = CGImageSourceGetSource(*(this + 20));
  kdebug_trace();
  v3 = HEIFReadPlugin::IIORecodeHEIF_to_JPEG(this, Source, *(this + 51));
  kdebug_trace();
  if (v3)
  {
    if (v3 == -15470)
    {
      LogError("finalizeUsingHEIFRecode", 4009, "*** ERROR: media server is NOT running [kCMPhotoError_XPCError / -15470]\n");
    }

    else
    {
      _cg_jpeg_mem_term("finalizeUsingHEIFRecode", 4017, "*** NOTE: CMPhotoDecompressionContainerJFIFTranscode failed [0x%08X] - falling back to full transcode\n", v3);
    }
  }

  return v3;
}

uint64_t IIOImageDestination::writeImageAndGainmap(CFMutableArrayRef *this)
{
  SourceImageAtIndex = IIOImageDestination::getSourceImageAtIndex(this, 0);
  v3 = IIOImageDestination::getSourceImageAtIndex(this, 1uLL);
  v4 = CGImageRetain(v3);
  ImagePropertiesAtIndex = IIOImageDestination::getImagePropertiesAtIndex(this, 0);
  memset(v57, 0, 24);
  v6 = IIOImageDestination::getImagePropertiesAtIndex(this, 1uLL);
  IIODictionary::IIODictionary(v57, *(v6 + 8));
  IIOImageDestination::setSourceImageAtIndex(this, 0, 1);
  IIOImageDestination::setImagePropertiesAtIndex(this, 0, 1u);
  CFArrayRemoveValueAtIndex(this[12], 1);
  this[6] = 1;
  AlphaInfo = CGImageGetAlphaInfo(SourceImageAtIndex);
  ColorSpace = CGImageGetColorSpace(SourceImageAtIndex);
  theString1 = CGColorSpaceGetName(ColorSpace);
  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(ImagePropertiesAtIndex, @"kCGImageDestinationEncodeBaseColorSpace", @"kCGImageDestinationEncodeRequestOptions");
  v9 = 0;
  if (ObjectForKeyGroup && theString1)
  {
    v9 = CFStringCompare(theString1, ObjectForKeyGroup, 0) != kCFCompareEqualTo;
  }

  v40 = v9;
  v10 = IIODictionary::getObjectForKeyGroup(v57, @"kCGImageDestinationEncodeAlternateColorSpace", @"kCGImageDestinationEncodeRequestOptions");
  if (!v10)
  {
    LogError("writeImageAndGainmap", 4308, "*** ERROR: 'kCGImageDestinationEncodeAlternateColorSpace' is not specified\n");
  }

  IsSDR = IIOImageIsSDR(SourceImageAtIndex);
  if ((IsSDR & IIOImageIsSDR(v4)) == 1)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    __p = 0;
    v52 = 0;
    value = 0;
    IIOShortCGImageDescStr(SourceImageAtIndex, &v54);
  }

  IOSurfaceFromImage = IIO_CreateIOSurfaceFromImage(SourceImageAtIndex, 0);
  v44 = IIO_CreateIOSurfaceFromImage(v4, 0);
  v13 = IIOCreatePixelBufferWithIOSurfaceAndOptions(IOSurfaceFromImage);
  v14 = IIOCreatePixelBufferWithIOSurfaceAndOptions(v44);
  v15 = v14;
  if (v13 && v14)
  {
    cf = 0;
    v50 = 0;
    v48 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    IIODictionary::IIODictionary(&v54);
    Width = CGImageGetWidth(SourceImageAtIndex);
    IIONumber::IIONumber(&__p, Width);
    IIODictionary::setObjectForKey(&v54, value, *gIIO_kCVPixelBufferWidthKey);
    IIONumber::~IIONumber(&__p);
    Height = CGImageGetHeight(SourceImageAtIndex);
    IIONumber::IIONumber(&__p, Height);
    IIODictionary::setObjectForKey(&v54, value, *gIIO_kCVPixelBufferHeightKey);
    IIONumber::~IIONumber(&__p);
    v18 = CGImageGetColorSpace(v4);
    IIODictionary::setObjectForKey(&v54, v18, *gIIO_kCVImageBufferCGColorSpaceKey);
    CGImageGetContentHeadroom();
    IIONumber::IIONumber(&__p, v19);
    IIODictionary::setObjectForKey(&v54, value, @"IOSurfaceContentHeadroom");
    IIONumber::~IIONumber(&__p);
    PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(v15);
    IIONumber::IIONumber(&__p, PixelFormatType);
    v39 = v10;
    IIODictionary::setObjectForKey(&v54, value, *gIIO_kCVPixelBufferPixelFormatTypeKey);
    IIONumber::~IIONumber(&__p);
    Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(ImagePropertiesAtIndex, @"kCGImageDestinationEncodeBasePixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
    v22 = Uint32ForKeyGroup;
    if (AlphaInfo - 1 < 4 || AlphaInfo == kCGImageAlphaOnly)
    {
      if (Uint32ForKeyGroup > 2019963439)
      {
        v23 = v40;
        if (Uint32ForKeyGroup == 2019963440 || Uint32ForKeyGroup == 2019963442 || Uint32ForKeyGroup == 2019963956)
        {
          v22 = 1815491698;
        }
      }

      else
      {
        v23 = v40;
        if (Uint32ForKeyGroup == 875704422 || Uint32ForKeyGroup == 875704934 || Uint32ForKeyGroup == 875836518)
        {
          v22 = 1111970369;
        }
      }
    }

    else
    {
      v23 = v40;
    }

    if (v23 || IOSurfaceGetPixelFormat(IOSurfaceFromImage) != v22)
    {
      __p = 0;
      v52 = 0;
      value = 0;
      IIODictionary::IIODictionary(&__p);
      if (v22)
      {
        IIONumber::IIONumber(v46, v22);
        IIODictionary::setObjectForKey(&__p, v47, @"kCGTargetPixelFormat");
        IIONumber::~IIONumber(v46);
      }

      if (ObjectForKeyGroup)
      {
        IIODictionary::setObjectForKey(&__p, ObjectForKeyGroup, @"kCGTargetColorSpace");
      }

      else
      {
        IIODictionary::setObjectForKey(&__p, theString1, @"kCGTargetColorSpace");
      }

      v26 = CGImageCreatePixelBufferAttributesForHDRTarget(1, v55, v52, &cf);
      if (v26)
      {
        _cg_jpeg_mem_term("writeImageAndGainmap", 4395, "*** ERROR: kCGImageHDRTargetSDR - CGImageCreatePixelBufferAttributesForHDRTarget failed [err:%d]\n", v26);
      }

      PixelBufferWithAttributes = IIOImageDestination::createPixelBufferWithAttributes(v26, cf);
      IIODictionary::~IIODictionary(&__p);
      theString1a = 1;
    }

    else
    {
      theString1a = 0;
      PixelBufferWithAttributes = 0;
    }

    __p = 0;
    v52 = 0;
    value = 0;
    IIODictionary::IIODictionary(&__p);
    v27 = *MEMORY[0x1E695E4C0];
    IIODictionary::setObjectForKeyGroup(&__p, *MEMORY[0x1E695E4C0], @"kCGFlexRangeBaseIsHDR", @"kCGFlexRangeOptions");
    if (IIODictionary::containsKeyGroup(v57, @"kCGImageDestinationEncodeGainMapSubsampleFactor", @"kCGImageDestinationEncodeRequestOptions"))
    {
      if (IIODictionary::getUint32ForKeyGroup(v57, @"kCGImageDestinationEncodeGainMapSubsampleFactor", @"kCGImageDestinationEncodeRequestOptions") >= 2)
      {
        v28 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v28 = v27;
      }

      IIODictionary::setObjectForKeyGroup(&__p, v28, @"kCGFlexRangeSubsample", @"kCGFlexRangeOptions");
    }

    IIODictionary::setObjectForKeyGroup(&__p, v39, @"kCGFlexRangeAlternateColorSpace", @"kCGFlexRangeOptions");
    v29 = IIODictionary::getObjectForKeyGroup(v57, @"kCGImageDestinationEncodeGainMapPixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
    if (v29)
    {
      IIODictionary::setObjectForKey(&__p, v29, @"kCGTargetPixelFormat");
    }

    v30 = CGImageCreatePixelBufferAttributesForHDRTarget(3, v55, v52, &v48);
    if (v30)
    {
      _cg_jpeg_mem_term("writeImageAndGainmap", 4418, "*** ERROR: kCGImageHDRTargetGainMap - CGImageCreatePixelBufferAttributesForHDRTarget failed [err:%d]\n", v30);
    }

    v46[0] = 0;
    v46[1] = 0;
    v47 = 0;
    IIODictionary::IIODictionary(v46, v48);
    ObjectForKey = IIODictionary::getObjectForKey(v46, @"kCGFlexRangeAlternateColorSpace");
    IIODictionary::setObjectForKeyGroup(&__p, ObjectForKey, @"kCGFlexRangeAlternateColorSpace", @"kCGFlexRangeOptions");
    if (v48)
    {
      v33 = IIOImageDestination::createPixelBufferWithAttributes(v32, v48);
    }

    else
    {
      v33 = 0;
    }

    v34 = IIOComputeHDRGainMap(v13, v15, v33, PixelBufferWithAttributes, &v50, v52);
    if (v34)
    {
      _cg_jpeg_mem_term("writeImageAndGainmap", 4430, "*** ERROR: IIOComputeHDRGainMap failed [err:%d]\n", v34);
    }

    v35 = theString1a;
    if (!PixelBufferWithAttributes)
    {
      v35 = 0;
    }

    if (v35 == 1)
    {
      IOSurface = gFunc_CVPixelBufferGetIOSurface(PixelBufferWithAttributes);
      if (IOSurface)
      {
        v37 = CGImageCreateFromIOSurface(IOSurface, 0);
        IIOImageDestination::setSourceImageAtIndex(this, v37, 0);
        CGImageRelease(v37);
      }
    }

    memset(v45, 0, sizeof(v45));
    IIODictionary::IIODictionary(v45);
    IIODictionary::setObjectForKey(v45, v33, @"kCGImageAuxiliaryDataInfoPixelBuffer");
    IIODictionary::setObjectForKey(v45, v50, @"kCGImageAuxiliaryDataInfoMetadata");
    IIODictionary::setObjectForKey(v45, ObjectForKey, @"kCGImageAuxiliaryDataInfoColorSpace");
    if (cf)
    {
      CFRelease(cf);
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (v50)
    {
      CFRelease(v50);
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (PixelBufferWithAttributes)
    {
      CFRelease(PixelBufferWithAttributes);
    }

    this[7] = (this[7] - 1);
    IIOImageDestination::addAuxiliaryDataInfo(this, @"kCGImageAuxiliaryDataTypeISOGainMap", v45);
    v24 = (**this[8])(this[8], this[3], this);
    if (v24)
    {
      _cg_jpeg_mem_term("writeImageAndGainmap", 4469, "*** ERROR: failed to write image [err:%d]\n", v24);
    }

    IIODictionary::~IIODictionary(v45);
    IIODictionary::~IIODictionary(v46);
    IIODictionary::~IIODictionary(&__p);
    IIODictionary::~IIODictionary(&v54);
    goto LABEL_67;
  }

  LogError("writeImageAndGainmap", 4472, "*** ERROR: failed to create IOSurface: base: %p alternate: %p    CVPixelBuffer: base: %p  alternate: %p\n", IOSurfaceFromImage, v44, v13, v14);
  v24 = 4294967246;
  if (v13)
  {
LABEL_67:
    CFRelease(v13);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (IOSurfaceFromImage)
  {
    CFRelease(IOSurfaceFromImage);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  CGImageRelease(v4);
  IIODictionary::~IIODictionary(v57);
  return v24;
}

void sub_186052940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  IIONumber::~IIONumber(&a21);
  IIODictionary::~IIODictionary(&__p);
  IIODictionary::~IIODictionary((v32 - 136));
  IIODictionary::~IIODictionary((v32 - 112));
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::createPixelBufferWithAttributes(IIOImageDestination *this, const __CFDictionary *a2)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  IIODictionary::IIODictionary(v16, a2);
  Uint64ForKey = IIODictionary::getUint64ForKey(v16, *gIIO_kCVPixelBufferWidthKey);
  v3 = IIODictionary::getUint64ForKey(v16, *gIIO_kCVPixelBufferHeightKey);
  Uint32ForKey = IIODictionary::getUint32ForKey(v16, *gIIO_kCVPixelBufferPixelFormatTypeKey);
  ObjectForKey = IIODictionary::getObjectForKey(v16, *gIIO_kCVImageBufferCGColorSpaceKey);
  v6 = IIODictionary::getObjectForKey(v16, *gIIO_kCVImageBufferYCbCrMatrixKey);
  v7 = IIODictionary::getObjectForKey(v16, @"IOSurfaceContentHeadroom");
  v13 = 0;
  v14 = 0;
  v15 = 0;
  IIODictionary::IIODictionary(&v13);
  IIODictionary::IIODictionary(&v11);
  IIODictionary::setObjectForKey(&v13, value, *gIIO_kCVPixelBufferIOSurfacePropertiesKey);
  IIODictionary::~IIODictionary(&v11);
  IIODictionary::setObjectForKey(&v13, *MEMORY[0x1E695E4D0], *gIIO_kCVPixelBufferMetalCompatibilityKey);
  if (gFunc_CVPixelBufferCreate(0, Uint64ForKey, v3, Uint32ForKey, v14, &v17))
  {
    _cg_jpeg_mem_term("createPixelBufferWithAttributes", 4219, "ERROR: Failed to allocate pixel buffer with attributes");
    v8 = 0;
  }

  else
  {
    if (ObjectForKey)
    {
      gFunc_CVBufferSetAttachment(v17, *gIIO_kCVImageBufferCGColorSpaceKey, ObjectForKey, 1);
    }

    if (v6)
    {
      gFunc_CVBufferSetAttachment(v17, *gIIO_kCVImageBufferYCbCrMatrixKey, v6, 1);
    }

    if (v7)
    {
      gFunc_CVBufferSetAttachment(v17, @"IOSurfaceContentHeadroom", v7, 1);
      IOSurface = gFunc_CVPixelBufferGetIOSurface(v17);
      if (IOSurface)
      {
        IOSurfaceSetValue(IOSurface, @"IOSurfaceContentHeadroom", v7);
      }
    }

    v8 = v17;
  }

  IIODictionary::~IIODictionary(&v13);
  IIODictionary::~IIODictionary(v16);
  return v8;
}

void sub_186052C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

void IIOShortCGImageDescStr(const void *a1, uint64_t a2)
{
  v3 = CFCopyDescription(a1);
  IIOString::IIOString(v7, v3);
  v4 = IIOString::utf8String(v7);
  MEMORY[0x186602520](a2, v4);
  IIOString::~IIOString(v7);
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  for (; v5; --v5)
  {
    if (*v6 == 10)
    {
      *v6 = 32;
    }

    ++v6;
  }

  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:fe200100](v7, "<CGColorSpace (.)*?> ", 0);
}

void sub_18605353C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  if (*(v10 - 17) < 0)
  {
    operator delete(*(v10 - 40));
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a10);
  _Unwind_Resume(a1);
}

void sub_186053594(uint64_t a1, ...)
{
  va_start(va, a1);
  IIOString::~IIOString(va);
  JUMPOUT(0x18605358CLL);
}

CGColorSpaceRef IIOImageDestination::getResizeSourceColorSpace(IIOImageDestination *this)
{
  v2 = *(this + 21);
  if (v2)
  {

    return CGImageGetColorSpace(v2);
  }

  else
  {
    Source = CGImageSourceGetSource(*(this + 20));
    if (Source && (ImagePlus = IIOImageSource::getImagePlus(Source, 0)) != 0)
    {

      return IIOImagePlus::getSourceGeomColorSpace(ImagePlus);
    }

    else
    {
      return 0;
    }
  }
}

CFTypeID CGImageDestinationGetTypeID(void)
{
  if (CGImageDestinationGetTypeID::once != -1)
  {
    CGImageDestinationGetTypeID_cold_1();
  }

  return CGImageDestinationGetTypeID::id;
}

CFStringRef _CGImageDestinationCopyDescription(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        v4 = IIO_Writer::utType(v3);
        if (v4)
        {
          return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CGImageDestination: %p> %p '%@'", a1, v2, v4);
        }
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CGImageDestination: %p> %p", a1, v2);
}

CFMutableArrayRef CGImageDestinationCopyImageFormats(const __CFString *a1)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v2 = (gIIODebugFlags >> 14);
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(v2, "S", "CGImageDestinationCopyImageFormats", 0, 0, -1, 0);
  }

  WriterHandler = IIO_WriterHandler::GetWriterHandler(v2);
  v4 = IIO_WriterHandler::copyImageFormats(WriterHandler, a1);
  kdebug_trace();
  return v4;
}

CGImageDestinationRef CGImageDestinationCreateWithDataConsumer(CGDataConsumerRef consumer, CFStringRef type, size_t count, CFDictionaryRef options)
{
  v20 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  IIOInitDebugFlags();
  if (consumer)
  {
    if (type)
    {
      if (!count)
      {
        LogError("CGImageDestinationCreateWithDataConsumer", 5213, "*** ERROR: CGImageDestinationCreateWithDataConsumer: invalid capacity (%zu)\n", 0);
      }

      v8 = CFGetTypeID(consumer);
      if (v8 == CGDataConsumerGetTypeID())
      {
        v9 = CFGetTypeID(type);
        if (v9 == CFStringGetTypeID())
        {
          if (options)
          {
            v10 = CFGetTypeID(options);
            if (v10 != CFDictionaryGetTypeID())
            {
              LogError("CGImageDestinationCreateWithDataConsumer", 5218, "*** ERROR: CGImageDestinationCreateWithDataConsumer: options parameter is not a CFDictionaryRef - ignoring\n");
              options = 0;
            }
          }

          if ((gIIODebugFlags & 0x3000) != 0)
          {
            v18 = 0u;
            v19 = 0u;
            *buffer = 0u;
            v17 = 0u;
            CFStringGetCString(type, buffer, 64, 0x600u);
            v11 = (gIIODebugFlags >> 12) & 3;
            if (v11)
            {
              ImageIODebugOptions(v11, "A", "CGImageDestinationCreateWithDataConsumer", 0, buffer, -1, options);
            }
          }

          memset(buffer, 0, sizeof(buffer));
          *&v17 = 0;
          v12 = IIODictionary::IIODictionary(buffer, options);
          WriterHandler = IIO_WriterHandler::GetWriterHandler(v12);
          if (IIO_WriterHandler::findWriterForType(WriterHandler, type, count, buffer, v14))
          {
            operator new();
          }

          IIODictionary::~IIODictionary(buffer);
          LogError("CGImageDestinationCreateWithDataConsumer", 5234, "*** ERROR: CGImageDestinationCreateWithDataConsumer: failed to create 'CGImageDestinationRef'\n");
        }

        else
        {
          CGImageDestinationCreateWithDataConsumer_cold_2();
        }
      }

      else
      {
        CGImageDestinationCreateWithDataConsumer_cold_1();
      }
    }

    else
    {
      CGImageDestinationCreateWithDataConsumer_cold_3();
    }
  }

  else
  {
    CGImageDestinationCreateWithDataConsumer_cold_4();
  }

  if ((gIIODebugFlags & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageDestinationCreateWithDataConsumer", 5237, "could not create CGImageDestinationRef");
  }

  kdebug_trace();
  kdebug_trace();
  return 0;
}

void sub_186053AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x186602850](v5, 0x10E1C405BBD71D3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGImageDestinationRef CGImageDestinationCreateWithURL(CFURLRef url, CFStringRef type, size_t count, CFDictionaryRef options)
{
  IIOInitDebugFlags();
  kdebug_trace();
  if (url)
  {
    if (type)
    {
      if (!count)
      {
        _cg_jpeg_mem_term("CGImageDestinationCreateWithURL", 5310, "*** CGImageDestinationCreateWithURL: capacity is 0\n");
      }

      v8 = CFGetTypeID(url);
      if (v8 == CFURLGetTypeID())
      {
        v9 = CFGetTypeID(type);
        if (v9 == CFStringGetTypeID())
        {
          if (options)
          {
            v10 = CFGetTypeID(options);
            if (v10 != CFDictionaryGetTypeID())
            {
              LogError("CGImageDestinationCreateWithURL", 5315, "*** ERROR: CGImageDestinationCreateWithURL: options parameter is not a CFDictionaryRef - ignoring\n");
              options = 0;
            }
          }

          if ((gIIODebugFlags & 0x3000) != 0)
          {
            v11 = IIO_CFURLCopyResolvedFileSystemPath(url);
            if (v11)
            {
              v12 = v11;
              v19 = 0;
              v20 = 0;
              v21 = 0;
              IIOString::IIOString(&v19, 0, @"[%@] %@", type, v11);
              v13 = (gIIODebugFlags >> 12) & 3;
              if (v13)
              {
                v14 = IIOString::utf8String(&v19);
                ImageIODebugOptions(v13, "A", "CGImageDestinationCreateWithURL", 0, v14, -1, options);
              }

              CFRelease(v12);
              IIOString::~IIOString(&v19);
            }
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          v15 = IIODictionary::IIODictionary(&v19, options);
          WriterHandler = IIO_WriterHandler::GetWriterHandler(v15);
          if (IIO_WriterHandler::findWriterForType(WriterHandler, type, count, &v19, v17))
          {
            operator new();
          }

          IIODictionary::~IIODictionary(&v19);
          LogError("CGImageDestinationCreateWithURL", 5332, "*** ERROR: CGImageDestinationCreateWithURL: failed to create 'CGImageDestinationRef'\n");
        }

        else
        {
          CGImageDestinationCreateWithURL_cold_2();
        }
      }

      else
      {
        CGImageDestinationCreateWithURL_cold_1();
      }
    }

    else
    {
      CGImageDestinationCreateWithURL_cold_3();
    }
  }

  else
  {
    CGImageDestinationCreateWithURL_cold_4();
  }

  kdebug_trace();
  kdebug_trace();
  return 0;
}

void sub_186053DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x186602850](v4, 0x10E1C405BBD71D3);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImageDestinationSetProperties(CGImageDestinationRef idst, CFDictionaryRef properties)
{
  kdebug_trace();
  v4 = (gIIODebugFlags >> 12) & 3;
  if (v4)
  {
    ImageIODebugOptions(v4, "A", "CGImageDestinationSetProperties", idst, 0, -1, properties);
  }

  if (idst)
  {
    v5 = CFGetTypeID(idst);
    if (CGImageDestinationGetTypeID::once != -1)
    {
      CGImageDestinationGetTypeID_cold_1();
    }

    if (v5 == CGImageDestinationGetTypeID::id)
    {
      if (properties)
      {
        v6 = CFGetTypeID(properties);
        if (v6 != CFDictionaryGetTypeID())
        {
          LogError("CGImageDestinationSetProperties", 5361, "*** ERROR: CGImageDestinationSetProperties: properties parameter is not a CFDictionaryRef - ignoring\n");
          properties = 0;
        }
      }

      v7 = *(idst + 3);
      if (v7)
      {
        memset(v9, 0, sizeof(v9));
        IIODictionary::IIODictionary(v9, properties);
        IIOImageDestination::setProperties(v7, v9);
        v8 = *(v7 + 8);
        if (v8)
        {
          IIO_Reader::osType(v8);
        }

        IIODictionary::~IIODictionary(v9);
      }
    }

    else
    {
      CGImageDestinationSetProperties_cold_2();
    }
  }

  else
  {
    CGImageDestinationSetProperties_cold_3();
  }

  kdebug_trace();
}

void sub_186053FA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImageDestinationAddImageFromSource(CGImageDestinationRef idst, CGImageSourceRef isrc, size_t index, CFDictionaryRef properties)
{
  memset(v22, 0, sizeof(v22));
  IIODictionary::IIODictionary(v22, properties, 1);
  IIOPackDstInputInfo(v22);
  kdebug_trace();
  v8 = (gIIODebugFlags >> 12) & 3;
  if (v8 < 2)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v8 = 1;
    goto LABEL_8;
  }

  if (!isrc)
  {
LABEL_8:
    ImageIODebugOptions(v8, "A", "CGImageDestinationAddImageFromSource", idst, 0, -1, properties);
    goto LABEL_9;
  }

  v9 = CFCopyDescription(isrc);
  memset(v21, 0, sizeof(v21));
  IIOString::IIOString(v21, v9);
  v10 = (gIIODebugFlags >> 12) & 3;
  if (v10)
  {
    v11 = IIOString::utf8String(v21);
    ImageIODebugOptions(v10, "A", "CGImageDestinationAddImageFromSource", idst, v11, -1, properties);
  }

  CFRelease(v9);
  IIOString::~IIOString(v21);
LABEL_9:
  Uint32ForKey = IIODictionary::getUint32ForKey(v22, @"kCGImageSurfaceFormatRequest");
  Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(v22, @"kCGImageDestinationEncodeBasePixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
  IIOPixelFormatIndex(Uint32ForKey);
  IIOPixelFormatIndex(Uint32ForKeyGroup);
  IIODictionary::getUint32ForKeyGroup(v22, @"kCGImageDestinationEncodeGainMapPixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
  if (!idst)
  {
    LogError("CGImageDestinationAddImageFromSource", 5512, "*** ERROR: CGImageDestinationAddImageFromSource: destination is nil\n");
    goto LABEL_28;
  }

  v14 = *(idst + 3);
  if (isrc)
  {
    v15 = CFGetTypeID(idst);
    if (CGImageDestinationGetTypeID::once != -1)
    {
      CGImageDestinationAddImage_cold_1();
    }

    if (v15 == CGImageDestinationGetTypeID::id)
    {
      v16 = CFGetTypeID(isrc);
      if (v16 == CGImageSourceGetTypeID())
      {
        if (properties)
        {
          v17 = CFGetTypeID(properties);
          if (v17 != CFDictionaryGetTypeID())
          {
            LogError("CGImageDestinationAddImageFromSource", 5519, "*** ERROR: CGImageDestinationAddImageFromSource: properties parameter is not a CFDictionaryRef - ignoring\n");
          }
        }

        if (!CGImageSourceGetType(isrc))
        {
          LogError("CGImageDestinationAddImageFromSource", 5527, "*** ERROR: CGImageDestinationAddImageFromSource: source is not an image -- (CGImageSourceGetType() returned NULL)\n");
          v20 = -65;
          goto LABEL_25;
        }

        Count = CGImageSourceGetCount(isrc);
        if (Count > index)
        {
          if (v14)
          {
            IIOImageDestination::addImageFromSource(v14, isrc, index, v22);
            v19 = *(v14 + 64);
            if (v19)
            {
              IIO_Reader::osType(v19);
            }

            v20 = 0;
            goto LABEL_26;
          }

          goto LABEL_28;
        }

        LogError("CGImageDestinationAddImageFromSource", 5533, "*** ERROR: srcIndex (%ld) >= CGImageSourceGetCount (%ld)\n", index, Count);
      }

      else
      {
        LogError("CGImageDestinationAddImageFromSource", 5516, "*** ERROR: CGImageDestinationAddImageFromSource: source is not a CGImageSourceRef\n");
      }
    }

    else
    {
      LogError("CGImageDestinationAddImageFromSource", 5515, "*** ERROR: CGImageDestinationAddImageFromSource: destination is not a CGImageDestinationRef\n");
    }
  }

  else
  {
    LogError("CGImageDestinationAddImageFromSource", 5514, "*** ERROR: CGImageDestinationAddImageFromSource: source is nil\n");
  }

  v20 = -50;
LABEL_25:
  if (v14)
  {
LABEL_26:
    *(v14 + 212) = v20;
  }

LABEL_28:
  kdebug_trace();
  IIODictionary::~IIODictionary(v22);
}

void sub_186054564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImageDestinationAddImageAndMetadata(CGImageDestinationRef idst, CGImageRef image, CGImageMetadataRef metadata, CFDictionaryRef options)
{
  memset(v19, 0, sizeof(v19));
  IIODictionary::IIODictionary(v19, options);
  if (image)
  {
    CGImageGetWidth(image);
    CGImageGetHeight(image);
  }

  IIOPackDstInputInfo(v19);
  IIOPackImageDesc(image);
  kdebug_trace();
  v8 = (gIIODebugFlags >> 12) & 3;
  if (v8)
  {
    ImageIODebugOptions(v8, "A", "CGImageDestinationAddImageAndMetadata", idst, 0, -1, options);
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(v19, @"kCGImageSurfaceFormatRequest");
  Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(v19, @"kCGImageDestinationEncodeBasePixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
  IIOPixelFormatIndex(Uint32ForKey);
  IIOPixelFormatIndex(Uint32ForKeyGroup);
  IIODictionary::getUint32ForKeyGroup(v19, @"kCGImageDestinationEncodeGainMapPixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
  if (idst)
  {
    v11 = 5571;
  }

  else
  {
    v11 = 5570;
  }

  if (idst)
  {
    v12 = "*** ERROR: CGImageDestinationAddImageAndMetadata: image is nil\n";
  }

  else
  {
    v12 = "*** ERROR: CGImageDestinationAddImageAndMetadata: destination is nil\n";
  }

  if (!idst || !image)
  {
    goto LABEL_29;
  }

  v13 = CFGetTypeID(idst);
  if (CGImageDestinationGetTypeID::once != -1)
  {
    CGImageDestinationAddImage_cold_1();
  }

  if (v13 != CGImageDestinationGetTypeID::id)
  {
    LogError("CGImageDestinationAddImageAndMetadata", 5572, "*** ERROR: CGImageDestinationAddImageAndMetadata: destination is not a CGImageDestinationRef\n");
    goto LABEL_30;
  }

  v14 = CFGetTypeID(image);
  if (v14 != CGImageGetTypeID())
  {
    v12 = "*** ERROR: CGImageDestinationAddImageAndMetadata: image is not a CGImageRef\n";
    v11 = 5573;
LABEL_29:
    LogError("CGImageDestinationAddImageAndMetadata", v11, v12);
    goto LABEL_30;
  }

  if (metadata)
  {
    v15 = CFGetTypeID(metadata);
    if (v15 != CGImageMetadataGetTypeID())
    {
      LogError("CGImageDestinationAddImageAndMetadata", 5576, "*** ERROR: CGImageDestinationAddImageAndMetadata: metadata parameter is not a CGImageMetadataRef - ignoring\n");
      metadata = 0;
    }
  }

  if (options)
  {
    v16 = CFGetTypeID(options);
    if (v16 != CFDictionaryGetTypeID())
    {
      LogError("CGImageDestinationAddImageAndMetadata", 5581, "*** ERROR: CGImageDestinationAddImageAndMetadata: options parameter is not a CFDictionaryRef - ignoring\n");
    }
  }

  v17 = *(idst + 3);
  if (v17)
  {
    IIOImageDestination::addImageAndMetadata(*(idst + 3), image, metadata, v19);
    v18 = *(v17 + 64);
    if (v18)
    {
      IIO_Reader::osType(v18);
    }
  }

LABEL_30:
  kdebug_trace();
  IIODictionary::~IIODictionary(v19);
}

void sub_186054A98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

BOOL CGImageDestinationCopyImageSource(CGImageDestinationRef idst, CGImageSourceRef isrc, CFDictionaryRef options, CFErrorRef *err)
{
  memset(v17, 0, sizeof(v17));
  IIODictionary::IIODictionary(v17, options);
  IIOPackDstInputInfo(v17);
  kdebug_trace();
  IIOInitDebugFlags();
  v8 = (gIIODebugFlags >> 12) & 3;
  if (v8)
  {
    ImageIODebugOptions(v8, "A", "CGImageDestinationCopyImageSource", idst, 0, -1, options);
  }

  if (!idst)
  {
    IIOLogAndCreateError(err, *MEMORY[0x1E695E638], -50, "CGImageDestinationCopyImageSource", 5615, "CGImageDestinationCopyImageSource: destination is nil\n");
    goto LABEL_22;
  }

  if (!isrc)
  {
    IIOLogAndCreateError(err, *MEMORY[0x1E695E638], -50, "CGImageDestinationCopyImageSource", 5616, "CGImageDestinationCopyImageSource: source is nil\n");
    goto LABEL_22;
  }

  v9 = CFGetTypeID(idst);
  if (CGImageDestinationGetTypeID::once != -1)
  {
    CGImageDestinationAddImage_cold_1();
  }

  if (v9 != CGImageDestinationGetTypeID::id)
  {
    IIOLogAndCreateError(err, *MEMORY[0x1E695E638], -50, "CGImageDestinationCopyImageSource", 5617, "*** ERROR: CGImageDestinationCopyImageSource: destination is not a CGImageDestinationRef\n");
    goto LABEL_22;
  }

  v10 = CFGetTypeID(isrc);
  if (v10 != CGImageSourceGetTypeID())
  {
    IIOLogAndCreateError(err, *MEMORY[0x1E695E638], -50, "CGImageDestinationCopyImageSource", 5618, "*** ERROR: CGImageDestinationCopyImageSource: source is not a CGImageSourceRef\n");
    goto LABEL_22;
  }

  if (options)
  {
    v11 = CFGetTypeID(options);
    if (v11 == CFDictionaryGetTypeID())
    {
      v12 = 1;
      goto LABEL_14;
    }

    LogError("CGImageDestinationCopyImageSource", 5621, "*** ERROR: CGImageDestinationCopyImageSource: options parameter is not a CFDictionaryRef - ignoring\n");
  }

  v12 = 0;
LABEL_14:
  v13 = *(idst + 3);
  if (!v13)
  {
LABEL_22:
    v14 = 0;
    goto LABEL_23;
  }

  v14 = IIOImageDestination::copyImageSource(*(idst + 3), isrc, v17, v12, err);
  v15 = *(v13 + 64);
  if (v15)
  {
    IIO_Reader::osType(v15);
  }

LABEL_23:
  if ((gIIODebugFlags & 0x800000000000) != 0 && !v14)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageDestinationCopyImageSource", 5635, "could not copy from imageSource");
  }

  kdebug_trace();
  IIODictionary::~IIODictionary(v17);
  return v14;
}

void sub_186054CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImageDestinationAddAuxiliaryDataInfo(CGImageDestinationRef idst, CFStringRef auxiliaryImageDataType, CFDictionaryRef auxiliaryDataInfoDictionary)
{
  IIOInitDebugFlags();
  if (auxiliaryImageDataType && CFStringCompare(auxiliaryImageDataType, @"kCGImageAuxiliaryDataTypeHDRGainMap", 0))
  {
    CFStringCompare(auxiliaryImageDataType, @"kCGImageAuxiliaryDataTypeISOGainMap", 0);
  }

  kdebug_trace();
  if ((gIIODebugFlags & 0x3000) != 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    IIOString::IIOString(&v13, auxiliaryImageDataType);
    v6 = (gIIODebugFlags >> 12) & 3;
    if (v6)
    {
      v7 = IIOString::utf8String(&v13);
      ImageIODebugOptions(v6, "A", "CGImageDestinationAddAuxiliaryDataInfo", idst, v7, -1, 0);
    }

    IIOString::~IIOString(&v13);
  }

  if (idst)
  {
    if (auxiliaryImageDataType)
    {
      if (auxiliaryDataInfoDictionary)
      {
        v8 = CFGetTypeID(idst);
        if (CGImageDestinationGetTypeID::once != -1)
        {
          CGImageDestinationAddImage_cold_1();
        }

        if (v8 == CGImageDestinationGetTypeID::id)
        {
          v9 = CFGetTypeID(auxiliaryImageDataType);
          if (v9 == CFStringGetTypeID())
          {
            v10 = CFGetTypeID(auxiliaryDataInfoDictionary);
            if (v10 == CFDictionaryGetTypeID())
            {
              v11 = *(idst + 3);
              if (v11)
              {
                v13 = 0;
                v14 = 0;
                v15 = 0;
                IIODictionary::IIODictionary(&v13, auxiliaryDataInfoDictionary);
                IIOImageDestination::addAuxiliaryDataInfo(v11, auxiliaryImageDataType, &v13);
                v12 = *(v11 + 8);
                if (v12)
                {
                  IIO_Reader::osType(v12);
                }

                IIODictionary::~IIODictionary(&v13);
              }
            }

            else
            {
              CGImageDestinationAddAuxiliaryDataInfo_cold_4();
            }
          }

          else
          {
            CGImageDestinationAddAuxiliaryDataInfo_cold_3();
          }
        }

        else
        {
          CGImageDestinationAddAuxiliaryDataInfo_cold_2();
        }
      }

      else
      {
        CGImageDestinationAddAuxiliaryDataInfo_cold_5();
      }
    }

    else
    {
      CGImageDestinationAddAuxiliaryDataInfo_cold_6();
    }
  }

  else
  {
    CGImageDestinationAddAuxiliaryDataInfo_cold_7();
  }

  kdebug_trace();
}

void sub_186054F40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void CGImageDestinationAddImageWithMetadata(CGImageDestinationRef idst, CGImageRef image, const __CFArray *a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageDestinationAddImageWithMetadata", 0, 0, -1, 0);
  }

  keys[0] = @"{MetaData}";
  if (a3 && (v6 = CGImageMetadataCreateFromMetadataProperties(a3)) != 0)
  {
    v7 = v6;
    values = v6;
    v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(v7);
    CGImageDestinationAddImage(idst, image, v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {

    CGImageDestinationAddImage(idst, image, 0);
  }
}

void CGImageDestinationAddImageFromSourceWithMetadata(CGImageDestinationRef idst, CGImageSourceRef isrc, size_t index, const __CFArray *a4)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageDestinationAddImageFromSourceWithMetadata", 0, 0, -1, 0);
  }

  keys[0] = @"{MetaData}";
  if (a4 && (v8 = CGImageMetadataCreateFromMetadataProperties(a4)) != 0)
  {
    v9 = v8;
    values = v8;
    v10 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(v9);
    CGImageDestinationAddImageFromSource(idst, isrc, index, v10);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {

    CGImageDestinationAddImageFromSource(idst, isrc, index, 0);
  }
}

uint64_t TIFFInitNeXT(void *a1)
{
  a1[121] = NeXTPreDecode;
  a1[126] = NeXTDecode;
  a1[128] = NeXTDecode;
  a1[130] = NeXTDecode;
  return 1;
}

uint64_t NeXTPreDecode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 116);
  if (v8 == 2)
  {
    return 1;
  }

  TIFFErrorExtR(a1, "NeXTPreDecode", "Unsupported BitsPerSample = %hu", a4, a5, a6, a7, a8, v8);
  return 0;
}

uint64_t NeXTDecode(uint64_t a1, char *__b, int64_t __len, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __len;
  v9 = __b;
  if (__len >= 1)
  {
    memset(__b, 255, __len);
  }

  v11 = *(a1 + 1104);
  if (v8 % v11)
  {
    TIFFErrorExtR(a1, "NeXTDecode", "Fractional scanlines cannot be read", a4, a5, a6, a7, a8, v37);
    return 0;
  }

  i = *(a1 + 1160);
  v14 = *(a1 + 1152);
  if (i < 1 || v8 < 1)
  {
LABEL_46:
    *(a1 + 1152) = v14;
    *(a1 + 1160) = i;
    return 1;
  }

LABEL_8:
  v16 = v14 + 1;
  v15 = *v14;
  v17 = i - 1;
  if (v15 == 64)
  {
    if (i < 5 || ((v18 = __rev16(*(v14 + 1)), v19 = __rev16(*(v14 + 3)), v20 = v19 + 4, i > v19 + 4) ? (v21 = (v19 + v18) <= v11) : (v21 = 0), !v21))
    {
LABEL_47:
      TIFFErrorExtR(a1, "NeXTDecode", "Not enough data for scanline %u", a4, a5, a6, a7, a8, *(a1 + 876));
      return 0;
    }

    _TIFFmemcpy(&v9[v18], v14 + 5, v19);
    v14 = &v16[v20];
    i = v17 - v20;
    goto LABEL_43;
  }

  if (!*v14)
  {
    if (i <= v11)
    {
      goto LABEL_47;
    }

    _TIFFmemcpy(v9, v14 + 1, v11);
    v14 = &v16[v11];
    i = v17 - v11;
    goto LABEL_43;
  }

  v22 = 0;
  v23 = 0;
  if ((*(a1 + 17) & 4) != 0)
  {
    v24 = 100;
  }

  else
  {
    v24 = 88;
  }

  v25 = *(a1 + v24);
  v26 = v9;
  for (i = v17; ; --i)
  {
    v27 = v22 < v25;
    v28 = v23 < v11;
    v29 = v15 & 0x3F;
    if ((v15 & 0x3F) != 0 && v22 < v25 && v23 < v11)
    {
      v30 = v15 >> 6;
      v31 = 4 * (v15 >> 6);
      v32 = 16 * (v15 >> 6);
      v33 = v15 & 0xC0;
      while ((v22 & 3) > 1)
      {
        if ((v22 & 3) == 2)
        {
          v34 = *v26 | v31;
LABEL_33:
          *v26 = v34;
          goto LABEL_35;
        }

        *v26++ |= v30;
        ++v23;
LABEL_35:
        v35 = v22 + 1;
        v27 = v22 + 1 < v25;
        v28 = v23 < v11;
        ++v22;
        if (v29 >= 2 && v35 < v25)
        {
          --v29;
          if (v23 < v11)
          {
            continue;
          }
        }

        goto LABEL_38;
      }

      if ((v22 & 3) == 0)
      {
        *v26 = v33;
        goto LABEL_35;
      }

      v34 = *v26 | v32;
      goto LABEL_33;
    }

LABEL_38:
    if (!v27)
    {
      v14 = v16;
LABEL_43:
      if (i < 1)
      {
        goto LABEL_46;
      }

      v9 += v11;
      v21 = v8 <= v11;
      v8 -= v11;
      if (v21)
      {
        goto LABEL_46;
      }

      goto LABEL_8;
    }

    if (!v28)
    {
      break;
    }

    if (!i)
    {
      goto LABEL_47;
    }

    v36 = *v16++;
    v15 = v36;
  }

  TIFFErrorExtR(a1, "NeXTDecode", "Invalid data for scanline %u", a4, a5, a6, a7, a8, *(a1 + 876));
  return 0;
}

size_t png_default_read_data(size_t result, void *__ptr, size_t a3)
{
  if (result)
  {
    v4 = result;
    result = fread(__ptr, 1uLL, a3, *(result + 40));
    if (result != a3)
    {
      _cg_png_error(v4, "Read Error");
    }
  }

  return result;
}

void *MPOReadPlugin::MPOReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4DA328;
  return result;
}

void MPOReadPlugin::~MPOReadPlugin(MPOReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t MPOReadPlugin::loadDataFromXPCObject(MPOReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_mpo", &length);
    if (length == 1)
    {
      v6 = data;
      result = 0;
      *(this + 464) = *v6;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t MPOReadPlugin::saveDataToXPCObject(MPOReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_mpo", this + 464, 1uLL);
  }

  return v4;
}

uint64_t MPOReadPlugin::initialize(MPOReadPlugin *this, IIODictionary *a2)
{
  v4 = *(this + 7);
  v5 = IIOImageReadSession::globalInfoForType(*(this + 3), 1297108768);
  if (v5)
  {
    v6 = v5;
    v7 = *(this + 56);
    if (v7 < GlobalMPOInfo::getEntryCount(v5))
    {
      EntryAtIndex = GlobalMPOInfo::getEntryAtIndex(v6, *(this + 56));
      if (EntryAtIndex)
      {
        v9 = EntryAtIndex;
        v10 = _MPEntry::imageSize(EntryAtIndex);
        v11 = _MPEntry::imageOffset(v9);
        v12 = v11;
        if (v11)
        {
          v11 = IIOImageSource::cf(v6);
          v12 += v11;
        }

        if (IIO_ReaderHandler::UseAppleJPEG(v11))
        {
          IIONumber::IIONumber(v17, 1246774599);
        }

        else
        {
          IIONumber::IIONumber(v17, 1279938631);
        }

        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_ostype");
        IIONumber::~IIONumber(v17);
        IIONumber::IIONumber(v17, v12);
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataOffset");
        IIONumber::~IIONumber(v17);
        IIONumber::IIONumber(v17, v10);
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataSize");
        IIONumber::~IIONumber(v17);
        Metadata = GlobalMPOInfo::getMetadata(v6);
        if (Metadata)
        {
          v15 = Metadata;
          if (GlobalMPOInfo::getEntryCount(v6) >= 2)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v15, *(this + 56));
            if (ValueAtIndex)
            {
              IIODictionary::setObjectForKey(v4, ValueAtIndex, @"{MPO}");
            }
          }

          if (_MPEntry::isLargeThumbnail(v9))
          {
            IIODictionary::setObjectForKey(v4, *MEMORY[0x1E695E4D0], @"kCGImageSourceAddMetadataFromPrimaryImage");
          }
        }
      }
    }
  }

  else
  {
    _cg_jpeg_mem_term("initialize", 91, "could not get globalMPOInfo\n");
  }

  kdebug_trace();
  kdebug_trace();
  return 4294967247;
}

void sub_18605594C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void IIO_Reader_AppleJPEG::~IIO_Reader_AppleJPEG(IIO_Reader_AppleJPEG *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_AppleJPEG::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t IIO_Reader_AppleJPEG::HasGainMapAtOffset(IIO_Reader_AppleJPEG *this, IIOImageReadSession *a2)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  IIOScanner::IIOScanner(&v20, this);
  IIOScanner::setEndianness(&v20, 0);
  IIOScanner::seek(&v20, a2);
  if (IIOScanner::getVal16(&v20) == 65496)
  {
    for (i = IIOScanner::getVal16(&v20); (i & 0xFFF0) == 0xFFE0; i = IIOScanner::getVal16(&v20))
    {
      Val16 = IIOScanner::getVal16(&v20);
      v5 = Val16;
      if (i == 65506 && Val16 >= 5)
      {
        v6 = *(&v21 + 1);
        if (IIOScanner::getVal32(&v20) == 1297106432)
        {
          v7 = *(&v21 + 1);
          if (IIOScanner::getVal16(&v20) == 18761)
          {
            IIOScanner::setEndianness(&v20, 1);
          }

          if (IIOScanner::getVal16(&v20) != 42)
          {
            break;
          }

          if (IIOScanner::getVal32(&v20) != 8)
          {
            exception = __cxa_allocate_exception(4uLL);
            *exception = -1;
            __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
          }

          v8 = IIOScanner::getVal16(&v20);
          v19 = 0;
          v18 = 0;
          v9 = 0;
          if (v8)
          {
            v10 = 0;
            v11 = 0;
            do
            {
              IIOScanner::getTiffTag(&v20, &v18);
              if (v18 == 45057)
              {
                v11 = v19;
              }

              else if (v18 == 45058)
              {
                IIOScanner::seek(&v20, v7 + v19, 0);
                if (v11)
                {
                  v12 = 0;
                  v13 = 0;
                  while (1)
                  {
                    v14 = IIOScanner::getVal32(&v20) & 0xFFFFFF;
                    if (!v12)
                    {
                      v13 = v14;
                    }

                    IIOScanner::skip(&v20, 8uLL);
                    v15 = IIOScanner::getVal16(&v20);
                    if (!(v15 | IIOScanner::getVal16(&v20)) && (v14 == 327680 || v12 && v13 == 196608 && !v14))
                    {
                      break;
                    }

                    if (v11 == ++v12)
                    {
                      goto LABEL_30;
                    }
                  }

                  v9 = 1;
                }
              }

LABEL_30:
              ++v10;
            }

            while (v10 != v8);
          }

          goto LABEL_34;
        }

        IIOScanner::seek(&v20, v6);
      }

      IIOScanner::skip(&v20, v5 - 2);
    }
  }

  v9 = 0;
LABEL_34:
  IIOScanner::~IIOScanner(&v20);
  return v9 & 1;
}

uint64_t IIO_Reader_AppleJPEG::updateSourceProperties(IIO_Reader_AppleJPEG *this, IIOImageRead **a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  if (a2)
  {
    v7 = IIOImageReadSession::mapData(a2);
  }

  else
  {
    v7 = 0;
  }

  if (IIO_Reader_AppleJPEG::HasGainMapAtOffset(a2, 0))
  {
    kdebug_trace();
    v8 = 4294967248;
  }

  else
  {
    v8 = 0;
  }

  v9 = !v7;
  if (!a2)
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    IIOImageReadSession::unmapData(a2);
  }

  return v8;
}

uint64_t IIO_Reader_AppleJPEG::initThumbnail(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Source = CGImageSourceGetSource(a2);
  Properties = IIOImagePlus::getProperties(Source);
  Session = CGImagePluginGetSession(a2);
  v9 = CGImageSourceGetSource(Session);
  if (!Session)
  {
    return 4294967245;
  }

  v10 = v9;
  Size = IIOImageReadSession::getSize(v9);
  v73 = 0;
  v12 = IIOImageReadSession::retainBytePointer(v10, &v73, 0);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    Size = IIOImageReadSession::getBytesAtOffset(v10, v14, 0, 4096);
  }

  if (Size < 0x1000 || *v14 != 255 || v14[1] != 216)
  {
    goto LABEL_17;
  }

  if (v14[2] == 255 && v14[3] == 224)
  {
    v16 = __rev16(*(v14 + 2)) + 4;
  }

  else
  {
    v16 = 2;
  }

  if (v16 < Size - 10)
  {
    if (v14[v16] != 255)
    {
      goto LABEL_17;
    }

    v17 = &v14[v16];
    if (v14[v16 + 1] != 225)
    {
      goto LABEL_17;
    }

    v18 = *(v17 + 1);
    if (strncmp(v17 + 4, "Exif", 4uLL))
    {
      goto LABEL_17;
    }

    v22 = &v14[Size];
    v19 = v16 + 10;
    v23 = &v14[v16 + 10];
    v24 = *v23;
    if (v24 == 77)
    {
      if (v23[1] != 77 || v23[2])
      {
        goto LABEL_18;
      }

      v25 = v18;
      v20 = 0;
      if (v23[3] != 42)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v24 != 73 || v23[1] != 73 || v23[2] != 42)
      {
        goto LABEL_18;
      }

      v25 = v18;
      v20 = 0;
      if (v23[3])
      {
        goto LABEL_45;
      }
    }

    if ((v23 + 8) <= v22)
    {
      v20 = 0;
      LODWORD(v26) = *(v23 + 1);
      v27 = bswap32(v26);
      v26 = v24 == 77 ? v27 : v26;
      if (v26 >= 8 && __rev16(v25) - 4 >= v26)
      {
        v28 = &v23[v26];
        v29 = (v28 + 2);
        if ((v28 + 2) <= v22)
        {
          v30 = *v28;
          v31 = bswap32(v30) >> 16;
          if (v24 == 77)
          {
            v32 = v31;
          }

          else
          {
            v32 = v30;
          }

          if ((Size - v16 - v26 - 12) / 0xC <= v32)
          {
            goto LABEL_18;
          }

          if (v32)
          {
            v69 = v24;
            do
            {
              if ((v29 + 1) <= v22)
              {
                v34 = *v29;
                v35 = bswap32(v34) >> 16;
                if (v24 == 77)
                {
                  LOWORD(v34) = v35;
                }

                v33 = v34 == 274;
              }

              else
              {
                v33 = 0;
              }

              if ((v29 + 2) <= v22)
              {
                v37 = v29[1];
                v38 = bswap32(v37) >> 16;
                if (v24 == 77)
                {
                  LOWORD(v37) = v38;
                }

                v36 = v37 == 3;
              }

              else
              {
                v36 = 0;
              }

              if ((v29 + 4) <= v22)
              {
                v39 = *(v29 + 1);
                v40 = bswap32(v39);
                if (v24 == 77)
                {
                  LOWORD(v39) = v40;
                }

                if (v33 && v36 && v39 == 1 && (v29 + 5) <= v22)
                {
                  v42 = v29[4];
                  v43 = bswap32(v42) >> 16;
                  if (v24 == 77)
                  {
                    LOWORD(v42) = v43;
                  }

                  if (v42 - 1 <= 7)
                  {
                    v70 = v32;
                    v71 = v42;
                    IIONumber::IIONumber(v72, v42);
                    IIODictionary::setObjectForKey(Properties, v72, @"Orientation");
                    IIONumber::~IIONumber(v72);
                    IIONumber::IIONumber(v72, v71);
                    IIODictionary::setObjectForKeyGroup(Properties, v72, @"Orientation", @"{TIFF}");
                    IIONumber::~IIONumber(v72);
                    v24 = v69;
                    v22 = &v14[Size];
                    v32 = v70;
                  }
                }
              }

              --v32;
              v29 += 6;
            }

            while (v32);
          }
        }

        else if (Size - v16 - v26 - 12 < 0xC)
        {
          goto LABEL_18;
        }

        if ((v29 + 2) > v22)
        {
          goto LABEL_18;
        }

        v44 = *v29;
        v45 = bswap32(*v29);
        if (v24 == 77)
        {
          v44 = v45;
        }

        if (!v44)
        {
          goto LABEL_18;
        }

        v46 = v19 + v44;
        if (v73)
        {
          if (Size <= v46 + 2)
          {
            goto LABEL_18;
          }

          v14 = v13 + v46;
          BytesAtOffset = Size - v46;
        }

        else
        {
          v48 = v24;
          BytesAtOffset = IIOImageReadSession::getBytesAtOffset(v10, v14, v46, 4096);
          if (BytesAtOffset < 2)
          {
            goto LABEL_18;
          }

          v24 = v48;
        }

        if (BytesAtOffset >= 2)
        {
          v49 = *v14;
          v50 = bswap32(v49) >> 16;
          if (v24 == 77)
          {
            v49 = v50;
          }

          if ((BytesAtOffset - 2) / 0xCuLL > v49 && v49 != 0)
          {
            v52 = 0;
            v21 = 0;
            v20 = 0;
            v53 = &v14[BytesAtOffset];
            do
            {
              v54 = &v14[v52];
              v55 = &v14[v52 + 4];
              if (v55 <= v53)
              {
                v56 = *(v54 + 1);
                v57 = bswap32(v56) >> 16;
                if (v24 == 77)
                {
                  LOWORD(v56) = v57;
                }
              }

              else
              {
                LOWORD(v56) = 0;
              }

              v58 = (v54 + 6);
              if ((v54 + 6) <= v53)
              {
                v60 = *v55;
                v61 = bswap32(v60) >> 16;
                if (v24 == 77)
                {
                  LOWORD(v60) = v61;
                }

                v59 = v60 == 4;
              }

              else
              {
                v59 = 0;
              }

              v62 = &v14[v52 + 10];
              if (v62 <= v53)
              {
                v63 = *v58;
                v64 = bswap32(v63);
                if (v24 != 77)
                {
                  v64 = v63;
                }

                if (v56 == 513 && v59 && v64 == 1)
                {
                  if (&v14[v52 + 14] <= v53)
                  {
                    v65 = *v62;
                    v66 = bswap32(v65);
                    if (v24 == 77)
                    {
                      v20 = v66;
                    }

                    else
                    {
                      v20 = v65;
                    }
                  }

                  else
                  {
                    v20 = 0;
                  }
                }

                else if (v56 == 514 && v59 && v64 == 1)
                {
                  if (&v14[v52 + 14] <= v53)
                  {
                    v67 = *v62;
                    v68 = bswap32(v67);
                    if (v24 == 77)
                    {
                      v21 = v68;
                    }

                    else
                    {
                      v21 = v67;
                    }
                  }

                  else
                  {
                    v21 = 0;
                  }
                }
              }

              --v49;
              v52 += 12;
            }

            while (v49);
            goto LABEL_19;
          }
        }

        goto LABEL_18;
      }
    }

LABEL_45:
    v21 = 0;
    goto LABEL_19;
  }

  _cg_jpeg_mem_term("initThumbnail", 392, "*** ERROR: bad APP marker offset (%ld)\n", v16);
LABEL_17:
  v19 = 0;
LABEL_18:
  v20 = 0;
  v21 = 0;
LABEL_19:
  if (v73)
  {
    IIOImageReadSession::releaseBytePointer(v10, v73);
  }

  else if (v14)
  {
    free(v14);
  }

  result = 4294967245;
  if (v20)
  {
    if (v21)
    {
      CGImagePluginInitThumbJPEGAtOffset(a2, (v20 + v19), v21, a4);
    }
  }

  return result;
}

void sub_186056478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

unint64_t png_icc_profile_error(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4, _BYTE *a5)
{
  *&v28[4] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *(a2 + 74) |= 0x8000u;
  }

  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v10 = png_safecat(v26, v28, 0xC4uLL, 0, "profile '");
  v11 = png_safecat(v26, v28, v10 + 79, v10, a3);
  result = png_safecat(v26, v28, 0xC4uLL, v11, "': ");
  v13 = result;
  v14 = a4 >> 24;
  if ((a4 >> 24 == 32 || v14 - 58 > 0xFFFFFFFFFFFFFFF5 || (v14 & 0xFFFFFFFFFFFFFFDFLL) - 91 >= 0xFFFFFFFFFFFFFFE6) && (((a4 >> 16) & 0xDF) - 91 > 0xFFFFFFFFFFFFFFE5 || BYTE2(a4) == 32 || BYTE2(a4) - 58 >= 0xFFFFFFFFFFFFFFF6) && (((a4 >> 8) & 0xDF) - 91 > 0xFFFFFFFFFFFFFFE5 || BYTE1(a4) == 32 || BYTE1(a4) - 58 >= 0xFFFFFFFFFFFFFFF6) && ((a4 & 0xDF) - 91 > 0xFFFFFFFFFFFFFFE5 || a4 == 32 || a4 - 58 >= 0xFFFFFFFFFFFFFFF6))
  {
    v19 = v26 + result;
    if ((v26 + result) < v26)
    {
      goto LABEL_46;
    }

    if (v19 >= v28)
    {
      goto LABEL_46;
    }

    *v19 = 39;
    if (v19 + 1 >= v28 || v19 + 1 < v19)
    {
      goto LABEL_46;
    }

    v20 = BYTE3(a4);
    if (BYTE3(a4) - 32 >= 0x5Fu)
    {
      LOBYTE(v20) = 63;
    }

    v19[1] = v20;
    if (v19 + 2 >= v28 || v19 + 2 < v19)
    {
      goto LABEL_46;
    }

    v21 = WORD1(a4);
    if (BYTE2(a4) - 32 >= 0x5F)
    {
      LOBYTE(v21) = 63;
    }

    v19[2] = v21;
    if (v19 + 3 >= v28 || v19 + 3 < v19)
    {
      goto LABEL_46;
    }

    v22 = a4 >> 8;
    if (BYTE1(a4) - 32 >= 0x5F)
    {
      LOBYTE(v22) = 63;
    }

    if ((v19[3] = v22, v19 + 4 >= v28) || v19 + 4 < v19 || (a4 - 32 >= 0x5F ? (v23 = 63) : (v23 = a4), (v19[4] = v23, v19 + 5 >= v28) || v19 + 5 < v19 || (v19[5] = 39, v19 + 6 >= v28) || v19 + 6 < v26 || (v19[6] = 58, v24 = v19 + 7, v24 >= v28) || v24 < v26))
    {
LABEL_46:
      __break(0x5519u);
      return result;
    }

    v17 = result + 8;
    *v24 = 32;
  }

  else
  {
    memset(v25, 0, sizeof(v25));
    v15 = png_format_number(v25, v26, v26, v26, 3, a4);
    v16 = png_safecat(v26, v28, 0xC4uLL, v13, v15);
    v17 = png_safecat(v26, v28, 0xC4uLL, v16, "h: ");
  }

  png_safecat(v26, v28, 0xC4uLL, v17, a5);
  if (a2)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  return png_chunk_report(a1, v26, v18);
}

uint64_t png_colorspace_set_rgb_coefficients(uint64_t result)
{
  if (*(result + 905) || (*(result + 1274) & 2) == 0)
  {
    return result;
  }

  v1 = *(result + 1240);
  if ((v1 & 0x80000000) != 0)
  {
    goto LABEL_44;
  }

  v2 = *(result + 1252);
  v3 = *(result + 1264);
  v4 = v2 + v1 + v3;
  if (v4 < 1)
  {
    goto LABEL_44;
  }

  if (v1)
  {
    v5 = floor(v1 * 32768.0 / v4 + 0.5);
    if (v5 > 2147483650.0 || v5 < -2147483650.0)
    {
      goto LABEL_44;
    }

    v1 = v5;
  }

  if ((v2 & 0x80000000) != 0 || v1 > 0x8000)
  {
    goto LABEL_44;
  }

  if (v2)
  {
    v7 = floor(v2 * 32768.0 / v4 + 0.5);
    if (v7 <= 2147483650.0 && v7 >= -2147483650.0)
    {
      v2 = v7;
      goto LABEL_19;
    }

LABEL_44:
    _cg_png_error(result, "internal error handling cHRM->XYZ");
  }

LABEL_19:
  if ((v3 & 0x80000000) != 0 || v2 > 0x8000)
  {
    goto LABEL_44;
  }

  if (v3)
  {
    v9 = v3 * 32768.0 / v4 + 0.5;
    v10 = floor(v9);
    if (v10 > 2147483650.0 || v10 < -2147483650.0)
    {
      goto LABEL_44;
    }

    v12 = vcvtmd_s64_f64(v9);
    if (v12 > 0x8000)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v2 + v1 + v12;
  if (v13 > 0x8001)
  {
    goto LABEL_44;
  }

  if (v13 == 32769)
  {
    v14 = -1;
LABEL_34:
    if (v2 < v1 || v2 < v12)
    {
      if (v1 < v2 || v1 < v12)
      {
        v12 += v14;
      }

      else
      {
        v1 += v14;
      }
    }

    else
    {
      v2 += v14;
    }

    goto LABEL_41;
  }

  if (!(v13 >> 15))
  {
    v14 = 1;
    goto LABEL_34;
  }

LABEL_41:
  if (v2 + v1 + v12 != 0x8000)
  {
    _cg_png_error(result, "internal error handling cHRM coefficients");
  }

  *(result + 906) = v1;
  *(result + 908) = v2;
  return result;
}

uint64_t png_muldiv(int *a1, int a2, int a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_10;
  }

  v5 = floor(a2 * a3 / a4 + 0.5);
  if (v5 > 2147483650.0 || v5 < -2147483650.0)
  {
    return 0;
  }

  v4 = v5;
LABEL_10:
  *a1 = v4;
  return 1;
}

unint64_t png_check_fp_number(unint64_t result, unint64_t a2, unint64_t a3, unsigned int *a4, unint64_t *a5)
{
  v5 = *a4;
  v6 = *a5;
  if (*a5 >= a3)
  {
    goto LABEL_48;
  }

  do
  {
    v7 = (result + v6);
    if (result + v6 >= a2 || v7 < result)
    {
      __break(0x5519u);
      return result;
    }

    v9 = *v7;
    if (v9 <= 48)
    {
      if (v9 > 45)
      {
        if (v9 == 46)
        {
          v10 = 16;
        }

        else
        {
          if (v9 != 48)
          {
            goto LABEL_48;
          }

          v10 = 8;
        }
      }

      else if (v9 == 43)
      {
        v10 = 4;
      }

      else
      {
        if (v9 != 45)
        {
          goto LABEL_48;
        }

        v10 = 132;
      }
    }

    else if ((v9 - 49) >= 9)
    {
      if (v9 != 69 && v9 != 101)
      {
        goto LABEL_48;
      }

      v10 = 32;
    }

    else
    {
      v10 = 264;
    }

    v11 = v10 & 0x3C | v5 & 3;
    if (v11 > 9)
    {
      if (v11 <= 31)
      {
        if (v11 == 10)
        {
          v5 |= 0x48u;
          goto LABEL_44;
        }

        if (v11 != 16 || (v5 & 0x10) != 0)
        {
          goto LABEL_48;
        }

        if ((v5 & 8) == 0)
        {
          v5 = v5 & 0x1C0 | v10 | 1;
          goto LABEL_44;
        }

LABEL_39:
        v5 |= v10;
        goto LABEL_44;
      }

      if (v11 != 32 && v11 != 33 || (v5 & 8) == 0)
      {
        goto LABEL_48;
      }

      v5 = v5 & 0x1C0 | 2;
    }

    else
    {
      if (v11 > 7)
      {
        if (v11 == 8 && (v5 & 0x10) != 0)
        {
          v5 = v5 & 0x180 | 0x11;
        }

        v5 |= v10 | 0x40;
        goto LABEL_44;
      }

      if (v11 == 4)
      {
        if ((v5 & 0x3C) != 0)
        {
          goto LABEL_48;
        }

        goto LABEL_39;
      }

      if (v11 != 6 || (v5 & 0x3C) != 0)
      {
        goto LABEL_48;
      }

      v5 |= 4u;
    }

LABEL_44:
    ++v6;
  }

  while (a3 != v6);
  v6 = a3;
LABEL_48:
  *a4 = v5;
  *a5 = v6;
  return (v5 >> 3) & 1;
}

unint64_t png_check_fp_string(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v10 = 0;
  v9 = 0;
  result = png_check_fp_number(a1, a2, a3, &v10, &v9);
  if (result)
  {
    if (v9 == a3)
    {
      return v10;
    }

    v7 = (a1 + v9);
    if (a1 + v9 >= a2 || v7 < a1)
    {
      __break(0x5519u);
      return result;
    }

    if (!*v7)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t png_fixed(void (**a1)(void), uint64_t a2, double a3)
{
  v3 = floor(a3 * 100000.0 + 0.5);
  if (v3 > 2147483650.0 || v3 < -2147483650.0)
  {
    png_fixed_error(a1, a2);
  }

  return v3;
}

unsigned int png_reciprocal2(int a1, int a2)
{
  if (a1 && a2 && ((v2 = 1.0e15 / a1 / a2 + 0.5, v3 = floor(v2), v3 <= 2147483650.0) ? (v4 = v3 < -2147483650.0) : (v4 = 1), !v4))
  {
    return vcvtmd_s64_f64(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t png_gamma_8bit_correct(uint64_t result, int a2)
{
  if ((result - 1) <= 0xFD)
  {
    LOBYTE(result) = vcvtmd_s64_f64(pow(result / 255.0, a2 * 0.00001) * 255.0 + 0.5);
  }

  return result;
}

uint64_t png_gamma_correct(uint64_t a1, unsigned int a2, int a3)
{
  v3 = a2 - 1;
  if (*(a1 + 432) == 8)
  {
    if (v3 <= 0xFD)
    {
      LOBYTE(a2) = vcvtmd_s64_f64(pow(a2 / 255.0, a3 * 0.00001) * 255.0 + 0.5);
    }

    LOWORD(a2) = a2;
  }

  else if (v3 <= 0xFFFD)
  {
    LOWORD(a2) = vcvtmd_s64_f64(pow(a2 / 65535.0, a3 * 0.00001) * 65535.0 + 0.5);
  }

  return a2;
}

void png_build_gamma_table(uint64_t a1, int a2)
{
  if (*(a1 + 496) || *(a1 + 512))
  {
    png_warning(a1, "gamma table being rebuilt");
    png_destroy_gamma_table(a1);
  }

  if (a2 > 8)
  {
    if ((*(a1 + 431) & 2) != 0)
    {
      v9 = *(a1 + 592);
      if (*(a1 + 593) > v9)
      {
        v9 = *(a1 + 593);
      }

      if (*(a1 + 594) > v9)
      {
        v9 = *(a1 + 594);
      }
    }

    else
    {
      v9 = *(a1 + 595);
    }

    v10 = v9 - 1;
    v11 = 16 - v9;
    if (v10 >= 0xF)
    {
      v11 = 0;
    }

    v12 = v11;
    if (v11 <= 5u)
    {
      v12 = 5;
    }

    v13 = *(a1 + 88) & 0x4000400;
    if (v13)
    {
      v11 = v12;
    }

    if ((v11 & 0xF8) != 0)
    {
      v14 = 8;
    }

    else
    {
      v14 = v11;
    }

    *(a1 + 488) = v14;
    v15 = (a1 + 512);
    v16 = a1 + 528;
    v87 = v14;
    if (v13)
    {
      if (v15 <= v16)
      {
        v17 = *(a1 + 492);
        if (v17 < 1)
        {
          v22 = 1.0;
        }

        else
        {
          v18 = *(a1 + 1200) * 0.00001 * v17 + 0.5;
          v19 = floor(v18);
          v20 = vcvtmd_s64_f64(v18);
          if (v19 < -2147483650.0 || v19 > 2147483650.0)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = v20 * 0.00001;
          }
        }

        v28 = 8 - v14;
        v29 = (1 << (8 - v14));
        v30 = 16 - v14;
        png_calloc(a1, 16 * v29);
        v32 = v31;
        if (v31)
        {
          v33 = &v31[2 * v29];
        }

        else
        {
          v33 = 0;
        }

        *(a1 + 512) = v31;
        *(a1 + 520) = v33;
        v34 = v31;
        while (v34 >= v32 && (v34 + 2) <= v33 && v34 <= v34 + 2)
        {
          v35 = png_malloc(a1, 512);
          v36 = v35 + 64;
          if (!v35)
          {
            v36 = 0;
          }

          *v34 = v35;
          v34[1] = v36;
          v34 += 2;
          if (!--v29)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0xFFu >> v87;
            do
            {
              v40 = vcvtmd_s64_f64(pow(((257 * v37) + 128) / 65535.0, v22) * 65535.0 + 0.5);
              v41 = ((v40 << v30) - v40 + 0x8000) / 0xFFFF;
              if (v38 <= v41)
              {
                v42 = v41 + 1;
                while (1)
                {
                  v43 = (v32 + 16 * (v38 & v39));
                  v44 = v43 + 2;
                  v45 = v43 < v32 || v44 > v33;
                  if (v45 || v43 >= v44)
                  {
                    goto LABEL_137;
                  }

                  v47 = *v43;
                  v48 = v43[1];
                  v49 = (*v43 + 2 * (v38 >> v28));
                  v50 = v49 + 1;
                  v51 = v49 < v47 || v50 > v48;
                  if (v51 || v49 >= v50)
                  {
                    goto LABEL_137;
                  }

                  *v49 = 257 * v37;
                  if (v42 == ++v38)
                  {
                    v38 = v42;
                    break;
                  }
                }
              }

              ++v37;
            }

            while (v37 != 255);
            if (v38 >= 256 << v28)
            {
              goto LABEL_117;
            }

            while (1)
            {
              v53 = (v32 + 16 * (v38 & v39));
              v54 = v53 + 2;
              v55 = v53 < v32 || v54 > v33;
              if (v55 || v53 >= v54)
              {
                goto LABEL_137;
              }

              v57 = *v53;
              v58 = v53[1];
              v59 = (*v53 + 2 * (v38 >> v28));
              v60 = v59 + 1;
              v61 = v59 < v57 || v60 > v58;
              if (v61 || v59 >= v60)
              {
                goto LABEL_137;
              }

              *v59 = -1;
              if (256 << v28 == ++v38)
              {
                goto LABEL_117;
              }
            }
          }
        }
      }

      goto LABEL_137;
    }

    if (v15 > v16)
    {
LABEL_137:
      __break(0x5519u);
      return;
    }

    v23 = *(a1 + 492);
    if (v23 < 1)
    {
      v75 = 100000;
    }

    else
    {
      v24 = *(a1 + 1200);
      if (!v24 || ((v25 = 1.0e15 / v24 / v23 + 0.5, v26 = floor(v25), v26 <= 2147483650.0) ? (v27 = v26 < -2147483650.0) : (v27 = 1), v27))
      {
        v75 = 0;
      }

      else
      {
        v75 = vcvtmd_s64_f64(v25);
      }
    }

    png_build_16bit_table(a1, v15, v14, v75);
LABEL_117:
    if ((*(a1 + 88) & 0x600080) != 0)
    {
      if (a1 + 576 > (a1 + 592))
      {
        goto LABEL_137;
      }

      v76 = 1.0e10 / *(a1 + 1200) + 0.5;
      v77 = floor(v76);
      v78 = v77 < -2147483650.0 || v77 > 2147483650.0;
      v79 = vcvtmd_s64_f64(v76);
      if (v78)
      {
        v80 = 0;
      }

      else
      {
        v80 = v79;
      }

      png_build_16bit_table(a1, (a1 + 576), v87, v80);
      v81 = *(a1 + 492);
      if (v81 < 1)
      {
        v86 = *(a1 + 1200);
      }

      else
      {
        v82 = 1.0e10 / v81 + 0.5;
        v83 = floor(v82);
        v84 = v83 < -2147483650.0 || v83 > 2147483650.0;
        v85 = vcvtmd_s64_f64(v82);
        if (v84)
        {
          v86 = 0;
        }

        else
        {
          v86 = v85;
        }
      }

      png_build_16bit_table(a1, (a1 + 560), v87, v86);
    }
  }

  else
  {
    if (a1 + 496 > (a1 + 512))
    {
      goto LABEL_137;
    }

    v4 = *(a1 + 492);
    if (v4 < 1)
    {
      v63 = 100000;
    }

    else
    {
      v5 = *(a1 + 1200);
      if (!v5 || ((v6 = 1.0e15 / v5 / v4 + 0.5, v7 = floor(v6), v7 <= 2147483650.0) ? (v8 = v7 < -2147483650.0) : (v8 = 1), v8))
      {
        v63 = 0;
      }

      else
      {
        v63 = vcvtmd_s64_f64(v6);
      }
    }

    png_build_8bit_table(a1, (a1 + 496), v63);
    if ((*(a1 + 88) & 0x600080) != 0)
    {
      if (a1 + 544 <= (a1 + 560))
      {
        v64 = 1.0e10 / *(a1 + 1200) + 0.5;
        v65 = floor(v64);
        v66 = v65 < -2147483650.0 || v65 > 2147483650.0;
        v67 = vcvtmd_s64_f64(v64);
        if (v66)
        {
          v68 = 0;
        }

        else
        {
          v68 = v67;
        }

        png_build_8bit_table(a1, (a1 + 544), v68);
        v69 = *(a1 + 492);
        if (v69 < 1)
        {
          v74 = *(a1 + 1200);
        }

        else
        {
          v70 = 1.0e10 / v69 + 0.5;
          v71 = floor(v70);
          v72 = v71 < -2147483650.0 || v71 > 2147483650.0;
          v73 = vcvtmd_s64_f64(v70);
          if (v72)
          {
            v74 = 0;
          }

          else
          {
            v74 = v73;
          }
        }

        png_build_8bit_table(a1, (a1 + 528), v74);
        return;
      }

      goto LABEL_137;
    }
  }
}

void png_build_8bit_table(void (**a1)(void), void (***a2)(void), int a3)
{
  v5 = png_malloc(a1, 256);
  v6 = v5;
  if (v5)
  {
    v7 = v5 + 32;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  if ((a3 - 95000) > 0x2710)
  {
    v11 = 0;
    while (1)
    {
      v12 = (v11 - 1) > 0xFD ? v11 : vcvtmd_s64_f64(pow(v11 / 255.0, a3 * 0.00001) * 255.0 + 0.5);
      v13 = v6 + v11;
      if ((v6 + v11) >= v7 || v13 < v6)
      {
        break;
      }

      *v13 = v12;
      if (++v11 == 256)
      {
        return;
      }
    }
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = (v5 + v8);
      if ((v5 + v8) >= v7 || v9 < v5)
      {
        break;
      }

      *v9 = v8++;
      if (v8 == 256)
      {
        return;
      }
    }
  }

  __break(0x5519u);
}

void png_build_16bit_table(void (**a1)(void), unint64_t *a2, int a3, int a4)
{
  v7 = 8 - a3;
  v8 = (1 << (8 - a3));
  v9 = ~(-1 << (16 - a3));
  v10 = 1 << (15 - a3);
  png_calloc(a1, 16 * v8);
  v12 = v11;
  v13 = 0;
  v28 = v8;
  v14 = v11 + 16 * v8;
  if (!v11)
  {
    v14 = 0;
  }

  *a2 = v11;
  a2[1] = v14;
  v31 = v14;
  v29 = a4 - 95000;
  v15 = a4 * 0.00001;
LABEL_4:
  v16 = (v12 + 16 * v13);
  v17 = v16 + 2;
  if (v16 >= v12 && v17 <= v31 && v16 < v17)
  {
    v20 = png_malloc(a1, 512);
    v21 = v20;
    if (v20)
    {
      v22 = (v20 + 64);
    }

    else
    {
      v22 = 0;
    }

    *v16 = v20;
    v16[1] = v22;
    if (v29 >= 0x2711)
    {
      v26 = 0;
      v27 = v20;
      while (v27 >= v21 && (v27 + 1) <= v22 && v27 <= v27 + 1)
      {
        *v27++ = vcvtmd_s64_f64(pow(1.0 / v9 * ((v26 << v7) + v13), v15) * 65535.0 + 0.5);
        if (++v26 == 256)
        {
LABEL_28:
          if (++v13 != v28)
          {
            goto LABEL_4;
          }

          return;
        }
      }
    }

    else
    {
      v23 = 0;
      v24 = v20;
      while (1)
      {
        v25 = (v23 << v7) + v13;
        if (a3)
        {
          v25 = (v10 - v25 + (v25 << 16)) / v9;
        }

        if (v24 < v20 || (v24 + 1) > v22 || v24 > v24 + 1)
        {
          break;
        }

        *v24++ = v25;
        if (++v23 == 256)
        {
          goto LABEL_28;
        }
      }
    }
  }

  __break(0x5519u);
}

void TIFFWritePlugin::~TIFFWritePlugin(TIFFWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t TIFFWritePlugin::writeIPTCData(int a1, int a2, IIODictionary *this)
{
  if (this && IIODictionary::getObjectForKey(this, @"{IPTC}"))
  {
    operator new();
  }

  return 0;
}

uint64_t TIFFWritePlugin::fixScanlineForCIELab(TIFFWritePlugin *this, char *a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v5 = (a5 * a4) >> 3;
  if (a3 && a5 == 8)
  {
    v6 = a2 + 2;
    do
    {
      *(v6 - 1) ^= 0x80u;
      *v6 ^= 0x80u;
      v6 += v5;
      --a3;
    }

    while (a3);
  }

  else if (a3 && a5 == 16)
  {
    v7 = a2 + 4;
    do
    {
      *(v7 - 1) ^= 0x8000u;
      *v7 ^= 0x8000u;
      v7 = (v7 + v5);
      --a3;
    }

    while (a3);
  }

  return 0;
}

uint64_t TIFFWritePlugin::writeOne(uint64_t a1, uint64_t a2, IIOImageReadSession **a3, IIOImagePixelDataProvider *this, IIODictionary *a5)
{
  v363 = *MEMORY[0x1E69E9840];
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(this);
  v340 = this;
  BitmapInfo = IIOImagePixelDataProvider::getBitmapInfo(this);
  v358 = 0;
  v359 = 0;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    v10 = *(a1 + 32);
    v11 = v10 >> 24;
    if ((v10 >> 24) <= 0x7F)
    {
      v12 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(v11, 0x40000uLL);
      v10 = *(a1 + 32);
    }

    if (v12)
    {
      v13 = (v10 >> 24);
    }

    else
    {
      v13 = 46;
    }

    v14 = v10 << 8 >> 24;
    if (v14 <= 0x7F)
    {
      v15 = *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(v14, 0x40000uLL);
      v10 = *(a1 + 32);
    }

    if (v15)
    {
      v16 = (v10 << 8 >> 24);
    }

    else
    {
      v16 = 46;
    }

    v17 = v10 >> 8;
    if (v17 <= 0x7F)
    {
      v18 = *(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x40000;
    }

    else
    {
      v18 = __maskrune(v17, 0x40000uLL);
      v10 = *(a1 + 32);
    }

    if (v18)
    {
      v19 = (v10 >> 8);
    }

    else
    {
      v19 = 46;
    }

    if (v10 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v10, 0x40000uLL))
    {
LABEL_22:
      v20 = *(a1 + 32);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' TIFFWritePlugin::writeOne\n", v13, v16, v19, v20);
      goto LABEL_26;
    }

    v20 = 46;
    goto LABEL_25;
  }

LABEL_26:
  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(v340);
  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(v340);
  v23 = 4294967246;
  v354 = BytesPerRow;
  if (!BytesPerRow)
  {
    return v23;
  }

  v24 = SourceGeomColorSpace;
  if (!SourceGeomColorSpace)
  {
    return v23;
  }

  NumberOfComponents = CGColorSpaceGetNumberOfComponents(SourceGeomColorSpace);
  Model = CGColorSpaceGetModel(v24);
  Type = CGColorSpaceGetType();
  size = BitmapInfo;
  if (Type == 7)
  {
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(v24);
    v28 = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
    ColorTableCount = CGColorSpaceGetColorTableCount(v24);
    v335 = malloc_type_malloc(ColorTableCount * v28, 0x100004077774924uLL);
    CGColorSpaceGetColorTable(v24, v335);
    v30 = CGColorSpaceGetBaseColorSpace(v24);
    CGColorSpaceGetType();
    v342 = v30;
    Model = CGColorSpaceGetModel(v30);
    Uint32ForKeyGroup = 0;
    v338 = 0;
    v31 = 1;
  }

  else
  {
    v342 = v24;
    if (Model == kCGColorSpaceModelRGB)
    {
      if (IIODictionary::containsKeyGroup(a5, @"TileWidth", @"{TIFF}"))
      {
        Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(a5, @"TileWidth", @"{TIFF}");
      }

      else
      {
        Uint32ForKeyGroup = 0;
      }

      if (IIODictionary::containsKeyGroup(a5, @"TileLength", @"{TIFF}"))
      {
        v32 = IIODictionary::getUint32ForKeyGroup(a5, @"TileLength", @"{TIFF}");
        ColorTableCount = 0;
        v31 = 1;
        if (!Uint32ForKeyGroup || !v32)
        {
          v338 = v32;
          Model = kCGColorSpaceModelRGB;
          v335 = 0;
          goto LABEL_48;
        }

        ColorTableCount = 0;
        v335 = 0;
        v33 = ((v32 | Uint32ForKeyGroup) & 0xF) == 0;
        if (((v32 | Uint32ForKeyGroup) & 0xF) != 0)
        {
          v34 = 256;
        }

        else
        {
          v34 = Uint32ForKeyGroup;
        }

        Uint32ForKeyGroup = v34;
        if (v33)
        {
          v32 = v32;
        }

        else
        {
          v32 = 256;
        }

        v338 = v32;
      }

      else
      {
        ColorTableCount = 0;
        v335 = 0;
        v338 = 0;
        v31 = 1;
      }

      Model = kCGColorSpaceModelRGB;
    }

    else
    {
      v31 = 0;
      ColorTableCount = 0;
      v335 = 0;
      Uint32ForKeyGroup = 0;
      v338 = 0;
    }
  }

LABEL_48:
  v35 = IIOImageSource::count(v340);
  v36 = IIO_Reader::testHeaderSize(v340);
  v349 = v35;
  _cg_TIFFSetField(a2, 256, v37, v38, v39, v40, v41, v42, v35);
  v337 = v36;
  _cg_TIFFSetField(a2, 257, v43, v44, v45, v46, v47, v48, v36);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("\n");
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    TIFFTAG_IMAGEWIDTH/TIFFTAG_IMAGEHEIGHT: %dx%d\n", v35, v36);
    }
  }

  _cg_TIFFSetField(a2, 284, v49, v50, v51, v52, v53, v54, 1);
  if (AlphaInfo)
  {
    v61 = NumberOfComponents + 1;
  }

  else
  {
    v61 = NumberOfComponents;
  }

  v62 = v61;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                   TIFFTAG_SAMPLESPERPIXEL: %d\n", v61);
  }

  v352 = v62;
  _cg_TIFFSetField(a2, 277, v55, v56, v57, v58, v59, v60, v62);
  v69 = v35;
  if (IIODictionary::containsKey(a5, @"Orientation"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(a5, @"Orientation");
  }

  else
  {
    Uint32ForKey = 1;
  }

  if (Uint32ForKey - 9 < 0xFFFFFFF8)
  {
    v71 = 1;
  }

  else
  {
    v71 = Uint32ForKey;
  }

  _cg_TIFFSetField(a2, 274, v63, v64, v65, v66, v67, v68, v71);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                       TIFFTAG_ORIENTATION: %d\n", v71);
  }

  v360 = 0;
  v361[0] = 0;
  if (AlphaInfo)
  {
    v78 = AlphaInfo == 3 ? 2 : 1;
    LOWORD(v362[0]) = v78;
    _cg_TIFFSetField(a2, 338, v72, v73, v74, v75, v76, v77, 1);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("                      TIFFTAG_EXTRASAMPLES: %d\n", LOWORD(v362[0]));
    }
  }

  __n = _cg_GifLastError(v340);
  _cg_TIFFSetField(a2, 258, v79, v80, v81, v82, v83, v84, __n);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                     TIFFTAG_BITSPERSAMPLE: %d\n", __n);
  }

  v91 = 3;
  if ((size & 0x100) != 0)
  {
    v92 = 3;
  }

  else
  {
    v92 = 1;
  }

  if ((size & 0x100) == 0)
  {
    v91 = 1;
  }

  _cg_TIFFSetField(a2, 339, v85, v86, v87, v88, v89, v90, v91);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                      TIFFTAG_SAMPLEFORMAT: %d\n", v92);
  }

  if (Type == 7)
  {
    v99 = 3;
  }

  else
  {
    v99 = 2;
  }

  if ((v31 & 1) == 0)
  {
    if (Model == kCGColorSpaceModelLab)
    {
      v99 = 8;
    }

    else if (Model == kCGColorSpaceModelCMYK)
    {
      v99 = 5;
    }

    else if (Model)
    {
      v99 = 2;
    }

    else
    {
      v99 = IIOImageSource::reader(v340) == 0;
    }
  }

  _cg_TIFFSetField(a2, 262, v93, v94, v95, v96, v97, v98, v99);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                       TIFFTAG_PHOTOMETRIC: %d\n", v99);
  }

  v100 = IIODictionary::getUint32ForKeyGroup(a5, @"Compression", @"{TIFF}");
  if (v338)
  {
    v107 = Uint32ForKeyGroup == 0;
  }

  else
  {
    v107 = 1;
  }

  if (v107)
  {
    v108 = v100;
  }

  else
  {
    v108 = 1;
  }

  if (v108 > 7u)
  {
    if (v108 == 8 || v108 == 32773)
    {
      goto LABEL_106;
    }

LABEL_103:
    if (Model == kCGColorSpaceModelMonochrome && __n == 1 && v352 == 1)
    {
      goto LABEL_106;
    }

    goto LABEL_107;
  }

  if (v108 == 5)
  {
LABEL_106:
    _cg_TIFFSetField(a2, 259, v101, v102, v103, v104, v105, v106, v108);
    goto LABEL_107;
  }

  if (v108 != 7)
  {
    goto LABEL_103;
  }

  v108 = 1;
  if (__n == 8 && Model < kCGColorSpaceModelCMYK)
  {
    v108 = 7;
    goto LABEL_106;
  }

LABEL_107:
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                       TIFFTAG_COMPRESSION: %d\n", v108);
  }

  _cg_TIFFSetField(a2, 266, v101, v102, v103, v104, v105, v106, 1);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                         TIFFTAG_FILLORDER: %d\n", 1);
  }

  if (__n == 8 && v108 == 5)
  {
    _cg_TIFFSetField(a2, 317, v110, v111, v112, v113, v114, v115, 2);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("                         TIFFTAG_PREDICTOR: %d\n", 2);
    }
  }

  if (_cg_TIFFScanlineSize(a2, v109, v110, v111, v112, v113, v114, v115) > v354)
  {
    goto LABEL_250;
  }

  if (Uint32ForKeyGroup)
  {
    v122 = v338 == 0;
  }

  else
  {
    v122 = 1;
  }

  v123 = v122;
  if (v122)
  {
    if (__n < 2u)
    {
      if ((v108 - 3) > 1u)
      {
        TIFFWritePlugin::writeOne(v108, __n);
      }

      _cg_TIFFSetField(a2, 278, v116, v117, v118, v119, v120, v121, v337);
      v127 = BYTE2(gIIODebugFlags);
      LODWORD(v126) = v337;
    }

    else
    {
      v124 = 0x20000 / v354;
      v125 = (0x20000 / v354) & 0x3FFF8;
      if (((0x20000 / v354) & 0x3FFF8) == 0)
      {
        LODWORD(v125) = 8;
      }

      if (v108 == 7)
      {
        LODWORD(v124) = v125;
      }

      if (v124 <= 1)
      {
        v126 = 1;
      }

      else
      {
        v126 = v124;
      }

      _cg_TIFFSetField(a2, 278, v116, v117, v118, v119, v120, v121, v126);
      v127 = BYTE2(gIIODebugFlags);
    }

    if ((v127 & 3) != 0)
    {
      ImageIOLog("                      TIFFTAG_ROWSPERSTRIP: %d\n", v126);
    }
  }

  if (IIODictionary::containsKey(a5, @"DPIWidth") && IIODictionary::containsKey(a5, @"DPIHeight"))
  {
    FloatForKey = IIODictionary::getFloatForKey(a5, @"DPIWidth");
    v129 = IIODictionary::getFloatForKey(a5, @"DPIHeight");
    *&v130 = FloatForKey;
    _cg_TIFFSetField(a2, 282, v131, v132, v133, v134, v135, v136, v130);
    *&v137 = v129;
    _cg_TIFFSetField(a2, 283, v138, v139, v140, v141, v142, v143, v137);
    _cg_TIFFSetField(a2, 296, v144, v145, v146, v147, v148, v149, 2);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("   TIFFTAG_XRESOLUTION/TIFFTAG_YRESOLUTION: %g %g\n", *&v130, *&v137);
    }
  }

  else
  {
    if (IIODictionary::containsKeyGroup(a5, @"ResolutionUnit", @"{TIFF}"))
    {
      v162 = IIODictionary::getUint32ForKeyGroup(a5, @"ResolutionUnit", @"{TIFF}");
    }

    else
    {
      v162 = 2;
    }

    _cg_TIFFSetField(a2, 296, v156, v157, v158, v159, v160, v161, v162);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("                    TIFFTAG_RESOLUTIONUNIT: %d\n", v162);
    }

    if (IIODictionary::containsKeyGroup(a5, @"DPIWidth", @"{TIFF}"))
    {
      if (IIODictionary::containsKeyGroup(a5, @"DPIHeight", @"{TIFF}"))
      {
        FloatForKeyGroup = IIODictionary::getFloatForKeyGroup(a5, @"DPIWidth", @"{TIFF}");
        v164 = IIODictionary::getFloatForKeyGroup(a5, @"DPIHeight", @"{TIFF}");
        *&v165 = FloatForKeyGroup;
        _cg_TIFFSetField(a2, 282, v166, v167, v168, v169, v170, v171, v165);
        *&v172 = v164;
        _cg_TIFFSetField(a2, 283, v173, v174, v175, v176, v177, v178, v172);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("   TIFFTAG_XRESOLUTION/TIFFTAG_YRESOLUTION: %d %d\n", v165, v172);
        }
      }
    }
  }

  if (Type == 7)
  {
    if (ColorTableCount <= 0x100 && (1 << *(a2 + 116)) <= 0x100)
    {
      memset(v362, 0, sizeof(v362));
      memset(&v361[1], 0, 1024);
      if (ColorTableCount)
      {
        v179 = &v361[1] + 1;
        v180 = &v361[65] + 1;
        v181 = (v335 + 2);
        v182 = v362 + 1;
        do
        {
          v183 = *(v181 - 2);
          *v182 = v183;
          *(v182 - 1) = v183;
          v184 = *(v181 - 1);
          *v180 = v184;
          *(v180 - 1) = v184;
          v185 = *v181;
          v181 += 3;
          *v179 = v185;
          *(v179 - 1) = v185;
          v179 += 2;
          v180 += 2;
          v182 += 2;
          --ColorTableCount;
        }

        while (ColorTableCount);
      }

      _cg_TIFFSetField(a2, 320, v150, v151, v152, v153, v154, v155, v362);
      goto LABEL_157;
    }

    _cg_jpeg_mem_term("writeOne", 538, "bitsPerSample: %d  colorTableCount: %d\n", *(a2 + 116), ColorTableCount);
LABEL_250:
    v290 = 0;
    goto LABEL_251;
  }

LABEL_157:
  if (IIODictionary::containsKeyGroup(a5, @"DocumentName", @"{TIFF}"))
  {
    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(a5, @"DocumentName", @"{TIFF}");
    IIOString::IIOString(v362, ObjectForKeyGroup);
    v187 = IIOString::utf8String(v362);
    _cg_TIFFSetField(a2, 269, v188, v189, v190, v191, v192, v193, v187);
    IIOString::~IIOString(v362);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v362, ObjectForKeyGroup);
      v194 = IIOString::utf8String(v362);
      ImageIOLog("                      TIFFTAG_DOCUMENTNAME: %s\n", v194);
      IIOString::~IIOString(v362);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"ImageDescription", @"{TIFF}"))
  {
    v195 = IIODictionary::getObjectForKeyGroup(a5, @"ImageDescription", @"{TIFF}");
    IIOString::IIOString(v362, v195);
    v196 = IIOString::utf8String(v362);
    _cg_TIFFSetField(a2, 270, v197, v198, v199, v200, v201, v202, v196);
    IIOString::~IIOString(v362);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v362, v195);
      v203 = IIOString::utf8String(v362);
      ImageIOLog("                  TIFFTAG_IMAGEDESCRIPTION: %s\n", v203);
      IIOString::~IIOString(v362);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"Make", @"{TIFF}"))
  {
    v204 = IIODictionary::getObjectForKeyGroup(a5, @"Make", @"{TIFF}");
    IIOString::IIOString(v362, v204);
    v205 = IIOString::utf8String(v362);
    _cg_TIFFSetField(a2, 271, v206, v207, v208, v209, v210, v211, v205);
    IIOString::~IIOString(v362);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v362, v204);
      v212 = IIOString::utf8String(v362);
      ImageIOLog("                              TIFFTAG_MAKE: %s\n", v212);
      IIOString::~IIOString(v362);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"Model", @"{TIFF}"))
  {
    v213 = IIODictionary::getObjectForKeyGroup(a5, @"Model", @"{TIFF}");
    IIOString::IIOString(v362, v213);
    v214 = IIOString::utf8String(v362);
    _cg_TIFFSetField(a2, 272, v215, v216, v217, v218, v219, v220, v214);
    IIOString::~IIOString(v362);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v362, v213);
      v221 = IIOString::utf8String(v362);
      ImageIOLog("                             TIFFTAG_MODEL: %s\n", v221);
      IIOString::~IIOString(v362);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"Software", @"{TIFF}"))
  {
    v222 = IIODictionary::getObjectForKeyGroup(a5, @"Software", @"{TIFF}");
    IIOString::IIOString(v362, v222);
    v223 = IIOString::utf8String(v362);
    _cg_TIFFSetField(a2, 305, v224, v225, v226, v227, v228, v229, v223);
    IIOString::~IIOString(v362);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v362, v222);
      v230 = IIOString::utf8String(v362);
      ImageIOLog("                          TIFFTAG_SOFTWARE: %s\n", v230);
      IIOString::~IIOString(v362);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"Artist", @"{TIFF}"))
  {
    v231 = IIODictionary::getObjectForKeyGroup(a5, @"Artist", @"{TIFF}");
    IIOString::IIOString(v362, v231);
    v232 = IIOString::utf8String(v362);
    _cg_TIFFSetField(a2, 315, v233, v234, v235, v236, v237, v238, v232);
    IIOString::~IIOString(v362);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v362, v231);
      v239 = IIOString::utf8String(v362);
      ImageIOLog("                            TIFFTAG_ARTIST: %s\n", v239);
      IIOString::~IIOString(v362);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"HostComputer", @"{TIFF}"))
  {
    v240 = IIODictionary::getObjectForKeyGroup(a5, @"HostComputer", @"{TIFF}");
    IIOString::IIOString(v362, v240);
    v241 = IIOString::utf8String(v362);
    _cg_TIFFSetField(a2, 316, v242, v243, v244, v245, v246, v247, v241);
    IIOString::~IIOString(v362);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v362, v240);
      v248 = IIOString::utf8String(v362);
      ImageIOLog("                      TIFFTAG_HOSTCOMPUTER: %s\n", v248);
      IIOString::~IIOString(v362);
    }
  }

  if (IIODictionary::containsKeyGroup(a5, @"Copyright", @"{TIFF}"))
  {
    v249 = IIODictionary::getObjectForKeyGroup(a5, @"Copyright", @"{TIFF}");
    IIOString::IIOString(v362, v249);
    v250 = IIOString::utf8String(v362);
    _cg_TIFFSetField(a2, 33432, v251, v252, v253, v254, v255, v256, v250);
    IIOString::~IIOString(v362);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v362, v249);
      v257 = IIOString::utf8String(v362);
      ImageIOLog("                         TIFFTAG_COPYRIGHT: %s\n", v257);
      IIOString::~IIOString(v362);
    }
  }

  v258 = IIODictionary::containsKeyGroup(a5, @"DateTime", @"{TIFF}");
  if (v258)
  {
    v259 = IIODictionary::getObjectForKeyGroup(a5, @"DateTime", @"{TIFF}");
    IIOString::IIOString(v362, v259);
    v260 = IIOString::utf8String(v362);
    _cg_TIFFSetField(a2, 306, v261, v262, v263, v264, v265, v266, v260);
    IIOString::~IIOString(v362);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      IIOString::IIOString(v362, v259);
      v267 = IIOString::utf8String(v362);
      ImageIOLog("                          TIFFTAG_DATETIME: %s\n", v267);
      IIOString::~IIOString(v362);
    }
  }

  TIFFWritePlugin::writeIPTCData(v258, a2, a5);
  BoolForKey = IIODictionary::getBoolForKey(a5, @"kCGImageMetadataShouldExcludeXMP");
  if (!BoolForKey)
  {
    TIFFWritePlugin::writeXMPData(BoolForKey, a2, a5);
  }

  Ref = IIOImageSource::imageReadRef(v340);
  RenderingIntent = CGImageGetRenderingIntent(Ref);
  TIFFWritePlugin::writeICCData(RenderingIntent, a2, v342, RenderingIntent);
  v271 = myTIFFSeekProc(a3, 0, 2);
  v361[0] = 0;
  ExifBufferFromPropertiesTIFF = CreateExifBufferFromPropertiesTIFF(a5, v349, v337, v271, v361);
  if (v361[0])
  {
    v279 = ExifBufferFromPropertiesTIFF;
    if (ExifBufferFromPropertiesTIFF)
    {
      if (_cg_TIFFSetField(a2, 34665, v273, v274, v275, v276, v277, v278, v271))
      {
        myTIFFWriteProc(a3, v279, v361[0]);
      }

      free(v279);
    }
  }

  v280 = myTIFFSeekProc(a3, 0, 2);
  v360 = 0;
  v282 = CreateGPSBufferFromPropertiesTIFF(a5, v349, v337, v280, &v360, v281);
  if (v360)
  {
    v289 = v282;
    if (v282)
    {
      if (_cg_TIFFSetField(a2, 34853, v283, v284, v285, v286, v287, v288, v280))
      {
        myTIFFWriteProc(a3, v289, v360);
      }

      free(v289);
    }
  }

  if (v123)
  {
    v290 = IIOImagePixelDataProvider::createEncodingTempBuffer(v340, &v359, &v358);
    v291 = v337;
    if (v337)
    {
      v292 = 0;
      v293 = v359;
      while (1)
      {
        if (v293 + v292 > v337)
        {
          v358 = v354 * (v291 - v292);
          v359 = (v291 - v292);
        }

        Bytes = IIOImagePixelDataProvider::getBytes(v340, v290);
        if (Bytes != v358)
        {
          _cg_jpeg_mem_term("writeOne", 703, "CGImagePixelDataProviderGetBytes returned: %ld - expected: %ld\n", Bytes, v358);
          v291 = v337;
          goto LABEL_243;
        }

        v293 = v359;
        if (v359)
        {
          break;
        }

LABEL_208:
        v292 = (v292 + v293);
        v291 = v337;
        if (v292 >= v337)
        {
          goto LABEL_243;
        }
      }

      v299 = 0;
      v300 = v292;
      v301 = v290;
      while (1)
      {
        if (v99 == 8)
        {
          TIFFWritePlugin::fixScanlineForCIELab(Bytes, v301, v349, v352, __n);
        }

        Bytes = _cg_TIFFWriteScanline(a2, v301, v300, 0, v295, v296, v297, v298);
        if ((Bytes & 0x80000000) != 0)
        {
          goto LABEL_251;
        }

        ++v299;
        v301 += v354;
        v293 = v359;
        v300 = (v300 + 1);
        if (v359 <= v299)
        {
          goto LABEL_208;
        }
      }
    }

    LODWORD(v292) = 0;
LABEL_243:
    if (v292 != v291)
    {
      goto LABEL_251;
    }

    v333 = _cg_TIFFWriteDirectory(a2);
LABEL_235:
    if (v333)
    {
      v306 = v335;
      v23 = 0;
LABEL_237:
      if (!v306)
      {
        goto LABEL_239;
      }

      goto LABEL_238;
    }

LABEL_251:
    v23 = 4294967246;
    goto LABEL_252;
  }

  v290 = 0;
  v302 = (__n + 7) >> 3;
  v343 = v302 * v352;
  v303 = Uint32ForKeyGroup * (v302 * v352);
  v305 = v303 * v338;
  v304 = (v305 & 0xFFFFFFFF00000000) != 0;
  v305 = v305;
  v23 = 4294967246;
  v336 = Uint32ForKeyGroup * v302 * v352;
  if ((v303 & 0xFFFFFFFF00000000) != 0)
  {
    v305 = 0;
  }

  sizea = v305;
  if ((v303 & 0xFFFFFFFF00000000) == 0)
  {
    v306 = v335;
    if (v304)
    {
      goto LABEL_237;
    }

    v307 = v354 * v338;
    v339 = v307;
    v358 = v307;
    if ((v307 & 0xFFFFFFFF00000000) == 0)
    {
      v308 = malloc_type_malloc(v305, 0x100004077774924uLL);
      v348 = malloc_type_malloc(v339, 0x100004077774924uLL);
      _cg_TIFFSetField(a2, 322, v309, v310, v311, v312, v313, v314, Uint32ForKeyGroup);
      _cg_TIFFSetField(a2, 323, v315, v316, v317, v318, v319, v320, v338);
      v321 = v337;
      v322 = v338;
      if (v337)
      {
        v323 = 0;
        v324 = Uint32ForKeyGroup * v302 * v352;
        *v353 = v338;
        do
        {
          v341 = v323 + v322;
          if (v323 + v322 > v321)
          {
            *v353 = v321 - v323;
            v358 = v354 * *v353;
            bzero(v308, sizea);
          }

          IIOImagePixelDataProvider::getBytes(v340, v348);
          if (v69)
          {
            v327 = 0;
            v328 = 0;
            __na = v336;
            v351 = v323;
            do
            {
              v329 = v328 + Uint32ForKeyGroup;
              if (v328 + Uint32ForKeyGroup > v69)
              {
                __na = (v69 - v328) * v343;
                bzero(v308, sizea);
              }

              if (*v353)
              {
                v330 = 0;
                v331 = *v353;
                v332 = &v348[v327];
                do
                {
                  memcpy(&v308[v330], v332, __na);
                  v330 += v324;
                  v332 += v354;
                  --v331;
                }

                while (v331);
              }

              v69 = v349;
              if (_cg_TIFFWriteTile(a2, v308, v328, v351, 0, 0, v325, v326) == -1)
              {
                LogError("writeOne", 792, "*** TIFFWriteTile returned: %d\n", -1);
              }

              v327 += v324;
              v328 += Uint32ForKeyGroup;
            }

            while (v329 < v349);
          }

          v323 = v341;
          v321 = v337;
          v322 = v338;
        }

        while (v341 < v337);
      }

      if (v308)
      {
        free(v308);
      }

      if (v348)
      {
        free(v348);
      }

      v333 = _cg_TIFFWriteDirectory(a2);
      v290 = 0;
      goto LABEL_235;
    }

    v290 = 0;
  }

LABEL_252:
  v306 = v335;
  if (v335)
  {
LABEL_238:
    free(v306);
  }

LABEL_239:
  if (v290)
  {
    free(v290);
  }

  return v23;
}

uint64_t TIFFWritePlugin::writeAll(IIOImageDestination **this)
{
  if (IIOWritePlugin::getImageCount(this))
  {
    operator new();
  }

  return 4294967246;
}

void IIO_ReaderHandler::~IIO_ReaderHandler(IIO_ReaderHandler *this)
{
  *this = &unk_1EF4DA608;
  v1 = (this + 16);
  std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::~__hash_table(this + 40);
  v2 = v1;
  std::vector<std::unique_ptr<IIO_Reader>>::__destroy_vector::operator()[abi:fe200100](&v2);
}

{
  *this = &unk_1EF4DA608;
  v2 = (this + 16);
  std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::~__hash_table(this + 40);
  v3 = v2;
  std::vector<std::unique_ptr<IIO_Reader>>::__destroy_vector::operator()[abi:fe200100](&v3);
  MEMORY[0x186602850](this, 0x10A1C40EEBF52FBLL);
}

CFMutableArrayRef IIO_ReaderHandler::copyTypeExtensions(IIO_ReaderHandler *this, const __CFString *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = *(this + 2);
  v6 = *(this + 3);
  if (v5 != v6)
  {
    while (1)
    {
      if (!a2)
      {
        goto LABEL_5;
      }

      v7 = CFStringCompare(a2, @"public.camera-raw-image", 0);
      v8 = IIO_Reader::utType(*v5);
      if (v7 == kCFCompareEqualTo)
      {
        break;
      }

      if (CFStringCompare(v8, a2, 0) == kCFCompareEqualTo)
      {
        goto LABEL_5;
      }

LABEL_6:
      if (++v5 == v6)
      {
        return Mutable;
      }
    }

    if (!CFStringHasSuffix(v8, @"raw-image"))
    {
      goto LABEL_6;
    }

LABEL_5:
    (*(**v5 + 136))(*v5, Mutable);
    goto LABEL_6;
  }

  return Mutable;
}

IIO_Reader *IIO_ReaderHandler::readerForUTTypeAndOSType(IIO_ReaderHandler *this, const __CFString *a2, int a3)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == v4)
  {
    return 0;
  }

  while (1)
  {
    v7 = IIO_Reader::utType(*v3);
    if (CFStringCompare(v7, a2, 0) == kCFCompareEqualTo && IIO_Reader::osType(*v3) == a3)
    {
      break;
    }

    if (++v3 == v4)
    {
      return 0;
    }
  }

  return *v3;
}

__CFString *IIO_ReaderHandler::typeForPathExtension(IIO_ReaderHandler *this, CFStringRef theString)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = xmmword_186224392;
  v7 = 0;
  if (!theString || !CFStringGetCString(theString, &v6 + 1, 15, 0x600u))
  {
    return 0;
  }

  if (strcasecmp(&v6, ".tif"))
  {
    v4 = *(this + 2);
    v3 = *(this + 3);
    while (v4 != v3)
    {
      if ((*(**v4 + 144))(*v4, &v6))
      {
        return IIO_Reader::utType(*v4);
      }

      ++v4;
    }

    return 0;
  }

  if (IIO_ReaderHandler::readerForUTType(this, @"public.tiff"))
  {
    return @"public.tiff";
  }

  else
  {
    return 0;
  }
}

IIO_Reader *IIO_ReaderHandler::typeFromDataAtPath(IIO_ReaderHandler *a1, const __CFString *a2, __CFString *a3, __int128 *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    LogError("typeFromDataAtPath", 515, "*** ERROR: path parameter is nil\n");
    return 0;
  }

  bzero(v23, 0x400uLL);
  v8 = *(a1 + 1);
  v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (!_CFStringGetFileSystemRepresentation())
  {
    goto LABEL_15;
  }

  v11 = open(v23, 0, 0);
  v12 = v11;
  if ((gIIODebugFlags & 0x200000000000) != 0)
  {
    ImageIOLog(">>> %s: opening file [%d] '%s'\n", "typeFromDataAtPath", v11, v23);
  }

  if (v12 < 0)
  {
LABEL_15:
    v19 = 0;
  }

  else
  {
    v13 = pread(v12, v10, v8, 0);
    if (v13 < 1)
    {
      v19 = 0;
    }

    else
    {
      v14 = v13;
      if (!a3 && (a4[1] & 2) != 0)
      {
        v15 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], a2, kCFURLPOSIXPathStyle, 0);
        if (v15)
        {
          v16 = v15;
          v17 = CFURLCopyPathExtension(v15);
          if (v17)
          {
            v18 = v17;
            a3 = IIO_ReaderHandler::typeForPathExtension(a1, v17);
            CFRelease(v18);
          }

          else
          {
            a3 = 0;
          }

          CFRelease(v16);
        }

        else
        {
          a3 = 0;
        }
      }

      v21 = *a4;
      v22 = *(a4 + 2);
      v19 = IIO_ReaderHandler::typeForBytes(a1, v10, v14, a3, &v21);
    }

    if ((gIIODebugFlags & 0x200000000000) != 0)
    {
      ImageIOLog("<<< %s: closing file [%d] '%s'\n", "typeFromDataAtPath", v12, v23);
    }

    close(v12);
  }

  free(v10);
  return v19;
}

IIO_Reader *IIO_ReaderHandler::typeForBytes(IIO_Reader ***a1, uint64_t a2, unint64_t a3, __CFString *a4, uint64_t a5)
{
  v8 = 0;
  v6 = *a5;
  v7 = *(a5 + 16);
  result = IIO_ReaderHandler::readerForBytesImp(a1, a2, a3, a4, a3, &v6, 0, &v8);
  if (result)
  {
    return IIO_Reader::utType(result);
  }

  return result;
}

IIO_Reader *IIO_ReaderHandler::typeFromURL(IIO_ReaderHandler *a1, const void *a2, __CFString *a3, uint64_t a4)
{
  if (!a2)
  {
    IIO_ReaderHandler::typeFromURL();
    return 0;
  }

  v8 = CFURLGetTypeID();
  if (v8 != CFGetTypeID(a2))
  {
    IIO_ReaderHandler::typeFromURL();
    return 0;
  }

  v9 = CFURLCopyPathExtension(a2);
  if (!a3)
  {
    a3 = IIO_ReaderHandler::typeForPathExtension(a1, v9);
  }

  v10 = IIO_CFURLCopyResolvedFileSystemPath(a2);
  if (v10)
  {
    v11 = v10;
    v16 = *a4;
    v17 = *(a4 + 16);
    v12 = IIO_ReaderHandler::typeFromDataAtPath(a1, v10, a3, &v16);
    CFRelease(v11);
    if (!v9)
    {
      return v12;
    }

    goto LABEL_12;
  }

  v13 = CGDataProviderCreateWithURL(a2);
  if (v13)
  {
    v14 = v13;
    v16 = *a4;
    v17 = *(a4 + 16);
    v12 = IIO_ReaderHandler::typeForDataProvider(a1, v13, 0, &v16, 0);
    CGDataProviderRelease(v14);
    if (!v9)
    {
      return v12;
    }

    goto LABEL_12;
  }

  v12 = 0;
  if (v9)
  {
LABEL_12:
    CFRelease(v9);
  }

  return v12;
}

IIO_Reader *IIO_ReaderHandler::typeForDataProvider(uint64_t a1, uint64_t a2, __CFString *a3, __int128 *a4, BOOL *a5)
{
  if (!a2)
  {
    LogError("typeForDataProvider", 642, "*** ERROR: provider parameter is nil\n");
    return 0;
  }

  if (a5)
  {
    *a5 = 1;
  }

  v9 = *(a1 + 8);
  v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  BytesAtPosition = CGDataProviderGetBytesAtPosition();
  if (a5)
  {
    *a5 = BytesAtPosition < v9;
  }

  v15 = *a4;
  v16 = *(a4 + 2);
  v13 = IIO_ReaderHandler::typeForBytes(a1, v11, BytesAtPosition, a3, &v15);
  free(v11);
  return v13;
}

IIO_Reader *IIO_ReaderHandler::typeForData(IIO_Reader ***a1, CFDataRef theData, __CFString *a3, __int128 *a4, _BYTE *a5)
{
  if (theData)
  {
    if (a5)
    {
      *a5 = 1;
    }

    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    v13 = *a4;
    v14 = *(a4 + 2);
    result = IIO_ReaderHandler::typeForBytes(a1, BytePtr, Length, a3, &v13);
    if (a5)
    {
      if (result)
      {
        *a5 = 0;
      }
    }
  }

  else
  {
    LogError("typeForData", 714, "*** ERROR: data parameter is nil\n");
    return 0;
  }

  return result;
}

void ___ZN17IIO_ReaderHandler18copySupportedTypesEv_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      v5 = *(a1 + 32);

      IIOArray::addObject(v5, cf);
    }
  }
}

uint64_t IIO_ReaderHandler::disableRAWPlugins(IIO_ReaderHandler *this)
{
  v1 = *(this + 2);
  if (v1 == *(this + 3))
  {
    return 0;
  }

  while (1)
  {
    result = (*(**v1 + 152))();
    if (result)
    {
      break;
    }

    ++v1;
    v6 = *(this + 3);
LABEL_10:
    if (v1 == v6)
    {
      return 0;
    }
  }

  v4 = *(this + 3);
  if (v4 != v1)
  {
    std::__copy_move_unwrap_iters[abi:fe200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<IIO_Reader> *,std::unique_ptr<IIO_Reader> *,std::unique_ptr<IIO_Reader> *,0>(v1 + 1, v4, v1);
    v6 = v5;
    v7 = *(this + 3);
    if (v7 != v5)
    {
      do
      {
        v9 = *--v7;
        v8 = v9;
        *v7 = 0;
        if (v9)
        {
          (*(*v8 + 8))(v8);
        }
      }

      while (v7 != v6);
    }

    *(this + 3) = v6;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t IIO_ReaderHandler::xpcQueueForReader(os_unfair_lock_s *this, IIO_Reader *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = a2;
  if (IIO_ReaderHandler::xpcQueueForReader(IIO_Reader *)::poolSizeCheck != -1)
  {
    IIO_ReaderHandler::xpcQueueForReader();
  }

  os_unfair_lock_lock(this + 20);
  v3 = std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::find<IIO_Reader *>(&this[10]._os_unfair_lock_opaque, &v31);
  if (!v3)
  {
    *__str = 0u;
    v34 = 0u;
    v3 = std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__emplace_unique_key_args<IIO_Reader *,IIO_Reader *&,IIO_ReaderHandler::QueuePool>(&this[10]._os_unfair_lock_opaque, &v31);
    v32[0] = __str;
    std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destroy_vector::operator()[abi:fe200100](v32);
  }

  v4 = v3[3];
  v5 = (v3 + 3);
  v6 = (v3[4] - v4) >> 4;
  if (v6 < IIO_ReaderHandler::xpcQueueForReader(IIO_Reader *)::gPoolSize)
  {
    bzero(__str, 0x400uLL);
    if (!v31)
    {
      snprintf(__str, 0x400uLL, "com.apple.ImageIOXPCService.General.%zu");
LABEL_27:
      v14 = dispatch_workloop_create(__str);
      v15 = v3[4];
      v16 = v3[5];
      if (v15 >= v16)
      {
        v19 = *v5;
        v20 = v15 - *v5;
        v21 = v20 >> 4;
        v22 = (v20 >> 4) + 1;
        if (v22 >> 60)
        {
          std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
        }

        v23 = v16 - v19;
        if (v23 >> 3 > v22)
        {
          v22 = v23 >> 3;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF0)
        {
          v22 = 0xFFFFFFFFFFFFFFFLL;
        }

        v32[4] = (v3 + 3);
        if (v22)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>>((v3 + 3), v22);
        }

        v24 = (16 * v21);
        v25 = MEMORY[0x1E69E9798];
        *v24 = v14;
        v24[1] = v25;
        v18 = 16 * v21 + 16;
        memcpy(0, v19, v20);
        v26 = v3[3];
        v3[3] = 0;
        v3[4] = v18;
        v27 = v3[5];
        v3[5] = 0;
        v32[2] = v26;
        v32[3] = v27;
        v32[0] = v26;
        v32[1] = v26;
        std::__split_buffer<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::~__split_buffer(v32);
      }

      else
      {
        v17 = MEMORY[0x1E69E9798];
        *v15 = v14;
        *(v15 + 1) = v17;
        v18 = (v15 + 16);
      }

      v3[4] = v18;
      v4 = v3[3];
      v6 = (v18 - v4) >> 4;
      goto LABEL_38;
    }

    v7 = IIO_Reader::utType(v31);
    CFStringGetCStringPtr(v7, 0x600u);
    v8 = IIO_Reader::osType(v31) >> 24;
    if (v8 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000) != 0)
      {
        goto LABEL_9;
      }
    }

    else if (__maskrune(v8, 0x40000uLL))
    {
LABEL_9:
      v9 = (IIO_Reader::osType(v31) >> 24);
      goto LABEL_13;
    }

    v9 = 46;
LABEL_13:
    v10 = (IIO_Reader::osType(v31) << 8) >> 24;
    if (v10 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000) != 0)
      {
        goto LABEL_15;
      }
    }

    else if (__maskrune(v10, 0x40000uLL))
    {
LABEL_15:
      v11 = ((IIO_Reader::osType(v31) << 8) >> 24);
      goto LABEL_18;
    }

    v11 = 46;
LABEL_18:
    v12 = IIO_Reader::osType(v31) >> 8;
    if (v12 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000) == 0)
      {
LABEL_22:
        v13 = IIO_Reader::osType(v31);
        if (v13 <= 0x7F)
        {
          if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000) == 0)
          {
            goto LABEL_26;
          }
        }

        else if (!__maskrune(v13, 0x40000uLL))
        {
LABEL_26:
          snprintf(__str, 0x400uLL, "com.apple.ImageIOXPCService.'%c%c%c%c'.%s%s%zu", v9, v11);
          goto LABEL_27;
        }

        IIO_Reader::osType(v31);
        goto LABEL_26;
      }
    }

    else if (!__maskrune(v12, 0x40000uLL))
    {
      goto LABEL_22;
    }

    IIO_Reader::osType(v31);
    goto LABEL_22;
  }

LABEL_38:
  v28 = (v3[6] + 1) % v6;
  v3[6] = v28;
  v29 = *(v4 + 16 * v28);
  os_unfair_lock_unlock(this + 20);
  return v29;
}

void sub_186059EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destroy_vector::operator()[abi:fe200100](va);
  _Unwind_Resume(a1);
}

void IIO_ReaderHandler::xpcReply(int a1, xpc_connection_t connection, xpc_object_t message, uint64_t a4)
{
  if (message)
  {
    xpc_connection_send_message(connection, message);
    xpc_release(message);
  }

  if (a4)
  {
    v6 = *(a4 + 16);

    v6(a4);
  }
}

uint64_t IIO_ReaderHandler::xpcTestHeader(os_unfair_lock_s *a1, int a2, xpc_object_t original, uint64_t a4)
{
  if (!xpc_dictionary_create_reply(original))
  {
    return (*(a4 + 16))(a4, 0);
  }

  xpc_retain(original);
  IIO_ReaderHandler::xpcQueueForReader(a1, 0);
  return xpc_dictionary_handoff_reply();
}

void ___ZN17IIO_ReaderHandler13xpcTestHeaderEP17_xpc_connection_sPvU13block_pointerFvPjE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  source_dict = iio_xpc_get_source_dict(*(a1 + 48));
  v4 = iio_xpc_add_message_dict(*(a1 + 56));
  v5 = iio_xpc_add_source_dict(*(a1 + 56));
  v30 = 0;
  v31 = 774778414;
  length = 0;
  if (!source_dict || ((v6 = v5, (data = xpc_dictionary_get_data(source_dict, "iio_xpc_src_header_data", &length)) != 0) ? (v8 = length == 0) : (v8 = 1), v8))
  {
    iio_xpc_dictionary_set_error_code(v4, 0xFFFFFA86);
    v10 = 0;
  }

  else
  {
    v11 = data;
    string = xpc_dictionary_get_string(source_dict, "iio_xpc_src_hint_string");
    uint64 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_file_size");
    v27 = 0uLL;
    v28 = 0;
    iio_xpc_get_IIOHeaderOptions_from_xpcObj(source_dict, "iio_xpc_src_header_options", &v27);
    v14 = length;
    if (string)
    {
      IIOString::IIOString(v25, string);
      v15 = v26;
    }

    else
    {
      v15 = 0;
    }

    v23 = v27;
    v24 = v28;
    v16 = IIO_ReaderHandler::readerForBytesImp(v2, v11, v14, v15, uint64, &v23, 0, &v30);
    if (string)
    {
      IIOString::~IIOString(v25);
    }

    if (v16)
    {
      v17 = IIO_Reader::utType(v16);
      LODWORD(v18) = IIO_Reader::osType(v16);
      v31 = v18;
      IIOIncrementIdentifyCallCount();
      v18 = v18;
      v10 = &v31;
    }

    else
    {
      v10 = 0;
      v17 = 0;
      v18 = 774778414;
    }

    v23 = 0uLL;
    v24 = 0;
    IIOString::IIOString(&v23, v17);
    if (v17)
    {
      v19 = IIOString::utf8String(&v23);
      xpc_dictionary_set_string(v6, "iio_xpc_src_utitype", v19);
    }

    else
    {
      xpc_dictionary_set_string(v6, "iio_xpc_src_utitype", "unknown");
    }

    xpc_dictionary_set_uint64(v6, "iio_xpc_src_ostype", v18);
    iio_xpc_dictionary_set_error_code(v4, v30);
    IIOString::~IIOString(&v23);
  }

  v21 = *(a1 + 56);
  v20 = *(a1 + 64);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = ___ZN17IIO_ReaderHandler13xpcTestHeaderEP17_xpc_connection_sPvU13block_pointerFvPjE_block_invoke_2;
  v22[3] = &unk_1E6F0AA20;
  v22[4] = *(a1 + 32);
  v22[5] = v10;
  IIO_ReaderHandler::xpcReply(v9, v20, v21, v22);
  xpc_release(*(a1 + 48));
}

void sub_18605A320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (v19)
  {
    IIOString::~IIOString(&a19);
  }

  _Unwind_Resume(exception_object);
}

void IIO_ReaderHandler::xpcGetImageCount(IIO_ReaderHandler *a1, _xpc_connection_s *a2, xpc_object_t original, uint64_t a4)
{
  reply = xpc_dictionary_create_reply(original);
  v9 = reply;
  if (reply)
  {
    source_dict = iio_xpc_get_source_dict(original);
    v11 = iio_xpc_add_message_dict(v9);
    if (source_dict)
    {
      string = xpc_dictionary_get_string(source_dict, "iio_xpc_src_utitype");
      uint64 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_ostype");
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      IIOString::IIOString(v15, string);
      v14 = IIO_ReaderHandler::readerForUTTypeAndOSType(a1, v16, uint64);
      IIOString::~IIOString(v15);
      if (v14)
      {
        xpc_retain(original);
        IIO_ReaderHandler::xpcQueueForReader(a1, v14);
        xpc_dictionary_handoff_reply();
        return;
      }
    }

    iio_xpc_dictionary_set_error_code(v11, 0xFFFFFA85);
  }

  IIO_ReaderHandler::xpcReply(reply, a2, v9, a4);
}

void sub_18605A4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ___ZN17IIO_ReaderHandler16xpcGetImageCountEP17_xpc_connection_sPvU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 40))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  iio_xpc_dictionary_set_error_code(*(a1 + 80), v2);
  IIO_ReaderHandler::xpcReply(v3, *(a1 + 56), *(a1 + 72), *(a1 + 32));
  v4 = *(a1 + 64);

  xpc_release(v4);
}

void IIO_ReaderHandler::xpcUpdateSourceProperties(IIO_ReaderHandler *a1, _xpc_connection_s *a2, xpc_object_t original, uint64_t a4)
{
  reply = xpc_dictionary_create_reply(original);
  v9 = reply;
  if (reply)
  {
    source_dict = iio_xpc_get_source_dict(original);
    v11 = iio_xpc_add_message_dict(v9);
    if (source_dict)
    {
      string = xpc_dictionary_get_string(source_dict, "iio_xpc_src_utitype");
      uint64 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_ostype");
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      IIOString::IIOString(v15, string);
      v14 = IIO_ReaderHandler::readerForUTTypeAndOSType(a1, v16, uint64);
      IIOString::~IIOString(v15);
      if (v14)
      {
        xpc_retain(original);
        IIO_ReaderHandler::xpcQueueForReader(a1, v14);
        xpc_dictionary_handoff_reply();
        return;
      }
    }

    iio_xpc_dictionary_set_error_code(v11, 0xFFFFFA84);
  }

  IIO_ReaderHandler::xpcReply(reply, a2, v9, a4);
}

void sub_18605A6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ___ZN17IIO_ReaderHandler25xpcUpdateSourcePropertiesEP17_xpc_connection_sPvU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 64))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  iio_xpc_dictionary_set_error_code(*(a1 + 80), v2);
  IIO_ReaderHandler::xpcReply(v3, *(a1 + 56), *(a1 + 72), *(a1 + 32));
  v4 = *(a1 + 64);

  xpc_release(v4);
}

void IIO_ReaderHandler::xpcInitImage(IIO_ReaderHandler *a1, _xpc_connection_s *a2, xpc_object_t original, uint64_t a4)
{
  reply = xpc_dictionary_create_reply(original);
  v9 = reply;
  if (reply)
  {
    source_dict = iio_xpc_get_source_dict(original);
    v11 = iio_xpc_add_message_dict(v9);
    if (source_dict)
    {
      string = xpc_dictionary_get_string(source_dict, "iio_xpc_src_utitype");
      uint64 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_ostype");
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      IIOString::IIOString(v15, string);
      v14 = IIO_ReaderHandler::readerForUTTypeAndOSType(a1, v16, uint64);
      IIOString::~IIOString(v15);
      if (v14)
      {
        xpc_retain(original);
        IIO_ReaderHandler::xpcQueueForReader(a1, v14);
        xpc_dictionary_handoff_reply();
        return;
      }
    }

    iio_xpc_dictionary_set_error_code(v11, 0xFFFFFA83);
  }

  IIO_ReaderHandler::xpcReply(reply, a2, v9, a4);
}

void sub_18605A8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ___ZN17IIO_ReaderHandler12xpcInitImageEP17_xpc_connection_sPvU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 256))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  iio_xpc_dictionary_set_error_code(*(a1 + 80), v2);
  IIO_ReaderHandler::xpcReply(v3, *(a1 + 56), *(a1 + 72), *(a1 + 32));
  v4 = *(a1 + 64);

  xpc_release(v4);
}

void IIO_ReaderHandler::xpcDecodeImage(IIO_ReaderHandler *a1, _xpc_connection_s *a2, xpc_object_t original, uint64_t a4)
{
  reply = xpc_dictionary_create_reply(original);
  v9 = reply;
  if (reply)
  {
    source_dict = iio_xpc_get_source_dict(original);
    v11 = iio_xpc_add_message_dict(v9);
    if (source_dict)
    {
      string = xpc_dictionary_get_string(source_dict, "iio_xpc_src_utitype");
      uint64 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_ostype");
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      IIOString::IIOString(v15, string);
      v14 = IIO_ReaderHandler::readerForUTTypeAndOSType(a1, v16, uint64);
      IIOString::~IIOString(v15);
      if (v14)
      {
        xpc_retain(original);
        IIO_ReaderHandler::xpcQueueForReader(a1, v14);
        xpc_dictionary_handoff_reply();
        return;
      }
    }

    iio_xpc_dictionary_set_error_code(v11, 0xFFFFFA80);
  }

  IIO_ReaderHandler::xpcReply(reply, a2, v9, a4);
}

void sub_18605AAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ___ZN17IIO_ReaderHandler14xpcDecodeImageEP17_xpc_connection_sPvU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 264))(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  iio_xpc_dictionary_set_error_code(*(a1 + 80), v2);
  IIO_ReaderHandler::xpcReply(v3, *(a1 + 56), *(a1 + 72), *(a1 + 32));
  v4 = *(a1 + 64);

  xpc_release(v4);
}

void std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__base_destruct_at_end[abi:fe200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__base_destruct_at_end[abi:fe200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != a2)
  {
    v5 = *(result + 8);
    do
    {
      v6 = *(v5 - 2);
      v5 -= 2;
      result = v6;
      *v5 = 0;
      if (v6)
      {
        result = (*(v4 - 1))();
      }

      v4 = v5;
    }

    while (v5 != a2);
  }

  *(v3 + 8) = a2;
  return result;
}

void std::vector<std::unique_ptr<IIO_Reader>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<IIO_Reader>>::clear[abi:fe200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<IIO_Reader>>::clear[abi:fe200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destroy_vector::operator()[abi:fe200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__split_buffer<std::unique_ptr<IIO_Reader>>::__destruct_at_end[abi:fe200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t *std::__copy_move_unwrap_iters[abi:fe200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<IIO_Reader> *,std::unique_ptr<IIO_Reader> *,std::unique_ptr<IIO_Reader> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *v4;
      *v4 = 0;
      v7 = *a3;
      *a3 = v6;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      ++v4;
      ++a3;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::find<IIO_Reader *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__emplace_unique_key_args<IIO_Reader *,IIO_Reader *&,IIO_ReaderHandler::QueuePool>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fe200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,void *>>>::operator()[abi:fe200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destroy_vector::operator()[abi:fe200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destruct_at_end[abi:fe200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<dispatch_queue_s,void (*)(dispatch_object_s *)>>::__destruct_at_end[abi:fe200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      result = *(v2 - 16);
      *(v4 + 16) = v2 - 16;
      *(v2 - 16) = 0;
      if (result)
      {
        result = (*(v2 - 8))();
        v2 = *(v4 + 16);
      }

      else
      {
        v2 -= 16;
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t CreateKtxStream(uint64_t a1, IIOImageReadSession *this)
{
  if (!a1)
  {
    return 11;
  }

  IIOImageReadSession::setOffset(this, 0);
  result = 0;
  *(a1 + 64) = this;
  *(a1 + 56) = 3;
  *a1 = IIOktxStream_read;
  *(a1 + 8) = IIOktxStream_skip;
  *(a1 + 16) = IIOktxStream_write;
  *(a1 + 24) = IIOktxStream_getpos;
  *(a1 + 32) = IIOktxStream_setpos;
  *(a1 + 40) = IIOktxStream_getsize;
  *(a1 + 48) = IIOktxStream_destruct;
  *(a1 + 96) = 0;
  return result;
}

uint64_t IIOktxStream_read(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a1)
  {
    return 11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    return 11;
  }

  if (IIOImageReadSession::getBytes(v3, a2, a3) == a3)
  {
    return 0;
  }

  return 7;
}

uint64_t IIOktxStream_skip(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 11;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return 11;
  }

  if (IIOImageReadSession::seek(v2, a2, 1) == -1)
  {
    return 7;
  }

  return 0;
}

uint64_t IIOktxStream_write(uint64_t a1)
{
  if (!a1)
  {
    return 11;
  }

  if (*(a1 + 64))
  {
    return 10;
  }

  return 11;
}

uint64_t IIOktxStream_getpos(uint64_t a1, uint64_t *a2)
{
  result = 11;
  if (a1 && a2)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = IIO_Reader::minimumFileSize(v5);
      result = 0;
      *a2 = v6;
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t IIOktxStream_setpos(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 11;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return 11;
  }

  IIOImageReadSession::setOffset(v2, a2);
  return 0;
}

uint64_t IIOktxStream_getsize(uint64_t a1, IIOImageRead **a2)
{
  result = 11;
  if (a1 && a2)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      Size = IIOImageReadSession::getSize(v5);
      result = 0;
      *a2 = Size;
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t TIFFInitPixarLog(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 32909)
  {
    TIFFInitPixarLog_cold_1();
  }

  if (!_TIFFMergeFields(a1, pixarlogFields, 2, a4, a5, a6, a7, a8))
  {
    v72 = "Merging PixarLog codec-specific tags failed";
LABEL_51:
    TIFFErrorExtR(a1, "TIFFInitPixarLog", v72, v9, v10, v11, v12, v13, v73);
    return 0;
  }

  v14 = malloc_type_malloc(0x150uLL, 0x10B0040CB2D490FuLL);
  a1[137] = v14;
  if (!v14)
  {
    v72 = "No space for PixarLog state block";
    goto LABEL_51;
  }

  v15 = v14;
  _TIFFmemset(v14, 0, 0x150uLL);
  v15[54] = 0;
  a1[119] = PixarLogFixupTags;
  a1[120] = PixarLogSetupDecode;
  a1[121] = PixarLogPreDecode;
  a1[126] = PixarLogDecode;
  a1[128] = PixarLogDecode;
  a1[130] = PixarLogDecode;
  a1[122] = PixarLogSetupEncode;
  a1[124] = PixarLogPreEncode;
  a1[125] = PixarLogPostEncode;
  a1[127] = PixarLogEncode;
  a1[129] = PixarLogEncode;
  a1[131] = PixarLogEncode;
  a1[132] = PixarLogClose;
  a1[134] = PixarLogCleanup;
  *(v15 + 34) = a1[161];
  a1[161] = PixarLogVGetField;
  *(v15 + 35) = a1[160];
  a1[160] = PixarLogVSetField;
  *(v15 + 33) = -1;
  v15[65] = 0;
  TIFFPredictorInit(a1, v16, v17, v18, v19, v20, v21, v22);
  LogK1 = 1132068864;
  LogK2 = 1125411269;
  v23 = malloc_type_malloc(0xD548uLL, 0x1000040BDFB0063uLL);
  v24 = malloc_type_malloc(0x8000uLL, 0x1000040BDFB0063uLL);
  v25 = malloc_type_malloc(0x200uLL, 0x1000040BDFB0063uLL);
  v26 = malloc_type_malloc(0x2004uLL, 0x100004052888210uLL);
  v27 = malloc_type_malloc(0x1002uLL, 0x1000040BDFB0063uLL);
  v28 = malloc_type_malloc(0x801uLL, 0x100004077774924uLL);
  v29 = v28;
  if (v23 && v24 && v25 && v26 && v27 && v28)
  {
    v30 = 0;
    v31 = xmmword_186205EB0;
    v32 = xmmword_186205EC0;
    v33 = vdupq_n_s64(0xFAuLL);
    v34 = v26 + 2;
    v35 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v33, v32)), *v31.i8).u8[0])
      {
        v36 = v30 * 0.0000732625556;
        *(v34 - 2) = v36;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFAuLL), *&v32)), *&v31).i8[2])
      {
        v37 = (v30 + 1) * 0.0000732625556;
        *(v34 - 1) = v37;
      }

      if (vuzp1_s16(*&v31, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFAuLL), *&v31))).i32[1])
      {
        v38 = (v30 + 2) * 0.0000732625556;
        *v34 = v38;
        v39 = (v30 + 3) * 0.0000732625556;
        v34[1] = v39;
      }

      v30 += 4;
      v31 = vaddq_s64(v31, v35);
      v32 = vaddq_s64(v32, v35);
      v34 += 4;
    }

    while (v30 != 252);
    v40 = 0;
    v41 = v26 + 253;
    v75 = vdupq_n_s64(0x706uLL);
    v74 = vdupq_n_s64(0x3F70624DD2F1A9FCuLL);
    do
    {
      v82 = vdupq_n_s64(v40);
      v79 = vorrq_s8(v82, xmmword_186205EC0);
      v42 = vmovn_s64(vcgtq_u64(v75, v79));
      v77 = vuzp1_s16(v42, v42).u8[0];
      v43 = vaddq_s32(vdupq_n_s32(v40), xmmword_1862243C0);
      v44.i64[0] = v43.u32[2];
      v44.i64[1] = v43.u32[3];
      v45 = vcvtq_f64_u64(v44);
      v44.i64[0] = v43.u32[0];
      v44.i64[1] = v43.u32[1];
      v83 = vmulq_f64(vcvtq_f64_u64(v44), v74);
      __xa = vmulq_f64(v45, v74);
      v78 = exp(__xa.f64[1]);
      __x = exp(__xa.f64[0]);
      v76 = exp(v83.f64[1]);
      v46.f64[0] = exp(v83.f64[0]);
      v46.f64[1] = v76;
      if (v77)
      {
        v47 = 0.006737947 * v46.f64[0];
        *(v41 - 3) = v47;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x706uLL), v79)), *&v46).i8[2])
      {
        v48 = vmuld_lane_f64(0.006737947, v46, 1);
        *(v41 - 2) = v48;
      }

      v49.f64[0] = __x;
      v49.f64[1] = v78;
      v50 = vorrq_s8(v82, xmmword_186205EB0);
      if (vuzp1_s16(*&v50, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x706uLL), v50))).i32[1])
      {
        v51 = 0.006737947 * __x;
        *(v41 - 1) = v51;
      }

      v52 = vmovn_s64(vcgtq_u64(vdupq_n_s64(0x706uLL), v50));
      if (vuzp1_s16(v52, v52).i8[6])
      {
        v53 = vmuld_lane_f64(0.006737947, v49, 1);
        *v41 = v53;
      }

      v40 += 4;
      v41 += 4;
    }

    while (v40 != 1800);
    v54 = 0;
    v26[2048] = v26[2047];
    do
    {
      v55 = v26[v54];
      v56 = v55 * 65535.0 + 0.5;
      if (v56 >= 65535.0)
      {
        v56 = 65535.0;
      }

      v27[v54] = v56;
      v57 = v55 * 255.0 + 0.5;
      if (v57 >= 255.0)
      {
        v57 = 255.0;
      }

      v29[v54++] = v57;
    }

    while (v54 != 2049);
    v58 = 0;
    v59 = 0;
    do
    {
      if (v58 * 0.0000732625556 * (v58 * 0.0000732625556) > (v26[v59] * v26[v59 + 1]))
      {
        ++v59;
      }

      v23[v58++] = v59;
    }

    while (v58 != 27300);
    v60 = 0;
    v61 = 0;
    do
    {
      v62 = v26[v61];
      v63 = v61 + 1;
      do
      {
        v64 = v26[v63++];
        v65 = v60 / 16383.0 * (v60 / 16383.0) <= (v62 * v64);
        v62 = v64;
      }

      while (!v65);
      v61 = v63 - 2;
      v24[v60++] = v61;
    }

    while (v60 != 0x4000);
    v66 = 0;
    v67 = 0;
    do
    {
      v68 = v26[v67];
      v69 = v67 + 1;
      do
      {
        v70 = v26[v69++];
        v65 = v66 / 255.0 * (v66 / 255.0) <= (v68 * v70);
        v68 = v70;
      }

      while (!v65);
      v67 = v69 - 2;
      v25[v66++] = v67;
    }

    while (v66 != 256);
    Fltsize = 1179994112;
    *(v15 + 36) = v26;
    *(v15 + 37) = v27;
    *(v15 + 38) = v29;
    *(v15 + 39) = v23;
    result = 1;
    *(v15 + 40) = v24;
    *(v15 + 41) = v25;
  }

  else
  {
    if (v23)
    {
      free(v23);
    }

    if (v24)
    {
      free(v24);
    }

    if (v25)
    {
      free(v25);
    }

    if (v26)
    {
      free(v26);
    }

    if (v27)
    {
      free(v27);
    }

    if (v29)
    {
      free(v29);
    }

    *(v15 + 19) = 0u;
    *(v15 + 20) = 0u;
    *(v15 + 18) = 0u;
    return 1;
  }

  return result;
}

uint64_t PixarLogSetupDecode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  if (!v8)
  {
    PixarLogSetupDecode_cold_2();
  }

  if (*(v8 + 260))
  {
    return 1;
  }

  v10 = *(a1 + 132);
  v11 = *(a1 + 92);
  if (v10 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  *(a1 + 1248) = _TIFFNoPostDecode;
  if (*(a1 + 170) == 1)
  {
    v13 = *(a1 + 130);
  }

  else
  {
    v13 = 1;
  }

  *(v8 + 256) = v13;
  v14 = _TIFFMultiplySSize(0, v13, *(a1 + 88), 0, a5, a6, a7, a8);
  v19 = _TIFFMultiplySSize(0, v14, v12, 0, v15, v16, v17, v18);
  v24 = _TIFFMultiplySSize(0, v19, 2, 0, v20, v21, v22, v23);
  if ((v24 & 0x8000000000000000) != 0)
  {
    PixarLogSetupDecode_cold_1();
  }

  v25 = v24 + 2 * *(v8 + 256);
  if (v24)
  {
    v26 = *(v8 + 256) == 0;
  }

  else
  {
    v26 = 1;
  }

  if (v26 || ((2 * *(v8 + 256)) ^ 0x7FFFFFFFFFFFFFFFuLL) < v24 || v25 == 0)
  {
    return 0;
  }

  result = malloc_type_malloc(v24 + 2 * *(v8 + 256), 0x1000040BDFB0063uLL);
  *(v8 + 248) = result;
  if (!result)
  {
    return result;
  }

  *(v8 + 240) = v25;
  v30 = (v8 + 240);
  if (*(v8 + 264) != -1 || (v31 = result, v32 = PixarLogGuessDataFmt(a1 + 72), *(v8 + 264) = v32, v32 != -1))
  {
    if (inflateInit_((v8 + 128), "1.2.12", 112))
    {
      free(*(v8 + 248));
      *v30 = 0;
      *(v8 + 248) = 0;
      v38 = *(v8 + 176);
      if (!v38)
      {
        v38 = "(null)";
      }

      TIFFErrorExtR(a1, "PixarLogSetupDecode", "%s", v33, v34, v35, v36, v37, v38);
      return 0;
    }

    *(v8 + 260) |= 1u;
    return 1;
  }

  free(v31);
  *v30 = 0;
  *(v8 + 248) = 0;
  TIFFErrorExtR(a1, "PixarLogSetupDecode", "PixarLog compression can't handle bits depth/data format combination (depth: %hu)", v39, v40, v41, v42, v43, *(a1 + 116));
  return 0;
}

BOOL PixarLogPreDecode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[137];
  if (!v8)
  {
    PixarLogPreDecode_cold_1();
  }

  *(v8 + 128) = a1[140];
  v9 = (v8 + 128);
  v10 = a1[145];
  v9->avail_in = v10;
  if (!HIDWORD(v10))
  {
    return inflateReset(v9) == 0;
  }

  TIFFErrorExtR(a1, "PixarLogPreDecode", "ZLib cannot deal with buffers this size", a4, a5, a6, a7, a8, vars0);
  return 0;
}