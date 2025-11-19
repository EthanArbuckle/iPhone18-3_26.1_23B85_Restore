uint64_t handle_error_from_decode(unsigned int a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (*a4)
  {
    *a4 = 0;
    v7 = *(a3 + 96);
    if (v7 && *(a2 + 24))
    {
      free(v7);
      *(a3 + 96) = 0;
      *(a2 + 24) = 0;
    }

    *(a3 + 136) = 0;
  }

  if (a4[9] >= 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1;
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t aj_mcu_dct(int *a1, uint64_t a2)
{
  v4 = *(a2 + 2056);
  if (v4 && v4 == *(a2 + 2060))
  {
    v5 = (*(a2 + 2064) + 1) & 7;
    *(a2 + 2064) = v5;
    result = aj_ostream_write_bytes(a2 + 1928, v5 | 0xFFD0u, 2);
    if (result)
    {
      return result;
    }

    v7 = *(a2 + 2072);
    if (v7)
    {
      v8 = *(a2 + 2080) + *(a2 + 1944) - *(a2 + 2020) - 2;
      v9 = *(a2 + 2088);
      *(a2 + 2088) = v9 + 1;
      *(v7 + 4 * v9) = v8;
    }

    *(a2 + 2060) = 0;
    *(a2 + 2000) = 0u;
  }

  v10 = *a1;
  if (*a1 < 1)
  {
LABEL_19:
    result = 0;
    ++*(a2 + 2060);
  }

  else
  {
    v11 = 0;
    v12 = a1 + 3368;
    v13 = (a2 + 512);
    v14 = a1 + 8;
    v15 = a1 + 4;
    v16 = a2 + 2000;
    v26 = a1;
    v27 = a1 + 3368;
    while (1)
    {
      v17 = v14[v11];
      if (v17 >= 1)
      {
        break;
      }

LABEL_18:
      if (++v11 >= v10)
      {
        goto LABEL_19;
      }
    }

    v18 = 0;
    v19 = a2 + (v11 << 7);
    v20 = &v12[392 * v11];
    v21 = v15[v11];
    v22 = (v16 + 4 * v11);
    while (v21 < 1)
    {
LABEL_16:
      if (++v18 >= v17)
      {
        v12 = v27;
        v10 = *v26;
        v16 = a2 + 2000;
        goto LABEL_18;
      }
    }

    v23 = v14;
    v24 = 0;
    v25 = (v19 + (v18 << 6));
    while (1)
    {
      aj_block_dct(v25, v13, (v20 + 540));
      result = aj_block_encode(v20, v13->i16, (a2 + 1928), v22);
      if (result)
      {
        break;
      }

      v13 += 8;
      ++v24;
      v21 = v15[v11];
      if (v24 >= v21)
      {
        v14 = v23;
        v17 = v23[v11];
        v19 = a2 + (v11 << 7);
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t (*aj_fill_prog_coeff_buf(uint64_t (*result)(), uint8x8_t **a2))()
{
  if (*(result + 4) * *(result + 3358) >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = *(result + 2478);
    do
    {
      result = aj_block_dct(a2, v5, (v3 + 14012));
      ++v4;
      v5 += 8;
    }

    while (v4 < *(v3 + 4) * *(v3 + 3358));
  }

  return result;
}

uint64_t aj_bufferproc_savefirst(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if (a3[279] < a3[275] || a3[280] < a3[276])
  {
    v7 = aj_highest_set_bit(*(a1 + 44));
    if (*(a2 + 6464) >= 1)
    {
      v8 = 0;
      v9 = a3 + 279;
      v10 = a3 + 275;
      v11 = (v7 - 1 + a4) >> (v7 - 1);
      v12 = a3 + 142;
      v13 = a3 + 284;
      v25 = a4;
      v24 = a2;
      v23 = v11;
      do
      {
        if (v8)
        {
          v14 = v11;
        }

        else
        {
          v14 = a4;
        }

        v15 = v9[v8];
        if (v15 < v10[v8] && v14 >= 1)
        {
          v17 = 0;
          do
          {
            v18 = v17;
            *&v13[2 * v15 + 2 * v17] = aj_rowbuffer_lock_buffer(a3 + 38, *&v12[2 * v17]);
            v17 = v18 + 1;
          }

          while ((v15 + 1 + v18) < v10[v8] && v17 < v14);
          v15 += v17;
          a4 = v25;
          v9 = a3 + 279;
          a2 = v24;
          v11 = v23;
        }

        v9[v8++] = v15;
        v13 += 20;
        v12 += 32;
      }

      while (v8 < *(a2 + 6464));
    }
  }

  v20 = **(a1 + 80);

  return v20();
}

uint64_t aj_bufferproc_rgb2yuv(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a3 + 1082))
  {
    v4 = 1;
  }

  else
  {
    v4 = a4 < 1;
  }

  if (!v4)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 48);
      if (v6 >= 1)
      {
        v7 = *(a3 + 824 + 8 * v5);
        v8 = *(a3 + 696 + 8 * v5);
        v9 = *(a3 + 568 + 8 * v5);
        do
        {
          v10 = *v9;
          v11 = *v8;
          v12 = *v7;
          v13 = (v12 << 6) - (((707584 * v10 + 0x4000) >> 15) + ((1389568 * v11 + 0x4000) >> 15)) + 16448;
          if (v13 >= 0x8000)
          {
            LOBYTE(v14) = -1;
          }

          else
          {
            v14 = v13 >> 7;
          }

          v15 = (v10 << 6) - (((1756160 * v11 + 0x4000) >> 15) + ((340992 * v12 + 0x4000) >> 15)) + 16448;
          if (v15 >= 0x8000)
          {
            LOBYTE(v16) = -1;
          }

          else
          {
            v16 = v15 >> 7;
          }

          *v9++ = (((1254144 * v10 + 0x4000) >> 15) + ((2462080 * v11 + 0x4000) >> 15) + ((478208 * v12 + 0x4000) >> 15) + 64) >> 7;
          *v8++ = v14;
          *v7++ = v16;
          --v6;
        }

        while (v6);
      }

      ++v5;
    }

    while (v5 != a4);
  }

  v17 = **(a1 + 80);

  return v17();
}

void aj_bufferproc_upsample_422(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = a1;
  v8 = *(a1 + 80);
  if (*(*a2 + 4) == 12)
  {
    v9 = aj_internal_upsample_422_12bit;
  }

  else
  {
    v9 = aj_internal_upsample_422;
  }

  if (a4)
  {
    v20 = v8;
    if (a4 >= 1)
    {
      v11 = (a3 + 824);
      v12 = a4;
      v19 = v9;
      do
      {
        buffer = aj_rowbuffer_get_buffer((a3 + 152), a2[839]);
        v14 = aj_rowbuffer_get_buffer((a3 + 152), a2[839]);
        (v9)(*(v11 - 16), buffer, *(v7 + 52));
        (v9)(*v11, v14, *(v7 + 56));
        v15 = v7;
        v16 = *(a3 + 568);
        *(a3 + 568) = *(v11 - 32);
        v21 = *(a3 + 696);
        *(a3 + 696) = buffer;
        v17 = *(a3 + 824);
        *(a3 + 824) = v14;
        (*v20)(v20, a2, a3, 1, a5);
        *(a3 + 568) = v16;
        v7 = v15;
        v9 = v19;
        *(a3 + 696) = v21;
        *(a3 + 824) = v17;
        aj_rowbuffer_return_buffer((a3 + 152), buffer);
        aj_rowbuffer_return_buffer((a3 + 152), v14);
        a5 = (a5 + 1);
        ++v11;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v18 = *v8;

    v18();
  }
}

uint64_t aj_bufferproc_upsample422_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 40;
  if (*(a1 + 40) == 2 && *(a1 + 44) == 1)
  {
    result = 0;
    v8 = *(v6 + 32);
    v9 = *(v6 + 16);
    *a4 = *v6;
    *(a4 + 16) = v9;
    *(a4 + 32) = v8;
    *a4 = 1;
    v10 = *(a4 + 8);
    *(a4 + 12) = v10;
    *(a4 + 16) = v10;
    *(a4 + 20) = v10;
  }

  else
  {
    aj_log_error(0, "Input format to upsample422, is not 4:2:2", v4, v5);
    return 1;
  }

  return result;
}

unsigned __int16 *aj_internal_upsample_422_12bit(unsigned __int16 *result, _WORD *a2, int a3)
{
  v3 = *result;
  *a2 = v3;
  v4 = a2 + 1;
  v5 = a3 - 1;
  if (a3 != 1)
  {
    v6 = result + 1;
    do
    {
      v8 = *v6++;
      v7 = v8;
      *v4 = (3 * v3 + v8 + 1) >> 2;
      v4[1] = (v3 + 3 * v8 + 2) >> 2;
      v4 += 2;
      v3 = v8;
      --v5;
    }

    while (v5);
    LOWORD(v3) = v7;
  }

  *v4 = v3;
  return result;
}

uint64_t aj_mcu_pack(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a3;
  result = aj_find_and_handle_markers(a2, a3, 0);
  if (!result)
  {
    result = process_blocks(a1, a3, *(*(a2 + 8) + 88), **a2, *(a2 + 196), *(a2 + 192), v6, 0);
    if (!result)
    {
      v8 = vadd_s32(*(a3 + 28), 0x100000001);
      *(a3 + 28) = v8;
      result = 0;
      if (v8.i32[0] >= *(*(a2 + 8) + 80))
      {
        *(a3 + 24) = (*(a3 + 24) + 1);
      }
    }
  }

  return result;
}

uint64_t process_blocks(uint64_t *a1, int *a2, int a3, int a4, int a5, int a6, uint64_t a7, int32x2_t *a8)
{
  v14 = a2[7];
  v15 = a2[6];
  v43 = v14 * a3;
  v16 = (a5 - 1) * a6;
  v17 = *a1 + 66 * v14 * a3 + 66 * v16;
  a1[8] = v17;
  v18 = a1 + 8;
  v19 = a1[4];
  v20 = a1[3] + 66 * v14 * a3;
  a1[6] = v20;
  v21 = a1 + 6;
  v22 = v19 + 66 * v14;
  v23 = a1[5];
  v24 = a1[2];
  v25 = a1[1] + 66 * v14;
  a1[5624] = v25;
  v26 = v24 + 66 * v14;
  v42 = ~v16;
  a1[7] = v20 + 66 * ~v16;
  a1[11240] = v26;
  v27 = v23 + 66 * v14;
  a1[5622] = v22;
  a1[5623] = v22 - 66;
  a1[11238] = v27;
  a1[11239] = v27 - 66;
  a1[9] = v17 + 66 * ~v16;
  a1[5625] = v25 - 66;
  a1[11241] = v26 - 66;
  if (!v14)
  {
    a1[7] = 0;
    a1[5623] = 0;
    a1[11239] = 0;
    a1[9] = 0;
    a1[5625] = 0;
    a1[11241] = 0;
  }

  v38 = a1 + 5622;
  v39 = a1 + 11238;
  if (!v15)
  {
    *v18 = 0;
    a1[9] = 0;
    a1[5624] = 0;
    a1[5625] = 0;
    a1[11240] = 0;
    a1[11241] = 0;
  }

  if (a5 >= 1)
  {
    v28 = 0;
    v44 = -a6;
    v41 = v14;
    do
    {
      if (a6 >= 1)
      {
        v29 = a6;
        do
        {
          v30 = a2 + 2;
          if (a7)
          {
            aj_block_pack(v21, a7, v30);
          }

          else
          {
            result = aj_block_unpack(v21, a8, v30);
            if (result)
            {
              return result;
            }
          }

          if (a6 <= 1)
          {
            v33 = *v21;
          }

          else
          {
            v32 = *v18;
            if (*v18)
            {
              a1[8] = v32 + 66;
              a1[9] = v32;
            }

            v33 = a1[6];
            a1[7] = v33;
          }

          v20 = v33 + 66;
          *v21 = v20;
          --v29;
        }

        while (v29);
        LODWORD(v14) = v41;
      }

      v34 = v20 + 66 * v44;
      *v18 = v34;
      if (v14 < 1)
      {
        v35 = 0;
        v36 = 0;
      }

      else
      {
        v35 = a1[3] + 66 * v43 - 66;
        v36 = v34 + 66 * v42;
      }

      a1[7] = v35;
      a1[9] = v36;
      ++v28;
    }

    while (v28 != a5);
  }

  if (a4 != 3)
  {
    return 0;
  }

  v37 = a2 + 3;
  if (a7)
  {
    aj_block_pack(v38, a7, v37);
    aj_block_pack(v39, a7, a2 + 4);
    return 0;
  }

  result = aj_block_unpack(v38, a8, v37);
  if (!result)
  {
    result = aj_block_unpack(v39, a8, a2 + 4);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t aj_mcu_unpack(uint64_t *a1, uint64_t a2, int32x2_t *a3)
{
  v6 = a1[17718];
  v7 = *v6;
  v8 = *(*v6 + 32);
  v9 = *(*v6 + 16);
  v10 = v6[22];
  v11 = *(*v6 + 3404);
  if (v11 && *(a2 + 32) == v11)
  {
    v12 = (*(a2 + 36) + 1) & 7;
    *(a2 + 36) = v12;
    result = aj_ostream_write_bytes(a3, v12 | 0xFFD0u, 2);
    if (result)
    {
      return result;
    }

    *(a2 + 32) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v7 = *a1[17718];
  }

  result = process_blocks(a1, a2, v10, *v7, v8, v9, 0, a3);
  if (!result)
  {
    v14 = vadd_s32(*(a2 + 28), 0x100000001);
    *(a2 + 28) = v14;
    result = 0;
    if (v14.i32[0] >= *(a1[17718] + 80))
    {
      *(a2 + 24) = (*(a2 + 24) + 1);
    }
  }

  return result;
}

char *applejpeg_encode_create(uint64_t a1)
{
  if (a1)
  {
    aj_log_error("Encode", "applejpeg_memory argument provided. This is deprecated and will be ignored.");
  }

  v1 = malloc_type_calloc(1uLL, 0x6850uLL, 0x10F0040209077E7uLL);
  v2 = v1;
  if (v1)
  {
    *(v1 + 2484) = 0x100000001;
    *(v1 + 2485) = 0;
    *(v1 + 4972) = 95;
    *(v1 + 19896) = 0u;
    *(v1 + 19912) = 0u;
    *(v1 + 2491) = 3;
    *(v1 + 4984) = 0;
    *(v1 + 2493) = 0;
    *(v1 + 4988) = 0;
    *(v1 + 2495) = 0;
    *(v1 + 4992) = 0;
    *(v1 + 19996) = 0;
    *(v1 + 2501) = 0;
    *(v1 + 5004) = 0;
    *(v1 + 2503) = 0;
    *(v1 + 5008) = 0;
    *(v1 + 19976) = 0u;
    *(v1 + 19991) = 0;
  }

  else
  {
    aj_log_error("Encode", "Could not allocate memory for session");
  }

  return v2;
}

double applejpeg_encode_options_init(uint64_t a1)
{
  *a1 = 0x100000001;
  *(a1 + 8) = 0;
  *(a1 + 16) = 95;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *&result = 3;
  *(a1 + 56) = 3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return result;
}

uint64_t applejpeg_encode_set_options_mem(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }

  if (*(a4 + 8) >> 31)
  {
    aj_log_error("Encode", "Memory output buffer may not be larger than %d");
    return 8;
  }

  memset(&v8[7], 0, 56);
  v5 = a2[5];
  v8[4] = a2[4];
  v8[5] = v5;
  v8[6] = a2[6];
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  v7 = a2[3];
  v8[2] = a2[2];
  v8[3] = v7;
  return encode_set_options(a1, v8, a3, a4, 0);
}

uint64_t encode_set_options(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, __int128 *a5)
{
  *(a1 + 26624) = 0;
  v10 = encode_check_options(a2, a3);
  if (v10)
  {
    return v10;
  }

  if (a3)
  {
    if (*a3 < 1 || (v12 = *(a3 + 4), v12 < 1))
    {
      v11 = 8;
      aj_log_error("Encode", "Width and height must be > 0");
    }

    else if ((v12 | *a3) >> 16)
    {
      v11 = 8;
      aj_log_error("Encode", "Width and height must be <= 0xFFFF");
    }

    else
    {
      v13 = *(a3 + 8);
      if (v13 < 0x13 || v13 == 20)
      {
        v14 = (a1 + 20040);
        *(a1 + 20376) = a1 + 22512;
        *(a1 + 20384) = 4096;
        if (a4)
        {
          *a1 = *a4;
          *(a1 + 20352) = a1;
          *(a1 + 20328) = enc_mem_callback;
        }

        else
        {
          v16 = *a5;
          v17 = a5[1];
          v18 = a5[2];
          *(a1 + 20368) = *(a5 + 6);
          *(a1 + 20352) = v18;
          *(a1 + 20336) = v17;
          *(a1 + 20320) = v16;
        }

        v19 = *a2;
        v20 = *(a2 + 32);
        *(a1 + 20056) = *(a2 + 16);
        *(a1 + 20072) = v20;
        *v14 = v19;
        v21 = *(a2 + 48);
        v22 = *(a2 + 64);
        v23 = *(a2 + 96);
        *(a1 + 20120) = *(a2 + 80);
        *(a1 + 20136) = v23;
        *(a1 + 20088) = v21;
        *(a1 + 20104) = v22;
        v24 = *(a2 + 112);
        v25 = *(a2 + 128);
        v26 = *(a2 + 144);
        *(a1 + 20200) = *(a2 + 160);
        *(a1 + 20168) = v25;
        *(a1 + 20184) = v26;
        *(a1 + 20152) = v24;
        v27 = *a3;
        v28 = *(a3 + 16);
        *(a1 + 20240) = *(a3 + 32);
        *(a1 + 20224) = v28;
        *(a1 + 20208) = v27;
        v29 = *(a3 + 48);
        v30 = *(a3 + 64);
        v31 = *(a3 + 80);
        *(a1 + 20304) = *(a3 + 96);
        *(a1 + 20288) = v31;
        *(a1 + 20272) = v30;
        *(a1 + 20256) = v29;
        if (*v14 >= 17)
        {
          *v14 = 16;
        }

        v11 = aj_encode_init((a1 + 26632), a1 + 16, a1 + 20400, (a1 + 20208), v14, a1 + 20320, (a1 + 20376));
        if (!v11)
        {
          *(a1 + 26624) = 1;
        }
      }

      else
      {
        v11 = 3;
        aj_log_error("Encode", "Unsupported format");
      }
    }
  }

  else
  {
    v11 = 8;
    aj_log_error("Encode", "Bitmap info struct cannot be NULL");
  }

  return v11;
}

uint64_t applejpeg_encode_set_options_file(uint64_t a1, _OWORD *a2, uint64_t a3, __int128 *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    memset(&v8[7], 0, 56);
    v4 = a2[5];
    v8[4] = a2[4];
    v8[5] = v4;
    v8[6] = a2[6];
    v5 = a2[1];
    v8[0] = *a2;
    v8[1] = v5;
    v6 = a2[3];
    v8[2] = a2[2];
    v8[3] = v6;
    return encode_set_options(a1, v8, a3, 0, a4);
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t applejpeg_encode_set_option_num_threads(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if (*(a1 + 26624))
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      *(a1 + 19872) = a3;
      v4 = a1 + 19872;

      return encode_check_options(v4, a2);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t encode_check_options(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    aj_log_error("Encode", "Option pointer is NULL");
    return 8;
  }

  if (*a1 <= 0)
  {
    aj_log_error("Encode", "Number of threads cannot be zero or smaller.");
  }

  else if (*(a1 + 8) >> 31)
  {
    aj_log_error("Encode", "max_filesize must be less than %d");
  }

  else
  {
    v4 = *(a1 + 16);
    if (v4 < 0x65)
    {
      if (*(a1 + 122) < 8u)
      {
        v5 = *(a1 + 124);
        if (v5 && v5 < *(a2 + 4))
        {
          aj_log_error("Encode", "Strip encoding height override must be 0 or larger/equal to input height");
        }

        else
        {
          v6 = *(a1 + 128);
          if (*(a1 + 120))
          {
            if (v6)
            {
              aj_log_error("Encode", "Can't both skip all headers and insert custom header segment");
              return 5;
            }
          }

          else if (v6)
          {
            if (!*(a1 + 136))
            {
              aj_log_error("Encode", "Can't have NULL for inserted segment data");
              return 5;
            }

            if (*(a1 + 80))
            {
              aj_log_error("Encode", "Can't skip App0 segment if inserting custom segment");
              return 5;
            }
          }

          v7 = *(a1 + 144);
          if (!v7)
          {
            goto LABEL_29;
          }

          if (!*(a1 + 152))
          {
            aj_log_error("Encode", "Can't have NULL for RST offset table");
            return 5;
          }

          if (*(a1 + 4) != 1)
          {
            aj_log_error("Encode", "Can't have marker offset table unless restart marker interval is set to sparse");
            return 5;
          }

          v8 = (*(a1 + 56) & 0xFFFFFFFE) == 2 ? 16 : 8;
          if (v7 < (*(a2 + 4) + v8 - 1) / v8 - 1)
          {
            aj_log_error("Encode", "Restart marker offset table size does not match number of restart markers");
          }

          else
          {
LABEL_29:
            v9 = *(a2 + 8);
            if (v9 == 15)
            {
              v10 = 4;
            }

            else
            {
              v11 = *(a1 + 56);
              if (v11 >= 5)
              {
                aj_log_error("Encode", "Unsupported subsampling");
                return 5;
              }

              if (v11 == 4)
              {
                v10 = 1;
              }

              else
              {
                v10 = 3;
              }
            }

            if (!v4)
            {
              v16 = 0;
              while (2)
              {
                v17 = *(a1 + 24 + 8 * v16);
                if (!v17)
                {
                  aj_log_error("Encode", "Component %d is missing custom quantization table");
                  return 5;
                }

                for (i = 0; i != 64; ++i)
                {
                  if (!*(v17 + i))
                  {
                    aj_log_error("Encode", "Quantization value %d in table %d is 0 which is not allowed");
                    return 5;
                  }
                }

                if (++v16 != v10)
                {
                  continue;
                }

                break;
              }
            }

            v12 = *(a1 + 96);
            if (v12 < 0)
            {
              aj_log_error("Encode", "Negative callback interval");
            }

            else if (v12 && !*(a1 + 88))
            {
              aj_log_error("Encode", "Callback interval specified, but no callback function");
            }

            else
            {
              if (*(a1 + 4) < 3u)
              {
                v13 = *(a1 + 60);
                if (v13 == 2)
                {
                  v19 = *(a1 + 56);
                  if (v19)
                  {
                    if (v19 != 4)
                    {
                      aj_log_error("Encode", "Unsupported: LLJPEG can only take GRAY or RGB");
                      return 5;
                    }

                    if (v9 != 5 && v9 != 18)
                    {
                      aj_log_error("Encode", "Unsupported LLJPEG: GRAY to GRAY please");
                      return 5;
                    }
                  }

                  else if (v9 > 0x14 || ((1 << v9) & 0x130019) == 0)
                  {
                    aj_log_error("Encode", "Unsupported LLJPEG: RGB to RGB please");
                    return 5;
                  }

                  v20 = *(a1 + 112);
                  if (v20)
                  {
                    if (((1 << v9) & 0x170000) != 0)
                    {
                      v21 = *(a1 + 116);
                      if (v21 < 0)
                      {
                        aj_log_error("Encode", "Downshift can't be <0 if input is 16 bit");
                        return 5;
                      }

                      if (v21 + v20 >= 17)
                      {
                        aj_log_error("Encode", "Bitdepth plus Downshift can't be >16 if input is 16 bit");
                        return 5;
                      }
                    }

                    else
                    {
                      if (*(a1 + 116))
                      {
                        aj_log_error("Encode", "Downshift must be 0 if input is 8 bit");
                        return 5;
                      }

                      if (v20 >= 9)
                      {
                        aj_log_error("Encode", "Bitdepth can't be >8 if input is 8 bit");
                        return 5;
                      }
                    }
                  }
                }

                else if (v13 == 1)
                {
                  v14 = *(a1 + 72);
                  if (v14)
                  {
                    v15 = *(a1 + 64);
                    if (v15 <= v10 || v15 > 896 * v10)
                    {
                      aj_log_error("Encode", "Illegal number of progressive scans for a %d component JPEG: %d");
                      return 5;
                    }

                    result = verify_pscan_setup(v14, v15, v10);
                    if (result)
                    {
                      return result;
                    }

                    v9 = *(a2 + 8);
                  }
                }

                if (v9 != 18 || *(a1 + 60) == 2)
                {
                  return 0;
                }

                aj_log_error("Encode", "Unsupported: 16 bit gray is only for lossless jpeg");
                return 5;
              }

              aj_log_error("Encode", "Illegal restart marker setting");
            }
          }
        }
      }

      else
      {
        aj_log_error("Encode", "restart_marker_offset must be >=0 and <8");
      }
    }

    else
    {
      aj_log_error("Encode", "Unsupported quality setting");
    }
  }

  return 5;
}

uint64_t applejpeg_encode_set_option_restart_markers(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if (*(a1 + 26624))
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      *(a1 + 19876) = a3;
      v4 = a1 + 19872;

      return encode_check_options(v4, a2);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t applejpeg_encode_set_option_max_filesize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2)
  {
    if (*(a1 + 26624))
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      *(a1 + 19880) = a3;
      v4 = a1 + 19872;

      return encode_check_options(v4, a2);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t applejpeg_encode_set_option_quality(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if (*(a1 + 26624))
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      *(a1 + 19888) = a3;
      v4 = a1 + 19872;

      return encode_check_options(v4, a2);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t applejpeg_encode_set_option_q_tables(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  if (!a1 || !a2)
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }

  if (*(a1 + 26624))
  {
    aj_log_error("Encode", "Cannot modify options after committing them");
    return 5;
  }

  if (!a3 || a3 >= 5)
  {
    aj_log_error("Encode", "Invalid num_tables");
    return 8;
  }

  *(a1 + 19888) = 0;
  if (a3 >= 1)
  {
    v7 = (a1 + 19896);
    v8 = a3;
    do
    {
      if (!*a4)
      {
        aj_log_error("Encode", "Table may not be NULL");
        return 8;
      }

      *v7++ = *a4++;
      --v8;
    }

    while (v8);
    if (a3 > 3)
    {
      goto LABEL_15;
    }
  }

  bzero((a1 + 8 * a3 + 19896), 8 * (3 - a3) + 8);
LABEL_15:

  return encode_check_options(a1 + 19872, a2);
}

uint64_t applejpeg_encode_set_option_format(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if (*(a1 + 26624))
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      *(a1 + 19928) = a3;
      v4 = a1 + 19872;

      return encode_check_options(v4, a2);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t applejpeg_encode_set_option_type_baseline(_DWORD *a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if (a1[6656])
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      a1[4982] = a3;
      a1[4983] = 0;
      v4 = (a1 + 4968);

      return encode_check_options(v4, a2);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t applejpeg_encode_set_option_type_progressive(uint64_t a1, uint64_t a2, int a3, int a4, const void *a5)
{
  if (a1 && a2 && a4 && a5)
  {
    if (*(a1 + 26624))
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      v11 = *(a1 + 26680);
      if (v11)
      {
        free(v11);
      }

      v12 = malloc_type_calloc(1uLL, 36 * a4, 0x10000408AA14F5FuLL);
      *(a1 + 26680) = v12;
      *(a1 + 26616) = v12;
      if (v12)
      {
        memcpy(v12, a5, 36 * a4);
        *(a1 + 19928) = a3;
        *(a1 + 19932) = 1;
        *(a1 + 19936) = a4;
        *(a1 + 19944) = *(a1 + 26616);

        return encode_check_options(a1 + 19872, a2);
      }

      else
      {
        aj_log_error("Encode", "Could not allocate scans");
        return 6;
      }
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t applejpeg_encode_set_option_type_lossless(_DWORD *a1, uint64_t a2, int a3, int a4, int a5)
{
  if (a1 && a2)
  {
    if (a1[6656])
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      a1[4982] = a3;
      a1[4983] = 2;
      a1[4996] = a4;
      a1[4997] = a5;
      v6 = (a1 + 4968);

      return encode_check_options(v6, a2);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t applejpeg_encode_set_option_skip_app0_header(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if (*(a1 + 26624))
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      *(a1 + 19952) = a3;
      v4 = a1 + 19872;

      return encode_check_options(v4, a2);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t applejpeg_encode_set_option_callback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a1 && a2 && a3 && a4)
  {
    if (*(a1 + 26624))
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      *(a1 + 19960) = a3;
      *(a1 + 19968) = a4;
      *(a1 + 19976) = a5;
      v6 = a1 + 19872;

      return encode_check_options(v6, a2);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t applejpeg_encode_set_option_strip_encode(uint64_t a1, uint64_t a2, char a3, char a4, char a5, int a6)
{
  if (a1 && a2)
  {
    if (*(a1 + 26624))
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      *(a1 + 19992) = a3;
      *(a1 + 19993) = a4;
      *(a1 + 19994) = a5;
      *(a1 + 19996) = a6;
      v7 = a1 + 19872;

      return encode_check_options(v7, a2);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t applejpeg_encode_set_option_insert_segment(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  if (a1 && a2 && a5)
  {
    if (*(a1 + 26624))
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      *(a1 + 20000) = a3;
      *(a1 + 20008) = a4;
      *a5 = 20;
      v6 = a1 + 19872;

      return encode_check_options(v6, a2);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

uint64_t applejpeg_encode_set_option_record_rst_offsets(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a1 && a2)
  {
    if (*(a1 + 26624))
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
      return 5;
    }

    else
    {
      *(a1 + 20016) = a3;
      *(a1 + 20024) = a4;
      *(a1 + 20032) = a5;
      v6 = a1 + 19872;

      return encode_check_options(v6, a2);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
    return 8;
  }
}

double applejpeg_encode_reset_options(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 26624))
    {
      aj_log_error("Encode", "Cannot modify options after committing them");
    }

    else
    {
      *(a1 + 20056) = 95;
      *&result = 3;
      *(a1 + 20040) = 0x100000001;
      *(a1 + 20048) = 0;
      *(a1 + 20064) = 0u;
      *(a1 + 20080) = 0u;
      *(a1 + 20096) = 3;
      *(a1 + 20104) = 0;
      *(a1 + 20112) = 0;
      *(a1 + 20120) = 0;
      *(a1 + 20128) = 0;
      *(a1 + 20136) = 0;
      *(a1 + 20164) = 0;
      *(a1 + 20168) = 0;
      *(a1 + 20184) = 0;
      *(a1 + 20200) = 0;
      *(a1 + 20176) = 0;
      *(a1 + 20192) = 0;
      *(a1 + 20144) = 0u;
      *(a1 + 20159) = 0;
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot take NULL arguments");
  }

  return result;
}

uint64_t applejpeg_encode_image_row(uint64_t a1, unsigned int *a2, void *a3)
{
  v22 = 0;
  if (a1 && a2)
  {
    v6 = check_input(a1, a2, 0, &v22);
    if (!v6)
    {
      if (*(a1 + 26624))
      {
        v8 = a2 + 11;
        v7 = a2[11];
        if (v7 >= 16)
        {
          v9 = *(a1 + 24);
          v10 = *(a1 + 28);
          v11 = a2[11];
          kdebug_trace();
        }

        if (*(a1 + 13376) == 14 && !*(a1 + 13280))
        {
          aj_log_error("Encode", "Illegal settings for texture format.");
          return 3;
        }

        if (*(a1 + 20100) == 2)
        {
          aj_log_error("Encode", "Row-wise compression for LOSSLESS is not implemented.");
          return 3;
        }

        if (*v8 + *(a1 + 13304) > *(a1 + 28))
        {
          *v21 = *(a1 + 28);
          aj_log_error("Encode", "Image height is %d but %d rows have been passed in.");
          return 1;
        }

        if (*(a1 + 20048))
        {
          aj_log_error("Encode", "Max filesize not supported for row-by-row encoding");
          return 1;
        }

        if (!*(a1 + 13284))
        {
          v19 = aj_write_jpeg_headers((a1 + 16), a1 + 22328, a1 + 3440, *(a1 + 19832), *(a1 + 22456), *(a1 + 20120), *(a1 + 20168), *(a1 + 20176), 0);
          if (v19)
          {
            v6 = v19;
            aj_log_error("Encode", "Failed to write JPEG headers");
            return v6;
          }

          *(a1 + 13284) = 1;
        }

        v13 = v22;
        if (v22 && *(a1 + 13376) == 14)
        {
          v8 = (a1 + 13444);
        }

        v14 = *(a1 + 13292) + *v8;
        if (v14 >= *(a1 + 13308))
        {
          v15 = 0;
          while (1)
          {
            setup_input((a1 + 20400), a1 + 16, a2, v15);
            v16 = aj_encode_row(a1 + 16, (a1 + 20400), *(a1 + 13304) >= (*(a1 + 13452) - 1) * *(a1 + 13444));
            if (v16)
            {
              break;
            }

            v17 = *(a1 + 13308);
            if (*(a1 + 13292))
            {
              v18 = 1;
            }

            else
            {
              v18 = *(a1 + 13308);
            }

            v15 += v18;
            *(a1 + 13304) += v17;
            *(a1 + 13292) = 0;
            v14 -= v17;
            if (v14 < v17)
            {
              v13 = v22;
              goto LABEL_34;
            }
          }

          v6 = v16;
          aj_log_error("Encode", "Failed to encode row");
        }

        else
        {
          v15 = 0;
LABEL_34:
          if (v13)
          {
            if (v14 && *(a1 + 13376) != 14)
            {
              setup_input((a1 + 20400), a1 + 16, a2, v15);
              *(a1 + 13292) = 1;
            }

            v6 = aj_encode_row_close(a1 + 16, a1 + 20400);
            *(a1 + 13292) = 0;
            *(a1 + 26624) = 0;
          }

          else
          {
            if (v14)
            {
              setup_input((a1 + 20400), a1 + 16, a2, v15);
              buffer_input_row(a1 + 16, a1 + 20400);
            }

            v6 = 0;
          }

          if (v7 >= 16)
          {
            v20 = *(a1 + 22416);
            kdebug_trace();
          }

          *a3 = *(a1 + 22416);
        }
      }

      else
      {
        aj_log_error("Encode", "Options not set");
        return 5;
      }
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot accept NULL arguments");
    return 8;
  }

  return v6;
}

uint64_t check_input(_DWORD *a1, unsigned int *a2, int a3, _BOOL4 *a4)
{
  v4 = a2[8];
  if ((v4 - 5) < 0xFFFFFFFC)
  {
    v13 = a2[8];
    aj_log_error("Encode", "Invalid number of planes: %d");
    return 8;
  }

  v6 = 0;
  do
  {
    if (!*&a2[2 * v6])
    {
      aj_log_error("Encode", "Plane pointer #%d is NULL");
      return 8;
    }

    ++v6;
  }

  while (v4 != v6);
  v7 = a1[5054];
  if (v7 != a2[12])
  {
    aj_log_error("Encode", "Format differs from what previously set");
    return 8;
  }

  if (a2[10] != a1[5052])
  {
    goto LABEL_15;
  }

  v8 = a2[11];
  if (a3)
  {
    v9 = a2[11];
    if (v8 == a1[5053])
    {
      goto LABEL_18;
    }

LABEL_15:
    aj_log_error("Encode", "Invalid data dimensions");
    return 8;
  }

  if (v8 < 1)
  {
    goto LABEL_15;
  }

  v9 = a1[5053];
  if (v8 > v9)
  {
    goto LABEL_15;
  }

LABEL_18:
  v11 = a1[3326] + v8 + a1[3323];
  v12 = v11 >= v9;
  if ((v7 - 10) >= 4)
  {
    if (v7 == 14 && memcmp(a1 + 5056, a2 + 14, 0x40uLL))
    {
      aj_log_error("Encode", "Texture info structs differ");
      return 8;
    }
  }

  else if ((v8 & 1) != 0 && v11 < v9)
  {
    aj_log_error("Encode", "An even number of rows is required for vertically decimated input");
    return 8;
  }

  result = 0;
  if (a4)
  {
    *a4 = v12;
  }

  return result;
}

void *setup_input(void *result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(a3 + 48) == 14)
  {
    result[230] = *a3 + *(a2 + 19768) * a4 + *(a2 + 13392);
    if (*(a3 + 32) == 3)
    {
      result[232] = *(a3 + 8) + *(a2 + 19776) * a4 + *(a2 + 13400);
      v4 = *(a3 + 16);
    }

    else
    {
      v9 = *a3 + *(a2 + 13368);
      result[232] = v9 + *(a2 + 19776) * a4 + *(a2 + 13400);
      v4 = v9 + *(a2 + 13376);
    }

    result[234] = v4 + *(a2 + 19784) * a4 + *(a2 + 13408);
    v10 = 3;
  }

  else if (*(a2 + 19832))
  {
    v5 = *(a3 + 44);
    v6 = *(a2 + 19844);
    v7 = *(a2 + 19768);
    result[230] = *a3 + v7 * a4;
    if (*(a3 + 32) == 2)
    {
      v8 = *(a3 + 8);
    }

    else
    {
      v11 = v5 & 1;
      if (v6 != 2)
      {
        v11 = 0;
      }

      v8 = *a3 + v7 * (v11 + v5);
    }

    result[232] = v8 + *(a2 + 19776) * (a4 >> (v6 - 1));
    v10 = 2;
  }

  else
  {
    result[230] = *a3 + *(a2 + 19768) * a4;
    v10 = 1;
  }

  if (*(a2 + 13276))
  {
    v12 = result + 237;
    v13 = result + 229;
    do
    {
      v14 = *v12++;
      *v13 = v14;
      v13 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
    v15 = (a2 + 19768);
    v16 = result + 230;
    do
    {
      v17 = *v15++;
      v18 = *v16 + v17;
      *(v16 - 1) = *v16;
      *v16 = v18;
      v16 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

void *buffer_input_row(uint64_t a1, uint64_t a2)
{
  result = memcpy(*(a2 + 1896), *(a2 + 1832), *(a1 + 19768));
  if (*(a1 + 19832))
  {
    result = memcpy(*(a2 + 1904), *(a2 + 1848), *(a1 + 19776));
  }

  *(a1 + 13276) = 1;
  return result;
}

uint64_t applejpeg_encode_image_all(uint64_t a1, unsigned int *a2, void *a3)
{
  if (!a1 || !a2)
  {
    aj_log_error("Encode", "Cannot accept NULL arguments");
    return 8;
  }

  v6 = check_input(a1, a2, 1, 0);
  if (!v6)
  {
    if (*(a1 + 26624))
    {
      v9 = *(a1 + 24);
      v10 = *(a1 + 28);
      v11 = *(a1 + 19820);
      kdebug_trace();
      if (*(a1 + 19820))
      {
        setup_input((a1 + 20400), a1 + 16, a2, 0);
        v12 = do_encode_lossless(a1);
LABEL_10:
        v7 = v12;
        v13 = (a1 + 22416);
LABEL_11:
        *a3 = *v13;
        *(a1 + 26624) = 0;
        kdebug_trace();
        return v7;
      }

      v14 = *(a1 + 20048);
      if (!v14)
      {
        v12 = do_encode(a1, a2);
        goto LABEL_10;
      }

      v15 = a1 + 22328;
      v27 = *(a1 + 22392);
      v25 = *(a1 + 22360);
      v26 = *(a1 + 22376);
      v23 = *(a1 + 22328);
      v24 = *(a1 + 22344);
      *(a1 + 22368) = dummy_callback2;
      *(a1 + 20048) = 0;
      aj_encode_reset_session((a1 + 16), a1 + 20400, a1 + 20040);
      v6 = do_encode(a1, a2);
      if (v6)
      {
        return v6;
      }

      v13 = (a1 + 22416);
      v16 = *(a1 + 22416);
      v22 = v14;
      if (v16 >= v14)
      {
        v17 = *(a1 + 20056);
        if (v17 >= 2)
        {
          v19 = v17 - 1;
          v21 = v14 / 20;
          v20 = 1;
          while (1)
          {
            v18 = (v20 + v19) >> 1;
            *(a1 + 20056) = v18;
            aj_encode_reset_session((a1 + 16), a1 + 20400, a1 + 20040);
            v6 = do_encode(a1, a2);
            if (v6)
            {
              return v6;
            }

            v16 = *v13;
            if (v22 <= *v13)
            {
              v19 = v18 - 1;
            }

            else
            {
              if (v22 - v16 < v21)
              {
                goto LABEL_31;
              }

              v20 = v18 + 1;
            }

            if (v20 > v19)
            {
              goto LABEL_31;
            }
          }
        }

        v18 = v17 / 2;
LABEL_31:
        v15 = a1 + 22328;
        if (v16 >= v22 && v18 >= 2)
        {
          *(a1 + 20056) = v18 - 1;
          aj_encode_reset_session((a1 + 16), a1 + 20400, a1 + 20040);
          v6 = do_encode(a1, a2);
          if (v6)
          {
            return v6;
          }

          v16 = *v13;
        }
      }

      if (v16 < v22)
      {
        aj_encode_reset_session((a1 + 16), a1 + 20400, a1 + 20040);
        *(v15 + 32) = v25;
        *(v15 + 48) = v26;
        *(v15 + 64) = v27;
        *v15 = v23;
        *(v15 + 16) = v24;
        v7 = do_encode(a1, a2);
        if (v7)
        {
          return v7;
        }

        goto LABEL_11;
      }

      aj_log_error("Encode", "Unable to produce smaller image");
    }

    else
    {
      aj_log_error("Encode", "Options not set");
    }

    return 5;
  }

  return v6;
}

uint64_t do_encode(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 19776;
  setup_input((a1 + 20400), a1 + 16, a2, 0);
  if (aj_allow_multithread_encode((a1 + 16), a1 + 20400, *(v3 + 264)))
  {
    v4 = *(v3 + 264);
    v5 = *(a1 + 13448);
    v6 = *(a1 + 13452);
    v7 = v4;
    do
    {
      v8 = v6 / v7;
      if (v6 % v7)
      {
        ++v8;
      }

      v7 *= 2;
    }

    while (v8 > 0xFFFF / v5);
    *v3 = v8;
    v9 = *(v3 + 2680);
    if (v9)
    {
      if (v9 == v5 * v8 || !(v5 % v9))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 *= v8;
    }

    *(v3 + 2680) = v5;
    v9 = v5;
LABEL_14:
    if (!*(v3 + 384))
    {
      result = aj_write_jpeg_headers((a1 + 16), a1 + 22328, a1 + 3440, *(a1 + 19832), v9, *(v3 + 344), *(v3 + 392), *(a1 + 20176), *(v3 + 388));
      if (result)
      {
        return result;
      }

      *(v3 + 2644) = *(v3 + 2568);
      v4 = *(v3 + 264);
    }

    result = aj_encode_all_mt(a1 + 16, a1 + 20400, v4);
    goto LABEL_16;
  }

  if (!*(v3 + 384))
  {
    result = aj_write_jpeg_headers((a1 + 16), a1 + 22328, a1 + 3440, *(a1 + 19832), *(v3 + 2680), *(v3 + 344), *(v3 + 392), *(a1 + 20176), *(v3 + 388));
    if (result)
    {
      return result;
    }

    *(v3 + 2644) = *(v3 + 2568);
  }

  result = aj_encode_all(a1 + 16, a1 + 20400, 217);
LABEL_16:
  if (result == 9)
  {
    if (*(a1 + 22368) == enc_mem_callback)
    {
      aj_log_error("Encode", "Output buffer too small");
    }

    result = 9;
  }

  else if (!result)
  {
    result = aj_ostream_flush_buffer(a1 + 22328);
  }

  *(v3 + 2640) = *(v3 + 2568);
  return result;
}

uint64_t applejpeg_encode_image_all_with_bitstream_offset(uint64_t a1, unsigned int *a2, void *a3, void *a4)
{
  if (a4)
  {
    result = applejpeg_encode_image_all(a1, a2, a3);
    if (!result)
    {
      *a4 = *(a1 + 22420);
    }
  }

  else
  {
    aj_log_error("Encode", "Cannot accept NULL arguments");
    return 8;
  }

  return result;
}

void applejpeg_encode_destroy(char *a1)
{
  if (a1)
  {
    aj_encode_release_scan_buffers((a1 + 16));
    for (i = 0; i < 0x30; i += 8)
    {
      v3 = *&a1[i + 26640];
      if (v3)
      {
        free(v3);
        *&a1[i + 26640] = 0;
      }
    }

    free(a1);
  }
}

uint64_t enc_mem_callback(void *__src, int a2, uint64_t a3)
{
  if (*(a3 + 8) < a2)
  {
    return 1;
  }

  v5 = a2;
  memcpy(*a3, __src, a2);
  result = 0;
  v6 = *(a3 + 8) - v5;
  *a3 += v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t verify_pscan_setup(unsigned int *a1, int a2, int a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (a2 < 1)
  {
LABEL_5:
    if (a3 < 1)
    {
      result = 0;
      goto LABEL_14;
    }

    v6 = 0;
    v7 = &v11;
LABEL_7:
    v8 = 0;
    while (*(v7 + v8) == -1)
    {
      v8 += 2;
      if (v8 == 128)
      {
        result = 0;
        ++v6;
        v7 += 8;
        if (v6 != a3)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
    v5 = a2;
    while (!aj_fill_coeffblock_from_scan_properties(a1, &v11, a3))
    {
      a1 += 9;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }
  }

  aj_log_error("Encode", "The progressive scan set-up is illegal or contains errors", v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  result = 5;
LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_ostream_write_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  v3 = v2(v1);
  if (!v3)
  {
    return OUTLINED_FUNCTION_1();
  }

  aj_log_error(0, "Output callback returned error code %d.", v3);
  return 0;
}

uint64_t aj_ostream_write_bytes_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_0(a1);
  v3 = v2(v1);
  if (!v3)
  {
    return OUTLINED_FUNCTION_1();
  }

  aj_log_error(0, "Output callback returned error code %d.", v3);
  return 0;
}

void applejpeg_decode_create_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_240A75000, a2, a3, "[%p] Created session", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void applejpeg_decode_destroy_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_240A75000, a2, a3, "[%p] Releasing session", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void applejpeg_decode_build_index_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  _os_log_debug_impl(&dword_240A75000, v1, OS_LOG_TYPE_DEBUG, "[%p] Index-table finished with code %d", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void applejpeg_decode_image_all_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v3 = -1;
  _os_log_error_impl(&dword_240A75000, v0, OS_LOG_TYPE_ERROR, "Warning! [%p] Decoding incomplete with error code %d. This is expected if the image has not been fully downloaded.", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

void applejpeg_decode_image_all_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_240A75000, a2, a3, "[%p] Decoding completed without errors", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

void applejpeg_decode_image_all_cold_3()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  _os_log_error_impl(&dword_240A75000, v1, OS_LOG_TYPE_ERROR, "[%p] Decoding failed with error code %d", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}