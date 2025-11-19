uint64_t FillDescriptionFromWAVEFormat(uint64_t a1, UInt32 a2, void *a3, uint64_t a4, int a5)
{
  v29 = *MEMORY[0x1E69E9840];
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v10 = *(a4 + 8);
  if (v10 == 65534)
  {
    if (*(a4 + 4) < 0x28u || *(a4 + 24) <= 0x15u)
    {
      v12 = 1685348671;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 136315394;
      v26 = "WAVEAudioFile.cpp";
      v27 = 1024;
      v28 = 876;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  Invalid data format";
LABEL_26:
      _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
      goto LABEL_27;
    }

    if (*(a4 + 34) != 0x80001000000000 || *(a4 + 40) != 0x719B3800AA000080)
    {
      v12 = 1718449215;
      goto LABEL_27;
    }

    v10 = *(a4 + 32);
  }

  v12 = 1718449215;
  if (!v10)
  {
    goto LABEL_27;
  }

  v24 = 0;
  AudioFormatIDFromFormatTag = AudioFormat_GetAudioFormatIDFromFormatTag(v10, &v24);
  *(a1 + 8) = AudioFormatIDFromFormatTag;
  if (AudioFormatIDFromFormatTag == 1061109567)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 136315394;
    v26 = "WAVEAudioFile.cpp";
    v27 = 1024;
    v28 = 894;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  Unsupported data format file";
    goto LABEL_26;
  }

  LODWORD(v16) = *(a4 + 12);
  *a1 = v16;
  if (*(a4 + 8) == -2 && (v17 = *(a4 + 28), v17 >= 1))
  {
    if (a5)
    {
      v18 = 2;
    }

    else
    {
      if ((v17 & 0x3FFFF) != 0)
      {
        v21 = -1;
      }

      else
      {
        v21 = 0;
      }

      if ((v17 & 0x3FFFF) != 0)
      {
        v22 = 2147483646;
      }

      else
      {
        v22 = 0x7FFFFFFF;
      }

      if ((~v17 & 0x1800000) == 0)
      {
        v21 = v22;
      }

      if ((~v17 & 0x6000000) != 0)
      {
        v23 = 0;
      }

      else
      {
        v23 = -1;
      }

      v18 = *(a4 + 10) + 2 * (((__PAIR64__(v23, ~v17 & 0x60000000) - 1) >> 32) + v21) + 2;
    }
  }

  else
  {
    v18 = *(a4 + 10);
  }

  *(a1 + 28) = v18;
  *(a1 + 32) = *(a4 + 22);
  if (AudioFormatIDFromFormatTag == 1096107074)
  {
    *(a1 + 16) = *(a4 + 20);
  }

  v12 = FillOutAudioDescription(a1, a2, a3, v24);
  if (v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v26 = "WAVEAudioFile.cpp";
    v27 = 1024;
    v28 = 914;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  Couldn't get info about data format";
    goto LABEL_26;
  }

LABEL_27:
  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t std::optional<CA::ChannelLayout>::operator=[abi:ne200100]<CA::ChannelLayout,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t WAVEID3CallbackProc(void *a1, int a2, unsigned int a3, int a4, void **a5, unsigned int *a6)
{
  if (a2 == 1)
  {
    v14 = a1[71];
    if (v14)
    {
      free(v14);
    }

    result = 0;
    a1[71] = 0;
  }

  else
  {
    if (a2)
    {
      return 0;
    }

    LODWORD(v9) = a4;
    v25 = 0;
    (*(*a1[13] + 24))(a1[13], &v25);
    v11 = a1[70];
    v12 = v25;
    if (v9 + a3 + v11 > v25)
    {
      return 4294967272;
    }

    if (v9 <= 0x400)
    {
      LODWORD(v9) = 1024;
    }

    v15 = a1[69];
    if (v15)
    {
      v23 = 4;
      v24 = 0;
      result = ID3ParserGetProperty(v15, 0, 0, 1953720698, &v23, &v24);
      if (result)
      {
        return result;
      }

      if (v24 <= a3)
      {
        return 4294967272;
      }

      if (v9 >= v24 - a3)
      {
        LODWORD(v9) = v24 - a3;
      }

      v11 = a1[70];
      v12 = v25;
    }

    v16 = v11 + v9;
    v17 = v12 - v11;
    if (v16 <= v12)
    {
      v9 = v9;
    }

    else
    {
      v9 = v17;
    }

    v18 = malloc_type_malloc(v9, 0x94249E53uLL);
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = v9 == 0;
    }

    if (!v19)
    {
      exception = __cxa_allocate_exception(8uLL);
      v22 = std::bad_alloc::bad_alloc(exception);
    }

    v20 = v18;
    bzero(v18, v9);
    a1[71] = v20;
    v24 = 0;
    result = (*(*a1[13] + 48))(a1[13], 0, a1[70] + a3, v9, v20, &v24);
    if (!result)
    {
      *a5 = a1[71];
      *a6 = v24;
    }
  }

  return result;
}

uint64_t AudioFormat_GetAudioFormatIDFromFormatTag(int a1, BOOL *a2)
{
  result = 1061109567;
  *a2 = 0;
  if (a1 <= 6)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        result = 1819304813;
        *a2 = 1;
      }

      else if (a1 == 6)
      {
        return 1634492791;
      }

      else
      {
        return 1061109567;
      }

      return result;
    }

    v4 = 1819304813;
    if (a1 == 2)
    {
      v5 = 1836253186;
    }

    else
    {
      v5 = 1061109567;
    }

    v6 = a1 == 1;
LABEL_25:
    if (v6)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  if (a1 <= 48)
  {
    v4 = 1970037111;
    if (a1 == 17)
    {
      v5 = 1836253201;
    }

    else
    {
      v5 = 1061109567;
    }

    v6 = a1 == 7;
    goto LABEL_25;
  }

  switch(a1)
  {
    case 49:
      return 1836253233;
    case 85:
      return 778924083;
    case 304:
      if (IsACELPnetSupported(void)::sCheckForACELPnetOnce != -1)
      {
        dispatch_once(&IsACELPnetSupported(void)::sCheckForACELPnetOnce, &__block_literal_global_12341);
      }

      if (IsACELPnetSupported(void)::isACELPnetSupported)
      {
        return 1096107074;
      }

      else
      {
        return 1061109567;
      }
  }

  return result;
}

uint64_t Wave64ChunkParser::NextChunk(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v3 = a1[4];
  if (a1[2] <= v3)
  {
LABEL_5:
    v7 = 4294967257;
    goto LABEL_6;
  }

  v6 = (*(*a2 + 48))(a2, 0, a1[3] + v3, 24, &v18, &v21);
  if (v21 <= 0x17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "WAVEAudioFile.cpp";
      v24 = 1024;
      v25 = 3853;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  End of file", buf, 0x12u);
    }

    goto LABEL_5;
  }

  v7 = v6;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "WAVEAudioFile.cpp";
      v24 = 1024;
      v25 = 3854;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadBytes failed", buf, 0x12u);
    }
  }

  else
  {
    v10 = w64GUIDMap;
    v11 = 29;
    while (v18 != *(v10 + 1) || v19 != *(v10 + 3))
    {
      v10 += 5;
      if (!--v11)
      {
        v13 = 707406378;
        goto LABEL_18;
      }
    }

    v13 = *v10;
LABEL_18:
    *a3 = v13;
    *(a3 + 4) = 24;
    v14 = v20;
    *(a3 + 8) = v20;
    v15 = a1[4];
    *(a3 + 16) = v15 + a1[3];
    v16 = v15 + v14;
    a1[4] = v16;
    if (v16 < 0xFFFFFFFFFFFFFFF9)
    {
      if ((v16 & 7) == 0)
      {
        v7 = 0;
        goto LABEL_6;
      }

      v7 = 0;
      v17 = (v16 & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    else
    {
      v7 = 0;
      v17 = -1;
    }

    a1[4] = v17;
  }

LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

__n128 Wave64ChunkParser::ContainerChunk(__n128 *a1, uint64_t a2)
{
  *a2 = 0x1872696666;
  result = a1[1];
  *(a2 + 8) = result;
  return result;
}

uint64_t RF64ChunkParser::NextChunk(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v51 = 0;
  v3 = *(a1 + 32);
  if (*(a1 + 16) <= v3)
  {
LABEL_5:
    v8 = 4294967257;
    goto LABEL_6;
  }

  v7 = (*(*a2 + 48))(a2, 0, *(a1 + 24) + v3, 8, &v51, &v52);
  if (v52 <= 7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "WAVEAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3756;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  End of file", buf, 0x12u);
    }

    goto LABEL_5;
  }

  v8 = v7;
  if (v7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 136315394;
    *&buf[4] = "WAVEAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3757;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "%25s:%-5d  ReadBytes failed";
LABEL_43:
    _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
    goto LABEL_6;
  }

  v14 = v51;
  v13 = HIDWORD(v51);
  v15 = bswap32(v51);
  LODWORD(v51) = v15;
  if ((*(a1 + 72) & 1) == 0)
  {
    v59 = 0;
    memset(buf, 0, sizeof(buf));
    v53 = 0;
    if (v14 == 875983716 && HIDWORD(v51) > 0x1B)
    {
      v19 = (*(*a2 + 48))(a2, 0, *(a1 + 32) + *(a1 + 24), 36, buf, &v53);
      if (v53 <= 0x23)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_22:
          v8 = 4294967257;
LABEL_41:
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_6;
          }

          *buf = 136315394;
          *&buf[4] = "WAVEAudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3765;
          v11 = MEMORY[0x1E69E9C10];
          v12 = "%25s:%-5d  ParseDS64Chunk failed";
          goto LABEL_43;
        }

        *v54 = 136315394;
        v55 = "WAVEAudioFile.cpp";
        v56 = 1024;
        v57 = 3711;
        v20 = MEMORY[0x1E69E9C10];
LABEL_21:
        _os_log_impl(&dword_18F5DF000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d  End of file", v54, 0x12u);
        goto LABEL_22;
      }

      v8 = v19;
      if (v19)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *v54 = 136315394;
        v55 = "WAVEAudioFile.cpp";
        v56 = 1024;
        v57 = 3712;
        v21 = MEMORY[0x1E69E9C10];
        v22 = "%25s:%-5d  ReadBytes for DataSize64Chunk failed";
      }

      else
      {
        *buf = bswap32(*buf);
        if (v59 < 0x15555553)
        {
          v34 = *&buf[16];
          v33 = *&buf[20];
          v36 = *(a1 + 56);
          v35 = *(a1 + 64);
          if (v36 >= v35)
          {
            v38 = *(a1 + 48);
            v39 = v36 - v38;
            v40 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v38) >> 2);
            v41 = v40 + 1;
            if (v40 + 1 > 0x1555555555555555)
            {
              std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
            }

            v42 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v38) >> 2);
            if (2 * v42 > v41)
            {
              v41 = 2 * v42;
            }

            if (v42 >= 0xAAAAAAAAAAAAAAALL)
            {
              v43 = 0x1555555555555555;
            }

            else
            {
              v43 = v41;
            }

            if (v43)
            {
              std::allocator<AudioClassDescription>::allocate_at_least[abi:ne200100](v43);
            }

            v44 = 12 * v40;
            *v44 = 1684108385;
            *(v44 + 4) = v34;
            *(v44 + 8) = v33;
            v37 = 12 * v40 + 12;
            v45 = (12 * v40 - v39);
            memcpy(v45, v38, v39);
            v46 = *(a1 + 48);
            *(a1 + 48) = v45;
            *(a1 + 56) = v37;
            *(a1 + 64) = 0;
            if (v46)
            {
              operator delete(v46);
            }
          }

          else
          {
            *v36 = 1684108385;
            *(v36 + 1) = v34;
            *(v36 + 2) = v33;
            v37 = (v36 + 12);
          }

          *(a1 + 56) = v37;
          if (v59 && 12 * v59 + 28 <= SHIDWORD(v51))
          {
            std::vector<ChunkSize64>::resize((a1 + 48), v59 + 1);
            v53 = 0;
            v47 = (*(*a2 + 48))(a2, 0, *(a1 + 24) + *(a1 + 32) + 36, 12 * v59, *(a1 + 48) + 12, &v53);
            if (12 * v59 > v53)
            {
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_22;
              }

              *v54 = 136315394;
              v55 = "WAVEAudioFile.cpp";
              v56 = 1024;
              v57 = 3729;
              v20 = MEMORY[0x1E69E9C10];
              goto LABEL_21;
            }

            v8 = v47;
            if (v47)
            {
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_41;
              }

              *v54 = 136315394;
              v55 = "WAVEAudioFile.cpp";
              v56 = 1024;
              v57 = 3730;
              v21 = MEMORY[0x1E69E9C10];
              v22 = "%25s:%-5d  ReadBytes for 64-bit chunk sizes failed";
              goto LABEL_40;
            }

            if (v59)
            {
              if (v59 + 1 > 2)
              {
                v48 = v59 + 1;
              }

              else
              {
                v48 = 2;
              }

              v49 = v48 - 1;
              v50 = (*(a1 + 48) + 12);
              do
              {
                *v50 = bswap32(*v50);
                v50 += 3;
                --v49;
              }

              while (v49);
            }
          }

          *(a1 + 72) = 1;
          v15 = v51;
          v13 = HIDWORD(v51);
          goto LABEL_11;
        }

        v8 = 1718449215;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *v54 = 136315394;
        v55 = "WAVEAudioFile.cpp";
        v56 = 1024;
        v57 = 3716;
        v21 = MEMORY[0x1E69E9C10];
        v22 = "%25s:%-5d  'ds64' chunk has bad table length";
      }
    }

    else
    {
      v8 = 1685348671;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      *v54 = 136315394;
      v55 = "WAVEAudioFile.cpp";
      v56 = 1024;
      v57 = 3708;
      v21 = MEMORY[0x1E69E9C10];
      v22 = "%25s:%-5d  ds64 chunk not found";
    }

LABEL_40:
    _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_ERROR, v22, v54, 0x12u);
    goto LABEL_41;
  }

LABEL_11:
  *a3 = v15;
  *(a3 + 4) = 8;
  if (v13 == -1)
  {
    *(a3 + 8) = 8;
    v23 = *(a1 + 48);
    v24 = *(a1 + 56) - v23;
    if (v24)
    {
      v25 = 0;
      v26 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 2);
      v27 = 1;
      v16 = 16;
      while (1)
      {
        v28 = v23 + 12 * v25;
        if (v15 == *v28)
        {
          break;
        }

        v25 = v27;
        if (v26 <= v27++)
        {
          goto LABEL_13;
        }
      }

      v30 = *(v28 + 4);
      v31 = __CFADD__(v30, 8);
      v32 = v30 + 8;
      if (v31)
      {
        v16 = -1;
      }

      else
      {
        v16 = v32;
      }
    }

    else
    {
      v16 = 16;
    }
  }

  else
  {
    v16 = v13 + 8;
  }

LABEL_13:
  v8 = 0;
  *(a3 + 8) = v16;
  v17 = *(a1 + 32);
  *(a3 + 16) = v17 + *(a1 + 24);
  v18 = v17 + v16;
  *(a1 + 32) = v17 + v16;
  if ((v16 & 1) != 0 && v18 != -1)
  {
    v8 = 0;
    *(a1 + 32) = v18 + 1;
  }

LABEL_6:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void std::vector<ChunkSize64>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 12 * a2;
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 2) < v6)
    {
      if (a2 <= 0x1555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 2);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0xAAAAAAAAAAAAAAALL)
        {
          v10 = 0x1555555555555555;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<AudioClassDescription>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v12 = 12 * ((12 * v6 - 12) / 0xC) + 12;
    bzero(a1[1], v12);
    v11 = v4 + v12;
  }

  a1[1] = v11;
}

__n128 RF64ChunkParser::ContainerChunk(__n128 *a1, uint64_t a2)
{
  *a2 = a1[2].n128_u32[3];
  *(a2 + 4) = 8;
  result = a1[1];
  *(a2 + 8) = result;
  return result;
}

void RF64ChunkParser::~RF64ChunkParser(RF64ChunkParser *this)
{
  *this = &unk_1F033B248;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033B248;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }
}

uint64_t RIFFWAVE32ChunkParser::NextChunk(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v16 = 0;
  v3 = a1[4];
  if (a1[2] <= v3)
  {
LABEL_5:
    v7 = 4294967257;
    goto LABEL_6;
  }

  v6 = (*(*a2 + 48))(a2, 0, a1[3] + v3, 8, &v16, &v17);
  if (v17 <= 7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "WAVEAudioFile.cpp";
      v20 = 1024;
      v21 = 3624;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  End of file", buf, 0x12u);
    }

    goto LABEL_5;
  }

  v7 = v6;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "WAVEAudioFile.cpp";
      v20 = 1024;
      v21 = 3625;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadBytes failed", buf, 0x12u);
    }
  }

  else
  {
    v10 = HIDWORD(v16);
    *a3 = bswap32(v16);
    *(a3 + 4) = 8;
    v11 = v10 + 8;
    v12 = (v10 != -9) & __CFADD__(v10, 9);
    v13 = 0xFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    *(a3 + 8) = v13;
    v14 = a1[4];
    *(a3 + 16) = v14 + a1[3];
    v15 = v14 + v13;
    a1[4] = v14 + v13;
    if ((v13 & 1) != 0 && v15 <= 0xFFFFFFFE)
    {
      v7 = 0;
      a1[4] = v15 + 1;
    }
  }

LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

__n128 RIFFWAVE32ChunkParser::ContainerChunk(__n128 *a1, uint64_t a2)
{
  *a2 = 0x852494646;
  result = a1[1];
  *(a2 + 8) = result;
  return result;
}

uint64_t WAVEAudioFile::OpenFromDataSource(WAVEAudioFile *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = WAVEAudioFile::ParseAudioFile(this);
  if (v1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "WAVEAudioFile.cpp";
    v6 = 1024;
    v7 = 1500;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  WAVEAudioFile::OpenFromDataSource Failed", &v4, 0x12u);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t WAVEAudioFile::Create(WAVEAudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (IsSupportedWAVEFormat(a3->mFormatID))
  {
    v6 = AudioFileObject::Create(this, a2, a3);
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "WAVEAudioFile.cpp";
        v15 = 1024;
        v16 = 1483;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "%25s:%-5d  Couldn't create a new audio file object";
LABEL_7:
        _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_ERROR, v9, &v13, 0x12u);
      }
    }

    else
    {
      v12 = WAVEAudioFile::InitializeWAVEChunks(this);
      if (v12)
      {
        v7 = v12;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        v13 = 136315394;
        v14 = "WAVEAudioFile.cpp";
        v15 = 1024;
        v16 = 1486;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "%25s:%-5d  InitializeWAVEChunks";
        goto LABEL_7;
      }

      v7 = WAVEAudioFile::ParseAudioFile(this);
      if (v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "WAVEAudioFile.cpp";
        v15 = 1024;
        v16 = 1489;
        v8 = MEMORY[0x1E69E9C10];
        v9 = "%25s:%-5d  ParseAudioFile";
        goto LABEL_7;
      }
    }
  }

  else
  {
    v7 = 1718449215;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "WAVEAudioFile.cpp";
      v15 = 1024;
      v16 = 1480;
      v8 = MEMORY[0x1E69E9C10];
      v9 = "%25s:%-5d  Unsupported WAVE format";
      goto LABEL_7;
    }
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void WAVEAudioFile::~WAVEAudioFile(WAVEAudioFile *this)
{
  WAVEAudioFile::~WAVEAudioFile(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033AEC8;
  if (*(this + 69))
  {
    ID3ParserClose();
  }

  free(*(this + 67));
  if (*(this + 488) == 1)
  {
    v2 = *(this + 58);
    if (v2)
    {
      *(this + 59) = v2;
      operator delete(v2);
    }
  }

  *this = &unk_1F033B370;
  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  AudioFileObject::~AudioFileObject(this);
}

uint64_t WAVEAudioFormat::GetHFSCodes(WAVEAudioFormat *this, unsigned int *a2, void *__dst)
{
  v11 = *MEMORY[0x1E69E9840];
  __src = 0x2E57415657415645;
  v3 = *(this + 2);
  if (v3 != 1113011764 && v3 != 1380333108)
  {
    if (v3 == 1463170150)
    {
      *a2 = 0;
      goto LABEL_12;
    }

    v3 = 1380533830;
  }

  v10 = v3;
  v5 = *a2 >> 2;
  if (v5 >= 3)
  {
    v5 = 3;
  }

  v6 = 4 * v5;
  *a2 = v6;
  if (__dst)
  {
    memcpy(__dst, &__src, v6);
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t WAVEAudioFormat::GetAvailableStreamDescriptions(WAVEAudioFormat *this, int a2, unsigned int *a3, void *__dst)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 <= 1836253185)
  {
    switch(a2)
    {
      case 1096107074:
        if (IsACELPnetSupported(void)::sCheckForACELPnetOnce != -1)
        {
          dispatch_once(&IsACELPnetSupported(void)::sCheckForACELPnetOnce, &__block_literal_global_12341);
        }

        if (IsACELPnetSupported(void)::isACELPnetSupported != 1)
        {
          goto LABEL_25;
        }

        memset(outPropertyData + 8, 0, 72);
        DWORD2(outPropertyData[0]) = 1096107074;
        *&outPropertyData[0] = 0x40BF400000000000;
        ioPropertyDataSize = 40;
        AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, outPropertyData);
        LODWORD(outPropertyData[3]) = 1096107074;
        *(&outPropertyData[2] + 1) = 0x40CF400000000000;
        ioPropertyDataSize = 40;
        AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, &outPropertyData[2] + 8);
        v10 = 2;
        if (__dst)
        {
          goto LABEL_17;
        }

        break;
      case 1634492791:
        goto LABEL_16;
      case 1819304813:
        v6 = 0;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        v7 = &outPropertyData[1] + 1;
        memset(outPropertyData, 0, sizeof(outPropertyData));
        do
        {
          v8 = v6 + 8;
          if (v6)
          {
            v9 = 12;
          }

          else
          {
            v9 = 8;
          }

          *(v7 - 3) = 1819304813;
          *(v7 - 2) = v9;
          v7[3] = v8;
          *v7 = 1;
          v7 += 10;
          v6 = v8;
        }

        while (v8 != 32);
        *(&v16 + 1) = 0x96C70636DLL;
        LODWORD(v18) = 32;
        DWORD1(v17) = 1;
        *&v19 = 0x96C70636DLL;
        DWORD2(v20) = 64;
        HIDWORD(v19) = 1;
        v10 = 6;
        if (__dst)
        {
          goto LABEL_17;
        }

        break;
      default:
LABEL_25:
        *a3 = 0;
        result = 1718449215;
        goto LABEL_26;
    }

LABEL_24:
    result = 0;
    *a3 = 40 * v10;
    goto LABEL_26;
  }

  if (((a2 - 1836253186) > 0x2F || ((1 << (a2 - 2)) & 0x800000008001) == 0) && a2 != 1970037111)
  {
    goto LABEL_25;
  }

LABEL_16:
  memset(outPropertyData, 0, 40);
  DWORD2(outPropertyData[0]) = a2;
  ioPropertyDataSize = 40;
  AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, outPropertyData);
  v10 = 1;
  if (!__dst)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (*a3 / 0x28 < v10)
  {
    v10 = *a3 / 0x28;
  }

  v11 = 40 * v10;
  *a3 = v11;
  memcpy(__dst, outPropertyData, v11);
  result = 0;
LABEL_26:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WAVEAudioFormat::GetAvailableFormatIDs(WAVEAudioFormat *this, unsigned int *a2, void *__dst)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = xmmword_18F901C60;
  v10 = 0x6D7300316D730002;
  if (IsACELPnetSupported(void)::sCheckForACELPnetOnce != -1)
  {
    dispatch_once(&IsACELPnetSupported(void)::sCheckForACELPnetOnce, &__block_literal_global_12341);
  }

  if (IsACELPnetSupported(void)::isACELPnetSupported == 1)
  {
    v11 = 1096107074;
    v5 = 7;
  }

  else
  {
    v5 = 6;
  }

  if (*a2 >> 2 < v5)
  {
    v5 = *a2 >> 2;
  }

  v6 = 4 * v5;
  *a2 = v6;
  if (__dst)
  {
    memcpy(__dst, &v9, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

void WAVEAudioFormat::GetFileTypeName(WAVEAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v9);
  v4 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v4 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = CFRetain(@"WAVE");
    goto LABEL_13;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_12;
  }

LABEL_3:
  v5 = *(this + 2);
  v6 = @"WAVE";
  if (v5 == 1463170150)
  {
    v6 = @"Wave64";
  }

  if (v5 == 1380333108)
  {
    v6 = @"RF64";
  }

  if (v5 == 1113011764)
  {
    v7 = @"BW64";
  }

  else
  {
    v7 = v6;
  }

  v8 = CFBundleCopyLocalizedString(v4, v7, v7, @"FileTypeNames");
LABEL_13:
  *a2 = v8;
  CABundleLocker::~CABundleLocker(&v9);
}

const __CFArray *WAVEAudioFormat::GetMIMETypes(WAVEAudioFormat *this, const __CFArray **a2)
{
  values[4] = *MEMORY[0x1E69E9840];
  if (*(this + 2) == 1463170150)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = MEMORY[0x1E695E9C0];
    v5 = 0;
    v6 = 0;
  }

  else
  {
    values[0] = @"audio/wav";
    values[1] = @"audio/wave";
    values[2] = @"audio/x-wav";
    values[3] = @"audio/vnd.wave";
    v3 = *MEMORY[0x1E695E480];
    v4 = MEMORY[0x1E695E9C0];
    v5 = values;
    v6 = 4;
  }

  result = CFArrayCreate(v3, v5, v6, v4);
  *a2 = result;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *WAVEAudioFormat::GetUTIs(WAVEAudioFormat *this, const __CFArray **a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (*(this + 2) == 1463170150)
  {
    v3 = @"com.sony.wave64";
  }

  else
  {
    v3 = @"com.microsoft.waveform-audio";
  }

  v6[0] = v3;
  result = CFArrayCreate(*MEMORY[0x1E695E480], v6, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *WAVEAudioFormat::GetExtensions(WAVEAudioFormat *this, const __CFArray **a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (*(this + 2) == 1463170150)
  {
    v3 = @"w64";
  }

  else
  {
    v3 = @"wav";
  }

  v6[0] = v3;
  result = CFArrayCreate(*MEMORY[0x1E695E480], v6, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WAVEAudioFormat::FileDataIsThisFormat(WAVEAudioFormat *this, unsigned int a2, const void *__src)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 < 0xC)
  {
    goto LABEL_2;
  }

  v6 = a2 >> 2;
  if (a2 >> 2 >= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = a2 >> 2;
  }

  v14 = 0u;
  v15 = 0u;
  memcpy(&v14, __src, (4 * v7));
  v8 = *(this + 2);
  if (v8 == 1113011764)
  {
LABEL_9:
    result = 0;
    v9 = bswap32(v14);
    v10 = v14 == 1179011410 || v9 == v8;
    if (v10 && DWORD2(v14) == 1163280727)
    {
      if (v9 != v8)
      {
        if (v6 == 3 || v14 != 1179011410 || HIDWORD(v14) == 1263424842 && (a2 < 0x14 || v15 >= 0x24))
        {
          goto LABEL_30;
        }

        goto LABEL_2;
      }

      if (v6 != 3)
      {
        v11 = HIDWORD(v14);
        v12 = 875983716;
        goto LABEL_18;
      }

      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (v8 != 1463170150)
  {
    if (v8 != 1380333108)
    {
      result = 0;
      if (v14 == 1179011410 && DWORD2(v14) == 1163280727)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    goto LABEL_9;
  }

  result = 0;
  if (v14 == 1717987698 && *(&v14 + 4) == 0xDB28D6A511CF912ELL)
  {
    if (v6 != 3)
    {
      if (HIDWORD(v14) != 49412)
      {
        goto LABEL_2;
      }

      if (a2 >= 0x1C)
      {
        if (DWORD2(v15) != 1702257015)
        {
          goto LABEL_2;
        }

        if (a2 >= 0x20)
        {
          v11 = HIDWORD(v15);
          v12 = 299085043;
LABEL_18:
          if (v11 == v12)
          {
            goto LABEL_30;
          }

LABEL_2:
          result = 0;
          goto LABEL_31;
        }
      }
    }

LABEL_30:
    result = 1;
  }

LABEL_31:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL WAVEAudioFormat::ExtensionIsThisFormat(WAVEAudioFormat *this, CFStringRef theString1)
{
  if (*(this + 2) == 1463170150)
  {
    v3 = @"w64";
  }

  else
  {
    v3 = @"wav";
  }

  return CFStringCompare(theString1, v3, 1uLL) == kCFCompareEqualTo;
}

uint64_t LOASAudioStream::HandleDiscontinuity(LOASAudioStream *this)
{
  *(this + 59) = 0;
  *(this + 468) = 1;
  *(this + 480) = 0;
  *(this + 488) = 0;
  *(this + 493) = 0;
  *(this + 73) = *(this + 72);
  *(this + 77) = *(this + 76);
  return 0;
}

uint64_t LOASAudioStream::PacketToDependencyInfo(LOASAudioStream *this, AudioPacketDependencyInfoTranslation *a2)
{
  if (*(this + 158))
  {

    return PacketToDependencyInfoForRestrictedRandomAccess(a2, (this + 544), (this + 600));
  }

  else
  {
    AudioFileStreamObject::PacketToDependencyInfo(this, a2);
    return 0;
  }
}

uint64_t LOASAudioStream::ScanForIndependentPacket(uint64_t a1, int a2, AudioIndependentPacketTranslation *a3)
{
  if (*(a1 + 632))
  {
    return ScanForIndependentPacketWithRestrictedRandomAccess(a2 == 1, a3, (a1 + 544), (a1 + 600));
  }

  else
  {
    return AudioFileStreamObject::ScanForIndependentPacket(a1, a2, a3);
  }
}

uint64_t LOASAudioStream::PacketToRollDistance(LOASAudioStream *this, AudioPacketRollDistanceTranslation *a2)
{
  a2->mRollDistance = 0;
  if ((*(this + 544) & 1) != 0 || *(this + 600) == 1)
  {
    return PacketToRollDistanceForRestrictedRandomAccess(a2, (this + 544), (this + 600));
  }

  else
  {
    return 0;
  }
}

uint64_t LOASAudioStream::GeneratePackets(LOASAudioStream *this)
{
  v2 = *(this + 59);
  if (v2 <= 404)
  {
    if (v2 <= 397)
    {
      if (v2 == -1)
      {
        return 0;
      }

      if (v2)
      {
        goto LABEL_22;
      }

      v5 = *(this + 102);
      if (!v5)
      {
        goto LABEL_26;
      }

      if (!LOASAudioStream::ConsolidateAccessUnitsAndCallPacketsProc(this, *(this + 106) - *(this + 52), v5, *(this + 52), *(this + 55)))
      {
        *(this + 23) += *(this + 102);
        *(this + 102) = 0;
        *(this + 56) = *(this + 55);
        *(this + 53) = *(this + 52);
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if (v2 == 398)
    {
      goto LABEL_139;
    }

    if (v2 != 402)
    {
      goto LABEL_22;
    }

LABEL_28:
    v12 = *(this + 1);
    v17 = *(v12 + 88);
    v16 = *(v12 + 96);
    v18 = v17 + *(v12 + 80);
    v13 = v18 - v16;
    v20 = v16 < v17 || v18 <= v16 || v18 == v16;
    if (v20)
    {
      result = 0;
      v14 = 402;
      goto LABEL_25;
    }

    if (*(this + 488) != 1)
    {
      goto LABEL_71;
    }

    v21 = *(this + 489);
    v22 = 3 - v21;
    *(this + 64) = v22;
    if (v22 <= v13)
    {
      goto LABEL_59;
    }

    *(this + 34) = v16;
    v23 = *(v12 + 128);
    v24 = *(v12 + 72);
    if (v24 == v23)
    {
      if (v18 == v16)
      {
        v25 = 0;
      }

      else
      {
        v25 = &v24[(v16 - v17)];
      }

      memmove(v23, v25, (v18 - v16));
      v26 = 3 - *(this + 489);
      v12 = *(this + 1);
      if (*(v12 + 124) < v26)
      {
        *(v12 + 124) = v26;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v12 + 128), v26);
        v12 = *(this + 1);
      }

      *(v12 + 120) = v13;
      *(v12 + 96) = *(v12 + 88) + *(v12 + 80);
    }

    else
    {
      if (*(v12 + 124) < v22)
      {
        *(v12 + 124) = v22;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v12 + 128), v22);
        v12 = *(this + 1);
      }

      v13 = 0;
      *(v12 + 120) = 0;
    }

LABEL_47:
    v27 = *(this + 64) - v13;
    v28 = *(v12 + 88);
    v29 = *(v12 + 96);
    v30 = v28 + *(v12 + 80);
    if (v30 <= v29 || v29 < v28)
    {
      v32 = 0;
    }

    else
    {
      v32 = v30 - v29;
    }

    if (v27 <= v32)
    {
      v27 = v32;
    }

    v168 = v27;
    v33 = v27 + v13;
    if (*(v12 + 124) < v33)
    {
      *(v12 + 124) = v33;
      CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v12 + 128), v33);
      v12 = *(this + 1);
    }

    StreamBuffer::Copy((v12 + 72), &v168, (*(v12 + 128) + *(v12 + 120)));
    v12 = *(this + 1);
    v13 = *(v12 + 120) + v168;
    *(v12 + 120) = v13;
    if (v13 < *(this + 64))
    {
      result = 0;
      v14 = 405;
      goto LABEL_25;
    }

    v16 = *(this + 34);
    v34 = *(v12 + 128);
    *(v12 + 88) = v16;
    *(v12 + 96) = v16;
    *(v12 + 72) = v34;
    *(v12 + 80) = v13;
    v21 = *(this + 489);
    v18 = v16 + v13;
    v17 = v16;
LABEL_59:
    v35 = 0;
    if (v16 >= v17 && v16 < v18 && v13)
    {
      v35 = (*(v12 + 72) + (v16 - v17));
    }

    memcpy(this + v21 + 490, v35, 3 - v21);
    if (!MP4::LOASHeader::IsLOASSyncWord((this + 490), 3, this + 119, v36))
    {
LABEL_70:
      *(this + 244) = 0;
LABEL_71:
      if (*(this + 493) != 1)
      {
LABEL_156:
        *(this + 121) = 0;
        v95 = *(this + 1);
        v96 = *(v95 + 80);
        v97 = *(v95 + 88);
        v98 = *(v95 + 96);
        v99 = v97 + v96;
        v100 = v98 < v97 || v99 <= v98;
        v101 = v100;
        if (v100 || v99 == v98)
        {
          v102 = 0;
        }

        else
        {
          v102 = (*(v95 + 72) + (v98 - v97));
        }

        if (!v101)
        {
          LODWORD(v96) = v98 - v97;
        }

        v163 = v96;
        if (v101)
        {
          v103 = 0;
        }

        else
        {
          v103 = v99 - v98;
        }

        *v175 = 0;
        if (*(this + 468))
        {
          v104 = 0;
        }

        else
        {
          v104 = 3;
        }

        v174 = 0;
        *(this + 480) = 0;
        v164 = 0;
        v165 = v102 + 1;
        *(this + 130) = 0;
        while (1)
        {
          while (1)
          {
            while (1)
            {
              if (!LOASAudioStream::ScanForSyncWord(this, v103, v102, &v175[1], v175, v104, &v174))
              {
                *(this + 130) = v174;
                v125 = *(this + 121);
                if (!v125)
                {
                  goto LABEL_232;
                }

                if (*(this + 50) < v125)
                {
                  v126 = (1 << -__clz(v125 - 1));
                  *(this + 50) = v126;
                  CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems(this + 24, v126);
                }

                v127 = 0;
                v168 = HIDWORD(v164);
                v171[0] = 0;
                while (LOASAudioStream::ScanForSyncWord(this, v103, v102, &v168, v171, 1, &v175[1]))
                {
                  v128 = v168;
                  v129 = v171[0];
                  if (v103 - v168 >= v171[0])
                  {
                    v130 = *(this + 24) + 16 * v127;
                    *v130 = v168;
                    *(v130 + 8) = 0;
                    *(v130 + 12) = v129;
                  }

                  v168 = v129 + v128;
                  ++v127;
                }

                if (!LOASAudioStream::ConsolidateAccessUnitsAndCallPacketsProc(this, v164, *(this + 121), v102, *(this + 24)))
                {
                  *(this + 23) += *(this + 121);
LABEL_232:
                  v131 = *(this + 1);
                  v132 = *(v131 + 96) + v164;
                  *(v131 + 96) = v132;
                  if (*(this + 480) == 1)
                  {
                    v3 = *(this + 119);
                    if (*(this + 71) < v3)
                    {
                      *(this + 71) = v3;
                      CADeprecated::CAAutoFree<unsigned char>::allocBytes(this + 36, v3, 0);
                      LODWORD(v3) = *(this + 119);
                    }

                    *(this + 64) = v3;
                    v4 = *(this + 36);
                    *(this + 33) = v4;
                    goto LABEL_236;
                  }

                  v138 = 0;
                  v139 = *(v131 + 88);
                  v140 = v139 + *(v131 + 80);
                  v142 = v132 < v139 || v140 <= v132;
                  v143 = v140 - v132;
                  if (v142)
                  {
                    v144 = 0;
                  }

                  else
                  {
                    v144 = v143;
                  }

                  if (!v142 && v143)
                  {
                    v138 = (*(v131 + 72) + (v132 - v139));
                  }

                  if (v144 == 1)
                  {
                    v149 = *v138;
                    *(this + 488) = v149 == 86;
                    v150 = *v138;
                    v148 = v150 == 73 || v150 == 84;
                    *(this + 493) = v148;
                    if (v149 == 86)
                    {
                      goto LABEL_262;
                    }
                  }

                  else
                  {
                    if (v144 != 2)
                    {
                      *(this + 488) = 0;
                      if ((v144 - 3) <= 6)
                      {
                        v152 = *v138;
                        if (v152 == 84)
                        {
                          if (v138[1] == 65)
                          {
                            v20 = v138[2] == 71;
                            *(this + 493) = v20;
                            if (!v20)
                            {
                              goto LABEL_283;
                            }

                            goto LABEL_272;
                          }
                        }

                        else if (v152 == 73 && v138[1] == 68 && v138[2] == 51)
                        {
                          *(this + 493) = 1;
                          goto LABEL_272;
                        }
                      }

                      *(this + 493) = 0;
LABEL_283:
                      *(v131 + 96) = *(v131 + 88) + *(v131 + 80);
LABEL_26:
                      v15 = *(this + 130);
                      if (!v15)
                      {
                        goto LABEL_28;
                      }

                      *(this + 64) = v15;
LABEL_139:
                      while (1)
                      {
                        v83 = *(this + 1);
                        v85 = *(v83 + 88);
                        v84 = *(v83 + 96);
                        v86 = v85 + *(v83 + 80);
                        v87 = v86 - v84;
                        v88 = v84 < v85 || v86 <= v84;
                        if (v88 || v86 == v84)
                        {
                          break;
                        }

                        v90 = *(this + 64);
                        v91 = v84 + v90;
                        v92 = v90 >= v87;
                        v93 = v90 - v87;
                        if (v92)
                        {
                          v91 = v86;
                        }

                        if (v92)
                        {
                          v94 = v93;
                        }

                        else
                        {
                          v94 = 0;
                        }

                        *(v83 + 96) = v91;
                        *(this + 64) = v94;
                        if (!v94)
                        {
                          *(this + 130) = 0;
                          goto LABEL_28;
                        }
                      }

                      result = 0;
                      v14 = 398;
                      goto LABEL_25;
                    }

                    v145 = 0;
                    if (*v138 == 86)
                    {
                      v145 = v138[1] > 0xDFu;
                    }

                    *(this + 488) = v145;
                    v146 = *v138;
                    v147 = 68;
                    if (v146 == 73)
                    {
LABEL_260:
                      v148 = v138[1] == v147;
                    }

                    else
                    {
                      v148 = 0;
                      if (v146 == 84)
                      {
                        v147 = 65;
                        goto LABEL_260;
                      }
                    }

                    *(this + 493) = v148;
                    if (v145)
                    {
LABEL_262:
                      *(this + 489) = v144;
                      *(this + 245) = 0;
                      *(this + 492) = 0;
                      memcpy(this + 490, v138, v144);
                      if ((*(this + 493) & 1) == 0)
                      {
                        goto LABEL_283;
                      }

LABEL_272:
                      *(this + 124) = v144;
                      *(this + 254) = 0;
                      *(this + 500) = 0;
                      memcpy(this + 500, v138, v144);
                      goto LABEL_283;
                    }
                  }

                  if (v148)
                  {
                    goto LABEL_272;
                  }

                  goto LABEL_283;
                }

LABEL_23:
                result = 1718449215;
                goto LABEL_24;
              }

              v106 = v175[0];
              v105 = v175[1];
              if (v103 - v175[1] >= v175[0])
              {
                break;
              }

              *(this + 480) = 1;
              *(this + 118) = v105 + v163;
              *(this + 119) = v106;
              v175[1] = v106 + v105;
              LODWORD(v164) = v105;
            }

            if (*(this + 468) == 1)
            {
              break;
            }

LABEL_219:
            v123 = *(this + 121);
            v124 = HIDWORD(v164);
            if (!v123)
            {
              v124 = v105;
            }

            *(this + 121) = v123 + 1;
            LODWORD(v164) = v106 + v105;
            HIDWORD(v164) = v124;
            v175[1] = v106 + v105;
            v104 = 3;
          }

          *v171 = &v102[v175[1]];
          v172 = *v171 + v175[0];
          v173 = 0;
          if ((v171[0] & 3) != 0 && v175[0] != 0)
          {
            v108 = 0;
            v109 = v165 + LOBYTE(v175[1]);
            v110 = -8;
            v111 = &v165[v175[1]];
            do
            {
              LODWORD(v173) = v108 << 8;
              HIDWORD(v173) = v110 + 16;
              *v171 = v111;
              v112 = *(v111 - 1) | (v108 << 8);
              LODWORD(v173) = v112;
              v110 += 8;
              if ((v109 & 3) == 0)
              {
                break;
              }

              ++v109;
              v108 = v112;
              v92 = v111++ >= &v102[v175[1] + v175[0]];
            }

            while (!v92);
            LODWORD(v173) = v112 << (24 - v110);
          }

          v168 = 0;
          v169 = 1;
          *v170 = 0;
          *(&v170[1] + 3) = 0;
          memset(&v170[3], 0, 24);
          if (!MP4::LOASHeader::Deserialize(&v168, v171))
          {
            v114 = v106 + v105;
            v115 = 4;
            while (1)
            {
              v116 = v114;
              v117 = v103 - v114;
              if (v103 >= v114)
              {
                v116 = v114;
                if (v117 >= 3)
                {
                  v167 = 0;
                  v118 = &v102[v114];
                  if (MP4::LOASHeader::IsLOASSyncWord(v118, (v103 - v114), &v167, v113))
                  {
                    v119 = v167;
                    if (__CFADD__(v114, v167))
                    {
                      v119 = 0;
                    }
                  }

                  else
                  {
                    if ((*v118 != 17481 || *(v118 + 2) != 51) && (*v118 != 16724 || *(v118 + 2) != 71))
                    {
                      break;
                    }

                    v116 = v114;
                    if (v117 < 0xA)
                    {
                      goto LABEL_210;
                    }

                    v166 = 0;
                    v122 = ID3Size(0xAu, &v102[v114], &v166);
                    if (__CFADD__(v114, v122))
                    {
                      v119 = 0;
                    }

                    else
                    {
                      v119 = v122;
                    }

                    if (!v122)
                    {
                      break;
                    }
                  }

                  v116 = v119 + v114;
                }
              }

LABEL_210:
              if (v116 == v114)
              {
                v114 = v103;
              }

              else
              {
                v114 = v116;
              }

              if (!--v115)
              {
                *(this + 468) = 0;
                break;
              }
            }
          }

          v105 = v175[1];
          if ((*(this + 468) & 1) == 0)
          {
            v106 = v175[0];
            goto LABEL_219;
          }

          ++v175[1];
        }
      }

      v45 = *(this + 124);
      v46 = 10 - v45;
      *(this + 64) = v46;
      v10 = *(this + 1);
      v48 = *(v10 + 88);
      v47 = *(v10 + 96);
      v49 = v48 + *(v10 + 80);
      v51 = v47 < v48 || v49 <= v47;
      v52 = v49 - v47;
      if (v51)
      {
        v11 = 0;
      }

      else
      {
        v11 = v52;
      }

      if (v11 >= v46)
      {
LABEL_107:
        v66 = 0;
        v67 = (this + 500);
        if (v47 >= v48 && v47 < v49 && v52)
        {
          v66 = (*(v10 + 72) + (v47 - v48));
        }

        memcpy(this + v45 + 500, v66, 10 - v45);
        if (*v67 != 17481 || *(this + 502) != 51)
        {
          if (*v67 != 16724 || *(this + 502) != 71)
          {
LABEL_155:
            *(this + 124) = 0;
            *(this + 493) = 0;
            goto LABEL_156;
          }

LABEL_133:
          v80 = ID3Size(0xAu, this + 500, this + 129);
          *(this + 128) = v80;
          v81 = *(this + 124);
          v82 = v80 - v81;
          if (v80 > v81)
          {
            while (1)
            {
              *(this + 64) = v82;
              if (!v82)
              {
                goto LABEL_155;
              }

LABEL_286:
              v153 = *(this + 1);
              v155 = *(v153 + 88);
              v154 = *(v153 + 96);
              v156 = v155 + *(v153 + 80);
              if (v154 < v155 || v156 <= v154)
              {
                break;
              }

              v158 = v156 - v154;
              if (v156 == v154)
              {
                break;
              }

              v159 = *(this + 64);
              v160 = v154 + v159;
              v161 = v159 >= v158;
              v162 = v159 - v158;
              if (v161)
              {
                v160 = v156;
              }

              if (v161)
              {
                v82 = v162;
              }

              else
              {
                v82 = 0;
              }

              *(v153 + 96) = v160;
            }

            result = 0;
            v14 = 447;
            goto LABEL_25;
          }

          goto LABEL_155;
        }

        v70 = *(this + 124);
        *(this + 131) = -v70;
        v71 = *(this + 1);
        *(this + 66) = *(v71 + 88) - v70;
        if (*(this + 536) < 0)
        {
          v72 = 0;
          v73 = *(v71 + 48);
          v74 = *(v71 + 56) - v73;
          if (v74)
          {
            v75 = 0;
            v76 = v74 >> 2;
            v77 = 1;
            do
            {
              v20 = *(v73 + 4 * v75) == 1768174437;
              v72 = v20;
              v75 = v77++;
            }

            while (!v20 && v76 > v75);
          }

          *(this + 536) = v72;
          if (!v72)
          {
            goto LABEL_133;
          }
        }

        else if (!*(this + 536))
        {
          goto LABEL_133;
        }

        v168 = 0;
        v79 = *(v71 + 24);
        if (v79)
        {
          v79(*(v71 + 40), *(v71 + 8), 1768174437, &v168);
        }

        goto LABEL_133;
      }

      *(this + 34) = v47;
      v53 = *(v10 + 128);
      v54 = *(v10 + 72);
      if (v54 == v53)
      {
        if (v52)
        {
          v55 = v51;
        }

        else
        {
          v55 = 1;
        }

        if (v55)
        {
          v56 = 0;
        }

        else
        {
          v56 = &v54[(v47 - v48)];
        }

        memmove(v53, v56, v11);
        v57 = (10 - *(this + 124));
        v10 = *(this + 1);
        if (*(v10 + 124) < v57)
        {
          *(v10 + 124) = v57;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v10 + 128), v57);
          v10 = *(this + 1);
        }

        *(v10 + 120) = v11;
        *(v10 + 96) = *(v10 + 88) + *(v10 + 80);
      }

      else
      {
        if (*(v10 + 124) < v46)
        {
          *(v10 + 124) = v46;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v10 + 128), v46);
          v10 = *(this + 1);
        }

        LODWORD(v11) = 0;
        *(v10 + 120) = 0;
      }

LABEL_95:
      v58 = *(this + 64) - v11;
      v59 = *(v10 + 88);
      v60 = *(v10 + 96);
      v61 = v59 + *(v10 + 80);
      if (v61 <= v60 || v60 < v59)
      {
        v63 = 0;
      }

      else
      {
        v63 = v61 - v60;
      }

      if (v58 <= v63)
      {
        v58 = v63;
      }

      v168 = v58;
      v64 = v58 + v11;
      if (*(v10 + 124) < v64)
      {
        *(v10 + 124) = v64;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v10 + 128), v64);
        v10 = *(this + 1);
      }

      StreamBuffer::Copy((v10 + 72), &v168, (*(v10 + 128) + *(v10 + 120)));
      v10 = *(this + 1);
      v52 = *(v10 + 120) + v168;
      *(v10 + 120) = v52;
      if (v52 < *(this + 64))
      {
        result = 0;
        v14 = 433;
        goto LABEL_25;
      }

      v47 = *(this + 34);
      v65 = *(v10 + 128);
      *(v10 + 88) = v47;
      *(v10 + 96) = v47;
      *(v10 + 72) = v65;
      *(v10 + 80) = v52;
      v45 = *(this + 124);
      v49 = v47 + v52;
      v48 = v47;
      goto LABEL_107;
    }

    v37 = *(this + 119);
    if (*(this + 71) < v37)
    {
      *(this + 71) = v37;
      CADeprecated::CAAutoFree<unsigned char>::allocBytes(this + 36, v37, 0);
    }

    v38 = *(this + 36);
    v39 = *(this + 245);
    *(v38 + 2) = *(this + 492);
    *v38 = v39;
    v7 = *(this + 1);
    *(v7 + 96) = *(v7 + 96) - *(this + 489) + 3;
    v6 = *(this + 119) - 3;
    *(this + 64) = v6;
    v8 = (*(this + 36) + 3);
    *(this + 33) = v8;
LABEL_67:
    v168 = v6;
    StreamBuffer::Copy((v7 + 72), &v168, v8);
    v40 = v168;
    v41 = *(this + 64);
    *(this + 33) += v168;
    v42 = v41 - v40;
    *(this + 64) = v42;
    if (v42)
    {
      result = 0;
      v14 = 414;
      goto LABEL_25;
    }

    v43 = *(this + 24);
    v43->mStartOffset = 0;
    v44 = *(this + 119);
    v43->mVariableFramesInPacket = 0;
    v43->mDataByteSize = v44;
    if (LOASAudioStream::ConsolidateAccessUnitsAndCallPacketsProc(this, v44, 1u, *(this + 36), v43))
    {
      goto LABEL_23;
    }

    ++*(this + 23);
    goto LABEL_70;
  }

  if (v2 <= 432)
  {
    if (v2 != 405)
    {
      if (v2 != 414)
      {
        goto LABEL_22;
      }

      v6 = *(this + 64);
      v7 = *(this + 1);
      v8 = *(this + 33);
      goto LABEL_67;
    }

    v12 = *(this + 1);
    v13 = *(v12 + 120);
    goto LABEL_47;
  }

  switch(v2)
  {
    case 433:
      v10 = *(this + 1);
      LODWORD(v11) = *(v10 + 120);
      goto LABEL_95;
    case 447:
      goto LABEL_286;
    case 592:
      LODWORD(v3) = *(this + 64);
      v4 = *(this + 33);
LABEL_236:
      v168 = v3;
      StreamBuffer::Copy((*(this + 1) + 72), &v168, v4);
      v133 = v168;
      v134 = *(this + 64);
      *(this + 33) += v168;
      v135 = v134 - v133;
      *(this + 64) = v135;
      if (v135)
      {
        result = 0;
        v14 = 592;
        goto LABEL_25;
      }

      if (!*(this + 50))
      {
        *(this + 50) = 1;
        CADeprecated::CAAutoFree<AudioStreamPacketDescription>::reallocItems(this + 24, 1);
      }

      v136 = *(this + 24);
      v136->mStartOffset = 0;
      v137 = *(this + 119);
      v136->mVariableFramesInPacket = 0;
      v136->mDataByteSize = v137;
      if (!LOASAudioStream::ConsolidateAccessUnitsAndCallPacketsProc(this, v137, 1u, *(this + 36), v136))
      {
        ++*(this + 23);
        goto LABEL_26;
      }

      goto LABEL_23;
  }

LABEL_22:
  result = 0;
LABEL_24:
  v14 = -1;
LABEL_25:
  *(this + 59) = v14;
  return result;
}

uint64_t LOASAudioStream::ConsolidateAccessUnitsAndCallPacketsProc(LOASAudioStream *this, int a2, unsigned int a3, uint64_t a4, AudioStreamPacketDescription *a5)
{
  std::vector<unsigned char>::vector[abi:ne200100](&v51, -3 * a3 + a2);
  if (a3)
  {
    std::allocator<AudioStreamPacketDescription>::allocate_at_least[abi:ne200100](a3);
  }

  v50 = 0;
  v49 = 0;
  v8 = MP4::LOASHeader::CopyByteAlignedAccessUnitsFromAudioSyncStream(&v50, 0, a4, this + 336, v51, v52 - v51, &v49);
  v9 = v8;
  v10 = v50;
  if (v50 && v49)
  {
    v42 = v49;
    v43 = v8;
    if (*(this + 158) && *(this + 80))
    {
      v11 = *(this + 73);
      v12 = *(this + 72);
      if (0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3) >= 0x15)
      {
        if (v11 != v11 - 480)
        {
          memmove(*(this + 72), (v11 - 480), 0x1E0uLL);
        }

        *(this + 73) = v12 + 480;
      }

      v13 = *(this + 77);
      v14 = *(this + 76);
      if ((v13 - v14) >= 0xA1)
      {
        if (v13 != v13 - 160)
        {
          memmove(*(this + 76), (v13 - 160), 0xA0uLL);
        }

        *(this + 77) = v14 + 160;
      }

      v15 = 0;
      if (v10 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v10;
      }

      do
      {
        v17 = *(16 * v15);
        v18 = &v51[v17];
        v19 = *(16 * v15 + 0xC);
        v47[0] = &v51[v17];
        v47[1] = &v51[v17];
        v20 = &v51[v17 + v19];
        v47[2] = v20;
        v48 = 0;
        if ((&v51[v17] & 3) != 0)
        {
          v21 = 0;
          v22 = &v51[v17 + 1];
          v23 = -8;
          do
          {
            v24 = v23;
            if (v18 >= v20)
            {
              v25 = 255;
            }

            else
            {
              v25 = *v18;
            }

            v21 = v25 | (v21 << 8);
            ++v18;
            v23 = v24 + 8;
          }

          while ((v22++ & 3) != 0);
          v47[0] = v18;
          LODWORD(v48) = v21 << (16 - v24);
          HIDWORD(v48) = v24 + 16;
        }

        v46[0] = 0;
        v46[1] = 0;
        PacketDependencyParser::PacketDependency(*(this + 80), v47, v46);
        if (LODWORD(v46[0]))
        {
          if (HIDWORD(v46[0]))
          {
            v44 = *(this + 23) + v15;
            v45 = xmmword_18F901C70;
            WORD4(v45) = WORD2(v46[0]);
            SampleToRollDistanceTable::append_entry(this + 544, &v44);
          }

          else
          {
            v27 = *(this + 23) + v15;
            v28 = *(this + 77);
            v29 = *(this + 78);
            if (v28 >= v29)
            {
              v31 = *(this + 76);
              v32 = v28 - v31;
              v33 = (v28 - v31) >> 3;
              v34 = v33 + 1;
              if ((v33 + 1) >> 61)
              {
                std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
              }

              v35 = v29 - v31;
              if (v35 >> 2 > v34)
              {
                v34 = v35 >> 2;
              }

              if (v35 >= 0x7FFFFFFFFFFFFFF8)
              {
                v36 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v36 = v34;
              }

              if (v36)
              {
                std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v36);
              }

              v37 = (v28 - v31) >> 3;
              v38 = (8 * v33);
              v39 = (8 * v33 - 8 * v37);
              *v38 = v27;
              v30 = v38 + 1;
              memcpy(v39, v31, v32);
              v40 = *(this + 76);
              *(this + 76) = v39;
              *(this + 77) = v30;
              *(this + 78) = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              *v28 = v27;
              v30 = v28 + 8;
            }

            *(this + 77) = v30;
            *(this + 600) = 1;
          }
        }

        ++v15;
      }

      while (v15 != v16);
    }

    AudioFileStreamWrapper::CallPacketsProc(*(this + 1), v42, v10, v51, 0, 1);
    v9 = v43;
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v9)
  {
    return 1718449215;
  }

  else
  {
    return 0;
  }
}

void sub_18F882DF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  v4 = *(v2 - 104);
  if (v4)
  {
    *(v2 - 96) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LOASAudioStream::ScanForSyncWord(LOASAudioStream *this, unsigned int a2, const unsigned __int8 *a3, unsigned int *a4, unsigned int *a5, char a6, unsigned int *a7)
{
  v8 = a2;
  v9 = *a4;
  v34 = 0;
  *a5 = 0;
  *a7 = 0;
  v10 = a2 - 3;
  if (v9 <= (a2 - 3))
  {
    do
    {
      v14 = &a3[v9];
      v15 = v8 - v9;
      if (MP4::LOASHeader::IsLOASSyncWord(v14, (v8 - v9), &v34, a4))
      {
        *a5 = v34;
        result = 1;
        v8 = v9;
        goto LABEL_36;
      }

      if (a6)
      {
        v16 = *v14 == 17481 && v14[2] == 51;
        if (v16)
        {
          if (v15 < 0xA)
          {
            break;
          }

          v18 = *(this + 1);
          v19 = v14 - *(v18 + 72);
          *(this + 131) = v19;
          *(this + 66) = *(v18 + 88) + v19;
          if ((a6 & 2) != 0)
          {
            LODWORD(v20) = *(this + 536);
            if ((v20 & 0x80000000) != 0)
            {
              v21 = *(v18 + 48);
              v20 = *(v18 + 56) - v21;
              if (v20)
              {
                v22 = 0;
                v23 = v20 >> 2;
                v24 = 1;
                do
                {
                  v16 = *(v21 + 4 * v22) == 1768174437;
                  LODWORD(v20) = v16;
                  v22 = v24++;
                  v25 = !v16 && v23 > v22;
                }

                while (v25);
              }

              *(this + 536) = v20;
            }

            if (v20)
            {
              v35 = 0;
              v26 = *(v18 + 24);
              if (v26)
              {
                v26(*(v18 + 40), *(v18 + 8), 1768174437, &v35);
              }
            }
          }
        }

        else
        {
          if (*v14 != 16724 || v14[2] != 71)
          {
            goto LABEL_33;
          }

          if (v15 < 0xA)
          {
            break;
          }
        }

        v27 = ID3Size(0xAu, &a3[v9], &v33);
        if (v27)
        {
          v28 = v27;
          if (v15 < v27)
          {
            result = 0;
            *a7 = v9 - v8 + v28;
            goto LABEL_36;
          }

          v29 = v27 - 1;
        }

        else
        {
          v29 = 2;
        }

        v9 += v29;
      }

LABEL_33:
      v25 = v9++ < v10;
    }

    while (v25);
  }

  result = 0;
LABEL_36:
  *a4 = v8;
  return result;
}

uint64_t LOASAudioStream::ParseHeader(LOASAudioStream *this, uint64_t a2)
{
  v4 = 1718449215;
  v5 = *(this + 59);
  if (v5 <= 87)
  {
    if (v5 == -1)
    {
      return 0;
    }

    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v5 == 105)
  {
    v6 = *(this + 1);
    LODWORD(v7) = *(v6 + 120);
    goto LABEL_40;
  }

  if (v5 == 88)
  {
    while (1)
    {
LABEL_10:
      v8 = *(this + 1);
      v9 = *(v8 + 88);
      v10 = *(v8 + 96);
      v11 = v9 + *(v8 + 80);
      v12 = v10 < v9 || v11 <= v10;
      if (v12 || v11 == v10)
      {
        v4 = 0;
        v71 = 88;
        goto LABEL_153;
      }

      *(this + 648) = 0;
      *(this + 163) = 0;
      *(this + 116) = 0;
      v13 = LOASAudioStream::ScanForSyncWord(this, v11 - v10, (*(v8 + 72) + (v10 - v9)), this + 163, this + 116, 0, &inSpecifier);
      *(this + 648) = v13;
      v14 = *(this + 116);
      *(this + 64) = v14;
      v6 = *(this + 1);
      v15 = *(v6 + 80);
      v16 = *(v6 + 88);
      v17 = *(v6 + 96);
      v18 = v16 + v15;
      v20 = v17 < v16 || v18 <= v17;
      v21 = v18 - v17;
      if (v20)
      {
        v7 = 0;
      }

      else
      {
        v7 = v21;
      }

      if (v7 >= v14)
      {
        if (!v13)
        {
          goto LABEL_96;
        }

LABEL_53:
        if (*(this + 405) == 1 && (*(this + 404) & 1) == 0)
        {
          *(this + 13) = v17 + *(this + 163);
          *(this + 404) = 1;
        }

        v35 = 0;
        v36 = v16 + v15;
        v37 = v17 < v16 || v36 <= v17;
        v38 = v37;
        v39 = v36 - v17;
        if (!v37 && v39)
        {
          v35 = *(v6 + 72) + (v17 - v16);
        }

        v96 = 0;
        v97[0] = 1;
        *v98 = 0;
        *(&v98[1] + 3) = 0;
        memset(&v98[3], 0, 24);
        if (v38)
        {
          v40 = 0;
        }

        else
        {
          v40 = v39;
        }

        v94[0] = v35;
        v94[1] = v35 + v40;
        v95 = 0;
        if ((v35 & 3) != 0 && v40)
        {
          v41 = 0;
          v42 = v35 + 1;
          v43 = -8;
          v44 = v35 + 1;
          do
          {
            LODWORD(v95) = v41 << 8;
            HIDWORD(v95) = v43 + 16;
            v94[0] = v44;
            v45 = *(v44 - 1) | (v41 << 8);
            LODWORD(v95) = v45;
            v43 += 8;
            if ((v42 & 3) == 0)
            {
              break;
            }

            ++v42;
            v41 = v45;
            v46 = v44++ >= v35 + v40;
          }

          while (!v46);
          LODWORD(v95) = v45 << (24 - v43);
        }

        if (MP4::LOASHeader::Deserialize(&v96, v94))
        {
          goto LABEL_122;
        }

        memset(&v93, 0, sizeof(v93));
        memset(&v92, 0, sizeof(v92));
        v91 = -65536;
        if (MP4::LATMHeader::StreamFormatInfo(v97, (v35 + 3), v40 - 3, this + 14, &v93, &v92, &v91))
        {
          (*(*this + 56))(this, &v92);
          begin = v93.__begin_;
          v48 = v93.__end_ - v93.__begin_;
          CADeprecated::CAAutoFree<unsigned char>::alloc(this + 15, (LODWORD(v93.__end_) - LODWORD(v93.__begin_)), 0);
          memcpy(*(this + 15), begin, v48);
          *(this + 32) = v48;
          v49 = v91;
          if (v91 != -65536)
          {
            CADeprecated::CAAutoFree<unsigned char>::allocBytes(this + 17, 0x20uLL, 0);
            bzero(*(this + 17), 0x20uLL);
            *(this + 36) = 32;
            **(this + 17) = v49;
          }

          memset(&inSpecifier, 0, 40);
          inSpecifier.mASBD.mFormatID = v92.mFormatID;
          inSpecifier.mMagicCookie = begin;
          *&inSpecifier.mMagicCookieSize = v48;
          outPropertyDataSize = 0;
          v50 = 1;
          if (!AudioFormatGetPropertyInfo(0x666C7374u, 0x38u, &inSpecifier, &outPropertyDataSize) && outPropertyDataSize >= 0x30)
          {
            std::vector<AudioFormatListItem>::vector[abi:ne200100](__p, outPropertyDataSize / 0x30uLL);
            v51 = AudioFormatProperty_FormatList(&inSpecifier, 0x38u, &outPropertyDataSize, __p[0]);
            v50 = v51 != 0;
            if (!v51)
            {
              (*(*this + 64))(this, outPropertyDataSize, __p[0]);
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          ioPropertyDataSize = 4;
          AudioFormatGetProperty(0x66646570u, 0x28u, &v92, &ioPropertyDataSize, this + 632);
          if (*(this + 158))
          {
            operator new();
          }

          v52 = *(this + 1);
          v53 = *(v52 + 96) + *(this + 163);
          if ((*(this + 404) & 1) == 0)
          {
            *(this + 13) = v53;
            *(this + 404) = 1;
          }

          *(v52 + 96) = v53;
          LODWORD(__p[0]) = 1;
          if ((*(v52 + 104) & 1) == 0)
          {
            *(v52 + 104) = 1;
            v54 = *(v52 + 24);
            if (v54)
            {
              v54(*(v52 + 40), *(v52 + 8), 1717988724, __p);
              v52 = *(this + 1);
            }
          }

          LODWORD(__p[0]) = 1;
          v55 = *(v52 + 24);
          if (v55)
          {
            v55(*(v52 + 40), *(v52 + 8), 1685022310, __p);
            v52 = *(this + 1);
            v56 = *(v52 + 24);
            LODWORD(__p[0]) = 1;
            if (v56)
            {
              v56(*(v52 + 40), *(v52 + 8), 1920098672, __p);
              v52 = *(this + 1);
            }
          }

          else
          {
            LODWORD(__p[0]) = 1;
          }

          LODWORD(__p[0]) = 1;
          if ((*(v52 + 105) & 1) == 0)
          {
            *(v52 + 105) = 1;
            v58 = *(v52 + 24);
            if (v58)
            {
              v58(*(v52 + 40), *(v52 + 8), 1684434292, __p);
              v52 = *(this + 1);
            }
          }

          if (*(this + 32))
          {
            LODWORD(__p[0]) = 1;
            *(v52 + 108) = 1;
            v59 = *(v52 + 24);
            if (v59)
            {
              v59(*(v52 + 40), *(v52 + 8), 1835493731, __p);
              v52 = *(this + 1);
            }
          }

          if (v49 != -65536)
          {
            LODWORD(__p[0]) = 1;
            if ((*(v52 + 109) & 1) == 0)
            {
              *(v52 + 109) = 1;
              v60 = *(v52 + 24);
              if (v60)
              {
                v60(*(v52 + 40), *(v52 + 8), 1668112752, __p);
                v52 = *(this + 1);
              }
            }
          }

          if (!v50)
          {
            LODWORD(__p[0]) = 1;
            *(v52 + 108) = 1;
            v61 = *(v52 + 24);
            if (v61)
            {
              v61(*(v52 + 40), *(v52 + 8), 1718383476, __p);
              v52 = *(this + 1);
            }
          }

          LODWORD(__p[0]) = 1;
          if (!*(v52 + 112))
          {
            *(v52 + 112) = 1;
            v62 = *(v52 + 24);
            if (v62)
            {
              v62(*(v52 + 40), *(v52 + 8), 1919247481, __p);
            }
          }

          v57 = 4;
          goto LABEL_134;
        }

        if (*(this + 405) != 1)
        {
          goto LABEL_133;
        }

        if (*(this + 102) < 0x2EEu)
        {
          v63 = 0;
          v64 = 0;
          v65 = *(this + 55);
          v66 = *(this + 56);
          v67 = (v66 - v65) >> 4;
          if (v66 != v65)
          {
            v63 = *(v66 - 2);
            v64 = *(v66 - 2) + *(v66 - 1);
          }

          v68 = *(this + 116);
          v69 = *(this + 57);
          if (v66 >= v69)
          {
            v72 = v67 + 1;
            if ((v67 + 1) >> 60)
            {
              std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
            }

            v73 = v69 - v65;
            if (v73 >> 3 > v72)
            {
              v72 = v73 >> 3;
            }

            v46 = v73 >= 0x7FFFFFFFFFFFFFF0;
            v74 = 0xFFFFFFFFFFFFFFFLL;
            if (!v46)
            {
              v74 = v72;
            }

            if (v74)
            {
              std::allocator<AudioStreamPacketDescription>::allocate_at_least[abi:ne200100](v74);
            }

            v75 = 16 * v67;
            *v75 = v64;
            *(v75 + 8) = v63;
            *(v75 + 12) = v68;
            v70 = 16 * v67 + 16;
            memcpy(0, v65, v66 - v65);
            v76 = *(this + 55);
            *(this + 55) = 0;
            *(this + 56) = v70;
            *(this + 57) = 0;
            if (v76)
            {
              operator delete(v76);
            }
          }

          else
          {
            *v66 = v64;
            v70 = (v66 + 16);
            *(v66 + 2) = v63;
            *(v66 + 3) = v68;
          }

          *(this + 56) = v70;
          std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(this + 416, *(this + 53), v35, (v35 + *(this + 116)), *(this + 116));
          ++*(this + 102);
LABEL_133:
          v57 = 0;
          *(*(this + 1) + 96) += *(this + 163) + *(this + 116);
          *(this + 648) = 0;
          goto LABEL_134;
        }

        *(this + 59) = -1;
        v57 = 1;
LABEL_134:
        if (v93.__begin_)
        {
          operator delete(v93.__begin_);
        }

        if (v57)
        {
          if (v57 != 1)
          {
            v77 = 0;
            *a2 = this;
            *(a2 + 8) = AudioFileStreamObject::GeneratePackets;
            *(a2 + 16) = 0;
            v78 = *(this + 1);
            v79 = *(v78 + 88);
            v80 = *(v78 + 96);
            v81 = v79 + *(v78 + 80);
            v82 = v80 < v79 || v81 <= v80;
            v83 = v82;
            v84 = v81 - v80;
            if (!v82 && v84)
            {
              v77 = *(v78 + 72) + (v80 - v79);
            }

            v4 = 0;
            *(a2 + 32) = v77;
            if (v83)
            {
              v85 = 0;
            }

            else
            {
              v85 = v84;
            }

            *(a2 + 24) = v85;
          }

          return v4;
        }
      }

      else
      {
        *(this + 34) = v17;
        v22 = *(v6 + 128);
        v23 = *(v6 + 72);
        if (v23 == v22)
        {
          if (v21)
          {
            v24 = v20;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            v25 = 0;
          }

          else
          {
            v25 = &v23[(v17 - v16)];
          }

          memmove(v22, v25, v7);
          v26 = *(this + 116);
          v6 = *(this + 1);
          if (*(v6 + 124) < v26)
          {
            *(v6 + 124) = v26;
            CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v6 + 128), v26);
            v6 = *(this + 1);
          }

          *(v6 + 120) = v7;
          *(v6 + 96) = *(v6 + 88) + *(v6 + 80);
        }

        else
        {
          if (*(v6 + 124) < v14)
          {
            *(v6 + 124) = v14;
            CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v6 + 128), v14);
            v6 = *(this + 1);
          }

          LODWORD(v7) = 0;
          *(v6 + 120) = 0;
        }

LABEL_40:
        v27 = *(this + 64) - v7;
        v28 = *(v6 + 88);
        v29 = *(v6 + 96);
        v30 = v28 + *(v6 + 80);
        if (v30 <= v29 || v29 < v28)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30 - v29;
        }

        if (v27 <= v32)
        {
          v27 = v32;
        }

        LODWORD(inSpecifier.mASBD.mSampleRate) = v27;
        v33 = v27 + v7;
        if (*(v6 + 124) < v33)
        {
          *(v6 + 124) = v33;
          CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v6 + 128), v33);
          v6 = *(this + 1);
        }

        StreamBuffer::Copy((v6 + 72), &inSpecifier, (*(v6 + 128) + *(v6 + 120)));
        v6 = *(this + 1);
        LODWORD(v15) = *(v6 + 120) + LODWORD(inSpecifier.mASBD.mSampleRate);
        *(v6 + 120) = v15;
        if (v15 < *(this + 64))
        {
          v4 = 0;
          v71 = 105;
          goto LABEL_153;
        }

        v16 = *(this + 34);
        v34 = *(v6 + 128);
        *(v6 + 88) = v16;
        *(v6 + 96) = v16;
        *(v6 + 72) = v34;
        *(v6 + 80) = v15;
        if (*(this + 648))
        {
          v17 = v16;
          goto LABEL_53;
        }

        v18 = v16 + v15;
LABEL_96:
        *(v6 + 96) = v18;
      }
    }
  }

LABEL_7:
  v4 = 0;
LABEL_122:
  v71 = -1;
LABEL_153:
  *(this + 59) = v71;
  return v4;
}

void sub_18F88396C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v14 = *(v12 + 48);
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LOASAudioStream::GetProperty(LOASAudioStream *this, int a2, unsigned int *a3, void *__dst)
{
  if (a2 > 1768174432)
  {
    if (a2 == 1768174433)
    {
      Property = 561211770;
      if (a3 && *a3 == 8)
      {
        Property = 0;
        *__dst = *(this + 66);
      }

      return Property;
    }

    if (a2 != 1835493731)
    {
      if (a2 != 1768174437)
      {
        goto LABEL_41;
      }

      Property = 561211770;
      if (!a3 || *a3 != 4)
      {
        return Property;
      }

      Property = 0;
      v11 = *(this + 131);
      goto LABEL_21;
    }

    v18 = *(this + 1);
    v19 = *(v18 + 136);
    if (v19)
    {
      AudioFormatGetProperty(0x78686D63u, 0xCu, v19, a3, __dst);
      return 0;
    }

    if (*(this + 177))
    {
      return 1685348671;
    }

    if (*(v18 + 112))
    {
      Property = 1970170687;
    }

    else
    {
      Property = 1836020325;
    }

    if (*(v18 + 108) != 1)
    {
      return Property;
    }

    v20 = *a3;
    if (v20 != *(this + 32))
    {
      return 561211770;
    }

    v21 = *(this + 15);
LABEL_63:
    memcpy(__dst, v21, v20);
    return 0;
  }

  switch(a2)
  {
    case 1668112752:
      v12 = *(this + 1);
      v13 = *(v12 + 136);
      if (v13)
      {
        if (*a3 != *(this + 36))
        {
          return 561211770;
        }

        ioPropertyDataSize[0] = 32;
        Property = AudioFormatGetProperty(0x7868636Cu, 0xCu, v13, ioPropertyDataSize, &outPropertyData);
        if (Property)
        {
          return Property;
        }

        v11 = **(*(this + 1) + 136);
LABEL_21:
        *__dst = v11;
        return Property;
      }

      if (*(this + 177))
      {
        return 1685348671;
      }

      if (*(v12 + 112))
      {
        Property = 1970170687;
      }

      else
      {
        Property = 1836020325;
      }

      if (*(v12 + 109) != 1)
      {
        return Property;
      }

      v20 = *a3;
      if (v20 != *(this + 36))
      {
        return 561211770;
      }

      v21 = *(this + 17);
      goto LABEL_63;
    case 1684434292:
      v14 = *(this + 1);
      v15 = *(v14 + 136);
      if (v15)
      {
        v38 = 0;
        outPropertyData = 0u;
        v37 = 0u;
        v16 = AudioFormatGetProperty(0x78686173u, 0xCu, v15, a3, &outPropertyData);
        if (*a3 == 40)
        {
          Property = v16;
          if (!v16)
          {
            v17 = v37;
            *__dst = outPropertyData;
            *(__dst + 1) = v17;
            __dst[4] = v38;
          }

          return Property;
        }

        return 561211770;
      }

      if ((*(this + 177) & 1) == 0)
      {
        if (*(v14 + 112))
        {
          Property = 1970170687;
        }

        else
        {
          Property = 1836020325;
        }

        if (*(v14 + 105) != 1)
        {
          return Property;
        }

        if (*a3 != 40)
        {
          return 561211770;
        }

        Property = 0;
        v23 = *(this + 24);
        v24 = *(this + 40);
        __dst[4] = *(this + 7);
        *__dst = v23;
        *(__dst + 1) = v24;
        return Property;
      }

      return 1685348671;
    case 1718383476:
      v7 = *(*(this + 1) + 136);
      if (v7)
      {
        Property = 1836020325;
        v9 = bswap32(*v7);
        if (v9 <= 1902207330)
        {
          if (v9 <= 1885430114)
          {
            if (v9 != 1633772320)
            {
              if (v9 != 1633772392)
              {
                v10 = 1633772400;
                goto LABEL_67;
              }

LABEL_74:
              outSize = 2;
              v25 = 1633772392;
              v26 = 96;
LABEL_75:
              if (v26 <= *a3)
              {
                *ioPropertyDataSize = 0;
                v27 = OpenCodecComponent(v25, ioPropertyDataSize, 0x61646563u);
                if (v27)
                {
                  return v27;
                }

                outPropertyDataSize = 88;
                AudioFormatGetPropertyInfo(0x78686D63u, 0xCu, *(*(this + 1) + 136), &outPropertyDataSize);
                v28 = malloc_type_calloc(1uLL, outPropertyDataSize, 0x100004077774924uLL);
                AudioFormatGetProperty(0x78686D63u, 0xCu, *(*(this + 1) + 136), &outPropertyDataSize, v28);
                outWritable = 0;
                PropertyInfo = AudioCodecGetPropertyInfo(*ioPropertyDataSize, 0x6163666Cu, &outSize, &outWritable);
                if (PropertyInfo)
                {
                  Property = PropertyInfo;
                  AudioComponentInstanceDispose(*ioPropertyDataSize);
                }

                else
                {
                  std::vector<unsigned char>::vector[abi:ne200100](&outPropertyData, outSize);
                  v30 = outPropertyData;
                  *outPropertyData = outPropertyDataSize;
                  v30[1] = v28;
                  Property = AudioCodecGetProperty(*ioPropertyDataSize, 0x6163666Cu, &outSize, v30);
                  if (!Property)
                  {
                    v31 = outSize;
                    *a3 = outSize;
                    memcpy(__dst, outPropertyData, v31);
                  }

                  AudioComponentInstanceDispose(*ioPropertyDataSize);
                  if (outPropertyData)
                  {
                    *(&outPropertyData + 1) = outPropertyData;
                    operator delete(outPropertyData);
                  }
                }

                return Property;
              }

              return 561211770;
            }

            goto LABEL_72;
          }

          if (v9 == 1885430115)
          {
            goto LABEL_72;
          }

          if (v9 == 1885430632)
          {
            goto LABEL_74;
          }

          v10 = 1885430640;
LABEL_67:
          if (v9 != v10)
          {
            return Property;
          }

          goto LABEL_73;
        }

        if (v9 <= 2053202274)
        {
          if (v9 == 1902207331)
          {
            goto LABEL_72;
          }

          if (v9 == 1902207848)
          {
            goto LABEL_74;
          }

          v10 = 1902207856;
          goto LABEL_67;
        }

        switch(v9)
        {
          case 2053202800:
LABEL_73:
            outSize = 3;
            v25 = 1633772400;
            v26 = 144;
            goto LABEL_75;
          case 2053202792:
            goto LABEL_74;
          case 2053202275:
LABEL_72:
            v25 = 1633772320;
            outSize = 1;
            v26 = 48;
            goto LABEL_75;
        }

        return Property;
      }

      a2 = 1718383476;
      break;
  }

LABEL_41:

  return AudioFileStreamObject::GetProperty(this, a2, a3, __dst);
}

void sub_18F883F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LOASAudioStream::GetPropertyInfo(LOASAudioStream *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  switch(a2)
  {
    case 1768174433:
      if (!a3)
      {
        goto LABEL_14;
      }

      v6 = 8;
LABEL_13:
      *a3 = v6;
LABEL_14:
      if (a4)
      {
        result = 0;
        *a4 = 0;
        return result;
      }

      return 0;
    case 1835493731:
      v7 = *(this + 1);
      v8 = *(v7 + 136);
      if (v8)
      {
        outPropertyDataSize = 0;
        result = AudioFormatGetPropertyInfo(0x78686D63u, 0xCu, v8, &outPropertyDataSize);
        if (!a3 || result)
        {
          return result;
        }

        v10 = outPropertyDataSize;
      }

      else
      {
        if (*(this + 177))
        {
          return 1685348671;
        }

        if (*(v7 + 112))
        {
          result = 1970170687;
        }

        else
        {
          result = 1836020325;
        }

        if (a4)
        {
          *a4 = 0;
          v7 = *(this + 1);
        }

        if (*(v7 + 108) != 1)
        {
          return result;
        }

        if (!a3)
        {
          return 0;
        }

        result = 0;
        v10 = *(this + 32);
      }

      *a3 = v10;
      return result;
    case 1768174437:
      if (!a3)
      {
        goto LABEL_14;
      }

      v6 = 4;
      goto LABEL_13;
  }

  return AudioFileStreamObject::GetPropertyInfo(this, a2, a3, a4);
}

void LOASAudioStream::~LOASAudioStream(LOASAudioStream *this)
{
  LOASAudioStream::~LOASAudioStream(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033B6B8;
  v2 = *(this + 80);
  if (v2)
  {
    MEMORY[0x193ADF220](v2, 0x1000C403E1C8BA9);
  }

  v3 = *(this + 76);
  if (v3)
  {
    *(this + 77) = v3;
    operator delete(v3);
  }

  v4 = *(this + 72);
  if (v4)
  {
    *(this + 73) = v4;
    operator delete(v4);
  }

  v5 = *(this + 69);
  if (v5)
  {
    *(this + 70) = v5;
    operator delete(v5);
  }

  v6 = *(this + 55);
  if (v6)
  {
    *(this + 56) = v6;
    operator delete(v6);
  }

  v7 = *(this + 52);
  if (v7)
  {
    *(this + 53) = v7;
    operator delete(v7);
  }

  v8 = *(this + 42);
  if (v8)
  {
    *(this + 43) = v8;
    operator delete(v8);
  }

  AudioFileStreamObject::~AudioFileStreamObject(this);
}

uint64_t MP4CelpSpecificConfig::Deserialize(_DWORD *a1, uint64_t a2)
{
  Bit = TBitstreamReader<unsigned int>::GetBit(a2);
  a1[3] = Bit;
  v5 = TBitstreamReader<unsigned int>::GetBit(a2);
  if (Bit)
  {
    a1[4] = v5;
    a1[5] = TBitstreamReader<unsigned int>::GetBit(a2);
    a1[6] = TBitstreamReader<unsigned int>::GetBit(a2);
    if (a1[2] == 24)
    {
      a1[7] = TBitstreamReader<unsigned int>::GetBit(a2);
    }

    v7 = *(a2 + 16);
    v6 = *(a2 + 20);
    if (a1[4])
    {
      v8 = v7 >> 29;
      v9 = v6 - 3;
      *(a2 + 20) = v9;
      if (v9 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v19 = *(a2 + 16);
        v18 = *(a2 + 20);
        v8 |= v19 >> v18;
        *(a2 + 20) = v18 + 32;
        if (v18 == -32)
        {
          v10 = 0;
        }

        else
        {
          v10 = v19 << -v18;
        }
      }

      else
      {
        v10 = 8 * v7;
      }

      *(a2 + 16) = v10;
      a1[8] = v8;
      goto LABEL_36;
    }

    v15 = v7 >> 27;
    v16 = v6 - 5;
    *(a2 + 20) = v16;
    if (v16 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      v23 = (*a2 + 4);
      *a2 = v23;
      v25 = *(a2 + 16);
      v24 = *(a2 + 20);
      v15 |= v25 >> v24;
      v16 = v24 + 32;
      if (v24 == -32)
      {
        v26 = 0;
        a1[9] = v15;
        *(a2 + 16) = 0xFFFFFFFE00000000;
        goto LABEL_30;
      }

      v17 = v25 << -v24;
    }

    else
    {
      v17 = 32 * v7;
    }

    a1[9] = v15;
    v26 = v17 >> 30;
    v27 = v16 - 2;
    *(a2 + 16) = v17;
    *(a2 + 20) = v27;
    if (v27 >= 0)
    {
      v28 = 4 * v17;
LABEL_33:
      *(a2 + 16) = v28;
      a1[10] = v26;
      a1[11] = TBitstreamReader<unsigned int>::GetBit(a2);
      goto LABEL_36;
    }

    v23 = *a2;
LABEL_30:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v23);
    *a2 += 4;
    v32 = *(a2 + 16);
    v31 = *(a2 + 20);
    v26 |= v32 >> v31;
    *(a2 + 20) = v31 + 32;
    if (v31 == -32)
    {
      v28 = 0;
    }

    else
    {
      v28 = v32 << -v31;
    }

    goto LABEL_33;
  }

  a1[12] = v5;
  v11 = *(a2 + 16);
  v12 = v11 >> 30;
  v13 = *(a2 + 20) - 2;
  *(a2 + 20) = v13;
  if (v5)
  {
    if (v13 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v22 = *(a2 + 16);
      v21 = *(a2 + 20);
      v12 |= v22 >> v21;
      *(a2 + 20) = v21 + 32;
      if (v21 == -32)
      {
        v14 = 0;
      }

      else
      {
        v14 = v22 << -v21;
      }
    }

    else
    {
      v14 = 4 * v11;
    }

    *(a2 + 16) = v14;
    a1[13] = v12;
  }

  else
  {
    if (v13 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v30 = *(a2 + 16);
      v29 = *(a2 + 20);
      v12 |= v30 >> v29;
      *(a2 + 20) = v29 + 32;
      if (v29 == -32)
      {
        v20 = 0;
      }

      else
      {
        v20 = v30 << -v29;
      }
    }

    else
    {
      v20 = 4 * v11;
    }

    *(a2 + 16) = v20;
    a1[14] = v12;
  }

LABEL_36:
  if (a1[2] == 24)
  {
    v33 = *(a2 + 16);
    v34 = v33 >> 30;
    v35 = *(a2 + 20) - 2;
    *(a2 + 20) = v35;
    if (v35 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v38 = *(a2 + 16);
      v37 = *(a2 + 20);
      v34 |= v38 >> v37;
      *(a2 + 20) = v37 + 32;
      if (v37 == -32)
      {
        v36 = 0;
      }

      else
      {
        v36 = v38 << -v37;
      }
    }

    else
    {
      v36 = 4 * v33;
    }

    *(a2 + 16) = v36;
    a1[15] = v34;
  }

  return 0;
}

uint64_t MP4SpatialAudioSpecificConfig::Deserialize(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = *(a2 + 20);
  MP4SampleRate::Deserialize(*(a1 + 8), a2, 1);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20) - 32;
  *(a2 + 20) = v10;
  if (v10 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v12 = *(a2 + 16);
    v11 = *(a2 + 20);
    v14 = v11 + 32;
    v13 = v11 == -32;
    *a2 += 4;
    v9 |= v12 >> v11;
    v15 = v12 << -v11;
    if (v13)
    {
      v15 = 0;
    }

    *(a2 + 16) = v15;
    *(a2 + 20) = v14;
  }

  v16 = vdupq_n_s32(v9);
  *(a1 + 16) = v9 >> 25;
  *(a1 + 20) = vandq_s8(vshlq_u32(v16, xmmword_18F901C80), xmmword_18F901C90);
  *(a1 + 36) = vandq_s8(vshlq_u32(v16, xmmword_18F901CA0), xmmword_18F901CB0);
  *(a1 + 52) = vand_s8(vshl_u32(*v16.i8, 0xFFFFFFFEFFFFFFFCLL), 0x300000001);
  *(a1 + 60) = v9 & 3;
  *(a1 + 64) = TBitstreamReader<unsigned int>::GetBit(a2);
  v17 = *(a1 + 24);
  if (v17 > 7)
  {
    return 0xFFFFFFFFLL;
  }

  v59 = a3;
  v60 = v7;
  v19 = &kBsTreeConfigurationTable + 28 * v17;
  v20 = *(v19 + 1);
  if (v20)
  {
    v21 = 0;
    v22 = *(v19 + 5);
    do
    {
      if ((v22 >> v21))
      {
        v23 = *(a2 + 16);
        v24 = v23 >> 27;
        v25 = *(a2 + 20) - 5;
        *(a2 + 20) = v25;
        if (v25 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v28 = *(a2 + 16);
          v27 = *(a2 + 20);
          v24 |= v28 >> v27;
          *(a2 + 20) = v27 + 32;
          if (v27 == -32)
          {
            v26 = 0;
          }

          else
          {
            v26 = v28 << -v27;
          }
        }

        else
        {
          v26 = 32 * v23;
        }

        *(a2 + 16) = v26;
      }

      else
      {
        v24 = kBsFreqResTable[*(a1 + 20)];
      }

      *(a1 + 76 + 4 * v21++) = v24;
    }

    while (v20 != v21);
  }

  v29 = *(v19 + 3);
  if (v29)
  {
    v30 = a1;
    do
    {
      v30[24] = TBitstreamReader<unsigned int>::GetBit(a2);
      v31 = *(a2 + 16);
      v32 = v31 >> 29;
      v33 = *(a2 + 20) - 3;
      *(a2 + 20) = v33;
      if (v33 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v36 = *(a2 + 16);
        v35 = *(a2 + 20);
        v32 |= v36 >> v35;
        *(a2 + 20) = v35 + 32;
        if (v35 == -32)
        {
          v34 = 0;
        }

        else
        {
          v34 = v36 << -v35;
        }
      }

      else
      {
        v34 = 8 * v31;
      }

      *(a2 + 16) = v34;
      v30[25] = v32;
      if (v30[24])
      {
        v37 = *(a2 + 16);
        v38 = v37 >> 29;
        v39 = *(a2 + 20) - 3;
        *(a2 + 20) = v39;
        if (v39 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v43 = *(a2 + 16);
          v42 = *(a2 + 20);
          v38 |= v43 >> v42;
          *(a2 + 20) = v42 + 32;
          if (v42 == -32)
          {
            v40 = 0;
          }

          else
          {
            v40 = v43 << -v42;
          }
        }

        else
        {
          v40 = 8 * v37;
        }

        *(a2 + 16) = v40;
        v30[26] = v38;
        v44 = *(a2 + 16);
        v45 = v44 >> 27;
        v46 = *(a2 + 20) - 5;
        *(a2 + 20) = v46;
        if (v46 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v49 = *(a2 + 16);
          v48 = *(a2 + 20);
          v45 |= v49 >> v48;
          *(a2 + 20) = v48 + 32;
          if (v48 == -32)
          {
            v47 = 0;
          }

          else
          {
            v47 = v49 << -v48;
          }
        }

        else
        {
          v47 = 32 * v44;
        }

        *(a2 + 16) = v47;
        v30[27] = v45;
        v41 = 28;
      }

      else
      {
        v41 = 27;
      }

      v30[v41] = kBsFreqResTable[*(a1 + 20)];
      ++v30;
      --v29;
    }

    while (v29);
  }

  if (*(a1 + 56) == 2)
  {
    *(a1 + 68) = TBitstreamReader<unsigned int>::GetBit(a2);
  }

  if (*(a1 + 64))
  {
    Bit = TBitstreamReader<unsigned int>::GetBit(a2);
    *(a1 + 72) = Bit;
    if (!Bit)
    {
      operator new();
    }
  }

  v51 = *a2;
  v52 = *(a2 + 8);
  v53 = *a2 - v52;
  v54 = *(a2 + 20);
  if ((v54 & 7) != 0)
  {
    v55 = *(a2 + 16);
    v56 = v54 & 0xFFFFFFF8;
    *(a2 + 20) = v54 & 0xFFFFFFF8;
    if (v54 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v51);
      v58 = *(a2 + 20);
      v51 = (*a2 + 4);
      *a2 = v51;
      v56 = v58 + 32;
      *(a2 + 20) = v58 + 32;
      if (v58 == -32)
      {
        v57 = 0;
      }

      else
      {
        v57 = *(a2 + 16) << -v58;
      }
    }

    else
    {
      v57 = v55 << (v54 & 7);
    }

    *(a2 + 16) = v57;
    v52 = *(a2 + 8);
  }

  else
  {
    v56 = *(a2 + 20);
  }

  MP4SpatialExtensionConfig::Deserialize(*(a1 + 128), a2, v19, v8 - v59 - v54 + v56 + 8 * (v53 + v6 - v60 + v52 - v51));
  result = 0;
  *(a1 + 136) = 1;
  return result;
}

uint64_t ParamHRTF::Deserialize(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = v4 >> 29;
  v6 = *(a2 + 20) - 3;
  *(a2 + 20) = v6;
  if (v6 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v9 = *(a2 + 16);
    v8 = *(a2 + 20);
    v5 |= v9 >> v8;
    *(a2 + 20) = v8 + 32;
    if (v8 == -32)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9 << -v8;
    }
  }

  else
  {
    v7 = 8 * v4;
  }

  *(a2 + 16) = v7;
  *a1 = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  Bit = TBitstreamReader<unsigned int>::GetBit(a2);
  v11 = 0;
  v54 = (&ParamHRTF::kParamHRTFFreqResTable + 4 * v5);
  v55 = a1;
  v12 = (a1 + 4);
  v13 = (a1 + 564);
  v14 = (a1 + 1124);
  v15 = (a1 + 1384);
  v56 = *v54;
  if (Bit)
  {
    v16 = *v54 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  v53 = v17;
  do
  {
    v18 = v12;
    v19 = v56;
    if (v56)
    {
      do
      {
        v20 = *(a2 + 16);
        v21 = v20 >> 26;
        v22 = *(a2 + 20) - 6;
        *(a2 + 20) = v22;
        if (v22 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v25 = *(a2 + 16);
          v24 = *(a2 + 20);
          v21 |= v25 >> v24;
          *(a2 + 20) = v24 + 32;
          if (v24 == -32)
          {
            v23 = 0;
          }

          else
          {
            v23 = v25 << -v24;
          }
        }

        else
        {
          v23 = v20 << 6;
        }

        *(a2 + 16) = v23;
        *v18++ = v21;
        --v19;
      }

      while (v19);
      v26 = v13;
      v27 = v56;
      if ((v53 & 1) == 0)
      {
        do
        {
          v28 = *(a2 + 16);
          v29 = v28 >> 26;
          v30 = *(a2 + 20) - 6;
          *(a2 + 20) = v30;
          if (v30 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
            *a2 += 4;
            v33 = *(a2 + 16);
            v32 = *(a2 + 20);
            v29 |= v33 >> v32;
            *(a2 + 20) = v32 + 32;
            if (v32 == -32)
            {
              v31 = 0;
            }

            else
            {
              v31 = v33 << -v32;
            }
          }

          else
          {
            v31 = v28 << 6;
          }

          *(a2 + 16) = v31;
          *v26++ = v29;
          --v27;
        }

        while (v27);
      }
    }

    v34 = TBitstreamReader<unsigned int>::GetBit(a2);
    *(a1 + 1944) |= 1 << v11;
    if (v34)
    {
      v35 = v54[1];
      v36 = v14;
      if (v54[1])
      {
        do
        {
          v37 = *(a2 + 16);
          v38 = v37 >> 26;
          v39 = *(a2 + 20) - 6;
          *(a2 + 20) = v39;
          if (v39 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
            *a2 += 4;
            v42 = *(a2 + 16);
            v41 = *(a2 + 20);
            v38 |= v42 >> v41;
            *(a2 + 20) = v41 + 32;
            if (v41 == -32)
            {
              v40 = 0;
            }

            else
            {
              v40 = v42 << -v41;
            }
          }

          else
          {
            v40 = v37 << 6;
          }

          *(a2 + 16) = v40;
          *v36++ = v38;
          --v35;
        }

        while (v35);
      }

      v43 = TBitstreamReader<unsigned int>::GetBit(a2);
      *(v55 + 1946) |= 1 << v11;
      if (v43)
      {
        v44 = v15;
        v45 = v56;
        if (v56)
        {
          do
          {
            v46 = *(a2 + 16);
            v47 = v46 >> 29;
            v48 = *(a2 + 20) - 3;
            *(a2 + 20) = v48;
            if (v48 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
              *a2 += 4;
              v51 = *(a2 + 16);
              v50 = *(a2 + 20);
              v47 |= v51 >> v50;
              *(a2 + 20) = v50 + 32;
              if (v50 == -32)
              {
                v49 = 0;
              }

              else
              {
                v49 = v51 << -v50;
              }
            }

            else
            {
              v49 = 8 * v46;
            }

            *(a2 + 16) = v49;
            *v44++ = v47;
            --v45;
          }

          while (v45);
        }
      }
    }

    ++v11;
    v12 += 28;
    v13 += 28;
    v14 += 13;
    v15 += 28;
    a1 = v55;
  }

  while (v11 != 5);
  return 0;
}

void MP4SpatialExtensionConfig::Deserialize(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4)
{
  v5 = *(a2 + 8);
  v6 = *a2;
  v7 = v5 - v6;
  v8 = *(a2 + 20);
  if (v8 + 8 * v7 >= a4)
  {
    *(a1 + 8) = *a1;
    if ((v8 - a4 + 8 * v7) >= 8)
    {
      do
      {
        v10 = *(a2 + 16);
        v11 = v10 >> 28;
        v12 = v8 - 4;
        *(a2 + 20) = v12;
        if (v12 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, v6);
          *a2 += 4;
          v15 = *(a2 + 16);
          v14 = *(a2 + 20);
          v11 |= v15 >> v14;
          *(a2 + 20) = v14 + 32;
          if (v14 == -32)
          {
            v13 = 0;
          }

          else
          {
            v13 = v15 << -v14;
          }
        }

        else
        {
          v13 = 16 * v10;
        }

        *(a2 + 16) = v13;
        v17 = *(a1 + 8);
        v16 = *(a1 + 16);
        if (v17 >= v16)
        {
          v19 = *a1;
          v20 = v17 - *a1;
          v21 = (v20 >> 2) + 1;
          if (v21 >> 62)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v22 = v16 - v19;
          if (v22 >> 1 > v21)
          {
            v21 = v22 >> 1;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v23);
          }

          v24 = (4 * (v20 >> 2));
          *v24 = v11;
          v18 = v24 + 1;
          memcpy(0, v19, v20);
          v25 = *a1;
          *a1 = 0;
          *(a1 + 8) = v18;
          *(a1 + 16) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v17 = v11;
          v18 = v17 + 1;
        }

        *(a1 + 8) = v18;
        v26 = *(a2 + 16);
        v27 = v26 >> 28;
        v28 = *(a2 + 20) - 4;
        *(a2 + 20) = v28;
        if (v28 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v31 = *(a2 + 16);
          v30 = *(a2 + 20);
          v27 |= v31 >> v30;
          v28 = v30 + 32;
          *(a2 + 20) = v30 + 32;
          if (v30 == -32)
          {
            v29 = 0;
          }

          else
          {
            v29 = v31 << -v30;
          }
        }

        else
        {
          v29 = 16 * v26;
        }

        *(a2 + 16) = v29;
        if (v27 == 15)
        {
          v32 = HIBYTE(v29);
          v28 -= 8;
          *(a2 + 20) = v28;
          if (v28 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
            *a2 += 4;
            v34 = *(a2 + 16);
            v33 = *(a2 + 20);
            v32 |= v34 >> v33;
            v28 = v33 + 32;
            *(a2 + 20) = v33 + 32;
            v29 = v33 == -32 ? 0 : v34 << -v33;
          }

          else
          {
            v29 <<= 8;
          }

          *(a2 + 16) = v29;
          v27 = v32 + 15;
          if (v27 == 270)
          {
            v35 = HIWORD(v29);
            v28 -= 16;
            *(a2 + 20) = v28;
            if (v28 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
              *a2 += 4;
              v37 = *(a2 + 16);
              v36 = *(a2 + 20);
              v35 |= v37 >> v36;
              v28 = v36 + 32;
              *(a2 + 20) = v36 + 32;
              if (v36 == -32)
              {
                v29 = 0;
              }

              else
              {
                v29 = v37 << -v36;
              }
            }

            else
            {
              v29 <<= 16;
            }

            *(a2 + 16) = v29;
            v27 = v35 + 270;
          }
        }

        v38 = *a2;
        v39 = *(*(a1 + 8) - 4);
        v106 = *(a2 + 8);
        v107 = v27;
        v105 = *a2;
        if (v39 == 2)
        {
          v48 = a3[5];
          if (v48)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = 1;
LABEL_47:
            v53 = 1;
            while (*(a2 + 20) + 8 * (*(a2 + 8) - *a2) >= 1)
            {
              Bit = TBitstreamReader<unsigned int>::GetBit(a2);
              if (Bit)
              {
                ++v51;
                ++v53;
              }

              else
              {
                --v53;
              }

              if (!Bit)
              {
                ++v49;
              }

              if (!v53)
              {
                v52 = ++v50 < v48;
                if (v50 != v48)
                {
                  goto LABEL_47;
                }

                goto LABEL_58;
              }
            }

            if (v52)
            {
              goto LABEL_124;
            }

LABEL_58:
            while (v51)
            {
              TBitstreamReader<unsigned int>::GetBit(a2);
              if (TBitstreamReader<unsigned int>::GetBit(a2))
              {
                v55 = *(a2 + 16);
                v56 = *(a2 + 20) - 5;
                *(a2 + 20) = v56;
                if (v56 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                  v58 = *(a2 + 20);
                  *a2 += 4;
                  *(a2 + 20) = v58 + 32;
                  if (v58 == -32)
                  {
                    v57 = 0;
                  }

                  else
                  {
                    v57 = *(a2 + 16) << -v58;
                  }
                }

                else
                {
                  v57 = 32 * v55;
                }

                *(a2 + 16) = v57;
              }

              --v51;
            }

            if (v49)
            {
              v60 = *(a2 + 16);
              v59 = *(a2 + 20);
              do
              {
                v59 -= 5;
                *(a2 + 20) = v59;
                if (v59 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                  v61 = *(a2 + 20);
                  *a2 += 4;
                  v59 = v61 + 32;
                  *(a2 + 20) = v61 + 32;
                  if (v61 == -32)
                  {
                    v60 = 0;
                  }

                  else
                  {
                    v60 = *(a2 + 16) << -v61;
                  }
                }

                else
                {
                  v60 *= 32;
                }

                *(a2 + 16) = v60;
                --v49;
              }

              while (v49);
            }
          }

          goto LABEL_124;
        }

        if (v39 != 1)
        {
          if (v39)
          {
            return;
          }

          *(a1 + 24) = 1;
          v40 = v29 >> 28;
          v41 = v28 - 4;
          *(a2 + 20) = v28 - 4;
          if (v28 - 4 >= 0)
          {
            v42 = 16 * v29;
            v43 = v38;
            goto LABEL_82;
          }

          TBitstreamReader<unsigned int>::FillCacheFrom(a2, v38);
          v43 = (*a2 + 4);
          *a2 = v43;
          v68 = *(a2 + 16);
          v67 = *(a2 + 20);
          v40 |= v68 >> v67;
          v41 = v67 + 32;
          if (v67 == -32)
          {
            v69 = 0;
            *(a1 + 25) = v40;
            *(a2 + 16) = 0xFFFFFFFE00000000;
          }

          else
          {
            v42 = v68 << -v67;
LABEL_82:
            *(a1 + 25) = v40;
            v69 = v42 >> 30;
            v70 = v41 - 2;
            *(a2 + 16) = v42;
            *(a2 + 20) = v70;
            if (v70 >= 0)
            {
              v71 = 4 * v42;
LABEL_98:
              *(a2 + 16) = v71;
              *(a1 + 26) = v69;
              v81 = (a3[3] + a3[1]);
              v83 = *(a1 + 56);
              v82 = *(a1 + 64);
              if (v81 <= v82 - v83)
              {
                if (v81 < v82 - v83)
                {
                  v82 = v83 + v81;
                  *(a1 + 64) = v83 + v81;
                }
              }

              else
              {
                std::vector<unsigned char>::__append((a1 + 56), v81 - (v82 - v83));
                v83 = *(a1 + 56);
                v82 = *(a1 + 64);
              }

              if (v82 != v83)
              {
                v84 = 0;
                v85 = 1;
                do
                {
                  v86 = TBitstreamReader<unsigned int>::GetBit(a2);
                  v88 = *(a1 + 40);
                  v87 = *(a1 + 48);
                  if (v88 >= v87)
                  {
                    v90 = *(a1 + 32);
                    v91 = (v88 - v90);
                    v92 = v88 - v90 + 1;
                    if (v92 < 0)
                    {
                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    v93 = v87 - v90;
                    if (2 * v93 > v92)
                    {
                      v92 = 2 * v93;
                    }

                    if (v93 >= 0x3FFFFFFFFFFFFFFFLL)
                    {
                      v94 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v94 = v92;
                    }

                    if (v94)
                    {
                      operator new();
                    }

                    v95 = v88 - v90;
                    *v91 = v86;
                    v89 = v91 + 1;
                    memcpy(0, v90, v95);
                    *(a1 + 32) = 0;
                    *(a1 + 40) = v91 + 1;
                    *(a1 + 48) = 0;
                    if (v90)
                    {
                      operator delete(v90);
                    }
                  }

                  else
                  {
                    *v88 = v86;
                    v89 = v88 + 1;
                  }

                  *(a1 + 40) = v89;
                  if (*(v89 - 1))
                  {
                    v96 = *(a2 + 16);
                    v97 = v96 >> 27;
                    v98 = *(a2 + 20) - 5;
                    *(a2 + 20) = v98;
                    if (v98 < 0)
                    {
                      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                      *a2 += 4;
                      v101 = *(a2 + 16);
                      v100 = *(a2 + 20);
                      v97 |= v101 >> v100;
                      *(a2 + 20) = v100 + 32;
                      if (v100 == -32)
                      {
                        v99 = 0;
                      }

                      else
                      {
                        v99 = v101 << -v100;
                      }
                    }

                    else
                    {
                      v99 = 32 * v96;
                    }

                    *(a2 + 16) = v99;
                    *(*(a1 + 56) + v84) = v97;
                  }

                  v84 = v85;
                }

                while (*(a1 + 64) - *(a1 + 56) > v85++);
              }

              goto LABEL_124;
            }
          }

          TBitstreamReader<unsigned int>::FillCacheFrom(a2, v43);
          *a2 += 4;
          v80 = *(a2 + 16);
          v79 = *(a2 + 20);
          v69 |= v80 >> v79;
          *(a2 + 20) = v79 + 32;
          if (v79 == -32)
          {
            v71 = 0;
          }

          else
          {
            v71 = v80 << -v79;
          }

          goto LABEL_98;
        }

        *(a1 + 80) = 1;
        v44 = v29 >> 28;
        v45 = v28 - 4;
        *(a2 + 20) = v28 - 4;
        if (v28 - 4 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, v38);
          v47 = (*a2 + 4);
          *a2 = v47;
          v63 = *(a2 + 16);
          v62 = *(a2 + 20);
          v44 |= v63 >> v62;
          v45 = v62 + 32;
          if (v62 == -32)
          {
            v64 = 0;
            *(a1 + 81) = v44;
            *(a2 + 16) = 0xFFFFFFFE00000000;
            goto LABEL_85;
          }

          v46 = v63 << -v62;
        }

        else
        {
          v46 = 16 * v29;
          v47 = v38;
        }

        *(a1 + 81) = v44;
        v64 = v46 >> 30;
        v65 = v45 - 2;
        *(a2 + 16) = v46;
        *(a2 + 20) = v45 - 2;
        if (v45 - 2 >= 0)
        {
          v66 = 4 * v46;
          goto LABEL_87;
        }

LABEL_85:
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, v47);
        v47 = (*a2 + 4);
        *a2 = v47;
        v73 = *(a2 + 16);
        v72 = *(a2 + 20);
        v64 |= v73 >> v72;
        v65 = v72 + 32;
        if (v72 == -32)
        {
          v74 = 0;
          *(a1 + 82) = v64;
          *(a2 + 16) = 0xFFFFFFFB00000000;
LABEL_90:
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, v47);
          *a2 += 4;
          v78 = *(a2 + 16);
          v77 = *(a2 + 20);
          v74 |= v78 >> v77;
          *(a2 + 20) = v77 + 32;
          if (v77 == -32)
          {
            v76 = 0;
          }

          else
          {
            v76 = v78 << -v77;
          }

          goto LABEL_93;
        }

        v66 = v73 << -v72;
LABEL_87:
        *(a1 + 82) = v64;
        v74 = v66 >> 27;
        v75 = v65 - 5;
        *(a2 + 16) = v66;
        *(a2 + 20) = v75;
        if (v75 < 0)
        {
          goto LABEL_90;
        }

        v76 = 32 * v66;
LABEL_93:
        *(a2 + 16) = v76;
        *(a1 + 83) = v74;
LABEL_124:
        TBitstreamReader<unsigned int>::SkipBits(a2, *(a2 + 20) - v28 + 8 * (v107 + v105 - v106 + *(a2 + 8) - *a2));
        v6 = *a2;
        v8 = *(a2 + 20);
      }

      while ((v8 - a4 + 8 * (*(a2 + 8) - *a2)) > 7);
    }
  }
}

void MP4SpatialAudioSpecificConfig::~MP4SpatialAudioSpecificConfig(MP4SpatialAudioSpecificConfig *this)
{
  MP4SpatialAudioSpecificConfig::~MP4SpatialAudioSpecificConfig(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033B7E0;
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x193ADF220](v2, 0x1000C4052888210);
  }

  v3 = *(this + 15);
  if (v3)
  {
    MEMORY[0x193ADF220](v3, 0x1000C4000E02AC3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    v5 = *(v4 + 56);
    if (v5)
    {
      *(v4 + 64) = v5;
      operator delete(v5);
    }

    v6 = *(v4 + 32);
    if (v6)
    {
      *(v4 + 40) = v6;
      operator delete(v6);
    }

    v7 = *v4;
    if (*v4)
    {
      *(v4 + 8) = v7;
      operator delete(v7);
    }

    MEMORY[0x193ADF220](v4, 0x1010C40ADE5291FLL);
  }
}

uint64_t MP4LDSpatialSpecificConfig::Deserialize(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = *(a2 + 20);
  MP4SampleRate::Deserialize(*(a1 + 8), a2, 1);
  v9 = *(a2 + 16);
  v10 = v9 >> 18;
  v11 = *(a2 + 20) - 14;
  *(a2 + 20) = v11;
  if (v11 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v14 = *(a2 + 16);
    v13 = *(a2 + 20);
    v10 |= v14 >> v13;
    *(a2 + 20) = v13 + 32;
    if (v13 == -32)
    {
      v12 = 0;
    }

    else
    {
      v12 = v14 << -v13;
    }
  }

  else
  {
    v12 = v9 << 14;
  }

  *(a2 + 16) = v12;
  *(a1 + 16) = vand_s8(vshl_u32(vdup_n_s32(v10), 0xFFFFFFFAFFFFFFF7), 0x70000001FLL);
  v15 = (v10 >> 2) & 0xF;
  *(a1 + 24) = v15;
  *(a1 + 28) = v10 & 3;
  if (v15 != 7)
  {
    *(a1 + 32) = TBitstreamReader<unsigned int>::GetBit(a2);
  }

  *(a1 + 36) = TBitstreamReader<unsigned int>::GetBit(a2);
  v16 = *(a2 + 16);
  v17 = *(a2 + 20);
  if (*(a1 + 24) != 7)
  {
    v18 = v16 >> 29;
    v19 = v17 - 3;
    *(a2 + 20) = v19;
    if (v19 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      v21 = (*a2 + 4);
      *a2 = v21;
      v23 = *(a2 + 16);
      v22 = *(a2 + 20);
      v18 |= v23 >> v22;
      v19 = v22 + 32;
      if (v22 == -32)
      {
        v24 = 0;
        *(a1 + 40) = v18;
        *(a2 + 16) = 0xFFFFFFFD00000000;
        goto LABEL_17;
      }

      v20 = v23 << -v22;
    }

    else
    {
      v20 = 8 * v16;
    }

    *(a1 + 40) = v18;
    v24 = v20 >> 29;
    v17 = v19 - 3;
    *(a2 + 16) = v20;
    *(a2 + 20) = v17;
    if (v17 >= 0)
    {
      v16 = 8 * v20;
LABEL_20:
      *(a2 + 16) = v16;
      *(a1 + 44) = v24;
      goto LABEL_21;
    }

    v21 = *a2;
LABEL_17:
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, v21);
    *a2 += 4;
    v26 = *(a2 + 16);
    v25 = *(a2 + 20);
    v24 |= v26 >> v25;
    v17 = v25 + 32;
    if (v25 == -32)
    {
      v16 = 0;
    }

    else
    {
      v16 = v26 << -v25;
    }

    goto LABEL_20;
  }

LABEL_21:
  v27 = v16 >> 29;
  v28 = v17 - 3;
  *(a2 + 20) = v28;
  if (v28 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v31 = *(a2 + 16);
    v30 = *(a2 + 20);
    v27 |= v31 >> v30;
    v28 = v30 + 32;
    *(a2 + 20) = v30 + 32;
    if (v30 == -32)
    {
      v29 = 0;
    }

    else
    {
      v29 = v31 << -v30;
    }
  }

  else
  {
    v29 = 8 * v16;
  }

  *(a2 + 16) = v29;
  *(a1 + 48) = v27;
  if (*(a1 + 24) != 7)
  {
    *(a1 + 52) = TBitstreamReader<unsigned int>::GetBit(a2);
    v29 = *(a2 + 16);
    v28 = *(a2 + 20);
  }

  v32 = v29 >> 30;
  v33 = v28 - 2;
  *(a2 + 20) = v33;
  if (v33 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    v35 = (*a2 + 4);
    *a2 = v35;
    v37 = *(a2 + 16);
    v36 = *(a2 + 20);
    v32 |= v37 >> v36;
    v33 = v36 + 32;
    if (v36 == -32)
    {
      v39 = 0;
      *(a1 + 56) = v32;
      v38 = (a1 + 56);
      *(a2 + 16) = 0xFFFFFFFE00000000;
      goto LABEL_36;
    }

    v34 = v37 << -v36;
  }

  else
  {
    v34 = 4 * v29;
  }

  *(a1 + 56) = v32;
  v38 = (a1 + 56);
  v39 = v34 >> 30;
  v40 = v33 - 2;
  *(a2 + 16) = v34;
  *(a2 + 20) = v40;
  if (v40 >= 0)
  {
    v41 = 4 * v34;
    goto LABEL_39;
  }

  v35 = *a2;
LABEL_36:
  TBitstreamReader<unsigned int>::FillCacheFrom(a2, v35);
  *a2 += 4;
  v43 = *(a2 + 16);
  v42 = *(a2 + 20);
  v39 |= v43 >> v42;
  *(a2 + 20) = v42 + 32;
  if (v42 == -32)
  {
    v41 = 0;
  }

  else
  {
    v41 = v43 << -v42;
  }

LABEL_39:
  *(a2 + 16) = v41;
  *(a1 + 60) = v39;
  v44 = *(a1 + 24);
  if (v44 == 7)
  {
    *(a1 + 64) = 0;
  }

  else
  {
    *(a1 + 64) = TBitstreamReader<unsigned int>::GetBit(a2);
    v44 = *(a1 + 24);
    if (v44 > 7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v91 = v7;
  v92 = v6;
  v90 = a3;
  v46 = &kBsTreeConfigurationTable + 28 * v44;
  v47 = *(v46 + 1);
  if (v47)
  {
    v48 = 0;
    v49 = *(v46 + 5);
    do
    {
      if ((v49 >> v48))
      {
        v50 = *(a2 + 16);
        v51 = v50 >> 27;
        v52 = *(a2 + 20) - 5;
        *(a2 + 20) = v52;
        if (v52 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v55 = *(a2 + 16);
          v54 = *(a2 + 20);
          v51 |= v55 >> v54;
          *(a2 + 20) = v54 + 32;
          if (v54 == -32)
          {
            v53 = 0;
          }

          else
          {
            v53 = v55 << -v54;
          }
        }

        else
        {
          v53 = 32 * v50;
        }

        *(a2 + 16) = v53;
      }

      else
      {
        v51 = kLDBsFreqResTable[*(a1 + 20)];
      }

      *(a1 + 76 + 4 * v48++) = v51;
    }

    while (v47 != v48);
  }

  v56 = *(v46 + 3);
  if (v56)
  {
    v57 = a1;
    do
    {
      v57[24] = TBitstreamReader<unsigned int>::GetBit(a2);
      v58 = *(a2 + 16);
      v59 = v58 >> 29;
      v60 = *(a2 + 20) - 3;
      *(a2 + 20) = v60;
      if (v60 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
        *a2 += 4;
        v63 = *(a2 + 16);
        v62 = *(a2 + 20);
        v59 |= v63 >> v62;
        *(a2 + 20) = v62 + 32;
        if (v62 == -32)
        {
          v61 = 0;
        }

        else
        {
          v61 = v63 << -v62;
        }
      }

      else
      {
        v61 = 8 * v58;
      }

      *(a2 + 16) = v61;
      v57[25] = v59;
      if (v57[24])
      {
        v64 = *(a2 + 16);
        v65 = v64 >> 29;
        v66 = *(a2 + 20) - 3;
        *(a2 + 20) = v66;
        if (v66 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v70 = *(a2 + 16);
          v69 = *(a2 + 20);
          v65 |= v70 >> v69;
          *(a2 + 20) = v69 + 32;
          if (v69 == -32)
          {
            v67 = 0;
          }

          else
          {
            v67 = v70 << -v69;
          }
        }

        else
        {
          v67 = 8 * v64;
        }

        *(a2 + 16) = v67;
        v57[26] = v65;
        v71 = *(a2 + 16);
        v72 = v71 >> 27;
        v73 = *(a2 + 20) - 5;
        *(a2 + 20) = v73;
        if (v73 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v76 = *(a2 + 16);
          v75 = *(a2 + 20);
          v72 |= v76 >> v75;
          *(a2 + 20) = v75 + 32;
          if (v75 == -32)
          {
            v74 = 0;
          }

          else
          {
            v74 = v76 << -v75;
          }
        }

        else
        {
          v74 = 32 * v71;
        }

        *(a2 + 16) = v74;
        v57[27] = v72;
        v68 = 28;
      }

      else
      {
        v68 = 27;
      }

      v57[v68] = kLDBsFreqResTable[*(a1 + 20)];
      ++v57;
      --v56;
    }

    while (v56);
  }

  if (*v38 == 2)
  {
    *(a1 + 68) = TBitstreamReader<unsigned int>::GetBit(a2);
  }

  v77 = *(a2 + 20);
  if (*(a1 + 64))
  {
    v78 = *(a2 + 16);
    v79 = v78 >> 30;
    v77 -= 2;
    *(a2 + 20) = v77;
    if (v77 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v82 = *(a2 + 16);
      v81 = *(a2 + 20);
      v79 |= v82 >> v81;
      v77 = v81 + 32;
      *(a2 + 20) = v81 + 32;
      v80 = v81 == -32 ? 0 : v82 << -v81;
    }

    else
    {
      v80 = 4 * v78;
    }

    *(a2 + 16) = v80;
    *(a1 + 72) = v79;
    if (!v79)
    {
      operator new();
    }
  }

  v83 = *a2;
  v84 = *(a2 + 8);
  v85 = *a2 - v84;
  if ((v77 & 7) != 0)
  {
    v86 = *(a2 + 16);
    v87 = v77 & 0xFFFFFFF8;
    *(a2 + 20) = v77 & 0xFFFFFFF8;
    if (v77 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, v83);
      v89 = *(a2 + 20);
      v83 = (*a2 + 4);
      *a2 = v83;
      v87 = v89 + 32;
      *(a2 + 20) = v89 + 32;
      if (v89 == -32)
      {
        v88 = 0;
      }

      else
      {
        v88 = *(a2 + 16) << -v89;
      }
    }

    else
    {
      v88 = v86 << (v77 & 7);
    }

    *(a2 + 16) = v88;
    v84 = *(a2 + 8);
  }

  else
  {
    v87 = v77;
  }

  MP4SpatialExtensionConfig::Deserialize(*(a1 + 128), a2, v46, v8 - v90 - v77 + v87 + 8 * (v85 + v92 - v91 + v84 - v83));
  result = 0;
  *(a1 + 136) = 1;
  return result;
}

void MP4LDSpatialSpecificConfig::~MP4LDSpatialSpecificConfig(MP4LDSpatialSpecificConfig *this)
{
  MP4SpatialAudioSpecificConfig::~MP4SpatialAudioSpecificConfig(this);

  JUMPOUT(0x193ADF220);
}

void MP4SpatialAudioSpecificConfig::MP4SpatialAudioSpecificConfig(MP4SpatialAudioSpecificConfig *this)
{
  *this = &unk_1F033B7E0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 136) = 0;
  operator new();
}

_BYTE *to_string@<X0>(const AudioTimeStamp *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  if (!a1)
  {
    return std::string::basic_string[abi:ne200100]<0>(a3, "NULL");
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "{ ", 2);
  mFlags = a1->mFlags;
  if ((a2 & mFlags & 2) == 0)
  {
    if ((a2 & mFlags & 1) == 0)
    {
      if ((a2 & mFlags & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }

    goto LABEL_15;
  }

  caulk::make_string("hostTime=%.6f", &__p, a1->mHostTime * 0.0000000416666667);
  if ((v17 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v17 & 0x80u) == 0)
  {
    v8 = v17;
  }

  else
  {
    v8 = v16;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, p_p, v8);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  v9 = a1->mFlags;
  if (a2 & v9)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, ", ", 2);
LABEL_15:
    caulk::make_string("sampleTime=%lld", &__p, a1->mSampleTime);
    if ((v17 & 0x80u) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v12 = v17;
    }

    else
    {
      v12 = v16;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v11, v12);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    v9 = a1->mFlags;
  }

  if ((a2 & v9 & 4) != 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, ", ", 2);
LABEL_26:
    caulk::make_string("rateScalar=%.6f", &__p, *&a1->mRateScalar);
    if ((v17 & 0x80u) == 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v14 = v17;
    }

    else
    {
      v14 = v16;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v13, v14);
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

  LOBYTE(__p) = 32;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &__p, 1);
LABEL_35:
  LOBYTE(__p) = 125;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, &__p, 1);
  std::ostringstream::str[abi:ne200100](a3, &v18);
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v22);
}

_BYTE *to_string@<X0>(const AudioChannelLayout *a1@<X0>, _BYTE *a2@<X8>)
{
  if (!a1)
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, "NULL");
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "{ ", 2);
  caulk::make_string("tag=0x%x", &__p, a1->mChannelLayoutTag);
  if ((v23 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v23 & 0x80u) == 0)
  {
    v5 = v23;
  }

  else
  {
    v5 = v22;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, p_p, v5);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (a1->mChannelLayoutTag)
  {
    if (a1->mChannelLayoutTag == 0x10000)
    {
      caulk::make_string(", channelBitmap=0x%x", &__p, a1->mChannelBitmap);
      v6 = (v23 & 0x80u) == 0 ? &__p : __p;
      v7 = (v23 & 0x80u) == 0 ? v23 : v22;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v6, v7);
      if (v23 < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    caulk::make_string(", numberDescs=%u, descs=[", &__p, a1->mNumberChannelDescriptions);
    if ((v23 & 0x80u) == 0)
    {
      v9 = &__p;
    }

    else
    {
      v9 = __p;
    }

    if ((v23 & 0x80u) == 0)
    {
      v10 = v23;
    }

    else
    {
      v10 = v22;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v9, v10);
    if (v23 < 0)
    {
      operator delete(__p);
    }

    if (a1->mNumberChannelDescriptions)
    {
      v11 = 0;
      mChannelDescriptions = a1->mChannelDescriptions;
      do
      {
        if (v11)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, ", ", 2);
        }

        outPropertyData = 0;
        ioPropertyDataSize = 8;
        if (AudioFormatGetProperty(0x63736E6Du, 0x14u, mChannelDescriptions, &ioPropertyDataSize, &outPropertyData))
        {
          MEMORY[0x193ADEE60](&v24, mChannelDescriptions->mChannelLabel);
        }

        else
        {
          v13 = outPropertyData;
          if (!outPropertyData)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          v14 = CFGetTypeID(outPropertyData);
          if (v14 != CFStringGetTypeID())
          {
            v18 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v18, "Could not construct");
          }

          applesauce::CF::convert_to<std::string,0>(&__p, v13);
          if ((v23 & 0x80u) == 0)
          {
            v15 = &__p;
          }

          else
          {
            v15 = __p;
          }

          if ((v23 & 0x80u) == 0)
          {
            v16 = v23;
          }

          else
          {
            v16 = v22;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v15, v16);
          if (v23 < 0)
          {
            operator delete(__p);
          }

          CFRelease(v13);
        }

        ++v11;
        ++mChannelDescriptions;
      }

      while (v11 < a1->mNumberChannelDescriptions);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "]", 1);
  }

  LOBYTE(__p) = 125;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, &__p, 1);
  std::ostringstream::str[abi:ne200100](a2, &v24);
  v24 = *MEMORY[0x1E69E54E8];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v25 = MEMORY[0x1E69E5548] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v28);
}

void sub_18F886544(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

_BYTE *to_string@<X0>(const AudioStreamPacketDescription *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (a1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "{ numberDescs=", 14);
    MEMORY[0x193ADEE70](&v21, a2);
    if (a2 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = a2;
    }

    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = a2;
    }

    if (v8)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, ", descs=[\n", 10);
      v9 = 0;
      p_mVariableFramesInPacket = &a1->mVariableFramesInPacket;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "  [", 3);
        v11 = MEMORY[0x193ADEE70](&v21, v9);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "] byte offsets ", 15);
        v13 = MEMORY[0x193ADEEA0](v12, *(p_mVariableFramesInPacket - 1));
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " - ", 3);
        v15 = MEMORY[0x193ADEEA0](v14, *(p_mVariableFramesInPacket - 1) + p_mVariableFramesInPacket[1]);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " (", 2);
        v17 = MEMORY[0x193ADEE60](v16, p_mVariableFramesInPacket[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ")", 1);
        if (*p_mVariableFramesInPacket)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "; ", 2);
          v18 = MEMORY[0x193ADEE60](&v21, *p_mVariableFramesInPacket);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " fr\n", 4);
        }

        else
        {
          v26[0] = 10;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v26, 1);
        }

        ++v9;
        p_mVariableFramesInPacket += 4;
      }

      while (v8 != v9);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "] }", 3);
    std::ostringstream::str[abi:ne200100](a4, &v21);
    v21 = *MEMORY[0x1E69E54E8];
    *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v22 = MEMORY[0x1E69E5548] + 16;
    if (v24 < 0)
    {
      operator delete(v23[7].__locale_);
    }

    v22 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v23);
    std::ostream::~ostream();
    return MEMORY[0x193ADF120](&v25);
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a4, "NULL");
  }
}

void sub_18F886898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

_BYTE *to_string@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (a1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "{ numberInfos=", 14);
    MEMORY[0x193ADEE70](&v23, a2);
    if (a2 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = a2;
    }

    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = a2;
    }

    if (v8)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, ", infos=[\n", 10);
      v9 = 0;
      v10 = (a1 + 8);
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "  [", 3);
        v11 = MEMORY[0x193ADEE70](&v23, v9);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "] isDep:", 8);
        v13 = MEMORY[0x193ADEE50](v12, *(v10 - 2));
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " preroll:", 9);
        v15 = MEMORY[0x193ADEE50](v14, *(v10 - 1));
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " flags:0x", 9);
        *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 8;
        v17 = *v10;
        v18 = MEMORY[0x193ADEE60]();
        *(v18 + *(*v18 - 24) + 8) = *(v18 + *(*v18 - 24) + 8) & 0xFFFFFFB5 | 2;
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " (reserved:", 11);
        v20 = MEMORY[0x193ADEE50](v19, v10[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ")\n", 2);
        ++v9;
        v10 += 4;
      }

      while (v8 != v9);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "] }", 3);
    std::ostringstream::str[abi:ne200100](a4, &v23);
    v23 = *MEMORY[0x1E69E54E8];
    *(&v23 + *(v23 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v24 = MEMORY[0x1E69E5548] + 16;
    if (v26 < 0)
    {
      operator delete(v25[7].__locale_);
    }

    v24 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v25);
    std::ostream::~ostream();
    return MEMORY[0x193ADF120](&v27);
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a4, "NULL");
  }
}

{
  if (a1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "{ number=", 9);
    MEMORY[0x193ADEE70](&v23, a2);
    if (a2 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = a2;
    }

    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = a2;
    }

    if (v8)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, ", infos=[\n", 10);
      v9 = 0;
      v10 = (a1 + 8);
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "  [", 3);
        v11 = MEMORY[0x193ADEE70](&v23, v9);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "] isIndep:", 10);
        v13 = MEMORY[0x193ADEE50](v12, *(v10 - 2));
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " preroll:", 9);
        v15 = MEMORY[0x193ADEE50](v14, *(v10 - 1));
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " flags:0x", 9);
        *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 8;
        v17 = *v10;
        v18 = MEMORY[0x193ADEE60]();
        *(v18 + *(*v18 - 24) + 8) = *(v18 + *(*v18 - 24) + 8) & 0xFFFFFFB5 | 2;
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " (reserved:", 11);
        v20 = MEMORY[0x193ADEE50](v19, v10[1]);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ")\n", 2);
        ++v9;
        v10 += 4;
      }

      while (v8 != v9);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "] }", 3);
    std::ostringstream::str[abi:ne200100](a4, &v23);
    v23 = *MEMORY[0x1E69E54E8];
    *(&v23 + *(v23 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v24 = MEMORY[0x1E69E5548] + 16;
    if (v26 < 0)
    {
      operator delete(v25[7].__locale_);
    }

    v24 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v25);
    std::ostream::~ostream();
    return MEMORY[0x193ADF120](&v27);
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a4, "NULL");
  }
}

void sub_18F886BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_18F886EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void to_string(const AudioClassDescription *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  mType = a1->mType;
  v5 = bswap32(mType);
  LODWORD(v16.__r_.__value_.__l.__data_) = v5;
  if ((v5 - 32) > 0x5E || ((v5 >> 8) - 32) > 0x5E || ((v5 << 8 >> 24) - 32) > 0x5E || ((v5 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v14, mType);
  }

  else
  {
    v16.__r_.__value_.__s.__data_[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v14, &v16);
  }

  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v14;
  }

  else
  {
    v6 = v14.__r_.__value_.__r.__words[0];
  }

  mSubType = a1->mSubType;
  v8 = bswap32(mSubType);
  LODWORD(v15.__r_.__value_.__l.__data_) = v8;
  if ((v8 - 32) > 0x5E || ((v8 >> 8) - 32) > 0x5E || ((v8 << 8 >> 24) - 32) > 0x5E || ((v8 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v16, mSubType);
  }

  else
  {
    v15.__r_.__value_.__s.__data_[4] = 0;
    std::string::basic_string[abi:ne200100]<0>(&v16, &v15);
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v16;
  }

  else
  {
    v9 = v16.__r_.__value_.__r.__words[0];
  }

  mManufacturer = a1->mManufacturer;
  v11 = bswap32(mManufacturer);
  *__s = v11;
  if ((v11 - 32) > 0x5E || ((v11 >> 8) - 32) > 0x5E || ((v11 << 8 >> 24) - 32) > 0x5E || ((v11 >> 24) - 32) > 0x5E)
  {
    std::to_string(&v15, mManufacturer);
  }

  else
  {
    v18 = 0;
    std::string::basic_string[abi:ne200100]<0>(&v15, __s);
  }

  v12 = &v15;
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v15.__r_.__value_.__r.__words[0];
  }

  caulk::make_string("%s/%s/%s", a2, v6, v9, v12);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_18F887124(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void to_string(const AudioClassDescription *a1@<X0>, std::string *a2@<X8>)
{
  to_string(a1, a2);
  if (*&a1[1].mType)
  {
    caulk::make_string("/0x%x/0x%x", __p, a1[1].mType, a1[1].mSubType);
    if ((v7 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v7 & 0x80u) == 0)
    {
      v5 = v7;
    }

    else
    {
      v5 = __p[1];
    }

    std::string::append(a2, v4, v5);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_18F8871C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(exception_object);
}

void CAObjectDescription(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0;
  v3 = CACopyObjectDescription(a1, &v5);
  if (v3)
  {
    v4 = v3;
    std::string::basic_string[abi:ne200100]<0>(a2, v3);
    free(v4);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

uint64_t to_string@<X0>(const AudioBufferList *a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v3 = MEMORY[0x193ADEE60](&v15, a1->mNumberBuffers);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " buffer", 7);
  if (a1->mNumberBuffers <= 1)
  {
    v5 = ": ";
  }

  else
  {
    v5 = "s: ";
  }

  if (a1->mNumberBuffers <= 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  if (a1->mNumberBuffers)
  {
    v7 = 0;
    p_mData = &a1->mBuffers[0].mData;
    do
    {
      if (v7)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "; ", 2);
      }

      v9 = MEMORY[0x193ADEE30](&v15, *p_mData);
      v20[0] = 45;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v20, 1);
      v10 = *(p_mData - 1);
      v11 = strlen(*p_mData + v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, *p_mData + v10, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " (", 2);
      v12 = MEMORY[0x193ADEE60](v9, *(p_mData - 1));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
      ++v7;
      p_mData += 2;
    }

    while (v7 < a1->mNumberBuffers);
  }

  std::ostringstream::str[abi:ne200100](a2, &v15);
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v19);
}

void sub_18F8874A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void to_string(const AudioBufferList *a1@<X0>, AudioStreamBasicDescription *a2@<X2>, const char *a3@<X3>, unint64_t a4@<X1>, int a5@<W4>, _BYTE *a6@<X8>)
{
  AudioFormatString(&v26, a2);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  mBytesPerFrame = v26.mBytesPerFrame;
  if ((v26.mFramesPerPacket & 0x80000000) == 0)
  {
    mSampleRate = COERCE_DOUBLE(&v26);
  }

  else
  {
    mSampleRate = v26.mSampleRate;
  }

  if (!a3)
  {
    a3 = "AudioBufferList";
  }

  v12 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, a3, v12);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "@", 1);
  v13 = MEMORY[0x193ADEE30](&v21, a1);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " (", 2);
  v15 = MEMORY[0x193ADEE70](v14, a4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " fr", 3);
  if (mSampleRate != 0.0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, ", ", 2);
    v16 = strlen(*&mSampleRate);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, *&mSampleRate, v16);
  }

  if (a1->mNumberBuffers)
  {
    v17 = 0;
    mBuffers = a1->mBuffers;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "    [", 5);
      *(&v23[1].__locale_ + *(v21 - 24)) = 2;
      v19 = MEMORY[0x193ADEE60](&v21, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "] ", 2);
      DumpAudioBuffer(&v21, &mBuffers->mNumberChannels, a4, mBytesPerFrame, a5);
      ++v17;
      ++mBuffers;
    }

    while (v17 < a1->mNumberBuffers);
  }

  std::ostringstream::str[abi:ne200100](a6, &v21);
  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  MEMORY[0x193ADF120](&v25);
  if (SHIBYTE(v26.mFramesPerPacket) < 0)
  {
    operator delete(*&v26.mSampleRate);
  }
}

void sub_18F887798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 97) < 0)
  {
    operator delete(*(v11 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioFormatString(const AudioStreamBasicDescription *a1, _DWORD *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  if (a2[2] != 1819304813)
  {
    goto LABEL_10;
  }

  v4 = a2[3];
  if (v4)
  {
    if (a2[8] == 32)
    {
      if ((v4 & 2) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "BEF", 3);
        v7 = 10;
      }

      else
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "LEF", 3);
        v7 = -10;
      }

      goto LABEL_11;
    }

LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  v5 = a2[6];
  if (!v5)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_11;
  }

  if ((v4 & 0x20) != 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2[7];
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v7 = v5 / v6;
  if ((v5 / v6) >= 1)
  {
    v9 = (v4 >> 7) & 0x3F;
    v10 = a2[8];
    if (v9)
    {
      v11 = MEMORY[0x193ADEE60](&v15, (v10 - v9));
      LOBYTE(v13) = 46;
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, &v13, 1);
      MEMORY[0x193ADEE50](v12, v9);
    }

    else
    {
      MEMORY[0x193ADEE60](&v15, v10);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "-bit", 4);
    if ((a2[3] & 2) != 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " BEI", 4);
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " LEI", 4);
      v7 = -v7;
    }
  }

LABEL_11:
  std::ostringstream::str[abi:ne200100](&v13, &v15);
  *&a1->mSampleRate = v13;
  *&a1->mBytesPerPacket = v14;
  a1->mBytesPerFrame = v7;
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v19);
}

void sub_18F887A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *DumpAudioBuffer(void *a1, unsigned int *a2, unint64_t a3, int a4, int a5)
{
  v10 = MEMORY[0x193ADEE60](a1, a2[1]);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " bytes ", 7);
  v12 = MEMORY[0x193ADEE60](v11, *a2);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ch @ ", 5);
  MEMORY[0x193ADEE30](v13, *(a2 + 1));
  if (a3 && *(a2 + 1))
  {
    if (a3 >= 8)
    {
      a3 = 8;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ":", 1);
    v14 = a3 * *a2;
    if (v14)
    {
      v15 = a1 + 3;
      v16 = a1 + 2;
      v17 = *(a2 + 1);
      v18 = a1 + 1;
      do
      {
        if (a4 < 0)
        {
          if (a4 <= -4)
          {
            if (a4 == -10)
            {
LABEL_27:
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
              v35 = *a1;
              *(v15 + *(*a1 - 24)) = 6;
              *(v16 + *(v35 - 24)) = 3;
              v36 = *v17;
              v17 += 4;
              goto LABEL_28;
            }

            if (a4 == -4)
            {
              v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
              *(v18 + *(*a1 - 24)) = *(v18 + *(*a1 - 24)) & 0xFFFFFFB5 | 8;
              v32 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v31, 48);
              *(v15 + *(*a1 - 24)) = 8;
              v34 = *v17;
              v17 += 4;
              v33 = v34;
LABEL_33:
              MEMORY[0x193ADEE60](v32, v33);
            }
          }

          else
          {
            switch(a4)
            {
              case -3:
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
                v43 = (*a1 - 24);
                v42 = *v43;
                v44 = *(v18 + *v43) & 0xFFFFFFB5;
                if (a5)
                {
                  *(v18 + v42) = v44 | 8;
                  std::operator<<[abi:ne200100]<std::char_traits<char>>(a1, 48);
                  v43 = (*a1 - 24);
                  v45 = 6;
                }

                else
                {
                  *(v18 + v42) = v44 | 2;
                  v45 = 8;
                }

                *(v15 + *v43) = v45;
                v51 = (v17[2] << 16) | (v17[1] << 8);
                v52 = *v17;
                goto LABEL_48;
              case -2:
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
                v37 = *a1;
                v38 = *(*a1 - 24);
                v39 = *(v18 + v38) & 0xFFFFFFB5;
                if (a5)
                {
                  *(v18 + v38) = v39 | 8;
                  v22 = std::operator<<[abi:ne200100]<std::char_traits<char>>(a1, 48);
                  *(v15 + *(*a1 - 24)) = 4;
                  v23 = *v17;
LABEL_31:
                  MEMORY[0x193ADEE90](v22, v23);
LABEL_45:
                  v17 += 2;
                  break;
                }

                *(v18 + v38) = v39 | 2;
                *(v15 + *(v37 - 24)) = 6;
                v50 = *v17;
LABEL_44:
                MEMORY[0x193ADEE80](a1, v50);
                goto LABEL_45;
              case -1:
LABEL_18:
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
                v24 = *a1;
                v25 = *(*a1 - 24);
                v26 = *(v18 + v25) & 0xFFFFFFB5;
                if (a5)
                {
                  *(v18 + v25) = v26 | 8;
                  v27 = std::operator<<[abi:ne200100]<std::char_traits<char>>(a1, 48);
                  *(v15 + *(*a1 - 24)) = 2;
                  v54 = *v17;
                  v28 = &v54;
                }

                else
                {
                  *(v18 + v25) = v26 | 2;
                  *(v15 + *(v24 - 24)) = 4;
                  v55 = *v17;
                  v28 = &v55;
                  v27 = a1;
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, 1);
                ++v17;
                break;
            }
          }
        }

        else if (a4 > 2)
        {
          switch(a4)
          {
            case 3:
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
              v47 = (*a1 - 24);
              v46 = *v47;
              v48 = *(v18 + *v47) & 0xFFFFFFB5;
              if (a5)
              {
                *(v18 + v46) = v48 | 8;
                std::operator<<[abi:ne200100]<std::char_traits<char>>(a1, 48);
                v47 = (*a1 - 24);
                v49 = 6;
              }

              else
              {
                *(v18 + v46) = v48 | 2;
                v49 = 8;
              }

              *(v15 + *v47) = v49;
              v51 = (*v17 << 16) | (v17[1] << 8);
              v52 = v17[2];
LABEL_48:
              MEMORY[0x193ADEE50](a1, v51 | v52);
              v17 += 3;
              break;
            case 4:
              v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
              *(v18 + *(*a1 - 24)) = *(v18 + *(*a1 - 24)) & 0xFFFFFFB5 | 8;
              v32 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v40, 48);
              *(v15 + *(*a1 - 24)) = 8;
              v41 = *v17;
              v17 += 4;
              v33 = bswap32(v41);
              goto LABEL_33;
            case 10:
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
              v29 = *a1;
              *(v15 + *(*a1 - 24)) = 6;
              *(v16 + *(v29 - 24)) = 3;
              v30 = *v17;
              v17 += 4;
LABEL_28:
              std::ostream::operator<<();
              break;
          }
        }

        else
        {
          switch(a4)
          {
            case 0:
              goto LABEL_27;
            case 1:
              goto LABEL_18;
            case 2:
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
              v19 = *a1;
              v20 = *(*a1 - 24);
              v21 = *(v18 + v20) & 0xFFFFFFB5;
              if (a5)
              {
                *(v18 + v20) = v21 | 8;
                v22 = std::operator<<[abi:ne200100]<std::char_traits<char>>(a1, 48);
                *(v15 + *(*a1 - 24)) = 4;
                v23 = bswap32(*v17) >> 16;
                goto LABEL_31;
              }

              *(v18 + v20) = v21 | 2;
              *(v15 + *(v19 - 24)) = 6;
              v50 = (bswap32(*v17) >> 16);
              goto LABEL_44;
          }
        }

        --v14;
      }

      while (v14);
    }
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n", 1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char a2)
{
  v4 = a1 + *(*a1 - 24);
  if (*(v4 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v4 + 36) = v6;
  }

  *(v4 + 36) = a2;
  return a1;
}

uint64_t to_string@<X0>(const AudioBufferList *a1@<X0>, const AudioStreamBasicDescription *a2@<X2>, const char *a3@<X3>, unint64_t a4@<X1>, int a5@<W4>, _BYTE *a6@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&__p.mBitsPerChannel);
  if (!a3)
  {
    a3 = "AudioBufferList";
  }

  v9 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.mBitsPerChannel, a3, v9);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.mBitsPerChannel, "@", 1);
  v10 = MEMORY[0x193ADEE30](&__p.mBitsPerChannel, a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ":\n", 2);
  if (a4)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v33 = v13;
      v14 = &a2[v11];
      if ((v14->mFormatFlags & 0x20) == 0)
      {
        break;
      }

      mChannelsPerFrame = v14->mChannelsPerFrame;
      if (mChannelsPerFrame)
      {
        goto LABEL_8;
      }

LABEL_22:
      v12 += mChannelsPerFrame;
      v11 = (v33 + 1);
      v13 = v33 + 1;
      if (v11 >= a4)
      {
        goto LABEL_23;
      }
    }

    mChannelsPerFrame = 1;
LABEL_8:
    v16 = 0;
    v17 = v12;
    v32 = v12;
    v18 = &a1->mBuffers[v12];
    do
    {
      if (v17 + v16 >= a1->mNumberBuffers)
      {
        break;
      }

      AudioFormatString(&__p, v14);
      mBytesPerFrame = v14->mBytesPerFrame;
      if (!mBytesPerFrame)
      {
        mBytesPerFrame = v14->mBytesPerPacket;
        __p.mBytesPerFrame = 4;
      }

      mDataByteSize = v18->mDataByteSize;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.mBitsPerChannel, "    [", 5);
      *(&v36[1].__locale_ + *(*&__p.mBitsPerChannel - 24)) = 2;
      v21 = MEMORY[0x193ADEE60](&__p.mBitsPerChannel, v16);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "] ", 2);
      *(v22 + *(*v22 - 24) + 24) = 12;
      if ((__p.mFramesPerPacket & 0x80000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = *&__p.mSampleRate;
      }

      if ((__p.mFramesPerPacket & 0x80000000) == 0)
      {
        mFramesPerPacket_high = HIBYTE(__p.mFramesPerPacket);
      }

      else
      {
        mFramesPerPacket_high = *&__p.mFormatID;
      }

      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, p_p, mFramesPerPacket_high);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " ", 1);
      *(v26 + *(*v26 - 24) + 24) = 5;
      v27 = MEMORY[0x193ADEE70]();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "fr ", 3);
      DumpAudioBuffer(&__p.mBitsPerChannel, &v18->mNumberChannels, mDataByteSize / mBytesPerFrame, __p.mBytesPerFrame, a5);
      if (SHIBYTE(__p.mFramesPerPacket) < 0)
      {
        operator delete(*&__p.mSampleRate);
      }

      ++v16;
      ++v18;
    }

    while (mChannelsPerFrame != v16);
    v12 = v32;
    goto LABEL_22;
  }

LABEL_23:
  std::ostringstream::str[abi:ne200100](a6, &__p.mBitsPerChannel);
  *&__p.mBitsPerChannel = *MEMORY[0x1E69E54E8];
  *(&__p.mBitsPerChannel + *(*&__p.mBitsPerChannel - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v35 = MEMORY[0x1E69E5548] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v36);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v38);
}

uint64_t to_string@<X0>(const float *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  v17[0] = 124;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v17, 1);
  if (a3)
  {
    v7 = 0;
    do
    {
      for (i = a2; i; --i)
      {
        v17[0] = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v17, 1);
        *(&v14[0].__locale_ + *(v12 - 24)) = 3;
        v9 = *a1;
        std::ostream::operator<<();
        ++a1;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "| ", 2);
      ++v7;
    }

    while (v7 != a3);
  }

  std::ostringstream::str[abi:ne200100](a4, &v12);
  v12 = *MEMORY[0x1E69E54E8];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v16);
}

void sub_18F8887B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void AUScopeElementString(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 | a1)
  {
    if (a1 > 5)
    {
      caulk::make_string("scope %d, element %d", a3, a1, a2);
    }

    else
    {
      caulk::make_string("%s scope, element %d", a3, CAAUScopeElementFormatter::CAAUScopeElementFormatter(unsigned int,unsigned int)::scopeNames[a1], a2);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "Global scope");
  }
}

uint64_t LOASAudioFile::ScanForPackets(LOASAudioFile *this, uint64_t a2, DataSource *a3, char a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v54.mStartOffset = 0;
  *&v54.mVariableFramesInPacket = 0;
  v52 = 0;
  if (*(this + 312))
  {
    goto LABEL_8;
  }

  v5 = a3;
  if (!a3)
  {
    v5 = *(this + 13);
  }

  v8 = *(this + 15);
  if (!v8)
  {
    operator new();
  }

  v9 = *(v8 + 24);
  if (a2 != -1 && v9 >= a2)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v53 = 0;
  v10 = (*(*v5 + 24))(v5, &v52);
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "LOASAudioFile.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 940;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  GetSize failed", buf, 0x12u);
    }
  }

  else
  {
    if (v9)
    {
      v13 = *(this + 9);
      CompressedPacketTable::operator[](buf, v8, v9 - 1);
      v14 = *buf;
      CompressedPacketTable::operator[](&v45, v8, v9 - 1);
      v15 = v14 + v13 + HIDWORD(v46);
    }

    else
    {
      (*(*this + 656))(this, 0);
      v15 = *(this + 9);
    }

    if (a2 == -1)
    {
      v17 = -1;
    }

    else
    {
      v16 = *(this + 15);
      if (v16)
      {
        v16 = *(v16 + 24);
      }

      v17 = a2 - v16;
    }

    if (v15 >= v52)
    {
      v10 = 0;
LABEL_72:
      *(this + 312) = a4;
    }

    else
    {
      while (1)
      {
        v51 = 0;
        v18 = (*(*v5 + 48))(v5, 0, v15, 10, v59, &v53);
        v10 = v18;
        v20 = v18 == -39 || v18 == 0;
        v21 = v20 && v53 >= 3;
        if (!v21)
        {
          break;
        }

        if (MP4::LOASHeader::IsLOASSyncWord(v59, 3, &v51, v19))
        {
          v23 = v15 - *(this + 9);
          v54.mStartOffset = v23;
          v24 = v51;
          v54.mDataByteSize = v51;
          if (v24 > (*(*this + 640))(this))
          {
            (*(*this + 656))(this, v24);
          }

          v15 += v24;
          if (v15 > v52)
          {
            goto LABEL_75;
          }

          AudioFileObject::AppendPacket(this, &v54);
          if ((*(*this + 280))(this))
          {
            v25 = *(this + 24);
            v26 = *(this + 25) - v25;
            if (v24 > v26)
            {
              std::vector<unsigned char>::__append(this + 8, v24 - v26);
              v25 = *(this + 24);
            }

            v27 = (*(*v5 + 48))(v5, 0, *(this + 9) + v23, v24, v25, &v53);
            v10 = v27;
            if (v27 && v27 != -39 || v53 < v24)
            {
              break;
            }

            *buf = 0;
            *&buf[4] = 1;
            *&buf[8] = 0;
            *&buf[15] = 0;
            v56 = 0;
            v58 = 0;
            v57 = 0;
            v28 = *(this + 24);
            v29 = v28 + v24;
            v49[0] = v28;
            v49[1] = v28 + v24;
            v50 = 0;
            if ((v28 & 3) != 0 && v24)
            {
              v30 = 0;
              v31 = v28 + 1;
              v32 = -8;
              v33 = v31;
              do
              {
                LODWORD(v50) = v30 << 8;
                HIDWORD(v50) = v32 + 16;
                v49[0] = v33;
                v34 = *(v33 - 1) | (v30 << 8);
                LODWORD(v50) = v34;
                v32 += 8;
                if ((v31 & 3) == 0)
                {
                  break;
                }

                LOBYTE(v31) = v31 + 1;
                v30 = v34;
                v21 = v33++ >= v29;
              }

              while (!v21);
              LODWORD(v50) = v34 << (24 - v32);
            }

            if (!MP4::LOASHeader::Deserialize(buf, v49))
            {
              if (!(*(*this + 280))(this) || (v35 = *(this + 38)) == 0)
              {
                v10 = 1718449215;
                goto LABEL_9;
              }

              v36 = *(this + 24);
              v45 = v36;
              v46 = v36;
              v47 = &v36[v24];
              v48 = 0;
              if ((v36 & 3) != 0)
              {
                v37 = 0;
                v38 = 0;
                v39 = v36 + 1;
                v40 = v36;
                do
                {
                  if (v40 >= &v36[v24])
                  {
                    v41 = 255;
                  }

                  else
                  {
                    v41 = *v40;
                  }

                  v37 = v41 | (v37 << 8);
                  ++v40;
                  v38 += 8;
                  v20 = (v39++ & 3) == 0;
                }

                while (!v20);
                v45 = &v36[((v36 ^ 3) & 3) + 1];
                LODWORD(v48) = v37 << ((8 * ((v36 ^ 3) & 3)) ^ 0x18);
                HIDWORD(v48) = v38;
              }

              v44[0] = 0;
              v44[1] = 0;
              AT::TBitstreamReader<unsigned int>::SkipBits(&v45, HIDWORD(v58) + 24);
              PacketDependencyParser::PacketDependency(v35, &v45, v44);
              if (LODWORD(v44[0]))
              {
                v42 = v9;
                if (HIDWORD(v44[0]))
                {
                  v43 = xmmword_18F901C70;
                  WORD4(v43) = WORD2(v44[0]);
                  SampleToRollDistanceTable::append_entry(this + 216, &v42);
                }

                else
                {
                  SyncSampleTable::append_entry(this + 272, &v42);
                }
              }
            }
          }

          if (v17 == -1)
          {
            v17 = -1;
          }

          else
          {
            --v17;
          }

          if (!v17)
          {
            break;
          }

          ++v9;
        }

        else
        {
          v22 = ID3Size(v53, v59, buf);
          if (!v22)
          {
            v10 = 4294967256;
            break;
          }

          v15 += v22;
        }

        if (v15 >= v52)
        {
          goto LABEL_72;
        }
      }
    }
  }

  if ((v10 & 0xFFFFFFFE) == 0xFFFFFFD8)
  {
    if (v10 == -39)
    {
LABEL_75:
      v10 = 0;
      *(this + 312) = a4;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void SyncSampleTable::append_entry(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v5 >= v4)
  {
    v7 = *(a1 + 8);
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](v12);
    }

    v13 = v9;
    v14 = (8 * v9);
    v15 = *a2;
    v16 = &v14[-v13];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
    *(a1 + 16) = v6;
    *(a1 + 24) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  *(a1 + 16) = v6;
  *a1 = 1;
}

uint64_t LOASAudioFile::GetPacketSizeUpperBound(LOASAudioFile *this)
{
  v12 = 0;
  v2 = *(this + 40);
  *&v10.mSampleRate = *(this + 24);
  *&v10.mBytesPerPacket = v2;
  *&v10.mBitsPerChannel = *(this + 7);
  inAudioConverter = 0;
  v9.mSampleRate = v10.mSampleRate;
  *&v9.mFormatID = xmmword_18F9017F0;
  v9.mBytesPerFrame = 4;
  v9.mChannelsPerFrame = HIDWORD(v2);
  *&v9.mBitsPerChannel = 32;
  v3 = AudioConverterNewWithOptions(&v10, &v9, 0, &inAudioConverter);
  v4 = inAudioConverter;
  if (!inAudioConverter)
  {
    return (*(this + 13) << 10);
  }

  v5 = *(this + 21);
  v6 = *(this + 22);
  if (v5 != v6)
  {
    LODWORD(v18) = 1684891491;
    v20 = v6 - v5;
    v19 = v5;
    v13 = &v18;
    v14 = &v20;
    v15 = &v19;
    v16 = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
    v17 = &v13;
    v3 = with_resolved(inAudioConverter, &v16);
  }

  if (!v3)
  {
    v8 = 4;
    v20 = 2020175987;
    v18 = &v12;
    v19 = &v8;
    v13 = &v20;
    v14 = &v19;
    v15 = &v18;
    v16 = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
    v17 = &v13;
    with_resolved(v4, &v16);
  }

  AudioConverterDispose(v4);
  result = v12;
  if (!v12)
  {
    return (*(this + 13) << 10);
  }

  return result;
}

uint64_t LOASAudioFile::FindMaximumPacketSize(LOASAudioFile *this)
{
  if ((*(this + 312) & 1) != 0 || !(*(*this + 696))(this, -1, 0, 1))
  {
    return *(this + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t IsSupportedLATMFormat(int a1)
{
  result = 1;
  if (a1 > 1634497331)
  {
    if (a1 > 1936487277)
    {
      if (a1 != 1936487278 && a1 != 1953986161)
      {
        v3 = 1970495843;
LABEL_14:
        if (a1 != v3)
        {
          return 0;
        }
      }
    }

    else if (a1 != 1634497332 && a1 != 1836069684)
    {
      v3 = 1936487267;
      goto LABEL_14;
    }
  }

  else if (((a1 - 1633772389) > 0xE || ((1 << (a1 - 101)) & 0x488F) == 0) && (a1 - 778924081) >= 2)
  {
    v3 = 1633772320;
    goto LABEL_14;
  }

  return result;
}

uint64_t LOASAudioFile::GetEstimatedDuration(LOASAudioFile *this, double *a2)
{
  v4 = *(this + 3);
  v5 = *(this + 11);
  if (*(this + 312) == 1)
  {
    if (v5)
    {
      v6 = ((*(*this + 248))(this) * v5) / v4;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = 0;
LABEL_8:
    *a2 = v6;
    return v7;
  }

  *a2 = 0.0;
  if ((*(*this + 696))(this, 16, 0, 1))
  {
    return 0;
  }

  v9 = *(this + 15);
  if (!v9)
  {
    operator new();
  }

  v21 = 0;
  v7 = (*(**(this + 13) + 24))(*(this + 13), &v21);
  if (!v7)
  {
    v21 -= *(this + 9);
    v10 = *(this + 15);
    if (v10)
    {
      v10 = *(v10 + 24);
    }

    v11 = v10 - 1;
    v12 = v10 >> 1;
    if (v12 >= 8)
    {
      v13 = 8;
    }

    else
    {
      v13 = v12;
    }

    v14 = v11 - v13;
    CompressedPacketTable::operator[](v20, v9, v11);
    v15 = v20[0];
    CompressedPacketTable::operator[](v18, v9, v11);
    v16 = v15 + v19;
    CompressedPacketTable::operator[](v17, v9, v13);
    v6 = v21 / (v16 - v17[0]) * (v14 * v5) / v4;
    goto LABEL_8;
  }

  return v7;
}

uint64_t LOASAudioFile::GetInfoDictionary(LOASAudioFile *this, CACFDictionary *a2)
{
  v5 = 0.0;
  v3 = (*(*this + 552))(this, &v5);
  if (v3)
  {
    return 1886681407;
  }

  AudioFileObject::AddDurationToInfoDictionary(v3, a2, &v5);
  return 0;
}

uint64_t LOASAudioFile::GetChannelLayout(LOASAudioFile *this, unsigned int *a2, AudioChannelLayout *a3)
{
  result = 561211770;
  if (a2)
  {
    LODWORD(v5) = *a2;
    if (*a2 >= 0xC)
    {
      if (v5 >= 0x20)
      {
        v5 = 32;
      }

      else
      {
        v5 = v5;
      }

      *a2 = v5;
      if (a3)
      {
        bzero(a3, v5);
        result = 0;
        a3->mChannelLayoutTag = *(this + 35);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t LOASAudioFile::GetChannelLayoutSize(LOASAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 32;
  }

  return 0;
}

uint64_t LOASAudioFile::SetMagicCookieData(LOASAudioFile *this, unsigned int a2, char *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v20[2] = 0;
  v22 = 0;
  v23 = 0;
  v24[2] = 0;
  MP4AudioProgramConfig::Clear(v24);
  v26 = 0u;
  v25 = 0u;
  DecoderConfigDescr::cleanup(v20);
  bzero(v19, 0x5F0uLL);
  v17[0] = a3;
  v17[1] = &a3[a2];
  v18 = 0;
  if ((a3 & 3) != 0 && a2)
  {
    v6 = 0;
    v7 = a3 + 1;
    v8 = -8;
    v9 = a3;
    do
    {
      v10 = v8;
      v11 = *v9++;
      v6 = v11 | (v6 << 8);
      v8 += 8;
      if ((v7 & 3) == 0)
      {
        break;
      }

      ++v7;
    }

    while (v9 < &a3[a2]);
    v17[0] = v9;
    LODWORD(v18) = v6 << (24 - v8);
    HIDWORD(v18) = v10 + 16;
  }

  v16 = 0;
  if (MP4AudioESDS::Deserialize(v19, v17, &v16, 2))
  {
    v12 = 1718449215;
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 21, a3, &a3[a2], a2);
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 18, &a3[v16], &a3[v16 + v21], v21);
    v13 = *(this + 38);
    if (v13)
    {
      MEMORY[0x193ADF220](v13, 0x1000C403E1C8BA9);
      *(this + 38) = 0;
    }

    if ((*(*this + 280))(this))
    {
      operator new();
    }

    v12 = 0;
  }

  if (*(&v26 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
  }

  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_18F8897A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  MEMORY[0x193ADF220](v6, 0x1000C403E1C8BA9);
  MP4AudioESDS::~MP4AudioESDS(va);
  _Unwind_Resume(a1);
}

uint64_t LOASAudioFile::GetMagicCookieData(LOASAudioFile *this, unsigned int *a2, void *__dst)
{
  result = 2003334207;
  if (__dst)
  {
    v6 = *(this + 168);
    v7 = *(this + 22);
    v8 = *(this + 21);
    if (v8 != v7)
    {
      result = 561211770;
      if (a2)
      {
        v9 = v7 - v8;
        if (v9 <= *a2)
        {
          memmove(__dst, v8, v9);
          result = 0;
          *a2 = *(this + 44) - *(this + 42);
        }
      }
    }
  }

  return result;
}

uint64_t LOASAudioFile::GetMagicCookieDataSize(LOASAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = *(this + 100) & 2;
  }

  if (a2)
  {
    *a2 = *(this + 44) - *(this + 42);
  }

  return 0;
}

uint64_t LOASAudioFile::PacketToDependencyInfo(LOASAudioFile *this, AudioPacketDependencyInfoTranslation *a2)
{
  if ((*(*this + 280))(this))
  {
    (*(*this + 696))(this, a2->mPacket + 1, 0, 1);

    return PacketToDependencyInfoForRestrictedRandomAccess(a2, (this + 216), (this + 272));
  }

  else
  {
    AudioFileObject::PacketToDependencyInfo(this, a2);
    return 0;
  }
}

uint64_t LOASAudioFile::ScanForIndependentPacket(uint64_t a1, int a2, AudioIndependentPacketTranslation *a3)
{
  if ((*(*a1 + 280))(a1))
  {
    (*(*a1 + 696))(a1, a3->mPacket + 2, 0, 1);
    if (a2 == 1)
    {
      v6 = *(a1 + 120);
      if (v6)
      {
        v7 = *(v6 + 24);
      }

      else
      {
        v7 = 0;
      }

      while (1)
      {
        result = ScanForIndependentPacketWithRestrictedRandomAccess(1, a3, (a1 + 216), (a1 + 272));
        if (result)
        {
          break;
        }

        if (a3->mIndependentlyDecodablePacket == -1)
        {
          (*(*a1 + 696))(a1, v7 + 100, 0, 1);
          v9 = *(a1 + 120);
          if (v9)
          {
            v10 = *(v9 + 24);
            v11 = v10 > v7;
            v7 = v10;
            if (v11)
            {
              continue;
            }
          }
        }

        return 0;
      }
    }

    else
    {

      return ScanForIndependentPacketWithRestrictedRandomAccess(0, a3, (a1 + 216), (a1 + 272));
    }
  }

  else
  {

    return AudioFileObject::ScanForIndependentPacket(a1, a2, a3);
  }

  return result;
}

uint64_t LOASAudioFile::PacketToRollDistance(LOASAudioFile *this, AudioPacketRollDistanceTranslation *a2)
{
  a2->mRollDistance = 0;
  (*(*this + 696))(this, a2->mPacket + 1, 0, 1);
  if ((*(this + 272) & 1) == 0 && *(this + 216) != 1)
  {
    return 0;
  }

  return PacketToRollDistanceForRestrictedRandomAccess(a2, (this + 216), (this + 272));
}

uint64_t LOASAudioFile::GetNumPackets(LOASAudioFile *this)
{
  if (((*(this + 312) & 1) != 0 || !(*(*this + 696))(this, -1, 0, 1)) && (v2 = *(this + 15)) != 0)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t LOASAudioFile::GetNumBytes(LOASAudioFile *this)
{
  v3 = 0;
  (*(**(this + 13) + 24))(*(this + 13), &v3);
  return v3 - *(this + 9);
}

uint64_t LOASAudioFile::GetFormatList(LOASAudioFile *this, UInt32 *ioPropertyDataSize, AudioFormatListItem *outPropertyData)
{
  v6 = *(this + 3);
  v7 = *(this + 8);
  *v10 = *(this + 36);
  *&v10[12] = *(this + 3);
  memset(inSpecifier, 0, sizeof(inSpecifier));
  DWORD2(inSpecifier[0]) = v7;
  v8 = *(this + 21);
  v12 = 0;
  v13 = v8;
  v14 = *(this + 44) - v8;
  if (AudioFormatGetProperty(0x666C7374u, 0x38u, inSpecifier, ioPropertyDataSize, outPropertyData))
  {
    outPropertyData->mASBD.mSampleRate = v6;
    outPropertyData->mASBD.mFormatID = v7;
    *&outPropertyData->mASBD.mFormatFlags = *v10;
    *&outPropertyData->mASBD.mBytesPerFrame = *&v10[12];
    outPropertyData->mChannelLayoutTag = *(this + 35);
    *ioPropertyDataSize = 48;
  }

  return 0;
}

uint64_t LOASAudioFile::GetFormatListInfo(LOASAudioFile *this, UInt32 *outPropertyDataSize, unsigned int *a3)
{
  v5 = *(this + 8);
  memset(v8, 0, sizeof(v8));
  DWORD2(v8[0]) = v5;
  v6 = *(this + 21);
  v9 = 0;
  v10 = v6;
  v11 = *(this + 44) - v6;
  if (AudioFormatGetPropertyInfo(0x666C7374u, 0x38u, v8, outPropertyDataSize))
  {
    *outPropertyDataSize = 48;
    *a3 = 0;
  }

  return 0;
}

uint64_t LOASAudioFile::SetDataFormat(LOASAudioFile *this, AudioStreamBasicDescription *a2)
{
  v3 = AudioFileObject::SetDataFormat(this, a2);
  if (!v3 && (*(*this + 280))(this))
  {
    *(this + 272) = 1;
  }

  v4 = *(this + 38);
  if (v4)
  {
    MEMORY[0x193ADF220](v4, 0x1000C403E1C8BA9);
    *(this + 38) = 0;
  }

  v5 = *(this + 11);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *(this + 3);
  v7 = *(this + 40);
  v8 = 9.22337204e18 / v7 <= v6 || v7 <= 0.0;
  v9 = (v6 * v7);
  if (v8)
  {
    v9 = 0;
  }

  v10 = v9 / v5;
  if (!v10)
  {
LABEL_14:
    v10 = 215;
  }

  *(this + 41) = v10;
  return v3;
}

uint64_t LOASAudioFile::SetProperty(LOASAudioFile *this, int a2, int a3, uint64_t *a4)
{
  if (a2 != 1919116903)
  {
    return AudioFileObject::SetProperty(this, a2, a3, a4);
  }

  if (a3 != 8)
  {
    return 561211770;
  }

  v4 = *a4;
  *(this + 40) = *a4;
  v5 = *(this + 11);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(this + 3);
  v7 = 9.22337204e18 / v4 <= v6 || v4 <= 0.0;
  v8 = (v4 * v6);
  if (v7)
  {
    v8 = 0;
  }

  v9 = v8 / v5;
  if (!v9)
  {
LABEL_11:
    v9 = 215;
  }

  v10 = 0;
  *(this + 41) = v9;
  return v10;
}

double LOASAudioFile::GetProperty(LOASAudioFile *this, int a2, unsigned int *a3, uint64_t *a4)
{
  if (a2 == 1919116903)
  {
    if (*a3 >= 8)
    {
      result = *(this + 40);
      *a4 = result;
      *a3 = 8;
    }
  }

  else
  {
    AudioFileObject::GetProperty(this, a2, a3, a4);
  }

  return result;
}

uint64_t LOASAudioFile::GetPropertyInfo(LOASAudioFile *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 != 1919116903)
  {
    return AudioFileObject::GetPropertyInfo(this, a2, a3, a4);
  }

  if (a3)
  {
    *a3 = 8;
  }

  if (a4)
  {
    *a4 = *(this + 100) & 2;
  }

  return 0;
}

uint64_t LOASAudioFile::WritePackets(LOASAudioFile *this, unsigned __int8 a2, unsigned int a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v85 = *MEMORY[0x1E69E9840];
  v80.mStartOffset = 0;
  *&v80.mVariableFramesInPacket = 0;
  v7 = *a6;
  if (!*a6)
  {
    v15 = 2003334207;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    *&buf[4] = "LOASAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 319;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d  WritePackets has no packets to write";
LABEL_19:
    v20 = buf;
    goto LABEL_20;
  }

  v8 = a4;
  if (!a4)
  {
    v15 = 2003334207;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    *&buf[4] = "LOASAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 321;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d  WritePackets has no packet descriptions";
    goto LABEL_19;
  }

  v11 = a5;
  v13 = *(this + 15);
  if (v13)
  {
    v14 = *(v13 + 24);
  }

  else
  {
    v14 = 0;
  }

  if (v14 != a5)
  {
    v15 = 1885563711;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    *&buf[4] = "LOASAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 324;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d  WritePackets: only appending is supported";
    goto LABEL_19;
  }

  v18 = *(this + 18);
  v19 = *(this + 19);
  if (v18 == v19)
  {
    v15 = 2003334207;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    *&buf[4] = "LOASAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 327;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d  WritePackets has no magic cookie from which to derive an AudioSpecificConfig to serialize; please refer to the headerdoc for kAudioFilePropertyMagicCookieData";
    goto LABEL_19;
  }

  if ((v19 - v18) >> 24)
  {
    v15 = 1718449215;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    *&buf[4] = "LOASAudioFile.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 328;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d  LATM can't accommodate an AudioSpecificConfig with a size requiring more than 3 bytes to store";
    goto LABEL_19;
  }

  if (!v13)
  {
    operator new();
  }

  v23 = 0;
  v24 = v7;
  p_mDataByteSize = &a4->mDataByteSize;
  do
  {
    v27 = *p_mDataByteSize;
    p_mDataByteSize += 4;
    v26 = v27;
    if (v27 > v23)
    {
      v23 = v26;
    }

    --v24;
  }

  while (v24);
  v28 = v23 + 18 + *(this + 38) - *(this + 36);
  v75 = (this + 192);
  if (*(this + 25) - *(this + 24) < v28)
  {
    std::vector<unsigned char>::resize(v75, v28);
    v7 = *a6;
  }

  if (!v7)
  {
    LODWORD(v29) = 0;
LABEL_92:
    v15 = 0;
    *a6 = v29;
    goto LABEL_21;
  }

  v73 = a7;
  v74 = v13;
  v29 = 0;
  v70 = a7 + 1;
  v71 = v8;
  v72 = v11;
  while (1)
  {
    v30 = &v8[v29];
    mStartOffset = v30->mStartOffset;
    mDataByteSize = v30->mDataByteSize;
    v79[0] = 0;
    v79[1] = 0;
    v78 = 0;
    v33 = v29 + v11;
    v77 = v29 + v11;
    if (v29 + v11)
    {
      v34 = *(this + 15);
      if (v34)
      {
        v35 = *(v34 + 24) - 1;
      }

      else
      {
        v35 = -1;
      }

      CompressedPacketTable::operator[](buf, v74, v35);
      v36 = *(this + 15);
      if (v36)
      {
        v37 = *(v36 + 24) - 1;
      }

      else
      {
        v37 = -1;
      }

      v38 = *buf;
      CompressedPacketTable::operator[](v84, v74, v37);
      v33 = v38 + *&v84[12];
    }

    v39 = v33;
    v80.mStartOffset = v33;
    v40 = &v73[mStartOffset];
    if ((*(*this + 280))(this) && (v41 = *(this + 38)) != 0)
    {
      *buf = &v73[mStartOffset];
      *&buf[8] = &v73[mStartOffset];
      *&buf[16] = &v40[mDataByteSize];
      v82 = 0;
      if ((v40 & 3) != 0)
      {
        v42 = 0;
        v43 = &v70[mStartOffset];
        v44 = -8;
        v45 = &v73[mStartOffset];
        do
        {
          v46 = v44;
          if (v45 >= &v40[mDataByteSize])
          {
            v47 = 255;
          }

          else
          {
            v47 = *v45;
          }

          v42 = v47 | (v42 << 8);
          ++v45;
          v44 = v46 + 8;
          v48 = (v43++ & 3) == 0;
        }

        while (!v48);
        *buf = v45;
        LODWORD(v82) = v42 << (16 - v46);
        HIDWORD(v82) = v46 + 16;
      }

      PacketDependencyParser::PacketDependency(v41, buf, v79);
      if (!LODWORD(v79[0]))
      {
        v76 = 0;
        v49 = 0;
        v50 = 4;
        goto LABEL_66;
      }
    }

    else
    {
      LODWORD(v79[0]) = 1;
    }

    v51 = *(this + 42);
    if (v51 == -1 || v77 - v51 >= *(this + 41) || (v52 = (*(*this + 280))(this), v49 = 0, v50 = 4, v76 = 1, v52) && !HIDWORD(v79[0]))
    {
      v53 = *(this + 38) - *(this + 36);
      if ((8 * v53) <= 0xFF)
      {
        v54 = 10;
      }

      else
      {
        v54 = 11;
      }

      if (((8 * v53) & 0xFFFF0000) != 0)
      {
        v55 = v53 + 1;
      }

      else
      {
        v55 = *(this + 38) - *(this + 36);
      }

      v48 = ((8 * v53) & 0xFF000000) == 0;
      v50 = v55 + v54;
      if (!v48)
      {
        ++v50;
      }

      v76 = 1;
      v49 = 1;
    }

LABEL_66:
    v56 = mDataByteSize + v50 + mDataByteSize / 0xFF + 1;
    begin = *(this + 24);
    v58 = *(this + 25) - begin;
    if (v56 > v58)
    {
      std::vector<unsigned char>::__append(v75, v56 - v58);
      begin = v75->__begin_;
    }

    *buf = begin;
    *&buf[8] = begin;
    v59 = &begin[v56];
    *&buf[16] = v59;
    v82 = 0x2000000000;
    v83 = begin & 3;
    AT::TBitstreamWriter<unsigned int>::PutBits(buf, 695, 0xBu);
    AT::TBitstreamWriter<unsigned int>::PutBits(buf, 0, 0xDu);
    if (v49)
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(buf, 0, 1u);
      AT::TBitstreamWriter<unsigned int>::PutBits(buf, 1, 1u);
      AT::TBitstreamWriter<unsigned int>::PutBits(buf, 0, 1u);
      MP4::LATMHeader::PutVariableSizeValue(buf, 0xFFu);
      AT::TBitstreamWriter<unsigned int>::PutBits(buf, 1, 1u);
      AT::TBitstreamWriter<unsigned int>::PutBits(buf, 0, 6u);
      AT::TBitstreamWriter<unsigned int>::PutBits(buf, 0, 4u);
      AT::TBitstreamWriter<unsigned int>::PutBits(buf, 0, 3u);
      MP4::LATMHeader::PutVariableSizeValue(buf, 8 * (*(this + 38) - *(this + 36)));
      v60 = *(this + 18);
      if (*(this + 19) != v60)
      {
        v61 = 0;
        v62 = 1;
        do
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(buf, *(v60 + v61), 8u);
          v61 = v62;
          v60 = *(this + 18);
        }

        while (*(this + 19) - v60 > v62++);
      }

      *(this + 42) = v77;
      AT::TBitstreamWriter<unsigned int>::PutBits(buf, 0, 3u);
      AT::TBitstreamWriter<unsigned int>::PutBits(buf, 255, 8u);
      AT::TBitstreamWriter<unsigned int>::PutBits(buf, 0, 1u);
      v64 = 0;
    }

    else
    {
      v64 = 1;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(buf, v64, 1u);
    i = mDataByteSize;
    if (mDataByteSize >= 0xFF)
    {
      for (i = mDataByteSize; i > 0xFE; i -= 255)
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(buf, 255, 8u);
      }
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(buf, i, 8u);
    if (mDataByteSize)
    {
      do
      {
        v66 = *v40++;
        AT::TBitstreamWriter<unsigned int>::PutBits(buf, v66, 8u);
        --mDataByteSize;
      }

      while (mDataByteSize);
    }

    AT::TBitstreamWriter<unsigned int>::Flush(buf);
    v78 = (8 * (v59 - begin) - (HIDWORD(v82) + 8 * (*&buf[16] - *&buf[8])) + 32) >> 3;
    v67 = v78 - 3;
    if ((v78 - 3) >> 13)
    {
      v15 = 1869627199;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *v84 = 136315394;
      *&v84[4] = "LOASAudioFile.cpp";
      *&v84[12] = 1024;
      *&v84[14] = 467;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "%25s:%-5d  Packet is too large to be accommodated by LATM";
      goto LABEL_97;
    }

    if (v67 >= 0x100)
    {
      v75->__begin_[1] |= BYTE1(v67);
    }

    *(*(this + 24) + 2) = v67;
    v15 = (*(**(this + 13) + 56))(*(this + 13), 0, *(this + 9) + v39, v78, *(this + 24), &v78);
    if (v15)
    {
      break;
    }

    v80.mVariableFramesInPacket = v30->mVariableFramesInPacket;
    v80.mDataByteSize = v78;
    AudioFileObject::AppendPacket(this, &v80);
    v68 = (*(*this + 280))(this);
    v69 = v76 ^ 1;
    if (!v68)
    {
      v69 = 1;
    }

    if ((v69 & 1) == 0)
    {
      *v84 = v77;
      if (HIDWORD(v79[0]))
      {
        *&v84[8] = xmmword_18F901C70;
        *&v84[16] = WORD2(v79[0]);
        SampleToRollDistanceTable::append_entry(this + 216, v84);
      }

      else
      {
        SyncSampleTable::append_entry(this + 272, v84);
      }
    }

    ++v29;
    v8 = v71;
    v11 = v72;
    if (v29 >= *a6)
    {
      goto LABEL_92;
    }
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_21;
  }

  *v84 = 136315394;
  *&v84[4] = "LOASAudioFile.cpp";
  *&v84[12] = 1024;
  *&v84[14] = 517;
  v16 = MEMORY[0x1E69E9C10];
  v17 = "%25s:%-5d  GetDataSource()->WriteBytes Failed";
LABEL_97:
  v20 = v84;
LABEL_20:
  _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, v17, v20, 0x12u);
LABEL_21:
  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t LOASAudioFile::ReadPacketData(LOASAudioFile *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, _BYTE *a7)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (a3 && (v10 = *a3) != 0)
  {
    if (a6 && (v12 = *a6, v12))
    {
      if (v8)
      {
        v13 = 1869627199;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "LOASAudioFile.cpp";
          LOWORD(v50[0]) = 1024;
          *(v50 + 2) = 157;
          v14 = MEMORY[0x1E69E9C10];
          v15 = "%25s:%-5d  can't provide packet descriptions for an LATM/LOAS file, in which packets are not necessarily byte-aligned";
LABEL_18:
          _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
        }
      }

      else
      {
        v23 = (*(*this + 696))(this, v12 + a5, 0, 1);
        if (v23)
        {
          v13 = v23;
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }

          *buf = 136315394;
          *&buf[4] = "LOASAudioFile.cpp";
          LOWORD(v50[0]) = 1024;
          *(v50 + 2) = 163;
          v14 = MEMORY[0x1E69E9C10];
          v15 = "%25s:%-5d  ScanForPackets (LATM/LOAS) failed";
          goto LABEL_18;
        }

        v24 = *(this + 15);
        if (v24)
        {
          v25 = *(v24 + 24);
          if (v25 >= a5)
          {
            v13 = 1685348671;
          }

          else
          {
            v13 = 1885563711;
          }

          if (v25 >= a5 && v24 != 0)
          {
            v48 = 0;
            v27 = *(v24 + 24);
            *a3 = 0;
            v28 = *a6;
            if (v28 + a5 > v27)
            {
              LODWORD(v28) = v27 - a5;
              *a6 = v27 - a5;
            }

            if (v28)
            {
              v40 = (this + 192);
              v29 = *(this + 25) - *(this + 24);
              if (v29 < (*(*this + 640))(this))
              {
                v30 = (*(*this + 640))(this);
                std::vector<unsigned char>::resize(v40, v30);
              }

              if (*a6)
              {
                v43 = v24;
                v31 = 0;
                v32 = 0;
                p_mDataByteSize = &a4->mDataByteSize;
                while (1)
                {
                  v41 = p_mDataByteSize;
                  v42 = v32;
                  v46 = 0;
                  v47 = 1;
                  v45 = 0;
                  CompressedPacketTable::operator[](buf, v43, a5 + v31);
                  v34 = *buf;
                  CompressedPacketTable::operator[](buf, v43, a5 + v31);
                  v48 = v50[0];
                  v35 = (*(*this + 72))(this, a2, v34, &v48, *(this + 24));
                  v13 = v35;
                  if (v35 != -39 && v35 != 0)
                  {
                    break;
                  }

                  v37 = v48;
                  CompressedPacketTable::operator[](buf, v43, a5 + v31);
                  if (v37 < v50[0])
                  {
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      *&buf[4] = "LOASAudioFile.cpp";
                      LOWORD(v50[0]) = 1024;
                      *(v50 + 2) = 212;
                      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadBytes did not provide the entire AudioSyncStream element", buf, 0x12u);
                    }

                    goto LABEL_52;
                  }

                  v44 = 0;
                  HIDWORD(v45) = v48;
                  if (MP4::LOASHeader::CopyByteAlignedAccessUnitsFromAudioSyncStream(&v47, &v44, v40->__begin_, this + 144, &a7[v42], v10 - v42, &v46))
                  {
                    v13 = 1718449215;
                    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_19;
                    }

                    *buf = 136315394;
                    *&buf[4] = "LOASAudioFile.cpp";
                    LOWORD(v50[0]) = 1024;
                    *(v50 + 2) = 234;
                    v14 = MEMORY[0x1E69E9C10];
                    v15 = "%25s:%-5d  Failed to parse or copy byte-aligned packet from AudioSyncStream";
                    goto LABEL_18;
                  }

                  if (!v47)
                  {
                    v32 = v42;
                    goto LABEL_59;
                  }

                  *(v41 - 3) = v42;
                  v38 = v46;
                  *(v41 - 1) = 0;
                  *v41 = v38;
                  ++v31;
                  v32 = v38 + v42;
                  p_mDataByteSize = v41 + 4;
                  if (v31 >= *a6)
                  {
                    goto LABEL_59;
                  }
                }

                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "LOASAudioFile.cpp";
                  LOWORD(v50[0]) = 1024;
                  *(v50 + 2) = 211;
                  v14 = MEMORY[0x1E69E9C10];
                  v15 = "%25s:%-5d  ReadBytes failed";
                  goto LABEL_18;
                }
              }

              else
              {
                v32 = 0;
                LODWORD(v31) = 0;
                v13 = 0;
LABEL_59:
                *a3 = v32;
                *a6 = v31;
              }
            }

            else
            {
              *a3 = 0;
LABEL_52:
              v13 = 4294967257;
            }
          }
        }

        else if (a5 <= 0)
        {
          v13 = 1685348671;
        }

        else
        {
          v13 = 1885563711;
        }
      }
    }

    else
    {
      v13 = 2003334207;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "LOASAudioFile.cpp";
        LOWORD(v50[0]) = 1024;
        *(v50 + 2) = 155;
        v14 = MEMORY[0x1E69E9C10];
        v15 = "%25s:%-5d  invalid ioNumPackets parameter";
        goto LABEL_18;
      }
    }
  }

  else
  {
    v13 = 2003334207;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "LOASAudioFile.cpp";
      LOWORD(v50[0]) = 1024;
      *(v50 + 2) = 154;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d  invalid ioNumBytes parameter";
      goto LABEL_18;
    }
  }

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t LOASAudioFile::ReadPackets(LOASAudioFile *this, uint64_t a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0;
  if (a6)
  {
    v8 = *a6;
    if (v8)
    {
      if (a7)
      {
        v15 = (*(*this + 696))(this, v8 + a5, 0, 1);
        if (v15)
        {
          v16 = v15;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v25 = "LOASAudioFile.cpp";
            v26 = 1024;
            v27 = 119;
            v17 = MEMORY[0x1E69E9C10];
            v18 = "%25s:%-5d  ScanForPackets (LATM/LOAS) failed";
LABEL_9:
            _os_log_impl(&dword_18F5DF000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
            goto LABEL_17;
          }

          goto LABEL_17;
        }

        v19 = (*(*this + 640))(this);
        if (!v19)
        {
          v19 = (*(*this + 664))(this);
        }

        v23 = *a6 * v19;
      }

      v20 = (*(*this + 96))(this, a2, &v23, a4, a5, a6, a7);
      v16 = v20;
      if (a3 && !v20)
      {
        *a3 = v23;
      }

      goto LABEL_17;
    }
  }

  v16 = 2003334207;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "LOASAudioFile.cpp";
    v26 = 1024;
    v27 = 111;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "%25s:%-5d  invalid ioNumPackets parameter";
    goto LABEL_9;
  }

LABEL_17:
  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t LOASAudioFile::InitializeDataSource(LOASAudioFile *this, const AudioStreamBasicDescription *a2)
{
  mFormatID = a2->mFormatID;
  if (IsSupportedLATMFormat(mFormatID))
  {
    v3 = mFormatID - 778924081 >= 2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || mFormatID == 1836069684)
  {
    return 1718449215;
  }

  else
  {
    return 0;
  }
}

uint64_t LOASAudioFile::OpenFromDataSource(LOASAudioFile *this)
{
  v2 = 0;
  v32 = *MEMORY[0x1E69E9840];
  do
  {
    v16 = 10;
    v3 = (*(**(this + 13) + 48))(*(this + 13), 0, v2, 10, v22, &v16);
    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v28 = "LOASAudioFile.cpp";
        *&v28[8] = 1024;
        *&v28[10] = 613;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadBytes Failed", buf, 0x12u);
      }

      goto LABEL_33;
    }

    if (!v16)
    {
      v3 = 2003334207;
      goto LABEL_33;
    }

    if (v16 < 0xA)
    {
      break;
    }

    v4 = ID3Size(v16, v22, buf);
    v2 += v4;
  }

  while (v4);
  *(this + 9) = v2;
  v21 = 0;
  *buf = 0;
  *v28 = 1;
  *&v28[4] = 0;
  *&v28[11] = 0;
  v29 = 0;
  v31 = 0;
  v30 = 0;
  memset(&v20, 0, sizeof(v20));
  memset(&v19, 0, sizeof(v19));
  std::vector<unsigned char>::__append(&v19, 0x2000uLL);
  begin = v19.__begin_;
  v6 = (*(**(this + 13) + 48))(*(this + 13), 0, *(this + 9), 0x2000, v19.__begin_, &v21);
  v3 = v6;
  v17[0] = begin;
  v17[1] = &begin[v21];
  v18 = 0;
  if ((begin & 3) != 0 && v21)
  {
    v7 = 0;
    v8 = begin + 1;
    v9 = -8;
    v10 = begin + 1;
    do
    {
      HIDWORD(v18) = v9 + 16;
      v17[0] = v10;
      v7 = *(v10 - 1) | (v7 << 8);
      LODWORD(v18) = v7;
      v9 += 8;
      if ((v8 & 3) == 0)
      {
        break;
      }

      ++v8;
    }

    while (v10++ < &begin[v21]);
    LODWORD(v18) = v7 << (24 - v9);
  }

  if (v6 != -39 && v6)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    *v23 = 136315394;
    v24 = "LOASAudioFile.cpp";
    v25 = 1024;
    v26 = 651;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  ReadBytes Failed";
    goto LABEL_29;
  }

  if (!MP4::LOASHeader::Deserialize(buf, v17))
  {
    if (MP4::LATMHeader::StreamFormatInfo(v28, begin + 3, v21 - 3, this + 6, this + 7, &v20, this + 35))
    {
      v3 = (*(*this + 184))(this, &v20);
      if (!v3)
      {
        if ((*(*this + 280))(this))
        {
          operator new();
        }

        v3 = 0;
        goto LABEL_30;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      *v23 = 136315394;
      v24 = "LOASAudioFile.cpp";
      v25 = 1024;
      v26 = 662;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  SetDataFormat Failed";
    }

    else
    {
      v3 = 1718449215;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      *v23 = 136315394;
      v24 = "LOASAudioFile.cpp";
      v25 = 1024;
      v26 = 659;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "%25s:%-5d  MP4::LATMHeader::GetStreamFormatInfo Failed";
    }

LABEL_29:
    _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v13, v23, 0x12u);
    goto LABEL_30;
  }

  v3 = 1718449215;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v23 = 136315394;
    v24 = "LOASAudioFile.cpp";
    v25 = 1024;
    v26 = 654;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  LOASHeader::Deserialize failed";
    goto LABEL_29;
  }

LABEL_30:
  if (begin)
  {
    operator delete(begin);
  }

  if (v3)
  {
LABEL_33:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v28 = "LOASAudioFile.cpp";
      *&v28[8] = 1024;
      *&v28[10] = 551;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  LOASAudioFile::ParseAudioFile failed", buf, 0x12u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_18F88B744(_Unwind_Exception *a1)
{
  MEMORY[0x193ADF220](v2, 0x1000C403E1C8BA9);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t LOASAudioFile::Create(LOASAudioFile *this, CFURLRef url, const AudioStreamBasicDescription *a3)
{
  v6 = 1718449215;
  v7 = CFURLCopyPathExtension(url);
  v8 = v7;
  if (v7 && CFEqual(v7, @"xhe"))
  {
    if (a3->mFormatID == 1970495843)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  mFormatID = a3->mFormatID;
  if (IsSupportedLATMFormat(mFormatID))
  {
    v10 = mFormatID - 778924081 >= 2;
  }

  else
  {
    v10 = 0;
  }

  if (v10 && mFormatID != 1836069684)
  {
LABEL_16:
    v6 = AudioFileObject::Create(this, url, a3);
    if (!v8)
    {
      return v6;
    }

    goto LABEL_14;
  }

  if (v8)
  {
LABEL_14:
    CFRelease(v8);
  }

  return v6;
}

void LOASAudioFile::~LOASAudioFile(LOASAudioFile *this)
{
  LOASAudioFile::~LOASAudioFile(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033B860;
  v2 = *(this + 38);
  if (v2)
  {
    MEMORY[0x193ADF220](v2, 0x1000C403E1C8BA9);
  }

  v3 = *(this + 35);
  if (v3)
  {
    *(this + 36) = v3;
    operator delete(v3);
  }

  v4 = *(this + 31);
  if (v4)
  {
    *(this + 32) = v4;
    operator delete(v4);
  }

  v5 = *(this + 28);
  if (v5)
  {
    *(this + 29) = v5;
    operator delete(v5);
  }

  v6 = *(this + 24);
  if (v6)
  {
    *(this + 25) = v6;
    operator delete(v6);
  }

  v7 = *(this + 21);
  if (v7)
  {
    *(this + 22) = v7;
    operator delete(v7);
  }

  v8 = *(this + 18);
  if (v8)
  {
    *(this + 19) = v8;
    operator delete(v8);
  }

  AudioFileObject::~AudioFileObject(this);
}

uint64_t LOASAudioFormat::GetAvailableStreamDescriptions(LOASAudioFormat *this, int a2, unsigned int *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  outPropertyDataSize = 0;
  PropertyInfo = AudioFormatGetPropertyInfo(0x61636966u, 0, 0, &outPropertyDataSize);
  if (PropertyInfo)
  {
    goto LABEL_21;
  }

  v8 = outPropertyDataSize;
  v9 = outPropertyDataSize >> 2;
  CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(&v17, v9, 1);
  PropertyInfo = GetAllFormatIDs(&outPropertyDataSize, v17);
  v10 = v17;
  if (!PropertyInfo)
  {
    if (v8 < 4)
    {
      if (v17)
      {
        free(v17);
      }
    }

    else
    {
      v11 = 0;
      v12 = 1;
      do
      {
        if (v10[v11] == a2 && (IsSupportedLATMFormat(a2) & 1) != 0)
        {
          break;
        }

        v12 = ++v11 < v9;
      }

      while (v9 != v11);
      free(v10);
      v17 = 0;
      if (v12)
      {
        v20 = 0;
        memset(outPropertyData, 0, sizeof(outPropertyData));
        DWORD2(outPropertyData[0]) = a2;
        ioPropertyDataSize = 40;
        AudioFormatGetProperty(0x666D7469u, 0, 0, &ioPropertyDataSize, outPropertyData);
        if (*a3 >= 0x28)
        {
          v13 = 40;
        }

        else
        {
          v13 = 0;
        }

        *a3 = v13;
        if (a4)
        {
          memcpy(a4, outPropertyData, v13);
        }

        PropertyInfo = 0;
        v10 = v17;
        if (v17)
        {
          goto LABEL_4;
        }

        goto LABEL_21;
      }
    }

    *a3 = 0;
    PropertyInfo = 1718449215;
    goto LABEL_21;
  }

  if (v17)
  {
LABEL_4:
    free(v10);
  }

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];
  return PropertyInfo;
}

void sub_18F88BD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a11)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LOASAudioFormat::GetAvailableFormatIDs(LOASAudioFormat *this, unsigned int *a2, _DWORD *a3)
{
  if (a3)
  {
    v5 = *a2 >> 2;
  }

  else
  {
    v5 = 0;
  }

  outPropertyDataSize = 0;
  PropertyInfo = AudioFormatGetPropertyInfo(0x61636966u, 0, 0, &outPropertyDataSize);
  if (PropertyInfo)
  {
    return PropertyInfo;
  }

  v8 = outPropertyDataSize;
  v9 = outPropertyDataSize >> 2;
  CADeprecated::CAAutoFree<unsigned int>::CAAutoFree(&outPropertyData, v9, 1);
  PropertyInfo = GetAllFormatIDs(&outPropertyDataSize, outPropertyData);
  v10 = outPropertyData;
  if (!PropertyInfo)
  {
    if (v8 >= 4)
    {
      v13 = 0;
      v14 = outPropertyData;
      do
      {
        v16 = *v14++;
        v15 = v16;
        if (IsSupportedLATMFormat(v16))
        {
          if (a3 && v13 < v5)
          {
            a3[v13] = v15;
          }

          ++v13;
        }

        --v9;
      }

      while (v9);
      v11 = 4 * v13;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      if (!outPropertyData)
      {
        goto LABEL_21;
      }
    }

    free(v10);
    v12 = v11;
LABEL_21:
    PropertyInfo = 0;
    *a2 = v12;
    return PropertyInfo;
  }

  if (outPropertyData)
  {
    free(outPropertyData);
  }

  return PropertyInfo;
}

void sub_18F88BEB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

void LOASAudioFormat::GetFileTypeName(LOASAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"LATM/LOAS");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"LATM LOAS", @"LATM LOAS", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *LOASAudioFormat::GetMIMETypes(LOASAudioFormat *this, const __CFArray **a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"audio/usac";
  v5[1] = @"audio/aac";
  v5[2] = @"audio/x-aac";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 3, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *LOASAudioFormat::GetUTIs(LOASAudioFormat *this, const __CFArray **a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"public.mp4a-loas";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *LOASAudioFormat::GetExtensions(LOASAudioFormat *this, const __CFArray **a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"loas";
  v5[1] = @"latm";
  v5[2] = @"xhe";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v5, 3, MEMORY[0x1E695E9C0]);
  *a2 = result;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t LOASAudioFormat::FileDataIsThisFormat(LOASAudioFormat *this, int a2, unsigned __int8 *a3)
{
  v12 = 0;
  v13 = 1;
  *v14 = 0;
  *(&v14[1] + 3) = 0;
  memset(&v14[3], 0, 24);
  v3 = &a3[a2];
  v10[0] = a3;
  v10[1] = v3;
  v11 = 0;
  if ((a3 & 3) != 0 && a2)
  {
    v4 = 0;
    v5 = a3 + 1;
    v6 = -8;
    do
    {
      v7 = v6;
      v8 = *a3++;
      v4 = v8 | (v4 << 8);
      v6 += 8;
      if ((v5 & 3) == 0)
      {
        break;
      }

      ++v5;
    }

    while (a3 < v3);
    v10[0] = a3;
    LODWORD(v11) = v4 << (24 - v6);
    HIDWORD(v11) = v7 + 16;
  }

  if (MP4::LOASHeader::Deserialize(&v12, v10))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

BOOL LOASAudioFormat::ExtensionIsThisFormat(LOASAudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"latm", 1uLL))
  {
    return CFStringCompare(theString1, @"loas", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

uint64_t caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::rt_vtable<APMIDIRouter::APMIDIRouter(void)::$_1>(caulk::inplace_function_detail::wrapper<APMIDIRouter::APMIDIRouter(void)::$_1>)::{lambda(void *,void *&&,AudioUnitPluginDispatch const&,unsigned char const*&&,unsigned int &&)#1}::__invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, unsigned int *a5)
{
  v5 = *(a3 + 168);
  if (v5)
  {
    return v5(*a2, *a4, *a5);
  }

  else
  {
    return 4294967292;
  }
}

uint64_t caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int>::rt_vtable<APMIDIRouter::APMIDIRouter(void)::$_0>(caulk::inplace_function_detail::wrapper<APMIDIRouter::APMIDIRouter(void)::$_0>)::{lambda(void *,void *&&,AudioUnitPluginDispatch const&,unsigned int &&,void *&&,void *&&,void *&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7)
{
  v7 = *(a3 + 160);
  if (v7)
  {
    return v7(*a2, *a4, *a5, *a6, *a7);
  }

  else
  {
    return 4294967292;
  }
}

uint64_t *caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    (*(*a1 + 24))(a1 + 1);
    v4 = *a2;
    *a2 = &caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::empty;
    *a1 = v4;
    (*(v4 + 16))(a1 + 1, a2 + 1);
  }

  return a1;
}

uint64_t *caulk::inplace_function<int ()(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int),32ul,8ul,caulk::inplace_function_detail::rt_vtable>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    (*(*a1 + 24))(a1 + 1);
    v4 = *a2;
    *a2 = &caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int>::empty;
    *a1 = v4;
    (*(v4 + 16))(a1 + 1, a2 + 1);
  }

  return a1;
}

void caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}