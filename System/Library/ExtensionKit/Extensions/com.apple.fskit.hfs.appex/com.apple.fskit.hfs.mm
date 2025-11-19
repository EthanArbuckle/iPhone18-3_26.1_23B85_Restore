void sub_10000144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000014A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000014C0(void *a1, int a2, void *a3)
{
  v6 = a3;
  if (a2 == 3)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a3);
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 0;
    if (a2 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = fs_errorForPOSIXError();
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v7);
    if (a2 != 1)
    {
    }

    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000022D4(v8);
    }
  }
}

void hfs_ConvertHFSUUIDToUUID(unsigned int *a1, uuid_t uu)
{
  if (*a1 && (v3 = a1[1]) != 0)
  {
    data[0] = bswap32(*a1);
    data[1] = bswap32(v3);
    memset(&v4, 0, sizeof(v4));
    CC_MD5_Init(&v4);
    CC_MD5_Update(&v4, &unk_100002953, 0x10u);
    CC_MD5_Update(&v4, data, 8u);
    CC_MD5_Final(uu, &v4);
    uu[6] = uu[6] & 0xF | 0x30;
    uu[8] = uu[8] & 0x3F | 0x80;
  }

  else
  {

    uuid_clear(uu);
  }
}

uint64_t hfs_GetVolumeUUIDRaw(int a1, unsigned __int8 *a2, int a3)
{
  v6 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
  if (v6)
  {
    v7 = v6;
    if (sub_100001D90(a1, v6, 1024, 0x200uLL, a3) != -3)
    {
      goto LABEL_16;
    }

    v8 = *v7;
    if (v8 == 17474)
    {
      if (*(v7 + 62) != 11080)
      {
LABEL_7:
        v9 = 29;
LABEL_15:
        *src = 0;
        v15 = 0;
        v13 = vrev32_s8(*&v7[v9]);
        hfs_ConvertHFSUUIDToUUID(&v13, src);
        uuid_copy(a2, src);
        v10 = 4294967293;
LABEL_17:
        free(v7);
        return v10;
      }

      if (sub_100001D90(a1, v7, ((bswap32(*(v7 + 14)) >> 16) << 9) + (bswap32(*(v7 + 63)) >> 16) * bswap32(v7[5]) + 1024, 0x200uLL, a3) != -3)
      {
LABEL_16:
        v10 = 4294967292;
        goto LABEL_17;
      }

      v8 = *v7;
      if (v8 == 17474)
      {
        goto LABEL_7;
      }
    }

    if (v8 == 22600 || v8 == 11080)
    {
      v9 = 26;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  return 4294967292;
}

uint64_t hfs_GetNameFromHFSPlusVolumeStartingAt(int a1, uint64_t a2, char *a3, int a4)
{
  v8 = malloc_type_malloc(0x200uLL, 0x10000407EBBDD04uLL);
  if (!v8)
  {
    return 4294967292;
  }

  v9 = v8;
  if (sub_100001D90(a1, v8, a2 + 1024, 0x200uLL, a4) != -4)
  {
    v10 = *v9;
    if (v10 == 22600 || v10 == 11080)
    {
      v12 = *(v9 + 10);
      v13 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
      if (v13)
      {
        v14 = v13;
        v15 = *(v9 + 18);
        v16 = *(v9 + 19);
        v17 = *(v9 + 21);
        *(v13 + 2) = *(v9 + 20);
        *(v13 + 3) = v17;
        *v13 = v15;
        *(v13 + 1) = v16;
        if (*(v13 + 15))
        {
          size = 0;
          v18 = 8;
          v55 = bswap32(*(v9 + 10));
          v19 = sub_100001F30(a1, a2, v55, 8u, (v9 + 208), &size + 1, &size);
          if (v19 == -3)
          {
            v20 = size;
            if (size)
            {
              v54 = v12;
              v21 = HIDWORD(size);
              v22 = malloc_type_malloc(HIDWORD(size), 0x100004077774924uLL);
              if (!v22)
              {
                free(v9);
                v28 = 0;
                v19 = 4294967292;
LABEL_45:
                free(v14);
LABEL_46:
                v9 = v28;
                if (!v28)
                {
                  return v19;
                }

                goto LABEL_16;
              }

              v23 = v22;
              v24 = sub_10000201C(a1, v22, v21 * v20, v21, a2, v55, 8u, (v9 + 208));
              v25 = v21;
              v19 = v24;
              v26 = v23;
              if (v24 != -4)
              {
                v53 = v25;
                v52 = &v23[v25];
                v50 = a3;
                v51 = &v23[v25 - 4];
                v29 = 64;
                v56 = v26;
                while (v26[8] == 255)
                {
                  if (*(v26 + 5))
                  {
                    v30 = &v26[bswap32(*(v52 - 1)) >> 16];
                    if (*(v30 + 1) != 0x4000000)
                    {
                      goto LABEL_14;
                    }

                    v29 += 64;
                    v31 = __rev16(*(v26 + 5)) - 1;
                    v32 = v51;
                    while (1)
                    {
                      v14 = malloc_type_realloc(v14, v29, 0x100004000313F17uLL);
                      v33 = &v14[8 * v18];
                      v34 = &v30[bswap32(*v30) >> 16];
                      v35 = *(v34 + 50);
                      v36 = *(v34 + 34);
                      v37 = *(v34 + 18);
                      *v33 = *(v34 + 2);
                      *(v33 + 1) = v37;
                      *(v33 + 2) = v36;
                      *(v33 + 3) = v35;
                      v18 += 8;
                      if (!v31)
                      {
                        break;
                      }

                      v38 = *v32--;
                      v30 = &v56[bswap32(v38) >> 16];
                      v29 += 64;
                      --v31;
                      if (*(v30 + 1) != 0x4000000)
                      {
                        a3 = v50;
                        v12 = v54;
                        v26 = v56;
                        goto LABEL_33;
                      }
                    }

                    a3 = v50;
                    v26 = v56;
                  }

                  if (*v26)
                  {
                    v19 = sub_10000201C(a1, v26, v53 * bswap32(*v26), v53, a2, v55, 8u, (v9 + 208));
                    if (v19 != -4)
                    {
                      continue;
                    }
                  }

                  goto LABEL_14;
                }

                v19 = 4294967292;
              }

LABEL_14:
              v12 = v54;
LABEL_33:
              free(v26);
            }
          }

          if (v19 != -3)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v18 = 8;
        }

        v39 = bswap32(v12);
        size = 0;
        v40 = sub_100001F30(a1, a2, v39, v18, v14, &size + 1, &size);
        if (v40 == -3)
        {
          v41 = HIDWORD(size);
          v28 = malloc_type_malloc(HIDWORD(size), 0x100004077774924uLL);
          if (v28 && sub_10000201C(a1, v28, size * v41, v41, a2, v39, v18, v14) != -4 && *(v28 + 5) && (v42 = &v28[bswap32(*&v28[v41 - 2]) >> 16], *(v42 + 2) == 0x1000000) && !v42[6] && (v43 = a3, (v44 = malloc_type_malloc(0x200uLL, 0x10000407EBBDD04uLL)) != 0))
          {
            v45 = v44;
            v46 = *(v42 + 3);
            v47 = __rev16(v46);
            *v44 = v47;
            if (v46)
            {
              v48 = 0;
              do
              {
                v44[v48 + 1] = bswap32(*&v42[2 * v48 + 8]) >> 16;
                ++v48;
              }

              while (v48 < v47);
            }

            else
            {
              v48 = 0;
              v47 = 0;
            }

            v44[v48 + 1] = 0;
            v49 = CFStringCreateWithCharacters(kCFAllocatorDefault, v44 + 1, v47);
            CFStringGetCString(v49, v43, 766, 0x8000100u);
            CFRelease(v49);
            free(v45);
            v19 = 4294967293;
          }

          else
          {
            v19 = 4294967292;
          }

LABEL_44:
          free(v9);
          if (!v14)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        v19 = v40;
LABEL_43:
        v28 = 0;
        goto LABEL_44;
      }
    }
  }

  v19 = 4294967292;
LABEL_16:
  free(v9);
  return v19;
}

uint64_t sub_100001D90(int a1, void *a2, uint64_t a3, size_t a4, int a5)
{
  v9 = a3 % a5;
  v10 = (a4 + a5 + v9 - 1) / a5 * a5;
  v11 = malloc_type_malloc(v10, 0x62103FD7uLL);
  if (v11)
  {
    v12 = v11;
    if (lseek(a1, a3 - v9, 0) == a3 - v9)
    {
      if (read(a1, v12, v10) == v10)
      {
        memmove(a2, &v12[v9], a4);
        v13 = -3;
LABEL_10:
        free(v12);
        return v13;
      }

      if (gbIsLoggerInit == 1)
      {
        v14 = gpsHFSLog;
        if (os_log_type_enabled(gpsHFSLog, OS_LOG_TYPE_ERROR))
        {
          v15 = *__error();
          v17 = 136315394;
          v18 = "readAt";
          v19 = 1024;
          v20 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s: attempt to read data from device failed (errno = %d)\n", &v17, 0x12u);
        }
      }
    }

    v13 = -4;
    goto LABEL_10;
  }

  return -4;
}

uint64_t sub_100001F30(int a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int *a6, unsigned int *a7)
{
  v14 = malloc_type_malloc(0x200uLL, 0x1000040A9FC9F90uLL);
  if (!v14)
  {
    return 4294967292;
  }

  v15 = v14;
  v16 = sub_10000201C(a1, v14, 0, 512, a2, a3, a4, a5);
  if (v16 != -4)
  {
    if (v15[8] == 1)
    {
      *a6 = bswap32(*(v15 + 16)) >> 16;
      v17 = *(v15 + 5);
      if (v17)
      {
        v17 = bswap32(*(v15 + 6));
      }

      *a7 = v17;
    }

    else
    {
      v16 = 4294967292;
    }
  }

  free(v15);
  return v16;
}

uint64_t sub_10000201C(int a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8)
{
  if (a4 < 1)
  {
    return 4294967293;
  }

  if (!a7)
  {
    return 4294967292;
  }

  v10 = a4;
  v14 = a6;
  v15 = (a8 + 4);
  v16 = a7;
LABEL_4:
  v17 = a3 / v14;
  v18 = a3 % v14;
  v19 = v16;
  for (i = v15; *i; i += 2)
  {
    v21 = bswap32(*i);
    if (v17 < v21)
    {
      v22 = bswap32(*(i - 1)) + v17;
      if ((v14 * (v21 - v17) - v18) >= v10)
      {
        v23 = v10;
      }

      else
      {
        v23 = v14 * (v21 - v17) - v18;
      }

      if (sub_100001D90(a1, a2, v18 + a5 + v14 * v22, v23, a6) != -3)
      {
        return 4294967292;
      }

      a3 += v23;
      a2 += v23;
      result = 4294967293;
      v25 = v10 <= v23;
      v10 -= v23;
      if (v25)
      {
        return result;
      }

      goto LABEL_4;
    }

    LODWORD(v17) = v17 - v21;
    if (!--v19)
    {
      return 4294967292;
    }
  }

  return 4294967292;
}

void sub_100002134(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[HFSFileSystem probeResource:replyHandler:]";
  v5 = 2048;
  v6 = a1;
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Expected to read %lld bytes, read %lu", &v3, 0x20u);
}

void sub_1000021CC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[HFSFileSystem probeResource:replyHandler:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to get volume UUID", &v1, 0xCu);
}

void sub_100002250(os_log_t log)
{
  v1 = 136315138;
  v2 = "[HFSFileSystem probeResource:replyHandler:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s: Given device is not a block device", &v1, 0xCu);
}

void sub_1000022D4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[HFSFileSystem probeResource:replyHandler:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to read volume name", &v1, 0xCu);
}