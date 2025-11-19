char *_iterate_path(char *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5[0] = result;
    v5[1] = 0;
    result = fts_open(v5, 84, 0);
    if (result)
    {
      return _iterate_path_cold_1(result, a2, a3);
    }
  }

  return result;
}

uint64_t _set_path_class(const char *a1, int a2, int a3, char a4)
{
  v16 = 0;
  v15 = xmmword_1120;
  v14 = 0;
  if (getattrlist(a1, &v15, &v14, 8uLL, 0))
  {
    return *__error();
  }

  if (HIDWORD(v14) == a3 || a2 != -1 && HIDWORD(v14) != a2)
  {
    return 0;
  }

  if (a2 == -1)
  {
    if (a4)
    {
      fprintf(__stdoutp, "%s set %i\n");
    }
  }

  else if (a4)
  {
    fprintf(__stdoutp, "%s update %i -> %i\n");
  }

  v13 = a3;
  if (!setattrlist(a1, &v15, &v13, 4uLL, 0))
  {
    return 0;
  }

  v8 = __error();
  v9 = *v8;
  v10 = __stderrp;
  v11 = strerror(*v8);
  fprintf(v10, "failed (%s) to update class for %s\n", v11, a1);
  return v9;
}

uint64_t __aks_migrate_path_block_invoke(_DWORD *a1, uint64_t a2)
{
  v2 = a1[8];
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 48);
    v4 = a1[9];
    v5 = a1[10];
    v3 = v6;
    goto LABEL_5;
  }

  if ((v2 & 8) != 0)
  {
    v3 = *(a2 + 48);
    v4 = -1;
    v5 = 0;
LABEL_5:
    _set_path_class(v3, v4, v5, v2);
  }

  return 1;
}

_DWORD *__aks_migrate_path_block_invoke_2(_DWORD *result, uint64_t a2)
{
  v3 = result[8];
  if (v3)
  {
    v4 = result[9];
    if ((v4 & 0x10) != 0)
    {
      if (result[10])
      {
        v5 = result[10];
      }

      else
      {
        v5 = 3;
      }

      return _set_path_class(*(a2 + 48), v3, v5, v4);
    }
  }

  return result;
}

uint64_t _iterate_path_cold_1(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

uint64_t aks_migrate_path(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_4();
  bzero(v15, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v4, v15))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v3 | 0x18;
  if ((v3 & 0x1C) != 0)
  {
    v5 = v3;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = __aks_migrate_path_block_invoke;
  v11[3] = &__block_descriptor_tmp;
  v12 = v5;
  v13 = v2;
  v14 = v1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = __aks_migrate_path_block_invoke_2;
  v7[3] = &__block_descriptor_tmp_16;
  v8 = v2;
  v9 = v5;
  v10 = v1;
  _iterate_path(v15, v11, v7);
  return 0;
}