void os_trace_blob_destroy_slow(uint64_t a1)
{
  v1 = *a1;
  *a1 = 3954044928;
  *(a1 + 20) = 0;
  free(v1);
}

uint64_t os_trace_blob_grow(uint64_t *a1, uint64_t a2)
{
  v12 = *(a1 + 2) + ((*(a1 + 22) ^ 1) & 1);
  v2 = __CFADD__(v12, a2);
  v13 = v12 + a2;
  if (v2 || v12 + a2 != v12 + a2)
  {
    v14 = *(a1 + 4);
  }

  else
  {
    v3 = *(a1 + 3);
    v4 = __CFADD__(v3, v3);
    v5 = 2 * v3;
    v6 = v4;
    if (v6)
    {
      v14 = *(a1 + 4);
    }

    else
    {
      if (v13 <= v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = v12 + a2;
      }

      if (*(a1 + 4) >= v7)
      {
        if (v13 > v5)
        {
          v5 = v12 + a2;
        }
      }

      else
      {
        v5 = *(a1 + 4);
      }

      v14 = v5;
    }
  }

  if (v14 > *(a1 + 3))
  {
    if (*(a1 + 10))
    {
      v8 = *a1;
      *a1 = _os_trace_realloc_typed();
    }

    else
    {
      v11 = *a1;
      *a1 = _os_trace_malloc_typed();
      v9 = *a1;
      __memcpy_chk();
      *(a1 + 10) |= 1u;
    }

    *(a1 + 3) = v14;
  }

  return v14 - v12;
}

uint64_t os_trace_blob_add_slow(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = a3;
  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  else
  {
    v6 = *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1) - *(a1 + 8);
    if (v6 < a3)
    {
      if (*(a1 + 12) < *(a1 + 16))
      {
        v6 = os_trace_blob_grow(a1, a3);
      }

      if (v6 < v7)
      {
        *(a1 + 20) |= 2u;
        LODWORD(v7) = v6;
      }
    }

    v3 = *a1;
    v4 = *(a1 + 8);
    __memcpy_chk();
    *(a1 + 8) += v7;
    if ((*(a1 + 22) & 1) == 0)
    {
      *(*a1 + *(a1 + 8)) = 0;
    }

    return v7;
  }
}

uint64_t os_trace_blob_addns(uint64_t a1, _BYTE *a2, unint64_t a3, void *a4)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  else
  {
    v21 = 0;
    *&v20[1] = 0;
    v31 = v25;
    v30 = *(v25 + 8) + ((*(v25 + 22) ^ 1) & 1);
    if (*(v25 + 16))
    {
      v32 = *(v31 + 16) - v30;
    }

    else if (*(v31 + 12))
    {
      v32 = *(v31 + 12) - v30;
    }

    else
    {
      v32 = 0;
    }

    if (v23 > v32)
    {
      v28 = v25;
      v27 = *(v25 + 8) + ((*(v25 + 22) ^ 1) & 1);
      if (*(v25 + 16))
      {
        v29 = *(v28 + 16) - v27;
      }

      else if (*(v28 + 12))
      {
        v29 = *(v28 + 12) - v27;
      }

      else
      {
        v29 = 0;
      }

      v23 = v29;
    }

    while (*v24)
    {
      v36 = v24;
      v35 = v23 - *&v20[1];
      for (i = 0; i < v35; ++i)
      {
        v33 = v36[i];
        if (!v33 || !isascii(v33))
        {
          v37 = i;
          goto LABEL_26;
        }

        if (iscntrl_l(v33, _c_locale) && !isspace_l(v33, _c_locale))
        {
          v37 = i;
          goto LABEL_26;
        }
      }

      v37 = v35;
LABEL_26:
      v21 = v37;
      v68 = v25;
      v67 = v24;
      v66 = v37;
      if ((*(v25 + 20) & 2) != 0)
      {
        v69 = 0;
      }

      else
      {
        v70 = v68;
        if (v66 <= *(v70 + 12) - ((*(v70 + 22) ^ 1) & 1u) - *(v70 + 8))
        {
          v4 = *v68;
          v5 = *(v68 + 2);
          __memcpy_chk();
          v72 = v68;
          v71 = v66;
          *(v68 + 2) += v66;
          if ((*(v72 + 22) & 1) == 0)
          {
            *(*v72 + *(v72 + 8)) = 0;
          }

          v69 = v71;
        }

        else
        {
          v69 = os_trace_blob_add_slow(v68, v67, v66);
        }
      }

      v24 += v21;
      *&v20[1] += v21;
      if (*&v20[1] == v23)
      {
        break;
      }

      v20[0] = *v24;
      if (!v20[0])
      {
        break;
      }

      if (isascii(v20[0]))
      {
        if (*&v20[1] + 3 > v23)
        {
          break;
        }

        if (v20[0] == 127)
        {
          v6 = 63;
        }

        else
        {
          v6 = v20[0] + 64;
        }

        v20[0] = v6;
        qmemcpy(v19, "\\^", 2);
        v19[2] = v6;
        v61 = v25;
        v60 = v19;
        v59 = 3;
        if ((*(v25 + 20) & 2) != 0)
        {
          v62 = 0;
        }

        else
        {
          v63 = v61;
          if (v59 <= *(v63 + 12) - ((*(v63 + 22) ^ 1) & 1u) - *(v63 + 8))
          {
            v7 = *v61;
            v8 = *(v61 + 2);
            __memcpy_chk();
            v65 = v61;
            v64 = v59;
            *(v61 + 2) += v59;
            if ((*(v65 + 22) & 1) == 0)
            {
              *(*v65 + *(v65 + 8)) = 0;
            }

            v62 = v64;
          }

          else
          {
            v62 = os_trace_blob_add_slow(v61, v60, v59);
          }
        }

        *&v20[1] += 3;
        ++v24;
      }

      else
      {
        v21 = _os_trace_utf8_len(v24, v23 - *&v20[1]);
        if (v21 == -2)
        {
          break;
        }

        if (v21 == -1)
        {
          if (*&v20[1] + 4 > v23)
          {
            break;
          }

          v20[0] &= ~0x80u;
          if (iscntrl_l(v20[0], _c_locale))
          {
            if (v20[0] == 127)
            {
              v9 = 63;
            }

            else
            {
              v9 = v20[0] + 64;
            }

            v20[0] = v9;
            qmemcpy(v18, "\\M^", 3);
            v18[3] = v9;
            v54 = v25;
            v53 = v18;
            v52 = 4;
            if ((*(v25 + 20) & 2) != 0)
            {
              v55 = 0;
            }

            else
            {
              v56 = v54;
              if (v52 <= *(v56 + 12) - ((*(v56 + 22) ^ 1) & 1u) - *(v56 + 8))
              {
                v10 = *v54;
                v11 = *(v54 + 2);
                __memcpy_chk();
                v58 = v54;
                v57 = v52;
                *(v54 + 2) += v52;
                if ((*(v58 + 22) & 1) == 0)
                {
                  *(*v58 + *(v58 + 8)) = 0;
                }

                v55 = v57;
              }

              else
              {
                v55 = os_trace_blob_add_slow(v54, v53, v52);
              }
            }
          }

          else
          {
            qmemcpy(v17, "\\M-", 3);
            v17[3] = v20[0];
            v47 = v25;
            v46 = v17;
            v45 = 4;
            if ((*(v25 + 20) & 2) != 0)
            {
              v48 = 0;
            }

            else
            {
              v49 = v47;
              if (v45 <= *(v49 + 12) - ((*(v49 + 22) ^ 1) & 1u) - *(v49 + 8))
              {
                v12 = *v47;
                v13 = *(v47 + 2);
                __memcpy_chk();
                v51 = v47;
                v50 = v45;
                *(v47 + 2) += v45;
                if ((*(v51 + 22) & 1) == 0)
                {
                  *(*v51 + *(v51 + 8)) = 0;
                }

                v48 = v50;
              }

              else
              {
                v48 = os_trace_blob_add_slow(v47, v46, v45);
              }
            }
          }

          *&v20[1] += 4;
          ++v24;
        }

        else
        {
          v40 = v25;
          v39 = v24;
          v38 = v21;
          if ((*(v25 + 20) & 2) != 0)
          {
            v41 = 0;
          }

          else
          {
            v42 = v40;
            if (v38 <= *(v42 + 12) - ((*(v42 + 22) ^ 1) & 1u) - *(v42 + 8))
            {
              v14 = *v40;
              v15 = *(v40 + 2);
              __memcpy_chk();
              v44 = v40;
              v43 = v38;
              *(v40 + 2) += v38;
              if ((*(v44 + 22) & 1) == 0)
              {
                *(*v44 + *(v44 + 8)) = 0;
              }

              v41 = v43;
            }

            else
            {
              v41 = os_trace_blob_add_slow(v40, v39, v38);
            }
          }

          v24 += v21;
          *&v20[1] += v21;
          if (*&v20[1] == v23)
          {
            break;
          }
        }
      }
    }

    if (v22)
    {
      *v22 = v24;
    }

    return *&v20[1];
  }
}

uint64_t _os_trace_utf8_len(_BYTE *a1, unint64_t a2)
{
  if ((*a1 & 0xF8) == 0xF0)
  {
    v4 = 4;
  }

  else if ((*a1 & 0xF0) == 0xE0)
  {
    v4 = 3;
  }

  else
  {
    if ((*a1 & 0xE0) != 0xC0)
    {
      return -1;
    }

    v4 = 2;
  }

  if (a2 < v4)
  {
    return -2;
  }

  for (i = 1; i < v4; ++i)
  {
    if ((a1[i] & 0xC0) != 0x80)
    {
      return -1;
    }
  }

  return v4;
}

uint64_t os_trace_blob_addnws(uint64_t a1, int *a2, unint64_t a3, int **a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  else
  {
    v9 = 0;
    v19 = v13;
    v18 = *(v13 + 8) + ((*(v13 + 22) ^ 1) & 1);
    if (*(v13 + 16))
    {
      v20 = *(v19 + 16) - v18;
    }

    else if (*(v19 + 12))
    {
      v20 = *(v19 + 12) - v18;
    }

    else
    {
      v20 = 0;
    }

    if (v11 > v20)
    {
      v16 = v13;
      v15 = *(v13 + 8) + ((*(v13 + 22) ^ 1) & 1);
      if (*(v13 + 16))
      {
        v17 = *(v16 + 16) - v15;
      }

      else if (*(v16 + 12))
      {
        v17 = *(v16 + 12) - v15;
      }

      else
      {
        v17 = 0;
      }

      v11 = v17;
    }

    while (*v12)
    {
      v7 = _os_trace_utf8_to_mbs(v8, *v12);
      if (!v7 || v9 + v7 > v11)
      {
        break;
      }

      v23 = v13;
      v22 = v8;
      v21 = v7;
      if ((*(v13 + 20) & 2) != 0)
      {
        v24 = 0;
      }

      else
      {
        v25 = v23;
        if (v21 <= *(v25 + 12) - ((*(v25 + 22) ^ 1) & 1u) - *(v25 + 8))
        {
          v4 = *v23;
          v5 = *(v23 + 2);
          __memcpy_chk();
          v27 = v23;
          v26 = v21;
          *(v23 + 2) += v21;
          if ((*(v27 + 22) & 1) == 0)
          {
            *(*v27 + *(v27 + 8)) = 0;
          }

          v24 = v26;
        }

        else
        {
          v24 = os_trace_blob_add_slow(v23, v22, v21);
        }
      }

      if (!v24)
      {
        break;
      }

      v9 += v24;
      ++v12;
    }

    if (v10)
    {
      *v10 = v12;
    }

    return v9;
  }
}

uint64_t _os_trace_utf8_to_mbs(_BYTE *a1, int a2)
{
  v6 = a2;
  if ((a2 & 0xFFFFFF80) == 0)
  {
    *a1 = a2;
    return 1;
  }

  if ((a2 & 0xFFFFF800) == 0)
  {
    v5 = -64;
    v3 = 2;
    goto LABEL_13;
  }

  if ((a2 & 0xFFFF0000) == 0)
  {
    if (a2 < 55296 || a2 > 57343)
    {
      v5 = -32;
      v3 = 3;
      goto LABEL_13;
    }

    return 0;
  }

  if ((a2 & 0xFFE00000) != 0 || a2 > 1114111)
  {
    return 0;
  }

  v5 = -16;
  v3 = 4;
LABEL_13:
  for (i = v3 - 1; i; --i)
  {
    a1[i] = v6 & 0x3F | 0x80;
    v6 >>= 6;
  }

  *a1 = v6 | v5;
  return v3;
}

uint64_t os_trace_blob_vaddf(uint64_t a1, const char *a2, va_list a3)
{
  if (*(a1 + 22))
  {
    _os_crash();
    __break(1u);
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  else
  {
    v5 = *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1) - *(a1 + 8);
    *__error() = 0;
    v4 = __vsnprintf_chk((*a1 + *(a1 + 8)), v5 + 1, 0, 0xFFFFFFFFFFFFFFFFLL, a2, a3);
    if ((v4 & 0x80000000) != 0)
    {
      *(*a1 + *(a1 + 8)) = 0;
      return 0;
    }

    else if (v4 > v5)
    {
      if (*(a1 + 12) < *(a1 + 16))
      {
        v5 = os_trace_blob_grow(a1, v4);
        *__error() = 0;
        __vsnprintf_chk((*a1 + *(a1 + 8)), v5 + 1, 0, 0xFFFFFFFFFFFFFFFFLL, a2, a3);
      }

      if (v4 > v5)
      {
        *(a1 + 20) |= 2u;
        v4 = v5;
      }

      *(a1 + 8) += v4;
      return v4;
    }

    else
    {
      *(a1 + 8) += v4;
      return v4;
    }
  }
}

uint64_t os_trace_blob_add_localtime(uint64_t result, time_t a2, uint64_t a3, int a4)
{
  v20 = result;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  if (*(result + 22))
  {
    result = _os_crash();
    __break(1u);
  }

  if ((*(v20 + 20) & 2) != 0)
  {
    v21 = 0;
  }

  else
  {
    memset(&__b, 0, sizeof(__b));
    result = localtime_r(&v19, &__b);
    if (result)
    {
      os_trace_blob_addf(v20, "%04d-%02d-%02d %02d:%02d:%02d", v4, v5, v6, v7, v8, v9, LOBYTE(__b.tm_year) + 108);
      if (v17)
      {
        if (v17 == 1)
        {
          os_trace_blob_addf(v20, ".%06ld", v10, v11, v12, v13, v14, v15, v18);
        }

        else if (v17 == 2)
        {
          os_trace_blob_addf(v20, ".%03ld", v10, v11, v12, v13, v14, v15, v18);
        }
      }

      else
      {
        os_trace_blob_addf(v20, ".%09ld", v10, v11, v12, v13, v14, v15, v18);
      }

      return os_trace_blob_addf(v20, "%+05ld", v10, v11, v12, v13, v14, v15, (__b.tm_gmtoff / 60 % 60) + 100 * (__b.tm_gmtoff / 60 / 60));
    }

    else
    {
      v21 = 0;
    }
  }

  return result;
}

uint64_t os_trace_blob_add_hexdump(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v23 = result;
  v66 = result;
  v65 = 39;
  v64 = 39;
  v69 = result;
  v68 = &v64;
  v67 = 1;
  if ((*(result + 20) & 2) != 0)
  {
    v70 = 0;
  }

  else
  {
    v71 = v69;
    if (v67 <= *(v71 + 12) - ((*(v71 + 22) ^ 1) & 1u) - *(v71 + 8))
    {
      v4 = *v69;
      v5 = *(v69 + 2);
      result = __memcpy_chk();
      v73 = v69;
      v72 = v67;
      *(v69 + 2) += v67;
      if ((*(v73 + 22) & 1) == 0)
      {
        *(*v73 + *(v73 + 8)) = 0;
      }

      v70 = v72;
    }

    else
    {
      result = os_trace_blob_add_slow(v69, v68, v67);
      v70 = result;
    }
  }

  v18 = v70;
  for (i = 0; i < a3; ++i)
  {
    v16 = *(a2 + i);
    if (i)
    {
      v56 = v23;
      v55 = 32;
      v54 = 32;
      v59 = v23;
      v58 = &v54;
      v57 = 1;
      if ((*(v23 + 20) & 2) != 0)
      {
        v60 = 0;
      }

      else
      {
        v61 = v59;
        if (v57 <= *(v61 + 12) - ((*(v61 + 22) ^ 1) & 1u) - *(v61 + 8))
        {
          v6 = *v59;
          v7 = *(v59 + 2);
          result = __memcpy_chk();
          v63 = v59;
          v62 = v57;
          *(v59 + 2) += v57;
          if ((*(v63 + 22) & 1) == 0)
          {
            *(*v63 + *(v63 + 8)) = 0;
          }

          v60 = v62;
        }

        else
        {
          result = os_trace_blob_add_slow(v59, v58, v57);
          v60 = result;
        }
      }

      v18 += v60;
    }

    v8 = a0123456789abcd[v16 >> 4];
    v46 = v23;
    v45 = v8;
    v44 = v8;
    v49 = v23;
    v48 = &v44;
    v47 = 1;
    if ((*(v23 + 20) & 2) != 0)
    {
      v50 = 0;
    }

    else
    {
      v51 = v49;
      if (v47 <= *(v51 + 12) - ((*(v51 + 22) ^ 1) & 1u) - *(v51 + 8))
      {
        v9 = *v49;
        v10 = *(v49 + 2);
        result = __memcpy_chk();
        v53 = v49;
        v52 = v47;
        *(v49 + 2) += v47;
        if ((*(v53 + 22) & 1) == 0)
        {
          *(*v53 + *(v53 + 8)) = 0;
        }

        v50 = v52;
      }

      else
      {
        result = os_trace_blob_add_slow(v49, v48, v47);
        v50 = result;
      }
    }

    v19 = v18 + v50;
    v11 = a0123456789abcd[v16 & 0xF];
    v36 = v23;
    v35 = v11;
    v34 = v11;
    v39 = v23;
    v38 = &v34;
    v37 = 1;
    if ((*(v23 + 20) & 2) != 0)
    {
      v40 = 0;
    }

    else
    {
      v41 = v39;
      if (v37 <= *(v41 + 12) - ((*(v41 + 22) ^ 1) & 1u) - *(v41 + 8))
      {
        v12 = *v39;
        v13 = *(v39 + 2);
        result = __memcpy_chk();
        v43 = v39;
        v42 = v37;
        *(v39 + 2) += v37;
        if ((*(v43 + 22) & 1) == 0)
        {
          *(*v43 + *(v43 + 8)) = 0;
        }

        v40 = v42;
      }

      else
      {
        result = os_trace_blob_add_slow(v39, v38, v37);
        v40 = result;
      }
    }

    v18 = v19 + v40;
  }

  if (a4)
  {
    v76 = v23;
    v75 = "…'";
    v74 = 0;
    return os_trace_blob_addns(v23, "…'", 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v26 = v23;
    v25 = 39;
    v24 = 39;
    v29 = v23;
    v28 = &v24;
    v27 = 1;
    if ((*(v23 + 20) & 2) != 0)
    {
      v30 = 0;
    }

    else
    {
      v31 = v29;
      if (v27 <= *(v29 + 3) - ((*(v29 + 22) ^ 1) & 1u) - *(v29 + 2))
      {
        v14 = *v29;
        v15 = *(v29 + 2);
        result = __memcpy_chk();
        v33 = v29;
        v32 = v27;
        *(v29 + 2) += v27;
        if ((*(v33 + 22) & 1) == 0)
        {
          *(*v33 + *(v33 + 8)) = 0;
        }
      }

      else
      {
        result = os_trace_blob_add_slow(v29, v28, v27);
        v30 = result;
      }
    }
  }

  return result;
}

uint64_t os_log_fmt_delimit(_BYTE *a1, uint64_t a2, size_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  __s = a1 + 1;
  v12 = 0;
  if (*a1 != 37)
  {
    _os_crash();
    __break(1u);
  }

  __memset_chk();
  *v15 = v17;
  if (*__s != 123)
  {
LABEL_8:
    v3 = __s++;
    v13 = *v3;
    while (1)
    {
      switch(v13)
      {
        case ' ':
        case '#':
        case '\'':
        case '+':
        case '-':
        case '0':
          goto LABEL_8;
        case '*':
          if ((*(v15 + 8) & 8) != 0)
          {
            *(v15 + 8) |= 1u;
          }

          addaster(&__s, v15, 2u);
          goto LABEL_8;
        case '.':
          v4 = __s++;
          v13 = *v4;
          if (v13 == 42)
          {
            addaster(&__s, v15, 0xCu);
            goto LABEL_8;
          }

          *(v15 + 24) = 0;
          while ((v13 - 48) <= 9)
          {
            *(v15 + 24) = v13 - 48 + 10 * *(v15 + 24);
            v5 = __s++;
            v13 = *v5;
          }

          if ((*(v15 + 8) & 8) != 0)
          {
            *(v15 + 8) |= 1u;
          }

          *(v15 + 8) |= 8u;
          break;
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          do
          {
            v6 = __s++;
            v13 = *v6;
          }

          while ((v13 - 48) <= 9);
          if (v13 != 36)
          {
            continue;
          }

          *(v15 + 8) |= 1u;
          goto LABEL_8;
        case '@':
          *(v15 + 10) = 18;
          goto LABEL_65;
        case 'A':
        case 'E':
        case 'F':
        case 'G':
        case 'a':
        case 'e':
        case 'f':
        case 'g':
          if ((v12 & 8) != 0)
          {
            v8 = 15;
          }

          else
          {
            v8 = 14;
          }

          *(v15 + 10) = v8;
          *(v15 + 8) |= 0x10u;
          goto LABEL_65;
        case 'C':
          LOBYTE(v12) = v12 | 0x10;
          goto LABEL_38;
        case 'D':
          LOWORD(v12) = v12 | 0x10;
          goto LABEL_43;
        case 'L':
          v12 |= 8u;
          goto LABEL_8;
        case 'O':
          LOWORD(v12) = v12 | 0x10;
          goto LABEL_51;
        case 'P':
          if (v16 != 2)
          {
            return 0;
          }

          if ((*(v15 + 8) & 8) == 0)
          {
            *(v15 + 8) |= 1u;
          }

          *(v15 + 10) = 19;
          goto LABEL_65;
        case 'S':
          LOBYTE(v12) = v12 | 0x10;
          goto LABEL_59;
        case 'U':
          LOWORD(v12) = v12 | 0x10;
          goto LABEL_51;
        case 'X':
        case 'o':
        case 'u':
        case 'x':
LABEL_51:
          addsarg(v15, v12);
          *(v15 + 8) |= 0x20u;
          ++*(v15 + 10);
          goto LABEL_65;
        case 'c':
LABEL_38:
          if ((v12 & 0x10) != 0)
          {
            v7 = 7;
          }

          else
          {
            v7 = 5;
          }

          *(v15 + 10) = v7;
          *(v15 + 8) |= 0x10u;
          goto LABEL_65;
        case 'd':
        case 'i':
LABEL_43:
          addsarg(v15, v12);
          goto LABEL_65;
        case 'h':
          if ((v12 & 0x40) != 0)
          {
            v12 = v12 & 0xFFFFDFBF | 0x2000;
          }

          else
          {
            v12 |= 0x40u;
          }

          goto LABEL_8;
        case 'j':
          v12 |= 0x1000u;
          goto LABEL_8;
        case 'l':
          if ((v12 & 0x10) != 0)
          {
            v12 = v12 & 0xFFFFFFCF | 0x20;
          }

          else
          {
            v12 |= 0x10u;
          }

          goto LABEL_8;
        case 'm':
          *(v15 + 10) = 8;
          *(v15 + 8) |= 0x10u;
          goto LABEL_65;
        case 'n':
          *(v15 + 8) |= 1u;
          goto LABEL_65;
        case 'p':
          *(v15 + 10) = 13;
          *(v15 + 8) |= 0x30u;
          goto LABEL_65;
        case 'q':
          v12 |= 0x20u;
          goto LABEL_8;
        case 's':
LABEL_59:
          if ((v12 & 0x10) != 0)
          {
            v9 = 17;
          }

          else
          {
            v9 = 16;
          }

          *(v15 + 10) = v9;
LABEL_65:
          v10 = __s - v17;
          *(v15 + 12) = __s - v17;
          return v10;
        case 't':
          v12 |= 0x800u;
          goto LABEL_8;
        case 'z':
          v12 |= 0x400u;
          goto LABEL_8;
        default:
          return 0;
      }
    }
  }

  if (v16 == 2 || v16 == 6)
  {
    __s = strchr(__s, 125);
    if (__s)
    {
      os_log_fmt_parse_annotation(v15);
      ++__s;
      goto LABEL_8;
    }
  }

  return 0;
}

size_t os_log_fmt_parse_annotation(size_t result)
{
  v4 = result;
  for (__s = (*result + 2); *__s != 125; __s = &__sa[__n])
  {
    __sa = &__s[strspn(__s, ", ")];
    result = strcspn(__sa, ",}");
    __n = result;
    if (!result)
    {
      return result;
    }

    if (result != 6 || (result = memcmp(__sa, "public", 6uLL), result))
    {
      if (__n != 7 || (result = memcmp(__sa, "private", 7uLL), result))
      {
        if (__n != 9 || (result = memcmp(__sa, "sensitive", 9uLL), result))
        {
          result = memchr(__sa, 61, __n);
          if (!result)
          {
            result = strncmp(__sa, "mask.", 5uLL);
            if (result)
            {
              *(v4 + 8) |= 0x40u;
              result = strncmp(__sa, "builtin:", 8uLL);
              if (result)
              {
                result = memchr(__sa, 58, __n);
                if (result)
                {
                  if ((*(v4 + 8) & 0x80) != 0)
                  {
                    *(v4 + 8) ^= 0x80u;
                  }

                  *(v4 + 32) = __sa;
                  *(v4 + 14) = result - __sa;
                  *(v4 + 40) = result + 1;
                  *(v4 + 16) = __sa + __n - (result + 1);
                }

                else
                {
                  *(v4 + 8) |= 0x80u;
                  *(v4 + 32) = "builtin";
                  *(v4 + 14) = 7;
                  *(v4 + 40) = __sa;
                  *(v4 + 16) = __n;
                }
              }

              else
              {
                *(v4 + 8) |= 0x80u;
                *(v4 + 32) = "builtin";
                *(v4 + 14) = 7;
                *(v4 + 40) = __sa + 8;
                *(v4 + 16) = __n - 8;
              }
            }

            else if (__n > 5 && __n < 0xE)
            {
              *(v4 + 8) |= 0x800u;
              *(v4 + 48) = __sa + 5;
              *(v4 + 18) = __n - 5;
              result = _os_log_fmt_compute_mask(*(v4 + 48), *(v4 + 18));
              *(v4 + 56) = result;
            }
          }
        }

        else
        {
          *(v4 + 8) |= 0x400u;
        }
      }

      else
      {
        *(v4 + 8) |= 0x200u;
      }
    }

    else
    {
      *(v4 + 8) |= 0x100u;
    }
  }

  if ((*(v4 + 8) & 0x400) != 0)
  {
    *(v4 + 8) &= 0xFCFFu;
  }

  else if ((*(v4 + 8) & 0x200) != 0)
  {
    *(v4 + 8) &= ~0x100u;
  }

  return result;
}

_BYTE **addaster(_BYTE **result, uint64_t a2, unsigned __int16 a3)
{
    ;
  }

  if (*i == 36)
  {
    *result = i + 1;
    *(a2 + 8) |= 1u;
  }

  else
  {
    if ((*(a2 + 8) & a3) != 0)
    {
      *(a2 + 8) |= 1u;
    }

    *(a2 + 8) |= a3;
  }

  return result;
}

uint64_t addsarg(uint64_t result, __int16 a2)
{
  if ((a2 & 0x1000) != 0)
  {
    *(result + 10) = 11;
  }

  else if ((a2 & 0x400) != 0)
  {
    *(result + 10) = 9;
  }

  else if ((a2 & 0x800) != 0)
  {
    *(result + 10) = 9;
  }

  else if ((a2 & 0x20) != 0)
  {
    *(result + 10) = 11;
  }

  else if ((a2 & 0x10) != 0)
  {
    *(result + 10) = 9;
  }

  else if ((a2 & 0x40) != 0)
  {
    *(result + 10) = 3;
  }

  else if ((a2 & 0x2000) != 0)
  {
    *(result + 10) = 1;
  }

  else
  {
    *(result + 10) = 5;
  }

  *(result + 8) |= 0x10u;
  return result;
}

uint64_t _os_log_fmt_compute_mask(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (a2 > 8)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v4 = 0;
  for (i = 0; i < a2; ++i)
  {
    v4 |= *(a1 + i) << (8 * i);
  }

  return v4;
}

uint64_t _os_log_fmt_flatten_masked_data(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, _BYTE *a8)
{
  if (!a3)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  *a1 &= 0xF8u;
  *a1 |= 2u;
  switch(a3)
  {
    case 0x68736168:
    case 0x68736168766564:
    case 0x786F626C69616DLL:
      goto LABEL_23;
    case 0x35646D6E69616C70:
      if (*a8)
      {
        LOWORD(v13) = 0;
      }

      else
      {
        ccmd5_di();
        ccdigest();
        v13 = _os_log_fmt_truncate_to_maxsz(0x10uLL, a7, a8);
        if ((*(a4 + 20) & 2) == 0)
        {
          if (v13 <= *(a4 + 12) - ((*(a4 + 22) ^ 1) & 1u) - *(a4 + 8))
          {
            v8 = *a4;
            v9 = *(a4 + 8);
            __memcpy_chk();
            *(a4 + 8) += v13;
            if ((*(a4 + 22) & 1) == 0)
            {
              *(*a4 + *(a4 + 8)) = 0;
            }
          }

          else
          {
            os_trace_blob_add_slow(a4, v18, v13);
          }
        }
      }

      goto LABEL_24;
    case 0x617474616C69616DLL:
    case 0x656D616E6C69616DLL:
    case 0x6A6275736C69616DLL:
    case 0x6D6D75736C69616DLL:
    case 0x6F6363616C69616DLL:
    case 0x7075626D6C69616DLL:
    case 0x726464616C69616DLL:
LABEL_23:
      LOWORD(v13) = 0;
      *a8 = 0;
LABEL_24:
      *a1 = *a1 & 0xF | 0xF0;
      return v13;
  }

  *a1 = *a1 & 0xF | 0xE0;
  *a8 = 0;
  return 0;
}

unint64_t _os_log_fmt_truncate_to_maxsz(unint64_t a1, unint64_t a2, _BYTE *a3)
{
  v4 = a1;
  if (a1 > a2)
  {
    *a3 = 1;
    return a2;
  }

  return v4;
}

uint64_t _os_log_fmt_flatten_to_blob(_BYTE *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, _BYTE *a9, int *a10)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  v19 = a8;
  v18 = 0;
  v17 = 0;
  v16 = *a1 & 7;
  if (a2 >= privacy_flags2opt[v16] || *v26 >> 4 == 8)
  {
    if (*v26)
    {
      v14 = v20;
    }

    else
    {
      v14 = v21;
    }

    v17 = *(v14 + 8);
    v22 = _os_log_fmt_flatten_data_into_blob(v14, a9, a10, v23, v22, v19, &v18);
    goto LABEL_12;
  }

  if (v24)
  {
    memset(__b, 0, sizeof(__b));
    __b[0] = &v29;
    __b[1] = 0x36200000000;
    WORD2(__b[2]) = 0;
    BYTE6(__b[2]) = 1;
    LODWORD(__b[2]) = 0x10000;
    _os_log_fmt_flatten_data_into_blob(__b, a9, a10, v23, v22, 0x10000uLL, &v18);
    v17 = *(v21 + 8);
    LOWORD(v22) = _os_log_fmt_flatten_masked_data(v26, v25, v24, v21, __b[0], LODWORD(__b[1]), v19, &v18);
    v22 = v22;
    v28 = __b;
    if ((__b[2] & 0x100000000) != 0)
    {
      os_trace_blob_destroy_slow(v28);
    }

LABEL_12:
    v10 = v26;
    v12 = HIBYTE(v17);
    v13 = v22 & 0x7FFF | (v18 << 15);
    v26[2] = v17;
    v10[3] = v12;
    *(v10 + 2) = v13;
    return v22;
  }

  return 0;
}

unint64_t _os_log_fmt_flatten_data_into_blob(uint64_t a1, _BYTE *a2, int *a3, uint64_t a4, unint64_t a5, unint64_t a6, BOOL *a7)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = a6;
  v18 = a7;
  *a7 = 0;
  if (v23 && v19)
  {
    v17 = 0;
    if (v20 && v20 + 1 < v19)
    {
      v19 = v20 + 1;
    }

    v16 = os_trace_blob_addns(v24, v23, v19 - 1, &v17);
    v38 = v24;
    v37 = 0;
    v36 = 0;
    v41 = v24;
    v40 = &v36;
    v39 = 1;
    if ((*(v24 + 10) & 2) != 0)
    {
      v42 = 0;
    }

    else
    {
      v43 = v41;
      if (v39 <= *(v43 + 12) - ((*(v43 + 22) ^ 1) & 1u) - *(v43 + 8))
      {
        v7 = *v41;
        v8 = *(v41 + 2);
        __memcpy_chk();
        v47 = v41;
        v46 = v39;
        *(v41 + 2) += v39;
        if ((*(v47 + 22) & 1) == 0)
        {
          *(*v47 + *(v47 + 8)) = 0;
        }

        v42 = v46;
      }

      else
      {
        v42 = os_trace_blob_add_slow(v41, v40, v39);
      }
    }

    if (!v20 || (v9 = 0, v17 < &v23[v20]))
    {
      v9 = *v17 != 0;
    }

    *v18 = v9;
    return (v16 + 1);
  }

  else if (v22 && v19)
  {
    v15 = 0;
    v20 = os_trace_blob_addnws(v24, v22, v19 - 1, &v15) + 1;
    *v18 = *v15 != 0;
    v31 = v24;
    v30 = 0;
    v29 = 0;
    v34 = v24;
    v33 = &v29;
    v32 = 1;
    if ((*(v24 + 10) & 2) != 0)
    {
      v35 = 0;
    }

    else
    {
      v44 = v34;
      if (v32 <= *(v44 + 12) - ((*(v44 + 22) ^ 1) & 1u) - *(v44 + 8))
      {
        v10 = *v34;
        v11 = *(v34 + 2);
        __memcpy_chk();
        v49 = v34;
        v48 = v32;
        *(v34 + 2) += v32;
        if ((*(v49 + 22) & 1) == 0)
        {
          *(*v49 + *(v49 + 8)) = 0;
        }

        v35 = v48;
      }

      else
      {
        v35 = os_trace_blob_add_slow(v34, v33, v32);
      }
    }
  }

  else if (v23 || v22)
  {
    v20 = 0;
    *v18 = 1;
  }

  else
  {
    v20 = _os_log_fmt_truncate_to_maxsz(v20, v19, v18);
    v27 = v24;
    v26 = v21;
    v25 = v20;
    if ((*(v24 + 10) & 2) != 0)
    {
      v28 = 0;
    }

    else
    {
      v45 = v27;
      if (v25 <= *(v45 + 12) - ((*(v45 + 22) ^ 1) & 1u) - *(v45 + 8))
      {
        v12 = *v27;
        v13 = *(v27 + 2);
        __memcpy_chk();
        v51 = v27;
        v50 = v25;
        *(v27 + 2) += v25;
        if ((*(v51 + 22) & 1) == 0)
        {
          *(*v51 + *(v51 + 8)) = 0;
        }

        v28 = v50;
      }

      else
      {
        v28 = os_trace_blob_add_slow(v27, v26, v25);
      }
    }
  }

  return v20;
}

uint64_t os_log_fmt_flatten(_BYTE *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v58 = a1;
  v57 = 0;
  v56 = a2;
  v55 = 1024;
  v54 = a3;
  v53 = a4;
  v52 = a5;
  v51 = a6;
  v50 = a2 != 0;
  if (!a2)
  {
    v49 = _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v70 = v54;
  v69 = *(v54 + 8) + ((*(v54 + 22) ^ 1) & 1);
  if (*(v54 + 16))
  {
    v71 = *(v70 + 16) - v69;
  }

  else if (*(v70 + 12))
  {
    v71 = *(v70 + 12) - v69;
  }

  else
  {
    v71 = 0;
  }

  v6 = 0;
  if (v71 >= v55)
  {
    v67 = v53;
    v66 = *(v53 + 8) + ((*(v53 + 22) ^ 1) & 1);
    if (*(v53 + 16))
    {
      v68 = *(v67 + 16) - v66;
    }

    else
    {
      v68 = *(v67 + 12) ? *(v67 + 12) - v66 : 0;
    }

    v6 = 0;
    if (v68 >= v55)
    {
      v64 = v52;
      v63 = *(v52 + 8) + ((*(v52 + 22) ^ 1) & 1);
      if (*(v52 + 16))
      {
        v65 = *(v64 + 16) - v63;
      }

      else if (*(v64 + 12))
      {
        v65 = *(v64 + 12) - v63;
      }

      else
      {
        v65 = 0;
      }

      v6 = v65 >= v55;
    }
  }

  v48 = v6;
  if (!v6)
  {
    v47 = _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v46 = privacy_opt2flags[v57];
  v45 = 32 * v56;
  v44 = *(v54 + 8);
  v43 = 0;
  __dst = 0;
  result = memset(__b, 0, sizeof(__b));
  __b[0] = 32 * v56;
  __b[1] = 0;
  if ((*v58 & 0x10) != 0)
  {
    __b[0] |= 0x10u;
  }

  v40 = v55 - *(v54 + 8) - 2;
  v61 = v54;
  v60 = __b;
  v59 = 2;
  if ((*(v54 + 20) & 2) != 0)
  {
    v62 = 0;
  }

  else
  {
    v106 = v61;
    if (v59 <= *(v106 + 12) - ((*(v106 + 22) ^ 1) & 1u) - *(v106 + 8))
    {
      v8 = *v61;
      v9 = *(v61 + 2);
      result = __memcpy_chk();
      v116 = v61;
      v115 = v59;
      *(v61 + 2) += v59;
      if ((*(v116 + 22) & 1) == 0)
      {
        *(*v116 + *(v116 + 8)) = 0;
      }

      v62 = v115;
    }

    else
    {
      result = os_trace_blob_add_slow(v61, v60, v59);
      v62 = result;
    }
  }

  v39 = v58 + 2;
  v38 = 0;
  while (v38 < v58[1])
  {
    result = memset(v37, 0, sizeof(v37));
    v36 = 0;
    __src = v39 + 2;
    v37[0] = *v39;
    v37[1] = v39[1];
    if ((v37[0] & 7) == 0)
    {
      v37[0] = v37[0] & 0xF0 | v37[0] & 0xF | v46 & 0xF;
    }

    v10 = v37[0] >> 4;
    if (v10)
    {
      switch(v10)
      {
        case 1:
          v32 = v37[1] == 4;
          if (v37[1] != 4)
          {
            v31 = _os_assert_log();
            result = _os_crash();
            __break(1u);
          }

          v43 = *__src;
          if ((v43 & 0x80000000) != 0)
          {
            v43 = 0;
          }

          v37[0] = v37[0] & 0xF0 | 2;
          break;
        case 6:
          v37[0] &= 0xFu;
          __src = &v51;
          v37[1] = 4;
          v43 = 4;
          break;
        case 7:
          v34 = v37[1] == 8;
          if (v37[1] != 8)
          {
            v33 = _os_assert_log();
            _os_crash();
            __break(1u);
          }

          result = memcpy(&__dst, __src, sizeof(__dst));
          goto LABEL_113;
        default:
          if (!((os_log_fmt_flatten_cmd_type_is_scalar[v37[0] >> 4] ^ 1) & 1))
          {
            v29 = _os_assert_log();
            _os_crash();
            __break(1u);
          }

          v28 = v37[1] == 8;
          if (v37[1] != 8)
          {
            v27 = _os_assert_log();
            _os_crash();
            __break(1u);
          }

          result = memcpy(&__src, __src, sizeof(__src));
          __b[0] |= 2u;
          break;
      }
    }

    else
    {
      v43 = v37[1];
    }

    if (os_log_fmt_flatten_cmd_type_is_scalar[v37[0] >> 4] & 1) == 0 || (v37[0])
    {
      v37[1] = 4;
      v25 = 0;
      v26 &= 0x8000u;
      v26 &= ~0x8000u;
      v77 = __b;
      v76 = v54;
      v75 = v37;
      v74 = &v25;
      v73 = &v40;
      v72 = *(v54 + 8);
      v16 = v40 < 6;
      v40 -= 6;
      v118 = v16;
      if (v16)
      {
        *v77 |= 0x80u;
        v78 = 0;
      }

      else
      {
        ++v77[1];
        v85 = v76;
        v84 = v75;
        v83 = 2;
        if ((*(v76 + 20) & 2) != 0)
        {
          v86 = 0;
        }

        else
        {
          v105 = v85;
          if (v83 <= *(v105 + 12) - ((*(v105 + 22) ^ 1) & 1u) - *(v105 + 8))
          {
            v17 = *v85;
            v18 = *(v85 + 2);
            result = __memcpy_chk();
            v114 = v85;
            v113 = v83;
            *(v85 + 2) += v83;
            if ((*(v114 + 22) & 1) == 0)
            {
              *(*v114 + *(v114 + 8)) = 0;
            }

            v86 = v113;
          }

          else
          {
            result = os_trace_blob_add_slow(v85, v84, v83);
            v86 = result;
          }
        }

        v19 = v75[1];
        v81 = v76;
        v80 = v74;
        v79 = v19;
        if ((*(v76 + 20) & 2) != 0)
        {
          v82 = 0;
        }

        else
        {
          v104 = v81;
          if (v79 <= *(v104 + 12) - ((*(v104 + 22) ^ 1) & 1u) - *(v104 + 8))
          {
            v20 = *v81;
            v21 = *(v81 + 2);
            result = __memcpy_chk();
            v112 = v81;
            v111 = v79;
            *(v81 + 2) += v79;
            if ((*(v112 + 22) & 1) == 0)
            {
              *(*v112 + *(v112 + 8)) = 0;
            }

            v82 = v111;
          }

          else
          {
            result = os_trace_blob_add_slow(v81, v80, v79);
            v82 = result;
          }
        }

        v78 = (*v76 + v72);
      }

      v36 = v78;
      if (!v78)
      {
        break;
      }

      v24 = v37[0] & 7;
      if (__src && (v56 >= privacy_flags2opt[v24] || __dst))
      {
        result = _os_log_fmt_flatten_data(v36, v56, __dst, __src, v43, v53, v52, v40);
        v40 -= result;
      }

      else if (__src || v56 >= privacy_flags2opt[v24] || !__dst)
      {
        if (__src && *v36 >> 4 == 4)
        {
          v22 = privacy_flags2opt[v24];
        }
      }

      else
      {
        *v36 = *v36 & 0xF | 0xF0;
        *v36 &= 0xF8u;
        *v36 = *v36 & 0xF0 | *v36 & 0xD | 2;
      }

      if (!(*v36 >> 4) && (*(v36 + 2) & 0x7FFF) == 0)
      {
        *(v36 + 2) = *(v36 + 2) & 0x7FFF | 0x8000;
      }

      if (*v36)
      {
        __b[0] |= 1u;
      }

LABEL_112:
      v43 = 0;
      __dst = 0;
      goto LABEL_113;
    }

    v92 = __b;
    v91 = v54;
    v90 = v37;
    v89 = __src;
    v88 = &v40;
    v87 = *(v54 + 8);
    v11 = v37[1] + 2;
    v12 = v40 - v11;
    LOBYTE(v11) = v40 < v11;
    v40 = v12;
    v117 = v11 & 1;
    if (v11)
    {
      *v92 |= 0x80u;
      v93 = 0;
    }

    else
    {
      ++v92[1];
      v100 = v91;
      v99 = v90;
      v98 = 2;
      if ((*(v91 + 20) & 2) != 0)
      {
        v101 = 0;
      }

      else
      {
        v103 = v100;
        if (v98 <= *(v103 + 12) - ((*(v103 + 22) ^ 1) & 1u) - *(v103 + 8))
        {
          v13 = *v100 + *(v100 + 8);
          result = __memcpy_chk();
          v110 = v100;
          v109 = v98;
          *(v100 + 8) += v98;
          if ((*(v110 + 22) & 1) == 0)
          {
            *(*v110 + *(v110 + 8)) = 0;
          }

          v101 = v109;
        }

        else
        {
          result = os_trace_blob_add_slow(v100, v99, v98);
          v101 = result;
        }
      }

      v14 = v90[1];
      v96 = v91;
      v95 = v89;
      v94 = v14;
      if ((*(v91 + 20) & 2) != 0)
      {
        v97 = 0;
      }

      else
      {
        v102 = v96;
        if (v94 <= *(v102 + 12) - ((*(v102 + 22) ^ 1) & 1u) - *(v102 + 8))
        {
          v15 = *v96 + *(v96 + 8);
          result = __memcpy_chk();
          v108 = v96;
          v107 = v94;
          *(v96 + 8) += v94;
          if ((*(v108 + 22) & 1) == 0)
          {
            *(*v108 + *(v108 + 8)) = 0;
          }

          v97 = v107;
        }

        else
        {
          result = os_trace_blob_add_slow(v96, v95, v94);
          v97 = result;
        }
      }

      v93 = *v91 + v87;
    }

    if (!v93)
    {
      break;
    }

    if (v37[0] >> 4 != 1)
    {
      goto LABEL_112;
    }

LABEL_113:
    ++v38;
    v39 += v39[1] + 2;
  }

  v23 = (*v54 + v44);
  *v23 = __b[0];
  v23[1] = __b[1];
  return result;
}

uint64_t _os_log_fmt_flatten_data(_BYTE *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v11 = a8;
  v10 = 0;
  if (a8 > 0x7FFF)
  {
    v11 = 0x7FFFLL;
  }

  v8 = *a1 >> 4;
  if (!v8)
  {
    if (!a5)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    return _os_log_fmt_flatten_to_blob(a1, a2, a3, a4, a5, a6, a7, v11, v10, 0);
  }

  if (v8 == 2)
  {
    v10 = a4;
    if ((*a1 & 7) == 0)
    {
      *a1 = *a1 & 0xF0 | *a1 & 0xE | 1;
    }

    return _os_log_fmt_flatten_to_blob(a1, a2, a3, a4, a5, a6, a7, v11, v10, 0);
  }

  if (v8 != 3)
  {
    _os_crash();
    __break(1u);
    return _os_log_fmt_flatten_to_blob(a1, a2, a3, a4, a5, a6, a7, v11, v10, 0);
  }

  if (a5)
  {
    if ((*a1 & 7) == 0)
    {
      *a1 = *a1 & 0xF0 | *a1 & 0xE | 1;
    }

    return _os_log_fmt_flatten_to_blob(a1, a2, a3, a4, a5, a6, a7, v11, v10, 0);
  }

  return 0;
}

uint64_t os_log_fmt_read_scalar(uint64_t a1, unsigned __int8 *a2, __int16 a3)
{
  memset(&__b, 0, sizeof(__b));
  if (*(a1 + 10) == 14)
  {
    return *a2;
  }

  if (*(a1 + 10) != 15)
  {
    if ((*(a1 + 8) & 0x20) != 0)
    {
      switch(a3)
      {
        case 1:
          return *a2;
        case 2:
          return *a2;
        case 4:
          return *a2;
        case 8:
          return *a2;
      }
    }

    else
    {
      switch(a3)
      {
        case 1:
          return *a2;
        case 2:
          return *a2;
        case 4:
          return *a2;
        case 8:
          return *a2;
      }
    }

    _os_crash();
    __break(1u);
    return __b;
  }

  return *a2;
}

_BYTE *os_log_fmt_convert_trace(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v10 = *(a2 + a3 - 1);
  v9 = a2 + a3 - v10 - 1;
  v7 = a1 + 2;
  *a1 = 0;
  a1[1] = v10;
  for (i = 0; i < v10; ++i)
  {
    v5 = *(v9 + i) & 0x3F;
    if (v11 + v5 > v9)
    {
      return 0;
    }

    v4 = *(v9 + i) & 0x3F;
    *v7 = 0;
    v7[1] = v5;
    __memcpy_chk();
    v11 += v5;
    v7 += v5 + 2;
  }

  return a1;
}

void *os_log_fmt_extract_pubdata(uint64_t a1, unsigned __int16 a2, void *a3, unsigned __int16 *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (!a2)
  {
    return &os_log_fmt_extract_pubdata_empty_hdr;
  }

  if (a2 < 2uLL)
  {
    return 0;
  }

  v8 = a1 + 2;
  v7 = a2 - 2;
  for (i = 0; i < *(a1 + 1); ++i)
  {
    v5 = v8;
    if (v7 < 2uLL)
    {
      return 0;
    }

    if (v7 < *(v8 + 1) + 2)
    {
      return 0;
    }

    v8 += *(v8 + 1) + 2;
    v7 -= *(v5 + 1) + 2;
  }

  *a3 = v8;
  *a4 = v7;
  return a1;
}

uint64_t os_log_fmt_read_aster_if_necessary(uint64_t result, _WORD *a2, void *a3)
{
  v5 = result;
  if ((*(result + 8) & 2) != 0)
  {
    if (*a2)
    {
      v9 = *a3;
      --*a2;
      *a3 = &v9[v9[1] + 2];
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10 && v10[1] == 4 && (*v10 >> 4 == 1 || !(*v10 >> 4)))
    {
      result = __memcpy_chk();
    }

    else
    {
      *(result + 20) = 0;
    }
  }

  if ((*(v5 + 8) & 8) != 0)
  {
    if ((*(v5 + 8) & 4) == 0 && ((*(v5 + 8) & 0x10) != 0 || *(v5 + 10) == 18))
    {
      if (*a2 && **a3 >> 4 == 1)
      {
        if (*a2)
        {
          v8 = *a3;
          --*a2;
          *a3 = &v8[v8[1] + 2];
        }
      }

      *(v5 + 8) &= ~8u;
    }

    else
    {
      if (*a2)
      {
        v6 = *a3;
        --*a2;
        *a3 = &v6[v6[1] + 2];
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      if (v7 && v7[1] == 4 && (*v7 >> 4 == 1 || !(*v7 >> 4)))
      {
        return __memcpy_chk();
      }

      else
      {
        *(v5 + 24) = -1;
      }
    }
  }

  return result;
}

uint64_t os_log_fmt_get_data(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3, __int16 *a4, __int16 a5, uint64_t a6, __int16 **a7, _WORD *a8, BOOL *a9, __int16 *a10, unsigned __int16 a11, __int16 *a12, unsigned __int16 a13)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v20 = a8;
  v19 = a10;
  v18 = a11;
  v17 = 0;
  if (!a4)
  {
    v17 = 2;
LABEL_63:
    *v21 = 0;
    *v20 = 0;
    return v17;
  }

  if (*v24 >> 4 == 14)
  {
    if (*(v27 + 56))
    {
      if (os_log_fmt_validate_mask(*(v27 + 56)))
      {
        v17 = 8;
      }

      else
      {
        v17 = 10;
      }
    }

    else
    {
      v17 = 3;
    }

    goto LABEL_63;
  }

  if (*v24)
  {
    v16 = privacy_flags2opt[*v24 & 7];
    if (!v16)
    {
      v17 = 3;
      goto LABEL_63;
    }

    if (v16 > v25)
    {
      v17 = 1;
      goto LABEL_63;
    }

    if (v26)
    {
      if (v26 - 1 <= 2 && v16 > v26 && *v24 >> 4 != 8)
      {
        v17 = 1;
        goto LABEL_63;
      }
    }

    else if (!a12)
    {
      v17 = 1;
      goto LABEL_63;
    }

    v19 = a12;
    v18 = a13;
  }

  if (!v19 && v18)
  {
    v17 = 4;
    goto LABEL_63;
  }

  *a9 = 0;
  if ((*v24 & 1) == 0 && !(*v24 >> 4))
  {
    v19 = v24 + 1;
    v18 = *(v24 + 1);
    *a9 = v18 == 0;
LABEL_57:
    if (*a9 && !(*v24 >> 4))
    {
      v17 = 2;
      goto LABEL_63;
    }

    *v21 = v19;
    *v20 = v18;
    if (_os_log_fmt_validate_cmd(v27, v22, v24, v18))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v15 = _os_log_fmt_compose_read_range(v24, v18, &v17);
  if (!v15)
  {
    goto LABEL_63;
  }

  if (v19)
  {
    v19 = (v19 + *v15);
  }

  *a9 = *(v15 + 1) < 0;
  if (!*a9 || v23 || (*(v15 + 1) & 0x7FFF) != 0 || v18 - *v15 < 0x8000)
  {
    v18 = *(v15 + 1) & 0x7FFF;
  }

  else
  {
    v18 = 0x8000;
    *a9 = 0;
  }

  if (*v24 >> 4 != 15)
  {
    goto LABEL_57;
  }

  v13 = *(v27 + 56);
  switch(v13)
  {
    case 0:
      v17 = 3;
      goto LABEL_63;
    case 0x68736168:
    case 0x68736168766564:
      goto LABEL_52;
    case 0x786F626C69616DLL:
      goto LABEL_54;
    case 0x35646D6E69616C70:
LABEL_52:
      *v21 = v19;
      *v20 = v18;
      return 5;
    case 0x617474616C69616DLL:
    case 0x656D616E6C69616DLL:
    case 0x6A6275736C69616DLL:
    case 0x6D6D75736C69616DLL:
    case 0x6F6363616C69616DLL:
LABEL_54:
      *v21 = v19;
      *v20 = v18;
      return 6;
    case 0x7075626D6C69616DLL:
      goto LABEL_52;
  }

  if (v13 != 0x726464616C69616DLL)
  {
    v17 = 9;
    goto LABEL_63;
  }

  *v21 = v19;
  *v20 = v18;
  return 7;
}

unsigned __int8 *_os_log_fmt_compose_read_range(__int16 *a1, unsigned __int16 a2, _BYTE *a3)
{
  if (((*a1 & 1) != 0 || *a1 >> 4 > 1u) && *(a1 + 1) == 4)
  {
    if (a2 >= a1[1] && a2 - a1[1] >= (a1[2] & 0x7FFF))
    {
      if (a1[2] >= 0 || *a1 >> 4)
      {
        return (a1 + 1);
      }

      else
      {
        *a3 = 2;
        return 0;
      }
    }

    else
    {
      *a3 = 4;
      return 0;
    }
  }

  else
  {
    *a3 = 3;
    return 0;
  }
}

BOOL _os_log_fmt_validate_cmd(uint64_t a1, unsigned __int16 a2, _BYTE *a3, unsigned __int16 a4)
{
  if (*a3 >> 4 == 1)
  {
    return 0;
  }

  else if (((*(a1 + 8) & 0x10) != 0) == (*a3 >> 4 == 0))
  {
    if ((*(a1 + 8) & 0x10) != 0 && (!a4 || ((a4 - 1) & a4) != 0))
    {
      return 0;
    }

    else
    {
      switch(*(a1 + 10))
      {
        case 1:
        case 2:
          v6 = a4 <= 4uLL;
          break;
        case 3:
        case 4:
          v6 = a4 <= 4uLL;
          break;
        case 5:
        case 6:
        case 7:
        case 8:
          v6 = a4 <= 4uLL;
          break;
        case 9:
        case 0xA:
          v6 = a4 <= a2;
          break;
        case 0xB:
        case 0xC:
          v6 = a4 <= 8uLL;
          break;
        case 0xD:
          v6 = a4 == a2;
          break;
        case 0xE:
          v6 = a4 == 8;
          break;
        case 0xF:
          v6 = a4 == 8;
          break;
        case 0x10:
          v6 = *a3 >> 4 == 2;
          break;
        case 0x11:
          v6 = *a3 >> 4 == 5;
          break;
        case 0x12:
          v4 = *a3 >> 4;
          v6 = (v4 - 2) < 3 || v4 == 8;
          break;
        case 0x13:
          v6 = *a3 >> 4 == 3;
          break;
        default:
          _os_crash();
          __break(1u);
          break;
      }
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

void os_log_fmt_compose(uint64_t *a1, char *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, _BYTE *a6, __int16 *a7, unsigned __int16 a8, __int16 *a9, unsigned __int16 a10)
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  v38 = a5;
  v37 = a6;
  v36 = a7;
  v35 = a8;
  v34 = a6 + 2;
  v33 = a6[1];
  v32 = (*a6 & 0x60) >> 5;
  memset(__b, 0, sizeof(__b));
  v30 = 0;
  while (1)
  {
    v29 = strcspn(v41, "%");
    v45 = v42;
    v44 = v41;
    v43 = v29;
    if ((*(v42 + 10) & 2) != 0)
    {
      v46 = 0;
    }

    else
    {
      v61 = v45;
      if (v43 <= *(v61 + 3) - ((*(v61 + 22) ^ 1) & 1u) - *(v61 + 2))
      {
        v10 = *v45;
        v11 = *(v45 + 2);
        __memcpy_chk();
        v65 = v45;
        v64 = v43;
        *(v45 + 2) += v43;
        if ((*(v65 + 22) & 1) == 0)
        {
          *(*v65 + *(v65 + 2)) = 0;
        }

        v46 = v64;
      }

      else
      {
        v46 = os_trace_blob_add_slow(v45, v44, v43);
      }
    }

    v41 += v29;
    if (!*v41)
    {
      break;
    }

    v29 = os_log_fmt_delimit(v41, v40, __b);
    if (v29)
    {
      v41 += v29;
      if (__b[1])
      {
        _os_log_fmt_decode_give_up(v42, __b, v12, v13, v14, v15, v16, v17);
        return;
      }

      os_log_fmt_read_aster_if_necessary(__b, &v33, &v34);
      v28 = 0;
      v27 = 0;
      v49 = &v34;
      v48 = &v33;
      if (v33)
      {
        v47 = *v49;
        --*v48;
        *v49 = v47 + 2 + *(v47 + 1);
        v50 = v47;
      }

      else
      {
        v50 = 0;
      }

      v30 = v50;
      v26 = 0;
      data = os_log_fmt_get_data(__b, v32, v39, v50, v33, v38, &v28, &v27, &v26, v36, v35, a9, a10);
      if (data == 5)
      {
        _os_log_fmt_compose_masked_digest(v42, __b, v28, v27, v26, v21, v22, v23);
      }

      else if (data == 6 || data == 7)
      {
        _os_log_fmt_compose_masked_partial_redacted(v42, __b, v28, v27, v26);
      }

      else if (data)
      {
        _os_log_fmt_decode_data_access_failure(v42, __b, data, v30, v27, v21, v22, v23);
      }

      else if ((__b[1] & 0x40) == 0 || (_os_log_fmt_compose_annotated(v42, v38, __b, v30, v28, v27, v26) & 1) == 0)
      {
        if ((__b[1] & 0x10) != 0)
        {
          _os_log_fmt_compose_scalar(v42, __b, v38, v28, v27);
        }

        else
        {
          _os_log_fmt_compose_data(v42, __b, v30, v28, v27, v26);
        }
      }
    }

    else
    {
      if (!v41[1])
      {
        break;
      }

      v18 = v41[1];
      v53 = v42;
      v52 = v18;
      v51 = v18;
      v56 = v42;
      v55 = &v51;
      v54 = 1;
      if ((*(v42 + 10) & 2) != 0)
      {
        v57 = 0;
      }

      else
      {
        v60 = v56;
        if (v54 <= *(v60 + 3) - ((*(v60 + 22) ^ 1) & 1u) - *(v60 + 2))
        {
          v19 = *v56;
          v20 = *(v56 + 2);
          __memcpy_chk();
          v63 = v56;
          v62 = v54;
          *(v56 + 2) += v54;
          if ((*(v63 + 22) & 1) == 0)
          {
            *(*v63 + *(v63 + 2)) = 0;
          }

          v57 = v62;
        }

        else
        {
          v57 = os_trace_blob_add_slow(v56, v55, v54);
        }
      }

      v41 += 2;
    }
  }

  v59 = v42;
  for (i = *(v42 + 2); ; --i)
  {
    v24 = 0;
    if (i)
    {
      v24 = isspace(*(*v59 + i - 1)) != 0;
    }

    if (!v24)
    {
      break;
    }
  }

  v67 = v59;
  v66 = i;
  *(v59 + 2) = i;
  if ((*(v67 + 22) & 1) == 0)
  {
    *(*v67 + v66) = 0;
  }
}

unint64_t _os_log_fmt_compose_masked_digest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a4;
  v14 = a5;
  v13 = *(a2 + 48);
  os_trace_blob_addf(a1, "<mask.%.*s: ", a3, a4, a5, a6, a7, a8, *(a2 + 18));
  if (v15 || (v14 & 1) != 0)
  {
    os_trace_blob_add_hexdump(a1, a3, v15, v14 & 1);
  }

  else
  {
    v19 = strlen("(null)");
    if ((*(a1 + 20) & 2) == 0)
    {
      if (v19 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
      {
        v8 = *a1;
        v9 = *(a1 + 8);
        __memcpy_chk();
        *(a1 + 8) += v19;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + *(a1 + 8)) = 0;
        }
      }

      else
      {
        os_trace_blob_add_slow(a1, "(null)", v19);
      }
    }
  }

  result = strlen(">");
  v18 = result;
  if ((*(a1 + 20) & 2) == 0)
  {
    if (result <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
    {
      v11 = *a1;
      v12 = *(a1 + 8);
      result = __memcpy_chk();
      *(a1 + 8) += v18;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + *(a1 + 8)) = 0;
      }
    }

    else
    {
      return os_trace_blob_add_slow(a1, ">", result);
    }
  }

  return result;
}

uint64_t _os_log_fmt_compose_masked_partial_redacted(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned __int16 a4, char a5)
{
  v58 = a1;
  v57 = a2;
  v56 = a3;
  v55 = a4;
  v54 = a5;
  if (a4 || (v54 & 1) != 0)
  {
    if (v55 >= 4uLL)
    {
      memset(__b, 0, sizeof(__b));
      __b[0] = *v56;
      __b[1] = v56[1];
      __b[2] = v56[2];
      __b[3] = v56[3];
      v52 = __b[3] == 2;
      v10 = 0;
      if ((v54 & 1) == 0)
      {
        v10 = 0;
        if (!__b[0])
        {
          v10 = 1;
          if (__b[3] == 2)
          {
            v10 = __b[2] == 0;
          }
        }
      }

      if (v10)
      {
        return os_trace_blob_addns(v58, v56 + 4, v55 - 4, 0);
      }

      else
      {
        v11 = 1;
        if (__b[3] != 2)
        {
          v11 = __b[3] == 0;
        }

        v51 = v11;
        v50 = __b[3] == 1;
        v123 = v58;
        v122 = "<";
        v12 = strlen("<");
        v126 = v58;
        v125 = "<";
        v124 = v12;
        if ((*(v58 + 10) & 2) != 0)
        {
          v127 = 0;
        }

        else
        {
          v128 = v126;
          if (v124 <= *(v128 + 12) - ((*(v128 + 22) ^ 1) & 1u) - *(v128 + 8))
          {
            v19 = *v126;
            v20 = *(v126 + 2);
            __memcpy_chk();
            v130 = v126;
            v129 = v124;
            *(v126 + 2) += v124;
            if ((*(v130 + 22) & 1) == 0)
            {
              *(*v130 + *(v130 + 8)) = 0;
            }

            v127 = v129;
          }

          else
          {
            v127 = os_trace_blob_add_slow(v126, v125, v124);
          }
        }

        if (__b[0] + 4 < v55)
        {
          v49 = __b[0] + 4;
          if (v52)
          {
            if (__b[2] >= v55 - v49)
            {
              v21 = v55 - v49;
            }

            else
            {
              v21 = __b[2];
            }
          }

          else
          {
            v21 = v55 - v49;
          }

          v48 = v21;
          v47 = 0;
          if (v21)
          {
            if (v50)
            {
              v114 = v58;
              v113 = "…";
              v22 = strlen("…");
              v117 = v58;
              v116 = "…";
              v115 = v22;
              if ((*(v58 + 10) & 2) != 0)
              {
                v118 = 0;
              }

              else
              {
                v119 = v117;
                if (v115 <= *(v119 + 12) - ((*(v119 + 22) ^ 1) & 1u) - *(v119 + 8))
                {
                  v23 = *v117;
                  v24 = *(v117 + 2);
                  __memcpy_chk();
                  v121 = v117;
                  v120 = v115;
                  *(v117 + 2) += v115;
                  if ((*(v121 + 22) & 1) == 0)
                  {
                    *(*v121 + *(v121 + 8)) = 0;
                  }

                  v118 = v120;
                }

                else
                {
                  v118 = os_trace_blob_add_slow(v117, v116, v115);
                }
              }

              v47 = 1;
            }

            if (os_trace_blob_addns(v58, &v56[v49], v48, 0))
            {
              if (v51 || (v54 & 1) != 0)
              {
                v105 = v58;
                v104 = "…";
                v25 = strlen("…");
                v108 = v58;
                v107 = "…";
                v106 = v25;
                if ((*(v58 + 10) & 2) != 0)
                {
                  v109 = 0;
                }

                else
                {
                  v110 = v108;
                  if (v106 <= *(v110 + 12) - ((*(v110 + 22) ^ 1) & 1u) - *(v110 + 8))
                  {
                    v26 = *v108;
                    v27 = *(v108 + 2);
                    __memcpy_chk();
                    v112 = v108;
                    v111 = v106;
                    *(v108 + 2) += v106;
                    if ((*(v112 + 22) & 1) == 0)
                    {
                      *(*v112 + *(v112 + 8)) = 0;
                    }

                    v109 = v111;
                  }

                  else
                  {
                    v109 = os_trace_blob_add_slow(v108, v107, v106);
                  }
                }
              }

              v47 = 1;
            }
          }

          if (v52)
          {
            v46 = __b[0] + 4 + v48;
            v45 = v55 - v46;
            if (v45)
            {
              if (v50)
              {
                v96 = v58;
                v95 = "…";
                v28 = strlen("…");
                v99 = v58;
                v98 = "…";
                v97 = v28;
                if ((*(v58 + 10) & 2) != 0)
                {
                  v100 = 0;
                }

                else
                {
                  v101 = v99;
                  if (v97 <= *(v101 + 12) - ((*(v101 + 22) ^ 1) & 1u) - *(v101 + 8))
                  {
                    v29 = *v99;
                    v30 = *(v99 + 2);
                    __memcpy_chk();
                    v103 = v99;
                    v102 = v97;
                    *(v99 + 2) += v97;
                    if ((*(v103 + 22) & 1) == 0)
                    {
                      *(*v103 + *(v103 + 8)) = 0;
                    }

                    v100 = v102;
                  }

                  else
                  {
                    v100 = os_trace_blob_add_slow(v99, v98, v97);
                  }
                }

                v47 = 1;
              }

              if (os_trace_blob_addns(v58, &v56[v46], v45, 0))
              {
                if (v51)
                {
                  v87 = v58;
                  v86 = "…";
                  v31 = strlen("…");
                  v90 = v58;
                  v89 = "…";
                  v88 = v31;
                  if ((*(v58 + 10) & 2) != 0)
                  {
                    v91 = 0;
                  }

                  else
                  {
                    v92 = v90;
                    if (v88 <= *(v92 + 12) - ((*(v92 + 22) ^ 1) & 1u) - *(v92 + 8))
                    {
                      v32 = *v90;
                      v33 = *(v90 + 2);
                      __memcpy_chk();
                      v94 = v90;
                      v93 = v88;
                      *(v90 + 2) += v88;
                      if ((*(v94 + 22) & 1) == 0)
                      {
                        *(*v94 + *(v94 + 8)) = 0;
                      }

                      v91 = v93;
                    }

                    else
                    {
                      v91 = os_trace_blob_add_slow(v90, v89, v88);
                    }
                  }
                }

                v47 = 1;
              }
            }
          }

          if (v47)
          {
            v78 = v58;
            v77 = ", ";
            v34 = strlen(", ");
            v81 = v58;
            v80 = ", ";
            v79 = v34;
            if ((*(v58 + 10) & 2) != 0)
            {
              v82 = 0;
            }

            else
            {
              v83 = v81;
              if (v79 <= *(v83 + 12) - ((*(v83 + 22) ^ 1) & 1u) - *(v83 + 8))
              {
                v35 = *v81;
                v36 = *(v81 + 2);
                __memcpy_chk();
                v85 = v81;
                v84 = v79;
                *(v81 + 2) += v79;
                if ((*(v85 + 22) & 1) == 0)
                {
                  *(*v85 + *(v85 + 8)) = 0;
                }

                v82 = v84;
              }

              else
              {
                v82 = os_trace_blob_add_slow(v81, v80, v79);
              }
            }
          }
        }

        os_trace_blob_addf(v58, "length=%u", v13, v14, v15, v16, v17, v18, __b[1]);
        v44 = (v56 + 4);
        if (__b[0] >= v55 - 4)
        {
          v37 = v55 - 4;
        }

        else
        {
          v37 = __b[0];
        }

        v43 = v37;
        if (v37)
        {
          v69 = v58;
          v68 = ", ";
          v38 = strlen(", ");
          v72 = v58;
          v71 = ", ";
          v70 = v38;
          if ((*(v58 + 10) & 2) != 0)
          {
            v73 = 0;
          }

          else
          {
            v74 = v72;
            if (v70 <= *(v74 + 12) - ((*(v74 + 22) ^ 1) & 1u) - *(v74 + 8))
            {
              v39 = *v72;
              v40 = *(v72 + 2);
              __memcpy_chk();
              v76 = v72;
              v75 = v70;
              *(v72 + 2) += v70;
              if ((*(v76 + 22) & 1) == 0)
              {
                *(*v76 + *(v76 + 8)) = 0;
              }

              v73 = v75;
            }

            else
            {
              v73 = os_trace_blob_add_slow(v72, v71, v70);
            }
          }

          os_trace_blob_add_hexdump(v58, v44, v43, v43 != __b[0]);
        }

        v60 = v58;
        __s = ">";
        result = strlen(">");
        v63 = v58;
        v62 = ">";
        v61 = result;
        if ((*(v58 + 10) & 2) != 0)
        {
          v64 = 0;
        }

        else
        {
          v65 = v63;
          if (v61 <= *(v65 + 12) - ((*(v65 + 22) ^ 1) & 1u) - *(v65 + 8))
          {
            v41 = *v63;
            v42 = *(v63 + 2);
            result = __memcpy_chk();
            v67 = v63;
            v66 = v61;
            *(v63 + 2) += v61;
            if ((*(v67 + 22) & 1) == 0)
            {
              *(*v67 + *(v67 + 8)) = 0;
            }
          }

          else
          {
            result = os_trace_blob_add_slow(v63, v62, v61);
            v64 = result;
          }
        }
      }
    }

    else
    {
      v132 = v58;
      v131 = "<…>";
      result = strlen("<…>");
      v135 = v58;
      v134 = "<…>";
      v133 = result;
      if ((*(v58 + 10) & 2) != 0)
      {
        v136 = 0;
      }

      else
      {
        v137 = v135;
        if (v133 <= *(v137 + 12) - ((*(v137 + 22) ^ 1) & 1u) - *(v137 + 8))
        {
          v8 = *v135;
          v9 = *(v135 + 2);
          result = __memcpy_chk();
          v139 = v135;
          v138 = v133;
          *(v135 + 2) += v133;
          if ((*(v139 + 22) & 1) == 0)
          {
            *(*v139 + *(v139 + 8)) = 0;
          }

          v136 = v138;
        }

        else
        {
          result = os_trace_blob_add_slow(v135, v134, v133);
          v136 = result;
        }
      }
    }
  }

  else
  {
    v141 = v58;
    v140 = "<(null)>";
    result = strlen("<(null)>");
    v144 = v58;
    v143 = "<(null)>";
    v142 = result;
    if ((*(v58 + 10) & 2) != 0)
    {
      v145 = 0;
    }

    else
    {
      v146 = v144;
      if (v142 <= *(v146 + 12) - ((*(v146 + 22) ^ 1) & 1u) - *(v146 + 8))
      {
        v6 = *v144;
        v7 = *(v144 + 2);
        result = __memcpy_chk();
        v148 = v144;
        v147 = v142;
        *(v144 + 2) += v142;
        if ((*(v148 + 22) & 1) == 0)
        {
          *(*v148 + *(v148 + 8)) = 0;
        }

        v145 = v147;
      }

      else
      {
        result = os_trace_blob_add_slow(v144, v143, v142);
        v145 = result;
      }
    }
  }

  return result;
}

void _os_log_fmt_decode_data_access_failure(uint64_t a1, uint64_t *a2, unsigned __int8 a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a3)
  {
    case 1u:
      v11 = strlen("<private>");
      if ((*(a1 + 20) & 2) == 0)
      {
        if (v11 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
        {
          v8 = *a1;
          v9 = *(a1 + 8);
          __memcpy_chk();
          *(a1 + 8) += v11;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + *(a1 + 8)) = 0;
          }
        }

        else
        {
          os_trace_blob_add_slow(a1, "<private>", v11);
        }
      }

      break;
    case 2u:
      _os_log_fmt_decode_error(a1);
      break;
    case 3u:
      _os_log_fmt_decode_cmd_mismatch(a1, a2, a4, a5, a5, a6, a7, a8);
      break;
    case 4u:
      _os_log_fmt_decode_bad_range(a1, a2, a4, a5, a5, a6, a7, a8);
      break;
    default:
      if (a3 - 8 < 3)
      {
        _os_log_fmt_decode_masked_unknown(a1, a2, a4, a3, a5, a6, a7, a8);
      }

      break;
  }
}

uint64_t _os_log_fmt_compose_annotated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, char a7)
{
  if ((*(a3 + 8) & 0x80) != 0)
  {
    v8 = _os_log_fmt_builtin_annotated(a1, a2, a3, a4, a5, a6, a7 & 1) & 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t _os_log_fmt_compose_scalar(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, __int16 a5)
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = a4;
  v34 = a5;
  memset(&__b, 0, sizeof(__b));
  __b = os_log_fmt_read_scalar(v37, v35, v34);
  v32 = 0;
  if ((*(v37 + 8) & 2) != 0)
  {
    v5 = *(v37 + 20);
    v6 = v32++;
    v48[v6] = v5;
  }

  if ((*(v37 + 8) & 4) != 0)
  {
    v7 = *(v37 + 24);
    v8 = v32++;
    v48[v8] = v7;
  }

  if (*(v37 + 12) + 2 <= 6)
  {
    v9 = 6;
  }

  else
  {
    v9 = *(v37 + 12) + 2;
  }

  v10 = (v9 + 1);
  v31 = v25;
  v11 = &v25[-((v10 + 15) & 0x1FFFFFFF0)];
  v30 = v10;
  result = _os_log_fmt_compose_format_copy(v11, v37);
  v29 = result;
  v19 = *(v37 + 10);
  if (!*(v37 + 10))
  {
    goto LABEL_70;
  }

  if ((v19 - 1) < 6 || v19 == 7)
  {
    goto LABEL_19;
  }

  if (v19 == 8)
  {
    v20 = v38;
    v21 = strerror(__b);
    v40 = v20;
    v39 = v21;
    v22 = v21;
    result = strlen(v21);
    v43 = v20;
    v42 = v22;
    v41 = result;
    if ((*(v20 + 20) & 2) != 0)
    {
      v44 = 0;
    }

    else
    {
      v45 = v43;
      if (v41 <= *(v45 + 12) - ((*(v45 + 22) ^ 1) & 1u) - *(v45 + 8))
      {
        v23 = *v43;
        v24 = *(v43 + 2);
        result = __memcpy_chk();
        v47 = v43;
        v46 = v41;
        *(v43 + 2) += v41;
        if ((*(v47 + 22) & 1) == 0)
        {
          *(*v47 + *(v47 + 8)) = 0;
        }

        v44 = v46;
      }

      else
      {
        result = os_trace_blob_add_slow(v43, v42, v41);
        v44 = result;
      }
    }

    return result;
  }

  if ((v19 - 9) < 2)
  {
    goto LABEL_26;
  }

  if ((v19 - 11) < 2)
  {
    goto LABEL_42;
  }

  switch(v19)
  {
    case 13:
LABEL_26:
      if (v36 == 8)
      {
        v27 = __b;
        if (!v32)
        {
          result = os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, v27);
        }

        if (v32 == 1)
        {
          result = os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, v48[0]);
        }

        if (v32 == 2)
        {
          return os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, v48[0]);
        }

        return result;
      }

      v26 = v11[v29 - 1];
      if (*(v37 + 10) != 13)
      {
        if (v36 == 4)
        {
          result = isupper(v26);
          if (result)
          {
            result = tolower(v26);
            v11[v29 - 1] = result;
          }

          else
          {
            v11[v29 - 2] = v26;
            v11[v29 - 1] = 0;
          }

LABEL_19:
          v28 = __b;
          if (!v32)
          {
            result = os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, v28);
          }

          if (v32 == 1)
          {
            result = os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, v48[0]);
          }

          if (v32 == 2)
          {
            return os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, v48[0]);
          }

          return result;
        }

        result = isupper(v26);
        if (result)
        {
          v11[v29 - 1] = 108;
          v11[v29] = 108;
          result = tolower(v26);
          v11[v29 + 1] = result;
          v11[v29 + 2] = 0;
        }

        else
        {
          v11[v29 - 2] = 108;
          v11[v29 - 1] = 108;
          v11[v29] = v26;
          v11[v29 + 1] = 0;
        }
      }

LABEL_42:
      if (!v32)
      {
        result = os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, __b);
      }

      if (v32 == 1)
      {
        result = os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, v48[0]);
      }

      if (v32 == 2)
      {
        return os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, v48[0]);
      }

      return result;
    case 14:
      if (!v32)
      {
        result = os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, __b);
      }

      if (v32 == 1)
      {
        result = os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, v48[0]);
      }

      if (v32 == 2)
      {
        return os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, v48[0]);
      }

      break;
    case 15:
      if (!v32)
      {
        result = os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, __b);
      }

      if (v32 == 1)
      {
        result = os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, v48[0]);
      }

      if (v32 == 2)
      {
        return os_trace_blob_addf(v38, v11, v13, v14, v15, v16, v17, v18, v48[0]);
      }

      break;
    default:
      if ((v19 - 16) >= 4)
      {
        return result;
      }

LABEL_70:
      result = _os_crash();
      __break(1u);
      return result;
  }

  return result;
}

uint64_t _os_log_fmt_compose_data(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, unsigned __int16 a5, char a6)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6 & 1;
  v29 = 0;
  v6 = *(a2 + 12);
  v28 = &v24;
  v7 = &v24 - ((v6 + 18) & 0x1FFF0);
  v27 = (v6 + 3);
  result = _os_log_fmt_compose_format_copy(v7, a2);
  v26 = result;
  if (*v33 >> 4 == 3)
  {
    result = os_trace_blob_add_hexdump(v35, v32, v31, v30 & 1);
    v25 = 1;
  }

  else
  {
    if (*(v34 + 10) == 18)
    {
      v7[v26 - 1] = 115;
    }

    if ((*(v34 + 8) & 2) != 0)
    {
      v15 = *(v34 + 20);
      v16 = v29++;
      *(&v39 + v16) = v15;
    }

    if (v31)
    {
      if ((*(v34 + 8) & 8) != 0)
      {
        if ((*(v34 + 8) & 4) != 0)
        {
          if ((*(v34 + 24) & 0x80000000) != 0 || *(v34 + 24) > v31)
          {
            v21 = v29++;
            *(&v39 + v21) = v31;
          }

          else
          {
            v22 = *(v34 + 24);
            v23 = v29++;
            *(&v39 + v23) = v22;
          }
        }

        else
        {
          v24 = strrchr(v7, 46);
          result = __memcpy_chk();
          v20 = v29++;
          *(&v39 + v20) = v31;
        }
      }

      else
      {
        result = __memcpy_chk();
        v19 = v29++;
        *(&v39 + v19) = v31;
      }
    }

    else
    {
      if (v30)
      {
        v17 = &unk_B3D6;
      }

      else
      {
        v17 = "(null)";
      }

      v32 = v17;
      if ((*(v34 + 8) & 4) != 0)
      {
        v18 = v29++;
        *(&v39 + v18) = 0x7FFFFFFF;
      }
    }

    if (!v29)
    {
      result = os_trace_blob_addf(v35, v7, v9, v10, v11, v12, v13, v14, v32);
    }

    if (v29 == 1)
    {
      result = os_trace_blob_addf(v35, v7, v9, v10, v11, v12, v13, v14, v39);
    }

    if (v29 == 2)
    {
      result = os_trace_blob_addf(v35, v7, v9, v10, v11, v12, v13, v14, v39);
    }

    if (v30)
    {
      v38 = v35;
      v37 = "<…>";
      v36 = 0;
      return os_trace_blob_addns(v35, "<…>", 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  return result;
}

uint64_t _os_log_fmt_compose_format_copy(_BYTE *a1, uint64_t a2)
{
  __n = *(a2 + 12);
  v4 = memchr(*a2, 125, __n);
  if (v4)
  {
    __n -= v4 - *a2;
    __memcpy_chk();
    *a1 = 37;
  }

  else
  {
    v2 = *a2;
    __memcpy_chk();
  }

  a1[__n] = 0;
  return __n;
}

uint64_t _os_log_fmt_builtin_annotated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, char a7)
{
  __s1 = *(a3 + 40);
  __n = *(a3 + 16);
  v11 = 0;
  v10 = 16;
  while (v11 < v10)
  {
    v9 = (v11 + v10) >> 1;
    v8 = strncmp(__s1, (&_os_log_fmt_builtin_annotated_functions)[2 * v9], __n);
    if (!v8)
    {
      v8 = -(&_os_log_fmt_builtin_annotated_functions)[2 * v9][__n];
    }

    if (!v8)
    {
      v21 = ((&_os_log_fmt_builtin_annotated_functions)[2 * v9 + 1])(a1, a2, a3, a4, a5, a6, a7 & 1) & 1;
      return v21 & 1;
    }

    if (v8 < 0)
    {
      v10 = (v11 + v10) >> 1;
    }

    else
    {
      v11 = v9 + 1;
    }
  }

  v21 = 0;
  return v21 & 1;
}

uint64_t _os_log_fmt_builtin_uuid_t(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, const unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 10) != 19)
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, a5, a6, a7, a8);
    return 1;
  }

  if (a6 > 0x10uLL || a6 < 0x10uLL && (a7 & 1) == 0)
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, a5, a6, a7, a8);
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  if (a6 < 0x10uLL && (a7 & 1) != 0)
  {
    _os_log_fmt_decode_error(a1);
    goto LABEL_11;
  }

  v14 = 1;
LABEL_12:
  if (v14)
  {
    memset(__b, 0, sizeof(__b));
    uuid_unparse_upper(a5, __b);
    v13 = strlen(__b);
    if ((*(a1 + 20) & 2) == 0)
    {
      if (v13 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
      {
        v8 = *a1;
        v9 = *(a1 + 8);
        __memcpy_chk();
        *(a1 + 8) += v13;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + *(a1 + 8)) = 0;
        }
      }

      else
      {
        os_trace_blob_add_slow(a1, __b, v13);
      }
    }
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_timeval(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, void *a5, unsigned __int16 a6, char a7)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  __src = a5;
  v14 = a6;
  v13 = a7;
  memset(__b, 0, sizeof(__b));
  if (*(v17 + 10) != 19)
  {
    _os_log_fmt_decode_cmd_mismatch(v19, v17, v16, v14, v7, v8, v9, v10);
    v20 = 1;
    return v20 & 1;
  }

  v26 = v19;
  v25 = v17;
  v24 = v16;
  v23 = v14;
  v22 = 16;
  v21 = v13 & 1;
  if (v14 > 0x10uLL || v23 < v22 && (v21 & 1) == 0)
  {
    _os_log_fmt_decode_cmd_mismatch(v26, v25, v24, v23, v7, v8, v9, v10);
LABEL_11:
    v27 = 0;
    goto LABEL_12;
  }

  if (v23 < v22 && (v21 & 1) != 0)
  {
    _os_log_fmt_decode_error(v26);
    goto LABEL_11;
  }

  v27 = 1;
LABEL_12:
  if (v27)
  {
    memcpy(__b, __src, sizeof(__b));
    os_trace_blob_add_localtime(v19, __b[0], SLODWORD(__b[1]), 1);
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t _os_log_fmt_builtin_timespec(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, void *a5, unsigned __int16 a6, char a7)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  __src = a5;
  v14 = a6;
  v13 = a7;
  memset(__b, 0, sizeof(__b));
  if (*(v17 + 10) != 19)
  {
    _os_log_fmt_decode_cmd_mismatch(v19, v17, v16, v14, v7, v8, v9, v10);
    v20 = 1;
    return v20 & 1;
  }

  v26 = v19;
  v25 = v17;
  v24 = v16;
  v23 = v14;
  v22 = 16;
  v21 = v13 & 1;
  if (v14 > 0x10uLL || v23 < v22 && (v21 & 1) == 0)
  {
    _os_log_fmt_decode_cmd_mismatch(v26, v25, v24, v23, v7, v8, v9, v10);
LABEL_11:
    v27 = 0;
    goto LABEL_12;
  }

  if (v23 < v22 && (v21 & 1) != 0)
  {
    _os_log_fmt_decode_error(v26);
    goto LABEL_11;
  }

  v27 = 1;
LABEL_12:
  if (v27)
  {
    memcpy(__b, __src, sizeof(__b));
    os_trace_blob_add_localtime(v19, __b[0], __b[1], 0);
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t _os_log_fmt_builtin_time(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5, unsigned __int16 a6)
{
  if ((_os_log_fmt_spec_is_integer(a3, 0) & 1) != 0 && (a6 == 4 || a6 == 8))
  {
    __memcpy_chk();
    os_trace_blob_add_localtime(a1, 0, 0, 3);
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, v6, v7, v8, v9);
  }

  return 1;
}

uint64_t _os_log_fmt_spec_is_integer(uint64_t a1, char a2)
{
  if (*(a1 + 10) && *(a1 + 10) <= 0xCu)
  {
    v4 = 1;
  }

  else
  {
    v2 = 0;
    if (a2)
    {
      v2 = *(a1 + 10) == 13;
    }

    v4 = v2;
  }

  return v4 & 1;
}

uint64_t _os_log_fmt_builtin_mach_errno(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, int *a5, unsigned __int16 a6)
{
  if ((_os_log_fmt_spec_is_integer(a3, 0) & 1) != 0 && a6 == 4)
  {
    v17 = *a5;
    mach_error_string(*a5 & 0xFFFFC1FF);
    os_trace_blob_addf(a1, "[%#x: %s]", v10, v11, v12, v13, v14, v15, v17);
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, v6, v7, v8, v9);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_scaled(uint64_t a1, unsigned int a2, uint64_t *a3, _BYTE *a4, unsigned __int8 *a5, unsigned __int16 a6, uint64_t *a7)
{
  if (_os_log_fmt_spec_is_integer(a3, 0))
  {
    scalar = os_log_fmt_read_scalar(a3, a5, a6);
    v24 = 0;
    for (i = 0; ; ++i)
    {
      v17 = 0;
      if (a7[i])
      {
        v17 = 0;
        if (a7[i + 1])
        {
          v17 = scalar >= 0x3E8;
        }
      }

      if (!v17)
      {
        break;
      }

      v24 = scalar % a2;
      scalar /= a2;
    }

    v25 = round(v24 * 100.0 / a2);
    if (v25 == 100)
    {
      ++scalar;
      v25 = 0;
    }

    if (i)
    {
      if (scalar < 0xA && v25 % 0xA)
      {
        v21 = a7[i];
        os_trace_blob_addf(a1, "%llu.%02u %s", v11, v12, v13, v14, v15, v16, scalar);
      }

      else if (scalar < 0x64 && v25)
      {
        v22 = a7[i];
        os_trace_blob_addf(a1, "%llu.%01u %s", v11, v12, v13, v14, v15, v16, scalar);
      }

      else
      {
        v20 = a7[i];
        os_trace_blob_addf(a1, "%llu %s", v11, v12, v13, v14, v15, v16, scalar);
      }
    }

    else
    {
      v19 = *a7;
      os_trace_blob_addf(a1, "%llu %s", v11, v12, v13, v14, v15, v16, scalar);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, v7, v8, v9, v10);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_darwin_signal(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, int *a5, unsigned __int16 a6)
{
  if ((_os_log_fmt_spec_is_integer(a3, 0) & 1) != 0 && a6 == 4)
  {
    v14 = *a5;
    if (*a5 < 0 || v14 >= 32)
    {
      os_trace_blob_addf(a1, "[%d: Unknown signal]", v6, v7, v8, v9, v10, v11, v14);
    }

    else
    {
      v13 = sys_siglist[v14];
      os_trace_blob_addf(a1, "[sig%s: %s]", v6, v7, v8, v9, v10, v11, sys_signame[v14]);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, v8, v9, v10, v11);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_darwin_mode(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, int *a5, unsigned __int16 a6)
{
  if ((_os_log_fmt_spec_is_integer(a3, 0) & 1) != 0 && a6 == 4)
  {
    v25 = *a5;
    v31[0] = aPcDBLSW[(*a5 & 0xF000u) >> 12];
    if ((v25 & 0x100) != 0)
    {
      v10 = 114;
    }

    else
    {
      v10 = 45;
    }

    v31[1] = v10;
    if ((v25 & 0x80u) == 0)
    {
      v11 = 45;
    }

    else
    {
      v11 = 119;
    }

    v31[2] = v11;
    if ((v25 & 0x40) != 0)
    {
      v12 = 120;
    }

    else
    {
      v12 = 45;
    }

    v32 = v12;
    if ((v25 & 0x800) != 0)
    {
      if ((v25 & 0x40) != 0)
      {
        v13 = 115;
      }

      else
      {
        v13 = 83;
      }

      v32 = v13;
    }

    if ((v25 & 0x20) != 0)
    {
      v14 = 114;
    }

    else
    {
      v14 = 45;
    }

    v33 = v14;
    if ((v25 & 0x10) != 0)
    {
      v15 = 119;
    }

    else
    {
      v15 = 45;
    }

    v34 = v15;
    if ((v25 & 8) != 0)
    {
      v16 = 120;
    }

    else
    {
      v16 = 45;
    }

    v35 = v16;
    if ((v25 & 0x400) != 0)
    {
      if ((v25 & 8) != 0)
      {
        v17 = 115;
      }

      else
      {
        v17 = 83;
      }

      v35 = v17;
    }

    if ((v25 & 4) != 0)
    {
      v18 = 114;
    }

    else
    {
      v18 = 45;
    }

    v36 = v18;
    if ((v25 & 2) != 0)
    {
      v19 = 119;
    }

    else
    {
      v19 = 45;
    }

    v37 = v19;
    if (v25)
    {
      v20 = 120;
    }

    else
    {
      v20 = 45;
    }

    v38 = v20;
    if ((v25 & 0x200) != 0)
    {
      if (v25)
      {
        v21 = 116;
      }

      else
      {
        v21 = 84;
      }

      v38 = v21;
    }

    if ((*(a1 + 20) & 2) == 0)
    {
      if (*(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8) >= 0xAuLL)
      {
        v22 = *a1;
        v23 = *(a1 + 8);
        __memcpy_chk();
        *(a1 + 8) += 10;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + *(a1 + 8)) = 0;
        }
      }

      else
      {
        os_trace_blob_add_slow(a1, v31, 0xAuLL);
      }
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, v6, v7, v8, v9);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_darwin_errno(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, int *a5, unsigned __int16 a6)
{
  if ((_os_log_fmt_spec_is_integer(a3, 0) & 1) != 0 && a6 == 4)
  {
    __errnum = *a5;
    if (*a5)
    {
      strerror(__errnum);
    }

    os_trace_blob_addf(a1, "[%d: %s]", v6, v7, v8, v9, v10, v11, __errnum);
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, a3, a4, a6, v8, v9, v10, v11);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_BOOL(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, unsigned __int8 *a5, unsigned __int16 a6, char a7)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  if (_os_log_fmt_spec_is_integer(a3, 1))
  {
    memset(&scalar, 0, sizeof(scalar));
    scalar = os_log_fmt_read_scalar(v27, v25, v24);
    if (*v27[5] == 66)
    {
      if (scalar)
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      v41 = v29;
      v40 = v11;
      v12 = v11;
      v13 = strlen(v11);
      v44 = v29;
      v43 = v12;
      v42 = v13;
      if ((*(v29 + 10) & 2) != 0)
      {
        v45 = 0;
      }

      else
      {
        v46 = v44;
        if (v42 <= *(v46 + 12) - ((*(v46 + 22) ^ 1) & 1u) - *(v46 + 8))
        {
          v14 = *v44;
          v15 = *(v44 + 2);
          __memcpy_chk();
          v48 = v44;
          v47 = v42;
          *(v44 + 2) += v42;
          if ((*(v48 + 22) & 1) == 0)
          {
            *(*v48 + *(v48 + 8)) = 0;
          }

          v45 = v47;
        }

        else
        {
          v45 = os_trace_blob_add_slow(v44, v43, v42);
        }
      }
    }

    else
    {
      if (scalar)
      {
        v16 = "true";
      }

      else
      {
        v16 = "false";
      }

      v32 = v29;
      __s = v16;
      v17 = v16;
      v18 = strlen(v16);
      v35 = v29;
      v34 = v17;
      v33 = v18;
      if ((*(v29 + 10) & 2) != 0)
      {
        v36 = 0;
      }

      else
      {
        v37 = v35;
        if (v33 <= *(v35 + 3) - ((*(v35 + 22) ^ 1) & 1u) - *(v35 + 2))
        {
          v19 = *v35;
          v20 = *(v35 + 2);
          __memcpy_chk();
          v39 = v35;
          v38 = v33;
          *(v35 + 2) += v33;
          if ((*(v39 + 22) & 1) == 0)
          {
            *(*v39 + *(v39 + 8)) = 0;
          }

          v36 = v38;
        }

        else
        {
          v36 = os_trace_blob_add_slow(v35, v34, v33);
        }
      }
    }

    v30 = 1;
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(v29, v27, v26, v24, v7, v8, v9, v10);
    v30 = 1;
  }

  return v30 & 1;
}

uint64_t _os_log_to_kernel(char *a1, _BYTE *a2)
{
  v13 = a1;
  v12 = a2;
  v11 = *__error();
  v10 = 0;
  if ((MEMORY[0xFFFFFC104] & 0x2000000) != 0)
  {
    v10 = 3;
  }

  else if ((MEMORY[0xFFFFFC104] & 0x1000000) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  memset(__b, 0, sizeof(__b));
  __b[0] = &v17;
  __b[1] = 0x40000000000;
  v7[3] = (&stru_3C8 + 56);
  v8 = 1024;
  LODWORD(__b[2]) = 0;
  WORD2(__b[2]) = 0;
  BYTE6(__b[2]) = 1;
  memset(v7, 0, 0x18uLL);
  v7[0] = &v16;
  v7[1] = 0x40000000000;
  v5[3] = (&stru_3C8 + 56);
  v6 = 1024;
  LODWORD(v7[2]) = 0;
  WORD2(v7[2]) = 0;
  BYTE6(v7[2]) = 1;
  memset(v5, 0, 0x18uLL);
  v5[0] = &v15;
  v5[1] = 0x40000000000;
  v3[3] = 1024;
  v4 = 1024;
  LODWORD(v5[2]) = 0;
  WORD2(v5[2]) = 0;
  BYTE6(v5[2]) = 1;
  os_log_fmt_flatten(v12, v10, __b, v7, v5, v11);
  memset(v3, 0, 0x18uLL);
  v3[0] = &v14;
  v3[1] = 0x40000000000;
  LODWORD(v3[2]) = 0;
  WORD2(v3[2]) = 0;
  BYTE6(v3[2]) = 0;
  os_log_fmt_compose(v3, v13, 2, v10, 8, __b[0], v7[0], v7[1], v5[0], v5[1]);
  return log_data_as_kernel();
}

uint64_t _os_trace_realloc_typed()
{
  v1 = malloc_type_realloc();
  if (!v1)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  return v1;
}

uint64_t _os_trace_malloc_typed()
{
  v1 = malloc_type_malloc();
  if (!v1)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  return v1;
}

void _os_log_fmt_decode_give_up(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  os_trace_blob_addf(a1, "<decode: can't compose [%.*s]>", a3, a4, a5, a6, a7, a8, *(a2 + 6));
  v8 = *a1;
  _os_log_fmt_decode_failure();
}

void _os_log_fmt_decode_cmd_mismatch(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a4;
  v27 = *a2;
  os_trace_blob_addf(a1, "<decode: mismatch for [%.*s] got [", a3, a4, a5, a6, a7, a8, *(a2 + 6));
  if ((*a3 >> 4) >= 5uLL)
  {
    os_trace_blob_addf(a1, "%d", v8, v9, v10, v11, v12, v13, *a3 >> 4);
  }

  else
  {
    v33 = strlen(_cmd_type2str[*a3 >> 4]);
    if ((*(a1 + 20) & 2) == 0)
    {
      if (v33 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
      {
        v20 = *a1;
        v21 = *(a1 + 8);
        __memcpy_chk();
        *(a1 + 8) += v33;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + *(a1 + 8)) = 0;
        }
      }

      else
      {
        os_trace_blob_add_slow(a1, _cmd_type2str[*a3 >> 4], v33);
      }
    }
  }

  if ((*a3 & 2) != 0)
  {
    v32 = strlen(" public");
    if ((*(a1 + 20) & 2) == 0)
    {
      if (v32 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
      {
        v22 = *a1;
        v23 = *(a1 + 8);
        __memcpy_chk();
        *(a1 + 8) += v32;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + *(a1 + 8)) = 0;
        }
      }

      else
      {
        os_trace_blob_add_slow(a1, " public", v32);
      }
    }
  }

  if (*a3)
  {
    v31 = strlen(" private");
    if ((*(a1 + 20) & 2) == 0)
    {
      if (v31 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
      {
        v24 = *a1;
        v25 = *(a1 + 8);
        __memcpy_chk();
        *(a1 + 8) += v31;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + *(a1 + 8)) = 0;
        }
      }

      else
      {
        os_trace_blob_add_slow(a1, " private", v31);
      }
    }
  }

  os_trace_blob_addf(a1, " sz:%d]>", v14, v15, v16, v17, v18, v19, v28);
  v26 = *a1;
  _os_log_fmt_decode_failure();
}

void _os_log_fmt_decode_error(uint64_t a1)
{
  v5 = strlen("<decode: missing data>");
  if ((*(a1 + 20) & 2) == 0)
  {
    if (v5 <= *(a1 + 12) - ((*(a1 + 22) ^ 1) & 1u) - *(a1 + 8))
    {
      v1 = *a1;
      v2 = *(a1 + 8);
      __memcpy_chk();
      *(a1 + 8) += v5;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + *(a1 + 8)) = 0;
      }
    }

    else
    {
      os_trace_blob_add_slow(a1, "<decode: missing data>", v5);
    }
  }

  v3 = *a1;
  _os_log_fmt_decode_failure();
}

void _os_log_fmt_decode_bad_range(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a3 + 4) & 0x7FFF;
  v10 = *(a3 + 2);
  v9 = *a2;
  os_trace_blob_addf(a1, "<decode: bad range for [%.*s] got [offs:%d len:%d within:%d]>", a3, a4, a5, a6, a7, a8, *(a2 + 6));
  v8 = *a1;
  _os_log_fmt_decode_failure();
}

void _os_log_fmt_decode_masked_unknown(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 != 8 && a4 != 9 && a4 != 10)
  {
    _os_crash();
    __break(1u);
  }

  v9 = *(a2 + 48);
  os_trace_blob_addf(a1, "<decode: mask %.*s is %s>", a3, a4, a5, a6, a7, a8, *(a2 + 18));
  v8 = *a1;
  _os_log_fmt_decode_failure();
}