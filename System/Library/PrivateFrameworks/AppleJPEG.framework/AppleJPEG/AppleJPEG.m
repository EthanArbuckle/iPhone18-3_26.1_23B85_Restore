uint64_t aj_get_os_log_object()
{
  if (aj_get_os_log_object_onceToken != -1)
  {
    aj_get_os_log_object_cold_1();
  }

  return aj_get_os_log_object_s_logger;
}

uint64_t applejpeg_decode_create(uint64_t a1)
{
  if (a1)
  {
    aj_log_error("Decode", "applejpeg_memory argument provided. This is deprecated and will be ignored.");
  }

  v1 = malloc_type_calloc(1uLL, 0x3310uLL, 0x10F00405D0B973BuLL);
  v2 = v1;
  if (v1)
  {
    bzero(v1, 0x3310uLL);
    os_log_object = aj_get_os_log_object();
    if (os_log_type_enabled(os_log_object, OS_LOG_TYPE_DEBUG))
    {
      applejpeg_decode_create_cold_1(v2, os_log_object, v4, v5, v6, v7, v8, v9);
    }

    *(v2 + 3560) = 0x100000001;
    *(v2 + 3568) = 0;
    *(v2 + 3572) = -1;
    *(v2 + 3580) = -1;
    *(v2 + 3588) = 0;
    *(v2 + 3592) = 0;
    *(v2 + 3640) = 0u;
    *(v2 + 3632) = 0x1FF000000;
    *(v2 + 3656) = xmmword_240AB61B0;
    *(v2 + 3600) = 0u;
    *(v2 + 3616) = 0u;
    *(v2 + 3672) = 0;
    *(v2 + 3700) = 0;
    *(v2 + 3680) = 0u;
    *(v2 + 3696) = 0;
    *(v2 + 3704) = 1;
    *(v2 + 12665) = 0;
    *(v2 + 12896) = 0;
  }

  else
  {
    aj_log_error("Decode", "Could not allocate memory for session object");
  }

  return v2;
}

uint64_t decode_open(uint64_t a1, unint64_t a2, uint64_t *a3, int a4, int a5)
{
  if (!a1)
  {
    return 8;
  }

  if (!a2 || !a3)
  {
    if (!(a2 | a3))
    {
      aj_log_error("Decode", "Input cannot be NULL");
      return 8;
    }

    if (a2)
    {
      if (!*a2 || !*(a2 + 16))
      {
        aj_log_error("Decode", "Read/Skip callbacks not set");
        return 8;
      }

      v10 = *(a2 + 40);
      if (v10)
      {
        if (v10 <= 0xFFF)
        {
          aj_log_error("Decode", "The read buffer size must be larger than %d");
          return 8;
        }

        if (v10 >> 31)
        {
          aj_log_error("Decode", "The read buffer size can't be larger than %d");
          return 8;
        }
      }

      if (*(a2 + 48) >> 31)
      {
        aj_log_error("Decode", "The file size can't be larger than %d");
        return 8;
      }
    }

    else
    {
      if (!*a3 || (v11 = a3[1]) == 0)
      {
        aj_log_error("Decode", "NULL fields in the memory input struct not allowed");
        return 8;
      }

      if (v11 >> 31)
      {
        aj_log_error("Decode", "The input buffer size can't be larger than %d");
        return 8;
      }
    }

    v14 = *(a1 + 12896);
    if (v14 == 1)
    {
      v22 = 0;
      v20 = 0;
    }

    else
    {
      if (v14)
      {
        goto LABEL_55;
      }

      v12 = aj_istream_move_to_position(a1, 0);
      if (v12)
      {
        return v12;
      }

      v15 = *(a1 + 13008);
      if (v15)
      {
        free(v15);
      }

      v16 = malloc_type_calloc(1uLL, 0x320uLL, 0x1000040451B5BE8uLL);
      *(a1 + 13008) = v16;
      *(a1 + 3552) = v16;
      if (!v16)
      {
        aj_log_error("Decode", "Could not allocate segment info buffer");
        return 6;
      }

      *(a1 + 3544) = 50;
      if (a2)
      {
        *(a1 + 12964) = a4;
        v17 = *(a2 + 40);
        v18 = *(a2 + 48);
        if (!v17)
        {
          LODWORD(v17) = 4096;
        }

        if (v18 >= v17 || v18 == 0)
        {
          v20 = v17;
        }

        else
        {
          v20 = *(a2 + 48);
        }

        v21 = *(a1 + 13016);
        if (!v21)
        {
          v21 = malloc_type_calloc(1uLL, v20, 0x3E87D7EFuLL);
          *(a1 + 13016) = v21;
          if (!v21)
          {
            aj_log_error("Decode", "Could not allocate read buffer for file input");
            v12 = 6;
            goto LABEL_60;
          }
        }

        *(a1 + 12960) = 1;
        aj_istream_init_file(a1, a2, v21, v20, a4, 0);
        *(a1 + 12896) = 1;
        v22 = v20 > 6144;
        if (v20 >= 6145 && *(a1 + 12960))
        {
          *(a1 + 36) = 6144;
          v22 = 1;
        }
      }

      else
      {
        *(a1 + 12964) = 0;
        aj_istream_init_mem(a1, a3, 0, 0);
        v22 = 0;
        v20 = 0;
        *(a1 + 12896) = 1;
      }
    }

    kdebug_trace();
    v12 = aj_parse_jpeg((a1 + 13008), a1, a1 + 120, (a1 + 12904), (a1 + 3544), 0, *(a1 + 12964), a5, *(a1 + 12664));
    v23 = *(a1 + 128);
    v24 = *(a1 + 132);
    kdebug_trace();
    if (v22 && *(a1 + 12960))
    {
      *(a1 + 36) = v20;
    }

    if (v12)
    {
      if (v12 == -2 && *(a1 + 12964))
      {
        return 4294967294;
      }

      aj_log_error("Decode", "Parse returned error code %d", v12);
LABEL_56:
      if (v12 == -2)
      {
        return 4294967294;
      }

LABEL_60:
      dec_free_allocations(a1 + 4160, a1 + 12968, a1 + 11136);
      return v12;
    }

    v25 = *(a1 + 152);
    if (*(a1 + 136) > 2 || v25 >= 3)
    {
      aj_log_error("Decode", "Unsupported subsampling %dx%d", *(a1 + 136), v25);
      v12 = 3;
      goto LABEL_60;
    }

LABEL_55:
    v12 = aj_imageinfo_init((a1 + 120), a1 + 3720);
    if (!v12)
    {
      *(a1 + 12896) = 2;
      return v12;
    }

    goto LABEL_56;
  }

  aj_log_error("Decode", "Cannot have both file input AND memory input");
  return 8;
}

uint64_t aj_istream_move_to_position(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    aj_log_error("Istream", "Attempting to move to %d which is < 0");
    return 8;
  }

  if (!*(a1 + 80))
  {
    *(a1 + 8) = *(a1 + 40) + a2;
    v7 = *(a1 + 52) - a2;
    goto LABEL_8;
  }

  v4 = *(a1 + 32);
  v5 = a2 - (*(a1 + 48) - v4);
  if (!v5)
  {
    return 0;
  }

  if ((v5 & 0x80000000) != 0)
  {
    v11 = (*(a1 + 48) - v4 - a2);
    v12 = *(a1 + 8);
    if (v12 - *(a1 + 40) < v11)
    {
      v13 = *(a1 + 88);
      if (v13)
      {
        result = v13(*(a1 + 64));
        if (result)
        {
          return result;
        }

        *(a1 + 56) = 0;
        *(a1 + 48) = 0;
        result = (*(a1 + 72))(a2, *(a1 + 64));
        if (result)
        {
          return result;
        }

        *(a1 + 48) += a2;
        v21 = 0;
        result = read_bytes_with_callback(a1, *(a1 + 40), *(a1 + 36), &v21);
        if (result)
        {
          return result;
        }

        *(a1 + 8) = *(a1 + 40);
        v7 = v21;
        goto LABEL_8;
      }

      aj_log_error("Istream", "No rewind or skip function provided");
      return 8;
    }

    *(a1 + 8) = v12 - v11;
    v7 = v4 - v5;
LABEL_8:
    *(a1 + 32) = v7;
    goto LABEL_9;
  }

  if (v4 >= v5)
  {
    *(a1 + 8) += v5;
    v14 = v4 - v5;
    *(a1 + 32) = v14;
    if (!v14)
    {
      result = aj_istream_move_forward(a1);
      if (result)
      {
        return result;
      }
    }

LABEL_9:
    result = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 24) = 0x1FFFFFFF7;
    return result;
  }

  v8 = (a2 - *(a1 + 48));
  result = (*(a1 + 72))(v8, *(a1 + 64));
  if (!result)
  {
    v9 = *(a1 + 48) + v8;
    *(a1 + 48) = v9;
    if (*(a1 + 56) == 2)
    {
      v10 = 0;
LABEL_44:
      *(a1 + 32) = v10;
      *(a1 + 8) = *(a1 + 40);
      goto LABEL_9;
    }

    v10 = 0;
    v15 = *(a1 + 40);
    v16 = *(a1 + 36);
    while (1)
    {
      v17 = *(a1 + 52);
      if (v17)
      {
        v18 = v9 < v17;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        *(a1 + 56) = 2;
LABEL_37:
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_44;
        }

        aj_log_error("Istream", "File is larger than %d bytes, aborting");
        return 9;
      }

      if (*(a1 + 56) == 1)
      {
        *(a1 + 56) = 0;
      }

      v19 = (*(a1 + 80))(v15 + v10, (v16 - v10), *(a1 + 64));
      if (v19 <= 0)
      {
        break;
      }

      v9 = *(a1 + 48) + v19;
      *(a1 + 48) = v9;
      v10 += v19;
      if (v10 >= 8)
      {
        goto LABEL_37;
      }
    }

    if (!v19)
    {
      v20 = 1;
      goto LABEL_43;
    }

    if (v19 == -1)
    {
      v20 = 2;
LABEL_43:
      *(a1 + 56) = v20;
      goto LABEL_44;
    }

    aj_log_error("Istream", "File read error");
    return 9;
  }

  return result;
}

os_log_t __aj_get_os_log_object_block_invoke()
{
  result = os_log_create("com.apple.applejpeg", "default");
  aj_get_os_log_object_s_logger = result;
  return result;
}

uint64_t aj_istream_peek_short(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 32) > 1)
  {
    goto LABEL_8;
  }

  result = aj_istream_move_forward(a1);
  if (result)
  {
    return result;
  }

  if (*(a1 + 32) > 1)
  {
LABEL_8:
    result = 0;
    *a2 = **(a1 + 8);
  }

  else
  {
    result = 7;
    if (*(a1 + 112))
    {
      if (*(a1 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

double aj_istream_init_file(uint64_t a1, void *a2, uint64_t a3, int a4, char a5, int a6)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 40) = a3;
  *(a1 + 36) = a4;
  *(a1 + 8) = a3;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 24) = -9;
  v7 = a2[2];
  v8 = a2[3];
  *(a1 + 80) = *a2;
  *(a1 + 88) = v8;
  *(a1 + 64) = a2[4];
  *(a1 + 72) = v7;
  *(a1 + 56) = a6;
  v9 = a2[6];
  *(a1 + 48) = 0;
  *(a1 + 52) = v9;
  *(a1 + 96) = 0;
  *(a1 + 112) = a5;
  return result;
}

uint64_t aj_parse_jpeg(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4, int *a5, int a6, int a7, int a8, char a9)
{
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  while (1)
  {
    if (a4[3])
    {
      if (!a4[6])
      {
        if (!a8)
        {
          aj_log_error("Parse", "JPEG headers incomplete, no DHT segments found.", v42);
          return 4;
        }

        *(a3 + 3320) = 1;
        *(a3 + 3322) = 1;
        aj_huffman_fill_standard_counts_values((a3 + 1144), (a3 + 1272), 1, 1);
        aj_huffman_fill_standard_counts_values((a3 + 1176), (a3 + 1784), 0, 1);
        *(a3 + 3328) = 2;
        *(a3 + 3321) = 1;
        *(a3 + 3323) = 1;
        aj_huffman_fill_standard_counts_values((a3 + 1160), (a3 + 1528), 1, 0);
        aj_huffman_fill_standard_counts_values((a3 + 1192), (a3 + 2040), 0, 0);
        *(a3 + 3332) = 2;
        a4[6] = 1;
      }

      if (a4[5] || *(a3 + 86))
      {
        segment_id_and_length = aj_check_components_and_decimation(a3);
        if (segment_id_and_length)
        {
          return segment_id_and_length;
        }

        return aj_check_huffman_tables(a3);
      }

      aj_log_error("Parse", "JPEG headers incomplete.");
      return 4;
    }

    v45 = 0;
    v44 = 0;
    if (a7)
    {
      *(a2 + 104) = *(a2 + 8);
    }

    v16 = *(a2 + 80);
    v50 = *(a2 + 64);
    v51 = v16;
    v52 = *(a2 + 96);
    v53 = *(a2 + 112);
    v17 = *(a2 + 16);
    v46 = *a2;
    v47 = v17;
    v18 = *(a2 + 48);
    v48 = *(a2 + 32);
    v49 = v18;
    segment_id_and_length = aj_get_segment_id_and_length(&v46, &v45 + 1, &v45, &v44, a4 + 8, a6);
    if (segment_id_and_length == -2)
    {
      segment_id_and_length = handle_suspension(a1, a7, a2, &v46, a5, v44, v45, SHIDWORD(v45), a4[8]);
    }

    if (segment_id_and_length)
    {
      return segment_id_and_length;
    }

    v20 = v44;
    if (!(*a4 | a6) && v44 != 216)
    {
      aj_log_error("Parse", "File does not begin with SOI, first segment is 0x%02X");
      return 4;
    }

    if (v44 <= 204)
    {
      if (v44 > 196)
      {
        if ((v44 - 197) >= 3)
        {
          v21 = v44 - 201;
          goto LABEL_17;
        }

LABEL_18:
        a4[7] = 1;
        goto LABEL_19;
      }

      if ((v44 - 192) >= 4)
      {
        if (v44 != 196)
        {
          goto LABEL_19;
        }

        dht = aj_read_dht(&v46, a3);
        if (dht)
        {
LABEL_20:
          segment_id_and_length = dht;
          goto LABEL_21;
        }

        a4[6] = 1;
      }

      else
      {
        if (a9 && a4[4])
        {
          aj_log_error("Parse", "Found multiple SOF segments. Ignoring any segment after the first.");
          goto LABEL_19;
        }

        dht = aj_read_sof(&v46, a3, v44);
        if (dht)
        {
          goto LABEL_20;
        }

        a4[4] = 1;
      }

LABEL_62:
      segment_id_and_length = 0;
      v35 = v52;
      *(a2 + 80) = v51;
      *(a2 + 96) = v35;
      v36 = v50;
      v37 = v53;
      v38 = v47;
      *a2 = v46;
      *(a2 + 16) = v38;
      v39 = v49;
      *(a2 + 32) = v48;
      *(a2 + 48) = v39;
      *(a2 + 64) = v36;
      *(a2 + 104) = 0;
      *(a2 + 112) = v37;
      goto LABEL_63;
    }

    if (v44 <= 220)
    {
      break;
    }

    if (v44 > 237)
    {
      switch(v44)
      {
        case 238:
          dht = aj_read_app14(&v46, a3);
          if (dht == 11)
          {
            goto LABEL_62;
          }

          goto LABEL_20;
        case 254:
          dht = aj_read_com(&v46);
          break;
        case 255:
          segment_id_and_length = 0;
          v28 = v52;
          *(a2 + 80) = v51;
          *(a2 + 96) = v28;
          v29 = v50;
          v30 = v53;
          v31 = v47;
          *a2 = v46;
          *(a2 + 16) = v31;
          v32 = v49;
          *(a2 + 32) = v48;
          *(a2 + 48) = v32;
          *(a2 + 64) = v29;
          *(a2 + 104) = 0;
          *(a2 + 112) = v30;
          goto LABEL_64;
        default:
LABEL_19:
          dht = aj_read_unknown_segment(&v46);
          break;
      }

      goto LABEL_20;
    }

    if (v44 == 221)
    {
      dht = aj_read_dri(&v46, a3);
      goto LABEL_20;
    }

    if (v44 == 224)
    {
      jfif = aj_read_jfif (&v46);
      if (jfif == 11 || (segment_id_and_length = jfif, !jfif))
      {
        a4[1] = 1;
        goto LABEL_62;
      }
    }

    else
    {
      if (v44 != 225 || a4[2])
      {
        goto LABEL_19;
      }

      exif = aj_read_exif (a1, &v46, a3, a4);
      if (exif == 11 || (segment_id_and_length = exif, !exif))
      {
        a4[2] = 1;
        goto LABEL_62;
      }
    }

LABEL_21:
    if (segment_id_and_length == -2)
    {
      segment_id_and_length = handle_suspension(a1, a7, a2, &v46, a5, v20, v45, SHIDWORD(v45), a4[8]);
      goto LABEL_64;
    }

    v23 = v52;
    *(a2 + 80) = v51;
    *(a2 + 96) = v23;
    v24 = v50;
    v25 = v53;
    v26 = v47;
    *a2 = v46;
    *(a2 + 16) = v26;
    v27 = v49;
    *(a2 + 32) = v48;
    *(a2 + 48) = v27;
    *(a2 + 64) = v24;
    *(a2 + 104) = 0;
    *(a2 + 112) = v25;
LABEL_63:
    v40 = add_segment_info(a1, a5, v20, v45, SHIDWORD(v45));
    if (v40)
    {
      return v40;
    }

LABEL_64:
    if (segment_id_and_length)
    {
      return segment_id_and_length;
    }
  }

  if (v44 <= 215)
  {
    v21 = v44 - 205;
LABEL_17:
    if (v21 >= 3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v44 == 216)
  {
    HIDWORD(v45) = 0;
    a4[8] = aj_istream_get_pos(&v46);
    *a4 = 1;
    goto LABEL_62;
  }

  if (v44 != 218)
  {
    if (v44 != 219)
    {
      goto LABEL_19;
    }

    dht = aj_read_dqt(&v46, a3);
    if (dht)
    {
      goto LABEL_20;
    }

    a4[5] = 1;
    goto LABEL_62;
  }

  if (a4[4])
  {
    dht = aj_read_sos(&v46, a3);
    if (!dht)
    {
      a4[3] = 1;
      goto LABEL_62;
    }

    goto LABEL_20;
  }

  aj_log_error("Parse", "No supported SOF segment found.");
  if (a4[7])
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t aj_istream_move_forward(uint64_t a1)
{
  if (!*(a1 + 80))
  {
    return 0;
  }

  v2 = *(a1 + 104);
  v3 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 104);
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v3)
    {
      v4 = *(a1 + 8);
    }
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 8);
  v9 = v7 + v8 - v4;
  *(a1 + 8) = v8 - (v4 - v6);
  if (v3)
  {
    *(a1 + 16) = v3 - (v4 - v6);
  }

  if (v2)
  {
    *(a1 + 104) = v2 - (v4 - v6);
  }

  memmove(v6, v4, v7 + v8 - v4);
  if (*(a1 + 56) == 2)
  {
    v10 = 0;
LABEL_29:
    result = 0;
    *(a1 + 32) += v10;
    return result;
  }

  v10 = 0;
  v11 = *(a1 + 40) + v9;
  v12 = *(a1 + 36);
  while (1)
  {
    v13 = *(a1 + 52);
    if (v13)
    {
      v14 = *(a1 + 48);
      if (v14 >= v13)
      {
        *(a1 + 56) = 2;
        if ((v14 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }
    }

    if (*(a1 + 56) == 1)
    {
      *(a1 + 56) = 0;
    }

    v15 = (*(a1 + 80))(v11 + v10, (v12 - (v9 + v10)), *(a1 + 64));
    if (v15 <= 0)
    {
      break;
    }

    v16 = *(a1 + 48) + v15;
    *(a1 + 48) = v16;
    v10 += v15;
    if (v10 >= 8)
    {
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_26:
      aj_log_error("Istream", "File is larger than %d bytes, aborting");
      return 9;
    }
  }

  if (!v15)
  {
    v17 = 1;
    goto LABEL_28;
  }

  if (v15 == -1)
  {
    v17 = 2;
LABEL_28:
    *(a1 + 56) = v17;
    goto LABEL_29;
  }

  aj_log_error("Istream", "File read error");
  return 9;
}

uint64_t aj_get_segment_id_and_length(uint64_t a1, unsigned int *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, int a6)
{
  v17 = 0;
  v16 = 0;
  *a3 = aj_istream_get_pos(a1);
  v15 = 0;
  result = aj_istream_peek_short(a1, &v15);
  if (!result)
  {
    result = aj_istream_read_bytes_be(a1, &v17, 1);
    if (!result)
    {
      if (v17 == 255 && v15 != 0xFFFF)
      {
        goto LABEL_6;
      }

      if (a6)
      {
        aj_log_error("Parse", "Not a valid segment marker: 0x%02X%02X", v17, HIBYTE(v15));
        return 4;
      }

      if ((v15 & 0xFF00) == 0xD800)
      {
LABEL_6:
        result = aj_istream_read_bytes_be(a1, &v17, 1);
        if (!result)
        {
          *a4 = v17;
          result = aj_istream_peek_short(a1, &v16);
          if (!result)
          {
            *a2 = bswap32(v16) >> 16;
            pos = aj_istream_get_pos(a1);
            result = 0;
            *a5 = *a2 + pos;
          }
        }
      }

      else
      {
        v14 = aj_istream_get_pos(a1);
        result = 0;
        *a3 = v14;
        *a4 = 255;
      }
    }
  }

  return result;
}

uint64_t aj_istream_read_bytes_be(uint64_t a1, int *a2, int a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  if (v6 < a3)
  {
    result = aj_istream_move_forward(a1);
    if (result)
    {
      return result;
    }

    v6 = *(a1 + 32);
  }

  if (v6 >= v3)
  {
    v8 = 0;
    if (v3)
    {
      v9 = *(a1 + 8) + 1;
      v10 = v6 - 1;
      do
      {
        *(a1 + 32) = v10;
        *(a1 + 8) = v9;
        v8 = *(v9++ - 1) | (v8 << 8);
        --v10;
        --v3;
      }

      while (v3);
    }

    result = 0;
    *a2 = v8;
  }

  else
  {
    result = 7;
    if (*(a1 + 112))
    {
      if (*(a1 + 56) == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

void applejpeg_decode_destroy(void *a1)
{
  os_log_object = aj_get_os_log_object();
  if (os_log_type_enabled(os_log_object, OS_LOG_TYPE_DEBUG))
  {
    applejpeg_decode_destroy_cold_1(a1, os_log_object, v3, v4, v5, v6, v7, v8);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  dec_free_allocations((a1 + 520), (a1 + 1621), (a1 + 1392));
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = 0;
    v12 = v10;
    v13 = &a1[v9 + 466];
    do
    {
      if (!aj_huffman_decode_is_static_table(*(v13 + v11)))
      {
        v14 = *(v13 + v11);
        if (v14)
        {
          free(v14);
          *(v13 + v11) = 0;
        }
      }

      v11 += 16;
    }

    while (v11 != 64);
    v10 = 0;
    v9 = 1;
  }

  while ((v12 & 1) != 0);
  v15 = a1[1626];
  if (v15)
  {
    free(v15);
    a1[1626] = 0;
  }

  v16 = a1[1627];
  if (v16)
  {
    free(v16);
    a1[1627] = 0;
  }

  v17 = a1[1628];
  if (v17)
  {
    free(v17);
    a1[1628] = 0;
  }

  v18 = a1[1629];
  if (v18)
  {
    free(v18);
    a1[1629] = 0;
  }

  v19 = a1[1630];
  if (v19)
  {
    free(v19);
    a1[1630] = 0;
  }

  v20 = a1[1631];
  if (v20)
  {
    free(v20);
    a1[1631] = 0;
  }

  v21 = a1[1632];
  if (v21)
  {
    free(v21);
  }

  free(a1);
}

uint64_t aj_read_dqt(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  bytes_be = aj_istream_read_bytes_be(a1, &v18, 2);
  if (!bytes_be)
  {
    if (v18 < 3)
    {
      return 0;
    }

    v7 = v18 - 2;
    v16 = a2 + 1128;
    v17 = a2 + 1112;
    v8 = a2 + 88;
LABEL_6:
    bytes_be = aj_istream_read_bytes_be(a1, &v18, 1);
    if (!bytes_be)
    {
      v9 = v18 & 0xF;
      if (v9 >= 4)
      {
        v5 = 3;
        aj_log_error("Read", "Index of quantization table is %d. Only indices 0..%d are allowed.", v18 & 0xF, 3);
        return v5;
      }

      v10 = v18 >> 4;
      if (v18 >= 0x10 && v10 != 1)
      {
        aj_log_error("Read", "Bad precision value (%d), only 0 and 1 are defined.");
        return 4;
      }

      v12 = v7 - 1;
      if (v18 <= 0xF)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v14 = v13 << 6;
      if (v7 <= v13 << 6)
      {
        aj_log_error("Read", "Not enough bytes left in header for quantization table. %d bytes remaining, requires >= %d.");
        return 4;
      }

      v15 = 0;
      while (1)
      {
        bytes_be = aj_istream_read_bytes_be(a1, &v18, v13);
        if (bytes_be)
        {
          break;
        }

        *(v8 + (v9 << 8) + v15) = v18;
        v15 += 4;
        if (v15 == 256)
        {
          v5 = 0;
          *(v17 + 4 * v9) = 1;
          *(v16 + 4 * v9) = v10;
          v7 = v12 - v14;
          if (v12 > v14)
          {
            goto LABEL_6;
          }

          return v5;
        }
      }
    }
  }

  return bytes_be;
}

uint64_t aj_read_sof(uint64_t a1, unsigned int *a2, int a3)
{
  if ((a3 - 196) <= 0xFFFFFFFB)
  {
    aj_log_error("Read", "Unsupported SOFn type");
    return 3;
  }

  v14 = 0;
  a2[20] = a3;
  result = aj_istream_read_bytes_be(a1, &v14, 2);
  if (!result)
  {
    v7 = v14;
    *(a2 + 84) = a3 == 194;
    *(a2 + 85) = (a3 & 0xC2) == 192;
    *(a2 + 86) = a3 == 195;
    result = aj_istream_read_bytes_be(a1, &v14, 1);
    if (!result)
    {
      v8 = v14;
      a2[1] = v14;
      if ((v8 | 4) != 0xC && (v8 - 2 > 0xE || !*(a2 + 86)))
      {
        aj_log_error("Read", "Precision is %d bits, only 8- and 12-bit input is supported.");
        return 3;
      }

      result = aj_istream_read_bytes_be(a1, &v14, 2);
      if (!result)
      {
        a2[3] = v14;
        result = aj_istream_read_bytes_be(a1, &v14, 2);
        if (!result)
        {
          a2[2] = v14;
          result = aj_istream_read_bytes_be(a1, &v14, 1);
          if (!result)
          {
            v9 = v14;
            *a2 = v14;
            if (a2[2] < 1 || a2[3] <= 0)
            {
              v13 = a2[2];
              aj_log_error("Read", "Width or height is <= 0 : %dx%d");
              return 3;
            }

            if (v9 - 3 >= 2 && v9 != 1)
            {
              if (v9 != 2)
              {
                aj_log_error("Read", "Component count is %d, only 1, 3 or 4 supported.");
                return 3;
              }

              if (a2[20] != 195)
              {
                aj_log_error("Read", "Component count 2 only supported for lossless JPEG.");
                return 3;
              }
            }

            if (v7 == 3 * v9 + 8)
            {
              v10 = 0;
              v11 = (a2 + 8);
              do
              {
                result = aj_istream_read_bytes_be(a1, &v14, 1);
                if (result)
                {
                  break;
                }

                v11[8] = v14;
                result = aj_istream_read_bytes_be(a1, &v14, 1);
                if (result)
                {
                  break;
                }

                v12 = v14;
                *(v11 - 4) = v14 >> 4;
                *v11 = v12 & 0xF;
                result = aj_istream_read_bytes_be(a1, &v14, 1);
                if (result)
                {
                  break;
                }

                v11[4] = v14;
                if (v10)
                {
                  if (*v11 != 1 || *(v11 - 4) != 1)
                  {
                    aj_log_error("Read", "Unsupported subsampling. Y must be undecimated");
                    return 3;
                  }
                }

                else if ((*(v11 - 4) - 1) > 1 || (*v11 - 1) >= 2)
                {
                  aj_log_error("Read", "Unsupported subsampling");
                  return 3;
                }

                result = 0;
                ++v10;
                ++v11;
              }

              while (v10 < *a2);
            }

            else
            {
              aj_log_error("Read", "Illegal length of SOF-segment.");
              return 4;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t read_tiff(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  pos = aj_istream_get_pos(a1);
  if (pos + 8 > a3)
  {
    aj_log_error("Read", "Not enough data in Exif segment");
    return 4;
  }

  v10 = pos;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v11 = aj_istream_read_bytes_be(a1, &v18, 2);
  if (v11)
  {
    return v11;
  }

  v13 = geth_little;
  v14 = getw_little;
  if (v18 != 18761)
  {
    if (v18 != 19789)
    {
      aj_log_error("Read", "Byte order not specified correctly in Exif->TIFF header");
      return 4;
    }

    v13 = geth_big;
    v14 = getw_big;
  }

  *(a4 + 40) = v14;
  *(a4 + 48) = v13;
  v11 = v13(a1, &v17);
  if (v11)
  {
    return v11;
  }

  if (v17 != 42)
  {
    aj_log_error("Read", "Byte order is wrong in Exif->TIFF header");
    return 4;
  }

  v11 = (*(a4 + 40))(a1, &v16);
  if (v11)
  {
    return v11;
  }

  if (v16 > (v10 ^ 0x7FFFFFFF))
  {
    aj_log_error("Read", "Too large IFD offset: %d");
    return 4;
  }

  v15 = read_IFD(a1, (v16 + v10), &v16, *(a4 + 40), *(a4 + 48), (a2 + 3416), a3);
  v9 = v15;
  if (v15 != -2 && v15)
  {
    aj_log_error("Read", "Unknown error while reading IFD");
  }

  return v9;
}

uint64_t getw_big(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = aj_istream_read_bytes_be(a1, &v4, 4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t read_IFD(uint64_t a1, uint64_t a2, int *a3, uint64_t (*a4)(uint64_t, int *), uint64_t (*a5)(uint64_t, __int16 *), _DWORD *a6, int a7)
{
  if (a7 - 2 < a2)
  {
    goto LABEL_2;
  }

  if ((a2 & 0x80000000) != 0)
  {
    aj_log_error("Read", "Corrupt IFD position: %d", a2);
    return 11;
  }

  pos = aj_istream_get_pos(a1);
  if (pos != a2)
  {
    if (*(a1 + 104))
    {
      if (pos >= a2)
      {
        aj_log_error("Read", "Exif segment with offsets that move backwards not supported with suspension");
        return 3;
      }

      v16 = aj_istream_get_pos(a1);
      result = aj_istream_skip_bytes(a1, a2 - v16);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = aj_istream_move_to_position(a1, a2);
      if (result)
      {
        return result;
      }
    }
  }

  v22 = 0;
  v21 = 0;
  result = a5(a1, &v22);
  if (!result)
  {
    v17 = aj_istream_get_pos(a1);
    if (v17 + 12 * v22 + 4 > a7)
    {
LABEL_2:
      aj_log_error("Read", "Exif segment ended abruply");
      return 4;
    }

    if (v22 >= 1)
    {
      for (i = 0; i < v22; ++i)
      {
        result = a5(a1, &v21);
        if (result)
        {
          return result;
        }

        if (v21 != 274)
        {
          result = aj_istream_skip_bytes(a1, 10);
          goto LABEL_25;
        }

        v24 = 0;
        v23 = 0;
        result = a5(a1, &v23);
        if (!result)
        {
          if (v23 - 13 <= 0xFFFFFFF3)
          {
            aj_log_error("Read", "erroneous data format");
LABEL_24:
            result = 4;
            goto LABEL_25;
          }

          if (v23 == 10 || v23 == 5)
          {
            aj_log_error("Read", "Rationale data format not supported");
            goto LABEL_24;
          }

          if (v23 - 11 <= 1)
          {
            aj_log_error("Read", "Floating point format not supported");
            goto LABEL_24;
          }

          result = a4(a1, &v24);
          if (result)
          {
            goto LABEL_25;
          }

          if (v24 != 1)
          {
            aj_log_error("Read", "Multiple data not supported");
            goto LABEL_24;
          }

          *a6 = 0;
          if ((0xC6uLL >> v23))
          {
            v25 = 0;
            result = aj_istream_read_bytes_be(a1, &v25, 1);
            if (result)
            {
              goto LABEL_25;
            }

            *a6 = v25;
            v19 = a1;
            v20 = 3;
LABEL_40:
            result = aj_istream_skip_bytes(v19, v20);
            if (!result)
            {
              goto LABEL_45;
            }

            goto LABEL_25;
          }

          if (v23 == 8 || v23 == 3)
          {
            result = a5(a1, &v23);
            if (result)
            {
              goto LABEL_25;
            }

            *a6 = v23;
            v19 = a1;
            v20 = 2;
            goto LABEL_40;
          }

          if (((0xA10uLL >> v23) & 1) == 0)
          {
            goto LABEL_45;
          }

          result = a4(a1, &v24);
          if (!result)
          {
            *a6 = v24;
LABEL_45:
            result = 0;
          }
        }

LABEL_25:
        if (result)
        {
          return result;
        }
      }
    }

    return a4(a1, a3);
  }

  return result;
}

uint64_t aj_read_sos(uint64_t a1, unsigned int *a2)
{
  v38 = 0;
  result = aj_istream_read_bytes_be(a1, &v38, 2);
  if (!result)
  {
    v5 = v38;
    result = aj_istream_read_bytes_be(a1, &v38, 1);
    if (!result)
    {
      v6 = v38;
      a2[834] = v38;
      v7 = *a2;
      if (v6 < 1 || v6 > v7)
      {
        aj_log_error("Read", "Component count is %d, only 1 to %d supported.");
        return 3;
      }

      if (v5 == 2 * v6 + 6)
      {
        if (v7 == v6)
        {
          if (!*(a2 + 84))
          {
            goto LABEL_19;
          }
        }

        else
        {
          *(a2 + 84) = 1;
        }

        if (*(a2 + 86))
        {
          aj_log_error("Read", "Lossless multiscan images are not supported");
          return 3;
        }

LABEL_19:
        v9 = 0;
        v10 = a2 + 835;
        v11 = 1;
        while (1)
        {
          result = aj_istream_read_bytes_be(a1, &v38, 1);
          if (result)
          {
            return result;
          }

          v12 = *a2;
          if (v12 < 1)
          {
            break;
          }

          v13 = 0;
          v14 = -v12;
          v15 = a2;
          while (v15[16] != v38)
          {
            --v13;
            ++v15;
            if (v14 == v13)
            {
              goto LABEL_35;
            }
          }

          v10[v9] = -v13;
          result = aj_istream_read_bytes_be(a1, &v38, 1);
          if (result)
          {
            goto LABEL_33;
          }

          v16 = v38;
          v15[839] = v38 >> 4;
          v15[843] = v16 & 0xF;
          if (v16 > 0x3F || (v16 & 0xF) >= 4)
          {
            aj_log_error("Read", "Corrupt scan, invalid huffman table indices. DC: %d, AC: %d");
            goto LABEL_36;
          }

          v11 = ++v9 < v6;
          if (v9 == v6)
          {
            result = 0;
LABEL_33:
            if (v11)
            {
              return result;
            }

            goto LABEL_37;
          }
        }

LABEL_35:
        aj_log_error("Read", "Component ID %d not found among declared components");
LABEL_36:
        if (v11)
        {
          return 4;
        }

LABEL_37:
        if (v6 != 1)
        {
          v24 = 0;
          if (v6 <= 2)
          {
            v25 = 2;
          }

          else
          {
            v25 = v6;
          }

          v26 = (v25 - 1);
          v27 = a2 + 836;
          v28 = 1;
          while (1)
          {
            v29 = v24 + 1;
            if (v24 + 1 < v6)
            {
              break;
            }

LABEL_53:
            ++v28;
            ++v27;
            ++v24;
            if (v29 == v26)
            {
              goto LABEL_38;
            }
          }

          v30 = v27;
          v31 = v28;
          while (1)
          {
            v32 = *v30++;
            if (v10[v24] == v32)
            {
              break;
            }

            if (v6 == ++v31)
            {
              goto LABEL_53;
            }
          }

          aj_log_error("Read", "SOS components IDs are not unique. id[%d] == id[%d] == %d");
          return 4;
        }

LABEL_38:
        result = aj_istream_read_bytes_be(a1, &v38, 1);
        if (!result)
        {
          a2[847] = v38;
          result = aj_istream_read_bytes_be(a1, &v38, 1);
          if (!result)
          {
            a2[848] = v38;
            result = aj_istream_read_bytes_be(a1, &v38, 1);
            if (!result)
            {
              v18 = v38;
              v19 = v38 >> 4;
              a2[850] = v19;
              v20 = v18 & 0xF;
              a2[849] = v20;
              v21 = a2[20];
              if (v21 == 194)
              {
                v22 = a2[847];
                v23 = a2[848];
                if (!v22 && v23 || v22 > v23 || v23 >= 64)
                {
                  v36 = a2[847];
                  aj_log_error("Read", "Bad spectral selection. Ss = %d, Se = %d.");
                  return 4;
                }

                if (v20 > 0xD || v19 && v19 != v20 + 1)
                {
                  aj_log_error("Read", "Bad successive approximation. Ah = %d, Al = %d.");
                  return 4;
                }
              }

              else
              {
                v33 = (a2 + 847);
                if (*(a2 + 84))
                {
                  v34 = a2[848];
                  if (a2[847] || v34 != 63)
                  {
                    aj_log_error("Read", "Bad spectral selection for baseline multiscan image. Ss = %d, Se = %d. Assuming Ss = 0, Se = 63.", a2[847], v34);
                    *v33 = 0x3F00000000;
                    v20 = a2[849];
                    v19 = a2[850];
                  }

                  if (v20 | v19)
                  {
                    aj_log_error("Read", "Bad successive approximation for baseline multiscan image. Al = %d, Ah = %d. Assuming Al = 0, Ah = 63.", v20, v19);
                  }
                }

                else if (v21 == 195 && *v33 >= 8)
                {
                  v37 = *v33;
                  aj_log_error("Read", "Bad lossless JPEG predictor %d.");
                  return 4;
                }
              }

              pos = aj_istream_get_pos(a1);
              result = 0;
              a2[855] = pos;
            }
          }
        }

        return result;
      }

      aj_log_error("Read", "Illegal length of SOS segment.");
      return 4;
    }
  }

  return result;
}

uint64_t add_segment_info(void *a1, int *a2, int a3, int a4, int a5)
{
  if (!a2)
  {
    return 0;
  }

  v9 = a2[1];
  if (v9 < *a2)
  {
    v10 = *(a2 + 1);
LABEL_14:
    result = 0;
    v16 = &v10[16 * v9];
    *(v16 + 1) = a4;
    *v16 = a3;
    *(v16 + 1) = a5;
    a2[1] = v9 + 1;
    return result;
  }

  if (2 * *a2 >= 2000)
  {
    v12 = 2000;
  }

  else
  {
    v12 = 2 * *a2;
  }

  if (v9 < 2000)
  {
    v14 = malloc_type_calloc(v12, 0x10uLL, 0x1000040451B5BE8uLL);
    if (v14)
    {
      v10 = v14;
      memcpy(v14, *(a2 + 1), 16 * *a2);
      v15 = *(a2 + 1);
      if (v15)
      {
        free(v15);
      }

      *(a2 + 1) = v10;
      *a1 = v10;
      *a2 = v12;
      v9 = a2[1];
      goto LABEL_14;
    }

    v17 = a2[1];
    aj_log_error("Parse", "Could not allocate memory for segment %d");
  }

  else
  {
    aj_log_error("Parse", "Number of segments exceed the maximum allowable number (%d)");
  }

  return 6;
}

uint64_t aj_read_jfif (uint64_t a1)
{
  v4 = 0;
  result = aj_istream_read_bytes_be(a1, &v4, 2);
  if (!result)
  {
    v3 = v4;
    if (v4 <= 0xF)
    {
      aj_log_error("Read", "Illegal JFIF header. Length of header is %u, must be >= 16.", v4);
    }

    return aj_istream_skip_bytes(a1, v3 - 2);
  }

  return result;
}

uint64_t aj_istream_skip_bytes(uint64_t a1, int a2)
{
  v2 = a2;
  if (*(a1 + 112) && *(a1 + 104) && *(a1 + 32) < a2)
  {
    if (a2 < 1)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        result = aj_istream_move_forward(a1);
        if (result)
        {
          break;
        }

        v5 = *(a1 + 32);
        if (!v5)
        {
          result = 7;
          if (*(a1 + 112))
          {
            if (*(a1 + 56) == 1)
            {
              return 4294967294;
            }

            else
            {
              return 7;
            }
          }

          return result;
        }

        if (v5 >= v2)
        {
          v6 = v2;
        }

        else
        {
          v6 = *(a1 + 32);
        }

        *(a1 + 8) += v6;
        *(a1 + 32) = v5 - v6;
        v7 = __OFSUB__(v2, v6);
        v2 -= v6;
        if ((v2 < 0) ^ v7 | (v2 == 0))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    v8 = (*(a1 + 48) + a2 - *(a1 + 32));

    return aj_istream_move_to_position(a1, v8);
  }

  return result;
}

uint64_t aj_init_huffman(unsigned int *a1, uint64_t a2)
{
  if (!*(a1 + 84))
  {
    v4 = 0;
    v5 = a1 + 830;
    v6 = a2 + 8;
    v22 = a1 + 318;
    v23 = a1 + 286;
    v7 = 1;
    v8 = 839;
    v21 = a1;
    while (2)
    {
      v9 = 0;
      v20 = v7;
      v10 = &a1[v8];
      do
      {
        v11 = v9 == *v10;
        if (*(v5 + 2 * v9 + v4))
        {
          v12 = v6 + 16 * v9;
          if (!*(v12 + 8 * v4))
          {
            if (aj_huffman_is_standard_table(&v23[8 * v9 + 4 * v4], &v22[128 * v9 + 64 * v4], v11, v4 ^ 1))
            {
              *(v12 + 8 * v4) = aj_huffman_decode_get_standard_table(v11, v4 ^ 1u);
            }

            else
            {
              v13 = *(v12 + 8 * v4);
              if (v13)
              {
                free(v13);
                *(v12 + 8 * v4) = 0;
              }

              v14 = malloc_type_calloc(1uLL, 0x1194uLL, 0x100004043704DA4uLL);
              *(v12 + 8 * v4) = v14;
              if (!v14)
              {
                aj_log_error("DecodeInit", "Could not allocate memory for huffman table");
                return 6;
              }

              v15 = *(v21 + 86);
              v16 = aj_huffman_decode_init();
              if (v16)
              {
                v2 = v16;
                aj_log_error("DecodeInit", "Make tables returned error code %d", v16);
                return v2;
              }

              v17 = *v21;
              v18 = v10;
              if (v17 >= 1)
              {
                while (1)
                {
                  v19 = *v18++;
                  if (v9 == v19)
                  {
                    break;
                  }

                  if (!--v17)
                  {
                    goto LABEL_10;
                  }
                }

                if (!*(*(v12 + 8 * v4) + 4496))
                {
                  aj_log_error("DecodeInit", "Huffman table (class %d, ind %d) is being used but contains no symbols", v4, v9);
                  return 4;
                }
              }
            }
          }
        }

LABEL_10:
        ++v9;
      }

      while (v9 != 4);
      v7 = 0;
      v8 = 843;
      v4 = 1;
      a1 = v21;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t applejpeg_decode_get_image_info(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 12896) == 2)
    {
      *a2 = *(a1 + 3548);
      *(a2 + 8) = *(a1 + 128);
      *(a2 + 4) = *(a1 + 120);
      *(a2 + 16) = aj_convert_SOF_type_to_jpeg_type(*(a1 + 200));
      internal_format = aj_get_internal_format(*(a1 + 120), *(a1 + 3528), *(a1 + 3532));
      result = 0;
      v6 = *(a1 + 3524);
      *(a2 + 20) = internal_format;
      *(a2 + 24) = v6;
    }

    else
    {
      aj_log_error("Decode", "Image session not opened");
      return 1;
    }
  }

  else
  {
    aj_log_error("Decode", "Cannot take NULL arguments");
    return 8;
  }

  return result;
}

BOOL aj_huffman_is_standard_table(void *a1, const void *a2, int a3, int a4)
{
  v4 = &std_huffman_luma;
  if (!a3)
  {
    v4 = &std_huffman_chroma;
  }

  v5 = &v4[4500 * (a4 == 0)];
  v6 = *v5 == *a1 && *(v5 + 1) == a1[1];
  result = 0;
  if (v6)
  {
    v7 = a4 ? 16 : 256;
    if (!memcmp(v5 + 16, a2, v7))
    {
      return 1;
    }
  }

  return result;
}

uint64_t aj_check_huffman_tables(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 3320;
  v4 = a1 + 1144;
  v5 = a1 + 1272;
LABEL_2:
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    if (*(v3 + 2 * v2 + v6))
    {
      result = aj_check_single_huffman_table((v4 + 32 * v2 + 16 * v6), (v5 + (v2 << 9) + (v6 << 8)), v6, a1);
      if (result)
      {
        return result;
      }
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      if (++v2 != 4)
      {
        goto LABEL_2;
      }

      return 0;
    }
  }
}

uint64_t aj_read_exif (uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  result = aj_istream_read_bytes_be(a2, &v11 + 1, 2);
  if (!result)
  {
    pos = aj_istream_get_pos(a2);
    v9 = HIDWORD(v11);
    v10 = (pos + HIDWORD(v11) - 2);
    *(a4 + 32) = v10;
    if (v9 <= 0xB)
    {
LABEL_3:
      *(a2 + 104) = 0;
      LODWORD(result) = aj_istream_move_to_position(a2, v10);
      if (result)
      {
        return result;
      }

      else
      {
        return 11;
      }
    }

    result = aj_istream_read_bytes_be(a2, &v11 + 1, 4);
    if (!result)
    {
      result = aj_istream_read_bytes_be(a2, &v11, 2);
      if (!result)
      {
        if (v11 == 0x4578696600000000)
        {
          result = read_tiff(a2, a3, v10, a4);
          if (result == -2)
          {
            return result;
          }

          if (!result)
          {
            *(a2 + 104) = 0;
            return aj_istream_move_to_position(a2, v10);
          }
        }

        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t aj_imageinfo_init(unsigned int *a1, uint64_t a2)
{
  *(a2 + 72) = 0;
  v2 = *a1;
  if (*a1 < 1)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 8;
    v6 = *a1;
    do
    {
      if (v4 <= *(v5 - 4))
      {
        v4 = *(v5 - 4);
      }

      *(a2 + 72) = v4;
      v8 = *v5++;
      v7 = v8;
      if (v3 <= v8)
      {
        v3 = v7;
      }

      *(a2 + 76) = v3;
      --v6;
    }

    while (v6);
  }

  if (!*(a1 + 86))
  {
    v4 *= 8;
    v3 *= 8;
    *(a2 + 72) = v4;
    *(a2 + 76) = v3;
  }

  v9 = a1[4] * a1[8];
  *(a2 + 88) = v9;
  *(a2 + 92) = v2 + v9 - 1;
  v10 = (v3 + a1[3] - 1) / v3;
  *(a2 + 80) = (v4 + a1[2] - 1) / v4;
  *(a2 + 84) = v10;
  return aj_init_huffman(a1, a2);
}

uint64_t aj_read_dht(uint64_t a1, uint64_t a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v23 = 0;
  v25[0] = 0;
  memset(v24, 0, sizeof(v24));
  result = aj_istream_read_bytes_be(a1, &v23, 2);
  if (result)
  {
    goto LABEL_27;
  }

  if (v23 < 3)
  {
LABEL_20:
    v15 = 0;
    v16 = v25;
    v17 = 1;
    do
    {
      v18 = 0;
      v19 = v17;
      *(a2 + 3328 + 4 * v15) += *v16;
      v20 = v24 + 4 * v15;
      v21 = a2 + 3320 + v15;
      do
      {
        if (*&v20[4 * v18])
        {
          *(v21 + v18) = 1;
        }

        v18 += 2;
      }

      while (v18 != 8);
      v17 = 0;
      v16 = v25 + 1;
      v15 = 1;
    }

    while ((v19 & 1) != 0);
    result = 0;
    goto LABEL_27;
  }

  v5 = v23 - 2;
LABEL_4:
  result = aj_istream_read_bytes_be(a1, &v23, 1);
  if (!result)
  {
    if (v5 <= 0x10)
    {
      aj_log_error("Read", "Not enough bytes in header for Huffman table. %d bytes remaining, requires >= 17.");
    }

    else
    {
      v6 = v23 >> 4;
      if (v23 < 0x20)
      {
        v7 = v23 & 0xF;
        if (v7 >= 4)
        {
          aj_log_error("Read", "Huffman table index is %d, only values 0 to 3 are allowed.", v7);
          result = 3;
        }

        else
        {
          v8 = v24 + 8 * v7;
          if (!*(a2 + 3320 + 2 * v7 + v6) && !*&v8[4 * v6])
          {
            ++*(v25 + v6);
          }

          v9 = 0;
          LODWORD(v10) = 0;
          v11 = a2 + 1144 + 32 * v7 + 16 * v6;
          *&v8[4 * v6] = 1;
          v12 = (a2 + 1272 + (v7 << 9) + (v6 << 8));
          while (1)
          {
            result = aj_istream_read_bytes_be(a1, &v23, 1);
            if (result)
            {
              break;
            }

            v13 = v23;
            *(v11 + v9) = v23;
            v10 = v13 + v10;
            if (++v9 == 16)
            {
              v14 = v5 - 17;
              v5 = v5 - 17 - v10;
              if (v14 < v10)
              {
                aj_log_error("Read", "Too few bytes in Huffman header. %d bytes left, requires %d bytes.");
                goto LABEL_33;
              }

              if (v10 > 256)
              {
                aj_log_error("Read", "Too many codes in Huffman table: %d codes.");
                goto LABEL_33;
              }

              if (v10 >= 1)
              {
                do
                {
                  result = aj_istream_read_bytes_be(a1, &v23, 1);
                  if (result)
                  {
                    goto LABEL_27;
                  }

                  *v12++ = v23;
                }

                while (--v10);
              }

              if (v5 > 0)
              {
                goto LABEL_4;
              }

              goto LABEL_20;
            }
          }
        }

        goto LABEL_27;
      }

      aj_log_error("Read", "Huffman table class is %d, only values 0 and 1 are allowed.");
    }

LABEL_33:
    result = 4;
  }

LABEL_27:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_read_dri(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = aj_istream_read_bytes_be(a1, &v5, 2);
  if (!result)
  {
    if (v5 == 4)
    {
      result = aj_istream_read_bytes_be(a1, &v5, 2);
      if (!result)
      {
        *(a2 + 3404) = v5;
      }
    }

    else
    {
      aj_log_error("Read", "Illegal DRI segment length.");
      return 4;
    }
  }

  return result;
}

uint64_t geth_big(uint64_t a1, _WORD *a2)
{
  v4 = 0;
  result = aj_istream_read_bytes_be(a1, &v4, 2);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t aj_check_components_and_decimation(int *a1)
{
  v2 = *a1;
  if (*a1 < 1)
  {
    v7 = 0;
  }

  else
  {
    v3 = 0;
    v4 = a1 + 8;
    v5 = *a1;
    do
    {
      v6 = *v4 > 1 || *(v4 - 4) > 1;
      v3 |= v6;
      ++v4;
      --v5;
    }

    while (v5);
    v7 = v3 != 0;
    if (v3 && v2 > 3)
    {
      aj_log_error("Parse", "Images with 4 components and decimation not supported");
      return 3;
    }
  }

  if ((v2 - 5) <= 0xFFFFFFFB && a1[1] >= 9)
  {
    aj_log_error("Parse", "Only 1-4 component 12-bit jpegs are supported");
    return 3;
  }

  if (a1[852])
  {
    v9 = a1[853];
    if (v9)
    {
      if (v9 >= 3)
      {
        aj_log_error("Parse", "Unknown/unsupported APP14 transform");
        return 3;
      }
    }

    else
    {
      v11 = !v7;
      if (v2 == 1)
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        aj_log_error("Parse", "Unsupported decimation with APP14 transform");
        return 3;
      }
    }
  }

  if (*(a1 + 86))
  {
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        v13 = &a1[i];
        if (v13[12])
        {
          aj_log_error("Parse", "Quantization table index %d for component %d is out of bounds for lossless JPEG, setting to 0", v13[12], i);
          v13[12] = 0;
          v2 = *a1;
        }
      }
    }
  }

  else if (v2 >= 1)
  {
    v14 = 0;
    while (1)
    {
      v15 = a1[v14 + 12];
      if (v15 >= 4)
      {
        aj_log_error("Parse", "Quantization table index for component %d is out of bounds: %d");
        return 4;
      }

      if (!a1[v15 + 278])
      {
        break;
      }

      if (a1[20] == 192 && a1[v15 + 282])
      {
        aj_log_error("Parse", "16-bit quantization tables not allowed for Baseline DCT JPEG (SOF0). Attempting to decode anyway.");
        v2 = *a1;
      }

      if (++v14 >= v2)
      {
        goto LABEL_40;
      }
    }

    aj_log_error("Parse", "Trying to use quantization table that is uninitialized");
    return 4;
  }

LABEL_40:
  v16 = a1[834];
  if (v16 >= 1)
  {
    v17 = a1 + 835;
    v18 = *(a1 + 85);
    v19 = (a1 + 830);
    while (1)
    {
      v21 = *v17++;
      v20 = v21;
      if (!*(a1 + 85))
      {
        v22 = *(a1 + 84);
        if ((!*(a1 + 84) || a1[847]) && !*(a1 + 86))
        {
          goto LABEL_50;
        }
      }

      v23 = a1[v20 + 839];
      if (v23 >= 4)
      {
        aj_log_error("Parse", "Huffman DC index for component %d is out of bounds: %d");
        return 4;
      }

      if (!*(v19 + 2 * v23))
      {
        v25 = a1[v20 + 839];
        aj_log_error("Parse", "Trying to use DC huffman table #%d that is uninitialized");
        return 4;
      }

      if (!*(a1 + 85))
      {
        break;
      }

LABEL_52:
      v24 = a1[v20 + 843];
      if (v24 >= 4)
      {
        aj_log_error("Parse", "Huffman AC index for component %d is out of bounds: %d");
        return 4;
      }

      if (!*(v19 + 2 * v24 + 1))
      {
        aj_log_error("Parse", "Trying to use AC huffman table #%d that is uninitialized");
        return 4;
      }

LABEL_54:
      if (!--v16)
      {
        goto LABEL_55;
      }
    }

    v22 = *(a1 + 84);
LABEL_50:
    if (!v22 || a1[847] < 1)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

LABEL_55:
  if (v2 != 1 || a1[4] <= 1 && a1[8] < 2)
  {
    return 0;
  }

  result = 0;
  a1[8] = 1;
  a1[4] = 1;
  return result;
}

uint64_t aj_check_single_huffman_table(uint8x16_t *a1, char *a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 4);
  v5 = vmovl_high_u8(*a1);
  v6 = vmovl_u8(*a1->i8);
  v7 = vaddvq_s32(vaddq_s32(vaddl_u16(*v6.i8, *v5.i8), vaddl_high_u16(v6, v5)));
  if (!a3)
  {
    if (v4 == 8)
    {
      v10 = 11;
    }

    else
    {
      v10 = 15;
    }

    if (*(a4 + 86))
    {
      v11 = 17;
    }

    else
    {
      v11 = v10;
    }

    if (v7)
    {
      while (1)
      {
        v12 = *a2++;
        if (v11 < v12)
        {
          break;
        }

        if (!--v7)
        {
          return 0;
        }
      }

      aj_log_error("Parse", "Bogus huffman table. 0x%02X is not a legal symbol for %d-bit DC.");
      return 4;
    }

    return 0;
  }

  if (v4 == 8)
  {
    v8 = 10;
  }

  else
  {
    v8 = 14;
  }

  if (!v7)
  {
    return 0;
  }

  while (1)
  {
    v9 = *a2++;
    if ((v9 & 0xFu) > v8)
    {
      break;
    }

    if (!--v7)
    {
      return 0;
    }
  }

  aj_log_error("Parse", "Bogus huffman table. 0x%02X is not a legal symbol for %d-bit AC.");
  return 4;
}

uint64_t aj_read_unknown_segment(uint64_t a1)
{
  v5 = 0;
  result = aj_istream_read_bytes_be(a1, &v5, 2);
  if (!result)
  {
    *(a1 + 104) = 0;
    v3 = v5;
    if (v5 < 3)
    {
      return 0;
    }

    pos = aj_istream_get_pos(a1);
    result = aj_istream_move_to_position(a1, (v3 + pos - 2));
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *aj_huffman_decode_get_standard_table(int a1, int a2)
{
  v2 = &std_huffman_luma;
  if (!a1)
  {
    v2 = &std_huffman_chroma;
  }

  return &v2[4500 * (a2 == 0)];
}

uint64_t aj_get_internal_format(int a1, int a2, int a3)
{
  if (!a2)
  {
    if ((a1 - 1) < 4)
    {
      return dword_240AB61C0[a1 - 1];
    }

    return 1;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (a3)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      if (a1 != 4)
      {
        return 1;
      }

      if (a3)
      {
        return 5;
      }

      else
      {
        return 4;
      }
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 6;
      }

      return 1;
    }

    return 0;
  }
}

uint64_t aj_convert_SOF_type_to_jpeg_type(int a1)
{
  if (a1 == 194)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 195);
  }
}

uint64_t applejpeg_decode_get_chroma_subsampling(_DWORD *a1)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  if (!a1)
  {
    aj_log_error("Decode", "Image session is NULL");
    return 0xFFFFFFFFLL;
  }

  if (a1[3224] != 2)
  {
    aj_log_error("Decode", "Image session not opened");
    return 0xFFFFFFFFLL;
  }

  if (applejpeg_decode_get_image_info(a1, &v8))
  {
    aj_log_error("Decode", "get_image_info returned error: %d");
    return 0xFFFFFFFFLL;
  }

  if (!DWORD1(v9))
  {
    return 4;
  }

  v3 = a1[38];
  if (v3 == 2)
  {
    v6 = a1[34];
    if (v6 == 2)
    {
      v7 = 3;
    }

    else
    {
      v7 = -1;
    }

    if (v6 == 1)
    {
      return 2;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if (v3 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = a1[34];
    if (v4 == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = -1;
    }

    if (v4 == 1)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }
}

BOOL aj_huffman_decode_is_static_table(char *a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    v4 = &std_huffman_luma + 4500 * v2 == a1 || &std_huffman_chroma + 4500 * v2 == a1;
    if (v1)
    {
      break;
    }

    v1 = 1;
    v2 = 1;
  }

  while (!v4);
  return v4;
}

void dec_free_allocations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    aj_bufferprocessor_free_chain(a1, a3);
    aj_rowbuffer_destroy((a3 + 152));
    v6 = *(a1 + 6952);
    if (v6 && *(a1 + 6948) >= 2)
    {
      v7 = 0;
      v8 = (v6 + 168);
      do
      {
        aj_bufferprocessor_free_chain(a1, (v8 - 38));
        aj_rowbuffer_destroy(v8);
        ++v7;
        v8 += 418;
      }

      while (v7 < *(a1 + 6948) - 1);
    }

    v9 = 0;
    v10 = a2 + 8;
    do
    {
      v11 = *(v10 + v9);
      if (v11)
      {
        free(v11);
        *(v10 + v9) = 0;
      }

      v9 += 8;
    }

    while (v9 < 0x18);
    *(a1 + 16) = 0;
  }
}

uint64_t aj_huffman_decode_init()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v86 = *MEMORY[0x277D85DE8];
  bzero(v85, 0x400uLL);
  bzero(v84, 0x400uLL);
  bzero(v83, 0x800uLL);
  v10 = 0;
  v11 = 0;
  v2[4498] = v4;
  *v2 = *v9;
  *(v2 + 2248) = 0;
  do
  {
    v11 += v2[v10];
    *(v2 + 2248) = v11;
    ++v10;
  }

  while (v10 != 16);
  if ((v11 - 256) < 0xFF01u)
  {
    aj_log_error("Huff", "Illegal number of symbols in huffman table. nsyms = %d");
LABEL_87:
    result = 7;
    goto LABEL_88;
  }

  v12 = v2 + 16;
  memcpy(v2 + 16, v8, v11);
  v13 = 0;
  for (i = 1; i != 17; ++i)
  {
    v15 = v2[i - 1];
    if (v2[i - 1])
    {
      v16 = &v85[v13];
      v13 += v15;
      do
      {
        *v16++ = i;
        --v15;
      }

      while (v15);
    }
  }

  v17 = v85[0];
  if (v85[0])
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = v85[0];
    while (1)
    {
      if (v21 == v20)
      {
        v22 = &v84[v18];
        v23 = &v85[v18 + 1];
        do
        {
          *v22++ = v19++;
          v25 = *v23++;
          v24 = v25;
          ++v18;
        }

        while (v25 == v21);
        v26 = v24 != 0;
      }

      else
      {
        v26 = 1;
      }

      if (v19 > 1 << v20)
      {
        aj_log_error("Huff", "Illegal huffmann code: too large for length (0x%08x > 0x%08x)");
        goto LABEL_87;
      }

      if (v19 == 1 << v20)
      {
        if (v18 >= 256)
        {
          v26 = 0;
        }

        if (!v6 || v26)
        {
          break;
        }
      }

      v19 *= 2;
      ++v20;
      v21 = v85[v18];
      if (!v21)
      {
        goto LABEL_24;
      }
    }

    aj_log_error("Huff", "Illegal huffmann code: may not be all ones");
    goto LABEL_87;
  }

LABEL_24:
  v27 = 0;
  v28 = 0;
  v29 = v2 + 336;
  v30 = 16;
  v31 = v2;
  do
  {
    *v29 = v28;
    v32 = *v31++;
    v28 += v32;
    v27 += v32 << (v30 + 14);
    *(v29 - 16) = v27;
    ++v29;
    --v30;
  }

  while (v30);
  v33 = v2;
  do
  {
    v34 = v30 + 1;
    v35 = v33 - 1;
    if (v30 == 15)
    {
      break;
    }

    v36 = v33[15];
    --v33;
    ++v30;
  }

  while (!v36);
  if (v34 != 1)
  {
    v37 = -v34;
    do
    {
      *&v2[4 * v37++ + 404] += v35[16];
    }

    while (v37 != -1);
  }

  *(v2 + 83) = 0x80000000;
  memset_pattern16(v2 + 400, &unk_240AB08F0, 0x800uLL);
  for (j = 0; j != 2048; j += 16)
  {
    v39 = &v2[j + 2448];
    *v39 = 0;
    *(v39 + 1) = 0;
  }

  v40 = 0;
  v41 = v2[4498];
  v42 = v2 + 400;
  do
  {
    v43 = v85[v40];
    if (!v43)
    {
      break;
    }

    v44 = v12[v40];
    if (!v41 || v44 <= 0xF)
    {
      if (v43 > 9)
      {
        break;
      }

      v45 = v44 & 0xF;
      v46 = v43 + v45;
      v47 = v84[v40] << (9 - v43);
      if (v43 + v45 > 9)
      {
        if (v43 != -22)
        {
          v54 = &v42[4 * v47];
          v55 = (1 << (9 - v43)) + 1;
          do
          {
            *v54++ = (v43 << 8) | (v12[v40] << 18) | (v12[v40] >> 4) | 0x20000;
            --v55;
          }

          while (v55 > 1);
        }
      }

      else
      {
        v48 = 0;
        do
        {
          if (v46 != -22)
          {
            if (v48 >> (v45 - 1))
            {
              v49 = 0;
            }

            else
            {
              v49 = (-1 << v45) + 1;
            }

            v50 = (v49 + v48) << 18;
            if (!v45)
            {
              v50 = 0;
            }

            v51 = v50 | (v46 << 8);
            v52 = &v42[4 * ((v48 << (9 - v46)) + v47)];
            v53 = (1 << (9 - v46)) + 1;
            do
            {
              *v52++ = v51 | (v12[v40] >> 4);
              --v53;
            }

            while (v53 > 1);
          }

          ++v48;
        }

        while (!(v48 >> v45));
      }
    }

    ++v40;
  }

  while (v40 != 256);
  if (!v41)
  {
    LODWORD(v56) = 0;
    for (k = 1; k != 10; ++k)
    {
      v58 = v2[k - 1];
      if (v2[k - 1])
      {
        v59 = 0;
        v56 = v56;
        v60 = (1 << (9 - k));
        v61 = (v60 + 3) & 0x1FFFFFFFCLL;
        v62 = vdupq_n_s64(v60 - 1);
        do
        {
          v63 = 0;
          v64 = k + (v12[v56] << 8);
          v65 = &v83[(v84[v56] << (9 - k)) + 2];
          do
          {
            v66 = vdupq_n_s64(v63);
            v67 = vmovn_s64(vcgeq_u64(v62, vorrq_s8(v66, xmmword_240AB0610)));
            if (vuzp1_s16(v67, 2).u8[0])
            {
              *(v65 - 2) = v64;
            }

            if (vuzp1_s16(v67, 2).i8[2])
            {
              *(v65 - 1) = v64;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v62, vorrq_s8(v66, xmmword_240AB08E0)))).i32[1])
            {
              *v65 = v64;
              v65[1] = v64;
            }

            v63 += 4;
            v65 += 4;
          }

          while (v61 != v63);
          ++v59;
          ++v56;
        }

        while (v59 != v58);
      }
    }

    v68 = 0;
    do
    {
      if (v17 <= 9)
      {
        v69 = 0;
        v70 = 0;
        v73 = v68 << 23;
        v72 = 9;
        while (1)
        {
          v74 = v83[v73 >> 23];
          if (v74 - 1 >= v72)
          {
            LOBYTE(v72) = 0;
LABEL_78:
            v71 = 0;
            goto LABEL_80;
          }

          if (v74 <= 0xFF)
          {
            break;
          }

          v75 = ((v74 >> 8) & 0xF) + v74;
          v69 += (v74 >> 12) + 1;
          v72 = (v72 - v75) & ~((v72 - v75) >> 31);
          v73 <<= v75;
          v70 += v75;
          if (v72 < v17)
          {
            goto LABEL_78;
          }
        }

        v72 = (v72 - v74) & ~((v72 - v74) >> 31);
        v70 += v74;
        v71 = 0x10000;
      }

      else
      {
        v69 = 0;
        v70 = 0;
        v71 = 0;
        LOBYTE(v72) = 9;
      }

LABEL_80:
      v76 = 0;
      v77 = v69 + (v70 << 8) + v71;
      v78 = v68;
      v79 = &v2[4 * v68 + 2448];
      do
      {
        v80 = v78 + v76;
        *(v79 + 4 * v76++) = v77;
      }

      while (v80 <= 0x1FE && !(v76 >> v72));
      v68 = v78 + v76;
    }

    while (v80 <= 0x1FE);
  }

  result = 0;
LABEL_88:
  v82 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_idct_s4_2x4_nearest(unsigned int *a1, void *a2, uint64_t a3)
{
  v3.i64[0] = 0x400040004000400;
  v3.i64[1] = 0x400040004000400;
  v4 = a1[4];
  v5 = (a2[1] + a3);
  v6 = vaddq_s16(*a1, v4);
  v7 = vsubq_s16(vtrn1q_s16(*a1, v4), vtrn2q_s16(*a1, v4)).u64[0];
  v8 = vsubq_s16(*a1, v4);
  LODWORD(v9) = 0;
  WORD2(v9) = 0;
  HIWORD(v9) = v7.i16[1];
  v8.i16[2] = v7.i16[0];
  *v6.i8 = vzip1_s32(*v6.i8, v7);
  v10 = vzip1q_s64(v6, vsubq_s16(v8, v9));
  *v10.i8 = vqrshrun_n_s16(vaddq_s16(vpaddq_s16(v10, v10), v3), 3uLL);
  *v10.i8 = vzip1_s8(*v10.i8, *v10.i8);
  *(*a2 + a3) = v10.i32[0];
  *v5 = v10.i32[1];
  return 4;
}

int16x4_t *aj_block_dequantize_s1(int16x4_t *a1, int32x4_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2 = a2 + 2;
  v5 = *v2;
  v6 = v2[1];
  v2 += 2;
  v7 = *v2;
  v8 = v2[1];
  v2 += 2;
  v9 = *v2;
  v10 = v2[1];
  v2 += 2;
  v11 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmulq_s32(vmovl_s16(a1[2]), v5), 0xCuLL), vmulq_s32(vmovl_high_s16(*a1[2].i8), v6), 0xCuLL);
  v12 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmulq_s32(vmovl_s16(a1[4]), v7), 0xCuLL), vmulq_s32(vmovl_high_s16(*a1[4].i8), v8), 0xCuLL);
  v13 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmulq_s32(vmovl_s16(a1[6]), v9), 0xCuLL), vmulq_s32(vmovl_high_s16(*a1[6].i8), v10), 0xCuLL);
  *a1->i8 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmulq_s32(vmovl_s16(*a1), v3), 0xCuLL), vmulq_s32(vmovl_high_s16(*a1->i8), v4), 0xCuLL);
  *a1[2].i8 = v11;
  v14 = a1 + 4;
  *v14->i8 = v12;
  *v14[2].i8 = v13;
  v14 += 4;
  v15 = *v2;
  v16 = v2[1];
  v2 += 2;
  v17 = *v2;
  v18 = v2[1];
  v2 += 2;
  v19 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmulq_s32(vmovl_s16(v14[2]), v17), 0xCuLL), vmulq_s32(vmovl_high_s16(*v14[2].i8), v18), 0xCuLL);
  v20 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmulq_s32(vmovl_s16(v14[4]), *v2), 0xCuLL), vmulq_s32(vmovl_high_s16(*v14[4].i8), v2[1]), 0xCuLL);
  v21 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmulq_s32(vmovl_s16(v14[6]), v2[2]), 0xCuLL), vmulq_s32(vmovl_high_s16(*v14[6].i8), v2[3]), 0xCuLL);
  *v14->i8 = vqrshrn_high_n_s32(vqrshrn_n_s32(vmulq_s32(vmovl_s16(*v14), v15), 0xCuLL), vmulq_s32(vmovl_high_s16(*v14->i8), v16), 0xCuLL);
  *v14[2].i8 = v19;
  v14 += 4;
  *v14->i8 = v20;
  *v14[2].i8 = v21;
  return v14 + 4;
}

uint64_t aj_idct_s1_4x8(int16x8_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = vaddq_s16(v8, v4);
  v10 = vaddq_s16(*a1, v6);
  v11 = vsubq_s16(*a1, v6);
  v12 = vqrdmulhq_lane_s16(vsubq_s16(v4, v8), 0x30FC273D5A824546, 1);
  v13 = vqshlq_n_s16(a1[7], 1uLL);
  v14 = vaddq_s16(v5, v7);
  v15 = vsubq_s16(v7, v5);
  v16 = vaddq_s16(v3, v13);
  v17 = vsubq_s16(v3, v13);
  v18 = vaddq_s16(v16, v14);
  v19 = vaddq_s16(v9, v12);
  v20 = vaddq_s16(v10, v19);
  v21 = vsubq_s16(v10, v19);
  v22 = vqrdmulhq_lane_s16(vaddq_s16(v15, v17), 0x30FC273D5A824546, 3);
  v23 = vqrdmulhq_lane_s16(vsubq_s16(v16, v14), 0x30FC273D5A824546, 1);
  v24 = vsubq_s16(v11, v12);
  v25 = vaddq_s16(v11, v12);
  v26 = vsubq_s16(vaddq_s16(vqrdmulhq_lane_s16(v17, 0x30FC273D5A824546, 2), v17), v22);
  v27 = vaddq_s16(vqrdmulhq_lane_s16(v15, 0x30FC273D5A824546, 0), v22);
  v28 = vaddq_s16(v18, v26);
  v29 = vaddq_s16(v26, v23);
  v30 = vaddq_s16(v27, v23);
  v31 = vaddq_s16(v20, v28);
  v32 = vaddq_s16(v25, v29);
  v33 = vaddq_s16(v24, v30);
  v34 = vaddq_s16(v21, v27);
  v35 = vsubq_s16(v21, v27);
  v36 = vsubq_s16(v24, v30);
  v37 = vsubq_s16(v25, v29);
  v38 = vsubq_s16(v20, v28);
  v39 = vtrn1q_s16(v31, v32);
  v40 = vtrn2q_s16(v31, v32);
  v41 = vtrn1q_s16(v33, v34);
  v42 = vtrn2q_s16(v33, v34);
  v43 = vtrn1q_s16(v35, v36);
  v44 = vtrn2q_s16(v35, v36);
  v45 = vtrn1q_s16(v37, v38);
  v46 = vtrn2q_s16(v37, v38);
  v47 = vtrn1q_s32(v39, v41);
  v48 = vtrn2q_s32(v39, v41);
  v49 = vtrn1q_s32(v40, v42);
  v50 = vtrn2q_s32(v40, v42);
  v51 = vtrn1q_s32(v43, v45);
  v52 = vtrn2q_s32(v43, v45);
  v53 = vtrn1q_s32(v44, v46);
  v54 = vtrn2q_s32(v44, v46);
  v55 = vtrn1q_s64(v47, v51);
  v56 = vtrn2q_s64(v47, v51);
  v57 = vtrn1q_s64(v49, v53);
  v58 = vtrn2q_s64(v49, v53);
  v59 = vtrn1q_s64(v48, v52);
  v60 = vtrn2q_s64(v48, v52);
  v61 = vtrn1q_s64(v50, v54);
  v62 = vtrn2q_s64(v50, v54);
  v64 = *a2;
  v65 = a2[1];
  v63 = a2 + 2;
  v66 = vaddq_s16(v60, v59);
  v67 = vaddq_s16(v55, v56);
  v68 = vsubq_s16(v55, v56);
  v69 = vqrdmulhq_lane_s16(vsubq_s16(v59, v60), 0x30FC273D5A824546, 1);
  v70 = vqshlq_n_s16(v62, 1uLL);
  v71 = vaddq_s16(v61, v58);
  v72 = vsubq_s16(v58, v61);
  v73 = vaddq_s16(v57, v70);
  v74 = vsubq_s16(v57, v70);
  v75 = vaddq_s16(v66, v69);
  v76 = vqrdmulhq_lane_s16(vaddq_s16(v72, v74), 0x30FC273D5A824546, 3);
  v77 = vqrdmulhq_lane_s16(vsubq_s16(v73, v71), 0x30FC273D5A824546, 1);
  v78 = vsubq_s16(vaddq_s16(vqrdmulhq_lane_s16(v74, 0x30FC273D5A824546, 2), v74), v76);
  v79 = vaddq_s16(vqrdmulhq_lane_s16(v72, 0x30FC273D5A824546, 0), v76);
  _X3 = (v64 + a3);
  _X4 = (v65 + a3);
  _X5 = (*v63 + a3);
  _X6 = (v63[1] + a3);
  __asm
  {
    PRFM            #0x11, [X3]
    PRFM            #0x11, [X4]
    PRFM            #0x11, [X5]
    PRFM            #0x11, [X6]
  }

  *_X3 = vadd_s8(vqrshrn_n_s16(vaddq_s16(vaddq_s16(v67, v75), vaddq_s16(vaddq_s16(v73, v71), v78)), 5uLL), 0x8080808080808080);
  *_X4 = vadd_s8(vqrshrn_n_s16(vaddq_s16(vsubq_s16(v68, v69), vaddq_s16(v79, v77)), 5uLL), 0x8080808080808080);
  *_X5 = vadd_s8(vqrshrn_n_s16(vsubq_s16(vsubq_s16(v67, v75), v79), 5uLL), 0x8080808080808080);
  *_X6 = vadd_s8(vqrshrn_n_s16(vsubq_s16(vaddq_s16(v68, v69), vaddq_s16(v78, v77)), 5uLL), 0x8080808080808080);
  return 8;
}

uint8x8_t **aj_icol_row_444_to_rgba(uint8x8_t **result, uint8x8_t **a2, uint8x8_t **a3, int16x8_t *a4, double a5, double a6, uint64x2_t a7, uint64x2_t a8, uint64x2_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  v12 = vdupq_n_s8(0x80u).u64[0];
  v13 = vdupq_n_s8(0xFFu);
  v14 = *result;
  v15 = *a2;
  v16 = *a3;
  for (i = a12 >> 3; i; --i)
  {
    v18 = *v14++;
    v19 = *v15++;
    v20 = *v16++;
    v21 = vshll_n_u8(v18, 7uLL);
    v22 = vsubl_u8(v19, v12);
    v23 = vsubl_u8(v20, v12);
    *a9.i8 = vqrshrun_n_s16(vqaddq_s16(v21, vmulq_lane_s16(v22, 0xE3005B002C00B3, 3)), 7uLL);
    *a7.i8 = vqrshrun_n_s16(vqaddq_s16(v21, vmulq_n_s16(v23, 179)), 7uLL);
    *a8.i8 = vqrshrun_n_s16(vqsubq_s16(v21, vqaddq_s16(vmulq_lane_s16(v22, 0xE3005B002C00B3, 1), vmulq_lane_s16(v23, 0xE3005B002C00B3, 2))), 7uLL);
    v24 = vzip1q_s8(a7, a8);
    v25 = vzip1q_s8(a9, v13);
    *a4 = vzip1q_s16(v24, v25);
    a4[1] = vzip2q_s16(v24, v25);
    a4 += 2;
  }

  if ((a12 & 7) != 0)
  {
    v26 = vshll_n_u8(*v14, 7uLL);
    v27 = vsubl_u8(*v15, v12);
    v28 = vsubl_u8(*v16, v12);
    *a9.i8 = vqrshrun_n_s16(vqaddq_s16(v26, vmulq_lane_s16(v27, 0xE3005B002C00B3, 3)), 7uLL);
    *a7.i8 = vqrshrun_n_s16(vqaddq_s16(v26, vmulq_n_s16(v28, 179)), 7uLL);
    *a8.i8 = vqrshrun_n_s16(vqsubq_s16(v26, vqaddq_s16(vmulq_lane_s16(v27, 0xE3005B002C00B3, 1), vmulq_lane_s16(v28, 0xE3005B002C00B3, 2))), 7uLL);
    v29 = a12 & 7;
    do
    {
      a4->i8[0] = a7.i8[0];
      a4->i8[1] = a8.i8[0];
      a4->i8[2] = a9.i8[0];
      a4->i8[3] = v13.i8[0];
      a4 = (a4 + 4);
      a7 = vshrq_n_u64(a7, 8uLL);
      a8 = vshrq_n_u64(a8, 8uLL);
      a9 = vshrq_n_u64(a9, 8uLL);
      --v29;
    }

    while (v29);
  }

  return result;
}

uint8x16_t **aj_icol_row_420_to_rgb(uint8x16_t **result, uint8x8_t **a2, uint8x8_t **a3, char *a4, char *a5, int a6, unsigned int a7)
{
  v11 = vdupq_n_s8(0x80u).u64[0];
  if (a6 >= 1)
  {
    v12 = *result;
    v13 = *a2;
    v14 = *a3;
    if (a6 == 1)
    {
      for (i = a7 >> 4; i; --i)
      {
        v57 = *v12++;
        v58 = *v13++;
        v59 = *v14++;
        v60 = vsubl_u8(v58, v11);
        v61 = vsubl_u8(v59, v11);
        v62 = vmulq_lane_s16(v60, 0xE3005B002C00B3, 3);
        v63 = vmulq_n_s16(v61, 179);
        v64 = vqaddq_s16(vmulq_lane_s16(v60, 0xE3005B002C00B3, 1), vmulq_lane_s16(v61, 0xE3005B002C00B3, 2));
        v65 = vshll_n_u8(*v57.i8, 7uLL);
        v85.val[2] = vqrshrun_n_s16(vqaddq_s16(v65, vzip1q_s16(v62, v62)), 7uLL);
        v85.val[0] = vqrshrun_n_s16(vqaddq_s16(v65, vzip1q_s16(v63, v63)), 7uLL);
        v85.val[1] = vqrshrun_n_s16(vqsubq_s16(v65, vzip1q_s16(v64, v64)), 7uLL);
        vst3_s8(a4, v85);
        v66 = a4 + 24;
        v67 = vshll_high_n_u8(v57, 7uLL);
        v85.val[2] = vqrshrun_n_s16(vqaddq_s16(v67, vzip2q_s16(v62, v62)), 7uLL);
        v85.val[0] = vqrshrun_n_s16(vqaddq_s16(v67, vzip2q_s16(v63, v63)), 7uLL);
        v85.val[1] = vqrshrun_n_s16(vqsubq_s16(v67, vzip2q_s16(v64, v64)), 7uLL);
        vst3_s8(v66, v85);
        a4 = v66 + 24;
      }

      v68 = a7 & 0xF;
      if ((a7 & 0xF) != 0)
      {
        v69 = *v12;
        v70 = vsubl_u8(*v13, v11);
        v71 = vsubl_u8(*v14, v11);
        v72 = vmulq_lane_s16(v70, 0xE3005B002C00B3, 3);
        v73 = vmulq_n_s16(v71, 179);
        v74 = vqaddq_s16(vmulq_lane_s16(v70, 0xE3005B002C00B3, 1), vmulq_lane_s16(v71, 0xE3005B002C00B3, 2));
        v75 = vzip2q_s16(v72, v72);
        v76 = vzip2q_s16(v73, v73);
        v77 = vzip2q_s16(v74, v74);
        v78 = vzip1q_s16(v72, v72);
        v79 = vzip1q_s16(v73, v73);
        v80 = vzip1q_s16(v74, v74);
        if (!(v68 >> 3))
        {
          goto LABEL_16;
        }

        v81 = vshll_n_u8(*v69.i8, 7uLL);
        v86.val[2] = vqrshrun_n_s16(vqaddq_s16(v81, v78), 7uLL);
        v86.val[0] = vqrshrun_n_s16(vqaddq_s16(v81, v79), 7uLL);
        v86.val[1] = vqrshrun_n_s16(vqsubq_s16(v81, v80), 7uLL);
        vst3_s8(a4, v86);
        a4 += 24;
        v78 = v75;
        v79 = v76;
        v80 = v77;
        v69.i64[0] = v69.i64[1];
        v68 -= 8;
        if (v68)
        {
LABEL_16:
          v82 = vshll_n_u8(*v69.i8, 7uLL);
          *v9.i8 = vqrshrun_n_s16(vqaddq_s16(v82, v78), 7uLL);
          *v7.i8 = vqrshrun_n_s16(vqaddq_s16(v82, v79), 7uLL);
          *v8.i8 = vqrshrun_n_s16(vqsubq_s16(v82, v80), 7uLL);
          do
          {
            *a4 = v7.i8[0];
            a4[1] = v8.i8[0];
            a4[2] = v9.i8[0];
            a4 += 3;
            v7 = vshrq_n_u64(v7, 8uLL);
            v8 = vshrq_n_u64(v8, 8uLL);
            v9 = vshrq_n_u64(v9, 8uLL);
            --v68;
          }

          while (v68);
        }
      }
    }

    else
    {
      v15 = a7 >> 4;
      for (j = result[1]; v15; --v15)
      {
        v17 = *v12++;
        v18 = *j++;
        v19 = *v13++;
        v20 = *v14++;
        v21 = vsubl_u8(v19, v11);
        v22 = vsubl_u8(v20, v11);
        v23 = vmulq_lane_s16(v21, 0xE3005B002C00B3, 3);
        v24 = vmulq_n_s16(v22, 179);
        v25 = vqaddq_s16(vmulq_lane_s16(v21, 0xE3005B002C00B3, 1), vmulq_lane_s16(v22, 0xE3005B002C00B3, 2));
        v26 = vzip2q_s16(v23, v23);
        v27 = vzip2q_s16(v24, v24);
        v28 = vzip2q_s16(v25, v25);
        v29 = vzip1q_s16(v23, v23);
        v30 = vzip1q_s16(v24, v24);
        v31 = vzip1q_s16(v25, v25);
        v32 = vshll_n_u8(*v17.i8, 7uLL);
        v83.val[2] = vqrshrun_n_s16(vqaddq_s16(v32, v29), 7uLL);
        v83.val[0] = vqrshrun_n_s16(vqaddq_s16(v32, v30), 7uLL);
        v83.val[1] = vqrshrun_n_s16(vqsubq_s16(v32, v31), 7uLL);
        vst3_s8(a4, v83);
        v33 = a4 + 24;
        v34 = vshll_high_n_u8(v17, 7uLL);
        v83.val[2] = vqrshrun_n_s16(vqaddq_s16(v34, v26), 7uLL);
        v83.val[0] = vqrshrun_n_s16(vqaddq_s16(v34, v27), 7uLL);
        v83.val[1] = vqrshrun_n_s16(vqsubq_s16(v34, v28), 7uLL);
        vst3_s8(v33, v83);
        a4 = v33 + 24;
        v35 = vshll_n_u8(*v18.i8, 7uLL);
        v83.val[2] = vqrshrun_n_s16(vqaddq_s16(v35, v29), 7uLL);
        v83.val[0] = vqrshrun_n_s16(vqaddq_s16(v35, v30), 7uLL);
        v83.val[1] = vqrshrun_n_s16(vqsubq_s16(v35, v31), 7uLL);
        vst3_s8(a5, v83);
        v36 = a5 + 24;
        v37 = vshll_high_n_u8(v18, 7uLL);
        v83.val[2] = vqrshrun_n_s16(vqaddq_s16(v37, v26), 7uLL);
        v83.val[0] = vqrshrun_n_s16(vqaddq_s16(v37, v27), 7uLL);
        v83.val[1] = vqrshrun_n_s16(vqsubq_s16(v37, v28), 7uLL);
        vst3_s8(v36, v83);
        a5 = v36 + 24;
      }

      v38 = a7 & 0xF;
      if ((a7 & 0xF) != 0)
      {
        v39 = *v12;
        v40 = *j;
        v41 = vsubl_u8(*v13, v11);
        v42 = vsubl_u8(*v14, v11);
        v43 = vmulq_lane_s16(v41, 0xE3005B002C00B3, 3);
        v44 = vmulq_n_s16(v42, 179);
        v45 = vqaddq_s16(vmulq_lane_s16(v41, 0xE3005B002C00B3, 1), vmulq_lane_s16(v42, 0xE3005B002C00B3, 2));
        v46 = vzip2q_s16(v43, v43);
        v47 = vzip2q_s16(v44, v44);
        v48 = vzip2q_s16(v45, v45);
        v49 = vzip1q_s16(v43, v43);
        v50 = vzip1q_s16(v44, v44);
        v51 = vzip1q_s16(v45, v45);
        if (!(v38 >> 3))
        {
          goto LABEL_8;
        }

        v52 = vshll_n_u8(*v39.i8, 7uLL);
        v84.val[2] = vqrshrun_n_s16(vqaddq_s16(v52, v49), 7uLL);
        v84.val[0] = vqrshrun_n_s16(vqaddq_s16(v52, v50), 7uLL);
        v84.val[1] = vqrshrun_n_s16(vqsubq_s16(v52, v51), 7uLL);
        vst3_s8(a4, v84);
        a4 += 24;
        v53 = vshll_n_u8(*v40.i8, 7uLL);
        v84.val[2] = vqrshrun_n_s16(vqaddq_s16(v53, v49), 7uLL);
        v84.val[0] = vqrshrun_n_s16(vqaddq_s16(v53, v50), 7uLL);
        v84.val[1] = vqrshrun_n_s16(vqsubq_s16(v53, v51), 7uLL);
        vst3_s8(a5, v84);
        a5 += 24;
        v49 = v46;
        v50 = v47;
        v51 = v48;
        v39.i64[0] = v39.i64[1];
        v40.i64[0] = v40.i64[1];
        v38 -= 8;
        if (v38)
        {
LABEL_8:
          v54 = vshll_n_u8(*v39.i8, 7uLL);
          *v9.i8 = vqrshrun_n_s16(vqaddq_s16(v54, v49), 7uLL);
          *v7.i8 = vqrshrun_n_s16(vqaddq_s16(v54, v50), 7uLL);
          *v8.i8 = vqrshrun_n_s16(vqsubq_s16(v54, v51), 7uLL);
          v55 = vshll_n_u8(*v40.i8, 7uLL);
          *v10.i8 = vqrshrun_n_s16(vqaddq_s16(v55, v49), 7uLL);
          *v39.i8 = vqrshrun_n_s16(vqaddq_s16(v55, v50), 7uLL);
          *v40.i8 = vqrshrun_n_s16(vqsubq_s16(v55, v51), 7uLL);
          do
          {
            *a4 = v7.i8[0];
            a4[1] = v8.i8[0];
            a4[2] = v9.i8[0];
            a4 += 3;
            v7 = vshrq_n_u64(v7, 8uLL);
            v8 = vshrq_n_u64(v8, 8uLL);
            v9 = vshrq_n_u64(v9, 8uLL);
            *a5 = v39.i8[0];
            a5[1] = v40.i8[0];
            a5[2] = v10.i8[0];
            a5 += 3;
            v39 = vshrq_n_u64(v39, 8uLL);
            v40 = vshrq_n_u64(v40, 8uLL);
            v10 = vshrq_n_u64(v10, 8uLL);
            --v38;
          }

          while (v38);
        }
      }
    }
  }

  return result;
}

uint64_t (*aj_block_dct(uint8x8_t **a1, int8x16_t *a2, int16x8_t *a3))()
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10.i64[0] = 0x80008000800080;
  v10.i64[1] = 0x80008000800080;
  v11 = vnegq_s16(v10);
  v12 = vaddw_u8(v11, **a1);
  v13 = vaddw_u8(v11, *v3);
  v14 = vaddw_u8(v11, *v4);
  v15 = vaddw_u8(v11, *v5);
  v16 = vaddw_u8(v11, *v6);
  v17 = vaddw_u8(v11, *v7);
  v18 = vaddw_u8(v11, *v8);
  v19 = vaddw_u8(v11, *v9);
  ++*a1;
  a1[1] = v3 + 1;
  a1[2] = v4 + 1;
  a1[3] = v5 + 1;
  a1[4] = v6 + 1;
  a1[5] = v7 + 1;
  a1[6] = v8 + 1;
  a1[7] = v9 + 1;
  v20 = vaddq_s16(v12, v19);
  v21 = vsubq_s16(v12, v19);
  v22 = vaddq_s16(v13, v18);
  v23 = vsubq_s16(v13, v18);
  v24 = vaddq_s16(v14, v17);
  v25 = vsubq_s16(v14, v17);
  v26 = vaddq_s16(v15, v16);
  v27 = vsubq_s16(v22, v24);
  v28 = vaddq_s16(v22, v24);
  v29 = vaddq_s16(vsubq_s16(v15, v16), v25);
  v30 = vaddq_s16(v23, v21);
  v31 = vaddq_s16(v20, v26);
  v32 = vsubq_s16(v20, v26);
  v33 = vqrdmulhq_lane_s16(vsubq_s16(v30, v29), 0x30FC273D5A824546, 3);
  v34 = vqrdmulhq_lane_s16(vaddq_s16(v25, v23), 0x30FC273D5A824546, 1);
  v35 = vqrdmulhq_lane_s16(vaddq_s16(v27, v32), 0x30FC273D5A824546, 1);
  v36 = vsubq_s16(vqrdmulhq_lane_s16(v29, 0x30FC273D5A824546, 0), v33);
  v37 = vsubq_s16(v31, v28);
  v38 = vaddq_s16(v31, v28);
  v39 = vaddq_s16(vqrdmulhq_lane_s16(v30, 0x30FC273D5A824546, 2), vsubq_s16(v30, v33));
  v40 = vaddq_s16(v34, v21);
  v41 = vsubq_s16(v21, v34);
  v42 = vaddq_s16(v40, v39);
  v43 = vsubq_s16(v40, v39);
  v44 = vaddq_s16(v36, v41);
  v45 = vsubq_s16(v41, v36);
  v46 = vsubq_s16(v32, v35);
  v47 = vaddq_s16(v35, v32);
  v48 = vtrn1q_s16(v38, v42);
  v49 = vtrn2q_s16(v38, v42);
  v50 = vtrn1q_s16(v47, v45);
  v51 = vtrn2q_s16(v47, v45);
  v52 = vtrn1q_s16(v37, v44);
  v53 = vtrn2q_s16(v37, v44);
  v54 = vtrn1q_s16(v46, v43);
  v55 = vtrn2q_s16(v46, v43);
  v56 = vtrn1q_s32(v48, v50);
  v57 = vtrn2q_s32(v48, v50);
  v58 = vtrn1q_s32(v49, v51);
  v59 = vtrn2q_s32(v49, v51);
  v60 = vtrn1q_s32(v52, v54);
  v61 = vtrn2q_s32(v52, v54);
  v62 = vtrn1q_s32(v53, v55);
  v63 = vtrn2q_s32(v53, v55);
  v64 = vtrn1q_s64(v56, v60);
  v65 = vtrn2q_s64(v56, v60);
  v66 = vtrn1q_s64(v58, v62);
  v67 = vtrn2q_s64(v58, v62);
  v68 = vtrn1q_s64(v57, v61);
  v69 = vtrn2q_s64(v57, v61);
  v70 = vtrn1q_s64(v59, v63);
  v71 = vtrn2q_s64(v59, v63);
  v72 = vaddq_s16(v64, v71);
  v73 = vsubq_s16(v64, v71);
  v74 = vaddq_s16(v66, v69);
  v75 = vsubq_s16(v66, v69);
  v76 = vaddq_s16(v68, v67);
  v77 = vsubq_s16(v68, v67);
  v78 = vaddq_s16(v70, v65);
  v79 = vsubq_s16(v74, v76);
  v80 = vaddq_s16(v74, v76);
  v81 = vaddq_s16(vsubq_s16(v70, v65), v77);
  v82 = vaddq_s16(v75, v73);
  v83 = vaddq_s16(v72, v78);
  v84 = vsubq_s16(v72, v78);
  v85 = vqrdmulhq_lane_s16(vsubq_s16(v82, v81), 0x30FC273D5A824546, 3);
  v86 = vqrdmulhq_lane_s16(vaddq_s16(v77, v75), 0x30FC273D5A824546, 1);
  v87 = vqrdmulhq_lane_s16(vaddq_s16(v79, v84), 0x30FC273D5A824546, 1);
  v88 = vsubq_s16(vqrdmulhq_lane_s16(v81, 0x30FC273D5A824546, 0), v85);
  v89 = vsubq_s16(v83, v80);
  v90 = vaddq_s16(v83, v80);
  v91 = vaddq_s16(vqrdmulhq_lane_s16(v82, 0x30FC273D5A824546, 2), vsubq_s16(v82, v85));
  v92 = vaddq_s16(v86, v73);
  v93 = vsubq_s16(v73, v86);
  v94 = vaddq_s16(v92, v91);
  v95 = vsubq_s16(v92, v91);
  v96 = vaddq_s16(v88, v93);
  v97 = vsubq_s16(v93, v88);
  v98 = vsubq_s16(v84, v87);
  v99 = vaddq_s16(v87, v84);
  v100 = vtrn1q_s16(v90, v94);
  v101 = vtrn2q_s16(v90, v94);
  v102 = vtrn1q_s16(v99, v97);
  v103 = vtrn2q_s16(v99, v97);
  v104 = vtrn1q_s16(v89, v96);
  v105 = vtrn2q_s16(v89, v96);
  v106 = vtrn1q_s16(v98, v95);
  v107 = vtrn2q_s16(v98, v95);
  v108 = vtrn1q_s32(v100, v102);
  v109 = vtrn2q_s32(v100, v102);
  v110 = vtrn1q_s32(v101, v103);
  v111 = vtrn2q_s32(v101, v103);
  v112 = vtrn1q_s32(v104, v106);
  v113 = vtrn2q_s32(v104, v106);
  v114 = vtrn1q_s32(v105, v107);
  v115 = vtrn2q_s32(v105, v107);
  v116 = vtrn1q_s64(v108, v112);
  v117 = vtrn2q_s64(v108, v112);
  v118 = vtrn1q_s64(v110, v114);
  v119 = vtrn2q_s64(v110, v114);
  v120 = vtrn1q_s64(v109, v113);
  v121 = vtrn2q_s64(v109, v113);
  v122 = vtrn1q_s64(v111, v115);
  v123 = vtrn2q_s64(v111, v115);
  v125 = *a3;
  v126 = a3[1];
  v124 = a3 + 2;
  v127 = *v124;
  v128 = v124[1];
  v124 += 2;
  v129 = *v124;
  v130 = v124[1];
  v124 += 2;
  v134.val[0] = vqrdmulhq_s16(vshlq_n_s16(v116, 1uLL), v125);
  v134.val[1] = vqrdmulhq_s16(vshlq_n_s16(v118, 1uLL), v126);
  v134.val[2] = vqrdmulhq_s16(vshlq_n_s16(v120, 1uLL), v127);
  v134.val[3] = vqrdmulhq_s16(vshlq_n_s16(v122, 1uLL), v128);
  v135.val[0] = vqrdmulhq_s16(vshlq_n_s16(v117, 1uLL), v129);
  v135.val[1] = vqrdmulhq_s16(vshlq_n_s16(v119, 1uLL), v130);
  v135.val[2] = vqrdmulhq_s16(vshlq_n_s16(v121, 1uLL), *v124);
  v135.val[3] = vqrdmulhq_s16(vshlq_n_s16(v123, 1uLL), v124[1]);
  v131.i64[1] = -1;
  v109.i64[0] = 0xFFFF0100FFFFFFFFLL;
  v131.i64[0] = -3907647224;
  v109.i64[1] = -1;
  *a2 = vqtbx4q_s8(v134, xmmword_240A79BA8);
  a2[1] = vqtbx1q_s8(v135.val[0], v109);
  v132 = a2 + 2;
  *v132 = vqtbx2q_s8(*v134.val[1].i8, v131);
  v132[1] = vqtbx4q_s8(v134, xmmword_240A79BE8);
  v132 += 2;
  v130.i64[0] = 0x1F1E0F0E1D1CFFFFLL;
  result = aj_block_dct;
  v131.i64[0] = -4177132284;
  v130.i64[1] = -1;
  *v132 = vqtbx4q_s8(v135, *&qword_240A79BF8);
  v132[1] = vqtbx2q_s8(*v134.val[1].i8, v130);
  v132 += 2;
  *v132 = vqtbx1q_s8(v135.val[3], v131);
  v132[1] = vqtbx3q_s8(*v135.val[1].i8, *&qword_240A79C38);
  return result;
}

uint64_t aj_idct_s1(int16x8_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = vaddq_s16(v8, v4);
  v10 = vaddq_s16(*a1, v6);
  v11 = vsubq_s16(*a1, v6);
  v12 = vqrdmulhq_lane_s16(vsubq_s16(v4, v8), 0x30FC273D5A824546, 1);
  v13 = vqshlq_n_s16(a1[7], 1uLL);
  v14 = vaddq_s16(v5, v7);
  v15 = vsubq_s16(v7, v5);
  v16 = vaddq_s16(v3, v13);
  v17 = vsubq_s16(v3, v13);
  v18 = vaddq_s16(v16, v14);
  v19 = vaddq_s16(v9, v12);
  v20 = vaddq_s16(v10, v19);
  v21 = vsubq_s16(v10, v19);
  v22 = vqrdmulhq_lane_s16(vaddq_s16(v15, v17), 0x30FC273D5A824546, 3);
  v23 = vqrdmulhq_lane_s16(vsubq_s16(v16, v14), 0x30FC273D5A824546, 1);
  v24 = vsubq_s16(v11, v12);
  v25 = vaddq_s16(v11, v12);
  v26 = vsubq_s16(vaddq_s16(vqrdmulhq_lane_s16(v17, 0x30FC273D5A824546, 2), v17), v22);
  v27 = vaddq_s16(vqrdmulhq_lane_s16(v15, 0x30FC273D5A824546, 0), v22);
  v28 = vaddq_s16(v18, v26);
  v29 = vaddq_s16(v26, v23);
  v30 = vaddq_s16(v27, v23);
  v31 = vaddq_s16(v20, v28);
  v32 = vaddq_s16(v25, v29);
  v33 = vaddq_s16(v24, v30);
  v34 = vaddq_s16(v21, v27);
  v35 = vsubq_s16(v21, v27);
  v36 = vsubq_s16(v24, v30);
  v37 = vsubq_s16(v25, v29);
  v38 = vsubq_s16(v20, v28);
  v39 = vtrn1q_s16(v31, v32);
  v40 = vtrn2q_s16(v31, v32);
  v41 = vtrn1q_s16(v33, v34);
  v42 = vtrn2q_s16(v33, v34);
  v43 = vtrn1q_s16(v35, v36);
  v44 = vtrn2q_s16(v35, v36);
  v45 = vtrn1q_s16(v37, v38);
  v46 = vtrn2q_s16(v37, v38);
  v47 = vtrn1q_s32(v39, v41);
  v48 = vtrn2q_s32(v39, v41);
  v49 = vtrn1q_s32(v40, v42);
  v50 = vtrn2q_s32(v40, v42);
  v51 = vtrn1q_s32(v43, v45);
  v52 = vtrn2q_s32(v43, v45);
  v53 = vtrn1q_s32(v44, v46);
  v54 = vtrn2q_s32(v44, v46);
  v55 = vtrn1q_s64(v47, v51);
  v56 = vtrn2q_s64(v47, v51);
  v57 = vtrn1q_s64(v49, v53);
  v58 = vtrn2q_s64(v49, v53);
  v59 = vtrn1q_s64(v48, v52);
  v60 = vtrn2q_s64(v48, v52);
  v61 = vtrn1q_s64(v50, v54);
  v62 = vtrn2q_s64(v50, v54);
  v64 = *a2;
  v65 = a2[1];
  v63 = a2 + 2;
  v66 = *v63;
  v67 = v63[1];
  v63 += 2;
  v68 = *v63;
  v69 = v63[1];
  v63 += 2;
  v70 = vaddq_s16(v60, v59);
  v71 = vaddq_s16(v55, v56);
  v72 = vsubq_s16(v55, v56);
  v73 = vqrdmulhq_lane_s16(vsubq_s16(v59, v60), 0x30FC273D5A824546, 1);
  v74 = vqshlq_n_s16(v62, 1uLL);
  v75 = vaddq_s16(v61, v58);
  v76 = vsubq_s16(v58, v61);
  v77 = vaddq_s16(v57, v74);
  v78 = vsubq_s16(v57, v74);
  v79 = vaddq_s16(v77, v75);
  v80 = vaddq_s16(v70, v73);
  v81 = vaddq_s16(v71, v80);
  v82 = vsubq_s16(v71, v80);
  v83 = vqrdmulhq_lane_s16(vaddq_s16(v76, v78), 0x30FC273D5A824546, 3);
  v84 = vqrdmulhq_lane_s16(vsubq_s16(v77, v75), 0x30FC273D5A824546, 1);
  v85 = vsubq_s16(v72, v73);
  v86 = vaddq_s16(v72, v73);
  v87 = vsubq_s16(vaddq_s16(vqrdmulhq_lane_s16(v78, 0x30FC273D5A824546, 2), v78), v83);
  v88 = vaddq_s16(vqrdmulhq_lane_s16(v76, 0x30FC273D5A824546, 0), v83);
  v89 = vaddq_s16(v79, v87);
  v90 = vaddq_s16(v87, v84);
  v91 = vaddq_s16(v88, v84);
  _X3 = (v64 + a3);
  _X4 = (v65 + a3);
  _X5 = (v66 + a3);
  _X6 = (v67 + a3);
  _X7 = (v68 + a3);
  _X9 = (v69 + a3);
  _X10 = (*v63 + a3);
  _X11 = (v63[1] + a3);
  __asm
  {
    PRFM            #0x11, [X3]
    PRFM            #0x11, [X4]
    PRFM            #0x11, [X5]
    PRFM            #0x11, [X6]
    PRFM            #0x11, [X7]
    PRFM            #0x11, [X9]
    PRFM            #0x11, [X10]
    PRFM            #0x11, [X11]
  }

  *_X3 = vadd_s8(vqrshrn_n_s16(vaddq_s16(v81, v89), 5uLL), 0x8080808080808080);
  *_X4 = vadd_s8(vqrshrn_n_s16(vaddq_s16(v86, v90), 5uLL), 0x8080808080808080);
  *_X5 = vadd_s8(vqrshrn_n_s16(vaddq_s16(v85, v91), 5uLL), 0x8080808080808080);
  *_X6 = vadd_s8(vqrshrn_n_s16(vaddq_s16(v82, v88), 5uLL), 0x8080808080808080);
  *_X7 = vadd_s8(vqrshrn_n_s16(vsubq_s16(v82, v88), 5uLL), 0x8080808080808080);
  *_X9 = vadd_s8(vqrshrn_n_s16(vsubq_s16(v85, v91), 5uLL), 0x8080808080808080);
  *_X10 = vadd_s8(vqrshrn_n_s16(vsubq_s16(v86, v90), 5uLL), 0x8080808080808080);
  *_X11 = vadd_s8(vqrshrn_n_s16(vsubq_s16(v81, v89), 5uLL), 0x8080808080808080);
  return 8;
}

uint64_t aj_huffman_decode_skip_block(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 64)
  {
    return 0;
  }

  v4 = *a2;
  v5 = 612;
  v6 = *(a2 + 28);
  v7 = *(a2 + 24);
  do
  {
    while (1)
    {
      while (1)
      {
        while (v6)
        {
          v23 = 0;
LABEL_26:
          *(a2 + 24) = v7;
          *a2 = v4;
          v27 = a1;
          v28 = a2;
          v25 = a3;
          v26 = v5;
          v24 = 0;
          result = aj_huffman_decode_skip_val_slow(a1, a2, &v25, v23, &v24);
          if (result)
          {
            return result;
          }

          v5 = v26;
          a1 = v27;
          a2 = v28;
          v7 = v28[6];
          v4 = *v28;
          v6 = v28[7];
          a3 = (v25 + (v24 << 6));
          if (a3 >= 64)
          {
            goto LABEL_10;
          }
        }

        v8 = *(a1 + 4 * (v5 + (v4 >> 23)));
        if (!v8)
        {
          v23 = 9;
          goto LABEL_26;
        }

        v9 = a3 + *(a1 + 4 * (v5 + (v4 >> 23)));
        if (v9 >= 64)
        {
          a3 = v9 - *(a1 + 4 * (v5 + (v4 >> 23)));
          v23 = 0;
          goto LABEL_26;
        }

        a3 = v9 + (HIWORD(v8) << 6);
        v10 = BYTE1(v8);
        if (v7 < BYTE1(v8) - 9)
        {
          *(a2 + 24) = v7;
          *a2 = v4;
          v27 = a1;
          v28 = a2;
          v25 = a3;
          v26 = v5;
          v24 = BYTE1(v8);
          result = aj_istream_fill_buf(a2, BYTE1(v8) - 9);
          v10 = v24;
          if (result)
          {
            return result;
          }

          a3 = v25;
          v5 = v26;
          a1 = v27;
          a2 = v28;
          v7 = v28[6];
          v4 = *v28;
          v6 = v28[7];
        }

        v4 <<= v10;
        v7 -= v10;
        if (v7 < 0)
        {
          break;
        }

        if (a3 >= 64)
        {
          goto LABEL_10;
        }
      }

      v11 = *(a2 + 32);
      if (v6)
      {
        goto LABEL_21;
      }

      v12 = *(a2 + 8);
      if (v11 >= 8)
      {
        v13 = *v12;
        v14 = v12[1];
        v16 = v13 == 255;
        v15 = v14 + (v13 << 8);
        v16 = v16 || v14 == 255;
        v17 = v12[2];
        v18 = v12 + 3;
        v19 = v11 - 3;
        v20 = v17 + (v15 << 8);
        if (!v16 && v17 != 255)
        {
          break;
        }
      }

      *a2 = v4;
      *(a2 + 24) = v7;
      v27 = a1;
      v28 = a2;
      v25 = a3;
      v26 = v5;
      result = aj_istream_fill_buf(a2, -9);
      if (result)
      {
        return result;
      }

      a3 = v25;
      v5 = v26;
      a1 = v27;
      a2 = v28;
      v7 = v28[6];
      v4 = *v28;
      v6 = v28[7];
      if (v25 >= 64)
      {
LABEL_10:
        *a2 = v4;
        *(a2 + 24) = v7;
        return 0;
      }
    }

    v22 = ~v7;
    *(a2 + 32) = v19;
    *(a2 + 8) = v18;
    v4 |= v20 << v22;
    v7 = 23 - v22;
LABEL_21:
    ;
  }

  while (a3 < 64);
  *a2 = v4;
  *(a2 + 24) = v7;
  return 0;
}

uint8x8_t **aj_icol_row_444_to_bgr565(uint8x8_t **result, uint8x8_t **a2, uint8x8_t **a3, char *a4, double a5, double a6, uint64x2_t a7, uint64x2_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v11 = vdupq_n_s8(0x80u).u64[0];
  v12 = *result;
  v13 = *a2;
  v14 = *a3;
  for (i = a11 >> 3; i; --i)
  {
    v16 = *v12++;
    v17 = *v13++;
    v18 = *v14++;
    v19 = vshll_n_u8(v16, 7uLL);
    v20 = vsubl_u8(v17, v11);
    v21 = vsubl_u8(v18, v11);
    v22 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v19, vqaddq_s16(vmulq_lane_s16(v20, 0xE3005B002C00B3, 1), vmulq_lane_s16(v21, 0xE3005B002C00B3, 2))), 7uLL), 0x202020202020202), 2uLL);
    v28.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v19, vmulq_lane_s16(v20, 0xE3005B002C00B3, 3)), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v22, 5uLL));
    v28.val[1] = vorr_s8(vshr_n_u8(v22, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v19, vmulq_n_s16(v21, 179)), 7uLL), 0x404040404040404), 3uLL), 3uLL));
    vst2_s8(a4, v28);
    a4 += 16;
  }

  if ((a11 & 7) != 0)
  {
    v23 = vshll_n_u8(*v12, 7uLL);
    v24 = vsubl_u8(*v13, v11);
    v25 = vsubl_u8(*v14, v11);
    v26 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v23, vqaddq_s16(vmulq_lane_s16(v24, 0xE3005B002C00B3, 1), vmulq_lane_s16(v25, 0xE3005B002C00B3, 2))), 7uLL), 0x202020202020202), 2uLL);
    *a7.i8 = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v23, vmulq_lane_s16(v24, 0xE3005B002C00B3, 3)), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v26, 5uLL));
    *a8.i8 = vorr_s8(vshr_n_u8(v26, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v23, vmulq_n_s16(v25, 179)), 7uLL), 0x404040404040404), 3uLL), 3uLL));
    v27 = a11 & 7;
    do
    {
      *a4 = a7.i8[0];
      a4[1] = a8.i8[0];
      a4 += 2;
      a7 = vshrq_n_u64(a7, 8uLL);
      a8 = vshrq_n_u64(a8, 8uLL);
      --v27;
    }

    while (v27);
  }

  return result;
}

uint8x8_t **aj_icol_row_444_to_bgra(uint8x8_t **result, uint8x8_t **a2, uint8x8_t **a3, int16x8_t *a4, double a5, double a6, uint64x2_t a7, uint64x2_t a8, uint64x2_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  v12 = vdupq_n_s8(0x80u).u64[0];
  v13 = vdupq_n_s8(0xFFu);
  v14 = *result;
  v15 = *a2;
  v16 = *a3;
  for (i = a12 >> 3; i; --i)
  {
    v18 = *v14++;
    v19 = *v15++;
    v20 = *v16++;
    v21 = vshll_n_u8(v18, 7uLL);
    v22 = vsubl_u8(v19, v12);
    v23 = vsubl_u8(v20, v12);
    *a7.i8 = vqrshrun_n_s16(vqaddq_s16(v21, vmulq_lane_s16(v22, 0xE3005B002C00B3, 3)), 7uLL);
    *a9.i8 = vqrshrun_n_s16(vqaddq_s16(v21, vmulq_n_s16(v23, 179)), 7uLL);
    *a8.i8 = vqrshrun_n_s16(vqsubq_s16(v21, vqaddq_s16(vmulq_lane_s16(v22, 0xE3005B002C00B3, 1), vmulq_lane_s16(v23, 0xE3005B002C00B3, 2))), 7uLL);
    v24 = vzip1q_s8(a7, a8);
    v25 = vzip1q_s8(a9, v13);
    *a4 = vzip1q_s16(v24, v25);
    a4[1] = vzip2q_s16(v24, v25);
    a4 += 2;
  }

  if ((a12 & 7) != 0)
  {
    v26 = vshll_n_u8(*v14, 7uLL);
    v27 = vsubl_u8(*v15, v12);
    v28 = vsubl_u8(*v16, v12);
    *a7.i8 = vqrshrun_n_s16(vqaddq_s16(v26, vmulq_lane_s16(v27, 0xE3005B002C00B3, 3)), 7uLL);
    *a9.i8 = vqrshrun_n_s16(vqaddq_s16(v26, vmulq_n_s16(v28, 179)), 7uLL);
    *a8.i8 = vqrshrun_n_s16(vqsubq_s16(v26, vqaddq_s16(vmulq_lane_s16(v27, 0xE3005B002C00B3, 1), vmulq_lane_s16(v28, 0xE3005B002C00B3, 2))), 7uLL);
    v29 = a12 & 7;
    do
    {
      a4->i8[0] = a7.i8[0];
      a4->i8[1] = a8.i8[0];
      a4->i8[2] = a9.i8[0];
      a4->i8[3] = v13.i8[0];
      a4 = (a4 + 4);
      a7 = vshrq_n_u64(a7, 8uLL);
      a8 = vshrq_n_u64(a8, 8uLL);
      a9 = vshrq_n_u64(a9, 8uLL);
      --v29;
    }

    while (v29);
  }

  return result;
}

uint64_t aj_RGBA8888_YUV422(uint64_t a1, const char **a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8.i64[0] = 0x80008000800080;
  v8.i64[1] = 0x80008000800080;
  v9 = vshlq_n_s16(v8, 7uLL);
  v10.i64[0] = 0x15980E984B232646;
  v10.i64[1] = 0xA6835982A68;
  for (i = a4 >> 4; i; --i)
  {
    v21 = vld4_s8(v4);
    v12 = v4 + 32;
    v22 = vld4_s8(v12);
    v4 = v12 + 32;
    v13 = vshll_n_u8(v21.val[0], 7uLL);
    v14 = vshll_n_u8(v21.val[1], 7uLL);
    v15 = vshll_n_u8(v21.val[2], 7uLL);
    v21.val[0] = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v13, *v10.i8, 0), vqrdmulhq_lane_s16(v14, *v10.i8, 1)), vqrdmulhq_lane_s16(v15, *v10.i8, 2)), 7uLL);
    v21.val[1] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v9, vqrdmulhq_lane_s16(v13, *v10.i8, 3)), vqrdmulhq_laneq_s16(v14, v10, 4)), vrshrq_n_s16(v15, 1uLL)), 7uLL);
    v21.val[2] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v13, 1uLL), vqrdmulhq_laneq_s16(v14, v10, 5)), vqrdmulhq_laneq_s16(v15, v10, 6)), v9), 7uLL);
    v16 = vshll_n_u8(v22.val[0], 7uLL);
    v17 = vshll_n_u8(v22.val[1], 7uLL);
    v18 = vshll_n_u8(v22.val[2], 7uLL);
    v22.val[1] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v9, vqrdmulhq_lane_s16(v16, *v10.i8, 3)), vqrdmulhq_laneq_s16(v17, v10, 4)), vrshrq_n_s16(v18, 1uLL)), 7uLL);
    v22.val[2] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v16, 1uLL), vqrdmulhq_laneq_s16(v17, v10, 5)), vqrdmulhq_laneq_s16(v18, v10, 6)), v9), 7uLL);
    *v5 = v21.val[0];
    v19 = v5 + 1;
    *v19 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v16, *v10.i8, 0), vqrdmulhq_lane_s16(v17, *v10.i8, 1)), vqrdmulhq_lane_s16(v18, *v10.i8, 2)), 7uLL);
    v5 = v19 + 1;
    *v6++ = vrhadd_u8(vuzp1_s8(v21.val[1], v22.val[1]), vuzp2_s8(v21.val[1], v22.val[1]));
    *v7++ = vrhadd_u8(vuzp1_s8(v21.val[2], v22.val[2]), vuzp2_s8(v21.val[2], v22.val[2]));
  }

  if ((a4 & 8) == 0)
  {
    JUMPOUT(0x240A7A860);
  }

  return sub_240A7A7DC();
}

uint64_t sub_240A7A7DC(int16x8_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5, int a6, _DWORD *a7, _DWORD *a8, void *a9)
{
  v33 = vld4_s8(a3);
  v13 = (a3 + 32);
  v14 = vshll_n_u8(v33.val[0], 7uLL);
  v15 = vshll_n_u8(v33.val[1], 7uLL);
  v16 = vshll_n_u8(v33.val[2], 7uLL);
  *v9.i8 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v14, *a1.i8, 0), vqrdmulhq_lane_s16(v15, *a1.i8, 1)), vqrdmulhq_lane_s16(v16, *a1.i8, 2)), 7uLL);
  v33.val[1] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v12, vqrdmulhq_lane_s16(v14, *a1.i8, 3)), vqrdmulhq_laneq_s16(v15, a1, 4)), vrshrq_n_s16(v16, 1uLL)), 7uLL);
  v33.val[2] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v14, 1uLL), vqrdmulhq_laneq_s16(v15, a1, 5)), vqrdmulhq_laneq_s16(v16, a1, 6)), v12), 7uLL);
  *v10.i8 = vrhadd_u8(vuzp1_s8(v33.val[1], v33.val[1]), vuzp2_s8(v33.val[1], v33.val[1]));
  *v11.i8 = vrhadd_u8(vuzp1_s8(v33.val[2], v33.val[2]), vuzp2_s8(v33.val[2], v33.val[2]));
  *a9 = v9.i64[0];
  v17 = a9 + 1;
  *a7 = v10.i32[0];
  v18 = a7 + 1;
  *a8 = v11.i32[0];
  v19 = a8 + 1;
  v20 = a5 & 7;
  if ((a5 & 7) != 0)
  {
    do
    {
      v9 = vshlq_n_s64(v9, 8uLL);
      v10 = vshlq_n_s64(v10, 8uLL);
      v11 = vshlq_n_s64(v11, 8uLL);
      v9.i8[0] = *v13;
      v10.i8[0] = v13[1];
      v11.i8[0] = v13[2];
      v21 = v13[3];
      v13 += 4;
      --v20;
    }

    while (v20);
    v22 = a5 & 7;
    v23 = 8 - v22;
    v24 = (v22 + 1) >> 1;
    v25 = vshll_n_u8(*v9.i8, 7uLL);
    v26 = vshll_n_u8(*v10.i8, 7uLL);
    v27 = vshll_n_u8(*v11.i8, 7uLL);
    *v9.i8 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v25, *a1.i8, 0), vqrdmulhq_lane_s16(v26, *a1.i8, 1)), vqrdmulhq_lane_s16(v27, *a1.i8, 2)), 7uLL);
    *v10.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v12, vqrdmulhq_lane_s16(v25, *a1.i8, 3)), vqrdmulhq_laneq_s16(v26, a1, 4)), vrshrq_n_s16(v27, 1uLL)), 7uLL);
    *v11.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v25, 1uLL), vqrdmulhq_laneq_s16(v26, a1, 5)), vqrdmulhq_laneq_s16(v27, a1, 6)), v12), 7uLL);
    do
    {
      v9 = vsliq_n_s64(v9, v9, 8uLL);
      v10 = vsliq_n_s64(v10, v10, 8uLL);
      v11 = vsliq_n_s64(v11, v11, 8uLL);
      --v23;
    }

    while (v23);
    *v10.i8 = vrhadd_u8(vuzp1_s8(*v10.i8, *v10.i8), vuzp2_s8(*v10.i8, *v10.i8));
    *v11.i8 = vrhadd_u8(vuzp1_s8(*v11.i8, *v11.i8), vuzp2_s8(*v11.i8, *v11.i8));
    do
    {
      *v17++ = v9.i8[7];
      v9 = vshlq_n_s64(v9, 8uLL);
      --v22;
    }

    while (v22);
    do
    {
      *v18++ = v10.i8[3];
      *v19++ = v11.i8[3];
      v10 = vshlq_n_s64(v10, 8uLL);
      v11 = vshlq_n_s64(v11, 8uLL);
      --v24;
    }

    while (v24);
  }

  result = (a6 - a5);
  if (a6 != a5)
  {
    v29 = result >> 1;
    v30 = *(v17 - 1);
    v31 = *(v18 - 1);
    v32 = *(v19 - 1);
    do
    {
      *v17++ = v30;
      result = (result - 1);
    }

    while (result);
    for (; v29; --v29)
    {
      *v18++ = v31;
      *v19++ = v32;
    }
  }

  return result;
}

uint64_t aj_idct_s4(unsigned int *a1, void *a2, uint64_t a3)
{
  v3.i64[0] = 0x400040004000400;
  v3.i64[1] = 0x400040004000400;
  v4 = a1[4];
  v5 = (a2[1] + a3);
  v6 = vaddq_s16(*a1, v4);
  v7 = vsubq_s16(vtrn1q_s16(*a1, v4), vtrn2q_s16(*a1, v4)).u64[0];
  v8 = vsubq_s16(*a1, v4);
  LODWORD(v9) = 0;
  WORD2(v9) = 0;
  HIWORD(v9) = v7.i16[1];
  v8.i16[2] = v7.i16[0];
  *v6.i8 = vzip1_s32(*v6.i8, v7);
  v10 = vzip1q_s64(v6, vsubq_s16(v8, v9));
  v10.i32[0] = vqrshrun_n_s16(vaddq_s16(vpaddq_s16(v10, v10), v3), 3uLL).u32[0];
  *(*a2 + a3) = v10.i16[0];
  *v5 = v10.i16[1];
  return 2;
}

uint64_t aj_huffman_decode_ac_s4(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  LODWORD(v6) = 1;
  v7 = a1 + 48;
  v8 = *(a1 + 696);
  v9 = *a2;
  v10 = *(a2 + 28);
  v11 = *(a1 + 40) + 400;
  v12 = *(a2 + 24);
  v13 = *a2 >> 23;
  v14 = *(v11 + 4 * v13);
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v10)
          {
LABEL_38:
            *a2 = v9;
            *(a2 + 24) = v12;
            v41 = v11;
            v42 = a2;
            v39 = a3;
            v40 = a4;
            v37 = a6;
            v38 = v7;
            v35 = v13;
            v36 = v8;
            result = aj_huffman_decode_val_slow(v11 - 400, a2, v6, 0, &v33);
            if (result)
            {
              return result;
            }

            LODWORD(v6) = v33;
            v32 = v33 >> 16;
            v13 = v35;
            v8 = v36;
            v7 = v38;
            a3 = v39;
            a4 = v40;
            v11 = v41;
            a2 = v42;
            v10 = v42[7];
            v12 = v42[6];
            v9 = *v42;
            goto LABEL_31;
          }

          v15 = v14 >> 18;
          v16 = v6 + v14;
          if ((v14 & 0x20000) != 0)
          {
            break;
          }

          if (v15)
          {
            v17 = *(v7 + 4 * v16) * v15;
            a6 = *(v8 + 4 * v16);
            v12 -= BYTE1(v14);
            v9 <<= SBYTE1(v14);
            v13 = v9 >> 23;
            v6 = v16 + 1;
            v14 = *(v11 + 4 * v13);
            *(a3 + a6) = v17;
            if (v12 < 0)
            {
              goto LABEL_15;
            }

LABEL_6:
            if (v6 >= 5)
            {
              *a2 = v9;
              *(a2 + 24) = v12;
              *a4 = v6;
              return 0;
            }
          }

          else
          {
            if (v14)
            {
              v6 = v16 + 1;
            }

            else
            {
              v6 = 64;
            }

            a6 = v14 >> 8;
            v12 -= BYTE1(v14);
            v9 <<= SBYTE1(v14);
            if (v12 < 0)
            {
              goto LABEL_15;
            }

            v13 = v9 >> 23;
            v14 = *(v11 + 4 * v13);
            if (v6 >= 5)
            {
              *a2 = v9;
              *(a2 + 24) = v12;
              *a4 = v6;
              return 0;
            }
          }
        }

        LODWORD(v6) = v16 - v14;
        a6 = v14 & 0x10000;
        if ((v14 & 0x10000) != 0)
        {
          goto LABEL_38;
        }

        v28 = BYTE1(v14);
        v29 = v14 >> 18;
        v12 -= v28;
        v9 <<= v28;
        v6 = v6 + (v29 >> 4);
        v14 = v29 & 0xF;
        if (!v14)
        {
          goto LABEL_32;
        }

        if (v12 + 9 < v14)
        {
          *(a2 + 24) = v12;
          *a2 = v9;
          v41 = v11;
          v42 = a2;
          v39 = a3;
          v40 = a4;
          v37 = (v12 + 9);
          v38 = v7;
          v35 = v6;
          v36 = v13;
          v33 = v8;
          v34 = v14;
          result = aj_istream_fill_buf(a2, v14 - 9);
          if (result)
          {
            return result;
          }

          v8 = v33;
          LODWORD(v14) = v34;
          LODWORD(v6) = v35;
          v13 = v36;
          v7 = v38;
          a3 = v39;
          a4 = v40;
          v11 = v41;
          a2 = v42;
          v10 = v42[7];
          v12 = v42[6];
          v9 = *v42;
        }

        v12 -= v14;
        v30 = v9 >> (32 - v14);
        v9 <<= v14;
        v31 = 1 << (v14 - 1);
        LOWORD(v32) = v30 < v31 ? v30 + 1 - 2 * v31 : v30;
LABEL_31:
        v14 = *(v7 + 4 * v6);
        a6 = *(v8 + 4 * v6);
        v6 = (v6 + 1);
        *(a3 + a6) = v14 * v32;
LABEL_32:
        if (v12 < 0)
        {
          break;
        }

        v13 = v9 >> 23;
        v14 = *(v11 + 4 * v13);
        if (v6 >= 5)
        {
          *a2 = v9;
          *(a2 + 24) = v12;
          *a4 = v6;
          return 0;
        }
      }

      if (v10)
      {
        goto LABEL_6;
      }

LABEL_15:
      a6 = *(a2 + 32);
      v19 = *(a2 + 8);
      if (a6 < 8)
      {
        break;
      }

      v20 = *v19;
      v21 = v19[1];
      v23 = v20 == 255;
      v22 = v21 + (v20 << 8);
      v23 = v23 || v21 == 255;
      v24 = v19[2];
      v25 = v19 + 3;
      a6 = (a6 - 3);
      v14 = (v24 + (v22 << 8));
      if (v23 || v24 == 255)
      {
        break;
      }

      v27 = ~v12;
      *(a2 + 32) = a6;
      *(a2 + 8) = v25;
      v9 |= v14 << v27;
      v12 = 23 - v27;
      v13 = v9 >> 23;
      v14 = *(v11 + 4 * v13);
      if (v6 >= 5)
      {
        *a2 = v9;
        *(a2 + 24) = v12;
        *a4 = v6;
        return 0;
      }
    }

    *a2 = v9;
    *(a2 + 24) = v12;
    v41 = v11;
    v42 = a2;
    v39 = a3;
    v40 = a4;
    v37 = a6;
    v38 = v7;
    v35 = v6;
    v36 = v13;
    v33 = v8;
    v34 = v14;
    result = aj_istream_fill_buf(a2, -9);
    if (result)
    {
      return result;
    }

    v8 = v33;
    LODWORD(v6) = v35;
    a6 = v37;
    v7 = v38;
    a3 = v39;
    a4 = v40;
    v11 = v41;
    a2 = v42;
    v10 = v42[7];
    v12 = v42[6];
    v9 = *v42;
    v13 = *v42 >> 23;
    v14 = *(v41 + 4 * v13);
  }

  while (v35 < 5);
  *v42 = v9;
  *(a2 + 24) = v12;
  *a4 = v6;
  return 0;
}

uint64_t sub_240A7B244(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4, int a5, uint64_t a6, int a7)
{
  *a2 = a7;
  a2[6] = a5;
  *a4 = v7;
  return 7;
}

uint64_t aj_BGRA8888_YUV444(double a1, int64x2_t a2, int64x2_t a3, int64x2_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unsigned int a8, int a9)
{
  v9 = *a6;
  v10 = *a7;
  v11 = *(a7 + 16);
  v12 = *(a7 + 32);
  v13.i64[0] = 0x80008000800080;
  v13.i64[1] = 0x80008000800080;
  v14 = vshlq_n_s16(v13, 7uLL);
  v15.i64[0] = 0x15980E984B232646;
  v15.i64[1] = 0xA6835982A68;
  for (i = a8 >> 3; i; --i)
  {
    v31 = vld4_s8(v9);
    v9 += 32;
    v17 = vshll_n_u8(v31.val[2], 7uLL);
    v18 = vshll_n_u8(v31.val[1], 7uLL);
    v19 = vshll_n_u8(v31.val[0], 7uLL);
    *a4.i8 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v17, *v15.i8, 0), vqrdmulhq_lane_s16(v18, *v15.i8, 1)), vqrdmulhq_lane_s16(v19, *v15.i8, 2)), 7uLL);
    *a3.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v14, vqrdmulhq_lane_s16(v17, *v15.i8, 3)), vqrdmulhq_laneq_s16(v18, v15, 4)), vrshrq_n_s16(v19, 1uLL)), 7uLL);
    *a2.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v17, 1uLL), vqrdmulhq_laneq_s16(v18, v15, 5)), vqrdmulhq_laneq_s16(v19, v15, 6)), v14), 7uLL);
    *v10 = a4.i64[0];
    v10 += 8;
    *v11 = a3.i64[0];
    v11 += 8;
    *v12 = a2.i64[0];
    v12 += 8;
  }

  v20 = a8 & 7;
  if ((a8 & 7) != 0)
  {
    do
    {
      a4 = vshlq_n_s64(a4, 8uLL);
      a3 = vshlq_n_s64(a3, 8uLL);
      a2 = vshlq_n_s64(a2, 8uLL);
      a2.i8[0] = *v9;
      a3.i8[0] = *(v9 + 1);
      a4.i8[0] = *(v9 + 2);
      v21 = *(v9 + 3);
      v9 += 4;
      --v20;
    }

    while (v20);
    v22 = a8 & 7;
    v23 = 8 - v22;
    v24 = vshll_n_u8(*a4.i8, 7uLL);
    v25 = vshll_n_u8(*a3.i8, 7uLL);
    v26 = vshll_n_u8(*a2.i8, 7uLL);
    *a4.i8 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v24, *v15.i8, 0), vqrdmulhq_lane_s16(v25, *v15.i8, 1)), vqrdmulhq_lane_s16(v26, *v15.i8, 2)), 7uLL);
    *a3.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v14, vqrdmulhq_lane_s16(v24, *v15.i8, 3)), vqrdmulhq_laneq_s16(v25, v15, 4)), vrshrq_n_s16(v26, 1uLL)), 7uLL);
    *a2.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v24, 1uLL), vqrdmulhq_laneq_s16(v25, v15, 5)), vqrdmulhq_laneq_s16(v26, v15, 6)), v14), 7uLL);
    do
    {
      a4 = vshlq_n_s64(a4, 8uLL);
      a3 = vshlq_n_s64(a3, 8uLL);
      a2 = vshlq_n_s64(a2, 8uLL);
      --v23;
    }

    while (v23);
    do
    {
      *v10++ = a4.i8[7];
      *v11++ = a3.i8[7];
      *v12++ = a2.i8[7];
      a4 = vshlq_n_s64(a4, 8uLL);
      a3 = vshlq_n_s64(a3, 8uLL);
      a2 = vshlq_n_s64(a2, 8uLL);
      --v22;
    }

    while (v22);
  }

  result = a9 - a8;
  if (a9 != a8)
  {
    v28 = *(v10 - 1);
    v29 = *(v11 - 1);
    v30 = *(v12 - 1);
    do
    {
      *v10++ = v28;
      *v11++ = v29;
      *v12++ = v30;
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

uint8x16_t **aj_icol_row_420_to_rgb565(uint8x16_t **result, uint8x8_t **a2, uint8x8_t **a3, char *a4, char *a5, int a6, unsigned int a7)
{
  v9 = vdupq_n_s8(0x80u).u64[0];
  if (a6 >= 1)
  {
    v10 = *result;
    v11 = *a2;
    v12 = *a3;
    if (a6 == 1)
    {
      for (i = a7 >> 4; i; --i)
      {
        v59 = *v10++;
        v60 = *v11++;
        v61 = *v12++;
        v62 = vsubl_u8(v60, v9);
        v63 = vsubl_u8(v61, v9);
        v64 = vmulq_lane_s16(v62, 0xE3005B002C00B3, 3);
        v65 = vmulq_n_s16(v63, 179);
        v66 = vqaddq_s16(vmulq_lane_s16(v62, 0xE3005B002C00B3, 1), vmulq_lane_s16(v63, 0xE3005B002C00B3, 2));
        v67 = vshll_n_u8(*v59.i8, 7uLL);
        v68 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v67, vzip1q_s16(v66, v66)), 7uLL), 0x202020202020202), 2uLL);
        v90.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v67, vzip1q_s16(v65, v65)), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v68, 5uLL));
        v90.val[1] = vorr_s8(vshr_n_u8(v68, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v67, vzip1q_s16(v64, v64)), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(a4, v90);
        v69 = a4 + 16;
        v70 = vshll_high_n_u8(v59, 7uLL);
        v90.val[1] = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v70, vzip2q_s16(v66, v66)), 7uLL), 0x202020202020202), 2uLL);
        v90.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v70, vzip2q_s16(v65, v65)), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v90.val[1], 5uLL));
        v90.val[1] = vorr_s8(vshr_n_u8(v90.val[1], 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v70, vzip2q_s16(v64, v64)), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(v69, v90);
        a4 = v69 + 16;
      }

      v71 = a7 & 0xF;
      if ((a7 & 0xF) != 0)
      {
        v72 = *v10;
        v73 = vsubl_u8(*v11, v9);
        v74 = vsubl_u8(*v12, v9);
        v75 = vmulq_lane_s16(v73, 0xE3005B002C00B3, 3);
        v76 = vmulq_n_s16(v74, 179);
        v77 = vqaddq_s16(vmulq_lane_s16(v73, 0xE3005B002C00B3, 1), vmulq_lane_s16(v74, 0xE3005B002C00B3, 2));
        v78 = vzip2q_s16(v75, v75);
        v79 = vzip2q_s16(v76, v76);
        v80 = vzip2q_s16(v77, v77);
        v81 = vzip1q_s16(v75, v75);
        v82 = vzip1q_s16(v76, v76);
        v83 = vzip1q_s16(v77, v77);
        if (!(v71 >> 3))
        {
          goto LABEL_16;
        }

        v84 = vshll_n_u8(*v72.i8, 7uLL);
        v85 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v84, v83), 7uLL), 0x202020202020202), 2uLL);
        v91.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v84, v82), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v85, 5uLL));
        v91.val[1] = vorr_s8(vshr_n_u8(v85, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v84, v81), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(a4, v91);
        a4 += 16;
        v81 = v78;
        v82 = v79;
        v83 = v80;
        v72.i64[0] = v72.i64[1];
        v71 -= 8;
        if (v71)
        {
LABEL_16:
          v86 = vshll_n_u8(*v72.i8, 7uLL);
          v87 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v86, v83), 7uLL), 0x202020202020202), 2uLL);
          *v7.i8 = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v86, v82), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v87, 5uLL));
          *v8.i8 = vorr_s8(vshr_n_u8(v87, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v86, v81), 7uLL), 0x404040404040404), 3uLL), 3uLL));
          do
          {
            *a4 = v7.i8[0];
            a4[1] = v8.i8[0];
            a4 += 2;
            v7 = vshrq_n_u64(v7, 8uLL);
            v8 = vshrq_n_u64(v8, 8uLL);
            --v71;
          }

          while (v71);
        }
      }
    }

    else
    {
      v13 = a7 >> 4;
      for (j = result[1]; v13; --v13)
      {
        v15 = *v10++;
        v16 = *j++;
        v17 = *v11++;
        v18 = *v12++;
        v19 = vsubl_u8(v17, v9);
        v20 = vsubl_u8(v18, v9);
        v21 = vmulq_lane_s16(v19, 0xE3005B002C00B3, 3);
        v22 = vmulq_n_s16(v20, 179);
        v23 = vqaddq_s16(vmulq_lane_s16(v19, 0xE3005B002C00B3, 1), vmulq_lane_s16(v20, 0xE3005B002C00B3, 2));
        v24 = vzip2q_s16(v21, v21);
        v25 = vzip2q_s16(v22, v22);
        v26 = vzip2q_s16(v23, v23);
        v27 = vzip1q_s16(v21, v21);
        v28 = vzip1q_s16(v22, v22);
        v29 = vzip1q_s16(v23, v23);
        v30 = vshll_n_u8(*v15.i8, 7uLL);
        v31 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v30, v29), 7uLL), 0x202020202020202), 2uLL);
        v88.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v30, v28), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v31, 5uLL));
        v88.val[1] = vorr_s8(vshr_n_u8(v31, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v30, v27), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(a4, v88);
        v32 = a4 + 16;
        v33 = vshll_high_n_u8(v15, 7uLL);
        v88.val[1] = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v33, v26), 7uLL), 0x202020202020202), 2uLL);
        v88.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v33, v25), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v88.val[1], 5uLL));
        v88.val[1] = vorr_s8(vshr_n_u8(v88.val[1], 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v33, v24), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(v32, v88);
        a4 = v32 + 16;
        v34 = vshll_n_u8(*v16.i8, 7uLL);
        v88.val[1] = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v34, v29), 7uLL), 0x202020202020202), 2uLL);
        v88.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v34, v28), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v88.val[1], 5uLL));
        v88.val[1] = vorr_s8(vshr_n_u8(v88.val[1], 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v34, v27), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(a5, v88);
        v35 = a5 + 16;
        v36 = vshll_high_n_u8(v16, 7uLL);
        v88.val[1] = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v36, v26), 7uLL), 0x202020202020202), 2uLL);
        v88.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v36, v25), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v88.val[1], 5uLL));
        v88.val[1] = vorr_s8(vshr_n_u8(v88.val[1], 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v36, v24), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(v35, v88);
        a5 = v35 + 16;
      }

      v37 = a7 & 0xF;
      if ((a7 & 0xF) != 0)
      {
        v38 = *v10;
        v39 = *j;
        v40 = vsubl_u8(*v11, v9);
        v41 = vsubl_u8(*v12, v9);
        v42 = vmulq_lane_s16(v40, 0xE3005B002C00B3, 3);
        v43 = vmulq_n_s16(v41, 179);
        v44 = vqaddq_s16(vmulq_lane_s16(v40, 0xE3005B002C00B3, 1), vmulq_lane_s16(v41, 0xE3005B002C00B3, 2));
        v45 = vzip2q_s16(v42, v42);
        v46 = vzip2q_s16(v43, v43);
        v47 = vzip2q_s16(v44, v44);
        v48 = vzip1q_s16(v42, v42);
        v49 = vzip1q_s16(v43, v43);
        v50 = vzip1q_s16(v44, v44);
        if (!(v37 >> 3))
        {
          goto LABEL_8;
        }

        v51 = vshll_n_u8(*v38.i8, 7uLL);
        v52 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v51, v50), 7uLL), 0x202020202020202), 2uLL);
        v89.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v51, v49), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v52, 5uLL));
        v89.val[1] = vorr_s8(vshr_n_u8(v52, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v51, v48), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(a4, v89);
        a4 += 16;
        v53 = vshll_n_u8(*v39.i8, 7uLL);
        v89.val[1] = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v53, v50), 7uLL), 0x202020202020202), 2uLL);
        v89.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v53, v49), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v89.val[1], 5uLL));
        v89.val[1] = vorr_s8(vshr_n_u8(v89.val[1], 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v53, v48), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(a5, v89);
        a5 += 16;
        v48 = v45;
        v49 = v46;
        v50 = v47;
        v38.i64[0] = v38.i64[1];
        v39.i64[0] = v39.i64[1];
        v37 -= 8;
        if (v37)
        {
LABEL_8:
          v54 = vshll_n_u8(*v38.i8, 7uLL);
          v55 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v54, v50), 7uLL), 0x202020202020202), 2uLL);
          *v7.i8 = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v54, v49), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v55, 5uLL));
          *v8.i8 = vorr_s8(vshr_n_u8(v55, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v54, v48), 7uLL), 0x404040404040404), 3uLL), 3uLL));
          v56 = vshll_n_u8(*v39.i8, 7uLL);
          v57 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v56, v50), 7uLL), 0x202020202020202), 2uLL);
          *v38.i8 = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v56, v49), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v57, 5uLL));
          *v39.i8 = vorr_s8(vshr_n_u8(v57, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v56, v48), 7uLL), 0x404040404040404), 3uLL), 3uLL));
          do
          {
            *a4 = v7.i8[0];
            a4[1] = v8.i8[0];
            a4 += 2;
            v7 = vshrq_n_u64(v7, 8uLL);
            v8 = vshrq_n_u64(v8, 8uLL);
            *a5 = v38.i8[0];
            a5[1] = v39.i8[0];
            a5 += 2;
            v38 = vshrq_n_u64(v38, 8uLL);
            v39 = vshrq_n_u64(v39, 8uLL);
            --v37;
          }

          while (v37);
        }
      }
    }
  }

  return result;
}

uint8x16_t **aj_icol_row_420_to_bgra(uint8x16_t **result, uint8x8_t **a2, uint8x8_t **a3, char *a4, char *a5, int a6, unsigned int a7)
{
  v11 = vdupq_n_s8(0x80u).u64[0];
  v12 = vdupq_n_s8(0xFFu).u64[0];
  if (a6 >= 1)
  {
    v13 = *result;
    v14 = *a2;
    v15 = *a3;
    if (a6 == 1)
    {
      for (i = a7 >> 4; i; --i)
      {
        v58 = *v13++;
        v59 = *v14++;
        v60 = *v15++;
        v61 = vsubl_u8(v59, v11);
        v62 = vsubl_u8(v60, v11);
        v63 = vmulq_lane_s16(v61, 0xE3005B002C00B3, 3);
        v64 = vmulq_n_s16(v62, 179);
        v65 = vqaddq_s16(vmulq_lane_s16(v61, 0xE3005B002C00B3, 1), vmulq_lane_s16(v62, 0xE3005B002C00B3, 2));
        v66 = vshll_n_u8(*v58.i8, 7uLL);
        v86.val[0] = vqrshrun_n_s16(vqaddq_s16(v66, vzip1q_s16(v63, v63)), 7uLL);
        v86.val[2] = vqrshrun_n_s16(vqaddq_s16(v66, vzip1q_s16(v64, v64)), 7uLL);
        v86.val[1] = vqrshrun_n_s16(vqsubq_s16(v66, vzip1q_s16(v65, v65)), 7uLL);
        v86.val[3] = v12;
        vst4_s8(a4, v86);
        v67 = a4 + 32;
        v68 = vshll_high_n_u8(v58, 7uLL);
        v86.val[0] = vqrshrun_n_s16(vqaddq_s16(v68, vzip2q_s16(v63, v63)), 7uLL);
        v86.val[2] = vqrshrun_n_s16(vqaddq_s16(v68, vzip2q_s16(v64, v64)), 7uLL);
        v86.val[1] = vqrshrun_n_s16(vqsubq_s16(v68, vzip2q_s16(v65, v65)), 7uLL);
        v86.val[3] = v12;
        vst4_s8(v67, v86);
        a4 = v67 + 32;
      }

      v69 = a7 & 0xF;
      if ((a7 & 0xF) != 0)
      {
        v70 = *v13;
        v71 = vsubl_u8(*v14, v11);
        v72 = vsubl_u8(*v15, v11);
        v73 = vmulq_lane_s16(v71, 0xE3005B002C00B3, 3);
        v74 = vmulq_n_s16(v72, 179);
        v75 = vqaddq_s16(vmulq_lane_s16(v71, 0xE3005B002C00B3, 1), vmulq_lane_s16(v72, 0xE3005B002C00B3, 2));
        v76 = vzip2q_s16(v73, v73);
        v77 = vzip2q_s16(v74, v74);
        v78 = vzip2q_s16(v75, v75);
        v79 = vzip1q_s16(v73, v73);
        v80 = vzip1q_s16(v74, v74);
        v81 = vzip1q_s16(v75, v75);
        if (!(v69 >> 3))
        {
          goto LABEL_16;
        }

        v82 = vshll_n_u8(*v70.i8, 7uLL);
        v87.val[0] = vqrshrun_n_s16(vqaddq_s16(v82, v79), 7uLL);
        v87.val[2] = vqrshrun_n_s16(vqaddq_s16(v82, v80), 7uLL);
        v87.val[1] = vqrshrun_n_s16(vqsubq_s16(v82, v81), 7uLL);
        v87.val[3] = v12;
        vst4_s8(a4, v87);
        a4 += 32;
        v79 = v76;
        v80 = v77;
        v81 = v78;
        v70.i64[0] = v70.i64[1];
        v69 -= 8;
        if (v69)
        {
LABEL_16:
          v83 = vshll_n_u8(*v70.i8, 7uLL);
          *v7.i8 = vqrshrun_n_s16(vqaddq_s16(v83, v79), 7uLL);
          *v9.i8 = vqrshrun_n_s16(vqaddq_s16(v83, v80), 7uLL);
          *v8.i8 = vqrshrun_n_s16(vqsubq_s16(v83, v81), 7uLL);
          do
          {
            *a4 = v7.i8[0];
            a4[1] = v8.i8[0];
            a4[2] = v9.i8[0];
            a4[3] = v12;
            a4 += 4;
            v7 = vshrq_n_u64(v7, 8uLL);
            v8 = vshrq_n_u64(v8, 8uLL);
            v9 = vshrq_n_u64(v9, 8uLL);
            --v69;
          }

          while (v69);
        }
      }
    }

    else
    {
      v16 = a7 >> 4;
      for (j = result[1]; v16; --v16)
      {
        v18 = *v13++;
        v19 = *j++;
        v20 = *v14++;
        v21 = *v15++;
        v22 = vsubl_u8(v20, v11);
        v23 = vsubl_u8(v21, v11);
        v24 = vmulq_lane_s16(v22, 0xE3005B002C00B3, 3);
        v25 = vmulq_n_s16(v23, 179);
        v26 = vqaddq_s16(vmulq_lane_s16(v22, 0xE3005B002C00B3, 1), vmulq_lane_s16(v23, 0xE3005B002C00B3, 2));
        v27 = vzip2q_s16(v24, v24);
        v28 = vzip2q_s16(v25, v25);
        v29 = vzip2q_s16(v26, v26);
        v30 = vzip1q_s16(v24, v24);
        v31 = vzip1q_s16(v25, v25);
        v32 = vzip1q_s16(v26, v26);
        v33 = vshll_n_u8(*v18.i8, 7uLL);
        v84.val[0] = vqrshrun_n_s16(vqaddq_s16(v33, v30), 7uLL);
        v84.val[2] = vqrshrun_n_s16(vqaddq_s16(v33, v31), 7uLL);
        v84.val[1] = vqrshrun_n_s16(vqsubq_s16(v33, v32), 7uLL);
        v84.val[3] = v12;
        vst4_s8(a4, v84);
        v34 = a4 + 32;
        v35 = vshll_high_n_u8(v18, 7uLL);
        v84.val[0] = vqrshrun_n_s16(vqaddq_s16(v35, v27), 7uLL);
        v84.val[2] = vqrshrun_n_s16(vqaddq_s16(v35, v28), 7uLL);
        v84.val[1] = vqrshrun_n_s16(vqsubq_s16(v35, v29), 7uLL);
        v84.val[3] = v12;
        vst4_s8(v34, v84);
        a4 = v34 + 32;
        v36 = vshll_n_u8(*v19.i8, 7uLL);
        v84.val[0] = vqrshrun_n_s16(vqaddq_s16(v36, v30), 7uLL);
        v84.val[2] = vqrshrun_n_s16(vqaddq_s16(v36, v31), 7uLL);
        v84.val[1] = vqrshrun_n_s16(vqsubq_s16(v36, v32), 7uLL);
        v84.val[3] = v12;
        vst4_s8(a5, v84);
        v37 = a5 + 32;
        v38 = vshll_high_n_u8(v19, 7uLL);
        v84.val[0] = vqrshrun_n_s16(vqaddq_s16(v38, v27), 7uLL);
        v84.val[2] = vqrshrun_n_s16(vqaddq_s16(v38, v28), 7uLL);
        v84.val[1] = vqrshrun_n_s16(vqsubq_s16(v38, v29), 7uLL);
        v84.val[3] = v12;
        vst4_s8(v37, v84);
        a5 = v37 + 32;
      }

      v39 = a7 & 0xF;
      if ((a7 & 0xF) != 0)
      {
        v40 = *v13;
        v41 = *j;
        v42 = vsubl_u8(*v14, v11);
        v43 = vsubl_u8(*v15, v11);
        v44 = vmulq_lane_s16(v42, 0xE3005B002C00B3, 3);
        v45 = vmulq_n_s16(v43, 179);
        v46 = vqaddq_s16(vmulq_lane_s16(v42, 0xE3005B002C00B3, 1), vmulq_lane_s16(v43, 0xE3005B002C00B3, 2));
        v47 = vzip2q_s16(v44, v44);
        v48 = vzip2q_s16(v45, v45);
        v49 = vzip2q_s16(v46, v46);
        v50 = vzip1q_s16(v44, v44);
        v51 = vzip1q_s16(v45, v45);
        v52 = vzip1q_s16(v46, v46);
        if (!(v39 >> 3))
        {
          goto LABEL_8;
        }

        v53 = vshll_n_u8(*v40.i8, 7uLL);
        v85.val[0] = vqrshrun_n_s16(vqaddq_s16(v53, v50), 7uLL);
        v85.val[2] = vqrshrun_n_s16(vqaddq_s16(v53, v51), 7uLL);
        v85.val[1] = vqrshrun_n_s16(vqsubq_s16(v53, v52), 7uLL);
        v85.val[3] = v12;
        vst4_s8(a4, v85);
        a4 += 32;
        v54 = vshll_n_u8(*v41.i8, 7uLL);
        v85.val[0] = vqrshrun_n_s16(vqaddq_s16(v54, v50), 7uLL);
        v85.val[2] = vqrshrun_n_s16(vqaddq_s16(v54, v51), 7uLL);
        v85.val[1] = vqrshrun_n_s16(vqsubq_s16(v54, v52), 7uLL);
        v85.val[3] = v12;
        vst4_s8(a5, v85);
        a5 += 32;
        v50 = v47;
        v51 = v48;
        v52 = v49;
        v40.i64[0] = v40.i64[1];
        v41.i64[0] = v41.i64[1];
        v39 -= 8;
        if (v39)
        {
LABEL_8:
          v55 = vshll_n_u8(*v40.i8, 7uLL);
          *v7.i8 = vqrshrun_n_s16(vqaddq_s16(v55, v50), 7uLL);
          *v9.i8 = vqrshrun_n_s16(vqaddq_s16(v55, v51), 7uLL);
          *v8.i8 = vqrshrun_n_s16(vqsubq_s16(v55, v52), 7uLL);
          v56 = vshll_n_u8(*v41.i8, 7uLL);
          *v40.i8 = vqrshrun_n_s16(vqaddq_s16(v56, v50), 7uLL);
          *v10.i8 = vqrshrun_n_s16(vqaddq_s16(v56, v51), 7uLL);
          *v41.i8 = vqrshrun_n_s16(vqsubq_s16(v56, v52), 7uLL);
          do
          {
            *a4 = v7.i8[0];
            a4[1] = v8.i8[0];
            a4[2] = v9.i8[0];
            a4[3] = v12;
            a4 += 4;
            v7 = vshrq_n_u64(v7, 8uLL);
            v8 = vshrq_n_u64(v8, 8uLL);
            v9 = vshrq_n_u64(v9, 8uLL);
            *a5 = v40.i8[0];
            a5[1] = v41.i8[0];
            a5[2] = v10.i8[0];
            a5[3] = v12;
            a5 += 4;
            v40 = vshrq_n_u64(v40, 8uLL);
            v41 = vshrq_n_u64(v41, 8uLL);
            v10 = vshrq_n_u64(v10, 8uLL);
            --v39;
          }

          while (v39);
        }
      }
    }
  }

  return result;
}

uint64_t aj_idct_s2_4x8_nearest(int16x8_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = vqrdmulhq_lane_s16(vaddq_s16(v3, v5), 0x6C8361F84546, 0);
  v7 = vaddq_s16(*a1, v4);
  v8 = vsubq_s16(*a1, v4);
  v9 = vaddq_s16(vqrdmulhq_lane_s16(v3, 0x6C8361F84546, 1), v6);
  v10 = vsubq_s16(vsubq_s16(v6, vqrdmulhq_lane_s16(v5, 0x6C8361F84546, 2)), v5);
  v11 = vaddq_s16(v7, v9);
  v12 = vaddq_s16(v8, v10);
  v13 = vsubq_s16(v8, v10);
  v14 = vsubq_s16(v7, v9);
  v15 = vtrn1q_s16(v11, v12);
  v16 = vtrn2q_s16(v11, v12);
  v17 = vtrn1q_s16(v13, v14);
  v18 = vtrn2q_s16(v13, v14);
  v19 = vtrn1q_s32(v15, v17);
  v20 = vtrn2q_s32(v15, v17);
  v21 = vtrn1q_s32(v16, v18);
  v22 = vtrn2q_s32(v16, v18);
  v23 = vqrdmulhq_lane_s16(vaddq_s16(v21, v22), 0x6C8361F84546, 0);
  v24 = vaddq_s16(v19, v20);
  v25 = vsubq_s16(v19, v20);
  v26 = vaddq_s16(vqrdmulhq_lane_s16(v21, 0x6C8361F84546, 1), v23);
  v27 = vsubq_s16(vsubq_s16(v23, vqrdmulhq_lane_s16(v22, 0x6C8361F84546, 2)), v22);
  v28 = vaddq_s16(v24, v26);
  v29 = vaddq_s16(v25, v27);
  v30 = vsubq_s16(v25, v27);
  v31 = vsubq_s16(v24, v26);
  v32 = vtrn1q_s16(v28, v29);
  v33 = vtrn2q_s16(v28, v29);
  v34 = vtrn1q_s16(v30, v31);
  v35 = vtrn2q_s16(v30, v31);
  v37 = *a2;
  v38 = a2[1];
  v36 = a2 + 2;
  _X3 = (v37 + a3);
  _X4 = (v38 + a3);
  _X5 = (*v36 + a3);
  _X6 = (v36[1] + a3);
  __asm
  {
    PRFM            #0x11, [X3]
    PRFM            #0x11, [X4]
    PRFM            #0x11, [X5]
    PRFM            #0x11, [X6]
  }

  *v28.i8 = vadd_s8(vqrshrn_n_s16(vtrn1q_s32(v32, v34), 3uLL), 0x8080808080808080);
  *v29.i8 = vadd_s8(vqrshrn_n_s16(vtrn1q_s32(v33, v35), 3uLL), 0x8080808080808080);
  *v30.i8 = vadd_s8(vqrshrn_n_s16(vtrn2q_s32(v32, v34), 3uLL), 0x8080808080808080);
  *v31.i8 = vadd_s8(vqrshrn_n_s16(vtrn2q_s32(v33, v35), 3uLL), 0x8080808080808080);
  *_X3 = vzip1_s8(*v28.i8, *v28.i8);
  *_X4 = vzip1_s8(*v29.i8, *v29.i8);
  *_X5 = vzip1_s8(*v30.i8, *v30.i8);
  *_X6 = vzip1_s8(*v31.i8, *v31.i8);
  return 8;
}

uint64_t aj_RGBA8888_YUV444(double a1, int64x2_t a2, int64x2_t a3, int64x2_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unsigned int a8, int a9)
{
  v9 = *a6;
  v10 = *a7;
  v11 = *(a7 + 16);
  v12 = *(a7 + 32);
  v13.i64[0] = 0x80008000800080;
  v13.i64[1] = 0x80008000800080;
  v14 = vshlq_n_s16(v13, 7uLL);
  v15.i64[0] = 0x15980E984B232646;
  v15.i64[1] = 0xA6835982A68;
  for (i = a8 >> 3; i; --i)
  {
    v31 = vld4_s8(v9);
    v9 += 32;
    v17 = vshll_n_u8(v31.val[0], 7uLL);
    v18 = vshll_n_u8(v31.val[1], 7uLL);
    v19 = vshll_n_u8(v31.val[2], 7uLL);
    *a2.i8 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v17, *v15.i8, 0), vqrdmulhq_lane_s16(v18, *v15.i8, 1)), vqrdmulhq_lane_s16(v19, *v15.i8, 2)), 7uLL);
    *a3.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v14, vqrdmulhq_lane_s16(v17, *v15.i8, 3)), vqrdmulhq_laneq_s16(v18, v15, 4)), vrshrq_n_s16(v19, 1uLL)), 7uLL);
    *a4.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v17, 1uLL), vqrdmulhq_laneq_s16(v18, v15, 5)), vqrdmulhq_laneq_s16(v19, v15, 6)), v14), 7uLL);
    *v10 = a2.i64[0];
    v10 += 8;
    *v11 = a3.i64[0];
    v11 += 8;
    *v12 = a4.i64[0];
    v12 += 8;
  }

  v20 = a8 & 7;
  if ((a8 & 7) != 0)
  {
    do
    {
      a2 = vshlq_n_s64(a2, 8uLL);
      a3 = vshlq_n_s64(a3, 8uLL);
      a4 = vshlq_n_s64(a4, 8uLL);
      a2.i8[0] = *v9;
      a3.i8[0] = *(v9 + 1);
      a4.i8[0] = *(v9 + 2);
      v21 = *(v9 + 3);
      v9 += 4;
      --v20;
    }

    while (v20);
    v22 = a8 & 7;
    v23 = 8 - v22;
    v24 = vshll_n_u8(*a2.i8, 7uLL);
    v25 = vshll_n_u8(*a3.i8, 7uLL);
    v26 = vshll_n_u8(*a4.i8, 7uLL);
    *a2.i8 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v24, *v15.i8, 0), vqrdmulhq_lane_s16(v25, *v15.i8, 1)), vqrdmulhq_lane_s16(v26, *v15.i8, 2)), 7uLL);
    *a3.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v14, vqrdmulhq_lane_s16(v24, *v15.i8, 3)), vqrdmulhq_laneq_s16(v25, v15, 4)), vrshrq_n_s16(v26, 1uLL)), 7uLL);
    *a4.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v24, 1uLL), vqrdmulhq_laneq_s16(v25, v15, 5)), vqrdmulhq_laneq_s16(v26, v15, 6)), v14), 7uLL);
    do
    {
      a2 = vshlq_n_s64(a2, 8uLL);
      a3 = vshlq_n_s64(a3, 8uLL);
      a4 = vshlq_n_s64(a4, 8uLL);
      --v23;
    }

    while (v23);
    do
    {
      *v10++ = a2.i8[7];
      *v11++ = a3.i8[7];
      *v12++ = a4.i8[7];
      a2 = vshlq_n_s64(a2, 8uLL);
      a3 = vshlq_n_s64(a3, 8uLL);
      a4 = vshlq_n_s64(a4, 8uLL);
      --v22;
    }

    while (v22);
  }

  result = a9 - a8;
  if (a9 != a8)
  {
    v28 = *(v10 - 1);
    v29 = *(v11 - 1);
    v30 = *(v12 - 1);
    do
    {
      *v10++ = v28;
      *v11++ = v29;
      *v12++ = v30;
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

uint64_t aj_idct_s1_16x8_bilinear(int16x8_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = vaddq_s16(v8, v4);
  v10 = vaddq_s16(*a1, v6);
  v11 = vsubq_s16(*a1, v6);
  v12 = vqrdmulhq_lane_s16(vsubq_s16(v4, v8), 0x30FC273D5A824546, 1);
  v13 = vqshlq_n_s16(a1[7], 1uLL);
  v14 = vaddq_s16(v5, v7);
  v15 = vsubq_s16(v7, v5);
  v16 = vaddq_s16(v3, v13);
  v17 = vsubq_s16(v3, v13);
  v18 = vaddq_s16(v16, v14);
  v19 = vaddq_s16(v9, v12);
  v20 = vaddq_s16(v10, v19);
  v21 = vsubq_s16(v10, v19);
  v22 = vqrdmulhq_lane_s16(vaddq_s16(v15, v17), 0x30FC273D5A824546, 3);
  v23 = vqrdmulhq_lane_s16(vsubq_s16(v16, v14), 0x30FC273D5A824546, 1);
  v24 = vsubq_s16(v11, v12);
  v25 = vaddq_s16(v11, v12);
  v26 = vsubq_s16(vaddq_s16(vqrdmulhq_lane_s16(v17, 0x30FC273D5A824546, 2), v17), v22);
  v27 = vaddq_s16(vqrdmulhq_lane_s16(v15, 0x30FC273D5A824546, 0), v22);
  v28 = vaddq_s16(v18, v26);
  v29 = vaddq_s16(v26, v23);
  v30 = vaddq_s16(v27, v23);
  v31 = vaddq_s16(v20, v28);
  v32 = vaddq_s16(v25, v29);
  v33 = vaddq_s16(v24, v30);
  v34 = vaddq_s16(v21, v27);
  v35 = vsubq_s16(v21, v27);
  v36 = vsubq_s16(v24, v30);
  v37 = vsubq_s16(v25, v29);
  v38 = vsubq_s16(v20, v28);
  v39 = vtrn1q_s16(v31, v32);
  v40 = vtrn2q_s16(v31, v32);
  v41 = vtrn1q_s16(v33, v34);
  v42 = vtrn2q_s16(v33, v34);
  v43 = vtrn1q_s16(v35, v36);
  v44 = vtrn2q_s16(v35, v36);
  v45 = vtrn1q_s16(v37, v38);
  v46 = vtrn2q_s16(v37, v38);
  v47 = vtrn1q_s32(v39, v41);
  v48 = vtrn2q_s32(v39, v41);
  v49 = vtrn1q_s32(v40, v42);
  v50 = vtrn2q_s32(v40, v42);
  v51 = vtrn1q_s32(v43, v45);
  v52 = vtrn2q_s32(v43, v45);
  v53 = vtrn1q_s32(v44, v46);
  v54 = vtrn2q_s32(v44, v46);
  v55 = vtrn1q_s64(v47, v51);
  v56 = vtrn2q_s64(v47, v51);
  v57 = vtrn1q_s64(v49, v53);
  v58 = vtrn2q_s64(v49, v53);
  v59 = vtrn1q_s64(v48, v52);
  v60 = vtrn2q_s64(v48, v52);
  v61 = vtrn1q_s64(v50, v54);
  v62 = vtrn2q_s64(v50, v54);
  v64 = *a2;
  v65 = a2[1];
  v63 = a2 + 2;
  v66 = *v63;
  v67 = v63[1];
  v63 += 2;
  v68 = *v63;
  v69 = v63[1];
  v63 += 2;
  v70 = *v63;
  v71 = v63[1];
  v63 += 2;
  v72 = vaddq_s16(v60, v59);
  v73 = vaddq_s16(v55, v56);
  v74 = vsubq_s16(v55, v56);
  v75 = vqrdmulhq_lane_s16(vsubq_s16(v59, v60), 0x30FC273D5A824546, 1);
  v76 = vqshlq_n_s16(v62, 1uLL);
  v77 = vaddq_s16(v61, v58);
  v78 = vsubq_s16(v58, v61);
  v79 = vaddq_s16(v57, v76);
  v80 = vsubq_s16(v57, v76);
  v81 = vaddq_s16(v79, v77);
  v82 = vaddq_s16(v72, v75);
  v83 = vaddq_s16(v73, v82);
  v84 = vsubq_s16(v73, v82);
  v85 = vqrdmulhq_lane_s16(vaddq_s16(v78, v80), 0x30FC273D5A824546, 3);
  v86 = vqrdmulhq_lane_s16(vsubq_s16(v79, v77), 0x30FC273D5A824546, 1);
  v87 = vsubq_s16(v74, v75);
  v88 = vaddq_s16(v74, v75);
  v89 = vsubq_s16(vaddq_s16(vqrdmulhq_lane_s16(v80, 0x30FC273D5A824546, 2), v80), v85);
  v90 = vaddq_s16(vqrdmulhq_lane_s16(v78, 0x30FC273D5A824546, 0), v85);
  v91 = vaddq_s16(v81, v89);
  v92 = vaddq_s16(v89, v86);
  v93 = vaddq_s16(v90, v86);
  _X3 = (v64 + a3);
  _X4 = (v65 + a3);
  _X5 = (v66 + a3);
  _X6 = (v67 + a3);
  _X7 = (v68 + a3);
  _X9 = (v69 + a3);
  _X10 = (v70 + a3);
  _X11 = (v71 + a3);
  __asm
  {
    PRFM            #0x11, [X3]
    PRFM            #0x11, [X4]
    PRFM            #0x11, [X5]
    PRFM            #0x11, [X6]
    PRFM            #0x11, [X7]
    PRFM            #0x11, [X9]
    PRFM            #0x11, [X10]
    PRFM            #0x11, [X11]
  }

  *v55.i8 = vadd_s8(vqrshrn_n_s16(vaddq_s16(v83, v91), 5uLL), 0x8080808080808080);
  *v86.i8 = vadd_s8(vqrshrn_n_s16(vaddq_s16(v88, v92), 5uLL), 0x8080808080808080);
  *v75.i8 = vadd_s8(vqrshrn_n_s16(vaddq_s16(v87, v93), 5uLL), 0x8080808080808080);
  *v81.i8 = vadd_s8(vqrshrn_n_s16(vaddq_s16(v84, v90), 5uLL), 0x8080808080808080);
  *v74.i8 = vadd_s8(vqrshrn_n_s16(vsubq_s16(v84, v90), 5uLL), 0x8080808080808080);
  *v90.i8 = vadd_s8(vqrshrn_n_s16(vsubq_s16(v87, v93), 5uLL), 0x8080808080808080);
  *v84.i8 = vadd_s8(vqrshrn_n_s16(vsubq_s16(v88, v92), 5uLL), 0x8080808080808080);
  *v92.i8 = vadd_s8(vqrshrn_n_s16(vsubq_s16(v83, v91), 5uLL), 0x8080808080808080);
  v91.i64[0] = 0x1000100010001;
  v91.i64[1] = 0x1000100010001;
  *_X3 = v55.i64[0];
  v114 = vmull_u8(*v86.i8, 0x303030303030303);
  v115 = vmull_u8(*v75.i8, 0x303030303030303);
  *_X4 = vqshrn_n_u16(vaddq_s16(vaddw_u8(vmull_u8(*v55.i8, 0x303030303030303), *v86.i8), v91), 2uLL);
  *_X5 = vqrshrn_n_u16(vaddw_u8(v114, *v55.i8), 2uLL);
  *_X6 = vqshrn_n_u16(vaddq_s16(vaddw_u8(v114, *v75.i8), v91), 2uLL);
  *_X7 = vqrshrn_n_u16(vaddw_u8(v115, *v86.i8), 2uLL);
  v116 = *v63;
  v117 = v63[1];
  v63 += 2;
  v118 = *v63;
  v119 = v63[1];
  v63 += 2;
  v120 = vmull_u8(*v81.i8, 0x303030303030303);
  v121 = vmull_u8(*v74.i8, 0x303030303030303);
  *_X9 = vqshrn_n_u16(vaddq_s16(vaddw_u8(v115, *v81.i8), v91), 2uLL);
  *_X10 = vqrshrn_n_u16(vaddw_u8(v120, *v75.i8), 2uLL);
  *_X11 = vqshrn_n_u16(vaddq_s16(vaddw_u8(v120, *v74.i8), v91), 2uLL);
  *(v116 + a3) = vqrshrn_n_u16(vaddw_u8(v121, *v81.i8), 2uLL);
  v122 = *v63;
  v123 = v63[1];
  v63 += 2;
  v124 = *v63;
  v125 = v63[1];
  v126 = vmull_u8(*v90.i8, 0x303030303030303);
  v127 = vmull_u8(*v84.i8, 0x303030303030303);
  *(v117 + a3) = vqshrn_n_u16(vaddq_s16(vaddw_u8(v121, *v90.i8), v91), 2uLL);
  *(v118 + a3) = vqrshrn_n_u16(vaddw_u8(v126, *v74.i8), 2uLL);
  *(v119 + a3) = vqshrn_n_u16(vaddq_s16(vaddw_u8(v126, *v84.i8), v91), 2uLL);
  *(v122 + a3) = vqrshrn_n_u16(vaddw_u8(v127, *v90.i8), 2uLL);
  *(v123 + a3) = vqshrn_n_u16(vaddq_s16(vaddw_u8(v127, *v92.i8), v91), 2uLL);
  *(v124 + a3) = vqrshrn_n_u16(vaddw_u8(vmull_u8(*v92.i8, 0x303030303030303), *v84.i8), 2uLL);
  *(v125 + a3) = v92.i64[0];
  return 8;
}

uint64_t aj_idct_s1_8x4(int16x8_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = vaddq_s16(v8, v4);
  v10 = vaddq_s16(*a1, v6);
  v11 = vsubq_s16(*a1, v6);
  v12 = vqrdmulhq_lane_s16(vsubq_s16(v4, v8), 0x30FC273D5A824546, 1);
  v13 = vqshlq_n_s16(a1[7], 1uLL);
  v14 = vaddq_s16(v5, v7);
  v15 = vsubq_s16(v7, v5);
  v16 = vaddq_s16(v3, v13);
  v17 = vsubq_s16(v3, v13);
  v18 = vaddq_s16(v16, v14);
  v19 = vaddq_s16(v9, v12);
  v20 = vaddq_s16(v10, v19);
  v21 = vsubq_s16(v10, v19);
  v22 = vqrdmulhq_lane_s16(vaddq_s16(v15, v17), 0x30FC273D5A824546, 3);
  v23 = vqrdmulhq_lane_s16(vsubq_s16(v16, v14), 0x30FC273D5A824546, 1);
  v24 = vsubq_s16(v11, v12);
  v25 = vaddq_s16(v11, v12);
  v26 = vsubq_s16(vaddq_s16(vqrdmulhq_lane_s16(v17, 0x30FC273D5A824546, 2), v17), v22);
  v27 = vaddq_s16(vqrdmulhq_lane_s16(v15, 0x30FC273D5A824546, 0), v22);
  v28 = vaddq_s16(v18, v26);
  v29 = vaddq_s16(v26, v23);
  v30 = vaddq_s16(v27, v23);
  v31 = vaddq_s16(v20, v28);
  v32 = vaddq_s16(v25, v29);
  v33 = vaddq_s16(v24, v30);
  v34 = vaddq_s16(v21, v27);
  v35 = vsubq_s16(v21, v27);
  v36 = vsubq_s16(v24, v30);
  v37 = vsubq_s16(v25, v29);
  v38 = vsubq_s16(v20, v28);
  v39 = vtrn1q_s16(v31, v32);
  v40 = vtrn2q_s16(v31, v32);
  v41 = vtrn1q_s16(v33, v34);
  v42 = vtrn2q_s16(v33, v34);
  v43 = vtrn1q_s16(v35, v36);
  v44 = vtrn2q_s16(v35, v36);
  v45 = vtrn1q_s16(v37, v38);
  v46 = vtrn2q_s16(v37, v38);
  v47 = vtrn1q_s32(v39, v41);
  v48 = vtrn2q_s32(v39, v41);
  v49 = vtrn1q_s32(v40, v42);
  v50 = vtrn2q_s32(v40, v42);
  v51 = vtrn1q_s32(v43, v45);
  v52 = vtrn2q_s32(v43, v45);
  v53 = vtrn1q_s32(v44, v46);
  v54 = vtrn2q_s32(v44, v46);
  v55 = vtrn1q_s64(v47, v51);
  v56 = vtrn2q_s64(v47, v51);
  v57 = vtrn1q_s64(v49, v53);
  v58 = vtrn2q_s64(v49, v53);
  v59 = vtrn1q_s64(v48, v52);
  v60 = vtrn2q_s64(v48, v52);
  v61 = vtrn1q_s64(v50, v54);
  v62 = vtrn2q_s64(v50, v54);
  v64 = *a2;
  v65 = a2[1];
  v63 = a2 + 2;
  v66 = *v63;
  v67 = v63[1];
  v63 += 2;
  v68 = *v63;
  v69 = v63[1];
  v63 += 2;
  v70 = vaddq_s16(v60, v59);
  v71 = vaddq_s16(v55, v56);
  v72 = vsubq_s16(v55, v56);
  v73 = vqrdmulhq_lane_s16(vsubq_s16(v59, v60), 0x30FC273D5A824546, 1);
  v74 = vqshlq_n_s16(v62, 1uLL);
  v75 = vaddq_s16(v61, v58);
  v76 = vsubq_s16(v58, v61);
  v77 = vaddq_s16(v57, v74);
  v78 = vsubq_s16(v57, v74);
  v79 = vaddq_s16(v77, v75);
  v80 = vaddq_s16(v70, v73);
  v81 = vaddq_s16(v71, v80);
  v82 = vsubq_s16(v71, v80);
  v83 = vqrdmulhq_lane_s16(vaddq_s16(v76, v78), 0x30FC273D5A824546, 3);
  v84 = vqrdmulhq_lane_s16(vsubq_s16(v77, v75), 0x30FC273D5A824546, 1);
  v85 = vsubq_s16(v72, v73);
  v86 = vaddq_s16(v72, v73);
  v87 = vsubq_s16(vaddq_s16(vqrdmulhq_lane_s16(v78, 0x30FC273D5A824546, 2), v78), v83);
  v88 = vaddq_s16(vqrdmulhq_lane_s16(v76, 0x30FC273D5A824546, 0), v83);
  v89 = vaddq_s16(v79, v87);
  v90 = vaddq_s16(v87, v84);
  v91 = vaddq_s16(v88, v84);
  _X3 = (v64 + a3);
  _X4 = (v65 + a3);
  _X5 = (v66 + a3);
  _X6 = (v67 + a3);
  _X7 = (v68 + a3);
  _X9 = (v69 + a3);
  _X10 = (*v63 + a3);
  _X11 = (v63[1] + a3);
  __asm
  {
    PRFM            #0x11, [X3]
    PRFM            #0x11, [X4]
    PRFM            #0x11, [X5]
    PRFM            #0x11, [X6]
    PRFM            #0x11, [X7]
    PRFM            #0x11, [X9]
    PRFM            #0x11, [X10]
    PRFM            #0x11, [X11]
  }

  *v55.i8 = vadd_s8(vqrshrn_n_s16(vaddq_s16(v81, v89), 5uLL), 0x8080808080808080);
  *v84.i8 = vadd_s8(vqrshrn_n_s16(vaddq_s16(v86, v90), 5uLL), 0x8080808080808080);
  *v73.i8 = vadd_s8(vqrshrn_n_s16(vaddq_s16(v85, v91), 5uLL), 0x8080808080808080);
  *v79.i8 = vadd_s8(vqrshrn_n_s16(vaddq_s16(v82, v88), 5uLL), 0x8080808080808080);
  *v72.i8 = vadd_s8(vqrshrn_n_s16(vsubq_s16(v82, v88), 5uLL), 0x8080808080808080);
  *v88.i8 = vadd_s8(vqrshrn_n_s16(vsubq_s16(v85, v91), 5uLL), 0x8080808080808080);
  *v82.i8 = vadd_s8(vqrshrn_n_s16(vsubq_s16(v86, v90), 5uLL), 0x8080808080808080);
  *v90.i8 = vadd_s8(vqrshrn_n_s16(vsubq_s16(v81, v89), 5uLL), 0x8080808080808080);
  *v55.i8 = vrhadd_u8(vuzp1_s8(*v55.i8, *v84.i8), vuzp2_s8(*v55.i8, *v84.i8));
  *v84.i8 = vrhadd_u8(vuzp1_s8(*v73.i8, *v79.i8), vuzp2_s8(*v73.i8, *v79.i8));
  *v73.i8 = vrhadd_u8(vuzp1_s8(*v72.i8, *v88.i8), vuzp2_s8(*v72.i8, *v88.i8));
  *v79.i8 = vrhadd_u8(vuzp1_s8(*v82.i8, *v90.i8), vuzp2_s8(*v82.i8, *v90.i8));
  *_X3 = v55.i32[0];
  *_X4 = v55.i32[1];
  *_X5 = v84.i32[0];
  *_X6 = v84.i32[1];
  *_X7 = v73.i32[0];
  *_X9 = v73.i32[1];
  *_X10 = v79.i32[0];
  *_X11 = v79.i32[1];
  return 4;
}

uint64_t aj_huffman_decode_ac_s2(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = 0;
  LODWORD(v6) = 1;
  v7 = a1 + 48;
  v8 = *(a1 + 696);
  v9 = *a2;
  v10 = *(a2 + 28);
  v11 = *(a1 + 40) + 400;
  v12 = *(a2 + 24);
  v13 = *a2 >> 23;
  v14 = *(v11 + 4 * v13);
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v10)
          {
LABEL_38:
            *a2 = v9;
            *(a2 + 24) = v12;
            v41 = v11;
            v42 = a2;
            v39 = a3;
            v40 = a4;
            v37 = a6;
            v38 = v7;
            v35 = v13;
            v36 = v8;
            result = aj_huffman_decode_val_slow(v11 - 400, a2, v6, 0, &v33);
            if (result)
            {
              return result;
            }

            LODWORD(v6) = v33;
            v32 = v33 >> 16;
            v13 = v35;
            v8 = v36;
            v7 = v38;
            a3 = v39;
            a4 = v40;
            v11 = v41;
            a2 = v42;
            v10 = v42[7];
            v12 = v42[6];
            v9 = *v42;
            goto LABEL_31;
          }

          v15 = v14 >> 18;
          v16 = v6 + v14;
          if ((v14 & 0x20000) != 0)
          {
            break;
          }

          if (v15)
          {
            v17 = *(v7 + 4 * v16) * v15;
            a6 = *(v8 + 4 * v16);
            v12 -= BYTE1(v14);
            v9 <<= SBYTE1(v14);
            v13 = v9 >> 23;
            v6 = v16 + 1;
            v14 = *(v11 + 4 * v13);
            *(a3 + a6) = v17;
            if (v12 < 0)
            {
              goto LABEL_15;
            }

LABEL_6:
            if (v6 >= 25)
            {
              *a2 = v9;
              *(a2 + 24) = v12;
              *a4 = v6;
              return 0;
            }
          }

          else
          {
            if (v14)
            {
              v6 = v16 + 1;
            }

            else
            {
              v6 = 64;
            }

            a6 = v14 >> 8;
            v12 -= BYTE1(v14);
            v9 <<= SBYTE1(v14);
            if (v12 < 0)
            {
              goto LABEL_15;
            }

            v13 = v9 >> 23;
            v14 = *(v11 + 4 * v13);
            if (v6 >= 25)
            {
              *a2 = v9;
              *(a2 + 24) = v12;
              *a4 = v6;
              return 0;
            }
          }
        }

        LODWORD(v6) = v16 - v14;
        a6 = v14 & 0x10000;
        if ((v14 & 0x10000) != 0)
        {
          goto LABEL_38;
        }

        v28 = BYTE1(v14);
        v29 = v14 >> 18;
        v12 -= v28;
        v9 <<= v28;
        v6 = v6 + (v29 >> 4);
        v14 = v29 & 0xF;
        if (!v14)
        {
          goto LABEL_32;
        }

        if (v12 + 9 < v14)
        {
          *(a2 + 24) = v12;
          *a2 = v9;
          v41 = v11;
          v42 = a2;
          v39 = a3;
          v40 = a4;
          v37 = (v12 + 9);
          v38 = v7;
          v35 = v6;
          v36 = v13;
          v33 = v8;
          v34 = v14;
          result = aj_istream_fill_buf(a2, v14 - 9);
          if (result)
          {
            return result;
          }

          v8 = v33;
          LODWORD(v14) = v34;
          LODWORD(v6) = v35;
          v13 = v36;
          v7 = v38;
          a3 = v39;
          a4 = v40;
          v11 = v41;
          a2 = v42;
          v10 = v42[7];
          v12 = v42[6];
          v9 = *v42;
        }

        v12 -= v14;
        v30 = v9 >> (32 - v14);
        v9 <<= v14;
        v31 = 1 << (v14 - 1);
        LOWORD(v32) = v30 < v31 ? v30 + 1 - 2 * v31 : v30;
LABEL_31:
        v14 = *(v7 + 4 * v6);
        a6 = *(v8 + 4 * v6);
        v6 = (v6 + 1);
        *(a3 + a6) = v14 * v32;
LABEL_32:
        if (v12 < 0)
        {
          break;
        }

        v13 = v9 >> 23;
        v14 = *(v11 + 4 * v13);
        if (v6 >= 25)
        {
          *a2 = v9;
          *(a2 + 24) = v12;
          *a4 = v6;
          return 0;
        }
      }

      if (v10)
      {
        goto LABEL_6;
      }

LABEL_15:
      a6 = *(a2 + 32);
      v19 = *(a2 + 8);
      if (a6 < 8)
      {
        break;
      }

      v20 = *v19;
      v21 = v19[1];
      v23 = v20 == 255;
      v22 = v21 + (v20 << 8);
      v23 = v23 || v21 == 255;
      v24 = v19[2];
      v25 = v19 + 3;
      a6 = (a6 - 3);
      v14 = (v24 + (v22 << 8));
      if (v23 || v24 == 255)
      {
        break;
      }

      v27 = ~v12;
      *(a2 + 32) = a6;
      *(a2 + 8) = v25;
      v9 |= v14 << v27;
      v12 = 23 - v27;
      v13 = v9 >> 23;
      v14 = *(v11 + 4 * v13);
      if (v6 >= 25)
      {
        *a2 = v9;
        *(a2 + 24) = v12;
        *a4 = v6;
        return 0;
      }
    }

    *a2 = v9;
    *(a2 + 24) = v12;
    v41 = v11;
    v42 = a2;
    v39 = a3;
    v40 = a4;
    v37 = a6;
    v38 = v7;
    v35 = v6;
    v36 = v13;
    v33 = v8;
    v34 = v14;
    result = aj_istream_fill_buf(a2, -9);
    if (result)
    {
      return result;
    }

    v8 = v33;
    LODWORD(v6) = v35;
    a6 = v37;
    v7 = v38;
    a3 = v39;
    a4 = v40;
    v11 = v41;
    a2 = v42;
    v10 = v42[7];
    v12 = v42[6];
    v9 = *v42;
    v13 = *v42 >> 23;
    v14 = *(v41 + 4 * v13);
  }

  while (v35 < 25);
  *v42 = v9;
  *(a2 + 24) = v12;
  *a4 = v6;
  return 0;
}

uint64_t sub_240A7C94C(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4, int a5, uint64_t a6, int a7)
{
  *a2 = a7;
  a2[6] = a5;
  *a4 = v7;
  return 7;
}

uint64_t aj_huffman_decode_val(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v4 = *a2;
  v5 = *(a2 + 24);
  if (*(a2 + 28))
  {
    goto LABEL_32;
  }

  v6 = *(a1 + 4 * ((*a2 >> 23) + 100));
  if ((v6 & 0x30000) == 0)
  {
    v7 = v6 >> 18;
    v8 = a3 + v6;
    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (v9)
    {
      v8 = 63;
    }

    v10 = v4 << SBYTE1(v6);
    v11 = v5 - BYTE1(v6);
    if (v11 >= 0)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if ((v6 & 0x10000) != 0)
  {
LABEL_32:
    *(a2 + 24) = v5;
    return aj_huffman_decode_val_slow(a1, a2, a3, 0, a4);
  }

  v25 = BYTE1(v6);
  v26 = v6 >> 18;
  v11 = v5 - v25;
  v10 = v4 << v25;
  v8 = a3 + (v26 >> 4);
  v27 = v26 & 0xF;
  if (v27)
  {
    if (v11 + 9 < v27)
    {
      *(a2 + 24) = v11;
      *a2 = v10;
      v35 = a2;
      v32 = v8;
      v33 = a4;
      v31 = v27;
      result = aj_istream_fill_buf(a2, v27 - 9);
      v27 = v31;
      if (result)
      {
        return result;
      }

      v8 = v32;
      a4 = v33;
      a2 = v35;
      v11 = v35[6];
      v10 = *v35;
      v30 = v35[7];
    }

    v11 -= v27;
    v28 = v10 >> (32 - v27);
    v10 <<= v27;
    v29 = 1 << (v27 - 1);
    if (v28 < v29)
    {
      v7 = v28 + 1 - 2 * v29;
    }

    else
    {
      v7 = v28;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v11 >= 0)
  {
    *a2 = v10;
    *(a2 + 24) = v11;
    *a4 = v8 + (v7 << 16);
    return 0;
  }

  if (*(a2 + 28))
  {
LABEL_9:
    *a2 = v10;
    *(a2 + 24) = v11;
    *a4 = v8 + (v7 << 16);
    return 0;
  }

LABEL_11:
  v13 = *(a2 + 32);
  v14 = *(a2 + 8);
  if (v13 < 8)
  {
    goto LABEL_33;
  }

  v15 = *v14;
  v16 = v14[1];
  v9 = v15 == 255;
  v17 = v16 + (v15 << 8);
  v18 = v9 || v16 == 255;
  v19 = v14[2];
  v20 = v14 + 3;
  v21 = v13 - 3;
  v22 = v19 + (v17 << 8);
  if (v18 || v19 == 255)
  {
LABEL_33:
    *a2 = v10;
    *(a2 + 24) = v11;
    v34 = a4;
    v36 = v8 + (v7 << 16);
    result = aj_istream_fill_buf(a2, -9);
    if (!result)
    {
      result = 0;
      *v34 = v36;
    }
  }

  else
  {
    *(a2 + 32) = v21;
    v24 = -v11 - 1;
    *(a2 + 8) = v20;
    *a2 = v10 | (v22 << v24);
    *(a2 + 24) = 23 - v24;
    *a4 = v8 + (v7 << 16);
    return 0;
  }

  return result;
}

__int128 *aj_internal_upsample_422(unint64_t *a1, char *a2, int a3, double a4, double a5, double a6, double a7, int64x2_t a8, int64x2_t a9)
{
  v11 = a3 - 1;
  v12 = v11 >> 4;
  a8.i64[0] = *a1;
  result = (a1 + 1);
  for (i = vshlq_n_s64(a8, 0x38uLL).u64[0]; v12; a2 += 32)
  {
    v15 = *result++;
    a9.i64[0] = *(&v15 + 1);
    v16 = vmull_u8(*a8.i8, 0x303030303030303);
    v17 = vmull_u8(*&v15, 0x303030303030303);
    *v27.val[0].i8 = vqrshrn_n_u16(vaddw_u8(v16, vext_s8(i, *a8.i8, 7uLL)), 2uLL);
    *v27.val[1].i8 = vqshrn_n_u16(vaddq_s16(v16, vaddl_u8(vext_s8(*a8.i8, *&v15, 1uLL), 0x101010101010101)), 2uLL);
    --v12;
    v27.val[0].u64[1] = vqrshrn_n_u16(vaddw_u8(v17, vext_s8(*a8.i8, *&v15, 7uLL)), 2uLL);
    v27.val[1].u64[1] = vqshrn_n_u16(vaddq_s16(v17, vaddl_u8(vext_s8(*&v15, *(&v15 + 8), 1uLL), 0x101010101010101)), 2uLL);
    i = v15;
    a8 = a9;
    vst2q_s8(a2, v27);
  }

  if ((v11 & 8) != 0)
  {
    v18 = vext_s8(i, *a8.i8, 7uLL);
    i = *a8.i8;
    v19 = *result;
    result = (result + 8);
    *a8.i8 = v19;
    v20 = vmull_u8(i, 0x303030303030303);
    v26.val[0] = vqrshrn_n_u16(vaddw_u8(v20, v18), 2uLL);
    v26.val[1] = vqshrn_n_u16(vaddq_s16(v20, vaddl_u8(vext_s8(i, v19, 1uLL), 0x101010101010101)), 2uLL);
    vst2_s8(a2, v26);
    a2 += 16;
  }

  v21 = v11 - 8 * (v11 >> 3);
  v22 = vext_s8(i, *a8.i8, 7uLL);
  v23 = a8;
  v24 = vmull_u8(*a8.i8, 0x303030303030303);
  *v9.i8 = vqrshrn_n_u16(vaddw_u8(v24, v22), 2uLL);
  *v10.i8 = vqshrn_n_u16(vaddq_s16(v24, vaddl_u8(vext_s8(*a8.i8, *a8.i8, 1uLL), 0x101010101010101)), 2uLL);
  if (v11 != 8 * (v11 >> 3))
  {
    do
    {
      *a2 = v9.i8[0];
      a2[1] = v10.i8[0];
      a2 += 2;
      v9 = vshrq_n_u64(v9, 8uLL);
      v10 = vshrq_n_u64(v10, 8uLL);
      v23 = vshrq_n_u64(v23, 8uLL);
      v25 = __OFSUB__(v21--, 1);
    }

    while (!((v21 < 0) ^ v25 | (v21 == 0)));
  }

  *a2 = v9.i8[0];
  a2[1] = v23.i8[0];
  return result;
}

uint8x16_t **aj_icol_row_420_to_rgba(uint8x16_t **result, uint8x8_t **a2, uint8x8_t **a3, char *a4, char *a5, int a6, unsigned int a7)
{
  v11 = vdupq_n_s8(0x80u).u64[0];
  v12 = vdupq_n_s8(0xFFu).u64[0];
  if (a6 >= 1)
  {
    v13 = *result;
    v14 = *a2;
    v15 = *a3;
    if (a6 == 1)
    {
      for (i = a7 >> 4; i; --i)
      {
        v58 = *v13++;
        v59 = *v14++;
        v60 = *v15++;
        v61 = vsubl_u8(v59, v11);
        v62 = vsubl_u8(v60, v11);
        v63 = vmulq_lane_s16(v61, 0xE3005B002C00B3, 3);
        v64 = vmulq_n_s16(v62, 179);
        v65 = vqaddq_s16(vmulq_lane_s16(v61, 0xE3005B002C00B3, 1), vmulq_lane_s16(v62, 0xE3005B002C00B3, 2));
        v66 = vshll_n_u8(*v58.i8, 7uLL);
        v86.val[2] = vqrshrun_n_s16(vqaddq_s16(v66, vzip1q_s16(v63, v63)), 7uLL);
        v86.val[0] = vqrshrun_n_s16(vqaddq_s16(v66, vzip1q_s16(v64, v64)), 7uLL);
        v86.val[1] = vqrshrun_n_s16(vqsubq_s16(v66, vzip1q_s16(v65, v65)), 7uLL);
        v86.val[3] = v12;
        vst4_s8(a4, v86);
        v67 = a4 + 32;
        v68 = vshll_high_n_u8(v58, 7uLL);
        v86.val[2] = vqrshrun_n_s16(vqaddq_s16(v68, vzip2q_s16(v63, v63)), 7uLL);
        v86.val[0] = vqrshrun_n_s16(vqaddq_s16(v68, vzip2q_s16(v64, v64)), 7uLL);
        v86.val[1] = vqrshrun_n_s16(vqsubq_s16(v68, vzip2q_s16(v65, v65)), 7uLL);
        v86.val[3] = v12;
        vst4_s8(v67, v86);
        a4 = v67 + 32;
      }

      v69 = a7 & 0xF;
      if ((a7 & 0xF) != 0)
      {
        v70 = *v13;
        v71 = vsubl_u8(*v14, v11);
        v72 = vsubl_u8(*v15, v11);
        v73 = vmulq_lane_s16(v71, 0xE3005B002C00B3, 3);
        v74 = vmulq_n_s16(v72, 179);
        v75 = vqaddq_s16(vmulq_lane_s16(v71, 0xE3005B002C00B3, 1), vmulq_lane_s16(v72, 0xE3005B002C00B3, 2));
        v76 = vzip2q_s16(v73, v73);
        v77 = vzip2q_s16(v74, v74);
        v78 = vzip2q_s16(v75, v75);
        v79 = vzip1q_s16(v73, v73);
        v80 = vzip1q_s16(v74, v74);
        v81 = vzip1q_s16(v75, v75);
        if (!(v69 >> 3))
        {
          goto LABEL_16;
        }

        v82 = vshll_n_u8(*v70.i8, 7uLL);
        v87.val[2] = vqrshrun_n_s16(vqaddq_s16(v82, v79), 7uLL);
        v87.val[0] = vqrshrun_n_s16(vqaddq_s16(v82, v80), 7uLL);
        v87.val[1] = vqrshrun_n_s16(vqsubq_s16(v82, v81), 7uLL);
        v87.val[3] = v12;
        vst4_s8(a4, v87);
        a4 += 32;
        v79 = v76;
        v80 = v77;
        v81 = v78;
        v70.i64[0] = v70.i64[1];
        v69 -= 8;
        if (v69)
        {
LABEL_16:
          v83 = vshll_n_u8(*v70.i8, 7uLL);
          *v9.i8 = vqrshrun_n_s16(vqaddq_s16(v83, v79), 7uLL);
          *v7.i8 = vqrshrun_n_s16(vqaddq_s16(v83, v80), 7uLL);
          *v8.i8 = vqrshrun_n_s16(vqsubq_s16(v83, v81), 7uLL);
          do
          {
            *a4 = v7.i8[0];
            a4[1] = v8.i8[0];
            a4[2] = v9.i8[0];
            a4[3] = v12;
            a4 += 4;
            v7 = vshrq_n_u64(v7, 8uLL);
            v8 = vshrq_n_u64(v8, 8uLL);
            v9 = vshrq_n_u64(v9, 8uLL);
            --v69;
          }

          while (v69);
        }
      }
    }

    else
    {
      v16 = a7 >> 4;
      for (j = result[1]; v16; --v16)
      {
        v18 = *v13++;
        v19 = *j++;
        v20 = *v14++;
        v21 = *v15++;
        v22 = vsubl_u8(v20, v11);
        v23 = vsubl_u8(v21, v11);
        v24 = vmulq_lane_s16(v22, 0xE3005B002C00B3, 3);
        v25 = vmulq_n_s16(v23, 179);
        v26 = vqaddq_s16(vmulq_lane_s16(v22, 0xE3005B002C00B3, 1), vmulq_lane_s16(v23, 0xE3005B002C00B3, 2));
        v27 = vzip2q_s16(v24, v24);
        v28 = vzip2q_s16(v25, v25);
        v29 = vzip2q_s16(v26, v26);
        v30 = vzip1q_s16(v24, v24);
        v31 = vzip1q_s16(v25, v25);
        v32 = vzip1q_s16(v26, v26);
        v33 = vshll_n_u8(*v18.i8, 7uLL);
        v84.val[2] = vqrshrun_n_s16(vqaddq_s16(v33, v30), 7uLL);
        v84.val[0] = vqrshrun_n_s16(vqaddq_s16(v33, v31), 7uLL);
        v84.val[1] = vqrshrun_n_s16(vqsubq_s16(v33, v32), 7uLL);
        v84.val[3] = v12;
        vst4_s8(a4, v84);
        v34 = a4 + 32;
        v35 = vshll_high_n_u8(v18, 7uLL);
        v84.val[2] = vqrshrun_n_s16(vqaddq_s16(v35, v27), 7uLL);
        v84.val[0] = vqrshrun_n_s16(vqaddq_s16(v35, v28), 7uLL);
        v84.val[1] = vqrshrun_n_s16(vqsubq_s16(v35, v29), 7uLL);
        v84.val[3] = v12;
        vst4_s8(v34, v84);
        a4 = v34 + 32;
        v36 = vshll_n_u8(*v19.i8, 7uLL);
        v84.val[2] = vqrshrun_n_s16(vqaddq_s16(v36, v30), 7uLL);
        v84.val[0] = vqrshrun_n_s16(vqaddq_s16(v36, v31), 7uLL);
        v84.val[1] = vqrshrun_n_s16(vqsubq_s16(v36, v32), 7uLL);
        v84.val[3] = v12;
        vst4_s8(a5, v84);
        v37 = a5 + 32;
        v38 = vshll_high_n_u8(v19, 7uLL);
        v84.val[2] = vqrshrun_n_s16(vqaddq_s16(v38, v27), 7uLL);
        v84.val[0] = vqrshrun_n_s16(vqaddq_s16(v38, v28), 7uLL);
        v84.val[1] = vqrshrun_n_s16(vqsubq_s16(v38, v29), 7uLL);
        v84.val[3] = v12;
        vst4_s8(v37, v84);
        a5 = v37 + 32;
      }

      v39 = a7 & 0xF;
      if ((a7 & 0xF) != 0)
      {
        v40 = *v13;
        v41 = *j;
        v42 = vsubl_u8(*v14, v11);
        v43 = vsubl_u8(*v15, v11);
        v44 = vmulq_lane_s16(v42, 0xE3005B002C00B3, 3);
        v45 = vmulq_n_s16(v43, 179);
        v46 = vqaddq_s16(vmulq_lane_s16(v42, 0xE3005B002C00B3, 1), vmulq_lane_s16(v43, 0xE3005B002C00B3, 2));
        v47 = vzip2q_s16(v44, v44);
        v48 = vzip2q_s16(v45, v45);
        v49 = vzip2q_s16(v46, v46);
        v50 = vzip1q_s16(v44, v44);
        v51 = vzip1q_s16(v45, v45);
        v52 = vzip1q_s16(v46, v46);
        if (!(v39 >> 3))
        {
          goto LABEL_8;
        }

        v53 = vshll_n_u8(*v40.i8, 7uLL);
        v85.val[2] = vqrshrun_n_s16(vqaddq_s16(v53, v50), 7uLL);
        v85.val[0] = vqrshrun_n_s16(vqaddq_s16(v53, v51), 7uLL);
        v85.val[1] = vqrshrun_n_s16(vqsubq_s16(v53, v52), 7uLL);
        v85.val[3] = v12;
        vst4_s8(a4, v85);
        a4 += 32;
        v54 = vshll_n_u8(*v41.i8, 7uLL);
        v85.val[2] = vqrshrun_n_s16(vqaddq_s16(v54, v50), 7uLL);
        v85.val[0] = vqrshrun_n_s16(vqaddq_s16(v54, v51), 7uLL);
        v85.val[1] = vqrshrun_n_s16(vqsubq_s16(v54, v52), 7uLL);
        v85.val[3] = v12;
        vst4_s8(a5, v85);
        a5 += 32;
        v50 = v47;
        v51 = v48;
        v52 = v49;
        v40.i64[0] = v40.i64[1];
        v41.i64[0] = v41.i64[1];
        v39 -= 8;
        if (v39)
        {
LABEL_8:
          v55 = vshll_n_u8(*v40.i8, 7uLL);
          *v9.i8 = vqrshrun_n_s16(vqaddq_s16(v55, v50), 7uLL);
          *v7.i8 = vqrshrun_n_s16(vqaddq_s16(v55, v51), 7uLL);
          *v8.i8 = vqrshrun_n_s16(vqsubq_s16(v55, v52), 7uLL);
          v56 = vshll_n_u8(*v41.i8, 7uLL);
          *v10.i8 = vqrshrun_n_s16(vqaddq_s16(v56, v50), 7uLL);
          *v40.i8 = vqrshrun_n_s16(vqaddq_s16(v56, v51), 7uLL);
          *v41.i8 = vqrshrun_n_s16(vqsubq_s16(v56, v52), 7uLL);
          do
          {
            *a4 = v7.i8[0];
            a4[1] = v8.i8[0];
            a4[2] = v9.i8[0];
            a4[3] = v12;
            a4 += 4;
            v7 = vshrq_n_u64(v7, 8uLL);
            v8 = vshrq_n_u64(v8, 8uLL);
            v9 = vshrq_n_u64(v9, 8uLL);
            *a5 = v40.i8[0];
            a5[1] = v41.i8[0];
            a5[2] = v10.i8[0];
            a5[3] = v12;
            a5 += 4;
            v40 = vshrq_n_u64(v40, 8uLL);
            v41 = vshrq_n_u64(v41, 8uLL);
            v10 = vshrq_n_u64(v10, 8uLL);
            --v39;
          }

          while (v39);
        }
      }
    }
  }

  return result;
}

uint8x8_t **aj_icol_row_444_to_rgb(uint8x8_t **result, uint8x8_t **a2, uint8x8_t **a3, char *a4, double a5, double a6, uint64x2_t a7, uint64x2_t a8, uint64x2_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  v12 = vdupq_n_s8(0x80u).u64[0];
  v13 = *result;
  v14 = *a2;
  v15 = *a3;
  for (i = a12 >> 3; i; --i)
  {
    v17 = *v13++;
    v18 = *v14++;
    v19 = *v15++;
    v20 = vshll_n_u8(v17, 7uLL);
    v21 = vsubl_u8(v18, v12);
    v22 = vsubl_u8(v19, v12);
    v27.val[2] = vqrshrun_n_s16(vqaddq_s16(v20, vmulq_lane_s16(v21, 0xE3005B002C00B3, 3)), 7uLL);
    v27.val[0] = vqrshrun_n_s16(vqaddq_s16(v20, vmulq_n_s16(v22, 179)), 7uLL);
    v27.val[1] = vqrshrun_n_s16(vqsubq_s16(v20, vqaddq_s16(vmulq_lane_s16(v21, 0xE3005B002C00B3, 1), vmulq_lane_s16(v22, 0xE3005B002C00B3, 2))), 7uLL);
    vst3_s8(a4, v27);
    a4 += 24;
  }

  if ((a12 & 7) != 0)
  {
    v23 = vshll_n_u8(*v13, 7uLL);
    v24 = vsubl_u8(*v14, v12);
    v25 = vsubl_u8(*v15, v12);
    *a9.i8 = vqrshrun_n_s16(vqaddq_s16(v23, vmulq_lane_s16(v24, 0xE3005B002C00B3, 3)), 7uLL);
    *a7.i8 = vqrshrun_n_s16(vqaddq_s16(v23, vmulq_n_s16(v25, 179)), 7uLL);
    *a8.i8 = vqrshrun_n_s16(vqsubq_s16(v23, vqaddq_s16(vmulq_lane_s16(v24, 0xE3005B002C00B3, 1), vmulq_lane_s16(v25, 0xE3005B002C00B3, 2))), 7uLL);
    v26 = a12 & 7;
    do
    {
      *a4 = a7.i8[0];
      a4[1] = a8.i8[0];
      a4[2] = a9.i8[0];
      a4 += 3;
      a7 = vshrq_n_u64(a7, 8uLL);
      a8 = vshrq_n_u64(a8, 8uLL);
      a9 = vshrq_n_u64(a9, 8uLL);
      --v26;
    }

    while (v26);
  }

  return result;
}

uint64_t aj_RGB888_YUV444(double a1, int64x2_t a2, int64x2_t a3, int64x2_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unsigned int a8, int a9)
{
  v9 = *a6;
  v10 = *a7;
  v11 = *(a7 + 16);
  v12 = *(a7 + 32);
  v13.i64[0] = 0x80008000800080;
  v13.i64[1] = 0x80008000800080;
  v14 = vshlq_n_s16(v13, 7uLL);
  v15.i64[0] = 0x15980E984B232646;
  v15.i64[1] = 0xA6835982A68;
  for (i = a8 >> 3; i; --i)
  {
    v30 = vld3_s8(v9);
    v9 += 24;
    v17 = vshll_n_u8(v30.val[0], 7uLL);
    v18 = vshll_n_u8(v30.val[1], 7uLL);
    v19 = vshll_n_u8(v30.val[2], 7uLL);
    *a2.i8 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v17, *v15.i8, 0), vqrdmulhq_lane_s16(v18, *v15.i8, 1)), vqrdmulhq_lane_s16(v19, *v15.i8, 2)), 7uLL);
    *a3.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v14, vqrdmulhq_lane_s16(v17, *v15.i8, 3)), vqrdmulhq_laneq_s16(v18, v15, 4)), vrshrq_n_s16(v19, 1uLL)), 7uLL);
    *a4.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v17, 1uLL), vqrdmulhq_laneq_s16(v18, v15, 5)), vqrdmulhq_laneq_s16(v19, v15, 6)), v14), 7uLL);
    *v10 = a2.i64[0];
    v10 += 8;
    *v11 = a3.i64[0];
    v11 += 8;
    *v12 = a4.i64[0];
    v12 += 8;
  }

  v20 = a8 & 7;
  if ((a8 & 7) != 0)
  {
    do
    {
      a2 = vshlq_n_s64(a2, 8uLL);
      a3 = vshlq_n_s64(a3, 8uLL);
      a4 = vshlq_n_s64(a4, 8uLL);
      a2.i8[0] = *v9;
      a3.i8[0] = *(v9 + 1);
      a4.i8[0] = *(v9 + 2);
      v9 += 3;
      --v20;
    }

    while (v20);
    v21 = a8 & 7;
    v22 = 8 - v21;
    v23 = vshll_n_u8(*a2.i8, 7uLL);
    v24 = vshll_n_u8(*a3.i8, 7uLL);
    v25 = vshll_n_u8(*a4.i8, 7uLL);
    *a2.i8 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v23, *v15.i8, 0), vqrdmulhq_lane_s16(v24, *v15.i8, 1)), vqrdmulhq_lane_s16(v25, *v15.i8, 2)), 7uLL);
    *a3.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v14, vqrdmulhq_lane_s16(v23, *v15.i8, 3)), vqrdmulhq_laneq_s16(v24, v15, 4)), vrshrq_n_s16(v25, 1uLL)), 7uLL);
    *a4.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v23, 1uLL), vqrdmulhq_laneq_s16(v24, v15, 5)), vqrdmulhq_laneq_s16(v25, v15, 6)), v14), 7uLL);
    do
    {
      a2 = vshlq_n_s64(a2, 8uLL);
      a3 = vshlq_n_s64(a3, 8uLL);
      a4 = vshlq_n_s64(a4, 8uLL);
      --v22;
    }

    while (v22);
    do
    {
      *v10++ = a2.i8[7];
      *v11++ = a3.i8[7];
      *v12++ = a4.i8[7];
      a2 = vshlq_n_s64(a2, 8uLL);
      a3 = vshlq_n_s64(a3, 8uLL);
      a4 = vshlq_n_s64(a4, 8uLL);
      --v21;
    }

    while (v21);
  }

  result = a9 - a8;
  if (a9 != a8)
  {
    v27 = *(v10 - 1);
    v28 = *(v11 - 1);
    v29 = *(v12 - 1);
    do
    {
      *v10++ = v27;
      *v11++ = v28;
      *v12++ = v29;
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

uint8x8_t **aj_resize_vertically(uint8x8_t **result, const __int16 *a2, unint64_t a3, int8x8_t *a4)
{
  if (a3)
  {
    v4 = *result;
    v5 = result[1];
    v6 = result[2];
    v7 = result[3];
    v8 = result[4];
    v10 = vld1q_dup_s16(a2);
    v9 = a2 + 1;
    v11 = vld1q_dup_s16(v9++);
    v12 = vld1q_dup_s16(v9++);
    v13 = vld1q_dup_s16(v9++);
    v14 = vld1q_dup_s16(v9++);
    v15 = (v9 - 5);
    v16 = a3 >> 3;
    if (a3 >> 3)
    {
      do
      {
        v17 = *v4++;
        v18 = *v5++;
        v19 = *v6++;
        v20 = *v7++;
        v21 = *v8++;
        v22 = vmovl_u8(v17);
        v23 = vmovl_u8(v18);
        v24 = vmovl_u8(v19);
        v25 = vmovl_u8(v20);
        v26 = vmovl_u8(v21);
        *a4++ = vqmovun_s16(vqrshrn_high_n_s32(vqrshrn_n_s32(vqaddq_s32(vqaddq_s32(vqaddq_s32(vqaddq_s32(vmull_s16(*v22.i8, *v10.i8), vmull_s16(*v23.i8, *v11.i8)), vmull_s16(*v24.i8, *v12.i8)), vmull_s16(*v25.i8, *v13.i8)), vmull_s16(*v26.i8, *v14.i8)), 0xEuLL), vqaddq_s32(vqaddq_s32(vqaddq_s32(vqaddq_s32(vmull_high_s16(v22, v10), vmull_high_s16(v23, v11)), vmull_high_s16(v24, v12)), vmull_high_s16(v25, v13)), vmull_high_s16(v26, v14)), 0xEuLL));
        v27 = v16-- <= 1;
      }

      while (!v27);
    }

    v28 = a3 & 7;
    if ((a3 & 7) != 0)
    {
      do
      {
        v29 = v4->u8[0];
        v4 = (v4 + 1);
        v30 = v29 * *v15;
        v31 = v5->u8[0];
        v5 = (v5 + 1);
        v32 = v30 + v31 * v15[1];
        v33 = v6->u8[0];
        v6 = (v6 + 1);
        v34 = v32 + v33 * v15[2];
        v35 = v7->u8[0];
        v7 = (v7 + 1);
        v36 = v34 + v35 * v15[3];
        v37 = v8->u8[0];
        v8 = (v8 + 1);
        v38 = (v36 + v37 * v15[4] + 0x2000) >> 14;
        if (v38 <= 0)
        {
          v38 = 0;
        }

        if (v38 >= 255)
        {
          LOBYTE(v38) = -1;
        }

        a4->i8[0] = v38;
        a4 = (a4 + 1);
        v27 = v28-- <= 1;
      }

      while (!v27);
    }
  }

  return result;
}

uint64_t aj_idct_s2(int16x8_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = vqrdmulhq_lane_s16(vaddq_s16(v3, v5), 0x6C8361F84546, 0);
  v7 = vaddq_s16(*a1, v4);
  v8 = vsubq_s16(*a1, v4);
  v9 = vaddq_s16(vqrdmulhq_lane_s16(v3, 0x6C8361F84546, 1), v6);
  v10 = vsubq_s16(vsubq_s16(v6, vqrdmulhq_lane_s16(v5, 0x6C8361F84546, 2)), v5);
  v11 = vaddq_s16(v7, v9);
  v12 = vaddq_s16(v8, v10);
  v13 = vsubq_s16(v8, v10);
  v14 = vsubq_s16(v7, v9);
  v15 = vtrn1q_s16(v11, v12);
  v16 = vtrn2q_s16(v11, v12);
  v17 = vtrn1q_s16(v13, v14);
  v18 = vtrn2q_s16(v13, v14);
  v19 = vtrn1q_s32(v15, v17);
  v20 = vtrn2q_s32(v15, v17);
  v21 = vtrn1q_s32(v16, v18);
  v22 = vtrn2q_s32(v16, v18);
  v23 = vqrdmulhq_lane_s16(vaddq_s16(v21, v22), 0x6C8361F84546, 0);
  v24 = vaddq_s16(v19, v20);
  v25 = vsubq_s16(v19, v20);
  v26 = vaddq_s16(vqrdmulhq_lane_s16(v21, 0x6C8361F84546, 1), v23);
  v27 = vsubq_s16(vsubq_s16(v23, vqrdmulhq_lane_s16(v22, 0x6C8361F84546, 2)), v22);
  v28 = vaddq_s16(v24, v26);
  v29 = vaddq_s16(v25, v27);
  v30 = vsubq_s16(v25, v27);
  v31 = vsubq_s16(v24, v26);
  v32 = vtrn1q_s16(v28, v29);
  v33 = vtrn2q_s16(v28, v29);
  v34 = vtrn1q_s16(v30, v31);
  v35 = vtrn2q_s16(v30, v31);
  v37 = *a2;
  v38 = a2[1];
  v36 = a2 + 2;
  _X3 = (v37 + a3);
  _X4 = (v38 + a3);
  _X5 = (*v36 + a3);
  _X6 = (v36[1] + a3);
  __asm
  {
    PRFM            #0x11, [X3]
    PRFM            #0x11, [X4]
    PRFM            #0x11, [X5]
    PRFM            #0x11, [X6]
  }

  *_X3 = vadd_s8(vqrshrn_n_s16(vtrn1q_s32(v32, v34), 3uLL), 0x8080808080808080).u32[0];
  *_X4 = vadd_s8(vqrshrn_n_s16(vtrn1q_s32(v33, v35), 3uLL), 0x8080808080808080).u32[0];
  *_X5 = vadd_s8(vqrshrn_n_s16(vtrn2q_s32(v32, v34), 3uLL), 0x8080808080808080).u32[0];
  *_X6 = vadd_s8(vqrshrn_n_s16(vtrn2q_s32(v33, v35), 3uLL), 0x8080808080808080).u32[0];
  return 4;
}

uint8x16_t **aj_icol_row_420_to_bgr565(uint8x16_t **result, uint8x8_t **a2, uint8x8_t **a3, char *a4, char *a5, int a6, unsigned int a7)
{
  v9 = vdupq_n_s8(0x80u).u64[0];
  if (a6 >= 1)
  {
    v10 = *result;
    v11 = *a2;
    v12 = *a3;
    if (a6 == 1)
    {
      for (i = a7 >> 4; i; --i)
      {
        v59 = *v10++;
        v60 = *v11++;
        v61 = *v12++;
        v62 = vsubl_u8(v60, v9);
        v63 = vsubl_u8(v61, v9);
        v64 = vmulq_lane_s16(v62, 0xE3005B002C00B3, 3);
        v65 = vmulq_n_s16(v63, 179);
        v66 = vqaddq_s16(vmulq_lane_s16(v62, 0xE3005B002C00B3, 1), vmulq_lane_s16(v63, 0xE3005B002C00B3, 2));
        v67 = vshll_n_u8(*v59.i8, 7uLL);
        v68 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v67, vzip1q_s16(v66, v66)), 7uLL), 0x202020202020202), 2uLL);
        v90.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v67, vzip1q_s16(v64, v64)), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v68, 5uLL));
        v90.val[1] = vorr_s8(vshr_n_u8(v68, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v67, vzip1q_s16(v65, v65)), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(a4, v90);
        v69 = a4 + 16;
        v70 = vshll_high_n_u8(v59, 7uLL);
        v90.val[1] = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v70, vzip2q_s16(v66, v66)), 7uLL), 0x202020202020202), 2uLL);
        v90.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v70, vzip2q_s16(v64, v64)), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v90.val[1], 5uLL));
        v90.val[1] = vorr_s8(vshr_n_u8(v90.val[1], 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v70, vzip2q_s16(v65, v65)), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(v69, v90);
        a4 = v69 + 16;
      }

      v71 = a7 & 0xF;
      if ((a7 & 0xF) != 0)
      {
        v72 = *v10;
        v73 = vsubl_u8(*v11, v9);
        v74 = vsubl_u8(*v12, v9);
        v75 = vmulq_lane_s16(v73, 0xE3005B002C00B3, 3);
        v76 = vmulq_n_s16(v74, 179);
        v77 = vqaddq_s16(vmulq_lane_s16(v73, 0xE3005B002C00B3, 1), vmulq_lane_s16(v74, 0xE3005B002C00B3, 2));
        v78 = vzip2q_s16(v75, v75);
        v79 = vzip2q_s16(v76, v76);
        v80 = vzip2q_s16(v77, v77);
        v81 = vzip1q_s16(v75, v75);
        v82 = vzip1q_s16(v76, v76);
        v83 = vzip1q_s16(v77, v77);
        if (!(v71 >> 3))
        {
          goto LABEL_16;
        }

        v84 = vshll_n_u8(*v72.i8, 7uLL);
        v85 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v84, v83), 7uLL), 0x202020202020202), 2uLL);
        v91.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v84, v81), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v85, 5uLL));
        v91.val[1] = vorr_s8(vshr_n_u8(v85, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v84, v82), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(a4, v91);
        a4 += 16;
        v81 = v78;
        v82 = v79;
        v83 = v80;
        v72.i64[0] = v72.i64[1];
        v71 -= 8;
        if (v71)
        {
LABEL_16:
          v86 = vshll_n_u8(*v72.i8, 7uLL);
          v87 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v86, v83), 7uLL), 0x202020202020202), 2uLL);
          *v7.i8 = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v86, v81), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v87, 5uLL));
          *v8.i8 = vorr_s8(vshr_n_u8(v87, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v86, v82), 7uLL), 0x404040404040404), 3uLL), 3uLL));
          do
          {
            *a4 = v7.i8[0];
            a4[1] = v8.i8[0];
            a4 += 2;
            v7 = vshrq_n_u64(v7, 8uLL);
            v8 = vshrq_n_u64(v8, 8uLL);
            --v71;
          }

          while (v71);
        }
      }
    }

    else
    {
      v13 = a7 >> 4;
      for (j = result[1]; v13; --v13)
      {
        v15 = *v10++;
        v16 = *j++;
        v17 = *v11++;
        v18 = *v12++;
        v19 = vsubl_u8(v17, v9);
        v20 = vsubl_u8(v18, v9);
        v21 = vmulq_lane_s16(v19, 0xE3005B002C00B3, 3);
        v22 = vmulq_n_s16(v20, 179);
        v23 = vqaddq_s16(vmulq_lane_s16(v19, 0xE3005B002C00B3, 1), vmulq_lane_s16(v20, 0xE3005B002C00B3, 2));
        v24 = vzip2q_s16(v21, v21);
        v25 = vzip2q_s16(v22, v22);
        v26 = vzip2q_s16(v23, v23);
        v27 = vzip1q_s16(v21, v21);
        v28 = vzip1q_s16(v22, v22);
        v29 = vzip1q_s16(v23, v23);
        v30 = vshll_n_u8(*v15.i8, 7uLL);
        v31 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v30, v29), 7uLL), 0x202020202020202), 2uLL);
        v88.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v30, v27), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v31, 5uLL));
        v88.val[1] = vorr_s8(vshr_n_u8(v31, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v30, v28), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(a4, v88);
        v32 = a4 + 16;
        v33 = vshll_high_n_u8(v15, 7uLL);
        v88.val[1] = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v33, v26), 7uLL), 0x202020202020202), 2uLL);
        v88.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v33, v24), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v88.val[1], 5uLL));
        v88.val[1] = vorr_s8(vshr_n_u8(v88.val[1], 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v33, v25), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(v32, v88);
        a4 = v32 + 16;
        v34 = vshll_n_u8(*v16.i8, 7uLL);
        v88.val[1] = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v34, v29), 7uLL), 0x202020202020202), 2uLL);
        v88.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v34, v27), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v88.val[1], 5uLL));
        v88.val[1] = vorr_s8(vshr_n_u8(v88.val[1], 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v34, v28), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(a5, v88);
        v35 = a5 + 16;
        v36 = vshll_high_n_u8(v16, 7uLL);
        v88.val[1] = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v36, v26), 7uLL), 0x202020202020202), 2uLL);
        v88.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v36, v24), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v88.val[1], 5uLL));
        v88.val[1] = vorr_s8(vshr_n_u8(v88.val[1], 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v36, v25), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(v35, v88);
        a5 = v35 + 16;
      }

      v37 = a7 & 0xF;
      if ((a7 & 0xF) != 0)
      {
        v38 = *v10;
        v39 = *j;
        v40 = vsubl_u8(*v11, v9);
        v41 = vsubl_u8(*v12, v9);
        v42 = vmulq_lane_s16(v40, 0xE3005B002C00B3, 3);
        v43 = vmulq_n_s16(v41, 179);
        v44 = vqaddq_s16(vmulq_lane_s16(v40, 0xE3005B002C00B3, 1), vmulq_lane_s16(v41, 0xE3005B002C00B3, 2));
        v45 = vzip2q_s16(v42, v42);
        v46 = vzip2q_s16(v43, v43);
        v47 = vzip2q_s16(v44, v44);
        v48 = vzip1q_s16(v42, v42);
        v49 = vzip1q_s16(v43, v43);
        v50 = vzip1q_s16(v44, v44);
        if (!(v37 >> 3))
        {
          goto LABEL_8;
        }

        v51 = vshll_n_u8(*v38.i8, 7uLL);
        v52 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v51, v50), 7uLL), 0x202020202020202), 2uLL);
        v89.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v51, v48), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v52, 5uLL));
        v89.val[1] = vorr_s8(vshr_n_u8(v52, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v51, v49), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(a4, v89);
        a4 += 16;
        v53 = vshll_n_u8(*v39.i8, 7uLL);
        v89.val[1] = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v53, v50), 7uLL), 0x202020202020202), 2uLL);
        v89.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v53, v48), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v89.val[1], 5uLL));
        v89.val[1] = vorr_s8(vshr_n_u8(v89.val[1], 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v53, v49), 7uLL), 0x404040404040404), 3uLL), 3uLL));
        vst2_s8(a5, v89);
        a5 += 16;
        v48 = v45;
        v49 = v46;
        v50 = v47;
        v38.i64[0] = v38.i64[1];
        v39.i64[0] = v39.i64[1];
        v37 -= 8;
        if (v37)
        {
LABEL_8:
          v54 = vshll_n_u8(*v38.i8, 7uLL);
          v55 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v54, v50), 7uLL), 0x202020202020202), 2uLL);
          *v7.i8 = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v54, v48), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v55, 5uLL));
          *v8.i8 = vorr_s8(vshr_n_u8(v55, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v54, v49), 7uLL), 0x404040404040404), 3uLL), 3uLL));
          v56 = vshll_n_u8(*v39.i8, 7uLL);
          v57 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v56, v50), 7uLL), 0x202020202020202), 2uLL);
          *v38.i8 = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v56, v48), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v57, 5uLL));
          *v39.i8 = vorr_s8(vshr_n_u8(v57, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v56, v49), 7uLL), 0x404040404040404), 3uLL), 3uLL));
          do
          {
            *a4 = v7.i8[0];
            a4[1] = v8.i8[0];
            a4 += 2;
            v7 = vshrq_n_u64(v7, 8uLL);
            v8 = vshrq_n_u64(v8, 8uLL);
            *a5 = v38.i8[0];
            a5[1] = v39.i8[0];
            a5 += 2;
            v38 = vshrq_n_u64(v38, 8uLL);
            v39 = vshrq_n_u64(v39, 8uLL);
            --v37;
          }

          while (v37);
        }
      }
    }
  }

  return result;
}

uint64_t aj_BGRA8888_YUV422(uint64_t a1, const char **a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8.i64[0] = 0x80008000800080;
  v8.i64[1] = 0x80008000800080;
  v9 = vshlq_n_s16(v8, 7uLL);
  v10.i64[0] = 0x15980E984B232646;
  v10.i64[1] = 0xA6835982A68;
  for (i = a4 >> 4; i; --i)
  {
    v21 = vld4_s8(v4);
    v12 = v4 + 32;
    v22 = vld4_s8(v12);
    v4 = v12 + 32;
    v13 = vshll_n_u8(v21.val[2], 7uLL);
    v14 = vshll_n_u8(v21.val[1], 7uLL);
    v15 = vshll_n_u8(v21.val[0], 7uLL);
    v21.val[2] = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v13, *v10.i8, 0), vqrdmulhq_lane_s16(v14, *v10.i8, 1)), vqrdmulhq_lane_s16(v15, *v10.i8, 2)), 7uLL);
    v21.val[1] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v9, vqrdmulhq_lane_s16(v13, *v10.i8, 3)), vqrdmulhq_laneq_s16(v14, v10, 4)), vrshrq_n_s16(v15, 1uLL)), 7uLL);
    v21.val[0] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v13, 1uLL), vqrdmulhq_laneq_s16(v14, v10, 5)), vqrdmulhq_laneq_s16(v15, v10, 6)), v9), 7uLL);
    v16 = vshll_n_u8(v22.val[2], 7uLL);
    v17 = vshll_n_u8(v22.val[1], 7uLL);
    v18 = vshll_n_u8(v22.val[0], 7uLL);
    v22.val[1] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v9, vqrdmulhq_lane_s16(v16, *v10.i8, 3)), vqrdmulhq_laneq_s16(v17, v10, 4)), vrshrq_n_s16(v18, 1uLL)), 7uLL);
    v22.val[0] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v16, 1uLL), vqrdmulhq_laneq_s16(v17, v10, 5)), vqrdmulhq_laneq_s16(v18, v10, 6)), v9), 7uLL);
    *v5 = v21.val[2];
    v19 = v5 + 1;
    *v19 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v16, *v10.i8, 0), vqrdmulhq_lane_s16(v17, *v10.i8, 1)), vqrdmulhq_lane_s16(v18, *v10.i8, 2)), 7uLL);
    v5 = v19 + 1;
    *v6++ = vrhadd_u8(vuzp1_s8(v21.val[1], v22.val[1]), vuzp2_s8(v21.val[1], v22.val[1]));
    *v7++ = vrhadd_u8(vuzp1_s8(v21.val[0], v22.val[0]), vuzp2_s8(v21.val[0], v22.val[0]));
  }

  if ((a4 & 8) == 0)
  {
    JUMPOUT(0x240A7E9F8);
  }

  return sub_240A7E974();
}

uint64_t sub_240A7E974(int16x8_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5, int a6, _DWORD *a7, _DWORD *a8, void *a9)
{
  v33 = vld4_s8(a3);
  v13 = (a3 + 32);
  v14 = vshll_n_u8(v33.val[2], 7uLL);
  v15 = vshll_n_u8(v33.val[1], 7uLL);
  v16 = vshll_n_u8(v33.val[0], 7uLL);
  *v11.i8 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v14, *a1.i8, 0), vqrdmulhq_lane_s16(v15, *a1.i8, 1)), vqrdmulhq_lane_s16(v16, *a1.i8, 2)), 7uLL);
  v33.val[1] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v12, vqrdmulhq_lane_s16(v14, *a1.i8, 3)), vqrdmulhq_laneq_s16(v15, a1, 4)), vrshrq_n_s16(v16, 1uLL)), 7uLL);
  v33.val[0] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v14, 1uLL), vqrdmulhq_laneq_s16(v15, a1, 5)), vqrdmulhq_laneq_s16(v16, a1, 6)), v12), 7uLL);
  *v10.i8 = vrhadd_u8(vuzp1_s8(v33.val[1], v33.val[1]), vuzp2_s8(v33.val[1], v33.val[1]));
  *v9.i8 = vrhadd_u8(vuzp1_s8(v33.val[0], v33.val[0]), vuzp2_s8(v33.val[0], v33.val[0]));
  *a9 = v11.i64[0];
  v17 = a9 + 1;
  *a7 = v10.i32[0];
  v18 = a7 + 1;
  *a8 = v9.i32[0];
  v19 = a8 + 1;
  v20 = a5 & 7;
  if ((a5 & 7) != 0)
  {
    do
    {
      v11 = vshlq_n_s64(v11, 8uLL);
      v10 = vshlq_n_s64(v10, 8uLL);
      v9 = vshlq_n_s64(v9, 8uLL);
      v9.i8[0] = *v13;
      v10.i8[0] = v13[1];
      v11.i8[0] = v13[2];
      v21 = v13[3];
      v13 += 4;
      --v20;
    }

    while (v20);
    v22 = a5 & 7;
    v23 = 8 - v22;
    v24 = (v22 + 1) >> 1;
    v25 = vshll_n_u8(*v11.i8, 7uLL);
    v26 = vshll_n_u8(*v10.i8, 7uLL);
    v27 = vshll_n_u8(*v9.i8, 7uLL);
    *v11.i8 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v25, *a1.i8, 0), vqrdmulhq_lane_s16(v26, *a1.i8, 1)), vqrdmulhq_lane_s16(v27, *a1.i8, 2)), 7uLL);
    *v10.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v12, vqrdmulhq_lane_s16(v25, *a1.i8, 3)), vqrdmulhq_laneq_s16(v26, a1, 4)), vrshrq_n_s16(v27, 1uLL)), 7uLL);
    *v9.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v25, 1uLL), vqrdmulhq_laneq_s16(v26, a1, 5)), vqrdmulhq_laneq_s16(v27, a1, 6)), v12), 7uLL);
    do
    {
      v11 = vsliq_n_s64(v11, v11, 8uLL);
      v10 = vsliq_n_s64(v10, v10, 8uLL);
      v9 = vsliq_n_s64(v9, v9, 8uLL);
      --v23;
    }

    while (v23);
    *v10.i8 = vrhadd_u8(vuzp1_s8(*v10.i8, *v10.i8), vuzp2_s8(*v10.i8, *v10.i8));
    *v9.i8 = vrhadd_u8(vuzp1_s8(*v9.i8, *v9.i8), vuzp2_s8(*v9.i8, *v9.i8));
    do
    {
      *v17++ = v11.i8[7];
      v11 = vshlq_n_s64(v11, 8uLL);
      --v22;
    }

    while (v22);
    do
    {
      *v18++ = v10.i8[3];
      *v19++ = v9.i8[3];
      v10 = vshlq_n_s64(v10, 8uLL);
      v9 = vshlq_n_s64(v9, 8uLL);
      --v24;
    }

    while (v24);
  }

  result = (a6 - a5);
  if (a6 != a5)
  {
    v29 = result >> 1;
    v30 = *(v17 - 1);
    v31 = *(v18 - 1);
    v32 = *(v19 - 1);
    do
    {
      *v17++ = v30;
      result = (result - 1);
    }

    while (result);
    for (; v29; --v29)
    {
      *v18++ = v31;
      *v19++ = v32;
    }
  }

  return result;
}

uint64_t aj_block_encode_ac(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 62;
  v4 = *(a1 + 680);
  v5 = *(a1 + 688);
  v6 = (a2 + 2);
  v9 = *v6;
  v8 = (v6 + 1);
  v7 = v9;
  v10 = v9 == 0;
  if (v9)
  {
    v11 = v7 + 16;
    if (v11 >= 0x20)
    {
      if ((v11 - 16) >= 0)
      {
        v43 = v11 - 16;
      }

      else
      {
        v43 = 16 - v11;
      }

      v44 = 32 - __clz(v43);
      if ((v11 - 16) < 0)
      {
        v43 = ~v43;
      }

      v45 = v44 + 16 * v10;
      v15 = (v43 << (32 - v44) >> (32 - v44)) + (*(v4 + 4 * v45) << v44);
      v14 = v44 + HIWORD(*(v4 + 4 * v45));
      if (v14 > 24)
      {
        goto LABEL_76;
      }

      v46 = *(a3 + 20);
      if (v46 <= 8)
      {
        goto LABEL_76;
      }

      v47 = v14 + *(a3 + 4);
      v48 = *a3 | (v15 << (32 - v47));
      v49 = *(a3 + 8);
      for (i = *(a3 + 16); v47 >= 8; v48 <<= 8)
      {
        *v49++ = HIBYTE(v48);
        --v46;
        ++i;
        if (HIBYTE(v48) == 255)
        {
          *v49++ = 0;
          --v46;
          ++i;
        }

        v47 -= 8;
      }

      *a3 = v48;
      *(a3 + 4) = v47;
      *(a3 + 8) = v49;
      *(a3 + 16) = i;
      *(a3 + 20) = v46;
    }

    else
    {
      v12 = *(a3 + 20);
      v13 = *(v5 + 4 * v11);
      v14 = HIBYTE(v13);
      v15 = v13 & 0xFFFFFF;
      if (v12 <= 8)
      {
        goto LABEL_76;
      }

      v16 = v14 + *(a3 + 4);
      v17 = *a3 | (v15 << (32 - v16));
      v18 = *(a3 + 8);
      for (j = *(a3 + 16); v16 >= 8; v17 <<= 8)
      {
        *v18++ = HIBYTE(v17);
        --v12;
        ++j;
        if (HIBYTE(v17) == 255)
        {
          *v18++ = 0;
          --v12;
          ++j;
        }

        v16 -= 8;
      }

      *a3 = v17;
      *(a3 + 4) = v16;
      *(a3 + 8) = v18;
      *(a3 + 16) = j;
      *(a3 + 20) = v12;
    }
  }

LABEL_12:
  v21 = *v8++;
  result = v21;
  if (!v21)
  {
    v10 += 2;
LABEL_10:
    --v3;
    goto LABEL_11;
  }

  if (result << 16)
  {
    v22 = result << 16;
  }

  else
  {
    v22 = result;
  }

  --v3;
  v23 = v22 >> 16;
  if (result << 16)
  {
    ++v3;
  }

  else
  {
    ++v10;
  }

  if (v10 >> 4)
  {
LABEL_54:
    while (1)
    {
      v10 -= 16;
      v51 = *(v4 + 960);
      v52 = HIWORD(*(v4 + 960));
      v53 = *(a3 + 20);
      if (v53 <= 8)
      {
        goto LABEL_83;
      }

      v54 = v52 + *(a3 + 4);
      v55 = *a3 | (v51 << (32 - v54));
      v56 = *(a3 + 8);
      for (k = *(a3 + 16); v54 >= 8; v55 <<= 8)
      {
        *v56++ = HIBYTE(v55);
        --v53;
        ++k;
        if (HIBYTE(v55) == 255)
        {
          *v56++ = 0;
          --v53;
          ++k;
        }

        v54 -= 8;
      }

      *a3 = v55;
      *(a3 + 4) = v54;
      *(a3 + 8) = v56;
      *(a3 + 16) = k;
      *(a3 + 20) = v53;
      if (!(v10 >> 4))
      {
        v23 = result;
        if (v3)
        {
          v23 = result >> 16;
        }

        goto LABEL_20;
      }
    }
  }

  do
  {
LABEL_20:
    while (1)
    {
      v24 = v23 + 16;
      if (v24 < 0x20 && v10 < 8)
      {
        break;
      }

      if ((v24 - 16) >= 0)
      {
        v58 = v24 - 16;
      }

      else
      {
        v58 = 16 - v24;
      }

      v59 = 32 - __clz(v58);
      if ((v24 - 16) < 0)
      {
        v58 = ~v58;
      }

      v60 = v59 + 16 * v10;
      v10 = 0;
      v61 = (v58 << (32 - v59) >> (32 - v59)) + (*(v4 + 4 * v60) << v59);
      v62 = v59 + HIWORD(*(v4 + 4 * v60));
      v29 = v62;
      v30 = v61;
      if (v62 > 24 || (v63 = *(a3 + 20), v63 <= 8))
      {
LABEL_78:
        v80 = v8;
        v83 = a3;
        v77 = v3;
        v69 = v5;
        v72 = result;
        v66 = v4;
        v34 = aj_ostream_write(a3, v30, v29) == 0;
        v4 = v66;
        v5 = v69;
        result = v72;
        v10 = 0;
        v3 = v77;
        v8 = v80;
        a3 = v83;
        if (!v34)
        {
          return result;
        }

        if (v77)
        {
LABEL_11:
          if (!--v3)
          {
            goto LABEL_29;
          }

          goto LABEL_12;
        }

        v23 = v72 >> 16;
        v10 = v72 >> 16 == 0;
        if (!(v72 >> 16))
        {
          goto LABEL_10;
        }

        v3 = v77 - 1;
        if (v77 == 1)
        {
LABEL_83:
          v81 = v8;
          v84 = a3;
          v75 = v10;
          v78 = v3;
          v70 = v5;
          v73 = result;
          v67 = v4;
          v34 = aj_ostream_write(a3, v51, v52) == 0;
          v4 = v67;
          v5 = v70;
          result = v73;
          v10 = v75;
          v3 = v78;
          v8 = v81;
          a3 = v84;
          if (!v34)
          {
            return result;
          }

          if (v75 >> 4)
          {
            goto LABEL_54;
          }

          v23 = v73;
          if (v78)
          {
            v23 = v73 >> 16;
          }
        }
      }

      else
      {
        v14 = v62 + *(a3 + 4);
        v15 = *a3 | (v61 << (32 - v14));
        v64 = *(a3 + 8);
        for (m = *(a3 + 16); v14 >= 8; v15 <<= 8)
        {
          *v64++ = HIBYTE(v15);
          --v63;
          ++m;
          if (HIBYTE(v15) == 255)
          {
            *v64++ = 0;
            --v63;
            ++m;
          }

          v14 -= 8;
        }

        *a3 = v15;
        *(a3 + 4) = v14;
        *(a3 + 8) = v64;
        *(a3 + 16) = m;
        *(a3 + 20) = v63;
        if (v3)
        {
          goto LABEL_11;
        }

        v23 = result >> 16;
        v10 = result >> 16 == 0;
        if (!(result >> 16))
        {
          goto LABEL_10;
        }

        if (!--v3)
        {
LABEL_76:
          v79 = v8;
          v82 = a3;
          v74 = v10;
          v76 = v3;
          v68 = v5;
          v71 = v4;
          result = aj_ostream_write(a3, v15, v14);
          v5 = v68;
          v4 = v71;
          v10 = v74;
          v3 = v76;
          v8 = v79;
          a3 = v82;
          if (result)
          {
            return result;
          }

          goto LABEL_12;
        }
      }
    }

    v25 = *(v5 + 4 * (v24 + 32 * v10));
    v26 = *(a3 + 8);
    v27 = *(a3 + 16);
    v28 = *(a3 + 20);
    v10 = 0;
    v29 = HIBYTE(v25);
    v30 = v25 & 0xFFFFFF;
    if (v28 <= 8)
    {
      goto LABEL_78;
    }

    v31 = *(a3 + 4) + v29;
    v32 = *a3 | (v30 << (32 - v31));
    while (v31 >= 8)
    {
      while (1)
      {
        v33 = HIBYTE(v32);
        ++v27;
        --v28;
        *v26++ = HIBYTE(v32);
        v34 = HIBYTE(v32) == 255;
        v31 -= 8;
        v32 <<= 8;
        if (v33 == 255)
        {
          break;
        }

        if (v31 < 8)
        {
          goto LABEL_26;
        }
      }

      if (v34)
      {
        *v26++ = 0;
        --v28;
        ++v27;
      }
    }

LABEL_26:
    *a3 = v32;
    *(a3 + 4) = v31;
    *(a3 + 8) = v26;
    *(a3 + 16) = v27;
    *(a3 + 20) = v28;
    if (v3)
    {
      goto LABEL_11;
    }

    v23 = result >> 16;
    v10 = result >> 16 == 0;
    if (!(result >> 16))
    {
      goto LABEL_10;
    }

    --v3;
  }

  while (v3);
LABEL_29:
  if (!v10)
  {
    return 0;
  }

  v35 = *(a3 + 20);
  v36 = *(v5 + 64);
  v37 = HIBYTE(v36);
  v38 = v36 & 0xFFFFFF;
  if (v35 <= 8)
  {
    result = aj_ostream_write(a3, v38, v37);
    if (!result)
    {
      return 0;
    }
  }

  else
  {
    v39 = v37 + *(a3 + 4);
    v40 = *a3 | (v38 << (32 - v39));
    v41 = *(a3 + 8);
    for (n = *(a3 + 16); v39 >= 8; v40 <<= 8)
    {
      *v41++ = HIBYTE(v40);
      --v35;
      ++n;
      if (HIBYTE(v40) == 255)
      {
        *v41++ = 0;
        --v35;
        ++n;
      }

      v39 -= 8;
    }

    *a3 = v40;
    *(a3 + 4) = v39;
    *(a3 + 8) = v41;
    *(a3 + 16) = n;
    *(a3 + 20) = v35;
    return 0;
  }

  return result;
}

uint64_t aj_RGB888_YUV422(uint64_t a1, const char **a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8.i64[0] = 0x80008000800080;
  v8.i64[1] = 0x80008000800080;
  v9 = vshlq_n_s16(v8, 7uLL);
  v10.i64[0] = 0x15980E984B232646;
  v10.i64[1] = 0xA6835982A68;
  for (i = a4 >> 4; i; --i)
  {
    v21 = vld3_s8(v4);
    v12 = v4 + 24;
    v22 = vld3_s8(v12);
    v4 = v12 + 24;
    v13 = vshll_n_u8(v21.val[0], 7uLL);
    v14 = vshll_n_u8(v21.val[1], 7uLL);
    v15 = vshll_n_u8(v21.val[2], 7uLL);
    v21.val[0] = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v13, *v10.i8, 0), vqrdmulhq_lane_s16(v14, *v10.i8, 1)), vqrdmulhq_lane_s16(v15, *v10.i8, 2)), 7uLL);
    v21.val[1] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v9, vqrdmulhq_lane_s16(v13, *v10.i8, 3)), vqrdmulhq_laneq_s16(v14, v10, 4)), vrshrq_n_s16(v15, 1uLL)), 7uLL);
    v21.val[2] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v13, 1uLL), vqrdmulhq_laneq_s16(v14, v10, 5)), vqrdmulhq_laneq_s16(v15, v10, 6)), v9), 7uLL);
    v16 = vshll_n_u8(v22.val[0], 7uLL);
    v17 = vshll_n_u8(v22.val[1], 7uLL);
    v18 = vshll_n_u8(v22.val[2], 7uLL);
    v22.val[1] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v9, vqrdmulhq_lane_s16(v16, *v10.i8, 3)), vqrdmulhq_laneq_s16(v17, v10, 4)), vrshrq_n_s16(v18, 1uLL)), 7uLL);
    v22.val[2] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v16, 1uLL), vqrdmulhq_laneq_s16(v17, v10, 5)), vqrdmulhq_laneq_s16(v18, v10, 6)), v9), 7uLL);
    *v5 = v21.val[0];
    v19 = v5 + 1;
    *v19 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v16, *v10.i8, 0), vqrdmulhq_lane_s16(v17, *v10.i8, 1)), vqrdmulhq_lane_s16(v18, *v10.i8, 2)), 7uLL);
    v5 = v19 + 1;
    *v6++ = vrhadd_u8(vuzp1_s8(v21.val[1], v22.val[1]), vuzp2_s8(v21.val[1], v22.val[1]));
    *v7++ = vrhadd_u8(vuzp1_s8(v21.val[2], v22.val[2]), vuzp2_s8(v21.val[2], v22.val[2]));
  }

  if ((a4 & 8) == 0)
  {
    JUMPOUT(0x240A7F7E4);
  }

  return sub_240A7F760();
}

uint64_t sub_240A7F760(int16x8_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5, int a6, _DWORD *a7, _DWORD *a8, void *a9)
{
  v32 = vld3_s8(a3);
  v13 = (a3 + 24);
  v14 = vshll_n_u8(v32.val[0], 7uLL);
  v15 = vshll_n_u8(v32.val[1], 7uLL);
  v16 = vshll_n_u8(v32.val[2], 7uLL);
  *v9.i8 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v14, *a1.i8, 0), vqrdmulhq_lane_s16(v15, *a1.i8, 1)), vqrdmulhq_lane_s16(v16, *a1.i8, 2)), 7uLL);
  v32.val[1] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v12, vqrdmulhq_lane_s16(v14, *a1.i8, 3)), vqrdmulhq_laneq_s16(v15, a1, 4)), vrshrq_n_s16(v16, 1uLL)), 7uLL);
  v32.val[2] = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v14, 1uLL), vqrdmulhq_laneq_s16(v15, a1, 5)), vqrdmulhq_laneq_s16(v16, a1, 6)), v12), 7uLL);
  *v10.i8 = vrhadd_u8(vuzp1_s8(v32.val[1], v32.val[1]), vuzp2_s8(v32.val[1], v32.val[1]));
  *v11.i8 = vrhadd_u8(vuzp1_s8(v32.val[2], v32.val[2]), vuzp2_s8(v32.val[2], v32.val[2]));
  *a9 = v9.i64[0];
  v17 = a9 + 1;
  *a7 = v10.i32[0];
  v18 = a7 + 1;
  *a8 = v11.i32[0];
  v19 = a8 + 1;
  v20 = a5 & 7;
  if ((a5 & 7) != 0)
  {
    do
    {
      v9 = vshlq_n_s64(v9, 8uLL);
      v10 = vshlq_n_s64(v10, 8uLL);
      v11 = vshlq_n_s64(v11, 8uLL);
      v9.i8[0] = *v13;
      v10.i8[0] = v13[1];
      v11.i8[0] = v13[2];
      v13 += 3;
      --v20;
    }

    while (v20);
    v21 = a5 & 7;
    v22 = 8 - v21;
    v23 = (v21 + 1) >> 1;
    v24 = vshll_n_u8(*v9.i8, 7uLL);
    v25 = vshll_n_u8(*v10.i8, 7uLL);
    v26 = vshll_n_u8(*v11.i8, 7uLL);
    *v9.i8 = vqrshrun_n_s16(vaddq_s16(vaddq_s16(vqrdmulhq_lane_s16(v24, *a1.i8, 0), vqrdmulhq_lane_s16(v25, *a1.i8, 1)), vqrdmulhq_lane_s16(v26, *a1.i8, 2)), 7uLL);
    *v10.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(v12, vqrdmulhq_lane_s16(v24, *a1.i8, 3)), vqrdmulhq_laneq_s16(v25, a1, 4)), vrshrq_n_s16(v26, 1uLL)), 7uLL);
    *v11.i8 = vqrshrun_n_s16(vaddq_s16(vsubq_s16(vsubq_s16(vrshrq_n_s16(v24, 1uLL), vqrdmulhq_laneq_s16(v25, a1, 5)), vqrdmulhq_laneq_s16(v26, a1, 6)), v12), 7uLL);
    do
    {
      v9 = vsliq_n_s64(v9, v9, 8uLL);
      v10 = vsliq_n_s64(v10, v10, 8uLL);
      v11 = vsliq_n_s64(v11, v11, 8uLL);
      --v22;
    }

    while (v22);
    *v10.i8 = vrhadd_u8(vuzp1_s8(*v10.i8, *v10.i8), vuzp2_s8(*v10.i8, *v10.i8));
    *v11.i8 = vrhadd_u8(vuzp1_s8(*v11.i8, *v11.i8), vuzp2_s8(*v11.i8, *v11.i8));
    do
    {
      *v17++ = v9.i8[7];
      v9 = vshlq_n_s64(v9, 8uLL);
      --v21;
    }

    while (v21);
    do
    {
      *v18++ = v10.i8[3];
      *v19++ = v11.i8[3];
      v10 = vshlq_n_s64(v10, 8uLL);
      v11 = vshlq_n_s64(v11, 8uLL);
      --v23;
    }

    while (v23);
  }

  result = (a6 - a5);
  if (a6 != a5)
  {
    v28 = result >> 1;
    v29 = *(v17 - 1);
    v30 = *(v18 - 1);
    v31 = *(v19 - 1);
    do
    {
      *v17++ = v29;
      result = (result - 1);
    }

    while (result);
    for (; v28; --v28)
    {
      *v18++ = v30;
      *v19++ = v31;
    }
  }

  return result;
}

uint8x8_t **aj_icol_row_444_to_rgb565(uint8x8_t **result, uint8x8_t **a2, uint8x8_t **a3, char *a4, double a5, double a6, uint64x2_t a7, uint64x2_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v11 = vdupq_n_s8(0x80u).u64[0];
  v12 = *result;
  v13 = *a2;
  v14 = *a3;
  for (i = a11 >> 3; i; --i)
  {
    v16 = *v12++;
    v17 = *v13++;
    v18 = *v14++;
    v19 = vshll_n_u8(v16, 7uLL);
    v20 = vsubl_u8(v17, v11);
    v21 = vsubl_u8(v18, v11);
    v22 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v19, vqaddq_s16(vmulq_lane_s16(v20, 0xE3005B002C00B3, 1), vmulq_lane_s16(v21, 0xE3005B002C00B3, 2))), 7uLL), 0x202020202020202), 2uLL);
    v28.val[0] = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v19, vmulq_n_s16(v21, 179)), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v22, 5uLL));
    v28.val[1] = vorr_s8(vshr_n_u8(v22, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v19, vmulq_lane_s16(v20, 0xE3005B002C00B3, 3)), 7uLL), 0x404040404040404), 3uLL), 3uLL));
    vst2_s8(a4, v28);
    a4 += 16;
  }

  if ((a11 & 7) != 0)
  {
    v23 = vshll_n_u8(*v12, 7uLL);
    v24 = vsubl_u8(*v13, v11);
    v25 = vsubl_u8(*v14, v11);
    v26 = vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqsubq_s16(v23, vqaddq_s16(vmulq_lane_s16(v24, 0xE3005B002C00B3, 1), vmulq_lane_s16(v25, 0xE3005B002C00B3, 2))), 7uLL), 0x202020202020202), 2uLL);
    *a7.i8 = vorr_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v23, vmulq_n_s16(v25, 179)), 7uLL), 0x404040404040404), 3uLL), vshl_n_s8(v26, 5uLL));
    *a8.i8 = vorr_s8(vshr_n_u8(v26, 3uLL), vshl_n_s8(vshr_n_u8(vqadd_u8(vqrshrun_n_s16(vqaddq_s16(v23, vmulq_lane_s16(v24, 0xE3005B002C00B3, 3)), 7uLL), 0x404040404040404), 3uLL), 3uLL));
    v27 = a11 & 7;
    do
    {
      *a4 = a7.i8[0];
      a4[1] = a8.i8[0];
      a4 += 2;
      a7 = vshrq_n_u64(a7, 8uLL);
      a8 = vshrq_n_u64(a8, 8uLL);
      --v27;
    }

    while (v27);
  }

  return result;
}

uint64_t aj_huffman_decode_ac_s1(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = 0;
  a3[8] = 0;
  a3[9] = 0;
  a3[10] = 0;
  a3[11] = 0;
  a3[12] = 0;
  a3[13] = 0;
  a3[14] = 0;
  a3[15] = 0;
  LODWORD(v6) = 1;
  v7 = a1 + 48;
  v8 = *(a1 + 696);
  v9 = *a2;
  v10 = *(a2 + 28);
  v11 = *(a1 + 40) + 400;
  v12 = *(a2 + 24);
  v13 = *a2 >> 23;
  v14 = *(v11 + 4 * v13);
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (v10)
          {
LABEL_42:
            *a2 = v9;
            *(a2 + 24) = v12;
            v41 = v11;
            v42 = a2;
            v39 = a3;
            v40 = a4;
            v37 = a6;
            v38 = v7;
            v35 = v13;
            v36 = v8;
            result = aj_huffman_decode_val_slow(v11 - 400, a2, v6, 0, &v33);
            if (result)
            {
              return result;
            }

            LODWORD(v6) = v33;
            v32 = v33 >> 16;
            v13 = v35;
            v8 = v36;
            v7 = v38;
            a3 = v39;
            a4 = v40;
            v11 = v41;
            a2 = v42;
            v10 = v42[7];
            v12 = v42[6];
            v9 = *v42;
            goto LABEL_34;
          }

          v15 = v14 >> 18;
          v16 = v6 + v14;
          if ((v14 & 0x20000) != 0)
          {
            break;
          }

          if (v15)
          {
            v17 = *(v7 + 4 * v16) * v15 + 2048;
            a6 = *(v8 + 4 * v16);
            v12 -= BYTE1(v14);
            v9 <<= SBYTE1(v14);
            v13 = v9 >> 23;
            v6 = v16 + 1;
            v14 = *(v11 + 4 * v13);
            *(a3 + a6) = v17 >> 12;
            if (v12 < 0)
            {
              goto LABEL_17;
            }

LABEL_6:
            if (v6 >= 64)
            {
              if (v6 <= 64)
              {
                *a2 = v9;
                *(a2 + 24) = v12;
                *a4 = v6;
                return 0;
              }

              goto LABEL_48;
            }
          }

          else
          {
            if (v14)
            {
              v6 = v16 + 1;
            }

            else
            {
              v6 = 64;
            }

            a6 = v14 >> 8;
            v12 -= BYTE1(v14);
            v9 <<= SBYTE1(v14);
            if (v12 < 0)
            {
              goto LABEL_17;
            }

            v13 = v9 >> 23;
            v14 = *(v11 + 4 * v13);
            if (v6 >= 64)
            {
              if (v6 <= 64)
              {
                *a2 = v9;
                *(a2 + 24) = v12;
                *a4 = v6;
                return 0;
              }

              goto LABEL_48;
            }
          }
        }

        LODWORD(v6) = v16 - v14;
        a6 = v14 & 0x10000;
        if ((v14 & 0x10000) != 0)
        {
          goto LABEL_42;
        }

        v28 = BYTE1(v14);
        v29 = v14 >> 18;
        v12 -= v28;
        v9 <<= v28;
        v6 = v6 + (v29 >> 4);
        v14 = v29 & 0xF;
        if (!v14)
        {
          goto LABEL_35;
        }

        if (v12 + 9 < v14)
        {
          *(a2 + 24) = v12;
          *a2 = v9;
          v41 = v11;
          v42 = a2;
          v39 = a3;
          v40 = a4;
          v37 = (v12 + 9);
          v38 = v7;
          v35 = v6;
          v36 = v13;
          v33 = v8;
          v34 = v14;
          result = aj_istream_fill_buf(a2, v14 - 9);
          if (result)
          {
            return result;
          }

          v8 = v33;
          LODWORD(v14) = v34;
          LODWORD(v6) = v35;
          v13 = v36;
          v7 = v38;
          a3 = v39;
          a4 = v40;
          v11 = v41;
          a2 = v42;
          v10 = v42[7];
          v12 = v42[6];
          v9 = *v42;
        }

        v12 -= v14;
        v30 = v9 >> (32 - v14);
        v9 <<= v14;
        v31 = 1 << (v14 - 1);
        v32 = v30 < v31 ? v30 + 1 - 2 * v31 : v30;
LABEL_34:
        v14 = *(v7 + 4 * v6);
        a6 = *(v8 + 4 * v6);
        v6 = (v6 + 1);
        *(a3 + a6) = (v14 * v32 + 2048) >> 12;
LABEL_35:
        if (v12 < 0)
        {
          break;
        }

        v13 = v9 >> 23;
        v14 = *(v11 + 4 * v13);
        if (v6 >= 64)
        {
          if (v6 <= 64)
          {
            *a2 = v9;
            *(a2 + 24) = v12;
            *a4 = v6;
            return 0;
          }

          goto LABEL_48;
        }
      }

      if (v10)
      {
        goto LABEL_6;
      }

LABEL_17:
      a6 = *(a2 + 32);
      v19 = *(a2 + 8);
      if (a6 < 8)
      {
        break;
      }

      v20 = *v19;
      v21 = v19[1];
      v23 = v20 == 255;
      v22 = v21 + (v20 << 8);
      v23 = v23 || v21 == 255;
      v24 = v19[2];
      v25 = v19 + 3;
      a6 = (a6 - 3);
      v14 = (v24 + (v22 << 8));
      if (v23 || v24 == 255)
      {
        break;
      }

      v27 = ~v12;
      *(a2 + 32) = a6;
      *(a2 + 8) = v25;
      v9 |= v14 << v27;
      v12 = 23 - v27;
      v13 = v9 >> 23;
      v14 = *(v11 + 4 * v13);
      if (v6 >= 64)
      {
        if (v6 <= 64)
        {
          *a2 = v9;
          *(a2 + 24) = v12;
          *a4 = v6;
          return 0;
        }

        goto LABEL_48;
      }
    }

    *a2 = v9;
    *(a2 + 24) = v12;
    v41 = v11;
    v42 = a2;
    v39 = a3;
    v40 = a4;
    v37 = a6;
    v38 = v7;
    v35 = v6;
    v36 = v13;
    v33 = v8;
    v34 = v14;
    result = aj_istream_fill_buf(a2, -9);
    if (result)
    {
      return result;
    }

    v8 = v33;
    LODWORD(v6) = v35;
    a6 = v37;
    v7 = v38;
    a3 = v39;
    a4 = v40;
    v11 = v41;
    a2 = v42;
    v10 = v42[7];
    v12 = v42[6];
    v9 = *v42;
    v13 = *v42 >> 23;
    v14 = *(v41 + 4 * v13);
  }

  while (v35 < 64);
  if (v35 <= 64)
  {
    *v42 = v9;
    *(a2 + 24) = v12;
    *a4 = v6;
    return 0;
  }

LABEL_48:
  *a2 = v9;
  *(a2 + 24) = v12;
  *a4 = v6;
  return 7;
}

uint64_t aj_block_pack(uint64_t *a1, uint64_t a2, int *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = a1 + 5120;
  v83 = xmmword_278CB2D98;
  v84 = &zero_block;
  v7 = *a1;
  v8 = *a1;
  *(v8 + 3) = 0u;
  v9 = v8 + 3;
  *(v7 + 50) = 0u;
  *(v7 + 35) = 0u;
  *(v7 + 19) = 0u;
  *a1[5614] = 0;
  v10 = a1[1];
  if (v10)
  {
    *&v83 = a1[1];
  }

  else
  {
    v10 = &zero_block;
  }

  v11 = a1[2];
  if (v11)
  {
    *(&v83 + 1) = a1[2];
  }

  else
  {
    v11 = &zero_block;
  }

  v12 = a1[3];
  if (v12)
  {
    v84 = a1[3];
  }

  else
  {
    v12 = &zero_block;
  }

  v13 = a1[5615];
  v80 = 0;
  LODWORD(v81) = 0;
  result = aj_huffman_decode_val(*(v13 + 32), a2, 0, &v81);
  if (result)
  {
    goto LABEL_83;
  }

  v17 = *a3 + SWORD1(v81);
  *a3 = v17;
  LODWORD(v81) = v17;
  result = aj_huffman_decode_ac_s1(v13, a2, v82, &v80, v15, v16);
  if (result)
  {
    goto LABEL_83;
  }

  v18 = v81;
  v82[0] = v81;
  *v7 = v81;
  if (v18 >= 0)
  {
    v19 = v18;
  }

  else
  {
    v19 = -v18;
  }

  if (v19 < 0x800)
  {
    v20 = 63;
    while (!v82[v20])
    {
      v28 = v20-- != 0;
      if (v20 == 0 || !v28)
      {
        v20 = 0;
        break;
      }
    }

    *(v7 + 2) = v20;
    v21 = *(v10 + 2);
    v22 = *(v11 + 2);
    v23 = *(v12 + 2);
    v24 = v22 + v21 - v23;
    if (v21 <= v22)
    {
      v25 = *(v11 + 2);
    }

    else
    {
      v25 = *(v10 + 2);
    }

    if (v23 <= v21 && v23 <= v22)
    {
      v24 = v25;
    }

    if (v21 >= v22)
    {
      v27 = *(v11 + 2);
    }

    else
    {
      v27 = *(v10 + 2);
    }

    v28 = v23 >= v21 && v23 >= v22;
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = v24;
    }

    v81 = a1[((v29 + ((v29 & 0xC000) >> 14)) >> 2) + 18];
    v30 = (v23 & 0xFFFFFFF8) + 8;
    v31 = 11 * (v20 / 8);
    v32 = v20 == 0;
    if (v20)
    {
      v33 = v20 / 8 + 1;
    }

    else
    {
      v33 = 0;
    }

    if (v32)
    {
      v34 = 88;
    }

    else
    {
      v34 = v31;
    }

    if (v32)
    {
      v35 = 1;
    }

    else
    {
      v35 = v30;
    }

    LOBYTE(v80) = v33;
    result = (*(a1[5] + 40))(a1[4], &v81, &v80, 1);
    if (!result)
    {
      v36 = *v10;
      v37 = *v11;
      v38 = *v12;
      if (v38 < v36 || v38 < v37)
      {
        if (v38 > v36 || v38 > v37)
        {
          LOWORD(v37) = v37 + v36 - v38;
        }

        else if (v36 > v37)
        {
          LOWORD(v37) = *v10;
        }
      }

      else if (v36 < v37)
      {
        LOWORD(v37) = *v10;
      }

      v39 = v82[0];
      v40 = v82[0] - v37;
      v82[0] -= v37;
      v41 = *v12;
      v42 = v36 - v41;
      if (v42 < 0)
      {
        v42 = -v42;
      }

      v43 = *v11 - v41;
      if (v43 < 0)
      {
        v43 = -v43;
      }

      v44 = v43 + v42;
      v45 = 32 - __clz(v44 >> 1);
      v46 = v44 >= 2 ? v45 : 0;
      v81 = a1[v46 + 6];
      v47 = v40;
      v48 = *(v6 + 916);
      v49 = v47 >= 0 ? v47 : -v47;
      v50 = __clz(v49);
      v51 = 32 - v50;
      v52 = (-1 << -v50) | v49;
      v53 = v47 < 0 ? ~v52 : v49;
      v54 = v39 == v37 ? 0 : v53;
      v55 = v39 == v37 ? 0 : v51;
      if (v49 >= v48)
      {
        v49 = v48 + v55 + ~*(v6 + 917);
      }

      else
      {
        v54 = v47 >> 31;
        v55 = v39 != v37;
      }

      LOBYTE(v80) = v49;
      result = (*(a1[5] + 40))(a1[4], &v81, &v80, 1);
      if (!result)
      {
        if (!v55 || (result = (*(a1[5] + 56))(a1[4], v54, v55), !result))
        {
          if (v35 >= 2)
          {
            v57 = 0;
            v58 = 0;
            v59 = a1 + 34;
            v60 = 32;
            do
            {
              v61 = v82[v57 + 1];
              if (v61 >= 0)
              {
                v62 = v82[v57 + 1];
              }

              else
              {
                v62 = -v61;
              }

              if (v62 >= 0x400)
              {
                v79 = v82[v57 + 1];
                aj_log_error(0, "Illegal ac value: %d");
                goto LABEL_17;
              }

              v63 = v59[v34 + *(*(&v83 + nbr_ind[v57]) + v57 + 3)];
              v64 = *(v6 + 918);
              v65 = __clz(v62);
              v66 = 32 - v65;
              v67 = (-1 << -v65) | v62;
              if (v61 < 0)
              {
                v68 = ~v67;
              }

              else
              {
                v68 = v62;
              }

              if (!v82[v57 + 1])
              {
                v68 = 0;
                v66 = 0;
              }

              v69 = v64 + v66 + ~*(v6 + 919);
              v70 = v61 >> 31;
              v71 = v61 != 0;
              v72 = v62 < v64;
              if (v62 < v64)
              {
                v73 = v71;
              }

              else
              {
                v73 = v66;
              }

              if (v72)
              {
                v74 = v70;
              }

              else
              {
                v74 = v68;
              }

              if (!v72)
              {
                LOBYTE(v62) = v69;
              }

              *(v9 + v57) = v66;
              *(v6[492] + v57) = v62;
              *(v6[493] + 8 * v57) = v63;
              if (v73)
              {
                v75 = v6[494];
                v76 = v58;
                v77 = *(v75 + 4 * v58);
                if (v60 >= v73)
                {
                  v60 -= v73;
                }

                else
                {
                  *(v75 + 4 * v58) = (v77 << v60) | (v74 >> (v73 - v60));
                  v76 = v58 + 1;
                  *(v75 + 4 * v76) = 0;
                  LOBYTE(v73) = v73 - v60;
                  v60 = 32 - v73;
                  v74 &= 0xFFFFFFFF >> -v73;
                  ++v58;
                  v77 = 0;
                }

                *(v75 + 4 * v76) = (v77 << v73) | v74;
              }

              ++v57;
              v59 += 88;
            }

            while (v35 - 1 != v57);
            result = (*(a1[5] + 40))(a1[4], v6[493], v6[492]);
            if (result)
            {
              goto LABEL_83;
            }

            if (v58 >= 1)
            {
              v78 = 0;
              do
              {
                result = (*(a1[5] + 56))(a1[4], *(v6[494] + v78), 32);
                if (result)
                {
                  goto LABEL_83;
                }

                v78 += 4;
              }

              while (4 * v58 != v78);
            }

            if (v60 <= 31)
            {
              result = (*(a1[5] + 56))(a1[4], *(v6[494] + 4 * v58), (32 - v60));
              if (result)
              {
                goto LABEL_83;
              }
            }
          }

          result = 0;
        }
      }
    }
  }

  else
  {
    aj_log_error(0, "Illegal dc value: %d");
LABEL_17:
    result = 7;
  }

LABEL_83:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aj_block_unpack(uint64_t *a1, int32x2_t *a2, _DWORD *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v68 = &zero_block;
  v6 = *a1;
  v67 = xmmword_278CB2D98;
  memset(v66, 0, sizeof(v66));
  *(v6 + 3) = 0u;
  v7 = (v6 + 3);
  *(v6 + 50) = 0u;
  *(v6 + 35) = 0u;
  *(v6 + 19) = 0u;
  v8 = a1[1];
  if (v8)
  {
    *&v67 = a1[1];
  }

  else
  {
    v8 = &zero_block;
  }

  v9 = a1[2];
  if (v9)
  {
    *(&v67 + 1) = a1[2];
  }

  else
  {
    v9 = &zero_block;
  }

  v10 = a1[3];
  if (v10)
  {
    v68 = a1[3];
  }

  else
  {
    v10 = &zero_block;
  }

  v11 = *(v8 + 2);
  v12 = *(v9 + 2);
  v13 = *(v10 + 2);
  if (v13 < v11 || v13 < v12)
  {
    if (v13 > v11 || v13 > v12)
    {
      v11 = v12 + v11 - v13;
    }

    else if (v11 <= v12)
    {
      v11 = *(v9 + 2);
    }
  }

  else if (v11 >= v12)
  {
    v11 = *(v9 + 2);
  }

  LOBYTE(v64) = 0;
  result = (*(a1[5] + 48))(a1[4], &a1[((v11 + ((v11 & 0xC000) >> 14)) >> 2) + 18], &v64, 1);
  if (!result)
  {
    v15 = v64;
    if (v64)
    {
      v16 = 8 * v64;
      if ((8 * v64) >= 0x41u)
      {
        result = 7;
        goto LABEL_32;
      }
    }

    else
    {
      v16 = 1;
    }

    v63 = 0;
    v17 = *v10;
    v18 = *v8 - v17;
    if (v18 < 0)
    {
      v18 = v17 - *v8;
    }

    v19 = *v9 - v17;
    if (v19 < 0)
    {
      v19 = -v19;
    }

    v20 = v19 + v18;
    v21 = v20 >> 1;
    v22 = 32 - __clz(v20 >> 1);
    v23 = v20 >= 2 ? v22 : 0;
    v65 = v21;
    v64 = a1[v23 + 6];
    result = (*(a1[5] + 48))(a1[4], &v64, &v63, 1);
    if (!result)
    {
      LOWORD(v25) = v63;
      if (v63)
      {
        v26 = *(a1 + 11156);
        if (v63 < v26)
        {
          result = (*(a1[5] + 64))(a1[4], &v65, 1);
          if (result)
          {
            goto LABEL_32;
          }

          if (v65)
          {
            v25 = -v63;
          }

          else
          {
            LOWORD(v25) = v63;
          }
        }

        else
        {
          v61 = a3;
          v27 = *(a1 + 11157) + v63 - v26;
          result = (*(a1[5] + 64))(a1[4], &v65, (v27 + 1));
          if (result)
          {
            goto LABEL_32;
          }

          if (v65 >> v27)
          {
            v28 = 0;
          }

          else
          {
            v28 = (-2 << v27) + 1;
          }

          LOWORD(v25) = v28 + v65;
          a3 = v61;
        }
      }

      v29 = *v8;
      v30 = *v9;
      v31 = *v10;
      if (v31 < v29 || v31 < v30)
      {
        if (v31 > v29 || v31 > v30)
        {
          LOWORD(v29) = v30 + v29 - v31;
        }

        else if (v29 <= v30)
        {
          LOWORD(v29) = *v9;
        }
      }

      else if (v29 >= v30)
      {
        LOWORD(v29) = *v9;
      }

      LOWORD(v66[0]) = v25 + v29;
      *v6 = v25 + v29;
      v32 = a1[5612];
      LODWORD(v64) = 0;
      v33 = a1[5614];
      if (v16 >= 2u)
      {
        v34 = 0;
        if (v15 <= 1)
        {
          v35 = 1;
        }

        else
        {
          v35 = v15;
        }

        v36 = &a1[11 * v35 + 23];
        do
        {
          *(a1[5613] + 8 * v34) = *(v36 + 8 * *(*(&v67 + nbr_ind[v34]) + v34 + 3));
          ++v34;
          v36 += 704;
        }

        while (v16 - 1 != v34);
      }

      result = (*(a1[5] + 48))(a1[4], a1[5613], v32, v16 - 1);
      if (!result)
      {
        if (v16 <= 1u)
        {
          *(v6 + 2) = 0;
LABEL_95:
          aj_block_encode(a1[5615], v66, a2, a3);
          result = 0;
          goto LABEL_32;
        }

        v37 = 0;
        v38 = 0;
        v39 = 0;
        do
        {
          v40 = v32[v37];
          if (v32[v37])
          {
            *(v66 + v37 + 1) = v40;
            v41 = *(a1 + 11158);
            if (v41 <= v40)
            {
              v42 = v40 - v41 + *(a1 + 11159) + 1;
              v39 = (v42 + v39);
              v43 = v42;
            }

            else
            {
              LODWORD(v64) = v40;
              v42 = 8 - __clz(v40 << 24);
              v39 = (v39 + 1);
              v43 = 1;
            }

            v38 = v37 + 1;
            v7[v37] = v42;
            v32[v37] = v43;
          }

          ++v37;
        }

        while (v16 - 1 != v37);
        *(v6 + 2) = v38;
        if (!v39)
        {
LABEL_80:
          if (v38 >= 1)
          {
            LODWORD(v48) = 0;
            v49 = (v38 + 1) - 1;
            v50 = v66 + 1;
            v51 = 32;
            do
            {
              v52 = *v50;
              if (*v50)
              {
                v53 = *v32;
                v54 = v48;
                v55 = *(v33 + 4 * v48);
                v56 = v55 >> -v53;
                if (v51 >= v53)
                {
                  *(v33 + 4 * v48) = v55 << v53;
                  v51 -= v53;
                }

                else
                {
                  v48 = v48 + 1;
                  v57 = *(v33 + 4 * (v54 + 1));
                  v58 = v53 - v51;
                  v51 = 32 - v58;
                  v56 |= v57 >> -v58;
                  *(v33 + 4 * v48) = v57 << v58;
                }

                if (*(a1 + 11158) <= v52)
                {
                  v59 = *v7 - 1;
                  v60 = v56 >> v59;
                  v52 = v56 + (-2 << v59);
                  if (v60)
                  {
                    LOWORD(v52) = v56;
                  }

                  else
                  {
                    LOWORD(v52) = v52 + 1;
                  }
                }

                else if (v56)
                {
                  v52 = -v52;
                }

                *v50 = v52;
              }

              ++v7;
              ++v32;
              ++v50;
              --v49;
            }

            while (v49);
          }

          goto LABEL_95;
        }

        v62 = v33;
        if (v39 >= 33)
        {
          v44 = 0;
          v45 = v39;
          while (1)
          {
            result = (*(a1[5] + 64))(a1[4], &v64, 32);
            if (result)
            {
              goto LABEL_32;
            }

            v46 = v44 + 1;
            *(v62 + 4 * v44) = v64;
            v39 = (v45 - 32);
            ++v44;
            v47 = v45 <= 64;
            v45 -= 32;
            if (v47)
            {
              goto LABEL_78;
            }
          }
        }

        v46 = 0;
LABEL_78:
        result = (*(a1[5] + 64))(a1[4], &v64, v39);
        if (!result)
        {
          *(v62 + 4 * v46) = v64 << -v39;
          v33 = v62;
          goto LABEL_80;
        }
      }
    }
  }

LABEL_32:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL AJReducerIsFilePacked(const __CFURL *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    aj_log_error("CFReduce", "Unable to resolve url");
LABEL_7:
    v3 = 0;
    goto LABEL_10;
  }

  v1 = fopen(buffer, "rb");
  if (!v1)
  {
    aj_log_error("CFReduce", "Unable to open file: %s");
    goto LABEL_7;
  }

  v2 = v1;
  v3 = fread(&__ptr, 1uLL, 4uLL, v1) == 4 && applejpeg_reduce_is_reduced_jpeg(&__ptr, 4uLL);
  fclose(v2);
LABEL_10:
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

BOOL AJReducerIsDataPacked(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);

  return applejpeg_reduce_is_reduced_jpeg(BytePtr, Length);
}

void AJReducerRelease(void *a1)
{
  AJReducerCloseSource(a1);

  free(a1);
}

uint64_t AJReducerCloseSource(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    if (v2)
    {
      applejpeg_reduce_close(v2);
      v1[4] = 0;
    }

    v3 = v1[3];
    if (v3)
    {
      CFRelease(v3);
      v1[3] = 0;
    }

    result = *v1;
    if (*v1)
    {
      result = fclose(result);
      *v1 = 0;
    }
  }

  return result;
}

uint64_t AJReducerOpenSourceData(uint64_t a1, CFTypeRef cf, int *a3)
{
  BytePtr = 0;
  Length = 0;
  if (!a1)
  {
    aj_log_error("CFReduce", "Reducer session is NULL");
LABEL_10:
    v6 = 4;
    goto LABEL_11;
  }

  if (!cf)
  {
    aj_log_error("CFReduce", "Input source is NULL");
    goto LABEL_10;
  }

  if (*(a1 + 32) || *(a1 + 24) || *a1)
  {
    aj_log_error("CFReduce", "Source is already open. Close must be called before source can be reopened.");
    result = 0;
    if (a3)
    {
      *a3 = 17;
    }

    return result;
  }

  *(a1 + 24) = cf;
  CFRetain(cf);
  BytePtr = CFDataGetBytePtr(*(a1 + 24));
  Length = CFDataGetLength(*(a1 + 24));
  v10 = 0;
  v7 = applejpeg_reduce_open_mem(0, &BytePtr, a1 + 40, &v10);
  v6 = translateErrorCode(v10);
  *(a1 + 32) = v7;
  if (v7)
  {
    if (a3)
    {
      *a3 = 0;
    }

    return 1;
  }

LABEL_11:
  if (a3)
  {
    *a3 = v6;
  }

  result = *(a1 + 24);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

FILE *AJReducerOpenSourceURLWithOptions(uint64_t a1, const __CFURL *a2, int *a3, const __CFDictionary *a4)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (!a1)
  {
    aj_log_error("CFReduce", "Reducer session is NULL", v9, v10, v11, v12);
LABEL_10:
    v7 = 4;
    goto LABEL_11;
  }

  if (!a2)
  {
    aj_log_error("CFReduce", "Input source is NULL", v9, v10, v11, v12);
    goto LABEL_10;
  }

  if (*(a1 + 32) || *(a1 + 24) || *a1)
  {
    aj_log_error("CFReduce", "Source is already open. Close must be called before source can be reopened.", v9, v10, v11, v12);
    result = 0;
    if (a3)
    {
      *a3 = 17;
    }

    return result;
  }

  v7 = setupFileManager(a2, 1, a4, &v9, a1);
  if (!v7)
  {
    v13 = 0;
    v8 = applejpeg_reduce_open_file(0, &v9, a1 + 40, &v13);
    v7 = translateErrorCode(v13);
    *(a1 + 32) = v8;
    if (v8)
    {
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

LABEL_11:
  if (a3)
  {
    *a3 = v7;
  }

  result = *a1;
  if (*a1)
  {
    fclose(result);
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t setupFileManager(const __CFURL *a1, int a2, const __CFDictionary *a3, uint64_t (**a4)(void *a1, int a2, uint64_t a3), FILE **a5)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    aj_log_error("CFReduce", "URL may not be null");
    result = 4;
    goto LABEL_19;
  }

  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    aj_log_error("CFReduce", "Unable to resolve url");
LABEL_16:
    result = 7;
    goto LABEL_19;
  }

  if (a2)
  {
    v9 = "rb";
  }

  else
  {
    v15 = access(buffer, 0);
    v9 = "wb";
    if (a3 && v15 != -1)
    {
      Value = CFDictionaryGetValue(a3, @"DoNotOverwriteOutputFile");
      if (Value && CFBooleanGetValue(Value))
      {
        aj_log_error("CFReduce", "Output file already exists: %s", buffer);
        result = 16;
        goto LABEL_19;
      }

      v9 = "wb";
    }
  }

  v10 = fopen(buffer, v9);
  if (!v10)
  {
    aj_log_error("CFReduce", "Unable to open file: %s");
    goto LABEL_16;
  }

  v11 = v10;
  a4[4] = a5;
  fseek(v10, 0, 2);
  v12 = MEMORY[0x245CCE270](v11);
  fseek(v11, 0, 0);
  a4[2] = fskipCallback;
  a4[3] = frewindCallback;
  a4[5] = 0x2000;
  a4[6] = v12;
  if (a2)
  {
    *a4 = freadCallback;
    v13 = @"SimulateReadFailAfterXBytes";
  }

  else
  {
    a4[1] = fwriteCallback;
    v13 = @"SimulateWriteFailAfterXBytes";
  }

  CFIndexFromDictionary = getCFIndexFromDictionary(a3, v13);
  result = 0;
  a5[1] = 0;
  a5[2] = CFIndexFromDictionary;
  *a5 = v11;
LABEL_19:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AJReducerIsSourcePacked(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t AJReducerSourceUnpackedFileSize(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t performTaskToData(uint64_t a1, CFTypeRef *a2, const __CFDictionary *a3, _DWORD *a4, int a5)
{
  v16 = 0;
  v10 = AJMemoryWriterCreate();
  v11 = v10;
  if (!v10)
  {
    aj_log_error("CFReduce", "Could not create memory writer");
    v15 = 6;
LABEL_9:
    v16 = v15;
    goto LABEL_10;
  }

  if (!a2)
  {
    aj_log_error("CFReduce", "Destination pointer may not be null");
    v15 = 4;
    goto LABEL_9;
  }

  IOFile = AJMemoryWriterGetIOFile(v10);
  if (performReducerTask(a1, IOFile, a3, &v16, a5))
  {
    DataRef = AJMemoryWriterGetDataRef(v11);
    *a2 = CFRetain(DataRef);
    AJMemoryWriterRelease(v11);
    if (a4)
    {
      *a4 = 0;
    }

    return 1;
  }

LABEL_10:
  if (a4)
  {
    *a4 = v16;
  }

  AJMemoryWriterRelease(v11);
  return 0;
}

FILE *performTaskToURL(uint64_t a1, const __CFURL *a2, const __CFDictionary *a3, _DWORD *a4, int a5)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v13 = setupFileManager(a2, 0, a3, v11, v10);
  if (v13 || !performReducerTask(a1, v11, a3, &v13, a5))
  {
    if (a4)
    {
      *a4 = v13;
    }

    result = v10[0];
    if (v10[0])
    {
      fclose(v10[0]);
      return 0;
    }
  }

  else
  {
    if (v10[0])
    {
      fclose(v10[0]);
    }

    if (a4)
    {
      *a4 = 0;
    }

    return 1;
  }

  return result;
}

uint64_t AJReducerDestinationBytesWritten(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t translateErrorCode(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 1;
  }

  else
  {
    return dword_240AB05A4[a1];
  }
}

uint64_t fskipCallback(int a1, uint64_t a2)
{
  v2 = *a2;
  *(a2 + 8) += a1;
  return fseek(v2, a1, 1);
}

uint64_t freadCallback(void *a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = *(a3 + 8);
    if (v5 + a2 >= v4)
    {
      aj_log_error("CFReduce", "Simulated read fail when reading %d bytes at position %zu", a2, v5);
      return 4294967294;
    }
  }

  v6 = fread(a1, 1uLL, a2, *a3);
  if (!v6)
  {
    if (feof(*a3))
    {
      return 0xFFFFFFFFLL;
    }

    if (ferror(*a3))
    {
      return 4294967294;
    }
  }

  *(a3 + 8) += v6;
  return v6;
}

uint64_t fwriteCallback(const void *a1, int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    if (*(a3 + 8) + a2 >= v5)
    {
      aj_log_error("CFReduce", "Simulated write fail when writing %d bytes at position %zu");
      return 1;
    }

    v6 = a2;
  }

  else
  {
    v6 = a2;
  }

  v7 = fwrite(a1, 1uLL, v6, *a3);
  if (v7 == a2)
  {
    result = 0;
    *(a3 + 8) += v7;
    return result;
  }

  aj_log_error("CFReduce", "Requested write of %d, wrote: %d");
  return 1;
}

const __CFDictionary *getCFIndexFromDictionary(const __CFDictionary *result, const void *a2)
{
  if (result)
  {
    Value = CFDictionaryGetValue(result, a2);
    if (Value && (valuePtr = 0, CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr)))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t performReducerTask(uint64_t a1, unint64_t a2, const __CFDictionary *a3, int *a4, int a5)
{
  if (!a1)
  {
    aj_log_error("CFReduce", "Reducer session is NULL");
LABEL_12:
    v12 = 4;
    goto LABEL_13;
  }

  if (!*(a1 + 32))
  {
    aj_log_error("CFReduce", "Reducer input is NULL. Call AJReducerOpenSource first.");
    goto LABEL_12;
  }

  if (!a2)
  {
    aj_log_error("CFReduce", "Destination is NULL");
    goto LABEL_12;
  }

  v19 = 0;
  applejpeg_reduce_options_init(&v19);
  if (!a3)
  {
    goto LABEL_18;
  }

  Value = CFDictionaryGetValue(a3, @"CompressionMethod");
  if (Value != @"AdaptiveArithmetic")
  {
    if (Value == @"SemistaticArithmetic")
    {
      v11 = 1;
      goto LABEL_17;
    }

    if (!Value)
    {
      goto LABEL_18;
    }
  }

  v11 = 0;
LABEL_17:
  LODWORD(v19) = v11;
LABEL_18:
  v15 = applejpeg_reduce_set_options(*(a1 + 32), &v19);
  if (v15)
  {
    v12 = translateErrorCode(v15);
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = (a1 + 72);
    if (a5)
    {
      v18 = applejpeg_reduce_unpack_file(v16, a2, v17);
    }

    else
    {
      v18 = applejpeg_reduce_pack_file(v16, a2, v17);
    }

    v12 = translateErrorCode(v18);
    if (!v12)
    {
      v13 = 1;
      if (!a4)
      {
        return v13;
      }

      v12 = 0;
      goto LABEL_14;
    }
  }

LABEL_13:
  v13 = 0;
  if (a4)
  {
LABEL_14:
    *a4 = v12;
  }

  return v13;
}

void *AJMemoryWriterCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A00409DD6F009uLL);
  v0[1] = 0;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  *v0 = Mutable;
  if (Mutable)
  {
    v0[3] = AJCFDataWriteCallback;
    v0[4] = AJCFDataSkipCallback;
    v0[5] = AJCFDataRewindCallback;
    v0[6] = v0;
  }

  else
  {
    free(v0);
    return 0;
  }

  return v0;
}

uint64_t AJCFDataWriteCallback(const UInt8 *a1, int a2, uint64_t a3)
{
  if (a2)
  {
    LODWORD(v4) = a2;
    v6 = *a3;
    v7 = *(a3 + 8);
    if (v7 == CFDataGetLength(*a3))
    {
      v4 = v4;
      CFDataAppendBytes(v6, a1, v4);
    }

    else
    {
      v9.location = *(a3 + 8);
      v4 = v4;
      v9.length = v4;
      CFDataReplaceBytes(v6, v9, a1, v4);
    }

    *(a3 + 8) += v4;
  }

  return 0;
}

void AJMemoryWriterRelease(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void aj_log_error(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v7 = *MEMORY[0x277D85DE8];
  if (aj_logging_enabled_g_aj_check_once != -1)
  {
    aj_log_error_cold_1();
  }

  if (aj_logging_enabled_s_should_log)
  {
    vsnprintf(__str, 0x400uLL, __format, va);
    v4 = *MEMORY[0x277D85DF8];
    if (a1)
    {
      fprintf(v4, "AppleJPEG, %s: %s\n");
    }

    else
    {
      fprintf(v4, "AppleJPEG: %s\n");
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __aj_logging_enabled_block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"aj_log_errors", @"com.apple.applejpeg");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = CFStringGetIntValue(v1) == 0;
    }

    else
    {
      v5 = CFGetTypeID(v1);
      if (v5 != CFNumberGetTypeID())
      {
        v6 = CFGetTypeID(v1);
        if (v6 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(v1);
        }

        else
        {
          Value = 0;
        }

        goto LABEL_10;
      }

      valuePtr = 0;
      CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
      v3 = valuePtr == 0;
    }

    Value = !v3;
LABEL_10:
    CFRelease(v1);
    goto LABEL_11;
  }

  Value = 0;
LABEL_11:
  aj_logging_enabled_s_should_log = Value;
}

uint64_t (**aj_select_semistatic_coder(uint64_t (**result)(int a1)))(int a1)
{
  result[3] = arithmetic_context_init;
  result[4] = arithmetic_context_init_prob;
  result[10] = arithmetic_decode_close;
  result[8] = arithmetic_decode_static_data;
  result[2] = arithmetic_decode_init;
  result[6] = arithmetic_decode_symbols;
  result[9] = arithmetic_encode_close;
  result[7] = arithmetic_encode_static_data;
  result[1] = arithmetic_encode_init;
  result[5] = arithmetic_encode_symbols;
  *result = arithmetic_prob_table_size;
  return result;
}

uint64_t arithmetic_decode_static_data(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v3 = a3;
  if (a3 - 33 <= 0xFFFFFFDF)
  {
    aj_log_error(0, "Illegal number of data bits: %d", a3);
    return 7;
  }

  *a2 = 0;
  if (a3 < 0x11)
  {
    goto LABEL_9;
  }

  v7 = HIWORD(*a1);
  if (*(a1 + 8) / v7 >= 0xFFFF)
  {
    v8 = 0xFFFF;
  }

  else
  {
    v8 = *(a1 + 8) / v7;
  }

  result = arithmetic_decode(a1, *(a1 + 24), v8, v8 + 1, v7);
  if (!result)
  {
    v3 -= 16;
    *a2 = v8 << v3;
LABEL_9:
    v9 = *a1 >> v3;
    if (*(a1 + 8) / v9 >= ~(-1 << v3))
    {
      v10 = ~(-1 << v3);
    }

    else
    {
      v10 = *(a1 + 8) / v9;
    }

    result = arithmetic_decode(a1, *(a1 + 24), v10, v10 + 1, v9);
    if (!result)
    {
      *a2 |= v10;
    }
  }

  return result;
}

uint64_t arithmetic_decode_init(uint64_t a1)
{
  v2 = *(a1 + 24);
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 0;
  v3 = 4;
  do
  {
    v5 = 0;
    result = aj_istream_read_bytes_le(v2, &v5, 1);
    if (result)
    {
      break;
    }

    *(a1 + 8) = v5 | (*(a1 + 8) << 8);
    --v3;
  }

  while (v3);
  return result;
}