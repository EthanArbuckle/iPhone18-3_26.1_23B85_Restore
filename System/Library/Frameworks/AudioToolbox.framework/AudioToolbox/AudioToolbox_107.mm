uint64_t FLAC__stream_decoder_process_single(void *a1)
{
  v2 = a1;
  v469[1] = *MEMORY[0x1E69E9840];
  v4 = a1 + 1;
  v3 = *a1;
  v5 = v469;
  v6 = 1;
  i = band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds;
LABEL_2:
  while (2)
  {
    while (1)
    {
      v8 = *v3;
      if (*v3 > 2)
      {
        break;
      }

      if (v8)
      {
        if (v8 == 2)
        {
          LODWORD(v468[0]) = -1431655766;
          v9 = *v4;
          if (*(*v4 + 976))
          {
            v10 = v9[129];
            if (v10)
            {
              if (v9[121] >= v10)
              {
                v278 = 4;
                goto LABEL_83;
              }
            }
          }

          v11 = v9[14];
          if ((*(v11 + 24) & 7) == 0 || FLAC__bitreader_read_raw_uint32(v11, v468, 8 - (*(v11 + 24) & 7u)))
          {
            v12 = 0;
            while (1)
            {
              LODWORD(v1) = v12;
              v13 = *v4;
              if (*(*v4 + 4656))
              {
                v14 = *(v13 + 4750);
                LODWORD(v468[0]) = v14;
                *(v13 + 4656) = 0;
              }

              else
              {
                if (!FLAC__bitreader_read_raw_uint32(*(v13 + 112), v468, 8u))
                {
                  return 1;
                }

                v14 = v468[0];
              }

              if (v14 == 255)
              {
                *(*v4 + 4748) = -1;
                if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v468, 8u))
                {
                  return 1;
                }

                if (LODWORD(v468[0]) == 255)
                {
                  v15 = *v4;
                  *(v15 + 4750) = -1;
                  *(v15 + 4656) = 1;
                }

                else if ((v468[0] & 0xFFFFFFFE) == 0xF8)
                {
                  *(*(v2 + 8) + 4749) = v468[0];
                  v3 = *v2;
                  v278 = 3;
                  goto LABEL_83;
                }
              }

              v12 = 1;
              if ((v1 & 1) == 0 && !*(*v4 + 4952))
              {
                (*(*v4 + 64))(v2, 0, *(*v4 + 96));
                v12 = 1;
              }
            }
          }

          return 1;
        }

        if (v8 != 1)
        {
          return 0;
        }

        v466 = -1431655766;
        size = 0xAAAAAAAAAAAAAAAALL;
        if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), &v466, 1u))
        {
          return 0;
        }

        LODWORD(v1) = v466;
        v290 = v466 != 0;
        if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), &size + 1, 7u) || !FLAC__bitreader_read_raw_uint32(*(*v4 + 112), &size, 0x18u))
        {
          return 0;
        }

        LODWORD(i) = HIDWORD(size);
        if (HIDWORD(size) != 3)
        {
          if (!HIDWORD(size))
          {
            v291 = size;
            *v467 = -1431655766;
            v292 = *v4;
            *(v292 + 984) = 0;
            *(v292 + 988) = v290;
            *(v292 + 992) = v291;
            if (!FLAC__bitreader_read_raw_uint32(*(v292 + 112), v467, 0x10u))
            {
              return 0;
            }

            *(*v4 + 1000) = *v467;
            if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v467, 0x10u))
            {
              return 0;
            }

            *(*v4 + 1004) = *v467;
            if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v467, 0x18u))
            {
              return 0;
            }

            *(*v4 + 1008) = *v467;
            if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v467, 0x18u))
            {
              return 0;
            }

            *(*v4 + 1012) = *v467;
            if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v467, 0x14u))
            {
              return 0;
            }

            *(*v4 + 1016) = *v467;
            if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v467, 3u))
            {
              return 0;
            }

            *(*v4 + 1020) = *v467 + 1;
            if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v467, 5u))
            {
              return 0;
            }

            *(*v4 + 1024) = *v467 + 1;
            v293 = (*v4 + 1032);
            if (v293 > *v4 + 1040)
            {
              goto LABEL_897;
            }

            if (!FLAC__bitreader_read_raw_uint64(*(*v4 + 112), v293, 36))
            {
              return 0;
            }

            v294 = *(*v4 + 112);
            v295 = *v4 + 1056;
            *&v468[0] = *v4 + 1040;
            *(&v468[0] + 1) = v295;
            *&v468[1] = *&v468[0];
            if (!FLAC__bitreader_read_byte_block_aligned_no_crc(v294, v468, 0x10u) || !FLAC__bitreader_skip_byte_block_aligned_no_crc(*(*v4 + 112), v291 - 34))
            {
              return 0;
            }

            v296 = *v4;
            *(v296 + 976) = 1;
            if (*(v296 + 1040) == 0)
            {
              *(v296 + 4944) = 0;
            }

            if (*(v296 + 4952))
            {
              goto LABEL_886;
            }

            if (!*(v296 + 1368))
            {
              goto LABEL_886;
            }

            v297 = *(v296 + 56);
            if (!v297)
            {
              goto LABEL_886;
            }

            v298 = *(v296 + 96);
            v299 = v296 + 984;
            goto LABEL_697;
          }

          v330 = *v4;
          v331 = *v4 + 1368;
          v332 = (v331 + 4 * HIDWORD(size));
          if (v332 < v331 || (v332 + 1) > v330 + 1880 || v332 > v332 + 1)
          {
            goto LABEL_897;
          }

          v333 = *v332;
          v334 = size;
          memset(v468 + 8, 0, 184);
          *&v468[0] = __PAIR64__(v290, HIDWORD(size));
          DWORD2(v468[0]) = size;
          if (HIDWORD(size) != 2)
          {
            goto LABEL_652;
          }

          v335 = *(v330 + 112);
          *v467 = &v468[1];
          *&v467[8] = &v468[1] + 4;
          *&v467[16] = &v468[1];
          if (!FLAC__bitreader_read_byte_block_aligned_no_crc(v335, v467, 4u))
          {
            return 0;
          }

          if (v334 > 3)
          {
            v334 -= 4;
            v330 = *v4;
            if (*(*v4 + 1904))
            {
              if ((v333 != 0) != (has_id_filtered_(v330, &v468[1]) == 0))
              {
                v330 = *v4;
                goto LABEL_717;
              }

              goto LABEL_723;
            }

LABEL_652:
            if (!v333)
            {
LABEL_717:
              if (!FLAC__bitreader_skip_byte_block_aligned_no_crc(*(v330 + 112), v334))
              {
                return 0;
              }

              goto LABEL_886;
            }

            if (i <= 2)
            {
              if (i == 1)
              {
                if (!FLAC__bitreader_skip_byte_block_aligned_no_crc(*(*v4 + 112), v334))
                {
                  return 0;
                }

                goto LABEL_830;
              }

              if (i == 2)
              {
LABEL_723:
                v365 = &v468[1] + 1;
                if (v334)
                {
                  v366 = malloc_type_malloc(v334, 0x6388F24CuLL);
                  v367 = &v366[v334];
                  if (!v366)
                  {
                    v367 = 0;
                  }

                  *(&v468[1] + 1) = v366;
                  *&v468[2] = v367;
                  *(&v468[2] + 1) = v366;
                  if (!v366)
                  {
                    **v2 = 8;
LABEL_882:
                    v337 = 1;
LABEL_883:
                    v426 = *(&v468[1] + 1);
                    if (!*(&v468[1] + 1))
                    {
LABEL_885:
                      if (v337)
                      {
                        return 0;
                      }

                      goto LABEL_886;
                    }

LABEL_884:
                    free(v426);
                    goto LABEL_885;
                  }

                  v368 = *(*v4 + 112);
                  *v467 = *(&v468[1] + 8);
                  *&v467[16] = *(&v468[2] + 1);
                  if (!FLAC__bitreader_read_byte_block_aligned_no_crc(v368, v467, v334))
                  {
                    goto LABEL_882;
                  }

LABEL_830:
                  v424 = *v4;
                  if (!*(*v4 + 4952))
                  {
                    v425 = *(v424 + 56);
                    if (v425)
                    {
                      v425(v2, v468, *(v424 + 96));
                    }
                  }

                  v337 = 0;
                  goto LABEL_834;
                }

LABEL_826:
                *v365 = 0;
                v365[1] = 0;
                v365[2] = 0;
                goto LABEL_830;
              }
            }

            else
            {
              if (i <= 4)
              {
                if (i != 3)
                {
                  read_metadata_vorbiscomment_(v2, &v468[1], v334);
                  if (!v336)
                  {
                    v337 = 1;
                    goto LABEL_863;
                  }
                }

                goto LABEL_830;
              }

              if (i == 5)
              {
                if (!read_metadata_cuesheet_(v2, &v468[1]))
                {
                  v337 = 1;
                  goto LABEL_848;
                }

                goto LABEL_830;
              }

              if (i == 6)
              {
                if (!read_metadata_picture_(v2, &v468[1]))
                {
                  v337 = 1;
LABEL_838:
                  if (*(&v468[1] + 1))
                  {
                    free(*(&v468[1] + 1));
                  }

                  if (*&v468[3])
                  {
                    free(*&v468[3]);
                  }

                  v426 = *&v468[6];
                  if (!*&v468[6])
                  {
                    goto LABEL_885;
                  }

                  goto LABEL_884;
                }

                goto LABEL_830;
              }
            }

            v365 = &v468[1];
            if (v334)
            {
              v421 = malloc_type_malloc(v334, 0x5F5286F7uLL);
              v422 = &v421[v334];
              if (!v421)
              {
                v422 = 0;
              }

              *&v468[1] = v421;
              *(&v468[1] + 1) = v422;
              *&v468[2] = v421;
              if (!v421)
              {
                goto LABEL_898;
              }

              v423 = *(*v4 + 112);
              *v467 = v468[1];
              *&v467[16] = *&v468[2];
              if (!FLAC__bitreader_read_byte_block_aligned_no_crc(v423, v467, v334))
              {
                v337 = 1;
                goto LABEL_834;
              }

              goto LABEL_830;
            }

            goto LABEL_826;
          }

LABEL_720:
          v287 = *v2;
          goto LABEL_566;
        }

        v324 = *v4;
        v324[245] = 0;
        LODWORD(i) = size;
        *v467 = -1431655766;
        *&v468[0] = 0xAAAAAAAAAAAAAAAALL;
        v324[294] = 3;
        v324[295] = v290;
        v324[296] = i;
        v324[298] = i / 0x12;
        v325 = *v4;
        v326 = *(*v4 + 1200);
        v327 = *(*v4 + 1192);
        if (v327)
        {
          v328 = 24 * v327;
          v329 = malloc_type_realloc(*(*v4 + 1200), 24 * v327, 0x5C7DB875uLL);
          if (!v329)
          {
            free(v326);
            v325[150] = 0;
            v325[151] = 0;
            v325[152] = 0;
            goto LABEL_720;
          }

          v325[150] = v329;
          v325[151] = &v329[v328];
          v325[152] = v329;
        }

        else
        {
          v338 = malloc_type_realloc(*(*v4 + 1200), 0, 0xFB4BFC99uLL);
          v325[150] = v338;
          v325[151] = v338;
          v325[152] = v338;
          if (!v338)
          {
            goto LABEL_720;
          }
        }

        v339 = *v4;
        v340 = *(*v4 + 1192);
        if (v340)
        {
          v341 = 0;
          v342 = 0;
          while (FLAC__bitreader_read_raw_uint64(*(v339 + 112), v468, 64))
          {
            v343 = *v4;
            v344 = (*(*v4 + 1200) + v341);
            if ((v344 + 3) > *(*v4 + 1208) || v344 > v344 + 3 || v344 < *(*v4 + 1216))
            {
              goto LABEL_897;
            }

            *v344 = *&v468[0];
            if (!FLAC__bitreader_read_raw_uint64(*(v343 + 112), v468, 64))
            {
              break;
            }

            v347 = *v4;
            v348 = *(*v4 + 1200) + v341;
            if (v348 + 24 > *(*v4 + 1208) || v348 > v348 + 24 || v348 < *(*v4 + 1216))
            {
              goto LABEL_897;
            }

            *(v348 + 8) = *&v468[0];
            if (!FLAC__bitreader_read_raw_uint32(*(v347 + 112), v467, 0x10u))
            {
              break;
            }

            v339 = *v4;
            v351 = *(*v4 + 1200) + v341;
            if (v351 + 24 > *(*v4 + 1208) || v351 > v351 + 24 || v351 < *(*v4 + 1216))
            {
              goto LABEL_897;
            }

            *(v351 + 16) = *v467;
            ++v342;
            v354 = *(v339 + 1192);
            v341 += 24;
            if (v342 >= v354)
            {
              v340 = -18 * v354;
              goto LABEL_690;
            }
          }

          return 0;
        }

LABEL_690:
        if (v340 + i)
        {
          if (!FLAC__bitreader_skip_byte_block_aligned_no_crc(*(v339 + 112), v340 + i))
          {
            return 0;
          }

          v339 = *v4;
        }

        *(v339 + 980) = 1;
        if (*(v339 + 4952))
        {
          goto LABEL_886;
        }

        if (!*(v339 + 1380))
        {
          goto LABEL_886;
        }

        v297 = *(v339 + 56);
        if (!v297)
        {
          goto LABEL_886;
        }

        v298 = *(v339 + 96);
        v299 = v339 + 1176;
LABEL_697:
        v297(v2, v299, v298);
LABEL_886:
        if (!v1)
        {
          return 1;
        }

        v441 = *v4;
        v442 = (*v4 + 7832);
        if (v442 > *v4 + 7840)
        {
          goto LABEL_897;
        }

        v443 = v441[3];
        if (!v443 || (v444 = v443(v2, *v4 + 7832, v441[12]), v441 = *(v2 + 8), v444) || (v445 = v441[14], v446 = v445[6], (v446 & 7) != 0))
        {
          v441[979] = 0;
        }

        else
        {
          *v442 -= (32 * (v445[3] - v445[5]) + 8 * v445[4] - v446) >> 3;
        }

        goto LABEL_892;
      }

      v459 = v2;
      v34 = 0;
      *v467 = -1431655766;
      LODWORD(v1) = 1;
      while (1)
      {
        v35 = i;
        v36 = 0;
        while (1)
        {
          v37 = *v4;
          if (*(*v4 + 4656))
          {
            v38 = *(v37 + 4750);
            *v467 = v38;
            *(v37 + 4656) = 0;
          }

          else
          {
            if (!FLAC__bitreader_read_raw_uint32(*(v37 + 112), v467, 8u))
            {
              return 0;
            }

            v38 = *v467;
          }

          if (v38 == FLAC__STREAM_SYNC_STRING[v34])
          {
            ++v34;
            LODWORD(v1) = 1;
            goto LABEL_71;
          }

          if (v36 == 3)
          {
            return 0;
          }

          if (v38 != ID3V2_TAG_[v36])
          {
            break;
          }

          v34 = 0;
          if (++v36 == 3)
          {
            LODWORD(v468[0]) = -1431655766;
            if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v468, 0x18u))
            {
              return 0;
            }

            v39 = 0;
            v40 = 4;
            do
            {
              if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v468, 8u))
              {
                return 0;
              }

              v39 = v468[0] & 0x7F | (v39 << 7);
              --v40;
            }

            while (v40);
            v41 = FLAC__bitreader_skip_byte_block_aligned_no_crc(*(*v4 + 112), v39);
            v34 = 0;
            v6 = 1;
            if (!v41)
            {
              return 0;
            }
          }
        }

        if (v38 != 255)
        {
          goto LABEL_69;
        }

        *(*v4 + 4748) = -1;
        if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v467, 8u))
        {
          return 0;
        }

        if (*v467 == 255)
        {
          v42 = *v4;
          *(v42 + 4750) = -1;
          *(v42 + 4656) = 1;
          goto LABEL_69;
        }

        if ((*v467 & 0xFFFFFFFE) == 0xF8)
        {
          break;
        }

LABEL_69:
        if (v1)
        {
          i = v35;
          if (!*(*v4 + 4952))
          {
            (*(*v4 + 64))(v459, 0, *(*v4 + 96));
          }

          LODWORD(v1) = 0;
          v34 = 0;
        }

        else
        {
          v34 = 0;
LABEL_71:
          i = v35;
        }

        if (v34 >= 4)
        {
          v278 = 1;
          goto LABEL_527;
        }
      }

      *(*v4 + 4749) = v467[0];
      v278 = 3;
      i = v35;
LABEL_527:
      v2 = v459;
      v3 = *v459;
LABEL_83:
      *v3 = v278;
    }

    if (v8 == 3)
    {
      LODWORD(size) = -1431655766;
      v16 = *v4 + 4096;
      v17 = &FLAC__crc16_table[*(*v4 + 4748)];
      v18 = v17 + 1;
      if (v17 < FLAC__crc16_table || v18 > i || v17 > v18)
      {
        goto LABEL_897;
      }

      v21 = *v17;
      v22 = &FLAC__crc16_table[*(*v4 + 4749) ^ (v21 >> 8)];
      v23 = v22 + 2;
      v24 = v22 < FLAC__crc16_table || v23 > i;
      if (v24 || v22 > v23)
      {
        goto LABEL_897;
      }

      v464 = v5;
      v26 = *v22 ^ (v21 << 8);
      v27 = *(*v4 + 112);
      v28 = v27[6];
      v27[7] = v26;
      v27[8] = v28;
      v466 = -1431655766;
      *(&v468[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      *(v468 + 2) = 0xAAAAAAAAAAAAAAAALL;
      LOBYTE(v468[0]) = *(v16 + 652);
      v29 = *(v16 + 653);
      BYTE1(v468[0]) = v29;
      LODWORD(v1) = (v29 >> 1) & 1;
      v30 = 2;
      do
      {
        if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), &v466, 8u))
        {
          return 0;
        }

        if (v466 == 255)
        {
          v43 = *v4;
          v44 = -1;
          goto LABEL_78;
        }

        if ((v468 + v30) >= &v468[1] || (v468 + v30) < v468)
        {
          goto LABEL_897;
        }

        *(v468 + v30++) = v466;
      }

      while (v30 != 4);
      v31 = BYTE2(v468[0]);
      v32 = BYTE2(v468[0]) >> 4;
      v6 = 1;
      if (v32 > 0xF)
      {
        goto LABEL_87;
      }

      v33 = 1 << v32;
      if (((1 << v32) & 0xFF00) != 0)
      {
        v32 = 0;
        *(*v4 + 1920) = v33;
        goto LABEL_90;
      }

      if ((v33 & 0x3C) != 0)
      {
        *(*v4 + 1920) = 144 << v32;
        v32 = 0;
        goto LABEL_90;
      }

      if ((v33 & 0xC0) == 0)
      {
LABEL_87:
        if (v32)
        {
          v32 = 0;
          *(*v4 + 1920) = 192;
        }

        else
        {
          LODWORD(v1) = 1;
        }
      }

LABEL_90:
      v45 = v31 & 0xF;
      switch(v31 & 0xF)
      {
        case 1:
          v46 = *v4;
          v48 = 22664;
          goto LABEL_96;
        case 2:
          v46 = *v4;
          v49 = -20208;
          goto LABEL_106;
        case 3:
          v46 = *v4;
          v49 = -4608;
LABEL_106:
          v47 = v49 | 0x20000;
          goto LABEL_109;
        case 4:
          v46 = *v4;
          v47 = 8000;
          goto LABEL_109;
        case 5:
          v46 = *v4;
          v47 = 16000;
          goto LABEL_109;
        case 6:
          v46 = *v4;
          v47 = 22050;
          goto LABEL_109;
        case 7:
          v46 = *v4;
          v47 = 24000;
          goto LABEL_109;
        case 8:
          v46 = *v4;
          v47 = 32000;
          goto LABEL_109;
        case 9:
          v46 = *v4;
          v47 = 44100;
          goto LABEL_109;
        case 0xA:
          v46 = *v4;
          v47 = 48000;
          goto LABEL_109;
        case 0xB:
          v46 = *v4;
          v48 = 30464;
LABEL_96:
          v47 = v48 | 0x10000;
          goto LABEL_109;
        case 0xC:
        case 0xD:
        case 0xE:
          goto LABEL_110;
        case 0xF:
          if (!*(*v4 + 4952))
          {
            (*(*v4 + 64))(v2, 1, *(*v4 + 96));
          }

          v3 = *v2;
          **v2 = 2;
          goto LABEL_203;
        default:
          v46 = *v4;
          if (*(*v4 + 976))
          {
            v47 = *(v46 + 1016);
LABEL_109:
            v45 = 0;
            *(v46 + 1924) = v47;
          }

          else
          {
            v45 = 0;
            LODWORD(v1) = 1;
          }

LABEL_110:
          v50 = BYTE3(v468[0]);
          if ((SBYTE3(v468[0]) & 0x80000000) == 0)
          {
            v51 = 0;
            v52 = *v4;
            *(*v4 + 1928) = (BYTE3(v468[0]) >> 4) + 1;
LABEL_112:
            *(v52 + 1932) = v51;
            v53 = v1 == 0;
            goto LABEL_113;
          }

          v52 = *v4;
          *(*v4 + 1928) = 2;
          v57 = (v50 >> 4) & 7;
          switch(v57)
          {
            case 0:
              v51 = 1;
              goto LABEL_112;
            case 2:
              v51 = 3;
              goto LABEL_112;
            case 1:
              v51 = 2;
              goto LABEL_112;
          }

          v53 = 0;
LABEL_113:
          v54 = 0;
          v55 = (v50 >> 1) & 7;
          v466 = v55;
          if (v55 > 3)
          {
            if (((v50 >> 1) & 7) > 5)
            {
              if (v55 != 6)
              {
                goto LABEL_132;
              }

              v56 = 24;
            }

            else if (v55 == 4)
            {
              v56 = 16;
            }

            else
            {
              v56 = 20;
            }

            goto LABEL_131;
          }

          if (((v50 >> 1) & 7) > 1)
          {
            if (v55 != 2)
            {
              goto LABEL_132;
            }

            v56 = 12;
            goto LABEL_131;
          }

          if (v55)
          {
            v56 = 8;
            goto LABEL_131;
          }

          if (*(v52 + 976))
          {
            v56 = *(v52 + 1024);
LABEL_131:
            *(v52 + 1936) = v56;
            v54 = v53;
            goto LABEL_132;
          }

          v54 = 0;
LABEL_132:
          v460 = v45;
          v455 = v54;
          v457 = v50;
          if ((BYTE1(v468[0]) & 1) != 0 || *(v52 + 976) && *(v52 + 1000) != *(v52 + 1004))
          {
            i = *(v52 + 112);
            *v467 = -1431655766;
            if (!FLAC__bitreader_read_raw_uint32(i, v467, 8u))
            {
              return 0;
            }

            v60 = *v467;
            BYTE4(v468[0]) = v467[0];
            if ((v467[0] & 0x80) == 0)
            {
              LODWORD(v1) = 5;
              i = band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds;
LABEL_142:
              v61 = *v4;
              *(v61 + 1940) = 1;
              *(v61 + 1944) = v60;
              goto LABEL_143;
            }

            if ((v467[0] & 0x20) != 0)
            {
              if ((v467[0] & 0x10) == 0)
              {
                v79 = v467[0] & 0xF;
                v80 = 2;
                goto LABEL_548;
              }

              if ((v467[0] & 8) == 0)
              {
                v79 = v467[0] & 7;
                v80 = 3;
                goto LABEL_548;
              }

              if ((v467[0] & 4) == 0)
              {
                v79 = v467[0] & 3;
                v80 = 4;
                goto LABEL_548;
              }

              v79 = v467[0] & 1;
              if ((v467[0] & 2) == 0)
              {
                v80 = 5;
                goto LABEL_548;
              }

              if ((v467[0] & 1) == 0)
              {
                v80 = 6;
                goto LABEL_548;
              }

              LODWORD(v1) = 5;
            }

            else
            {
              v79 = v467[0] & 0x1F;
              v80 = 1;
LABEL_548:
              LODWORD(v1) = v80 + 5;
              v283 = -v80;
              v284 = 5;
              while (1)
              {
                if (!FLAC__bitreader_read_raw_uint32(i, v467, 8u))
                {
                  return 0;
                }

                if ((v468 + v284) >= &v468[1] || (v468 + v284) < v468)
                {
                  goto LABEL_897;
                }

                v285 = v467[0];
                *(v468 + v284) = v467[0];
                if ((v285 & 0xC0) != 0x80)
                {
                  break;
                }

                v60 = v285 & 0x3F | (v79 << 6);
                ++v284;
                v79 = v60;
                if (v283 + v284 == 5)
                {
                  i = band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds;
                  if (v60 == -1)
                  {
                    goto LABEL_558;
                  }

                  goto LABEL_142;
                }
              }

              LODWORD(v1) = v284 + 1;
            }

LABEL_557:
            i = band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds;
LABEL_558:
            v286 = v468 + (v1 - 1);
            if (v286 >= &v468[1] || v286 < v468)
            {
              goto LABEL_897;
            }

            v44 = *v286;
            v43 = *v4;
LABEL_78:
            *(v43 + 4750) = v44;
            v6 = 1;
            *(v43 + 4656) = 1;
            if (!*(v43 + 4952))
            {
              (*(v43 + 64))(v2, 1, *(v43 + 96));
            }

            v3 = *v2;
            **v2 = 2;
            v5 = v464;
            goto LABEL_203;
          }

          i = *(v52 + 112);
          *v467 = -1431655766;
          if (!FLAC__bitreader_read_raw_uint32(i, v467, 8u))
          {
            return 0;
          }

          v58 = *v467;
          BYTE4(v468[0]) = v467[0];
          if ((v467[0] & 0x80) == 0)
          {
            v466 = *v467;
            LODWORD(v1) = 5;
            i = band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds;
            goto LABEL_138;
          }

          if ((v467[0] & 0x20) != 0)
          {
            if ((v467[0] & 0x10) != 0)
            {
              if ((v467[0] & 8) != 0)
              {
                if ((v467[0] & 4) != 0)
                {
                  v84 = 5;
                  if ((v467[0] & 2) != 0)
                  {
                    goto LABEL_545;
                  }

                  v85 = 1;
                }

                else
                {
                  v84 = 4;
                  v85 = 3;
                }
              }

              else
              {
                v84 = 3;
                v85 = 7;
              }
            }

            else
            {
              v84 = 2;
              v85 = 15;
            }
          }

          else
          {
            v84 = 1;
            v85 = 31;
          }

          v279 = *v467 & v85;
          LODWORD(v1) = v84 + 5;
          v280 = -v84;
          v281 = 5;
          do
          {
            if (!FLAC__bitreader_read_raw_uint32(i, v467, 8u))
            {
              return 0;
            }

            if ((v468 + v281) >= &v468[1] || (v468 + v281) < v468)
            {
              goto LABEL_897;
            }

            v282 = v467[0];
            *(v468 + v281) = v467[0];
            if ((v282 & 0xC0) != 0x80)
            {
              v84 = v281 + 1;
LABEL_545:
              v466 = -1;
              LODWORD(v1) = v84;
              goto LABEL_557;
            }

            v58 = v282 & 0x3F | (v279 << 6);
            ++v281;
            v279 = v58;
          }

          while (v280 + v281 != 5);
          v466 = v58;
          i = band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds;
          if (v58 == -1)
          {
            goto LABEL_558;
          }

LABEL_138:
          v59 = *v4;
          *(v59 + 1940) = 0;
          *(v59 + 1944) = v58;
LABEL_143:
          v62 = *v4;
          if (v32)
          {
            if (!FLAC__bitreader_read_raw_uint32(*(v62 + 112), &v466, 8u))
            {
              return 0;
            }

            v63 = v468 + v1;
            if (v63 >= &v468[1] || v63 < v468)
            {
              goto LABEL_897;
            }

            v64 = v466;
            v65 = v1 + 1;
            *v63 = v466;
            if (v32 == 7)
            {
              *v467 = -1431655766;
              if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v467, 8u))
              {
                return 0;
              }

              v66 = v468 + v65;
              if (v66 >= &v468[1] || v66 < v468)
              {
                goto LABEL_897;
              }

              v65 = v1 + 2;
              v67 = *v467;
              *v66 = v467[0];
              v64 = v67 | (v64 << 8);
              v466 = v64;
            }

            v62 = *v4;
            *(*v4 + 1920) = v64 + 1;
            LODWORD(v1) = v65;
          }

          if (v460)
          {
            if (!FLAC__bitreader_read_raw_uint32(*(v62 + 112), &v466, 8u))
            {
              return 0;
            }

            v68 = v468 + v1;
            if (v68 >= &v468[1] || v68 < v468)
            {
              goto LABEL_897;
            }

            v69 = v466;
            LODWORD(i) = v1 + 1;
            *v68 = v466;
            if (v460 == 12)
            {
              v72 = 1000 * v69;
            }

            else
            {
              *v467 = -1431655766;
              if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v467, 8u))
              {
                return 0;
              }

              v70 = v468 + i;
              if (v70 >= &v468[1] || v70 < v468)
              {
                goto LABEL_897;
              }

              LODWORD(i) = v1 + 2;
              v71 = *v467;
              *v70 = v467[0];
              v72 = v71 | (v69 << 8);
              v466 = v72;
              if (v460 != 13)
              {
                v72 *= 10;
              }
            }

            v62 = *v4;
            *(*v4 + 1924) = v72;
            LODWORD(v1) = i;
            i = band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds;
          }

          if (!FLAC__bitreader_read_raw_uint32(*(v62 + 112), &v466, 8u))
          {
            return 0;
          }

          if (v1 > 0x10)
          {
            goto LABEL_897;
          }

          v73 = 0;
          if (v1)
          {
            v74 = v1;
            v75 = v468;
            v5 = v464;
            do
            {
              v76 = *v75++;
              v77 = &FLAC__crc8_table[v76 ^ v73];
              v78 = v77 < FLAC__crc16_table && v77 >= FLAC__crc8_table;
              if (!v78)
              {
                goto LABEL_897;
              }

              v73 = *v77;
              --v74;
            }

            while (v74);
          }

          else
          {
            v5 = v464;
          }

          v81 = *v4;
          v6 = 1;
          if (v73 != v466)
          {
            if (!*(v81 + 4952))
            {
              (*(v81 + 64))(v2, 1, *(v81 + 96));
            }

            goto LABEL_202;
          }

          *(v81 + 964) = 0;
          if (*(v81 + 1940))
          {
            goto LABEL_183;
          }

          v82 = *(v81 + 1944);
          v466 = v82;
          *(v81 + 1940) = 1;
          v83 = *(v81 + 960);
          if (v83)
          {
            goto LABEL_182;
          }

          if (!*(v81 + 976))
          {
            if (v82)
            {
              v83 = *(v81 + 1920);
LABEL_182:
              *(v81 + 1944) = v83 * v82;
            }

            else
            {
              *(v81 + 1944) = 0;
              v276 = *v4;
              v277 = *(*v4 + 1920);
LABEL_562:
              *(v276 + 964) = v277;
            }

LABEL_183:
            if ((v457 & 1) != 0 || !v455)
            {
              v81 = *v4;
              goto LABEL_192;
            }

            v3 = *v2;
            goto LABEL_203;
          }

          v275 = *(v81 + 1000);
          if (v275 == *(v81 + 1004))
          {
            *(v81 + 1944) = v275 * v82;
            v276 = *v4;
            v277 = *(*v4 + 1004);
            goto LABEL_562;
          }

LABEL_192:
          if (*(v81 + 4952))
          {
            ++*(v81 + 7848);
          }

          else
          {
            (*(v81 + 64))(v2, 3, *(v81 + 96));
          }

LABEL_202:
          v3 = *v2;
          **v2 = 2;
LABEL_203:
          if (*v3 == 2)
          {
            continue;
          }

          v86 = *v4;
          v87 = *(*v4 + 1920);
          v1 = *(*v4 + 1928);
          if (*(*v4 + 952) < v87 || *(v86 + 956) < v1)
          {
            v88 = v2;
            for (i = 0; i != 192; i += 24)
            {
              v89 = *v4;
              v90 = *v4 + i;
              v91 = (v90 + 120);
              v92 = v90 + 144;
              if (v92 > *v4 + 312 || v91 > v92)
              {
                goto LABEL_897;
              }

              v94 = *v91;
              if (v94)
              {
                free((v94 - 16));
                v95 = *v4 + i;
                v96 = (v95 + 120);
                v97 = v95 + 144;
                if (v97 > *v4 + 312 || v96 > v97)
                {
                  goto LABEL_897;
                }

                *v96 = 0;
                v96[1] = 0;
                v96[2] = 0;
                v89 = *v4;
              }

              v99 = v89 + 4944;
              v100 = v89 + i;
              if (v100 + 4776 > v99 || v100 + 4752 > v100 + 4776)
              {
                goto LABEL_897;
              }

              v102 = *(v100 + 4752);
              if (v102)
              {
                free(v102);
                v103 = *v4;
                v104 = *v4 + i;
                v105 = v104 + 4776;
                if (v104 + 4776 > *v4 + 4944)
                {
                  goto LABEL_897;
                }

                v106 = (v104 + 4752);
                if (v106 > v105)
                {
                  goto LABEL_897;
                }

                v107 = v103 + 504;
                v108 = v103 + i;
                v109 = v108 + 336;
                if (v108 + 336 > v107)
                {
                  goto LABEL_897;
                }

                v110 = (v108 + 312);
                if (v110 > v109)
                {
                  goto LABEL_897;
                }

                *v110 = 0;
                v110[1] = 0;
                v110[2] = 0;
                v106[1] = 0;
                v106[2] = 0;
                *v106 = 0;
              }
            }

            if (v1)
            {
              v111 = 0;
              i = 4 * v87 + 16;
              v2 = 24 * v1;
              while (1)
              {
                v112 = malloc_type_malloc(4 * v87 + 16, 0x2A28F55DuLL);
                if (!v112)
                {
                  break;
                }

                *v112 = 0;
                v112[1] = 0;
                if (v112 >= v112 + 2)
                {
                  goto LABEL_897;
                }

                v113 = (*v4 + v111);
                v114 = v113 + 15;
                v115 = (v113 + 18);
                v116 = (v113 + 15) < *v4 + 120 || v115 > *v4 + 312;
                if (v116 || v114 > v115)
                {
                  goto LABEL_897;
                }

                *v114 = v112 + 2;
                v113[16] = v112 + i;
                v113[17] = v112;
                v118 = *v4;
                v119 = *v4 + 4752;
                v120 = *v4 + 4944;
                *&v468[0] = v119 + v111;
                *(&v468[0] + 1) = v120;
                *&v468[1] = v119;
                *v467 = v118 + v111 + 312;
                *&v467[8] = v118 + 504;
                *&v467[16] = v118 + 312;
                FLAC__memory_alloc_aligned_int32_array(v87, v468, v467);
                if (!v121)
                {
                  break;
                }

                v111 += 24;
                if (v2 == v111)
                {
                  goto LABEL_241;
                }
              }

              v287 = *v88;
LABEL_566:
              v288 = 8;
LABEL_567:
              *v287 = v288;
              return 0;
            }

LABEL_241:
            v86 = *v4;
            *(v86 + 952) = v87;
            *(v86 + 956) = v1;
            LODWORD(v1) = *(v86 + 1928);
            v2 = v88;
            v6 = 1;
          }

          if (v1)
          {
            v1 = 0;
            v122 = 1996;
            v123 = 2004;
            v124 = 2132;
            do
            {
              v454 = v123;
              v456 = v124;
              v458 = v122;
              v125 = *(v86 + 1936);
              v126 = *(v86 + 1932);
              if (v1 == 1)
              {
                v127 = v125 + 1;
              }

              else
              {
                v127 = *(v86 + 1936);
              }

              if (v1)
              {
                v128 = *(v86 + 1936);
              }

              else
              {
                v128 = v125 + 1;
              }

              if (v1 == 1)
              {
                v129 = v125 + 1;
              }

              else
              {
                v129 = *(v86 + 1936);
              }

              if (v126 == 1)
              {
                v125 = v129;
              }

              if (v126 == 2)
              {
                v125 = v128;
              }

              if (v126 == 3)
              {
                v130 = v127;
              }

              else
              {
                v130 = v125;
              }

              HIDWORD(size) = -1431655766;
              if (!FLAC__bitreader_read_raw_uint32(*(v86 + 112), &size + 1, 8u))
              {
                return 0;
              }

              v131 = HIDWORD(size);
              LODWORD(i) = BYTE4(size) & 0xFE;
              HIDWORD(size) = i;
              if (v131)
              {
                v132 = v130;
                v133 = v2;
                v134 = v131;
                LODWORD(v468[0]) = -1431655766;
                if (!FLAC__bitreader_read_unary_unsigned(*(*v4 + 112), v468))
                {
                  return 0;
                }

                v135 = *v4;
                v136 = *v4 + 1960;
                v137 = v136 + 336 * v1;
                v138 = v137 + 336;
                v140 = v137 < v136 || v138 > *v4 + 4648 || v137 > v138;
                v131 = v134;
                v2 = v133;
                if (v140)
                {
                  goto LABEL_897;
                }

                v141 = LODWORD(v468[0]) + 1;
                *(v137 + 328) = LODWORD(v468[0]) + 1;
                v130 = v132 - v141;
                if (v132 <= v141)
                {
                  return 0;
                }

                if ((v131 & 0x80) != 0)
                {
LABEL_301:
                  if (!*(v135 + 4952))
                  {
                    (*(v135 + 64))(v2, 0, *(v135 + 96));
                  }

                  goto LABEL_441;
                }
              }

              else
              {
                v135 = *v4;
                v160 = *v4 + 1960;
                v161 = v160 + 336 * v1;
                v162 = v161 + 336;
                if (v161 < v160 || v162 > *v4 + 4648 || v161 > v162)
                {
                  goto LABEL_897;
                }

                *(v161 + 328) = 0;
                if ((v131 & 0x80) != 0)
                {
                  goto LABEL_301;
                }
              }

              if (i == 2)
              {
                v450 = v131;
                v452 = v1;
                v461 = v2;
                i = v135 + 1960 + 336 * v1;
                if (i < v135 + 1960)
                {
                  goto LABEL_897;
                }

                if (i + 336 > v135 + 4648)
                {
                  goto LABEL_897;
                }

                if (i > i + 336)
                {
                  goto LABEL_897;
                }

                v165 = (v135 + 312 + 24 * v1);
                if (v165 < v135 + 312 || (v165 + 3) > v135 + 504 || v165 > v165 + 3)
                {
                  goto LABEL_897;
                }

                v166 = *v165;
                v2 = v165[1];
                v167 = v165[2];
                *i = 1;
                *(i + 8) = v166;
                *(i + 16) = v2;
                *(i + 24) = v167;
                v168 = *v4;
                if (*(*v4 + 1920))
                {
                  v169 = 0;
                  v170 = 0;
                  LODWORD(v1) = 1 << (v130 - 1);
                  do
                  {
                    v171 = *(v168 + 112);
                    LODWORD(v468[0]) = -1431655766;
                    if (!FLAC__bitreader_read_raw_uint32(v171, v468, v130))
                    {
                      return 0;
                    }

                    v172 = v166 + v169;
                    v173 = v166 + v169 + 4;
                    if (v173 > v2 || v172 > v173 || v172 < v167)
                    {
                      goto LABEL_897;
                    }

                    *(v166 + 4 * v170++) = (LODWORD(v468[0]) ^ v1) - v1;
                    v168 = *v4;
                    v174 = *(*v4 + 1920);
                    v169 += 4;
                  }

                  while (v170 < v174);
                  v175 = 4 * v174;
                }

                else
                {
                  v175 = 0;
                }

                v186 = (v168 + 120 + 24 * v452);
                if (v186 < v168 + 120)
                {
                  goto LABEL_897;
                }

                if ((v186 + 3) > v168 + 312)
                {
                  goto LABEL_897;
                }

                if (v186 > v186 + 3)
                {
                  goto LABEL_897;
                }

                v187 = *(i + 8);
                v188 = *(i + 16);
                if (v187 > v188)
                {
                  goto LABEL_897;
                }

                if (*(i + 24) > v187)
                {
                  goto LABEL_897;
                }

                if (v175 > v188 - v187)
                {
                  goto LABEL_897;
                }

                i = *v186;
                v189 = v186[1];
                if (*v186 > v189)
                {
                  goto LABEL_897;
                }

                if (v186[2] > i)
                {
                  goto LABEL_897;
                }

                if (v175 > v189 - i)
                {
                  goto LABEL_897;
                }

                memcpy(i, v187, v175);
                v2 = v461;
                v153 = v450;
                v1 = v452;
                if (i > i + v175)
                {
                  goto LABEL_897;
                }
              }

              else
              {
                if (i)
                {
                  if (i <= 0xF)
                  {
                    goto LABEL_318;
                  }

                  v451 = v131;
                  if (i > 0x18)
                  {
                    if (i <= 0x3F)
                    {
LABEL_318:
                      if (*(v135 + 4952))
                      {
                        ++*(v135 + 7848);
                      }

                      else
                      {
                        (*(v135 + 64))(v2, 3, *(v135 + 96));
                      }

                      v6 = 1;
                      goto LABEL_441;
                    }

                    v453 = v1;
                    v463 = v135 + 1960 + 336 * v1;
                    if (v463 < v135 + 1960)
                    {
                      goto LABEL_897;
                    }

                    if (v463 + 336 > v135 + 4648)
                    {
                      goto LABEL_897;
                    }

                    if (v463 > v463 + 336)
                    {
                      goto LABEL_897;
                    }

                    *v467 = -1431655766;
                    *v463 = 3;
                    v204 = v135 + 312 + 24 * v1;
                    if (v204 < v135 + 312 || v204 + 24 > v135 + 504 || v204 > v204 + 24)
                    {
                      goto LABEL_897;
                    }

                    v448 = (v131 >> 1) & 0x1F;
                    v205 = v448 + 1;
                    v206 = *v204;
                    *(v463 + 320) = *(v204 + 16);
                    *(v463 + 304) = v206;
                    *(v463 + 32) = v205;
                    i = v463 + 172;
                    v1 = v463 + 300;
                    v207 = (v135 + v456);
                    __n = v205;
                    do
                    {
                      v208 = *(*v4 + 112);
                      LODWORD(v468[0]) = -1431655766;
                      if (!FLAC__bitreader_read_raw_uint32(v208, v468, v130))
                      {
                        return 0;
                      }

                      if (v207 < i || (v207 + 1) > v1 || v207 > v207 + 1)
                      {
                        goto LABEL_897;
                      }

                      *v207++ = (LODWORD(v468[0]) ^ (1 << (v130 - 1))) - (1 << (v130 - 1));
                      --v205;
                    }

                    while (v205);
                    v1 = v453;
                    if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v467, 4u))
                    {
                      return 0;
                    }

                    v6 = 1;
                    if (*v467 == 15)
                    {
                      goto LABEL_447;
                    }

                    *(v463 + 36) = *v467 + 1;
                    v209 = *(*v4 + 112);
                    LODWORD(v468[0]) = -1431655766;
                    if (!FLAC__bitreader_read_raw_uint32(v209, v468, 5u))
                    {
                      return 0;
                    }

                    if ((LODWORD(v468[0]) ^ 0x10) - 16 < 0)
                    {
LABEL_447:
                      v215 = *v4;
                    }

                    else
                    {
                      *(v463 + 40) = (LODWORD(v468[0]) ^ 0x10) - 16;
                      v1 = v135 + v454;
                      v210 = v448 + 1;
                      do
                      {
                        v211 = *(*v4 + 112);
                        v212 = *(v463 + 36);
                        LODWORD(v468[0]) = -1431655766;
                        if (!FLAC__bitreader_read_raw_uint32(v211, v468, v212))
                        {
                          return 0;
                        }

                        if (v1 < v463 + 44 || v1 + 4 > i || v1 > v1 + 4)
                        {
                          goto LABEL_897;
                        }

                        *v1 = (LODWORD(v468[0]) ^ (1 << (v212 - 1))) - (1 << (v212 - 1));
                        v1 += 4;
                        --v210;
                      }

                      while (v210);
                      v1 = v453;
                      if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), v467, 2u))
                      {
                        return 0;
                      }

                      v213 = *v467;
                      *(v463 + 8) = *v467;
                      v214 = *v4;
                      v6 = 1;
                      if (v213 > 1)
                      {
                        if (*(v214 + 4952))
                        {
                          ++*(v214 + 7848);
                        }

                        else
                        {
                          (*(v214 + 64))(v2, 3, *(v214 + 96));
                        }

                        **v2 = 2;
                        goto LABEL_477;
                      }

                      if (!FLAC__bitreader_read_raw_uint32(*(v214 + 112), v467, 4u))
                      {
                        return 0;
                      }

                      v215 = *v4;
                      v216 = *v467;
                      if (*(*v4 + 1920) >> v467[0] > v448)
                      {
                        *(v463 + 16) = *v467;
                        v217 = *v4 + 504;
                        v218 = v217 + 56 * v453;
                        if (v218 && (v218 < v217 || v218 + 56 > *v4 + 952 || v218 > v218 + 56))
                        {
                          goto LABEL_897;
                        }

                        *(v463 + 24) = v218;
                        v219 = *(v463 + 8);
                        v1 = v453;
                        if (v219 < 2)
                        {
                          v220 = *v4;
                          v221 = *v4 + 504;
                          v222 = v221 + 56 * v453;
                          if (v222 && (v222 < v221 || v222 + 56 > v220 + 952 || v222 > v222 + 56))
                          {
                            goto LABEL_897;
                          }

                          v1 = v453;
                          v223 = v220 + 24 * v453;
                          *&v468[1] = *(v223 + 328);
                          v468[0] = *(v223 + 312);
                          read_residual_partitioned_rice_(v2, __n, v216, v222, v468, v219 == 1);
                          if (!v224)
                          {
                            return 0;
                          }
                        }

                        v225 = *v4 + 120;
                        v226 = v225 + 24 * v1;
                        if (v226 < v225)
                        {
                          goto LABEL_897;
                        }

                        if (v226 + 24 > *v4 + 312)
                        {
                          goto LABEL_897;
                        }

                        if (v226 > v226 + 24)
                        {
                          goto LABEL_897;
                        }

                        v228 = *v226;
                        v227 = *(v226 + 8);
                        v78 = v227 >= *v226;
                        v229 = v227 - *v226;
                        if (!v78)
                        {
                          goto LABEL_897;
                        }

                        if (*(v226 + 16) > v228)
                        {
                          goto LABEL_897;
                        }

                        if (4 * __n > v229)
                        {
                          goto LABEL_897;
                        }

                        LODWORD(i) = 4 * __n;
                        memcpy(v228, (v463 + 172), 4 * __n);
                        if (v228 > &v228[4 * __n])
                        {
                          goto LABEL_897;
                        }

                        v230 = *(v463 + 36);
                        if ((__clz(__n) ^ 0x1F) + v130 + v230 > 0x20)
                        {
                          v262 = *v4;
                          v263 = *v4 + 312;
                          v264 = (v263 + 24 * v453);
                          if (v264 < v263)
                          {
                            goto LABEL_897;
                          }

                          if ((v264 + 3) > v262 + 504)
                          {
                            goto LABEL_897;
                          }

                          if (v264 > v264 + 3)
                          {
                            goto LABEL_897;
                          }

                          v265 = v262 + 120 + 24 * v453;
                          if (v265 < v262 + 120)
                          {
                            goto LABEL_897;
                          }

                          if (v265 + 24 > v263)
                          {
                            goto LABEL_897;
                          }

                          if (v265 > v265 + 24)
                          {
                            goto LABEL_897;
                          }

                          v266 = *v264;
                          v267 = v264[1];
                          if (*v264 > v267 || v264[2] > v266 || (*(v262 + 1920) - __n) > ((v267 - v266) >> 2))
                          {
                            goto LABEL_897;
                          }

                          v240 = *(v265 + 8);
                          v241 = *v265 + 4 * __n;
                          v242 = *(v262 + 80);
                        }

                        else
                        {
                          v231 = *v4;
                          v232 = *v4 + 312;
                          v233 = (v232 + 24 * v453);
                          v236 = (v233 + 3) <= *v4 + 504 && v233 <= v233 + 3 && v233 >= v232;
                          if (v130 > 0x10 || v230 > 0x10)
                          {
                            if (!v236)
                            {
                              goto LABEL_897;
                            }

                            v268 = v231 + 120 + 24 * v453;
                            if (v268 < v231 + 120)
                            {
                              goto LABEL_897;
                            }

                            if (v268 + 24 > v232)
                            {
                              goto LABEL_897;
                            }

                            if (v268 > v268 + 24)
                            {
                              goto LABEL_897;
                            }

                            v269 = *v233;
                            v270 = v233[1];
                            if (*v233 > v270 || v233[2] > v269 || (*(v231 + 1920) - __n) > ((v270 - v269) >> 2))
                            {
                              goto LABEL_897;
                            }

                            v240 = *(v268 + 8);
                            v241 = *v268 + 4 * __n;
                            v242 = *(v231 + 72);
                          }

                          else
                          {
                            if (!v236)
                            {
                              goto LABEL_897;
                            }

                            v237 = v231 + 120 + 24 * v453;
                            if (v237 < v231 + 120)
                            {
                              goto LABEL_897;
                            }

                            if (v237 + 24 > v232)
                            {
                              goto LABEL_897;
                            }

                            if (v237 > v237 + 24)
                            {
                              goto LABEL_897;
                            }

                            v238 = *v233;
                            v239 = v233[1];
                            if (*v233 > v239 || v233[2] > v238 || (*(v231 + 1920) - __n) > ((v239 - v238) >> 2))
                            {
                              goto LABEL_897;
                            }

                            v240 = *(v237 + 8);
                            v241 = *v237 + 4 * __n;
                            v242 = *(v231 + 88);
                          }
                        }

                        *&v468[0] = v241;
                        *(v468 + 8) = v240;
                        v242();
                        goto LABEL_476;
                      }
                    }

                    if (!*(v215 + 4952))
                    {
                      (*(v215 + 64))(v2, 0, *(v215 + 96));
                    }

                    **v2 = 2;
                  }

                  else
                  {
                    v453 = v1;
                    i = v135 + 1960 + 336 * v1;
                    if (i < v135 + 1960)
                    {
                      goto LABEL_897;
                    }

                    if (i + 336 > v135 + 4648)
                    {
                      goto LABEL_897;
                    }

                    if (i > i + 336)
                    {
                      goto LABEL_897;
                    }

                    v466 = -1431655766;
                    *i = 2;
                    v176 = v135 + 312 + 24 * v1;
                    if (v176 < v135 + 312 || v176 + 24 > v135 + 504 || v176 > v176 + 24)
                    {
                      goto LABEL_897;
                    }

                    v177 = (v131 >> 1) & 7;
                    v178 = *v176;
                    *(i + 72) = *(v176 + 16);
                    *(i + 56) = v178;
                    *(i + 32) = v177;
                    v462 = v177;
                    if (v177)
                    {
                      v1 = i + 36;
                      v179 = (v135 + v458);
                      v180 = (v131 >> 1) & 7;
                      do
                      {
                        v181 = *(*v4 + 112);
                        LODWORD(v468[0]) = -1431655766;
                        if (!FLAC__bitreader_read_raw_uint32(v181, v468, v130))
                        {
                          return 0;
                        }

                        if (v179 < v1 || (v179 + 1) > i + 52 || v179 > v179 + 1)
                        {
                          goto LABEL_897;
                        }

                        *v179++ = (LODWORD(v468[0]) ^ (1 << (v130 - 1))) - (1 << (v130 - 1));
                      }

                      while (--v180);
                    }

                    v1 = v453;
                    if (!FLAC__bitreader_read_raw_uint32(*(*v4 + 112), &v466, 2u))
                    {
                      return 0;
                    }

                    v182 = v466;
                    *(i + 8) = v466;
                    v183 = *v4;
                    if (v182 > 1)
                    {
                      v6 = 1;
                      if (*(v183 + 4952))
                      {
                        ++*(v183 + 7848);
                      }

                      else
                      {
                        (*(v183 + 64))(v2, 3, *(v183 + 96));
                      }

LABEL_441:
                      **v2 = 2;
                      goto LABEL_442;
                    }

                    if (!FLAC__bitreader_read_raw_uint32(*(v183 + 112), &v466, 4u))
                    {
                      return 0;
                    }

                    v184 = *v4;
                    v185 = v466;
                    if (*(*v4 + 1920) >> v466 < v462)
                    {
                      v6 = 1;
                      if (!*(v184 + 4952))
                      {
                        (*(v184 + 64))(v2, 0, *(v184 + 96));
                      }

                      goto LABEL_441;
                    }

                    *(i + 16) = v466;
                    v243 = *v4 + 504;
                    v244 = v243 + 56 * v453;
                    if (v244 && (v244 < v243 || v244 + 56 > *v4 + 952 || v244 > v244 + 56))
                    {
                      goto LABEL_897;
                    }

                    *(i + 24) = v244;
                    v245 = *(i + 8);
                    v1 = v453;
                    if (v245 < 2)
                    {
                      v246 = *v4;
                      v247 = *v4 + 504;
                      v248 = v247 + 56 * v453;
                      if (v248 && (v248 < v247 || v248 + 56 > v246 + 952 || v248 > v248 + 56))
                      {
                        goto LABEL_897;
                      }

                      v1 = v453;
                      v249 = v246 + 24 * v453;
                      *&v468[1] = *(v249 + 328);
                      v468[0] = *(v249 + 312);
                      read_residual_partitioned_rice_(v2, v462, v185, v248, v468, v245 == 1);
                      if (!v250)
                      {
                        return 0;
                      }
                    }

                    v251 = *v4 + 120;
                    v252 = v251 + 24 * v1;
                    if (v252 < v251)
                    {
                      goto LABEL_897;
                    }

                    if (v252 + 24 > *v4 + 312)
                    {
                      goto LABEL_897;
                    }

                    if (v252 > v252 + 24)
                    {
                      goto LABEL_897;
                    }

                    if (v462 > 4)
                    {
                      goto LABEL_897;
                    }

                    v254 = *v252;
                    v253 = *(v252 + 8);
                    if (*v252 > v253)
                    {
                      goto LABEL_897;
                    }

                    if (*(v252 + 16) > v254)
                    {
                      goto LABEL_897;
                    }

                    v255 = 4 * v462;
                    if (v255 > v253 - v254)
                    {
                      goto LABEL_897;
                    }

                    memcpy(v254, (i + 36), 4 * v462);
                    if (v254 > &v254[v255])
                    {
                      goto LABEL_897;
                    }

                    v256 = *v4;
                    v257 = *v4 + 312;
                    v258 = v257 + 24 * v453;
                    if (v258 < v257)
                    {
                      goto LABEL_897;
                    }

                    if (v258 + 24 > v256 + 504)
                    {
                      goto LABEL_897;
                    }

                    if (v258 > v258 + 24)
                    {
                      goto LABEL_897;
                    }

                    v468[0] = *v258;
                    *&v468[1] = *(v258 + 16);
                    v259 = v256 + 120 + 24 * v453;
                    if (v259 < v256 + 120 || v259 + 24 > v257 || v259 > v259 + 24)
                    {
                      goto LABEL_897;
                    }

                    v260 = (*(v256 + 1920) - v462);
                    v261 = *(v259 + 8);
                    *v467 = *v259 + 4 * v462;
                    *&v467[8] = v261;
                    FLAC__fixed_restore_signal(v468, v260, v462, v467);
                    v6 = 1;
LABEL_476:
                    v1 = v453;
                  }

LABEL_477:
                  if ((v451 & 1) == 0 || **v2 == 2)
                  {
                    goto LABEL_442;
                  }

                  goto LABEL_352;
                }

                v142 = (v135 + 1960 + 336 * v1);
                if (v142 < v135 + 1960)
                {
                  goto LABEL_897;
                }

                if ((v142 + 84) > v135 + 4648)
                {
                  goto LABEL_897;
                }

                if (v142 > v142 + 84)
                {
                  goto LABEL_897;
                }

                v143 = (v135 + 120 + 24 * v1);
                if (v143 < v135 + 120 || (v143 + 3) > v135 + 312 || v143 > v143 + 3)
                {
                  goto LABEL_897;
                }

                v144 = v130;
                v145 = v2;
                v146 = v131;
                i = *v143;
                v147 = v143[1];
                v148 = v143[2];
                *v142 = 0;
                v149 = *(v135 + 112);
                LODWORD(v468[0]) = -1431655766;
                v150 = v144;
                if (!FLAC__bitreader_read_raw_uint32(v149, v468, v144))
                {
                  return 0;
                }

                v151 = (LODWORD(v468[0]) ^ (1 << (v150 - 1))) - (1 << (v150 - 1));
                v142[2] = v151;
                v152 = *v4;
                v153 = v146;
                v2 = v145;
                if (*(*v4 + 1920))
                {
                  v154 = 0;
                  v155 = 0;
                  do
                  {
                    v156 = i + v154;
                    v157 = i + v154 + 4;
                    if (v157 > v147 || v156 > v157 || v156 < v148)
                    {
                      goto LABEL_897;
                    }

                    *(i + 4 * v155++) = v151;
                    v154 += 4;
                  }

                  while (v155 < *(v152 + 1920));
                }
              }

              v6 = 1;
              if ((v153 & 1) == 0)
              {
                goto LABEL_442;
              }

LABEL_352:
              v190 = *v4;
              v191 = *v4 + 1960;
              v192 = v191 + 336 * v1;
              v193 = v192 + 336;
              if (v192 < v191 || v193 > *v4 + 4648 || v192 > v193)
              {
                goto LABEL_897;
              }

              if (*(v190 + 1920))
              {
                v196 = (v190 + 120 + 24 * v1);
                if (v196 < v190 + 120 || (v196 + 3) > v190 + 312 || v196 > v196 + 3)
                {
                  goto LABEL_897;
                }

                v197 = 0;
                v198 = 0;
                v199 = *(v192 + 328);
                v200 = v196[2];
                do
                {
                  v201 = *v196 + v197;
                  if (v201 + 4 > v196[1] || v201 > v201 + 4 || v201 < v200)
                  {
                    goto LABEL_897;
                  }

                  *(*v196 + 4 * v198++) <<= v199;
                  v197 += 4;
                }

                while (v198 < *(v190 + 1920));
              }

LABEL_442:
              v3 = *v2;
              if (**v2 == 2)
              {
                v5 = v464;
                i = band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds;
                goto LABEL_2;
              }

              ++v1;
              v86 = *v4;
              v124 = v456 + 336;
              v123 = v454 + 336;
              v122 = v458 + 336;
            }

            while (v1 < *(*v4 + 1928));
          }

          v271 = *(v86 + 112);
          v272 = *(v271 + 24) & 7;
          v5 = v464;
          i = band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds;
          if (v272)
          {
            LODWORD(v468[0]) = 0;
            raw_uint32 = FLAC__bitreader_read_raw_uint32(v271, v468, 8 - v272);
            if (raw_uint32)
            {
              v274 = LODWORD(v468[0]) == 0;
            }

            else
            {
              v274 = 1;
            }

            if (v274)
            {
              if (!raw_uint32)
              {
                return 0;
              }
            }

            else
            {
              if (!*(*v4 + 4952))
              {
                (*(*v4 + 64))(v2, 0, *(*v4 + 96));
              }

              **v2 = 2;
            }
          }

          v3 = *v2;
          if (**v2 == 2)
          {
            continue;
          }

          v300 = *(*v4 + 112);
          v301 = *(v300 + 24);
          if (v301)
          {
            v302 = (*v300 + 4 * *(v300 + 20));
            v303 = (v302 + 1);
            if (v302 < *v300 || v303 > *v300 + 4 * *(v300 + 8) || v302 > v303)
            {
              goto LABEL_897;
            }

            v306 = *(v300 + 32);
            if (v306 < v301)
            {
              v307 = *v302;
              v308 = *(v300 + 28);
              v309 = 24 - v306;
              do
              {
                v310 = &FLAC__crc16_table[(v307 >> v309) ^ (v308 >> 8)];
                v311 = v310 + 1;
                if (v310 < FLAC__crc16_table || v311 > band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds || v310 > v311)
                {
                  goto LABEL_897;
                }

                v308 = *v310 ^ (v308 << 8);
                v306 += 8;
                *(v300 + 28) = v308;
                *(v300 + 32) = v306;
                v309 -= 8;
              }

              while (v306 < v301);
            }
          }

          v314 = *(v300 + 28);
          if (!FLAC__bitreader_read_raw_uint32(v300, &size, 0x10u))
          {
            return 0;
          }

          v1 = *v4;
          if (size == v314)
          {
            v315 = *(v1 + 1932);
            if (v315 == 1)
            {
              if (*(v1 + 1920))
              {
                v383 = 0;
                v384 = *(v1 + 136);
                do
                {
                  v385 = (*(v1 + 120) + 4 * v383);
                  if ((v385 + 1) > *(v1 + 128) || v385 > v385 + 1 || v385 < v384)
                  {
                    goto LABEL_897;
                  }

                  v388 = (*(v1 + 144) + 4 * v383);
                  v389 = (v388 + 1) > *(v1 + 152) || v388 > v388 + 1;
                  if (v389 || v388 < *(v1 + 160))
                  {
                    goto LABEL_897;
                  }

                  *v388 = *v385 - *v388;
                  ++v383;
                }

                while (v383 < *(v1 + 1920));
              }
            }

            else if (v315 == 3)
            {
              if (*(v1 + 1920))
              {
                v369 = 0;
                v370 = *(v1 + 136);
                do
                {
                  v371 = (*(v1 + 120) + 4 * v369);
                  if ((v371 + 1) > *(v1 + 128) || v371 > v371 + 1 || v371 < v370)
                  {
                    goto LABEL_897;
                  }

                  v374 = *(v1 + 160);
                  v375 = (*(v1 + 144) + 4 * v369);
                  v376 = (v375 + 1) > *(v1 + 152) || v375 > v375 + 1;
                  if (v376 || v375 < v374)
                  {
                    goto LABEL_897;
                  }

                  v378 = *v375;
                  v379 = v378 & 1 | (2 * *v371);
                  *v371 = (v379 + v378) >> 1;
                  v380 = (*(v1 + 144) + 4 * v369);
                  v381 = (v380 + 1) > *(v1 + 152) || v380 > v380 + 1;
                  if (v381 || v380 < v374)
                  {
                    goto LABEL_897;
                  }

                  *v380 = (v379 - v378) >> 1;
                  ++v369;
                }

                while (v369 < *(v1 + 1920));
              }
            }

            else if (v315 == 2 && *(v1 + 1920))
            {
              v316 = 0;
              v317 = *(v1 + 160);
              do
              {
                v318 = (*(v1 + 144) + 4 * v316);
                if ((v318 + 1) > *(v1 + 152) || v318 > v318 + 1 || v318 < v317)
                {
                  goto LABEL_897;
                }

                v321 = (*(v1 + 120) + 4 * v316);
                v322 = (v321 + 1) > *(v1 + 128) || v321 > v321 + 1;
                if (v322 || v321 < *(v1 + 136))
                {
                  goto LABEL_897;
                }

                *v321 += *v318;
                ++v316;
              }

              while (v316 < *(v1 + 1920));
            }
          }

          else
          {
            if (!*(v1 + 4952))
            {
              (*(v1 + 64))(v2, 2, *(v1 + 96));
              v1 = *(v2 + 8);
            }

            if (*(v1 + 1928))
            {
              i = 0;
              v355 = 0;
              do
              {
                v356 = (v1 + i + 120);
                v357 = v1 + i + 144;
                if (v356 < v1 + 120 || v357 > v1 + 312 || v356 > v357)
                {
                  goto LABEL_897;
                }

                v360 = *v356;
                v361 = *(v1 + i + 128);
                if (*v356 > v361)
                {
                  goto LABEL_897;
                }

                v362 = 4 * *(v1 + 1920);
                v363 = v361 - v360;
                if (*(v1 + i + 136) > v360 || v362 > v363)
                {
                  goto LABEL_897;
                }

                bzero(v360, 4 * *(v1 + 1920));
                if (v360 > &v360[v362])
                {
                  goto LABEL_897;
                }

                ++v355;
                v1 = *v4;
                i += 24;
              }

              while (v355 < *(*v4 + 1928));
            }
          }

          v391 = *(v1 + 964);
          if (v391)
          {
            *(v1 + 960) = v391;
          }

          v392 = *v2;
          *(v392 + 2) = vextq_s8(*(v1 + 1924), *(v1 + 1924), 4uLL);
          v393 = v1 + 1920;
          v394 = *(v1 + 1920);
          v392[6] = v394;
          v395 = *(v1 + 1944);
          v396 = v395 + v394;
          *(v1 + 968) = v395 + v394;
          if (v1 + 1920 > v1 + 4656)
          {
LABEL_897:
            while (1)
            {
              __break(0x5519u);
LABEL_898:
              **v2 = 8;
              v337 = 1;
LABEL_834:
              if (i <= 3)
              {
                break;
              }

              switch(i)
              {
                case 4:
LABEL_863:
                  if (*(&v468[1] + 1))
                  {
                    free(*(&v468[1] + 1));
                  }

                  v434 = LODWORD(v468[3]);
                  if (!LODWORD(v468[3]))
                  {
LABEL_878:
                    v426 = *(&v468[3] + 1);
                    if (*(&v468[3] + 1))
                    {
                      goto LABEL_884;
                    }

                    goto LABEL_885;
                  }

                  v435 = 0;
                  i = 0;
                  while (1)
                  {
                    v436 = *(&v468[3] + 1) + v435;
                    v437 = *(&v468[3] + 1) + v435 + 32;
                    v438 = v437 > *&v468[4] || v436 > v437;
                    if (v438 || v436 < *(&v468[4] + 1))
                    {
                      break;
                    }

                    v440 = *(v436 + 8);
                    if (v440)
                    {
                      free(v440);
                      v434 = LODWORD(v468[3]);
                    }

                    ++i;
                    v435 += 32;
                    if (i >= v434)
                    {
                      goto LABEL_878;
                    }
                  }

                  break;
                case 5:
LABEL_848:
                  v427 = DWORD1(v468[10]);
                  if (!DWORD1(v468[10]))
                  {
LABEL_861:
                    v426 = *(&v468[10] + 1);
                    if (*(&v468[10] + 1))
                    {
                      goto LABEL_884;
                    }

                    goto LABEL_885;
                  }

                  v428 = 0;
                  i = 24;
                  while (1)
                  {
                    v429 = *(&v468[10] + 1) + i - 24;
                    v430 = *(&v468[10] + 1) + i + 24;
                    v431 = v430 > *&v468[11] || v429 > v430;
                    if (v431 || v429 < *(&v468[11] + 1))
                    {
                      break;
                    }

                    v433 = *(*(&v468[10] + 1) + i);
                    if (v433)
                    {
                      free(v433);
                      v427 = DWORD1(v468[10]);
                    }

                    ++v428;
                    i += 48;
                    if (v428 >= v427)
                    {
                      goto LABEL_861;
                    }
                  }

                  break;
                case 6:
                  goto LABEL_838;
                default:
LABEL_846:
                  v426 = *&v468[1];
                  if (*&v468[1])
                  {
                    goto LABEL_884;
                  }

                  goto LABEL_885;
              }
            }

            if (i == 1)
            {
              goto LABEL_885;
            }

            if (i == 2)
            {
              goto LABEL_883;
            }

            goto LABEL_846;
          }

          v397 = v1 + 312;
          i = v1 + 120;
          if (*(v1 + 4952))
          {
            v398 = *(v1 + 7840);
            memcpy((v1 + 5096), (v1 + 1920), 0xAB0uLL);
            v399 = v398 - v395;
            if (v398 < v395 || v398 >= v396)
            {
LABEL_892:
              v287 = *v2;
              goto LABEL_893;
            }

            v400 = *v4;
            *(*v4 + 4952) = 0;
            if (v399)
            {
              *&v401 = 0xAAAAAAAAAAAAAAAALL;
              *(&v401 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v468[10] = v401;
              v468[11] = v401;
              v468[8] = v401;
              v468[9] = v401;
              v468[6] = v401;
              v468[7] = v401;
              v468[4] = v401;
              v468[5] = v401;
              v468[2] = v401;
              v468[3] = v401;
              v468[0] = v401;
              v468[1] = v401;
              v402 = *(v1 + 1928);
              if (v402)
              {
                v403 = 0;
                v404 = 24 * v402;
                do
                {
                  v405 = v468 + v403;
                  v406 = &v468[1] + v403 + 8;
                  v408 = (v468 + v403) < v468 || v406 > v464 || v405 > v406;
                  v409 = (v1 + v403 + 120);
                  v410 = v1 + v403 + 144;
                  if (v408 || v410 > v397 || v409 > v410 || v409 < i)
                  {
                    goto LABEL_897;
                  }

                  v414 = *(v1 + v403 + 128);
                  *v405 = *v409 + 4 * v399;
                  *(v405 + 8) = v414;
                  v403 += 24;
                }

                while (v404 != v403);
              }

              *(v400 + 5096) -= v399;
              *(v400 + 5120) += v399;
              if (*v4 + 5096 > (*v4 + 7832))
              {
                goto LABEL_897;
              }

              v415 = *(*v4 + 48);
              *v467 = v468;
              *&v467[8] = v464;
              *&v467[16] = v468;
              v416 = v415(v2);
LABEL_818:
              v287 = *v2;
              if (!v416)
              {
LABEL_893:
                *v287 = 2;
                return 1;
              }

LABEL_819:
              v288 = 7;
              goto LABEL_567;
            }

            v419 = *(v400 + 48);
            v420 = *(v400 + 96);
          }

          else
          {
            if (*(v1 + 976))
            {
              if (*(v1 + 4944))
              {
                if (v1 + 4960 > v1 + 5080)
                {
                  goto LABEL_897;
                }

                v417 = *(v1 + 1928);
                v418 = (*(v1 + 1936) + 7) >> 3;
                *&v468[0] = v1 + 120;
                *(&v468[0] + 1) = v1 + 312;
                *&v468[1] = v1 + 120;
                if (!FLAC__MD5Accumulate(v1 + 4960, v468, v417, v394, v418))
                {
                  v287 = *v2;
                  goto LABEL_819;
                }

                v1 = *v4;
              }
            }

            else
            {
              *(v1 + 4944) = 0;
            }

            v419 = *(v1 + 48);
            v420 = *(v1 + 96);
          }

          *&v468[0] = i;
          *(&v468[0] + 1) = v397;
          *&v468[1] = i;
          v416 = v419(v2, v393, v468, v420);
          goto LABEL_818;
      }
    }

    break;
  }

  if (v8 != 4 && v8 != 7)
  {
    return 0;
  }

  return v6;
}

unint64_t FLAC__bitreader_read_raw_uint32(unint64_t result, _DWORD *a2, unsigned int a3)
{
  if (!a3)
  {
    *a2 = 0;
    return 1;
  }

  v5 = result;
  while (1)
  {
    v6 = *(v5 + 12);
    v8 = *(v5 + 20);
    v7 = *(v5 + 24);
    if (32 * (v6 - v8) + 8 * *(v5 + 16) - v7 >= a3)
    {
      break;
    }

    result = bitreader_read_from_client_(v5);
    if (!result)
    {
      return result;
    }
  }

  if (v6 <= v8)
  {
    v9 = *v5 + 4 * v8;
    v21 = v9 + 4 <= *v5 + 4 * *(v5 + 8) && v9 <= v9 + 4 && v9 >= *v5;
    if (v7)
    {
      if (!v21)
      {
        goto LABEL_50;
      }

      v22 = (*v9 & (0xFFFFFFFF >> v7)) >> (-a3 - v7);
LABEL_46:
      *a2 = v22;
      v16 = *(v5 + 24) + a3;
      goto LABEL_47;
    }

    if (!v21)
    {
      goto LABEL_50;
    }

    v15 = *v9;
    LODWORD(v9) = -a3;
LABEL_45:
    v22 = v15 >> v9;
    goto LABEL_46;
  }

  if (!v7)
  {
    v23 = (*v5 + 4 * v8);
    v24 = (v23 + 1);
    if (v23 >= *v5 && v24 <= *v5 + 4 * *(v5 + 8) && v23 <= v24)
    {
      v27 = *v23;
      if (a3 > 0x1F)
      {
        *a2 = v27;
        crc16_update_word_(v5, v27);
        ++*(v5 + 20);
      }

      else
      {
        *a2 = v27 >> -a3;
        *(v5 + 24) = a3;
      }

      return 1;
    }

    goto LABEL_50;
  }

  v9 = *v5 + 4 * v8;
  v10 = v9 + 4;
  if (v9 < *v5 || v10 > *v5 + 4 * *(v5 + 8) || v9 > v10)
  {
    goto LABEL_50;
  }

  v13 = 32 - v7;
  v14 = *v9;
  v15 = *v9 & (0xFFFFFFFF >> v7);
  LOBYTE(v9) = v13 - a3;
  if (v13 > a3)
  {
    goto LABEL_45;
  }

  *a2 = v15;
  result = crc16_update_word_(v5, v14);
  ++*(v5 + 20);
  *(v5 + 24) = 0;
  v16 = a3 - v13;
  if (a3 == v13)
  {
    return 1;
  }

  v17 = *a2 << v16;
  *a2 = v17;
  v18 = (*v5 + 4 * *(v5 + 20));
  if (v18 >= *v5 && (v18 + 1) <= *v5 + 4 * *(v5 + 8) && v18 <= v18 + 1)
  {
    *a2 = (*v18 >> (v13 - a3)) | v17;
LABEL_47:
    *(v5 + 24) = v16;
    return 1;
  }

LABEL_50:
  __break(0x5519u);
  return result;
}

void FLAC__memory_alloc_aligned_int32_array(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  memset(v22, 170, sizeof(v22));
  v19[0] = v22;
  v19[1] = &v23;
  v19[2] = v22;
  FLAC__memory_alloc_aligned(&v20, 4 * a1, v19);
  v5 = v20;
  if (v20)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = *a2 + 24;
    if (v9 > v7 || v6 > v9 || v6 < v8)
    {
      goto LABEL_25;
    }

    v12 = v21;
    if (*v6)
    {
      v18 = v20;
      free(*v6);
      v5 = v18;
      v6 = *a2;
      v7 = a2[1];
      v8 = a2[2];
    }

    v13 = v6 + 24 > v7 || v6 > v6 + 24;
    v14 = !v13 && v6 >= v8;
    if (v14 && (*v6 = v5, *(v6 + 16) = v12, v15 = *a3, v16 = *a3 + 24, v16 <= a3[1]) && v15 <= v16 && v15 >= a3[2])
    {
      v17 = *v22;
      *(v15 + 16) = *&v22[16];
      *v15 = v17;
    }

    else
    {
LABEL_25:
      __break(0x5519u);
    }
  }
}

unint64_t FLAC__bitreader_read_unary_unsigned(unint64_t result, int *a2)
{
  v3 = result;
  *a2 = 0;
  while (1)
  {
    v4 = *(v3 + 20);
    if (v4 < *(v3 + 12))
    {
      while (1)
      {
        v5 = *v3;
        v6 = (*v3 + 4 * v4);
        v7 = (v6 + 1);
        v8 = v6 < *v3 || v7 > *v3 + 4 * *(v3 + 8);
        if (v8 || v6 >= v7)
        {
          break;
        }

        v10 = *v6;
        v11 = *(v3 + 24);
        v12 = v10 << v11;
        if (v12)
        {
          v26 = __clz(v12);
          *a2 += v26;
          v27 = v26 + *(v3 + 24) + 1;
          *(v3 + 24) = v27;
          if (v27 < 0x20)
          {
            return 1;
          }

          v28 = (v5 + 4 * *(v3 + 20));
          if (v28 >= v5 && (v28 + 1) <= v5 + 4 * *(v3 + 8) && v28 <= v28 + 1)
          {
            crc16_update_word_(v3, *v28);
            v29 = 0;
            ++*(v3 + 20);
            goto LABEL_38;
          }

          break;
        }

        *a2 = *a2 - v11 + 32;
        v13 = (v5 + 4 * *(v3 + 20));
        v14 = v13 + 1;
        if (v13 < v5 || v14 > v5 + 4 * *(v3 + 8) || v13 >= v14)
        {
          break;
        }

        result = crc16_update_word_(v3, *v13);
        v4 = *(v3 + 20) + 1;
        *(v3 + 20) = v4;
        if (v4 >= *(v3 + 12))
        {
          v17 = 0;
          goto LABEL_21;
        }
      }

LABEL_41:
      __break(0x5519u);
      return result;
    }

    v17 = *(v3 + 24);
LABEL_21:
    v18 = 8 * *(v3 + 16);
    v19 = v18 - v17;
    if (v18 > v17)
    {
      break;
    }

LABEL_31:
    result = bitreader_read_from_client_(v3);
    if (!result)
    {
      return result;
    }
  }

  v20 = (*v3 + 4 * v4);
  v21 = (v20 + 1);
  if (v20 < *v3 || v21 > *v3 + 4 * *(v3 + 8) || v20 >= v21)
  {
    goto LABEL_41;
  }

  v24 = (*v20 & (-1 << (-8 * *(v3 + 16)))) << v17;
  v25 = *a2;
  if (!v24)
  {
    *a2 = v19 + v25;
    *(v3 + 24) = v18;
    goto LABEL_31;
  }

  v30 = __clz(v24);
  *a2 = v25 + v30;
  v29 = v30 + *(v3 + 24) + 1;
LABEL_38:
  *(v3 + 24) = v29;
  return 1;
}

void read_residual_partitioned_rice_(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, void *a5, int a6)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = *(*(a1 + 8) + 1920);
  v12 = v11 >> a3;
  v13 = v11 - a2;
  if (a3)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if (a6)
  {
    v15 = 5;
  }

  else
  {
    v15 = 4;
  }

  if (a6)
  {
    v16 = 31;
  }

  else
  {
    v16 = 15;
  }

  v90 = v16;
  v91 = v15;
  if (a3 <= 6)
  {
    v17 = 6;
  }

  else
  {
    v17 = a3;
  }

  FLAC__format_entropy_coding_method_partitioned_rice_contents_ensure_size(a4, v17);
  if (v18)
  {
    v95 = 0;
    v19 = 0;
    v97 = -1431655766;
    v87 = v10;
    v88 = v7;
    v85 = v9;
    v86 = v8;
    v84 = v14;
    while (FLAC__bitreader_read_raw_uint32(*(*(v10 + 8) + 112), &v97, v91))
    {
      v20 = (*v7 + 4 * v95);
      if ((v20 + 1) > v7[1] || v20 > v20 + 1 || v20 < v7[2])
      {
        goto LABEL_155;
      }

      v23 = v97;
      *v20 = v97;
      if (v23 >= v90)
      {
        if (!FLAC__bitreader_read_raw_uint32(*(*(v10 + 8) + 112), &v97, 5u))
        {
          return;
        }

        v44 = (v7[3] + 4 * v95);
        if ((v44 + 1) > v7[4] || v44 > v44 + 1 || v44 < v7[5])
        {
          goto LABEL_155;
        }

        if (v95)
        {
          v47 = 1;
        }

        else
        {
          v47 = v8 == 0;
        }

        v48 = v97;
        *v44 = v97;
        if (v47)
        {
          v49 = 0;
        }

        else
        {
          v49 = v9;
        }

        v50 = v14 - v49;
        if (v14 > v49)
        {
          do
          {
            v51 = *(*(v10 + 8) + 112);
            v99 = -1431655766;
            if (!FLAC__bitreader_read_raw_uint32(v51, &v99, v48))
            {
              return;
            }

            v52 = (*a5 + 4 * v19);
            if ((v52 + 1) > a5[1] || v52 > v52 + 1 || v52 < a5[2])
            {
              goto LABEL_155;
            }

            *v52 = (v99 ^ (1 << (v48 - 1))) - (1 << (v48 - 1));
            ++v19;
          }

          while (--v50);
        }
      }

      else
      {
        v94 = v23;
        v24 = (v7[3] + 4 * v95);
        if ((v24 + 1) > v7[4] || v24 > v24 + 1 || v24 < v7[5])
        {
          goto LABEL_155;
        }

        v27 = v95 || v8 == 0;
        *v24 = 0;
        v28 = v27 ? 0 : v9;
        v29 = a5[1];
        v30 = *a5 + 4 * v19;
        if (v30 > v29)
        {
          goto LABEL_155;
        }

        if (a5[2] > v30)
        {
          goto LABEL_155;
        }

        v31 = v14 - v28;
        if (v31 > (v29 - v30) >> 2)
        {
          goto LABEL_155;
        }

        v32 = *(*(v10 + 8) + 112);
        v98 = -1431655766;
        v89 = v14 - v28;
        v33 = v30 + 4 * v31;
        v93 = v30;
        v96 = v33;
        if (v94)
        {
          if (v14 == v28)
          {
            return;
          }

          v99 = -1431655766;
          v34 = *(v32 + 20);
          v35 = *(v32 + 12);
          if (v34 >= v35)
          {
            v57 = 0;
            v58 = v93;
            v42 = v93;
            while (FLAC__bitreader_read_unary_unsigned(v32, &v98))
            {
              v73 = 0;
              v74 = 0;
              v57 += v98;
              v98 = v57;
LABEL_139:
              if (!FLAC__bitreader_read_raw_uint32(v32, &v99, v94 - v73))
              {
                break;
              }

              v82 = v99 | v74;
              v99 |= v74;
              if (v42 < v58)
              {
                goto LABEL_155;
              }

              v83 = v42 + 1;
              if ((v42 + 1) > v96)
              {
                goto LABEL_155;
              }

              if (v42 > v83)
              {
                goto LABEL_155;
              }

              *v42 = -(((v57 << v94) | v82) & 1) ^ (((v57 << v94) | v82) >> 1);
              v34 = *(v32 + 20);
              v36 = *v32;
              v37 = (*v32 + 4 * v34);
              if (v37 < *v32 || (v37 + 1) > v36 + 4 * *(v32 + 8) || v37 > v37 + 1)
              {
                goto LABEL_155;
              }

              v35 = *(v32 + 12);
              v41 = *(v32 + 24);
              v43 = v96;
              if (v83 >= v96 || v34 < v35)
              {
                ++v42;
                goto LABEL_88;
              }

              v57 = 0;
              ++v42;
LABEL_149:
              v58 = v93;
            }

            return;
          }

          v36 = *v32;
          v37 = (*v32 + 4 * v34);
          v38 = (v37 + 1);
          if (v37 < *v32 || v38 > *v32 + 4 * *(v32 + 8) || v37 > v38)
          {
            goto LABEL_155;
          }

          v41 = *(v32 + 24);
          v42 = v93;
          v43 = v33;
LABEL_88:
          v59 = 32 - v41;
          if (v42 < v43)
          {
            v60 = *v37 << v41;
            v92 = 32 - v94;
            while (v60)
            {
              v61 = __clz(v60);
              v57 = v61;
LABEL_109:
              v72 = 2 * (v60 << v61);
              v73 = (v59 + ~v57) & 0x1F;
              v98 = v57;
              v74 = v72 >> v92;
              LOBYTE(v75) = v94;
              v59 = v73 - v94;
              if (v73 < v94)
              {
                v76 = (v36 + 4 * v34);
                if (v76 < v36)
                {
                  goto LABEL_155;
                }

                if ((v76 + 1) > v36 + 4 * *(v32 + 8) || v76 > v76 + 1)
                {
                  goto LABEL_155;
                }

                LODWORD(v34) = v34 + 1;
                crc16_update_word_(v32, *v76);
                if (v34 >= v35)
                {
                  *(v32 + 20) = v34;
                  *(v32 + 24) = 0;
                  v58 = v93;
                  goto LABEL_139;
                }

                v36 = *v32;
                v78 = (*v32 + 4 * v34);
                if (v78 < *v32 || (v78 + 1) > v36 + 4 * *(v32 + 8) || v78 > v78 + 1)
                {
                  goto LABEL_155;
                }

                v72 = *v78;
                v59 = v73 + v92;
                v74 |= v72 >> (v73 + v92);
                v75 = -(v73 + v92);
              }

              v60 = v72 << v75;
              v99 = v74;
              if (v42 < v93)
              {
                goto LABEL_155;
              }

              v79 = v42 + 1;
              if ((v42 + 1) > v96 || v42 > v79)
              {
                goto LABEL_155;
              }

              *v42++ = -((v74 | (v57 << v94)) & 1) ^ ((v74 | (v57 << v94)) >> 1);
              if (v79 >= v96)
              {
                goto LABEL_124;
              }
            }

            v62 = *(v32 + 8);
            v57 = v59;
            while (1)
            {
              v63 = v36 + 4 * v62;
              v64 = (v36 + 4 * v34);
              v65 = v64 + 1;
              v66 = v64 < v36 || v65 > v63;
              if (v66 || v64 > v65)
              {
                break;
              }

              LODWORD(v34) = v34 + 1;
              crc16_update_word_(v32, *v64);
              if (v34 >= v35)
              {
                *(v32 + 20) = v34;
                *(v32 + 24) = 0;
                goto LABEL_149;
              }

              v62 = *(v32 + 8);
              v36 = *v32;
              v68 = (*v32 + 4 * v34);
              v69 = (v68 + 1);
              v70 = v68 < *v32 || v69 > *v32 + 4 * v62;
              if (v70 || v68 > v69)
              {
                break;
              }

              v60 = *v68;
              v61 = __clz(v60);
              v57 += v61;
              if (v60)
              {
                goto LABEL_109;
              }
            }

LABEL_155:
            __break(0x5519u);
            return;
          }

LABEL_124:
          if (!v59)
          {
            if (v34 >= v35)
            {
              v59 = 0;
            }

            else
            {
              v80 = (v36 + 4 * v34);
              if (v80 < v36)
              {
                goto LABEL_155;
              }

              if ((v80 + 1) > v36 + 4 * *(v32 + 8) || v80 > v80 + 1)
              {
                goto LABEL_155;
              }

              LODWORD(v34) = v34 + 1;
              crc16_update_word_(v32, *v80);
              v59 = 32;
            }
          }

          *(v32 + 20) = v34;
          *(v32 + 24) = 32 - v59;
        }

        else
        {
          v55 = v30;
          if (v33 > v30)
          {
            while (FLAC__bitreader_read_unary_unsigned(v32, &v98))
            {
              if (v55 < v30)
              {
                goto LABEL_155;
              }

              v56 = v55 + 1;
              if ((v55 + 1) > v96 || v55 > v56)
              {
                goto LABEL_155;
              }

              *v55++ = -(v98 & 1) ^ (v98 >> 1);
              v30 = v93;
              if (v56 >= v96)
              {
                goto LABEL_135;
              }
            }

            return;
          }
        }

LABEL_135:
        v7 = v88;
        v19 += v89;
        v10 = v87;
        v9 = v85;
        v8 = v86;
        v14 = v84;
      }

      if (++v95 >> v8)
      {
        return;
      }
    }
  }

  else
  {
    **v10 = 8;
  }
}

const void **FLAC__fixed_restore_signal(const void **result, char *a2, int a3, void **a4)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a2 < 1)
      {
        return result;
      }

      v67 = 0;
      v68 = result[2];
      while (1)
      {
        v69 = *result + v67;
        v70 = v69 + 1 > result[1] || v69 > v69 + 1;
        if (v70 || v69 < v68)
        {
          break;
        }

        v72 = a4[1];
        v73 = *a4 + v67;
        v74 = v73 - 1;
        v75 = v73 > v72 || v74 > v73;
        v76 = !v75 && v74 >= a4[2];
        v77 = v73 + 1;
        v78 = !v76 || v77 > v72;
        if (v78 || v73 > v77)
        {
          break;
        }

        *v73 = *(v73 - 1) + *v69;
        v67 += 4;
        if (4 * a2 == v67)
        {
          return result;
        }
      }
    }

    else
    {
      v24 = *result;
      v25 = result[1];
      if (*result <= v25)
      {
        v26 = 4 * a2;
        v27 = a4[1];
        v28 = *a4;
        v29 = v25 - v24;
        v30 = result[2] > v24 || v26 > v29;
        v31 = v30 || v28 > v27;
        v32 = v31 || a4[2] > v28;
        if (!v32 && v26 <= v27 - *a4)
        {
          result = memcpy(*a4, v24, v26);
          if (v28 <= &v28[v26])
          {
            return result;
          }
        }
      }
    }
  }

  else
  {
    if (a3 == 2)
    {
      goto LABEL_56;
    }

    if (a3 == 3)
    {
      if (a2 < 1)
      {
        return result;
      }

      v4 = 0;
      v5 = result[2];
      while (1)
      {
        v6 = *result + v4;
        v7 = v6 + 1 > result[1] || v6 > v6 + 1;
        if (v7 || v6 < v5)
        {
          break;
        }

        v10 = *a4;
        v9 = a4[1];
        v11 = a4[2];
        v12 = *a4 + v4;
        v13 = (v12 - 1);
        v14 = v12 > v9 || v13 > v12;
        if (v14 || v13 < v11)
        {
          break;
        }

        v16 = (v12 - 2);
        if ((v12 - 2) > v13 || v16 < v11)
        {
          break;
        }

        v18 = &v10[v4];
        v19 = &v10[v4 - 12];
        v20 = v19 <= v16 && v19 >= v11;
        v21 = (v18 + 4);
        v22 = !v20 || v21 > v9;
        if (v22 || v12 > v21)
        {
          break;
        }

        *v12 = *v19 + *v6 + 3 * (*(v12 - 1) - *v16);
        v4 += 4;
        if (4 * a2 == v4)
        {
          return result;
        }
      }
    }

    else
    {
      if (a2 < 1)
      {
        return result;
      }

      v50 = 0;
      v51 = result[2];
      v52 = 4 * a2;
      while (1)
      {
        v53 = *result + v50;
        v54 = v53 + 1 > result[1] || v53 > v53 + 1;
        if (v54 || v53 < v51)
        {
          break;
        }

        a2 = *a4;
        v56 = a4[1];
        v57 = a4[2];
        v58 = *a4 + v50;
        v59 = v58 - 4;
        v60 = v58 > v56 || v59 > v58;
        if (v60 || v59 < v57)
        {
          break;
        }

        v62 = v58 - 8;
        if (v58 - 8 > v59 || v62 < v57)
        {
          break;
        }

        v64 = &a2[v50 - 12];
        if (v64 > v62 || v64 < v57)
        {
          break;
        }

        v66 = &a2[v50 - 16];
        if (v66 > v64)
        {
          break;
        }

        if (v66 < v57)
        {
          break;
        }

        a2 += v50 + 4;
        if (a2 > v56 || v58 > a2)
        {
          break;
        }

        *v58 = *v53 - 6 * *v62 - *v66 + 4 * (*v64 + *v59);
        v50 += 4;
        if (v52 == v50)
        {
          return result;
        }
      }
    }
  }

  while (1)
  {
    __break(0x5519u);
LABEL_56:
    if (a2 < 1)
    {
      break;
    }

    v34 = 0;
    v35 = result[2];
    while (1)
    {
      v36 = *result + v34;
      v37 = v36 + 1 > result[1] || v36 > v36 + 1;
      if (v37 || v36 < v35)
      {
        break;
      }

      v39 = a4[1];
      v40 = a4[2];
      v41 = *a4 + v34;
      v42 = (v41 - 1);
      v43 = v41 > v39 || v42 > v41;
      if (v43 || v42 < v40)
      {
        break;
      }

      v45 = v41 - 2;
      v46 = (v41 - 2) <= v42 && v45 >= v40;
      v47 = v41 + 1;
      v48 = !v46 || v47 > v39;
      if (v48 || v41 > v47)
      {
        break;
      }

      *v41 = *v36 + 2 * *(v41 - 1) - *v45;
      v34 += 4;
      if (4 * a2 == v34)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t FLAC__MD5Accumulate(unint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v5 = a4;
  v6 = a5 * a3;
  if (!is_mul_ok(a4, v6))
  {
    return 0;
  }

  v13 = v6 * a4;
  v15 = (a1 + 88);
  v14 = *(a1 + 88);
  if (*(a1 + 112) >= v13)
  {
    v16 = *(a1 + 96);
    result = *(a1 + 104);
  }

  else
  {
    result = malloc_type_realloc(*(a1 + 88), v13, 0x5C7DB875uLL);
    if (!result)
    {
      free(v14);
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      result = malloc_type_malloc(v13, 0x23BCBC25uLL);
      if (!result)
      {
        *v15 = 0u;
        *(v15 + 1) = 0u;
        return result;
      }
    }

    v16 = result + v13;
    *(a1 + 88) = result;
    *(a1 + 96) = result + v13;
    *(a1 + 104) = result;
    *(a1 + 112) = v13;
    v14 = result;
  }

  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  v20 = a3 + 100 * a5;
  if (v20 <= 205)
  {
    if (v20 > 107)
    {
      if (v20 > 201)
      {
        if (v20 == 202)
        {
          if (a4)
          {
            v404 = (v17 + 3);
            v406 = (v17 + 6) <= v18 && v404 <= (v17 + 6);
            if (v404 <= v18 && v17 <= v404 && v17 >= v19)
            {
              v407 = 0;
              v408 = v17[2];
              while (1)
              {
                v409 = &v14[v407];
                v410 = (*v17 + v407);
                v411 = (v410 + 1) > v17[1] || v410 > v410 + 1;
                v412 = !v411 && v410 >= v408;
                v413 = v409 + 1;
                v414 = !v412 || v413 > v16;
                v415 = v414 || v409 > v413;
                if (v415 || v409 < result)
                {
                  break;
                }

                *v409 = *v410;
                if (!v406)
                {
                  break;
                }

                v417 = (v17[3] + v407);
                v418 = (v417 + 1) > v17[4] || v417 > v417 + 1;
                v419 = !v418 && v417 >= v17[5];
                v420 = &v14[v407 + 4];
                v421 = !v419 || v420 > v16;
                if (v421 || v413 > v420)
                {
                  break;
                }

                *v413 = *v417;
                v407 += 4;
                if (4 * v5 == v407)
                {
                  goto LABEL_1134;
                }
              }
            }

            goto LABEL_1306;
          }

          goto LABEL_1134;
        }

        if (v20 == 204)
        {
          if (a4)
          {
            v196 = v17 + 3;
            v197 = v17 + 6;
            v199 = (v17 + 6) <= v18 && v196 <= v197;
            v200 = (v17 + 9);
            v202 = (v17 + 9) <= v18 && v197 <= v200;
            v204 = (v17 + 12) <= v18 && v200 <= (v17 + 12);
            if (v196 <= v18 && v17 <= v196 && v17 >= v19)
            {
              v205 = 0;
              v206 = v17[2];
              while (1)
              {
                v207 = (*v17 + v205);
                v208 = (v207 + 1) > v17[1] || v207 > v207 + 1;
                v209 = !v208 && v207 >= v206;
                v210 = v14 + 2;
                v211 = !v209 || v210 > v16;
                v212 = v211 || v14 > v210;
                if (v212 || v14 < result)
                {
                  break;
                }

                *v14 = *v207;
                if (!v199)
                {
                  break;
                }

                v214 = (v17[3] + v205);
                v215 = (v214 + 1) > v17[4] || v214 > v214 + 1;
                v216 = !v215 && v214 >= v17[5];
                v217 = v14 + 4;
                v218 = !v216 || v217 > v16;
                if (v218 || v210 > v217)
                {
                  break;
                }

                *v210 = *v214;
                if (!v202)
                {
                  break;
                }

                v220 = (v17[6] + v205);
                if ((v220 + 1) > v17[7])
                {
                  break;
                }

                if (v220 > v220 + 1)
                {
                  break;
                }

                if (v220 < v17[8])
                {
                  break;
                }

                v221 = v14 + 6;
                if ((v14 + 6) > v16)
                {
                  break;
                }

                if (v217 > v221)
                {
                  break;
                }

                *v217 = *v220;
                if (!v204)
                {
                  break;
                }

                v222 = (v17[9] + v205);
                if ((v222 + 1) > v17[10])
                {
                  break;
                }

                if (v222 > v222 + 1)
                {
                  break;
                }

                if (v222 < v17[11])
                {
                  break;
                }

                v14 += 8;
                if (v14 > v16 || v221 > v14)
                {
                  break;
                }

                *v221 = *v222;
                v205 += 4;
                if (4 * v5 == v205)
                {
                  goto LABEL_1134;
                }
              }
            }

            goto LABEL_1306;
          }

          goto LABEL_1134;
        }
      }

      else
      {
        if (v20 == 108)
        {
          if (a4)
          {
            v333 = v17 + 3;
            v334 = v17 + 6;
            v336 = (v17 + 6) <= v18 && v333 <= v334;
            v337 = v17 + 9;
            v339 = (v17 + 9) <= v18 && v334 <= v337;
            v340 = v17 + 12;
            v342 = (v17 + 12) <= v18 && v337 <= v340;
            v343 = v17 + 15;
            v345 = (v17 + 15) <= v18 && v340 <= v343;
            v346 = v17 + 18;
            v348 = (v17 + 18) <= v18 && v343 <= v346;
            v349 = (v17 + 21);
            v351 = (v17 + 21) <= v18 && v346 <= v349;
            v353 = (v17 + 24) <= v18 && v349 <= (v17 + 24);
            if (v333 <= v18 && v17 <= v333 && v17 >= v19)
            {
              v354 = 0;
              while (1)
              {
                v355 = (*v17 + v354);
                v356 = (v355 + 1) > v17[1] || v355 > v355 + 1;
                v357 = !v356 && v355 >= v17[2];
                v358 = !v357 || v14 >= v16;
                if (v358 || v14 < result)
                {
                  break;
                }

                *v14 = *v355;
                if (!v336)
                {
                  break;
                }

                v360 = (v17[3] + v354);
                v361 = (v360 + 1) > v17[4] || v360 > v360 + 1;
                v362 = !v361 && v360 >= v17[5];
                v363 = v14 + 1;
                v364 = !v362 || v363 >= v16;
                if (v364 || v363 < result)
                {
                  break;
                }

                *v363 = *v360;
                if (!v339)
                {
                  break;
                }

                v366 = (v17[6] + v354);
                if ((v366 + 1) > v17[7])
                {
                  break;
                }

                if (v366 > v366 + 1)
                {
                  break;
                }

                if (v366 < v17[8])
                {
                  break;
                }

                v367 = v14 + 2;
                if ((v14 + 2) >= v16)
                {
                  break;
                }

                if (v367 < result)
                {
                  break;
                }

                *v367 = *v366;
                if (!v342)
                {
                  break;
                }

                v368 = (v17[9] + v354);
                if ((v368 + 1) > v17[10])
                {
                  break;
                }

                if (v368 > v368 + 1)
                {
                  break;
                }

                if (v368 < v17[11])
                {
                  break;
                }

                v369 = v14 + 3;
                if ((v14 + 3) >= v16)
                {
                  break;
                }

                if (v369 < result)
                {
                  break;
                }

                *v369 = *v368;
                if (!v345)
                {
                  break;
                }

                v370 = (v17[12] + v354);
                if ((v370 + 1) > v17[13])
                {
                  break;
                }

                if (v370 > v370 + 1)
                {
                  break;
                }

                if (v370 < v17[14])
                {
                  break;
                }

                v371 = v14 + 4;
                if ((v14 + 4) >= v16)
                {
                  break;
                }

                if (v371 < result)
                {
                  break;
                }

                *v371 = *v370;
                if (!v348)
                {
                  break;
                }

                v372 = (v17[15] + v354);
                if ((v372 + 1) > v17[16])
                {
                  break;
                }

                if (v372 > v372 + 1)
                {
                  break;
                }

                if (v372 < v17[17])
                {
                  break;
                }

                v373 = v14 + 5;
                if ((v14 + 5) >= v16)
                {
                  break;
                }

                if (v373 < result)
                {
                  break;
                }

                *v373 = *v372;
                if (!v351)
                {
                  break;
                }

                v374 = (v17[18] + v354);
                if ((v374 + 1) > v17[19])
                {
                  break;
                }

                if (v374 > v374 + 1)
                {
                  break;
                }

                if (v374 < v17[20])
                {
                  break;
                }

                v375 = v14 + 6;
                if ((v14 + 6) >= v16)
                {
                  break;
                }

                if (v375 < result)
                {
                  break;
                }

                *v375 = *v374;
                if (!v353)
                {
                  break;
                }

                v376 = (v17[21] + v354);
                if ((v376 + 1) > v17[22])
                {
                  break;
                }

                if (v376 > v376 + 1)
                {
                  break;
                }

                if (v376 < v17[23])
                {
                  break;
                }

                v377 = v14 + 7;
                if ((v375 + 1) >= v16 || v377 < result)
                {
                  break;
                }

                *v377 = *v376;
                v14 = v375 + 2;
                v354 += 4;
                if (4 * v5 == v354)
                {
                  goto LABEL_1134;
                }
              }
            }

            goto LABEL_1306;
          }

          goto LABEL_1134;
        }

        if (v20 == 201)
        {
          if (a4)
          {
            if ((v17 + 3) <= v18 && v17 <= v17 + 3 && v17 >= v19)
            {
              v130 = 0;
              v131 = v17[2];
              while (1)
              {
                v132 = (*v17 + v130);
                v133 = (v132 + 1) > v17[1] || v132 > v132 + 1;
                v134 = !v133 && v132 >= v131;
                v135 = v14 + 2;
                v136 = !v134 || v135 > v16;
                v137 = v136 || v14 > v135;
                if (v137 || v14 < result)
                {
                  break;
                }

                *v14 = *v132;
                v130 += 4;
                v14 += 2;
                if (4 * v5 == v130)
                {
                  goto LABEL_1134;
                }
              }
            }

            goto LABEL_1306;
          }

          goto LABEL_1134;
        }
      }
    }

    else if (v20 > 103)
    {
      if (v20 == 104)
      {
        if (a4)
        {
          v378 = v17 + 3;
          v379 = v17 + 6;
          v381 = (v17 + 6) <= v18 && v378 <= v379;
          v382 = (v17 + 9);
          v384 = (v17 + 9) <= v18 && v379 <= v382;
          v386 = (v17 + 12) <= v18 && v382 <= (v17 + 12);
          if (v378 <= v18 && v17 <= v378 && v17 >= v19)
          {
            v387 = 0;
            while (1)
            {
              v388 = &v14[v387];
              v389 = (*v17 + v387);
              v390 = (v389 + 1) > v17[1] || v389 > v389 + 1;
              v391 = !v390 && v389 >= v17[2];
              v392 = !v391 || v388 >= v16;
              if (v392 || v388 < result)
              {
                break;
              }

              *v388 = *v389;
              if (!v381)
              {
                break;
              }

              v394 = (v17[3] + v387);
              v395 = (v394 + 1) > v17[4] || v394 > v394 + 1;
              v396 = !v395 && v394 >= v17[5];
              v397 = v388 + 1;
              v398 = !v396 || v397 >= v16;
              if (v398 || v397 < result)
              {
                break;
              }

              *v397 = *v394;
              if (!v384)
              {
                break;
              }

              v400 = (v17[6] + v387);
              if ((v400 + 1) > v17[7])
              {
                break;
              }

              if (v400 > v400 + 1)
              {
                break;
              }

              if (v400 < v17[8])
              {
                break;
              }

              v401 = v397 + 1;
              if (v401 >= v16)
              {
                break;
              }

              if (v401 < result)
              {
                break;
              }

              *v401 = *v400;
              if (!v386)
              {
                break;
              }

              v402 = (v17[9] + v387);
              if ((v402 + 1) > v17[10])
              {
                break;
              }

              if (v402 > v402 + 1)
              {
                break;
              }

              if (v402 < v17[11])
              {
                break;
              }

              v403 = v401 + 1;
              if (v403 >= v16 || v403 < result)
              {
                break;
              }

              *v403 = *v402;
              v387 += 4;
              if (4 * v5 == v387)
              {
                goto LABEL_1134;
              }
            }
          }

          goto LABEL_1306;
        }

        goto LABEL_1134;
      }

      if (v20 == 106)
      {
        if (a4)
        {
          v161 = v17 + 3;
          v162 = v17 + 6;
          v164 = (v17 + 6) <= v18 && v161 <= v162;
          v165 = v17 + 9;
          v167 = (v17 + 9) <= v18 && v162 <= v165;
          v168 = v17 + 12;
          v170 = (v17 + 12) <= v18 && v165 <= v168;
          v171 = (v17 + 15);
          v173 = (v17 + 15) <= v18 && v168 <= v171;
          v175 = (v17 + 18) <= v18 && v171 <= (v17 + 18);
          if (v161 <= v18 && v17 <= v161 && v17 >= v19)
          {
            v176 = 0;
            while (1)
            {
              v177 = (*v17 + v176);
              v178 = (v177 + 1) > v17[1] || v177 > v177 + 1;
              v179 = !v178 && v177 >= v17[2];
              v180 = !v179 || v14 >= v16;
              if (v180 || v14 < result)
              {
                break;
              }

              *v14 = *v177;
              if (!v164)
              {
                break;
              }

              v182 = (v17[3] + v176);
              v183 = (v182 + 1) > v17[4] || v182 > v182 + 1;
              v184 = !v183 && v182 >= v17[5];
              v185 = v14 + 1;
              v186 = !v184 || v185 >= v16;
              if (v186 || v185 < result)
              {
                break;
              }

              *v185 = *v182;
              if (!v167)
              {
                break;
              }

              v188 = (v17[6] + v176);
              if ((v188 + 1) > v17[7])
              {
                break;
              }

              if (v188 > v188 + 1)
              {
                break;
              }

              if (v188 < v17[8])
              {
                break;
              }

              v189 = v14 + 2;
              if ((v14 + 2) >= v16)
              {
                break;
              }

              if (v189 < result)
              {
                break;
              }

              *v189 = *v188;
              if (!v170)
              {
                break;
              }

              v190 = (v17[9] + v176);
              if ((v190 + 1) > v17[10])
              {
                break;
              }

              if (v190 > v190 + 1)
              {
                break;
              }

              if (v190 < v17[11])
              {
                break;
              }

              v191 = v14 + 3;
              if ((v14 + 3) >= v16)
              {
                break;
              }

              if (v191 < result)
              {
                break;
              }

              *v191 = *v190;
              if (!v173)
              {
                break;
              }

              v192 = (v17[12] + v176);
              if ((v192 + 1) > v17[13])
              {
                break;
              }

              if (v192 > v192 + 1)
              {
                break;
              }

              if (v192 < v17[14])
              {
                break;
              }

              v193 = v14 + 4;
              if ((v14 + 4) >= v16)
              {
                break;
              }

              if (v193 < result)
              {
                break;
              }

              *v193 = *v192;
              if (!v175)
              {
                break;
              }

              v194 = (v17[15] + v176);
              if ((v194 + 1) > v17[16])
              {
                break;
              }

              if (v194 > v194 + 1)
              {
                break;
              }

              if (v194 < v17[17])
              {
                break;
              }

              v195 = v14 + 5;
              if ((v193 + 1) >= v16 || v195 < result)
              {
                break;
              }

              *v195 = *v194;
              v14 = v193 + 2;
              v176 += 4;
              if (4 * v5 == v176)
              {
                goto LABEL_1134;
              }
            }
          }

          goto LABEL_1306;
        }

        goto LABEL_1134;
      }
    }

    else
    {
      if (v20 == 101)
      {
        if (a4)
        {
          if ((v17 + 3) <= v18 && v17 <= v17 + 3 && v17 >= v19)
          {
            v327 = 0;
            while (1)
            {
              v328 = (*v17 + v327);
              v329 = (v328 + 1) > v17[1] || v328 > v328 + 1;
              v330 = !v329 && v328 >= v17[2];
              v331 = !v330 || v14 >= v16;
              if (v331 || v14 < result)
              {
                break;
              }

              *v14++ = *v328;
              v327 += 4;
              if (4 * v5 == v327)
              {
                goto LABEL_1134;
              }
            }
          }

          goto LABEL_1306;
        }

        goto LABEL_1134;
      }

      if (v20 == 102)
      {
        if (a4)
        {
          v68 = (v17 + 3);
          v70 = (v17 + 6) <= v18 && v68 <= (v17 + 6);
          if (v68 <= v18 && v17 <= v68 && v17 >= v19)
          {
            v71 = 0;
            while (1)
            {
              v72 = (*v17 + v71);
              v73 = (v72 + 1) > v17[1] || v72 > v72 + 1;
              v74 = !v73 && v72 >= v17[2];
              v75 = !v74 || v14 >= v16;
              if (v75 || v14 < result)
              {
                break;
              }

              *v14 = *v72;
              if (!v70)
              {
                break;
              }

              v77 = (v17[3] + v71);
              v78 = (v77 + 1) > v17[4] || v77 > v77 + 1;
              v79 = !v78 && v77 >= v17[5];
              v80 = v14 + 1;
              v81 = !v79 || v80 >= v16;
              if (v81 || v80 < result)
              {
                break;
              }

              *v80 = *v77;
              v14 = v80 + 1;
              v71 += 4;
              if (4 * v5 == v71)
              {
                goto LABEL_1134;
              }
            }
          }

          goto LABEL_1306;
        }

        goto LABEL_1134;
      }
    }

LABEL_1164:
    if (a5 > 2)
    {
      if (a5 == 3)
      {
        if (a4)
        {
          v506 = 0;
          while (!a3)
          {
LABEL_1304:
            if (++v506 == v5)
            {
              goto LABEL_1134;
            }
          }

          v507 = v17;
          v508 = a3;
          while (1)
          {
            v509 = (v507 + 3) > v18 || v507 > v507 + 3;
            if (v509 || v507 < v19)
            {
              goto LABEL_1306;
            }

            v511 = v14;
            v512 = (*v507 + 4 * v506);
            v513 = (v512 + 1) > v507[1] || v512 > v512 + 1;
            v514 = !v513 && v512 >= v507[2];
            v515 = !v514 || v14 >= v16;
            if (v515 || v14 < result)
            {
              goto LABEL_1306;
            }

            v517 = *v512;
            *v14 = *v512;
            v518 = v14 + 1;
            if ((v14 + 1) >= v16 || v518 < result)
            {
              goto LABEL_1306;
            }

            *v518 = BYTE1(v517);
            if ((v14 + 2) >= v16 || (v14 + 2) < result)
            {
              goto LABEL_1306;
            }

            v14[2] = BYTE2(v517);
            v507 += 3;
            v14 += 3;
            if (!--v508)
            {
              v14 = v511 + 3;
              goto LABEL_1304;
            }
          }
        }
      }

      else if (a5 == 4 && a4)
      {
        v484 = 0;
        while (!a3)
        {
          v492 = v14;
LABEL_1235:
          ++v484;
          v14 = v492;
          if (v484 == v5)
          {
            goto LABEL_1134;
          }
        }

        v485 = v17;
        v486 = a3;
        while (1)
        {
          v487 = (v485 + 3) > v18 || v485 > v485 + 3;
          if (v487 || v485 < v19)
          {
            goto LABEL_1306;
          }

          v489 = (*v485 + 4 * v484);
          v490 = (v489 + 1) > v485[1] || v489 > v489 + 1;
          v491 = !v490 && v489 >= v485[2];
          v492 = v14 + 4;
          v493 = !v491 || v492 > v16;
          v494 = v493 || v14 > v492;
          if (v494 || v14 < result)
          {
            goto LABEL_1306;
          }

          *v14 = *v489;
          v485 += 3;
          v14 += 4;
          if (!--v486)
          {
            goto LABEL_1235;
          }
        }
      }
    }

    else if (a5 == 1)
    {
      if (a4)
      {
        v496 = 0;
        while (!a3)
        {
LABEL_1264:
          if (++v496 == v5)
          {
            goto LABEL_1134;
          }
        }

        v497 = v17;
        v498 = a3;
        while (1)
        {
          v499 = (v497 + 3) > v18 || v497 > v497 + 3;
          if (v499 || v497 < v19)
          {
            goto LABEL_1306;
          }

          v501 = (*v497 + 4 * v496);
          v502 = (v501 + 1) > v497[1] || v501 > v501 + 1;
          v503 = !v502 && v501 >= v497[2];
          v504 = !v503 || v14 >= v16;
          if (v504 || v14 < result)
          {
            goto LABEL_1306;
          }

          *v14++ = *v501;
          v497 += 3;
          if (!--v498)
          {
            goto LABEL_1264;
          }
        }
      }
    }

    else if (a5 == 2 && a4)
    {
      v472 = 0;
      while (!a3)
      {
        v480 = v14;
LABEL_1199:
        ++v472;
        v14 = v480;
        if (v472 == v5)
        {
          goto LABEL_1134;
        }
      }

      v473 = v17;
      v474 = a3;
      while (1)
      {
        v475 = (v473 + 3) > v18 || v473 > v473 + 3;
        if (v475 || v473 < v19)
        {
          goto LABEL_1306;
        }

        v477 = (*v473 + 4 * v472);
        v478 = (v477 + 1) > v473[1] || v477 > v477 + 1;
        v479 = !v478 && v477 >= v473[2];
        v480 = v14 + 2;
        v481 = !v479 || v480 > v16;
        v482 = v481 || v14 > v480;
        if (v482 || v14 < result)
        {
          goto LABEL_1306;
        }

        *v14 = *v477;
        v473 += 3;
        v14 += 2;
        if (!--v474)
        {
          goto LABEL_1199;
        }
      }
    }

    goto LABEL_1134;
  }

  if (v20 <= 400)
  {
    if (v20 > 300)
    {
      if (v20 == 301)
      {
        if (a4)
        {
          if ((v17 + 3) <= v18 && v17 <= v17 + 3 && v17 >= v19)
          {
            v279 = 0;
            while (1)
            {
              v280 = (*v17 + v279);
              v281 = (v280 + 1) > v17[1] || v280 > v280 + 1;
              v282 = !v281 && v280 >= v17[2];
              v283 = !v282 || v14 >= v16;
              if (v283 || v14 < result)
              {
                break;
              }

              v285 = *v280;
              *v14 = v285;
              v286 = v14 + 1;
              if (v286 >= v16 || v286 < result)
              {
                break;
              }

              *v286 = BYTE1(v285);
              v288 = v286 + 1;
              if (v288 >= v16 || v288 < result)
              {
                break;
              }

              *v288 = BYTE2(v285);
              v14 = v288 + 1;
              v279 += 4;
              if (4 * v5 == v279)
              {
                goto LABEL_1134;
              }
            }
          }

          goto LABEL_1306;
        }

        goto LABEL_1134;
      }

      if (v20 == 302)
      {
        if (a4)
        {
          v139 = (v17 + 3);
          v141 = (v17 + 6) <= v18 && v139 <= (v17 + 6);
          if (v139 <= v18 && v17 <= v139 && v17 >= v19)
          {
            v142 = 0;
            while (1)
            {
              v143 = (*v17 + v142);
              v144 = (v143 + 1) > v17[1] || v143 > v143 + 1;
              v145 = !v144 && v143 >= v17[2];
              v146 = !v145 || v14 >= v16;
              if (v146 || v14 < result)
              {
                break;
              }

              v148 = *v143;
              *v14 = v148;
              v149 = v14 + 1;
              if (v149 >= v16 || v149 < result)
              {
                break;
              }

              *v149 = BYTE1(v148);
              v151 = v149 + 1;
              if (v151 >= v16 || v151 < result)
              {
                break;
              }

              *v151 = BYTE2(v148);
              if (!v141)
              {
                break;
              }

              v153 = (v17[3] + v142);
              if ((v153 + 1) > v17[4] || v153 > v153 + 1 || v153 < v17[5])
              {
                break;
              }

              v154 = v151 + 1;
              if (v154 >= v16 || v154 < result)
              {
                break;
              }

              v156 = *v153;
              *v154 = v156;
              v157 = v154 + 1;
              if (v157 >= v16 || v157 < result)
              {
                break;
              }

              *v157 = BYTE1(v156);
              v159 = v157 + 1;
              if (v159 >= v16 || v159 < result)
              {
                break;
              }

              *v159 = BYTE2(v156);
              v14 = v159 + 1;
              v142 += 4;
              if (4 * v5 == v142)
              {
                goto LABEL_1134;
              }
            }
          }

          goto LABEL_1306;
        }

        goto LABEL_1134;
      }
    }

    else
    {
      if (v20 == 206)
      {
        if (a4)
        {
          v242 = v17 + 3;
          v243 = v17 + 6;
          v245 = (v17 + 6) <= v18 && v242 <= v243;
          v246 = v17 + 9;
          v248 = (v17 + 9) <= v18 && v243 <= v246;
          v249 = v17 + 12;
          v251 = (v17 + 12) <= v18 && v246 <= v249;
          v252 = (v17 + 15);
          v254 = (v17 + 15) <= v18 && v249 <= v252;
          v256 = (v17 + 18) <= v18 && v252 <= (v17 + 18);
          if (v242 <= v18 && v17 <= v242 && v17 >= v19)
          {
            v257 = 0;
            v258 = v17[2];
            while (1)
            {
              v259 = (*v17 + v257);
              v260 = (v259 + 1) > v17[1] || v259 > v259 + 1;
              v261 = !v260 && v259 >= v258;
              v262 = v14 + 2;
              v263 = !v261 || v262 > v16;
              v264 = v263 || v14 > v262;
              if (v264 || v14 < result)
              {
                break;
              }

              *v14 = *v259;
              if (!v245)
              {
                break;
              }

              v266 = (v17[3] + v257);
              v267 = (v266 + 1) > v17[4] || v266 > v266 + 1;
              v268 = !v267 && v266 >= v17[5];
              v269 = v14 + 4;
              v270 = !v268 || v269 > v16;
              if (v270 || v262 > v269)
              {
                break;
              }

              *v262 = *v266;
              if (!v248)
              {
                break;
              }

              v272 = (v17[6] + v257);
              if ((v272 + 1) > v17[7])
              {
                break;
              }

              if (v272 > v272 + 1)
              {
                break;
              }

              if (v272 < v17[8])
              {
                break;
              }

              v273 = v14 + 6;
              if ((v14 + 6) > v16)
              {
                break;
              }

              if (v269 > v273)
              {
                break;
              }

              *v269 = *v272;
              if (!v251)
              {
                break;
              }

              v274 = (v17[9] + v257);
              if ((v274 + 1) > v17[10])
              {
                break;
              }

              if (v274 > v274 + 1)
              {
                break;
              }

              if (v274 < v17[11])
              {
                break;
              }

              v275 = v14 + 8;
              if ((v14 + 8) > v16)
              {
                break;
              }

              if (v273 > v275)
              {
                break;
              }

              *v273 = *v274;
              if (!v254)
              {
                break;
              }

              v276 = (v17[12] + v257);
              if ((v276 + 1) > v17[13])
              {
                break;
              }

              if (v276 > v276 + 1)
              {
                break;
              }

              if (v276 < v17[14])
              {
                break;
              }

              v277 = v14 + 10;
              if ((v14 + 10) > v16)
              {
                break;
              }

              if (v275 > v277)
              {
                break;
              }

              *v275 = *v276;
              if (!v256)
              {
                break;
              }

              v278 = (v17[15] + v257);
              if ((v278 + 1) > v17[16])
              {
                break;
              }

              if (v278 > v278 + 1)
              {
                break;
              }

              if (v278 < v17[17])
              {
                break;
              }

              v14 += 12;
              if (v14 > v16 || v277 > v14)
              {
                break;
              }

              *v277 = *v278;
              v257 += 4;
              if (4 * v5 == v257)
              {
                goto LABEL_1134;
              }
            }
          }

          goto LABEL_1306;
        }

        goto LABEL_1134;
      }

      if (v20 == 208)
      {
        if (a4)
        {
          v83 = v17 + 3;
          v84 = v17 + 6;
          v86 = (v17 + 6) <= v18 && v83 <= v84;
          v87 = v17 + 9;
          v89 = (v17 + 9) <= v18 && v84 <= v87;
          v90 = v17 + 12;
          v92 = (v17 + 12) <= v18 && v87 <= v90;
          v93 = v17 + 15;
          v95 = (v17 + 15) <= v18 && v90 <= v93;
          v96 = v17 + 18;
          v98 = (v17 + 18) <= v18 && v93 <= v96;
          v99 = (v17 + 21);
          v101 = (v17 + 21) <= v18 && v96 <= v99;
          v103 = (v17 + 24) <= v18 && v99 <= (v17 + 24);
          if (v83 <= v18 && v17 <= v83 && v17 >= v19)
          {
            v104 = 0;
            v105 = v17[2];
            while (1)
            {
              v106 = (*v17 + v104);
              v107 = (v106 + 1) > v17[1] || v106 > v106 + 1;
              v108 = !v107 && v106 >= v105;
              v109 = v14 + 2;
              v110 = !v108 || v109 > v16;
              v111 = v110 || v14 > v109;
              if (v111 || v14 < result)
              {
                break;
              }

              *v14 = *v106;
              if (!v86)
              {
                break;
              }

              v113 = (v17[3] + v104);
              v114 = (v113 + 1) > v17[4] || v113 > v113 + 1;
              v115 = !v114 && v113 >= v17[5];
              v116 = v14 + 4;
              v117 = !v115 || v116 > v16;
              if (v117 || v109 > v116)
              {
                break;
              }

              *v109 = *v113;
              if (!v89)
              {
                break;
              }

              v119 = (v17[6] + v104);
              if ((v119 + 1) > v17[7])
              {
                break;
              }

              if (v119 > v119 + 1)
              {
                break;
              }

              if (v119 < v17[8])
              {
                break;
              }

              v120 = v14 + 6;
              if ((v14 + 6) > v16)
              {
                break;
              }

              if (v116 > v120)
              {
                break;
              }

              *v116 = *v119;
              if (!v92)
              {
                break;
              }

              v121 = (v17[9] + v104);
              if ((v121 + 1) > v17[10])
              {
                break;
              }

              if (v121 > v121 + 1)
              {
                break;
              }

              if (v121 < v17[11])
              {
                break;
              }

              v122 = v14 + 8;
              if ((v14 + 8) > v16)
              {
                break;
              }

              if (v120 > v122)
              {
                break;
              }

              *v120 = *v121;
              if (!v95)
              {
                break;
              }

              v123 = (v17[12] + v104);
              if ((v123 + 1) > v17[13])
              {
                break;
              }

              if (v123 > v123 + 1)
              {
                break;
              }

              if (v123 < v17[14])
              {
                break;
              }

              v124 = v14 + 10;
              if ((v14 + 10) > v16)
              {
                break;
              }

              if (v122 > v124)
              {
                break;
              }

              *v122 = *v123;
              if (!v98)
              {
                break;
              }

              v125 = (v17[15] + v104);
              if ((v125 + 1) > v17[16])
              {
                break;
              }

              if (v125 > v125 + 1)
              {
                break;
              }

              if (v125 < v17[17])
              {
                break;
              }

              v126 = v14 + 12;
              if ((v14 + 12) > v16)
              {
                break;
              }

              if (v124 > v126)
              {
                break;
              }

              *v124 = *v125;
              if (!v101)
              {
                break;
              }

              v127 = (v17[18] + v104);
              if ((v127 + 1) > v17[19])
              {
                break;
              }

              if (v127 > v127 + 1)
              {
                break;
              }

              if (v127 < v17[20])
              {
                break;
              }

              v128 = v14 + 14;
              if ((v14 + 14) > v16)
              {
                break;
              }

              if (v126 > v128)
              {
                break;
              }

              *v126 = *v127;
              if (!v103)
              {
                break;
              }

              v129 = (v17[21] + v104);
              if ((v129 + 1) > v17[22])
              {
                break;
              }

              if (v129 > v129 + 1)
              {
                break;
              }

              if (v129 < v17[23])
              {
                break;
              }

              v14 += 16;
              if (v14 > v16 || v128 > v14)
              {
                break;
              }

              *v128 = *v129;
              v104 += 4;
              if (4 * v5 == v104)
              {
                goto LABEL_1134;
              }
            }
          }

          goto LABEL_1306;
        }

        goto LABEL_1134;
      }
    }

    goto LABEL_1164;
  }

  if (v20 <= 403)
  {
    if (v20 == 401)
    {
      if (a4)
      {
        if ((v17 + 3) <= v18 && v17 <= v17 + 3 && v17 >= v19)
        {
          v448 = 0;
          v449 = v17[2];
          while (1)
          {
            v450 = &v14[v448];
            v451 = (*v17 + v448);
            v452 = (v451 + 1) > v17[1] || v451 > v451 + 1;
            v453 = !v452 && v451 >= v449;
            v454 = v450 + 1;
            v455 = !v453 || v454 > v16;
            v456 = v455 || v450 > v454;
            if (v456 || v450 < result)
            {
              break;
            }

            *v450 = *v451;
            v448 += 4;
            if (4 * v5 == v448)
            {
              goto LABEL_1134;
            }
          }
        }

        goto LABEL_1306;
      }

      goto LABEL_1134;
    }

    if (v20 == 402)
    {
      if (a4)
      {
        v223 = (v17 + 3);
        v225 = (v17 + 6) <= v18 && v223 <= (v17 + 6);
        if (v223 <= v18 && v17 <= v223 && v17 >= v19)
        {
          v226 = 0;
          v227 = v17[2];
          v228 = v14 + 4;
          while (1)
          {
            v229 = v228 - 1;
            v230 = (*v17 + v226);
            v231 = (v230 + 1) > v17[1] || v230 > v230 + 1;
            v232 = !v231 && v230 >= v227;
            v233 = !v232 || v228 > v16;
            v234 = v233 || v229 > v228;
            if (v234 || v229 < result)
            {
              break;
            }

            *v229 = *v230;
            if (!v225)
            {
              break;
            }

            v236 = (v17[3] + v226);
            v237 = (v236 + 1) > v17[4] || v236 > v236 + 1;
            v238 = !v237 && v236 >= v17[5];
            v239 = v228 + 1;
            v240 = !v238 || v239 > v16;
            if (v240 || v228 > v239)
            {
              break;
            }

            *v228 = *v236;
            v228 += 2;
            v226 += 4;
            if (4 * v5 == v226)
            {
              goto LABEL_1134;
            }
          }
        }

        goto LABEL_1306;
      }

      goto LABEL_1134;
    }

    goto LABEL_1164;
  }

  if (v20 == 404)
  {
    if (a4)
    {
      v423 = v17 + 3;
      v424 = v17 + 6;
      v426 = (v17 + 6) <= v18 && v423 <= v424;
      v427 = (v17 + 9);
      v429 = (v17 + 9) <= v18 && v424 <= v427;
      v431 = (v17 + 12) <= v18 && v427 <= (v17 + 12);
      if (v423 <= v18 && v17 <= v423 && v17 >= v19)
      {
        v432 = 0;
        v433 = v17[2];
        v434 = v14 + 8;
        while (1)
        {
          v435 = (*v17 + v432);
          v436 = (v435 + 1) > v17[1] || v435 > v435 + 1;
          if (v436 || v435 < v433)
          {
            break;
          }

          v438 = v434 - 1;
          if ((v434 - 1) > v16)
          {
            break;
          }

          v439 = v434 - 2;
          if (v434 - 2 > v438)
          {
            break;
          }

          if (v439 < result)
          {
            break;
          }

          *v439 = *v435;
          if (!v426)
          {
            break;
          }

          v440 = (v17[3] + v432);
          v441 = (v440 + 1) > v17[4] || v440 > v440 + 1;
          v442 = !v441 && v440 >= v17[5];
          v443 = !v442 || v434 > v16;
          if (v443 || v438 > v434)
          {
            break;
          }

          *v438 = *v440;
          if (!v429)
          {
            break;
          }

          v445 = (v17[6] + v432);
          if ((v445 + 1) > v17[7])
          {
            break;
          }

          if (v445 > v445 + 1)
          {
            break;
          }

          if (v445 < v17[8])
          {
            break;
          }

          v446 = (v434 + 1);
          if ((v434 + 1) > v16)
          {
            break;
          }

          if (v434 > v446)
          {
            break;
          }

          *v434 = *v445;
          if (!v431)
          {
            break;
          }

          v447 = (v17[9] + v432);
          if ((v447 + 1) > v17[10] || v447 > v447 + 1 || v447 < v17[11] || (v434 + 2) > v16 || v446 > (v434 + 2))
          {
            break;
          }

          v434[1] = *v447;
          v432 += 4;
          v434 += 4;
          if (4 * v5 == v432)
          {
            goto LABEL_1134;
          }
        }
      }

      goto LABEL_1306;
    }

    goto LABEL_1134;
  }

  if (v20 == 406)
  {
    if (a4)
    {
      v290 = v17 + 3;
      v291 = v17 + 6;
      v293 = (v17 + 6) <= v18 && v290 <= v291;
      v294 = v17 + 9;
      v296 = (v17 + 9) <= v18 && v291 <= v294;
      v297 = v17 + 12;
      v299 = (v17 + 12) <= v18 && v294 <= v297;
      v300 = (v17 + 15);
      v302 = (v17 + 15) <= v18 && v297 <= v300;
      v304 = (v17 + 18) <= v18 && v300 <= (v17 + 18);
      if (v290 <= v18 && v17 <= v290 && v17 >= v19)
      {
        v305 = 0;
        v306 = v17[2];
        while (1)
        {
          v307 = (*v17 + v305);
          v308 = (v307 + 1) > v17[1] || v307 > v307 + 1;
          v309 = !v308 && v307 >= v306;
          v310 = v14 + 4;
          v311 = !v309 || v310 > v16;
          v312 = v311 || v14 > v310;
          if (v312 || v14 < result)
          {
            break;
          }

          *v14 = *v307;
          if (!v293)
          {
            break;
          }

          v314 = (v17[3] + v305);
          v315 = (v314 + 1) > v17[4] || v314 > v314 + 1;
          v316 = !v315 && v314 >= v17[5];
          v317 = v14 + 8;
          v318 = !v316 || v317 > v16;
          if (v318 || v310 > v317)
          {
            break;
          }

          *v310 = *v314;
          if (!v296)
          {
            break;
          }

          v320 = (v17[6] + v305);
          if ((v320 + 1) > v17[7])
          {
            break;
          }

          if (v320 > v320 + 1)
          {
            break;
          }

          if (v320 < v17[8])
          {
            break;
          }

          v321 = v14 + 12;
          if ((v14 + 12) > v16)
          {
            break;
          }

          if (v317 > v321)
          {
            break;
          }

          *v317 = *v320;
          if (!v299)
          {
            break;
          }

          v322 = (v17[9] + v305);
          if ((v322 + 1) > v17[10])
          {
            break;
          }

          if (v322 > v322 + 1)
          {
            break;
          }

          if (v322 < v17[11])
          {
            break;
          }

          v323 = v14 + 16;
          if ((v14 + 16) > v16)
          {
            break;
          }

          if (v321 > v323)
          {
            break;
          }

          *v321 = *v322;
          if (!v302)
          {
            break;
          }

          v324 = (v17[12] + v305);
          if ((v324 + 1) > v17[13])
          {
            break;
          }

          if (v324 > v324 + 1)
          {
            break;
          }

          if (v324 < v17[14])
          {
            break;
          }

          v325 = v14 + 20;
          if ((v14 + 20) > v16)
          {
            break;
          }

          if (v323 > v325)
          {
            break;
          }

          *v323 = *v324;
          if (!v304)
          {
            break;
          }

          v326 = (v17[15] + v305);
          if ((v326 + 1) > v17[16])
          {
            break;
          }

          if (v326 > v326 + 1)
          {
            break;
          }

          if (v326 < v17[17])
          {
            break;
          }

          v14 += 24;
          if (v14 > v16 || v325 > v14)
          {
            break;
          }

          *v325 = *v326;
          v305 += 4;
          if (4 * v5 == v305)
          {
            goto LABEL_1134;
          }
        }
      }

      goto LABEL_1306;
    }

    goto LABEL_1134;
  }

  if (v20 != 408)
  {
    goto LABEL_1164;
  }

  if (a4)
  {
    v21 = v17 + 3;
    v22 = v17 + 6;
    v24 = (v17 + 6) <= v18 && v21 <= v22;
    v25 = v17 + 9;
    v27 = (v17 + 9) <= v18 && v22 <= v25;
    v28 = v17 + 12;
    v30 = (v17 + 12) <= v18 && v25 <= v28;
    v31 = v17 + 15;
    v33 = (v17 + 15) <= v18 && v28 <= v31;
    v34 = v17 + 18;
    v36 = (v17 + 18) <= v18 && v31 <= v34;
    v37 = (v17 + 21);
    v39 = (v17 + 21) <= v18 && v34 <= v37;
    v41 = (v17 + 24) <= v18 && v37 <= (v17 + 24);
    if (v21 <= v18 && v17 <= v21 && v17 >= v19)
    {
      v42 = 0;
      v43 = v17[2];
      while (1)
      {
        v44 = (*v17 + v42);
        v45 = (v44 + 1) > v17[1] || v44 > v44 + 1;
        v46 = !v45 && v44 >= v43;
        v47 = v14 + 4;
        v48 = !v46 || v47 > v16;
        v49 = v48 || v14 > v47;
        if (v49 || v14 < result)
        {
          break;
        }

        *v14 = *v44;
        if (!v24)
        {
          break;
        }

        v51 = (v17[3] + v42);
        v52 = (v51 + 1) > v17[4] || v51 > v51 + 1;
        v53 = !v52 && v51 >= v17[5];
        v54 = v14 + 8;
        v55 = !v53 || v54 > v16;
        if (v55 || v47 > v54)
        {
          break;
        }

        *v47 = *v51;
        if (!v27)
        {
          break;
        }

        v57 = (v17[6] + v42);
        if ((v57 + 1) > v17[7])
        {
          break;
        }

        if (v57 > v57 + 1)
        {
          break;
        }

        if (v57 < v17[8])
        {
          break;
        }

        v58 = v14 + 12;
        if ((v14 + 12) > v16)
        {
          break;
        }

        if (v54 > v58)
        {
          break;
        }

        *v54 = *v57;
        if (!v30)
        {
          break;
        }

        v59 = (v17[9] + v42);
        if ((v59 + 1) > v17[10])
        {
          break;
        }

        if (v59 > v59 + 1)
        {
          break;
        }

        if (v59 < v17[11])
        {
          break;
        }

        v60 = v14 + 16;
        if ((v14 + 16) > v16)
        {
          break;
        }

        if (v58 > v60)
        {
          break;
        }

        *v58 = *v59;
        if (!v33)
        {
          break;
        }

        v61 = (v17[12] + v42);
        if ((v61 + 1) > v17[13])
        {
          break;
        }

        if (v61 > v61 + 1)
        {
          break;
        }

        if (v61 < v17[14])
        {
          break;
        }

        v62 = v14 + 20;
        if ((v14 + 20) > v16)
        {
          break;
        }

        if (v60 > v62)
        {
          break;
        }

        *v60 = *v61;
        if (!v36)
        {
          break;
        }

        v63 = (v17[15] + v42);
        if ((v63 + 1) > v17[16])
        {
          break;
        }

        if (v63 > v63 + 1)
        {
          break;
        }

        if (v63 < v17[17])
        {
          break;
        }

        v64 = v14 + 24;
        if ((v14 + 24) > v16)
        {
          break;
        }

        if (v62 > v64)
        {
          break;
        }

        *v62 = *v63;
        if (!v39)
        {
          break;
        }

        v65 = (v17[18] + v42);
        if ((v65 + 1) > v17[19])
        {
          break;
        }

        if (v65 > v65 + 1)
        {
          break;
        }

        if (v65 < v17[20])
        {
          break;
        }

        v66 = v14 + 28;
        if ((v14 + 28) > v16)
        {
          break;
        }

        if (v64 > v66)
        {
          break;
        }

        *v64 = *v65;
        if (!v41)
        {
          break;
        }

        v67 = (v17[21] + v42);
        if ((v67 + 1) > v17[22])
        {
          break;
        }

        if (v67 > v67 + 1)
        {
          break;
        }

        if (v67 < v17[23])
        {
          break;
        }

        v14 += 32;
        if (v14 > v16 || v66 > v14)
        {
          break;
        }

        *v66 = *v67;
        v42 += 4;
        if (4 * v5 == v42)
        {
          goto LABEL_1134;
        }
      }
    }

    goto LABEL_1306;
  }

LABEL_1134:
  v458 = *(a1 + 88);
  v459 = *(a1 + 96);
  v460 = *(a1 + 104);
  v461 = *(a1 + 80);
  *(a1 + 80) = v461 + v13;
  if (__CFADD__(v461, v13))
  {
    ++*(a1 + 84);
  }

  v462 = v461 & 0x3F;
  v463 = 64 - v462;
  v464 = a1 + 64;
  v465 = (a1 + v462);
  v466 = v13 - (64 - v462);
  if (v13 < 64 - v462)
  {
    if (v458 > v459)
    {
      goto LABEL_1306;
    }

    if (v460 > v458)
    {
      goto LABEL_1306;
    }

    if (v459 - v458 < v13)
    {
      goto LABEL_1306;
    }

    if (v465 > v464)
    {
      goto LABEL_1306;
    }

    if (v465 < a1)
    {
      goto LABEL_1306;
    }

    if (v464 - v465 < v13)
    {
      goto LABEL_1306;
    }

    result = memcpy(v465, v458, v13);
    if (v465 > &v465[v13])
    {
      goto LABEL_1306;
    }

    return 1;
  }

  if (v458 <= v459 && v460 <= v458 && v459 - v458 >= v463 && v465 <= v464 && v465 >= a1 && v464 - v465 >= v463)
  {
    memcpy(v465, v458, v463);
    result = FLAC__MD5Transform((a1 + 64), a1);
    v467 = &v458[v463];
    if (v466 >= 0x40)
    {
      v468 = v459 - v458 - v463;
      while (v467 <= v459)
      {
        if (v460 > v467)
        {
          break;
        }

        v46 = v468 >= 0x40;
        v468 -= 64;
        if (!v46)
        {
          break;
        }

        v469 = *v467;
        v470 = *(v467 + 1);
        v471 = *(v467 + 3);
        *(a1 + 32) = *(v467 + 2);
        *(a1 + 48) = v471;
        *a1 = v469;
        *(a1 + 16) = v470;
        result = FLAC__MD5Transform((a1 + 64), a1);
        v467 += 64;
        v466 -= 64;
        if (v466 <= 0x3F)
        {
          goto LABEL_1159;
        }
      }

      goto LABEL_1306;
    }

LABEL_1159:
    if (v467 <= v459 && v460 <= v467 && v459 - v467 >= v466)
    {
      result = memcpy(a1, v467, v466);
      if (a1 + v466 >= a1)
      {
        return 1;
      }
    }
  }

LABEL_1306:
  __break(0x5519u);
  return result;
}

void FLAC__format_entropy_coding_method_partitioned_rice_contents_ensure_size(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 48) < a2)
  {
    v4 = *a1;
    v5 = 4 * (1 << a2);
    v6 = malloc_type_realloc(*a1, v5, 0x5C7DB875uLL);
    if (v6)
    {
      *a1 = v6;
      *(a1 + 8) = &v6[v5];
      *(a1 + 16) = v6;
      v7 = *(a1 + 24);
      v8 = malloc_type_realloc(v7, v5, 0x5C7DB875uLL);
      if (v8)
      {
        v9 = v8;
        v10 = &v8[v5];
        *(a1 + 24) = v8;
        *(a1 + 32) = &v8[v5];
        *(a1 + 40) = v8;
        bzero(v8, v5);
        if (v9 > v10)
        {
          __break(0x5519u);
        }

        else
        {
          *(a1 + 48) = a2;
        }
      }

      else
      {
        free(v7);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
      }
    }

    else
    {
      free(v4);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }
}

uint64_t crc16_update_word_(uint64_t result, unsigned int a2)
{
  v2 = *(result + 28);
  HIDWORD(v4) = *(result + 32);
  LODWORD(v4) = HIDWORD(v4);
  v3 = v4 >> 3;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        goto LABEL_40;
      }

LABEL_32:
      v17 = &FLAC__crc16_table[a2 ^ (v2 >> 8)];
      v18 = v17 + 1;
      if (v17 >= FLAC__crc16_table && v18 <= band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds && v17 < v18)
      {
        *(result + 28) = *v17 ^ (v2 << 8);
LABEL_40:
        *(result + 32) = 0;
        return result;
      }

      goto LABEL_41;
    }

LABEL_24:
    v13 = &FLAC__crc16_table[(v2 ^ a2 & 0xFF00) >> 8];
    v14 = v13 + 1;
    if (v13 < FLAC__crc16_table || v14 > band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds || v13 >= v14)
    {
      goto LABEL_41;
    }

    v2 = *v13 ^ (v2 << 8);
    goto LABEL_32;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v5 = &FLAC__crc16_table[(v2 >> 8) ^ HIBYTE(a2)];
    v6 = v5 + 1;
    if (v5 < FLAC__crc16_table || v6 > band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds || v5 >= v6)
    {
      goto LABEL_41;
    }

    v2 = *v5 ^ (*(result + 28) << 8);
  }

  v9 = &FLAC__crc16_table[BYTE2(a2) ^ (v2 >> 8)];
  v10 = v9 + 1;
  if (v9 >= FLAC__crc16_table && v10 <= band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds && v9 < v10)
  {
    v2 = *v9 ^ (v2 << 8);
    goto LABEL_24;
  }

LABEL_41:
  __break(0x5519u);
  return result;
}

unint64_t bitreader_read_from_client_(unint64_t result)
{
  v1 = result;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *(result + 20);
  v3 = *(result + 12);
  if (v2)
  {
    v4 = v3 - v2;
    v5 = *(result + 16) == 0;
    result = *result;
    v6 = 4 * *(v1 + 8);
    v7 = (*v1 + 4 * v2);
    if (!v5)
    {
      ++v4;
    }

    v8 = (4 * v4);
    if (result > v7 || v7 > *v1 + v6 || v6 - 4 * v2 < v8 || v6 < v8)
    {
      goto LABEL_40;
    }

    result = memmove(result, v7, v8);
    v3 = *(v1 + 12) - v2;
    *(v1 + 12) = v3;
    *(v1 + 20) = 0;
  }

  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  v32 = 4 * (v12 - v3) - v13;
  if (!v32)
  {
    return 0;
  }

  v14 = *v1;
  v15 = *v1 + 4 * v12;
  v16 = (*v1 + 4 * v3);
  if (v13)
  {
    if ((v16 + 1) > v15 || v16 >= v16 + 1 || v16 < v14)
    {
LABEL_40:
      __break(0x5519u);
      return result;
    }

    *v16 = bswap32(*v16);
  }

  v19 = v16 + v13;
  v21 = *(v1 + 40);
  v20 = *(v1 + 48);
  v31[0] = v19;
  v31[1] = v15;
  v31[2] = v14;
  result = v21(v31, &v32, v20);
  if (result)
  {
    v23 = *(v1 + 12);
    v22 = *(v1 + 16);
    v24 = v32;
    v25 = v22 + 4 * v23 + v32 + 3;
    if (v23 < v25 >> 2)
    {
      v26 = *v1;
      v27 = (v25 >> 2) - v23;
      v28 = (*v1 + 4 * v23);
      while (v28 >= v26)
      {
        if ((v28 + 1) > v26 + 4 * *(v1 + 8) || v28 >= v28 + 1)
        {
          break;
        }

        *v28 = bswap32(*v28);
        ++v28;
        if (!--v27)
        {
          LODWORD(v23) = *(v1 + 12);
          v22 = *(v1 + 16);
          goto LABEL_38;
        }
      }

      goto LABEL_40;
    }

LABEL_38:
    v30 = v22 + v24;
    *(v1 + 12) = (v23 + (v30 >> 2)) & 0x3FFFFFFF;
    *(v1 + 16) = v30 & 3;
    return 1;
  }

  return result;
}

char *FLAC__memory_alloc_aligned(void *a1, unint64_t a2, uint64_t a3)
{
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  result = malloc_type_malloc(v5, 0x23BCBC25uLL);
  v7 = *a3;
  v8 = *a3 + 24;
  if (v8 <= *(a3 + 8) && v7 <= v8 && v7 >= *(a3 + 16))
  {
    v11 = &result[v5];
    if (!result)
    {
      v11 = 0;
    }

    *v7 = result;
    v7[1] = v11;
    v7[2] = result;
    *a1 = result;
    a1[1] = v11;
    a1[2] = result;
  }

  else
  {
    __break(0x5519u);
  }

  return result;
}

unint64_t FLAC__bitreader_read_raw_uint64(unint64_t a1, unint64_t *a2, int a3)
{
  v7 = -1431655766;
  result = FLAC__bitreader_read_raw_uint32(a1, &v7, a3 - 32);
  if (result)
  {
    v6 = -1431655766;
    result = FLAC__bitreader_read_raw_uint32(a1, &v6, 0x20u);
    if (result)
    {
      *a2 = v6 | (v7 << 32);
      return 1;
    }
  }

  return result;
}

unint64_t FLAC__bitreader_read_byte_block_aligned_no_crc(unint64_t result, void *a2, unsigned int a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = a3;
  v5 = result;
  v29 = -1431655766;
  while (*(v5 + 24))
  {
    result = FLAC__bitreader_read_raw_uint32(v5, &v29, 8u);
    if (!result)
    {
      return result;
    }

    v6 = v29;
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    ++*a2;
    if (v7 >= v8 || v7 < v9)
    {
LABEL_45:
      __break(0x5519u);
      return result;
    }

    *v7 = v6;
    if (!--v3)
    {
      return 1;
    }
  }

  if (v3 <= 3)
  {
    goto LABEL_36;
  }

  do
  {
    v11 = *(v5 + 20);
    if (v11 >= *(v5 + 12))
    {
      result = bitreader_read_from_client_(v5);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v12 = *v5;
      v13 = *v5 + 4 * *(v5 + 8);
      *(v5 + 20) = v11 + 1;
      v14 = (v12 + 4 * v11);
      v15 = v14 + 1;
      if (v14 < v12 || v15 > v13 || v14 > v15)
      {
        goto LABEL_45;
      }

      v18 = *a2;
      if (*a2 >= a2[1] || v18 < a2[2])
      {
        goto LABEL_45;
      }

      v20 = *v14;
      *v18 = HIBYTE(v20);
      v21 = (*a2 + 1);
      if (v21 >= a2[1])
      {
        goto LABEL_45;
      }

      if (v21 < a2[2])
      {
        goto LABEL_45;
      }

      *v21 = BYTE2(v20);
      v22 = (*a2 + 2);
      if (v22 >= a2[1])
      {
        goto LABEL_45;
      }

      if (v22 < a2[2])
      {
        goto LABEL_45;
      }

      *v22 = BYTE1(v20);
      v23 = (*a2 + 3);
      if (v23 >= a2[1] || v23 < a2[2])
      {
        goto LABEL_45;
      }

      *v23 = v20;
      *a2 += 4;
      v3 -= 4;
    }
  }

  while (v3 > 3);
  if (!v3)
  {
    return 1;
  }

LABEL_36:
  while (1)
  {
    result = FLAC__bitreader_read_raw_uint32(v5, &v29, 8u);
    if (!result)
    {
      return result;
    }

    v24 = v29;
    v25 = *a2;
    v26 = a2[1];
    v27 = a2[2];
    ++*a2;
    if (v25 >= v26 || v25 < v27)
    {
      goto LABEL_45;
    }

    *v25 = v24;
    if (!--v3)
    {
      return 1;
    }
  }
}

unint64_t FLAC__bitreader_skip_byte_block_aligned_no_crc(_DWORD *a1, unsigned int a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2;
  v6 = -1431655766;
  while (a1[6])
  {
    result = FLAC__bitreader_read_raw_uint32(a1, &v6, 8u);
    if (!result)
    {
      return result;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  if (v2 <= 3)
  {
    goto LABEL_14;
  }

  do
  {
    v5 = a1[5];
    if (v5 >= a1[3])
    {
      result = bitreader_read_from_client_(a1);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      a1[5] = v5 + 1;
      v2 -= 4;
    }
  }

  while (v2 > 3);
  if (!v2)
  {
    return 1;
  }

LABEL_14:
  while (1)
  {
    result = FLAC__bitreader_read_raw_uint32(a1, &v6, 8u);
    if (!result)
    {
      break;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t has_id_filtered_(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 1904);
  if (!v2)
  {
    return 0;
  }

  v3 = *(result + 1880);
  v4 = *(result + 1888);
  for (i = v4 - v3; v3 <= v4 && *(result + 1896) <= v3 && i > 3; i -= 4)
  {
    if (*v3 == *a2)
    {
      return 1;
    }

    ++v3;
    if (!--v2)
    {
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

void read_metadata_vorbiscomment_(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v3 = a3;
  v6 = a3 - 8;
  if (a3 >= 8)
  {
    if (a2 + 1 < a2)
    {
      goto LABEL_94;
    }

    v7 = *(*(a1 + 8) + 112);
    v77 = 0;
    if (!FLAC__bitreader_read_raw_uint32(v7, &v77, 8u))
    {
      return;
    }

    LODWORD(v75) = -1431655766;
    if (!FLAC__bitreader_read_raw_uint32(v7, &v75, 8u))
    {
      return;
    }

    v8 = v75;
    v9 = v77;
    if (!FLAC__bitreader_read_raw_uint32(v7, &v75, 8u))
    {
      return;
    }

    v10 = v75;
    if (!FLAC__bitreader_read_raw_uint32(v7, &v75, 8u))
    {
      return;
    }

    v11 = v9 | (v8 << 8) | (v10 << 16) | (v75 << 24);
    *a2 = v11;
    if (v11)
    {
      v12 = v6 - v11;
      if (v6 < v11)
      {
        *a2 = 0;
        *(a2 + 2) = 0;
        *(a2 + 3) = 0;
        v3 = v6;
        *(a2 + 1) = 0;
        goto LABEL_10;
      }

      v13 = v11 + 1;
      v14 = malloc_type_malloc(v11 + 1, 0x23BCBC25uLL);
      v15 = &v14[v13];
      if (!v14)
      {
        v15 = 0;
      }

      *(a2 + 1) = v14;
      *(a2 + 2) = v15;
      *(a2 + 3) = v14;
      if (!v14)
      {
        goto LABEL_90;
      }

      v16 = *(*(a1 + 8) + 112);
      v17 = *a2;
      v75 = *(a2 + 2);
      v76 = *(a2 + 3);
      if (!FLAC__bitreader_read_byte_block_aligned_no_crc(v16, &v75, v17))
      {
        return;
      }

      v18 = (*(a2 + 1) + *a2);
      if (v18 >= *(a2 + 2) || v18 < *(a2 + 3))
      {
LABEL_94:
        __break(0x5519u);
        return;
      }

      *v18 = 0;
      v6 = v12;
    }

    else
    {
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *(a2 + 3) = 0;
    }

    v19 = a2 + 8;
    if (a2 + 8 <= a2 + 9)
    {
      v20 = *(*(a1 + 8) + 112);
      v77 = 0;
      if (!FLAC__bitreader_read_raw_uint32(v20, &v77, 8u))
      {
        return;
      }

      LODWORD(v75) = -1431655766;
      if (!FLAC__bitreader_read_raw_uint32(v20, &v75, 8u))
      {
        return;
      }

      v21 = v75;
      v22 = v77;
      if (!FLAC__bitreader_read_raw_uint32(v20, &v75, 8u))
      {
        return;
      }

      v23 = v75;
      if (!FLAC__bitreader_read_raw_uint32(v20, &v75, 8u))
      {
        return;
      }

      v24 = v22 | (v21 << 8) | (v23 << 16);
      v25 = v24 | (v75 << 24);
      *v19 = v25;
      if (v25 >= 0x186A1)
      {
        *v19 = 0;
        return;
      }

      if (!v25)
      {
LABEL_88:
        v3 = v6;
        goto LABEL_10;
      }

      v26 = (32 * v24);
      v27 = malloc_type_malloc(v26, 0x62F78340uLL);
      v28 = &v27[v26];
      if (!v27)
      {
        v28 = 0;
      }

      *(a2 + 5) = v27;
      *(a2 + 6) = v28;
      *(a2 + 7) = v27;
      if (v27)
      {
        if (*v19)
        {
          v74 = 0;
          v29 = 16;
          v3 = v6;
          while (1)
          {
            v30 = *(a2 + 7);
            v31 = *(a2 + 5) + v29;
            v32 = (v31 - 16);
            v33 = v31 + 16;
            v34 = v33 > *(a2 + 6) || v32 > v33;
            v35 = !v34 && v32 >= v30;
            if (!v35)
            {
              goto LABEL_94;
            }

            *v32 = 0;
            v36 = (*(a2 + 5) + v29);
            v37 = (v36 - 2);
            v38 = (v36 + 2) > *(a2 + 6) || v37 > (v36 + 2);
            if (v38 || v37 < v30)
            {
              goto LABEL_94;
            }

            *(v36 - 1) = 0;
            *v36 = 0;
            v36[1] = 0;
            if (v3 <= 3)
            {
              goto LABEL_92;
            }

            v40 = *(a2 + 5) + v29;
            v41 = (v40 - 16);
            if (v40 - 16 > (v40 - 12))
            {
              goto LABEL_94;
            }

            v73 = v29;
            v42 = *(*(a1 + 8) + 112);
            v77 = 0;
            if (!FLAC__bitreader_read_raw_uint32(v42, &v77, 8u))
            {
              goto LABEL_91;
            }

            LODWORD(v75) = -1431655766;
            if (!FLAC__bitreader_read_raw_uint32(v42, &v75, 8u))
            {
              goto LABEL_91;
            }

            v43 = v75;
            v44 = v77;
            if (!FLAC__bitreader_read_raw_uint32(v42, &v75, 8u))
            {
              goto LABEL_91;
            }

            v45 = v75;
            if (!FLAC__bitreader_read_raw_uint32(v42, &v75, 8u))
            {
              goto LABEL_91;
            }

            *v41 = v44 | (v43 << 8) | (v45 << 16) | (v75 << 24);
            v46 = *(a2 + 5);
            v47 = v46 + v73 + 16;
            if (v47 > *(a2 + 6))
            {
              goto LABEL_94;
            }

            v48 = (v46 + v73 - 16);
            if (v48 > v47 || v48 < *(a2 + 7))
            {
              goto LABEL_94;
            }

            v3 -= 4;
            v49 = *v48;
            if (v49)
            {
              if (v3 < v49)
              {
                goto LABEL_92;
              }

              v50 = (v46 + v73);
              v51 = malloc_type_malloc(v49 + 1, 0x23BCBC25uLL);
              v52 = &v51[v49 + 1];
              if (!v51)
              {
                v52 = 0;
              }

              *(v50 - 1) = v51;
              *v50 = v52;
              v50[1] = v51;
              if (!v51)
              {
                **a1 = 8;
LABEL_91:
                *v19 = v74;
                return;
              }

              v53 = *(a2 + 5);
              v54 = v53 + v73 + 16;
              if (v54 > *(a2 + 6))
              {
                goto LABEL_94;
              }

              v55 = (v53 + v73 - 16);
              if (v55 > v54)
              {
                goto LABEL_94;
              }

              if (v55 < *(a2 + 7))
              {
                goto LABEL_94;
              }

              v56 = v53 + v73;
              v58 = *(v53 + v73 - 8);
              v57 = *(v53 + v73);
              v35 = v57 >= v58;
              v59 = v57 - v58;
              if (!v35)
              {
                goto LABEL_94;
              }

              if (*(v56 + 8) > v58)
              {
                goto LABEL_94;
              }

              v60 = *v55;
              if (v59 < v60)
              {
                goto LABEL_94;
              }

              bzero(v58, *v55);
              if (v58 > &v58[v60])
              {
                goto LABEL_94;
              }

              v61 = *(a2 + 5);
              v62 = v61 + v73 + 16;
              if (v62 > *(a2 + 6))
              {
                goto LABEL_94;
              }

              v63 = (v61 + v73 - 16);
              if (v63 > v62 || v63 < *(a2 + 7))
              {
                goto LABEL_94;
              }

              v3 -= v49;
              v64 = *(*(a1 + 8) + 112);
              v65 = v61 + v73;
              v66 = *v63;
              v75 = *(v65 - 8);
              v76 = *(v65 + 8);
              if (!FLAC__bitreader_read_byte_block_aligned_no_crc(v64, &v75, v66))
              {
LABEL_92:
                *v19 = v74;
                goto LABEL_10;
              }

              v67 = *(a2 + 5);
              v68 = v67 + v73 + 16;
              if (v68 > *(a2 + 6))
              {
                goto LABEL_94;
              }

              v69 = (v67 + v73 - 16);
              if (v69 > v68)
              {
                goto LABEL_94;
              }

              if (v69 < *(a2 + 7))
              {
                goto LABEL_94;
              }

              v70 = (v67 + v73);
              v71 = (*(v67 + v73 - 8) + *v69);
              if (v71 >= *v70 || v71 < v70[1])
              {
                goto LABEL_94;
              }

              *v71 = 0;
            }

            else
            {
              v72 = (v46 + v73);
              *(v72 - 1) = 0;
              *v72 = 0;
              v72[1] = 0;
            }

            v29 = v73 + 32;
            if (++v74 >= *v19)
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_88;
      }

      *v19 = 0;
LABEL_90:
      **a1 = 8;
      return;
    }

    goto LABEL_94;
  }

LABEL_10:
  if (v3)
  {
    if (!a2[8])
    {
      free(*(a2 + 5));
      *(a2 + 5) = 0;
      *(a2 + 6) = 0;
      *(a2 + 7) = 0;
    }

    FLAC__bitreader_skip_byte_block_aligned_no_crc(*(*(a1 + 8) + 112), v3);
  }
}

uint64_t read_metadata_cuesheet_(uint64_t result, unint64_t a2)
{
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a2 + 176 < a2)
  {
    goto LABEL_56;
  }

  v3 = result;
  LODWORD(count) = -1431655766;
  v4 = *(*(result + 8) + 112);
  v24 = a2;
  v25 = a2 + 129;
  v26 = a2;
  result = FLAC__bitreader_read_byte_block_aligned_no_crc(v4, &v24, 0x80u);
  if (!result)
  {
    return result;
  }

  if (a2 + 136 > a2 + 144)
  {
LABEL_56:
    __break(0x5519u);
    return result;
  }

  result = FLAC__bitreader_read_raw_uint64(*(*(v3 + 8) + 112), (a2 + 136), 64);
  if (result)
  {
    result = FLAC__bitreader_read_raw_uint32(*(*(v3 + 8) + 112), &count, 1u);
    if (result)
    {
      *(a2 + 144) = count != 0;
      result = FLAC__bitreader_skip_bits_no_crc(*(*(v3 + 8) + 112), 0x817u);
      if (result)
      {
        result = FLAC__bitreader_read_raw_uint32(*(*(v3 + 8) + 112), &count, 8u);
        if (result)
        {
          v5 = count;
          *(a2 + 148) = count;
          if (!v5)
          {
            return 1;
          }

          result = malloc_type_calloc(v5, 0x30uLL, 0xC85DB78uLL);
          v6 = result + 48 * v5;
          if (!result)
          {
            v6 = 0;
          }

          *(a2 + 152) = result;
          *(a2 + 160) = v6;
          *(a2 + 168) = result;
          if (result)
          {
            if (*(a2 + 148))
            {
              v7 = 0;
              while (1)
              {
                v8 = *(a2 + 152) + 48 * v7;
                v9 = v8 + 48 > *(a2 + 160) || v8 >= v8 + 48;
                v10 = !v9 && v8 >= *(a2 + 168);
                if (!v10 || v8 >= v8 + 8)
                {
                  goto LABEL_56;
                }

                result = FLAC__bitreader_read_raw_uint64(*(*(v3 + 8) + 112), (*(a2 + 152) + 48 * v7), 64);
                if (!result)
                {
                  return result;
                }

                result = FLAC__bitreader_read_raw_uint32(*(*(v3 + 8) + 112), &count, 8u);
                if (!result)
                {
                  return result;
                }

                *(v8 + 8) = count;
                v12 = *(*(v3 + 8) + 112);
                v13 = (v8 + 22);
                v24 = v8 + 9;
                v25 = v8 + 22;
                v26 = v8 + 9;
                result = FLAC__bitreader_read_byte_block_aligned_no_crc(v12, &v24, 0xCu);
                if (!result)
                {
                  return result;
                }

                result = FLAC__bitreader_read_raw_uint32(*(*(v3 + 8) + 112), &count, 1u);
                if (!result)
                {
                  return result;
                }

                *v13 = *v13 & 0xFE | count & 1;
                result = FLAC__bitreader_read_raw_uint32(*(*(v3 + 8) + 112), &count, 1u);
                if (!result)
                {
                  return result;
                }

                *v13 = (2 * (count & 1)) | *v13 & 0xFD;
                result = FLAC__bitreader_skip_bits_no_crc(*(*(v3 + 8) + 112), 0x6Eu);
                if (!result)
                {
                  return result;
                }

                result = FLAC__bitreader_read_raw_uint32(*(*(v3 + 8) + 112), &count, 8u);
                if (!result)
                {
                  return result;
                }

                v14 = count;
                *(v8 + 23) = count;
                v15 = v14;
                if (v14)
                {
                  result = malloc_type_calloc(v14, 0x10uLL, 0xC85DB78uLL);
                  v16 = result + 16 * v15;
                  if (!result)
                  {
                    v16 = 0;
                  }

                  *(v8 + 24) = result;
                  *(v8 + 32) = v16;
                  *(v8 + 40) = result;
                  if (!result)
                  {
                    goto LABEL_54;
                  }

                  if (*(v8 + 23))
                  {
                    v17 = 0;
                    v18 = 8;
                    do
                    {
                      v19 = (*(v8 + 24) + v18);
                      v20 = v19 - 1;
                      v21 = (v19 + 1) > *(v8 + 32) || v20 > v19 + 1;
                      v22 = !v21 && v20 >= *(v8 + 40);
                      if (!v22 || v20 >= v19)
                      {
                        goto LABEL_56;
                      }

                      result = FLAC__bitreader_read_raw_uint64(*(*(v3 + 8) + 112), v20, 64);
                      if (!result)
                      {
                        return result;
                      }

                      result = FLAC__bitreader_read_raw_uint32(*(*(v3 + 8) + 112), &count, 8u);
                      if (!result)
                      {
                        return result;
                      }

                      *v19 = count;
                      result = FLAC__bitreader_skip_bits_no_crc(*(*(v3 + 8) + 112), 0x18u);
                      if (!result)
                      {
                        return result;
                      }

                      ++v17;
                      v18 += 16;
                    }

                    while (v17 < *(v8 + 23));
                  }
                }

                ++v7;
                result = 1;
                if (v7 >= *(a2 + 148))
                {
                  return result;
                }
              }
            }

            return 1;
          }

LABEL_54:
          result = 0;
          **v3 = 8;
        }
      }
    }
  }

  return result;
}

unint64_t read_metadata_picture_(uint64_t a1, uint64_t a2)
{
  v29 = -1431655766;
  result = FLAC__bitreader_read_raw_uint32(*(*(a1 + 8) + 112), &v29, 0x20u);
  if (!result)
  {
    return result;
  }

  *a2 = v29;
  result = FLAC__bitreader_read_raw_uint32(*(*(a1 + 8) + 112), &v29, 0x20u);
  if (!result)
  {
    return result;
  }

  v5 = v29;
  v6 = v29 + 1;
  result = malloc_type_malloc(v6, 0x23BCBC25uLL);
  v7 = result + v6;
  if (result)
  {
    v8 = result + v6;
  }

  else
  {
    v8 = 0;
  }

  *(a2 + 8) = result;
  *(a2 + 16) = v8;
  *(a2 + 24) = result;
  if (!result)
  {
    goto LABEL_46;
  }

  if (v5)
  {
    v9 = *(*(a1 + 8) + 112);
    *&v27 = result;
    *(&v27 + 1) = result + v6;
    v28 = result;
    result = FLAC__bitreader_read_byte_block_aligned_no_crc(v9, &v27, v5);
    if (!result)
    {
      return result;
    }

    v10 = *(a2 + 8);
    v7 = *(a2 + 16);
    result = *(a2 + 24);
  }

  else
  {
    v5 = 0;
    v10 = result;
  }

  v11 = (v10 + v5);
  if (v11 >= v7 || v11 < result)
  {
    goto LABEL_48;
  }

  *v11 = 0;
  result = FLAC__bitreader_read_raw_uint32(*(*(a1 + 8) + 112), &v29, 0x20u);
  if (result)
  {
    v13 = v29;
    v14 = v29 + 1;
    result = malloc_type_malloc(v14, 0x23BCBC25uLL);
    v15 = result + v14;
    if (result)
    {
      v16 = result + v14;
    }

    else
    {
      v16 = 0;
    }

    *(a2 + 32) = result;
    *(a2 + 40) = v16;
    *(a2 + 48) = result;
    if (!result)
    {
      goto LABEL_46;
    }

    if (v13)
    {
      v17 = *(*(a1 + 8) + 112);
      v27 = *(a2 + 32);
      v28 = *(a2 + 48);
      result = FLAC__bitreader_read_byte_block_aligned_no_crc(v17, &v27, v13);
      if (!result)
      {
        return result;
      }

      v18 = *(a2 + 32);
      v15 = *(a2 + 40);
      result = *(a2 + 48);
    }

    else
    {
      v13 = 0;
      v18 = result;
    }

    v19 = (v18 + v13);
    if (v19 >= v15)
    {
      goto LABEL_48;
    }

    if (v19 < result)
    {
      goto LABEL_48;
    }

    *v19 = 0;
    if (a2 + 56 > (a2 + 60))
    {
      goto LABEL_48;
    }

    result = FLAC__bitreader_read_raw_uint32(*(*(a1 + 8) + 112), (a2 + 56), 0x20u);
    if (!result)
    {
      return result;
    }

    if (a2 + 60 > (a2 + 64))
    {
      goto LABEL_48;
    }

    result = FLAC__bitreader_read_raw_uint32(*(*(a1 + 8) + 112), (a2 + 60), 0x20u);
    if (!result)
    {
      return result;
    }

    if (a2 + 64 > (a2 + 68))
    {
      goto LABEL_48;
    }

    result = FLAC__bitreader_read_raw_uint32(*(*(a1 + 8) + 112), (a2 + 64), 0x20u);
    if (!result)
    {
      return result;
    }

    v20 = (a2 + 72);
    if (a2 + 68 > (a2 + 72))
    {
      goto LABEL_48;
    }

    result = FLAC__bitreader_read_raw_uint32(*(*(a1 + 8) + 112), (a2 + 68), 0x20u);
    if (!result)
    {
      return result;
    }

    if (v20 > a2 + 76)
    {
LABEL_48:
      __break(0x5519u);
      return result;
    }

    result = FLAC__bitreader_read_raw_uint32(*(*(a1 + 8) + 112), (a2 + 72), 0x20u);
    if (result)
    {
      v21 = *(a2 + 72);
      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      result = malloc_type_malloc(v22, 0x23BCBC25uLL);
      v23 = result + v22;
      if (!result)
      {
        v23 = 0;
      }

      *(a2 + 80) = result;
      *(a2 + 88) = v23;
      v24 = (a2 + 80);
      *(v24 + 2) = result;
      if (result)
      {
        v25 = *v20;
        if (!*v20)
        {
          return 1;
        }

        v26 = *(*(a1 + 8) + 112);
        v27 = *v24;
        v28 = *(v24 + 2);
        result = FLAC__bitreader_read_byte_block_aligned_no_crc(v26, &v27, v25);
        if (result)
        {
          return 1;
        }

        return result;
      }

LABEL_46:
      **a1 = 8;
    }
  }

  return result;
}

BOOL FLAC__bitreader_skip_bits_no_crc(_DWORD *a1, unsigned int a2)
{
  v2 = a2;
  v4 = a1[6];
  v9 = -1431655766;
  v5 = v4 & 7;
  if (v5)
  {
    v6 = 8 - v5;
    if (v6 >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = v6;
    }

    if (!FLAC__bitreader_read_raw_uint32(a1, &v9, v7))
    {
      return 0;
    }

    v2 -= v7;
  }

  return FLAC__bitreader_skip_byte_block_aligned_no_crc(a1, v2 >> 3) && ((v2 & 7) == 0 || FLAC__bitreader_read_raw_uint32(a1, &v9, v2 & 7));
}

void *safe_malloc_mul_2op_p(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return malloc_type_malloc(a2 * a1, 0x62F78340uLL);
  }

  else
  {
    return malloc_type_malloc(1uLL, 0x4D35C262uLL);
  }
}

void set_defaults_(void *a1)
{
  v1 = *a1;
  *(v1 + 4) = xmmword_19B0B32D0;
  *(v1 + 20) = xmmword_19B0B32E0;
  *(v1 + 36) = 0x100000000;
  *(v1 + 44) = 0x3F0000000000000DLL;
  v2 = *a1;
  v3 = (*a1 + 556);
  *v3 = 0u;
  v3[1] = 0u;
  *(v2 + 592) = 0u;
  *(v2 + 608) = 0u;
  v4 = a1[1];
  *(*a1 + 624) = 0;
  *(v4 + 11392) = 0;
  *(v4 + 11672) = 0u;
  *(v4 + 11688) = 0u;
  *(v4 + 11704) = 0u;
  *(v4 + 11720) = 0u;
  *(v4 + 11736) = 0;
  FLAC__stream_encoder_set_compression_level(a1, 5u);
}

void FLAC__stream_encoder_set_compression_level(uint64_t a1, unsigned int a2)
{
  v2 = *a1;
  if (**a1 != 1)
  {
    return;
  }

  if (a2 >= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = a2;
  }

  v5 = &compression_levels_ + 48 * v4;
  *(v2 + 2) = *v5;
  v6 = *(v5 + 5);
  v2[10] = 0;
  v7 = &v6[strlen(v6)];
  v8 = 0;
  v9 = &v6[strlen(v6)];
  v10 = v9 + 1;
  while (1)
  {
    v11 = strchr(v6, 59);
    v12 = v11;
    if (v11)
    {
      v13 = v11 - v6;
    }

    else
    {
      v13 = strlen(v6);
    }

    if (v13 == 8)
    {
      if (!strncmp("bartlett", v6, 8uLL))
      {
        v2[10] = v8 + 1;
        v18 = &v2[4 * v8 + 11];
        if (v18 < v2 + 11 || v18 + 4 > v2 + 139 || v18 > v18 + 4)
        {
          goto LABEL_223;
        }

        *v18 = 0;
        goto LABEL_186;
      }

      if (!strncmp("blackman", v6, 8uLL))
      {
        v2[10] = v8 + 1;
        v14 = &v2[4 * v8 + 11];
        if (v14 < v2 + 11 || v14 + 4 > v2 + 139 || v14 > v14 + 4)
        {
          goto LABEL_223;
        }

        v15 = 2;
LABEL_172:
        *v14 = v15;
        goto LABEL_186;
      }

      goto LABEL_53;
    }

    if (v13 <= 12)
    {
      if (v13 == 6)
      {
        if (strncmp("connes", v6, 6uLL))
        {
          goto LABEL_186;
        }

        v2[10] = v8 + 1;
        v16 = &v2[4 * v8 + 11];
        if (v16 < v2 + 11 || v16 + 4 > v2 + 139 || v16 > v16 + 4)
        {
          goto LABEL_223;
        }

        v17 = 4;
        goto LABEL_185;
      }

      if (v13 == 7)
      {
        if (!strncmp("flattop", v6, 7uLL))
        {
          v2[10] = v8 + 1;
          v16 = &v2[4 * v8 + 11];
          if (v16 < v2 + 11 || v16 + 4 > v2 + 139 || v16 > v16 + 4)
          {
            goto LABEL_223;
          }

          v17 = 5;
        }

        else
        {
          if (strncmp("hamming", v6, 7uLL))
          {
            if (strncmp("nuttall", v6, 7uLL))
            {
              goto LABEL_186;
            }

            v2[10] = v8 + 1;
            v14 = &v2[4 * v8 + 11];
            if (v14 < v2 + 11 || v14 + 4 > v2 + 139 || v14 > v14 + 4)
            {
              goto LABEL_223;
            }

            v15 = 10;
            goto LABEL_172;
          }

          v2[10] = v8 + 1;
          v16 = &v2[4 * v8 + 11];
          if (v16 < v2 + 11 || v16 + 4 > v2 + 139 || v16 > v16 + 4)
          {
            goto LABEL_223;
          }

          v17 = 7;
        }

        goto LABEL_185;
      }

LABEL_39:
      if (v13 < 8)
      {
        if (v13 == 5)
        {
          if (strncmp("welch", v6, 5uLL))
          {
            goto LABEL_186;
          }

          v2[10] = v8 + 1;
          v14 = &v2[4 * v8 + 11];
          if (v14 < v2 + 11 || v14 + 4 > v2 + 139 || v14 > v14 + 4)
          {
            goto LABEL_223;
          }

          v15 = 16;
          goto LABEL_172;
        }

        if (v13 == 4 && !strncmp("hann", v6, 4uLL))
        {
          v2[10] = v8 + 1;
          v16 = &v2[4 * v8 + 11];
          if (v16 < v2 + 11 || v16 + 4 > v2 + 139 || v16 > v16 + 4)
          {
            goto LABEL_223;
          }

          v17 = 8;
          goto LABEL_185;
        }

        goto LABEL_186;
      }

LABEL_53:
      if (strncmp("gauss(", v6, 6uLL))
      {
        if (v13 == 9)
        {
          if (!strncmp("rectangle", v6, 9uLL))
          {
            v2[10] = v8 + 1;
            v14 = &v2[4 * v8 + 11];
            if (v14 < v2 + 11 || v14 + 4 > v2 + 139 || v14 > v14 + 4)
            {
              goto LABEL_223;
            }

            v15 = 11;
            goto LABEL_172;
          }
        }

        else if (v13 == 8 && !strncmp("triangle", v6, 8uLL))
        {
          v2[10] = v8 + 1;
          v14 = &v2[4 * v8 + 11];
          if (v14 < v2 + 11 || v14 + 4 > v2 + 139 || v14 > v14 + 4)
          {
            goto LABEL_223;
          }

          v15 = 12;
          goto LABEL_172;
        }

        goto LABEL_76;
      }

      goto LABEL_60;
    }

    if (v13 == 26)
    {
      if (!strncmp("blackman_harris_4term_92db", v6, 0x1AuLL))
      {
        v2[10] = v8 + 1;
        v14 = &v2[4 * v8 + 11];
        if (v14 < v2 + 11 || v14 + 4 > v2 + 139 || v14 > v14 + 4)
        {
          goto LABEL_223;
        }

        v15 = 3;
        goto LABEL_172;
      }

      goto LABEL_53;
    }

    if (v13 != 13)
    {
      goto LABEL_39;
    }

    if (!strncmp("bartlett_hann", v6, 0xDuLL))
    {
      v2[10] = v8 + 1;
      v14 = &v2[4 * v8 + 11];
      if (v14 < v2 + 11 || v14 + 4 > v2 + 139 || v14 > v14 + 4)
      {
        goto LABEL_223;
      }

      v15 = 1;
      goto LABEL_172;
    }

    if (strncmp("gauss(", v6, 6uLL))
    {
      if (!strncmp("kaiser_bessel", v6, 0xDuLL))
      {
        v2[10] = v8 + 1;
        v16 = &v2[4 * v8 + 11];
        if (v16 < v2 + 11 || v16 + 4 > v2 + 139 || v16 > v16 + 4)
        {
          goto LABEL_223;
        }

        v17 = 9;
        goto LABEL_185;
      }

LABEL_76:
      if (!strncmp("tukey(", v6, 6uLL))
      {
        v32 = v6 + 6;
        if (v6 + 6 < v6 || v32 > v9 || v10 <= v9 || v9 > v7 || *v9)
        {
          goto LABEL_223;
        }

        v33 = strtod(v32, 0);
        v2 = *a1;
        if (v33 >= 0.0 && v33 <= 1.0)
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v13 < 0x10)
        {
          goto LABEL_186;
        }

        if (!strncmp("partial_tukey(", v6, 0xEuLL))
        {
          v34 = v6 + 14;
          if (v6 + 14 < v6 || v34 > v9 || v10 <= v9 || v9 > v7 || *v9)
          {
            goto LABEL_223;
          }

          v35 = strtod(v34, 0);
          v36 = strchr(v6, 47);
          v37 = 0.11111;
          if (v36)
          {
            v38 = v36;
            if (!*v36)
            {
              goto LABEL_223;
            }

            v6 = v36 + 1;
            v39 = strtod(v36 + 1, 0);
            v29 = v39 < 0.99;
            v40 = 0.99;
            if (v29)
            {
              if (!*v38)
              {
                goto LABEL_223;
              }

              v40 = strtod(v38 + 1, 0);
            }

            if (!*v38)
            {
              goto LABEL_223;
            }

            v37 = (1.0 / (1.0 - v40)) + -1.0;
          }

          v41 = strchr(v6, 47);
          v33 = 0.2;
          if (v41)
          {
            if (!*v41)
            {
              goto LABEL_223;
            }

            v33 = strtod(v41 + 1, 0);
          }

          v42 = v35;
          v2 = *a1;
          if (v35 > 1)
          {
            v43 = v2[10];
            if (v43 + v42 > 0x1F)
            {
              goto LABEL_186;
            }

            v44 = 0;
            v45 = v37 + v42;
            while (1)
            {
              v46 = &v2[4 * v43 + 11];
              v47 = v46 + 16;
              v48 = v46 < (v2 + 11) || v47 > (v2 + 139);
              if (v48 || v46 > v47)
              {
                break;
              }

              *(v46 + 4) = v33;
              v50 = *a1 + 44;
              v51 = v50 + 16 * *(*a1 + 40);
              v52 = v51 + 16;
              v53 = v51 < v50 || v52 > *a1 + 556;
              if (v53 || v51 > v52)
              {
                break;
              }

              *(v51 + 8) = v44 / v45;
              v55 = *a1 + 44;
              v56 = v55 + 16 * *(*a1 + 40);
              v57 = v56 + 16;
              v58 = v56 < v55 || v57 > *a1 + 556;
              if (v58 || v56 > v57)
              {
                break;
              }

              *(v56 + 12) = (v37 + ++v44) / v45;
              v2 = *a1;
              v60 = *a1 + 44;
              v61 = *(*a1 + 40);
              v43 = v61 + 1;
              *(*a1 + 40) = v61 + 1;
              v62 = (v60 + 16 * v61);
              if (v62 < v60 || v62 + 4 > v2 + 139 || v62 > v62 + 4)
              {
                break;
              }

              *v62 = 14;
              if (v42 == v44)
              {
                goto LABEL_186;
              }
            }

LABEL_223:
            __break(0x5519u);
            return;
          }

LABEL_178:
          v65 = &v2[4 * v2[10] + 11];
          if (v65 < (v2 + 11))
          {
            goto LABEL_223;
          }

          if (v65 + 16 > (v2 + 139))
          {
            goto LABEL_223;
          }

          if (v65 > v65 + 16)
          {
            goto LABEL_223;
          }

          *(v65 + 4) = v33;
          v2 = *a1;
          v66 = *a1 + 44;
          v67 = *(*a1 + 40);
          *(*a1 + 40) = v67 + 1;
          v16 = (v66 + 16 * v67);
          if (v16 < v66 || v16 + 4 > v2 + 139 || v16 > v16 + 4)
          {
            goto LABEL_223;
          }

          v17 = 13;
LABEL_185:
          *v16 = v17;
          goto LABEL_186;
        }

        if (v13 != 16 && !strncmp("punchout_tukey(", v6, 0xFuLL))
        {
          v24 = v6 + 15;
          if (v6 + 15 < v6 || v24 > v9 || v10 <= v9 || v9 > v7 || *v9)
          {
            goto LABEL_223;
          }

          v25 = strtod(v24, 0);
          v26 = strchr(v6, 47);
          if (v26)
          {
            v27 = v26;
            if (!*v26)
            {
              goto LABEL_223;
            }

            v6 = v26 + 1;
            v28 = strtod(v26 + 1, 0);
            v29 = v28 < 0.99;
            v30 = 0.99;
            if (v29)
            {
              if (!*v27)
              {
                goto LABEL_223;
              }

              v30 = strtod(v27 + 1, 0);
            }

            if (!*v27)
            {
              goto LABEL_223;
            }

            v31 = (1.0 / (1.0 - v30)) + -1.0;
          }

          else
          {
            v31 = 0.25;
          }

          v63 = strchr(v6, 47);
          v33 = 0.2;
          if (v63)
          {
            if (!*v63)
            {
              goto LABEL_223;
            }

            v33 = strtod(v63 + 1, 0);
          }

          v64 = v25;
          v2 = *a1;
          if (v25 <= 1)
          {
            goto LABEL_178;
          }

          v68 = v2[10];
          if (v68 + v64 <= 0x1F)
          {
            v69 = 0;
            v70 = v31 + v64;
            while (1)
            {
              v71 = &v2[4 * v68 + 11];
              v72 = v71 + 16;
              v73 = v71 < (v2 + 11) || v72 > (v2 + 139);
              if (v73 || v71 > v72)
              {
                goto LABEL_223;
              }

              *(v71 + 4) = v33;
              v75 = *a1 + 44;
              v76 = v75 + 16 * *(*a1 + 40);
              v77 = v76 + 16;
              v78 = v76 < v75 || v77 > *a1 + 556;
              if (v78 || v76 > v77)
              {
                goto LABEL_223;
              }

              *(v76 + 8) = v69 / v70;
              v80 = *a1 + 44;
              v81 = v80 + 16 * *(*a1 + 40);
              v82 = v81 + 16;
              v83 = v81 < v80 || v82 > *a1 + 556;
              if (v83 || v81 > v82)
              {
                goto LABEL_223;
              }

              *(v81 + 12) = (v31 + ++v69) / v70;
              v2 = *a1;
              v85 = *a1 + 44;
              v86 = *(*a1 + 40);
              v68 = v86 + 1;
              *(*a1 + 40) = v86 + 1;
              v87 = (v85 + 16 * v86);
              if (v87 < v85 || v87 + 4 > v2 + 139 || v87 > v87 + 4)
              {
                goto LABEL_223;
              }

              *v87 = 15;
              if (v64 == v69)
              {
                goto LABEL_186;
              }
            }
          }
        }
      }

      goto LABEL_186;
    }

LABEL_60:
    v19 = v6 + 6;
    if (v6 + 6 < v6 || v19 > v9 || v10 <= v9 || v9 > v7 || *v9)
    {
      goto LABEL_223;
    }

    v20 = strtod(v19, 0);
    v2 = *a1;
    if (v20 > 0.0 && v20 <= 0.5)
    {
      v21 = &v2[4 * v2[10] + 11];
      if (v21 < (v2 + 11))
      {
        goto LABEL_223;
      }

      if (v21 + 16 > (v2 + 139))
      {
        goto LABEL_223;
      }

      if (v21 > v21 + 16)
      {
        goto LABEL_223;
      }

      *(v21 + 4) = v20;
      v2 = *a1;
      v22 = *a1 + 44;
      v23 = *(*a1 + 40);
      *(*a1 + 40) = v23 + 1;
      v16 = (v22 + 16 * v23);
      if (v16 < v22 || v16 + 4 > v2 + 139 || v16 > v16 + 4)
      {
        goto LABEL_223;
      }

      v17 = 6;
      goto LABEL_185;
    }

LABEL_186:
    v8 = v2[10];
    if (v8 == 32)
    {
      goto LABEL_220;
    }

    if (!v12)
    {
      break;
    }

    if (!*v12)
    {
      goto LABEL_223;
    }

    v6 = v12 + 1;
    v7 = v9;
  }

  if (!v8)
  {
    *(v2 + 5) = 0xD00000001;
    v2[12] = 1056964608;
    v2 = *a1;
  }

LABEL_220:
  if (*v2 == 1)
  {
    *(v2 + 139) = *(v5 + 1);
    v2[141] = *(v5 + 4);
    v2[142] = *(v5 + 6);
    *(v2 + 72) = *(v5 + 28);
  }
}

void FLAC__stream_encoder_finish(uint64_t *a1)
{
  v156 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = **a1;
  if (v2 == 1)
  {
    return;
  }

  if (v2 || (v4 = a1[1], *(v4 + 18072)) || (v133 = *(v4 + 11400)) == 0)
  {
    v5 = 0;
  }

  else
  {
    v134 = v1[9] != v133;
    v1[9] = v133;
    v5 = process_frame_(a1, v134) ^ 1;
    v1 = *a1;
  }

  if (v1[3])
  {
    v6 = a1[1];
    if (v6 + 11408 > (v6 + 11528))
    {
      goto LABEL_196;
    }

    FLAC__MD5Final((v6 + 11256), v6 + 11408);
  }

  v7 = a1[1];
  if (!*(v7 + 18072))
  {
    v126 = *a1;
    if (**a1)
    {
LABEL_158:
      if (*(v126 + 4))
      {
        v136 = *(a1[1] + 17792);
        if (v136)
        {
          FLAC__stream_decoder_finish(v136);
          if (!v137)
          {
            if (!v5)
            {
              **a1 = 4;
            }

            v5 = 1;
          }
        }
      }

      goto LABEL_9;
    }

    v127 = *(v7 + 11696);
    if (!v127)
    {
LABEL_156:
      v135 = *(v7 + 11720);
      if (v135)
      {
        v135(a1, v7 + 11200, *(v7 + 11736));
        v126 = *a1;
      }

      goto LABEL_158;
    }

    *&v155[10] = 0xAAAAAAAAAAAAAAAALL;
    *&v155[5] = 0xAAAAAAAAAAAAAAAALL;
    v128 = *(v7 + 11248);
    v129 = *(v7 + 11224);
    v130 = *(v7 + 11228);
    v131 = *(v7 + 11240);
    v132 = v127(a1, *(v126 + 632) + 22, *(v7 + 11736));
    if (v132)
    {
      if (v132 != 1)
      {
        goto LABEL_154;
      }
    }

    else if (!(*(a1[1] + 11712))(a1, v7 + 11256, 16, 0, 0, *(a1[1] + 11736)))
    {
      v155[0] = (BYTE4(v128) & 0xF | (16 * v131)) - 16;
      v155[1] = BYTE3(v128);
      v155[2] = BYTE2(v128);
      v155[3] = BYTE1(v128);
      v155[4] = v128;
      v138 = (*(a1[1] + 11696))(a1, *(*a1 + 632) + 17, *(a1[1] + 11736));
      if (v138 != 1)
      {
        if (v138)
        {
          goto LABEL_154;
        }

        if (!(*(a1[1] + 11712))(a1, v155, 5, 0, 0, *(a1[1] + 11736)))
        {
          v155[0] = BYTE2(v129);
          v155[1] = BYTE1(v129);
          v155[2] = v129;
          v155[3] = BYTE2(v130);
          v155[4] = BYTE1(v130);
          v155[5] = v130;
          v139 = (*(a1[1] + 11696))(a1, *(*a1 + 632) + 8, *(a1[1] + 11736));
          if (v139 != 1)
          {
            if (v139)
            {
              goto LABEL_154;
            }

            if (!(*(a1[1] + 11712))(a1, v155, 6, 0, 0, *(a1[1] + 11736)))
            {
              v140 = *(a1[1] + 11392);
              if (!v140 || !*v140 || !*(*a1 + 640))
              {
LABEL_154:
                v126 = *a1;
                v7 = a1[1];
                if (**a1)
                {
                  v5 = 1;
                }

                goto LABEL_156;
              }

              FLAC__format_seektable_sort(v140);
              v141 = (*(a1[1] + 11696))(a1, *(*a1 + 640) + 4, *(a1[1] + 11736));
              if (v141 != 1)
              {
                if (!v141)
                {
                  v142 = a1[1];
                  v143 = *(v142 + 11392);
                  if (*v143)
                  {
                    v144 = 0;
                    v145 = 0;
                    while (1)
                    {
                      v146 = *(v143 + 2);
                      v147 = *(v143 + 3);
                      v148 = (*(v143 + 1) + v144);
                      v149 = (v148 + 3) > v146 || v148 > v148 + 3;
                      if (v149 || v148 < v147)
                      {
                        break;
                      }

                      *v155 = bswap64(*v148);
                      *&v155[8] = bswap64(v148[1]);
                      v151 = *(v143 + 1) + v144;
                      v152 = v151 + 24 > v146 || v151 > v151 + 24;
                      if (v152 || v151 < v147)
                      {
                        break;
                      }

                      *&v155[16] = bswap32(*(v151 + 16)) >> 16;
                      if ((*(v142 + 11712))(a1, v155, 18, 0, 0, *(v142 + 11736)))
                      {
                        goto LABEL_153;
                      }

                      ++v145;
                      v142 = a1[1];
                      v143 = *(v142 + 11392);
                      v144 += 24;
                      if (v145 >= *v143)
                      {
                        goto LABEL_154;
                      }
                    }

LABEL_196:
                    __break(0x5519u);
                  }
                }

                goto LABEL_154;
              }
            }
          }
        }
      }
    }

LABEL_153:
    **a1 = 5;
    goto LABEL_154;
  }

LABEL_9:
  v8 = a1[1];
  v9 = *(v8 + 11752);
  if (v9)
  {
    if (v9 != *MEMORY[0x1E69E9858])
    {
      fclose(v9);
      v8 = a1[1];
    }

    *(v8 + 11752) = 0;
  }

  v10 = *a1;
  v11 = *(*a1 + 600);
  v154 = v5;
  if (v11)
  {
    free(v11);
    v12 = (*a1 + 600);
    *(*a1 + 616) = 0;
    *v12 = 0u;
    v10 = *a1;
    *(*a1 + 624) = 0;
  }

  if (*(v10 + 24))
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = a1[1];
      v16 = v15 + v13 + 11784;
      v17 = v15 + v13 + 11808;
      v18 = v16 < v15 + 11784 || v17 > v15 + 11976;
      if (v18 || v16 > v17)
      {
        goto LABEL_196;
      }

      v20 = *(v15 + v13 + 11784);
      if (v20)
      {
        free(v20);
        v21 = a1[1];
        v22 = v21 + v13;
        v23 = (v21 + v13 + 11784);
        if (v23 < v21 + 11784 || v22 + 11808 > (v21 + 11976) || v23 > v22 + 11808)
        {
          goto LABEL_196;
        }

        *v23 = 0;
        *(v21 + v13 + 11792) = 0;
        *(v21 + v13 + 11800) = 0;
        v15 = a1[1];
      }

      v24 = v15 + 12024 + v13;
      v25 = v24 + 24;
      v26 = v24 < v15 + 12024 || v25 > v15 + 12216;
      if (v26 || v24 > v25)
      {
        goto LABEL_196;
      }

      v28 = *(v15 + v13 + 12024);
      if (v28)
      {
        free(v28);
        v29 = a1[1];
        v30 = v29 + 12024 + v13;
        if (v30 < v29 + 12024 || v30 + 24 > v29 + 12216 || v30 > v30 + 24)
        {
          goto LABEL_196;
        }

        v31 = (v29 + v13 + 12024);
        *v31 = 0;
        v31[1] = 0;
        v31[2] = 0;
      }

      ++v14;
      v13 += 24;
    }

    while (v14 < *(*a1 + 24));
  }

  v32 = 0;
  v33 = 1;
  do
  {
    v34 = v33;
    v35 = a1[1];
    v36 = v35 + 24 * v32;
    v37 = (v36 + 11976);
    v38 = v36 + 12000;
    if (v38 > v35 + 12024 || v37 > v38)
    {
      goto LABEL_196;
    }

    if (*v37)
    {
      free(*v37);
      v40 = a1[1];
      v41 = v40 + 24 * v32;
      v42 = v40 + 12024;
      v43 = (v41 + 11976);
      v44 = v41 + 12000;
      if (v44 > v42 || v43 > v44)
      {
        goto LABEL_196;
      }

      *v43 = 0;
      v43[1] = 0;
      v43[2] = 0;
      v35 = a1[1];
    }

    v46 = v35 + 24 * v32;
    v47 = v35 + 12264;
    v48 = (v46 + 12216);
    v49 = v46 + 12240;
    if (v49 > v47 || v48 > v49)
    {
      goto LABEL_196;
    }

    if (*v48)
    {
      free(*v48);
      v51 = a1[1];
      v52 = v51 + 24 * v32;
      v53 = v51 + 12264;
      v54 = v52 + 12240;
      if (v52 + 12240 > v53)
      {
        goto LABEL_196;
      }

      v55 = (v52 + 12216);
      if (v55 > v54)
      {
        goto LABEL_196;
      }

      *v55 = 0;
      v55[1] = 0;
      v55[2] = 0;
    }

    v33 = 0;
    v32 = 1;
  }

  while ((v34 & 1) != 0);
  v56 = *a1;
  if (*(*a1 + 40))
  {
    v57 = 0;
    v58 = 12264;
    do
    {
      v59 = a1[1];
      v60 = v59 + 12264;
      v61 = v59 + 13032;
      v62 = (v59 + v58);
      v63 = v62 + 3;
      v64 = v62 < v60 || v63 > v61;
      if (v64 || v62 > v63)
      {
        goto LABEL_196;
      }

      if (*v62)
      {
        free(*v62);
        v66 = a1[1];
        v67 = (v66 + v58);
        if (v66 + v58 < (v66 + 12264) || (v67 + 3) > v66 + 13032 || v67 > v67 + 3)
        {
          goto LABEL_196;
        }

        *v67 = 0;
        v67[1] = 0;
        v67[2] = 0;
        v56 = *a1;
      }

      ++v57;
      v58 += 24;
    }

    while (v57 < *(v56 + 40));
  }

  v68 = *(a1[1] + 13032);
  if (v68)
  {
    free(v68);
    v69 = a1[1];
    *(v69 + 13032) = 0u;
    *(v69 + 13048) = 0;
    v56 = *a1;
  }

  if (*(v56 + 24))
  {
    v70 = 0;
    do
    {
      v71 = 0;
      v72 = 1;
      do
      {
        v73 = v72;
        v74 = a1[1] + 48 * v70;
        v75 = v74 + 13056;
        v76 = v74 + 13104;
        v77 = (v74 + 13056 + 24 * v71);
        v78 = v77 + 3;
        if (v77 < v75 || v78 > v76 || v77 > v78)
        {
          goto LABEL_196;
        }

        if (*v77)
        {
          free(*v77);
          v81 = a1[1] + 48 * v70;
          v82 = v81 + 13056;
          v83 = v81 + 13104;
          v84 = (v81 + 13056 + 24 * v71);
          v85 = v84 + 3;
          if (v84 < v82 || v85 > v83 || v84 > v85)
          {
            goto LABEL_196;
          }

          *v84 = 0;
          v84[1] = 0;
          v84[2] = 0;
        }

        v72 = 0;
        v71 = 1;
      }

      while ((v73 & 1) != 0);
      ++v70;
    }

    while (v70 < *(*a1 + 24));
  }

  v88 = 0;
  v89 = 1;
  do
  {
    v90 = 0;
    v91 = v89;
    v92 = 1;
    do
    {
      v93 = v92;
      v94 = a1[1] + 48 * v88;
      v95 = v94 + 13440;
      v96 = v94 + 13488;
      v97 = (v94 + 13440 + 24 * v90);
      v98 = v97 + 3;
      if (v97 < v95 || v98 > v96 || v97 > v98)
      {
        goto LABEL_196;
      }

      if (*v97)
      {
        free(*v97);
        v101 = a1[1] + 48 * v88;
        v102 = v101 + 13440;
        v103 = v101 + 13488;
        v104 = (v101 + 13440 + 24 * v90);
        v105 = v104 + 3;
        if (v104 < v102 || v105 > v103 || v104 > v105)
        {
          goto LABEL_196;
        }

        *v104 = 0;
        v104[1] = 0;
        v104[2] = 0;
      }

      v92 = 0;
      v90 = 1;
    }

    while ((v93 & 1) != 0);
    v89 = 0;
    v88 = 1;
  }

  while ((v91 & 1) != 0);
  v108 = a1[1];
  v109 = *(v108 + 13536);
  if (v109)
  {
    free(v109);
    v110 = a1[1];
    *(v110 + 13552) = 0;
    *(v110 + 13536) = 0u;
    v108 = a1[1];
  }

  v111 = *(v108 + 13560);
  if (v111)
  {
    free(v111);
    v112 = a1[1];
    *(v112 + 13560) = 0u;
    *(v112 + 13576) = 0;
  }

  v113 = *a1;
  if (*(*a1 + 4) && *(v113 + 24))
  {
    v114 = 0;
    v115 = 17808;
    do
    {
      v116 = a1[1];
      v117 = v116 + 17808;
      v118 = v116 + 18000;
      v119 = (v116 + v115);
      v120 = v119 + 3;
      v121 = v119 < v117 || v120 > v118;
      if (v121 || v119 > v120)
      {
        goto LABEL_196;
      }

      if (*v119)
      {
        free(*v119);
        v123 = a1[1];
        v124 = (v123 + v115);
        if (v123 + v115 < (v123 + 17808) || (v124 + 3) > v123 + 18000 || v124 > v124 + 3)
        {
          goto LABEL_196;
        }

        *v124 = 0;
        v124[1] = 0;
        v124[2] = 0;
        v113 = *a1;
      }

      ++v114;
      v115 += 24;
    }

    while (v114 < *(v113 + 24));
  }

  v125 = *(a1[1] + 11176);
  if (*v125)
  {
    free(*v125);
  }

  *(v125 + 16) = 0;
  *v125 = 0u;
  *(v125 + 32) = 0;
  *(v125 + 28) = 0;
  set_defaults_(a1);
  if (!v154)
  {
    **a1 = 1;
  }
}

uint64_t process_frame_(uint64_t *a1, int a2)
{
  v195 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v192[10] = v4;
  v192[11] = v4;
  v192[8] = v4;
  v192[9] = v4;
  v192[6] = v4;
  v192[7] = v4;
  v192[4] = v4;
  v192[5] = v4;
  v192[2] = v4;
  v192[3] = v4;
  v192[0] = v4;
  v192[1] = v4;
  v5 = *a1;
  v6 = *(*a1 + 24);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = v192 + v7;
      v9 = &v192[1] + v7 + 8;
      v10 = (v192 + v7) < v192 || v9 > &v193;
      if (v10 || v8 > v9)
      {
        break;
      }

      v12 = a1[1];
      v13 = v12 + 8;
      v14 = v12 + 200;
      v15 = v12 + v7;
      v16 = v12 + v7 + 8;
      v17 = v15 + 32;
      v18 = v16 < v13 || v17 > v14;
      if (v18 || v16 > v17)
      {
        break;
      }

      v20 = *v16;
      *(v8 + 2) = *(v16 + 16);
      *v8 = v20;
      v7 += 24;
      if (24 * v6 == v7)
      {
        goto LABEL_18;
      }
    }

LABEL_255:
    __break(0x5519u);
  }

LABEL_18:
  if (*(v5 + 12))
  {
    v21 = a1[1];
    if (v21 + 11408 > (v21 + 11528))
    {
      goto LABEL_255;
    }

    v189[0] = v192;
    v189[1] = &v193;
    v189[2] = v192;
    result = FLAC__MD5Accumulate(v21 + 11408, v189, v6, *(v5 + 36), (*(v5 + 28) + 7) >> 3);
    v5 = *a1;
    if (!result)
    {
      goto LABEL_253;
    }
  }

  v190[0] = 0xAAAAAAAAAAAAAAAALL;
  v190[1] = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    v23 = 0;
  }

  else
  {
    v24 = *(v5 + 36);
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = 0;
      do
      {
        v26 = v24;
        ++v25;
        v24 >>= 1;
      }

      while ((v26 & 2) == 0);
    }

    if (v25 >= *(v5 + 580))
    {
      v25 = *(v5 + 580);
    }

    if (v25 >= 0xF)
    {
      v23 = 15;
    }

    else
    {
      v23 = v25;
    }
  }

  if (*(v5 + 576) >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = *(v5 + 576);
  }

  v28 = *(v5 + 32);
  v189[0] = vrev64_s32(v28);
  v30 = *(v5 + 24);
  v29 = *(v5 + 28);
  v189[1] = v30;
  v189[2] = v29;
  v31 = a1[1];
  LODWORD(v190[0]) = *(v31 + 2851);
  v188 = v28.u32[1];
  if (!*(v5 + 16))
  {
    v186 = 1;
    if (!v30)
    {
      goto LABEL_65;
    }

LABEL_45:
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 1280;
    while (1)
    {
      v36 = &v31[v32 + 1];
      v37 = &v31[v32 + 4];
      v38 = v36 < v31 + 1 || v37 > (v31 + 25);
      if (v38 || v36 > v37)
      {
        goto LABEL_255;
      }

      v40 = *v36;
      v41 = v31[v32 + 2];
      if (*v36 > v41)
      {
        goto LABEL_255;
      }

      if (v31[v32 + 3] > v40)
      {
        goto LABEL_255;
      }

      v42 = *(v5 + 36);
      if (v42 > (v41 - v40) >> 2)
      {
        goto LABEL_255;
      }

      wasted_bits = get_wasted_bits_(v40, v42);
      v5 = *a1;
      v31 = a1[1];
      v44 = *(*a1 + 28);
      v45 = wasted_bits >= v44 ? *(*a1 + 28) : wasted_bits;
      v46 = &v31[v33 + 267];
      if (v46 > &v31[v33 + 309])
      {
        goto LABEL_255;
      }

      if (v46 < &v31[v33 + 225])
      {
        goto LABEL_255;
      }

      v47 = &v31[v33];
      *(v47 + 616) = v45;
      *(v47 + 532) = v45;
      v48 = v31 + v35;
      if ((v31 + v35) < v31 + 160 || v48 + 4 > (v31 + 164) || v48 > v48 + 4)
      {
        goto LABEL_255;
      }

      *(v31 + v34++ + 320) = v44 - v45;
      v35 += 4;
      v33 += 84;
      v32 += 3;
      if (v34 >= *(v5 + 24))
      {
        goto LABEL_65;
      }
    }
  }

  if (*(v5 + 20) && *(v31 + 2797))
  {
    v186 = 1;
    if (*(v31 + 2798))
    {
      goto LABEL_68;
    }
  }

  else
  {
    v186 = 0;
  }

  if (v30)
  {
    goto LABEL_45;
  }

LABEL_65:
  if (v186)
  {
    v187 = 1;
    goto LABEL_86;
  }

  v186 = 0;
LABEL_68:
  v49 = 0;
  v50 = 1;
  do
  {
    v51 = &v31[3 * v49];
    v52 = v31 + 31;
    v53 = v51 + 25;
    v54 = v51 + 28;
    if (v54 > v52 || v53 > v54)
    {
      goto LABEL_255;
    }

    v56 = *v53;
    v57 = *(v53 + 1);
    if (*v53 > v57)
    {
      goto LABEL_255;
    }

    if (*(v53 + 2) > v56)
    {
      goto LABEL_255;
    }

    v58 = *(v5 + 36);
    if (v58 > (v57 - v56) >> 2)
    {
      goto LABEL_255;
    }

    v59 = v50;
    v60 = get_wasted_bits_(v56, v58);
    v5 = *a1;
    v31 = a1[1];
    v61 = *(*a1 + 28);
    v62 = v60 >= v61 ? *(*a1 + 28) : v60;
    v63 = &v31[84 * v49];
    v64 = v63 + 939;
    if (v63 + 939 > v63 + 981)
    {
      goto LABEL_255;
    }

    v65 = v63 + 897;
    if (v64 < v65)
    {
      goto LABEL_255;
    }

    v65[166] = v62;
    v65[82] = v62;
    v66 = v31 + v49;
    if (v66 + 329 > v31 + 330)
    {
      goto LABEL_255;
    }

    v67 = v66 + 328;
    if (v66 + 328 > v66 + 329)
    {
      goto LABEL_255;
    }

    v50 = 0;
    *v67 = v61 + v49 - v62;
    v49 = 1;
  }

  while ((v59 & 1) != 0);
  if (v186)
  {
    goto LABEL_142;
  }

  v187 = 0;
LABEL_86:
  if (*(v5 + 24))
  {
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    do
    {
      v73 = a1[1];
      v74 = (v73 + v71 + 1280);
      v75 = v73 + v71 + 1284;
      v76 = v74 < v73 + 1280 || v75 > v73 + 1312;
      if (v76 || v74 > v75)
      {
        goto LABEL_255;
      }

      v78 = (v73 + v68 + 8);
      v79 = v73 + v68 + 32;
      v80 = v78 < v73 + 8 || v79 > v73 + 200;
      if (v80 || v78 > v79)
      {
        goto LABEL_255;
      }

      v82 = *v74;
      v193 = *v78;
      v194 = *(v73 + v68 + 24);
      v83 = v73 + 8520;
      v84 = v73 + 8520 + v71;
      v85 = (v84 + 2528);
      if (v84 != -2528)
      {
        if (v85 < v73 + 11048)
        {
          goto LABEL_255;
        }

        v86 = v73 + v71 + 11052;
        if (v86 > v73 + 11080 || v85 > v86)
        {
          goto LABEL_255;
        }
      }

      v87 = v73 + v70 + 1320;
      v88 = (v84 + 2568);
      if (v88)
      {
        v89 = v73 + v71 + 11092;
        if (v89 > v73 + 11120 || v88 > v89 || v88 < v73 + 11088)
        {
          goto LABEL_255;
        }

        process_subframe_(a1, v27, v23, v189, v82, &v193, (v83 + v70), v83 + v69 + 2272, v87, v85, v88);
      }

      else
      {
        process_subframe_(a1, v27, v23, v189, v82, &v193, (v83 + v70), v83 + v69 + 2272, v87, v85, 0);
      }

      ++v72;
      v71 += 4;
      v70 += 48;
      v69 += 16;
      v68 += 24;
    }

    while (v72 < *(*a1 + 24));
  }

  if (v187)
  {
    v90 = FLAC__frame_add_header(v189, *(a1[1] + 11176));
    v91 = *a1;
    if (v90)
    {
      if (v91[6])
      {
        v92 = 0;
        v93 = 0;
        v94 = 1800;
        do
        {
          v95 = a1[1];
          v96 = v95 + v92;
          v97 = (v95 + v92 + 1280);
          v98 = v95 + v92 + 1284;
          v99 = v97 < v95 + 1280 || v98 > v95 + 1312;
          if (v99 || v97 > v98)
          {
            goto LABEL_255;
          }

          v101 = v95 + 11048 + v92;
          v102 = v96 + 11052;
          v103 = v101 < v95 + 11048 || v102 > v95 + 11080;
          if (v103 || v101 > v102)
          {
            goto LABEL_255;
          }

          v105 = *v97;
          v106 = *(v96 + 11048);
          v107 = v95 + v94;
          v108 = v95 + v94 + 336 * v106;
          if (v108)
          {
            v109 = v107 + 336 * v106 + 336;
            v110 = v108 < v107 || v109 > v107 + 672;
            if (v110 || v108 > v109)
            {
              goto LABEL_255;
            }
          }

          if (!add_subframe_(a1, v188, v105, v108, *(v95 + 11176)))
          {
            return 0;
          }

          ++v93;
          v91 = *a1;
          v94 += 672;
          v92 += 4;
        }

        while (v93 < *(*a1 + 24));
      }

      v112 = 0;
      goto LABEL_206;
    }

    goto LABEL_179;
  }

LABEL_142:
  v113 = 0;
  v114 = 1;
  do
  {
    v115 = v114;
    v116 = a1[1];
    v117 = (v116 + 4 * v113);
    v118 = v117 + 328;
    if ((v117 + 329) > v116 + 1320 || v118 > v117 + 329)
    {
      goto LABEL_255;
    }

    v120 = v116 + 24 * v113;
    v121 = v120 + 200;
    v122 = v120 + 224;
    if (v122 > v116 + 248 || v121 > v122)
    {
      goto LABEL_255;
    }

    v124 = *v118;
    v193 = *v121;
    v194 = *(v121 + 16);
    v125 = v117 + 2770;
    if (v117 != -11080 && ((v117 + 2771) > v116 + 11088 || v125 > v117 + 2771))
    {
      goto LABEL_255;
    }

    v126 = v116 + 48 * v113;
    v127 = v116 + 16 * v113;
    v128 = v117 + 2780;
    if (v128)
    {
      if ((v128 + 1) > v116 + 11128 || v128 > v128 + 1)
      {
        goto LABEL_255;
      }

      process_subframe_(a1, v27, v23, v189, v124, &v193, (v126 + 8904), v127 + 10920, v126 + 1704, v125, v128);
    }

    else
    {
      process_subframe_(a1, v27, v23, v189, v124, &v193, (v126 + 8904), v127 + 10920, v126 + 1704, v125, 0);
    }

    v114 = 0;
    v113 = 1;
  }

  while ((v115 & 1) != 0);
  v129 = a1[1];
  if (*(*a1 + 20) && *(v129 + 11188))
  {
    if (*(v129 + 11192))
    {
      v112 = 3;
    }

    else
    {
      v112 = 0;
    }
  }

  else
  {
    v130 = *(v129 + 11088);
    v131 = *(v129 + 11092);
    v132 = v131 + v130;
    LODWORD(v193) = v131 + v130;
    v133 = (v129 + 11124);
    if (v129 + 11124 > (v129 + 11128) || v133 < v129 + 11120)
    {
      goto LABEL_255;
    }

    v112 = 0;
    v134 = *v133;
    DWORD1(v193) = v134 + v130;
    DWORD2(v193) = v134 + v131;
    HIDWORD(v193) = *(v129 + 11120) + v134;
    for (i = 1; i != 4; ++i)
    {
      if (*(&v193 + i) < v132)
      {
        v132 = *(&v193 + i);
        v112 = i;
      }
    }
  }

  HIDWORD(v189[1]) = v112;
  if (!FLAC__frame_add_header(v189, *(v129 + 11176)))
  {
    v91 = *a1;
LABEL_179:
    *v91 = 7;
    return 0;
  }

  v136 = 0;
  v137 = 0;
  v138 = a1[1];
  if (v112 > 1)
  {
    if (v112 == 2)
    {
      if (v138 + 11084 > (v138 + 11088) || v138 + 11084 < (v138 + 11080))
      {
        goto LABEL_255;
      }

      v145 = v138 + 7848;
      v142 = v138 + 7848 + 336 * *(v138 + 11084);
      v144 = v138 + 8520;
      v136 = v138 + 2472;
      v140 = v138 + 3144;
      v141 = v138 + 2472 + 336 * *(v138 + 11052);
      v143 = (v138 + 1316);
      v146 = (v138 + 1284);
      goto LABEL_188;
    }

    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    if (v112 != 3)
    {
      goto LABEL_197;
    }

    v146 = (v138 + 1316);
    v143 = (v138 + 1312);
    v144 = v138 + 7848;
    v141 = v138 + 7848 + 336 * *(v138 + 11084);
    v140 = v138 + 8520;
    v145 = v138 + 7176;
    v142 = v138 + 7176 + 336 * *(v138 + 11080);
LABEL_184:
    v136 = v144;
    goto LABEL_188;
  }

  if (!v112)
  {
    v145 = v138 + 1800;
    v142 = v138 + 1800 + 336 * *(v138 + 11048);
    v144 = v138 + 2472;
    v140 = v138 + 3144;
    v141 = v138 + 2472 + 336 * *(v138 + 11052);
    v143 = (v138 + 1280);
    v146 = (v138 + 1284);
    goto LABEL_184;
  }

  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  if (v112 != 1)
  {
    goto LABEL_197;
  }

  if (v138 + 11084 > (v138 + 11088) || v138 + 11084 < (v138 + 11080))
  {
    goto LABEL_255;
  }

  v143 = (v138 + 1280);
  v136 = v138 + 7848;
  v141 = v138 + 7848 + 336 * *(v138 + 11084);
  v140 = v138 + 8520;
  v144 = v138 + 2472;
  v145 = v138 + 1800;
  v142 = v138 + 1800 + 336 * *(v138 + 11048);
  v146 = (v138 + 1316);
LABEL_188:
  v137 = *v143;
  v139 = *v146;
  if (v142)
  {
    v147 = v142 + 336 > v144 || v142 > v142 + 336;
    if (v147 || v142 < v145)
    {
      goto LABEL_255;
    }
  }

LABEL_197:
  if (!add_subframe_(a1, v188, v137, v142, *(v138 + 11176)))
  {
    return 0;
  }

  if (v141)
  {
    if (v141 < v136 || v141 + 336 > v140 || v141 > v141 + 336)
    {
      goto LABEL_255;
    }

    v149 = *(a1[1] + 11176);
    v150 = a1;
    v151 = v188;
    v152 = v139;
    v153 = v141;
  }

  else
  {
    v149 = *(a1[1] + 11176);
    v150 = a1;
    v151 = v188;
    v152 = v139;
    v153 = 0;
  }

  if (!add_subframe_(v150, v151, v152, v153, v149))
  {
    return 0;
  }

  v91 = *a1;
LABEL_206:
  if (v91[5])
  {
    v154 = a1[1];
    v155 = *(v154 + 11188);
    if ((v155 + 1) < *(v154 + 11184))
    {
      v156 = v155 + 1;
    }

    else
    {
      v156 = 0;
    }

    *(v154 + 11188) = v156;
  }

  v157 = a1[1];
  *(v157 + 11192) = v112;
  v158 = *(v157 + 11176);
  v159 = *(v158 + 36);
  v160 = v159 & 7;
  if ((v159 & 7) != 0)
  {
    v161 = 8 - v160;
    if (*(v158 + 28) <= (*(v158 + 32) + 8 - v160))
    {
      result = bitwriter_grow_(v158, v161);
      if (!result)
      {
LABEL_252:
        v5 = *a1;
LABEL_253:
        *v5 = 8;
        return result;
      }

      v159 = *(v158 + 36);
      if (!v159)
      {
        goto LABEL_233;
      }
    }

    v162 = 32 - v159 >= v161 ? v161 : 32 - v159;
    v163 = *(v158 + 24) << v162;
    *(v158 + 24) = v163;
    v164 = v162 + v159;
    *(v158 + 36) = v164;
    if (v164 == 32)
    {
      v165 = *v158;
      v166 = *(v158 + 8);
      v167 = *(v158 + 16);
      v168 = *(v158 + 32);
      *(v158 + 32) = v168 + 1;
      v169 = (v165 + 4 * v168);
      if ((v169 + 1) > v166 || v169 > v169 + 1 || v169 < v167)
      {
        goto LABEL_255;
      }

      v161 -= v162;
      *v169 = bswap32(v163);
      *(v158 + 36) = 0;
      if (v161 >= 0x20)
      {
        do
        {
          v170 = *v158;
          v171 = *(v158 + 8);
          v172 = *(v158 + 32);
          *(v158 + 32) = v172 + 1;
          v173 = (v170 + 4 * v172);
          v174 = (v173 + 1) > v171 || v173 > v173 + 1;
          if (v174 || v173 < v167)
          {
            goto LABEL_255;
          }

          *v173 = 0;
          v161 -= 32;
        }

        while (v161 > 0x1F);
      }

      if (v161)
      {
LABEL_233:
        *(v158 + 24) = 0;
        *(v158 + 36) = v161;
      }
    }
  }

  v176 = *(a1[1] + 11176);
  memset(v189, 170, sizeof(v189));
  v191 = 0xAAAAAAAAAAAAAAAALL;
  *&v193 = v189;
  *(&v193 + 1) = v190;
  v194 = v189;
  if (!FLAC__bitwriter_get_buffer(v176, &v193, &v191))
  {
    goto LABEL_251;
  }

  v177 = v189[0];
  if (v189[0] > v189[1])
  {
    goto LABEL_255;
  }

  if (v189[2] > v189[0])
  {
    goto LABEL_255;
  }

  v178 = v191;
  if (v191 > v189[1] - v189[0])
  {
    goto LABEL_255;
  }

  v179 = 0;
  if (v191)
  {
    do
    {
      v180 = *v177++;
      v181 = &FLAC__crc16_table[v180 ^ (v179 >> 8)];
      v182 = v181 + 2;
      v183 = v181 < FLAC__crc16_table || v182 > band::GetBandwidth(lc3::Sample_Rate,lc3::Frame_Length,std::array<float,64ul> const&)::kQuietnessThresholds;
      if (v183 || v181 > v182)
      {
        goto LABEL_255;
      }

      v179 = *v181 ^ (v179 << 8);
    }

    while (--v178);
  }

  if (!FLAC__bitwriter_write_raw_uint32_nocheck(*(a1[1] + 11176), v179, 0x10u))
  {
LABEL_251:
    result = 0;
    goto LABEL_252;
  }

  result = write_bitbuffer_(a1, *(*a1 + 36));
  if (result)
  {
    v185 = a1[1];
    *(v185 + 11400) = 0;
    ++*(v185 + 11404);
    *(v185 + 11248) += *(*a1 + 36);
    return 1;
  }

  return result;
}