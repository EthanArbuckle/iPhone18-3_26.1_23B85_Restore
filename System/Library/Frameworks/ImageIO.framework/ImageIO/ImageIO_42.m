uint64_t JPEGVGetField(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    JPEGVGetField_cold_1();
  }

  if (a2 > 65537)
  {
    if (a2 == 65538)
    {
      v4 = *(v3 + 1336);
      goto LABEL_14;
    }

    if (a2 == 65539)
    {
      v4 = *(v3 + 1340);
      goto LABEL_14;
    }
  }

  else
  {
    if (a2 == 347)
    {
      **a3 = *(v3 + 1328);
      **(a3 + 8) = *(v3 + 1320);
      return 1;
    }

    if (a2 == 65537)
    {
      v4 = *(v3 + 1332);
LABEL_14:
      **a3 = v4;
      return 1;
    }
  }

  v5 = *(v3 + 1280);

  return v5();
}

uint64_t JPEGVSetField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  if (!v8)
  {
    JPEGVSetField_cold_1();
  }

  if (a2 > 0x10000)
  {
    switch(a2)
    {
      case 0x10001:
        *(v8 + 1332) = *a3;
        break;
      case 0x10002:
        *(v8 + 1336) = *a3;
        JPEGResetUpsampled(a1, a2, a3, a4, a5, a6, a7, a8);
        break;
      case 0x10003:
        *(v8 + 1340) = *a3;
        break;
      default:
LABEL_11:
        v10 = *(v8 + 1288);

        return v10();
    }

    return 1;
  }

  if (a2 == 262)
  {
    v12 = (*(v8 + 1288))(a1);
    JPEGResetUpsampled(a1, v13, v14, v15, v16, v17, v18, v19);
    return v12;
  }

  if (a2 != 347)
  {
    if (a2 == 530)
    {
      *(v8 + 1344) = 1;
    }

    goto LABEL_11;
  }

  v20 = *a3;
  if (!*a3)
  {
    return 0;
  }

  _TIFFsetByteArrayExt(a1, (v8 + 1320), *(a3 + 8), v20, a5, a6, a7, a8);
  *(v8 + 1328) = v20;
  *(a1 + 80) |= 4u;
  result = TIFFFieldWithTag(a1, 347);
  if (result)
  {
    v21 = *(result + 24);
    result = 1;
    *(a1 + ((v21 >> 3) & 0x1FFC) + 72) |= 1 << v21;
    *(a1 + 16) |= 8u;
  }

  return result;
}

uint64_t JPEGPrintDir(uint64_t result, FILE *a2, uint64_t a3)
{
  v3 = *(result + 1096);
  if (!v3)
  {
    JPEGPrintDir_cold_1();
  }

  v6 = result;
  if ((*(result + 80) & 4) != 0)
  {
    result = fprintf(a2, "  JPEG Tables: (%u bytes)\n", *(v3 + 1328));
  }

  v7 = *(v3 + 1296);
  if (v7)
  {

    return v7(v6, a2, a3);
  }

  return result;
}

uint64_t JPEGFixupTags(uint64_t a1)
{
  if (*(a1 + 122) == 6)
  {
    v40 = v1;
    v41 = v2;
    if (*(a1 + 170) == 1 && *(a1 + 130) == 3 && !*(*(a1 + 1096) + 1344))
    {
      v5 = TIFFGetStrileOffset(a1, 0);
      if (v5)
      {
        v6 = v5;
        v36 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = a1;
        LODWORD(v34) = 2048;
        v33 = malloc_type_malloc(0x800uLL, 0xE9982FC2uLL);
        if (v33)
        {
          *(&v34 + 1) = 0;
          LODWORD(v35) = 0;
          *(&v35 + 1) = v6;
          BYTE8(v36) = 0;
          *&v36 = TIFFGetStrileByteCount(a1, 0);
          v39 = 0;
          do
          {
LABEL_9:
            if (!JPEGFixupTagsSubsamplingReadByte(&v32, &v39))
            {
LABEL_63:
              v29 = "JPEGFixupTagsSubsampling";
              v30 = "Unable to auto-correct subsampling values, likely corrupt JPEG compressed data in first strip/tile; auto-correcting skipped";
              v23 = a1;
LABEL_64:
              TIFFWarningExtR(v23, v29, v30, v12, v13, v14, v15, v16, v31);
              goto LABEL_65;
            }
          }

          while (v39 != 255);
          while (1)
          {
            if (!JPEGFixupTagsSubsamplingReadByte(&v32, &v39))
            {
              goto LABEL_63;
            }

            if (v39 <= 0xD7u)
            {
              break;
            }

            v17 = v39 - 216;
            if (v17 > 0x27)
            {
              goto LABEL_63;
            }

            if (v17 != 39)
            {
              if (((1 << (v39 + 40)) & 0x4000FFFF2CLL) == 0)
              {
                if (v39 == 216)
                {
                  goto LABEL_9;
                }

                goto LABEL_63;
              }

              goto LABEL_16;
            }
          }

          if (v39 - 192 >= 3 && v39 - 201 >= 2)
          {
            if (v39 != 196)
            {
              goto LABEL_63;
            }

LABEL_16:
            v38 = 0;
            if (!JPEGFixupTagsSubsamplingReadWord(&v32, &v38))
            {
              goto LABEL_63;
            }

            v18 = v38 - 2;
            if (v38 < 2u)
            {
              goto LABEL_63;
            }

            if (v38 != 2)
            {
              if (v35 >= v18)
              {
                *(&v34 + 1) += v18;
                LODWORD(v35) = v35 - (v38 - 2);
              }

              else
              {
                v19 = v18 - v35;
                LODWORD(v35) = 0;
                if (v36 >= v19)
                {
                  *(&v35 + 1) += v19;
                  *&v36 = v36 - v19;
                  BYTE8(v36) = 0;
                }

                else
                {
                  *&v36 = 0;
                }
              }
            }

            goto LABEL_9;
          }

          v38 = 0;
          v37 = 0;
          if (!JPEGFixupTagsSubsamplingReadWord(&v32, &v38) || 3 * *(v32 + 130) + 8 != v38)
          {
            goto LABEL_63;
          }

          if (v35 >= 7)
          {
            *(&v34 + 1) += 7;
            LODWORD(v35) = v35 - 7;
          }

          else
          {
            v20 = 7 - v35;
            LODWORD(v35) = 0;
            if (v36 >= v20)
            {
              *(&v35 + 1) += v20;
              *&v36 = v36 - v20;
              BYTE8(v36) = 0;
            }

            else
            {
              *&v36 = 0;
            }
          }

          if (!JPEGFixupTagsSubsamplingReadByte(&v32, &v37))
          {
            goto LABEL_63;
          }

          if (v35)
          {
            ++*(&v34 + 1);
            v21 = v35 - 1;
          }

          else
          {
            v21 = 0;
            if (v36)
            {
              ++*(&v35 + 1);
              *&v36 = v36 - 1;
              BYTE8(v36) = 0;
            }
          }

          v22 = v37;
          v23 = v32;
          if (*(v32 + 130) >= 2u)
          {
            v24 = 1;
            do
            {
              if (v21)
              {
                ++*(&v34 + 1);
                LODWORD(v35) = v21 - 1;
              }

              else
              {
                LODWORD(v35) = 0;
                if (v36)
                {
                  ++*(&v35 + 1);
                  *&v36 = v36 - 1;
                  BYTE8(v36) = 0;
                }
              }

              if (!JPEGFixupTagsSubsamplingReadByte(&v32, &v37))
              {
                goto LABEL_63;
              }

              if (v37 != 17)
              {
                v23 = v32;
                goto LABEL_67;
              }

              if (v35)
              {
                ++*(&v34 + 1);
                v21 = v35 - 1;
                LODWORD(v35) = v35 - 1;
              }

              else
              {
                v21 = 0;
                if (v36)
                {
                  ++*(&v35 + 1);
                  *&v36 = v36 - 1;
                  BYTE8(v36) = 0;
                }
              }

              ++v24;
              v23 = v32;
            }

            while (v24 < *(v32 + 130));
          }

          v25 = v22 >> 4;
          if (v22 >> 4 > 4 || ((1 << v25) & 0x16) == 0 || (v26 = v22 & 0xF, v26 > 4) || ((1 << v26) & 0x16) == 0)
          {
LABEL_67:
            v29 = "JPEGFixupTagsSubsamplingSec";
            v30 = "Subsampling values inside JPEG compressed data have no TIFF equivalent, auto-correction of TIFF subsampling values failed";
            goto LABEL_64;
          }

          v27 = *(v23 + 336);
          if (v27 != v25 || *(v23 + 338) != v26)
          {
            v28 = v23;
            TIFFWarningExtR(v23, "JPEGFixupTagsSubsamplingSec", "Auto-corrected former TIFF subsampling values [%hu,%hu] to match subsampling values inside JPEG compressed data [%hhu,%hhu]", v12, v13, v14, v15, v16, v27);
            *(v28 + 336) = v25;
            *(v28 + 338) = v26;
          }

LABEL_65:
          free(v33);
        }

        else
        {
          TIFFWarningExtR(a1, "JPEGFixupTagsSubsampling", "Unable to allocate memory for auto-correcting of subsampling values; auto-correcting skipped", v7, v8, v9, v10, v11, v31);
        }
      }
    }
  }

  return 1;
}

uint64_t JPEGSetupDecode(uint64_t a1)
{
  v2 = *(a1 + 1096);
  JPEGInitializeLibJPEG(a1, 1);
  if (!v2)
  {
    JPEGSetupDecode_cold_2();
  }

  if (!*(v2 + 32))
  {
    JPEGSetupDecode_cold_1();
  }

  if ((*(a1 + 80) & 4) != 0 && (*(v2 + 40) = v2 + 1112, *(v2 + 1136) = std_fill_input_buffer, *(v2 + 1144) = std_skip_input_data, *(v2 + 1152) = _cg_jpeg_resync_to_restart, *(v2 + 1160) = std_term_source, *(v2 + 1112) = 0u, *(v2 + 1128) = tables_init_source, TIFFjpeg_read_header(v2, 0) != 2))
  {
    TIFFErrorExtR(a1, "JPEGSetupDecode", "Bogus JPEGTables field", v3, v4, v5, v6, v7, v11);
    return 0;
  }

  else
  {
    v8 = *(a1 + 122);
    *(v2 + 1176) = v8;
    if (v8 == 6)
    {
      *(v2 + 1178) = *(a1 + 336);
      v9 = *(a1 + 338);
    }

    else
    {
      v9 = 1;
      *(v2 + 1178) = 1;
    }

    *(v2 + 1180) = v9;
    *(v2 + 40) = v2 + 1112;
    *(v2 + 1128) = std_init_source;
    *(v2 + 1136) = std_fill_input_buffer;
    *(v2 + 1144) = std_skip_input_data;
    *(v2 + 1152) = _cg_jpeg_resync_to_restart;
    *(v2 + 1160) = std_term_source;
    *(v2 + 1112) = 0u;
    *(a1 + 1248) = _TIFFNoPostDecode;
    return 1;
  }
}

uint64_t JPEGPreDecode(uint64_t a1, int a2)
{
  v2 = *(a1 + 1096);
  if (!v2)
  {
    JPEGPreDecode_cold_2();
  }

  if (!*(v2 + 32))
  {
    (*(a1 + 960))(a1);
    if (!*(v2 + 32))
    {
      JPEGPreDecode_cold_1();
    }
  }

  result = TIFFjpeg_abort(v2);
  if (result)
  {
    if (TIFFjpeg_read_header(v2, 1) == 1)
    {
      *(a1 + 1152) = *(v2 + 1112);
      *(a1 + 1160) = *(v2 + 1120);
      if ((*(a1 + 17) & 4) != 0)
      {
        v13 = *(a1 + 100);
        v14 = *(a1 + 104);
        v15 = _cg_TIFFTileRowSize(a1, v6, v7, v8, v9, v10, v11, v12);
      }

      else
      {
        v13 = *(a1 + 88);
        if ((*(a1 + 92) - *(a1 + 876)) >= *(a1 + 132))
        {
          v14 = *(a1 + 132);
        }

        else
        {
          v14 = *(a1 + 92) - *(a1 + 876);
        }

        v15 = _cg_TIFFScanlineSize(a1, v6, v7, v8, v9, v10, v11, v12);
      }

      *(v2 + 1184) = v15;
      if (a2 && *(a1 + 170) == 2)
      {
        v21 = *(v2 + 1178);
        if (!*(v2 + 1178) || (v22 = *(v2 + 1180), !*(v2 + 1180)))
        {
          v26 = "JPEG horizontal or vertical sampling is zero";
          goto LABEL_82;
        }

        v23 = 0;
        if (v13 < -v21)
        {
          v23 = (v13 + v21 - 1) / v21;
        }

        if (v14 >= -v22)
        {
          v14 = 0;
        }

        else
        {
          v14 = (v14 + v22 - 1) / v22;
        }
      }

      else
      {
        v23 = v13;
      }

      v24 = *(v2 + 48);
      if (v24 < v23 || *(v2 + 52) < v14)
      {
        TIFFWarningExtR(a1, "JPEGPreDecode", "Improper JPEG strip/tile size, expected %ux%u, got %ux%u", v16, v17, v18, v19, v20, v23);
        v24 = *(v2 + 48);
      }

      if (v24 == v23 && *(v2 + 52) > v14 && *(a1 + 876) + v14 == *(a1 + 92) && (*(a1 + 17) & 4) == 0)
      {
        TIFFWarningExtR(a1, "JPEGPreDecode", "JPEG strip size exceeds expected dimensions, expected %ux%u, got %ux%u", v16, v17, v18, v19, v20, v23);
LABEL_31:
        if (*(a1 + 170) == 1)
        {
          v25 = *(a1 + 130);
        }

        else
        {
          v25 = 1;
        }

        if (*(v2 + 56) == v25)
        {
          if (*(v2 + 296) == *(a1 + 116))
          {
            if (*(v2 + 316) && !*(v2 + 1352))
            {
              TIFFWarningExtR(a1, "JPEGPreDecode", "The JPEG strip/tile is encoded with progressive mode, which is normally not legal for JPEG-in-TIFF.\nlibtiff should be able to decode it, but it might cause compatibility issues with other readers", v16, v17, v18, v19, v20, v45);
              *(v2 + 1352) = 1;
            }

            if (TIFFjpeg_has_multiple_scans(v2))
            {
              v27 = *(v2 + 56);
              if (v27 < 1)
              {
                v29 = 0x100000;
              }

              else
              {
                v28 = (*(v2 + 304) + 32);
                v29 = 0x100000;
                do
                {
                  v30 = *(v28 - 6);
                  if (v30 >= 1)
                  {
                    v31 = *(v28 - 5);
                    if (v31 >= 1)
                    {
                      v29 += ((v30 + *(v28 - 1) - 1) / v30 * ((v31 + *v28 - 1) / v31)) << 7;
                    }
                  }

                  v28 += 24;
                  --v27;
                }

                while (v27);
              }

              v32 = *(*(v2 + 8) + 88);
              v33 = v32 >= 1 && v29 > v32;
              if (v33 && !getenv("LIBTIFF_ALLOW_LARGE_LIBJPEG_MEM_ALLOC"))
              {
                v45 = v29;
                v26 = "Reading this image would require libjpeg to allocate at least %llu bytes. This is disabled since above the %ld threshold. You may override this restriction by defining the LIBTIFF_ALLOW_LARGE_LIBJPEG_MEM_ALLOC environment variable, or setting the JPEGMEM environment variable to a value greater or equal to '%lluM'";
                goto LABEL_82;
              }
            }

            v34 = *(v2 + 304);
            v35 = v34[2];
            if (*(a1 + 170) == 1)
            {
              if (v35 != *(v2 + 1178) || v34[3] != *(v2 + 1180))
              {
                TIFFErrorExtR(a1, "JPEGPreDecode", "Improper JPEG sampling factors %d,%d\nApparently should be %hu,%hu.", v16, v17, v18, v19, v20, v35);
                return 0;
              }

              v37 = *(v2 + 56);
              if (v37 >= 2)
              {
                v38 = v34 + 27;
                v39 = v37 - 1;
                while (*(v38 - 1) == 1 && *v38 == 1)
                {
                  v38 += 24;
                  if (!--v39)
                  {
                    goto LABEL_73;
                  }
                }

                goto LABEL_67;
              }

LABEL_73:
              if (*(v2 + 1176) == 6 && *(v2 + 1336) == 1)
              {
                *(v2 + 60) = 0x200000003;
                v40 = 1;
                v41 = JPEGDecode;
                goto LABEL_80;
              }
            }

            else if (v35 != 1 || v34[3] != 1)
            {
LABEL_67:
              v26 = "Improper JPEG sampling factors";
              goto LABEL_82;
            }

            *(v2 + 60) = 0;
            *(v2 + 64) = 0;
            v41 = JPEGDecode;
            if (*(a1 + 170) == 1)
            {
              if (*(v2 + 1178) != 1 || (v41 = JPEGDecode, *(v2 + 1180) != 1))
              {
                v40 = 0;
                *(v2 + 92) = 1;
                v43 = JPEGDecodeRaw;
                v41 = DecodeRowError;
                v42 = 100;
                goto LABEL_86;
              }
            }

            v40 = 1;
LABEL_80:
            v42 = 92;
            v43 = JPEGDecode;
LABEL_86:
            *(v2 + v42) = 0;
            *(a1 + 1008) = v41;
            *(a1 + 1024) = v43;
            *(a1 + 1040) = v43;
            started = TIFFjpeg_start_decompress(v2);
            result = started != 0;
            if ((v40 & 1) == 0 && started)
            {
              result = alloc_downsampled_buffers(a1, *(v2 + 304), *(v2 + 56));
              if (result)
              {
                *(v2 + 1272) = 8;
                return 1;
              }
            }

            return result;
          }

          v26 = "Improper JPEG data precision";
        }

        else
        {
          v26 = "Improper JPEG component count";
        }

LABEL_82:
        TIFFErrorExtR(a1, "JPEGPreDecode", v26, v16, v17, v18, v19, v20, v45);
        return 0;
      }

      if (v24 <= v23 && *(v2 + 52) <= v14)
      {
        goto LABEL_31;
      }

      TIFFErrorExtR(a1, "JPEGPreDecode", "JPEG strip/tile size exceeds expected dimensions, expected %ux%u, got %ux%u", v16, v17, v18, v19, v20, v23);
    }

    return 0;
  }

  return result;
}

BOOL JPEGDecode(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v10 = *(a1 + 1096);
  *(v10 + 1112) = *(a1 + 1152);
  *(v10 + 1120) = *(a1 + 1160);
  v11 = *(v10 + 1184);
  if (!v11)
  {
LABEL_12:
    bzero(a2, v8);
    return 0;
  }

  v13 = a3 / v11;
  if (a3 % v11)
  {
    TIFFWarningExtR(a1, *a1, "fractional scanline not read", a4, a5, a6, a7, a8, v18);
  }

  v14 = *(v10 + 52);
  if (v13 < v14)
  {
    v14 = v13;
  }

  if (v14)
  {
    v15 = v14 + 1;
    do
    {
      v19 = a2;
      if (TIFFjpeg_read_scanlines(v10, &v19) != 1)
      {
        goto LABEL_12;
      }

      ++*(a1 + 876);
      v16 = *(v10 + 1184);
      a2 += v16;
      v8 -= v16;
    }

    while (--v15 > 1);
  }

  *(a1 + 1152) = *(v10 + 1112);
  *(a1 + 1160) = *(v10 + 1120);
  return *(v10 + 168) < *(v10 + 140) || TIFFjpeg_finish_decompress(v10) != 0;
}

uint64_t JPEGSetupEncode(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1096);
  JPEGInitializeLibJPEG(a1, 0);
  if (!v2)
  {
    JPEGSetupEncode_cold_2();
  }

  if (*(v2 + 32))
  {
    JPEGSetupEncode_cold_1();
  }

  v3 = *(a1 + 122);
  *(v2 + 1176) = v3;
  if (*(a1 + 170) != 1)
  {
    *(v2 + 56) = 1;
    goto LABEL_19;
  }

  *(v2 + 56) = *(a1 + 130);
  if (v3 == 6)
  {
    if (*(v2 + 1336) != 1)
    {
      v4 = 3;
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v5 = *(a1 + 122);
  if (v5 > 1)
  {
    if (v5 == 5)
    {
      v4 = *(a1 + 130);
      if (v4 == 4)
      {
        goto LABEL_12;
      }
    }

    else if (v5 == 2 && *(a1 + 130) == 3)
    {
LABEL_6:
      v4 = 2;
LABEL_12:
      *(v2 + 60) = v4;
      goto LABEL_19;
    }
  }

  else
  {
    v4 = *(a1 + 130);
    if (v4 == 1)
    {
      goto LABEL_12;
    }
  }

  *(v2 + 60) = 0;
LABEL_19:
  result = TIFFjpeg_set_defaults(v2);
  if (!result)
  {
    return result;
  }

  if (*(v2 + 272) && (*(v2 + 1340) & 2) != 0)
  {
    TIFFWarningExtR(a1, "JPEGSetupEncode", "mozjpeg library likely detected. Disable emission of Huffman tables in JpegTables tag, and use optimize_coding to avoid potential issues", v8, v9, v10, v11, v12, v24);
    *(v2 + 1340) &= ~2u;
  }

  *(v2 + 272) = 0;
  *(v2 + 280) = 0;
  v13 = *(v2 + 1176);
  if ((v13 - 3) < 2)
  {
    TIFFErrorExtR(a1, "JPEGSetupEncode", "PhotometricInterpretation %hu not allowed for JPEG", v8, v9, v10, v11, v12, *(v2 + 1176));
    return 0;
  }

  if (v13 == 6)
  {
    v14 = *(a1 + 336);
    *(v2 + 1178) = v14;
    v15 = *(a1 + 338);
    *(v2 + 1180) = v15;
    if (!v14 || !v15)
    {
      v20 = "Invalig horizontal/vertical sampling value";
      goto LABEL_43;
    }

    v16 = *(a1 + 116);
    if (v16 >= 0x11)
    {
LABEL_37:
      TIFFErrorExtR(a1, "JPEGSetupEncode", "BitsPerSample %hu not allowed for JPEG", v8, v9, v10, v11, v12, v16);
      return 0;
    }

    v25 = 0;
    if (!_cg_TIFFGetField(a1, 532, v7, v8, v9, v10, v11, v12, &v25))
    {
      v18 = 1 << *(a1 + 116);
      v26 = 0;
      v27 = (v18 - 1);
      v28 = (v18 >> 1);
      v29 = v27;
      v30 = v28;
      v31 = v27;
      _cg_TIFFSetField(a1, 532, v17, v8, v9, v10, v11, v12, &v26);
    }
  }

  else
  {
    *(v2 + 1178) = 65537;
  }

  v16 = *(a1 + 116);
  if (v16 != 8)
  {
    goto LABEL_37;
  }

  *(v2 + 88) = 8;
  if ((*(a1 + 17) & 4) != 0)
  {
    if (*(a1 + 104) % (8 * *(v2 + 1180)))
    {
      TIFFErrorExtR(a1, "JPEGSetupEncode", "JPEG tile height must be multiple of %u", v8, v9, v10, v11, v12, 8 * *(v2 + 1180));
      return 0;
    }

    if (!(*(a1 + 100) % (8 * *(v2 + 1178))))
    {
      goto LABEL_46;
    }

    v24 = 8 * *(v2 + 1178);
    v20 = "JPEG tile width must be multiple of %u";
LABEL_43:
    TIFFErrorExtR(a1, "JPEGSetupEncode", v20, v8, v9, v10, v11, v12, v24);
    return 0;
  }

  v19 = *(a1 + 132);
  if (v19 < *(a1 + 92) && v19 % (8 * *(v2 + 1180)))
  {
    TIFFErrorExtR(a1, "JPEGSetupEncode", "RowsPerStrip must be multiple of %u for JPEG", v8, v9, v10, v11, v12, 8 * *(v2 + 1180));
    return 0;
  }

LABEL_46:
  v21 = *(v2 + 1340);
  if ((v21 & 3) == 0)
  {
    v23 = *(a1 + 80) & 0xFFFFFFFB;
    goto LABEL_58;
  }

  v22 = *(v2 + 1320);
  if (v22 && *v22)
  {
    goto LABEL_59;
  }

  if ((v21 & 2) != 0 && (!*(v2 + 160) || !*(v2 + 168) || !*(v2 + 192) || !*(v2 + 200)))
  {
    TIFF_std_huff_tables(v2);
  }

  result = prepare_JPEGTables(a1);
  if (result)
  {
    *(a1 + 16) |= 8u;
    v23 = *(a1 + 80) | 4;
LABEL_58:
    *(a1 + 80) = v23;
LABEL_59:
    *(v2 + 40) = v2 + 1072;
    *(v2 + 1088) = std_init_destination;
    *(v2 + 1096) = std_empty_output_buffer;
    *(v2 + 1104) = std_term_destination;
    return 1;
  }

  return result;
}

uint64_t JPEGPreEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  if (!v8)
  {
    JPEGPreEncode_cold_2();
  }

  v9 = a2;
  v11 = *(v8 + 32);
  if (v11 == 1)
  {
    (*(a1 + 976))(a1);
    v11 = *(v8 + 32);
  }

  if (v11)
  {
    JPEGPreEncode_cold_1();
  }

  if ((*(a1 + 17) & 4) != 0)
  {
    v12 = *(a1 + 100);
    v13 = *(a1 + 104);
    v14 = _cg_TIFFTileRowSize(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v12 = *(a1 + 88);
    if ((*(a1 + 92) - *(a1 + 876)) >= *(a1 + 132))
    {
      v13 = *(a1 + 132);
    }

    else
    {
      v13 = *(a1 + 92) - *(a1 + 876);
    }

    v14 = _cg_TIFFScanlineSize(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(v8 + 1184) = v14;
  if (v9 && *(a1 + 170) == 2)
  {
    v20 = *(v8 + 1178);
    if (!*(v8 + 1178) || (v21 = *(v8 + 1180), !*(v8 + 1180)))
    {
      v24 = "JPEG horizontal or vertical sampling is zero";
      goto LABEL_28;
    }

    v22 = 0;
    if (v12 < -v20)
    {
      v22 = (v12 + v20 - 1) / v20;
    }

    if (v13 >= -v21)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v13 + v21 - 1) / v21;
    }
  }

  else
  {
    v22 = v12;
  }

  if (HIWORD(v22) || v13 >= 0x10000)
  {
    v24 = "Strip/tile too large for JPEG";
LABEL_28:
    TIFFErrorExtR(a1, "JPEGPreEncode", v24, v15, v16, v17, v18, v19, v35);
    return 0;
  }

  *(v8 + 48) = v22;
  *(v8 + 52) = v13;
  if (*(a1 + 170) == 1)
  {
    *(v8 + 56) = *(a1 + 130);
    if (*(v8 + 1176) == 6)
    {
      v23 = *(v8 + 1336) == 1 || *(v8 + 1178) == 1 && *(v8 + 1180) == 1;
      result = TIFFjpeg_set_colorspace(v8, 3);
      if (!result)
      {
        return result;
      }

      *(*(v8 + 104) + 8) = *(v8 + 1178);
      *(*(v8 + 104) + 12) = *(v8 + 1180);
    }

    else
    {
      result = TIFFjpeg_set_colorspace(v8, *(v8 + 60));
      if (!result)
      {
        return result;
      }

      v23 = 1;
    }
  }

  else
  {
    result = TIFFjpeg_set_colorspace(v8, 0);
    if (!result)
    {
      return result;
    }

    **(v8 + 104) = v9;
    v23 = 1;
    if (v9 && *(v8 + 1176) == 6)
    {
      *(*(v8 + 104) + 16) = 1;
      *(*(v8 + 104) + 20) = 1;
      *(*(v8 + 104) + 24) = 1;
    }
  }

  *(v8 + 324) = 0;
  *(v8 + 336) = 0;
  result = TIFFjpeg_set_quality(v8, *(v8 + 1332));
  if (!result)
  {
    return result;
  }

  v26 = *(v8 + 1340);
  v27 = *(v8 + 112);
  if (v26)
  {
    if (v27)
    {
      *(v27 + 128) = 1;
    }

    v28 = *(v8 + 120);
    if (!v28)
    {
      goto LABEL_53;
    }

    v29 = 1;
  }

  else
  {
    if (v27)
    {
      *(v27 + 128) = 0;
    }

    v28 = *(v8 + 120);
    if (!v28)
    {
      goto LABEL_53;
    }

    v29 = 0;
  }

  *(v28 + 128) = v29;
LABEL_53:
  if ((v26 & 2) != 0)
  {
    v31 = *(v8 + 160);
    if (v31)
    {
      *(v31 + 276) = 1;
    }

    v32 = *(v8 + 192);
    if (v32)
    {
      *(v32 + 276) = 1;
    }

    v33 = *(v8 + 168);
    if (v33)
    {
      *(v33 + 276) = 1;
    }

    v34 = *(v8 + 200);
    v30 = 0;
    if (v34)
    {
      *(v34 + 276) = 1;
    }
  }

  else
  {
    v30 = 1;
  }

  *(v8 + 296) = v30;
  if (v23)
  {
    *(v8 + 288) = 0;
    *(a1 + 1016) = JPEGEncode;
    *(a1 + 1032) = JPEGEncode;
    *(a1 + 1048) = JPEGEncode;
    result = TIFFjpeg_start_compress(v8);
    if (!result)
    {
      return result;
    }

LABEL_68:
    *(v8 + 1272) = 0;
    return 1;
  }

  *(v8 + 288) = 1;
  *(a1 + 1016) = JPEGEncodeRaw;
  *(a1 + 1032) = JPEGEncodeRaw;
  *(a1 + 1048) = JPEGEncodeRaw;
  result = TIFFjpeg_start_compress(v8);
  if (result)
  {
    result = alloc_downsampled_buffers(a1, *(v8 + 104), *(v8 + 92));
    if (result)
    {
      goto LABEL_68;
    }
  }

  return result;
}

uint64_t JPEGPostEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (*(v1 + 1272) >= 1)
  {
    v3 = *(v1 + 92);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(v1 + 104);
      do
      {
        v6 = *(v5 + 12);
        v7 = *(v1 + 1272);
        if (v7 * v6 < 8 * v6)
        {
          v8 = (8 * *(v5 + 28));
          v9 = 8 * v7 * v6;
          v10 = v6 * (8 - v7);
          do
          {
            v11 = (*(v1 + 1192 + 8 * v4) + v9);
            _TIFFmemcpy(*v11, *(v11 - 1), v8);
            v9 += 8;
            --v10;
          }

          while (v10);
          v3 = *(v1 + 92);
        }

        ++v4;
        v5 += 96;
      }

      while (v4 < v3);
    }

    v12 = *(v1 + 356);
    if (TIFFjpeg_write_raw_data(v1, v1 + 1192, 8 * v12) != 8 * v12)
    {
      return 0;
    }

    v1 = *(a1 + 1096);
  }

  return TIFFjpeg_finish_compress(v1);
}

uint64_t JPEGEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 1096);
  if (!v8)
  {
    JPEGEncode_cold_1();
  }

  v11 = *(v8 + 1184);
  v12 = a3 / v11;
  if (a3 % v11)
  {
    TIFFWarningExtR(a1, *a1, "fractional scanline discarded", a4, a5, a6, a7, a8, v32[0]);
  }

  if ((*(a1 + 17) & 4) == 0)
  {
    v13 = *(a1 + 876);
    v14 = v12 + v13;
    v15 = *(a1 + 92);
    v16 = (v15 - v13);
    if (v14 > v15)
    {
      v12 = v16;
    }
  }

  if (*(v8 + 88) == 12)
  {
    v17 = 2 * *(v8 + 1184) / 3;
    v18 = malloc_type_malloc(2 * v17, 0x1000040BDFB0063uLL);
    if (!v18)
    {
      TIFFErrorExtR(a1, "JPEGEncode", "Failed to allocate memory", v19, v20, v21, v22, v23, v32[0]);
      return 0;
    }

    v24 = v18;
  }

  else
  {
    v24 = 0;
    LODWORD(v17) = 0;
  }

  if (v12 >= 1)
  {
    while (1)
    {
      if (*(v8 + 88) == 12)
      {
        v32[0] = v24;
        if (v17 >= 2)
        {
          v25 = (a2 + 2);
          v26 = (v17 / 2);
          v27 = v24 + 1;
          do
          {
            HIDWORD(v28) = *(v25 - 2);
            LODWORD(v28) = *(v25 - 1) << 24;
            *(v27 - 1) = v28 >> 28;
            v29 = *v25;
            v25 += 3;
            *v27 = v29;
            v27 += 4;
            --v26;
          }

          while (v26);
        }
      }

      else
      {
        v32[0] = a2;
      }

      if (TIFFjpeg_write_scanlines(v8, v32) != 1)
      {
        return 0;
      }

      if (v12 != 1)
      {
        ++*(a1 + 876);
        a2 += *(v8 + 1184);
        if (v12-- > 1)
        {
          continue;
        }
      }

      break;
    }
  }

  if (*(v8 + 88) == 12)
  {
    free(v24);
  }

  return 1;
}

uint64_t JPEGCleanup(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    JPEGCleanup_cold_1();
  }

  *(a1 + 1288) = *(v1 + 1280);
  *(a1 + 1280) = *(v1 + 1288);
  *(a1 + 1296) = *(v1 + 1296);
  if (*(v1 + 664))
  {
    TIFFjpeg_destroy(v1);
  }

  v3 = *(v1 + 1320);
  if (v3)
  {
    free(v3);
  }

  free(*(a1 + 1096));
  *(a1 + 1096) = 0;

  return _TIFFSetDefaultCompressionState(a1);
}

uint64_t JPEGDefaultStripSize(uint64_t a1)
{
  result = (*(*(a1 + 1096) + 1304))();
  if (result < *(a1 + 92))
  {
    v3 = 0;
    v4 = *(a1 + 338);
    v5 = 8 * v4;
    if (result < -8 * v4)
    {
      v3 = (result + v5 - 1) / v5;
    }

    return v3 * v5;
  }

  return result;
}

uint64_t JPEGDefaultTileSize(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  result = (*(*(a1 + 1096) + 1312))();
  v7 = 0;
  v8 = *(a1 + 336);
  v9 = 8 * v8;
  if (*a2 < (-8 * v8))
  {
    v7 = (*a2 + v9 - 1) / v9;
  }

  v10 = 0;
  *a2 = v7 * v9;
  v11 = *(a1 + 338);
  v12 = 8 * v11;
  if (*a3 < (-8 * v11))
  {
    v10 = (*a3 + v12 - 1) / v12;
  }

  *a3 = v10 * v12;
  return result;
}

uint64_t JPEGResetUpsampled(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(result + 1096);
  v10 = *(result + 16);
  v11 = v10 & 0xBFFF;
  *(result + 16) = v10 & 0xFFFFBFFF;
  if (*(result + 170) == 1 && *(result + 122) == 6 && *(v9 + 1336) == 1)
  {
    v11 = v10 | 0x4000;
    *(result + 16) = v10 | 0x4000;
  }

  if (*(result + 936) >= 1)
  {
    if ((v11 & 0x400) != 0)
    {
      result = _cg_TIFFTileSize(result, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      result = -1;
    }

    *(v8 + 936) = result;
  }

  if (*(v8 + 1104) >= 1)
  {
    result = _cg_TIFFScanlineSize(v8, a2, a3, a4, a5, a6, a7, a8);
    *(v8 + 1104) = result;
  }

  return result;
}

uint64_t JPEGFixupTagsSubsamplingReadByte(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 32))
  {
    v4 = *(a1 + 24);
LABEL_3:
    *a2 = *v4;
    ++*(a1 + 24);
    --*(a1 + 32);
    return 1;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    if (!*(a1 + 56))
    {
      if ((*(*a1 + 1224))(*(*a1 + 1200), *(a1 + 40), 0) == -1)
      {
        return 0;
      }

      *(a1 + 56) = 1;
      v6 = *(a1 + 48);
    }

    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if ((v8 & 0x80000000) != 0)
    {
      JPEGFixupTagsSubsamplingReadByte_cold_1();
    }

    if ((*(*a1 + 1208))(*(*a1 + 1200), *(a1 + 8), v8) == v8)
    {
      v4 = *(a1 + 8);
      *(a1 + 24) = v4;
      *(a1 + 32) = v8;
      v9 = *(a1 + 48) - v8;
      *(a1 + 40) += v8;
      *(a1 + 48) = v9;
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t JPEGFixupTagsSubsamplingReadWord(uint64_t a1, _WORD *a2)
{
  v6 = 0;
  result = JPEGFixupTagsSubsamplingReadByte(a1, &v6);
  if (result)
  {
    v5 = 0;
    result = JPEGFixupTagsSubsamplingReadByte(a1, &v5);
    if (result)
    {
      *a2 = v5 | (v6 << 8);
      return 1;
    }
  }

  return result;
}

uint64_t JPEGInitializeLibJPEG(uint64_t result, int a2)
{
  v3 = *(result + 1096);
  if (*(v3 + 664))
  {
    if ((a2 == 0) == (*(v3 + 32) == 0))
    {
      return result;
    }

    TIFFjpeg_destroy(*(result + 1096));
    *(v3 + 664) = 0;
  }

  if (a2)
  {
    result = TIFFjpeg_create_decompress(v3);
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = TIFFjpeg_create_compress(v3);
  if (result)
  {
    v4 = *(v3 + 8);
    v5 = *(v4 + 88);
    if (v5 >= 1)
    {
      result = getenv("JPEGMEM");
      if (v5 >> 21 <= 4 && result == 0)
      {
        *(v4 + 88) = 10485760;
      }
    }

LABEL_6:
    *(v3 + 664) = 1;
  }

  return result;
}

uint64_t TIFFjpeg_create_compress(uint64_t a1)
{
  *a1 = _cg_jpeg_std_error(a1 + 672);
  *(a1 + 672) = TIFFjpeg_error_exit;
  *(a1 + 688) = TIFFjpeg_output_message;
  *(a1 + 24) = 0;
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_CreateCompress(a1, 90, 584);
  return 1;
}

uint64_t tables_init_source(uint64_t result)
{
  *(result + 1112) = *(result + 1320);
  *(result + 1120) = *(result + 1328);
  return result;
}

uint64_t TIFFjpeg_abort(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_abort(a1);
  return 1;
}

BOOL JPEGDecodeRaw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 1096);
  v12 = *(v11 + 52);
  v13 = *(a1 + 92) - *(a1 + 876);
  if (v12 <= v13)
  {
    v13 = *(v11 + 52);
  }

  else if ((*(a1 + 17) & 4) != 0)
  {
    goto LABEL_6;
  }

  v12 = v13;
  if (!v13)
  {
    return *(v11 + 168) < *(v11 + 140) || TIFFjpeg_finish_decompress(v11) != 0;
  }

LABEL_6:
  v14 = v12;
  v15 = *(*(v11 + 304) + 140);
  v16 = *(v11 + 1276);
  v17 = *(v11 + 1184);
  while (1)
  {
    if (a3 < v17)
    {
      v39 = "application buffer not large enough for all data.";
      goto LABEL_36;
    }

    v18 = *(v11 + 1272);
    if (v18 >= 8)
    {
      v19 = *(v11 + 420);
      if (TIFFjpeg_read_raw_data(v11, v11 + 1192, 8 * v19) != 8 * v19)
      {
        return 0;
      }

      v18 = 0;
      *(v11 + 1272) = 0;
    }

    v20 = *(v11 + 56);
    if (v20 >= 1)
    {
      break;
    }

LABEL_31:
    *(v11 + 1272) = v18 + 1;
    v36 = *(v11 + 1180);
    *(a1 + 876) += v36;
    v17 = *(v11 + 1184);
    a2 += v17;
    a3 -= v17;
    v37 = v14 <= v36;
    v14 -= v36;
    if (v37)
    {
      return *(v11 + 168) < *(v11 + 140) || TIFFjpeg_finish_decompress(v11) != 0;
    }
  }

  v21 = 0;
  LODWORD(v22) = 0;
  v23 = *(v11 + 304);
  while (1)
  {
    v24 = *(v23 + 12);
    if (v24 >= 1)
    {
      break;
    }

LABEL_29:
    ++v21;
    v23 += 96;
    if (v21 >= v20)
    {
      v18 = *(v11 + 1272);
      goto LABEL_31;
    }
  }

  v25 = 0;
  v26 = *(v23 + 8);
  v22 = v22;
  while (a3 >= v16 * (v15 - 1) + v26 + v22)
  {
    v27 = *(*(v11 + 1192 + 8 * v21) + 8 * (v25 + *(v11 + 1272) * v24));
    if (v26 == 1)
    {
      if (v15)
      {
        v28 = a2;
        v29 = v15;
        do
        {
          v30 = *v27++;
          *(v28 + v22) = v30;
          v28 += v16;
          --v29;
        }

        while (v29);
      }
    }

    else if (v15)
    {
      v31 = (a2 + v22);
      v32 = v15;
      do
      {
        if (v26 >= 1)
        {
          v33 = v26;
          v34 = v31;
          do
          {
            v35 = *v27++;
            a4 = v35;
            *v34++ = v35;
            --v33;
          }

          while (v33);
        }

        v31 += v16;
        --v32;
      }

      while (v32);
    }

    v22 += v26;
    if (++v25 == v24)
    {
      v20 = *(v11 + 56);
      goto LABEL_29;
    }
  }

  v39 = "application buffer not large enough for all data, possible subsampling issue";
LABEL_36:
  TIFFErrorExtR(a1, "JPEGDecodeRaw", v39, a4, a5, a6, a7, a8, v40);
  return 0;
}

uint64_t TIFFjpeg_start_decompress(uint64_t a1)
{
  *(a1 + 16) = a1 + 1040;
  *(a1 + 1040) = TIFFjpeg_progress_monitor;
  *(a1 + 1348) = 100;
  v2 = getenv("LIBTIFF_JPEG_MAX_ALLOWED_SCAN_NUMBER");
  if (v2)
  {
    *(a1 + 1348) = atoi(v2);
  }

  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_start_decompress(a1);
  return 1;
}

uint64_t alloc_downsampled_buffers(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 1096);
  if (a3 < 1)
  {
    v4 = 0;
LABEL_7:
    *(v3 + 1276) = v4;
    return 1;
  }

  else
  {
    v4 = 0;
    v5 = (a2 + 28);
    v6 = 1192;
    v7 = a3;
    while (1)
    {
      v8 = *(v5 - 5);
      v9 = *(v5 - 4);
      result = TIFFjpeg_alloc_sarray(v3, (8 * *v5), (8 * v9));
      if (!result)
      {
        break;
      }

      v5 += 24;
      v4 += v9 * v8;
      *(v3 + v6) = result;
      v6 += 8;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t TIFFjpeg_read_raw_data(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (setjmp((a1 + 848)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return _cg_jpeg_read_raw_data(a1, a2, a3);
  }
}

uint64_t TIFFjpeg_finish_decompress(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return _cg_jpeg_finish_decompress(a1);
  }
}

uint64_t TIFFjpeg_progress_monitor(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 32))
  {
    v8 = *(result + 172);
    if (v8 >= *(result + 1348))
    {
      v9 = result;
      TIFFErrorExtR(*(result + 1168), "TIFFjpeg_progress_monitor", "Scan number %d exceeds maximum scans (%d). This limit can be raised through the LIBTIFF_JPEG_MAX_ALLOWED_SCAN_NUMBER environment variable.", a4, a5, a6, a7, a8, v8);
      _cg_jpeg_abort(v9);
      longjmp((v9 + 848), 1);
    }
  }

  return result;
}

uint64_t TIFFjpeg_alloc_sarray(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  else
  {
    return (*(*(a1 + 8) + 16))(a1, 1, a2, a3);
  }
}

uint64_t TIFFjpeg_read_scanlines(uint64_t a1, uint64_t a2)
{
  if (setjmp((a1 + 848)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return _cg_jpeg_read_scanlines(a1, a2, 1);
  }
}

uint64_t TIFFjpeg_set_defaults(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_set_defaults(a1, v2, v3, v4);
  return 1;
}

uint64_t TIFF_std_huff_tables(uint64_t result)
{
  v1 = result;
  if (!*(result + 160))
  {
    result = _cg_jpeg_std_huff_table(result, 1, 0);
  }

  if (!v1[24])
  {
    result = _cg_jpeg_std_huff_table(v1, 0, 0);
  }

  if (!v1[21])
  {
    result = _cg_jpeg_std_huff_table(v1, 1, 1u);
  }

  if (!v1[25])
  {

    return _cg_jpeg_std_huff_table(v1, 0, 1u);
  }

  return result;
}

uint64_t prepare_JPEGTables(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!TIFFjpeg_set_quality(v1, *(v1 + 1332)) || !TIFFjpeg_suppress_tables(v1))
  {
    return 0;
  }

  v2 = *(v1 + 1340);
  if (v2)
  {
    v3 = *(v1 + 112);
    if (v3)
    {
      *(v3 + 128) = 0;
    }

    if (*(v1 + 1176) == 6)
    {
      v4 = *(v1 + 120);
      if (v4)
      {
        *(v4 + 128) = 0;
      }
    }
  }

  if ((v2 & 2) != 0)
  {
    v5 = *(v1 + 160);
    if (v5)
    {
      *(v5 + 276) = 0;
    }

    v6 = *(v1 + 192);
    if (v6)
    {
      *(v6 + 276) = 0;
    }

    if (*(v1 + 1176) == 6)
    {
      v7 = *(v1 + 168);
      if (v7)
      {
        *(v7 + 276) = 0;
      }

      v8 = *(v1 + 200);
      if (v8)
      {
        *(v8 + 276) = 0;
      }
    }
  }

  v9 = *(v1 + 1320);
  if (v9)
  {
    free(v9);
  }

  *(v1 + 1328) = 1000;
  v10 = malloc_type_malloc(0x3E8uLL, 0x19D753AuLL);
  *(v1 + 1320) = v10;
  if (!v10)
  {
    *(v1 + 1328) = 0;
    TIFFErrorExtR(*(v1 + 1168), "TIFFjpeg_tables_dest", "No space for JPEGTables", v11, v12, v13, v14, v15, v17);
    return 0;
  }

  *(v1 + 40) = v1 + 1072;
  *(v1 + 1088) = tables_init_destination;
  *(v1 + 1096) = tables_empty_output_buffer;
  *(v1 + 1104) = tables_term_destination;

  return TIFFjpeg_write_tables(v1);
}

uint64_t TIFFjpeg_set_quality(uint64_t a1, int a2)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_set_quality(a1, a2, 0, v4, v5, v6);
  return 1;
}

uint64_t TIFFjpeg_suppress_tables(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_suppress_tables(a1, 1);
  return 1;
}

uint64_t TIFFjpeg_write_tables(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_write_tables(a1);
  return 1;
}

uint64_t tables_init_destination(uint64_t result)
{
  *(result + 1072) = *(result + 1320);
  *(result + 1080) = *(result + 1328);
  return result;
}

uint64_t tables_empty_output_buffer(uint64_t a1)
{
  v2 = malloc_type_realloc(*(a1 + 1320), (*(a1 + 1328) + 1000), 0x7B0B2AF5uLL);
  if (!v2)
  {
    v3 = *a1;
    *(v3 + 10) = 56;
    *(v3 + 12) = 100;
    (**a1)(a1);
  }

  v4 = *(a1 + 1328);
  *(a1 + 1072) = &v2[v4];
  *(a1 + 1080) = 1000;
  *(a1 + 1320) = v2;
  *(a1 + 1328) = v4 + 1000;
  return 1;
}

void *std_init_destination(void *result)
{
  v1 = result[146];
  result[134] = *(v1 + 1120);
  result[135] = *(v1 + 1128);
  return result;
}

uint64_t std_empty_output_buffer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[146];
  v9[145] = v9[141];
  result = TIFFFlushData1(v9, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    a1[134] = v9[140];
    a1[135] = v9[141];
    return 1;
  }

  return result;
}

void *std_term_destination(void *result)
{
  v1 = result[146];
  v1[144] = result[134];
  v1[145] = v1[141] - result[135];
  return result;
}

uint64_t TIFFjpeg_set_colorspace(uint64_t a1, int a2)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_set_colorspace(a1, a2);
  return 1;
}

uint64_t JPEGEncodeRaw(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 1096);
  v11 = *(v10 + 1276);
  v12 = (*(v10 + 48) + *(v10 + 1178) - 1) / *(v10 + 1178) * *(v10 + 88) * (*(v10 + 1180) * *(v10 + 1178) + 2);
  v14 = v12 + 7;
  v13 = v12 < -7;
  v15 = v12 + 14;
  if (!v13)
  {
    v15 = v14;
  }

  v16 = v15 >> 3;
  v17 = a3 / (v15 >> 3);
  v18 = v17 * *(v10 + 1180);
  if (a3 != v17 * v16)
  {
    TIFFWarningExtR(a1, *a1, "fractional scanline discarded", a4, a5, a6, a7, a8, v45);
  }

  if (v18 < 1)
  {
    return 1;
  }

  v19 = *(*(v10 + 104) + 140);
  while (1)
  {
    v20 = *(v10 + 92);
    if (v20 >= 1)
    {
      v21 = 0;
      LODWORD(v22) = 0;
      v23 = *(v10 + 104);
      do
      {
        v24 = v23[3];
        if (v24 >= 1)
        {
          v25 = 0;
          v26 = v23[2];
          v27 = 8 * v23[7];
          v28 = v27 - v26 * v19;
          v22 = v22;
          v29 = v26 * v19 - v27;
          do
          {
            v30 = *(*(v10 + 1192 + 8 * v21) + 8 * (v25 + *(v10 + 1272) * v24));
            if (v26 == 1)
            {
              if (v19)
              {
                v31 = a2;
                v32 = v19;
                do
                {
                  *v30++ = *(v31 + v22);
                  v31 += v11;
                  --v32;
                }

                while (v32);
              }
            }

            else if (v19)
            {
              v33 = (a2 + v22);
              v34 = v19;
              do
              {
                if (v26 >= 1)
                {
                  v35 = v26;
                  v36 = v33;
                  do
                  {
                    v37 = *v36++;
                    *v30++ = v37;
                    --v35;
                  }

                  while (v35);
                }

                v33 += v11;
                --v34;
              }

              while (v34);
            }

            if (v28 >= 1)
            {
              v38 = *(v30 - 1);
              v39 = v29;
              do
              {
                *v30++ = v38;
              }

              while (!__CFADD__(v39++, 1));
            }

            v22 += v26;
            ++v25;
          }

          while (v25 != v24);
          v20 = *(v10 + 92);
        }

        ++v21;
        v23 += 24;
      }

      while (v21 < v20);
    }

    v41 = *(v10 + 1272);
    *(v10 + 1272) = v41 + 1;
    if (v41 < 7)
    {
      goto LABEL_32;
    }

    v42 = *(v10 + 356);
    if (TIFFjpeg_write_raw_data(v10, v10 + 1192, 8 * v42) != 8 * v42)
    {
      return 0;
    }

    *(v10 + 1272) = 0;
LABEL_32:
    v43 = *(v10 + 1180);
    *(a1 + 876) += v43;
    a2 += v16;
    v13 = v18 <= v43;
    v18 -= v43;
    if (v13)
    {
      return 1;
    }
  }
}

uint64_t TIFFjpeg_start_compress(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_start_compress(a1, 0);
  return 1;
}

uint64_t TIFFjpeg_write_raw_data(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (setjmp((a1 + 848)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return _cg_jpeg_write_raw_data(a1, a2, a3);
  }
}

uint64_t TIFFjpeg_finish_compress(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_finish_compress(a1);
  return 1;
}

uint64_t TIFFjpeg_write_scanlines(uint64_t a1, uint64_t a2)
{
  if (setjmp((a1 + 848)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return _cg_jpeg_write_scanlines(a1, a2, 1u);
  }
}

void Default_CTor(void)
{
  v1 = 0;
  memset(v0, 0, sizeof(v0));
  WXMPFiles_CTor_1(v0);
}

void IIOMetadataUpdater::IIOMetadataUpdater(IIOMetadataUpdater *this, IIOImageSource *a2, IIOImageDestination *a3, IIODictionary *a4, char a5)
{
  *this = &unk_1EF4DDC88;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 32) = a5;
  *(this + 33) = IIODictionary::containsKey(a4, @"kCGImageDestinationMetadata");
  *(this + 34) = 0;
  if (IIODictionary::containsKey(*(this + 3), @"kCGImageDestinationMergeMetadata"))
  {
    BoolForKey = IIODictionary::getBoolForKey(*(this + 3), @"kCGImageDestinationMergeMetadata");
    *(this + 34) = BoolForKey;
  }

  else
  {
    BoolForKey = *(this + 34);
  }

  *(this + 35) = (BoolForKey & 1) == 0;
  *(this + 39) = IIODictionary::getUint32ForKey(*(this + 3), @"kCGImageDestinationOrientation") - 1 < 8;
  *(this + 38) = IIODictionary::containsKey(*(this + 3), @"kCGImageDestinationDateTime");
  *(this + 40) = IIODictionary::containsKey(*(this + 3), @"kCGImageDestinationICCProfile");
  *(this + 36) = IIODictionary::getBoolForKey(*(this + 3), @"kCGImageMetadataShouldExcludeXMP");
  *(this + 37) = IIODictionary::getBoolForKey(*(this + 3), @"kCGImageMetadataShouldExcludeGPS");
}

BOOL IIOMetadataUpdater::copySourceToDestination(IIOImageSource **this)
{
  v2 = IIOImageSource::imageRead(this[1]);
  v3 = IIOImageRead::copyData(v2);
  if (v3)
  {
    v4 = v3;
    v5 = IIOImageSource::count(this[2]);
    BytePtr = CFDataGetBytePtr(v4);
    Length = CFDataGetLength(v4);
    v8 = IIOImageWriteSession::putBytes(v5, BytePtr, Length);
    if (v8 == CFDataGetLength(v4))
    {
      Ref = IIOImageSource::imageReadRef(this[2]);
      v10 = CGImageWriteSessionFinalize(Ref, 0) == 0;
    }

    else
    {
      v10 = 1;
    }

    CFRelease(v4);
  }

  else
  {
    LogError("copySourceToDestination", 164, "*** ERROR: cannot get src data from CGImageSource\n");
    return 1;
  }

  return v10;
}

CGImageMetadata *IIOMetadataUpdater::createMetadataWithOrientation(IIOImageSource **this, int a2, __CFError **a3)
{
  memset(v11, 0, sizeof(v11));
  IIODictionary::IIODictionary(v11);
  v5 = IIOImageSource::copyMetadataAtIndex(this[1], 0, v11);
  v6 = v5;
  if (v5 && (MutableCopy = CGImageMetadataCreateMutableCopy(v5)) != 0 || (MutableCopy = CGImageMetadataCreateMutable()) != 0)
  {
    IIONumber::IIONumber(v9, a2);
    CGImageMetadataSetValueMatchingImageProperty(MutableCopy, @"{TIFF}", @"Orientation", value);
    IIONumber::~IIONumber(v9);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  IIODictionary::~IIODictionary(v11);
  return MutableCopy;
}

void sub_1860CF230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  IIONumber::~IIONumber(&a9);
  IIODictionary::~IIODictionary(&a12);
  _Unwind_Resume(a1);
}

CGImageMetadata *IIOMetadataUpdater::createMetadataWithDateTime(IIOImageSource **this, const __CFString *a2, __CFError **a3)
{
  memset(v19, 0, sizeof(v19));
  IIODictionary::IIODictionary(v19);
  v6 = IIOImageSource::copyMetadataAtIndex(this[1], 0, v19);
  v7 = v6;
  if (!v6 || (Mutable = CGImageMetadataCreateMutableCopy(v6)) == 0)
  {
    Mutable = CGImageMetadataCreateMutable();
    if (!Mutable)
    {
      goto LABEL_31;
    }
  }

  v9 = CFGetTypeID(a2);
  if (v9 == CFDateGetTypeID())
  {
    v10 = CFLocaleCopyCurrent();
    v11 = *MEMORY[0x1E695E480];
    v12 = CFDateFormatterCreate(*MEMORY[0x1E695E480], v10, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v12, @"yyyy-MM-dd'T'HH:mm:ss.SSSZZZZ");
    v13 = CFDateFormatterCreate(v11, v10, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v13, @"SSS");
    if (v13)
    {
      StringWithDate = CFDateFormatterCreateStringWithDate(v11, v13, a2);
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      StringWithDate = 0;
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v17 = CFDateFormatterCreateStringWithDate(v11, v12, a2);
    if (v17)
    {
      MutableCopy = CFStringCreateMutableCopy(v11, 32, v17);
      if (MutableCopy)
      {
        v20.length = CFStringGetLength(v17);
        v20.location = 0;
        CFStringFindAndReplace(MutableCopy, @"GMT", &stru_1EF50EA10, v20, 0);
      }

      CFRelease(v17);
      if (!v10)
      {
LABEL_21:
        if (v12)
        {
          CFRelease(v12);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        if (MutableCopy)
        {
          goto LABEL_26;
        }

        goto LABEL_28;
      }

LABEL_20:
      CFRelease(v10);
      goto LABEL_21;
    }

LABEL_19:
    MutableCopy = 0;
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v15 = CFGetTypeID(a2);
  if (v15 == CFStringGetTypeID())
  {
    StringWithDate = CreateSubsecTimeFromXMPDateTime(a2);
    if (StringWithDate)
    {
      MutableCopy = CreateXMPDateFromXMPDateTimeAndSubsecTime(a2, StringWithDate);
      if (!MutableCopy)
      {
        goto LABEL_28;
      }
    }

    else
    {
      MutableCopy = CreateXMPDateTimeWithXMPOrExifDateTimeString(a2);
      StringWithDate = 0;
      if (!MutableCopy)
      {
        goto LABEL_28;
      }
    }

LABEL_26:
    CGImageMetadataSetValueWithPath(Mutable, 0, @"photoshop:DateCreated", MutableCopy);
    CGImageMetadataSetValueWithPath(Mutable, 0, @"xmp:CreateDate", MutableCopy);
    CGImageMetadataSetValueWithPath(Mutable, 0, @"xmp:ModifyDate", MutableCopy);
    CFRelease(MutableCopy);
    goto LABEL_29;
  }

  StringWithDate = 0;
LABEL_28:
  CGImageMetadataCreateAndLogUTF8Error("createMetadataWithDateTime", 278, 2, "Could not parse kCGImageDestinationDateTime string - must be a valid EXIF DateTime or ISO8601 string", a3);
LABEL_29:
  if (StringWithDate)
  {
    CFRelease(StringWithDate);
  }

LABEL_31:
  if (v7)
  {
    CFRelease(v7);
  }

  IIODictionary::~IIODictionary(v19);
  return Mutable;
}

void sub_1860CF514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGMutableImageMetadataRef IIOMetadataUpdater::createMetadataWithMetadata(IIOImageSource **this, const CGImageMetadata *cf, __CFError **a3)
{
  if (cf && (*(this + 34) & 1) != 0)
  {
    memset(v9, 0, sizeof(v9));
    IIODictionary::IIODictionary(v9);
    v5 = IIOImageSource::copyMetadataAtIndex(this[1], 0, v9);
    MutableCopy = CGImageMetadataCreateMutableCopy(v5);
    if (MutableCopy)
    {
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      MutableCopy = CGImageMetadataCreateMutable();
      if (!v5)
      {
LABEL_12:
        if (MutableCopy)
        {
          memset(v8, 0, sizeof(v8));
          IIODictionary::IIODictionary(v8);
          IIODictionary::setObjectForKey(v8, *MEMORY[0x1E695E4D0], @"kCGImageMetadataMergeOverwrite");
          CGImageMetadataMerge(MutableCopy, cf, v8);
          if (*(this + 37) == 1)
          {
            CGImageMetadataRemoveGPS(MutableCopy);
          }

          IIODictionary::~IIODictionary(v8);
        }

        IIODictionary::~IIODictionary(v9);
        return MutableCopy;
      }
    }

    CFRelease(v5);
    goto LABEL_12;
  }

  if (!cf)
  {
    return 0;
  }

  if (*(this + 37) == 1)
  {
    MutableCopy = CGImageMetadataCreateMutableCopy(cf);
    CGImageMetadataRemoveGPS(MutableCopy);
    return MutableCopy;
  }

  return CFRetain(cf);
}

void sub_1860CF684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIOMetadataUpdater::isValid(IIOMetadataUpdater *this, __CFError **a2)
{
  if (*(this + 32) != 1)
  {
    return 1;
  }

  Type = IIOImageSource::getType(*(this + 1));
  if (*(this + 33) == 1)
  {
    ObjectForKey = IIODictionary::getObjectForKey(*(this + 3), @"kCGImageDestinationMetadata");
  }

  else
  {
    ObjectForKey = 0;
  }

  v7 = *(this + 39) == 1 && IIODictionary::getUint32ForKey(*(this + 3), @"kCGImageDestinationOrientation") - 1 < 8;
  if (*(this + 38) == 1)
  {
    v8 = IIODictionary::getObjectForKey(*(this + 3), @"kCGImageDestinationDateTime");
  }

  else
  {
    v8 = 0;
  }

  if (*(this + 40) == 1)
  {
    v9 = IIODictionary::getObjectForKey(*(this + 3), @"kCGImageDestinationICCProfile");
  }

  else
  {
    v9 = 0;
  }

  if ((*(this + 33) & 1) == 0)
  {
    if ((*(this + 39) & 1) == 0 && (*(this + 38) & 1) == 0 && (*(this + 40) & 1) == 0 && (*(this + 37) & 1) == 0 && (*(this + 36) & 1) == 0)
    {
      v10 = "One of kCGImageDestinationMetadata, kCGImageDestinationOrientation, kCGImageDestinationDateTime, kCGImageMetadataShouldExcludeXMP, or kCGImageMetadataShouldExcludeGPS is required.";
      v11 = 359;
      goto LABEL_51;
    }

    if (*(this + 34) == 1 && (*(this + 38) & 1) == 0 && (*(this + 39) & 1) == 0)
    {
      v10 = "kCGImageDestinationMetadata is required if kCGImageDestinationMergeMetadata is true";
      v11 = 374;
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  if (!*(this + 39))
  {
    if (*(this + 38) == 1)
    {
      v10 = "kCGImageDestinationMetadata cannot be used with kCGImageDestinationDateTime";
      v11 = 369;
      goto LABEL_35;
    }

    if (ObjectForKey)
    {
      v12 = CFGetTypeID(ObjectForKey);
      if (v12 != CGImageMetadataGetTypeID())
      {
        v10 = "Invalid type - kCGImageDestinationMetadata value must be a CGImageMetadataRef";
        v11 = 379;
        goto LABEL_51;
      }
    }

LABEL_31:
    if (*(this + 37) == 1)
    {
      if ((*(this + 38) & 1) != 0 || *(this + 39) == 1)
      {
        v10 = "kCGImageDestinationExcludeGPS cannot be used with kCGImageDestinationDateTime or kCGImageDestinationOrientation";
        v11 = 384;
        goto LABEL_35;
      }
    }

    else if (*(this + 38))
    {
      if (v8)
      {
        v14 = CFGetTypeID(v8);
        if (v14 != CFStringGetTypeID())
        {
          v15 = CFGetTypeID(v8);
          if (v15 != CFDateGetTypeID())
          {
            v10 = "Invalid type - kCGImageDestinationDateTime value must be a CFStringRef or CFDateRef";
            v11 = 389;
            goto LABEL_51;
          }
        }
      }
    }

    if (v7 || (*(this + 39) & 1) == 0)
    {
      if (*(this + 40) != 1)
      {
        return 1;
      }

      v16 = CFGetTypeID(v9);
      if (v16 == CFDataGetTypeID())
      {
        if ((*(this + 40) & 1) != 0 && !CFEqual(Type, @"public.jpeg"))
        {
          v10 = "Setting ICC profile is only supported for JPEG.";
          v11 = 404;
          v13 = 1;
          goto LABEL_52;
        }

        return 1;
      }

      v10 = "Invalid value for kCGImageDestinationICCProfile, must be a CFData";
      v11 = 399;
    }

    else
    {
      v10 = "Invalid value for kCGImageDestinationOrientation, must be a CFNumber between 1 and 8 inclusive.";
      v11 = 394;
    }

LABEL_51:
    v13 = 2;
    goto LABEL_52;
  }

  v10 = "kCGImageDestinationMetadata cannot be used with kCGImageDestinationOrientation";
  v11 = 364;
LABEL_35:
  v13 = 3;
LABEL_52:
  CGImageMetadataCreateAndLogUTF8Error("CGImageDestinationCopyImageSource", v11, v13, v10, a2);
  return 0;
}

BOOL IIOMetadataUpdater::updateDestination(IIOImageSource **this, __CFError **a2)
{
  if ((IIOMetadataUpdater::isValid(this, a2) & 1) == 0)
  {
    IIOMetadataUpdater::updateDestination();
    return 0;
  }

  if (this[4])
  {
    memset(v16, 0, sizeof(v16));
    IIODictionary::IIODictionary(v16);
    memset(v15, 0, sizeof(v15));
    IIODictionary::IIODictionary(v15, *(this[3] + 1), 1);
    ObjectForKey = IIODictionary::getObjectForKey(v15, @"kCGImageDestinationMetadata");
    if (ObjectForKey)
    {
      v5 = CFRetain(ObjectForKey);
    }

    else
    {
      v5 = 0;
    }

    IIODictionary::removeObjectForKey(v15, @"kCGImageDestinationMetadata");
    if (*(this + 34) == 1)
    {
      v7 = IIOImageSource::copyMetadataAtIndex(this[1], 0, v16);
      v8 = IIOImageSource::copyPropertiesAtIndex(this[1], 0, v16);
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    Mutable = CGImageMetadataCreateMutable();
    CGImageMetadataMerge(Mutable, v7, v16);
    IIODictionary::setObjectForKey(v16, *MEMORY[0x1E695E4D0], @"kCGImageMetadataMergeOverwrite");
    CGImageMetadataMerge(Mutable, v5, v16);
    if (*(this + 37) == 1)
    {
      CGImageMetadataRemoveGPS(Mutable);
    }

    Type = IIOImageSource::getType(this[1]);
    if (CFStringCompare(Type, @"public.jpeg", 0))
    {
      if (CFStringCompare(Type, @"public.heic", 0))
      {
        if (CFStringCompare(Type, @"public.png", 0))
        {
          if (CFStringCompare(Type, @"com.adobe.photoshop-image", 0))
          {
            if (CFStringCompare(Type, @"public.tiff", 0))
            {
              v11 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"image type '%@' is not supported for lossless metadata modification at this time.\n", Type);
              if (v11)
              {
                CGImageMetadataCreateAndLogError("updateDestination", 1, v11, a2);
                CFRelease(v11);
              }

              if ((gIIODebugFlags & 0x800000000000) != 0)
              {
                ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "updateDestination", 488, "*** ERROR: image type not supported\n");
              }

              goto LABEL_34;
            }

            v12 = IIOMetadataUpdater::modifyTIFF(this, Mutable, a2);
            if (!(((gIIODebugFlags & 0x800000000000) == 0) | v12 & 1))
            {
              v13 = "*** ERROR: modifyTIFF failed\n";
              v14 = 477;
              goto LABEL_33;
            }

LABEL_35:
            IIODictionary::~IIODictionary(v15);
            IIODictionary::~IIODictionary(v16);
            if (v5)
            {
              CFRelease(v5);
            }

            if (v7)
            {
              CFRelease(v7);
            }

            if (v8)
            {
              CFRelease(v8);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            return v12;
          }

          v12 = IIOMetadataUpdater::modifyXMPOnlyFile(this, a2, Mutable, 1347634208);
          if (((gIIODebugFlags & 0x800000000000) == 0) | v12 & 1)
          {
            goto LABEL_35;
          }

          v13 = "*** ERROR: modifyPSD failed\n";
          v14 = 471;
        }

        else
        {
          v12 = IIOMetadataUpdater::modifyXMPOnlyFile(this, a2, Mutable, 1347307296);
          if (((gIIODebugFlags & 0x800000000000) == 0) | v12 & 1)
          {
            goto LABEL_35;
          }

          v13 = "*** ERROR: modifyPNG failed\n";
          v14 = 465;
        }
      }

      else
      {
        v12 = IIOMetadataUpdater::modifyHEIC(this, Mutable, a2);
        if (((gIIODebugFlags & 0x800000000000) == 0) | v12 & 1)
        {
          goto LABEL_35;
        }

        v13 = "*** ERROR: modifyHEIC failed\n";
        v14 = 459;
      }
    }

    else
    {
      v12 = IIOMetadataUpdater::modifyJPEG(this, Mutable, a2);
      if (((gIIODebugFlags & 0x800000000000) == 0) | v12 & 1)
      {
        goto LABEL_35;
      }

      v13 = "*** ERROR: modifyJPEG failed\n";
      v14 = 453;
    }

LABEL_33:
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "updateDestination", v14, v13);
LABEL_34:
    v12 = 0;
    goto LABEL_35;
  }

  return IIOMetadataUpdater::copySourceToDestination(this);
}

void sub_1860CFE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t IIOMetadataUpdater::modifyJPEG(IIOImageSource **this, CGImageMetadata *a2, __CFError **a3)
{
  v4 = IIOImageSource::imageRead(this[1]);
  v5 = IIOImageRead::copyData(v4);
  if (v5)
  {
    MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, v5);
    CFRelease(v5);
    if (MutableCopy)
    {
      if (IIODictionary::getCount(this[3]) != 1 || !IIODictionary::containsKey(this[3], @"kCGImageDestinationOrientation") || (Uint32ForKey = IIODictionary::getUint32ForKey(this[3], @"kCGImageDestinationOrientation"), !IIOMetadataUpdater::fastUpdateExifOrientationJPEG(Uint32ForKey, MutableCopy, Uint32ForKey)))
      {
LABEL_8:
        operator new();
      }

      v8 = IIOImageSource::count(this[2]);
      BytePtr = CFDataGetBytePtr(MutableCopy);
      Length = CFDataGetLength(MutableCopy);
      v11 = IIOImageWriteSession::putBytes(v8, BytePtr, Length);
      if (v11 == CFDataGetLength(MutableCopy))
      {
        v12 = IIOImageWriteSession::finalize(v8, 0);
        v5 = 1;
        if (v12)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v5 = 1;
      }

      CFRelease(MutableCopy);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

BOOL IIOMetadataUpdater::modifyHEIC(IIOImageSource **this, CGImageMetadata *a2, __CFError **a3)
{
  v28 = 0;
  v29 = 0;
  v27 = 0;
  IIO_LoadHEIFSymbols();
  v6 = IIOImageSource::imageRead(this[1]);
  v7 = IIOImageRead::copyData(v6);
  if (!v7)
  {
    v16 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  IIODictionary::IIODictionary(&v24);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  IIODictionary::IIODictionary(&v21);
  v9 = gFunc_CMPhotoCompressionSessionCreate(*MEMORY[0x1E695E480], v25, &v27);
  if (v9)
  {
    IIOCMErrorString(v9);
    _cg_jpeg_mem_term("modifyHEIC", 1430, "*** ERROR: CMPhotoCompressionSessionCreate returned %d (%s)\n");
  }

  else
  {
    IIONumber::IIONumber(v19, 1);
    IIODictionary::setObjectForKey(&v21, value, *gIIO_kCMPhotoCompressionContainerOption_BackingType);
    IIONumber::~IIONumber(v19);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___ZN18IIOMetadataUpdater10modifyHEICEP15CGImageMetadataPP9__CFError_block_invoke;
    v18[3] = &__block_descriptor_tmp_78;
    v18[4] = this;
    v18[5] = a3;
    v18[6] = a2;
    v10 = gFunc_CMPhotoCompressionSessionOpenExistingContainerForModification(v27, v22, v8, &v29, v18);
    if (v10)
    {
      IIOCMErrorString(v10);
      _cg_jpeg_mem_term("modifyHEIC", 1506, "*** ERROR: CMPhotoCompressionSessionOpenExistingContainerForModification returned %d (%s)\n");
    }

    else
    {
      v11 = gFunc_CMPhotoCompressionSessionCloseContainerAndCopyBacking(v27, 0, 0, &v28);
      if (v11)
      {
        IIOCMErrorString(v11);
        _cg_jpeg_mem_term("modifyHEIC", 1510, "*** ERROR: CMPhotoCompressionSessionCloseContainerAndCopyBacking returned %d (%s)\n");
      }

      else if (v28)
      {
        v12 = IIOImageSource::count(this[2]);
        BytePtr = CFDataGetBytePtr(v28);
        Length = CFDataGetLength(v28);
        v15 = IIOImageWriteSession::putBytes(v12, BytePtr, Length);
        if (v15 == CFDataGetLength(v28))
        {
          v16 = IIOImageWriteSession::finalize(v12, 0) == 0;
          goto LABEL_15;
        }
      }

      else
      {
        LogError("modifyHEIC", 1511, "*** ERROR: CMPhotoCompressionSessionCloseContainerAndCopyBacking returned noErr, but data is NULL\n");
      }
    }
  }

  v16 = 0;
LABEL_15:
  IIODictionary::~IIODictionary(&v21);
  IIODictionary::~IIODictionary(&v24);
  if (v27)
  {
    CFRelease(v27);
  }

LABEL_17:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return v16;
}

void sub_1860D0408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary((v14 - 96));
  _Unwind_Resume(a1);
}

uint64_t IIOMetadataUpdater::modifyTIFF(IIODictionary **this, CGImageMetadata *a2, __CFError **a3)
{
  IIO_InitializeXMPToolkit();
  if (*(this + 39) == 1)
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(this[3], @"kCGImageDestinationOrientation");
    MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithOrientation(this, Uint32ForKey, v8);
  }

  else if (*(this + 38) == 1)
  {
    ObjectForKey = IIODictionary::getObjectForKey(this[3], @"kCGImageDestinationDateTime");
    MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithDateTime(this, ObjectForKey, a3);
  }

  else
  {
    v11 = 0;
    v12 = 1;
    if (!a2 || (*(this + 33) & 1) == 0)
    {
      goto LABEL_13;
    }

    MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithMetadata(this, a2, v6);
  }

  v11 = MetadataWithOrientation;
  if (MetadataWithOrientation)
  {
    TagWithPath = CGImageMetadataGetTagWithPath(MetadataWithOrientation, 0, @"photoshop:DateCreated");
    if (TagWithPath)
    {
      CGImageMetadataSetTagWithPath(v11, 0, @"exif:DateTimeOriginal", TagWithPath);
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

LABEL_13:
  v14 = IIOImageSource::imageRead(this[1]);
  v15 = IIOImageRead::copyData(v14);
  if (v15)
  {
    CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, v15);
    Default_CTor();
  }

  IIO_TerminateXMPToolkit();
  if ((v12 & 1) == 0)
  {
    CFRelease(v11);
  }

  return 0;
}

CFTypeRef IIOMetadataUpdater::createModifiedJPEGWithOrientation(IIOMetadataUpdater *this, _JPEGFile **a2, int a3, __CFError **a4)
{
  result = _JPEGFile::findApp1ExifMarker(a2[10]);
  if (result)
  {
    if ((a3 - 9) < 0xFFFFFFF8)
    {
      v7 = 1;
    }

    else
    {
      v7 = a3;
    }

    (*(*result + 152))(result, v7);

    return _JPEGWriter::createData(a2);
  }

  return result;
}

CFTypeRef IIOMetadataUpdater::createModifiedJPEGWithDateTime(IIOMetadataUpdater *this, _JPEGFile **a2, const __CFString *cf, __CFError **a4)
{
  v7 = CFGetTypeID(cf);
  if (v7 == CFDateGetTypeID())
  {
    v42 = a4;
    v43 = a2;
    v8 = CFLocaleCopyCurrent();
    v9 = *MEMORY[0x1E695E480];
    v10 = CFDateFormatterCreate(*MEMORY[0x1E695E480], v8, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v10, @"yyyy-MM-dd'T'HH:mm:ss.SSSZZZZ");
    v11 = CFDateFormatterCreate(v9, v8, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v11, @"yyyy:MM:dd HH:mm:ss");
    v12 = CFDateFormatterCreate(v9, v8, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v12, @"SSS");
    v13 = CFDateFormatterCreate(v9, v8, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v13, @"yyyyMMdd");
    v14 = CFDateFormatterCreate(v9, v8, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    CFDateFormatterSetFormat(v14, @"HHmmssZZZ");
    StringWithDate = CFDateFormatterCreateStringWithDate(v9, v11, cf);
    v45 = CFDateFormatterCreateStringWithDate(v9, v12, cf);
    v15 = CFDateFormatterCreateStringWithDate(v9, v10, cf);
    if (v15)
    {
      v16 = v15;
      MutableCopy = CFStringCreateMutableCopy(v9, 32, v15);
      if (MutableCopy)
      {
        v46.length = CFStringGetLength(v16);
        v46.location = 0;
        CFStringFindAndReplace(MutableCopy, @"GMT", &stru_1EF50EA10, v46, 0);
      }

      CFRelease(v16);
    }

    else
    {
      MutableCopy = 0;
    }

    IPTCDateStringWithXMPDateTimeString = CFDateFormatterCreateStringWithDate(v9, v13, cf);
    IPTCTimeStringWithXMPDateTimeString = CFDateFormatterCreateStringWithDate(v9, v14, cf);
    CFRelease(v8);
    CFRelease(v10);
    CFRelease(v11);
    CFRelease(v12);
    CFRelease(v13);
    CFRelease(v14);
    a2 = v43;
    EXIFDataTimeStringWithXMPDateTimeString = StringWithDate;
    SubsecTimeFromXMPDateTime = v45;
    a4 = v42;
    if (StringWithDate)
    {
LABEL_18:
      if (EXIFDataTimeStringWithXMPDateTimeString && (App1ExifMarker = _JPEGFile::findApp1ExifMarker(a2[10])) != 0)
      {
        v32 = App1ExifMarker;
        v33 = 1;
        v34 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
        if (v34)
        {
          CFStringGetCString(EXIFDataTimeStringWithXMPDateTimeString, v34, 20, 0x600u);
          (*(*v32 + 136))(v32, v34);
          if (SubsecTimeFromXMPDateTime && CFStringCompare(SubsecTimeFromXMPDateTime, @"000", 0))
          {
            Length = CFStringGetLength(SubsecTimeFromXMPDateTime);
            v33 = 1;
            v36 = malloc_type_calloc(1uLL, Length, 0x100004077774924uLL);
            if (!v36)
            {
              if (!MutableCopy)
              {
                goto LABEL_33;
              }

              goto LABEL_31;
            }

            v37 = CFStringGetLength(SubsecTimeFromXMPDateTime);
            CFStringGetCString(SubsecTimeFromXMPDateTime, v36, v37 + 1, 0x600u);
            (*(*v32 + 144))(v32, v36);
          }

          else
          {
            v36 = 0;
          }

          v33 = 1;
          if (!MutableCopy)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v36 = 0;
          if (!MutableCopy)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v36 = 0;
        v34 = 0;
        v33 = 0;
        if (!MutableCopy)
        {
          goto LABEL_33;
        }
      }

LABEL_31:
      v38 = _JPEGFile::copyXMPProperties(a2[10]);
      if (v38)
      {
        v39 = v38;
        CGImageMetadataSetValueWithPath(v38, 0, @"photoshop:DateCreated", MutableCopy);
        CGImageMetadataSetValueWithPath(v39, 0, @"xmp:CreateDate", MutableCopy);
        CGImageMetadataSetValueWithPath(v39, 0, @"xmp:ModifyDate", MutableCopy);
        _JPEGFile::setXMPProperties(a2[10], v39);
        CFRelease(v39);
        v33 = 1;
      }

LABEL_33:
      if (IPTCDateStringWithXMPDateTimeString | IPTCTimeStringWithXMPDateTimeString)
      {
        _JPEGFile::copyIPTCProperties(a2[10]);
      }

      if (v33)
      {
        Data = _JPEGWriter::createData(a2);
        if (!v34)
        {
LABEL_40:
          if (v36)
          {
            free(v36);
          }

          if (EXIFDataTimeStringWithXMPDateTimeString)
          {
            CFRelease(EXIFDataTimeStringWithXMPDateTimeString);
          }

          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          if (SubsecTimeFromXMPDateTime)
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        }
      }

      else
      {
        Data = 0;
        if (!v34)
        {
          goto LABEL_40;
        }
      }

      free(v34);
      goto LABEL_40;
    }
  }

  else
  {
    v18 = CFGetTypeID(cf);
    if (v18 == CFStringGetTypeID())
    {
      EXIFDataTimeStringWithXMPDateTimeString = CreateEXIFDataTimeStringWithXMPDateTimeString(cf);
      SubsecTimeFromXMPDateTime = CreateSubsecTimeFromXMPDateTime(cf);
      if (SubsecTimeFromXMPDateTime)
      {
        XMPDateFromXMPDateTimeAndSubsecTime = CreateXMPDateFromXMPDateTimeAndSubsecTime(cf, SubsecTimeFromXMPDateTime);
      }

      else
      {
        XMPDateFromXMPDateTimeAndSubsecTime = CreateXMPDateTimeWithXMPOrExifDateTimeString(cf);
      }

      MutableCopy = XMPDateFromXMPDateTimeAndSubsecTime;
      IPTCDateStringWithXMPDateTimeString = CreateIPTCDateStringWithXMPDateTimeString(cf, v22, v23, v24, v25, v26, v27, v28);
      IPTCTimeStringWithXMPDateTimeString = CreateIPTCTimeStringWithXMPDateTimeString(cf);
      if (EXIFDataTimeStringWithXMPDateTimeString)
      {
        goto LABEL_18;
      }
    }

    else
    {
      SubsecTimeFromXMPDateTime = 0;
      IPTCTimeStringWithXMPDateTimeString = 0;
      IPTCDateStringWithXMPDateTimeString = 0;
      MutableCopy = 0;
      EXIFDataTimeStringWithXMPDateTimeString = 0;
    }
  }

  if (MutableCopy || IPTCDateStringWithXMPDateTimeString || IPTCTimeStringWithXMPDateTimeString)
  {
    goto LABEL_18;
  }

  IIOMetadataUpdater::createModifiedJPEGWithDateTime(a4);
  Data = 0;
  if (SubsecTimeFromXMPDateTime)
  {
LABEL_47:
    CFRelease(SubsecTimeFromXMPDateTime);
  }

LABEL_48:
  if (IPTCDateStringWithXMPDateTimeString)
  {
    CFRelease(IPTCDateStringWithXMPDateTimeString);
  }

  if (IPTCTimeStringWithXMPDateTimeString)
  {
    CFRelease(IPTCTimeStringWithXMPDateTimeString);
  }

  return Data;
}

CFTypeRef IIOMetadataUpdater::createModifiedJPEGWithMetadata(IIOMetadataUpdater *this, _JPEGWriter *a2, CFTypeRef cf, __CFError **a4)
{
  v6 = ((*(*(a2 + 10) + 80) - *(*(a2 + 10) + 72)) >> 3);
  if (cf)
  {
    v7 = CFRetain(cf);
    if (v6)
    {
LABEL_3:
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *MEMORY[0x1E695E480];
      while (1)
      {
        v12 = _JPEGFile::appMarkerAtIndex(*(a2 + 10), v10);
        v13 = v12;
        if (*(v12 + 68) == 1)
        {
          v14 = *(v12 + 120);
          if (v14)
          {
            v15 = *(v12 + 128);
            if (v15 && v8 == 0)
            {
              v8 = CFDataCreate(v11, v14, v15);
            }
          }
        }

        else if ((*(v12 + 69) & 1) == 0 && *(v12 + 70) != 1)
        {
          v9 |= *(v12 + 56) == -19;
          ++v10;
          goto LABEL_15;
        }

        _JPEGFile::removeAppMarker(*(a2 + 10), v13);
        --v6;
        (*(*v13 + 8))(v13);
LABEL_15:
        if (v10 >= v6)
        {
          goto LABEL_20;
        }
      }
    }
  }

  else
  {
    v7 = 0;
    if (((*(*(a2 + 10) + 80) - *(*(a2 + 10) + 72)) >> 3))
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v8 = 0;
LABEL_20:
  v17 = CGImagePropertiesCreateFromMetadata(v7);
  if (!v17)
  {
    operator new();
  }

  v28 = 0;
  if (CreateExifBufferFromPropertiesJPEG(v17, 0, 0, 0, v8, @"public.jpeg", &v28))
  {
    v18 = v28 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    operator new();
  }

  if (v9)
  {
    AppMarker = _JPEGFile::findAppMarker(*(a2 + 10), 65517);
    ObjectForKey = IIODictionary::getObjectForKey(v17, @"{IPTC}");
    if (ObjectForKey)
    {
      memset(v27, 0, sizeof(v27));
      IIODictionary::IIODictionary(v27, ObjectForKey);
      v21 = SizeOfIPTCData(v27);
      if (v21)
      {
        Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v21);
        v23 = Mutable;
        if (Mutable)
        {
          CFDataSetLength(Mutable, v21);
          MutableBytePtr = CFDataGetMutableBytePtr(v23);
          WriteIPTCData(v27, MutableBytePtr);
          _APP13::setIPTCData(AppMarker, v23);
          CFRelease(v23);
        }
      }

      IIODictionary::~IIODictionary(v27);
    }

    else
    {
      _APP13::setIPTCData(AppMarker, 0);
    }
  }

  if ((*(this + 36) & 1) == 0)
  {
    _JPEGFile::setXMPProperties(*(a2 + 10), v7);
  }

  Data = _JPEGWriter::createData(a2);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  (*(*v17 + 8))(v17);
  return Data;
}

uint64_t IIOMetadataUpdater::fastUpdateExifOrientationJPEG(IIOMetadataUpdater *this, CFDataRef theData, unsigned int a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  IIOScanner::IIOScanner(&v22, BytePtr, Length, 0);
  v21 = 0;
  v20 = 0;
  if (IIOScanner::getVal16(&v22) != 65496)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  while (1)
  {
    Val16 = IIOScanner::getVal16(&v22);
    if (Val16 != 65505)
    {
      v8 = IIOScanner::getVal16(&v22);
      goto LABEL_6;
    }

    v8 = IIOScanner::getVal16(&v22);
    if (!strncmp(&BytePtr[*(&v23 + 1)], "Exif", 4uLL))
    {
      break;
    }

LABEL_6:
    IIOScanner::skip(&v22, v8 - 2);
    if (Val16 == 65499)
    {
      goto LABEL_7;
    }
  }

  IIOScanner::skip(&v22, 6uLL);
  v11 = *(&v23 + 1);
  v12 = IIOScanner::getVal16(&v22);
  if (v12 == 18761)
  {
    IIOScanner::setEndianness(&v22, 1);
  }

  IIOScanner::skip(&v22, 2uLL);
  Val32 = IIOScanner::getVal32(&v22);
  IIOScanner::seek(&v22, v11 + Val32);
  v14 = IIOScanner::getVal16(&v22);
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = 0;
  while (1)
  {
    IIOScanner::getTiffTag(&v22, &v20);
    v16 = v20 == 274 && WORD1(v20) == 3;
    if (v16 && HIDWORD(v20) == 1)
    {
      break;
    }

    if (v14 <= ++v15)
    {
      goto LABEL_7;
    }
  }

  v18 = __rev16(a3);
  if (BYTE4(v26))
  {
    v19 = a3;
  }

  else
  {
    v19 = v18;
  }

  *&BytePtr[*(&v23 + 1) - 4] = v19;
  v9 = 1;
LABEL_8:
  IIOScanner::~IIOScanner(&v22);
  return v9;
}

void sub_1860D145C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

__CFData *IIOMetadataUpdater::createExifChunkData(IIOMetadataUpdater *this, IIODictionary *a2, uint64_t a3, unsigned int a4)
{
  length = 0;
  ExifBufferFromPropertiesJPEG = CreateExifBufferFromPropertiesJPEG(a2, a3, a4, 0, 0, @"public.jpeg", &length);
  if (!ExifBufferFromPropertiesJPEG)
  {
    return 0;
  }

  v5 = ExifBufferFromPropertiesJPEG;
  if (length < 0x1F)
  {
    v7 = 0;
  }

  else
  {
    length -= 2;
    *(ExifBufferFromPropertiesJPEG + 2) = 1716082789;
    *bytes = bswap32(length - 4);
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    v7 = Mutable;
    if (Mutable)
    {
      CFDataAppendBytes(Mutable, bytes, 4);
      CFDataAppendBytes(v7, v5 + 2, length);
      v8 = crc32(0, 0, 0);
      v10 = bswap32(crc32(v8, v5 + 2, length));
      CFDataAppendBytes(v7, &v10, 4);
    }
  }

  free(v5);
  return v7;
}

uint64_t IIOMetadataUpdater::updatePNGExifData(IIOMetadataUpdater *this, CFDataRef theData, IIODictionary *a3, int a4, char a5)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2000000000;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v18 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!a4 || (a5 & 1) != 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___ZN18IIOMetadataUpdater17updatePNGExifDataEP8__CFDataP13IIODictionarybb_block_invoke;
    v14[3] = &unk_1E6F41DA8;
    v14[4] = v19;
    v14[5] = v17;
    v15 = a4;
    v16 = a5;
    v14[8] = BytePtr;
    v14[9] = theData;
    v14[6] = &v21;
    v14[7] = this;
    v14[10] = a3;
    EnumeratePNGUsingBlock(BytePtr, Length, v14);
    v12 = *(v22 + 24);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);
  return v12 & 1;
}

void sub_1860D16F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

unsigned __int8 *EnumeratePNGUsingBlock(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v9 = 0;
  if (*result == 137)
  {
    v3 = result;
    if (result[1] == 80 && result[2] == 78 && result[3] == 71)
    {
      v5 = 8;
      v6 = a2;
      do
      {
        while (1)
        {
          v8[1] = v5;
          v8[0] = vrev64_s32(vrev32_s8(*&v3[v5]));
          if (!a3)
          {
            break;
          }

          result = (*(a3 + 16))(a3, v8, &v9);
          if (result != -1)
          {
            break;
          }

          if (LODWORD(v8[0]) == 1229278788)
          {
            return result;
          }
        }

        if (v9)
        {
          break;
        }

        v5 += HIDWORD(v8[0]) + 12;
      }

      while (v5 <= v6 && LODWORD(v8[0]) != 1229278788);
    }
  }

  return result;
}

uint64_t ___ZN18IIOMetadataUpdater17updatePNGExifDataEP8__CFDataP13IIODictionarybb_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = 0;
  v7 = *(a1 + 56);
  v8 = *a2;
  if (*a2 > 1700284741)
  {
    if (v8 == 1700284742)
    {
      v31.location = *(a2 + 8);
      v31.length = (*(a2 + 4) + 12);
      CFDataReplaceBytes(*(a1 + 72), v31, 0, 0);
      return 0xFFFFFFFFLL;
    }

    if (v8 == 1700284774)
    {
      v14 = *(a2 + 8);
      v15 = *(a2 + 4);
      MetadataFromDatabuffer = CreateMetadataFromDatabuffer((*(a1 + 64) + v14 + 8), (v15 - 8));
      if (MetadataFromDatabuffer)
      {
        v17 = MetadataFromDatabuffer;
        v32.length = (v15 + 12);
        v32.location = v14;
        CFDataReplaceBytes(*(a1 + 72), v32, 0, 0);
        ObjectForKey = IIODictionary::getObjectForKey(*(a1 + 80), @"kCGImageDestinationMetadata");
        if (ObjectForKey)
        {
          CGImageMetadataMerge(v17, ObjectForKey, 0);
        }

        v19 = CGImagePropertiesCreateFromMetadata(v17);
        if (v19)
        {
          v20 = v19;
          if (IIODictionary::containsKey(*(v7 + 24), @"kCGImageDestinationOrientation"))
          {
            Uint32ForKey = IIODictionary::getUint32ForKey(*(v7 + 24), @"kCGImageDestinationOrientation");
            IIONumber::IIONumber(v28, Uint32ForKey);
            IIODictionary::setObjectForKey(v20, v29, @"Orientation");
            IIONumber::~IIONumber(v28);
          }

          Count = IIODictionary::getCount(v20);
          if (Count)
          {
            ExifChunkData = IIOMetadataUpdater::createExifChunkData(Count, v20, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
            BytePtr = CFDataGetBytePtr(ExifChunkData);
            Length = CFDataGetLength(ExifChunkData);
            v33.location = *(a2 + 8);
            v33.length = 0;
            CFDataReplaceBytes(*(a1 + 72), v33, BytePtr, Length);
            CFRelease(ExifChunkData);
            *(*(*(a1 + 48) + 8) + 24) = 1;
          }

          (*(*v20 + 8))(v20);
        }

        CFRelease(v17);
      }

      goto LABEL_28;
    }

    if (v8 != 1766084436)
    {
      return result;
    }

LABEL_10:
    if ((*(a1 + 88) & 1) == 0 && (*(a1 + 89) & 1) == 0)
    {
      v28[0] = 0;
      v28[1] = 0;
      v29 = 0;
      IIODictionary::IIODictionary(v28);
      if (IIODictionary::containsKey(*(v7 + 24), @"kCGImageDestinationOrientation"))
      {
        v9 = IIODictionary::getUint32ForKey(*(v7 + 24), @"kCGImageDestinationOrientation");
        IIONumber::IIONumber(v26, v9);
        IIODictionary::setObjectForKey(v28, value, @"Orientation");
        IIONumber::~IIONumber(v26);
      }

      v10 = IIODictionary::getCount(v28);
      if (v10)
      {
        v11 = IIOMetadataUpdater::createExifChunkData(v10, v28, *(*(*(a1 + 32) + 8) + 24), *(*(*(a1 + 40) + 8) + 24));
        v12 = CFDataGetBytePtr(v11);
        v13 = CFDataGetLength(v11);
        v30.location = *(a2 + 8);
        v30.length = 0;
        CFDataReplaceBytes(*(a1 + 72), v30, v12, v13);
        CFRelease(v11);
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      IIODictionary::~IIODictionary(v28);
    }

LABEL_28:
    result = 0;
    *a3 = 1;
    return result;
  }

  if (v8 == 1229209940)
  {
    goto LABEL_10;
  }

  if (v8 == 1229472850)
  {
    result = 0;
    if (*(a2 + 4) >= 0xDu)
    {
      *(*(*(a1 + 32) + 8) + 24) = *(*(a1 + 64) + *(a2 + 8) + 8);
      *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 64) + *(a2 + 8) + 12);
      *(*(*(a1 + 32) + 8) + 24) = bswap32(*(*(*(a1 + 32) + 8) + 24));
      *(*(*(a1 + 40) + 8) + 24) = bswap32(*(*(*(a1 + 40) + 8) + 24));
    }
  }

  return result;
}

void sub_1860D1BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

BOOL IIOMetadataUpdater::modifyXMPOnlyFile(IIODictionary **this, __CFError **a2, CGImageMetadata *a3, int a4)
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x2000000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  IIO_InitializeXMPToolkit();
  if (*(this + 39) == 1)
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(this[3], @"kCGImageDestinationOrientation");
    MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithOrientation(this, Uint32ForKey, v10);
  }

  else if (*(this + 38) == 1)
  {
    ObjectForKey = IIODictionary::getObjectForKey(this[3], @"kCGImageDestinationDateTime");
    MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithDateTime(this, ObjectForKey, a2);
  }

  else
  {
    if (*(this + 33) != 1)
    {
      v14 = 0;
      v13 = 0;
      goto LABEL_13;
    }

    MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithMetadata(this, a3, v8);
  }

  v13 = MetadataWithOrientation;
  v14 = MetadataWithOrientation != 0;
  if (a4 == 1347634208 && MetadataWithOrientation)
  {
    TagWithPath = CGImageMetadataGetTagWithPath(MetadataWithOrientation, 0, @"photoshop:DateCreated");
    if (TagWithPath)
    {
      CGImageMetadataSetTagWithPath(v13, 0, @"exif:DateTimeOriginal", TagWithPath);
    }

    v14 = 1;
  }

LABEL_13:
  v16 = IIOImageSource::imageRead(this[1]);
  v17 = IIOImageRead::copyData(v16);
  if (!v17)
  {
    v23 = 0;
    goto LABEL_29;
  }

  MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x1E695E480], 0, v17);
  if (a4 == 1347307296)
  {
    BytePtr = CFDataGetBytePtr(v17);
    Length = CFDataGetLength(v17);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = ___ZN18IIOMetadataUpdater17modifyXMPOnlyFileEPP9__CFErrorP15CGImageMetadataj_block_invoke;
    v29[3] = &unk_1E6F41DD0;
    v29[4] = &v34;
    v29[5] = &v30;
    v29[6] = BytePtr;
    EnumeratePNGUsingBlock(BytePtr, Length, v29);
    v21 = *(v31 + 24);
    v22 = *(v35 + 24);
    if ((v22 & v14 & 1) != 0 && (IIOMetadataUpdater::updatePNGExifData(this, MutableCopy, this[3], *(v31 + 24), 1) & 1) == 0)
    {
      _cg_jpeg_mem_term("modifyXMPOnlyFile", 1319, "*** ERROR: UpdatePNGExifData did not update Exif\n");
    }

    else if (((v21 | v22 ^ 1) & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_23:
    Default_CTor();
  }

  if (a4 == 1347634208)
  {
    goto LABEL_23;
  }

LABEL_24:
  v24 = IIOImageSource::count(this[2]);
  v25 = CFDataGetBytePtr(MutableCopy);
  v26 = CFDataGetLength(MutableCopy);
  v27 = IIOImageWriteSession::putBytes(v24, v25, v26);
  if (v27 != CFDataGetLength(MutableCopy))
  {
    v23 = 0;
    if (!MutableCopy)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = IIOImageWriteSession::finalize(v24, 0) == 0;
  if (MutableCopy)
  {
LABEL_28:
    CFRelease(MutableCopy);
  }

LABEL_29:
  IIO_TerminateXMPToolkit();
  if (v17)
  {
    CFRelease(v17);
  }

  if (v14)
  {
    CFRelease(v13);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  return v23;
}

void sub_1860D2188(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ImageIO_XMP_IO::~ImageIO_XMP_IO(va);
  JUMPOUT(0x1860D2140);
}

void sub_1860D21C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN18IIOMetadataUpdater17modifyXMPOnlyFileEPP9__CFErrorP15CGImageMetadataj_block_invoke(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (*a2 == 1700284742 || v3 == 1700284774)
  {
    v5 = 32;
LABEL_7:
    *(*(*(a1 + v5) + 8) + 24) = 1;
    return 0;
  }

  if (v3 == 1767135348 && a2[1] >= 0x1E && !strncmp((*(a1 + 48) + *(a2 + 1) + 8), "XML:com.adobe.xmp", 0x11uLL))
  {
    v5 = 40;
    goto LABEL_7;
  }

  return 0;
}

uint64_t ___ZN18IIOMetadataUpdater10modifyHEICEP15CGImageMetadataPP9__CFError_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = *(a1 + 32);
  memset(v9, 0, sizeof(v9));
  Value = CFDictionaryGetValue(theDict, @"ImageList");
  v5 = IIOArray::IIOArray(v9, Value);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN18IIOMetadataUpdater10modifyHEICEP15CGImageMetadataPP9__CFError_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_76_0;
  v7[4] = v3;
  v8 = *(a1 + 40);
  IIOArray::enumerate(v5, v7);
  IIOArray::~IIOArray(v9);
  return 0;
}

void ___ZN18IIOMetadataUpdater10modifyHEICEP15CGImageMetadataPP9__CFError_block_invoke_2(uint64_t a1, __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  memset(v17, 0, sizeof(v17));
  IIODictionary::IIODictionary(v17, a2);
  if (*(v3 + 39) != 1)
  {
    if (*(v3 + 38) == 1)
    {
      ObjectForKey = IIODictionary::getObjectForKey(*(v3 + 24), @"kCGImageDestinationDateTime");
      MetadataWithDateTime = IIOMetadataUpdater::createMetadataWithDateTime(v3, ObjectForKey, *(a1 + 40));
    }

    else
    {
      if ((*(v3 + 34) & 1) == 0 && *(v3 + 35) != 1)
      {
        MetadataWithOrientation = 0;
        goto LABEL_14;
      }

      MetadataWithDateTime = IIOMetadataUpdater::createMetadataWithMetadata(v3, *(a1 + 48), v4);
    }

    MetadataWithOrientation = MetadataWithDateTime;
    if (MetadataWithDateTime)
    {
      goto LABEL_10;
    }

LABEL_14:
    v11 = 1;
    goto LABEL_15;
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(*(v3 + 24), @"kCGImageDestinationOrientation");
  IIONumber::IIONumber(&v14, Uint32ForKey);
  IIODictionary::setObjectForKey(v17, &v14, *gIIO_kCMPhotoCompressionContainerDescription_Orientation);
  IIONumber::~IIONumber(&v14);
  MetadataWithOrientation = IIOMetadataUpdater::createMetadataWithOrientation(v3, Uint32ForKey, v6);
  v14 = 0;
  v15 = 0;
  value = 0;
  IIONumber::IIONumber(&v14, Uint32ForKey);
  IIODictionary::setObjectForKey(v17, value, @"Orientation");
  IIODictionary::setObjectForKeyGroup(v17, value, @"Orientation", @"{Exif}");
  IIONumber::~IIONumber(&v14);
  if (!MetadataWithOrientation)
  {
    goto LABEL_14;
  }

LABEL_10:
  TagWithPath = CGImageMetadataGetTagWithPath(MetadataWithOrientation, 0, @"photoshop:DateCreated");
  if (TagWithPath)
  {
    CGImageMetadataSetTagWithPath(MetadataWithOrientation, 0, @"exif:DateTimeOriginal", TagWithPath);
  }

  v11 = 0;
LABEL_15:
  XMPWithEXIFFiltered = CGImageMetadataCreateXMPWithEXIFFiltered(MetadataWithOrientation);
  if (XMPWithEXIFFiltered)
  {
    v14 = 0;
    v15 = 0;
    value = 0;
    IIOArray::IIOArray(&v14);
    IIOArray::addObject(&v14, XMPWithEXIFFiltered);
    IIODictionary::setObjectForKey(v17, v15, *gIIO_kCMPhotoCompressionContainerDescription_XMPMetadata);
    CFRelease(XMPWithEXIFFiltered);
    IIOArray::~IIOArray(&v14);
  }

  if ((*(v3 + 35) & 1) != 0 || (*(v3 + 36) & 1) != 0 || *(v3 + 37) == 1)
  {
    EXIFData = CGImageMetadataCreateEXIFData(MetadataWithOrientation);
    if (EXIFData)
    {
      v14 = 0;
      v15 = 0;
      value = 0;
      IIOArray::IIOArray(&v14);
      IIOArray::addObject(&v14, EXIFData);
      IIODictionary::setObjectForKey(v17, v15, *gIIO_kCMPhotoCompressionContainerDescription_EXIFMetadata);
      CFRelease(EXIFData);
      IIOArray::~IIOArray(&v14);
    }
  }

  if ((v11 & 1) == 0)
  {
    CFRelease(MetadataWithOrientation);
  }

  IIODictionary::~IIODictionary(v17);
}

void sub_1860D25D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIO_Writer::addImageWriteFormats(IIO_Writer *this, CFMutableArrayRef theArray)
{
  v4 = *(this + 10);
  if (v4)
  {
    CFArrayAppendValue(theArray, @"kCGImageDestinationCanRGB");
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  CFArrayAppendValue(theArray, @"kCGImageDestinationCanCMYK");
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCanGray");
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCanLab");
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCanRGBIdx");
  if ((v4 & 0x40000) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCanICC");
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCan1BPS");
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCan2BPS");
  if ((v4 & 0x400) == 0)
  {
LABEL_10:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_31:
  CFArrayAppendValue(theArray, @"kCGImageDestinationCan4BPS");
  if ((v4 & 0x800) != 0)
  {
LABEL_11:
    CFArrayAppendValue(theArray, @"kCGImageDestinationCan8BPS");
  }

LABEL_12:
  if ((v4 & 0x5000) != 0)
  {
    CFArrayAppendValue(theArray, @"kCGImageDestinationCan16BPS");
  }

  if ((v4 & 0x10000) != 0)
  {
    CFArrayAppendValue(theArray, @"kCGImageDestinationCan16fBPS");
  }

  if ((v4 & 0xA000) != 0)
  {
    CFArrayAppendValue(theArray, @"kCGImageDestinationCan32fBPS");
  }

  if ((v4 & 0x1E000000) != 0)
  {
    CFArrayAppendValue(theArray, @"kCGImageDestinationCanAlpha");
  }

  if (*(this + 4) == -1)
  {
    CFArrayAppendValue(theArray, @"kCGImageDestinationCanMultiPage");
    if ((v4 & 0x20000) == 0)
    {
      return;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    return;
  }

  CFArrayAppendValue(theArray, @"kCGImageDestinationCanWriteOrientation");
}

uint64_t _cg_png_read_frame_head(uint64_t result, _DWORD *a2)
{
  v2 = result;
  if ((*(result + 78) & 1) == 0)
  {
    v10 = "attempt to png_read_frame_head() but no acTL present";
    goto LABEL_20;
  }

  if (!*(result + 936))
  {
    return result;
  }

  png_read_reset(result);
  v4 = 0;
  *(v2 + 76) = vand_s8(*(v2 + 76), 0xFFFFFFBFFFFDFFFFLL);
  while (1)
  {
    chunk_header = _cg_png_read_chunk_header(v2);
    v6 = *(v2 + 312);
    if (v6 == 1717846356)
    {
      break;
    }

    if (v6 == 1717785676)
    {
      png_handle_fcTL(v2, a2, chunk_header);
      v4 = 1;
    }

    else if (v6 == 1229209940)
    {
      if (v4 || *(v2 + 936) >= 2u)
      {
        v10 = "png_read_frame_head(): out of place IDAT";
        goto LABEL_20;
      }

      v8 = v2;
      v7 = chunk_header;
LABEL_14:
      png_crc_finish(v8, v7);
      v4 = 0;
    }

    else
    {
      png_warning(v2, "Skipped (ignored) a chunk between APNG chunks");
      png_crc_finish(v2, chunk_header);
    }
  }

  result = png_ensure_sequence_number(v2, chunk_header);
  if (!v4 && *(v2 + 936) >= 2u)
  {
    v7 = (chunk_header - 4);
    v8 = v2;
    goto LABEL_14;
  }

  v9 = *(v2 + 76);
  if ((v9 & 0x20000) == 0)
  {
    v10 = "png_read_frame_head(): out of place fdAT";
LABEL_20:
    _cg_png_error(v2, v10);
  }

  *(v2 + 392) = chunk_header - 4;
  *(v2 + 76) = v9 | 4;
  return result;
}

uint64_t png_start_read_image(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 80) & 0x40) != 0)
    {
      return png_app_error(a1, "png_start_read_image/png_read_update_info: duplicate call");
    }

    else
    {
      return png_read_start_row(a1);
    }
  }

  return a1;
}

void _cg_png_read_row(uLong a1, char *a2, char *__dst)
{
  v3 = *(a1 + 434);
  v4 = *(a1 + 304);
  v5 = v3 >= 8;
  v6 = v4 * (v3 >> 3);
  if (!v5)
  {
    v6 = (v4 * *(a1 + 434) + 7) >> 3;
  }

  if (__dst)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (!a2)
  {
    v6 = 0;
  }

  png_read_row_indexed(a1, a2, &a2[v6], __dst, &__dst[v7]);
}

void png_read_image_sized(uLong a1, char **a2, int a3)
{
  if (a1)
  {
    v6 = *(a1 + 434);
    v7 = *(a1 + 304);
    v8 = v6 >= 8;
    v9 = v7 * (v6 >> 3);
    v10 = v8 ? v9 : (v7 * *(a1 + 434) + 7) >> 3;
    if ((*(a1 + 80) & 0x40) != 0)
    {
      if (*(a1 + 428) && (*(a1 + 88) & 2) == 0)
      {
        png_warning(a1, "Interlace handling should be turned on when using png_read_image");
        *(a1 + 288) = *(a1 + 284);
      }

      v11 = _cg_png_set_interlace_handling(a1);
    }

    else
    {
      v11 = _cg_png_set_interlace_handling(a1);
      png_start_read_image(a1);
    }

    if (v11 >= 1)
    {
      v12 = 0;
      while (!a3)
      {
LABEL_20:
        if (++v12 == v11)
        {
          return;
        }
      }

      v13 = a3;
      v14 = a2;
      while (v14 >= a2)
      {
        v15 = v14 + 1;
        if (v14 + 1 > &a2[a3])
        {
          break;
        }

        if (v14 > v15)
        {
          break;
        }

        v16 = &(*v14)[v10];
        if (*v14 > v16)
        {
          break;
        }

        png_read_row_indexed(a1, *v14, v16, 0, 0);
        v14 = v15;
        if (!--v13)
        {
          goto LABEL_20;
        }
      }

      __break(0x5519u);
    }
  }
}

void png_read_image(uLong a1, char **a2)
{
  v2 = *(a1 + 284);
  if (&a2[v2] < a2)
  {
    __break(0x5519u);
  }

  else
  {
    png_read_image_sized(a1, a2, v2);
  }
}

void *RADReadPlugin::RADReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4DDD90;
  return result;
}

void RADReadPlugin::~RADReadPlugin(RADReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t RADReadPlugin::loadDataFromXPCObject(RADReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_rad", &length);
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

uint64_t RADReadPlugin::saveDataToXPCObject(RADReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_rad", this + 464, 1uLL);
  }

  return v4;
}

uint64_t RADReadPlugin::initialize(IIODictionary **this, IIODictionary *a2)
{
  v18 = 0;
  BoolForKey = IIODictionary::getBoolForKey(this[6], @"kCGImageSourceShouldAllowFloat");
  if (*(this + 369) != 1 || (v4 = BoolForKey, (FILE = IIOImageReadSession::createFILE(this[3])) == 0))
  {
    v16 = 4294967246;
LABEL_17:
    kdebug_trace();
    return v16;
  }

  v6 = FILE;
  v7 = _cg_RadReadRGBSize(FILE, &v18 + 1, &v18);
  if (v7)
  {
    v16 = v7;
    fclose(v6);
    goto LABEL_17;
  }

  if (v4)
  {
    v8 = 32;
  }

  else
  {
    v8 = 16;
  }

  if (v4)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  *(this + 128) = v8;
  *(this + 373) = 1;
  *(this + 263) = v9;
  v11 = v18;
  v10 = HIDWORD(v18);
  *(this + 61) = HIDWORD(v18);
  *(this + 62) = v11;
  *(this + 129) = 4 * v8;
  if (v4)
  {
    v12 = 7;
  }

  else
  {
    v12 = 6;
  }

  v13 = v10 << v12;
  v14 = v13 | 7;
  v15 = v13 | 8;
  if (v14 >= 0)
  {
    v15 = v14;
  }

  *(this + 63) = v15 >> 3;
  *(this + 85) = 1380401696;
  this[20] = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
  *(this + 262) = 5;
  *(this + 374) = 0;
  *(this + 372) = 1;
  this[49] = 1;
  *(this + 130) = *(this + 129) / *(this + 128);
  *(this + 204) = 1;
  fclose(v6);
  return 0;
}

uint64_t RADReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

void IIO_Reader_PBM::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t IIO_Reader_PBM::testHeader(int a1, unsigned __int8 *a2, unsigned int a3)
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  IIOScanner::IIOScanner(v12, a2, a3, 0);
  Val8 = IIOScanner::getVal8(v12);
  v4 = IIOScanner::getVal8(v12);
  v5 = v4;
  v7 = Val8 == 42 && v4 == 23;
  if (Val8 == 80 && ((v4 - 49) < 7 || v4 == 102 || v4 == 70))
  {
    *(&v13 + 1) = GetPBMLookupTable();
    v8 = IIOScanner::lookupVal8(v12);
    if ((v8 & 0xFFFFFFFE) == 0xFFFFFFFC)
    {
      while ((v8 & 0xFE) == 0xFC)
      {
        LOBYTE(v8) = IIOScanner::lookupVal8(v12);
      }

      while (v8 == 254)
      {
          ;
        }

        LOBYTE(v8) = IIOScanner::lookupVal8(v12);
      }

      v10 = (v8 & 0x80u) == 0 || v5 == 55;
      v7 |= v10;
    }
  }

  IIOScanner::~IIOScanner(v12);
  return v7 & 1;
}

void sub_1860D30D0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860D309CLL);
}

uint64_t IIO_Reader_PBM::compareOptions(IIO_Reader_PBM *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v16, 0, sizeof(v16));
  IIODictionary::IIODictionary(v16, a2);
  memset(v15, 0, sizeof(v15));
  IIODictionary::IIODictionary(v15, a3);
  Uint32ForKey = IIODictionary::getUint32ForKey(v16, @"kCGImageSourceSubsampleFactor");
  v6 = IIODictionary::getUint32ForKey(v15, @"kCGImageSourceSubsampleFactor");
  if (Uint32ForKey <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = Uint32ForKey;
  }

  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v7 == v8)
  {
    Value = CFDictionaryGetValue(a2, @"kCGImageSourceDecodeRequest");
    v10 = CFDictionaryGetValue(a3, @"kCGImageSourceDecodeRequest");
    if (Value)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v13 = (Value | v10) == 0;
    }

    else
    {
      v13 = CFStringCompare(Value, v10, 0) == kCFCompareEqualTo;
    }

    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  IIODictionary::~IIODictionary(v15);
  IIODictionary::~IIODictionary(v16);
  return v12;
}

void sub_1860D3210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  IIODictionary::~IIODictionary(&a9);
  IIODictionary::~IIODictionary(&a12);
  _Unwind_Resume(a1);
}

uint64_t ImageIOPixelConverter::extractInfo(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 <= 0x18)
  {
    v2 = dword_18622774C[v1];
    v3 = byte_1862277B0[v1];
    v4 = byte_1862277C9[v1];
    *(this + 44) = v2;
    *(this + 41) = v3;
    *(this + 48) = v4;
  }

  v5 = *(this + 49);
  if (v5 <= 0x18)
  {
    v6 = byte_1862277B0[v5];
    v7 = byte_1862277C9[v5];
    *(this + 60) = dword_18622774C[v5];
    *(this + 56) = v6;
    *(this + 64) = v7;
  }

  *(this + 68) = 0;
  if (*(this + 41) == 3)
  {
    v8 = *(this + 64);
    if (*(this + 60) == 4)
    {
      v8 |= 2u;
    }

    if (*(this + 48))
    {
      v8 |= 4u;
    }

LABEL_10:
    *(this + 68) = v8 | 8;
    return this;
  }

  if (*(this + 56) == 4)
  {
    v8 = *(this + 64);
    if (v8 == 1)
    {
      *(this + 68) = 1;
    }

    else
    {
      v8 = 0;
    }

    if (*(this + 60) == 4)
    {
      v8 |= 2u;
      *(this + 68) = v8;
    }

    if (*(this + 48) == 1)
    {
      v8 |= 4u;
      *(this + 68) = v8;
    }

    if (*(this + 44) == 4)
    {
      goto LABEL_10;
    }
  }

  return this;
}

void ImageIOPixelConverter::~ImageIOPixelConverter(ImageIOPixelConverter *this)
{
  *this = &unk_1EF4DE010;
  v1 = *(this + 1);
  if (v1)
  {
    vImageConverter_Release(v1);
  }
}

const char *PixelTypeStr(char a1)
{
  if ((a1 + 1) > 0x11u)
  {
    return "???";
  }

  else
  {
    return off_1E6F41E30[(a1 + 1)];
  }
}

uint64_t ImageIOPixelConverter::convertAnyToAny(ImageIOPixelConverter *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  rowBytes = a3->rowBytes;
  data = a3->data;
  height = a3->height;
  v6 = *(this + 41);
  v7 = *(this + 56);
  if (v6 != v7 && v6 + 1 != v7)
  {
    _cg_jpeg_mem_term("convertAnyToAny", 278, "*** unsupported src/dst channel combination: src: %d  dst: %d\n", v6, v7);
LABEL_9:
    memset(data, 255, height * rowBytes);
    return -1;
  }

  v9 = a2->data;
  v10 = *(this + 13);
  v11 = *(this + 37);
  v12 = v10 & 0xFF00;
  if (v11 > 8)
  {
    if (v11 > 0x10)
    {
      if (v12 != 0x2000)
      {
        goto LABEL_9;
      }

      v14 = 32;
    }

    else
    {
      if (v12 != 4096)
      {
        goto LABEL_9;
      }

      v14 = 16;
    }

    v13 = *(this + 37);
  }

  else
  {
    if (v12 != 2048)
    {
      goto LABEL_9;
    }

    v13 = 2 * v11 - 8;
    v14 = 8;
  }

  v16 = v14 - v11;
  if (*(this + 17) == 4)
  {
    v16 = 0;
    v13 = 0;
  }

  v17 = a2->height;
  if (!v17)
  {
    return 0;
  }

  v18 = 0;
  width = a2->width;
  v20 = *(this + 41);
  v21 = width;
  do
  {
    if (!v21)
    {
      goto LABEL_58;
    }

    v22 = 0;
    v23 = data + a3->rowBytes * v18;
    v24 = &v9[a2->rowBytes * v18];
    v25 = 7;
    do
    {
      if (!v20)
      {
        goto LABEL_56;
      }

      for (i = 0; i < v20; ++i)
      {
        v27 = v20 - 1;
        v29 = v6 != v7 && i == v27;
        if (v11)
        {
          v30 = 0;
          v31 = v11;
          do
          {
            v32 = (*v24 >> v25) & 1 | (2 * v30);
            v33 = __OFSUB__(v25--, 1);
            if (v25 < 0 != v33)
            {
              v25 = 7;
              ++v24;
            }

            v30 = v32;
            --v31;
          }

          while (v31);
        }

        else
        {
          v32 = 0;
        }

        v34 = bswap32(v32) >> 8;
        if (v11 != 24)
        {
          v34 = v32;
        }

        v35 = (v34 << v16 >> v13) | (v34 << v16);
        switch(BYTE1(v10))
        {
          case 0x20u:
            v38 = bswap32(v35);
            if (v11 != 32)
            {
              v38 = v35;
            }

            *v23 = v38;
            v37 = v23 + 4;
            if (v29)
            {
              *(v23 + 4) = -1;
              v23 += 8;
              break;
            }

            goto LABEL_52;
          case 0x10u:
            v36 = bswap32(v35) >> 16;
            if (v11 != 16)
            {
              LOWORD(v36) = v35;
            }

            *v23 = v36;
            v37 = v23 + 2;
            if (v29)
            {
              *(v23 + 2) = -1;
              v23 += 4;
              break;
            }

LABEL_52:
            v23 = v37;
            break;
          case 8u:
            *v23 = v35;
            if (v29)
            {
              *(v23 + 1) = -1;
              v23 += 2;
            }

            else
            {
              ++v23;
            }

            break;
        }

        v20 = *(this + 41);
      }

      width = a2->width;
LABEL_56:
      ++v22;
    }

    while (v22 < width);
    v17 = a2->height;
    v21 = width;
LABEL_58:
    ++v18;
  }

  while (v18 < v17);
  return 0;
}

uint64_t ImageIOPixelConverter::CreatePixelConverter(int *a1)
{
  v1 = *a1;
  if (*a1 <= 1)
  {
    if (!v1)
    {
      operator new();
    }

    if (v1 == 1)
    {
      operator new();
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        operator new();
      case 3:
        operator new();
      case 5:
        operator new();
    }
  }

  return 0;
}

uint64_t IIOPixelConverterGray::IIOPixelConverterGray(uint64_t a1, char a2, char a3, uint32_t a4, int a5, char a6, uint32_t a7, char a8, uint64_t a9)
{
  return IIOPixelConverterGray::IIOPixelConverterGray(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  *(a1 + 72) = 0;
  error = 0;
  *a1 = &unk_1EF4DE070;
  *(a1 + 8) = 0;
  *(a1 + 32) = a2;
  *(a1 + 49) = a6;
  *(a1 + 24) = a9;
  *(a1 + 17) = 0;
  *(a1 + 65) = a8;
  *(a1 + 40) = a3;
  *(a1 + 36) = a5 | (a4 << 8);
  if (a5)
  {
    v12 = a7;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 52) = v12 | (a7 << 8);
  ImageIOPixelConverter::extractInfo(a1);
  if (*(a1 + 32) == *(a1 + 49) && *(a1 + 36) == *(a1 + 52))
  {
    *(a1 + 16) = 0;
    return a1;
  }

  *(a1 + 16) = 1;
  v23 = 0;
  v24 = 0;
  IIOColorSpace::IIOColorSpace(&v23, *MEMORY[0x1E695F128]);
  v13 = *(a1 + 41) * a4;
  srcFormat.bitsPerComponent = a4;
  srcFormat.bitsPerPixel = v13;
  v14 = *(a1 + 44);
  srcFormat.colorSpace = v24;
  memset(&srcFormat.version, 0, 20);
  srcFormat.bitmapInfo = v14;
  memset(&destFormat.bitmapInfo, 0, 24);
  v15 = *(a1 + 56) * a7;
  destFormat.bitsPerComponent = a7;
  destFormat.bitsPerPixel = v15;
  v16 = *(a1 + 60);
  destFormat.bitmapInfo = v16;
  if (a7 == 16)
  {
    v17 = 4096;
  }

  else
  {
    if (a7 != 32)
    {
      goto LABEL_12;
    }

    v17 = 0x2000;
  }

  destFormat.bitmapInfo = v16 | v17;
LABEL_12:
  destFormat.colorSpace = v24;
  v18 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
  *(a1 + 8) = v18;
  if (!v18 || error)
  {
    v19 = IIO_vImageErrorString(error);
    _cg_jpeg_mem_term("IIOPixelConverterGray", 869, "*** IIOPixelConverterGray could not create vImageConverter '%s'\n", v19);
  }

  IIOColorSpace::~IIOColorSpace(&v23);
  return a1;
}

uint64_t IIOPixelConverterRGB::IIOPixelConverterRGB(uint64_t a1, char a2, char a3, uint32_t a4, int a5, int a6, int a7, char a8, unsigned __int8 a9, char a10, uint64_t a11)
{
  return IIOPixelConverterRGB::IIOPixelConverterRGB(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

{
  *(a1 + 72) = 0;
  error = 0;
  *a1 = &unk_1EF4DE0A0;
  *(a1 + 8) = 0;
  *(a1 + 32) = a2;
  *(a1 + 49) = a8;
  *(a1 + 24) = a11;
  *(a1 + 17) = 1;
  *(a1 + 65) = a10;
  *(a1 + 40) = a3;
  *(a1 + 36) = (a4 << 24) | (a5 << 16) | (a6 << 8) | a7;
  if (a7)
  {
    v13 = a9;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 52) = (16843008 * a9) | v13;
  *(a1 + 73) = 0;
  ImageIOPixelConverter::extractInfo(a1);
  v14 = *(a1 + 36);
  if (v14 <= 134744318)
  {
    if (v14 != 84215041)
    {
      v15 = 84280831;
      goto LABEL_9;
    }

LABEL_10:
    *(a1 + 16) = 0;
    return a1;
  }

  if (v14 == 168430082)
  {
    goto LABEL_10;
  }

  v15 = 134744319;
LABEL_9:
  if (v14 == v15)
  {
    goto LABEL_10;
  }

  *(a1 + 16) = 1;
  if (v14 == 134744072 && *(a1 + 52) == 134744072)
  {
    v17 = *(a1 + 32);
    if (v17 > 3)
    {
      if (v17 == 4)
      {
        *(a1 + 73) = 1;
        if ((*(a1 + 49) - 2) >= 4u)
        {
          goto LABEL_28;
        }

        v18 = (*(a1 + 49) - 2) | 8;
        goto LABEL_27;
      }

      if (v17 == 5)
      {
        *(a1 + 73) = 1;
        if ((*(a1 + 49) - 2) < 4u)
        {
          v18 = (*(a1 + 49) - 2) | 0xC;
          goto LABEL_27;
        }
      }
    }

    else if (v17 == 2)
    {
      *(a1 + 73) = 1;
      v18 = *(a1 + 49) - 2;
      if (v18 < 4u)
      {
        goto LABEL_27;
      }
    }

    else if (v17 == 3)
    {
      *(a1 + 73) = 1;
      if ((*(a1 + 49) - 2) < 4u)
      {
        v18 = (*(a1 + 49) - 2) | 4;
LABEL_27:
        *(a1 + 68) = v18;
      }
    }
  }

LABEL_28:
  if (*(a1 + 73) == 1)
  {
    goto LABEL_10;
  }

  memset(&srcFormat.colorSpace, 0, 32);
  v19 = *(a1 + 41);
  srcFormat.bitsPerComponent = a4;
  srcFormat.bitsPerPixel = v19 * a4;
  v20 = *(a1 + 44);
  srcFormat.bitmapInfo = v20;
  v21 = a4 == 8 && v19 == 4;
  v22 = !v21;
  if (v21)
  {
    v23 = 0x4000;
  }

  else
  {
    if (a4 != 16)
    {
      v22 = 0;
      goto LABEL_43;
    }

    srcFormat.bitmapInfo = v20 | 0x1000;
    if (*(a1 + 32) != 22)
    {
      v22 = 1;
      goto LABEL_43;
    }

    v23 = 4352;
  }

  srcFormat.bitmapInfo = v20 | v23;
LABEL_43:
  memset(&destFormat.colorSpace, 0, 32);
  v24 = *(a1 + 56);
  destFormat.bitsPerComponent = a9;
  destFormat.bitsPerPixel = v24 * a9;
  v25 = *(a1 + 60);
  destFormat.bitmapInfo = v25;
  if (a9 == 8 && v24 == 4)
  {
    if ((*(a1 + 49) - 2) >= 4u)
    {
      v26 = 0x4000;
    }

    else
    {
      v26 = dword_1862277F0[(*(a1 + 49) - 2)];
    }
  }

  else if (a9 == 16)
  {
    v26 = 4096;
  }

  else
  {
    if (a9 != 32)
    {
      goto LABEL_53;
    }

    v26 = 0x2000;
  }

  v25 |= v26;
  destFormat.bitmapInfo = v25;
LABEL_53:
  if (v22 && *(a1 + 49) == 22)
  {
    destFormat.bitmapInfo = v25 | 0x100;
  }

  v27 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
  *(a1 + 8) = v27;
  if (!v27 || error)
  {
    v28 = IIO_vImageErrorString(error);
    _cg_jpeg_mem_term("IIOPixelConverterRGB", 1078, "*** IIOPixelConverterRGB could not create vImageConverter '%s'\n", v28);
  }

  return a1;
}

uint64_t ImageIOPixelConverter::ExpandRGB888ToARGB8888(ImageIOPixelConverter *this, unint64_t a2, unsigned int a3, int a4, unsigned int a5)
{
  result = 4294967246;
  if (a5 >= 4 * a3)
  {
    v8 = a4;
    if (a5 * a4 <= a2)
    {
      v10 = 3 * a3;
      v11 = malloc_type_malloc(v10, 0x100004077774924uLL);
      if (v11)
      {
        v12 = v11;
        v16.data = v11;
        v16.height = 1;
        v16.width = a3;
        v16.rowBytes = v10;
        v15.height = 1;
        v15.width = a3;
        v15.rowBytes = a5;
        if (v8)
        {
          v13 = (v8 - 1) * a5;
          v14 = (v8 - 1) * v10;
          do
          {
            memcpy(v12, this + v14, v10);
            v15.data = this + v13;
            vImageConvert_RGB888toBGRA8888(&v16, 0, 0xFFu, &v15, 0, 0x10u);
            v14 -= v10;
            v13 -= a5;
            --v8;
          }

          while (v8);
        }

        free(v12);
        return 0;
      }

      else
      {
        return 4294967246;
      }
    }
  }

  return result;
}

uint64_t ImageIOPixelConverter::AdjustRowBytes(ImageIOPixelConverter *this, unint64_t a2, int a3, int a4, size_t __len, unsigned int a6)
{
  v6 = 4294967246;
  if (__len >= 4 * a3 && a6 > __len)
  {
    v7 = a4;
    if (a6 * a4 <= a2)
    {
      if (a4)
      {
        v8 = this + (a4 - 1) * a6;
        v9 = __len;
        v10 = this + ((a4 - 1) * __len);
        v11 = -__len;
        v12 = -a6;
        do
        {
          memmove(v8, v10, v9);
          v10 += v11;
          v8 += v12;
          --v7;
        }

        while (v7);
      }

      return 0;
    }
  }

  return v6;
}

uint64_t IIOPixelConverterIndexed::IIOPixelConverterIndexed(uint64_t a1, char a2, char a3, uint32_t a4, char a5, uint32_t a6, char a7, uint64_t a8)
{
  *(a1 + 72) = 0;
  error = 0;
  *a1 = &unk_1EF4DE040;
  *(a1 + 8) = 0;
  *(a1 + 32) = a2;
  *(a1 + 49) = a5;
  *(a1 + 24) = a8;
  *(a1 + 17) = 4;
  *(a1 + 65) = a7;
  *(a1 + 40) = a3;
  *(a1 + 36) = a4 << 8;
  *(a1 + 52) = a6 << 8;
  ImageIOPixelConverter::extractInfo(a1);
  if (*(a1 + 32) == *(a1 + 49) && *(a1 + 36) == *(a1 + 52) || (a5 & 0xFE) == 0xC)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    *(a1 + 16) = 1;
    v21 = 0;
    v22 = 0;
    IIOColorSpace::IIOColorSpace(&v21, *MEMORY[0x1E695F1C0]);
    v12 = *(a1 + 41) * a4;
    srcFormat.bitsPerComponent = a4;
    srcFormat.bitsPerPixel = v12;
    v13 = *(a1 + 44);
    srcFormat.colorSpace = v22;
    memset(&srcFormat.version, 0, 20);
    srcFormat.bitmapInfo = v13;
    v14 = *(a1 + 56) * a6;
    destFormat.bitsPerComponent = a6;
    destFormat.bitsPerPixel = v14;
    v15 = *(a1 + 60);
    destFormat.colorSpace = v22;
    memset(&destFormat.version, 0, 20);
    destFormat.bitmapInfo = v15;
    v16 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
    *(a1 + 8) = v16;
    if (!v16 || error)
    {
      v17 = IIO_vImageErrorString(error);
      _cg_jpeg_mem_term("IIOPixelConverterIndexed", 550, "*** IIOPixelConverterIndexed could not create vImageConverter '%s'\n", v17);
    }

    IIOColorSpace::~IIOColorSpace(&v21);
  }

  return a1;
}

void IIOPixelConverterIndexed::~IIOPixelConverterIndexed(IIOPixelConverterIndexed *this)
{
  ImageIOPixelConverter::~ImageIOPixelConverter(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOPixelConverterIndexed::convertRow(IIOPixelConverterIndexed *this, unsigned __int8 *a2, unsigned __int8 *__dst, unsigned int a4)
{
  v5 = *(this + 9);
  HIDWORD(v7) = v5 - 256;
  LODWORD(v7) = v5 - 256;
  v6 = v7 >> 8;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      if (a4 + 1 >= 2)
      {
        v12 = (a4 + 1) >> 1;
        do
        {
          v13 = *a2++;
          *__dst = v13 >> 4;
          __dst[1] = v13 & 0xF;
          __dst += 2;
          --v12;
        }

        while (v12);
      }

      return 0;
    }

    if (v6 == 7)
    {
      if (*(this + 11))
      {
        v8 = 2 * a4;
      }

      else
      {
        v8 = a4;
      }

      memcpy(__dst, a2, v8);
      return 0;
    }
  }

  else
  {
    if (!v6)
    {
      IIOPixelConverterIndexed::expandIndex1to8(this, a2, __dst, a4);
      return 0;
    }

    if (v6 == 1)
    {
      IIOPixelConverterIndexed::expandIndex2to8(this, a2, __dst, a4);
      return 0;
    }
  }

  v9 = (BYTE1(v5) * a4 * *(this + 41)) >> 3;
  v10 = (*(this + 53) * a4 * *(this + 56)) >> 3;
  v15.data = a2;
  v15.height = 1;
  v15.width = a4;
  v15.rowBytes = v9;
  v14.data = __dst;
  v14.height = 1;
  v14.width = a4;
  v14.rowBytes = v10;
  if ((*(this + 72) & 1) == 0)
  {
    _cg_jpeg_mem_term("convertRow", 607, "🔺  check 'convertAnyToAny' usage: _srcBits: %08X not handled\n", v5);
    *(this + 72) = 1;
  }

  return ImageIOPixelConverter::convertAnyToAny(this, &v15, &v14);
}

uint64_t IIOPixelConverterIndexed::expandIndex1to8(IIOPixelConverterIndexed *this, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  v4 = a4 + 3;
  if ((a4 + 3) >= 8)
  {
    v5 = v4 >> 3;
    do
    {
      v6 = *a2++;
      v7 = _LUT_INDEX[v6 & 0xF];
      *a3 = *(_LUT_INDEX + ((v6 >> 2) & 0x3C));
      *(a3 + 1) = v7;
      a3 += 8;
      --v5;
    }

    while (v5);
  }

  if ((v4 & 4) != 0)
  {
    *a3 = *(_LUT_INDEX + ((*a2 >> 2) & 0x3C));
  }

  return 0;
}

uint64_t IIOPixelConverterIndexed::expandIndex2to8(IIOPixelConverterIndexed *this, unsigned __int8 *a2, unsigned __int8 *a3, int a4)
{
  if ((a4 + 3) >= 4)
  {
    v4 = (a4 + 3) >> 2;
    do
    {
      v5 = *a2++;
      *a3 = IIOPixelConverterIndexed::expandIndex2to8(unsigned char *,unsigned char *,unsigned int)::_LUT2_4[v5 >> 6];
      a3[1] = IIOPixelConverterIndexed::expandIndex2to8(unsigned char *,unsigned char *,unsigned int)::_LUT2_4[(v5 >> 4) & 3];
      a3[2] = IIOPixelConverterIndexed::expandIndex2to8(unsigned char *,unsigned char *,unsigned int)::_LUT2_4[(v5 >> 2) & 3];
      a3[3] = IIOPixelConverterIndexed::expandIndex2to8(unsigned char *,unsigned char *,unsigned int)::_LUT2_4[v5 & 3];
      a3 += 4;
      --v4;
    }

    while (v4);
  }

  return 0;
}

void IIOPixelConverterGray::~IIOPixelConverterGray(IIOPixelConverterGray *this)
{
  ImageIOPixelConverter::~ImageIOPixelConverter(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOPixelConverterGray::convert(IIOPixelConverterGray *this, vImage_Buffer *srcs, vImage_Buffer *dests)
{
  if (__PAIR64__(*(this + 9), *(this + 32)) == __PAIR64__(*(this + 13), *(this + 49)))
  {
    data = srcs->data;
    rowBytes = srcs->rowBytes;
    if (rowBytes >= dests->rowBytes)
    {
      rowBytes = dests->rowBytes;
    }

    memcpy(dests->data, data, rowBytes * dests->height);
  }

  else
  {
    v8 = *(this + 1);
    if (v8)
    {
      v9 = iio_vImageConvert_AnyToAny(v8, srcs, dests, 0, 0);
      if (!v9)
      {
        goto LABEL_9;
      }

      v10 = IIO_vImageErrorString(v9);
      _cg_jpeg_mem_term("convert", 895, "*** vImageConvert_AnyToAny: %s\n", v10);
    }

    _cg_jpeg_mem_term("convert", 899, "   falling back to own convertAnyToAny [Gray]\n");
    ImageIOPixelConverter::convertAnyToAny(this, srcs, dests);
  }

LABEL_9:
  if (*(this + 65) == 1)
  {
    v11 = *&dests->width;
    *&dest.data = *&dests->data;
    *&dest.width = v11;
    vImageByteSwap_Planar16U(&dest, &dest, 0x10u);
  }

  return 0;
}

uint64_t IIOPixelConverterGray::convertRow(IIOPixelConverterGray *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = (*(this + 37) * a4 * *(this + 41)) >> 3;
  v5 = (*(this + 53) * a4 * *(this + 56)) >> 3;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a4;
  v8[3] = v4;
  v7[0] = a3;
  v7[1] = 1;
  v7[2] = a4;
  v7[3] = v5;
  return (*(*this + 16))(this, v8, v7);
}

void IIOPixelConverterRGB::~IIOPixelConverterRGB(IIOPixelConverterRGB *this)
{
  ImageIOPixelConverter::~ImageIOPixelConverter(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOPixelConverterRGB::convertRow(IIOPixelConverterRGB *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = *(this + 37);
  v5 = *(this + 40);
  if (v5 <= *(this + 41))
  {
    v5 = *(this + 41);
  }

  v6 = (*(this + 53) * a4 * *(this + 56)) >> 3;
  v9[0] = a2;
  v9[1] = 1;
  v9[2] = a4;
  v9[3] = (v4 * a4 * v5) >> 3;
  v8[0] = a3;
  v8[1] = 1;
  v8[2] = a4;
  v8[3] = v6;
  return (*(*this + 16))(this, v9, v8);
}

uint64_t IIOPixelConverterLab::IIOPixelConverterLab(uint64_t a1, char a2, char a3, uint32_t a4, int a5, char a6, uint32_t a7, char a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 72) = 0;
  error = 0;
  *a1 = &unk_1EF4DE0D0;
  *(a1 + 8) = 0;
  *(a1 + 32) = a2;
  *(a1 + 49) = a6;
  *(a1 + 24) = a10;
  *(a1 + 17) = 3;
  *(a1 + 65) = a8;
  *(a1 + 40) = a3;
  *(a1 + 36) = (16843008 * a4) | a5;
  if (a5)
  {
    v13 = a7;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 52) = (16843008 * a7) | v13;
  ImageIOPixelConverter::extractInfo(a1);
  *(a1 + 16) = 1;
  if (*(a1 + 32) == *(a1 + 49) && *(a1 + 36) == *(a1 + 52))
  {
    *(a1 + 16) = 0;
  }

  else
  {
    memset(&srcFormat.colorSpace, 0, 32);
    v14 = *(a1 + 41);
    v15 = v14 == 4;
    srcFormat.bitsPerComponent = a4;
    srcFormat.bitsPerPixel = v14 * a4;
    v16 = *(a1 + 44);
    v17 = a4 == 8;
    if (v17 && v15)
    {
      v16 |= 0x4000u;
    }

    srcFormat.bitmapInfo = v16;
    memset(&destFormat.colorSpace, 0, 32);
    v18 = *(a1 + 56);
    destFormat.bitsPerComponent = a7;
    destFormat.bitsPerPixel = v18 * a7;
    v20 = a7 == 8 && v18 == 4;
    if (v17 && v20)
    {
      v21 = *(a1 + 60) | 0x4000;
    }

    else
    {
      v21 = *(a1 + 60);
    }

    destFormat.bitmapInfo = v21;
    v22 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
    *(a1 + 8) = v22;
    if (!v22 || error)
    {
      v23 = IIO_vImageErrorString(error);
      _cg_jpeg_mem_term("IIOPixelConverterLab", 1335, "*** IIOPixelConverterLab could not create vImageConverter '%s'\n", v23);
    }
  }

  return a1;
}

void IIOPixelConverterLab::~IIOPixelConverterLab(IIOPixelConverterLab *this)
{
  ImageIOPixelConverter::~ImageIOPixelConverter(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOPixelConverterLab::convert(IIOPixelConverterLab *this, vImage_Buffer *srcs, vImage_Buffer *dests)
{
  if (__PAIR64__(*(this + 9), *(this + 32)) == __PAIR64__(*(this + 13), *(this + 49)))
  {
    data = srcs->data;
    rowBytes = srcs->rowBytes;
    if (rowBytes >= dests->rowBytes)
    {
      rowBytes = dests->rowBytes;
    }

    memcpy(dests->data, data, rowBytes * dests->height);
    height = dests->height;
    if (*(this + 39) == 8)
    {
      if (height)
      {
        v9 = 0;
        v10 = 0;
        width = dests->width;
        do
        {
          if (width)
          {
            v12 = dests->data + dests->rowBytes * v9;
            v13 = 1;
            do
            {
              v12[1] ^= 0x80u;
              v12[2] ^= 0x80u;
              v12 += *(this + 56);
              width = dests->width;
              v14 = width > v13++;
            }

            while (v14);
            height = dests->height;
          }

          v9 = ++v10;
        }

        while (height > v10);
      }
    }

    else if (height)
    {
      v20 = 0;
      v21 = dests->width;
      v22 = dests->data + 4;
      v23 = 2 * dests->rowBytes;
      do
      {
        if (v21)
        {
          v24 = 2 * *(this + 56);
          v25 = 1;
          v26 = v22;
          do
          {
            *(v26 - 1) ^= 0x8000u;
            *v26 ^= 0x8000u;
            v14 = v21 > v25++;
            v26 = (v26 + v24);
          }

          while (v14);
        }

        ++v20;
        v22 += v23;
      }

      while (height > v20);
    }
  }

  else
  {
    v15 = *(this + 1);
    if (v15)
    {
      v16 = iio_vImageConvert_AnyToAny(v15, srcs, dests, 0, 0);
      if (!v16)
      {
        goto LABEL_17;
      }

      v17 = IIO_vImageErrorString(v16);
      _cg_jpeg_mem_term("convert", 1392, "*** vImageConvert_AnyToAny: %s\n", v17);
    }

    _cg_jpeg_mem_term("convert", 1396, "   falling back to own convertAnyToAny [Lab]\n");
    ImageIOPixelConverter::convertAnyToAny(this, srcs, dests);
  }

LABEL_17:
  if (*(this + 65) == 1)
  {
    v18 = *&dests->width;
    *&dest.data = *&dests->data;
    *&dest.width = v18;
    vImageByteSwap_Planar16U(&dest, &dest, 0x10u);
  }

  return 0;
}

uint64_t IIOPixelConverterLab::convertRow(IIOPixelConverterLab *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = (*(this + 37) * a4 * *(this + 41)) >> 3;
  v5 = (*(this + 53) * a4 * *(this + 56)) >> 3;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a4;
  v8[3] = v4;
  v7[0] = a3;
  v7[1] = 1;
  v7[2] = a4;
  v7[3] = v5;
  return (*(*this + 16))(this, v8, v7);
}

uint64_t IIOPixelConverterCMYK::IIOPixelConverterCMYK(uint64_t a1, char a2, char a3, uint32_t a4, int a5, int a6, int a7, uint64_t a8, char a9, unsigned __int8 a10, char a11, uint64_t a12)
{
  *(a1 + 72) = 0;
  *a1 = &unk_1EF4DE100;
  error = 0;
  *(a1 + 32) = a2;
  *(a1 + 49) = a9;
  *(a1 + 17) = 2;
  *(a1 + 24) = a12;
  *(a1 + 65) = a11;
  *(a1 + 40) = a3;
  *(a1 + 36) = (a4 << 24) | (a5 << 16) | (a6 << 8) | a7;
  *(a1 + 52) = 16843009 * a10;
  ImageIOPixelConverter::extractInfo(a1);
  *(a1 + 16) = 1;
  v27 = 0;
  v28 = 0;
  IIOColorSpace::IIOColorSpace(&v27, *MEMORY[0x1E695F118]);
  srcFormat.decode = 0;
  *&srcFormat.renderingIntent = 0;
  v14 = *(a1 + 41);
  v15 = v14 == 4;
  srcFormat.bitsPerComponent = a4;
  srcFormat.bitsPerPixel = v14 * a4;
  v16 = *(a1 + 44);
  v17 = a4 == 8;
  if (v17 && v15)
  {
    v16 |= 0x4000u;
  }

  srcFormat.colorSpace = v28;
  srcFormat.version = 0;
  srcFormat.bitmapInfo = v16;
  destFormat.decode = 0;
  *&destFormat.renderingIntent = 0;
  v18 = *(a1 + 56);
  destFormat.bitsPerComponent = a10;
  destFormat.bitsPerPixel = v18 * a10;
  v20 = a10 == 8 && v18 == 4;
  if (v17 && v20)
  {
    v21 = *(a1 + 60) | 0x4000;
  }

  else
  {
    v21 = *(a1 + 60);
  }

  destFormat.colorSpace = v28;
  destFormat.version = 0;
  destFormat.bitmapInfo = v21;
  v22 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
  *(a1 + 8) = v22;
  if (!v22 || error)
  {
    v23 = IIO_vImageErrorString(error);
    _cg_jpeg_mem_term("IIOPixelConverterCMYK", 1486, "*** IIOPixelConverterCMYK could not create vImageConverter '%s'\n", v23);
  }

  IIOColorSpace::~IIOColorSpace(&v27);
  return a1;
}

void IIOPixelConverterCMYK::~IIOPixelConverterCMYK(IIOPixelConverterCMYK *this)
{
  ImageIOPixelConverter::~ImageIOPixelConverter(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOPixelConverterCMYK::convert(IIOPixelConverterCMYK *this, vImage_Buffer *srcs, vImage_Buffer *dests)
{
  if (*(this + 16) == 1)
  {
    v6 = *(this + 1);
    if (!v6)
    {
LABEL_5:
      _cg_jpeg_mem_term("convert", 1512, "   falling back to own convertAnyToAny [CMYK]\n");
      ImageIOPixelConverter::convertAnyToAny(this, srcs, dests);
      return 0;
    }

    v7 = iio_vImageConvert_AnyToAny(v6, srcs, dests, 0, 0);
    if (v7)
    {
      v8 = IIO_vImageErrorString(v7);
      _cg_jpeg_mem_term("convert", 1508, "*** vImageConvert_AnyToAny: %s\n", v8);
      goto LABEL_5;
    }
  }

  return 0;
}

uint64_t IIOPixelConverterCMYK::convertRow(IIOPixelConverterCMYK *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = (*(this + 37) * a4 * *(this + 41)) >> 3;
  v5 = (*(this + 53) * a4 * *(this + 56)) >> 3;
  v8[0] = a2;
  v8[1] = 1;
  v8[2] = a4;
  v8[3] = v4;
  v7[0] = a3;
  v7[1] = 1;
  v7[2] = a4;
  v7[3] = v5;
  return (*(*this + 16))(this, v8, v7);
}

void IIOColorMap::IIOColorMap(IIOColorMap *this, int a2, int a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = 0;
  *(this + 2) = 0;
  operator new[]();
}

void sub_1860D4DE0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8033FC2DF1);
  }

  _Unwind_Resume(exception_object);
}

void IIOColorMap::IIOColorMap(IIOColorMap *this, const unsigned __int8 *a2, unint64_t a3)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 8) = 0;
  if (a3 >= 0xC)
  {
    *this = *a2;
    *(this + 8) = a2[8];
    operator new[]();
  }
}

void sub_1860D4EC8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8033FC2DF1);
  }

  _Unwind_Resume(exception_object);
}

void IIOColorMap::IIOColorMap(IIOColorMap *this, CFReadStreamRef stream)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 8) = 0;
  *buffer = 0;
  v6 = 0;
  *v5 = 0;
  if (CFReadStreamRead(stream, buffer, 4) == 4 && *buffer == 1346456899 && CFReadStreamRead(stream, v5, 12) == 12 && *v5 <= 0x100u)
  {
    v4 = *&v5[4];
    *this = *v5;
    *(this + 1) = v4;
    *(this + 8) = v6;
    operator new[]();
  }
}

void sub_1860D5020(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8033FC2DF1);
  }

  _Unwind_Resume(exception_object);
}

char *IIOColorMap::createSerializedData(IIOColorMap *this, unint64_t *a2)
{
  v3 = 3 * *this + 12;
  *a2 = v3;
  v4 = malloc_type_malloc(v3, 0x100004077774924uLL);
  v5 = *this;
  *v4 = *this;
  v4[8] = *(this + 8);
  memcpy(v4 + 12, *(this + 2), 3 * v5);
  return v4;
}

uint64_t IIOColorMap::writeEmptyPlaceholderToStream(IIOColorMap *this, __CFWriteStream *a2)
{
  *buffer = 1885433187;
  if (CFWriteStreamWrite(this, buffer, 4) == 4)
  {
    return 0;
  }

  else
  {
    return 4294967260;
  }
}

unsigned int *IIOColorMap::copyToRGBX(unsigned int *this, unsigned int *a2, unint64_t a3, char a4)
{
  v4 = *this;
  if (a3 >> 2 < v4)
  {
    v4 = a3 >> 2;
  }

  if (v4)
  {
    v5 = *(this + 2);
    v6 = v4;
    v7 = a2;
    do
    {
      v8 = *v5;
      *(v7 + 2) = *(v5 + 2);
      *v7 = v8;
      *(v7 + 3) = -1;
      v5 = (v5 + 3);
      ++v7;
      --v6;
    }

    while (v6);
  }

  if (a4)
  {
    *permuteMap = 50331906;
    dest.data = a2;
    dest.height = 1;
    dest.width = v4;
    dest.rowBytes = 4 * v4;
    return vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
  }

  return this;
}

BOOL IIOColorMap::indexForColor(IIOColorMap *this, _DWORD *a2, const unsigned int *a3, _BYTE *a4, unsigned __int8 *a5)
{
  *a4 = 0;
  if (!a3)
  {
    return 0;
  }

  if (*a2 != this)
  {
    v5 = 0;
    while (a3 - 1 != v5)
    {
      v7 = a2[++v5];
      if (v7 == this)
      {
        result = v5 < a3;
        goto LABEL_8;
      }
    }

    return 0;
  }

  LOBYTE(v5) = 0;
  result = 1;
LABEL_8:
  *a4 = v5;
  return result;
}

uint64_t _cg_png_get_PLTE(uint64_t a1, uint64_t a2, unint64_t *a3, _DWORD *a4)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      if (a3)
      {
        if ((*(a2 + 8) & 8) != 0)
        {
          v6 = *(a2 + 24);
          if (v6 && (v6 >= v6 + 3 || v6 + 3 > *(a2 + 32)))
          {
            __break(0x5519u);
          }

          else
          {
            *a3 = v6;
            *a4 = *(a2 + 40);
            return 8;
          }
        }
      }
    }
  }

  return result;
}

void (**_cg_png_get_text(void (**a1)(void), uint64_t a2, void (***a3)(void), _DWORD *a4))(void)
{
  if (!a1)
  {
    goto LABEL_32;
  }

  if (!a2)
  {
    goto LABEL_32;
  }

  v6 = *(a2 + 164);
  if (v6 < 1)
  {
    goto LABEL_32;
  }

  if (!a3)
  {
LABEL_33:
    if (a4)
    {
      *a4 = v6;
    }

    return v6;
  }

  result = png_malloc(a1, 56 * v6);
  if (!result)
  {
LABEL_32:
    v6 = 0;
    goto LABEL_33;
  }

  v9 = 0;
  v10 = *(a2 + 176);
  v11 = v10 + 88 * *(a2 + 168);
LABEL_7:
  v12 = v10 + 88 * v9;
  v13 = v12 + 88;
  if (v12 >= v10 && v13 <= v11 && v12 < v13)
  {
    v16 = &result[7 * v9];
    *v16 = *v12;
    v17 = *(v12 + 8);
    v18 = *(v12 + 16);
    if (v17 < v18)
    {
      v19 = v17 + 1;
      while (v19 <= v18)
      {
        if (!*(v19++ - 1))
        {
          v16[1] = v17;
          v21 = *(v12 + 24);
          v22 = *(v12 + 32);
          if (v21 < v22)
          {
            v23 = v21 + 1;
            while (v23 <= v22)
            {
              if (!*(v23++ - 1))
              {
                v16[2] = v21;
                *(v16 + 3) = *(v12 + 40);
                v25 = *(v12 + 56);
                v26 = *(v12 + 64);
                if (v25 < v26)
                {
                  v27 = v25 + 1;
                  while (v27 <= v26)
                  {
                    if (!*(v27++ - 1))
                    {
                      v16[5] = v25;
                      v30 = *(v12 + 72);
                      v29 = *(v12 + 80);
                      if (v30 < v29)
                      {
                        v31 = v30 + 1;
                        while (v31 <= v29)
                        {
                          if (!*(v31++ - 1))
                          {
                            v16[6] = v30;
                            if (++v9 != v6)
                            {
                              goto LABEL_7;
                            }

                            *a3 = result;
                            goto LABEL_33;
                          }
                        }
                      }

                      goto LABEL_36;
                    }
                  }
                }

                goto LABEL_36;
              }
            }
          }

          break;
        }
      }
    }
  }

LABEL_36:
  __break(0x5519u);
  return result;
}

uint64_t _cg_png_get_next_frame_fcTL(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _WORD *a7, _WORD *a8, _BYTE *a9, _BYTE *a10)
{
  result = 0;
  if (a1 && a2)
  {
    if (a10)
    {
      v12 = a9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12 || a8 == 0 || a7 == 0 || a6 == 0 || a5 == 0 || a4 == 0 || a3 == 0 || (*(a2 + 8) & 0x40000) == 0)
    {
      return 0;
    }

    else
    {
      *a3 = *(a2 + 416);
      *a4 = *(a2 + 420);
      *a5 = *(a2 + 424);
      *a6 = *(a2 + 428);
      *a7 = *(a2 + 432);
      *a8 = *(a2 + 434);
      *a9 = *(a2 + 436);
      *a10 = *(a2 + 437);
      return 1;
    }
  }

  return result;
}

uint64_t _cg_png_get_first_frame_is_hidden(uint64_t result)
{
  if (result)
  {
    return *(result + 920) & 1;
  }

  return result;
}

uint64_t IIOWritePlugin::writeAll(IIOImageDestination **this)
{
  v2 = IIOImageDestination::pixelProviderCount(this[3]);
  v3 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = 4294967246;
    while (1)
    {
      PixelProviderAtIndex = IIOImageDestination::getPixelProviderAtIndex(this[3], v4);
      ImagePropertiesAtIndex = IIOImageDestination::getImagePropertiesAtIndex(this[3], v4);
      SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(this[3]);
      if (!PixelProviderAtIndex)
      {
        goto LABEL_6;
      }

      v9 = SourceGeomColorSpace;
      if ((*(*this + 3))(this, PixelProviderAtIndex, ImagePropertiesAtIndex, SourceGeomColorSpace, v4))
      {
        break;
      }

LABEL_7:
      v5 = 0;
      if (v3 == ++v4)
      {
        return v5;
      }
    }

    Ref = IIOImageSource::imageReadRef(PixelProviderAtIndex);
    v5 = (*(*this + 4))(this, Ref, ImagePropertiesAtIndex, v9, v4);
LABEL_6:
    if (v5)
    {
      return v5;
    }

    goto LABEL_7;
  }

  return 4294967246;
}

BOOL IIOWritePlugin::createLZFSECompressedData(IIOWritePlugin *this, unsigned __int8 *a2, size_t size, unsigned __int8 **a4, unsigned __int8 **a5)
{
  v9 = malloc_type_malloc(size, 0x100004077774924uLL);
  *a4 = v9;
  if (v9)
  {
    v9 = compression_encode_buffer(v9, size, a2, size, 0, COMPRESSION_LZFSE);
  }

  *a5 = v9;
  return v9 != 0;
}

size_t png_default_write_data(size_t result, void *__ptr, size_t a3)
{
  if (result)
  {
    v4 = result;
    result = fwrite(__ptr, 1uLL, a3, *(result + 40));
    if (result != a3)
    {
      _cg_png_error(v4, "Write Error");
    }
  }

  return result;
}

uint64_t png_default_flush(uint64_t result)
{
  if (result)
  {
    return fflush(*(result + 40));
  }

  return result;
}

const char *AppleJPEGReadPlugin::ColorConvert(IIOColorConverter *this, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 44);
  v6 = *(a2 + 120);
  v7 = *(a3 + 40);
  v8 = *(a3 + 48);
  v9 = *(a3 + 120);
  v10 = *a2;
  v11 = *a3;
  if (!v6)
  {
    v14 = *(a2 + 48);
    if ((v14 - 3) < 2)
    {
      v6 = 4 * v4;
    }

    else if (v14 == 5)
    {
      v6 = *(a2 + 40);
    }

    else if (v14)
    {
      _cg_jpeg_mem_term("ColorConvert", 91, "inRowBytes is 0\n");
      v6 = 0;
    }

    else
    {
      v6 = 3 * v4;
    }
  }

  if (!v9)
  {
    if ((v8 - 3) < 2)
    {
      v9 = 4 * v7;
    }

    else if (v8 == 5)
    {
      v9 = v7;
    }

    else if (v8)
    {
      _cg_jpeg_mem_term("ColorConvert", 110, "outRowBytes is 0\n");
      v9 = 0;
    }

    else
    {
      v9 = 3 * v7;
    }
  }

  v16.data = v10;
  v16.height = v5;
  v16.width = v4;
  v16.rowBytes = v6;
  v15.data = v11;
  v15.height = v5;
  v15.width = v7;
  v15.rowBytes = v9;
  result = IIOColorConverter::colorConvert(this, &v16, &v15);
  if (result)
  {
    v13 = IIO_vImageErrorString(result);
    return LogError("ColorConvert", 121, "*** vImageConvert_AnyToAny - %s\n", v13);
  }

  return result;
}

uint64_t AppleJPEGReadPlugin::IIORecodeAppleJPEG_to_JPEG(AppleJPEGReadPlugin *this, IIOImageDestination *a2, IIOImageSource *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIORecodeAppleJPEG_to_JPEG", 0, 0, -1, 0);
  }

  v33 = 0;
  *buffer = 0;
  IIOImageSource::count(this);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v20[0] = 0;
  v20[1] = 0;
  theString2 = *MEMORY[0x1E695F1C0];
  IIOColorSpace::IIOColorSpace(v20, *MEMORY[0x1E695F1C0]);
  v19[0] = 0;
  v19[1] = 0;
  IIOColorSpace::IIOColorSpace(v19, *MEMORY[0x1E695F0B8]);
  v5 = IIOImageDestination::resizeSourceImage(this);
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  else
  {
    ColorSpace = IIOReadPlugin::getColorSpace(this);
    cf = CGImageSourceCreateImageAtIndex(ColorSpace, 0, 0);
    if (!cf)
    {
      _cg_jpeg_mem_term("IIORecodeAppleJPEG_to_JPEG", 179, "*** ERROR: cannot get the source image...");
      goto LABEL_19;
    }
  }

  space = CGImageGetColorSpace(cf);
  Model = CGColorSpaceGetModel(space);
  if (Model >= kCGColorSpaceModelCMYK)
  {
    v15 = IIO_ColorModelString(Model);
    _cg_jpeg_mem_term("IIORecodeAppleJPEG_to_JPEG", 185, "*** ERROR: applejpeg_recode_session cannot handle non-RGB data (%s)\n", v15);
  }

  else
  {
    Name = CGColorSpaceGetName(space);
    if (Name)
    {
      CFStringCompare(Name, theString2, 0);
    }

    if (a2)
    {
      *buffer = IIOImageSource::imageReadRef(a2);
      if (*buffer)
      {
        goto LABEL_11;
      }
    }

    else
    {
      Property = CGImageGetProperty();
      if (Property)
      {
        v35.location = 0;
        v35.length = 8;
        CFDataGetBytes(Property, v35, buffer);
      }

      if (*buffer)
      {
LABEL_11:
        IIOImageDestination::getPixelProviderAtIndex(this, 0);
        if (a2)
        {
          ImagePropertiesAtIndex = IIOImageSource::getImagePropertiesAtIndex(a2, 0);
        }

        else
        {
          ImagePropertiesAtIndex = 0;
        }

        v11 = IIOImageDestination::getImagePropertiesAtIndex(this, 0);
        IIOSkipMetadata(ImagePropertiesAtIndex);
        JPEGWritePlugin::GetImageIOCompressionQuality(v11, v12);
        IIODictionary::getBoolForKey(v11, @"kCGImageSourceCreateThumbnailWithTransform");
        IIOReadPlugin::CreateRecodeProperties(a2, ImagePropertiesAtIndex, this, v11, &v33, v13);
      }
    }

    _cg_jpeg_mem_term("IIORecodeAppleJPEG_to_JPEG", 207, "*** ERROR: cannot get the 'CGImageReadRef' of the source image...");
  }

  CGImageRelease(cf);
LABEL_19:
  if (v33)
  {
    CFRelease(v33);
  }

  IIOColorSpace::~IIOColorSpace(v19);
  IIOColorSpace::~IIOColorSpace(v20);
  return 0;
}

void sub_1860D67F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, CGColorSpaceRef a45, uint64_t a46, CGColorSpaceRef a47)
{
  IIODictionary::~IIODictionary(&a34);
  IIOColorSpace::~IIOColorSpace(&a45);
  IIOColorSpace::~IIOColorSpace(&a47);
  _Unwind_Resume(a1);
}

uint64_t IIOBitStream::CreateIIOBitStream(IIOBitStream *this, void *a2, unsigned __int8 *a3, const char *a4)
{
  result = 0;
  if (this && a2 && a3)
  {
    v6 = *a3;
    if (v6 == 119)
    {
      operator new();
    }

    if (v6 == 114)
    {
      operator new();
    }

    return 0;
  }

  return result;
}

uint64_t IIOBitStream::seek(IIOBitStream *this, unint64_t a2)
{
  if (*(this + 3) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(this + 4) = a2;
  return result;
}

void IIOBitStreamReader::~IIOBitStreamReader(IIOBitStreamReader *this)
{
  *this = &unk_1EF4DE238;
  *(this + 4) = 0;
}

{
  *this = &unk_1EF4DE238;
  *(this + 4) = 0;
  JUMPOUT(0x186602850);
}

void IIOBitStreamWriter::~IIOBitStreamWriter(IIOBitStreamWriter *this)
{
  *this = &unk_1EF4DE288;
  if (*(this + 4) < *(this + 3))
  {
    IIOBitStreamWriter::putBits(this, 7u, 0);
  }
}

{
  *this = &unk_1EF4DE288;
  if (*(this + 4) < *(this + 3))
  {
    IIOBitStreamWriter::putBits(this, 7u, 0);
  }

  JUMPOUT(0x186602850);
}

uint64_t _cg_TIFFRGBAImageOK(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 944))
  {
    result = 0;
    strcpy(a2, "Sorry, requested compression method is not configured");
    return result;
  }

  v10 = *(a1 + 116);
  if (v10 > 0x10 || ((1 << v10) & 0x10116) == 0)
  {
    snprintf(a2, 0x400uLL, "Sorry, can not handle images with %hu-bit samples");
    return 0;
  }

  if (*(a1 + 118) == 3)
  {
    result = 0;
    strcpy(a2, "Sorry, can not handle images with IEEE floating-point samples");
    return result;
  }

  v22 = 0;
  v13 = *(a1 + 130) - *(a1 + 212);
  if (!_cg_TIFFGetField(a1, 262, a3, a4, a5, a6, a7, a8, &v22))
  {
    if (v13 == 3)
    {
      return 1;
    }

    if (v13 != 1)
    {
      snprintf(a2, 0x400uLL, "Missing needed %s tag");
      return 0;
    }

    v22 = 1;
    goto LABEL_39;
  }

  if (v22 <= 5u)
  {
    if (v22 <= 2u)
    {
      if (v22 >= 2u)
      {
        if (v13 <= 2)
        {
          snprintf(a2, 0x400uLL, "Sorry, can not handle RGB image with %s=%d");
          return 0;
        }

        return 1;
      }

LABEL_39:
      if (*(a1 + 170) == 1 && *(a1 + 130) != 1 && *(a1 + 116) <= 7u)
      {
        snprintf(a2, 0x400uLL, "Sorry, can not handle contiguous data with %s=%hu, and %s=%hu and Bits/Sample=%hu");
        return 0;
      }

      return 1;
    }

    if (v22 == 3)
    {
      goto LABEL_39;
    }

    if (v22 == 5)
    {
      v21 = 0;
      _cg_TIFFGetFieldDefaulted(a1, 332, v14, v15, v16, v17, v18, v19, &v21);
      if (v21 != 1)
      {
        snprintf(a2, 0x400uLL, "Sorry, can not handle separated image with %s=%d");
        return 0;
      }

      if (*(a1 + 130) <= 3u)
      {
        snprintf(a2, 0x400uLL, "Sorry, can not handle separated image with %s=%hu");
        return 0;
      }

      return 1;
    }

LABEL_46:
    snprintf(a2, 0x400uLL, "Sorry, can not handle image with %s=%hu");
    return 0;
  }

  if (v22 > 0x804Bu)
  {
    if (v22 == 32844)
    {
      if (*(a1 + 120) != 34676)
      {
        snprintf(a2, 0x400uLL, "Sorry, LogL data must have %s=%d");
        return 0;
      }

      return 1;
    }

    if (v22 == 32845)
    {
      if ((*(a1 + 120) & 0xFFFE) != 0x8774)
      {
        snprintf(a2, 0x400uLL, "Sorry, LogLuv data must have %s=%d or %d");
        return 0;
      }

      if (*(a1 + 170) != 1)
      {
        snprintf(a2, 0x400uLL, "Sorry, can not handle LogLuv images with %s=%hu");
        return 0;
      }

      if (*(a1 + 130) != 3 || v13 != 3)
      {
        snprintf(a2, 0x400uLL, "Sorry, can not handle image with %s=%hu, %s=%d");
        return 0;
      }

      return 1;
    }

    goto LABEL_46;
  }

  if (v22 == 6)
  {
    return 1;
  }

  if (v22 != 8)
  {
    goto LABEL_46;
  }

  v20 = *(a1 + 116);
  if (*(a1 + 130) != 3 || v13 != 3 || (result = 1, v20 != 8) && v20 != 16)
  {
    snprintf(a2, 0x400uLL, "Sorry, can not handle image with %s=%hu, %s=%d and %s=%hu", "Samples/pixel");
    return 0;
  }

  return result;
}

void _cg_TIFFRGBAImageEnd(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    free(v2);
    *(a1 + 80) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    free(v3);
    *(a1 + 88) = 0;
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    free(v4);
    *(a1 + 96) = 0;
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    free(v5);
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    free(v6);
    *(a1 + 112) = 0;
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    free(v7);
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    free(v8);
    *(a1 + 128) = 0;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    free(v9);
    free(*(a1 + 48));
    free(*(a1 + 56));
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }
}

uint64_t _cg_TIFFRGBAImageBegin(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v170 = *MEMORY[0x1E69E9840];
  result = _cg_TIFFRGBAImageOK(a2, a4, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v167 = 0;
    v166 = 0;
    v165 = 0;
    __src = 0;
    *(a1 + 80) = 0u;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 34) = 4;
    *a1 = a2;
    v19 = (a1 + 28);
    *(a1 + 8) = v9;
    _cg_TIFFGetFieldDefaulted(a2, 258, v13, v14, v15, v16, v17, v18, a1 + 28);
    v26 = *(a1 + 28);
    if (v26 > 0x10 || ((1 << v26) & 0x10116) == 0)
    {
      snprintf(a4, 0x400uLL, "Sorry, can not handle images with %hu-bit samples");
      goto LABEL_208;
    }

    *(a1 + 16) = 0;
    v27 = (a1 + 30);
    _cg_TIFFGetFieldDefaulted(a2, 277, v20, v21, v22, v23, v24, v25, a1 + 30);
    _cg_TIFFGetFieldDefaulted(a2, 338, v28, v29, v30, v31, v32, v33, &v166 + 2);
    if (HIWORD(v166))
    {
      v40 = *v167;
      if ((v40 - 1) < 2)
      {
LABEL_6:
        *(a1 + 16) = v40;
        goto LABEL_10;
      }

      if (!*v167 && *v27 > 3u)
      {
        v40 = 1;
        goto LABEL_6;
      }
    }

LABEL_10:
    v41 = (a1 + 36);
    if (!_cg_TIFFGetField(a2, 262, v34, v35, v36, v37, v38, v39, a1 + 36))
    {
      *v41 = 0;
    }

    v48 = HIWORD(v166);
    v49 = *v27;
    if (!HIWORD(v166))
    {
      if (v49 == 4 && *v41 == 2)
      {
        v48 = 1;
        *(a1 + 16) = 1;
        HIWORD(v166) = 1;
      }

      else
      {
        v48 = 0;
      }
    }

    v50 = v49 - v48;
    _cg_TIFFGetFieldDefaulted(a2, 259, v42, v43, v44, v45, v46, v47, &v165);
    _cg_TIFFGetFieldDefaulted(a2, 284, v51, v52, v53, v54, v55, v56, &v166);
    if (_cg_TIFFGetField(a2, 262, v57, v58, v59, v60, v61, v62, a1 + 36))
    {
      v69 = *v41;
      if (v69 <= 5)
      {
        if (*v41 <= 2u)
        {
          if (v69 >= 2)
          {
            if (v50 <= 2)
            {
              snprintf(a4, 0x400uLL, "Sorry, can not handle RGB image with %s=%d");
LABEL_208:
              _cg_TIFFRGBAImageEnd(a1);
              return 0;
            }

            goto LABEL_62;
          }

LABEL_28:
          if (v166 == 1 && *v27 != 1 && *v19 <= 7u)
          {
            snprintf(a4, 0x400uLL, "Sorry, can not handle contiguous data with %s=%hu, and %s=%hu and Bits/Sample=%hu");
            goto LABEL_208;
          }

LABEL_62:
          _cg_TIFFGetField(a2, 256, v63, v64, v65, v66, v67, v68, a1 + 20);
          _cg_TIFFGetField(a2, 257, v76, v77, v78, v79, v80, v81, a1 + 24);
          _cg_TIFFGetFieldDefaulted(a2, 274, v82, v83, v84, v85, v86, v87, a1 + 32);
          if (v166 == 2)
          {
            v88 = *(a1 + 30);
            *(a1 + 12) = v88 < 2;
            if (v88 >= 2)
            {
              v89 = _cg_TIFFIsTiled(*a1);
              v97 = gtTileSeparate;
              if (!v89)
              {
                v97 = gtStripSeparate;
              }

              *(a1 + 64) = v97;
              *(a1 + 72) = 0;
              v98 = *(a1 + 36);
              if (v98 < 3)
              {
                v99 = *v19;
                if (v99 != 16)
                {
                  if (v99 == 8)
                  {
                    v100 = *(a1 + 16);
                    if (v100 != 2)
                    {
                      if (v100 == 1)
                      {
                        v101 = putRGBAAseparate8bittile;
                      }

                      else
                      {
                        v101 = putRGBseparate8bittile;
                      }

                      goto LABEL_203;
                    }

                    if (BuildMapUaToAa(a1))
                    {
                      v101 = putRGBUAseparate8bittile;
                      goto LABEL_203;
                    }
                  }

LABEL_204:
                  if (*(a1 + 64) && *(a1 + 72))
                  {
                    return 1;
                  }

                  goto LABEL_207;
                }

                v148 = *(a1 + 16);
                v149 = BuildMapBitdepth16To8(a1);
                if (v148 == 2)
                {
                  if (v149 && BuildMapUaToAa(a1))
                  {
                    v101 = putRGBUAseparate16bittile;
                    goto LABEL_203;
                  }

                  goto LABEL_204;
                }

                if (v148 != 1)
                {
                  if (v149)
                  {
                    v101 = putRGBseparate16bittile;
                    goto LABEL_203;
                  }

                  goto LABEL_204;
                }

                if (!v149)
                {
                  goto LABEL_204;
                }

                v101 = putRGBAAseparate16bittile;
LABEL_203:
                *(a1 + 72) = v101;
                goto LABEL_204;
              }

              if (v98 == 5)
              {
                if (*v19 != 8 || *v27 != 4)
                {
                  goto LABEL_204;
                }

                *(a1 + 16) = 1;
                v101 = putCMYKseparate8bittile;
                goto LABEL_203;
              }

              if (v98 == 6)
              {
                if (*v19 != 8)
                {
                  goto LABEL_204;
                }

                if (*v27 != 3)
                {
                  goto LABEL_204;
                }

                if (!initYCbCrConversion(a1, v90, v91, v92, v93, v94, v95, v96))
                {
                  goto LABEL_204;
                }

                LOWORD(v169[0]) = 0;
                LOWORD(v168) = 0;
                _cg_TIFFGetFieldDefaulted(*a1, 530, v131, v132, v133, v134, v135, v136, v169);
                if ((v168 | (16 * LOWORD(v169[0]))) != 0x11)
                {
                  goto LABEL_204;
                }

                v101 = putseparate8bitYCbCr11tile;
                goto LABEL_203;
              }

              goto LABEL_207;
            }
          }

          else
          {
            *(a1 + 12) = 1;
          }

          v102 = _cg_TIFFIsTiled(*a1);
          v110 = gtTileContig;
          if (!v102)
          {
            v110 = gtStripContig;
          }

          *(a1 + 64) = v110;
          *(a1 + 72) = 0;
          v111 = *(a1 + 36);
          if (v111 <= 4)
          {
            if (v111 < 2)
            {
              if (!buildMap(a1))
              {
                goto LABEL_204;
              }

              v130 = *v19;
              if (v130 <= 3)
              {
                if (v130 == 1)
                {
                  v101 = put1bitbwtile;
                }

                else
                {
                  if (v130 != 2)
                  {
                    goto LABEL_204;
                  }

                  v101 = put2bitbwtile;
                }
              }

              else
              {
                switch(v130)
                {
                  case 4u:
                    v101 = put4bitbwtile;
                    break;
                  case 8u:
                    if (*(a1 + 16) && *v27 == 2)
                    {
                      v101 = putagreytile;
                    }

                    else
                    {
                      v101 = putgreytile;
                    }

                    goto LABEL_203;
                  case 0x10u:
                    v101 = put16bitbwtile;
                    break;
                  default:
                    goto LABEL_204;
                }
              }

              goto LABEL_203;
            }

            if (v111 == 2)
            {
              v137 = *v19;
              if (v137 != 16)
              {
                if (v137 != 8)
                {
                  goto LABEL_204;
                }

                v138 = *(a1 + 16);
                v139 = *(a1 + 30);
                if (v138 == 2)
                {
                  if (v139 >= 4)
                  {
                    if (BuildMapUaToAa(a1))
                    {
                      v101 = putRGBUAcontig8bittile;
                      goto LABEL_203;
                    }

                    goto LABEL_204;
                  }
                }

                else if (v138 == 1 && v139 >= 4)
                {
                  v101 = putRGBAAcontig8bittile;
                  goto LABEL_203;
                }

                if (v139 >= 3)
                {
                  v101 = putRGBcontig8bittile;
                  goto LABEL_203;
                }

                goto LABEL_204;
              }

              v151 = *(a1 + 16);
              v152 = *(a1 + 30);
              if (v151 == 2)
              {
                if (v152 >= 4)
                {
                  if (BuildMapBitdepth16To8(a1) && BuildMapUaToAa(a1))
                  {
                    v101 = putRGBUAcontig16bittile;
                    goto LABEL_203;
                  }

                  goto LABEL_204;
                }
              }

              else if (v151 == 1 && v152 >= 4)
              {
                if (!BuildMapBitdepth16To8(a1))
                {
                  goto LABEL_204;
                }

                v101 = putRGBAAcontig16bittile;
                goto LABEL_203;
              }

              if (v152 >= 3 && BuildMapBitdepth16To8(a1))
              {
                v101 = putRGBcontig16bittile;
                goto LABEL_203;
              }

              goto LABEL_204;
            }

            if (v111 == 3)
            {
              if (!buildMap(a1))
              {
                goto LABEL_204;
              }

              v112 = *v19;
              if (v112 > 3)
              {
                if (v112 == 4)
                {
                  v101 = put4bitcmaptile;
                  goto LABEL_203;
                }

                if (v112 != 8)
                {
                  goto LABEL_204;
                }

                v101 = put8bitcmaptile;
              }

              else
              {
                if (v112 == 1)
                {
                  v101 = put1bitcmaptile;
                  goto LABEL_203;
                }

                if (v112 != 2)
                {
                  goto LABEL_204;
                }

                v101 = put2bitcmaptile;
              }

              goto LABEL_203;
            }

LABEL_207:
            strcpy(a4, "Sorry, can not handle image");
            goto LABEL_208;
          }

          if (v111 == 5)
          {
            if (*v27 >= 4u && buildMap(a1) && *v19 == 8)
            {
              if (*(a1 + 80))
              {
                v101 = putRGBcontig8bitCMYKMaptile;
              }

              else
              {
                v101 = putRGBcontig8bitCMYKtile;
              }

              goto LABEL_203;
            }

            goto LABEL_204;
          }

          if (v111 == 6)
          {
            if (*v19 != 8 || *v27 != 3 || !initYCbCrConversion(a1, v103, v104, v105, v106, v107, v108, v109))
            {
              goto LABEL_204;
            }

            LOWORD(v169[0]) = 0;
            LOWORD(v168) = 0;
            _cg_TIFFGetFieldDefaulted(*a1, 530, v140, v141, v142, v143, v144, v145, v169);
            v146 = v168 | (16 * LOWORD(v169[0]));
            v101 = putcontig8bitYCbCr44tile;
            if (v146 <= 33)
            {
              switch(v146)
              {
                case 17:
                  v101 = putcontig8bitYCbCr11tile;
                  goto LABEL_203;
                case 18:
                  v101 = putcontig8bitYCbCr12tile;
                  goto LABEL_203;
                case 33:
                  v101 = putcontig8bitYCbCr21tile;
                  goto LABEL_203;
              }

              goto LABEL_204;
            }

            if (v146 > 65)
            {
              if (v146 == 68)
              {
                goto LABEL_203;
              }

              if (v146 == 66)
              {
                v101 = putcontig8bitYCbCr42tile;
                goto LABEL_203;
              }

              goto LABEL_204;
            }

            if (v146 == 34)
            {
              v101 = putcontig8bitYCbCr22tile;
              goto LABEL_203;
            }

            if (v146 != 65)
            {
              goto LABEL_204;
            }

            v101 = putcontig8bitYCbCr41tile;
            goto LABEL_203;
          }

          if (v111 != 8)
          {
            goto LABEL_207;
          }

          if (*v27 != 3)
          {
            goto LABEL_204;
          }

          if (!buildMap(a1))
          {
            goto LABEL_204;
          }

          v119 = *v19;
          if (v119 != 16 && v119 != 8)
          {
            goto LABEL_204;
          }

          v168 = 0;
          _cg_TIFFGetFieldDefaulted(*a1, 318, v113, v114, v115, v116, v117, v118, &v168);
          v125 = v168;
          v126 = v168[1];
          if (v126 == 0.0)
          {
            v127 = *a1;
            v128 = "Invalid value for WhitePoint tag.";
LABEL_93:
            TIFFErrorExtR(v127, "initCIELabConversion", v128, v120, v121, v122, v123, v124, v163);
            goto LABEL_94;
          }

          v153 = *(a1 + 112);
          if (!v153)
          {
            v153 = malloc_type_malloc(0x46CCuLL, 0x1000040DB433A44uLL);
            *(a1 + 112) = v153;
            if (!v153)
            {
              v127 = *a1;
              v128 = "No space for CIE L*a*b*->RGB conversion state.";
              goto LABEL_93;
            }

            v125 = v168;
            v126 = v168[1];
          }

          v169[1] = 1120403456;
          v154 = (*v125 / v126) * 100.0;
          *&v155 = (((1.0 - *v125) - v126) / v126) * 100.0;
          *v169 = v154;
          v169[2] = v155;
          if ((TIFFCIELabToRGBInit(v153, &display_sRGB, v169) & 0x80000000) == 0)
          {
            v161 = *v19;
            if (v161 == 16)
            {
              v162 = putcontig8bitCIELab16;
            }

            else
            {
              v162 = 0;
            }

            if (v161 == 8)
            {
              v129 = putcontig8bitCIELab8;
            }

            else
            {
              v129 = v162;
            }

            goto LABEL_190;
          }

          TIFFErrorExtR(*a1, "initCIELabConversion", "Failed to initialize CIE L*a*b*->RGB conversion state.", v156, v157, v158, v159, v160, v163);
          free(*(a1 + 112));
LABEL_94:
          v129 = 0;
LABEL_190:
          *(a1 + 72) = v129;
          goto LABEL_204;
        }

        if (v69 == 3)
        {
          if (_cg_TIFFGetField(a2, 320, v63, v64, v65, v66, v67, v68, &__src))
          {
            v71 = *(a1 + 28);
            v72 = 2 * (1 << v71);
            *(a1 + 40) = malloc_type_malloc(v72, 0x1000040BDFB0063uLL);
            *(a1 + 48) = malloc_type_malloc(v72, 0x1000040BDFB0063uLL);
            v73 = malloc_type_malloc(v72, 0x1000040BDFB0063uLL);
            *(a1 + 56) = v73;
            v74 = *(a1 + 40);
            if (v74 && *(a1 + 48) && v73)
            {
              v75 = 2 << v71;
              _TIFFmemcpy(v74, __src, v75);
              _TIFFmemcpy(*(a1 + 48), 0, v75);
              _TIFFmemcpy(*(a1 + 56), 0, v75);
              goto LABEL_28;
            }

            v147 = "Out of memory for colormap copy";
          }

          else
          {
            v147 = "Missing required Colormap tag";
          }

          v150 = *(v147 + 1);
          *a4 = *v147;
          *(a4 + 16) = v150;
          goto LABEL_208;
        }

        if (v69 == 5)
        {
          LOWORD(v169[0]) = 0;
          _cg_TIFFGetFieldDefaulted(a2, 332, v63, v64, v65, v66, v67, v68, v169);
          if (LOWORD(v169[0]) != 1 || *v27 <= 3u)
          {
            snprintf(a4, 0x400uLL, "Sorry, can not handle separated image with %s=%hu");
            goto LABEL_208;
          }

          goto LABEL_62;
        }

LABEL_58:
        snprintf(a4, 0x400uLL, "Sorry, can not handle image with %s=%hu");
        goto LABEL_208;
      }

      if (*v41 > 0x804Bu)
      {
        if (v69 == 32844)
        {
          if (v165 != 34676)
          {
            snprintf(a4, 0x400uLL, "Sorry, LogL data must have %s=%d");
            goto LABEL_208;
          }

          _cg_TIFFSetField(a2, 65560, v63, v64, v65, v66, v67, v68, 3);
          v70 = 1;
        }

        else
        {
          if (v69 != 32845)
          {
            goto LABEL_58;
          }

          if ((v165 + 30858) <= 0xFFFDu)
          {
            snprintf(a4, 0x400uLL, "Sorry, LogLuv data must have %s=%d or %d");
            goto LABEL_208;
          }

          if (v166 != 1)
          {
            snprintf(a4, 0x400uLL, "Sorry, can not handle LogLuv images with %s=%hu", "Planarconfiguration", v166);
            return 0;
          }

          _cg_TIFFSetField(a2, 65560, v63, v64, v65, v66, v67, v68, 3);
          v70 = 2;
        }

        *v41 = v70;
        *v19 = 8;
        goto LABEL_62;
      }

      if (v69 != 6)
      {
        if (v69 == 8)
        {
          goto LABEL_62;
        }

        goto LABEL_58;
      }

      if (v166 != 1 || v165 != 7)
      {
        goto LABEL_62;
      }

      _cg_TIFFSetField(a2, 65538, v63, v64, v65, v66, v67, v68, 1);
    }

    else if (v50 != 3)
    {
      if (v50 != 1)
      {
        snprintf(a4, 0x400uLL, "Missing needed %s tag");
        goto LABEL_208;
      }

      LOWORD(v169[0]) = 0;
      _cg_TIFFGetField(a2, 259, v63, v64, v65, v66, v67, v68, v169);
      *v41 = LOWORD(v169[0]) - 2 >= 3 && LOWORD(v169[0]) != 32771;
      goto LABEL_28;
    }

    *v41 = 2;
    goto LABEL_62;
  }

  return result;
}

uint64_t _cg_TIFFRGBAImageGet(uint64_t *a1)
{
  v1 = a1[8];
  if (!v1)
  {
    v3 = *a1;
    v4 = TIFFFileName(*a1);
    v10 = "No get routine setup";
LABEL_8:
    TIFFErrorExtR(v3, v4, v10, v5, v6, v7, v8, v9, v11);
    return 0;
  }

  if (!a1[9])
  {
    v3 = *a1;
    v4 = TIFFFileName(*a1);
    v10 = "No put routine setupl; probably can not handle image format";
    goto LABEL_8;
  }

  return v1();
}

uint64_t _cg_TIFFReadRGBAImageOriented(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  bzero(v35, 0x400uLL);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  if (_cg_TIFFRGBAImageOK(a1, v35, v9, v10, v11, v12, v13, v14) && _cg_TIFFRGBAImageBegin(v27, a1, a6, v35, v15, v16, v17, v18))
  {
    WORD1(v28) = a5;
    v19 = _cg_TIFFRGBAImageGet(v27);
    _cg_TIFFRGBAImageEnd(v27);
  }

  else
  {
    v20 = TIFFFileName(a1);
    TIFFErrorExtR(a1, v20, "%s", v21, v22, v23, v24, v25, v35);
    return 0;
  }

  return v19;
}

uint64_t gtTileContig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v12 = *a1;
  v87 = *(a1 + 72);
  v90 = 0;
  v88 = _cg_TIFFTileSize(v12, a2, a3, a4, a5, a6, a7, a8);
  if (!v88)
  {
    v30 = TIFFFileName(v12);
    TIFFErrorExtR(v12, v30, "%s", v31, v32, v33, v34, v35, "No space for tile buffer");
    return 0;
  }

  v91 = 0;
  _cg_TIFFGetField(v12, 322, v13, v14, v15, v16, v17, v18, &v91 + 4);
  v89 = v12;
  _cg_TIFFGetField(v12, 323, v19, v20, v21, v22, v23, v24, &v91);
  v25 = setorientation(a1);
  v27 = v25;
  v28 = v9;
  if (v25)
  {
    if (!((HIDWORD(v91) + v9) >> 31))
    {
      v86 = v8 - 1;
      v29 = -v9 - HIDWORD(v91);
      goto LABEL_9;
    }

LABEL_7:
    v36 = v12;
    v37 = TIFFFileName(v12);
    v77 = "unsupported tile size (too wide)";
    v43 = "%s";
LABEL_14:
    TIFFErrorExtR(v36, v37, v43, v38, v39, v40, v41, v42, v77);
    return 0;
  }

  if (v9 + 0x7FFFFFFF < HIDWORD(v91))
  {
    goto LABEL_7;
  }

  v86 = 0;
  v29 = v9 - HIDWORD(v91);
LABEL_9:
  v85 = v29;
  if (!HIDWORD(v91) || !v91)
  {
    v36 = v12;
    v37 = TIFFFileName(v12);
    v43 = "tile width or height is zero";
    goto LABEL_14;
  }

  v44 = *(a1 + 140) % HIDWORD(v91);
  if (v44 + v29 != v44 + v29)
  {
    v36 = v12;
    v37 = TIFFFileName(v12);
    v77 = "Invalid skew";
    v43 = "%s %lld";
    goto LABEL_14;
  }

  if (v8)
  {
    v80 = v44 + v29;
    v81 = v10;
    v47 = 0;
    v79 = *(a1 + 140) % HIDWORD(v91);
    v78 = HIDWORD(v91) - v44;
    v48 = v12;
    v82 = v25;
    v83 = v8;
    while (1)
    {
      v49 = v91 + (*(a1 + 136) + v47) / v91 * v91 - (*(a1 + 136) + v47);
      if (v91 + (*(a1 + 136) + v47) / v91 * v91 - *(a1 + 136) > v8)
      {
        v49 = v8 - v47;
      }

      v84 = v49;
      if (v9)
      {
        break;
      }

LABEL_36:
      v27 = v82;
      v8 = v83;
      if (v82)
      {
        v68 = -v84;
      }

      else
      {
        v68 = v84;
      }

      v86 += v68;
      v47 += v84;
      if (v47 >= v83)
      {
        v45 = 1;
        goto LABEL_42;
      }
    }

    v50 = 0;
    v51 = *(a1 + 140);
    v52 = v80;
    LODWORD(v53) = v78;
    v54 = v79;
    while (_TIFFReadTileAndAllocBuffer(v48, &v90, v88, v51, *(a1 + 136) + v47, 0, 0, v26) != -1 || v90 && !*(a1 + 8))
    {
      v62 = (*(a1 + 136) + v47) % v91;
      v63 = _cg_TIFFTileRowSize(v48, v55, v56, v57, v58, v59, v60, v61);
      v64 = v50 + v53;
      v65 = HIDWORD(v91) - (v9 - v50);
      if (v50 + v53 <= v9)
      {
        v66 = v54;
      }

      else
      {
        v66 = v65;
      }

      if (v64 <= v9)
      {
        v53 = v53;
      }

      else
      {
        v53 = v9 - v50;
      }

      if (v64 <= v9)
      {
        v67 = v52;
      }

      else
      {
        v67 = v65 + v85;
      }

      v87(a1, v81 + 4 * v9 * v86 + 4 * v50, v50, v86, v53, v84, v66, v67, &v90[v63 * v62 + *(a1 + 30) * v54]);
      v54 = 0;
      v50 = (v53 + v50);
      v51 = (v53 + v51);
      LODWORD(v53) = HIDWORD(v91);
      v52 = v85;
      v48 = v89;
      if (v50 >= v9)
      {
        goto LABEL_36;
      }
    }

    v45 = 0;
    v27 = v82;
    v8 = v83;
LABEL_42:
    v69 = v90;
    v28 = v9;
    v10 = v81;
  }

  else
  {
    v69 = 0;
    v45 = 1;
  }

  free(v69);
  if (v27 >= 2 && v8)
  {
    v70 = 0;
    for (i = 0; i != v8; ++i)
    {
      v72 = v10 + 4 * i * v9;
      v73 = (v72 + 4 * v28 - 4);
      if (v72 < v73)
      {
        v74 = v10 + 4 + 4 * v70;
        do
        {
          v75 = *(v74 - 4);
          *(v74 - 4) = *v73;
          *v73-- = v75;
          v76 = v74 >= v73;
          v74 += 4;
        }

        while (!v76);
      }

      v70 += v9;
    }
  }

  return v45;
}

uint64_t gtStripContig(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v18 = 0;
  HIWORD(v17[0]) = 0;
  v17[1] = 0;
  _cg_TIFFGetFieldDefaulted(v8, 530, a3, a4, a5, a6, a7, a8, v17 + 2);
  v9 = TIFFFileName(v8);
  TIFFErrorExtR(v8, v9, "Invalid vertical YCbCr subsampling", v10, v11, v12, v13, v14, v16);
  return 0;
}

uint64_t putRGBAAcontig8bittile(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, _DWORD *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    while (1)
    {
      if (a5 < 8)
      {
        v19 = a2;
        i = a5;
      }

      else
      {
        for (i = a5; i > 7; i -= 8)
        {
          *a2 = *a9;
          v12 = (a9 + v10);
          a2[1] = *v12;
          v13 = (v12 + v10);
          a2[2] = *v13;
          v14 = (v13 + v10);
          a2[3] = *v14;
          v15 = (v14 + v10);
          a2[4] = *v15;
          v16 = (v15 + v10);
          a2[5] = *v16;
          v17 = (v16 + v10);
          a2[6] = *v17;
          v18 = (v17 + v10);
          v19 = a2 + 8;
          a2[7] = *v18;
          a9 = (v18 + v10);
          a2 += 8;
        }
      }

      if (i > 3)
      {
        break;
      }

      if (i <= 1)
      {
        if (!i)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (i != 2)
      {
        goto LABEL_22;
      }

LABEL_23:
      *v19++ = *a9;
      a9 = (a9 + v10);
LABEL_24:
      *v19++ = *a9;
      a9 = (a9 + v10);
LABEL_25:
      a2 = &v19[a8];
      a9 = (a9 + v10 * a7);
      if (!--a6)
      {
        return result;
      }
    }

    if (i > 5)
    {
      if (i != 6)
      {
        *v19++ = *a9;
        a9 = (a9 + v10);
      }

      *v19++ = *a9;
      a9 = (a9 + v10);
    }

    else if (i == 4)
    {
      goto LABEL_21;
    }

    *v19++ = *a9;
    a9 = (a9 + v10);
LABEL_21:
    *v19++ = *a9;
    a9 = (a9 + v10);
LABEL_22:
    *v19++ = *a9;
    a9 = (a9 + v10);
    goto LABEL_23;
  }

  return result;
}

uint64_t BuildMapUaToAa(uint64_t *a1)
{
  if (a1[15])
  {
    BuildMapUaToAa_cold_1();
  }

  v2 = malloc_type_malloc(0x10000uLL, 0xAD1E9372uLL);
  a1[15] = v2;
  if (v2)
  {
    v8 = 0;
    v9 = vdupq_n_s32(0x80808081);
    v10.i64[0] = 0x400000004;
    v10.i64[1] = 0x400000004;
    do
    {
      v11 = 0;
      v12 = vdupq_n_s32(v8);
      v13 = xmmword_186205980;
      do
      {
        v14.i64[0] = 0x7F0000007FLL;
        v14.i64[1] = 0x7F0000007FLL;
        v15 = vmlaq_s32(v14, v13, v12);
        *&v2[v11] = vuzp1_s8(vshr_n_u16(vmovn_s32(vuzp2q_s32(vmull_u32(*v15.i8, *v9.i8), vmull_high_u32(v15, v9))), 7uLL), 0x100000000).u32[0];
        v11 += 4;
        v13 = vaddq_s32(v13, v10);
      }

      while (v11 != 256);
      ++v8;
      v2 += 256;
    }

    while (v8 != 256);
    return 1;
  }

  else
  {
    TIFFErrorExtR(*a1, "BuildMapUaToAa", "Out of memory", v3, v4, v5, v6, v7, v17);
    return 0;
  }
}

uint64_t putRGBUAcontig8bittile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    do
    {
      if (a5)
      {
        v11 = *(result + 120);
        v12 = a5;
        do
        {
          v13 = v11 + (a9[3] << 8);
          *a2++ = *(v13 + *a9) | (a9[3] << 24) | (*(v13 + a9[1]) << 8) | (*(v13 + a9[2]) << 16);
          a9 += v10;
          --v12;
        }

        while (v12);
      }

      a2 += a8;
      a9 += v10 * a7;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t putRGBcontig8bittile(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int16 *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    while (1)
    {
      if (a5 < 8)
      {
        v19 = a2;
        i = a5;
      }

      else
      {
        for (i = a5; i > 7; i -= 8)
        {
          *a2 = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
          v12 = (a9 + v10);
          a2[1] = *v12 | (*(v12 + 2) << 16) | 0xFF000000;
          v13 = (v12 + v10);
          a2[2] = *v13 | (*(v13 + 2) << 16) | 0xFF000000;
          v14 = (v13 + v10);
          a2[3] = *v14 | (*(v14 + 2) << 16) | 0xFF000000;
          v15 = (v14 + v10);
          a2[4] = *v15 | (*(v15 + 2) << 16) | 0xFF000000;
          v16 = (v15 + v10);
          a2[5] = *v16 | (*(v16 + 2) << 16) | 0xFF000000;
          v17 = (v16 + v10);
          a2[6] = *v17 | (*(v17 + 2) << 16) | 0xFF000000;
          v18 = (v17 + v10);
          v19 = a2 + 8;
          a2[7] = *v18 | (*(v18 + 2) << 16) | 0xFF000000;
          a9 = (v18 + v10);
          a2 += 8;
        }
      }

      if (i > 3)
      {
        break;
      }

      if (i <= 1)
      {
        if (!i)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (i != 2)
      {
        goto LABEL_22;
      }

LABEL_23:
      *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
      a9 = (a9 + v10);
LABEL_24:
      *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
      a9 = (a9 + v10);
LABEL_25:
      a2 = &v19[a8];
      a9 = (a9 + v10 * a7);
      if (!--a6)
      {
        return result;
      }
    }

    if (i > 5)
    {
      if (i != 6)
      {
        *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
        a9 = (a9 + v10);
      }

      *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
      a9 = (a9 + v10);
    }

    else if (i == 4)
    {
      goto LABEL_21;
    }

    *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
    a9 = (a9 + v10);
LABEL_21:
    *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
    a9 = (a9 + v10);
LABEL_22:
    *v19++ = *a9 | (*(a9 + 2) << 16) | 0xFF000000;
    a9 = (a9 + v10);
    goto LABEL_23;
  }

  return result;
}

uint64_t BuildMapBitdepth16To8(uint64_t *a1)
{
  if (a1[16])
  {
    BuildMapBitdepth16To8_cold_1();
  }

  v2 = malloc_type_malloc(0x10000uLL, 0xC6A6F426uLL);
  a1[16] = v2;
  if (v2)
  {
    v8 = 0;
    v9 = xmmword_186205980;
    v10.i64[0] = 0x8000000080;
    v10.i64[1] = 0x8000000080;
    v11 = vdupq_n_s32(0xFF00FF01);
    v12.i64[0] = 0x400000004;
    v12.i64[1] = 0x400000004;
    do
    {
      v13 = vaddq_s32(v9, v10);
      *&v2[v8] = vuzp1_s8(vshr_n_u16(vmovn_s32(vuzp2q_s32(vmull_u32(*v13.i8, *v11.i8), vmull_high_u32(v13, v11))), 8uLL), *v9.i8).u32[0];
      v8 += 4;
      v9 = vaddq_s32(v9, v12);
    }

    while (v8 != 0x10000);
    return 1;
  }

  else
  {
    TIFFErrorExtR(*a1, "BuildMapBitdepth16To8", "Out of memory", v3, v4, v5, v6, v7, v15);
    return 0;
  }
}

uint64_t putRGBAAcontig16bittile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int16 *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    v11 = v10 * a7;
    v12 = 2 * v10;
    do
    {
      if (a5)
      {
        v13 = *(result + 128);
        v14 = a5;
        do
        {
          *a2++ = *(v13 + *a9) | (*(v13 + a9[1]) << 8) | (*(v13 + a9[2]) << 16) | (*(v13 + a9[3]) << 24);
          a9 = (a9 + v12);
          --v14;
        }

        while (v14);
      }

      a2 += a8;
      a9 += v11;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t putRGBUAcontig16bittile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int16 *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    v11 = v10 * a7;
    v12 = 2 * v10;
    do
    {
      if (a5)
      {
        v14 = *(result + 120);
        v13 = *(result + 128);
        v15 = a5;
        do
        {
          v16 = v14 + (*(v13 + a9[3]) << 8);
          *a2++ = *(v16 + *(v13 + *a9)) | (*(v13 + a9[3]) << 24) | (*(v16 + *(v13 + a9[1])) << 8) | (*(v16 + *(v13 + a9[2])) << 16);
          a9 = (a9 + v12);
          --v15;
        }

        while (v15);
      }

      a2 += a8;
      a9 += v11;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t putRGBcontig16bittile(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int16 *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    v11 = v10 * a7;
    v12 = 2 * v10;
    do
    {
      if (a5)
      {
        v13 = *(result + 128);
        v14 = a5;
        do
        {
          *a2++ = *(v13 + *a9) | (*(v13 + a9[1]) << 8) | (*(v13 + a9[2]) << 16) | 0xFF000000;
          a9 = (a9 + v12);
          --v14;
        }

        while (v14);
      }

      a2 += a8;
      a9 += v11;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t buildMap(uint64_t a1)
{
  v2 = *(a1 + 36);
  result = 1;
  if (v2 <= 6)
  {
    if (((1 << v2) & 0x64) != 0)
    {
      if (*(a1 + 28) == 8)
      {
        return result;
      }
    }

    else if (((1 << v2) & 3) == 0)
    {
      if (v2 != 3)
      {
        return result;
      }

      v4 = *(a1 + 28);
      v5 = 1 << v4;
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      do
      {
        if (v5-- < 1)
        {
          v53 = *a1;
          v54 = TIFFFileName(*a1);
          TIFFWarningExtR(v53, v54, "Assuming 8-bit colormap", v55, v56, v57, v58, v59, v91);
          goto LABEL_51;
        }

        v10 = *v6++;
        if (v10 > 0xFF)
        {
          break;
        }

        if (*v7 > 0xFFu)
        {
          break;
        }

        ++v7;
        v11 = *v8++;
      }

      while (v11 < 0x100);
      v12 = -(-1 << v4);
      v13 = *(a1 + 56) - 2;
      v14 = *(a1 + 48) - 2;
      v15 = *(a1 + 40) - 2;
      do
      {
        *(v15 + 2 * v12) = *(v15 + 2 * v12 + 1);
        *(v14 + 2 * v12) = *(v14 + 2 * v12 + 1);
        *(v13 + 2 * v12) = *(v13 + 2 * v12 + 1);
        --v12;
      }

      while (v12 > 0);
LABEL_51:
      v60 = *(a1 + 28);
      if (v60 <= 8)
      {
        v61 = *(a1 + 40);
        v62 = *(a1 + 48);
        v63 = *(a1 + 56);
        v64 = malloc_type_malloc(((8u / *(a1 + 28)) << 10) + 2048, 0x10040436913F5uLL);
        *(a1 + 96) = v64;
        if (v64)
        {
          v65 = 0;
          v66 = (v64 + 2048);
          while (1)
          {
            *(*(a1 + 96) + 8 * v65) = v66;
            if (v60 > 3)
            {
              if (v60 == 4)
              {
                v74 = 4;
                v72 = 0xFFFFFFFLL;
                v75 = v60;
                v89 = v66;
                v90 = 15;
                v76 = 8;
                goto LABEL_64;
              }

              if (v60 == 8)
              {
                v77 = v65;
                v76 = 4;
                v78 = v66;
LABEL_65:
                v66 = (v66 + v76);
                *v78 = *(v61 + 2 * v77) | (*(v62 + 2 * v77) << 8) | (*(v63 + 2 * v77) << 16) | 0xFF000000;
              }
            }

            else
            {
              if (v60 == 1)
              {
                v79 = v65 >> 7;
                v80 = (v65 >> 6) & 1;
                v81 = (v65 >> 5) & 1;
                v82 = (v65 >> 4) & 1;
                v83.i16[0] = *(v61 + 2 * v79);
                v83.i16[1] = *(v61 + 2 * v80);
                v83.i16[2] = *(v61 + 2 * v81);
                v83.i16[3] = *(v61 + 2 * v82);
                v84.i16[0] = *(v62 + 2 * v79);
                v84.i16[1] = *(v62 + 2 * v80);
                v84.i16[2] = *(v62 + 2 * v81);
                v84.i16[3] = *(v62 + 2 * v82);
                v85 = vsli_n_s16(v83, v84, 8uLL);
                v84.i16[0] = *(v63 + 2 * v79);
                v84.i16[1] = *(v63 + 2 * v80);
                v84.i16[2] = *(v63 + 2 * v81);
                v84.i16[3] = *(v63 + 2 * v82);
                *v66 = *&vorrq_s8(vshll_n_s16(v84, 0x10uLL), vmovl_u16(v85)) | __PAIR128__(0xFF000000FF000000, 0xFF000000FF000000);
                v70 = (v66 + 1);
                v67 = 3;
                v68 = 1;
                v69 = 20;
                v71 = 2;
                v72 = 1;
                v73 = 24;
                v74 = 1;
                v75 = 28;
                v76 = 32;
                goto LABEL_62;
              }

              if (v60 == 2)
              {
                v67 = 6;
                v68 = 0x3FFFFFFLL;
                v69 = 4;
                v70 = v66;
                v71 = 4;
                v72 = 3;
                v73 = 8;
                v74 = 2;
                v75 = 12;
                v76 = 16;
LABEL_62:
                v86 = (v65 >> v67) & v68;
                v87 = (v65 >> v71) & v72;
                v88 = *(v61 + 2 * v87);
                *v70 = *(v61 + 2 * v86) | (*(v62 + 2 * v86) << 8) | (*(v63 + 2 * v86) << 16) | 0xFF000000;
                v89 = (v66 + v73);
                *(v66 + v69) = v88 & 0xFFFF00FF | (*(v62 + 2 * v87) << 8) | (*(v63 + 2 * v87) << 16) | 0xFF000000;
                v90 = v72;
LABEL_64:
                v78 = (v66 + v75);
                *v89 = *(v61 + 2 * ((v65 >> v74) & v72)) | (*(v62 + 2 * ((v65 >> v74) & v72)) << 8) | (*(v63 + 2 * ((v65 >> v74) & v72)) << 16) | 0xFF000000;
                v77 = v90 & v65;
                goto LABEL_65;
              }
            }

            if (++v65 == 256)
            {
              return 1;
            }
          }
        }

        v22 = *a1;
        v23 = TIFFFileName(v22);
        v29 = "No space for Palette mapping table";
        goto LABEL_24;
      }

      return 1;
    }

    v16 = *(a1 + 28);
    if (v16 == 16)
    {
      v17 = 255;
    }

    else
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 + 1;
    v19 = malloc_type_malloc(v18, 0x100004077774924uLL);
    *(a1 + 80) = v19;
    if (v19)
    {
      if (*(a1 + 36))
      {
        if ((v17 & 0x80000000) == 0)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            *(*(a1 + 80) + v21++) = v20 / v17;
            v20 += 255;
          }

          while (v18 != v21);
        }
      }

      else if ((v17 & 0x80000000) == 0)
      {
        v30 = 0;
        v31 = 255 * v17;
        do
        {
          *(*(a1 + 80) + v30++) = v31 / v17;
          v31 -= 255;
        }

        while (v18 != v30);
      }

      v32 = *(a1 + 28);
      if (v32 > 0x10 || *(a1 + 36) > 1u)
      {
        return 1;
      }

      v33 = *(a1 + 80);
      if (v32 <= 8)
      {
        v34 = ((8u / *(a1 + 28)) << 10) + 2048;
      }

      else
      {
        v34 = 3072;
      }

      v35 = malloc_type_malloc(v34, 0x10040436913F5uLL);
      *(a1 + 88) = v35;
      if (v35)
      {
        v36 = 0;
        v37 = (v35 + 2048);
        while (1)
        {
          *(*(a1 + 88) + 8 * v36) = v37;
          if (v32 > 3)
          {
            break;
          }

          if (v32 == 1)
          {
            *v37 = (65793 * *(v33 + (v36 >> 7))) | 0xFF000000;
            v37[1] = (65793 * *(v33 + ((v36 >> 6) & 1))) | 0xFF000000;
            v37[2] = (65793 * *(v33 + ((v36 >> 5) & 1))) | 0xFF000000;
            v44 = v37 + 4;
            v37[3] = (65793 * *(v33 + ((v36 >> 4) & 1))) | 0xFF000000;
            v41 = 3;
            v42 = 1;
            v43 = 5;
            v45 = 2;
            v46 = 1;
            v47 = 6;
            v48 = 1;
            v49 = 28;
            v39 = 32;
LABEL_45:
            *v44 = (65793 * *(v33 + ((v36 >> v41) & v42))) | 0xFF000000;
            v50 = &v37[v47];
            v37[v43] = (65793 * *(v33 + ((v36 >> v45) & v46))) | 0xFF000000;
            v51 = v46;
LABEL_46:
            v52 = (65793 * *(v33 + ((v36 >> v48) & v46))) | 0xFF000000;
            v40 = (v37 + v49);
            *v50 = v52;
            v38 = v51 & v36;
            goto LABEL_47;
          }

          if (v32 == 2)
          {
            v41 = 6;
            v42 = 0x3FFFFFFLL;
            v43 = 1;
            v44 = v37;
            v45 = 4;
            v46 = 3;
            v47 = 2;
            v48 = 2;
            v49 = 12;
            v39 = 16;
            goto LABEL_45;
          }

LABEL_48:
          if (++v36 == 256)
          {
            free(*(a1 + 80));
            *(a1 + 80) = 0;
            return 1;
          }
        }

        if (v32 == 4)
        {
          v48 = 4;
          v46 = 0xFFFFFFFLL;
          v49 = v32;
          v50 = v37;
          v51 = 15;
          v39 = 8;
          goto LABEL_46;
        }

        if (v32 != 16 && v32 != 8)
        {
          goto LABEL_48;
        }

        v38 = v36;
        v39 = 4;
        v40 = v37;
LABEL_47:
        v37 = (v37 + v39);
        *v40 = (65793 * *(v33 + v38)) | 0xFF000000;
        goto LABEL_48;
      }

      v22 = *a1;
      v23 = TIFFFileName(v22);
      v29 = "No space for B&W mapping table";
    }

    else
    {
      v22 = *a1;
      v23 = TIFFFileName(v22);
      v29 = "No space for photometric conversion table";
    }

LABEL_24:
    TIFFErrorExtR(v22, v23, v29, v24, v25, v26, v27, v28, v91);
    return 0;
  }

  return result;
}

uint64_t putRGBcontig8bitCMYKtile(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 30);
    while (1)
    {
      v11 = a5;
      if (a5 >= 8)
      {
        do
        {
          v12 = a9;
          *a2 = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v13 = &a9[v10 + 3];
          a2[1] = ((32897 * (*(v13 - 2) ^ 0xFF) * (*v13 ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*(v13 - 3) ^ 0xFF) * (*v13 ^ 0xFFu)) >> 23) | ((32897 * (*(v13 - 1) ^ 0xFF) * (*v13 ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v14 = &v13[v10];
          a2[2] = ((32897 * (*(v14 - 2) ^ 0xFF) * (*v14 ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*(v14 - 3) ^ 0xFF) * (*v14 ^ 0xFFu)) >> 23) | ((32897 * (*(v14 - 1) ^ 0xFF) * (*v14 ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v15 = &v14[v10];
          v16 = ((32897 * (*(v15 - 2) ^ 0xFF) * (*v15 ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*(v15 - 3) ^ 0xFF) * (*v15 ^ 0xFFu)) >> 23) | ((32897 * (*(v15 - 1) ^ 0xFF) * (*v15 ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v17 = &v15[v10];
          a2[3] = v16;
          a2[4] = ((32897 * (*(v17 - 2) ^ 0xFF) * (*v17 ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*(v17 - 3) ^ 0xFF) * (*v17 ^ 0xFFu)) >> 23) | ((32897 * (*(v17 - 1) ^ 0xFF) * (*v17 ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v18 = &v17[v10];
          a2[5] = ((32897 * (*(v18 - 2) ^ 0xFF) * (*v18 ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*(v18 - 3) ^ 0xFF) * (*v18 ^ 0xFFu)) >> 23) | ((32897 * (*(v18 - 1) ^ 0xFF) * (*v18 ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v19 = &v18[v10];
          a2[6] = ((32897 * (*(v19 - 2) ^ 0xFF) * (*v19 ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*(v19 - 3) ^ 0xFF) * (*v19 ^ 0xFFu)) >> 23) | ((32897 * (*(v19 - 1) ^ 0xFF) * (*v19 ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
          v20 = &v19[v10];
          v21 = *v20 ^ 0xFF;
          result = ((32897 * (*(v20 - 2) ^ 0xFFu) * v21) >> 15) & 0x1FF00;
          v22 = result | ((32897 * (*(v20 - 3) ^ 0xFFu) * v21) >> 23) | ((32897 * (*(v20 - 1) ^ 0xFFu) * v21) >> 7) & 0xFF0000 | 0xFF000000;
          v23 = a2 + 8;
          a2[7] = v22;
          v11 -= 8;
          a9 = &v20[v10 - 3];
          a2 += 8;
        }

        while (v11 > 7);
        a9 = &v12[3 * v10 + 2 * v10 + 2 * v10 + v10];
        a2 = v23;
      }

      if (v11 > 3)
      {
        break;
      }

      if (v11 <= 1)
      {
        if (!v11)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (v11 != 2)
      {
        goto LABEL_20;
      }

LABEL_21:
      *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
      a9 += v10;
LABEL_22:
      *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
      a9 += v10;
LABEL_23:
      a2 += a8;
      a9 += v10 * a7;
      if (!--a6)
      {
        return result;
      }
    }

    if (v11 > 5)
    {
      if (v11 != 6)
      {
        *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
        a9 += v10;
      }

      *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
      a9 += v10;
    }

    else if (v11 == 4)
    {
      goto LABEL_19;
    }

    *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
    a9 += v10;
LABEL_19:
    *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
    a9 += v10;
LABEL_20:
    *a2++ = ((32897 * (a9[1] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 15) & 0x1FF00 | ((32897 * (*a9 ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 23) | ((32897 * (a9[2] ^ 0xFF) * (a9[3] ^ 0xFFu)) >> 7) & 0xFF0000 | 0xFF000000;
    a9 += v10;
    goto LABEL_21;
  }

  return result;
}

uint64_t putRGBcontig8bitCMYKMaptile(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 80);
    v11 = *(result + 30);
    do
    {
      if (a5)
      {
        v12 = a5;
        do
        {
          v13 = a9[3] ^ 0xFF;
          result = a9[2] ^ 0xFFu;
          *a2++ = *(v10 + ((32897 * (*a9 ^ 0xFFu) * v13) >> 23)) | (*(v10 + ((32897 * (a9[1] ^ 0xFFu) * v13) >> 23)) << 8) | (*(v10 + ((32897 * result * v13) >> 23)) << 16) | 0xFF000000;
          a9 += v11;
          --v12;
        }

        while (v12);
      }

      a9 += v11 * a7;
      a2 += a8;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put8bitcmaptile(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 96);
    v11 = *(result + 30);
    do
    {
      if (a5)
      {
        v12 = a5;
        do
        {
          *a2++ = **(v10 + 8 * *a9);
          a9 += v11;
          --v12;
        }

        while (v12);
      }

      a2 += a8;
      a9 += a7;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put4bitcmaptile(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, unsigned int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 96);
    do
    {
      if (a5 < 2)
      {
        v15 = a2;
        if (!a5)
        {
          goto LABEL_8;
        }
      }

      else
      {
        for (i = a5; i > 1; i -= 2)
        {
          v12 = *a9++;
          v13 = *(v10 + 8 * v12);
          *a2 = *v13;
          v14 = v13[1];
          v15 = a2 + 2;
          a2[1] = v14;
          a2 += 2;
        }

        if (!i)
        {
          goto LABEL_8;
        }
      }

      v16 = *a9++;
      *v15++ = **(v10 + 8 * v16);
LABEL_8:
      a2 = &v15[a8];
      a9 += (a7 + (a7 >> 31)) >> 1;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put2bitcmaptile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 96);
    if (a7 >= 0)
    {
      v11 = a7;
    }

    else
    {
      v11 = a7 + 3;
    }

    v12 = v11 >> 2;
    do
    {
      if (a5 < 4)
      {
        v17 = a2;
        i = a5;
        if (a5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        for (i = a5; i > 3; i -= 4)
        {
          v14 = *a9++;
          v15 = *(v10 + 8 * v14);
          *a2 = *v15;
          a2[1] = v15[1];
          a2[2] = v15[2];
          v16 = v15[3];
          v17 = a2 + 4;
          a2[3] = v16;
          a2 += 4;
        }

        if (i)
        {
LABEL_12:
          v18 = *a9++;
          v19 = *(v10 + 8 * v18);
          if (i != 1)
          {
            if (i != 2)
            {
              v20 = *v19++;
              *v17++ = v20;
            }

            v21 = *v19++;
            *v17++ = v21;
          }

          *v17++ = *v19;
        }
      }

      a2 = &v17[a8];
      a9 += v12;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put1bitcmaptile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 96);
    if (a7 >= 0)
    {
      v11 = a7;
    }

    else
    {
      v11 = a7 + 7;
    }

    v12 = v11 >> 3;
    while (a5 < 8)
    {
      v17 = a2;
      i = a5;
      if (a5)
      {
        goto LABEL_12;
      }

LABEL_27:
      a2 = &v17[a8];
      a9 += v12;
      if (!--a6)
      {
        return result;
      }
    }

    for (i = a5; i > 7; i -= 8)
    {
      v14 = *a9++;
      v15 = *(v10 + 8 * v14);
      *a2 = *v15;
      a2[1] = v15[1];
      a2[2] = v15[2];
      a2[3] = v15[3];
      a2[4] = v15[4];
      a2[5] = v15[5];
      a2[6] = v15[6];
      v16 = v15[7];
      v17 = a2 + 8;
      a2[7] = v16;
      a2 += 8;
    }

    if (!i)
    {
      goto LABEL_27;
    }

LABEL_12:
    v18 = *a9++;
    v19 = *(v10 + 8 * v18);
    if (i <= 3)
    {
      if (i == 1)
      {
LABEL_26:
        *v17++ = *v19;
        goto LABEL_27;
      }

      if (i == 2)
      {
LABEL_25:
        v25 = *v19++;
        *v17++ = v25;
        goto LABEL_26;
      }

LABEL_24:
      v24 = *v19++;
      *v17++ = v24;
      goto LABEL_25;
    }

    if (i > 5)
    {
      if (i != 6)
      {
        v20 = *v19++;
        *v17++ = v20;
      }

      v21 = *v19++;
      *v17++ = v21;
    }

    else if (i == 4)
    {
      goto LABEL_23;
    }

    v22 = *v19++;
    *v17++ = v22;
LABEL_23:
    v23 = *v19++;
    *v17++ = v23;
    goto LABEL_24;
  }

  return result;
}

uint64_t put16bitbwtile(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a6)
  {
    v10 = 2 * *(result + 30);
    v11 = *(result + 88);
    do
    {
      if (a5)
      {
        v12 = a5;
        do
        {
          *a2++ = **(v11 + 8 * *(a9 + 1));
          a9 += v10;
          --v12;
        }

        while (v12);
      }

      a2 += a8;
      a9 += a7;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t putagreytile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 88);
    v11 = *(result + 30);
    do
    {
      if (a5)
      {
        v12 = a5;
        do
        {
          *a2++ = ((a9[1] << 24) | 0xFFFFFF) & **(v10 + 8 * *a9);
          a9 += v11;
          --v12;
        }

        while (v12);
      }

      a2 += a8;
      a9 += a7;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t putgreytile(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 88);
    v11 = *(result + 30);
    do
    {
      if (a5)
      {
        v12 = a5;
        do
        {
          *a2++ = **(v10 + 8 * *a9);
          a9 += v11;
          --v12;
        }

        while (v12);
      }

      a2 += a8;
      a9 += a7;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put4bitbwtile(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, unsigned int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 88);
    do
    {
      if (a5 < 2)
      {
        v15 = a2;
        if (!a5)
        {
          goto LABEL_8;
        }
      }

      else
      {
        for (i = a5; i > 1; i -= 2)
        {
          v12 = *a9++;
          v13 = *(v10 + 8 * v12);
          *a2 = *v13;
          v14 = v13[1];
          v15 = a2 + 2;
          a2[1] = v14;
          a2 += 2;
        }

        if (!i)
        {
          goto LABEL_8;
        }
      }

      v16 = *a9++;
      *v15++ = **(v10 + 8 * v16);
LABEL_8:
      a2 = &v15[a8];
      a9 += (a7 + (a7 >> 31)) >> 1;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put2bitbwtile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 88);
    if (a7 >= 0)
    {
      v11 = a7;
    }

    else
    {
      v11 = a7 + 3;
    }

    v12 = v11 >> 2;
    do
    {
      if (a5 < 4)
      {
        v17 = a2;
        i = a5;
        if (a5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        for (i = a5; i > 3; i -= 4)
        {
          v14 = *a9++;
          v15 = *(v10 + 8 * v14);
          *a2 = *v15;
          a2[1] = v15[1];
          a2[2] = v15[2];
          v16 = v15[3];
          v17 = a2 + 4;
          a2[3] = v16;
          a2 += 4;
        }

        if (i)
        {
LABEL_12:
          v18 = *a9++;
          v19 = *(v10 + 8 * v18);
          if (i != 1)
          {
            if (i != 2)
            {
              v20 = *v19++;
              *v17++ = v20;
            }

            v21 = *v19++;
            *v17++ = v21;
          }

          *v17++ = *v19;
        }
      }

      a2 = &v17[a8];
      a9 += v12;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t put1bitbwtile(uint64_t result, int *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, int a8, unsigned __int8 *a9)
{
  if (a6)
  {
    v10 = *(result + 88);
    if (a7 >= 0)
    {
      v11 = a7;
    }

    else
    {
      v11 = a7 + 7;
    }

    v12 = v11 >> 3;
    while (a5 < 8)
    {
      v17 = a2;
      i = a5;
      if (a5)
      {
        goto LABEL_12;
      }

LABEL_27:
      a2 = &v17[a8];
      a9 += v12;
      if (!--a6)
      {
        return result;
      }
    }

    for (i = a5; i > 7; i -= 8)
    {
      v14 = *a9++;
      v15 = *(v10 + 8 * v14);
      *a2 = *v15;
      a2[1] = v15[1];
      a2[2] = v15[2];
      a2[3] = v15[3];
      a2[4] = v15[4];
      a2[5] = v15[5];
      a2[6] = v15[6];
      v16 = v15[7];
      v17 = a2 + 8;
      a2[7] = v16;
      a2 += 8;
    }

    if (!i)
    {
      goto LABEL_27;
    }

LABEL_12:
    v18 = *a9++;
    v19 = *(v10 + 8 * v18);
    if (i <= 3)
    {
      if (i == 1)
      {
LABEL_26:
        *v17++ = *v19;
        goto LABEL_27;
      }

      if (i == 2)
      {
LABEL_25:
        v25 = *v19++;
        *v17++ = v25;
        goto LABEL_26;
      }

LABEL_24:
      v24 = *v19++;
      *v17++ = v24;
      goto LABEL_25;
    }

    if (i > 5)
    {
      if (i != 6)
      {
        v20 = *v19++;
        *v17++ = v20;
      }

      v21 = *v19++;
      *v17++ = v21;
    }

    else if (i == 4)
    {
      goto LABEL_23;
    }

    v22 = *v19++;
    *v17++ = v22;
LABEL_23:
    v23 = *v19++;
    *v17++ = v23;
    goto LABEL_24;
  }

  return result;
}

BOOL initYCbCrConversion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 104) || (v9 = malloc_type_malloc(0x1830uLL, 0x100004000313F17uLL), (*(a1 + 104) = v9) != 0))
  {
    v29 = 0;
    v30 = 0;
    _cg_TIFFGetFieldDefaulted(*a1, 529, a3, a4, a5, a6, a7, a8, &v30);
    _cg_TIFFGetFieldDefaulted(*a1, 532, v10, v11, v12, v13, v14, v15, &v29);
    if (v30[1] == 0.0)
    {
      v23 = *a1;
      v24 = "Invalid values for YCbCrCoefficients tag";
    }

    else
    {
      if (*v29 > -2147500000.0 && *v29 < 2147500000.0)
      {
        v17 = v29[1];
        if (v17 > -2147500000.0 && v17 < 2147500000.0)
        {
          v19 = v29[2];
          if (v19 > -2147500000.0 && v19 < 2147500000.0)
          {
            v21 = v29[3];
            if (v21 > -2147500000.0 && v21 < 2147500000.0)
            {
              v26 = v29[4];
              if (v26 > -2147500000.0 && v26 < 2147500000.0)
              {
                v27 = v29[5];
                if (v27 > -2147500000.0 && v27 < 2147500000.0)
                {
                  return TIFFYCbCrToRGBInit(*(a1 + 104), v30, v29) >= 0;
                }
              }
            }
          }
        }
      }

      v23 = *a1;
      v24 = "Invalid values for ReferenceBlackWhite tag";
    }
  }

  else
  {
    v23 = *a1;
    v24 = "No space for YCbCr->RGB conversion state";
  }

  TIFFErrorExtR(v23, "initYCbCrConversion", v24, a4, a5, a6, a7, a8, v28);
  return 0;
}

void *putcontig8bitYCbCr44tile(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, int a8, uint64_t a9)
{
  v10 = a6;
  v11 = a2;
  v12 = result;
  v13 = a2 + 4 * a5 + 4 * a8;
  v15 = v13 + 4 * a5 + 4 * a8;
  v16 = v15 + 4 * a5 + 4 * a8;
  v17 = 3 * a5 + 4 * a8;
  v18 = 2 * ((v9 & 0xFFFFFFFC) + a7 / 4);
  if (((a6 | a5) & 3) != 0)
  {
    if (a6)
    {
      v46 = v17;
      v42 = v18;
      do
      {
        if (a5)
        {
          v44 = v16;
          v19 = 0;
          v20 = a9 + 18;
          v21 = a5;
          while (1)
          {
            v22 = v20;
            v23 = *(v20 - 2);
            v24 = *(v20 - 1);
            v25 = v20;
            if (v21 != 1)
            {
              if (v21 != 2)
              {
                if (v21 != 3)
                {
                  if (v10 != 1)
                  {
                    if (v10 != 2)
                    {
                      if (v10 != 3)
                      {
                        v50 = 0;
                        v49 = 0;
                        TIFFYCbCrtoRGB(v12[13], *(v20 - 3), v23, v24, &v50 + 1, &v50, &v49);
                        v22 = v25;
                        *(v44 + v19 + 12) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                      }

                      v50 = 0;
                      v49 = 0;
                      TIFFYCbCrtoRGB(v12[13], *(v22 - 7), v23, v24, &v50 + 1, &v50, &v49);
                      v22 = v25;
                      *(v15 + v19 + 12) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                    }

                    v50 = 0;
                    v49 = 0;
                    TIFFYCbCrtoRGB(v12[13], *(v22 - 11), v23, v24, &v50 + 1, &v50, &v49);
                    v22 = v25;
                    *(v13 + v19 + 12) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                  }

                  v50 = 0;
                  v49 = 0;
                  TIFFYCbCrtoRGB(v12[13], *(v22 - 15), v23, v24, &v50 + 1, &v50, &v49);
                  v22 = v25;
                  *(v11 + v19 + 12) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                }

                if (v10 != 1)
                {
                  if (v10 != 2)
                  {
                    if (v10 != 3)
                    {
                      v50 = 0;
                      v49 = 0;
                      TIFFYCbCrtoRGB(v12[13], *(v22 - 4), v23, v24, &v50 + 1, &v50, &v49);
                      v22 = v25;
                      *(v44 + v19 + 8) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                    }

                    v50 = 0;
                    v49 = 0;
                    TIFFYCbCrtoRGB(v12[13], *(v22 - 8), v23, v24, &v50 + 1, &v50, &v49);
                    v22 = v25;
                    *(v15 + v19 + 8) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                  }

                  v50 = 0;
                  v49 = 0;
                  TIFFYCbCrtoRGB(v12[13], *(v22 - 12), v23, v24, &v50 + 1, &v50, &v49);
                  v22 = v25;
                  *(v13 + v19 + 8) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                }

                v50 = 0;
                v49 = 0;
                TIFFYCbCrtoRGB(v12[13], *(v22 - 16), v23, v24, &v50 + 1, &v50, &v49);
                v22 = v25;
                *(v11 + v19 + 8) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
              }

              if (v10 != 1)
              {
                if (v10 != 2)
                {
                  if (v10 != 3)
                  {
                    v50 = 0;
                    v49 = 0;
                    TIFFYCbCrtoRGB(v12[13], *(v22 - 5), v23, v24, &v50 + 1, &v50, &v49);
                    v22 = v25;
                    *(v44 + v19 + 4) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                  }

                  v50 = 0;
                  v49 = 0;
                  TIFFYCbCrtoRGB(v12[13], *(v22 - 9), v23, v24, &v50 + 1, &v50, &v49);
                  v22 = v25;
                  *(v15 + v19 + 4) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                }

                v50 = 0;
                v49 = 0;
                TIFFYCbCrtoRGB(v12[13], *(v22 - 13), v23, v24, &v50 + 1, &v50, &v49);
                v22 = v25;
                *(v13 + v19 + 4) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
              }

              v50 = 0;
              v49 = 0;
              TIFFYCbCrtoRGB(v12[13], *(v22 - 17), v23, v24, &v50 + 1, &v50, &v49);
              v22 = v25;
              *(v11 + v19 + 4) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
            }

            if (v10 != 1)
            {
              if (v10 != 2)
              {
                if (v10 != 3)
                {
                  v50 = 0;
                  v49 = 0;
                  TIFFYCbCrtoRGB(v12[13], *(v22 - 6), v23, v24, &v50 + 1, &v50, &v49);
                  v22 = v25;
                  *(v44 + v19) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
                }

                v50 = 0;
                v49 = 0;
                TIFFYCbCrtoRGB(v12[13], *(v22 - 10), v23, v24, &v50 + 1, &v50, &v49);
                v22 = v25;
                *(v15 + v19) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
              }

              v50 = 0;
              v49 = 0;
              TIFFYCbCrtoRGB(v12[13], *(v22 - 14), v23, v24, &v50 + 1, &v50, &v49);
              v22 = v25;
              *(v13 + v19) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
            }

            v50 = 0;
            v49 = 0;
            a9 = v22;
            result = TIFFYCbCrtoRGB(v12[13], *(v22 - 18), v23, v24, &v50 + 1, &v50, &v49);
            *(v11 + v19) = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
            if (v21 <= 3)
            {
              break;
            }

            v19 += 16;
            v20 = a9 + 18;
            v21 -= 4;
            if (!v21)
            {
              v11 += v19;
              v13 += v19;
              v15 += v19;
              v16 = v44 + v19;
              goto LABEL_40;
            }
          }

          v11 += v19 + 4 * v21;
          v13 += v19 + 4 * v21;
          v15 += v19 + 4 * v21;
          v16 = v44 + v19 + 4 * v21;
        }

LABEL_40:
        v11 += 4 * v46;
        v13 += 4 * v46;
        v15 += 4 * v46;
        a9 += v42;
        v16 += 4 * v46;
        v26 = v10 >= 4;
        v10 -= 4;
      }

      while (v10 != 0 && v26);
    }
  }

  else if (a6 >= 4)
  {
    v39 = a5 >> 2;
    v37 = 4 * v17;
    v38 = v18;
    do
    {
      v43 = v15;
      v45 = v16;
      v40 = v10;
      v27 = 0;
      v28 = (a9 + 8);
      a9 += v38;
      v29 = v39;
      v41 = v13;
      do
      {
        v30 = (v13 + v27);
        v31 = (v43 + v27);
        v48 = a9;
        v32 = v11;
        v33 = (v11 + v27);
        v34 = v28[8];
        v35 = v28[9];
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 8), v34, v35, &v50 + 1, &v50, &v49);
        *v33 = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 7), v34, v35, &v50 + 1, &v50, &v49);
        v33[1] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 6), v34, v35, &v50 + 1, &v50, &v49);
        v33[2] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 5), v34, v35, &v50 + 1, &v50, &v49);
        v33[3] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v11 = v32;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 4), v34, v35, &v50 + 1, &v50, &v49);
        *v30 = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 3), v34, v35, &v50 + 1, &v50, &v49);
        v30[1] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 2), v34, v35, &v50 + 1, &v50, &v49);
        v30[2] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *(v28 - 1), v34, v35, &v50 + 1, &v50, &v49);
        v30[3] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], *v28, v34, v35, &v50 + 1, &v50, &v49);
        *v31 = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], v28[1], v34, v35, &v50 + 1, &v50, &v49);
        v31[1] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], v28[2], v34, v35, &v50 + 1, &v50, &v49);
        v31[2] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], v28[3], v34, v35, &v50 + 1, &v50, &v49);
        v31[3] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v13 = v41;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], v28[4], v34, v35, &v50 + 1, &v50, &v49);
        v36 = (v45 + v27);
        *v36 = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], v28[5], v34, v35, &v50 + 1, &v50, &v49);
        v36[1] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        TIFFYCbCrtoRGB(v12[13], v28[6], v34, v35, &v50 + 1, &v50, &v49);
        v36[2] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v50 = 0;
        v49 = 0;
        result = TIFFYCbCrtoRGB(v12[13], v28[7], v34, v35, &v50 + 1, &v50, &v49);
        v36[3] = HIDWORD(v50) | (v50 << 8) | (v49 << 16) | 0xFF000000;
        v27 += 16;
        a9 = v48 + 18;
        v28 += 18;
        --v29;
      }

      while (v29);
      v11 += v37 + v27;
      v13 = v41 + v37 + v27;
      v15 = v43 + v37 + v27;
      v16 = v45 + v37 + v27;
      v10 = v40 - 4;
    }

    while (v40 - 4 > 3);
  }

  return result;
}