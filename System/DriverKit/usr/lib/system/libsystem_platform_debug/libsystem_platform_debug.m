uint64_t __libplatform_init(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __os_security_config_init(a3);
  __pfz_setup(a3);
  return __libkernel_platform_init();
}

uint64_t _simple_getenv(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = _platform_strlen(a2);
  for (i = a1; ; ++i)
  {
    v3 = 0;
    if (i)
    {
      v3 = *i != 0;
    }

    if (!v3)
    {
      break;
    }

    if (_platform_strlen(*i) >= v4 && !_simple_memcmp(*i, a2, v4) && *(*i + v4) == 61)
    {
      return *i + v4 + 1;
    }
  }

  return 0;
}

uint64_t _simple_memcmp(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v8 = a3;
  if (a3)
  {
    while (1)
    {
      v3 = a1++;
      v4 = a2++;
      if (*v3 != *v4)
      {
        break;
      }

      if (!--v8)
      {
        return 0;
      }
    }

    return (*(a1 - 1) - *(a2 - 1));
  }

  else
  {
    return 0;
  }
}

vm_address_t *_simple_asl_msg_new()
{
  v7 = _simple_salloc();
  if (!v7)
  {
    return 0;
  }

  if (!_simple_sprintf(v7, "         0", v0, v1, v2, v3, v4, v5, v7))
  {
    return v8;
  }

  _simple_sfree(v8);
  return 0;
}

uint64_t _simple_asl_msg_set(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = result;
  if (result)
  {
    if (a2)
    {
      result = _simple_sprintf(result, " [", a3, a4, a5, a6, a7, a8, v30);
      if (!result)
      {
        result = _simple_esprintf(v35, _simple_asl_escape_key, "%s", v8, v9, v10, v11, v12, a2);
        if (!result)
        {
          if (a3)
          {
            result = _simple_esprintf(v35, _simple_asl_escape_val, " %s", v13, v14, v15, v16, v17, a3);
            if (result)
            {
              return result;
            }

            if (!_platform_strcmp_0(a2, "Message", v18, v19, v20, v21, v22, v23))
            {
              v31 = _simple_string(v35);
              for (i = (v31 + _platform_strlen(v31)); ; *i = 0)
              {
                i -= 2;
                if (_platform_strcmp_0(i, "\\n", v24, v25, v26, v27, v28, v29))
                {
                  break;
                }
              }

              _simple_sresize(v35);
            }
          }

          return _simple_sappend(v35, "]");
        }
      }
    }
  }

  return result;
}

const char *_simple_asl_escape_key(char a1)
{
  switch(a1)
  {
    case 10:
      return "\\n";
    case 32:
      return "\\s";
    case 91:
      return "\\[";
    case 92:
      return "\\\";
    case 93:
      return "\\]";
  }

  return 0;
}

const char *_simple_asl_escape_val(char a1)
{
  switch(a1)
  {
    case 10:
      return "\\n";
    case 91:
      return "\\[";
    case 92:
      return "\\\";
    case 93:
      return "\\]";
  }

  return 0;
}

uint64_t _simple_asl_send(_BYTE **a1)
{
  v2 = _simple_string(a1);
  _platform_strlen(v2);
  return log_data_as_kernel();
}

vm_address_t *_simple_asl_log_prog(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  result = _simple_asl_msg_new();
  v16 = result;
  if (result)
  {
    if (a4)
    {
      _simple_asl_msg_set(result, "Sender", a4, v5, v6, v7, v8, v9);
    }

    _simple_asl_msg_set(v16, "Facility", a2, v5, v6, v7, v8, v9);
    _simple_asl_msg_set(v16, "Message", a3, v10, v11, v12, v13, v14);
    v15 = _simple_string(v16);
    _platform_strlen(v15);
    log_data_as_kernel();
    return _simple_sfree(v16);
  }

  return result;
}

uint64_t _simple_vdprintf(int a1, unsigned __int8 *a2, unint64_t *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  memset(__b, 0, sizeof(__b));
  __b[0] = v4;
  LODWORD(__b[3]) = v8;
  __b[1] = v4;
  __b[2] = __b;
  __b[4] = _flush_reset;
  __simple_bprintf(__b, 0, v7, v6);
  return _flush(__b);
}

uint64_t _flush_reset(uint64_t a1)
{
  _flush(a1);
  *(a1 + 8) = *a1;
  return 1;
}

uint64_t __simple_bprintf(uint64_t result, uint64_t (*a2)(void), unsigned __int8 *a3, unint64_t *a4)
{
  v46 = result;
  while (*a3)
  {
    v32 = _platform_strchr(a3, 0x25u);
    if (!v32)
    {
      return put_s(v46, a2, a3);
    }

    put_n(v46, a2, a3, v32 - a3);
    v44 = v32 + 1;
    if (v32[1] == 37)
    {
      result = put_c(v46, a2, 0x25u);
      a3 = v32 + 2;
    }

    else
    {
      v34 = 0;
      v38 = 0;
      v41 = 0;
      while (2)
      {
        result = _platform_strncmp_0(v44, ".*s", 3, v4, v5, v6, v7, v8);
        if (result)
        {
          switch(*v44)
          {
            case '0':
              ++v38;
              ++v44;
              goto LABEL_15;
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
              while (1)
              {
LABEL_15:
                v31 = 0;
                if (*v44 >= 48)
                {
                  v31 = *v44 <= 57;
                }

                if (!v31)
                {
                  break;
                }

                v12 = v44++;
                v34 = 10 * v34 + *v12 - 48;
              }

              continue;
            case 'X':
            case 'x':
              if (v41)
              {
                v27 = *a4++;
                result = hex(v46, a2, v27, v34, v38, *v44 == 88, 0);
              }

              else
              {
                v26 = *a4++;
                result = hex(v46, a2, v26, v34, v38, *v44 == 88, 0);
              }

              goto LABEL_55;
            case 'c':
              if (v38)
              {
                v13 = 48;
              }

              else
              {
                v13 = 32;
              }

              v39 = v13;
              v36 = v34 - 1;
              while (1)
              {
                v14 = v36--;
                if (v14 <= 0)
                {
                  break;
                }

                put_c(v46, a2, v39);
              }

              v15 = *a4++;
              result = put_c(v46, a2, v15);
              goto LABEL_55;
            case 'd':
            case 'i':
              if (v41)
              {
                v17 = *a4++;
                result = dec(v46, a2, v17, v34, v38);
              }

              else
              {
                v16 = *a4++;
                result = dec(v46, a2, v16, v34, v38);
              }

              goto LABEL_55;
            case 'l':
              ++v41;
              ++v44;
              continue;
            case 'o':
              if (v41)
              {
                v19 = *a4++;
                result = oct(v46, a2, v19, v34, v38);
              }

              else
              {
                v18 = *a4++;
                result = oct(v46, a2, v18, v34, v38);
              }

              goto LABEL_55;
            case 'p':
              v20 = *a4++;
              result = hex(v46, a2, v20, v34, v38, 0, 1);
              goto LABEL_55;
            case 's':
              v21 = *a4++;
              if (v21)
              {
                v30 = v21;
              }

              else
              {
                v30 = "(null)";
              }

              v37 = v34 - _platform_strlen(v30);
              if (v38)
              {
                v22 = 48;
              }

              else
              {
                v22 = 32;
              }

              for (i = v22; ; put_c(v46, a2, i))
              {
                v23 = v37--;
                if (v23 <= 0)
                {
                  break;
                }
              }

              result = put_s(v46, a2, v30);
              goto LABEL_55;
            case 'u':
              if (v41)
              {
                v25 = *a4++;
                result = udec(v46, a2, v25, v34, v38);
              }

              else
              {
                v24 = *a4++;
                result = udec(v46, a2, v24, v34, v38);
              }

              goto LABEL_55;
            case 'y':
              if (v41)
              {
                v29 = *a4++;
                result = ydec(v46, a2, v29, v34, v38);
              }

              else
              {
                v28 = *a4++;
                result = ydec(v46, a2, v28, v34, v38);
              }

              goto LABEL_55;
            default:
              result = put_c(v46, a2, *v44);
              goto LABEL_55;
          }
        }

        break;
      }

      v35 = *a4;
      v9 = a4[1];
      a4 += 2;
      for (j = v9; ; ++j)
      {
        v10 = v35--;
        if (v10 <= 0)
        {
          break;
        }

        v11 = j;
        result = put_c(v46, a2, *v11);
      }

      v44 += 2;
LABEL_55:
      a3 = v44 + 1;
    }
  }

  return result;
}

uint64_t _flush(char **a1)
{
  __buf = *a1;
  __nbyte = a1[1] - *a1;
  while (__nbyte > 0)
  {
    v2 = write(*(a1 + 6), __buf, __nbyte);
    if (v2 < 0)
    {
      if (*__error() != 4 && *__error() != 35)
      {
        return 1;
      }
    }

    else
    {
      __nbyte -= v2;
      __buf += __nbyte;
    }
  }

  return 1;
}

vm_address_t _simple_salloc()
{
  address = 0;
  if (vm_allocate(mach_task_self_, &address, vm_page_size, 1))
  {
    return 0;
  }

  v0 = address + 40;
  *address = address + 40;
  *(address + 8) = v0;
  *(address + 16) = address + vm_page_size - 1;
  *(address + 32) = _enlarge;
  return address;
}

uint64_t _enlarge(uint64_t a1)
{
  v7 = a1;
  address = 0;
  address = *(a1 + 16) + 1;
  if (vm_allocate(mach_task_self_, &address, vm_page_size, 0))
  {
    v5 = *(v7 + 16) - *v7 + 1;
    size = (v5 + vm_page_size) & -vm_page_size;
    v2 = vm_allocate(mach_task_self_, &address, size, 1);
    if (v2)
    {
      qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Failed to allocate memory for buffer";
      qword_14038 = v2;
      __break(0xB001u);
    }

    v3 = address - *v7;
    _platform_memmove(address, *v7, v5);
    if ((*v7 & (vm_page_size - 1)) != 0)
    {
      v5 &= -vm_page_size;
      *v7 = (*v7 + vm_page_size) & -vm_page_size;
      *(v7 + 16) = address + size - 1;
    }

    else
    {
      *(v7 + 16) += v3 + vm_page_size;
    }

    if (v5)
    {
      vm_deallocate(mach_task_self_, *v7, v5);
    }

    *v7 = address;
    *(v7 + 8) += v3;
    return 1;
  }

  else
  {
    *(v7 + 16) += vm_page_size;
    return 1;
  }
}

unint64_t _simple_sresize(uint64_t *a1)
{
  v2 = *a1;
  result = _platform_strlen(*a1);
  a1[1] = v2 + result;
  return result;
}

uint64_t put_s(uint64_t result, uint64_t (*a2)(void), unsigned __int8 *a3)
{
  v6 = result;
  while (*a3)
  {
    v3 = a3++;
    result = put_c(v6, a2, *v3);
  }

  return result;
}

uint64_t _simple_putline(uint64_t a1, int a2)
{
  *(a1 + 24) = a2;
  v2 = *(a1 + 8);
  *(a1 + 8) = v2 + 1;
  *v2 = 10;
  result = _flush(a1);
  --*(a1 + 8);
  return result;
}

vm_address_t *_simple_sfree(vm_address_t *result)
{
  address = result;
  if (result)
  {
    if ((*result & (vm_page_size - 1)) != 0)
    {
      return vm_deallocate(mach_task_self_, result, result[2] - result + 1);
    }

    else
    {
      vm_deallocate(mach_task_self_, *result, result[2] - *result + 1);
      return vm_deallocate(mach_task_self_, address, vm_page_size);
    }
  }

  return result;
}

uint64_t _simple_vsnprintf(unint64_t a1, unint64_t a2, unsigned __int8 *a3, unint64_t *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  if (a2 && v11 < 0x7FFFFFFF)
  {
    v7 = 0u;
    v5 = v12;
    v6 = v12;
    *&v7 = v12 + v11 - 1;
    DWORD2(v7) = 0;
    v8 = _snprintf_out_of_space;
    __simple_bprintf(&v5, 0, v10, v9);
    if (v6 < v12 || &v6[-v12] >= v11)
    {
      qword_14008 = "BUG IN LIBPLATFORM: Overflow in _simple_snprintf";
      qword_14038 = &v6[-v12];
      __break(0xB001u);
    }

    *v6 = 0;
    if (&v6[SDWORD2(v7) - v5] >> 31)
    {
      return 0x7FFFFFFF;
    }

    else
    {
      return (v6 - v5 + DWORD2(v7));
    }
  }

  else
  {
    return -1;
  }
}

uint64_t _snprintf_out_of_space(uint64_t a1)
{
  if (*(a1 + 24) != 0x7FFFFFFF)
  {
    ++*(a1 + 24);
  }

  return 0;
}

uint64_t put_n(uint64_t result, uint64_t (*a2)(void), unsigned __int8 *a3, uint64_t a4)
{
  for (i = result; ; result = put_c(i, a2, *v5))
  {
    v4 = a4--;
    if (v4 <= 0)
    {
      break;
    }

    v5 = a3++;
  }

  return result;
}

uint64_t put_c(uint64_t result, uint64_t (*a2)(void), unsigned __int8 a3)
{
  v5 = result;
  if (a2)
  {
    result = a2(a3);
    if (result)
    {
      return put_s(v5, 0, result);
    }
  }

  if (*(v5 + 8) < *(v5 + 16) || (result = (*(v5 + 32))(v5), result))
  {
    v3 = *(v5 + 8);
    *(v5 + 8) = v3 + 1;
    *v3 = a3;
  }

  return result;
}

uint64_t dec(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4, int a5)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  i = a5;
  v13 = &i;
  v12 = 0;
  v11 = 0;
  v10 = a3;
  v9 = 0;
  if (a3 < 0)
  {
    ++v11;
    --v15;
    v10 = -v10;
  }

  *--v13 = 0;
  if (v10)
  {
    while (v10)
    {
      v10 = udiv10(v10, &v9);
      *--v13 = v9 + 48;
    }
  }

  else
  {
    *--v13 = 48;
  }

  if (v11 && i)
  {
    put_c(v18, v17, 0x2Du);
    v11 = 0;
  }

  v8 = v15;
  v12 = v8 - _platform_strlen(v13);
  if (i)
  {
    v5 = 48;
  }

  else
  {
    v5 = 32;
  }

  for (i = v5; ; put_c(v18, v17, i))
  {
    v6 = v12--;
    if (v6 <= 0)
    {
      break;
    }
  }

  if (v11)
  {
    put_c(v18, v17, 0x2Du);
  }

  return put_s(v18, v17, v13);
}

uint64_t oct(uint64_t a1, uint64_t (*a2)(void), unint64_t a3, int a4, int a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  i = a5;
  v10 = &v12;
  v12 = 0;
  if (a3)
  {
    while (v15)
    {
      *--v10 = v15 % 8 + 48;
      v15 /= 8uLL;
    }
  }

  else
  {
    v10 = &v11;
    v11 = 48;
  }

  v8 = v14;
  v9 = v8 - _platform_strlen(v10);
  if (i)
  {
    v5 = 48;
  }

  else
  {
    v5 = 32;
  }

  for (i = v5; ; put_c(v17, v16, i))
  {
    v6 = v9--;
    if (v6 <= 0)
    {
      break;
    }
  }

  return put_s(v17, v16, v10);
}

uint64_t hex(uint64_t a1, uint64_t (*a2)(void), unint64_t a3, int a4, int a5, int a6, int a7)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  i = a5;
  v16 = a6;
  v15 = a7;
  v7 = "0123456789ABCDEF";
  if (!a6)
  {
    v7 = "0123456789abcdef";
  }

  v12 = &v14;
  v14 = 0;
  if (v19)
  {
    while (v19)
    {
      *--v12 = v7[v19 & 0xF];
      v19 >>= 4;
    }
  }

  else
  {
    v12 = &v13;
    v13 = 48;
  }

  if (v15)
  {
    v18 -= 2;
    if (i)
    {
      put_s(v21, v20, "0x");
      v15 = 0;
    }
  }

  v8 = _platform_strlen(v12);
  v18 -= v8;
  if (i)
  {
    v9 = 48;
  }

  else
  {
    v9 = 32;
  }

  for (i = v9; ; put_c(v21, v20, i))
  {
    v10 = v18--;
    if (v10 <= 0)
    {
      break;
    }
  }

  if (v15)
  {
    put_s(v21, v20, "0x");
  }

  return put_s(v21, v20, v12);
}

uint64_t udec(uint64_t a1, uint64_t (*a2)(void), unint64_t a3, int a4, int a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  i = a5;
  v10 = 0;
  v11 = &v12;
  v12 = 0;
  if (a3)
  {
    while (v15)
    {
      v15 = udiv10(v15, &v10);
      *--v11 = v10 + 48;
    }
  }

  else
  {
    *--v11 = 48;
  }

  v8 = v14;
  v9 = v8 - _platform_strlen(v11);
  if (i)
  {
    v5 = 48;
  }

  else
  {
    v5 = 32;
  }

  for (i = v5; ; put_c(v17, v16, i))
  {
    v6 = v9--;
    if (v6 <= 0)
    {
      break;
    }
  }

  return put_s(v17, v16, v11);
}

uint64_t ydec(uint64_t a1, uint64_t (*a2)(void), unint64_t a3, int a4, int a5)
{
  if (a3 < 0xA00000)
  {
    if (a3 < 0x2800)
    {
      udec(a1, a2, a3, a4, a5);
      return put_s(a1, a2, "b");
    }

    else
    {
      udec(a1, a2, (a3 + 512) >> 10, a4, a5);
      return put_s(a1, a2, "KB");
    }
  }

  else
  {
    udec(a1, a2, (a3 + 0x80000) >> 20, a4, a5);
    return put_s(a1, a2, "MB");
  }
}

_BYTE *__pfz_setup(uint64_t *a1)
{
  result = _simple_getenv(a1, "pfz");
  if (result)
  {
    if (*result == 48 && result[1] == 120)
    {
      v2 = result[2];
      if (v2)
      {
        v3 = 0;
        v4 = result + 3;
        while (1)
        {
          v5 = v2 - 48;
          if ((v2 - 48) >= 0xAu)
          {
            if ((v2 - 97) > 5u && (v2 - 65) > 5u)
            {
              break;
            }

            v5 = (v2 + 9) & 0x1F;
          }

          v3 = 16 * v3 + v5;
          v6 = *v4++;
          v2 = v6;
          if (!v6)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v3 = 0;
LABEL_13:
    v7 = (result - 4);
    v8 = _platform_strlen(result);
    result = _platform_bzero(v7, v8 + 4, v9);
    if (v3)
    {
      commpage_pfz_base = v3;
    }
  }

  return result;
}

void OSAtomicFifoEnqueue(OSFifoQueueHead *__list, void *__new, size_t a3)
{
  v4 = commpage_pfz_base;
  if (!commpage_pfz_base)
  {
    OSAtomicFifoEnqueue_cold_1();
  }

  v4(__list, __new, a3);
}

void *__cdecl OSAtomicFifoDequeue(OSFifoQueueHead *__list, size_t a2)
{
  if (!commpage_pfz_base)
  {
    OSAtomicFifoEnqueue_cold_1();
  }

  v3 = (commpage_pfz_base + 4);

  return v3(__list, a2);
}

uint64_t sys_cache_control(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    sys_dcache_flush();
    return 0;
  }

  if (a1 == 1)
  {
    sys_icache_invalidate(a2, a3);
    return 0;
  }

  return 45;
}

uint64_t sys_icache_invalidate(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result & 0xFFFFFFFFFFFFFFC0;
    v3 = ~((a2 + (result & 0x3F) - 1) >> 6);
    __dsb(0xBu);
    v4 = 20;
    v5 = 0;
    do
    {
      __asm { IC              IVAU, X9 }

      v2 += 64;
      if (!--v4)
      {
        if (v5)
        {
LABEL_5:
          __dsb(0xBu);
          v4 = 20;
        }

        else
        {
          v10 = &cpus_that_need_dsb_for_ic_ivau;
          while (1)
          {
            v11 = *v10++;
            v5 = v11;
            if (!v11)
            {
              break;
            }

            if (v5 == MEMORY[0xFFFFFC080])
            {
              goto LABEL_5;
            }
          }

          v4 = 0;
          v5 = 1;
        }
      }

      ++v3;
    }

    while (v3);
    __dsb(0xBu);
    __isb(0xFu);
  }

  return result;
}

_BYTE *__os_security_config_init(uint64_t *a1)
{
  v2 = _simple_getenv(a1, "security_config");
  if (!v2)
  {
    goto LABEL_32;
  }

  if (*v2 != 48)
  {
    goto LABEL_40;
  }

  v3 = 2 * (v2[1] == 120);
  v4 = v2[v3];
  if (v2[1] != 120 || v4 == 0)
  {
    goto LABEL_40;
  }

  v6 = 0;
  v7 = 0;
  v8 = &v2[v3 + 1];
  do
  {
    v9 = v4 - 48;
    v10 = (v4 - 48);
    v11 = (v4 - 65);
    v12 = (v4 - 97);
    v13 = v12 >= 6;
    if (v12 >= 6)
    {
      v14 = v4;
    }

    else
    {
      v14 = v4 - 87;
    }

    if (v13)
    {
      v15 = -1;
    }

    else
    {
      v15 = v6;
    }

    v16 = v4 - 55;
    if (v11 <= 5)
    {
      v17 = v6;
    }

    else
    {
      v16 = v14;
      v17 = v15;
    }

    if (v10 >= 0xA)
    {
      v6 = v17;
    }

    else
    {
      v16 = v9;
    }

    v18 = v16 < 0x10u;
    v19 = 16 * v7 + v16;
    if (v7 >> 60)
    {
      v20 = -1;
    }

    else
    {
      v20 = 1;
    }

    if (v6 >= 0 && v18)
    {
      v7 = v19;
      v6 = v20;
    }

    v21 = *v8++;
    LOBYTE(v4) = v21;
  }

  while (v21 && v6 != -1);
  if (v6 <= 0)
  {
LABEL_40:
    __os_security_config_init_cold_1();
  }

  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_30;
    }

LABEL_38:
    __security_config |= 2uLL;
    if ((v7 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  __security_config |= 1uLL;
  if ((v7 & 2) != 0)
  {
    goto LABEL_38;
  }

LABEL_30:
  if ((v7 & 4) != 0)
  {
LABEL_31:
    __security_config |= 4uLL;
  }

LABEL_32:
  result = _simple_getenv(a1, "has_sec_transition");
  if (result && *result == 49 && !result[1])
  {
    __security_config |= 4uLL;
  }

  return result;
}

uint64_t os_security_config_get_for_proc(int a1, void *a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (proc_pidinfo(a1, 3, 0, v5, 136) == 136)
  {
    result = 0;
    v4 = HIBYTE(LODWORD(v5[0])) & 4 | (LODWORD(v5[0]) >> 28) & 3;
  }

  else
  {
    v4 = 0;
    result = 0xFFFFFFFFLL;
  }

  *a2 = v4;
  return result;
}

uint64_t os_security_config_get_for_task(task_name_t a1, void *a2)
{
  task_info_outCnt = 1;
  task_info_out = 0;
  v3 = task_info(a1, 0x20u, &task_info_out, &task_info_outCnt);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = task_info_out & 7;
  }

  if (v3)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

  *a2 = v4;
  return result;
}

unsigned int *_OSSpinLockLockSlow(unsigned int *result)
{
  for (i = 100; ; --i)
  {
    while (1)
    {
      v2 = __ldxr(result);
      if (v2)
      {
        break;
      }

      __clrex();
      atomic_compare_exchange_strong_explicit(result, &v2, 0xFFFFFFFF, memory_order_acquire, memory_order_acquire);
      if (!v2)
      {
        return result;
      }
    }

    if (v2 != -1)
    {
      __clrex();
      _os_lock_corruption_abort(result, v2);
    }

    if (!i)
    {
      break;
    }

    __wfe();
  }

  __clrex();

  return _OSSpinLockLockYield(result);
}

unint64_t _OSSpinLockLockYield(atomic_uint *a1)
{
  info = 0;
  result = mach_timebase_info(&info);
  if (result)
  {
    v3 = -1;
  }

  else
  {
    v4 = 1000000 * info.denom / info.numer;
    result = mach_absolute_time();
    v3 = result + v4;
  }

  v5 = 1;
  v6 = 1;
  while (1)
  {
    v7 = *a1;
    if (!*a1)
    {
      atomic_compare_exchange_strong_explicit(a1, &v7, 0xFFFFFFFF, memory_order_acquire, memory_order_acquire);
      if (!v7)
      {
        break;
      }
    }

    if (v7 != -1)
    {
      _os_lock_corruption_abort(result, v7);
    }

    result = thread_switch(0, v6, v5);
    if (v6 == 2)
    {
      ++v5;
    }

    else
    {
      result = mach_absolute_time();
      if (result < v3)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }
  }

  return result;
}

void spin_lock(OSSpinLock *__lock)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(__lock, &v1, 0xFFFFFFFF, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _OSSpinLockLockSlow(__lock);
  }
}

BOOL OSSpinLockTry(OSSpinLock *__lock)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(__lock, &v1, 0xFFFFFFFF, memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

BOOL spin_lock_try(atomic_uint *a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v1, 0xFFFFFFFF, memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

unsigned int *_os_lock_spin_lock(uint64_t a1)
{
  v1 = 0;
  result = (a1 + 8);
  atomic_compare_exchange_strong_explicit(result, &v1, 0xFFFFFFFF, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return _OSSpinLockLockSlow(result);
  }

  return result;
}

BOOL _os_lock_spin_trylock(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v1, 0xFFFFFFFF, memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

void _os_lock_handoff_lock(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _os_lock_handoff_lock_slow(a1);
  }
}

BOOL _os_lock_handoff_trylock(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

void _os_lock_handoff_lock_slow(uint64_t a1)
{
  v2 = 0;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v4 = 4;
  v5 = 100;
  v6 = 1;
LABEL_2:
  v7 = 1 - v5;
  while (1)
  {
    v8 = v7;
    v9 = *(a1 + 8);
    if (!v9)
    {
      atomic_compare_exchange_strong_explicit((a1 + 8), &v9, v3, memory_order_acquire, memory_order_acquire);
      if (!v9)
      {
        break;
      }
    }

    if (v9 == v3)
    {
      _os_lock_recursive_abort(v3);
    }

    ++v7;
    if (v8 == 1)
    {
      thread_switch(v9, 5, v6);
LABEL_8:
      ++v6;
      v5 = -v8;
      v4 = 5;
      v2 = 1;
      goto LABEL_2;
    }

    thread_switch(v9, v4, v6);
    if (v2)
    {
      goto LABEL_8;
    }
  }
}

void os_unfair_lock_lock(os_unfair_lock_t lock)
{
  v1 = 0;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(lock, &v1, v2, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    _os_unfair_lock_lock_slow(lock, 0, 0, v2);
  }
}

uint64_t _os_unfair_lock_lock_slow(atomic_uint *a1, int a2, uint64_t a3, unsigned int a4)
{
  if ((a2 & 0xFCFAFFFF) != 0)
  {
    qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Invalid options";
    qword_14038 = a2 & 0xFEFFFFFF;
    __break(0xB001u);
LABEL_29:
    _os_unfair_lock_recursive_abort(v4);
  }

  v4 = a4;
  v7 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        do
        {
          v8 = *a1;
          if (!*a1)
          {
            atomic_compare_exchange_strong_explicit(a1, &v8, v4 & ~v7, memory_order_acquire, memory_order_acquire);
            if (!v8)
            {
              return 1;
            }
          }

          v9 = v8 | 1;
          v10 = (a2 & 0x1000000) != 0 && v9 == -1;
          v11 = !v10;
          if (v9 == v4 && v11 != 0)
          {
            goto LABEL_29;
          }

          if (v8 == (v8 & 0xFFFFFFFE))
          {
            break;
          }

          v13 = v8;
          atomic_compare_exchange_strong_explicit(a1, &v13, v8 & 0xFFFFFFFE, memory_order_relaxed, memory_order_relaxed);
          v10 = v13 == v8;
          v8 &= ~1u;
        }

        while (!v10);
        result = __ulock_wait2();
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        if (result)
        {
          v7 = 1;
        }
      }

      if (result <= -5)
      {
        break;
      }

      if (result != -4)
      {
        goto LABEL_34;
      }
    }
  }

  while (result == -14);
  if (result == -60)
  {
    return 0;
  }

  if (result == -105)
  {
    _os_unfair_lock_corruption_abort(v8);
  }

LABEL_34:
  qword_14008 = "BUG IN LIBPLATFORM: ulock_wait2 failure";
  qword_14038 = -result;
  __break(0xB001u);
  return result;
}

atomic_uint *os_unfair_lock_lock_with_options(atomic_uint *result, int a2)
{
  v2 = 0;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(result, &v2, v3, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    return _os_unfair_lock_lock_slow(result, a2, 0, v3);
  }

  return result;
}

BOOL os_unfair_lock_trylock(os_unfair_lock_t lock)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(lock, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

uint64_t os_unfair_lock_trylock_with_options(atomic_uint *a1, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(a1, &v3, v4, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    return _os_unfair_lock_trylock_with_options_slow(a1, a2, a3, v4);
  }

  else
  {
    return 1;
  }
}

uint64_t _os_unfair_lock_trylock_with_options_slow(atomic_uint *a1, int a2, uint64_t a3, unsigned int a4)
{
  if ((a2 & 0x2000000) == 0)
  {
    if (a3)
    {
      info = 0;
      mach_timebase_info(&info);
      v8 = info.denom * a3 / info.numer;
      v9 = mach_absolute_time();
      return _os_unfair_lock_lock_slow(a1, a2 | 0x2000000u, v9 + v8, a4);
    }

    return 0;
  }

  if (mach_absolute_time() > a3)
  {
    return 0;
  }

  return _os_unfair_lock_lock_slow(a1, a2, a3, a4);
}

void os_unfair_lock_unlock(os_unfair_lock_t lock)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v2 = atomic_exchange_explicit(lock, 0, memory_order_release);
  if (v2 != v1)
  {
    _os_unfair_lock_unlock_slow(lock, v1, v2);
  }
}

uint64_t _os_unfair_lock_unlock_slow(uint64_t a1, int a2, unsigned int a3)
{
  result = a3 | 1;
  if (result != a2)
  {
    _os_unfair_lock_unowned_abort(result);
  }

  if (a3)
  {
    qword_14008 = "BUG IN LIBPLATFORM: unlock_slow with no waiters";
    qword_14038 = a3;
    __break(0xB001u);
LABEL_9:
    qword_14008 = "BUG IN LIBPLATFORM: ulock_wake failure";
    qword_14038 = -result;
    __break(0xB001u);
  }

  else
  {
    while (1)
    {
      result = __ulock_wake();
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      if (result != -4)
      {
        if (result != -2)
        {
          goto LABEL_9;
        }

        return result;
      }
    }
  }

  return result;
}

atomic_uint *os_unfair_lock_lock_no_tsd(atomic_uint *result, int a2, unsigned int a3)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(result, &v3, a3, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    return _os_unfair_lock_lock_slow(result, a2, 0, a3);
  }

  return result;
}

atomic_uint *os_unfair_lock_unlock_no_tsd(atomic_uint *result, int a2)
{
  v2 = atomic_exchange_explicit(result, 0, memory_order_release);
  if (v2 != a2)
  {
    return _os_unfair_lock_unlock_slow(result, a2, v2);
  }

  return result;
}

atomic_uint *os_unfair_lock_lock_with_flags(atomic_uint *result, int a2)
{
  v2 = 0;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(result, &v2, v3, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    return _os_unfair_lock_lock_slow(result, a2, 0, v3);
  }

  return result;
}

void os_unfair_lock_assert_owner(os_unfair_lock_t lock)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  os_unfair_lock_opaque = lock->_os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque | 1) != v1)
  {
    os_unfair_lock_assert_owner_cold_1(os_unfair_lock_opaque);
  }
}

void os_unfair_lock_assert_not_owner(os_unfair_lock_t lock)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  os_unfair_lock_opaque = lock->_os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque | 1) == v1)
  {
    os_unfair_lock_assert_not_owner_cold_1(os_unfair_lock_opaque);
  }
}

uint64_t os_unfair_recursive_lock_lock_with_options(uint64_t result, int a2)
{
  v3 = 0;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(result, &v3, v2, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    if ((v3 | 1) == v2)
    {
      ++*(result + 4);
    }

    else
    {
      return _os_unfair_lock_lock_slow(result, a2, 0, v2);
    }
  }

  return result;
}

uint64_t os_unfair_recursive_lock_unlock(uint64_t result)
{
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = *(result + 4);
  if (v3)
  {
    v5 = *result | 1;
    if (v5 != v2)
    {
      _os_unfair_lock_unowned_abort(v5);
    }

    *(result + 4) = v3 - 1;
  }

  else
  {
    v4 = atomic_exchange_explicit(result, 0, memory_order_release);
    if (v4 != v2)
    {

      return _os_unfair_lock_unlock_slow(result, v2, v4);
    }
  }

  return result;
}

BOOL os_unfair_recursive_lock_tryunlock4objc(uint64_t a1)
{
  v1 = *a1 | 1;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  if (v1 == v2)
  {
    v3 = *(a1 + 4);
    if (v3)
    {
      if ((*a1 | 1) != v1)
      {
        _os_unfair_lock_unowned_abort(*a1 | 1);
      }

      *(a1 + 4) = v3 - 1;
    }

    else
    {
      os_unfair_recursive_lock_tryunlock4objc_cold_1(a1, v1);
    }
  }

  return v1 == v2;
}

_DWORD *os_unfair_recursive_lock_unlock_forked_child(_DWORD *result)
{
  if (!*result)
  {
    os_unfair_recursive_lock_unlock_forked_child_cold_1();
  }

  v1 = result[1];
  if (v1)
  {
    v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    result[1] = v1 - 1;
  }

  else
  {
    v2 = 0;
  }

  *result = v2;
  return result;
}

atomic_uint *_os_lock_unfair_lock(uint64_t a1)
{
  v1 = 0;
  result = (a1 + 8);
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(result, &v1, v3, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return _os_unfair_lock_lock_slow(result, 0, 0, v3);
  }

  return result;
}

BOOL _os_lock_unfair_trylock(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

atomic_uint *_os_lock_unfair_unlock(uint64_t a1)
{
  result = (a1 + 8);
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = atomic_exchange_explicit(result, 0, memory_order_release);
  if (v3 != v2)
  {
    return _os_unfair_lock_unlock_slow(result, v2, v3);
  }

  return result;
}

uint64_t _os_nospin_lock_lock(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(result, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return _os_nospin_lock_lock_slow(result);
  }

  return result;
}

uint64_t _os_nospin_lock_lock_slow(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v4 = 1;
  while (1)
  {
    v5 = *v1;
    if (!*v1)
    {
      atomic_compare_exchange_strong_explicit(v1, &v5, v3 & ~v2, memory_order_acquire, memory_order_acquire);
      if (!v5)
      {
        break;
      }
    }

    v6 = v5 & 0xFFFFFFFE;
    if (v5 != (v5 & 0xFFFFFFFE) && v6 != 0)
    {
      v8 = v5;
      atomic_compare_exchange_strong_explicit(v1, &v8, v6, memory_order_relaxed, memory_order_relaxed);
      if (v8 != v5)
      {
        continue;
      }
    }

    result = __ulock_wait();
    if ((result & 0x80000000) != 0)
    {
      if (result != -14 && result != -4)
      {
        if (result != -60)
        {
          qword_14008 = "BUG IN LIBPLATFORM: ulock_wait failure";
          qword_14038 = -result;
          __break(0xB001u);
          return result;
        }

        ++v4;
      }
    }

    else if (result)
    {
      v2 = 1;
    }
  }

  return result;
}

BOOL _os_nospin_lock_trylock(atomic_uint *a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

atomic_uint *_os_nospin_lock_unlock(atomic_uint *result)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v2 = atomic_exchange_explicit(result, 0, memory_order_release);
  if (v2 != v1)
  {
    return _os_nospin_lock_unlock_slow(result, v2);
  }

  return result;
}

uint64_t _os_nospin_lock_unlock_slow(uint64_t result, unsigned int a2)
{
  if ((a2 | 1) == *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24))
  {
    if (a2)
    {
      qword_14008 = "BUG IN LIBPLATFORM: unlock_slow with no waiters";
      qword_14038 = a2;
      __break(0xB001u);
LABEL_8:
      qword_14008 = "BUG IN LIBPLATFORM: ulock_wake failure";
      qword_14038 = -result;
      __break(0xB001u);
    }

    else
    {
      while (1)
      {
        result = __ulock_wake();
        if ((result & 0x80000000) == 0)
        {
          break;
        }

        if (result != -4)
        {
          if (result != -2)
          {
            goto LABEL_8;
          }

          return result;
        }
      }
    }
  }

  return result;
}

atomic_uint *_os_lock_nospin_lock(uint64_t a1)
{
  v1 = 0;
  result = (a1 + 8);
  atomic_compare_exchange_strong_explicit(result, &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return _os_nospin_lock_lock_slow(result);
  }

  return result;
}

BOOL _os_lock_nospin_trylock(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  return v1 == 0;
}

atomic_uint *_os_lock_nospin_unlock(uint64_t a1)
{
  result = (a1 + 8);
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v3 = atomic_exchange_explicit(result, 0, memory_order_release);
  if (v3 != v2)
  {
    return _os_nospin_lock_unlock_slow(result, v3);
  }

  return result;
}

atomic_ullong *__os_once_reset(atomic_ullong *result)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v2 = atomic_exchange_explicit(result, 0, memory_order_release);
  if (v1 != v2)
  {
    return _os_once_gate_broadcast(result, v2, v1);
  }

  return result;
}

uint64_t _os_once_gate_broadcast(uint64_t a1, unsigned int a2, int a3)
{
  result = a2 | 1;
  if (result != a3)
  {
    _os_once_gate_unowned_abort(result);
  }

  if (a2)
  {
    qword_14008 = "BUG IN LIBPLATFORM: unlock_slow with no waiters";
    qword_14038 = a2;
    __break(0xB001u);
LABEL_9:
    qword_14008 = "BUG IN LIBPLATFORM: ulock_wake failure";
    qword_14038 = -result;
    __break(0xB001u);
  }

  else
  {
    while (1)
    {
      result = __ulock_wake();
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      if (result != -4)
      {
        if (result != -2)
        {
          goto LABEL_9;
        }

        return result;
      }
    }
  }

  return result;
}

atomic_ullong *_os_once(atomic_ullong *result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  explicit = atomic_load_explicit(result, memory_order_acquire);
  if ((explicit & 3) != 1)
  {
    return _os_once_cold_1(result, a2, a3);
  }

  if (4 * MEMORY[0xFFFFFC180] - explicit - 15 <= 0xFFFFFFFFFFFFFFEFLL)
  {
    *result = -1;
  }

  return result;
}

uint64_t _os_once_callout(atomic_ullong *a1, uint64_t a2, uint64_t (*a3)(uint64_t), int a4)
{
  result = a3(a2);
  v7 = atomic_exchange_explicit(a1, (4 * MEMORY[0xFFFFFC180]) | 1, memory_order_release);
  if (v7 != a4)
  {

    return _os_once_gate_broadcast(a1, v7, a4);
  }

  return result;
}

uint64_t _os_once_gate_wait(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t), unsigned int a4)
{
  v4 = *result;
  if (*result != -1)
  {
    v8 = result;
    v9 = a4;
    while ((v4 & 3) != 1)
    {
      if (v4)
      {
        if ((v4 & 0xFFFFFFFFFFFFFFFELL) == v4 || (v10 = v4, atomic_compare_exchange_strong_explicit(v8, &v10, v4 & 0xFFFFFFFFFFFFFFFELL, memory_order_relaxed, memory_order_relaxed), v10 == v4))
        {
          if ((v4 | 1) == a4)
          {
            _os_once_gate_recursive_abort(a4);
          }

          result = __ulock_wait();
          if ((result & 0x80000000) != 0 && result != -14 && result != -4)
          {
            if (result == -105)
            {
              _os_once_gate_corruption_abort(v4);
            }

            qword_14008 = "BUG IN LIBPLATFORM: ulock_wait failure";
            qword_14038 = -result;
            __break(0xB001u);
            return result;
          }

          v4 = *v8;
        }

        else
        {
          v4 = v10;
        }
      }

      else
      {
        v11 = 0;
        atomic_compare_exchange_strong_explicit(v8, &v11, v9, memory_order_relaxed, memory_order_relaxed);
        if (!v11)
        {
          __dmb(9u);

          return _os_once_callout(v8, a2, a3, a4);
        }

        v4 = v11;
      }

      if (v4 == -1)
      {
        return result;
      }
    }

    __dmb(9u);
    if ((4 * MEMORY[0xFFFFFC180] - v4 - 15) <= 0xFFFFFFFFFFFFFFEFLL)
    {
      *v8 = -1;
    }
  }

  return result;
}

uint64_t os_sync_wait_on_address_with_deadline(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a4 <= 1 && (a3 == 8 || a3 == 4))
  {
    v6 = 22;
    if (a6 && a5 == 32)
    {
      result = __ulock_wait2();
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v6 = -result;
    }
  }

  else
  {
    v6 = 22;
  }

  *__error() = v6;
  return 0xFFFFFFFFLL;
}

uint64_t os_sync_wait_on_address_with_timeout(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  if (a4 <= 1 && (a3 == 8 || a3 == 4))
  {
    v6 = 22;
    if (a6 && a5 == 32)
    {
      result = __ulock_wait2();
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      v6 = -result;
    }
  }

  else
  {
    v6 = 22;
  }

  *__error() = v6;
  return 0xFFFFFFFFLL;
}

uint64_t os_sync_wait_on_address(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 <= 1 && (a3 == 8 || a3 == 4))
  {
    result = __ulock_wait2();
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v5 = -result;
  }

  else
  {
    v5 = 22;
  }

  *__error() = v5;
  return 0xFFFFFFFFLL;
}

uint64_t os_sync_wake_by_address_any(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 1 && (a2 == 8 || a2 == 4))
  {
    result = __ulock_wake();
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v4 = -result;
  }

  else
  {
    v4 = 22;
  }

  *__error() = v4;
  return 0xFFFFFFFFLL;
}

uint64_t os_sync_wake_by_address_all(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 <= 1 && (a2 == 8 || a2 == 4))
  {
    result = __ulock_wake();
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    v4 = -result;
  }

  else
  {
    v4 = 22;
  }

  *__error() = v4;
  return 0xFFFFFFFFLL;
}

uint64_t _os_alloc_once(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  _os_once(a1, v5, _os_alloc);
  return *(a1 + 8);
}

uint64_t _os_alloc(uint64_t a1)
{
  v1 = (*(a1 + 8) + 15) & 0xFFFFFFF0;
  if (v1 - 1 >= 2 * vm_page_size - 16)
  {
    _os_alloc_cold_1((*(a1 + 8) + 15) & 0xFFFFFFF0);
  }

  v3 = _os_alloc_heap;
  if (_os_alloc_heap && (add_explicit = atomic_fetch_add_explicit(_os_alloc_heap, v1, memory_order_relaxed), add_explicit + v1 <= 2 * vm_page_size - 16))
  {
    result = v3 + add_explicit + 16;
  }

  else
  {
    result = _os_alloc_slow(v3, v1);
  }

  *(*a1 + 8) = result;
  v6 = *(a1 + 16);
  if (v6)
  {

    return v6();
  }

  return result;
}

uint64_t _os_alloc_slow(atomic_ullong *a1, unint64_t a2)
{
  v4 = vm_page_size;
  while (1)
  {
    address = v4;
    result = mach_vm_map(mach_task_self_, &address, 2 * v4, 0, 1224736769, 0, 0, 0, 3, 7, 1u);
    if (result)
    {
      break;
    }

    v6 = address;
    v7 = a1;
    atomic_compare_exchange_strong_explicit(&_os_alloc_heap, &v7, address, memory_order_relaxed, memory_order_relaxed);
    if (v7 == a1)
    {
      *(v6 + 8) = a1;
      a1 = v6;
LABEL_6:
      add_explicit = atomic_fetch_add_explicit(a1, a2, memory_order_relaxed);
      v4 = vm_page_size;
      if (add_explicit + a2 <= 2 * vm_page_size - 16)
      {
        return a1 + add_explicit + 16;
      }
    }

    else
    {
      mach_vm_deallocate(mach_task_self_, v6, 2 * vm_page_size);
      a1 = _os_alloc_heap;
      if (_os_alloc_heap)
      {
        goto LABEL_6;
      }

      v4 = vm_page_size;
    }
  }

  qword_14008 = "BUG IN LIBPLATFORM: Failed to allocate in os_alloc_once";
  qword_14038 = result;
  __break(0xB001u);
  return result;
}

void (*os_apt_msg_async_task_running_4swift())(uint64_t a1)
{
  v0 = os_apt_msg_async_task_running_4swift_dev;
  if ((MEMORY[0xFFFFFC340] & 1) == 0)
  {
    v0 = os_apt_msg_async_task_running_4swift_nop;
  }

  if ((MEMORY[0xFFFFFC340] & 2) != 0)
  {
    v0 = os_apt_msg_async_task_running_4swift_prodel0;
  }

  if ((~MEMORY[0xFFFFFC340] & 3) != 0)
  {
    return v0;
  }

  else
  {
    return os_apt_msg_async_task_running_4swift_dev_prodel0;
  }
}

void os_apt_msg_async_task_running_4swift_dev_prodel0(uint64_t a1)
{
  if (MEMORY[0xFFFFFC341])
  {
    v1 = ((a1 & 1) << 30) | 0x1010101;
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), v1);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), v1);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), a1 & 0xFFFFFFFFFFFFFFFELL);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), a1 & 0xFFFFFFFFFFFFFFFELL);
  }
}

void os_apt_msg_async_task_running_4swift_prodel0(uint64_t a1)
{
  if (MEMORY[0xFFFFFC341])
  {
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), ((a1 & 1) << 30) | 0x1010101);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), a1 & 0xFFFFFFFFFFFFFFFELL);
  }
}

void os_apt_msg_async_task_running_4swift_dev(uint64_t a1)
{
  if (MEMORY[0xFFFFFC341])
  {
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), ((a1 & 1) << 30) | 0x1010101);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), a1 & 0xFFFFFFFFFFFFFFFELL);
  }
}

void (*os_apt_msg_async_task_waiting_on_4swift())(uint64_t a1)
{
  v0 = os_apt_msg_async_task_waiting_on_4swift_dev;
  if ((MEMORY[0xFFFFFC340] & 1) == 0)
  {
    v0 = os_apt_msg_async_task_waiting_on_4swift_nop;
  }

  if ((MEMORY[0xFFFFFC340] & 2) != 0)
  {
    v0 = os_apt_msg_async_task_waiting_on_4swift_prodel0;
  }

  if ((~MEMORY[0xFFFFFC340] & 3) != 0)
  {
    return v0;
  }

  else
  {
    return os_apt_msg_async_task_waiting_on_4swift_dev_prodel0;
  }
}

void os_apt_msg_async_task_waiting_on_4swift_dev_prodel0(uint64_t a1)
{
  if (MEMORY[0xFFFFFC341])
  {
    v1 = ((a1 & 1) << 30) | 0x1020101;
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), v1);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), v1);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), a1 & 0xFFFFFFFFFFFFFFFELL);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), a1 & 0xFFFFFFFFFFFFFFFELL);
  }
}

void os_apt_msg_async_task_waiting_on_4swift_prodel0(uint64_t a1)
{
  if (MEMORY[0xFFFFFC341])
  {
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), ((a1 & 1) << 30) | 0x1020101);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 11, 6), a1 & 0xFFFFFFFFFFFFFFFELL);
  }
}

void os_apt_msg_async_task_waiting_on_4swift_dev(uint64_t a1)
{
  if (MEMORY[0xFFFFFC341])
  {
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), ((a1 & 1) << 30) | 0x1020101);
    _WriteStatusReg(ARM64_SYSREG(3, 5, 15, 1, 4), a1 & 0xFFFFFFFFFFFFFFFELL);
  }
}

uint64_t _os_semaphore_create()
{
  semaphore = 0;
  v0 = semaphore_create(mach_task_self_, &semaphore, 0, 0);
  if (v0)
  {
    if (v0 == -301)
    {
      _os_semaphore_create_cold_1();
    }

    _os_semaphore_create_cold_2(v0);
  }

  return semaphore;
}

uint64_t _os_semaphore_dispose(semaphore_t semaphore)
{
  result = semaphore_destroy(mach_task_self_, semaphore);
  if (result)
  {
    _os_semaphore_dispose_cold_1(result);
  }

  return result;
}

uint64_t _os_semaphore_signal(semaphore_t a1)
{
  result = semaphore_signal(a1);
  if (result)
  {
    _os_semaphore_signal_cold_1(result);
  }

  return result;
}

uint64_t _os_semaphore_wait(semaphore_t semaphore)
{
  while (1)
  {
    result = semaphore_wait(semaphore);
    if (!result)
    {
      break;
    }

    if (result != 14)
    {
      _os_semaphore_wait_cold_1(result);
    }
  }

  return result;
}

BOOL OSAtomicCompareAndSwap32(int32_t __oldValue, int32_t __newValue, int32_t *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong_explicit(__theValue, &v3, __newValue, memory_order_relaxed, memory_order_relaxed);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwap32Barrier(int32_t __oldValue, int32_t __newValue, int32_t *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong(__theValue, &v3, __newValue);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwapPtr(void *__oldValue, void *__newValue, void **__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong_explicit(__theValue, &v3, __newValue, memory_order_relaxed, memory_order_relaxed);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwapPtrBarrier(void *__oldValue, void *__newValue, void **__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong(__theValue, &v3, __newValue);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwapInt(int __oldValue, int __newValue, int *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong_explicit(__theValue, &v3, __newValue, memory_order_relaxed, memory_order_relaxed);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwapIntBarrier(int __oldValue, int __newValue, int *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong(__theValue, &v3, __newValue);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwapLong(uint64_t __oldValue, uint64_t __newValue, uint64_t *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong_explicit(__theValue, &v3, __newValue, memory_order_relaxed, memory_order_relaxed);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwapLongBarrier(uint64_t __oldValue, uint64_t __newValue, uint64_t *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong(__theValue, &v3, __newValue);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwap64(int64_t __oldValue, int64_t __newValue, OSAtomic_int64_aligned64_t *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong_explicit(__theValue, &v3, __newValue, memory_order_relaxed, memory_order_relaxed);
  return v3 == __oldValue;
}

BOOL OSAtomicCompareAndSwap64Barrier(int64_t __oldValue, int64_t __newValue, OSAtomic_int64_aligned64_t *__theValue)
{
  v3 = __oldValue;
  atomic_compare_exchange_strong(__theValue, &v3, __newValue);
  return v3 == __oldValue;
}

BOOL OSAtomicTestAndSet(uint32_t __n, void *__theAddress)
{
  v2 = __theAddress & 0xFFFFFFFFFFFFFFFCLL;
  if ((__theAddress & 3) == 0)
  {
    v2 = __theAddress;
  }

  return (atomic_fetch_or_explicit((v2 + (((__n + 8 * (__theAddress & 3)) >> 3) & 0x1FFFFFFC)), 0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18), memory_order_relaxed) & (0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18))) != 0;
}

BOOL OSAtomicTestAndSetBarrier(uint32_t __n, void *__theAddress)
{
  v2 = __theAddress & 0xFFFFFFFFFFFFFFFCLL;
  if ((__theAddress & 3) == 0)
  {
    v2 = __theAddress;
  }

  return (atomic_fetch_or((v2 + (((__n + 8 * (__theAddress & 3)) >> 3) & 0x1FFFFFFC)), 0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18)) & (0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18))) != 0;
}

BOOL OSAtomicTestAndClear(uint32_t __n, void *__theAddress)
{
  v2 = __theAddress & 0xFFFFFFFFFFFFFFFCLL;
  if ((__theAddress & 3) == 0)
  {
    v2 = __theAddress;
  }

  return (atomic_fetch_and_explicit((v2 + (((__n + 8 * (__theAddress & 3)) >> 3) & 0x1FFFFFFC)), ~(0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18)), memory_order_relaxed) & (0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18))) != 0;
}

BOOL OSAtomicTestAndClearBarrier(uint32_t __n, void *__theAddress)
{
  v2 = __theAddress & 0xFFFFFFFFFFFFFFFCLL;
  if ((__theAddress & 3) == 0)
  {
    v2 = __theAddress;
  }

  return (atomic_fetch_and((v2 + (((__n + 8 * (__theAddress & 3)) >> 3) & 0x1FFFFFFC)), ~(0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18))) & (0x80u >> (__n & 7) << ((__n + 8 * (__theAddress & 3)) & 0x18))) != 0;
}

void OSAtomicEnqueue(OSQueueHead *__list, void *__new, size_t a3)
{
  _X4 = __new;
  if ((__list & 0xF) != 0)
  {
    _OSAtomicEnqueue_misalign(__list, __new, a3);
  }

  else
  {
    opaque1 = __list->opaque1;
    opaque2 = __list->opaque2;
    do
    {
      *(__new + a3) = opaque1;
      _X9 = opaque2;
      __asm { CASPL           X8, X9, X4, X5, [X0] }

      _ZF = _X8 == opaque1;
      opaque1 = _X8;
    }

    while (!_ZF);
  }
}

unint64_t *_OSAtomicEnqueue_misalign(unint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = *result;
  do
  {
    do
    {
      *(a2 + a3) = v3;
      v4 = __ldxr(result);
      v5 = v3 == v4;
      v3 = v4;
    }

    while (!v5);
    v3 = v4;
  }

  while (__stlxr(a2, result));
  return result;
}

void *__cdecl OSAtomicDequeue(OSQueueHead *__list, size_t a2)
{
  if ((__list & 0xF) != 0)
  {
    return _OSAtomicDequeue_misalign(__list, a2);
  }

  explicit = atomic_load_explicit(__list, memory_order_acquire);
  if (explicit)
  {
    do
    {
      _X4 = *&explicit[a2];
      _X7 = __list->opaque2;
      __asm { CASPA           X6, X7, X4, X5, [X0] }

      v10 = _X6 == explicit;
      if (_X6 != explicit)
      {
        explicit = _X6;
      }
    }

    while (!v10 && explicit);
  }

  return explicit;
}

unint64_t _OSAtomicDequeue_misalign(unint64_t *a1, uint64_t a2)
{
  while (1)
  {
    result = __ldaxr(a1);
    if (!result)
    {
      break;
    }

    if (!__stxr(*(result + a2), a1))
    {
      return result;
    }
  }

  __clrex();
  return result;
}

void _sigtramp(void (*a1)(void, uint64_t, uint64_t), uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  __in_sigtramp = a3;
  a1(a3, a4, a5);
  __in_sigtramp = 0;
  __sigreturn();
  __break(1u);
}

uint64_t __platform_sigaction(int a1, uint64_t *a2)
{
  if (a1 <= 0 || a1 >= 32 || a1 == 9 || a1 == 17)
  {
    *__error() = 22;
    return -1;
  }

  else
  {
    if (a2)
    {
      v3 = *a2;
      v4 = *(a2 + 2);
      v5 = *(a2 + 3) | 0x400;
    }

    return __sigaction();
  }
}

int _setjmp(jmp_buf a1)
{
  v21 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 56);
  *a1 = v1;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 3) = v4;
  *(a1 + 4) = v5;
  *(a1 + 5) = v6;
  *(a1 + 6) = v7;
  *(a1 + 7) = v8;
  *(a1 + 8) = v9;
  *(a1 + 9) = v10;
  *(a1 + 10) = v11 ^ v21;
  *(a1 + 11) = v12 ^ v21;
  *(a1 + 12) = &v23 ^ v21;
  *(a1 + 14) = v13;
  *(a1 + 15) = v14;
  *(a1 + 16) = v15;
  *(a1 + 17) = v16;
  *(a1 + 18) = v17;
  *(a1 + 19) = v18;
  *(a1 + 20) = v19;
  *(a1 + 21) = v20;
  return 0;
}

void _longjmp(jmp_buf a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = *(a1 + 8);
  v11 = *(a1 + 9);
  v12 = *(a1 + 10);
  v13 = *(a1 + 11);
  v14 = *(a1 + 12);
  v15 = *(a1 + 14);
  v16 = *(a1 + 15);
  v17 = *(a1 + 16);
  v18 = *(a1 + 17);
  v19 = *(a1 + 18);
  v20 = *(a1 + 19);
  v21 = *(a1 + 20);
  v22 = *(a1 + 21);
  v23 = *(v14 ^ *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 56));
}

int sigsetjmp(sigjmp_buf a1, int a2)
{
  a1[46] = a2;
  if (a2)
  {
    return setjmp(a1);
  }

  else
  {
    return _setjmp(a1);
  }
}

int setjmp(jmp_buf a1)
{
  *a1 = v1;
  *(a1 + 1) = v2;
  sigprocmask(1, 0, a1 + 44);
  v4 = a1;
  v5 = *a1;

  return _setjmp(v4);
}

void siglongjmp(sigjmp_buf a1, int a2)
{
  if (!a1[46])
  {
    _longjmp(a1, a2);
  }

  longjmp(a1, a2);
}

void longjmp(jmp_buf a1, int a2)
{
  *v5 = *(a1 + 22);
  sigprocmask(3, v5, 0);
  v4 = *(a1 + 47);
  _sigunaltstack();
  _longjmp(a1, a2);
}

uint64_t _platform_strstr(uint64_t a1, char *a2)
{
  v12 = (a2 + 1);
  v11 = *a2;
  if (*a2)
  {
    v10 = _platform_strlen(v12);
    do
    {
      v7 = a1++;
      v8 = *v7;
      if (!v8)
      {
        return 0;
      }
    }

    while (v8 != v11 || _platform_strncmp_0(a1, v12, v10, v2, v3, v4, v5, v6));
    --a1;
  }

  return a1;
}

char *_platform_strcpy(char *a1, char *a2)
{
  v3 = _platform_strlen(a2);
  _platform_memmove(a1, a2, v3 + 1);
  return a1;
}

unint64_t _platform_strlcpy(char *a1, char *a2, unint64_t a3)
{
  v4 = _platform_strlen(a2);
  if (v4 >= a3)
  {
    if (a3)
    {
      _platform_memmove(a1, a2, a3 - 1);
      a1[a3 - 1] = 0;
    }
  }

  else
  {
    _platform_memmove(a1, a2, v4 + 1);
  }

  return v4;
}

char *_platform_memccpy(char *a1, char *a2, unsigned int a3, unint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = _platform_memchr(a2, a3, a4);
  if (v5)
  {
    _platform_memmove(a1, a2, v5 - a2 + 1);
    return &a1[v5 - a2 + 1];
  }

  else
  {
    _platform_memmove(a1, a2, a4);
    return 0;
  }
}

char *_platform_strncpy(char *a1, char *a2, unint64_t a3)
{
  v4 = _platform_strnlen(a2, a3);
  if (v4 >= a3)
  {
    _platform_memmove(a1, a2, a3);
  }

  else
  {
    _platform_memmove(a1, a2, v4);
    _platform_memset(&a1[v4], 0, a3 - v4);
  }

  return a1;
}

unint64_t _platform_strlcat(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = _platform_strlen(a2);
  v4 = _platform_strnlen(a1, a3);
  if (v4 == a3)
  {
    return a3 + v5;
  }

  if (v5 >= a3 - v4)
  {
    _platform_memmove((a1 + v4), a2, a3 - v4 - 1);
    *(a1 + a3 - 1) = 0;
  }

  else
  {
    _platform_memmove((a1 + v4), a2, v5 + 1);
  }

  return v4 + v5;
}

char *_platform_memmove(char *result, char *a2, unint64_t a3)
{
  if (result - a2 < a3)
  {
    if (result != a2)
    {
      v34 = &result[a3];
      v35 = &a2[a3];
      if (a3 < 0x40)
      {
        while (1)
        {
          v31 = a3 >= 8;
          a3 -= 8;
          if (!v31)
          {
            break;
          }

          v50 = *(v35 - 1);
          v35 -= 8;
          *(v34 - 1) = v50;
          v34 -= 8;
        }

        for (i = a3 + 8; i; --i)
        {
          v52 = *--v35;
          *--v34 = v52;
        }
      }

      else
      {
        if (a3 < 0x4000)
        {
          v47 = *(v35 - 2);
          v48 = *(v35 - 1);
          v38 = (v34 - 1) & 0xFFFFFFFFFFFFFFE0;
          v49 = v35 - &v34[-v38];
          v40 = *(v49 - 32);
          v41 = *(v49 - 16);
          *(v34 - 2) = v47;
          *(v34 - 1) = v48;
          v42 = v49 - 32;
          v43 = v38 - result - 64;
          if (v38 - result > 0x40)
          {
            do
            {
              *(v38 - 32) = v40;
              *(v38 - 16) = v41;
              v38 -= 32;
              v40 = *(v42 - 32);
              v41 = *(v42 - 16);
              v42 -= 32;
              v12 = v43 > 0x20;
              v43 -= 32;
            }

            while (v12);
          }
        }

        else
        {
          v36 = *(v35 - 2);
          v37 = *(v35 - 1);
          v38 = (v34 - 1) & 0xFFFFFFFFFFFFFFE0;
          v39 = v35 - &v34[-v38];
          v40 = *(v39 - 32);
          v41 = *(v39 - 16);
          *(v34 - 2) = v36;
          *(v34 - 1) = v37;
          v42 = v39 - 32;
          v43 = v38 - result - 64;
          if (v38 - result > 0x40)
          {
            do
            {
              *(v38 - 32) = v40;
              *(v38 - 16) = v41;
              v38 -= 32;
              v40 = *(v42 - 32);
              v41 = *(v42 - 16);
              v42 -= 32;
              v12 = v43 > 0x20;
              v43 -= 32;
            }

            while (v12);
          }
        }

        v44 = v42 - v43;
        v45 = *(v44 - 32);
        v46 = *(v44 - 16);
        *(v38 - 32) = v40;
        *(v38 - 16) = v41;
        *result = v45;
        *(result + 1) = v46;
      }
    }
  }

  else
  {
    v3 = result;
    if (a3 < 0x40)
    {
      while (1)
      {
        v31 = a3 >= 8;
        a3 -= 8;
        if (!v31)
        {
          break;
        }

        v30 = *a2;
        a2 += 8;
        *v3++ = v30;
      }

      for (j = a3 + 8; j; --j)
      {
        v33 = *a2++;
        *v3 = v33;
        v3 = (v3 + 1);
      }
    }

    else
    {
      if (a2 - result < a3)
      {
        if (a3 < 0x4000)
        {
          v4 = ((result + 32) & 0xFFFFFFFFFFFFFFE0);
          v22 = *a2;
          v23 = *(a2 + 1);
          v24 = &a2[v4 - result];
          v8 = *v24;
          v9 = v24[1];
          v10 = v24 + 2;
          v25 = a3 - (v4 - result);
          *result = v22;
          *(result + 1) = v23;
          v12 = v25 > 0x40;
          for (k = v25 - 64; v12; k -= 32)
          {
            *v4 = v8;
            *(v4 + 1) = v9;
            v4 += 32;
            v8 = *v10;
            v9 = v10[1];
            v10 += 2;
            v12 = k > 0x20;
          }
        }

        else
        {
          v4 = ((result + 32) & 0xFFFFFFFFFFFFFFE0);
          v18 = *a2;
          v19 = *(a2 + 1);
          v20 = &a2[v4 - result];
          v8 = *v20;
          v9 = v20[1];
          v10 = v20 + 2;
          v21 = a3 - (v4 - result);
          *result = v18;
          *(result + 1) = v19;
          v12 = v21 > 0x40;
          for (k = v21 - 64; v12; k -= 32)
          {
            *v4 = v8;
            *(v4 + 1) = v9;
            v4 += 32;
            v8 = *v10;
            v9 = v10[1];
            v10 += 2;
            v12 = k > 0x20;
          }
        }
      }

      else if (a3 < 0x4000)
      {
        v4 = ((result + 32) & 0xFFFFFFFFFFFFFFE0);
        v14 = *a2;
        v15 = *(a2 + 1);
        v16 = &a2[v4 - result];
        v8 = *v16;
        v9 = v16[1];
        v10 = v16 + 2;
        v17 = a3 - (v4 - result);
        *result = v14;
        *(result + 1) = v15;
        v12 = v17 > 0x40;
        for (k = v17 - 64; v12; k -= 32)
        {
          *v4 = v8;
          *(v4 + 1) = v9;
          v4 += 32;
          v8 = *v10;
          v9 = v10[1];
          v10 += 2;
          v12 = k > 0x20;
        }
      }

      else
      {
        v4 = ((result + 32) & 0xFFFFFFFFFFFFFFE0);
        v5 = *a2;
        v6 = *(a2 + 1);
        v7 = &a2[v4 - result];
        v8 = *v7;
        v9 = v7[1];
        v10 = v7 + 2;
        v11 = a3 - (v4 - result);
        *result = v5;
        *(result + 1) = v6;
        v12 = v11 > 0x40;
        for (k = v11 - 64; v12; k -= 32)
        {
          *v4 = v8;
          *(v4 + 1) = v9;
          v4 += 32;
          v8 = *v10;
          v9 = v10[1];
          v10 += 2;
          v12 = k > 0x20;
        }
      }

      v26 = (v10 + k);
      v27 = *v26;
      v28 = v26[1];
      *v4 = v8;
      *(v4 + 1) = v9;
      v29 = &v4[k];
      *(v29 + 2) = v27;
      *(v29 + 3) = v28;
    }
  }

  return result;
}

unint64_t _platform_strcmp_VARIANT_Base(int8x16_t *a1, int8x16_t *a2)
{
  while ((a1 & 0xF) != 0)
  {
    v3 = a1->u8[0];
    a1 = (a1 + 1);
    v2 = v3;
    v4 = a2->u8[0];
    a2 = (a2 + 1);
    v5 = v2 - v4;
    if (v2 != v4 || v2 == 0)
    {
      return v5;
    }
  }

  if ((a2 & 0xF) != 0)
  {
    v8 = -a2 & 0xFF0;
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_10:
    while (1)
    {
      v9 = *a1++;
      v10 = v9;
      v11 = *a2++;
      v13 = vceqq_s8(v10, v11);
      v12 = vandq_s8(v10, v13);
      v13.i8[0] = vminvq_u8(v12);
      if (!v13.i32[0])
      {
        break;
      }

      v8 -= 16;
      if (!v8)
      {
LABEL_12:
        while (1)
        {
          v15 = a1->u8[0];
          a1 = (a1 + 1);
          v14 = v15;
          v16 = a2->u8[0];
          a2 = (a2 + 1);
          v5 = v14 - v16;
          if (v14 != v16 || v14 == 0)
          {
            return v5;
          }

          if ((a1 & 0xF) == 0)
          {
            v8 = 4080;
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    do
    {
      v18 = *a1++;
      v19 = v18;
      v20 = *a2++;
      v13 = vceqq_s8(v19, v20);
      v12 = vandq_s8(v19, v13);
      v13.i8[0] = vminvq_u8(v12);
    }

    while (v13.i32[0]);
  }

  v21 = vorrq_s8(vcgtq_u8(v12, veorq_s8(v13, v13)), xmmword_6360);
  v21.i8[0] = vminvq_u8(v21);
  return a1[-1].u8[v21.u32[0]] - a2[-1].u8[v21.u32[0]];
}

unint64_t _platform_strncmp_VARIANT_MTE(int8x16_t *a1, int8x16_t *a2, unint64_t a3)
{
  v3 = 0;
  if (!a3)
  {
    return v3;
  }

  while ((a1 & 0xF) != 0)
  {
    v5 = a1->u8[0];
    a1 = (a1 + 1);
    v4 = v5;
    v6 = a2->u8[0];
    a2 = (a2 + 1);
    v3 = v4 - v6;
    if (v4 == v6 && v4 != 0)
    {
      if (--a3)
      {
        continue;
      }
    }

    return v3;
  }

  v9 = a1->u8[0];
  v10 = a2->u8[0];
  __asm { MSR             TCO, #1 }

  if ((a2 & 0xF) == 0)
  {
    goto LABEL_32;
  }

  v15 = -a2 & 0xFF0;
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (a3 > v15)
  {
    v16 = a3 - v15;
    while (1)
    {
      v17 = *a1++;
      v18 = v17;
      v19 = *a2++;
      v21 = vceqq_s8(v18, v19);
      v20 = vandq_s8(v18, v21);
      v21.i8[0] = vminvq_u8(v20);
      if (!v21.i32[0])
      {
        break;
      }

      v15 -= 16;
      if (!v15)
      {
        a3 = v16;
LABEL_16:
        while (1)
        {
          v23 = a1->u8[0];
          a1 = (a1 + 1);
          v22 = v23;
          v24 = a2->u8[0];
          a2 = (a2 + 1);
          if (v22 != v24 || v22 == 0)
          {
            break;
          }

          if (!--a3)
          {
            break;
          }

          if ((a1 & 0xF) == 0)
          {
            v15 = 4080;
            goto LABEL_11;
          }
        }

        __asm { MSR             TCO, #0 }

        return a1[-1].u8[15] - a2[-1].u8[15];
      }
    }
  }

  else
  {
LABEL_32:
    while (1)
    {
      v27 = *a1++;
      v28 = v27;
      v29 = *a2++;
      v21 = vceqq_s8(v28, v29);
      v20 = vandq_s8(v28, v21);
      v21.i8[0] = vminvq_u8(v20);
      if (!v21.i32[0])
      {
        break;
      }

      v30 = a3 > 0x10;
      a3 -= 16;
      if (!v30)
      {
        __asm { MSR             TCO, #0 }

        v32 = a3 - 1;
        v33 = a1->u8[v32];
        v34 = a2->u8[v32];
        return 0;
      }
    }
  }

  __asm { MSR             TCO, #0 }

  v36 = vorrq_s8(vcgtq_u8(v20, veorq_s8(v21, v21)), xmmword_6460);
  v36.i8[0] = vminvq_u8(v36);
  if (v36.u32[0] < a3)
  {
    return a1[-1].u8[v36.u32[0]] - a2[-1].u8[v36.u32[0]];
  }

  v37 = a3 - 17;
  v38 = a1->u8[v37];
  v39 = a2->u8[v37];
  return 0;
}

unint64_t _platform_memchr(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (a3 < 0)
  {
    v13 = vdupq_n_s8(a2);
    v14 = a1 & 0xF;
    v15 = a1 & 0xFFFFFFFFFFFFFFF0;
    v16 = *&algn_6650[-v14];
    for (i = vorrq_s8(vsubq_s8(*v15, v13), v16); ; i = vsubq_s8(v18, v13))
    {
      v16.i8[0] = vminvq_u8(i);
      if (!v16.i32[0])
      {
        break;
      }

      v18 = *(v15 + 16);
      v15 += 16;
    }

    v19 = vorrq_s8(vcgtq_u8(i, veorq_s8(v13, v13)), xmmword_6640);
    v19.i8[0] = vminvq_u8(v19);
    return v15 + v19.u32[0];
  }

  else
  {
    v3 = vdupq_n_s8(a2);
    v4 = a1 & 0xF;
    v5 = a1 & 0xFFFFFFFFFFFFFFF0;
    v6 = *&algn_6650[-v4];
    v7 = vorrq_s8(vsubq_s8(*v5, v3), v6);
    v8 = a3 + v4;
    while (1)
    {
      v6.i8[0] = vminvq_u8(v7);
      if (!v6.i32[0])
      {
        break;
      }

      v10 = v8 > 0x10;
      v8 -= 16;
      if (!v10)
      {
        return 0;
      }

      v9 = *(v5 + 16);
      v5 += 16;
      v7 = vsubq_s8(v9, v3);
    }

    v12 = vorrq_s8(vcgtq_u8(v7, veorq_s8(v3, v3)), xmmword_6640);
    v12.i8[0] = vminvq_u8(v12);
    result = v5 + v12.u32[0];
    if (v12.u32[0] >= v8)
    {
      return 0;
    }
  }

  return result;
}

unint64_t _platform_memcmp(unint64_t *a1, unint64_t *a2, unint64_t a3)
{
  v3 = a3 >= 0x10;
  v4 = a3 - 16;
  if (!v3)
  {
    v3 = __CFADD__(v4, 8);
    v17 = v4 + 8;
    if (v3)
    {
      v19 = *a1++;
      v18 = v19;
      v21 = *a2++;
      v20 = v21;
      v22 = v18 - v21;
      if (v18 != v21)
      {
        goto LABEL_18;
      }

      v17 -= 8;
    }

    v3 = __CFADD__(v17, 4);
    v23 = v17 + 4;
    if (!v3)
    {
      v23 += 4;
      v22 = 0;
      goto LABEL_20;
    }

    v24 = *a1;
    a1 = (a1 + 4);
    v18 = v24;
    v25 = *a2;
    a2 = (a2 + 4);
    v20 = v25;
    v22 = v18 - v25;
    if (v18 == v25)
    {
      do
      {
LABEL_20:
        v3 = v23-- != 0;
        if (!v3)
        {
          break;
        }

        v28 = *a1;
        a1 = (a1 + 1);
        v27 = v28;
        v29 = *a2;
        a2 = (a2 + 1);
        v22 = v27 - v29;
      }

      while (v27 == v29);
      return v22;
    }

LABEL_18:
    v26 = __clz(bswap64(v22)) & 0xFFFFFFFFFFFFFFF8;
    return (v18 >> v26) - (v20 >> v26);
  }

  if (v4)
  {
    v5 = (a1 + v4);
    v6 = (a2 + v4);
    while (1)
    {
      v7 = *a1;
      a1 += 2;
      v8 = v7;
      v9 = *a2;
      a2 += 2;
      v10 = vceqq_s8(v8, v9);
      v8.i8[0] = vminvq_u8(v10);
      if (!v8.i32[0])
      {
        break;
      }

      v11 = v4 > 0x10;
      v4 -= 16;
      if (!v11)
      {
        a1 = v5;
        a2 = v6;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v12 = *a1;
    a1 += 2;
    v13 = v12;
    v14 = *a2;
    a2 += 2;
    v10 = vceqq_s8(v13, v14);
    v13.i8[0] = vminvq_u8(v10);
    if (v13.i32[0])
    {
      return 0;
    }
  }

  v16 = vorrq_s8(v10, xmmword_6760);
  v16.i8[0] = vminvq_u8(v16);
  return *(a1 + v16.u32[0] - 16) - *(a2 + v16.u32[0] - 16);
}

unint64_t _platform_strnlen(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    return _platform_strlen(a1);
  }

  if (!a2)
  {
    return 0;
  }

  v3 = a1 & 0xFFFFFFFFFFFFFFF0;
  v4 = &algn_68B0[-(a1 & 0xF)];
  v5 = *v4;
  v6 = vorrq_s8(*(a1 & 0xFFFFFFFFFFFFFFF0), *v4);
  v7 = a2 + (a1 & 0xF);
  while (1)
  {
    v5.i8[0] = vminvq_u8(v6);
    if (!v5.i32[0])
    {
      break;
    }

    v9 = v7 > 0x10;
    v7 -= 16;
    if (!v9)
    {
      return v3 - a1 + v7 + 16;
    }

    v8 = *(v3 + 16);
    v3 += 16;
    v6 = v8;
  }

  v10 = veorq_s8(v5, v5);
  v10.i8[0] = vminvq_u8(vorrq_s8(vcgtq_u8(v6, v10), xmmword_68A0));
  v11 = v3 - a1;
  if (v7 >= v10.u32[0])
  {
    v7 = v10.u32[0];
  }

  return v11 + v7;
}

unint64_t _platform_strlen(uint64_t a1)
{
  v1 = a1 & 0xFFFFFFFFFFFFFFF0;
  v2 = &algn_68B0[-(a1 & 0xF)];
  v3 = *v2;
  for (i = vorrq_s8(*(a1 & 0xFFFFFFFFFFFFFFF0), *v2); ; i = v5)
  {
    v3.i8[0] = vminvq_u8(i);
    if (!v3.i32[0])
    {
      break;
    }

    v5 = *(v1 + 16);
    v1 += 16;
  }

  v6 = veorq_s8(v3, v3);
  v6.i8[0] = vminvq_u8(vorrq_s8(vcgtq_u8(i, v6), xmmword_68A0));
  return v1 - a1 + v6.u32[0];
}

unint64_t _platform_strncmp_VARIANT_Base(int8x16_t *a1, int8x16_t *a2, unint64_t a3)
{
  v3 = 0;
  if (!a3)
  {
    return v3;
  }

  while ((a1 & 0xF) != 0)
  {
    v5 = a1->u8[0];
    a1 = (a1 + 1);
    v4 = v5;
    v6 = a2->u8[0];
    a2 = (a2 + 1);
    v3 = v4 - v6;
    if (v4 == v6 && v4 != 0)
    {
      if (--a3)
      {
        continue;
      }
    }

    return v3;
  }

  if ((a2 & 0xF) == 0)
  {
    goto LABEL_30;
  }

  v9 = -a2 & 0xFF0;
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (a3 > v9)
  {
    v10 = a3 - v9;
    while (1)
    {
      v11 = *a1++;
      v12 = v11;
      v13 = *a2++;
      v15 = vceqq_s8(v12, v13);
      v14 = vandq_s8(v12, v15);
      v15.i8[0] = vminvq_u8(v14);
      if (!v15.i32[0])
      {
        break;
      }

      v9 -= 16;
      if (!v9)
      {
        a3 = v10;
LABEL_16:
        while (1)
        {
          v17 = a1->u8[0];
          a1 = (a1 + 1);
          v16 = v17;
          v18 = a2->u8[0];
          a2 = (a2 + 1);
          v3 = v16 - v18;
          if (v16 != v18 || v16 == 0)
          {
            return v3;
          }

          if (!--a3)
          {
            return v3;
          }

          if ((a1 & 0xF) == 0)
          {
            v9 = 4080;
            goto LABEL_11;
          }
        }
      }
    }
  }

  else
  {
LABEL_30:
    while (1)
    {
      v20 = *a1++;
      v21 = v20;
      v22 = *a2++;
      v15 = vceqq_s8(v21, v22);
      v14 = vandq_s8(v21, v15);
      v15.i8[0] = vminvq_u8(v14);
      if (!v15.i32[0])
      {
        break;
      }

      v23 = a3 > 0x10;
      a3 -= 16;
      if (!v23)
      {
        return 0;
      }
    }
  }

  v24 = vorrq_s8(vcgtq_u8(v14, veorq_s8(v15, v15)), xmmword_69C0);
  v24.i8[0] = vminvq_u8(v24);
  if (v24.u32[0] >= a3)
  {
    return 0;
  }

  else
  {
    return a1[-1].u8[v24.u32[0]] - a2[-1].u8[v24.u32[0]];
  }
}

int8x16_t *_platform_bzero(int8x16_t *result, unint64_t a2, int8x16_t a3)
{
  v3 = veorq_s8(a3, a3);
  if (a2 < 0x40)
  {
    JUMPOUT(0x6BF4);
  }

  if (a2 < 0x8000)
  {
    JUMPOUT(0x6BACLL);
  }

  *result = v3;
  result[1] = v3;
  result[2] = v3;
  result[3] = v3;
  v4 = &result[4] & 0xFFFFFFFFFFFFFFC0;
  v5 = result[-4].u64 + a2 - v4;
  if (result->u64 + a2 > v4 + 64)
  {
    do
    {
      __asm { DC              ZVA, X3 }

      v4 += 64;
      v10 = v5 > 0x40;
      v5 -= 64;
    }

    while (v10);
  }

  v11 = (v4 + v5);
  *v11 = v3;
  v11[1] = v3;
  v11[2] = v3;
  v11[3] = v3;
  return result;
}

int64x2_t *_platform_memset(int64x2_t *result, unsigned __int8 a2, unint64_t a3)
{
  v3 = 0x101010101010101 * a2;
  v4 = vdupq_n_s64(v3);
  v5 = result;
  if (a3 < 0x40)
  {
    while (1)
    {
      v15 = a3 >= 8;
      a3 -= 8;
      if (!v15)
      {
        break;
      }

      *v5++ = v3;
    }

    for (i = a3 + 8; i; --i)
    {
      *v5 = v3;
      v5 = (v5 + 1);
    }
  }

  else if (a3 < 0x8000)
  {
    *result = v4;
    result[1] = v4;
    result[2] = v4;
    result[3] = v4;
    v11 = (&result[4] & 0xFFFFFFFFFFFFFFC0);
    v12 = result->u64 + a3;
    v8 = v12 > (v11 + 4);
    for (j = v12 - (v11 + 4); v8; j -= 64)
    {
      *v11 = v4;
      v11[1] = v4;
      v11[2] = v4;
      v11[3] = v4;
      v11 += 4;
      v8 = j > 0x40;
    }

    v14 = (v11 + j);
    *v14 = v4;
    v14[1] = v4;
    v14[2] = v4;
    v14[3] = v4;
  }

  else
  {
    if (!v3)
    {
      JUMPOUT(0x6B00);
    }

    *result = v4;
    result[1] = v4;
    result[2] = v4;
    result[3] = v4;
    v6 = (&result[4] & 0xFFFFFFFFFFFFFFC0);
    v7 = result->u64 + a3;
    v8 = v7 > (v6 + 4);
    for (k = v7 - (v6 + 4); v8; k -= 64)
    {
      *v6 = v4;
      v6[1] = v4;
      v6[2] = v4;
      v6[3] = v4;
      v6 += 4;
      v8 = k > 0x40;
    }

    v10 = (v6 + k);
    *v10 = v4;
    v10[1] = v4;
    v10[2] = v4;
    v10[3] = v4;
  }

  return result;
}

BOOL _platform_memcmp_zero_aligned8(int8x16_t *a1, unint64_t a2)
{
  if (a2 < 0x40)
  {
    if (a2)
    {
      v12 = 0;
      do
      {
        v13 = a1->i64[0];
        a1 = (a1 + 8);
        v12 |= v13;
        v9 = a2 > 8;
        a2 -= 8;
      }

      while (v9);
      return v12 != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a1;
    v3 = (&a1[4] & 0xFFFFFFFFFFFFFFC0);
    v4 = *v2;
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    v8 = a2 - (v3 - v2);
    v9 = v8 > 0x40;
    for (i = v8 - 64; v9; i -= 64)
    {
      v4 = vorrq_s8(v4, *v3);
      v5 = vorrq_s8(v5, v3[1]);
      v6 = vorrq_s8(v6, v3[2]);
      v7 = vorrq_s8(v7, v3[3]);
      v3 += 4;
      v9 = i > 0x40;
    }

    return vmaxvq_u8(vorrq_s8(vorrq_s8(vorrq_s8(v4, *(v3 + i)), vorrq_s8(v5, *(&v3[1] + i))), vorrq_s8(vorrq_s8(v6, *(&v3[2] + i)), vorrq_s8(v7, *(&v3[3] + i))))) != 0;
  }
}

void _platform_memset_pattern4(uint64_t a1, const float *a2, unint64_t a3)
{
  vld1q_dup_f32(a2);
  if (a3 >= 0x40)
  {
    if (a3 >= 0x8000)
    {
      JUMPOUT(0x6D34);
    }

    JUMPOUT(0x6DB0);
  }

  JUMPOUT(0x6E30);
}

void _platform_memset_pattern8(uint64_t a1, const double *a2, unint64_t a3)
{
  vld1q_dup_f64(a2);
  if (a3 >= 0x40)
  {
    if (a3 >= 0x8000)
    {
      JUMPOUT(0x6D34);
    }

    JUMPOUT(0x6DB0);
  }

  JUMPOUT(0x6E30);
}

int8x16_t *_platform_memset_pattern16(int8x16_t *result, int8x16_t *a2, unint64_t a3)
{
  v3 = *a2;
  if (a3 < 0x40)
  {
    while (1)
    {
      v16 = a3 >= 0x10;
      a3 -= 16;
      if (!v16)
      {
        break;
      }

      *result++ = v3;
    }

    v17 = a3 + 16;
    if (v17)
    {
      v19 = v3.u64[1];
      v18 = v3.i64[0];
      do
      {
        result->i8[0] = v18;
        result = (result + 1);
        v18 = (v18 >> 8) | (v19 << 56);
        v19 >>= 8;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    if (a3 < 0x8000)
    {
      v13 = *a2;
      *result = v3;
      result[1] = v3;
      result[2] = v3;
      result[3] = v3;
      v5 = (&result[4] & 0xFFFFFFFFFFFFFFC0);
      v14 = result->u64 + a3;
      v7 = v14 > (v5 + 4);
      v8 = v14 - (v5 + 4);
      v9 = (v5 - result) & 0xF;
      if (v7)
      {
        v15 = vqtbl1q_s8(v3, *(qword_6E80 + v9));
        do
        {
          *v5 = v15;
          v5[1] = v15;
          v5[2] = v15;
          v5[3] = v15;
          v5 += 4;
          v7 = v8 > 0x40;
          v8 -= 64;
        }

        while (v7);
      }
    }

    else
    {
      v4 = *a2;
      *result = v3;
      result[1] = v3;
      result[2] = v3;
      result[3] = v3;
      v5 = (&result[4] & 0xFFFFFFFFFFFFFFC0);
      v6 = result->u64 + a3;
      v7 = v6 > (v5 + 4);
      v8 = v6 - (v5 + 4);
      v9 = (v5 - result) & 0xF;
      if (v7)
      {
        v10 = vqtbl1q_s8(v3, *(qword_6E80 + v9));
        do
        {
          *v5 = v10;
          v5[1] = v10;
          v5[2] = v10;
          v5[3] = v10;
          v5 += 4;
          v7 = v8 > 0x40;
          v8 -= 64;
        }

        while (v7);
      }
    }

    v11 = vqtbl1q_s8(v3, *(qword_6E80 + ((v9 + v8) & 0xF)));
    v12 = (v5 + v8);
    *v12 = v11;
    v12[1] = v11;
    v12[2] = v11;
    v12[3] = v11;
  }

  return result;
}

unint64_t _platform_strcmp_VARIANT_MTE(int8x16_t *a1, int8x16_t *a2)
{
  while ((a1 & 0xF) != 0)
  {
    v3 = a1->u8[0];
    a1 = (a1 + 1);
    v2 = v3;
    v4 = a2->u8[0];
    a2 = (a2 + 1);
    v5 = v2 - v4;
    if (v2 != v4 || v2 == 0)
    {
      return v5;
    }
  }

  v8 = a1->u8[0];
  v9 = a2->u8[0];
  __asm { MSR             TCO, #1 }

  if ((a2 & 0xF) != 0)
  {
    v14 = -a2 & 0xFF0;
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_10:
    while (1)
    {
      v15 = *a1++;
      v16 = v15;
      v17 = *a2++;
      v19 = vceqq_s8(v16, v17);
      v18 = vandq_s8(v16, v19);
      v19.i8[0] = vminvq_u8(v18);
      if (!v19.i32[0])
      {
        break;
      }

      v14 -= 16;
      if (!v14)
      {
LABEL_12:
        while (1)
        {
          v21 = a1->u8[0];
          a1 = (a1 + 1);
          v20 = v21;
          v22 = a2->u8[0];
          a2 = (a2 + 1);
          v23 = v20 - v22;
          if (v20 != v22 || v20 == 0)
          {
            break;
          }

          if ((a1 & 0xF) == 0)
          {
            v14 = 4080;
            goto LABEL_10;
          }
        }

        __asm { MSR             TCO, #0 }

        v26 = a1[-1].u8[15];
        v27 = a2[-1].u8[15];
        return v23;
      }
    }
  }

  else
  {
    do
    {
      v28 = *a1++;
      v29 = v28;
      v30 = *a2++;
      v19 = vceqq_s8(v29, v30);
      v18 = vandq_s8(v29, v19);
      v19.i8[0] = vminvq_u8(v18);
    }

    while (v19.i32[0]);
  }

  __asm { MSR             TCO, #0 }

  v32 = vorrq_s8(vcgtq_u8(v18, veorq_s8(v19, v19)), xmmword_6EA0);
  v32.i8[0] = vminvq_u8(v32);
  return a1[-1].u8[v32.u32[0]] - a2[-1].u8[v32.u32[0]];
}

unint64_t (*_platform_strcmp())(int8x16_t *a1, int8x16_t *a2)
{
  if ((__security_config & 4) != 0)
  {
    return _platform_strcmp_VARIANT_MTE;
  }

  else
  {
    return _platform_strcmp_VARIANT_Base;
  }
}

unint64_t (*_platform_strncmp())(int8x16_t *a1, int8x16_t *a2, unint64_t a3)
{
  if ((__security_config & 4) != 0)
  {
    return _platform_strncmp_VARIANT_MTE;
  }

  else
  {
    return _platform_strncmp_VARIANT_Base;
  }
}

unsigned __int8 *_platform_strchr(uint64_t a1, unsigned __int8 a2)
{
  v2 = vdupq_n_s8(a2);
  v3 = a1 & 0xF;
  v4 = a1 & 0xFFFFFFFFFFFFFFF0;
  v5 = *&algn_7410[-v3];
  for (i = vorrq_s8(vbicq_s8(*v4, vceqq_s8(*v4, v2)), v5); ; i = vbicq_s8(v7, v5))
  {
    v5.i8[0] = vminvq_u8(i);
    if (!v5.i32[0])
    {
      break;
    }

    v7 = *(v4 + 16);
    v4 += 16;
    v5 = vceqq_s8(v7, v2);
  }

  v8 = vorrq_s8(vcgtq_u8(i, veorq_s8(v5, v5)), xmmword_7400);
  v8.i8[0] = vminvq_u8(v8);
  result = (v4 + v8.u32[0]);
  if (a2 != *result)
  {
    return 0;
  }

  return result;
}

uint64_t swapcontext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2)
  {
    *a1 &= ~0x80000000;
    v10 = *(a1 + 32);
    v11 = getcontext(a1, a2, a3, a4, a5, a6, a7, a8, v9);
    *(a1 + 32) = v10;
    if (!v11 && (*a1 & 0x80000000) == 0)
    {
      *a1 |= 0x80000000;
      return setcontext(a2);
    }

    return v11;
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

void _ctx_done(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    _exit(0);
  }

  *(a1 + 40) = 0;
  setcontext(*(a1 + 32));
  __break(1u);
}

int8x16_t *makecontext(int8x16_t *result, uint64_t a2, int a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = result;
  if (result)
  {
    if (result->i64[1] && (a3 & 0x80000000) == 0 && a3 <= 0x40000)
    {
      result[3].i64[0] = result[4].i64;
      result = _platform_bzero(result->i64[1], result[1].u64[0], a4);
      v21 = (v24[1] + v24[2]) & 0xFFFFFFFFFFFFFFF0;
      if (a3 < 8)
      {
        v16 = 8;
      }

      else
      {
        v16 = a3;
      }

      v20 = ((v21 - 4 * v16) & 0xFFFFFFFFFFFFFFF0);
      v19 = &a10;
      for (i = 0; i < a3; ++i)
      {
        v10 = *v19;
        v19 += 2;
        *v20++ = v10;
      }

      v17 = v24[6];
      *(v17 + 284) &= ~1u;
      if (!v21 || (*(v17 + 284) & 1) != 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21;
      }

      *(v17 + 248) = v15;
      if ((v21 - 4 * v16) & 0xFFFFFFFFFFFFFFF0) == 0 || (*(v17 + 284))
      {
        v14 = (v21 - 4 * v16) & 0xFFFFFFFFFFFFFFF0;
      }

      else
      {
        v14 = (v21 - 4 * v16) & 0xFFFFFFFFFFFFFFF0;
      }

      *(v17 + 264) = v14;
      if (_ctx_start)
      {
        if ((*(v17 + 284) & 1) == 0)
        {
          *(v17 + 284) &= ~2u;
          if ((*(v17 + 284) & 0xFF000000) != 0)
          {
            v13 = *(v17 + 284) & 0xFF000000 | 0x77D3000000000000;
          }
        }

        v12 = _ctx_start;
      }

      else
      {
        v12 = 0;
      }

      *(v17 + 256) = v12;
      *(v17 + 284) &= ~8u;
      *(v17 + 168) = v24;
      v11 = 0;
      if (a2)
      {
        v11 = a2;
      }

      *(v17 + 176) = v11 ^ *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 56);
    }

    else
    {
      result[2].i64[1] = 0;
    }
  }

  return result;
}

uint64_t populate_signal_stack_context(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v6 = 0uLL;
  v7 = 0;
  __sigaltstack();
  *&v6 = v8;
  v5.rlim_cur = 0;
  v5.rlim_max = 0;
  if (!getrlimit(3, &v5))
  {
    *(&v6 + 1) = v5.rlim_cur;
  }

  v2 = v9;
  *(v9 + 8) = v6;
  *(v2 + 24) = v7;
  sigprocmask(2, 0, (v9 + 4));
  v4 = v9 + 64;
  *(v9 + 48) = v9 + 64;
  *(v9 + 40) = 816;
  *(v9 + 32) = __in_sigtramp;
  return v4;
}

uint64_t setcontext(uint64_t a1)
{
  if (*(a1 + 40))
  {
    sigprocmask(3, (a1 + 4), 0);
    v1 = *(a1 + 48);
    return _setcontext(a1 + 64);
  }

  else
  {
    *__error() = 22;
    return -1;
  }
}

uint64_t _setcontext(uint64_t a1)
{
  v1 = *(a1 + 168);
  v2 = *(a1 + 176);
  v3 = *(a1 + 184);
  v4 = *(a1 + 192);
  v5 = *(a1 + 200);
  v6 = *(a1 + 208);
  v7 = *(a1 + 216);
  v8 = *(a1 + 224);
  v9 = *(a1 + 232);
  v10 = *(a1 + 240);
  v11 = *(a1 + 424);
  v12 = *(a1 + 440);
  v13 = *(a1 + 456);
  v14 = *(a1 + 472);
  v15 = *(a1 + 488);
  v16 = *(a1 + 504);
  v17 = *(a1 + 520);
  v18 = *(a1 + 536);
  v19 = *(a1 + 248);
  v21 = **(a1 + 264);
  v22 = *(a1 + 256);
  if ((*(a1 + 284) & 2) == 0)
  {
    v20 = *(a1 + 256);
  }

  return 0;
}

uint64_t getcontext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = populate_signal_stack_context(a1, vars0);
  v28 = vars0[1];
  *(v27 + 248) = vars0[0];
  *(v27 + 256) = v28;
  *(v27 + 264) = &a9;
  *(v27 + 284) = 2;
  *(v27 + 168) = v9;
  *(v27 + 176) = v10;
  *(v27 + 184) = v11;
  *(v27 + 192) = v12;
  *(v27 + 200) = v13;
  *(v27 + 208) = v14;
  *(v27 + 216) = v15;
  *(v27 + 224) = v16;
  *(v27 + 232) = v17;
  *(v27 + 240) = v18;
  *(v27 + 16) = 0;
  *(v27 + 424) = v19;
  *(v27 + 440) = v20;
  *(v27 + 456) = v21;
  *(v27 + 472) = v22;
  *(v27 + 488) = v23;
  *(v27 + 504) = v24;
  *(v27 + 520) = v25;
  *(v27 + 536) = v26;
  return 0;
}

BOOL timingsafe_enable_if_supported()
{
  v7 = 0;
  v6 = MEMORY[0xFFFFFC010] & 0x200200000000000;
  if ((MEMORY[0xFFFFFC010] & 0x200200000000000 & 0x200000000000000) != 0)
  {
    v7 = is_dit_enabled() != 0;
    __asm { MSR             DIT, #1 }
  }

  speculation_barrier(v6);
  return v7;
}

void speculation_barrier(uint64_t a1)
{
  if ((a1 & 0x200000000000) != 0)
  {
    sb();
  }

  else
  {
    __dsb(0xFu);
    __isb(0xFu);
  }
}

uint64_t timingsafe_restore_if_supported(uint64_t result)
{
  if ((MEMORY[0xFFFFFC010] & 0x200200000000000 & 0x200000000000000) != 0 && (result & 1) == 0)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

void OSAtomicFifoEnqueue_cold_1()
{
  qword_14008 = "BUG IN LIBPLATFORM: Invalid commpage pfz base.";
  qword_14038 = 0;
  __break(0xB001u);
}

void _os_lock_corruption_abort(uint64_t a1, uint64_t a2)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: os_lock is corrupt";
  qword_14038 = a2;
  __break(0xB001u);
}

void _os_unfair_lock_recursive_abort(unsigned int a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Trying to recursively lock an os_unfair_lock";
  qword_14038 = a1;
  __break(0xB001u);
}

void _os_unfair_lock_unowned_abort(unsigned int a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Unlock of an os_unfair_lock not owned by current thread";
  qword_14038 = a1;
  __break(0xB001u);
}

void _os_unfair_lock_corruption_abort(unsigned int a1)
{
  if (a1 - 512 <= 0x3FE00)
  {
    qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: os_unfair_lock is corrupt, or owner thread exited without unlocking";
    qword_14038 = a1;
    __break(0xB001u);
  }

  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: os_unfair_lock is corrupt";
  qword_14038 = a1;
  __break(0xB001u);
}

uint64_t os_unfair_recursive_lock_trylock(uint64_t a1)
{
  v2 = 0;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(a1, &v2, v1, memory_order_acquire, memory_order_acquire);
  if (!v2)
  {
    return 1;
  }

  if ((v2 | 1) == v1)
  {
    ++*(a1 + 4);
    return 1;
  }

  return 0;
}

void _os_once_gate_recursive_abort(unsigned int a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Trying to recursively lock an os_once_t";
  qword_14038 = a1;
  __break(0xB001u);
}

void _os_once_gate_unowned_abort(unsigned int a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Unlock of an os_once_t not owned by current thread";
  qword_14038 = a1;
  __break(0xB001u);
}

void _os_once_gate_corruption_abort(unsigned int a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: os_once_t is corrupt";
  qword_14038 = a1;
  __break(0xB001u);
}

void _os_lock_recursive_abort(unsigned int a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Trying to recursively lock an os_lock";
  qword_14038 = a1;
  __break(0xB001u);
}

void os_unfair_lock_assert_owner_cold_1(unsigned int a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Assertion failed: Lock unexpectedly not owned by current thread";
  qword_14038 = a1;
  __break(0xB001u);
}

void os_unfair_lock_assert_not_owner_cold_1(unsigned int a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Assertion failed: Lock unexpectedly owned by current thread";
  qword_14038 = a1;
  __break(0xB001u);
}

atomic_uint *os_unfair_recursive_lock_tryunlock4objc_cold_1(atomic_uint *result, int a2)
{
  v2 = atomic_exchange_explicit(result, 0, memory_order_release);
  if (v2 != a2)
  {
    return _os_unfair_lock_unlock_slow(result, a2, v2);
  }

  return result;
}

uint64_t _os_once_cold_1(atomic_ullong *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = 0;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  atomic_compare_exchange_strong_explicit(a1, &v3, v4, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    return _os_once_gate_wait(a1, a2, a3, v4);
  }

  else
  {
    return _os_once_callout(a1, a2, a3, v4);
  }
}

void _os_alloc_cold_1(uint64_t a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Requested allocation size is invalid";
  qword_14038 = a1;
  __break(0xB001u);
}

void _os_semaphore_create_cold_1()
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Allocating semaphore failed with MIG_REPLY_MISMATCH";
  qword_14038 = -301;
  __break(0xB001u);
}

void _os_semaphore_create_cold_2(int a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Creating semaphore failed, possible port leak";
  qword_14038 = a1;
  __break(0xB001u);
}

void _os_semaphore_dispose_cold_1(int a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Destroying semaphore failed";
  qword_14038 = a1;
  __break(0xB001u);
}

void _os_semaphore_signal_cold_1(int a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Signaling semaphore failed";
  qword_14038 = a1;
  __break(0xB001u);
}

void _os_semaphore_wait_cold_1(int a1)
{
  qword_14008 = "BUG IN CLIENT OF LIBPLATFORM: Waiting on semaphore failed";
  qword_14038 = a1;
  __break(0xB001u);
  _platform_strcmp_0();
}