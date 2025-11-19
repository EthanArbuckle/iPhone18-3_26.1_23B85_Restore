void _Block_use_RR2(const Block_callbacks_RR *callbacks)
{
  release = callbacks->release;
  _Block_retain_object[0] = callbacks->retain;
  _Block_release_object[0] = release;
  _Block_destructInstance = callbacks->destructInstance;
}

uint64_t _call_custom_copy_helper(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 0x2000000) != 0)
  {
    v2 = *(*(a2 + 24) + 16);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

uint64_t _call_custom_dispose_helper(uint64_t result)
{
  if ((*(result + 8) & 0x2000000) != 0)
  {
    v1 = *(*(result + 24) + 24);
    if (v1)
    {
      return v1();
    }
  }

  return result;
}

void *__cdecl _Block_copy(const void *aBlock)
{
  if (!aBlock)
  {
    return 0;
  }

  if ((*(aBlock + 2) & 0x1000000) != 0)
  {
    do
    {
      v7 = *(aBlock + 2);
      if ((~v7 & 0xFFFE) == 0)
      {
        break;
      }

      v8 = *(aBlock + 2);
      atomic_compare_exchange_strong((aBlock + 8), &v8, v7 + 2);
    }

    while (v8 != v7);
    return aBlock;
  }

  if ((*(aBlock + 2) & 0x10000000) != 0)
  {
    return aBlock;
  }

  v2 = *(*(aBlock + 3) + 8);
  v3 = malloc_type_malloc();
  if (v3)
  {
    if (!*(aBlock + 2))
    {
      _Block_copy_cold_1();
    }

    v4 = *(aBlock + 2);
    _platform_memmove();
    v5 = *(aBlock + 2);
    if (v5)
    {
      v6 = *(aBlock + 2);
    }

    v3[2] = v5;
    *(v3 + 2) &= 0xFFFF0000;
    *(v3 + 2) |= 0x1000002u;
    _call_custom_copy_helper(v3, aBlock);
    *v3 = _NSConcreteMallocBlock;
  }

  return v3;
}

void _Block_release(const void *aBlock)
{
  if (aBlock && (*(aBlock + 2) & 0x10000000) == 0 && (*(aBlock + 2) & 0x1000000) != 0)
  {
    while (1)
    {
      v2 = *(aBlock + 2);
      if ((v2 & 0xFFFE) == 0 || (*(aBlock + 2) & 0xFFFE) == 65534)
      {
        break;
      }

      if (*(aBlock + 2) == 2)
      {
        v4 = -1;
      }

      else
      {
        v4 = -2;
      }

      v5 = *(aBlock + 2);
      atomic_compare_exchange_strong((aBlock + 8), &v5, v4 + v2);
      if (v5 == v2)
      {
        if (v2 == 2)
        {
          _call_custom_dispose_helper(aBlock);
          _Block_destructInstance(aBlock);

          free(aBlock);
        }

        return;
      }
    }
  }
}

BOOL _Block_tryRetain(const void *aBlock)
{
  while (1)
  {
    v1 = *(aBlock + 2);
    v2 = (v1 & 1) == 0;
    if (~v1 & 0xFFFE) == 0 || (v1)
    {
      break;
    }

    v4 = *(aBlock + 2);
    atomic_compare_exchange_strong((aBlock + 8), &v4, v1 + 2);
    if (v4 == v1)
    {
      return 1;
    }
  }

  return v2;
}

BOOL _Block_has_signature(void *aBlock)
{
  if ((*(aBlock + 2) & 0x40000000) == 0)
  {
    return 0;
  }

  v2 = 32;
  if ((*(aBlock + 2) & 0x2000000) == 0)
  {
    v2 = 16;
  }

  return *(*(aBlock + 3) + v2) != 0;
}

const char *__cdecl _Block_signature(void *aBlock)
{
  if ((*(aBlock + 2) & 0x40000000) == 0)
  {
    return 0;
  }

  v2 = 32;
  if ((*(aBlock + 2) & 0x2000000) == 0)
  {
    v2 = 16;
  }

  return *(*(aBlock + 3) + v2);
}

const char *__cdecl _Block_layout(void *aBlock)
{
  if ((*(aBlock + 2) & 0x80000000) != 0 || (*(aBlock + 2) & 0x40000000) == 0)
  {
    return 0;
  }

  v2 = 32;
  if ((*(aBlock + 2) & 0x2000000) == 0)
  {
    v2 = 16;
  }

  return *(*(aBlock + 3) + v2 + 8);
}

const char *__cdecl _Block_extended_layout(void *aBlock)
{
  if ((*(aBlock + 2) & 0x80000000) == 0 || (*(aBlock + 2) & 0x40000000) == 0)
  {
    return 0;
  }

  v2 = 32;
  if ((*(aBlock + 2) & 0x2000000) == 0)
  {
    v2 = 16;
  }

  if (*(*(aBlock + 3) + v2 + 8))
  {
    return *(*(aBlock + 3) + v2 + 8);
  }

  else
  {
    return "";
  }
}

void _Block_object_assign(void *a1, const void *a2, const int a3)
{
  v3 = a2;
  v5 = a3 & 0x9F;
  if (v5 > 0x17)
  {
    if (v5 - 131 > 0x14 || ((1 << (v5 + 125)) & 0x110011) == 0)
    {
      if (v5 != 24)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_29:
    *a1 = v3;
    return;
  }

  switch(v5)
  {
    case 3u:
      _Block_retain_object[0](a2);
      goto LABEL_29;
    case 7u:
      v3 = _Block_copy(a2);
      goto LABEL_29;
    case 8u:
LABEL_12:
      v7 = *(a2 + 1);
      if ((*(v7 + 16) & 0xFFFE) != 0)
      {
        if ((*(v7 + 16) & 0x1000000) != 0)
        {
          do
          {
            v8 = *(v7 + 16);
            if ((~v8 & 0xFFFE) == 0)
            {
              break;
            }

            v9 = *(v7 + 16);
            atomic_compare_exchange_strong((v7 + 16), &v9, v8 + 2);
          }

          while (v9 != v8);
        }
      }

      else
      {
        v10 = *(a2 + 5);
        v11 = malloc_type_malloc();
        *v11 = 0;
        *(v11 + 16) = v3[4] | 0x1000004;
        *(v11 + 8) = v11;
        *(v3 + 1) = v11;
        *(v11 + 20) = v3[5];
        if ((v3[4] & 0x2000000) != 0)
        {
          v12 = *(v3 + 3);
          if (v12)
          {
            v13 = *(v3 + 3);
          }

          *(v11 + 24) = v12;
          v14 = *(v3 + 4);
          if (v14)
          {
            v15 = *(v3 + 4);
          }

          *(v11 + 32) = v14;
          if (v3[4] >> 28 == 1)
          {
            *(v11 + 40) = *(v3 + 5);
          }

          (*(v3 + 3))();
        }

        else
        {
          _platform_memmove();
        }
      }

      v3 = *(v3 + 1);
      goto LABEL_29;
  }
}

void _Block_object_dispose(const void *a1, const int a2)
{
  v2 = a2 & 0x9F;
  if (v2 > 7)
  {
    if (v2 == 24 || v2 == 8)
    {
      v4 = *(a1 + 1);
      if ((*(v4 + 16) & 0x1000000) != 0)
      {
        if ((*(v4 + 16) & 0xFFFE) == 0)
        {
          _Block_object_dispose_cold_1();
        }

        while (1)
        {
          v6 = *(v4 + 16);
          if ((v6 & 0xFFFE) == 0 || (*(v4 + 16) & 0xFFFE) == 65534)
          {
            break;
          }

          if (*(v4 + 16) == 2)
          {
            v8 = -1;
          }

          else
          {
            v8 = -2;
          }

          v9 = *(v4 + 16);
          atomic_compare_exchange_strong((v4 + 16), &v9, v8 + v6);
          if (v9 == v6)
          {
            if (v6 == 2)
            {
              if ((*(v4 + 16) & 0x2000000) != 0)
              {
                (*(v4 + 32))(v4);
              }

              free(v4);
            }

            return;
          }
        }
      }
    }
  }

  else if (v2 == 3)
  {
    v5 = _Block_release_object[0];

    v5(a1);
  }

  else if (v2 == 7)
  {

    _Block_release(a1);
  }
}

void _Block_object_dispose_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
  _os_assert_log();
}