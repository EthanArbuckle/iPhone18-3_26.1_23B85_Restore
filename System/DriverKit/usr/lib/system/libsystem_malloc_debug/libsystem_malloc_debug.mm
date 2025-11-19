uint64_t memtag_assign_tag(uint64_t a1, uint64_t a2)
{
  _X9 = a1;
  __asm { LDG             X9, [X9] }

  _X8 = _X9;
  _X9 = 1;
  __asm { GMI             X8, X8, X9 }

  v24 = _X8;
  if ((a1 & -vm_page_size) == ((a1 - 16) & -vm_page_size))
  {
    _X9 = a1 - 16;
    __asm { LDG             X9, [X9] }

    _X8 = _X9;
    _X9 = v24;
    __asm { GMI             X8, X8, X9 }

    v24 = _X8;
  }

  if (((a1 + a2 - 1) & -vm_page_size) == ((a1 + a2) & -vm_page_size))
  {
    _X9 = a1 + a2;
    __asm { LDG             X9, [X9] }

    _X8 = _X9;
    _X9 = v24;
    __asm { GMI             X8, X8, X9 }

    v24 = _X8;
  }

  _X8 = a1;
  _X9 = v24;
  __asm { IRG             X0, X8, X9 }

  return result;
}

uint64_t memtag_init_chunk(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v20 = 0;
  v19 = 0;
  for (i = 0; i < a2 / a3; ++i)
  {
    v17 = 1;
    if (v20)
    {
      _X8 = v20;
      _X9 = 1;
      __asm { GMI             X8, X8, X9 }

      v17 = _X8;
    }

    _X8 = a1 + i * a3;
    _X9 = v17;
    __asm { IRG             X8, X8, X9 }

    v20 = _X8;
    if (!i)
    {
      v19 = _X8;
    }

    if ((a3 & 0x1FF) != 0)
    {
      if ((a3 & 0xF) != 0)
      {
        __break(1u);
        JUMPOUT(0xDDCLL);
      }

      if ((_X8 & 0xF) != 0)
      {
        __break(1u);
        JUMPOUT(0xDF4);
      }

      __asm { STG             X8, [X8] }

      _X8 = _X8 + a3;
      __asm { STG             X8, [X8,#-0x10] }

      if (a3 >= 0x21)
      {
        _X8 = (v20 + 31) & 0xFFFFFFFFFFFFFFE0;
        __asm { ST2G            X8, [X8] }

        _X8 = (v20 + a3) & 0xFFFFFFFFFFFFFFE0;
        __asm { ST2G            X8, [X8,#-0x20] }
      }

      for (j = (v20 + 63) & 0xFFFFFFFFFFFFFFC0; j < ((v20 + a3) & 0xFFFFFFFFFFFFFFC0); j += 64)
      {
        __asm { DC              GVA, X8 }
      }
    }

    else
    {
      v22 = _X8;
      if ((_X8 & 0x1FF) != 0)
      {
        __break(1u);
        JUMPOUT(0xEE4);
      }

      if ((a3 & 0x1FF) != 0)
      {
        __break(1u);
        JUMPOUT(0xEFCLL);
      }

      while (v22 < _X8 + a3)
      {
        __asm
        {
          DC              GVA, X8
          DC              GVA, X8
          DC              GVA, X8
          DC              GVA, X8
          DC              GVA, X8
          DC              GVA, X8
          DC              GVA, X8
          DC              GVA, X8
        }

        v22 += 512;
      }
    }
  }

  return v19;
}

uint64_t memtag_handle_mismatch(_BYTE *a1)
{
  qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: pointer being freed was not valid";
  qword_D8158 = a1;
  _X8 = a1;
  __asm { LDG             X8, [X8] }

  if ((HIBYTE(a1) & 0xF) == (HIBYTE(_X8) & 0xF))
  {
    return 0;
  }

  else
  {
    qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: MTE tag mismatch (probable double-free)";
    qword_D8158 = HIBYTE(_X8) & 0xFu | (16 * (HIBYTE(a1) & 0xF));
    v7 = *a1;
    qword_D8128 = "BUG IN CLIENT OF LIBMALLOC: ignored previous invalid free due to MTE tag mismatch in soft mode (probable double-free)";
    find_zone_and_free(_X8, 0);
    return 1;
  }
}

uint64_t bitarray_size(unsigned int a1)
{
  if (a1 > 0x2D)
  {
    __assert_rtn("bitarray_size", "bitarray.c", 283, "log_size <= MAX_LEVEL * NB");
  }

  v2 = 8;
  if (a1 > 9)
  {
    v2 = levels_num_words[(a1 - 10) / 9] + (1 << (a1 - 6));
  }

  return 8 * v2;
}

BOOL bitarray_get(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x2D)
  {
    __assert_rtn("bitarray_get", "bitarray.c", 301, "log_size <= MAX_LEVEL * NB");
  }

  if (a3 >= 1 << a2)
  {
    __assert_rtn("bitarray_get", "bitarray.c", 302, "index < (1 << log_size)");
  }

  if (a2 > 9)
  {
    return GET_SIMPLE(a1 + 8 * levels_num_words[(a2 - 10) / 9] + 64 * (a3 >> 9), a3 & 0x1FF);
  }

  else
  {
    return GET_SIMPLE(a1, a3);
  }
}

uint64_t bitarray_set(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  if (a2 >= 0x2E)
  {
    __assert_rtn("bitarray_set", "bitarray.c", 317, "log_size <= MAX_LEVEL * NB");
  }

  if (v10 >= 1 << v11)
  {
    __assert_rtn("bitarray_set", "bitarray.c", 318, "index < (1 << log_size)");
  }

  if (v11 > 9)
  {
    v9 = (v11 - 10) / 9;
    v8 = 0;
    v4 = v10 & 0x1FF;
    v10 >>= 9;
    if (SET_CHANGED_GO_DOWN(v12 + 8 * levels_num_words[v9] + 64 * v10, v4, &v8))
    {
      if (!v8)
      {
        if (v9)
        {
          if (v9 != 1)
          {
            if (v9 != 2)
            {
              if (v9 != 3)
              {
                qword_D8128 = "FATAL ERROR - invalid bitarray level";
                qword_D8158 = v9;
                __break(1u);
                JUMPOUT(0x1680);
              }

              v5 = v10 & 0x1FF;
              v10 >>= 9;
              if (!SET_GO_DOWN(v12 + 64 * v10 + 16810048, v5))
              {
                return 1;
              }
            }

            v6 = v10 & 0x1FF;
            v10 >>= 9;
            if (!SET_GO_DOWN(v12 + 64 * v10 + 32832, v6))
            {
              return 1;
            }
          }

          v7 = v10 & 0x1FF;
          v10 >>= 9;
          if (!SET_GO_DOWN(v12 + 64 * v10 + 64, v7))
          {
            return 1;
          }
        }

        SET_SIMPLE(v12, v10 & 0x1FF);
        return 1;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return SET_CHANGED(v12, v10);
  }
}

uint64_t bitarray_zap(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  if (a2 >= 0x2E)
  {
    __assert_rtn("bitarray_zap", "bitarray.c", 370, "log_size <= MAX_LEVEL * NB");
  }

  if (v10 >= 1 << v11)
  {
    __assert_rtn("bitarray_zap", "bitarray.c", 371, "index < (1 << log_size)");
  }

  if (v11 > 9)
  {
    v9 = (v11 - 10) / 9;
    v8 = 0;
    v4 = v10 & 0x1FF;
    v10 >>= 9;
    if (ZAP_CHANGED_GO_DOWN(v12 + 8 * levels_num_words[v9] + 64 * v10, v4, &v8))
    {
      if (v8)
      {
        if (v9)
        {
          if (v9 != 1)
          {
            if (v9 != 2)
            {
              if (v9 != 3)
              {
                qword_D8128 = "FATAL ERROR - invalid bitarray level";
                qword_D8158 = v9;
                __break(1u);
                JUMPOUT(0x1A78);
              }

              v5 = v10 & 0x1FF;
              v10 >>= 9;
              if (!ZAP_GO_DOWN(v12 + 64 * v10 + 16810048, v5))
              {
                return 1;
              }
            }

            v6 = v10 & 0x1FF;
            v10 >>= 9;
            if (!ZAP_GO_DOWN(v12 + 64 * v10 + 32832, v6))
            {
              return 1;
            }
          }

          v7 = v10 & 0x1FF;
          v10 >>= 9;
          if (!ZAP_GO_DOWN(v12 + 64 * v10 + 64, v7))
          {
            return 1;
          }
        }

        ZAP_SIMPLE(v12, v10 & 0x1FF);
        return 1;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return ZAP_CHANGED(v12, v10);
  }
}

uint64_t ZAP_CHANGED_GO_DOWN(uint64_t a1, unsigned int a2, BOOL *a3)
{
  v4 = word_zap_bit_changed_go_down((a1 + 8 * (a2 >> 6)), a2 & 0x3F, a3);
  if ((v4 & 1) != 0 && (all_zeros(a1) & 1) == 0)
  {
    *a3 = 0;
  }

  return v4 & 1;
}

uint64_t bitarray_first_set(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x2E)
  {
    __assert_rtn("bitarray_first_set", "bitarray.c", 487, "log_size <= MAX_LEVEL * NB");
  }

  v9 = a1;
  v8 = FFS(a1);
  if (a2 > 9)
  {
    if (v8)
    {
      v7 = (a2 - 1) / 9;
      v6 = v8 - 1;
      if (v7 != 1)
      {
        switch(v7)
        {
          case 2u:
            v9 = a1 + 64;
            v6 = FFS(a1 + 64 + 64 * v6) + (v6 << 9) - 1;
            break;
          case 3u:
            v3 = FFS(a1 + 64 + 64 * v6);
            v9 = a1 + 32832;
            v6 = FFS(a1 + 32832 + 64 * (v3 + (v6 << 9) - 1)) + ((v3 + (v6 << 9) - 1) << 9) - 1;
            break;
          case 4u:
            v5 = FFS(a1 + 64 + 64 * v6) + (v6 << 9) - 1;
            v2 = FFS(a1 + 32832 + 8 * (8 * v5));
            v9 = a1 + 16810048;
            v6 = FFS(a1 + 16810048 + 8 * (8 * (v2 + (v5 << 9) - 1))) + ((v2 + (v5 << 9) - 1) << 9) - 1;
            break;
          default:
            qword_D8128 = "FATAL ERROR - invalid bitarray level";
            qword_D8158 = v7;
            __break(1u);
            JUMPOUT(0x1EA0);
        }
      }

      return (FFS(v9 + 64 * (1 << (9 * v7 - 9)) + 64 * v6) + (v6 << 9));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return v8;
  }
}

uint64_t FFS(uint64_t a1)
{
  for (i = 0; i < 8; ++i)
  {
    v2 = __ffsll(*(a1 + 8 * i));
    if (v2)
    {
      return v2 + (i << 6);
    }
  }

  return 0;
}

uint64_t bitarray_zap_first_set(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  if (a2 >= 0x2E)
  {
    __assert_rtn("bitarray_zap_first_set", "bitarray.c", 507, "log_size <= MAX_LEVEL * NB");
  }

  v17 = v20;
  v16 = FFS(v20);
  if (v16)
  {
    v15 = (v19 - 1) / 9;
    if (v15)
    {
      v14 = v16 - 1;
      if (v15 != 1)
      {
        switch(v15)
        {
          case 2u:
            v17 += 64;
            v14 = FFS(v17 + 64 * v14) + (v14 << 9) - 1;
            break;
          case 3u:
            v17 += 64;
            v5 = FFS(v17 + 64 * v14);
            v17 += 0x8000;
            v14 = FFS(v17 + 64 * (v5 + (v14 << 9) - 1)) + ((v5 + (v14 << 9) - 1) << 9) - 1;
            break;
          case 4u:
            v17 += 64;
            v3 = FFS(v17 + 64 * v14);
            v17 += 0x8000;
            v8 = v3 + (v14 << 9) - 1;
            v4 = FFS(v17 + 8 * (8 * v8));
            v17 += 0x1000000;
            v14 = FFS(v17 + 8 * (8 * (v4 + (v8 << 9) - 1))) + ((v4 + (v8 << 9) - 1) << 9) - 1;
            break;
          default:
            qword_D8128 = "FATAL ERROR - invalid bitarray level";
            qword_D8158 = v15;
            __break(1u);
            JUMPOUT(0x2240);
        }
      }

      v17 += 64 * (1 << (9 * v15 - 9));
      v14 = FFS(v17 + 64 * v14) + (v14 << 9) - 1;
      v16 = v14;
      *v18 = v14;
      if (v16 >= 1 << v19)
      {
        __assert_rtn("bitarray_zap_first_set", "bitarray.c", 526, "ix < (1 << log_size)");
      }

      --v15;
      v13 = 0;
      v12 = v16 & 0x1FF;
      v16 >>= 9;
      v6 = ZAP_CHANGED_GO_DOWN(v20 + 8 * levels_num_words[v15] + 64 * v16, v12, &v13);
      if (v6)
      {
        if (v13)
        {
          switch(v15)
          {
            case 0u:
              goto LABEL_30;
            case 1u:
              goto LABEL_38;
            case 2u:
              goto LABEL_39;
          }

          if (v15 != 3)
          {
            qword_D8128 = "FATAL ERROR - invalid bitarray level";
            qword_D8158 = v15;
            __break(1u);
            JUMPOUT(0x24E8);
          }

          v9 = v16 & 0x1FF;
          v16 >>= 9;
          if (ZAP_GO_DOWN(v20 + 64 * v16 + 16810048, v9))
          {
LABEL_39:
            v10 = v16 & 0x1FF;
            v16 >>= 9;
            if (ZAP_GO_DOWN(v20 + 64 * v16 + 32832, v10))
            {
LABEL_38:
              v11 = v16 & 0x1FF;
              v16 >>= 9;
              if (ZAP_GO_DOWN(v20 + 64 * v16 + 64, v11))
              {
LABEL_30:
                ZAP_SIMPLE(v20, v16 & 0x1FF);
              }
            }
          }

          return 1;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      *v18 = --v16;
      ZAP_SIMPLE(v20, v16);
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t bitarray_zap_first_set_multiple(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (a2 >= 0x2E)
  {
    __assert_rtn("bitarray_zap_first_set_multiple", "bitarray.c", 578, "log_size <= MAX_LEVEL * NB");
  }

  if (a2 > 9)
  {
    v17 = 0;
    v16 = (a2 - 1) / 9;
    while (v17 < a3)
    {
      v14 = a1;
      v12 = FFS(a1);
      if (!v12)
      {
        return v17;
      }

      v11 = v12 - 1;
      if (v16 != 1)
      {
        switch(v16)
        {
          case 2u:
            v14 = a1 + 64;
            v11 = FFS(a1 + 64 + 64 * v11) + (v11 << 9) - 1;
            break;
          case 3u:
            v5 = FFS(a1 + 64 + 64 * v11);
            v14 = a1 + 32832;
            v11 = FFS(a1 + 32832 + 64 * (v5 + (v11 << 9) - 1)) + ((v5 + (v11 << 9) - 1) << 9) - 1;
            break;
          case 4u:
            v7 = FFS(a1 + 64 + 64 * v11) + (v11 << 9) - 1;
            v4 = FFS(a1 + 32832 + 8 * (8 * v7));
            v14 = a1 + 16810048;
            v11 = FFS(a1 + 16810048 + 8 * (8 * (v4 + (v7 << 9) - 1))) + ((v4 + (v7 << 9) - 1) << 9) - 1;
            break;
          default:
            qword_D8128 = "FATAL ERROR - invalid bitarray level";
            qword_D8158 = v16;
            __break(1u);
            JUMPOUT(0x27C0);
        }
      }

      v15 = v14 + 64 * (1 << (9 * v16 - 9));
      v13 = v11;
      v10 = FFS_and_zap_word(v15 + 64 * v11, a3 - v17, a4 + 4 * v17, v11 << 9);
      if (!v10)
      {
        __assert_rtn("bitarray_zap_first_set_multiple", "bitarray.c", 603, "z");
      }

      v17 += v10;
      if (v17 < a3 || all_zeros(v15 + 64 * v11))
      {
        if (v16 == 1 || (v16 == 2 || (v16 == 3 || (v13 = v11 >> 9, ZAP_GO_DOWN(a1 + 64 * (v11 >> 9) + 16810048, v11 & 0x1FF))) && (v8 = v13 & 0x1FF, v13 >>= 9, ZAP_GO_DOWN(a1 + 64 * v13 + 32832, v8))) && (v9 = v13 & 0x1FF, v13 >>= 9, ZAP_GO_DOWN(a1 + 64 * v13 + 64, v9)))
        {
          ZAP_SIMPLE(a1, v13 & 0x1FF);
        }
      }
    }

    return v17;
  }

  else
  {
    return FFS_and_zap_word(a1, a3, a4, 0);
  }
}

uint64_t FFS_and_zap_word(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v10 = 0;
  for (i = 0; i < 8; ++i)
  {
    v8 = *(a1 + 8 * i);
    if (v8)
    {
      do
      {
        v6 = __ffsll(v8);
        if (!v6)
        {
          __assert_rtn("FFS_and_zap_word", "bitarray.c", 554, "f");
        }

        v7 = v6 - 1;
        v4 = v10++;
        *(a3 + 4 * v4) = v7 + (i << 6) + a4;
        v8 &= ~(1 << v7);
      }

      while (v8 && v10 < a2);
      *(a1 + 8 * i) = v8;
      if (v10 >= a2)
      {
        break;
      }
    }
  }

  return v10;
}

uint64_t all_zeros(uint64_t a1)
{
  for (i = 0; i < 8; ++i)
  {
    if (*(a1 + 8 * i))
    {
      v3 = 0;
      return v3 & 1;
    }
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t word_set_bit_changed(void *a1, char a2)
{
  if (*a1 == (*a1 | (1 << a2)))
  {
    v3 = 0;
  }

  else
  {
    *a1 |= 1 << a2;
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t word_set_bit_changed_go_down(uint64_t *a1, char a2, BOOL *a3)
{
  v4 = *a1;
  if (*a1 == (*a1 | (1 << a2)))
  {
    v5 = 0;
  }

  else
  {
    *a1 |= 1 << a2;
    *a3 = v4 != 0;
    v5 = 1;
  }

  return v5 & 1;
}

BOOL word_set_bit_go_down(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (*a1 == (*a1 | (1 << a2)))
  {
    return 0;
  }

  else
  {
    *a1 |= 1 << a2;
    return v3 == 0;
  }
}

uint64_t word_zap_bit_changed(void *a1, char a2)
{
  if (*a1 == (*a1 & ~(1 << a2)))
  {
    v3 = 0;
  }

  else
  {
    *a1 &= ~(1 << a2);
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t word_zap_bit_changed_go_down(uint64_t *a1, char a2, BOOL *a3)
{
  v4 = *a1 & ~(1 << a2);
  if (*a1 == v4)
  {
    v5 = 0;
  }

  else
  {
    *a1 = v4;
    *a3 = v4 == 0;
    v5 = 1;
  }

  return v5 & 1;
}

BOOL word_zap_bit_go_down(uint64_t *a1, char a2)
{
  v3 = *a1 & ~(1 << a2);
  if (*a1 == v3)
  {
    return 0;
  }

  else
  {
    *a1 = v3;
    return v3 == 0;
  }
}

unint64_t __ffsll(unint64_t a1)
{
  v1 = __clz(__rbit64(a1));
  v2 = 0;
  if (a1)
  {
    return v1 + 1;
  }

  return v2;
}

BOOL xzm_reclaim_init(uint64_t a1)
{
  v3 = mach_vm_reclaim_round_capacity();
  mach_vm_reclaim_round_capacity();
  unk_D8280 = 0;
  unk_D8288 = 0;
  unk_D8274 = 0;
  error_value = mach_vm_reclaim_ring_allocate();
  if (error_value)
  {
    mach_error_string(error_value);
    malloc_report(3, "xzm: failed to initialize deferred reclamation buffer [%d] %s\n");
  }

  else
  {
    dword_D8270 = v3;
    *(a1 + 568) = &xzm_reclaim_buffer;
    _xzm_reclaim_id_cache_init(&xzm_reclaim_buffer);
  }

  return error_value == 0;
}

void _xzm_reclaim_id_cache_init(uint64_t *a1)
{
  v4 = a1 + 2;
  v1 = *a1;
  if (mach_vm_reclaim_ring_capacity())
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kr == VM_RECLAIM_SUCCESS failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:148)";
    __break(1u);
    JUMPOUT(0x31ECLL);
  }

  v3 = (vm_page_size - 1) & -vm_page_size;
  if (v4[2])
  {
    v4[1];
  }

  else
  {
    pages = mvm_allocate_pages(v3, 0, 64, 1);
    if (v4[2])
    {
      mvm_deallocate_pages(v4[2], 8 * v4[1], 64);
    }

    v4[2] = pages;
    v4[1] = v3 >> 3;
  }

  *v4 = 0;
  v4[1];
}

uint64_t xzm_reclaim_mark_free_locked(uint64_t a1, __int16 a2, uint64_t a3)
{
  if (HIDWORD(a3))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion size <= UINT32_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:265)";
    __break(1u);
    JUMPOUT(0x3374);
  }

  if ((a2 & 0x3FFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion vm_addr % XZM_SEGMENT_SLICE_SIZE == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:266)";
    __break(1u);
    JUMPOUT(0x33A8);
  }

  if ((a3 & 0x3FFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion vm_size % XZM_SEGMENT_SLICE_SIZE == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:267)";
    __break(1u);
    JUMPOUT(0x33DCLL);
  }

  os_unfair_lock_assert_owner((a1 + 12));
  do
  {
    if (_xzm_reclaim_id_cache_is_empty((a1 + 16)))
    {
      while (1)
      {
        v4 = *a1;
        if (mach_vm_reclaim_try_enter())
        {
          break;
        }

        xzm_reclaim_sync_and_resize(a1);
      }

      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kr == VM_RECLAIM_SUCCESS failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:290)";
      __break(1u);
      JUMPOUT(0x3500);
    }

    v6 = _xzm_reclaim_id_cache_pop((a1 + 16));
    v3 = *a1;
    if (mach_vm_reclaim_try_enter())
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kr == VM_RECLAIM_SUCCESS failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:281)";
      __break(1u);
      JUMPOUT(0x3484);
    }
  }

  while (v6 == -1);
  return v6;
}

uint64_t _xzm_reclaim_id_cache_pop(uint64_t *a1)
{
  if (_xzm_reclaim_id_cache_is_empty(a1))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !_xzm_reclaim_id_cache_is_empty(cache) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:127)";
    __break(1u);
    JUMPOUT(0x35ACLL);
  }

  v1 = a1[2];
  v2 = *a1 - 1;
  *a1 = v2;
  if (*(v1 + 8 * v2) == -1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion id != VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:129)";
    __break(1u);
    JUMPOUT(0x35FCLL);
  }

  return *(v1 + 8 * v2);
}

void xzm_reclaim_sync_and_resize(uint64_t *a1)
{
  v1 = *a1;
  if (mach_vm_reclaim_ring_capacity())
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kr == VM_RECLAIM_SUCCESS failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:401)";
    __break(1u);
    JUMPOUT(0x3670);
  }

  mach_vm_reclaim_round_capacity();
  v2 = *a1;
  if (mach_vm_reclaim_ring_resize())
  {
    xzm_reclaim_force_sync(a1);
  }

  else
  {
    _xzm_reclaim_id_cache_init(a1);
  }
}

uint64_t xzm_reclaim_force_sync(uint64_t *a1)
{
  v1 = *a1;
  if (mach_vm_reclaim_ring_capacity())
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion err == VM_RECLAIM_SUCCESS failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:390)";
    __break(1u);
    JUMPOUT(0x3728);
  }

  v2 = *a1;
  result = mach_vm_reclaim_ring_flush();
  if (result)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion err == VM_RECLAIM_SUCCESS failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:392)";
    __break(1u);
    JUMPOUT(0x376CLL);
  }

  return result;
}

mach_vm_address_t _xzm_range_group_alloc_anywhere_segment(mach_vm_address_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a5 & 1;
  v11 = (a5 & 2) != 0;
  v10 = _xzm_range_group_vm_tag_for_segment(a2, a5 & 1);
  address = v17;
  flags = (v10 << 24) | 1;
  if (v11)
  {
    flags = (v10 << 24) | 3;
  }

  if ((v13 & 4) != 0)
  {
    flags |= 0x2000u;
  }

  if (v15 > 0x400000)
  {
    v6 = v15;
  }

  else
  {
    v6 = 0x400000;
  }

  v15 = v6;
  if (((v6 - 1) & v6) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion powerof2(align) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:524)";
    __break(1u);
    JUMPOUT(0x3888);
  }

  v7 = mach_vm_map(mach_task_self_, &address, v16, v15 - 1, flags, 0, 0, 0, 3, 7, 1u);
  if (v7)
  {
    if (v7 != 3)
    {
      qword_D8128 = "BUG IN LIBMALLOC: Failed to allocate data segment";
      qword_D8158 = v7;
      __break(1u);
      JUMPOUT(0x3930);
    }

    return 0;
  }

  else
  {
    if (!address)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion vm_addr failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:540)";
      __break(1u);
      JUMPOUT(0x39A4);
    }

    if (address % v15)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion vm_addr % align == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:541)";
      __break(1u);
      JUMPOUT(0x39E4);
    }

    return address;
  }
}

uint64_t _xzm_range_group_vm_tag_for_segment(uint64_t a1, char a2)
{
  if (a2)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t xzm_main_malloc_zone_init_range_groups(uint64_t a1)
{
  v11 = a1;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  result = parse_void_ranges(&v9, &v7);
  v6 = result;
  if (result)
  {
    if (*(v11 + 415) != 2)
    {
      v2 = *(v11 + 415);
      qword_D8128 = "BUG IN LIBMALLOC: unsupported allocation front count";
      qword_D8158 = v2;
      __break(1u);
      JUMPOUT(0x3AD0);
    }

    v5[1] = 0x400000000;
    v5[0] = 2;
    _xzm_main_malloc_zone_choose_ptr_ranges(v9, v10, v7, v8, 0x400000000uLL, qword_DA448, v12, v5);
    for (i = 0; i < v5[0]; ++i)
    {
      result = _xzm_main_malloc_zone_create_ptr_range(v12[i].n128_i64[0], v12[i].n128_i64[1]);
      if (result)
      {
        return result;
      }
    }

    *(v11 + 409) |= 1u;
    result = _xzm_main_malloc_zone_init_ptr_fronts(*(v11 + 464), *(v11 + 415), v12[0].n128_u64, v5[0]);
    v3 = *(v11 + 464);
    if (*v3)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion data_rg->xzrg_id == XZM_RANGE_GROUP_DATA failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1231)";
      __break(1u);
      JUMPOUT(0x3BDCLL);
    }

    *(v3 + 24) = v10;
    *(v3 + 32) = v7 - v10;
  }

  return result;
}

uint64_t parse_void_ranges(unint64_t *a1, unint64_t *a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 255;
  __endptr = 0;
  if (sysctlbyname("vm.malloc_ranges", v14, &v10, 0, 0) == -1)
  {
    v8 = *__error();
    if (v8 == 1)
    {
      malloc_report(3, "sysctlbyname(vm.malloc_ranges) denied\n");
    }

    else
    {
      if (v8 != 2)
      {
        v2 = *__error();
        qword_D8128 = "BUG IN LIBMALLOC: sysctlbyname(vm.malloc_ranges) failed";
        qword_D8158 = v2;
        __break(1u);
        JUMPOUT(0x3D20);
      }

      malloc_report(6, "VM user ranges not supported\n");
    }

    return 0;
  }

  else
  {
    v14[v10] = 0;
    __endptr = v14;
    v3 = strtoull(v14, &__endptr, 16);
    *v12 = v3;
    ++__endptr;
    v4 = strtoull(__endptr, &__endptr, 16);
    v12[1] = v4;
    ++__endptr;
    v5 = strtoull(__endptr, &__endptr, 16);
    *v11 = v5;
    ++__endptr;
    v6 = strtoull(__endptr, &__endptr, 16);
    v11[1] = v6;
    return 1;
  }
}

__n128 _xzm_main_malloc_zone_choose_ptr_ranges(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, __n128 *a7, void *a8)
{
  if (*a8 != 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *ranges_count_inout == 2 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:937)";
    __break(1u);
    JUMPOUT(0x3E74);
  }

  if (!a1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion left_void.min_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:939)";
    __break(1u);
    JUMPOUT(0x3EA4);
  }

  if (a2 < a1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion left_void.max_address >= left_void.min_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:940)";
    __break(1u);
    JUMPOUT(0x3EDCLL);
  }

  if (a3 < a2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion right_void.min_address >= left_void.max_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:941)";
    __break(1u);
    JUMPOUT(0x3F14);
  }

  if (a4 < a3)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion right_void.max_address >= right_void.min_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:942)";
    __break(1u);
    JUMPOUT(0x3F4CLL);
  }

  if ((a1 & 0x1FFFFFF) != 0)
  {
    v12 = (a1 & 0xFFFFFFFFFE000000) + 0x2000000;
  }

  else
  {
    v12 = a1;
  }

  v23 = v12;
  v22 = a2 & 0xFFFFFFFFFE000000;
  if ((a2 & 0xFFFFFFFFFE000000) < v12)
  {
    v23 = a2 & 0xFFFFFFFFFE000000;
  }

  if (v23 > v22)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion left_void_min <= left_void_limit failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:966)";
    __break(1u);
    JUMPOUT(0x3FECLL);
  }

  if ((a3 & 0x1FFFFFF) != 0)
  {
    v11 = (a3 & 0xFFFFFFFFFE000000) + 0x2000000;
  }

  else
  {
    v11 = a3;
  }

  v21 = a4 & 0xFFFFFFFFFE000000;
  if ((a4 & 0xFFFFFFFFFE000000) < v11)
  {
    v21 = v11;
  }

  if (v11 > v21)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion right_void_min <= right_void_limit failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:976)";
    __break(1u);
    JUMPOUT(0x408CLL);
  }

  if (v22 > v11)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion left_void_limit <= right_void_min failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:978)";
    __break(1u);
    JUMPOUT(0x40C4);
  }

  v20 = v21 - v23;
  if (v22 - v23 < 0x100000001)
  {
    v10 = v22 - v23;
  }

  else
  {
    v10 = 0x100000000;
  }

  v19 = v22 - v10;
  if (v21 - v11 < 0x100000001)
  {
    v9 = v21 - v11;
  }

  else
  {
    v9 = 0x100000000;
  }

  v18 = v10 + v11 - v22 + v9;
  if (v18 >= v20)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion data_span < total_span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:994)";
    __break(1u);
    JUMPOUT(0x41DCLL);
  }

  v17 = v20 - v18;
  if (v20 - v18 < a5)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion usable_space >= ptr_rg_size failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:997)";
    __break(1u);
    JUMPOUT(0x4224);
  }

  if (((v17 - a5) & 0x1FFFFFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion starting_space % XZM_PAGE_TABLE_GRANULE == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1000)";
    __break(1u);
    JUMPOUT(0x4268);
  }

  v16 = v23 + ((a6 % (((v17 - a5) >> 25) + 1)) << 25);
  if (v16 >= v19)
  {
    v16 += v18;
  }

  if (v16 >= v19 || v16 + a5 <= v19)
  {
    v13.n128_u64[0] = v16;
    v13.n128_u64[1] = v16 + a5;
    result = v13;
    *a7 = v13;
    *a8 = 1;
  }

  else
  {
    v15.n128_u64[0] = v16;
    v15.n128_u64[1] = v22 - v10;
    *a7 = v15;
    v14.n128_u64[0] = v11 + v9;
    v14.n128_u64[1] = v11 + v9 + a5 - (v19 - v16);
    result = v14;
    a7[1] = v14;
    *a8 = 2;
  }

  return result;
}

uint64_t _xzm_main_malloc_zone_create_ptr_range(uint64_t a1, uint64_t a2)
{
  *(&v8 + 1) = a2;
  *&v8 = a1;
  v6 = 0x202000000000000;
  v7 = v8;
  v5 = mach_vm_range_create();
  if (v5)
  {
    if (v5 == 46)
    {
      qword_D8128 = "BUG IN LIBMALLOC: mach_vm_range_create() not supported?";
      __break(1u);
      JUMPOUT(0x4488);
    }

    if (v5 != 53)
    {
      qword_D8128 = "BUG IN LIBMALLOC: unexpected error from mach_vm_range_create()";
      qword_D8158 = v5;
      __break(1u);
      JUMPOUT(0x44C4);
    }

    malloc_report(3, "mach_vm_range_create() denied\n");
    return 53;
  }

  else
  {
    address = v8;
    v2 = mach_vm_map(mach_task_self_, &address, *(&v8 + 1) - v8, 0, 0x4000, 0, 0, 0, 0, 0, 1u);
    v5 = v2;
    if (v2)
    {
      qword_D8128 = "BUG IN LIBMALLOC: pointer range initial overwrite failed";
      qword_D8158 = v5;
      __break(1u);
      JUMPOUT(0x4570);
    }

    return 0;
  }
}

uint64_t _xzm_main_malloc_zone_init_ptr_fronts(uint64_t result, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  if (a2 != 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion allocation_front_count == 2 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:829)";
    __break(1u);
    JUMPOUT(0x45D8);
  }

  if (!a4)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion range_count > 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:830)";
    __break(1u);
    JUMPOUT(0x4608);
  }

  if (*a3 >= a3[1])
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ranges[0].min_address < ranges[0].max_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:831)";
    __break(1u);
    JUMPOUT(0x4644);
  }

  if (a4 >= 2)
  {
    if (a4 != 2)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion range_count == 2 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:834)";
      __break(1u);
      JUMPOUT(0x4688);
    }

    if (a3[2] <= a3[1])
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ranges[1].min_address > ranges[0].max_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:835)";
      __break(1u);
      JUMPOUT(0x46C4);
    }

    if (a3[2] >= a3[3])
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ranges[1].min_address < ranges[1].max_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:836)";
      __break(1u);
      JUMPOUT(0x4700);
    }
  }

  v15 = 0;
  for (i = 0; i < a4; ++i)
  {
    v15 += a3[2 * i + 1] - a3[2 * i];
  }

  if (((v15 >> 1) & 0x1FFFFFF) != 0)
  {
    v4 = (v15 >> 26 << 25) + 0x2000000;
  }

  else
  {
    v4 = v15 >> 1;
  }

  v13 = v4;
  if (*a3 + v4 >= a3[1])
  {
    if (a4 != 2)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion range_count == 2 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:850)";
      __break(1u);
      JUMPOUT(0x47F4);
    }

    v13 = v4 + a3[2] - a3[1];
  }

  v12 = *a3 + v13;
  if ((v12 & 0x1FFFFFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion middle_pte % XZM_PAGE_TABLE_GRANULE == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:855)";
    __break(1u);
    JUMPOUT(0x485CLL);
  }

  v11 = v12 + 0x1000000;
  v9 = 0;
  v8 = 0;
  v6 = 0;
  v5 = 0;
  if (a4 == 2)
  {
    if (v11 <= a3[1])
    {
      if (v11 >= a3[1])
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion middle_pte_middle < ranges[0].max_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:881)";
        __break(1u);
        JUMPOUT(0x49C0);
      }

      if (v11 <= *a3)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion middle_pte_middle > ranges[0].min_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:882)";
        __break(1u);
        JUMPOUT(0x49FCLL);
      }

      v10 = a3[3] - a3[2] + a3[1] - v11;
      v9 = a3[1];
      v8 = a3[2] - v9;
      v7 = v11 - *a3;
    }

    else
    {
      if (v11 <= a3[2])
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion middle_pte_middle > ranges[1].min_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:869)";
        __break(1u);
        JUMPOUT(0x48ECLL);
      }

      if (v11 >= a3[3])
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion middle_pte_middle < ranges[1].max_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:870)";
        __break(1u);
        JUMPOUT(0x4928);
      }

      v10 = a3[3] - v11;
      v7 = v11 - a3[2] + a3[1] - *a3;
      v6 = a3[2];
      v5 = v6 - a3[1];
    }
  }

  else
  {
    if (*a3 >= v11)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ranges[0].min_address < middle_pte_middle failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:894)";
      __break(1u);
      JUMPOUT(0x4A98);
    }

    if (v11 >= a3[1])
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion middle_pte_middle < ranges[0].max_address failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:895)";
      __break(1u);
      JUMPOUT(0x4AD4);
    }

    v10 = a3[1] - v11;
    v7 = v11 - *a3;
  }

  if (*(result + 160) != 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_rg_up->xzrg_id == XZM_RANGE_GROUP_PTR failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:902)";
    __break(1u);
    JUMPOUT(0x4B44);
  }

  *(result + 184) = v11;
  *(result + 216) = *(result + 184);
  *(result + 192) = v10;
  *(result + 224) = *(result + 192);
  *(result + 200) = v9;
  *(result + 208) = v8;
  *(result + 232) = 0;
  if (*(result + 240) != 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ptr_rg_down->xzrg_id == XZM_RANGE_GROUP_PTR failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:913)";
    __break(1u);
    JUMPOUT(0x4BDCLL);
  }

  *(result + 264) = v11;
  *(result + 296) = *(result + 264);
  *(result + 272) = v7;
  *(result + 304) = *(result + 272);
  *(result + 280) = v6;
  *(result + 288) = v5;
  *(result + 312) = 1;
  return result;
}

uint64_t xzm_chunk_mark_free(uint64_t a1, unint64_t a2)
{
  v21 = a1;
  v20 = a2;
  v22 = a1;
  v14 = *(a1 + 240);
  if (v14)
  {
    v13 = v14;
  }

  else
  {
    v13 = v22;
  }

  v19 = v13;
  v24 = v13;
  v23 = v20;
  v33 = *(v20 + 32) & 0xF;
  v12 = v33;
  if (v33 < 2u)
  {
    goto LABEL_9;
  }

  if (v12 != 2)
  {
    if ((v12 - 3) >= 2)
    {
      if ((v12 - 5) >= 4)
      {
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = v33;
        __break(1u);
        JUMPOUT(0x4D50);
      }

      goto LABEL_10;
    }

LABEL_9:
    v34 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v34 = 1;
LABEL_11:
  if ((v34 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_chunk(chunk->xzc_bits.xzcb_kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:677)";
    __break(1u);
    JUMPOUT(0x4D80);
  }

  v11 = *(v23 + 32) & 0xF;
  if (v11 == 2)
  {
    v25 = (*(v24 + 409) & 8) != 0;
  }

  else if ((v11 - 5) < 2)
  {
    v25 = (*(v24 + 409) & 4) != 0;
  }

  else
  {
    if ((v11 - 7) >= 2)
    {
      qword_D8128 = "BUG IN LIBMALLOC: Attempt to check for deferred reclamation on non-chunk slice";
      __break(1u);
      JUMPOUT(0x4E28);
    }

    v25 = (*(v24 + 409) & 0x10) != 0;
  }

  if (!v25)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_chunk_should_defer_reclamation(main, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1738)";
    __break(1u);
    JUMPOUT(0x4E58);
  }

  v18 = *(v19 + 568);
  v28 = v21;
  v27 = v20;
  v37 = v21;
  v36 = v20;
  v35 = v20 & 0xFFFFFFFFFFFFC000;
  v10 = 1;
  if ((v20 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v9 = 0;
    if (v36 >= v35 + 2136)
    {
      v9 = v36 < v35 + 48 * *(v35 + 16) + 2136;
    }

    v10 = v9;
  }

  if ((v10 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x4F38);
  }

  v26 = v35;
  v44 = v35;
  v43 = v27;
  v8 = v35 + 88;
  v47 = v35;
  v46 = v27;
  if (v27 < v35 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x4FA4);
  }

  v45 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v47 - 2136) >> 4);
  if (v45 >= *(v47 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x5004);
  }

  v42 = (v8 + 8 * v45);
  v17 = v42;
  if (*v42 != -1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *reclaim_id == VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1743)";
    __break(1u);
    JUMPOUT(0x5054);
  }

  v16 = 0;
  v32 = v21;
  v31 = v20;
  v30 = &v16;
  if (&v3 == -80)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size_out failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:397)";
    __break(1u);
    JUMPOUT(0x50A4);
  }

  v41 = v32;
  v40 = v31;
  v39 = v30;
  if (v30)
  {
    v7 = *(v40 + 32) & 0xF;
    switch(v7)
    {
      case 2:
        *v39 = 0x4000;
        break;
      case 5:
        *v39 = 0x10000;
        break;
      case 6:
        *v39 = 0x20000;
        break;
      default:
        if ((v7 - 7) >= 2)
        {
          v38 = *(v40 + 32) & 0xF;
          qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
          qword_D8158 = v38;
          __break(1u);
          JUMPOUT(0x51A0);
        }

        *v39 = *(v40 + 40) << 14;
        break;
    }
  }

  v49 = v41;
  v48 = v40;
  v52 = v41;
  v51 = v40;
  v50 = v40 & 0xFFFFFFFFFFFFC000;
  v6 = 1;
  if ((v40 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v5 = 0;
    if (v51 >= v50 + 2136)
    {
      v5 = v51 < v50 + 48 * *(v50 + 16) + 2136;
    }

    v6 = v5;
  }

  if ((v6 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x5278);
  }

  v54 = v50;
  v53 = v48;
  v4 = v50;
  v57 = v50;
  v56 = v48;
  if (v48 < v50 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x52DCLL);
  }

  v55 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v57 - 2136) >> 4);
  if (v55 >= *(v57 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x533CLL);
  }

  v59 = v4;
  v58 = v55;
  v29 = *(v4 + 72) + (v55 << 14);
  v15 = v29;
  result = _xzm_reclaim_mark_free(v18, v29, v16);
  *v17 = result;
  return result;
}

uint64_t _xzm_reclaim_mark_free(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 12), &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  v7 = xzm_reclaim_mark_free_locked(a1, a2, a3);
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit((a1 + 12), &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock((a1 + 12));
  }

  return v7;
}

uint64_t xzm_chunk_mark_used(uint64_t a1, unint64_t a2, BOOL *a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v20 = a1;
  if (*(a1 + 240))
  {
    v10 = *(a1 + 240);
  }

  else
  {
    v10 = v20;
  }

  v15 = v10;
  v35 = *(v17 + 32) & 0xF;
  if (v35 < 2u)
  {
    goto LABEL_9;
  }

  if (v35 != 2)
  {
    if (v35 - 3 >= 2)
    {
      if (v35 - 5 >= 4)
      {
        v34 = v35;
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = v35;
        __break(1u);
        JUMPOUT(0x5704);
      }

      goto LABEL_10;
    }

LABEL_9:
    v36 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v36 = 1;
LABEL_11:
  if (!v36)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_chunk(chunk->xzc_bits.xzcb_kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1756)";
    __break(1u);
    JUMPOUT(0x5734);
  }

  v22 = v15;
  v21 = v17;
  v32 = *(v17 + 32) & 0xF;
  if (v32 < 2u)
  {
    goto LABEL_18;
  }

  if (v32 != 2)
  {
    if (v32 - 3 >= 2)
    {
      if (v32 - 5 >= 4)
      {
        v31 = v32;
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = v32;
        __break(1u);
        JUMPOUT(0x57F4);
      }

      goto LABEL_19;
    }

LABEL_18:
    v33 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v33 = 1;
LABEL_20:
  if ((v33 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_chunk(chunk->xzc_bits.xzcb_kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:677)";
    __break(1u);
    JUMPOUT(0x5824);
  }

  v9 = *(v21 + 32) & 0xF;
  if (v9 == 2)
  {
    v23 = (*(v22 + 409) & 8) != 0;
  }

  else if ((v9 - 5) < 2)
  {
    v23 = (*(v22 + 409) & 4) != 0;
  }

  else
  {
    if ((v9 - 7) >= 2)
    {
      qword_D8128 = "BUG IN LIBMALLOC: Attempt to check for deferred reclamation on non-chunk slice";
      __break(1u);
      JUMPOUT(0x58CCLL);
    }

    v23 = (*(v22 + 409) & 0x10) != 0;
  }

  if (!v23)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_chunk_should_defer_reclamation(main, chunk) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1757)";
    __break(1u);
    JUMPOUT(0x58FCLL);
  }

  v14 = *(v15 + 568);
  v26 = v18;
  v25 = v17;
  v39 = v18;
  v38 = v17;
  v37 = v17 & 0xFFFFFFFFFFFFC000;
  v8 = 1;
  if ((v17 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v7 = 0;
    if (v38 >= v37 + 2136)
    {
      v7 = v38 < v37 + 48 * *(v37 + 16) + 2136;
    }

    v8 = v7;
  }

  if ((v8 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x59E8);
  }

  v24 = v37;
  v46 = v37;
  v45 = v25;
  v49 = v37;
  v48 = v25;
  if (v25 < v37 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x5A58);
  }

  v47 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v49 - 2136) >> 4);
  if (v47 >= *(v49 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x5ABCLL);
  }

  v44 = (v37 + 88 + 8 * v47);
  v13 = v44;
  if (*v44 == -1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *reclaim_id != VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1762)";
    __break(1u);
    JUMPOUT(0x5B10);
  }

  v12 = 0;
  v30 = v18;
  v29 = v17;
  v28 = &v12;
  if (!&v12)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size_out failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:397)";
    __break(1u);
    JUMPOUT(0x5B64);
  }

  v43 = v30;
  v42 = v29;
  v41 = v28;
  v6 = *(v29 + 32) & 0xF;
  switch(v6)
  {
    case 2:
      *v41 = 0x4000;
      break;
    case 5:
      *v41 = 0x10000;
      break;
    case 6:
      *v41 = 0x20000;
      break;
    default:
      if ((v6 - 7) >= 2)
      {
        v40 = *(v42 + 32) & 0xF;
        qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
        qword_D8158 = v40;
        __break(1u);
        JUMPOUT(0x5C7CLL);
      }

      *v41 = *(v42 + 40) << 14;
      break;
  }

  v51 = v43;
  v50 = v42;
  v54 = v43;
  v53 = v42;
  v52 = v42 & 0xFFFFFFFFFFFFC000;
  v5 = 1;
  if ((v42 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v4 = 0;
    if (v53 >= v52 + 2136)
    {
      v4 = v53 < v52 + 48 * *(v52 + 16) + 2136;
    }

    v5 = v4;
  }

  if ((v5 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x5D60);
  }

  v56 = v52;
  v55 = v50;
  v59 = v52;
  v58 = v50;
  if (v50 < v52 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x5DC8);
  }

  v57 = 0xAAAAAAAAAAAAAAABLL * ((v58 - v59 - 2136) >> 4);
  if (v57 >= *(v59 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x5E2CLL);
  }

  v61 = v52;
  v60 = v57;
  v27 = *(v52 + 72) + (v57 << 14);
  v11 = _xzm_reclaim_mark_used(v14, *v13, v27, v12);
  if (v16)
  {
    *v16 = v11 != 1;
  }

  if (mach_vm_reclaim_is_reusable())
  {
    *v13 = -1;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _xzm_reclaim_mark_used(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 12), &v4, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    os_unfair_lock_lock_with_options();
  }

  v8 = _xzm_reclaim_mark_used_locked(a1, a2, a3, a4);
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v6 = v5;
  atomic_compare_exchange_strong_explicit((a1 + 12), &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != v5)
  {
    os_unfair_lock_unlock((a1 + 12));
  }

  return v8;
}

unint64_t xzm_segment_group_alloc_chunk(unsigned __int8 *a1, unsigned __int8 a2, unsigned __int8 *a3, unsigned int a4, uint64_t *a5, unint64_t a6, char a7, char a8)
{
  v74 = a1;
  v73 = a2;
  v72 = a3;
  v71 = a4;
  v70 = a5;
  v69 = a6;
  v68 = a7;
  v67 = a8;
  if (a2 != 8)
  {
    v54 = 1;
    if (v73 != 7)
    {
      v54 = v69 == 0;
    }

    if (!v54)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kind == XZM_SLICE_KIND_LARGE_CHUNK || alignment == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2650)";
      __break(1u);
      JUMPOUT(0x62DCLL);
    }

    if (v73 == 7 && v71 == 1)
    {
      v71 = 2;
    }

    chunk = 0;
    v82 = v74 + 4;
    v108 = v74 + 4;
    v107 = 327680;
    v125 = 3;
    v126 = 3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v106 = *(StatusReg + 24);
    v105 = 0;
    v104 = v106;
    v103 = v106;
    v8 = 0;
    atomic_compare_exchange_strong_explicit((v74 + 4), &v8, v106, memory_order_acquire, memory_order_acquire);
    v52 = v8;
    v53 = v8 == 0;
    if (v8)
    {
      v105 = v52;
    }

    v102 = v53;
    if (!v53)
    {
      os_unfair_lock_lock_with_options();
    }

    chunk = _xzm_segment_group_find_and_allocate_chunk(v74, v73, v72, v70, v71, v69);
    if (chunk)
    {
      v87 = v74 + 4;
      lock = (v74 + 4);
      v138 = 3;
      v139 = 3;
      v140 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v136 = *(v140 + 24);
      v135 = 0;
      v134 = v136;
      v133 = 0;
      v9 = v136;
      v10 = v136;
      atomic_compare_exchange_strong_explicit((v74 + 4), &v10, 0, memory_order_release, memory_order_relaxed);
      v50 = v10;
      v51 = v10 == v9;
      if (v10 != v9)
      {
        v134 = v50;
      }

      v132 = v51;
      if (!v51)
      {
        os_unfair_lock_unlock(lock);
      }

      goto LABEL_59;
    }

    v88 = v74 + 8;
    v182 = v74 + 8;
    v184 = 3;
    v185 = 3;
    v186 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v181 = *(v186 + 24);
    v180 = 0;
    v179 = v181;
    v178 = v181;
    v11 = 0;
    atomic_compare_exchange_strong_explicit((v74 + 8), &v11, v181, memory_order_acquire, memory_order_acquire);
    v48 = v11;
    v49 = v11 == 0;
    if (v11)
    {
      v180 = v48;
    }

    v177 = v49;
    v183 = v49;
    v65 = v49;
    if (v49)
    {
      v86 = v74 + 4;
      v146 = (v74 + 4);
      v147 = 3;
      v148 = 3;
      v149 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v145 = *(v149 + 24);
      v144 = 0;
      v143 = v145;
      v142 = 0;
      v12 = v145;
      v13 = v145;
      atomic_compare_exchange_strong_explicit((v74 + 4), &v13, 0, memory_order_release, memory_order_relaxed);
      v46 = v13;
      v47 = v13 == v12;
      if (v13 != v12)
      {
        v143 = v46;
      }

      v141 = v47;
      if (!v47)
      {
        os_unfair_lock_unlock(v146);
      }
    }

    else
    {
      v85 = v74 + 4;
      v155 = (v74 + 4);
      v156 = 3;
      v157 = 3;
      v158 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v154 = *(v158 + 24);
      v153 = 0;
      v152 = v154;
      v151 = 0;
      v14 = v154;
      v15 = v154;
      atomic_compare_exchange_strong_explicit((v74 + 4), &v15, 0, memory_order_release, memory_order_relaxed);
      v44 = v15;
      v45 = v15 == v14;
      if (v15 != v14)
      {
        v152 = v44;
      }

      v150 = v45;
      if (!v45)
      {
        os_unfair_lock_unlock(v155);
      }

      v81 = v74 + 8;
      v115 = v74 + 8;
      v114 = 327680;
      v124 = 3;
      v127 = 3;
      v130 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v113 = *(v130 + 24);
      v112 = 0;
      v111 = v113;
      v110 = v113;
      v16 = 0;
      atomic_compare_exchange_strong_explicit((v74 + 8), &v16, v113, memory_order_acquire, memory_order_acquire);
      v42 = v16;
      v43 = v16 == 0;
      if (v16)
      {
        v112 = v42;
      }

      v109 = v43;
      if (!v43)
      {
        os_unfair_lock_lock_with_options();
      }

      v80 = v74 + 4;
      v122 = v74 + 4;
      v121 = 327680;
      v123 = 3;
      v128 = 3;
      v129 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v120 = *(v129 + 24);
      v119 = 0;
      v118 = v120;
      v117 = v120;
      v17 = 0;
      atomic_compare_exchange_strong_explicit((v74 + 4), &v17, v120, memory_order_acquire, memory_order_acquire);
      v40 = v17;
      v41 = v17 == 0;
      if (v17)
      {
        v119 = v40;
      }

      v116 = v41;
      if (!v41)
      {
        os_unfair_lock_lock_with_options();
      }

      chunk = _xzm_segment_group_find_and_allocate_chunk(v74, v73, v72, v70, v71, v69);
      v84 = v74 + 4;
      v164 = (v74 + 4);
      v165 = 3;
      v166 = 3;
      v167 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v163 = *(v167 + 24);
      v162 = 0;
      v161 = v163;
      v160 = 0;
      v18 = v163;
      v19 = v163;
      atomic_compare_exchange_strong_explicit((v74 + 4), &v19, 0, memory_order_release, memory_order_relaxed);
      v38 = v19;
      v39 = v19 == v18;
      if (v19 != v18)
      {
        v161 = v38;
      }

      v159 = v39;
      if (!v39)
      {
        os_unfair_lock_unlock(v164);
      }

      if (chunk)
      {
        v83 = v74 + 8;
        v173 = (v74 + 8);
        v174 = 3;
        v175 = 3;
        v176 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
        v172 = *(v176 + 24);
        v171 = 0;
        v170 = v172;
        v169 = 0;
        v20 = v172;
        v21 = v172;
        atomic_compare_exchange_strong_explicit((v74 + 8), &v21, 0, memory_order_release, memory_order_relaxed);
        v36 = v21;
        v37 = v21 == v20;
        if (v21 != v20)
        {
          v170 = v36;
        }

        v168 = v37;
        if (!v37)
        {
          os_unfair_lock_unlock(v173);
        }

LABEL_59:
        if (!chunk)
        {
          return chunk;
        }

        v64 = 0;
        v79 = *(v74 + 3);
        v78 = chunk;
        v77 = &v64;
        if (&cur_protection == -184)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size_out failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:397)";
          __break(1u);
          JUMPOUT(0x6B60);
        }

        v101 = v79;
        v100 = v78;
        v99 = v77;
        if (v77)
        {
          v35 = *(v100 + 32) & 0xF;
          switch(v35)
          {
            case 2:
              *v99 = 0x4000;
              break;
            case 5:
              *v99 = 0x10000;
              break;
            case 6:
              *v99 = 0x20000;
              break;
            default:
              if ((v35 - 7) >= 2)
              {
                v98 = *(v100 + 32) & 0xF;
                qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
                qword_D8158 = v98;
                __break(1u);
                JUMPOUT(0x6C5CLL);
              }

              *v99 = *(v100 + 40) << 14;
              break;
          }
        }

        v197 = v101;
        v196 = v100;
        v200 = v101;
        v199 = v100;
        v198 = v100 & 0xFFFFFFFFFFFFC000;
        v34 = 1;
        if ((v100 & 0xFFFFFFFFFFFFC000) != 0)
        {
          v33 = 0;
          if (v199 >= v198 + 2136)
          {
            v33 = v199 < v198 + 48 * *(v198 + 16) + 2136;
          }

          v34 = v33;
        }

        if ((v34 & 1) == 0)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
          __break(1u);
          JUMPOUT(0x6D34);
        }

        v202 = v198;
        v201 = v196;
        v32 = v198;
        v205 = v198;
        v204 = v196;
        if (v196 < v198 + 2136)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
          __break(1u);
          JUMPOUT(0x6D98);
        }

        v203 = 0xAAAAAAAAAAAAAAABLL * ((v204 - v205 - 2136) >> 4);
        if (v203 >= *(v205 + 16))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
          __break(1u);
          JUMPOUT(0x6DF8);
        }

        v207 = v32;
        v206 = v203;
        v76 = (*(v32 + 72) + (v203 << 14));
        v63 = v76;
        v93 = v74;
        v92 = v64;
        v91 = *(v74 + 3);
        v96 = *v74;
        v31 = v96;
        if (v96 < 2u)
        {
          v97 = 1;
        }

        else
        {
          if ((v31 - 2) >= 2)
          {
            v95 = v96;
            qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
            qword_D8158 = v96;
            __break(1u);
            JUMPOUT(0x6EC4);
          }

          v97 = 0;
        }

        v90 = v97;
        v190 = v93;
        v189 = 16;
        v188 = 32769;
        v22 = *v93;
        v30 = v22;
        if (v22)
        {
          if ((v30 - 1) < 2)
          {
            v191 = 32769;
            goto LABEL_93;
          }

          if (v30 != 3)
          {
            v187 = *v190;
            qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
            qword_D8158 = v187;
            __break(1u);
            JUMPOUT(0x6F70);
          }
        }

        v191 = 16;
LABEL_93:
        v89 = v191;
        v29 = 0;
        if (v92 >= v191)
        {
          v195 = v91;
          v194 = v92;
          v193 = v90 & 1;
          v192 = v91 + 368;
          v23 = *(v91 + 368);
          v28 = 0;
          if (v23)
          {
            v24 = *(v192 + 8);
            v28 = 0;
            if (v194 <= v24)
            {
              v27 = 1;
              if (v193)
              {
                v27 = *(v192 + 1);
              }

              v28 = v27;
            }
          }

          v29 = v28;
        }

        v62 = v29 & 1;
        if ((*(chunk + 32) & 0x10) == 0)
        {
          v94 = v74;
          if ((*(*(v74 + 3) + 409) & 2) != 0 && v73 == 7)
          {
            v61 = 0;
            if (v62)
            {
              v61 |= 4u;
            }

            _xzm_segment_group_overwrite_chunk(v63, v64, v61);
            *(chunk + 32) |= 0x10u;
          }

          else if (v68)
          {
            if (v73 == 2)
            {
              _platform_bzero();
            }

            else
            {
              _xzm_segment_group_clear_chunk(v74, v63, v64);
            }

            *(chunk + 32) |= 0x10u;
          }
        }

        if (v67)
        {
          if (v72)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion guard_config == NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2761)";
            __break(1u);
            JUMPOUT(0x7158);
          }

          if (v73 != 7)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kind == XZM_SLICE_KIND_LARGE_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2762)";
            __break(1u);
            JUMPOUT(0x718CLL);
          }

          address = v63;
          size = v64;
          flags = 33570818;
          if (v62)
          {
            flags |= 0x2000u;
          }

          v57 = mach_vm_map(mach_task_self_, &address, size, 0, flags, 0, 0, 0, 3, 7, 1u);
          if (v57)
          {
            v56 = v57;
            qword_D8128 = "BUG IN LIBMALLOC: mach_vm_map() overwrite failed";
            qword_D8158 = v57;
            __break(1u);
            JUMPOUT(0x7250);
          }
        }

        return chunk;
      }
    }

    chunk = _xzm_segment_group_alloc_segment_and_chunk(v74, v73, v72, v70, v71, v69);
    goto LABEL_59;
  }

  if (v72)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion guard_config == NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2642)";
    __break(1u);
    JUMPOUT(0x61CCLL);
  }

  if (v70)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion preallocate_list == NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2643)";
    __break(1u);
    JUMPOUT(0x61FCLL);
  }

  v55 = 1;
  if (v71 <= 0x80)
  {
    v55 = v69 > 0x100000;
  }

  if (!v55)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (slice_count > XZM_LARGE_BLOCK_SIZE_MAX / XZM_SEGMENT_SLICE_SIZE) || (alignment > XZM_ALIGNMENT_MAX) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2646)";
    __break(1u);
    JUMPOUT(0x6258);
  }

  return _xzm_segment_group_alloc_huge_chunk(v74, v71, v68 & 1, v69, v67 & 1);
}

unint64_t _xzm_segment_group_alloc_huge_chunk(unsigned __int8 *a1, unsigned int a2, char a3, unint64_t a4, char a5)
{
  v53 = &v71;
  v64 = a1;
  v63 = a2;
  v62 = a3;
  v61 = a4;
  v60 = a5;
  if (!(a4 >> 22))
  {
    v61 = 0;
  }

  if ((v61 & 0x3FFFFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alignment % XZM_SEGMENT_SIZE == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2501)";
    __break(1u);
    JUMPOUT(0x72F8);
  }

  v59 = (*(*(v64 + 3) + 409) & 0x10) != 0;
  v5 = *v64 - 1;
  v52 = 1;
  if (v5)
  {
    v52 = !v59;
  }

  if ((v52 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sg->xzsg_id == XZM_SEGMENT_GROUP_DATA_LARGE || !defer_large failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2504)";
    __break(1u);
    JUMPOUT(0x7368);
  }

  v6 = *v64;
  v51 = 1;
  if (v6)
  {
    v51 = v59;
  }

  if ((v51 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sg->xzsg_id == XZM_SEGMENT_GROUP_DATA || defer_large failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2505)";
    __break(1u);
    JUMPOUT(0x73BCLL);
  }

  v58 = v63 << 14;
  v57 = 0;
  if (*v64 == 1 && *(v64 + 256) && v63 <= *(v64 + 129) && v61 <= 0x400000 && (v57 = _xzm_segment_group_alloc_huge_chunk_from_cache(v64, v63)) != 0)
  {
    if (v62)
    {
      v7 = v53;
      v56 = 0;
      v8 = v57;
      *(v53 + 2) = *(v64 + 3);
      *(v7 + 1) = v8;
      *v7 = &v56;
      if (!*v7)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size_out failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:397)";
        __break(1u);
        JUMPOUT(0x74A0);
      }

      v9 = v53;
      v10 = *(v53 + 1);
      v11 = *v53;
      *(v53 + 6) = *(v53 + 2);
      *(v9 + 5) = v10;
      *(v9 + 4) = v11;
      if (*(v9 + 4))
      {
        v50 = *(*(v53 + 5) + 32) & 0xF;
        switch(v50)
        {
          case 2:
            **(v53 + 4) = 0x4000;
            break;
          case 5:
            **(v53 + 4) = 0x10000;
            break;
          case 6:
            **(v53 + 4) = 0x20000;
            break;
          default:
            if ((v50 - 7) >= 2)
            {
              v12 = v53;
              *(v53 + 3) = *(*(v53 + 5) + 32) & 0xF;
              v13 = *(v12 + 3);
              qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
              qword_D8158 = v13;
              __break(1u);
              JUMPOUT(0x75B8);
            }

            **(v53 + 4) = *(*(v53 + 5) + 40) << 14;
            break;
        }
      }

      v14 = v53;
      v15 = *(v53 + 5);
      *(v53 + 17) = *(v53 + 6);
      *(v14 + 16) = v15;
      v16 = *(v14 + 16);
      *(v14 + 20) = *(v14 + 17);
      *(v14 + 19) = v16;
      *(v14 + 18) = *(v14 + 19) & 0xFFFFFFFFFFFFC000;
      v17 = *(v14 + 18);
      v49 = 1;
      if (v17)
      {
        v18 = *(v53 + 19) >= (*(v53 + 18) + 2136);
        v48 = 0;
        if (v18)
        {
          v48 = *(v53 + 19) < *(v53 + 18) + 48 * *(*(v53 + 18) + 16) + 2136;
        }

        v49 = v48;
      }

      if ((v49 & 1) == 0)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
        __break(1u);
        JUMPOUT(0x769CLL);
      }

      v19 = v53;
      v20 = *(v53 + 16);
      *(v53 + 22) = *(v53 + 18);
      *(v19 + 21) = v20;
      v47 = *(v19 + 22);
      v21 = *(v19 + 21);
      *(v19 + 25) = v47;
      *(v19 + 24) = v21;
      if (*(v19 + 24) < (*(v19 + 25) + 2136))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
        __break(1u);
        JUMPOUT(0x7704);
      }

      v22 = v53;
      *(v53 + 23) = 0xAAAAAAAAAAAAAAABLL * ((*(v53 + 24) - *(v53 + 25) - 2136) >> 4);
      if (*(v22 + 23) >= *(*(v22 + 25) + 16))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
        __break(1u);
        JUMPOUT(0x7768);
      }

      v23 = v53;
      v24 = *(v53 + 23);
      *(v53 + 27) = v47;
      *(v23 + 53) = v24;
      v70 = (*(*(v23 + 27) + 72) + (*(v23 + 53) << 14));
      v55[1] = v70;
      _xzm_segment_group_clear_chunk(v64, v70, v56);
      *(v57 + 32) |= 0x10u;
    }

    else
    {
      *(v57 + 32) &= ~0x10u;
    }

    v55[0] = 0;
    v69 = *(v64 + 3);
    v68 = v57;
    v67 = v55;
    if (&v41 == -96)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size_out failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:397)";
      __break(1u);
      JUMPOUT(0x7824);
    }

    v25 = v53;
    v26 = v68;
    v27 = v67;
    *(v53 + 10) = v69;
    *(v25 + 9) = v26;
    *(v25 + 8) = v27;
    if (*(v25 + 8))
    {
      v46 = *(*(v53 + 9) + 32) & 0xF;
      switch(v46)
      {
        case 2:
          **(v53 + 8) = 0x4000;
          break;
        case 5:
          **(v53 + 8) = 0x10000;
          break;
        case 6:
          **(v53 + 8) = 0x20000;
          break;
        default:
          if ((v46 - 7) >= 2)
          {
            v28 = v53;
            *(v53 + 7) = *(*(v53 + 9) + 32) & 0xF;
            v29 = *(v28 + 7);
            qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
            qword_D8158 = v29;
            __break(1u);
            JUMPOUT(0x793CLL);
          }

          **(v53 + 8) = *(*(v53 + 9) + 40) << 14;
          break;
      }
    }

    v30 = v53;
    v31 = *(v53 + 9);
    *(v53 + 12) = *(v53 + 10);
    *(v30 + 11) = v31;
    v32 = *(v30 + 11);
    *(v30 + 15) = *(v30 + 12);
    *(v30 + 14) = v32;
    *(v30 + 13) = *(v30 + 14) & 0xFFFFFFFFFFFFC000;
    v33 = *(v30 + 13);
    v45 = 1;
    if (v33)
    {
      v18 = *(v53 + 14) >= (*(v53 + 13) + 2136);
      v44 = 0;
      if (v18)
      {
        v44 = *(v53 + 14) < *(v53 + 13) + 48 * *(*(v53 + 13) + 16) + 2136;
      }

      v45 = v44;
    }

    if ((v45 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x7A20);
    }

    v34 = v53;
    v35 = *(v53 + 11);
    *(v53 + 29) = *(v53 + 13);
    *(v34 + 28) = v35;
    v43 = *(v34 + 29);
    v36 = *(v34 + 28);
    *(v34 + 32) = v43;
    *(v34 + 31) = v36;
    if (*(v34 + 31) < (*(v34 + 32) + 2136))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x7A88);
    }

    v37 = v53;
    *(v53 + 30) = 0xAAAAAAAAAAAAAAABLL * ((*(v53 + 31) - *(v53 + 32) - 2136) >> 4);
    if (*(v37 + 30) >= *(*(v37 + 32) + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x7AECLL);
    }

    v38 = v53;
    v39 = *(v53 + 30);
    *(v53 + 34) = v43;
    *(v38 + 67) = v39;
    v66 = *(*(v38 + 34) + 72) + (*(v38 + 67) << 14);
    v54 = v66;
    v42 = 1;
    if (v61)
    {
      v42 = v54 % v61 == 0;
    }

    if (!v42)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alignment == 0 || (start % alignment) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2536)";
      __break(1u);
      JUMPOUT(0x7B84);
    }

    return v57;
  }

  else if (_xzm_segment_group_alloc_segment(v64, v58, v61, &v57, v60 & 1))
  {
    return v57;
  }

  else
  {
    return 0;
  }
}

uint64_t _xzm_segment_group_find_and_allocate_chunk(unint64_t *a1, unsigned __int8 a2, unsigned __int8 *a3, uint64_t *a4, unsigned int a5, unint64_t a6)
{
  v39 = a6;
  if (a2 < 2u)
  {
    goto LABEL_6;
  }

  if (a2 != 2)
  {
    if (a2 - 3 >= 2)
    {
      if (a2 - 5 >= 4)
      {
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = a2;
        __break(1u);
        JUMPOUT(0x7CC8);
      }

      goto LABEL_7;
    }

LABEL_6:
    v46 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v46 = 1;
LABEL_8:
  if (!v46)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_chunk(kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2131)";
    __break(1u);
    JUMPOUT(0x7CF8);
  }

  v23 = 1;
  if (a2 == 2)
  {
    v23 = a5 == 1;
  }

  if (!v23)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kind != XZM_SLICE_KIND_TINY_CHUNK || slice_count == 1 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2132)";
    __break(1u);
    JUMPOUT(0x7D54);
  }

  if (!a5)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_count != 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2133)";
    __break(1u);
    JUMPOUT(0x7D84);
  }

  if (a5 << 14 > 0x200000)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_count * XZM_SEGMENT_SLICE_SIZE <= XZM_LARGE_BLOCK_SIZE_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2135)";
    __break(1u);
    JUMPOUT(0x7DBCLL);
  }

  v22 = 1;
  if (a6)
  {
    v22 = a2 == 7;
  }

  if (!v22)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alignment == 0 || kind == XZM_SLICE_KIND_LARGE_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2136)";
    __break(1u);
    JUMPOUT(0x7E14);
  }

  v21 = 1;
  if (a2 == 2)
  {
    v21 = a3 != 0;
  }

  if (!v21)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kind != XZM_SLICE_KIND_TINY_CHUNK || guard_config != NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2138)";
    __break(1u);
    JUMPOUT(0x7E70);
  }

  v20 = 1;
  if (a2 == 5)
  {
    v20 = a3 != 0;
  }

  if (!v20)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kind != XZM_SLICE_KIND_SMALL_CHUNK || guard_config != NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2139)";
    __break(1u);
    JUMPOUT(0x7ECCLL);
  }

  v19 = 1;
  if (a2 == 6)
  {
    v19 = a3 != 0;
  }

  if (!v19)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kind != XZM_SLICE_KIND_SMALL_FREELIST_CHUNK || guard_config != NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2141)";
    __break(1u);
    JUMPOUT(0x7F28);
  }

  v18 = 1;
  if (a2 == 7)
  {
    v18 = a3 == 0;
  }

  if (!v18)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kind != XZM_SLICE_KIND_LARGE_CHUNK || guard_config == NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2142)";
    __break(1u);
    JUMPOUT(0x7F84);
  }

  if (a6 <= 0x4000)
  {
    v39 = 0;
  }

  v38 = v39 >> 14;
  if (((v39 >> 14) & 0x3FFFF00000000) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: Unexpected align value";
    qword_D8158 = v39;
    __break(1u);
    JUMPOUT(0x8000);
  }

  if (a3 && *a3)
  {
    v35 = arc4random_uniform(*a3) + 1;
    v36 = v35 * a5;
    v34 = (a3[1] * v36) >> 8;
    if (a3[1] * v36)
    {
      v33 = (a3[1] * v36);
      if (v33 > arc4random_uniform(0x100u))
      {
        ++v34;
      }
    }

    v37 = v36 + v34;
  }

  else
  {
    v37 = a5;
    v35 = 1;
    v34 = 0;
  }

  v17 = 1;
  if (v37 >= 0x81)
  {
    v17 = v39 != 0;
  }

  if (!v17)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion total_slice_count <= (XZM_LARGE_BLOCK_SIZE_MAX / XZM_SEGMENT_SLICE_SIZE) || alignment != 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2179)";
    __break(1u);
    JUMPOUT(0x8150);
  }

  if (v35 < v34)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunks_in_run >= guards failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2182)";
    __break(1u);
    JUMPOUT(0x8188);
  }

  if (v38)
  {
    v16 = v38 - 1;
    v6 = v37 + v38 - 1;
    v7 = __CFADD__(v37, v38 - 1);
    v37 += v16;
    if (v7)
    {
      qword_D8128 = "BUG IN LIBMALLOC: Unexpected total slice count";
      qword_D8158 = a5 + v16;
      __break(1u);
      JUMPOUT(0x8228);
    }

    if (v6 >= 0x100)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion total_slice_count < XZM_SLICES_PER_SEGMENT failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2202)";
      __break(1u);
      JUMPOUT(0x8264);
    }
  }

  v32 = xzm_span_queue_for (a1, v37);
LABEL_64:
  if (v32 >= a1 + 58)
  {
    return 0;
  }

  v30 = 0;
  for (i = *v32; ; i = v30)
  {
    v15 = 0;
    if (i)
    {
      v30 = *(i + 16);
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      v32 += 2;
      goto LABEL_64;
    }

    v14 = (*(i + 32) & 0xF) == 1 ? 1 : *(i + 40);
    v29 = v14;
    if (v14 >= v37)
    {
      break;
    }

LABEL_115:
    ;
  }

  v28 = a1[3];
  v47 = i & 0xFFFFFFFFFFFFC000;
  v13 = 1;
  if ((i & 0xFFFFFFFFFFFFC000) != 0)
  {
    v12 = 0;
    if (i >= v47 + 2136)
    {
      v12 = i < (i & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (i & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v13 = v12;
  }

  if ((v13 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x8410);
  }

  v27 = v37;
  v26 = 0;
  if (v38)
  {
    if (i < v47 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x8480);
    }

    v50 = 0xAAAAAAAAAAAAAAABLL * ((i - v47 - 2136) >> 4);
    if ((0xAAAAAAAAAAAAAAABLL * ((i - (i & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(&dword_10 + (i & 0xFFFFFFFFFFFFC000)))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x84E0);
    }

    if (v50 % v38)
    {
      v11 = v50 / v38 * v38 + v38;
    }

    else
    {
      v11 = -1431655765 * ((i - v47 - 2136) >> 4);
    }

    v26 = v11 - v50;
    if (a5 > v37 - (v11 - v50))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_count <= (total_slice_count - front_free_count) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2231)";
      __break(1u);
      JUMPOUT(0x8584);
    }

    v37 = a5;
    if (v26)
    {
      v29 = v14 - v26;
    }
  }

  v25 = v29 - v37;
  v10 = *a1;
  if (*a1)
  {
    if ((v10 - 1) < 2)
    {
      v48 = (*(a1[3] + 409) & 0x10) != 0;
      goto LABEL_97;
    }

    if (v10 != 3)
    {
      v8 = *a1;
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v8;
      __break(1u);
      JUMPOUT(0x8674);
    }
  }

  v48 = (*(a1[3] + 409) & 4) != 0;
LABEL_97:
  if (v48 && (_xzm_segment_group_span_mark_smaller(a1, i, v26, v37, v25) & 1) == 0)
  {
    v37 = v27;
    goto LABEL_115;
  }

  if (*(i + 16))
  {
    *(*(i + 16) + 24) = *(i + 24);
  }

  **(i + 24) = *(i + 16);
  *(i + 16) = -1;
  *(i + 24) = -1;
  if (v26)
  {
    i = _xzm_segment_group_segment_slice_split(a1, v47, i, v29, v48, 1);
  }

  if (v25)
  {
    _xzm_segment_group_segment_slice_split(a1, v47, i, v37, v48, 0);
  }

  if (i < v47 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x87CCLL);
  }

  v49 = 0xAAAAAAAAAAAAAAABLL * ((i - v47 - 2136) >> 4);
  if (v49 >= *(v47 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x882CLL);
  }

  inited = _xzm_segment_group_segment_span_init_run(a1, v47, a2, a4, v49, v37, v34, v35);
  if (!inited)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2282)";
    __break(1u);
    JUMPOUT(0x8894);
  }

  if (!_xzm_segment_group_segment_is_valid(a1, v47))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_group_segment_is_valid(sg, segment) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2284)";
    __break(1u);
    JUMPOUT(0x88CCLL);
  }

  return inited;
}

uint64_t _xzm_segment_group_alloc_segment_and_chunk(uint64_t a1, unsigned __int8 a2, unsigned __int8 *a3, uint64_t *a4, unsigned int a5, unint64_t a6)
{
  v11[8] = 0;
  *v11 = _xzm_segment_group_alloc_segment(a1, 0, 0, 0, 0);
  if (v11[0])
  {
    *&v11[1] = _xzm_segment_group_find_and_allocate_chunk(a1, a2, a3, a4, a5, a6);
    if (!*&v11[1])
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2565)";
      __break(1u);
      JUMPOUT(0x89CCLL);
    }

    v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v7 = v6;
    atomic_compare_exchange_strong_explicit((a1 + 4), &v7, 0, memory_order_release, memory_order_relaxed);
    if (v7 != v6)
    {
      os_unfair_lock_unlock((a1 + 4));
    }
  }

  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v9 = v8;
  atomic_compare_exchange_strong_explicit((a1 + 8), &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != v8)
  {
    os_unfair_lock_unlock((a1 + 8));
  }

  return *&v11[1];
}

uint64_t _xzm_segment_group_overwrite_chunk(mach_vm_address_t a1, mach_vm_size_t a2, int a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  address = a1;
  flags = 33570816;
  if ((a3 & 4) != 0)
  {
    flags = 33579008;
  }

  result = mach_vm_map(mach_task_self_, &address, a2, 0, flags, 0, 0, 0, 3, 7, 1u);
  if (result)
  {
    qword_D8128 = "BUG IN LIBMALLOC: mach_vm_map() overwrite failed";
    qword_D8158 = result;
    __break(1u);
    JUMPOUT(0x8C4CLL);
  }

  return result;
}

void _xzm_segment_group_clear_chunk(uint64_t a1, char *a2, unint64_t a3)
{
  if (madvise(a2, a3, 11))
  {
    v3 = *__error();
    malloc_zone_error(0, 0, "Failed to madvise(MADV_ZERO) chunk at %p, error: %d\n");
    _xzm_segment_group_bzero_chunk(a1, a2, a3);
  }
}

void xzm_segment_group_segment_madvise_span(uint64_t a1, void *a2, unsigned int a3)
{
  if ((a2 & 0x3FFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice_start % XZM_SEGMENT_SLICE_SIZE == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3173)";
    __break(1u);
    JUMPOUT(0x8D34);
  }

  xzm_madvise(*(a1 + 24), a2, a3 << 14);
}

void xzm_madvise(uint64_t a1, void *a2, size_t a3)
{
  if (mvm_madvise_plat(a2, a3, 7))
  {
    v3 = *__error();
    malloc_zone_error(0, 0, "Failed to madvise chunk at %p, error: %d\n");
  }
}

void xzm_segment_group_segment_madvise_chunk(uint64_t a1, unint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v15 = *(a2 + 32) & 0xF;
  v7 = v15;
  if (v15 < 2u)
  {
    goto LABEL_6;
  }

  if (v7 != 2)
  {
    if ((v7 - 3) >= 2)
    {
      if ((v7 - 5) >= 4)
      {
        v14 = v15;
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = v15;
        __break(1u);
        JUMPOUT(0x8EB4);
      }

      goto LABEL_7;
    }

LABEL_6:
    v16 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v16 = 1;
LABEL_8:
  if (!v16)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_chunk(chunk->xzc_bits.xzcb_kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3182)";
    __break(1u);
    JUMPOUT(0x8EE4);
  }

  v8 = 0;
  v13 = *(v10 + 24);
  v12 = v9;
  v11 = &v8;
  if (&v2 == -40)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size_out failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:397)";
    __break(1u);
    JUMPOUT(0x8F38);
  }

  v20 = v13;
  v19 = v12;
  v18 = v11;
  if (v11)
  {
    v6 = *(v19 + 32) & 0xF;
    switch(v6)
    {
      case 2:
        *v18 = 0x4000;
        break;
      case 5:
        *v18 = 0x10000;
        break;
      case 6:
        *v18 = 0x20000;
        break;
      default:
        if ((v6 - 7) >= 2)
        {
          v17 = *(v19 + 32) & 0xF;
          qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
          qword_D8158 = v17;
          __break(1u);
          JUMPOUT(0x9034);
        }

        *v18 = *(v19 + 40) << 14;
        break;
    }
  }

  v22 = v20;
  v21 = v19;
  v25 = v20;
  v24 = v19;
  v23 = v19 & 0xFFFFFFFFFFFFC000;
  v5 = 1;
  if ((v19 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v4 = 0;
    if (v24 >= v23 + 2136)
    {
      v4 = v24 < v23 + 48 * *(v23 + 16) + 2136;
    }

    v5 = v4;
  }

  if ((v5 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x910CLL);
  }

  v27 = v23;
  v26 = v21;
  v3 = v23;
  v30 = v23;
  v29 = v21;
  if (v21 < v23 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x9170);
  }

  v28 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30 - 2136) >> 4);
  if (v28 >= *(v30 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x91D0);
  }

  v32 = v3;
  v31 = v28;
  xzm_madvise(*(v10 + 24), (*(v3 + 72) + (v28 << 14)), v8);
}

void xzm_segment_group_free_chunk(unsigned __int8 *a1, unint64_t a2, char a3, char a4)
{
  v98 = &v120;
  v110 = a1;
  v109 = a2;
  v108 = a3;
  v107 = a4;
  v106 = *(a2 + 32) & 0xF;
  v116 = v106;
  v99 = v106;
  if (v106 < 2u)
  {
    goto LABEL_6;
  }

  if (v99 != 2)
  {
    if ((v99 - 3) >= 2)
    {
      if ((v99 - 5) >= 4)
      {
        v115 = v116;
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = v116;
        __break(1u);
        JUMPOUT(0x9300);
      }

      goto LABEL_7;
    }

LABEL_6:
    v117 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v117 = 1;
LABEL_8:
  if (!v117)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_chunk(kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3196)";
    __break(1u);
    JUMPOUT(0x9330);
  }

  if (v106 == 8)
  {
    _xzm_segment_group_free_huge_chunk(v110, v109, v108 & 1);
    return;
  }

  v105 = 0;
  v114 = *(v110 + 3);
  v113 = v109;
  v112 = &v105;
  if (&v77 == -152)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size_out failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:397)";
    __break(1u);
    JUMPOUT(0x93ACLL);
  }

  v4 = v98;
  v5 = v113;
  v6 = v112;
  *(v98 + 30) = v114;
  *(v4 + 29) = v5;
  *(v4 + 28) = v6;
  if (*(v4 + 28))
  {
    v97 = *(*(v98 + 29) + 32) & 0xF;
    switch(v97)
    {
      case 2:
        **(v98 + 28) = 0x4000;
        break;
      case 5:
        **(v98 + 28) = 0x10000;
        break;
      case 6:
        **(v98 + 28) = 0x20000;
        break;
      default:
        if ((v97 - 7) >= 2)
        {
          v7 = v98;
          *(v98 + 27) = *(*(v98 + 29) + 32) & 0xF;
          v8 = *(v7 + 27);
          qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
          qword_D8158 = v8;
          __break(1u);
          JUMPOUT(0x94C4);
        }

        **(v98 + 28) = *(*(v98 + 29) + 40) << 14;
        break;
    }
  }

  v9 = v98;
  v10 = *(v98 + 29);
  *(v98 + 68) = *(v98 + 30);
  *(v9 + 67) = v10;
  v11 = *(v9 + 67);
  *(v9 + 71) = *(v9 + 68);
  *(v9 + 70) = v11;
  *(v9 + 69) = *(v9 + 70) & 0xFFFFFFFFFFFFC000;
  v12 = *(v9 + 69);
  v96 = 1;
  if (v12)
  {
    _CF = *(v98 + 70) >= (*(v98 + 69) + 2136);
    v95 = 0;
    if (_CF)
    {
      v95 = *(v98 + 70) < *(v98 + 69) + 48 * *(*(v98 + 69) + 16) + 2136;
    }

    v96 = v95;
  }

  if ((v96 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x95A8);
  }

  v14 = v98;
  v15 = *(v98 + 67);
  *(v98 + 73) = *(v98 + 69);
  *(v14 + 72) = v15;
  v94 = *(v14 + 73);
  v16 = *(v14 + 72);
  *(v14 + 76) = v94;
  *(v14 + 75) = v16;
  if (*(v14 + 75) < (*(v14 + 76) + 2136))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x9610);
  }

  v17 = v98;
  *(v98 + 74) = 0xAAAAAAAAAAAAAAABLL * ((*(v98 + 75) - *(v98 + 76) - 2136) >> 4);
  if (*(v17 + 74) >= *(*(v17 + 76) + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x9674);
  }

  v18 = v98;
  v19 = *(v98 + 74);
  *(v98 + 78) = v94;
  *(v18 + 155) = v19;
  v111 = *(*(v18 + 78) + 72) + (*(v18 + 155) << 14);
  v104 = v111;
  v103 = 0;
  *(v18 + 4) = v110;
  *(v18 + 3) = *(*(v18 + 4) + 24);
  v125 = **(v18 + 4);
  v93 = v125;
  if (v125 < 2u)
  {
    v126 = 1;
  }

  else
  {
    if ((v93 - 2) >= 2)
    {
      v20 = v98;
      *(v98 + 23) = v125;
      v21 = *(v20 + 23);
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v21;
      __break(1u);
      JUMPOUT(0x9748);
    }

    v126 = 0;
  }

  v22 = v98;
  v121 = v126;
  *(v98 + 54) = *(v98 + 4);
  *(v22 + 53) = 16;
  *(v22 + 52) = 32769;
  v92 = **(v22 + 54);
  if (v92)
  {
    if ((v92 - 1) < 2)
    {
      *(v98 + 55) = 32769;
      goto LABEL_46;
    }

    if (v92 != 3)
    {
      v23 = v98;
      *(v98 + 51) = **(v98 + 54);
      v24 = *(v23 + 51);
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v24;
      __break(1u);
      JUMPOUT(0x9804);
    }
  }

  *(v98 + 55) = 16;
LABEL_46:
  v25 = v98;
  *(v98 + 1) = *(v98 + 55);
  v26 = *(v25 + 1);
  v27 = v121;
  *(v25 + 59) = *(v25 + 3);
  *(v25 + 58) = v26;
  v131 = v27 & 1;
  *(v25 + 56) = *(v25 + 59) + 368;
  LOBYTE(v25) = **(v25 + 56);
  v91 = 0;
  if (v25)
  {
    v28 = *(v98 + 58);
    v29 = *(*(v98 + 56) + 8);
    v91 = 0;
    if (v28 <= v29)
    {
      v90 = 1;
      if (v131)
      {
        v90 = *(*(v98 + 56) + 1);
      }

      v91 = v90;
    }
  }

  if (v91)
  {
    v30 = v98;
    v103 |= 4u;
    v31 = v105;
    *(v98 + 7) = v104;
    *(v30 + 6) = v31;
    *(v30 + 60) = *(v30 + 7);
    *(v30 + 66) = *(v30 + 60);
    *(v30 + 65) = 0;
    *(v30 + 65) = *(v30 + 66);
    *(v30 + 65) &= 0xF0FFFFFFFFFFFFFFLL;
    *(v30 + 5) = *(v30 + 65);
    v32 = *(v30 + 6);
    *(v30 + 64) = *(v30 + 5);
    *(v30 + 63) = v32;
    if ((v132 & 0xF) != 0)
    {
      __break(1u);
      JUMPOUT(0x9930);
    }

    if ((v133 & 0xF) != 0)
    {
      __break(1u);
      JUMPOUT(0x9948);
    }

    v33 = v98;
    *(v98 + 62) = *(v98 + 64);
    *(v33 + 61) = *(v33 + 64) + *(v33 + 63);
    _X9 = *(v33 + 62);
    __asm { STG             X9, [X9] }

    _X9 = *(v33 + 61);
    __asm { STG             X9, [X9,#-0x10] }

    if (*(v33 + 63) >= 0x21uLL)
    {
      v39 = v98;
      *(v98 + 62) = (*(v98 + 64) + 31) & 0xFFFFFFFFFFFFFFE0;
      *(v39 + 61) = (*(v39 + 64) + *(v39 + 63)) & 0xFFFFFFFFFFFFFFE0;
      _X9 = *(v39 + 62);
      __asm { ST2G            X9, [X9] }

      _X8 = *(v39 + 61);
      __asm { ST2G            X8, [X8,#-0x20] }
    }

    v42 = v98;
    *(v98 + 62) = (*(v98 + 64) + 63) & 0xFFFFFFFFFFFFFFC0;
    *(v42 + 61) = (*(v42 + 64) + *(v42 + 63)) & 0xFFFFFFFFFFFFFFC0;
    while (*(v98 + 62) < *(v98 + 61))
    {
      __asm { DC              GVA, X8 }

      *(v98 + 62) += 64;
    }
  }

  if (v108)
  {
    if (v106 != 7)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kind == XZM_SLICE_KIND_LARGE_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3217)";
      __break(1u);
      JUMPOUT(0x9A64);
    }

    _xzm_segment_group_overwrite_chunk(v104, v105, v103);
  }

  v43 = v98;
  v44 = v109;
  *(v98 + 10) = *(v110 + 3);
  *(v43 + 9) = v44;
  *(v43 + 8) = *(v43 + 9) & 0xFFFFFFFFFFFFC000;
  v45 = *(v43 + 8);
  v89 = 1;
  if (v45)
  {
    _CF = *(v98 + 9) >= (*(v98 + 8) + 2136);
    v88 = 0;
    if (_CF)
    {
      v88 = *(v98 + 9) < *(v98 + 8) + 48 * *(*(v98 + 8) + 16) + 2136;
    }

    v89 = v88;
  }

  if ((v89 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x9B4CLL);
  }

  v46 = v98;
  v102 = *(v98 + 8);
  *v98 = v110;
  if ((*(*(*v46 + 24) + 409) & 2) != 0 && v106 == 7)
  {
    _xzm_segment_group_overwrite_chunk(v104, v105, v103);
    goto LABEL_85;
  }

  v47 = v98;
  *(v98 + 18) = v110;
  v87 = **(v47 + 18);
  if (v87)
  {
    if ((v87 - 1) < 2)
    {
      v124 = (*(*(*(v98 + 18) + 24) + 409) & 0x10) != 0;
      goto LABEL_81;
    }

    if (v87 != 3)
    {
      v48 = v98;
      *(v98 + 17) = **(v98 + 18);
      v49 = *(v48 + 17);
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v49;
      __break(1u);
      JUMPOUT(0x9C54);
    }
  }

  v124 = (*(*(*(v98 + 18) + 24) + 409) & 4) != 0;
LABEL_81:
  if (!v124 && (v106 != 5 || (v107 & 1) != 0))
  {
    xzm_segment_group_segment_madvise_chunk(v110, v109);
  }

LABEL_85:
  v50 = v98;
  v118 = v110 + 4;
  *(v98 + 40) = v110 + 4;
  *(v50 + 79) = 327680;
  v51 = v98;
  *(v98 + 41) = 3;
  *(v51 + 42) = *(v51 + 41);
  *(v51 + 43) = 0;
  *(v51 + 43) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(v51 + 78) = *(*(v51 + 43) + 8 * *(v51 + 42));
  *(v51 + 77) = 0;
  *(v51 + 76) = 0;
  *(v51 + 76) = *(v51 + 78);
  v52 = *(v51 + 40);
  *(v51 + 75) = *(v51 + 76);
  v53 = *(v51 + 77);
  v54 = *(v51 + 75);
  LODWORD(v51) = v53;
  atomic_compare_exchange_strong_explicit(v52, &v51, v54, memory_order_acquire, memory_order_acquire);
  v85 = v51;
  v86 = v51 == v53;
  if (v51 != v53)
  {
    *(v98 + 77) = v85;
  }

  v129 = v86;
  if (!v86)
  {
    v55 = *(v98 + 40);
    v56 = *(v98 + 79);
    os_unfair_lock_lock_with_options();
  }

  if (!_xzm_segment_group_segment_is_valid(v110, v102))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_group_segment_is_valid(sg, segment) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3241)";
    __break(1u);
    JUMPOUT(0x9DC4);
  }

  v57 = v98;
  *(v98 + 15) = v110;
  v84 = **(v57 + 15);
  if (!v84)
  {
    goto LABEL_94;
  }

  if ((v84 - 1) >= 2)
  {
    if (v84 != 3)
    {
      v58 = v98;
      *(v98 + 14) = **(v98 + 15);
      v59 = *(v58 + 14);
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v59;
      __break(1u);
      JUMPOUT(0x9E80);
    }

LABEL_94:
    v123 = (*(*(*(v98 + 15) + 24) + 409) & 4) != 0;
    goto LABEL_97;
  }

  v123 = (*(*(*(v98 + 15) + 24) + 409) & 0x10) != 0;
LABEL_97:
  v83 = 0;
  if (v123)
  {
    v60 = v98;
    v61 = v109;
    *(v98 + 22) = v102;
    *(v60 + 21) = v61;
    v62 = *(v60 + 21);
    *(v60 + 33) = *(v60 + 22);
    *(v60 + 32) = v62;
    v63 = *(v60 + 33);
    v82 = v63 + 88;
    v64 = *(v60 + 32);
    *(v60 + 36) = v63;
    *(v60 + 35) = v64;
    if (*(v60 + 35) < (*(v60 + 36) + 2136))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x9F10);
    }

    v65 = v98;
    *(v98 + 34) = 0xAAAAAAAAAAAAAAABLL * ((*(v98 + 35) - *(v98 + 36) - 2136) >> 4);
    if (*(v65 + 34) >= *(*(v65 + 36) + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x9F74);
    }

    v66 = v98;
    *(v98 + 31) = v82 + 8 * *(v98 + 68);
    *(v66 + 20) = *(v66 + 31);
    v83 = **(v66 + 20) != -1;
  }

  if (v83)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !(_xzm_segment_group_uses_deferred_reclamation(sg) && _xzm_segment_slice_is_deferred(segment, chunk)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3244)";
    __break(1u);
    JUMPOUT(0x9FD8);
  }

  v101 = _xzm_segment_group_segment_span_free_coalesce(v110, v102, v109, 0);
  --*(v102 + 8);
  if (v106 == 8)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kind != XZM_SLICE_KIND_HUGE_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3253)";
    __break(1u);
    JUMPOUT(0xA034);
  }

  v67 = *(*(v110 + 3) + 409);
  v81 = 0;
  if ((v67 & 0x20) != 0)
  {
    v127 = **v102;
    v80 = v127;
    if (v127 < 2u)
    {
      v128 = 1;
    }

    else
    {
      if ((v80 - 2) >= 2)
      {
        v68 = v98;
        *(v98 + 25) = v127;
        v69 = *(v68 + 25);
        qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
        qword_D8158 = v69;
        __break(1u);
        JUMPOUT(0xA0DCLL);
      }

      v128 = 0;
    }

    v81 = v128;
  }

  v100 = v81;
  if (!*(v102 + 8) && (v100 & 1) != 0)
  {
    _xzm_segment_group_segment_free(v110, v102);
    return;
  }

  v70 = v98;
  *(v98 + 12) = v110;
  v79 = **(v70 + 12);
  if (v79)
  {
    if ((v79 - 1) < 2)
    {
      v122 = (*(*(*(v98 + 12) + 24) + 409) & 0x10) != 0;
      goto LABEL_123;
    }

    if (v79 != 3)
    {
      v71 = v98;
      *(v98 + 11) = **(v98 + 12);
      v72 = *(v71 + 11);
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v72;
      __break(1u);
      JUMPOUT(0xA1DCLL);
    }
  }

  v122 = (*(*(*(v98 + 12) + 24) + 409) & 4) != 0;
LABEL_123:
  if (v122)
  {
    _xzm_segment_group_span_mark_free(v110, v101);
  }

  if (!_xzm_segment_group_segment_is_valid(v110, v102))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_group_segment_is_valid(sg, segment) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3273)";
    __break(1u);
    JUMPOUT(0xA234);
  }

  v73 = v98;
  v119 = v110 + 4;
  *(v98 + 47) = v110 + 4;
  *(v73 + 48) = 3;
  *(v73 + 49) = *(v73 + 48);
  *(v73 + 50) = 0;
  *(v73 + 50) = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(v73 + 93) = *(*(v73 + 50) + 8 * *(v73 + 49));
  *(v73 + 92) = 0;
  *(v73 + 91) = 0;
  *(v73 + 91) = *(v73 + 93);
  v74 = *(v73 + 47);
  *(v73 + 90) = *(v73 + 92);
  v75 = *(v73 + 91);
  v76 = *(v73 + 90);
  LODWORD(v73) = v75;
  atomic_compare_exchange_strong_explicit(v74, &v73, v76, memory_order_release, memory_order_relaxed);
  HIDWORD(v77) = v73;
  v78 = v73 == v75;
  if (v73 != v75)
  {
    *(v98 + 91) = HIDWORD(v77);
  }

  v130 = v78;
  if (!v78)
  {
    os_unfair_lock_unlock(*(v98 + 47));
  }
}

void _xzm_segment_group_free_huge_chunk(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *(a1 + 24);
  v6 = a2 & 0xFFFFFFFFFFFFC000;
  v4 = 1;
  if ((a2 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v3 = 0;
    if (a2 >= v6 + 2136)
    {
      v3 = a2 < (a2 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a2 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v4 = v3;
  }

  if ((v4 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0xA3F8);
  }

  if (*(&dword_14 + (a2 & 0xFFFFFFFFFFFFC000)) != 1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment->xzs_kind == XZM_SEGMENT_KIND_HUGE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3128)";
    __break(1u);
    JUMPOUT(0xA438);
  }

  if (*(&dword_8 + (a2 & 0xFFFFFFFFFFFFC000)) != 1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment->xzs_used == 1 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3129)";
    __break(1u);
    JUMPOUT(0xA470);
  }

  if (!*(a1 + 512) || (a3 & 1) != 0 || *(&dword_C + (a2 & 0xFFFFFFFFFFFFC000)) > *(a1 + 516) || *(&dword_C + (a2 & 0xFFFFFFFFFFFFC000)) < 0x81 || !_xzm_segment_group_free_huge_chunk_to_cache(a1, v6, a2))
  {
    _xzm_segment_group_segment_deallocate(a1, v6, 1);
  }
}

uint64_t _xzm_segment_group_segment_is_valid(os_unfair_lock_s *a1, uint64_t a2)
{
  if (*a2 != a1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment->xzs_segment_group == sg failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1531)";
    __break(1u);
    JUMPOUT(0xA558);
  }

  v16 = a2 + 48 * *(a2 + 16) + 2136;
  v14 = a2 + 2136;
  if (*(a2 + 20) == 1)
  {
    if (*(a2 + 8) != 1)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment->xzs_used == 1 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1537)";
      __break(1u);
      JUMPOUT(0xA5E8);
    }

    if ((*(a2 + 2168) & 0xF) != 8)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_HUGE_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1539)";
      __break(1u);
      JUMPOUT(0xA62CLL);
    }

    if (*(a2 + 2176) != *(a2 + 12))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzcs_slice_count == segment->xzs_slice_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1540)";
      __break(1u);
      JUMPOUT(0xA66CLL);
    }
  }

  else
  {
    os_unfair_lock_assert_owner(a1 + 1);
    while (v14 < v16)
    {
      v13 = *(v14 + 32) & 0xF;
      switch(v13)
      {
        case 1u:
          if (*(v14 + 34))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice->xzc_mzone_idx == XZM_MZONE_INDEX_INVALID failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1603)";
            __break(1u);
            JUMPOUT(0xABC0);
          }

          _xzm_segment_group_assert_correct_span_queue(a1, v14);
          if (v14 < a2 + 2136)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
            __break(1u);
            JUMPOUT(0xAC30);
          }

          v22 = 0xAAAAAAAAAAAAAAABLL * ((v14 - a2 - 2136) >> 4);
          if (v22 >= *(a2 + 16))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
            __break(1u);
            JUMPOUT(0xAC90);
          }

          v4 = 1;
          if (*(a2 + 88 + 8 * v22) != -1)
          {
            v4 = ((*(v14 + 32) >> 4) & 1) == 0;
          }

          if (!v4)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *reclaim_id == VM_RECLAIM_ID_NULL || !slice->xzc_bits.xzcb_is_pristine failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1609)";
            __break(1u);
            JUMPOUT(0xAD10);
          }

          v14 += 48;
          break;
        case 2u:
          v14 += 48;
          break;
        case 3u:
          if (*(v14 + 34))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice->xzc_mzone_idx == XZM_MZONE_INDEX_INVALID failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1615)";
            __break(1u);
            JUMPOUT(0xAD54);
          }

          _xzm_segment_group_assert_correct_span_queue(a1, v14);
          if (v14 < a2 + 2136)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
            __break(1u);
            JUMPOUT(0xADACLL);
          }

          v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - a2 - 2136) >> 4);
          if (v19 >= *(a2 + 16))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
            __break(1u);
            JUMPOUT(0xAE0CLL);
          }

          v7 = *(v14 + 40);
          if (v7 <= 1)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_count > 1 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1620)";
            __break(1u);
            JUMPOUT(0xAE54);
          }

          v6 = v19 + v7 - 1;
          if (v6 >= *(a2 + 16))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion last_slice_index < segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1623)";
            __break(1u);
            JUMPOUT(0xAEA4);
          }

          if ((*(a2 + 48 * v6 + 2168) & 0xF) != 4)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion last->xzc_bits.xzcb_kind == XZM_SLICE_KIND_MULTI_BODY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1627)";
            __break(1u);
            JUMPOUT(0xAEFCLL);
          }

          if (*(a2 + 48 * v6 + 2172) != 48 * v7 - 48)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion last->xzsl_slice_offset_bytes == (uint32_t)(sizeof(struct xzm_slice_s) * (slice_count - 1)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1629)";
            __break(1u);
            JUMPOUT(0xAF44);
          }

          if (v14 < a2 + 2136)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
            __break(1u);
            JUMPOUT(0xAFA8);
          }

          v21 = 0xAAAAAAAAAAAAAAABLL * ((v14 - a2 - 2136) >> 4);
          if (v21 >= *(a2 + 16))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
            __break(1u);
            JUMPOUT(0xB008);
          }

          v3 = 1;
          if (*(a2 + 88 + 8 * v21) != -1)
          {
            v3 = ((*(v14 + 32) >> 4) & 1) == 0;
          }

          if (!v3)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *reclaim_id == VM_RECLAIM_ID_NULL || !slice->xzc_bits.xzcb_is_pristine failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1635)";
            __break(1u);
            JUMPOUT(0xB088);
          }

          v14 = a2 + 48 * v6 + 2184;
          break;
        default:
          if (v13 - 5 < 3)
          {
            if (v14 < a2 + 2136)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
              __break(1u);
              JUMPOUT(0xA77CLL);
            }

            v20 = 0xAAAAAAAAAAAAAAABLL * ((v14 - a2 - 2136) >> 4);
            if (v20 >= *(a2 + 16))
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
              __break(1u);
              JUMPOUT(0xA7DCLL);
            }

            v12 = *(v14 + 40);
            if (v12 <= 1)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_count > 1 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1557)";
              __break(1u);
              JUMPOUT(0xA824);
            }

            v15 = v14 + 48;
            if (v12 - 1 > 6)
            {
              v5 = 7;
            }

            else
            {
              v5 = v12 - 1;
            }

            for (i = 1; i <= v5; ++i)
            {
              if ((*(v15 + 32) & 0xF) != 4)
              {
                qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice->xzc_bits.xzcb_kind == XZM_SLICE_KIND_MULTI_BODY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1563)";
                __break(1u);
                JUMPOUT(0xA8C4);
              }

              if (*(v15 + 36) != 48 * i)
              {
                qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice->xzsl_slice_offset_bytes == (uint32_t)(sizeof(struct xzm_slice_s) * i) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1565)";
                __break(1u);
                JUMPOUT(0xA904);
              }

              v15 += 48;
            }

            v10 = v20 + v12 - 1;
            if (v10 >= *(a2 + 16))
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion last_slice_index < segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1569)";
              __break(1u);
              JUMPOUT(0xA974);
            }

            if (a2 + 48 * v10 + 2136 >= v15)
            {
              if ((*(a2 + 48 * v10 + 2168) & 0xF) != 4)
              {
                qword_D8128 = "BUG IN LIBMALLOC: malloc assertion last->xzc_bits.xzcb_kind == XZM_SLICE_KIND_MULTI_BODY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1573)";
                __break(1u);
                JUMPOUT(0xA9E0);
              }

              if (*(a2 + 48 * v10 + 2172) != 48 * v12 - 48)
              {
                qword_D8128 = "BUG IN LIBMALLOC: malloc assertion last->xzsl_slice_offset_bytes == (uint32_t)(sizeof(struct xzm_slice_s) * (slice_count - 1)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1576)";
                __break(1u);
                JUMPOUT(0xAA28);
              }
            }

            v14 = a2 + 48 * v10 + 2184;
          }

          else
          {
            if (v13 == 8)
            {
              qword_D8128 = "BUG IN LIBMALLOC: huge chunk in normal segment";
              __break(1u);
              JUMPOUT(0xAB8CLL);
            }

            if (v13 != 9)
            {
              qword_D8128 = "BUG IN LIBMALLOC: Unexpected slice kind";
              qword_D8158 = v13;
              __break(1u);
              JUMPOUT(0xB0CCLL);
            }

            v9 = *(v14 + 40);
            v14 += 48;
            for (j = 1; j < v9; ++j)
            {
              if ((*(v14 + 32) & 0xF) != 4)
              {
                qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice->xzc_bits.xzcb_kind == XZM_SLICE_KIND_MULTI_BODY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1587)";
                __break(1u);
                JUMPOUT(0xAAB0);
              }

              if (*(v14 + 36) != 48 * j)
              {
                qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice->xzsl_slice_offset_bytes == (uint32_t)(sizeof(struct xzm_slice_s) * i) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1589)";
                __break(1u);
                JUMPOUT(0xAAF0);
              }

              v14 += 48;
            }

            if (v14 < v16 && (*(v14 + 32) & 0xF) == 9)
            {
              qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice->xzc_bits.xzcb_kind != XZM_SLICE_KIND_GUARD failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1594)";
              __break(1u);
              JUMPOUT(0xAB60);
            }
          }

          break;
      }
    }
  }

  return 1;
}

unint64_t _xzm_segment_group_segment_span_free_coalesce(unsigned __int8 *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v24 = *(a3 + 32) & 0xF;
  if (v24 < 2u)
  {
    goto LABEL_6;
  }

  if (v24 != 2)
  {
    if (v24 - 3 >= 2)
    {
      if (v24 - 5 >= 4)
      {
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = v24;
        __break(1u);
        JUMPOUT(0xB1D0);
      }

      goto LABEL_7;
    }

LABEL_6:
    v25 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v25 = 1;
LABEL_8:
  if (v25 == 1)
  {
    if ((*(a3 + 32) & 0xF) == 2)
    {
      v16 = 1;
    }

    else
    {
      v16 = *(a3 + 40);
    }

    v19 = v16;
  }

  else
  {
    v30 = *(a3 + 32) & 0xF;
    v15 = 1;
    if (v30 != 1)
    {
      v15 = v30 == 3;
    }

    if (!v15)
    {
      qword_D8128 = "BUG IN LIBMALLOC: attempting to coalesce slice of unexpected type";
      __break(1u);
      JUMPOUT(0xB2ECLL);
    }

    if ((*(a3 + 32) & 0xF) == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = *(a3 + 40);
    }

    v19 = v14;
  }

  v18 = a3;
  if (a4)
  {
    *a4 = 1;
  }

  *(a3 + 32) &= 0xF0u;
  v17 = a3 + 48 * v19;
  if (v17 < a2 + 48 * *(a2 + 16) + 2136)
  {
    v29 = *(v17 + 32) & 0xF;
    v13 = 1;
    if (v29 != 1)
    {
      v13 = v29 == 3;
    }

    if (v13)
    {
      v12 = *a1;
      if (*a1)
      {
        if ((v12 - 1) < 2)
        {
          v27 = (*(*(a1 + 3) + 409) & 0x10) != 0;
          goto LABEL_33;
        }

        if (v12 != 3)
        {
          v4 = *a1;
          qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
          qword_D8158 = v4;
          __break(1u);
          JUMPOUT(0xB470);
        }
      }

      v27 = (*(*(a1 + 3) + 409) & 4) != 0;
LABEL_33:
      if (!v27 || (_xzm_segment_group_span_mark_used(a1, v17) & 1) != 0)
      {
        if ((*(v17 + 32) & 0xF) == 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = *(v17 + 40);
        }

        v19 += v11;
        _xzm_segment_group_segment_span_remove_from_queue(a1, v17);
      }

      else if (a4)
      {
        *a4 = 0;
      }
    }
  }

  if (a3 > a2 + 2136)
  {
    v33 = a3 - 48;
    if ((*(a3 - 16) & 0xF) == 4)
    {
      v32 = a3 - 48 - *(a3 - 12);
      if (v32 < (v33 & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0xB5DCLL);
      }

      v35 = a3 - 48 - *(a3 - 12);
      v10 = *(v32 + 32) & 0xF;
      if ((v10 - 1) < 2)
      {
        v36 = v32 == v33;
      }

      else if (v10 == 3 || (v10 - 5) < 5)
      {
        if (v33 < v32)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0xB68CLL);
        }

        v36 = v33 < v32 + 48 * *(v32 + 40);
      }

      else
      {
        v36 = 0;
      }

      v34 = v36 ? a3 - 48 - *(a3 - 12) : a3 - 48;
    }

    else
    {
      v34 = a3 - 48;
    }

    v28 = *(v34 + 32) & 0xF;
    v9 = 1;
    if (v28 != 1)
    {
      v9 = v28 == 3;
    }

    if (v9)
    {
      v8 = *a1;
      if (*a1)
      {
        if ((v8 - 1) < 2)
        {
          v26 = (*(*(a1 + 3) + 409) & 0x10) != 0;
          goto LABEL_67;
        }

        if (v8 != 3)
        {
          v5 = *a1;
          qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
          qword_D8158 = v5;
          __break(1u);
          JUMPOUT(0xB800);
        }
      }

      v26 = (*(*(a1 + 3) + 409) & 4) != 0;
LABEL_67:
      if (!v26 || (_xzm_segment_group_span_mark_used(a1, v34) & 1) != 0)
      {
        if ((*(v34 + 32) & 0xF) == 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = *(v34 + 40);
        }

        v19 += v7;
        _xzm_segment_group_segment_span_remove_from_queue(a1, v34);
        v18 = v34;
      }

      else if (a4)
      {
        *a4 = 0;
      }
    }
  }

  if (v18 < a2 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0xB928);
  }

  v31 = 0xAAAAAAAAAAAAAAABLL * ((v18 - a2 - 2136) >> 4);
  if (v31 >= *(a2 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0xB98CLL);
  }

  _xzm_segment_group_segment_span_free(a1, a2, v31, v19, 1, 0);
  return v18;
}

void _xzm_segment_group_segment_free(unsigned __int8 *a1, unint64_t a2)
{
  v16 = a1;
  v15 = a2;
  if (*(a2 + 8))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment->xzs_used == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2909)";
    __break(1u);
    JUMPOUT(0xBA14);
  }

  v34 = v15;
  v14 = v15 + 2136;
  v13 = 0;
  v19 = v16;
  v11 = *v16;
  if (!*v16)
  {
    goto LABEL_6;
  }

  if ((v11 - 1) >= 2)
  {
    if (v11 != 3)
    {
      v2 = *v19;
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v2;
      __break(1u);
      JUMPOUT(0xBAE0);
    }

LABEL_6:
    v20 = (*(*(v19 + 3) + 409) & 4) != 0;
    goto LABEL_9;
  }

  v20 = (*(*(v19 + 3) + 409) & 0x10) != 0;
LABEL_9:
  if (v20)
  {
    if ((_xzm_segment_group_span_mark_used(v16, v14) & 1) == 0)
    {
LABEL_26:
      v33 = v15;
      v13 = v15 + 2136;
      do
      {
        v14 = v13;
        v23 = v15;
        v22 = v13;
        v29 = v15;
        v28 = v13;
        v32 = v15;
        v31 = v13;
        if (v13 < v15 + 2136)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
          __break(1u);
          JUMPOUT(0xBDBCLL);
        }

        v30 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v32 - 2136) >> 4);
        if (v30 >= *(v32 + 16))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
          __break(1u);
          JUMPOUT(0xBE20);
        }

        v27 = (v15 + 88 + 8 * v30);
        v21 = v27;
        if (*v27 == -1)
        {
          _xzm_segment_group_span_mark_free(v16, v14);
        }

        v24 = v14;
        if ((*(v14 + 32) & 0xF) == 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = *(v24 + 40);
        }

        v13 = v14 + 48 * v9;
        v26 = v15;
      }

      while (v13 < v15 + 48 * *(v15 + 16) + 2136);
      v17 = v16 + 4;
      v50 = (v16 + 4);
      v51 = 3;
      v52 = 3;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v49 = *(StatusReg + 24);
      v48 = 0;
      v47 = v49;
      v46 = 0;
      v7 = v49;
      v8 = v49;
      atomic_compare_exchange_strong_explicit((v16 + 4), &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 != v7)
      {
        v47 = v8;
      }

      v45 = v8 == v7;
      if (v8 != v7)
      {
        os_unfair_lock_unlock(v50);
      }

      return;
    }

    while (1)
    {
      v25 = v14;
      v10 = (*(v14 + 32) & 0xF) == 1 ? 1 : *(v25 + 40);
      v35 = v15;
      if (v10 >= *(v15 + 12))
      {
        break;
      }

      v12 = 0;
      v3 = *(v14 + 40);
      _xzm_segment_group_segment_span_remove_from_queue(v16, v14);
      v14 = _xzm_segment_group_segment_span_free_coalesce(v16, v15, v14, &v12);
      if ((v12 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  if ((*(v14 + 32) & 0xF) != 3)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion span->xzc_bits.xzcb_kind == XZM_SLICE_KIND_MULTI_FREE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2935)";
    __break(1u);
    JUMPOUT(0xBBF0);
  }

  if (*(v14 + 40) != *(v15 + 12))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion span->xzcs_slice_count == segment->xzs_slice_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2936)";
    __break(1u);
    JUMPOUT(0xBC30);
  }

  v4 = *(v14 + 40);
  _xzm_segment_group_segment_span_remove_from_queue(v16, v14);
  v18 = v16 + 4;
  v41 = (v16 + 4);
  v42 = 3;
  v43 = 3;
  v44 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v40 = *(v44 + 24);
  v39 = 0;
  v38 = v40;
  v37 = 0;
  v5 = v40;
  v6 = v40;
  atomic_compare_exchange_strong_explicit((v16 + 4), &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != v5)
  {
    v38 = v6;
  }

  v36 = v6 == v5;
  if (v6 != v5)
  {
    os_unfair_lock_unlock(v41);
  }

  _xzm_segment_group_segment_deallocate(v16, v15, 1);
}

uint64_t _xzm_segment_group_span_mark_free(unsigned __int8 *a1, unint64_t a2)
{
  v10 = *a1;
  if (!*a1)
  {
LABEL_4:
    v14 = (*(*(a1 + 3) + 409) & 4) != 0;
    goto LABEL_7;
  }

  if ((v10 - 1) >= 2)
  {
    if (v10 != 3)
    {
      v2 = *a1;
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v2;
      __break(1u);
      JUMPOUT(0xC0A0);
    }

    goto LABEL_4;
  }

  v14 = (*(*(a1 + 3) + 409) & 0x10) != 0;
LABEL_7:
  if (!v14)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_group_uses_deferred_reclamation(sg) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1656)";
    __break(1u);
    JUMPOUT(0xC0D0);
  }

  v15 = *(a2 + 32) & 0xF;
  v9 = 1;
  if (v15 != 1)
  {
    v9 = v15 == 3;
  }

  if (!v9)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_free_span(span->xzc_bits.xzcb_kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1657)";
    __break(1u);
    JUMPOUT(0xC13CLL);
  }

  v13 = a2 & 0xFFFFFFFFFFFFC000;
  v8 = 1;
  if ((a2 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v7 = 0;
    if (a2 >= v13 + 2136)
    {
      v7 = a2 < (a2 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a2 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v8 = v7;
  }

  if ((v8 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0xC230);
  }

  if (a2 < v13 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0xC29CLL);
  }

  if ((0xAAAAAAAAAAAAAAABLL * ((a2 - (a2 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(dword_10 + (a2 & 0xFFFFFFFFFFFFC000)))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0xC2FCLL);
  }

  v12 = (v13 + 88 + 0xFFFFFFFD55555558 * ((a2 - v13 - 2136) >> 4));
  if (*v12 != -1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *reclaim_id == VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1664)";
    __break(1u);
    JUMPOUT(0xC34CLL);
  }

  if ((*(a2 + 32) & 0xF) == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a2 + 40);
  }

  v16 = a2 & 0xFFFFFFFFFFFFC000;
  v5 = 1;
  if ((a2 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v4 = 0;
    if (a2 >= v16 + 2136)
    {
      v4 = a2 < (a2 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a2 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v5 = v4;
  }

  if ((v5 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0xC474);
  }

  if (a2 < v16 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0xC4D8);
  }

  if ((0xAAAAAAAAAAAAAAABLL * ((a2 - (a2 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(dword_10 + (a2 & 0xFFFFFFFFFFFFC000)))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0xC538);
  }

  v11 = *(&stru_20.fileoff + (a2 & 0xFFFFFFFFFFFFC000)) + ((-1431655765 * ((a2 - v16 - 2136) >> 4)) << 14);
  result = _xzm_reclaim_mark_free(*(*(a1 + 3) + 568), *(&stru_20.fileoff + (a2 & 0xFFFFFFFFFFFFC000)) - (((a2 - v16 - 2136) >> 4) << 14), (v6 << 14));
  *v12 = result;
  return result;
}

uint64_t xzm_segment_group_try_realloc_large_chunk(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v53 = a1;
  v52 = a2;
  v51 = a3;
  v50 = a4;
  v70 = *(a1 + 24);
  v69 = a3;
  v68 = a3 & 0xFFFFFFFFFFFFC000;
  v38 = 1;
  if ((a3 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v37 = 0;
    if (v69 >= v68 + 2136)
    {
      v37 = v69 < v68 + 48 * *(v68 + 16) + 2136;
    }

    v38 = v37;
  }

  if ((v38 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0xC684);
  }

  if (v68 != v52)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_for_slice(&sg->xzsg_main_ref->xzmz_base, chunk) == segment failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3284)";
    __break(1u);
    JUMPOUT(0xC6C0);
  }

  if (v50 <= 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_slice_count > (XZM_SMALL_BLOCK_SIZE_MAX / XZM_SEGMENT_SLICE_SIZE) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3286)";
    __break(1u);
    JUMPOUT(0xC6F4);
  }

  if (v50 >= 0x81)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_slice_count <= (XZM_LARGE_BLOCK_SIZE_MAX / XZM_SEGMENT_SLICE_SIZE) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3288)";
    __break(1u);
    JUMPOUT(0xC728);
  }

  if ((*(v51 + 32) & 0xF) != 7)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_LARGE_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3289)";
    __break(1u);
    JUMPOUT(0xC764);
  }

  if (*(v51 + 40) < v50)
  {
    v56 = v53 + 4;
    v96 = v53 + 4;
    v95 = 327680;
    v105 = 3;
    v106 = 3;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v94 = *(StatusReg + 24);
    v93 = 0;
    v92 = v94;
    v91 = v94;
    v4 = 0;
    atomic_compare_exchange_strong_explicit((v53 + 4), &v4, v94, memory_order_acquire, memory_order_acquire);
    if (v4)
    {
      v93 = v4;
    }

    v90 = v4 == 0;
    if (v4)
    {
      os_unfair_lock_lock_with_options();
    }

    v49 = v50 - *(v51 + 40);
    v48 = v51 + 48 * *(v51 + 40);
    v77 = v48;
    if ((*(v48 + 32) & 0xF) == 1)
    {
      v36 = 1;
    }

    else
    {
      v36 = *(v77 + 40);
    }

    v47 = v36;
    v78 = v52;
    if (v48 >= v78 + 48 * *(v78 + 16) + 2136)
    {
      goto LABEL_28;
    }

    v79 = *(v48 + 32) & 0xF;
    v35 = 1;
    if (v79 != 1)
    {
      v35 = v79 == 3;
    }

    if (!v35 || v47 < v49)
    {
LABEL_28:
      v60 = v53 + 4;
      v115 = (v53 + 4);
      v116 = 3;
      v117 = 3;
      v114 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v113 = 0;
      v112 = v114;
      v111 = 0;
      v5 = v114;
      v6 = v114;
      atomic_compare_exchange_strong_explicit((v53 + 4), &v6, 0, memory_order_release, memory_order_relaxed);
      if (v6 != v5)
      {
        v112 = v6;
      }

      v110 = v6 == v114;
      if (v6 != v114)
      {
        os_unfair_lock_unlock(v115);
      }

      return 0;
    }

    v46 = v47 - v49;
    v45 = 0;
    v72 = v53;
    v34 = *v53;
    if (*v53)
    {
      if ((v34 - 1) < 2)
      {
        v73 = (*(*(v72 + 3) + 409) & 0x10) != 0;
        goto LABEL_39;
      }

      if (v34 != 3)
      {
        v71 = *v72;
        qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
        qword_D8158 = v71;
        __break(1u);
        JUMPOUT(0xCB44);
      }
    }

    v73 = (*(*(v72 + 3) + 409) & 4) != 0;
LABEL_39:
    v45 = v73;
    if (v73 && (_xzm_segment_group_span_mark_smaller(v53, v48, 0, v49, v46) & 1) == 0)
    {
      v59 = v53 + 4;
      v123 = (v53 + 4);
      v124 = 3;
      v125 = 3;
      v122 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v121 = 0;
      v120 = v122;
      v119 = 0;
      v7 = v122;
      v8 = v122;
      atomic_compare_exchange_strong_explicit((v53 + 4), &v8, 0, memory_order_release, memory_order_relaxed);
      if (v8 != v7)
      {
        v120 = v8;
      }

      v118 = v8 == v122;
      if (v8 != v122)
      {
        os_unfair_lock_unlock(v123);
      }

      return 0;
    }

    _xzm_segment_group_segment_span_remove_from_queue(v53, v48);
    if (v46)
    {
      _xzm_segment_group_segment_slice_split(v53, v52, v48, v49, v45, 0);
    }

    for (i = 0; i < v49; ++i)
    {
      *(v48 + 48 * i + 32) = *(v48 + 48 * i + 32) & 0xF0 | 4;
      *(v48 + 48 * i + 36) = v48 + 48 * i - v51;
    }

    *(v51 + 40) = v50;
    if (!_xzm_segment_group_segment_is_valid(v53, v52))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_group_segment_is_valid(sg, segment) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3336)";
      __break(1u);
      JUMPOUT(0xCD50);
    }

    v58 = v53 + 4;
    v131 = (v53 + 4);
    v132 = 3;
    v133 = 3;
    v134 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v130 = *(v134 + 24);
    v129 = 0;
    v128 = v130;
    v127 = 0;
    v9 = v130;
    v10 = v130;
    atomic_compare_exchange_strong_explicit((v53 + 4), &v10, 0, memory_order_release, memory_order_relaxed);
    if (v10 != v9)
    {
      v128 = v10;
    }

    v126 = v10 == v130;
    if (v10 != v130)
    {
      os_unfair_lock_unlock(v131);
    }

    v64 = v53;
    v63 = *(v53 + 3);
    v75 = *v53;
    if (v75 < 2u)
    {
      v76 = 1;
    }

    else
    {
      if (v75 - 2 >= 2)
      {
        v74 = v75;
        qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
        qword_D8158 = v75;
        __break(1u);
        JUMPOUT(0xCEBCLL);
      }

      v76 = 0;
    }

    v62 = v76;
    v146 = v64;
    v145 = 16;
    v144 = 32769;
    v33 = *v64;
    if (*v64)
    {
      if ((v33 - 1) < 2)
      {
        v147 = 32769;
LABEL_68:
        v61 = v147;
        v151 = v63;
        v150 = v147;
        v149 = v62 & 1;
        v148 = v63 + 368;
        v32 = 0;
        if (*(v63 + 368))
        {
          v32 = 0;
          if (v150 <= *(v148 + 8))
          {
            v31 = 1;
            if (v149)
            {
              v31 = *(v148 + 1);
            }

            v32 = v31;
          }
        }

        if (v32)
        {
          v43 = v49 << 14;
          v42 = 0;
          v83 = *(v53 + 3);
          v82 = v51;
          v81 = &v42;
          if (&v42)
          {
            v30 = *(v82 + 32) & 0xF;
            switch(v30)
            {
              case 2:
                *v81 = 0x4000;
                break;
              case 5:
                *v81 = 0x10000;
                break;
              case 6:
                *v81 = 0x20000;
                break;
              default:
                if ((v30 - 7) >= 2)
                {
                  v80 = *(v82 + 32) & 0xF;
                  qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
                  qword_D8158 = v80;
                  __break(1u);
                  JUMPOUT(0xD158);
                }

                *v81 = *(v82 + 40) << 14;
                break;
            }
          }

          v157 = v83;
          v156 = v82;
          v160 = v83;
          v159 = v82;
          v158 = v82 & 0xFFFFFFFFFFFFC000;
          v29 = 1;
          if ((v82 & 0xFFFFFFFFFFFFC000) != 0)
          {
            v28 = 0;
            if (v159 >= v158 + 2136)
            {
              v28 = v159 < v158 + 48 * *(v158 + 16) + 2136;
            }

            v29 = v28;
          }

          if ((v29 & 1) == 0)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
            __break(1u);
            JUMPOUT(0xD23CLL);
          }

          v162 = v158;
          v161 = v156;
          v165 = v158;
          v164 = v156;
          if (v156 < v158 + 2136)
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
            __break(1u);
            JUMPOUT(0xD2A4);
          }

          v163 = 0xAAAAAAAAAAAAAAABLL * ((v164 - v165 - 2136) >> 4);
          if (v163 >= *(v165 + 16))
          {
            qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
            __break(1u);
            JUMPOUT(0xD308);
          }

          v167 = v158;
          v166 = v163;
          v84 = *(v158 + 72) + (v163 << 14);
          _X9 = v84;
          __asm { LDG             X9, [X9] }

          v86 = _X9 + v42 - v43;
          v85 = v43;
          if ((v43 & 0x1FF) != 0)
          {
            v155 = v86;
            v154 = v85;
            if ((v85 & 0xF) != 0)
            {
              __break(1u);
              JUMPOUT(0xD3A8);
            }

            if ((v155 & 0xF) != 0)
            {
              __break(1u);
              JUMPOUT(0xD3C0);
            }

            v153 = v155;
            v152 = v155 + v154;
            _X9 = v155;
            __asm { STG             X9, [X9] }

            _X9 = v155 + v154;
            __asm { STG             X9, [X9,#-0x10] }

            if (v154 >= 0x21)
            {
              v153 = (v155 + 31) & 0xFFFFFFFFFFFFFFE0;
              v152 = (v155 + v154) & 0xFFFFFFFFFFFFFFE0;
              _X9 = v153;
              __asm { ST2G            X9, [X9] }

              _X8 = v152;
              __asm { ST2G            X8, [X8,#-0x20] }
            }

            v153 = (v155 + 63) & 0xFFFFFFFFFFFFFFC0;
            v152 = (v155 + v154) & 0xFFFFFFFFFFFFFFC0;
            while (v153 < v152)
            {
              __asm { DC              GVA, X8 }

              v153 += 64;
            }
          }

          else
          {
            v170 = v86;
            v169 = v85;
            if ((v86 & 0x1FF) != 0)
            {
              __break(1u);
              JUMPOUT(0xD4C8);
            }

            if ((v169 & 0x1FF) != 0)
            {
              __break(1u);
              JUMPOUT(0xD4E4);
            }

            v168 = v170 + v169;
            while (v170 < v168)
            {
              __asm
              {
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
              }

              v170 += 512;
            }
          }
        }

        return 1;
      }

      if (v33 != 3)
      {
        v143 = *v146;
        qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
        qword_D8158 = v143;
        __break(1u);
        JUMPOUT(0xCF78);
      }
    }

    v147 = 16;
    goto LABEL_68;
  }

  if (*(v51 + 40) > v50)
  {
    v55 = v53 + 4;
    v103 = v53 + 4;
    v102 = 327680;
    v104 = 3;
    v107 = 3;
    v108 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v101 = *(v108 + 24);
    v100 = 0;
    v99 = v101;
    v98 = v101;
    v21 = 0;
    atomic_compare_exchange_strong_explicit((v53 + 4), &v21, v101, memory_order_acquire, memory_order_acquire);
    if (v21)
    {
      v100 = v21;
    }

    v97 = v21 == 0;
    if (v21)
    {
      os_unfair_lock_lock_with_options();
    }

    v41 = *(v51 + 40) - v50;
    v40 = v51 + 48 * v50;
    *(v51 + 40) = v50;
    v39 = v51 + 48 * (*(v51 + 40) - 1);
    *(v39 + 32) = *(v39 + 32) & 0xF0 | 4;
    *(v39 + 36) = v39 - v51;
    v67 = *(v53 + 3);
    v66 = v51;
    v65 = v51 & 0xFFFFFFFFFFFFC000;
    v27 = 1;
    if ((v51 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v26 = 0;
      if (v66 >= v65 + 2136)
      {
        v26 = v66 < v65 + 48 * *(v65 + 16) + 2136;
      }

      v27 = v26;
    }

    if ((v27 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0xD800);
    }

    if (v41 <= 1)
    {
      v22 = 2;
    }

    else
    {
      v22 = 7;
    }

    v89 = v65;
    v88 = v40;
    if (v40 < v65 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0xD888);
    }

    v87 = 0xAAAAAAAAAAAAAAABLL * ((v88 - v89 - 2136) >> 4);
    if (v87 >= *(v89 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0xD8ECLL);
    }

    _xzm_segment_group_segment_span_mark_allocated(v53, v65, v22, v87, v41);
    v57 = v53 + 4;
    v140 = (v53 + 4);
    v141 = 3;
    v142 = 3;
    v139 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v138 = 0;
    v137 = v139;
    v136 = 0;
    v23 = v139;
    v24 = v139;
    atomic_compare_exchange_strong_explicit((v53 + 4), &v24, 0, memory_order_release, memory_order_relaxed);
    if (v24 != v23)
    {
      v137 = v24;
    }

    v135 = v24 == v139;
    if (v24 != v139)
    {
      os_unfair_lock_unlock(v140);
    }

    xzm_segment_group_free_chunk(v53, v40, 0, 0);
    return 1;
  }

  else
  {
    return 1;
  }
}

uint64_t _xzm_segment_group_span_mark_smaller(unsigned __int8 *a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v21 = *a1;
  if (!*a1)
  {
LABEL_4:
    v28 = (*(*(a1 + 3) + 409) & 4) != 0;
    goto LABEL_7;
  }

  if ((v21 - 1) >= 2)
  {
    if (v21 != 3)
    {
      v5 = *a1;
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v5;
      __break(1u);
      JUMPOUT(0xDAF4);
    }

    goto LABEL_4;
  }

  v28 = (*(*(a1 + 3) + 409) & 0x10) != 0;
LABEL_7:
  if (!v28)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_group_uses_deferred_reclamation(sg) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1706)";
    __break(1u);
    JUMPOUT(0xDB24);
  }

  v29 = *(a2 + 32) & 0xF;
  v20 = 1;
  if (v29 != 1)
  {
    v20 = v29 == 3;
  }

  if (!v20)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_free_span(span->xzc_bits.xzcb_kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1707)";
    __break(1u);
    JUMPOUT(0xDB90);
  }

  if ((*(a2 + 32) & 0xF) == 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = *(a2 + 40);
  }

  if (a3 + a4 + a5 != v19)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion front_free_count + used_count + back_free_count == _xzm_free_span_slice_count(span) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1709)";
    __break(1u);
    JUMPOUT(0xDC1CLL);
  }

  v30 = a2 & 0xFFFFFFFFFFFFC000;
  v18 = 1;
  if ((a2 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v17 = 0;
    if (a2 >= v30 + 2136)
    {
      v17 = a2 < (a2 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (a2 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v18 = v17;
  }

  if ((v18 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0xDD10);
  }

  if (a2 < v30 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0xDD8CLL);
  }

  if ((0xAAAAAAAAAAAAAAABLL * ((a2 - (a2 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFC000)))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0xDDECLL);
  }

  v26 = a2 & 0xFFFFFFFFFFFFC000;
  v16 = 1;
  if ((a2 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v15 = 0;
    if (a2 >= v26 + 2136)
    {
      v15 = a2 < (a2 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (a2 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v16 = v15;
  }

  if ((v16 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0xDEECLL);
  }

  if (a2 < v26 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0xDF58);
  }

  if ((0xAAAAAAAAAAAAAAABLL * ((a2 - (a2 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFC000)))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0xDFB8);
  }

  v32 = a2 & 0xFFFFFFFFFFFFC000;
  v14 = 1;
  if ((a2 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v13 = 0;
    if (a2 >= v32 + 2136)
    {
      v13 = a2 < (a2 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (a2 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v14 = v13;
  }

  if ((v14 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0xE0A4);
  }

  if (a2 < v32 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0xE108);
  }

  if ((0xAAAAAAAAAAAAAAABLL * ((a2 - (a2 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFC000)))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0xE168);
  }

  v25 = *(&stru_20.fileoff + (a2 & 0xFFFFFFFFFFFFC000)) + ((-1431655765 * ((a2 - v32 - 2136) >> 4)) << 14);
  v24 = a2 + 48 * a3 + 48 * a4;
  v23 = a3 << 14;
  v22 = a4 << 14;
  v12 = 1;
  if (a5 << 14)
  {
    v31 = v24 & 0xFFFFFFFFFFFFC000;
    v11 = 1;
    if ((v24 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v10 = 0;
      if (v24 >= v31 + 2136)
      {
        v10 = v24 < (v24 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v24 & 0xFFFFFFFFFFFFC000)) + 2136;
      }

      v11 = v10;
    }

    if ((v11 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0xE300);
    }

    if (v24 < v31 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0xE364);
    }

    if ((0xAAAAAAAAAAAAAAABLL * ((v24 - (v24 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFC000)))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0xE3C4);
    }

    v12 = v25 + v23 + v22 == *(&stru_20.fileoff + (v24 & 0xFFFFFFFFFFFFC000)) + ((-1431655765 * ((v24 - v31 - 2136) >> 4)) << 14);
  }

  if (!v12)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !back_size || span_start + front_size + used_size == _xzm_slice_start(zone, back_span) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1727)";
    __break(1u);
    JUMPOUT(0xE428);
  }

  if (a5 << 14)
  {
    v27 = v24 & 0xFFFFFFFFFFFFC000;
    v9 = 1;
    if ((v24 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v8 = 0;
      if (v24 >= v27 + 2136)
      {
        v8 = v24 < (v24 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (v24 & 0xFFFFFFFFFFFFC000)) + 2136;
      }

      v9 = v8;
    }

    if ((v9 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0xE508);
    }

    if (v24 < v27 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0xE574);
    }

    if ((0xAAAAAAAAAAAAAAABLL * ((v24 - (v24 & 0xFFFFFFFFFFFFC000) - 2136) >> 4)) >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFC000)))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0xE5D4);
    }

    v7 = (v27 + 88 + 0xFFFFFFFD55555558 * ((v24 - v27 - 2136) >> 4));
  }

  else
  {
    v7 = 0;
  }

  return xzm_reclaim_mark_smaller(*(*(a1 + 3) + 568), (v26 + 88 + 0xFFFFFFFD55555558 * ((a2 - v26 - 2136) >> 4)), v7, v25, v23, v22, (a5 << 14), *(&stru_20.maxprot + (a2 & 0xFFFFFFFFFFFFC000) + 0xFFFFFFFD55555558 * ((a2 - v30 - 2136) >> 4)) != -1, (*(a2 + 32) & 0x10) != 0);
}

void _xzm_segment_group_segment_span_remove_from_queue(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    *(*(a2 + 16) + 24) = *(a2 + 24);
  }

  **(a2 + 24) = *(a2 + 16);
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
}

unint64_t _xzm_segment_group_segment_slice_split(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, char a5, char a6)
{
  v12 = *(a1 + 24);
  v11 = a3 & 0xFFFFFFFFFFFFC000;
  v8 = 1;
  if ((a3 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v7 = 0;
    if (a3 >= v11 + 2136)
    {
      v7 = a3 < (a3 & 0xFFFFFFFFFFFFC000) + 48 * *(&dword_10 + (a3 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v8 = v7;
  }

  if ((v8 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0xE7C8);
  }

  if (v11 != a2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_for_slice(&sg->xzsg_main_ref->xzmz_base, span) == segment failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1845)";
    __break(1u);
    JUMPOUT(0xE800);
  }

  if ((*(a3 + 32) & 0xF) != 3)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion span->xzc_bits.xzcb_kind == XZM_SLICE_KIND_MULTI_FREE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1846)";
    __break(1u);
    JUMPOUT(0xE83CLL);
  }

  if (*(a3 + 40) <= a4)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion span->xzcs_slice_count > slice_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1847)";
    __break(1u);
    JUMPOUT(0xE878);
  }

  if (*(a2 + 20) == 1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment->xzs_kind != XZM_SEGMENT_KIND_HUGE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1848)";
    __break(1u);
    JUMPOUT(0xE8B0);
  }

  v9 = *(a3 + 40) - a4;
  if (a6)
  {
    v10 = a3 + 48 * v9;
    *(v10 + 40) = *(a3 + 40) - v9;
    *(v10 + 32) = *(v10 + 32) & 0xF0 | 3;
    *(v10 + 32) = *(v10 + 32) & 0xEF | *(a3 + 32) & 0x10;
    if (a3 < a2 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0xE99CLL);
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2 - 2136) >> 4);
    if (v14 >= *(a2 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0xE9FCLL);
    }

    _xzm_segment_group_segment_span_free(a1, a2, v14, v9, (a5 & 1) == 0, (*(a3 + 32) & 0x10) != 0);
  }

  else
  {
    v10 = a3;
    if (a3 < a2 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0xEA5CLL);
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2 - 2136) >> 4);
    if (v13 >= *(a2 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0xEABCLL);
    }

    _xzm_segment_group_segment_span_free(a1, a2, v13 + a4, v9, (a5 & 1) == 0, (*(a3 + 32) & 0x10) != 0);
  }

  return v10;
}

uint64_t _xzm_segment_group_segment_span_mark_allocated(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, unsigned int a5)
{
  if (a3 < 2u)
  {
    goto LABEL_6;
  }

  if (a3 != 2)
  {
    if (a3 - 3 >= 2)
    {
      if (a3 - 5 >= 4)
      {
        qword_D8128 = "BUG IN LIBMALLOC: bad chunk kind";
        qword_D8158 = a3;
        __break(1u);
        JUMPOUT(0xEBC8);
      }

      goto LABEL_7;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v11 = 1;
LABEL_8:
  if (!v11)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_chunk(kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1937)";
    __break(1u);
    JUMPOUT(0xEBF8);
  }

  if (a4 >= *(a2 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_index < segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1938)";
    __break(1u);
    JUMPOUT(0xEC34);
  }

  if (a5 - 1 > 6)
  {
    v6 = 7;
  }

  else
  {
    v6 = a5 - 1;
  }

  v9 = v6;
  if (a4 + v6 >= *(a2 + 16))
  {
    v9 = ~a4 + *(a2 + 16);
  }

  v10 = a2 + 48 * a4 + 2184;
  for (i = 1; i <= v9; ++i)
  {
    *(v10 + 32) = *(v10 + 32) & 0xF0 | 4;
    *(v10 + 36) = 48 * i;
    v10 += 48;
  }

  v7 = a4 + a5 - 1;
  if (a3 != 8)
  {
    if (v7 >= *(a2 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion last_slice_index < segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1961)";
      __break(1u);
      JUMPOUT(0xEDA8);
    }

    if (a2 + 48 * v7 + 2136 >= v10)
    {
      *(a2 + 48 * v7 + 2168) = *(a2 + 48 * v7 + 2168) & 0xF0 | 4;
      *(a2 + 48 * v7 + 2172) = 48 * a5 - 48;
    }
  }

  if (a3 == 2)
  {
    if (a5 != 1)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_count == 1 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1976)";
      __break(1u);
      JUMPOUT(0xEE60);
    }
  }

  else
  {
    *(a2 + 48 * a4 + 2176) = a5;
  }

  *(a2 + 48 * a4 + 2168) = *(a2 + 48 * a4 + 2168) & 0xF0 | a3 & 0xF;
  if (a2 + 48 * a4 + 2136 < a2 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0xEEDCLL);
  }

  v12 = 0xAAAAAAAAAAAAAAABLL * ((48 * a4) >> 4);
  if (v12 >= *(a2 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0xEF3CLL);
  }

  *(a2 + 88 + 8 * v12) = -1;
  ++*(a2 + 8);
  return a2 + 48 * a4 + 2136;
}

uint64_t xzm_segment_group_try_realloc_huge_chunk(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  v48 = a1;
  v47 = a2;
  v46 = a3;
  v45 = a4;
  v44 = a5;
  v57 = *(a1 + 24);
  v56 = a4;
  v55 = a4 & 0xFFFFFFFFFFFFC000;
  v32 = 1;
  if ((a4 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v31 = 0;
    if (v56 >= v55 + 2136)
    {
      v31 = v56 < v55 + 48 * *(v55 + 16) + 2136;
    }

    v32 = v31;
  }

  if ((v32 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0xF06CLL);
  }

  if (v55 != v46)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_for_slice(&sg->xzsg_main_ref->xzmz_base, chunk) == segment failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3395)";
    __break(1u);
    JUMPOUT(0xF0A4);
  }

  if (v44 <= 0x80)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion new_slice_count > (XZM_LARGE_BLOCK_SIZE_MAX / XZM_SEGMENT_SLICE_SIZE) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3397)";
    __break(1u);
    JUMPOUT(0xF0D8);
  }

  if ((*(v45 + 32) & 0xF) != 8)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk->xzc_bits.xzcb_kind == XZM_SLICE_KIND_HUGE_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3398)";
    __break(1u);
    JUMPOUT(0xF114);
  }

  if (*(v45 + 40) < v44)
  {
    v43 = 0;
    v64 = v47;
    v63 = v45;
    v62 = &v43;
    if (&v19 != -160)
    {
      v30 = *(v63 + 32) & 0xF;
      switch(v30)
      {
        case 2:
          *v62 = 0x4000;
          break;
        case 5:
          *v62 = 0x10000;
          break;
        case 6:
          *v62 = 0x20000;
          break;
        default:
          if ((v30 - 7) >= 2)
          {
            v61 = *(v63 + 32) & 0xF;
            qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
            qword_D8158 = v61;
            __break(1u);
            JUMPOUT(0xF230);
          }

          *v62 = *(v63 + 40) << 14;
          break;
      }
    }

    v99 = v64;
    v98 = v63;
    v102 = v64;
    v101 = v63;
    v100 = v63 & 0xFFFFFFFFFFFFC000;
    v29 = 1;
    if ((v63 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v28 = 0;
      if (v101 >= v100 + 2136)
      {
        v28 = v101 < v100 + 48 * *(v100 + 16) + 2136;
      }

      v29 = v28;
    }

    if ((v29 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0xF308);
    }

    v104 = v100;
    v103 = v98;
    v27 = v100;
    v107 = v100;
    v106 = v98;
    if (v98 < v100 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0xF36CLL);
    }

    v105 = 0xAAAAAAAAAAAAAAABLL * ((v106 - v107 - 2136) >> 4);
    if (v105 >= *(v107 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0xF3CCLL);
    }

    v109 = v27;
    v108 = v105;
    v42 = *(v27 + 72) + (v105 << 14);
    v41 = v42 + v43;
    v40 = v44 - *(v45 + 40);
    v39 = v40 << 14;
    if (((v42 + v43) & 0x3FFFFF) != 0)
    {
      v26 = (v41 & 0xFFFFFFFFFFC00000) + 0x400000;
    }

    else
    {
      v26 = v41;
    }

    for (i = v26; i < v41 + v39; i += 0x400000)
    {
      v70 = *&v48[6]._os_unfair_lock_opaque;
      v69 = i;
      v68 = 0;
      v87 = i;
      v86 = v70;
      v85 = 0;
      v92 = i;
      v91 = &v85;
      v90 = i;
      if (i >> 36)
      {
        *v91 = 0;
        v93 = 0x4000;
      }

      else
      {
        v89 = v90 >> 22;
        *v91 = 0;
        if (v89 >= 0x4000)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
          __break(1u);
          JUMPOUT(0xF538);
        }

        v93 = v89;
      }

      v84 = v93;
      if (v93 >= 0x4000)
      {
        v88 = 0;
      }

      else
      {
        v88 = *(v86 + 488) + 4 * v84;
      }

      v68 = v88;
      if (v88)
      {
        v113 = *v68;
        v71 = (v113 & 0x7FFFFFFF) << 14;
      }

      else
      {
        v71 = 0;
      }

      if (v71)
      {
        return 0;
      }
    }

    v37 = 6;
    if (!mvm_allocate_plat(v41, v39, 0, 0, 0, 6, 0))
    {
      return 0;
    }

    v35 = v44 << 14;
    v72 = v46;
    v74 = v46;
    v73 = 0;
    _xzm_segment_group_init_segment(v48, v46, *(v46 + 72), v35, 1, 0);
    if ((v41 & 0x3FFFFF) != 0)
    {
      v25 = (v41 & 0xFFFFFFFFFFC00000) + 0x400000;
    }

    else
    {
      v25 = v41;
    }

    v34 = v25;
    if (v42 + v35 <= v25)
    {
      goto LABEL_96;
    }

    v50 = v47;
    v24 = *(v47 + 240);
    if (v24)
    {
      v23 = v24;
    }

    else
    {
      v23 = v50;
    }

    _xzm_segment_table_allocated_at(v23, v34, v46, 0);
    v54 = v48;
    v53 = *&v48[6]._os_unfair_lock_opaque;
    os_unfair_lock_opaque = v48->_os_unfair_lock_opaque;
    v22 = os_unfair_lock_opaque;
    if (os_unfair_lock_opaque < 2u)
    {
      v60 = 1;
    }

    else
    {
      if ((v22 - 2) >= 2)
      {
        v58 = os_unfair_lock_opaque;
        qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
        qword_D8158 = os_unfair_lock_opaque;
        __break(1u);
        JUMPOUT(0xF7A0);
      }

      v60 = 0;
    }

    v52 = v60;
    v78 = v54;
    v77 = 16;
    v76 = 32769;
    os_unfair_lock_opaque_low = LOBYTE(v54->_os_unfair_lock_opaque);
    v21 = os_unfair_lock_opaque_low;
    if (os_unfair_lock_opaque_low)
    {
      if ((v21 - 1) < 2)
      {
        v79 = 32769;
LABEL_72:
        v51 = v79;
        v83 = v53;
        v82 = v79;
        v81 = v52 & 1;
        v80 = v53 + 368;
        v6 = *(v53 + 368);
        v20 = 0;
        if (v6)
        {
          v7 = *(v80 + 8);
          v20 = 0;
          if (v82 <= v7)
          {
            v19 = 1;
            if (v81)
            {
              v19 = *(v80 + 1);
            }

            v20 = v19;
          }
        }

        if (v20)
        {
          v65 = v42;
          _X8 = v42;
          __asm { LDG             X8, [X8] }

          v33 = _X8 + v43;
          v67 = _X8 + v43;
          v66 = v39;
          if ((v39 & 0x1FF) != 0)
          {
            v97 = v67;
            v96 = v66;
            if ((v66 & 0xF) != 0)
            {
              __break(1u);
              JUMPOUT(0xF954);
            }

            if ((v97 & 0xF) != 0)
            {
              __break(1u);
              JUMPOUT(0xF96CLL);
            }

            v95 = v97;
            v94 = v97 + v96;
            _X8 = v97;
            __asm { STG             X8, [X8] }

            _X8 = v97 + v96;
            __asm { STG             X8, [X8,#-0x10] }

            if (v96 >= 0x21)
            {
              v95 = (v97 + 31) & 0xFFFFFFFFFFFFFFE0;
              v94 = (v97 + v96) & 0xFFFFFFFFFFFFFFE0;
              _X8 = v95;
              __asm { ST2G            X8, [X8] }

              _X8 = v94;
              __asm { ST2G            X8, [X8,#-0x20] }
            }

            v95 = (v97 + 63) & 0xFFFFFFFFFFFFFFC0;
            v94 = (v97 + v96) & 0xFFFFFFFFFFFFFFC0;
            while (v95 < v94)
            {
              __asm { DC              GVA, X8 }

              v95 += 64;
            }
          }

          else
          {
            v112 = v67;
            v111 = v66;
            if ((v67 & 0x1FF) != 0)
            {
              __break(1u);
              JUMPOUT(0xFA5CLL);
            }

            if ((v111 & 0x1FF) != 0)
            {
              __break(1u);
              JUMPOUT(0xFA74);
            }

            v110 = v112 + v111;
            while (v112 < v110)
            {
              __asm
              {
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
                DC              GVA, X8
              }

              v112 += 512;
            }
          }
        }

LABEL_96:
        if (!_xzm_segment_group_segment_is_valid(v48, v46))
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_group_segment_is_valid(sg, segment) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3457)";
          __break(1u);
          JUMPOUT(0xFB4CLL);
        }

        return 1;
      }

      if (v21 != 3)
      {
        v75 = LOBYTE(v78->_os_unfair_lock_opaque);
        qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
        qword_D8158 = v75;
        __break(1u);
        JUMPOUT(0xF84CLL);
      }
    }

    v79 = 16;
    goto LABEL_72;
  }

  if (*(v45 + 40) > v44)
  {
    _xzm_segment_group_split_huge_segment(v48, v46, v44);
    if (!_xzm_segment_group_segment_is_valid(v48, v46))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_group_segment_is_valid(sg, segment) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3465)";
      __break(1u);
      JUMPOUT(0xFBC4);
    }

    return 1;
  }

  else
  {
    return 1;
  }
}

uint64_t _xzm_segment_group_init_segment(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5, char a6)
{
  v10 = 0;
  if (a2 >> 36)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)segment < XZM_LIMIT_ADDRESS failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2300)";
    __break(1u);
    JUMPOUT(0xFC58);
  }

  if (a3 >> 36)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)body < XZM_LIMIT_ADDRESS failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2301)";
    __break(1u);
    JUMPOUT(0xFC8CLL);
  }

  if ((a2 & 0x3FFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)segment % XZM_METAPOOL_SEGMENT_ALIGN == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2302)";
    __break(1u);
    JUMPOUT(0xFCC0);
  }

  if ((a3 & 0x3FFFFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)body % XZM_SEGMENT_SIZE == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2303)";
    __break(1u);
    JUMPOUT(0xFCF4);
  }

  if ((a4 & 0x3FFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion body_size % XZM_SEGMENT_SLICE_SIZE == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2304)";
    __break(1u);
    JUMPOUT(0xFD28);
  }

  v9 = a4 >> 14;
  if (((a4 >> 14) & 0x3FFFF00000000) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: Slice count too large in init_segment";
    __break(1u);
    JUMPOUT(0xFD78);
  }

  *a2 = a1;
  *(a2 + 12) = v9;
  if (v9 > 0xFF)
  {
    v8 = 256;
  }

  else
  {
    v8 = a4 >> 14;
  }

  *(a2 + 16) = v8;
  *(a2 + 8) = 0;
  *(a2 + 72) = a3;
  *(a2 + 80) = -1;
  *(a2 + 20) = a5 & 1;
  if (a5)
  {
    v10 = _xzm_segment_group_segment_span_mark_allocated(a1, a2, 8u, 0, *(a2 + 12));
    *(v10 + 32) = *(v10 + 32) & 0xEF | (16 * (a6 & 1));
  }

  else
  {
    v6 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 4), &v6, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v6)
    {
      os_unfair_lock_lock_with_options();
    }

    _xzm_segment_group_segment_span_free(a1, a2, 0, v9, 1, a6 & 1);
  }

  if (!_xzm_segment_group_segment_is_valid(a1, a2))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_group_segment_is_valid(sg, segment) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2333)";
    __break(1u);
    JUMPOUT(0xFF90);
  }

  return v10;
}

uint64_t _xzm_segment_table_allocated_at(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = a2;
  if ((a2 & 0x3FFFFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)data % XZM_SEGMENT_SIZE == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:31)";
    __break(1u);
    JUMPOUT(0xFFE8);
  }

  v4 = *(a3 + 12) - 1;
  v16 = a3;
  v15 = v4;
  v18 = a3;
  v17 = v4 + 1;
  v6 = *(a3 + 72) + ((v4 + 1) << 14);
  if (a2 >= v6)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)data < (uintptr_t)segment_end failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:34)";
    __break(1u);
    JUMPOUT(0x10064);
  }

  v13 = a3;
  v12 = a4 & 1;
  if ((a3 & 0x3FFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)segment % XZM_METAPOOL_SEGMENT_ALIGN == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:186)";
    __break(1u);
    JUMPOUT(0x100B4);
  }

  if (v13 >> 45)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ((uintptr_t)segment >> XZM_METAPOOL_SEGMENT_BLOCK_SHIFT) < XZM_SEGMENT_TABLE_LIMIT_ENTRY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:190)";
    __break(1u);
    JUMPOUT(0x100E8);
  }

  v14 = (v13 >> 14) & 0x7FFFFFFF | (v12 << 31);
  v5 = v14;
  while (v7 < v6)
  {
    v10 = v7;
    v9 = result;
    v8 = 0;
    v22 = v7;
    v21 = &v8;
    v20 = v7;
    if (v7 >> 36)
    {
      *v21 = 0;
      v23 = 0x4000;
    }

    else
    {
      v19 = v20 >> 22;
      *v21 = 0;
      if (v19 >= 0x4000)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
        __break(1u);
        JUMPOUT(0x101D8);
      }

      v23 = v19;
    }

    if (v23 < 0x4000)
    {
      v11 = (*(v9 + 488) + 4 * v23);
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion entry != NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:78)";
      __break(1u);
      JUMPOUT(0x10258);
    }

    if ((*v11 & 0x7FFFFFFF) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion entry->xste_val == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:80)";
      __break(1u);
      JUMPOUT(0x10290);
    }

    atomic_store(v5, v11);
    v7 += 0x400000;
  }

  return result;
}

uint64_t _xzm_segment_group_split_huge_segment(uint64_t result, unint64_t a2, unsigned int a3)
{
  v17 = result;
  if (*(a2 + 20) != 1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment->xzs_kind == XZM_SEGMENT_KIND_HUGE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2970)";
    __break(1u);
    JUMPOUT(0x10324);
  }

  if (*(a2 + 12) < a3)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment->xzs_slice_count >= required_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2971)";
    __break(1u);
    JUMPOUT(0x10360);
  }

  if (*(a2 + 12) != a3)
  {
    v14 = *(a2 + 72) + (*(a2 + 12) << 14);
    v13 = *(a2 + 72) + (a3 << 14);
    if (v13 < v14)
    {
      v12 = v14 - v13;
      if ((v13 & 0x3FFFFF) != 0)
      {
        v8 = (v13 & 0xFFFFFFFFFFC00000) + 0x400000;
      }

      else
      {
        v8 = *(a2 + 72) + (a3 << 14);
      }

      v11 = *(*(result + 24) + 480);
      v10 = xzm_metapool_alloc(v11);
      v9 = v14 - v8;
      if (v8 < v14)
      {
        _xzm_segment_table_freed_at(*(v17 + 24), v8, a2, 0);
      }

      v3 = 0;
      atomic_compare_exchange_strong_explicit((v17 + 520), &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v3)
      {
        os_unfair_lock_lock_with_options();
      }

      if (v8 >= v14 || v9 <= 0x200000 || *(v17 + 514) >= *(v17 + 512))
      {
        v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v7 = v6;
        atomic_compare_exchange_strong_explicit((v17 + 520), &v7, 0, memory_order_release, memory_order_relaxed);
        if (v7 != v6)
        {
          os_unfair_lock_unlock((v17 + 520));
        }

        xzm_metapool_free(v11, v10);
        xzm_range_group_free_segment_body(*(v17 + 16), v13, v12);
      }

      else
      {
        _xzm_segment_group_init_segment(v17, v10, v8, v9, 1, 0);
        _xzm_segment_group_cache_mark_free(v17, v10);
        v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v5 = v4;
        atomic_compare_exchange_strong_explicit((v17 + 520), &v5, 0, memory_order_release, memory_order_relaxed);
        if (v5 != v4)
        {
          os_unfair_lock_unlock((v17 + 520));
        }

        if (v8 > v13)
        {
          xzm_range_group_free_segment_body(*(v17 + 16), v13, v12 - v9);
        }
      }

      result = _xzm_segment_group_init_segment(v17, a2, *(a2 + 72), a3 << 14, 1, 0);
    }

    if (*(a2 + 72) + (*(a2 + 12) << 14) != v13)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_end(segment) == remainder failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3045)";
      __break(1u);
      JUMPOUT(0x108A4);
    }
  }

  return result;
}

uint64_t _xzm_reclaim_mark_used_locked(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (HIDWORD(a4))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion size <= UINT32_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:208)";
    __break(1u);
    JUMPOUT(0x10918);
  }

  v4 = *a1;
  if (mach_vm_reclaim_try_cancel())
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion err == VM_RECLAIM_SUCCESS failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:215)";
    __break(1u);
    JUMPOUT(0x10984);
  }

  return 0;
}

void *_xzm_reclaim_id_cache_push(void *result, uint64_t a2)
{
  if (*result >= result[1])
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion cache->ric_head < cache->ric_len failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:136)";
    __break(1u);
    JUMPOUT(0x10A00);
  }

  if (a2 == -1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion id != VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:137)";
    __break(1u);
    JUMPOUT(0x10A34);
  }

  v2 = result[2];
  v3 = (*result)++;
  *(v2 + 8 * v3) = a2;
  return result;
}

unint64_t _xzm_segment_group_alloc_huge_chunk_from_cache(uint64_t a1, unsigned int a2)
{
  if (*a1 != 1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sg->xzsg_id == XZM_SEGMENT_GROUP_DATA_LARGE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2432)";
    __break(1u);
    JUMPOUT(0x10AACLL);
  }

  v14 = 0;
  v13 = a1 + 464;
  v2 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 520), &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  if (*(v13 + 50))
  {
    v12 = *(*(a1 + 24) + 568);
    do
    {
      v16 = 0;
      for (i = *v13; ; i = v14)
      {
        v11 = 0;
        if (i)
        {
          v14 = *(i + 24);
          v11 = 1;
        }

        if ((v11 & 1) == 0)
        {
          break;
        }

        if (*(i + 12) >= a2 && *(i + 12) < 2 * a2 && (!v16 || *(i + 12) < *(v16 + 12)))
        {
          v5 = *(i + 80);
          if (_xzm_reclaim_is_reusable(v12))
          {
            v16 = i;
          }

          else
          {
            _xzm_segment_group_cache_invalidate(a1, i);
          }
        }
      }

      if (!v16)
      {
        v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
        v7 = v6;
        atomic_compare_exchange_strong_explicit((v13 + 56), &v7, 0, memory_order_release, memory_order_relaxed);
        if (v7 != v6)
        {
          os_unfair_lock_unlock((v13 + 56));
        }

        return 0;
      }
    }

    while (!_xzm_segment_group_cache_mark_used(a1, v16));
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v9 = v8;
    atomic_compare_exchange_strong_explicit((v13 + 56), &v9, 0, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      os_unfair_lock_unlock((v13 + 56));
    }

    _xzm_segment_table_allocated_at(*(a1 + 24), *(v16 + 72), v16, 0);
    return v16 + 2136;
  }

  else
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v4 = v3;
    atomic_compare_exchange_strong_explicit((v13 + 56), &v4, 0, memory_order_release, memory_order_relaxed);
    if (v4 != v3)
    {
      os_unfair_lock_unlock((v13 + 56));
    }

    return 0;
  }
}

uint64_t _xzm_segment_group_alloc_segment(unsigned __int8 *a1, unint64_t a2, unint64_t a3, uint64_t *a4, char a5)
{
  if (a2 || (v14 = 1, a4))
  {
    v13 = 0;
    if (a2)
    {
      v13 = a4 != 0;
    }

    v14 = v13;
  }

  if ((v14 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (required_bytes == 0 && huge_chunk == NULL) || (required_bytes > 0 && huge_chunk != NULL) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2351)";
    __break(1u);
    JUMPOUT(0x1106CLL);
  }

  v12 = 1;
  if (!a2)
  {
    v12 = a3 == 0;
  }

  if (!v12)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion huge || alignment == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2356)";
    __break(1u);
    JUMPOUT(0x110D4);
  }

  if (a2)
  {
    if ((a2 & 0x3FFF) != 0)
    {
      v11 = (a2 & 0xFFFFFFFFFFFFC000) + 0x4000;
    }

    else
    {
      v11 = a2;
    }

    v18 = v11;
  }

  else
  {
    v18 = 0x400000;
  }

  v17 = a2 != 0;
  if (a5)
  {
    v17 |= 2u;
  }

  v24 = *(a1 + 3);
  v25 = *a1;
  v10 = *a1;
  if (v10 < 2)
  {
    v26 = 1;
  }

  else
  {
    if (v10 - 2 >= 2)
    {
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v25;
      __break(1u);
      JUMPOUT(0x11214);
    }

    v26 = 0;
  }

  v9 = *a1;
  if (*a1)
  {
    if ((v9 - 1) < 2)
    {
      v27 = 32769;
      goto LABEL_31;
    }

    if (v9 != 3)
    {
      v5 = *a1;
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v5;
      __break(1u);
      JUMPOUT(0x112C0);
    }
  }

  v27 = 16;
LABEL_31:
  v8 = 0;
  if (*(v24 + 368))
  {
    v8 = 0;
    if (v27 <= *(v24 + 376))
    {
      v7 = 1;
      if (v26)
      {
        v7 = *(v24 + 369);
      }

      v8 = v7;
    }
  }

  if (v8)
  {
    v17 |= 4u;
  }

  v16 = xzm_range_group_alloc_segment(*(a1 + 2), v18, a3, 0, v17);
  if (v16)
  {
    if (v16 >> 36)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)segment_body < XZM_LIMIT_ADDRESS failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2402)";
      __break(1u);
      JUMPOUT(0x113DCLL);
    }

    v15 = xzm_metapool_alloc(*(*(a1 + 3) + 480));
    inited = _xzm_segment_group_init_segment(a1, v15, v16, v18, a2 != 0, 1);
    _xzm_segment_table_allocated_at(*(a1 + 3), v16, v15, a2 == 0);
    if (a2)
    {
      *a4 = inited;
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _xzm_reclaim_is_reusable(uint64_t *a1)
{
  v1 = *a1;
  if (mach_vm_reclaim_query_state())
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion err == VM_RECLAIM_SUCCESS failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:253)";
    __break(1u);
    JUMPOUT(0x114F4);
  }

  return mach_vm_reclaim_is_reusable();
}

void _xzm_segment_group_cache_invalidate(uint64_t a1, void *a2)
{
  os_unfair_lock_assert_owner((a1 + 520));
  __xzm_segment_cache_remove(a1 + 464, a2);
  xzm_metapool_free(*(*(a1 + 24) + 480), a2);
}

uint64_t _xzm_segment_group_cache_mark_used(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner((a1 + 520));
  if (*(a2 + 80) == -1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment->xzs_reclaim_id != VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1422)";
    __break(1u);
    JUMPOUT(0x115C8);
  }

  _xzm_reclaim_mark_used(*(*(a1 + 24) + 568), *(a2 + 80), *(a2 + 72), *(a2 + 12) << 14);
  if (mach_vm_reclaim_is_reusable())
  {
    *(a2 + 80) = -1;
    __xzm_segment_cache_remove(a1 + 464, a2);
    return 1;
  }

  else
  {
    _xzm_segment_group_cache_invalidate(a1, a2);
    return 0;
  }
}

uint64_t __xzm_segment_cache_remove(uint64_t result, uint64_t a2)
{
  if (!*(result + 50))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion cache->xzsc_count > 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1363)";
    __break(1u);
    JUMPOUT(0x116E4);
  }

  --*(result + 50);
  if (*(a2 + 24))
  {
    *(*(a2 + 24) + 32) = *(a2 + 32);
  }

  else
  {
    *(result + 8) = *(a2 + 32);
    *(result + 40) = *(result + 24);
    *(result + 32) = *(result + 16);
    *(result + 24) = 1365;
    *(result + 16) = "/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c";
  }

  **(a2 + 32) = *(a2 + 24);
  *(a2 + 24) = -1;
  *(a2 + 32) = -1;
  *(a2 + 64) = *(a2 + 48);
  *(a2 + 56) = *(a2 + 40);
  *(a2 + 48) = 1365;
  *(a2 + 40) = "/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c";
  return result;
}

mach_vm_address_t xzm_range_group_alloc_segment(_BYTE *a1, unint64_t a2, unint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (!*a1)
  {
    return _xzm_range_group_alloc_data_segment(a1, a2, a3, a4, a5);
  }

  if (a3)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion alignment == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:719)";
    __break(1u);
    JUMPOUT(0x11870);
  }

  if ((a5 >> 1))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !(rga_flags & XZM_RANGE_GROUP_ALLOC_FLAGS_PURGEABLE) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:722)";
    __break(1u);
    JUMPOUT(0x118A4);
  }

  return _xzm_range_group_alloc_ptr_segment(a1, a2, a4, a5);
}

mach_vm_address_t _xzm_range_group_alloc_data_segment(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (*a1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion rg->xzrg_id == XZM_RANGE_GROUP_DATA failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:603)";
    __break(1u);
    JUMPOUT(0x11928);
  }

  if (*(*(a1 + 8) + 409))
  {
    return _xzm_range_group_alloc_anywhere_segment(0, a2, a3, a4, a5);
  }

  else
  {
    return _xzm_range_group_alloc_mvm_segment(*(a1 + 8), a2, a3, a4, a5);
  }
}

mach_vm_address_t _xzm_range_group_alloc_ptr_segment(_BYTE *a1, unint64_t a2, uint64_t a3, int a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  if (*a1 != 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion rg->xzrg_id == XZM_RANGE_GROUP_PTR failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:644)";
    __break(1u);
    JUMPOUT(0x119F0);
  }

  if (v10)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !(rga_flags & XZM_RANGE_GROUP_ALLOC_FLAGS_HUGE) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:645)";
    __break(1u);
    JUMPOUT(0x11A20);
  }

  if (v12 != 0x400000)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion size == XZM_SEGMENT_SIZE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:646)";
    __break(1u);
    JUMPOUT(0x11A54);
  }

  if (*(*(v13 + 1) + 413) == 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion rg->xzrg_main_ref->xzmz_segment_group_count != XZM_SEGMENT_GROUP_IDS_COUNT_DATA_ONLY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:648)";
    __break(1u);
    JUMPOUT(0x11A90);
  }

  if ((*(*(v13 + 1) + 409) & 1) == 0)
  {
    return _xzm_range_group_alloc_mvm_segment(*(v13 + 1), v12, 0, v11, v10);
  }

  v9 = 0;
  v8 = _xzm_range_group_bump_alloc_segment(v13, v12, 1);
  if (!v8)
  {
    qword_D8128 = "BUG IN LIBMALLOC: Pointer range exhausted";
    __break(1u);
    JUMPOUT(0x11AF8);
  }

  address = v8;
  flags = 33570816;
  if ((v10 & 4) != 0)
  {
    flags = 33579008;
  }

  v5 = mach_vm_map(mach_task_self_, &address, v12, 0, flags, 0, 0, 0, 3, 7, 1u);
  if (v5)
  {
    qword_D8128 = "BUG IN LIBMALLOC: pointer range mach_vm_map() overwrite failed";
    qword_D8158 = v5;
    __break(1u);
    JUMPOUT(0x11BC4);
  }

  return v8;
}

mach_vm_address_t _xzm_range_group_alloc_mvm_segment(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v8 = 0;
  if ((a5 & 2) != 0)
  {
    v8 = 128;
  }

  if ((a5 & 4) != 0)
  {
    v8 |= 0x800u;
  }

  v7 = _xzm_range_group_vm_tag_for_segment(a2, a5 & 1);
  if (!a3)
  {
    return mvm_allocate_pages_plat(a2, 0x16u, v8, v7, a4);
  }

  v6 = __clz(__rbit64(a3));
  if (v6 >= 0xFF)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion align_pow < UINT8_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:488)";
    __break(1u);
    JUMPOUT(0x11D04);
  }

  if (v6 >= 0x17)
  {
    return mvm_allocate_pages_plat(a2, v6, v8, v7, a4);
  }

  else
  {
    return mvm_allocate_pages_plat(a2, 0x16u, v8, v7, a4);
  }
}

unint64_t _xzm_range_group_bump_alloc_segment(uint64_t a1, unint64_t a2, char a3)
{
  v7 = 0;
  if (*(a1 + 73))
  {
    return 0;
  }

  v3 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 16), &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
  }

  if (*(a1 + 64) >= a2)
  {
    if (*(a1 + 56) == *(a1 + 40))
    {
      if (*(a1 + 72))
      {
        if (*(a1 + 72) != 1)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion rg->xzrg_direction == XZM_FRONT_DECREASING failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:563)";
          __break(1u);
          JUMPOUT(0x11F1CLL);
        }

        *(a1 + 56) -= *(a1 + 48);
      }

      else
      {
        *(a1 + 56) += *(a1 + 48);
      }
    }

    if (*(a1 + 72) == 1)
    {
      *(a1 + 56) -= a2;
    }

    v7 = *(a1 + 56);
    if (v7 % a2)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment_addr % size == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:578)";
      __break(1u);
      JUMPOUT(0x11FB0);
    }

    if (!*(a1 + 72))
    {
      *(a1 + 56) += a2;
    }

    *(a1 + 64) -= a2;
  }

  if (!v7 && (a3 & 1) != 0 && (*(a1 + 73) & 1) == 0)
  {
    *(a1 + 73) = 1;
    malloc_report(4, "Failed to allocate segment from range group - out of space\n");
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v5 = v4;
  atomic_compare_exchange_strong_explicit((a1 + 16), &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 != v4)
  {
    os_unfair_lock_unlock((a1 + 16));
  }

  return v7;
}

uint64_t xzm_span_queue_for (uint64_t a1, unsigned int a2)
{
  if (a2 << 14 > 0x400000)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_count * XZM_SEGMENT_SLICE_SIZE <= XZM_SEGMENT_SIZE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1483)";
    __break(1u);
    JUMPOUT(0x12164);
  }

  v2 = __clz(0xFFuLL);
  if (((0xFFu >> (61 - v2)) & 3 | (4 * (63 - v2))) - 5 >= 0x1BuLL)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion xzm_slice_bin8(XZM_SLICES_PER_SEGMENT) < XZM_SPAN_QUEUE_COUNT failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1485)";
    __break(1u);
    JUMPOUT(0x12270);
  }

  if (!a2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_count != 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1466)";
    __break(1u);
    JUMPOUT(0x122A8);
  }

  if (a2 > 8)
  {
    if (a2 >= 0x101)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_count <= XZM_SLICES_PER_SEGMENT failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1471)";
      __break(1u);
      JUMPOUT(0x12300);
    }

    v3 = __clz(a2 - 1);
    v5 = (((a2 - 1) >> (61 - v3)) & 3 | (4 * (63 - v3))) - 5;
  }

  else
  {
    v5 = a2 - 1;
  }

  if (v5 >= 0x1B)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion bin < XZM_SPAN_QUEUE_COUNT failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1487)";
    __break(1u);
    JUMPOUT(0x12384);
  }

  if (*(a1 + 16 * v5 + 40) < a2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion sq->xzsq_slice_count >= slice_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1497)";
    __break(1u);
    JUMPOUT(0x123DCLL);
  }

  return a1 + 16 * v5 + 32;
}

uint64_t _xzm_segment_group_segment_span_init_run(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t *a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8)
{
  v15 = 0;
  if (a7)
  {
    v14 = _xzm_random_bits(a7, a8 + 1);
  }

  else
  {
    v14 = 0;
  }

  switch(a3)
  {
    case 2u:
      v13 = 1;
      break;
    case 5u:
      v13 = 4;
      break;
    case 6u:
      v13 = 8;
      break;
    default:
      if (a4)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !preallocate_list failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2079)";
        __break(1u);
        JUMPOUT(0x124E4);
      }

      if (a7)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion guard_count == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2080)";
        __break(1u);
        JUMPOUT(0x12514);
      }

      if (a3 != 7)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion kind == XZM_SLICE_KIND_LARGE_CHUNK failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2081)";
        __break(1u);
        JUMPOUT(0x12548);
      }

      if (a8 != 1)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion num_chunks == 1 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2082)";
        __break(1u);
        JUMPOUT(0x1257CLL);
      }

      v13 = a6;
      break;
  }

  if (a8 * v13 + a7 != a6)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (num_chunks * slices_per_chunk + guard_count) == total_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2086)";
    __break(1u);
    JUMPOUT(0x125D8);
  }

  if (a5 + a6 > *(a2 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (start_index + total_slices) <= segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2088)";
    __break(1u);
    JUMPOUT(0x1261CLL);
  }

  v12 = a5;
  v11 = (*(a2 + 48 * a5 + 2168) & 0x10) != 0;
  for (i = 0; i < a8; ++i)
  {
    if (v14)
    {
      _xzm_segment_group_segment_create_guard(a1, a2, v12++);
    }

    v14 >>= 1;
    v9 = _xzm_segment_group_segment_span_mark_allocated(a1, a2, a3, v12, v13);
    *(v9 + 32) = *(v9 + 32) & 0xEF | (16 * v11);
    v12 += v13;
    if (i)
    {
      *(v9 + 16) = *a4;
      *a4 = v9;
    }

    else
    {
      v15 = v9;
    }
  }

  if (v14 >= 2)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion guard_mask <= 1 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2112)";
    __break(1u);
    JUMPOUT(0x1277CLL);
  }

  if (v14)
  {
    _xzm_segment_group_segment_create_guard(a1, a2, v12++);
  }

  if (v12 - a5 != a6)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index - start_index == total_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2118)";
    __break(1u);
    JUMPOUT(0x127E8);
  }

  return v15;
}

uint64_t _xzm_random_bits(unsigned int a1, uint32_t a2)
{
  v8 = (1 << a2) - 1;
  if (a1 < (3 * a2) >> 2)
  {
    if (a1 > a2 >> 2)
    {
      v7 = arc4random() & v8;
      v2 = vcnt_s8(v7);
      v2.i16[0] = vaddlv_u8(v2);
      v6 = v2.i32[0];
      v5 = dist_u32(v2.u32[0], a1);
      if (v5 > dist_u32(a2 - v6, a1))
      {
        v6 = a2 - v6;
        v7 ^= v8;
      }
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }
  }

  else
  {
    v7 = (1 << a2) - 1;
    v6 = a2;
  }

  if (v6 >= a1)
  {
    if (a1 < v6)
    {
      v7 = _xzm_random_clear_n_bits(v7, v6, v6 - a1);
    }
  }

  else
  {
    v7 = _xzm_random_clear_n_bits(v7 ^ v8, a2 - v6, a1 - v6) ^ v8;
  }

  v3 = vcnt_s8(v7);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.i32[0] != a1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion __builtin_popcount(retval) == pop failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2050)";
    __break(1u);
    JUMPOUT(0x129F0);
  }

  if ((v7 & ~v8) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (retval & ~mask) == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:2051)";
    __break(1u);
    JUMPOUT(0x12A28);
  }

  return v7;
}

uint64_t _xzm_segment_group_segment_create_guard(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = a3;
  v8 = a2 + 48 * a3 + 2136;
  v7 = 1;
  if (a2 + 48 * a3 + 2184 < a2 + 48 * *(a2 + 16) + 2136 && (*(a2 + 48 * a3 + 2216) & 0xF) == 9)
  {
    v7 = *(a2 + 48 * a3 + 2224) + 1;
  }

  if (v8 > a2 + 2136)
  {
    v11 = a2 + 48 * a3 + 2088;
    if ((*(a2 + 48 * a3 + 2120) & 0xF) == 4)
    {
      v10 = a2 + 48 * a3 + 2088 - *(a2 + 48 * a3 + 2124);
      if (v10 < ((a2 + 48 * a3 + 2088) & 0xFFFFFFFFFFFFC000 | 0x858))
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion out_slice >= ((xzm_segment_t)((uintptr_t)slice & ~(XZM_METAPOOL_SEGMENT_BLOCK_SIZE - 1)))->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:609)";
        __break(1u);
        JUMPOUT(0x12B88);
      }

      v5 = *(v10 + 32) & 0xF;
      if ((v5 - 1) < 2)
      {
        v13 = v10 == v11;
      }

      else if (v5 == 3 || (v5 - 5) < 5)
      {
        if (v11 < v10)
        {
          qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice >= span failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:587)";
          __break(1u);
          JUMPOUT(0x12C2CLL);
        }

        v13 = v11 < v10 + 48 * *(v10 + 40);
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v12 = a2 + 48 * a3 + 2088 - *(a2 + 48 * a3 + 2124);
      }

      else
      {
        v12 = a2 + 48 * a3 + 2088;
      }
    }

    else
    {
      v12 = a2 + 48 * a3 + 2088;
    }

    if ((*(v12 + 32) & 0xF) == 9)
    {
      v9 = a3 - *(v12 + 40);
      v7 += *(v12 + 40);
      v8 = v12;
    }
  }

  if (v7 < 2)
  {
    ++*(a2 + 8);
  }

  else
  {
    for (i = 1; i < v7; ++i)
    {
      *(v8 + 48 * i + 36) = 48 * i;
      *(v8 + 48 * i + 32) = *(v8 + 48 * i + 32) & 0xF0 | 4;
    }
  }

  if (v8 != a2 + 48 * v9 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice == &segment->xzs_slices[index] failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1915)";
    __break(1u);
    JUMPOUT(0x12DE0);
  }

  *(v8 + 40) = v7;
  result = mprotect((*(a2 + 72) + (v9 << 14)), v7 << 14, 0);
  if (result)
  {
    v4 = *__error();
    qword_D8128 = "BUG IN LIBMALLOC: Failed to mprotect guard page";
    qword_D8158 = v4;
    __break(1u);
    JUMPOUT(0x12E74);
  }

  *(v8 + 32) = *(v8 + 32) & 0xF0 | 9;
  return result;
}

uint64_t dist_u32(unsigned int a1, unsigned int a2)
{
  if (a1 >= a2)
  {
    return a1 - a2;
  }

  else
  {
    return a2 - a1;
  }
}

uint64_t _xzm_random_clear_n_bits(unsigned int a1, uint32_t a2, int a3)
{
  while (a3--)
  {
    v6 = arc4random_uniform(a2);
    v5 = a1;
    while (v6)
    {
      v5 &= v5 - 1;
      --v6;
    }

    a1 ^= 1 << __clz(__rbit32(v5));
    --a2;
  }

  return a1;
}

void _xzm_segment_group_bzero_chunk(uint64_t a1, char *a2, unint64_t a3)
{
  while (a3)
  {
    if (a3 >= 0x80000)
    {
      v3 = 0x80000;
    }

    else
    {
      v3 = a3;
    }

    _platform_bzero();
    xzm_madvise(*(a1 + 24), a2, v3);
    a2 += v3;
    a3 -= v3;
  }
}

uint64_t _xzm_segment_group_free_huge_chunk_to_cache(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v39 = a1 + 464;
  i = 0;
  v37 = 0;
  if (!*(a1 + 512))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion cache->xzsc_max_count > 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:3056)";
    __break(1u);
    JUMPOUT(0x130D8);
  }

  if (*(v41 + 12) > *(v39 + 52))
  {
    return 0;
  }

  v3 = *(v42 + 3);
  v64 = v41;
  v76 = v41;
  v75 = 0;
  _xzm_segment_table_freed_at(v3, *(v41 + 72), v41, 1);
  v53 = v42;
  v52 = *(v42 + 3);
  v58 = *v42;
  v33 = v58;
  if (v58 < 2u)
  {
    v59 = 1;
  }

  else
  {
    if ((v33 - 2) >= 2)
    {
      v57 = v58;
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v58;
      __break(1u);
      JUMPOUT(0x131D4);
    }

    v59 = 0;
  }

  v51 = v59;
  v88 = v53;
  v87 = 16;
  v86 = 32769;
  v4 = *v53;
  v32 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  if ((v32 - 1) >= 2)
  {
    if (v32 != 3)
    {
      v5 = *v88;
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v5;
      __break(1u);
      JUMPOUT(0x13280);
    }

LABEL_14:
    v89 = 16;
    goto LABEL_17;
  }

  v89 = 32769;
LABEL_17:
  v50 = v89;
  v93 = v52;
  v92 = v89;
  v91 = v51 & 1;
  v90 = v52 + 368;
  v6 = *(v52 + 368);
  v31 = 0;
  if (v6)
  {
    v7 = *(v90 + 8);
    v31 = 0;
    if (v92 <= v7)
    {
      v30 = 1;
      if (v91)
      {
        v30 = *(v90 + 1);
      }

      v31 = v30;
    }
  }

  if (v31)
  {
    v36 = 0;
    v47 = *(v42 + 3);
    v46 = v40;
    v45 = &v36;
    if (&v21 == -80)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion chunk_size_out failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:397)";
      __break(1u);
      JUMPOUT(0x13378);
    }

    v63 = v47;
    v62 = v46;
    v61 = v45;
    if (v45)
    {
      v29 = *(v62 + 32) & 0xF;
      switch(v29)
      {
        case 2:
          *v61 = 0x4000;
          break;
        case 5:
          *v61 = 0x10000;
          break;
        case 6:
          *v61 = 0x20000;
          break;
        default:
          if ((v29 - 7) >= 2)
          {
            v60 = *(v62 + 32) & 0xF;
            qword_D8128 = "BUG IN LIBMALLOC: asking for start of chunk with invalid kind";
            qword_D8158 = v60;
            __break(1u);
            JUMPOUT(0x13474);
          }

          *v61 = *(v62 + 40) << 14;
          break;
      }
    }

    v102 = v63;
    v101 = v62;
    v105 = v63;
    v104 = v62;
    v103 = v62 & 0xFFFFFFFFFFFFC000;
    v28 = 1;
    if ((v62 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v27 = 0;
      if (v104 >= v103 + 2136)
      {
        v27 = v104 < v103 + 48 * *(v103 + 16) + 2136;
      }

      v28 = v27;
    }

    if ((v28 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x1354CLL);
    }

    v107 = v103;
    v106 = v101;
    v26 = v103;
    v110 = v103;
    v109 = v101;
    if (v101 < v103 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x135B0);
    }

    v108 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v110 - 2136) >> 4);
    if (v108 >= *(v110 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x13610);
    }

    v112 = v26;
    v111 = v108;
    v44 = *(v26 + 72) + (v108 << 14);
    v35 = v44;
    v56 = v44;
    v55 = v36;
    v94 = v44;
    v100 = v44;
    v99 = v44 & 0xF0FFFFFFFFFFFFFFLL;
    v54 = v44 & 0xF0FFFFFFFFFFFFFFLL;
    v98 = v44 & 0xF0FFFFFFFFFFFFFFLL;
    v97 = v36;
    if ((v36 & 0xF) != 0)
    {
      __break(1u);
      JUMPOUT(0x136A8);
    }

    if ((v98 & 0xF) != 0)
    {
      __break(1u);
      JUMPOUT(0x136C0);
    }

    v96 = v98;
    v95 = v98 + v97;
    _X8 = v98;
    __asm { STG             X8, [X8] }

    _X8 = v98 + v97;
    __asm { STG             X8, [X8,#-0x10] }

    if (v97 >= 0x21)
    {
      v96 = (v98 + 31) & 0xFFFFFFFFFFFFFFE0;
      v95 = (v98 + v97) & 0xFFFFFFFFFFFFFFE0;
      _X8 = v96;
      __asm { ST2G            X8, [X8] }

      _X8 = v95;
      __asm { ST2G            X8, [X8,#-0x20] }
    }

    v96 = (v98 + 63) & 0xFFFFFFFFFFFFFFC0;
    v95 = (v98 + v97) & 0xFFFFFFFFFFFFFFC0;
    while (v96 < v95)
    {
      __asm { DC              GVA, X8 }

      v96 += 64;
    }
  }

  v48 = v39 + 56;
  v71 = v39 + 56;
  v70 = 327680;
  v72 = 3;
  v73 = 3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v69 = *(StatusReg + 24);
  v68 = 0;
  v67 = v69;
  v66 = v69;
  v16 = 0;
  atomic_compare_exchange_strong_explicit((v39 + 56), &v16, v69, memory_order_acquire, memory_order_acquire);
  v24 = v16;
  v25 = v16 == 0;
  if (v16)
  {
    v68 = v24;
  }

  v65 = v25;
  if (!v25)
  {
    os_unfair_lock_lock_with_options();
  }

  v34 = *(*(v42 + 3) + 568);
  if (*(v42 + 257) == *(v42 + 256))
  {
    for (i = *(v42 + 58); ; i = v37)
    {
      v23 = 0;
      if (i)
      {
        v37 = i[3];
        v23 = 1;
      }

      if ((v23 & 1) == 0)
      {
        break;
      }

      v17 = i[10];
      if (_xzm_reclaim_is_reusable(v34))
      {
        break;
      }

      _xzm_segment_group_cache_invalidate(v42, i);
    }
  }

  while (*(v39 + 50) == *(v39 + 48))
  {
    _xzm_segment_group_cache_evict(v42);
  }

  _xzm_segment_group_cache_mark_free(v42, v41);
  v49 = v39 + 56;
  lock = (v39 + 56);
  v83 = 3;
  v84 = 3;
  v85 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v81 = *(v85 + 24);
  v80 = 0;
  v79 = v81;
  v78 = 0;
  v18 = v81;
  v19 = v81;
  atomic_compare_exchange_strong_explicit((v39 + 56), &v19, 0, memory_order_release, memory_order_relaxed);
  HIDWORD(v21) = v19;
  v22 = v19 == v18;
  if (v19 != v18)
  {
    v79 = HIDWORD(v21);
  }

  v77 = v22;
  if (!v22)
  {
    os_unfair_lock_unlock(lock);
  }

  return 1;
}

void _xzm_segment_group_segment_deallocate(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    _xzm_segment_table_freed_at(*(a1 + 24), *(a2 + 72), a2, 1);
  }

  xzm_range_group_free_segment_body(*(a1 + 16), *(a2 + 72), *(a2 + 12) << 14);
  xzm_metapool_free(*(*(a1 + 24) + 480), a2);
}

uint64_t _xzm_segment_table_freed_at(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = a2;
  v4 = *(a3 + 12) - 1;
  v19 = a3;
  v18 = v4;
  v21 = a3;
  v20 = v4 + 1;
  v6 = *(a3 + 72) + ((v4 + 1) << 14);
  v5 = 1;
  if (a4)
  {
    v5 = *(a3 + 72) == a2;
  }

  if (!v5)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !full_segment || _xzm_segment_start(metadata) == data failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:97)";
    __break(1u);
    JUMPOUT(0x13BE8);
  }

  while (v7 < v6)
  {
    v10 = v7;
    v9 = result;
    v8 = 0;
    v25 = v7;
    v24 = &v8;
    v23 = v7;
    if (v7 >> 36)
    {
      *v24 = 0;
      v26 = 0x4000;
    }

    else
    {
      v22 = v23 >> 22;
      *v24 = 0;
      if (v22 >= 0x4000)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
        __break(1u);
        JUMPOUT(0x13CB4);
      }

      v26 = v22;
    }

    if (v26 < 0x4000)
    {
      v11 = (*(v9 + 488) + 4 * v26);
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion entry != NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:101)";
      __break(1u);
      JUMPOUT(0x13D48);
    }

    v16 = a3;
    v15 = 0;
    if ((a3 & 0x3FFF) != 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)segment % XZM_METAPOOL_SEGMENT_ALIGN == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:186)";
      __break(1u);
      JUMPOUT(0x13D90);
    }

    if (v16 >> 45)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion ((uintptr_t)segment >> XZM_METAPOOL_SEGMENT_BLOCK_SHIFT) < XZM_SEGMENT_TABLE_LIMIT_ENTRY failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:190)";
      __break(1u);
      JUMPOUT(0x13DC8);
    }

    v17 = (v16 >> 14) & 0x7FFFFFFF | ((v17 < 0) << 31);
    v17 = v17 & 0x7FFFFFFF | (v15 << 31);
    if ((v17 & 0x7FFFFFFF) != (*v11 & 0x7FFFFFFF))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_to_segment_table_entry(metadata, false).xste_val == entry->xste_val failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:103)";
      __break(1u);
      JUMPOUT(0x13E40);
    }

    v13 = 0;
    v12 = 0;
    v14 = (v14 < 0) << 31;
    v14 &= ~0x80000000;
    *v11 = v14;
    v7 += 0x400000;
  }

  return result;
}

void _xzm_segment_group_cache_evict(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 520));
  v4 = **(*(a1 + 472) + 8);
  if (*(v4 + 80) == -1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment->xzs_reclaim_id != VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1449)";
    __break(1u);
    JUMPOUT(0x13FB4);
  }

  if (_xzm_segment_group_cache_mark_used(a1, v4))
  {
    v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v2 = v1;
    atomic_compare_exchange_strong_explicit((a1 + 520), &v2, 0, memory_order_release, memory_order_relaxed);
    if (v2 != v1)
    {
      os_unfair_lock_unlock((a1 + 520));
    }

    _xzm_segment_group_segment_deallocate(a1, v4, 0);
    v3 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 520), &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
    if (v3)
    {
      os_unfair_lock_lock_with_options();
    }
  }
}

uint64_t *_xzm_segment_group_cache_mark_free(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner((a1 + 520));
  v2 = *(a1 + 24);
  v8 = *(a2 + 72);
  v7 = v2;
  v6 = 0;
  v13 = v8;
  v12 = &v6;
  v11 = v8;
  if (v8 >> 36)
  {
    *v12 = 0;
    v14 = 0x4000;
  }

  else
  {
    v10 = v11 >> 22;
    *v12 = 0;
    if (v10 >= 0x4000)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segindex < XZM_SEGMENT_TABLE_ENTRIES failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:169)";
      __break(1u);
      JUMPOUT(0x1428CLL);
    }

    v14 = v10;
  }

  if (v14 >= 0x4000)
  {
    v9 = 0;
  }

  else
  {
    v9 = (*(v7 + 488) + 4 * v14);
  }

  if ((*v9 & 0x7FFFFFFF) != 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion entry->xste_val == 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1400)";
    __break(1u);
    JUMPOUT(0x14314);
  }

  if (*(a2 + 80) != -1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment->xzs_reclaim_id == VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1402)";
    __break(1u);
    JUMPOUT(0x1434CLL);
  }

  *(a2 + 80) = _xzm_reclaim_mark_free(*(*(a1 + 24) + 568), *(a2 + 72), *(a2 + 12) << 14);
  return __xzm_segment_cache_insert((a1 + 464), a2);
}

uint64_t *__xzm_segment_cache_insert(uint64_t *result, uint64_t a2)
{
  if (*(result + 25) >= *(result + 24))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion cache->xzsc_count < cache->xzsc_max_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1371)";
    __break(1u);
    JUMPOUT(0x14434);
  }

  v2 = *result;
  *(a2 + 24) = *result;
  if (v2)
  {
    *(*result + 32) = a2 + 24;
  }

  else
  {
    result[1] = a2 + 24;
  }

  *result = a2;
  *(a2 + 32) = result;
  *(result + 10) = *(result + 6);
  result[4] = result[2];
  *(result + 6) = 1372;
  result[2] = "/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c";
  *(a2 + 64) = *(a2 + 48);
  *(a2 + 56) = *(a2 + 40);
  *(a2 + 48) = 1372;
  *(a2 + 40) = "/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c";
  ++*(result + 25);
  return result;
}

void xzm_range_group_free_segment_body(_BYTE *a1, mach_vm_address_t a2, mach_vm_size_t a3)
{
  if (*a1)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion rg->xzrg_id == XZM_RANGE_GROUP_DATA failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:731)";
    __break(1u);
    JUMPOUT(0x1457CLL);
  }

  mvm_deallocate_plat(a2, a3, 64);
}

uint64_t *_xzm_segment_group_assert_correct_span_queue(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32) & 0xF;
  v3 = 1;
  if (v5 != 1)
  {
    v3 = v5 == 3;
  }

  if (!v3)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_free_span(kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1507)";
    __break(1u);
    JUMPOUT(0x14638);
  }

  if (v5 == 1)
  {
    result = xzm_span_queue_for (a1, 1u);
  }

  else
  {
    result = xzm_span_queue_for (a1, *(a2 + 40));
  }

  for (i = *result; ; i = *(i + 16))
  {
    if (!i)
    {
      qword_D8128 = "BUG IN LIBMALLOC: Didn't find free span in expected span queue";
      __break(1u);
      JUMPOUT(0x146F0);
    }

    if (i == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t _xzm_segment_group_span_mark_used(unsigned __int8 *a1, unint64_t a2)
{
  v12 = *a1;
  if (!*a1)
  {
LABEL_4:
    v16 = (*(*(a1 + 3) + 409) & 4) != 0;
    goto LABEL_7;
  }

  if ((v12 - 1) >= 2)
  {
    if (v12 != 3)
    {
      v2 = *a1;
      qword_D8128 = "BUG IN LIBMALLOC: unknown segment group id";
      qword_D8158 = v2;
      __break(1u);
      JUMPOUT(0x147D8);
    }

    goto LABEL_4;
  }

  v16 = (*(*(a1 + 3) + 409) & 0x10) != 0;
LABEL_7:
  if (!v16)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_segment_group_uses_deferred_reclamation(sg) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1674)";
    __break(1u);
    JUMPOUT(0x14808);
  }

  v17 = *(a2 + 32) & 0xF;
  v11 = 1;
  if (v17 != 1)
  {
    v11 = v17 == 3;
  }

  if (!v11)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion _xzm_slice_kind_is_free_span(span->xzc_bits.xzcb_kind) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1675)";
    __break(1u);
    JUMPOUT(0x14874);
  }

  v19 = a2 & 0xFFFFFFFFFFFFC000;
  v10 = 1;
  if ((a2 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v9 = 0;
    if (a2 >= v19 + 2136)
    {
      v9 = a2 < (a2 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a2 & 0xFFFFFFFFFFFFC000)) + 2136;
    }

    v10 = v9;
  }

  if ((v10 & 1) == 0)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
    __break(1u);
    JUMPOUT(0x14968);
  }

  if (a2 < v19 + 2136)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
    __break(1u);
    JUMPOUT(0x149E8);
  }

  v20 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v19 - 2136) >> 4);
  if (v20 >= *(dword_10 + (a2 & 0xFFFFFFFFFFFFC000)))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
    __break(1u);
    JUMPOUT(0x14A4CLL);
  }

  if (*(&stru_20.maxprot + 8 * v20 + (a2 & 0xFFFFFFFFFFFFC000)) == -1)
  {
    return 1;
  }

  else
  {
    v15 = a2 & 0xFFFFFFFFFFFFC000;
    v8 = 1;
    if ((a2 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v7 = 0;
      if (a2 >= v15 + 2136)
      {
        v7 = a2 < (a2 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a2 & 0xFFFFFFFFFFFFC000)) + 2136;
      }

      v8 = v7;
    }

    if ((v8 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x14B68);
    }

    if (a2 < v15 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x14BD8);
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v15 - 2136) >> 4);
    if (v18 >= *(dword_10 + (a2 & 0xFFFFFFFFFFFFC000)))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x14C3CLL);
    }

    v13 = (v15 + 88 + 8 * v18);
    if (*v13 == -1)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *reclaim_id != VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1687)";
      __break(1u);
      JUMPOUT(0x14C90);
    }

    if ((*(a2 + 32) & 0xF) == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(a2 + 40);
    }

    v21 = *(a1 + 3);
    v22 = a2 & 0xFFFFFFFFFFFFC000;
    v5 = 1;
    if ((a2 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v4 = 0;
      if (a2 >= v22 + 2136)
      {
        v4 = a2 < (a2 & 0xFFFFFFFFFFFFC000) + 48 * *(dword_10 + (a2 & 0xFFFFFFFFFFFFC000)) + 2136;
      }

      v5 = v4;
    }

    if ((v5 & 1) == 0)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion !segment || (slice >= segment->xzs_slices && slice < (segment->xzs_slices + segment->xzs_slice_entry_count)) failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:262)";
      __break(1u);
      JUMPOUT(0x14DCCLL);
    }

    if (a2 < v22 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x14E34);
    }

    v23 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v22 - 2136) >> 4);
    if (v23 >= *(dword_10 + (a2 & 0xFFFFFFFFFFFFC000)))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x14E98);
    }

    _xzm_reclaim_mark_used(*(*(a1 + 3) + 568), *v13, *(&stru_20.fileoff + (a2 & 0xFFFFFFFFFFFFC000)) + (v23 << 14), (v6 << 14));
    if (mach_vm_reclaim_is_reusable())
    {
      *v13 = -1;
      return 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _xzm_segment_group_segment_span_free(os_unfair_lock_s *a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, char a6)
{
  if (!a4)
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_count != 0 failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1790)";
    __break(1u);
    JUMPOUT(0x14F88);
  }

  if (a3 >= *(a2 + 16))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_index < segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1791)";
    __break(1u);
    JUMPOUT(0x14FC4);
  }

  result = a3;
  v8 = a2 + 48 * a3 + 2136;
  *(a2 + 48 * a3 + 2168) = *(a2 + 48 * a3 + 2168) & 0xEF | (16 * (a6 & 1));
  if (a4 == 1)
  {
    if (*(a2 + 20) == 1)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion segment->xzs_kind != XZM_SEGMENT_KIND_HUGE failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1807)";
      __break(1u);
      JUMPOUT(0x15050);
    }

    *(a2 + 48 * a3 + 2168) = *(a2 + 48 * a3 + 2168) & 0xF0 | 1;
  }

  else
  {
    *(a2 + 48 * a3 + 2168) = *(a2 + 48 * a3 + 2168) & 0xF0 | 3;
    *(a2 + 48 * a3 + 2176) = a4;
    if (a3 + a4 - 1 >= *(a2 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion slice_index + slice_count - 1 < segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1813)";
      __break(1u);
      JUMPOUT(0x150D0);
    }

    *(a2 + 48 * (a3 + a4 - 1) + 2168) = *(a2 + 48 * (a3 + a4 - 1) + 2168) & 0xF0 | 4;
    *(a2 + 48 * (a3 + a4 - 1) + 2172) = 48 * a4 - 48;
  }

  if (!*(a2 + 20))
  {
    os_unfair_lock_assert_owner(a1 + 1);
    result = xzm_span_queue_for (a1, a4);
    v7 = *result;
    *(v8 + 16) = *result;
    if (v7)
    {
      *(*result + 24) = v8 + 16;
    }

    *result = v8;
    *(v8 + 24) = result;
  }

  if (a5)
  {
    if (v8 < a2 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x15218);
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - a2 - 2136) >> 4);
    if (v15 >= *(a2 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x15278);
    }

    *(a2 + 88 + 8 * v15) = -1;
  }

  else if ((a6 & 1) == 0)
  {
    if (v8 < a2 + 2136)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion (uintptr_t)slice >= (uintptr_t)segment->xzs_slices failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:279)";
      __break(1u);
      JUMPOUT(0x15310);
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - a2 - 2136) >> 4);
    if (v14 >= *(a2 + 16))
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion index < (ptrdiff_t)segment->xzs_slice_entry_count failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/../xzone/xzone_inline_internal.h:281)";
      __break(1u);
      JUMPOUT(0x15370);
    }

    if (*(a2 + 88 + 8 * v14) == -1)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *_xzm_segment_slice_meta_reclaim_id(segment, span) != VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:1834)";
      __break(1u);
      JUMPOUT(0x153B8);
    }
  }

  return result;
}

uint64_t xzm_reclaim_mark_smaller(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v17 = a6;
  v14 = a5 + a6 + a7;
  if (HIDWORD(v14))
  {
    qword_D8128 = "BUG IN LIBMALLOC: malloc assertion span_size <= UINT32_MAX failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:330)";
    __break(1u);
    JUMPOUT(0x15458);
  }

  v9 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 12), &v9, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    os_unfair_lock_lock_with_options();
  }

  is_reusable = 1;
  if (a8)
  {
    if (*a2 == -1)
    {
      qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *front_id != VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:340)";
      __break(1u);
      JUMPOUT(0x155A4);
    }

    _xzm_reclaim_mark_used_locked(a1, *a2, a4, v14);
    is_reusable = mach_vm_reclaim_is_reusable();
    if (is_reusable)
    {
      *a2 = -1;
    }
  }

  if (is_reusable)
  {
    if (a5 && (a9 & 1) == 0)
    {
      if (*a2 != -1)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion *front_id == VM_RECLAIM_ID_NULL failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:352)";
        __break(1u);
        JUMPOUT(0x15654);
      }

      *a2 = xzm_reclaim_mark_free_locked(a1, a4, a5);
    }

    if (a7)
    {
      if (!a3)
      {
        qword_D8128 = "BUG IN LIBMALLOC: malloc assertion back_id failed (/Library/Caches/com.apple.xbs/Sources/libmalloc_driverkit/src/xzone/xzone_segment.c:358)";
        __break(1u);
        JUMPOUT(0x156B8);
      }

      if (a9)
      {
        *a3 = -1;
      }

      else
      {
        *a3 = xzm_reclaim_mark_free_locked(a1, a4 + a5 + v17, a7);
      }
    }
  }

  v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v11 = v10;
  atomic_compare_exchange_strong_explicit((a1 + 12), &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != v10)
  {
    os_unfair_lock_unlock((a1 + 12));
  }

  return is_reusable & 1;
}

_BYTE *malloc_common_strstr(_BYTE *a1)
{
  while (*a1)
  {
    if (!_platform_strncmp())
    {
      return a1;
    }

    ++a1;
  }

  return 0;
}

uint64_t malloc_common_convert_to_long(char *a1, void *a2)
{
  v4 = 0;
  while (*a1)
  {
    v3 = *a1;
    if (*a1 < 48 || v3 > 57)
    {
      break;
    }

    v4 = 10 * v4 + v3 - 48;
    ++a1;
  }

  *a2 = a1;
  return v4;
}

_BYTE *malloc_common_value_for_key(_BYTE *a1)
{
  v3 = _platform_strlen();
  while (1)
  {
    a1 = malloc_common_strstr(a1);
    if (!a1)
    {
      break;
    }

    for (i = 0; i < v3; ++i)
    {
      ++a1;
    }

    if (*a1 == 61)
    {
      return a1 + 1;
    }
  }

  return 0;
}

_BYTE *malloc_common_value_for_key_copy(_BYTE *a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  v9 = malloc_common_value_for_key(a1);
  if (!v9)
  {
    return 0;
  }

  v8 = a4;
  for (i = a3; v8 > 1; ++i)
  {
    v4 = v9++;
    v6 = *v4;
    if (!*v4 || v6 == 32 || v6 == 9 || v6 == 10)
    {
      break;
    }

    *i = v6;
    --v8;
  }

  *i = 0;
  return a3;
}

uint64_t malloc_zone_batch_malloc_fallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  for (i = 0; i < a4; ++i)
  {
    v5 = (*(a1 + 24))(a1, a2);
    if (!v5)
    {
      break;
    }

    *(a3 + 8 * i) = v5;
  }

  return i;
}

uint64_t malloc_zone_batch_free_fallback(uint64_t result, uint64_t a2, unsigned int a3)
{
  v7 = result;
  for (i = 1; i <= a3; ++i)
  {
    v3 = *(a2 + 8 * (a3 - i));
    if (v3)
    {
      result = (*(v7 + 48))(v7, v3);
    }
  }

  return result;
}

void ___BUG_IN_CLIENT_OF_LIBMALLOC_POINTER_BEING_FREED_WAS_NOT_ALLOCATED(__int16 a1, _BYTE *a2)
{
  if ((malloc_has_sec_transition & 1) == 0 || (memtag_handle_mismatch(a2) & 1) == 0)
  {
    malloc_report(a1, "*** error for object %p: pointer being freed was not allocated\n");
  }
}

uint64_t _malloc_is_platform_binary()
{
  getpid();
  csops();
  return 0;
}

BOOL _malloc_allow_internal_security_policy(uint64_t a1)
{
  v5 = a1;
  if (MEMORY[0xFFFFF4084])
  {
    v4 = _simple_getenv();
    v6 = v4 && (v3 = 0, v2 = malloc_common_convert_to_long(v4, &v3), !*v3) && v3 != v4 && v2 <= 1 && v2 != 0;
  }

  else
  {
    return 0;
  }

  return v6;
}

mach_vm_address_t create_purgeable_zone(uint64_t a1, uint64_t a2, int a3)
{
  pages = mvm_allocate_pages((vm_page_size + 18943) & ~(vm_page_size - 1), 0, 0x40000000, 1);
  if (!pages)
  {
    return 0;
  }

  rack_init(pages + 16512, 1, 0, a3 | 0x80);
  rack_init(pages + 17280, 2, 0, a3 | 0x80);
  *(pages + 104) = 11;
  v29 = 0;
  if (purgeable_size)
  {
    v29 = purgeable_size;
  }

  v28 = 0;
  if (v29)
  {
    v28 = v29;
  }

  *(pages + 16) = v28;
  v27 = 0;
  if (purgeable_malloc)
  {
    v27 = purgeable_malloc;
  }

  v26 = 0;
  if (v27)
  {
    v26 = v27;
  }

  *(pages + 24) = v26;
  v25 = 0;
  if (purgeable_calloc)
  {
    v25 = purgeable_calloc;
  }

  v24 = 0;
  if (v25)
  {
    v24 = v25;
  }

  *(pages + 32) = v24;
  v23 = 0;
  if (purgeable_valloc)
  {
    v23 = purgeable_valloc;
  }

  v22 = 0;
  if (v23)
  {
    v22 = v23;
  }

  *(pages + 40) = v22;
  v21 = 0;
  if (purgeable_free)
  {
    v21 = purgeable_free;
  }

  v20 = 0;
  if (v21)
  {
    v20 = v21;
  }

  *(pages + 48) = v20;
  v19 = 0;
  if (purgeable_realloc)
  {
    v19 = purgeable_realloc;
  }

  v18 = 0;
  if (v19)
  {
    v18 = v19;
  }

  *(pages + 56) = v18;
  v17 = 0;
  if (purgeable_destroy)
  {
    v17 = purgeable_destroy;
  }

  v16 = 0;
  if (v17)
  {
    v16 = v17;
  }

  *(pages + 64) = v16;
  v15 = 0;
  if (purgeable_batch_malloc)
  {
    v15 = purgeable_batch_malloc;
  }

  v14 = 0;
  if (v15)
  {
    v14 = v15;
  }

  *(pages + 80) = v14;
  v13 = 0;
  if (purgeable_batch_free)
  {
    v13 = purgeable_batch_free;
  }

  v12 = 0;
  if (v13)
  {
    v12 = v13;
  }

  *(pages + 88) = v12;
  *(pages + 96) = purgeable_introspect;
  v11 = 0;
  if (purgeable_memalign)
  {
    v11 = purgeable_memalign;
  }

  v10 = 0;
  if (v11)
  {
    v10 = v11;
  }

  *(pages + 112) = v10;
  v9 = 0;
  if (purgeable_free_definite_size)
  {
    v9 = purgeable_free_definite_size;
  }

  v8 = 0;
  if (v9)
  {
    v8 = v9;
  }

  *(pages + 120) = v8;
  v7 = 0;
  if (purgeable_pressure_relief)
  {
    v7 = purgeable_pressure_relief;
  }

  v6 = 0;
  if (v7)
  {
    v6 = v7;
  }

  *(pages + 128) = v6;
  v5 = 0;
  if (purgeable_claimed_address)
  {
    v5 = purgeable_claimed_address;
  }

  v4 = 0;
  if (v5)
  {
    v4 = v5;
  }

  *(pages + 136) = v4;
  *pages = 0;
  *(pages + 8) = 0;
  mprotect(pages, 0xC8uLL, 1);
  *(pages + 16392) = a3 | 0x80;
  if ((*(pages + 16392) & 7) != 0)
  {
    if ((*(pages + 16392) & 4) == 0)
    {
      malloc_report(6, "purgeable zone does not support guard pages\n");
    }

    *(pages + 16392) &= 0xFFFFFFF8;
  }

  *(pages + 18816) = 0;
  *(pages + 18864) = a2;
  return pages;
}

unint64_t purgeable_malloc(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x3C00)
  {
    return szone_malloc(a1, a2);
  }

  else
  {
    return szone_malloc(*(a1 + 18864), a2);
  }
}

unint64_t purgeable_calloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v4[2] = a2;
  v4[1] = a3;
  v4[0] = 0;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  v8 = v4;
  v7 = a3;
  if (a2 == 1 || (v7 = v11 * v10, v13 = (v11 * v10) >> 64 != 0, is_mul_ok(v11, v10)) && v7 <= malloc_absolute_max_size)
  {
    *v8 = v7;
    v12 = 0;
  }

  else
  {
    malloc_set_errno_fast(1, 12);
    v12 = -1;
  }

  if (v12)
  {
    return 0;
  }

  if (v4[0] > 0x3C00)
  {
    return szone_calloc(v5, 1uLL, v4[0]);
  }

  return szone_calloc(*(v5 + 18864), 1uLL, v4[0]);
}

uint64_t purgeable_valloc(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x3C00)
  {
    return szone_valloc(a1, a2);
  }

  else
  {
    return szone_valloc(*(a1 + 18864), a2);
  }
}

void purgeable_free(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v2, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    os_unfair_lock_lock_with_options();
  }

  v5 = large_entry_for_pointer_no_lock(a1, a2);
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v4 = v3;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != v3)
  {
    os_unfair_lock_unlock((a1 + 18816));
  }

  if (v5)
  {
    free_large(a1, a2, 0);
  }

  else
  {
    szone_free(*(a1 + 18864), a2);
  }
}

uint64_t purgeable_realloc(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return purgeable_malloc(a1, a3);
  }

  if (a3)
  {
    v7 = purgeable_size(a1, a2);
    if (!v7)
    {
      v7 = szone_size(*(a1 + 18864), a2);
    }

    if (v7)
    {
      if (v7 > 0x3C00)
      {
        if (a3 > 0x3C00)
        {
          v4 = purgeable_malloc(a1, a3);
          if (v4)
          {
            _platform_memmove();
            purgeable_free_definite_size(a1, a2, v7);
          }

          return v4;
        }

        else
        {
          v5 = szone_malloc(*(a1 + 18864), a3);
          if (v5)
          {
            _platform_memmove();
            purgeable_free_definite_size(a1, a2, v7);
          }

          return v5;
        }
      }

      else if (a3 > 0x3C00)
      {
        v6 = purgeable_malloc(a1, a3);
        if (v6)
        {
          _platform_memmove();
          szone_free_definite_size(*(a1 + 18864), a2, v7);
        }

        return v6;
      }

      else
      {
        return szone_realloc(*(a1 + 18864), a2, a3);
      }
    }

    else
    {
      malloc_zone_error(*(a1 + 16392), 1, "pointer %p being reallocated was not allocated\n");
      return 0;
    }
  }

  else
  {
    purgeable_free(a1, a2);
    return purgeable_malloc(a1, 1uLL);
  }
}

void purgeable_destroy(mach_vm_address_t a1)
{
  v6 = a1;
  v5 = *(a1 + 18824);
  v4 = 0;
  v2 = 0;
  v3 = 0;
  while (v5--)
  {
    v4 = (*(v6 + 18832) + 24 * v5);
    if (*v4)
    {
      mvm_deallocate_pages(*v4, v4[1], *(v6 + 16392));
    }
  }

  large_entries_free_no_lock(v6, *(v6 + 18832), *(v6 + 18824), &v2);
  if (v3)
  {
    mvm_deallocate_pages(v2, v3, 0);
  }

  mvm_deallocate_pages(v6, (vm_page_size + 18943) & ~(vm_page_size - 1), 0);
}

uint64_t purgeable_memalign(uint64_t a1, vm_size_t a2, unint64_t a3)
{
  if (a3 > 0x3C00)
  {
    return szone_memalign(a1, a2, a3);
  }

  else
  {
    return szone_memalign(*(a1 + 18864), a2, a3);
  }
}

void purgeable_free_definite_size(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 > 0x3C00)
  {
    szone_free_definite_size(a1, a2, a3);
  }

  else
  {
    szone_free_definite_size(*(a1 + 18864), a2, a3);
  }
}

uint64_t malloc_set_errno_fast(uint64_t result, int a2)
{
  if (result)
  {
    **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = a2;
  }

  return result;
}

uint64_t purgeable_ptr_in_use_enumerator(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(int a1, uint64_t a2, uint64_t a3, uint64_t *a4), void (*a6)(void, uint64_t, uint64_t, __int128 *, uint64_t))
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = a6;
  v8 = 0;
  v10 = reader_or_in_memory_fallback(a5, a1);
  v7 = v10(v14, v11, 18944, &v8);
  if (v7)
  {
    return v7;
  }

  else
  {
    return large_in_use_enumerator(v14, v13, v12, *(v8 + 18832), *(v8 + 18824), v10, v9);
  }
}

uint64_t purgeable_good_size(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x3C00)
  {
    return szone_good_size(a1, a2);
  }

  else
  {
    return szone_good_size(*(a1 + 18864), a2);
  }
}

uint64_t purgeable_print_self(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return purgeable_print(mach_task_self_, v2, a1, _malloc_default_reader, malloc_report_simple);
}

uint64_t purgeable_force_lock(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((result + 18816), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return os_unfair_lock_lock_with_options();
  }

  return result;
}

void purgeable_force_unlock(uint64_t a1)
{
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v2 = v1;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v2, 0, memory_order_release, memory_order_relaxed);
  if (v2 != v1)
  {
    os_unfair_lock_unlock((a1 + 18816));
  }
}

uint64_t purgeable_statistics(uint64_t result, uint64_t a2)
{
  *a2 = *(result + 18820);
  v2 = *(result + 18840);
  *(a2 + 24) = v2;
  *(a2 + 16) = v2;
  *(a2 + 8) = v2;
  return result;
}

uint64_t purgeable_locked(uint64_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 18816), &v1, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    return 1;
  }

  else
  {
    v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    v3 = v2;
    atomic_compare_exchange_strong_explicit((a1 + 18816), &v3, 0, memory_order_release, memory_order_relaxed);
    if (v3 != v2)
    {
      os_unfair_lock_unlock((a1 + 18816));
    }

    return 0;
  }
}

uint64_t (*reader_or_in_memory_fallback(uint64_t a1, int a2))(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    return a1;
  }

  v3 = 1;
  if (a2)
  {
    v3 = mach_task_is_self() != 0;
  }

  if (!v3)
  {
    __break(1u);
    JUMPOUT(0x17C30);
  }

  return _malloc_default_reader;
}

uint64_t _malloc_default_reader(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 1;
  if (a1)
  {
    v5 = mach_task_is_self() != 0;
  }

  if (!v5)
  {
    __break(1u);
    JUMPOUT(0x17CB8);
  }

  *a4 = a2;
  return 0;
}

uint64_t purgeable_print(unsigned int a1, int a2, uint64_t a3, uint64_t (*a4)(void, void, void, void), uint64_t (*a5)(const char *, ...))
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = a5;
  v6 = 0;
  result = a4(a1, a3, 18944, &v6);
  if (result)
  {
    return v7("Purgeable zone %p: inUse=%u(%y) flags=%d\n", v9, *(v6 + 18820), *(v6 + 18840), *(v6 + 16392));
  }

  return result;
}

uint64_t sanitizer_diagnose_fault_from_crash_reporter(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v5 = 0;
  atomic_compare_exchange_strong_explicit(&crash_reporter_lock, &v5, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
  }

  v15 = a5(a3, a4, 16680);
  v14 = a5(a3, v15[31], 0x1000000);
  v13 = a5(a3, v15[30], 37748744);
  qword_D82A0 = 0;
  qword_D82A8 = 0;
  enumeration_context = a1;
  g_crm_reader = a5;
  num_read_memory = 0;
  szone_introspect(a3, 0, 1, v15[25], memory_reader_adapter, pointer_recorder);
  for (i = 0; i < num_read_memory; ++i)
  {
    _free(read_memory[i]);
  }

  g_crm_reader = 0;
  _platform_bzero();
  *a2 = a1;
  if (qword_D82A0)
  {
    *(a2 + 8) = qword_D82A0;
    *(a2 + 16) = qword_D82A8;
    v11 = a5(a3, qword_D82A0, 16);
    v10 = v11[1];
    v9 = HIDWORD(v11[1]);
    *(a2 + 24) = 0;
    *(a2 + 40) = stacktrace_depo_find(v13, v10, a2 + 48, 0x40uLL);
    *(a2 + 560) = 0;
    *(a2 + 576) = stacktrace_depo_find(v13, v9, a2 + 584, 0x40uLL);
    _free(v11);
  }

  _free(v13);
  _free(v14);
  _free(v15);
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v7 = v6;
  atomic_compare_exchange_strong_explicit(&crash_reporter_lock, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != v6)
  {
    os_unfair_lock_unlock(&crash_reporter_lock);
  }

  return 0;
}

uint64_t memory_reader_adapter(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (num_read_memory >= 0x400)
  {
    __break(1u);
    JUMPOUT(0x181F4);
  }

  v4 = g_crm_reader(a1, a2, a3);
  *a4 = v4;
  v5 = num_read_memory++;
  read_memory[v5] = v4;
  if (v4)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

__n128 pointer_recorder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  for (i = 0; i < a5; ++i)
  {
    if (*(a4 + 16 * i) <= enumeration_context && enumeration_context < *(a4 + 16 * i) + *(a4 + 16 * i + 8))
    {
      result = *(a4 + 16 * i);
      *&qword_D82A0 = result;
      return result;
    }
  }

  return result;
}

unint64_t stacktrace_depo_find(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v11 = 0x80000;
  v12 = a2 & 0x7FFFF;
  v10 = 0;
  v10 = *(a1 + 8 * (a2 & 0x7FFFF));
  if (v10 != a2)
  {
    return 0;
  }

  v9 = 0x400000;
  if ((HIDWORD(v10) & 0xFFFFFFu) > 0x400000uLL)
  {
    return 0;
  }

  v8 = murmur2_init();
  for (i = 0; i < SHIBYTE(HIDWORD(v10)); ++i)
  {
    if (i < v13)
    {
      *(v14 + 8 * i) = *(v16 + 0x400000 + 8 * (((HIDWORD(v10) & 0xFFFFFF) + i) & 0x3FFFFF));
    }

    murmur2_add_uintptr(&v8, *(v14 + 8 * i));
  }

  v6 = v15;
  if (v6 != murmur2_finalize(&v8))
  {
    return 0;
  }

  if (v13 >= HIBYTE(HIDWORD(v10)))
  {
    return HIBYTE(HIDWORD(v10));
  }

  else
  {
    return v13;
  }
}

BOOL sanitizer_should_enable()
{
  v1 = 1;
  if (!env_BOOL())
  {
    return env_BOOL();
  }

  return v1;
}

mach_vm_address_t sanitizer_create_zone(uint64_t a1)
{
  v4 = sanitizer_vm_map(16680, 3, 1);
  memcpy(v4, &malloc_zone_template, 0xC8uLL);
  v3 = 0;
  if (*(a1 + 96))
  {
    v3 = *(a1 + 96);
  }

  if (v3 != &szone_introspect)
  {
    __break(1u);
    JUMPOUT(0x18688);
  }

  *(v4 + 200) = a1;
  if (*(a1 + 104) < 0xDu)
  {
    v2 = *(a1 + 104);
    malloc_report(64, "Unsupported wrapped zone version: %u\n");
  }

  *(v4 + 208) = env_BOOL();
  *(v4 + 209) = !env_BOOL();
  *(v4 + 216) = env_uint("MallocSanitizerRedzoneSize", 0x10u);
  if (*(v4 + 216) % 8uLL)
  {
    __break(1u);
    JUMPOUT(0x1874CLL);
  }

  *(v4 + 224) = env_uint("MallocQuarantineMaxItems", 0);
  *(v4 + 232) = env_uint("MallocQuarantineMaxSizeInMB", 0x100u) << 20;
  *(v4 + 240) = stacktrace_depo_create();
  *(v4 + 248) = pointer_map_create();
  init_lock(v4);
  sanitizer_vm_protect(v4, 0x4000, 1);
  return v4;
}