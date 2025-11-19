uint64_t _materialize_partial(unsigned int a1, int a2, uint64_t a3, uint64_t a4, int a5, _BYTE *a6)
{
  if (a3 < 0 || a4 <= 0)
  {
    v9 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      _materialize_partial_cold_4();
    }

LABEL_9:

LABEL_10:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v8 = a3 + a4;
  if (__OFADD__(a3, a4))
  {
    v9 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v21 = xmmword_1AAC26688;
  v22 = 512;
  DWORD2(v24) = 0;
  *&v24 = 0;
  if (fgetattrlist(a1, &v21, &v24, 0xCuLL, 0) < 0)
  {
    v15 = -1;
  }

  else
  {
    v15 = *(&v24 + 4);
  }

  if (v15 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v8 > v15)
  {
    v16 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _materialize_partial_cold_3();
    }

LABEL_31:

    goto LABEL_10;
  }

  if (v15 != v8)
  {
    v16 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _materialize_partial_cold_1();
    }

    goto LABEL_31;
  }

  *&v24 = 0;
  *(&v24 + 1) = a3;
  v25 = a4;
  if (fcntl(a2, 99, &v24) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  *(&v21 + 1) = a3;
  *&v21 = a1;
  v22 = a3;
  v23 = a4;
  if (ffsctl(a2, 0x80204A4CuLL, &v21, 0) < 0)
  {
    v20 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _materialize_partial_cold_2();
    }

    return 0xFFFFFFFFLL;
  }

  v17 = fgetsize(a2);
  if (v17 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v17;
  v19 = lseek(a2, 0, 3);
  if (v19 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v19 == v18 || !a3 && a5 && a4 == v18)
  {
    result = 0;
    *a6 = 1;
  }

  else
  {
    result = 0;
    *a6 = 0;
  }

  return result;
}

uint64_t __fpfs_materialize_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v2;
  if (v3)
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 20) = v2;
  }

  return 0;
}

uint64_t fpfs_purge_single_file(int a1, int a2)
{
  v7 = 0u;
  v8 = 0u;
  LODWORD(v7) = a2;
  memset(&v6, 0, sizeof(v6));
  if (ffsctl(a1, 0xC0204A5FuLL, &v7, 0) < 0)
  {
    v4 = *__error();
    v5 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      fpfs_purge_single_file_cold_1();
    }

    goto LABEL_8;
  }

  if (*(&v8 + 1))
  {
    return 0;
  }

  result = fstat(a1, &v6);
  if (result)
  {
    return 0;
  }

  if ((v6.st_mode & 0xF000) == 0x8000 && v6.st_size >= 1 && v6.st_nlink >= 2u)
  {
    v4 = 31;
LABEL_8:
    *__error() = v4;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t fpfs_revoke_children(int a1, uint64_t *a2)
{
  v4 = 1;
  if (ffsctl(a1, 0xC0084A5EuLL, &v4, 0) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4)
  {
    if (a2)
    {
      *a2 = v4;
    }

    *__error() = 16;
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t fpfs_evict(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unsigned int a6, int a7, void *a8)
{
  v54 = *MEMORY[0x1E69E9840];
  v15 = a8;
  v16 = v15;
  v39 = -1;
  if (a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = &v39;
  }

  if (((*a2 - 1) & 0xFFFFFFFD) != 0)
  {
    if (*a2 == 2)
    {
      v18 = v15;
      memset(&v53, 0, sizeof(v53));
      if ((fstat(a1, &v53) & 0x80000000) == 0)
      {
        st_flags = v53.st_flags;
        if ((v53.st_flags & 0x40000000) != 0 || (_fset_dataless_cmpfs_xattr(a1, *a2, *(a2 + 16), *(a2 + 104), *(a2 + 208)) & 0x80000000) == 0)
        {
          if ((fpfs_revoke_children(a1, v17) & 0x80000000) != 0 && *v17 != a3)
          {
            if ((st_flags & 0x40000000) == 0)
            {
              v35 = *__error();
              fpfs_unset_dataless_cmpfs_attrs(a1, (a2 + 40));
              *__error() = v35;
            }
          }

          else
          {
            if ((fpfs_femptydir(a1, a3, 0, v17, 0) & 0x80000000) == 0 || *__error() != 66)
            {
              v47 = 0;
              v48 = &v47;
              v49 = 0x2020000000;
              LODWORD(v50) = 0;
              v40 = MEMORY[0x1E69E9820];
              v41 = 3221225472;
              v42 = __evict_dir_block_invoke;
              v43 = &unk_1E793C060;
              v46 = a1;
              v44 = &v47;
              v45 = a3;
              fpfs_fopendir(a1, &v40);
              if (*(v48 + 24) >= 1)
              {
                bzero(&v53, 0x400uLL);
                v30 = *__error();
                fpfs_fgetpath(a1, &v53);
                *__error() = v30;
                v31 = fpfs_current_or_default_log();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  v32 = __error();
                  v33 = strerror(*v32);
                  fpfs_evict_cold_1(v33, buf, &v53, v31);
                }
              }

              _Block_object_dispose(&v47, 8);
              v27 = 0;
              goto LABEL_62;
            }

            v20 = fpfs_current_or_default_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              fpfs_evict_cold_2(v17, v20);
            }

            if ((st_flags & 0x40000000) == 0)
            {
              v21 = *__error();
              fpfs_unset_dataless_cmpfs_attrs(a1, (a2 + 40));
              *__error() = v21;
            }

            *__error() = 16;
          }
        }
      }

      v27 = 0xFFFFFFFFLL;
      goto LABEL_62;
    }

    v18 = v15;
    memset(&v53, 0, sizeof(v53));
    if (fstat(a1, &v53) < 0 || (_fset_dataless_cmpfs_xattr(a1, *a2, *(a2 + 16), *(a2 + 104), *(a2 + 208)) & 0x80000000) != 0)
    {
LABEL_37:
      v27 = 0xFFFFFFFFLL;
      goto LABEL_62;
    }

    if ((v53.st_mode & 0xF000) == 0x8000 && v53.st_nlink != 1)
    {
      fpfs_unset_dataless_cmpfs_attrs(a1, (a2 + 40));
      v25 = __error();
      v26 = 31;
LABEL_36:
      *v25 = v26;
      goto LABEL_37;
    }

    if (!a6 || (v40 = MEMORY[0x1E69E9820], v41 = 3221225472, v42 = ___fpfs_evict_legacy_block_invoke, v43 = &__block_descriptor_48_e34_i16__0__fpfs_item_handle_QQII_iI_8l, v45 = __PAIR64__(a1, a6), v44 = a5, (fpfs_fgethandle(a1, &v40) & 0x80000000) == 0))
    {
      v34 = *a2;
      if (*a2 != 3)
      {
        if (v34 == 2)
        {
          if ((fpfs_femptydir(a1, a3, 0, v17, 0) & 0x80000000) != 0 || (fpfs_femptydir(a1, a3, 0, 0, &__block_literal_global_29_0) & 0x80000000) != 0)
          {
            fpfs_unset_dataless_cmpfs_attrs(a1, (a2 + 40));
            v25 = __error();
            v26 = 66;
            goto LABEL_36;
          }
        }

        else
        {
          if (v34 != 1)
          {
            v25 = __error();
            v26 = 45;
            goto LABEL_36;
          }

          if (ftruncate(a1, 0) < 0)
          {
            goto LABEL_37;
          }
        }

LABEL_68:
        v27 = (fpfs_fset_metadata(a1, a2, 0, 3, 0, 0, v18) >> 31);
        goto LABEL_62;
      }

      v47 = MEMORY[0x1E69E9820];
      v48 = 3221225472;
      v49 = ___femptypkg_block_invoke;
      v50 = &__block_descriptor_36_e29_i16__0__dirent_QQSSC_1024c__8l;
      v51 = a1;
      if ((fpfs_fopendir(a1, &v47) & 0x80000000) == 0)
      {
        goto LABEL_68;
      }
    }

    v38 = *__error();
    fpfs_unset_dataless_cmpfs_attrs(a1, (a2 + 40));
    *__error() = v38;
    goto LABEL_37;
  }

  v18 = v15;
  v22 = 0;
  while ((_fset_dataless_cmpfs_xattr_only(a1, *a2, *(a2 + 16), *(a2 + 104), *(a2 + 208)) & 0x80000000) != 0)
  {
    v23 = *__error();
    v24 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      fpfs_evict_cold_4(&v53, &v53.st_dev + 1, v24);
    }

    *__error() = v23;
LABEL_25:
    if (v22 & 1 | (*__error() != 16))
    {
      goto LABEL_38;
    }

    if (*a2 == 1)
    {
      fpfs_funload_file(a1);
    }

    else
    {
      if (*a2 != 3)
      {
LABEL_38:
        v27 = 0xFFFFFFFFLL;
        goto LABEL_62;
      }

      fpfs_funload_hierarchy(a1);
    }

    v22 = 1;
  }

  if ((fpfs_purge_single_file(a1, 0) & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v28 = fpfs_fset_metadata(a1, a2, 0, a5, 0, 0, v18);
  v27 = (v28 >> 31);
  if ((v28 & 0x80000000) == 0 && a7)
  {
    if ((fpfs_remove_content_dependent_xattrs(a1, v18) & 0x80000000) != 0)
    {
      v29 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        fpfs_evict_cold_3();
      }
    }

    v27 = 0;
  }

LABEL_62:

  v36 = *MEMORY[0x1E69E9840];
  return v27;
}

void sub_1AAB7B30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpfs_evict_at(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v15 = a8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __fpfs_evict_at_block_invoke;
  v19[3] = &unk_1E793B8C0;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v20 = v15;
  v21 = a3;
  v16 = v15;
  v17 = fpfs_openat(a1, a2, 2u, 0, 2, v19);

  return v17;
}

uint64_t fpfs_is_dataless_fault(int a1, BOOL *a2)
{
  memset(&v4, 0, sizeof(v4));
  if (fstat(a1, &v4) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a2)
  {
    *a2 = (v4.st_flags & 0x40000000) != 0;
  }

  return result;
}

uint64_t fpfs_is_dataless_fault_at(int a1, const char *a2, BOOL *a3)
{
  memset(&v5, 0, sizeof(v5));
  if (fstatat(a1, a2, &v5, 32) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a3)
  {
    *a3 = (v5.st_flags & 0x40000000) != 0;
  }

  return result;
}

uint64_t ___get_current_user_uuid_block_invoke()
{
  v0 = getuid();
  result = mbr_uid_to_uuid(v0, &_get_current_user_uuid_uuid_cached);
  if ((result & 0x80000000) != 0)
  {
    abort();
  }

  return result;
}

uint64_t ___fpfs_prune_fault_confirm_block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = xmmword_1AAC26670;
  v9 = 0;
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  if (fgetattrlist(a2, &v8, v10, 0x48uLL, 0x20u))
  {
    goto LABEL_2;
  }

  _fpfs_remove_sharing_xattrs(a2);
  v5 = DWORD2(v11);
  if (DWORD1(v10[0]) == 2)
  {
    fpfs_fset_syncroot(a2, 0);
    if ((v5 & 0x40000000) != 0)
    {
      v7 = *(v10 + 8);
      fpfs_unset_dataless_cmpfs_attrs(a2, &v7);
    }

    goto LABEL_12;
  }

  if (*(a1 + 40))
  {
    result = _fpfs_is_meaningful_item(v10, *(a1 + 32), 3);
    if (!result)
    {
      goto LABEL_13;
    }

    *&v7 = 0;
    if (!fpfs_eviction_urgency_with_validation(a2, &v7, 0, 1) && v7)
    {
LABEL_12:
      result = 0;
      goto LABEL_13;
    }
  }

  else if ((DWORD2(v11) & 0x40000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_2:
  result = 0xFFFFFFFFLL;
LABEL_13:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _validate_file_types@<X0>(__int16 a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = 22;
      goto LABEL_18;
    }

    if (a2 == 1)
    {
      if ((a1 & 0xF000) != 0x4000)
      {
        if ((a1 & 0xF000) == 0x8000)
        {
          return 0;
        }

        goto LABEL_11;
      }

LABEL_17:
      v3 = 21;
      goto LABEL_18;
    }
  }

  else
  {
    a3 = (a2 - 2);
    if (a3 < 2)
    {
      if ((a1 & 0xF000) != 0x4000)
      {
        if ((a1 & 0xF000) == 0x8000)
        {
          v3 = 20;
        }

        else
        {
          v3 = 79;
        }

        goto LABEL_18;
      }

      return 0;
    }

    if (a2 == 4)
    {
      if ((a1 & 0xF000) != 0x4000)
      {
        if ((a1 & 0xF000) == 0xA000)
        {
          return 0;
        }

LABEL_11:
        v3 = 79;
LABEL_18:
        *__error() = v3;
        return 0xFFFFFFFFLL;
      }

      goto LABEL_17;
    }
  }

  return a3;
}

uint64_t fgetsize(int a1)
{
  v3 = xmmword_1AAC26688;
  v4 = 512;
  memset(v2, 0, 12);
  if (fgetattrlist(a1, &v3, v2, 0xCuLL, 0) < 0)
  {
    return -1;
  }

  else
  {
    return *(v2 + 4);
  }
}

uint64_t __evict_dir_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 != *(a1 + 40) && (fpfs_recursive_unlinkat(*(a1 + 48), (a2 + 21), *(a2 + 20) == 4, 0) & 0x80000000) != 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 0;
}

uint64_t ___fpfs_evict_legacy_block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a2 + 20) == *(a1 + 40))
  {
    result = 0;
  }

  else
  {
    *__error() = 70;
    v5 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a2 + 20);
      v10 = *(a1 + 40);
      v9 = *(a1 + 44);
      v11[0] = 67109888;
      v11[1] = v9;
      v12 = 2048;
      v13 = v7;
      v14 = 1024;
      v15 = v8;
      v16 = 1024;
      v17 = v10;
      _os_log_error_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_ERROR, "ESTALE: item gen_count changed during _fpfs_evict_legacy [%d, %llu, %u, %u]", v11, 0x1Eu);
    }

    result = 0xFFFFFFFFLL;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AAB7D6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1AAB7E0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AAB7FE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AAB803A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB805C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AAB80D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AAB86880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AAB86C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AAB86E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1AAB870C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AAB87494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t QOSClassFromNSQualityOfService(uint64_t result)
{
  if (result > 16)
  {
    if (result == 17 || result == 33 || result == 25)
    {
      return result;
    }

    return 0;
  }

  if (result == -1)
  {
    return 21;
  }

  if (result != 9)
  {
    return 0;
  }

  return result;
}

void sub_1AAB89DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AAB8DE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB8E260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FPLocalizationBundle_block_invoke()
{
  FPLocalizationBundle_bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

id FPLocalizedErrorStringForKey(void *a1)
{
  v1 = a1;
  v2 = FPLocalizationBundle();
  v3 = [v2 localizedStringForKey:v1 value:@"X" table:@"Errors"];

  if ([v3 isEqualToString:@"X"])
  {
    if ([v1 hasSuffix:@"-C"] & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"-R") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @".f") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"(*)") & 1) != 0 || (objc_msgSend(v1, "containsString:", @"("))
    {
      v4 = 0;
      goto LABEL_10;
    }

    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      FPLocalizedErrorStringForKey_cold_1(v1, v7);
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"KEY_MISSING(%@)", v1];
  }

  else
  {
    v5 = v3;
  }

  v4 = v5;
LABEL_10:

  return v4;
}

uint64_t copyfile_status_cb(int a1, int a2, _copyfile_state *a3, const char *a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = v10;
  if (a2 == 3)
  {
    if (([v10 shouldCopyAppleDouble] & 1) == 0)
    {
      v16 = __error();
      if (a1 == 1 && *v16 == 17)
      {
        v17 = MEMORY[0x1E695DFF8];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
        v19 = [v17 URLWithString:v18];

        v20 = [v19 lastPathComponent];
        v21 = [v20 hasPrefix:@"._"];

        if (v21)
        {
          v22 = fp_current_or_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            copyfile_status_cb_cold_4();
          }

LABEL_19:
          goto LABEL_20;
        }
      }
    }

    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      copyfile_status_cb_cold_5(a4, v12);
    }

    [v11 setCopyError:*__error()];
    goto LABEL_7;
  }

  v13 = [v10 progress];
  v14 = [v13 isCancelled];

  if (v14)
  {
LABEL_7:
    v15 = 2;
    goto LABEL_43;
  }

  if (a1 != 5)
  {
    if (a1 == 3)
    {
LABEL_20:
      v15 = 0;
      goto LABEL_43;
    }

    if (a1 == 2)
    {
      [v11 setRootWasCopied:1];
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        copyfile_status_cb_cold_1();
      }

      goto LABEL_19;
    }

    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:a4 length:strlen(a4) encoding:4 freeWhenDone:0];
    if (a1 == 4)
    {
      [v11 updateCopyingFile:v24 state:a3];
    }

    else if (a1 == 1)
    {
      if (a2 == 2)
      {
        [v11 finishCopyingFile:v24 state:a3];
        v28 = fp_current_or_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          copyfile_status_cb_cold_2();
        }
      }

      else if (a2 == 1)
      {
        if (([v11 shouldCopyAppleDouble] & 1) == 0)
        {
          v25 = [v24 lastPathComponent];
          v26 = [v25 hasPrefix:@"._"];

          if (v26)
          {
            v27 = fp_current_or_default_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              copyfile_status_cb_cold_3();
            }

            v15 = 1;
            goto LABEL_42;
          }
        }

        [v11 beginCopyingFile:v24 state:a3];
      }
    }

    v15 = 0;
LABEL_42:

    goto LABEL_43;
  }

  dst = 0;
  if (copyfile_state_get(a3, 9u, &dst))
  {
    v23 = fp_current_or_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_1AAAE1000, v23, OS_LOG_TYPE_DEFAULT, "[WARNING] copyfile: Failed to get xattr name", v30, 2u);
    }

    v15 = 1;
  }

  else
  {
    v15 = xattr_preserve_for_intent(dst, 1u) != 1;
  }

LABEL_43:

  return v15;
}

void sub_1AAB91F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AAB92F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB93740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

void sub_1AAB93D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB96E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_8_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1AAB985E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB98AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id knownFolderLocationConcreteClasses()
{
  if (knownFolderLocationConcreteClasses_onceToken != -1)
  {
    knownFolderLocationConcreteClasses_cold_1();
  }

  v1 = knownFolderLocationConcreteClasses_classes;

  return v1;
}

uint64_t __knownFolderLocationConcreteClasses_block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  knownFolderLocationConcreteClasses_classes = [v0 setWithObjects:{v1, objc_opt_class(), 0}];

  return MEMORY[0x1EEE66BB8]();
}

Class __getCSSearchableItemAttributeSetClass_block_invoke_0(uint64_t a1)
{
  CoreSpotlightLibrary_2();
  result = objc_getClass("CSSearchableItemAttributeSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSSearchableItemAttributeSetClass_block_invoke_cold_1_0();
  }

  getCSSearchableItemAttributeSetClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_3 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCSLocalizedStringClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_2();
  result = objc_getClass("CSLocalizedString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSLocalizedStringClass_block_invoke_cold_1();
  }

  getCSLocalizedStringClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDPropertyCreateUserTagStringsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MetadataUtilitiesLibrary_0();
  result = dlsym(v2, "MDPropertyCreateUserTagStrings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDPropertyCreateUserTagStringsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MetadataUtilitiesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MetadataUtilitiesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCSSearchableItemClass_block_invoke_0(uint64_t a1)
{
  CoreSpotlightLibrary_2();
  result = objc_getClass("CSSearchableItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSSearchableItemClass_block_invoke_cold_1_0();
  }

  getCSSearchableItemClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemFilenameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemFilename");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemFilenameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemDisplayNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemDisplayName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemDisplayNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemContentTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemContentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemContentTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemContentCreationDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemContentCreationDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemContentCreationDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemContentModificationDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemContentModificationDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemContentModificationDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemUserTagsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemUserTags");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemUserTagsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemFileProviderDomainIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemFileProviderDomainIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemFileProviderDomainIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemLastUsedDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemLastUsedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemLastUsedDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemFavoriteRankSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemFavoriteRank");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemFavoriteRankSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemIsUploadedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemIsUploaded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemIsUploadedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemIsUploadingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemIsUploading");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemIsUploadingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemDownloadingStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemDownloadingStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemDownloadingStatusSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemVersionIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemVersionIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemVersionIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemIsDownloadingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemIsDownloading");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemIsDownloadingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemUserOwnedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemUserOwned");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemUserOwnedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemFileSizeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemFileSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemFileSizeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemSubItemCountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemSubItemCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemSubItemCountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemIsSharedSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemIsShared");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemIsSharedSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemOwnerNameSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemOwnerName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemOwnerNameSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemLastEditorNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemLastEditorName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemLastEditorNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemIsTrashedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemIsTrashed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemIsTrashedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemContentURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemContentURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemContentURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemFileItemIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemFileItemID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemFileItemIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemFileProviderIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemFileProviderID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemFileProviderIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemParentFileItemIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemParentFileItemID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemParentFileItemIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemDocumentIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemDocumentIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemDocumentIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemAttributeChangeDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemAttributeChangeDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemAttributeChangeDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDPropertyCopyUserTagNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MetadataUtilitiesLibrary_0();
  result = dlsym(v2, "MDPropertyCopyUserTagName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDPropertyCopyUserTagNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemUploadErrorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemUploadError");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemUploadErrorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemDownloadErrorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_2();
  result = dlsym(v2, "MDItemDownloadError");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemDownloadErrorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AAB9CEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AAB9D360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AAB9D4D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

id getCSIndexErrorDomain()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getCSIndexErrorDomainSymbolLoc_ptr;
  v7 = getCSIndexErrorDomainSymbolLoc_ptr;
  if (!getCSIndexErrorDomainSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCSIndexErrorDomainSymbolLoc_block_invoke;
    v3[3] = &unk_1E793A2E8;
    v3[4] = &v4;
    __getCSIndexErrorDomainSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getCSIndexErrorDomain_cold_1();
  }

  v1 = *v0;

  return v1;
}

void sub_1AAB9DB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB9DFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AAB9E384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void *__getCSIndexErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_4)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreSpotlightLibraryCore_block_invoke_4;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E793D0F8;
    v7 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_4 = _sl_dlopen();
  }

  v2 = CoreSpotlightLibraryCore_frameworkLibrary_4;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_4)
  {
    __getCSIndexErrorDomainSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "CSIndexErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSIndexErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_4 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getFBSSystemServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E793D188;
    v6 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    __getFBSSystemServiceClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("FBSSystemService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSSystemServiceClass_block_invoke_cold_1();
  }

  getFBSSystemServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AABA05EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AABA0E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AABA1340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AABA16DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AABA1B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AABA2AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void *__getCSIndexErrorDomainSymbolLoc_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_5)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreSpotlightLibraryCore_block_invoke_5;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E793D348;
    v7 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v2 = CoreSpotlightLibraryCore_frameworkLibrary_5;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_5)
  {
    __getCSIndexErrorDomainSymbolLoc_block_invoke_cold_1_0(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "CSIndexErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCSIndexErrorDomainSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_5(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_5 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AABA3020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1AABA3628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

void sub_1AABA39B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

id comparablePathFromURL(void *a1)
{
  v1 = [a1 standardizedURL];
  v2 = [v1 pathComponents];
  v3 = [v2 mutableCopy];

  if ([v3 count] >= 2)
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    v5 = [v4 isEqualToString:@"private"];

    if (v5)
    {
      [v3 removeObjectAtIndex:1];
    }
  }

  v6 = [MEMORY[0x1E696AEC0] pathWithComponents:v3];

  return v6;
}

BOOL fpfs_path_is_ignored(const char *a1, int a2)
{
  v3 = strdup(a1);
  v4 = fpfs_path_is_safe_save_temp_file_ext(v3, a2) != 0;
  free(v3);
  return v4;
}

uint64_t is_ext_image_type(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 length:a2 encoding:4];
  v3 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v2];
  v4 = [v3 conformsToType:*MEMORY[0x1E6982E30]];

  return v4;
}

BOOL is_adobe_after_effect_safe_save(unint64_t a1, char *__s1)
{
  v4 = strcmp(__s1, "aep");
  v5 = __s1 - 2;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 > a1;
  }

  if (!v6)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *v5;
    if (v10 != 46 || v8 < 1)
    {
      if ((v10 - 48) > 9)
      {
        return v9 > 1;
      }

      ++v8;
    }

    else
    {
      v8 = 0;
      ++v9;
    }

    --v5;
  }

  while (v5 > a1);
  return v9 > 1;
}

char *is_adobe_illustrator_safe_save(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!strncmp(a1, "~ai-", 4uLL))
  {
    result = strrchr(a1, 95);
    if (result)
    {
      v4 = result;
      v5 = strcmp(result, "_.tmp");
      result = 0;
      if (!v5 && &v4[-a1] == 40)
      {
        v6 = strndup((a1 + 4), 0x24uLL);
        memset(uu, 0, sizeof(uu));
        result = (uuid_parse(v6, uu) == 0);
      }
    }
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

char *fpfs_path_is_safe_save_temp_file_ext(char *result, int a2)
{
  __stringp = result;
  if (result)
  {
    while (1)
    {
      v3 = strsep(&__stringp, "/");
      v4 = __stringp ? 0 : a2;
      result = fpfs_path_is_safe_save_temp_filename(v3, v4);
      if (result)
      {
        break;
      }

      if (!__stringp)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t fpfs_fsgetpath(int32_t a1, uint64_t a2, char **a3, size_t *a4)
{
  v13.val[0] = a1;
  v13.val[1] = 0;
  if (a4)
  {
    if (*a4)
    {
      v7 = *a4;
    }

    else
    {
      v7 = 0x2000;
    }
  }

  else
  {
    v7 = 0x2000;
  }

  v8 = malloc_type_malloc(v7, 0xDA79F968uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = fsgetpath(v8, v7, &v13, a2);
  if (v10 < 0)
  {
    free(v9);
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  if (a3)
  {
    *a3 = v9;
  }

  result = 0;
  if (a4)
  {
    *a4 = v11;
  }

  return result;
}

const char *fpfs_trim_path(const char *a1, void *a2)
{
  v3 = a1;
  v4 = &a1[strlen(a1)];
  v5 = v4 - 1;
  v6 = v3;
  while (1)
  {
    result = v6;
    v8 = v3;
    if (v6 >= v5)
    {
      break;
    }

    if (*v6 == 47)
    {
      ++v6;
      ++v3;
      if (result[1] == 47)
      {
        continue;
      }
    }

    if (v4 <= result)
    {
      goto LABEL_11;
    }

    while (*v5 == 47)
    {
      if (--v5 <= result)
      {
        v5 = result;
        goto LABEL_10;
      }
    }

    goto LABEL_10;
  }

  if (v4 <= v6)
  {
    goto LABEL_11;
  }

LABEL_10:
  v4 = v5 + 1;
LABEL_11:
  if (a2)
  {
    *a2 = v4 - v8;
  }

  return result;
}

void FPProviderForShareURL(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = +[FPDaemonConnection sharedConnectionProxy];
  [v8 fetchProviderForShareURL:v7 fallbackIdentifier:v6 completionHandler:v5];
}

void sub_1AABA9C50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

void sub_1AABAF410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AABAF6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AABAF888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AABAFD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

id FPCrossDeviceItemIDExtendedForReceivingApplication(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__21;
  v18 = __Block_byref_object_dispose__21;
  v19 = 0;
  v6 = FPGetItemURLForCrossDeviceItemID(v3, 0);
  if (v6)
  {
    v7 = [v4 fp_bundleIdentifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __FPCrossDeviceItemIDExtendedForReceivingApplication_block_invoke;
    v11[3] = &unk_1E793D6D8;
    v13 = &v14;
    v8 = v5;
    v12 = v8;
    FPExtendBookmarkForDocumentURL(v6, v7, v11);

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  }

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void sub_1AABAFF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t __FPCrossDeviceItemIDExtendedForReceivingApplication_block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

id FPCreateCrossDeviceItemIDForItemAtURLOnBehalfOfApplication(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 fp_hasSandboxAccessToFile:v3])
  {
    v5 = FPCreateCrossDeviceItemIDForItemAtURL(v3, 0);
  }

  else
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      FPCreateCrossDeviceItemIDForItemAtURLOnBehalfOfApplication_cold_1(v4, v3, v6);
    }

    v5 = 0;
  }

  return v5;
}

void sub_1AABB029C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t hasConflictingVersion(void *a1, void *a2, unint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 itemVersion], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "contentVersion"), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
    {
      if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 versionIdentifier], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v11 = [MEMORY[0x1E695DEF0] data];
      }

      v10 = v11;
    }

    v12 = [v6 contentVersion];
    v13 = [v10 isEqual:v12];

    if (a3 < 2)
    {
      if (v13)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v7 = v13 ^ 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    if (a3 < 2)
    {
      goto LABEL_29;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 itemVersion], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "metadataVersion"), v15 = objc_claimAutoreleasedReturnValue(), v14, !v15))
  {
    v15 = [MEMORY[0x1E695DEF0] data];
  }

  v16 = [v6 metadataVersion];
  if ([v15 isEqual:v16])
  {

    if ((v7 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v17 = [v6 metadataVersion];
    v18 = [v17 length] != 0;

    if (((v18 | v7) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_21:
  if (![v6 isEmpty])
  {
    v8 = 1;
    goto LABEL_29;
  }

  v19 = fp_current_or_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    hasConflictingVersion_cold_1(v5);
  }

  fp_simulate_crash(@"Item has version conflict, but empty base version", v20, v21, v22, v23, v24, v25, v26, v29);
  v27 = fp_current_or_default_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    hasConflictingVersion_cold_2();
  }

LABEL_27:
  v8 = 0;
LABEL_29:

  return v8;
}

void sub_1AABB16D0(void *a1)
{
  objc_begin_catch(a1);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;

  objc_exception_rethrow();
}

id contentTypeOfItem(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 contentType];
  }

  else
  {
    v3 = MEMORY[0x1E6982C40];
    v4 = [v1 typeIdentifier];

    v2 = [v3 fp_cachedTypeWithIdentifier:v4];
    v1 = v4;
  }

  return v2;
}

uint64_t isFolderContentType(void *a1)
{
  v1 = a1;
  if ([v1 conformsToType:*MEMORY[0x1E6982D80]])
  {
    v2 = [v1 conformsToType:*MEMORY[0x1E6982F30]] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1AABB3698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t areCompatibleContentTypes(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  LODWORD(a1) = [a1 conformsToType:v5];
  v7 = [v6 conformsToType:v5];

  return a1 ^ v7 ^ 1;
}

const void *_FPItemAttributeValueFunction(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _FPItemAttributeValueFunction_cold_1();
  }

  v5 = [v4 _coreSpotlightAttributeForKey:a3];
  CFRetain(v5);
  if (!v5)
  {
    _FPItemAttributeValueFunction_cold_2(a3);
  }

  return v5;
}

void sub_1AABB5808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MobileSpotlightIndexLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MobileSpotlightIndexLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MobileSpotlightIndexLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E793DA48;
    v5 = 0;
    MobileSpotlightIndexLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MobileSpotlightIndexLibraryCore_frameworkLibrary;
  if (!MobileSpotlightIndexLibraryCore_frameworkLibrary)
  {
    MobileSpotlightIndexLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __MobileSpotlightIndexLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileSpotlightIndexLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AABB71FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 + 40));
  _Unwind_Resume(a1);
}

void sub_1AABB7398(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AABB754C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _fpfs_fgethandle(int a1, int a2, void *a3)
{
  v16[96] = *MEMORY[0x1E69E9840];
  v5 = a3;
  bzero(&v13, 0x328uLL);
  v9 = xmmword_1AAC267C0;
  v10 = 0;
  if (fgetattrlist(a1, &v9, &v13, 0x328uLL, 0x20u))
  {
    goto LABEL_2;
  }

  v11 = v13;
  *v12 = v14;
  *&v12[16] = v15;
  if (HIDWORD(v13) != 1)
  {
    if (HIDWORD(v13) != 2)
    {
      *&v12[4] = 0;
      goto LABEL_11;
    }

    if (a2)
    {
      if ((fpfs_get_dirstat(a1, 0, v12, 0) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ((fpfs_pkg_dirstat(a1, 0, v12) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    if (*__error() != 45)
    {
LABEL_2:
      v6 = 0xFFFFFFFFLL;
      goto LABEL_14;
    }
  }

LABEL_11:
  v15 = 0;
  v14 = vrev64_s32(*v12);
  v13 = *&v12[8];
  if (DWORD2(v11) <= 0x300)
  {
    *(&v14 + 1) = v16;
    __memmove_chk();
  }

  v6 = v5[2](v5, &v13);
LABEL_14:

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t fpfs_gethandle_at(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __fpfs_gethandle_at_block_invoke;
  v9[3] = &unk_1E793A8F0;
  v10 = v5;
  v6 = v5;
  v7 = fpfs_openat(a1, a2, 0x200000u, 0, 0, v9);

  return v7;
}

uint64_t fpfs_item_handle_gencmp(uint64_t *a1, uint64_t *a2, char a3)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = *a2;
      if (*a2)
      {
        if (a3)
        {
          return v5 != v6;
        }

        v7 = *(a1 + 5);
        if (v7)
        {
          v8 = *(a2 + 5);
          if (v8)
          {
            return v5 != v6 || v7 != v8;
          }
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t fpfs_fgetdirentries()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v49[1118] = *MEMORY[0x1E69E9840];
  v7 = v6;
  if (*(v4 + 8))
  {
    if ((_pagetoken_validate(v5, v4) & 0x80000000) != 0)
    {
LABEL_46:
      v11 = 0xFFFFFFFFLL;
      goto LABEL_49;
    }
  }

  else if ((_pagetoken_init(v5, v4) & 0x80000000) != 0)
  {
    goto LABEL_46;
  }

  if (*(v4 + 28) == 1)
  {
    v8 = *(v4 + 20);
    *(v4 + 28) = 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = malloc_type_malloc(0x8000uLL, 0x6D13A23EuLL);
  if (!v9)
  {
    *__error() = 12;
    goto LABEL_46;
  }

  v10 = v9;
  LODWORD(v11) = 0;
  do
  {
    v12 = v11;
    v47 = xmmword_1AAC267D8;
    v48 = 0x20000000205;
    DWORD1(v47) = -971061749;
    v13 = getattrlistbulk(v5, &v47, v10, 0x8000uLL, 8uLL);
    v11 = v13;
    if (!v13)
    {
      goto LABEL_48;
    }

    if ((v13 & 0x80000000) != 0)
    {
      if (*__error() != 4 && *__error() != 35)
      {
        goto LABEL_48;
      }

      v11 = 0;
    }

    v8 -= v12;
    v14 = v11 - v8;
  }

  while (v11 <= v8);
  v38 = *v4;
  v15 = v7;
  if (!v11)
  {

    goto LABEL_40;
  }

  v37 = v2;
  v30 = v7;
  v36 = v15;
  v16 = 1;
  v17 = 1;
  v18 = v10;
  while (1)
  {
    if (v8 >= 1)
    {
      --v8;
      goto LABEL_20;
    }

    bzero(&v47, 0x2400uLL);
    if ((_parse_fileattrs(v18, v10 + 0x8000 - v18, &v47) & 0x80000000) != 0)
    {
      break;
    }

    if ((fpfs_pkg_fileattrs_update_on(v38, &v47, v37) & 0x80000000) != 0)
    {
      v31 = v48;
      v33 = *__error();
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v49];
      v35 = [v19 fp_prettyPath];

      *__error() = v33;
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        if (v31)
        {
          v21 = "docID";
        }

        else
        {
          v21 = "fileID";
        }

        v22 = v48;
        if (!v31)
        {
          v22 = v47;
        }

        v32 = v22;
        v34 = v21;
        v23 = *__error();
        *buf = 136315906;
        v40 = v34;
        v41 = 2048;
        v42 = v32;
        v43 = 2114;
        v44 = v35;
        v45 = 1024;
        v46 = v23;
        _os_log_error_impl(&dword_1AAAE1000, v20, OS_LOG_TYPE_ERROR, "[ERROR] Failed to list item %s(%llu) %{public}@, errno %{errno}d", buf, 0x26u);
      }
    }

    else if (((v36)[2](v36, &v47) & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

LABEL_20:
    v18 += *v18;
    v17 = v16++ < v11;
    if (v16 - v11 == 1)
    {
      goto LABEL_37;
    }
  }

  if (*__error() == 79)
  {
    goto LABEL_20;
  }

LABEL_37:

  v7 = v30;
  if (v17)
  {
LABEL_45:
    free(v10);
    goto LABEL_46;
  }

LABEL_40:
  v24 = *(v4 + 24);
  if ((_pagetoken_validate(v5, v4) & 0x80000000) != 0)
  {
    goto LABEL_45;
  }

  if (v24 == -1)
  {
    *(v4 + 20) += v14;
  }

  else
  {
    v25 = *(v4 + 24);
    v26 = __OFSUB__(v25, v14);
    v27 = v25 - v14;
    if (v27 < 0 != v26)
    {
      *__error() = 33;
      goto LABEL_45;
    }

    *(v4 + 20) += v14;
    *(v4 + 24) = v27;
  }

LABEL_48:
  free(v10);
LABEL_49:

  v28 = *MEMORY[0x1E69E9840];
  return v11;
}

char *fpfs_get_long_parent(char *__s, unint64_t a2, char **a3)
{
  if (!__s || !a2)
  {
    if (a3)
    {
      v6 = 0;
      *a3 = 0;
      return v6;
    }

    return 0;
  }

  if (a2 < 0xFF)
  {
    if (a3)
    {
      v6 = 0;
      *a3 = __s;
      return v6;
    }

    return 0;
  }

  v7 = __s;
  if (*__s)
  {
    v7 = __s;
LABEL_10:
    v8 = strchr(v7, 47);
    if (v8)
    {
      if ((v8 - __s) <= 0xFF)
      {
        v9 = v8 + 1;
        v10 = &v8[1 - __s];
        while (1)
        {
          v7 = v9;
          if (v10 >= a2)
          {
            break;
          }

          ++v9;
          ++v10;
          if (*v7 != 47)
          {
            if (*v7)
            {
              goto LABEL_10;
            }

            break;
          }
        }
      }
    }
  }

  if (a3)
  {
    *a3 = v7;
  }

  if (v7 == __s)
  {
    return 0;
  }

  v11 = &v7[~__s];
  while (v11[__s] == 47)
  {
    if (--v11 == -1)
    {
      return 0;
    }
  }

  v13 = malloc_type_malloc((v11 + 2), 0xC4E5AEF5uLL);
  v6 = v13;
  if (v13)
  {
    strlcpy(v13, __s, (v11 + 2));
  }

  return v6;
}

uint64_t fpfs_openat_longpath(int a1, char *__s, int a3, uint64_t a4)
{
  v17 = __s;
  if (!__s)
  {
    return openat(a1, 0, a3, a4);
  }

  v7 = __s;
  v8 = a1;
  while (1)
  {
    v9 = strlen(v7);
    if (v9 < 0x400)
    {
      break;
    }

    long_parent = fpfs_get_long_parent(v7, v9, &v17);
    if (!long_parent)
    {
      break;
    }

    v11 = long_parent;
    if (!*long_parent)
    {
      break;
    }

    v12 = openat(v8, long_parent, 0x100000);
    free(v11);
    if (v8 != a1)
    {
      v13 = *__error();
      close(v8);
      *__error() = v13;
    }

    if (v12 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v17;
    v8 = v12;
    if (!v17)
    {
      goto LABEL_12;
    }
  }

  v12 = v8;
LABEL_12:
  v14 = openat(v12, v17, a3, a4);
  if (v12 != a1)
  {
    v15 = *__error();
    close(v12);
    *__error() = v15;
  }

  return v14;
}

uint64_t fpfs_openat_longparent(int a1, const char *a2, void *a3)
{
  __n = 0;
  v5 = fpfs_trim_path(a2, &__n);
  v6 = strndup(v5, __n);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  v8 = strrchr(v6, 47);
  if (!v8)
  {
    free(v7);
    return 0xFFFFFFFFLL;
  }

  v9 = v8 - v7;
  if (v8 == v7)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v8;
  }

  *v10 = 0;
  v11 = fpfs_openat_longpath(a1, v7, 0x100000, 0);
  free(v7);
  if (a3)
  {
    *a3 = &v5[v9 + 1];
  }

  return v11;
}

uint64_t _openbyparentidandname_retry(uint64_t a1, unsigned int a2, char a3, uint64_t *a4, _DWORD *a5)
{
  v10 = a4[3];
  v19 = a1;
  v18 = a4[1];
  v11 = openbyid_np();
  if (v11 < 0 || ((v12 = v11, a2) ? (v13 = openat(v11, v10, a2 | ~(a2 >> 13) & 0x100 | 4, v18, v19)) : (v13 = openat(v11, v10, 33028, v18, v19)), v14 = v13, v15 = *__error(), close(v12), *__error() = v15, (v14 & 0x80000000) != 0))
  {
    v16 = __error();
    if ((a2 & 3) != 0 && (a3 & 2) != 0 && *v16 == 21)
    {
      return _openbyparentidandname_retry(a1, a2 & 0xFFFFFFFC, 0, a4, a5);
    }
  }

  else
  {
    if (!_validate_file_openbyid(v14, 0, a4))
    {
      return v14;
    }

    if (a5)
    {
      *a5 = 0;
    }

    *__error() = 2;
    close(v14);
  }

  if (!*__error())
  {
    _openbyparentidandname_retry_cold_1();
  }

  return 0xFFFFFFFFLL;
}

uint64_t fpfs_openbyid_ext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = fpfs_openfdbyhandle(a1, a2, a3, a4, 0);
  if ((v10 & 0x80000000) != 0 || (v11 = v10, v12 = v9[2](v9, v10), v13 = *__error(), close(v11) < 0) && (*__error() == 9 || *__error() == 5))
  {
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    *__error() = v13;
  }

  return v12;
}

uint64_t fpfs_track_document(int a1, _DWORD *a2)
{
  if ((fpfs_fchflags(a1, 0, 64) & 0x80000000) != 0)
  {
    DocumentId = GSLibraryGetOrAllocateDocumentId();
    if (DocumentId)
    {
      v6 = DocumentId;
      if ((fpfs_pkg_enable_dirstat(a1) & 0x80000000) == 0 || *__error() == 22)
      {
        if (a2)
        {
          result = 0;
          *a2 = v6;
          return result;
        }

        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((fpfs_pkg_enable_dirstat(a1) & 0x80000000) != 0 && *__error() != 22)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __fpfs_track_document_block_invoke;
    v7[3] = &__block_descriptor_40_e34_i16__0__fpfs_item_handle_QQII_iI_8l;
    v7[4] = a2;
    return _fpfs_fgethandle(a1, 0, v7);
  }

  return 0;
}

uint64_t __fpfs_track_document_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    result = 0;
    **(a1 + 32) = v2;
  }

  else
  {
    *__error() = 35;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t fpfs_should_be_tracked_internal(int a1, uint64_t a2, int a3, BOOL *a4)
{
  v4 = *(a2 + 4) & 0xF000;
  if (v4 == 0x4000)
  {
    return fpfs_pkg_is_package_root(a1, 0, a4, a3);
  }

  *a4 = v4 == 0x8000;
  return 0;
}

uint64_t fpfs_fileattrs_fullpath(uint64_t a1)
{
  if (*(a1 + 264))
  {
    return a1 + 272;
  }

  else
  {
    return 0;
  }
}

void *fpfs_fileattrs_with_path(const char *a1)
{
  v2 = strlen(a1);
  v3 = malloc_type_malloc(v2 + 273, 0x10F0040D5676B8AuLL);
  v4 = v3;
  if (v3)
  {
    v3[33] = v2;
    memmove(v3 + 34, a1, v2);
  }

  return v4;
}

uint64_t _pagetoken_init(int a1, uint64_t a2)
{
  v10 = 0;
  v9 = xmmword_1AAC267F0;
  v5 = 0;
  v6 = 0;
  v8 = 0;
  v7 = 0;
  result = fgetattrlist(a1, &v9, &v5, 0x1CuLL, 0x20u);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v8;
  if ((v6 & 0x40000000) != 0)
  {
    v4 = -1;
  }

  *a2 = HIDWORD(v5);
  *(a2 + 8) = v7;
  *(a2 + 16) = HIDWORD(v6);
  *(a2 + 24) = v4;
  *(a2 + 28) = 0;
  return result;
}

uint64_t _pagetoken_validate(int a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  if ((_pagetoken_init(a1, &v11) & 0x80000000) != 0)
  {
LABEL_9:
    result = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  if (!v11)
  {
    _pagetoken_validate_cold_1();
  }

  v4 = *(&v11 + 1);
  if (*(&v11 + 1) != *(a2 + 8) || v12 != *(a2 + 16))
  {
    *__error() = 70;
    v6 = *__error();
    v7 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a2 + 8);
      v10 = *(a2 + 16);
      *buf = 67110144;
      v14 = a1;
      v15 = 2048;
      v16 = v4;
      v17 = 2048;
      v18 = v9;
      v19 = 1024;
      v20 = v12;
      v21 = 1024;
      v22 = v10;
      _os_log_error_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_ERROR, "ESTALE: directory changed during _pagetoken_validate [%d, %llu, %llu, %u, %u]", buf, 0x28u);
    }

    *__error() = v6;
    goto LABEL_9;
  }

  result = 0;
LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _validate_file_openbyid(int a1, char a2, uint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a3 + 4))
  {
    v13[0] = 0;
    v14 = xmmword_1AAC26808;
    v15 = 0;
    if ((fgetattrlist(a1, &v14, v13, 8uLL, 0x20u) & 0x80000000) == 0)
    {
      if (HIDWORD(v13[0]) != *(a3 + 4))
      {
        *__error() = 70;
        v5 = fpfs_current_or_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = *(a3 + 4);
          *buf = 136315906;
          v17 = "_validate_file_openbyid";
          v18 = 1024;
          v19 = a1;
          v20 = 1024;
          *v21 = v6;
          *&v21[4] = 1024;
          *&v21[6] = HIDWORD(v13[0]);
          v7 = "ESTALE: opened wrong doc_id in %s [%d, %u, %u]";
          v8 = v5;
          v9 = 30;
LABEL_13:
          _os_log_error_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
          goto LABEL_14;
        }

        goto LABEL_14;
      }

LABEL_10:
      result = 0;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  result = 0;
  if (*a3 && (a2 & 1) == 0)
  {
    memset(v13, 0, 12);
    v14 = xmmword_1AAC26820;
    v15 = 0;
    if ((fgetattrlist(a1, &v14, v13, 0xCuLL, 0) & 0x80000000) == 0)
    {
      if (*a3 != *(v13 + 4))
      {
        *__error() = 70;
        v5 = fpfs_current_or_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v11 = *a3;
          *buf = 136315906;
          v17 = "_validate_file_openbyid";
          v18 = 1024;
          v19 = a1;
          v20 = 2048;
          *v21 = v11;
          *&v21[8] = 2048;
          v22 = *(v13 + 4);
          v7 = "ESTALE: opened wrong file_id in %s [%d, %llu, %llu]";
          v8 = v5;
          v9 = 38;
          goto LABEL_13;
        }

LABEL_14:

        goto LABEL_15;
      }

      goto LABEL_10;
    }

LABEL_15:
    result = 0xFFFFFFFFLL;
  }

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DesktopServicesPrivLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DesktopServicesPrivLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AABB9600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

uint64_t _t_fpfs_pkg_extension_register(_BYTE *a1)
{
  if (a1 && *a1)
  {
    fpfs_user_package_extension_list_insert(a1);
  }

  return 0;
}

uint64_t _t_fpfs_pkg_extension_unregister(_BYTE *a1)
{
  if (a1 && *a1)
  {
    fpfs_user_package_extension_list_remove(a1);
  }

  return 0;
}

uint64_t fpfs_pathpkg_check(char *a1)
{
  v4 = 0;
  v1 = *a1;
  if (v1 == 47)
  {
    v4 = a1;
  }

  else if (asprintf(&v4, "/%s", a1) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (_cwd_fd_onceToken != -1)
  {
    fpfs_pathpkg_check_cold_1();
  }

  if (_cwd_fd_fd < 0)
  {
    fpfs_pathpkg_check_cold_2();
  }

  v2 = fcntl(_cwd_fd_fd, 52, v4);
  if (v1 != 47)
  {
    free(v4);
  }

  return v2;
}

uint64_t fpfs_pkg_dirstat(int a1, void *a2, _DWORD *a3)
{
  v7 = 0;
  if ((fpfs_pkg_is_demoted(a1, &v7) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 == 1)
  {
    *__error() = 45;
    return 0xFFFFFFFFLL;
  }

  return fpfs_get_dirstat(a1, a2, a3, 0);
}

uint64_t fpfs_get_dirstat(int a1, void *a2, _DWORD *a3, void *a4)
{
  v9 = 0u;
  v10 = 0u;
  v8 = 1;
  if (ffsctl(a1, 0xC0284A20uLL, &v8, 0) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    *a2 = v10;
  }

  if (a3)
  {
    *a3 = DWORD2(v10);
  }

  result = 0;
  if (a4)
  {
    *a4 = *(&v9 + 1);
  }

  return result;
}

uint64_t fpfs_pkg_demote(int a1)
{
  v7 = 0;
  if ((fpfs_pkg_is_demoted(a1, &v7) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7)
  {
    return 0;
  }

  v2 = 1;
  if (fsetxattr(a1, "com.apple.fileprovider.dir#N", "1", 1uLL, 0, 0) < 0)
  {
    v3 = *__error();
    v5 = v3 != 13 && v3 != 1;
    return (v5 << 31 >> 31);
  }

  return v2;
}

uint64_t fpfs_pkg_promote(int a1)
{
  if ((fpfs_pkg_remove_demotion_xattr(a1) & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  v7 = xmmword_1AAC26840;
  value = xmmword_1AAC26840;
  if ((fpfs_set_finder_info(a1, &value, &v7) & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  LODWORD(value) = 0;
  if (!fpfs_pkg_getflags(a1, &value) && (value & 1) != 0)
  {
    return 0;
  }

  v2 = 1;
  LODWORD(value) = 1;
  if (fsetxattr(a1, "com.apple.fileprovider.fpfs#P", &value, 4uLL, 0, 0) < 0)
  {
LABEL_6:
    v3 = *__error();
    v5 = v3 != 13 && v3 != 1;
    return (v5 << 31 >> 31);
  }

  return v2;
}

uint64_t fpfs_pkg_remove_demotion_xattr(int a1)
{
  if (fpfs_fremovexattr(a1, "com.apple.fileprovider.dir#N", 0) < 0 && *__error() != 93)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t fpfs_pkg_set_bundle_bit(int a1, int a2)
{
  v5 = xmmword_1AAC26840;
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v4[1] = 0;
  v4[0] = v2;
  return fpfs_set_finder_info(a1, &v5, v4);
}

uint64_t fpfs_pkg_is_demoted_at(uint64_t a1, const char *a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __fpfs_pkg_is_demoted_at_block_invoke;
  v4[3] = &__block_descriptor_40_e8_i12__0i8l;
  v4[4] = a3;
  return fpfs_openat(a1, a2, 0x100000u, 0, 0, v4);
}

uint64_t fpfs_pkg_is_promoted_at(uint64_t a1, const char *a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __fpfs_pkg_is_promoted_at_block_invoke;
  v4[3] = &__block_descriptor_40_e8_i12__0i8l;
  v4[4] = a3;
  return fpfs_openat(a1, a2, 0x100000u, 0, 0, v4);
}

uint64_t fpfs_pkg_remove_promotion_xattr(int a1)
{
  if (fpfs_fremovexattr(a1, "com.apple.fileprovider.fpfs#P", 0) < 0 && *__error() != 93)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL pkg_extension_is_forced_folder(const char *a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!strcmp(a1, "folder"))
  {
    return 1;
  }

  return strcmp(a1, "git") == 0;
}

char *fpfs_pkg_system_relative_lookup(char *a1, _BYTE *a2, _BYTE *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v6 = fpfs_pathpkg_check(a1);
  if (v6 < 0)
  {
    return 0;
  }

  v7 = v6;
  v8 = a1 - 1;
  do
  {
    v9 = *++v8;
  }

  while (v9 == 47);
  if (!v7)
  {
LABEL_14:
    if (a2)
    {
      *a2 = 1;
    }

    result = strchr(v8, 47);
    if (!result)
    {
      return result;
    }

    if (result[1])
    {
      if (a2)
      {
        *a2 = 0;
      }

      if (a3)
      {
        result = 0;
        *a3 = 1;
        return result;
      }
    }

    return 0;
  }

  v10 = v7 + 1;
  while (1)
  {
    v11 = strchr(v8, 47);
    if (!v11)
    {
      break;
    }

    v8 = v11 + 1;
    if (--v10 <= 1)
    {
      goto LABEL_14;
    }
  }

  *__error() = 22;
  return 0xFFFFFFFFLL;
}

char *fpfs_pkg_system_lookup(char *a1, const char *a2, _BYTE *a3, _BYTE *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v6 = fpfs_path_relative_to(a1, a2);
  if (!v6 || !*v6)
  {
    return 0;
  }

  return fpfs_pkg_system_relative_lookup(v6, a3, a4);
}

uint64_t fpfs_pkg_get_bundle_bit_at(uint64_t a1, const char *a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __fpfs_pkg_get_bundle_bit_at_block_invoke;
  v4[3] = &__block_descriptor_40_e8_i12__0i8l;
  v4[4] = a3;
  return fpfs_openat(a1, a2, 0x100000u, 0, 0, v4);
}

uint64_t ___cwd_fd_block_invoke()
{
  result = open(".", 1048836);
  _cwd_fd_fd = result;
  return result;
}

id FPProviderNotFoundError(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = FPLoc(@"NoValidProviderFound_identifier_%@", a2, a3, a4, a5, a6, a7, a8, a1);
  v10 = _FPProviderNotFoundErrorHelper(v9, 0, a2);

  return v10;
}

id FPProviderOlderVersionRunningError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v24[0] = *MEMORY[0x1E696A368];
    v8 = [a1 path];
    v25[0] = v8;
    v24[1] = *MEMORY[0x1E696A578];
    v16 = FPLoc(@"ProviderVersionOlderVersionRunning", v9, v10, v11, v12, v13, v14, v15, v21);
    v25[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

  else
  {
    v22 = *MEMORY[0x1E696A578];
    v8 = FPLoc(@"ProviderVersionOlderVersionRunning", a2, a3, a4, a5, a6, a7, a8, v21);
    v23 = v8;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  }

  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:-2003 userInfo:v17];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

id FPProviderNewerVersionFoundError(void *a1)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v16[0] = *MEMORY[0x1E696A368];
  v2 = [a1 path];
  v17[0] = v2;
  v16[1] = *MEMORY[0x1E696A578];
  v10 = FPLoc(@"ProviderVersionNewerVersionFound", v3, v4, v5, v6, v7, v8, v9, v15);
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v12 = [v1 errorWithDomain:@"NSFileProviderErrorDomain" code:-2004 userInfo:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

id FPProviderXPCInvalidError(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *MEMORY[0x1E696A250];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = a1;
  v3 = MEMORY[0x1E695DF20];
  v4 = a1;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v1 errorWithDomain:v2 code:4099 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id FPProviderNotFoundErrorForURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696ABC0];
  v14 = *MEMORY[0x1E696A578];
  v9 = FPLoc(@"NoValidProviderFound_url_%@", a2, a3, a4, a5, a6, a7, a8, a1);
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [v8 errorWithDomain:@"NSFileProviderInternalErrorDomain" code:0 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id FPProviderNotFoundErrorForURLWithReason(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = underlyingErrorForProviderNotFoundReason(a2);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = FPLoc(@"NoValidProviderFound_url_%@", v6, v7, v8, v9, v10, v11, v12, v3);

  [v5 setValue:v13 forKey:*MEMORY[0x1E696A578]];
  if (v4)
  {
    [v5 setValue:v4 forKey:*MEMORY[0x1E696AA08]];
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderInternalErrorDomain" code:0 userInfo:v5];

  return v14;
}

id FPItemNotFoundErrorAtURL(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v7 = *MEMORY[0x1E696A998];
    v8[0] = v1;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id FPExpensiveRequestWithContinuationTokenError(void *a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v11[0] = @"NSFileProviderErrorExpensiveRequestContinuationTokenKey";
  v11[1] = @"NSFileProviderErrorExpensiveRequestIsRecursiveKey";
  v12[0] = a1;
  v4 = MEMORY[0x1E696AD98];
  v5 = a1;
  v6 = [v4 numberWithBool:a2];
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v8 = [v3 errorWithDomain:@"NSFileProviderErrorDomain" code:-5011 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id FPUnrevivableItemError(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v8 = @"NSFileProviderErrorRecoveryLocationItemIdentifierKey";
  v9[0] = a1;
  v2 = MEMORY[0x1E695DF20];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v1 errorWithDomain:@"NSFileProviderErrorDomain" code:-5012 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id FPInvalidParameterError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  if (a2)
  {
    v20 = *MEMORY[0x1E696A578];
    v10 = FPLoc(@"InvalidParameter_Parameter_Value_%@_%@", a2, a3, a4, a5, a6, a7, a8, a2);
    v21[0] = v10;
    v11 = MEMORY[0x1E695DF20];
    v12 = v21;
    v13 = &v20;
  }

  else
  {
    v18 = *MEMORY[0x1E696A578];
    v10 = FPLoc(@"InvalidParameter_Parameter_%@", 0, a3, a4, a5, a6, a7, a8, a1);
    v19 = v10;
    v11 = MEMORY[0x1E695DF20];
    v12 = &v19;
    v13 = &v18;
  }

  v14 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
  v15 = [v8 errorWithDomain:@"NSFileProviderInternalErrorDomain" code:3 userInfo:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id FPInvalidParameterErrorWithExpectation(void *a1, void *a2, void *a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 stringWithFormat:@"Invalid value for %@: expected %@, actual %@", v8, v6, v7];
  v10 = MEMORY[0x1E696ABC0];
  v16[0] = @"parameter";
  v16[1] = @"actual";
  v17[0] = v8;
  v17[1] = v7;
  v11 = *MEMORY[0x1E696A278];
  v16[2] = @"expected";
  v16[3] = v11;
  v17[2] = v6;
  v17[3] = v9;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v13 = [v10 errorWithDomain:@"NSFileProviderInternalErrorDomain" code:3 userInfo:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id FPPluginOperationFailedError(void *a1)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x1E696A250];
  if ([v2 isEqualToString:*MEMORY[0x1E696A250]])
  {
  }

  else
  {
    v4 = [v1 domain];
    v5 = [v4 isEqualToString:*MEMORY[0x1E696A978]];

    if (!v5)
    {
      v6 = [v1 domain];
      v7 = [v6 isEqualToString:@"NSFileProviderErrorDomain"];

      if (!v7)
      {
        v18 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A578];
        if (v1)
        {
          v29[0] = *MEMORY[0x1E696A578];
          v20 = FPLoc(@"PluginOperationFailed", v8, v9, v10, v11, v12, v13, v14, v26);
          v29[1] = *MEMORY[0x1E696AA08];
          v30[0] = v20;
          v30[1] = v1;
          v21 = MEMORY[0x1E695DF20];
          v22 = v30;
          v23 = v29;
          v24 = 2;
        }

        else
        {
          v27 = *MEMORY[0x1E696A578];
          v20 = FPLoc(@"PluginOperationFailed", v8, v9, v10, v11, v12, v13, v14, v26);
          v28 = v20;
          v21 = MEMORY[0x1E695DF20];
          v22 = &v28;
          v23 = &v27;
          v24 = 1;
        }

        v25 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:v24];
        v15 = [v18 errorWithDomain:v3 code:4101 userInfo:v25];

        goto LABEL_6;
      }
    }
  }

  v15 = v1;
LABEL_6:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id FPInvalidBookmarkableStringError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696ABC0];
  v15 = *MEMORY[0x1E696A578];
  v9 = FPLoc(@"InvalidBookmark", a2, a3, a4, a5, a6, a7, a8, v14);
  v16[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v11 = [v8 errorWithDomain:@"NSFileProviderInternalErrorDomain" code:5 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id FPInvalidURLError(void *a1)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v18[0] = *MEMORY[0x1E696A578];
  v2 = a1;
  v10 = FPLoc(@"InvalidURL", v3, v4, v5, v6, v7, v8, v9, v17);
  v19[0] = v10;
  v18[1] = *MEMORY[0x1E696A368];
  v11 = [v2 path];

  v12 = @"(null)";
  if (v11)
  {
    v12 = v11;
  }

  v19[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v14 = [v1 errorWithDomain:@"NSFileProviderInternalErrorDomain" code:6 userInfo:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id FPProxyNotFoundError(uint64_t a1, void *a2)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A578];
  if (a2)
  {
    v33[0] = *MEMORY[0x1E696A578];
    v6 = a2;
    v14 = FPLoc(@"ProxyNotFound_%@", v7, v8, v9, v10, v11, v12, v13, a1);
    v33[1] = *MEMORY[0x1E696AA08];
    v34[0] = v14;
    v34[1] = v6;
    v15 = MEMORY[0x1E695DF20];
    v16 = v34;
    v17 = v33;
    v18 = 2;
  }

  else
  {
    v31 = *MEMORY[0x1E696A578];
    v19 = 0;
    v14 = FPLoc(@"ProxyNotFound_%@", v20, v21, v22, v23, v24, v25, v26, a1);
    v32 = v14;
    v15 = MEMORY[0x1E695DF20];
    v16 = &v32;
    v17 = &v31;
    v18 = 1;
  }

  v27 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
  v28 = [v4 errorWithDomain:@"NSFileProviderInternalErrorDomain" code:7 userInfo:v27];

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

id FPNotImplementedError(uint64_t a1, SEL aSelector)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A578];
  if (a1)
  {
    v30 = *MEMORY[0x1E696A578];
    v5 = NSStringFromSelector(aSelector);
    v13 = FPLoc(@"NotImplementedWithClass_%@_%@", v6, v7, v8, v9, v10, v11, v12, a1);
    v31[0] = v13;
    v14 = MEMORY[0x1E695DF20];
    v15 = v31;
    v16 = &v30;
  }

  else
  {
    v28 = *MEMORY[0x1E696A578];
    v5 = NSStringFromSelector(aSelector);
    v13 = FPLoc(@"NotImplemented_%@", v17, v18, v19, v20, v21, v22, v23, v5);
    v29 = v13;
    v14 = MEMORY[0x1E695DF20];
    v15 = &v29;
    v16 = &v28;
  }

  v24 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
  v25 = [v2 errorWithDomain:@"NSFileProviderInternalErrorDomain" code:9 userInfo:v24];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

id FPInvalidProtocolError(__CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696ABC0];
  v9 = &stru_1F1F94B20;
  if (a1)
  {
    v9 = a1;
  }

  v15 = *MEMORY[0x1E696A578];
  v10 = FPLoc(@"InvalidProtocol %@", a2, a3, a4, a5, a6, a7, a8, v9);
  v16[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v8 errorWithDomain:@"NSFileProviderInternalErrorDomain" code:9 userInfo:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

id FPClientLacksEntitlement(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v10 = FPLoc(@"ClientLacksEntitlement", v3, v4, v5, v6, v7, v8, v9, v13);
  [v2 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A578]];

  if (v1)
  {
    [v2 setObject:v1 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderInternalErrorDomain" code:8 userInfo:v2];

  return v11;
}

id FPPartialErrorsByItemIdentifiers(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v8 = @"NSFileProviderPartialErrorsByItemIdentifierKey";
  v9[0] = a1;
  v2 = MEMORY[0x1E695DF20];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v1 errorWithDomain:@"NSFileProviderInternalErrorDomain" code:10 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id FPPartialErrorsByURL(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v8 = @"NSFileProviderPartialErrorsByURLKey";
  v9[0] = a1;
  v2 = MEMORY[0x1E695DF20];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v1 errorWithDomain:@"NSFileProviderInternalErrorDomain" code:10 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id FPDomainUnavailableErrorWithUnderlyingError(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v7 = *MEMORY[0x1E696AA08];
    v8[0] = v1;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderInternalErrorDomain" code:12 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id FPFileSystemNotSupportedError()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v1 = *MEMORY[0x1E696A250];
  v7 = *MEMORY[0x1E696AA08];
  v2 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:19];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v0 errorWithDomain:v1 code:3328 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id FPNonEvictableChildrenError(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A750];
  v9[0] = a1;
  v2 = MEMORY[0x1E695DF20];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v1 errorWithDomain:@"NSFileProviderErrorDomain" code:-2006 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id FPEvictionWithUnsyncedEditsError(void *a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 lastPathComponent];
  v10 = FPLoc(@"DirtyNotEvictable_%@", v3, v4, v5, v6, v7, v8, v9, v2);

  v11 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A578];
  v17[0] = *MEMORY[0x1E696A998];
  v17[1] = v12;
  v18[0] = v1;
  v18[1] = v10;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [v11 errorWithDomain:@"NSFileProviderErrorDomain" code:-2007 userInfo:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id FPEvictionOnBusyItemError(void *a1)
{
  v28[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v9 = FPLoc(@"BusyNotEvictableTitle", v2, v3, v4, v5, v6, v7, v8, v26);
  v10 = [v1 lastPathComponent];
  v18 = FPLoc(@"BusyNotEvictableSubtitle_%@", v11, v12, v13, v14, v15, v16, v17, v10);

  v19 = MEMORY[0x1E696ABC0];
  v20 = *MEMORY[0x1E696A798];
  v21 = *MEMORY[0x1E696A578];
  v27[0] = *MEMORY[0x1E696A998];
  v27[1] = v21;
  v28[0] = v1;
  v28[1] = v9;
  v27[2] = *MEMORY[0x1E696A580];
  v28[2] = v18;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v23 = [v19 errorWithDomain:v20 code:16 userInfo:v22];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

id FPEvictionOnItemWithHardlinkError(void *a1)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 lastPathComponent];
  v10 = FPLoc(@"MLinkNotEvictable_%@", v3, v4, v5, v6, v7, v8, v9, v2);

  v11 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A798];
  v13 = *MEMORY[0x1E696A578];
  v18[0] = *MEMORY[0x1E696A998];
  v18[1] = v13;
  v19[0] = v1;
  v19[1] = v10;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v15 = [v11 errorWithDomain:v12 code:31 userInfo:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id FPMissingAllowsEvictingCapabilitiesError(void *a1)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 hasDirectoryPath];
  v10 = [v1 lastPathComponent];
  if (v2)
  {
    v11 = @"GenericFolderNotEvictable_%@";
  }

  else
  {
    v11 = @"GenericNotEvictable_%@";
  }

  v12 = FPLoc(v11, v3, v4, v5, v6, v7, v8, v9, v10);

  v13 = MEMORY[0x1E696ABC0];
  v14 = *MEMORY[0x1E696A578];
  v19[0] = *MEMORY[0x1E696A998];
  v19[1] = v14;
  v20[0] = v1;
  v20[1] = v12;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v16 = [v13 errorWithDomain:@"NSFileProviderErrorDomain" code:-2008 userInfo:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

id FPFileIsAlreadyPausedError(void *a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *MEMORY[0x1E696A250];
  v3 = *MEMORY[0x1E696A278];
  v10[0] = *MEMORY[0x1E696A998];
  v10[1] = v3;
  v11[0] = a1;
  v11[1] = @"Sync is already paused.";
  v4 = MEMORY[0x1E695DF20];
  v5 = a1;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v1 errorWithDomain:v2 code:3328 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id FPFileNotPausedError(void *a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *MEMORY[0x1E696A250];
  v3 = *MEMORY[0x1E696A278];
  v10[0] = *MEMORY[0x1E696A998];
  v10[1] = v3;
  v11[0] = a1;
  v11[1] = @"Sync is not paused.";
  v4 = MEMORY[0x1E695DF20];
  v5 = a1;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v1 errorWithDomain:v2 code:3328 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id FPFilePausedWithNoFilePresenter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696ABC0];
  v15 = *MEMORY[0x1E696A578];
  v9 = FPLoc(@"FilePausedWithNoFilePresenter", a2, a3, a4, a5, a6, a7, a8, v14);
  v16[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v11 = [v8 errorWithDomain:@"NSFileProviderInternalErrorDomain" code:27 userInfo:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

__CFString *FPConnectionStateToPrettyString(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = @"(⏹  connection state unknown)";
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        if (v3)
        {
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (⏹  temporarily disconnected: %@)", v3];
        }

        else
        {
          v9 = @" (⏹  temporarily disconnected)";
        }

        goto LABEL_24;
      }

      v11 = a1 == 4;
      v10 = @"(⏹  permanently disconnected)";
    }

    else
    {
      v10 = &stru_1F1F94B20;
      if (a1 == 2)
      {
        v5 = @"(⏹  error)";
      }

      v11 = a1 == 1;
    }

    if (v11)
    {
      v9 = v10;
    }

    else
    {
      v9 = v5;
    }

    goto LABEL_24;
  }

  v6 = @"(⏹  incompatible DB)";
  v7 = @"(⏹  forbidden by MDM)";
  v8 = @"(⏹  external domain rejected by provider)";
  if (a1 != 9)
  {
    v8 = @"(⏹  connection state unknown)";
  }

  if (a1 != 8)
  {
    v7 = v8;
  }

  if (a1 != 7)
  {
    v6 = v7;
  }

  if (a1 == 6)
  {
    v5 = @"(⏹  low disk space)";
  }

  if (a1 == 5)
  {
    v5 = @"(⏹  extension not found)";
  }

  if (a1 <= 6)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

LABEL_24:

  return v9;
}

id FPTelemetryParsedError(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v2 domain];
  v4 = [v2 code];

  v5 = [v1 stringWithFormat:@"%@.%ld", v3, v4];

  return v5;
}

id FPFileSizeAttributes()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"size";
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = getMDItemFileSizeSymbolLoc_ptr_0;
  v10 = getMDItemFileSizeSymbolLoc_ptr_0;
  if (!getMDItemFileSizeSymbolLoc_ptr_0)
  {
    v1 = CoreSpotlightLibrary_3();
    v8[3] = dlsym(v1, "MDItemFileSize");
    getMDItemFileSizeSymbolLoc_ptr_0 = v8[3];
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v0)
  {
    FPFileSizeAttributes_cold_1();
  }

  v12[0] = *v0;
  v2 = MEMORY[0x1E695DF20];
  v3 = v12[0];
  v4 = [v2 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1AABBE388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FPScopedToIdentifierFragment(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [a2 fp_toDomainIdentifier];
  v8 = [FPItemID csIdentifierFromFPIdentifier:v5 domainIdentifier:v7];

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v6, v8];

  return v9;
}

id FPSpotlightQueryStringForFilename(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x1E696AD60];
  v5 = a2;
  v6 = [v4 stringWithString:@"cdtw"];
  LODWORD(v4) = [v5 fp_isCJKLanguageIdentifier];

  if (v4)
  {
    [v6 appendString:@"s"];
  }

  v7 = [v3 _fp_escapedStringForSearchQuery];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(kMDItemDisplayName == %@*%@)", v7, v6];

  return v8;
}

__CFString *FPSpotlightQueryStringForSearchQuery(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 spotlightQueryString];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    goto LABEL_26;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  if ([v3 trashedItemsMembership] == 2)
  {
    v8 = @"==";
LABEL_7:
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(kMDItemIsTrashed %@ 1", v8];
    [v7 addObject:v9];

    goto LABEL_8;
  }

  if ([v3 trashedItemsMembership] == 1)
  {
    v8 = @"!=";
    goto LABEL_7;
  }

LABEL_8:
  v10 = [v3 filename];

  if (v10)
  {
    v11 = [v3 filename];
    v12 = [v3 keyboardLanguage];
    v13 = FPSpotlightQueryStringForFilename(v11, v12);

    [v7 addObject:v13];
  }

  v14 = [v3 allowedContentTypes];

  if (v14)
  {
    v15 = [v3 allowedContentTypes];
    v16 = [v15 allObjects];
    v17 = [v16 _fp_map:&__block_literal_global_137];
    v18 = [v17 _fp_componentsJoinedByOr];

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v18];
    [v7 addObject:v19];
  }

  if (a2)
  {
    v20 = [v3 providerDomainID];

    if (v20)
    {
      v21 = [v3 providerDomainID];
      v22 = [v21 fp_toProviderID];

      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(kMDItemFileProviderID == %@", v22];
      [v7 addObject:v23];
      if (([v22 isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"] & 1) == 0)
      {
        v24 = MEMORY[0x1E696AEC0];
        v25 = [v3 providerDomainID];
        v26 = [v25 fp_toDomainIdentifier];
        v27 = [v24 stringWithFormat:@"(FPDomainIdentifier == %@", v26];

        [v7 addObject:v27];
      }
    }
  }

  v28 = [v3 scopeFragment];

  if (v28)
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = [v3 scopeFragment];
    v31 = [v29 stringWithFormat:@"(%@)", v30];

    [v7 addObject:v31];
  }

  if ([v3 shouldPerformSemanticSearch] && !objc_msgSend(v7, "count"))
  {
    [v7 addObject:@"(true)"];
  }

  if ([v7 count])
  {
    v6 = [v7 componentsJoinedByString:@" && "];
  }

  else
  {
    v6 = &stru_1F1F94B20;
  }

LABEL_26:

  return v6;
}

id __FPSpotlightQueryStringForSearchQuery_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [&unk_1F1FC9C20 containsObject:v2];
  v4 = @"kMDItemContentTypeTree";
  if (v3)
  {
    v4 = @"kMDItemContentType";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ == %@", v4, v2];

  return v5;
}

id FPCacheForAnyDocumentRecentlyUsed()
{
  if (FPCacheForAnyDocumentRecentlyUsed_onceToken != -1)
  {
    FPCacheForAnyDocumentRecentlyUsed_cold_1();
  }

  v1 = FPCacheForAnyDocumentRecentlyUsed_cache;

  return v1;
}

uint64_t __FPCacheForAnyDocumentRecentlyUsed_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = FPCacheForAnyDocumentRecentlyUsed_cache;
  FPCacheForAnyDocumentRecentlyUsed_cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t FPIsAnyDocumentRecentlyUsed(void *a1, void *a2, void *a3)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (![v5 count] && !objc_msgSend(v5, "count"))
  {
    FPIsAnyDocumentRecentlyUsed_cold_1();
  }

  v8 = +[FPItemManager defaultManager];
  v9 = [v8 newRecentsCollection];

  [v9 setAllowedFileTypes:v5];
  [v9 setExcludedFileTypes:v6];
  [v9 setAllowedProviderIdentifiers:v7];
  v10 = [v9 underlyingQueryStringForMountPoint:@"FPQueryCollectionDefaultMountPointIdentifier"];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v11 = getCSSearchQueryContextClass_softClass_0;
  v46 = getCSSearchQueryContextClass_softClass_0;
  if (!getCSSearchQueryContextClass_softClass_0)
  {
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __getCSSearchQueryContextClass_block_invoke_0;
    v41 = &unk_1E793A2E8;
    v42 = &v43;
    __getCSSearchQueryContextClass_block_invoke_0(&v38);
    v11 = v44[3];
  }

  v12 = v11;
  _Block_object_dispose(&v43, 8);
  v13 = objc_alloc_init(v11);
  v53[0] = *MEMORY[0x1E696A388];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
  [v13 setProtectionClasses:v14];

  [v13 setMaxCount:1];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v15 = getCSSearchQueryClass_softClass_0;
  v46 = getCSSearchQueryClass_softClass_0;
  if (!getCSSearchQueryClass_softClass_0)
  {
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __getCSSearchQueryClass_block_invoke_0;
    v41 = &unk_1E793A2E8;
    v42 = &v43;
    __getCSSearchQueryClass_block_invoke_0(&v38);
    v15 = v44[3];
  }

  v16 = v15;
  _Block_object_dispose(&v43, 8);
  v17 = [[v15 alloc] initWithQueryString:v10 context:v13];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  LOBYTE(v41) = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __FPIsAnyDocumentRecentlyUsed_block_invoke;
  v37[3] = &unk_1E793CB00;
  v37[4] = &v43;
  [v17 setFoundItemsHandler:v37];
  v18 = dispatch_semaphore_create(0);
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __FPIsAnyDocumentRecentlyUsed_block_invoke_2;
  v32 = &unk_1E793DDF0;
  v35 = &v38;
  v36 = &v43;
  v19 = v10;
  v33 = v19;
  v20 = v18;
  v34 = v20;
  [v17 setCompletionHandler:&v29];
  [v17 start];
  v21 = dispatch_time(0, 200000000);
  if (dispatch_semaphore_wait(v20, v21))
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v48 = v5;
      v49 = 2112;
      v50 = v6;
      v51 = 2112;
      v52 = v7;
      _os_log_error_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_ERROR, "[ERROR] Time-out occurred while testing if there are any recent documents with allowed file types %@ and excluded file types %@ and allowed FileProvider identifiers %@.", buf, 0x20u);
    }

    v23 = FPCacheForAnyDocumentRecentlyUsed();
    v24 = [v23 objectForKey:v19];
    v25 = [v24 BOOLValue];
    *(v39 + 24) = v25;
  }

  v26 = *(v39 + 24);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v38, 8);

  v27 = *MEMORY[0x1E69E9840];
  return v26 & 1;
}

uint64_t __FPIsAnyDocumentRecentlyUsed_block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

intptr_t __FPIsAnyDocumentRecentlyUsed_block_invoke_2(void *a1)
{
  *(*(a1[6] + 8) + 24) = *(*(a1[7] + 8) + 24) != 0;
  v2 = FPCacheForAnyDocumentRecentlyUsed();
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1[6] + 8) + 24)];
  [v2 setObject:v3 forKey:a1[4]];

  v4 = a1[5];

  return dispatch_semaphore_signal(v4);
}

void *__getMDItemExpirationDateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_3();
  result = dlsym(v2, "MDItemExpirationDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemExpirationDateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_6(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_6 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMDQueryResultRelevanceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_3();
  result = dlsym(v2, "MDQueryResultRelevance");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDQueryResultRelevanceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemLastUsedDateSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_3();
  result = dlsym(v2, "MDItemLastUsedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemLastUsedDateSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMDItemFileSizeSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreSpotlightLibrary_3();
  result = dlsym(v2, "MDItemFileSize");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDItemFileSizeSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AABC0840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t FPGetQoSValueForClass(int a1, int a2)
{
  v2 = 3;
  v3 = 2;
  if (a1 != 25)
  {
    v3 = a1 == 33;
  }

  if (a1 != 21)
  {
    v2 = v3;
  }

  v4 = 6;
  v5 = 5;
  v6 = 4;
  if (a1 != 17)
  {
    v6 = 0;
  }

  if (a1 != 9)
  {
    v5 = v6;
  }

  if (a1)
  {
    v4 = v5;
  }

  if (a1 <= 20)
  {
    v2 = v4;
  }

  if (a2)
  {
    return 8 * v2;
  }

  else
  {
    return v2;
  }
}

void sub_1AABC1AD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 224));
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_1AABC1C9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

void emitFinalSignPost(os_signpost_id_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (v5 && ([v5 timeIntervalSinceNow], v7 < -1.0))
  {
    QoSValueForThread = getQoSValueForThread(1);
    v9 = telemetry_default_log();
    v10 = v9;
    if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v15 = 134349056;
      v16 = QoSValueForThread | a3;
      v11 = "xpcInfo=%{public,signpost.telemetry:number1,name=xpcInfo}ld enableTelemetry=YES ";
LABEL_9:
      _os_signpost_emit_with_name_impl(&dword_1AAAE1000, v10, OS_SIGNPOST_INTERVAL_END, a1, "ClientXPC", v11, &v15, 0xCu);
    }
  }

  else
  {
    v12 = getQoSValueForThread(1);
    v13 = telemetry_default_log();
    v10 = v13;
    if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v15 = 134349056;
      v16 = v12 | a3;
      v11 = "xpcInfo=%{public,signpost.telemetry:number1,name=xpcInfo}ld";
      goto LABEL_9;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t getQoSValueForThread(int a1)
{
  *__relative_priority = 0;
  v2 = pthread_self();
  if (pthread_get_qos_class_np(v2, &__relative_priority[1], __relative_priority))
  {
    return 0;
  }

  else
  {
    return FPGetQoSValueForClass(__relative_priority[1], a1);
  }
}

void sub_1AABC2840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AABC3158(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

void sub_1AABC3C6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

void sub_1AABC43A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

id FPAbbreviatedArrayDescription(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  v3 = MEMORY[0x1E696AEC0];
  if (v2 > 2)
  {
    v4 = [v1 objectAtIndex:0];
    v6 = [v1 objectAtIndex:1];
    v5 = [v3 stringWithFormat:@"(%@, %@, %lu others)", v4, v6, objc_msgSend(v1, "count") - 1];
  }

  else
  {
    v4 = [v1 componentsJoinedByString:{@", "}];
    v5 = [v3 stringWithFormat:@"(%@)", v4];
  }

  return v5;
}

void sub_1AABC8644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpfs_enable_fault_handling(int a1)
{
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  v3 = v1;
  return sysctlbyname("kern.vfsnspace", 0, 0, &v3, 4uLL);
}

uint64_t fpfs_enable_vnode_rapid_aging(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *v5 = 0x4400000001;
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  v4 = v1;
  result = sysctl(v5, 2u, 0, 0, &v4, 4uLL);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void fpfs_allow_operation(int a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpfs_allow_operation_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v2 = a1;
  if (fpfs_allow_operation_onceToken != -1)
  {
    dispatch_once(&fpfs_allow_operation_onceToken, block);
  }
}

uint64_t fpfs_test_trigger_purge(const char *a1)
{
  v2[0] = xmmword_1AAC26890;
  v2[1] = unk_1AAC268A0;
  return fsctl(a1, 0xC0204A45uLL, v2, 0);
}

uint64_t fpfs_unload_hierarchy(const char *a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __fpfs_unload_hierarchy_block_invoke;
  v2[3] = &__block_descriptor_40_e5_i8__0l;
  v2[4] = a1;
  return fpfs_chdir(a1, v2);
}

uint64_t __fpfs_unload_hierarchy_block_invoke(uint64_t a1)
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = *(a1 + 32);
  v3[1] = 0;
  result = _recycle_recursive(v3);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _recycle_recursive(char *const *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = fts_open(a1, 2132, 0);
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    do
    {
      v4 = fts_read(v2);
      if (!v4)
      {
        break;
      }

      if ((v3 & 1) == 0)
      {
        v5 = fp_current_or_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = *(v4 + 72);
          *buf = 134217984;
          v14 = v6;
          _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_INFO, "[INFO] Recursively calling F_RECYCLE below ino #%llu", buf, 0xCu);
        }
      }

      v7 = *(v4 + 88);
      v8 = v7 > 0xC;
      v9 = (1 << v7) & 0x1140;
      v10 = v8 || v9 == 0;
      v4 = v10 ? 0 : fpfs_openat(4294967294, *(v4 + 48), 0, 0, 0, &__block_literal_global_9_0);
      v3 = 1;
    }

    while (!v4);
    fts_close(v2);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __fpfs_funload_hierarchy_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = xmmword_1E793E2A0;
  result = _recycle_recursive(&v2);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_funload_file(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(v5, 0x400uLL);
  if ((fpfs_fgetpath(a1, v5) & 0x80000000) != 0)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v4[0] = v5;
    v4[1] = 0;
    result = _recycle_recursive(v4);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_get_materialization_alignment()
{
  if (fpfs_get_materialization_alignment_once != -1)
  {
    fpfs_get_materialization_alignment_cold_1();
  }

  return fpfs_get_materialization_alignment_alignment;
}

void __fpfs_get_materialization_alignment_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  bzero(&v4, 0x878uLL);
  if (statfs(".", &v4) < 0)
  {
    fpfs_get_materialization_alignment_alignment = 0x10000;
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __fpfs_get_materialization_alignment_block_invoke_cold_2();
    }

    goto LABEL_10;
  }

  v0 = sysconf(29);
  if ((v0 & 0x8000000000000000) != 0)
  {
    fpfs_get_materialization_alignment_alignment = 0x10000;
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __fpfs_get_materialization_alignment_block_invoke_cold_1();
    }

LABEL_10:

    goto LABEL_11;
  }

  f_bsize = v4.f_bsize;
  if (v0 > v4.f_bsize)
  {
    f_bsize = v0;
  }

  fpfs_get_materialization_alignment_alignment = f_bsize;
LABEL_11:
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t fpfs_is_vfs_ignore_permissions_iopolicy_set()
{
  result = fpfs_supports_vfs_ignore_permissions_iopolicy();
  if (result)
  {
    setiopolicy_np(7, 0, 0);
    return getiopolicy_np(7, 0) == 1;
  }

  return result;
}

uint64_t fpfs_unset_vfs_ignore_permissions_iopolicy()
{
  result = fpfs_supports_vfs_ignore_permissions_iopolicy();
  if (result)
  {

    return setiopolicy_np(7, 0, 0);
  }

  return result;
}

uint64_t fpfs_speculative_download_hierarchy_unset(const char *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  DWORD1(v3[0]) = 3;
  result = fsctl(a1, 0xC1104A71uLL, v3, 0);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_speculative_download_hierarchy_set(const char *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v4 = 0u;
  v3[0] = 0x100000001;
  v3[1] = 260;
  result = fsctl(a1, 0xC1104A71uLL, v3, 0);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AABCFB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak((v17 - 72));
  objc_sync_exit(v14);
  _Unwind_Resume(a1);
}

void sub_1AABD1C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_sync_exit(v23);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_1AABD2C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AABD3314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1AABD3F64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AABD4984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AABD6DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AABD76D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AABD7B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

uint64_t __createCaches_block_invoke()
{
  v0 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v1 = domainServicerByDomain;
  domainServicerByDomain = v0;

  v2 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  v3 = rootURLByDomain;
  rootURLByDomain = v2;

  v4 = objc_opt_new();
  v5 = temporaryURLByDomain;
  temporaryURLByDomain = v4;

  v6 = objc_opt_new();
  v7 = stateURLByDomain;
  stateURLByDomain = v6;

  v8 = objc_opt_new();
  v9 = cachedDirectoriesWithSecurityScope;
  cachedDirectoriesWithSecurityScope = v8;

  return MEMORY[0x1EEE66BB8](v8, v9);
}

id FPXSearchEnumeratorObserverXPCInterface()
{
  if (FPXSearchEnumeratorObserverXPCInterface_once != -1)
  {
    FPXSearchEnumeratorObserverXPCInterface_cold_1();
  }

  v1 = FPXSearchEnumeratorObserverXPCInterface_interface;

  return v1;
}

void __FPXSearchEnumeratorObserverXPCInterface_block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FD78F8];
  v1 = FPXSearchEnumeratorObserverXPCInterface_interface;
  FPXSearchEnumeratorObserverXPCInterface_interface = v0;

  v2 = FPXSearchEnumeratorObserverXPCInterface_interface;
  v3 = MEMORY[0x1E695DFD8];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_didEnumerateSearchResults_ argumentIndex:0 ofReply:0];

  v6 = *MEMORY[0x1E69E9840];
}

id FPXSearchEnumeratorXPCInterface()
{
  if (FPXSearchEnumeratorXPCInterface_once != -1)
  {
    FPXSearchEnumeratorXPCInterface_cold_1();
  }

  v1 = FPXSearchEnumeratorXPCInterface_interface;

  return v1;
}

void __FPXSearchEnumeratorXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FD9208];
  v1 = FPXSearchEnumeratorXPCInterface_interface;
  FPXSearchEnumeratorXPCInterface_interface = v0;

  v2 = FPXSearchEnumeratorXPCInterface_interface;
  v3 = FPXSearchEnumeratorObserverXPCInterface();
  [v2 setInterface:v3 forSelector:sel_enumerateSearchResultsForObserver_startingAtPage_ argumentIndex:0 ofReply:0];
}

void __FPXVendorXPCInterface_block_invoke()
{
  v40[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FCC598];
  v1 = FPXVendorXPCInterface_interface;
  FPXVendorXPCInterface_interface = v0;

  v2 = MEMORY[0x1E696B0D0];
  v3 = FPXVendorXPCInterface_interface;
  v4 = [v2 interfaceWithProtocol:&unk_1F1FE08A0];
  [v3 setInterface:v4 forSelector:sel_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler_ argumentIndex:1 ofReply:0];

  v5 = FPXEnumeratorXPCInterface();
  [v3 setInterface:v5 forSelector:sel_fetchAndStartEnumeratingWithSettings_observer_request_completionHandler_ argumentIndex:0 ofReply:1];

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FE08A0];
  [v3 setInterface:v6 forSelector:sel_listRemoteVersionsWithSettings_observer_request_completionHandler_ argumentIndex:1 ofReply:0];

  v7 = FPXEnumeratorXPCInterface();
  [v3 setInterface:v7 forSelector:sel_listRemoteVersionsWithSettings_observer_request_completionHandler_ argumentIndex:0 ofReply:1];

  v8 = FPXSearchEnumeratorXPCInterface();
  [v3 setInterface:v8 forSelector:? argumentIndex:? ofReply:?];

  FPXSetOperationServiceOnXPCInterface(FPXVendorXPCInterface_interface);
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v9 setWithObjects:{v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v19 = FPXVendorXPCInterface_interface;
  v20 = [v17 setByAddingObjectsFromArray:v18];
  [v19 setClasses:v20 forSelector:sel_valuesForAttributes_forItemID_completionHandler_ argumentIndex:0 ofReply:1];

  v21 = FPXVendorXPCInterface_interface;
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [v21 setClasses:v24 forSelector:sel_bulkEvictItemsWithItemIDs_completionHandler_ argumentIndex:0 ofReply:0];

  v25 = FPXVendorXPCInterface_interface;
  v26 = MEMORY[0x1E695DFD8];
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = [v26 setWithObjects:{v27, v28, v29, objc_opt_class(), 0}];
  [v25 setClasses:v30 forSelector:sel_beginRequestWithDomain_alternateContentsDictionary_domainServicer_providerDomain_domainVersion_completionHandler_ argumentIndex:1 ofReply:0];

  v31 = FPXVendorXPCInterface_interface;
  v32 = FPDDomainServicingXPCInterface();
  [v31 setInterface:v32 forSelector:sel_beginRequestWithDomain_alternateContentsDictionary_domainServicer_providerDomain_domainVersion_completionHandler_ argumentIndex:2 ofReply:0];

  v33 = FPXVendorXPCInterface_interface;
  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  [v33 setClasses:v36 forSelector:sel_fetchServicesForItemID_allowRestrictedSources_completionHandler_ argumentIndex:1 ofReply:1];

  v37 = FPXVendorXPCInterface_interface;
  v38 = FPXSearchEnumeratorXPCInterface();
  [v37 setInterface:v38 forSelector:sel_enumerateSearchResultForRequest_completionHandler_ argumentIndex:0 ofReply:1];

  v39 = *MEMORY[0x1E69E9840];
}

id FPSimulatorSupportInterface()
{
  if (FPSimulatorSupportInterface_once != -1)
  {
    FPSimulatorSupportInterface_cold_1();
  }

  v1 = FPSimulatorSupportInterface_interface;

  return v1;
}

void __FPSimulatorSupportInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FF3E88];
  v1 = FPSimulatorSupportInterface_interface;
  FPSimulatorSupportInterface_interface = v0;

  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FF3EE8];
  [FPSimulatorSupportInterface_interface setInterface:v2 forSelector:sel_sim_registerMaterializationHandler_forURL_completionHandler_ argumentIndex:0 ofReply:0];
}

uint64_t fpfs_file_is_flocked(int a1)
{
  if (flock(a1, 6) < 0 && *__error() == 35)
  {
    return 1;
  }

  flock(a1, 8);
  return 0;
}

uint64_t fpfs_get_flock_type(int a1)
{
  if (!fpfs_file_is_flocked(a1))
  {
    return 0;
  }

  if (flock(a1, 5) < 0 && *__error() == 35)
  {
    return 2;
  }

  flock(a1, 8);
  return 1;
}

uint64_t fpfs_flock(int a1, unint64_t a2)
{
  if (a2 > 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_1AAC268D0[a2];
  }

  return flock(a1, v2);
}

uint64_t fpfs_serialize_tags(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v15 = 0;
  v16 = 0;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  if (v3[2](v3, &v15))
  {
    do
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
      if (([v5 containsObject:v7] & 1) == 0)
      {
        [v5 addObject:v7];
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%i", v7, v16];
        [v6 addObject:v8];
        *(a1 + 16) = v16;
      }
    }

    while ((v3[2](v3, &v15) & 1) != 0);
  }

  if ([v6 count])
  {
    v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:0];
    v10 = v9;
    if (v9 && (v11 = malloc_type_malloc([v9 length], 0x6BDF4BD6uLL), (*a1 = v11) != 0))
    {
      *(a1 + 8) = [v10 length];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __fpfs_serialize_tags_block_invoke;
      v14[3] = &__block_descriptor_40_e29_v40__0r_v8__NSRange_QQ_16_B32l;
      v14[4] = a1;
      [v10 enumerateByteRangesUsingBlock:v14];
      v12 = 0;
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }
  }

  else
  {

    v12 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v12;
}

uint64_t fpfs_deserialize_tags(void *a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:*a1 length:a1[1] freeWhenDone:0];
  if ([v5 length])
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v10 fromData:v5 error:0];
    if (!v11)
    {
      v11 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      v13 = v3;
      v14 = [v12 objectForKeyedSubscript:@"v"];
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v14 intValue] == 1)
      {
        v15 = [v12 objectForKeyedSubscript:@"t"];
        if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          obj = v15;
          v40 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
          if (v40)
          {
            v41 = *v48;
            v43 = v13;
            v37 = v15;
            v38 = v12;
            while (2)
            {
              for (i = 0; i != v40; ++i)
              {
                if (*v48 != v41)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v47 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  *__error() = 22;
                  v22 = 0xFFFFFFFFLL;
                  goto LABEL_56;
                }

                v18 = v4;
                v19 = [v17 firstObject];
                v20 = [v17 lastObject];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  *__error() = 22;
                  v22 = 0xFFFFFFFFLL;
                  goto LABEL_55;
                }

                v21 = [v20 intValue];
                v45 = 0;
                v46 = 0;
                v45 = [v19 UTF8String];
                LOBYTE(v46) = v21;
                if ((v43[2](v43, &v45) & 1) == 0)
                {
                  v22 = 0;
LABEL_55:

                  v4 = v18;
LABEL_56:
                  v15 = v37;
                  v12 = v38;
                  v13 = v43;
                  goto LABEL_57;
                }

                v4 = v18;
              }

              v22 = 0;
              v15 = v37;
              v12 = v38;
              v13 = v43;
              v40 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
              if (v40)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v22 = 0;
          }

LABEL_57:
        }

        else
        {
          *__error() = 22;
          v22 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        *__error() = 22;
        v22 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v11;
        v24 = v3;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v25 = v23;
        v26 = [v25 countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (v26)
        {
          v27 = v26;
          v42 = v4;
          v44 = v3;
          v28 = *v48;
          while (2)
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v48 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v47 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v45 = 0;
                v46 = 0;
                v31 = [v30 UTF8String];
                v32 = v31;
                v45 = v31;
                if (!v31)
                {
                  *__error() = 22;
LABEL_43:
                  if (v32)
                  {
                    v22 = 0;
                  }

                  else
                  {
                    v22 = 0xFFFFFFFFLL;
                  }

                  goto LABEL_46;
                }

                LOBYTE(v46) = 1;
                v33 = strrchr(v31, 10);
                if (v33)
                {
                  *v33 = 0;
                  v34 = v33[1];
                  if ((v34 - 49) <= 6)
                  {
                    LOBYTE(v46) = v34 - 48;
                  }
                }

                if ((v24[2](v24, &v45) & 1) == 0)
                {
                  goto LABEL_43;
                }
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v47 objects:v51 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }

          v22 = 0;
LABEL_46:
          v4 = v42;
          v3 = v44;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    *__error() = 22;
    v22 = 0xFFFFFFFFLL;
  }

  objc_autoreleasePoolPop(v4);
  v35 = *MEMORY[0x1E69E9840];
  return v22;
}

void fpfs_user_package_extension_list_init(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpfs_user_package_extension_list_init_block_invoke;
  block[3] = &unk_1E79399B0;
  v5 = v1;
  v2 = fpfs_user_package_extension_list_init_once;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&fpfs_user_package_extension_list_init_once, block);
  }
}

uint64_t __fpfs_user_package_extension_list_init_block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = fpfs_user_package_default_extension_list;
  }

  v4 = [v2 initWithArray:v3];
  v5 = allowListedPackageExtensions;
  allowListedPackageExtensions = v4;

  v6 = FPServerPackageExtensions();
  v7 = remotePackageExtensions;
  remotePackageExtensions = v6;

  userPackageExtensions = objc_alloc_init(MEMORY[0x1E695DFA8]);

  return MEMORY[0x1EEE66BB8]();
}

void fpfs_icd_package_extension_list_reload()
{
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v4 stringArrayForKey:@"iCDPackageExtensions"];
  v2 = [v0 initWithArray:v1];

  os_unfair_lock_lock(&iCDPackageExtensionsLock);
  v3 = iCDPackageExtensions;
  iCDPackageExtensions = v2;

  os_unfair_lock_unlock(&iCDPackageExtensionsLock);
}

void fpfs_icd_package_extension_list_init()
{
  if (fpfs_icd_package_extension_list_init_once != -1)
  {
    fpfs_icd_package_extension_list_init_cold_1();
  }
}

uint64_t fpfs_user_package_extension_list_contains(_BYTE *a1)
{
  v1 = _getExtensionString(a1);
  if (v1)
  {
    fpfs_user_package_extension_list_init(0);
    v2 = userPackageExtensions;
    objc_sync_enter(v2);
    if ([allowListedPackageExtensions containsObject:v1] & 1) != 0 || (objc_msgSend(remotePackageExtensions, "containsObject:", v1))
    {
      v3 = 1;
    }

    else
    {
      v3 = [userPackageExtensions containsObject:v1];
    }

    objc_sync_exit(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _getExtensionString(_BYTE *a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = *a1 == 46 ? a1 + 1 : a1;
    if (*v2 && *v2 != 46)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      v1 = [v3 lowercaseString];
    }
  }

  return v1;
}

uint64_t fpfs_icd_package_extension_list_contains(_BYTE *a1)
{
  v1 = _getExtensionString(a1);
  if (v1)
  {
    if (fpfs_icd_package_extension_list_init_once != -1)
    {
      fpfs_icd_package_extension_list_init_cold_1();
    }

    os_unfair_lock_lock(&iCDPackageExtensionsLock);
    v2 = [iCDPackageExtensions containsObject:v1];
    os_unfair_lock_unlock(&iCDPackageExtensionsLock);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void fpfs_user_package_extension_list_insert(_BYTE *a1)
{
  if ((fpfs_user_package_extension_list_contains(a1) & 1) == 0)
  {
    v2 = _getExtensionString(a1);
    if (v2)
    {
      v4 = v2;
      v3 = userPackageExtensions;
      objc_sync_enter(v3);
      [userPackageExtensions addObject:v4];
      objc_sync_exit(v3);

      v2 = v4;
    }
  }
}

void fpfs_user_package_extension_list_remove(_BYTE *a1)
{
  v1 = _getExtensionString(a1);
  if (v1)
  {
    v3 = v1;
    fpfs_user_package_extension_list_init(0);
    v2 = userPackageExtensions;
    objc_sync_enter(v2);
    [userPackageExtensions removeObject:v3];
    objc_sync_exit(v2);

    v1 = v3;
  }
}

void _t_fpfs_user_package_clear()
{
  fpfs_user_package_extension_list_init(0);
  obj = userPackageExtensions;
  objc_sync_enter(obj);
  [userPackageExtensions removeAllObjects];
  objc_sync_exit(obj);
}

id FPFileMetadataCopyLastUsedDate(int a1, void *a2)
{
  v7[0] = 0;
  v7[1] = 0;
  if ((fpfs_get_last_use_date(a1, v7, 1) & 0x80000000) != 0)
  {
    if (a2)
    {
      v4 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
      v5 = v4;
      v3 = 0;
      *a2 = v4;
      goto LABEL_9;
    }
  }

  else
  {
    if (v7[0])
    {
      v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v7[0]];
      goto LABEL_9;
    }

    if (a2)
    {
      v3 = 0;
      *a2 = 0;
      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:

  return v3;
}

id FPFileMetadataCopyLastUsedDateAtURL(void *a1, void *a2)
{
  v3 = open([a1 fileSystemRepresentation], 2097156);
  if (v3 < 0)
  {
    if (a2)
    {
      [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
      *a2 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = v3;
    v5 = FPFileMetadataCopyLastUsedDate(v3, a2);
    close(v4);
  }

  return v5;
}

BOOL FPFileMetadataSetLastUsedDate(int a1, void *a2, void *a3)
{
  [a2 timeIntervalSince1970];
  v9[0] = v5;
  v9[1] = 0;
  use_date = fpfs_set_last_use_date(a1, v9, 1);
  v7 = use_date;
  if (a3 && use_date < 0)
  {
    *a3 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  }

  return v7 >= 0;
}

void FPSetLastUsedDateAtURL(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 fileSystemRepresentation];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __FPSetLastUsedDateAtURL_block_invoke;
  v16 = &unk_1E793E888;
  v17 = v4;
  v6 = v3;
  v18 = v6;
  v7 = v4;
  if ((fpfs_open(v5, 0x200002u, 0, 2, &v13) & 0x80000000) != 0)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 path];
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 138412546;
      v20 = v9;
      v21 = 2080;
      v22 = v11;
      _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] can't set last used date on %@: %s", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __FPSetLastUsedDateAtURL_block_invoke(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v10 = 0;
  v5 = FPFileMetadataSetLastUsedDate(a2, v4, &v10);
  v6 = v10;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __FPSetLastUsedDateAtURL_block_invoke_cold_1(a1, v6, v8);
    }

    v7 = 0xFFFFFFFFLL;
  }

  return v7;
}

id FPFileMetadataCopyFavoriteRank(int a1, void *a2)
{
  v7 = 0;
  if ((fpfs_get_favorite_rank(a1, &v7) & 0x80000000) != 0)
  {
    if (a2)
    {
      v4 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
      v5 = v4;
      v3 = 0;
      *a2 = v4;
      goto LABEL_9;
    }
  }

  else
  {
    if (v7)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      goto LABEL_9;
    }

    if (a2)
    {
      v3 = 0;
      *a2 = 0;
      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:

  return v3;
}

BOOL FPFileMetadataSetFavoriteRank(int a1, void *a2, void *a3)
{
  v4 = fpfs_set_favorite_rank(a1, [a2 unsignedLongLongValue]);
  v5 = v4;
  if (a3 && v4 < 0)
  {
    *a3 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  }

  return v5 >= 0;
}

id FPFileMetadataCopyTagData(int a1, void *a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v11[0] = 0;
  v11[1] = 0;
  if (fpfs_get_finder_info(a1, v11) < 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v11;
  }

  if ((fpfs_get_tag_data(a1, v4, &v12) & 0x80000000) != 0)
  {
    if (a2)
    {
      [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
      *a2 = v7 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v13)
    {
      v5 = [MEMORY[0x1E695DF70] array];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __FPFileMetadataCopyTagData_block_invoke;
      v9[3] = &unk_1E793E8B0;
      v10 = v5;
      v6 = v5;
      fpfs_deserialize_tags(&v12, v9);
      fpfs_free_tag_data(&v12);
      v7 = FPGetTagsDataForTags(v6);

      goto LABEL_12;
    }

    if (a2)
    {
      v7 = 0;
      *a2 = 0;
      goto LABEL_12;
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

uint64_t __FPFileMetadataCopyTagData_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [FPTag alloc];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*a2];
  v6 = [(FPTag *)v4 initWithLabel:v5 color:*(a2 + 8)];

  [*(a1 + 32) addObject:v6];
  return 1;
}

BOOL FPFileMetadataSetTagData(int a1, void *a2, void *a3)
{
  v5 = a2;
  memset(v18, 0, sizeof(v18));
  v6 = FPGetTagsFromTagsData(v5);
  v17[0] = 0;
  v17[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  if (![v6 count])
  {
    if ((fpfs_set_tag_data(a1, 0, v17, v16) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v9 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v7 = [v6 count];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FPFileMetadataSetTagData_block_invoke;
  v11[3] = &unk_1E793E8D8;
  v13 = v15;
  v14 = v7;
  v12 = v6;
  v8 = fpfs_serialize_tags(v18, v11);
  if ((v8 & 0x80000000) == 0)
  {
    v8 = fpfs_set_tag_data(a1, v18, v17, v16);
  }

  if (v18[0])
  {
    free(v18[0]);
  }

  _Block_object_dispose(v15, 8);
  if (v8 < 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v9 = fpfs_set_finder_info(a1, v17, v16) >= 0;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!v9)
  {
    *a3 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
  }

LABEL_13:

  return v9;
}

void sub_1AABDB2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __FPFileMetadataSetTagData_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  if (v4 != v2)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:*(v3 + 24)];
    v8 = [v7 label];
    *a2 = [v8 UTF8String];

    v9 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 40) + 8) + 24)];
    *(a2 + 8) = [v9 color];

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v4 != v2;
}

id FPFileMetadataCopyCollaborationIdentifier(int a1)
{
  v1 = fpfs_copy_collaboration_identifier(a1);
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
    free(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void FPFileProviderServiceEndpointCreatingForItemAtURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __FPFileProviderServiceEndpointCreatingForItemAtURL_block_invoke;
  v15[3] = &unk_1E793B200;
  v5 = v4;
  v17 = v5;
  v6 = v3;
  v16 = v6;
  v7 = [FPFrameworkOverridesIterator newIteratorWithNotFoundHandler:v15];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FPFileProviderServiceEndpointCreatingForItemAtURL_block_invoke_2;
  v11[3] = &unk_1E793E910;
  v12 = v7;
  v13 = v6;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  v10 = v7;
  [v10 FPFileProviderServiceEndpointCreatingForItemAtURL:v9 completionHandler:v11];
}

void __FPFileProviderServiceEndpointCreatingForItemAtURL_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  v9 = FPProviderNotFoundErrorForURL(*(a1 + 32), a2, a3, a4, a5, a6, a7, a8);
  (*(v8 + 16))(v8, 0, 0, 0, v9);
}

void __FPFileProviderServiceEndpointCreatingForItemAtURL_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9 | v12)
  {
    v13 = fp_current_or_default_log();
    v14 = v13;
    if (v9)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __FPFileProviderServiceEndpointCreatingForItemAtURL_block_invoke_2_cold_2(v10, a1, v14);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __FPFileProviderServiceEndpointCreatingForItemAtURL_block_invoke_2_cold_1(a1, v12, v14);
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) finish];
  }

  else
  {
    [*(a1 + 32) callNextOverrides];
  }
}

void FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously_block_invoke;
  v15[3] = &unk_1E793B200;
  v5 = v4;
  v17 = v5;
  v6 = v3;
  v16 = v6;
  v7 = [FPFrameworkOverridesIterator newIteratorWithNotFoundHandler:v15];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously_block_invoke_2;
  v11[3] = &unk_1E793E910;
  v12 = v7;
  v13 = v6;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  v10 = v7;
  [v10 FPFileProviderServiceEndpointCreatingForItemAtURL:v9 synchronously:1 completionHandler:v11];
}

void __FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = FPProviderNotFoundErrorForURL(*(a1 + 32), a2, a3, a4, a5, a6, a7, a8);
    (*(v8 + 16))(v8, 0, 0, 0, v9);
  }
}

void __FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9 | v12)
  {
    v13 = fp_current_or_default_log();
    v14 = v13;
    if (v9)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously_block_invoke_2_cold_2(v9, a1);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously_block_invoke_2_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) finish];
  }

  else
  {
    [*(a1 + 32) callNextOverrides];
  }
}

void FPFetchServiceEndpointCreatorForItemAtURL(void *a1, int a2, void *a3)
{
  if (a2)
  {
    FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously(a1, a3);
  }

  else
  {
    FPFileProviderServiceEndpointCreatingForItemAtURL(a1, a3);
  }
}

void FPFetchServiceEndpointCreatorByNameForItemAtURL(void *a1, void *a2, uint64_t a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v33 = 0;
  v32 = 0;
  [v7 getResourceValue:&v33 forKey:@"FPOriginalDocumentURL" error:&v32];
  v10 = v33;
  v11 = v32;
  if (v11)
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      FPFetchServiceEndpointCreatorByNameForItemAtURL_cold_1(v10);
    }
  }

  if (v10)
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v35 = v10;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_INFO, "[INFO] FPFetchServiceEndpointCreatorByNameForItemAtURL substituting %@ as original URL to %@", buf, 0x16u);
    }

    v14 = v10;
    v7 = v14;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __FPFetchServiceEndpointCreatorByNameForItemAtURL_block_invoke;
  v27[3] = &unk_1E793E960;
  v15 = v7;
  v28 = v15;
  v31 = a3;
  v16 = v9;
  v29 = v8;
  v30 = v16;
  v17 = v8;
  v18 = [FPFrameworkOverridesIterator newIteratorWithNotFoundHandler:v27];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __FPFetchServiceEndpointCreatorByNameForItemAtURL_block_invoke_3;
  v23[3] = &unk_1E793E988;
  v24 = v18;
  v25 = v15;
  v26 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v18;
  [v21 FPFileProviderServiceEndpointCreatingWithName:v17 itemAtURL:v20 synchronously:a3 completionHandler:v23];

  v22 = *MEMORY[0x1E69E9840];
}

void __FPFetchServiceEndpointCreatorByNameForItemAtURL_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FPFetchServiceEndpointCreatorByNameForItemAtURL_block_invoke_2;
  v4[3] = &unk_1E793E938;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  if (v3 == 1)
  {
    FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously(v2, v4);
  }

  else
  {
    FPFileProviderServiceEndpointCreatingForItemAtURL(v2, v4);
  }
}

void __FPFetchServiceEndpointCreatorByNameForItemAtURL_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if ([*(*(&v19 + 1) + 8 * v16) isEqualToString:{*(a1 + 32), v19}])
          {
            (*(*(a1 + 40) + 16))(*(a1 + 40), v9, v11, 0);
            goto LABEL_13;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v11[2](v11);
    v17 = *(a1 + 40);
    v12 = FPNotSupportedError();
    (*(v17 + 16))(v17, 0, 0, v12);
LABEL_13:
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __FPFetchServiceEndpointCreatorByNameForItemAtURL_block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 | v9)
  {
    v10 = fp_current_or_default_log();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously_block_invoke_2_cold_2(v7, a1);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __FPFileProviderServiceEndpointCreatingForItemAtURLSynchronously_block_invoke_2_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) finish];
  }

  else
  {
    [*(a1 + 32) callNextOverrides];
  }
}

void __FILEPROVIDER_BAD_DOMAIN_VERSION__(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v14 = a3;
  if (v6 | v14)
  {
    fp_simulate_crash(@"Domain %@ returned an inconsistent domain version %@, previously known version was %@", v7, v8, v9, v10, v11, v12, v13, v5);
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v18 = v5;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v6;
      _os_log_fault_impl(&dword_1AAAE1000, v15, OS_LOG_TYPE_FAULT, "[SIMCRASH] Domain %@ returned an inconsistent domain version %@, previously known version was %@", buf, 0x20u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1AABDDBC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

uint64_t __AppleAccountLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppleAccountLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id fp_extension_log()
{
  if (fp_extension_log_once != -1)
  {
    fp_extension_log_cold_1();
  }

  v1 = fp_extension_log_logger;

  return v1;
}

uint64_t __fp_extension_log_block_invoke()
{
  v0 = os_log_create("com.apple.FileProvider", "extension");
  v1 = fp_extension_log_logger;
  fp_extension_log_logger = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1AABE04A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AABE1340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AABE2F20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

void sub_1AABE3DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1AABE4408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __FILEPROVIDER_UNSUPPORTED_ERROR__(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = +[FPXPCSanitizer permittedErrorDomains];
    v7 = [v6 componentsJoinedByString:{@", "}];
    v8 = 134218754;
    v9 = a2;
    v10 = 2114;
    v11 = v3;
    v12 = 2114;
    v13 = v7;
    v14 = 2082;
    v15 = "__FILEPROVIDER_UNSUPPORTED_ERROR__";
    _os_log_fault_impl(&dword_1AAAE1000, v4, OS_LOG_TYPE_FAULT, "[CRIT] Provider returned error %ld from domain %{public}@ which is unsupported. Supported error domains are %{public}@. Break on %{public}s to find this.", &v8, 0x2Au);
  }

  v5 = *MEMORY[0x1E69E9840];
}

id FPLocalizedStringWithKeyAndVariant(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = FPLocalizedStringWithKeyAndVariantShared(a1, a2, a3, a4, a5, &__block_literal_global_322, &a9);

  return v9;
}

id FPLocalizedStringWithKeyAndVariantLiteral(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FPLocalizedStringWithKeyAndVariantLiteral_block_invoke;
  aBlock[3] = &unk_1E793ED88;
  v18 = @"DomainDisabled_%@";
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = _Block_copy(aBlock);
  v15 = FPLocalizedStringWithKeyAndVariantShared(0, @"DomainDisabled_%@", v13, v12, v11, v14, &a9);

  return v15;
}

id FPLocalizedStringWithKeyAndVariantShared(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a5;
  v18 = [a1 stringByAppendingString:v13];
  if (!v18)
  {
    v20 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (!v20)
    {
      v21 = [v14 stringByAppendingString:@".f"];
      v20 = _FPLocalizedStringWithKeyAndVariant(v13, v21, v15);
    }

    goto LABEL_9;
  }

  if (a5)
  {
    v19 = [v14 stringByAppendingString:@".f"];
    v20 = _FPLocalizedStringNoFallbackWithKeyAndVariant(v18, v19, v15);

    if (v20)
    {
      goto LABEL_13;
    }
  }

  v20 = _FPLocalizedStringNoFallbackWithKeyAndVariant(v18, v14, v15);
  if (a5)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (!v20)
  {
    v22 = _FPLocalizedStringWithKeyAndVariant(v13, v14, v15);
    if (!v22)
    {
      v22 = v16[2](v16, v13, a7);
    }

    v20 = v22;
  }

LABEL_13:
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v20];
  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:v23, v17];

  return v24;
}

id _FPLocalizedStringNoFallbackWithKeyAndVariant(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v7 || ([MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@(%@)", v5, v6, v7], v8 = objc_claimAutoreleasedReturnValue(), FPLocalizedErrorStringForKey(v8), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@(*)", v5, v6];
    v9 = FPLocalizedErrorStringForKey(v10);
  }

  return v9;
}

id _FPLocalizedStringWithKeyAndVariant(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = _FPLocalizedStringNoFallbackWithKeyAndVariant(v5, v6, v7);
  v9 = v8;
  if (v7 && !v8)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(%@)", v6, v7];
    v9 = FPLocalizedErrorStringForKey(v10);
  }

  if (v6 && !v9)
  {
    if ([v6 isEqualToString:&stru_1F1F94B20])
    {
      v9 = 0;
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v5, v6];
      v9 = FPLocalizedErrorStringForKey(v11);
    }
  }

  return v9;
}

id FPGetTagsDataForTags(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v1;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v8 label];
          v23[0] = v9;
          v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "color")}];
          v23[1] = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
          [v2 addObject:v11];
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v5);
    }

    v21[0] = @"v";
    v21[1] = @"t";
    v22[0] = &unk_1F1FC9AD0;
    v22[1] = v2;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];

    v1 = v16;
  }

  else
  {
    v13 = [MEMORY[0x1E695DEF0] data];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id FPGetTagsFromTagsData(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = objc_opt_new();
    v15[2] = 0;
    v15[0] = [v1 bytes];
    v15[1] = [v1 length];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __FPGetTagsFromTagsData_block_invoke;
    v13[3] = &unk_1E793E8B0;
    v3 = v2;
    v14 = v3;
    if ((fpfs_deserialize_tags(v15, v13) & 0x80000000) != 0)
    {
      v5 = fp_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        FPGetTagsFromTagsData_cold_1(v5);
      }

      v6 = v1;
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v7 = getMDPropertyCopyDecodedUserTagsSymbolLoc_ptr;
      v20 = getMDPropertyCopyDecodedUserTagsSymbolLoc_ptr;
      if (!getMDPropertyCopyDecodedUserTagsSymbolLoc_ptr)
      {
        v15[3] = MEMORY[0x1E69E9820];
        v15[4] = 3221225472;
        v15[5] = __getMDPropertyCopyDecodedUserTagsSymbolLoc_block_invoke;
        v15[6] = &unk_1E793A2E8;
        v16 = &v17;
        v8 = MetadataUtilitiesLibrary_1();
        v9 = dlsym(v8, "MDPropertyCopyDecodedUserTags");
        *(v16[1] + 24) = v9;
        getMDPropertyCopyDecodedUserTagsSymbolLoc_ptr = *(v16[1] + 24);
        v7 = v18[3];
      }

      _Block_object_dispose(&v17, 8);
      if (!v7)
      {
        FPGetTagsFromTagsData_cold_2();
      }

      v10 = v7(v6);
      v11 = v10;
      if (v10)
      {
        v4 = [v10 fp_map:&__block_literal_global_60];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __FPGetTagsFromTagsData_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [FPTag alloc];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*a2];
  v6 = [(FPTag *)v4 initWithLabel:v5 color:*(a2 + 8)];

  [*(a1 + 32) addObject:v6];
  return 1;
}

void FPFilterActionsForDroppingItems(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = +[FPFrameworkOverridesIterator allOverrides];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      if (objc_opt_respondsToSelector() & 1) != 0 && ([v13 FPFilterActions:v7 forDroppingItems:v5 underItem:v6])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t FPAreUTIsImportable(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[FPFrameworkOverridesIterator allOverrides];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v10 FPAreUTIsImportable:v3 toFolderItem:v4])
        {
          v11 = 0;
          goto LABEL_12;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

id FPServerPackageExtensions()
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v0 = +[FPFrameworkOverridesIterator allOverrides];
  v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = *v8;
    while (2)
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v8 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v7 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v1 = [v4 FPServerPackageExtensions];
          goto LABEL_11;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v5 = *MEMORY[0x1E69E9840];

  return v1;
}

void fp_dispatch_group_async_with_logs(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  v8 = fpfs_current_log();
  section = __fp_create_section();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    fp_dispatch_async_with_logs_cold_1();
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __fp_dispatch_group_async_with_logs_block_invoke;
  v14[3] = &unk_1E7939968;
  v15 = v8;
  v16 = v5;
  v17 = v6;
  v18 = section;
  v11 = v6;
  v12 = v5;
  v13 = v8;
  dispatch_group_async(v7, v12, v14);
}

void __fp_dispatch_group_async_with_logs_block_invoke(uint64_t a1)
{
  v2 = fpfs_adopt_log(*(a1 + 32));
  v4 = *(a1 + 56);
  v5 = v2;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __fp_dispatch_async_with_logs_block_invoke_cold_1();
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48));
  __fp_leave_section_Debug(&v4);
  __fp_pop_log(&v5);
}

void sub_1AABE7EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

FPTag *__FPGetTagsFromTagsDataInOnDiskEncoding_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v9 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v3 = getMDPropertyCopyUserTagNameSymbolLoc_ptr_0;
  v18 = getMDPropertyCopyUserTagNameSymbolLoc_ptr_0;
  if (!getMDPropertyCopyUserTagNameSymbolLoc_ptr_0)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getMDPropertyCopyUserTagNameSymbolLoc_block_invoke_0;
    v13 = &unk_1E793A2E8;
    v14 = &v15;
    v4 = MetadataUtilitiesLibrary_1();
    v16[3] = dlsym(v4, "MDPropertyCopyUserTagName");
    getMDPropertyCopyUserTagNameSymbolLoc_ptr_0 = *(v14[1] + 24);
    v3 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v3)
  {
    __FPGetTagsFromTagsDataInOnDiskEncoding_block_invoke_cold_1();
  }

  v5 = v3(v2, &v9);
  if (v5)
  {
    v6 = [FPTag alloc];
    v7 = [(FPTag *)v6 initWithLabel:v5 color:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1AABE8028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMDPropertyCopyDecodedUserTagsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MetadataUtilitiesLibrary_1();
  result = dlsym(v2, "MDPropertyCopyDecodedUserTags");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDPropertyCopyDecodedUserTagsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MetadataUtilitiesLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MetadataUtilitiesLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMDPropertyCopyUserTagNameSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = MetadataUtilitiesLibrary_1();
  result = dlsym(v2, "MDPropertyCopyUserTagName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMDPropertyCopyUserTagNameSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AABE8564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AABE9454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, uint8_t buf)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(exception_object);
    v14 = [v12 errorFromException:v13 whileSendingToSelector:{objc_msgSend(v11, "selector")}];
    if (forwardInvocation__onceToken != -1)
    {
      [FPExceptionToErrorProxy forwardInvocation:];
    }

    v15 = fpfs_adopt_log(forwardInvocation__exceptionLog);
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = [v14 debugDescription];
      [(FPExceptionToErrorProxy *)v17 forwardInvocation:v16];
    }

    v18 = fpfs_adopt_log(v15);
    v19 = [v11 methodSignature];
    v20 = [v19 fp_indexOfLastArgumentWithType:"@?"];
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = v12[2];
      if (!v21)
      {
        v26 = v13;
        objc_exception_throw(v13);
      }

      (*(v21 + 16))(v21, v14);
    }

    else
    {
      aBlock = 0;
      [v11 getArgument:&aBlock atIndex:v20];
      v22 = _Block_copy(aBlock);
      v23 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:_Block_signature(v22)];
      v24 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v23];
      [v24 fp_zeroOutReplyBlockArgumentsWithError:v14];
      v25 = _Block_copy(v22);
      [v24 invokeWithTarget:v25];
    }

    objc_end_catch();
    JUMPOUT(0x1AABE9414);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AABEB64C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1AABEBB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CoreSpotlightLibraryCore_block_invoke_7(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreSpotlightLibraryCore_frameworkLibrary_7 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _supportedSyncControlsForVendorItem(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v1 isFolder] & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([v1 supportsUploadWithFailOnConflict])
      {
        v2 = 3;
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id FPItemPropertyNamesByURLResourceKey()
{
  if (FPItemPropertyNamesByURLResourceKey_once != -1)
  {
    FPItemPropertyNamesByURLResourceKey_cold_1();
  }

  v1 = FPItemPropertyNamesByURLResourceKey_itemPropertyNamesByURLKey;

  return v1;
}

void __FPItemPropertyNamesByURLResourceKey_block_invoke()
{
  v17[28] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695DC10];
  v16[0] = *MEMORY[0x1E695DC30];
  v16[1] = v0;
  v17[0] = @"filename";
  v17[1] = @"displayName";
  v1 = *MEMORY[0x1E695DAA8];
  v16[2] = *MEMORY[0x1E695DB50];
  v16[3] = v1;
  v17[2] = @"documentSize";
  v17[3] = @"creationDate";
  v2 = *MEMORY[0x1E695DA90];
  v16[4] = *MEMORY[0x1E695DA98];
  v16[5] = v2;
  v17[4] = @"contentModificationDate";
  v17[5] = @"lastUsedDate";
  v3 = *MEMORY[0x1E695DBF0];
  v16[6] = *MEMORY[0x1E695DBB0];
  v16[7] = v3;
  v17[6] = @"fp_isReadable";
  v17[7] = @"fp_isWritable";
  v4 = *MEMORY[0x1E695DCE0];
  v16[8] = *MEMORY[0x1E695DCD8];
  v16[9] = v4;
  v17[8] = @"isUploaded";
  v17[9] = @"isUploading";
  v5 = *MEMORY[0x1E695DC98];
  v16[10] = *MEMORY[0x1E695DCF0];
  v16[11] = v5;
  v17[10] = @"uploadingError";
  v17[11] = @"fp_downloadingStatus";
  v6 = *MEMORY[0x1E695DC80];
  v16[12] = *MEMORY[0x1E695DCB8];
  v16[13] = v6;
  v17[12] = @"isDownloading";
  v17[13] = @"downloadingError";
  v7 = *MEMORY[0x1E695DD00];
  v16[14] = *MEMORY[0x1E695DCC8];
  v16[15] = v7;
  v17[14] = @"isShared";
  v17[15] = @"fp_sharingCurrentUserRole";
  v8 = *MEMORY[0x1E695DD20];
  v16[16] = *MEMORY[0x1E695DCF8];
  v16[17] = v8;
  v17[16] = @"fp_sharingCurrentUserPermissions";
  v17[17] = @"sharingPermissions";
  v9 = *MEMORY[0x1E695DD08];
  v16[18] = *MEMORY[0x1E695DD10];
  v16[19] = v9;
  v17[18] = @"ownerNameComponents";
  v17[19] = @"mostRecentEditorNameComponents";
  v10 = *MEMORY[0x1E695DCA8];
  v16[20] = *MEMORY[0x1E695DBD8];
  v16[21] = v10;
  v17[20] = @"fp_isUbiquitous";
  v17[21] = @"hasUnresolvedConflicts";
  v11 = *MEMORY[0x1E695DC78];
  v16[22] = *MEMORY[0x1E695DC70];
  v16[23] = v11;
  v17[22] = @"containerDisplayName";
  v17[23] = @"isDownloadRequested";
  v16[24] = *MEMORY[0x1E695DCC0];
  v16[25] = @"NSFileProviderDomainIdentifierKey";
  v17[24] = @"isExcludedFromSync";
  v17[25] = @"providerDomainID";
  v12 = *MEMORY[0x1E695DCE8];
  v16[26] = *MEMORY[0x1E695DCD0];
  v16[27] = v12;
  v17[26] = @"isSyncPaused";
  v17[27] = @"fp_supportedSyncControls";
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:28];
  v14 = FPItemPropertyNamesByURLResourceKey_itemPropertyNamesByURLKey;
  FPItemPropertyNamesByURLResourceKey_itemPropertyNamesByURLKey = v13;

  v15 = *MEMORY[0x1E69E9840];
}

id FPURLResourceKeysByItemPropertyNames()
{
  if (FPURLResourceKeysByItemPropertyNames_once != -1)
  {
    FPURLResourceKeysByItemPropertyNames_cold_1();
  }

  v1 = FPURLResourceKeysByItemPropertyNames_urlResourceKeysByItemPropertyNames;

  return v1;
}

void __FPURLResourceKeysByItemPropertyNames_block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = FPItemPropertyNamesByURLResourceKey();
  v1 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v0, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v0;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v2 objectForKeyedSubscript:{v7, v11}];
        [v1 setObject:v7 forKeyedSubscript:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = FPURLResourceKeysByItemPropertyNames_urlResourceKeysByItemPropertyNames;
  FPURLResourceKeysByItemPropertyNames_urlResourceKeysByItemPropertyNames = v1;

  v10 = *MEMORY[0x1E69E9840];
}

id FPMatchingDictionaryKeys()
{
  if (FPMatchingDictionaryKeys_once != -1)
  {
    FPMatchingDictionaryKeys_cold_1();
  }

  v1 = FPMatchingDictionaryKeys_fpMatchingDictionary;

  return v1;
}

void __FPMatchingDictionaryKeys_block_invoke()
{
  v0 = FPURLResourceKeysByItemPropertyNames();
  v1 = [v0 keysOfEntriesPassingTest:&__block_literal_global_295];
  v2 = [v1 mutableCopy];

  [v2 addObject:@"userInfo"];
  [v2 addObject:@"itemIdentifier"];
  [v2 addObject:@"parentItemIdentifier"];
  [v2 addObject:@"contentType"];
  [v2 addObject:@"typeIdentifier"];
  [v2 addObject:@"isTrashed"];
  [v2 addObject:@"filename"];
  [v2 addObject:@"capabilities"];
  [v2 addObject:@"documentSize"];
  [v2 addObject:@"childItemCount"];
  [v2 addObject:@"creationDate"];
  [v2 addObject:@"contentModificationDate"];
  [v2 addObject:@"lastUsedDate"];
  [v2 addObject:@"tagData"];
  [v2 addObject:@"favoriteRank"];
  [v2 addObject:@"isUploaded"];
  [v2 addObject:@"isUploading"];
  [v2 addObject:@"uploadingError"];
  [v2 addObject:@"isDownloaded"];
  [v2 addObject:@"isDownloading"];
  [v2 addObject:@"downloadingError"];
  [v2 addObject:@"isMostRecentVersionDownloaded"];
  [v2 addObject:@"isShared"];
  [v2 addObject:@"isSharedByCurrentUser"];
  [v2 addObject:@"ownerNameComponents"];
  [v2 addObject:@"mostRecentEditorNameComponents"];
  [v2 addObject:@"versionIdentifier"];
  [v2 addObject:@"inheritedUserInfo"];
  [v2 addObject:@"resolvedUserInfo"];
  [v2 addObject:@"collaborationIdentifier"];
  [v2 addObject:@"isRecursivelyDownloaded"];
  [v2 addObject:@"isKeepDownloaded"];
  [v2 addObject:@"isSyncPaused"];
  [v2 addObject:@"isFolder"];
  [v2 removeObject:@"containerDisplayName"];
  [v2 removeObject:@"providerDomainID"];
  v3 = FPMatchingDictionaryKeys_fpMatchingDictionary;
  FPMatchingDictionaryKeys_fpMatchingDictionary = v2;
}

void sub_1AABEC9FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

void sub_1AABECDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

void sub_1AABED9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getValueForKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  NSSelectorFromString(v4);
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 valueForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id FPExtensionMatchingDictionaryForItem(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  context = objc_autoreleasePoolPush();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = FPMatchingDictionaryKeys();
  }

  v6 = v5;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 isEqualToString:@"itemIdentifier"];
        v14 = @"providerItemIdentifier";
        if ((v13 & 1) != 0 || (v15 = [v12 isEqualToString:@"parentItemIdentifier"], v14 = @"providerParentItemIdentifier", v15))
        {
          v16 = getValueForKey(v3, v14);
        }

        else
        {
          v16 = getValueForKey(v3, v12);
        }

        v17 = v16;
        if (v16)
        {
          [v7 setObject:v16 forKey:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v18 = [v7 copy];
  objc_autoreleasePoolPop(context);

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

unsigned __int8 *fpfs_finder_info_serialize(unsigned __int8 *result, uint64_t a2)
{
  v2 = bswap32(*(a2 + 8) & 0xE11B);
  v3 = *result;
  if (v3)
  {
    v4 = -32768;
  }

  else
  {
    v4 = 0;
  }

  *(a2 + 8) = bswap32((v4 | HIWORD(v2)) & 0xFFFF9BEF | ((((v3 & 6) >> 1) & 3) << 13) | (16 * ((v3 >> 3) & 1)) & 0xFFFFFBFF | ((((v3 & 0x10) >> 4) & 1) << 10) | (2 * (result[1] & 7))) >> 16;
  *a2 = bswap64(*(result + 1));
  return result;
}

uint64_t fpfs_set_finder_info_buffer(int a1, void *a2)
{
  v4 = 0;
  v3 = xmmword_1AAC26938;
  return fsetattrlist(a1, &v3, a2, 0x20uLL, 0);
}

uint64_t fpfs_get_finder_info(int a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __fpfs_get_finder_info_block_invoke;
  v3[3] = &__block_descriptor_tmp;
  v3[4] = a2;
  return _fchfiflags(a1, v3);
}

uint64_t _fchfiflags(int a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, sizeof(v16));
  if ((fpfs_get_finder_info_buffer(a1, v16) & 0x80000000) != 0)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = bswap32(WORD4(v16[0]));
    v13 = bswap64(*&v16[0]);
    v12 = (v4 >> 17) & 8 | ((v4 & 0x80000000) != 0) | (v4 >> 22) & 0x10 | (v4 >> 28) & 6;
    *(&v12 + 1) = (v4 >> 17) & 7;
    v5 = (*(a2 + 16))(a2, v12);
    if (v5 == v12 && v6 == v13)
    {
      result = 0;
    }

    else
    {
      v8 = bswap32(WORD4(v16[0]) & 0xE11B);
      if (v5)
      {
        v9 = -32768;
      }

      else
      {
        v9 = 0;
      }

      WORD4(v16[0]) = bswap32((v9 | HIWORD(v8)) & 0xFFFF9BEF | ((((v5 & 6) >> 1) & 3) << 13) | (16 * ((v5 >> 3) & 1)) & 0xFFFFFBFF | ((((v5 & 0x10) >> 4) & 1) << 10) | (v5 >> 7) & 0xE) >> 16;
      *&v16[0] = bswap64(v6);
      v14 = xmmword_1AAC26938;
      v15 = 0;
      result = fsetattrlist(a1, &v14, v16, 0x20uLL, 0);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __fpfs_get_finder_info_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  *v3 = a2;
  v3[1] = a3;
  return a2;
}

BOOL fpfs_finder_info_update_with_mask(__int128 *a1, char *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (*a2)
  {
    *a1 = *a1 & 0xFE | *a3 & 1;
    v4 = *a2;
    if ((*a2 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *a1 = *a1 & 0xFD | *a3 & 2;
  v4 = *a2;
  if ((*a2 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *a1 = *a1 & 0xFB | *a3 & 4;
  v4 = *a2;
  if ((*a2 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_20:
  *a1 = *a1 & 0xF7 | *a3 & 8;
  if ((*a2 & 0x10) != 0)
  {
LABEL_6:
    *a1 = *a1 & 0xEF | *a3 & 0x10;
  }

LABEL_7:
  if (a2[1])
  {
    *(a1 + 1) = *(a3 + 1);
  }

  if (*(a2 + 1))
  {
    *(a1 + 1) = *(a3 + 8);
  }

  return *a1 != v7 || *(a1 + 1) != v8;
}

uint64_t fpfs_set_finder_info(int a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __fpfs_set_finder_info_block_invoke;
  v4[3] = &__block_descriptor_tmp_1;
  v4[4] = a2;
  v4[5] = a3;
  return _fchfiflags(a1, v4);
}

uint64_t __fpfs_set_finder_info_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v4 = a2;
  *(&v4 + 1) = a3;
  fpfs_finder_info_update_with_mask(&v4, *(a1 + 32), *(a1 + 40));
  return v4;
}

uint64_t fpfs_is_finder_alias_at(uint64_t a1, const char *a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __fpfs_is_finder_alias_at_block_invoke;
  v4[3] = &__block_descriptor_tmp_3;
  v4[4] = a3;
  return fpfs_openat(a1, a2, 0, 0, 0, v4);
}

uint64_t __fpfs_is_finder_alias_at_block_invoke(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __fpfs_get_finder_info_block_invoke;
  v6[3] = &__block_descriptor_tmp;
  v6[4] = v5;
  if ((_fchfiflags(a2, v6) & 0x80000000) != 0 && *__error() != 93)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 32);
  result = 0;
  if (v3)
  {
    *v3 = v5[0] & 1;
  }

  return result;
}

uint64_t FPSearchableItemErrorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v33 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v33 & 0x7F) << v23;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_44;
          }
        }

        v29 = [a2 hasError] ? 0 : v25;
LABEL_44:
        *(a1 + 24) = v29;
      }

      else if (v13 == 3)
      {
        v21 = PBReaderReadString();
        v22 = *(a1 + 16);
        *(a1 + 16) = v21;
      }

      else if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_48:
        *(a1 + 8) = -(v20 & 1) ^ (v20 >> 1);
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void NSFileProviderManager.requestDownloadForItem(withIdentifier:requestedRange:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    a2 = sub_1AAC160B4();
    a3 = sub_1AAC160B4();
  }

  v13[4] = a5;
  v13[5] = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1AABF2B1C;
  v13[3] = &block_descriptor;
  v12 = _Block_copy(v13);

  [v6 requestDownloadForItemWithIdentifier:a1 requestedRange:a2 completionHandler:{a3, v12}];
  _Block_release(v12);
}

void sub_1AABF2B1C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t NSFileProviderManager.requestDownloadForItem(withIdentifier:requestedRange:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 184) = a4;
  *(v5 + 160) = a3;
  *(v5 + 168) = v4;
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AABF2BB0, 0, 0);
}

uint64_t sub_1AABF2BB0()
{
  if (*(v0 + 184))
  {
    v1 = sub_1AAC160B4();
    v2 = sub_1AAC160B4();
  }

  else
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 160);
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1AABF2D00;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB41EEA8, qword_1AAC26968);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1AABF2E94;
  *(v0 + 104) = &block_descriptor_3;
  *(v0 + 112) = v5;
  [v3 requestDownloadForItemWithIdentifier:v4 requestedRange:v1 completionHandler:{v2, v0 + 80}];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1AABF2D00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1AABF2E28;
  }

  else
  {
    v3 = sub_1AABF2E10;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1AABF2E28()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 176);

  return v2();
}

uint64_t sub_1AABF2E94(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB41EEE8, &qword_1AAC26C20);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

BOOL static NSFileProviderManager.EligibilityResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_1AABF2F7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

id static NSFileProviderManager.checkDomainsCanBeStoredOnVolume(at:)@<X0>(uint64_t a1@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v11 = 0;
  v2 = objc_opt_self();
  v3 = sub_1AAC160D4();
  v10 = 0;
  LODWORD(v2) = [v2 checkDomainsCanBeStored:&v12 onVolumeAtURL:v3 unsupportedReason:&v11 error:&v10];

  v4 = v10;
  if (v2)
  {
    v5 = v12;
    v6 = v11;
    if (v12)
    {
      v6 = 0;
    }

    *a1 = v6;
    *(a1 + 8) = v5;
    result = v4;
  }

  else
  {
    v8 = v10;
    sub_1AAC160C4();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AABF3124(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_1AABF31D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1AABF3234(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1AABF3264@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1AABF3290@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1AABF337C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1AABF36CC(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1AABF3410()
{
  result = qword_1EB41EEB8;
  if (!qword_1EB41EEB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB41EEB8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s17EligibilityResultOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s17EligibilityResultOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1AABF34C4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AABF34E4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void type metadata accessor for NSFileProviderVolumeUnsupportedReason()
{
  if (!qword_1EB41EEC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB41EEC0);
    }
  }
}

uint64_t sub_1AABF3684(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AABF36CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void CheckAndWarn_cold_1(int a1, SEL aSelector)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = NSStringFromSelector(aSelector);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void fpfs_fset_acl_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, MEMORY[0x1E69E9C10], v1, "Unable to apply ACL on domain root: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_fset_acl_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, MEMORY[0x1E69E9C10], v1, "Unable to set permission set for ACL on domain root: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_fset_acl_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, MEMORY[0x1E69E9C10], v1, "Unable to set qualifier for ACL on domain root: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_fset_acl_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, MEMORY[0x1E69E9C10], v1, "Unable to add permission for ACL on domain root: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_fset_acl_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, MEMORY[0x1E69E9C10], v1, "Unable to clear permission set for ACL on domain root: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_fset_acl_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, MEMORY[0x1E69E9C10], v1, "Unable to get permission set for ACL on domain root: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_fset_acl_cold_7()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, MEMORY[0x1E69E9C10], v1, "Unable to set tag type for ACL on domain root: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void fpfs_fset_acl_cold_8()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_35(&dword_1AAAE1000, MEMORY[0x1E69E9C10], v1, "Unable to create ACL on domain root: %s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __cachedFrameworkOverridingObjects_block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Ignoring old world icloud drive override when fpfs is enabled", buf, 2u);
}

void fpfs_serialize_last_use_date_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFDataRef _MDPropertyCopyEncodedDataForLastUsedDateWithTimeSpec(struct timespec)"];
  [v0 handleFailureInFunction:v1 file:@"fpfs_xattrs.m" lineNumber:38 description:{@"%s", dlerror()}];

  __break(1u);
}

void fpfs_deserialize_last_use_date_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean _MDPropertyDecodedLastUsedDateTimeSpec(CFDataRef, struct timespec *)"}];
  [v0 handleFailureInFunction:v1 file:@"fpfs_xattrs.m" lineNumber:39 description:{@"%s", dlerror()}];

  __break(1u);
}

void fpfs_serialize_favorite_rank_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFDataRef _MDPropertyCopyEncodedDataForFavoriteRank(uint64_t, _Bool)"}];
  [v0 handleFailureInFunction:v1 file:@"fpfs_xattrs.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

void fpfs_deserialize_favorite_rank_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"Boolean _MDPropertyDecodedFavoritRank(CFDataRef, uint64_t *)"}];
  [v0 handleFailureInFunction:v1 file:@"fpfs_xattrs.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
}

void fpfs_set_bplist_xattr_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "Cannot format data with CFPropertyListCreateData %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void _MDPropertyCopyEncodedData_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFDataRef _MDPropertyCopyEncodedData(CFStringRef, CFTypeRef)"}];
  [v0 handleFailureInFunction:v1 file:@"fpfs_xattrs.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

void getMDItemCollaborationIdentifier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemCollaborationIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"fpfs_xattrs.m" lineNumber:46 description:{@"%s", dlerror()}];

  __break(1u);
}

void _MDPropertyCopyXAttrName_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef _MDPropertyCopyXAttrName(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"fpfs_xattrs.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

void getMDItemIsShared_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemIsShared(void)"];
  [v0 handleFailureInFunction:v1 file:@"fpfs_xattrs.m" lineNumber:43 description:{@"%s", dlerror()}];

  __break(1u);
}

void getMDItemSharedItemCurrentUserRole_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemSharedItemCurrentUserRole(void)"];
  [v0 handleFailureInFunction:v1 file:@"fpfs_xattrs.m" lineNumber:45 description:{@"%s", dlerror()}];

  __break(1u);
}

void getMDItemOwnerName_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMDItemOwnerName(void)"];
  [v0 handleFailureInFunction:v1 file:@"fpfs_xattrs.m" lineNumber:44 description:{@"%s", dlerror()}];

  __break(1u);
}

void fpfs_copy_collaboration_identifier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFTypeRef _MDPropertyCopyDecodedValue(CFStringRef, CFDataRef)"}];
  [v0 handleFailureInFunction:v1 file:@"fpfs_xattrs.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

void MetadataUtilitiesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MetadataUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"fpfs_xattrs.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

void CoreSpotlightLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpotlightLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"fpfs_xattrs.m" lineNumber:35 description:{@"%s", *a1}];

  __break(1u);
}

void __getCSSearchableIndexClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSearchableIndexClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightIndexer.m" lineNumber:33 description:{@"Unable to find class %s", "CSSearchableIndex"}];

  __break(1u);
}

void __getCSSearchableIndexClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpotlightLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPSpotlightIndexer.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void _FPPerformWithPersona_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void copyHomeDirectoryCompat_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void copyHomeDirectoryCompat_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void copyHomeDirectoryCompat_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __getGSStorageManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGSStorageManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"NSURL+FPAdditions.m" lineNumber:187 description:{@"Unable to find class %s", "GSStorageManager"}];

  __break(1u);
}

void __getGSStorageManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GenerationalStorageLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"NSURL+FPAdditions.m" lineNumber:186 description:{@"%s", *a1}];

  __break(1u);
}

void __getQLThumbnailAdditionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getQLThumbnailAdditionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"NSURL+FPAdditions.m" lineNumber:185 description:{@"Unable to find class %s", "QLThumbnailAddition"}];

  __break(1u);
}

void __getQLThumbnailAdditionClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QuickLookThumbnailingLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"NSURL+FPAdditions.m" lineNumber:184 description:{@"%s", *a1}];

  __break(1u);
}

void FPStatFSFromPath_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v6 = 138412546;
  v7 = a1;
  v8 = 1024;
  v9 = v4;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] statfs(%@) failed %{errno}d", &v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void FPLocalizedFileSystemTypeName_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Failed to get NSURLVolumeLocalizedFormatDescription: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void CoreSpotlightLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSpotlightLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPSpotlightCollector.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void __getCSUserQueryContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSUserQueryContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightCollector.m" lineNumber:36 description:{@"Unable to find class %s", "CSUserQueryContext"}];

  __break(1u);
}

void __getCSSearchQueryContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSearchQueryContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightCollector.m" lineNumber:34 description:{@"Unable to find class %s", "CSSearchQueryContext"}];

  __break(1u);
}

void __getCSUserQueryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSUserQueryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightCollector.m" lineNumber:35 description:{@"Unable to find class %s", "CSUserQuery"}];

  __break(1u);
}

void __getCSSearchQueryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCSSearchQueryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightCollector.m" lineNumber:33 description:{@"Unable to find class %s", "CSSearchQuery"}];

  __break(1u);
}

void _CGImageDestinationCreateWithData_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageDestinationRef _CGImageDestinationCreateWithData(CFMutableDataRef _Nonnull, CFStringRef _Nonnull, size_t, CFDictionaryRef _Nullable)"}];
  [v0 handleFailureInFunction:v1 file:@"FPFetchThumbnailsOperation.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

void _CGImageDestinationAddImage_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _CGImageDestinationAddImage(CGImageDestinationRef _Nonnull, CGImageRef _Nonnull, CFDictionaryRef _Nullable)"}];
  [v0 handleFailureInFunction:v1 file:@"FPFetchThumbnailsOperation.m" lineNumber:36 description:{@"%s", dlerror()}];

  __break(1u);
}

void _CGImageDestinationFinalize_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_Bool _CGImageDestinationFinalize(CGImageDestinationRef _Nonnull)"];
  [v0 handleFailureInFunction:v1 file:@"FPFetchThumbnailsOperation.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getIFImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getIFImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPFetchThumbnailsOperation.m" lineNumber:32 description:{@"Unable to find class %s", "IFImage"}];

  __break(1u);
}

void __getIFImageClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IconFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPFetchThumbnailsOperation.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void ImageIOLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ImageIOLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPFetchThumbnailsOperation.m" lineNumber:33 description:{@"%s", *a1}];

  __break(1u);
}

void __getDSArchiveServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDSArchiveServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPArchiveOperation.m" lineNumber:25 description:{@"Unable to find class %s", "DSArchiveService"}];

  __break(1u);
}

void DesktopServicesPrivLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DesktopServicesPrivLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPArchiveOperation.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getBRFieldContentSignatureClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBRFieldContentSignatureClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FPFileVersion.m" lineNumber:29 description:{@"Unable to find class %s", "BRFieldContentSignature"}];

  __break(1u);
}

void __getBRFieldContentSignatureClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *iCloudDriveCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FPFileVersion.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
}

void __FPBookmarkableStringFromDocumentURL_block_invoke_2_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __FPDocumentURLFromBookmarkableString_block_invoke_2_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __FPExtendBookmarkForDocumentURL_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v12 = *MEMORY[0x1E69E9840];
  v3 = [*(v1 + 40) fp_scopeDescription];
  v4 = *(v2 + 48);
  v5 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

void FPRegisterFileProvidersForUser_cold_1()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __FPRegisterFileProvidersForUser_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void FPFetchDatalessFileResolverUIDAtURL_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void FPFetchDatalessFileResolverUIDAtURL_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void FPFetchDatalessFileResolverUIDAtURL_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __FPCFCopyAttributeValuesForItem_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x1E69E9840];
  [*(v1 + 40) fp_scopeDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_13() fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __FPEvictItem_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_12_2(v2) fp_shortDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_13() fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __FPSetAlternateContentsURLOnDocumentURL_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v1 = v0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v0[4] fp_shortDescription];
  [v1[5] fp_scopeDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_13() fp_prettyDescription];
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

void __FPSetAlternateContentsURLOnDocumentURL_block_invoke_cold_2(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_12_2(a1) fp_shortDescription];
  v4 = [*(a1 + 40) fp_shortDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

void __FPFetchAlternateContentsURLForDocumentURL_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_12_2(v2) fp_scopeDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_13() fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __FPFetchAlternateContentsURLForDocumentURL_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 fp_shortDescription];
  v3 = [*(v0 + 32) fp_shortDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __FPAppHasNonUploadedFiles_block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __FPAppHasNonUploadedFiles_block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = @"NO";
  if (a2)
  {
    v3 = @"YES";
  }

  *v5 = 138412546;
  *&v5[4] = *(a1 + 32);
  *&v5[12] = 2112;
  *&v5[14] = v3;
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, a2, a3, "[DEBUG] did check if app %@ is uploading files, result was %@", *v5, *&v5[8], *&v5[16], *MEMORY[0x1E69E9840]);
  v4 = *MEMORY[0x1E69E9840];
}

void __FPDidUpdateAlternateContentsDocumentForDocumentAtURL_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_12_2(v2) fp_scopeDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_13() fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __FPDidUpdateAlternateContentsDocumentForDocumentAtURL_block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_12_2(a1) fp_shortDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

void __FPFetchLatestVersionForFileAtURL_block_invoke_cold_2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  v4 = v0;
  _os_log_error_impl(&dword_1AAAE1000, v1, OS_LOG_TYPE_ERROR, "[ERROR] Couldn't find addition with name %@ - %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __FPFetchLatestVersionForFileAtURL_block_invoke_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_ERROR, "[ERROR] Couldn't get storage after received version - %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void FPCrossDeviceItemIDForItemAtURL_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __FPCreateCrossDeviceItemIDForItemAtURL_block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_13_1(a1);
  v4 = [OUTLINED_FUNCTION_6_4(v2 v3)];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void FPCrossDeviceItemIDForItemID_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __FPCreateCrossDeviceItemIDForItemID_block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_13_1(a1);
  v4 = [OUTLINED_FUNCTION_6_4(v2 v3)];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void __FPCrossDeviceItemIDForItemID_block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_3_3();
  *v5 = v1;
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v1, v2, "[DEBUG]  %@ => %@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x1E69E9840];
}

void FPItemURLForCrossDeviceItemID_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __FPGetItemURLForCrossDeviceItemID_block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_13_1(a1);
  v4 = [OUTLINED_FUNCTION_6_4(v2 v3)];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void __FPItemURLForCrossDeviceItemID_block_invoke_85_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [a2 path];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __FPItemURLForCrossDeviceItemID_block_invoke_90_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = [a2 path];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void FPItemIDFromCrossDeviceItemID_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __FPGetItemIDFromCrossDeviceItemID_block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = OUTLINED_FUNCTION_13_1(a1);
  v4 = [OUTLINED_FUNCTION_6_4(v2 v3)];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void __FPItemIDFromCrossDeviceItemID_block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = [a2 itemID];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}